SELECT
    -- =====================================================================================
    -- == CONTEXTO DO ITEM (repete em todas as linhas) ==
    -- =====================================================================================
    it.cd_item_prescricao,
    prod.ds_produto AS medicamento,
    it.qt_item_prescricao AS dose,
    tf.ds_tip_fre AS frequencia,
    fa.nm_forma_aplicacao AS via,
    CASE WHEN NVL(prod.sn_pscotropico, 'N') = 'S' THEN 'SIM' ELSE 'NAO' END AS psicotropico,
    comp_agg.componentes,

    -- =====================================================================================
    -- == SOLICITACAO ==
    -- =====================================================================================
    sol_agg.cd_solsai_pro,
    sol_agg.dh_solicitacao,
    CASE sol_agg.tp_situacao
        WHEN 'P' THEN 'PENDENTE'
        WHEN 'S' THEN 'SEPARADA'
        WHEN 'A' THEN 'ATENDIDA'
        WHEN 'C' THEN 'CANCELADA'
        ELSE sol_agg.tp_situacao
    END AS status_solicitacao,
    sol_agg.qt_solicitado,
    sol_agg.qt_atendida,

    -- =====================================================================================
    -- == DISPENSACAO ==
    -- =====================================================================================
    disp_agg.dh_dispensacao,
    disp_agg.nm_usuario_dispensacao AS dispensado_por,
    disp_agg.qt_dispensada,

    -- =====================================================================================
    -- == RECEBIMENTO ==
    -- =====================================================================================
    disp_agg.hr_entrega AS dh_recebimento,
    disp_agg.nm_recebido AS recebido_por,

    -- =====================================================================================
    -- == HORARIO APRAZADO ==
    -- =====================================================================================
    hr.cd_horario_item_prescricao,
    hr.dh_medicacao AS dh_aprazado,
    hr.nm_usuario AS aprazado_por,
    hr.dh_criacao AS dh_aprazamento,
    hr.dh_suspensao,
    hr.qt_administrada,

    -- =====================================================================================
    -- == CHECAGEM ==
    -- =====================================================================================
    chk.cd_horario_consumo_item_presc,
    chk.dh_checagem,
    usu_chk.nm_usuario AS checado_por,
    chk.sn_suspenso AS nao_administrado,
    chk.ds_justificativa AS justificativa_nao_adm,

    -- =====================================================================================
    -- == DUPLA CHECAGEM (MAV) ==
    -- =====================================================================================
    dc.cd_hritpre_cons_dupla_checg AS cd_dupla_checagem,
    usu_dc.nm_usuario AS dupla_checagem_por,

    -- =====================================================================================
    -- == DEVOLUCAO ==
    -- =====================================================================================
    dev_agg.dh_devolucao,
    NVL(dev_agg.qt_devolvida, 0) AS qt_devolvida,

    -- =====================================================================================
    -- == STATUS DO HORARIO ==
    -- =====================================================================================
    CASE
        WHEN hr.dh_suspensao IS NOT NULL THEN 'SUSPENSO'
        WHEN chk.cd_horario_consumo_item_presc IS NULL THEN 'PENDENTE'
        WHEN NVL(chk.sn_suspenso, 0) = 1 THEN 'NAO_ADMINISTRADO'
        ELSE 'ADMINISTRADO'
    END AS status_horario

FROM mvcpoe.horario_item_prescricao hr
INNER JOIN mvcpoe.item_prescricao it ON it.cd_item_prescricao = hr.cd_item_prescricao
INNER JOIN dbamv.produto prod ON it.cd_produto = prod.cd_produto
LEFT JOIN dbamv.tip_fre tf ON it.cd_frequencia = tf.cd_tip_fre
LEFT JOIN mvcpoe.forma_aplicacao fa ON it.cd_forma_aplicacao = fa.cd_forma_aplicacao
-- == CHECAGEM ==
LEFT JOIN mvcpoe.horario_consumo_item_prescric chk
    ON chk.cd_item_prescricao = hr.cd_item_prescricao
    AND chk.dh_medicacao = hr.dh_medicacao
