-- ============================================================================
-- FATO: EVENTOS DE RUPTURA / DESABASTECIMENTO (TARGET VARIABLE)
-- ============================================================================
-- Tres fontes complementares de eventos de stock-out:
--
-- PARTE A: ITSOLSAI_PRO_SEM_SALDO
--   → Sistema registrou que solicitacao NAO podia ser atendida por falta de saldo
--   → MELHOR sinal: evento REAL de ruptura
--
-- PARTE B: ITSOLSAI_PRO com atendimento parcial
--   → QT_ATENDIDA < QT_SOLICITADO = farmacia nao tinha tudo
--   → Sinal de estoque restrito (quase-ruptura)
--
-- PARTE C: ITSOLSAI_PRO nao atendidos
--   → SN_ATENDIDO IS NULL ou 'N' em solicitacoes fechadas
--   → Sinal de demanda nao atendida
--
-- Hospital: HUGO (CD_MULTI_EMPRESA = 40)
-- ============================================================================

-- PARTE A: Rupturas confirmadas pelo sistema (sem saldo)
SELECT
    'RUPTURA_SEM_SALDO'                   AS TP_EVENTO,
    ss.CD_PRODUTO,
    prod.DS_PRODUTO,
    esp.CD_ESPECIE,
    sol.CD_SOLSAI_PRO,
    sol.TP_SOLSAI_PRO,
    NVL(sol.HR_SOLSAI_PRO, sol.DT_SOLSAI_PRO) AS DH_EVENTO,
    TRUNC(NVL(sol.HR_SOLSAI_PRO, sol.DT_SOLSAI_PRO)) AS DIA_EVENTO,
    sol.CD_ESTOQUE,
    sol.CD_SETOR,
    sol.CD_UNID_INT,
    ss.QT_ESTOQUE                         AS QT_ESTOQUE_MOMENTO,
    ss.QT_COTA                            AS QT_SOLICITADA,
    0                                     AS QT_ATENDIDA,
    ss.QT_COTA                            AS QT_NAO_ATENDIDA
FROM DBAMV.ITSOLSAI_PRO_SEM_SALDO ss
    INNER JOIN DBAMV.SOLSAI_PRO sol  ON sol.CD_SOLSAI_PRO = ss.CD_SOLSAI_PRO
    INNER JOIN DBAMV.PRODUTO prod    ON prod.CD_PRODUTO = ss.CD_PRODUTO
    INNER JOIN DBAMV.ESPECIE esp     ON esp.CD_ESPECIE = prod.CD_ESPECIE
    INNER JOIN DBAMV.ESTOQUE estq    ON estq.CD_ESTOQUE = sol.CD_ESTOQUE
WHERE estq.CD_MULTI_EMPRESA = 40
  AND esp.CD_ESPECIE IN (1, 5, 12, 17, 79, 81, 82)

UNION ALL

-- PARTE B: Atendimento parcial (tinha algo, mas nao tudo)
SELECT
    'ATENDIMENTO_PARCIAL'                 AS TP_EVENTO,
    isp.CD_PRODUTO,
    prod.DS_PRODUTO,
    esp.CD_ESPECIE,
    sol.CD_SOLSAI_PRO,
    sol.TP_SOLSAI_PRO,
    NVL(sol.HR_SOLSAI_PRO, sol.DT_SOLSAI_PRO) AS DH_EVENTO,
    TRUNC(NVL(sol.HR_SOLSAI_PRO, sol.DT_SOLSAI_PRO)) AS DIA_EVENTO,
    sol.CD_ESTOQUE,
    sol.CD_SETOR,
    sol.CD_UNID_INT,
    NULL                                  AS QT_ESTOQUE_MOMENTO,
    isp.QT_SOLICITADO                     AS QT_SOLICITADA,
    NVL(isp.QT_ATENDIDA, 0)              AS QT_ATENDIDA,
    isp.QT_SOLICITADO - NVL(isp.QT_ATENDIDA, 0) AS QT_NAO_ATENDIDA
FROM DBAMV.ITSOLSAI_PRO isp
    INNER JOIN DBAMV.SOLSAI_PRO sol  ON sol.CD_SOLSAI_PRO = isp.CD_SOLSAI_PRO
    INNER JOIN DBAMV.PRODUTO prod    ON prod.CD_PRODUTO = isp.CD_PRODUTO
    INNER JOIN DBAMV.ESPECIE esp     ON esp.CD_ESPECIE = prod.CD_ESPECIE
    INNER JOIN DBAMV.ESTOQUE estq    ON estq.CD_ESTOQUE = sol.CD_ESTOQUE
WHERE estq.CD_MULTI_EMPRESA = 40
  AND esp.CD_ESPECIE IN (1, 5, 12, 17, 79, 81, 82)
  AND isp.QT_ATENDIDA IS NOT NULL
  AND isp.QT_ATENDIDA < isp.QT_SOLICITADO
  AND isp.QT_ATENDIDA > 0
  AND sol.DT_CANCELAMENTO IS NULL

UNION ALL

-- PARTE C: Nao atendidos (solicitacao fechada sem atendimento)
SELECT
    'NAO_ATENDIDO'                        AS TP_EVENTO,
    isp.CD_PRODUTO,
    prod.DS_PRODUTO,
    esp.CD_ESPECIE,
    sol.CD_SOLSAI_PRO,
    sol.TP_SOLSAI_PRO,
    NVL(sol.HR_SOLSAI_PRO, sol.DT_SOLSAI_PRO) AS DH_EVENTO,
    TRUNC(NVL(sol.HR_SOLSAI_PRO, sol.DT_SOLSAI_PRO)) AS DIA_EVENTO,
    sol.CD_ESTOQUE,
    sol.CD_SETOR,
    sol.CD_UNID_INT,
    NULL                                  AS QT_ESTOQUE_MOMENTO,
    isp.QT_SOLICITADO                     AS QT_SOLICITADA,
    0                                     AS QT_ATENDIDA,
    isp.QT_SOLICITADO                     AS QT_NAO_ATENDIDA
FROM DBAMV.ITSOLSAI_PRO isp
    INNER JOIN DBAMV.SOLSAI_PRO sol  ON sol.CD_SOLSAI_PRO = isp.CD_SOLSAI_PRO
    INNER JOIN DBAMV.PRODUTO prod    ON prod.CD_PRODUTO = isp.CD_PRODUTO
    INNER JOIN DBAMV.ESPECIE esp     ON esp.CD_ESPECIE = prod.CD_ESPECIE
    INNER JOIN DBAMV.ESTOQUE estq    ON estq.CD_ESTOQUE = sol.CD_ESTOQUE
WHERE estq.CD_MULTI_EMPRESA = 40
  AND esp.CD_ESPECIE IN (1, 5, 12, 17, 79, 81, 82)
  AND (isp.SN_ATENDIDO IS NULL OR isp.SN_ATENDIDO = 'N')
  AND NVL(isp.QT_ATENDIDA, 0) = 0
  AND sol.TP_SITUACAO IN ('S', 'A')  -- fechada ou cancelada (nao pendente)
  AND sol.DT_CANCELAMENTO IS NULL     -- exclui cancelamentos voluntarios
ORDER BY DIA_EVENTO, CD_PRODUTO
