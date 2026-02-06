# 02 - Atendimento e Internacao

> Atendimentos, internacoes, altas, leitos, transferencias

## Resumo

- **Tabelas**: 109
- **Owners**: DBAMV

---

## DBAMV.ACIDENTE_TRAB
> Tabela de acidentes de trabalho.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ACIDENTE_TRABALHO | NUMBER | N | Código Sequencial que identifica o acidente de trabalho. |
| 2 | TP_ACIDENTE_TRABALHO | VARCHAR2 | N | Tipo do acidente de trabalho, pode ser G (Gênesis) ou S (Sequela). |
| 3 | DS_PROTOCOLO_GENESIS | VARCHAR2 | N | Código do protocolo Gênesis. |
| 4 | CD_ATENDIMENTO_GENESIS | NUMBER | N | Código do atendimento Gênesis, da tabela ATENDIME. |
| 5 | DS_PROTOCOLO_SEQUELA | VARCHAR2 | Y | Código do protocolo Sequela. |
| 6 | CD_ATENDIMENTO_SEQUELA | NUMBER | Y | Código do atendimento Sequela, da tabela ATENDIME. |

---

## DBAMV.ACIDENTE_TRABALHO
> Aramazena dados e definic?es quando a Internac?o tratar-se de um Acidente de Trabalho

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REG_FAT | NUMBER | N | Chave Primaria. Codigo da Conta. |
| 2 | NR_CNPJ_EMPREGADOR | VARCHAR2 | Y | Numero do CNPJ da empresa em que houve o Acidente de Trabalho |
| 3 | CD_CNAER | NUMBER | Y | Codigo no Cadastro Nacional de Atividade Economica |
| 4 | TP_VINCULO_PREV | VARCHAR2 | Y | Tipo de vinculo do paciente com a Empresa em que houve o Acidente de Trabalho |
| 5 | CD_CBOR | VARCHAR2 | Y | Codigo do CBO |

---

## DBAMV.ADMISSAO_CO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ADMISSAO_CO | NUMBER | N |  |
| 2 | QT_GESTACAO | NUMBER | Y |  |
| 3 | QT_PARIDADE | NUMBER | Y |  |
| 4 | QT_ABORTO | NUMBER | Y |  |
| 5 | VL_IDADE_PRIMEIRA_GESTACAO | NUMBER | Y |  |
| 6 | VL_INTERVALO_INTERPARTAL | DATE | Y |  |
| 7 | QT_NATIMORTOS | NUMBER | Y |  |
| 8 | QT_PREMATUROS | NUMBER | Y |  |
| 9 | QT_FILHOS_VIVOS | NUMBER | Y |  |
| 10 | QT_FILHOS_MORTOS | NUMBER | Y |  |
| 11 | QT_OBITOS_PRIMEIRA_SEMANA | NUMBER | Y |  |
| 12 | QT_OBITOS_APOS_PRIMEIRA_SEMANA | NUMBER | Y |  |
| 13 | QT_RN_PESO_MAIOR_4000G | NUMBER | Y |  |
| 14 | QT_RN_PESO_MENOR_2500G | NUMBER | Y |  |
| 15 | QT_MESES_ALEITAMENTO | NUMBER | Y |  |
| 16 | TP_COMBS_DIRETO | VARCHAR2 | Y |  |
| 17 | VL_COMBS_DIRETO | NUMBER | Y |  |
| 18 | TP_VDRL | VARCHAR2 | Y |  |
| 19 | VL_VDRL | NUMBER | Y |  |
| 20 | DS_INTERCORRENCIA_COMPLICACAO | VARCHAR2 | Y |  |
| 21 | DT_ULTIMA_MENSTRUACAO | DATE | Y |  |
| 22 | DT_INICIO_MOV_FETAL | DATE | Y |  |
| 23 | DS_MEDICAMENTOS | VARCHAR2 | Y |  |
| 24 | DS_OBS_GESTACAO_ATUAL | VARCHAR2 | Y |  |
| 25 | DS_EXAME_CABECA_PESCOCO | VARCHAR2 | Y |  |
| 26 | DS_EXAME_AP_CARDIO_PULMONAR | VARCHAR2 | Y |  |
| 27 | DS_EXAME_MAMAS | VARCHAR2 | Y |  |
| 28 | DS_EXAME_ABDOMEN | VARCHAR2 | Y |  |
| 29 | DS_EXAME_APARELHO_GENITAL | VARCHAR2 | Y |  |
| 30 | DS_MM_II | VARCHAR2 | Y |  |
| 31 | CD_TIP_PARTO | NUMBER | Y |  |
| 32 | NR_FILHOS_NO_PARTO | NUMBER | Y |  |
| 33 | NM_PAI | VARCHAR2 | Y |  |
| 34 | DS_PARTO | VARCHAR2 | Y |  |
| 35 | VL_TEMPO_GESTACAO | NUMBER | Y |  |
| 36 | NR_CONSULTAS | NUMBER | Y |  |
| 37 | DT_PARTO | DATE | Y |  |
| 38 | VL_BCF | NUMBER | Y |  |
| 39 | CD_ATENDIMENTO | NUMBER | N |  |
| 40 | CD_MOTIVO_PARTO | NUMBER | Y |  |
| 41 | DT_PREV_PARTO | DATE | Y |  |
| 42 | CD_TIP_ANEST | NUMBER | Y |  |
| 43 | QT_CESARIA | NUMBER | Y |  |
| 44 | VL_INTERV_INTERPARTAL | NUMBER | Y | Indica o Intervalo em meses entre partos |
| 45 | TP_INTERNACAO_OBS | VARCHAR2 | Y | Tipo de internacao obstetrica usado no TISS |
| 46 | SN_PREMATURO | VARCHAR2 | Y | Indica se os Recem Nascidos s?o Prematuros ou N?o para o parto atual. |
| 47 | QT_SEMANAS | NUMBER | Y | Indica a Durac?o da gestac?o em  semanas. |
| 48 | NR_PRE_NATAL | VARCHAR2 | Y | Numero da ficha de pre-natal |
| 49 | CD_TRIMESTRE_CONSULTA | VARCHAR2 | Y | TRIM_CONS - Código referente ao trimestre da consulta |
| 50 | TP_STATUS_FILHO_ANT | VARCHAR2 | Y | HIJO_ANT - Condição de nascimento do filho imediato anterior |
| 51 | SN_FILHO_ANT_VIVO | VARCHAR2 | Y | VIVE_AUN - Ainda vive  filho (a) imediato anterior |
| 52 | DT_NASC_FILHO_ANT | DATE | Y | FECH_NAC - Data de nascimento do filho da gravidez anterior |

---

## DBAMV.ALTAS_REVELIA
> Tabela do PARI que permite configurar Motivos de alta a revelia

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ALTAS_REVELIA | NUMBER | N | Codigo identificador da tabela |
| 2 | CD_MOT_ALT | NUMBER | N | Codigo do motivo da alta |

---

## DBAMV.ATENDIME

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ATENDIMENTO | NUMBER | N | Codigo identificador do Atendimento. |
| 2 | CD_ORI_ATE | NUMBER | N | Codigo identificador da Origem do Atendimento. |
| 3 | CD_PACIENTE | NUMBER | N | Codigo identificador do Paciente. |
| 4 | CD_CONVENIO | NUMBER | N | Codigo identificador do convenio. |
| 5 | CD_PRO_INT | VARCHAR2 | Y | Codigo do procedimento do atendimento. |
| 6 | CD_PRO_INT_PROCEDIMENTO_ENTRAD | VARCHAR2 | Y | Codigo do procedimento da alta |
| 7 | DT_ATENDIMENTO | DATE | N | Data do atendimento. |
| 8 | HR_ATENDIMENTO | DATE | N | Hora do atendimento. |
| 9 | TP_ATENDIMENTO | VARCHAR2 | N | Tipo de atendimento. |
| 10 | CD_PRESTADOR | NUMBER | Y | Codigo do prestador |
| 11 | CD_LEITO | NUMBER | Y | Codigo do leito onde se encontra o paciente. |
| 12 | CD_LOC_TRANS | NUMBER | Y | Codigo identificador do local de origem do paciente transferido. |
| 13 | CD_MOT_ALT | NUMBER | Y | Codigo identificador do Motivo de Alta. |
| 14 | CD_CID | VARCHAR2 | Y | Codigo identificador do CID |
| 15 | CD_SERVICO | NUMBER | Y | Codigo do servico |
| 16 | DS_ATENDIMENTO | VARCHAR2 | Y | Descricao dp atendimento |
| 17 | DT_DIAG | DATE | Y | Data do diagnóstico |
| 18 | DT_ALTA | DATE | Y | Data da alta hospitalar. |
| 19 | DS_OBS_ALTA | VARCHAR2 | Y | Observacao de alta. |
| 20 | DT_ENTRADA_SAME | DATE | Y | Data de entrada do SAME. |
| 21 | DT_PREVISTA_ALTA | DATE | Y | Data da previsao de alta. |
| 22 | CD_TIP_RES | NUMBER | Y | Codigo identificador do tipo de resultado obtido no atendimento. |
| 23 | CD_TIP_ACOM | NUMBER | Y | Codigo identificador do tipo de acomodacao. |
| 24 | DT_VAL_GUIA | DATE | Y | Data de validade da Guia. |
| 25 | NR_GUIA | VARCHAR2 | Y | Numero da Guia. |
| 26 | HR_ALTA | DATE | Y | Hora da alta hospitalar. |
| 27 | CD_SER_DIS | NUMBER | Y | Codigo identificador do servico disponivel |
| 28 | CD_DES_ATE | NUMBER | Y | Codigo identificador do local de destino do paciente. |
| 29 | DS_ATE_OCO | VARCHAR2 | Y | Descriao da ocorrencia do atendimento |
| 30 | CD_ULTIMO_MOV_INT | NUMBER | Y | Codigo identificador da ultima movimentacao de leito. |
| 31 | CD_CASOS_ATD | NUMBER | Y | Codigo de identificacao do registro de informacoes do atendimento. |
| 32 | DS_DESTINO_TRANSFERENCIA | VARCHAR2 | Y | Descrição do destina da transferencia. |
| 33 | NM_USUARIO | VARCHAR2 | Y | Nome do usuario que registrou o atendimento. |
| 34 | CD_CON_PLA | NUMBER | Y | Codigo do plano de saude. |
| 35 | NM_USUARIO_ALTA | VARCHAR2 | Y | Nome do usuario da alta hospitalar. |
| 36 | CD_TIPO_INTERNACAO | NUMBER | Y | Codigo identificador do tipo de internacao. |
| 37 | CD_LOG_EXPORT_ATENDIME | NUMBER | Y | Codigo do LOG de exportacao do Atendimento. |
| 38 | CD_LOC_PROCED | NUMBER | Y | Código do Local de Procedencia |
| 39 | CD_LOG_EXPORT_ALTA | NUMBER | Y | Codigo do LOG de exportacao da Alta |
| 40 | SN_ACOMPANHANTE | VARCHAR2 | Y | Indica se o Paciente possui acompanhante: Sim / Nao |
| 41 | SN_INFECCAO | VARCHAR2 | Y | Indica se o paciente esta com infeccao: Sim / Nao |
| 42 | SN_RETORNO | VARCHAR2 | Y |  |
| 43 | CD_SSM_CIH | VARCHAR2 | Y | Codigo do Procedimento CIH |
| 44 | CD_CONVENIO_SECUNDARIO | NUMBER | Y | Codigo do convenio secundario. |
| 45 | CD_CON_PLA_SECUNDARIO | NUMBER | Y | Codigo do plano de saude do convenio secundario. |
| 46 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da empresa. |
| 47 | CD_ESPECIALID | NUMBER | Y | Codigo da especialidade principal do atendimento. |
| 48 | CD_TIP_MAR | NUMBER | Y | Codigo identificador do tipo de marcacao. |
| 49 | DT_REVISAO | DATE | Y | Data da revisao. |
| 50 | DT_RETORNO | DATE | Y | Data do retorno. |
| 51 | CD_ATENDIMENTO_PAI | NUMBER | Y | Codigo do atendimento pai. |
| 52 | QT_SESSOES | NUMBER | Y | Quantidade de sessoes a serem realizadas |
| 53 | DT_ALTA_MEDICA | DATE | Y | Data da alta medica. |
| 54 | NM_USUARIO_ALTA_MEDICA | VARCHAR2 | Y | Nome do usuario da alta medica. |
| 55 | HR_ALTA_MEDICA | DATE | Y | Hora da alta medica. |
| 56 | CD_SERVICO_SAIDA | NUMBER | Y | Codigo identificador do servico na saida do paciente. |
| 57 | CD_ESPECIALID_SAIDA | NUMBER | Y | Codigo identificador da especialidade na saída do paciente. |
| 58 | CD_LOC_TRANS_SAIDA | NUMBER | Y | Codigo identificador do local de transferencia na saída do paciente |
| 59 | CD_MOT_TRANS_SAIDA | NUMBER | Y | Codigo identificador do motivo da transferencia na saída do paciente. |
| 60 | DS_OBS_PSIH | VARCHAR2 | Y | Observacao do Centro de Controle de Infeccao Hospitalar |
| 61 | DT_AVISO_MEDICO | DATE | Y | Data do aviso medico |
| 62 | HR_AVISO_MEDICO | DATE | Y | Hora do aviso medico |
| 63 | DS_AVISO_TP_CONTATO | VARCHAR2 | Y | Tipo de contato do aviso medico |
| 64 | DS_AVISO_OBS | VARCHAR2 | Y | Observacao do aviso medico |
| 65 | NM_AVISO_USUARIO | VARCHAR2 | Y | Usuario do aviso medico |
| 66 | TP_PROGRAMA_ALTA_UNIDADE | VARCHAR2 | Y | Tipo de programacao de alta da unidade. |
| 67 | DS_PROGRAMA_ALTA | VARCHAR2 | Y | Descricao da programacao de alta |
| 68 | DT_PROGRAMA_ALTA | DATE | Y |  |
| 69 | NM_USUARIO_PROG_ALTA | VARCHAR2 | Y | Nome do usuario da programacao de alta |
| 70 | DT_LIBERACAO | DATE | Y | Data da Liberacao |
| 71 | SN_IMPORTA_AUTO | VARCHAR2 | N | Identifica Importacao Automatica. |
| 72 | CD_SUB_PLANO | VARCHAR2 | Y | Codigo do Sub-Plano do convenio |
| 73 | SN_BUSCA_ATIVA | VARCHAR2 | N | Identifica Busca Ativa |
| 74 | TP_BUSCA_ATIVA | VARCHAR2 | Y | Tipo de Busca Ativa |
| 75 | SN_OBITO | VARCHAR2 | Y | Indica se Paciente em Obito. |
| 76 | SN_EM_ATENDIMENTO | VARCHAR2 | N | Indica se o paciente esta em atendimento: S-Sim e N-Nao. |
| 77 | CD_TIP_SITUACAO | NUMBER | Y | Codigo do Tipo de Situacao atual do paciente. |
| 78 | TP_PRIORIDADE | VARCHAR2 | N | Tipo de prioridade |
| 79 | CD_SSM_SIA | VARCHAR2 | Y | Codigo do procedimento ambulatorial SUS. |
| 80 | CD_GRU_ATE | NUMBER | Y | Codigo do Grupo de Atendimento. |
| 81 | SN_CONSULTA_SIASUS | VARCHAR2 | Y | Indica se e consulta ambulatorial SUS. |
| 82 | NM_USUARIO_RETORNO | VARCHAR2 | Y | Nome do Usuario que registrou o Retorno. |
| 83 | DT_USUARIO_RETORNO | DATE | Y | Data do registro do Retorno. |
| 84 | SN_RECEBE_VISITA | VARCHAR2 | N | Indica se o paciente recebe visitas: S-Sim e N-Nao |
| 85 | NR_CHAMADA_PAINEL | VARCHAR2 | Y | Numero sequencial de chamada do paciente no painel da recepcao. |
| 86 | NR_LAUDO | NUMBER | Y | Numero do laudo |
| 87 | NR_LAUDO_ALTO_CUSTO | NUMBER | Y | Numero do laudo de Alto Custo |
| 88 | CD_USUARIO_DIAG | VARCHAR2 | Y | Codigo identificador do usuario do diagnostico. |
| 89 | CD_USUARIO_UPD_DIAG | VARCHAR2 | Y | Codigo identificador do usuario que alterou o diagnostico. |
| 90 | DT_ULTIMA_UPD_DIAG | DATE | Y | Data da ultima alteracao do diagnostico. |
| 91 | NR_PEDIDO_LAUDO | NUMBER | Y | Numero do pedido do Laudo |
| 92 | CD_ESCALA_DIA | NUMBER | Y | Codigo da escala que gerou o atendimento. |
| 93 | HR_AGENDA | DATE | Y | Horario da agenda que gerou o atenidmento. |
| 94 | CD_TIP_ACOM_COBERTURA | NUMBER | Y | Codigo identificador do tipo de cobertura para acompanhante. |
| 95 | CD_SETOR_OBITO | NUMBER | Y | Codigo identificador do setor do obito. |
| 96 | DT_SOLIC_MEDICA | DATE | Y | Data em que foi emitida a requisicao medica pelo Medico do Paciente |
| 97 | NR_SEQ_PREIMPRE | NUMBER | Y | Numeracao pre-impressa para o atendimento (conta ambulatorial), própria do convenio |
| 98 | SN_ATENDIMENTO_APAC | VARCHAR2 | Y | Informar se o Atendimento e APAC ou nao. |
| 99 | SN_OBITO_INFEC | VARCHAR2 | Y | Indica se o óbito foi por infeccao |
| 100 | DT_CHEGADA_PACIENTE | DATE | Y | Data/Hora da chegada do paciente na instituicao (essa data/hora e proveniente de senhas de chegas) |
| 101 | NR_CARTEIRA | VARCHAR2 | Y | Numero da carteira do convenio |
| 102 | DT_VALIDADE | DATE | Y | Data de Validade da Carteira do Convenio |
| 103 | NM_EMPRESA | VARCHAR2 | Y | Empresa da carteira do convenio |
| 104 | NR_CARTEIRA_ACOPLAMENTO | VARCHAR2 | Y | Numero da Carteira do Convenio de Acoplamento |
| 105 | DT_VALIDADE_ACOPLAMENTO | DATE | Y | Data de Validade da Carteira do Convenio de Acoplamento |
| 106 | NM_EMPRESA_ACOPLAMENTO | VARCHAR2 | Y | Empresa da Carteira do Convenio de Acoplamento |
| 107 | NR_DECLARACAO_OBITO | VARCHAR2 | Y | Numero de registro da Declaracao de Óbito do Paciente |
| 108 | SENHA_SUS | VARCHAR2 | Y | Senha do SUS para internacao de pacientes |
| 109 | HR_ATENDIMENTO_MEDICO | DATE | Y | Hora do atendimento médico. |
| 110 | CD_SEQ_INTEGRA | VARCHAR2 | Y | Codigo sequencial da integracao. |
| 111 | DT_INTEGRA | DATE | Y | Data da integracao |
| 112 | SN_PACIENTE_PAGA_DIF_DIARIA | VARCHAR2 | Y | Paciente paga diferenca de Diaria do convenio ? |
| 113 | CD_GUIA | NUMBER | Y | Codigo da Guia Principal do Atendimento |
| 114 | CD_LAUDO_APAC | NUMBER | Y | Codigo do Laudo Apac. |
| 115 | TP_DOENCA | VARCHAR2 | Y | Tipo de Doenca usado no TISS |
| 116 | NR_TEMPO_DOENCA | NUMBER | Y | Quantidade temporaria da doenca usado no TISS |
| 117 | TP_TEMPO_DOENCA | VARCHAR2 | Y | Tipo de unidade de tempo de doenca usado no TISS |
| 118 | TP_CARATER_INTERNACAO | VARCHAR2 | Y | Tipo de carater de internacao do TISS |
| 119 | TP_OBITO_MULHER | NUMBER | Y | Tipo de Obito no caso das mulheres |
| 120 | TP_ACIDENTE_TISS | NUMBER | Y | Tipo de acidente usado no TISS |
| 121 | CD_ATENDIMENTO_SUS_VINCULADO | NUMBER | Y | Indica o atendimento de internac?oO SUS que esta associado a esse atendimento (PDA 145181) |
| 122 | TP_ATENDIMENTO_TISS | NUMBER | Y | Tipo de Atendimento usado no TISS |
| 123 | SN_GESTACAO_TISS | VARCHAR2 | Y | Internacao obstetrica devido a Gestacao - Usado no TISS |
| 124 | SN_ABORTO_TISS | VARCHAR2 | Y | Internacao obstetrica devido a aborto - Usado no TISS |
| 125 | SN_TRANSTORNO_TISS | VARCHAR2 | Y | Internacao obstetrica devido a Transtorno relacionado a gravidez - Usado no TISS |
| 126 | SN_COMPLICACAO_TISS | VARCHAR2 | Y | Internacao obstetrica devido a complicacao no periodo puerperio - Usado no TISS |
| 127 | SN_ATEND_NEO_TISS | VARCHAR2 | Y | Internacao obstetrica devido a atendimento ao recem nascido na sala de parto - Usado no TISS |
| 128 | SN_COMPLICACAO_NEO_TISS | VARCHAR2 | Y | Internacao obstetrica devido a complicacao neonatal - Usado no TISS |
| 129 | SN_BAIXO_PESO_TISS | VARCHAR2 | Y | Internacao obstetrica devido a baixo peso ( < 2,5kg ) - Usado no TISS |
| 130 | SN_CESARIO_TISS | VARCHAR2 | Y | Internacao obstetrica devido a parto cesario - Usado no TISS |
| 131 | SN_RECEM_NATO | VARCHAR2 | Y | Identifica se atendimento e a recem nascido |
| 132 | SN_NOTIFICAR_POLICIA | VARCHAR2 | Y | Informa se a autoridade policial deve ser notificada |
| 133 | SN_CUSTODIA_POLICIAL | VARCHAR2 | Y | Informa se o paciente do atendimento esta sob custódia policial |
| 134 | CD_CID_OBITO | VARCHAR2 | Y | Identifica o CID da Causa do obito. |
| 135 | SN_NORMAL_TISS | VARCHAR2 | Y | Internacao obstetrica devido a parto Normal - Usado no TISS |
| 136 | SN_PAGA_ACOMPANHANTE | VARCHAR2 | Y | Indica se o plano paga acompanhante |
| 137 | CD_SETOR_LOCAL_FSCC | NUMBER | Y | Campo para identificar o setor em que o paciente se encontra quando o mesmo estiver no Centro Cir... |
| 138 | SN_PACOTE | VARCHAR2 | Y | Informa de o atendimento foi iniciado como pacote |
| 139 | SN_PACOTE_DAY_CLINIC | VARCHAR2 | Y | Informa de o atendimento foi iniciado como pacote do tipo day-clinic |
| 140 | NR_GUIA_ENVIO_PRINCIPAL | VARCHAR2 | Y | Numero da Guia Principal de Envio |
| 141 | CD_PROCEDIMENTO | VARCHAR2 | Y | Codigo do procedimento SUS portaria 321 |
| 142 | CD_CBO_PRESTADOR | VARCHAR2 | Y | Codigo do CBO do prestador no SUS portaria 321 |
| 143 | CD_CARATER_ATENDIMENTO | NUMBER | Y | Codigo da carateristica do atendimento SUS portaria 321 |
| 144 | CD_ATENDIMENTO_INTEGRA | VARCHAR2 | Y | Codigo do atendimento do paciente (de-para) |
| 145 | CD_PROCEDIMENTO_ALTA | VARCHAR2 | Y | Procedimento de Alta SUS-SIH |
| 146 | CD_PRESTADOR_EM_ATENDIMENTO | VARCHAR2 | Y | Identifica o Usuario(Prestador) que esta atendendo o Paciente na Urgencia quando o Paciente estiv... |
| 147 | SN_RELACAO_TRABALHO | VARCHAR2 | N | Indica se o diagnóstico e relacionado ao trabalho do paciente |
| 148 | SN_SUSPEITA_EPIDEMIA | VARCHAR2 | N | Indica se ha suspeita de epidemia |
| 149 | SN_REAVALIACAO | VARCHAR2 | Y | Especifica se o paciente do atendimento tera reavalicao |
| 150 | NR_TAG_ATENDIMENTO | VARCHAR2 | Y | Indica o numero da TAG associado ao atendimento |
| 151 | SN_INTERNADO | VARCHAR2 | N | Indica se o Paciente deste Atendimento esta internado. |
| 152 | NR_PRE_NATAL | VARCHAR2 | Y | Numero do Sis Pre-Natal distribuido pelo SUS |
| 153 | NR_AUTORIZACAO_GESTOR | VARCHAR2 | Y | Numero de autorizacao - Senha (CMC) do Paciente SUS |
| 154 | TP_ENCAMINHAMENTO_OBITO | VARCHAR2 | Y | Tipo de encaminhamento realizado pelo Hospital após constatado o óbito do paciente. |
| 155 | CD_PROTOCOLO | NUMBER | Y | Codigo do protocolo |
| 156 | CD_SINTOMA_AVALIACAO | NUMBER | Y | Codigo do sintoma avaliacao |
| 157 | VL_ESCORE | NUMBER | Y | valor do escore |
| 158 | CD_COR_REFERENCIA | NUMBER | Y | Codigo da cor de referencia |
| 159 | CD_RES_LEI_REGULACAO | NUMBER | Y | Coluna criada com o objetivo de armazenar a pre-internacao gerada por uma solicitacao regulada at... |
| 160 | CD_MEIO_TRANSPORTE | NUMBER | Y | Codigo do meio de transporte do atendimento |
| 161 | DH_ALTA_MEDICA_LANCADA | DATE | Y | Data/hora da alta medica que o usuario lancou no sistema |
| 162 | DH_ALTA_LANCADA | DATE | Y | Data/hora da alta hospitalar que o usuário lançou no sistema |
| 163 | NM_USUARIO_AUTORIZADOR | VARCHAR2 | Y | Usuario que autorizou o aluno realizar a alta medica do paciente |
| 164 | CD_ATENDIMENTO_ORIGINAL | NUMBER | Y | Identificador do atendimento que originou um novo atendimento externo, quando da utilizacao de pr... |
| 165 | SN_SEGURO_COMPLEMENTAR | VARCHAR2 | Y | Indica se possui seguro complementar. |
| 166 | SN_RETENCAO_JUDICIAL | VARCHAR2 | Y | Indica se possui retencao judicial. |
| 167 | CD_SISTEMA | VARCHAR2 | Y | Coluna CD_SISTEMA para identificar qual o sistema que criou o atendimento. |
| 168 | CD_PRESTADOR_INDICACAO | NUMBER | Y |  |
| 169 | CD_SENHA_AUTORIZACAO | NUMBER | Y | CÓDIGO DE AUTORIZAÇÃO DE SENHA |
| 170 | CD_PROGRAMAS_HOMECARE | NUMBER | Y | Código da tabela de cadastro de programas home care por convênio |
| 171 | CD_ATENDIMENTO_TISS | NUMBER | Y | Código da Tabela 50 da TUSS |
| 172 | TP_COBERTURA_ESPECIAL | VARCHAR2 | Y | Código da Cobertura Especial conforme tabela de domínio nº 75. |
| 173 | TP_REGIME_ATENDIMENTO | VARCHAR2 | Y | Código da Cobertura Especial conforme tabela de domínio nº 76. |
| 174 | TP_SAUDE_OCUPACIONAL | VARCHAR2 | Y | Código da Cobertura Especial conforme tabela de domínio nº 77. |
| 175 | DS_OPME | VARCHAR2 | Y |  |
| 176 | DS_CRM_PRESTADOR_OPME | VARCHAR2 | Y | CRM do prestador que implantou órteses e próteses no paciente. |
| 177 | DT_INICIO_USO_OPME | DATE | Y | Data de início do uso de órteses e próteses do paciente. |
| 178 | TP_LIBERA_PAC_CON | VARCHAR2 | N | TIPO DE LIBERACAO CONSULTORIO MEDICO |
| 179 | NM_PRESTADOR_OPME | VARCHAR2 | Y |  |
| 180 | DT_MES_ANO_INICIO_USO_OPME | DATE | Y |  |
| 181 | CD_PRODUTO_OPME | NUMBER | Y |  |
| 182 | NM_PRODUTO_OPME | VARCHAR2 | Y |  |

