-- ============================================================
-- CARRINHO DE PARADA - MASTER (VISAO POR PRESCRICAO)
-- ============================================================
-- Uma linha por prescricao de "Carro de Parada".
-- Identificado pelo objeto de prescricao (PAGU_OBJETO).
-- Drill-out: #PRESCRICAO# -> 2_detalhe_carrinho_parada.sql
-- ============================================================

SELECT * FROM (
    SELECT
        p.CD_PRESCRICAO                                     AS PRESCRICAO,
        a.CD_ATENDIMENTO,
        pac.NM_PACIENTE,
        lei.DS_RESUMO                                       AS LEITO,
        ui.DS_UNID_INT                                      AS UNIDADE,
        setor.NM_SETOR,
        prest.NM_PRESTADOR                                  AS MEDICO_PRESCRITOR,

        -- Datas
        p.DH_PRESCRICAO,
        p.DH_CRIACAO,
        p.DT_VALIDADE,

        -- Status
        CASE p.SN_FECHADO
            WHEN 1 THEN 'Fechada'
            ELSE 'Aberta'
        END                                                 AS STATUS_PRESCRICAO,

        -- Tipo de atendimento
        CASE a.TP_ATENDIMENTO
            WHEN 'I' THEN 'Internacao'
            WHEN 'U' THEN 'Urgencia'
            WHEN 'A' THEN 'Ambulatorial'
            WHEN 'E' THEN 'Externo'
            WHEN 'H' THEN 'Hospital Dia'
        END                                                 AS TIPO_ATENDIMENTO,

        -- Contagens
        COUNT(DISTINCT ip.CD_ITEM_PRESCRICAO)               AS TOTAL_ITENS,
        SUM(NVL(hr_agg.total_horarios, 0))                  AS TOTAL_HORARIOS,
        SUM(NVL(chk_agg.total_checagens, 0))                AS TOTAL_CHECAGENS,
        SUM(NVL(chk_agg.total_administrado, 0))             AS TOTAL_ADMINISTRADO,
        SUM(NVL(chk_agg.total_nao_administrado, 0))         AS TOTAL_NAO_ADMINISTRADO,

        -- Urgente / Alto risco
        CASE WHEN MAX(NVL(ip.SN_URGENTE, 0)) = 1 THEN 'SIM' ELSE 'NAO' END AS URGENTE

    FROM MVCPOE.PRESCRICAO p

        -- Objeto de prescricao (CARRO DE PARADA)
        INNER JOIN MVCPOE.PAGU_OBJETO po
            ON p.CD_OBJETO = po.CD_OBJETO

        -- Atendimento e paciente
        INNER JOIN DBAMV.ATENDIME a
            ON p.CD_ATENDIMENTO = a.CD_ATENDIMENTO
        INNER JOIN DBAMV.PACIENTE pac
            ON a.CD_PACIENTE = pac.CD_PACIENTE

        -- Itens da prescricao
        INNER JOIN MVCPOE.ITEM_PRESCRICAO ip
            ON p.CD_PRESCRICAO = ip.CD_PRESCRICAO

        -- Medico prescritor
        LEFT JOIN DBAMV.PRESTADOR prest
            ON p.CD_PRESTADOR = prest.CD_PRESTADOR

        -- Leito e unidade
        LEFT JOIN DBAMV.LEITO lei
            ON a.CD_LEITO = lei.CD_LEITO
        LEFT JOIN DBAMV.UNID_INT ui
            ON lei.CD_UNID_INT = ui.CD_UNID_INT
        LEFT JOIN DBAMV.SETOR setor
            ON ui.CD_SETOR = setor.CD_SETOR

        -- Aprazamento (contagem)
        LEFT JOIN (
            SELECT hr.CD_ITEM_PRESCRICAO, COUNT(*) AS total_horarios
            FROM MVCPOE.HORARIO_ITEM_PRESCRICAO hr
            WHERE hr.DH_SUSPENSAO IS NULL
            GROUP BY hr.CD_ITEM_PRESCRICAO
        ) hr_agg ON hr_agg.CD_ITEM_PRESCRICAO = ip.CD_ITEM_PRESCRICAO

        -- Checagem (contagem)
        LEFT JOIN (
            SELECT chk.CD_ITEM_PRESCRICAO,
                   COUNT(*) AS total_checagens,
                   SUM(CASE WHEN NVL(chk.SN_SUSPENSO, 0) = 0 THEN 1 ELSE 0 END) AS total_administrado,
                   SUM(CASE WHEN NVL(chk.SN_SUSPENSO, 0) = 1 THEN 1 ELSE 0 END) AS total_nao_administrado
            FROM MVCPOE.HORARIO_CONSUMO_ITEM_PRESCRIC chk
            GROUP BY chk.CD_ITEM_PRESCRICAO
        ) chk_agg ON chk_agg.CD_ITEM_PRESCRICAO = ip.CD_ITEM_PRESCRICAO

    WHERE a.CD_MULTI_EMPRESA = 40
      AND po.NM_OBJETO = 'CARRO DE PARADA'
      AND p.DH_PRESCRICAO BETWEEN TO_DATE(TO_CHAR($DataIniHugo$,'DD/MM/YYYY'), 'DD/MM/YYYY')
                                AND TO_DATE(TO_CHAR($DataFimHugo$,'DD/MM/YYYY') || ' 23:59:59', 'DD/MM/YYYY HH24:MI:SS')

    GROUP BY
        p.CD_PRESCRICAO, a.CD_ATENDIMENTO, pac.NM_PACIENTE,
        lei.DS_RESUMO, ui.DS_UNID_INT, setor.NM_SETOR,
        prest.NM_PRESTADOR, p.DH_PRESCRICAO, p.DH_CRIACAO,
        p.DT_VALIDADE, p.SN_FECHADO, a.TP_ATENDIMENTO
)
ORDER BY DH_PRESCRICAO DESC, UNIDADE, LEITO
