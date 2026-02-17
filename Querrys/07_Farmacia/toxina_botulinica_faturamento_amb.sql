-- =====================================================================
-- TOXINA BOTULINICA - Faturamento Ambulatorial SUS
-- SIGTAP: 0604550022 - TOXINA BOTULINICA TIPO A 500 U INJETAVEL
-- Grupo 06 (MEDICAMENTOS) > SubGrupo 04 (Comp.Especializado) > FO 55
-- =====================================================================
-- CD_PRO_FAT internos encontrados no HUGO (CD_SUS = NULL em todos):
--   FRASCO/AMP (medicamentos):
--     07006189 BOTOX 100UI          07007856 BOTOX 200UI
--     07017507 BOTULIFT 100UI
--     07011279 DYSPORT 300UI        07011391 DYSPORT 500UI
--     07009683 PROSIGNE 100UI       07020375 PROSIGNE 50UI
--     07001236 TOXINA TIPO A 100UI  07002783 TOXINA TIPO A 200UI
--     07003176 TOXINA TIPO A 300UI  07002689 TOXINA TIPO A 50UI
--     07001118 TOXINA TIPO A 500UI
--     07005944 XEOMIN 100UI
--   ATO (procedimentos de aplicacao):
--     20103140 BLOQUEIO FENOLICO/TOXINA
--     30311055 INJECAO TOXINA MONOCULAR
--     30206103 INJECAO INTRALARINGEA TOXINA
-- =====================================================================


-- =====================================================================
-- 1. DISCOVERY: Todos os PRO_FAT de toxina botulinica
-- =====================================================================
SELECT
    pf.CD_PRO_FAT,
    pf.DS_PRO_FAT,
    pf.CD_SUS,
    pf.CD_GRU_PRO_SUS,
    pf.DS_SUS,
    pf.SN_ATIVO,
    pf.DS_UNIDADE
FROM DBAMV.PRO_FAT pf
WHERE UPPER(pf.DS_PRO_FAT) LIKE '%TOXINA%BOTUL%'
   OR UPPER(pf.DS_PRO_FAT) LIKE '%BOTOX%'
   OR UPPER(pf.DS_PRO_FAT) LIKE '%DYSPORT%'
   OR UPPER(pf.DS_PRO_FAT) LIKE '%PROSIGNE%'
   OR UPPER(pf.DS_PRO_FAT) LIKE '%BOTULIFT%'
   OR UPPER(pf.DS_PRO_FAT) LIKE '%XEOMIN%'
ORDER BY pf.DS_PRO_FAT;


-- =====================================================================
-- 2. EVE_SIASUS: Busca DIRETA por SIGTAP 0604550022 (toxina)
--    >>> TABELA PRINCIPAL do faturamento ambulatorial SUS <<<
--    CD_PROCEDIMENTO (col 46) = codigo SIGTAP
--    QT_LANCADA (col 3) = quantidade faturada
-- =====================================================================
SELECT
    eve.CD_EVENTOS,
    eve.CD_PROCEDIMENTO AS SIGTAP,
    eve.CD_SSM,
    eve.QT_LANCADA,
    eve.DT_EVE_SIASUS AS DT_EVENTO,
    eve.NM_PACIENTE,
    eve.CD_PACIENTE,
    eve.CD_ATENDIMENTO,
    eve.CD_APAC,
    eve.SN_APAC_PRINCIPAL,
    eve.VL_TOTAL_AMBULATORIAL,
    eve.CD_CID_PRINCIPAL,
    eve.CD_SETOR_PRODUZIU,
    eve.CD_REMESSA,
    eve.CD_DECENDIO,
    eve.DT_LANCAMENTO,
    eve.CD_ITMVTO_ESTOQUE,
    eve.CD_ITMVTO_PRESCRICAO,
    fs.DS_FAT_SIA,
    fs.DT_COMPETENCIA AS COMPETENCIA_FATURA
FROM DBAMV.EVE_SIASUS eve
INNER JOIN DBAMV.FAT_SIA fs ON fs.CD_FAT_SIA = eve.CD_FAT_SIA
WHERE eve.CD_PROCEDIMENTO = '0604550022'
  AND eve.CD_MULTI_EMPRESA = 40
ORDER BY eve.DT_EVE_SIASUS DESC
FETCH FIRST 100 ROWS ONLY;


-- =====================================================================
-- 3. EVE_SIASUS: Busca por grupo 0604 (medicamentos CEAF)
--    (caso o SIGTAP esteja diferente do esperado)
-- =====================================================================
SELECT
    eve.CD_PROCEDIMENTO AS SIGTAP,
    COUNT(*) AS QTD_EVENTOS,
    SUM(eve.QT_LANCADA) AS QTD_TOTAL,
    SUM(eve.VL_TOTAL_AMBULATORIAL) AS VL_TOTAL,
    MIN(eve.DT_EVE_SIASUS) AS DT_MIN,
    MAX(eve.DT_EVE_SIASUS) AS DT_MAX
