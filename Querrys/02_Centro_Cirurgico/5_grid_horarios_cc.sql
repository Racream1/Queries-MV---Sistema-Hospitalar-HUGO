-- =============================================
-- GRID DE HORARIOS DO CENTRO CIRURGICO
-- Blocos de tempo por sala: AGENDADA, LIVRE, CANCELADA, REALIZADA
-- Fonte: AGE_CIR (agendamentos) + AGE_CIR_LIVRE (slots livres)
-- Parametros Portlet: $pgmvDataIni$ / $pgmvDataFim$
-- Unidade: CD_MULTI_EMPRESA = 40 (HUGO)
-- =============================================
WITH
-- ==========================================
-- CTE 1: Salas do HUGO (identifica pela presenca de cirurgias empresa 40)
-- ==========================================
SALAS_HUGO AS (
    SELECT sc.CD_SAL_CIR, sc.DS_SAL_CIR
    FROM DBAMV.SAL_CIR sc
    WHERE sc.SN_ATIVO = 'S'
      AND EXISTS (
          SELECT 1
          FROM DBAMV.AGE_CIR ag
          JOIN DBAMV.AVISO_CIRURGIA ac ON ac.CD_AVISO_CIRURGIA = ag.CD_AVISO_CIRURGIA
          JOIN DBAMV.ATENDIME atd ON atd.CD_ATENDIMENTO = ac.CD_ATENDIMENTO
          WHERE atd.CD_MULTI_EMPRESA = 40
            AND ag.CD_SAL_CIR = sc.CD_SAL_CIR
      )
),
-- ==========================================
-- CTE 2: Cirurgiao principal + especialidade por aviso
-- ==========================================
EQUIPE AS (
    SELECT
        pa.CD_AVISO_CIRURGIA,
        MAX(CASE WHEN pa.SN_PRINCIPAL = 'S' THEN pa.NM_PRESTADOR END) AS CIRURGIAO,
        MAX(CASE WHEN pa.SN_PRINCIPAL = 'S' THEN vep.DESCRICAO_ESPECIALIDADE END) AS ESPEC_CIRURGIAO
    FROM DBAMV.PRESTADOR_AVISO pa
    LEFT JOIN DBAMV.VDIC_ESPECIALIDADE_PRESTADOR vep
        ON vep.CODIGO_PRESTADOR = pa.CD_PRESTADOR AND vep.SN_ESPECIALIDADE_PRINCIPAL = 'S'
    WHERE pa.CD_AVISO_CIRURGIA IS NOT NULL
    GROUP BY pa.CD_AVISO_CIRURGIA
),
-- ==========================================
-- CTE 3: Agendamentos do periodo (pre-agrupados)
-- ==========================================
OCUP AS (
    SELECT
        ag.CD_AGE_CIR,
        ag.CD_SAL_CIR,
        ag.DT_INICIO_AGE_CIR,
        ag.DT_FINAL_AGE_CIR,
        ac.CD_AVISO_CIRURGIA,
        ac.TP_SITUACAO,
        ac.TP_CIRURGIAS,
        atd.CD_ATENDIMENTO,
        ac.DT_INICIO_CIRURGIA,
        ac.DT_FIM_CIRURGIA,
        ac.CD_MOT_CANC_ATRASO,
        LISTAGG(DISTINCT cir.DS_CIRURGIA, '; ') WITHIN GROUP (ORDER BY cir.DS_CIRURGIA) AS PROCEDIMENTOS,
        MAX(esp.DS_ESPECIALID) AS ESPEC_PROCEDIMENTO,
        COUNT(DISTINCT ca.CD_CIRURGIA) AS QTD_PROCEDIMENTOS
    FROM DBAMV.AGE_CIR ag
    JOIN DBAMV.AVISO_CIRURGIA ac ON ac.CD_AVISO_CIRURGIA = ag.CD_AVISO_CIRURGIA
    JOIN DBAMV.ATENDIME atd ON atd.CD_ATENDIMENTO = ac.CD_ATENDIMENTO
    LEFT JOIN DBAMV.CIRURGIA_AVISO ca ON ca.CD_AVISO_CIRURGIA = ac.CD_AVISO_CIRURGIA
    LEFT JOIN DBAMV.CIRURGIA cir ON cir.CD_CIRURGIA = ca.CD_CIRURGIA
    LEFT JOIN DBAMV.ESPECIALID esp ON esp.CD_ESPECIALID = ca.CD_ESPECIALID
    WHERE atd.CD_MULTI_EMPRESA = 40
      AND ag.DT_INICIO_AGE_CIR BETWEEN $pgmvDataIni$ AND $pgmvDataFim$
    GROUP BY ag.CD_AGE_CIR, ag.CD_SAL_CIR,
             ag.DT_INICIO_AGE_CIR, ag.DT_FINAL_AGE_CIR,
             ac.CD_AVISO_CIRURGIA, ac.TP_SITUACAO, ac.TP_CIRURGIAS,
             atd.CD_ATENDIMENTO,
             ac.DT_INICIO_CIRURGIA, ac.DT_FIM_CIRURGIA,
             ac.CD_MOT_CANC_ATRASO
)
-- ==========================================
-- SELECT: UNION ALL ocupados + livres
-- ==========================================
SELECT
    -- ==========================================
    -- 1. Slot (agendamento ou livre)
    -- ==========================================
    TRUNC(x.DT_INICIO)  AS DT_DIA,
    TO_CHAR(x.DT_INICIO, 'DY', 'NLS_DATE_LANGUAGE=PORTUGUESE') AS DIA_SEMANA,
    sh.DS_SAL_CIR,
    TO_CHAR(x.DT_INICIO, 'HH24:MI') AS HORA_INICIO,
    TO_CHAR(x.DT_FIM, 'HH24:MI')    AS HORA_FIM,
    ROUND((x.DT_FIM - x.DT_INICIO) * 1440) AS DURACAO_AGENDADA_MIN,
    x.STATUS_SLOT,

    -- ==========================================
    -- 2. Identificacao
    -- ==========================================
    x.CD_AVISO_CIRURGIA,
    x.CD_ATENDIMENTO,

    -- ==========================================
    -- 3. Cirurgia
    -- ==========================================
    x.PROCEDIMENTOS,
    COALESCE(x.ESPEC_PROCEDIMENTO, x.ESPEC_CIRURGIAO) AS ESPECIALIDADE,
    x.TIPO_CIRURGIA,
    x.CIRURGIAO,
    x.QTD_PROCEDIMENTOS,

    -- ==========================================
    -- 4. Execucao real (so para REALIZADA)
    -- ==========================================
    TO_CHAR(x.DT_INICIO_REAL, 'HH24:MI') AS HORA_INICIO_REAL,
    TO_CHAR(x.DT_FIM_REAL, 'HH24:MI')    AS HORA_FIM_REAL,
    x.DURACAO_REAL_MIN,

    -- ==========================================
    -- 5. Desvio e Atraso
    -- ==========================================
    x.DURACAO_REAL_MIN - ROUND((x.DT_FIM - x.DT_INICIO) * 1440) AS DESVIO_DURACAO_MIN,
    x.MINUTOS_ATRASO,
    x.FLAG_ATRASOU,
    x.MOTIVO_ATRASO,

    -- ==========================================
    -- 6. Features ML (numericas)
    -- ==========================================
    -- Temporal
    TO_NUMBER(TO_CHAR(x.DT_INICIO, 'D'))  AS DIA_SEMANA_NUM,
    (TO_NUMBER(TO_CHAR(x.DT_INICIO, 'HH24')) * 60
        + TO_NUMBER(TO_CHAR(x.DT_INICIO, 'MI'))) AS MINUTO_INICIO_DIA,

    -- Sequencia e carga na sala/dia (so cirurgias, ignora LIVRE)
    ROW_NUMBER() OVER (
        PARTITION BY sh.CD_SAL_CIR, TRUNC(x.DT_INICIO)
        ORDER BY x.DT_INICIO
    ) AS NR_SLOT_DIA_SALA,
    COUNT(x.CD_AVISO_CIRURGIA) OVER (
        PARTITION BY sh.CD_SAL_CIR, TRUNC(x.DT_INICIO)
    ) AS QTD_CIRURGIAS_DIA_SALA,

    -- Turnover: gap em minutos desde o fim REAL da cirurgia anterior na mesma sala/dia
    ROUND((x.DT_INICIO - LAG(x.DT_FIM_REAL) OVER (
        PARTITION BY sh.CD_SAL_CIR, TRUNC(x.DT_INICIO)
        ORDER BY x.DT_INICIO
    )) * 1440) AS TURNOVER_MIN

