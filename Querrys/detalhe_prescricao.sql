SELECT
    -- =====================================================================================
    -- == PRESCRICAO (CABECALHO) ==
    -- =====================================================================================
    presc.cd_prescricao,
    presc.dh_prescricao,
    presc.tp_prescricao,
    CASE presc.tp_prescricao
        WHEN 1 THEN 'MEDICAMENTOS'
        WHEN 2 THEN 'CUIDADOS'
        WHEN 3 THEN 'DIETAS'
        ELSE 'TIPO ' || presc.tp_prescricao
    END AS ds_tipo_prescricao,
    presc.sn_fechado,
    presc.sn_vigente,
    presc.dh_validade_ini,
    presc.dh_validade_fim,
    presc.ds_observacao AS observacao_prescricao_geral,
    presc.cd_setor AS cd_setor_prescricao,

    -- =====================================================================================
    -- == ATENDIMENTO ==
    -- =====================================================================================
    a.cd_atendimento,
    a.cd_multi_empresa,
    emp.ds_multi_empresa AS nome_empresa,
    a.dt_atendimento,
    a.hr_atendimento,
    a.tp_atendimento,
    a.cd_convenio,
    conv.nm_convenio,
    a.cd_con_pla AS cd_plano,
    pla.ds_con_pla AS nome_plano,
    a.cd_cid,
    cid.ds_cid,
    a.cd_ori_ate,
    ori.ds_ori_ate AS origem_atendimento,
    a.dt_alta,
    a.hr_alta,
    a.cd_mot_alt AS cd_motivo_alta,
    mot_alta.ds_mot_alt AS motivo_alta,

    -- =====================================================================================
    -- == PACIENTE ==
    -- =====================================================================================
    pac.cd_paciente,
    pac.nm_paciente,
    pac.dt_nascimento,
    TRUNC(MONTHS_BETWEEN(SYSDATE, pac.dt_nascimento) / 12) AS idade_anos,
    TRUNC(MOD(MONTHS_BETWEEN(SYSDATE, pac.dt_nascimento), 12)) AS idade_meses,
    pac.tp_sexo,
    pac.nr_cpf,
    pac.nr_cns AS cartao_sus,
    pac.ds_endereco,
    pac.nm_bairro,
    pac.nm_cidade,
    pac.cd_uf,
    pac.nr_fone,
    pac.qt_peso,
    pac.qt_altura,
    pac.ds_alergia AS alergia_declarada_cadastro,

    -- =====================================================================================
    -- == LOCALIZACAO ==
    -- =====================================================================================
    lei.cd_leito,
    lei.ds_leito,
    lei.ds_resumo AS leito_resumo,
    lei.tp_ocupacao,
    ui.cd_unid_int,
    ui.ds_unid_int,
    ui.tp_unid_int,
    setor.cd_setor,
    setor.nm_setor,
    setor.tp_setor,

    -- =====================================================================================
    -- == PRESCRITOR ==
    -- =====================================================================================
    prest.cd_prestador,
    prest.nm_prestador,
    prest.nr_cpf AS cpf_prestador,
    prest.ds_conselho,
    prest.nr_crm,
    prest.sg_uf_crm AS uf_crm,
    esp.cd_especialid,
    esp.ds_especialid,
    cbos.cd_cbos,
    cbos.ds_cbos,

    -- =====================================================================================
    -- == ITEM PRESCRITO (MEDICAMENTO) ==
    -- =====================================================================================
    it.cd_item_prescricao,
    it.nr_sequencia,
    it.cd_produto,
    prod.ds_produto,
    prod.cd_pro_fat AS codigo_faturamento,
    prod.cd_especie,
    espec.ds_especie,
    prod.cd_classe,
    classe.ds_classe,
    prod.cd_sub_classe,
    sub.ds_sub_classe,

    -- == DETALHES DO PRODUTO ==
    prod.cd_dcb,
    dcb.ds_dcb AS principio_ativo,
    prod.ds_apresentacao,
    prod.qt_fracionamento,
    prod.cd_uni_pro AS unidade_padrao_produto,
    prod.cd_laboratorio,
    lab.nm_terceiro AS nome_fabricante,
    prod.cd_barra AS codigo_barras_produto,
    prod.sn_fracionavel,
    prod.sn_kit,
    prod.sn_padronizado,

    -- == EMPRESA PRODUTO (CONFIGURACOES POR EMPRESA) ==
    ep.sn_ativo AS produto_ativo_empresa,
    ep.sn_padronizado AS produto_padronizado_empresa,
    ep.sn_alta_vigilancia,
    ep.sn_controle_especial,
    ep.sn_antimicrobiano AS antibiotico,
    ep.sn_termolabil,
    ep.sn_refrigerado,
    ep.sn_psicotropico,
    ep.cd_grupo_farmaco,
    gfarm.ds_grupo_farmaco,

    -- == POSOLOGIA PRESCRITA ==
    it.qt_dose,
    it.cd_unidade,
    uni.ds_unidade,
    it.qt_dose_diaria,
    it.qt_duracao_tratamento,
    it.cd_frequencia,
    tf.ds_tip_fre,
    tf.qt_horas AS intervalo_horas,
    tf.qt_vezes_dia,

    -- == VIA DE APLICACAO ==
    it.cd_via_aplicacao,
    via.ds_via_aplicacao,
    via.ds_sigla AS sigla_via,
    via.tp_via,

    -- == INFUSAO (BOMBA) ==
    it.qt_velocidade_infusao,
    it.cd_unidade_velocidade,
    it.qt_tempo_infusao,
    it.cd_unidade_tempo,

    -- == DILUENTE / RECONSTITUICAO ==
    it.cd_produto_diluente,
    dil.ds_produto AS nome_diluente,
    it.qt_volume_diluente,
    it.cd_unidade_diluente,

    -- == TIPO / SITUACAO DO ITEM ==
    it.tp_situacao,
    it.sn_urgente,
    it.sn_se_necessario,
    it.sn_acm,
    it.sn_bomba_infusao,
    it.sn_uso_continuo,
    it.sn_apos_alta,
    it.sn_nao_padronizado,

    -- == PERIODO ==
    it.dh_inicio_administracao,
    it.dh_fim_administracao,
    it.qt_dias_tratamento,

    -- == SUSPENSAO ==
    it.sn_suspenso,
    it.dh_suspensao,
    it.cd_usuario_suspensao,
    usu_susp.nm_usuario AS nm_usuario_suspensao,
    it.cd_motivo_suspensao,
    mot_susp.ds_motivo AS ds_motivo_suspensao,

    -- == SUBSTITUICAO ==
    it.sn_substituido,
    it.cd_item_prescricao_subst AS cd_item_substituto,
    it.cd_motivo_substituicao,

    -- == OBSERVACOES ==
    it.ds_observacao AS observacao_item,
    it.ds_orientacao_aplicacao,
    it.ds_justificativa,

    -- == INTERACAO MEDICAMENTOSA ==
    it.sn_interacao_medicamentosa,
    it.ds_interacao,

    -- == AJUSTE RENAL/HEPATICO ==
    it.sn_ajuste_funcao_renal,
    it.sn_ajuste_funcao_hepatica,

    -- =====================================================================================
    -- == ALERGIA DO PACIENTE ==
    -- =====================================================================================
    alergia.tem_alergia,
    alergia.alergias_cadastradas,
    alergia.cd_produtos_alergia,

    -- =====================================================================================
    -- == COMPONENTES (SE SOLUCAO/MISTURA) ==
    -- =====================================================================================
    comp_agg.componentes,
    comp_agg.total_componentes,

    -- =====================================================================================
    -- == JUSTIFICATIVA USO ANTIMICROBIANO ==
    -- =====================================================================================
    just_atb.cd_justificativa,
    just_atb.ds_diagnostico_infeccao,
    just_atb.ds_sitio_infeccao,
    just_atb.tp_uso AS tipo_uso_antimicrobiano,
    just_atb.dt_inicio_tratamento AS dt_inicio_atb,
    just_atb.dt_fim_tratamento AS dt_fim_atb,
    just_atb.ds_cultura,
    just_atb.ds_antibiograma,

    -- =====================================================================================
    -- == APRAZAMENTO ==
    -- =====================================================================================
    hr_agg.total_horarios,
    hr_agg.horarios_aprazados,
    hr_agg.primeiro_horario,
    hr_agg.ultimo_horario,
    hr_agg.horarios_ativos,
    hr_agg.horarios_cancelados,
    hr_agg.dh_aprazamento,
    hr_agg.cd_usuario_aprazamento,
    hr_agg.nm_usuario_aprazamento,

    -- =====================================================================================
    -- == SOLICITACAO A FARMACIA ==
    -- =====================================================================================
    sol_agg.cd_solsai_pro,
    sol_agg.hr_solsai_pro AS dh_solicitacao,
    sol_agg.tp_situacao_solicitacao,
    sol_agg.tp_solsai_pro,
    sol_agg.sn_urgente AS sn_solicitacao_urgente,
    sol_agg.cd_estoque_destino,
    sol_agg.ds_estoque_destino,
    sol_agg.cd_setor_solicitante,
    sol_agg.nm_setor_solicitante,
    sol_agg.cd_usuario_solicitante,
    sol_agg.nm_usuario_solicitante,
    sol_agg.qt_solicitado,
    sol_agg.qt_atendida,
    sol_agg.qt_devolvida,
    sol_agg.vl_unitario_solicitado,
    sol_agg.vl_total_solicitado,
    sol_agg.ds_observacao_solicitacao,

    -- =====================================================================================
    -- == DISPENSACAO (FARMACIA) ==
    -- =====================================================================================
    disp_agg.cd_mvto_estoque,
    disp_agg.hr_mvto_estoque AS dh_dispensacao,
    disp_agg.tp_mvto_estoque,
    disp_agg.cd_estoque_origem,
    disp_agg.ds_estoque_origem,
    disp_agg.cd_usuario_dispensacao,
    disp_agg.nm_usuario_dispensacao,
    disp_agg.qt_dispensada,
    disp_agg.vl_unitario_dispensado,
    disp_agg.vl_total_dispensado,
    disp_agg.sn_conferido,
    disp_agg.cd_usuario_conferencia,
    disp_agg.nm_usuario_conferencia,
    disp_agg.dh_conferencia,

    -- == LOTE E VALIDADE ==
    disp_agg.cd_lote,
    disp_agg.dt_validade_lote,
    disp_agg.cd_barra_lote,
    disp_agg.nr_serie,
    disp_agg.cd_localizacao,
    disp_agg.ds_localizacao,

    -- == SALDO ESTOQUE ==
    disp_agg.qt_saldo_estoque,
    disp_agg.qt_saldo_lote,

    -- =====================================================================================
    -- == RECEBIMENTO (ENFERMAGEM) ==
    -- =====================================================================================
    disp_agg.dt_entrega,
    disp_agg.hr_entrega,
    disp_agg.nm_recebido,
    disp_agg.cd_usuario_recebe,
    disp_agg.nm_usuario_recebe,

    -- =====================================================================================
    -- == CHECAGEM / ADMINISTRACAO ==
    -- =====================================================================================
    chk_agg.total_checagens,
    chk_agg.total_administrado,
    chk_agg.total_nao_administrado,
    chk_agg.total_parcial,
    chk_agg.checagens_realizadas,
    chk_agg.primeira_checagem,
    chk_agg.ultima_checagem,
    chk_agg.motivos_nao_administracao,
    chk_agg.observacoes_checagem,
    chk_agg.vias_utilizadas,
    chk_agg.quantidades_administradas,

    -- =====================================================================================
    -- == DUPLA CHECAGEM (MAV) ==
    -- =====================================================================================
    dc_agg.dupla_checagem_realizada,
    dc_agg.total_duplas_checagens,
    dc_agg.duplas_checagens_pendentes,
    dc_agg.detalhes_dupla_checagem,
    dc_agg.usuarios_dupla_checagem,

    -- =====================================================================================
    -- == DEVOLUCAO ==
    -- =====================================================================================
    dev_agg.cd_mvto_devolucao,
    dev_agg.dh_devolucao,
    dev_agg.qt_devolvida,
    dev_agg.vl_devolvido,
    dev_agg.cd_usuario_devolucao,
    dev_agg.nm_usuario_devolucao,
    dev_agg.cd_motivo_devolucao,
    dev_agg.ds_motivo_devolucao,
    dev_agg.cd_lote_devolvido,

    -- =====================================================================================
    -- == ORIENTACAO FARMACEUTICA ==
    -- =====================================================================================
    orient_agg.cd_orientacao,
    orient_agg.dh_orientacao,
    orient_agg.ds_orientacao,
    orient_agg.cd_farmaceutico,
    orient_agg.nm_farmaceutico,
    orient_agg.tp_orientacao,

    -- =====================================================================================
    -- == COBRANCA / FATURAMENTO ==
    -- =====================================================================================
    cob_agg.cd_lancamento,
    cob_agg.dt_lancamento,
    cob_agg.qt_lancada,
    cob_agg.vl_unitario_cobranca,
    cob_agg.vl_total_cobranca,
    cob_agg.sn_cobrado,
    cob_agg.cd_pro_fat AS codigo_faturamento_lancado,
    cob_agg.cd_gru_fat AS grupo_faturamento,
    cob_agg.cd_conta,

    -- =====================================================================================
    -- == STATUS CONSOLIDADO ==
    -- =====================================================================================
    CASE
        WHEN NVL(it.sn_suspenso, 0) = 1 THEN '00_SUSPENSO'
        WHEN sol_agg.cd_solsai_pro IS NULL THEN '01_SEM_SOLICITACAO'
        WHEN sol_agg.tp_situacao_solicitacao = 'C' THEN '02_CANCELADA'
        WHEN sol_agg.tp_situacao_solicitacao = 'P' THEN '03_PENDENTE_FARMACIA'
        WHEN sol_agg.tp_situacao_solicitacao = 'S' THEN '04_SEPARADA'
        WHEN disp_agg.dh_dispensacao IS NULL THEN '05_AGUARDANDO_DISPENSACAO'
        WHEN disp_agg.dt_entrega IS NULL THEN '06_DISPENSADO_NAO_RECEBIDO'
        WHEN NVL(chk_agg.total_checagens, 0) = 0 THEN '07_RECEBIDO_NAO_CHECADO'
        WHEN NVL(ep.sn_alta_vigilancia, 'N') = 'S' AND NVL(dc_agg.dupla_checagem_realizada, 'NAO') = 'NAO' THEN '08_AGUARDANDO_DUPLA_CHECAGEM'
        WHEN NVL(chk_agg.total_checagens, 0) < NVL(hr_agg.total_horarios, 0) THEN '09_PARCIALMENTE_CHECADO'
        ELSE '10_COMPLETO'
    END AS status_consolidado

