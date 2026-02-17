-- =============================================
-- TIMELINE ANALITICA DE AVISOS DE CIRURGIA
-- 1 linha por aviso com historico completo + tempos + atrasos + suspensoes
-- Fonte: AVISO_CIRURGIA + LOG_AVISO_CIRURGIA_EVOLUCAO + LOG_AVISO_CIRURGIA_SUSPENSAO
-- Parametros Portlet: $pgmvDataIni$ / $pgmvDataFim$
-- Unidade: CD_MULTI_EMPRESA = 40 (HUGO)
-- =============================================
WITH
-- Todas as mudancas de status por aviso
EVOLUCAO AS (
    SELECT
        le.CD_AVISO_CIRURGIA,
        le.TP_SITUACAO_ANTERIOR_AVI_CIR AS STATUS_DE,
        le.TP_SITUACAO_ATUAL_AVI_CIR    AS STATUS_PARA,
        le.DT_ALTERACAO,
        le.CD_USUARIO_ALTERACAO
    FROM DBAMV.LOG_AVISO_CIRURGIA_EVOLUCAO le
    WHERE le.CD_MULTI_EMPRESA = 40
),
-- Marcos temporais e contagens por aviso
MARCOS AS (
    SELECT
        CD_AVISO_CIRURGIA,
        COUNT(*) AS QTD_MUDANCAS,

        -- Marcos temporais
        MIN(DT_ALTERACAO) AS DT_PRIMEIRA_MUDANCA,
        MAX(DT_ALTERACAO) AS DT_ULTIMA_MUDANCA,
        MIN(CASE WHEN STATUS_PARA = 'G' THEN DT_ALTERACAO END) AS DT_PRIMEIRO_AGENDAMENTO,
        MAX(CASE WHEN STATUS_PARA = 'G' THEN DT_ALTERACAO END) AS DT_ULTIMO_AGENDAMENTO,
        MIN(CASE WHEN STATUS_PARA = 'R' THEN DT_ALTERACAO END) AS DT_REALIZACAO,
        MIN(CASE WHEN STATUS_PARA = 'C' THEN DT_ALTERACAO END) AS DT_CANCELAMENTO,

        -- Contagens
        SUM(CASE WHEN STATUS_DE = 'G' AND STATUS_PARA = 'P' THEN 1 ELSE 0 END) AS QTD_REVERSOES_GP,
        SUM(CASE WHEN STATUS_PARA = 'G' THEN 1 ELSE 0 END)                      AS QTD_AGENDAMENTOS,
        SUM(CASE WHEN STATUS_PARA = 'C' THEN 1 ELSE 0 END)                      AS QTD_CANCELAMENTOS,

        -- Timeline: "A->G (01/02 14:30) | G->P (03/02 09:00) | P->G (04/02 11:00) | G->R (05/02 16:00)"
        LISTAGG(
            STATUS_DE || '->' || STATUS_PARA
            || ' (' || TO_CHAR(DT_ALTERACAO, 'DD/MM HH24:MI') || ')',
            ' | '
        ) WITHIN GROUP (ORDER BY DT_ALTERACAO) AS HISTORICO_COMPLETO
    FROM EVOLUCAO
    GROUP BY CD_AVISO_CIRURGIA
),
-- Contagem de suspensoes por aviso
SUSPENSOES AS (
    SELECT
        ls.CD_AVISO_CIRURGIA,
        COUNT(*) AS QTD_SUSPENSOES
    FROM DBAMV.LOG_AVISO_CIRURGIA_SUSPENSAO ls
    GROUP BY ls.CD_AVISO_CIRURGIA
),
-- Procedimentos, especialidades (pre-agrupado)
PROCEDIMENTOS AS (
    SELECT
        ca.CD_AVISO_CIRURGIA,
        LISTAGG(DISTINCT cir.DS_CIRURGIA, '; ')
            WITHIN GROUP (ORDER BY cir.DS_CIRURGIA) AS DS_PROCEDIMENTOS,
        LISTAGG(DISTINCT esp.DS_ESPECIALID, '; ')
            WITHIN GROUP (ORDER BY esp.DS_ESPECIALID) AS DS_ESPECIALIDADES,
        MAX(CASE WHEN ca.SN_PRINCIPAL = 'S' THEN esp.DS_ESPECIALID END) AS ESPECIALIDADE_PRINCIPAL
    FROM DBAMV.CIRURGIA_AVISO ca
    LEFT JOIN DBAMV.CIRURGIA cir ON cir.CD_CIRURGIA = ca.CD_CIRURGIA
    LEFT JOIN DBAMV.ESPECIALID esp ON esp.CD_ESPECIALID = ca.CD_ESPECIALID
    GROUP BY ca.CD_AVISO_CIRURGIA
),
-- Cirurgiao, anestesista e especialidade do cirurgiao por aviso
PRESTADORES AS (
    SELECT
        pa.CD_AVISO_CIRURGIA,
        LISTAGG(CASE WHEN pa.SN_PRINCIPAL = 'S' THEN pa.NM_PRESTADOR END, '; ')
            WITHIN GROUP (ORDER BY pa.NM_PRESTADOR) AS CIRURGIAO_PRINCIPAL,
        MAX(CASE WHEN pa.SN_ANEST_PRINCIPAL = 'S' THEN pa.NM_PRESTADOR END) AS ANESTESISTA_PRINCIPAL,
        MAX(CASE WHEN pa.SN_PRINCIPAL = 'S' THEN vep.DESCRICAO_ESPECIALIDADE END) AS ESPECIALIDADE_CIRURGIAO
    FROM DBAMV.PRESTADOR_AVISO pa
    LEFT JOIN DBAMV.VDIC_ESPECIALIDADE_PRESTADOR vep
        ON vep.CODIGO_PRESTADOR = pa.CD_PRESTADOR AND vep.SN_ESPECIALIDADE_PRINCIPAL = 'S'
    WHERE pa.CD_AVISO_CIRURGIA IS NOT NULL
    GROUP BY pa.CD_AVISO_CIRURGIA
)
SELECT
    -- ==========================================
    -- 1. Identificacao
    -- ==========================================
    ac.CD_AVISO_CIRURGIA,
    atd.CD_ATENDIMENTO,
    ac.DT_AVISO_CIRURGIA,
    ROW_NUMBER() OVER (PARTITION BY atd.CD_ATENDIMENTO ORDER BY ac.DT_AVISO_CIRURGIA) AS NR_EVENTO_CIRURGICO,

    -- ==========================================
    -- 2. Atendimento
    -- ==========================================
    CASE atd.TP_ATENDIMENTO
        WHEN 'I' THEN 'Internacao'
        WHEN 'U' THEN 'Urgencia'
        WHEN 'A' THEN 'Ambulatorial'
        ELSE atd.TP_ATENDIMENTO
    END AS TIPO_ATENDIMENTO,
    atd.HR_ATENDIMENTO AS DATA_INTERNACAO,
    atd.HR_ALTA         AS DATA_ALTA,
    malt.DS_MOT_ALT     AS MOTIVO_ALTA,

    -- ==========================================
    -- 3. Situacao + Classificacao
    -- ==========================================
    CASE ac.TP_SITUACAO
        WHEN 'A' THEN 'Em Aviso'
        WHEN 'R' THEN 'Realizada'
        WHEN 'C' THEN 'Cancelada'
        WHEN 'G' THEN 'Agendada'
        WHEN 'T' THEN 'Checagem'
        WHEN 'P' THEN 'Pre-Agendamento'
        ELSE ac.TP_SITUACAO
    END AS SITUACAO_ATUAL,
    CASE ac.TP_CIRURGIAS
        WHEN 'E' THEN 'Eletiva'
        WHEN 'U' THEN 'Urgencia'
        WHEN 'M' THEN 'Emergencia'
        ELSE ac.TP_CIRURGIAS
    END AS TIPO_CIRURGIA,
    ac.CD_ASA,
    ta.DS_TIP_ANEST AS TIPO_ANESTESIA,

    -- ==========================================
    -- 4. Equipe + Procedimento
    -- ==========================================
    pr.CIRURGIAO_PRINCIPAL,
    COALESCE(p.ESPECIALIDADE_PRINCIPAL, pr.ESPECIALIDADE_CIRURGIAO) AS ESPECIALIDADE,
    pr.ANESTESISTA_PRINCIPAL,
    p.DS_PROCEDIMENTOS,
    p.DS_ESPECIALIDADES,
    cc.DS_CEN_CIR AS CENTRO_CIRURGICO,

    -- ==========================================
    -- 5. Agendamento
    -- ==========================================
    ac.DT_PRE_AGENDAMENTO,
    ac.DT_AGENDAMENTO,
    ac.DT_CONFIRMACAO,
    m.DT_PRIMEIRO_AGENDAMENTO,
    ag.DT_INICIO_AGE_CIR AS INICIO_AGENDADO,
    ag.DT_FINAL_AGE_CIR  AS FIM_AGENDADO,
    sc.DS_SAL_CIR         AS SALA,

    -- ==========================================
    -- 6. Execucao (tempos cirurgicos)
    -- ==========================================
    ac.DT_INICIO_ANESTESIA,
    ac.DT_INICIO_CIRURGIA,
    ac.DT_FIM_CIRURGIA,
    ac.DT_FIM_ANESTESIA,
    ac.DT_INICIO_LIMPEZA,
    ac.DT_FIM_LIMPEZA,
    ac.DT_SAIDA_SAL_CIR,
    ROUND((ac.DT_FIM_CIRURGIA   - ac.DT_INICIO_CIRURGIA)  * 1440) AS DURACAO_CIRURGIA_MIN,
    ROUND((ac.DT_FIM_ANESTESIA  - ac.DT_INICIO_ANESTESIA) * 1440) AS DURACAO_ANESTESIA_MIN,
    ROUND((ac.DT_FIM_LIMPEZA    - ac.DT_INICIO_LIMPEZA)   * 1440) AS DURACAO_LIMPEZA_MIN,
    ROUND((ac.DT_SAIDA_SAL_CIR  - ac.DT_INICIO_ANESTESIA) * 1440) AS TEMPO_TOTAL_SALA_MIN,

    -- ==========================================
    -- 7. Lead times (dias)
    -- ==========================================
    ROUND(m.DT_PRIMEIRO_AGENDAMENTO - ac.DT_AVISO_CIRURGIA, 1)    AS DIAS_AVISO_ATE_AGENDAR,
    ROUND(m.DT_REALIZACAO - ac.DT_AVISO_CIRURGIA, 1)              AS DIAS_AVISO_ATE_REALIZAR,
    ROUND(m.DT_REALIZACAO - m.DT_PRIMEIRO_AGENDAMENTO, 1)         AS DIAS_1_AGENDAMENTO_ATE_REALIZAR,
    ROUND(m.DT_REALIZACAO - m.DT_ULTIMO_AGENDAMENTO, 1)           AS DIAS_ULT_AGENDAMENTO_ATE_REALIZAR,
    ROUND(
        ac.DT_INICIO_CIRURGIA
        - LAG(ac.DT_INICIO_CIRURGIA, 1, atd.HR_ATENDIMENTO)
              OVER (PARTITION BY atd.CD_ATENDIMENTO ORDER BY ac.DT_AVISO_CIRURGIA)
    , 1) AS DIAS_ENTRE_CIRURGIAS,

    -- ==========================================
    -- 8. Atraso
    -- ==========================================
    ROUND((ac.DT_INICIO_CIRURGIA - ag.DT_INICIO_AGE_CIR) * 1440) AS MINUTOS_ATRASO_INICIO,
    CASE
        WHEN ac.DT_INICIO_CIRURGIA > ag.DT_INICIO_AGE_CIR THEN 'S'
        WHEN ac.DT_INICIO_CIRURGIA IS NOT NULL AND ag.DT_INICIO_AGE_CIR IS NOT NULL THEN 'N'
    END AS FLAG_ATRASOU,
    ma.DS_MOT_CANC AS MOTIVO_ATRASO,
    CASE ma.TP_MOT_CANC
        WHEN 'A' THEN 'Administrativo'
        WHEN 'M' THEN 'Medico'
        WHEN 'P' THEN 'Paciente'
        WHEN 'T' THEN 'Transferencia'
        WHEN 'C' THEN 'Cancelamento'
        ELSE ma.TP_MOT_CANC
    END AS TIPO_MOTIVO_ATRASO,

    -- ==========================================
    -- 9. Suspensao + Cancelamento
    -- ==========================================
    COALESCE(s.QTD_SUSPENSOES, 0) AS QTD_SUSPENSOES,
    ac.DT_CANCELAMENTO,
    mc.DS_MOT_CANC AS MOTIVO_CANCELAMENTO,
    CASE mc.TP_MOT_CANC
        WHEN 'A' THEN 'Administrativo'
        WHEN 'M' THEN 'Medico'
        WHEN 'P' THEN 'Paciente'
        WHEN 'T' THEN 'Transferencia'
        WHEN 'C' THEN 'Cancelamento'
        ELSE mc.TP_MOT_CANC
    END AS TIPO_MOTIVO_CANCELAMENTO,

    -- ==========================================
    -- 10. Indicadores
    -- ==========================================
    CASE
        WHEN COALESCE(m.QTD_REVERSOES_GP, 0) = 0 THEN 'VERDE'
        WHEN COALESCE(m.QTD_REVERSOES_GP, 0) <= 2 THEN 'AMARELO'
        ELSE 'VERMELHO'
    END AS SEMAFORO,
    COALESCE(m.QTD_MUDANCAS, 0)       AS QTD_MUDANCAS_STATUS,
    COALESCE(m.QTD_AGENDAMENTOS, 0)   AS QTD_AGENDAMENTOS,
    COALESCE(m.QTD_REVERSOES_GP, 0)   AS QTD_REVERSOES_GP,
    COALESCE(m.QTD_CANCELAMENTOS, 0)  AS QTD_CANCELAMENTOS,
    CASE
        WHEN ROW_NUMBER() OVER (PARTITION BY atd.CD_ATENDIMENTO ORDER BY ac.DT_AVISO_CIRURGIA) > 1
         AND p.ESPECIALIDADE_PRINCIPAL = LAG(p.ESPECIALIDADE_PRINCIPAL)
              OVER (PARTITION BY atd.CD_ATENDIMENTO ORDER BY ac.DT_AVISO_CIRURGIA)
        THEN 'Sim'
        ELSE 'Nao'
    END AS FLAG_CIRURGIA_2_TEMPO,

    -- ==========================================
    -- 11. Timeline completa
    -- ==========================================
    m.DT_REALIZACAO   AS DT_REALIZACAO_LOG,
    m.DT_CANCELAMENTO AS DT_CANCELAMENTO_LOG,
    m.HISTORICO_COMPLETO