LEFT JOIN dbasgu.usuarios usu_chk ON usu_chk.cd_usuario = chk.cd_usuario

-- == DUPLA CHECAGEM ==
LEFT JOIN dbamv.hritpre_cons_dupla_checagem dc
    ON dc.cd_itpre_med = hr.cd_item_prescricao
    AND dc.dh_medicacao = hr.dh_medicacao
LEFT JOIN dbasgu.usuarios usu_dc ON usu_dc.cd_usuario = dc.cd_usuario

-- == COMPONENTES ==
LEFT JOIN (
    SELECT comp.cd_item_prescricao,
           LISTAGG(prod_c.ds_produto || ' ' || comp.qt_componente || comp.cd_unidade, ' + ')
               WITHIN GROUP (ORDER BY comp.nr_ordem) AS componentes
    FROM mvcpoe.componente_item_prescricao comp
    INNER JOIN dbamv.produto prod_c ON comp.cd_produto = prod_c.cd_produto
    GROUP BY comp.cd_item_prescricao
) comp_agg ON comp_agg.cd_item_prescricao = it.cd_item_prescricao

-- == SOLICITACAO ==
LEFT JOIN (
    SELECT itsol.cd_itpre_med,
           MAX(sol.cd_solsai_pro) AS cd_solsai_pro,
           MAX(sol.hr_solsai_pro) AS dh_solicitacao,
           MAX(sol.tp_situacao) AS tp_situacao,
           SUM(NVL(itsol.qt_solicitado, 0)) AS qt_solicitado,
           SUM(NVL(itsol.qt_atendida, 0)) AS qt_atendida
    FROM dbamv.itsolsai_pro itsol
    INNER JOIN dbamv.solsai_pro sol ON sol.cd_solsai_pro = itsol.cd_solsai_pro
    GROUP BY itsol.cd_itpre_med
) sol_agg ON sol_agg.cd_itpre_med = it.cd_item_prescricao

-- == DISPENSACAO + RECEBIMENTO ==
LEFT JOIN (
    SELECT itsol.cd_itpre_med,
           MAX(mv.hr_mvto_estoque) AS dh_dispensacao,
           MAX(usu_d.nm_usuario) AS nm_usuario_dispensacao,
           SUM(NVL(itmv.qt_movimentacao, 0)) AS qt_dispensada,
           MAX(mv.hr_entrega) AS hr_entrega,
           MAX(mv.nm_recebido) AS nm_recebido
    FROM dbamv.itsolsai_pro itsol
    LEFT JOIN dbamv.itmvto_estoque itmv ON itmv.cd_itsolsai_pro = itsol.cd_itsolsai_pro
    LEFT JOIN dbamv.mvto_estoque mv ON mv.cd_mvto_estoque = itmv.cd_mvto_estoque AND mv.tp_mvto_estoque = 'P'
    LEFT JOIN dbasgu.usuarios usu_d ON mv.cd_usuario = usu_d.cd_usuario
    GROUP BY itsol.cd_itpre_med
) disp_agg ON disp_agg.cd_itpre_med = it.cd_item_prescricao

-- == DEVOLUCAO ==
LEFT JOIN (
    SELECT itsol.cd_itpre_med,
           MAX(sol.hr_solsai_pro) AS dh_devolucao,
           SUM(NVL(itsol.qt_solicitado, 0)) AS qt_devolvida
    FROM dbamv.itsolsai_pro itsol
    INNER JOIN dbamv.solsai_pro sol ON sol.cd_solsai_pro = itsol.cd_solsai_pro
    WHERE sol.tp_solsai_pro IN ('C', 'D')
    GROUP BY itsol.cd_itpre_med
) dev_agg ON dev_agg.cd_itpre_med = it.cd_item_prescricao

WHERE hr.cd_item_prescricao = #ITEM_PRESCRICAO#
ORDER BY hr.dh_medicacao
