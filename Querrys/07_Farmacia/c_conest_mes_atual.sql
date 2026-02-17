-- C_CONEST VIRTUAL - Mes atual (ainda nao consolidado pelo MGES)
-- Colunas identicas a c_conest_historico.sql para nao gerar divergencia
-- ESTOQUE_FINAL   = saldo atual em EST_PRO (tempo real, unidade base)
-- ESTOQUE_INICIAL = ESTOQUE_FINAL revertendo TODOS movimentos do mes
-- Movimentos convertidos para unidade base via UNI_PRO.VL_FATOR
-- Obs: tipo M (manipulacao) no MVTO_ESTOQUE nao permite separar entrada/saida
--      sem a formula de manipulacao. Registrado como MANIP_SAIDA (conservador).
--      O ESTOQUE_INICIAL sera preciso pois o efeito liquido e o mesmo.
WITH saldo AS (
    SELECT
        ep.CD_PRODUTO,
        ROUND(SUM(ep.QT_ESTOQUE_ATUAL)) AS ESTOQUE_FINAL
    FROM DBAMV.EST_PRO ep
        INNER JOIN DBAMV.ESTOQUE estq ON estq.CD_ESTOQUE = ep.CD_ESTOQUE
    WHERE estq.CD_MULTI_EMPRESA = 40
    GROUP BY ep.CD_PRODUTO
),
mvto_saida AS (
    SELECT
        itmv.CD_PRODUTO,
        SUM(CASE WHEN mv.TP_MVTO_ESTOQUE = 'P' THEN itmv.QT_MOVIMENTACAO * uni_mv.VL_FATOR ELSE 0 END) AS SAIDA_PACIENTE,
        SUM(CASE WHEN mv.TP_MVTO_ESTOQUE = 'S' THEN itmv.QT_MOVIMENTACAO * uni_mv.VL_FATOR ELSE 0 END) AS SAIDA_SETOR,
        SUM(CASE WHEN mv.TP_MVTO_ESTOQUE = 'T' THEN itmv.QT_MOVIMENTACAO * uni_mv.VL_FATOR ELSE 0 END) AS TRANSF_SAIDA,
        SUM(CASE WHEN mv.TP_MVTO_ESTOQUE = 'D' THEN itmv.QT_MOVIMENTACAO * uni_mv.VL_FATOR ELSE 0 END) AS DEV_SETOR,
        SUM(CASE WHEN mv.TP_MVTO_ESTOQUE = 'C' THEN itmv.QT_MOVIMENTACAO * uni_mv.VL_FATOR ELSE 0 END) AS DEV_PACIENTE,
        SUM(CASE WHEN mv.TP_MVTO_ESTOQUE = 'V' THEN itmv.QT_MOVIMENTACAO * uni_mv.VL_FATOR ELSE 0 END) AS VENDA,
        SUM(CASE WHEN mv.TP_MVTO_ESTOQUE = 'X' THEN itmv.QT_MOVIMENTACAO * uni_mv.VL_FATOR ELSE 0 END) AS BAIXA,
        SUM(CASE WHEN mv.TP_MVTO_ESTOQUE = 'E' THEN itmv.QT_MOVIMENTACAO * uni_mv.VL_FATOR ELSE 0 END) AS EMPRESTIMO,
        SUM(CASE WHEN mv.TP_MVTO_ESTOQUE = 'O' THEN itmv.QT_MOVIMENTACAO * uni_mv.VL_FATOR ELSE 0 END) AS DOACAO,
        SUM(CASE WHEN mv.TP_MVTO_ESTOQUE = 'M' THEN itmv.QT_MOVIMENTACAO * uni_mv.VL_FATOR ELSE 0 END) AS MANIP_SAIDA,
        SUM(CASE WHEN mv.TP_MVTO_ESTOQUE = 'N' THEN itmv.QT_MOVIMENTACAO * uni_mv.VL_FATOR ELSE 0 END) AS DEV_VENDA,
        SUM(CASE WHEN mv.TP_MVTO_ESTOQUE = 'B' THEN itmv.QT_MOVIMENTACAO * uni_mv.VL_FATOR ELSE 0 END) AS CONTAGEM_SAIDA,
        SUM(CASE WHEN mv.TP_MVTO_ESTOQUE = 'R' THEN itmv.QT_MOVIMENTACAO * uni_mv.VL_FATOR ELSE 0 END) AS TRANSF_EMP_SAIDA
    FROM DBAMV.MVTO_ESTOQUE mv
        INNER JOIN DBAMV.ITMVTO_ESTOQUE itmv ON itmv.CD_MVTO_ESTOQUE = mv.CD_MVTO_ESTOQUE
        INNER JOIN DBAMV.UNI_PRO uni_mv ON uni_mv.CD_UNI_PRO = itmv.CD_UNI_PRO
        INNER JOIN DBAMV.ESTOQUE estq ON estq.CD_ESTOQUE = mv.CD_ESTOQUE
    WHERE estq.CD_MULTI_EMPRESA = 40
      AND mv.HR_MVTO_ESTOQUE >= TRUNC(SYSDATE, 'MM')
    GROUP BY itmv.CD_PRODUTO
),
mvto_transf_entrada AS (
    SELECT
        itmv.CD_PRODUTO,
        SUM(CASE WHEN mv.TP_MVTO_ESTOQUE = 'T' THEN itmv.QT_MOVIMENTACAO * uni_mv.VL_FATOR ELSE 0 END) AS TRANSF_ENTRADA,
        SUM(CASE WHEN mv.TP_MVTO_ESTOQUE = 'R' THEN itmv.QT_MOVIMENTACAO * uni_mv.VL_FATOR ELSE 0 END) AS TRANSF_EMP_ENTRADA
    FROM DBAMV.MVTO_ESTOQUE mv
        INNER JOIN DBAMV.ITMVTO_ESTOQUE itmv ON itmv.CD_MVTO_ESTOQUE = mv.CD_MVTO_ESTOQUE
        INNER JOIN DBAMV.UNI_PRO uni_mv ON uni_mv.CD_UNI_PRO = itmv.CD_UNI_PRO
        INNER JOIN DBAMV.ESTOQUE estq_dest ON estq_dest.CD_ESTOQUE = mv.CD_ESTOQUE_DESTINO
    WHERE mv.TP_MVTO_ESTOQUE IN ('T', 'R')
      AND mv.CD_ESTOQUE_DESTINO IS NOT NULL
      AND estq_dest.CD_MULTI_EMPRESA = 40
      AND mv.HR_MVTO_ESTOQUE >= TRUNC(SYSDATE, 'MM')
    GROUP BY itmv.CD_PRODUTO
),
entradas_nf AS (
    SELECT
        iep.CD_PRODUTO,
        SUM(iep.QT_ENTRADA * uni_en.VL_FATOR) AS ENTRADAS
    FROM DBAMV.ENT_PRO ep
        INNER JOIN DBAMV.ITENT_PRO iep ON iep.CD_ENT_PRO = ep.CD_ENT_PRO
        INNER JOIN DBAMV.UNI_PRO uni_en ON uni_en.CD_UNI_PRO = iep.CD_UNI_PRO
        INNER JOIN DBAMV.ESTOQUE estq ON estq.CD_ESTOQUE = ep.CD_ESTOQUE
    WHERE estq.CD_MULTI_EMPRESA = 40
      AND ep.DT_ENTRADA >= TRUNC(SYSDATE, 'MM')
    GROUP BY iep.CD_PRODUTO
),
produtos AS (
    SELECT CD_PRODUTO FROM mvto_saida
    UNION
    SELECT CD_PRODUTO FROM mvto_transf_entrada
    UNION
    SELECT CD_PRODUTO FROM entradas_nf
)
SELECT
    p.CD_PRODUTO,
    Initcap(prod.DS_PRODUTO)                   AS PRODUTO,
    esp.CD_ESPECIE,
    esp.DS_ESPECIE                              AS ESPECIE,
    uni.DS_UNIDADE                              AS UNIDADE,
    EXTRACT(YEAR FROM SYSDATE)                 AS CD_ANO,
    EXTRACT(MONTH FROM SYSDATE)                AS CD_MES,
    uni.VL_FATOR,
    -- ESTOQUE_INICIAL = saldo_atual + todas_saidas - todas_entradas (reverte movimentos do mes)
    ROUND((NVL(s.ESTOQUE_FINAL, 0)
        + NVL(ms.SAIDA_PACIENTE, 0) + NVL(ms.SAIDA_SETOR, 0)
        + NVL(ms.TRANSF_SAIDA, 0) + NVL(ms.BAIXA, 0)
        + NVL(ms.VENDA, 0) + NVL(ms.EMPRESTIMO, 0) + NVL(ms.DOACAO, 0)
        + NVL(ms.MANIP_SAIDA, 0) + NVL(ms.CONTAGEM_SAIDA, 0) + NVL(ms.TRANSF_EMP_SAIDA, 0)
        - NVL(enf.ENTRADAS, 0) - NVL(mte.TRANSF_ENTRADA, 0) - NVL(mte.TRANSF_EMP_ENTRADA, 0)
        - NVL(ms.DEV_SETOR, 0) - NVL(ms.DEV_PACIENTE, 0) - NVL(ms.DEV_VENDA, 0)
    ) / NVL(uni.VL_FATOR, 1))              AS ESTOQUE_INICIAL,
    ROUND(NVL(s.ESTOQUE_FINAL, 0) / NVL(uni.VL_FATOR, 1))        AS ESTOQUE_FINAL,
    ROUND(NVL(enf.ENTRADAS, 0) / NVL(uni.VL_FATOR, 1))           AS ENTRADAS,
    ROUND(NVL(mte.TRANSF_ENTRADA, 0) / NVL(uni.VL_FATOR, 1))     AS TRANSF_ENTRADA,
    ROUND(NVL(ms.SAIDA_SETOR, 0) / NVL(uni.VL_FATOR, 1))         AS SAIDA_SETOR,
    ROUND(NVL(ms.SAIDA_PACIENTE, 0) / NVL(uni.VL_FATOR, 1))      AS SAIDA_PACIENTE,
    ROUND(NVL(ms.TRANSF_SAIDA, 0) / NVL(uni.VL_FATOR, 1))        AS TRANSF_SAIDA,
    ROUND(NVL(ms.DEV_SETOR, 0) / NVL(uni.VL_FATOR, 1))           AS DEV_SETOR,
    ROUND(NVL(ms.DEV_PACIENTE, 0) / NVL(uni.VL_FATOR, 1))        AS DEV_PACIENTE,
    ROUND(NVL(ms.VENDA, 0) / NVL(uni.VL_FATOR, 1))               AS VENDA,
    ROUND(NVL(ms.BAIXA, 0) / NVL(uni.VL_FATOR, 1))               AS BAIXA,
    ROUND(NVL(ms.EMPRESTIMO, 0) / NVL(uni.VL_FATOR, 1))          AS EMPRESTIMO,
    ROUND(NVL(ms.DOACAO, 0) / NVL(uni.VL_FATOR, 1))              AS DOACAO,
    0                                                                  AS MANIP_ENTRADA,
    ROUND(NVL(ms.MANIP_SAIDA, 0) / NVL(uni.VL_FATOR, 1))         AS MANIP_SAIDA,
    ROUND(NVL(ms.DEV_VENDA, 0) / NVL(uni.VL_FATOR, 1))           AS DEV_VENDA,
    0                                                                  AS CONTAGEM_ENTRADA,
    ROUND(NVL(ms.CONTAGEM_SAIDA, 0) / NVL(uni.VL_FATOR, 1))      AS CONTAGEM_SAIDA,
    ROUND(NVL(ms.TRANSF_EMP_SAIDA, 0) / NVL(uni.VL_FATOR, 1))    AS TRANSF_EMP_SAIDA,
    ROUND(NVL(mte.TRANSF_EMP_ENTRADA, 0) / NVL(uni.VL_FATOR, 1)) AS TRANSF_EMP_ENTRADA
FROM produtos p
    INNER JOIN DBAMV.PRODUTO prod ON prod.CD_PRODUTO = p.CD_PRODUTO
    INNER JOIN DBAMV.ESPECIE esp ON esp.CD_ESPECIE = prod.CD_ESPECIE
    LEFT JOIN DBAMV.UNI_PRO uni ON uni.CD_PRODUTO = p.CD_PRODUTO AND uni.TP_RELATORIOS = 'C' AND uni.SN_ATIVO = 'S'
    LEFT JOIN saldo s ON s.CD_PRODUTO = p.CD_PRODUTO
    LEFT JOIN mvto_saida ms ON ms.CD_PRODUTO = p.CD_PRODUTO
    LEFT JOIN mvto_transf_entrada mte ON mte.CD_PRODUTO = p.CD_PRODUTO
    LEFT JOIN entradas_nf enf ON enf.CD_PRODUTO = p.CD_PRODUTO
WHERE esp.CD_ESPECIE IN (1, 5, 12, 17, 79, 81, 82)
ORDER BY esp.CD_ESPECIE, prod.DS_PRODUTO
