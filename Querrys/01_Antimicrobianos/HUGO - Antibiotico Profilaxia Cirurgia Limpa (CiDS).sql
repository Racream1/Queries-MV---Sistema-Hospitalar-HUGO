-- CONSULTA FINAL E COMPLETA (COM INDICADOR DE PORCENTAGEM)
WITH
-- ETAPA 1: Define o universo de cirurgias limpas e principais.
base_cirurgias AS (
  SELECT
    ac.CD_AVISO_CIRURGIA,
    ac.CD_ATENDIMENTO,
    ac.DT_REALIZACAO AS INICIO_CIRURGIA
  FROM DBAMV.AVISO_CIRURGIA ac
  JOIN DBAMV.ATENDIME atd ON ac.CD_ATENDIMENTO = atd.CD_ATENDIMENTO
  JOIN DBAMV.CIRURGIA_AVISO ca ON ac.CD_AVISO_CIRURGIA = ca.CD_AVISO_CIRURGIA
  WHERE
    ac.TP_SITUACAO = 'R'
    AND atd.CD_MULTI_EMPRESA = 40
    AND ac.DT_REALIZACAO BETWEEN TO_DATE(TO_CHAR($pgmvDataIni$,'dd/mm/yyyy')||' 00:00','dd/mm/yyyy hh24:mi') AND TO_DATE(TO_CHAR($pgmvDataFim$,'dd/mm/yyyy')||' 23:59','dd/mm/yyyy hh24:mi')
    AND ca.TP_NATUREZA = 'L'
    AND ca.SN_PRINCIPAL = 'S'
),
-- ETAPA 2: Calcula flags para cada documento individualmente.
flags_por_documento AS (
  SELECT /*+ MATERIALIZE */
    b.CD_AVISO_CIRURGIA,
    b.INICIO_CIRURGIA,
    b.CD_ATENDIMENTO,
    pec.CD_EDITOR_REGISTRO,
    CASE WHEN REGEXP_LIKE(TRIM(dbamv.fnc_resp_doc_v2(b.CD_ATENDIMENTO, 911, 'Metadado_3_1', pec.CD_EDITOR_REGISTRO)), '^[0-9]+$') AND TO_NUMBER(dbamv.fnc_resp_doc_v2(b.CD_ATENDIMENTO, 911, 'Metadado_3_1', pec.CD_EDITOR_REGISTRO)) = b.CD_AVISO_CIRURGIA THEN 1 ELSE 0 END AS FLAG_LIGACAO_VALIDA,
    CASE WHEN dbamv.fnc_resp_doc_v2(b.CD_ATENDIMENTO, 911, 'FC_TP_ANT_S_1', pec.CD_EDITOR_REGISTRO) = 'true' THEN 1 ELSE 0 END AS FLAG_INDICACAO_ANTIBIOTICO,
    CASE
      WHEN (
            REGEXP_LIKE(TRIM(dbamv.fnc_resp_doc_v2(b.CD_ATENDIMENTO, 911, 'THR_incio_cir_911_1', pec.CD_EDITOR_REGISTRO)), '^[0-2]?[0-9]:[0-5][0-9]$')
            AND REGEXP_LIKE(TRIM(dbamv.fnc_resp_doc_v2(b.CD_ATENDIMENTO, 911, 'FC_HORA_ANTIB_1_1', pec.CD_EDITOR_REGISTRO)), '^[0-9]{1,2}$')
            AND REGEXP_LIKE(TRIM(dbamv.fnc_resp_doc_v2(b.CD_ATENDIMENTO, 911, 'FC_MINUTO_ANTIB_1_1', pec.CD_EDITOR_REGISTRO)), '^[0-9]{1,2}$')
            AND TO_NUMBER(TRIM(dbamv.fnc_resp_doc_v2(b.CD_ATENDIMENTO, 911, 'FC_HORA_ANTIB_1_1', pec.CD_EDITOR_REGISTRO))) <= 23
            AND TO_NUMBER(TRIM(dbamv.fnc_resp_doc_v2(b.CD_ATENDIMENTO, 911, 'FC_MINUTO_ANTIB_1_1', pec.CD_EDITOR_REGISTRO))) <= 59
           )
      THEN
        CASE
          WHEN (
                 TO_DATE(TO_CHAR(b.INICIO_CIRURGIA, 'DD/MM/YYYY') || ' ' || TRIM(dbamv.fnc_resp_doc_v2(b.CD_ATENDIMENTO, 911, 'THR_incio_cir_911_1', pec.CD_EDITOR_REGISTRO)), 'DD/MM/YYYY HH24:MI') -
                 TO_DATE(TO_CHAR(b.INICIO_CIRURGIA, 'DD/MM/YYYY') || ' ' || LPAD(TRIM(dbamv.fnc_resp_doc_v2(b.CD_ATENDIMENTO, 911, 'FC_HORA_ANTIB_1_1', pec.CD_EDITOR_REGISTRO)), 2, '0') || ':' || LPAD(TRIM(dbamv.fnc_resp_doc_v2(b.CD_ATENDIMENTO, 911, 'FC_MINUTO_ANTIB_1_1', pec.CD_EDITOR_REGISTRO)), 2, '0'), 'DD/MM/YYYY HH24:MI')
               ) * 1440 BETWEEN 5 AND 60
          THEN 1 ELSE 0
        END
      ELSE 0
    END AS FLAG_TEMPO_ADEQUADO
  FROM base_cirurgias b
  LEFT JOIN DBAMV.PW_DOCUMENTO_CLINICO pdc ON b.CD_ATENDIMENTO = pdc.CD_ATENDIMENTO
  LEFT JOIN DBAMV.PW_EDITOR_CLINICO pec ON pdc.CD_DOCUMENTO_CLINICO = pec.CD_DOCUMENTO_CLINICO AND pec.CD_DOCUMENTO = 911
),
-- ETAPA 3: Consolida os flags por cirurgia.
status_final_por_cirurgia AS (
  SELECT
    f.CD_AVISO_CIRURGIA,
    MAX(f.FLAG_LIGACAO_VALIDA) AS FLAG_DOCUMENTO_VALIDO_ENCONTRADO,
    MAX(CASE WHEN f.FLAG_LIGACAO_VALIDA = 1 THEN f.FLAG_INDICACAO_ANTIBIOTICO ELSE 0 END) AS FLAG_INDICACAO_ANTIBIOTICO,
    MAX(CASE WHEN f.FLAG_LIGACAO_VALIDA = 1 AND f.FLAG_INDICACAO_ANTIBIOTICO = 1 THEN f.FLAG_TEMPO_ADEQUADO ELSE 0 END) AS FLAG_TEMPO_ADEQUADO
  FROM flags_por_documento f
  GROUP BY f.CD_AVISO_CIRURGIA
)
-- ETAPA FINAL: Monta o relatório com subconsultas independentes.
SELECT 'Total de Cirurgias no Critério' AS INDICADOR,
       (SELECT COUNT(*) FROM base_cirurgias) AS VALOR
