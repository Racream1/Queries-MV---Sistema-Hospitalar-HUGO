-- ============================================================
-- CARRINHO DE PARADA - DETALHE (MEDICAMENTOS + CHECAGEM)
-- ============================================================
-- Uma linha por checagem de cada medicamento.
-- Carrinho de parada NAO usa aprazamento nem dupla checagem.
-- A checagem vai direto em HORARIO_CONSUMO_ITEM_PRESCRIC.
-- Recebe #PRESCRICAO# do master.
-- Drill-out: #CD_ITEM_PRESCRICAO#, #CD_PRESCRICAO# -> 3_reposicao_carrinho_parada.sql
-- ============================================================

SELECT
    ip.CD_ITEM_PRESCRICAO,
    ip.CD_PRODUTO,
    ip.CD_PRESCRICAO,
    cip.DS_CONFIGURACAO_ITEM_PRESCRIC                       AS MEDICAMENTO,
    ip.QT_ITEM_PRESCRICAO                                   AS DOSE,
    fa.NM_FORMA_APLICACAO                                   AS VIA,

    -- Situacao do item
    CASE ip.TP_SITUACAO
        WHEN 1 THEN 'SE NECESSARIO'
        WHEN 2 THEN 'NORMAL'
        WHEN 3 THEN 'ACM'
        WHEN 4 THEN 'URGENTE'
    END                                                     AS SITUACAO_ITEM,

    -- Checagem
    chk.DH_MEDICACAO                                        AS DH_ADMINISTRACAO,
    chk.DH_CHECAGEM,
    usu_chk.NM_USUARIO                                     AS CHECADO_POR,
    chk.SN_SUSPENSO                                         AS NAO_ADMINISTRADO,
    chk.DS_JUSTIFICATIVA                                    AS JUSTIFICATIVA_NAO_ADM,

    -- Status
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

    -- Checagem DIRETO (sem aprazamento)
    LEFT JOIN MVCPOE.HORARIO_CONSUMO_ITEM_PRESCRIC chk
        ON chk.CD_ITEM_PRESCRICAO = ip.CD_ITEM_PRESCRICAO
    LEFT JOIN DBASGU.USUARIOS usu_chk
        ON usu_chk.CD_USUARIO = chk.CD_USUARIO

WHERE ip.CD_PRESCRICAO = #PRESCRICAO#

ORDER BY
    cip.DS_CONFIGURACAO_ITEM_PRESCRIC,
    chk.DH_MEDICACAO