FROM mvcpoe.prescricao presc

-- =====================================================================================
-- == JOINS PRINCIPAIS ==
-- =====================================================================================
INNER JOIN dbamv.atendime a ON presc.cd_atendimento = a.cd_atendimento
LEFT JOIN dbamv.multi_empresas emp ON a.cd_multi_empresa = emp.cd_multi_empresa
LEFT JOIN dbamv.convenio conv ON a.cd_convenio = conv.cd_convenio
LEFT JOIN dbamv.con_pla pla ON a.cd_convenio = pla.cd_convenio AND a.cd_con_pla = pla.cd_con_pla
LEFT JOIN dbamv.cid cid ON a.cd_cid = cid.cd_cid
LEFT JOIN dbamv.ori_ate ori ON a.cd_ori_ate = ori.cd_ori_ate
LEFT JOIN dbamv.mot_alt mot_alta ON a.cd_mot_alt = mot_alta.cd_mot_alt

-- == PACIENTE ==
INNER JOIN dbamv.paciente pac ON a.cd_paciente = pac.cd_paciente

-- == LOCALIZACAO ==
LEFT JOIN dbamv.leito lei ON a.cd_leito = lei.cd_leito
LEFT JOIN dbamv.unid_int ui ON lei.cd_unid_int = ui.cd_unid_int
LEFT JOIN dbamv.setor setor ON ui.cd_setor = setor.cd_setor