FROM DBAMV.EVE_SIASUS eve
INNER JOIN DBAMV.FAT_SIA fs ON fs.CD_FAT_SIA = eve.CD_FAT_SIA
WHERE eve.CD_PROCEDIMENTO LIKE '0604%'
  AND eve.CD_MULTI_EMPRESA = 40
GROUP BY eve.CD_PROCEDIMENTO
ORDER BY QTD_TOTAL DESC;


-- =====================================================================
-- 4. EVE_SIASUS DIAG: Total de eventos por mes (ultimos 6 meses)
--    (ver se a tabela tem dados no HUGO)
-- =====================================================================
SELECT
    TO_CHAR(eve.DT_EVE_SIASUS, 'YYYY-MM') AS MES,
    COUNT(*) AS QTD_EVENTOS,
    COUNT(DISTINCT eve.CD_PROCEDIMENTO) AS PROC_DISTINTOS,
    SUM(eve.QT_LANCADA) AS QTD_TOTAL
FROM DBAMV.EVE_SIASUS eve
WHERE eve.CD_MULTI_EMPRESA = 40
  AND eve.DT_EVE_SIASUS >= ADD_MONTHS(TRUNC(SYSDATE, 'MM'), -6)
GROUP BY TO_CHAR(eve.DT_EVE_SIASUS, 'YYYY-MM')
ORDER BY MES DESC;


-- =====================================================================
-- 5. EVE_SIASUS: Busca por CD_SSM (codigo SIA antigo)
--    Caso o procedimento use CD_SSM ao inves de CD_PROCEDIMENTO
-- =====================================================================
SELECT
    eve.CD_EVENTOS,
    eve.CD_SSM,
    eve.CD_PROCEDIMENTO AS SIGTAP,
    eve.QT_LANCADA,
    eve.DT_EVE_SIASUS AS DT_EVENTO,
    eve.NM_PACIENTE,
    eve.CD_ATENDIMENTO,
    eve.VL_TOTAL_AMBULATORIAL
FROM DBAMV.EVE_SIASUS eve
WHERE eve.CD_MULTI_EMPRESA = 40
  AND (
      eve.CD_SSM LIKE '%0604550022%'
      OR eve.CD_SSM LIKE '%TOXINA%'
      OR eve.CD_SSM LIKE '%06045%'
  )
ORDER BY eve.DT_EVE_SIASUS DESC
FETCH FIRST 50 ROWS ONLY;


-- =====================================================================
-- 6. FFAS_ITENS_ATENDIMENTO: Tabela de carga faturamento SUS amb
--    (staging table - pode ter o dado se EVE_SIASUS nao tiver)
-- =====================================================================
SELECT
    ff.CD_CHAVE_FFAS,
    ff.CD_PROCEDIMENTO AS SIGTAP,
    ff.DS_PROCEDIMENTO,
    ff.QT_LANCADA,
    ff.DT_EVE_SIASUS AS DT_EVENTO,
    ff.CD_ATENDIMENTO,
    ff.CD_EVENTOS,
    ff.CD_GRUPO_PROCEDIMENTO,
    ff.CD_SUB_GRUPO_PROCEDIMENTO,
    ff.VL_TOTAL_AMBULATORIAL,
    ff.CD_REMESSA,
    ff.CD_REMESSA_BPA
FROM DBAMV.FFAS_ITENS_ATENDIMENTO ff
WHERE ff.CD_MULTI_EMPRESA = 40
  AND (
      ff.CD_PROCEDIMENTO = '0604550022'
      OR ff.CD_GRUPO_PROCEDIMENTO = '06'
  )
ORDER BY ff.DT_EVE_SIASUS DESC
FETCH FIRST 100 ROWS ONLY;


-- =====================================================================
-- 7. REMESSA_BPA - Ver remessas do periodo SET-OUT/2025
-- =====================================================================
SELECT
    rb.CD_FAT_SIA,
    rb.CD_REMESSA,
    rb.DS_REMESSA,
    rb.TP_INSTRUMENTO_REGISTRO,
    rb.TP_REMESSA,
    rb.SN_FECHADA,
    rb.DT_COMPETENCIA_APRESENTACAO,
    rb.DT_ABERTURA,
    rb.DT_FECHAMENTO
