-- ============================================================================
-- DIMENSAO: PARAMETROS DE ESTOQUE POR PRODUTO
-- ============================================================================
-- Dados estaticos/semi-estaticos de cada produto:
--   - Thresholds (minimo, maximo, ponto de pedido)
--   - Lead time padrao cadastrado
--   - Classificacao ABC
--   - Flags (medicamento, psicotrópico, ativo)
--
-- Rodar: sob demanda (muda raramente)
-- Granularidade: CD_PRODUTO
-- Hospital: HUGO (CD_MULTI_EMPRESA = 40)
-- ============================================================================
SELECT
    prod.CD_PRODUTO,
    prod.DS_PRODUTO,
    esp.CD_ESPECIE,
    esp.DS_ESPECIE,
    uni.DS_UNIDADE                         AS UNIDADE_CONSUMO,
    uni.VL_FATOR                           AS FATOR_CONVERSAO,
    -- flags do produto
    prod.TP_ATIVO                          AS TP_ATIVO,
    prod.SN_MEDICAMENTO,
    prod.SN_PSCOTROPICO                    AS SN_CONTROLADO,
    -- lead time padrao cadastrado (dias)
    prod.VL_TEMPO_DE_REPOSICAO             AS LEAD_TIME_PADRAO_DIAS,
    -- parametros consolidados (soma de todos estoques HUGO)
    SUM(NVL(ep.QT_ESTOQUE_MINIMO, 0))
        / NVL(NULLIF(uni.VL_FATOR, 0), 1) AS ESTOQUE_MINIMO_TOTAL,
    SUM(NVL(ep.QT_ESTOQUE_MAXIMO, 0))
        / NVL(NULLIF(uni.VL_FATOR, 0), 1) AS ESTOQUE_MAXIMO_TOTAL,
    SUM(NVL(ep.QT_PONTO_DE_PEDIDO, 0))
        / NVL(NULLIF(uni.VL_FATOR, 0), 1) AS PONTO_PEDIDO_TOTAL,
    SUM(NVL(ep.QT_CONSUMO_MES, 0))
        / NVL(NULLIF(uni.VL_FATOR, 0), 1) AS CONSUMO_MES_CADASTRADO,
    -- classificacao ABC (mais frequente entre estoques)
    MAX(ep.TP_CLASSIFICACAO_ABC)           AS CLASSIFICACAO_ABC,
    -- qtd de estoques onde o produto esta cadastrado
    COUNT(ep.CD_ESTOQUE)                   AS QTD_ESTOQUES,
    -- parametros da empresa (se existir)
    emprod.QT_ESTOQUE_MINIMO               AS ESTOQUE_MINIMO_EMPRESA,
    emprod.QT_ESTOQUE_MAXIMO               AS ESTOQUE_MAXIMO_EMPRESA,
    emprod.QT_PONTO_DE_PEDIDO              AS PONTO_PEDIDO_EMPRESA,
    emprod.QT_CONSUMO_MES                  AS CONSUMO_MES_EMPRESA
FROM DBAMV.PRODUTO prod
    INNER JOIN DBAMV.ESPECIE esp  ON esp.CD_ESPECIE = prod.CD_ESPECIE
    INNER JOIN DBAMV.EST_PRO ep   ON ep.CD_PRODUTO = prod.CD_PRODUTO
    INNER JOIN DBAMV.ESTOQUE estq ON estq.CD_ESTOQUE = ep.CD_ESTOQUE
    LEFT JOIN DBAMV.UNI_PRO uni   ON uni.CD_PRODUTO = prod.CD_PRODUTO
                                  AND uni.TP_RELATORIOS = 'C'
                                  AND uni.SN_ATIVO = 'S'
    LEFT JOIN DBAMV.EMPRESA_PRODUTO emprod
        ON emprod.CD_PRODUTO = prod.CD_PRODUTO
       AND emprod.CD_MULTI_EMPRESA = 40
WHERE estq.CD_MULTI_EMPRESA = 40
  AND esp.CD_ESPECIE IN (1, 5, 12, 17, 79, 81, 82)
GROUP BY prod.CD_PRODUTO, prod.DS_PRODUTO,
         esp.CD_ESPECIE, esp.DS_ESPECIE,
         uni.DS_UNIDADE, uni.VL_FATOR,
         prod.TP_ATIVO, prod.SN_MEDICAMENTO, prod.SN_PSCOTROPICO,
         prod.VL_TEMPO_DE_REPOSICAO,
         emprod.QT_ESTOQUE_MINIMO, emprod.QT_ESTOQUE_MAXIMO,
         emprod.QT_PONTO_DE_PEDIDO, emprod.QT_CONSUMO_MES
ORDER BY esp.CD_ESPECIE, prod.DS_PRODUTO
