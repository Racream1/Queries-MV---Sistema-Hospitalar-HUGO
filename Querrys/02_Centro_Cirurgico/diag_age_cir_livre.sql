-- DIAGNOSTICO: AGE_CIR_LIVRE tem dados?
-- Se tiver, podemos fazer o grid sem CONNECT BY
SELECT
    sc.DS_SAL_CIR,
    COUNT(*)                                          AS QTD_SLOTS_LIVRES,
    MIN(fl.DT_INICIO_LIVRE)                           AS PRIMEIRO_LIVRE,
    MAX(fl.DT_FINAL_LIVRE)                            AS ULTIMO_LIVRE,
    ROUND(AVG((fl.DT_FINAL_LIVRE - fl.DT_INICIO_LIVRE) * 1440)) AS MEDIA_DURACAO_MIN
FROM DBAMV.AGE_CIR_LIVRE fl
JOIN DBAMV.SAL_CIR sc ON sc.CD_SAL_CIR = fl.CD_SAL_CIR
WHERE fl.DT_INICIO_LIVRE BETWEEN $pgmvDataIni$ AND $pgmvDataFim$
GROUP BY sc.DS_SAL_CIR
ORDER BY sc.DS_SAL_CIR
