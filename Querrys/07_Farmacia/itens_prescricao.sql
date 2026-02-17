-- ============================================================================
-- EXAMES DA PRESCRICAO POR NUMERO DA PRESCRICAO (MVCPOE)
-- Parametro: :CD_PRESCRICAO
-- ============================================================================
SELECT
    p.CD_PRESCRICAO,
    p.DH_PRESCRICAO,
    ip.CD_ITEM_PRESCRICAO,
    ip.NR_ORDEM,
    ip.DS_ITEM_PRESCRICAO                       AS NOME_EXAME,
    ip.CD_SETOR_EXAME,
    ip.TP_LOCAL_EXAME,
    ipl.CD_ITPED_LAB,
    ipl.CD_EXA_LAB,
    exa.NM_EXA_LAB                              AS EXAME_LAB,
    ipl.SN_REALIZADO,
    ipl.DT_LAUDO,
    ipl.SN_ASSINADO,
    ipl.DS_RESULTADO
FROM MVCPOE.PRESCRICAO p
INNER JOIN MVCPOE.ITEM_PRESCRICAO ip
    ON p.CD_PRESCRICAO = ip.CD_PRESCRICAO
LEFT JOIN DBAMV.ITPED_LAB ipl
    ON ipl.CD_ITPRE_MED = ip.CD_ITEM_PRESCRICAO
LEFT JOIN DBAMV.EXA_LAB exa
    ON ipl.CD_EXA_LAB = exa.CD_EXA_LAB
WHERE p.CD_PRESCRICAO = :CD_PRESCRICAO
  AND ip.CD_SETOR_EXAME IS NOT NULL
ORDER BY ip.NR_ORDEM
