# 03 - Ambulatorio e Agendamento

> Consultas ambulatoriais, agenda, central de marcacao

## Resumo

- **Tabelas**: 65
- **Owners**: CONSULTA, DBAMV

---

## CONSULTA.VDIC_ATENDIME_PRESTADOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ATENDIMENTO | NUMBER | N |  |
| 2 | CD_PRESTADOR | NUMBER | N |  |
| 3 | NM_PRESTADOR | VARCHAR2 | N |  |
| 4 | CD_PACIENTE | NUMBER | N |  |
| 5 | NM_PACIENTE | VARCHAR2 | N |  |
| 6 | MES | VARCHAR2 | Y |  |
| 7 | ANO | VARCHAR2 | Y |  |
| 8 | DT_ATENDIMENTO | VARCHAR2 | Y |  |
| 9 | DT_ALTA | VARCHAR2 | Y |  |
| 10 | TP_ATENDIMENTO | VARCHAR2 | N |  |
| 11 | TIPO_ATENDIMENTO | VARCHAR2 | Y |  |

---

## CONSULTA.VDIC_AVAL_FARMACEUTICAS_SW

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DATA | VARCHAR2 | Y |  |
| 2 | DS_UNID_INT | VARCHAR2 | N |  |
| 3 | CD_PRE_MED | NUMBER | N |  |
| 4 | DS_TIP_PRESC | VARCHAR2 | N |  |
| 5 | PERCENTUAL | NUMBER | Y |  |

---

## CONSULTA.VDIC_CIRURGIAS_ELETIVAS_URG

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PACIENTE | NUMBER | Y |  |
| 2 | CD_ATENDIMENTO | NUMBER | Y |  |
| 3 | CD_AVISO_CIRURGIA | NUMBER | N |  |
| 4 | NM_PACIENTE | VARCHAR2 | Y |  |
| 5 | DT_REALIZACAO | DATE | Y |  |
| 6 | TIPO | VARCHAR2 | Y |  |
| 7 | DATA_FILTRO | DATE | Y |  |

---

## CONSULTA.VDIC_CIRURGIA_PRESTADOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | Y |  |
| 2 | CD_AVISO_CIRURGIA | NUMBER | Y |  |
| 3 | DT_AVISO_CIRURGIA | VARCHAR2 | Y |  |
| 4 | CD_ATENDIMENTO | NUMBER | Y |  |
| 5 | CD_PACIENTE | NUMBER | Y |  |
| 6 | NM_PACIENTE | VARCHAR2 | Y |  |
| 7 | CD_PRESTADOR | NUMBER | Y |  |
| 8 | NM_PRESTADOR | VARCHAR2 | Y |  |
| 9 | DS_CIRURGIA | VARCHAR2 | Y |  |
| 10 | ANO | VARCHAR2 | Y |  |
| 11 | MES | VARCHAR2 | Y |  |
| 12 | TIPO_FUNCAO | VARCHAR2 | Y |  |
| 13 | TP_FUNCAO | VARCHAR2 | Y |  |

---

## CONSULTA.VDIC_DATA_EXTENSO_ATUAL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DATA_ATUAL | VARCHAR2 | Y |  |

---

## CONSULTA.VDIC_DESCRICAO_CIRURGIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AVISO_CIRURGIA | NUMBER | N |  |
| 2 | LO_VALOR | VARCHAR2 | Y |  |
| 3 | DH_DOCUMENTO | VARCHAR2 | Y |  |
| 4 | MES | VARCHAR2 | Y |  |
| 5 | ANO | VARCHAR2 | Y |  |
| 6 | CD_PRESTADOR | NUMBER | N |  |
| 7 | TP_STATUS | VARCHAR2 | Y |  |

---

## CONSULTA.VDIC_ENCAMINHA_PRESTADOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ENCAMINHAMENTO | NUMBER | Y |  |
| 2 | CD_ATENDIMENTO | NUMBER | N |  |
| 3 | CD_PRESTADOR | NUMBER | Y |  |
| 4 | NM_PRESTADOR | VARCHAR2 | N |  |
| 5 | CD_PACIENTE | NUMBER | N |  |
| 6 | NM_PACIENTE | VARCHAR2 | N |  |
| 7 | ANO | VARCHAR2 | Y |  |
| 8 | MES | VARCHAR2 | Y |  |
| 9 | DT_ENCAMINHAMENTO | VARCHAR2 | Y |  |

---

## CONSULTA.VDIC_ETIQUETA_DIE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PACIENTE | NUMBER | N |  |
| 2 | NM_PACIENTE | VARCHAR2 | N |  |
| 3 | DT_NASCIMENTO | DATE | Y |  |
| 4 | DS_UNID_INT | VARCHAR2 | N |  |
| 5 | LEITO | VARCHAR2 | Y |  |
| 6 | CD_ATENDIMENTO | NUMBER | N |  |
| 7 | CD_TIP_ESQ | VARCHAR2 | N |  |
| 8 | CD_TIP_PRESC | NUMBER | N |  |
| 9 | DS_TIP_PRESC | VARCHAR2 | N |  |
| 10 | CD_PRE_MED | NUMBER | N |  |
| 11 | DS_ITPRE_MED | VARCHAR2 | Y |  |
| 12 | DATA_PRESCRICAO | DATE | Y |  |
| 13 | DATA_ATUAL | DATE | Y |  |

---

## CONSULTA.VDIC_HEMOCOMP_QUANTIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DS_SANGUE_DERIVADOS | VARCHAR2 | N |  |
| 2 | TOTAL | NUMBER | Y |  |

---

## CONSULTA.VDIC_INTERNACAO_30_DIAS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | IDADE | NUMBER | Y |  |
| 2 | ATENDIMENTO | NUMBER | N |  |
| 3 | PRONTUARIO | NUMBER | N |  |
| 4 | NOME | VARCHAR2 | N |  |
| 5 | DT_ATENDIMENTO | DATE | N |  |
| 6 | ALTA | DATE | Y |  |
| 7 | SITUACAO | VARCHAR2 | Y |  |
| 8 | DIAS | NUMBER | Y |  |
| 9 | LOCALIZACAO | VARCHAR2 | N |  |

---

## CONSULTA.VDIC_ITPRE_MED_PRESCRICAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITPRE_MED | NUMBER | N |  |
| 2 | DS_TIP_PRESC | VARCHAR2 | Y |  |
| 3 | DS_ITPRE_MED | VARCHAR2 | Y |  |
| 4 | DH_REGISTRO | VARCHAR2 | Y |  |
| 5 | CD_PRE_MED | NUMBER | N |  |
| 6 | CD_PRESTADOR | NUMBER | Y |  |
| 7 | MES | VARCHAR2 | Y |  |
| 8 | ANO | VARCHAR2 | Y |  |

---

## CONSULTA.VDIC_PAC_LOCAL_PROCEDR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DS_MEIO_TRANSPORTE | VARCHAR2 | Y |  |
| 2 | CIDADE | VARCHAR2 | Y |  |
| 3 | MES_ANO | VARCHAR2 | Y |  |
| 4 | QTDE | NUMBER | Y |  |
| 5 | PERC1 | NUMBER | Y |  |
| 6 | REG | NUMBER | Y |  |
| 7 | PERC2 | NUMBER | Y |  |
| 8 | REG_INT | NUMBER | Y |  |
| 9 | PERC3 | NUMBER | Y |  |
| 10 | REG_NINT | NUMBER | Y |  |
| 11 | PERC4 | NUMBER | Y |  |
| 12 | NREG | NUMBER | Y |  |
| 13 | PERC5 | NUMBER | Y |  |
| 14 | NREG_INT | NUMBER | Y |  |
| 15 | PERC6 | NUMBER | Y |  |
| 16 | NREG_NINT | NUMBER | Y |  |
| 17 | PERC7 | NUMBER | Y |  |

---

## CONSULTA.VDIC_PARECER_PRESTADOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PAR_MED | NUMBER | Y |  |
| 2 | CD_ATENDIMENTO | NUMBER | Y |  |
| 3 | CD_PRESTADOR | NUMBER | Y |  |
| 4 | NM_PRESTADOR | VARCHAR2 | Y |  |
| 5 | MES | VARCHAR2 | Y |  |
| 6 | ANO | VARCHAR2 | Y |  |
| 7 | DT_PARECER | VARCHAR2 | Y |  |
| 8 | DS_SOLICITACAO | VARCHAR2 | Y |  |
| 9 | DS_PARECER | VARCHAR2 | Y |  |
| 10 | TIPO_PARECER | VARCHAR2 | Y |  |

---

## CONSULTA.VDIC_PRESCRICAO_PRESTADOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRE_MED | NUMBER | N |  |
| 2 | CD_ATENDIMENTO | NUMBER | N |  |
| 3 | CD_PACIENTE | NUMBER | N |  |
| 4 | NM_PACIENTE | VARCHAR2 | N |  |
| 5 | DT_ATENDIMENTO | VARCHAR2 | Y |  |
| 6 | DT_ALTA | VARCHAR2 | Y |  |
| 7 | DT_PRE_MED | VARCHAR2 | Y |  |
| 8 | CD_OBJETO | NUMBER | N |  |
| 9 | NM_OBJETO | VARCHAR2 | N |  |
| 10 | TIPO_ATENDIMENTO | VARCHAR2 | Y |  |
| 11 | TP_ATENDIMENTO | VARCHAR2 | N |  |
| 12 | CD_PRESTADOR | NUMBER | N |  |
| 13 | MES | VARCHAR2 | Y |  |
| 14 | ANO | VARCHAR2 | Y |  |
| 15 | NM_PRESTADOR | VARCHAR2 | N |  |
| 16 | DS_EVOLUCAO | VARCHAR2 | Y |  |

---

## CONSULTA.VDIC_PRESTADOR_PROD_GLOBAL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRESTADOR | NUMBER | N |  |
| 2 | PRESTADOR | VARCHAR2 | N |  |
| 3 | MES_FF | VARCHAR2 | Y |  |
| 4 | ANO | VARCHAR2 | Y |  |
| 5 | CD_ESPECIALIDADE | NUMBER | N |  |
| 6 | ESPECIALIDADE | VARCHAR2 | N |  |
| 7 | DS_CODIGO_CONSELHO | VARCHAR2 | Y |  |
| 8 | SN_ATUANTE | VARCHAR2 | N |  |
| 9 | TP_VINCULO | VARCHAR2 | Y |  |
| 10 | PCT_URG | NUMBER | Y |  |
| 11 | PCT_AT_ENCAM | NUMBER | Y |  |
| 12 | PARECERES_SOL | NUMBER | Y |  |
| 13 | PARECERES_REA | NUMBER | Y |  |
| 14 | CIRURGIAS | NUMBER | Y |  |
| 15 | PRESCRICOES | NUMBER | Y |  |
| 16 | EVOLUCOES | NUMBER | Y |  |
| 17 | AUXILIAR | NUMBER | Y |  |
| 18 | ATEND_AMB | NUMBER | Y |  |

