-- ============================================================================
-- FATO: LEAD TIME DE REPOSICAO
-- ============================================================================
-- Historico de entregas: tempo entre pedido (ORD_COM) e recebimento (ENT_PRO)
-- Usado para calcular lead time medio por produto e por fornecedor
--
-- Features derivadas no Python:
--   - LEAD_TIME_MEDIO_PRODUTO = AVG(LEAD_TIME_DIAS) por CD_PRODUTO
--   - LEAD_TIME_P95_PRODUTO = percentil 95 (pior caso realista)
--   - LEAD_TIME_MEDIO_FORNECEDOR = AVG por CD_FORNECEDOR
--   - ATRASO_MEDIO = AVG(DIAS_ATRASO) onde DIAS_ATRASO > 0
--   - TAXA_ATRASO = COUNT(DIAS_ATRASO > 0) / COUNT(*)
--
-- Granularidade: 1 linha por entrega (ENT_PRO) x produto (ITORD_PRO)
-- Hospital: HUGO (CD_MULTI_EMPRESA = 40)
-- ============================================================================
SELECT
    ep.CD_ENT_PRO,
    oc.CD_ORD_COM,
    ioc.CD_PRODUTO,
    prod.DS_PRODUTO,
    esp.CD_ESPECIE,
    oc.CD_FORNECEDOR,
    forn.NM_FORNECEDOR,
    oc.CD_ESTOQUE,
    -- datas
    oc.DT_ORD_COM                          AS DT_PEDIDO,
    oc.DT_PREV_ENTREGA                     AS DT_PREVISTA,
    ep.DT_ENTRADA                          AS DT_RECEBIMENTO,
    -- lead time
    (ep.DT_ENTRADA - oc.DT_ORD_COM)       AS LEAD_TIME_DIAS,
    -- planejado vs real
    CASE WHEN oc.DT_PREV_ENTREGA IS NOT NULL
         THEN (oc.DT_PREV_ENTREGA - oc.DT_ORD_COM)
         ELSE NULL
    END                                    AS LEAD_TIME_PREVISTO,
    CASE WHEN oc.DT_PREV_ENTREGA IS NOT NULL
         THEN (ep.DT_ENTRADA - oc.DT_PREV_ENTREGA)
         ELSE NULL
    END                                    AS DIAS_ATRASO,
    -- lead time padrao do produto (cadastro)
    prod.VL_TEMPO_DE_REPOSICAO             AS LEAD_TIME_PADRAO,
    -- quantidades
    ioc.QT_COMPRADA,
    NVL(ioc.QT_RECEBIDA, 0)               AS QT_RECEBIDA,
    NVL(ioc.QT_CANCELADA, 0)              AS QT_CANCELADA,
    -- taxa de atendimento do pedido
    CASE WHEN ioc.QT_COMPRADA > 0
         THEN ROUND(NVL(ioc.QT_RECEBIDA, 0) / ioc.QT_COMPRADA, 4)
         ELSE NULL
    END                                    AS TAXA_ATENDIMENTO,
    -- flags
    CASE WHEN ep.DT_ENTRADA > oc.DT_PREV_ENTREGA THEN 1 ELSE 0 END AS SN_ATRASADO,
    CASE WHEN NVL(ioc.QT_RECEBIDA, 0) < ioc.QT_COMPRADA THEN 1 ELSE 0 END AS SN_PARCIAL
FROM DBAMV.ENT_PRO ep
    INNER JOIN DBAMV.ORD_COM oc       ON oc.CD_ORD_COM = ep.CD_ORD_COM
    INNER JOIN DBAMV.ITORD_PRO ioc    ON ioc.CD_ORD_COM = oc.CD_ORD_COM
    INNER JOIN DBAMV.PRODUTO prod     ON prod.CD_PRODUTO = ioc.CD_PRODUTO
    INNER JOIN DBAMV.ESPECIE esp      ON esp.CD_ESPECIE = prod.CD_ESPECIE
    LEFT JOIN DBAMV.FORNECEDOR forn   ON forn.CD_FORNECEDOR = oc.CD_FORNECEDOR
    INNER JOIN DBAMV.ESTOQUE estq     ON estq.CD_ESTOQUE = ep.CD_ESTOQUE
WHERE estq.CD_MULTI_EMPRESA = 40
  AND esp.CD_ESPECIE IN (1, 5, 12, 17, 79, 81, 82)
  AND oc.DT_CANCELAMENTO IS NULL
  AND ioc.DT_CANCEL IS NULL
  AND ep.DT_ENTRADA >= TO_DATE('2024-01-01', 'YYYY-MM-DD')
ORDER BY ioc.CD_PRODUTO, ep.DT_ENTRADA