FROM DBAMV.AVISO_CIRURGIA ac
INNER JOIN DBAMV.ATENDIME atd  ON atd.CD_ATENDIMENTO = ac.CD_ATENDIMENTO
LEFT JOIN MARCOS m             ON m.CD_AVISO_CIRURGIA = ac.CD_AVISO_CIRURGIA
LEFT JOIN SUSPENSOES s         ON s.CD_AVISO_CIRURGIA = ac.CD_AVISO_CIRURGIA
LEFT JOIN PROCEDIMENTOS p      ON p.CD_AVISO_CIRURGIA = ac.CD_AVISO_CIRURGIA
LEFT JOIN PRESTADORES pr       ON pr.CD_AVISO_CIRURGIA = ac.CD_AVISO_CIRURGIA
LEFT JOIN DBAMV.AGE_CIR ag    ON ag.CD_AVISO_CIRURGIA = ac.CD_AVISO_CIRURGIA
LEFT JOIN DBAMV.SAL_CIR sc    ON sc.CD_SAL_CIR = ag.CD_SAL_CIR
LEFT JOIN DBAMV.CEN_CIR cc    ON cc.CD_CEN_CIR = ac.CD_CEN_CIR
LEFT JOIN DBAMV.TIP_ANEST ta  ON ta.CD_TIP_ANEST = ac.CD_TIP_ANEST
LEFT JOIN DBAMV.MOT_CANC mc   ON mc.CD_MOT_CANC = ac.CD_MOT_CANC
LEFT JOIN DBAMV.MOT_CANC ma   ON ma.CD_MOT_CANC = ac.CD_MOT_CANC_ATRASO
LEFT JOIN DBAMV.MOT_ALT malt  ON malt.CD_MOT_ALT = atd.CD_MOT_ALT
WHERE atd.CD_MULTI_EMPRESA = 40
  AND ac.DT_AVISO_CIRURGIA BETWEEN $pgmvDataIni$ AND $pgmvDataFim$
ORDER BY ac.DT_AVISO_CIRURGIA DESC
