SELECT
    atd.cd_atendimento,
    pac.nm_paciente,
    tip.cd_tip_presc,
    tip.ds_tip_presc,
    itpmed.ds_itpre_med AS descricao_item,
    itpmed.qt_itpre_med AS qtd,
    pmed.cd_setor,
    se.nm_setor,
    prest.nm_prestador AS prescritor,
    pmed.dt_pre_med,
    pmed.hr_pre_med,
    doc.dh_criacao,
    doc.tp_status
FROM dbamv.itpre_med itpmed
INNER JOIN dbamv.pre_med pmed
    ON itpmed.cd_pre_med = pmed.cd_pre_med
INNER JOIN dbamv.atendime atd
    ON pmed.cd_atendimento = atd.cd_atendimento
INNER JOIN dbamv.paciente pac
    ON atd.cd_paciente = pac.cd_paciente
INNER JOIN dbamv.pw_documento_clinico doc
    ON pmed.cd_documento_clinico = doc.cd_documento_clinico
INNER JOIN dbamv.tip_presc tip
    ON itpmed.cd_tip_presc = tip.cd_tip_presc
LEFT JOIN dbamv.setor se
    ON pmed.cd_setor = se.cd_setor
LEFT JOIN dbamv.prestador prest
    ON pmed.cd_prestador = prest.cd_prestador
WHERE itpmed.cd_tip_esq = 'POD'
  AND atd.cd_multi_empresa = 40
  AND doc.tp_status NOT IN ('CANCELADO', 'ABERTO')
  AND doc.dh_criacao BETWEEN TO_DATE(TO_CHAR($DataIniHugo$,'DD/MM/YYYY'), 'DD/MM/YYYY')
                         AND TO_DATE(TO_CHAR($DataFimHugo$,'DD/MM/YYYY') || ' 23:59:59', 'DD/MM/YYYY HH24:MI:SS')
ORDER BY doc.dh_criacao, pac.nm_paciente