-- == PRESCRITOR ==
LEFT JOIN dbamv.prestador prest ON presc.cd_prestador = prest.cd_prestador
LEFT JOIN dbamv.especialid esp ON prest.cd_especialid = esp.cd_especialid
LEFT JOIN dbamv.cbos cbos ON prest.cd_cbos = cbos.cd_cbos

-- == ITEM PRESCRICAO ==
INNER JOIN mvcpoe.item_prescricao it ON presc.cd_prescricao = it.cd_prescricao

-- == PRODUTO / MEDICAMENTO ==
INNER JOIN dbamv.produto prod ON it.cd_produto = prod.cd_produto
LEFT JOIN dbamv.especie espec ON prod.cd_especie = espec.cd_especie
LEFT JOIN dbamv.classe classe ON prod.cd_classe = classe.cd_classe
LEFT JOIN dbamv.sub_classe sub ON prod.cd_sub_classe = sub.cd_sub_classe
LEFT JOIN dbamv.dcb dcb ON prod.cd_dcb = dcb.cd_dcb
LEFT JOIN dbamv.terceiro lab ON prod.cd_laboratorio = lab.cd_terceiro

-- == EMPRESA PRODUTO ==
LEFT JOIN dbamv.empresa_produto ep ON ep.cd_produto = it.cd_produto AND ep.cd_multi_empresa = a.cd_multi_empresa
LEFT JOIN dbamv.grupo_farmaco gfarm ON ep.cd_grupo_farmaco = gfarm.cd_grupo_farmaco

