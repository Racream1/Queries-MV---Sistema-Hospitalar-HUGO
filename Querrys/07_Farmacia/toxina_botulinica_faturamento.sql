-- ==========================================
-- TOXINA BOTULINICA - Investigacao Faturamento/AIH
-- ==========================================
-- Medicamento de alto custo - provavel APAC ou AIH
-- Execute cada query sequencialmente para descobrir o fluxo

-- ==========================================
-- 1. PRODUTOS - Encontrar toxina botulinica
-- ==========================================
SELECT
    prod.CD_PRODUTO,
    Initcap(prod.DS_PRODUTO) AS PRODUTO,
    esp.DS_ESPECIE,
    prod.TP_ATIVO,
    prod.SN_PSCOTROPICO AS CONTROLADO
FROM DBAMV.PRODUTO prod
    INNER JOIN DBAMV.ESPECIE esp ON esp.CD_ESPECIE = prod.CD_ESPECIE
WHERE UPPER(prod.DS_PRODUTO) LIKE '%TOXINA%'
   OR UPPER(prod.DS_PRODUTO) LIKE '%BOTULIN%'
ORDER BY prod.DS_PRODUTO;


-- ==========================================
-- 2. PRESCRICOES - Ver se tem prescricoes recentes
--    (substituir CD_PRODUTO pelos encontrados acima)
-- ==========================================
SELECT
    pres.CD_PRESCRICAO,
    pres.DH_CRIACAO,
    pres.DH_IMPRESSAO,
    atend.CD_ATENDIMENTO,
    pac.NM_PACIENTE,
    itpre.CD_PRODUTO,
    Initcap(prod.DS_PRODUTO) AS PRODUTO,
    itpre.QT_ITEM_PRESCRICAO,
    uni.DS_UNIDADE
FROM MVCPOE.PRESCRICAO pres
    INNER JOIN MVCPOE.ITEM_PRESCRICAO itpre ON itpre.CD_PRESCRICAO = pres.CD_PRESCRICAO
    INNER JOIN DBAMV.ATENDIME atend ON atend.CD_ATENDIMENTO = pres.CD_ATENDIMENTO
    INNER JOIN DBAMV.PACIENTE pac ON pac.CD_PACIENTE = atend.CD_PACIENTE
    INNER JOIN DBAMV.PRODUTO prod ON prod.CD_PRODUTO = itpre.CD_PRODUTO
    LEFT JOIN DBAMV.UNI_PRO uni ON uni.CD_PRODUTO = prod.CD_PRODUTO AND uni.TP_RELATORIOS = 'C'
WHERE itpre.CD_PRODUTO IN (2317,44017,14144,2774,14147,2773,11836,11835,8050,90115,48215,79605,14143,766,80237,14145,785)
  AND pres.DH_CRIACAO >= TO_DATE('2025-01-01', 'YYYY-MM-DD')
ORDER BY pres.DH_CRIACAO DESC
FETCH FIRST 50 ROWS ONLY;


-- ==========================================
-- 3. APAC - Ver se produtos estao em APAC
--    (APAC = procedimentos de alta complexidade)
-- ==========================================
SELECT
    apac.CD_APAC,
    apac.NR_APAC,
    apac.TP_APAC,  -- 1=Inicial, 2=Continuidade, 3=Unica, 4=Encerramento
    apac.DT_INICIAL,
    apac.DT_FINAL,
    pac.NM_PACIENTE,
    apac.CD_CID_PRINCIPAL,
    cid.DS_CID,
    apac.DS_MEDICAMENTOS  -- <<< Pode ter descricao dos medicamentos aqui!
FROM DBAMV.APAC apac
    INNER JOIN DBAMV.PACIENTE pac ON pac.CD_PACIENTE = apac.CD_PACIENTE
    LEFT JOIN DBAMV.CID cid ON cid.CD_CID = apac.CD_CID_PRINCIPAL
WHERE apac.DT_INICIAL >= TO_DATE('2025-01-01', 'YYYY-MM-DD')
  AND (
      UPPER(apac.DS_MEDICAMENTOS) LIKE '%TOXINA%'
      OR UPPER(apac.DS_MEDICAMENTOS) LIKE '%BOTULIN%'
  )
