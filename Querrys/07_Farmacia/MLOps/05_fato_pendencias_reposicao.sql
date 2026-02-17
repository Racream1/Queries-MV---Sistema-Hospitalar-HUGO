-- ============================================================================
-- FATO: PENDENCIAS DE REPOSICAO (SNAPSHOT)
-- ============================================================================
-- Rodar diariamente. Mostra o que esta PENDENTE de chegar ao estoque:
--   1. Ordens de compra abertas (ORD_COM + ITORD_PRO nao totalmente recebidos)
--   2. Solicitacoes internas pendentes (SOLSAI_PRO com TP_SITUACAO = P ou C)
--
-- Feature: "tem reposicao a caminho?" → reduz risco de ruptura
-- Hospital: HUGO (CD_MULTI_EMPRESA = 40)
-- ============================================================================

-- PARTE 1: Ordens de compra pendentes (compras externas)
SELECT
    'ORDEM_COMPRA'                         AS TP_PENDENCIA,
    TRUNC(SYSDATE)                         AS DT_SNAPSHOT,
    ioc.CD_PRODUTO,
    prod.DS_PRODUTO,
    esp.CD_ESPECIE,
    oc.CD_ORD_COM,
    oc.CD_FORNECEDOR,
    forn.NM_FORNECEDOR,
    oc.CD_ESTOQUE,
    oc.DT_ORD_COM                          AS DT_PEDIDO,
    oc.DT_PREV_ENTREGA                     AS DT_PREVISTA,
    TRUNC(SYSDATE) - oc.DT_ORD_COM        AS DIAS_AGUARDANDO,
    CASE WHEN oc.DT_PREV_ENTREGA < TRUNC(SYSDATE) THEN 1 ELSE 0 END AS SN_ATRASADO,
    ioc.QT_COMPRADA,
    NVL(ioc.QT_RECEBIDA, 0)               AS QT_RECEBIDA,
    ioc.QT_COMPRADA - NVL(ioc.QT_RECEBIDA, 0) - NVL(ioc.QT_CANCELADA, 0) AS QT_PENDENTE,
    NULL                                   AS CD_SOLSAI_PRO,
    NULL                                   AS TP_SOLSAI_PRO,
    NULL                                   AS CD_SETOR,
    NULL                                   AS CD_UNID_INT
FROM DBAMV.ORD_COM oc
    INNER JOIN DBAMV.ITORD_PRO ioc    ON ioc.CD_ORD_COM = oc.CD_ORD_COM
    INNER JOIN DBAMV.PRODUTO prod     ON prod.CD_PRODUTO = ioc.CD_PRODUTO
    INNER JOIN DBAMV.ESPECIE esp      ON esp.CD_ESPECIE = prod.CD_ESPECIE
    LEFT JOIN DBAMV.FORNECEDOR forn   ON forn.CD_FORNECEDOR = oc.CD_FORNECEDOR
    INNER JOIN DBAMV.ESTOQUE estq     ON estq.CD_ESTOQUE = oc.CD_ESTOQUE
WHERE estq.CD_MULTI_EMPRESA = 40
  AND esp.CD_ESPECIE IN (1, 5, 12, 17, 79, 81, 82)
  AND oc.DT_CANCELAMENTO IS NULL
  AND ioc.DT_CANCEL IS NULL
  -- pendente = nao recebeu tudo
  AND (ioc.QT_COMPRADA - NVL(ioc.QT_RECEBIDA, 0) - NVL(ioc.QT_CANCELADA, 0)) > 0

UNION ALL

-- PARTE 2: Solicitacoes internas pendentes (farmacia → setor/estoque)
SELECT
    'SOLICITACAO_INTERNA'                  AS TP_PENDENCIA,
    TRUNC(SYSDATE)                         AS DT_SNAPSHOT,
    isp.CD_PRODUTO,
    prod.DS_PRODUTO,
    esp.CD_ESPECIE,
    NULL                                   AS CD_ORD_COM,
    NULL                                   AS CD_FORNECEDOR,
    NULL                                   AS NM_FORNECEDOR,
    sol.CD_ESTOQUE,
    sol.DT_SOLSAI_PRO                      AS DT_PEDIDO,
    NULL                                   AS DT_PREVISTA,
    TRUNC(SYSDATE) - sol.DT_SOLSAI_PRO    AS DIAS_AGUARDANDO,
    NULL                                   AS SN_ATRASADO,
    isp.QT_SOLICITADO                      AS QT_COMPRADA,
    NVL(isp.QT_ATENDIDA, 0)               AS QT_RECEBIDA,
    isp.QT_SOLICITADO - NVL(isp.QT_ATENDIDA, 0) AS QT_PENDENTE,
    sol.CD_SOLSAI_PRO,
    sol.TP_SOLSAI_PRO,
    sol.CD_SETOR,
    sol.CD_UNID_INT
FROM DBAMV.SOLSAI_PRO sol
    INNER JOIN DBAMV.ITSOLSAI_PRO isp ON isp.CD_SOLSAI_PRO = sol.CD_SOLSAI_PRO
    INNER JOIN DBAMV.PRODUTO prod     ON prod.CD_PRODUTO = isp.CD_PRODUTO
    INNER JOIN DBAMV.ESPECIE esp      ON esp.CD_ESPECIE = prod.CD_ESPECIE
    INNER JOIN DBAMV.ESTOQUE estq     ON estq.CD_ESTOQUE = sol.CD_ESTOQUE
WHERE estq.CD_MULTI_EMPRESA = 40
  AND esp.CD_ESPECIE IN (1, 5, 12, 17, 79, 81, 82)
  AND sol.TP_SITUACAO IN ('P', 'C')  -- P=Pendente, C=Parcialmente atendido
  AND sol.DT_CANCELAMENTO IS NULL
  AND (isp.SN_ATENDIDO IS NULL OR isp.SN_ATENDIDO = 'N')
ORDER BY CD_PRODUTO, DT_PEDIDO
