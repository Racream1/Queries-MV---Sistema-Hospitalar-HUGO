WITH params AS (
    SELECT
        TRUNC(ADD_MONTHS(SYSDATE, -10), 'MM') AS dh_inicio,
        SYSDATE AS dh_fim
    FROM DUAL
),
contador AS (
  SELECT (p.dh_inicio - 1) + ROWNUM AS DATA
  FROM params p, ALL_OBJECTS
  WHERE (p.dh_inicio - 1) + ROWNUM <= p.dh_fim
),
ATENDIMENTOS_BASE AS (
  SELECT A.CD_ATENDIMENTO, A.CD_ESPECIALID,
    COALESCE(AIHE.CD_PROCEDIMENTO_MUDANCA, LAUDO_MAX.CD_PROCEDIMENTO, A.CD_PROCEDIMENTO) AS CD_PROCEDIMENTO
  FROM DBAMV.ATENDIME A
  LEFT JOIN (
    SELECT CD_ATENDIMENTO, CD_LAUDO, CD_PROCEDIMENTO, ROW_NUMBER() OVER(PARTITION BY CD_ATENDIMENTO ORDER BY CD_LAUDO DESC) AS RN
    FROM DBAMV.LAUDO_AIH
  ) LAUDO_MAX ON A.CD_ATENDIMENTO = LAUDO_MAX.CD_ATENDIMENTO AND LAUDO_MAX.RN = 1
  LEFT JOIN DBAMV.LAUDO_AIH_ESPECIAL AIHE ON LAUDO_MAX.CD_LAUDO = AIHE.CD_LAUDO
  WHERE A.CD_MULTI_EMPRESA = 40 AND A.TP_ATENDIMENTO IN ('I', 'H', 'U')
),
CLASSIFICACAO_CLINICA AS (
  SELECT
    B.CD_ATENDIMENTO,
    CASE
      WHEN SUS.CD_PROCEDIMENTO IN ('0201010038', '0201010127', '0101010135', '0201010143', '0201010160', '0201010208', '0201010240', '0201010259', '0201010267', '0201010305', '0201010313', '0201010321', '0201010330', '0201010402', '0201010534', '0201010550', '0209040033', '0209040050', '0211050091', '0211050148') OR (SUS.CD_GRUPO_PROCEDIMENTO = 4 AND SUS.CD_PROCEDIMENTO NOT LIKE '0417%') THEN 'Saída Cirúrgica'
      WHEN B.CD_ESPECIALID = 28 AND (SUS.CD_PROCEDIMENTO IN ('0201010275', '0211050105', '0304100013', '0304100021', '0305020005', '0305020013', '0305020021', '0305020030', '0305020048', '0305020056') OR SUS.CD_PROCEDIMENTO LIKE '0303%' OR SUS.CD_PROCEDIMENTO LIKE '0308%') THEN 'Saída Neurológica'
      ELSE 'Saída Clínica'
    END AS CLINICA
  FROM ATENDIMENTOS_BASE B
  INNER JOIN DBAMV.PROCEDIMENTO_SUS SUS ON B.CD_PROCEDIMENTO = SUS.CD_PROCEDIMENTO
  WHERE B.CD_PROCEDIMENTO IS NOT NULL
),