---

## CONSULTA.VDIC_REV_DOC_PRONT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | PRONTUARIO | NUMBER | N |  |
| 2 | NOME | VARCHAR2 | N |  |
| 3 | NASCIMENTO | DATE | Y |  |
| 4 | SEXO | VARCHAR2 | N |  |
| 5 | V_NM | CHAR | Y |  |
| 6 | V_DT | CHAR | Y |  |
| 7 | V_SX | CHAR | Y |  |
| 8 | V_MAE | CHAR | Y |  |
| 9 | V_NAT | CHAR | Y |  |
| 10 | V_END | CHAR | Y |  |
| 11 | V_ANAM | CHAR | Y |  |
| 12 | V_EVO_ENF | CHAR | Y |  |
| 13 | V_EVO_MED | CHAR | Y |  |
| 14 | V_INTERN | CHAR | Y |  |
| 15 | V_PER_INTERN | VARCHAR2 | Y |  |
| 16 | V_CIRURGIA | CHAR | Y |  |
| 17 | V_PAREC | CHAR | Y |  |
| 18 | V_PAREC_RESP | CHAR | Y |  |
| 19 | V_PRESC | CHAR | Y |  |
| 20 | V_AMBULA | CHAR | Y |  |
| 21 | V_ALTA_MED | CHAR | Y |  |
| 22 | V_EXA_RX | CHAR | Y |  |
| 23 | V_NM_RX | VARCHAR2 | Y |  |
| 24 | V_EVO_AMB | CHAR | Y |  |
| 25 | V_EVO_AMB_ENF | CHAR | Y |  |
| 26 | V_DIAG_URG | CHAR | Y |  |
| 27 | V_DS_DIAG_URG | VARCHAR2 | Y |  |
| 28 | V_DIAG_INT | CHAR | Y |  |
| 29 | V_DS_DIAG_INT | VARCHAR2 | Y |  |
| 30 | V_ESP_NAO_ASSINADO | VARCHAR2 | Y |  |
| 31 | V_ASSINADOS | CHAR | Y |  |
| 32 | V_UNIDS_INT | VARCHAR2 | Y |  |
| 33 | V_EVO_NA_INT | CHAR | Y |  |
| 34 | V_INVASIVO | CHAR | Y |  |
| 35 | V_EXAME_URG | VARCHAR2 | Y |  |
| 36 | V_EXAME_INT | CHAR | Y |  |
| 37 | V_EXAMES_INT | VARCHAR2 | Y |  |
| 38 | V_EVO_PROC_CIR | CHAR | Y |  |
| 39 | V_EVO_PROC_INV | CHAR | Y |  |
| 40 | V_FICHA_DESCRICAO_CIR | CHAR | Y |  |

---

## DBAMV.ACRESCIMO_TEMPO_SCMA
> Cadastro de tempos para serem acrescidos ou descontados do tempo padr?o de realizac?o do item de agendamento. Para descontar, cadastra-se negativo.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ACRESCIMO_TEMPO | NUMBER | N | Codigo do Acrescimo |
| 2 | DS_ACRESCIMO_TEMPO | VARCHAR2 | N | Descric?o do Acrescimo |
| 3 | QT_ACRESCIMO_TEMPO | NUMBER | N | Valor do acrescimo em minutos |

---

## DBAMV.AGENDA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AGENDA | NUMBER | N |  |
| 2 | CD_PRESTADOR | NUMBER | N |  |
| 3 | DT_AGENDA | DATE | N |  |
| 4 | CD_TURNO | NUMBER | N |  |

---

## DBAMV.AGENDAMENTO_ONCOLOGICO
> TABELA DE HORÁRIOS AGENDADOS DA ONCOLOGIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AGENDAMENTO_ONCOLOGICO | NUMBER | N | CHAVE DOS AGENDAMENTOS |
| 2 | DH_INICIO_AGENDAMENTO_ONC | DATE | N | DATA E HORA DE INICIO DO AGENDAMENTO |
| 3 | DH_FINAL_AGENDAMENTO_ONC | DATE | N | DATA E HORA DO FIM DO AGENDAMENTO |
| 4 | CD_RECURSO_ONCOLOGICO | NUMBER | N | CHAVE DO RECURSO ONCOLÓGICO DA AGENDA |
| 5 | CD_SOLIC_AGENDAMENTO | NUMBER | Y | CHAVE DA SOLICITAÇÃO DE AGENDAMENTO QUE GEROU O AGENDAMENTO |
| 6 | CD_ATENDIMENTO_PAI | NUMBER | Y | CHAVE DO ATENDIMENTO ORIGINAL QUE GEROU O ATENDIMENTO |
| 7 | CD_ATENDIMENTO | NUMBER | Y | CHAVE DO ATENDIMENTO ATUAL |
| 8 | TP_STATUS | VARCHAR2 | N | STATUS DO AGENDAMENTO. A- ATENDIDO, C- CANCELADO, G- AGENDADO, F- FALTA |
| 9 | DS_JUSTIFICATIVA_INTERVALO | VARCHAR2 | Y | JUSTIFICATIVA PREENCHIDA AO AGENDAR SEM RESPEITAR O INTERVALO ENTRE AS SESSOES |
| 10 | CD_PACIENTE | NUMBER | Y | Código do Paciente |
| 11 | CD_AGENDAMENTO_ONCOLOGICO_PAI | NUMBER | Y | Código do agendamento oncologico pai |
| 12 | CD_ITEM_AGENDAMENTO | NUMBER | Y | Código do Item de agendamento |
| 13 | CD_PROTOCOLO | NUMBER | Y | Código do protocolo |
| 14 | CD_CONVENIO | NUMBER | Y | Código do convênio |
| 15 | CD_CON_PLA | NUMBER | Y | Código do plano do convênio |
| 16 | CD_CON_PLA_GROUP | NUMBER | Y | Cdigo do sub-plano do convnio |
| 17 | DS_OBSERVACAO | VARCHAR2 | Y | Observação da solicitação avulsa |
| 18 | NR_CICLO | NUMBER | Y | Numero do ciclo realizado |
| 19 | NR_SESSAO | NUMBER | Y | Numero da sessão a ser realizada |
| 20 | NR_DIA | NUMBER | Y | Dia da realização |
| 21 | CD_SUB_PLANO | VARCHAR2 | Y | Código do sub-plano do convênio |
| 22 | CD_GUIA | NUMBER | Y | Indica o código da guia criada no atendimento através da recepção oncologica. |
| 23 | CD_USUARIO_AGENDAMENTO | VARCHAR2 | Y | Indica o usuário que realizou o agendamento. |
| 24 | CD_PRESTADOR | NUMBER | Y | Prestador responsável pela execução do tratamento oncológico |
| 25 | DH_FINAL_AGENDAMENTO_PREST | DATE | Y | Hora final do agendamento prestador |

---

## DBAMV.AGENDAMENTO_RESERVA_NF
> Tabela do agendamento de reserva de nota fiscal.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AGENDAMENTO_RESERVA_NF | NUMBER | N | Chave da tabela de agendamentos de reserva de NF. |
| 2 | CD_FORMULARIO_NF | NUMBER | N | Codigo do formulario do agendamento a ter notas reservadas. |
| 3 | CD_SERIE | VARCHAR2 | N | Serie do Formulario |
| 4 | DT_RESERVA | DATE | N | Data na qual e com a qual a reserva sera efetivada. |
| 5 | QT_NOTA_FISCAL | NUMBER | N | Quantidade de notas a reservar. |
| 6 | CD_CONVENIO | NUMBER | Y | Convenio a associar as notas reservadas. |
| 7 | DS_OBSERVACAO | VARCHAR2 | Y | Observac?o sobre o agendamento ou a reserva. |

---

