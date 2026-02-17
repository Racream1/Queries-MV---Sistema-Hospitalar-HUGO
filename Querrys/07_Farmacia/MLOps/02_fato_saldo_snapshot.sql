-- ============================================================================
-- FATO: SALDO SNAPSHOT DIARIO
-- ============================================================================
-- Rodar UMA VEZ POR DIA (cron). Exportar e acumular no data lake.
-- Cada execucao = 1 foto do saldo de TODOS os produtos naquele instante.
-- O pipeline ML acumula os snapshots para ter serie temporal de saldo.
--
-- Granularidade: CD_PRODUTO (consolidado todos estoques HUGO)
-- Hospital: HUGO (CD_MULTI_EMPRESA = 40)
-- ============================================================================
SELECT
    TRUNC(SYSDATE)                        AS DT_SNAPSHOT,
    ep.CD_PRODUTO,
    prod.DS_PRODUTO,
    esp.CD_ESPECIE,
    esp.DS_ESPECIE,
    uni.DS_UNIDADE,
    -- saldo atual (unidade consumo)
    SUM(ep.QT_ESTOQUE_ATUAL)
        / NVL(NULLIF(uni.VL_FATOR, 0), 1) AS SALDO_ATUAL,
    -- parametros de estoque (soma de todos estoques)
    SUM(NVL(ep.QT_ESTOQUE_MINIMO, 0))
        / NVL(NULLIF(uni.VL_FATOR, 0), 1) AS ESTOQUE_MINIMO,
    SUM(NVL(ep.QT_ESTOQUE_MAXIMO, 0))
        / NVL(NULLIF(uni.VL_FATOR, 0), 1) AS ESTOQUE_MAXIMO,
    SUM(NVL(ep.QT_PONTO_DE_PEDIDO, 0))
        / NVL(NULLIF(uni.VL_FATOR, 0), 1) AS PONTO_PEDIDO,
    SUM(NVL(ep.QT_CONSUMO_MES, 0))
        / NVL(NULLIF(uni.VL_FATOR, 0), 1) AS CONSUMO_MES_ESTIMADO,
    -- flags de alerta
    CASE WHEN SUM(ep.QT_ESTOQUE_ATUAL) <= SUM(NVL(ep.QT_ESTOQUE_MINIMO, 0))
         THEN 1 ELSE 0 END               AS SN_ABAIXO_MINIMO,
    CASE WHEN SUM(ep.QT_ESTOQUE_ATUAL) <= SUM(NVL(ep.QT_PONTO_DE_PEDIDO, 0))
         THEN 1 ELSE 0 END               AS SN_ABAIXO_PONTO_PEDIDO,
    CASE WHEN SUM(ep.QT_ESTOQUE_ATUAL) = 0
         THEN 1 ELSE 0 END               AS SN_ESTOQUE_ZERO,
    -- dias de estoque (saldo / consumo diario estimado)
    CASE WHEN SUM(NVL(ep.QT_CONSUMO_MES, 0)) > 0
         THEN ROUND(SUM(ep.QT_ESTOQUE_ATUAL) / (SUM(ep.QT_CONSUMO_MES) / 30), 1)
         ELSE NULL
    END                                   AS DIAS_ESTOQUE_ESTIMADO,
    -- classificacao ABC (pega a mais frequente)
    MAX(ep.TP_CLASSIFICACAO_ABC)          AS CLASSIFICACAO_ABC,
    -- qtd de estoques com saldo > 0
    SUM(CASE WHEN ep.QT_ESTOQUE_ATUAL > 0 THEN 1 ELSE 0 END) AS QTD_ESTOQUES_COM_SALDO,
    -- ultima movimentacao
    MAX(ep.DT_ULTIMA_MOVIMENTACAO)        AS DT_ULTIMA_MOVIMENTACAO
FROM DBAMV.EST_PRO ep
    INNER JOIN DBAMV.ESTOQUE estq ON estq.CD_ESTOQUE = ep.CD_ESTOQUE
    INNER JOIN DBAMV.PRODUTO prod ON prod.CD_PRODUTO = ep.CD_PRODUTO
    INNER JOIN DBAMV.ESPECIE esp  ON esp.CD_ESPECIE = prod.CD_ESPECIE
    LEFT JOIN DBAMV.UNI_PRO uni   ON uni.CD_PRODUTO = ep.CD_PRODUTO
                                  AND uni.TP_RELATORIOS = 'C'
                                  AND uni.SN_ATIVO = 'S'
WHERE estq.CD_MULTI_EMPRESA = 40
  AND esp.CD_ESPECIE IN (1, 5, 12, 17, 79, 81, 82)
GROUP BY ep.CD_PRODUTO, prod.DS_PRODUTO,
         esp.CD_ESPECIE, esp.DS_ESPECIE,
         uni.DS_UNIDADE, uni.VL_FATOR
ORDER BY esp.CD_ESPECIE, prod.DS_PRODUTO
