-- ============================================================
-- CARRINHO DE PARADA - REPOSICAO (TRANSFERENCIAS FARMACIA -> CAR)
-- ============================================================
-- Todos os MEDICAMENTOS transferidos para os CARs em D0+D1.
-- D0 = data da prescricao (via subquery de #CD_PRESCRICAO#).
-- Flag VINCULADO: se a transferencia tem link com solicitacao.
-- Recebe #CD_PRESCRICAO# da query 2 (detalhe).
-- ============================================================

SELECT
    mv.CD_MVTO_ESTOQUE,
    mv.HR_MVTO_ESTOQUE                           AS DH_TRANSFERENCIA,
    estq_orig.DS_ESTOQUE                          AS ESTOQUE_ORIGEM,
    estq_dest.DS_ESTOQUE                          AS ESTOQUE_DESTINO_CAR,
    prod.DS_PRODUTO                               AS PRODUTO,
    itmv.QT_MOVIMENTACAO,
    CASE WHEN mv.CD_SOLSAI_PRO IS NOT NULL THEN 'SIM' ELSE 'NAO' END AS VINCULADO,
    mv.CD_SOLSAI_PRO,
    usu_mv.NM_USUARIO                             AS TRANSFERIDO_POR

FROM DBAMV.MVTO_ESTOQUE mv
    INNER JOIN DBAMV.ESTOQUE estq_orig
        ON estq_orig.CD_ESTOQUE = mv.CD_ESTOQUE
    INNER JOIN DBAMV.ESTOQUE estq_dest
        ON estq_dest.CD_ESTOQUE = mv.CD_ESTOQUE_DESTINO
    INNER JOIN DBAMV.ITMVTO_ESTOQUE itmv
        ON itmv.CD_MVTO_ESTOQUE = mv.CD_MVTO_ESTOQUE
    INNER JOIN DBAMV.PRODUTO prod
        ON prod.CD_PRODUTO = itmv.CD_PRODUTO
    LEFT JOIN DBASGU.USUARIOS usu_mv
        ON usu_mv.CD_USUARIO = mv.CD_USUARIO

WHERE mv.TP_MVTO_ESTOQUE = 'T'
  AND prod.SN_MEDICAMENTO = 'S'
  AND mv.CD_ESTOQUE_DESTINO IN (
    1562,1574,1575,1577,1578,1579,1580,1581,1582,1583,
    1584,1585,1586,1590,1591,1599,1600,1601,1602,1603,
    1604,1605,1606,1607,1608,1609,1610,1611,1612,1617,1618
  )
  AND mv.HR_MVTO_ESTOQUE BETWEEN
        TRUNC((SELECT p.DH_PRESCRICAO FROM MVCPOE.PRESCRICAO p WHERE p.CD_PRESCRICAO = #CD_PRESCRICAO#))
    AND TRUNC((SELECT p.DH_PRESCRICAO FROM MVCPOE.PRESCRICAO p WHERE p.CD_PRESCRICAO = #CD_PRESCRICAO#)) + INTERVAL '1 23:59:59' DAY TO SECOND

ORDER BY estq_dest.DS_ESTOQUE, prod.DS_PRODUTO, mv.HR_MVTO_ESTOQUE DESC
