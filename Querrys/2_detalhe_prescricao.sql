SELECT
    -- =====================================================================================
    -- == IDENTIFICACAO ==
    -- =====================================================================================
    presc.cd_prescricao,
    presc.dh_prescricao,
    a.cd_atendimento,
    pac.nm_paciente,
    lei.ds_resumo AS leito,
    ui.ds_unid_int AS unidade,
    prest.nm_prestador AS medico_prescritor,

    -- =====================================================================================
    -- == MEDICAMENTO ==
    -- =====================================================================================
    it.cd_item_prescricao,
    prod.ds_produto AS medicamento,
    it.qt_item_prescricao AS dose,
    tf.ds_tip_fre AS frequencia,
    fa.nm_forma_aplicacao AS via,
    CASE it.tp_situacao
        WHEN 1 THEN 'SE NECESSARIO'
        WHEN 2 THEN 'NORMAL'
        WHEN 3 THEN 'ACM'
        WHEN 4 THEN 'URGENTE'
        ELSE 'OUTRO'
    END AS tipo_situacao,
    CASE WHEN NVL(it.sn_urgente, 0) = 1 THEN 'SIM' ELSE 'NAO' END AS urgente,
    CASE WHEN NVL(prod.sn_pscotropico, 'N') = 'S' THEN 'SIM' ELSE 'NAO' END AS psicotropico,
    comp_agg.componentes,

    -- =====================================================================================
    -- == RESUMO DA CADEIA (so contagens) ==
    -- =====================================================================================
    NVL(hr_agg.total_horarios, 0) AS total_horarios,
    NVL(chk_agg.total_checagens, 0) AS total_checagens,
    NVL(chk_agg.total_administrado, 0) AS total_administrado,
    NVL(chk_agg.total_nao_administrado, 0) AS total_nao_administrado,
    NVL(dc_agg.total_duplas_checagens, 0) AS total_duplas_checagens,

    -- =====================================================================================
    -- == DEVOLUCAO ==
    -- =====================================================================================
    CASE WHEN dev_agg.cd_itpre_med IS NOT NULL THEN 'SIM' ELSE 'NAO' END AS devolucao,
    NVL(dev_agg.qt_devolvida, 0) AS qt_devolvida,

    -- =====================================================================================
    -- == STATUS DA CADEIA ==
    -- =====================================================================================
    CASE
        WHEN NVL(it.sn_suspenso, 0) = 1 THEN '00_SUSPENSO'
        WHEN sol_agg.cd_solsai_pro IS NULL THEN '01_SEM_SOLICITACAO'
        WHEN sol_agg.tp_situacao = 'C' THEN '02_CANCELADA'
        WHEN sol_agg.tp_situacao = 'P' THEN '03_PENDENTE_FARMACIA'
        WHEN sol_agg.tp_situacao = 'S' THEN '04_SEPARADA'
        WHEN disp_agg.dh_dispensacao IS NULL THEN '05_AGUARDANDO_DISPENSACAO'
        WHEN disp_agg.hr_entrega IS NULL THEN '06_DISPENSADO_NAO_RECEBIDO'
        WHEN NVL(chk_agg.total_checagens, 0) = 0 THEN '07_RECEBIDO_NAO_CHECADO'
        WHEN NVL(prod.sn_pscotropico, 'N') = 'S'
         AND NVL(dc_agg.total_duplas_checagens, 0) = 0 THEN '08_AGUARDANDO_DUPLA_CHECAGEM'
        WHEN NVL(chk_agg.total_checagens, 0) < NVL(hr_agg.total_horarios, 0) THEN '09_PARCIALMENTE_CHECADO'
        ELSE '10_COMPLETO'
    END AS status_cadeia

FROM mvcpoe.prescricao presc
INNER JOIN dbamv.atendime a ON presc.cd_atendimento = a.cd_atendimento
INNER JOIN dbamv.paciente pac ON a.cd_paciente = pac.cd_paciente
LEFT JOIN dbamv.leito lei ON a.cd_leito = lei.cd_leito
LEFT JOIN dbamv.unid_int ui ON lei.cd_unid_int = ui.cd_unid_int
LEFT JOIN dbamv.prestador prest ON presc.cd_prestador = prest.cd_prestador
INNER JOIN mvcpoe.item_prescricao it ON presc.cd_prescricao = it.cd_prescricao
INNER JOIN dbamv.produto prod ON it.cd_produto = prod.cd_produto
LEFT JOIN dbamv.tip_fre tf ON it.cd_frequencia = tf.cd_tip_fre
LEFT JOIN mvcpoe.forma_aplicacao fa ON it.cd_forma_aplicacao = fa.cd_forma_aplicacao


