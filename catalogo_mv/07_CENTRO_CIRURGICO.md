# 07 - Centro Cirurgico

> Cirurgias, agendamento cirurgico, anestesia, OPME

## Resumo

- **Tabelas**: 63
- **Owners**: DBAMV

---

## DBAMV.ACHADO_CIRURGICO
> Cadastro dos achados cirurgicos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ACHADO_CIRURGICO | NUMBER | N | Identificador do registro na tabela |
| 2 | DS_ACHADO_CIRURGICO | VARCHAR2 | N | Descric?o do achado cirurgico |

---

## DBAMV.ACHADO_CIRURGICO_AVI_CIR
> Tabela associativa entre dbamv.achado_cirurgico e dbamv.aviso_cirurgia

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AVISO_CIRURGIA | NUMBER | N | Codigo do aviso de cirurgia |
| 2 | CD_ACHADO_CIRURGICO | NUMBER | N | Codigo do achado cirurgico |
| 3 | DS_COMPLEMENTAR | VARCHAR2 | Y | Descric?o complementar do achado cirurgico |
| 4 | CD_DESCRICAO_AVISO_CIRURGIA | NUMBER | N | Codigo da descric?o cirurgica associada ao achado cirurgico |

---

## DBAMV.AGE_CIR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AGE_CIR | NUMBER | N |  |
| 2 | DT_INICIO_AGE_CIR | DATE | N |  |
| 3 | DT_FINAL_AGE_CIR | DATE | N |  |
| 4 | CD_SAL_CIR | NUMBER | N |  |
| 5 | CD_AVISO_CIRURGIA | NUMBER | N |  |
| 6 | CD_EQUIPE_MEDICA | NUMBER | Y |  |
| 7 | VL_TEMPO_CIRURGIA | DATE | Y |  |
| 8 | TP_AGENDAMENTO | VARCHAR2 | N |  |
| 9 | VL_TEMPO_LIMPEZA | DATE | Y |  |
| 10 | CD_UNIDADE_REGIONAL | VARCHAR2 | Y |  |
| 11 | CD_SER_DIS | NUMBER | Y |  |
| 12 | SN_IMPRESSO | VARCHAR2 | N |  |
| 13 | CD_SENHA_AUTORIZACAO | NUMBER | Y | CÓDIGO DE AUTORIZAÇÃO DE SENHA |

---

## DBAMV.AGE_CIR_EQUIPTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AGE_CIR | NUMBER | N |  |
| 2 | CD_APARELHO_EQUIPAMENTO | NUMBER | N |  |

---

## DBAMV.AGE_CIR_LIVRE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AGE_CIR_LIVRE | NUMBER | N |  |
| 2 | DT_INICIO_LIVRE | DATE | N |  |
| 3 | DT_FINAL_LIVRE | DATE | N |  |
| 4 | CD_SAL_CIR | NUMBER | N |  |

---

## DBAMV.APARELHO_CIRURGIA_SUB_GRUPOS
> Tabela para armazenar os equipamentos dos subgrupos da cirurgia.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CIRURGIA_EMPRESA_SUB_GRUPOS | NUMBER | N |  |
| 2 | CD_APARELHO_EQUIPAMENTO | NUMBER | N |  |
| 3 | QT_NECESSARIO | NUMBER | N |  |

---

## DBAMV.AUT_GUIA_OPME_ALCADA
> Tabela para cadastro dos usuarios autorizadores de alcada de OPME

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_USUARIO | VARCHAR2 | N | Código do usuario |
| 2 | DS_EMAIL | VARCHAR2 | Y | Email do usuario |
| 3 | VL_LIM_AUT_GUIA | NUMBER | N | Valor maximo de autorizacao |
| 4 | SN_ATIVO | VARCHAR2 | N | Identifica se Autorizador está ativo |
| 5 | CD_MULTI_EMPRESA | NUMBER | N | Código da empresa |

---

