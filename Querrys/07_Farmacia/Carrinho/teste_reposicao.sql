-- TODOS os movimentos da UTI 1 em 02/02/2026
-- Estoques UTI1: CARs 1580,1581,1582,1590 | Maletas 1564,1565 | Transp 1883 | VAD 1866
-- Setor 5678 (UTI I - HUGO) | Unidade 564
SELECT
    mv.CD_MVTO_ESTOQUE,
    mv.TP_MVTO_ESTOQUE,
    mv.HR_MVTO_ESTOQUE                           AS DH_MOVIMENTO,
    mv.CD_ATENDIMENTO,
    mv.CD_SETOR,
    mv.CD_UNID_INT,
    NVL(estq_orig.DS_ESTOQUE, '-')               AS ORIGEM,
    NVL(estq_dest.DS_ESTOQUE, '-')               AS DESTINO,
    prod.DS_PRODUTO                               AS PRODUTO,
    itmv.QT_MOVIMENTACAO,
    usu.NM_USUARIO                                AS USUARIO
FROM DBAMV.MVTO_ESTOQUE mv
    INNER JOIN DBAMV.ITMVTO_ESTOQUE itmv
        ON itmv.CD_MVTO_ESTOQUE = mv.CD_MVTO_ESTOQUE
    INNER JOIN DBAMV.PRODUTO prod
        ON prod.CD_PRODUTO = itmv.CD_PRODUTO
    LEFT JOIN DBAMV.ESTOQUE estq_orig
        ON estq_orig.CD_ESTOQUE = mv.CD_ESTOQUE
    LEFT JOIN DBAMV.ESTOQUE estq_dest
        ON estq_dest.CD_ESTOQUE = mv.CD_ESTOQUE_DESTINO
    LEFT JOIN DBASGU.USUARIOS usu
        ON usu.CD_USUARIO = mv.CD_USUARIO
WHERE (
        mv.CD_ESTOQUE IN (1580,1581,1582,1590,1564,1565,1883,1866)
     OR mv.CD_ESTOQUE_DESTINO IN (1580,1581,1582,1590,1564,1565,1883,1866)
     OR mv.CD_SETOR = 5678
     OR mv.CD_UNID_INT = 564
      )
  AND mv.HR_MVTO_ESTOQUE BETWEEN TO_DATE('02/02/2026','DD/MM/YYYY')
                              AND TO_DATE('02/02/2026 23:59:59','DD/MM/YYYY HH24:MI:SS')
ORDER BY mv.HR_MVTO_ESTOQUE, prod.DS_PRODUTO