## DBAMV.AGENDA_CENTRAL
> Agenda da Central de Marcac?es

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AGENDA_CENTRAL | NUMBER | N | Codigo da Agenda |
| 2 | TP_AGENDA | VARCHAR2 | N | Indica o tipo de agenda: Diagnostico por Imagem, Laboratorio ou Ambulatorio |
| 3 | SN_AGENDA_PUBLICA | VARCHAR2 | Y |  |
| 4 | CD_UNIDADE_ATENDIMENTO | NUMBER | Y | Codigo da Unidade de atendimento da Agenda |
| 5 | CD_RECURSO_CENTRAL | NUMBER | Y | Codigo do Recurso da Agenda |
| 6 | CD_PRESTADOR | NUMBER | Y | Codigo do Prestador da Agenda |
| 7 | CD_SETOR | NUMBER | N | Codigo do Setor da Agenda |
| 8 | DT_AGENDA | DATE | N | Data de atendimento da Agenda |
| 9 | HR_INICIO | DATE | N | Horario de inicio do atendimento da Agenda |
| 10 | HR_FIM | DATE | N | Horario de finalizac?o de atendimento da Agenda |
| 11 | SN_ATIVO | VARCHAR2 | N | Indicador para Agendas Ativas ou Inativas |
| 12 | SN_ATENDE_FERIADO | VARCHAR2 | Y | Indica se a Agenda atendera em Feriados ou n?o |
| 13 | DT_LIBERACAO | DATE | N | Data a partir da qual o Sistema permitira aos usuarios vizualizar a agenda |
| 14 | SN_SIA | VARCHAR2 | N | Indica se a Escala atende pacientes ambulatoriais pelo SUS: Apenas SUS, N?o Atende SUS, Atende Todos |
| 15 | QT_ATENDIMENTO | NUMBER | Y | Indica o n? maximo de atendimentos permitidos para a Agenda |
| 16 | QT_ENCAIXES | NUMBER | Y | Quantidade de encaixes permitidos para a agenda |
| 17 | SN_AGENDA_DINAMICA | VARCHAR2 | N | Indica se a agenda tera o tempo de atendimento fixo ou de acordo com o tempo de ralizac?o do proc... |
| 18 | QT_MARCADOS | NUMBER | Y | Quantidade de pacientes marcados ate o momento na Agenda |
| 19 | QT_ENCAIXES_MARCADOS | NUMBER | Y | Quantidade de encaixes marcados na agenda ate o momento |
| 20 | QT_TEMPO_MEDIO | NUMBER | N | Tempo que cada horario disponibilizara para  agendamento |
| 21 | CD_USUARIO | VARCHAR2 | N | Usuario que criou a agenda |
| 22 | TP_PRODUCAO | VARCHAR2 | Y |  |
| 23 | DS_CONSULTORIO | VARCHAR2 | Y | Identifica um consultorio para a gerac?o de Agendas |
| 24 | SN_FALTA | VARCHAR2 | Y | Indica se o Prestador/Recurso atendeu a  agenda |
| 25 | SN_SERVICO_LIVRE | VARCHAR2 | Y | Indica se o agendamentos ser?o controlados pela quantidade definida por Servico |
| 26 | SN_TIPO_LIVRE | VARCHAR2 | Y | Indica se o agendamentos ser?o controlados pela quantidade definida pelo Tipo de Atendimento |
| 27 | CD_MULTI_EMPRESA | VARCHAR2 | N | Codigo da mulcti-empresa da Agenda |
| 28 | CD_ESCALA_CENTRAL | NUMBER | Y | identifica o codigo da escala geradora da agenda |
| 29 | DT_GERACAO | DATE | Y | Data em que foi feita a gerac?o da agenda |
| 30 | CD_USUARIO_REGERACAO | VARCHAR2 | Y | Usuario que realizou a ultima regerac?o da agenda |
| 31 | DT_REGERACAO | DATE | Y | Data em que foi realizada a ultima regerac?o da agenda |
| 32 | CD_AGENDA_CENTRAL_INTEGRA | VARCHAR2 | Y | Codigo da AGENDA_CENTRAL na empresa externa |
| 33 | CD_SEQ_INTEGRA | NUMBER | Y | Codigo sequencial da integrac?o |
| 34 | DT_INTEGRA | DATE | Y | Data de integrac?o do registro |
| 35 | SN_PERMITE_ENCAIXE_EXTRA | VARCHAR2 | N | Indica se a agenda foi definida para permitir criac?o de encaixes alem do numero maximo permitido |
| 36 | SN_SOLICITA_SENHA_ENCAIXE | VARCHAR2 | N | Indica se a agenda solicitara informar senha para a realizac?o de encaixes ate a quantidade limite |
| 37 | SN_PERMITE_FILA_ESPERA | VARCHAR2 | N | Indica se a Agenda Permite ou n?o pacientes vindos da fila de Espera. |
| 38 | TP_HORARIO | VARCHAR2 | N | Indica se a agenda atende por Hora Marcada = M ou por Odem de Chegada = C |
| 39 | DS_OBS_AGENDA_CENTRAL | CLOB | Y | Observac?es da agenda |
| 40 | QT_PESO_MAXIMO | NUMBER | Y | Indica o peso máximo para as agendas geradas a partir da escala |
| 41 | QT_ALTURA_MAXIMA | NUMBER | Y | Indica a altura máxima para as agendas geradas a partir da escala |
| 42 | NR_IDADE_MINIMA | NUMBER | Y | Indica a idade mínima para as agendas geradas a partir da escala |
| 43 | NR_IDADE_MAXIMA | NUMBER | Y | Indica a idade máxmia para as agendas geradas a partir da escala |
| 44 | CD_COR_AREA_FAMILIA | NUMBER | Y |  |

---

## DBAMV.AGENDA_CENTRAL_CONVENIO
> Convenios permitidos para a Agenda da Central de Marcac?es

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AGENDA_CENTRAL | NUMBER | N | Codigo da Agenda relacionada |
| 2 | CD_CONVENIO | NUMBER | N | Codigo do convenio permitido para a agenda |
| 3 | QT_ATENDIMENTO | NUMBER | Y | quantidade de Atendimentos permitidos para o Convenio da agenda |

---

## DBAMV.AGENDA_CENTRAL_GRU_AGEN_PAC
> Tabela de Agendamento de Grupos da Central de Marcac?o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IT_AGENDA_CENTRAL | NUMBER | N | Codigo da Agenda relacioanda |
| 2 | CD_GRUPO_AGENDA_PAC | NUMBER | N | Codigo do Grupo de Pacientes cadastrado |
| 3 | CD_ATENDIMENTO | NUMBER | Y |  |
| 4 | CD_CONVENIO | NUMBER | Y | Convenio pelo qual o Paciente deste Grupo sera atendido |
| 5 | CD_CON_PLA | NUMBER | Y | Plano do convenio pelo qual o Paciente deste Grupo sera atendido |
| 6 | CD_ATENDIMENTO_PAI | NUMBER | Y | Codigo do Atendimento-pai de paciente em tratamento (Sess?es) |
| 7 | DT_GRAVACAO | DATE | Y | Data de realizac?o (gravac?o) do agendamento |
| 8 | CD_USUARIO | VARCHAR2 | Y | Usuario que realizou o agendamento |

---

## DBAMV.AGENDA_CENTRAL_ITEM_AGENDA
> Cadastro de Itens de Agendamento permitdos para a Agenda

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AGENDA_CENTRAL | NUMBER | N | Codigo da Agenda associada |
| 2 | CD_ITEM_AGENDAMENTO | NUMBER | N | Codigo do Item de Agendamento permitido |
| 3 | QT_MAX_ITEM_AGENDAMENTO | NUMBER | Y | quantidade maxima de agendamentos por item de agendamento |

---

## DBAMV.AGENDA_CENTRAL_SER_TIPO
> Cadastro de Servicos e Tipos de marcac?o permitidos para a Agenda

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AGENDA_CENTRAL | NUMBER | N | Codigo da agenda relacionada |
| 2 | CD_SER_DIS | NUMBER | N | Codigo do Servico permitido para a Agenda |
| 3 | CD_TIP_MAR | NUMBER | N | Codigo do Tipo de Marcac?o permitido para a Agenda |
| 4 | QT_ATENDIMENTO | NUMBER | Y | Quantidade de atendimentos permitidos para o servico e o Tipo |
| 5 | QT_ATENDIMENTO_ENCAIXE | NUMBER | Y | Quantidade maxima de atendimentos permitida por Servico e Tipo para o encaixe |

---

## DBAMV.AGENDA_CENTRAL_USUARIO
> Cadastro de Usuarios com permiss?o a agendas particulares

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AGENDA_CENTRAL | NUMBER | N | Codigo da Agenda associada |
| 2 | CD_USUARIO | VARCHAR2 | N | Usuario com permiss?o de acesso as agendas Privadas (n?o-publicas) |

---

## DBAMV.AGENDA_FILA_ESPERA
> Tabela de controle da Fila de Espera para a central de Agendamentos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AGENDA_FILA_ESPERA | NUMBER | N | Codigo identificador do registro da Fila de Espera |
| 2 | CD_AGENDA_CENTRAL | NUMBER | Y | Codigo de uma agenda para a Fila de Espera |
| 3 | DT_FILA_ESPERA | DATE | N | Data preferencial para agendamento (observe-se tambem o Tp_espera) |
| 4 | HR_FILA_ESPERA | DATE | Y | Hora preferencial, na data informada, para agendamento |
| 5 | TP_ESPERA | VARCHAR2 | N | Define se o Paciente quer ser agendado apenas na data informada ou se pode ser na primeira vaga d... |
| 6 | NR_FONE | VARCHAR2 | Y | Fone de contato para o paciente |
| 7 | DS_EMAIL | VARCHAR2 | Y | e-mail para contato com o paciente |
| 8 | DT_NASCIMENTO | DATE | Y | Data de nascimento do paciente |
| 9 | TP_SEXO | VARCHAR2 | Y | Tipo de sexo do paciente |
| 10 | CD_ITEM_AGENDAMENTO | NUMBER | N | codigo do Item de Agendamento de interesse do Paciente para agendamento |
| 11 | CD_RECURSO_CENTRAL | NUMBER | Y | Codigo do Recurso para a Fila de espera |
| 12 | TP_STATUS | VARCHAR2 | Y | Status em que se encontra o registro de Fila de espera: Aguardando, Cancelado ou Agendado |
| 13 | CD_UNIDADE_ATENDIMENTO | NUMBER | Y | codigo da Unidade de Atendimento solicitada para agendamento |
| 14 | CD_PACIENTE | NUMBER | Y | codigo do Paciente na Fila de espera |
| 15 | NM_PACIENTE | VARCHAR2 | Y | Nome do Paciente na Fila de Espera |
| 16 | CD_PRESTADOR | NUMBER | Y | codigo do Prestador solicitado para o agendamento |
| 17 | CD_SER_DIS | NUMBER | Y | codigo do Servico desejado para agendamento |
| 18 | CD_TIP_MAR | NUMBER | Y | codigo do tipo de Marcac?o solicitado |
| 19 | CD_CONVENIO | NUMBER | Y | Codigo do convenio do Paciente |
| 20 | CD_CON_PLA | NUMBER | Y | Codigo do plano do convenio do Paciente |
| 21 | CD_SETOR | NUMBER | Y |  |
| 22 | CD_USUARIO_CADASTRO | VARCHAR2 | Y | Codigo do usuario que realizou o registro na Fila de espera |
| 23 | DT_CADASTRO | DATE | Y | Data de cadastro do registro na Fila de espera |
| 24 | DS_OBSERVACAO | VARCHAR2 | Y | Observac?o para o registro da Fila de Espera |
| 25 | TP_INTERVALO | VARCHAR2 | Y | Tipo do intervalo a ser  utilizado para pesquisa |
| 26 | NR_INTERVALO | NUMBER | Y | Numero do tempo do intervalo a ser utilizado para pesquisa |
| 27 | CD_PRIORIDADE | NUMBER | Y | Codigo da prioridade do Agendamento. |
| 28 | CD_PATOLOGIA_GES | NUMBER | Y | Código da Patologia GES. Da tabela PATOLOGIA_GES. |

---

## DBAMV.AGENDA_GERADA
> Tabela de agendas geradas por solicitacao

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GERACAO_AGENDA | NUMBER | N | Codigo de solicitac?o da gerac?o das agendas. |
| 2 | CD_AGENDA_GERADA | NUMBER | N | Codigo da agenda gerada no periodo da solicitacao. |

---

## DBAMV.AGENDA_GERADA_AUTOMATICA
> Tabela para registro de agendas criadas através da procedure prc_scma_gerar_agenda.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AGENDA_CENTRAL | NUMBER | N | Código da agenda central gerada. |
| 2 | DS_LOG | VARCHAR2 | Y | Status da geração da agenda. |

---

## DBAMV.AGENDA_ONCOLOGICA
> TABELA DE HORÁRIOS LIVRES DA ONCOLOGIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AGENDA_ONCOLOGICA | NUMBER | N | CHAVE DA AGENDA |
| 2 | DH_INICIO_LIVRE | DATE | N | DATA E HORA INICIAL DO INTERVALO LIVRE DA AGENDA |
| 3 | DH_FINAL_LIVRE | DATE | N | DATA E HORA FINAL DO INTERVALO LIVRE DA AGENDA |
| 4 | CD_RECURSO_ONCOLOGICO | NUMBER | N | CHAVE DO RECURSO ONCOLÓGICO DA AGENDA |