---

## DBAMV.ATENDIMENTO_AUTORIZA_CRDP_ACOM
> Tabela De Atendimento a ser autorizado para fornecimento de refeic?es para o acompanhante pelo convenio.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ATENDIMENTO | NUMBER | N | CODIGO DO ATENDIMENTO |
| 2 | CD_CONVENIO | NUMBER | Y | CODIGO DO CONVENIO |
| 3 | SN_AUTORIZADO | VARCHAR2 | N | Indica se o convenio autoriza as refeicoes para o Acompanhante neste Atendimento. |
| 4 | DH_AUTORIZACAO | DATE | Y | Data/Hora da Autorizacao |
| 5 | CD_USUARIO | VARCHAR2 | Y | Usuario |
| 6 | DS_OBSERVACAO | VARCHAR2 | Y | Observacao da autorizacao |

---

## DBAMV.ATENDIMENTO_COPIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ATENDIMENTO_ORIGEM | NUMBER | Y | Atendimento de origem copiado |
| 2 | CD_MULTI_EMPRESA_ORIGEM | NUMBER | Y | Empresa de origem copiada |
| 3 | CD_ATENDIMENTO_COPIA | NUMBER | Y | Atendimento gerado pela cópia |
| 4 | CD_MULTI_EMPRESA_COPIA | NUMBER | Y | Empresa de destino da cópia |
| 5 | CD_USUARIO | VARCHAR2 | Y | Usuario que realizou a operacao de cópia |
| 6 | DT_COPIA | DATE | Y | Data da realização da cópia |
| 7 | CD_CONTA_ORIGEM | NUMBER | Y |  |
| 8 | CD_CONTA_DESTINO | NUMBER | Y |  |
| 9 | CD_SEQ | NUMBER | N | Chave primaria |
| 10 | CD_REMESSA | NUMBER | Y | Codigo da remessa |
| 11 | CD_REMESSA_DESTINO | NUMBER | Y |  |

---

## DBAMV.ATENDIMENTO_SUS_CIHA
> Tabela da produc?o SUS para calculo da filantropia na CIHA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ATENDIMENTO | NUMBER | N | Codigo do atendimento |
| 2 | TP_PRODUCAO | VARCHAR2 | N | Tipo da produc?o (SUS-I e SUS-A) |
| 3 | TP_ATENDIMENTO | VARCHAR2 | N | Tipo do atendimento |
| 4 | CD_CONVENIO | NUMBER | N | Codigo do convenio |
| 5 | CD_ORI_ATE | NUMBER | N | Codigo da origem do atendimento |
| 6 | CD_UNID_INT | NUMBER | Y | Codigo da unidade de internac?o |
| 7 | DT_ATENDIMENTO | DATE | N | Data do atendimento |
| 8 | HR_ATENDIMENTO | DATE | Y | Hora do atendimento |
| 9 | DT_ALTA | DATE | Y | Data da alta do atendimento |
| 10 | HR_ALTA | DATE | Y | Hora da alta do atendimento |
| 11 | CD_PACIENTE | NUMBER | N | Codigo do paciente (Prontuario) |
| 12 | NR_CNS | VARCHAR2 | Y | Codigo da carteira nacional de saude do paciente |
| 13 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da empresa |
| 14 | DT_COMPETENCIA_CIHA | DATE | N | Tera como finalidade indica quando foi a data de processamento |
| 15 | DT_PROCESSAMENTO | DATE | N | Data do processamento |
| 16 | NM_USUARIO_PROCESSAMENTO | VARCHAR2 | N | Usuario do processamento |

---

## DBAMV.ATENDIMENTO_TIPO_AUDIT_ISOLAMT
> Tabela de cadastro dos itens de prescricao sobre auditoria de isolamento para o atendimento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ATENDIME_TIP_AUDIT_ISOLAMT | NUMBER | N | Codigo de identificac?o do registro |
| 2 | DT_AUDITORIA | DATE | N | Data da auditoria do item de prescricao para o atendimento |
| 3 | NM_USUARIO | VARCHAR2 | N | Nome do usuario responsavel pela auditoria |
| 4 | SN_ATIVO | VARCHAR2 | N | Indica se a auditoria esta ativa |
| 5 | CD_TIPO_AUDITORIA_ISOLAMENTO | NUMBER | N | Codigo do tipo de auditoria de isolamento |
| 6 | CD_ATENDIMENTO | NUMBER | N | Codigo do atendimento |
| 7 | CD_ITPRE_MED | NUMBER | N | Codigo do item de prescric?o de medicamento |

---

## DBAMV.ATENDIMENTO_XML
> tabela de atendimentos importados do XML para o custos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ATENDIMENTO_GEN | NUMBER | N | codigo do atendimento |
| 2 | DT_ATENDIMENTO_GEN | DATE | N | data de cadastro do atendimento |
| 3 | DT_ALTA_GEN | DATE | N | data da alta do paciente |
| 4 | TP_ATENDIMENTO | VARCHAR2 | N | tipo de atendimento |
| 5 | CD_PRESTADOR_MV | NUMBER | N | codigo prestador mv do atendimento |
| 6 | CD_CONVENIO_MV | NUMBER | N | codigo convenio mv do atendimento |
| 7 | CD_ESPECIALIDADE_MV | NUMBER | N | codigo da especialidade mv do atendimento |
| 8 | CD_SERVICO_MV | NUMBER | N | codigo do servico mv do atendimento |
| 9 | CD_GRUPO_CID_MV | NUMBER | N | codigo do grupo mv do atendimento |
| 10 | CD_SUB_GRUPO_CID_MV | VARCHAR2 | N | codigo do grupo de cid mv do atendimento |
| 11 | CD_CID_MV | VARCHAR2 | N | codigo do cid mv do atendimento |
| 12 | CD_CIRURGIA_MV | NUMBER | Y | codigo da cirurgia mv do atendimento |
| 13 | CD_TIPO_INTERNACAO_MV | NUMBER | N | tipo de paciente mv do atendimento |
| 14 | CD_PACIENTE_GEN | NUMBER | N | codigo do paciente genhio do atendimento |
| 15 | NM_PACIENTE_GEN | VARCHAR2 | N | nome do paciente genhio do atendimento |
| 16 | TP_SEXO_PACIENTE_GEN | VARCHAR2 | N | sexo do paciente genhio do atendimento |
| 17 | CD_ARQUIVO_XML | NUMBER | N | codigo do arquivo que o atendimento pertence |
| 18 | CD_PACIENTE_MV | NUMBER | N | codigo do paciente no SOUL |
| 19 | CD_ATENDIMENTO_MV | NUMBER | Y | codigo do atendimento mv |
| 20 | CD_ORIGEM_ATENDIMENTO_MV | NUMBER | N | codigo da origem do atendimento mv |
| 21 | CD_ITEM_RES_MV | NUMBER | Y | codigo do item da conta mv |
| 22 | CD_PROCEDIMENTO_MV | VARCHAR2 | N | codigo do procedimento mv do atendimento |
| 23 | SN_MULTIPLOS_PROCEDIMENTOS | VARCHAR2 | Y | indica se o atendimento importado teve multiplos procedimentos |
| 24 | SN_UTI | VARCHAR2 | Y | indica se o atendimento importado teve diaria de UTI |

---

## DBAMV.ATENDIME_ANT_PRO
> Tabela de cadastro dos produtos sobre auditoria para o atendimento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ATEND_ANT_PRO | NUMBER | N | Codigo de identificac?o do registro |
| 2 | DT_AUDITORIA | DATE | N | Data da auditoria do produto para o atendimento |
| 3 | NM_USUARIO | VARCHAR2 | N | Nome do usuario responsavel pela auditoria |
| 4 | SN_ATIVO | VARCHAR2 | N | Indica se a auditoria esta ativa |
| 5 | CD_TP_AUDIT_PSIH | NUMBER | N |  |
| 6 | CD_ATENDIMENTO | NUMBER | N |  |
| 7 | CD_ANTIMICROB | VARCHAR2 | N |  |
| 8 | CD_PRODUTO | NUMBER | N |  |
| 9 | CD_ITPRE_MED | NUMBER | Y | Codigo de identificac?o na tabela itpre_med |
| 10 | TP_PERMITE_PRORROGACAO | VARCHAR2 | N | Tipos de Permissão de Prorrogação: (S) - Sim / (N) - Nao / (D) A Definir |

---

## DBAMV.ATENDIME_CASOS_CONFIDENCIAL
> Informac?es conficenciais da Consulta de atendimento Ambulatorial

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ATENDIME_CASOS_CONFIDENCIAL | NUMBER | N | Codigo de identificac?o do resgistro confidencial |
| 2 | CD_ATENDIMENTO | NUMBER | N | Codigo do Atendimento ao qual o registro esta relacionado |
| 3 | DS_CASO_ATD_CONFIDENCIAL | VARCHAR2 | N |  |

---

## DBAMV.ATENDIME_CD_PAC_ITAGENDA_BKP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ATENDIMENTO | NUMBER | Y |  |
| 2 | PACIENTE_NEW | NUMBER | Y |  |
| 3 | PACIENTE_OLD | NUMBER | N |  |
| 4 | NR_CARTEIRA | VARCHAR2 | Y |  |
| 5 | CD_CONVENIO | NUMBER | N |  |
| 6 | CD_CON_PLA | NUMBER | Y |  |

---

## DBAMV.ATENDIME_CHAMADA_PAINEL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CHAMADA_PAINEL | NUMBER | N |  |
| 2 | CD_ATENDIMENTO | NUMBER | Y |  |
| 3 | DT_CHAMADA | DATE | Y |  |
| 4 | CD_USUARIO | VARCHAR2 | Y |  |

---

## DBAMV.ATENDIME_CONSUMO
> Cadastro dados sobre Conta de Reposic?o de Consumo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ATENDIMENTO | NUMBER | N | Codigo do atendimento |
| 2 | SN_CONSUMO | VARCHAR2 | N | Status do consumo |
| 3 | DT_CONFIRMACAO | DATE | N | Data de confirmac?o do consumo |
| 4 | CD_USUARIO_CONFIRMACAO | VARCHAR2 | N | Usuario que confirmou o consumo |

---

## DBAMV.ATENDIME_GRUPO_ASSISTENCIAL
> Tabela usada para cadastrar a movimentac?o do grupo assistencial

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ATENDIMENTO | NUMBER | N | Codigo do atendimento |
| 2 | CD_GRUPO_ASSISTENCIAL | NUMBER | N | Codigo do grupo assistencial |
| 3 | VL_RESPOSTA | VARCHAR2 | Y | Descric?o das respostas |
| 4 | NM_USUARIO | VARCHAR2 | N | Usuario responsavel pela transac?o |

---

## DBAMV.ATENDIME_HCARE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ATENDIMENTO | NUMBER | N |  |
| 2 | CD_ENDERECO | NUMBER | N |  |
| 3 | CD_PACIENTE | NUMBER | N |  |
| 4 | DT_PREV_INTER | DATE | Y |  |
| 5 | SN_INT_EFETIVADA | VARCHAR2 | Y |  |
| 6 | DT_SOLICITACAO | DATE | Y |  |
| 7 | CD_AREA | NUMBER | N |  |
| 8 | CD_PRESTADOR_ACO | NUMBER | N |  |
| 9 | CD_ENFER_SUPER | NUMBER | Y |  |
| 10 | CD_AUX_ENFER | NUMBER | Y |  |
| 11 | HR_INICIO_OPERACAO | DATE | Y |  |
| 12 | DT_INICIO_OPERACAO | DATE | Y |  |
| 13 | CD_RESP_FINANC | NUMBER | Y |  |
| 14 | TP_LIMINAR_JUDICIAL | VARCHAR2 | Y |  |
| 15 | NR_LIMINAR | VARCHAR2 | Y | Guarda o número da liminar |
| 16 | DT_LIMINAR | DATE | Y | Guarda a Data da liminar |
| 17 | SN_LIMINAR | VARCHAR2 | Y |  |
| 18 | CD_ORCAMENTO | NUMBER | Y | Guarda o código do orçamento. |

---

## DBAMV.ATENDIME_INDICE_ASIS
> Cadastro do estado de gravidade do paciente (ASIS)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ATENDIMENTO | NUMBER | N | Codigo de identificac?o do atendimento |
| 2 | DT_AVALIACAO | DATE | N | Data da avaliac?o do estado de gravidade do paciente |
| 3 | TP_INDICE_ASIS | VARCHAR2 | Y | Indices da tabela ASIS |
| 4 | NR_PESO_GRAMA | VARCHAR2 | Y | Peso em gamas do pacientes em bercario de alto risco |
| 5 | CD_MULTI_EMPRESA | NUMBER | N | Codigo multi-empresa |
| 6 | DT_MES | NUMBER | N | Mes do registro |
| 7 | DT_ANO | DATE | N | Ano do registro |
| 8 | NM_USUARIO | VARCHAR2 | N | Nome do usuario |
| 9 | DT_ULT_ALTERACAO | DATE | N | Data da ultima alterac?o do registro |

---

## DBAMV.ATENDIME_INFO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ATENDIMENTO | NUMBER | N |  |
| 2 | DS_INFO_ATENDIMENTO | LONG | Y |  |

---

## DBAMV.ATENDIME_LAUDO_AIH
> Tabela de dados complementares para o Laudo AIH associados ao atendimento.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ATENDIMENTO | NUMBER | N | Código do atendimento. |
| 2 | CD_CARATER_ATENDIMENTO | NUMBER | N | Código do caráter de atendimento. |
| 3 | CD_ESPEC_SUS | VARCHAR2 | N | Código da especialidade do leito SUS. |
| 4 | TP_LOCAL_PRESTADOR_SOL | VARCHAR2 | N | Tipo de local de atendimento do médico solicitante : (I) - INTERNO / (E) - EXTERNO |
| 5 | CD_PRESTADOR_SOL_INT | NUMBER | Y | Código do prestador interno. |
| 6 | CD_PRESTADOR_SOL_EXT | NUMBER | Y | Código do prestador externo. |

---

## DBAMV.ATENDIME_OBS_LACTARIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ATENDIMENTO | NUMBER | N |  |
| 2 | DS_OBS_LACTARIO | VARCHAR2 | N |  |

