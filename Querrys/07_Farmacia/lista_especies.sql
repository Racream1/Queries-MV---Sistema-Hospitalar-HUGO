-- Listar todas as especies com quantidade de produtos ativos
SELECT
    esp.CD_ESPECIE,
    esp.DS_ESPECIE,
    COUNT(prod.CD_PRODUTO) AS QTD_PRODUTOS
FROM DBAMV.ESPECIE esp
    INNER JOIN DBAMV.PRODUTO prod ON prod.CD_ESPECIE = esp.CD_ESPECIE
WHERE prod.TP_ATIVO = 'S'
GROUP BY esp.CD_ESPECIE, esp.DS_ESPECIE
ORDER BY esp.DS_ESPECIE