---

## DBAMV.AGENDA_PRESTADOR_ONCOLOGICO
> Tabela de agenda prestador oncologico

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AGENDA_PRESTADOR | NUMBER | N | CHAVE DA AGENDA DO PRESTADOR |
| 2 | DH_INICIO_LIVRE | DATE | N | DATA E HORA INICIAL DO INTERVALO LIVRE DA AGENDA |
| 3 | DH_FINAL_LIVRE | DATE | N | DATA E HORA FINAL DO INTERVALO LIVRE DA AGENDA |
| 4 | CD_PRESTADOR_ONCOLOGICO | NUMBER | N | CHAVE DO PRESTADOR ONCOLÓGICO DA AGENDA |

---

## DBAMV.AGENDA_REMESSA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AGENDA_REMESSA | NUMBER | N |  |
| 2 | CD_CONVENIO | NUMBER | N |  |
| 3 | CD_AGRUPAMENTO | NUMBER | Y |  |
| 4 | DT_ABERTURA | DATE | Y |  |
| 5 | DT_FECHAMENTO | DATE | N |  |

---

## DBAMV.AGENDA_TURMA
> Cadastro de turmas do SCMA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AGENDA_TURMA | NUMBER | N | Codigo da agenda |
| 2 | CD_TURMA | NUMBER | N | Codigo da Turma (chave estrangeira) |
| 3 | DT_AGENDA | DATE | N | Data da agenda |
| 4 | DT_LIBERACAO | DATE | N | Data a partir da qual a agenda podera ser utilizada. |
| 5 | DT_GERACAO | DATE | N | Data em que a agenda foi gerada/liberada. |
| 6 | SN_ATIVO | VARCHAR2 | N | Indica se esta turma esta ativa para participar de futuras liberac?es |
| 7 | SN_EXIGE_ACOMPANHANTE | VARCHAR2 | N | Indica de para o agendamento e obrigatorio trazer um acompanhante |
| 8 | SN_PERMITE_ACOMPANHANTE | VARCHAR2 | N | Indica se e permitido trazer acompanhantes |
| 9 | SN_EXIGE_INDICACAO_MEDICA | VARCHAR2 | N | Indica se e necessario indicac?o medica para a turma |
| 10 | NR_IDADE_MINIMA | NUMBER | Y | Idade minima permitida para a turma. |
| 11 | NR_IDADE_MAXIMA | NUMBER | Y | Idade maxima permitida para a turma. |
| 12 | TP_SEXO | VARCHAR2 | N | Sexo permitido para a turma (A = Ambos, F = Feminino, M = Masculino) |
| 13 | CD_PROCEDIMENTO | VARCHAR2 | Y | Procedimento SUS vinculado ao atendimento nesta turma |
| 14 | CD_PRO_FAT | VARCHAR2 | N | Procedimento AMB vinculado ao atendimento desta turma |
| 15 | CD_SER_DIS | NUMBER | N | Servico vinculado ao atendimento desta turma |
| 16 | CD_TIP_MAR | NUMBER | N | Tipo de atendimento vinculado ao atendimento desta turma |
| 17 | CD_UNIDADE_ATENDIMENTO | NUMBER | Y | Unidade de atendimento para realizac?o do procedimento |
| 18 | CD_SETOR | NUMBER | N | Centro de custo de cobranca do procedimento. |
| 19 | CD_USUARIO | VARCHAR2 | N |  |
| 20 | DT_HORARIO_INICIAL | DATE | N |  |
| 21 | DT_HORARIO_FINAL | DATE | N |  |
| 22 | QT_PARTICIPANTES | NUMBER | Y |  |
| 23 | QT_ENCAIXES | NUMBER | Y |  |
| 24 | CD_ESCALA_TURMA | NUMBER | Y | Escala que gerou a agenda |

---

## DBAMV.AGENDA_TURMA_CONVENIO
> Convenios das agendas das turmas.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AGENDA_TURMA | NUMBER | N | Codigo da agenda |
| 2 | CD_CONVENIO | NUMBER | N | Codigo do Convenio |
| 3 | QT_MARCACOES | NUMBER | Y | Quantidade de agendamentos permitidos. |

---

## DBAMV.AGENDA_TURMA_FILA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AGENDA_TURMA | NUMBER | N |  |
| 2 | CD_PACIENTE | NUMBER | N | Codigo do Paciente |
| 3 | NM_PACIENTE | VARCHAR2 | N |  |
| 4 | CD_CON_PLA | NUMBER | N | Codigo do plano do paciente |
| 5 | CD_CONVENIO | NUMBER | N | Codigo do convenio do paciente |
| 6 | TP_SITUACAO | VARCHAR2 | N | Situac?o do Paciente na fila (G)Agendado (F)Fila |
| 7 | NR_TELEFONE_CONTATO | VARCHAR2 | N | Telefone de contato do paciente |
| 8 | DS_OBSERVACAO | VARCHAR2 | Y | Observac?o do paciente na fila de espera. |
| 9 | CD_USUARIO | VARCHAR2 | N |  |
| 10 | DT_CADASTRO | DATE | N |  |
| 11 | DT_AGENDAMENTO | DATE | N |  |
| 12 | CD_TRATAMENTO | NUMBER | Y |  |
| 13 | DT_NASCIMENTO | DATE | Y | Data de nascimento do paciente em espera. |
| 14 | QT_PESO | NUMBER | Y | Peso do paciente em espera |
| 15 | VL_ALTURA | NUMBER | Y | Altura do paciente em espera |
| 16 | TP_SEXO | VARCHAR2 | Y | Sexo do paciente em espera |
| 17 | DS_EMAIL | VARCHAR2 | Y |  |

---

## DBAMV.AGENDA_TURMA_PACIENTE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AGENDA_TURMA | NUMBER | N |  |
| 2 | CD_PACIENTE | NUMBER | N | Codigo do paciente  (chave primaria composta com cd_agenda_turma_horario) |
| 3 | NM_PACIENTE | VARCHAR2 | N |  |
| 4 | CD_CONVENIO | NUMBER | N | Codigo do convenio do paciente |
| 5 | CD_CON_PLA | NUMBER | N | Codigo do plano do paciente |
| 6 | NR_TELEFONE_CONTATO | VARCHAR2 | N | Telefone de contato do paciente |
| 7 | TP_SITUACAO | VARCHAR2 | N | Situac?o do Agendamento do Paciente (G)Agendado (P)Presente (F)Falta (C)Cancelado (A)Atendido (D)... |
| 8 | CD_ATENDIMENTO | NUMBER | Y |  |
| 9 | DS_OBSERVACAO | VARCHAR2 | Y | Observac?o do agendamento do paciente |
| 10 | CD_USUARIO | VARCHAR2 | N | Usuario que realizou o agendamento |
| 11 | DT_AGENDAMENTO | DATE | N | Data em que o agendamento foi realizado. |
| 12 | CD_TRATAMENTO | NUMBER | Y |  |
| 13 | DT_NASCIMENTO | DATE | Y | Data de nascimento do paciente agendado. |
| 14 | QT_PESO | NUMBER | Y | Peso do paciente agendado |
| 15 | VL_ALTURA | NUMBER | Y | Altura do paciente agendado |
| 16 | TP_SEXO | VARCHAR2 | Y | Sexo do paciente agendado |
| 17 | DS_EMAIL | VARCHAR2 | Y |  |

---