ORDER BY apac.DT_INICIAL DESC;


-- ==========================================
-- 4. ITREG_FAT - Ver se tem em itens de faturamento
--    (relacionar PRODUTO com lancamento de conta)
-- ==========================================
-- Primeiro verificar se existe tabela de relacionamento LANCAMENTO x PRODUTO
-- Tabelas possiveis: LANCAMENTO, ITMVTO_ESTOQUE, etc
SELECT
    mv.CD_MVTO_ESTOQUE,
    mv.DT_MVTO_ESTOQUE,
    mv.TP_MVTO_ESTOQUE,  -- P=Dispensacao paciente
    atend.CD_ATENDIMENTO,
    pac.NM_PACIENTE,
    Initcap(prod.DS_PRODUTO) AS PRODUTO,
    itmv.QT_MOVIMENTACAO,
    uni.DS_UNIDADE,
    mv.CD_ATENDIMENTO AS ATEND_MVTO
FROM DBAMV.MVTO_ESTOQUE mv
    INNER JOIN DBAMV.ITMVTO_ESTOQUE itmv ON itmv.CD_MVTO_ESTOQUE = mv.CD_MVTO_ESTOQUE
    INNER JOIN DBAMV.PRODUTO prod ON prod.CD_PRODUTO = itmv.CD_PRODUTO
    LEFT JOIN DBAMV.ATENDIME atend ON atend.CD_ATENDIMENTO = mv.CD_ATENDIMENTO
    LEFT JOIN DBAMV.PACIENTE pac ON pac.CD_PACIENTE = atend.CD_PACIENTE
    LEFT JOIN DBAMV.UNI_PRO uni ON uni.CD_UNI_PRO = itmv.CD_UNI_PRO
WHERE itmv.CD_PRODUTO IN (2317,44017,14144,2774,14147,2773,11836,11835,8050,90115,48215,79605,14143,766,80237,14145,785)
  AND mv.DT_MVTO_ESTOQUE >= TO_DATE('2025-01-01', 'YYYY-MM-DD')
  AND mv.TP_MVTO_ESTOQUE = 'P'  -- Dispensacao paciente
ORDER BY mv.DT_MVTO_ESTOQUE DESC
FETCH FIRST 100 ROWS ONLY;


-- ==========================================
-- 5. AIH - Ver se tem em internacoes com AIH
-- ==========================================
SELECT
    atend.CD_ATENDIMENTO,
    atend.DT_ATENDIMENTO,
    atend.DT_ALTA,
    pac.NM_PACIENTE,
    aih_alta.DT_INTERNACAO,
    aih_alta.DT_ALTA,
    -- Aqui voce pode adicionar joins com procedimentos AIH se necessario
    atend.TP_ATENDIMENTO
FROM DBAMV.ATENDIME atend
    INNER JOIN DBAMV.PACIENTE pac ON pac.CD_PACIENTE = atend.CD_PACIENTE
    LEFT JOIN DBAMV.AIH_ALTA_ADM aih_alta ON aih_alta.CD_ATENDIMENTO = atend.CD_ATENDIMENTO
WHERE atend.DT_ATENDIMENTO >= TO_DATE('2025-01-01', 'YYYY-MM-DD')
  AND atend.TP_ATENDIMENTO = 'I'  -- Internacao
  AND aih_alta.CD_ATENDIMENTO IS NOT NULL  -- Tem AIH
ORDER BY atend.DT_ATENDIMENTO DESC
FETCH FIRST 50 ROWS ONLY;


-- ==========================================
-- DICA: Depois de rodar as queries acima:
-- ==========================================
-- 1. Query 1: Pegue os CD_PRODUTO reais
-- 2. Query 2: Veja se tem prescricoes (substitua CD_PRODUTO)
-- 3. Query 3: Veja se aparece em APAC (campo DS_MEDICAMENTOS)
-- 4. Query 4: Veja movimentacao de estoque/dispensacao
-- 5. Query 5: Veja se aparece em AIH
--
-- O caminho mais provavel:
-- PRODUTO → PRESCRICAO → MVTO_ESTOQUE (P) → APAC (DS_MEDICAMENTOS)