-- == FREQUENCIA ==
LEFT JOIN dbamv.tip_fre tf ON it.cd_frequencia = tf.cd_tip_fre

-- == VIA DE APLICACAO ==
LEFT JOIN dbamv.via_aplicacao via ON it.cd_via_aplicacao = via.cd_via_aplicacao

-- == UNIDADE DE MEDIDA ==
LEFT JOIN dbamv.uni_pro uni ON it.cd_unidade = uni.cd_uni_pro

-- == DILUENTE ==
LEFT JOIN dbamv.produto dil ON it.cd_produto_diluente = dil.cd_produto

-- == USUARIO SUSPENSAO ==
LEFT JOIN dbasgu.usuarios usu_susp ON it.cd_usuario_suspensao = usu_susp.cd_usuario

-- == MOTIVO SUSPENSAO ==
LEFT JOIN dbamv.mot_suspensao mot_susp ON it.cd_motivo_suspensao = mot_susp.cd_motivo

-- =====================================================================================
-- == ALERGIA DO PACIENTE ==
-- =====================================================================================
LEFT JOIN (
    SELECT
        al.cd_paciente,
        'SIM' AS tem_alergia,
        LISTAGG(prod_al.ds_produto, ' | ') WITHIN GROUP (ORDER BY prod_al.ds_produto) AS alergias_cadastradas,
        LISTAGG(al.cd_produto, ', ') WITHIN GROUP (ORDER BY al.cd_produto) AS cd_produtos_alergia
    FROM dbamv.alergia_paciente al
    LEFT JOIN dbamv.produto prod_al ON al.cd_produto = prod_al.cd_produto
    WHERE NVL(al.sn_ativo, 'S') = 'S'
    GROUP BY al.cd_paciente
) alergia ON alergia.cd_paciente = pac.cd_paciente