-- == COMPONENTES ==
LEFT JOIN (
    SELECT comp.cd_item_prescricao,
           LISTAGG(prod_c.ds_produto || ' ' || comp.qt_componente || comp.cd_unidade, ' + ')
               WITHIN GROUP (ORDER BY comp.nr_ordem) AS componentes
    FROM mvcpoe.componente_item_prescricao comp
    INNER JOIN dbamv.produto prod_c ON comp.cd_produto = prod_c.cd_produto
    GROUP BY comp.cd_item_prescricao
) comp_agg ON comp_agg.cd_item_prescricao = it.cd_item_prescricao

-- == APRAZAMENTO (so contagem) ==
LEFT JOIN (
    SELECT hr.cd_item_prescricao, COUNT(*) AS total_horarios
    FROM mvcpoe.horario_item_prescricao hr
    WHERE hr.dh_suspensao IS NULL
    GROUP BY hr.cd_item_prescricao
) hr_agg ON hr_agg.cd_item_prescricao = it.cd_item_prescricao

-- == SOLICITACAO (so para status_cadeia) ==
LEFT JOIN (
    SELECT itsol.cd_itpre_med,
           MAX(sol.cd_solsai_pro) AS cd_solsai_pro,
           MAX(sol.tp_situacao) AS tp_situacao
    FROM dbamv.itsolsai_pro itsol
    INNER JOIN dbamv.solsai_pro sol ON sol.cd_solsai_pro = itsol.cd_solsai_pro
    GROUP BY itsol.cd_itpre_med
) sol_agg ON sol_agg.cd_itpre_med = it.cd_item_prescricao

-- == DISPENSACAO + RECEBIMENTO (so para status_cadeia) ==
LEFT JOIN (
    SELECT itsol.cd_itpre_med,
           MAX(mv.hr_mvto_estoque) AS dh_dispensacao,
           MAX(mv.hr_entrega) AS hr_entrega
    FROM dbamv.itsolsai_pro itsol
    LEFT JOIN dbamv.itmvto_estoque itmv ON itmv.cd_itsolsai_pro = itsol.cd_itsolsai_pro
    LEFT JOIN dbamv.mvto_estoque mv ON mv.cd_mvto_estoque = itmv.cd_mvto_estoque AND mv.tp_mvto_estoque = 'P'
    GROUP BY itsol.cd_itpre_med
) disp_agg ON disp_agg.cd_itpre_med = it.cd_item_prescricao

-- == CHECAGEM (contagens) ==
LEFT JOIN (
    SELECT chk.cd_item_prescricao,
           COUNT(*) AS total_checagens,
           SUM(CASE WHEN NVL(chk.sn_suspenso, 0) = 0 THEN 1 ELSE 0 END) AS total_administrado,
           SUM(CASE WHEN NVL(chk.sn_suspenso, 0) = 1 THEN 1 ELSE 0 END) AS total_nao_administrado
    FROM mvcpoe.horario_consumo_item_prescric chk
    GROUP BY chk.cd_item_prescricao
) chk_agg ON chk_agg.cd_item_prescricao = it.cd_item_prescricao

-- == DUPLA CHECAGEM (contagem) ==
LEFT JOIN (
    SELECT dc.cd_itpre_med, COUNT(*) AS total_duplas_checagens
    FROM dbamv.hritpre_cons_dupla_checagem dc
    GROUP BY dc.cd_itpre_med
) dc_agg ON dc_agg.cd_itpre_med = it.cd_item_prescricao

-- == DEVOLUCAO ==
LEFT JOIN (
    SELECT itsol.cd_itpre_med,
           SUM(NVL(itsol.qt_solicitado, 0)) AS qt_devolvida
    FROM dbamv.itsolsai_pro itsol
    INNER JOIN dbamv.solsai_pro sol ON sol.cd_solsai_pro = itsol.cd_solsai_pro
    WHERE sol.tp_solsai_pro IN ('C', 'D')
    GROUP BY itsol.cd_itpre_med
) dev_agg ON dev_agg.cd_itpre_med = it.cd_item_prescricao

WHERE presc.cd_prescricao = #PRESCRICAO#
  AND NVL(it.sn_suspenso, 0) = 0
ORDER BY it.nr_ordem, prod.ds_produto