FROM DBAMV.REMESSA_BPA rb
INNER JOIN DBAMV.FAT_SIA fs ON fs.CD_FAT_SIA = rb.CD_FAT_SIA
WHERE fs.CD_MULTI_EMPRESA = 40
  AND rb.DT_COMPETENCIA_APRESENTACAO >= TO_DATE('2025-09-01', 'YYYY-MM-DD')
  AND rb.DT_COMPETENCIA_APRESENTACAO <  TO_DATE('2025-11-01', 'YYYY-MM-DD')
ORDER BY rb.DT_COMPETENCIA_APRESENTACAO DESC;


-- #####################################################################
-- QUERIES ALTERNATIVAS (ITREG_AMB / ITREG_FAT / APAC)
-- Retornaram vazio em investigacoes anteriores
-- Mantidas como referencia
-- #####################################################################

-- =====================================================================
-- 8. ITREG_AMB: Detalhamento faturamento AMBULATORIAL
--    Periodo: OUT/2025 (retornou VAZIO - ITREG_AMB nao usado no HUGO)
-- =====================================================================
SELECT
    atend.CD_ATENDIMENTO,
    pac.NM_PACIENTE,
    atend.DT_ATENDIMENTO,
    atend.TP_ATENDIMENTO,

    ra.CD_REG_AMB,
    ra.DT_LANCAMENTO AS DT_CONTA,
    ra.SN_FECHADA,
    ra.VL_TOTAL_CONTA AS VL_TOTAL_CONTA_AMB,

    ia.CD_LANCAMENTO,
    ia.HR_LANCAMENTO AS DH_LANCAMENTO,
    ia.CD_PRO_FAT,
    pf.DS_PRO_FAT AS PROCEDIMENTO,
    ia.QT_LANCAMENTO AS QUANTIDADE,
    ia.VL_UNITARIO,
    ia.VL_TOTAL_CONTA AS VL_ITEM,

    ia.CD_SETOR_PRODUZIU,
    set_prod.NM_SETOR AS SETOR_EXECUTANTE,
    ia.CD_SETOR,
    conv.NM_CONVENIO,
    ia.CD_PRESTADOR,
    prest.NM_PRESTADOR

FROM DBAMV.ITREG_AMB ia
INNER JOIN DBAMV.REG_AMB ra
    ON ra.CD_REG_AMB = ia.CD_REG_AMB
INNER JOIN DBAMV.PRO_FAT pf
    ON pf.CD_PRO_FAT = ia.CD_PRO_FAT
INNER JOIN DBAMV.ATENDIME atend
    ON atend.CD_ATENDIMENTO = ia.CD_ATENDIMENTO
INNER JOIN DBAMV.PACIENTE pac
    ON pac.CD_PACIENTE = atend.CD_PACIENTE
LEFT JOIN DBAMV.CONVENIO conv
    ON conv.CD_CONVENIO = ia.CD_CONVENIO
LEFT JOIN DBAMV.SETOR set_prod
    ON set_prod.CD_SETOR = ia.CD_SETOR_PRODUZIU
LEFT JOIN DBAMV.PRESTADOR prest
    ON prest.CD_PRESTADOR = ia.CD_PRESTADOR

WHERE ra.CD_MULTI_EMPRESA = 40
  AND ia.CD_PRO_FAT IN (
      '07006189','07007856','07017507',
      '07011279','07011391',
      '07009683','07020375',
      '07001236','07002783','07003176','07002689','07001118',
      '07005944',
      '20103140','30311055','30206103'
  )
  AND ia.HR_LANCAMENTO >= TO_DATE('2025-10-01', 'YYYY-MM-DD')
  AND ia.HR_LANCAMENTO <  TO_DATE('2025-11-01', 'YYYY-MM-DD')

ORDER BY ia.HR_LANCAMENTO DESC;


-- =====================================================================
-- 9. ITREG_AMB RESUMO MENSAL: Quantidades e valores por mes (12 meses)
-- =====================================================================
SELECT
    TO_CHAR(ia.HR_LANCAMENTO, 'YYYY-MM') AS MES_REF,
    ia.CD_PRO_FAT,
    pf.DS_PRO_FAT AS PROCEDIMENTO,
    pf.DS_UNIDADE,
    COUNT(*) AS QTD_LANCAMENTOS,
    SUM(ia.QT_LANCAMENTO) AS QTD_TOTAL,
    SUM(NVL(ia.VL_UNITARIO,0) * ia.QT_LANCAMENTO) AS VL_TOTAL

FROM DBAMV.ITREG_AMB ia
INNER JOIN DBAMV.REG_AMB ra
    ON ra.CD_REG_AMB = ia.CD_REG_AMB
INNER JOIN DBAMV.PRO_FAT pf
    ON pf.CD_PRO_FAT = ia.CD_PRO_FAT