-- PARTE 2: CÁLCULO DE MOVIMENTAÇÕES (SEU PRIMEIRO CÓDIGO, MODIFICADO)
DADOS_BRUTOS_DIARIOS AS (
  SELECT
    DIA,
    CLINICA,
    SUM(pac_int_00h) AS pac_int_00h,
    SUM(ent_internados) AS ent_internados,
    SUM(ent_transf) AS ent_transf,
    SUM(sai_altas) AS sai_altas,
    SUM(sai_transfpara) AS sai_transfpara,
    SUM(sai_obitos) AS sai_obitos
  FROM (
      --- Bloco 1: Pacientes à Meia-Noite ---
      SELECT c.DATA AS DIA, cla.CLINICA, COUNT(*) AS pac_int_00h, 0 ent_internados, 0 ent_transf, 0 sai_altas, 0 sai_transfpara, 0 sai_obitos
      FROM dbamv.mov_int
      JOIN dbamv.atendime ON mov_int.cd_atendimento = atendime.cd_atendimento
      JOIN CLASSIFICACAO_CLINICA cla ON atendime.cd_atendimento = cla.cd_atendimento
      , contador c
      WHERE TRUNC(mov_int.dt_mov_int) <= c.DATA - 1 AND TRUNC(NVL(mov_int.dt_lib_mov, SYSDATE)) > c.DATA - 1 AND mov_int.tp_mov IN ('O', 'I') AND atendime.tp_atendimento IN ('I', 'H', 'U') AND atendime.cd_multi_empresa = '40' AND atendime.cd_atendimento_pai IS NULL
      GROUP BY c.DATA, cla.CLINICA
      UNION ALL
      --- Bloco 2: Entradas por Internação ---
      SELECT c.DATA AS DIA, cla.CLINICA, 0, COUNT(*), 0, 0, 0, 0
      FROM dbamv.atendime
      JOIN dbamv.mov_int ON atendime.cd_atendimento = mov_int.cd_atendimento
      JOIN CLASSIFICACAO_CLINICA cla ON atendime.cd_atendimento = cla.cd_atendimento
      , contador c
      WHERE TRUNC(mov_int.dt_mov_int) = TRUNC(c.DATA) AND mov_int.tp_mov = 'I' AND atendime.tp_atendimento IN ('I', 'H', 'U') AND atendime.cd_multi_empresa = '40' AND atendime.cd_atendimento_pai IS NULL
      GROUP BY c.DATA, cla.CLINICA
      UNION ALL
      --- Bloco 3: Entradas por Transferência ---
      SELECT c.DATA AS DIA, cla.CLINICA, 0, 0, COUNT(*), 0, 0, 0
      FROM dbamv.mov_int
      JOIN dbamv.atendime ON mov_int.cd_atendimento = atendime.cd_atendimento
      JOIN CLASSIFICACAO_CLINICA cla ON atendime.cd_atendimento = cla.cd_atendimento
      JOIN dbamv.leito ON mov_int.cd_leito = leito.cd_leito
      JOIN dbamv.leito leito1 ON mov_int.cd_leito_anterior = leito1.cd_leito
      JOIN dbamv.unid_int ON leito.cd_unid_int = unid_int.cd_unid_int
      JOIN dbamv.unid_int unid_int1 ON leito1.cd_unid_int = unid_int1.cd_unid_int
      , contador c
      WHERE mov_int.tp_mov = 'O' AND TRUNC(mov_int.dt_mov_int) = c.DATA AND unid_int.cd_unid_int <> unid_int1.cd_unid_int AND atendime.tp_atendimento IN ('I', 'H', 'U') AND atendime.cd_multi_empresa = '40' AND atendime.cd_atendimento_pai IS NULL
      GROUP BY c.DATA, cla.CLINICA
      UNION ALL
      --- Bloco 4: Saídas por Alta ---
      SELECT c.DATA AS DIA, cla.CLINICA, 0, 0, 0, COUNT(*), 0, 0
      FROM dbamv.atendime
      JOIN CLASSIFICACAO_CLINICA cla ON atendime.cd_atendimento = cla.cd_atendimento
      , contador c
      WHERE TRUNC(atendime.dt_alta) = c.DATA AND atendime.tp_atendimento IN ('I', 'H', 'U') AND atendime.cd_leito IS NOT NULL AND (EXISTS (SELECT 1 FROM dbamv.mot_alt ma WHERE ma.cd_mot_alt = atendime.cd_mot_alt AND ma.tp_mot_alta <> 'O') OR EXISTS (SELECT 1 FROM dbamv.tip_res tr WHERE tr.cd_tip_res = atendime.cd_tip_res AND tr.sn_obito <> 'S')) AND atendime.cd_multi_empresa = '40' AND atendime.cd_atendimento_pai IS NULL
      GROUP BY c.DATA, cla.CLINICA
      UNION ALL
      --- Bloco 5: Saídas por Transferência ---
      SELECT c.DATA AS DIA, cla.CLINICA, 0, 0, 0, 0, COUNT(*), 0
      FROM dbamv.mov_int
      JOIN dbamv.atendime ON mov_int.cd_atendimento = atendime.cd_atendimento
      JOIN CLASSIFICACAO_CLINICA cla ON atendime.cd_atendimento = cla.cd_atendimento
      JOIN dbamv.leito ON mov_int.cd_leito_anterior = leito.cd_leito
      JOIN dbamv.leito leito1 ON mov_int.cd_leito = leito1.cd_leito
      JOIN dbamv.unid_int ON leito.cd_unid_int = unid_int.cd_unid_int
      JOIN dbamv.unid_int unid_int1 ON leito1.cd_unid_int = unid_int1.cd_unid_int
      , contador c
      WHERE TRUNC(mov_int.dt_mov_int) = c.DATA AND mov_int.tp_mov = 'O' AND unid_int.cd_unid_int <> unid_int1.cd_unid_int AND atendime.tp_atendimento IN ('I', 'H', 'U') AND atendime.cd_multi_empresa = '40' AND atendime.cd_atendimento_pai IS NULL
      GROUP BY c.DATA, cla.CLINICA
      UNION ALL
      --- Bloco 6: Saídas por Óbito ---
      SELECT c.DATA AS DIA, cla.CLINICA, 0, 0, 0, 0, 0, COUNT(*)
      FROM dbamv.atendime
      JOIN CLASSIFICACAO_CLINICA cla ON atendime.cd_atendimento = cla.cd_atendimento
      , contador c
      WHERE TRUNC(atendime.dt_alta) = c.DATA AND atendime.cd_leito IS NOT NULL AND (EXISTS (SELECT 1 FROM dbamv.mot_alt ma WHERE ma.cd_mot_alt = atendime.cd_mot_alt AND ma.tp_mot_alta = 'O') OR EXISTS (SELECT 1 FROM dbamv.tip_res tr WHERE tr.cd_tip_res = atendime.cd_tip_res AND tr.sn_obito = 'S')) AND atendime.cd_multi_empresa = '40' AND atendime.cd_atendimento_pai IS NULL
      GROUP BY c.DATA, cla.CLINICA
  ) DADOS_MOVIMENTOS
  GROUP BY DIA, CLINICA
)

-- PARTE 3: CONSULTA FINAL COM A SUA FÓRMULA
SELECT
  TO_CHAR(DIA, 'DD/MM/YYYY') AS DIA,
  CLINICA,
  (pac_int_00h + ent_internados + ent_transf) - (sai_altas + sai_transfpara + sai_obitos) AS TOTAL_PACIENTE_DIA
FROM DADOS_BRUTOS_DIARIOS
ORDER BY DIA, CLINICA