FROM DUAL
UNION ALL
SELECT 'Cirurgias com Indicação de Antibiótico' AS INDICADOR,
       (SELECT SUM(FLAG_INDICACAO_ANTIBIOTICO) FROM status_final_por_cirurgia) AS VALOR
FROM DUAL
UNION ALL
SELECT 'Cirurgias sem Documento 911 Adequado' AS INDICADOR,
       (SELECT COUNT(*) FROM base_cirurgias) - (SELECT SUM(FLAG_DOCUMENTO_VALIDO_ENCONTRADO) FROM status_final_por_cirurgia) AS VALOR
FROM DUAL
UNION ALL
SELECT 'Cirurgias no Tempo Adequado (Contagem)' AS INDICADOR, -- Renomeado para clareza
       (SELECT SUM(FLAG_TEMPO_ADEQUADO) FROM status_final_por_cirurgia) AS VALOR
FROM DUAL
UNION ALL
-- << NOVA LINHA ADICIONADA >>
SELECT '% de Cirurgias no Tempo Adequado' AS INDICADOR,
       ROUND(
           (
             (SELECT SUM(FLAG_TEMPO_ADEQUADO) FROM status_final_por_cirurgia) /
             NULLIF((SELECT SUM(FLAG_INDICACAO_ANTIBIOTICO) FROM status_final_por_cirurgia), 0)
           ) * 100
       , 2) AS VALOR
FROM DUAL