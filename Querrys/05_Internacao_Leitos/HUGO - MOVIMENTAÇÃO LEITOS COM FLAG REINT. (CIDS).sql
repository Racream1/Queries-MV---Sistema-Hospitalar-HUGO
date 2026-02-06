-- Definição de parâmetros
WITH params AS (
    SELECT
        TO_DATE(TO_CHAR($pgmvDataIni$,'dd/mm/yyyy')||' 00:00','dd/mm/yyyy hh24:mi') AS DH_INICIO,
        TO_DATE(TO_CHAR($pgmvDataFim$,'dd/mm/yyyy')||' 23:59','dd/mm/yyyy hh24:mi') AS DH_FIM
    FROM DUAL
),
atendimentos_ativos AS (
    SELECT cd_atendimento, cd_paciente, cd_leito, dt_alta, hr_alta, sn_obito, tp_atendimento, cd_mot_alt, cd_tip_res
    FROM dbamv.atendime
    WHERE cd_multi_empresa = 40
    and tp_atendimento = 'I'
    AND dt_atendimento <= (SELECT DH_FIM FROM params)
    AND (dt_alta IS NULL OR dt_alta >= (SELECT DH_INICIO FROM params))
),
-- ETAPA 1: Unificar todos os eventos (movimentos e desfechos) para criar uma linha do tempo real
eventos_brutos AS (
    -- Fonte 1: Movimentações
    SELECT
        m.cd_atendimento,
        TO_DATE(TO_CHAR(m.dt_mov_int, 'DD/MM/YYYY') || ' ' || TO_CHAR(m.hr_mov_int, 'HH24:MI'), 'DD/MM/YYYY HH24:MI') AS dh_evento,
        'MOVIMENTACAO' AS tipo_base_evento,
        u_origem.ds_unid_int AS origem_unidade,
        u_destino.ds_unid_int AS destino_unidade,
        l_origem.ds_leito AS leito_origem,
        l_destino.ds_leito AS leito_destino,
        u_origem.cd_unid_int AS cd_unid_origem,
        u_destino.cd_unid_int AS cd_unid_destino,
        aa.sn_obito, aa.tp_atendimento, NULL AS ds_motivo_alta, NULL AS tp_mot_alta, NULL AS sn_obito_tip_res
    FROM dbamv.mov_int m
    INNER JOIN atendimentos_ativos aa ON m.cd_atendimento = aa.cd_atendimento
    INNER JOIN dbamv.leito l_destino ON m.cd_leito = l_destino.cd_leito
    INNER JOIN dbamv.unid_int u_destino ON l_destino.cd_unid_int = u_destino.cd_unid_int
    INNER JOIN dbamv.leito l_origem ON m.cd_leito_anterior = l_origem.cd_leito
    INNER JOIN dbamv.unid_int u_origem ON l_origem.cd_unid_int = u_origem.cd_unid_int
    WHERE m.tp_mov IN ('O', 'I')
    UNION ALL
    -- Fonte 2: Desfechos
    SELECT
        aa.cd_atendimento,
        aa.hr_alta AS dh_evento,
        'DESFECHO' AS tipo_base_evento,
        u_leito_final.ds_unid_int, ma.ds_mot_alt,
        l_final.ds_leito, NULL,
        u_leito_final.cd_unid_int, NULL,
        aa.sn_obito, aa.tp_atendimento, ma.ds_mot_alt, ma.tp_mot_alta, tr.sn_obito
    FROM atendimentos_ativos aa
    LEFT JOIN dbamv.leito l_final ON aa.cd_leito = l_final.cd_leito
    LEFT JOIN dbamv.unid_int u_leito_final ON l_final.cd_unid_int = u_leito_final.cd_unid_int
    LEFT JOIN dbamv.mot_alt ma ON aa.cd_mot_alt = ma.cd_mot_alt
    LEFT JOIN dbamv.tip_res tr ON aa.cd_tip_res = tr.cd_tip_res
    WHERE aa.dt_alta IS NOT NULL AND aa.hr_alta BETWEEN (SELECT DH_INICIO FROM params) AND (SELECT DH_FIM FROM params)
),
-- ETAPA 2: Enriquecer a jornada com informações e blocos hospitalares
jornada_enriquecida AS (
    SELECT
        e.*,
        p.nm_paciente,
        -- Nova classificação de blocos para ORIGEM
        CASE
            WHEN e.cd_unid_origem IN (561, 559, 560, 601) THEN 'EMERGENCIA'
            WHEN e.cd_unid_origem IN (564, 565, 566, 567) THEN 'UTI'
            WHEN e.cd_unid_origem IN (558, 562, 563, 570) THEN 'ENFERMARIA'
            WHEN e.cd_unid_origem IN (568) THEN 'CENTRO CIRURGICO'
            ELSE 'OUTROS'
        END AS bloco_origem,
        -- Nova classificação de blocos para DESTINO
        CASE
            WHEN e.cd_unid_destino IN (561, 559, 560, 601) THEN 'EMERGENCIA'
            WHEN e.cd_unid_destino IN (564, 565, 566, 567) THEN 'UTI'
            WHEN e.cd_unid_destino IN (558, 562, 563, 570) THEN 'ENFERMARIA'
            WHEN e.cd_unid_destino IN (568) THEN 'CENTRO CIRURGICO'
            ELSE 'OUTROS'
        END AS bloco_destino,
        LAG(e.dh_evento, 1) OVER (PARTITION BY e.cd_atendimento ORDER BY e.dh_evento) as dh_evento_anterior
    FROM eventos_brutos e
    INNER JOIN dbamv.paciente p ON (SELECT cd_paciente FROM atendimentos_ativos aa WHERE aa.cd_atendimento = e.cd_atendimento) = p.cd_paciente
)
-- ETAPA FINAL: Apresentar o resultado com a nova classificação de eventos
SELECT
    j.nm_paciente,
    j.cd_atendimento,
    j.dh_evento,
    j.origem_unidade AS origem,
    j.leito_origem,
    j.destino_unidade AS destino,
    j.leito_destino,
    -- Uma única coluna de flag com a nova lógica de classificação de eventos
    CASE
        -- Primeiro, os desfechos (lógica inalterada)
        WHEN j.tipo_base_evento = 'DESFECHO' THEN
            CASE
                WHEN (j.tp_atendimento = 'I' AND (UPPER(j.ds_motivo_alta) LIKE '%OBITO%' OR j.sn_obito = 'S')) OR (j.tp_atendimento = 'U' AND j.sn_obito = 'S') THEN 'OBITO'
                ELSE 'ALTA HOSPITALAR'
            END
        -- Depois, as movimentações (lógica ajustada conforme solicitado)
        WHEN j.tipo_base_evento = 'MOVIMENTACAO' THEN
            CASE
                -- Se a movimentação ocorreu dentro do mesmo bloco
                WHEN j.bloco_origem = j.bloco_destino THEN 'REMANEJAMENTO INTERNO - ' || j.bloco_origem
                -- Se a movimentação foi entre blocos diferentes
                ELSE 'TRANSFERENCIA - DE ' || j.bloco_origem || ' PARA ' || j.bloco_destino
            END
    END AS tipo_evento,
    -- Cálculo de tempo de permanência, útil para a análise geral
    ROUND((j.dh_evento - j.dh_evento_anterior) * 24, 2) AS tempo_no_local_anterior_h
FROM jornada_enriquecida j
ORDER BY
    j.nm_paciente,
    j.dh_evento