-- =====================================================================================
-- == COMPONENTES (SOLUCAO/MISTURA) ==
-- =====================================================================================
LEFT JOIN (
    SELECT
        comp.cd_item_prescricao,
        LISTAGG(
            prod_comp.ds_produto || ' (' || comp.qt_dose || ' ' || uni_comp.ds_unidade || ')',
            ' + '
        ) WITHIN GROUP (ORDER BY comp.nr_sequencia) AS componentes,
        COUNT(*) AS total_componentes
    FROM mvcpoe.componente_item_prescricao comp
    INNER JOIN dbamv.produto prod_comp ON comp.cd_produto = prod_comp.cd_produto
    LEFT JOIN dbamv.uni_pro uni_comp ON comp.cd_unidade = uni_comp.cd_uni_pro
    GROUP BY comp.cd_item_prescricao
) comp_agg ON comp_agg.cd_item_prescricao = it.cd_item_prescricao

-- =====================================================================================
-- == JUSTIFICATIVA ANTIMICROBIANO ==
-- =====================================================================================
LEFT JOIN (
    SELECT
        just.cd_item_prescricao,
        just.cd_justificativa,
        just.ds_diagnostico_infeccao,
        just.ds_sitio_infeccao,
        just.tp_uso,
        just.dt_inicio_tratamento,
        just.dt_fim_tratamento,
        just.ds_cultura,
        just.ds_antibiograma
    FROM mvcpoe.justificativa_antimicrobiano just
) just_atb ON just_atb.cd_item_prescricao = it.cd_item_prescricao

-- =====================================================================================
-- == APRAZAMENTO (AGREGADO) ==
-- =====================================================================================
LEFT JOIN (
    SELECT
        hr.cd_item_prescricao,
        COUNT(*) AS total_horarios,
        LISTAGG(
            TO_CHAR(hr.dh_medicacao, 'DD/MM/YYYY HH24:MI') ||
            CASE WHEN NVL(hr.sn_cancelado, 0) = 1 THEN ' [CANC]' ELSE '' END,
            ' | '
        ) WITHIN GROUP (ORDER BY hr.dh_medicacao) AS horarios_aprazados,
        MIN(hr.dh_medicacao) AS primeiro_horario,
        MAX(hr.dh_medicacao) AS ultimo_horario,
        SUM(CASE WHEN NVL(hr.sn_cancelado, 0) = 0 THEN 1 ELSE 0 END) AS horarios_ativos,
        SUM(CASE WHEN NVL(hr.sn_cancelado, 0) = 1 THEN 1 ELSE 0 END) AS horarios_cancelados,
        MAX(hr.dh_aprazamento) AS dh_aprazamento,
        MAX(hr.cd_usuario) AS cd_usuario_aprazamento,
        MAX(usu.nm_usuario) AS nm_usuario_aprazamento
    FROM mvcpoe.horario_item_prescricao hr
    LEFT JOIN dbasgu.usuarios usu ON hr.cd_usuario = usu.cd_usuario
    GROUP BY hr.cd_item_prescricao
) hr_agg ON hr_agg.cd_item_prescricao = it.cd_item_prescricao