FROM (
    -- ======== OCUPADOS (AGE_CIR) ========
    SELECT
        o.CD_SAL_CIR,
        o.DT_INICIO_AGE_CIR AS DT_INICIO,
        o.DT_FINAL_AGE_CIR  AS DT_FIM,
        CASE o.TP_SITUACAO
            WHEN 'R' THEN 'REALIZADA'
            WHEN 'C' THEN 'CANCELADA'
            ELSE 'AGENDADA'
        END AS STATUS_SLOT,
        o.CD_AVISO_CIRURGIA,
        o.CD_ATENDIMENTO,
        o.PROCEDIMENTOS,
        o.ESPEC_PROCEDIMENTO,
        CASE o.TP_CIRURGIAS
            WHEN 'E' THEN 'Eletiva'
            WHEN 'U' THEN 'Urgencia'
            WHEN 'M' THEN 'Emergencia'
            ELSE o.TP_CIRURGIAS
        END AS TIPO_CIRURGIA,
        eq.CIRURGIAO,
        eq.ESPEC_CIRURGIAO,
        o.QTD_PROCEDIMENTOS,
        o.DT_INICIO_CIRURGIA AS DT_INICIO_REAL,
        o.DT_FIM_CIRURGIA    AS DT_FIM_REAL,
        ROUND((o.DT_FIM_CIRURGIA - o.DT_INICIO_CIRURGIA) * 1440) AS DURACAO_REAL_MIN,
        ROUND((o.DT_INICIO_CIRURGIA - o.DT_INICIO_AGE_CIR) * 1440) AS MINUTOS_ATRASO,
        CASE
            WHEN o.DT_INICIO_CIRURGIA > o.DT_INICIO_AGE_CIR THEN 'S'
            WHEN o.DT_INICIO_CIRURGIA IS NOT NULL THEN 'N'
        END AS FLAG_ATRASOU,
        mc_atr.DS_MOT_CANC AS MOTIVO_ATRASO
    FROM OCUP o
    LEFT JOIN EQUIPE eq ON eq.CD_AVISO_CIRURGIA = o.CD_AVISO_CIRURGIA
    LEFT JOIN DBAMV.MOT_CANC mc_atr ON mc_atr.CD_MOT_CANC = o.CD_MOT_CANC_ATRASO

    UNION ALL

    -- ======== LIVRES (AGE_CIR_LIVRE) ========
    SELECT
        fl.CD_SAL_CIR,
        fl.DT_INICIO_LIVRE              AS DT_INICIO,
        fl.DT_FINAL_LIVRE               AS DT_FIM,
        'LIVRE'                          AS STATUS_SLOT,
        CAST(NULL AS NUMBER)             AS CD_AVISO_CIRURGIA,
        CAST(NULL AS NUMBER)             AS CD_ATENDIMENTO,
        CAST(NULL AS VARCHAR2(1))        AS PROCEDIMENTOS,
        CAST(NULL AS VARCHAR2(1))        AS ESPEC_PROCEDIMENTO,
        CAST(NULL AS VARCHAR2(1))        AS TIPO_CIRURGIA,
        CAST(NULL AS VARCHAR2(1))        AS CIRURGIAO,
        CAST(NULL AS VARCHAR2(1))        AS ESPEC_CIRURGIAO,
        CAST(NULL AS NUMBER)             AS QTD_PROCEDIMENTOS,
        CAST(NULL AS DATE)               AS DT_INICIO_REAL,
        CAST(NULL AS DATE)               AS DT_FIM_REAL,
        CAST(NULL AS NUMBER)             AS DURACAO_REAL_MIN,
        CAST(NULL AS NUMBER)             AS MINUTOS_ATRASO,
        CAST(NULL AS VARCHAR2(1))        AS FLAG_ATRASOU,
        CAST(NULL AS VARCHAR2(1))        AS MOTIVO_ATRASO
    FROM DBAMV.AGE_CIR_LIVRE fl
    WHERE fl.DT_INICIO_LIVRE BETWEEN $pgmvDataIni$ AND $pgmvDataFim$
      AND fl.CD_SAL_CIR IN (SELECT CD_SAL_CIR FROM SALAS_HUGO)
) x
JOIN SALAS_HUGO sh ON sh.CD_SAL_CIR = x.CD_SAL_CIR
ORDER BY sh.DS_SAL_CIR, x.DT_INICIO
