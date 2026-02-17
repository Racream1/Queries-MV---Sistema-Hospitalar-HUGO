SELECT * FROM (
    SELECT
        presc.cd_prescricao AS PRESCRICAO,
        a.cd_atendimento,
        pac.nm_paciente,
        lei.ds_resumo AS leito,
        ui.ds_unid_int AS unidade,
        setor.nm_setor,
        presc.dh_prescricao,
        COUNT(itsol.cd_itsolsai_pro) AS total_solicitacoes,
        SUM(CASE WHEN NVL(itsol.qt_atendida, 0) > 0 THEN 1 ELSE 0 END) AS qtd_atendidas,
        SUM(CASE WHEN sol.tp_situacao = 'P' THEN 1 ELSE 0 END) AS qtd_pendentes,
        SUM(CASE WHEN sol.tp_situacao = 'S' THEN 1 ELSE 0 END) AS qtd_separadas,
        SUM(CASE WHEN sol.tp_situacao = 'C' THEN 1 ELSE 0 END) AS qtd_canceladas,
        CASE
            WHEN SUM(CASE WHEN sol.tp_situacao = 'P' THEN 1 ELSE 0 END) = 0
                 AND SUM(CASE WHEN NVL(itsol.qt_atendida, 0) > 0 THEN 1 ELSE 0 END) > 0
            THEN 'ATENDIDA'
            WHEN SUM(CASE WHEN NVL(itsol.qt_atendida, 0) > 0 THEN 1 ELSE 0 END) > 0
                 AND SUM(CASE WHEN sol.tp_situacao = 'P' THEN 1 ELSE 0 END) > 0
            THEN 'PARCIAL'
            WHEN SUM(CASE WHEN sol.tp_situacao = 'S' THEN 1 ELSE 0 END) > 0
            THEN 'SEPARADA'
            WHEN SUM(CASE WHEN sol.tp_situacao = 'P' THEN 1 ELSE 0 END) > 0
            THEN 'PENDENTE'
            ELSE 'SEM ATENDIMENTO'
        END AS status_geral,
        CASE WHEN MAX(NVL(it.sn_urgente, 0)) = 1 THEN 'SIM' ELSE 'NAO' END AS urgente,
        CASE WHEN MAX(CASE WHEN NVL(prod.sn_pscotropico, 'N') = 'S' THEN 1 ELSE 0 END) = 1 THEN 'SIM' ELSE 'NAO' END AS psicotropico
    FROM mvcpoe.prescricao presc
    INNER JOIN dbamv.atendime a ON presc.cd_atendimento = a.cd_atendimento
    INNER JOIN dbamv.paciente pac ON a.cd_paciente = pac.cd_paciente
    LEFT JOIN dbamv.leito lei ON a.cd_leito = lei.cd_leito
    LEFT JOIN dbamv.unid_int ui ON lei.cd_unid_int = ui.cd_unid_int
    LEFT JOIN dbamv.setor setor ON ui.cd_setor = setor.cd_setor
    INNER JOIN mvcpoe.item_prescricao it ON presc.cd_prescricao = it.cd_prescricao
    INNER JOIN dbamv.produto prod ON prod.cd_produto = it.cd_produto
    INNER JOIN dbamv.itsolsai_pro itsol ON itsol.cd_itpre_med = it.cd_item_prescricao
    INNER JOIN dbamv.solsai_pro sol ON sol.cd_solsai_pro = itsol.cd_solsai_pro
    WHERE a.cd_multi_empresa = 40
      AND a.tp_atendimento = 'I'
      AND presc.sn_fechado = 1
      AND presc.tp_prescricao = 1
      AND NVL(it.sn_suspenso, 0) = 0
      AND prod.sn_medicamento = 'S'
      AND presc.dh_prescricao BETWEEN TO_DATE(TO_CHAR($DataIniHugo$,'DD/MM/YYYY'), 'DD/MM/YYYY')
                                  AND TO_DATE(TO_CHAR($DataFimHugo$,'DD/MM/YYYY') || ' 23:59:59', 'DD/MM/YYYY HH24:MI:SS')
    GROUP BY presc.cd_prescricao, a.cd_atendimento, pac.nm_paciente, lei.ds_resumo, ui.ds_unid_int, setor.nm_setor, presc.dh_prescricao
)
ORDER BY unidade, leito