-- =====================================================================================
-- == SOLICITACAO (AGREGADO) ==
-- =====================================================================================
LEFT JOIN (
    SELECT
        itsol.cd_itpre_med,
        MAX(sol.cd_solsai_pro) AS cd_solsai_pro,
        MAX(sol.hr_solsai_pro) AS hr_solsai_pro,
        MAX(sol.tp_situacao) AS tp_situacao_solicitacao,
        MAX(sol.tp_solsai_pro) AS tp_solsai_pro,
        MAX(sol.sn_urgente) AS sn_urgente,
        MAX(sol.cd_estoque) AS cd_estoque_destino,
        MAX(est.ds_estoque) AS ds_estoque_destino,
        MAX(sol.cd_setor) AS cd_setor_solicitante,
        MAX(set_sol.nm_setor) AS nm_setor_solicitante,
        MAX(sol.cd_usuario) AS cd_usuario_solicitante,
        MAX(usu.nm_usuario) AS nm_usuario_solicitante,
        SUM(NVL(itsol.qt_solicitado, 0)) AS qt_solicitado,
        SUM(NVL(itsol.qt_atendida, 0)) AS qt_atendida,
        SUM(NVL(itsol.qt_devolvida, 0)) AS qt_devolvida,
        AVG(NVL(itsol.vl_unitario, 0)) AS vl_unitario_solicitado,
        SUM(NVL(itsol.qt_solicitado, 0) * NVL(itsol.vl_unitario, 0)) AS vl_total_solicitado,
        MAX(sol.ds_observacao) AS ds_observacao_solicitacao
    FROM dbamv.itsolsai_pro itsol
    INNER JOIN dbamv.solsai_pro sol ON sol.cd_solsai_pro = itsol.cd_solsai_pro
    LEFT JOIN dbasgu.usuarios usu ON sol.cd_usuario = usu.cd_usuario
    LEFT JOIN dbamv.setor set_sol ON sol.cd_setor = set_sol.cd_setor
    LEFT JOIN dbamv.estoque est ON sol.cd_estoque = est.cd_estoque
    GROUP BY itsol.cd_itpre_med
) sol_agg ON sol_agg.cd_itpre_med = it.cd_item_prescricao

-- =====================================================================================
-- == DISPENSACAO / RECEBIMENTO (AGREGADO) ==
-- =====================================================================================
LEFT JOIN (
    SELECT
        itsol.cd_itpre_med,
        MAX(mv.cd_mvto_estoque) AS cd_mvto_estoque,
        MAX(mv.hr_mvto_estoque) AS hr_mvto_estoque,
        MAX(mv.tp_mvto_estoque) AS tp_mvto_estoque,
        MAX(mv.cd_estoque) AS cd_estoque_origem,
        MAX(est.ds_estoque) AS ds_estoque_origem,
        MAX(mv.cd_usuario) AS cd_usuario_dispensacao,
        MAX(usu_disp.nm_usuario) AS nm_usuario_dispensacao,
        SUM(NVL(itmv.qt_movimentacao, 0)) AS qt_dispensada,
        AVG(NVL(itmv.vl_unitario, 0)) AS vl_unitario_dispensado,
        SUM(NVL(itmv.qt_movimentacao, 0) * NVL(itmv.vl_unitario, 0)) AS vl_total_dispensado,
        MAX(mv.sn_conferido) AS sn_conferido,
        MAX(mv.cd_usuario_conferencia) AS cd_usuario_conferencia,
        MAX(usu_conf.nm_usuario) AS nm_usuario_conferencia,
        MAX(mv.dh_conferencia) AS dh_conferencia,
        -- Lote
        MAX(itmv.cd_lote) AS cd_lote,
        MAX(itmv.dt_validade) AS dt_validade_lote,
        MAX(lot.cd_barra) AS cd_barra_lote,
        MAX(itmv.nr_serie) AS nr_serie,
        MAX(itmv.cd_localizacao) AS cd_localizacao,
        MAX(loc.ds_localizacao) AS ds_localizacao,
        -- Saldo
        MAX(est_prod.qt_estoque_atual) AS qt_saldo_estoque,
        MAX(lot.qt_saldo) AS qt_saldo_lote,
        -- Recebimento
        MAX(mv.dt_entrega) AS dt_entrega,
        MAX(mv.hr_entrega) AS hr_entrega,
        MAX(mv.nm_recebido) AS nm_recebido,
        MAX(mv.nm_usuario_recebe) AS cd_usuario_recebe,
        MAX(usu_rec.nm_usuario) AS nm_usuario_recebe
    FROM dbamv.itsolsai_pro itsol
    LEFT JOIN dbamv.itmvto_estoque itmv ON itmv.cd_itsolsai_pro = itsol.cd_itsolsai_pro
    LEFT JOIN dbamv.mvto_estoque mv ON mv.cd_mvto_estoque = itmv.cd_mvto_estoque AND mv.tp_mvto_estoque = 'P'
    LEFT JOIN dbamv.estoque est ON mv.cd_estoque = est.cd_estoque
    LEFT JOIN dbamv.lote lot ON itmv.cd_lote = lot.cd_lote AND itmv.cd_produto = lot.cd_produto
    LEFT JOIN dbamv.localizacao loc ON itmv.cd_localizacao = loc.cd_localizacao
    LEFT JOIN dbamv.estoque_produto est_prod ON mv.cd_estoque = est_prod.cd_estoque AND itmv.cd_produto = est_prod.cd_produto
    LEFT JOIN dbasgu.usuarios usu_disp ON mv.cd_usuario = usu_disp.cd_usuario
    LEFT JOIN dbasgu.usuarios usu_conf ON mv.cd_usuario_conferencia = usu_conf.cd_usuario
    LEFT JOIN dbasgu.usuarios usu_rec ON mv.nm_usuario_recebe = usu_rec.cd_usuario
    GROUP BY itsol.cd_itpre_med
) disp_agg ON disp_agg.cd_itpre_med = it.cd_item_prescricao