WHERE ra.CD_MULTI_EMPRESA = 40
  AND ia.CD_PRO_FAT IN (
      '07006189','07007856','07017507',
      '07011279','07011391',
      '07009683','07020375',
      '07001236','07002783','07003176','07002689','07001118',
      '07005944'
  )
  AND ia.HR_LANCAMENTO >= ADD_MONTHS(TRUNC(SYSDATE, 'MM'), -12)

GROUP BY
    TO_CHAR(ia.HR_LANCAMENTO, 'YYYY-MM'),
    ia.CD_PRO_FAT,
    pf.DS_PRO_FAT,
    pf.DS_UNIDADE

ORDER BY MES_REF DESC, pf.DS_PRO_FAT;


-- =====================================================================
-- 10. ITREG_FAT: Faturamento HOSPITALAR (retornou VAZIO)
-- =====================================================================
SELECT
    atend.CD_ATENDIMENTO,
    pac.NM_PACIENTE,
    atend.DT_ATENDIMENTO,
    atend.TP_ATENDIMENTO,

    rf.CD_REG_FAT,
    rf.SN_FECHADA,
    rf.VL_TOTAL_CONTA,

    itf.CD_LANCAMENTO,
    itf.DT_LANCAMENTO,
    itf.CD_PRO_FAT,
    pf.DS_PRO_FAT AS PROCEDIMENTO,
    itf.CD_PROCEDIMENTO AS COD_SIGTAP_DIRETO,
    itf.CD_SUS,
    itf.QT_LANCAMENTO AS QUANTIDADE,
    itf.VL_UNITARIO,
    itf.VL_TOTAL_CONTA AS VL_ITEM,

    itf.CD_SETOR_PRODUZIU,
    set_prod.NM_SETOR AS SETOR_EXECUTANTE,
    conv.NM_CONVENIO

FROM DBAMV.ITREG_FAT itf
INNER JOIN DBAMV.REG_FAT rf
    ON rf.CD_REG_FAT = itf.CD_REG_FAT
INNER JOIN DBAMV.PRO_FAT pf
    ON pf.CD_PRO_FAT = itf.CD_PRO_FAT
INNER JOIN DBAMV.ATENDIME atend
    ON atend.CD_ATENDIMENTO = rf.CD_ATENDIMENTO
INNER JOIN DBAMV.PACIENTE pac
    ON pac.CD_PACIENTE = atend.CD_PACIENTE
LEFT JOIN DBAMV.CONVENIO conv
    ON conv.CD_CONVENIO = rf.CD_CONVENIO
LEFT JOIN DBAMV.SETOR set_prod
    ON set_prod.CD_SETOR = itf.CD_SETOR_PRODUZIU

WHERE atend.CD_MULTI_EMPRESA = 40
  AND (
      itf.CD_PRO_FAT IN (
          '07006189','07007856','07017507',
          '07011279','07011391',
          '07009683','07020375',
          '07001236','07002783','07003176','07002689','07001118',
          '07005944',
          '20103140','30311055','30206103'
      )
      OR itf.CD_PROCEDIMENTO = '0604550022'
  )
  AND itf.DT_LANCAMENTO >= TO_DATE('2025-10-01', 'YYYY-MM-DD')
  AND itf.DT_LANCAMENTO <  TO_DATE('2025-11-01', 'YYYY-MM-DD')

ORDER BY itf.DT_LANCAMENTO DESC;


-- =====================================================================
-- 11. APAC: Com filtro de periodo OUT/2025 (retornou VAZIO)
-- =====================================================================
SELECT
    apac.CD_APAC,
    apac.NR_APAC,
    apac.TP_APAC,  -- 1=Inicial, 2=Continuidade, 3=Unica, 4=Encerramento
    apac.DT_INICIAL,
    apac.DT_FINAL,
    apac.CD_PROCEDIMENTO_PRINCIPAL,
    pac.NM_PACIENTE,
    apac.CD_CID_PRINCIPAL,
    cid.DS_CID

FROM DBAMV.APAC apac
INNER JOIN DBAMV.PACIENTE pac
    ON pac.CD_PACIENTE = apac.CD_PACIENTE
LEFT JOIN DBAMV.CID cid
    ON cid.CD_CID = apac.CD_CID_PRINCIPAL

WHERE (
      apac.CD_PROCEDIMENTO_PRINCIPAL = '0604550022'
      OR UPPER(apac.DS_MEDICAMENTOS) LIKE '%TOXINA%'
      OR UPPER(apac.DS_MEDICAMENTOS) LIKE '%BOTULIN%'
  )
  AND apac.DT_INICIAL >= TO_DATE('2025-10-01', 'YYYY-MM-DD')
  AND apac.DT_INICIAL <  TO_DATE('2025-11-01', 'YYYY-MM-DD')

ORDER BY apac.DT_INICIAL DESC;
