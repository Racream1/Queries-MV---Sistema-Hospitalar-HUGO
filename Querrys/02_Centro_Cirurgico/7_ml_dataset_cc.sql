-- =============================================
-- ML DATASET - CENTRO CIRURGICO
-- Features numericas para modelos preditivos
-- Targets: duracao, atraso, cancelamento, desvio
-- Separacao: PRE (predicao) / POS (retrospectiva) / REF (labels)
-- Fonte: AVISO_CIRURGIA + AGE_CIR + AGE_CIR_LIVRE + LOGs
-- Unidade: CD_MULTI_EMPRESA = 40 (HUGO)
-- =============================================
WITH
-- ==========================================
-- Parametros de periodo
-- ==========================================
params AS (
    SELECT
        TO_DATE('2024-08-01', 'YYYY-MM-DD') AS P_DT_INICIO,
        TRUNC(SYSDATE)                       AS P_DT_FIM
    FROM DUAL
),
-- ==========================================
-- CTE 1: Procedimentos + complexidade
-- ==========================================
PROCEDIMENTOS AS (
    SELECT
        ca.CD_AVISO_CIRURGIA,
        COUNT(DISTINCT ca.CD_CIRURGIA)    AS QTD_PROCEDIMENTOS,
        COUNT(DISTINCT ca.CD_ESPECIALID)  AS QTD_ESPECIALIDADES,
        MAX(CASE WHEN ca.SN_PRINCIPAL = 'S' THEN ca.CD_ESPECIALID END) AS CD_ESPECIALID_PRINCIPAL,
        LISTAGG(DISTINCT cir.DS_CIRURGIA, '; ')
            WITHIN GROUP (ORDER BY cir.DS_CIRURGIA) AS DS_PROCEDIMENTOS,
        LISTAGG(DISTINCT esp.DS_ESPECIALID, '; ')
            WITHIN GROUP (ORDER BY esp.DS_ESPECIALID) AS DS_ESPECIALIDADES
    FROM DBAMV.CIRURGIA_AVISO ca
    LEFT JOIN DBAMV.CIRURGIA cir ON cir.CD_CIRURGIA = ca.CD_CIRURGIA
    LEFT JOIN DBAMV.ESPECIALID esp ON esp.CD_ESPECIALID = ca.CD_ESPECIALID
    GROUP BY ca.CD_AVISO_CIRURGIA
),
-- ==========================================
-- CTE 2: Equipe (cirurgiao + anestesista)
-- ==========================================
EQUIPE AS (
    SELECT
        pa.CD_AVISO_CIRURGIA,
        MAX(CASE WHEN pa.SN_PRINCIPAL = 'S' THEN pa.CD_PRESTADOR END) AS CD_CIRURGIAO,
        MAX(CASE WHEN pa.SN_PRINCIPAL = 'S' THEN pa.NM_PRESTADOR END) AS NM_CIRURGIAO,
        MAX(CASE WHEN pa.SN_PRINCIPAL = 'S' THEN vep.DESCRICAO_ESPECIALIDADE END) AS ESPEC_CIRURGIAO,
        MAX(CASE WHEN pa.SN_ANEST_PRINCIPAL = 'S' THEN pa.CD_PRESTADOR END) AS CD_ANESTESISTA,
        MAX(CASE WHEN pa.SN_ANEST_PRINCIPAL = 'S' THEN pa.NM_PRESTADOR END) AS NM_ANESTESISTA,
        COUNT(DISTINCT CASE WHEN pa.NM_PRESTADOR IS NOT NULL THEN pa.CD_PRESTADOR END) AS QTD_EQUIPE_CIRURGICA,
        LISTAGG(DISTINCT pa.NM_PRESTADOR, '; ')
            WITHIN GROUP (ORDER BY pa.NM_PRESTADOR)                          AS DS_EQUIPE_COMPLETA
    FROM DBAMV.PRESTADOR_AVISO pa
    LEFT JOIN DBAMV.VDIC_ESPECIALIDADE_PRESTADOR vep
        ON vep.CODIGO_PRESTADOR = pa.CD_PRESTADOR AND vep.SN_ESPECIALIDADE_PRINCIPAL = 'S'
    WHERE pa.CD_AVISO_CIRURGIA IS NOT NULL
    GROUP BY pa.CD_AVISO_CIRURGIA
),
-- ==========================================
-- CTE 3: Marcos temporais do log (workflow)
-- ==========================================
MARCOS AS (
    SELECT
        le.CD_AVISO_CIRURGIA,
        COUNT(*)                                                              AS QTD_MUDANCAS,
        MIN(CASE WHEN le.TP_SITUACAO_ATUAL_AVI_CIR = 'G' THEN le.DT_ALTERACAO END) AS DT_PRIMEIRO_AGENDAMENTO,
        MAX(CASE WHEN le.TP_SITUACAO_ATUAL_AVI_CIR = 'G' THEN le.DT_ALTERACAO END) AS DT_ULTIMO_AGENDAMENTO,
        SUM(CASE WHEN le.TP_SITUACAO_ATUAL_AVI_CIR = 'G' THEN 1 ELSE 0 END) AS QTD_AGENDAMENTOS,
        SUM(CASE WHEN le.TP_SITUACAO_ANTERIOR_AVI_CIR = 'G'
                  AND le.TP_SITUACAO_ATUAL_AVI_CIR = 'P' THEN 1 ELSE 0 END)  AS QTD_REVERSOES_GP,
        SUM(CASE WHEN le.TP_SITUACAO_ATUAL_AVI_CIR = 'C' THEN 1 ELSE 0 END) AS QTD_CANCELAMENTOS
    FROM DBAMV.LOG_AVISO_CIRURGIA_EVOLUCAO le
    WHERE le.CD_MULTI_EMPRESA = 40
    GROUP BY le.CD_AVISO_CIRURGIA
),
-- ==========================================
-- CTE 4: Slots livres por sala/dia (AGE_CIR_LIVRE)
-- ==========================================
LIVRES_DIA AS (
    SELECT
        fl.CD_SAL_CIR,
        TRUNC(fl.DT_INICIO_LIVRE) AS DT_DIA,
        COUNT(*)                   AS QTD_SLOTS_LIVRES,
        SUM(ROUND((fl.DT_FINAL_LIVRE - fl.DT_INICIO_LIVRE) * 1440)) AS MIN_LIVRES
    FROM DBAMV.AGE_CIR_LIVRE fl
    CROSS JOIN params pm
    WHERE fl.DT_INICIO_LIVRE BETWEEN pm.P_DT_INICIO AND pm.P_DT_FIM
    GROUP BY fl.CD_SAL_CIR, TRUNC(fl.DT_INICIO_LIVRE)
)
-- ==========================================
-- SELECT: Dataset ML (5 blocos)
-- ==========================================
SELECT
    -- ==========================================
    -- BLOCO 1: IDs (rastreio, nao sao features)
    -- ==========================================
    ac.CD_AVISO_CIRURGIA,
    atd.CD_ATENDIMENTO,
    ac.DT_AVISO_CIRURGIA,
    ag.DT_INICIO_AGE_CIR,

    -- ==========================================
    -- BLOCO 2: TARGETS (variaveis alvo)
    -- ==========================================
    ROUND((ac.DT_FIM_CIRURGIA - ac.DT_INICIO_CIRURGIA) * 1440)   AS TARGET_DURACAO_CIRURGIA_MIN,
    ROUND((ac.DT_INICIO_CIRURGIA - ag.DT_INICIO_AGE_CIR) * 1440) AS TARGET_ATRASO_INICIO_MIN,
    ROUND((ac.DT_FIM_CIRURGIA - ac.DT_INICIO_CIRURGIA) * 1440)
        - ROUND((ag.DT_FINAL_AGE_CIR - ag.DT_INICIO_AGE_CIR) * 1440) AS TARGET_DESVIO_DURACAO_MIN,
    CASE WHEN ac.TP_SITUACAO = 'C' THEN 1 ELSE 0 END              AS TARGET_CANCELADO,
    CASE WHEN ac.DT_INICIO_CIRURGIA > ag.DT_INICIO_AGE_CIR
         THEN 1 ELSE 0 END                                        AS TARGET_ATRASOU,

    -- ==========================================
    -- BLOCO 3: FEATURES PRE-OPERATORIAS
    -- (disponiveis ANTES da cirurgia = podem ser usadas para predicao)
    -- ==========================================

    -- 3A: Categoricas (codigos raw para encoding)
    ac.TP_CIRURGIAS,               -- E=Eletiva, U=Urgencia, M=Emergencia
    atd.TP_ATENDIMENTO,            -- I=Internacao, U=Urgencia, A=Ambulatorial
    ac.CD_ASA,                     -- classificacao ASA (1-5, risco anestesico)
    ac.CD_TIP_ANEST,               -- codigo tipo anestesia
    eq.CD_CIRURGIAO,               -- codigo cirurgiao principal
    COALESCE(p.CD_ESPECIALID_PRINCIPAL, 0) AS CD_ESPECIALIDADE,
    eq.CD_ANESTESISTA,
    ag.CD_SAL_CIR,                 -- codigo sala
    ac.CD_CEN_CIR,                 -- codigo centro cirurgico

    -- 3B: Complexidade
    COALESCE(p.QTD_PROCEDIMENTOS, 0)    AS QTD_PROCEDIMENTOS,
    COALESCE(p.QTD_ESPECIALIDADES, 0)   AS QTD_ESPECIALIDADES,
    COALESCE(eq.QTD_EQUIPE_CIRURGICA, 0) AS QTD_EQUIPE_CIRURGICA,

    -- 3C: Temporais (numericas)
    MOD(TO_NUMBER(TO_CHAR(ag.DT_INICIO_AGE_CIR, 'J')), 7) + 1 AS DIA_SEMANA_NUM, -- 1=Seg..7=Dom (NLS-safe)
    (TO_NUMBER(TO_CHAR(ag.DT_INICIO_AGE_CIR, 'HH24')) * 60
        + TO_NUMBER(TO_CHAR(ag.DT_INICIO_AGE_CIR, 'MI'))) AS MINUTO_AGENDADO,
    TO_NUMBER(TO_CHAR(ac.DT_AVISO_CIRURGIA, 'IW'))  AS SEMANA_ANO,
    TO_NUMBER(TO_CHAR(ac.DT_AVISO_CIRURGIA, 'MM'))  AS MES,
    TO_NUMBER(TO_CHAR(ac.DT_AVISO_CIRURGIA, 'YYYY')) AS ANO,
    ROUND((ag.DT_FINAL_AGE_CIR - ag.DT_INICIO_AGE_CIR) * 1440) AS DURACAO_AGENDADA_MIN,

    -- 3D: Lead Time (dias)
    ROUND(m.DT_PRIMEIRO_AGENDAMENTO - ac.DT_AVISO_CIRURGIA, 2) AS DIAS_AVISO_ATE_AGENDAR,
    ROUND(ag.DT_INICIO_AGE_CIR - ac.DT_AVISO_CIRURGIA, 2)     AS DIAS_AVISO_ATE_CIRURGIA,

    -- 3E: Workflow (instabilidade)
    COALESCE(m.QTD_MUDANCAS, 0)       AS QTD_MUDANCAS_STATUS,
    COALESCE(m.QTD_AGENDAMENTOS, 0)   AS QTD_AGENDAMENTOS,
    COALESCE(m.QTD_REVERSOES_GP, 0)   AS QTD_REVERSOES_GP,
    COALESCE(m.QTD_CANCELAMENTOS, 0)  AS QTD_CANCELAMENTOS_LOG,

    -- 3F: Sequencia de planejamento (100% pre-operatorias, sem leakage)
    ROW_NUMBER() OVER (
        PARTITION BY atd.CD_ATENDIMENTO
        ORDER BY ac.DT_AVISO_CIRURGIA
    ) AS NR_CIRURGIA_INTERNACAO,

    -- Sequencia so de REALIZADAS na sala/dia (NULL se sem agendamento)
    CASE WHEN ag.CD_SAL_CIR IS NOT NULL THEN
        SUM(CASE WHEN ac.TP_SITUACAO = 'R' THEN 1 ELSE 0 END) OVER (
            PARTITION BY ag.CD_SAL_CIR, TRUNC(ag.DT_INICIO_AGE_CIR)
            ORDER BY ag.DT_INICIO_AGE_CIR
            ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
        )
    END AS NR_CIRURGIA_REALIZADA_DIA_SALA,

    -- Total de realizadas na sala/dia
    CASE WHEN ag.CD_SAL_CIR IS NOT NULL THEN
        SUM(CASE WHEN ac.TP_SITUACAO = 'R' THEN 1 ELSE 0 END) OVER (
            PARTITION BY ag.CD_SAL_CIR, TRUNC(ag.DT_INICIO_AGE_CIR)
        )
    END AS QTD_CIRURGIAS_REALIZADAS_DIA_SALA,

    -- Total minutos agendados na sala/dia (pre-operatorio)
    CASE WHEN ag.CD_SAL_CIR IS NOT NULL THEN
        SUM(ROUND((ag.DT_FINAL_AGE_CIR - ag.DT_INICIO_AGE_CIR) * 1440)) OVER (
            PARTITION BY ag.CD_SAL_CIR, TRUNC(ag.DT_INICIO_AGE_CIR)
        )
    END AS MIN_AGENDADOS_DIA_SALA,

    -- Duracao agendada da cirurgia anterior na sala (pre-operatorio, sem leakage)
    CASE WHEN ag.CD_SAL_CIR IS NOT NULL THEN
        LAG(
            ROUND((ag.DT_FINAL_AGE_CIR - ag.DT_INICIO_AGE_CIR) * 1440)
        ) OVER (
            PARTITION BY ag.CD_SAL_CIR, TRUNC(ag.DT_INICIO_AGE_CIR)
            ORDER BY ag.DT_INICIO_AGE_CIR
        )
    END AS DURACAO_AGENDADA_ANTERIOR_MIN,

    -- 3G: Historico do cirurgiao (rolling, cirurgias ANTERIORES apenas)
    ROUND(AVG(
        ROUND((ac.DT_FIM_CIRURGIA - ac.DT_INICIO_CIRURGIA) * 1440)
    ) OVER (
        PARTITION BY eq.CD_CIRURGIAO
        ORDER BY ac.DT_AVISO_CIRURGIA
        ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING
    )) AS MEDIA_DURACAO_HIST_CIRURGIAO,

    COUNT(*) OVER (
        PARTITION BY eq.CD_CIRURGIAO
        ORDER BY ac.DT_AVISO_CIRURGIA
        ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING
    ) AS QTD_CIRURGIAS_HIST_CIRURGIAO,

    ROUND(AVG(
        ROUND((ac.DT_INICIO_CIRURGIA - ag.DT_INICIO_AGE_CIR) * 1440)
    ) OVER (
        PARTITION BY eq.CD_CIRURGIAO
        ORDER BY ac.DT_AVISO_CIRURGIA
        ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING
    )) AS MEDIA_ATRASO_HIST_CIRURGIAO,

    ROUND(STDDEV(
        ROUND((ac.DT_FIM_CIRURGIA - ac.DT_INICIO_CIRURGIA) * 1440)
    ) OVER (
        PARTITION BY eq.CD_CIRURGIAO
        ORDER BY ac.DT_AVISO_CIRURGIA
        ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING
    )) AS STDDEV_DURACAO_HIST_CIRURGIAO,

    -- 3H: Ocupacao da sala (AGE_CIR_LIVRE)
    COALESCE(ld.QTD_SLOTS_LIVRES, 0) AS QTD_SLOTS_LIVRES_DIA_SALA,
    COALESCE(ld.MIN_LIVRES, 0)       AS MIN_LIVRES_DIA_SALA,
    CASE WHEN ag.CD_SAL_CIR IS NOT NULL THEN
        ROUND(
            SUM(ROUND((ag.DT_FINAL_AGE_CIR - ag.DT_INICIO_AGE_CIR) * 1440)) OVER (
                PARTITION BY ag.CD_SAL_CIR, TRUNC(ag.DT_INICIO_AGE_CIR)
            ) * 100.0
            / NULLIF(
                SUM(ROUND((ag.DT_FINAL_AGE_CIR - ag.DT_INICIO_AGE_CIR) * 1440)) OVER (
                    PARTITION BY ag.CD_SAL_CIR, TRUNC(ag.DT_INICIO_AGE_CIR)
                ) + COALESCE(ld.MIN_LIVRES, 0)
            , 0)
        , 1)
    END AS PCT_OCUPACAO_DIA_SALA,

    -- ==========================================
    -- BLOCO 4: POS-OPERATORIAS (prefixo POS_)
    -- So existem DEPOIS da cirurgia - NAO usar para predicao
    -- Uteis para analise retrospectiva e validacao de modelo
    -- ==========================================
    ac.DT_INICIO_CIRURGIA                                            AS POS_DT_INICIO_CIRURGIA,
    ac.DT_FIM_CIRURGIA                                               AS POS_DT_FIM_CIRURGIA,
    ac.DT_SAIDA_SAL_CIR                                              AS POS_DT_SAIDA_SALA,
    (TO_NUMBER(TO_CHAR(ac.DT_INICIO_CIRURGIA, 'HH24')) * 60
        + TO_NUMBER(TO_CHAR(ac.DT_INICIO_CIRURGIA, 'MI'))) AS POS_MINUTO_REAL_INICIO,
    ROUND((ac.DT_FIM_ANESTESIA - ac.DT_INICIO_ANESTESIA) * 1440) AS POS_DURACAO_ANESTESIA_MIN,
    ROUND((ac.DT_FIM_LIMPEZA - ac.DT_INICIO_LIMPEZA) * 1440)     AS POS_DURACAO_LIMPEZA_MIN,
    ROUND((ac.DT_SAIDA_SAL_CIR - ac.DT_INICIO_ANESTESIA) * 1440) AS POS_PERMANENCIA_SALA_MIN,

    -- Quando a cirurgia anterior TERMINOU na mesma sala/dia
    LAG(ac.DT_SAIDA_SAL_CIR) OVER (
        PARTITION BY ag.CD_SAL_CIR, TRUNC(ag.DT_INICIO_AGE_CIR)
        ORDER BY ag.DT_INICIO_AGE_CIR
    ) AS POS_DT_SAIDA_ANTERIOR_SALA,

    -- Turnover real: gap desde saida anterior na mesma sala/dia
    ROUND((ag.DT_INICIO_AGE_CIR - LAG(ac.DT_SAIDA_SAL_CIR) OVER (
        PARTITION BY ag.CD_SAL_CIR, TRUNC(ag.DT_INICIO_AGE_CIR)
        ORDER BY ag.DT_INICIO_AGE_CIR
    )) * 1440) AS POS_TURNOVER_MIN,

    -- Atraso real da cirurgia anterior na mesma sala/dia
    LAG(
        ROUND((ac.DT_INICIO_CIRURGIA - ag.DT_INICIO_AGE_CIR) * 1440)
    ) OVER (
        PARTITION BY ag.CD_SAL_CIR, TRUNC(ag.DT_INICIO_AGE_CIR)
        ORDER BY ag.DT_INICIO_AGE_CIR
    ) AS POS_ATRASO_ANTERIOR_SALA_MIN,

    -- Desvio real da cirurgia anterior na mesma sala/dia
    LAG(
        ROUND((ac.DT_FIM_CIRURGIA - ac.DT_INICIO_CIRURGIA) * 1440)
        - ROUND((ag.DT_FINAL_AGE_CIR - ag.DT_INICIO_AGE_CIR) * 1440)
    ) OVER (
        PARTITION BY ag.CD_SAL_CIR, TRUNC(ag.DT_INICIO_AGE_CIR)
        ORDER BY ag.DT_INICIO_AGE_CIR
    ) AS POS_DESVIO_ANTERIOR_SALA_MIN,

    -- ==========================================
    -- BLOCO 5: REFERENCIA (prefixo REF_)
    -- Labels humanos para debug/analise - NAO alimentar no modelo
    -- ==========================================
    ac.TP_SITUACAO                                           AS REF_TP_SITUACAO,
    ta.DS_TIP_ANEST                                          AS REF_DS_TIP_ANEST,
    eq.NM_CIRURGIAO                                          AS REF_NM_CIRURGIAO,
    eq.NM_ANESTESISTA                                        AS REF_NM_ANESTESISTA,
    eq.DS_EQUIPE_COMPLETA                                    AS REF_DS_EQUIPE_COMPLETA,
    sc.DS_SAL_CIR                                            AS REF_DS_SAL_CIR,
    p.DS_PROCEDIMENTOS                                       AS REF_DS_PROCEDIMENTOS,
    COALESCE(p.DS_ESPECIALIDADES, eq.ESPEC_CIRURGIAO)        AS REF_DS_ESPECIALIDADES,
    atd.CD_MOT_ALT                                           AS REF_CD_DESFECHO,
    malt.DS_MOT_ALT                                          AS REF_DS_DESFECHO

