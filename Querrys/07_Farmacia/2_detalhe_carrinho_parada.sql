-- ============================================================
-- CARRINHO DE PARADA - DETALHE (MEDICAMENTOS + CHECAGEM)
-- ============================================================
-- Uma linha por checagem de cada medicamento.
-- IMPORTANTE: Carrinho de parada NAO usa aprazamento
-- (HORARIO_ITEM_PRESCRICAO). A checagem vai direto em
-- HORARIO_CONSUMO_ITEM_PRESCRIC, sem horario programado.
-- A solicitacao farmacia tambem NAO usa cd_itpre_med.
-- Recebe #PRESCRICAO# do master.
-- ============================================================

SELECT
    -- =====================================================================================
    -- == MEDICAMENTO ==
    -- =====================================================================================
    ip.CD_ITEM_PRESCRICAO,
    ip.NR_ORDEM,
    cip.DS_CONFIGURACAO_ITEM_PRESCRIC                       AS MEDICAMENTO,
    ip.QT_ITEM_PRESCRICAO                                   AS DOSE,
    fa.NM_FORMA_APLICACAO                                   AS VIA,
    freq.DS_FREQUENCIA                                      AS FREQUENCIA,
    ip.DS_ITEM_PRESCRICAO                                   AS OBSERVACAO,
    comp_agg.COMPONENTES,

    -- Situacao do item
    CASE ip.TP_SITUACAO
        WHEN 1 THEN 'SE NECESSARIO'
        WHEN 2 THEN 'NORMAL'
        WHEN 3 THEN 'ACM'
        WHEN 4 THEN 'URGENTE'
    END                                                     AS SITUACAO_ITEM,
    CASE WHEN NVL(ip.SN_URGENTE, 0) = 1 THEN 'SIM' ELSE 'NAO' END AS URGENTE,
    CASE WHEN NVL(ip.SN_SUSPENSO, 0) = 1 THEN 'SIM' ELSE 'NAO' END AS SUSPENSO,

    -- =====================================================================================
    -- == CHECAGEM (DIRETO - SEM APRAZAMENTO) ==
    -- =====================================================================================
    chk.CD_HORARIO_CONSUMO_ITEM_PRESC,
    chk.DH_MEDICACAO                                        AS DH_ADMINISTRACAO,
    chk.DH_CHECAGEM,
    usu_chk.NM_USUARIO                                     AS CHECADO_POR,
    chk.SN_SUSPENSO                                         AS NAO_ADMINISTRADO,
    chk.DS_JUSTIFICATIVA                                    AS JUSTIFICATIVA_NAO_ADM,

    -- =====================================================================================
    -- == DUPLA CHECAGEM (MAV) ==
    -- =====================================================================================
    dc.CD_HRITPRE_CONS_DUPLA_CHECG                          AS CD_DUPLA_CHECAGEM,
    usu_dc.NM_USUARIO                                       AS DUPLA_CHECAGEM_POR,

    -- =====================================================================================
    -- == STATUS ==
    -- =====================================================================================
    CASE
        WHEN NVL(ip.SN_SUSPENSO, 0) = 1 THEN 'SUSPENSO'
        WHEN chk.CD_HORARIO_CONSUMO_ITEM_PRESC IS NULL THEN 'NAO_CHECADO'
        WHEN NVL(chk.SN_SUSPENSO, 0) = 1 THEN 'NAO_ADMINISTRADO'
        ELSE 'ADMINISTRADO'
    END                                                     AS STATUS_ITEM

FROM MVCPOE.ITEM_PRESCRICAO ip

    -- Nome do medicamento/item
    INNER JOIN MVCPOE.CONFIGURACAO_ITEM_PRESCRICAO cip
        ON ip.CD_CONFIGURACAO_ITEM_PRESCRIC = cip.CD_CONFIGURACAO_ITEM_PRESCRIC

    -- Via de administracao
    LEFT JOIN MVCPOE.FORMA_APLICACAO fa
        ON ip.CD_FORMA_APLICACAO = fa.CD_FORMA_APLICACAO

    -- Frequencia
    LEFT JOIN MVCPOE.FREQUENCIA freq
        ON ip.CD_FREQUENCIA = freq.CD_FREQUENCIA

    -- Checagem DIRETO (sem passar por horario_item_prescricao)
    LEFT JOIN MVCPOE.HORARIO_CONSUMO_ITEM_PRESCRIC chk
        ON chk.CD_ITEM_PRESCRICAO = ip.CD_ITEM_PRESCRICAO
    LEFT JOIN DBASGU.USUARIOS usu_chk
        ON usu_chk.CD_USUARIO = chk.CD_USUARIO

    -- Dupla checagem (MAV)
    LEFT JOIN DBAMV.HRITPRE_CONS_DUPLA_CHECAGEM dc
        ON dc.CD_ITPRE_MED = ip.CD_ITEM_PRESCRICAO
        AND dc.DH_MEDICACAO = chk.DH_MEDICACAO
    LEFT JOIN DBASGU.USUARIOS usu_dc
        ON usu_dc.CD_USUARIO = dc.CD_USUARIO

    -- Componentes (diluentes, etc.)
    LEFT JOIN (
        SELECT comp.CD_ITEM_PRESCRICAO,
               LISTAGG(prod_c.DS_PRODUTO || ' ' || comp.QT_COMPONENTE || comp.CD_UNIDADE, ' + ')
                   WITHIN GROUP (ORDER BY comp.NR_ORDEM) AS COMPONENTES
        FROM MVCPOE.COMPONENTE_ITEM_PRESCRICAO comp
        INNER JOIN DBAMV.PRODUTO prod_c ON comp.CD_PRODUTO = prod_c.CD_PRODUTO
        GROUP BY comp.CD_ITEM_PRESCRICAO
    ) comp_agg ON comp_agg.CD_ITEM_PRESCRICAO = ip.CD_ITEM_PRESCRICAO

WHERE ip.CD_PRESCRICAO = #PRESCRICAO#

ORDER BY
    ip.NR_ORDEM,
    cip.DS_CONFIGURACAO_ITEM_PRESCRIC,
    chk.DH_MEDICACAO