-- =====================================================================================
-- == CHECAGEM (AGREGADO) ==
-- =====================================================================================
LEFT JOIN (
    SELECT
        chk.cd_item_prescricao,
        COUNT(*) AS total_checagens,
        SUM(CASE WHEN NVL(chk.tp_checagem, 'A') = 'A' THEN 1 ELSE 0 END) AS total_administrado,
        SUM(CASE WHEN NVL(chk.tp_checagem, 'A') = 'N' THEN 1 ELSE 0 END) AS total_nao_administrado,
        SUM(CASE WHEN NVL(chk.tp_checagem, 'A') = 'P' THEN 1 ELSE 0 END) AS total_parcial,
        LISTAGG(
            TO_CHAR(chk.dh_medicacao, 'DD/MM/YYYY HH24:MI') || ' -> ' ||
            TO_CHAR(chk.dh_checagem, 'DD/MM/YYYY HH24:MI') || ' [' || usu.nm_usuario || ']' ||
            CASE chk.tp_checagem WHEN 'N' THEN ' NAO_ADM' WHEN 'P' THEN ' PARCIAL' ELSE '' END,
            ' | '
        ) WITHIN GROUP (ORDER BY chk.dh_medicacao) AS checagens_realizadas,
        MIN(chk.dh_checagem) AS primeira_checagem,
        MAX(chk.dh_checagem) AS ultima_checagem,
        LISTAGG(DISTINCT mot.ds_motivo, ', ') WITHIN GROUP (ORDER BY mot.ds_motivo) AS motivos_nao_administracao,
        LISTAGG(DISTINCT chk.ds_observacao, ' | ') WITHIN GROUP (ORDER BY chk.dh_medicacao) AS observacoes_checagem,
        LISTAGG(DISTINCT via_chk.ds_via_aplicacao, ', ') WITHIN GROUP (ORDER BY via_chk.ds_via_aplicacao) AS vias_utilizadas,
        LISTAGG(chk.qt_administrada, ', ') WITHIN GROUP (ORDER BY chk.dh_medicacao) AS quantidades_administradas
    FROM mvcpoe.horario_consumo_item_prescric chk
    LEFT JOIN dbasgu.usuarios usu ON usu.cd_usuario = chk.cd_usuario
    LEFT JOIN dbamv.mot_nao_checagem mot ON chk.cd_motivo_nao_checagem = mot.cd_motivo
    LEFT JOIN dbamv.via_aplicacao via_chk ON chk.cd_via_aplicacao = via_chk.cd_via_aplicacao
    GROUP BY chk.cd_item_prescricao
) chk_agg ON chk_agg.cd_item_prescricao = it.cd_item_prescricao

-- =====================================================================================
-- == DUPLA CHECAGEM MAV (AGREGADO) ==
-- =====================================================================================
LEFT JOIN (
    SELECT
        dc.cd_itpre_med,
        'SIM' AS dupla_checagem_realizada,
        COUNT(*) AS total_duplas_checagens,
        SUM(CASE WHEN dc.dh_checagem IS NULL THEN 1 ELSE 0 END) AS duplas_checagens_pendentes,
        LISTAGG(
            TO_CHAR(dc.dh_medicacao, 'DD/MM/YYYY HH24:MI') || ' -> ' ||
            NVL(TO_CHAR(dc.dh_checagem, 'DD/MM/YYYY HH24:MI'), 'PENDENTE') ||
            CASE WHEN NVL(dc.sn_confere, 'S') = 'N' THEN ' [DIVERGENCIA]' ELSE '' END,
            ' | '
        ) WITHIN GROUP (ORDER BY dc.dh_medicacao) AS detalhes_dupla_checagem,
        LISTAGG(DISTINCT usu.nm_usuario, ', ') WITHIN GROUP (ORDER BY usu.nm_usuario) AS usuarios_dupla_checagem
    FROM dbamv.hritpre_cons_dupla_checagem dc
    LEFT JOIN dbasgu.usuarios usu ON usu.cd_usuario = dc.cd_usuario
    GROUP BY dc.cd_itpre_med
) dc_agg ON dc_agg.cd_itpre_med = it.cd_item_prescricao