## DBAMV.AVISO_CIRURGIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AVISO_CIRURGIA | NUMBER | N |  |
| 2 | DT_AVISO_CIRURGIA | DATE | N |  |
| 3 | TP_SANGUINEO | VARCHAR2 | Y |  |
| 4 | TP_NATUREZA | VARCHAR2 | N |  |
| 5 | TP_SITUACAO | VARCHAR2 | N | Situac?o do Aviso de Cururgia (A - Em Aviso / R - Realizada / C - Cancelada / G - Agendada / T - ... |
| 6 | NM_PACIENTE | VARCHAR2 | Y |  |
| 7 | NR_TELEFONE_CONTATO | VARCHAR2 | Y |  |
| 8 | TP_SEXO | VARCHAR2 | Y |  |
| 9 | VL_TEMPO_PREVISTO | DATE | Y |  |
| 10 | DT_CANCELAMENTO | DATE | Y |  |
| 11 | DS_MOTIVO_CANCELAMENTO | VARCHAR2 | Y |  |
| 12 | DT_REALIZACAO | DATE | Y |  |
| 13 | VL_TEMPO_DURACAO | DATE | Y |  |
| 14 | DS_RISCO_CIRURGICO | VARCHAR2 | Y |  |
| 15 | DS_ACIDENTES_DURANTE_A_OPERACA | VARCHAR2 | Y |  |
| 16 | CD_PACIENTE | NUMBER | Y |  |
| 17 | CD_ATENDIMENTO | NUMBER | Y |  |
| 18 | CD_CID | VARCHAR2 | Y |  |
| 19 | CD_CID_FINAL | VARCHAR2 | Y |  |
| 20 | CD_TIP_ANEST | NUMBER | Y |  |
| 21 | CD_MOT_CANC | NUMBER | Y |  |
| 22 | CD_EQUIPE_MEDICA | NUMBER | Y |  |
| 23 | CD_SAL_CIR | NUMBER | Y |  |
| 24 | CD_CEN_CIR | NUMBER | N |  |
| 25 | DT_FIM_ANESTESIA | DATE | Y |  |
| 26 | DT_FIM_CIRURGIA | DATE | Y |  |
| 27 | DT_FIM_LIMPEZA | DATE | Y |  |
| 28 | DT_INICIO_ANESTESIA | DATE | Y |  |
| 29 | DT_INICIO_CIRURGIA | DATE | Y |  |
| 30 | DT_INICIO_LIMPEZA | DATE | Y |  |
| 31 | CD_UNID_INT | NUMBER | Y |  |
| 32 | CD_USUARIO | VARCHAR2 | N |  |
| 33 | SN_ANESTESISTA_CC | VARCHAR2 | Y |  |
| 34 | DS_IDADE | VARCHAR2 | Y |  |
| 35 | CD_MOT_CANC_ATRASO | NUMBER | Y |  |
| 36 | DS_ATO_ANESTESICO | VARCHAR2 | Y |  |
| 37 | SN_UTI | VARCHAR2 | Y |  |
| 38 | SN_EXAME | VARCHAR2 | Y |  |
| 39 | VL_IDADE | NUMBER | Y |  |
| 40 | TP_IDADE | VARCHAR2 | Y |  |
| 41 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 42 | DS_OBS_AVISO | VARCHAR2 | Y |  |
| 43 | DT_PREV_INTER | DATE | Y | Data de previsão da cirugia |
| 44 | SN_ALTERADO | VARCHAR2 | N |  |
| 45 | DS_A_SEGUIR | VARCHAR2 | Y |  |
| 46 | CD_USUARIO_CANCEL | VARCHAR2 | Y |  |
| 47 | CD_USUARIO_CONFIRMA | VARCHAR2 | Y |  |
| 48 | DT_AGENDAMENTO | DATE | Y |  |
| 49 | DS_ORTESE_PROTESE | VARCHAR2 | Y |  |
| 50 | DS_CIRURGIA | LONG | Y |  |
| 51 | VL_PESO | NUMBER | Y |  |
| 52 | SN_CEC | VARCHAR2 | N |  |
| 53 | SN_ROBOTICA | VARCHAR2 | N |  |
| 54 | CD_ASA | VARCHAR2 | Y | ASA I   (Paciente saudavel) / ASA II  (Paciente com enfermidade sistemica leve) / ASA III (Pacien... |
| 55 | DT_PREV_ALTA | DATE | Y | Data de previs?o de alta |
| 56 | DT_PREV_ALTA_UTI | DATE | Y | Data de previs?o de alta UTI |
| 57 | TP_TECNICA_UTILIZADA | VARCHAR2 | Y | Tipo de tecnica utilizada na cirurgia - TISS |
| 58 | CD_UNID_INT_AGE | NUMBER | Y | Codigo da Unidade de Internac?o |
| 59 | DT_SAIDA_SAL_CIR | DATE | Y | Data e hora em que o paciente saiu da sala de cirurgia |
| 60 | SN_CONFIRMADO | VARCHAR2 | Y | Indica se a confirmac?o da cirugia foi validada pelo processo implantado em M_CONFCIR pda 159237 |
| 61 | SN_AMBULATORIAL | VARCHAR2 | Y | Indica se a cirurgia e ambulatorial. N?o sera gerada pre-internac?o se a cirurgia for Ambulatorial. |
| 62 | CD_PRESTADOR_PEDIATRA | NUMBER | Y | Pediatra responsavel pela cirurgia obstetrica. |
| 63 | TP_CIRURGIAS | VARCHAR2 | Y | Indica o tipo das cirurgias do aviso: (E)letiva, E(M)ergencia, (U)rgencia. |
| 64 | SN_REVISADO | VARCHAR2 | N | Indica se o aviso de cirurgia ja foi revisado Sim ou Nao. |
| 65 | NM_REVISADO | VARCHAR2 | Y | Armazena o nome do usuario que fez a revisao do aviso de cirurgia |
| 66 | DT_REVISADO | DATE | Y | Data da revisao do aviso de cirurgia |
| 67 | SN_LIBERA_AVISO | VARCHAR2 | N | Indica se o aviso de cirurgia ja podera ser confirmado. |
| 68 | CD_USUARIO_LIBERA | VARCHAR2 | Y | Usuario que liberou confirmac?o de cirurgia. |
| 69 | SN_EMAIL_ENVIADO | VARCHAR2 | Y | Indica se o email foi enviado |
| 70 | DT_CONFIRMACAO | DATE | Y | Data e Hora quem que esta sendo confirmado o aviso de cirurgia pelo usuario |
| 71 | CD_AVISO_CIRURGIA_INTEGRA | VARCHAR2 | Y | Codigo de-para do aviso de cirurgia |
| 72 | CD_SEQ_INTEGRA | NUMBER | Y | Codigo identificador do registro de integrac?o |
| 73 | DT_INTEGRA | DATE | Y | Data do registro da integrac?o |
| 74 | DH_LIBERACAO | DATE | Y | Data e hora que foi feita a liberac?o do aviso de cirurgia |
| 75 | CD_AVISO_CIRURGIA_FILHO | NUMBER | Y | Indica o codigo do aviso de cirurgia filho que estara vinculado a um aviso de cirurgia. |
| 76 | DS_MOTIVO_VINCULO | VARCHAR2 | Y | Motivo do vinculo realizado entre dois avisos de cirurgias. |
| 77 | NR_DDI_TELEFONE_CONTATO | NUMBER | Y | DDI do telefone de contato do paciente |
| 78 | NR_DDD_TELEFONE_CONTATO | NUMBER | Y | DDD do telefone de contato do paciente |
| 79 | SN_ENVIO_SMS | VARCHAR2 | N | Flag para indicar se deve ser enviado sms para o paciente |
| 80 | DS_EMAIL_CONTATO | VARCHAR2 | Y | Email de contato do paciente |
| 81 | CD_TIPO_INTERNACAO | NUMBER | Y | Tipo de internac?o do atendimento |
| 82 | CD_TIPO_ACOMODACAO | NUMBER | Y | Tipo de acomodac?o do leito que sera informado no atendimento |
| 83 | SN_UTILIZA_SANGUE | VARCHAR2 | N | Flag para indicar se o paciente precisara de sangue |
| 84 | SN_UTILIZA_CONGELACAO | VARCHAR2 | N | Flag para indicar se o paciente precisara de Congelac?o |
| 85 | DT_PRE_AGENDAMENTO | DATE | Y |  |
| 86 | NR_CARTEIRA | VARCHAR2 | Y |  |
| 87 | TP_PRIORIDADE | VARCHAR2 | N | indica a prioridade da cirurgia |
| 88 | TP_LIBERADO_INTERNACAO | VARCHAR2 | N | Indica se o aviso está  L - liberado, R - reprovado ou A - aguardando liberação pela equipe de in... |
| 89 | TP_LIBERADO_OPME | VARCHAR2 | Y | Indica se o aviso está  L - liberado, R - reprovado ou A - aguardando liberação pela equipe de opme |
| 90 | CD_MOTIVO_SUSPENSAO | NUMBER | Y | Código do motivo de suspensão dbamv.motivo_suspensao |
| 91 | DS_OBS_MOTIVO_SUSPENSAO | VARCHAR2 | Y | Campo para preenchimento de uma observação para o motivo de suspensão |
| 92 | SN_SUSPENSAO | VARCHAR2 | N | Identificação se está Suspenso |
| 93 | CD_USUARIO_SUSPENSAO | VARCHAR2 | Y | Usuário que suspendeu o registro |
| 94 | DT_HR_SUSPENSAO | DATE | Y | Data e hora da suspensão |
| 95 | CD_USUARIO_RET_SUSPENSAO | VARCHAR2 | Y | Usuário que retirou a suspensão do registro |
| 96 | DT_HR_RET_SUSPENSAO | DATE | Y | Data e hora da retirada da suspensão |
| 97 | DT_PREVISAO_INTERNACAO | DATE | Y | Data de previsão da internação do paciente |
| 98 | SN_SUBSTITUICAO_CIRURGIA | VARCHAR2 | Y | Indica se a cirurgia sera de substituicao ou nao. |
| 99 | CD_MOTIVO_SUBSTITUICAO_CIR | NUMBER | Y | Código do motivo de substituição de cirurgia. |
| 100 | DT_CAD_SUBSTITUICAO | DATE | Y | Data em que o aviso foi cadastrado como substituicao. |
| 101 | CD_USUARIO_CAD_SUBSTITUICAO | VARCHAR2 | Y | Nome do usuário que cadastrou o aviso como substituicao. |
| 102 | TP_LIBERADO_CIRURGIA | VARCHAR2 | N | Indica se o aviso esta  L - liberado, R - reprovado ou A - aguardando liberacao pela equipe de es... |
| 103 | TP_LIBERADO_ESTERILIZACAO | VARCHAR2 | N | Indica se o aviso esta  L - liberado, R - reprovado ou A - aguardando liberacao pela equipe de es... |
| 104 | SN_AUTORIZADO_CONVENIO | VARCHAR2 | N |  |
| 105 | DT_SUGERIDA | DATE | Y | Data sugerida pelo médico no cadastro do pré-agendamento |
| 106 | CD_PRESTADOR_INDICACAO | NUMBER | Y |  |
| 107 | SN_FICHA_ANESTESICA | VARCHAR2 | Y | Indica se foi anexado o documento de ficha anestésica ao aviso de cirurgia. |
| 108 | SN_TERMO_CONSENTIMENTO | VARCHAR2 | Y | Indica se foi anexado o documento de termo de consentimento. |
| 109 | CD_IDENTIDADE_GENERO | NUMBER | Y | Código da identidade de gênero do paciente. |
| 110 | CD_ORIENTACAO_SEXUAL | NUMBER | Y | Código da Orientação Sexual do paciente. |

---

## DBAMV.AVISO_CIRURGIA_PREFERENCIA
> Tabela que guarda as preferências do médico quanto à realização da reserva de sala.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AVISO_CIRURGIA | NUMBER | N | Código do Aviso de Cirurgia ao qual estão vinculadas as preferências |
| 2 | CD_PRAZO_AGENDAMENTO | NUMBER | Y | Código do Prazo preferencial para a qual deverá ser agendada a cirurgia |
| 3 | CD_SAL_CIR | NUMBER | Y | Código da sala preferencial para a realização da cirurgia. |
| 4 | CD_SUB_GRUPO_CIRURGIA | NUMBER | Y | Código do sub-grugo da cirurgia à qual a cirurgia será vinculada |
| 5 | CD_MODALIDADE_CIRURGIA | NUMBER | Y | Código da modalidade da cirurgia. |
| 6 | SN_SEGUNDA | VARCHAR2 | N | Define se a segunda-feira é um dia preferêncial para a cirurgia |
| 7 | HR_INICIO_SEGUNDA | DATE | Y | Horário inicial da cirurgia na segunda-feira |
| 8 | HR_FINAL_SEGUNDA | DATE | Y | Horário final da cirurgia na segunda-feira |
| 9 | SN_TERCA | VARCHAR2 | N | Define se a terça-feira é um dia preferêncial para a cirurgia |
| 10 | HR_INICIO_TERCA | DATE | Y | Horário inicial da cirurgia na terça-feira |
| 11 | HR_FINAL_TERCA | DATE | Y | Horário final da cirurgia na terça-feira |
| 12 | SN_QUARTA | VARCHAR2 | N | Define se na a quarta-feira é um dia preferêncial para a cirurgia |
| 13 | HR_INICIO_QUARTA | DATE | Y | Horário inicial da cirurgia na quarta-feira |
| 14 | HR_FINAL_QUARTA | DATE | Y | Horário final da cirurgia na quarta-feira |
| 15 | SN_QUINTA | VARCHAR2 | N | Define se na a quinta-feira é um dia preferêncial para a cirurgia |
| 16 | HR_INICIO_QUINTA | DATE | Y | Horário inicial da cirurgia na quinta-feira |
| 17 | HR_FINAL_QUINTA | DATE | Y | Horário final da cirurgia na quinta-feira |
| 18 | SN_SEXTA | VARCHAR2 | N | Define se na a sexta-feira é um dia preferêncial para a cirurgia |
| 19 | HR_INICIO_SEXTA | DATE | Y | Horário inicial da cirurgia na sexta-feira |
| 20 | HR_FINAL_SEXTA | DATE | Y | Horário final da cirurgia na sexta-feira |
| 21 | SN_SABADO | VARCHAR2 | N | Define se na a sabado é um dia preferêncial para a cirurgia |
| 22 | HR_INICIO_SABADO | DATE | Y | Horário inicial da cirurgia na sabado |
| 23 | HR_FINAL_SABADO | DATE | Y | Horário final da cirurgia na sabado |
| 24 | SN_DOMINGO | VARCHAR2 | N | Define se na a domingo-feira é um dia preferêncial para a cirurgia |
| 25 | HR_INICIO_DOMINGO | DATE | Y | Horário inicial da cirurgia na domingo-feira |
| 26 | HR_FINAL_DOMINGO | DATE | Y | Horário final da cirurgia na domingo-feira |
| 27 | DS_OBSERVACAO | VARCHAR2 | Y |  |

---

## DBAMV.CANC_CONF_AVI_CIR
> Registros dos cancelamentos de confirmac?o de aviso de cirurgia

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CANC_CONF_AVI_CIR | NUMBER | N | Identificador do registro na tabela |
| 2 | DT_CANC_CONF_AVI_CIR | DATE | N | Data da realizac?o da confirmac?o |
| 3 | DS_MOTIVO_CANCELAMENTO | VARCHAR2 | N | Descric?o do motivo do cancelamento |
| 4 | CD_AVISO_CIRURGIA | NUMBER | N | Codigo do aviso de cirurgia cancelado |
| 5 | CD_USUARIO | VARCHAR2 | N | Codigo do usuario responsavel pelo cancelamento |

---

## DBAMV.CAT_PROD_OPME_ALCADA
> Tabela para cadastro catalogos de produtos opme alcada

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRODUTO | NUMBER | N | Código do produto |
| 2 | CD_FORNECEDOR | NUMBER | N | Código do fornecedor |
| 3 | VL_UNITARIO | NUMBER | N | Valor unitário do produto |
| 4 | DT_VALIDADE | DATE | N | Data de validade do catalogo de produtos |
| 5 | DT_VALIDADE_OPME_ALCADA | DATE | N | Data de Validade do OPME na alçada |
| 6 | CD_UNI_PRO | NUMBER | N | Código da unidade do produto |
| 7 | CD_CONVENIO | NUMBER | N | Código do convênio do paciente |
| 8 | CD_PLANO | NUMBER | N | Código do plano do paciente |
| 9 | CD_REGRA | NUMBER | N | Código da regra do plano |

---

## DBAMV.CIRURGIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CIRURGIA | NUMBER | N |  |
| 2 | DS_CIRURGIA | VARCHAR2 | N |  |
| 3 | TP_CIRURGIA | VARCHAR2 | N |  |
| 4 | CD_PRO_FAT | VARCHAR2 | Y |  |
| 5 | DS_ORIENTACAO | VARCHAR2 | Y |  |
| 6 | DS_PREPARO | VARCHAR2 | Y |  |
| 7 | CD_SIH_SUS | VARCHAR2 | Y | Codigo do Procedimento Hospitalar SUS associado ao mesmo. (N?o utilizado apos 31/12/2007 portaria... |
| 8 | CD_ESPECIALID | NUMBER | Y |  |
| 9 | CD_PRO_FAT_SUS | VARCHAR2 | Y | Codigo do Procedimento Hospitalar SUS associado ao mesmo. (N?o utilizado apos 31/12/2007 portaria... |
| 10 | CD_SSM | VARCHAR2 | Y | Codigo do Procedimento Ambulatorial SUS associado ao mesmo. (N?o utilizado apos portaria 321) |
| 11 | CD_VIA_DE_ACESSO | NUMBER | Y |  |
| 12 | SN_ATIVO | VARCHAR2 | N |  |
| 13 | SN_PADRONIZADO | VARCHAR2 | N |  |
| 14 | DS_MNEMONICO | VARCHAR2 | Y |  |
| 15 | CD_SUB_GRUPO_CIRURGIA | NUMBER | Y |  |
| 16 | NR_HORAS_PADRAO | DATE | Y | Numero de horas padr?o para realizac?o de procedimento. |
| 17 | TP_CLASSIF_PSIH | VARCHAR2 | N | Classificac?o do procedimento para uso em estatisticas do CCIH. |
| 18 | SN_OBSTETRICA | VARCHAR2 | N | Indica se a cirurgia e obstetrica ou n?o. |
| 19 | CD_PROCEDIMENTO_SIA | VARCHAR2 | Y | Procedimento Ambulatorial SUS |
| 20 | CD_PROCEDIMENTO_SIH | VARCHAR2 | Y | Procedimento de Internac?o SUS |
| 21 | SN_APRESENTA_FFCH | VARCHAR2 | Y | Apresenta descric?o da cirurgia no modulo de custos |
| 22 | CD_CIRURGIA_INTEGRA | VARCHAR2 | Y | Codigo da cirurgia (de-para) |
| 23 | CD_SEQ_INTEGRA | VARCHAR2 | Y | Codigo identificador da integrac?o |
| 24 | DT_INTEGRA | DATE | Y | Data integrac?o |
| 25 | SN_OBRIGA_PLANO | VARCHAR2 | Y | Indica se e obrigado a informar o plano no agendamento da cirurgia Sim ou N?o |
| 26 | CD_PORTE_CIRURGIA | NUMBER | Y |  |
| 27 | SN_HEMODINAMICA | VARCHAR2 | N | Indica se a cirurgia realiza o processo de Hemodinâmica |

---

## DBAMV.CIRURGIA_AVISO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AVISO_CIRURGIA | NUMBER | N |  |
| 2 | CD_CIRURGIA | NUMBER | N |  |
| 3 | CD_VIA_DE_ACESSO | NUMBER | Y |  |
| 4 | CD_CONVENIO | NUMBER | Y |  |
| 5 | CD_IMPORTA_REG_FAT | NUMBER | Y |  |
| 6 | CD_IMPORTA_REG_AMB | NUMBER | Y |  |
| 7 | CD_ESPECIALID | NUMBER | Y |  |
| 8 | TP_CONVENIO_ATENDIME | VARCHAR2 | Y |  |
| 9 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 10 | CD_CON_PLA | NUMBER | Y |  |
| 11 | CD_TIP_ACOM | NUMBER | Y |  |
| 12 | DS_CON_PLA | VARCHAR2 | Y |  |
| 13 | SN_PACOTE | VARCHAR2 | Y |  |
| 14 | DS_NPADRONIZADO | VARCHAR2 | Y |  |
| 15 | CD_CIRURGIA_AVISO | NUMBER | N |  |
| 16 | SN_PRINCIPAL | VARCHAR2 | N |  |
| 17 | VL_PERCENTUAL_ACRESC | NUMBER | Y |  |
| 18 | CD_CBOS | VARCHAR2 | Y | Campo de cbo do prestador |
| 19 | TP_NATUREZA | VARCHAR2 | Y | Informa o tipo de contaminac?o das cirurgias Op. |
| 20 | SN_ANTIMICROB_PROFILATICO | VARCHAR2 | N | Indica se houve registro de Antimicrobianos Profilaticos na Cirurgia do Aviso. |
| 21 | CD_SEQ_INTEGRA | NUMBER | Y | Codigo identificador do registro de integrac?o |
| 22 | CD_AVISO_CIRURGIA_INTEGRA | VARCHAR2 | Y | Codigo de-para do aviso de cirurgia |
| 23 | DT_INTEGRA | DATE | Y | Data do registro da integrac?o |
| 24 | CD_DESCRICAO_AVISO_CIRURGIA | NUMBER | Y | Codigo da descric?o cirurgica associada a cirurgia do aviso |
| 25 | DS_LATERALIDADE | VARCHAR2 | Y | Lateralidade do Procedimento Cirurgico. (D) - Direita / (E) - Esquerda / (B) - Bilateral / (N ou ... |
| 26 | SN_REOP | VARCHAR2 | Y | Indicador se a cirurgia é uma reabordagem operatória |
| 27 | CD_NATUREZA_CIRURGIA | NUMBER | Y | Código da natureza cirurgica parametrizável associada a uma cirurgia do aviso |
| 28 | CD_SUB_GRUPO_CIRURGIA | NUMBER | Y |  |
| 29 | CD_GRUPO_CIRURGIA | NUMBER | Y |  |
| 30 | DS_ORIENTACAO | VARCHAR2 | Y |  |
| 31 | DS_PREPARO | VARCHAR2 | Y |  |
| 32 | TP_CIRURGIA | VARCHAR2 | Y |  |
| 33 | CD_PORTE_CIRURGIA | NUMBER | Y |  |
| 34 | NR_HORAS_PADRAO | DATE | Y |  |
| 35 | CD_SENHA_AUTORIZACAO | NUMBER | Y | Código da senha do paciente para a cirurgia |
| 36 | DS_EXTENSAO | VARCHAR2 | Y | Tipo do arquivo anexado |
| 37 | LO_DOCUMENTO_ANEXO_PRODUTO | BLOB | Y | Blob do arquivo anexado |

---

## DBAMV.CIRURGIA_AVISO_AGENDADA
> Tabelas de Cirurgias Pertencentes aos Avisos Cirurgicos.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AVISO_CIRURGIA | NUMBER | N | Codigo do Aviso de Cirurgia. |
| 2 | CD_CIRURGIA | NUMBER | N | Codigo da Cirurgia. |
| 3 | CD_VIA_DE_ACESSO | NUMBER | Y | Codigo da Via de Acesso. |
| 4 | CD_CONVENIO | NUMBER | Y | Codigo do Convenio que devera faturar a Cirurgia. |
| 5 | CD_IMPORTA_REG_FAT | NUMBER | Y | Codigo do Registro de Importac?o para Conta Hospitalar. |
| 6 | CD_IMPORTA_REG_AMB | NUMBER | Y | Codigo do Registro de Importac?o para Conta Ambulatorial. |
| 7 | CD_ESPECIALID | NUMBER | Y | Codigo da Especialidade. |
| 8 | TP_CONVENIO_ATENDIME | VARCHAR2 | Y | Tipo do Convenio: P - Particular, C - Convenio, H - Hospitalar SUS ou A - Ambulatorial SUS. |
| 9 | DS_OBSERVACAO | VARCHAR2 | Y | Observac?o referente a cirurgia. |
| 10 | CD_CON_PLA | NUMBER | Y | Codigo do Plano de Convenio. |
| 11 | CD_TIP_ACOM | NUMBER | Y | Codigo do Tipo de Acomodac?o. |
| 12 | DS_CON_PLA | VARCHAR2 | Y | Descric?o do Plano de Convenio. |
| 13 | SN_PACOTE | VARCHAR2 | Y | Identificador se a Cirurgia e pacote ou n?o. |
| 14 | DS_NPADRONIZADO | VARCHAR2 | Y | Descric?o da cirurgia, se a mesma n?o for padronizada. |
| 15 | CD_CIRURGIA_AVISO | NUMBER | N | Codigo Sequencial do Item do Aviso de Cirurgia. |
| 16 | VL_PERCENTUAL_ACRESC | NUMBER | Y | Percentual de acrescimo. |

---

## DBAMV.CIRURGIA_EMPRESA
> Tabela para armazenar os dados da cirurgia por multi empresa.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CIRURGIA | NUMBER | N | Codigo da cirurgia. |
| 2 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da empresa. |
| 3 | DS_ORIENTACAO | VARCHAR2 | Y | Orientac?o para a cirurgia. |
| 4 | DS_PREPARO | VARCHAR2 | Y | Informac?o sobre o preparo da cirurgia. |
| 5 | NR_HORAS_PADRAO | DATE | Y |  |
| 6 | SN_EXAME_IMAGEM | VARCHAR2 | N | Identifica se a cirurgia é na verdade um exame de imagem |
| 7 | CD_SUB_GRUPO_CIRURGIA | NUMBER | Y |  |
| 8 | CD_PORTE_CIRURGIA | NUMBER | Y |  |

---

## DBAMV.CIRURGIA_EMPRESA_202007130817

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CIRURGIA | NUMBER | N |  |
| 2 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 3 | DS_ORIENTACAO | VARCHAR2 | Y |  |
| 4 | DS_PREPARO | VARCHAR2 | Y |  |
| 5 | NR_HORAS_PADRAO | DATE | Y |  |
| 6 | SN_EXAME_IMAGEM | VARCHAR2 | N |  |
| 7 | CD_SUB_GRUPO_CIRURGIA | NUMBER | Y |  |
| 8 | CD_PORTE_CIRURGIA | NUMBER | Y |  |

---

## DBAMV.CIRURGIA_EMPRESA_202007130959

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CIRURGIA | NUMBER | N |  |
| 2 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 3 | DS_ORIENTACAO | VARCHAR2 | Y |  |
| 4 | DS_PREPARO | VARCHAR2 | Y |  |
| 5 | NR_HORAS_PADRAO | DATE | Y |  |
| 6 | SN_EXAME_IMAGEM | VARCHAR2 | N |  |
| 7 | CD_SUB_GRUPO_CIRURGIA | NUMBER | Y |  |
| 8 | CD_PORTE_CIRURGIA | NUMBER | Y |  |

---

## DBAMV.CIRURGIA_EMPRESA_202007210240

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CIRURGIA | NUMBER | N |  |
| 2 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 3 | DS_ORIENTACAO | VARCHAR2 | Y |  |
| 4 | DS_PREPARO | VARCHAR2 | Y |  |
| 5 | NR_HORAS_PADRAO | DATE | Y |  |
| 6 | SN_EXAME_IMAGEM | VARCHAR2 | N |  |
| 7 | CD_SUB_GRUPO_CIRURGIA | NUMBER | Y |  |
| 8 | CD_PORTE_CIRURGIA | NUMBER | Y |  |

---

## DBAMV.CIRURGIA_EMPRESA_202007211103

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CIRURGIA | NUMBER | N |  |
| 2 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 3 | DS_ORIENTACAO | VARCHAR2 | Y |  |
| 4 | DS_PREPARO | VARCHAR2 | Y |  |
| 5 | NR_HORAS_PADRAO | DATE | Y |  |
| 6 | SN_EXAME_IMAGEM | VARCHAR2 | N |  |
| 7 | CD_SUB_GRUPO_CIRURGIA | NUMBER | Y |  |
| 8 | CD_PORTE_CIRURGIA | NUMBER | Y |  |

---

## DBAMV.CIRURGIA_EMPRESA_202007211121

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CIRURGIA | NUMBER | N |  |
| 2 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 3 | DS_ORIENTACAO | VARCHAR2 | Y |  |
| 4 | DS_PREPARO | VARCHAR2 | Y |  |
| 5 | NR_HORAS_PADRAO | DATE | Y |  |
| 6 | SN_EXAME_IMAGEM | VARCHAR2 | N |  |
| 7 | CD_SUB_GRUPO_CIRURGIA | NUMBER | Y |  |
| 8 | CD_PORTE_CIRURGIA | NUMBER | Y |  |

---

## DBAMV.CIRURGIA_EMPRESA_202007240303

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CIRURGIA | NUMBER | N |  |
| 2 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 3 | DS_ORIENTACAO | VARCHAR2 | Y |  |
| 4 | DS_PREPARO | VARCHAR2 | Y |  |
| 5 | NR_HORAS_PADRAO | DATE | Y |  |
| 6 | SN_EXAME_IMAGEM | VARCHAR2 | N |  |
| 7 | CD_SUB_GRUPO_CIRURGIA | NUMBER | Y |  |
| 8 | CD_PORTE_CIRURGIA | NUMBER | Y |  |

---

## DBAMV.CIRURGIA_EMPRESA_202007280933

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CIRURGIA | NUMBER | N |  |
| 2 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 3 | DS_ORIENTACAO | VARCHAR2 | Y |  |
| 4 | DS_PREPARO | VARCHAR2 | Y |  |
| 5 | NR_HORAS_PADRAO | DATE | Y |  |
| 6 | SN_EXAME_IMAGEM | VARCHAR2 | N |  |
| 7 | CD_SUB_GRUPO_CIRURGIA | NUMBER | Y |  |
| 8 | CD_PORTE_CIRURGIA | NUMBER | Y |  |

---

## DBAMV.CIRURGIA_EMPRESA_SUB_GRUPOS
> Tabela para armazenar os dados dos subgrupos da cirurgia por multi empresa.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CIRURGIA_EMPRESA_SUB_GRUPOS | NUMBER | N |  |
| 2 | CD_CIRURGIA | NUMBER | N | Código da cirurgia. |
| 3 | CD_MULTI_EMPRESA | NUMBER | N | Código da empresa. |
| 4 | DS_ORIENTACAO | VARCHAR2 | Y | Orientação para a cirurgia. |
| 5 | DS_PREPARO | VARCHAR2 | Y | Informação sobre o preparo da cirurgia. |
| 6 | CD_VIA_DE_ACESSO | NUMBER | Y |  |
| 7 | CD_PORTE_CIRURGIA | NUMBER | Y |  |
| 8 | NR_HORAS_PADRAO | DATE | Y |  |

---

## DBAMV.CIRURGIA_EXAME_HEMODINAMICA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CIRURGIA_EXAME_HEMODINAMICA | NUMBER | N | Chave primária da tabela. |
| 2 | CD_CIRURGIA | NUMBER | N | Código de Cirurgia. |
| 3 | CD_CEN_CIR | NUMBER | N | Código do Centro Cirúrgico. |
| 4 | CD_EXA_RX | NUMBER | N | Código do Exame. |
| 5 | CD_SET_EXA | NUMBER | N | Código do Setor Executante. |
| 6 | SN_ATIVO | VARCHAR2 | N | Indica se o exame está ou não ativo. |
| 7 | DH_CADASTRO | DATE | N | Informa qual foi a data de cadastro do exame. |
| 8 | CD_USUARIO_CADASTRO | VARCHAR2 | N | Informa qual foi o usuário que efetivou o cadastro do exame. |

---

## DBAMV.CIRURGIA_FORMULA
> Tabela para configuração das cirurgias dos kits mges.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FORMULA | NUMBER | N | Código da Fórmula. |
| 2 | CD_CIRURGIA | NUMBER | N | Código da cirurgia. |

---

## DBAMV.CIRURGIA_KIT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AVISO_CIRURGIA | NUMBER | N |  |
| 2 | CD_CIRURGIA | NUMBER | N |  |
| 3 | CD_FORMULA | NUMBER | N |  |
| 4 | QT_KIT | NUMBER | N |  |
| 5 | CD_CIRURGIA_AVISO | NUMBER | N |  |

---

## DBAMV.CIRURGIA_MANUAL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CIRURGIA_MANUAL | NUMBER | N |  |
| 2 | CD_ATENDIMENTO | NUMBER | N |  |
| 3 | DT_CIRURGIA | DATE | N |  |
| 4 | CD_CIRURGIA | NUMBER | N |  |
| 5 | OBS_CIRURGIA | VARCHAR2 | Y |  |

---

## DBAMV.CIRURGIA_PATOLOGIA_GES

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CIRURGIA_PATOLOGIA_GES | NUMBER | N |  |
| 2 | CD_CIRURGIA | NUMBER | N |  |
| 3 | CD_ETAPAS_ALERTA_PROTOCOLO | NUMBER | N |  |
| 4 | TP_FAIXA_ETARIA | VARCHAR2 | N |  |
| 5 | NR_DIAS_CONSULTA | NUMBER | Y |  |
| 6 | DS_PERIODICIDADE | VARCHAR2 | Y |  |
| 7 | DS_UNIDADE | VARCHAR2 | Y |  |
| 8 | QT_QUANTIDADE | NUMBER | Y |  |
| 9 | DS_OBSERVACAO | VARCHAR2 | Y |  |

---

## DBAMV.CIRURGIA_PROCEDIMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CIRURGIA | NUMBER | N |  |
| 2 | CD_CIRURGIA_PROCEDIMENTO | NUMBER | N |  |

---

## DBAMV.CIRURGIA_SUB_GRUPOS
> Tabela para cadastro dos sub-grupos das cirurgias.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CIRURGIA_EMPRESA_SUB_GRUPOS | NUMBER | N |  |
| 2 | CD_SUB_GRUPO_CIRURGIA | NUMBER | N |  |

---

## DBAMV.CIRURGIA_TEXTO_PADRAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CIRURGIA_TEXTO_PADRAO | NUMBER | N |  |
| 2 | DS_CIRURGIA_TEXTO_PADRAO | VARCHAR2 | N |  |
| 3 | CD_PRESTADOR | NUMBER | Y |  |
| 4 | DS_TEXTO | LONG | N |  |
| 5 | TP_CAMPOS | VARCHAR2 | N | Indica o tipo do campo da descric?o cirurgica que tera o texto padr?o |

---

## DBAMV.COMPLIC_INTRA_OPERATORIA
> Registro de complicac?es intra-operatorias do aviso de cirurgia

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_COMPLIC_INTRA_OPERATORIA | NUMBER | N |  |
| 2 | CD_AVISO_CIRURGIA | NUMBER | N | Codigo da Complicac?o intra-operatoria |
| 3 | CD_PRESTADOR_CIRURGIAO | NUMBER | Y |  |
| 4 | SN_BRADICARDIA | VARCHAR2 | Y | Informar se houve diminuic?o na frequencia cardiaca |
| 5 | SN_ENFISEMA_SUBCUTANEO | VARCHAR2 | Y | Informar sobre Enfisema subcutaneo |
| 6 | SN_BRONCOASPIRACAO | VARCHAR2 | Y | Informar sobre a ocorrencia de Broncoaspirac?o |
| 7 | SN_EXTRASISTOLE_ATRIAL | VARCHAR2 | Y | Informar sobre a ocorrencia de extrasistole atrial |
| 8 | SN_BRONCOESPASMO | VARCHAR2 | Y | Informar sobre a ocorrencia de broncoespasmo |
| 9 | SN_EXTRASISTOLE_VENT | VARCHAR2 | Y | Informar sobre ocorrencia de extrasistole ventricular |
| 10 | SN_CONVULSAO | VARCHAR2 | Y | Informar sobre a ocorrencia de convuls?o |
| 11 | SN_FALHA_BLOQUEIO | VARCHAR2 | Y | Informar sobre a ocorrencia de falha de bloqueio |
| 12 | SN_DIF_PUNCAO_ESPINHAL | VARCHAR2 | Y | Informar sobre a dif. punc?o espinhal |
| 13 | SN_HIPERTENSAO | VARCHAR2 | Y | Informar sobre a ocorrencia de hipertens?o |
| 14 | SN_HIPOVOLEMIA | VARCHAR2 | Y | Informar sobre a ocorrencia de Hipovolemia |
| 15 | SN_DISTURBIO_COAGULACAO | VARCHAR2 | Y | Informar sobre a ocorrencia de disturbio de coagulac?o |
| 16 | SN_HIPOTENSAO | VARCHAR2 | Y | Informar sobre a ocorrencia de Hipotens?o |
| 17 | SN_PUNC_ACID_DURAMATER | VARCHAR2 | Y | Informac?es sobre a punc?o de duramater |
| 18 | SN_INFARTO_MIOCARDIO | VARCHAR2 | Y | Informar sobre a ocorrencia de infarto ou isquemia do miocoardio |
| 19 | SN_REACAO_ALERGICA | VARCHAR2 | Y | Informar sobre a ocorrencia de reac?o alergica |
| 20 | SN_OBITO | VARCHAR2 | Y | Informar se ocorreu obito com o paciente |
| 21 | SN_TAQUIARRITMIAS | VARCHAR2 | Y | Informar sobre a ocorrencia de taquiarritmias |
| 22 | SN_PCR | VARCHAR2 | Y | Informar sobre a ocorrencia de PCR |
| 23 | SN_VIA_AREA_DIFICIL | VARCHAR2 | Y | Informar sobre a situac?o de dificuldade das vias aereas |
| 24 | SN_PNEUMOTORAX | VARCHAR2 | Y | Informar sobre a ocorrencia de Pneumotorax |
| 25 | DS_OUTRAS | VARCHAR2 | Y | Informar sobre a ocorrencia de outras complicac?es |
| 26 | DS_CONDUTA | VARCHAR2 | Y | Informar sobre a conduta adotada |

---

## DBAMV.CONF_FLUXO_GUIA_OPME
> controle da CONF_FLUXO_GUIA_OPME

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 2 | SN_FLUXO_AR | VARCHAR2 | Y | Atribuído automaticamente quando a guia foi criada no agendamento ou na revisão da cirurgia |
| 3 | SN_FLUXO_RE | VARCHAR2 | Y | Atribuído automaticamente quando for efetuada a liberação na revisão da cirurgia |
| 4 | SN_FLUXO_DR | VARCHAR2 | Y | Atribuído manualmente na tela de Manutenção de Guias indicando que a mesma deverá ser revisada |
| 5 | SN_FLUXO_PR | VARCHAR2 | Y | Atribuído automaticamente caso o total de valorização dos OPME nas guias de aviso exceder o limit... |
| 6 | SN_FLUXO_RN | VARCHAR2 | Y | Atribuído automaticamente na Alçada de Autorizações ao marcar Renegociar |
| 7 | SN_FLUXO_CA | VARCHAR2 | Y | Atribuído automaticamente na Alçada de Autorizações ao marcar Cancelada |
| 8 | SN_FLUXO_EC | VARCHAR2 | Y | Atribuído automaticamente na Alçada de Autorizações ao marcar Autorizada |
| 9 | SN_FLUXO_CO | VARCHAR2 | Y | Atribuído automaticamente pelo fechamento da cotação pelo Compras com a criação da Ordem de Compra |
| 10 | SN_FLUXO_AU | VARCHAR2 | Y | Atribuído automaticamente quando a Ordem de Compra for confirmada |

---

## DBAMV.CONF_LIMITE_OPME_OC
> Limite de valor opme por procedimento cirúrgico

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONF_LIMITE_OPME_OC | NUMBER | N | Primary key. |
| 2 | CD_CONVENIO | NUMBER | Y | código do Convênio |
| 3 | CD_CON_PLA | NUMBER | Y | Código do Plano |
| 4 | CD_REGRA | NUMBER | Y | Código da Regra |
| 5 | CD_CIRURGIA | NUMBER | Y | Código da Cirúrgia. |
| 6 | CD_PRO_FAT | VARCHAR2 | Y | Código do Procedimento. |
| 7 | VL_LIMITE_OPME | NUMBER | Y | Limite de Valor OPME |

---

## DBAMV.EQUIPAMENTO_RESERVA_SAL_CIR
> Tabela que armazena os possiveis equipamentos ligados a reserva de sala de cirurgia.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_RESERVA_SAL_CIR | NUMBER | N | Codigo do equipamento pertencente a reserva da sala de cirurgia. |
| 2 | CD_APARELHO_EQUIPAMENTO | NUMBER | N |  |
| 3 | QT_RESERVA | NUMBER | N | Quantidade do Equipamento a ser reservado. |

---

## DBAMV.FICHA_PRE_ANESTESICA
> Cadastro da Ficha Pre-anestesica do Centro Cirurgico

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FICHA_PRE_ANESTESICA | NUMBER | N | Codigo da Ficha Pre-anestesica |
| 2 | DT_FICHA | DATE | N |  |
| 3 | DT_VALIDADE | DATE | N |  |
| 4 | SN_APTO | VARCHAR2 | N |  |
| 5 | CD_PACIENTE | NUMBER | Y | Codigo do Paciente da Ficha |
| 6 | NR_ALTURA | NUMBER | Y | Altura do paciente |
| 7 | QT_PESO | NUMBER | Y | Peso do paciente |
| 8 | CD_AVISO_CIRURGIA | NUMBER | Y | Codigo de Atendimento do Aviso de Cirurgia do Paciente |
| 9 | DS_INDICACAO_CIRURGICA | VARCHAR2 | Y | Informac?es sobre a indicac?o cirurgica |
| 10 | VL_PRESSAO_ARTERIAL | VARCHAR2 | Y | Valor da Press?o Arterial do paciente |
| 11 | VL_FREQUENCIA_RESPIRATORIA | VARCHAR2 | Y |  |
| 12 | VL_GOLDMAN | VARCHAR2 | Y | Valor do indice cardiaco de Goldman |
| 13 | CD_ASA | VARCHAR2 | Y | Codigo da classificac?o ASA - American Standard Association |
| 14 | VL_PULSO | VARCHAR2 | Y | Valor do pulso do Paciente |
| 15 | VL_TEMPERATURA_AXILAR | VARCHAR2 | Y | Valor da temperatura axilar |
| 16 | DS_ANESTESIAS_ANTERIORES | VARCHAR2 | Y | Descric?o das anestesias anteriores do paciente |
| 17 | DS_OBSERVACAO | VARCHAR2 | Y | Observac?es sobre a ficha do paciente |
| 18 | SN_ALERGIA_MEDICAMENTO | VARCHAR2 | Y | Indica se o paciente e alergico ou n?o a Medicamentos |
| 19 | DS_ALERGIA_MEDICAMENTOS | VARCHAR2 | Y | Se o paciente for alergico a medicamentos, descrever quais |
| 20 | SN_RINITE_ALERGICA | VARCHAR2 | Y | Indica se o paciente possui ou n?o Rinite alergica |
| 21 | SN_SINUSITE | VARCHAR2 | Y | Indica se o paciente sofre ou n?o de sinusite |
| 22 | SN_TABAGISMO | VARCHAR2 | Y | Informa se o paciente fuma |
| 23 | VL_FREQUENCIA_TABAGISMO | VARCHAR2 | Y | Frequencia em que o paciente faz uso do tabaco. |
| 24 | SN_ETILISMO | VARCHAR2 | Y | Indica se o paciente consome bebida alcoolica |
| 25 | VL_FREQUENCIA_ETILISMO | VARCHAR2 | Y | Informa a periodicidade com que o paciente ingere bebida alcoolica |
| 26 | SN_USA_DROGAS | VARCHAR2 | Y | Indica se o paciente e usuario de drogas |
| 27 | DS_DROGAS | VARCHAR2 | Y | Descric?o de drogas utilizadas pelo paciente |
| 28 | SN_MEDICAMENTOS | VARCHAR2 | Y | Indica se o Paciente esta utilizando medicamentos |
| 29 | DS_MEDICAMENTOS | VARCHAR2 | Y | Descric?o dos medicamentos em uso pelo paciente |
| 30 | SN_TRANSFUSAO_SAGUINEA | VARCHAR2 | Y | Indica se o paciente recebeu transfus?o sanguinea |
| 31 | DS_TRANSFUSAO_SAGUINEA | VARCHAR2 | Y | Informa quando  paciente realizou a transfus?o sanguinea |
| 32 | SN_HEMOPATIAS | VARCHAR2 | Y | Indica se o paciente possui ou n?o alguma Hemopatia |
| 33 | DS_HEMOPATIAS | VARCHAR2 | Y | Descreve hemopatias que o paciente e portador |
| 34 | SN_HEPATITE | VARCHAR2 | Y | Indica se o paciente ja contraiu hepatite |
| 35 | DS_HEPATITE | VARCHAR2 | Y | Descreve os tipos de hepatite que o paciente ja contraiu |
| 36 | SN_DIABETES | VARCHAR2 | Y | Indica se o paciente e portador de Diabetes |
| 37 | SN_ENFISEMA | VARCHAR2 | Y | Indica se o paciente possui diagnosico de Enfisema Pulmonar |
| 38 | SN_ENDOCRINOPATIAS | VARCHAR2 | Y | Indica se o paciente possui endocrinopatias |
| 39 | DS_ENDOCRINOPATIAS | VARCHAR2 | Y | Descreve endocrinopatias que o paciente possui |
| 40 | SN_ASMA | VARCHAR2 | Y | Indica se o paciente sofre ou n?o de asma |
| 41 | DS_CRISE_ASMA | VARCHAR2 | Y | Informa quando foi a ultima crise de asma do paciente |
| 42 | SN_EDEMA | VARCHAR2 | Y | Indica se o paciente possui edemas |
| 43 | DS_LOCAL_EDEMA | VARCHAR2 | Y | Parte do corpo onde o paciente possui edema |
| 44 | SN_CARDIOPATIA | VARCHAR2 | Y | Indica se o paciente possui alguma cardiopatia |
| 45 | DS_CARDIOPATIA | VARCHAR2 | Y | Descreve cardiopatias do paceinte |
| 46 | SN_GRAVIDEZ | VARCHAR2 | Y | Indica se a paciente esta ou n?o gravida |
| 47 | DT_ULT_MENSTRUACAO | DATE | Y | Data da ultima menstruac?o da paciente |
| 48 | SN_HIPERTENSAO_ARTERIAL | VARCHAR2 | Y | Indica se o paciente e portador de Hipertens?o arterial |
| 49 | SN_ALTERACAO_RENAL | VARCHAR2 | Y | Indica se o paciente possui alguma alterac?o renal |
| 50 | DS_ALTERACAO_RENAL | VARCHAR2 | Y | Descric?o de alterac?es renais do paciente |
| 51 | SN_ALTERACAO_DIGESTIVA | VARCHAR2 | Y | Informa se o paciente possui alterac?es digestivas |
| 52 | DS_ALTERACAO_DIGESTIVA | VARCHAR2 | Y | Descreve alterac?es digestivas do pacienete |
| 53 | SN_ALTERACAO_GENITAL | VARCHAR2 | Y | Indica se o paciente possui alguma alterac?o genital |
| 54 | DS_ALTERACAO_GENITAL | VARCHAR2 | Y | Descreve alterac?es genitais do paciente |
| 55 | DS_OUTRAS_DOENCAS | VARCHAR2 | Y | Descreve outras doencas que o paciente e portador |
| 56 | TP_PROTESE_DENTARIA | VARCHAR2 | Y | Indica se o paciente usa protese dentaria |
| 57 | TP_MALLAMPATI | VARCHAR2 | Y | Classificac?o Mallampati - mede a dificuldade de intubac?o do paciente |
| 58 | TP_ACESSO_VENOSO | VARCHAR2 | Y |  |
| 59 | DS_CABECA_PESCOCO | VARCHAR2 | Y | Informac?es do paciente sobre cabeca e pescoco |
| 60 | DS_ESTADO_GERAL | VARCHAR2 | Y | Descric?o do estado geral do paciente |
| 61 | DS_APARELHO_CARDIO_VASCULAR | VARCHAR2 | Y | Informac?o sobre o Aparelho Cardio Vascular do Paciente (ACV) |
| 62 | DS_APARELHO_RESPIRATORIO | VARCHAR2 | Y | Informac?es sobre o aparelho respiratorio do paciente |
| 63 | DS_ELETROCARDIOGRAMA | VARCHAR2 | Y | Informac?es sobre eletrocardiograma do paciente (ECG) |
| 64 | DS_RX_TORAX | VARCHAR2 | Y | Informac?es sobre Radiografia do torax do paciente |
| 65 | DS_OUTROS_EXAMES | VARCHAR2 | Y | Informac?es sobre outros exames do paciente |
| 66 | VL_HEMOGLOBINA | NUMBER | Y | Nivel de hemoglobina no sangue do paciente (Hb) |
| 67 | VL_TTPA | NUMBER | Y | Valor do Tempo de Tromboplastina Parcial Ativado (TTPA) |
| 68 | VL_HEMATOCRITO | NUMBER | Y | Nivel de Hematocritos no paciente (Ht) |
| 69 | VL_PLAQUETAS | NUMBER | Y |  |
| 70 | VL_TEMPO_PROTROMBINA | NUMBER | Y | Tempo de Protrombina (TP) no sangue do paciente |
| 71 | VL_POTASSIO | NUMBER | Y | Nivel de Potassio do paciente |
| 72 | VL_AP | NUMBER | Y | Informar o valor de AP |
| 73 | VL_GLICEMIA | NUMBER | Y | Valor de Glicemia do paciente |
| 74 | VL_RNI | NUMBER | Y | Valor da relac?o normalizada internaciona |
| 75 | VL_UREIA | NUMBER | Y | Valor da taxa de ureia presente no sangue do paciente |
| 76 | VL_CREATININA | NUMBER | Y | Valor da taxa de Creatinina presente no sangue do paciente |
| 77 | VL_SODIO | NUMBER | Y | Valor da taxa de Sodio presente no sangue do paciente |
| 78 | VL_CALCIO | NUMBER | Y | Valor da taxa de Calcio presente no sangue do paciente |
| 79 | VL_MAGNESIO | NUMBER | Y | Valor da taxa de Magnesio presente no sangue do paciente |
| 80 | DS_INTERCORRENCIAS | VARCHAR2 | Y | Descreve intercorrencias ligadas ao paciente |
| 81 | CD_PRESTADOR_ANEST | NUMBER | Y | Codigo do Anestesiologista responsavel pela criac?o da Ficha |
| 82 | DS_GRAVIDEZ | VARCHAR2 | Y | Informac?es sobre a gravidez |

---

## DBAMV.FSCC_CONFIG_WORKFLOW_GUIAS
> Tabela de configurac?o do workflow das guias do Centro Cirurgico

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONVENIO | NUMBER | N |  |
| 2 | SN_ATIVO | VARCHAR2 | Y | Indica se o hospital ira utilizar o workflow para o convenio |
| 3 | TP_PROCESSO_GUIAS | VARCHAR2 | N |  |
| 4 | VL_VERDE_FIM | NUMBER | Y | Valor final em horas para identificar a cor verde na SLA de guias |
| 5 | VL_AMARELO_FIM | NUMBER | Y | Valor final em horas para identificar a cor amarela na SLA de guias |
| 6 | VL_VERMELHA_FIM | NUMBER | Y | Valor final em horas para identificar a cor vermelha na SLA de guias |
| 7 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da empresa |
| 8 | VL_AMARELO_INICIO | NUMBER | Y | Valor inicial para identificar a cor amarela na SLA de guias |
| 9 | TP_UNIDADE_TEMPO_AMARELO | VARCHAR2 | Y | Unidade de tempo para o SLA Amarelo (D = Dias, H = Horas, M = Minutos) |
| 10 | VL_VERMELHO_INICIO | NUMBER | Y | Valor final para identificar a cor vermelha na SLA de guias |
| 11 | TP_UNIDADE_TEMPO_VERMELHO | VARCHAR2 | Y | Unidade de tempo para o SLA Vermelho (D = Dias, H = Horas, M = Minutos) |

---

## DBAMV.HR_SAL_CIR
> Tabela de Horarios da Sala de Cirurgia.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_HR_SAL_CIR | NUMBER | N | Codigo do Registro de Horario da Sala de Cirurgia. |
| 2 | TP_DIA_SEMANA | NUMBER | N | Dia da Semana referente ao horario. |
| 3 | HR_INICIAL | DATE | N | Horario inicial de funcionamento. |
| 4 | HR_FINAL | DATE | N | Horario final de funcionamento. |
| 5 | CD_SAL_CIR | NUMBER | N | Codigo da Sala de Cirurgia. |
| 6 | DT_VIGENCIA_INI | DATE | Y | Data inicial da vigencia. |
| 7 | DT_VIGENCIA_FIM | DATE | Y | Data Final da vigencia. |

---

## DBAMV.MODALIDADE_CIRURGIA
> Tabela que guarda as modalidades de cirurgias.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MODALIDADE_CIRURGIA | NUMBER | N | PK da tabela. |
| 2 | DS_MODALIDADE_CIRURGIA | VARCHAR2 | N | Descrição da modalidade de cirurgia. |

---

## DBAMV.NATUREZA_CIRURGIA
> Tabela naturezas da cirurgia.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_NATUREZA_CIRURGIA | NUMBER | N | Chave da tabela. |
| 2 | DS_NATUREZA_CIRURGIA | VARCHAR2 | N | Descrição da natureza. |
| 3 | SN_ATIVO | VARCHAR2 | N | Indica se a natureza está ativa. |
| 4 | CD_MULTI_EMPRESA | NUMBER | N | Código da empresa correspondente. |

---

## DBAMV.OPMENEXO_BASE
> tabela pertencente a estrutura do XML Bionexo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ID | NUMBER | N | campo pertencente a tabela BASE referente a estrutura do XML Bionexo |
| 2 | CD_ID_PAI | NUMBER | N |  |
| 3 | CD_ID_MENSAGEM_ORIGEM | NUMBER | Y | campo pertencente a tabela BASE referente a estrutura do XML Bionexo |

---

## DBAMV.OPMENEXO_CAMPO_EXTRA
> tabela pertencente a estrutura do XML Bionexo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ID | NUMBER | N | campo pertencente a tabela CAMPO_EXTRA referente a estrutura do XML Bionexo |
| 2 | CD_ID_PAI | NUMBER | N | campo pertencente a tabela CAMPO_EXTRA referente a estrutura do XML Bionexo |
| 3 | DS_NOME | VARCHAR2 | Y | campo pertencente a tabela CAMPO_EXTRA referente a estrutura do XML Bionexo |
| 4 | DS_VALOR | VARCHAR2 | Y | campo pertencente a tabela CAMPO_EXTRA referente a estrutura do XML Bionexo |

---

## DBAMV.OPMENEXO_CODPROCEDIMENTO
> tabela pertencente a estrutura do XML Bionexo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ID | NUMBER | N | campo pertencente a tabela CODPROCEDIMENTO referente a estrutura do XML Bionexo |
| 2 | CD_ID_PAI | NUMBER | N | campo pertencente a tabela CODPROCEDIMENTO referente a estrutura do XML Bionexo |
| 3 | DS_CD_PROCEDIMENTO | VARCHAR2 | Y | campo pertencente a tabela CODPROCEDIMENTO referente a estrutura do XML Bionexo |

---

## DBAMV.OPMENEXO_FORNECEDOR
> tabela pertencente a estrutura do XML Bionexo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ID | NUMBER | N | campo pertencente a tabela FORNECEDOR referente a estrutura do XML Bionexo |
| 2 | CD_ID_PAI | NUMBER | N | campo pertencente a tabela FORNECEDOR referente a estrutura do XML Bionexo |
| 3 | DS_NM_FANTASIA | VARCHAR2 | Y | campo pertencente a tabela FORNECEDOR referente a estrutura do XML Bionexo |
| 4 | DS_RAZAO_SOCIAL | VARCHAR2 | Y | campo pertencente a tabela FORNECEDOR referente a estrutura do XML Bionexo |
| 5 | DS_CNPJ | VARCHAR2 | Y | campo pertencente a tabela FORNECEDOR referente a estrutura do XML Bionexo |
| 6 | DS_FATURAMENTO_MINIMO | VARCHAR2 | Y | campo pertencente a tabela FORNECEDOR referente a estrutura do XML Bionexo |
| 7 | DS_PRAZO_ENTREGA | VARCHAR2 | Y | campo pertencente a tabela FORNECEDOR referente a estrutura do XML Bionexo |
| 8 | DS_VALIDADE_PROPOSTA | VARCHAR2 | Y | campo pertencente a tabela FORNECEDOR referente a estrutura do XML Bionexo |
| 9 | DS_FRETE | VARCHAR2 | Y | campo pertencente a tabela FORNECEDOR referente a estrutura do XML Bionexo |

---

## DBAMV.OPMENEXO_ITEM
> tabela pertencente a estrutura do XML Bionexo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ID | NUMBER | N | campo pertencente a tabela ITEM referente a estrutura do XML Bionexo |
| 2 | CD_ID_PAI | NUMBER | N | campo pertencente a tabela ITEM referente a estrutura do XML Bionexo |
| 3 | DS_MARCA | VARCHAR2 | Y | campo pertencente a tabela ITEM referente a estrutura do XML Bionexo |
| 4 | DS_CD_PRODUTO | VARCHAR2 | Y | campo pertencente a tabela ITEM referente a estrutura do XML Bionexo |
| 5 | DS_QUANTIDADE | VARCHAR2 | Y | campo pertencente a tabela ITEM referente a estrutura do XML Bionexo |
| 6 | DS_CNPJ | VARCHAR2 | Y | campo pertencente a tabela ITEM referente a estrutura do XML Bionexo |
| 7 | DS_FABRICANTE | VARCHAR2 | Y | campo pertencente a tabela ITEM referente a estrutura do XML Bionexo |
| 8 | DS_EMBALAGEM | VARCHAR2 | Y | campo pertencente a tabela ITEM referente a estrutura do XML Bionexo |
| 9 | DS_PRECO_UNITARIO | VARCHAR2 | Y | campo pertencente a tabela ITEM referente a estrutura do XML Bionexo |
| 10 | DS_PRECO_TOTAL | VARCHAR2 | Y | campo pertencente a tabela ITEM referente a estrutura do XML Bionexo |
| 11 | DS_COMENTARIO | VARCHAR2 | Y | campo pertencente a tabela ITEM referente a estrutura do XML Bionexo |

---

## DBAMV.OPMENEXO_ITEM_CAMPO_EXTRA
> tabela pertencente a estrutura do XML Bionexo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ID | NUMBER | N | campo pertencente a tabela ITEM_CAMPO_EXTRA referente a estrutura do XML Bionexo |
| 2 | CD_ID_PAI | NUMBER | N | campo pertencente a tabela ITEM_CAMPO_EXTRA referente a estrutura do XML Bionexo |
| 3 | DS_NOME | VARCHAR2 | Y | campo pertencente a tabela ITEM_CAMPO_EXTRA referente a estrutura do XML Bionexo |
| 4 | DS_VALOR | VARCHAR2 | Y | campo pertencente a tabela ITEM_CAMPO_EXTRA referente a estrutura do XML Bionexo |

---

## DBAMV.OPMENEXO_ITEM_LOTE
> tabela pertencente a estrutura do XML Bionexo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ID | NUMBER | N | campo pertencente a tabela ITEM_LOTE referente a estrutura do XML Bionexo |
| 2 | CD_ID_PAI | NUMBER | N | campo pertencente a tabela ITEM_LOTE referente a estrutura do XML Bionexo |
| 3 | DS_LOTE | VARCHAR2 | Y | campo pertencente a tabela ITEM_LOTE referente a estrutura do XML Bionexo |

---

## DBAMV.OPMENEXO_ITEM_REQUISICAO
> tabela pertencente a estrutura do XML Bionexo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ID | NUMBER | N | campo pertencente a tabela ITEM_REQUISICAO referente a estrutura do XML Bionexo |
| 2 | CD_ID_PAI | NUMBER | N | campo pertencente a tabela ITEM_REQUISICAO referente a estrutura do XML Bionexo |
| 3 | DS_CD_PRODUTO | VARCHAR2 | Y | campo pertencente a tabela ITEM_REQUISICAO referente a estrutura do XML Bionexo |
| 4 | DS_QUANTIDADE | VARCHAR2 | Y | campo pertencente a tabela ITEM_REQUISICAO referente a estrutura do XML Bionexo |

---

## DBAMV.OPMENEXO_IT_REQUIS_CAMPO_EXTRA
> tabela pertencente a estrutura do XML Bionexo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ID | NUMBER | N | campo pertencente a tabela IT_REQUIS_CAMPO_EXTRA referente a estrutura do XML Bionexo |
| 2 | CD_ID_PAI | NUMBER | N | campo pertencente a tabela IT_REQUIS_CAMPO_EXTRA referente a estrutura do XML Bionexo |
| 3 | DS_NOME | VARCHAR2 | Y | campo pertencente a tabela IT_REQUIS_CAMPO_EXTRA referente a estrutura do XML Bionexo |
| 4 | DS_VALOR | VARCHAR2 | Y | campo pertencente a tabela IT_REQUIS_CAMPO_EXTRA referente a estrutura do XML Bionexo |

---

## DBAMV.OPMENEXO_LOTE
> tabela pertencente a estrutura do XML Bionexo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ID | NUMBER | N | campo pertencente a tabela LOTE referente a estrutura do XML Bionexo |
| 2 | CD_ID_PAI | NUMBER | N | campo pertencente a tabela LOTE referente a estrutura do XML Bionexo |
| 3 | DS_LOTE | VARCHAR2 | Y | campo pertencente a tabela LOTE referente a estrutura do XML Bionexo |

---

## DBAMV.OPMENEXO_PEDIDO
> tabela pertencente a estrutura do XML Bionexo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ID | NUMBER | N | campo pertencente a tabela PEDIDO referente a estrutura do XML Bionexo |
| 2 | CD_ID_PAI | NUMBER | N | campo pertencente a tabela PEDIDO referente a estrutura do XML Bionexo |
| 3 | DS_REQUISICAO | VARCHAR2 | Y | campo pertencente a tabela PEDIDO referente a estrutura do XML Bionexo |
| 4 | DS_TITULOPDC | VARCHAR2 | Y | campo pertencente a tabela PEDIDO referente a estrutura do XML Bionexo |
| 5 | DS_CONTATO | VARCHAR2 | Y | campo pertencente a tabela PEDIDO referente a estrutura do XML Bionexo |
| 6 | DS_ID_FORMA_PAGAMENTO | VARCHAR2 | Y | campo pertencente a tabela PEDIDO referente a estrutura do XML Bionexo |
| 7 | DS_DT_VENCIMENTO | VARCHAR2 | Y | campo pertencente a tabela PEDIDO referente a estrutura do XML Bionexo |
| 8 | DS_HORA_VENCIMENTO | VARCHAR2 | Y | campo pertencente a tabela PEDIDO referente a estrutura do XML Bionexo |
| 9 | DS_MOEDA | VARCHAR2 | Y | campo pertencente a tabela PEDIDO referente a estrutura do XML Bionexo |
| 10 | DS_OBSERVACAO | VARCHAR2 | Y | campo pertencente a tabela PEDIDO referente a estrutura do XML Bionexo |
| 11 | DS_TERMOS_CONDICOES | VARCHAR2 | Y | campo pertencente a tabela PEDIDO referente a estrutura do XML Bionexo |
| 12 | DS_DT_PROCEDIMENTO | VARCHAR2 | Y | campo pertencente a tabela PEDIDO referente a estrutura do XML Bionexo |
| 13 | DS_HORA_PROCEDIMENTO | VARCHAR2 | Y | campo pertencente a tabela PEDIDO referente a estrutura do XML Bionexo |
| 14 | DS_PACIENTE | VARCHAR2 | Y | campo pertencente a tabela PEDIDO referente a estrutura do XML Bionexo |
| 15 | DS_MATRICULA | VARCHAR2 | Y | campo pertencente a tabela PEDIDO referente a estrutura do XML Bionexo |
| 16 | DS_MEDICO | VARCHAR2 | Y | campo pertencente a tabela PEDIDO referente a estrutura do XML Bionexo |
| 17 | DS_CRM | VARCHAR2 | Y | campo pertencente a tabela PEDIDO referente a estrutura do XML Bionexo |
| 18 | DS_CONVENIO | VARCHAR2 | Y | campo pertencente a tabela PEDIDO referente a estrutura do XML Bionexo |
| 19 | DS_CNPJ_CONVENIO | VARCHAR2 | Y | campo pertencente a tabela PEDIDO referente a estrutura do XML Bionexo |
| 20 | DS_LAYOUT | VARCHAR2 | Y | campo pertencente a tabela PEDIDO referente a estrutura do XML Bionexo |

---

## DBAMV.OPMENEXO_RESPOSTAS
> tabela pertencente a estrutura do XML Bionexo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ID | NUMBER | N | campo pertencente a tabela RESPOSTAS referente a estrutura do XML Bionexo |
| 2 | CD_ID_PAI | NUMBER | N | campo pertencente a tabela RESPOSTAS referente a estrutura do XML Bionexo |
| 3 | DS_REQUISICAO | VARCHAR2 | Y | campo pertencente a tabela RESPOSTAS referente a estrutura do XML Bionexo |
| 4 | DS_DT_VENCIMENTO | VARCHAR2 | Y | campo pertencente a tabela RESPOSTAS referente a estrutura do XML Bionexo |
| 5 | DS_HORA_VENCIMENTO | VARCHAR2 | Y | campo pertencente a tabela RESPOSTAS referente a estrutura do XML Bionexo |
| 6 | DS_DT_PROCEDIMENTO | VARCHAR2 | Y | campo pertencente a tabela RESPOSTAS referente a estrutura do XML Bionexo |
| 7 | DS_HORA_PROCEDIMENTO | VARCHAR2 | Y | campo pertencente a tabela RESPOSTAS referente a estrutura do XML Bionexo |
| 8 | DS_PACIENTE | VARCHAR2 | Y | campo pertencente a tabela RESPOSTAS referente a estrutura do XML Bionexo |
| 9 | DS_MATRICULA | VARCHAR2 | Y | campo pertencente a tabela RESPOSTAS referente a estrutura do XML Bionexo |
| 10 | DS_MEDICO | VARCHAR2 | Y | campo pertencente a tabela RESPOSTAS referente a estrutura do XML Bionexo |
| 11 | DS_CRM | VARCHAR2 | Y | campo pertencente a tabela RESPOSTAS referente a estrutura do XML Bionexo |
| 12 | DS_CNPJ_CONVENIO | VARCHAR2 | Y | campo pertencente a tabela RESPOSTAS referente a estrutura do XML Bionexo |
| 13 | DS_LAYOUT | VARCHAR2 | Y | campo pertencente a tabela RESPOSTAS referente a estrutura do XML Bionexo |

---

## DBAMV.OPMENEXO_RESPOSTAS_CAMPO_EXTRA
> tabela pertencente a estrutura do XML Bionexo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ID | NUMBER | N | campo pertencente a tabela RESPOSTAS_CAMPO_EXTRA referente a estrutura do XML Bionexo |
| 2 | CD_ID_PAI | NUMBER | N | campo pertencente a tabela RESPOSTAS_CAMPO_EXTRA referente a estrutura do XML Bionexo |
| 3 | DS_NOME | VARCHAR2 | Y | campo pertencente a tabela RESPOSTAS_CAMPO_EXTRA referente a estrutura do XML Bionexo |
| 4 | DS_VALOR | VARCHAR2 | Y | campo pertencente a tabela RESPOSTAS_CAMPO_EXTRA referente a estrutura do XML Bionexo |

---

## DBAMV.OPMENEXO_RESP_COD_PROCEDIMENTO
> tabela pertencente a estrutura do XML Bionexo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ID | NUMBER | N | campo pertencente a tabela RESPOSTAS_CODPROCEDIMENTO referente a estrutura do XML Bionexo |
| 2 | CD_ID_PAI | NUMBER | N | campo pertencente a tabela RESPOSTAS_CODPROCEDIMENTO referente a estrutura do XML Bionexo |
| 3 | DS_CD_PROCEDIMENTO | VARCHAR2 | Y | campo pertencente a tabela RESPOSTAS_CODPROCEDIMENTO referente a estrutura do XML Bionexo |

---

## DBAMV.PAPEL_CENTRO_CIRURGICO
> Tabela de do papel representado pelo usuário no Centro Cirúrgico.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PAPEL_CENTRO_CIRURGICO | NUMBER | N | Chave da tabela. |
| 2 | DS_PAPEL_CENTRO_CIRURGICO | VARCHAR2 | N | Descrição do papel . |
| 3 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 4 | SN_CRIAR_PRE_AGENDAMENTO | VARCHAR2 | N | Se o papel tem permissão para criar pré-agendamento. |
| 5 | SN_ALTERAR_PRE_AGENDAMENTO | VARCHAR2 | N | Se o papel tem permissão de alterar pré-agendamento. |
| 6 | SN_LIBERAR_INTERNACAO | VARCHAR2 | N | Se o papel tem permissão para liberar internação. |
| 7 | SN_LIBERAR_OPME | VARCHAR2 | N | Se o papel tem permissão para liberar opme. |
| 8 | SN_RESERVAR_SALA | VARCHAR2 | N | Se o papel tem permissão para reservar sala. |
| 9 | SN_CANCELAR_AGENDAMENTO | VARCHAR2 | N | Se o papel tem permissão para cancelar agendamento. |
| 10 | SN_LIBERAR_CIRURGIA | VARCHAR2 | Y | Indica se o papel tem permissao para liberar cirurgia. |
| 11 | SN_LIBERAR_ESTERILIZACAO | VARCHAR2 | Y | Indica se o papel tem permissao para liberar esterilizacao. |

---

## DBAMV.PENDENCIA_AVISO
> Tabela de Pedencias do Aviso de Cirurgia

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AVISO_CIRURGIA | NUMBER | N | C??digo da chave_primaria. |
| 2 | NR_PENDENCIA | NUMBER | N | Numero da pendencia do Aviso de Cirurgia |
| 3 | DT_ABERTURA | DATE | N | Data e hora em que foi efetuado o registro da Pendencia no formato dd/mm/yyyy hh24:mi. |
| 4 | CD_USUARIO_ABERTURA | VARCHAR2 | N | Usuario responsavel pelo registro da pendencia. |
| 5 | DS_PENDENCIA | VARCHAR2 | N | Descric?o da Pendencia. |
| 6 | SN_RESOLVIDA | VARCHAR2 | N | Identifica se a pendencia ja foi resolvida ou n?o. S - Se resolvida; N - N?o resolvida |
| 7 | DT_RESOLUCAO | DATE | Y | Data em que foi registrada a resoluc?o da pendencia. |
| 8 | CD_USUARIO_RESOLUCAO | VARCHAR2 | Y | Usuario responsavel pelo registro da resoluc?o da pendencia |
| 9 | DS_OBS_RESOLUCAO | VARCHAR2 | Y | Descric?o da Observac?o sobre a resoluc?o da pendencia |

---

## DBAMV.PRE_OC
> TABELA PARA CADASTRO DAS PRE ORDENS DE ALCADA DE OPME

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRE_OC | NUMBER | N | CÓDIGO SEQUENCIAL DA TABELA |
| 2 | CD_GUIA | NUMBER | N | CÓDIGO DA GUIA |
| 3 | CD_CONVENIO | NUMBER | Y | CÓDIGO DO CONVENIO |
| 4 | CD_ATENDIMENTO | NUMBER | Y | CÓDIGO DO ATENDIMENTO |
| 5 | CD_AVISO_CIRURGIA | NUMBER | Y | CÓDIGO DO AVISO |
| 6 | VL_LIMITE | NUMBER | Y | VALOR LIMITE DE AUTORIZACAO |
| 7 | DT_INCLUSAO_PRE_OC | DATE | Y | DATA DE INCLUSÃO DA PRE OC |
| 8 | CD_USUARIO_SOLICITANTE | VARCHAR2 | Y | CODIGO DO USUARIO QUE SOLICITOU A PRE ORDEM DE COMPRA |
| 9 | CD_USUARIO_AUTORIZADOR | VARCHAR2 | Y | CODIGO DO USUARIO AUTORIZADOR |
| 10 | DT_ALTERACAO_AUTORIZADOR | DATE | Y | DATA DA ALTERACAO DO AUTORIZADOR |
| 11 | SN_AUTORIZADA | VARCHAR2 | Y | INDICA SE A GUIA ESTÁ AUTORIZADA |
| 12 | SN_CANCELADA | VARCHAR2 | Y | INDICA SE A GUIA ESTÁ CANCELADA |
| 13 | SN_RENEGOCIACAO | VARCHAR2 | Y | INDICA SE A GUIA ESTÁ EM RENEGOCIAÇÃO |
| 14 | DS_OBSERVACAO | VARCHAR2 | Y | CAMPO DE OBSERVAÇÃO |

---

## DBAMV.PRODUTOS_NOVOS_OPME
> Tabela para guardar os produtos recebidos da integrac?o com OPMEnexo, que n?o tem cadastro no MV2000

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRODUTO_NOVO_OPME | NUMBER | N | Chave primaria sequencial da tabela |
| 2 | CD_SOL_COM | NUMBER | Y | Codigo da Solicitac?o de Compras no MV2000 |
| 3 | CD_SOL_COM_INTEGRA | VARCHAR2 | Y | Codigo da Solicitac?o de Compras na Opmenexo (de-para) |
| 4 | CD_PRODUTO | NUMBER | Y | Codigo do produto no MV2000, tabela dbamv.produto |
| 5 | CD_PRODUTO_INTEGRA | VARCHAR2 | Y | Codigo do produto na Opmenexo (de-para) |
| 6 | DS_PRODUTO | VARCHAR2 | Y | Descric?o do produto na Opmenexo |
| 7 | CD_ESPECIE | NUMBER | Y | Codigo da especie no MV2000 |
| 8 | CD_ESPECIE_INTEGRA | VARCHAR2 | Y | Codigo da especie/categoria na Opmenexo (de-para) |
| 9 | DS_ESPECIE | VARCHAR2 | Y | Descric?o da especie |
| 10 | CD_UNI_PRO | NUMBER | Y |  |
| 11 | CD_UNI_PRO_INTEGRA | VARCHAR2 | Y |  |
| 12 | DS_MARCA_FABRICANTE | VARCHAR2 | Y | Codigo da marca/fabricante na Opmenexo |
| 13 | CD_UNIDADE | VARCHAR2 | Y | Codigo da unidade de medida no MV2000 |
| 14 | CD_UNIDADE_INTEGRA | VARCHAR2 | Y | Codigo da unidade de medida na Opmenexo (de-para) |
| 15 | DS_UNIDADE | VARCHAR2 | Y | Descric?o da unidade de medida |
| 16 | TP_STATUS | VARCHAR2 | Y | Status do registro, S = Cadastro Solicitado \| N = Cadastro N?o Solicitado \| L = Cadastro Liberado |
| 17 | CD_PRODUTOS_NOVOS_OPME_INTEGRA | VARCHAR2 | Y |  |
| 18 | DT_INTEGRA | DATE | Y | Data de integrac?o do registro |
| 19 | CD_SEQ_INTEGRA | NUMBER | Y | Codigo do registro da tabela de integrac?o que enviou os dados para Opmenexo |

---

## DBAMV.PRO_INV_PSIH
> Associac?o dos procedimentos invasivos com itens de prescric?o e cirurgias tp_classif_psih igual a P

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRO_INV_PSIH | NUMBER | N | Identificador do registro |
| 2 | CD_PRO_INVASIVO | NUMBER | N |  |
| 3 | CD_CIRURGIA | NUMBER | Y |  |
| 4 | CD_TIP_PRESC | NUMBER | Y |  |
| 5 | SN_REMOVE_TIP_PRESC | VARCHAR2 | Y | Indica se o registro corresponde a uma remoc?o de um procedimento invasivo instalado no paciente |
| 6 | CD_PRO_INV_PSIH_REMOVE | NUMBER | Y | Indica qual o procedimento invasivo sera removido por este registro |

---

## DBAMV.RESERVA_SAL_CIR
> Tabela de reserva de sala de cirurgia.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_RESERVA_SAL_CIR | NUMBER | N | Codigo da Reserva da Sala |
| 2 | CD_PRESTADOR | NUMBER | Y | Codigo do prestador da reserva |
| 3 | CD_SAL_CIR | NUMBER | Y | Codigo da Sala da Reserva |
| 4 | TP_SITUACAO | VARCHAR2 | N | Situac?o atual da reserva. (A)tiva;(C)Cancelada. |
| 5 | DT_INICIAL | DATE | N | Data de inicio da reserva. |
| 6 | DT_FINAL | DATE | N | Data de termino da reserva. |
| 7 | TP_DIA_SEMANA | NUMBER | N | Dia da semana da reserva (1-Domingo;2-Segunda;3-Terca;4-Quarta;5-Quinta;6-Sexta;7-Sabado |
| 8 | HR_INICIAL | DATE | N | Hora de inicio da reserva. |
| 9 | HR_FINAL | DATE | N | Hora de termino da reserva. |
| 10 | DT_CADASTRO | DATE | N | Data de cadastro da reserva. |
| 11 | CD_USUARIO_CADASTRO | VARCHAR2 | N | Codigo do usuario que cadastrou a reserva. |
| 12 | DT_CANCELAMENTO | DATE | Y | Data de cancelamento da reserva. |
| 13 | CD_USUARIO_CANCELAMENTO | VARCHAR2 | Y | Codigo do usuario que cancelou a reserva pela ultima vez. |
| 14 | DT_REATIVACAO | DATE | Y | Data de reativac?o da reserva. |
| 15 | CD_USUARIO_REATIVACAO | VARCHAR2 | Y | Codigo do usuario que reativou a reserva pela ultima vez. |

---

## DBAMV.RESTRICAO_DOCUMENTO_CIRURGIA
> Tabela que liga a cirurgia a um tipo de documento cirurgico.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIPO_DOCUMENTO_CIRURGICO | NUMBER | N | Código do tipo de documento cirurgico. |
| 2 | CD_CIRURGIA | NUMBER | N | Código da cirurgia. |
| 3 | CD_DOCUMENTO | NUMBER | Y | Código do documento do PEP. |
| 4 | VL_TEMPO_VALIDADE | NUMBER | Y | Tempo de validade em dias. |

---

## DBAMV.SALA_CIRURGIA
> Cadastro da restric?o de realizac?o de cirurgia por sala.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SAL_CIR | NUMBER | N | Codigo da Sala de Cirurgia |
| 2 | CD_CIRURGIA | NUMBER | N | Codigo da Cirurgia |

---

## DBAMV.TAXA_MANUSEIO_OPME
> Tabela de taxas de manuseio OPME.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TAXA | NUMBER | N | Sequence da tabela. |
| 2 | CD_REGRA | NUMBER | Y | Campo de ligação entre o cadastro e a regra de cobrança à qual está ligado. |
| 3 | VL_FAIXA_INICIAL | NUMBER | Y | Faixa de valor inicial para aplicação da taxa, referente ao valor do OPME que será verificado. |
| 4 | VL_FAIXA_FINAL | NUMBER | Y | Faixa de valor final para aplicação da taxa, referente ao valor do OPME que será verificado. |
| 5 | DT_VIGENCIA_INICIO | DATE | Y | Vigência para aplicação da taxa, referente à data de lançamento do OPME. |
| 6 | DT_VIGENCIA_FIM | DATE | Y | Vigência para aplicação da taxa, referente à data de lançamento do OPME. |
| 7 | CD_PRO_FAT | VARCHAR2 | Y | Código do procedimento da Taxa de Manuseio. |
| 8 | VL_PERCENTUAL | NUMBER | Y | Percentual que será aplicado sobre o valor do OPME. |
| 9 | VL_FIXO | NUMBER | Y | Valor fixo que será atribuido à taxa de manuseio quando for lançada em conta. |
| 10 | CD_GRU_FAT | NUMBER | Y | Grupo de Faturamento onde será lançada a Taxa na conta. |
