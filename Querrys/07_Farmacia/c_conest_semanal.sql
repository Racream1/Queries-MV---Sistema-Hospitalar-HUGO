-- C_CONEST SEMANAL - Movimentacao por semana (segunda a domingo)
-- Saldo retroativo a partir do saldo atual (EST_PRO)
-- Movimentos convertidos para unidade base via UNI_PRO.VL_FATOR, depois dividido por VL_FATOR consumo
-- Todos produtos (medicamentos + materiais) | Hospital HUGO
WITH saldo AS (
    SELECT
        ep.CD_PRODUTO,
        SUM(ep.QT_ESTOQUE_ATUAL) AS SALDO_ATUAL
    FROM DBAMV.EST_PRO ep
        INNER JOIN DBAMV.ESTOQUE estq ON estq.CD_ESTOQUE = ep.CD_ESTOQUE
    WHERE estq.CD_MULTI_EMPRESA = 40
    GROUP BY ep.CD_PRODUTO
),
mvto AS (
    SELECT
        itmv.CD_PRODUTO,
        TRUNC(mv.HR_MVTO_ESTOQUE, 'IW') AS INICIO_SEMANA,
        SUM(CASE WHEN mv.TP_MVTO_ESTOQUE = 'P' THEN itmv.QT_MOVIMENTACAO * uni_mv.VL_FATOR ELSE 0 END) AS SAIDA_PACIENTE,
        SUM(CASE WHEN mv.TP_MVTO_ESTOQUE = 'S' THEN itmv.QT_MOVIMENTACAO * uni_mv.VL_FATOR ELSE 0 END) AS SAIDA_SETOR,
        SUM(CASE WHEN mv.TP_MVTO_ESTOQUE = 'T' THEN itmv.QT_MOVIMENTACAO * uni_mv.VL_FATOR ELSE 0 END) AS TRANSF_SAIDA,
        SUM(CASE WHEN mv.TP_MVTO_ESTOQUE = 'D' THEN itmv.QT_MOVIMENTACAO * uni_mv.VL_FATOR ELSE 0 END) AS DEV_SETOR,
        SUM(CASE WHEN mv.TP_MVTO_ESTOQUE = 'C' THEN itmv.QT_MOVIMENTACAO * uni_mv.VL_FATOR ELSE 0 END) AS DEV_PACIENTE,
        SUM(CASE WHEN mv.TP_MVTO_ESTOQUE = 'V' THEN itmv.QT_MOVIMENTACAO * uni_mv.VL_FATOR ELSE 0 END) AS VENDA,
        SUM(CASE WHEN mv.TP_MVTO_ESTOQUE = 'X' THEN itmv.QT_MOVIMENTACAO * uni_mv.VL_FATOR ELSE 0 END) AS BAIXA,
        SUM(CASE WHEN mv.TP_MVTO_ESTOQUE = 'E' THEN itmv.QT_MOVIMENTACAO * uni_mv.VL_FATOR ELSE 0 END) AS EMPRESTIMO,
        SUM(CASE WHEN mv.TP_MVTO_ESTOQUE = 'O' THEN itmv.QT_MOVIMENTACAO * uni_mv.VL_FATOR ELSE 0 END) AS DOACAO,
        SUM(CASE WHEN mv.TP_MVTO_ESTOQUE = 'M' THEN itmv.QT_MOVIMENTACAO * uni_mv.VL_FATOR ELSE 0 END) AS MANIPULACAO,
        SUM(CASE WHEN mv.TP_MVTO_ESTOQUE = 'N' THEN itmv.QT_MOVIMENTACAO * uni_mv.VL_FATOR ELSE 0 END) AS DEV_VENDA,
        SUM(CASE WHEN mv.TP_MVTO_ESTOQUE = 'B' THEN itmv.QT_MOVIMENTACAO * uni_mv.VL_FATOR ELSE 0 END) AS TOMBAMENTO,
        SUM(CASE WHEN mv.TP_MVTO_ESTOQUE = 'R' THEN itmv.QT_MOVIMENTACAO * uni_mv.VL_FATOR ELSE 0 END) AS TRANSF_EMPRESA
    FROM DBAMV.MVTO_ESTOQUE mv
        INNER JOIN DBAMV.ITMVTO_ESTOQUE itmv ON itmv.CD_MVTO_ESTOQUE = mv.CD_MVTO_ESTOQUE
        INNER JOIN DBAMV.UNI_PRO uni_mv ON uni_mv.CD_UNI_PRO = itmv.CD_UNI_PRO
        INNER JOIN DBAMV.ESTOQUE estq ON estq.CD_ESTOQUE = mv.CD_ESTOQUE
    WHERE estq.CD_MULTI_EMPRESA = 40
      AND mv.HR_MVTO_ESTOQUE >= TO_DATE('2025-01-01', 'YYYY-MM-DD')
    GROUP BY itmv.CD_PRODUTO, TRUNC(mv.HR_MVTO_ESTOQUE, 'IW')
),
transf_entrada AS (
    SELECT
        itmv.CD_PRODUTO,
        TRUNC(mv.HR_MVTO_ESTOQUE, 'IW') AS INICIO_SEMANA,
        SUM(itmv.QT_MOVIMENTACAO * uni_mv.VL_FATOR) AS TRANSF_ENTRADA
    FROM DBAMV.MVTO_ESTOQUE mv
        INNER JOIN DBAMV.ITMVTO_ESTOQUE itmv ON itmv.CD_MVTO_ESTOQUE = mv.CD_MVTO_ESTOQUE
        INNER JOIN DBAMV.UNI_PRO uni_mv ON uni_mv.CD_UNI_PRO = itmv.CD_UNI_PRO
        INNER JOIN DBAMV.ESTOQUE estq_dest ON estq_dest.CD_ESTOQUE = mv.CD_ESTOQUE_DESTINO
    WHERE mv.TP_MVTO_ESTOQUE IN ('T', 'R')
      AND mv.CD_ESTOQUE_DESTINO IS NOT NULL
      AND estq_dest.CD_MULTI_EMPRESA = 40
      AND mv.HR_MVTO_ESTOQUE >= TO_DATE('2025-01-01', 'YYYY-MM-DD')
    GROUP BY itmv.CD_PRODUTO, TRUNC(mv.HR_MVTO_ESTOQUE, 'IW')
),
entradas_nf AS (
    SELECT
        iep.CD_PRODUTO,
        TRUNC(ep.DT_ENTRADA, 'IW') AS INICIO_SEMANA,
        SUM(iep.QT_ENTRADA * uni_en.VL_FATOR) AS ENTRADAS
    FROM DBAMV.ENT_PRO ep
        INNER JOIN DBAMV.ITENT_PRO iep ON iep.CD_ENT_PRO = ep.CD_ENT_PRO
        INNER JOIN DBAMV.UNI_PRO uni_en ON uni_en.CD_UNI_PRO = iep.CD_UNI_PRO
        INNER JOIN DBAMV.ESTOQUE estq ON estq.CD_ESTOQUE = ep.CD_ESTOQUE
    WHERE estq.CD_MULTI_EMPRESA = 40
      AND ep.DT_ENTRADA >= TO_DATE('2025-01-01', 'YYYY-MM-DD')
    GROUP BY iep.CD_PRODUTO, TRUNC(ep.DT_ENTRADA, 'IW')
),
-- Unir todas as semanas por produto
semanas AS (
    SELECT CD_PRODUTO, INICIO_SEMANA FROM mvto
    UNION
    SELECT CD_PRODUTO, INICIO_SEMANA FROM transf_entrada
    UNION
    SELECT CD_PRODUTO, INICIO_SEMANA FROM entradas_nf
),
-- Consolidar movimentos por produto + semana
consolidado AS (
    SELECT
        sem.CD_PRODUTO,
        sem.INICIO_SEMANA,
        sem.INICIO_SEMANA + 6                           AS FIM_SEMANA,
        NVL(enf.ENTRADAS, 0)                            AS ENTRADAS,
        NVL(te.TRANSF_ENTRADA, 0)                       AS TRANSF_ENTRADA,
        NVL(m.SAIDA_PACIENTE, 0)                        AS SAIDA_PACIENTE,
        NVL(m.SAIDA_SETOR, 0)                           AS SAIDA_SETOR,
        NVL(m.TRANSF_SAIDA, 0)                          AS TRANSF_SAIDA,
        NVL(m.DEV_SETOR, 0)                             AS DEV_SETOR,
        NVL(m.DEV_PACIENTE, 0)                          AS DEV_PACIENTE,
        NVL(m.VENDA, 0)                                 AS VENDA,
        NVL(m.BAIXA, 0)                                 AS BAIXA,
        NVL(m.EMPRESTIMO, 0)                            AS EMPRESTIMO,
        NVL(m.DOACAO, 0)                                AS DOACAO,
        NVL(m.MANIPULACAO, 0)                           AS MANIPULACAO,
        NVL(m.DEV_VENDA, 0)                             AS DEV_VENDA,
        NVL(m.TOMBAMENTO, 0)                            AS TOMBAMENTO,
        NVL(m.TRANSF_EMPRESA, 0)                        AS TRANSF_EMPRESA,
        -- DELTA = entradas - saidas (positivo = estoque subiu)
        NVL(enf.ENTRADAS, 0) + NVL(te.TRANSF_ENTRADA, 0)
        + NVL(m.DEV_SETOR, 0) + NVL(m.DEV_PACIENTE, 0) + NVL(m.DEV_VENDA, 0)
        - NVL(m.SAIDA_PACIENTE, 0) - NVL(m.SAIDA_SETOR, 0)
        - NVL(m.TRANSF_SAIDA, 0) - NVL(m.BAIXA, 0)
        - NVL(m.VENDA, 0) - NVL(m.EMPRESTIMO, 0) - NVL(m.DOACAO, 0)
        - NVL(m.MANIPULACAO, 0) - NVL(m.TOMBAMENTO, 0) - NVL(m.TRANSF_EMPRESA, 0)
                                                         AS DELTA
    FROM semanas sem
        LEFT JOIN mvto m ON m.CD_PRODUTO = sem.CD_PRODUTO AND m.INICIO_SEMANA = sem.INICIO_SEMANA
        LEFT JOIN transf_entrada te ON te.CD_PRODUTO = sem.CD_PRODUTO AND te.INICIO_SEMANA = sem.INICIO_SEMANA
        LEFT JOIN entradas_nf enf ON enf.CD_PRODUTO = sem.CD_PRODUTO AND enf.INICIO_SEMANA = sem.INICIO_SEMANA
)
SELECT
    c.CD_PRODUTO,
    Initcap(prod.DS_PRODUTO)                             AS PRODUTO,
    esp.CD_ESPECIE,
    esp.DS_ESPECIE                                       AS ESPECIE,
    uni.DS_UNIDADE                                       AS UNIDADE,
    uni.VL_FATOR,
    c.INICIO_SEMANA,
    c.FIM_SEMANA,
    -- ESTOQUE_FINAL = saldo_atual - soma dos deltas das semanas POSTERIORES
    ROUND((NVL(s.SALDO_ATUAL, 0)
        - SUM(c.DELTA) OVER (PARTITION BY c.CD_PRODUTO ORDER BY c.INICIO_SEMANA DESC
                             ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING)
    ) / NVL(uni.VL_FATOR, 1))                        AS ESTOQUE_FINAL,
    -- ESTOQUE_INICIAL = ESTOQUE_FINAL - DELTA da semana
    ROUND((NVL(s.SALDO_ATUAL, 0)
        - SUM(c.DELTA) OVER (PARTITION BY c.CD_PRODUTO ORDER BY c.INICIO_SEMANA DESC
                             ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW)
    ) / NVL(uni.VL_FATOR, 1))                        AS ESTOQUE_INICIAL,
    ROUND(c.ENTRADAS / NVL(uni.VL_FATOR, 1))         AS ENTRADAS,
    ROUND(c.TRANSF_ENTRADA / NVL(uni.VL_FATOR, 1))   AS TRANSF_ENTRADA,
    ROUND(c.SAIDA_SETOR / NVL(uni.VL_FATOR, 1))      AS SAIDA_SETOR,
    ROUND(c.SAIDA_PACIENTE / NVL(uni.VL_FATOR, 1))   AS SAIDA_PACIENTE,
    ROUND(c.TRANSF_SAIDA / NVL(uni.VL_FATOR, 1))     AS TRANSF_SAIDA,
    ROUND(c.DEV_SETOR / NVL(uni.VL_FATOR, 1))        AS DEV_SETOR,
    ROUND(c.DEV_PACIENTE / NVL(uni.VL_FATOR, 1))     AS DEV_PACIENTE,
    ROUND(c.VENDA / NVL(uni.VL_FATOR, 1))            AS VENDA,
    ROUND(c.BAIXA / NVL(uni.VL_FATOR, 1))            AS BAIXA,
    ROUND(c.EMPRESTIMO / NVL(uni.VL_FATOR, 1))       AS EMPRESTIMO,
    ROUND(c.DOACAO / NVL(uni.VL_FATOR, 1))           AS DOACAO,
    ROUND(c.MANIPULACAO / NVL(uni.VL_FATOR, 1))    AS MANIPULACAO,
    ROUND(c.DEV_VENDA / NVL(uni.VL_FATOR, 1))      AS DEV_VENDA,
    ROUND(c.TOMBAMENTO / NVL(uni.VL_FATOR, 1))     AS TOMBAMENTO,
    ROUND(c.TRANSF_EMPRESA / NVL(uni.VL_FATOR, 1)) AS TRANSF_EMPRESA
FROM consolidado c
    INNER JOIN DBAMV.PRODUTO prod ON prod.CD_PRODUTO = c.CD_PRODUTO
    INNER JOIN DBAMV.ESPECIE esp ON esp.CD_ESPECIE = prod.CD_ESPECIE
    LEFT JOIN DBAMV.UNI_PRO uni ON uni.CD_PRODUTO = c.CD_PRODUTO AND uni.TP_RELATORIOS = 'C' AND uni.SN_ATIVO = 'S'
    LEFT JOIN saldo s ON s.CD_PRODUTO = c.CD_PRODUTO
WHERE esp.CD_ESPECIE IN (1, 5, 12, 17, 79, 81, 82)
ORDER BY esp.CD_ESPECIE, prod.DS_PRODUTO, c.INICIO_SEMANA