## DBAMV.AGENDA_TURMA_PRESTADOR
> Prestadores que atender?o as turmas

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AGENDA_TURMA | NUMBER | N |  |
| 2 | CD_PRESTADOR | NUMBER | N | Codigo do Prestador que atendera a turma (podera haver apenas um marcado com 'S') |
| 3 | SN_PRINCIPAL | VARCHAR2 | N | Indica se o prestador e o responsavel pelo atendimento (so podera haver um unico prestador com o ... |

---

## DBAMV.AGE_RX

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AGE_RX | NUMBER | N |  |
| 2 | CD_PRESTADOR | NUMBER | N |  |
| 3 | CD_CONVENIO | NUMBER | N |  |
| 4 | CD_SET_EXA | NUMBER | N |  |
| 5 | DT_AGE_RX | DATE | N |  |
| 6 | HR_INIC | DATE | N |  |
| 7 | HR_FIM | DATE | N |  |

---

## DBAMV.CONSULTA_NFE_DANFE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NR_CHAVE | VARCHAR2 | N | Indica a chave de acesso do sefaz |
| 2 | NR_CGC_CNPJ | NUMBER | N | Indica o CNPJ/CPF do fornecedor |
| 3 | DS_RAZAO_SOCIAL | VARCHAR2 | Y | Indica a razão social do fornecedor |
| 4 | NR_INSCRICAO_ESTADUAL | VARCHAR2 | Y | Indica a inscrição estadual |
| 5 | DH_EMISSAO | DATE | Y | Indica o horario de emissao |
| 6 | TP_NOTA | VARCHAR2 | Y | Indica o tipo da nota |
| 7 | VL_NOTA | NUMBER | Y | Indica o valor total da nota |
| 8 | DH_AUTORIZACAO | DATE | Y | Indica o horario de autorização |
| 9 | NR_PROTOCOLO | VARCHAR2 | Y | Indica o numero de protocolo |
| 10 | TP_SITUACAO | VARCHAR2 | Y | Indica a situação |
| 11 | NR_AUTORIZACAO | VARCHAR2 | Y | Indica o numero de autorização |
| 12 | TP_AMBIENTE | VARCHAR2 | Y | Indica o tipo de ambiente |
| 13 | SN_IMPORTADA_MGES | VARCHAR2 | N | Indica se o arquivo foi importado ao MGES |
| 14 | DH_IMPORTACAO_MGES | DATE | Y | Indica a hora que o arquivo foi importado |
| 15 | CD_USUARIO_IMPORTACAO | VARCHAR2 | Y | Indica o usuário que realizou a importação |
| 16 | SN_ACEITA_MANIFESTO | VARCHAR2 | N | Indica se o manifeto foi aceito ou não (S- Sim / N - Não / P - Pendente) |
| 17 | CD_USUARIO_MANIFESTO | VARCHAR2 | Y | Indica o usuario que respondeu ao manifesto |
| 18 | BL_ARQUIVO_XML | BLOB | Y | Armazena o arquivo enviado pelo sefaz em xml |
| 19 | BL_ARQUIVO_PDF | BLOB | Y | Armazena o arquivo enviado pelo sefaz em pdf |
| 20 | CD_MULTI_EMPRESA | NUMBER | Y | Armazena o código da empresa que é destinatária da nota fiscal emitida. |

---

## DBAMV.CONSULTA_PATOLOGIA_GES
> Tabela que listas as consultas medicas e os prazos de realização que devem ser cumpridos para uma etapa do protocolo.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONSULTA_PATOLOGIA_GES | NUMBER | N | Código identificador. |
| 2 | CD_ITEM_AGENDAMENTO | NUMBER | N | Item de agendamento do tipo ambulatorial relacionado. |
| 3 | CD_ETAPAS_ALERTA_PROTOCOLO | NUMBER | N | Código da etapa do protocolo relacionada. |
| 4 | TP_FAIXA_ETARIA | VARCHAR2 | N | Faixa etária A(D)ulto, (P)ediátrico, (A)mbos. |
| 5 | NR_DIAS_CONSULTA | NUMBER | Y | Número maximo de dias para realizar a consulta |
| 6 | DS_PERIODICIDADE | VARCHAR2 | Y | Periodicidade de realização da consulta. |
| 7 | DS_UNIDADE | VARCHAR2 | Y | Unidade de medida a ser solicitada |
| 8 | QT_QUANTIDADE | NUMBER | Y | Quantidade a ser solicitada |
| 9 | DS_OBSERVACAO | VARCHAR2 | Y | Observação |

---

## DBAMV.GERACAO_AGENDA
> Tabela de solicitacao de criac?o das agendas.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GERACAO_AGENDA | NUMBER | N | Codigo de solicitac?o da gerac?o das agendas. |
| 2 | CD_ESCALA | NUMBER | Y | Codigo da escala. |
| 3 | TP_AGENDA | VARCHAR2 | Y | Tipo das agendas. |
| 4 | TP_PERIODO | VARCHAR2 | Y | Tipo do periodo (S)Semanal, (Q)Quinzenal. |
| 5 | DT_LIBERACAO | DATE | Y | Data de liberac?o das agendas. |
| 6 | DT_INICIO | DATE | Y | Data inicial do periodo de gerac?o das agendas. |
| 7 | DT_FIM | DATE | Y | Data final do periodo de gerac?o das agendas. |
| 8 | SN_OPERA_DOMINGO | VARCHAR2 | N | Indicador para gerac?o no domingo. |
| 9 | SN_OPERA_SEGUNDA | VARCHAR2 | N | Indicador para gerac?o na segunda-feira. |
| 10 | SN_OPERA_TERCA | VARCHAR2 | N | Indicador para gerac?o na terca-feira. |
| 11 | SN_OPERA_QUARTA | VARCHAR2 | N | Indicador para gerac?o na quarta-feira. |
| 12 | SN_OPERA_QUINTA | VARCHAR2 | N | Indicador para gerac?o na quinta-feira. |
| 13 | SN_OPERA_SEXTA | VARCHAR2 | N | Indicador para gerac?o na sexta-feira. |
| 14 | SN_OPERA_SABADO | VARCHAR2 | N | Indicador para gerac?o no sabado. |
| 15 | CD_PRESTADOR | NUMBER | Y | Codigo do prestador. |
| 16 | CD_RECURSO_CENTRAL | NUMBER | Y | Codigo do recurso . |
| 17 | CD_SERVICO | NUMBER | Y | Codigo do servico. |
| 18 | CD_UNIDADE_ATENDIMENTO | NUMBER | Y | Codigo da unidade de atendimento. |
| 19 | CD_SETOR | NUMBER | Y | Codigo do setor. |
| 20 | SN_SOBREPOR_AGENDAS | VARCHAR2 | N | Indicador se e para sobrepor agendas sem pacientes. |
| 21 | CD_USUARIO | VARCHAR2 | Y |  |
| 22 | DT_GERACAO_AGENDA | DATE | Y | Data da solicitacao de gerac?o. |
| 23 | CD_MULTI_EMPRESA | NUMBER | Y | Código da empresa. |
| 24 | CD_ITEM_AGENDAMENTO | NUMBER | Y | Código do item de agendamento. |

---

## DBAMV.GERACAO_AGENDA_BACKGROUND
> Tabela que registra o status das gerações de agendas em background

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GERACAO_AGENDA | NUMBER | Y | Codigo de solicitacão da geracão das agendas. |
| 2 | DS_LOG | VARCHAR2 | Y | Indicador do status da geração de agendas em background. |

---

## DBAMV.INTERDICAO_AGENDAMENTO_ONCO
> TABELA DE INTERDIÇÃO DE AGENDAMENTO ONCOLOGICO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INTERDICAO | NUMBER | N | CHAVE DAS INTERDIÇÕES |
| 2 | DH_INICIAL | DATE | N | DATA E HORA INICIAL DA INTERDIÇÃO |
| 3 | DH_FINAL | DATE | N | DATA E HORA FINAL DA INTERDIÇÃO |
| 4 | DS_INTERDICAO | VARCHAR2 | N | DESCRIÇÃO DA INTERDIÇÃO |
| 5 | CD_RECURSO_ONCOLOGICO | NUMBER | N | C?IGO DO RECURSO ONCOL?ICO |
| 6 | TP_INTERDICAO | VARCHAR2 | N | TIPO DE INTERDIÇÃO (N- NORMAL; H HOR?IO DE FUNCIONAMENTO) |
| 7 | CD_USUARIO | VARCHAR2 | Y | CODIGO DO USUARIO QUE CADASTROU A INTERDICAO |

---

## DBAMV.ITENS_AGEND_DIAS_FALTA
> Tabela de vínculo entre Itens de Agendamento e Quantidade de dias do intervalo entre uma falta e o próximo agendamento do item.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IT_AGD_FALTA | NUMBER | N | Código do vínculo entre o Item de Agendamento e a quantidade de dias entre uma falta e o próximo ... |
| 2 | CD_ITEM_AGENDAMENTO | NUMBER | N | Código do Item de Agendamento, da tabela ITEM_AGENDAMENTO. |
| 3 | NR_DIAS_FALTA | NUMBER | N | Número de dias de intervalo entre uma falta e o próximo agendamento do item. |
| 4 | SN_ATIVO | VARCHAR2 | N | Indica se o vínculo está ativo. |
| 5 | SN_IMPEDITIVO | VARCHAR2 | N | Indica se será impeditiva a mensagem que será exibida caso tenha falta. |

---

## DBAMV.ITSESC_DIA
> Tabela de Horarios de Agendamentos para o Laboratorio.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ESCALA_DIA | NUMBER | N | Codigo da Escala. |
| 2 | NM_PACIENTE | VARCHAR2 | Y | Nome do Paciente |
| 3 | NR_TELEFONE | VARCHAR2 | Y | Numero do Telefone do Paciente |
| 4 | CD_PACIENTE | NUMBER | Y | Codigo do Paciente |
| 5 | CD_PED_LAB | NUMBER | Y | Codigo do Pedido de Exame |
| 6 | HR_AGENDA | DATE | N | Horario inicial da marcac?o |
| 7 | CD_ATENDIMENTO | NUMBER | Y | Codigo do Atendimento. |
| 8 | CD_CONVENIO | NUMBER | Y | Codigo do Convenio. |
| 9 | CD_CON_PLA | NUMBER | Y | Codigo do Plano de Convenio. |
| 10 | SN_ATENDIDO | VARCHAR2 | Y | Identificador - Paciente ja foi atendido ? |
| 11 | SN_ENCAIXE | VARCHAR2 | Y | Identificador - E um horario de encaixe ? |
| 12 | NM_USUARIO | VARCHAR2 | Y | Nome do Usuario que realizou o agendamento |
| 13 | NR_PESO | NUMBER | Y | Peso do Paciente |
| 14 | NR_ALTURA | NUMBER | Y | Numero da Altura. |
| 15 | DS_OBSERVACAO | VARCHAR2 | Y | Descric?o das Observac?es do Agendamento. |
| 16 | TP_SITUACAO | VARCHAR2 | Y |  |
| 17 | NR_IDADE | NUMBER | Y | Idade do Paciente. |
| 18 | DT_MARCACAO | DATE | Y | Data em que foi cadastrado o agendamento. |
| 19 | CD_ESCALA_DIA_PAI | NUMBER | Y | Codigo da Escala Pai - Utilizado no controle de tempo dos exames. |
| 20 | HR_AGENDA_PAI | DATE | Y | Horario do Escala Pai - Utilizado no controle de tempo dos exames. |
| 21 | SN_AGENDADO | VARCHAR2 | N | Identificador - Paciente esta agendado ? |
| 22 | SN_BLOQUEADO | VARCHAR2 | N | Identificador - Horario encontra-se indisponivel ? |
| 23 | SN_ATRASADO | VARCHAR2 | N | Identificador - Paciente chegou atradaso em relac?o ao horario agendado ? |
| 24 | NR_TEMPO_ATRASO | DATE | Y | Tempo de atraso do paciente |
| 25 | DT_SOLIC_MEDICA | DATE | Y | Data que foi emitida a requsic?o medica solicitando a realizac?o do procedimento |
| 26 | SN_LOCA_REGISTRO | VARCHAR2 | N | Identificador - Registro encontra-se locado para realizac?o de um agendamento ? |
| 27 | SN_IMPRIME_AVISO | VARCHAR2 | N | Identificador - Etiqueta de Aviso ao Same ja foi impressa ? |
| 28 | CD_CIDADE | NUMBER | Y |  |
| 29 | CD_UNIDADE_REGIONAL_UBS | VARCHAR2 | Y | Unidade Regional a qual pertence o horario |
| 30 | CD_DIVISAO_UNIDADE_REGIONAL | NUMBER | Y | Indica se os detalhes da divis?o |
| 31 | DT_INTEGRA | DATE | Y | Codigo sequencial do registro integrado |
| 32 | CD_SEQ_INTEGRA | NUMBER | Y |  |

---

## DBAMV.IT_AGENDA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AGENDA | NUMBER | N |  |
| 2 | CD_IT_AGENDA | NUMBER | N |  |
| 3 | CD_PACIENTE | NUMBER | Y |  |
| 4 | NM_PACIENTE | VARCHAR2 | N |  |
| 5 | CD_PROCEDIMENTO | NUMBER | Y |  |
| 6 | NM_USUARIO | VARCHAR2 | N |  |
| 7 | SN_ATENDIDO | VARCHAR2 | Y |  |
| 8 | NM_USUARIO_ATENDIMENTO | VARCHAR2 | Y |  |
| 9 | CD_IT_AGENDA_SEQ | NUMBER | Y |  |
| 10 | CD_ORI_ATE | NUMBER | Y |  |

---

## DBAMV.IT_AGENDA_CENTRAL
> Agendamentos (horarios) de pacientes e procedimentos da Central de marcac?es

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AGENDA_CENTRAL | NUMBER | N | Código da Agenda relacionada |
| 2 | HR_AGENDA | DATE | N | Horário do Atendimento |
| 3 | CD_PACIENTE | NUMBER | Y | Código do Paciente agendado |
| 4 | NM_PACIENTE | VARCHAR2 | Y | Nome do paciente paciente agendado |
| 5 | VL_ALTURA | NUMBER | Y | Altura do Paciente (m) |
| 6 | QT_PESO | NUMBER | Y | Peso do Paciente (Kg) |
| 7 | DT_NASCIMENTO | DATE | Y | Data de nascimento do Paciente |
| 8 | SN_ATENDIDO | VARCHAR2 | Y | Indica a situação do Paciente: atendido - Sim / Não |
| 9 | SN_ENCAIXE | VARCHAR2 | Y | Indica se o agendamento é por encaixe: Sim / Não |
| 10 | CD_GRUPO_AGENDA | NUMBER | Y | Código do Grupo de Pacientes agendado |
| 11 | CD_ATENDIMENTO | NUMBER | Y | Código do Atendimento do Paciente |
| 12 | CD_GRU_ATE | NUMBER | Y | Grupo de Atendimento (SUS) |
| 13 | CD_ITEM_AGENDAMENTO | NUMBER | Y | Código do Item (procedimento) agendado |
| 14 | CD_USUARIO | VARCHAR2 | Y | Código do Usuário que realizou o Agendamento |
| 15 | CD_CONVENIO | NUMBER | Y | Código do Convênio do Paciente |
| 16 | CD_CON_PLA | NUMBER | Y | Código do Plano de Convênio do paciente |
| 17 | CD_SER_DIS | NUMBER | Y | Código do Serviço do Atendimento ao Paciente |
| 18 | CD_TIP_MAR | NUMBER | Y | Código do Tipo de Atendimento |
| 19 | TP_SITUACAO | VARCHAR2 | Y | Situação que se encontra o Horário / Paciente: (M) Marcado / (A) Aguardando /  (E) Atendido / (C)... |
| 20 | VL_PERC_DESCONTO | NUMBER | Y | Percentual de desconto em cima do valor do procedimento Particular |
| 21 | VL_NEGOCIADO | NUMBER | Y | Novo valor monetário negociado para procedimento Particular |
| 22 | SN_ANESTESISTA | VARCHAR2 | Y | Indica a necessidade de Anestesista no agendamento para algum procedimento cirúrgico |
| 23 | SN_PUBLICO | VARCHAR2 | Y | Indica se o horário é Público (Sim) ou Particular (Não) |
| 24 | SN_BLOQUEADO | VARCHAR2 | Y | Indica se o horário está bloqueado ou não |
| 25 | NR_FONE | VARCHAR2 | Y | Telefone de Contato com o Paciente |
| 26 | CD_ANESTESISTA | NUMBER | Y | Código do Anestesista solicitado para o procedimento |
| 27 | DS_OBSERVACAO | VARCHAR2 | Y | Observação do Agendamento |
| 28 | CD_IT_AGENDA_CENTRAL | NUMBER | N | Código identificador do Item (horário) da agenda |
| 29 | CD_IT_AGENDA_PAI | NUMBER | Y | Código do horário "pai" que agrupa todos os horários pertencentes a marcação de um paciente |
| 30 | TP_SEXO | VARCHAR2 | Y | Indica o sexo do Paciente, quando não cadastrado ainda no Sistema |
| 31 | CD_SOLIC_AGENDAMENTO | NUMBER | Y | Código identificador da solicitação de agendamento de Tratamento |
| 32 | CD_ATENDIMENTO_PAI | NUMBER | Y | Código identificador do Atendimento inicial das Sessões |
| 33 | DS_SENHA_PAINEL | VARCHAR2 | Y | Senha de chamada do paciente no Painel eletrônico |
| 34 | SN_DISPENSA_EQUIPAMENTOS | VARCHAR2 | Y | Informa se os Equipamentos cadastrados para o Item de Agendamento serão dispensados (não reservad... |
| 35 | DT_GRAVACAO | DATE | Y | Data de realização (gravação) do agendamento |
| 36 | DS_EMAIL | VARCHAR2 | Y | E-mail do paciente do agendamento |
| 37 | CD_AGENDA_FILA_ESPERA | NUMBER | Y | Código do registro da Fila de Espera que originou o agendamento |
| 38 | SN_AGENDA_FATURADA | VARCHAR2 | N | Informa se o item agendado já foi lançado na conta |
| 39 | DS_OBSERVACAO_GERAL | VARCHAR2 | Y | Observação geral do Agendamento. |
| 40 | SN_SESSAO | VARCHAR2 | N | Indica se o agendamento é ou não uma Sessão |
| 41 | NR_SESSAO_SCMA | NUMBER | Y | Identificador do conjunto de sessões que não estão relacionadas à Prescrição |
| 42 | VL_TEMPO_REALIZACAO_INFORMADO | DATE | Y | Tempo de realização informado no agendamento. |
| 43 | HR_FIM | DATE | Y | Horário final do agendamento. |
| 44 | CD_IT_AGENDA_CENTRAL_INTEGRA | VARCHAR2 | Y | Código do Item (horario) da agenda na empresa externa |
| 45 | CD_SEQ_INTEGRA | NUMBER | Y | Código sequencial da integração |
| 46 | DT_INTEGRA | DATE | Y | Data de integração do registro |
| 47 | SN_ENCAIXE_EXTRA | VARCHAR2 | N | Indica se o agendamento é por encaixe extra: Sim / Não |
| 48 | CD_SUB_PLANO | VARCHAR2 | Y | Código do sub plano relacionado ao convênio e plano do paciente |
| 49 | CD_ITEM_AGENDAMENTO_COMPOSICAO | NUMBER | Y | Código do Item de Agendamento  em Composicao |
| 50 | DT_AGENDA_ENVIO_COMPROVANTE | DATE | Y | Data do agendamento do envio do comprovante de agendamento. |
| 51 | DT_ENVIO_COMPROVANTE | DATE | Y | Data real de envio do comprovante de agendamento |
| 52 | TP_FORMA_AGENDAMENTO | VARCHAR2 | Y | Campo relativo a forma que foi feita o agendamento |
| 53 | CD_PEDIDO | NUMBER | Y | Código do pedido gerado automaticamente, podendo ser de laboratório/imagem dependendo do tipo da ... |
| 54 | CD_SENHA | VARCHAR2 | Y | Autorização: Número da Senha de Autorização |
| 55 | NR_GUIA | VARCHAR2 | Y | Autorização: Número de guia de autorização |
| 56 | NR_CARTEIRA | VARCHAR2 | Y | Número da carteira. |
| 57 | CD_LOG_OPERA_AGENDA | NUMBER | Y | Código do log que tem influência sobre o item. |
| 58 | NR_DDD_FONE | NUMBER | Y | Prefixo nacional do telefone residencial - DDD |
| 59 | NR_DDD_CELULAR | NUMBER | Y | Prefixo nacional do telefone celular- DDD |
| 60 | NR_CELULAR | VARCHAR2 | Y | Prefixo nacional do telefone celular- DDD |
| 61 | DT_VALIDADE_CARTEIRA | DATE | Y | Validade da carteira. |
| 62 | NR_DDI_TELEFONE | NUMBER | Y | Prefixo internacional do telefone do paciente - DDI. |
| 63 | NR_DDI_CELULAR | NUMBER | Y | Prefixo internacional do telefone celular do paciente - DDI. |
| 64 | NR_ID_ENVIO_SMS | NUMBER | Y | Numero do ID do envio do SMS |
| 65 | DH_PRESENCA_FALTA | DATE | Y | Data e hora da marcação da presença ou falta do paciente. |
| 66 | TP_PRESENCA_FALTA | VARCHAR2 | Y | (P) Presença, (F) Falta; Determina se o paciente compareceu a consulta ou exame. |
| 67 | CD_USUARIO_PRESENCA_FALTA | VARCHAR2 | Y | Codigo do usuario que fez a marcação da presença ou falta do paciente. |
| 68 | CD_PRES_EXT | NUMBER | Y | Codigo do prestador externo |
| 69 | CD_PRESTADOR_SOLICITANTE | NUMBER | Y | Codigo do prestador solicitante |
| 70 | CD_TIPO_BLOQUEIO | NUMBER | Y | Código do bloqueio criado para o horário |
| 71 | CD_MATERIAL | NUMBER | Y | Código do material do exame. |
| 72 | TP_VISUALIZACAO | VARCHAR2 | Y | Tipo de visualizacao do horario - B: Balcao (Internet e Não Internet) / I: Internet |
| 73 | CD_ESPECIALID | NUMBER | Y | Número da especialidade da indicação clínica. |
| 74 | CD_CID | VARCHAR2 | Y | cid da indicação clínica(suspeita). |
| 75 | DS_INDICACAO_CLINICA | VARCHAR2 | Y | Descrição da indicação clínica. |
| 76 | NR_CONSELHO | VARCHAR2 | Y | Número do conselho do médico que indicou o item agendado. |
| 77 | NR_GUIA_SESSAO | VARCHAR2 | Y | Número da guia de autorização para marcação de sessões. |
| 78 | DT_SOLIC_SESSAO | DATE | Y | Data de Emissão da guia de autorização para marcação de sessões. |
| 79 | CD_SENHA_SESSAO | VARCHAR2 | Y | Senha de autorização para marcação de sessões. |
| 80 | DT_VALID_SESSAO | DATE | Y | Validade da senha de autorização para marcação de sessões. |
| 81 | CD_RELACAO_PUBLICA | NUMBER | Y | Código da Relação Publica. Relacionado ao atendimento fora do serviço médico local. |
| 82 | CD_LATERALIDADE | NUMBER | Y | Informa a lateralidade do exame de imagem agendado. |
| 83 | CD_SENHA_AUTORIZACAO | NUMBER | Y | CÓDIGO DE AUTORIZAÇÃO DE SENHA |
| 84 | CD_PRESTADOR_EXTERNO | NUMBER | Y | Código do prestador externo em indicação clinica. |
| 85 | CD_CONSELHO | NUMBER | Y | Código do conselho em indicação clinica. |
| 86 | CD_IDENTIDADE_GENERO | NUMBER | Y | Codigo da identidade de genero do paciente. |
| 87 | CD_ORIENTACAO_SEXUAL | NUMBER | Y | Codigo da orientacao sexual do paciente. |
| 88 | CD_CID_ATEND | VARCHAR2 | Y | Cid do atendimento |
| 89 | CD_INSTITUICAO | NUMBER | Y | Codigo da instituicao |
| 90 | CD_CLINICA_SOLICITANTE | NUMBER | Y | Cid do clinica solicitante |

---

## DBAMV.IT_AGENDA_CENTRAL_EQUIPTO
> Tabela de equipamentos solicitados para o agendamento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IT_AGENDA_CENTRAL | NUMBER | N | Codigo do horario de agendamento |
| 2 | CD_APARELHO_EQUIPAMENTO | NUMBER | N | Codigo do equipamento solicitado |
| 3 | CD_ITEM_AGENDAMENTO | NUMBER | N | Codigo do Item agendado |
| 4 | QT_SOLICITADA | NUMBER | N | Quantidade solicitada (deve estar "Reservada" para o agendamento) |

---

## DBAMV.JUSTIFICATIVA_AGENDAMENTO
> Tabela de Cadastro de Justificativa de Agendamento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_JUSTIFICATIVA_AGENDAMENTO | NUMBER | N | Código da Justificativa de Agendamento |
| 2 | DS_JUSTIFICATIVA_AGENDAMENTO | VARCHAR2 | N | Descrição da Justificativa de Agendamento |
| 3 | SN_ATIVO | VARCHAR2 | N | Indicador de Situação Ativo. S=Sim, N=Não |
| 4 | CD_USUARIO_INCLUSAO | VARCHAR2 | N | Código do usuário de inclusão |
| 5 | DT_CADASTRO | DATE | N | Data do cadastro da justificativa de agendamento |

---

## DBAMV.MARCACAO
> Tabela de Escalas de Plant?es do Ambulatorio.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SER_DIS | NUMBER | Y | Codigo do Servico Disponivel. |
| 2 | CD_TIP_MAR | NUMBER | Y | Codigo do Tipo de Atendimento. |
| 3 | CD_PRESTADOR | NUMBER | N | Codigo do Prestador. |
| 4 | CD_MARCACAO | NUMBER | N | Codigo Sequencial da Escala. |
| 5 | DT_MARCACAO | DATE | N | Data de Escala. |
| 6 | NR_CONSULTAS | NUMBER | N | Numero de Consultas permitidas. |
| 7 | HR_INICIAL | DATE | N | Hora Inicial do periodo da Escala. |
| 8 | HR_FINAL | DATE | N | Hora Final do periodo da Escala. |
| 9 | SN_SIA | VARCHAR2 | N | Identificador - Permite agendamentos Ambulatoriais SUS. |
| 10 | NR_MARCADOS | NUMBER | Y | Numero de Horarios ja ocupados. |
| 11 | NR_TEMPO_MEDIO | NUMBER | Y | Tempo medio de cada horario. |
| 12 | CD_ORI_ATE | NUMBER | Y | Codigo da origem. |
| 13 | ATIVO | VARCHAR2 | Y | Identificador - A Escala de Plant?o esta ativa ? |
| 14 | SN_ATIVO | VARCHAR2 | Y |  |
| 15 | NM_USUARIO | VARCHAR2 | Y | Usuario que cadastrou o Agendamento. |
| 16 | SN_QTD_TIPO | VARCHAR2 | N | Identificador - Controlar a quantidade de agendamentos pelo Tipo de Atendimento ? |
| 17 | DS_CONSULTORIO | VARCHAR2 | Y | Descric?o do Consultorio. |
| 18 | NR_ENCAIXES | NUMBER | Y | Numero de Encaixes permitidos. |
| 19 | TP_PRODUCAO | VARCHAR2 | N | Tipo de Produc?o. Valor default = 'C'. |
| 20 | CD_UNICO | VARCHAR2 | Y |  |
| 21 | SN_BLOQUEAR | VARCHAR2 | Y | Identificador - Se o Plant?o esta bloqueado ? |
| 22 | SN_FALTA | VARCHAR2 | N | Identificador - Se o paciente faltou ? |
| 23 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da Multi-Empresa. |
| 24 | NR_ENCAIXE_PERMITIDO | NUMBER | Y | Numero de Encaixes permitidos para a Escala. |
| 25 | SN_SERVICO_LIVRE | VARCHAR2 | N | Identificador - Permite Servico Livre ? |
| 26 | DT_LIB_AGD | DATE | N | Data de Liberac?o da Agenda. |
| 27 | DS_OBSERVACAO | VARCHAR2 | Y | Descric?o das Observac?es da Escala. |
| 28 | CD_UNIDADE_REGIONAL | VARCHAR2 | Y | Codigo da Unidade Regional. |
| 29 | CD_P_ESCALA | VARCHAR2 | Y | Codigo do Template utilizado para gerar o Plant?o |
| 30 | DT_LIMITE_VISUALIZACAO_UBS | DATE | Y | Indica a Data limite para a visualizac?o das agendas pelas Unidades Regionais |
| 31 | CD_MARCACAO_INTEGRA | NUMBER | Y | Codigo sequencial do registro integrado |
| 32 | DT_INTEGRA | DATE | Y | Data de integrac?o com registro |
| 33 | CD_SEQ_INTEGRA | NUMBER | Y | Codigo sequencial do registro integrado |

---

## DBAMV.MOVIMENTO_AGENDA_CENTRAL
> Registro dos agendamentos em uma operac?o da Central de Marcac?es

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MOVIMENTO_AGENDA_CENTRAL | NUMBER | N | Codigo que identifica a movimentac?o que gerou o agendamento |
| 2 | CD_GRUPO_AGENDA | NUMBER | Y | Codigo do Grupo agendado |
| 3 | DT_MOVIMENTACAO | DATE | N | Data em que foi criada a Movimentac?o |
| 4 | CD_USUARIO_MOVIMENTACAO | VARCHAR2 | N | Codigo do usuario que gerou a movimentac?o |
| 5 | CD_PACIENTE | NUMBER | Y | Codigo do Paciente agendado |
| 6 | NM_PACIENTE | VARCHAR2 | Y | Nome do Paciente agendado |
| 7 | DS_OBSERVACAO_GERAL | VARCHAR2 | Y | Observação geral do Agendamento. |
| 8 | CD_JUSTIFICATIVA_AGDM | NUMBER | Y | Indica o código da justificativa de agendamento |
| 9 | CD_USUARIO_INCLUSAO_JUST_AGDM | VARCHAR2 | Y | Indica o código do usuário que informou a justificativa de atendimento |
| 10 | DT_CADASTRO_JUST_AGDM | DATE | Y | Indica a data de cadastro da justificativa de agendamento |

---

## DBAMV.NOTIFIC_AGDM_MOV_INV
> TABELA DE NOTIFICAÇÃO DO AGENDAMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_NOTIFIC_AGDM_MOV_INV | NUMBER | N | CHAVE PRIMARIA. |
| 2 | CD_NOTIFICACAO | NUMBER | Y | CóDIGO DA NOTIFICAçãO GERADA. |
| 3 | CD_AGDM_MOV_INV | NUMBER | Y | CóDIGO DO AGENDAMENTO ASSOCIANDO A NOTIFICAçãO. |

---

## DBAMV.OPERA_AGENDA
> Tabela de Operac?es de Bloqueio e Desbloqueio de Agendas

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_OPERA_AGENDA | NUMBER | N | Codigo Sequencial da Operac?o de Agenda |
| 2 | DT_OPERA_AGENDA | DATE | N | Data e hora em que foi realizada a operac?o |
| 3 | TP_OPERA_AGENDA | VARCHAR2 | N | Tipo de operac?o realizada |
| 4 | CD_USUARIO | VARCHAR2 | N | Usuario responsavel pela realizac?o da operac?o. |
| 5 | DT_INICIO_BLOQUEIO | DATE | N |  |
| 6 | DT_FINAL_BLOQUEIO | DATE | N |  |
| 7 | DS_MOTIVO | VARCHAR2 | N | Descric?o do motivo pelo qual foi realizada a operac?o. |
| 8 | CD_UNIDADE_REGIONAL | VARCHAR2 | Y | Codigo da Unidade Regional, utilizada para filtrar as agendas |
| 9 | CD_RECURSO | NUMBER | Y | Codigo do Recurso utilizado para filtrar as agendas |
| 10 | CD_RECURSO_LAB | NUMBER | Y | Codigo do Recurso Laboratorial utilizado para filtrar as agendas |
| 11 | CD_PRESTADOR | NUMBER | Y | Codigo do Prestador utilizado para filtrar as agendas |
| 12 | CD_AGENDA | NUMBER | Y | Data final do periodo cujas agendas que estiverem inseridas dever?o sofrer a operac?o |
| 13 | TP_AGENDAMENTO | VARCHAR2 | N | Tipo dos Agendamentos que sofreram a operac?o. |

---

## DBAMV.ORIENTACAO_CONVENIO_ITEM_AGE
> Tabela de Orientac?o dos Convenios para o agendamento de exame/procedimento no SCMA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONVENIO | NUMBER | N | Codigo do Convenio |
| 2 | CD_ITEM_AGENDAMENTO | NUMBER | N | Codigo do Item de Agendamento |
| 3 | DS_ORIENTACAO | VARCHAR2 | N | Orientac?o para a realizac?o do exame/procedimento |
| 4 | SN_ATIVO | VARCHAR2 | N | Indica se a orientac?o esta ativa e consequentemente sera exibida no momento do agendamento. |

---

## DBAMV.PACTUACAO_AMBULATORIAL
> Tabela de cotas pactuadas para consultas - Ambulatorio

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REFERENCIA | NUMBER | N | CÃ³digo da referÃªncia da pactuaÃ§Ã£o |
| 2 | CD_TIPO_PACTUACAO | NUMBER | N | CÃ³digo do tipo da pactuaÃ§Ã£o |
| 3 | CD_ESPECIALID | NUMBER | N | CÃ³digo da especialidade da pactuaÃ§Ã£o |
| 4 | CD_TIP_MAR | NUMBER | N | CÃ³digo do tipo de marcaÃ§Ã£o da pactuaÃ§Ã£o |
| 5 | NR_VALOR_PACTUADO | NUMBER | Y | Valor pactuado |
| 6 | NR_VALOR_RECEBIDO | NUMBER | Y | Valor recebido referente a movimentaÃ§Ãµes de cotas |
| 7 | NR_VALOR_UTILIZADO | NUMBER | Y | Valor utilizado da cota |
| 8 | NR_VALOR_TRANSFERIDO | NUMBER | Y | Valor transferido referente a movimentaÃ§Ãµes de cotas |

---

## DBAMV.PRAZO_AGENDAMENTO_AVISO
> Tabela que guarda os prazaos para agendamento em formato de texto.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRAZO_AGENDAMENTO | NUMBER | N | PK da tabela. |
| 2 | DS_PRAZO_AGENDAMENTO | VARCHAR2 | N | Descrição do prazo de agendamento. |

---

## DBAMV.PRE_INTERNACAO_EQUIPAMENTO
> Tabela de equipamentos associados ao pre-agendamento cirurgico

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_APARELHO_EQUIPAMENTO | NUMBER | N | Codigo do equipamento utilizado pre-agendamento |
| 2 | CD_PRE_INTERNACAO | NUMBER | N | Codigo do pre-agendamento associado aos equipamentos cirurgicos |
| 3 | CD_PRE_INT_CIRURGIA | NUMBER | N | Codigo do item da cirurgia utilizada no pre-agendamento associado ao equipamento cirurgico |
| 4 | NR_QUANTIDADE | NUMBER | Y | Quantidade dos equipamentos utilizados no pre-agendamento cirurgico |

---

## DBAMV.PRE_INTERNACAO_PRESTADOR
> Prestadores associados ao pre-agendamento cirurgico

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRE_INTERNACAO | NUMBER | N | Codigo do pre-agendamento cirurgico associado aos prestadores |
| 2 | CD_PRE_INT_CIRURGIA | NUMBER | N | Codigo do item da cirurgia relacionado ao pre-agendamento |
| 3 | CD_PRESTADOR | NUMBER | N | Codigo do prestador associado ao pre-agendamento cirurgico |
| 4 | CD_ATI_MED | VARCHAR2 | N | Codigo da atividade medica associado aos prestadores do agendamento cirurgico |

---

## DBAMV.PROCEDIMENTO_PATOLOGIA_GES
> Tabela que listas as consultas medicas e os prazos de realização que devem ser cumpridos para uma etapa do protocolo.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROCEDIMENTO_PATOLOGIA_GES | NUMBER | N | Código identificador. |
| 2 | CD_ITEM_AGENDAMENTO | NUMBER | N | Item de agendamento do tipo ambulatorial relacionado. |
| 3 | CD_ETAPAS_ALERTA_PROTOCOLO | NUMBER | N | Código da etapa do protocolo relacionada. |
| 4 | TP_FAIXA_ETARIA | VARCHAR2 | N | Faixa etária A(D)ulto, (P)ediátrico, (A)mbos. |
| 5 | NR_DIAS_CONSULTA | NUMBER | Y | Número maximo de dias para realizar a consulta |
| 6 | DS_PERIODICIDADE | VARCHAR2 | Y | Periodicidade de realização da consulta. |
| 7 | DS_UNIDADE | VARCHAR2 | Y | Unidade de medida a ser solicitada |
| 8 | QT_QUANTIDADE | NUMBER | Y | Quantidade a ser solicitada |
| 9 | DS_OBSERVACAO | VARCHAR2 | Y | Observação |

---

## DBAMV.RECURSO_CENTRAL_PERFIL_AGDM
> Cadastro de Recurso / Perfis de Agendamento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MULTI_EMPRESA | NUMBER | N | Código da Empresa |
| 2 | CD_PERFIL_AGENDAMENTO | NUMBER | N | Código do perfil de Agendamento |
| 3 | CD_RECURSO_CENTRAL | NUMBER | N | Código do Recurso |
| 4 | DH_CADASTRO | DATE | N | Data/Hora de Cadastro do Registro |
| 5 | CD_USUARIO_CADASTRO | VARCHAR2 | N | Código do Usuário do Registro |

---

## DBAMV.RELATORIO_PERSONALIZADO
> Armazena as consultas padr?o para gerac?o de relatorio e planilhas no formato XLS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_RELATORIO_PERSONALIZADO | NUMBER | N | Chave primaria da tabela |
| 2 | NM_RELATORIO | VARCHAR2 | N | Nome do arquivo relatorio/planilha que sera gerada |
| 3 | DS_RELATORIO | VARCHAR2 | Y | Descric?o detalhada do relatorio/planilha |
| 4 | CD_MODULO | VARCHAR2 | Y | Modulo do sistema vinculado (tela ou relatorio) |
| 5 | DS_CONSULTA | VARCHAR2 | Y | Consulta no padr?o SQL utilizada para gerar relatorio/planilha |
| 6 | CD_USUARIO_CRIACAO | VARCHAR2 | N |  |
| 7 | DH_CRIACAO | DATE | N |  |
| 8 | CD_USUARIO_ULTIMA_ALTERACAO | VARCHAR2 | Y |  |
| 9 | DS_CONSULTA2 | CLOB | Y |  |
| 10 | DH_ULTIMA_ALTERACAO | DATE | Y |  |

---

## DBAMV.RESTRICAO_AGENDAMENTO
> Restrição de agendamento mensal por convênio e especialidade.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_RESTRICAO_AGENDAMENTO | NUMBER | N | Chave primária do registro. |
| 2 | CD_CONVENIO | NUMBER | N | Chave estrangeira do convênio. convênio ativo vinculado a empresa logada do usuário. |
| 3 | CD_ESPECIALID | NUMBER | N | Chave estrangeira da especialidade. Especialidade ativa. |
| 4 | CD_MULTI_EMPRESA | NUMBER | N | Chave estrangeira da empresa. Empresa precisa estar vinculada ao convênio. |
| 5 | SN_PRESTADOR | VARCHAR2 | N | Se ativo, o sistema irá contar os agendamentos individualizados por prestador e especialidade. |
| 6 | NR_QUANTIDADE_AGEND | NUMBER | N | Limite de agendamentos. Míninimo de 1, máximo de 999. |
| 7 | CD_USUARIO_INCLUSAO | VARCHAR2 | N | Registro do id do usuário que fez a restrição. |
| 8 | CD_USUARIO_ALTERACAO | VARCHAR2 | Y | Usuário que atualizou a restrição. |
| 9 | DH_INCLUSAO | DATE | N | Registro da data que fez a restrição. |
| 10 | DH_ALTERACAO | DATE | Y | Registro da data de atualização. |
| 11 | SN_ATIVO | VARCHAR2 | N | Indica se a restrição está ativa. |
| 12 | CD_DOCUMENTO | NUMBER | Y | Chave estrangeira do documento eletrônico. |
| 13 | DS_IDENTIFICADOR_METADATA | VARCHAR2 | Y | Id único do metadado para documentos eletrônicos. |
| 14 | DS_VALOR_EXCECAO | VARCHAR2 | Y | Valor da exceção criada na M_RESTRIÇÃO_AGENDAMENTO. Se o valor da exceção bater com o retorno da ... |

---

## DBAMV.SESC_DIA
> Tabela de Plant?es de Agendamento do Laboratorial

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ESCALA_DIA | NUMBER | N | Codigo do Plant?o |
| 2 | DT_ESCALA_DIA | DATE | N | Data do Plant?o |
| 3 | QT_ATENDIMENTOS | NUMBER | N | Numero de Atendimento permitidos |
| 4 | QT_AGENDADOS | NUMBER | Y | Numero de horarios ocupados |
| 5 | HR_INIC | DATE | Y | Hora inicial de atendimento |
| 6 | HR_FIM | DATE | Y | Hora final de atendimento |
| 7 | SN_ATIVO | VARCHAR2 | Y | Identificador - O plant?o esta ativo ? |
| 8 | CD_RECURSO | NUMBER | N | Codigo do recurso associado ao Plant?o |
| 9 | CD_SET_EXA | NUMBER | N | Codigo do Setor Executante associado ao Plant?o |
| 10 | SN_SIA | VARCHAR2 | N | Identificador - Atende convenios Ambulatoriais SUS ? |
| 11 | DT_LIB_AGD | DATE | N | Data de Liberac?o do Plant?o para realizac?o de Marcac?es |
| 12 | CD_MULTI_EMPRESA | NUMBER | Y | Codigo da Empresa para qual foi cadastrado o Plant?o |
| 13 | CD_UNIDADE_REGIONAL | VARCHAR2 | Y | Codigo da Unidade Laboratorial onde sera realizado o atendimento ao paciente. |
| 14 | CD_ESCALA | NUMBER | Y | Codigo da Escala utilizada como modelo para gerac?o do Plant?o |
| 15 | DT_LIMITE_VISUALIZACAO_UBS | DATE | Y | Indica a Data limite para a visualizac?o das agendas pelas Unidades Regionais |
| 16 | CD_SEQ_INTEGRA | NUMBER | Y | Codigo sequencial do registro integrado |
| 17 | CD_MARCACAO_INTEGRA | NUMBER | Y | Codigo sequencial do registro integrado |
| 18 | DT_INTEGRA | DATE | Y | Data de integrac?o com registro |

---

## DBAMV.TEMPO_ITEM_RECURSO_EMPRESA
> Tabela de cadastro do tempo de realização da empresa por recurso e item de agendamento.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TEMPO_ITEM_RECURSO_EMP | NUMBER | N | Código do Tempo de Realização por Empresa. |
| 2 | CD_RECURSO_CENTRAL | NUMBER | N | Código do Recurso Central |
| 3 | CD_MULTI_EMPRESA | NUMBER | N | Código da Empresa. |
| 4 | HR_REALIZACAO | DATE | N | Tempo de realização |
| 5 | CD_ITEM_AGENDAMENTO | NUMBER | N | Código do Item de Agendamento. |

---

## DBAMV.VIDC_O_GERAARQMAG_RETORNO
> Centraliza as possibilidades de consultas de retorno do soul

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_NOTA_FISCAL | NUMBER | N | Codigo da nota fiscal |
| 2 | NR_ID_NOTA_FISCAL | NUMBER | Y | Numero da nota fiscal |
| 3 | CD_SERIE | VARCHAR2 | Y |  |
| 4 | CD_EMPRESA | NUMBER | Y |  |
| 5 | CD_SITUACAO_NF | CHAR | Y | Situac?o da nota fiscal |
| 6 | DT_EMISSAO | DATE | Y | Data de Emissao da nota fiscal |
| 7 | CD_VERIFICACAO_NFE | VARCHAR2 | Y | Codigo de verificac?o da nota fiscal eletronica |
| 8 | NR_NOTA_FISCAL_NFE | NUMBER | Y | Numero da nota fiscal eletronica |
| 9 | NR_LOTE | VARCHAR2 | Y | Numero do Lote |
| 10 | CD_RETORNO | VARCHAR2 | Y | Codigo de retorno |
| 11 | DS_RETORNO | VARCHAR2 | Y | Descric?o de retorno |
| 12 | CD_CONVENIO | NUMBER | Y | Codigo do convenio |
| 13 | DS_NUMERO_PROTOCOLO | VARCHAR2 | Y | Numero do protocolo |