---

## DBAMV.ATENDIME_ORI_MEIO_MAG
> Tabela para guardar a informação do tipo de tratamento Planserv, por atendimento.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ATENDIMENTO | NUMBER | N | Número do atendimento. |
| 2 | TP_TP_ORI_MEIO_MAG | VARCHAR2 | N | Código de tratamento do Convênio. |

---

## DBAMV.ATENDIME_PRESTADOR_EXTERNO
> Tabela de relacionamento entre atendimentos e prestadores externos ao hospital

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ATENDIMENTO | NUMBER | N | Codigo do atendimento |
| 2 | CD_PRES_EXT | NUMBER | N | Codigo do prestador externo |

---

## DBAMV.ATENDIME_PROCEDIMENTO
> Tabela de Procedimentos do Atendimento.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ATENDIMENTO | NUMBER | N | Codigo do Atendimento. |
| 2 | CD_PRO_INT | VARCHAR2 | N | Codigo do Procedimento |
| 3 | NR_QUANTIDADE | NUMBER | N | Quantidade de procedimentos realizados. |
| 4 | SN_INCLUI_GUIA_ATEND | VARCHAR2 | N | Indica se o Procedimento sera lancado como Item da Guia principal do Atendimento. |

---

## DBAMV.ATENDIME_PROC_PRO_INT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ATENDIMENTO | NUMBER | N |  |
| 2 | CD_PRO_INT | VARCHAR2 | Y |  |

---

## DBAMV.ATENDIME_PROGRAMA
> Tabela usada para cadastrar a movimentac?o dos leitos do programa SOS Emergencia

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ATENDIMENTO | NUMBER | N | Codigo de atendimento do paciente |
| 2 | DT_ATENDIME_PROGRAMA | DATE | N | Data do movimento |
| 3 | SN_INTERNADO_ULTIMOS_DIAS | VARCHAR2 | N | Indica se o paciente esteve internado nos ultimos 30 dias |
| 4 | CD_MOTIVO_PERMANENCIA | NUMBER | Y | Codigo do motivo de permanencia |
| 5 | DS_OBSERVACAO | VARCHAR2 | Y | Observac?es |
| 6 | DS_USUARIO | VARCHAR2 | N | Usuario que realizou o movimento |
| 7 | CD_MOTIVO_SAIDA | NUMBER | Y | Codigo do motivo de saida. Esse codigo varia de acordo com o tipo de movimento que pode ser de tr... |
| 8 | DT_SAIDA | DATE | Y | Data em que ocorreu a saida do paciente. Podendo ser do leito (transferencias) ou do hospital (alta) |
| 9 | TP_MOV_PROGRAMA | VARCHAR2 | Y | Tipo do movimento do paciente no programa |
| 10 | CD_AVALIACAO | NUMBER | Y | Codigo da avaliac?o realizada no paciente |
| 11 | DS_GRAU_DEPENDENCIA | VARCHAR2 | Y | Grau da Dependencia que o paciente tem pela enfermagem |
| 12 | DS_COR_KANBAN | VARCHAR2 | Y | Cor atual do kanban |
| 13 | CD_UNID_INT | NUMBER | Y | Codigo da unidade de internac?o/Urgencia |
| 14 | CD_MOV_INT | NUMBER | N | ID da movimentac?o de leitos |
| 15 | SN_INTERNADO | VARCHAR2 | N | Indica se o paciente esta internado. |

---

## DBAMV.ATENDIME_PRO_INT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ATENDIMENTO | NUMBER | N |  |
| 2 | CD_PRO_INT | VARCHAR2 | Y |  |
| 3 | CD_PRO_INT_PROCEDIMENTO_ENTRAD | VARCHAR2 | Y |  |

---

## DBAMV.ATENDIME_SESSAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ATENDIMENTO_PAI | NUMBER | N |  |
| 2 | CD_ATENDIMENTO | NUMBER | Y |  |
| 3 | DT_AGENDAMENTO | DATE | Y |  |
| 4 | HR_AGENDAMENTO | DATE | Y |  |
| 5 | DT_ATENDIMENTO | DATE | Y |  |
| 6 | HR_ATENDIMENTO | DATE | Y |  |
| 7 | NM_USUARIO | VARCHAR2 | Y |  |
| 8 | CD_IT_ATENDIME_SESSAO | NUMBER | N |  |
| 9 | DIA_QT | VARCHAR2 | Y |  |
| 10 | ESQUEMA | VARCHAR2 | Y |  |
| 11 | OBSERVACAO | VARCHAR2 | Y |  |
| 12 | CD_SSM | VARCHAR2 | Y | (N?o utilizado apos 31/12/2007 portaria 321) |
| 13 | QT_LANCADA | NUMBER | Y | Quantidade lancada para o procedimento. |
| 14 | SN_CANCELADO | VARCHAR2 | N | Identifica que a sess?o foi cancelada. |
| 15 | DT_CANCELAMENTO | DATE | Y | Data em que foi efetuado o cancelamento da Sess?o. |
| 16 | HR_CANCELAMENTO | DATE | Y | Hora em que foi efetuado o cancelamento da Sess?o. |
| 17 | CD_USUARIO_CANCELAMENTO | VARCHAR2 | Y | Usuario responsavel pelo cancelamento da Sess?o. |
| 18 | CD_MOT_CANC | NUMBER | Y | Descric?o do Motivo do Cancelamento. |
| 19 | QT_CAMPOS | NUMBER | Y | Quantidade de campos irradiados em procedimentos de radioterapia |
| 20 | CD_PROCEDIMENTO_SIA | VARCHAR2 | Y | Procedimento Ambulatorial SUS |

---

## DBAMV.ATESTADOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ATESTADO | NUMBER | N |  |
| 2 | DS_TIPO | VARCHAR2 | N |  |
| 3 | DT_ATESTADO | DATE | N |  |
| 4 | CD_PRESTADOR | NUMBER | N |  |
| 5 | CD_ATENDIMENTO | NUMBER | Y |  |

---

## DBAMV.AVALIACAO_FARMACEUTICA_UNIDADE
> Tabela para configuração de avaliação farmacêutica por unidade de internação.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AVALIACAO_FARMACEUTICA | NUMBER | N | Código da avaliação farmacêutica. |
| 2 | CD_SETOR | NUMBER | N | Código do setor. |
| 3 | CD_UNID_INT | NUMBER | N | Código da unidade de internação. |
| 4 | TP_AVALIACAO_FARMACEUTICA | VARCHAR2 | N | Tipo de avaliação farmacêutica: MAN ou AUT. |
| 5 | SN_AVALIACAO_FARMACEUTICA | VARCHAR2 | N | Sinalizador de avaliação farmacêutica: S (Sim) ou N (No). |

---

## DBAMV.CAPACIDADE_UTI_SUS
> Capacidade instalada de leitos uti sus por competência

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CAPACIDADE_UTI | NUMBER | N | Código da capacidade |
| 2 | CD_MULTI_EMPRESA | NUMBER | N | Código da empresa |
| 3 | DT_COMPETENCIA | DATE | N | Competência da capacidade |
| 4 | CD_ESPECIALIDADE_UTI | NUMBER | N | Código da especialidade uti sus |
| 5 | QT_LEITOS | NUMBER | N | Quantidade de leitos da especialidade na competência |
| 6 | SN_LIBERA_CRITICA | VARCHAR2 | N | Libera faturar mais do que a capacidade, Sim ou Não |
| 7 | NM_USUARIO_LIBERA | VARCHAR2 | Y | Usuário que libera ou não a crítica de ultrapassar o limite da capacidade |
| 8 | NM_USUARIO_ALTERACAO | VARCHAR2 | Y | Usuário que fez alguma alteração |

---

## DBAMV.CARATER_ATENDIMENTO
> Caracteristicas do Atendimento Ambulatorial SUS.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CARATER_ATENDIMENTO | NUMBER | N | Codigo da caracteristica do atendimento ambulatorial. |
| 2 | DS_CARATER_ATENDIMENTO | VARCHAR2 | N | Descric?o da caracteristica do atendimento ambulatorial. |

---

## DBAMV.CENARIO_ATEND_DESCARTADO
> Atendimentos Desconsiderados do Cenario.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CENARIO_ATEND_DESCARTADO | NUMBER | N | Codigo do Atendimento Descartado do Cenario. |
| 2 | CD_COMPETENCIA_GERACAO | NUMBER | N | Codigo da Consolidac?o do Atendimento. |
| 3 | CD_CENARIO | NUMBER | N | Codigo do Cenario. |

---

## DBAMV.CEP_UNIDADE_ATENDIMENTO
> Tabela de faixa de ceps por unidade de atendimento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CEP_UNIDADE_ATENDIMENTO | NUMBER | N | Código da faixa de CEPs. |
| 2 | CD_UNIDADE_ATENDIMENTO | NUMBER | N | Código da Unidade de Atendimento. |
| 3 | NR_CEP_INICIAL | VARCHAR2 | N | CEP inicial da faixa. |
| 4 | NR_CEP_FINAL | VARCHAR2 | N | CEP final da faixa. |

---

## DBAMV.CLASSE_LOCAL
> De Para de Classe de Nota X Local de Atendimento.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CLASSE_LOCAL | NUMBER | N | Identificador da relac?o de classe de nota X local de atendimento. |
| 2 | NR_CLASSE_NOTA | VARCHAR2 | N | Numero da Classe de Nota. |
| 3 | NR_LOCAL_ATENDIMENTO | NUMBER | N | Numero do Local de Atendimento. |
| 4 | TP_SITUACAO | VARCHAR2 | N | Situac?o do relac?o Classe de Nota X Local de Atendimento. |

---

## DBAMV.CODIGO_LEITO
> Tabela de de-para de Leitos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LEITO | NUMBER | N | Codigo do Leito no sistema MV |
| 2 | CD_LEITO_EXTERNO | NUMBER | Y | Codigo do Leito no sistema Externo |
| 3 | CD_ENFERMARIA_EXTERNO | NUMBER | Y | Codigo da Enfermaria no sistema Externo |
| 4 | CD_POSTO_ENFERMARIA_EXTERNO | NUMBER | Y | Codigo do posto de Enfermaria no sistema Externo |
| 5 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da multi-empresa |

---

## DBAMV.DGVA_EVOLUCAO_SOL_ATND_RGL
> Tabela de evolução da solicitação de atendimento de regulação - drogas vasoativas.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DGVA_EVOLUCAO_SOL_ATND_RGL | NUMBER | N | Código único que identifica a droga vasoativa na evolução da solicitação de atendimento de Regula... |
| 2 | CD_EVOLUCAO_SOL_ATND_RGL | NUMBER | N | Código que identifica a evolução da solicitação de atendimento de Regulação. |
| 3 | NM_DROGA_VASOATIVA | VARCHAR2 | N | Descrição da droga vasoativa. |
| 4 | DS_DOSAGEM | VARCHAR2 | N | Dosagem da droga vasoativa. |

---

## DBAMV.DIAGNOSTICO_ATENDIME_PROTOCOLO
> Protocolos do atendimento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DIAGNOSTICO_ATENDIME | NUMBER | N | Codigo do diagnostico do atendimento |
| 2 | CD_PROTOCOLO | NUMBER | N | Codigo do protocolo do atendimento |
| 3 | QT_CICLO | NUMBER | N | Quantidade de ciclos para o protocolo |

---

## DBAMV.ENT_PRO_ATENDIMENTO
> Tabela que ira armazenar os atendimentos relacionados a entrada de nota fiscal de consignado

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ENT_PRO | NUMBER | N | Codigo da entrada de nota fiscal de consignado |
| 2 | CD_ATENDIMENTO | NUMBER | N | Codigo do atendimento que esta relacionado a entrada |

---

## DBAMV.ESPEC_SERV_PAC_SUS
> Cadastro das especialidade e/ou servicos autorizados para atendimentos SUS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ESPEC_SERV_PAC_SUS | NUMBER | N | Codigo Identificador do registro na tabela |
| 2 | DT_ATUALIZACAO | DATE | N | Data da inclus?o/atualizac?o do registro |
| 3 | CD_SER_DIS | NUMBER | Y |  |
| 4 | CD_PACIENTE | NUMBER | N |  |
| 5 | CD_SERVICO | NUMBER | Y |  |
| 6 | CD_ESPECIALID | NUMBER | Y |  |
| 7 | CD_USUARIO | VARCHAR2 | N |  |
| 8 | DS_MENSAGEM | VARCHAR2 | N | Mensagem a ser apresentada no momento da tentativa de atendimento |

---

## DBAMV.ESPL_LEITO_REGULACAO
> Tabela de especialidade de leitos na regulação

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ESPL_LEITO_REGULACAO | VARCHAR2 | N | Código da especialidade de leito. |
| 2 | DS_ESPL_LEITO_REGULACAO | VARCHAR2 | N | Descrição da especialidade de leito. |
| 3 | TP_ESPECIALIDADE | VARCHAR2 | N | Tipos de especialidade: (1) - CIRURGICO /(2) - CLÍNICO /(3) - COMPLEMENTAR /(4) - OBSTÉTRICO /(5)... |
| 4 | NR_IDADE_INICIAL | NUMBER | Y | Idade mínima permitida para a especialidade do leito |
| 5 | NR_IDADE_FINAL | NUMBER | Y | Idade máxima permitida para a especialidade do leito |
| 6 | TP_SEXO | VARCHAR2 | N | Tipo do sexo do paciente permitido para a especialidade do leito |

---

## DBAMV.EVE_SIASUS_LOG
> Tabela de LOG para armazenamento dos dados transferidos de um atendimento ambulatorial para internac?o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EVENTOS | NUMBER | N | Chave Primaria da Tabela |
| 2 | DS_LOCAL_EXPORTACAO | VARCHAR2 | Y | Descric?o do Local de Exportac?o |
| 3 | QT_LANCADA | NUMBER | Y | Quantidade de procedimentos lancados |
| 4 | CD_SSM | VARCHAR2 | Y | Codigo do Procedimento antes da portaria 321 |
| 5 | CD_ESPECIALID | NUMBER | Y | Codigo da Especialidade |
| 6 | CD_GRU_ATE | NUMBER | Y |  |
| 7 | CD_TIP_ATE | NUMBER | Y |  |
| 8 | CD_FAT_SIA | NUMBER | Y | Codigo da Fatura |
| 9 | CD_PACIENTE | NUMBER | Y | Codigo do Paciente |
| 10 | CD_PRESTADOR | NUMBER | Y | Codigo do Prestador |
| 11 | CD_PRESTADOR_PODE_TER | NUMBER | Y | Codigo do Prestador |
| 12 | CD_CONVENIO | NUMBER | Y | Codigo do Convenio |
| 13 | CD_ORI_ATE | NUMBER | Y | Codigo da Origem de lancamento |
| 14 | DT_EVE_SIASUS | DATE | Y | Data de Lancamento no faturamento |
| 15 | CD_IMP_FAT | NUMBER | Y |  |
| 16 | CD_IT_MARCACAO | NUMBER | Y | Codigo do Item de marcac?o |
| 17 | NM_USUARIO | VARCHAR2 | Y | Nome do Usuario |
| 18 | CD_FAIXA_ETARIA | NUMBER | Y | Codigo da Faixa Etaria do Paciente |
| 19 | NM_PACIENTE | VARCHAR2 | Y | Nome do Paciente |
| 20 | VL_BASE_REPASSADO | NUMBER | Y |  |
| 21 | CD_ATENDIMENTO | NUMBER | Y | Codigo do atendimento |
| 22 | CD_APAC | NUMBER | Y |  |
| 23 | SN_APAC_PRINCIPAL | VARCHAR2 | Y |  |
| 24 | VL_BASE_REPASSADO_ANEST | NUMBER | Y |  |
| 25 | NR_CNPJ | NUMBER | Y |  |
| 26 | NR_NOTA | NUMBER | Y |  |
| 27 | CD_SERVICO | NUMBER | Y | Codigo do Servico realizado |
| 28 | CD_CIDADE | NUMBER | Y | Codigo da Cidade do paciente |
| 29 | CD_ITPED_RX | NUMBER | Y | Codigo do Item de Pedido do RX |
| 30 | CD_ITPED_LAB | NUMBER | Y | Codigo do Item de Pedido do Laboratorio |
| 31 | CD_SISCO_CITO | NUMBER | Y | Codigo do Sisco Citopatologico |
| 32 | CD_SISCO_HISTO | NUMBER | Y | Codigo do Sisco Histopatologico |
| 33 | CD_SMS | NUMBER | Y | Codigo do CHEKIN ( Codigo que indica que o exame foi autorizado para apresentac?o a SES ). |
| 34 | CD_SETOR | NUMBER | Y | Codigo do Setor solicitante |
| 35 | CD_SETOR_PRODUZIU | NUMBER | Y | Codigo do Setor Executante |
| 36 | CD_MULTI_EMPRESA | NUMBER | Y | Coluna Criada na vers?o v4.5 |
| 37 | CD_CIRURGIA_AVISO | NUMBER | Y | Codigo da Cirurgia |
| 38 | CD_PRESTADOR_EXECUTANTE | NUMBER | Y | Prestador que executou o eventos, que sera utilizado no repasse. O CD_PRESTADOR guarda o prestado... |
| 39 | CD_DECENDIO | NUMBER | Y | Defini a qual decendio da fatura o lancamento pertence |
| 40 | SN_SOBRA | VARCHAR2 | Y | Define se lancamento e tipo sobra ou nao |
| 41 | CD_UNIDADE_REGIONAL | VARCHAR2 | Y | Codigo da Unidade Regional |
| 42 | CD_FAT_SIA_REAPRESENT | NUMBER | Y | Codigo da fatura que a sobra foi reapresentada |
| 43 | DT_DECENDIO | DATE | Y | Data em que foi incluido o lancamento no decendio. |
| 44 | CD_CID_PRINCIPAL | VARCHAR2 | Y | Codigo Internacional de Doencas Principal da Cobranca. |
| 45 | CD_CID_SECUNDARIO | VARCHAR2 | Y | Codigo Internacional de Doencas Secundario da Cobranca. |
| 46 | CD_UPS | NUMBER | Y | Indica o codigo da UPS do lancamento |
| 47 | CD_CBO_PRESTADOR | VARCHAR2 | Y | Codigo de CBO do prestador |
| 48 | CD_PROCEDIMENTO | VARCHAR2 | Y | Codigo do Procedimento apos a Portaria 321 |
| 49 | VL_SERVICO_AMBULATORIAL | NUMBER | Y | Valor do servico ambulatorial |
| 50 | VL_SERVICO_PROFISSIONAL | NUMBER | Y | Valor do servico profissional ambulatorial |
| 51 | VL_SERVICO_ANESTESIA | NUMBER | Y | Valor do servico anestesista ambulatorial |
| 52 | VL_TOTAL_AMBULATORIAL | NUMBER | Y | Valor total ambulatorial |
| 53 | NR_IDADE | NUMBER | Y | Idade do paciente |
| 54 | NR_AUTORIZACAO_GESTOR | NUMBER | Y | Numero da Autorizacao do Gestor |
| 55 | CD_CARATER_ATENDIMENTO | NUMBER | Y | Codigo da carateristica do atendimento |
| 56 | DS_TIPO_MOVIMENTACAO | VARCHAR2 | Y | Utilizado para descrever qual o tipo de movimentac?o inseriu o registro nesta tabela |

---

## DBAMV.EXCECAO_OBRIGA_CID
> Tabela que armazena as excec?es de nao obrigatoriedade de CID para fechamento do atendimento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EXCECAO_OBRIGA_CID | NUMBER | N | Codigo da excec?o para que o usuario possa incluir motivos de alta que nao exigem que o medico in... |
| 2 | CD_MOT_ALT | NUMBER | Y | Codigo do motivo da alta que sera excecao |
| 3 | CD_TIP_RES | NUMBER | Y | Codigo do tipo de resultado que sera excecao |

---