FROM DBAMV.AVISO_CIRURGIA ac
CROSS JOIN params pm
INNER JOIN DBAMV.ATENDIME atd     ON atd.CD_ATENDIMENTO = ac.CD_ATENDIMENTO
LEFT JOIN DBAMV.AGE_CIR ag        ON ag.CD_AVISO_CIRURGIA = ac.CD_AVISO_CIRURGIA
LEFT JOIN DBAMV.SAL_CIR sc        ON sc.CD_SAL_CIR = ag.CD_SAL_CIR
LEFT JOIN DBAMV.TIP_ANEST ta      ON ta.CD_TIP_ANEST = ac.CD_TIP_ANEST
LEFT JOIN DBAMV.MOT_ALT malt      ON malt.CD_MOT_ALT = atd.CD_MOT_ALT
LEFT JOIN PROCEDIMENTOS p          ON p.CD_AVISO_CIRURGIA = ac.CD_AVISO_CIRURGIA
LEFT JOIN EQUIPE eq                ON eq.CD_AVISO_CIRURGIA = ac.CD_AVISO_CIRURGIA
LEFT JOIN MARCOS m                 ON m.CD_AVISO_CIRURGIA = ac.CD_AVISO_CIRURGIA
LEFT JOIN LIVRES_DIA ld            ON ld.CD_SAL_CIR = ag.CD_SAL_CIR
                                   AND ld.DT_DIA = TRUNC(ag.DT_INICIO_AGE_CIR)
WHERE atd.CD_MULTI_EMPRESA = 40
  AND ac.DT_AVISO_CIRURGIA BETWEEN pm.P_DT_INICIO AND pm.P_DT_FIM
ORDER BY ac.DT_AVISO_CIRURGIA
