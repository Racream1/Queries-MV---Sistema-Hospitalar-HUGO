# 06 - Prescricao e Medicacao

> Prescricoes, itens, aprazamento, checagem, CPOE (MVCPOE)

## Resumo

- **Tabelas**: 204
- **Owners**: DBAMV, HMED, MVCPOE

---

## DBAMV.AUDITORIA_CHECAGEM_PRESCRICAO
> Registra os itens de prescrição que serão visualizados na tela de auditoria dos itens de checagem da prescrição médica

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AUDIT_CHEC_PRESC | NUMBER | N | Código sequencial da tabela |
| 2 | CD_TIP_ESQ | VARCHAR2 | Y | Identificador tipo do esquema |
| 3 | CD_TIP_PRESC | NUMBER | Y | Identificador procedimento do item de prescrição |
| 4 | DT_VIGENCIA | DATE | N | Data da vigência |
| 5 | CD_MULTI_EMPRESA | NUMBER | N | Código da empresa |

---

## DBAMV.HRITPRE_CONS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITPRE_MED | NUMBER | N |  |
| 2 | DH_MEDICACAO | DATE | N |  |
| 3 | DH_CHECAGEM | DATE | N |  |
| 4 | NM_USUARIO | VARCHAR2 | N |  |
| 5 | SN_SUSPENSO | VARCHAR2 | N |  |
| 6 | DS_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 7 | CD_JUSTIFICATIVA_CHECAGEM | NUMBER | Y |  |
| 8 | CD_FECHAMENTO | NUMBER | Y | Codigo do Fechamento |
| 9 | DH_DESLIGA | DATE | Y | Data/Hora do desligamento |
| 10 | QT_CONSUMO | NUMBER | Y | Podera ser informado o consumo de cada horario independente, caso n?o exista a informac?o ent?o s... |
| 11 | CD_FECHAMENTO_LIGA | NUMBER | Y | Codigo do Fechamento que indica o inicio da aplicac?o do item. |
| 12 | VL_SOBRA | NUMBER | Y | Quantidade que sobrou em cada horario |
| 13 | DS_ORIGEM | VARCHAR2 | Y | identifica de onde a checagem foi realizada |
| 14 | SN_INICIADO_SUSPENSO | VARCHAR2 | Y | Identifica que o item de tratamento foi Iniciada a Medicac?o, mas o paciente n?o terminou de util... |
| 15 | CD_JUSTIFICATIVA_MOBILE | NUMBER | Y | Código identificador da justificativa para checagem sem código de barars |
| 16 | DS_REG_JUSTV_CHEK_MEDIC_S_CB | VARCHAR2 | Y | Código identificador da justificativa para checagem sem código de barars |
| 17 | SN_SUSPENSO_PRESC | VARCHAR2 | Y | Identifica que o item foi suspenso na prescrição |
| 18 | DS_JUSTIFICATIVA_PRESC_TRATMT | VARCHAR2 | Y | Justificativa por ignorar alerta na checagem de horários das prescrições de tratamento |
| 19 | VL_ADMINISTRADO | NUMBER | Y | Referente ao volume do item que foi administrado |
| 20 | SN_DESCARTADO_BALANCO | VARCHAR2 | Y | Identificador se o item checado foi marcado como Descartado na importacao no balanco hidrico |

---

## DBAMV.HRITPRE_CONS_DUPLA_CHECAGEM
> Tabela para armazenar dupla checagem

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_HRITPRE_CONS_DUPLA_CHECG | NUMBER | N | CÃ³digo identificador da dupla checagem |
| 2 | CD_ITPRE_MED | NUMBER | N | CÃ³digo identificador do Item Prescrito |
| 3 | DH_MEDICACAO | DATE | N | Data e Hora de aprazamento do horÃ¡rio |
| 4 | CD_USUARIO | VARCHAR2 | N | CÃ³digo identificador do usuario que efetuou a dupla checagem |

---

## DBAMV.HRITPRE_MED

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITPRE_MED | NUMBER | N |  |
| 2 | DH_MEDICACAO | DATE | N |  |
| 3 | CD_ATENDIMENTO | NUMBER | N |  |
| 4 | DH_CANCELADO | DATE | Y |  |
| 5 | CD_PREST_CANC | NUMBER | Y |  |
| 6 | CD_FECHAMENTO | NUMBER | Y | Codigo do Fechamento |
| 7 | DS_HORARIO | VARCHAR2 | Y | Descric?o do Horario |
| 8 | DH_LIMITE | DATE | Y | Horario Limite de Aplicac?o |
| 9 | NR_DIA | NUMBER | Y | Numero do dia da Sess?o. |
| 10 | SN_ALTERADO_PRESTADOR | VARCHAR2 | Y | Informa se o horario foi modificado pelo prestador |
| 11 | NM_USUARIO | VARCHAR2 | Y | Codigo do usuario que inseriu o registro. |
| 12 | DH_CRIACAO | DATE | Y | Hora da criac?o do registro. |
| 13 | NM_FORMULARIO | VARCHAR2 | Y | Tela, origem, da criac?o do registro. |
| 14 | NR_DIA_TRATAMENTO | NUMBER | Y | Preserva a informac?o do dia da sess?o para prescric?es tipo TRATMT |
| 15 | CD_PRE_MED_SESSAO | NUMBER | Y | Codigo da prescric?o de tratamento referente ao dia |
| 16 | DS_OBSERVACAO_APRAZAMENTO | VARCHAR2 | Y | Coluna que guarda a observação inserida no momento do aprazamento do horário do item de prescrição |
| 17 | CD_USUARIO_APRAZAMENTO | VARCHAR2 | Y | Coluna que guarda o usuário que fez o aprazamento do horário |
| 18 | DH_CONFERENCIA | DATE | Y | Data e Hora da conferência do horário |
| 19 | CD_USUARIO_CONFERENCIA | VARCHAR2 | Y | Código identificador do usuário que efetuou a conferência do horário |
| 20 | DS_CODIGO_BARRAS_HORARIO | VARCHAR2 | Y |  |
| 21 | CD_JUSTIFICATIVA_MOBILE | NUMBER | Y | Código identificador da justificativa para checagem sem código de barars |
| 22 | DS_REG_JUSTV_CHEK_MEDIC_S_CB | VARCHAR2 | Y | Código identificador da justificativa para checagem sem código de barars |
| 23 | TP_GERACAO | VARCHAR2 | Y | Indica se foi gerado horário das seguintes formas: (AUTOMATICO,PRESCRICAO,CHECAGEM,AVALIACAO_FARM... |
| 24 | QT_ADMINISTRADA | NUMBER | Y | Indica a quantidade informada para o item através da tela de checagem. |
| 25 | CD_IDENTIFICADOR | NUMBER | Y | Código único identificador do horário, para manter o rastreamento após reaprazamento que altera o... |

---

## DBAMV.HRITPRE_MED_PREPARO
> Entidade para os componentes de preparo de um item de prescrição.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_HRITPRE_MED_PREPARO | NUMBER | N | Código do preparo do item. (PK) |
| 2 | CD_ITPRE_MED | NUMBER | N | Código do item de prescrição. (FK) |
| 3 | DH_MEDICACAO | DATE | N | Horário da Aplicação. |
| 4 | SN_PREPARO_CONCLUIDO | VARCHAR2 | Y |  |
| 5 | CD_USUARIO | VARCHAR2 | Y | USUÁRIO QUE FINALIZOU A PREPARAÇÃO |
| 6 | DH_PREPARO_CONCLUIDO | DATE | Y | DATA DA CONCLUSÃO DA PREPARAÇÃO |
| 7 | DH_TEMPO_ESTABILIDADE | DATE | Y | TEMPO DE ESTABILIDADE DA PREPARAÇÃO |
| 8 | CD_USUARIO_FINALIZOU | VARCHAR2 | Y |  |
| 9 | NR_ORDEM_INFUSAO | NUMBER | Y |  |
| 10 | NR_CICLO_TRATAMENTO | NUMBER | Y |  |
| 11 | SN_FOTOSSENSIBILIDADE | VARCHAR2 | Y |  |
| 12 | NR_VOLUME_TOTAL | NUMBER | Y |  |
| 13 | NR_HR_ESTABILIDADE | NUMBER | Y |  |
| 14 | NR_MIN_ESTABILIDADE | NUMBER | Y |  |

---

## DBAMV.HRITPRE_MED_PREPARO_COMP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_HRITPRE_MED_PREPARO_COMP | NUMBER | N | Código do componente de preparo do item. (PK) |
| 2 | CD_HRITPRE_MED_PREPARO | NUMBER | N | Código do preparo do item. (FK) |
| 3 | CD_ITPRE_MED | NUMBER | N |  |
| 4 | CD_TIP_PRESC | NUMBER | N | Código do tipo prescrição. (FK) |
| 5 | CD_USUARIO | VARCHAR2 | Y | USUÁRIO QUE CHECKOU A PREPARAÇÃO DO COMPONENTE |
| 6 | DH_CHECADO | DATE | Y | DATA DA CHECAGEM DO COMPONENTE |
| 7 | SN_ITEM_PRINCIPAL | VARCHAR2 | Y | INFORMA SE É O ITEM PRINCIPAL DA ITPRE_MED |
| 8 | SN_LIDO_CODIGO_BARRAS | VARCHAR2 | Y | INFORMA SE FOI CONFIRMADO A UTILIZAÇÃO PELO CODIGO DE BARRAS |
| 9 | CD_PREPARO_JUSTIFICATIVA | NUMBER | Y | Código gerado por sequence |

---

## DBAMV.HRITPRE_MED_PRE_DOSAGEM
> Tabela responsável cadastrar as justificativas de medicação

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_HRITPRE_MED_DOSAGEM | NUMBER | N | Código gerado por sequence |
| 2 | CD_ITPRE_MED | NUMBER | N | Código do item da prescrição |
| 3 | CD_TIP_PRESC | NUMBER | N | Código do tipo de item da prescrição |
| 4 | CD_HRITPRE_MED_PREPARO_COMP | NUMBER | Y |  |
| 5 | CD_UNIDADE | VARCHAR2 | Y | Código da Unidade |
| 6 | CD_PRODUTO | NUMBER | Y | Código do Produto |
| 7 | CD_UNI_PRO | NUMBER | Y | Código unico da unidade |
| 8 | QT_ITEM | NUMBER | Y | Quantidade do item |

---

## DBAMV.HRITPRE_VOL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITPRE_MED | NUMBER | N |  |
| 2 | DH_MEDICACAO | DATE | N |  |
| 3 | CD_TIP_PRESC | NUMBER | Y |  |
| 4 | QT_PRESCRITO | NUMBER | N |  |
| 5 | CD_HRITPRE_VOL | NUMBER | N | Cheve primaria do registro. |

---

## DBAMV.ITENS_PRESCRICAO_SUS
> Tabela Auxiliar na integracao da prescricao medica com o faturamento SUS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ATENDIMENTO | NUMBER | N | Codigo do atendimento no mv2000 |
| 2 | CD_REG_FAT | NUMBER | N | Codigo da conta do paciente |
| 3 | CD_LANCAMENTO | NUMBER | N | Codigo do Item de conta do paciente |
| 4 | CD_PRO_FAT | VARCHAR2 | N | Codigo do procedimento na tabela SUS |
| 5 | DT_LANCAMENTO | DATE | N | Data de lancamento do item da prescricao |
| 6 | HR_LANCAMENTO | DATE | N | Hora de lancamento do Item da prescricao |
| 7 | QT_LANCAMENTO | NUMBER | N | Quantidade lancada do item da prescricao |
| 8 | CD_MVTO | NUMBER | N | Codigo do item de integracao |
| 9 | TP_MVTO | VARCHAR2 | N | Tipo do item de integracao |
| 10 | CD_PROCEDIMENTO | VARCHAR2 | Y | Codigo do Procedimento SUS - PT 321 |
| 11 | CD_ITMVTO | NUMBER | Y | Item da movimentac?o |

---

## DBAMV.ITPRE_FAT
> Item Prescrito Faturado

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITPRE_MED | NUMBER | N | Codigo Item de prescric?o |
| 2 | QT_LANCAMENTO | NUMBER | Y | Quantidade a ser faturada |
| 3 | CD_FECHAMENTO | NUMBER | Y | Codigo do fechamento |
| 4 | CD_PRO_FAT | VARCHAR2 | Y | Codigo do Produto Faturado |
| 5 | CD_SSM | VARCHAR2 | Y | Codigo do procedimento Sia-sus |
| 6 | DH_ALTERACAO | DATE | Y | Data que ocorreu alterac?o |
| 7 | NM_USUARIO | VARCHAR2 | Y | Nome do usuario que alterou |

---

## DBAMV.ITPRE_MED

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITPRE_MED | NUMBER | N |  |
| 2 | CD_TIP_ESQ | VARCHAR2 | N |  |
| 3 | CD_TIP_PRESC | NUMBER | N |  |
| 4 | CD_PRE_MED | NUMBER | N |  |
| 5 | CD_SET_EXA | NUMBER | Y |  |
| 6 | CD_TIP_FRE | NUMBER | Y |  |
| 7 | CD_FOR_APL | VARCHAR2 | Y |  |
| 8 | QT_ITPRE_MED | NUMBER | Y |  |
| 9 | DS_ITPRE_MED | VARCHAR2 | Y |  |
| 10 | TP_SITUACAO | VARCHAR2 | Y |  |
| 11 | DH_INICIAL | DATE | Y |  |
| 12 | TP_LOCAL_EXAME | VARCHAR2 | Y |  |
| 13 | SN_COPIA | VARCHAR2 | Y |  |
| 14 | SN_CANCELADO | VARCHAR2 | Y |  |
| 15 | CD_UNIDADE | VARCHAR2 | Y |  |
| 16 | CD_PRODUTO | NUMBER | Y |  |
| 17 | CD_UNI_PRO | NUMBER | Y |  |
| 18 | CD_IMPORTA_REG_FAT | NUMBER | Y |  |
| 19 | CD_IMPORTA_REG_AMB | NUMBER | Y |  |
| 20 | CD_PRESTADOR | NUMBER | Y |  |
| 21 | DH_FINAL | DATE | Y |  |
| 22 | DH_CANCELADO | DATE | Y |  |
| 23 | CD_PREST_CANC | NUMBER | Y |  |
| 24 | CD_PRE_USO | NUMBER | Y |  |
| 25 | DS_NPADRONIZADO | VARCHAR2 | Y |  |
| 26 | CD_NPADRONIZADO | NUMBER | Y |  |
| 27 | DS_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 28 | CD_ITPRE_MED_CANC | NUMBER | Y |  |
| 29 | NR_AGRUPAMENTO | NUMBER | Y |  |
| 30 | QT_INFUSAO | NUMBER | Y |  |
| 31 | CD_UNI_PRO_INF | NUMBER | Y |  |
| 32 | TP_TEMPO | VARCHAR2 | Y |  |
| 33 | QT_DIAS | NUMBER | Y |  |
| 34 | NR_DIA | NUMBER | Y |  |
| 35 | CD_ITPRE_PAD | NUMBER | Y |  |
| 36 | TP_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 37 | TP_DET_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 38 | SN_SOLICITA | VARCHAR2 | Y | Identifica se o item gera solicitac?o ao Estoque |
| 39 | SN_URGENTE | VARCHAR2 | Y | Indica a urgencia na prescric?o medica nos processos de integrac?o |
| 40 | CD_TIP_FRE_DET | NUMBER | Y | Detalhamento da frequencia quando esta solicitar. Usado a principio para as frequencia S/N e ACM |
| 41 | CD_ITPRE_MED_COPIA | NUMBER | Y | Codigo de origem do item da copia de prescric?o |
| 42 | QT_ITPRE_MED_CALCULADO | NUMBER | Y | Quantidade do item calculo atraves da formula de superficie corporea. |
| 43 | SN_SOMENTE_HOJE | VARCHAR2 | Y | Indica se o item podera ser copiado em prescric?es futuras |
| 44 | CD_FORMULA | NUMBER | Y | Codigo da formula usada para calcular a quantidade do item |
| 45 | CD_UNI_PRESC | NUMBER | Y | Codigo da unidade de medida |
| 46 | HR_DURACAO | DATE | Y | Durac?o da infus?o |
| 47 | CD_UNI_PRESC_INF | NUMBER | Y | Codigo da Unidade da Velocidade de Prescric?o |
| 48 | CD_ITPRE_MED_JUSTIFICATIVA | NUMBER | Y | Codigo da justificativa |
| 49 | SN_ATM_PRORROGACAO | VARCHAR2 | N | Indica se o atm esta prorrogando um ciclo de tratamento na auditoria de prescric?o. |
| 50 | CD_ITPRE_MED_TRATMT | NUMBER | Y | Primary key do item da prescric?o pai de tratamento |
| 51 | CD_MATERIAL | NUMBER | Y | Codigo do Material para o exame laboratorial |
| 52 | DH_REGISTRO | DATE | Y | Data de solicitac?o de exame ou realizac?o de prescric?o do item, preenchido automaticamente pelo... |
| 53 | CD_GRUPO_PRESCRICAO_ITPRE_MED | NUMBER | Y | Codigo do grupo dos itens prescritos |
| 54 | QT_DOSE_PADRAO | NUMBER | Y | Apresenta a dose padr?o da medicac?o, sendo esta informada pelo medico na prescric?o |
| 55 | NR_ORDEM | NUMBER | Y | Indica qual sera a ordem do item dentro da prescricao medica |
| 56 | CD_ITPRE_MED_INTEGRA | VARCHAR2 | Y | Codigo de-para do item de prescric?o medica |
| 57 | CD_SEQ_INTEGRA | NUMBER | Y | Codigo identificador do registro de integrac?o |
| 58 | DT_INTEGRA | DATE | Y | Data do registro da integrac?o |
| 59 | SN_ALERTA_PERSISTIDO | VARCHAR2 | Y | Indica se os alertas do item foram persistidos na tabela pw_itpre_med_alerta ao fechar a prescrição |
| 60 | SN_COPIA_IDENTICA | VARCHAR2 | Y | Coluna que indica que o item é uma cópia identica ao item copiado de outra prescrição |
| 61 | DS_OBSERVACAO_AUTOMATICA | VARCHAR2 | Y | Coluna que guarda as observações criadas automaticamente pelo sistema para o item de prescrição |
| 62 | DS_OBSERVACAO_APRAZAMENTO | VARCHAR2 | Y | Coluna que guarda a observação do aprazamento para o item |
| 63 | CD_USUARIO_OBSERVACAO_APRAZA | VARCHAR2 | Y | Coluna que guarda o código do usuário que criou a observação do aprazamento para o item (FK) |
| 64 | SN_KIT_PADRAO_ALTERADO | VARCHAR2 | Y | Indica se o kit padrão do item foi alterado (inclusão, exclusão ou alteração dos componentes padr... |
| 65 | CD_CONFIGURACAO_PADRAO_ITEM | NUMBER | Y | Código da configuração padrão que originou o item |
| 66 | CD_LOCAL_ANATOMICO_COLETA | NUMBER | Y | Campo para armazenar o código do local anatomico da coleta |
| 67 | CD_DISPOSITIVO | NUMBER | Y | Código do dispositivo utilizado no item de prescrição. |
| 68 | SN_PREPARACAO | CHAR | Y |  |
| 69 | SN_HORARIO_GERADO | VARCHAR2 | Y | Indica se foi gerado horï¿½rio para o item. |
| 70 | SN_CONTINUO | VARCHAR2 | Y | Indica se o item ï¿½ Continuo. |
| 71 | CD_TIP_FRE_APRAZAMENTO | NUMBER | Y | Cï¿½digo da frequï¿½ncia utilizada na hora de criaï¿½ï¿½o dos horï¿½rios. |
| 72 | NM_EXIBICAO_OBSERVACAO_AUTOMAT | VARCHAR2 | Y | Nome de exibição da observação predefinida |
| 73 | NM_EXIBICAO_COMPONENTES | VARCHAR2 | Y | Nome de exibição dos componentes |
| 74 | DS_UNIDADE_FORMULA | VARCHAR2 | Y | Descrição da unidade da fórmula |
| 75 | QTD_VOLUME_TOTAL | NUMBER | Y | Campo para informar o volume total da solução após a diluição. |
| 76 | CD_UNID_VOL_TOTAL | NUMBER | Y | Unidade de produto relacionada ao volume total da solução após a diluição. |
| 77 | CD_CID | VARCHAR2 | Y | Campo para armazenar o código do CID, ao prescrever exames. |
| 78 | CD_CONFIGURACAO_CURVA | NUMBER | Y | Campo para armazenar o código da configuração da curva dinâmica, ao prescrever exames. |
| 79 | SN_CURVA_PADRAO_AUTO | VARCHAR2 | Y | Define se o item sofreu alteração manual da sua curva padrão setada automaticamente pelo sistema |
| 80 | CD_UNID_PRESC_VOL_TOTAL | NUMBER | Y | Unidade de prescrição relacionada ao volume total da solução após a diluição. |
| 81 | NR_PERCENTUAL_REDUCAO_QUANTD | NUMBER | Y | Indica o percentual usado para redução da quantidade do item |
| 82 | SN_REDUZIR_QUANTIDADE | VARCHAR2 | Y | Indica que a quantidade do item deve ser reduzida baseada no percentual informado na prescrição |
| 83 | SN_FINAL_CICLO_NOTIFICADO | VARCHAR2 | Y | FLAG INDICATIVA QUE O CICLO DE APLICAÇÃO FECHADO FOI NOTIFICADO |
| 84 | SN_CRONICO | VARCHAR2 | Y | A identificacao para medicacao cronica |
| 85 | NR_DIAS | NUMBER | Y | dias de duracao da medicacao |
| 86 | NR_HORA | NUMBER | Y | horas de duracao da medicacao |
| 87 | NR_MINUTO | NUMBER | Y | minutos de duracao da medicacao |
| 88 | CD_MULTI_EMPRESA | NUMBER | Y | Código da empresa |
| 89 | TP_FASE_QT | VARCHAR2 | Y | Tipo da fase da quimioterapia para o item, podendo ser antes da quimioterapia (PRE), quimioterápi... |
| 90 | QTD_TOTAL_DISPENSAR | NUMBER | Y |  |
| 91 | SN_PESQUISA_CIENTIFICA | VARCHAR2 | Y | Se o item foi incluído como item de pesquisa científica |
| 92 | SN_REAVALICAO_MEDICA | VARCHAR2 | Y | Campo que informa se o item de prescrição sofreu uma reavaliação médica |
| 93 | DS_MATERIAL_COMPLEMENTAR | VARCHAR2 | Y | Descrição do material complementar para o exame laboratorial |
| 94 | CD_TUBO_COLETA | NUMBER | Y | Código do tubo de coleta. |
| 95 | QT_ITPRE_MED_REDUCAO_INICIAL | NUMBER | Y | Quantidade da redução inicial aplicada ao item de prescrição médica. |
| 96 | SN_COPIA_SESSAO | VARCHAR2 | Y | Item copiado de outra sessão |

---

## DBAMV.ITPRE_MED_EXTENSAO
> Tabela que deve armazenar todas as informac?es adicionais dos clientes, evitando assim a criac?o de novas colunas na tabela itpre_med. Estas informac?es n?o devem ser necessarias para consulta intensa, no maximo para ser usada na integrac?o com outros modulos.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITPRE_MED | NUMBER | N | Campo chave que determina a relac?o com a tabela de item de prescric?o |
| 2 | NM_IDENTIFICADOR | VARCHAR2 | N | Nome do identificador. Identifica o significado do valor deste registro. Foi formalizado que iden... |
| 3 | NR_ORDEM | NUMBER | N | Sequencia que o campo deve ser exibido na lista de respostas a ser exibido ao usuario. |
| 4 | DS_VALOR | VARCHAR2 | N | Valor propriamente dito, esta sim e a informac?o que serve. |
| 5 | CD_PERGUNTA | NUMBER | Y | Caso o identificador esteja cadastrado na tabela de perguntas do pagu, ent?o sera armazenado a re... |

---

## DBAMV.ITPRE_MED_HISTORICO
> Itens da prescrição histórico criados pela avaliação farmacêutica (em avaliações de prescrição futura)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITPRE_MED_HISTORICO | NUMBER | N |  |
| 2 | CD_ITPRE_MED | NUMBER | N |  |
| 3 | CD_TIP_ESQ | VARCHAR2 | N |  |
| 4 | CD_TIP_PRESC | NUMBER | N |  |
| 5 | CD_PRE_MED | NUMBER | N |  |
| 6 | CD_SET_EXA | NUMBER | Y |  |
| 7 | CD_TIP_FRE | NUMBER | Y |  |
| 8 | CD_FOR_APL | VARCHAR2 | Y |  |
| 9 | QT_ITPRE_MED | NUMBER | Y |  |
| 10 | DS_ITPRE_MED | VARCHAR2 | Y |  |
| 11 | TP_SITUACAO | VARCHAR2 | Y |  |
| 12 | DH_INICIAL | DATE | Y |  |
| 13 | TP_LOCAL_EXAME | VARCHAR2 | Y |  |
| 14 | SN_COPIA | VARCHAR2 | Y |  |
| 15 | SN_CANCELADO | VARCHAR2 | Y |  |
| 16 | CD_UNIDADE | VARCHAR2 | Y |  |
| 17 | CD_PRODUTO | NUMBER | Y |  |
| 18 | CD_UNI_PRO | NUMBER | Y |  |
| 19 | CD_IMPORTA_REG_FAT | NUMBER | Y |  |
| 20 | CD_IMPORTA_REG_AMB | NUMBER | Y |  |
| 21 | CD_PRESTADOR | NUMBER | Y |  |
| 22 | DH_FINAL | DATE | Y |  |
| 23 | DH_CANCELADO | DATE | Y |  |
| 24 | CD_PREST_CANC | NUMBER | Y |  |
| 25 | CD_PRE_USO | NUMBER | Y |  |
| 26 | DS_NPADRONIZADO | VARCHAR2 | Y |  |
| 27 | CD_NPADRONIZADO | NUMBER | Y |  |
| 28 | DS_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 29 | CD_ITPRE_MED_CANC | NUMBER | Y |  |
| 30 | NR_AGRUPAMENTO | NUMBER | Y |  |
| 31 | QT_INFUSAO | NUMBER | Y |  |
| 32 | CD_UNI_PRO_INF | NUMBER | Y |  |
| 33 | TP_TEMPO | VARCHAR2 | Y |  |
| 34 | QT_DIAS | NUMBER | Y |  |
| 35 | NR_DIA | NUMBER | Y |  |
| 36 | CD_ITPRE_PAD | NUMBER | Y |  |
| 37 | TP_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 38 | TP_DET_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 39 | SN_SOLICITA | VARCHAR2 | Y |  |
| 40 | SN_URGENTE | VARCHAR2 | Y |  |
| 41 | CD_TIP_FRE_DET | NUMBER | Y |  |
| 42 | CD_ITPRE_MED_COPIA | NUMBER | Y |  |
| 43 | QT_ITPRE_MED_CALCULADO | NUMBER | Y |  |
| 44 | SN_SOMENTE_HOJE | VARCHAR2 | Y |  |
| 45 | CD_FORMULA | NUMBER | Y |  |
| 46 | CD_UNI_PRESC | NUMBER | Y |  |
| 47 | HR_DURACAO | DATE | Y |  |
| 48 | CD_UNI_PRESC_INF | NUMBER | Y |  |
| 49 | CD_ITPRE_MED_JUSTIFICATIVA | NUMBER | Y |  |
| 50 | SN_ATM_PRORROGACAO | VARCHAR2 | N |  |
| 51 | CD_ITPRE_MED_TRATMT | NUMBER | Y |  |
| 52 | CD_MATERIAL | NUMBER | Y |  |
| 53 | DH_REGISTRO | DATE | Y |  |
| 54 | CD_GRUPO_PRESCRICAO_ITPRE_MED | NUMBER | Y |  |
| 55 | QT_DOSE_PADRAO | NUMBER | Y |  |
| 56 | NR_ORDEM | NUMBER | Y |  |
| 57 | CD_ITPRE_MED_INTEGRA | VARCHAR2 | Y |  |
| 58 | CD_SEQ_INTEGRA | NUMBER | Y |  |
| 59 | DT_INTEGRA | DATE | Y |  |
| 60 | SN_ALERTA_PERSISTIDO | VARCHAR2 | Y |  |
| 61 | SN_COPIA_IDENTICA | VARCHAR2 | Y |  |
| 62 | DS_OBSERVACAO_AUTOMATICA | VARCHAR2 | Y |  |
| 63 | DS_OBSERVACAO_APRAZAMENTO | VARCHAR2 | Y |  |
| 64 | CD_USUARIO_OBSERVACAO_APRAZA | VARCHAR2 | Y |  |
| 65 | SN_KIT_PADRAO_ALTERADO | VARCHAR2 | N |  |
| 66 | CD_CONFIGURACAO_PADRAO_ITEM | NUMBER | Y |  |
| 67 | CD_LOCAL_ANATOMICO_COLETA | NUMBER | Y |  |
| 68 | CD_DISPOSITIVO | NUMBER | Y |  |
| 69 | SN_PREPARACAO | CHAR | Y |  |
| 70 | SN_HORARIO_GERADO | VARCHAR2 | Y |  |
| 71 | SN_CONTINUO | VARCHAR2 | Y |  |
| 72 | CD_TIP_FRE_APRAZAMENTO | NUMBER | Y |  |
| 73 | NM_EXIBICAO_OBSERVACAO_AUTOMAT | VARCHAR2 | Y |  |
| 74 | NM_EXIBICAO_COMPONENTES | VARCHAR2 | Y |  |
| 75 | DS_UNIDADE_FORMULA | VARCHAR2 | Y |  |
| 76 | QTD_VOLUME_TOTAL | NUMBER | Y |  |
| 77 | CD_UNID_VOL_TOTAL | NUMBER | Y | Unidade de produto relacionada ao volume total da solução após a diluição. |
| 78 | CD_CID | VARCHAR2 | Y |  |
| 79 | CD_CONFIGURACAO_CURVA | NUMBER | Y |  |
| 80 | SN_CURVA_PADRAO_AUTO | VARCHAR2 | Y |  |
| 81 | SN_FINAL_CICLO_NOTIFICADO | VARCHAR2 | Y |  |
| 82 | NR_PERCENTUAL_REDUCAO_QUANTD | NUMBER | Y |  |
| 83 | SN_REDUZIR_QUANTIDADE | VARCHAR2 | Y |  |
| 84 | SN_CRONICO | VARCHAR2 | Y |  |
| 85 | TP_FASE_QT | VARCHAR2 | Y | Tipo da fase da quimioterapia para o item, podendo ser antes da quimioterapia (PRE), quimioterápi... |
| 86 | DS_MATERIAL_COMPLEMENTAR | VARCHAR2 | Y |  |
| 87 | CD_MULTI_EMPRESA | NUMBER | Y |  |
| 88 | NR_DIAS | NUMBER | Y |  |
| 89 | NR_HORA | NUMBER | Y |  |
| 90 | NR_MINUTO | NUMBER | Y |  |
| 91 | DH_INTERVENCAO_FARMACEUTICA | DATE | Y | Data/hora para controle dos marcos de intervenção farmacêutica |
| 92 | TP_STATUS_INTERVENCAO | VARCHAR2 | Y | Tipos para controle dos marcos de intervenção farmacêutica: ABERTO, LIBERADO, BLOQUEADO |
| 93 | CD_PRESTADOR_RESPONSAVEL | NUMBER | Y | Prestador responsável pela alteração/criação do registro de intervenção no item de prescrição |
| 94 | CD_UNID_PRESC_VOL_TOTAL | NUMBER | Y | Unidade de prescrição relacionada ao volume total da solução após a diluição. |
| 95 | CD_PRE_MED_HISTORICO | NUMBER | Y | Sequencia de vinculo com a pw pre med historico |
| 96 | TP_HISTORICO | VARCHAR2 | Y | D = Sessão de tratamento desfeita / S = Item suspenso na sessão / A = Intervenção Realizada na Av... |
| 97 | DT_HISTORICO | DATE | Y | Data do historico |
| 98 | CD_PRESTADOR_HISTORICO | NUMBER | Y | Prestador que realizou a alteracao |

---

## DBAMV.ITPRE_MED_JUSTIFICATIVA
> Justificatica de prescric?o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITPRE_MED_JUSTIFICATIVA | NUMBER | N | Codigo da Justificativa |
| 2 | DS_ITPRE_MED_JUSTIFICATIVA | VARCHAR2 | Y | Descricao da Justificativa |
| 3 | TP_JUSTIFICATIVA | VARCHAR2 | Y | Tipo do Processo |
| 4 | TP_DET_JUSTIFICATIVA | VARCHAR2 | Y | Tipo do sub-processo |
| 5 | CD_TIP_ESQ | VARCHAR2 | Y | Codigo do Tipo do Esquema |
| 6 | CD_TIP_PRESC | NUMBER | Y | Codigo do Tipo da Prescricao |
| 7 | DS_TITULO | VARCHAR2 | N | Nome resumido que descreve a justificativa selecionada. |
| 8 | SN_ATIVO | VARCHAR2 | Y |  |
| 9 | NR_ORDEM | NUMBER | Y | Ordem de visualizac?o da justificativa |
| 10 | VL_VALOR | NUMBER | Y | Quantidade de dias sugeridos para prescric?o do medicamento |

---

## DBAMV.ITPRE_MED_PONTO_CURVA
> Tabela para armazenar os lançamentos dos pontos de curva dinâmica

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITPRE_MED_PONTO_CURVA | NUMBER | N | Sequence e pk da tabela |
| 2 | CD_ITPRE_MED | NUMBER | N | Campo que informa o item de prescrição relacionado |
| 3 | NR_TEMPO | NUMBER | Y | Campo que armazena o número tempo da curva |
| 4 | DS_PONTO | VARCHAR2 | Y | Campo que armazena a descrição do ponto da curva |
| 5 | CD_TIP_PRESC | NUMBER | N | Campo que informa o tipo de prescrição relacionado |
| 6 | CD_MATERIAL | NUMBER | Y | Código do material. |
| 7 | CD_TUBO_COLETA | NUMBER | Y | Código do tubo de coleta. |
| 8 | CD_CONFIG_CURVA_MAT_TUBO | NUMBER | Y | Código da configuração do tubo do material na curva. |

---

## DBAMV.ITPRE_OC
> TABELA PARA CADASTRO DOS ITENS DAS PRE ORDENS DE ALCADA DE OPME

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITPRE_OC | NUMBER | N | CODIGO SEQUENCIAL DA TABELA |
| 2 | CD_PRE_OC | NUMBER | N | CODIGO DA PRE ORDEM |
| 3 | CD_IT_GUIA | NUMBER | N | CODIGO DO ITEM DA GUIA |
| 4 | CD_PRO_FAT | VARCHAR2 | Y | CODIGO DO PROCEDIMENTO |
| 5 | DS_PROCEDIMENTO | VARCHAR2 | Y | DESCRIÇÃO ALTERNATIVA DE PROCEDIMENTOS (PARA CASOS DE PRO_FAT N?O CADASTRADOS). |
| 6 | CD_FORNECEDOR | NUMBER | Y | CODIGO DO FORNECEDOR |
| 7 | VL_TOTAL | NUMBER | Y | VALOR TOTAL DO ITEM DA GUIA |

---

## DBAMV.ITPRE_PAD

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRE_PAD | NUMBER | N |  |
| 2 | CD_ITPRE_PAD | NUMBER | N |  |
| 3 | CD_TIP_ESQ | VARCHAR2 | N |  |
| 4 | CD_TIP_PRESC | NUMBER | N |  |
| 5 | CD_TIP_FRE | NUMBER | Y |  |
| 6 | QT_ITPRE_PAD | NUMBER | Y |  |
| 7 | TP_SITUACAO | VARCHAR2 | Y |  |
| 8 | CD_SET_EXA | NUMBER | Y |  |
| 9 | DS_ITPRE_PAD | VARCHAR2 | Y |  |
| 10 | TP_LOCAL_EXAME | VARCHAR2 | Y |  |
| 11 | CD_FOR_APL | VARCHAR2 | Y |  |
| 12 | CD_PRODUTO | NUMBER | Y |  |
| 13 | CD_UNI_PRO | NUMBER | Y |  |
| 14 | CD_UNIDADE | VARCHAR2 | Y |  |
| 15 | QT_INFUSAO | NUMBER | Y |  |
| 16 | CD_UNI_PRO_INF | NUMBER | Y |  |
| 17 | TP_TEMPO | VARCHAR2 | Y |  |
| 18 | QT_DIAS | NUMBER | Y |  |
| 19 | CD_UNI_PRESC_INF | NUMBER | Y | codigo da velocidade da infus?o |
| 20 | CD_UNI_PRESC | NUMBER | Y | Codigo da unidade de medida |
| 21 | HR_DURACAO | DATE | Y | Durac?o da infus?o |
| 22 | SN_COPIA | VARCHAR2 | Y | Permite copia de itens da prescricao padr?o |
| 23 | SN_ATIVO | VARCHAR2 | N | Indica se o Item esta ativo ou n?o |
| 24 | DT_DESATIVACAO | DATE | Y | Indica a data que o item foi inativado |
| 25 | CD_USUARIO_DESATIVACAO | VARCHAR2 | Y | Indica o usuario que inativou o item |
| 26 | NR_ORDEM_IMPRESSAO | NUMBER | Y | Numero de ordem dos itens da Prescric?o Padr?o |
| 27 | CD_MATERIAL | NUMBER | Y | Codigo do Material para o exame laboratorial |
| 28 | QT_DOSE_PADRAO | NUMBER | Y | Apresenta a dose padr?o da medicac?o, sendo esta informada pelo medico na prescric?o |
| 29 | CD_OBSERVACAO_PREDEFINIDA | NUMBER | Y | Associação com uma observação predefinida |
| 30 | CD_LOCAL_ANATOMICO_COLETA | NUMBER | Y | Campo para informar na prescrição padrão, qual o código do local anatomico da coleta |
| 31 | CD_DISPOSITIVO | NUMBER | Y | Código do dispositivo utilizado no item de prescrição. |
| 32 | QTD_VOLUME_TOTAL | NUMBER | Y | Campo para informar o volume total da solução após a diluição. |
| 33 | CD_UNID_VOL_TOTAL | NUMBER | Y | Unidade de produto relacionada ao volume total da solução após a diluição. |
| 34 | CD_UNID_PRESC_VOL_TOTAL | NUMBER | Y | Unidade de prescrição relacionada ao volume total da solução após a diluição. |
| 35 | SN_CRONICO | VARCHAR2 | N | Informa se o item de prescrição padrão é de uso crônico |
| 36 | NR_DIAS_DURACAO | NUMBER | Y | Informa a quantidade de dias de duração do item de prescrição padrão |
| 37 | NR_HORAS_DURACAO | NUMBER | Y | Informa a quantidade de horas de duração do item de prescrição padrão |
| 38 | NR_MINUTOS_DURACAO | NUMBER | Y | Informa a quantidade de minutos de duração do item de prescrição padrão |
| 39 | CD_MULTI_EMPRESA | NUMBER | Y | Código da empresa padrão |
| 40 | TP_FASE_QT | VARCHAR2 | Y | Tipo da fase da quimioterapia para o item, podendo ser antes da quimioterapia (PRE), quimioterápi... |

---

## DBAMV.ITPRE_PAD_FORMULA
> Relaciona o item padrao a uma formula

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITPRE_PAD | NUMBER | N | Codigo itens da prescric?o padr?o |
| 2 | CD_FORMULA | NUMBER | N | Codigo da formula para o item |
| 3 | DS_RESPOSTA | VARCHAR2 | Y | Descric?o da resposta |
| 4 | TP_CONDICAO | VARCHAR2 | Y | Condic?o dos valores |
| 5 | VL_VALOR_INICIAL | VARCHAR2 | Y | Valor inicial |
| 6 | VL_VALOR_FINAL | VARCHAR2 | Y | Valor final |
| 7 | NR_SEQUENCIAL | NUMBER | Y | Sequencial dos registros |
| 8 | DS_CONDICAO | VARCHAR2 | Y | Descric?o da condic?o para a formula |

---

## DBAMV.ITPRE_REMESSA_FFCV
> Tabela de Itens da Pre-remessa para criac?o de Remessas em tela unificada.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRE_REMESSA | NUMBER | N | Codigo da pre-remessa. |
| 2 | CD_ATENDIMENTO | NUMBER | Y | Codigo do atendimento. |
| 3 | CD_CONTA | NUMBER | Y | Codigo da conta (inicialmente apenas ambulatorial). |
| 4 | TP_CONTA | VARCHAR2 | Y | Tipo da conta A-ambulatorial ou H-hospitalar (inicialmente apenas ambulatorial). |
| 5 | DH_REGISTRO | DATE | Y | Data e Hora em que a conta foi vinculada a pre-remessa. |
| 6 | CD_USUARIO | VARCHAR2 | Y | Usuario que vinculou a conta a pre-remessa. |

---

## DBAMV.MEDICAMENTOS_ANTINEOPLASICOS
> Medicamentos Antineoplasicos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MEDICAMENTO | NUMBER | N | Código do medicamento |
| 2 | DS_MEDICAMENTO | VARCHAR2 | N | Descrição do medicamento |
| 3 | DT_VALIDADE_INICIAL | DATE | N |  |
| 4 | DT_VALIDADE_FINAL | DATE | Y |  |

---

## DBAMV.MEDICAMENTO_MEXICO
> Tabela da Norma 24 com os medicamentos do CATÁLOGO MEDICAMENTOS Da Norma 24 do México

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MEDICAMENTO_MEXICO | NUMBER | N | Chave primária da tabela |
| 2 | CD_MEDICAMENTO_EXTERNO | VARCHAR2 | N |  |
| 3 | NM_MEDICAMENTO | VARCHAR2 | N | Nome do Medicamento no CATÁLOGO MEDICAMENTOS Da Norma 24 do México |
| 4 | DS_DESCRICAO_MEDICAMENTO | VARCHAR2 | Y | Desrcriçao do Medicamento no CATÁLOGO MEDICAMENTOS Da Norma 24 do México |
| 5 | DS_QUANTIDADE | VARCHAR2 | Y | Quantidade do Medicamento no CATÁLOGO MEDICAMENTOS Da Norma 24 do México |
| 6 | DS_PRESENTACAO | VARCHAR2 | Y | Apresentação do Medicamento no CATÁLOGO MEDICAMENTOS Da Norma 24 do México |
| 7 | DS_GRUPO_TERAPEUTICO | VARCHAR2 | Y | Grupo terapeutico do Medicamento no CATÁLOGO MEDICAMENTOS Da Norma 24 do México |
| 8 | TP_INSUMO | VARCHAR2 | Y | tipo de Insumo do Medicamento no CATÁLOGO MEDICAMENTOS Da Norma 24 do México |
| 9 | DS_NIVEL_ATENCAO | VARCHAR2 | Y | Nível de Antenção do Medicamento no CATÁLOGO MEDICAMENTOS Da Norma 24 do México |
| 10 | DS_ANO_EDICAO | VARCHAR2 | Y | Ano de Edição do Medicamento no CATÁLOGO MEDICAMENTOS Da Norma 24 do México |
| 11 | NR_ATUALIZACAO | VARCHAR2 | Y | Número da Atualização do Medicamento no CATÁLOGO MEDICAMENTOS Da Norma 24 do México |

---

## DBAMV.PED_LAB_DETALHES_CALC
> Tabela de sub grupos dos Itens de Prescrição

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PED_LAB | NUMBER | N | Código do pedido |
| 2 | NR_VOLUME | NUMBER | Y | Volume do Material coletado |
| 3 | NR_TEMPO | NUMBER | Y | Tempo de Análise do Material coletado |

---

## DBAMV.PRESCRICAO_DIETA
> Armazena as prescric?es dieteticas do paciente

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRESCRICAO_DIETA | NUMBER | N | Codigo da prescric?o da Dieta |
| 2 | CD_ATENDIMENTO | NUMBER | N |  |
| 3 | SN_ATIVA | VARCHAR2 | N | Indicador de Dieta Ativa |
| 4 | DT_PRESCRICAO_DIETA | DATE | N | Data de Prescric?o da Dieta |
| 5 | DT_VALIDADE_DIETA | DATE | Y | Data de Validade da Dieta |
| 6 | VL_CALORIAS | NUMBER | N | Valor Total de Calorias da Dieta no Dia. |

---

## DBAMV.PRESCRICAO_MEDICA_VIA
> Controle de vias impressas de prescric?es medicas.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRESCRICAO_MEDICA_VIA | NUMBER | N | Chave primaria da tabela. |
| 2 | CD_PRE_MED | NUMBER | N | Codigo (chave) da prescric?o medica. |
| 3 | NR_VIA | NUMBER | N | Numero da via inicial impressa. |
| 4 | QT_VIAS | NUMBER | N | Quantidade de vias solicitadas / impressas. |
| 5 | DH_IMPRESSAO | DATE | N | Data da solicitac?o de impress?o. |
| 6 | NM_USUARIO | VARCHAR2 | N | Nome do usuario conectado ao banco que solicitou a impress?o. |
| 7 | DS_MODO | VARCHAR2 | Y | Modo de impress?o solicitado: grafico ou caracter. |
| 8 | DS_TIPO | VARCHAR2 | Y | Tipo de dispositivo selecionado: tela, impressora, arquivo ou e-mail. |
| 9 | NM_DESTINO | VARCHAR2 | Y | Nome do destino do relatorio: impressora ou arquivo. |

---

## DBAMV.PRESCRICAO_PADRAO_SCR_SINTOMA
> Tabela de relacionamento entre PRE_PAD e SCR_SINTOMA_AVALIACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRE_PAD | NUMBER | N | Codigo da prescric?o padr?o |
| 2 | CD_SINTOMA_AVALIACAO | NUMBER | N | Codigo do sintoma |

---

## DBAMV.PRE_MED

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRE_MED | NUMBER | N |  |
| 2 | CD_ATENDIMENTO | NUMBER | N |  |
| 3 | CD_PRESTADOR | NUMBER | N |  |
| 4 | CD_UNID_INT | NUMBER | Y |  |
| 5 | DT_PRE_MED | DATE | N |  |
| 6 | HR_PRE_MED | DATE | N |  |
| 7 | DS_EVOLUCAO | LONG | Y |  |
| 8 | CD_ID_USUARIO | NUMBER | N |  |
| 9 | CD_SOLSAI_PRO | NUMBER | Y |  |
| 10 | SN_FECHADO | VARCHAR2 | Y |  |
| 11 | SN_RN | VARCHAR2 | N |  |
| 12 | DT_VALIDADE | DATE | N |  |
| 13 | FL_PRINCIPAL | VARCHAR2 | N |  |
| 14 | FL_IMPRESSO | VARCHAR2 | N |  |
| 15 | TP_PRE_MED | VARCHAR2 | N |  |
| 16 | NM_USUARIO | VARCHAR2 | Y |  |
| 17 | CD_SETOR | NUMBER | Y |  |
| 18 | DT_REFERENCIA | DATE | N |  |
| 19 | SN_TRANSCRICAO | VARCHAR2 | N |  |
| 20 | DH_CRIACAO | DATE | Y |  |
| 21 | DH_IMPRESSAO | DATE | Y |  |
| 22 | CD_IMPORTA_REG_FAT | NUMBER | Y |  |
| 23 | CD_IMPORTA_REG_AMB | NUMBER | Y |  |
| 24 | CD_PRE_PAD | NUMBER | Y |  |
| 25 | CD_OBJETO | NUMBER | Y | Codigo do Objeto - FK de PAGU_OBJETO |
| 26 | NM_USUARIO_AUTORIZADOR | VARCHAR2 | Y | Usuario responsavel para autorizac?o da prescric?o. |
| 27 | CD_REGISTRO_CLINICO | NUMBER | Y | Especifica o RegistroClinico que foi realizado no atendimento |
| 28 | CD_PRE_MED_TRATMT | NUMBER | Y | Primary key da prescric?o pai de tratamento |
| 29 | SN_ALTERA_PROTOCOLO_TRATAMENTO | VARCHAR2 | Y | Se o protocolo da prescric?o de tratamento foi alterado durante a prescric?o |
| 30 | SN_PRESCRICAO_DIA_SEGUINTE | VARCHAR2 | N | Se a prescric?o e uma prescric?o criada para o dia seguinte |
| 31 | CD_USUARIO_CONVERSAO_PRESCRIC | VARCHAR2 | Y | Usuario que fez a convers?o da prescric?o do dia seguinte para uma prescric?o medica |
| 32 | DH_CONVERSAO_PRESCRICAO | DATE | Y | Data da convers?o da prescric?o futura para prescric?o medica |
| 33 | NM_PRESCRICAO | VARCHAR2 | Y | Nome da Prescric?o para facil identificac?o no historico |
| 34 | CD_DOCUMENTO_CLINICO | NUMBER | Y | O c??digo do documento cl?-nico, setado via trigger (fk) |
| 35 | CD_TRATAMENTO | NUMBER | Y | O c??digo da sess?#o do tratamento |
| 36 | NR_CICLO | NUMBER | Y | Numero do ciclo de tratamento |
| 37 | NR_SESSAO | NUMBER | Y | Numero da sess?#o do tratamento |
| 38 | CD_PRE_MED_INTEGRA | VARCHAR2 | Y | Codigo de-para da prescric?o medica |
| 39 | CD_TP_SOLICITACAO | NUMBER | Y | Coluna que informa qual o tipo de solicitação foi selecionado no momento da criação da prescrição... |
| 40 | SN_COPIADA | VARCHAR2 | Y | Indica se a prescrição foi copiada |
| 41 | NR_PERCENTUAL_REDUCAO_QUANTD | NUMBER | Y | Indica o percentual a ser usado na redução da quantidade dos itens |
| 42 | DS_JUSTIFICATIVA_REDUCAO_QTD | VARCHAR2 | Y | Justificativa para quando for marcado a redução da quantidade na tela de prescrição de tratamento |
| 43 | TP_AGENDAMENTO | VARCHAR2 | Y | TIPO DA SOLICITAÇÃO DE AGENDAMENTO. PODE SER QUI = QUIMIOTERAPIA, RAD = RADIOTERAPIA, FAR = FARMÁ... |
| 44 | SN_INTERROMPER_SESSAO | VARCHAR2 | Y | Informa se a sessÃ£o de tratamento foi interrompida. |
| 45 | DS_JUSTIFICATIVA_INTERROMPER | VARCHAR2 | Y | Justificativa informada ao interromper uma sessÃ£o de tratamento via tela de checagem. |
| 46 | SN_INTERCORRENCIA | VARCHAR2 | Y |  |
| 47 | DS_JUSTIFICATIVA_SESSAO | VARCHAR2 | Y |  |
| 48 | SN_MEDICAMENTO_ADMINISTRADO | VARCHAR2 | Y |  |
| 49 | SN_CONCO_RADIOTERAPIA | VARCHAR2 | Y | Se a PRE_MED é concomitante (realizado ao mesmo tempo) com a radioterapia ou não |
| 50 | DS_TOKEN_EXAMES_ONLINE | VARCHAR2 | Y | Armazenamento do token ou URL para redirecionamento para o sistema de exames online da Unimed POA |
| 51 | CD_COLETA_SINAL_VITAL | NUMBER | Y | Codigo da coleta de sinal vital |
| 52 | DT_INTEGRA | DATE | Y |  |
| 53 | CD_SEQ_INTEGRA | NUMBER | Y |  |

---

## DBAMV.PRE_MED_CICLO
> Tabela de Ciclo Por Prescric?o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRE_MED | NUMBER | N | Codigo da Prescric?o |
| 2 | NR_CICLO | NUMBER | N | Numero do Ciclo |
| 3 | CD_TRATAMENTO | NUMBER | N | Codigo do Tratamento |

---

## DBAMV.PRE_MED_CONCOMITANTE
> Tabela responsável por armazenar as prescrições médicas de tratamento que são concomitantes

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRE_MED_CONCOMITANTE | NUMBER | N | Código sequencial da tabela |
| 2 | CD_PRE_MED | NUMBER | N | Código da prescrição médica (FK) |
| 3 | CD_PRE_MED_CONCO | NUMBER | N | Código da prescrição médica (FK) que é concomitante |

---

## DBAMV.PRE_MED_EXAME
> Tabela responsável por armazenar os exames do protocolo, que foram selecionados na prescrição de tratamento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRE_MED_EXAME | NUMBER | N | Código sequencial da tabela |
| 2 | CD_EXAME_PROTOCOLO | NUMBER | N | Código da EXAME_PROTOCOLO (FK) |
| 3 | CD_PRE_MED | NUMBER | N | Código da PRE_MED (FK) |
| 4 | DS_VERIFICAR_EXAME | VARCHAR2 | Y |  |

---

## DBAMV.PRE_MED_INTERCORRENCIA
> Tabela responsÃ¡vel por armazenar as prescriÃ§Ãµes mÃ©dicas de tratamento que sÃ£o intercorrentes

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRE_MED_INTERCORRENCIA | NUMBER | N | CÃ³digo sequencial da tabela |
| 2 | CD_PRE_MED | NUMBER | N | CÃ³digo da prescriÃ§Ã£o mÃ©dica (FK) |
| 3 | CD_USUARIO | VARCHAR2 | N | CÃ³digo do usuario (FK) |
| 4 | DS_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 5 | DH_INCLUSAO | DATE | Y |  |

---

## DBAMV.PRE_MED_RESPOSTA_FORMULA
> Tabela que armazena as respostas dadas a cada prescrição, que foi usado para calcular a dose dos itens prescritos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRE_MED_RESPOSTA_FORMULA | NUMBER | N | Chave primária |
| 2 | CD_PRE_MED | NUMBER | N | Código da prescrição que estas respostas foram usadas. É preenchido automaticamente pelo sistema |
| 3 | CD_PERGUNTA | NUMBER | N | Código da pergunta. É preenchido automaticamente pelo sistema |
| 4 | CD_RESPOSTA | NUMBER | Y | Resposta escolhida na lista de possibilidades. Quando a pergunte tiver lista de respostas possíveis |
| 5 | VL_RESPOSTA | NUMBER | Y | Quando a pergunta for do tipo numérico e não tenha lista de respostas possíveis |
| 6 | NM_TITULO_PERGUNTA | VARCHAR2 | Y | Texto que sera exibido ao lado da pergunta na barra de titulo da prescricao de tratamento. Caso n... |

---

## DBAMV.PRE_MED_TRATAMENTO
> Tabela de Configurac?es de Tratamento Oncologico

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRE_MED | NUMBER | N | Codigo da Prescric?o Medica |
| 2 | CD_PROTOCOLO | NUMBER | Y | Codigo do Protocolo que vai ser utilizado no tratamento para essa prescric?o |
| 3 | CD_TRATAMENTO | NUMBER | Y | Codigo do Tratamento |
| 4 | NR_CICLO | NUMBER | Y | Numero Inicial do Ciclo |
| 5 | NR_SESSAO | NUMBER | Y | Numero Inicial da Sess?o |
| 6 | SN_RETORNO | VARCHAR2 | Y | S=Cria um novo Ciclo   N=Utiliza um Ciclo ja existente |
| 7 | DT_CONTAGEM | DATE | Y | Data da Contagem do Ciclo |
| 8 | SN_PROTOCOLO_POR_CICLO | VARCHAR2 | Y | Se e utilizado Ciclo utilizado possui apenas uma sess?o |
| 9 | NR_PROTOCOLO_QT_CICLO | NUMBER | Y | Quantidade de Ciclos do Protocolo |
| 10 | SN_CRIA_NOVO_TRATAMENTO | VARCHAR2 | Y | S= Cria novo Tratamento    N= Utiliza um tratamento ja existente |
| 11 | CD_DIAGNOSTICO_ATENDIME | NUMBER | Y | Diagnostico do Atendimento |
| 12 | CD_CONTROLE_EXTERNO | VARCHAR2 | Y |  |
| 13 | CD_USUARIO | VARCHAR2 | Y | Usuario responsavel pela prescric?o |

---

## DBAMV.PRE_PAD

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRE_PAD | NUMBER | N |  |
| 2 | DS_PRE_PAD | VARCHAR2 | N |  |
| 3 | CD_PRESTADOR | NUMBER | Y |  |
| 4 | TP_PRE_PAD | VARCHAR2 | N |  |
| 5 | SN_ATIVO | VARCHAR2 | N |  |
| 6 | CD_PROTOCOLO | NUMBER | Y |  |
| 7 | NR_DIA | NUMBER | Y |  |
| 8 | CD_MULTI_EMPRESA | NUMBER | Y | Codigo de Multi Empresa |
| 9 | CD_OBJETO | NUMBER | Y | Tipo de Objeto relacionado |
| 10 | CD_SEQ_INTEGRA | NUMBER | Y | Sequence do sistema terceiro |
| 11 | DS_ESPECIALIDADE | VARCHAR2 | Y | Descricao da especialidade recebida da Elsevier |
| 12 | DS_PALAVRA_CHAVE | VARCHAR2 | Y | Palavras chaves oriundas da Elsevier |
| 13 | DT_INTEGRA | DATE | Y | Data de integração do registro |

---

## DBAMV.PRE_PAD_CID
> Tabela que armazena códigos identificadores de prescrição padrão

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRE_PAD_CID | NUMBER | N | Código sequencial do registro |
| 2 | CD_CID | VARCHAR2 | Y | Código identificador |
| 3 | CD_PRE_PAD | NUMBER | Y | Código de prescrição padrão |

---

## DBAMV.PRE_PAD_PROT
> Tabela que armazena os protocolos das prescrições padrões

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRE_PAD_PROT | NUMBER | N | Código sequencial do registro |
| 2 | CD_PRE_PAD | NUMBER | N | Código chave da pre_pad |
| 3 | CD_PROTOCOLO | NUMBER | Y | Código chave da protocolo |

---

## DBAMV.PRE_PAD_RELACAO
> Tabela que armazena as relacoes das prescrições padrões

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRE_PAD_RELACAO | NUMBER | N | Código sequencial do registro |
| 2 | CD_PRE_PAD | NUMBER | N | Codigo chave da pre_pad |
| 3 | DS_PRE_PAD | VARCHAR2 | Y | Descricao da prescrição padrão |
| 4 | DS_GRUPO | VARCHAR2 | Y | Descricao do grupo |
| 5 | DS_SUB_GRUPO | VARCHAR2 | Y | Descricao do subgrupo |
| 6 | CD_ITPRE_PAD | NUMBER | Y | Código do Item da prescrição padrão |
| 7 | DS_ITPRE_PAD | VARCHAR2 | Y | Descricaodo Item da prescrição padrão |
| 8 | NR_SEQ | NUMBER | Y | Número sequencial |
| 9 | TP_REGISTRO | VARCHAR2 | N | Tipo de registro: V - Vínculo, T - Text, G - Grupo, S - SubGrupo, M - Módulo, P - Prepad |
| 10 | DS_TEXT | VARCHAR2 | Y | Texto |
| 11 | DS_ESPECIALIDADE | VARCHAR2 | Y | Descrição da Especialidade |
| 12 | DS_CHAVE | VARCHAR2 | Y | Descrição da chave |
| 13 | DS_SETOR | VARCHAR2 | Y | Descrição do setor |
| 14 | LO_INFORMACAO | CLOB | Y | URLs do infobutton |
| 15 | DS_GUIDANCEURL | VARCHAR2 | Y | Descrição das URLs do infobutton |
| 16 | LO_URL_QM | CLOB | Y | Descrição dos QualityMed |
| 17 | DS_VINCULO_MODULO | VARCHAR2 | Y | Descrição do vínculo do módulo |
| 18 | CD_PRE_PAD_PAI | NUMBER | Y | Código pre_pad_pai |
| 19 | SN_MODULO | VARCHAR2 | N | Indicador do módulo |
| 20 | CD_SEQ_INTEGRA | NUMBER | Y | Código da sequence de inegração |
| 21 | SN_PRECHECKED | VARCHAR2 | N | Indicador de susgestão do medicamento |
| 22 | LO_URL_SOURCE | CLOB | Y | URL da prescrição padrão |
| 23 | LO_URL_SOURCEQM | CLOB | Y | URL da prescrição padrão QualityMed |
| 24 | SN_URGENTE | VARCHAR2 | Y | S - Prescricao padrão é URGENTE. N - Prescricao padrão não é URGENTE. |
| 25 | SN_CONTINUO | VARCHAR2 | Y | S - Prescricao padrão é CONTINUO. N - Prescricao padrão não é CONTINUO. |
| 26 | SN_CRITERIO_MEDICO | VARCHAR2 | Y | S - Prescricao padrão tem CRITERIO MEDICO. N - Prescricao padrão não tem CRITERIO MEDICO. |

---

## DBAMV.PRE_PAD_SETOR
> Tabela de Prescric?o Padr?o por Setor

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRE_PAD_SETOR | NUMBER | N | Codigo da Prescric?o Padr?o por Setor |
| 2 | CD_PRE_PAD | NUMBER | N | Codigo da Prescric?o Padr?o |
| 3 | CD_SETOR | NUMBER | N | Codigo do Setor |

---

## DBAMV.PRE_PAD_VERSAO
> Tabela que armazena as versões das prescrições padrões

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRE_PAD_VERSAO | NUMBER | N | Código da versão da prescrição padrão |
| 2 | DS_PREPAD | VARCHAR2 | Y | Descrição da prescrição padrão |
| 3 | CD_VERSAO | NUMBER | Y | Código da versão |
| 4 | DT_VERSAO | DATE | Y | Data da versão |

---

## DBAMV.TRANSPORTADORA_ROMANEIO
> Tabela que guarda o cadastro das Transportadoras que serão utilizadss no processo de Romaneio de Medicamentos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TRANSPORTADORA | NUMBER | N | Guarda o código da Transportadora. Alimentado pela sequence SEQ_TRANSPORTADORA_ROMANEIO. |
| 2 | NM_RAZAO_SOCIAL | VARCHAR2 | N | Razão Social da Transportadora. |
| 3 | NM_FANTASIA | VARCHAR2 | N | Nome Fantasia da Transportadora. |
| 4 | TP_PESSOA | VARCHAR2 | N | Informa se é Pessoa Física ou Juridica. |
| 5 | NR_CGC_CPF | NUMBER | N | Guarda o CGC/CPF da Transportadora/Transportador |
| 6 | NR_INSCRICAO_ESTADUAL | VARCHAR2 | Y | Guarda o Numero da Inscrição Estadual da Transportadora |
| 7 | NR_TELEFONE_1 | VARCHAR2 | Y | Numero de Telefone para contato |
| 8 | NR_TELEFONE_2 | VARCHAR2 | Y | Numero de Telefone para contato |
| 9 | DT_CADASTRO | DATE | N | Data de Cadastro da Transportadora |
| 10 | DS_EMAIL | VARCHAR2 | Y | E-mail do Transportadora |
| 11 | DS_WEB_SITE | VARCHAR2 | Y | Site da Transportadora |
| 12 | DS_TAMANHO_FROTA | VARCHAR2 | Y | Descrição do Tamanho da Frota da Transportadora |
| 13 | TP_FROTA | VARCHAR2 | N | Tipo de Frota P-Propria, T-Terceira ou M-Mista |
| 14 | TP_SITUACAO | VARCHAR2 | N | Situação do Cadastro se está A-Ativo ou I-Inativo |
| 15 | NR_CEP | VARCHAR2 | Y | Número do CEP do endereço do Motorista |
| 16 | DS_MUNICIPIO | VARCHAR2 | Y | Descrição do Município |
| 17 | DS_BAIRRO | VARCHAR2 | Y | Descrição do Bairro |
| 18 | DS_ENDERECO | VARCHAR2 | Y | Descrição do Endereço |
| 19 | NR_ENDERECO | VARCHAR2 | Y | Número do Endereço |
| 20 | CD_UF | VARCHAR2 | Y | Unidade Federativa do Endereço do Paciente |
| 21 | DS_COMPLEMENTO | VARCHAR2 | Y | Complemento do Endereço |
| 22 | DS_OBSERVACAO | VARCHAR2 | Y | Observações do Cadastro |
| 23 | DS_MOTIVO_INATIVACAO | VARCHAR2 | Y | Motivo da Inativação |

---

## DBAMV.VACINA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_VACINA | NUMBER | N |  |
| 2 | DS_VACINA | VARCHAR2 | N |  |
| 3 | DS_RESUMO_VACINA | VARCHAR2 | N |  |
| 4 | CD_VACINA_PADRAO | VARCHAR2 | Y | Cogido padr?o da vacina |
| 5 | DS_BULARIO | VARCHAR2 | Y | Bulario da vacina |
| 6 | SN_ATIVO | VARCHAR2 | Y | Verificador se a vacina esta ativa ou n?o |

---

## DBAMV.VACINA_PAC

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_VACINA_PAC | NUMBER | N |  |
| 2 | DT_VACINACAO | DATE | N |  |
| 3 | CD_VACINA | NUMBER | N |  |
| 4 | CD_PACIENTE | NUMBER | N |  |
| 5 | DS_OBSERVACAO | VARCHAR2 | Y | Observacao referente a vacina do paciente |

---

## DBAMV.VIA_ADMINISTRACAO
> Tabela de Cadastro de Vias de Administrac?o de Medicamentos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_VIA_ADMINISTRACAO | NUMBER | N | Codigo da Via de Administrac?o |
| 2 | DS_VIA_ADMINISTRACAO | VARCHAR2 | N | Codigo da Via de Administrac?o |

---

## HMED.HMED_LOG

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | OBSERVACAO | VARCHAR2 | Y |  |
| 2 | DATA | DATE | Y |  |
| 3 | TIPO | NUMBER | Y |  |

---

## HMED.HMED_LOG_ERRO_TRIGGER

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | DESCRICAO | VARCHAR2 | N |  |
| 3 | DATAHORA | DATE | N |  |

---

## HMED.HMED_NOTIFICACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | DATA | DATE | N |  |
| 3 | TIPO | NUMBER | N |  |
| 4 | TEXTO | VARCHAR2 | Y |  |
| 5 | USUARIOID | VARCHAR2 | Y |  |
| 6 | USUARIONOME | VARCHAR2 | Y |  |
| 7 | CD_PACIENTE | NUMBER | Y |  |
| 8 | CD_ITPED_RX | NUMBER | Y |  |
| 9 | NOTIFICAR | NUMBER | N |  |
| 10 | DATANOTIFICAR | VARCHAR2 | Y |  |
| 11 | SINC | NUMBER | N |  |
| 12 | CD_PRESTADOR | NUMBER | Y |  |
| 13 | TITULO | VARCHAR2 | Y |  |
| 14 | CD_ATENDIMENTO | NUMBER | Y |  |

---

## HMED.HMED_PRESTADOR_EQUIPE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRESTADOR_EQUIPE | NUMBER | N |  |
| 2 | CD_PRESTADOR | NUMBER | N |  |

---

## HMED.HMED_PRESTADOR_RECURSO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRESTADOR | NUMBER | N |  |
| 2 | CD_RECURSO_CENTRAL | NUMBER | N |  |

---

## HMED.HMED_PRESTADOR_SERVICO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SERVICO | NUMBER | N |  |
| 2 | CD_PRESTADOR | NUMBER | N |  |

---

## HMED.HMED_PRESTADOR_UNID_INTERNADO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRESTADOR | NUMBER | N |  |
| 2 | CD_UNID_INT | NUMBER | N |  |

---

## HMED.VAHMED_AGENDA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PACIENTE | NUMBER | Y |  |
| 2 | NM_PACIENTE | VARCHAR2 | Y |  |
| 3 | DT_AGENDA | DATE | Y |  |
| 4 | HORA | VARCHAR2 | Y |  |
| 5 | DS_ITEM_AGENDAMENTO | VARCHAR2 | Y |  |
| 6 | NM_CONVENIO | VARCHAR2 | Y |  |
| 7 | TP_SEXO | VARCHAR2 | Y |  |
| 8 | CD_PRESTADOR | NUMBER | Y |  |
| 9 | DS_RECURSO_CENTRAL | VARCHAR2 | Y |  |
| 10 | CD_ATENDIMENTO | NUMBER | Y |  |
| 11 | DT_NASCIMENTO | DATE | Y |  |
| 12 | DS_MULTI_EMPRESA | VARCHAR2 | Y |  |
| 13 | DS_CONSULTORIO | VARCHAR2 | Y |  |
| 14 | EMPRESA | CHAR | Y |  |
| 15 | IDCID | VARCHAR2 | Y |  |
| 16 | CID | VARCHAR2 | Y |  |

---

## HMED.VAHMED_LISTA_EXAMES

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | VARCHAR2 | N |  |
| 3 | DATASOLICITADO | DATE | N |  |
| 4 | DATA | DATE | Y |  |
| 5 | IDPACIENTE | NUMBER | N |  |
| 6 | IDATENDIMENTO | NUMBER | N |  |

---

## HMED.VHMED_AGENDA_PRONTUARIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DATA | DATE | Y |  |
| 2 | HORA | VARCHAR2 | Y |  |
| 3 | CONVENIO | VARCHAR2 | Y |  |
| 4 | DATANASCIMENTO | DATE | Y |  |
| 5 | IDPACIENTE | NUMBER | Y |  |
| 6 | NOME | VARCHAR2 | Y |  |
| 7 | SEXOS | VARCHAR2 | Y |  |
| 8 | TELEFONE | VARCHAR2 | Y |  |
| 9 | TIPO | VARCHAR2 | Y |  |
| 10 | TIPOPROCEDIMENTO | VARCHAR2 | Y |  |
| 11 | IDPRESTADOR | NUMBER | Y |  |
| 12 | IDATENDIMENTO | NUMBER | Y |  |
| 13 | EMPRESA | CHAR | Y |  |
| 14 | RECURSO | VARCHAR2 | Y |  |
| 15 | IDCID | VARCHAR2 | Y |  |
| 16 | CID | VARCHAR2 | Y |  |

---

## HMED.VHMED_APRAZAMENTO_MEDICAMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DATAHORAMEDICACAO | DATE | N |  |
| 2 | DATAHORACHECAGEM | DATE | N |  |
| 3 | IDITPREMED | NUMBER | N |  |

---

## HMED.VHMED_ARQUIVO_EXAMES

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | ARQUIVO | BLOB | Y |  |
| 3 | ARQUIVORTF | VARCHAR2 | Y |  |
| 4 | ARQUIVOLAUDO | BLOB | Y |  |
| 5 | ARQUIVOLAUDORTF | VARCHAR2 | Y |  |
| 6 | FORMATO | VARCHAR2 | Y |  |
| 7 | LINK | VARCHAR2 | Y |  |

---

## HMED.VHMED_ATENDIMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | DATAATENDIMENTO | DATE | N |  |
| 3 | TIPOATENDIMENTOS | VARCHAR2 | N |  |
| 4 | ORIGEM | VARCHAR2 | Y |  |
| 5 | CONVENIO | VARCHAR2 | Y |  |
| 6 | IDPACIENTE | NUMBER | N |  |
| 7 | IDPRESTADOR | NUMBER | Y |  |
| 8 | IDLEITO | NUMBER | Y |  |
| 9 | LEITO | VARCHAR2 | Y |  |

---

## HMED.VHMED_CIRURGIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | PROCEDIMENTO | VARCHAR2 | N |  |
| 3 | DATACIRURGIA | DATE | N |  |
| 4 | PROFISSIONAL | VARCHAR2 | N |  |
| 5 | TEMDESCRICAOCIRURGICA | NUMBER | Y |  |
| 6 | IDPACIENTE | NUMBER | Y |  |
| 7 | IDATENDIMENTO | NUMBER | Y |  |

---

## HMED.VHMED_CORPOCLINICO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | IDPRESTADOR | NUMBER | N |  |
| 2 | NOME | VARCHAR2 | N |  |
| 3 | ESPECIALIDADEPRINCIPAL | VARCHAR2 | N |  |
| 4 | CELULARES | VARCHAR2 | Y |  |

---

## HMED.VHMED_DESCRICAOCIRURGICA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | IDAVISOCIRURGIA | NUMBER | N |  |
| 2 | DATAAGENDAMENTO | DATE | Y |  |
| 3 | DATAREALIZACAO | DATE | Y |  |
| 4 | HORAINICIO | VARCHAR2 | Y |  |
| 5 | HORAFIM | VARCHAR2 | Y |  |
| 6 | DESCRICAO | LONG | Y |  |

---

## HMED.VHMED_DOCUMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | ARQUIVO | BLOB | N |  |
| 3 | NOME | VARCHAR2 | Y |  |
| 4 | FORMATO | VARCHAR2 | N |  |

---

## HMED.VHMED_DOCUMENTO_DIGITAL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | Y |  |
| 2 | ARQUIVO | BLOB | Y |  |
| 3 | NOME | VARCHAR2 | Y |  |
| 4 | FORMATO | CHAR | Y |  |

---

## HMED.VHMED_ESPECIALIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | DESCRICAO | VARCHAR2 | N |  |

---

## HMED.VHMED_EVOLUCAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | PROFISSIONAL | VARCHAR2 | N |  |
| 3 | ESPECIALIDADEPRINCIPAL | VARCHAR2 | N |  |
| 4 | DATAHORA | DATE | Y |  |
| 5 | DESCRICAO | LONG | Y |  |
| 6 | IDPACIENTE | NUMBER | N |  |
| 7 | IDATENDIMENTO | NUMBER | N |  |
| 8 | EVO1 | VARCHAR2 | Y |  |
| 9 | EVO2 | VARCHAR2 | Y |  |
| 10 | EVO3 | VARCHAR2 | Y |  |

---

## HMED.VHMED_EXAME_LABORATORIAL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | IDPACIENTE | NUMBER | N |  |
| 2 | IDATENDIMENTO | NUMBER | N |  |
| 3 | ID | NUMBER | N |  |
| 4 | DATA | DATE | Y |  |
| 5 | EXAME | VARCHAR2 | N |  |
| 6 | MATERIAL | VARCHAR2 | Y |  |

---

## HMED.VHMED_EXA_LAB_RESULTADO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDEXAME | NUMBER | N |  |
| 3 | NOME | VARCHAR2 | N |  |
| 4 | RESULTADO | VARCHAR2 | Y |  |
| 5 | RANGE | VARCHAR2 | Y |  |
| 6 | COR | VARCHAR2 | Y |  |

---

## HMED.VHMED_ITENS_PRESCRICAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | VARCHAR2 | N |  |
| 3 | DESCRICAO | VARCHAR2 | Y |  |
| 4 | IDATENDIMENTO | NUMBER | N |  |
| 5 | IDPACIENTE | NUMBER | N |  |

---

## HMED.VHMED_LISTA_ARQUIVO_EXAMES

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | VARCHAR2 | N |  |
| 3 | DATASOLICITADO | DATE | N |  |
| 4 | DATA | DATE | Y |  |
| 5 | IDPACIENTE | NUMBER | N |  |
| 6 | IDATENDIMENTO | NUMBER | N |  |
| 7 | TEMDOCUMENTO | NUMBER | Y |  |

---

## HMED.VHMED_LISTA_DOCUMENTOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | VARCHAR2 | Y |  |
| 2 | IDATENDIMENTO | NUMBER | Y |  |
| 3 | IDPACIENTE | NUMBER | Y |  |
| 4 | DOCUMENTO | VARCHAR2 | Y |  |
| 5 | TABELA | VARCHAR2 | Y |  |

---

## HMED.VHMED_MEDICAMENTO_PACIENTE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NOME | VARCHAR2 | N |  |
| 2 | VIA | VARCHAR2 | Y |  |
| 3 | DOSE | VARCHAR2 | Y |  |
| 4 | UNIDADE | VARCHAR2 | Y |  |
| 5 | FREQUENCIA | VARCHAR2 | Y |  |
| 6 | SITUACAO | VARCHAR2 | Y |  |
| 7 | IDATENDIMENTO | NUMBER | N |  |
| 8 | IDPACIENTE | NUMBER | N |  |
| 9 | IDITPREMED | NUMBER | N |  |
| 10 | DATAHORAMEDICACAO | VARCHAR2 | Y |  |
| 11 | DATAHORACHECAGEM | VARCHAR2 | Y |  |

---

## HMED.VHMED_MEUS_PACIENTES

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | IDPACIENTE | NUMBER | Y |  |
| 2 | NOME | VARCHAR2 | Y |  |
| 3 | DATANASCIMENTO | DATE | Y |  |
| 4 | SEXOS | VARCHAR2 | Y |  |
| 5 | TELEFONE | VARCHAR2 | Y |  |
| 6 | TIPOSANGUINEO | VARCHAR2 | Y |  |
| 7 | IDPRESTADOR | NUMBER | Y |  |

---

## HMED.VHMED_NOTIFICACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | IDNOTIFICACAO | NUMBER | N |  |
| 2 | DATA | DATE | Y |  |
| 3 | TIPO | NUMBER | N |  |
| 4 | TEXTO | VARCHAR2 | Y |  |
| 5 | SINC | NUMBER | N |  |
| 6 | IDPRESTADOR | NUMBER | Y |  |

---

## HMED.VHMED_PACIENTE_ALERGIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDPACIENTE | NUMBER | N |  |
| 3 | DESCRICAO | VARCHAR2 | N |  |

---

## HMED.VHMED_PACIENTE_ATENDIMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | IDPACIENTE | NUMBER | N |  |
| 2 | NOME | VARCHAR2 | N |  |
| 3 | DATANASCIMENTO | DATE | Y |  |
| 4 | SEXOS | VARCHAR2 | N |  |
| 5 | IDATENDIMENTO | NUMBER | N |  |
| 6 | DATAATENDIMENTO | DATE | N |  |
| 7 | TIPOATENDIMENTO | VARCHAR2 | N |  |
| 8 | LEITO | VARCHAR2 | Y |  |
| 9 | RESPONSAVEL | VARCHAR2 | Y |  |
| 10 | TIPOSANGUINEO | VARCHAR2 | Y |  |
| 11 | CONVENIO | VARCHAR2 | Y |  |
| 12 | UNIDADEATENDIMENTO | VARCHAR2 | Y |  |
| 13 | TELEFONE | VARCHAR2 | Y |  |
| 14 | CATEGORIA | VARCHAR2 | Y |  |
| 15 | CORBOX | VARCHAR2 | Y |  |
| 16 | IDCID | VARCHAR2 | Y |  |
| 17 | CID | VARCHAR2 | Y |  |

---

## HMED.VHMED_PAINEL_COVID

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | SETOR | VARCHAR2 | Y |  |
| 2 | CONFIRMADOS | NUMBER | Y |  |
| 3 | SUSPEITOS | NUMBER | Y |  |
| 4 | TOTALCONFIRMADOS | NUMBER | Y |  |
| 5 | OBITOS | NUMBER | Y |  |

---

## HMED.VHMED_PERFIL_MEDICO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | IDPRESTADOR | NUMBER | N |  |
| 2 | NOME | VARCHAR2 | N |  |
| 3 | CONSELHO | VARCHAR2 | N |  |
| 4 | REGISTRO | VARCHAR2 | Y |  |
| 5 | UFCONSELHO | VARCHAR2 | Y |  |
| 6 | IDESPECIALIDADE | NUMBER | N |  |
| 7 | ESPECIALIDADEPRINCIPAL | VARCHAR2 | N |  |
| 8 | ESPECIALIDADES | VARCHAR2 | Y |  |
| 9 | EMAILS | VARCHAR2 | Y |  |
| 10 | TELEFONES | VARCHAR2 | Y |  |
| 11 | CELULARES | VARCHAR2 | Y |  |

---

## HMED.VHMED_PRESTADOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | VARCHAR2 | N |  |
| 3 | IDESPECIALIDADE | NUMBER | N |  |
| 4 | DESCRICAOESPECIALIDADE | VARCHAR2 | N |  |
| 5 | REGISTRO | VARCHAR2 | Y |  |
| 6 | IDUSUARIO | VARCHAR2 | N |  |
| 7 | NOMEUSUARIO | VARCHAR2 | N |  |

---

## HMED.VHMED_PROCEDIMENTOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | IDAVISOCIRURGIA | NUMBER | N |  |
| 2 | NOME | VARCHAR2 | N |  |

---

## HMED.VHMED_PROFISSIONAIS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NOME | VARCHAR2 | N |  |
| 2 | ESPECIALIDADE | VARCHAR2 | N |  |
| 3 | IDAVISOCIRURGIA | NUMBER | N |  |
| 4 | NR_ORDEM_APRESENTACAO | NUMBER | Y |  |

---

## HMED.VHMED_SINAIS_VITAIS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | IDPACIENTE | NUMBER | N |  |
| 2 | IDATENDIMENTO | NUMBER | Y |  |
| 3 | NOME | VARCHAR2 | Y |  |
| 4 | VALOR | NUMBER | Y |  |
| 5 | UNIDADE | VARCHAR2 | N |  |
| 6 | DATACOLETA | DATE | Y |  |
| 7 | IDCOLETA | NUMBER | N |  |
| 8 | ORDEM | NUMBER | Y |  |

---

## HMED.VHMED_TOKEN

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | LOGIN | VARCHAR2 | N |  |
| 2 | SENHA | VARCHAR2 | Y |  |
| 3 | SENHA2 | VARCHAR2 | Y |  |
| 4 | IDPRESTADOR | NUMBER | Y |  |
| 5 | ATIVO | VARCHAR2 | N |  |

---

## HMED.VHMED_USUARIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | LOGIN | VARCHAR2 | N |  |
| 2 | NOME | VARCHAR2 | N |  |
| 3 | EMAIL | VARCHAR2 | Y |  |
| 4 | REGISTRO | VARCHAR2 | Y |  |
| 5 | ESPECIALIDADE | VARCHAR2 | Y |  |
| 6 | CONSELHO | VARCHAR2 | N |  |
| 7 | SEXO | CHAR | Y |  |
| 8 | IDPRESTADOR | NUMBER | Y |  |

---

## MVCPOE.ACAO_COPIA_ITEM_PRESCRICAO
> REPRESENTA OS ITENS EXISTENTES NA(S) PRESCRIÇÃO(ÕES) COPIADA(S)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ACAO_COPIA_ITEM_PRESCRICAO | NUMBER | N | CHAVE PRIMÁRIA DA TABELA DOS ITENS EXISTENTES NA(S) PRESCRIÇÃO(ÕES) COPIADA(S) |
| 2 | CD_ACAO_COPIA_PRESCRICAO | NUMBER | N | CÓDIGO DA AÇÃO DE CÓPIA NO QUAL O ITEM ESTÁ CONTIDO |
| 3 | CD_PRESCRICAO_ORIGEM | NUMBER | N | CÓDIGO DA PRESCRIÇÃO DE ORIGEM |
| 4 | CD_PRESCRICAO_DESTINO | NUMBER | N | CÓDIGO DA PRESCRIÇÃO DE DESTINO |
| 5 | CD_ITEM_PRESCRICAO_ORIGEM | NUMBER | N | CÓDIGO DO ITEM DE PRESCRIÇÃO A SER COPIADO |
| 6 | CD_ITEM_PRESCRICAO_DESTINO | NUMBER | Y | CÓDIGO DO ITEM DE PRESCRIÇÃO CRIADO APÓS A CÓPIA |
| 7 | SN_COPIADO | NUMBER | N | INDICA SE O ITEM DE PRESCRIÇÃO FOI COPIADO |
| 8 | CD_ORIGEM | NUMBER | Y | 1 = ORIGEM PRESCRICAO HTML, 2 =ORIGEM PRESCRIÇÃO FLEX |

---

## MVCPOE.ACAO_COPIA_PRESCRICAO
> REPRESENTA UMA AÇÃO DE CÓPIA DE UMA OU MAIS PRESCRIÇÕES DA MESMA DATA DE REFERÊNCIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ACAO_COPIA_PRESCRICAO | NUMBER | N | CHAVE PRIMÁRIA DA TABELA DE AÇÃO DA CÓPIA DA PRESCRIÇÃO |
| 2 | CD_USUARIO | VARCHAR2 | N | USUÁRIO QUE REALIZOU A CÓPIA |
| 3 | DT_REFERENCIA | DATE | N | DATA DE REFERÊNCIA DA(S) PRESCRIÇÃO(ÕES) COPIADA(S) |
| 4 | DT_REALIZACAO | DATE | N | DATA DE REALIZAÇÃO DA CÓPIA |
| 5 | CD_PRESCRICAO_DESTINO | NUMBER | N | CÓDIGO DA PRESCRIÇÃO DE DESTINO |
| 6 | CD_ORIGEM | NUMBER | Y | 1 = ORIGEM PRESCRICAO HTML, 2 =ORIGEM PRESCRIÇÃO FLEX |

---

## MVCPOE.ALERTA_ITEM_PRESCRICAO
> TABELA PARA ARMAZENAR OS ALERTAR DOS PROCESSOS E SUB-PROCESSOS DOS ITENS DE PRESCRIÇÃO.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ALERTA_ITEM_PRESCRICAO | NUMBER | N | CÓDIGO DO ITEM DO ALERTA CHAVE PRIMÉRIA |
| 2 | CD_ITEM_PRESCRICAO | NUMBER | N | CÓDIGO DO ITEM DA PRESCRIÇÃO MÉDICA |
| 3 | CD_JUSTIFICATIVA | VARCHAR2 | Y | CÓDIGO TIPO DO PROCESSO |
| 4 | CD_DETALHE_JUSTIFICATIVA | VARCHAR2 | Y | CÓDIGO TIPO DO SUB PROCESSO |
| 5 | NR_ORDEM_PROCESSO | NUMBER | Y | ORDEM DO ALERTA |
| 6 | DH_ALERTA | DATE | N | DATA E HORA DA GRAVAÇÃO DO ALERTA |
| 7 | DS_ALERTA | VARCHAR2 | Y | MENSAGEM DO ALERTA |
| 8 | CD_DOCUMENTO_CLINICO | NUMBER | Y | CÓDIGO DO DOCUMENTO CLINICO |
| 9 | CD_AVALIACAO_ITEM_PRESCRICAO | NUMBER | Y | CÓDIGO DO ITEM DA AVALIAÇÃO MEDICA CASO EXISTA |
| 10 | SN_AVISAR_PRESCRICAO | NUMBER | N | INDICA SE NA OCORRÊNCIA DESTE PROCESSO SERÁ EMITIDA UMA MENSAGEM DE AVISO NA TELA DE PRESCRIÇÃO |
| 11 | SN_AVISAR_AVALIACAO_FARMACIA | NUMBER | N | INDICA SE NA OCORRÊNCIA DESTE PROCESSO SERÁ EMITIDA UMA MENSAGEM DE AVISO NA TELA DE AVALIAÇÃO FA... |
| 12 | SN_AVISAR_CHECAGEM_APRAZAMENTO | NUMBER | N | INDICA SE NA OCORRÊNCIA DESTE PROCESSO SERÁ EMITIDA UMA MENSAGEM DE AVISO NA TELA DE CHECAGEM/APR... |
| 13 | TP_ALERTA | NUMBER | N | CLASSIFICA O ALERTA EM CRÍTICO, INFORMATIVO OU NÃO CLASSIFICADO |
| 14 | SN_JUSTIFICAR | NUMBER | N | INDICA SE NA OCORRÊNCIA DESTE PROCESSO FOI NECESSÁRIO JUSTIFICAR |
| 15 | INDENTIFICADOR_REFERENCIA | NUMBER | Y | IDENTIFICAÇÃO PARA O ID DA MONOGRAFIA |
| 16 | DS_IDENTIFICADOR_REFERENCIA | VARCHAR2 | Y | DESCRIÇÃO DA MONOGRAFIA |
| 17 | CD_ORIGEM | NUMBER | Y | 1 = ORIGEM PRESCRICAO HTML, 2 =ORIGEM PRESCRIÇÃO FLEX |

---

## MVCPOE.ALTERACAO_ITEM_PRESCRICAO
> TABELA REFERENTE AS ALTERAÇÕES DE VELOCIDADE INFUSÃO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ALTERACAO_ITEM_PRESCRICAO | NUMBER | N | CÓDIGO IDENTIFICADOR DO REGISTRO DE ALTERAÇÃO DO ITEM DA PRESCRIÇÃO |
| 2 | CD_ITEM_PRESCRICAO | NUMBER | N | CÓDIGO DO ITEM DA PRESCRIÇÃO |
| 3 | DH_ALTERACAO | DATE | N | DATA E HORA DA ALTERAÇÃO |
| 4 | NM_USUARIO_ALTERACAO | VARCHAR2 | N | USUÁRIO DA ALTERAÇÃO |
| 5 | QT_INFUSAO | NUMBER | Y | QUANTIDADE DA VELOCIDADE INFUSÃO |
| 6 | CD_UNIDADE_PRODUTO_INFUSAO | NUMBER | Y | CÓDIGO DA UNIDADE DO PRODUTO |
| 7 | CD_UNIDADE_PRESCRICAO_INFUSAO | NUMBER | Y | CÓDIGO DA UNIDADE DA PRESCRIÇÃO |
| 8 | HR_DURACAO | DATE | Y | DURAÇÃO DA INFUSÃO |
| 9 | TP_TEMPO | NUMBER | Y | TIPO DO TEMPO DE DURAÇÃO H:1,M:2 |
| 10 | CD_ORIGEM | NUMBER | Y | 1 = ORIGEM PRESCRICAO HTML, 2 =ORIGEM PRESCRIÇÃO FLEX |

---

## MVCPOE.AVALIACAO_ITEM_PRESCRICAO
> TABELA PARA ARMAZENAR OS ITENS DAS AVALIA?ES FARMAC?TICAS. OS VALORES AQUI ARMAZENADOS SER? TRANSFORMADOS NOS ITENS V?IDOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AVALIACAO_ITEM_PRESCRICAO | NUMBER | N | C?IGO SEQUENCIAL DA TABELA DE ITENS DA AVALIA?O FARMAC?TICA DA PRESCRI?O DE MEDICAMENTO |
| 2 | CD_AVALIACAO_PRESCRICAO | NUMBER | N | PRESCRI?O AO QUAL A AVALIA?O FAZ REFER?CIA |
| 3 | CD_ITEM_PRESCRICAO | NUMBER | Y | ITEM DE PRESRI?O AO QUAL A AVALIA?O FARMACEUTICA ESTA FAZENDO REFER?CIA |
| 4 | CD_ITEM_PRESCRICAO_SUBSTITUTA | NUMBER | Y | ITEM DE PRESRI?O CRIADO CASO SEJA FEITA ALGUMA ALTERA?O NO ITEM DE PRESCRI?O QUE EST?SENDO AVALIADO |
| 5 | DS_AVALIACAO_ITEM | VARCHAR2 | Y | OBSERVA?O DADA PELO FARMACEUTICO QUANDO FAZ UMA INTERVEN?O, NO ITEM PRESCRITO, NEM QUE SEJA APENA... |
| 6 | CD_PRESTADOR_LIBERADOR | NUMBER | Y | C?IGO DO PRESTADOR LIBERADOR |
| 7 | TP_STATUS | NUMBER | Y | SITUA?O DO ITEM EM RELA?O A AVALIA?O FARMACEUTICA - 1 : BLQ, 2 : LIB, 3 : ANA, 4 : AUT |
| 8 | SN_SUBSTITUTO | NUMBER | Y | SER?ATRIBU?O O VALOR 1:SIM CASO O PRODUTO ORIGINAL TENHA SIDO SUBSTITU?O PELA FARM?IA - 0 : N?, 1... |
| 9 | CD_CONFIGURACAO_IT_PRESC_JUSTV | NUMBER | Y | JUSTIFICATIVA PADR? USADA PARA OBJESERVA?O FARMAC?TICA |
| 10 | CD_ORIGEM | NUMBER | Y | 1 = ORIGEM PRESCRICAO HTML, 2 =ORIGEM PRESCRIÇÃO FLEX |

---

## MVCPOE.AVALIACAO_PRESCRICAO
> TABELA PARA ARMAZENAR AS AVALIAÇÕES FARMACÊUTICAS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AVALIACAO_PRESCRICAO | NUMBER | N | CÓDIGO SEQUENCIAL DA TABELA DE AVALIAÇÕES FARMACÊUTICAS DA PRESCRIÇÃO DE MEDICAMENTO |
| 2 | CD_PRESCRICAO | NUMBER | N | CÓDIGO DA PRESCRIÇÃO MÉDICA AVALIADA |
| 3 | TP_AVALIACAO | NUMBER | N | TIPO DE GERAÇÃO DA AVALIAÇÃO. VALORES POSSÍVEIS: AUT=>AUTOMÁTICO; MAN=>MANUAL |
| 4 | CD_PRESCRICAO_SUBSTITUTA | NUMBER | Y | CÓDIGO DA PRESCRIÇÃO MÉDICA CRIADA, SE NECESSÁRIO, APÓS A AVALIAÇÃO |
| 5 | CD_DOCUMENTO_CLINICO | NUMBER | Y | CÓDIGO DO DOCUMENTO CLINICO CRIADO PARA A AVALIAÇÃO |
| 6 | DS_AVALIACAO | VARCHAR2 | Y | CAMPO DA DESCRIÇÃO DA AVALIAÇÃO POR PRESCRIÇÃO |
| 7 | CD_PRESTADOR_AUTORIZADOR | NUMBER | Y | CÓDIGO DO PRESTADOR AUTORIZADOR DA AVALIAÇÃO FARMACÊUTICA |
| 8 | CD_ORIGEM | NUMBER | Y | 1 = ORIGEM PRESCRICAO HTML, 2 =ORIGEM PRESCRIÇÃO FLEX |

---

## MVCPOE.CICLO_TRATAMENTO_PROTOCOLO
> VINCULA CICLOS DE TRATAMENTO A UM PROTOCOLO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CICLO_TRATAMENTO_PROTOCOLO | NUMBER | N | CHAVE PRIMARIA |
| 2 | CD_PROTOCOLO | NUMBER | N | REFERÊNCIA AO PROTOCOLO |
| 3 | DS_DESCRICAO | VARCHAR2 | N | DESCRIÇÃO DO CICLO |
| 4 | NR_ORDEM | NUMBER | N | ORDEM DO CICLO |
| 5 | SN_ATIVO | NUMBER | Y | DETERMINA SE VINCULO DO PROTOCOLO ESTÃO ATIVO OU NÃO, 1:SIM E 0:NÃO |

---

## MVCPOE.CICLO_TRTM_PROTOCOLO_PREPAD
> VINCULA PROTOCOLOS DE TRATAMENTO A UM CICLO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CICLO_TRTM_PROTO_PRE_PAD | NUMBER | N | CÓDIGO DE IDENTIFICADOR ÚNICO |
| 2 | CD_CICLO_TRATAMENTO_PROTOCOLO | NUMBER | N | CICLO DE TRATAMENTO CONFIGURADO PARA O PROTOCOLO |
| 3 | CD_PRESCRICAO_PADRAO | NUMBER | N | CÓDIGO DA PRESCRIÇÃO PADRÃO |
| 4 | SN_ATIVO | NUMBER | Y | DETERMINA SE VINCULO DO PROTOCOLO ESTÃO ATIVO OU NÃO, 1:SIM E 0:NÃO |

---

## MVCPOE.CNFG_IT_PRESC_POSOLOGIA_RESTRC
> CONFIGURAÇÃO DAS REGRAS DE RESTRIÇÃO DE POSOLOGIA DA PRESCRIÇÃO DE MEDICAMENTOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CNFG_IT_PRESC_POSOLG_RESTRC | NUMBER | N | CÓDIGO IDENTIFICADOR DA CONFIGURAÇÃO DAS REGRAS DE RESTRIÇÃO DE POSOLOGIA DA PRESCRIÇÃO DE MEDICA... |
| 2 | CD_CONFIG_ITEM_PRESC_POSOLOGIA | NUMBER | N | CÓDIGO DA POSOLOGIA QUE TERÁ A RESTRIÇÃO |
| 3 | CD_SETOR | NUMBER | Y | SETOR QUE VAI PODER SER EXIBIDO ESSA POSOLOGIA |
| 4 | NR_IDADE_ANO_INICIAL | NUMBER | Y | RESTRIÇÃO ANO DE IDADE INICIAL |
| 5 | NR_IDADE_MES_INICIAL | NUMBER | Y | RESTRIÇÃO MÊS DE IDADE INICIAL |
| 6 | NR_IDADE_DIA_INICIAL | NUMBER | Y | RESTRIÇÃO DIA DE IDADE INICIAL |
| 7 | NR_IDADE_ANO_FINAL | NUMBER | Y | RESTRIÇÃO ANO DE IDADE FINAL |
| 8 | NR_IDADE_MES_FINAL | NUMBER | Y | RESTRIÇÃO MÊS DE IDADE FINAL |
| 9 | NR_IDADE_DIA_FINAL | NUMBER | Y | RESTRIÇÃO DIA DE IDADE FINAL |
| 10 | NR_PESO_INICIAL | NUMBER | Y | RESTRIÇÃO PESO INICIAL |
| 11 | NR_PESO_FINAL | NUMBER | Y | RESTRIÇÃO PESO FINAL |

---

## MVCPOE.COMPONENTE_ITEM_PRESCRICAO
> TABELA DE ITEM DA PRESCRIÇÃO DE MEDICAMENTOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_COMPONENTE_ITEM_PRESCRICAO | NUMBER | N | CÓDIGO IDENTIFICADOR ÚNICO DO ITEM DA PRESCRIÇÃO |
| 2 | CD_ITEM_PRESCRICAO | NUMBER | N | CÓDIGO DO ITEM DA PRESCRIÇÃO |
| 3 | CD_CONFIGURACAO_ITEM_PRESCRIC | NUMBER | N | CÓDIGO DA CONFIGURAÇÃO DE ITEM DA PRESCRIÇÃO |
| 4 | QT_COMPONENTE | NUMBER | Y | QUANTIDADE DO ITEM DA PRESCRIÇÃO |
| 5 | TP_COMPONENTE | NUMBER | N | SITUAÇÃO DO ITEM DA PRESCRIÇÃO |
| 6 | CD_UNIDADE | VARCHAR2 | Y | CÓDIGO DA UNIDADE DO ITEM DA PRESCRIÇÃO |
| 7 | CD_UNIDADE_PRODUTO | NUMBER | Y | CÓDIGO DA UNIDADE DO PRODUTO DO ITEM DA PRESCRIÇÃO |
| 8 | CD_PRODUTO | NUMBER | Y | CÓDIGO DO PRODUTO DO ITEM DA PRESCRIÇÃO |
| 9 | SN_FATURA | NUMBER | Y | INDICA SE O COMPONENTE IRÁ PARA A CONTA (FATURA) DO PACIENTE - 0 : NÃO; 1 : SIM |
| 10 | DS_COMPONENTE_ITEM_PRESCRICAO | VARCHAR2 | Y | DESCRIÇÃO DO ITEM DA PRESCRIÇÃO |
| 11 | DS_NAO_PADRONIZADO | VARCHAR2 | Y | DESCRIÇÃO DO PRODUTO NÃO PADRONIZADO DO ITEM DA PRESCRIÇÃO |
| 12 | CD_ITEM_PRESCRICAO_SUSPENSO | NUMBER | Y | CÓDIGO DA PRESCRIÇÃO RESPONSÁVEL PELA SUSPENSÃO |
| 13 | CD_PRESCRICAO | NUMBER | Y | CÓDIGO DA PRESCRICÃO RESPONSÁVEL PELO LANÇAMENTO DO COMPONENTE |
| 14 | CD_UNIDADE_PRESCRICAO | NUMBER | Y | CÓDIGO DA UNIDADE DE MEDIDA |
| 15 | NR_ORDEM | NUMBER | Y | INDICA QUAL SERÁ A ORDEM DO COMPONENTE DENTRO DE UM ITEM EM UMA PRESCRIÇÃO MÉDICA |
| 16 | SN_COPIA_IDENTICA | NUMBER | Y | COLUNA QUE INDICA QUE O ITEM É UMA CÓPIA IDENTICA AO ITEM COPIADO DE OUTRA PRESCRIÇÃO |
| 17 | CD_CONFIGURACAO_CURVA | NUMBER | Y | CAMPO PARA ARMAZENAR O CÓDIGO DA CONFIGURAÇÃO DA CURVA DINÂMICA, AO PRESCREVER EXAMES |
| 18 | SN_CURVA_PADRAO_AUTO | NUMBER | Y | DEFINE SE O ITEM SOFREU ALTERAÇÃO MANUAL DA SUA CURVA PADRÃO SETADA AUTOMATICAMENTE PELO SISTEMA |
| 19 | CD_CID | VARCHAR2 | Y | CAMPO PARA ARMAZENAR O CÓDIGO DO CID AO PRESCREVER EXAMES |
| 20 | SN_PESQUISA_CIENTIFICA | NUMBER | Y | INDICA SE O COMPONENTE DO ITEM PARTICIPA DE PESQUISA CIENTÍFICA |
| 21 | CD_SETOR_EXAME | NUMBER | Y | CÓDIGO DO SETOR DO EXAME |
| 22 | CD_MATERIAL | NUMBER | Y | CÓDIGO DO MATERIAL PARA O EXAME LABORATORIAL |
| 23 | DS_MATERIAL_COMPLEMENTAR | VARCHAR2 | Y | DESCRIÇÃO DO MATERIAL COMPLEMENTAR PARA O EXAME LABORATORIAL |
| 24 | CD_ORIGEM | NUMBER | Y | 1 = ORIGEM PRESCRICAO HTML, 2 =ORIGEM PRESCRIÇÃO FLEX |
| 25 | CD_TUBO_COLETA | NUMBER | Y | Codigo do tubo de coleta. |

---

## MVCPOE.COMPONENTE_ITEM_PRESC_PADRAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PARAM_COMPONNT_IT_PRESC_PAD | NUMBER | N | CÓDIGO DE IDENTIFICADOR ÚNICP DA PARAMETRIZAÇÃO DOS PREÇOS DOS PROCEDIMENTOS E MATERIAL UILIZADO |
| 2 | CD_ITEM_PRESCRICAO_PADRAO | NUMBER | N | CÓDIGO DE IDENTIFICAÇÃO DO ITEM PRESCRIÇÃO PADRÃO |
| 3 | CD_CONFIGURACAO_ITEM_PRESCRIC | NUMBER | N | CÓDIGO IDENTIFICADOR ÚNICO DO ITEM DA PRESCRIÇÃO |
| 4 | CD_PRODUTO | NUMBER | Y |  |
| 5 | CD_UNIDADE | VARCHAR2 | Y |  |
| 6 | CD_UNIDADE_PRESCRICAO | NUMBER | Y | CÓDIGO DA UNIDADE DE MEDIDA |
| 7 | CD_UNIDADE_PRODUTO | NUMBER | Y | CÓDIGO DA UNIDADE DO PRODUTO |
| 8 | DS_CIT_PRE_PADRAO | VARCHAR2 | Y | DESCRIÇÃO DO CAMPO |
| 9 | QT_COMPONENTE | NUMBER | Y |  |
| 10 | SN_COMPONENTE | NUMBER | N | INDICA SE O COMPONENTE DEVERÁ SER EXIBIDO NA PRESCRIÇÃO, (M)1:SIM E (E)0:NÃO |
| 11 | SN_DILUENTE_PADRAO | NUMBER | N | INDICA SE O COMPONENTE É O DILUENTE PADRÃO, 1:SIM E 0:NÃO |
| 12 | SN_FATURA | NUMBER | Y | INFORMA SE O PROCEDIMENTO SERÁ FATURADO NA CONTA DO PACIENTE, 1:SIM E 0:NÃO |
| 13 | SN_RECONSTITUINTE_PADRAO | NUMBER | N | INDICA SE O COMPONENTE É O RECONSTITUINTE PADRÃO, 1:SIM E 0:NÃO |
| 14 | SN_KIT | NUMBER | Y | COMPONENTE A SER MULTIPLICADO PELA QUANTIDADE DO ITEM PRINCIPAL, (F)1:SIM, (A)0:NÃO |

---

## MVCPOE.CONFIGURACAO_ESTOQUE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIGURACAO_ESTOQUE | NUMBER | N |  |
| 2 | CD_ESTOQUE | NUMBER | N |  |
| 3 | CD_UNIDADE_INTERNACAO | NUMBER | Y |  |
| 4 | CD_ESPECIE | NUMBER | Y |  |
| 5 | CD_SUB_CLASSE | NUMBER | Y |  |
| 6 | CD_CLASSE | NUMBER | Y |  |
| 7 | CD_PRODUTO | NUMBER | Y |  |
| 8 | CD_SETOR | NUMBER | N |  |
| 9 | CD_ESTOQUE_SE_NECESSARIO | NUMBER | Y |  |
| 10 | CD_ESTOQUE_MEDICAMENTO_URGENTE | NUMBER | Y |  |
| 11 | CD_ESTOQUE_SUBSTITUTO | NUMBER | Y |  |
| 12 | CD_ESTOQUE_SUBSTITUTO_SE_NECES | NUMBER | Y |  |
| 13 | CD_ESTOQUE_SUBSTIT_MEDCMTO_URG | NUMBER | Y |  |

---

## MVCPOE.CONFIGURACAO_ITEM_PRESCRICAO
> TABELA DE ITEM COMPONENTE DISPONÍVEL PARA PRESCRIÇÃO DE MEDICAMENTOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIGURACAO_ITEM_PRESCRIC | NUMBER | N | CÓDIGO IDENTIFICADOR ÚNICO DO ITEM DA PRESCRIÇÃO |
| 2 | CD_TIPO_ESQUEMA | NUMBER | N | TIPO DE ESQUEMA |
| 3 | DS_CONFIGURACAO_ITEM_PRESCRIC | VARCHAR2 | N | DESCRIÇÃO DOS ITEM ESTABELECIDO PARA PRESCRIÇÃO |
| 4 | CD_EXAME_LABORATORIAL | NUMBER | Y | CÓDIGO DO TIPO DE EXAME LABORATORIAL A SER REALIZADO |
| 5 | CD_EXAME_IMAGEM | NUMBER | Y | CÓDIGO DO TIPO DE DIAGNÓSTICO POR IMAGEM QUE CORRESPONDE AO ITEM DA PRESCRIÇÃO |
| 6 | CD_PRODUTO | NUMBER | Y | CÓDIGO DO PRODUTO NO ESTOQUE CORRESPONDENTE AO ITEM EM REFERÊNCIA |
| 7 | CD_UNIDADE_PRODUTO | NUMBER | Y | CÓDIGO DA UNIDADE DE MEDIDA PADRÃO QUE O ITEM SERÁ PRESCRITO |
| 8 | SN_SOLICITACAO_AO_ESTOQUE | NUMBER | Y | INFORMA SE O ITEM DA PRESCRIÇÃO SERÁ INCLUÍDO NA SOLICITAÇÃO AO ESTOQUE - 0: NÃO; 1: SIM |
| 9 | CD_ESTOQUE | NUMBER | Y | CÓDIGO DO ESTOQUE PARA O QUAL DEVERÁ SER SOLICITADO O ITEM |
| 10 | CD_UNIDADE | VARCHAR2 | Y | CÓDIGO DA UNIDADE DE MEDIDA DO ITEM |
| 11 | CD_PROCEDIMENTO_FATURA | VARCHAR2 | Y | CÓDIGO DO PROCEDIMENTO A SER IMPRESSO NA FATURA DO CONVÊNIO |
| 12 | SN_PRODUTO_FATURA | NUMBER | Y | INFORMA SE O PRODUTO IRÁ PARA A CONTA DO PACIENTE - 0: NÃO; 1: SIM |
| 13 | SN_ITEM_ATIVO | NUMBER | N | INFORMA SE O ITEM ESTÁ ATIVO OU NÃO - 0: NÃO; 1: SIM |
| 14 | CD_TIPO_DIETA | VARCHAR2 | Y | CÓDIGO DO TIPO DE DIETA DO ITEM |
| 15 | SN_ITEM_PADRONIZADO | NUMBER | N | INFORMA SE O ITEM ESTÁ PADRONIZADO - 0: NÃO; 1: SIM |
| 16 | TP_PRESTADOR | NUMBER | N | CÓDIGO DO TIPO DE PRESCRIÇÃO - 1: MÉDICO; 2 - ENFERMEIRO; 3 - FARMÁCIA; 4 - FISIOTERAPEUTA; 5 - N... |
| 17 | CD_UNIDADE_PRODUTO_SOLICITADO | NUMBER | Y | CÓDIGO DA UNIDADE DE MEDIDA QUE O ITEM SERÁ SOLICITADO |
| 18 | NR_DIAS_VALIDADE_APOS_ABERTO | NUMBER | Y | NÚMERO DE DIAS DE VALIDADE APÓS ABERTO O RECIPIENTE DESTE ITEM |
| 19 | NR_HORAS_VALIDADE_APOS_ABERTO | NUMBER | Y | NÚMERO DE HORAS DE VALIDADE APÓS ABERTO O RECIPIENTE DESTE ITEM |
| 20 | CD_SANGUE_DERIVADOS | NUMBER | Y | CÓDIGO DO TIPO DE EXAME LABORATORIAL (SANGUE E DERIVADOS) A SER REALIZADO |
| 21 | SN_PROCEDIMENTO_LIGAR_DESLIGAR | NUMBER | Y | INFORMA SE O PROCEDIMENTO É DE LIGA E DESLIGA - 0: NÃO; 1: SIM |
| 22 | DS_OBSERVACAO | VARCHAR2 | Y | DESCRIÇÃO DA OBSERVAÇÃO PADRÃO DO ITEM |
| 23 | NR_ORDEM_IMPRESSAO | NUMBER | Y | NÚMERO DE ORDEM DO ITEM NA IMPRESSÃO DA PRESCRIÇÃO |
| 24 | QT_MAXIMA_APLICACAO | NUMBER | Y | QUANTIDADE MÁXIMA POSSÍVEL PARA APLICAÇÃO. ESSA CONFIGURAÇÃO SÓ FUNCIONA PATA O MVPEP 1 E PARA O ... |
| 25 | SN_PROCEDIMENTO_ENTUBACAO | NUMBER | Y | INFORMA SE O PROCEDIMENTO DE LIGA E DESLIGA SERÁ NECESSÁRIO DE ENTUBAÇÃO - 0: NÃO; 1: SIM |
| 26 | SN_USO_SIMULTANEO_OUTROS_GASES | NUMBER | Y | INFORMA SE PERMITE O USO SIMULTÂNEO COM OUTROS GASES - 0: NÃO; 1: SIM |
| 27 | TP_CONTROLE_PRESCRICAO | NUMBER | N | CÓDIGO DO TIPO DE CONTROLE QUE DEVERÁ SER FEITO PELA PRESCRIÇÃO - 1: COLETA SINAL VITAL; 2: NORMA... |
| 28 | TP_MODO_VERIFICACAO | NUMBER | Y | CÓDIGO DO MODO DE VERIFICAÇÃO DE QUANTIDADE MÁXIMA PERMITIDA POR ITEM - 1: POR DIA; 2: POR PRESCR... |
| 29 | SN_USO_CONTINUO | NUMBER | N | INFORMA QUE O ITEM DO BALANÇO HÍDRICO É DE USO CONTÍNUO - 0: NÃO; 1: SIM |
| 30 | TP_CALCULO_BALANCO_HIDRICO | NUMBER | Y | INFORMA SE O ITEM DO BALANÇO HÍDRICO É CALCULADO COMO GANHO OU PERDA, NA IDENTIFICAÇÃO DO CÁLCULO... |
| 31 | SN_IMPRIME_HORARIO | NUMBER | N | INFORMA SE O ITEM TERÁ SEUS HORÁRIOS IMPRESSOS NO RELATÓRIO DE PRESCRIÇÃO - 0: NÃO; 1: SIM |
| 32 | SN_JUSTIFICATIVA_OBRIGATORIA | NUMBER | N | INFORMA SE O ITEM EXIGE JUSTIFICATIVA NO MOMENTO DA PRESCRIÇÃO - 0: NÃO; 1: SIM |
| 33 | SN_DIA_APLICACAO | NUMBER | N | - 0: NÃO; 1: SIM |
| 34 | SN_ALERTA_DUPLICIDADE | NUMBER | N | INFORMA SE SERÁ DADO UM ALERTA DE DUPLICIDADE CASO O ITEM SEJA PRESCRITO MAIS DE UMA VEZ EM UMA M... |
| 35 | DS_JUSTIFICATIVA | VARCHAR2 | Y | DESCRIÇÃO DA JUSTIFICATIVA |
| 36 | SN_CONTROLA_VOLUME | NUMBER | N | - 0: NÃO; 1: SIM |
| 37 | CD_UNIDADE_PRODUTO_INFUSAO | NUMBER | Y | CÓDIGO DA UNIDADE DE MEDIDA POR ITEM DE INFUSÃO DO MEDICAMENTO |
| 38 | TP_TEMPO | NUMBER | N | TIPO DE UNIDADE DE TEMPO - 1: HORAS; 2: MINUTOS |
| 39 | CD_PROCEDIMENTO_ANTIGO_SIH_SUS | VARCHAR2 | Y | CÓDIGO ANTIGO DE PROCEDIMENTO SIH-SUS |
| 40 | CD_PROCEDIMENTO_ANTIGO_SIA_SUS | VARCHAR2 | Y | CÓDIGO ANTIGO DE PROCEDIMENTO SIA-SUS |
| 41 | SN_COPIA_JUSTIFICATIVA | NUMBER | Y | IDENTIFICA SE A JUSTIFICATIVA O ITEM SERÁ COPIADA PARA A CÓPIA DA PRESCRIÇÃO - 0: NÃO; 1: SIM |
| 42 | QT_TEMPO_ASSISTENCIA | NUMBER | Y | TEMPO NECESSÁRIO PARA A MANIPULAÇÃO E ADMINISTRAÇÃO DO ITEM DE PRESCRIÇÃO MÉDICA |
| 43 | HR_EXAME | DATE | Y | HORÁRIO PARA SOLICITAÇÃO DE EXAME |
| 44 | CD_ITEM_AGENDAMENTO | NUMBER | Y | CÓDIGO DO ITEM DE AGENDAMENTO |
| 45 | DS_OBSERVACAO_IMPRESSAO | VARCHAR2 | Y | OBSERVAÇÃO PARA IMPRESSÃO DOS ITENS DA PRESCRIÇÃO |
| 46 | CD_UNIDADE_PRESCRICAO_INFUSAO | NUMBER | Y | CÓDIGO DA UNIDADE DE MEDIDA POR PRESCRIÇÃO PARA INFUSÃO DO MEDICAMENTO |
| 47 | HR_DURACAO_INFUSAO | DATE | Y | TEMPO EM HORAS DE DURAÇÃO DE INFUSÃO |
| 48 | DS_BLOQUEIO_PRESCRICAO | VARCHAR2 | Y | SE PREENCHIDA INDICA QUE O ITEM ESTÁ BLOQUEADO PARA PRESCRIÇÃO. SERÁ MOSTRADA A MENSAGEM QUANDO S... |
| 49 | CD_UNIDADE_PRESCRICAO | NUMBER | Y | CÓDIGO DA UNIDADE DE MEDIDA POR PRESCRIÇÃO |
| 50 | CD_PROCEDIMENTO_SIA_SUS | VARCHAR2 | Y | CÓDIGO DO PROCEDIMENTO AMBULATORIAL SUS |
| 51 | CD_PROCEDIMENTO_SIH_SUS | VARCHAR2 | Y | CÓDIGO DO PROCEDIMENTO HOSPITALAR SUS |
| 52 | CD_UNIDADE_FATURAMENTO | NUMBER | Y | UNIDADE PARA FATURAMENTO |
| 53 | SN_SOLICITACAO_MESMO_ESTOQUE | NUMBER | N | SE OS COMPONENTES SERÃO SOLICITADOS DO MESMO ESTOQUE DO ITEM PRINCIPAL - 0: NÃO; 1: SIM |
| 54 | SN_BLOQUEIO_PRESCRICAO | NUMBER | Y | BLOQUEIA O ITEM PARA SER PRESCRITO - 0: NÃO; 1: SIM |
| 55 | CD_UNIDADE_PRESCRICAO_MAXIMA | NUMBER | Y | IDENTIFICADOR DA UNI_PRESC MÁXIMA. CÓDIGO DE UNIDADE PARA QUANTIDADE MÁXIMA |
| 56 | CD_UNIDADE_PRODUTO_MAXIMA | NUMBER | Y | IDENTIFICADOR DA UNI_PRO MÁXIMA. CÓDIGO DE UNIDADE POR PRODUTO PARA QUANTIDADE MÁXIMA |
| 57 | SN_FRACIONAR | NUMBER | N | SE O ITEM IRÁ GERAR SOLICITAÇÃO AO ESTOQUE COM A QUANTIDADE FRACIONADA - 0: NÃO; 1: SIM |
| 58 | SN_LANCA_CONTA_CHECAGEM | NUMBER | N | INDICA SE O ITEM SERÁ LANÇADO ATRAVÉS DA AUDITORIA DE CHECAGEM - 0: NÃO; 1: SIM |
| 59 | SN_OBRIGA_MATERIAL | NUMBER | Y | OBRIGA O PREENCHIMENTO DO MATERIAL SE NO CADASTRO DO ESQUEMA O CONTROLE DE MATERIAL DE EXAME LABO... |
| 60 | NR_DIAS_PADRAO | NUMBER | Y | NÚMERO DE DIAS PADRONIZADO PARA QUE O PRESTADOR POSSA FAZER PRESCRIÇÃO OU SOLICITAR EXAME SEM HAV... |
| 61 | QT_DOSE_CALCULO | NUMBER | Y | APRESENTA A DOSE DE DEVE SER USADA PARA O CÁLCULO DA MEDICAÇÃO, SENDO ESTA INFORMADA PELO MÉDICO ... |
| 62 | CD_PADRAO_FORMULA | NUMBER | Y | CÓDIGO DA TABELA PADRÃO FÓRMULA |
| 63 | SN_DUPLA_CHECAGEM_DADO | NUMBER | N | INDICA SE O TIPO DE PRESCRIÇÃO VAI SOLICITAR DUPLA CHECAGEM AO CHECAR COMO DADO (ADMINISTRADO). -... |
| 64 | SN_DUPLA_CHECAGEM_NAO_DADO | NUMBER | N | INDICA SE O TIPO DE PRESCRIÇÃO VAI SOLICITAR DUPLA CHECAGEM AO CHECAR COMO NÃO DADO (NÃO ADMINIST... |
| 65 | TP_PERMISSAO_INCLUSAO_COMPONNT | NUMBER | N | TIPO DE PERMISSÃO PARA INCLUSÃO DE COMPONENTES. TIPOS POSSÍVEIS - 1: PERMITE TUDO (TUDO); 2: APEN... |
| 66 | SN_EXIGE_DILUENTE | NUMBER | N | INFORMA SE O ITEM DE PRESCRIÇÃO EXIGE DILUENTE - 0: NÃO; 1: SIM |
| 67 | SN_DILUENTE | NUMBER | N | INFORMA SE O ITEM DE PRESCRIÇÃO É UM ITEM DILUENTE - 0: NÃO; 1: SIM |
| 68 | SN_RECONSTITUINTE | NUMBER | N | INFORMA SE O ITEM DE PRESCRIÇÃO É UM ITEM RECONSTITUINTE - 0: NÃO; 1: SIM |
| 69 | CD_OBSERVACAO_PREDEFINIDA | NUMBER | Y | ASSOCIAÇÃO COM UMA OBSERVAÇÃO PREDEFINIDA |
| 70 | TP_VALIDA_CHECAGEM_DUPLICIDADE | NUMBER | Y | CONFIGURAÇÃO DO TIPO DE VALIDAÇÃO DO ALERTA DE DUPLICIDADE - 1: PERÍODO; 2: PRESCRIÇÃO |
| 71 | NR_DIAS_CHECAGEM_DUPLICIDADE | NUMBER | Y | QUANTIDADE DE DIAS PARA VALIDAÇÃO DO ALERTA DE DUPLICIDADE |
| 72 | NR_HORAS_CHECAGEM_DUPLICIDADE | NUMBER | Y | QUANTIDADE DE HORAS PARA VALIDAÇÃO DO ALERTA DE DUPLICIDADE |
| 73 | NR_VELOCIDADE_INFUSAO | NUMBER | Y | VELOCIDADE DE INFUSÃO PADRÃO DO ITEM |
| 74 | SN_SOMA_TOTAL_BALANCO | NUMBER | Y | CONFIGURAÇÃO QUE INDICA SE O VALOR DO ITEM DEVE SER SOMADO AO TOTAL DO BALANÇO. - 0: NÃO; 1: SIM |
| 75 | SN_HABILITA_LANCAMENTO_UNIDADE | NUMBER | Y | CONFIGURAÇÃO QUE HABILITA O LANÇAMENTO DE UNIDADES NA TELA DE BALANÇO HÍDRICO AGRUPADO. - 0: NÃO;... |
| 76 | CD_NOME_EXIBICAO_COMPONENTES | NUMBER | Y | INFORMA A CONFIGURAÇÃO DO NOME DE EXIBIÇÃO PARA OS COMPONENTES DO ITEM DE PRESCRIÇÃO |
| 77 | TP_ISOLAMENTO_PACIENTE | NUMBER | Y | FLAG PARA CONFIGURAR O ITEM PARA ISOLAMENTO DE LEITO - 1: ISOLA; 2: LIBERA |
| 78 | NR_VOLUME_TOTAL | NUMBER | Y | CAMPO PARA INFORMAR O VOLUME TOTAL DA SOLUÇÃO APÓS A DILUIÇÃO. |
| 79 | SN_PESQUISA_CIENTIFICA | NUMBER | Y | INFORMA SE O ITEM É DE PESQUISA CIENTÍFICA - 0: NÃO; 1: SIM |
| 80 | TP_VISUALIZACAO | NUMBER | Y | CÓDIGO O TIPO DE VISUALIZAÇÃO DA PESQUISA CIENTÍFICA - 1 : TODOS OS PACIENTES; 2 : PACIENTES DA P... |
| 81 | SN_CRONICO | NUMBER | Y | INFORMA SE O ITEM É DE USO CRÔNICO - 0: NÃO; 1: SIM |
| 82 | NR_MINUTOS_DURACAO | NUMBER | Y | NÚMERO DE MINUTOS PARA A DURAÇÃO PADRÃO PARA APLICAÇÃO |
| 83 | NR_HORAS_DURACAO | NUMBER | Y | NÚMERO DE HORAS PARA A DURAÇÃO PADRÃO PARA APLICAÇÃO |
| 84 | NR_DIAS_DURACAO | NUMBER | Y | NÚMERO DE DIAS PARA A DURAÇÃO PADRÃO PARA APLICAÇÃO |
| 85 | CD_MULTI_EMPRESA | NUMBER | Y | CÓDIGO MULTI EMPRESA DO SISTEMA |
| 86 | SN_ITEM_AVULSO | NUMBER | Y | - 0: NÃO; 1: SIM |
| 87 | CD_PROCEDIMENTO_CIRURGIA | NUMBER | Y | CÓDIGO DO PROCEDIMENTO DE CIRURGIA |
| 88 | CD_FORMA_APLICACAO | NUMBER | Y |  |
| 89 | CD_TIPO_FREQUENCIA | NUMBER | Y |  |
| 90 | QT_DOSE | NUMBER | Y |  |
| 91 | CD_PRESTADOR_PADRAO | NUMBER | Y |  |
| 92 | CD_MATERIAL_EXAME_LABORATORIAL | NUMBER | Y |  |
| 93 | SN_QUANTIDADE_EDITAVEL | NUMBER | N |  |
| 94 | CD_DISPOSITIVO | NUMBER | Y |  |
| 95 | CD_LOCAL_ANATOMICO_COLETA | NUMBER | Y |  |
| 96 | CD_UNIDADE_PRODT_VOLUME_TOTAL | NUMBER | Y |  |
| 97 | CD_UNIDADE_PRESC_VOLUME_TOTAL | NUMBER | Y |  |
| 98 | SN_GLICEMIA | NUMBER | Y | INFORMA SE O ITEM DA PRESCRIÇÃO DEVE POSSUIR CONFIGURAÇÃO DE ESQUEMA GLICÊMICO. 0: NÃO, 1: SIM |
| 99 | SN_JUSTIFICATIVA_CADASTRADA | NUMBER | N | CAMPO QUE DEFINE SE O ITEM SOMENTE UTILIZARÁ JUSTIFICATIVAS CADASTRADAS SEM ALTERÁ-LAS. 1 - SIM 0... |
| 100 | SN_TRAZER_COMPONENTE_RECOLHIDO | NUMBER | Y | CAMPO QUE DEFINE SE OS COMPONENTES DO ITEM VIRAO RECOLHIDOS OU NAO. 1 - SIM 0 - NAO |

---

## MVCPOE.CONFIGURACAO_ITEM_PRESC_ALERTA
> TABELA PARA ARMAZENAR CADASTROS DOS TIPOS DE ALERTAS, MEDICAMENTO GATILHO E NOVO MEDICAMENTO PADRÃO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_ITEM_PRESC_ALERTA | NUMBER | N | CÓDIGO DO ALERTA |
| 2 | CD_CONFIGURACAO_ITEM_PRESCRIC | NUMBER | N | CÓDIGO DO ITEM DE PRESCRIÇÃO |
| 3 | SN_NOVO_MEDICAMENTO_PADRAO | NUMBER | Y | CAMPO QUE INFORMA SE É OU NÃO NOVO MEDICAMENTO PADRÃO - 0 : NÃO; 1 : SIM |
| 4 | SN_MEDICAMENTO_GATILHO | NUMBER | Y | CAMPO QUE INFORMA SE É OU NÃO MEDICAMENTO EM GATILHO - 0 : NÃO; 1 : SIM |
| 5 | DT_INIC_VIGENC_NOVO_MDCMT_PDR | DATE | Y | DATA INÍCIO DE VIGÊNCIA DO NOVO MEDICAMENTO PADRÃO |
| 6 | DT_FINAL_VIGENC_NOVO_MDCMT_PDR | DATE | Y | DATA FINAL DE VIGÊNCIA DO NOVO MEDICAMENTO PADRÃO |
| 7 | CD_MULTI_EMPRESA | NUMBER | N | CÓDIGO DA EMPRESA DO SISTEMA |

---

## MVCPOE.CONFIGURACAO_ITEM_PRESC_GLICM
> TABELA DE CONFIGURAÇÃO DO ESQUEMA GLICÊMICO DE ITEM DA PRESCRIÇÃO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIGURACAO_IT_PRESC_GLIC | NUMBER | N | CÓDIGO IDENTIFICADOR ÚNICO DA CONFIGURAÇÃO DO ESQUEMA GLICÊMICO DE ITEM DA PRESCRIÇÃO |
| 2 | CD_CONFIGURACAO_ITEM_PRESCRIC | NUMBER | N | CÓDIGO DA CONFIGURAÇÃO DE ITEM DA PRESCRIÇÃO |
| 3 | NR_RESULTADO_MINIMO | NUMBER | Y | VALOR DE RESULTADO MÍNIMO COMO REFERÊNCIA |
| 4 | NR_RESULTADO_MAXIMO | NUMBER | Y | VALOR DE RESULTADO MÁXIMO COMO REFERÊNCIA |
| 5 | CD_DROGA | NUMBER | N | CÓDIGO DA CONFIGURAÇÃO ITEM DA PRESCRIÇÃO CORRESPONDENTE À DROGA |
| 6 | NR_DOSE | NUMBER | N | VALOR DA DOSE |
| 7 | CD_UNIDADE | VARCHAR2 | N | CÓDIGO DA UNIDADE DE MEDIDA DA DROGA E DOSE |

---

## MVCPOE.CONFIGURACAO_ITEM_PRESC_JUSTV
> JUSTIFICATIVA DE ITENS DA PRESCRIÇÃO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIGURACAO_IT_PRESC_JUSTV | NUMBER | N | CODIGO DA JUSTIFICATIVA |
| 2 | DS_CONFIGURACAO_IT_PRESC_JUSTV | VARCHAR2 | Y | DESCRICAO DA JUSTIFICATIVA |
| 3 | CD_PROCESSO_JUSTIFICATIVA | VARCHAR2 | Y | CÓDIGO DO TIPO DO PROCESSO |
| 4 | CD_SUB_PROCESSO_JUSTIFICATIVA | VARCHAR2 | Y | CÓDIGO DO TIPO DO SUB-PROCESSO DETALHE |
| 5 | CD_TIPO_ESQUEMA | NUMBER | Y | CÓDIGO DO TIPO DO ESQUEMA |
| 6 | CD_CONFIGURACAO_ITEM_PRESCRIC | NUMBER | Y | CÓDIGO DA CONFIGURAÇÃO DO ITEM DA PRESCRICAO |
| 7 | DS_TITULO | VARCHAR2 | N | NOME RESUMIDO QUE DESCREVE A JUSTIFICATIVA SELECIONADA |
| 8 | SN_ATIVO | NUMBER | Y | INFORMA SE A JUSTIFICATIVA ESTÁ ATIVA |
| 9 | NR_ORDEM | NUMBER | Y | ORDEM DE VISUALIZAÇÃO DA JUSTIFICATIVA |
| 10 | VL_VALOR | NUMBER | Y | QUANTIDADE DE DIAS SUGERIDOS PARA PRESCRIÇÃO DO MEDICAMENTO |
| 11 | SN_GLICEMIA | NUMBER | Y | INFORMA A JUSTIFICATIVA CONFIGURADA PARA ITEM DA PRESCRIÇÃO COM ESQUEMA GLICÊMICO. 0: NÃO, 1: SIM |

---

## MVCPOE.CONFIGURACAO_ITEM_PRESC_SALA
> JUSTIFICATICA DE PRESCRIÇÃO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIGURACAO_IT_PRESC_SALA | NUMBER | N | CÓDIGO DE CONFIGURAÇÃO DE SALA POR ITEM DE PRECRIÇÃO |
| 2 | CD_SALA | NUMBER | Y | CÓDIGO DA SALA |
| 3 | CD_CONFIGURACAO_ITEM_PRESCRIC | NUMBER | Y | CÓDIGO DE ITEM DE PRECRIÇÃO |
| 4 | CD_SETOR | NUMBER | Y | CÓDIGO DO SETOR QUE A ASSOCIAÇÃO ATENDE |

---

## MVCPOE.CONFIGURACAO_ITEM_PRESC_SETOR
> CONFIGURAÇÃO DE SALA POR EMPRESA DA PRESCRIÇÃO DE MEDICAMENTOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIGURACAO_IT_PRESC_SETOR | NUMBER | N | CÓDIGO IDENTIFICADOR DA CONFIGURAÇÃO DO SETOR POR ITEM DA PRESCRIÇÃO |
| 2 | CD_CONFIGURACAO_ITEM_PRESCRIC | NUMBER | N | CÓDIGO DA CONFIGURAÇÃO DO ITEM DA PRESCRICAO |
| 3 | CD_SETOR | NUMBER | Y | CÓDIGO DO SETOR |
| 4 | CD_MULTI_EMPRESA | NUMBER | N | CÓDIGO MULTI EMPRESA DO SISTEMA |
| 5 | SN_SETOR_RESTRITO | NUMBER | N | INFORMA SE É CONFIGURAÇÃO DE SETOR É DE USO RESTRITO - 0 : NÃO; 1 : SIM |
| 6 | SN_PADRONIZADO | NUMBER | N | INDICA SE O É PADRONIZADO |
| 7 | SN_PARTICULAR | NUMBER | N | INDICA SE O ITEM ESTÁ HABILITADO PARA CONVENIO PARTICULAR |
| 8 | SN_CONVENIO | NUMBER | N | INDICA SE O ITEM ESTÁ HABILITADO PARA CONVENIO |
| 9 | SN_PROCEDIMENTO_INTERNACAO | NUMBER | N | INDICA SE O ITEM ESTÁ HABILITADO PARA PROCEDIMENTO DE INTERNAÇÃO |
| 10 | SN_PROCEDIMENTO_AMBULATORIAL | NUMBER | N | INDICA SE O ITEM ESTÁ HABILITADO PARA PROCEDIMENTO DE AMBULATORIAL |

---

## MVCPOE.CONFIGURACAO_ITEM_PRESC_SUBT
> TABELA PARA CONFIGURAR OS ITENS SUBSTITUTOS PARA TROCA DO MEDICAMENTO DENTRO DA AVALIAÇÃO FARMACÊUTICA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_ITEM_PRESC_SUBSTIT | NUMBER | N | CHAVE PRIMÁRIA |
| 2 | CD_CONFIGURACAO_ITEM_PRESCRIC | NUMBER | N | CÓDIGO DO ITEM DA PRESCRIÇAO |
| 3 | CD_SUBSTITUICAO_ITEM_PRESCRIC | NUMBER | Y | CÓDIGO DO ITEM DA PRESCRIÇAO RELACIOANADA A SER USADO COMO SUBSTITUTO |
| 4 | SN_ATIVO | NUMBER | N | INDICA SE A DESCRIÇÃO DO ITEM SUBSTITUTO ESTÁ ATIVA OU INATIVA |

---

## MVCPOE.CONFIGURACAO_IT_PRESC_FRM_APLC
> CONFIGURAÇÃO DE FORMA DE APLICAÇÃO POR ITEM DA PRESCRIÇÃO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_IT_PRESC_FRM_APLC | NUMBER | N | CÓDIGO SEQUÊNCIAL PARA CONFIGURAÇÃO DE FORMA DE APLICAÇÃO POR ITEM DA PRESCRIÇÃO |
| 2 | CD_CONFIGURACAO_ITEM_PRESCRIC | NUMBER | N | CÓDIGO DO ITEM DA PRESCRIÇÃO |
| 3 | CD_FORMA_APLICACAO | NUMBER | N | CÓDIGO DA FORMA DE APLICAÇÃO DO ITEM DA PRESCRIÇÃO |
| 4 | SN_MAIS_USADO | NUMBER | N | INFORMA SE A FORMA DE APLICAÇÃO DEVE SER REGISTRADA COMO MAIS USADA PARA SER VISUALIZADA COM MAIS... |

---

## MVCPOE.CONFIGURACAO_PAGU

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIGURACAO_PAGU | NUMBER | N |  |
| 2 | SN_CID | NUMBER | Y |  |
| 3 | SN_RETROATIVO | VARCHAR2 | N |  |
| 4 | SN_SUGERE_SUBSTITUICAO_ITEM_NP | NUMBER | Y |  |
| 5 | SN_EXIBE_LISTA_MEDICAMENTO_NP | NUMBER | Y |  |
| 6 | NR_PORCENTAGEM_ALTERACAO_PESO | NUMBER | Y |  |
| 7 | SN_NECESSARIO | NUMBER | Y |  |
| 8 | SN_CRIAR_HR_APENAS_SN_ACM | NUMBER | Y |  |
| 9 | SN_CHECA_SALDO | NUMBER | Y |  |
| 10 | DS_DIGITO_VERIF_COD_BARRAS | VARCHAR2 | Y |  |
| 11 | SN_GERA_SOLSAI_PRO | NUMBER | Y |  |
| 12 | TP_FECHAR_HORARIOS_ATRASADOS | NUMBER | Y |  |
| 13 | SN_PERMITE_AMBULATORIO | NUMBER | Y |  |
| 14 | SN_EXIBE_ESPECIALID_RELATORIO | NUMBER | Y |  |

---

## MVCPOE.CONFIGURACAO_PAGU_IMPRESSAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_PAGU_IMPRESSAO | NUMBER | N |  |
| 2 | CD_SETOR | NUMBER | Y | CÓDIGO DO SETOR SOLICITANTE, SE NULO SIGNIFICA CONFIGURAÇÃO DEFAULT |
| 3 | NM_CAMINHO_IMPRESSAO | VARCHAR2 | Y | INFORMAÇÃO QUE DETERMINA SE SERÁ IMPRESSA UMA CÓPIA, PODERÁ AINDA SER EM PORTA LOCAL, PORTA DETER... |
| 4 | NM_IMPRIME_MOBILE | VARCHAR2 | N | DETERMINA SE A PRESCRIÇÃO SERÁ IMPRESSA OU ONDE SERÁ IMPRESSA QUANDO PELO PALM, N:NÃO, L:LOCAL, S... |
| 5 | NM_RELATORIO | VARCHAR2 | N | NOME DO ARQUIVO DE RELATÓRIO QUE DEVERÁ SER USADO |
| 6 | TP_IMPRIME_APRAZAMENTO | NUMBER | N | DETERMINA SE O APRAZAMENTO SERÁ IMPRESSO NO SETOR EXECUTANTE, 0(N): NÃO, 1(S): SIM, 2(A): AUTOMÁTICO |
| 7 | TP_IMPRIME_PRESCRICAO_ENFER | NUMBER | N | DETERMINA SE A PRESCRIÇÃO DE ENFERMAGEM SERÁ IMPRESSA NO SETOR EXECUTANTE, 0(N): NÃO, 1(S): SIM, ... |
| 8 | TP_IMPRIME_PRESCRICAO_MEDICA | NUMBER | N | DETERMINA SE A PRESCRIÇÃO SERÁ IMPRESSA NO SETOR EXECUTANTE, 0(N): NÃO, 1(S): SIM, 2(A): AUTOMÁTICO |
| 9 | TP_IMPRIME_CONVERSAO_PRESC | NUMBER | N | CAMPO QUE DEFINE O TIPO DA IMPRESSAO DA PRESCRIÇÃO, 0(N): NÃO, 1(S): SIM, 2(A): AUTOMÁTICO |
| 10 | TP_IMPRIME_EXAME_LABORATORIO | NUMBER | Y | DETERMINA SE O EXAME DE LABORATORIO SERA IMPRESSO NO SETOR EXECUTANTE, 0(N): NÃO, 1(S): SIM, 2(A)... |
| 11 | TP_IMPRIME_EXAME_IMAGEM | NUMBER | Y | DETERMINA SE O EXAME DE IMAGEM SERA IMPRESSO NO SETOR EXECUTANTE, 0(N): NÃO, 1(S): SIM, 2(A): AUT... |
| 12 | TP_IMPRIME_RECEITA | NUMBER | N | INDICA O TIPO DE RECEITA QUE PODERÁ SER IMPRESSO, 0(N): NÃO, 1(S): SIM, 2(A): AUTOMÁTICO |
| 13 | TP_IMPRIME_TRANSCRICAO | NUMBER | N | DETERMINA SE A TRANSCRIÇÃO SERÁ IMPRESSA NO SETOR EXECUTANTE, 0(N): NÃO, 1(S): SIM, 2(A): AUTOMÁTICO |
| 14 | TP_RELATORIO | NUMBER | N | TIPO DO RELATÓRIO QUE SERÁ EXECUTADO NA PRESCRIÇÃO MÉDICA, 0(A):SOLICITAÇÃO DE AGENDAMENTO, 1(B):... |

---

## MVCPOE.CONFIGURACAO_PAGU_JUSTFCTV

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIGURACAO_PAGU_JUSTFCTV | NUMBER | N |  |
| 2 | CD_PROCESSO | VARCHAR2 | N |  |
| 3 | CD_PROCESSO_DETALHE | VARCHAR2 | Y |  |
| 4 | TP_ALERTA | NUMBER | Y |  |
| 5 | CD_SETOR | NUMBER | Y |  |
| 6 | SN_AVISAR | NUMBER | Y |  |
| 7 | SN_JUSTIFICAR | NUMBER | Y |  |
| 8 | SN_IMPRIME | NUMBER | Y |  |
| 9 | SN_COPIA | NUMBER | Y |  |
| 10 | SN_AVISAR_AVALIACAO_FARMACIA | NUMBER | Y |  |
| 11 | SN_AVISAR_CHECAGEM_APRAZAMENTO | NUMBER | Y |  |
| 12 | SN_ALERTA_SUPERDOSAGEM | NUMBER | Y |  |

---

## MVCPOE.CONFIGURACAO_PAGU_PRESCRICAO
> TABELA QUE GUARDA A CONFIGURAÇÃO PAGU PRESCRIÇÃO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIGURACAO_PAGU_PRESC | NUMBER | N | CHAVE PRIMÁRIA DA TABELA |
| 2 | CD_OBJETO | NUMBER | N | VALOR DE REFERÊNCIA COM A TABELA PAGU_OBJ |
| 3 | CD_SETOR | NUMBER | Y | SETOR A SER SUGERIDO, QUE SERÁ USADO PARA O CENTRO DE CUSTO DA PRESCRIÇÃO. ESTA OPÇÃO SÓ ESTARÁ A... |
| 4 | CD_SETOR_CONFIGURACAO | NUMBER | Y | SETOR QUE COMPOE A CHAVE UNICA E SERVE PARA CADASTRAR AS EXCESSOES NA REGRA GERAL |
| 5 | CD_UNIDADE_INTERNACAO | NUMBER | Y | UNIDADE DE INTERNAÇÃO A SER SUGERIDO QUE SERÁ USADO PARA O CENTRO DE CUSTO DA PRESCRIÇÃO. ESTA OP... |
| 6 | SN_DIA_SEGUINTE | NUMBER | Y | SE O TIPO DE OBJETO DE PRESCRIÇÃO É UMA PRESCRIÇÃO DO DIA SEGUINTE. 0- NÃO 1-SIM |
| 7 | SN_PRESC_FUTURA | NUMBER | N | INFORMA SE O TIPO DE OBJETO(PRESCRICAO) PERMITE FAZER PRESCRIÇÃO FUTURA. 0- NÃO 1-SIM |
| 8 | TP_CENTRO_CUSTO | NUMBER | N | INDICA QUAL SERÁ O VALOR INICIAL DE CENTRO DE CUSTO DA PRESCRIÇÃO. AS OPÇÕES DISPONÍVEIS SÃO: 1- ... |
| 9 | TP_PRESCRICAO_PADRAO | NUMBER | Y | ABRANGÊNCIA PARA PRESCRIÇÃO PADRÃO: 1-PROTOCOLO 2-PADRÃO |

---

## MVCPOE.CONFIGURACAO_PAGU_SETOR
> TABELA QUE GUARDA A CONFIGURAÇÃO PAGU SETOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIGURACAO_PAGU_SETOR | NUMBER | N | CÓDIGO IDENTIFICADOR ÚNICO DA CONFIGURAÇÃO PAGU SETOR |
| 2 | CD_SETOR | NUMBER | N | CÓDIGO DO SETOR A SER VINCULADO NA CONFIGURAÇÃO |
| 3 | DS_IMPRESSORA_ETIQUETA_GRANDE | VARCHAR2 | Y | CAMINHO DA IMPRESSORA - ETIQUETA GRANDE |
| 4 | DS_IMPRESSORA_ETIQUETA_PEQUENA | VARCHAR2 | Y | CAMINHO DA IMPRESSORA - ETIQUETA PEQUENA |
| 5 | HR_FINAL_PRESCRICAO_ENFERMAGEM | DATE | Y | HORÁRIO FINAL DE VALIDADE DA PRESCRIÇÃO DE ENFERMAGEM |
| 6 | HR_FINAL_PRESCRICAO_MEDICA | DATE | Y | HORÁRIO FINAL DE VALIDADE DA PRESCRIÇÃO MÉDICA |
| 7 | HR_IMPRESSAO_PRESCRICAO_ENFE | DATE | Y | HORÁRIO DE CORTE PARA IMPRESSÃO DOS HORÁRIOS PRESCRITOS PARA O ITEM NO RELATÓRIO DE PRESCRIÇÃO DE... |
| 8 | HR_IMPRESSAO_PRESCRICAO_MEDICA | DATE | Y | HORÁRIO DE CORTE PARA IMPRESSÃO DOS HORÁRIOS PRESCRITOS PARA O ITEM NO RELATÓRIO DE PRESCRIÇÃO MÉ... |
| 9 | HR_PRESCRICAO_ENFERMAGEM | DATE | Y | HORA PRESCRIÇÃO DE ENFERMAGEM |
| 10 | HR_LIMITE_PRESCRICAO_ENFERMG | DATE | Y | HORA LIMITE PARA A PRESCRIÇÃO DE ENFERMAGEM |
| 11 | HR_LIMITE_PRESCRICAO_MEDICA | DATE | Y | HORA LIMITE PARA A PRESCRIÇÃO MÉDICA |
| 12 | HR_PRESCRICAO_MEDICA | DATE | Y | HORA PRESCRIÇÃO MÉDICA. |
| 13 | HR_TOLERANCIA_PRESCRICAO_ENFE | DATE | Y | HORÁRIO DE TOLERÂNCIA DA PRESCRIÇÃO DE ENFERMAGEM. PRESCRIÇÕES CRIADAS APÓS ESTE HORÁRIO IRÃO INI... |
| 14 | HR_TOLERANCIA_PRESCRICAO_MEDIC | DATE | Y | HORÁRIO DE TOLERÂNCIA DA PRESCRIÇÃO MÉDICA. PRESCRIÇÕES CRIADAS APÓS ESTE HORÁRIO IRÃO INICIAR DE... |
| 15 | QT_DIAS_VALIDADE_PRESCRIC_ENFE | NUMBER | N | QUANTIDADE DE DIAS PARA VALIDADE DA PRESCRIÇÃO DE ENFERMAGEM |
| 16 | QT_DIAS_VALIDADE_PRESCRIC_MEDC | NUMBER | N | QUANTIDADE DE DIAS PARA VALIDADE DA PRESCRIÇÃO MÉDICA |
| 17 | QT_MINUTOS_ADICIONAIS_ENFERMG | NUMBER | Y | QUANTIDADE DE MINUTOS ADICIONAIS NA PRESCRIÇÃO ENFERMAGEM |
| 18 | QT_MINUTOS_ADICIONAIS_MEDICA | NUMBER | Y | QUANTIDADE DE MINUTOS ADICIONAIS NA PRESCRIÇÃO MÉDICA |
| 19 | SN_EXIBE_ITEM_NAO_COPIADO_ENFE | NUMBER | N | SIGNIFICA QUE DEVERÃO SER EXIBIDOS NA NOVA PRESCRIÇÃO DE ENFERMAGEM (DE FORMA RISCADA) OS ITENS N... |
| 20 | SN_EXIBE_ITEM_NAO_COPIADO_MEDC | NUMBER | N | SIGNIFICA QUE DEVERÃO SER EXIBIDOS NA NOVA PRESCRIÇÃO MÉDICA (DE FORMA RISCADA) OS ITENS NÃO COPI... |
| 21 | SN_HABILITA_DT_INI_PRESC_MEDC | NUMBER | N | HABILITA O CAMPO DATA INICIAL PARA EDIÇÃO NO POPUP DE CRIAÇÃO DA PRESCRIÇÃO MÉDICA |
| 22 | SN_HABILITA_DT_INI_PRESC_ENFE | NUMBER | N | HABILITA O CAMPO DATA INICIAL PARA EDIÇÃO NO POPUP DE CRIAÇÃO DA PRESCRIÇÃO DE ENFERMAGEM |
| 23 | SN_HABILITA_DT_REF_PRESC_MEDC | NUMBER | N | HABILITA O CAMPO DATA DE REFERÊNCIA PARA EDIÇÃO NO POPUP DE CRIAÇÃO DA PRESCRIÇÃO MÉDICA |
| 24 | SN_HABILITA_DT_REF_PRESC_ENFE | NUMBER | N | HABILITA O CAMPO DATA DE REFERÊNCIA PARA EDIÇÃO NO POPUP DE CRIAÇÃO DA PRESCRIÇÃO DE ENFERMAGEM |
| 25 | SN_HABILITA_DT_VLD_PRESC_MEDC | NUMBER | N | HABILITA O CAMPO DATA DE VALIDADE PARA EDIÇÃO NO POPUP DE CRIAÇÃO DA PRESCRIÇÃO MÉDICA |
| 26 | SN_HABILITA_DT_VLD_PRESC_ENFE | NUMBER | N | HABILITA O CAMPO DATA DE VALIDADE PARA EDIÇÃO NO POPUP DE CRIAÇÃO DA PRESCRIÇÃO DE ENFERMAGEM |
| 27 | SN_HABILITA_HR_INI_PRESC_MEDC | NUMBER | N | HABILITA O CAMPO HORA INICIAL PARA EDIÇÃO NO POPUP DE CRIAÇÃO DA PRESCRIÇÃO MÉDICA |
| 28 | SN_HABILITA_HR_INI_PRESC_ENFE | NUMBER | N | HABILITA O CAMPO HORA INICIAL PARA EDIÇÃO NO POPUP DE CRIAÇÃO DA PRESCRIÇÃO DE ENFERMAGEM |
| 29 | SN_HABILITA_HR_VLD_PRESC_MEDC | NUMBER | N | HABILITA O CAMPO HORA DE VALIDADE PARA EDIÇÃO NO POPUP DE CRIAÇÃO DA PRESCRIÇÃO MÉDICA |
| 30 | SN_HABILITA_HR_VLD_PRESC_ENFE | NUMBER | N | HABILITA O CAMPO HORA DE VALIDADE PARA EDIÇÃO NO POPUP DE CRIAÇÃO DA PRESCRIÇÃO DE ENFERMAGEM |
| 31 | SN_HABILITA_SETOR_PRESC_MEDC | NUMBER | N | HABILITA O CAMPO SETOR PARA EDIÇÃO NO POPUP DE CRIAÇÃO DA PRESCRIÇÃO MÉDICA |
| 32 | SN_HABILITA_SETOR_PRESC_ENFE | NUMBER | N | HABILITA O CAMPO SETOR PARA EDIÇÃO NO POPUP DE CRIAÇÃO DA PRESCRIÇÃO DE ENFERMAGEM |
| 33 | SN_HABILITA_UN_ITNC_PRESC_MEDC | NUMBER | N | HABILITA O CAMPO UNIDADE DE INTERNAÇÃO PARA EDIÇÃO NO POPUP DE CRIAÇÃO DA PRESCRIÇÃO MÉDICA |
| 34 | SN_HABILITA_UN_ITNC_PRESC_ENFE | NUMBER | N | HABILITA O CAMPO UNIDADE DE INTERNAÇÃO PARA EDIÇÃO NO POPUP DE CRIAÇÃO DA PRESCRIÇÃO DE ENFERMAGEM |
| 35 | SN_HORA_ATUAL_PRESC_ENFE_DIA | NUMBER | N | UTILIZAR HORÁRIO ATUAL PARA TODAS AS PRESCRIÇÕES DE ENFERMAGEM DO DIA DO ATENDIMENTO |
| 36 | SN_HORA_ATUAL_PRESC_MEDC_DIA | NUMBER | N | UTILIZAR HORÁRIO ATUAL PARA TODAS AS PRESCRIÇÕES MÉDICA DO DIA DO ATENDIMENTO |
| 37 | SN_IMPRIME_EVOLUCAO_ENFERMAGEM | NUMBER | Y | IMPRIME EVOLUÇÃO DE ENFERMAGEM (S)IM (N)ÃO |
| 38 | SN_IMPRIME_EVOLUCAO_MEDICA | NUMBER | Y | IMPRIME EVOLUÇÃO MÉDICA (S)IM (N)ÃO |
| 39 | SN_OBRIGA_EVOLUCAO_ENFERMAGEM | NUMBER | Y | OBRIGA PREENCHIMENTO DE EVOLUÇÃO DE ENFERMAGEM (S)IM (N)ÃO |
| 40 | SN_OBRIGA_EVOLUCAO_MEDICA | NUMBER | Y | OBRIGA PREENCHIMENTO DE EVOLUÇÃO MÉDICA (S)IM (N)ÃO |
| 41 | SN_PREPARACAO_ITENS_PRESCRICAO | NUMBER | N | TRABALHA COM PREPARAÇÃO DE ITENS DE PRESCRIÇÃO |
| 42 | SN_PRESCRICAO_INTERNADO | NUMBER | Y | HABILITA O CAMPO PARA PRESCRIÇÃO DE INTERNADO |
| 43 | SN_PREVISAO_ALTA_MEDICA | NUMBER | N | VALIDA A PREVISÃO DE ALTA MÉDICA |
| 44 | SN_PRESCRICAO_RETROATIVA | NUMBER | Y | AUTORIZA PRESCRIÇÕES RETROATIVAS |
| 45 | SN_HR_ATUAL_CORTE_ENFE_N_RTRTV | NUMBER | N | UTILIZAR HORÁRIO ATUAL COMO HORÁRIO DE CORTE PARA PRESCRIÇÕES DE ENFERMAGEM NÃO RETROATIVAS |
| 46 | SN_HR_ATUAL_CORTE_MEDC_N_RTRTV | NUMBER | N | UTILIZAR HORÁRIO ATUAL COMO HORÁRIO DE CORTE PARA PRESCRIÇÕES MÉDICAS NÃO RETROATIVAS |
| 47 | SN_HORA_ATUAL_PRESCRICAO_MEDC | NUMBER | N | CONSIDERA O HORÁRIO ATUAL COMO HORÁRIO DA PRESCRIÇÃO MÉDICA |
| 48 | SN_HORA_ATUAL_PRESCRICAO_ENFE | NUMBER | N | CONSIDERA O HORÁRIO ATUAL COMO HORÁRIO DA PRESCRIÇÃO DE ENFERMAGEM |
| 49 | TP_ADMISSAO_MEDICA | NUMBER | Y | PDA 175553 - 1 : PARA A IMPRESSÃO DA ADMISSÃO MÉDICA É OBRIGATÓRIO O PREENCHIMENTO DO ESQUEMA COM... |
| 50 | TP_FECHAR_HORARIOS_ATRASADOS | NUMBER | Y | FECHAR PRESCRIÇÃO COM HORÁRIOS DE ITENS ATRASADOS - 1 : PERMITIR; 2 - SUGERIR AJUSTE 3 - REGERAR ... |
| 51 | TP_OBRIGA_EVOLUCAO_ENFERMAGEM | NUMBER | Y | TIPO DE OBRIGATORIEDADE DA EVOLUÇÃO ENFERMAGEM - 1 : UM POR DIA; 2 : UM POR PRESTADOR |
| 52 | TP_OBRIGA_EVOLUCAO_MEDICA | NUMBER | Y | TIPO DE OBRIGATORIEDADE DA EVOLUÇÃO MÉDICA - 1 : UM POR DIA; 2 : UM POR PRESTADOR |
| 53 | TP_SUSPENCAO_SETOR_PRESC_MEDC | NUMBER | Y | INDICA O TIPO DE SUSPENSÃO CONFIGURADA POR SETOR PARA PRESCRIÇÕES MÉDICAS. - 1 : NÃO CONFIGURADO;... |
| 54 | TP_SUSPENCAO_SETOR_PRESC_ENFE | NUMBER | Y | INDICA O TIPO DE SUSPENSÃO CONFIGURADA POR SETOR PARA PRESCRIÇÕES DE ENFERMAGEM. - 1 : NÃO CONFIG... |
| 55 | CD_CID | VARCHAR2 | Y | CLASSIFICAÇÃO ESTATÍSTICA INTERNACIONAL DE DOENÇAS E PROBLEMAS RELACIONADOS |
| 56 | CD_TIPO_RESULTADO | NUMBER | Y | MOTIVO DA ALTA |
| 57 | NR_LIMITE_APRAZAMENTO | NUMBER | Y | LIMITE DE TOLERÂNCIA EM HORAS PARA A REALIZAÇÃO DE UM APRAZAMENTO |
| 58 | QT_ADIANTA_CHECAGEM | NUMBER | Y | TEMPO LIMITE PARA ADIANTAR A CHECAGEM |
| 59 | QT_ATRASO_CHECAGEM | NUMBER | Y | TEMPO LIMITE EM MINUTOS PARA NÃO SER CONSIDERADO ATRASO DE CHECAGEM |
| 60 | QT_JUSTIFICA_CHECAGEM | NUMBER | Y | TEMPO LIMITE EM MINUTOS PARA NÃO EXIGIR JUSTIFICATIVA |
| 61 | SN_CRIAR_HORARIO | NUMBER | Y | INDICA SE OS ITENS VINCULADOS A ESTE ESQUEMA GERARÃO OU NÃO HORÁRIO NA PRESCRIÇÃO, 1:SIM E 0:NÃO. |
| 62 | SN_CONFERIR_ADMINISTRACAO | NUMBER | N | INDICA SE O SETOR VAI FAZER OU NÃO A CONFERÊNCIA DE ADMINISTRAÇÃO, 1:SIM E 0:NÃO. |
| 63 | SN_GERAR_DEV_ITENS_SUSPENDER | NUMBER | N | GERAR AUTOMATICAMENTE A DEVOLUÇÃO DE ITENS SUSPENSOS, 1:SIM E 0:NÃO. |
| 64 | SN_OBRIGA_CHECAGEM_ANTERIOR | NUMBER | Y | INDICA SE É OBRIGATÓRIA A CHECAGEM ANTERIOR, 1:SIM E 0:NÃO. |
| 65 | SN_VALIDAR_FREQUENCIA_CHECAGEM | NUMBER | Y | QUANDO LIGADA O SISTEMA IRÁ LIMITAR A CRIAÇÃO DE HORÁRIOS ATRAVÉS DO APRAZAMENTO QUANDO A QUANTID... |
| 66 | TP_APRAZAMENTO | NUMBER | N | OPÇÕES DE APRAZAMENTO, 1(M): MANUAL, 2(A):AUTOMÁTICO |
| 67 | TP_CHECAGEM | NUMBER | Y | INDICA O TIPO DE CHECAGEM QUE O SETOR SELECIONADO IRÁ REALIZAR: 1(CC):CONTROLA CHECAGEM, 2(CA):CH... |
| 68 | TP_TRATA_URGENTE | NUMBER | Y | DEFINE SE SERÁ GERADA SOLICITAÇÃO INDEPENDENTE PARA ITENS URGENTES, 1:NÃO GERAR, 2:APENAS PRIMEIR... |
| 69 | TP_CHECAGEM_COMPONENTE | NUMBER | Y | INDICA O TIPO DE CHECAGEM DE COMPONENTE QUE O SETOR SELECIONADO IRÁ REALIZAR: 1(CC):CONTROLA CHEC... |
| 70 | TP_AVALIACAO_FARMACEUTICA | NUMBER | Y | INDICA COMO SERÁ A GERAÇÃO DA AVALIAÇÃO FARMACÊUTICA, AS OPÇÕES POSSÍVEIS SÃO: 1=AUT=>AUTOMATICA ... |
| 71 | CD_OBJETO_AVAL_AUTO | NUMBER | Y | OBJETO PARA A AVALIAÇÃO AUTOMÁTICA |

---

## MVCPOE.CONFIGURACAO_PAGU_TIPO_PRESTAD
> TABELA DE CONFIGURAÇÃO PAGU PARA TIPO DE PRESTADOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_PAGU_TIPO_PRESTADOR | NUMBER | N | CÓDIGO SEQUÊNCIAL DA TABELA CONFIGURAÇÃO PAGU PARA TIPO DE PRESTADOR |
| 2 | CD_TIPO_PRESTADOR | NUMBER | N | CÓDIGO DO TIPO DE FUNÇÃO DO PRESTADOR |
| 3 | TP_PRESTADOR | NUMBER | N | CÓDIGO DO TIPO DE PRESTADOR DA PRESCRIÇÃO - 1: MEDICO; 2 - ENFERMEIRO; 3 - FARMACIA; 4 - FISIOTER... |
| 4 | CD_GRUPO_PRESTADOR_EVOLUCAO | NUMBER | Y | NUMERAÇÃO PARA IDENTIFICAR O GRUPO QUE ENXERGARÁ AS EVOLUÇÕES FEITAS POR ESSE TIPO DE PRESTADOR |
| 5 | SN_EVOLUCAO | NUMBER | N | INFORMA SE SERÁ PERMITIDO LANÇAR EVOLUÇÃO POR ESSE TIPO DE PRESTADOR - 0 : NÃO; 1 : SIM |
| 6 | TP_SELECIONA_ATENDIMENTO | NUMBER | N | INFORMA O TIPO DE CONTROLE DE SELECIONAR O ATENDIMENTO AO ENTRAR NO PAGU   1 : Obrigatório; 2 : S... |
| 7 | SN_PRESCRICAO_MEDICA | NUMBER | Y | INFORMA SE SERÁ PERMITIDO LANÇAR EVOLUÇÃO POR ESSE TIPO DE PRESTADOR - 0 : NÃO; 1 : SIM |
| 8 | SN_TRANSCRICAO | NUMBER | Y | INFORMA SE PERMITE TRANSCRIÇÃO POR ESSE TIPO DE PRESTADOR - 0 : NÃO; 1 : SIM |
| 9 | SN_ENFERMAGEM | NUMBER | Y | INFORMA SE PERMITE PRESCRIÇÃO DE ENFERMAGEM POR ESSE TIPO DE PRESTADOR - 0 : NÃO; 1 : SIM |
| 10 | SN_APRAZAMENTO | NUMBER | Y | INFORMA SE PERMITE APRAZAR CHECAGEM POR ESSE TIPO DE PRESTADOR - 0 : NÃO; 1 : SIM |
| 11 | SN_CHECAGEM | NUMBER | Y | INFORMA SE PERMITE REALIZAR A CHECAGEM DE ENFERMAGEM POR ESSE TIPO DE PRESTADOR - 0 : NÃO; 1 : SIM |
| 12 | SN_AUDITORIA | NUMBER | Y | INFORMA SE PERMITE AUDITAR CHECAGEM DE ENFERMAGEM POR ESSE TIPO DE PRESTADOR - 0 : NÃO; 1 : SIM |
| 13 | SN_DUPLA_CHECAGEM | NUMBER | N | INFORMA SE PERMITE REALIZAR A DUPLA CHECAGEM POR ESSE TIPO DE PRESTADOR - 0 : NÃO; 1 : SIM |
| 14 | SN_DESFAZ_CHECAGEM | NUMBER | N | INFORMA SE PERMITE DESFAZER A CHECAGEM POR ESSE TIPO DE PRESTADOR - 0 : NÃO; 1 : SIM |

---

## MVCPOE.CONFIGURACAO_PAGU_TRANSF_LEITO
> TABELA DE FECHAMENTO DO PAGU

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_PAGU_TRANSF_LEITO | NUMBER | N | CÓDIGO DE IDENTIFICADOR ÚNICO DO REGISTRO NA TABELA |
| 2 | CD_SETOR | NUMBER | N | CÓDIGO DO SETOR DE ORIGEM |
| 3 | CD_SETOR_DESTINO | NUMBER | N | CÓDIGO DO SETOR DE DESTINO |
| 4 | TP_PROCESSO | NUMBER | N | PROCESSO DE SUBSTITUIÇÃO, 0(P): SOL. DE PRODUTOS DA PRESCRIÇÃO, 1(V): SOLICITAÇÃO AVULSA, 2(A): A... |
| 5 | TP_SUBSTITUICAO | NUMBER | N | TIPO DE SUBSTITUIÇÃO, 0(S): SUBSTITUIR AS SOL. EM ABERTO, 1(A): SUBSTITUIR COM BASE NO APRAZ, 2(C... |
| 6 | CD_CONFIGURACAO_PAGU_SETOR | NUMBER | N | CÓDIGO IDENTIFICADOR ÚNICO DA CONFIGURAÇÃO PAGU SETOR |

---

## MVCPOE.CONFIGURACAO_PARAMETRO_PRESC
> TABELA DE CONFIGURAÇÃO DE PARÂMETROS DE IMPRESSÃO DA PRESCRIÇÃO DE MEDICAMENTOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIGURACAO_PARAM_PRESC | NUMBER | N | CÓDIGO IDENTIFICADOR ÚNICO DA CONFIGURAÇÃO DE PARÂMETROS DE IMPRESSÃO DA PRESCRIÇÃO DE MEDICAMENTOS |
| 2 | NM_PARAMETRO | VARCHAR2 | N | CÓDIGO DO PARÂMETRO |
| 3 | DS_PARAMETRO | VARCHAR2 | N | DESCRIÇÃO DO PARÂMETRO |
| 4 | DS_VALOR | VARCHAR2 | Y | VALOR DO PARÂMETRO |
| 5 | SN_OBRIGATORIO | NUMBER | N | INDICA SE O PARÂMETRO É OBRIGATÓRIO - 0 : NÃO; 1 : SIM |
| 6 | TP_VALOR | NUMBER | Y | TIPO DO VALOR QUE SERÁ INSERIDO PARA O PARÂMETRO - 1 : CÓDIGO (COD); 2 : DESCRIÇÃO (DESC); 3 : LI... |
| 7 | DS_SQL_VALIDACAO | VARCHAR2 | Y | SQL PARA TRAZER O DOMÍNIO DOS CAMPOS PARA VALIDAÇÃO |
| 8 | SN_PERMITE_CONFIGURACAO | NUMBER | N | VERIFICA SE O PARÂMETRO PERMITE CONFIGURAÇÃO - 0 : NÃO; 1 : SIM |
| 9 | DS_CAMINHO_TELA | VARCHAR2 | Y | INDICA QUAL TELA IRÁ SER CHAMADA PELO BOTÃO DE CONFIGURAÇÃO |

---

## MVCPOE.CONFIG_ESQMA_REDUCAO_QUANTD
> REPRESENTA OS ESQUEMAS DE PRESCRIÇÃO QUE SOFRERÃO ALTERAÇÃO NA SUA QUANTIDADE QUANDO UM PERCENTUAL DE REDUÇÃO FOR APLICADO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_ESQMA_REDUCAO_QUANTD | NUMBER | N | CÓDIGO IDENTIFICADOR ÚNICO DO ESQUEMAS DE PRESCRIÇÃO QUE SOFRERÃO ALTERAÇÃO NA SUA QUANTIDADE |
| 2 | CD_TIPO_ESQUEMA | NUMBER | N | CÓDIGO DO ESQUEMA DA PRESCRIÇÃO |

---

## MVCPOE.CONFIG_ESQUEMA_OBSERV_PREDEF

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_ESQUEMA_OBS_PREDEF | NUMBER | N |  |
| 2 | CD_OBSERVACAO_PREDEFINIDA | NUMBER | N |  |
| 3 | CD_TIPO_ESQUEMA | NUMBER | Y |  |
| 4 | NM_TIPO_ESQUEMA | VARCHAR2 | N |  |

---

## MVCPOE.CONFIG_EXCECAO_ESTOQUE_SUBST

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_EXCECAO_ESTOQUE_SUB | NUMBER | N |  |
| 2 | CD_CONFIGURACAO_ESTOQUE | NUMBER | Y |  |
| 3 | TP_CONFIG_ESTOQUE | NUMBER | Y |  |
| 4 | CD_ESPECIE | NUMBER | Y |  |
| 5 | CD_CLASSE | NUMBER | Y |  |
| 6 | CD_SUB_CLASSE | NUMBER | Y |  |
| 7 | CD_PRODUTO | NUMBER | Y |  |
| 8 | CD_ESTOQUE_SUBSTITUTO | NUMBER | Y |  |

---

## MVCPOE.CONFIG_ITEM_PRESCRIC_COMPONNT
> TABELA DE COMPONENTES PARA O ITEM DE PRESCRIÇÃO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_ITEM_PRESC_COMPONNT | NUMBER | N | CÓDIGO SEQUÊNCIAL PARA A TABELA COMPONENTE. |
| 2 | CD_COMPON | NUMBER | Y |  |
| 3 | CD_COMPONENTE_POSOLOGIA | NUMBER | Y |  |
| 4 | CD_CONFIGURACAO_ITEM_PRESCRIC | NUMBER | N | CÓDIGO DO ITEM DE PRESCRIÇÃO PAI |
| 5 | CD_CONFIGURACAO_IT_PRESC_CMPNT | NUMBER | N | CÓDIGO DO ITEM DE PRESCRIÇÃO FILHO |
| 6 | CD_CONFIG_ITEM_PRESC_POSOLOGIA | NUMBER | Y | CÓDIGO DA POSOLOGIA VINCULADA A ESSE COMPONENTE |
| 7 | QT_COMPONENTE | NUMBER | N | QUANTIDADE DO COMPONENTE |
| 8 | CD_FORMA_APLICACAO | NUMBER | Y | CÓDIGO DA FORMA DE APLICAÇÃO DO COMPONENTE |
| 9 | CD_PRODUTO | NUMBER | Y | CÓDIGO DO PRODUTO |
| 10 | CD_UNIDADE_PRODUTO | NUMBER | Y | CÓDIGO DA UNIDADE DE MEDIDA DO PRODUTO |
| 11 | SN_EXIBE_PRESCRICAO | NUMBER | N | INFORMA SE O COMPONENTE DEVERÁ SER EXIBIDO NA PRESCRIÇÃO - 0 : NÃO (E); 1 : SIM (M) |
| 12 | SN_FATURA | NUMBER | Y | INDICA SE O COMPONENTE IRÁ PARA A CONTA (FATURA) DO PACIENTE - 0 : NÃO; 1 : SIM |
| 13 | SN_MULTIPLICA_QUANTIDADE | NUMBER | Y | INFORMA SE O COMPONENTE IRÁ SER MULTIPLICADO PELA QUANTIDADE DO ITEM PRINCIPAL - 0 : NÃO (A); 1 :... |
| 14 | CD_UNIDADE_PRESCRICAO | NUMBER | Y | CÓDIGO DA UNIDADE DE MEDIDA DA PRESCRIÇÃO |
| 15 | DS_OBSERVACAO_COMPONENTE | VARCHAR2 | Y | OBSERVAÇÃO DO COMPONENTE |
| 16 | SN_DILUENTE_PADRAO | NUMBER | N | INDICA SE O COMPONENTE É O DILUENTE PADRÃO - 0 : NÃO; 1 : SIM |
| 17 | SN_RECONSTITUINTE_PADRAO | NUMBER | N | INDICA SE O COMPONENTE É O RECONSTITUINTE PADRÃO - 0 : NÃO; 1 : SIM |
| 18 | SN_EXIBE_AVALIACAO_FARMACIA | NUMBER | Y | INDICA SE DEVE EXIBIR O COMPONENTE DO ITEM DE PRESCRIÇÃO NA AVALIAÇÃO FARMACÊUTICA - 0 : NÃO; 1 :... |
| 19 | SN_EXIBE_RELATORIO | NUMBER | N | INDICA SE DEVE PERMITIR EXIBIR O COMPONENTE DO ITEM DE PRESCRIÇÃO - 0 : NÃO; 1 : SIM |

---

## MVCPOE.CONFIG_ITEM_PRESC_BLOQ_EMPRE
> TABELA QUE INDICA O BLOQUEIO DOS ITENS DE PRESCRIÇÃO POR EMPRESA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_ITEM_PRESC_BLOQ_EMP | NUMBER | N | CÓDIGO IDENTIFICADOR DA CONFIGURAÇÃO DO BLOQUEIO DOS ITENS DE PRESCRIÇÃO POR EMPRESA |
| 2 | CD_CONFIGURACAO_ITEM_PRESCRIC | NUMBER | N | CÓDIGO DA CONFIGURAÇÃO DO ITEM DA PRESCRICAO |
| 3 | CD_MULTI_EMPRESA | NUMBER | Y | CÓDIGO MULTI EMPRESA DO SISTEMA |
| 4 | SN_BLOQUEIO_PRESCRICAO | NUMBER | N | INFORMA SE BLOQUEIA O ITEM PARA SER PREESCRITO - 0 : NÃO; 1 : SIM |
| 5 | DS_BLOQUEIO_PRESCRICAO | VARCHAR2 | N | MENSAGEM EXIBIDA QUANDO SELECIONAR O ITEM NA PRESCRIÇÃO |

---

## MVCPOE.CONFIG_ITEM_PRESC_CMPNT_CMPT
> TABELA DE COMPONENTES COMPATÍVEIS PARA O ITEM DE PRESCRIÇÃO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_IT_PRESC_CMPNT_CMPT | NUMBER | N | CÓDIGO IDENTIFICADOR DE COMPONENTES COMPATÍVEIS DE ITENS DE PRESCRIÇÃO |
| 2 | CD_CONFIGURACAO_ITEM_PRESCRIC | NUMBER | N | CÓDIGO DO ITEM DE PRESCRIÇÃO PAI |
| 3 | CD_CONFIGURACAO_IT_PRESC_CMPNT | NUMBER | N | CÓDIGO DO ITEM DE PRESCRIÇÃO FILHO |

---

## MVCPOE.CONFIG_ITEM_PRESC_CMPNT_FILTRO
> TABELA QUE GUARDA OS FILTROS POSSÍVEIS PARA UM COMPONENTE SER LANÇADO NO ITEM DE PRESCRIÇÃO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CNFG_IT_PRESC_CMPNT_FILTRO | NUMBER | N | CÓDIGO SEQUENCIAL IDENTIFICADOR DO REGISTRO DE FILTRO DE COMPONENTE DE ITEM DA PRESCRIÇÃO |
| 2 | CD_CONFIG_ITEM_PRESC_COMPONNT | NUMBER | N | CÓDIGO DO COMPONENTE DO FILTRO |
| 3 | CD_SETOR | NUMBER | Y | CÓDIGO DO SETOR PARA FILTRAR |
| 4 | CD_MULTI_EMPRESA | NUMBER | Y | CÓDIGO DA MULTI EMPRESA PARA FILTRAR |
| 5 | QT_DOSE_MINIMA | NUMBER | Y | DEFINE A QUANTIDADE MÍNIMA DA DOSE O ITEM DE PRESCRIÇÃO PAI EM SUA UNIDADE DE REFERÊNCIA, O COMPO... |
| 6 | QT_DOSE_MAXIMA | NUMBER | Y | DEFINE A QUANTIDADE MÁXIMA DA DOSE O ITEM DE PRESCRIÇÃO PAI EM SUA UNIDADE DE REFERÊNCIA, O COMPO... |
| 7 | CD_FORMA_APLICACAO | NUMBER | Y | CÓDIGO DA FORMA DE APLICAÇÃO PARA FILTRAR |
| 8 | NR_ANO_INICIAL | NUMBER | Y | ANO INICIAL A SER LEVADO EM CONTRA NO FILTRO POR FAIXA ETÁRIA |
| 9 | NR_MES_INICIAL | NUMBER | Y | MÊS INICIAL A SER LEVADO EM CONTRA NO FILTRO POR FAIXA ETÁRIA |
| 10 | NR_DIA_INICIAL | NUMBER | Y | DIA INICIAL A SER LEVADO EM CONTRA NO FILTRO POR FAIXA ETÁRIA |
| 11 | NR_ANO_FINAL | NUMBER | Y | ANO FINAL A SER LEVADO EM CONTRA NO FILTRO POR FAIXA ETÁRIA |
| 12 | NR_MES_FINAL | NUMBER | Y | MÊS FINAL A SER LEVADO EM CONTRA NO FILTRO POR FAIXA ETÁRIA |
| 13 | NR_DIA_FINAL | NUMBER | Y | DIA FINAL A SER LEVADO EM CONTRA NO FILTRO POR FAIXA ETÁRIA |

---

## MVCPOE.CONFIG_ITEM_PRESC_CONTROL_DOSE
> TABELA QUE ARMAZENA AS REGRAS DE SUBDOSAGEM E SUPERDOSAGEM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_ITEM_PRESC_CTRL_DOSE | NUMBER | N | IDENTIFICADOR DA TABELA DE CONTROLE DAS REGRAS DE SUPERDOSAGEM. |
| 2 | CD_CONFIGURACAO_ITEM_PRESCRIC | NUMBER | N | IDENTIFICADOR DO ITEM DE PRESCRIÇÃO QUE VAI TER A VALIDAÇÃO DA DOSAGEM. |
| 3 | QT_IMPEDITIVO_MAXIMO | NUMBER | Y | LIMITE MÁXIMO ABSURDO, QUE NÃO PODE SER PRESCRITO |
| 4 | QT_ALERTA_MAXIMO | NUMBER | Y | QUANTIDADE QUE JÁ DEVE SER ALERTADO DA SUPERDOSAGEM |
| 5 | CD_UNIDADE_PRESCRICAO | NUMBER | Y | CÓDIGO DA UNIDADE DE PRESCRIÇÃO (QUANDO NÃO TEM PRODUTO NO ITEM). |
| 6 | CD_UNIDADE_PRODUTO | NUMBER | Y | CÓDIGO DA UNIDADE DO PRODUTO ASSOCIADO AO ITEM. |
| 7 | SN_PESO | NUMBER | Y | SE O LIMITE CONSIDERA O PESO (EM KG) - 0 : NÃO; 1 : SIM |
| 8 | TP_PERIODO | NUMBER | Y | INDICA O TIPO O PERÍODO EM QUE A QUANTIDADE DADA NÃO PODE ULTRAPASSAR - 1 : DIA; 2 : DOSE; 3 : HO... |
| 9 | NR_DIAS | NUMBER | Y | CONTROLAR PEDIDOS FREQUENTES DE EXAMES DE ALTO CUSTO EM CURTO PERÍODO. |
| 10 | NR_IDADE_MAXIMA | NUMBER | Y | GRAVAR A IDADE EM MESES, MAS EXIBIR EM TELA O COMPONENTE EM ANOS E MESES. |
| 11 | NR_IDADE_MINIMA | NUMBER | Y | GRAVAR A IDADE EM MESES, MAS EXIBIR EM TELA O COMPONENTE EM ANOS E MESES. |
| 12 | NR_PESO_MINIMO | NUMBER | Y | DEVE SER CONSIDERADO O PESO EM KG (INTERVALO MINIMO). |
| 13 | NR_PESO_MAXIMO | NUMBER | Y | DEVE SER CONSIDERADO O PESO EM KG (INTERVALO MAXIMO). |
| 14 | DS_ALERTA_MAXIMO | VARCHAR2 | Y | EXIBIDO NO MOMENTO QUE A CONDIÇÃO DE SUPERDOSAGEM FOR ATINGIDO |
| 15 | QT_IMPEDITIVO_MINIMO | NUMBER | Y | LIMITE MÍNIMO ABSURDO, QUE NÃO PODE SER PRESCRITO |
| 16 | QT_ALERTA_MINIMO | NUMBER | Y | QUANTIDADE QUE JÁ DEVE SER ALERTADO DA SUBDOSAGEM |
| 17 | DS_ALERTA_MINIMO | VARCHAR2 | Y | EXIBIDO NO MOMENTO QUE A CONDIÇÃO DE SUBDOSAGEM FOR ATINGIDO |

---

## MVCPOE.CONFIG_ITEM_PRESC_DISPOSITIVO
> DISPOSITIVOS VINCULADOS NA CONFIGURAÇÃO DE ITENS DA PRESCRIÇÃO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_IT_PRESC_DISPOSITIVO | NUMBER | N | CÓDIGO DA SEQUENCE DO CADASTRO. |
| 2 | CD_CONFIGURACAO_ITEM_PRESCRIC | NUMBER | N | CÓDIGO DO ITEM DE PRESCRIÇÃO. |
| 3 | CD_DISPOSITIVO | NUMBER | N | CÓDIGO DO DISPOSITIVO. |
| 4 | SN_DISPOSITIVO_PADRAO | NUMBER | Y | INFORMA SE É O DISPOSITIVO PADRÃO PARA O ITEM DA PRESCRIÇÃO. |

---

## MVCPOE.CONFIG_ITEM_PRESC_FREQUENCIA
> CONFIGURAÇÃO DE FREQUÊNCIA DE ITEM DA PRESCRIÇÃO DE MEDICAMENTOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_IT_PRESC_FREQUENCIA | NUMBER | N | CÓDIGO IDENTIFICADOR DA CONFIGURAÇÃO DE FREQUÊNCIA POR ITEM DA PRESCRIÇÃO |
| 2 | CD_CONFIGURACAO_ITEM_PRESCRIC | NUMBER | N | CÓDIGO DA CONFIGURAÇÃO DO ITEM DA PRESCRICAO |
| 3 | CD_FREQUENCIA | NUMBER | N | CÓDIGO DA FREQUÊNCIA |
| 4 | SN_USO_FREQUENTE | NUMBER | N | INDICA SE A FREQUÊNCIA É DE USO FREQUENTE - 0 : NÃO; 1 : SIM |

---

## MVCPOE.CONFIG_ITEM_PRESC_POSOLOGIA
> TABELA DE CONFIGURAÇÃO PADRÃO DE POSOLOGIA DO ITEM DA PRESCRIÇÃO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_ITEM_PRESC_POSOLOGIA | NUMBER | N | IDENTIFICADOR DA TABELA DE CONFIGURAÇÃO PADRÃO DE POSOLOGIA DO ITEM DA PRESCRIÇÃO |
| 2 | QT_DOSE | NUMBER | Y | QUANTIDADE CONFIGURAÇÃO PADRÃO ITEM |
| 3 | SN_USO_CONTINUO | NUMBER | N | SE A CONFIGURAÇÃO PADRÃO ITEM É DE USO CONTÍNUO |
| 4 | SN_ATIVO | NUMBER | Y | SE A CONFIGURAÇÃO PADRÃO ITEM ESTÁ ATIVA |
| 5 | CD_SETOR | NUMBER | Y | CÓDIGO SETOR |
| 6 | CD_FORMA_APLICACAO | NUMBER | Y | CÓDIGO FORMA APLICAÇÃO |
| 7 | CD_UNIDADE_PRODUTO | NUMBER | Y | CÓDIGO DA UNIDADE PRODUTO |
| 8 | CD_UNIDADE_PRESCRICAO | NUMBER | Y | CÓDIGO DA UNIDADE PRESCRIÇÃO |
| 9 | CD_FREQUENCIA | NUMBER | Y | CÓDIGO TIPO FREQUÊNCIA |
| 10 | CD_CONFIGURACAO_ITEM_PRESCRIC | NUMBER | N | CÓDIGO DO ITEM DE PRESCRIÇÃO |
| 11 | DS_TITULO | VARCHAR2 | Y | ATRIBUI UM TEXTO RESUMIDO PARA ESTE PADRÃO DE INFORMAÇÕES. SERÁ USADO NO LANÇAMENTO AGRUPADO. |
| 12 | DS_OBSERVACAO | VARCHAR2 | Y | COLUNA QUE PODE TER UM TEXTO PADRONIZADO |
| 13 | CD_MATERIAL_EXAME_LABORATORIAL | NUMBER | Y | MATERIAL DE COLETA DE EXAME LABORATORIAL |
| 14 | QT_DOSE_CALCULO | NUMBER | Y | APRESENTA A DOSE PADRÃO DA MEDICAÇÃO, SENDO ESTA INFORMADA PELO MÉDICO NA PRESCRIÇÃO |
| 15 | NR_ORDEM | NUMBER | Y | NÚMERO DE ORDEM |
| 16 | NR_DIAS_PADRAO | NUMBER | Y | DIAS DE APLICAÇÃO DA MEDICAÇÃO |
| 17 | SN_SE_NECESSARIO | NUMBER | Y | SE O ITEM É SE NECESSÁRIO |
| 18 | SN_URGENTE | NUMBER | Y | SE O ITEM É URGENTE |
| 19 | CD_PRESTADOR_PADRAO | NUMBER | Y | O PRESTADOR EXECUTANTE INDICADO PARA O PROCEDIMENTO |
| 20 | CD_PADRAO_FORMULA | NUMBER | Y | A FÓRMULA QUE SERVIRÁ COMO PADRÃO NESSA POSOLOGIA |
| 21 | CD_OBSERVACAO_PREDEFINIDA | NUMBER | Y | ASSOCIAÇÃO COM UMA OBSERVAÇÃO PREDEFINIDA |
| 22 | HR_EXAME | DATE | Y | DURAÇÃO DA INFUSÃO |
| 23 | CD_LOCAL_ANATOMICO_COLETA | NUMBER | Y | CAMPO PARA ARMAZENAR O CÓDIGO DO LOCAL ANATOMICO DA COLETA |
| 24 | CD_DISPOSITIVO | NUMBER | Y | CÓDIGO DO DISPOSITIVO UTILIZADO NO ITEM DE PRESCRIÇÃO |
| 25 | NR_VOLUME_TOTAL | NUMBER | Y | CAMPO PARA INFORMAR O VOLUME TOTAL DA SOLUÇÃO APÓS A DILUIÇÃO |
| 26 | CD_UNIDADE_PRODT_VOLUME_TOTAL | NUMBER | Y | UNIDADE DE PRODUTO RELACIONADA AO VOLUME TOTAL DA SOLUÇÃO APÓS A DILUIÇÃO |
| 27 | SN_CRONICO | NUMBER | Y | INFORMA SE O ITEM É DE USO CRÔNICO - 0: NÃO; 1: SIM |
| 28 | CD_MULTI_EMPRESA | NUMBER | Y | CÓDIGO MULTI EMPRESA DO SISTEMA |
| 29 | NR_MINUTOS_DURACAO | NUMBER | Y | NÚMERO DE MINUTOS PARA A DURAÇÃO PADRÃO PARA APLICAÇÃO |
| 30 | NR_HORAS_DURACAO | NUMBER | Y | NÚMERO DE HORAS PARA A DURAÇÃO PADRÃO PARA APLICAÇÃO |
| 31 | NR_DIAS_DURACAO | NUMBER | Y | NÚMERO DE DIAS PARA A DURAÇÃO PADRÃO PARA APLICAÇÃO |
| 32 | CD_UNIDADE_PRESC_VOLUME_TOTAL | NUMBER | Y | UNIDADE DE PRESCRIÇÃO RELACIONADA AO VOLUME TOTAL DA SOLUÇÃO APÓS A DILUIÇÃO |
| 33 | TP_UNIDADE_IDADE | NUMBER | Y | UNIDADE DE MEDIDA PARA A IDADE INICIAL E FINAL DA RESTRIÇÃO - 1 : DIA; 2 - MÊS; 3 - ANO |
| 34 | TP_UNIDADE_PESO | NUMBER | Y | UNIDADE DE MEDIDA PARA O PESO INICIAL E FINAL DA RESTRIÇÃO - 1 : GRAMA (G); 2 - QUILOGRAMA (KG) |
| 35 | SN_POSOLOGIA_PADRAO | NUMBER | N | INFORMA SE É A CONFIGURAÇÃO DE POSOLOGIA PADRÃO PARA O ITEM DA PRESCRIÇÃO - 0 : NÃO; 1 : SIM |
| 36 | SN_QUANTIDADE_EDITAVEL | NUMBER | N | INDICA SE O CAMPO QUANTIDADE SERÁ EDITÁVEL - 0: NÃO; 1: SIM |
| 37 | NR_IDADE_INICIAL | NUMBER | Y |  |
| 38 | NR_IDADE_FINAL | NUMBER | Y |  |
| 39 | NR_PESO_INICIAL | NUMBER | Y |  |
| 40 | NR_PESO_FINAL | NUMBER | Y |  |

---

## MVCPOE.CONFIG_ITEM_REDUCAO_QUANTD
> REPRESENTA OS ITENS DE PRESCRIÇÃO QUE SOFRERÃO ALTERAÇÃO NA SUA QUANTIDADE QUANDO UM PERCENTUAL DE REDUÇÃO FOR APLICADO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_ITEM_REDUCAO_QUANTD | NUMBER | N | CÓDIGO IDENTIFICADOR ÚNICO DO ITEM DE PRESCRIÇÃO QUE SOFRERÃO ALTERAÇÃO NA SUA QUANTIDADE |
| 2 | CD_CONFIGURACAO_ITEM_PRESCRIC | NUMBER | N | CÓDIGO DA CONFIGURAÇÃO DE ITEM DA PRESCRIÇÃO |
| 3 | CD_CONFIG_ESQMA_REDUCAO_QUANTD | NUMBER | N | CÓDIGO DO ESQUEMA DA PRESCRIÇÃO |

---

## MVCPOE.CONFIG_IT_PRESC_PAD_SETOR
> RELACIONA SETORES COM OS ITENS PARA PRESCREVER

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_IT_PRESC_PAD_SETOR | NUMBER | N |  |
| 2 | CD_CONFIGURACAO_ITEM_PRESCRIC | NUMBER | N | CÓDIGO DO ITEM |
| 3 | CD_FORMA_APLICACAO | VARCHAR2 | Y | CÓDIGO DE IDENTIFICAÇÃO DA FORMA UTILIZADA COMO PADRÃO |
| 4 | CD_FREQUENCIA | NUMBER | Y | CÓDIGO DE REFERÊNCIA |
| 5 | CD_OBSERVACAO_PREDEFINIDA | NUMBER | Y | ASSOCIAÇÃO COM UMA OBSERVAÇÃO PREDEFINIDA |
| 6 | CD_PRESTADOR | NUMBER | Y | CÓDIGO DE PRESTADOR |
| 7 | CD_SETOR | NUMBER | N | CÓDIGO DO SETOR |
| 8 | DS_OBSERVACAO | VARCHAR2 | Y | OBSERVAÇÃO PARA APLICAÇÃO NA PRESCRIÇÃO |
| 9 | HR_EXAME | DATE | Y | HORÁRIO PARA SOLICITAÇÃO DE EXAME |
| 10 | QT_DOSE_PADRAO | NUMBER | Y | APRESENTA A DOSE PADRÃO DA MEDICAÇÃO, SENDO ESTA INFORMADA PELO MÉDICO NA PRESCRIÇÃO |
| 11 | QT_DOSE | NUMBER | Y | QUANTIDADE PARA APLICAÇÃO NA PRESCRIÇÃO |

---

## MVCPOE.CONFIG_IT_PRESC_PALAVRA_CHAVE
> OS VALORES NESTA TABELA DEVEM SERVIR PARA FACILITAR A CONSULTA DE ITENS DE PRESCRIÇÃO, CONFIGURANDO PALAVRAS CHAVES DE PESQUISA DE ITENS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CNFG_IT_PRESC_PALAVRA_CHAVE | NUMBER | N | CÓDIGO IDENTIFICADOS DA PALAVRA CHAVE DE ITENS DE PRESCRIÇÃO |
| 2 | CD_CONFIGURACAO_ITEM_PRESCRIC | NUMBER | Y | CAMPO QUE FAZ REFERÊNCIA COM A TABELA DE ITENS DE PRESCRIÇÃO |
| 3 | DS_PALAVRA_CHAVE | VARCHAR2 | Y | NOME ALTERNATIVO QUE PODE SER USADO NO MOMENTO DA PESQUISA DO ITEM |
| 4 | TP_ORIGEM | NUMBER | Y | INDICA A INFORMAÇÃO DA ORIGEM DO REGISTRO, PARA PERMITIR FICAR SENDO ATUALIZADO POR IMPORTAÇÃO DE... |

---

## MVCPOE.CONFIG_NOME_EXIBICAO_CMPT
> TABELA PARA ARMAZENAR OS NOMES DE EXIBIÇÃO PARA OS COMPONENTES DO ITEM DE PRESCRIÇÃO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_NOME_EXIBICAO_COMPONENTES | NUMBER | N | CÓDIGO SEQUÊNCIAL PARA A TABELA |
| 2 | DS_NOME_EXIBICAO_COMPONENTES | VARCHAR2 | N | DESCRIÇÃO DO NOME DE EXIBIÇÃO PARA OS COMPONENTES DO ITEM DE PRESCRIÇÃO |

---

## MVCPOE.CONFIG_PENDEN_DOCUM_TIPO_DOCUM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_PEND_DOC_TIPO_DOCUM | NUMBER | N |  |
| 2 | CD_TIPO_DOCUMENTO | NUMBER | N |  |
| 3 | CD_TIPO_DOCUMENTO_POSSUI_PEND | NUMBER | N |  |
| 4 | SN_PENDENCIA_IMPEDITIVA | NUMBER | Y |  |
| 5 | TP_PRESTADOR_PENDENCIA | NUMBER | Y |  |

---

## MVCPOE.CONFIG_PRESC_PAGU_OBJETO
> TIPO DE ITENS DE PRESCRIÇÃO POR OBJETOS DE PRONTUARIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_PRESC_PAGU_OBJETO | NUMBER | N |  |
| 2 | CD_CONFIGURACAO_ITEM_PRESCRIC | NUMBER | Y | CÓDIGO DO TIPO DE ITEN DE PRESCRIÇÃO |
| 3 | CD_OBJETO | NUMBER | N | CÓDIGO DO OBJETO DE PRONTUARIO |
| 4 | CD_TIPO_ESQUEMA | NUMBER | N |  |

---

## MVCPOE.CONFIG_TIP_PRES_TIP_FREQ

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_TIP_PRES_TIP_FREQ | NUMBER | N |  |
| 2 | CD_CONFIG_PAGU_TIPO_PRESTADOR | NUMBER | N |  |
| 3 | SN_RESTRINGE | NUMBER | Y |  |
| 4 | TP_FREQUENCIA | NUMBER | Y |  |

---

## MVCPOE.CONTROLE_AVALIACAO_ITEM_PRESC
> TABELA RESPONSÁVEL PELO CONTROLE DE ALGUMAS INFORMAÇÕES DOS ITENS AVALIADOS PELA AVALIAÇÃO FARMACÊUTICA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONTROLE_AVALIACAO_IT_PRESC | NUMBER | N | CÓDIGO SEQUENCIAL DA TABELA DE CONTROLE DE ALGUMAS INFORMAÇÕES DOS ITENS AVALIADOS PELA AVALIAÇÃO... |
| 2 | CD_ITEM_PRESCRICAO | NUMBER | N | CÓDIGO DO ITEM DE PRESRIÇÃO |
| 3 | SN_SOLICITAR_ESTOQUE | NUMBER | N | INDICA SE DEVE SER GERADA A SOLICITAÇÃO AO ESTOQUE DO PRODUTO AO SER AVALIADO - 0 : NÃO, 1 : SIM |
| 4 | CD_ORIGEM | NUMBER | Y | 1 = ORIGEM PRESCRICAO HTML, 2 =ORIGEM PRESCRIÇÃO FLEX |

---

## MVCPOE.DIA_ITEM_PRESCRICAO_PADRAO
> RELACIONA OS NÚMEROS DE DIAS DO TRATAMENTO COM A TABELA ITPRE_PAD

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DIA_ITEM_PRESCRICAO_PADRAO | NUMBER | N | CÓDIGO DA IDENTIFICAÇÃO DO DIA DO ITEM DA PRESCRIÇÃO |
| 2 | CD_ITEM_PRESCRICAO_PADRAO | NUMBER | N | CÓDIGO DA PRESCIÇÃO |
| 3 | NR_DIA | NUMBER | Y | NÚMERO DO DIA DE ADMINISTRAÇÃO DO ITEM |

---

## MVCPOE.DOCUMENTO_OBJETO
> TABELA QUE ARMAZENA A ASSOCIAÇÃO DO DOCUMENTO CLINICO COM O NOVO EDITOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DOCUMENTO_OBJETO | NUMBER | N | IDENTIFICADOR DA ASSOCIAÇÃO DO DOCUMENTO CLINICO COM O NOVO EDITOR |
| 2 | CD_DOCUMENTO | NUMBER | N | IDENTIFICADOR DO DOCUMENTO NO NOVO EDITOR |
| 3 | CD_OBJETO | NUMBER | N | CONTÉM O CÓDIGO DO OBJETO AGRUPADOR DO DOCUMENTO |
| 4 | DS_DOCUMENTO | VARCHAR2 | N | CONTÉM O NOME DO DOCUMENTO QUE SERÁ REFERENCIADO NO PEP |

---

## MVCPOE.ESTADO_PRESCRICAO
> TABELA QUE ARMAZENA OS STATUS DA PRESCRIÇÃO DE TRATAMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ESTADO_PRESCRICAO | NUMBER | N | CÓDIGO SEQUENCIAL DA TABELA DE STATUS DA PRESCRIÇÃO DE TRATAMENTO |
| 2 | CD_PRESTADOR | NUMBER | Y | CÓDIGO DO PRESTADOR QUE REALIZOU A AÇÃO NO STATUS DA PRESCRIÇÃO DE TRATAMENTO |
| 3 | DT_LIBERACAO | DATE | Y | DATA DA REALIZAÇÃO DA AÇÃO NO STATUS DA PRESCRIÇÃO DE TRATAMENTO |
| 4 | TP_STATUS | NUMBER | N | AÇÃO REALIZADA NO STATUS DA PRESCRIÇÃO DE TRATAMENTO. QUE PODERÁ SER: 1=LIM - LIBERDADO PELO MÉDI... |
| 5 | DS_JUSTIFICATIVA | VARCHAR2 | Y | JUSTIFICATIVA DA AÇÃO REALIZADA, QUE SERÁ NECESSÁRIA DE ACORDO COM O FLUXO REALIZADO |
| 6 | CD_PRESCRICAO | NUMBER | Y | CÓDIGO DA PRESCRIÇÃO MÉDICA |
| 7 | CD_ORIGEM | NUMBER | Y | 1 = ORIGEM PRESCRICAO HTML, 2 =ORIGEM PRESCRIÇÃO FLEX |

---

## MVCPOE.FAVORITO
> TABELA QUE ARMAZENA FAVORITOS DO PRESTADOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FAVORITO | NUMBER | N | CHAVE PRIMÁRIA DA TABELA |
| 2 | DT_CRIACAO | DATE | Y | DATA DE CRIAÇÃO DO FAVORITO |
| 3 | CD_PRESTADOR | NUMBER | Y | CÓDIGO DO PRESTADOR |

---

## MVCPOE.FAVORITO_PRESCRICAO
> TABELA QUE ARMAZENA OS FAVORITOS DE PRESCRIÇÃO DEFINIDOS PELO PRESTADOR. CLASSE FAVORITOPRESCRICAO É SUBCLASSE DE FAVORITO.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FAVORITO_PRESCRICAO | NUMBER | N |  |
| 2 | CD_FAVORITO | NUMBER | N | CÓDIGO DO FAVORITO PRIMARY KEY E FOREING KEY PARA FAVORITO |
| 3 | CD_CONFIGURACAO_ITEM_PRESCRIC | NUMBER | N | CHAVE ESTRANGEIRA PARA TABELA CONFIGURACAO_ITEM_PRESCRICAO. DETERMINA QUAL CONFIGURACAO_ITEM_PRES... |

---

## MVCPOE.FECHAMENTO_HORARIO_CHECAGEM
> REPRESENTA O FECHAMENTO DE HORÁRIOS CHECADOS POR UM USUÁRIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FECHAMENTO_HORARIO_CHECAGEM | NUMBER | N | CHAVE PRIMÁRIA DA TABELA |
| 2 | CD_USUARIO | VARCHAR2 | N | CÓDIGO DO USUÁRIO QUE REALIZOU O FECHAMENTO |
| 3 | CD_ATENDIMENTO | NUMBER | N | CÓDIGO DO ATENDIMENTO |
| 4 | DT_REFERENCIA | DATE | N | DATA DE REFERÊNCIA |
| 5 | DH_FECHAMENTO | DATE | N | DATA/HORA DE REALIZAÇÃO DO FECHAMENTO |
| 6 | CD_SETOR | NUMBER | N | CÓDIGO DO SETOR |
| 7 | CD_UNIDADE_INTERNACAO | NUMBER | Y | CÓDIGO DA UNIDADE DE INTERNAÇÃO |
| 8 | CD_DOCUMENTO_CLINICO | NUMBER | Y | CÓDIGO DO DOCUMENTO CLÍNICO |
| 9 | CD_ORIGEM | NUMBER | Y | 1 = ORIGEM PRESCRICAO HTML, 2 =ORIGEM PRESCRIÇÃO FLEX |

---

## MVCPOE.FECHAMENTO_PRESCRICAO
> TABELA QUE ARMAZENA AS INFORMAÇÕES DE FECHAMENTO OU APRAZAMENTO DA PRESCRIÇÃO DE MEDICAMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FECHAMENTO_PRESCRICAO | NUMBER | N | CÓDIGO SEQUENCIAL DA TABELA DE FECHAMENTO OU APRAZAMENTO DA PRESCRIÇÃO DE MEDICAMENTO |
| 2 | TP_FECHAMENTO | NUMBER | N | TIPO DE FECHAMENTO, SENDO A = APRAZAMENTO AUTOMÁTICO, C = CHECAGEM, U = AUDITORIA, P = AUDITORIA ... |
| 3 | CD_USUARIO | VARCHAR2 | N | NOME DO USUARIO QUE EFETUOU O FECHAMENTO |
| 4 | CD_ATENDIMENTO | NUMBER | N | CÓDIGO DO ATENDIMENTO |
| 5 | DT_REFERENCIA | DATE | N | DATA DE REFERÊNCIA |
| 6 | DH_FECHAMENTO | DATE | Y | DATA/HORA DE FECHAMENTO |
| 7 | CD_PRESCRICAO | NUMBER | Y | CÓDIGO DA PRESCRIÇÃO |
| 8 | CD_SETOR | NUMBER | Y | CÓDIGO DO SETOR |
| 9 | CD_UNIDADE_INTERNACAO | NUMBER | Y | CÓDIGO DA UNIDADE DE INTERNAÇÃO |
| 10 | CD_DOCUMENTO_CLINICO | NUMBER | Y | O CÓDIGO DO DOCUMENTO CLÍNICO, SETADO VIA TRIGGER (FK) |
| 11 | DH_FECHAMENTO_INICIO | DATE | Y | DATA INÍCIO DO PERÍODO DE FECHAMENTO DA AUDITORIA |
| 12 | DH_FECHAMENTO_FIM | DATE | Y | DATA FIM DO PERÍODO DE FECHAMENTO DA AUDITORIA |
| 13 | CD_ORIGEM | NUMBER | Y | 1 = ORIGEM PRESCRICAO HTML, 2 =ORIGEM PRESCRIÇÃO FLEX |

---

## MVCPOE.FORMA_APLICACAO
> TABELA QUE GUARDA AS FORMAS DE APLICAÇÃO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FORMA_APLICACAO | NUMBER | N | CHAVE PRIMÁRIA DA TABELA |
| 2 | NM_FORMA_APLICACAO | VARCHAR2 | N | NOME DA FORMA DE APLICAÇÃO |
| 3 | DS_FORMA_APLICACAO | VARCHAR2 | N | DESCRIÇÃO DA FORMA DE APLICAÇÃO |
| 4 | NR_ORDEM | NUMBER | Y | NÚMERO DA ORDEM DE IMPRESSÃO |

---

## MVCPOE.FREQUENCIA
> TABELA DE FREQUÊNCIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FREQUENCIA | NUMBER | N | CHAVE PRIMÁRIA DA TABELA DE FREQUÊNCIA |
| 2 | DS_FREQUENCIA | VARCHAR2 | N | DESCRIÇÃO DA FREQUÊNCIA |
| 3 | NR_INTERVALO | NUMBER | Y | INTERVALO ENTRE HORÁRIOS DA FREQUÊNCIA |
| 4 | TP_GERACAO_HORARIO | NUMBER | N | TIPO DE GERAÇÃO DE HORÁRIO DA FREQUÊNCIA - 1 : L-LIVRE; 2 : F-FREQUÊNCIA; 3 : S-CONTÍNUA |
| 5 | TP_CONTROLE | NUMBER | N | INDICA QUAL CONTROLE ESPECIAL A FREQUÊNCIA IRÁ ATENDER - 1 : N-NORMAL; 2 : SN-SE NECESSÁRIO; 3 : ... |
| 6 | QT_LIMITE_HORAS | NUMBER | Y | NÚMERO LIMITE DE HORAS PARA GERAÇÃO DOS HORÁRIOS DA PRESCRIÇÃO |
| 7 | QT_APLICA_SCTD_SE_NECESSARIO | NUMBER | Y | QUANTIDADE DE APLICAÇÕES SOLICIDADAS SE NECESSÁRIO |
| 8 | TP_PRESTADOR | NUMBER | N | CÓDIGO DO TIPO DE PRESTADOR DA PRESCRIÇÃO QUE A FREQUÊNCIA IRÁ ATENDER - 1 : MÉDICO; 2 : ENFERMEI... |
| 9 | TP_VINCULO_SETOR | NUMBER | Y | TIPO DE VÍNCULO DA FREQUÊNCIA COM SETORES - 1 - SOMENTE PARA OS SETORES SELECIONADOS; 2 - EXCETO ... |
| 10 | SN_SUGERE_NAO_COPIA_IT_FRQNCA | NUMBER | Y | INDICA SE SUGERE NÃO COPIAR ITENS COM ESTA FREQUÊNCIA |
| 11 | SN_INTERVALO_FIXO | NUMBER | Y | INDICA SE A FREQÜÊNCIA POSSUI INTERVALO FIXO |
| 12 | TP_ORDEM_QUIMIOTERAPIA | NUMBER | Y | IDENTIFICA SE A QUIMIOTERAPIA É PRÉQT = 0, QT = 1 OU PÓSQT = 2 |
| 13 | TP_INTERVALO | NUMBER | N | TIPO DO INTERVALO DA FREQUÊNCIA - 1 : M-MINUTO; 2 : H-HORA; 3 : DIA |
| 14 | SN_ARREDONDAMENTO | NUMBER | Y | INDICA SE A FREQUENCIA URARÁ ARREDONDAMENTO |
| 15 | QT_APLICA_SCTD_A_CRITER_MEDICO | NUMBER | Y | INDICANDO A QUANTIDADE DE APLICAÇÕES PARA A CRITÉRIO MÉDICO |
| 16 | QT_APLICA_SCTD_CONTINUA | NUMBER | Y | INDICANDO A QUANTIDADE DE APLICAÇÕES PARA CONTÍNUA |
| 17 | CD_FREQUENCIA_AGRUPADORA | NUMBER | Y | CÓDIGO DA FREQUÊNCIA AGRUPADORA |
| 18 | DS_FREQUENCIA_RESUMIDA | VARCHAR2 | Y | QUANDO FOR UMA FREQUÊNCIA FILHA (HORÁRIO PADRONIZADO) CONTÉM A DESCRIÇÃO DELA SEM ESTAR CONCATENA... |
| 19 | SN_IMPEDE_CRIAR_ITEM | NUMBER | Y | INDICA SE IMPEDE COPIAR ITENS COM ESSA FREQUÊNCIA |
| 20 | SN_ATIVO | NUMBER | N | INDICA SE A FREQUÊNCIA ESTÁ ATIVA. SIM=1, NÃO=0 |
| 21 | SN_NAO_COPIAR_IT_FRE | NUMBER | N |  |

---

## MVCPOE.FREQUENCIA_DIAS
> TABELA DE REGISTRO DE DIAS DA SEMANA DE ACORDO COM A FREQUÊNCIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FREQUENCIA_DIAS | NUMBER | N | CHAVE PRIMÁRIA DA TABELA |
| 2 | CD_FREQUENCIA | NUMBER | N | CÓDIGO DO SETOR |
| 3 | NR_DIAS_SEMANA | NUMBER | N | DIAS DA SEMANA, 1: DOMINGO, 2: SEGUNDA - FEIRA, 3: TERÇA - FEIRA, 4: QUARTA - FEIRA, 5: QUINTA - ... |

---

## MVCPOE.FREQUENCIA_INTERVALO
> TABELA DE INTERVALO DE HORÁRIO PADRONIZADO DA MEDICAÇÃO POR FREQUÊNCIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FREQUENCIA_INTERVALO | NUMBER | N | CÓDIGO IDENTIFICADOR DO REGISTRO DE INTERVALO DE HORÁRIO |
| 2 | CD_FREQUENCIA | NUMBER | N | CÓDIGO FREQUÊNCIA DO INTERVALO DE HORÁRIO |
| 3 | HR_INTERVALO_INICIAL | DATE | N | INICIO DO INTERVALO DO HORÁRIO PADRONIZADO DA MEDICAÇÃO |
| 4 | HR_INTERVALO_FINAL | DATE | Y | FIM DO INTERVALO DO HORÁRIO PADRONIZADO DA MEDICAÇÃO |
| 5 | DS_INTERVALO | VARCHAR2 | Y | DESCRIÇÃO DO INTERVALO DO HORÁRIO PADRONIZADO DA MEDICAÇÃO |

---

## MVCPOE.FREQUENCIA_SETOR
> TABELA DE SETORES CONFIGURADOS NA FREQUÊNCIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FREQUENCIA_SETOR | NUMBER | N | CÓDIGO IDENTIFICADOR DO SETOR NA FREQUÊNCIA |
| 2 | CD_FREQUENCIA | NUMBER | N | CÓDIGO DA FREQUÊNCIA |
| 3 | CD_SETOR | NUMBER | N | CÓDIGO DO SETOR |

---

## MVCPOE.FREQUENCIA_SETOR_HORARIO
> TABELA DE HORÁRIO PARA ARREDONDAMENTO POR SETOR NA FREQUÊNCIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FREQUENCIA_SETOR_HORARIO | NUMBER | N | CÓDIGO IDENTIFICADOR DO HORÁRIO PARA ARREDONDAMENTO POR SETOR NA FREQUÊNCIA |
| 2 | CD_SETOR | NUMBER | Y | CÓDIGO DO SETOR |
| 3 | HR_HORARIO | DATE | N | HORÁRIO PADRÃO DO SETOR |

---

## MVCPOE.FREQUENCIA_TIPO_PRESTADOR
> ENTIDADE PARA RESTRIÇÃO DOS HORÁRIOS PADRÕES DA FREQUÊNCIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FREQUENCIA_TIPO_PRESTADOR | NUMBER | N | CÓDIGO SEQUÊNCIAL DA TABELA. |
| 2 | CD_FREQUENCIA | NUMBER | N | CÓDIGO FREQUÊNCIA QUE TERÁ A RESTRIÇÃO. |
| 3 | CD_CONFIG_PAGU_TIPO_PRESTADOR | NUMBER | N | TIPOS DE PRESTADORES QUE PERTENCERÃO A RESTRIÇÃO. |

---

## MVCPOE.GRUPO_ESQUEMA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GRUPO_ESQUEMA | NUMBER | N |  |
| 2 | DS_GRUPO_ESQUEMA | VARCHAR2 | N |  |
| 3 | NM_ICONE | VARCHAR2 | Y |  |
| 4 | NR_ORDEM_IMPRESSAO | NUMBER | Y |  |
| 5 | SN_PRONTUARIO | NUMBER | Y |  |

---

## MVCPOE.GRUPO_ITEM_PRESCRICAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GRUPO_ITEM_PRESCRICAO | NUMBER | N | SEQUENCE MVCPOE.SEQ_GRUPO_ITEM_PRESCRICAO. |
| 2 | CD_CONFIGURACAO_ITEM_PRESCRIC | NUMBER | N | CÓDIGO DE IDENTIFICAÇÃO DE UM DETERMINADO TIPO DE PRESCRIÇÃO. |
| 3 | CD_SUB_GRUPO_PRESCRICAO | NUMBER | N | CÓDIGO DE CADASTRO REFERENTE AO SUB GRUPO DA PRESCRIÇÃO. |
| 4 | CD_GRUPO_PRESCRICAO | NUMBER | N | CÓDIGO REFERENTE A DESCRIÇÃO DO GRUPO. |
| 5 | CD_TIPO_ESQUEMA | NUMBER | N | CÓDIGO DE IDENTIFICAÇÃO DO TIPO DE ESQUEMA UTILIZADO PELO MÉDICO, PARA PRESCRIÇÃO DE UM DETERMINA... |
| 6 | CD_CONFIGURACAO_ITEM_PRESC_PAI | NUMBER | Y | CÓDIGO DE IDENTIFICAÇÃO DE PRESCRIÇÃO. |
| 7 | DS_EXIBICAO | VARCHAR2 | Y | DESCRIÇÃO DE EXIBIÇÃO DO ITEM DE PRESCRIÇÃO. |
| 8 | NR_ORDEM | NUMBER | Y | ORDEM DE APRESENTAÇÃO DO ITEM DE PRESCRIÇÃO. |
| 9 | DS_TIPO_ESQUEMA | VARCHAR2 | Y | DESCRIÇÃO DO ESQUEMA UTILIZADO PELO MÉDICO. |
| 10 | DS_TIPO_PRESCRICAO | VARCHAR2 | Y | DESCRIÇÃO DO ITEM DE PRESCRIÇÃO |

---

## MVCPOE.GRUPO_PRESCRICAO
> TABELA DE GRUPOS DE ITENS DE PRESCRIÇÃO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GRUPO_PRESCRICAO | NUMBER | N | CÓDIGO GRUPO DE PRESCRIÇÃO. |
| 2 | DS_GRUPO_PRESCRICAO | VARCHAR2 | N | DESCRIÇÃO DO GRUPO DE PRESCRIÇÃO. |
| 3 | NR_ORDEM_FAVORITO | NUMBER | Y | ORDEM DE EXIBIÇÃO DOS FAVORITOS NO SUB GRUPOS. |
| 4 | SN_EXIBIR_FAVORITO | NUMBER | N | SINALIZA SE O GRUPO VAI EXIBIR OS FAVORITOS NOS SUB GRUPOS, 1:SIM E 0:NÃO. |
| 5 | LO_ICONE | VARCHAR2 | Y | ÍCONE QUE IRÁ APRESENTAR NA PRESCRIÇÃO |

---

## MVCPOE.GRUPO_PRESCRICAO_MEDICAMENTO
> TABELA DE GRUPOS DE PRESCRICAO E SEUS ITENS DE PRESCRITO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GRUPO_PRESCRICAO_MEDCMTO | NUMBER | N | CÓDIGO DO GRUPO DOS ITENS PRESCRITOS |
| 2 | CD_GRUPO_PRESCRICAO | NUMBER | N | CÓDIGO DO GRUPO |
| 3 | CD_PRESCRICAO | NUMBER | N | CÓDIGO DA PRESCRIÇÃO |
| 4 | DS_OBSERVACAO | VARCHAR2 | Y | OBSERVAÇÃO |
| 5 | DS_OUTROS_ITENS_N_PADRONIZADOS | VARCHAR2 | Y | TEXTO LIVRE PARA LANÇAR ITENS DE PRESCRIÇÃO NÃO PADRONIZADOS |
| 6 | DS_EXIBICAO | VARCHAR2 | Y | CASO EXISTA NECESSIDADE DE TER UM NOME DIFERENTE DESTE GRUPO PARA CADA TIPO DE PRESCRIÇÃO ( RECEI... |
| 7 | NR_ORDEM_EXIBICAO | NUMBER | Y | ORDEM DE EXIBIÇÃO DOS GRUPOS DO (OBJETO) SEGMENTO |
| 8 | CD_ORIGEM | NUMBER | Y | 1 = ORIGEM PRESCRICAO HTML, 2 =ORIGEM PRESCRIÇÃO FLEX |

---

## MVCPOE.GRUPO_PRESCRICAO_TIPO_ESQM
> TABELA DE RELACIONAMENTO ENTRE GRUPOS E ESQUEMAS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GRUPO_PRESCRICAO_TIPO_ESQM | NUMBER | N | SEQUENCE MVCPOE.SEQ_GRUPO_PRESCRICAO_TIPO_ESQM |
| 2 | CD_GRUPO_PRESCRICAO | NUMBER | N | CÓDIGO DO GRUPO DE PRESCRIÇÃO |
| 3 | CD_TIPO_ESQUEMA | NUMBER | N | CÓDIGO DO OBJETO |

---

## MVCPOE.HISTORICO_ITEM_PRESCRICAO
> TABELA DE HISTÓRICO DE REGISTROS DE ITEM DA PRESCRIÇÃO DE MEDICAMENTOS CRIADOS PELA AVALIAÇÃO FARMACÊUTICA (EM AVALIAÇÕES DE PRESCRIÇÃO FUTURA)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_HISTORICO_ITEM_PRESCRICAO | NUMBER | N | CÓDIGO IDENTIFICADOR ÚNICO DO REGISTRO DE HISTÓRICO DE ITEM DA PRESCRIÇÃO |
| 2 | CD_ITEM_PRESCRICAO | NUMBER | N | CÓDIGO DO ITEM DA PRESCRIÇÃO |
| 3 | CD_TIPO_ESQUEMA | NUMBER | N | TIPO DE ESQUEMA |
| 4 | CD_CONFIGURACAO_ITEM_PRESCRIC | NUMBER | N | CÓDIGO DA CONFIGURAÇÃO DE ITEM DA PRESCRIÇÃO |
| 5 | CD_PRESCRICAO | NUMBER | N | CÓDIGO DA PRESCRIÇÃO |
| 6 | CD_SETOR_EXAME | NUMBER | Y | CÓDIGO DO SETOR DO EXAME |
| 7 | CD_FREQUENCIA | NUMBER | Y | CÓDIGO DA FREQUÊNCIA |
| 8 | CD_FORMA_APLICACAO | NUMBER | Y | CÓDIGO DA FORMA DE APLICAÇÃO |
| 9 | QT_ITEM_PRESCRICAO | NUMBER | Y | QUANTIDADE DO ITEM DA PRESCRIÇÃO |
| 10 | DS_ITEM_PRESCRICAO | VARCHAR2 | Y | DESCRIÇÃO DO ITEM DA PRESCRIÇÃO |
| 11 | TP_SITUACAO | NUMBER | Y | SITUAÇÃO DO ITEM DA PRESCRIÇÃO |
| 12 | DH_INICIAL | DATE | Y | DATA E HORA INICIAL |
| 13 | TP_LOCAL_EXAME | NUMBER | Y | TIPO DO LOCAL DO EXAME |
| 14 | SN_COPIA | NUMBER | Y | INDICA SE O ITEM DA PRESCRIÇÃO FOI COPIADO |
| 15 | SN_SUSPENSO | NUMBER | Y | INDICA SE O ITEM DA PRESCRIÇÃO FOI SUSPENSO |
| 16 | CD_UNIDADE | VARCHAR2 | Y | CÓDIGO DA UNIDADE DO ITEM DA PRESCRIÇÃO |
| 17 | CD_PRODUTO | NUMBER | Y | CÓDIGO DO PRODUTO DO ITEM DA PRESCRIÇÃO |
| 18 | CD_UNIDADE_PRODUTO | NUMBER | Y | CÓDIGO DA UNIDADE DO PRODUTO DO ITEM DA PRESCRIÇÃO |
| 19 | CD_IMPORTA_REG_FAT | NUMBER | Y | CD_IMPORTA_REG_FAT |
| 20 | CD_IMPORTA_REG_AMB | NUMBER | Y | CD_IMPORTA_REG_AMB |
| 21 | CD_PRESTADOR | NUMBER | Y | CÓDIGO DO PRESTADOR DO ITEM DA PRESCRIÇÃO |
| 22 | DH_FINAL | DATE | Y | DATA E HORA FINAL DO ITEM DA PRESCRIÇÃO |
| 23 | DH_SUSPENSAO | DATE | Y | DATA E HORA DA SUSPENSÃO DO ITEM DA PRESCRIÇÃO |
| 24 | CD_PRESTADOR_SUSPENSAO | NUMBER | Y | CÓDIGO DO PRESTADOR DA SUSPENSÃO DO ITEM DA PRESCRIÇÃO |
| 25 | CD_PRE_USO | NUMBER | Y | CÓDIGO PRÉ-USO DO ITEM DA PRESCRIÇÃO |
| 26 | DS_NAO_PADRONIZADO | VARCHAR2 | Y | DESCRIÇÃO DO PRODUTO NÃO PADRONIZADO DO ITEM DA PRESCRIÇÃO |
| 27 | CD_NAO_PADRONIZADO | NUMBER | Y | CÓDIGO DO PRODUTO NÃO PADRONIZADO DO ITEM DA PRESCRIÇÃO |
| 28 | DS_JUSTIFICATIVA | VARCHAR2 | Y | DESCRIÇÃO DA JUSTIFICATIVA |
| 29 | CD_ITEM_PRESCRICAO_SUSPENSO | NUMBER | Y | CÓDIGO DO ITEM DA PRESCRIÇÃO SUSPENSO |
| 30 | NR_AGRUPAMENTO | NUMBER | Y | NÚMERO DO AGRUPAMENTO DO ITEM DA PRESCRIÇÃO |
| 31 | QT_INFUSAO | NUMBER | Y | QUANTIDADE DA INFUSÃO |
| 32 | CD_UNIDADE_PRODUTO_INFUSAO | NUMBER | Y | CÓDIGO DA UNIDADE PRODUTO DE INFUSÃO DO ITEM DA PRESCRIÇÃO |
| 33 | TP_TEMPO | NUMBER | Y | TIPO DE TEMPO DO ITEM DA PRESCRIÇÃO - |
| 34 | QT_DIAS | NUMBER | Y | QUANTIDADE DE DIAS |
| 35 | NR_DIA | NUMBER | Y | NÚMERO DIA |
| 36 | CD_ITEM_PRESCRICAO_PADRAO | NUMBER | Y | CÓDIGO DO ITEM DA PRESCRIÇÃO PADRÃO |
| 37 | CD_JUSTIFICATIVA | VARCHAR2 | Y | TIPO DE JUSTIFICATIVA DO ITEM DA PRESCRIÇÃO |
| 38 | CD_DETALHE_JUSTIFICATIVA | VARCHAR2 | Y | TIPO DO DETALHAMENTO DA JUSTIFICATIVA DO ITEM DA PRESCRIÇÃO |
| 39 | SN_SOLICITA | NUMBER | Y | IDENTIFICA SE O ITEM GERA SOLICITAÇÃO AO ESTOQUE |
| 40 | SN_URGENTE | NUMBER | Y | INDICA A URGÊNCIA NA PRESCRIÇÃO MÉDICA NOS PROCESSOS DE INTEGRAÇÃO |
| 41 | CD_FREQUENCIA_DETALHE | NUMBER | Y | DETALHAMENTO DA FREQUÊNCIA QUANDO ESTA SOLICITAR. USADO A PRINCÍPIO PARA AS FREQUÊNCIA S/N E ACM |
| 42 | CD_ITEM_PRESCRICAO_COPIA | NUMBER | Y | CODIGO DE ORIGEM DO ITEM DA COPIA DE PRESCRIÇÃO |
| 43 | QT_ITEM_PRESCRICAO_CALCULADO | NUMBER | Y | QUANTIDADE DO ITEM CÁLCULO ATRAVÉS DA FÓRMULA DE SUPERFÍCIE CORPÓREA |
| 44 | SN_SOMENTE_HOJE | NUMBER | Y | INDICA SE O ITEM PODERÁ SER COPIADO EM PRESCRIÇÕES FUTURAS |
| 45 | CD_FORMULA | NUMBER | Y | CÓDIGO DA FÓRMULA USADA PARA CALCULAR A QUANTIDADE DO ÍTEM |
| 46 | CD_UNIDADE_PRESCRICAO | NUMBER | Y | CÓDIGO DA UNIDADE DE MEDIDA |
| 47 | HR_DURACAO | DATE | Y | DURAÇÃO DA INFUSÃO |
| 48 | CD_UNIDADE_PRESCRICAO_INFUSAO | NUMBER | Y | CÓDIGO DA UNIDADE DA VELOCIDADE DE PRESCRIÇÃO |
| 49 | CD_ITEM_PRESCRICAO_JUSTIFCTV | NUMBER | Y | CODIGO DA JUSTIFICATIVA |
| 50 | SN_ATM_PRORROGACAO | NUMBER | N | INDICA SE O ATM ESTA PRORROGANDO UM CICLO DE TRATAMENTO NA AUDITORIA DE PRESCRIÇÃO |
| 51 | CD_ITEM_PRESCRICAO_TRATAMTO | NUMBER | Y | CÓDIGO DO ITEM DA PRESCRIÇÃO PAI DE TRATAMENTO |
| 52 | CD_MATERIAL | NUMBER | Y | CÓDIGO DO MATERIAL PARA O EXAME LABORATORIAL |
| 53 | DH_REGISTRO | DATE | Y | DATA DE SOLICITAÇÃO DE EXAME OU REALIZAÇÃO DE PRESCRIÇÃO DO ITEM, PREENCHIDO AUTOMATICAMENTE PELO... |
| 54 | CD_GRUPO_ITEM_PRESCRICAO_PRESC | NUMBER | Y | CÓDIGO DO GRUPO DOS ITENS PRESCRITOS |
| 55 | QT_DOSE_CALCULO | NUMBER | Y | APRESENTA A DOSE PADRÃO DA MEDICAÇÃO, SENDO ESTA INFORMADA PELO MÉDICO NA PRESCRIÇÃO |
| 56 | NR_ORDEM | NUMBER | Y | INDICA QUAL SERÁ A ORDEM DO ITEM DENTRO DA PRESCRIÇAO MEDICA |
| 57 | CD_ITEM_PRESCRICAO_INTEGRA | VARCHAR2 | Y | CÓDIGO DE-PARA DO ITEM DE PRESCRIÇÃO MÉDICA |
| 58 | CD_SEQ_INTEGRA | NUMBER | Y | CÓDIGO IDENTIFICADOR DO REGISTRO DE INTEGRAÇÃO |
| 59 | DT_INTEGRA | DATE | Y | DATA DO REGISTRO DA INTEGRAÇÃO |
| 60 | SN_ALERTA_PERSISTIDO | NUMBER | Y | INDICA SE OS ALERTAS DO ITEM FORAM PERSISTIDOS NA TABELA PW_ITPRE_MED_ALERTA AO FECHAR A PRESCRIÇÃO |
| 61 | SN_COPIA_IDENTICA | NUMBER | Y | COLUNA QUE INDICA QUE O ITEM É UMA CÓPIA IDENTICA AO ITEM COPIADO DE OUTRA PRESCRIÇÃO |
| 62 | DS_OBSERVACAO_AUTOMATICA | VARCHAR2 | Y | COLUNA QUE GUARDA AS OBSERVAÇÕES CRIADAS AUTOMATICAMENTE PELO SISTEMA PARA O ITEM DE PRESCRIÇÃO |
| 63 | DS_OBSERVACAO_APRAZAMENTO | VARCHAR2 | Y | COLUNA QUE GUARDA A OBSERVAÇÃO DO APRAZAMENTO PARA O ITEM |
| 64 | CD_USUARIO_OBSERVACAO_APRAZA | VARCHAR2 | Y | COLUNA QUE GUARDA O CÓDIGO DO USUÁRIO QUE CRIOU A OBSERVAÇÃO DO APRAZAMENTO PARA O ITEM (FK) |
| 65 | SN_KIT_PADRAO_ALTERADO | NUMBER | N | INDICA SE O KIT PADRÃO DO ITEM FOI ALTERADO (INCLUSÃO, EXCLUSÃO OU ALTERAÇÃO DOS COMPONENTES PADR... |
| 66 | CD_CONFIG_ITEM_PRESC_POSOLOGIA | NUMBER | Y | CÓDIGO DA CONFIGURAÇÃO PADRÃO QUE ORIGINOU O ITEM |
| 67 | CD_LOCAL_ANATOMICO_COLETA | NUMBER | Y | CAMPO PARA ARMAZENAR O CÓDIGO DO LOCAL ANATOMICO DA COLETA |
| 68 | CD_DISPOSITIVO | NUMBER | Y | CÓDIGO DO DISPOSITIVO UTILIZADO NO ITEM DE PRESCRIÇÃO |
| 69 | SN_PREPARACAO | NUMBER | Y | INDICA SE TEM PREPARAÇÃO |
| 70 | SN_HORARIO_GERADO | NUMBER | Y | INDICA SE FOI GERADO HORÁRIO PARA O ITEM |
| 71 | SN_CONTINUO | NUMBER | Y | INDICA SE O ITEM É CONTÍNUO |
| 72 | CD_FREQUENCIA_APRAZAMENTO | NUMBER | Y | CÓDIGO DA FREQUÊNCIA UTILIZADA NA HORA DE CRIAÇÃO DOS HORÁRIOS |
| 73 | NM_EXIBICAO_OBSERVACAO_AUTOMAT | VARCHAR2 | Y | NOME DE EXIBIÇÃO DA OBSERVAÇÃO PREDEFINIDA |
| 74 | NM_EXIBICAO_COMPONENTES | VARCHAR2 | Y | NOME DE EXIBIÇÃO DOS COMPONENTES |
| 75 | DS_UNIDADE_FORMULA | VARCHAR2 | Y | DESCRIÇÃO DA UNIDADE DA FÓRMULA |
| 76 | QTD_VOLUME_TOTAL | NUMBER | Y | CAMPO PARA INFORMAR O VOLUME TOTAL DA SOLUÇÃO APÓS A DILUIÇÃO |
| 77 | CD_UNIDADE_VOLUME_TOTAL | NUMBER | Y | UNIDADE DE PRODUTO RELACIONADA AO VOLUME TOTAL DA SOLUÇÃO APÓS A DILUIÇÃO |
| 78 | CD_CID | VARCHAR2 | Y | CAMPO PARA ARMAZENAR O CÓDIGO DO CID, AO PRESCREVER EXAMES. |
| 79 | CD_CONFIGURACAO_CURVA | NUMBER | Y | CAMPO PARA ARMAZENAR O CÓDIGO DA CONFIGURAÇÃO DA CURVA DINÂMICA, AO PRESCREVER EXAMES |
| 80 | SN_CURVA_PADRAO_AUTO | NUMBER | Y | DEFINE SE O ITEM SOFREU ALTERAÇÃO MANUAL DA SUA CURVA PADRÃO SETADA AUTOMATICAMENTE PELO SISTEMA |
| 81 | SN_FINAL_CICLO_NOTIFICADO | NUMBER | Y | FLAG INDICATIVA QUE O CICLO DE APLICAÇÃO FECHADO FOI NOTIFICADO |
| 82 | NR_PERCENTUAL_REDUCAO_QUANTD | NUMBER | Y | INDICA O PERCENTUAL USADO PARA REDUÇÃO DA QUANTIDADE DO ITEM |
| 83 | SN_REDUZIR_QUANTIDADE | NUMBER | Y | INDICA QUE A QUANTIDADE DO ITEM DEVE SER REDUZIDA BASEADA NO PERCENTUAL INFORMADO NA PRESCRIÇÃO |
| 84 | TP_FASE_QUIMIOTERAPIA | NUMBER | Y | TIPO DA FASE DA QUIMIOTERAPIA DO ITEM DA PRESCRIÇÃO |
| 85 | SN_CRONICO | NUMBER | Y | INDICA SE O ITEM É PARA ATENDIMENTO TIPO CRÔNICO |
| 86 | DS_MATERIAL_COMPLEMENTAR | VARCHAR2 | Y | DESCRIÇÃO DO MATERIAL COMPLEMENTAR |
| 87 | CD_MULTI_EMPRESA | NUMBER | Y | CÓDIGO MULTI EMPRESA DO ITEM DA PRESCRIÇÃO |
| 88 | NR_DIAS | NUMBER | Y | NÚMERO DE DIAS DO ITEM DA PRESCRIÇÃO |
| 89 | NR_HORA | NUMBER | Y | NÚMERO DE HORAS DO ITEM DA PRESCRIÇÃO |
| 90 | NR_MINUTO | NUMBER | Y | NÚMERO DE MINUTOS DO ITEM DA PRESCRIÇÃO |
| 91 | CD_UNIDADE_PRESC_VOLUME_TOTAL | NUMBER | Y | UNIDADE DE PRESCRIÇÃO RELACIONADA AO VOLUME TOTAL DA SOLUÇÃO APÓS A DILUIÇÃO |
| 92 | SN_PESQUISA_CIENTIFICA | NUMBER | Y | INDICA SE O ITEM PARTICIPA DE PESQUISA CIENTÍFICA |
| 93 | SN_REAVALIACAO_MEDICA | NUMBER | Y | INDICA SE O ITEM DA PRESCRIÇÃO TEM REAVALIAÇÃO MÉDICA |
| 94 | QTD_TOTAL_DISPENSAR | NUMBER | Y | QUANTIDADE TOTAL A DISPENSAR DO ITEM DA PRESCRIÇÃO |
| 95 | DH_INTERVENCAO_FARMACEUTICA | DATE | Y | DATA E HORA PARA CONTROLE DOS MARCOS DE INTERVENÇÃO FARMACÊUTICA |
| 96 | TP_STATUS_INTERVENCAO | VARCHAR2 | Y | TIPOS PARA CONTROLE DOS MARCOS DE INTERVENÇÃO FARMACÊUTICA: 1 : ABERTO, 2 : LIBERADO, 3 : BLOQUEADO |
| 97 | CD_PRESTADOR_RESPONSAVEL | NUMBER | Y | PRESTADOR RESPONSÁVEL PELA ALTERAÇÃO/CRIAÇÃO DO REGISTRO DE INTERVENÇÃO NO ITEM DE PRESCRIÇÃO |
| 98 | CD_ORIGEM | NUMBER | Y | 1 = ORIGEM PRESCRICAO HTML, 2 =ORIGEM PRESCRIÇÃO FLEX |

---

## MVCPOE.HORARIO_CONSUMO_ITEM_PRESCRIC
> TABELA DE HORÁRIO DE CONSULMO DO ITEM DA PRESCRIÇÃO DE MEDICAMENTOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_HORARIO_CONSUMO_ITEM_PRESC | NUMBER | N | CÓDIGO IDENTIFICADOR ÚNICO DO REGISTRO DE HORÁRIO DO CONSUMO DE ITEM DA PRESCRIÇÃO |
| 2 | CD_ITEM_PRESCRICAO | NUMBER | N | CÓDIGO DO ITEM DA PRESCRIÇÃO |
| 3 | DH_MEDICACAO | DATE | N | DATA E HORA DA APLICAÇÃO DA MEDICAÇÃO |
| 4 | DH_CHECAGEM | DATE | N | DATA E HORA DA CHECAGEM |
| 5 | CD_USUARIO | VARCHAR2 | N | COLUNA QUE GUARDA O USUÁRIO QUE FEZ O REGISTRO DO HORÁRIO DO CONSUMO |
| 6 | SN_SUSPENSO | NUMBER | N | INFORMA SE O ITEM FOI SUSPENSO |
| 7 | DS_JUSTIFICATIVA | VARCHAR2 | Y | DESCRIÇÃO DA JUSTIFICATIVA PARA CHECAGEM |
| 8 | CD_JUSTIFICATIVA_CHECAGEM | NUMBER | Y | CÓDIGO IDENTIFICADOR DA JUSTIFICATIVA PARA CHECAGEM |
| 9 | CD_FECHAMENTO | NUMBER | Y | CÓDIGO DO FECHAMENTO |
| 10 | DH_DESLIGA | DATE | Y | DATA/HORA DO DESLIGAMENTO |
| 11 | QT_CONSUMO | NUMBER | Y | PODERÁ SER INFORMADO O CONSUMO DE CADA HORÁRIO INDEPENDENTE, CASO NÃO EXISTA A INFORMAÇÃO ENTÃO S... |
| 12 | CD_FECHAMENTO_LIGA | NUMBER | Y | CÓDIGO DO FECHAMENTO QUE INDICA O INICIO DA APLICAÇÃO DO ITEM |
| 13 | VL_SOBRA | NUMBER | Y | QUANTIDADE QUE SOBROU EM CADA HORARIO |
| 14 | DS_ORIGEM | VARCHAR2 | Y | IDENTIFICA DE ONDE A CHECAGEM FOI REALIZADA |
| 15 | SN_INICIADO_SUSPENSO | NUMBER | Y | IDENTIFICA QUE O ITEM DE TRATAMENTO FOI INICIADA A MEDICAÇÃO, MAS O PACIENTE NÃO TERMINOU DE UTIL... |
| 16 | CD_JUSTIFICATIVA_MOBILE | NUMBER | Y | CÓDIGO IDENTIFICADOR DA JUSTIFICATIVA PARA CHECAGEM SEM CÓDIGO DE BARARS |
| 17 | DS_JUSTV_CHECAGEM_S_COD_BARRAS | VARCHAR2 | Y | CÓDIGO IDENTIFICADOR DA JUSTIFICATIVA PARA CHECAGEM SEM CÓDIGO DE BARARS |
| 18 | SN_SUSPENSO_PRESCRICAO | NUMBER | Y | IDENTIFICA QUE O ITEM FOI SUSPENSO NA PRESCRIÇÃO |
| 19 | CD_ORIGEM | NUMBER | Y | 1 = ORIGEM PRESCRICAO HTML, 2 =ORIGEM PRESCRIÇÃO FLEX |

---

## MVCPOE.HORARIO_FECHADO_CHECAGEM
> REPRESENTA OS HORÁRIOS CHECADOS PERTENCENTES A UM FECHAMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FECHAMENTO | NUMBER | Y | CÓDIGO DE FECHAMENTO DO APRAZAMENTO |
| 2 | CD_FECHAMENTO_HORARIO_CHECAGEM | NUMBER | N | CÓDIGO DO FECHAMENTO NO QUAL O HORÁRIO ESTÁ CONTIDO |
| 3 | CD_HORARIO_FECHADO_CHECAGEM | NUMBER | N | CHAVE PRIMÁRIA DA TABELA |
| 4 | CD_IDENTIFICADOR | NUMBER | Y | CÓDIGO IDENTIFICADOR DO HORÁRIO |
| 5 | CD_ITEM_PRESCRICAO | NUMBER | N | CÓDIGO DO ITEM DE PRESCRIÇÃO RELATIVO AO HORÁRIO |
| 6 | CD_JUSTIFICATIVA_CHECAGEM | NUMBER | Y | CÓDIGO DE JUSTIFICATIVA INFORMADO NO MOMENTO DE CHECAGEM DO HORÁRIO |
| 7 | CD_USUARIO | VARCHAR2 | N | CÓDIGO DO USUÁRIO QUE INCLUIU O HORÁRIO |
| 8 | CD_USUARIO_APRAZAMENTO | VARCHAR2 | Y | CÓDIGO DO USUÁRIO QUE REALIZOU O APRAZAMENTO DO HORÁRIO |
| 9 | CD_USUARIO_CONFERENCIA | VARCHAR2 | Y | CÓDIGO DO USUÁRIO QUE REALIZOU O CONFERÊNCIA DO HORÁRIO |
| 10 | DH_CHECAGEM | DATE | N | DATA/HORA DE REALIZAÇÃO DA CHECAGEM DO HORÁRIO |
| 11 | DH_CONFERENCIA | DATE | Y | DATA/HORA DE CONFERÊNCIA DO HORÁRIO |
| 12 | DH_DESLIGA | DATE | Y | DATA/HORA DO DESLIGAMENTO |
| 13 | DH_MEDICACAO | DATE | N | REPRESENTA UM HORÁRIO PARA O ITEM DE PRESCRIÇÃO |
| 14 | DS_JUSTIFICATIVA | VARCHAR2 | Y | REPRESENTA A JUSTIFICATIVA INSERIDA NO MOMENTO DE CHECAGEM DO HORÁRIO |
| 15 | DS_OBSERVACAO_APRAZAMENTO | VARCHAR2 | Y | REPRESENTA A OBSERVAÇÃO INSERIDA NO MOMENTO DE APRAZAMENTO DO HORÁRIO |
| 16 | QT_ADMINISTRADA | NUMBER | Y | INDICA A QUANTIDADE INFORMADA PARA O ITEM ATRAVÉS DA TELA DE CHECAGEM |
| 17 | SN_ALTERADO | NUMBER | N | INDICA QUE HOUVE ALTERAÇÃO NO HORÁRIO APÓS O FECHAMENTO (CHECAGEM DESFEITA) |
| 18 | SN_SUSPENSO | NUMBER | N | SE O HORÁRIO FOI CHECADO COMO NÃO ADMINISTRADO |
| 19 | CD_ORIGEM | NUMBER | Y | 1 = ORIGEM PRESCRICAO HTML, 2 =ORIGEM PRESCRIÇÃO FLEX |

---

## MVCPOE.HORARIO_ITEM_PRESCRICAO
> TABELA DE HORÁRIO DO ITEM DA PRESCRIÇÃO DE MEDICAMENTOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_HORARIO_ITEM_PRESCRICAO | NUMBER | N | CÓDIGO IDENTIFICADOR ÚNICO DO REGISTRO DE HORÁRIO DE ITEM DA PRESCRIÇÃO |
| 2 | CD_ITEM_PRESCRICAO | NUMBER | N | CÓDIGO DO ITEM DA PRESCRIÇÃO |
| 3 | DH_MEDICACAO | DATE | N | DATA E HORA DA APLICAÇÃO DA MEDICAÇÃO |
| 4 | CD_ATENDIMENTO | NUMBER | N | CÓDIGO DO ATENDIMENTO |
| 5 | DH_SUSPENSAO | DATE | Y | DATA E HORA DA SUSPENSÃO DO ITEM DA PRESCRIÇÃO |
| 6 | CD_PRESTADOR_SUSPENSAO | NUMBER | Y | CÓDIGO DO PRESTADOR DA SUSPENSÃO DO ITEM DA PRESCRIÇÃO |
| 7 | CD_FECHAMENTO | NUMBER | Y | CÓDIGO DO FECHAMENTO |
| 8 | DS_HORARIO | VARCHAR2 | Y | DESCRIÇÃO DO HORÁRIO |
| 9 | DH_LIMITE | DATE | Y | HORARIO LIMITE DE APLICAÇÃO |
| 10 | NR_DIA | NUMBER | Y | NÚMERO DO DIA DA SESSÃO |
| 11 | SN_ALTERADO_PRESTADOR | NUMBER | Y | INFORMA SE O HORÁRIO FOI MODIFICADO PELO PRESTADOR |
| 12 | NM_USUARIO | VARCHAR2 | Y | CÓDIGO DO USUÁRIO QUE INSERIU O REGISTRO |
| 13 | DH_CRIACAO | DATE | Y | HORA DA CRIAÇÃO DO REGISTRO |
| 14 | NM_FORMULARIO | VARCHAR2 | Y | TELA, ORIGEM, DA CRIAÇÃO DO REGISTRO |
| 15 | NR_DIA_TRATAMENTO | NUMBER | Y | PRESERVA A INFORMAÇÃO DO DIA DA SESSÃO PARA PRESCRIÇÕES TIPO TRATMT |
| 16 | CD_PRESCRICAO_SESSAO | NUMBER | Y | CÓDIGO DA PRESCRIÇÃO DE TRATAMENTO REFERENTE AO DIA |
| 17 | DS_OBSERVACAO_APRAZAMENTO | VARCHAR2 | Y | COLUNA QUE GUARDA A OBSERVAÇÃO INSERIDA NO MOMENTO DO APRAZAMENTO DO HORÁRIO DO ITEM DE PRESCRIÇÃO |
| 18 | CD_USUARIO_APRAZAMENTO | VARCHAR2 | Y | COLUNA QUE GUARDA O USUÁRIO QUE FEZ O APRAZAMENTO DO HORÁRIO |
| 19 | DH_CONFERENCIA | DATE | Y | DATA E HORA DA CONFERÊNCIA DO HORÁRIO |
| 20 | CD_USUARIO_CONFERENCIA | VARCHAR2 | Y | CÓDIGO IDENTIFICADOR DO USUÁRIO QUE EFETUOU A CONFERÊNCIA DO HORÁRIO |
| 21 | DS_CODIGO_BARRAS_HORARIO | VARCHAR2 | Y | COLUNA QUE GUARDA O CÓDIGO DE BARRAS |
| 22 | CD_JUSTIFICATIVA_MOBILE | NUMBER | Y | CÓDIGO IDENTIFICADOR DA JUSTIFICATIVA PARA CHECAGEM SEM CÓDIGO DE BARRAS |
| 23 | DS_JUSTV_CHECAGEM_S_COD_BARRAS | VARCHAR2 | Y | CÓDIGO IDENTIFICADOR DA JUSTIFICATIVA PARA CHECAGEM SEM CÓDIGO DE BARRAS |
| 24 | TP_GERACAO | VARCHAR2 | Y | INDICA SE FOI GERADO HORÁRIO DAS SEGUINTES FORMAS: (1: AUTOMATICO, 2: PRESCRICAO, 3: CHECAGEM, 4:... |
| 25 | QT_ADMINISTRADA | NUMBER | Y | INDICA A QUANTIDADE INFORMADA PARA O ITEM ATRAVÉS DA TELA DE CHECAGEM |
| 26 | NM_IDENTIFICADOR | NUMBER | Y | CÓDIGO ÚNICO IDENTIFICADOR DO HORÁRIO, PARA MANTER O RASTREAMENTO APÓS REAPRAZAMENTO QUE ALTERA O... |
| 27 | CD_ORIGEM | NUMBER | Y | 1 = ORIGEM PRESCRICAO HTML, 2 =ORIGEM PRESCRIÇÃO FLEX |

---

## MVCPOE.HORARIO_ITEM_PRESCRICAO_PREPRO
> ENTIDADE PARA OS COMPONENTES DE PREPARO DE UM ITEM DE PRESCRIÇÃO.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_HORARIO_ITEM_PRESC_PREPRO | NUMBER | N | CÓDIGO DO PREPARO DO ITEM. (PK) |
| 2 | CD_HORARIO_ITEM_PRESCRICAO | NUMBER | N | CÓDIGO DO HORÁRIO ITEM DE PRESCRIÇÃO. (FK) |
| 3 | SN_PREPARO_CONCLUIDO | NUMBER | Y |  |
| 4 | CD_USUARIO | VARCHAR2 | Y | USUÁRIO QUE FINALIZOU A PREPARAÇÃO |
| 5 | DH_PREPARO_CONCLUIDO | DATE | Y | DATA DA CONCLUSÃO DA PREPARAÇÃO |
| 6 | DH_TEMPO_ESTABILIDADE | DATE | Y | TEMPO DE ESTABILIDADE DA PREPARAÇÃO |
| 7 | CD_USUARIO_FINALIZOU | VARCHAR2 | Y |  |
| 8 | NR_ORDEM_INFUSAO | NUMBER | Y |  |
| 9 | NR_CICLO_TRATAMENTO | NUMBER | Y |  |
| 10 | SN_FOTOSSENSIBILIDADE | NUMBER | Y |  |
| 11 | NR_VOLUME_TOTAL | NUMBER | Y |  |
| 12 | NR_HR_ESTABILIDADE | NUMBER | Y |  |
| 13 | NR_MIN_ESTABILIDADE | NUMBER | Y |  |
| 14 | CD_ORIGEM | NUMBER | Y | 1 = ORIGEM PRESCRICAO HTML, 2 =ORIGEM PRESCRIÇÃO FLEX |

---

## MVCPOE.HORARIO_ITEM_PRESCRICAO_SOL
> TABELA DE HORÁRIOS ATENDIDOS POR ITEM SOLICITADO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_HORARIO_ITEM_PRESCRICAO_SOL | NUMBER | N | CÓDIGO IDENTIFICADOR ÚNICO DO REGISTRO DE HORÁRIOS ATENDIDOS POR ITEM SOLICITADO |
| 2 | CD_ITEM_PRESCRICAO | NUMBER | N | CÓDIGO DO ITEM DA PRESCRIÇÃO |
| 3 | DH_MEDICACAO | DATE | N | DATA E HORA DO ITEM DE PRESCRIÇÃO |
| 4 | CD_ITEM_PRESCRICAO_SOLICITACAO | NUMBER | N | CÓDIGO DO ITEM DA SOLICITAÇÃO |
| 5 | CD_ORIGEM | NUMBER | Y | 1 = ORIGEM PRESCRICAO HTML, 2 =ORIGEM PRESCRIÇÃO FLEX |

---

## MVCPOE.HORARIO_ITEM_PRESCRICAO_VOL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_HORARIO_ITEM_PRESCRICAO_VOL | NUMBER | N | CÓDIGO PRIMARY KEY DA TABELA |
| 2 | CD_ITEM_PRESCRICAO | NUMBER | N | CÓDIGO IDENTIFICADOR ÚNICO DO ITEM DA PRESCRIÇÃO |
| 3 | CD_CONFIGURACAO_ITEM_PRESCRIC | NUMBER | Y | CÓDIGO DA CONFIGURAÇÃO DE ITEM DA PRESCRIÇÃO |
| 4 | DH_MEDICACAO | DATE | N | HORÁRIO DA APLICAÇÃO DA MEDICAÇÃO |
| 5 | QT_PRESCRITO | NUMBER | N |  |
| 6 | CD_ORIGEM | NUMBER | Y | 1 = ORIGEM PRESCRICAO HTML, 2 =ORIGEM PRESCRIÇÃO FLEX |

---

## MVCPOE.HORARIO_ITEM_PRESC_APRAZAMENTO
> TABELA DE ITEM COMPONENTE DISPONÍVEL PARA PRESCRIÇÃO DE MEDICAMENTOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_HOR_ITEM_PRESC_APRAZAMENTO | NUMBER | N | CÓDIGO IDENTIFICADOR ÚNICO DO ITEM DA PRESCRIÇÃO |
| 2 | CD_ITEM_PRESCRICAO | NUMBER | N | CÓDIGO DO ITEM DA PRESCRIÇÃO |
| 3 | DH_MEDICACAO | DATE | N | DATA E HORA DA APLICAÇÃO DA MEDICAÇÃO |
| 4 | CD_ATENDIMENTO | NUMBER | N | CÓDIGO DO ATENDIMENTO |
| 5 | DH_SUSPENSAO | DATE | Y | DATA E HORA DA SUSPENSÃO DO ITEM DA PRESCRIÇÃO |
| 6 | CD_PRESTADOR_SUSPENSAO | NUMBER | Y | CÓDIGO DO PRESTADOR DA SUSPENSÃO DO ITEM DA PRESCRIÇÃO |
| 7 | CD_FECHAMENTO | NUMBER | Y | CÓDIGO DO FECHAMENTO |
| 8 | DS_HORARIO | VARCHAR2 | Y | DESCRIÇÃO DO HORÁRIO |
| 9 | DH_LIMITE | DATE | Y | HORÁRIO LIMITE DE APLICAÇÃO |
| 10 | NR_DIA | NUMBER | Y | NÚMERO DO DIA DA SESSÃO. |
| 11 | SN_ALTERADO_PRESTADOR | NUMBER | Y | INFORMA SE O HORÁRIO FOI MODIFICADO PELO PRESTADOR |
| 12 | NM_USUARIO | VARCHAR2 | Y | CÓDIGO DO USUÁRIO QUE INSERIU O REGISTRO. |
| 13 | DH_CRIACAO | DATE | Y | HORA DA CRIAÇÃO DO REGISTRO. |
| 14 | NM_FORMULARIO | VARCHAR2 | Y | TELA, ORIGEM, DA CRIAÇÃO DO REGISTRO. |
| 15 | NR_DIA_TRATAMENTO | NUMBER | Y | PRESERVA A INFORMAÇÃO DO DIA DA SESSÃO PARA PRESCRIÇÕES TIPO TRATMT |
| 16 | CD_PRESCRICAO_SESSAO | NUMBER | Y | CÓDIGO DA PRESCRIÇÃO DE TRATAMENTO REFERENTE AO DIA |
| 17 | DS_OBSERVACAO_APRAZAMENTO | VARCHAR2 | Y | COLUNA QUE GUARDA A OBSERVAÇÃO INSERIDA NO MOMENTO DO APRAZAMENTO DO HORÁRIO DO ITEM DE PRESCRIÇÃO |
| 18 | CD_USUARIO_APRAZAMENTO | VARCHAR2 | Y | COLUNA QUE GUARDA O USUÁRIO QUE FEZ O APRAZAMENTO DO HORÁRIO |
| 19 | DS_JUSTIFICATIVA | VARCHAR2 | Y | JUSTIFICATIVA PARA CHECAGEM ATRASADA |
| 20 | DH_CONFERENCIA | DATE | Y | DATA E HORA DA CONFERÊNCIA DO HORÁRIO |
| 21 | CD_USUARIO_CONFERENCIA | VARCHAR2 | Y | CÓDIGO IDENTIFICADOR DO USUÁRIO QUE EFETUOU A CONFERÊNCIA DO HORÁRIO |
| 22 | DS_CODIGO_BARRAS_HORARIO | VARCHAR2 | Y |  |
| 23 | CD_JUSTIFICATIVA_MOBILE | NUMBER | Y | CÓDIGO IDENTIFICADOR DA JUSTIFICATIVA PARA CHECAGEM SEM CÓDIGO DE BARRAS |
| 24 | TP_GERACAO | NUMBER | Y | INDICA SE FOI GERADO HORÁRIO DAS SEGUINTES FORMAS: (1: AUTOMATICO, 2: PRESCRICAO, 3: CHECAGEM, 4:... |
| 25 | QT_ADMINISTRADA | NUMBER | Y | INDICA A QUANTIDADE INFORMADA PARA O ITEM ATRAVÉS DA TELA DE CHECAGEM |
| 26 | CD_IDENTIFICADOR | NUMBER | Y | CODIGO UNICO IDENTIFICADOR DO HORÁRIO, PARA MANTER O RASTREAMENTO APOS REAPRAZAMENTO QUE ALTERA O... |
| 27 | CD_ORIGEM | NUMBER | Y | 1 = ORIGEM PRESCRICAO HTML, 2 =ORIGEM PRESCRIÇÃO FLEX |

---

## MVCPOE.HORA_COMPONT_IT_PRESCRIC_CSMD
> TABELA DE HORÁRIO COMPONENTE ITEM PRESCRIÇÃO CONSUMIDO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_HORA_COMPONT_IT_PRESC_CSMD | NUMBER | N | CÓDIGO IDENTIFICADOR ÚNICO DO HORÁRIO COMPONENTE ITEM PRESCRIÇÃO CONSUMIDO |
| 2 | CD_ITEM_PRESCRICAO | NUMBER | N | CÓDIGO DO COMPONENTE ITEM PRESCRIÇÃO MÉDICA |
| 3 | DH_MEDICACAO | DATE | N | DATA/HORA MEDIÇÃO |
| 4 | DH_CHECAGEM | DATE | Y | DATA/HORA CHECAGEM |
| 5 | NM_USUARIO | VARCHAR2 | Y | NOME DO USUÁRIO |
| 6 | SN_SUSPENSO | NUMBER | N | SUSPENSO S OU N |
| 7 | DS_JUSTIFICATIVA | VARCHAR2 | Y | DESCRIÇÃO DE JUSTIFICATIVA |
| 8 | CD_JUSTIFICATIVA_CHECAGEM | NUMBER | Y | CÓDIGO DA JUSTIFICATIVA DA CHECAGEM |
| 9 | CD_FECHAMENTO | NUMBER | Y | CÓDIGO DO FECHAMENTO |
| 10 | CD_CONFIGURACAO_ITEM_PRESCRIC | NUMBER | Y | CÓDIGO DO TIPO PRESCRICAO |
| 11 | DH_DESLIGA | DATE | Y | DATA/HORA DO DESLIGAMENTO |
| 12 | QT_CONSUMO | NUMBER | Y | PODERÁ SER INFORMADO O CONSUMO DE CADA HORÁRIO INDEPENDENTE, CASO NÃO EXISTA A INFORMAÇÃO ENTÃO S... |
| 13 | CD_FECHAMENTO_LIGA | NUMBER | Y |  |
| 14 | VL_SOBRA | NUMBER | Y |  |
| 15 | DS_ORIGEM | VARCHAR2 | Y | IDENTIFICA DE ONDE A CHECAGEM FOI REALIZADA |
| 16 | DH_CONFERENCIA | DATE | Y | DATA E HORA DA CONFERÊNCIA DO HORÁRIO |
| 17 | CD_USUARIO_CONFERENCIA | VARCHAR2 | Y | CÓDIGO IDENTIFICADOR DO USUÁRIO QUE EFETUOU A CONFERÊNCIA DO HORÁRIO |
| 18 | CD_JUSTIFICATIVA_MOBILE | NUMBER | Y | CÓDIGO IDENTIFICADOR DA JUSTIFICATIVA PARA CHECAGEM SEM CÓDIGO DE BARARS |
| 19 | DS_REG_JUSTV_CHEK_MEDIC_S_CB | VARCHAR2 | Y | CÓDIGO IDENTIFICADOR DA JUSTIFICATIVA PARA CHECAGEM SEM CÓDIGO DE BARARS |
| 20 | CD_ORIGEM | NUMBER | Y | 1 = ORIGEM PRESCRICAO HTML, 2 =ORIGEM PRESCRIÇÃO FLEX |

---

## MVCPOE.HRITPRE_CONS_DUPLA_CHECAGEM
> TABELA PARA ARMAZENAR DUPLA CHECAGEM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_HRITPRE_CONS_DUPLA_CHECG | NUMBER | N | CÓDIGO IDENTIFICADOR DA DUPLA CHECAGEM |
| 2 | CD_HORARIO_CONSUMO_ITEM_PRESC | NUMBER | N | CÓDIGO IDENTIFICADOR DA TABELA DE HORÁRIO DE CONSUMO DO ITEM DA PRESCRIÇÃO |
| 3 | CD_USUARIO | VARCHAR2 | N | CÓDIGO IDENTIFICADOR DO USUARIO QUE EFETUOU A DUPLA CHECAGEM |
| 4 | CD_ORIGEM | NUMBER | Y | 1 = ORIGEM PRESCRICAO HTML, 2 =ORIGEM PRESCRIÇÃO FLEX |

---

## MVCPOE.HR_CPNT_IT_PRESC_CSMD_DP_CHEC
> TABELA PARA ARMAZENAR DUPLA CHECAGEM DE COMPONENTE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_HR_CPNT_IT_CSMD_DP_CHEC | NUMBER | N | CÓDIGO IDENTIFICADOR DA DUPLA CHECAGEM DE COMPONENTE |
| 2 | CD_ITEM_PRESCRICAO | NUMBER | N | CÓDIGO IDENTIFICADOR DO ITEM PRESCRITO |
| 3 | CD_CONFIGURACAO_ITEM_PRESCRIC | NUMBER | N | CÓDIGO IDENTIFICADOR DO TIPO DO ITEM PRESCRITO |
| 4 | DH_MEDICACAO | DATE | N | DATA E HORA DE APRAZAMENTO DO HORÁRIO |
| 5 | CD_USUARIO | VARCHAR2 | N | CÓDIGO IDENTIFICADOR DO USUARIO QUE EFETUOU A DUPLA CHECAGEM |
| 6 | CD_ORIGEM | NUMBER | Y | 1 = ORIGEM PRESCRICAO HTML, 2 =ORIGEM PRESCRIÇÃO FLEX |

---

## MVCPOE.HT_CONFIG_NOTIFICACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_NOTIFICACAO | NUMBER | N |  |

---

## MVCPOE.HT_MVPEP_CONFIG_NOTIFICACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_NOTIFICACAO | NUMBER | N |  |

---

## MVCPOE.HT_MVPEP_NOTIFICACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_NOTIFICACAO | NUMBER | N |  |

---

## MVCPOE.HT_NOTIFICACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_NOTIFICACAO | NUMBER | N |  |

---

## MVCPOE.HT_PACIENTE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PACIENTE | NUMBER | N |  |

---

## MVCPOE.HT_PW_ALERGIA_PAC

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROBLEMA | NUMBER | N |  |

---

## MVCPOE.HT_PW_ASSOC_TIP_PRESC

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROBLEMA | NUMBER | N |  |

---

## MVCPOE.HT_PW_FAVORITO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FAVORITO | NUMBER | N |  |

---

## MVCPOE.HT_PW_FAVORITO_CID

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FAVORITO | NUMBER | N |  |

---

## MVCPOE.HT_PW_FAVORITO_PACIENTE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FAVORITO | NUMBER | N |  |

---

## MVCPOE.HT_PW_FAVORITO_PRESCRICAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FAVORITO | NUMBER | N |  |

---

## MVCPOE.HT_PW_PROBLEMA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROBLEMA | NUMBER | N |  |

---

## MVCPOE.IDENTIFICADOR_ETIQUETA_CHECG
> TABELA ASSOCIATIVA ENTRE AS TABELAS DBAMV.HRIT_PRE_CONS E DBAMV.IDENTIFICADOR_ETIQUETA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IDENTIFICADOR_ETIQU_CHECG | NUMBER | N | CÓDIGO DA IDENTIFICADOR ETIQUETA CHECAGEM. |
| 2 | CD_HORARIO_ITEM_PRESCRICAO | NUMBER | N | CÓDIGO DO HORÁRIO ITEM PRESCRIÇÃO |
| 3 | CD_IDENTIFICADOR | VARCHAR2 | N | CÓDIGO CD_IDENTIFICADOR ASSOCIADA A TABELA DBAMV.IDENTIFICADOR_ETIQUETA |
| 4 | TP_RASTREAMENTO | VARCHAR2 | N | RECEBE O TIPO DE RASTREAMENTO: 1- DE ITEM(I) E 2- DE COMPONENTE(C). |
| 5 | CD_MULTI_EMPRESA | NUMBER | Y |  |
| 6 | CD_UNIDADE_CONFIRMADA | VARCHAR2 | Y | CÓDIGO DA UNIDADE DO PRODUTO ADMINISTRADO, REGISTRADO APENAS QUANDO A QUANTIDADE LIDA FOR MAIOR Q... |
| 7 | QTD_CONFIRMADA | NUMBER | Y | QUANTIDADE CONFIRMADA. |
| 8 | CD_UNIDADE_PRODUTO_CONFIRMADA | NUMBER | Y | CÓDIGO DA UNIDADE DO PRODUTO ADMINISTRADO, REGISTRADO APENAS QUANDO A QUANTIDADE LIDA FOR MAIOR Q... |
| 9 | CD_COMPONENTE_ITEM_PRESCRICAO | NUMBER | Y | CÓDIGO DO COMPONENTE DO ITEM PRESCRIÇÃO |
| 10 | CD_ORIGEM | NUMBER | Y | 1 = ORIGEM PRESCRICAO HTML, 2 =ORIGEM PRESCRIÇÃO FLEX |

---

## MVCPOE.IMPORTACAO_AUTO_PALAVRA_CHAVE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IMPORT_AUTO_PALAVRA_CHAVE | NUMBER | N |  |
| 2 | CD_CONFIGURACAO_ITEM_PRESCRIC | NUMBER | N |  |
| 3 | SN_ESQUEMA | NUMBER | Y |  |
| 4 | SN_GRUPO_TRATAMENTO | NUMBER | Y |  |
| 5 | SN_SUBSTANCIA | NUMBER | Y |  |
| 6 | SN_SAL_PRODUTO_MESTRE | NUMBER | Y |  |
| 7 | SN_PALAVRA_CHAVE | NUMBER | Y |  |
| 8 | SN_ACAO_TERAPEUTICA | NUMBER | Y |  |
| 9 | SN_NAO_PADRONIZADO | NUMBER | Y |  |
| 10 | TP_ITEM | NUMBER | Y |  |
| 11 | SN_LABORATORIO | NUMBER | Y |  |
| 12 | SN_DCB | NUMBER | Y |  |
| 13 | SN_SUB_CLASSE | NUMBER | Y |  |

---

## MVCPOE.ITEM_PRESCRICAO
> TABELA DE ITEM DA PRESCRIÇÃO DE MEDICAMENTOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITEM_PRESCRICAO | NUMBER | N | CÓDIGO IDENTIFICADOR ÚNICO DO ITEM DA PRESCRIÇÃO |
| 2 | CD_TIPO_ESQUEMA | NUMBER | N | TIPO DE ESQUEMA |
| 3 | CD_CONFIGURACAO_ITEM_PRESCRIC | NUMBER | N | CÓDIGO DA CONFIGURAÇÃO DE ITEM DA PRESCRIÇÃO |
| 4 | CD_PRESCRICAO | NUMBER | N | CÓDIGO DA PRESCRIÇÃO |
| 5 | CD_SETOR_EXAME | NUMBER | Y | CÓDIGO DO SETOR DO EXAME |
| 6 | CD_FREQUENCIA | NUMBER | Y | CÓDIGO DA FREQUÊNCIA |
| 7 | CD_FORMA_APLICACAO | NUMBER | Y | CÓDIGO DA FORMA DE APLICAÇÃO |
| 8 | QT_ITEM_PRESCRICAO | NUMBER | Y | QUANTIDADE DO ITEM DA PRESCRIÇÃO |
| 9 | DS_ITEM_PRESCRICAO | VARCHAR2 | Y | DESCRIÇÃO DO ITEM DA PRESCRIÇÃO |
| 10 | TP_SITUACAO | NUMBER | Y | SITUAÇÃO DO ITEM DA PRESCRIÇÃO, 1: SE NECESSÁRIO, 2:NORMAL, 3:A CRITÉRIO MÉDICO, 4: URGENTE |
| 11 | DH_INICIAL | DATE | Y | DATA E HORA INICIAL |
| 12 | TP_LOCAL_EXAME | NUMBER | Y | TIPO DO LOCAL DO EXAME |
| 13 | SN_COPIA | NUMBER | Y | INDICA SE O ITEM DA PRESCRIÇÃO FOI COPIADO |
| 14 | SN_SUSPENSO | NUMBER | Y | INDICA SE O ITEM DA PRESCRIÇÃO FOI SUSPENSO |
| 15 | CD_UNIDADE | VARCHAR2 | Y | CÓDIGO DA UNIDADE DO ITEM DA PRESCRIÇÃO |
| 16 | CD_PRODUTO | NUMBER | Y | CÓDIGO DO PRODUTO DO ITEM DA PRESCRIÇÃO |
| 17 | CD_UNIDADE_PRODUTO | NUMBER | Y | CÓDIGO DA UNIDADE DO PRODUTO DO ITEM DA PRESCRIÇÃO |
| 18 | CD_IMPORTA_REG_FAT | NUMBER | Y | CD_IMPORTA_REG_FAT |
| 19 | CD_IMPORTA_REG_AMB | NUMBER | Y | CD_IMPORTA_REG_AMB |
| 20 | CD_PRESTADOR | NUMBER | Y | CÓDIGO DO PRESTADOR DO ITEM DA PRESCRIÇÃO |
| 21 | DH_FINAL | DATE | Y | DATA E HORA FINAL DO ITEM DA PRESCRIÇÃO |
| 22 | DH_SUSPENSAO | DATE | Y | DATA E HORA DA SUSPENSÃO DO ITEM DA PRESCRIÇÃO |
| 23 | CD_PRESTADOR_SUSPENSAO | NUMBER | Y | CÓDIGO DO PRESTADOR DA SUSPENSÃO DO ITEM DA PRESCRIÇÃO |
| 24 | CD_PRE_USO | NUMBER | Y | CÓDIGO PRÉ-USO DO ITEM DA PRESCRIÇÃO |
| 25 | DS_NAO_PADRONIZADO | VARCHAR2 | Y | DESCRIÇÃO DO PRODUTO NÃO PADRONIZADO DO ITEM DA PRESCRIÇÃO |
| 26 | CD_NAO_PADRONIZADO | NUMBER | Y | CÓDIGO DO PRODUTO NÃO PADRONIZADO DO ITEM DA PRESCRIÇÃO |
| 27 | DS_JUSTIFICATIVA | VARCHAR2 | Y | DESCRIÇÃO DA JUSTIFICATIVA |
| 28 | CD_ITEM_PRESCRICAO_SUSPENSO | NUMBER | Y | CÓDIGO DO ITEM DA PRESCRIÇÃO SUSPENSO |
| 29 | NR_AGRUPAMENTO | NUMBER | Y | NÚMERO DO AGRUPAMENTO DO ITEM DA PRESCRIÇÃO |
| 30 | QT_INFUSAO | NUMBER | Y | QUANTIDADE DA INFUSÃO |
| 31 | CD_UNIDADE_PRODUTO_INFUSAO | NUMBER | Y | CÓDIGO DA UNIDADE PRODUTO DE INFUSÃO DO ITEM DA PRESCRIÇÃO |
| 32 | TP_TEMPO | NUMBER | Y | TIPO DE TEMPO DE DURAÇÃO DO ITEM DA PRESCRIÇÃO |
| 33 | QT_DIAS | NUMBER | Y | QUANTIDADE DE DIAS |
| 34 | NR_DIA | NUMBER | Y | NÚMERO DIA |
| 35 | CD_ITEM_PRESCRICAO_PADRAO | NUMBER | Y | CÓDIGO DO ITEM DA PRESCRIÇÃO PADRÃO |
| 36 | CD_JUSTIFICATIVA | VARCHAR2 | Y | TIPO DE JUSTIFICATIVA DO ITEM DA PRESCRIÇÃO |
| 37 | CD_DETALHE_JUSTIFICATIVA | VARCHAR2 | Y | TIPO DO DETALHAMENTO DA JUSTIFICATIVA DO ITEM DA PRESCRIÇÃO |
| 38 | SN_SOLICITA | NUMBER | Y | IDENTIFICA SE O ITEM GERA SOLICITAÇÃO AO ESTOQUE |
| 39 | SN_URGENTE | NUMBER | Y | INDICA A URGÊNCIA NA PRESCRIÇÃO MÉDICA NOS PROCESSOS DE INTEGRAÇÃO |
| 40 | CD_FREQUENCIA_DETALHE | NUMBER | Y | DETALHAMENTO DA FREQUÊNCIA QUANDO ESTA SOLICITAR. USADO A PRINCÍPIO PARA AS FREQUÊNCIA S/N E ACM |
| 41 | CD_ITEM_PRESCRICAO_COPIA | NUMBER | Y | CODIGO DE ORIGEM DO ITEM DA COPIA DE PRESCRIÇÃO |
| 42 | QT_ITEM_PRESCRICAO_CALCULADO | NUMBER | Y | QUANTIDADE DO ITEM CÁLCULO ATRAVÉS DA FÓRMULA DE SUPERFÍCIE CORPÓREA |
| 43 | SN_SOMENTE_HOJE | NUMBER | Y | INDICA SE O ITEM PODERÁ SER COPIADO EM PRESCRIÇÕES FUTURAS |
| 44 | CD_FORMULA | NUMBER | Y | CÓDIGO DA FÓRMULA USADA PARA CALCULAR A QUANTIDADE DO ÍTEM |
| 45 | CD_UNIDADE_PRESCRICAO | NUMBER | Y | CÓDIGO DA UNIDADE DE MEDIDA |
| 46 | HR_DURACAO | DATE | Y | DURAÇÃO DA INFUSÃO |
| 47 | CD_UNIDADE_PRESCRICAO_INFUSAO | NUMBER | Y | CÓDIGO DA UNIDADE DA VELOCIDADE DE PRESCRIÇÃO |
| 48 | CD_ITEM_PRESCRICAO_JUSTIFCTV | NUMBER | Y | CODIGO DA JUSTIFICATIVA |
| 49 | SN_ATM_PRORROGACAO | NUMBER | N | INDICA SE O ATM ESTA PRORROGANDO UM CICLO DE TRATAMENTO NA AUDITORIA DE PRESCRIÇÃO |
| 50 | CD_ITEM_PRESCRICAO_TRATAMTO | NUMBER | Y | CÓDIGO DO ITEM DA PRESCRIÇÃO PAI DE TRATAMENTO |
| 51 | CD_MATERIAL | NUMBER | Y | CÓDIGO DO MATERIAL PARA O EXAME LABORATORIAL |
| 52 | DH_REGISTRO | DATE | Y | DATA DE SOLICITAÇÃO DE EXAME OU REALIZAÇÃO DE PRESCRIÇÃO DO ITEM, PREENCHIDO AUTOMATICAMENTE PELO... |
| 53 | CD_GRUPO_ITEM_PRESCRICAO_PRESC | NUMBER | Y | CÓDIGO DO GRUPO DOS ITENS PRESCRITOS |
| 54 | QT_DOSE_CALCULO | NUMBER | Y | APRESENTA A DOSE PADRÃO DA MEDICAÇÃO, SENDO ESTA INFORMADA PELO MÉDICO NA PRESCRIÇÃO |
| 55 | NR_ORDEM | NUMBER | Y | INDICA QUAL SERÁ A ORDEM DO ITEM DENTRO DA PRESCRIÇAO MEDICA |
| 56 | CD_ITEM_PRESCRICAO_INTEGRA | VARCHAR2 | Y | CÓDIGO DE-PARA DO ITEM DE PRESCRIÇÃO MÉDICA |
| 57 | CD_SEQ_INTEGRA | NUMBER | Y | CÓDIGO IDENTIFICADOR DO REGISTRO DE INTEGRAÇÃO |
| 58 | DT_INTEGRA | DATE | Y | DATA DO REGISTRO DA INTEGRAÇÃO |
| 59 | SN_ALERTA_PERSISTIDO | NUMBER | Y | INDICA SE OS ALERTAS DO ITEM FORAM PERSISTIDOS NA TABELA PW_ITPRE_MED_ALERTA AO FECHAR A PRESCRIÇÃO |
| 60 | SN_COPIA_IDENTICA | NUMBER | Y | COLUNA QUE INDICA QUE O ITEM É UMA CÓPIA IDENTICA AO ITEM COPIADO DE OUTRA PRESCRIÇÃO |
| 61 | DS_OBSERVACAO_AUTOMATICA | VARCHAR2 | Y | COLUNA QUE GUARDA AS OBSERVAÇÕES CRIADAS AUTOMATICAMENTE PELO SISTEMA PARA O ITEM DE PRESCRIÇÃO |
| 62 | DS_OBSERVACAO_APRAZAMENTO | VARCHAR2 | Y | COLUNA QUE GUARDA A OBSERVAÇÃO DO APRAZAMENTO PARA O ITEM |
| 63 | CD_USUARIO_OBSERVACAO_APRAZA | VARCHAR2 | Y | COLUNA QUE GUARDA O CÓDIGO DO USUÁRIO QUE CRIOU A OBSERVAÇÃO DO APRAZAMENTO PARA O ITEM (FK) |
| 64 | SN_KIT_PADRAO_ALTERADO | NUMBER | N | INDICA SE O KIT PADRÃO DO ITEM FOI ALTERADO (INCLUSÃO, EXCLUSÃO OU ALTERAÇÃO DOS COMPONENTES PADR... |
| 65 | CD_CONFIG_ITEM_PRESC_POSOLOGIA | NUMBER | Y | CÓDIGO DA CONFIGURAÇÃO PADRÃO QUE ORIGINOU O ITEM |
| 66 | CD_LOCAL_ANATOMICO_COLETA | NUMBER | Y | CAMPO PARA ARMAZENAR O CÓDIGO DO LOCAL ANATOMICO DA COLETA |
| 67 | CD_DISPOSITIVO | NUMBER | Y | CÓDIGO DO DISPOSITIVO UTILIZADO NO ITEM DE PRESCRIÇÃO |
| 68 | SN_PREPARACAO | NUMBER | Y | INDICA SE TEM PREPARAÇÃO |
| 69 | SN_HORARIO_GERADO | NUMBER | Y | INDICA SE FOI GERADO HORÁRIO PARA O ITEM |
| 70 | SN_CONTINUO | NUMBER | Y | INDICA SE O ITEM É CONTÍNUO |
| 71 | CD_FREQUENCIA_APRAZAMENTO | NUMBER | Y | CÓDIGO DA FREQUÊNCIA UTILIZADA NA HORA DE CRIAÇÃO DOS HORÁRIOS |
| 72 | NM_EXIBICAO_OBSERVACAO_AUTOMAT | VARCHAR2 | Y | NOME DE EXIBIÇÃO DA OBSERVAÇÃO PREDEFINIDA |
| 73 | NM_EXIBICAO_COMPONENTES | VARCHAR2 | Y | NOME DE EXIBIÇÃO DOS COMPONENTES |
| 74 | DS_UNIDADE_FORMULA | VARCHAR2 | Y | DESCRIÇÃO DA UNIDADE DA FÓRMULA |
| 75 | CD_CID | VARCHAR2 | Y | CAMPO PARA ARMAZENAR O CÓDIGO DO CID, AO PRESCREVER EXAMES. |
| 76 | CD_CONFIGURACAO_CURVA | NUMBER | Y | CAMPO PARA ARMAZENAR O CÓDIGO DA CONFIGURAÇÃO DA CURVA DINÂMICA, AO PRESCREVER EXAMES |
| 77 | SN_CURVA_PADRAO_AUTO | NUMBER | Y | DEFINE SE O ITEM SOFREU ALTERAÇÃO MANUAL DA SUA CURVA PADRÃO SETADA AUTOMATICAMENTE PELO SISTEMA |
| 78 | QTD_VOLUME_TOTAL | NUMBER | Y | CAMPO PARA INFORMAR O VOLUME TOTAL DA SOLUÇÃO APÓS A DILUIÇÃO |
| 79 | CD_UNIDADE_VOLUME_TOTAL | NUMBER | Y | UNIDADE DE PRODUTO RELACIONADA AO VOLUME TOTAL DA SOLUÇÃO APÓS A DILUIÇÃO |
| 80 | NR_PERCENTUAL_REDUCAO_QUANTD | NUMBER | Y | INDICA O PERCENTUAL USADO PARA REDUÇÃO DA QUANTIDADE DO ITEM |
| 81 | SN_REDUZIR_QUANTIDADE | NUMBER | Y | INDICA QUE A QUANTIDADE DO ITEM DEVE SER REDUZIDA BASEADA NO PERCENTUAL INFORMADO NA PRESCRIÇÃO |
| 82 | SN_FINAL_CICLO_NOTIFICADO | NUMBER | Y | FLAG INDICATIVA QUE O CICLO DE APLICAÇÃO FECHADO FOI NOTIFICADO |
| 83 | SN_PESQUISA_CIENTIFICA | NUMBER | Y | INDICA SE O ITEM PARTICIPA DE PESQUISA CIENTÍFICA |
| 84 | SN_CRONICO | NUMBER | Y | INDICA SE O ITEM É PARA ATENDIMENTO TIPO CRÔNICO |
| 85 | TP_FASE_QUIMIOTERAPIA | NUMBER | Y | TIPO DA FASE DA QUIMIOTERAPIA DO ITEM DA PRESCRIÇÃO |
| 86 | CD_MULTI_EMPRESA | NUMBER | Y | CÓDIGO MULTI EMPRESA DO ITEM DA PRESCRIÇÃO |
| 87 | SN_REAVALIACAO_MEDICA | NUMBER | Y | INDICA SE O ITEM DA PRESCRIÇÃO TEM REAVALIAÇÃO MÉDICA |
| 88 | NR_DIAS | NUMBER | Y | NÚMERO DE DIAS DO ITEM DA PRESCRIÇÃO |
| 89 | NR_HORA | NUMBER | Y | NÚMERO DE HORAS DO ITEM DA PRESCRIÇÃO |
| 90 | NR_MINUTO | NUMBER | Y | NÚMERO DE MINUTOS DO ITEM DA PRESCRIÇÃO |
| 91 | QTD_TOTAL_DISPENSAR | NUMBER | Y | QUANTIDADE TOTAL A DISPENSAR DO ITEM DA PRESCRIÇÃO |
| 92 | CD_UNIDADE_PRESC_VOLUME_TOTAL | NUMBER | Y | UNIDADE DE PRESCRIÇÃO RELACIONADA AO VOLUME TOTAL DA SOLUÇÃO APÓS A DILUIÇÃO |
| 93 | DS_MATERIAL_COMPLEMENTAR | VARCHAR2 | Y | DESCRIÇÃO DO MATERIAL COMPLEMENTAR PARA O EXAME LABORATORIAL |
| 94 | CD_ORIGEM | NUMBER | Y | 1 = ORIGEM PRESCRICAO HTML, 2 =ORIGEM PRESCRIÇÃO FLEX |
| 95 | CD_TUBO_COLETA | NUMBER | Y | Codigo do tubo de coleta. |

---

## MVCPOE.ITEM_PRESCRICAO_EXTENSAO
> TABELA QUE DEVE ARMAZENAR TODAS AS INFORMAÇÕES ADICIONAIS DOS CLIENTES, EVITANDO ASSIM A CRIAÇÃO DE NOVAS COLUNAS NA TABELA ITPRE_MED. ESTAS INFORMAÇÕES NÃO DEVEM SER NECESSÁRIAS PARA CONSULTA INTENSA, NO MÁXIMO PARA SER USADA NA INTEGRAÇÃO COM OUTROS MÓDULOS.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITEM_PRESCRICAO_EXTENSAO | NUMBER | N | CÓDIGO IDENTIFICADOR ÚNICO DA TABELA DE EXTENSÇÃO DO ITEM DA PRESCRIÇÃO |
| 2 | CD_ITEM_PRESCRICAO | NUMBER | N | CAMPO CHAVE QUE DETERMINA A RELAÇÃO COM A TABELA DE ITEM DE PRESCRIÇÃO |
| 3 | NM_IDENTIFICADOR | VARCHAR2 | N | NOME DO IDENTIFICADOR. IDENTIFICA O SIGNIFICADO DO VALOR DESTE REGISTRO. FOI FORMALIZADO QUE IDEN... |
| 4 | NR_ORDEM | NUMBER | N | SEQUENCIA QUE O CAMPO DEVE SER EXIBIDO NA LISTA DE RESPOSTAS A SER EXIBIDO AO USUÁRIO |
| 5 | DS_VALOR | VARCHAR2 | N | VALOR PROPRIAMENTE DITO, ESTA SIM É A INFORMAÇÃO QUE SERVE |
| 6 | CD_PERGUNTA | NUMBER | Y | CASO O IDENTIFICADOR ESTEJA CADASTRADO NA TABELA DE PERGUNTAS DO PAGU, ENTÃO SERÁ ARMAZENADO A RE... |
| 7 | CD_ORIGEM | NUMBER | Y | 1 = ORIGEM PRESCRICAO HTML, 2 =ORIGEM PRESCRIÇÃO FLEX |

---

## MVCPOE.ITEM_PRESCRICAO_GLICEMICO
> TABELA DE ESQUEMA GLICÊMICO DO ITEM DA PRESCRIÇÃO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITEM_PRESCRICAO_GLICEMICO | NUMBER | N | CÓDIGO IDENTIFICADOR ÚNICO DA ESQUEMA GLICÊMICO DO ITEM DA PRESCRIÇÃO |
| 2 | CD_ITEM_PRESCRICAO | NUMBER | N | CÓDIGO DO ITEM DA PRESCRIÇÃO |
| 3 | CD_CONFIGURACAO_ITEM_PRESCRIC | NUMBER | N | CÓDIGO DA CONFIGURAÇÃO DE ITEM DA PRESCRIÇÃO |
| 4 | NR_RESULTADO_MINIMO | NUMBER | Y | VALOR DE RESULTADO MÍNIMO COMO REFERÊNCIA |
| 5 | NR_RESULTADO_MAXIMO | NUMBER | Y | VALOR DE RESULTADO MÁXIMO COMO REFERÊNCIA |
| 6 | CD_DROGA | NUMBER | N | CÓDIGO DA CONFIGURAÇÃO ITEM DA PRESCRIÇÃO CORRESPONDENTE À DROGA |
| 7 | NR_DOSE | NUMBER | N | VALOR DA DOSE |
| 8 | CD_UNIDADE | VARCHAR2 | N | CÓDIGO DA UNIDADE DE MEDIDA DA DROGA E DOSE |
| 9 | CD_ORIGEM | NUMBER | Y | 1 = ORIGEM PRESCRICAO HTML, 2 =ORIGEM PRESCRIÇÃO FLEX |

---

## MVCPOE.ITEM_PRESCRICAO_PADRAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRESCRICAO_PADRAO | NUMBER | N | CÓDIGO DE IDENTIFICAÇÃO DA PRESCRIÇÃO PADRÃO |
| 2 | CD_ITEM_PRESCRICAO_PADRAO | NUMBER | N | CÓDIGO DE IDENTIFICAÇÃO DO ITEM PRESCRIÇÃO PADRÃO, SEQUENCIAL MVCPOE.SEQ_ITEM_PRESCRICAO_PADRAO |
| 3 | CD_CONFIGURACAO_ITEM_PRESCRIC | NUMBER | N | CÓDIGO IDENTIFICADOR ÚNICO DO ITEM DA PRESCRIÇÃO |
| 4 | CD_DISPOSITIVO | NUMBER | Y |  |
| 5 | CD_FORMA_APLICACAO | NUMBER | Y | CÓDIGO DE IDENTIFICAÇÃO DE COMO SERÁ REALIZADO APLICAÇÃO NO PACIENTE |
| 6 | CD_LOCAL_ANATOMICO_COLETA | NUMBER | Y | CAMPO PARA INFORMAR NA PRESCRIÇÃO PADRÃO, QUAL O CÓDIGO DO LOCAL ANATÔMICO DA COLETA |
| 7 | CD_MATERIAL | NUMBER | Y | CÓDIGO DO MATERIAL PARA O EXAME LABORATORIAL |
| 8 | CD_MULTI_EMPRESA | NUMBER | Y |  |
| 9 | CD_OBSERVACAO_PREDEFINIDA | NUMBER | Y | ASSOCIAÇÃO COM UMA OBSERVAÇÃO PREDEFINIDA |
| 10 | CD_PRODUTO | NUMBER | Y | CÓDIGO DE IDENTIFICAÇÃO DO PRODUTO QUE SERÁ UTILIZADO |
| 11 | CD_SETOR_EXAME | NUMBER | Y |  |
| 12 | CD_TIPO_ESQUEMA | NUMBER | N | CÓDIGO DE IDENTIFICAÇÃO DO ESQUEMA. |
| 13 | CD_FREQUENCIA | NUMBER | Y | CÓDIGO DA FREQUÊNCIA QUE SERÁ MINISTRADO O MEDICAMENTO EM REFERÊNCIA |
| 14 | CD_UNIDADE | VARCHAR2 | Y | CÓDIGO DA UNIDADE DE MEDIDA |
| 15 | CD_UNIDADE_PRESCRICAO | NUMBER | Y | CÓDIGO DA UNIDADE DE MEDIDA POR PRESCRIÇÃO |
| 16 | CD_UNIDADE_PRODUTO | NUMBER | Y | CÓDIGO DA UNIDADE DE MEDIDA PADRÃO QUE O ITEM SERÁ PRESCRITO |
| 17 | CD_UNIDADE_PRESCRICAO_INFUSAO | NUMBER | Y | UNIDADE DE PRESCRIÇÃO RELACIONADA AO VOLUME TOTAL DA SOLUÇÃO APÓS A DILUIÇÃO. |
| 18 | CD_UNIDADE_PRODUTO_INFUSAO | NUMBER | Y |  |
| 19 | CD_UNIDADE_VOLUME_TOTAL | NUMBER | Y | UNIDADE DE PRODUTO RELACIONADA AO VOLUME TOTAL DA SOLUÇÃO APÓS A DILUIÇÃO. |
| 20 | CD_USUARIO_DESATIVACAO | VARCHAR2 | Y | INDICA O USUÁRIO QUE INATIVOU O ITEM |
| 21 | DS_ITEM_PRESCRICAO_PADRAO | VARCHAR2 | Y | DESCRIÇÃO DO ITEM DA PRESCRIÇÃO |
| 22 | DT_DESATIVACAO | DATE | Y | DATA QUE O ITEM FOI DESATIVADO |
| 23 | HR_DURACAO | DATE | Y | DURAÇÃO DO TEMPO DE ADMINISTRAÇÃO NECESSÁRIO PARA INFUSÃO |
| 24 | NR_DIAS_DURACAO | NUMBER | Y | TEMPO DE DURAÇÃO EM DIAS DA ADMINISTRAÇÃO DA INFUSÃO |
| 25 | NR_HORAS_DURACAO | NUMBER | Y | TEMPO DE DURAÇÃO EM HORAS DA ADMINISTRAÇÃO DA INFUSÃO |
| 26 | NR_MINUTOS_DURACAO | NUMBER | Y | TEMPO DE DURAÇÃO EM MINUTOS DA ADMINISTRAÇÃO DA INFUSÃO |
| 27 | NR_ORDEM_IMPRESSAO | NUMBER | Y | NUMERO DE ORDEM DOS ITENS DA PRESCRIÇÃO PADRÃO |
| 28 | QT_DIAS | NUMBER | Y |  |
| 29 | QT_DOSE_PADRAO | NUMBER | Y | QUANTIDADE DA DOSE PADRÃO QUE SERÁ A REFERÊNCIA PARA O CÁLCULO DA QUANTIDADE MINISTRADA PARA O PA... |
| 30 | QT_INFUSAO | NUMBER | Y | QUANTIDADE DE INFUSÃO QUE SERÁ ADMINISTRADA PARA O PACIENTE |
| 31 | QT_ITEM_PRESCRICAO_PADRAO | NUMBER | Y | QUANTIDADE A SER MINISTRADA AO PACIENTE, DO ITEM EM REFERÊNCIA |
| 32 | QT_VOLUME_TOTAL | NUMBER | Y | QUANTIDADE DO VOLUME TOTAL DA SOLUÇÃO APÓS A DILUIÇÃO |
| 33 | SN_ATIVO | NUMBER | N | INDICA SE O ITEM ESTÁ ATIVO OU NÃO, 1:SIM E 0:NÃO |
| 34 | SN_COPIA | NUMBER | Y | PERMITE COPIA DE ITENS DA PRESCRIÇAO PADRÃO, 1:SIM E 0:NÃO |
| 35 | SN_CRONICO | NUMBER | Y | INDICA SE O ITEM É DE USO CRÔNICO, 1:SIM E 0:NÃO |
| 36 | TP_FASE_QT | NUMBER | Y | ,1:QT, 2:PRE(PRÉ QT), 3:POS(PÓS QT) |
| 37 | SN_SITUACAO | NUMBER | Y | 1(S):SIM E 0(N):NÃO |
| 38 | TP_TEMPO | NUMBER | Y | ,0:H, 1:M |
| 39 | CD_ORIGEM | NUMBER | Y | 1 = ORIGEM PRESCRICAO HTML, 2 =ORIGEM PRESCRIÇÃO FLEX |

---

## MVCPOE.ITEM_PRESCRICAO_PADRAO_FORMULA
> RELACIONA O ITEM PADRÃO A UMA FÓRMULA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITEM_PRESCRICAO_PAD_FORM | NUMBER | N | CÓDIGO DE IDENTIFICAÇÃO ÚNICO DA PARAMETRIZAÇÃO DO ITEM DA PRESCRIÇÃO DA FÓRMULA |
| 2 | CD_FORMULA | NUMBER | N | CÓDIGO DA FÓRMULA PARA O ITEM |
| 3 | CD_ITEM_PRESCRICAO_PADRAO | NUMBER | N | CÓDIGO ITENS DA PRESCRIÇÃO PADRÃO |
| 4 | NR_SEQUENCIAL | NUMBER | Y | SEQUENCIAL DOS REGISTROS |

---

## MVCPOE.ITEM_PRESCRICAO_PONTO_CURVA
> TABELA PARA ARMAZENAR OS LANÇAMENTOS DOS PONTOS DE CURVA DINÂMICA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITEM_PRESCRICAO_PONTO_CURVA | NUMBER | N | SEQUENCE E PK DA TABELA |
| 2 | CD_ITEM_PRESCRICAO | NUMBER | N | CAMPO QUE INFORMA O ITEM DE PRESCRIÇÃO RELACIONADO |
| 3 | CD_CONFIGURACAO_ITEM_PRESCRIC | NUMBER | N | CAMPO QUE INFORMA O TIPO DE PRESCRIÇÃO RELACIONADO |
| 4 | NR_TEMPO | NUMBER | Y | CAMPO QUE ARMAZENA O NÚMERO TEMPO DA CURVA |
| 5 | DS_PONTO | VARCHAR2 | Y | CAMPO QUE ARMAZENA A DESCRIÇÃO DO PONTO DA CURVA |
| 6 | CD_ORIGEM | NUMBER | Y | 1 = ORIGEM PRESCRICAO HTML, 2 =ORIGEM PRESCRIÇÃO FLEX |
| 7 | CD_MATERIAL | NUMBER | Y | Codigo do material. |
| 8 | CD_TUBO_COLETA | NUMBER | Y | Codigo do tubo de coleta. |
| 9 | CD_CONFIG_CURVA_MAT_TUBO | NUMBER | Y | Codigo da configuração do tubo do material na curva. |

---

## MVCPOE.JUSTIFICATIVA_CHECAGEM
> REPRESENTA AS JUSTIFICATIVAS NA CHECAGEM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_JUSTIFICATIVA_CHECAGEM | NUMBER | N | CHAVE PRIMÁRIA DA TABELA |
| 2 | DS_JUSTIFICATIVA_CHECAGEM | VARCHAR2 | N | DESCRIÇÃO DA JUSTIFICATIVA |
| 3 | SN_ATIVO | NUMBER | N | INFORMA SE O REGISTRO ESTÁ ATIVO |
| 4 | CD_MOTIVO_DEVOLUCAO | NUMBER | Y | CÓDIGO DO MOTIVO DA DEVOLUÇÃO |
| 5 | CD_MOTIVO_BAIXA_PRODUTO | NUMBER | Y | CÓDIGO DO MOTIVO DA BAIXA DO PRODUTO |
| 6 | SN_INFUSAO | NUMBER | N | SE A JUSTIFICATIVA SERÁ UTILIZADA NA ALTERAÇÃO DA VELOCIDADE DE INFUSÃO |
| 7 | SN_GLICEMIA | NUMBER | N | IDENTIFICA SE A JUSTIFICATIVA É REFERENTE À GLICEMIA |
| 8 | CD_ORIGEM | NUMBER | Y | 1 = ORIGEM PRESCRICAO HTML, 2 =ORIGEM PRESCRIÇÃO FLEX |

---

## MVCPOE.LISTA_PARAMETRO_PAGU_OBJ
> TABELA DE LISTA DE OPÇÕES DO REPOSITÓRIO DE PARÂMETROS PARA O TIPO DE DOCUMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LISTA_PARAMETRO_PAGU_OBJ | NUMBER | N | CÓDIGO DA LISTA DE OPÇÕES |
| 2 | CD_PARAMETRO_PAGU_OBJETO | NUMBER | N | CÓDIDO DO REPOSITÓRIO DE PARÂMETROS PARA O TIPO DE DOCUMENTO |
| 3 | VL_LISTA_PARAMETRO_PAGU_OBJ | VARCHAR2 | N | VALOR DISPONÍVEL |
| 4 | DS_LISTA_PARAMETRO_PAGU_OBJ | VARCHAR2 | N | DESCRIÇÃO DO VALOR DISPONÍVEL |

---

## MVCPOE.LOG_INFUSAO
> TABELA DE HISTÓRICO DE REGISTROS DE ITEM DA PRESCRIÇÃO DE MEDICAMENTOS CRIADOS PELA AVALIAÇÃO FARMACÊUTICA (EM AVALIAÇÕES DE PRESCRIÇÃO FUTURA)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOG_INFUSAO | NUMBER | N | CÓDIGO IDENTIFICADOR ÚNICO DO REGISTRO DE HISTÓRICO DE ITEM DA PRESCRIÇÃO |
| 2 | CD_ITEM_PRESCRICAO | NUMBER | N | CÓDIGO DO ITEM DA PRESCRIÇÃO |
| 3 | DH_MEDICACAO | DATE | N | DATA/HORA DA MEDICAÇÃO. MOMENTO QUE FOI ALTERADO A VELOCIDADE DE INFUSÃO |
| 4 | QT_INFUSAO | NUMBER | Y | QUANTIDADE PARA A VELOCIDADE DE INFUSÃO |
| 5 | CD_UNIDADE_PRODUTO_INFUSAO | NUMBER | Y | UNIDADE DE PRODUTO PARA A VELOCIDADE DE INFUSÃO |
| 6 | CD_UNIDADE_PRESCRICAO_INF | NUMBER | Y | UNIDADE DE PRESCRIÇÃO PARA A VELOCIDADE DE INFUSÃO |
| 7 | DS_JUSTIFICATIVA | VARCHAR2 | Y | JUSTIFICATIVA DA ALTERAÇÃO DA VELOCIDADE DE INFUSÃO |
| 8 | CD_USUARIO | VARCHAR2 | N | CÓDIGO DO USUÁRIO QUE GEROU A INCLUSÃO |
| 9 | DH_REGISTRO | DATE | N | DATA/HORA DA INCLUSÃO DO REGISTRO (SYSDATE) |
| 10 | TP_REGISTRO | NUMBER | N | TIPO DA INCLUSÃO: 1: I - INCLUSÃO, 2: A - ALTERAÇÃO |
| 11 | DH_ALTERACAO | DATE | N | DATA/HORA QUE O USUÁRIO INFORMA QUE FOI ALTERADO A VELOCIDADE DE INFUSÃO |
| 12 | CD_ORIGEM | NUMBER | Y | 1 = ORIGEM PRESCRICAO HTML, 2 =ORIGEM PRESCRIÇÃO FLEX |

---

## MVCPOE.LOG_PRESCRICAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOG_PRESCRICAO | NUMBER | N | CHAVE PRIMÁRIA DA TABELA |
| 2 | CD_ATENDIMENTO | NUMBER | Y |  |
| 3 | CD_PRESCRICAO | NUMBER | Y |  |
| 4 | DS_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 5 | DT_PROCESSO | DATE | Y |  |
| 6 | NM_USUARIO | VARCHAR2 | Y |  |
| 7 | DS_ACAO | VARCHAR2 | Y |  |
| 8 | CD_ORIGEM | NUMBER | Y | 1 = ORIGEM PRESCRICAO HTML, 2 =ORIGEM PRESCRIÇÃO FLEX |

---

## MVCPOE.MEDICAMENTO_PREPARADO_CHECG
> TABELA ASSOCIATIVA ENTRE AS TABELAS DBAMV.HRIT_PRE_CONS E DBAMV.IDENTIFICADOR_ETIQUETA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MEDICAMENTO_PREP_CHEC | NUMBER | N | CÓDIGO IDENTIFICADOR |
| 2 | CD_HORARIO_ITEM_PRESCRICAO | NUMBER | N |  |
| 3 | CD_HORARIO_ITEM_PRESC_PREPRO | NUMBER | Y | CÓDIGO IDENTIFICADOR PARA A TABELA DBAMV.HRITPRE_MED_PREPARO |
| 4 | DS_CODIGO_BARRAS_HORARIO | VARCHAR2 | N | CÓDIGO DE BARRAS LIDO PARA A CHECAGEM |
| 5 | CD_MULTI_EMPRESA | NUMBER | Y | EMPRESA SELECIONADA |
| 6 | CD_ORIGEM | NUMBER | Y | 1 = ORIGEM PRESCRICAO HTML, 2 =ORIGEM PRESCRIÇÃO FLEX |

---

## MVCPOE.OBJETO_GRUPO_PRESCRICAO
> TABELA DE RELACIONAMENTO ENTRE GRUPOS E OBJETOS(SEGMENTO)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_OBJETO_GRUPO_PRESCRICAO | NUMBER | N | CÓDIGO DE IDENTIFICAÇÃO ÚNICA DAS PARAMENTRIZAÇÕES DA PRESCRIÇÃO POR GRUPO DE OBJETO |
| 2 | CD_GRUPO_PRESCRICAO | NUMBER | N | CÓDIGO DO GRUPO DE PRESCRIÇÃO |
| 3 | CD_OBJETO | NUMBER | N | CÓDIGO DO OBJETO |
| 4 | DS_EXIBICAO | VARCHAR2 | Y | CASO EXISTA NECESSIDADE DE TER UM NOME DIFERENTE DESTE GRUPO PARA CADA TIPO DE PRESCRIÇÃO ( RECEI... |
| 5 | NR_ORDEM_EXIBICAO | NUMBER | N | ORDEM DE EXIBIÇÃO DOS GRUPOS DO (OBJETO)SEGMENTO |

---

## MVCPOE.OBSERVACAO_PREDEFINIDA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_OBSERVACAO_PREDEFINIDA | NUMBER | N |  |
| 2 | NM_OBSERVACAO_PREDEFINIDA | VARCHAR2 | N |  |
| 3 | DS_OBSERVACAO_PREDEFINIDA | VARCHAR2 | N |  |
| 4 | TP_OBSERVACAO_PREDEFINIDA | VARCHAR2 | N |  |
| 5 | NM_EXIBICAO_OBSERVACAO_PREDEF | VARCHAR2 | Y |  |
| 6 | TP_OBSERVACAO_PREDEF_SUBST | VARCHAR2 | Y |  |
| 7 | DS_OBSERVACAO_PREDEF_SUBST | VARCHAR2 | Y |  |
| 8 | TP_GRUPO_TIPO_COMPONENTE | VARCHAR2 | Y |  |

---

## MVCPOE.PAGU_OBJETO
> TABELA QUE DEVE ARMAZENAR OS TIPOS DE OBJETOS QUE COMPOEM UM PRONTUÁRIO DO PACIENTE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_OBJETO | NUMBER | N | CÓDIGO DE IDENTIFICADOR ÚNICO DO OBJETO |
| 2 | CD_OBJETO_PAI | NUMBER | Y | CÓDIGO DE IDENTIFICADOR ÚNICO DO OBJETO |
| 3 | CD_SETOR | NUMBER | Y | SETOR A SER SUGERIDO, QUE SERÁ USADO PARA O CENTRO DE CUSTO DA PRESCRIÇÃO. ESTA OPÇÃO SÓ ESTARÁ A... |
| 4 | CD_SETOR_CONFIGURACAO | NUMBER | Y | SETOR QUE COMPOE A CHAVE UNICA E SERVE PARA CADASTRAR AS EXCESSOES NA REGRA GERAL |
| 5 | CD_UNIDADE_INTERNACAO | NUMBER | Y | UNIDADE DE INTERNAÇÃO A SER SUGERIDO QUE SERÁ USADO PARA O CENTRO DE CUSTO DA PRESCRIÇÃO. ESTA OP... |
| 6 | CD_TEMA_CLINICO | NUMBER | Y | CÓDIGO DE IDENTIFICADOR DO TEMA DE DOCUMENTO CADASTRADO |
| 7 | CD_TIPO_DOCUMENTO | NUMBER | Y | CÓDIGO DO TIPO DE DOCUMENTO RELACIONADO |
| 8 | DS_OBJETO | VARCHAR2 | N | TIPO DE OBJETO EX- PRESCR MEDICA, PRESCR ENFERM, TRANCRICAO, ADMISSAO |
| 9 | NM_OBJETO | VARCHAR2 | N | DESCRIÇÃO DO OBJETO |
| 10 | SN_ASSINATURA | NUMBER | Y | INFORMA SE O OBJETO PODE SER ASSINADO, 1:SIM E 0:NÃO |
| 11 | SN_BUSCA_ATIVA | NUMBER | N | INDICA SE É PERMITIDO REGISTRO DESTE TIPO DE OBJETO PARA ATENDIMENTOS DE BUSCA ATIVA, 1:SIM E 0:NÃO |
| 12 | SN_DIA_SEGUINTE | NUMBER | Y | SE O TIPO DE OBJETO DE PRESCRIÇÃO É UMA PRESCRIÇÃO DO DIA SEGUINTE. 0:NÃO E 1:SIM |
| 13 | SN_EXTERNO | NUMBER | N | INDICA SE É PERMITIDO REGISTRO DESTE TIPO DE OBJETO PARA ATENDIMENTO EXTERNO, 1:SIM E 0:NÃO |
| 14 | SN_PRESC_FUTURA | NUMBER | N | INFORMA SE O TIPO DE OBJETO(PRESCRICAO) PERMITE FAZER PRESCRIÇÃO FUTURA. 0:NÃO E 1:SIM |
| 15 | TP_CENTRO_CUSTO | NUMBER | Y | INDICA QUAL SERÁ O VALOR INICIAL DE CENTRO DE CUSTO DA PRESCRIÇÃO. AS OPÇÕES DISPONÍVEIS SÃO: 1:A... |
| 16 | TP_PRESCRICAO_PADRAO | NUMBER | Y | ABRANGÊNCIA PARA PRESCRIÇÃO PADRÃO: 1:PROTOCOLO E 2:PADRÃO |
| 17 | NR_ORDEM | NUMBER | Y |  |
| 18 | DS_EXIBICAO | VARCHAR2 | Y |  |

---

## MVCPOE.PAGU_OBJETO_PARAMETRO
> TABELA DE ASSOCIAÇÃO DA PAGU OBJETO COM  O REPOSITÓRIO DE PARÂMETROS PARA O TIPO DE DOCUMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PAGU_OBJETO_PARAMETRO | NUMBER | N | CÓDIGO DE IDENTIFICADOR ÚNICO DO PARÂMENTRO DO OBJETO |
| 2 | CD_OBJETO | NUMBER | N | CÓDIGO DO PAGU OBJETO |
| 3 | CD_PARAMETRO_PAGU_OBJETO | NUMBER | N | CÓDIDO DO REPOSITÓRIO DE PARÂMETROS PARA O TIPO DE DOCUMENTO |
| 4 | VL_PARAMETRO | VARCHAR2 | N | VALOR ESCOLHIDO |

---

## MVCPOE.PARAMETRO_PAGU_OBJETO
> REPOSITÓRIO DE PARÂMETROS PARA O TIPO DE DOCUMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PARAMETRO_PAGU_OBJETO | NUMBER | N | CÓDIGO DE IDENTIFICAÇÃO DO PARÂMETRO |
| 2 | CD_TIPO_DOCUMENTO | NUMBER | N | CÓDIDO DO TIPO DE DOCUMENTO |
| 3 | DS_PARAMETRO | VARCHAR2 | N | DESCRIÇÃO DO PARÂMETRO |
| 4 | DS_QUERY | VARCHAR2 | Y | QUERY PARA ARMAZENAR A QUERY DO TP_PARAMETRO = QUERY |
| 5 | NM_PARAMETRO | VARCHAR2 | N | NOME DO PARÂMETRO |
| 6 | TP_PARAMETRO | NUMBER | N | TIPO DE PARÂMETRO, 0:QUERY, 1:LISTA, 2:VALOR) |

---

## MVCPOE.PORTE_ITEM_PRESCRICAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PORTE_ITEM_PRESCRICAO | NUMBER | N |  |
| 2 | CD_ITEM_PRESCRICAO | NUMBER | N |  |
| 3 | CD_PRESTADOR | NUMBER | N |  |
| 4 | CD_ATI_MED | VARCHAR2 | N |  |
| 5 | CD_ORIGEM | NUMBER | Y | 1 = ORIGEM PRESCRICAO HTML, 2 =ORIGEM PRESCRIÇÃO FLEX |

---

## MVCPOE.PRESCRICAO
> TABELA PRESCRIÇÃO DE MEDICAMENTOS, EXAMES, DIETAS E AFINS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRESCRICAO | NUMBER | N | CÓDIGO IDENTIFICADOR ÚNICO DA PRESCRIÇÃO |
| 2 | CD_ATENDIMENTO | NUMBER | N | CÓDIGO DO ATENDIMENTO |
| 3 | CD_PRESTADOR | NUMBER | N | CÓDIGO DO PRESTADOR |
| 4 | CD_UNIDADE_INTERNACAO | NUMBER | Y | CÓDIGO DA UNIDADE DE INTERNAÇÃO |
| 5 | DH_PRESCRICAO | DATE | N | DATA E HORA DA PRESCRIÇÃO |
| 6 | DS_EVOLUCAO | CLOB | Y | DESCRIÇÃO DA EVOLUÇÃO |
| 7 | CD_USUARIO | NUMBER | N | CÓDIGO DO USUÁRIO DA SESSÃO DO BANCO DE DADOS |
| 8 | CD_SOLICITACAO | NUMBER | Y | CÓDIGO DA SOLICITAÇÃO |
| 9 | SN_FECHADO | NUMBER | Y | INDICA SE A PRESCRIÇÃO ESTÁ FECHADA - 0 : NÃO; 1 : SIM |
| 10 | SN_RN | NUMBER | N | INDICA SE A PRESCRIÇÃO É DE RN |
| 11 | DT_VALIDADE | DATE | N | DATA DE VALIDADE DA PRESCRIÇÃO |
| 12 | SN_PRINCIPAL | NUMBER | N | INDICA SE É A PRESCRIÇÃO PRINCIPAL |
| 13 | SN_IMPRESSO | NUMBER | N | INDICA SE A PRESCRIÇÃO FOI IMPRESSA |
| 14 | TP_PRESCRICAO | NUMBER | N | INFORMA O TIPO DE PRESCRIÇÃO - 1:M ,2:E ,3:I ,4:D ,5:O ,6:F ,7:N, 8:A, 9:S, 10:V, 11:H |
| 15 | CD_USUARIO_PRESCRICAO | VARCHAR2 | Y | CÓDIGO DO USUÁRIO RESPONSÁVEL PELO CADASTRO DA PRESCRIÇÃO |
| 16 | CD_SETOR | NUMBER | Y | CODIGO DO SETOR |
| 17 | DT_REFERENCIA | DATE | N | DATA DE REFERÊNCIA |
| 18 | SN_TRANSCRICAO | NUMBER | N | INDICA SE É UMA TRANSCRIÇÃO DA PRESCRIÇÃO |
| 19 | DH_CRIACAO | DATE | Y | DATA E HORA DE CRIAÇÃO DA PRESCRIÇÃO |
| 20 | DH_IMPRESSAO | DATE | Y | DATA E HORA DA IMPRESSÃO DA PRESCRIÇÃO |
| 21 | CD_IMPORTA_REG_FAT | NUMBER | Y | CODIGO CD_IMPORTA_REG_FAT |
| 22 | CD_IMPORTA_REG_AMB | NUMBER | Y | CODIGO CD_IMPORTA_REG_AMB |
| 23 | CD_PRESCRICAO_PADRAO | NUMBER | Y | CODIGO DA PRESCRIÇÃO PADRÃO |
| 24 | CD_OBJETO | NUMBER | Y | CODIGO DO OBJETO - FK DE PAGU_OBJ |
| 25 | CD_USUARIO_AUTORIZADOR | VARCHAR2 | Y | USUÁRIO RESPONSÁVEL PARA AUTORIZAÇÃO DA PRESCRIÇÃO |
| 26 | CD_REGISTRO_CLINICO | NUMBER | Y | ESPECIFICA O REGISTRO CLÍNICO QUE FOI REALIZADO NO ATENDIMENTO |
| 27 | CD_PRESCRICAO_TRATAMENTO | NUMBER | Y | CÓDIGO DA PRESCRIÇÃO PAI DE TRATAMENTO |
| 28 | SN_ALTERA_PROTOCOLO_TRATAMENTO | NUMBER | Y | SE O PROTOCOLO DA PRESCRIÇÃO DE TRATAMENTO FOI ALTERADO DURANTE A PRESCRIÇÃO |
| 29 | SN_PRESCRICAO_DIA_SEGUINTE | NUMBER | N | SE A PRESCRIÇÃO É UMA PRESCRIÇÃO CRIADA PARA O DIA SEGUINTE |
| 30 | CD_USUARIO_CONVERSAO_PRESCRIC | VARCHAR2 | Y | USUÁRIO QUE FEZ A CONVERSÃO DA PRESCRIÇÃO DO DIA SEGUINTE PARA UMA PRESCRIÇÃO MÉDICA |
| 31 | DH_CONVERSAO_PRESCRICAO | DATE | Y | DATA DA CONVERSÃO DA PRESCRIÇÃO FUTURA PARA PRESCRIÇÃO MÉDICA |
| 32 | NM_PRESCRICAO | VARCHAR2 | Y | NOME DA PRESCRIÇÃO PARA FÁCIL IDENTIFICAÇÃO NO HISTÓRICO |
| 33 | CD_DOCUMENTO_CLINICO | NUMBER | Y | CÓDIGO DO DOCUMENTO CLÍNICO, SETADO VIA TRIGGER (FK) |
| 34 | CD_TRATAMENTO | NUMBER | Y | CÓDIGO DA SESSÃO DO TRATAMENTO |
| 35 | NR_CICLO | NUMBER | Y | NÚMERO DO CICLO DE TRATAMENTO |
| 36 | NR_SESSAO | NUMBER | Y | NÚMERO DA SESSÃO DO TRATAMENTO |
| 37 | CD_PRESCRICAO_INTEGRA | VARCHAR2 | Y | CÓDIGO DE-PARA DA PRESCRIÇÃO MÉDICA |
| 38 | CD_TIPO_SOLICITACAO | NUMBER | Y | COLUNA QUE INFORMA QUAL O TIPO DE SOLICITAÇÃO FOI SELECIONADO NO MOMENTO DA CRIAÇÃO DA PRESCRIÇÃO... |
| 39 | SN_COPIADA | NUMBER | Y | INDICA SE A PRESCRIÇÃO FOI COPIADA |
| 40 | NR_PERCENTUAL_REDUCAO_QUANTD | NUMBER | Y | INDICA O PERCENTUAL A SER USADO NA REDUÇÃO DA QUANTIDADE DOS ITENS |
| 41 | DS_JUSTIFICATIVA_REDUCAO_QTD | VARCHAR2 | Y | DESCRIÇÃO DA JUSTIFICATIVA DA REDUÇÃO DA QUANTIDADE DOS ITENS |
| 42 | TP_AGENDAMENTO | NUMBER | Y | TIPO DA SOLICITAÇÃO DE AGENDAMENTO - 1 : QUI = QUIMIOTERAPIA; 2 : RAD = RADIOTERAPIA; 3 : FAR = F... |
| 43 | SN_CONCOMITANTE_RADIOTERAPIA | NUMBER | Y | SE A PRESCRIÇÃO É CONCOMITANTE (REALIZADO AO MESMO TEMPO) COM A RADIOTERAPIA OU NÃO |
| 44 | SN_INTERCORRENCIA | NUMBER | Y | SE HOUVE INTERCORRÊNCIA NA PRESCRIÇÃO |
| 45 | DS_JUSTIFICATIVA_INTERROMPER | VARCHAR2 | Y | DESCRIÇÃO DA JUSTIFICATIVA DE INTERROMPER A PRESCRIÇÃO |
| 46 | SN_INTERROMPER_SESSAO | NUMBER | Y | INDICA SE HOUVE AÇÃO DE INTERROMPER A PRESCRIÇÃO |
| 47 | DS_JUSTIFICATIVA_SESSAO | VARCHAR2 | Y | DESCRIÇÃO DA JUSTIFICATIVA DE SESSÃO |
| 48 | SN_MEDICAMENTO_ADMINISTRADO | NUMBER | Y | INDICA SE O MEDICAMENTO FOI ADMINISTRADO (DADO) |
| 49 | NM_USUARIO | VARCHAR2 | Y | NOME DO LOGIN DO USUÁRIO |
| 50 | CD_ORIGEM | NUMBER | Y | 1 = ORIGEM PRESCRICAO HTML, 2 =ORIGEM PRESCRIÇÃO FLEX |

---

## MVCPOE.PRESCRICAO_MEDICA_VIA
> CONTROLE DE VIAS IMPRESSAS DE PRESCRIÇÕES MÉDICAS.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRESCRICAO_MEDICA_VIA | NUMBER | N | CHAVE PRIMÁRIA DA TABELA. |
| 2 | CD_PRESCRICAO | NUMBER | N | CÓDIGO (CHAVE) DA PRESCRIÇÃO MÉDICA. |
| 3 | NR_VIA | NUMBER | N | NÚMERO DA VIA INICIAL IMPRESSA. |
| 4 | QT_VIAS | NUMBER | N | QUANTIDADE DE VIAS SOLICITADAS IMPRESSAS. |
| 5 | DH_IMPRESSAO | DATE | N | DATA DA SOLICITAÇÃO DE IMPRESSÃO. |
| 6 | NM_USUARIO | VARCHAR2 | N | NOME DO USUÁRIO CONECTADO AO BANCO QUE SOLICITOU A IMPRESSÃO. |
| 7 | DS_MODO | VARCHAR2 | Y | MODO DE IMPRESSÃO SOLICITADO: GRÁFICO OU CARACTER. |
| 8 | DS_TIPO | VARCHAR2 | Y | TIPO DE DISPOSITIVO SELECIONADO: TELA, IMPRESSORA, ARQUIVO OU E-MAIL. |
| 9 | NM_DESTINO | VARCHAR2 | Y | NOME DO DESTINO DO RELATÓRIO: IMPRESSORA OU ARQUIVO. |
| 10 | CD_ORIGEM | NUMBER | Y | 1 = ORIGEM PRESCRICAO HTML, 2 =ORIGEM PRESCRIÇÃO FLEX |

---

## MVCPOE.PRESCRICAO_PADRAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRESCRICAO_PADRAO | NUMBER | N | CÓDIGO INDENTIFICADOR DA PARAMETRIZAÇÃO DA PRESCRIÇÃO PADRÃO |
| 2 | CD_MULTI_EMPRESA | NUMBER | Y | CÓDIGO DE MULTI EMPRESA, O DEFAUULT 1 CORRESPONDE A OPÇÃO EXIBIR EM TODAS AS EMPRESAS, NULL CORRE... |
| 3 | CD_PRESTADOR | NUMBER | Y | CÓDIGO DO PRESTADOR RESPOSÁVEL |
| 4 | CD_PROTOCOLO | NUMBER | Y | CÓDIGO DE IDENTIFICAÇÃO DO PROTOCOLO GERADO |
| 5 | CD_OBJETO | NUMBER | Y | TIPO DE OBJETO RELACIONADO |
| 6 | DS_PRESCRICAO_PADRAO | VARCHAR2 | N | DESCRIÇÃO PARA A PRESCRIÇÃO PADRÃO |
| 7 | NR_DIA | NUMBER | Y | DIA DE INTERNAÇÃO DO PACIENTE EM QUE A PRESCRIÇÃO DEVERÁ SER AVALIADA |
| 8 | SN_ATIVO | NUMBER | N | INFORMA A SITUAÇÃO DO REGISTRO QUANTO A UTILIZAÇÃO NO SISTEMA, 1:SIM E 0:NÃO |
| 9 | TP_PRESCRICAO_PADRAO | NUMBER | N | TIPO DE PRESCRIÇÃO QUE PODERÁ PRESCREVER ESTE ITEM, 1: MÉDICO, 2: ENFERMAGEM, 3: NUTRICIONISTA, 4... |
| 10 | DS_ESPECIALIDADE | VARCHAR2 | Y |  |
| 11 | DT_INTEGRA | DATE | Y |  |
| 12 | USUARIO_ORIGEM | VARCHAR2 | Y | CAMPO QUE DEFINE SE A PRESCRIÇÃO É DE ORIGEM FEITA PELA TELA DA NOVA PRESCRIÇÃO OU DO PEP |

---

## MVCPOE.PRESCRICAO_PADRAO_CID
> TABELA QUE ARMAZENA VÍNCULO ENTRE PRESCRIÇÃO PADRÃO E CID

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRESCRICAO_PADRAO_CID | NUMBER | N | CÓDIGO IDENTIFICADOR ÚNICO DO ITEM DA PRESCRIÇÃO |
| 2 | CD_CID | VARCHAR2 | Y | CÓDIGO DO CID |
| 3 | CD_PRESCRICAO_PADRAO | NUMBER | Y | CÓDIGO DE PRESCRIÇÃO PADRÃO |

---

## MVCPOE.PRESCRICAO_PADRAO_SETOR
> TABELA QUE GUARDA OS ACESSOS DE UMA PRESCRIÇÃO PADRÃO POR SETOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRESCRICAO_PADRAO_SETOR | NUMBER | N | CÓDIGO DE IDENTIFICADOR ÚNICO DO SETOR UTILIZADO NA PRESCRIÇÃO |
| 2 | CD_PRESCRICAO_PADRAO | NUMBER | N | CÓDIGO DA PRESCRIÇÃO PADRÃO REFERÊNCIA DO ACESSO |
| 3 | CD_SETOR | NUMBER | N | CÓDIGO DO SETOR QUE O USUÁRIO TERÁ ACESSO A PRESCRIÇÃO PADRÃO |

---

## MVCPOE.PRESCRICAO_RESPOSTA_FORMULA
> TABELA QUE ARMAZENA AS RESPOSTAS DADAS A CADA PRESCRIÇÃO, QUE FOI USADO PARA CALCULAR A DOSE DOS ITENS PRESCRITOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRESCRICAO_RESPOSTA_FORMULA | NUMBER | N | CHAVE PRIMÁRIA |
| 2 | CD_PRESCRICAO | NUMBER | N | CÓDIGO DA PRESCRIÇÃO QUE ESTAS RESPOSTAS FORAM USADAS. É PREENCHIDO AUTOMATICAMENTE PELO SISTEMA |
| 3 | CD_PERGUNTA | NUMBER | N | CÓDIGO DA PERGUNTA. É PREENCHIDO AUTOMATICAMENTE PELO SISTEMA |
| 4 | CD_RESPOSTA | NUMBER | Y | RESPOSTA ESCOLHIDA NA LISTA DE POSSIBILIDADES. QUANDO A PERGUNTE TIVER LISTA DE RESPOSTAS POSSÍVEIS |
| 5 | VL_RESPOSTA | NUMBER | Y | QUANDO A PERGUNTA FOR DO TIPO NUMÉRICO E NÃO TENHA LISTA DE RESPOSTAS POSSÍVEIS |
| 6 | NM_TITULO_PERGUNTA | VARCHAR2 | Y | TEXTO QUE SERA EXIBIDO AO LADO DA PERGUNTA NA BARRA DE TITULO DA PRESCRICAO DE TRATAMENTO. CASO N... |
| 7 | CD_ORIGEM | NUMBER | Y | 1 = ORIGEM PRESCRICAO HTML, 2 =ORIGEM PRESCRIÇÃO FLEX |

---

## MVCPOE.STATUS_AVALIACAO_PRESCRICAO
> TABELA PARA O STATUS DA AVALIACAO FARMACEUTICA. OTIMIZA A RECUPERACAO DA INFORMACAO ATUAL DA AVALIACAO FARMACEUTICA POR PRESCRICAO, EVITANDO QUE PARA RECUPERAR ESTA INFORMACAO TENHA QUE CONSULTAR TODOS OS ITENS PRESCRITOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_STATUS_AVALIACAO_PRESCRICAO | NUMBER | N | CODIGO SEQUENCIAL DA TABELA DE STATUS DA AVALIACAO DA PRESCRICAO DE TRATAMENTO |
| 2 | CD_PRESCRICAO | NUMBER | Y | CODIGO DA PRESCRICAO MEDICA SINALIZANDO O STATUS DELA |
| 3 | TP_STATUS | NUMBER | Y | STATUS DA AVALIACAO FARMACEUTICA POR PRESCRICAO - 1 : PAR=PARCIAL, 2 : CON=CONCLUIDA, 3 : ANA=EM ... |
| 4 | DS_AVALIACAO | VARCHAR2 | Y | CAMPO DA DESCRICAO DA AVALIACAO POR PRESCRICAO |
| 5 | CD_ORIGEM | NUMBER | Y | 1 = ORIGEM PRESCRICAO HTML, 2 =ORIGEM PRESCRIÇÃO FLEX |

---

## MVCPOE.SUB_GRUPO_PRESCRICAO
> TABELA DE SUB GRUPOS DOS ITENS DE PRESCRIÇÃO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SUB_GRUPO_PRESCRICAO | NUMBER | N | CÓDIGO INDENTIFICADO DO SUB GRUPO DA PRESCRIÇÃO. |
| 2 | CD_GRUPO_PRESCRICAO | NUMBER | N | CÓDIGO DE IDENTIFICAÇÃO DO GRUPO DA PRESCRIÇÃO. |
| 3 | DS_SUB_GRUPO_PRESCRICAO | VARCHAR2 | N | DESCRIÇÃO DO SUB GRUPO DA PRESCRIÇÃO. |
| 4 | NR_ORDEM_EXIBICAO | NUMBER | Y | ORDEM DE APRESENTAÇÃO DO SUBGRUPO. |

---

## MVCPOE.TEMA_CLINICO
> TABELA QUE ARMAZENA TEMAS DE DOCUMENTOS A SEREM CRIADOS NO SISTEMA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TEMA_CLINICO | NUMBER | N | IDENTIFICADOR DO TEMA DE DOCUMENTO CADASTRADO |
| 2 | DS_TEMA_CLINICO | VARCHAR2 | N | DESCRIÇÃO DO TEMA DE DOCUMENTO CRIADO |
| 3 | TP_TEMA_CLINICO | VARCHAR2 | N | CHAVE DO TEMA CRIADO |

---

## MVCPOE.TIPO_CONSULTA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIPO_CONSULTA | NUMBER | N |  |
| 2 | DS_TIPO_CONSULTA | VARCHAR2 | N |  |

---

## MVCPOE.TIPO_DOCUMENTO
> ARMAZENA OS TIPOS DE DOCUMENTOS GERADOS PELO MVPEP. ESTES TIPOS SÃO CARREGADOS ATRAVÉS DE SCRIPT NÃO SÃO ALTERADOS PELO SISTEMA, APENAS UTILIZADOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIPO_DOCUMENTO | NUMBER | N | CÓDIGO DE IDENTIFICADOR ÚNICO DO TIPO DE DOCUMENTO |
| 2 | DS_TIPO_DOCUMENTO | VARCHAR2 | N | A DESCRIÇÃO DO TIPO DE DOCUMENTO |
| 3 | SN_PENDENCIA_IMPEDITIVA_ALTA | NUMBER | Y | CONTROLE SE SERA IMPEDITIVO A REALIZAÇÃO DA ALTA DO PACIENTE, 1:SIM E 0:NÃO |
| 4 | SN_PRONTUARIO | NUMBER | N | SE O TIPO DE DOCUMENTO FAZ PARTE DO PRONTUÁRIO DO PACIENTE, 1:SIM E 0:NÃO |
| 5 | NM_DOCUMENTO | VARCHAR2 | N | O IDENTIFICADOR DO TIPO DE DOCUMENTO |

---

## MVCPOE.TIPO_ESQUEMA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIPO_ESQUEMA | NUMBER | N | SEQUENCE MVCPOE.SEQ_TIPO_ESQUEMA |
| 2 | CD_CONFIG_EXIBICAO_ITEM_PRESC | NUMBER | Y | INFORMA A CONFIGURAÇÃO DE EXIBIÇÃO DO ITENS DE PRESCRIÇÃO PERTENCENTES AO ESQUEMA |
| 3 | CD_GRUPO_ESQUEMA | NUMBER | Y | GRUPO DE ESQUEMA A SER USADO NO RELATÓRIO DE CAMINHO CRITÍCO |
| 4 | DS_MODELO_IMPRESSAO_COMPONENTE | VARCHAR2 | Y | MODELO DE IMPRESSÃO DO COMPONENTE NO RELATÓRIO DE PRESCRIÇÃO |
| 5 | DS_MODELO_IMPRESSAO_ITEM | VARCHAR2 | Y | MODELO DE IMPRESSÃO DO ITEM NO RELATÓRIO DE PRESCRIÇÃO |
| 6 | DS_REPORTS_ETIQ_ITEM_EXTERNO | VARCHAR2 | Y | CAMINHO DA ETIQUETA PARA ITENS EXTERNOS NO MVREPORTS. (PARAMETROS URL: <CD_ITPRE_MED> E <CD_TIP_P... |
| 7 | DS_TIPO_ESQUEMA | VARCHAR2 | N | DESCRIÇÃO DO TIPO DE ESQUEMA UTILIZADO PELO MÉDICO |
| 8 | NM_TIPO_ESQUEMA | VARCHAR2 | N | CÓDIGO DE IDENTIFICAÇÃO DO TIPO DE ESQUEMA UTILIZADO PELO MÉDICO, PARA PRESCRIÇÃO DE UM DETERMINA... |
| 9 | NM_ICONE | VARCHAR2 | Y | ÍCONE QUE REPRESENTARÁ O ESQUEMA |
| 10 | NR_DIAS_MEDIO_NAO_CRONICO | NUMBER | Y | INFORMA A QUANTIDADE DE DIAS DO MEDICAMENTO NÃO CRÔNICO |
| 11 | NR_ORDEM_IMPRESSAO | NUMBER | N | CÓDIGO DE IDENTIFICAÇÃO DA SEQUÊNCIA QUE SERÁ IMPRESSO O TIPO DE ESQUEMA |
| 12 | SN_A_CRITERIO_MEDICO | NUMBER | Y | DEFINE SE OS ITENS NESTE ESQUEMA PODERÃO INFORMAR SE O ITEM É A CRITÉRIO MÉDICO, 0:SIM OU 1:NÃO |
| 13 | SN_AGENDAMENTO | NUMBER | N | , 0:SIM OU 1:NÃO |
| 14 | SN_ANESTESIA | NUMBER | N | , 0:SIM OU 1:NÃO |
| 15 | SN_BLOQUEIO_COPIA | NUMBER | N | DEFINE SE OS ITENS NESTE ESQUEMA SERÃO IMPEDIDOS DE SEREM COPIADOS, 0:SIM OU 1:NÃO |
| 16 | SN_CID | NUMBER | Y | DEFINE SE OS ITENS NESTE ESQUEMA PODERÃO INFORMAR SE O ITEM APRESENTA CID, 0:SIM OU 1:NÃO |
| 17 | SN_CONTINUIDADE_CICLO | NUMBER | N | HABILITA A CONTINUAÇÃO DE CICLO DE APLICAÇÃO NO ESQUEMA, 0:SIM OU 1:NÃO |
| 18 | SN_CONTINUO | NUMBER | Y | DEFINE SE OS ITENS NESTE ESQUEMA PODERÃO INFORMAR SE O ITEM É CONTÍNUO, 0:SIM OU 1:NÃO |
| 19 | SN_CONTRASTE | NUMBER | N | , 0:SIM OU 1:NÃO |
| 20 | SN_CONTROLA_VOLUME | NUMBER | N | CONTROLA O ESQUEMA DE VOLUME DE INFUSÃO, 0:SIM OU 1:NÃO |
| 21 | SN_COPIA | NUMBER | N | INDICA SE O ESQUEMA PARTICIPARÁ DO PROCESSO DE CÓPIA DE PRESCRIÇÃO, 0:SIM OU 1:NÃO |
| 22 | SN_CRIAR_HORARIO | NUMBER | Y | INDICA SE OS ITENS VINCULADOS A ESTE ESQUEMA GERARÃO OU NÃO HORÁRIO NA PRESCRIÇÃO, 0:SIM OU 1:NÃO |
| 23 | SN_CRONICO | NUMBER | Y | IDENTIFICA SE O MEDICAMENTO É DE USO CRÔNICO, 0:SIM OU 1:NÃO |
| 24 | SN_DIAS_APLICACAO | NUMBER | N | INFORMA SE O ESQUEMA SELECIONADO SOLICITARÁ O DIA CORRENTE DA APLICAÇÃO, 0:SIM OU 1:NÃO |
| 25 | SN_DISPOSITIVO | NUMBER | N | INFORMA SE O ESQUEMA É CONFIGURÁVEL PELO CONTROLE DE DISPOSITIVO, 0:SIM OU 1:NÃO OU 2:OPCIONAL |
| 26 | SN_DOSE_PADRAO | NUMBER | Y | INFORMA SE O ESQUEMA SELECIONADO VAI TRABALHAR COM DOSE PADRÃO, 0:SIM OU 1:NÃO |
| 27 | SN_DURACAO | NUMBER | Y | VERIFICA SE O ESQUEMA CONTROLA DURAÇÃO DE INFUSÃO NOS ITENS DA PRESCRIÇÃO, 0:SIM OU 1:NÃO OU 2:OP... |
| 28 | SN_EMPRESA | NUMBER | Y | INDICA SE NOS ITENS DO ESQUEMA PODERÃO INFORMAR A EMPRESA, 0:SIM OU 1:NÃO |
| 29 | SN_EXAME_LABORATORIO | NUMBER | N | VERIFICA SE NO LANÇAMENTO DA PRESCRIÇÃO ACEITA EXAME DE LABORATÓRIO, 0:SIM OU 1:NÃO |
| 30 | SN_EXAME_RAIOX | NUMBER | N | VERIFICA SE NO LANÇAMENTO DA PRESCRIÇÃO ACEITA EXAME DE RAIO X, 0:SIM OU 1:NÃO |
| 31 | SN_EXIBE_QTD_TOTAL_DISPENSAR | NUMBER | Y | QUANTIDADE TOTAL À DISPENSAR NAS PRESCRIÇÕES DE TRATAMENTO DOMICILIAR, 0:SIM OU 1:NÃO |
| 32 | SN_EXIBE_VOLUME_TOTAL | NUMBER | N | INDICA SE DEVERÁ SER INFORMADO O VOLUME TOTAL E A UNIDADEDA SOLUÇÃO NO ITEM, 1:SIM OU 0:NÃO OU 2:... |
| 33 | SN_FASE_QUIMIOTERAPIA | NUMBER | Y | INDICA O TIPO DA FASE DA QUIMIOTERAPIA PARA O ITEM PERTECENTE A ESSE ESQUEMA, 0:SIM OU 1:NÃO |
| 34 | SN_FORMULA_APLICACAO | NUMBER | N | INDICA SE NO LANÇAMENTO DA PRESCRIÇÃO ACEITA FORMA DE APLICAÇÃO, 1:SIM OU 0:NÃO |
| 35 | SN_FREQUENCIA | NUMBER | N | INDICA SE NO LANÇAMENTO DA PRESCRIÇÃO ACEITA FREQUÊNCIA, 0:SIM OU 1:NÃO |
| 36 | SN_GERA_ETIQ_PREPARACAO_COMP | NUMBER | Y | INDICA SE SERÁ GERADO O COD. DE BARRAS QUANDO O ITEM PRESCRITO FOR UM COMPONENTE, 0:SIM OU 1:NÃO |
| 37 | SN_GERA_ETIQ_PREPARACAO_PRINC | NUMBER | Y | INDICA SE SERÁ GERADO O COD. DE BARRAS QUANDO O ITEM PRESCRITO FOR O ITEM PRINCIPAL COM COMPONENT... |
| 38 | SN_GERA_ETIQ_PREPARACAO_UNICO | NUMBER | Y | INDICA SE SERÁ GERADO O COD. DE BARRAS QUANDO O ITEM FOR PRESCRITO SEM COMPONENTES, 0:SIM OU 1:NÃO |
| 39 | SN_GLICEMICO | NUMBER | N | , 0:SIM OU 1:NÃO |
| 40 | SN_HABILITA_HORARIO | NUMBER | Y | CONTROLE DE HABILITAR HORÁRIO NO ESQUEMA DE ITENS DE PRESCRIÇÃO. 0:SIM OU 1:NÃO |
| 41 | SN_HORARIO | NUMBER | N | INDICA SE O ESQUEMA PERMITE INFORMAR HORÁRIO PARA OS ITENS DA PRESCRIÇÃO, 0:SIM OU 1:NÃO |
| 42 | SN_KIT | NUMBER | Y | INFORMA SE DESEJA QUE OS COMPONENTES SEJAM APRESENTADOS NA SOLICITAÇÃO COMO KITS, 0:SIM OU 1:NÃO ... |
| 43 | SN_LATERALIDADE | NUMBER | N | , 0:SIM OU 1:NÃO |
| 44 | SN_LOCAL_ANATOMICO | NUMBER | Y | INFORMA SE O ESQUEMA SERÁ HABILITADO NA TELA DA PRESCRIÇÃO PARA PREENCHIMENTO, 0:SIM OU 1:NÃO |
| 45 | SN_MATERIAL_COLETA | NUMBER | Y | INFORMA SE O ESQUEMA SELECIONADO VAI TRABALHAR COM O MATERIAL DE COLETA, 0:SIM OU 1:NÃO |
| 46 | SN_NECESSARIO | NUMBER | N |  |
| 47 | SN_NOTIFICA_FINAL_CICLO | NUMBER | N | HABILITA A NOTIFICAÇÃO DO FINAL DO CICLO, 0:SIM OU 1:NÃO |
| 48 | SN_NUMERO_DIA | NUMBER | Y | IDENTIFICA SE OS ITENS DO ESQUEMA CONTROLAM O DIA DE APLICAÇÃO, 0:SIM OU 1:NÃO |
| 49 | SN_OBSERVACAO | NUMBER | N | VERIFICA SE NO LANÇAMENTO DA PRESCRIÇÃO ACEITA OBSERVAÇÃO, 0:SIM OU 1:NÃO |
| 50 | SN_OBSERVACAO_PREDEFINIDA | NUMBER | N | INDICA SE NO LANÇAMENTO DA PRESCRIÇÃO ACEITA OBSERVAÇÃO PREDEFINIDA, 0:SIM OU 1:NÃO |
| 51 | SN_PRODUTO | NUMBER | N | INDICA SE NO LANÇAMENTO DA PRESCRIÇÃO ACEITA O PRODUTO, 0:SIM OU 1:NÃO |
| 52 | SN_QUANTIDADE | NUMBER | N | QUANTIDADE NO LANÇAMENTO DA PRESCRIÇÃO ACEITA, 0:SIM OU 1:NÃO |
| 53 | SN_QUANTIDADE_CHECAGEM | NUMBER | Y | INDICA SE SERÁ OU NÃO PERMITIDO INSERIR A QUANTIDADE DO ITEM NA TELA DE CHECAGEM, 0:SIM OU 1:NÃO |
| 54 | SN_RECEPCIONAR_ITEM_EXTERNO | NUMBER | N | IDENTIFICA SE OS ITENS DO ESQUEMA SÃO RECEPCIONADOS, 0:SIM OU 1:NÃO |
| 55 | SN_SANGUE_DERIVADOS | NUMBER | N | PERMITE LANÇAMENTO AUTOMÁTICO PARA O BANCO DE SANGUE, 0:SIM OU 1:NÃO |
| 56 | SN_SETOR_EXAME | NUMBER | N | INDICA SE O ESQUEMA É LANÇAMENTO DE EXAME, 0:SIM OU 1:NÃO |
| 57 | SN_SOLICITA_PREENCHIMENTO | NUMBER | N | INFORMA SE O ESQUEMA SELECIONADO DEVE SEMPRE SER REQUISITADO, 0:SIM OU 1:NÃO |
| 58 | SN_SOLICITA_PRESTADOR | NUMBER | N | SELECIONA SE O ESQUEMA É SOLICITA PRESTADOR NO ITENS DA PRESCRIÇÃO, 0:SIM OU 1:NÃO |
| 59 | SN_SUGERE_FREQUENCIA_INF | NUMBER | N | INDICA SE CALCULA E SUGERE A FREQUÊNCIA BASEADO NA VELOCIDADE DE INFUSÃO E VICE-VERSA, 0:SIM OU 1... |
| 60 | SN_URGENTE | NUMBER | Y | INFORMA SE O ESQUEMA SELECIONADO SOLICITARÁ A INFORMAÇÃO DE URGÊNCIA, 0:SIM OU 1:NÃO |
| 61 | SN_UNIDADE | NUMBER | Y | INFORMA SE O ESQUEMA VAI CONTROLAR UNIDADE DE MEDIDAS, 0:SIM OU 1:NÃO |
| 62 | SN_VELOCIDADE_INFUSAO | NUMBER | N | PERMITE CONTROLE DE VELOCIDADE DE INFUSÃO DO MEDICAMENTO(SOROTERAPIA), 0:SIM OU 1:NÃO OU 2:OPCIONAL |
| 63 | TP_CHECAGEM | NUMBER | N | INDICA O TIPO DE CHECAGEM QUE O ESQUEMA IRÁ FUNCIONAR. 1:CONTROLA CHECAGEM, 2:CHECAGEM AUTOMÁTICA... |
| 64 | TP_COMPONENTE | NUMBER | N | DETERMINA ONDE SERÁ APRESENTADO OS REGISTROS DESTE ESQUEMA NA TELA DE PRESCRIÇÃO, COMO ITEM, COMP... |
| 65 | TP_DURACAO | NUMBER | Y | TIPO DA DURAÇÃO DA VELOCIDADE INFUSÃO, 0:HORAS OU 1:DIAS OU 2:AMBOS |
| 66 | TP_ESQUEMA | NUMBER | N | 0: MEDICAMENTOS ,1: MATERIAIS ,2: ANTIBIÓTICOS ,3: QUIMIOTERÁPICOS ,4: SOROTERAPIA ,5: GLICEMIA ,... |
| 67 | TP_ETIQUETA_PREPARO | NUMBER | Y | INFORMA O TIPO DA ETIQUETA DE PREPARAÇÃO DO MEDICAMENTO, 0:PEQUENA, 1:GRANDE |
| 68 | SN_PROCEDIMENTO | NUMBER | N | , 1:SIM OU 0:NÃO |
| 69 | SN_COMPONENTE_FILHO | NUMBER | N | DEFINE SE NA PRESCRIÇÃO PODERÁ INCLUIR COMPONENTE DO TIPO FILHO, 1:SIM OU 0:NÃO |
| 70 | SN_ULTRAPASSA_DIA | NUMBER | Y | INFORMA SE O ESQUEMA VAI CONTROLAR UNIDADE DE MEDIDAS, 1:SIM OU 0:NÃO |
| 71 | SN_CRIAR_HR_APENAS_SN_ACM | NUMBER | Y |  |
| 72 | SN_AGENDA_HORARIO_FIXO | NUMBER | Y |  |
| 73 | SN_CONTROLE_FREQUENCIA_HORARIO | NUMBER | Y | IDENTIFICA COMO SERÁ O TIPO DE CONTROLE SOBRE A FREQUÊNCIA DE APLICAÇÃO DOS MEDICAMENTOS, 0:MANTE... |
| 74 | SN_TRAZER_COMPONENTE_RECOLHIDO | NUMBER | Y | , 1:SIM OU 0:NÃO |
| 75 | DS_DIGITO_VERIF_CODIGO_BARRAS | VARCHAR2 | Y | PREFIXO DAS ETIQUETAS DE PREPARAÇÃO DE MEDICAMENTOS |
| 76 | TP_CHECAGEM_COMPONENTE | NUMBER | Y | INDICA O TIPO DE CHECAGEM DE COMPONENTE POR ESQUEMA: 1=CC (CONTROLA CHECAGEM), 2=CA (CHECAGEM AUT... |
| 77 | SN_ARRED_QTD_ITEM_PRESCRICAO | NUMBER | N | Informe se deseja arredondar a quantidade de item de prescrio para menos de tres casas decimais, ... |

---

## MVCPOE.TIPO_ESQUEMA_EXCECAO
> TABELAS DE EXCEÇÕES DO ESQUEMA SELECIONADO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIPO_ESQUEMA_EXCECAO | NUMBER | N | CÓDIGO DA CHAVE DA TABELA |
| 2 | DS_TIPO_ESQUEMA_EXCECAO | VARCHAR2 | N |  |
| 3 | CD_TIPO_ESQUEMA | NUMBER | N |  |
| 4 | CD_OBJETO | NUMBER | N | TIPO DE OBJETO DE PRESCRIÇÃO |
| 5 | SN_OBSERVACAO | NUMBER | N | HABILITA O CAMPO OBSERVAÇÃO NA TELA DE PRESCRIÇÃO PARA OS ITENS DESSE ESQUEMA 0 : NÃO; 1 : SIM |
| 6 | SN_PRODUTO | NUMBER | N | HABILITA O VINCULO DO PRODUTO AO ITEM DE PRESCRIÇÃO 0 : NÃO; 1 : SIM |
| 7 | SN_QUANTIDADE | NUMBER | N | HABILITA O CAMPO DE QUANTIDADE NA TELA DE PRESCRIÇÃO PARA OS ITENS DESSE ESQUEMA 0 : NÃO; 1 : SIM |
| 8 | SN_EXAME_RAIOX | NUMBER | N | HABILITA O VINCULO DO EXAME DE IMAGEM AO ITEM DE PRESCRIÇÃO 0 : NÃO; 1 : SIM |
| 9 | SN_TIPO | NUMBER | N | INDICA SE O ESQUEMA É DE MEDICAMENTO OU NÃO 0 : NÃO; 1 : SIM |
| 10 | SN_EXAME_LABORATORIO | NUMBER | N | HABILITA O VINCULO DO EXAME LABORATORIAL AO ITEM DE PRESCRIÇÃO 0 : NÃO; 1 : SIM |
| 11 | SN_FREQUENCIA | NUMBER | N | HABILITA O CAMPO DE FREQUENCIA NA TELA DE PRESCRIÇÃO PARA OS ITENS DESSE ESQUEMA 0 : NÃO; 1 : SIM |
| 12 | SN_FORMULA_APLICACAO | NUMBER | N | HABILITA O CAMPO DE FORMA DE APLICAÇÃO NA TELA DE PRESCRIÇÃO PARA OS ITENS DESSE ESQUEMA 0 : NÃO;... |
| 13 | SN_COPIA | NUMBER | N | HABILITA A CÓPIA COMO DEFAULT NA PRESCRIÇÃO 0 : NÃO; 1 : SIM |
| 14 | SN_SETOR_EXAME | NUMBER | N | INDICA SE O SETOR DE EXAME SERÁ INFORMADO PARA SOLICITAÇÃO DE EXAMES 0 : NÃO; 1 : SIM |
| 15 | SN_HORARIO | NUMBER | N | HABILITA O CAMPO DE HORÁRIO NA TELA DE PRESCRIÇÃO PARA OS ITENS DESSE ESQUEMA 0 : NÃO; 1 : SIM |
| 16 | SN_KIT | NUMBER | Y | INFORMA SE DESEJA SE OS COMPONENTES SEJAM APRESENTADOS NA SOLICITAÇÃO COMO KITS 0 : NÃO; 1 : SIM |
| 17 | SN_SOLICITA_PRESTADOR | NUMBER | N | SE VAI INFORMAR O PRESTADOR OU NAO QUANDO O ITEM FOR PROCEDIMENTO 0 : NÃO; 1 : SIM |
| 18 | SN_SOLICITA_PREENCHIMENTO | NUMBER | N | INFORMA SE O ESQUEMA SELECIONADO DEVE SER SEMPRE REQUISITADO NA PRESCRIÇÃO 0 : NÃO; 1 : SIM |
| 19 | SN_SANGUE_DERIVADOS | NUMBER | N | HABILITA O VINCULO DO SANGUE E DERIVADOS AO ITEM DE PRESCRIÇÃO 0 : NÃO; 1 : SIM |
| 20 | NM_ICONE | VARCHAR2 | Y |  |
| 21 | SN_ADMISSAO | NUMBER | N | SÓ APARECE NA TELA DE ADMISSÃO OS ITENS RELACIONADOS A ESSE ESQUEMA 0 : NÃO; 1 : SIM |
| 22 | SN_DIAS_APLICACAO | NUMBER | N | HABILTA OU NÃO A OPÇÃO DE DIAS DE APLICAÇÃO 0 : NÃO; 1 : SIM |
| 23 | SN_VELOCIDADE_INFUSAO | NUMBER | N | HABILTA OU NÃO A OPÇÃO DE VELOCIDADE DE INFUSÃO. VALORES: N:0 - NÃO; S:1 - SIM(OBRIGATÓRIO); O:2 ... |
| 24 | SN_CONTROLA_VOLUME | NUMBER | N | HABILITA OU NÃO A OPÇÃO DE VELOCIDADE DE INFUSÃO 0 : NÃO; 1 : SIM |
| 25 | TP_COMPONENTE | NUMBER | N | DEFINE SE O ITEM VINCULADO AO ESQUEMA, VAI SER MOSTRADO LA LISTA DE ITENS OU COMPONENTE OU AMBOS ... |
| 26 | TP_CHECAGEM | NUMBER | N | INDICA O TIPO DE CHECAGEM QUE ESQUEMA IRÁ FUNCIONAR. CC:1 CONTROLA CHECAGEM, CA:2 CHECAGEM AUTOMÁ... |
| 27 | SN_URGENTE | NUMBER | Y | INDICA A URGÊNCIA NA PRESCRIÇÃO MÉDICA NOS PROCESSOS DE INTEGRAÇÃO 0 : NÃO; 1 : SIM |
| 28 | SN_NUMERO_DIA | NUMBER | Y | IDENTIFICA SE OS ITENS DO ESQUEMA CONTROLAM O DIA DE APLICAÇÃO 0 : NÃO; 1 : SIM |
| 29 | SN_DURACAO | NUMBER | Y | HABILTA OU NÃO A OPÇÃO DE DURAÇÃO. VALORES: N:0 - NÃO; S:1 - SIM(OBRIGATÓRIO);  O:2 - OPCIONAL. |
| 30 | SN_UNIDADE | NUMBER | Y | CONTROLE DE UNIDADE NO ESQUEMA DE ITENS DE PRESCRICAO 0 : NÃO; 1 : SIM |
| 31 | SN_MATERIAL_COLETA | NUMBER | Y | INDICA O CONTROLE DE MATERIAL DE EXAME LABORATORIAL NA PRESCRIÇÃO MÉDICA 0 : NÃO; 1 : SIM |
| 32 | SN_DOSE_PADRAO | NUMBER | Y | INDICA SE A DOSE PADRÃO SERÁ UTILIZADA PARA O ESQUEMA SELECIONADO 0 : NÃO; 1 : SIM |
| 33 | SN_OBSERVACAO_PREDEFINIDA | NUMBER | N | INDICA SE A OBSERVAÇÃO PREDENIFIDA SERÁ UTILIZADA PARA O ESQUEMA 0 : NÃO; 1 : SIM |
| 34 | SN_SUGERE_FRE_INF | NUMBER | N | INDICA SE CALCULA E SUGERE A FREQUÊNCIA BASEADO NA INFUSÃO E VICE-VERSA. NÃO FUNCIONA COM MVPEP 1... |
| 35 | SN_DISPOSITIVO | NUMBER | N | CONTROLE DE DISPOSITIVO NO ESQUEMA DE ITENS DE PRESCRIÇÃO. VALORES: N:0 - NÃO; S:1 - SIM(OBRIGATÓ... |
| 36 | SN_LOCAL_ANATOMICO | NUMBER | Y | INDICA PARA O TIPO DE OBJETO CONFIGURADO SE O ESQUEMA INFORMARÁ LOCAL ANATOMICO DA COLETA 0 : NÃO... |
| 37 | SN_HABILITA_HORARIO | NUMBER | N | CONTROLE DE HABILITAR HORÁRIO NO ESQUEMA DE ITENS DE PRESCRIÇÃO. VALORES: S:1 - SIM(OBRIGATÓRIO);... |
| 38 | SN_A_CRITERIO_MEDICO | NUMBER | Y | DEFINE SE OS ITENS NESTE ESQUEMA PODERÃO INFORMAR SE O ITEM É A CRITÉRIO MÉDICO 0 : NÃO; 1 : SIM |
| 39 | SN_CONTINUO | NUMBER | Y | DEFINE SE OS ITENS NESTE ESQUEMA PODERÃO INFORMAR SE O ITEM É CONTÍNUO 0 : NÃO; 1 : SIM |
| 40 | SN_QUATIDADE_CHECAGEM | NUMBER | Y | INDICA SE SERÁ OU NÃO PERMITIDO INSERIR A QUANTIDADE DO ITEM NA TELA DE CHECAGEM 0 : NÃO; 1 : SIM |
| 41 | SN_EXIBE_VOLUME_TOTAL | NUMBER | N | INDICA SE DEVERÁ SER INFORMADO O VOLUME TOTAL E A UNIDADEDA SOLUÇÃO NO ITEM. N:0 - NÃO; S:1 - SIM... |
| 42 | SN_CID | NUMBER | Y | DEFINE SE OS ITENS NESTE ESQUEMA PODERÃO INFORMAR SE O ITEM APRESENTA CID 0 : NÃO; 1 : SIM |
| 43 | SN_NOTIFICA_FINAL_CICLO | NUMBER | N | HABILITA A NOTIFICAÇÃO DE CONCLUSÃO DE CICLO NA EXCEÇÃO DO ESQUEMA 0 : NÃO; 1 : SIM |
| 44 | SN_CONTINUIDADE_CICLO | NUMBER | N | HABILITA A CONTINUAÇÃO DE CICLO DE APLICAÇÃO NA EXCEÇÃO DO ESQUEMA 0 : NÃO; 1 : SIM |
| 45 | SN_BLOQUEIA_COPIA | NUMBER | N | DEFINE SE OS ITENS NESTE ESQUEMA SERÃO IMPEDIDOS DE SEREM COPIADOS 0 : NÃO; 1 : SIM |
| 46 | SN_CRONICO | NUMBER | N | INFORMA SE O MEDICAMENTO É DE USO CRÔNICO 0 : NÃO; 1 : SIM |
| 47 | TP_DURACAO | NUMBER | N | INFORMA O TIPO DA DURAÇÃO HORAS, DIAS OU AMBOS  H:0, D:1, A:2 |
| 48 | DS_MODELO_IMPRESSAO_ITEM | VARCHAR2 | Y |  |
| 49 | DS_MODELO_IMPRESSAO_COMPONENTE | VARCHAR2 | Y |  |
| 50 | SN_EMPRESA | NUMBER | N | INDICA SE O ESQUEMA IRÁ INFORMAR A EMPRESA 0 : NÃO; 1 : SIM |
| 51 | SN_FASE_QUIMIOTERAPIA | NUMBER | Y | EXIBE OU NÃO O TIPO DA FASE DA QUIMIOTERAPIA PARA O ITEM PERTENCENTE A ESSE ESQUEMA 0 : NÃO; 1 : SIM |

---

## MVCPOE.TURNO_SETOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TURNO | NUMBER | N |  |
| 2 | CD_UNIDADE_INTERNA | NUMBER | Y |  |
| 3 | CD_SETOR | NUMBER | N |  |
| 4 | DS_TURNO | VARCHAR2 | N |  |
| 5 | HR_INICIAL | DATE | N |  |
| 6 | HR_FINAL | DATE | N |  |
| 7 | QT_MINUTOS_IMPRESSAO | NUMBER | Y |  |
| 8 | SN_PRESCRICAO_ENFER | NUMBER | Y |  |
| 9 | SN_PRESCRICAO_FARMA | NUMBER | Y |  |
| 10 | SN_PRESCRICAO_FISIO | NUMBER | Y |  |
| 11 | SN_PRESCRICAO_MEDICA | NUMBER | Y |  |
| 12 | SN_PRESCRICAO_NUTRI | NUMBER | Y |  |
| 13 | SN_PRESCRICAO_OUTROS | NUMBER | Y |  |
| 14 | SN_PRESCRICAO_TEC_ENFER | NUMBER | Y |  |

---

## MVCPOE.UNIDADE_PRESCRICAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_UNIDADE_PRESCRICAO | NUMBER | N |  |
| 2 | CD_CONFIGURACAO_ITEM_PRESCRIC | NUMBER | N |  |
| 3 | CD_UNIDADE | VARCHAR2 | N |  |
| 4 | CD_ITEM_UNIDADE_PADRAO | NUMBER | N |  |
| 5 | DS_UNIDADE_PRESCRICAO | VARCHAR2 | Y |  |
| 6 | SN_PRESCRICAO | NUMBER | Y |  |
| 7 | TP_TEMPO | NUMBER | Y |  |
| 8 | CD_UNIDADE_PRESCRICAO_MAXIMA | VARCHAR2 | Y |  |

---

## MVCPOE.UNIDADE_PRODUTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_UNIDADE_PRODUTO | NUMBER | N |  |
| 2 | CD_UNIDADE | VARCHAR2 | Y |  |
| 3 | CD_PRODUTO | NUMBER | N |  |
| 4 | DS_UNIDADE_PRODUTO | VARCHAR2 | N |  |
| 5 | NR_FATOR | NUMBER | N |  |
| 6 | TP_RELATORIO | NUMBER | Y |  |
| 7 | NR_CODIGO_DE_BARRAS | VARCHAR2 | Y |  |
| 8 | SN_ATIVO | NUMBER | Y |  |
| 9 | CD_ITEM_UNIDADE_PADRAO | NUMBER | N |  |
| 10 | DS_UNIDADE_PRESCRICAO | VARCHAR2 | Y |  |
| 11 | SN_PRESCRICAO | NUMBER | Y |  |
| 12 | TP_TEMPO | NUMBER | Y |  |
| 13 | CD_UNIDADE_PRODUTO_MAXIMA | VARCHAR2 | Y |  |
| 14 | SN_CORPORATIVA | NUMBER | Y |  |
| 15 | SN_REPRESENTA_ML | NUMBER | Y |  |
| 16 | SN_BALANCO_HIDRICO | NUMBER | Y |  |
| 17 | SN_SOMA_BALANCO | NUMBER | Y |  |