## DBAMV.FFIS_ITENS_ATENDIMENTO
> Tabela de carga para faturamento sus internação.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CHAVE_FFIS | NUMBER | N | Chave primária da tabela dbamv.ffis_itens_atendimento para controle interno |
| 2 | DT_CARGA | DATE | Y | Data da realização da carga |
| 3 | TP_PERIODO_RECEITA | VARCHAR2 | Y | Período para cálculo do Faturamento Hospitalar e Ambulatorial (Competência Alta = F, Data Lançame... |
| 4 | CD_SETOR | NUMBER | Y | Código do Setor Solicitante oriundo da itreg_fat |
| 5 | CD_SETOR_PRODUZIU | NUMBER | Y | Código do Setor Executante oriundo da itreg_fat |
| 6 | CD_REG_FAT | NUMBER | N | Código do Registro de Faturamento |
| 7 | CD_REG_FAT_GLOSA | NUMBER | Y | Código do Registro de Faturamento de Glosa |
| 8 | CD_MULTI_EMPRESA | NUMBER | Y | Código da empresa da carga |
| 9 | DT_COMPETENCIA | DATE | Y | Data da competência da fatura |
| 10 | DT_LANCAMENTO | DATE | Y | Data de lançamento do itens na Conta do Paciente |
| 11 | CD_REMESSA | NUMBER | Y |  |
| 12 | CD_ATENDIMENTO | NUMBER | Y | Código do Atendimento |
| 13 | CD_CONVENIO | NUMBER | Y | Código do Convênio do Atendimento |
| 14 | TIPO_RECEITA | VARCHAR2 | Y | Grupo de Procedimento (SH , SP , SD , MD , MT , OP , OU) |
| 15 | CD_ITEM_RES | NUMBER | Y | Código do Item de Conta de Resultado |
| 16 | HR_LANCAMENTO | DATE | Y | Hora do Lançamento do Item no Faturamento |
| 17 | CD_PRO_FAT | VARCHAR2 | Y | Código do Procedimento do Faturamento |
| 18 | CD_LANCAMENTO | NUMBER | N | Código do Lançamento do Item no Faturamento |
| 19 | QT_LANCAMENTO | NUMBER | Y | Quantidade Lançada do Item no Faturamento |
| 20 | CD_CON_PLA | NUMBER | Y | Códígo da Condição dos Planos |
| 21 | DT_FINAL | DATE | Y |  |
| 22 | SN_FECHADA | VARCHAR2 | Y | Status da remessa da fatura |
| 23 | CD_GRU_FAT | NUMBER | Y | Código do Grupo de Faturamento |
| 24 | CD_PRESTADOR | NUMBER | Y | Código do Prestador |
| 25 | VL_TOTAL | NUMBER | Y | Soma do valores dos Procedimentos Diversos Hospitalar |
| 26 | SN_EQUIPE | VARCHAR2 | Y | Se os procedimentos de Ortesene e Protese for S, e se a Código do Prestador for S, a coluna receb... |

---

## DBAMV.FNRM_REPASSE_ATENDIMENTO
> Tabela de valores de honorarios por atendimento FNRM para o MV Custos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DT_COMPETENCIA | DATE | N | Data de competencia gerada |
| 2 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da empresa |
| 3 | CD_ATENDIMENTO | NUMBER | N | Atendimento do repasse |
| 4 | VL_HONORARIO | NUMBER | Y | Valor do honorario da regra vigente na competencia |
| 5 | TP_ORIGEM | VARCHAR2 | Y | Tipo de origem (Carga Inicial ou Gerac?o do Repasse para o Custos) |
| 6 | TP_REPASSE | VARCHAR2 | N | Tipo de Repasse do Atendimento |
| 7 | DT_GERACAO | DATE | N | Data da Gerac?o do Repasse de Custo |

---

## DBAMV.GF_DADOS_INTERNACAO
> Tabela que armazena os dados de internacao do gestor de fluxo.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ATENDIMENTO | NUMBER | N | Codigo do Atendimento |
| 2 | CD_PACIENTE | NUMBER | N | Codigo do Paciente |
| 3 | DT_ATENDIMENTO | DATE | N | Data do Atendimento |
| 4 | HR_ATENDIMENTO | DATE | N | Hora do Atendimento |
| 5 | TP_ATENDIMENTO | VARCHAR2 | N | Tipo do Atendimento |
| 6 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da multi empresa |

---

## DBAMV.ITLEITO_PROGRAMA_SUS
> Tabela usada para guardar os leitos usados pelo programa

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITLEITO_PROGRAMA_SUS | NUMBER | N | Codigo sequencial dos itens do programa |
| 2 | CD_LEITO_PROGRAMA_SUS | NUMBER | N | Codigo sequencial da tabela de programas (PK) |
| 3 | CD_LEITO | NUMBER | N | Codigo cadastral do leito (PK) |
| 4 | DT_INICIO | DATE | N | Data de inclusao do leito no programa |
| 5 | DT_FINAL | DATE | Y | Data do termino do leito no programa |

---

## DBAMV.LEITO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LEITO | NUMBER | N |  |
| 2 | CD_TIP_ACOM | NUMBER | N |  |
| 3 | CD_UNID_INT | NUMBER | N |  |
| 4 | DS_ENFERMARIA | VARCHAR2 | N |  |
| 5 | DS_LEITO | VARCHAR2 | N |  |
| 6 | TP_SEXO | VARCHAR2 | N |  |
| 7 | TP_OCUPACAO | VARCHAR2 | N | / O - Ocup. por paciente / V - Vago / L - Em Limpeza / I - Ocup. por infecção / R - Ocup. por res... |
| 8 | TP_SITUACAO | VARCHAR2 | N |  |
| 9 | DS_RESUMO | VARCHAR2 | Y |  |
| 10 | CD_LEITO_AIH | NUMBER | Y |  |
| 11 | CD_COPA | NUMBER | Y |  |
| 12 | SN_EXTRA | VARCHAR2 | Y |  |
| 13 | SN_ALTA_MEDICA | VARCHAR2 | Y |  |
| 14 | DT_ATIVACAO | DATE | N |  |
| 15 | DT_DESATIVACAO | DATE | Y |  |
| 16 | CD_TIP_ACOM_UTI_SUS | VARCHAR2 | Y | Codigo do tipo de UTI SUS |
| 17 | NR_RAMAL | VARCHAR2 | Y | Numero do ramal telefonico do leito |
| 18 | CD_LEITO_INTEGRA | VARCHAR2 | Y | Codigo do leito (de-para) |
| 19 | CD_SEQ_INTEGRA | NUMBER | Y | Codigo sequencial da integrac?o |
| 20 | DT_INTEGRA | DATE | Y | Data da integrac?o do registro |
| 21 | CD_ALOJAMENTO_CONJUNTO | NUMBER | Y | Indica o código do leito da mãe vinculado ao berçário, no conceito de alojamento conjunto. |
| 22 | CD_FAIXA_ETARIA | NUMBER | Y | Faixa etária do leito |

---

## DBAMV.LEITO_BKP_112025

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LEITO | NUMBER | N |  |
| 2 | CD_TIP_ACOM | NUMBER | N |  |
| 3 | CD_UNID_INT | NUMBER | N |  |
| 4 | DS_ENFERMARIA | VARCHAR2 | N |  |
| 5 | DS_LEITO | VARCHAR2 | N |  |
| 6 | TP_SEXO | VARCHAR2 | N |  |
| 7 | TP_OCUPACAO | VARCHAR2 | N |  |
| 8 | TP_SITUACAO | VARCHAR2 | N |  |
| 9 | DS_RESUMO | VARCHAR2 | Y |  |
| 10 | CD_LEITO_AIH | NUMBER | Y |  |
| 11 | CD_COPA | NUMBER | Y |  |
| 12 | SN_EXTRA | VARCHAR2 | Y |  |
| 13 | SN_ALTA_MEDICA | VARCHAR2 | Y |  |
| 14 | DT_ATIVACAO | DATE | N |  |
| 15 | DT_DESATIVACAO | DATE | Y |  |
| 16 | CD_TIP_ACOM_UTI_SUS | VARCHAR2 | Y |  |
| 17 | NR_RAMAL | VARCHAR2 | Y |  |
| 18 | CD_LEITO_INTEGRA | VARCHAR2 | Y |  |
| 19 | CD_SEQ_INTEGRA | NUMBER | Y |  |
| 20 | DT_INTEGRA | DATE | Y |  |
| 21 | CD_ALOJAMENTO_CONJUNTO | NUMBER | Y |  |
| 22 | CD_FAIXA_ETARIA | NUMBER | Y |  |

---

## DBAMV.LEITO_IDENTIDADE_GENERO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LEITO | NUMBER | Y | Código do leito |
| 2 | CD_IDENTIDADE_GENERO | NUMBER | Y | Código da identidade de gênero do leito |
| 3 | SN_IDENTIDADE_GENERO | VARCHAR2 | N |  |

---

## DBAMV.LEITO_PROGRAMA_SUS
> Tabela usada para quardar o cadastro de programas de regulac?o de leitos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LEITO_PROGRAMA_SUS | NUMBER | N | Codigo do programa regulador do leito |
| 2 | DS_LEITO_PROGRAMA_SUS | VARCHAR2 | N | Descreic?o do programa regulador do leito |
| 3 | NM_LEITO_PROGRAMA_SUS | VARCHAR2 | N | Identificador do programa SUS |
| 4 | SN_ATIVO | VARCHAR2 | N | Informa se o programa esta ativo (S) ou inativo (N) |
| 5 | DT_DESATIVACAO | DATE | Y | Informa a data em que o programa foi desativado |
| 6 | DS_OBSERVACAO | VARCHAR2 | Y | Observac?o do programa |
| 7 | TP_ORIGEM_ATENDIMENTO | VARCHAR2 | N | Informa o tipo de origem de atendimento permitido para o programa |
| 8 | SN_PERMITIR_USAR_LEITO | VARCHAR2 | N | Informa se algum leito do programa podera ser usado para outros tipos de origem de atendimento |
| 9 | SN_AVISAR_USUARIO | VARCHAR2 | N | Informa se o usuario devera receber uma mensagem de alerta quando ele usar um leito para outras o... |

---

## DBAMV.LEITO_REGULACAO
> Tabela de leitos regulados.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LEITO_REGULACAO | NUMBER | N | Código do registro de leito regulado. |
| 2 | CD_LEITO | NUMBER | N | Código do leito. |
| 3 | CD_UNID_INT | NUMBER | N | Código da unidade de internação. |
| 4 | DT_CADASTRO | DATE | N | Data de cadastro do leito para regulação. |
| 5 | CD_TIPO_LEITO_REGULACAO | VARCHAR2 | Y | Tipo do leito na regulação. |
| 6 | CD_ESPL_LEITO_REGULACAO | VARCHAR2 | Y | Especialidade do leito na regulação. |
| 7 | DS_IDENT_LEITO_REGULACAO | VARCHAR2 | Y | Identificação do leito na regulação |

---

## DBAMV.LEITO_SERVICO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LEITO | NUMBER | N |  |
| 2 | CD_SERVICO | NUMBER | N |  |

---

## DBAMV.MODALIDADE_ATENDIMENTO
> Cadastro de modalidades de atendimento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | TP_MODALIDADE_ATENDIMENTO | VARCHAR2 | N | Tipo de modalidade do atendimento |
| 2 | DS_MODALIDADE_ATENDIMENTO | VARCHAR2 | N | Descricao da modalidade do atendimento |

---

## DBAMV.MOV_ATEND_CATEGORIA_CLINICA
> Tabela para guardar cálculo do movimento de categoria clinica do atendimento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ATENDIMENTO | NUMBER | Y | Código do atendimento |
| 2 | CD_CATEGORIA_CLINICA | NUMBER | Y | Código da categoria clinica |
| 3 | DH_INICIO | DATE | Y | Data inicio de utilização da categoria clinica |
| 4 | DH_FINAL | DATE | Y | Data final de utilização da categoria clinica |
| 5 | VL_TOTAL | NUMBER | Y | Valor total do atendimento na categoria clinica |

---

## DBAMV.ORDEM_TRANSFERENCIA_REMESSA
> Tabela de armazenamento da ordem de transferecnia de atendimento entre remessas

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORDEM_TRANSFERENCIA_REMESSA | NUMBER | N | Codigo da ordem de transferencia |
| 2 | CD_ATENDIMENTO | NUMBER | Y | Codigo do atendimento transferido |
| 3 | CD_REG_AMB | NUMBER | Y | Codigo da conta ambulatrial transferida |
| 4 | CD_REMESSA_ORIGEM | NUMBER | Y | Codigo da remessa antes da transferencia |
| 5 | CD_REMESSA | NUMBER | Y | Codigo da remessa do atendimento |

---

## DBAMV.PRE_RESERVA_LEITO
> Tabela de pre-reservas de leitos (Fila de Espera de Leitos)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRE_RESERVA_LEITO | NUMBER | N | Codigo da pre-reserva de leito. |
| 2 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da pre-reserva de leito. |
| 3 | DT_PRE_RESERVA | DATE | N | Data/Hora de cadastro da pre-reserva de leito. |
| 4 | CD_USUARIO | VARCHAR2 | N | Nome do usuario que realizou a pre-reserva de leito. |
| 5 | CD_RES_LEI | NUMBER | Y | Codigo do registro da tabela dbamv.res_lei associado. |
| 6 | CD_LEITO | NUMBER | N | Codigo do leito. |
| 7 | CD_MOV_INT | NUMBER | Y | Codigo do registro da tabela dbamv.mov_int referente a reserva criada. |
| 8 | DT_CANCELAMENTO | DATE | Y | Data/Hora de Cancelamento da reserva. |
| 9 | CD_USUARIO_CANCELA | VARCHAR2 | Y | Nome do usuário que realizou o cancelamento da reserva. |
| 10 | DT_CONFIRMACAO | DATE | Y | Data de confirmação da pre-reserva de leito. |
| 11 | CD_SOLIC_TRANSFERENCIA | NUMBER | Y | Código da Solicitação de Transferência que reservou o leito |

---

## DBAMV.PROC_EXCECAO_ATEND_RETORNO
> Tabela de Cadastro de Procedimentos que n?o geram Atendimentos de Retorno

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRO_FAT | VARCHAR2 | N | Codigo do Procedimento Ambulatorial |
| 2 | CD_CONVENIO | NUMBER | N | Codigo do Convenio para qual esta cadastrado o Procedimento |

---

## DBAMV.PROGRAMAS_HOMECARE
> Tabela de cadastro para os programas responsável por definir qual tipo de guia será gerada na tela de atendimento HomeCare

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROGRAMAS_HOMECARE | NUMBER | N | Sequence da tabela |
| 2 | DS_PROGRAMAS_HOMECARE | VARCHAR2 | Y | Descrição do programa que será informado na tela de atendimento HomeCare |
| 3 | TP_GUIA | VARCHAR2 | N | Tipo da guia que será gerada pela tela de atendimento HomeCare |
| 4 | CD_MULTI_EMPRESA | NUMBER | Y | Código da empresa |
| 5 | CD_CONVENIO | NUMBER | Y | Código do convênio |

---

## DBAMV.PROIB_ORIG_ATENDIME
> Tabela armazena configurações sobre proibição de origem de atendimento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROIB_ORIG_ATENDIME | NUMBER | N | Código sequencial do registro |
| 2 | CD_ORI_ATE | NUMBER | N | Código chave de ori_ate |
| 3 | CD_CONVENIO | NUMBER | N | Código chave de convenio |
| 4 | CD_CON_PLA | NUMBER | N | Código chave de con_plan |
| 5 | CD_MULTI_EMPRESA | NUMBER | N | Código chave de multi_empresas |
| 6 | CD_USUARIO_INCLUSAO | VARCHAR2 | N | Código chave de usuário de inclusão |
| 7 | CD_USUARIO_ALTERACAO | VARCHAR2 | Y | Código chave de usuário de alteração |
| 8 | DH_INCLUSAO | DATE | N | Data que o registro foi incluido |
| 9 | DH_ALTERACAO | DATE | Y | Data que o registro foi alterado |
| 10 | SN_ATIVO | VARCHAR2 | N | Status do item da proibição de origem do atendimento |

---

## DBAMV.QTD_PROC_ATEND_PACIENTE
> Tabela com configuração de quantidade de atendimento por paciência num período.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_QTD_PROC_ATEND_PACIENTE | NUMBER | N | Código da configuração de quantidade de atendimento por paciência num período. |
| 2 | CD_MULTI_EMPRESA | NUMBER | N | Código da Empresa associada a configuração |
| 3 | CD_CONVENIO | NUMBER | N | Código do convênio associado a configuração |
| 4 | CD_CON_PLA | NUMBER | N | Código do plano associado a configuração |
| 5 | TP_ATENDIMENTO | VARCHAR2 | N | Código do tipo de atendimento associado a configuração |
| 6 | CD_PRO_FAT | VARCHAR2 | N | Código do procedimento associado a configuração |
| 7 | QTD_MAXIMA | NUMBER | N | Quantidade máxima de atendimento para o paciente num período |
| 8 | PERIODO | VARCHAR2 | N | Período (Dia, Semana, Mês, Ano) associado a configuração |
| 9 | DT_VIGENCIA | DATE | N | Vigência associada a configuração |

---

## DBAMV.RECURSO_UNIDADE_SCMA
> Cadastro de Recrusos por Unidade de Atendimento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_RECURSO_CENTRAL | NUMBER | N | Codigo do Recurso associado a Unidade de Atendimento |
| 2 | CD_UNIDADE_ATENDIMENTO | NUMBER | N | Codigo da Unidade de Atendimento a qual o recurso esta associado |

---

## DBAMV.RESERVA_LEITO_LIMPEZA
> Reserva de leito em limpeza

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_RESERVA_LEITO_LIMPEZA | NUMBER | N | Codigo da Reserva de leito em limpeza |
| 2 | CD_LEITO | NUMBER | N | Codigo do Leito reservado |
| 3 | CD_SOLIC_TRANSFERENCIA | NUMBER | Y | Codigo da Solicitac?o de Transferencia que reservou o leito |
| 4 | CD_RES_LEI | NUMBER | Y | Codigo da pre-internac?o que reservou o leito |
| 5 | DH_OPERACAO | DATE | Y | Data e hora em que foi realizada a reserva |
| 6 | CD_USUARIO_OPERACAO | VARCHAR2 | Y | Codigo do usuario que realizou a operac?o |
| 7 | TP_STATUS | VARCHAR2 | Y | indica o status da Reserva: Aguardando, Atendida ou Cancelada |
| 8 | DH_LIBERACAO | DATE | Y | Data e hora da liberac?o da reserva |

---

## DBAMV.SAC_SOLICITACAO
> Cadastro das solicitac?es de atendimento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SOLICITACAO | NUMBER | N | Codigo da Solicitac?o de Chamado do SAC. |
| 2 | CD_MEIO | NUMBER | N | Codigo do meio de Contato |
| 3 | CD_ORIGEM | NUMBER | N | Codigo da Origem do Chamado |
| 4 | CD_CHAMADO | NUMBER | N | Codigo do Tipo do Chamado |
| 5 | CD_NIVEL | NUMBER | N | Codigo do Nivel Hierarquico do Chamado |
| 6 | DT_SOLICIDACAO | DATE | N | Data de Abertura do Chamado |
| 7 | HR_SOLICITACAO | DATE | N | Hora de Abertura do Chamado |
| 8 | NM_ORIGEM | VARCHAR2 | Y | Descric?o da Origem do Chamado |
| 9 | NR_IDENT | VARCHAR2 | Y | Numero da identidade da pessoal que realizou o contato |
| 10 | MEIO_COMPL | VARCHAR2 | Y | Descric?o de informac?es de complemento |
| 11 | HR_RET_CONTATO | VARCHAR2 | Y | Hora de Retorno do Chamado |
| 12 | OBSERVACAO | VARCHAR2 | Y | Descric?o das Observac?es do Chamado |
| 13 | FONE_RET_CONTATO | VARCHAR2 | Y | Telefone de Contato para o retorno do Chamado |
| 14 | EMAIL_RET_CONTATO | VARCHAR2 | Y | E-mail de Contato para o retorno do Chamado |
| 15 | CEP | VARCHAR2 | Y | Numero do Cep do Endereco de Retorno |
| 16 | END_RET_CONTATO | VARCHAR2 | Y | Endereco de Retorno para Contato |
| 17 | NRO_RET_CONTATO | VARCHAR2 | Y | Numero do Endereco de Retorno para Contato |
| 18 | COMPL_RET_CONTATO | VARCHAR2 | Y | Complemento do Endereco de Retorno para Contato |
| 19 | DESCR_CHAMADO | VARCHAR2 | Y | Descric?o do Chamado |
| 20 | ENCAMINHAR | VARCHAR2 | Y | Encaminhar para |
| 21 | CD_RECEPTOR | NUMBER | Y | Codigo do receptor do Chamado |
| 22 | CD_MULTI_EMPRESA | NUMBER | N | Coluna Criada na vers?o v4.5Codigo da Multi-Empresa |
| 23 | TP_PRIORIDADE | VARCHAR2 | Y | Indica o nivel de prioridade de atendimento a solicitac?o (Alta/Media/Baixa) |
| 24 | DT_PREVISAO_RETORNO | DATE | Y | Data prevista para retornar resposta ao solicitante |
| 25 | SN_RETORNA_CONTATO | VARCHAR2 | Y | Indica a necessidade de retornar resposta ao solicitante |
| 26 | DT_ENCERRAMENTO | DATE | Y | Data do encerramento do atendimento |
| 27 | CD_USUARIO_ENCERRAMENTO | VARCHAR2 | Y | Codigo do usuario responsavel pelo encerramento do chamado |
| 28 | SN_SATISFATORIO | VARCHAR2 | Y | Indica se o cliente ficou satisfeito com o atendimento |
| 29 | SN_FIDELIDADE | VARCHAR2 | Y | Indica se o cliente ficou fidelizado ao servico prestado |
| 30 | TP_SITUACAO | VARCHAR2 | Y | Situac?o do parecer |
| 31 | SN_CONFIDENCIAL | VARCHAR2 | Y | Indentifica  se o chamado foi considerado de carater confidencial |
| 32 | CD_ATENDIMENTO | NUMBER | Y | Codigo do atendimento relacionado com a solicitac?o |
| 33 | CD_PACIENTE | NUMBER | Y | Codigo do paciente relacionado com a solicitac?o |
| 34 | TP_TEMPO_RETORNO | NUMBER | Y | Determina o intervalo de tempo para retorno de resposta a solicitac?o do cliente |
| 35 | CD_USUARIO_ABERTURA | VARCHAR2 | Y | Usuario que cadastrou o Chamado |
| 36 | NR_TELEFONE | VARCHAR2 | Y | Telefone do paciente informado na abertura do chamado - SAC |
| 37 | CD_SETOR | NUMBER | Y | Codigo do Setor |
| 38 | LO_DESCRICAO_CHAMADO | CLOB | Y | Descric?o detalhada do chamado campo CLOB |

---

## DBAMV.SOLICITACAO_AGENDAMENTO
> Tabela responsavel em manter as solicitac?es de atendimentos da central de regulac?o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SOLICITACAO_AGENDAMENTO | NUMBER | N | Codigo de identificac?o unica (ID) da solicitac?o de atendimento |
| 2 | CD_PACIENTE | NUMBER | N | Codigo de identificac?o do paciente |
| 3 | CD_ATENDIMENTO | NUMBER | Y | Codigo de identificac?o do atendimento |
| 4 | DT_SOLICITACAO | DATE | N | Data que a solicitac?o foi realizada |
| 5 | CD_PRESTADOR_SOLICITANTE | NUMBER | N | Codigo do prestador solicitante |
| 6 | CD_SETOR | NUMBER | N | Codigo do setor solicitante |
| 7 | CD_PRO_FAT | VARCHAR2 | Y | Codigo do procedimento solicitado para atendimento |
| 8 | CD_ESPECIALIDADE | NUMBER | N | Codigo da especialidade do atendimento/servico |
| 9 | CD_CID | VARCHAR2 | N | Codigo do CID |
| 10 | DS_SINAIS_SINTOMAS | VARCHAR2 | Y |  |
| 11 | DS_JUSTIFICATIVA_SOLICITACAO | VARCHAR2 | Y |  |
| 12 | DS_RESULTADO_DIAGNOSTICO | VARCHAR2 | Y |  |
| 13 | TP_SITUACAO | VARCHAR2 | N | Situac?o da solicitac?o |
| 14 | NM_MEDICO_REGULADOR | VARCHAR2 | Y | Nome medico regulador |
| 15 | DH_AUTORIZACAO | DATE | Y | Data/Hora da autorizac?o da solicitac?o |
| 16 | DS_HOSPITAL_DESTINO | VARCHAR2 | Y | Nome do hospital onde o paciente sera atendido |
| 17 | DS_POSTO_DESTINO | VARCHAR2 | Y |  |
| 18 | TP_SOLICITACAO | VARCHAR2 | N | Tipo da solicitac?o |
| 19 | TP_AGENDA | VARCHAR2 | Y |  |
| 20 | TP_PRIORIDADE | VARCHAR2 | N |  |
| 21 | CD_SEQ_INTEGRA | NUMBER | Y | Codigo sequencial que originou o registro |
| 22 | DT_INTEGRA | DATE | Y | Data em que ocorreu a integrac?o |
| 23 | HR_SOLICITACAO | DATE | Y | Hora da solicitac?o |
| 24 | CD_SOLICITACAO_INTEGRA | NUMBER | Y | Codigo da solicitac?o no outro sisterma |
| 25 | SN_LIBERADA_ENVIO | VARCHAR2 | Y | Indentifica se a solicitac?o esta liberada para envio a Regulac?o |
| 26 | CD_PROCEDIMENTO | VARCHAR2 | Y | Codigo do procedimento SUS - Portaria 321 |

---

## DBAMV.SOLICITACAO_ATENDIMENTO
> Tabela responsavel em manter as solicitac?es de atendimentos da central de regulac?o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SOLICITACAO_ATENDIMENTO | NUMBER | N | Codigo de identificac?o unica (ID) da solicitac?o de atendimento |
| 2 | CD_PACIENTE | NUMBER | N | Codigo de identificac?o do paciente |
| 3 | CD_ATENDIMENTO | NUMBER | Y | Codigo de identificac?o do atendimento |
| 4 | DT_SOLICITACAO | DATE | N | Data que a solicitac?o foi realizada |
| 5 | CD_PRESTADOR_SOLICITANTE | NUMBER | N | Codigo do prestador solicitante |
| 6 | CD_SETOR | NUMBER | N | Codigo do setor solicitante |
| 7 | CD_PRO_FAT | VARCHAR2 | Y | Codigo do procedimento solicitado para atendimento |
| 8 | CD_ESPECIALIDADE | NUMBER | N | Codigo da especialidade do atendimento/servico |
| 9 | CD_CID | VARCHAR2 | N | Codigo do CID |
| 10 | NR_PESO | NUMBER | Y | Peso do paciente |
| 11 | NR_ALTURA | NUMBER | Y | Altura do paciente |
| 12 | QT_PRESSAO_SISTOLICA | NUMBER | Y | Press?o sistolica |
| 13 | QT_PRESSAO_DIASTOLICA | NUMBER | Y | Press?o diastolica |
| 14 | NR_TEMPERATURA | NUMBER | Y | Temperatura do paciente |
| 15 | TP_VIA_AEREA | VARCHAR2 | N | Situac?o das vias aereas |
| 16 | TP_VENTILACAO | VARCHAR2 | N | Tipo de ventilac?o |
| 17 | TP_CIRCULACAO | VARCHAR2 | N | Tipo de circulac?o |
| 18 | TP_GRAU_CIRCULACAO | VARCHAR2 | Y | Grau da cisrculac?o |
| 19 | SN_ACESSO_VASCULAR | VARCHAR2 | N | Identifica se o paciente esta cm algum acesso vascular |
| 20 | DS_LOCAL_ACESSO_VASCULAR | VARCHAR2 | Y | Local do acesso vascular |
| 21 | SN_DRENAGEM_TORAX | VARCHAR2 | N | Identifica se o paciente esta com alguma drenagem no torax |
| 22 | DS_LOCAL_DRENAGEM_TORAX | VARCHAR2 | Y | Local de drenagem no torax |
| 23 | SN_GLASGOW | VARCHAR2 | N | Identifica se foi feito o teste de Glasgow |
| 24 | NR_NIVEL_GLASGOW | NUMBER | Y | Nivel do Glasgow |
| 25 | SN_SINAL_FOCAL | VARCHAR2 | N | Identifica se e possivel observar sinais focais no paciente |
| 26 | SN_PUPILA_REAGENTE | VARCHAR2 | N | Identifica se as pupilas do paciente est?o reagentes |
| 27 | SN_MIDRIASE | VARCHAR2 | N | Identifica se o paciente esta apresentando Midriase |
| 28 | TP_LOCAL_MIDRIASE | VARCHAR2 | Y | Identifica o local da Midriase |
| 29 | DS_SINAIS_SINTOMAS | VARCHAR2 | Y | Sinais e sintomas do paciente |
| 30 | DS_JUSTIFICATIVA_SOLICITACAO | VARCHAR2 | Y | Justificativa da solicitacao |
| 31 | DS_RESULTADO_DIAGNOSTICO | VARCHAR2 | Y | Resultado/diagnostico do paciente |
| 32 | TP_SITUACAO | VARCHAR2 | N | Situac?o da solicitac?o |
| 33 | NM_MEDICO_REGULADOR | VARCHAR2 | Y | Nome medico regulador |
| 34 | DH_AUTORIZACAO | DATE | Y | Data/Hora da autorizac?o da solicitac?o |
| 35 | DS_HOSPITAL_DESTINO | VARCHAR2 | Y | Nome do hospital onde o paciente sera atendido |
| 36 | DS_POSTO_DESTINO | VARCHAR2 | Y | Posto em que o paciente sera internado |
| 37 | DS_ENFERMARIA_DESTINO | VARCHAR2 | Y | Enfermaria em que o paciente sera internado |
| 38 | DS_LEITO_DESTINO | VARCHAR2 | Y | Leito onde o paciente sera internado |
| 39 | TP_SOLICITACAO | VARCHAR2 | N | Tipo da solicitac?o |
| 40 | TP_PRIORIDADE | VARCHAR2 | N | Tipo da prioridade |
| 41 | SN_USA_UTI | VARCHAR2 | N | Identifica se sera ou n?o usado leito de UTI |
| 42 | CD_SEQ_INTEGRA | NUMBER | Y | Codigo sequencial que originou o registro |
| 43 | DT_INTEGRA | DATE | Y | Data em que ocorreu a integrac?o |
| 44 | HR_SOLICITACAO | DATE | Y | Hora da solicitac?o |
| 45 | CD_SOLICITACAO_INTEGRA | NUMBER | Y | Codigo da solicitac?o no outro sisterma |
| 46 | SN_LIBERADA_ENVIO | VARCHAR2 | Y | Indentifica se a solicitac?o esta liberada para envio a Reguc?o |
| 47 | CD_PROCEDIMENTO | VARCHAR2 | Y | Codigo do procedimento SUS - Portaria 321 |
| 48 | CD_PRONTUARIO | NUMBER | Y | Identificador do Prontuario no Sistema Externo |
| 49 | CD_INTERNACAO | NUMBER | Y | Identificador da Internac?o no Sistema Externo |
| 50 | TP_STATUS_INTEGRACAO | VARCHAR2 | Y | Status da Solicitac?o na camada de Integrac?o |
| 51 | SN_CANCELADO | VARCHAR2 | Y | S - Solicitac?o Cancelada. N - Solicitac?o n?o cancelada. |
| 52 | DS_MOTIVO_CANCELAMENTO | VARCHAR2 | Y | Motivo do cancelamento da solicitac?o |
| 53 | CD_MOTIVO_REJEICAO | NUMBER | Y | Motivo de Rejeic?o |
| 54 | DS_MOTIVO_REJEICAO | VARCHAR2 | Y | Descric?o do Motivo de Rejeic?o |
| 55 | DS_ERRO_INTEGRACAO | VARCHAR2 | Y | Descric?o do erro do registro na camada de integrac?o |
| 56 | DT_AGENDAMENTO | DATE | Y |  |
| 57 | CD_LEITO | NUMBER | Y |  |
| 58 | CD_CARATER_INTERNACAO | NUMBER | Y |  |

---

## DBAMV.SOLICITACAO_ATENDIMENTO_SIDRA
> Tabela da Solicitacao de Atendimento SIDRA.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SOLICITACAO | NUMBER | N | Código sequencial, para identificar a Solicitação de Atendimento SIDRA. |
| 2 | CD_PACIENTE | NUMBER | Y | Código do paciente que está solicitando atendimento. |
| 3 | CD_RUT_PACIENTE | VARCHAR2 | N | Código RUT do paciente que está solicitando atendimento. CD_IDENTIFICADOR_PESSOA da tabela PACIENTE. |
| 4 | NM_PACIENTE | VARCHAR2 | Y | Nome completo do Paciente. |
| 5 | DS_PRIMEIRO_NOME | VARCHAR2 | N | Primeiro nome do paciente. |
| 6 | DS_PRIMEIRO_SOBRENOME | VARCHAR2 | N | Primeiro sobrenome do paciente. |
| 7 | DS_SEGUNDO_SOBRENOME | VARCHAR2 | Y | Segundo sobrenome do paciente. |
| 8 | DT_NASCIMENTO | DATE | N | Data de nascimento do paciente. |
| 9 | TP_SEXO | VARCHAR2 | N | Sexo do paciente. |
| 10 | NR_DDI_FONE | NUMBER | Y | Número do código DDI do telefone do paciente. |
| 11 | NR_DDD_FONE | NUMBER | Y | Número do código DDD do telefone do paciente. |
| 12 | NR_FONE | VARCHAR2 | N | Número do telefone do paciente . |
| 13 | NR_DDI_CELULAR | NUMBER | Y | Número do código DDI do celular do paciente. |
| 14 | NR_DDD_CELULAR | NUMBER | Y | Número do código DDD do celular do paciente. |
| 15 | NR_CELULAR | VARCHAR2 | Y | Número do celular do paciente. |
| 16 | DS_EMAIL | VARCHAR2 | Y | E-mail do paciente. |
| 17 | DS_HISTORICO_CLINICO | VARCHAR2 | Y | Histórico Clínico do Paciente. |
| 18 | CD_CONVENIO | NUMBER | Y | Código do Convênio, da tabela CONVENIO. |
| 19 | CD_CON_PLA | NUMBER | Y | Código do Plano do Convênio, da tabela CON_PLA. |
| 20 | TP_FUNC | VARCHAR2 | N | Indica se o paciente é funcionário ou não. |
| 21 | TP_PRAIS | VARCHAR2 | N | Indica se o paciente é PRAIS. (Programa de Reparación en Atención Integral en Salud (PRAIS)). |
| 22 | NR_CEP | VARCHAR2 | Y | Número do CEP do paciente. |
| 23 | DS_ENDERECO | VARCHAR2 | N | Endereço do paciente. |
| 24 | NR_ENDERECO | NUMBER | Y | Número do endereço do paciente. |
| 25 | DS_COMPLEMENTO | VARCHAR2 | Y | Complemento do endereço do paciente. |
| 26 | NM_BAIRRO | VARCHAR2 | N | Nome do Bairro do paciente. |
| 27 | CD_CIDADE | NUMBER | N | Código da cidade do paciente, da tabela CIDADE. |
| 28 | DS_REGIAO | VARCHAR2 | N | Descrição da Região do paciente. |
| 29 | CD_UF | VARCHAR2 | Y | Código da UF do paciente, da tabela UF. |
| 30 | CD_ATENDIMENTO | NUMBER | Y | Código do atendimento. |
| 31 | CD_FOLIO_SIGGES | VARCHAR2 | N | Código do sistema externo de gestão de garantias explícitas de saúde. |
| 32 | DT_CADASTRO | DATE | N | Data e hora do cadastro da Solicitação de Atendimento. |
| 33 | NM_USUARIO_CADASTRO | VARCHAR2 | N | Nome do usuário que cadastrou a Solicitação. |
| 34 | DT_SOLICITACAO | DATE | N | Data e hora que realmente foi feita a solicitação de atendimento SIDRA. |
| 35 | CD_SERVICO_SAUDE_ORIGEM | NUMBER | N | Código do Serviço de Saúde de origem. CD_SERVICO_SAUDE da tabela SERVICO_SAUDE_SIDRA. |
| 36 | CD_ESTABELECIMENTO_ORIGEM | NUMBER | N | Código do Estabelecimento de origem. CD_ESTABELECIMENTO_SAUDE da tabela ESTABELECIMENTO_SAUDE_SIDRA. |
| 37 | TP_UNID_ATENDIMENTO | VARCHAR2 | N | Tipo da unidade de atendimento. Pode ser "A" Aberta, e "F" Fechada. |
| 38 | CD_ESPECIALIDADE_ORIGEM | NUMBER | N | Código da especialidade, da Tabela ESPECIALID. |
| 39 | CD_RUT_PRESTADOR | VARCHAR2 | N | Código RUT do prestador solicitante. CD_IDENTIFICADOR_PESSOA da tabela PRESTADOR. |
| 40 | CD_PRESTADOR_SOLICITANTE | NUMBER | N | Código do prestador solicitante. CD_PRESTADOR da tabela PRESTADOR. |
| 41 | TP_PRIORIDADE_ORIGEM | NUMBER | N | Tipo de prioridade de origem da solicitação. Pode ser 1 - URGENTE, ou 2 - NORMAL. |
| 42 | TP_STATUS_SOLIC | NUMBER | N | Status da solicitação de atendimento, pode ser: 1 - Pendente (Digitação iniciada mas não classifi... |
| 43 | CD_SERVICO_SAUDE_DESTINO | NUMBER | N | Código do Serviço de Saúde de Destino. CD_SERVICO_SAUDE da tabela SERVICO_SAUDE_SIDRA. |
| 44 | CD_ESTABELECIMENTO_DESTINO | NUMBER | N | Código do Estabelecimento de destino. CD_ESTABELECIMENTO_SAUDE da tabela ESTABELECIMENTO_SAUDE_SI... |
| 45 | CD_ESPECIALIDADE_DESTINO | NUMBER | Y | Código da Especialidade de destino. CD_ESPECIALIDADE da tabela ESPECIALID. |
| 46 | TP_PRIORIDADE_DESTINO | NUMBER | Y | Tipo de prioridade de destino da solicitação. Pode ser 1 - URGENTE, ou 2 - NORMAL. |
| 47 | DT_SUGERIDA | DATE | Y | Data sugerida para o atendimento. |
| 48 | CD_CID | VARCHAR2 | Y | Código do CID. CD_CID da tabela CID. |
| 49 | DS_HIPOTESE | VARCHAR2 | Y | Descrição da Hipótese Diagnóstica. |
| 50 | CD_PROBLEMA_SAUDE | NUMBER | N | Código do Problema de Saúde. CD_PROBLEMA_SAUDE da tabela PROBLEMA_SAUDE. Pode ser: 1 ¿ Consulta n... |
| 51 | CD_ITEM_AGENDAMENTO | NUMBER | Y | Código do Item de Agendamento, CD_ITEM_AGENDAMENTO da tabela ITEM_AGENDAMENTO. |
| 52 | CD_CIRURGIA | NUMBER | Y | Código da cirurgia, CD_CIRURGIA da tabela CIRURGIA. |
| 53 | SN_GES | VARCHAR2 | N | Indica se é GES. Pode ser "S" Sim, ou "N" Não. |
| 54 | CD_PATOLOGIA_GES | NUMBER | Y | Código da Patologia GES. Código da tabela do PEP de PATOLOGIA_GES |
| 55 | DS_PATOLOGIA_GES | VARCHAR2 | Y | Descrição da Patologia GES. Descrição da tabela do PEP de PATOLOGIA_GES |
| 56 | VL_DIAS_AGENDAMENTO | NUMBER | Y | Quantidade de dias do agendamento. |
| 57 | DT_MAX_ATENDIMENTO | DATE | Y | Data máxima prevista para o atendimento. |
| 58 | DS_FUNDAMENTOS | VARCHAR2 | Y | Descrição dos Fundamentos Diagnósticos. |
| 59 | DS_EXAMES_REALIZADOS | VARCHAR2 | Y | Descrição dos Exames Realizados. |
| 60 | DS_OBSERVACAO | VARCHAR2 | Y | Descrição das Observações. |
| 61 | CD_GRAVIDADE_PACIENTE | NUMBER | Y | Código da gravidade do Paciente. CD_GRAVIDADE_PACIENTE da tabela GRAVIDADE_PACIENTE_SIDRA. |
| 62 | CD_GRAU_INCAPACIDADE | NUMBER | Y | Código do grau de incapacidade. CD_GRAU_INCAPACIDADE da tabela GRAU_INCAPACIDADE_SIDRA. |
| 63 | CD_ACESSIBILIDADE | NUMBER | Y | Código da Acessibilidade. CD_ACESSIBILIDADE da tabela ACESSIBILIDADE_SIDRA. |
| 64 | CD_FONASA | NUMBER | Y | Código Fonasa / Chile Solidário. CD_FONASA da tabela FONASA_SIDRA. |
| 65 | CD_AVISO_CIRURGIA | NUMBER | Y | Código do Aviso de Cirurgia da tabela AVISO_CIRURGIA. Quando foi feito pré-agendamento de aviso c... |
| 66 | CD_IT_AGENDA_CENTRAL | NUMBER | Y | Código do Item da Agenda Central da tabela IT_AGENDA_CENTRAL. Quando foi feito agendamento da con... |
| 67 | CD_MOTIVO_CANCELAMENTO | NUMBER | Y | Código do Motivo de Cancelamento da solicitação, da tabela MOTIVO_CANCELAMENTO_SIDRA. |
| 68 | DS_OBSERVACAO_CANCELAMENTO | VARCHAR2 | Y | Observação do Motivo de Cancelamento da solicitação,. |
| 69 | DT_CLASSIFICACAO | DATE | Y | Data e hora que a solicitação foi classificada. |
| 70 | CD_USUARIO_CLASSIFICACAO | VARCHAR2 | Y | Usuário que classificou a solicitação. |
| 71 | DT_AGENDAMENTO | DATE | Y | Data e hora que a solicitação foi agendada. |
| 72 | CD_USUARIO_AGENDAMENTO | VARCHAR2 | Y | Usuário que agendou a solicitação. |
| 73 | DT_ATENDIMENTO | DATE | Y | Data e hora que a solicitação foi atendida. |
| 74 | CD_USUARIO_ATENDIMENTO | VARCHAR2 | Y | Usuário que atendeu a solicitação. |
| 75 | DT_CANCELAMENTO | DATE | Y | Data e hora que a solicitação foi cancelada. |
| 76 | CD_USUARIO_CANCELAMENTO | VARCHAR2 | Y | Usuário que cancelou a solicitação. |
| 77 | CD_ETAPA_PROTOCOLO | NUMBER | Y | Código da etapa de protocolo. Da tabela do PEP PW_ETAPA_PROTOCOLO. |

---

## DBAMV.SUBSTANCIA_TRIAGEM
> Tabela responsavel por armazenar as alergias de triagemAtendimento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SUBSTANCIA | NUMBER | N | Armazena o codigo da substancia sobre a qual a triagemAtendimento possui alergia |
| 2 | CD_TRIAGEM_ATENDIMENTO | NUMBER | N | Aramazena o codigo da Triagem Atendimento que possui alergia |
| 3 | DS_AVISO | VARCHAR2 | N | Armazena a obserac?o referente a alergia da triagem atendimento |

---

## DBAMV.TRANSCRICAO_ATENDIMENTO
> Tabela que armazena a transcrição de um atendimento médico e o formulário gerado com base nela.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TRANSCRICAO_ATENDIMENTO | NUMBER | N | Código sequencial da transcrição de atendimento |
| 2 | CD_ATENDIMENTO | NUMBER | N | Código do atendimento médico |
| 3 | CD_PRESTADOR | NUMBER | Y | Código do prestador (médico ou profissional responsável pela transcrição) |
| 4 | DS_TRANSCRICAO | CLOB | N | Texto completo da transcrição da consulta médica |
| 5 | DS_IDENTIFICADOR | VARCHAR2 | N | Identificador associado à transcrição |
| 6 | DS_STATUS | VARCHAR2 | N | Status da transcrição: EM_PROGRESSO, FINALIZADA, CANCELADA. |
| 7 | DS_FORMULARIO_TRANSCRICAO | CLOB | N | Dados estruturados do formulário populado a partir da transcrição, em formato JSON |

---

## DBAMV.TRANSF_HOCA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TRANSF_HOCA | NUMBER | N |  |
| 2 | CD_ATENDIMENTO | NUMBER | N |  |
| 3 | CD_PACIENTE | NUMBER | N |  |
| 4 | CD_ENDERECO | NUMBER | N |  |
| 5 | CD_ENDERECO_ANTERIOR | NUMBER | N |  |
| 6 | CD_AREA | NUMBER | N |  |
| 7 | CD_AREA_ANTERIOR | NUMBER | N |  |
| 8 | DT_TRANSF | DATE | N |  |
| 9 | USUARIO | VARCHAR2 | N |  |
| 10 | MOTIVO | VARCHAR2 | Y |  |
| 11 | CD_MOT_TRANSF | NUMBER | N |  |
| 12 | CD_ENFER_SUPER | NUMBER | Y |  |
| 13 | CD_ENFER_SUPER_ANT | NUMBER | Y |  |

---

## DBAMV.TRIAG_ATENDIME_HIST_PAGU_AVAL
> Tabela associativa entre PAGU_AVALIACAO e TRIAGEM_ATENDIMENTO_HISTORICO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TRIAGEM_ATENDIMENTO_HIST | NUMBER | N | Codigo de triagem atendimento historico |
| 2 | CD_AVALIACAO | NUMBER | N | Codigo de pagu avaliac?o |

---

## DBAMV.TRIAG_ATND_HIS_SACR_PRG_AVAL
> Tabela associativa entre TRIAGEM_ATENDIMENTO_HISTORICO e SACR_PERGUNTA_AVALIACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TRIAGEM_ATENDIMENTO_HIST | NUMBER | N | Codigo de triagem atendimento historico |
| 2 | CD_PERGUNTA_AVALIACAO | NUMBER | N | Codigo de sacr pergunta avaliac?o |

---

## DBAMV.TRIA_ATND_HIS_IT_COL_SIN_VIT
> Tabela associativa entre TRIAGEM_ATENDIMENTO_HISTORICO e ITCOLETA_SINAL_VITAL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TRIAGEM_ATENDIMENTO_HIST | NUMBER | N | Codigo de triagem atendimento historico |
| 2 | CD_COLETA_SINAL_VITAL | NUMBER | N | Codigo de coleta sinal vital |
| 3 | CD_SINAL_VITAL | NUMBER | N | Codigo de sinal vital |

---

## DBAMV.TROCPAC_AGENDA_TURMA_FILA
> Log da tabela AGENDA_TURMA_FILA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AGENDA_TURMA | NUMBER | N | Códito da agenda |
| 2 | CD_PACIENTE | NUMBER | N | CODIGO DO PACIENTE |
| 3 | NM_PACIENTE | VARCHAR2 | N | Nome do paciente |
| 4 | CD_CON_PLA | NUMBER | N | CODIGO DO PLANO DO PACIENTE |
| 5 | CD_CONVENIO | NUMBER | N | CODIGO DO CONVENIO DO PACIENTE |
| 6 | TP_SITUACAO | VARCHAR2 | N | SITUACÃO DO PACIENTE NA FILA (G)AGENDADO (F)FILA |
| 7 | NR_TELEFONE_CONTATO | VARCHAR2 | N | TELEFONE DE CONTATO DO PACIENTE |
| 8 | DS_OBSERVACAO | VARCHAR2 | Y | OBSERVACÃO DO PACIENTE NA FILA DE ESPERA. |
| 9 | CD_USUARIO | VARCHAR2 | N | Códito do usuário |
| 10 | DT_CADASTRO | DATE | N | Data de cadastro |
| 11 | DT_AGENDAMENTO | DATE | N | Data do agendamento |
| 12 | CD_TRATAMENTO | NUMBER | Y | Código do tratamento |
| 13 | DT_NASCIMENTO | DATE | Y | DATA DE NASCIMENTO DO PACIENTE EM ESPERA. |
| 14 | QT_PESO | NUMBER | Y | PESO DO PACIENTE EM ESPERA |
| 15 | VL_ALTURA | NUMBER | Y | ALTURA DO PACIENTE EM ESPERA |
| 16 | TP_SEXO | VARCHAR2 | Y | SEXO DO PACIENTE EM ESPERA |
| 17 | DS_EMAIL | VARCHAR2 | Y | Descrição do email |
| 18 | CD_LOG_TROCPAC_REVERSAO | NUMBER | Y | Código da reversão. |

---

## DBAMV.TROCPAC_AGENDA_TURMA_PACIENTE
> Log da tabela AGENDA_TURMA_FILA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AGENDA_TURMA | NUMBER | N | Códito da agenda |
| 2 | CD_PACIENTE | NUMBER | N | CODIGO DO PACIENTE |
| 3 | NM_PACIENTE | VARCHAR2 | N | Nome do paciente |
| 4 | CD_CONVENIO | NUMBER | N | CODIGO DO CONVENIO DO PACIENTE |
| 5 | CD_CON_PLA | NUMBER | N | CODIGO DO PLANO DO PACIENTE |
| 6 | NR_TELEFONE_CONTATO | VARCHAR2 | N | TELEFONE DE CONTATO DO PACIENTE |
| 7 | TP_SITUACAO | VARCHAR2 | N | SITUACÃO DO PACIENTE NA FILA (G)AGENDADO (F)FILA |
| 8 | CD_ATENDIMENTO | NUMBER | Y | Código do atendimento |
| 9 | DS_OBSERVACAO | VARCHAR2 | Y | OBSERVACÃO DO PACIENTE NA FILA DE ESPERA. |
| 10 | CD_USUARIO | VARCHAR2 | N | Códito do usuário |
| 11 | DT_AGENDAMENTO | DATE | N | Data do agendamento |
| 12 | CD_TRATAMENTO | NUMBER | Y | Código do tratamento |
| 13 | DT_NASCIMENTO | DATE | Y | DATA DE NASCIMENTO DO PACIENTE EM ESPERA. |
| 14 | QT_PESO | NUMBER | Y | PESO DO PACIENTE EM ESPERA |
| 15 | VL_ALTURA | NUMBER | Y | ALTURA DO PACIENTE EM ESPERA |
| 16 | TP_SEXO | VARCHAR2 | Y | SEXO DO PACIENTE EM ESPERA |
| 17 | DS_EMAIL | VARCHAR2 | Y | Descrição do email |
| 18 | CD_LOG_TROCPAC_REVERSAO | NUMBER | Y | Código da reversão. |

---

## DBAMV.TROCPAC_ATENDIME_HCARE
> Registro do atendimento home care

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ATENDIMENTO | NUMBER | N | Guarda o código do atendimento |
| 2 | CD_ENDERECO | NUMBER | N | Guarda o código do endereço |
| 3 | CD_PACIENTE | NUMBER | N | Guarda o código do paciente |
| 4 | DT_PREV_INTER | DATE | Y | Guarda a data da previsão da internação |
| 5 | SN_INT_EFETIVADA | VARCHAR2 | Y | Indica se a internação foi efetivada. |
| 6 | DT_SOLICITACAO | DATE | Y | Guarda a data da solicitação |
| 7 | CD_AREA | NUMBER | N | Guarda o código da área |
| 8 | CD_PRESTADOR_ACO | NUMBER | N | Guarda o código do prestador acossiado |
| 9 | CD_ENFER_SUPER | NUMBER | Y | Guarda o código da enfermaria superior |
| 10 | CD_AUX_ENFER | NUMBER | Y | Guarda o código auxiliar da enfermaria |
| 11 | CD_RESP_FINANC | NUMBER | Y | Guarda o código da resposta financeira |
| 12 | TP_LIMINAR_JUDICIAL | VARCHAR2 | Y | Guarda o tipo da liminar judicial |
| 13 | HR_INICIO_OPERACAO | DATE | Y | Guarda a hora do início da operação |
| 14 | DT_INICIO_OPERACAO | DATE | Y | Guarda a data do início da operação |
| 15 | NR_LIMINAR | VARCHAR2 | Y | Guarda o número da liminar |
| 16 | DT_LIMINAR | DATE | Y | Guarda a data da liminar |
| 17 | SN_LIMINAR | VARCHAR2 | Y | Indica se tem liminar |
| 18 | CD_ORCAMENTO | NUMBER | Y | Guarda o código do orçamento. |
| 19 | CD_LOG_TROCPAC_REVERSAO | NUMBER | Y | Código da reversão. |

---

## DBAMV.TROCPAC_AUXILIAR
> Log da tabela AUXILIAR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PACIENTE | NUMBER | N | Código do paciente |
| 2 | NM_CONJUGE | VARCHAR2 | Y | Nome do conjuge |
| 3 | DS_TRABALHO | VARCHAR2 | Y | Descrição do trabalho |
| 4 | CD_LOG_TROCPAC_REVERSAO | NUMBER | Y | Código da reversão. |

---

## DBAMV.TROCPAC_AUXILIA_SUS_PACIENTE
> TABELA AUXILIAR DO SUS PARA PACIENTE.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PACIENTE | NUMBER | N | CODIGO DO PACIENTE. |
| 2 | NR_MATRICULA | VARCHAR2 | N | NUMERO DA MATRICULA DO REGISTRO CIVIL. |
| 3 | CD_LOG_TROCPAC_REVERSAO | NUMBER | Y | Código da reversão. |

---

## DBAMV.TROCPAC_BIOMETRIA_PACIENTE
> Tabela de imagens dos dedos dos pacientes

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PACIENTE | NUMBER | N | Código do paciente |
| 2 | TP_DEDO | VARCHAR2 | N | Tipo do dedo |
| 3 | TEMPLATE_DEDO | VARCHAR2 | Y | Imagem(Template) do dedo |
| 4 | CD_LOG_TROCPAC_REVERSAO | NUMBER | Y | Código da reversão. |

---

## DBAMV.TROCPAC_BIOMETRIA_PACIENTE_IMG
> Tabela de imagens dos dedos dos pacientes

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PACIENTE | NUMBER | N | Código do paciente |
| 2 | TP_DEDO | VARCHAR2 | N | Tipo do dedo |
| 3 | IMG1 | BLOB | N | Imagem do dedo 1 |
| 4 | IMG2 | BLOB | N | Imagem do dedo 2 |
| 5 | IMG3 | BLOB | N | Imagem do dedo 3 |
| 6 | IMG4 | BLOB | N | Imagem do dedo 4 |
| 7 | CD_LOG_TROCPAC_REVERSAO | NUMBER | Y | Código da reversão. |

---

## DBAMV.TROCPAC_CARTEIRA
> Armazena os logs da tabela CARTEIRA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONVENIO | NUMBER | N | Código do convênio |
| 2 | CD_PACIENTE | NUMBER | N | Código do paciente |
| 3 | DT_VALIDADE | DATE | Y | Data de validade |
| 4 | NM_TITULAR | VARCHAR2 | Y | Nome do titular |
| 5 | NR_CARTEIRA | VARCHAR2 | Y | Número da carteira |
| 6 | NM_EMPRESA | VARCHAR2 | Y | Nome da empresa |
| 7 | CD_CON_PLA | NUMBER | N | Código plano do convênio |
| 8 | CD_EMPRESA_CARTEIRA | NUMBER | Y | Código da empresa da carteira |
| 9 | DT_ULT_PGTO | DATE | Y | Data do ultimo pagamento |
| 10 | SN_TITULAR | VARCHAR2 | Y | Indica se é titular |
| 11 | CD_CATEGORIA_PLANO | NUMBER | Y | Código da categoria do plano |
| 12 | CHAVE_CAM | VARCHAR2 | Y | Chave CAM |
| 13 | SN_PENSIONISTA | VARCHAR2 | N | Indica se é pensionista |
| 14 | CD_SUB_PLANO | VARCHAR2 | Y | Código do sub-plano |
| 15 | NR_MATRICULA_TITULAR | VARCHAR2 | Y | Número da matricula do titular |
| 16 | SN_CARTEIRA_ATIVO | VARCHAR2 | N | Indica se a carteira está ativa |
| 17 | DT_INTEGRA | DATE | Y | Data da integração |
| 18 | CD_SEQ_INTEGRA | NUMBER | Y | Código sequencial da integração |
| 19 | DT_HR_ULT_ELEGIBILIDADE | DATE | Y | DATA E HORA DA ULTIMA PESQUISA DE ELEGIBILIDADE |
| 20 | SN_APROVADA_ULT_ELEG | VARCHAR2 | N | INDICACÃO DE APROVACÃO DA ULTIMA PESQUISA DE ELEGIBILIDADE |
| 21 | CD_VALIDACAO_BIOMETRICA | VARCHAR2 | Y | CODIGO DA VALIDACÃO DA LEITURA BIOMETRICA. |
| 22 | SN_ULTIMA_CARTEIRA_UTILIZADA | VARCHAR2 | N | FLAG QUE INDICA SE A CARTEIRA FOI A ULTIMA UTILIZADA PELO PACIENTE |
| 23 | SN_TITULAR_OLD | VARCHAR2 | N | GUARDA A INFORMACÃO ANTERIOR QUANDO HOUVER ALTERACÃO DE TITULAR NA CARTEIRA |
| 24 | SN_PENSIONISTA_OLD | VARCHAR2 | N | GUARDA A INFORMACÃO ANTERIOR QUANDO HOUVER ALTERACÃO DE PENSIONISTA NA CARTEIRA |
| 25 | CD_CATEGORIA_PLANO_OLD | NUMBER | Y | GUARDA A INFORMACÃO ANTERIOR QUANDO HOUVER ALTERACÃO DE CATEGORIA NA CARTEIRA |
| 26 | DT_ALTERACAO | DATE | Y | GUARDA A DATA EM QUE OS DADOS DOS CAMPOS TERMINADOS EM _OLD FORAM ALTERADOS PELA ULTIMA VEZ |
| 27 | TP_TP_ORI_MEIO_MAG | VARCHAR2 | Y | CODIGO DE-PARA ORIGEM DO ATENDIMENTO. |
| 28 | SN_PATROCINADOR | VARCHAR2 | N | INDICA SE E PATROCINADOR |
| 29 | SN_ESTRANGEIRO | VARCHAR2 | N | INDICA SE O PACIENTE E ESTRANGEIRO |
| 30 | SN_CARGA_FAMILIAR | VARCHAR2 | N | SE MARCADO, INDICA SE TRATAR DE UM PARENTE DO TITULAR DA CARTEIRA. |
| 31 | CD_RUT_PATROCINADOR | VARCHAR2 | Y | NOS CASOS DO RUT INFORMADO SER DE UM PATROCINADOR DO ATENDIMENTO, O MESMO SERA GUARDADO NESTE CAMPO. |
| 32 | DS_OBSERVACAO | VARCHAR2 | Y | OBSERVACÃO REFERENTE AS CONDICÕES ESPECIAIS DA CONFIGURACÃO DA CARTEIRA. |
| 33 | CD_LOG_TROCPAC_REVERSAO | NUMBER | Y | Código da reversão. |

---

## DBAMV.TROCPAC_CONTR_MF
> Log dos registro da tabela CONTR_MF

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REMESSA | NUMBER | N | Código da remessa |
| 2 | CD_PACIENTE | NUMBER | N | Código do paciente |
| 3 | TP_SITUACAO | VARCHAR2 | N | Tipo da situação |
| 4 | NR_AT_AMB | NUMBER | Y | Número do atendimento ambulatorial |
| 5 | NR_EX_LAB | NUMBER | Y | Número do exame laboratorial |
| 6 | CD_LOG_TROCPAC_REVERSAO | NUMBER | Y | Código da reversão. |

---

## DBAMV.TROCPAC_ELEGIBILIDADE_PACIENTE
> REGISTROS DE SOLICITAC?ES DE ELEGIBILIDADE DO PACIENTE NA OPERADORA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PACIENTE | NUMBER | N | CODIGO DO PACIENTE |
| 2 | CD_CONVENIO | NUMBER | N | CODIGO DO CONVENIO |
| 3 | DH_ELEGIBILIDADE | DATE | N | DATA/HORA DA ELEGIBILIDADE |
| 4 | TP_STATUS | VARCHAR2 | N | STATUS DA SOLICITAC?O (P-PENDENTE/E-ELEGIVEL/N-N?O ELEGIVEL) |
| 5 | NR_CARTEIRA | VARCHAR2 | N | NUMERO DA CARTEIRA DO BENEFICIARIO |
| 6 | DT_VAL_CARTEIRA | DATE | Y | DATA DE VALIDADE DA CARTEIRA DO BENEFICIARIO |
| 7 | CD_AUSENCIA_VALIDACAO | VARCHAR2 | Y | JUSTIFICATIVA DO PACIENTE PELA AUSENCIA DO CODIGO DE VALIDAC?O (AUSENCIACODVALIDACAO/TUSS-74) |
| 8 | CD_VALIDACAO | VARCHAR2 | Y | CODIGO DE VALIDAC?O PARA ATESTAR PRESENCA DO PACIENTE (CODVALIDACAO) |
| 9 | TP_IDENT_BENEFICIARIO | VARCHAR2 | Y | TIPO DE TECNOLOGIA USADA NA IDENTIFICAC?O DO BENEFICIARIO (TIPOIDENT/TUSS-72) |
| 10 | DS_TEMPLATE_IDENT_BENEFICIARIO | VARCHAR2 | Y | MINUCIA DO IDENTIFICADOR BIOMETRICO (TEMPLATEBIOMETRICO) |
| 11 | NR_ID_BENEFICIARIO | VARCHAR2 | Y | ATESTA A PRESENCA DO BENEFICIARIO. GRAVAR DE ACORDO COM TIPOIDENT/TUSS-72 (IDENTIFICADORBENEFICIA... |
| 12 | CD_LOG_TROCPAC_REVERSAO | NUMBER | Y | Código da reversão. |

---

## DBAMV.TROCPAC_ENDERECO
> Registra o endereço do Paciente

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ENDERECO | NUMBER | N |  |
| 2 | CD_PACIENTE | NUMBER | N | Código do Paciente |
| 3 | DS_ENDERECO | VARCHAR2 | Y | Descrição do endereço |
| 4 | CD_BAIRRO | NUMBER | Y | Código do bairro |
| 5 | NM_BAIRRO | VARCHAR2 | Y | Nome do bairro |
| 6 | NR_ENDERECO | NUMBER | Y | Número do endereço |
| 7 | NR_FONE | VARCHAR2 | Y | Número do telefone |
| 8 | DS_COMPLEMENTO | VARCHAR2 | Y | Descrição do complemento do endereço |
| 9 | DS_PTO_REFERENCIA | VARCHAR2 | Y | Descrição da referência da localização |
| 10 | CD_LOCALIDADE | NUMBER | Y | Código da localidade do paciente |
| 11 | NR_CEP | NUMBER | Y | Número do CEP do paciente |
| 12 | SN_PADRAO | VARCHAR2 | Y | Identificação do endereco padrão do paciente S = Sim, N = Não |
| 13 | CD_LOG_TROCPAC_REVERSAO | NUMBER | Y | Código da reversão. |

---

## DBAMV.TROCPAC_ENVIO_DADOS_PACIENTE
> TABELA DA NORMA 24 ENVIO DO PADR?O GERAL DE SAUDE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PACIENTE | NUMBER | N | CODIGO DO ENVIO DE DADOS CADASTRAIS DO PACIENTE |
| 2 | DT_PRIMEIRO_ENVIO | DATE | Y | DATA E HORA QUE O USUARIO ENVIOU O CADASTRO DO PACIENTE |
| 3 | DT_ULTIMO_ENVIO | DATE | Y | DATA E HORA QUE O USUARIO ENVIOU A ULTIMA ATUALIZACÃO CADASTRAL DO PACIENTE |
| 4 | SN_SITUACAO | VARCHAR2 | N | SITUACÃO DO ENVIO: S = PRECISA, ENVIAR: N = ENVIADO |
| 5 | CD_LOG_TROCPAC_REVERSAO | NUMBER | Y | Código da reversão. |

---

## DBAMV.TROCPAC_FOTO_PACIENTE
> Armzena Fotos dos Pacientes

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PACIENTE | NUMBER | N | Codigo de Paciente |
| 2 | CD_FOTO_PESSOA | NUMBER | N | Codigo de Foto Pessoa |
| 3 | CD_LOG_TROCPAC_REVERSAO | NUMBER | Y | Código da reversão. |

---

## DBAMV.TROCPAC_FOTO_PESSOA
> Armzena fotos de pessoas

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FOTO_PESSOA | NUMBER | N | Código de Foto Pessoa |
| 2 | LO_FOTO_PESSOA | BLOB | Y | Foto da Pessoa |
| 3 | CD_LOG_TROCPAC_REVERSAO | NUMBER | Y | Código da reversão. |

---

## DBAMV.TROCPAC_GF_DADOS_INTERNACAO
> TABELA QUE ARMAZENA OS DADOS DE INTERNACAO DO GESTOR DE FLUXO.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ATENDIMENTO | NUMBER | N | CODIGO DO ATENDIMENTO |
| 2 | CD_PACIENTE | NUMBER | N | CODIGO DO PACIENTE |
| 3 | DT_ATENDIMENTO | DATE | N | DATA DO ATENDIMENTO |
| 4 | HR_ATENDIMENTO | DATE | N | HORA DO ATENDIMENTO |
| 5 | TP_ATENDIMENTO | VARCHAR2 | N | TIPO DO ATENDIMENTO |
| 6 | CD_MULTI_EMPRESA | NUMBER | N | CODIGO DA MULTI EMPRESA |
| 7 | CD_LOG_TROCPAC_REVERSAO | NUMBER | Y | Código da reversão. |

---

## DBAMV.TROCPAC_HIST_PACI_PROG_SAUDE
> TABELA DE HISTORICO DO PACIENTE EM PROGRAMAS DE SAUDE. ESTA TABELA E UM ESPELHO DA CICLO DE VIDA DO PACIENTE NO PROGRAMA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_HIST_PACIENTE_PROG_SAUDE | NUMBER | N | CHAVE DA TABELA |
| 2 | CD_PACIENTE | NUMBER | N | CODIGO DO PACIENTE DO HISTORICO |
| 3 | CD_PROGRAMA_SAUDE | NUMBER | N | CODIGO DO PROGRAMA DE SAUDE DO HISTORICO |
| 4 | CD_MULTI_EMPRESA | NUMBER | N | CODIGO DA EMPRESA DO HISTORICO |
| 5 | SN_PROGRAMA_SAUDE_ATIVO | VARCHAR2 | N | SITUAÇÃO ATUAL DO PACIENTE. |
| 6 | CD_USUARIO | VARCHAR2 | Y | CODIGO DO USUARIO DA OPERAÇÃO EFETUADA |
| 7 | DT_HR_OPERACAO | DATE | N | DATA E HORA DA OPERAÇÃO EFETUADA |
| 8 | CD_ESTADO_PACIENTE_PROG_SAUDE | NUMBER | Y | CODIGO DO ESTADO DO PACIENTE DA OPERAÇÃO EFETUADA. |
| 9 | DT_INICIO_VIGENCIA | DATE | Y | DATA DE INICIO DA PARTICIPAÇÃO DO PACIENTE NO PROGRAMA. QUANDO VAZIO INDICA QUE O PACIENTE NÃO TE... |
| 10 | DT_FIM_VIGENCIA | DATE | Y | DATA DE TERMINO DA PARTICIPAÇÃO DO PACIENTE NO PROGRAMA. QUANDO VAZIO INDICA QUE O PACIENTE NÃO T... |
| 11 | CD_LOG_TROCPAC_REVERSAO | NUMBER | Y | LOG REVERSAÕ |

---

## DBAMV.TROCPAC_INDICACAO_PACIENTE
> Registro de Indicação de Pacientes

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INDICACAO_PACIENTE | NUMBER | N | Código da Indicação |
| 2 | CD_USUARIO | VARCHAR2 | N | Usuário que Realizou o Registro de Indicação |
| 3 | CD_PACIENTE | NUMBER | N | Código do Paciente que está sendo Agendado |
| 4 | CD_TIPO_INDICACAO | NUMBER | Y | Identificacor do Tipo de Indicação (tabela dbamv.TP_INDICACAO_AGENDA) |
| 5 | CD_PRESTADOR | NUMBER | Y | Se Indicado por Prestador, Trata-se do Código do mesmo |
| 6 | NM_INDICADOR | VARCHAR2 | Y | Nome da fonte de Indicação, se não for Prestador |
| 7 | CD_LOG_TROCPAC_REVERSAO | NUMBER | Y | Código da reversão. |

---

## DBAMV.TROCPAC_IT_SAME
> Tabela que Armazena os Códigos de Identificação do Same

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CAD_SAME | NUMBER | N | Código de Cadastro do Same |
| 2 | NR_MATRICULA_SAME | NUMBER | N | Número de Matricula do Same |
| 3 | CD_ATENDIMENTO | NUMBER | N | Código do Atendimento |
| 4 | DT_ENTRADA | DATE | N | Data de Entrada do Documento Same |
| 5 | SN_NO_LOCAL | VARCHAR2 | N | Same se Encontra no Local Informado no Cadastro do Same |
| 6 | CD_PROTOCOLO_DE_SAIDA | NUMBER | Y | Código do Protocolo de Saída |
| 7 | CD_PORTADOR_ATUAL | NUMBER | Y | Código do Portador que está com o Documento Atualmente |
| 8 | NR_VOLUME | NUMBER | N | Número do Volume Correspondente ao Conjunto de Pastas do Paciente |
| 9 | NR_ENVELOPE | VARCHAR2 | Y | Número do Envelope onde será Guardado o Atendimento |
| 10 | SN_AUTOMATICO | VARCHAR2 | N | Se "S" SAME Origina-se da integração com Documentos |
| 11 | USUARIO_ENTRADA | VARCHAR2 | Y | Usuário que deu Entrada no Same |
| 12 | SN_ARQUIVO_PERDIDO | VARCHAR2 | Y | Indica se o Arquivo Físico foi Perdido (não existe). S-Sim, O arquivo fisico não existe. N-Não, O... |
| 13 | DT_ARQUIVO_PERDIDO | DATE | Y | Última data e hora que foi Alterado o Status do Arquivo Físico |
| 14 | CD_USUARIO_ARQUIVO_PERDIDO | VARCHAR2 | Y | Último Usuário que fez Alteração no Status do Arquivo Físico |
| 15 | CD_LOG_TROCPAC_REVERSAO | NUMBER | Y | Código da reversão. |

---

## DBAMV.TROCPAC_IT_SAME_PROTOCOLOS
> Tabela que Armazena os Códigos de Identificação de Protocolo do Same

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CAD_SAME | NUMBER | N | Código de Cadastro do Same |
| 2 | NR_MATRICULA_SAME | NUMBER | N | Código da Matricula do Same |
| 3 | CD_PROTOCOLO | NUMBER | N | Código do Protocolo do Same |
| 4 | CD_ATENDIMENTO | NUMBER | Y | Código do Atendimento do Paciente |
| 5 | NR_SEQUENCIA | NUMBER | N | Número Sequencial do Same |
| 6 | CD_PROTOCOLO_DEVOLUCAO | NUMBER | Y |  |
| 7 | DT_RECEBIMENTO | DATE | Y | Data de Recebimento do Documento |
| 8 | HR_RECEBIMENTO | DATE | Y | Hora de Recebimento do Documento |
| 9 | CD_USUARIO_RECEBIMENTO | VARCHAR2 | Y | Usuário Responsável pelo Recebimento dos Documentos do Protocolo |
| 10 | SN_RECEBIMENTO_AUTOMATICO | VARCHAR2 | N | Indica se foi Realizado o Recebimento Automático |
| 11 | NR_VOLUME | NUMBER | N | Número do Volume Correspondente ao Conjunto de Pastas do Paciente |
| 12 | CD_LOG_TROCPAC_REVERSAO | NUMBER | Y | Código da reversão. |

---

## DBAMV.TROCPAC_LOG_PACIENTE_ATENDIME
> TABELA PARA GUARDAR AS INFORMACÕES DO PACIENTE EM RELAÇÃO A UM ATENDIMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PACIENTE | NUMBER | N | CODIGO DO PACIENTE |
| 2 | CD_ATENDIMENTO | NUMBER | N | CODIGO DO ATENDIMENTO |
| 3 | NM_PACIENTE | VARCHAR2 | N | NOME DO PACIENTE |
| 4 | TP_SEXO | VARCHAR2 | N | TIPO DO SEXO |
| 5 | TP_ESTADO_CIVIL | VARCHAR2 | Y | TIPO DO ESTADO CIVIL |
| 6 | CD_PROFISSAO | NUMBER | Y | CODIGO DA PROFISSÃO |
| 7 | CD_CIDADE_TEM | NUMBER | Y | CODIGO DA CIDADE TEM |
| 8 | DS_ENDERECO | VARCHAR2 | Y | DESCRICÃO DO ENDERECO |
| 9 | NR_ENDERECO | NUMBER | Y | NUMERO DO ENDERECO |
| 10 | DS_COMPLEMENTO | VARCHAR2 | Y | DESCRICÃO DO COMPLEMENTO |
| 11 | NM_BAIRRO | VARCHAR2 | Y | NOME DO BAIRRO |
| 12 | CD_CIDADE | NUMBER | Y | CODIGO DA CIDADE |
| 13 | CD_TIPO_LOGRADOURO | NUMBER | Y | CODIGO DO TIPO DO LOGRADOURO |
| 14 | CD_PAIS | NUMBER | Y | CODIGO DO PAIS RELACIONADO AO ENDERECO DO PACIENTE |
| 15 | DT_CADASTRO | DATE | N | DATA DO CADASTRO |
| 16 | HR_CADASTRO | DATE | Y | HORA DO CADASTRO |
| 17 | DT_NASCIMENTO | DATE | Y | DATA DE NASCIMENTO |
| 18 | TP_COR | VARCHAR2 | Y | TIPO DA COR |
| 19 | CD_TIP_MOR | NUMBER | Y | CODIGO DO TIPO DE MORADIA |
| 20 | CD_TIP_RES | NUMBER | Y | CODIGO DO TIPO DE RESIDENCIA |
| 21 | NR_CEP | VARCHAR2 | Y | NUMERO DO CEP |
| 22 | NR_FONE | VARCHAR2 | Y | NUMERO DE TELEFONE |
| 23 | NM_USUARIO | VARCHAR2 | Y | NOME DO USUARIO |
| 24 | CD_MULTI_EMPRESA | NUMBER | N | CODIGO DA MULTI EMPRESA |
| 25 | NM_MAE | VARCHAR2 | Y | NOME DA MÃE |
| 26 | CD_LOG_TROCPAC_REVERSAO | NUMBER | Y | Código da reversão. |

---

## DBAMV.TROCPAC_PACIENTE
> Tabela que Armazena as Informações do Same

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PACIENTE | NUMBER | N |  |
| 2 | CD_CIDADE | NUMBER | Y |  |
| 3 | CD_DIS_SAN | NUMBER | Y |  |
| 4 | TP_SITUACAO | VARCHAR2 | N |  |
| 5 | NM_MNEMONICO | VARCHAR2 | Y |  |
| 6 | NM_PACIENTE | VARCHAR2 | N |  |
| 7 | TP_SEXO | VARCHAR2 | N |  |
| 8 | TP_ESTADO_CIVIL | VARCHAR2 | Y | Tipo de estado civil: S = Solteito C = Casado V = Viuvo D = Desquitado I = Divorciado U = União-e... |
| 9 | CD_CIDADE_TEM | NUMBER | Y |  |
| 10 | DS_ENDERECO | VARCHAR2 | Y |  |
| 11 | DT_CADASTRO | DATE | N | Data e hora que o usuario realizou o cadastro do paciente |
| 12 | DT_NASCIMENTO | DATE | Y |  |
| 13 | TP_COR | VARCHAR2 | Y |  |
| 14 | NM_MAE | VARCHAR2 | Y |  |
| 15 | CD_CLA_ECO | NUMBER | Y |  |
| 16 | CD_CIDADANIA | NUMBER | Y |  |
| 17 | CD_TIP_MOR | NUMBER | Y |  |
| 18 | CD_TIP_RES | NUMBER | Y |  |
| 19 | CD_GRAU_INS | NUMBER | Y |  |
| 20 | CD_RELIGIAO | NUMBER | Y |  |
| 21 | CD_PROFISSAO | NUMBER | Y |  |
| 22 | NR_CEP | VARCHAR2 | Y |  |
| 23 | NR_DOCUMENTO | VARCHAR2 | Y |  |
| 24 | HR_CADASTRO | DATE | Y |  |
| 25 | NR_FONE | VARCHAR2 | Y |  |
| 26 | NM_BAIRRO | VARCHAR2 | Y |  |
| 27 | NM_PAI | VARCHAR2 | Y |  |
| 28 | CD_DIS_SAN_MUITOS | NUMBER | Y |  |
| 29 | DS_TRABALHO | VARCHAR2 | Y |  |
| 30 | NM_CONJUGE | VARCHAR2 | Y |  |
| 31 | TP_SANGUINEO | VARCHAR2 | Y |  |
| 32 | SN_DOADOR | VARCHAR2 | Y |  |
| 33 | DS_CHECAPAC | VARCHAR2 | Y |  |
| 34 | NM_USUARIO | VARCHAR2 | Y |  |
| 35 | CD_CNS | VARCHAR2 | Y |  |
| 36 | NR_CNS | VARCHAR2 | Y |  |
| 37 | NR_CPF | VARCHAR2 | Y |  |
| 38 | DS_COMPLEMENTO | VARCHAR2 | Y |  |
| 39 | NR_ENDERECO | NUMBER | Y |  |
| 40 | NR_RG_NASC | NUMBER | Y |  |
| 41 | NR_IDENTIDADE | VARCHAR2 | Y |  |
| 42 | DS_OM_IDENTIDADE | VARCHAR2 | Y |  |
| 43 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 44 | CD_PACIENTE_ANTIGO | VARCHAR2 | Y |  |
| 45 | DT_ULTIMA_ATUALIZACAO | DATE | Y |  |
| 46 | CD_NATURALIDADE | NUMBER | Y |  |
| 47 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 48 | DS_ATRIBUTO1 | VARCHAR2 | Y |  |
| 49 | SN_ALT_DADOS_ORA_APP | VARCHAR2 | N |  |
| 50 | EMAIL | VARCHAR2 | Y |  |
| 51 | CD_PACIENTE_INTEGRA | VARCHAR2 | Y |  |
| 52 | DT_INTEGRA | DATE | Y |  |
| 53 | CD_SEQ_INTEGRA | NUMBER | Y |  |
| 54 | DT_INATIVO | DATE | Y |  |
| 55 | CD_PIS_PASEP | VARCHAR2 | Y | Numero do PIS/PASEP  do Paciente |
| 56 | TP_CERTIDAO | VARCHAR2 | Y | Tipo de certidão usada no atendimento |
| 57 | NM_CARTORIO | VARCHAR2 | Y | Nome do cartorio responsavel pela emissão da certidão |
| 58 | DS_LIVRO | VARCHAR2 | Y | Numero do livro onde se encontra a certidão registrada |
| 59 | DS_FOLHA | VARCHAR2 | Y | Folha do livro onde se encontra a certidão registrada |
| 60 | DT_EMISSAO_CERTIDAO | DATE | Y | Data de emissão da certidão |
| 61 | DT_EMISSAO_IDENTIDADE | DATE | Y | Data de emissão da carteira de identidade |
| 62 | CD_UF_EMISSAO_IDENTIDADE | VARCHAR2 | Y | Unidade federativa que emitiu a identidade |
| 63 | DT_ENTRADA_ESTRANGEIRO | DATE | Y | Data de entrada no Pais, se a carteira for de estrangeiro |
| 64 | NR_CTPS | VARCHAR2 | Y | Numero da Carteira de Trabalho e Previdencia Social |
| 65 | NR_SERIE_CTPS | VARCHAR2 | Y | Serie da CTPS |
| 66 | DT_EMISSAO_CTPS | DATE | Y | Data de emissão da CTPS |
| 67 | CD_UF_EMISSAO_CTPS | VARCHAR2 | Y | Unidade Federativa que emitiu a CTPS |
| 68 | NR_TITULO_ELEITORAL | VARCHAR2 | Y | Numero do titulo eleitoral |
| 69 | NR_ZONA_TITULO_ELEITORAL | VARCHAR2 | Y | Zona do titulo Eleitoral |
| 70 | NR_SECAO_TITULO_ELEITORAL | VARCHAR2 | Y | Seção do Titulo Eleitoral |
| 71 | SN_RECEBE_CONTATO | VARCHAR2 | N | Campo que identificara se o paciente aceitara receber comunicados via e-mail. |
| 72 | CD_TIPO_LOGRADOURO | NUMBER | Y | Codigo do identificador do tipo de logradouro |
| 73 | SN_PERMITE_AGENDAR_PARA_SUS | VARCHAR2 | Y | Indica se o paciente pode ser agendado para SUS, se o ultimo atendimento tenha sido por Convenio ... |
| 74 | CD_CATEGORIA_OPINIAO | NUMBER | Y | Codigo da categoria do formador de opinião associada ao paciente. |
| 75 | SN_VIP | VARCHAR2 | N | Indica se o paciente e VIP ou não. |
| 76 | CD_PAIS | NUMBER | Y | Codigo do Pais relacionado ao endereco do Paciente. |
| 77 | CD_PACIENTE_EXTERNO | VARCHAR2 | Y | Codigo do Paciente no Sistema Terceiro |
| 78 | CD_ETNIA | NUMBER | Y | Codigo da Etinia Indigena - Campo Obrigatorio para Pacientes Indigenas |
| 79 | DS_HASH | VARCHAR2 | Y | Esta coluna contem o HASH usado nas pesquisas via indice de contexto na tabela DBAMV.TROCPAC_PACI... |
| 80 | NR_DDD_FONE | NUMBER | Y | Prefixo da area correspondente ao numero do telefone do paciente. |
| 81 | NR_DDD_CELULAR | NUMBER | Y | Prefixo da area correspondente ao numero do celular do paciente. |
| 82 | NR_CELULAR | VARCHAR2 | Y | Numero do celular do paciente |
| 83 | SN_NOTIFICACAO_SMS | VARCHAR2 | N | Indica se o paciente recebera notificacão via SMS quando seus exames estiverem prontos. |
| 84 | NM_PACIENTE_FONETIZADO | VARCHAR2 | Y | Nome Fonetizado do Paciente -> dbamv.fnc_fonetizar(nm_paciente) |
| 85 | CD_SITUACAO_FAMILIAR | NUMBER | Y | Codigo da situacão familiar do paciente. |
| 86 | DT_CADASTRO_MANUAL | DATE | N | Data e hora informada pelo usuario no cadastro do paciente |
| 87 | NR_DOCUMENTO_ESTRANGEIRO | VARCHAR2 | Y | Numero do documento estrangeiro. |
| 88 | DT_ENTRADA_BRASIL | DATE | Y | Data de entrada do estrangeiro no Brasil. |
| 89 | DT_NATURALIZACAO | DATE | Y | Data de naturalizacão do estrangeiro no Brasil. |
| 90 | NR_PORTARIA_NATURALIZACAO | VARCHAR2 | Y | Numero da portaria de naturalizacão do estrangeiro no Brasil. |
| 91 | DS_PRIMEIRO_NOME | VARCHAR2 | Y | Descricão do primeiro nome do paciente |
| 92 | DS_PRIMEIRO_SOBRENOME | VARCHAR2 | Y | Descricão do primeiro sobrenome do paciente |
| 93 | DS_SEGUNDO_SOBRENOME | VARCHAR2 | Y | Descricão do segundo sobrenome do paciente |
| 94 | CD_IDENTIFICADOR_PESSOA | VARCHAR2 | Y | Codigo do identificador do paciente |
| 95 | CD_ENDERECO_POSTAL | VARCHAR2 | Y | Codigo do endereco postal internacional |
| 96 | NR_DDI_FONE | NUMBER | Y | Numero do DDI do telefone do paciente. |
| 97 | NR_DDI_CELULAR | NUMBER | Y | Numero do DDI do Celular do paciente. |
| 98 | NR_DDI_FONE_COMERCIAL | NUMBER | Y | Numero do DDI do telefone Comercial do paciente. |
| 99 | NR_DDD_FONE_COMERCIAL | NUMBER | Y | Numero do DDD do telefone Comercial do paciente. |
| 100 | NR_FONE_COMERCIAL | NUMBER | Y | Numero do telefone Comercial do paciente. |
| 101 | NR_SAME | VARCHAR2 | Y |  |
| 102 | SN_UTILIZA_NOME_SOCIAL | VARCHAR2 | Y | Configuracão para verificar se o paciente utiliza o nome social |
| 103 | NM_SOCIAL_PACIENTE | VARCHAR2 | Y | Nome social do paciente |
| 104 | SN_ENDERECO_SEM_NUMERO | VARCHAR2 | N | Indica se o paciente possui ou não numero do endereco . |
| 105 | SN_ENDERECO_EXTERNO | VARCHAR2 | Y | Indica se o paciente possui endereco externo. |
| 106 | CD_BANCO | NUMBER | Y | Banco da Conta Bancaria do Paciente |
| 107 | NR_AGENCIA | VARCHAR2 | Y | Numero da Agencia da Conta Bancaria do paciente |
| 108 | DS_AGENCIA | VARCHAR2 | Y | Nome da Agencia da Conta Bancaria do paciente |
| 109 | NR_CONTA | VARCHAR2 | Y | Numero da Conta Bancaria do paciente |
| 110 | SN_FREQUENTA_ESCOLA | VARCHAR2 | Y | Informe se Frequenta Escola |
| 111 | DS_CARGO_TRABALHO | VARCHAR2 | Y | Descricão do Cargo Atual que o paciente exerce |
| 112 | NR_REGISTRO_FUNCIONAL_TRABALHO | VARCHAR2 | Y | Numero de Registro Funcional |
| 113 | DS_VINCLULO_TRABALHO | VARCHAR2 | Y | Tipo de Vinculo Empregaticio |
| 114 | DS_HORARIO_TRABALHO | VARCHAR2 | Y | Horario de trabalho |
| 115 | TP_PACIENTE | VARCHAR2 | Y | Tipo de Paciente : MENOR_INDADE,INAPTO e IDOSO |
| 116 | CD_TIP_PAREN | NUMBER | Y | Tipo de parentesco do Tutor do Paciente |
| 117 | DS_COMPLEMENTO_TUTOR | VARCHAR2 | Y | Complemento sobre o Tutor do Paciente |
| 118 | NM_TUTOR | VARCHAR2 | Y | Nome do Tutor do Paciente |
| 119 | DT_NASCIMENTO_TUTOR | DATE | Y | Data de Nascimento do Tutor do Paciente |
| 120 | TP_SEXO_TUTOR | VARCHAR2 | Y | Sexo do Tutor do Paciente |
| 121 | NR_CPF_TUTOR | VARCHAR2 | Y | CPF do Tutor do Paciente |
| 122 | NR_DECLARACAO_NASCIDO_VIVO | VARCHAR2 | Y | Numero da Declaracão de Nascido Vivo |
| 123 | CD_TIPO_BENEFICIARIO | VARCHAR2 | Y | Codigo Tipo do Beneficiario |
| 124 | CD_IDENTIFICADOR_CONVENIO | VARCHAR2 | Y | Codigo de identificacão para o convenio interno do paciente |
| 125 | CD_IDENTIFICADOR_CONVENIO_PAI | VARCHAR2 | Y | Codigo de identificacão para o convenio interno do titular do plano |
| 126 | CD_TIP_PAREN_CONVENIO | NUMBER | Y | Tipo de parentesco do paciente com o titular do plano |
| 127 | SN_PLANO_ODONTOLOGICO | VARCHAR2 | Y | Se o paciente possui plano odontologico |
| 128 | CD_USUARIO_PERMISSAO | VARCHAR2 | Y | Codigo do motivo da ausencia do documento obrigatorio. |
| 129 | CD_MOT_AUSENCIA_DOC_OBRG | NUMBER | Y |  |
| 130 | CD_LOCAL_TRABALHO_CHILE | NUMBER | Y | Codigo do local de trabalho, da tabela LOCAL_TRABALHO. Utilizado somente para "Chile". |
| 131 | CD_CONDICAO_ESPECIAL | NUMBER | Y | Codigo da condicão especial do paciente, da tabela CONDICOES_ESPECIAIS_PAC. |
| 132 | CD_COR_AREA_FAMILIA | NUMBER | Y |  |
| 133 | SN_RUT_FICTICIO | VARCHAR2 | N | Identificador de RUT ficticio. Valores: S / N |
| 134 | DT_VALIDADE | DATE | Y | Data Fim de Validade do Cadastro. Um paciente que possua o valor desse campo menor que a data do ... |
| 135 | CD_FORCA_MILITAR | NUMBER | Y | Identificador da Forca Militar |
| 136 | CD_POSTO_MILITAR | NUMBER | Y | Identificador de Posto Militar |
| 137 | CD_LOG_LOGRADOURO | NUMBER | Y | Codigo do logradouro da integração com a prefeitura de santos |
| 138 | NR_NIF | VARCHAR2 | Y | Numero de identificacao fiscal |
| 139 | NM_USUARIO_ULTIMA_ATUALIZACAO | VARCHAR2 | Y |  |
| 140 | CD_PRESTADOR_REFERENCIA | NUMBER | Y | Código do prestador referente a Atenção Primária da família |
| 141 | SN_ONCOLOGICO | VARCHAR2 | N | Informa se o paciente e oncologico |
| 142 | DT_CLASSIFICACAO_ONCOLOGICO | DATE | Y | Data da classificação de oncologia |
| 143 | SN_AUSENCIA_MAE | VARCHAR2 | N | Indica que o paciente não tem o nome da mãe. |
| 144 | CD_PAIS_EMISSAO_PAS | NUMBER | Y | Indica o país de Emissão do Passaporte. |
| 145 | CD_ORIENTACAO_SEXUAL | NUMBER | Y | Código da orientação Sexual do Paciente. |
| 146 | CD_IDENTIDADE_GENERO | NUMBER | Y | Código da Identidade de Gênero do Paciente. |
| 147 | CD_TIPO_CELULAR | VARCHAR2 | N | Indica o Tipo de Telefone Celular Segundo o CADSUS (R - RESIDENCIAL, C - COMERCIAL, E - CELULAR, ... |
| 148 | CD_TIPO_FONE_COMERCIAL | VARCHAR2 | N | Indica o Tipo de Telefone Comercial Segundo o CADSUS (R - RESIDENCIAL, C - COMERCIAL, E - CELULAR... |
| 149 | CD_TIPO_FONE | VARCHAR2 | N | Indica o tipo de Telefone Residencial Segundo o CADSUS (R - RESIDENCIAL, C - COMERCIAL, E - CELUL... |
| 150 | TP_ZONA_MORADIA | VARCHAR2 | N | Indica a Zona da Moradia do Paciente: U - Urbana ou R - Rural. |
| 151 | CD_VULNERABILIDADE_SOCIAL | NUMBER | Y | Código da vulnerabilidade Social. |
| 152 | SN_SITUACAO_RUA | VARCHAR2 | N | Indica se o Paciente se Encontra em Situação de rua. |
| 153 | SN_UTIL_ORIENTACAO_SEXUAL | VARCHAR2 | N |  |
| 154 | SN_UTIL_IDENTIDADE_GENERO | VARCHAR2 | N |  |
| 155 | CD_LOG_TROCPAC_REVERSAO | NUMBER | Y | Código da reversão. |

---

## DBAMV.TROCPAC_PACIENTE_ADICIONAL
> Log da tabela PACIENTE_ADICIONAL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PACIENTE | NUMBER | N | CODIGO DO PACIENTE. |
| 2 | CD_CIDADE_NATURAL | NUMBER | Y | Código da cidade natural |
| 3 | DS_PTO_REF | VARCHAR2 | Y | Descrição de referência |
| 4 | DS_OCUP_CONJUGE | VARCHAR2 | Y | Descrição da ocupação do conjuge |
| 5 | DS_AVISAR_URGENCIA | VARCHAR2 | Y | Descrição do aviso de urgencia |
| 6 | DS_OCUP_PAI | VARCHAR2 | Y | Descrição da ocupação do pai |
| 7 | DS_OCUP_MAE | VARCHAR2 | Y | Descrição da ocupação da mãe |
| 8 | DT_NASC_PAI | DATE | Y | Data de nascimento do pai |
| 9 | DT_NASC_MAE | DATE | Y | Data de nascimento da mãe |
| 10 | CD_GRAU_INS_PAI | NUMBER | Y | Código do grau de escolaridade do pai |
| 11 | CD_GRAU_INS_MAE | NUMBER | Y | Código do grau de escolaridade da mãe |
| 12 | NR_NASC_VIVOS | NUMBER | Y | Número do nascido vivo |
| 13 | NR_NASC_MORTOS | NUMBER | Y | Número do nascido morto |
| 14 | NR_NASC_IGNORADO | NUMBER | Y | Número do nascido ignorado |
| 15 | DS_OCUP_ANTERIOR | VARCHAR2 | Y | Descrição da ocupação anterior |
| 16 | CD_LOG_TROCPAC_REVERSAO | NUMBER | Y | Código da reversão. |

---

## DBAMV.TROCPAC_PACIENTE_CARTAO
> Armazena os logs da tabela PACIENTE_CARTAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PACIENTE_CARTAO | NUMBER | N | Código do cartão do paciente |
| 2 | CD_PACIENTE | NUMBER | N | Código do paciente |
| 3 | DT_PACIENTE_CARTAO | DATE | N | Data do cartão do paciente |
| 4 | HR_PACIENTE_CARTAO | DATE | N | Hora do cartão do paciente |
| 5 | NM_USUARIO | VARCHAR2 | N | Nome do usuário |
| 6 | NR_PACIENTE_CARTAO_ORDEM | NUMBER | N | Número da ordem do cartão do paciente |
| 7 | CD_LOG_TROCPAC_REVERSAO | NUMBER | Y | Código da reversão. |

---

## DBAMV.TROCPAC_PACIENTE_PROGRA_SAUDE
> TABELA DE PACIENTE EM PROGRAMAS DE SAUDE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PACIENTE | NUMBER | N | CODIGO DO PACIENTE |
| 2 | CD_PROGRAMA_SAUDE | NUMBER | N | CODIGO DO PROGRAMA DE SAUDE |
| 3 | CD_MULTI_EMPRESA | NUMBER | N | CODIGO DA EMPRESA |
| 4 | SN_PROGRAMA_SAUDE_ATIVO | VARCHAR2 | N | SITUACÃO DO PACIENTE NO PROGRAMA S = ATIVO, N = INATIVO. |
| 5 | CD_USUARIO | VARCHAR2 | Y | CODIGO DO USUARIO |
| 6 | DT_INICIO_VIGENCIA | DATE | Y | DATA DE INICIO DA PARTICIPAC?O DO PACIENTE NO PROGRAMA. QUANDO VAZIO INDICA QUE O PACIENTE NÃO TE... |
| 7 | DT_FIM_VIGENCIA | DATE | Y | DATA DE TERMINO DA PARTICIPAC?O DO PACIENTE NO PROGRAMA. QUANDO VAZIO INDICA QUE O PACIENTE NÃO T... |
| 8 | CD_ESTADO_PACIENTE_PROG_SAUDE | NUMBER | Y | CODIGO DO ESTADO DO PACIENTE NO PROGRAMA DE SAUDE. |
| 9 | CD_LOG_TROCPAC_REVERSAO | NUMBER | Y | Código da reversão. |

---

## DBAMV.TROCPAC_PACIENTE_RGHC
> TABELA DE RGHC - IDENTIFICADOR DO PACIENTE UTILIZADO PELO HOSPITAL.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PACIENTE | NUMBER | N | CODIGO DO PACIENTE MV. |
| 2 | NR_RGHC | VARCHAR2 | N | IDENTIFICADOR DO PACIENTE NO HOSPITAL. |
| 3 | CD_LOG_TROCPAC_REVERSAO | NUMBER | Y | Código da reversão. |

---

## DBAMV.TROCPAC_PERFIL_ALERTA_PACIENTE
> Tabela de Configuração dos Perfis de Alerta por Paciente.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PERFIL_ALERTA | NUMBER | N | Código do Perfil de Alerta |
| 2 | CD_PACIENTE | NUMBER | N | Código do Paciente. |
| 3 | CD_MULTI_EMPRESA | NUMBER | N | Código da Empresa. |
| 4 | CD_LOG_TROCPAC_REVERSAO | NUMBER | Y | Código da reversão. |

---

## DBAMV.TROCPAC_PESSOA_BIOMETRIA
> Tabela que Armazena os Códigos de Identificação de Digital do Prestador e do Paciente

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PESSOA_BIOMETRIA | NUMBER | N | Código de Identificação da Biometria |
| 2 | CD_PACIENTE | NUMBER | Y | Código de Identificação do Paciente |
| 3 | CD_USUARIO | VARCHAR2 | Y | Código de Identificação do Usuário |
| 4 | CD_LOG_TROCPAC_REVERSAO | NUMBER | Y | Código da reversão. |

---

## DBAMV.TROCPAC_PW_CONT_SINC_PRONT_PAC
> TABELA RESPONSAVEL POR CONTROLAR A EXECUCãO DO SINCRONIZADOR DE PRONTUARIOS DO PEP 2

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PACIENTE | NUMBER | N | CODIGO DO PACIENTE (PK) (FK) |
| 2 | DH_INICIO_PROCESSAMENTO | DATE | N | DATA/HORA DE INICIO DO PROCESSAMENTO |
| 3 | TP_PROCESSO | VARCHAR2 | N | TIPO DO PROCESSAMENTO QUE PODE SER SINCRONIZAR OU LIMPAR |
| 4 | CD_LOG_TROCPAC_REVERSAO | NUMBER | Y | Código da reversão. |

---

## DBAMV.TROCPAC_PW_LOG_PONTUACAO_PAC
> Tabela que guarda as transações feitas na pw_pontuacao_paciente

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOG_PONTUACAO_PAC | NUMBER | N | Sequencial da tabela |
| 2 | CD_PONTUACAO_PACIENTE | NUMBER | N | Código sequencial da pontução do paciente |
| 3 | DT_CRIACAO | DATE | N | Data da alteração |
| 4 | CD_PACIENTE | NUMBER | N |  |
| 5 | NR_PONTUACAO | NUMBER | N | Nova pontuação atualizada |
| 6 | CD_USUARIO | VARCHAR2 | N | Usuário que alterou |
| 7 | CD_LOG_TROCPAC_REVERSAO | NUMBER | Y | Código da reversão. |

---

## DBAMV.TROCPAC_PW_PONTUACAO_PACIENTE
> Tabela que guarda a pontuação dos pacientes.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PONTUACAO_PACIENTE | NUMBER | N | Sequencial da tabela |
| 2 | CD_PACIENTE | NUMBER | N | Código do paciente |
| 3 | NR_PONTUACAO | NUMBER | N | Pontuação do paciente |
| 4 | CD_LOG_TROCPAC_REVERSAO | NUMBER | Y | Código da reversão. |

---

## DBAMV.TROCPAC_SAME
> Tabela que Armazena as Informações do Same

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CAD_SAME | NUMBER | N | Código de Cadastro do Same |
| 2 | NR_MATRICULA_SAME | NUMBER | N | Número de Matricula do Same |
| 3 | DS_OBSERVACAO | VARCHAR2 | Y | Descrição da Observação do Same |
| 4 | CD_PACIENTE | NUMBER | N | Código do Paciente |
| 5 | CD_ARMARIO_SAME | NUMBER | Y | Código do Armário onde se Encontra o Same |
| 6 | DS_LINHA | VARCHAR2 | Y | Descrição da Linha onde se Encontra o Same |
| 7 | DS_COLUNA | VARCHAR2 | Y | Descrição da Coluna onde se Encontra o Same |
| 8 | SN_NO_LOCAL | VARCHAR2 | N | Informa se o Same se Encontra no Local Informado do Cadastro |
| 9 | CD_PROTOCOLO_DE_SAIDA | NUMBER | Y | Código do Protocolo de Saída do Same |
| 10 | DT_CADASTRO | DATE | Y | Data de Cadastro do Same |
| 11 | CD_PORTADOR_ATUAL | NUMBER | Y | Código do Portador que está com a Pasta Atualmente |
| 12 | NR_VOLUME | NUMBER | N | Número do Volume Correspondente ao Conjunto de Pastas do Paciente. |
| 13 | NR_MATRICULA_VOLUME | VARCHAR2 | Y | Campo que Representa a Concatenação da Matricula + Volume da Pasta do Paciente. |
| 14 | DT_HISTORICO_INICIAL | DATE | Y | Data do Primeiro Documento Contido na Pasta. |
| 15 | DT_HISTORICO_FINAL | DATE | Y | Data do último Documento Contido na Pasta. |
| 16 | DS_ID_ENVOLUCRO_EXTERNO | VARCHAR2 | Y | Descrição do Código de Identificação do Envolucro onde se Encontra a Pasta ao ser Encaminhada par... |
| 17 | DT_ENVIO_SAME_EXTERNO | DATE | Y | Data em que a Pasta foi Associada a Caixa de Transporte e Enviado para o SAME Externo. |
| 18 | CD_USUARIO_ENVIO | VARCHAR2 | Y | Usuário Responsável por Preparar o Transporte da Pasta na Embalagem a ser Encaminhada ao SAME Ext... |
| 19 | SN_ARQUIVO_PERDIDO | VARCHAR2 | Y | Indica se o Arquivo Físico foi Perdido (não existe). S-Sim, O arquivo Físico não existe. N-Não, O... |
| 20 | DT_ARQUIVO_PERDIDO | DATE | Y | Último data e hora que foi Alterado o Status do Arquivo Físico |
| 21 | CD_USUARIO_ARQUIVO_PERDIDO | VARCHAR2 | Y | Último Usuário que fez Alteração no Status do Arquivo Físico |
| 22 | CD_LOG_TROCPAC_REVERSAO | NUMBER | Y | Código da reversão. |

---

## DBAMV.TROCPAC_SUBS_PAC
> Log da tabela SUBS_PAC

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SUBSTANCIA | NUMBER | N | Codigo da substancia |
| 2 | CD_PACIENTE | NUMBER | N | Codigo do paciente |
| 3 | DS_AVISO | VARCHAR2 | N | Descrição do aviso |
| 4 | CD_DOCUMENTO_CLINICO | NUMBER | Y | O codigo do documento clinico |
| 5 | CD_LOG_TROCPAC_REVERSAO | NUMBER | Y | Código da reversão. |

---

## DBAMV.TROCPAC_TMP_O_GERASISCO
> Armazena os logs da tabela TMP_O_GERASISCO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PACIENTE | NUMBER | N | Código do paciente |
| 2 | DT_NASCIMENTO | DATE | Y | Data de nascimento |
| 3 | CD_MULTI_EMPRESA | NUMBER | Y | Código da empresa |
| 4 | CD_LOG_TROCPAC_REVERSAO | NUMBER | Y | Código da reversão. |

---

## DBAMV.UNID_INT
> Tabelas de Unidade de Internac?o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_UNID_INT | NUMBER | N | Codigo Sequencial da Unidade de Internac?o |
| 2 | CD_CEN_CUS | VARCHAR2 | Y | Codigo do centro de Custo associado a Unidade |
| 3 | DS_UNID_INT | VARCHAR2 | N | Descric?o de identificac?o da Unidade de Internac?o |
| 4 | DS_LOCALIZACAO | VARCHAR2 | Y | Descric?o da Localizac?o da Unidade |
| 5 | CD_SETOR | NUMBER | N | Codigo do Setor ao qual esta inserida a Unidade |
| 6 | CD_GRU_FAT | NUMBER | Y | Codigo do grupo de Faturamento |
| 7 | SN_CODIGO_DE_BARRAS | VARCHAR2 | N | Identificador - Utiliza codigo de barras ? |
| 8 | SN_ATIVO | VARCHAR2 | N | Identificador - Esta ativa ? |
| 9 | SN_PROG_ALTA | VARCHAR2 | N | Identificador - Utiliza Programac?o de Alta ? |
| 10 | TP_UNID_INT | VARCHAR2 | N | Identifica se a Unidade sera utilizada pelas Unidades de Internac?o ou pelo Setor de Urgencia e E... |
| 11 | SN_HOSPITAL_DIA | VARCHAR2 | N | Identifica se a Unidade de Internac?o e do tipo Hospital Dia. |
| 12 | SN_SEMI_UTI | VARCHAR2 | Y | Identificador - Utilizado pelo faturamento Internac?o SUS |
| 13 | VL_CUSTO_VARIAVEL | NUMBER | Y |  |
| 14 | VL_CUSTO_VAR_ACOMP | NUMBER | Y |  |
| 15 | CD_UNID_INT_INTEGRA | VARCHAR2 | Y | Codigo da unidade de internac?o (de-para) |
| 16 | CD_SEQ_INTEGRA | NUMBER | Y | Codigo sequencial do registro integrado |
| 17 | DT_INTEGRA | DATE | Y | Data em que o registro foi integrado |
| 18 | SN_TRANSF_LEITO_VAGO | VARCHAR2 | Y |  |
| 19 | SN_PERMITE_RN_UTI | VARCHAR2 | Y | Permite rn uti |

---

## DBAMV.UNID_INT_CONTROLE_FORMULA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_UNID_INT | NUMBER | N | Codigo Sequencial da Unidade de Internac?o |
| 2 | CD_FORMULA | NUMBER | N | Codigo da Formula |

---

## DBAMV.UNID_INT_CONTROLE_KANBAN
> Tabela destinada a guardar as configurac?es de tempo do Kanban

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_UNID_INT | NUMBER | Y | Codigo Sequencial da Unidade de Internac?o |
| 2 | VL_COR_VERDE_INI | NUMBER | Y | Valor inicial para identificar a cor verde no Kanban |
| 3 | VL_COR_VERDE_FIM | NUMBER | Y | Valor final para identificar a cor verde no Kanban |
| 4 | VL_COR_AMARELO_INI | NUMBER | Y | Valor inicial para identificar a cor amarela no Kanban |
| 5 | VL_COR_AMARELO_FIM | NUMBER | Y | Valor final para identificar a cor amarela no Kanban |
| 6 | VL_COR_VERMELHA_INI | NUMBER | Y | Valor inicial para identificar a cor vermelha no Kanban |
| 7 | VL_COR_VERMELHA_FIM | NUMBER | Y | Valor final para identificar a cor vermelha no Kanban |
| 8 | CD_AVALIACAO_PADRAO | NUMBER | Y | Codigo da avaliac?o padr?o para controle do grupo assistencial |
