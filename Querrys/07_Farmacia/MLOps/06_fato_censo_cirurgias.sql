-- ============================================================================
-- FATO: CENSO DIARIO + VOLUME CIRURGICO
-- ============================================================================
-- Demand drivers: coisas que CAUSAM consumo de medicamento
--   - Pacientes internados = consumo basal
--   - Cirurgias = pico de anestesicos, antibioticos, materiais
--
-- Rodar: carga historica (ajustar P_DT_INICIO) ou incremental diario
-- Granularidade: DIA (hospital inteiro)
-- Hospital: HUGO (CD_MULTI_EMPRESA = 40)
--
-- Features derivadas no Python:
--   - VARIACAO_CENSO_7D = censo_hoje / media_censo_7d
--   - CIRURGIAS_PROXIMOS_3D = soma de cirurgias agendadas para D+1, D+2, D+3
-- ============================================================================
WITH params AS (
    SELECT
        TO_DATE('2024-08-01', 'YYYY-MM-DD') AS P_DT_INICIO,
        TRUNC(SYSDATE)                       AS P_DT_FIM
    FROM DUAL
),
-- Gerar serie de dias
dias AS (
    SELECT P_DT_INICIO + LEVEL - 1 AS DIA
    FROM params
    CONNECT BY P_DT_INICIO + LEVEL - 1 <= (SELECT P_DT_FIM FROM params)
),
-- Censo: pacientes internados em cada dia
censo AS (
    SELECT
        d.DIA,
        COUNT(*) AS PACIENTES_INTERNADOS,
        SUM(CASE WHEN a.TP_ATENDIMENTO = 'I' THEN 1 ELSE 0 END) AS INTERNACOES,
        SUM(CASE WHEN a.TP_ATENDIMENTO = 'U' THEN 1 ELSE 0 END) AS URGENCIAS
    FROM dias d
        INNER JOIN DBAMV.ATENDIME a
            ON a.DT_ATENDIMENTO <= d.DIA
           AND (a.DT_ALTA IS NULL OR a.DT_ALTA >= d.DIA)
    WHERE a.CD_MULTI_EMPRESA = 40
      AND a.TP_ATENDIMENTO IN ('I', 'U')
    GROUP BY d.DIA
),
-- Novas internacoes por dia
admissoes AS (
    SELECT
        TRUNC(a.DT_ATENDIMENTO) AS DIA,
        COUNT(*) AS ADMISSOES
    FROM DBAMV.ATENDIME a
        CROSS JOIN params par
    WHERE a.CD_MULTI_EMPRESA = 40
      AND a.TP_ATENDIMENTO IN ('I', 'U')
      AND a.DT_ATENDIMENTO >= par.P_DT_INICIO
      AND a.DT_ATENDIMENTO <  par.P_DT_FIM + 1
    GROUP BY TRUNC(a.DT_ATENDIMENTO)
),
-- Altas por dia
altas AS (
    SELECT
        TRUNC(a.DT_ALTA) AS DIA,
        COUNT(*) AS ALTAS
    FROM DBAMV.ATENDIME a
        CROSS JOIN params par
    WHERE a.CD_MULTI_EMPRESA = 40
      AND a.TP_ATENDIMENTO IN ('I', 'U')
      AND a.DT_ALTA IS NOT NULL
      AND a.DT_ALTA >= par.P_DT_INICIO
      AND a.DT_ALTA <  par.P_DT_FIM + 1
    GROUP BY TRUNC(a.DT_ALTA)
),
-- Cirurgias realizadas por dia
cirurgias AS (
    SELECT
        TRUNC(ac.DT_INICIO_CIRURGIA) AS DIA,
        COUNT(*) AS CIRURGIAS_REALIZADAS,
        SUM(CASE WHEN ac.TP_CIRURGIAS = 'E' THEN 1 ELSE 0 END) AS CIR_ELETIVA,
        SUM(CASE WHEN ac.TP_CIRURGIAS = 'U' THEN 1 ELSE 0 END) AS CIR_URGENCIA,
        SUM(CASE WHEN ac.TP_CIRURGIAS = 'M' THEN 1 ELSE 0 END) AS CIR_EMERGENCIA
    FROM DBAMV.AVISO_CIRURGIA ac
        CROSS JOIN params par
    WHERE ac.CD_MULTI_EMPRESA = 40
      AND ac.TP_SITUACAO = 'R'  -- R=Realizada
      AND ac.DT_INICIO_CIRURGIA >= par.P_DT_INICIO
      AND ac.DT_INICIO_CIRURGIA <  par.P_DT_FIM + 1
    GROUP BY TRUNC(ac.DT_INICIO_CIRURGIA)
)
SELECT
    d.DIA,
    TO_CHAR(d.DIA, 'DY', 'NLS_DATE_LANGUAGE=PORTUGUESE') AS DIA_SEMANA,
    CASE WHEN TO_CHAR(d.DIA, 'D') IN ('1', '7') THEN 1 ELSE 0 END AS SN_FIM_SEMANA,
    NVL(c.PACIENTES_INTERNADOS, 0)  AS PACIENTES_INTERNADOS,
    NVL(c.INTERNACOES, 0)           AS INTERNACOES,
    NVL(c.URGENCIAS, 0)             AS URGENCIAS,
    NVL(adm.ADMISSOES, 0)           AS ADMISSOES,
    NVL(alt.ALTAS, 0)               AS ALTAS,
    NVL(cir.CIRURGIAS_REALIZADAS, 0) AS CIRURGIAS,
    NVL(cir.CIR_ELETIVA, 0)        AS CIR_ELETIVA,
    NVL(cir.CIR_URGENCIA, 0)       AS CIR_URGENCIA,
    NVL(cir.CIR_EMERGENCIA, 0)     AS CIR_EMERGENCIA
FROM dias d
    LEFT JOIN censo c       ON c.DIA = d.DIA
    LEFT JOIN admissoes adm ON adm.DIA = d.DIA
    LEFT JOIN altas alt     ON alt.DIA = d.DIA
    LEFT JOIN cirurgias cir ON cir.DIA = d.DIA
ORDER BY d.DIA
