-- ============================================================================
-- FATO: MOVIMENTACAO DIARIA POR PRODUTO
-- ============================================================================
-- Granularidade: CD_PRODUTO x DIA
-- Unidade: CONSUMO (convertida via UNI_PRO.VL_FATOR, TP_RELATORIOS='C')
-- Hospital: HUGO (CD_MULTI_EMPRESA = 40)
--
-- USO NO PIPELINE:
--   CARGA HISTORICA: rodar UMA VEZ com P_DT_INICIO = data mais antiga desejada
--   INCREMENTAL:     cron diario com P_DT_INICIO = TRUNC(SYSDATE-1), P_DT_FIM = TRUNC(SYSDATE-1)
--   Exportar para CSV/Parquet e acumular no data lake
--
-- AJUSTAR DATAS ABAIXO:
-- ============================================================================
WITH params AS (
    SELECT
        TO_DATE('2026-02-01', 'YYYY-MM-DD') AS P_DT_INICIO,  -- carga historica
        TRUNC(SYSDATE)                       AS P_DT_FIM       -- ate hoje
    FROM DUAL
),
-- 1. SAIDAS (origem = CD_ESTOQUE)
mvto_saida AS (
    SELECT
        itmv.CD_PRODUTO,
        TRUNC(mv.HR_MVTO_ESTOQUE)           AS DIA,
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
        SUM(CASE WHEN mv.TP_MVTO_ESTOQUE = 'B' THEN itmv.QT_MOVIMENTACAO * uni_mv.VL_FATOR ELSE 0 END) AS CONTAGEM,
        SUM(CASE WHEN mv.TP_MVTO_ESTOQUE = 'R' THEN itmv.QT_MOVIMENTACAO * uni_mv.VL_FATOR ELSE 0 END) AS TRANSF_EMP_SAIDA
    FROM DBAMV.MVTO_ESTOQUE mv
        INNER JOIN DBAMV.ITMVTO_ESTOQUE itmv ON itmv.CD_MVTO_ESTOQUE = mv.CD_MVTO_ESTOQUE
        INNER JOIN DBAMV.UNI_PRO uni_mv      ON uni_mv.CD_UNI_PRO = itmv.CD_UNI_PRO
        INNER JOIN DBAMV.ESTOQUE estq         ON estq.CD_ESTOQUE = mv.CD_ESTOQUE
        CROSS JOIN params par
    WHERE estq.CD_MULTI_EMPRESA = 40
      AND mv.HR_MVTO_ESTOQUE >= par.P_DT_INICIO
      AND mv.HR_MVTO_ESTOQUE <  par.P_DT_FIM + 1
    GROUP BY itmv.CD_PRODUTO, TRUNC(mv.HR_MVTO_ESTOQUE)
),
-- 2. ENTRADAS VIA TRANSFERENCIA (destino = CD_ESTOQUE_DESTINO)
mvto_transf_entrada AS (
    SELECT
        itmv.CD_PRODUTO,
        TRUNC(mv.HR_MVTO_ESTOQUE)           AS DIA,
        SUM(CASE WHEN mv.TP_MVTO_ESTOQUE = 'T' THEN itmv.QT_MOVIMENTACAO * uni_mv.VL_FATOR ELSE 0 END) AS TRANSF_ENTRADA,
        SUM(CASE WHEN mv.TP_MVTO_ESTOQUE = 'R' THEN itmv.QT_MOVIMENTACAO * uni_mv.VL_FATOR ELSE 0 END) AS TRANSF_EMP_ENTRADA
    FROM DBAMV.MVTO_ESTOQUE mv
        INNER JOIN DBAMV.ITMVTO_ESTOQUE itmv ON itmv.CD_MVTO_ESTOQUE = mv.CD_MVTO_ESTOQUE
        INNER JOIN DBAMV.UNI_PRO uni_mv      ON uni_mv.CD_UNI_PRO = itmv.CD_UNI_PRO
        INNER JOIN DBAMV.ESTOQUE estq_dest   ON estq_dest.CD_ESTOQUE = mv.CD_ESTOQUE_DESTINO
        CROSS JOIN params par
    WHERE mv.TP_MVTO_ESTOQUE IN ('T', 'R')
      AND mv.CD_ESTOQUE_DESTINO IS NOT NULL
      AND estq_dest.CD_MULTI_EMPRESA = 40
      AND mv.HR_MVTO_ESTOQUE >= par.P_DT_INICIO
      AND mv.HR_MVTO_ESTOQUE <  par.P_DT_FIM + 1
    GROUP BY itmv.CD_PRODUTO, TRUNC(mv.HR_MVTO_ESTOQUE)
),
-- 3. ENTRADAS VIA NOTA FISCAL
entradas_nf AS (
    SELECT
        iep.CD_PRODUTO,
        TRUNC(ep.DT_ENTRADA)                AS DIA,
        SUM(iep.QT_ENTRADA * uni_en.VL_FATOR) AS ENTRADA_NF
    FROM DBAMV.ENT_PRO ep
        INNER JOIN DBAMV.ITENT_PRO iep  ON iep.CD_ENT_PRO = ep.CD_ENT_PRO
        INNER JOIN DBAMV.UNI_PRO uni_en ON uni_en.CD_UNI_PRO = iep.CD_UNI_PRO
        INNER JOIN DBAMV.ESTOQUE estq   ON estq.CD_ESTOQUE = ep.CD_ESTOQUE
        CROSS JOIN params par
    WHERE estq.CD_MULTI_EMPRESA = 40
      AND ep.DT_ENTRADA >= par.P_DT_INICIO
      AND ep.DT_ENTRADA <  par.P_DT_FIM + 1
    GROUP BY iep.CD_PRODUTO, TRUNC(ep.DT_ENTRADA)
),
-- 4. UNIAO de todos os dias/produtos com movimento
dias AS (
    SELECT CD_PRODUTO, DIA FROM mvto_saida
    UNION
    SELECT CD_PRODUTO, DIA FROM mvto_transf_entrada
    UNION
    SELECT CD_PRODUTO, DIA FROM entradas_nf
)
SELECT
    d.CD_PRODUTO,
    prod.DS_PRODUTO,
    esp.CD_ESPECIE,
    d.DIA,
    -- temporais (1=Seg..7=Dom)
    1 + TRUNC(d.DIA) - TRUNC(d.DIA, 'IW')                    AS DIA_SEMANA_NUM,
    TO_NUMBER(TO_CHAR(d.DIA, 'IW'))                           AS SEMANA_ANO,
    EXTRACT(MONTH FROM d.DIA)                                 AS MES,
    EXTRACT(YEAR FROM d.DIA)                                  AS ANO,
    CASE WHEN TRUNC(d.DIA) - TRUNC(d.DIA, 'IW') >= 5 THEN 1 ELSE 0 END AS SN_FIM_SEMANA,
    -- entradas
    ROUND(NVL(enf.ENTRADA_NF, 0)         / NVL(NULLIF(uni.VL_FATOR, 0), 1)) AS ENTRADA_NF,
    ROUND(NVL(mte.TRANSF_ENTRADA, 0)     / NVL(NULLIF(uni.VL_FATOR, 0), 1)) AS TRANSF_ENTRADA,
    ROUND(NVL(mte.TRANSF_EMP_ENTRADA, 0) / NVL(NULLIF(uni.VL_FATOR, 0), 1)) AS TRANSF_EMP_ENTRADA,
    ROUND(NVL(ms.DEV_SETOR, 0)           / NVL(NULLIF(uni.VL_FATOR, 0), 1)) AS DEV_SETOR,
    ROUND(NVL(ms.DEV_PACIENTE, 0)        / NVL(NULLIF(uni.VL_FATOR, 0), 1)) AS DEV_PACIENTE,
    ROUND(NVL(ms.DEV_VENDA, 0)           / NVL(NULLIF(uni.VL_FATOR, 0), 1)) AS DEV_VENDA,
    -- saidas
    ROUND(NVL(ms.SAIDA_PACIENTE, 0)      / NVL(NULLIF(uni.VL_FATOR, 0), 1)) AS SAIDA_PACIENTE,
    ROUND(NVL(ms.SAIDA_SETOR, 0)         / NVL(NULLIF(uni.VL_FATOR, 0), 1)) AS SAIDA_SETOR,
    ROUND(NVL(ms.TRANSF_SAIDA, 0)        / NVL(NULLIF(uni.VL_FATOR, 0), 1)) AS TRANSF_SAIDA,
    ROUND(NVL(ms.TRANSF_EMP_SAIDA, 0)    / NVL(NULLIF(uni.VL_FATOR, 0), 1)) AS TRANSF_EMP_SAIDA,
    ROUND(NVL(ms.VENDA, 0)               / NVL(NULLIF(uni.VL_FATOR, 0), 1)) AS VENDA,
    ROUND(NVL(ms.BAIXA, 0)               / NVL(NULLIF(uni.VL_FATOR, 0), 1)) AS BAIXA,
    ROUND(NVL(ms.EMPRESTIMO, 0)          / NVL(NULLIF(uni.VL_FATOR, 0), 1)) AS EMPRESTIMO,
    ROUND(NVL(ms.DOACAO, 0)              / NVL(NULLIF(uni.VL_FATOR, 0), 1)) AS DOACAO,
    ROUND(NVL(ms.MANIPULACAO, 0)         / NVL(NULLIF(uni.VL_FATOR, 0), 1)) AS MANIPULACAO,
    ROUND(NVL(ms.CONTAGEM, 0)            / NVL(NULLIF(uni.VL_FATOR, 0), 1)) AS CONTAGEM,
    -- consumo liquido = saidas - devolucoes (sinal positivo = consumiu)
    ROUND((NVL(ms.SAIDA_PACIENTE, 0) + NVL(ms.SAIDA_SETOR, 0)
     + NVL(ms.VENDA, 0) + NVL(ms.BAIXA, 0) + NVL(ms.EMPRESTIMO, 0)
     + NVL(ms.DOACAO, 0) + NVL(ms.MANIPULACAO, 0) + NVL(ms.CONTAGEM, 0)
     - NVL(ms.DEV_SETOR, 0) - NVL(ms.DEV_PACIENTE, 0) - NVL(ms.DEV_VENDA, 0)
    ) / NVL(NULLIF(uni.VL_FATOR, 0), 1)) AS CONSUMO_LIQUIDO,
    -- delta = entradas_totais - saidas_totais (positivo = estoque subiu)
    ROUND((NVL(enf.ENTRADA_NF, 0) + NVL(mte.TRANSF_ENTRADA, 0) + NVL(mte.TRANSF_EMP_ENTRADA, 0)
     + NVL(ms.DEV_SETOR, 0) + NVL(ms.DEV_PACIENTE, 0) + NVL(ms.DEV_VENDA, 0)
     - NVL(ms.SAIDA_PACIENTE, 0) - NVL(ms.SAIDA_SETOR, 0)
     - NVL(ms.TRANSF_SAIDA, 0) - NVL(ms.TRANSF_EMP_SAIDA, 0)
     - NVL(ms.VENDA, 0) - NVL(ms.BAIXA, 0) - NVL(ms.EMPRESTIMO, 0)
     - NVL(ms.DOACAO, 0) - NVL(ms.MANIPULACAO, 0) - NVL(ms.CONTAGEM, 0)
    ) / NVL(NULLIF(uni.VL_FATOR, 0), 1)) AS DELTA
FROM dias d
    INNER JOIN DBAMV.PRODUTO prod ON prod.CD_PRODUTO = d.CD_PRODUTO
    INNER JOIN DBAMV.ESPECIE esp  ON esp.CD_ESPECIE = prod.CD_ESPECIE
    LEFT JOIN DBAMV.UNI_PRO uni   ON uni.CD_PRODUTO = d.CD_PRODUTO
                                  AND uni.TP_RELATORIOS = 'C'
                                  AND uni.SN_ATIVO = 'S'
    LEFT JOIN mvto_saida ms            ON ms.CD_PRODUTO = d.CD_PRODUTO AND ms.DIA = d.DIA
    LEFT JOIN mvto_transf_entrada mte  ON mte.CD_PRODUTO = d.CD_PRODUTO AND mte.DIA = d.DIA
    LEFT JOIN entradas_nf enf          ON enf.CD_PRODUTO = d.CD_PRODUTO AND enf.DIA = d.DIA
WHERE esp.CD_ESPECIE IN (1, 5, 12, 17, 79, 81, 82)
ORDER BY d.CD_PRODUTO, d.DIA
