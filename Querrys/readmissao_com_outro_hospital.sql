SELECT
    a.cd_paciente,
    p.nm_paciente,
    a.cd_atendimento,
    a.dt_atendimento,
    a.hr_atendimento,

    -- DATA HORA CORRIGIDA
    (TRUNC(a.dt_atendimento) + (a.hr_atendimento - TRUNC(a.hr_atendimento))) AS data_hora_real_atendimento,

    a.dt_alta,
    a.hr_alta,
    a_anterior.cd_atendimento_ant,

    NVL(a_anterior.hr_alta_ant, a_anterior.hr_alta_medica_ant) AS data_hora_alta_anterior,

    -- CALCULO DE DIAS COM A DATA CORRIGIDA
    ROUND(
        ( (TRUNC(a.dt_atendimento) + (a.hr_atendimento - TRUNC(a.hr_atendimento))) - NVL(a_anterior.hr_alta_ant, a_anterior.hr_alta_medica_ant) )
    , 2) AS qtd_dias_readmissao,

    -- ========== FLAG INTERNACAO OUTRO HOSPITAL ==========
    CASE
        WHEN outro_hosp.cd_atendimento_outro IS NOT NULL THEN 'SIM'
        ELSE 'NAO'
    END AS internou_outro_hospital,

    outro_hosp.cd_multi_empresa_outro AS cd_hospital_intermediario,
    outro_hosp.nm_empresa_outro AS nm_hospital_intermediario,
    outro_hosp.dt_internacao_outro,
    outro_hosp.hr_internacao_outro,
    outro_hosp.dt_alta_outro,
    outro_hosp.hr_alta_outro,
    -- =======================================================

    a.cd_cid,
    e.ds_especialid,
    NVL(u.cd_unid_int, o.cd_ori_ate) AS cd_unid_int,
    TRIM(NVL(u.ds_unid_int, o.ds_ori_ate)) AS ds_unid_int
FROM
    (
      SELECT
        NVL($pgmvDataIni$, TRUNC(SYSDATE)) AS dt_ini_base,
        NVL($pgmvDataFim$, TRUNC(SYSDATE)) AS dt_fim_base
      FROM dual
    ) params,
    atendime a
    INNER JOIN paciente p ON a.cd_paciente = p.cd_paciente
    INNER JOIN especialid e ON a.cd_especialid = e.cd_especialid
    LEFT JOIN leito l ON l.cd_leito = a.cd_leito
    LEFT JOIN unid_int u ON u.cd_unid_int = l.cd_unid_int AND u.sn_ativo = 'S'
    LEFT JOIN ori_ate o ON o.cd_ori_ate = a.cd_ori_ate
    INNER JOIN (
        SELECT
            ant.cd_paciente AS cd_paciente_ant,
            ant.cd_atendimento AS cd_atendimento_ant,
            ant.hr_atendimento AS hr_atendimento_ant,
            ant.hr_alta AS hr_alta_ant,
            ant.hr_alta_medica AS hr_alta_medica_ant
        FROM atendime ant
        WHERE ant.tp_atendimento = 'I'
          AND ant.cd_multi_empresa = 40
    ) a_anterior
    ON a_anterior.cd_paciente_ant = a.cd_paciente
       AND a_anterior.cd_atendimento_ant < a.cd_atendimento
       AND ( (TRUNC(a.dt_atendimento) + (a.hr_atendimento - TRUNC(a.hr_atendimento))) - NVL(a_anterior.hr_alta_ant, a_anterior.hr_alta_medica_ant) <= 29 )
       AND a_anterior.cd_atendimento_ant = (
            SELECT MAX(sub.cd_atendimento)
            FROM atendime sub
            WHERE sub.tp_atendimento = 'I'
              AND sub.cd_multi_empresa = 40
              AND sub.cd_paciente = a.cd_paciente
              AND sub.cd_atendimento < a.cd_atendimento
              AND ( (TRUNC(a.dt_atendimento) + (a.hr_atendimento - TRUNC(a.hr_atendimento))) - NVL(sub.hr_alta, sub.hr_alta_medica) <= 29 )
       )
    -- ========== JOIN PARA ULTIMA INTERNACAO EM OUTRO HOSPITAL NO INTERVALO ==========
    LEFT JOIN (
        SELECT
            cd_paciente_outro,
            cd_atendimento_outro,
            cd_multi_empresa_outro,
            nm_empresa_outro,
            dt_internacao_outro,
            hr_internacao_outro,
            dt_alta_outro,
            hr_alta_outro,
            dh_internacao_real,
            dh_alta_real
        FROM (
            SELECT
                out.cd_paciente AS cd_paciente_outro,
                out.cd_atendimento AS cd_atendimento_outro,
                out.cd_multi_empresa AS cd_multi_empresa_outro,
                emp.ds_multi_empresa AS nm_empresa_outro,
                out.dt_atendimento AS dt_internacao_outro,
                out.hr_atendimento AS hr_internacao_outro,
                out.dt_alta AS dt_alta_outro,
                NVL(out.hr_alta, out.hr_alta_medica) AS hr_alta_outro,
                (TRUNC(out.dt_atendimento) + (out.hr_atendimento - TRUNC(out.hr_atendimento))) AS dh_internacao_real,
                NVL(out.hr_alta, out.hr_alta_medica) AS dh_alta_real,
                ROW_NUMBER() OVER (
                    PARTITION BY out.cd_paciente
                    ORDER BY out.dt_atendimento DESC, out.hr_atendimento DESC
                ) AS rn
            FROM atendime out
            LEFT JOIN multi_empresas emp ON emp.cd_multi_empresa = out.cd_multi_empresa
            WHERE out.tp_atendimento = 'I'
              AND out.cd_multi_empresa <> 40
        )
        WHERE rn = 1
    ) outro_hosp
    ON outro_hosp.cd_paciente_outro = a.cd_paciente
       -- Internacao no outro hospital deve ser APOS a alta anterior
       AND outro_hosp.dh_internacao_real > NVL(a_anterior.hr_alta_ant, a_anterior.hr_alta_medica_ant)
       -- E ANTES da admissao atual
       AND outro_hosp.dh_internacao_real < (TRUNC(a.dt_atendimento) + (a.hr_atendimento - TRUNC(a.hr_atendimento)))
    -- =========================================================================
WHERE
    a.tp_atendimento = 'I'
    AND a.cd_multi_empresa = 40
    AND a.dt_atendimento BETWEEN params.dt_ini_base AND params.dt_fim_base
ORDER BY
    a.dt_atendimento DESC,
    p.nm_paciente