-- =====================================================================================
-- == DEVOLUCAO (AGREGADO) ==
-- =====================================================================================
LEFT JOIN (
    SELECT
        itsol.cd_itpre_med,
        MAX(mv.cd_mvto_estoque) AS cd_mvto_devolucao,
        MAX(mv.hr_mvto_estoque) AS dh_devolucao,
        SUM(NVL(itmv.qt_movimentacao, 0)) AS qt_devolvida,
        SUM(NVL(itmv.qt_movimentacao, 0) * NVL(itmv.vl_unitario, 0)) AS vl_devolvido,
        MAX(mv.cd_usuario) AS cd_usuario_devolucao,
        MAX(usu.nm_usuario) AS nm_usuario_devolucao,
        MAX(mv.cd_motivo_devolucao) AS cd_motivo_devolucao,
        MAX(mot.ds_motivo) AS ds_motivo_devolucao,
        MAX(itmv.cd_lote) AS cd_lote_devolvido
    FROM dbamv.itsolsai_pro itsol
    INNER JOIN dbamv.itmvto_estoque itmv ON itmv.cd_itsolsai_pro = itsol.cd_itsolsai_pro
    INNER JOIN dbamv.mvto_estoque mv ON mv.cd_mvto_estoque = itmv.cd_mvto_estoque AND mv.tp_mvto_estoque = 'D'
    LEFT JOIN dbasgu.usuarios usu ON mv.cd_usuario = usu.cd_usuario
    LEFT JOIN dbamv.mot_devolucao mot ON mv.cd_motivo_devolucao = mot.cd_motivo
    GROUP BY itsol.cd_itpre_med
) dev_agg ON dev_agg.cd_itpre_med = it.cd_item_prescricao

-- =====================================================================================
-- == ORIENTACAO FARMACEUTICA ==
-- =====================================================================================
LEFT JOIN (
    SELECT
        orf.cd_item_prescricao,
        MAX(orf.cd_orientacao) AS cd_orientacao,
        MAX(orf.dh_orientacao) AS dh_orientacao,
        MAX(orf.ds_orientacao) AS ds_orientacao,
        MAX(orf.cd_farmaceutico) AS cd_farmaceutico,
        MAX(prest_farm.nm_prestador) AS nm_farmaceutico,
        MAX(orf.tp_orientacao) AS tp_orientacao
    FROM mvcpoe.orientacao_farmaceutica orf
    LEFT JOIN dbamv.prestador prest_farm ON orf.cd_farmaceutico = prest_farm.cd_prestador
    GROUP BY orf.cd_item_prescricao
) orient_agg ON orient_agg.cd_item_prescricao = it.cd_item_prescricao

-- =====================================================================================
-- == COBRANCA / FATURAMENTO ==
-- =====================================================================================
LEFT JOIN (
    SELECT
        reg.cd_itpre_med,
        MAX(reg.cd_reg_fat) AS cd_lancamento,
        MAX(reg.dt_registro) AS dt_lancamento,
        SUM(NVL(reg.qt_lancamento, 0)) AS qt_lancada,
        AVG(NVL(reg.vl_unitario, 0)) AS vl_unitario_cobranca,
        SUM(NVL(reg.qt_lancamento, 0) * NVL(reg.vl_unitario, 0)) AS vl_total_cobranca,
        MAX(reg.sn_pertence_conta) AS sn_cobrado,
        MAX(reg.cd_pro_fat) AS cd_pro_fat,
        MAX(reg.cd_gru_fat) AS cd_gru_fat,
        MAX(reg.cd_reg_amb) AS cd_conta
    FROM dbamv.reg_fat reg
    WHERE reg.cd_itpre_med IS NOT NULL
    GROUP BY reg.cd_itpre_med
) cob_agg ON cob_agg.cd_itpre_med = it.cd_item_prescricao

-- =====================================================================================
-- == FILTROS ==
-- =====================================================================================
WHERE presc.cd_prescricao = #PRESCRICAO#
  AND NVL(it.sn_suspenso, 0) = 0  -- Remover para ver itens suspensos tambem

-- =====================================================================================
-- == ORDENACAO ==
-- =====================================================================================
ORDER BY
    it.nr_sequencia,
    prod.ds_produto
