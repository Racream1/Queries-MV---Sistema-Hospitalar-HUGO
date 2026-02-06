-- ============================================================
-- DIAGNOSTICO: Solicitacoes dos estoques CAR (Carrinho de Parada)
-- ============================================================
-- Objetivo: Descobrir como a enfermeira registra o consumo
-- do carrinho de parada no sistema.
-- Hipotese 1: TP_SOLSAI_PRO = 'S' (Req/Setor) com CD_ESTOQUE_SOLICITANTE = CAR
-- Hipotese 2: TP_SOLSAI_PRO = 'E' (Req/Estoque) com CD_ESTOQUE_SOLICITANTE = CAR
-- ============================================================

-- PARTE 1: Solicitacoes ONDE o estoque SOLICITANTE e um CAR ou MALETA
SELECT
    sol.CD_SOLSAI_PRO,
    sol.TP_SOLSAI_PRO,
    sol.TP_SITUACAO,
    sol.HR_SOLSAI_PRO,
    sol.CD_ATENDIMENTO,
    sol.CD_SETOR,
    estq_sol.DS_ESTOQUE          AS ESTOQUE_SOLICITANTE,
    estq_dest.DS_ESTOQUE         AS ESTOQUE_DESTINO,
    COUNT(itsol.CD_ITSOLSAI_PRO) AS QTD_ITENS
FROM DBAMV.SOLSAI_PRO sol
    LEFT JOIN DBAMV.ESTOQUE estq_sol
        ON estq_sol.CD_ESTOQUE = sol.CD_ESTOQUE_SOLICITANTE
    LEFT JOIN DBAMV.ESTOQUE estq_dest
        ON estq_dest.CD_ESTOQUE = sol.CD_ESTOQUE
    LEFT JOIN DBAMV.ITSOLSAI_PRO itsol
        ON itsol.CD_SOLSAI_PRO = sol.CD_SOLSAI_PRO
WHERE estq_sol.DS_ESTOQUE LIKE 'CAR%'
   OR estq_sol.DS_ESTOQUE LIKE 'MALET%'
GROUP BY
    sol.CD_SOLSAI_PRO, sol.TP_SOLSAI_PRO, sol.TP_SITUACAO,
    sol.HR_SOLSAI_PRO, sol.CD_ATENDIMENTO, sol.CD_SETOR,
    estq_sol.DS_ESTOQUE, estq_dest.DS_ESTOQUE
ORDER BY sol.HR_SOLSAI_PRO DESC
FETCH FIRST 50 ROWS ONLY;

-- PARTE 2: Solicitacoes ONDE o estoque DESTINO e um CAR ou MALETA
-- (farmacia enviando para o carrinho)
/*
SELECT
    sol.CD_SOLSAI_PRO,
    sol.TP_SOLSAI_PRO,
    sol.TP_SITUACAO,
    sol.HR_SOLSAI_PRO,
    sol.CD_ATENDIMENTO,
    sol.CD_SETOR,
    estq_orig.DS_ESTOQUE         AS ESTOQUE_ORIGEM,
    estq_dest.DS_ESTOQUE         AS ESTOQUE_DESTINO_CAR,
    COUNT(itsol.CD_ITSOLSAI_PRO) AS QTD_ITENS
FROM DBAMV.SOLSAI_PRO sol
    LEFT JOIN DBAMV.ESTOQUE estq_orig
        ON estq_orig.CD_ESTOQUE = sol.CD_ESTOQUE_SOLICITANTE
    LEFT JOIN DBAMV.ESTOQUE estq_dest
        ON estq_dest.CD_ESTOQUE = sol.CD_ESTOQUE
    LEFT JOIN DBAMV.ITSOLSAI_PRO itsol
        ON itsol.CD_SOLSAI_PRO = sol.CD_SOLSAI_PRO
WHERE (estq_dest.DS_ESTOQUE LIKE 'CAR%'
   OR estq_dest.DS_ESTOQUE LIKE 'MALET%')
GROUP BY
    sol.CD_SOLSAI_PRO, sol.TP_SOLSAI_PRO, sol.TP_SITUACAO,
    sol.HR_SOLSAI_PRO, sol.CD_ATENDIMENTO, sol.CD_SETOR,
    estq_orig.DS_ESTOQUE, estq_dest.DS_ESTOQUE
ORDER BY sol.HR_SOLSAI_PRO DESC
FETCH FIRST 50 ROWS ONLY;
*/

-- PARTE 3: Se partes 1 e 2 nao retornarem, verificar por MVTO_ESTOQUE direto
-- (movimentacoes de estoque envolvendo CARs)
/*
SELECT
    mv.CD_MVTO_ESTOQUE,
    mv.TP_MVTO_ESTOQUE,
    mv.HR_MVTO_ESTOQUE,
    mv.CD_ESTOQUE,
    estq.DS_ESTOQUE,
    mv.CD_ATENDIMENTO,
    usu.NM_USUARIO               AS USUARIO,
    COUNT(itmv.CD_ITMVTO_ESTOQUE) AS QTD_ITENS_MOV
FROM DBAMV.MVTO_ESTOQUE mv
    INNER JOIN DBAMV.ESTOQUE estq ON estq.CD_ESTOQUE = mv.CD_ESTOQUE
    LEFT JOIN DBAMV.ITMVTO_ESTOQUE itmv ON itmv.CD_MVTO_ESTOQUE = mv.CD_MVTO_ESTOQUE
    LEFT JOIN DBASGU.USUARIOS usu ON usu.CD_USUARIO = mv.CD_USUARIO
WHERE (estq.DS_ESTOQUE LIKE 'CAR%'
   OR estq.DS_ESTOQUE LIKE 'MALET%')
GROUP BY
    mv.CD_MVTO_ESTOQUE, mv.TP_MVTO_ESTOQUE, mv.HR_MVTO_ESTOQUE,
    mv.CD_ESTOQUE, estq.DS_ESTOQUE, mv.CD_ATENDIMENTO, usu.NM_USUARIO
ORDER BY mv.HR_MVTO_ESTOQUE DESC
FETCH FIRST 50 ROWS ONLY;
*/
