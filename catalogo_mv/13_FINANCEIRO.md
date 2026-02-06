# 13 - Financeiro

> Contas a pagar/receber, caixa, tesouraria, titulos

## Resumo

- **Tabelas**: 458
- **Owners**: DBAMV, MVCONT

---

## DBAMV.ABRE_CAIXA
> Registra o historico das aberturas/reaberturas dos Lotes do Caixa

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ABRE_CAIXA | NUMBER | N |  |
| 2 | CD_LOTE_CAIXA | NUMBER | N |  |
| 3 | DT_ABERTURA | DATE | N |  |
| 4 | CD_USUARIO_ABERTURA | VARCHAR2 | N |  |
| 5 | DT_FECHAMENTO | DATE | Y |  |
| 6 | CD_USUARIO_FECHAMENTO | VARCHAR2 | Y |  |
| 7 | VL_SALDO_INICIAL | NUMBER | N |  |
| 8 | VL_SALDO_FINAL | NUMBER | Y |  |
| 9 | VL_SALDO_DINHEIRO | NUMBER | N |  |
| 10 | DS_JUSTIFICATIVA | VARCHAR2 | Y | Justificativa Abertura/Reabetura do Lote do Caixa |
| 11 | SN_REABERTURA | VARCHAR2 | N | Indicac?o se e um Lote de Caixa Reaberto ou N?o |
| 12 | CD_LOTE_CAIXA_ORIGEM | NUMBER | Y | Lote Caixa que originou a reabertura |

---

## DBAMV.ACRESC_DESCONTOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GRU_PRO | NUMBER | N |  |
| 2 | CD_REGRA | NUMBER | N |  |
| 3 | VL_PERC_ACRESCIMO | NUMBER | Y |  |
| 4 | VL_PERC_DESCONTO | NUMBER | Y |  |
| 5 | TP_ATEND_AMBULATORIAL | VARCHAR2 | Y |  |
| 6 | TP_ATEND_EXTERNO | VARCHAR2 | Y |  |
| 7 | TP_ATEND_INTERNACAO | VARCHAR2 | Y |  |
| 8 | TP_ATEND_URGEME | VARCHAR2 | Y |  |
| 9 | DS_DESCONTO | VARCHAR2 | Y |  |
| 10 | DS_ACRESCIMO | VARCHAR2 | Y |  |
| 11 | SN_VL_FILME | VARCHAR2 | Y |  |
| 12 | SN_VL_OPERACIONAL | VARCHAR2 | Y |  |
| 13 | SN_VL_HONORARIO | VARCHAR2 | Y |  |
| 14 | TP_ATEND_HOMECARE | VARCHAR2 | Y |  |
| 15 | SN_DESTACAR_NA_FATURA | VARCHAR2 | Y | Indica se ha ou n?o destacamento do acrescimo ou desconto na fatura |
| 16 | DT_INICIO_VIGENCIA | DATE | N | Data de inicio de vigencia |
| 17 | DT_FINAL_VIGENCIA | DATE | Y | Data final de vigencia |

---

## DBAMV.ACRESC_DESCONTOS_PROC

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRO_FAT | VARCHAR2 | N |  |
| 2 | CD_REGRA | NUMBER | N |  |
| 3 | VL_PERC_ACRESCIMO | NUMBER | Y |  |
| 4 | VL_PERC_DESCONTO | NUMBER | Y |  |
| 5 | TP_ATEND_AMBULATORIAL | VARCHAR2 | Y |  |
| 6 | TP_ATEND_EXTERNO | VARCHAR2 | Y |  |
| 7 | TP_ATEND_INTERNACAO | VARCHAR2 | Y |  |
| 8 | TP_ATEND_URGEME | VARCHAR2 | Y |  |
| 9 | DS_DESCONTO | VARCHAR2 | Y |  |
| 10 | DS_ACRESCIMO | VARCHAR2 | Y |  |
| 11 | SN_VL_FILME | VARCHAR2 | Y |  |
| 12 | SN_VL_HONORARIO | VARCHAR2 | Y |  |
| 13 | SN_VL_OPERACIONAL | VARCHAR2 | Y |  |
| 14 | TP_ATEND_HOMECARE | VARCHAR2 | Y |  |
| 15 | SN_DESTACAR_NA_FATURA | VARCHAR2 | Y | Indica se ha ou n?o destacamento do acrescimo ou desconto na fatura |
| 16 | VL_PERC_ACRESCIMO_EXAME | NUMBER | Y | Valor do percentual de acrescimo para procedimentos de exames. |
| 17 | DS_ACRESCIMO_EXAME | VARCHAR2 | Y | Descric?o do percentual de acrescimo para procedimentos de exames. |
| 18 | DT_INICIO_VIGENCIA | DATE | N | Data de inicio de vigencia |
| 19 | DT_FINAL_VIGENCIA | DATE | Y | Data final de vigencia |

---

## DBAMV.ALCADA_FFCV

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ALCADA_FFCV | NUMBER | N |  |
| 2 | CD_MULTI_EMPRESA | NUMBER | Y |  |
| 3 | CD_PROCEDIMENTO | VARCHAR2 | Y |  |
| 4 | CD_GRU_PRO | NUMBER | Y |  |
| 5 | CD_GRU_FAT | NUMBER | Y |  |
| 6 | CD_USUARIO_CADASTRO | VARCHAR2 | Y |  |
| 7 | DT_CADASTRO | DATE | Y |  |

---

## DBAMV.ALCADA_GESTAO
> Tabela de itens de alçada financeira.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ALCADA_GESTAO | NUMBER | N | Código do registro de gestão de alçada. |
| 2 | CD_EMPRESA | NUMBER | N | Código da empresa. |
| 3 | TP_ALCADA | VARCHAR2 | N | Tipos de alçada. |
| 4 | VL_ALCADA_UNITARIA_MIN | NUMBER | N | Valor total mínimo permitido por movimento do processo. |
| 5 | VL_ALCADA_UNITARIA_MAX | NUMBER | N | Valor total máximo permitido por movimento do processo. |
| 6 | VL_ALCADA_ACUMULADA_MIN | NUMBER | N | Valor total mínimo permitido de acumulado de movimentações do processo. |
| 7 | VL_ALCADA_ACUMULADA_MAX | NUMBER | N | Valor total máximo permitido de acumulado de movimentações do processo. |
| 8 | SN_PERMITE_GERAR_SENHA | VARCHAR2 | N | Permitir gerar senha de transferência de alçada. |
| 9 | TP_PERIODO | VARCHAR2 | N | Típo do período. |
| 10 | TP_NIVEL_MOVIMENTO | VARCHAR2 | N | Tipo do nível de movimento. |
| 11 | ST_ALCADA | VARCHAR2 | N | Status do registro de alçada. |
| 12 | DH_REGISTRO | DATE | N | Data e hora do registro. |
| 13 | CD_USUARIO_REGISTRO | VARCHAR2 | N | Usuário do registro da versão. |
| 14 | CD_HASH | VARCHAR2 | N | Hash do registro. |

---

## DBAMV.ALCADA_TRANSF
> Tabela de senhas de alçada financeira.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ALCADA_TRANSF | NUMBER | N | Código da senha de liberação de alçada para terceiro. |
| 2 | CD_ALCADA_USUARIO | NUMBER | N | Código da alçada. |
| 3 | CD_USUARIO | VARCHAR2 | N | Código do usuário da alçada. |
| 4 | CD_SENHA | VARCHAR2 | N | Código da senha criptografada. |
| 5 | DT_VIGENCIA_INI | DATE | N | Data de início da vigência. |
| 6 | DT_VIGENCIA_FIM | DATE | N | Data de fim da vigência. |
| 7 | TP_STATUS | VARCHAR2 | N | Status do registro de senha de transferência. |
| 8 | DH_ACAO | DATE | Y | Data e hora da ação sobre disposição do registro. |
| 9 | CD_ACAO_ORIGEM | VARCHAR2 | Y | Código de origem do uso do registro senha. |
| 10 | DH_REGISTRO | DATE | N | Data e hora do registro da senha. |
| 11 | CD_USUARIO_REGISTRO | VARCHAR2 | N | Código do usuário do registro. |
| 12 | CD_HASH | VARCHAR2 | N |  |

---

## DBAMV.ALCADA_USUARIO
> Tabela de itens de alçada financeira.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ALCADA_USUARIO | NUMBER | N | Código do item da alçada. |
| 2 | CD_ALCADA_GESTAO | NUMBER | N |  |
| 3 | CD_USUARIO | VARCHAR2 | N | Código do usuário da alçada. |
| 4 | VL_ALCADA_UNITARIA_MIN | NUMBER | N | Valor mínimo da alçada por movimento no exercício. |
| 5 | VL_ALCADA_UNITARIA_MAX | NUMBER | N | Valor máximo da alçada por movimento no exercício. |
| 6 | VL_ALCADA_ACUMULADA_MIN | NUMBER | N | Valor mínimo da alçada acumulada do exercício. |
| 7 | VL_ALCADA_ACUMULADA_MAX | NUMBER | N |  |
| 8 | SN_PERMITE_GERAR_SENHA | VARCHAR2 | N | Permitir gerar senha de transferência de alçada. |
| 9 | QT_SENHA_GERADA | NUMBER | N | Quantidade de senhas geradas para terceiros. |
| 10 | DT_VIGENCIA_INI | DATE | N | Data de início da vigência. |
| 11 | DT_VIGENCIA_FIM | DATE | Y | Data de fim da vigência. |
| 12 | CD_SETOR | NUMBER | Y | Código do centro de custos. |
| 13 | CD_ITEM_RES | NUMBER | Y | Código da conta de resultado. |
| 14 | DH_REGISTRO | DATE | N | Data e Hora do registro. |
| 15 | CD_USUARIO_REGISTRO | VARCHAR2 | N | Usuário do registro da versão. |
| 16 | CD_HASH | VARCHAR2 | N | Hash do registro. |

---

## DBAMV.ALCA_APROVADOR
> Aprovadores

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_APROVADOR | NUMBER | N | Código do aprovador |
| 2 | CD_USUARIO | VARCHAR2 | N | Código do usuário |
| 3 | NM_APROVADOR | VARCHAR2 | N | Nome do aprovador |
| 4 | CD_MOBILE | VARCHAR2 | Y | Código mobile |
| 5 | CD_EMAIL | VARCHAR2 | Y | Código do email |
| 6 | SN_ENVIAR_EMAIL | VARCHAR2 | N | Enviar email (S/N)? |
| 7 | SN_ENVIAR_PUSH | VARCHAR2 | N | Enviar push (S/N)? |
| 8 | TP_STATUS | VARCHAR2 | N | Tipo de status |
| 9 | DH_INSERT | DATE | N | Data do insert |
| 10 | CD_USUARIO_INS | VARCHAR2 | N | Usuário do insert |
| 11 | DH_UPDATE | DATE | Y | Data do update |
| 12 | CD_USUARIO_UPD | VARCHAR2 | Y | Usuário do update |

---

## DBAMV.ALCA_APROVADOR_MOB
> Identificador do Mobile do Aprovador

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_APROVADOR | NUMBER | N | Código do Aprovador |
| 2 | CD_ID_MOBILE | VARCHAR2 | N | Identificador do Mobile |
| 3 | DH_HISTORICO | DATE | N | Data do Insert do registro |
| 4 | TP_STATUS | VARCHAR2 | N | Status do identificador mobile |
| 5 | DH_STATUS | DATE | Y | Data do Status do identificador mobile |
| 6 | CD_HASH | VARCHAR2 | Y | Código Hash |

---

## DBAMV.ALCA_APROVADOR_STAT
> Ponto de Work-Flow para Autorização

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_APROVADOR_STAT | NUMBER | N | Código do Status do Aprovador |
| 2 | CD_APROVADOR | NUMBER | N | Código do Aprovador |
| 3 | TP_STATUS | VARCHAR2 | N | Status do Ponto |
| 4 | DH_STATUS | DATE | N | Data do Insert do registro |
| 5 | CD_USUARIO | VARCHAR2 | N | Usuário do Insert do registro |

---

## DBAMV.ALCA_DEMANDA
> Demanda de aprovação

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DEMANDA | NUMBER | N | Código de demanda de aprovação |
| 2 | CD_PONTO | VARCHAR2 | N | Código do ponto |
| 3 | CD_USUARIO | VARCHAR2 | N | Código do usuário |
| 4 | CD_EMPRESA | NUMBER | N | Código da empresa |
| 5 | CD_SETOR | NUMBER | Y | Código do setor |
| 6 | CD_CONTA | NUMBER | Y | Código da conta orçamentária |
| 7 | DT_COMPETENCIA | DATE | Y | Data da competência da origem |
| 8 | CD_CONTRATO | NUMBER | Y |  |
| 9 | CD_PROJETO | NUMBER | Y |  |
| 10 | CD_FORNECEDOR | NUMBER | Y |  |
| 11 | VL_DEMANDA | NUMBER | Y | Valor da demanda |
| 12 | DH_VISUALIZADO | DATE | Y | Data e hora que a demanda foi visualisada pelo ambiente |
| 13 | DH_RUBRICA | DATE | Y | Data e hora que a demanda concluiu suas rubricas |
| 14 | DH_ENTREGUE | DATE | Y | Data e hora que a demanda foi entregue para sua origem |
| 15 | CD_ORIGEM | NUMBER | Y | Código do documento que originou a demanda |
| 16 | TX_ORIGEM_IDENTIFICA | VARCHAR2 | Y | Identificação geral do registro de origem |
| 17 | TX_ORIGEM_APROVAR | VARCHAR2 | Y | Procedure a ser executada retornando à origem |
| 18 | TX_ORIGEM_REPROVAR | VARCHAR2 | Y |  |
| 19 | TP_RUBRICA | VARCHAR2 | Y | Resultado das rubricas |
| 20 | TX_MOTIVO | VARCHAR2 | Y | Motivo da rubrica de reprovação |
| 21 | DH_DEMANDA | DATE | N | Data e hora da demanda |
| 22 | TP_STATUS | VARCHAR2 | N | Status da demanda |

---

## DBAMV.ALCA_DEMANDA_AGRP
> Configuração dos agrupadores usados no ponto

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DEMANDA | NUMBER | N | Código da demanda |
| 2 | CD_PONTO_AGRP | NUMBER | N | Código do agrupador do ponto |
| 3 | CD_REFERENCIA | VARCHAR2 | Y | Código referência |

---

## DBAMV.ALCA_LOG
> Ponto de Work-Flow para Autorização

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOG | NUMBER | N | Código do log |
| 2 | DH_LOG | DATE | N | Data do momento do log |
| 3 | CD_EMPRESA | NUMBER | N |  |
| 4 | CD_USUARIO | VARCHAR2 | N | Código do usuário do momento do log |
| 5 | CD_TOKEN | VARCHAR2 | N | Código do token |
| 6 | TX_JASON | VARCHAR2 | Y | Código do jason utilizado |
| 7 | CD_PONTO | VARCHAR2 | N | Código do ponto |
| 8 | CD_DEMANDA | NUMBER | Y | Código da demanda associada |
| 9 | CD_APROVADOR | NUMBER | Y | Código do aprovador associado |
| 10 | CD_APROVACAO | NUMBER | Y | Código da aprovação |
| 11 | CD_HASH | VARCHAR2 | N | Código hash |

---

## DBAMV.ALCA_PARAMETRO
> Parametro Alcada

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | TP_STATUS | VARCHAR2 | N | Tipo de status |
| 2 | DH_INSERT | DATE | N | Data do insert |
| 3 | CD_USUARIO_INS | VARCHAR2 | N | Usuário do insert |
| 4 | DH_UPDATE | DATE | Y | Data do update |
| 5 | CD_USUARIO_UPD | VARCHAR2 | Y | Usuário do update |

---

## DBAMV.ALCA_PERMISSAO
> Permissões de aprovadores

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PERMISSAO | NUMBER | N | Código da permissao |
| 2 | CD_APROVADOR | NUMBER | N | Código do aprovador |
| 3 | CD_EMPRESA | NUMBER | N | Código da empresa |
| 4 | CD_PONTO | VARCHAR2 | N | Código do ponto |
| 5 | VL_LIMITE_MIN | NUMBER | Y | Limite mínimo |
| 6 | VL_LIMITE_MAX | NUMBER | Y | Limite máximo |
| 7 | NR_NIVEL | NUMBER | N | Nível da aprovação |
| 8 | SN_OBRIGATORIO | VARCHAR2 | N | Obrigação no nível |
| 9 | DH_VIGENCIA_INI | DATE | N | Vigência início da permissão |
| 10 | DH_VIGENCIA_FIN | DATE | Y | Vigência final da permissão |
| 11 | NR_DIAS_SLA_RUBRICA | NUMBER | N | Número dias SLA de rubrica |
| 12 | DH_INSERT | DATE | N |  |
| 13 | CD_USUARIO_INS | VARCHAR2 | N |  |

---

## DBAMV.ALCA_PERMISSAO_AGRP
> Configuração dos agrupadores usados no ponto

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PERMISSAO | NUMBER | N | Código da permissão |
| 2 | CD_PONTO_AGRP | NUMBER | N | Código do agrupador do ponto |
| 3 | CD_REFERENCIA | VARCHAR2 | Y | Código referência |

---

## DBAMV.ALCA_PONTO
> Ponto de Work-Flow para Autorização

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PONTO | VARCHAR2 | N | Código do ponto |
| 2 | CD_SISTEMA | VARCHAR2 | Y | Código do sistema |
| 3 | TP_PONTO | VARCHAR2 | N | Tipo do ponto |
| 4 | DS_PONTO | VARCHAR2 | N | Descrição do ponto |
| 5 | TX_MOTIVOS | VARCHAR2 | Y | Os tipos de motivos da reprovação? |
| 6 | SN_USA_ORCAMENTO | VARCHAR2 | N | Permissões do ponto checa orçamento |
| 7 | SN_USA_LIMITE | VARCHAR2 | N | Permissões do ponto exige valores limites? |
| 8 | TP_LIMITE | VARCHAR2 | Y | Tipo do limite |
| 9 | QT_LIMITE_INT | NUMBER | Y | Quantidade de inteiros do limite |
| 10 | QT_LIMITE_DEC | NUMBER | Y | Quantidade de decimais do limite |
| 11 | TP_STATUS | VARCHAR2 | N | Status atual do ponto |
| 12 | DH_INSERT | DATE | N | Data do Insert do registro |
| 13 | CD_USUARIO_INS | VARCHAR2 | N | Usuário do Insert do registro |
| 14 | DH_UPDATE | DATE | Y | Data do último update no registro |
| 15 | CD_USUARIO_UPD | VARCHAR2 | Y | Usuário do último update no registro |
| 16 | SN_SLA_INTERNO | VARCHAR2 | N | Permite Aditivar o sla interno |
| 17 | CD_EMAIL_AUT | VARCHAR2 | Y | Define o email remetente automatico do modulo |

---

## DBAMV.ALCA_PONTO_AGRP
> Configuração dos agrupadores usados no ponto

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PONTO_AGRP | NUMBER | N |  |
| 2 | CD_PONTO | VARCHAR2 | N | Código do ponto |
| 3 | CD_AGRUPADOR | VARCHAR2 | N | Código do agrupador |
| 4 | DS_AGRUPADOR | VARCHAR2 | N | Descrição do agrupador |
| 5 | TX_QUERY_REFERENCIA | VARCHAR2 | Y | Validador do conteúdo digitado para o agrupador |
| 6 | TP_DADO | VARCHAR2 | N | Tipo de dado |
| 7 | SN_NULO | VARCHAR2 | N | Permite nulo no campo |
| 8 | NR_ORDEM | NUMBER | N | Ordem de digitação do agrupador |

---

## DBAMV.ALCA_PONTO_RESP
> Respostas fixas do ponto

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PONTO | VARCHAR2 | N | Código do ponto |
| 2 | CD_RESPOSTA | VARCHAR2 | N | Código da resposta |
| 3 | DS_RESPOSTA | VARCHAR2 | N | Resposta serve para Reprovação |
| 4 | SN_APROVACAO | VARCHAR2 | N |  |
| 5 | SN_REPROVACAO | VARCHAR2 | N |  |

---

## DBAMV.ALCA_PONTO_STAT
> Ponto de Work-Flow para Autorização

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PONTO_STAT | NUMBER | N |  |
| 2 | CD_PONTO | VARCHAR2 | N | Código do Ponto |
| 3 | TP_STATUS | VARCHAR2 | N | Status do Ponto |
| 4 | DH_STATUS | DATE | N | Data do Insert do registro |
| 5 | CD_USUARIO | VARCHAR2 | N | Usuário do Insert do registro |

---

## DBAMV.ALCA_RUBRICA
> Rubricas para Aprovação

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_RUBRICA | NUMBER | N | Código d |
| 2 | CD_DEMANDA | NUMBER | N | Código da demanda |
| 3 | CD_PERMISSAO | NUMBER | N | Código do usuário aprovador |
| 4 | NR_NIVEL | NUMBER | N | Número do nível da aprovação |
| 5 | SN_OBRIGATORIO | VARCHAR2 | N | Aprovador é obrigatória |
| 6 | TP_STATUS | VARCHAR2 | N | Status da aprovação |
| 7 | DH_INSERT | DATE | N |  |
| 8 | DH_VISUALIZADO | DATE | Y | Data do momento da visualização |
| 9 | DH_RUBRICA | DATE | Y | Data do momento da rubrica |
| 10 | DH_ENTREGUE | DATE | Y |  |
| 11 | TP_RUBRICA | VARCHAR2 | Y | Tipo da rubrica |
| 12 | TX_MOTIVO | VARCHAR2 | Y | Texto do motivo da reprovação |
| 13 | CD_RESPOSTA | VARCHAR2 | Y | Resposta Fixa da Rubrica |
| 14 | TX_RESPOSTA | VARCHAR2 | Y | Texto da resposta da Rubrica |
| 15 | NR_DIAS_SLA_RUBRICA | NUMBER | N | Número dias SLA de rubrica |

---

## DBAMV.ALIQUOTA_ICMS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_UF | VARCHAR2 | N |  |
| 2 | CD_CONSTITUICAO_EMPRESA | NUMBER | N |  |
| 3 | CD_CFOP | NUMBER | N |  |
| 4 | VL_PERC_ALIQUOTA | NUMBER | Y |  |
| 5 | DT_VIGENCIA | DATE | Y |  |
| 6 | CD_DETALHAMENTO | NUMBER | N |  |

---

## DBAMV.ANO_FECH_CONT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 2 | DT_ANO | DATE | N |  |
| 3 | TP_SITUACAO | VARCHAR2 | N |  |
| 4 | DT_IMPORTACAO | DATE | Y | Indica a data da importac?o das configurac?es de grau, contas contabies e centro de custos |
| 5 | CD_USUARIO | VARCHAR2 | Y | Indica qual usuario realizou a importac?o |
| 6 | DT_EXERCICIO_BASE | DATE | Y | Indica o exercicio base importado |
| 7 | TP_ORIG_GRAU | VARCHAR2 | Y | Indica se o grau das contas se originou de uma configurac?o gerencial |
| 8 | TP_ORIG_PL_CONTA | VARCHAR2 | Y | Indica se o plano de contas se originou de uma configurac?o gerencial |
| 9 | TP_ORIG_PL_CUSTO | VARCHAR2 | Y | Indica se o plano de centro de custos se originou de uma configurac?o gerencial |

---

## DBAMV.ANO_FECH_FINANC
> Tabela de Fechamento do Financeiro

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da Empresa da Abertura do Exercicio do Financeiro |
| 2 | DT_ANO | DATE | N | Ano da Abertura do Financeiro |
| 3 | TP_SITUACAO | VARCHAR2 | N | Tipo de Situac?o do Exercicio Financeiro |
| 4 | CD_USUARIO | VARCHAR2 | Y | Codigo do Usuario que realizou a Abertura do Exercicio do Financeiro |
| 5 | DT_EXERCICIO_BASE | DATE | Y | Indica o exercicio base importado |

---

## DBAMV.APOLICE
> Tabela de apólices

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | APOLICE_PDF | BLOB | Y | Arquivo gravado digitalmente no banco |
| 2 | CD_APOLICE | NUMBER | N | Codigo da apolice (sequencial) |
| 3 | CD_CON_PLA | NUMBER | N | Codigo do plano definido na apolice |
| 4 | CD_CONVENIO | NUMBER | N | Codigo do convenio definido da apolice |
| 5 | CD_EMPRESA_CONTRATANTE | NUMBER | Y | Código da Empresa Contratante |
| 6 | CD_PACIENTE | NUMBER | N | Codigo do paciente |
| 7 | CD_TP_IDENTIFICADOR_PESSOA | NUMBER | Y | Tipo do documento (cédula) do paciente |
| 8 | DS_APOLICE_PDF | VARCHAR2 | Y | Nome do arquivo PDF |
| 9 | DS_OBS | VARCHAR2 | Y | Observação da apólice |
| 10 | DS_TIPO_LEITO | VARCHAR2 | Y | Tipo do leito que a apolice da permissão de utilizacão |
| 11 | DT_CRIACAO | DATE | N | Data que a apolice foi criada |
| 12 | DT_VALIDADE | DATE | Y | Data de validade da apólice |
| 13 | NM_TITULAR | VARCHAR2 | N | Nome do titular da apolice |
| 14 | NR_APOLICE | VARCHAR2 | N | Numeracão alfanumerica da Apolice |
| 15 | NR_APOLICE_PRINCIPAL | VARCHAR2 | Y | Numeração alfanumerica da Apolice principal, no caso de apólices complementares |
| 16 | NR_AUTORIZACAO | VARCHAR2 | N | Nr da Autorização espec?fica para o atendimento (Panamá) |
| 17 | NR_CEDULA | VARCHAR2 | N | Numero da cédula do paciente (documento do paciente) |
| 18 | NR_CERTIFICADO | VARCHAR2 | Y | Número do certificado da apólice |
| 19 | QT_DIAS_AUTORIZADOS | NUMBER | Y | Quantidade de dias em que será cobrado o copago diário. |
| 20 | SN_CPM | VARCHAR2 | N | Indica se a apálice é de Custo Paciente Mês |
| 21 | SN_SERVICO | VARCHAR2 | N | Indica se a apólice é de Serviço |
| 22 | TP_APOLICE | VARCHAR2 | N | Tipo da apólice -  A (apólice), S (SITEDS), C (carta de garantia). Default = A. |
| 23 | TP_AUTORIZACAO_APOLICE | VARCHAR2 | N | Tipo da autorização |
| 24 | TP_SITUACAO_APOLICE | VARCHAR2 | N | Situação da apálice |
| 25 | VL_COPAGO | NUMBER | Y | Valor do copago que deve ser pago pelo paciente antes do atendimento |
| 26 | VL_COPAGO_DIARIO | NUMBER | Y | Valor do copago diário que deve ser pago pelo paciente em atendimento. |
| 27 | VL_DEDUCIBLE | NUMBER | Y | Valor do deducible que deve ser pago pelo paciente |
| 28 | VL_LIMITE | NUMBER | Y | Valor limite de gastos autorizado pela apólice |
| 29 | VL_PERCENT_COASEG_CONV | NUMBER | Y | Valor percentual do coaseguro da parte do convenio |
| 30 | VL_PERCENT_COASEG_PAC | NUMBER | Y | Valor percentual do coaseguro da parte do paciente |

---

## DBAMV.APOLICE_ATENDIMENTO
> Tabela vínculo entre atendimento e apólice

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_APOLICE_ATENDIMENTO | NUMBER | N | Cdigo sequencial do registro |
| 2 | CD_APOLICE | NUMBER | N | Numeraco alfanumerica da Apolice |
| 3 | CD_ATENDIMENTO | NUMBER | N | Atendimento vinculado  aplice |
| 4 | CD_REG_FAT | NUMBER | Y | Conta hospitalar vinculada  aplice |
| 5 | CD_REG_AMB | NUMBER | Y | Conta ambulatorial vinculada  aplice |

---

## DBAMV.BANCO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_BANCO | NUMBER | N |  |
| 2 | NM_BANCO | VARCHAR2 | N |  |
| 3 | DS_DESENHO_DO_CHEQUE | LONG | Y |  |
| 4 | COL_ANO | NUMBER | Y |  |
| 5 | COL_CIDADE | NUMBER | Y |  |
| 6 | COL_DATA | NUMBER | Y |  |
| 7 | COL_EXT | NUMBER | Y |  |
| 8 | COL_MES | NUMBER | Y |  |
| 9 | COL_NOME | NUMBER | Y |  |
| 10 | COL_VAL | NUMBER | Y |  |
| 11 | LIN_CIDADE | NUMBER | Y |  |
| 12 | LIN_EXT | NUMBER | Y |  |
| 13 | LIN_NOME | NUMBER | Y |  |
| 14 | LIN_VAL | NUMBER | Y |  |
| 15 | PIC_ANO | NUMBER | Y |  |
| 16 | PULA_LINHA | NUMBER | Y |  |
| 17 | LIN_EXT_2 | NUMBER | Y |  |
| 18 | COL_EXT_2 | NUMBER | Y |  |
| 19 | CD_BANCO_IMP_CHEQUE | NUMBER | Y |  |
| 20 | DS_DIRETORIO_REMESSA | VARCHAR2 | Y |  |
| 21 | DS_DIRETORIO_RETORNO | VARCHAR2 | Y |  |
| 22 | CD_COMUNICACAO | NUMBER | Y |  |
| 23 | CD_BANCO_INTEGRA | VARCHAR2 | Y | Codigo do Banco (de-para) |
| 24 | CD_SEQ_INTEGRA | NUMBER | Y | Codigo sequencial da integrac?o |
| 25 | DT_INTEGRA | DATE | Y | Data em que o registro foi integrado |
| 26 | TP_FORMULARIO_CHEQUE | VARCHAR2 | Y | identificador do layout do cheque |
| 27 | COL_DT_EMISSAO | NUMBER | Y | posicionamento da coluna data de emissão |
| 28 | LIN_DS_VERSO_CHEQUE | NUMBER | Y | posicionamento de linha para descrição do verso do cheque |
| 29 | COL_DS_VERSO_CHEQUE | NUMBER | Y | posicionamento da coluna descrição do verso do cheque |
| 30 | COL_VL_VERSO_CHEQUE | NUMBER | Y | posicionamento da coluna valor do cheque |
| 31 | COL_CD_REDUZIDO_CONTB_DEBITO | NUMBER | Y | posicionamento da coluna cd reduzido da conta contabil |
| 32 | LIN_DS_CONTA_CONTB_DEBITO | NUMBER | Y | posicionamento da linha da descrição da conta contabil |
| 33 | COL_DS_CONTA_CONTB_DEBITO | NUMBER | Y | posicionamento da coluna da descrição da conta contabil |
| 34 | COL_CD_SETOR_CONTB_DEBITO | NUMBER | Y | posicionamento da coluna setor |
| 35 | COL_VL_MOV_CONTB_DEBITO | NUMBER | Y | posicionamento da coluna valor movimentação debito |
| 36 | COL_VL_MOV_CONTB_CREDITO | NUMBER | Y | posicionamento da coluna valor movimentação credito |
| 37 | LIN_DATA | NUMBER | Y | Número da linha no relarório de cheque onde será impressa a informação referente a Data. |
| 38 | TP_FORMATO_DATA | NUMBER | N | Formato de data a ser impresso no cheque. 1- DD MMM YYYY, 2- DD MM YYYY |
| 39 | NR_COL_DT_PREDATADO | NUMBER | Y | Numero da coluna para impressao do cheque pré-datado |
| 40 | NR_LIN_DT_PREDATADO | NUMBER | Y | Numero da linha para impressao do cheque pré-datado |
| 41 | CD_ISPB | NUMBER | Y | Criação do campo para o cadastro do Identificador do Sistema de Pagamentos Brasileiros |

---

## DBAMV.BASE_ORCA
> Base de orçamento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_BASE_ORCA | NUMBER | N | Código do base |
| 2 | DS_BASE_ORCA | VARCHAR2 | N | Descrição da etapa do projeto. |
| 3 | TX_BASE_ORCA | VARCHAR2 | Y | Texto da base orçamentária |
| 4 | CD_PROJETO | NUMBER | Y | FK - Código do projeto |
| 5 | CD_PLANO | VARCHAR2 | N | Código do plano orçamentário |
| 6 | DT_VIGENCIA_INI | DATE | Y | Vigência inicial do orçamento. |
| 7 | DT_VIGENCIA_FIM | DATE | Y | Vigência final do orçamento. |
| 8 | DT_ABERTURA | DATE | N | Data de abertura do orçamento |
| 9 | DT_FECHAMENTO | DATE | Y | Data de fechamento do orçamento |
| 10 | DT_APROVACAO | DATE | Y | Data de aprovação do orçamento |
| 11 | DT_PUBLICADO | DATE | Y | Data de publicação do orçamento |
| 12 | CD_USUARIO_ABER | VARCHAR2 | N | Usuário de abertura do orçamento |
| 13 | CD_USUARIO_FECH | VARCHAR2 | Y | Usuário de fechamento do orçamento |
| 14 | CD_USUARIO_APRV | VARCHAR2 | Y | Usuário de aprovação do orçamento |
| 15 | CD_USUARIO_PUBL | VARCHAR2 | Y | Usuário de publicação do orçamento |
| 16 | TP_SITUACAO | VARCHAR2 | Y | Situação do orçamento (A=Ativo, C=Cancelado) |
| 17 | SN_OFICIAL | VARCHAR2 | N | Indicador de orçamento oficial. |
| 18 | CD_MODELO_CONTABIL | VARCHAR2 | Y | Código do modelo contábil. |
| 19 | DT_PROJECAO | DATE | Y | Data de inicio da projeção do realizado a partir do orçado do ano passado. |

---

## DBAMV.BASE_ORCA_CRONOGRAMA
> Base de orçamento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_BASE_ORCA_CRONOGRAMA | NUMBER | N | Código do cronograma da base orçamentária |
| 2 | CD_BASE_ORCA | NUMBER | N | Código da base |
| 3 | TP_ETAPA | VARCHAR2 | N | Tipo da etapa |
| 4 | DT_PREVISTA_INI | DATE | N | Data prevista para início da etapa |
| 5 | DT_PREVISTA_FIM | DATE | N | Data prevista para final da etapa |
| 6 | DT_REALIZADA_INI | DATE | Y | Data real do início da etapa |
| 7 | DT_REALIZADA_FIM | DATE | Y | Data real do final da etapa |
| 8 | TP_STATUS | VARCHAR2 | N | Status da fase |

---

## DBAMV.BASE_ORCA_EMP
> Empresas por orçamento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_BASE_ORCA | NUMBER | N | Código da base orçamentária. |
| 2 | CD_MULTI_EMPRESA | NUMBER | N | Código da empresa do orçamento. |

---

## DBAMV.BASE_ORCA_ITEM
> Base de orçamento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_BASE_ORCA_ITEM | NUMBER | N | Código do item da base orçamentária |
| 2 | CD_BASE_ORCA | NUMBER | N | Código do base orçamentária |
| 3 | CD_MULTI_EMPRESA | NUMBER | N | Código da empresa |
| 4 | CD_ORCA_CONTA | NUMBER | N | Código da conta de orçamento |
| 5 | CD_SETOR | NUMBER | N | Código do setor orçado |
| 6 | DT_ANO_MES | DATE | Y | Mês e ano orçado |
| 7 | VL_ORCADO | NUMBER | N | Valor orçado |
| 8 | CD_FORNECEDOR | NUMBER | Y | Código do fornecedor. |
| 9 | CD_CONTRATO | NUMBER | Y | Código do Contrato. |
| 10 | CD_PROJETO | NUMBER | Y | Código do projeto. |
| 11 | SN_INVESTIMENTO | VARCHAR2 | N | Indicador de item de investimento. S-Sim, N-Não |
| 12 | VL_ORCADO_RATEIO | NUMBER | Y | Valor orçado rateio. |

---

## DBAMV.BASE_ORCA_ITEM_ESTATISTICO
> Tabela de inclusão do item estatistico na base orçamentaria.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_BASE_ORCA_ITEM_ESTATISTICO | NUMBER | N | Sequencial do item. |
| 2 | CD_BASE_ORCA | NUMBER | N | Codigo da base orçamentaria. |
| 3 | CD_INDICADOR_ORCAMENTARIO | NUMBER | N | Codigo do indicador. |
| 4 | CD_SETOR | NUMBER | N | Codigo do setor. |
| 5 | DT_ANO_MES | DATE | Y | Mês e ano do valor orçado. |
| 6 | VL_ORCADO | NUMBER | N | Valor orçado. |
| 7 | VL_REALIZADO | NUMBER | N | Valor realizado. |

---

## DBAMV.BASE_ORCA_ITEM_IND_REALI
> Tabela de inclusão do item estatistico na base orçamentaria.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_BASE_ORCA_ITEM_IND_REALI | NUMBER | N | Sequencial do item. |
| 2 | CD_INDICADOR_ORCAMENTARIO | NUMBER | N | Codigo do indicador. |
| 3 | CD_SETOR | NUMBER | N | Codigo do setor. |
| 4 | DT_ANO_MES | DATE | Y | Mês e ano do valor orçado. |
| 5 | VL_REALIZADO | NUMBER | N | Valor realizado. |

---

## DBAMV.BASE_ORCA_MOVIMENTO
> Movimentos de orçamento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_BASE_ORCA_MOVIMENTO | NUMBER | N | Código do movimento |
| 2 | CD_BASE_ORCA_ITEM | NUMBER | N | Código do item da base |
| 3 | CD_MOTIVO | NUMBER | Y | Código do movimento |
| 4 | DT_COMPETENCIA | DATE | N | Data de competência do movimento. |
| 5 | TP_MOVIMENTO | VARCHAR2 | N | Tipo do movimento  (T - Transferência, A - Aporte, N - Nota explicativa) |
| 6 | TP_OPERACAO | VARCHAR2 | N | Tipo da operação  (E - Entrada, S - Saída, N - Neutro) |
| 7 | CD_ORCA_MOVIMENTA_TRANSF | NUMBER | Y | Código do movimento que gerou a entrada por transferência |
| 8 | VL_MOVIMENTO | NUMBER | Y | Valor do movimento |
| 9 | TX_MOVIMENTO | VARCHAR2 | Y | Texto do movimento |
| 10 | CD_USUARIO | VARCHAR2 | N | Código do usuário |
| 11 | DT_MOVIMENTO | DATE | N | Data do movimento |
| 12 | VL_MOVIMENTO_RATEIO | NUMBER | Y | Valor rateio. |

---

## DBAMV.BASE_ORCA_ORCA
> Orçamentos por orçamento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_BASE_ORCA_PAI | NUMBER | N | Código do orçamento Pai. |
| 2 | CD_BASE_ORCA | NUMBER | N | Código dos orçamentos que pertencem ao orçamento Pai. |

---

## DBAMV.BASE_ORCA_PARECER
> Parecer de orçamento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_BASE_ORCA_PARECER | NUMBER | N | Código do parecer de orçamento |
| 2 | CD_BASE_ORCA | NUMBER | N | Código da base |
| 3 | CD_BASE_ORCA_ITEM | NUMBER | Y | Código do item da base |
| 4 | TX_PARECER | VARCHAR2 | N | Texto do parecer |
| 5 | CD_USUARIO | VARCHAR2 | N | Usuário do parecer |
| 6 | DT_PARECER | DATE | N | Data do parecer |

---

## DBAMV.BASE_ORCA_REALIZADO
> Base de orçamento itens do realizado

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_BASE_ORCA_REALIZADO | NUMBER | N | Sequencial do realizado. |
| 2 | CD_MULTI_EMPRESA | NUMBER | N | Código da empresa |
| 3 | CD_PROJETO | NUMBER | Y | Código do projeto |
| 4 | CD_ORCA_CONTA | NUMBER | N | Código da conta de orçamento |
| 5 | CD_SETOR | NUMBER | N | Código do setor / centro de custo |
| 6 | DT_COMPETENCIA | DATE | N | Data de competência do valor realizado. |
| 7 | VL_REALIZADO | NUMBER | N | Valor realizado. |
| 8 | CD_FORNECEDOR | NUMBER | Y | Código do fornecedor. |
| 9 | CD_CONTRATO | NUMBER | Y | Código do Contrato. |
| 10 | VL_COMPROMETIDO | NUMBER | N | Valor comprometido. |
| 11 | VL_REALIZADO_RATEIO | NUMBER | Y | Valor realizado rateio. |

---

## DBAMV.BLOQUEIO_ALCADA_FINAN
> Tabela de bloqueio da alçada no financeiro

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_BLOQUEIO_ALCADA_FINAN | NUMBER | N | Código sequencial do registro de bloqueio |
| 2 | CD_ITCON_PAG | NUMBER | Y | Código da parcela da conta a pagar |
| 3 | DT_BLOQUEIO | DATE | Y | Data do bloqueio |
| 4 | CD_USUARIO_BLOQUEIO | VARCHAR2 | Y | Usuário que realizou o bloqueio |
| 5 | DS_OBSERVACAO | VARCHAR2 | Y | Observação |

---

## DBAMV.BORDERO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_BORDERO | NUMBER | N |  |
| 2 | DS_BORDERO | VARCHAR2 | N |  |
| 3 | NR_IDENTIFICACAO | VARCHAR2 | Y |  |
| 4 | CD_MULTI_EMPRESA | NUMBER | Y |  |
| 5 | DT_CANCELAMENTO | DATE | Y |  |
| 6 | SN_CANCELADO | VARCHAR2 | Y |  |
| 7 | CD_MOTIVO_CANC | NUMBER | Y |  |
| 8 | CD_ARQUIVO_RETORNO_PGTO | NUMBER | Y | Codigo do Arquivo de Retorno do Banco p/ FIEA |

---

## DBAMV.CAIXA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CAIXA | NUMBER | N |  |
| 2 | DS_CAIXA | VARCHAR2 | N |  |
| 3 | VL_SALDO | NUMBER | N |  |
| 4 | VL_INICIO_SALDO | NUMBER | Y |  |
| 5 | VL_SALDO_PRE_DATADOS | NUMBER | Y |  |
| 6 | VL_SALDO_CARTAO | NUMBER | Y |  |
| 7 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 8 | SN_CENTRAL | VARCHAR2 | N |  |
| 9 | SN_RECEBIMENTO | VARCHAR2 | N |  |
| 10 | SN_PAGAMENTO | VARCHAR2 | N |  |
| 11 | SN_DEPOSITO | VARCHAR2 | N |  |
| 12 | SN_TRANSFERENCIA | VARCHAR2 | N |  |
| 13 | SN_RECEITA_DIRETA | VARCHAR2 | N |  |
| 14 | SN_DESPESA_DIRETA | VARCHAR2 | N |  |
| 15 | CD_REDUZIDO | NUMBER | Y |  |
| 16 | CD_REDUZIDO_PRE_DATADO | NUMBER | Y |  |
| 17 | CD_REDUZIDO_CUSTODIADO | NUMBER | Y |  |
| 18 | CD_REDUZIDO_DEVOLVIDO | NUMBER | Y |  |
| 19 | SN_MULTI_USUARIO | VARCHAR2 | N |  |
| 20 | SN_CAUCAO | VARCHAR2 | N |  |
| 21 | SN_CONTROLA_DT_LOTE | VARCHAR2 | N | Identifica se no caixa v?o ser permitidos lancamentos nos lotes com data diferente da data de abe... |
| 22 | CD_CAIXA_INTEGRA | VARCHAR2 | Y | Codigo do Caixa (de-para) |
| 23 | CD_SEQ_INTEGRA | NUMBER | Y | Codigo sequencial da integrac?o |
| 24 | DT_INTEGRA | DATE | Y | Data em que o registro foi integrado |
| 25 | SN_CONTROLA_REABERTURA | VARCHAR2 | Y | Indica se a controle de reabertura de lote. |
| 26 | CD_MOEDA | VARCHAR2 | Y | Codigo da moeda que sera associada ao caixa |
| 27 | SN_FLUXO_CAIXA | VARCHAR2 | N | Indica se caixa deve fechar com saldo zerado obrigatoriamente ou não |
| 28 | SN_LOTE_ZERADO | VARCHAR2 | N |  |

---

## DBAMV.CAIXA_CIRURGICA_SUB_GRUPOS
> Tabela para armazenar caixas cirurgicas dos subgrupos da cirurgia.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CIRURGIA_EMPRESA_SUB_GRUPOS | NUMBER | N |  |
| 2 | CD_PRODUTO | NUMBER | N |  |
| 3 | QT_CAIXA_CIRURGICA | NUMBER | N |  |

---

## DBAMV.CAIXA_EMP_TRANSACAO
> Tabela tem finalidade de armazenar as configurac?es contabeis que ser?o utilizadas nas transac?es entre empresas no caixa

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CAIXA | NUMBER | N | Codigo do caixa equivalente a configurac?o |
| 2 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da Empresa equivalente ao parametro |
| 3 | TP_TRANSACAO | VARCHAR2 | N | Detalha o tipo de transac?o equivalente a parametrizac?o |
| 4 | CD_REDUZIDO | NUMBER | N | Codigo da conta contabil equivalente a parametrizac?o da empresa / tipo de transac?o. |

---

## DBAMV.CAIXA_RESERVA_SAL_CIR
> Tabela que armazena as possiveis caixas cirurgicas pertencentes a uma reserva de sala de cirurgia.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRODUTO | NUMBER | N | Codigo da caixa cirurgica pertencente a reserva de sala de cirurgia |
| 2 | CD_RESERVA_SAL_CIR | NUMBER | N | Codigo da reserva de sala de cirurgia |
| 3 | QT_RESERVA | NUMBER | N | Quantidade da Caixa Cirurgica a ser reservada. |

---

## DBAMV.CAUCAO
> AJUSTE NA TABELA CAUCAO TP PAGAMENTO PIX

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CAUCAO | NUMBER | N |  |
| 2 | TP_CAUCAO | VARCHAR2 | N |  |
| 3 | DT_CAUCAO | DATE | N |  |
| 4 | VL_CAUCAO | NUMBER | N |  |
| 5 | CD_BANCO | NUMBER | Y |  |
| 6 | NR_CHEQUE | VARCHAR2 | Y |  |
| 7 | NM_PROPRIETARIO | VARCHAR2 | Y |  |
| 8 | CPF_PROPRIETARIO | VARCHAR2 | Y |  |
| 9 | CD_ATENDIMENTO | NUMBER | N |  |
| 10 | NM_USUARIO | VARCHAR2 | Y |  |
| 11 | TP_RETIRADO | VARCHAR2 | Y |  |
| 12 | DT_RETIRADO | DATE | Y |  |
| 13 | NM_USUARIO_RETIRADO | VARCHAR2 | Y |  |
| 14 | CD_CAIXA | NUMBER | Y |  |
| 15 | CD_MULTI_EMPRESA | NUMBER | Y |  |
| 16 | CD_FIN_CAR | NUMBER | Y |  |
| 17 | TP_PAGAMENTO | VARCHAR2 | Y | Adicionando a coluna tipo de pagamento X para pix |
| 18 | CD_MOT_CAUCAO | NUMBER | Y |  |
| 19 | DS_OBSERVACAO_CAUCAO | VARCHAR2 | Y |  |
| 20 | RG_PROPRIETARIO | VARCHAR2 | Y |  |
| 21 | CD_MOTIVO_LCTO | NUMBER | Y | Motivo da Liberac?o de CPF |
| 22 | CD_IDENTIFICADOR_PESSOA | VARCHAR2 | Y | Campo para registrar o CPF/CNPJ internacional |
| 23 | CD_RESPONSAVEL | NUMBER | Y | Codigo do responsavel |
| 24 | CD_AGENCIA | VARCHAR2 | Y | Codigo da Agencia |
| 25 | VL_MOEDA | NUMBER | Y | Valor da moeda usada no processo |
| 26 | CD_MOEDA | VARCHAR2 | Y | Codigo da moeda usada no processo |
| 27 | VL_CAMBIO | NUMBER | Y | Valor do cambio usado |
| 28 | SN_CAMBIO_SUGERIDO | VARCHAR2 | Y | Se o cambio foi automatico |
| 29 | DS_OBSERVACAO_INS | VARCHAR2 | Y | Observac?o de origem de inserc?o de movimentacao |
| 30 | CD_USUARIO_INS | VARCHAR2 | Y | Usuario de origem de inserc?o de movimentacao |
| 31 | DH_MOVIMENTO_INS | DATE | Y | Data de origem de inserc?o de movimentacao |
| 32 | DS_OBSERVACAO_UPD | VARCHAR2 | Y | Observac?o de origem de alterac?o de movimentacao |
| 33 | CD_USUARIO_UPD | VARCHAR2 | Y | Usuario de origem de alterac?o de movimentacao |
| 34 | DH_MOVIMENTO_UPD | DATE | Y | Data de origem de alterac?o de movimentacao |
| 35 | DS_AGENCIA | VARCHAR2 | Y | Descrição da agência |
| 36 | CD_CONTA | VARCHAR2 | Y | Número da conta corrente |
| 37 | CD_DIGITO_AGENCIA | VARCHAR2 | Y | Dígito da agência |
| 38 | CD_DIGITO_CONTA_CORRENTE | VARCHAR2 | Y | Dígito da conta corrente |
| 39 | DT_EMISSAO | DATE | Y | Data de emissão |
| 40 | DT_PREVISAO_DEPOSITO | DATE | Y | Data previsão de depósito |
| 41 | DT_PREVISAO_DESCONTO | DATE | Y | Data previsão de desconto |
| 42 | NR_SSU | NUMBER | Y | Número SSU |
| 43 | NR_PARCELAS | NUMBER | Y | Número de parcelas |
| 44 | VL_PARCELA | NUMBER | Y | Valor das parcelas |
| 45 | CD_ID_TRANSACAO | VARCHAR2 | Y | Id da Transação |
| 46 | CD_VENDA | VARCHAR2 | Y | Código da venda |
| 47 | CD_ADQUIRENTE | VARCHAR2 | Y | Código da adquirente |
| 48 | CD_DOCUMENTO | VARCHAR2 | Y | Número do documento |
| 49 | VL_CHEQUE | NUMBER | Y | Valor do cheque |
| 50 | SN_PARCELADO | VARCHAR2 | N | Cheque para campo parcelado |
| 51 | DS_OBSERVACAO_CHEQUE | VARCHAR2 | Y | DESCRIÇÃO LIVRE DO CHEQUE |
| 52 | CD_CON_COR | NUMBER | Y | CODIGO DE CONTA CORRENTE |
| 53 | TP_DEBITO_CREDITO | VARCHAR2 | Y | Determina credito ou debito |
| 54 | CD_TEF_MOVIMENTO | NUMBER | Y | CODIGO DO TEF MOVIMENTO |
| 55 | VL_SALDO | NUMBER | Y | Valor do Saldo Antecipado |

---

## DBAMV.CCOR_FINANCEIRA
> Tabela de Conta Corrente Financeira

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CCOR_FINANCEIRA | NUMBER | N | Código da conta corrente |
| 2 | CD_EMPRESA | NUMBER | N | Empresa |
| 3 | CD_SETOR | NUMBER | N |  |
| 4 | CD_PROCESSO | NUMBER | Y | Processo |
| 5 | CD_PESSOA | NUMBER | Y | Pessoa financeira(Cliente/Fornecedor) |
| 6 | CD_RESPONSAVEL | NUMBER | Y | Responsável pelo paciente |
| 7 | CD_PACIENTE | NUMBER | Y | Paciente do atendimento |
| 8 | CD_USUARIO_ABER | VARCHAR2 | N | Usuário que abriu a conta |
| 9 | CD_USUARIO_APRV | VARCHAR2 | Y | Usuário que aprovou a conta |
| 10 | CD_USUARIO_FECH | VARCHAR2 | Y | Usuário que fechou a conta |
| 11 | TP_CCOR_FINANCEIRA | VARCHAR2 | N | Tipo da conta corrente |
| 12 | TX_CCOR_FINANCEIRA | VARCHAR2 | N | Texto sobre a conta |
| 13 | SN_TERMO_ABERTURA | VARCHAR2 | N |  |
| 14 | DH_ABERTURA | DATE | N | Data da abertura da conta |
| 15 | DH_APROVACAO | DATE | Y | Data da aprovacao da conta |
| 16 | DH_FECHAMENTO | DATE | Y | Data do fechamento da conta |
| 17 | TP_STATUS | VARCHAR2 | N | Status da conta: Aberta/Aprovada/Reprovada/Fechada |
| 18 | DT_STATUS | DATE | Y | Data do status |

---

## DBAMV.CCOR_FINANCEIRA_ARQU
> Tabela de anexos de conta adiantamento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CCOR_FINANCEIRA_ARQU | NUMBER | N | Código do anexo |
| 2 | CD_CCOR_FINANCEIRA | NUMBER | Y | Código da conta |
| 3 | CD_CCOR_FINANCEIRA_LCTO | NUMBER | Y | Código do lancamento |
| 4 | TP_ARQUIVO | VARCHAR2 | N |  |
| 5 | TX_ANEXO | VARCHAR2 | Y | Texto do anexo |
| 6 | FG_ANEXO | CLOB | Y |  |
| 7 | CD_USUARIO | VARCHAR2 | N | Usuário do anexo |
| 8 | DH_REGISTRO | DATE | N | Data do anexo |

---

## DBAMV.CCOR_FINANCEIRA_ATEN
> Tabela de atendimentos do lançamento da conta corrente

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CCOR_FINANCEIRA_ATEN | NUMBER | N |  |
| 2 | CD_CCOR_FINANCEIRA_LCTO | NUMBER | N | Lançamento da Conta Corrente Financeira |
| 3 | CD_MULTI_EMPRESA | NUMBER | N | Empresa |
| 4 | CD_PACIENTE | NUMBER | N | Paciente |
| 5 | CD_ATENDIMENTO | NUMBER | N | Atendimento |
| 6 | VL_ATENDIMENTO | NUMBER | N | Valor do atendimento |
| 7 | CD_USUARIO | VARCHAR2 | N | Usuário do registro |
| 8 | DH_REGISTRO | DATE | N | Data do registro |

---

## DBAMV.CCOR_FINANCEIRA_CFIG
> Tabela de configurações de conta adiantamento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EMPRESA | NUMBER | N | Empresa |
| 2 | CD_MOEDA | VARCHAR2 | Y | Moeda |
| 3 | CD_PROCESSO_CPAG | NUMBER | Y | Processo do contas a pagar |
| 4 | CD_PROCESSO_CREC | NUMBER | Y | Processo do contas a receber |
| 5 | CD_REDUZIDO_CPAG | NUMBER | Y | Conta contábil do contas a pagar |
| 6 | CD_REDUZIDO_CREC | NUMBER | Y | Conta contábil do contas a receber |
| 7 | CD_REDUZIDO_CPAG_TRANS | NUMBER | Y | Conta contábil transitória do contas a pagar |
| 8 | CD_REDUZIDO_CREC_TRANS | NUMBER | Y | Conta contábil transitória do contas a receber |
| 9 | CD_ITEM_RES_CREB | NUMBER | Y | Conta de receita do contas a receber |
| 10 | CD_ITEM_RES_CPAG | NUMBER | Y | Conta de despesa do contas a pagar |
| 11 | CD_TIP_DOC_CPAG | NUMBER | Y | Tipo do documento do contas a pagar |
| 12 | CD_TIP_DOC_CREC | NUMBER | Y | Tipo do documento do contas a receber |
| 13 | CD_CND_PGT_CPAG | NUMBER | Y | Condição de pagamento do contas a pagar |
| 14 | CD_CND_PGT_CREC | NUMBER | Y | Condição de pagamento do contas a receber |
| 15 | CD_CON_COR | NUMBER | Y | Conta corrente padrão |
| 16 | CD_CAIXA | NUMBER | Y | Caixa padrão |
| 17 | CD_DESCONTO | NUMBER | Y | Desconto padrão do contas a receber |
| 18 | CD_ACRESCIMO | NUMBER | Y | Acréscimo padrão do contas a receber |
| 19 | TP_CCOR_FINANCEIRA | VARCHAR2 | N | Tipo de conta de adiantamento |
| 20 | SN_OBRIGA_RECEBIMENTO | VARCHAR2 | N | Obriga recebimento do crédito |
| 21 | SN_ENTRE_EMPRESAS_CPAG | VARCHAR2 | N | Permite lançamento de débito entre empresa |
| 22 | SN_ENTRE_EMPRESAS_CREC | VARCHAR2 | N | Permite lançamento de crédito entre empresa |
| 23 | SN_APROVACAO_SEPARADA | VARCHAR2 | N | Obriga aprovação separadamente |
| 24 | SN_RECEBE_CARTAO | VARCHAR2 | N | Permite recebimento em cartão |
| 25 | SN_RECEBE_CHEQUE | VARCHAR2 | N | Permite recebimento em cheque |
| 26 | SN_RECEBE_CCORRENTE | VARCHAR2 | N | Permite recebimento em conta corrente |
| 27 | SN_RECEBE_DINHEIRO | VARCHAR2 | N | Permite recebimento em dinheiro |
| 28 | TX_TERMO_ABERTURA | VARCHAR2 | Y | Termo de abertura |
| 29 | TX_RECIBO | VARCHAR2 | Y | Termo de recibo |
| 30 | TX_TERMO_AUTORIZACAO | VARCHAR2 | Y | Termo de autorização de utilização de crédito |
| 31 | TX_TERMO_FECHAMENTO | VARCHAR2 | Y | Termo de fechamento |
| 32 | VL_DESCONTO_MAXIMO | NUMBER | N | Valor máximo de desconto no contas a pagar |
| 33 | VL_ACRESCIMO_MAXIMO | NUMBER | N | Valor máximo de acréscimo no contas a receber |
| 34 | SN_ENTRE_PACIENTES_CPAG | VARCHAR2 | Y | Permite lançamento de débito entre pacientes |
| 35 | SN_PERMITE_CONTA_EXCED | VARCHAR2 | Y | Permite mais de uma conta aberta/aprovada para um único paciente |
| 36 | SN_PADRAO | VARCHAR2 | Y | Identifica o tipo de conta padrão por empresa |
| 37 | CD_SETOR_PADRAO | NUMBER | Y | Código do setor padrão para empresa/tipo de conta. |

---

## DBAMV.CCOR_FINANCEIRA_ITEM
> Tabela de atendimentos do lançamento da conta corrente

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CCOR_FINANCEIRA_ITEM | NUMBER | N |  |
| 2 | CD_CCOR_FINANCEIRA_LCTO | NUMBER | N | Código do lançamento |
| 3 | CD_ATENDIMENTO | NUMBER | Y | Código do atendimento |
| 4 | CD_PACOTE | NUMBER | Y | Código do pacote |
| 5 | CD_FORMA_PAGTO_ADIANT | NUMBER | Y | Código da forma de pagamento de adiantamento |
| 6 | CD_DESC_ACRES | NUMBER | Y | Código do desconto/Acréscimo |
| 7 | CD_USUARIO | VARCHAR2 | N | Usuário do registro |
| 8 | VL_CREDITO | NUMBER | N | Valor do crédito |
| 9 | VL_DETALHE | NUMBER | Y | Valor do desconto/acréscimo |
| 10 | DH_REGISTRO | DATE | N | Data do registro |

---

## DBAMV.CCOR_FINANCEIRA_LCTO
> Tabela de Lote de Pagamento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CCOR_FINANCEIRA_LCTO | NUMBER | N | Lançamento da Conta Corrente Financeira |
| 2 | CD_CCOR_FINANCEIRA | NUMBER | N | Conta corrente |
| 3 | CD_CON_PAG | NUMBER | Y | Conta pagar |
| 4 | CD_CON_REC | NUMBER | Y | Conta receber |
| 5 | CD_FORNECEDOR | NUMBER | Y |  |
| 6 | CD_USUARIO | VARCHAR2 | N | Usuário do registro |
| 7 | CD_PROCESSO | NUMBER | Y | Processo |
| 8 | CD_EMPRESA | NUMBER | N | Empresa |
| 9 | CD_TIP_DOC | NUMBER | Y | Tipo de documento |
| 10 | CD_CONDICAO_PAGAMENTO | NUMBER | Y | Condição de pagamento |
| 11 | CD_MOEDA | VARCHAR2 | Y | Código da moeda |
| 12 | CD_RECCON_REC | NUMBER | Y | Código do recebimento |
| 13 | CD_PAGCON_PAG | NUMBER | Y | Código do pagamento |
| 14 | NR_DOCUMENTO | VARCHAR2 | Y | Número do documento |
| 15 | NR_SERIE | VARCHAR2 | Y | Número de série do documento |
| 16 | TP_CONTA | VARCHAR2 | Y | Tipo da conta receber/pagar |
| 17 | TP_LANCAMENTO | VARCHAR2 | N | Crédito/Débito |
| 18 | VL_LANCAMENTO | NUMBER | N | Valor |
| 19 | DT_LANCAMENTO | DATE | N | Data |
| 20 | TX_LANCAMENTO | VARCHAR2 | Y | Texto |
| 21 | SN_TERMO_IMPRESSO | VARCHAR2 | N |  |
| 22 | QT_PARCELAS | NUMBER | Y | Qtde parcelas |
| 23 | VL_SALDO | NUMBER | N | Saldo |
| 24 | DH_REGISTRO | DATE | N | Data do registro |
| 25 | DS_EXTRA_1 | VARCHAR2 | Y | Primeira coluna de informação extra |
| 26 | DS_EXTRA_2 | VARCHAR2 | Y | Segunda coluna de informação extra |

---

## DBAMV.CCOR_FINANCEIRA_PARC
> Tabela de Lote de Pagamento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CCOR_FINANCEIRA_PARC | NUMBER | N | Código da parcela |
| 2 | CD_CCOR_FINANCEIRA_LCTO | NUMBER | N | Código do lancamento da conta |
| 3 | CD_ITCON_PAG | NUMBER | Y | Códito da parcela no contas a pagar |
| 4 | CD_ITCON_REC | NUMBER | Y | Códito da parcela no contas a receber |
| 5 | CD_USUARIO | VARCHAR2 | N | Usuário do registro |
| 6 | NR_PARCELA | NUMBER | N | Número da parcela |
| 7 | VL_PARCELA | NUMBER | N | Valor da parcela |
| 8 | DT_VENCIMENTO | DATE | N | Data do vencimento previsto |
| 9 | DH_REGISTRO | DATE | N | Data e hora do registro |

---

## DBAMV.CCOR_FINANCEIRA_PROC
> Tabela de Pacotes de Procedimento ligados à CCorrente Financeira

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CCOR_FINANCEIRA_PROC | NUMBER | N | Chave primária |
| 2 | CD_CCOR_FINANCEIRA | NUMBER | N | Conta vinculado |
| 3 | CD_PACOTE | NUMBER | Y | Código do pacote |
| 4 | CD_PRO_FAT | VARCHAR2 | N | Código do procedimento |
| 5 | CD_FORMA_PAGTO_ADIANT | NUMBER | N | Código da forma de pagamento |
| 6 | VA_PACOTE | NUMBER | N | Valor do pacote |
| 7 | QT_PARCELAS | NUMBER | Y | Qtde de parcelas |
| 8 | NR_DIA_VENCTO | NUMBER | Y | Número do dia do vencimento |
| 9 | CD_USUARIO | VARCHAR2 | N | Usuário do registro |
| 10 | DH_REGISTRO | DATE | N | Data do registro |

---

## DBAMV.CCOR_FINANCEIRA_PRST
> Tabela de Prestação de Contas

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CCOR_FINANCEIRA_PRST | NUMBER | N | Código da prestação de contas |
| 2 | CD_CCOR_FINANCEIRA_LCTO | NUMBER | N | Código do lançamento |
| 3 | TP_PRESTACAO | VARCHAR2 | N | Tipo de prestação de contas |
| 4 | TP_DOCUMENTO | VARCHAR2 | N | Tipo do documento da prestação de contas |
| 5 | NR_DOCUMENTO | VARCHAR2 | N | Número do documento |
| 6 | DS_PRESTACAO | VARCHAR2 | Y | Descrição da prestação de contas |
| 7 | VL_PRESTACAO | NUMBER | N | Valor da prestação de contas |
| 8 | TP_STATUS | VARCHAR2 | N | Status da prestação de contas |
| 9 | TX_APROVACAO | VARCHAR2 | Y | Parecer do aprovador |
| 10 | CD_USUARIO_APROV | VARCHAR2 | Y | Usuário aprovador |
| 11 | DA_APROVACAO | DATE | Y | Data da aprovação |

---

## DBAMV.CCOR_FINANCEIRA_RATE
> Tabela de rateios de lançamento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CCOR_FINANCEIRA_RATE | NUMBER | N | Identificação do rateio |
| 2 | CD_CCOR_FINANCEIRA_LCTO | NUMBER | N | Código do lançamento |
| 3 | CD_SETOR | NUMBER | N | Setor |
| 4 | CD_ITEM_RES | NUMBER | N | Conta de resultado |
| 5 | CD_REDUZIDO | NUMBER | N | Conta contábil |
| 6 | VL_RATEIO | NUMBER | N | Valor do rateio |

---

## DBAMV.CCOR_FINANCEIRA_USUA
> Tabela de atendimentos do lançamento da conta corrente

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CCOR_FINANCEIRA_USUA | NUMBER | N | Código de gestão de usuário |
| 2 | CD_USUARIO | VARCHAR2 | N | Usuário gestor |
| 3 | CD_EMPRESA | NUMBER | N | Empresa da gestão |
| 4 | CD_SETOR | NUMBER | Y | Setor |
| 5 | CD_PROCESSO | NUMBER | Y | Processo |
| 6 | CD_CCOR_FINANCEIRA | NUMBER | Y | Conta Corrente Financeira |
| 7 | TP_CCOR_FINANCEIRA | VARCHAR2 | N | Tipo de conta gerenciada |
| 8 | DT_VIGENCIA_INI | DATE | N | Data de início da vigência da gestão |
| 9 | DT_VIGENCIA_FIN | DATE | Y | Data de final da vigência da gestão |
| 10 | SN_ABRIR | VARCHAR2 | N | Permite o abertura de conta |
| 11 | SN_APROVAR | VARCHAR2 | N | Permite aprovação de conta |
| 12 | SN_DEBITAR | VARCHAR2 | N | Permite gerar débito em conta |
| 13 | SN_CREDITAR | VARCHAR2 | N | Permite gerar crédito em conta |
| 14 | SN_FECHAR | VARCHAR2 | N | Permite fechar conta |
| 15 | SN_EXTRATO | VARCHAR2 | N | Permite gerar extrato da conta |
| 16 | SN_ABRE_APROVA | VARCHAR2 | N | Usuário abre e aprova diretamente |
| 17 | SN_OUTRO_PACIENTE | VARCHAR2 | N | Permitir atendimento de outro paciente |
| 18 | SN_OUTRA_EMPRESA | VARCHAR2 | N | Permitir atendimento de outra empresa |
| 19 | SN_PERMITE_RECEBIMENTO | VARCHAR2 | N | Permitir recebimento |
| 20 | PE_DESCONTO_MAXIMO | NUMBER | Y | Máximo de desconto permitido |
| 21 | PE_ACRESCIMO_MAXIMO | NUMBER | Y | Máximo de acréscimo permitido |
| 22 | CD_USUARIO_REGI | VARCHAR2 | N | Usuário do registro |
| 23 | DH_REGISTRO | DATE | N | Data do registro |

---

## DBAMV.CENARIO_CHAVE
> Armezana o cenário com as chaves do fluxo de caixa.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CENARIO_FINANC | NUMBER | N | Código do cenário. |
| 2 | CD_CENARIO_CHAVE | VARCHAR2 | N | Código da chave do cenário. |

---

## DBAMV.CENARIO_FINANC
> Armezana o cenário do fluxo de caixa.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CENARIO_FINANC | NUMBER | N | Código do cenário. |
| 2 | CD_MODELO_CONTABIL | VARCHAR2 | Y | Código do modelo contábil. |
| 3 | CD_USUARIO | VARCHAR2 | Y | Código do usuário. |
| 4 | DS_CENARIO | VARCHAR2 | Y | Descrição do cenário. |

---

## DBAMV.CENARIO_FINANC_VALOR
> Armezana o cenário do fluxo de caixa.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CENARIO_FINANC_VALOR | NUMBER | N | Código do cenário valor. |
| 2 | CD_CENARIO_FINANC | NUMBER | N | Código do cenário. |
| 3 | CD_CENARIO_CHAVE | VARCHAR2 | Y | Código do cenário chave. |
| 4 | CD_MODELO_CONTABIL_EVENTO | NUMBER | Y | Código do evento no modelo contábil. |
| 5 | DT_INICIO | DATE | Y | Data inicial. |
| 6 | DT_COMPETENCIA | DATE | Y | Data de competência. |
| 7 | TP_VALOR | VARCHAR2 | Y | Tipo valor. |
| 8 | VL_SIMULACAO | NUMBER | Y | Valor simulação. |
| 9 | DS_COMPLEMENTO | VARCHAR2 | Y | Descrição do complemento. |
| 10 | TP_COMPETENCIA | VARCHAR2 | Y | Tipo da competência. |
| 11 | CD_MOVIMENTO | NUMBER | Y | Código do movimento. |

---

## DBAMV.CEP_CAIXAS_POSTAIS
> Tabela de CEP das Caixas Postais Comunitaria

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CAIXA_POSTAL | NUMBER | N | chave da Caixa Postal Comunitaria |
| 2 | CD_LOCALIDADE | NUMBER | N | chave da localidade DNE |
| 3 | DS_LOCALIDADE | VARCHAR2 | Y | nome da localidade |
| 4 | CD_UF | VARCHAR2 | Y | sigla da UF |
| 5 | NR_CEP | NUMBER | Y | CEP da localidade da caixa postal |
| 6 | NM_PONTO_CAIXA_POSTAL | VARCHAR2 | Y |  |
| 7 | DS_END_CAIXA_POSTAL | VARCHAR2 | Y | endereco caixa postal comunitaria |
| 8 | NR_CAIXA_INI | NUMBER | Y | numero inicial da caixa caixa postal comunitaria |
| 9 | NR_CAIXA_FIM | NUMBER | Y | numero final da caixa caixa postal comunitaria |
| 10 | DS_ABRANGENCIA_CX_POSTAL | VARCHAR2 | Y | area de abrangencia da caixa postal comunitaria |

---

## DBAMV.CHEQUE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CHEQUE | NUMBER | N |  |
| 2 | VL_CHEQUE | NUMBER | N |  |
| 3 | DT_EMISSAO | DATE | N |  |
| 4 | SN_IMPRESSO | VARCHAR2 | N |  |
| 5 | DS_NOME_IMPRESSO | VARCHAR2 | Y |  |
| 6 | DT_COMPENSACAO | DATE | Y |  |
| 7 | DT_RETIRADA | DATE | Y |  |
| 8 | SN_CANCELADO | VARCHAR2 | Y |  |
| 9 | NM_RETIRANTE | VARCHAR2 | Y |  |
| 10 | CD_TALAO | NUMBER | N |  |
| 11 | NR_CHEQUE | NUMBER | N |  |
| 12 | CD_MOTIVO_CANC | NUMBER | Y |  |
| 13 | DT_CANCELAMENTO | DATE | Y |  |
| 14 | DS_VERSO_CHEQUE | VARCHAR2 | Y |  |
| 15 | NM_USUARIO | VARCHAR2 | Y |  |
| 16 | DT_CANC_COMPENSACAO | DATE | Y |  |
| 17 | DT_PREDATADA | DATE | Y | Data do cheque pré-datado |
| 18 | TP_STATUS | VARCHAR2 | N | Status do cheque pré-datado |
| 19 | DT_STATUS | DATE | Y | Data do status |

---

## DBAMV.CHEQUE_STATUS
> Tabela de status de cheques

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CHEQUE_STATUS | NUMBER | N | Código de identificação |
| 2 | CD_CHEQUE | NUMBER | N | Código do cheque |
| 3 | CD_USUARIO | VARCHAR2 | N | Código do usuário |
| 4 | CD_MOTIVO | NUMBER | Y | Código do motivo |
| 5 | DT_STATUS | DATE | N | Data do status |
| 6 | TP_STATUS | VARCHAR2 | N | Tipo do status |
| 7 | DS_STATUS | VARCHAR2 | Y | Texto do status |

---

## DBAMV.CNDC_PGMNT_MERC_ELETRONICO
> De-Para Condic?o de pagamento SoulMv x Mercado Eletronico

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONDICAO_PAGAMENTO_ME | NUMBER | N | Codigo da condic?o de pagamento ME |
| 2 | DS_CONDICAO_PAGAMENTO_ME | VARCHAR2 | N | Descric?o da condic?o de pagamento ME |
| 3 | CD_CONDICAO_PAGAMENTO | NUMBER | N | Codigo de condic?o de pagamento SoulMv |

---

## DBAMV.CRONOGRAMA_RECEB_CONV_FFCV
> Cronograma de Recebimento de Convênio.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONVENIO | NUMBER | N | Código do convênio. |
| 2 | TP_REFERENCIA | VARCHAR2 | N | Tipo da data de referência: F-fechamento, E-envio, M-emissao, N-entrega. Obrigatório. |
| 3 | SN_RESTRITIVO | VARCHAR2 | N | S/N indica se a validação é restritiva ou não. |
| 4 | SN_ULT_DIA_UTIL_DR | VARCHAR2 | Y | Indica se a validação será pelo último dia útil da data de referência. |
| 5 | TP_DIA_DR | VARCHAR2 | Y | Tipo de dia a validar data de referência. U-util, C-corrente. Opcional. |
| 6 | NR_DIA_INI_DR | NUMBER | Y | Dia inicial ou quantidade de dias. |
| 7 | NR_DIA_FIM_DR | NUMBER | Y | Dia final. |
| 8 | DT_FIXA_01_DR | DATE | Y | Data fixa referente à competência da data de referência. |
| 9 | DT_FIXA_02_DR | DATE | Y | Data fixa referente à competência da data de referência. |
| 10 | DT_FIXA_03_DR | DATE | Y | Data fixa referente à competência da data de referência. |
| 11 | DT_FIXA_04_DR | DATE | Y | Data fixa referente à competência da data de referência. |
| 12 | DT_FIXA_05_DR | DATE | Y | Data fixa referente à competência da data de referência. |
| 13 | DT_FIXA_06_DR | DATE | Y | Data fixa referente à competência da data de referência. |
| 14 | DT_FIXA_07_DR | DATE | Y | Data fixa referente à competência da data de referência. |
| 15 | DT_FIXA_08_DR | DATE | Y | Data fixa referente à competência da data de referência. |
| 16 | DT_FIXA_09_DR | DATE | Y | Data fixa referente à competência da data de referência. |
| 17 | DT_FIXA_10_DR | DATE | Y | Data fixa referente à competência da data de referência. |
| 18 | DT_FIXA_11_DR | DATE | Y | Data fixa referente à competência da data de referência. |
| 19 | DT_FIXA_12_DR | DATE | Y | Data fixa referente à competência da data de referência. |
| 20 | TP_DIA_DP | VARCHAR2 | Y | Tipo de dia a validar data de pagamento. U-util, C-corrente. Opcional. |
| 21 | QT_DIAS_DP | NUMBER | Y | Quantidade de dias para validar a data de pagamento. |
| 22 | QT_MES_SUBSEQ_DP | NUMBER | Y | Quantidade de meses subsequentes para formatar a data de pagamento. |
| 23 | NR_DIA_FIXO_DP | NUMBER | Y | Dia fixo para formatar a data de pagamento. |
| 24 | TP_DIA_UTIL_DP | VARCHAR2 | Y | Tipo de formatação para data com um dia útil A-anterior ou o P-próximo. |
| 25 | DT_FIXA_01_DP | DATE | Y | Data fixa referente à competência da data de pagamento. |
| 26 | DT_FIXA_02_DP | DATE | Y | Data fixa referente à competência da data de pagamento. |
| 27 | DT_FIXA_03_DP | DATE | Y | Data fixa referente à competência da data de pagamento. |
| 28 | DT_FIXA_04_DP | DATE | Y | Data fixa referente à competência da data de pagamento. |
| 29 | DT_FIXA_05_DP | DATE | Y | Data fixa referente à competência da data de pagamento. |
| 30 | DT_FIXA_06_DP | DATE | Y | Data fixa referente à competência da data de pagamento. |
| 31 | DT_FIXA_07_DP | DATE | Y | Data fixa referente à competência da data de pagamento. |
| 32 | DT_FIXA_08_DP | DATE | Y | Data fixa referente à competência da data de pagamento. |
| 33 | DT_FIXA_09_DP | DATE | Y | Data fixa referente à competência da data de pagamento. |
| 34 | DT_FIXA_10_DP | DATE | Y | Data fixa referente à competência da data de pagamento. |
| 35 | DT_FIXA_11_DP | DATE | Y | Data fixa referente à competência da data de pagamento. |
| 36 | DT_FIXA_12_DP | DATE | Y | Data fixa referente à competência da data de pagamento. |
| 37 | SN_ATIVO | VARCHAR2 | N | Indica se o registro de configuração deste convênio está ativo ou não. |

---

## DBAMV.CUSTO_ABSORVIDO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CUSTO_ABSORVIDO | NUMBER | N |  |
| 2 | CD_SETOR_ORIGEM | NUMBER | N |  |
| 3 | CD_SETOR_DESTINO | NUMBER | N |  |
| 4 | DT_COMPETENCIA | DATE | N |  |
| 5 | VL_CUSTO_ABSORVIDO | NUMBER | N |  |
| 6 | TP_CUSTO_ABSORVIDO | VARCHAR2 | N |  |
| 7 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 8 | VL_CUSTO_RATEADO | NUMBER | Y |  |
| 9 | VL_FATOR_PONDERACAO | NUMBER | Y |  |
| 10 | VL_CUSTO_ABS_VAR | NUMBER | Y |  |
| 11 | VL_CUSTO_ABS_FIXO | NUMBER | Y |  |
| 12 | VL_CUSTO_RAT_VAR | NUMBER | Y |  |
| 13 | VL_CUSTO_RAT_FIXO | NUMBER | Y |  |

---

## DBAMV.CUSTO_DIARIA_CENCIR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CUSTO_DIARIA_CENCIR | NUMBER | N |  |
| 2 | DT_COMPETENCIA | DATE | N |  |
| 3 | CD_SETOR | NUMBER | N |  |
| 4 | TP_CUSTO | VARCHAR2 | N |  |
| 5 | HR_CIRURGIA | NUMBER | Y |  |
| 6 | HR_DISPONIVEL | NUMBER | Y |  |
| 7 | HR_LIMPEZA | NUMBER | Y |  |
| 8 | HR_SALA | NUMBER | Y |  |
| 9 | QT_DIARIAS_DISPONIVEL | NUMBER | Y |  |
| 10 | QT_DIARIAS_UTILIZADAS | NUMBER | Y |  |
| 11 | QT_DIARIAS_FATURADAS | NUMBER | Y |  |
| 12 | CD_SAL_CIR | NUMBER | Y |  |
| 13 | CD_TIP_ACOM | NUMBER | Y |  |
| 14 | CD_PRO_FAT | VARCHAR2 | Y |  |
| 15 | VL_FATURADO | NUMBER | Y |  |
| 16 | QT_DIARIAS_PACDIA | NUMBER | Y | Quantidade de Diarias Paciente Dia |
| 17 | CD_PROCEDIMENTO_SUS | VARCHAR2 | Y | Codigo do SUS P321 |
| 18 | VL_FATOR_CUSTO | NUMBER | Y | Valor do Fator de Tipo de Acomodacao por centro de custo |

---

## DBAMV.CUSTO_FICHA
> Tabela de fichas técnicas de custos de procedimento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CUSTO_FICHA | NUMBER | N | Código da ficha técnica de custos por procedimento |
| 2 | CD_MULTI_EMPRESA | NUMBER | N | Código da empresa |
| 3 | CD_SETOR | NUMBER | Y | Código da empresa |
| 4 | CD_USUARIO_REG | VARCHAR2 | N | Usuário do registro |
| 5 | DS_CUSTO_FICHA | VARCHAR2 | N | Descrição da ficha técnica |
| 6 | CD_PRO_FAT | VARCHAR2 | N | Grupo de faturamento dos itens da ficha técnica |
| 7 | DS_VERSAO | VARCHAR2 | N | Versão da ficha técnica |
| 8 | DT_VIGENCIA_INI | DATE | Y | Data de início da vigência da ficha técnica |
| 9 | DT_VIGENCIA_FIN | DATE | Y | Data de final da vigência da ficha técnica |
| 10 | DT_REGISTRO | DATE | N | Data do registro da ficha técnica |
| 11 | TP_STATUS | VARCHAR2 | N | Status da ficha técnica |
| 12 | SN_PADRAO | VARCHAR2 | N | Define qual ficha técnica é utilizada como padrão |

---

## DBAMV.CUSTO_FICHA_ITEM
> Tabela de fichas técnicas de custos de procedimento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CUSTO_FICHA_ITEM | NUMBER | N | Código do item da ficha técnica |
| 2 | CD_CUSTO_FICHA | NUMBER | N | Código da ficha técnica de custos por procedimento |
| 3 | CD_USUARIO_REG | VARCHAR2 | N | Código do usuário do registro |
| 4 | CD_SETOR | NUMBER | N | Código do setor |
| 5 | CD_PRODUTO | NUMBER | Y | Código do produto |
| 6 | CD_EXA_LAB | NUMBER | Y | Código de exame laboratórial |
| 7 | CD_EXA_RX | NUMBER | Y | Código de exame de imagem |
| 8 | CD_CIRURGIA | NUMBER | Y | Código de cirurgia |
| 9 | CD_TIP_ACOM | NUMBER | Y | Código de tipo de acomodação |
| 10 | CD_SERVICO | NUMBER | Y | Código do serviço |
| 11 | CD_PRO_FAT | VARCHAR2 | Y | Código do procedimento |
| 12 | CD_SETOR_REF | NUMBER | Y | Setor de referência |
| 13 | CD_ITEM_RES | NUMBER | Y | Conta de custo |
| 14 | CD_ORDEM | NUMBER | N | Ordem dos itens (múltiplos de 10) |
| 15 | DS_UNIDADE | VARCHAR2 | N | Código da unidade de medida |
| 16 | DS_FICHA_ITEM | VARCHAR2 | N | Descrição do item |
| 17 | QT_UNIDADE | NUMBER | N | Quantidade da unidade de medida |
| 18 | VL_CUSTO_PADRAO | NUMBER | N | Valor custo padrão |
| 19 | TP_REFERENCIA | VARCHAR2 | N | Tipo de referência |
| 20 | DT_REGISTRO | DATE | N | Data do registro |

---

## DBAMV.CUSTO_FINAL
> Consolidac?o dos Custos Estruturais por Centro de Custo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DT_COMPETENCIA | DATE | N |  |
| 2 | CD_SETOR | NUMBER | N |  |
| 3 | VL_CUSTO_PRIMARIO | NUMBER | Y |  |
| 4 | VL_CUSTO_GENERICOS | NUMBER | Y |  |
| 5 | VL_CUSTO_ESPECIFICOS | NUMBER | Y |  |
| 6 | VL_RECEITA_HONORARIOS | NUMBER | Y |  |
| 7 | VL_RECEITA_MATMED | NUMBER | Y |  |
| 8 | VL_RECEITA_SH | NUMBER | Y |  |
| 9 | VL_CUSTO_MATMED | NUMBER | Y |  |
| 10 | VL_RECEITA_SD | NUMBER | Y |  |
| 11 | VL_GLOSA | NUMBER | Y |  |
| 12 | VL_CUSTO_DIARIA | NUMBER | Y |  |
| 13 | VL_CUSTO_CENCIR | NUMBER | Y |  |
| 14 | VL_CONSUMO_OXIGENIO | NUMBER | Y |  |
| 15 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 16 | VL_CUSTO_FIXO | NUMBER | Y |  |
| 17 | VL_CUSTO_VARIAVEL | NUMBER | Y |  |
| 18 | VL_CUSTO_EVENTO | NUMBER | Y |  |
| 19 | VL_CUSTO_PRIM_FIXO | NUMBER | Y |  |
| 20 | VL_CUSTO_PRIM_VAR | NUMBER | Y |  |
| 21 | VL_CUSTO_GEN_FIXO | NUMBER | Y |  |
| 22 | VL_CUSTO_GEN_VAR | NUMBER | Y |  |
| 23 | VL_CUSTO_ESP_FIXO | NUMBER | Y |  |
| 24 | VL_CUSTO_ESP_VAR | NUMBER | Y |  |
| 25 | VL_CUSTO_MATMED_FIXO | NUMBER | Y |  |
| 26 | VL_CUSTO_MATMED_VAR | NUMBER | Y |  |
| 27 | VL_CUSTO_EVENTO_FIXO | NUMBER | Y |  |
| 28 | VL_CUSTO_EVENTO_VAR | NUMBER | Y |  |
| 29 | VL_CUSTO_CENCIR_FIXO | NUMBER | Y |  |
| 30 | VL_CUSTO_CENCIR_VAR | NUMBER | Y |  |
| 31 | VL_RECEITA_NO | NUMBER | Y | Valor Receita Nao Operacional |
| 32 | VL_FAT_HONORARIOS | NUMBER | Y | Valor Faturado de Honorarios |
| 33 | VL_FAT_MATMED | NUMBER | Y | Valor Faturado de Matmed |
| 34 | VL_FAT_NO | NUMBER | Y | Valor Faturado N?o Operacional |
| 35 | VL_FAT_SD | NUMBER | Y | Valor Faturado Sadt |
| 36 | VL_FAT_SH | NUMBER | Y | Valor Faturado Hospitalar |
| 37 | VL_RECPROD_HONORARIOS | NUMBER | Y | Valor Faturado de Honorarios |
| 38 | VL_RECPROD_MATMED | NUMBER | Y | Valor Faturado de Matmed |
| 39 | VL_RECPROD_NO | NUMBER | Y | Valor Faturado N?o Operacional |
| 40 | VL_RECPROD_SD | NUMBER | Y | Valor Faturado Sadt |
| 41 | VL_RECPROD_SH | NUMBER | Y | Valor Faturado Hospitalar |
| 42 | VL_DEDUZ_GLOSA | NUMBER | Y | Valor de dedução de receita (Glosa). |
| 43 | VL_DEDUZ_IMPOSTO | NUMBER | Y | Valor de dedução de receita (Imposto). |
| 44 | VL_DEDUZ_HONORARIO | NUMBER | Y | Valor de dedução de receita (Honorário). |
| 45 | VL_DEDUZ_OUTRO | NUMBER | Y | Valor de dedução de receita (Outro). |

---

## DBAMV.CUSTO_FIXO_PRODUCAO
> Tabela de custo fixo de produc?o, usado na entrada de produc?o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CUSTO_FIXO_PRODUCAO | NUMBER | N | Codigo da tabela de custo fixo de produc?o - pk |
| 2 | DS_CUSTO_FIXO_PRODUCAO | VARCHAR2 | N | Descric?o da tabela de custo fixo de produc?o |
| 3 | SN_ATIVO | VARCHAR2 | N | Identifica se o registro esta ativo ou n?o |

---

## DBAMV.CUSTO_FIXO_PRODUCAO_ITENT_PRO
> Tabela de relacionamento da itent_pro com os custos fixos da produc?o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITENT_PRO | NUMBER | N | Codigo da itent_pro (Tabela itent_pro) - PK, FK |
| 2 | CD_CUSTO_FIXO_PRODUCAO | NUMBER | N | Codigo de custos fixos da produc?o (Tabela CUSTO_FIXO_PRODUCAO) - PK, FK |
| 3 | QT_CUST_FIXO_PRD_ITENT_PRO | NUMBER | N | Quantidade do custos fixos da produc?o |
| 4 | VL_UNITARIO | NUMBER | N | Valor unitario dos custos fixos da produc?o |
| 5 | VL_TOTAL | NUMBER | N | Valor total dos custos fixos da produc?o |

---

## DBAMV.CUSTO_MEDIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CUSTO_MEDIO | NUMBER | N |  |
| 2 | CD_PRODUTO | NUMBER | N |  |
| 3 | DT_CUSTO | DATE | N |  |
| 4 | HR_ENTRADA | DATE | N |  |
| 5 | QT_ESTOQUE_ANTES | NUMBER | Y |  |
| 6 | VL_CUSTO_MEDIO_ANTES | NUMBER | Y |  |
| 7 | QT_ENTRADA | NUMBER | Y |  |
| 8 | VL_ENTRADA | NUMBER | N |  |
| 9 | VL_CUSTO_MEDIO | NUMBER | N |  |
| 10 | SN_ATUALIZA_PRECO | VARCHAR2 | N |  |
| 11 | SN_CONTAGEM | VARCHAR2 | Y |  |
| 12 | DH_CUSTO_MEDIO | DATE | N |  |
| 13 | CD_ESTOQUE | NUMBER | Y |  |
| 14 | QT_ESTOQUE_ANTES_DO_ESTOQUE | NUMBER | Y |  |
| 15 | QT_ENTRADA_EMPRESTIMO | NUMBER | Y |  |
| 16 | TP_CUSTO_MEDIO | VARCHAR2 | Y |  |
| 17 | CD_ITMVTO_ESTOQUE | NUMBER | Y | Codigo do item de movimentac?o no estoque |
| 18 | CD_MULTI_EMPRESA | NUMBER | N |  |

---

## DBAMV.CUSTO_MEDIO_CONSOLIDACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CUSTO_MEDIO | NUMBER | N |  |
| 2 | CD_PRODUTO | NUMBER | N |  |
| 3 | VL_CUSTO_MEDIO | NUMBER | N |  |
| 4 | DH_CUSTO_MEDIO | DATE | N |  |

---

## DBAMV.CUSTO_MEDIO_MENSAL
> Tabela que ira armazenar o custo medio mensal dos produtos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CUSTO_MEDIO_MENSAL | NUMBER | N | Chave primario da tabela, codigo da linha do custo medio |
| 2 | CD_ESTOQUE | NUMBER | Y | Codigo do estoque que esta gerando a linha de custo medio |
| 3 | CD_PRODUTO | NUMBER | N | Codigo do produto que esta sendo criada a linha de custo medio |
| 4 | DH_CUSTO_MEDIO | DATE | N | Data e Hora da gravac?o do custo medio |
| 5 | QT_ESTOQUE_ANTES | NUMBER | Y | Quantidade de estoque antes do produto |
| 6 | VL_CUSTO_MEDIO_ANTES | NUMBER | Y | Codigo do custo medio anterior a linha selecionada |
| 7 | VL_CUSTO_MEDIO | NUMBER | N | Valor do custo medio mensal do produto |
| 8 | SN_SIMULACAO | VARCHAR2 | Y | Informar se a linha de custo medio gerada e uma simulac?o feita na competencia ou o resultado final |
| 9 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da empresa referente ao custo medio |
| 10 | QT_TOT_ESTOQUE_ENTRADA | NUMBER | Y | Quantidade utilizada como base para o calculo do custo medio mensal |
| 11 | VL_TOT_ESTOQUE_ENTRADA | NUMBER | Y | Valor utilizado como base para o calculo do custo medio mensal |
| 12 | SN_VALOR_INICIAL_PRODUTO | VARCHAR2 | Y | Determina se o valor do custo medio para esse produto foi atribuido atraves da tela de valor inic... |

---

## DBAMV.CUSTO_MEDIO_PROD_DATA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRODUTO | NUMBER | N |  |
| 2 | DH_CUSTO_MEDIO | DATE | N |  |

---

## DBAMV.CUSTO_MINUTO_GAS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DT_COMPETENCIA | DATE | N |  |
| 2 | CD_ITEM_RES | NUMBER | N |  |
| 3 | VL_FATOR | NUMBER | N |  |
| 4 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 5 | CD_SETOR | NUMBER | Y |  |
| 6 | CD_PRO_FAT | VARCHAR2 | Y | Codigo do Procedimento Convenio |
| 7 | CD_PROCEDIMENTO | VARCHAR2 | Y | Codigo do Procedimento SUS |
| 8 | CD_PRODUTO | NUMBER | Y | Codigo do Produto Mges |

---

## DBAMV.CUSTO_PRIMARIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CUSTO_PRIMARIO | NUMBER | N |  |
| 2 | CD_ITEM_RES | NUMBER | N |  |
| 3 | CD_SETOR | NUMBER | N |  |
| 4 | DT_COMPETENCIA | DATE | N |  |
| 5 | VL_CUSTO_SETOR | NUMBER | N |  |
| 6 | ORIGEM_INFORMACAO | VARCHAR2 | N |  |
| 7 | CD_RATCON_PAG | NUMBER | Y |  |
| 8 | DT_COMPETENCIA_ORIGEM | DATE | N |  |
| 9 | VL_CUSTO_REPASSE | NUMBER | Y |  |
| 10 | TP_MODELO_CUSTO | VARCHAR2 | Y |  |
| 11 | SN_CUSTO_EVENTO | VARCHAR2 | Y |  |
| 12 | TP_CUSTO | VARCHAR2 | Y |  |
| 13 | VL_CUSTO_PDIRETO | NUMBER | Y | Valor do Custo de Produto Direto Paciente |

---

## DBAMV.CUSTO_PRO_FAT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRO_FAT | VARCHAR2 | N |  |
| 2 | DT_VIGENCIA | DATE | N |  |
| 3 | VL_HONORARIO | NUMBER | Y |  |
| 4 | VL_OPERACIONAL | NUMBER | Y |  |
| 5 | VL_TOTAL | NUMBER | Y |  |

---

## DBAMV.CUSTO_SALA_CIRURGIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SAL_CIR | NUMBER | N |  |
| 2 | DT_COMPETENCIA | DATE | N |  |
| 3 | QT_HORAS_SALA | NUMBER | Y |  |
| 4 | QT_HORAS_OCIOSIDADE | NUMBER | Y |  |
| 5 | QT_HORAS_AUXILIARES | NUMBER | Y |  |
| 6 | VL_HORA_SALA | NUMBER | Y |  |
| 7 | CD_MULTI_EMPRESA | NUMBER | N |  |

---

## DBAMV.CUSTO_UNITARIO
> Custo Unitario por Item de Produc?o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CUSTO_UNITARIO | NUMBER | N |  |
| 2 | DT_COMPETENCIA | DATE | N |  |
| 3 | CD_SETOR | NUMBER | N |  |
| 4 | CD_ITEM_PRODUCAO | VARCHAR2 | Y |  |
| 5 | CD_EXA_LAB | NUMBER | Y |  |
| 6 | CD_EXA_RX | NUMBER | Y |  |
| 7 | CD_CIRURGIA | NUMBER | Y |  |
| 8 | VL_PRIMARIO | NUMBER | Y |  |
| 9 | VL_GENERICOS | NUMBER | Y |  |
| 10 | VL_ESPECIFICOS | NUMBER | Y |  |
| 11 | VL_RECEITA | NUMBER | Y |  |
| 12 | QT_PRODUCAO | NUMBER | Y |  |
| 13 | VL_FATOR | NUMBER | Y |  |
| 14 | VL_MATMED | NUMBER | Y |  |
| 15 | CD_PRO_FAT | VARCHAR2 | Y |  |
| 16 | CD_CONVENIO | NUMBER | Y |  |
| 17 | VL_MATERIAIS_DIRETOS | NUMBER | Y |  |
| 18 | VL_UNITARIO_HONORARIOS | NUMBER | Y |  |
| 19 | VL_TOTAL_HONORARIOS | NUMBER | Y |  |
| 20 | VL_TOTAL_VENDA | NUMBER | Y |  |
| 21 | VL_PRECO_EXAME | NUMBER | Y |  |
| 22 | CD_TIP_ACOM | NUMBER | Y |  |
| 23 | QT_FATURADA | NUMBER | Y |  |
| 24 | VL_MINUTO | NUMBER | Y |  |
| 25 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 26 | SN_GASES | VARCHAR2 | Y |  |
| 27 | VL_FIXO | NUMBER | Y |  |
| 28 | VL_VARIAVEL | NUMBER | Y |  |
| 29 | CD_SSM | VARCHAR2 | Y | CODIGO PROCEDIMENTO SSM/SIA |
| 30 | TP | VARCHAR2 | Y | tipo do calculo de Custo |
| 31 | CD_PROCEDIMENTO_SUS | VARCHAR2 | Y | Codigo do PRocedimnto SU p321 |
| 32 | VL_PRIMARIO_FIXO | NUMBER | Y | Valor do custo primario fixo do procedimento |
| 33 | VL_PRIMARIO_VAR | NUMBER | Y | Valor do custo primario variavel do procedimento |
| 34 | VL_GENERICO_FIXO | NUMBER | Y | Valor do custo generico fixo do procedimento |
| 35 | VL_GENERICO_VAR | NUMBER | Y | Valor do custo generico variavel do procedimento |
| 36 | VL_ESPECIFICO_FIXO | NUMBER | Y | Valor do custo especifico fixo do procedimento |
| 37 | VL_ESPECIFICO_VAR | NUMBER | Y | Valor do custo especifico variavel do procedimento |
| 38 | VL_MATMED_FIXO | NUMBER | Y | Valor do custo matmed fixo do procedimento |
| 39 | VL_MATMED_VAR | NUMBER | Y | Valor do custo matmed variavel do procedimento |
| 40 | CD_ATIVIDADE | VARCHAR2 | Y | codigo da atividade importado do XML |

---

## DBAMV.DESINFECCAO
> Tabela que registra os processos de desinfecção de instrumentais, com controle de início, fim, recebimento e cancelamento.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DESINFECCAO | NUMBER | N | Código único da desinfecção. |
| 2 | CD_MAQUINA_DESINFECCAO | NUMBER | N | Código da máquina utilizada para desinfecção. |
| 3 | CD_USUARIO_INICIO | VARCHAR2 | Y | Usuário que iniciou o processo de desinfecção. |
| 4 | DT_INICIO_DESINFECCAO | DATE | Y | Data e hora de início da desinfecção. |
| 5 | CD_USUARIO_FIM | VARCHAR2 | Y | Usuário que finalizou o processo de desinfecção. |
| 6 | DT_FIM_DESINFECCAO | DATE | Y | Data e hora de término da desinfecção. |
| 7 | CD_TP_INSTR_DESINFECCAO | NUMBER | Y | Código do tipo de instrumental desinfectado. |
| 8 | DT_RECEBIMENTO | DATE | Y | Data e hora do recebimento do instrumental após desinfecção. |
| 9 | CD_USUARIO_RECEBIMENTO | VARCHAR2 | Y | Usuário que realizou o recebimento do instrumental. |
| 10 | DT_CANCELAMENTO | DATE | Y | Data e hora de cancelamento do processo de desinfecção. |
| 11 | CD_USUARIO_CANCELAMENTO | VARCHAR2 | Y | Usuário que efetuou o cancelamento da desinfecção. |
| 12 | TP_SITUACAO | VARCHAR2 | N | Situação do processo de desinfecção (P Pendente, R Recebido, T Em teste, F Finalizado, C Cancelado). |
| 13 | CD_CARGA_LOTE | NUMBER | Y | Lote de desinfecção |
| 14 | SN_QUIMICO | VARCHAR2 | Y | Indica se o teste químico está S - Conforme ou N - Não Conforme |
| 15 | CD_CANCELAMENTO | NUMBER | Y | Código de cancelamento da desinfecção |

---

## DBAMV.DOC_CAIXA
> Ajuste na tabela doc_caixa

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DOC_CAIXA | NUMBER | N |  |
| 2 | TP_DOC_CAIXA | VARCHAR2 | N | TIPO DE DOCUMENTO DO CAIXA |
| 3 | TP_STATUS_DOC | VARCHAR2 | N |  |
| 4 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 5 | CD_CAIXA | NUMBER | Y |  |
| 6 | CD_CON_COR | NUMBER | Y |  |
| 7 | DT_VENCIMENTO | DATE | N |  |
| 8 | VL_DOC_CAIXA | NUMBER | N |  |
| 9 | CD_RECCON_REC | NUMBER | Y |  |
| 10 | CD_PAGCON_PAG | NUMBER | Y |  |
| 11 | CD_BANCO | NUMBER | Y |  |
| 12 | NR_DOCUMENTO | VARCHAR2 | Y |  |
| 13 | DS_DOCUMENTO | VARCHAR2 | Y |  |
| 14 | CD_FIN_CAR | NUMBER | Y |  |
| 15 | NM_RESPONSAVEL | VARCHAR2 | Y |  |
| 16 | NR_ID_RESPONSAVEL | VARCHAR2 | Y |  |
| 17 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 18 | CD_CAUCAO | NUMBER | Y |  |
| 19 | CD_RESPOSAVEL | NUMBER | Y |  |
| 20 | CD_CON_REC | NUMBER | Y |  |
| 21 | CD_PROCESSO | NUMBER | Y |  |
| 22 | CD_MULTI_EMPRESA_ORIGEM | NUMBER | Y | Codigo da empresa que originou o documento (utilizado em transac?es multi-empresas) |
| 23 | CD_MULTI_EMPRESA_DESTINO | NUMBER | Y | Codigo da empresa de destino do documento retirado do caixa (utilizado em transac?es multi-empresas) |
| 24 | VL_MOEDA | NUMBER | Y | Valor da moeda usada no processo |
| 25 | CD_MOEDA | VARCHAR2 | Y | Codigo da moeda usada no processo |
| 26 | VL_CAMBIO | NUMBER | Y | Valor do cambio usado |
| 27 | SN_CAMBIO_SUGERIDO | VARCHAR2 | Y | Se o cambio foi automatico |
| 28 | DS_OBSERVACAO_INS | VARCHAR2 | Y | Observac?o de origem de inserc?o de movimentacao |
| 29 | CD_USUARIO_INS | VARCHAR2 | Y | Usuario de origem de inserc?o de movimentacao |
| 30 | DH_MOVIMENTO_INS | DATE | Y | Data de origem de inserc?o de movimentacao |
| 31 | DS_OBSERVACAO_UPD | VARCHAR2 | Y | Observac?o de origem de alterac?o de movimentacao |
| 32 | CD_USUARIO_UPD | VARCHAR2 | Y | Usuario de origem de alterac?o de movimentacao |
| 33 | DH_MOVIMENTO_UPD | DATE | Y | Data de origem de alterac?o de movimentacao |

---

## DBAMV.DOC_CAIXA_TROCA_ESP
> TABELA DE RELACIONAMENTO DA DOC_CAIXA E TROCA DE ESPECIE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DOC_CAIXA_TROCA_ESP | NUMBER | N | CODIGO SEQUENCIAL DA TABELA |
| 2 | CD_DOC_CAIXA | NUMBER | N | CODIGO DO DOCUMENTO AO QUAL FOI REALIZADA A TROCA DE ESPECIE |
| 3 | CD_TROCA_ESPECIE | NUMBER | N | CODIGO DA TROCA DE ESPECIE |
| 4 | CD_DOC_CAIXA_TE | NUMBER | Y | CODIGO DO DOCUMENTO ASSOCIADO A TROCA DE ESPECIE |
| 5 | DS_USUARIO | VARCHAR2 | Y | Usuario que efetuou a troca |
| 6 | DT_TROCA | DATE | Y | Data da troca |
| 7 | DS_OBSERVACAO | VARCHAR2 | Y | Observação da nota |
| 8 | CD_MULTI_EMPRESA | NUMBER | Y | Empresa |

---

## DBAMV.DRE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DRE | NUMBER | N |  |
| 2 | DS_DRE | VARCHAR2 | N |  |
| 3 | CD_MULTI_EMPRESA | NUMBER | Y | Indica a empresa |
| 4 | CD_MULTI_EMPRESA_ORIGEM | NUMBER | Y | Indica qual empresa realizou o cadastro de DRE |
| 5 | TP_DRE | VARCHAR2 | Y | Tipo de cadastro. |

---

## DBAMV.DUPLICATA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FORNECEDOR | NUMBER | N |  |
| 2 | NR_DOCUMENTO | VARCHAR2 | N |  |
| 3 | CD_PARCELA | NUMBER | N |  |
| 4 | DT_VENCIMENTO | DATE | N |  |
| 5 | VL_PARCELA | NUMBER | N |  |
| 6 | NR_SERIE | VARCHAR2 | N |  |
| 7 | CD_SEQ_INTEGRA | VARCHAR2 | Y |  |
| 8 | DT_INTEGRA | DATE | Y |  |
| 9 | VL_PARCELA_MOEDA | NUMBER | Y | Valor da parcela para o multimoeda |
| 10 | CD_ENT_PRO_CORRETIVA | NUMBER | Y | Código da entrada na qual houve devolucao para correção |

---

## DBAMV.DUPLICATA_DI
> TABELA DE DUPLICATA DA DECLARAÇÃO DE IMPORTAÇÃO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FORNECEDOR | NUMBER | N | CÓDIGO DO FORNECEDOR DA DUPLICATA DA DECLARAÇÃO DE IMPORTAÇÃO |
| 2 | DS_DOCUMENTO | VARCHAR2 | N | NUMERO DO DOCUMENTO DA DUPLICATA DA DECLARAÇÃO DE IMPORTAÇÃO |
| 3 | DS_SERIE | VARCHAR2 | N | NUMERO DE SERIE DA DUPLICATA DA DECLARAÇÃO DE IMPORTAÇÃO |
| 4 | CD_MOEDA | VARCHAR2 | N | CODIGO DA MOEDA DA DUPLICATA DA DECLARAÇÃO DE IMPORTAÇÃO |
| 5 | DT_INDICE_MOEDA | DATE | Y | DATA DO INDICE DA MOEDA DA DUPLICATA DA DECLARAÇÃO DE IMPORTAÇÃO |
| 6 | VL_INDICE_MOEDA | NUMBER | Y | VALOR DO INDICE DA DUPLICATA DA DECLARAÇÃO DE IMPORTAÇÃO |
| 7 | DS_OBSERVACAO | VARCHAR2 | Y | OBSERVACAO DA DUPLICATA DA DECLARAÇÃO DE IMPORTAÇÃO |
| 8 | CD_PARCELA | NUMBER | N | NUMERO DA PARCELA DA DUPLICATA DA DECLARAÇÃO DE IMPORTAÇÃO |
| 9 | DT_VENCIMENTO | DATE | N | DATA DE VENCIMENTO DADUPLICATA DA DECLARAÇÃO DE IMPORTAÇÃO |
| 10 | VL_PARCELA | NUMBER | N | VALOR DA PARCELA DA DUPLICATA DA DECLARAÇÃO DE IMPORTAÇÃO |
| 11 | VL_PARCELA_MOEDA | NUMBER | N | VALOR DA PARCELA DA MOEDA DA DUPLICATA DA DECLARAÇÃO DE IMPORTAÇÃO |

---

## DBAMV.ECT_LOG_CAIXA_POSTAL_COM
> Tabela de Caixas Postais Comunitaria

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOCALIDADE | NUMBER | Y | chave da localidade |
| 2 | CD_LOCALIDADE_DNE | NUMBER | N | chave da localidade DNE |
| 3 | CD_UF | VARCHAR2 | Y | sigla da UF |
| 4 | NM_OFICIAL_LOCALIDADE | VARCHAR2 | Y | nome da localidade |
| 5 | CD_CEP | VARCHAR2 | Y | CEP da localidade |
| 6 | NM_PONTO_CAIXA_POSTAL | VARCHAR2 | Y | nome do ponto de caixa postal comunitaria |
| 7 | CD_CHAVE_CAIXA_POSTA | NUMBER | N | chave da Caixa Postal Comunitaria |
| 8 | DS_ENDERECO_CAIXA_POSTAL | VARCHAR2 | Y | endereco da Caixa Postal Comunitaria |
| 9 | NR_CAIXA_INI | NUMBER | Y | numero inicial da caixa caixa postal comunitaria |
| 10 | NR_CAIXA_FIM | NUMBER | Y | numero final da caixa caixa postal comunitaria |
| 11 | DS_ABRANGENCIA_CX_POSTAL | VARCHAR2 | Y | area de abrangencia da caixa postal comunitaria |
| 12 | SN_INTEGRADO | VARCHAR2 | Y | Se ja houve importacao (Sim/Nao) |
| 13 | TP_OPERACAO | VARCHAR2 | N | Tipo da Operação. (I) Incluir, (U) Alterar, (D)Deletar |

---

## DBAMV.ENCONTRO_CONTAS_FNFI
> Tabela de controle dos encontros de contas realizados no módulo financeiro

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ENCONTRO_CONTAS_FNFI | NUMBER | N | Chave sequencial da tabela. |
| 2 | CD_ITCONPAG | NUMBER | Y | Código da parcela do contas a Pagar a qual sofreu o encontro de contas. |
| 3 | CD_PAGCON_PAG | NUMBER | Y | Código do Pagamento gerado a partir do encontro de contas. |
| 4 | CD_ITCON_PAG_ENCONTRO | NUMBER | Y | Código da parcelado do contas a pagar que creditou a parcela do contas a pagar original através d... |
| 5 | CD_RECCON_REC | NUMBER | Y | Código do recebimento gerado a partir do encontro de contas. |
| 6 | CD_ITCON_REC | NUMBER | Y | Código da parcela do contas a Receber a qual sofreu o encontro de contas. |
| 7 | CD_ITCON_REC_ENCONTRO | NUMBER | Y | Código da parcelado do contas a Receber que debitou a parcela do contas a receber original atravé... |
| 8 | CD_USUARIO_OPERACAO | VARCHAR2 | Y | Usuário responsável pela operação. |
| 9 | CD_MULTI_EMPRESA | NUMBER | Y | Código da Empresa |
| 10 | CD_NOTA_CREDITO_DEBITO_FNFI | NUMBER | Y | Código da nota crédito e debito. |
| 11 | DT_OPERACAO | DATE | Y | Data Operação. |
| 12 | VL_OPERACAO | NUMBER | Y | Valor operação. |

---

## DBAMV.EXEC_GUIA_EXAMES
> Tabela ser? respons?vel por gerar as informa??es da integra??o e recebimento das informa??es da guia fruto

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EXEC_EXAME | NUMBER | N | C?digo gerado por sequence |
| 2 | TP_EXAME | VARCHAR2 | N | Tipo de Exames Laborat?rio (L) , Imagens(I) |
| 3 | CD_CONVENIO | NUMBER | N | C?digo do conv?nio |
| 4 | CD_CON_PLA | NUMBER | N | C?digo do Plano |
| 5 | CD_PRESTADOR_EXEC | NUMBER | N | C?digo do Prestador executante |
| 6 | CD_PRESTADOR_SOLIC | NUMBER | N |  |
| 7 | DS_GUIA | VARCHAR2 | N | Número da guia de autorização |
| 8 | CD_ATENDIMENTO | NUMBER | Y | Código do atendimento |
| 9 | CD_PACIENTE | NUMBER | Y | Código do paciente |
| 10 | CD_SUB_PLANO | VARCHAR2 | Y | Código sub-plano |
| 11 | CD_ESPECIALID | NUMBER | N | Código da especialidade |
| 12 | CD_ORI_ATE | NUMBER | N | Código de Origem |
| 13 | CD_TIPO_INTERNACAO | NUMBER | N | Código do tipo de internação do paciente |
| 14 | CD_LOCAL_PROCED | NUMBER | N | Código local de procedência |
| 15 | CD_SETOR | NUMBER | Y |  |
| 16 | CD_SET_EXA | NUMBER | Y | Código do setor do exame |
| 17 | CD_REGISTRO_PRINCIPAL | NUMBER | Y |  |

---

## DBAMV.EXTRA_CAIXA
> ARMAZENAR INFORMA??ES QUE NAO ACOMPANHA SALDO CAIXA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EXTRA_CAIXA | NUMBER | N | CODIGO |
| 2 | DS_USUARIO | VARCHAR2 | Y | USUARIO UE EFETUA O REGISTRO |
| 3 | DS_RESPONSAVEL | VARCHAR2 | Y | RESPONSAVEL PELO CAIXA |
| 4 | DT_INCLUSAO | DATE | Y | DATA DE INCLUSAO |
| 5 | DS_CONTATO_SETOR | VARCHAR2 | Y | CODIGO DO SETOR/CONTATO |
| 6 | CD_TIPO | NUMBER | Y | USUARIO DE CONCLUSAO |
| 7 | DT_CONCLUSAO | DATE | Y |  |
| 8 | DS_USUARIO_CONCLUSAO | VARCHAR2 | Y |  |
| 9 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 10 | TP_STATUS | VARCHAR2 | N | STATUS DA CONTA |
| 11 | SN_ALTERADO | VARCHAR2 | N |  |
| 12 | VL_CAIXA | NUMBER | N | VALOR INSERIDO NO CAIXA |

---

## DBAMV.FAIXA_ACEITE_GLOSA
> TABELA PARA ARMAZENAR DADOS DAS FAIXAS DE ACEITE DE GLOSA AUTOMATICO NOS CASOS DAS EXCESSÕES DE CADA CONVENIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FAIXA_ACEITE_GLOSA | NUMBER | N | Código da faixa de aceite de glosa |
| 2 | CD_CONVENIO | NUMBER | N | Código do convênio |
| 3 | CD_MOTIVO_ACEITE | NUMBER | Y | Código do motivo de aceite |
| 4 | VL_FAIXA_ACEITE_MENOR | NUMBER | Y | Valor da faixa inicial para aceite |
| 5 | VL_FAIXA_ACEITE_MAIOR | NUMBER | Y | Valor da faixa final para aceite |
| 6 | CD_MULTI_EMPRESA | NUMBER | Y | Código da empresa |
| 7 | TP_CONTA | VARCHAR2 | Y | Tipo da conta se é H - hospitalar ou A - ambulatorial ou t - todos |
| 8 | CD_MOTIVO_GLOSA | NUMBER | N | Código do motivo de glosa obrigatório |
| 9 | CD_JUSTIFICA_GLOSA | NUMBER | Y | código da justificativa opcional |
| 10 | TP_REGRA | VARCHAR2 | Y | Tipo da regra de aceite: P - Procedimento, C - Conta, A - Atendimento, N - Nota Fiscal, R - Remessa |

---

## DBAMV.FAIXA_DESCONTO
> Tabela de regra do desconto por faixa de valor da fatura do convenio

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FAIXA_DESCONTO | NUMBER | N | Codigo sequencial da regra do desconto por faixa de valor da fatura do convenio |
| 2 | DS_FAIXA_DESCONTO | VARCHAR2 | N | Descric?o da regra do desconto por faixa de valor da fatura do convenio |
| 3 | VL_INICIAL | NUMBER | N | Valor inicial da regra do desconto por faixa de valor da fatura do convenio |
| 4 | VL_FINAL | NUMBER | N | Valor final da regra do desconto por faixa de valor da fatura do convenio |
| 5 | DT_VIGENCIA | DATE | N | Data de vigencia ( a partir de ) da regra do desconto por faixa de valor da fatura do convenio |

---

## DBAMV.FAIXA_DETALHE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FAIXA_DETALHE | NUMBER | N |  |
| 2 | CD_DETALHAMENTO | NUMBER | N |  |
| 3 | VL_PERCENTUAL | NUMBER | N |  |
| 4 | VL_DEDUCAO | NUMBER | Y |  |
| 5 | VL_FAIXA | NUMBER | N |  |
| 6 | VL_DEDUCAO_DEPENDENTE | NUMBER | Y | Indica o Valor de Deduc?o por Dependente |
| 7 | DT_VIGENCIA | DATE | Y | Data que a aliquota entrou em vigor |
| 8 | VL_PERCENTUAL_TOTAL | NUMBER | Y | Percentual Total do Imposto (Incluindo o percentual retido) |
| 9 | CD_CIDADE | NUMBER | Y | Código da cidade |
| 10 | VL_PERCENTUAL_ESPECIAL | NUMBER | Y | Percentual especial do o INSS |

---

## DBAMV.FAIXA_ETARIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FAIXA_ETARIA | NUMBER | N |  |
| 2 | DS_FAIXA_ETARIA | VARCHAR2 | N |  |
| 3 | NR_IDADE_INICIAL | NUMBER | Y |  |
| 4 | NR_IDADE_FINAL | NUMBER | Y |  |

---

## DBAMV.FAIXA_ETARIA_PRO_INVASIVO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FAIXA_ETARIA_PRO_INVASIVO | NUMBER | N | Código da faixa etária |
| 2 | CD_PRO_INVASIVO | NUMBER | N | Código do procedimento invasivo ao qual a faixa etária está relacionada |
| 3 | DS_DESCRICAO | VARCHAR2 | N | Descrição da faixa etária |
| 4 | NR_ANO_INICIAL | NUMBER | Y | Ano inicial |
| 5 | NR_MES_INICIAL | NUMBER | Y | Mês inicial |
| 6 | NR_DIA_INICIAL | NUMBER | Y | Dia inicial |
| 7 | NR_ANO_FIM | NUMBER | Y | Ano final |
| 8 | NR_MES_FIM | NUMBER | Y | Mês final |
| 9 | NR_DIA_FIM | NUMBER | Y | Dia final. |
| 10 | NR_TEMPO_PERMANENCIA | NUMBER | N | Tempo de permanência do dispositivo para esta faixa etária |
| 11 | TP_UNID_TEMPO | VARCHAR2 | N | Informa a unidade de tempo, sendo D =  dias e H = horas |
| 12 | NR_TEMPO_ANTECEDENCIA | NUMBER | Y | Tempo de antecedência para alerta de troca do dispositivo para esta faixa etária |
| 13 | TP_UNID_TEMPO_ANTECEDENCIA | VARCHAR2 | Y | Informa a unidade de tempo, sendo D =  dias e H = horas |
| 14 | SN_ATIVO | VARCHAR2 | N | Descreve se a faixa etária está ativa |

---

## DBAMV.FAIXA_ETARIA_RELATORIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FAIXA_ETARIA_RELATORIO | NUMBER | N |  |
| 2 | DS_FAIXA_ETARIA_RELATORIO | VARCHAR2 | N |  |
| 3 | TP_FAIXA | VARCHAR2 | N |  |
| 4 | NR_IDADE_INICIAL | NUMBER | N |  |
| 5 | NR_IDADE_FINAL | NUMBER | N |  |

---

## DBAMV.FAIXA_FATORES_TABFAT
> Tabela de faixa de fatores para criac?o de vigencias de tabela de faturamento a partir de valor do estoque

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FAIXA_FATORES | NUMBER | N | Sequencial da tabela |
| 2 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da multi-empresa |
| 3 | TP_GRU_PRO | VARCHAR2 | Y | Tipo do grupo de procedimento |
| 4 | CD_GRU_PRO | NUMBER | Y | Codigo do grupo de procedimento |
| 5 | CD_PRO_FAT | VARCHAR2 | Y | Codigo do procedimento |
| 6 | NR_FAIXA_INICIAL | NUMBER | N | Faixa inicial para definic?o de faixa a partir do valor do estoque |
| 7 | NR_FAIXA_FINAL | NUMBER | N | Faixa final para definic?o de faixa a partir do valor do estoque |
| 8 | VL_BASE | NUMBER | Y | Valor base que substitui o valor do estoque (quando informado) |
| 9 | VL_FATOR | NUMBER | N | Fator de multiplicac?o usado para definir o valor de vigencia para a tabela de faturamento |

---

## DBAMV.FAIXA_GUIA_CONVENIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FAIXA_GUIA | NUMBER | N |  |
| 2 | CD_CONVENIO | NUMBER | N |  |
| 3 | DT_VIGENCIA | DATE | N |  |
| 4 | NR_INICIAL | NUMBER | N |  |
| 5 | NR_FINAL | NUMBER | N |  |
| 6 | TP_GUIA | VARCHAR2 | Y | Tipo da Faixa de Guias: G-Guia; U-Solic.Unica; I-Solic.Internacao; S-Solic.SP/SADT.; E-Solic.Envi... |
| 7 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da multi-empresa |
| 8 | TP_GERACAO_NR_GUIA | VARCHAR2 | Y | Tipo da gerac?o do nr guia |
| 9 | NR_TAMANHO_FIXO | NUMBER | Y | Tamanho fixo para o numero da guia, completando com zeros a esquerda |

---

## DBAMV.FAIXA_GUIA_SUS
> Entrada e processamento das faixas de guias.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MULTI_EMPRESA | NUMBER | Y | Identificador da Empresa. |
| 2 | DT_COMPETENCIA | DATE | N | Data da competencia da guia. |
| 3 | NR_GUIA | VARCHAR2 | N | Numero da guia. |
| 4 | TP_GUIA | VARCHAR2 | N | Tipo da guia. |
| 5 | CD_USUARIO | VARCHAR2 | N | Codigo do usuario. |
| 6 | DT_PROCESSAMENTO | DATE | N | Data do processamento. |
| 7 | DT_VALIDADE_INICIAL | DATE | N | Data da validade inicial. |
| 8 | DT_VALIDADE_FINAL | DATE | N | Data da validade final. |
| 9 | DT_USADA | DATE | Y | Data usada. |
| 10 | SN_USADA | VARCHAR2 | Y | Indica se a guia esta usada ou n?o. |
| 11 | TP_INSTRUMENTO | VARCHAR2 | N | Tipo do instrumento do registro. |
| 12 | CD_CONTA | NUMBER | Y | Guarda a conta que foi utilizada a Guia |
| 13 | CD_LAUDO_APAC | VARCHAR2 | Y | Campo para registrar o tipo de Laudo APAC |

---

## DBAMV.FAIXA_HOR_REL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FAIXA_HOR_REL | NUMBER | N |  |
| 2 | HR_INI | DATE | N |  |
| 3 | HR_FIM | DATE | N |  |

---

## DBAMV.FAIXA_NOTA_IPE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 2 | TP_NOTA | VARCHAR2 | N |  |
| 3 | NR_INICIAL | NUMBER | Y |  |
| 4 | NR_FINAL | NUMBER | Y |  |
| 5 | CD_APR_CONTA_MEIO_MAG | NUMBER | N |  |

---

## DBAMV.FAIXA_PANICO_CULTURA_DILIG
> TABELA PARA CONFIGURAR A FAIXA DE PÂNICO DO RESULTADO CULTURA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FAIXA_PANICO_CULTURA_DILIG | NUMBER | N | CÓDIGO ÚNICO DE IDENTIFICAÇÃO DA FAIXA DE PÂNICO DO RESULTADO CULTURA |
| 2 | CD_CONFIG_DILIGENCIAMENTO | NUMBER | N | CÓDIGO DE CONFIGURAÇÃO DE DILIGENCIAMENTO |
| 3 | TP_OPERACAO | VARCHAR2 | N | OPERAÇÃO: = - IGUAL E <> - DIFERENTE |
| 4 | CD_TIPO_RESULTADO_CULTURA | NUMBER | N | CÓDIGO DE TIPO DE RESULTADO CULTURA |

---

## DBAMV.FAIXA_PERCENTUAL_CONSIGNADO
> TABELA DE FAIXA DE PERCENTUAL CONSIGNADO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MULTI_EMPRESA | NUMBER | N | CODIGO MULTI-EMPRESA |
| 2 | CD_CONVENIO | NUMBER | N | CODIGO DO CONVENIO |
| 3 | CD_ITFXA_PERC_CONSIG | NUMBER | N | Item da Faixa de Percentual |
| 4 | VL_FAIXA_INICIAL | NUMBER | N | VALOR INICIAL DA FAIXA |
| 5 | VL_FAIXA_FINAL | NUMBER | N | VALOR FINAL DA FAIXA |
| 6 | VL_PERCENTUAL | NUMBER | N | VALOR DO PERCENTUAL |
| 7 | SN_ATIVO | VARCHAR2 | N | Informa se a faixa de percentual consignado esta ativo ou n?o |
| 8 | DT_VIGENCIA | DATE | Y | Informa a data vigente da faixa de percentual consignado |
| 9 | VL_TETO_COBRANCA | NUMBER | N | VALOR DO TETO DE COBRANÇA |
| 10 | CD_PERCENTUAL_CONSIGNADO | NUMBER | Y |  |

---

## DBAMV.FAIXA_PRECOS_FFCV

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CODIGO | NUMBER | N |  |
| 2 | VL_PRECO_INICIAL | NUMBER | N |  |
| 3 | VL_PRECO_FINAL | NUMBER | N |  |
| 4 | VL_PERCENTUAL | NUMBER | N |  |

---

## DBAMV.FAIXA_REP_VARIAVEL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FAIXA_REP_VARIAVEL | NUMBER | N |  |
| 2 | CD_MULTI_EMPRESA | NUMBER | Y |  |
| 3 | DT_VIGENCIA_INICIAL | DATE | Y |  |
| 4 | DT_VIGENCIA_FINAL | DATE | Y |  |
| 5 | QT_CIRURGIA_INICIAL | NUMBER | Y |  |
| 6 | QT_CIRURGIA_FINAL | NUMBER | Y |  |
| 7 | VL_PERCENTUAL | NUMBER | Y |  |

---

## DBAMV.FECHA_FINANCEIRO
> Fechamento Financeiro

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FECHAMENTO | NUMBER | N | Codigo do Fechamento |
| 2 | CD_EMPRESA | NUMBER | N | Codigo da Empresa |
| 3 | CD_EXERCICIO | VARCHAR2 | N | Codigo do Exercicio |
| 4 | DT_FECHAMENTO | DATE | N | Data do Fechamento |
| 5 | QT_REGISTRO | NUMBER | N | Sequencia de Registros do Fechamento |
| 6 | CD_USUARIO | VARCHAR2 | N | Codigo do Usuario |

---

## DBAMV.FINANC_CONTROLE_SALDO
> Armezana a ultima data em o fluxo de caixa foi sincronizado

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DT_SALDO_GERADO | DATE | N | Data da sincronização. |
| 2 | DT_INI_PROX_GERACAO | DATE | Y | Data da proxima sincronização. |

---

## DBAMV.FINAN_CONTROLE
> Controle de processamento de dados FNFI

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONTROLE | NUMBER | N | numero sequencial identificador |
| 2 | CD_SISTEMA | VARCHAR2 | N | nome do sistema |
| 3 | CD_MODULO | VARCHAR2 | N | nome da tela |
| 4 | DS_CONTROLE | VARCHAR2 | N | nome do processameno |
| 5 | SN_EXECUCAO | VARCHAR2 | Y | se ja foi executado |
| 6 | CD_USUARIO | VARCHAR2 | N | usuario que efetuou |
| 7 | DH_REGISTRO | DATE | Y | data e hora do registro |

---

## DBAMV.FINAN_EXTERNO
> TABELA DE LOTES DAS MOVIMENTAÇÔES FINANCEIRAS.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FINAN_EXTERNO | NUMBER | N | CÓDIGO FINANCEIRO EXTERNO. |
| 2 | CD_FINAN_EXTERNO_LOTE | NUMBER | N | CÓDIGO DO LOTE DE MOVIMENTAÇÂO. |
| 3 | DS_FINAN_EXTERNO | VARCHAR2 | N | DESCRIÇÂO FINANCEIRO EXTERNO. |
| 4 | DT_FINAN_EXTERNO | DATE | N | DATA FINANCEIRO EXTERNO. |
| 5 | CD_SETOR | NUMBER | N | CÓDIGO DO SETOR. |
| 6 | CD_FORNECEDOR | NUMBER | Y | CÓDIGO DO FORNECEDOR. |
| 7 | TP_VALOR | VARCHAR2 | N | TIPO VALOR. |
| 8 | VL_LANCADO | NUMBER | N | VALOR LANÇADO. |
| 9 | DT_CRIACAO | DATE | Y | DATA DE CRIAÇÂO. |
| 10 | DT_ALTERACAO | DATE | Y | DATA DE ALTERAÇÃO. |
| 11 | CD_MULTI_EMPRESA | NUMBER | Y | Código da empresa |

---

## DBAMV.FINAN_EXTERNO_LOTE
> TABELA DE LOTES DAS MOVIMENTAÇÔES FINANCEIRAS EXTERNAS.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FINAN_EXTERNO_LOTE | NUMBER | N | CÓDIGO DO LOTE DE MOVIMENTAÇÂO. |
| 2 | DS_FINAN_EXTERNO | VARCHAR2 | Y | DESCRIÇÂO DO LOTE DE MOVIMENTAÇÂO. |
| 3 | CD_CONTA_FINANC | NUMBER | Y | CÓDIGO CONTA FINANCEIRA. |

---

## DBAMV.FINAN_ITEM_CONTROLE
> Item de controle de processamento de dados FNFI

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITEM_CONTROLE | NUMBER | N | numero sequencial identificador |
| 2 | CD_CONTROLE | NUMBER | N | numero identificador do controle |
| 3 | CD_USUARIO | VARCHAR2 | N | usuario que efetuou |
| 4 | DH_INICIAL | DATE | Y | data e hora do inicio do processamento |
| 5 | DH_FINAL | DATE | Y | data e hora do final do processamento |
| 6 | QT_REGISTROS | NUMBER | N | quantidade de registro encontrados |
| 7 | QT_PROCESSADOS | NUMBER | N | quantidade de registros processados |

---

## DBAMV.FINAN_LOTE_IMPOSTO
> Lote de imposto

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOTE | NUMBER | N | numero sequencial identificador |
| 2 | DS_LOTE | VARCHAR2 | N |  |
| 3 | DT_COMPETENCIA_INI | DATE | Y | data do inicio da competencia para calculo do imposto |
| 4 | DT_ABERTURA | DATE | N | data e hora de abertura do lote |
| 5 | DT_COMPETENCIA_FIM | DATE | Y | data de fim da competencia para calculo do imposto |
| 6 | DT_FECHAMENTO | DATE | Y | data e hora do fechamento do lote |
| 7 | CD_MULTI_EMPRESA | NUMBER | N | codigo da empresa |
| 8 | CD_USUARIO_ABERT | VARCHAR2 | N | usuario que abriu o lote |
| 9 | CD_USUARIO_FECHA | VARCHAR2 | Y | usuario que fechou o lote |
| 10 | CD_DETALHAMENTO | NUMBER | Y | codigo do detalhamento |
| 11 | CD_CON_PAG | NUMBER | Y | codigo da conta a pagar de imposto gerada para este lote |
| 12 | TP_GERACAO | VARCHAR2 | Y |  |
| 13 | SN_PLANO_SAUDE | VARCHAR2 | N | Indica se irá incluir Impostos do Plano de saúde: Sim / Nao |
| 14 | CD_ATIVIDADE | VARCHAR2 | Y | Indica código da atividade |
| 15 | CD_FORNECEDOR | NUMBER | Y | Indica código do fornecedor |
| 16 | TP_DETALHAMENTO | VARCHAR2 | N | Indica o Tipo de Detalhamento (IR, ISS, INSS, PIS, CONFINS, CSLL, ITBMS e Outros). |

---

## DBAMV.FINAN_LOTE_IMPOSTO_IT
> Item do lote de imposto

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOTE | NUMBER | N | numero identificador do Lote Imposto |
| 2 | CD_ITEM | NUMBER | N | numero sequencial identificador |
| 3 | CD_RECCON_REC | NUMBER | Y | numero identificador do Recebimento |
| 4 | VL_BASE | NUMBER | N | valor do recebimento utilizado como base de calculo para o imposto |
| 5 | VL_IMPOSTO | NUMBER | N | valor do imposto |
| 6 | VL_ALIQUOTA | NUMBER | N | valor da aliquota aplicada ao calculo do imposto |
| 7 | SN_EDITADO | VARCHAR2 | N | informa se o valor do imposto foi alterado pelo usuario |
| 8 | CD_ITCON_REC | NUMBER | Y | numero identificador do item do recebimento |
| 9 | DT_REGISTRO | DATE | N | data e hora da inserc?o do registro |
| 10 | CD_CON_PAG | NUMBER | Y |  |
| 11 | CD_CON_REC | NUMBER | Y | Código da con_rec |
| 12 | VL_EDITADO | NUMBER | Y | Valor do imposto editado |
| 13 | CD_USUARIO_REG | VARCHAR2 | Y | Código do usuário do registro |
| 14 | VL_BAIXADO | NUMBER | Y | Valor baixado da parcela |
| 15 | VL_PERCENTUAL | NUMBER | Y | Valor percentual editado com a alteracao do vl imposto |

---

## DBAMV.FINAN_LOTE_TRIBUTO
> Lote de DCTF

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOTE | NUMBER | N | Código do Lote da DCTF |
| 2 | DS_LOTE | VARCHAR2 | N |  |
| 3 | DT_COMPETENCIA_INI | DATE | N | Data de inicio da extração de contas de imposto |
| 4 | DT_COMPETENCIA_FIM | DATE | N | Data de final  da extração de contas de imposto |
| 5 | CD_EMPRESA | NUMBER | N | Código da empresa da extração |
| 6 | SN_FILIAIS | VARCHAR2 | N | Extrair também das filiais (S/N) |
| 7 | CD_RECB_RETIFICAR | VARCHAR2 | Y | Código do recibo de envio |
| 8 | TP_QUALIFICACAO | VARCHAR2 | N | Tipo de qualificação da pessoa jurídica |
| 9 | TP_TRIBUTACAO | VARCHAR2 | N | Tipo de tributação da empresa |
| 10 | SN_BALANCO | VARCHAR2 | N | Balanço/Balencete de suspensão no mês |
| 11 | SN_SCP | VARCHAR2 | N | Débitos de SCP a serem cadastrados |
| 12 | TP_SITUACAO | VARCHAR2 | Y | Situação no mês |
| 13 | TP_LAYOUT | VARCHAR2 | N | Tipo do lay-out |
| 14 | CD_VERSAO | VARCHAR2 | N | Código da versão da DCTF |
| 15 | DT_ABERTURA | DATE | N | Momento da abertura do lote |
| 16 | CD_USUARIO_ABERT | VARCHAR2 | N | Usuário do momento da abertura do lote |
| 17 | CD_RECIBO | VARCHAR2 | Y |  |
| 18 | DT_FECHAMENTO | DATE | Y | Momento do fechamento do lote |
| 19 | CD_USUARIO_FECHA | VARCHAR2 | Y | Usuário do omento do fechamento do lote |

---

## DBAMV.FINAN_LOTE_TRIBUTO_IT
> Lote de itens da DCTF

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOTE | NUMBER | N | Código do lote da DCTF |
| 2 | CD_ITEM | NUMBER | N | Código do item da DCTF |
| 3 | CD_EMPRESA | NUMBER | N | Código da empresa da extração |
| 4 | CD_ITCON_PAG | NUMBER | Y | Código da parcela da conta de imposto |
| 5 | DT_FINANCEIRO | DATE | N | Data da entrada financeira da conta |
| 6 | DT_VENCIMENTO | DATE | N | Data de vencimento da conta de imposto |
| 7 | CD_DETALHAMENTO | NUMBER | N |  |
| 8 | CD_ATIVIDADE | VARCHAR2 | N | Código da atividade |
| 9 | CD_VARIACAO | VARCHAR2 | N | Variação do código da atividade |
| 10 | VL_IMPOSTO | NUMBER | N | Valor do imposto |
| 11 | SN_INSERIDO | VARCHAR2 | N | Usuário inseriu o registro (S/N) |
| 12 | SN_EDITADO | VARCHAR2 | N | Usuário alterou o registro (S/N) |
| 13 | DT_REGISTRO | DATE | N | Data do registro |
| 14 | CD_USUARIO | VARCHAR2 | N | Usuário do registro |

---

## DBAMV.FINAN_PERMISSAO
> Tabela Permissao

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FINAN_PERMISSAO | NUMBER | N | Cdigo do registro |
| 2 | CD_PROCESSO | NUMBER | N | Cdigo do processo |
| 3 | CD_USUARIO_PERMISSAO | VARCHAR2 | N | Cdigo do usuario |
| 4 | TP_PERMISSAO | VARCHAR2 | N | Tipo de permissao |
| 5 | DT_VIGENCIA_INI | DATE | N | Data inicio virgente |
| 6 | DT_VIGENCIA_FIN | DATE | Y | Data final virgente |
| 7 | VL_INICIAL | NUMBER | Y | Valor inicial |
| 8 | VL_FINAL | NUMBER | Y | Valor final |
| 9 | DT_INSERT | DATE | N | Data do registro |
| 10 | CD_USUARIO_INS | VARCHAR2 | N | Usurio do registro |
| 11 | TP_STATUS | VARCHAR2 | N | Status do registro |

---

## DBAMV.FINAN_RECEB
> Tabela de lote de recebimento importado

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FINAN_RECEB | NUMBER | N | Identificador do registro |
| 2 | CD_NOTA_FISCAL | NUMBER | Y | Código da nota fiscal |
| 3 | CD_CON_REC | NUMBER | Y | Código da conta a receber |
| 4 | CD_ITCON_REC | NUMBER | Y | Código da parcela da conta a receber |
| 5 | CD_RECCON_REC | NUMBER | Y |  |
| 6 | CD_CONVENIO | NUMBER | Y | Código do convênio |
| 7 | CD_USUARIO_IMPO | VARCHAR2 | N | Código do usuário que fez a importação |
| 8 | CD_USUARIO_RECB | VARCHAR2 | Y | Data do usuário que fez o recebimento |
| 9 | DT_IMPORTACAO | DATE | Y | Data da importação do arquivo |
| 10 | DT_RECEBIMENTO | DATE | Y | Data da criação da reccon_rec |
| 11 | VL_INFORMADO | NUMBER | N | Valor informado no faturamento |
| 12 | VL_PROCESSADO | NUMBER | N | Valor processado pelo convênio |
| 13 | VL_GLOSADO | NUMBER | Y | Valor glosado |
| 14 | VL_DESCONTO | NUMBER | Y | Valor somado dos descontos |
| 15 | VL_ACRESCIMO | NUMBER | Y | Valor somado dos acréscimos |
| 16 | VL_IMPOSTO | NUMBER | Y | Valor somado dos impostos |
| 17 | VL_INVALIDO | NUMBER | Y | Valor inválido |
| 18 | VL_LIBERADO | NUMBER | N | Valor somado recebido |
| 19 | CD_EMPRESA_LOGADA | NUMBER | Y | Empresa logada no momento da importação |
| 20 | CD_REMESSA | NUMBER | Y | Código da remessa |
| 21 | CD_REMESSA_GLOSA | NUMBER | Y | Código da remessa glosa |
| 22 | NR_LOTE | NUMBER | N | Lote de integração |
| 23 | CD_PROTOCOLO | VARCHAR2 | Y | Número do protocolo |
| 24 | TP_ORIGEM | VARCHAR2 | N | Origem da importação |
| 25 | CD_ORIGEM | VARCHAR2 | Y | Código da origem |
| 26 | QT_EXECUTADO | NUMBER | Y | Quantidade de itens processados |
| 27 | TP_STATUS | VARCHAR2 | N | /*AB = ABERTO, PR = PROCESSADO, CA = CANCELADO*/ |
| 28 | SN_FECHADO | VARCHAR2 | N |  |

---

## DBAMV.FINAN_RECEB_ITEM
> Tabela de itens do lote de recebimento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FINAN_RECEB_ITEM | NUMBER | N | Identicador do registro |
| 2 | CD_FINAN_RECEB | NUMBER | N | Código do lote |
| 3 | CD_ITFAT_NF | NUMBER | Y | Código do item |
| 4 | VL_INFORMADO | NUMBER | N | Valor informado no faturamento |
| 5 | VL_PROCESSADO | NUMBER | N | Valor processado pelo convênio |
| 6 | VL_GLOSADO | NUMBER | Y | Valor glosado |
| 7 | VL_DESCONTO | NUMBER | Y | Valor somado dos descontos |
| 8 | VL_ACRESCIMO | NUMBER | Y | Valor somado dos acréscimos |
| 9 | VL_IMPOSTO | NUMBER | Y | Valor somado dos impostos |
| 10 | VL_LIBERADO | NUMBER | N | Valor somado recebido |
| 11 | CD_MOTIVO_1 | NUMBER | Y |  |
| 12 | CD_MOTIVO_2 | NUMBER | Y |  |
| 13 | CD_MOTIVO_3 | NUMBER | Y |  |
| 14 | CD_ORIGEM | NUMBER | Y | Código da origem |
| 15 | CD_ORIGEM_ITEM | NUMBER | Y |  |
| 16 | CD_REMESSA | NUMBER | Y | Código da remessa |
| 17 | CD_REMESSA_GLOSA | NUMBER | Y | Código da remessa glosa |
| 18 | CD_PROCEDIMENTO | VARCHAR2 | Y |  |
| 19 | DS_FALHA | VARCHAR2 | Y | Descrição de falha no processamento |
| 20 | CD_REG_FAT | NUMBER | Y |  |
| 21 | CD_LANCAMENTO_FAT | NUMBER | Y |  |
| 22 | CD_REG_AMB | NUMBER | Y |  |
| 23 | CD_LANCAMENTO_AMB | NUMBER | Y |  |

---

## DBAMV.FINAN_VARIAVEL
> ARMAZENAS AS VARIAVEIS FINANCEIRAS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FINAN_VARIAVEIS | VARCHAR2 | N | CÓDIGO DA VARIAVEL |
| 2 | DS_VARIAVEL | VARCHAR2 | Y | DESCRIÇÃO DA VARIAVEL |
| 3 | SN_VARIAVEL_MV | VARCHAR2 | Y | ARMAZENA STATUS DA VARIAVEL (S/N) |
| 4 | TXT_QUERY | VARCHAR2 | Y | ARMAZENA A QUERY DA VARIAVEL FINANCEIRA |

---

## DBAMV.FINAN_VERSAO_TRIBUTO
> Arquivo de versões dos lay-outs financeiros

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | TP_LAYOUT | VARCHAR2 | N | Código do lay-out |
| 2 | CD_VERSAO | VARCHAR2 | N | Código da versão do lay-out |
| 3 | DS_VERSAO | VARCHAR2 | N | Descrição da versão do lay-out |
| 4 | DS_OBSERVACAO | VARCHAR2 | N | Texto relacionado a versão |
| 5 | DT_INICIO | DATE | N | Data de início da vigência da versão |
| 6 | DT_FINAL | DATE | Y | Data de fim da vigência da versão |
| 7 | DT_REGISTRO | DATE | N | Momento do registro da versão |
| 8 | CD_USUARIO | VARCHAR2 | N | Usuário do registro da versão |

---

## DBAMV.FINA_ADMINISTRADORA
> Administradora de portadores financeiros

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ADMINISTRADORA | NUMBER | N | Código da administradora |
| 2 | DS_ADMINISTRADORA | VARCHAR2 | N | Descrição da administradora |
| 3 | TP_ADMINISTRADORA | VARCHAR2 | N | Tipo de administradora |
| 4 | CD_EXTERNO | VARCHAR2 | N | Código Externo |
| 5 | DH_REGISTRO | DATE | N | Data e Hora do Registro |
| 6 | CD_USUARIO_REGISTRO | VARCHAR2 | N | Código do Usuário do Registro |

---

## DBAMV.FINA_CONTA
> Conta de Portador de Títulos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONTA_FINANCEIRA | NUMBER | N | Código externo da conta |
| 2 | DS_CONTA | VARCHAR2 | N | Descrição da conta |
| 3 | TP_CONTA | VARCHAR2 | N | Tipo da conta |
| 4 | TP_FINANCEIRO | VARCHAR2 | N | Tipo financeiro permitido |
| 5 | NR_CONTA | VARCHAR2 | Y |  |
| 6 | DH_ABERTURA | DATE | N | Data e Hora da Abertura da Conta Portadora |
| 7 | DH_FECHAMENTO | DATE | Y | Data e Hora da Fechamento da Conta Portadora |
| 8 | CD_PORTADOR | NUMBER | N | Código da Agência da Conta Portadora |
| 9 | CD_REDUZIDO | NUMBER | N |  |
| 10 | CD_EMPRESA | NUMBER | N | Código da Empresa da Conta Portadora |
| 11 | CD_MOEDA | VARCHAR2 | N |  |
| 12 | NM_GERENTE | VARCHAR2 | Y | Nome do gerente da conta |
| 13 | CD_ORIGEM | NUMBER | Y | Código da tabela origem |
| 14 | TP_AJUSTE_PARCELA | VARCHAR2 | N | Em qual parcela fará o ajuste de arredondamento |
| 15 | SN_EMITE_CHEQUE | VARCHAR2 | N | Emite cheque (S/N) |
| 16 | SN_EMITE_BOLETO | VARCHAR2 | N | Emite boleto (S/N) |
| 17 | TP_BORDERO | VARCHAR2 | N | Tipo de ação sob borderô |
| 18 | TP_STATUS | VARCHAR2 | N | Status da conta financeira |
| 19 | DH_REGISTRO | DATE | N | Data e Hora do Registro |
| 20 | CD_USUARIO_REGISTRO | VARCHAR2 | N | Código do Usuário do Registro |

---

## DBAMV.FINA_LOG
> Log do Financeiro

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOG | NUMBER | N | Código sequencial do log |
| 2 | CD_TELA | VARCHAR2 | N | Código da tela |
| 3 | CD_TABELA | VARCHAR2 | N | Código da tabela |
| 4 | CD_CHAVE | VARCHAR2 | N | Descrição da chave do registro |
| 5 | TP_COMANDO | VARCHAR2 | N | Tipo de comando executado (I-Insert, U-Update, D-Delete) |
| 6 | TX_COMANDO | VARCHAR2 | Y | Texto do comando executado |
| 7 | DH_REGISTRO | DATE | N | Data e Hora do Registro |
| 8 | CD_USUARIO_REGISTRO | VARCHAR2 | N | Código do usuário do registro |

---

## DBAMV.FINA_PERMISSAO
> Tabela de permissões para elementos financeiros

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_USUARIO | VARCHAR2 | N | Código do usuário da permissão |
| 2 | TP_ELEMENTO | VARCHAR2 | N | Tipo de elemento da permissão |
| 3 | CD_ELEMENTO | VARCHAR2 | N | Código do elemento permitido |
| 4 | DH_INICIO | DATE | N | Data e hora início da vigência da permissão |
| 5 | DH_FINAL | DATE | Y | Data e hora final da vigência da permissão |
| 6 | DH_REGISTRO | DATE | N | Data e hora do Registro |
| 7 | CD_USUARIO_REGISTRO | VARCHAR2 | N | Código do usuário do registro |

---

## DBAMV.FINA_TIPO_PGTO
> Tabela de tipos de pagamento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIPO_PAGAMENTO | VARCHAR2 | N | Código do tipo de pagamento |
| 2 | DS_TIPO_PAGAMENTO | VARCHAR2 | N | Descrição do tipo de pagamento |
| 3 | TP_FINANCEIRO | VARCHAR2 | N | Tipo financeiro permitido |
| 4 | SN_BLOQUEADO | VARCHAR2 | N | Tipo de pagamento está bloqueado (S/N) |
| 5 | DH_REGISTRO | DATE | N | Data e hora do registro |
| 6 | CD_USUARIO_REGISTRO | VARCHAR2 | N | Usuário do registro |

---

## DBAMV.FLUXO_DOCUMENTO
> Tabela de Fluxo de Documentos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FLUXO_DOCUMENTO | NUMBER | N | Codigo do fluxo do documento |
| 2 | CD_DOCUMENTO | NUMBER | N | Codigo do documento |
| 3 | CD_SETOR_ORIG | NUMBER | N | Codigo do setor de origem |
| 4 | CD_SETOR_DEST | NUMBER | N | Codigo do setor de destino |
| 5 | SN_MOV_AMB_FECHADA | VARCHAR2 | N | Define se a conta Ambulatorial poderá ser movimentada daquele Setor de Origem, somente se estiver... |

---

## DBAMV.FORMA_PAGTO_ADIANT
> Tabela de Forma de Pagamento de Adiantamento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FORMA_PAGTO_ADIANT | NUMBER | N | Codigo da Forma de Pagamento de Adiantamento |
| 2 | DS_FORMA_PAGTO_ADIANT | VARCHAR2 | Y | Descric?o da Forma de Pagamento de Adiantamento |
| 3 | TX_ADMINISTRATIVA | NUMBER | Y | Taxa Administrativa em % de Reciss?o  de Contrato da Forma de Pagamento |
| 4 | SN_PACOTE | VARCHAR2 | Y | Indica se a forma de pagamento esta associado a algum pacote de negociac?o |
| 5 | QTDE_PARCELA | NUMBER | Y | Quantidade de Parcelas da Forma de Pagamento de Adiantamento |
| 6 | CD_PACOTE | NUMBER | Y | Codigo do Pacote associado a Forma de Pagamento |
| 7 | VL_PARCELA_ADIANT | NUMBER | Y | Valor Parcela (Adiant. Pacote) |
| 8 | VL_TOTAL_ADIANT | NUMBER | Y | Valor Total (Adiant. Pacote) |
| 9 | CD_DESCONTO | NUMBER | Y | Codigo do Desconto para a Forma de Pagamento de Adiantamento |

---

## DBAMV.FORMA_PGTO_REMESSA
> Tabela de Formas de Pagamento Utilizadas na Remessa de Arquivo Eletronico.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FORMA_PGTO_REMESSA | NUMBER | N | Codigo da Forma de Pagamento da Remessa do Arquivo Eletronico. |
| 2 | CD_PROCESSO | NUMBER | N | Codigo do Processo. |
| 3 | CD_LAYOUT_ARQUIVO | NUMBER | N | Codigo do Layout do Arquivo Eletronico. |
| 4 | TP_FORMA_PGTO_REMESSA | VARCHAR2 | N | Tipo da Forma de Pagamento da Remessa do Arquivo Eletronico. |
| 5 | DS_FORMA_PGTO_REMESSA | VARCHAR2 | N | Descric?o da Forma de Pagamento da Remessa. |
| 6 | TP_BOLETO | VARCHAR2 | N | Indica se a forma de pagamento é referente a boletos. M=Mesmo Banco O=Outros Bancos N=Nenhum |

---

## DBAMV.IMPORTA_MOV_CAIXA
> Importac?es via Arquivo Eletronico de Movimentac?es do Caixa

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IMPORTA_MOV_CAIXA | NUMBER | N | Codigo da Importac?o do Arquivo Eletronico. |
| 2 | CD_LOTE_CAIXA | NUMBER | N | Codigo do Lote de Caixa que Recebera as Movimentac?es Importadas. |
| 3 | DS_MAQUINA | VARCHAR2 | N | Nome da Maquina (Computador) que Importou o Arquivo. |
| 4 | CD_USUARIO | VARCHAR2 | N | Codigo do Usuario do Sistema que Importou o Arquivo. |
| 5 | DT_IMPORTA_MOV_CAIXA | DATE | N | Data/Hora de Importac?o do Arquivo. |
| 6 | DS_CAMINHO | VARCHAR2 | N | Caminho (Pasta) onde Localiza-se o Arquivo. |
| 7 | DS_ARQUIVO | VARCHAR2 | N | Nome do Arquivo Importado. |
| 8 | CD_MULTI_EMPRESA | NUMBER | N | Codigo Multi-empresa. |

---

## DBAMV.IMPOSTO_CUSTO_ORCAMENTO
> Tabela auxiliar de exportação de imposto do MV Custos para o MV Orçamento.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DT_COMPETENCIA | DATE | N | Data da competência do imposto. |
| 2 | CD_MULTI_EMPRESA | NUMBER | N | Multi-Empresa do imposto. |
| 3 | CD_SETOR | NUMBER | N | Setor originário do imposto. |
| 4 | CD_ITEM_RES | NUMBER | N | Conta originária do imposto. |
| 5 | VL_IMPOSTO | NUMBER | N | Valor do imposto. |

---

## DBAMV.IMPOSTO_FORNECEDOR
> TABELA PARA CADASTRO DE VALOR DE ISS PARA SER UTILIZADO NA ENTRADA DE SERVIÇO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FORNECEDOR | NUMBER | N | CÓDIGO DO FORNECEDOR VINCULADO AO VALOR DA ALIQUOTA |
| 2 | VL_ALIQUOTA_ISS | NUMBER | N | VALOR DA ALIQUOTA DO ISS PARA ENTRADA DE SERVIÇO |
| 3 | DT_VIGENCIA | DATE | N | DATA DE VIGENCIA DA ALIQUOTA DO ISS PARA ENTRADA DE SERVIÇO |
| 4 | SN_ATIVO | VARCHAR2 | N | SE O CADASTRO DA ALIQUOTA ESTA ATIVO OU NÃO |

---

## DBAMV.ITEXEC_GUIA_EXAMES
> Tabela ser? respons?vel por gerar as informa??es da integra??o e recebimento das informa??es da guia fruto

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITEXEC_EXAME | NUMBER | N | C?digo gerado por sequence |
| 2 | CD_EXEC_EXAME | NUMBER | N | FK da tabela pai |
| 3 | SN_MARCAR | VARCHAR2 | Y | Marcação se S ou N |
| 4 | TP_EXAME | VARCHAR2 | N |  |
| 5 | CD_PRO_FAT | VARCHAR2 | N | C?digo do procedimento |
| 6 | CD_EXA_RX | NUMBER | Y | C?digo do Exame de Imagem |
| 7 | CD_EXA_LAB | NUMBER | Y | C?digo do Exame de laboratório |
| 8 | CD_MODALIDADE_EXAME | NUMBER | Y | Código da modalidade do exame |
| 9 | QT_EXAMES | NUMBER | N | Quantidade de exames |

---

## DBAMV.ITIMPORTA_MOV_CAIXA
> Registros do Arquivo de Importac?o de Movimentac?es do Caixa

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITIMPORTA_MOV_CAIXA | NUMBER | N | Codigo do Registro de Importac?o de Movimentac?o do Caixa. |
| 2 | NR_SEQUENCIAL | NUMBER | N | Numero Sequencial do Registro no Arquivo. |
| 3 | CD_IMPORTA_MOV_CAIXA | NUMBER | N | Codigo de Importac?o do Arquivo de Movimentac?es do Caixa. |
| 4 | DS_OCORRENCIA | VARCHAR2 | N | Descric?o das Ocorrencias Encontradas Durante a Importac?o. |
| 5 | TP_SITUACAO | VARCHAR2 | N | Situac?o do Registro. |
| 6 | CD_USUARIO | VARCHAR2 | Y | Codigo do Usuario que Desprezou o Registro. |
| 7 | DT_DESPREZADO | DATE | Y | Data que o Registro foi Desprezado. |

---

## DBAMV.LCTO_CONTABIL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LCTO_CONTABIL | NUMBER | N |  |
| 2 | DT_LCTO | DATE | N |  |
| 3 | CD_REDUZIDO_CREDITO | NUMBER | Y |  |
| 4 | CD_REDUZIDO_DEBITO | NUMBER | Y |  |
| 5 | VL_LANCADO | NUMBER | N |  |
| 6 | CD_HISTORICO_PADRAO | NUMBER | Y |  |
| 7 | DS_COMPLEMENTO | VARCHAR2 | Y |  |
| 8 | CD_LOTE | NUMBER | Y |  |
| 9 | CD_LCTO_MOVIMENTO | NUMBER | Y |  |
| 10 | VL_MOEDA_LANCADO | NUMBER | Y |  |
| 11 | CD_MOEDA | VARCHAR2 | Y |  |
| 12 | CD_PROCESSO | NUMBER | Y |  |
| 13 | CD_ORIGEM | NUMBER | Y |  |
| 14 | CD_MULTI_EMPRESA | NUMBER | N | Coluna Criada na vers?o v4.5 |
| 15 | DS_COMPLEMENTO_EXT | VARCHAR2 | Y | Descric?o do Complemento Extendida |
| 16 | CD_MULTI_EMPRESA_ORIGEM | NUMBER | Y | Indica qual empresa o lancamento teve origem |
| 17 | SN_TRANSITORIA | VARCHAR2 | Y | Indica se e lancamento em conta transitoria |
| 18 | CD_LANC_AGRUP | NUMBER | Y | Indica se o lancamento contabil faz parte de agrupamento. |
| 19 | CD_LCTO_CONTABIL_INTEGRA | VARCHAR2 | Y | Codigo do lancamento contabil (de-para) |
| 20 | CD_SEQ_INTEGRA | NUMBER | Y | Codigo sequencial da integrac?o |
| 21 | DT_INTEGRA | DATE | Y | Data em que o registro foi integrado |
| 22 | CD_LCTO_MOVIMENTO_INTEGRA | VARCHAR2 | Y | Codigo do movimento de lancamento (de-para) |
| 23 | SN_PROCES_VARIACAO_CAMBIAL | VARCHAR2 | Y | Informa se o registro foi processado pela variac?o cambial. |
| 24 | CD_CONCILIACAO | NUMBER | Y | Código original do movimento para conciliação |
| 25 | CD_AUXILIAR_CRD | NUMBER | Y | Código auxiliar da conta contábil de crédito |
| 26 | CD_AUXILIAR_DEB | NUMBER | Y | Código auxiliar da conta contábil de débito |
| 27 | NR_DOCUMENTO | VARCHAR2 | Y | Número do documento de origem |
| 28 | DS_ORIGEM_OBJ | VARCHAR2 | Y | Descrição de qual objeto esta sendo feito o insert |
| 29 | CD_ORIGEM_OBJ | NUMBER | Y | Codigo referente ao insert efetuado |

---

## DBAMV.LCTO_CONTABIL_AUX

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LCTO_CONTABIL | NUMBER | N |  |
| 2 | DT_LCTO | DATE | Y |  |
| 3 | CD_REDUZIDO_CREDITO | NUMBER | Y |  |
| 4 | CD_REDUZIDO_DEBITO | NUMBER | Y |  |
| 5 | VL_LANCADO | NUMBER | Y |  |
| 6 | CD_HISTORICO_PADRAO | NUMBER | Y |  |
| 7 | DS_COMPLEMENTO | VARCHAR2 | Y |  |
| 8 | CD_LOTE | NUMBER | Y |  |
| 9 | CD_LCTO_MOVIMENTO | NUMBER | Y |  |
| 10 | VL_MOEDA_LANCADO | NUMBER | Y |  |
| 11 | CD_MOEDA | VARCHAR2 | Y |  |
| 12 | CD_PROCESSO | NUMBER | Y |  |
| 13 | CD_ORIGEM | NUMBER | Y |  |
| 14 | CD_MULTI_EMPRESA | NUMBER | Y | Coluna Criada na vers?o v4.5 |
| 15 | DS_COMPLEMENTO_EXT | VARCHAR2 | Y | Descric?o do Complemento Extendida |
| 16 | CD_MULTI_EMPRESA_ORIGEM | NUMBER | Y | Indica qual empresa o lancamento teve origem |
| 17 | SN_TRANSITORIA | VARCHAR2 | Y | Indica se e lancamento em conta transitoria |
| 18 | CD_LANC_AGRUP | NUMBER | Y | Indica se o lancamento contabil faz parte de agrupamento. |
| 19 | CD_LCTO_CONTABIL_INTEGRA | VARCHAR2 | Y | Codigo do lancamento contabil (de-para) |
| 20 | CD_SEQ_INTEGRA | NUMBER | Y | Codigo sequencial da integrac?o |
| 21 | DT_INTEGRA | DATE | Y | Data em que o registro foi integrado |
| 22 | CD_LCTO_MOVIMENTO_INTEGRA | VARCHAR2 | Y | Codigo do movimento de lancamento (de-para) |
| 23 | SN_PROCES_VARIACAO_CAMBIAL | VARCHAR2 | Y | Informa se o registro foi processado pela variac?o cambial. |
| 24 | CD_CONCILIACAO | NUMBER | Y | Codigo original do movimento para conciliac?o |
| 25 | CD_AUXILIAR_CRD | NUMBER | Y | Codigo auxiliar da conta contabil de credito |
| 26 | CD_AUXILIAR_DEB | NUMBER | Y | Codigo auxiliar da conta contabil de debito |
| 27 | NR_DOCUMENTO | VARCHAR2 | Y | Numero do documento de origem |

---

## DBAMV.LCTO_CONTABIL_BKP_18_02_2022

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LCTO_CONTABIL | NUMBER | N |  |
| 2 | DT_LCTO | DATE | N |  |
| 3 | CD_REDUZIDO_CREDITO | NUMBER | Y |  |
| 4 | CD_REDUZIDO_DEBITO | NUMBER | Y |  |
| 5 | VL_LANCADO | NUMBER | N |  |
| 6 | CD_HISTORICO_PADRAO | NUMBER | Y |  |
| 7 | DS_COMPLEMENTO | VARCHAR2 | Y |  |
| 8 | CD_LOTE | NUMBER | Y |  |
| 9 | CD_LCTO_MOVIMENTO | NUMBER | Y |  |
| 10 | VL_MOEDA_LANCADO | NUMBER | Y |  |
| 11 | CD_MOEDA | VARCHAR2 | Y |  |
| 12 | CD_PROCESSO | NUMBER | Y |  |
| 13 | CD_ORIGEM | NUMBER | Y |  |
| 14 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 15 | DS_COMPLEMENTO_EXT | VARCHAR2 | Y |  |
| 16 | CD_MULTI_EMPRESA_ORIGEM | NUMBER | Y |  |
| 17 | SN_TRANSITORIA | VARCHAR2 | Y |  |
| 18 | CD_LANC_AGRUP | NUMBER | Y |  |
| 19 | CD_LCTO_CONTABIL_INTEGRA | VARCHAR2 | Y |  |
| 20 | CD_SEQ_INTEGRA | NUMBER | Y |  |
| 21 | DT_INTEGRA | DATE | Y |  |
| 22 | CD_LCTO_MOVIMENTO_INTEGRA | VARCHAR2 | Y |  |
| 23 | SN_PROCES_VARIACAO_CAMBIAL | VARCHAR2 | Y |  |
| 24 | CD_CONCILIACAO | NUMBER | Y |  |
| 25 | CD_AUXILIAR_CRD | NUMBER | Y |  |
| 26 | CD_AUXILIAR_DEB | NUMBER | Y |  |
| 27 | NR_DOCUMENTO | VARCHAR2 | Y |  |

---

## DBAMV.LCTO_CONTABIL_GERENCIAL
> Recebe todos o lancamentos das empresas controladas

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LCTO_CONTABIL | NUMBER | N | Codigo do lancamento contabil gerencial |
| 2 | DT_LCTO | DATE | N | Data do lancamento contabil gerencial |
| 3 | DT_ANO | DATE | N | Indica o exercicio contabil do lancamento |
| 4 | CD_MULTI_EMPRESA | NUMBER | N | Indica o codigo da empresa consolidadora |
| 5 | CD_REDUZIDO_CREDITO | NUMBER | Y | Indica o codigo da conta gerencial de credito |
| 6 | CD_REDUZIDO_DEBITO | NUMBER | Y | Indica o codigo da conta gerencial de debito |
| 7 | VL_LANCADO | NUMBER | N | Valor do lancamento |
| 8 | CD_HISTORICO_PADRAO | NUMBER | Y | Indica o codigo do historico padr?o |
| 9 | DS_COMPLEMENTO | VARCHAR2 | Y | Descric?o do complemento |
| 10 | CD_LOTE | NUMBER | N | Indica o lote o qual o lancamento pertence |
| 11 | CD_LCTO_MOVIMENTO | NUMBER | Y | Codigo da movimentac?o contabil |
| 12 | VL_MOEDA_LANCADO | NUMBER | N | Indica a cotac?o da moeda |
| 13 | CD_MOEDA | VARCHAR2 | N | Indica o codigo da moeda |
| 14 | CD_PROCESSO | NUMBER | Y | Indica o codigo do processo |
| 15 | CD_ORIGEM | NUMBER | Y | Codigo do processo que originou o lancamento |
| 16 | DS_COMPLEMENTO_EXT | VARCHAR2 | Y | Descric?o do Complemento Extendida |
| 17 | CD_MULTI_EMPRESA_ORIGEM | NUMBER | Y | Indica qual empresa o lancamento teve origem |
| 18 | CD_LCTO_CONTABIL_PAI | NUMBER | N | Indica o codigo do lancamento contabil |
| 19 | SN_TRANSITORIA | VARCHAR2 | Y | Indica se e lancamento em conta transitoria |
| 20 | CD_LANC_AGRUP | NUMBER | Y | Indica se o lancamento contabil faz parte de um deposito agrupado do caixa. |

---

## DBAMV.LCTO_CONTABIL_LOG
> TABELA PARA LOG DE LANÇAMENTO CONTÁBIL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LCTO_CONTABIL | NUMBER | N | CÓDIGO DE LANÇAMENTO CONTÁBIL |
| 2 | CD_LCTO_CONTABIL_LOG | NUMBER | N | CÓDIGO DE LOG DE LANÇAMENTO |
| 3 | DS_ALTERACAO | VARCHAR2 | N | DESCRIÇÃO DA ALTERAÇÃO |
| 4 | DT_ALTERACAO | DATE | N | DATA DE ALTERAÇÃO |
| 5 | CD_USUARIO | VARCHAR2 | N | CÓDIGO DE USUÁRIO QUE REALIZOU A ALTERAÇÃO |
| 6 | DT_FECHAMENTO | DATE | Y | DATA DE FECHAMENTO DO LOTE |

---

## DBAMV.LCTO_EXTRATO_IMPORTADO
> Lancamento de Extratos Importados via Arquivo Eletronico.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LCTO_EXTRATO_IMPORTADO | NUMBER | N | Codigo do Lancamento de Extrato Importado. |
| 2 | CD_ARQUIVO_RETORNO_PGTO | NUMBER | Y | Codigo do Arquivo de Retorno Importado. |
| 3 | CD_LAN_CONCOR | NUMBER | N | Codigo do Lancamento de Extrato. |
| 4 | DS_HISTORICO | VARCHAR2 | N | Descric?o do Historico. |
| 5 | DT_LCTO_EXTRATO_IMPORTADO | DATE | N | Data de Lancamento. |
| 6 | VL_LCTO_EXTRATO_IMPORTADO | NUMBER | N | Valor Lancado. |
| 7 | TP_LCTO_EXTRATO_IMPORTADO | VARCHAR2 | N | Tipo de Lancamento. |
| 8 | CD_MOV_CONCOR | NUMBER | Y | Codigo da Movimentac?o de Extrato. |
| 9 | NR_DOCUMENTO | VARCHAR2 | N | Numero do Documento Fornecido pelo Banco. |
| 10 | SN_ATUALIZADO | VARCHAR2 | N | Indica se o Lancamento Importado Foi Atualizado. |
| 11 | CD_OCORRENCIA_LAY_ARQ | NUMBER | Y | CÓDIGO DA OCORRENCIA DO LAYOUT |
| 12 | CD_CON_COR | NUMBER | Y | Código da Conta |

---

## DBAMV.LCTO_FINANCEIRO
> Lancamentos Contabeis do Financeiro

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MVTO_FINANC | NUMBER | N | Codigo Sequencial do Movimento |
| 2 | CD_REDUZIDO | NUMBER | N | Codigo da Conta Contabil |
| 3 | CD_SETOR | NUMBER | N | Codigo do Setor (0=Sem setor) |
| 4 | TP_LANCAMENTO | VARCHAR2 | N | Tipo de Lancamento (Debito/Credito) |
| 5 | VL_LANCAMENTO | NUMBER | N | Valor do Lancamento |

---

## DBAMV.LCTO_SETOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LCTO_SETOR | NUMBER | N |  |
| 2 | VL_LCTO_SETOR | NUMBER | N |  |
| 3 | CD_LCTO_CONTABIL | NUMBER | N |  |
| 4 | CD_SETOR_CREDITO | NUMBER | Y |  |
| 5 | CD_SETOR_DEBITO | NUMBER | Y |  |
| 6 | CD_LCTO_MOVIMENTO | NUMBER | Y |  |
| 7 | VL_MOEDA_LCTO_SETOR | NUMBER | N |  |
| 8 | CD_MOEDA | VARCHAR2 | N |  |
| 9 | CD_LCTO_SETOR_INTEGRA | VARCHAR2 | Y | Codigo do lancamento contabil por setor (de-para) |
| 10 | CD_SEQ_INTEGRA | NUMBER | Y | Codigo sequencial da integrac?o |
| 11 | DT_INTEGRA | DATE | Y | Data em que o registro foi integrado |

---

## DBAMV.LCTO_SETOR_GERENCIAL
> Lancamentos dos Centros de Custos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LCTO_SETOR_GERENCIAL | NUMBER | N | Codigo do lancamento |
| 2 | CD_MULTI_EMPRESA | NUMBER | N | Indica o codigo da empresa |
| 3 | DT_ANO | DATE | N | Indica o exercicio contabil |
| 4 | CD_SETOR_CREDITO | NUMBER | Y | Indica o codigo do setor de credito |
| 5 | CD_SETOR_DEBITO | NUMBER | Y | Indica o codigo do setor de debito |
| 6 | CD_LCTO_SETOR | NUMBER | N | Indica o codigo do lancamento no centro de custo |
| 7 | VL_LCTO_SETOR | NUMBER | N | Valor do Lancamento |
| 8 | CD_LCTO_CONTABIL | NUMBER | N | Codigo do lancamento contabil |
| 9 | CD_LCTO_MOVIMENTO | NUMBER | Y | Codigo do movimento |
| 10 | VL_MOEDA_LCTO_SETOR | NUMBER | N | Indica a cotac?o da moeda |
| 11 | CD_MOEDA | VARCHAR2 | N | Codigo da moeda |

---

## DBAMV.LOTREM_ITCONPAG_ACDE
> Descontos e Acrescimos por Pagamento.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOTREM_ITCON_PAG_ACDE | NUMBER | N | Codigo do Desconto ou Acrescimo na Conta a Pagar do Lote. |
| 2 | CD_LOTE_REM_ITCON_PAG | NUMBER | N | Codigo da Conta a Pagar do Lote. |
| 3 | CD_DESC_ACRES | NUMBER | N | Codigo do Desconto ou Acrescimo. |
| 4 | VL_LOTREM_ITCON_PAG_ACDE | NUMBER | N | Valor do Desconto ou Acrescimo. |

---

## DBAMV.LOTREM_ITCONREC_ACDE
> Descontos e Acrescimos por Recebimento.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOTREM_ITCON_REC_ACDE | NUMBER | N | Codigo do Desconto ou Acrescimo na Conta a Receber do Lote. |
| 2 | CD_LOTE_REM_ITCON_REC | NUMBER | N | Codigo da Parcela da Conta a Receber do Lote. |
| 3 | CD_DESC_ACRES | NUMBER | N | Codigo do Desconto ou Acrescimo. |
| 4 | VL_LOTREM_ITCON_REC_ACDE | NUMBER | N | Valor do Desconto ou Acrescimo. |

---

## DBAMV.MODELO_CONTABIL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MODELO_CONTABIL | VARCHAR2 | N | CÓDIGO DO MODELO CONTÁBIL |
| 2 | DS_MODELO_CONTABIL | VARCHAR2 | N | DESCRIÇÃO DO MODELO CONTÁBIL |
| 3 | CD_SISTEMA | VARCHAR2 | N | IDENTIFICA A QUAL SISTEMA O MODELO CONTÁBIL PERTENCE |
| 4 | DT_CRIACAO | DATE | N | DATA DE CRIACAO DO MODELO CONTÁBIL |
| 5 | TP_STATUS | VARCHAR2 | N | IDENTIFICA O STATUS DO EVENTO A - Aberto / E-Erro / V- Validado |
| 6 | CD_USUARIO_CRIACAO | VARCHAR2 | N | IDENTIFICA O USUÁRIO RESPONSÁVEL PELA CRIAÇÃO DO MODELO CONTÁBIL |
| 7 | SN_ATIVO | VARCHAR2 | N | IDENTIFICA SE O MODELO CONTABIL ESTÁ ATIVO |
| 8 | CD_COLUNA_PIVOT | VARCHAR2 | Y | Coluna demonstrada no topo da planilha. Valores possíveis: C-Competência, E-Empresa ou U-Unidade ... |
| 9 | SN_AGRUPA_FONTES_DADOS | VARCHAR2 | Y | Campo para indicar se verticalmente o relatório será agrupado ou não pela fonte de dados que pode... |
| 10 | CD_AGRUP | NUMBER | Y |  |
| 11 | CD_PLANO | VARCHAR2 | Y | Codigo do plano |

---

## DBAMV.MODELO_CONTABIL_CABECALHO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CABECALHO_MODELO | NUMBER | N | Código da coluna do cabeçalho |
| 2 | CD_LADO_CABECALHO | VARCHAR2 | Y | Lado do cabeçalho na planilha. Valores possíveis: E-Esquerda, D-Direita ou C-Centro |
| 3 | CD_ORDEM | NUMBER | Y | Ordem da coluna |
| 4 | CD_DADO | NUMBER | Y | Código do dado de cabeçalho |
| 5 | DS_DADO | VARCHAR2 | Y | Descrição do dado de cabeçalho |
| 6 | CD_MODELO_CONTABIL | VARCHAR2 | Y |  |

---

## DBAMV.MODELO_CONTABIL_EVENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MODELO_CONTABIL_EVENTO | NUMBER | N |  |
| 2 | DS_MODELO_CONTABIL_EVENTO | VARCHAR2 | Y | DESCRIÇÃO DO EVENTO DO MODELO CONTABIL |
| 3 | CD_ORDEM | NUMBER | N | IDENTIFICA A ORDEM DOS EVENTOS |
| 4 | CD_NIVEL | NUMBER | N |  |
| 5 | DS_OPERACAO | VARCHAR2 | Y | IDENTIFICA A FORMULA DA OPERAÇÃO REALIZADA |
| 6 | SN_VISIVEL | VARCHAR2 | N | IDENTIFICA OS EVENTOS QUE FICARAM VISIVEIS NA CONSULTA |
| 7 | CD_MODELO_CONTABIL | VARCHAR2 | N | CÓDIGO DO MODELO CONTABIL |
| 8 | CD_CONTABIL_GRUPO | NUMBER | Y | CÓDIGO DO GRUPO DO MODELO CONTABIL |
| 9 | SN_ERRO | VARCHAR2 | N | INDICA OS EVENTOS QUE ESTÃO COM ERROS |
| 10 | CD_MODELO_CONTABIL_EVENT_COPIA | NUMBER | Y | CODIGO DO EVENTO DO MODELO ANTES DE SUA REPLICACAO |
| 11 | DS_EXCECAO | VARCHAR2 | Y | Descrição da exceção. |
| 12 | TP_DETALHAMENTO | VARCHAR2 | Y | CAMPO RESPONSAVEL POR DEFINIR O TIPO DO DETALHAMENTO A SER UTILIZADO(FORNECEDOR/CLIENTE,IMPOSTO,L... |
| 13 | SN_APRESENTA_DECIMAL | VARCHAR2 | N | Indica se é pra exibir casas decimais |
| 14 | TP_APRESENTACAO_VALOR | VARCHAR2 | Y | TIPO DE MOVIMENTAÇÃO. |
| 15 | SN_PORCENTAGEM | VARCHAR2 | N | Se é porcentagem ou valor |
| 16 | CD_AGRUP | NUMBER | Y |  |
| 17 | DS_ERRO | VARCHAR2 | Y | Descricao do erro na Formula |
| 18 | CD_AGLUTINADOR | VARCHAR2 | Y | Código Aglutinador |

---

## DBAMV.MODELO_CONTABIL_EVENTO_CLASSIF
> Tabela para associar MODELO_CONTABIL_EVENTO com a CLASSIFICACAO_CONTA_FNFI

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MODELO_CONTABIL_EVENTO | NUMBER | N | código da CLASSIFICACAO_CONTA_FNFI |
| 2 | CD_CLASS_CONTA_FNFI | NUMBER | N | código da MODELO_CONTABIL_EVENTO |

---

## DBAMV.MODELO_CONTABIL_EVENTO_SETOR
> TABELA DE RELACIONAMENTO ENTRE O CÓDIGO DO EVENTO DO MODELO CONTABIL E O CÓDIGO DO SETOR.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MODELO_CTB_EVENTO_SETOR | NUMBER | N | CÓDIGO DO MODELO CONTABIL EVENTO SETOR. |
| 2 | CD_MODELO_CONTABIL_EVENTO | NUMBER | N | CÓDIGO DO EVENTO DO MODELO CONTABIL. |
| 3 | CD_SETOR | NUMBER | N | CÓDIGO DO SETOR. |

---

## DBAMV.MODELO_CONTABIL_GRUPO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MODELO_CONTABIL | VARCHAR2 | N | IDENTIFICA O CÓDIGO DO MODELO contabil |
| 2 | CD_CONTABIL_GRUPO | NUMBER | N | CÓDIGO DO MODELO ESTRUTUAL DO GRUPO |
| 3 | DS_CONTABIL_GRUPO | VARCHAR2 | N | DESCRIÇÃO DO MODELO ESTRUTUAL DO GRUPO |
| 4 | CD_GRUPO_PAI | NUMBER | Y | Código do grupo pai. |
| 5 | SN_CALCULADO | VARCHAR2 | Y | Se será calculado. |
| 6 | FUNCAO_CALCULO | VARCHAR2 | Y | Função utilizada no cálculo. |
| 7 | TP_CONTA_CONTABIL | VARCHAR2 | Y | GRUPO DE REFERENCIA. |
| 8 | SN_EXCETO_PROJETOS | VARCHAR2 | Y | CAMPO QUE DETERMINA SE OS PROJETOS SERÃO UTILIZADOS |
| 9 | CD_GRUPO_REF | NUMBER | Y | Auto Relacionamento dos Grupos |
| 10 | SN_EXCETO_CLASSIFICACAO | VARCHAR2 | N | Indica se a classificação será utilizada |

---

## DBAMV.MODELO_CONTABIL_GRUPO_EMP
> TABELA RESPONSAVEL POR ARMAZENAR RELAÇÂO DAS EMPRESAS SELECIONADAS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MODELO_CONTABIL | VARCHAR2 | N | CÓDIGO DO MODELO CÓNTABIL |
| 2 | CD_MULTI_EMPRESA | NUMBER | N | CÓDIGO DA EMPRESA SELECIONADA |
| 3 | CD_MODELO_CONTABIL_GRUPO | NUMBER | N | CÓDIGO DO GRUPO CONTABIL |

---

## DBAMV.MODELO_CONTABIL_MATRICIAL
> Tabela de modelos de forma matricial

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MODELO_CONTABIL_MATRICIAL | NUMBER | N | Código do modelo contábil matricial |
| 2 | CD_MODELO_CONTABIL | VARCHAR2 | N | Código do modelo contábil |
| 3 | CD_ORDEM | NUMBER | N | Código da ordem |
| 4 | DS_COLUNA | VARCHAR2 | N | Descrição da coluna |
| 5 | CD_MODELO_CONTABIL_GRUPO | NUMBER | Y | Código do modelo contábil |
| 6 | CD_TIPO | VARCHAR2 | N | Código do tipo  DL - Descrição Linha, SA - Saldo Anterior, DB - Débito, CR - Crédito, MV - Movime... |

---

## DBAMV.MODELO_CONTABIL_MATRI_FILT
> Tabela de modelos de forma matricial filtro

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MODELO_CONTABIL_MATRI_FILT | NUMBER | N | Código do modelo contábil |
| 2 | CD_MODELO_CONTABIL_MATRICIAL | NUMBER | N | Código modelo contábil matricial |
| 3 | CD_TIPO | VARCHAR2 | Y | Código do tipo E - Empresa, R - Reduzido, S - Setor |
| 4 | CD_CODIGO | VARCHAR2 | N | Código |

---

## DBAMV.MODELO_CONTABIL_PROJETO
> ARMAZENA OS PROJETOS DO MODELO CONTABIL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MODELO_CONTABIL_EVENTO | NUMBER | N | ARMAZENA O CODIGO DO MODELO CONTABIL ASSOCIADO |
| 2 | CD_MODELO_CONTABIL_PROJ | NUMBER | N | VALOR AUTO INCREMENTADO CHAVE PRIMARIA A ASSOCIAÇAO ENTRE O PROJETO E O MODELO CONTABIL |
| 3 | CD_PROJETOS | NUMBER | N | CODIGO DE REFERENCIA DO PROJETO(TABELA DBAMV.PROJETOS) |

---

## DBAMV.MOEDA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MOEDA | VARCHAR2 | N |  |
| 2 | DS_MOEDA | VARCHAR2 | N |  |
| 3 | DS_MOEDA_SING | VARCHAR2 | Y | Descric?o da Moeda no Singular |
| 4 | DS_MOEDA_PLUR | VARCHAR2 | Y | Descric?o da Moeda no Plural |
| 5 | DS_MOEDA_UNIDADE | VARCHAR2 | Y | Descric?o da unidade da Moeda no Singular |
| 6 | DS_MOEDA_UNIDADES | VARCHAR2 | Y | Descric?o da unidade da Moeda no Plural |
| 7 | NR_CASA_DECIMAL | NUMBER | Y | Número de casas decimais da moeda. |
| 8 | TP_ARREDONDAMENTO | VARCHAR2 | Y | Tipo de arredendamento da moeda. |
| 9 | CD_MOEDA_SISCOSERV | NUMBER | Y | Codigo da moeda mapeado da SISCOSERV. |

---

## DBAMV.MOV_CAIXA
> Ajuste na tabela mov_caixa

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MOV_CAIXA | VARCHAR2 | N |  |
| 2 | CD_LOTE_CAIXA | NUMBER | N |  |
| 3 | DS_MOV_CAIXA | VARCHAR2 | N |  |
| 4 | DT_MOVIMENTACAO | DATE | N |  |
| 5 | TP_MOVIMENTACAO | VARCHAR2 | N |  |
| 6 | VL_MOVIMENTACAO | NUMBER | N |  |
| 7 | CD_RECCON_REC | NUMBER | Y |  |
| 8 | CD_PAGCON_PAG | NUMBER | Y |  |
| 9 | CD_DOC_CAIXA | NUMBER | Y |  |
| 10 | CD_CON_COR | NUMBER | Y |  |
| 11 | CD_MOV_CAIXA_TRANSF | VARCHAR2 | Y |  |
| 12 | DT_CANCELAMENTO | DATE | Y |  |
| 13 | CD_MOTIVO_CANC | NUMBER | Y |  |
| 14 | CD_EXP_CONTABILIDADE | NUMBER | Y |  |
| 15 | CD_REDUZIDO | NUMBER | Y |  |
| 16 | CD_CAUCAO | NUMBER | Y |  |
| 17 | CD_LAN_CONCOR | NUMBER | Y |  |
| 18 | CD_SETOR | NUMBER | Y |  |
| 19 | CD_USUARIO | VARCHAR2 | N |  |
| 20 | DT_LANCAMENTO | DATE | N |  |
| 21 | TP_ORIGEM_MOV | VARCHAR2 | N |  |
| 22 | CD_MULTI_EMPRESA | NUMBER | N | Coluna Criada na vers?o v4.5 |
| 23 | CD_PROCESSO | NUMBER | N |  |
| 24 | CD_ITIMPORTA_MOV_CAIXA | NUMBER | Y | Codigo do Registro do Arquivo de Importac?o |
| 25 | CD_MOTIVO_LCTO | NUMBER | Y | Codigo do Motivo de Lancamento da Aplicac?o Direta. |
| 26 | DS_MOVIMENTACAO_PADRAO | VARCHAR2 | Y | Descric?o Padr?o da Movimentac?o |
| 27 | DS_MOVIMENTACAO_PROCESSO | VARCHAR2 | Y | Descric?o da Movimentac?o por Processo |
| 28 | CD_PROCESSO_SEC | NUMBER | Y | Codigo do Processo de Cancelamento da Movimentac?o |
| 29 | DS_MOVIMENTACAO_PROCESSO_SEC | VARCHAR2 | Y | Descric?o da Movimentac?o de Cancelamento por Processo |
| 30 | CD_MULTI_EMPRESA_ORIGEM | NUMBER | Y | Codigo da empresa que originou o movimento (utilizado em transac?es multi-empresas) |
| 31 | CD_MULTI_EMPRESA_DESTINO | NUMBER | Y | Codigo da empresa de destino do recurso retirado do caixa (utilizado em transac?es multi-empresas) |
| 32 | CD_MOT_DEV | NUMBER | Y | Codigo do Motivo de Devoluc?o do Cheque |
| 33 | CD_MOV_CAIXA_TE | VARCHAR2 | Y | Codigo da Movimentac?o de Saida associada a Troca de Especie |
| 34 | VL_MOEDA | NUMBER | Y | Valor da moeda usada no processo |
| 35 | CD_MOEDA | VARCHAR2 | Y | Codigo da moeda usada no processo |
| 36 | VL_CAMBIO | NUMBER | Y | Valor do cambio usado |
| 37 | SN_CAMBIO_SUGERIDO | VARCHAR2 | Y | Se o cambio foi automatico |
| 38 | DS_OBSERVACAO_INS | VARCHAR2 | Y | Observac?o de origem de inserc?o de movimentacao |
| 39 | CD_USUARIO_INS | VARCHAR2 | Y | Usuario de origem de inserc?o de movimentacao |
| 40 | DH_MOVIMENTO_INS | DATE | Y | Data de origem de inserc?o de movimentacao |
| 41 | DS_OBSERVACAO_UPD | VARCHAR2 | Y | Observac?o de origem de alterac?o de movimentacao |
| 42 | CD_USUARIO_UPD | VARCHAR2 | Y | Usuario de origem de alterac?o de movimentacao |
| 43 | DH_MOVIMENTO_UPD | DATE | Y | Data de origem de alterac?o de movimentacao |
| 44 | CD_SEQ_INTEGRA | NUMBER | Y |  |
| 45 | DT_INTEGRA | DATE | Y |  |
| 46 | NM_RESPONSAVEL | VARCHAR2 | Y |  |
| 47 | CD_RESPOSAVEL | NUMBER | Y |  |
| 48 | CD_LCTO_MOVIMENTO | NUMBER | Y | Código agrupador dos lancamentos contábeis |
| 49 | CD_MOV_CAIXA_AGRUP | NUMBER | Y |  |
| 50 | CD_TEF_MOVIMENTO | NUMBER | Y | Código do tef movimento |
| 51 | SN_AUTOMATICO_TEF | VARCHAR2 | Y | Determina se foi manual ou automatico |
| 52 | DS_TRANSACAO | VARCHAR2 | Y | DESCRIÇÃO DA TRANSAÇÃO |

---

## DBAMV.NOTA_CREDITO_DEBITO_FNFI
> Tabela de controle das notas de crédito e débito no módulo financeiro

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_NOTA_CREDITO_DEBITO_FNFI | NUMBER | N | Chave sequencial da tabela. |
| 2 | CD_NOTA_CRE_DEB_SUPRI | NUMBER | Y | Código da Nota de Crédito proveniente suprimentos. |
| 3 | CD_NOTA_CRED_DEB | NUMBER | Y | Código da Nota de Crédito/Débito Emitida pelo Faturamento |
| 4 | CD_FORNECEDOR_CLIENTE | NUMBER | Y | Códo do cliente ou fornecedor Nota de Crédito |
| 5 | DT_OPERACAO | DATE | Y | Data da operação |
| 6 | CD_USUARIO_OPERACAO | VARCHAR2 | Y | Usuário responsável pela operação |
| 7 | CD_CON_PAG_OPERACAO | NUMBER | Y | Código do contas a pagar que foi gerado da nota de crédito e debito |
| 8 | CD_CON_REC_OPERACAO | NUMBER | Y | Código do contas a receber que foi gerado da nota de crédito e debito |
| 9 | CD_CON_PAG_REFERENCIA | NUMBER | Y | Código do contas a pagar que originou a nota de credito debito |
| 10 | CD_CON_REC_REFERENCIA | NUMBER | Y | Código do contas a receber que originou a nota de credito debito |
| 11 | CD_MULTI_EMPRESA | NUMBER | Y | Código da multi empresa |

---

## DBAMV.ORCAMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCAMENTO | NUMBER | N |  |
| 2 | DT_ORCAMENTO | DATE | N |  |
| 3 | CD_SETOR | NUMBER | N |  |
| 4 | CD_REDUZIDO | NUMBER | N |  |
| 5 | VL_ORCAMENTO | NUMBER | N |  |
| 6 | CD_MOEDA | VARCHAR2 | N |  |
| 7 | VL_MOEDA_ORCAMENTO | NUMBER | N |  |
| 8 | CD_REDUZIDO_PS | NUMBER | Y |  |

---

## DBAMV.ORCAMENTO_HOCA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCAMENTO | NUMBER | N |  |
| 2 | CD_ATENDIMENTO | NUMBER | Y |  |
| 3 | DT_ORCAMENTO | DATE | N |  |
| 4 | CD_TIP_ACOM | NUMBER | Y |  |
| 5 | SITUACAO_ORCAMENTO | VARCHAR2 | Y |  |
| 6 | CD_CONVENIO | NUMBER | N |  |
| 7 | CD_CON_PLA | NUMBER | N |  |
| 8 | TP_SITUACAO_ORCAMENTO | VARCHAR2 | N |  |
| 9 | CD_PACIENTE | NUMBER | N |  |
| 10 | HR_ORCAMENTO | DATE | Y |  |
| 11 | NR_CARTEIRA | VARCHAR2 | Y |  |
| 12 | DT_VALIDADE | DATE | Y |  |
| 13 | DT_INIC_PERIODO | DATE | Y |  |
| 14 | DT_TERM_PERIODO | DATE | Y |  |
| 15 | NM_SOLICITANTE | VARCHAR2 | Y |  |
| 16 | TP_MODALIDADE_ATENDI | VARCHAR2 | Y |  |
| 17 | DS_DIAGNOSTICO | VARCHAR2 | Y |  |
| 18 | NM_USUARIO | VARCHAR2 | Y |  |
| 19 | CD_TIPO_INTERNACAO | NUMBER | Y |  |
| 20 | CD_MULTI_EMPRESA | NUMBER | N | Coluna Criada na vers?o v4.5 |
| 21 | TP_ORCAMENTO | VARCHAR2 | N | Coluna criada para identificar o tipo de orçamento. Tipos: C - Captação, P - Prorrogação, G - Ger... |
| 22 | CD_ORI_ATE | NUMBER | Y | CODIGO DA ORIGEM DO ATENDIMENTO |

---

## DBAMV.ORCAMENTO_HOSPITALAR
> Orcamento Hospitalar

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCAMENTO_HOSPITALAR | NUMBER | N | Codigo do Orcamento Hospitalar |
| 2 | DS_ORCAMENTO_HOSPITALAR | VARCHAR2 | N | Descric?o do Orcamento Hospitalar |
| 3 | DS_OBSERVACAO | VARCHAR2 | Y | Observac?o sobre o Orcamento |
| 4 | DT_ABERTURA | DATE | Y | Data de Abertura |
| 5 | DT_FECHAMENTO | DATE | Y | Data de Fechamento |
| 6 | TP_SITUACAO | VARCHAR2 | N | Situac?o do Orcamento |
| 7 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da Empresa |
| 8 | CD_ORCAMENTO_HOSPITLR_ORIGEM | NUMBER | Y | Codigo do Orcamento Origem |

---

## DBAMV.ORCAMENTO_HOSPITALAR_COMP
> Competências do Orçamento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCAMENTO_HOSPITALAR_COMP | NUMBER | N | Código Sequencial |
| 2 | CD_ORCAMENTO_HOSPITALAR | NUMBER | N | Código do Orçamento |
| 3 | DT_COMPETENCIA | DATE | N | Competências |
| 4 | TP_SITUACAO | VARCHAR2 | N | Situação da competência (Aberta ou Fechada) |
| 5 | CD_USUARIO | VARCHAR2 | Y | Codigo do usuario que efetuou o fechamento |
| 6 | CD_GRUPO_USUARIO_FECHAMENTO | NUMBER | Y | Grupo do usuário que efetuou o fechamento |
| 7 | DT_FECHAMENTO | DATE | N | Data do fechamento |
| 8 | CD_USUARIO_FECHAMENTO | NUMBER | N | Código do usuário que efetuou o fechamento |

---

## DBAMV.ORCA_AJUSTE_NF
> Base de orçamento ajustes contas a pagar

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_AJUSTE_NF | NUMBER | N | Código sequencial do ajuste. |
| 2 | CD_MULTI_EMPRESA | NUMBER | N | Código da empresa. |
| 3 | DT_COMPETENCIA | DATE | N | Data de competência do título. |
| 4 | DT_EMISSAO | DATE | N | Data de emissão do título |
| 5 | NR_DOCUMENTO | VARCHAR2 | Y | Número do documento do título. |
| 6 | CD_FORNECEDOR | NUMBER | Y | Código do fornecedor do título. |
| 7 | VL_DOCUMENTO | NUMBER | N | Valor do título. |
| 8 | CD_HISTORICO_PADRAO | NUMBER | Y | Código do histórico padrão. |
| 9 | SN_DESCONSIDERAR | VARCHAR2 | N | Indicador para desconciderar o título no orçamento. |
| 10 | DS_AJUSTE_NF | VARCHAR2 | Y | Descrição do ajuste |
| 11 | CD_TIPO | VARCHAR2 | Y | Codigo do Tipo, com os seguintes valores possiveis (FIN = Financeiro, CON = Contabil, CUS = Custo... |

---

## DBAMV.ORCA_AJUSTE_NF_RATEIO
> Base de orçamento ajustes contas a pagar rateio

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_AJUSTE_NF_RATEIO | NUMBER | N | Código sequencial do ajuste rateio. |
| 2 | CD_ORCA_AJUSTE_NF | NUMBER | N | Código sequencial do ajuste. |
| 3 | CD_SETOR | NUMBER | Y | Código do setor do ajuste rateio. |
| 4 | CD_ITEM_RES | NUMBER | Y | Código da conta de custo no rateio. |
| 5 | VL_RATEIO | NUMBER | N | Valor do ajuste rateio. |

---

## DBAMV.ORCA_CONTA
> Contas de Orçamento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_CONTA | NUMBER | N | Código da Conta de Orçamento |
| 2 | CD_TIPO_CONTA | VARCHAR2 | N | Código do Tipo da Conta de Orçamento |
| 3 | NM_CONTA | VARCHAR2 | N | Nome da Conta de Orçamento |
| 4 | SN_TRANSFERE_PERI | VARCHAR2 | N | Transferência Entre Períodos |
| 5 | SN_TRANSFERE_CNTA | VARCHAR2 | N | Transferência Entre Contas |
| 6 | SN_TRANSFERE_CTRO | VARCHAR2 | N | Transferência Entre Centros de Custos |
| 7 | SN_ATIVO | VARCHAR2 | N | Registro está ativo |
| 8 | DH_INSERT | DATE | N | Data de Insert do registro |
| 9 | CD_USUARIO_INS | VARCHAR2 | N | Código do Usuário de Insert do registro |
| 10 | DH_UPDATE | DATE | Y | Data do Último Update do registro |
| 11 | CD_USUARIO_UPD | VARCHAR2 | Y | Código do Usuário Último Update do registro |
| 12 | TP_VINCULO_CNTA | VARCHAR2 | N |  |
| 13 | SN_BLOQUEIA_ORCAMENTO | VARCHAR2 | N | Indica se a conta bloqueia orçamento = S, libera orçamento = N |
| 14 | VL_MARGEM | NUMBER | Y | Valor da margem Orçado X Realizado |

---

## DBAMV.ORCA_CONTA_COMP
> Composição da conta estrutural

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_CONTA | NUMBER | N | Código da conta |
| 2 | CD_ORCA_CONTA_COMP | NUMBER | N | Código da conta composta |
| 3 | TP_COMPOSICAO | VARCHAR2 | N | Tipo de composição: Valor/Percentual |
| 4 | QT_MESES | NUMBER | N |  |
| 5 | VL_COMPOSICAO | NUMBER | N | Valor da composição |
| 6 | DH_INSERT | DATE | N | Data de Insert do registro |
| 7 | CD_USUARIO_INS | VARCHAR2 | N | Código do Usuário de Insert do registro |
| 8 | DH_UPDATE | DATE | Y | Data do Último Update do registro |
| 9 | CD_USUARIO_UPD | VARCHAR2 | Y | Código do Usuário Último Update do registro |

---

## DBAMV.ORCA_CONTA_EMPR
> Empresas Relacionadas à Conta de Orçamento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_CONTA | NUMBER | N |  |
| 2 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 3 | CD_REDUZIDO | NUMBER | Y |  |
| 4 | SN_ATIVO | VARCHAR2 | N | Registro está ativo |
| 5 | DH_INSERT | DATE | N | Data de Insert do registro |
| 6 | CD_USUARIO_INS | VARCHAR2 | N | Código do Usuário de Insert do registro |
| 7 | DH_UPDATE | DATE | Y | Data do Último Update do registro |
| 8 | CD_USUARIO_UPD | VARCHAR2 | Y | Código do Usuário Último Update do registro |
| 9 | CD_ITEM_RES | NUMBER | Y |  |
| 10 | CD_ORCA_CONTA_EMPR | NUMBER | N |  |
| 11 | CD_AUXILIAR | NUMBER | Y |  |

---

## DBAMV.ORCA_CONTA_IND
> Indicadores por conta orçamentária

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INDICADOR_ORCAMENTARIO | NUMBER | N | Código do indicador orçamentário |
| 2 | CD_ORCA_CONTA | NUMBER | N | Código da conta |

---

## DBAMV.ORCA_CONTA_PECA
> Linha da Peça Orçamentária

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_CONTA | NUMBER | N |  |
| 2 | NR_LINHA | NUMBER | N |  |
| 3 | NM_LINHA | VARCHAR2 | N |  |
| 4 | QT_DEC | NUMBER | Y |  |
| 5 | SN_MOSTRA | VARCHAR2 | N |  |
| 6 | SN_DIGITA | VARCHAR2 | N |  |
| 7 | TX_FORMULA | VARCHAR2 | Y |  |
| 8 | DH_INSERT | DATE | N | Data de Insert do registro |
| 9 | CD_USUARIO_INS | VARCHAR2 | N | Código do Usuário de Insert do registro |
| 10 | DH_UPDATE | DATE | Y | Data do Último Update do registro |
| 11 | CD_USUARIO_UPD | VARCHAR2 | Y | Código do Usuário Último Update do registro |

---

## DBAMV.ORCA_CONTA_USUA
> Gestores das Contas Estruturais

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_CONTA | NUMBER | N | Código da Conta de orçamento |
| 2 | CD_USUARIO | VARCHAR2 | N | Código do usuário |
| 3 | DT_VIGENCIA_INI | DATE | N | Data inicial da vigência |
| 4 | DT_VIGENCIA_FIM | DATE | Y | Data final da vigência |
| 5 | SN_CRIAR | VARCHAR2 | N | Criar |
| 6 | SN_REVISAR | VARCHAR2 | N | Revisar |
| 7 | SN_AJUSTAR | VARCHAR2 | N | Ajustar |
| 8 | SN_TRANSF_PERIODO | VARCHAR2 | N | Período |
| 9 | SN_TRANSF_CONTA | VARCHAR2 | N | Transferir contas |
| 10 | SN_TRANSF_CENTRO | VARCHAR2 | N | Transferir centros |
| 11 | SN_PARECER | VARCHAR2 | N | Parecer |
| 12 | SN_REALIZA | VARCHAR2 | N | Realiza |
| 13 | SN_ALCADA | VARCHAR2 | N | Alçada |
| 14 | SN_ATIVO | VARCHAR2 | N | Registro está ativo |
| 15 | DH_INSERT | DATE | N | Data de Insert do registro |
| 16 | CD_USUARIO_INS | VARCHAR2 | N | Código do Usuário de Insert do registro |
| 17 | DH_UPDATE | DATE | Y | Data do Último Update do registro |
| 18 | CD_USUARIO_UPD | VARCHAR2 | Y | Código do Usuário Último Update do registro |

---

## DBAMV.ORCA_CONTROLE
> Base controle de movimento dos orçamentos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_CONTROLE | NUMBER | N | CÓDIGO DO CONTROLE DO MOVIMENTO. |
| 2 | CD_BASE_ORCA | NUMBER | N | Código da base orçamentária. |
| 3 | CD_BASE_ORCA_REF | NUMBER | Y | Código do orçamento de referência. |
| 4 | DS_CONTROLE | VARCHAR2 | N | Descrição do controle do movimento. |
| 5 | DT_CRIACAO | DATE | Y | Data da criação do controle. |
| 6 | CD_USUARIO | VARCHAR2 | N | Usuário do controle. |
| 7 | TP_CONTROLE | VARCHAR2 | N | Tipo do controle (Manual, Importado, Peça e Replicado) |
| 8 | TP_SITUACAO | VARCHAR2 | N | Situação do controle (A-Aberto, E-Exportado para Orçamento, S-Setorizado, R - Retorno) |
| 9 | TP_CONTROLE_ORCAMENTO | VARCHAR2 | N | Tipo de controle orçamento C-Custo, R-Receita. |
| 10 | SN_OFICIAL | VARCHAR2 | N | Indicador de controle oficial S-Controle Oficial, N-Controle não oficial |
| 11 | SN_FECHADO | VARCHAR2 | N | Indicador do controle Fechado. S-Fechado, N-Aberto |

---

## DBAMV.ORCA_CONTROLE_CONCLUSAO
> Tabela de controle dos itens/peças concluídas.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_CONTROLE_CONCLUSAO | NUMBER | N | Sequencial da tabela. |
| 2 | CD_ORCA_CONTROLE | NUMBER | N | Código do controle orçamentário. |
| 3 | CD_ORCA_CONTROLE_PECA | NUMBER | N | Código da peça. |
| 4 | CD_ORCA_CONTROLE_CONTA | NUMBER | Y | Código da conta, se em branco é a conclusão da peça como um todo. |
| 5 | CD_SETOR | NUMBER | Y | Código do setor concluído. |
| 6 | SN_ORCADO | VARCHAR2 | N | S - Concluído / N - Não Concluído. |

---

## DBAMV.ORCA_CONTROLE_CONTA
> Base controle do orçamento por conta orçamentária

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_CONTROLE_CONTA | NUMBER | N | Sequencial do controle da conta. |
| 2 | CD_ORCA_CONTROLE | NUMBER | N | Código do controle do movimento. |
| 3 | CD_ORCA_CONTA | NUMBER | Y | Código da conta orçamentária. |
| 4 | VL_MEDIO | NUMBER | Y | Valor médio por conta. |
| 5 | CD_FORNECEDOR | NUMBER | Y | Código do fornecedor |
| 6 | CD_CONTRATO | NUMBER | Y | Código do contrato |
| 7 | CD_ORCA_PECA_ITEM | NUMBER | Y | Código do item da peça |
| 8 | DS_ITEM_CONTA | VARCHAR2 | Y |  |
| 9 | CD_PROJETO | NUMBER | Y |  |
| 10 | CD_USUARIO | VARCHAR2 | N | Usuário que realizou a inclusão do registro |
| 11 | CD_ORCA_CONTROLE_PECA | NUMBER | Y | CÃ³digo do controle peÃ§a |
| 12 | CD_PRODUTO | NUMBER | Y | Código do produto. |

---

## DBAMV.ORCA_CONTROLE_CONTA_AUX
> Base controle do orcamento por conta orcamentaria auxiliar.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_CONTROLE_CONTA_AUX | NUMBER | N | Sequencial do controle da conta auxiliar. |
| 2 | CD_ORCA_CONTROLE_CONTA | NUMBER | N | Codigo do controle conta. |
| 3 | CD_FORNECEDOR | NUMBER | Y | Codigo do fornecedor. |
| 4 | CD_CONTRATO | NUMBER | Y | Codigo do contrato. |
| 5 | CD_ORCA_PECA_ITEM | NUMBER | Y | Codigo do item da peca. |
| 6 | SN_USADO | VARCHAR2 | N | Indicador de uso do item. |
| 7 | CD_ORCA_CONTROLE_SETOR | NUMBER | N | Sequencial do setor no controle. |

---

## DBAMV.ORCA_CONTROLE_ESTATISTICO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_ESTATIST | NUMBER | N | CÓDIGO DA ORÇAMENTO ESTATÍSTICO. |
| 2 | DS_ORCA_ESTATIST | VARCHAR2 | N | DESCRIÇÃO DA ORÇAMENTO ESTATÍSTICO. |
| 3 | CD_ORCA_CONTROLE | NUMBER | N | CÓDIGO DO CONTROLE DO MOVIMENTO. |
| 4 | SN_VISIVEL | VARCHAR2 | Y | INDICADOR PARA EXIBIR VALORES EM OUTRAS TELAS. |
| 5 | CD_ORDEM_EXIBE | NUMBER | N | INDICADOR A ORDEM DE EXISBÇÃO. |
| 6 | VL_TOTAL_ORCADO | NUMBER | N | VALOR TOTAL ORÇADO. |
| 7 | VL_TOTAL_PROJETA | NUMBER | N | VALOR TOTAL PROJETADO. |

---

## DBAMV.ORCA_CONTROLE_ESTAT_SETOR
> Tabela de controle estatístico por setor.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ESTAT_SETOR | NUMBER | N |  |
| 2 | CD_ORCA_ESTATIST | NUMBER | N | CÓDIGO DA ORÇAMENTO ESTATÍSTICO. |
| 3 | CD_SETOR | NUMBER | N | CÓDIGO DO SETOR ORÇADO |

---

## DBAMV.ORCA_CONTROLE_IND
> Tabela de inclusão do indicador no controle.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_CONTROLE_IND | NUMBER | N | Sequencial do controle. |
| 2 | CD_INDICADOR_ORCAMENTARIO | NUMBER | N | Codigo do indicador. |
| 3 | CD_ORCA_CONTROLE_IND_SETOR | NUMBER | N | Sequencial do controle do setor. |
| 4 | VL_ORCADO | NUMBER | N | Valor orçado. |
| 5 | CD_ORCA_CONTROLE_IND_ORDER | NUMBER | Y |  |

---

## DBAMV.ORCA_CONTROLE_IND_MOV
> Tabela de inclusão dos valores no indicador no controle.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_CONTROLE_IND_MOV | NUMBER | N | Sequencial do controle. |
| 2 | CD_ORCA_CONTROLE_IND | NUMBER | N | Codigo do indicador. |
| 3 | DT_COMP_ATUAL | DATE | N | Data de competência atual. |
| 4 | VL_DOIS_ANOS_ANT | NUMBER | N | Valor orçado dois anos antes. |
| 5 | QT_DOIS_ANOS_ANT | NUMBER | Y | Quantidade orçada dois anos antes. |
| 6 | VL_ANO_ANT | NUMBER | N | Valor orçado no ano anterior. |
| 7 | QT_ANO_ANT | NUMBER | Y | Quantidade orçada no ano anterior. |
| 8 | VL_FORMULA | NUMBER | Y | Valor calculado pela fórmula. |
| 9 | VL_AJUSTE | NUMBER | Y | Valor ajustado pelo usuário. |
| 10 | TXT_FORMULA | VARCHAR2 | Y | Fórmula do indicador orçamentário. |
| 11 | VL_REALIZADO | NUMBER | N | Valor realizado. |
| 12 | SN_RECALCULADO | VARCHAR2 | N | Recalculado, sim ou nÃ£o. |

---

## DBAMV.ORCA_CONTROLE_IND_SETOR
> Tabela de inclusão do setor no indicador no controle.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_CONTROLE_IND_SETOR | NUMBER | N | Sequencial do controle. |
| 2 | CD_ORCA_CONTROLE | NUMBER | N | Codigo do controle. |
| 3 | CD_SETOR | NUMBER | N | Código do setor. |

---

## DBAMV.ORCA_CONTROLE_MOV
> Base com os valores calculados do orçamento.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_CONTROLE_MOV | NUMBER | N | Sequencial do item do movimento. |
| 2 | CD_ORCA_CONTROLE_SETOR | NUMBER | N | Sequencial do setor no movimento |
| 3 | DT_COMP_ATUAL | DATE | N | Data de competência atual. |
| 4 | VL_ORCADO_CONTR | NUMBER | N | Valor previsto controle. |
| 5 | QT_ORCADO_CONTR | NUMBER | Y | Quantidade previsto controle. |
| 6 | VL_REALIZADO_CONTR | NUMBER | Y | Valor realizado controle |
| 7 | QT_REALIZADO_CONTR | NUMBER | Y | Quantidade realizada controle |
| 8 | DS_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 9 | CD_ORCA_CONTROLE_MOV_AUX | NUMBER | Y | Sequencial do valor orçado no sub-item. |
| 10 | VL_ORCADO_FECHAMENTO | NUMBER | Y | Valor orçado no fechamento do controle. |
| 11 | QT_ORCADO_FECHAMENTO | NUMBER | Y | Quantidade orçada no fechamento do controle. |
| 12 | SN_ALTERADO | VARCHAR2 | Y | Alterado, sim ou não. |

---

## DBAMV.ORCA_CONTROLE_MOV_AUX
> Base valor orçados dos sub-itens relaionados.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_CONTROLE_MOV_AUX | NUMBER | N | Sequencial do controle dos valores de sub-itens. |
| 2 | CD_ORCA_CONTROLE_CONTA_AUX | NUMBER | N | Codigo do controle conta auxiliar. |
| 3 | DT_COMPETENCIA | DATE | Y | Data de competência. |
| 4 | QT_ORCADO | NUMBER | Y | Quantidade orçada. |
| 5 | VL_ORCADO | NUMBER | Y | Valor orçado. |

---

## DBAMV.ORCA_CONTROLE_PECA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_CONTROLE_PECA | NUMBER | N | Sequencial do contrela da peça |
| 2 | CD_ORCA_CONTROLE | NUMBER | N | Código do controle |
| 3 | CD_ORCA_PECA | NUMBER | N | Código da pça |

---

## DBAMV.ORCA_CONTROLE_PENDENCIAS
> Base com as pendências de controles.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_CONTROLE_PEND | NUMBER | N | Código da pendência do controle. |
| 2 | CD_ORCA_CONTROLE | NUMBER | N | Código do controle do movimento. |
| 3 | CD_BASE_ORCA | NUMBER | N | Código da base orçamentária. |
| 4 | CD_SETOR | NUMBER | N | Código do setor. |
| 5 | DT_CRIACAO | DATE | Y | Data da criação do controle. |
| 6 | DT_APROVACAO | DATE | Y | Data de aprovação de controle/setor. |
| 7 | CD_USUARIO | VARCHAR2 | Y | Usuário de aprovação. |
| 8 | CD_USUARIO_SETOR | VARCHAR2 | N | Usuário controller que efetuou a setorização. |
| 9 | TP_SITUACAO | VARCHAR2 | N | Situação do controle (P-Pendente, A-Aprovado, R-Rejeitado) |
| 10 | DT_ATUALIZA | DATE | N |  |

---

## DBAMV.ORCA_CONTROLE_PLANO_PEND
> Base com as pendências dos controles do plano.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_CONTROLE_PLANO_PEND | NUMBER | N | Código da pendência do controle. |
| 2 | CD_ORCA_CONTROLE | NUMBER | N | Código do controle do movimento. |
| 3 | CD_BASE_ORCA | NUMBER | N | Código da base orçamentária. |
| 4 | CD_ORCA_CONTA | NUMBER | N | Código da conta. |
| 5 | CD_SETOR | NUMBER | N | Código do setor. |
| 6 | CD_FORNECEDOR | NUMBER | Y | Código do fornecedor |
| 7 | CD_CONTRATO | NUMBER | Y | Código do contrato |
| 8 | CD_PROJETO | NUMBER | Y | Código do projeto |
| 9 | CD_ORCA_CONTROLE_CONTA | NUMBER | Y | Código do projeto |
| 10 | DT_APROVACAO | DATE | Y | Data de aprovação de controle/setor. |
| 11 | CD_USUARIO_APROVACAO | VARCHAR2 | Y | Usuário de aprovação. |
| 12 | TP_APROVADO | VARCHAR2 | N | Situação da aprovação (P-Pendente, A-Aprovado). |
| 13 | DT_AJUSTE | DATE | Y | Data de aprovação de controle/setor. |
| 14 | CD_USUARIO_AJUSTE | VARCHAR2 | Y | Usuário de aprovação. |
| 15 | DS_JUSTIFICATIVA | VARCHAR2 | Y | Justificativa do item ajustado. |

---

## DBAMV.ORCA_CONTROLE_SETOR
> Base do controle por Setor (Centro de custo)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_CONTROLE_SETOR | NUMBER | N | Sequencial do setor no controle. |
| 2 | CD_ORCA_CONTROLE_CONTA | NUMBER | N | Sequencial da conta no setor. |
| 3 | CD_SETOR | NUMBER | N | Código do setor. |
| 4 | QT_MEDIO | NUMBER | Y | Quantida média utilizada no orçamento. |
| 5 | SN_ORCADO | VARCHAR2 | N |  |

---

## DBAMV.ORCA_EXCECAO
> Tabela de exceção do orçamento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | TP_EXCECAO | VARCHAR2 | N | Tipo da exceção 1 - Convênio |
| 2 | CD_EXCECAO | NUMBER | N | Código da exceção |

---

## DBAMV.ORCA_EXIBE_INFO
> Base para exibir informações.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EXIBE_INFO | VARCHAR2 | N | Código exibir informações. |

---

## DBAMV.ORCA_EXTERNO
> Tabela de manutenção dos dados externos.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_EXTERNO | NUMBER | N | Sequencial do externo. |
| 2 | DT_COMPETENCIA | DATE | N | Data de competência. |
| 3 | VL_EXTERNO | NUMBER | N | Valor do externo |
| 4 | DS_EXTERNO | VARCHAR2 | Y | Descrição do externo. |
| 5 | CD_ORCA_EXTERNO_LOTE | NUMBER | N | Sequencial da tabela ORCA_EXTERNO_LOTE, FK na tabela de externo |
| 6 | CD_FORNECEDOR | NUMBER | Y | Sequencial da tabela FORNECEDOR, FK na tabela de externo |
| 7 | CD_SETOR | NUMBER | Y | Sequencial da tabela SETOR, FK na tabela de externo |
| 8 | CD_ITEM_RES | NUMBER | Y | Sequencial da tabela ITEM_RES, FK na tabela de externo |
| 9 | CD_MULTI_EMPRESA | NUMBER | Y | Sequencial da tabela MULTI_EMPRESAS, FK na tabela de externo |

---

## DBAMV.ORCA_EXTERNO_LOTE
> Tabela de inclusão de tipos externos.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_EXTERNO_LOTE | NUMBER | N | Sequencial do lote externo. |
| 2 | DS_ORCA_EXTERNO_LOTE | VARCHAR2 | Y | Descrição do lote externo. |
| 3 | CD_ORCA_TIPO_EXTERNO | NUMBER | N | Sequencial da tabela ORCA_EXTERNO_TIPO, FK na tabela de lote |

---

## DBAMV.ORCA_GRUPO_INDICADOR
> Tabela de inclusão do grupo do indicador no controle.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_GRUPO_INDICADOR | NUMBER | N | Sequencial do grupo. |
| 2 | DS_GRUPO | VARCHAR2 | N | Descrição do Grupo. |
| 3 | SN_ATIVO | VARCHAR2 | N | Indicacor de ativo. S-'SIM' e N-'NÃO' |

---

## DBAMV.ORCA_INDICADOR_COMP
> Tabela de inclusão do complemento do indicador no controle.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_INDICADOR_COMP | NUMBER | N | Sequencial do complemeto. |
| 2 | CD_INDICADOR_ORCAMENTARIO | NUMBER | N | Sequencial da tabela INDICADOR_ORCAMENTARIO, FK na tabela de complemento |
| 3 | VL_ORCA_INDICADOR_COMP | NUMBER | Y | Valor do complemento |
| 4 | DS_ORCA_INDICADOR_COMP | VARCHAR2 | Y | Descrição do complemento |
| 5 | DS_OBSERVACAO | VARCHAR2 | Y | Observação do complemento |

---

## DBAMV.ORCA_LOGS
> LOG genérico do orçamento.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_LOGS | NUMBER | N | Código sequencial do log. |
| 2 | DT_ACAO | DATE | N |  |
| 3 | NM_TABELA | VARCHAR2 | N | Nome da tebala em que foi efetuada a ação. |
| 4 | CD_USUARIO | VARCHAR2 | N | Código do usuário que efetou a ação. |
| 5 | CD_ACAO | VARCHAR2 | N | Nome da ação praticada. |
| 6 | DS_ACAO_ANT | VARCHAR2 | Y | Descrição da ação antes da atualização no banco. |
| 7 | DS_ACAO_POS | VARCHAR2 | Y | Descrição da ação após a atualização no banco. |

---

## DBAMV.ORCA_MOTIVO
> Motivos de Movimentações de Orçamento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MOTIVO | NUMBER | N | Código do Motivo |
| 2 | DS_MOTIVO | VARCHAR2 | N | Descrição do Motivo |
| 3 | SN_ATIVO | VARCHAR2 | N | Registro está ativo |
| 4 | DH_INSERT | DATE | N | Data de Insert do registro |
| 5 | CD_USUARIO_INS | VARCHAR2 | N | Código do Usuário de Insert do registro |
| 6 | DH_UPDATE | DATE | Y | Data do Último Update do registro |
| 7 | CD_USUARIO_UPD | VARCHAR2 | Y | Código do Usuário Último Update do registro |

---

## DBAMV.ORCA_NOTA_EXPLICATIVA
> Tabela de nota explicativa da base orçamentária.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_NOTA_EXPLICATIVA | NUMBER | N | Código sequencial da nota explicativa. |
| 2 | DT_CRIACAO | DATE | N | Data de criação da nota explicativa. |
| 3 | CD_BASE_ORCA | NUMBER | Y | Código do base |
| 4 | CD_MULTI_EMPRESA | NUMBER | Y | Código da empresa |
| 5 | CD_ORCA_CONTA | NUMBER | Y | Código da conta orçamentária. |
| 6 | CD_FORNECEDOR | NUMBER | Y | Código do fornecedor |
| 7 | CD_CONTRATO | NUMBER | Y | Código do contrato |
| 8 | CD_SETOR | NUMBER | Y | Código do setor. |
| 9 | CD_USUARIO | VARCHAR2 | N | Código do usuário. |
| 10 | DS_NOTA_EXPLICATIVA | VARCHAR2 | Y | Descrição da nota explicativa. |

---

## DBAMV.ORCA_PECA
> Peça orçamentária

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_PECA | NUMBER | N | Código da peça |
| 2 | DS_ORCA_PECA | VARCHAR2 | N | Descrição da peça |
| 3 | SN_ATIVO | VARCHAR2 | N | Indicador de peça ativa |
| 4 | DS_ORIENTACOES | VARCHAR2 | Y | Descreve uma orientação para o uso da peça. |
| 5 | SN_EXIBE_VALORES | VARCHAR2 | Y | Indicador para exibir valores da peça no controle. |
| 6 | SN_EXIBE_FORNECEDOR | VARCHAR2 | N | Indicador para apresentar o fornecedor no controle Sim/Não |
| 7 | SN_EXIBE_CONTRATO | VARCHAR2 | N | Indicador para apresentar o contrato no controle Sim/Não |
| 8 | SN_EXIBE_PROJETO | VARCHAR2 | N | Indicador para apresentar o contrato no controle Sim/Não |
| 9 | SN_EXIBE_INFO | VARCHAR2 | N | Indicador se o valor vai ser preenchido automaticamente no subitem do controle |
| 10 | SN_EDITA_ITEM_CONTROLE | VARCHAR2 | N | Indicador se será possivél alterar os dados do item do controle |
| 11 | SN_ORCADO | VARCHAR2 | N | Indicador para apresentar a peça no controle, opção gestor. |
| 12 | SN_EXIBE_CONTA | VARCHAR2 | N | Indicador para apresentar a conta Sim/Não |
| 13 | SN_ALTERA_SUBITEM | VARCHAR2 | N | Indicador que permite alterar o orçamento no sub-item. Dependente do Orçado desmarcado. |
| 14 | SN_INVESTIMENTO | VARCHAR2 | N | Indica se a peça é de investimento. |
| 15 | SN_SOLICITA_APROVACAO | VARCHAR2 | N | Indicador se a peça solicita aprovação |
| 16 | TP_PROJETAR | VARCHAR2 | Y | Tipo projetar (O=Orçado, null) |
| 17 | NR_MESES | NUMBER | Y | Número de meses de (1, 2, 3... 12). |
| 18 | SN_ESPECIE_PROD | VARCHAR2 | N | Indica se algum registro da tabela ORCA_PECA_ITEM está utilizando 'EPR' na coluna CD_TIPAGEM. |

---

## DBAMV.ORCA_PECA_ITEM
> Itens da Peça orçamentária

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_PECA_ITEM | NUMBER | N | Sequencial do item da peça. |
| 2 | CD_ORCA_PECA | NUMBER | N | Código da peça. |
| 3 | CD_TIPAGEM | VARCHAR2 | N | PRD-Produtos, SVC-Servicos, PRC-Procedimento Convênio, PRS-Procedimento SUS, PAC-Pacotes, PSN-Per... |
| 4 | CD_ITEM | NUMBER | Y | Código do item. |
| 5 | CD_ORCA_CONTA | NUMBER | N | Código da conta orçamentária. |
| 6 | VL_ITEM | NUMBER | Y | Valor do item. |
| 7 | CD_FORNECEDOR | NUMBER | Y | Código do fornecedor. |
| 8 | CD_CONTRATO | NUMBER | Y | Código do contrato. |
| 9 | CD_ORCA_PECA_ITEM_PAI | NUMBER | Y | Código do item pai. |
| 10 | DS_ITEM | VARCHAR2 | Y | Descrição do item |
| 11 | SN_ATIVO | VARCHAR2 | N | Indicador de item da peça ativo |
| 12 | CD_FILTRO | VARCHAR2 | Y | Código do filtro |
| 13 | SN_VALOR_EDITAVEL | VARCHAR2 | N | Indicador de valor editavel no controle |
| 14 | CD_ORCA_PECA_ITEM_RELACIONADO | NUMBER | Y | Código do item pertencente a outra peça do qual este subitem é relacionado. |
| 15 | QT_MESES_AGENDAMENTO | NUMBER | Y | Quantidade de meses para agendar o orçamento do item. |
| 16 | TXT_FORMULA | VARCHAR2 | Y |  |
| 17 | SN_ERRO | VARCHAR2 | N |  |
| 18 | TP_VISAO_CONTROLE | VARCHAR2 | N | Tipo de visão no controle. VLR-Valor, QTD-Quantidade e AMB-Ambos |
| 19 | SN_VALOR_AUTOMATICO | VARCHAR2 | N | Indicador se o valor vai ser preenchido automaticamente no subitem do controle |
| 20 | CD_INFORMACAO_AUXILIAR | VARCHAR2 | Y | Código da informação auxiliar. |
| 21 | SN_EDITA_RELACIONADO | VARCHAR2 | N | Indicador se item relacionado vai ser editável |
| 22 | CD_ORCA_RATEIO | NUMBER | Y | Código do rateio associado |

---

## DBAMV.ORCA_PECA_ITEM_SETOR
> Setor por itens da Peça orçamentária

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_PECA_ITEM | NUMBER | N | Sequencial do item da peça. |
| 2 | CD_SETOR | NUMBER | N | Código do setor. |

---

## DBAMV.ORCA_PECA_VARIAVEIS
> Base guardar as variáveis utilizadas na fórmula da peça.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_VARIAVEL | VARCHAR2 | N | Código da variável |
| 2 | NM_VARIAVEL | VARCHAR2 | N | Nome da variável |
| 3 | DS_VARIAVEL | VARCHAR2 | N | Descrição da variável |
| 4 | SN_VARIAVEL_MV | VARCHAR2 | N | Indica se a variável foi criada pela MV |
| 5 | TXT_QUERY | VARCHAR2 | Y | Query da variável |

---

## DBAMV.ORCA_PERFIL
> Base Perfil do orçamento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_PERFIL | NUMBER | N | Código do perfil no orçamento. |
| 2 | DS_PERFIL | VARCHAR2 | N | Código do usuário. |
| 3 | SN_TRANSFERE | VARCHAR2 | N | Permite transferir valores (S/N) |
| 4 | SN_TODAS_CONTAS | VARCHAR2 | N | Permite visualizar todas as contas (S/N) |
| 5 | SN_TODOS_SETORES | VARCHAR2 | N | Permite visualizar todos os setores (S/N) |
| 6 | SN_SETORIZA | VARCHAR2 | N | Permite setorizar controle (S/N) |
| 7 | SN_APORTA | VARCHAR2 | N | Permite aportar valores (S/N) |
| 8 | SN_APROVA | VARCHAR2 | N | Permite aprovar orçamento (S/N) |

---

## DBAMV.ORCA_PERFIL_USUARIO
> Base Perfil do usuário no orçamento.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_USUARIO | VARCHAR2 | N | Código do perfil no orçamento. |
| 2 | CD_ORCA_PERFIL | NUMBER | N | Código do perfil. |
| 3 | SN_EXIBE_VALORES | VARCHAR2 | Y | Indicador para exibir valores na peça e no controle. |
| 4 | SN_EXIBE_INFO | VARCHAR2 | N | Indicador se o valor vai ser preenchido automaticamente no subitem do controle |

---

## DBAMV.ORCA_PERFIL_USUA_CONTA
> Base Perfil das contas do usuário no orçamento.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_USUARIO | VARCHAR2 | N | Código do perfil no orçamento. |
| 2 | CD_ORCA_CONTA | NUMBER | N | Código da conta orçamentária. |

---

## DBAMV.ORCA_PERFIL_USUA_PROV
> Base Perfil provisório do usuário no orçamento.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_PERFIL_PROV | NUMBER | N | Código do perfil provisório. |
| 2 | CD_USUARIO | VARCHAR2 | N | Código do perfil no orçamento. |
| 3 | CD_ORCA_PERFIL | NUMBER | N | Código do perfil. |
| 4 | DT_VIGENCIA_INI | DATE | N | Data de vigência início. |
| 5 | DT_VIGENCIA_FIM | DATE | N | Data de vigência fim. |

---

## DBAMV.ORCA_PERFIL_USUA_SETOR
> Base Perfil dos setores do usuário no orçamento.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_USUARIO | VARCHAR2 | N | Código do perfil no orçamento. |
| 2 | CD_SETOR | NUMBER | N | Código do setor. |

---

## DBAMV.ORCA_PLANO
> Plano de contas orçamentário

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PLANO | VARCHAR2 | N | Código do plano de contas |
| 2 | DS_PLANO | VARCHAR2 | N | Descrição do plano de contas |
| 3 | DT_VIGENCIA_INI | DATE | N | Data de início da vigência do plano |
| 4 | DT_VIGENCIA_FIM | DATE | Y | Data de final da vigência do plano |
| 5 | SN_ATIVO | VARCHAR2 | N |  |
| 6 | DH_INSERT | DATE | N |  |
| 7 | CD_USUARIO_INS | VARCHAR2 | N |  |
| 8 | DH_UPDATE | DATE | Y |  |
| 9 | CD_USUARIO_UPD | VARCHAR2 | Y |  |
| 10 | CD_MASCARA | VARCHAR2 | Y | Mascara do plano. |
| 11 | TP_PLANO | VARCHAR2 | Y | Tipo de plano G-Gerencial, O-Orçamento |
| 12 | CD_PLANO_CNTA | NUMBER | Y |  |

---

## DBAMV.ORCA_PLANO_CNTA
> Estrutura do Plano de Contas de Orçamento (*M*)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PLANO_ESTR | NUMBER | N | Código Estrutural |
| 2 | CD_ORCA_CONTA | NUMBER | N | Código da Conta de orçamento |

---

## DBAMV.ORCA_PLANO_EMPR
> Plano de Contas de Orçamento (*M*)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PLANO | VARCHAR2 | N | Código do Plano |
| 2 | CD_MULTI_EMPRESA | NUMBER | N | Código da Empresa |
| 3 | SN_ATIVO | VARCHAR2 | N | Plano ativo para a empresa S/N? |

---

## DBAMV.ORCA_PLANO_ESTR
> Estrutura do Plano de Contas de Orçamento (*M*)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PLANO_ESTR | NUMBER | N | Código do Registro |
| 2 | CD_PLANO | VARCHAR2 | N | Código do Plano |
| 3 | CD_ESTRUTURAL | VARCHAR2 | N | Código Estrutural |
| 4 | DS_ESTRUTURAL | VARCHAR2 | N | Descrição do Estrutural |
| 5 | TP_GRAU | VARCHAR2 | N | Grau da conta (Sintético/Analítico)? |
| 6 | TP_VINCULO | VARCHAR2 | N |  |
| 7 | TP_NATUREZA | VARCHAR2 | N |  |

---

## DBAMV.ORCA_RATEIO
> Tabela contendo o rateio por setor do orçamento.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_RATEIO | NUMBER | N | Código do rateio. |
| 2 | DS_COMPLEMENTO | VARCHAR2 | Y | Descrição do rateio. |
| 3 | SN_ATIVO | VARCHAR2 | N | Ativo: (S=Sim) ou  (N=Não). |
| 4 | TP_ORCA_RATEIO | VARCHAR2 | N | Tipo: (CO=Construção), (OR=Orçado), (RE=Realizado) ou (RO=Orçado/Realizado). |

---

## DBAMV.ORCA_RATEIO_DESTINO
> Tabela contendo o rateio de destino por setor do orçamento.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_RATEIO_ORIGEM | NUMBER | Y | Código do rateio. |
| 2 | CD_SETOR | NUMBER | N | Código do setor. |
| 3 | DT_INICIAL | DATE | N | Data inicial do rateio. |
| 4 | DT_FINAL | DATE | Y | Data final do rateio. |
| 5 | VL_PERCENTUAL | NUMBER | N | Valor do percentual. |
| 6 | CD_ORCA_RATEIO_DESTINO | NUMBER | N | Código do tabela orca rateio destino. |
| 7 | CD_ORCA_RATEIO | NUMBER | N | Código do rateio. |

---

## DBAMV.ORCA_RATEIO_ORIGEM
> Tabela contendo o rateio de destino por setor do orçamento.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_RATEIO_ORIGEM | NUMBER | N | Código do rateio de origem. |
| 2 | CD_ORCA_RATEIO | NUMBER | N | Código do rateio. |
| 3 | CD_ORCA_CONTA | NUMBER | Y | Código da conta orçamentária |
| 4 | CD_SETOR | NUMBER | N | Código do setor. |
| 5 | VL_PERCENTUAL | NUMBER | N | Valor do percentual. |
| 6 | DT_INICIAL | DATE | N | Data inicial do rateio. |
| 7 | DT_FINAL | DATE | Y | Data final do rateio. |

---

## DBAMV.ORCA_RATEIO_USUARIO
> Tabela de usuário do rateio.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_RATEIO_USUARIO | NUMBER | N | Código da tabela orca rateio usuário. |
| 2 | CD_ORCA_RATEIO | NUMBER | N | Código do do rateio. |
| 3 | CD_USUARIO | VARCHAR2 | N | Código do usuário. |

---

## DBAMV.ORCA_REALIZADO
> Base de orçamento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REALIZADO | NUMBER | N | Código do lote de realizado |
| 2 | DS_REALIZADO | VARCHAR2 | N | Descrição do realizado |
| 3 | CD_ANO | NUMBER | N | Código do ano |
| 4 | CD_MULTI_EMPRESA | NUMBER | N | Código da empresa |
| 5 | CD_ORCA_CONTA | NUMBER | Y |  |
| 6 | CD_CENTRO | NUMBER | Y |  |
| 7 | SN_SOBREPOR | VARCHAR2 | N | Manter registros existentes ou apagar |
| 8 | DT_ABERTURA | DATE | N | Data da abertura |
| 9 | DT_FECHAMENTO | DATE | Y | Data do fechamento |
| 10 | CD_USUARIO_ABER | VARCHAR2 | N | Código do usuário de abertura |
| 11 | CD_USUARIO_FECH | VARCHAR2 | Y | Código do usuário de fechamento |

---

## DBAMV.ORCA_REALIZADO_ITEM
> Base de orçamento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REALIZADO_ITEM | NUMBER | N | Código do item da base |
| 2 | CD_REALIZADO | NUMBER | N | Código do base |
| 3 | CD_ANO | NUMBER | N | Código do ano exercício |
| 4 | CD_MULTI_EMPRESA | NUMBER | N | Código da empresa |
| 5 | CD_PROJETO | NUMBER | Y | Código do projeto |
| 6 | CD_ORCA_CONTA | NUMBER | N | Código da conta de orçamento |
| 7 | CD_CENTRO | NUMBER | N | Código do centro de custo |
| 8 | VL_REALIZADO_M01 | NUMBER | N | Valor realizado em Janeiro |
| 9 | VL_REALIZADO_M02 | NUMBER | N | Valor realizado em Fevereiro |
| 10 | VL_REALIZADO_M03 | NUMBER | N | Valor realizado em Março |
| 11 | VL_REALIZADO_M04 | NUMBER | N | Valor realizado em Abril |
| 12 | VL_REALIZADO_M05 | NUMBER | N | Valor realizado em Maio |
| 13 | VL_REALIZADO_M06 | NUMBER | N | Valor realizado em Junho |
| 14 | VL_REALIZADO_M07 | NUMBER | N | Valor realizado em Julho |
| 15 | VL_REALIZADO_M08 | NUMBER | N | Valor realizado em Agosto |
| 16 | VL_REALIZADO_M09 | NUMBER | N | Valor realizado em Setembro |
| 17 | VL_REALIZADO_M10 | NUMBER | N | Valor realizado em Outubro |
| 18 | VL_REALIZADO_M11 | NUMBER | N | Valor realizado em Novembro |
| 19 | VL_REALIZADO_M12 | NUMBER | N | Valor realizado em Dezembro |

---

## DBAMV.ORCA_REALIZADO_MOV
> Tabela com as origens do realizado.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_REALIZADO_MOV | NUMBER | N | Sequencial da movimentação. |
| 2 | CD_ORCA_CONTA | NUMBER | N | Código da conta orçamentária. |
| 3 | CD_SETOR | NUMBER | N | Código do setor. |
| 4 | CD_FORNECEDOR | NUMBER | Y | Código do fornecedor. |
| 5 | CD_CONTRATO | NUMBER | Y | Código do contrato. |
| 6 | CD_PROJETO | NUMBER | Y | Código do projeto. |
| 7 | CD_ORIGEM_DOCMTO | VARCHAR2 | N | Código da origem da alçada. Indica qual o sistema que gerou movimento. |
| 8 | NR_DOCUMENTO | VARCHAR2 | N | Número do documento. Identificador do documento no sistema de origem. |
| 9 | CD_NATUREZA | VARCHAR2 | N | Código da natureza. C-Crédito/D-Débito |
| 10 | DT_MOVIMENTO | DATE | N | Data do movimento. |
| 11 | VL_MOVIMENTO | NUMBER | N | Valor do movimento |
| 12 | CD_BASE_ORCA_REALIZADO | NUMBER | N | Código identificador do realizado. |

---

## DBAMV.ORCA_TIPO_CENTRO
> Tipos de Centros de Custos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIPO_CENTRO | VARCHAR2 | N |  |
| 2 | NM_CONTA | VARCHAR2 | N |  |
| 3 | SN_ATIVO | VARCHAR2 | N | Registro está ativo |
| 4 | DH_INSERT | DATE | N | Data de Insert do registro |
| 5 | CD_USUARIO_INS | VARCHAR2 | N | Código do Usuário de Insert do registro |
| 6 | DH_UPDATE | DATE | Y | Data do Último Update do registro |
| 7 | CD_USUARIO_UPD | VARCHAR2 | Y | Código do Usuário Último Update do registro |

---

## DBAMV.ORCA_TIPO_CONTA
> Tipos de Contas de Orçamento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIPO_CONTA | VARCHAR2 | N | Código do Tipo de Contas de Orçamento |
| 2 | NM_TIPO_CONTA | VARCHAR2 | N | Descrição do Tipo da Conta de Orçamento |
| 3 | TP_CONTA | VARCHAR2 | N | Tipo Conta |
| 4 | SN_ATIVO | VARCHAR2 | N | Registro está ativo |
| 5 | DH_INSERT | DATE | N | Data de Insert do registro |
| 6 | CD_USUARIO_INS | VARCHAR2 | N | Código do Usuário de Insert do registro |
| 7 | DH_UPDATE | DATE | Y | Data do ultimo Update do registro |
| 8 | CD_USUARIO_UPD | VARCHAR2 | Y | Código do Usuário ?timo Update do registro |

---

## DBAMV.ORCA_TIPO_EXTERNO
> Tabela de inclusão de tipos externos.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_TIPO_EXTERNO | NUMBER | N | Sequencial do tipo externo. |
| 2 | DS_ORCA_TIPO_EXTERNO | VARCHAR2 | Y | Descrição do tipo externo. |
| 3 | SN_ATIVO | VARCHAR2 | Y | Indica se o tipo exteno está ativo ou não DEFAULT S |

---

## DBAMV.ORCA_VARIAVEL
> Variáveis de Planilhas

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_VARIAVEL | VARCHAR2 | N | Identificação do registro |
| 2 | DS_ORCA_VARIAVEL | VARCHAR2 | N | Descrição da variável |
| 3 | QA_ORCA_VARIAVEL | NUMBER | Y | Quantidade padrão |
| 4 | VA_ORCA_VARIAVEL | NUMBER | Y | Valor padrão |
| 5 | SN_EMPRESA | VARCHAR2 | N | Preencher empresa |
| 6 | SN_ANO | VARCHAR2 | N | Preencher ano |
| 7 | SN_MES | VARCHAR2 | N | Distribuir nos meses |
| 8 | DA_INSERT | DATE | N | Momento da inserção do registro |
| 9 | CD_USUARIO_INS | VARCHAR2 | N | Usuário do momento de inserção |

---

## DBAMV.ORCA_VARIAVEL_CNTA
> Contas relacionadas com variáveis

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_VARIAVEL | VARCHAR2 | N | Identificação da variável |
| 2 | CD_ORCA_CONTA | NUMBER | N | Identificação da conta |
| 3 | SN_PRINCIPAL | VARCHAR2 | N | Conta é a principal da variável |
| 4 | QA_MESES_PRINCIPAL | NUMBER | N | Quantos meses Antes(-)/Depois(+) da entrada na conta principal |
| 5 | QA_MESES | NUMBER | N | Quantos meses se repete na conta secundária |
| 6 | CM_FORMULA | VARCHAR2 | Y | Fórmula de cálculo da conta secundária |
| 7 | DA_INSERT | DATE | N | Momento da inserção do registro |
| 8 | CD_USUARIO_INS | VARCHAR2 | N | Usuário do momento de inserção |

---

## DBAMV.ORCA_WIZARD_AUX
> Tabela auxiliar para montagem do relatório do Wizard.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_WIZARD_AUX | NUMBER | N | Código identificador da tabela. |
| 2 | CD_NIVEL | NUMBER | Y | Código identificador do nível. |
| 3 | SN_APRESENTA_DECIMAL | VARCHAR2 | Y | Identificador de formatação com casas decimais. |
| 4 | DS_EVENTO | VARCHAR2 | Y | Descrição do Evento. |
| 5 | VL_ITEM0 | NUMBER | Y | Campo que reberá os valores |
| 6 | VL_ITEM1 | NUMBER | Y | Campo que reberá os valores |
| 7 | VL_ITEM2 | NUMBER | Y | Campo que reberá os valores |
| 8 | VL_ITEM3 | NUMBER | Y | Campo que reberá os valores |
| 9 | VL_ITEM4 | NUMBER | Y | Campo que reberá os valores |
| 10 | VL_ITEM5 | NUMBER | Y | Campo que reberá os valores |
| 11 | VL_ITEM6 | NUMBER | Y | Campo que reberá os valores |
| 12 | VL_ITEM7 | NUMBER | Y | Campo que reberá os valores |
| 13 | VL_ITEM8 | NUMBER | Y | Campo que reberá os valores |
| 14 | VL_ITEM9 | NUMBER | Y | Campo que reberá os valores |
| 15 | VL_ITEM10 | NUMBER | Y | Campo que reberá os valores |
| 16 | VL_ITEM11 | NUMBER | Y | Campo que reberá os valores |
| 17 | CD_CONTABIL_GRUPO | NUMBER | Y | Código do Grupo contabil. |
| 18 | CD_GRUPO_REF | NUMBER | Y | Código do grupo de referencia. |
| 19 | DS_CONTABIL_GRUPO | VARCHAR2 | Y | Descrição do Grupo contabil. |
| 20 | DS_OPERACAO | VARCHAR2 | Y | Descrição da operação. |
| 21 | CD_USUARIO | VARCHAR2 | Y | Código do usuário. |
| 22 | CD_IDENTIFICADOR | VARCHAR2 | Y | Identificador de inserção. |

---

## DBAMV.PAGU_ACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ACAO | NUMBER | N |  |
| 2 | DS_ACAO | VARCHAR2 | N |  |
| 3 | DS_SCRIPT | VARCHAR2 | N |  |

---

## DBAMV.PAGU_AVALIACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AVALIACAO | NUMBER | N |  |
| 2 | CD_FORMULA | NUMBER | N |  |
| 3 | DH_AVALIACAO | DATE | N |  |
| 4 | NM_USUARIO | VARCHAR2 | N |  |
| 5 | VL_RESULTADO | NUMBER | Y |  |
| 6 | CD_ATENDIMENTO | NUMBER | Y |  |
| 7 | DS_INTERPRETACAO_RESULTADO | VARCHAR2 | Y | descric?o da interpretac?o do resultado |
| 8 | CD_TRIAGEM_ATENDIMENTO | NUMBER | Y | Codigo de Triagem Atendimento |
| 9 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da multi-empresa |
| 10 | CD_REGISTRO_CLINICO | NUMBER | Y | Especifica o RegistroClinico que foi realizado no atendimento |
| 11 | CD_DOCUMENTO_CLINICO | NUMBER | Y | O codigo do documento clinico, setado via trigger (fk) |
| 12 | CD_COLETA_SINAL_VITAL | NUMBER | Y |  |
| 13 | CD_AVALIACAO_GESTACAO | NUMBER | Y | Código da avaliação da gestação |
| 14 | SN_EXIBIR_RESULTADO | VARCHAR2 | N | Indica se o resultado, a inerpretação e a intervençãlo devem ser exibidos. |
| 15 | SN_ESTADO_PREVIO | VARCHAR2 | Y | INDICA SE DEVE SER CONSIDERADO O ESTADO PRÉVIO DO PACIENTE DURANTE A CLASSIFICAÇÃO |
| 16 | SN_AVALIACAO_COMPLEMENTAR | VARCHAR2 | Y | Identifica se a avaliacao e complementar no MVSACR |

---

## DBAMV.PAGU_FORMULA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FORMULA | NUMBER | N |  |
| 2 | DS_FORMULA | VARCHAR2 | N |  |
| 3 | TP_FORMULA | VARCHAR2 | N |  |
| 4 | CD_ACAO | NUMBER | Y |  |
| 5 | NR_PERIOCIDADE_AVALIACAO | NUMBER | Y | Identifica em quantos dias sera feita uma nova avaliacao |
| 6 | NR_INICIO_AVALIACAO | NUMBER | Y | Identifica o inicio da avaliac?o apos o atendimento |
| 7 | SN_AVALIACAO_ALTA | VARCHAR2 | Y | Identifica se sera solicitada a avaliac?o na alta do paciente |
| 8 | SN_ATIVAR_REGRAS | VARCHAR2 | N | Indica se a regra da fórmula está ativa (S) ou inativa (N). |
| 9 | CD_UNIDADE_FORMULA | NUMBER | Y | Informa a unidade da fórmula |

---

## DBAMV.PAGU_FORMULA_INTERPRETACAO
> Tabela destinada a guardar as interpretac?es da avaliac?es

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PAGU_FORMULA_INTERPRETACAO | NUMBER | N | Codigo de identificac?o da interpretac?o de formulas |
| 2 | CD_FORMULA | NUMBER | N | Codigo de identificac?o da avaliac?o |
| 3 | VL_INICIAL | NUMBER | N | Valor inicial da interpretac?o |
| 4 | VL_FINAL | NUMBER | N | Valor final da interpretac?o |
| 5 | DS_INTERPRETACAO | VARCHAR2 | N | Interpretac?o da avaliac?o |
| 6 | DS_INTERVENCAO | VARCHAR2 | Y | Intervenc?es para a Interpretac?o |
| 7 | DS_SIGLA_INTERPRETACAO | VARCHAR2 | Y | Sigla da interpretac?o |
| 8 | DS_SIGLA_INTERVENCAO | VARCHAR2 | Y | Sigla da intervencao |

---

## DBAMV.PAGU_FORMULA_REGRAS_RESULT
> Tabela para guardar as regras para exibir/ocultar o resultado

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PAGU_FORMULA_REGRAS_RESULT | NUMBER | N | Código de regras do resultado |
| 2 | CD_FORMULA | NUMBER | N | Código da fórmula |
| 3 | SN_EXIBIR | VARCHAR2 | N | Indica se a regra está ativa (S) ou inativa (N) |

---

## DBAMV.PAGU_FORMULA_SETOR
> Tabela de configurac?o de Formulas por setor.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SETOR | NUMBER | N | Codigo do Setor. |
| 2 | CD_FORMULA | NUMBER | N | Codigo da Formula. |
| 3 | TP_AVALIACAO | VARCHAR2 | N | Ogrigatoriedade de preenchimento. |

---

## DBAMV.PAGU_ITAVALIACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AVALIACAO | NUMBER | N |  |
| 2 | CD_PERGUNTA | NUMBER | N |  |
| 3 | CD_RESPOSTA | NUMBER | Y |  |
| 4 | VL_RESPOSTA | NUMBER | Y |  |
| 5 | DS_RESPOSTA | VARCHAR2 | Y |  |
| 6 | CD_SINTOMA_AVALIACAO | NUMBER | Y | codigo do sintoma avaliac?o |
| 7 | SN_FLAG_ESPECIFICO | VARCHAR2 | Y | sim ou n?o do flag especifico |
| 8 | NR_ORDEM_PERGUNTA | NUMBER | Y | numero da ordem da pergunta |
| 9 | CD_CLASSIFICACAO | NUMBER | Y | codigo do protocolo |

---

## DBAMV.PAGU_ITFORMULA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FORMULA | NUMBER | N |  |
| 2 | CD_ITFORMULA | NUMBER | N |  |
| 3 | NR_ORDEM | NUMBER | N |  |
| 4 | TP_ITFORMULA | VARCHAR2 | N |  |
| 5 | CD_PERGUNTA | NUMBER | Y |  |
| 6 | DS_QUERY_BUSCA | VARCHAR2 | Y |  |
| 7 | VL_FIXO | NUMBER | Y |  |
| 8 | CD_FORMULA_AUX | NUMBER | Y |  |

---

## DBAMV.PAGU_OBJETO
> Tabela que deve armazenar os tipos de objetos que compoem um prontuario do paciente

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_OBJETO | NUMBER | N | Codigo do Objeto |
| 2 | NM_OBJETO | VARCHAR2 | N | Descricao do Objeto |
| 3 | TP_OBJETO | VARCHAR2 | N | Tipo de Objeto Ex- Prescr Medica, Prescr Enferm, Trancricao, Admissao |
| 4 | NR_ORDEM | NUMBER | N | Ordem para exibicao na tela |
| 5 | SN_INTERNACAO | VARCHAR2 | N | Indica se e permitido registro deste tipo de objeto para atendimentos de internac?o |
| 6 | SN_AMBULATORIO | VARCHAR2 | N | Indica se e permitido registro deste tipo de objeto para atendimento Ambulatorial |
| 7 | SN_EXTERNO | VARCHAR2 | N | Indica se e permitido registro deste tipo de objeto para atendimento Externo |
| 8 | SN_URGENCIA | VARCHAR2 | N | Indica se e permitido registro deste tipo de objeto para atendimentos de Urgencia/Emergencia |
| 9 | SN_HOME_CARE | VARCHAR2 | N | Indica se e permitido registro deste tipo de objeto para atendimentos de Home Care |
| 10 | SN_SUS | VARCHAR2 | N | Indica se e permitido registro deste tipo de objeto para atendimentos de internac?o SUS |
| 11 | SN_BUSCA_ATIVA | VARCHAR2 | N | Indica se e permitido registro deste tipo de objeto para atendimentos de Busca Ativa |
| 12 | SN_EXCETO_TIP_PRESC | VARCHAR2 | N | Exceto os Itens selecionados (S)im (N)ao |
| 13 | CD_TEMA_CLINICO | NUMBER | Y | Codigo do tipo da Consulta |
| 14 | DS_EXIBICAO | VARCHAR2 | Y | Exibe a descricao de um objeto |
| 15 | CD_TIPO_DOCUMENTO | NUMBER | Y | codigo do tipo de documento relacionado |
| 16 | SN_ASSINATURA | VARCHAR2 | Y | Informa se o objeto pode ser assinado |
| 17 | DT_INICIO_VIGENCIA | DATE | Y | Data de inicio da vigencia do documento com pendencia da assinatura |

---

## DBAMV.PAGU_OBJETO_PARAMETRO
> Tabela de Associac?o da Pagu Objeto com  o Repositorio de Parametros para o Tipo de Documento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_OBJETO | NUMBER | N | Codigo do Pagu Objeto |
| 2 | CD_PARAMETRO_PAGU_OBJETO | NUMBER | N | Codido do Repositorio de Parametros para o Tipo de Documento |
| 3 | VL_PARAMETRO | VARCHAR2 | N | Valor escolhido |

---

## DBAMV.PAGU_OBJETO_PERG_FORMULA
> Tabela que configura as perguntas que precisam ser vistas ou manipuladas na prescrição que serve de entrada para as fórmulas que calculam a dose dos itens

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PAGU_OBJETO_PERG_FORMULA | NUMBER | N | Chave Primária |
| 2 | CD_OBJETO | NUMBER | N | Código do objeto de prescrição de tratamento. É preenchido automaticamente pelo sistema |
| 3 | CD_PERGUNTA | NUMBER | N | Código da pergunta que será exibido no título de cada prescrição na prescrição de tratamento |
| 4 | CD_FORMULA | NUMBER | Y | Caso a resposta da pergunta seja o resultado de uma fórmula. Por exemplo, para a pergunta SC(Supe... |
| 5 | NM_TITULO | VARCHAR2 | N | Texto que será exibido ao lado da pergunta na barra de título da prescrição de tratamento. Caso n... |
| 6 | NR_ORDEM | NUMBER | N | Ordem que as perguntas devem ser exibidas |
| 7 | TP_EXIBICAO | VARCHAR2 | N | Indica a forma de visualização, caso a pergunta não esteja sendo solicitado no item de prescrição... |

---

## DBAMV.PAGU_OBJETO_RELATORIO
> Modulos de Relatorio associados a Pagu_Objeto

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_OBJETO | NUMBER | N | Codigo do Pagu Objeto |
| 2 | CD_MODULO | VARCHAR2 | N | Codigo do Modulo |
| 3 | CD_PAGU_OBJETO_RELATORIO | NUMBER | N |  |

---

## DBAMV.PAGU_OBJETO_REL_PARAM
> Parametros dos Modulos de Relatorio para Pagu_Obejtos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_OBJETO | NUMBER | N | Codigo do Pagu Objeto |
| 2 | CD_MODULO | VARCHAR2 | N | Codigo do Modulo |
| 3 | CD_PARAMETRO | VARCHAR2 | N | Codigo do Parametro |
| 4 | DS_PARAMETRO | VARCHAR2 | N | Descric?o do Parametro |
| 5 | CD_PAGU_OBJETO_RELATORIO | NUMBER | N |  |

---

## DBAMV.PAGU_PERGUNTA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PERGUNTA | NUMBER | N |  |
| 2 | NM_IDENTIFICADOR | VARCHAR2 | N |  |
| 3 | DS_PERGUNTA | VARCHAR2 | N |  |
| 4 | TP_PERGUNTA | VARCHAR2 | N |  |
| 5 | DS_VALOR_INICIAL | VARCHAR2 | Y | Valor inicial da pergunta, que pode ser uma query. |
| 6 | SN_AVALIACAO | VARCHAR2 | N | Indica se o registro de pergunta sera visualizado na lista de possibilidades do processo de avali... |
| 7 | SN_JUSTIFICATIVA | VARCHAR2 | N | Indica se o registro de pergunta sera visualizado na lista de perguntas possiveis das justificati... |
| 8 | SN_SINTESE | VARCHAR2 | N | Indica se o registro de pergunta sera visualizado na lista de possibilidades das perguntas da sin... |
| 9 | DS_EXPLICACAO | VARCHAR2 | Y | descric?o da explicac?o |
| 10 | TP_VALOR_INICIAL | VARCHAR2 | N | Identifica o tipo de valor inicial. Podera ser V - Valor, Q - Query ou A - Aferic?o |
| 11 | CD_SINAL_VITAL | NUMBER | Y | Codigo do Sinal vital, vindo da tabela DBAMV.SINAL_VITAL. Este sera informado quando a opc?o Afer... |

---

## DBAMV.PAGU_REGRAS_RESULT_PERGUNTA
> Tabela para guardar as regras para exibir/ocultar o resultado da pergunta

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PAGU_REGRAS_RESULT_PERGUNTA | NUMBER | N | Indica o código do resultado da pergunta (Pk). |
| 2 | CD_PAGU_FORMULA_REGRAS_RESULT | NUMBER | N | Indica o código da regra de resultado da pergunta (Fk). |
| 3 | CD_PERGUNTA | NUMBER | N | Indica o código da pergunta (Fk). |
| 4 | VL_INICIAL | NUMBER | Y | Indica o valor inicial para cálcular na fórmula da avaliação. |
| 5 | VL_FINAL | NUMBER | Y | Indica o valor final para cálcular na fórmula da avaliação. |
| 6 | VL_FIXO | NUMBER | Y | Indica o valor fixo para cálcular na fórmula da avaliação. |

---

## DBAMV.PAGU_REGRAS_RES_PERGUN_RESP
> Tabela para guardar as respostas de uma pergunta

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PAGU_REGRAS_RES_PERGUN_RESP | NUMBER | N | Indica o código da resposta da pergunta (Pk). |
| 2 | CD_PAGU_REGRAS_RESULT_PERGUNTA | NUMBER | N | Indica o código do resultado da pergunta (Fk). |
| 3 | CD_RESPOSTA | NUMBER | N | Indica o código da resposta (Fk). |
| 4 | CD_PERGUNTA | NUMBER | N |  |

---

## DBAMV.PAGU_RESPOSTA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PERGUNTA | NUMBER | N |  |
| 2 | CD_RESPOSTA | NUMBER | N |  |
| 3 | DS_RESPOSTA | VARCHAR2 | N |  |
| 4 | NR_ORDEM | NUMBER | N |  |
| 5 | VL_RESPOSTA | NUMBER | N |  |
| 6 | FX_INICIAL | NUMBER | Y |  |
| 7 | FX_FINAL | NUMBER | Y |  |
| 8 | CD_FORMULA | NUMBER | Y |  |
| 9 | CD_ITFORMULA | NUMBER | Y |  |
| 10 | CD_FORMULA_ITFORMULA | NUMBER | Y |  |

---

## DBAMV.PECA_ORCAMENTARIA
> Tabela responsavel por manter as Pecas Orcamentarias

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PECA_ORCAMENTARIA | NUMBER | N | Codigo da Peca Orcamentaria |
| 2 | DS_PECA_ORCAMENTARIA | VARCHAR2 | N | Descric?o da Peca Orcamentaria |
| 3 | CD_ESTRUTURAL | VARCHAR2 | N | Codigo Estrutural da Peca Orcamentaria |
| 4 | CD_PECA_ORCAMENTARIA_PAI | NUMBER | Y | Codigo da Peca Orcamentaria Pai |
| 5 | CD_ORCAMENTO_HOSPITALAR | NUMBER | N | Codigo do Orcamento Hospitalar |
| 6 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da Empresa |
| 7 | SN_LANCAR_SETOR | VARCHAR2 | N | Indicador de lancamento para setor |
| 8 | SN_CONSOLIDADO | VARCHAR2 | N | SN para controle da consolidai??i??o da pei??a orcamentaria |
| 9 | DT_ULTIMA_CONSOLIDACAO | DATE | Y | Data da ultima consolidai??i??o da pei??a ori??amentaria |
| 10 | CD_PECA_ORCAMENTARIA_CSLDC_ORI | NUMBER | Y | Origem dos saldos restaurados pela consolidali??i??o |
| 11 | CD_LOTE_PECA_ORCAMENTARIA | NUMBER | Y |  |
| 12 | CD_PECA_ORCAMENTARIA_ORIGEM | NUMBER | Y | Ci??digo da pei??a origem |
| 13 | SN_ORCAR_QUANTIDADE | VARCHAR2 | N | ori??ar por quantidade (sim ou ni??o) |
| 14 | DS_TITULO | VARCHAR2 | Y | Titulo para relatorio |
| 15 | DS_OBSERVACAO | VARCHAR2 | Y | Observação para relatorio |
| 16 | DS_RELATORIO | VARCHAR2 | Y | Nome do relatorio |
| 17 | SN_PECA_PERSONALIZADA | VARCHAR2 | N | Sim/Não para identificação de peça customizada |
| 18 | DT_REFERENCIA | DATE | Y | Data de Referência para relatório |
| 19 | CD_CONVENIO_ORCAMENTO | NUMBER | Y | Codigo do convenio |
| 20 | CD_UNIDADES_CONVENIO_ORCAMENTO | NUMBER | Y | Codigo da unidade do convenio |
| 21 | CD_PECA_ORCAMENTARIA_REP_ORI | NUMBER | Y | Origem da replicação da peça |

---

## DBAMV.PECA_ORCAMENTARIA_CONFIGURACAO
> Tabela responsavel por manter as Configurac?es das Pecas Orcamentarias

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PECA_ORCAMENTARIA_CONF | NUMBER | N | Codigo da Configurac?o da Peca Orcamentaria |
| 2 | CD_PECA_ORCAMENTARIA | NUMBER | N | Codigo da Peca Orcamentaria |
| 3 | DS_BLOCO | VARCHAR2 | Y | Descric?o do Bloco |
| 4 | DS_TITULO_BLOCO | VARCHAR2 | Y | Descric?o do Titulo do Bloco |
| 5 | SN_BLOCO_DETALHE | VARCHAR2 | Y | Indica se o Bloco e detalhe |
| 6 | DS_BLOCO_PAI | VARCHAR2 | Y | Descric?o do Bloco Pai |
| 7 | DS_CAMPO_ASSOCIACAO | VARCHAR2 | Y | Descric?o do Campo de Associac?o |
| 8 | DS_PARAMETRO | VARCHAR2 | N | Descric?o do Parametro |
| 9 | DS_PARAMETRO_EXIBICAO | VARCHAR2 | N | Descric?o do Parametro de Exibic?o |
| 10 | TP_PARAMETRO | VARCHAR2 | N | Tipo de Parametro |
| 11 | CD_ORDEM_EXIBICAO | NUMBER | N | Ordem de Exibic?o |
| 12 | SN_TOTALIZAR | VARCHAR2 | Y | Indica se este campo sera totalizado |
| 13 | NR_LARGURA | NUMBER | Y | Largura do Campo |
| 14 | SN_OBRIGATORIO | VARCHAR2 | N | Indicador da obrigatoriedade do parametro |
| 15 | DT_COMPETENCIA | DATE | Y | Data da Competencia |
| 16 | PERCENTUAL_MAXIMO_VARIACAO | NUMBER | Y | Percentual maximo de variai??i??o |
| 17 | VALOR_MAXIMO_VARIACAO | NUMBER | Y | Valor maximo de variai??i??o |
| 18 | CD_PECA_ORCAMENTARIA_CONFG_ORI | NUMBER | Y | Ci??digo da configurai??i??o origem |
| 19 | CD_PECA_ORCAMTR_CNFG_REP_ORI | NUMBER | Y | CD_PECA_ORCAMENTARIA_CONF Origem da replicação da comfiguração da peça |

---

## DBAMV.PECA_ORCAMENTARIA_CONSOLIDACAO
> controle das consolida????es das Pe??as Or??amentarias

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PECA_ORCAMENTARIA_CONSLDC | NUMBER | N | C??digo Sequencial |
| 2 | CD_ORCAMENTO_HOSPITALAR | NUMBER | N | C??digo do or??amento |
| 3 | DT_CONSOLIDACAO | DATE | N | Data da realiza???#o da consolida???#o |

---

## DBAMV.PECA_ORCAMENTARIA_HISTORICO
> Histi??rico da Pei??a Ori??amenti??ria

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PECA_ORCAMENTARIA_HISTORICO | NUMBER | N | Ci??digo do histi??rico |
| 2 | CD_USUARIO_CONFIGURACAO_PECAS | NUMBER | N | Ci??digo do usui??rio de configurai??i??o da pei??a |
| 3 | CD_PROJECAO_ORCAMENTARIA | NUMBER | Y | Ci??digo da projei??i??o ori??amenti??ria |
| 4 | CD_FASE_ORCAMENTARIA | NUMBER | N | Ci??digo da Fase Ori??amenti??ria |
| 5 | DT_MOVIMENTACAO | DATE | N | Data da movimentai??i??o |
| 6 | DS_JUSTIFICATIVA | VARCHAR2 | Y | Descrii??i??o da justificativa |
| 7 | CD_PREMISSA | NUMBER | Y | Ci??digo da premissa |
| 8 | CD_USUARIO | VARCHAR2 | Y |  |
| 9 | CD_GRUPO_USUARIO_ORCAMENTO | NUMBER | Y |  |
| 10 | CD_USUARIO_RESPONSAVEL | NUMBER | N |  |

---

## DBAMV.PECA_ORCAMENTARIA_HIST_DET
> Detalhe do Histi??rico da Pei??a Ori??amenti??ria

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PECA_ORCAMENTARIA_HIST_DET | NUMBER | N | Ci??digo do Detalhe do Histi??rico |
| 2 | CD_PECA_ORCAMENTARIA_HISTORICO | NUMBER | N | Ci??digo do Histi??rico |
| 3 | DT_COMPETENCIA | DATE | N | Data da Competi??ncia |
| 4 | VL_PARAMETRO | NUMBER | N | Valor do Pari??metro |
| 5 | CD_ITEM_PECA_ORCAMENTARIA | NUMBER | Y | Codigo do item da peça orçamentária |

---

## DBAMV.PECA_ORCAMENTARIA_LANCAMENTO
> Lancamento da Peca Orcamentaria

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PECA_ORCAMENTARIA_LANCMTO | NUMBER | N | Codigo do lancamento da peca |
| 2 | TP_DATA_LANCAMENTO | VARCHAR2 | N |  |
| 3 | DT_ORCAMENTO | DATE | N | Data do lancamento |
| 4 | CD_PECA_ORCAMENTARIA_CONF | NUMBER | N | Codigo da configurac?o da peca |
| 5 | VL_PARAMETRO | NUMBER | Y | Valor numerico do parametro |
| 6 | DS_VALOR_PARAMETRO | VARCHAR2 | Y | Valor do parametro - texto |
| 7 | CD_ITEM_PECA_ORCAMENTARIA | NUMBER | Y | Codigo do item da peca (agrupamento) |
| 8 | QTD_LANCAMENTO | NUMBER | Y | Quantidade lani??ada |
| 9 | VL_LANCAMENTO | NUMBER | Y | Valor de lani??amento (uniti??rio) |
| 10 | CD_PROJECAO_ORCAMENTARIA | NUMBER | Y | Ci??digo da projei??i??o ori??amenti??ria |
| 11 | CD_SETOR | NUMBER | Y | Ci??digo do setor |
| 12 | VL_PRE_ORCAMENTO | NUMBER | Y | Valor de lancamento na fase pre-orcamento |
| 13 | DS_FORMULA | VARCHAR2 | Y | Formula para calculo da pei??a orcamentaria |
| 14 | DS_FORMULA_EXIBICAO | VARCHAR2 | Y | Descricao da Formula para calculo da pei??a orcamentaria |

---

## DBAMV.PECA_ORCAMENTARIA_LANCMTO_SET
> Lancamento da Peca Orcamentaria por Setor

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PECA_ORCAMENTARIA_LANC_SET | NUMBER | N | Codigo do lancamento da peca por setor |
| 2 | CD_SETOR | NUMBER | N |  |
| 3 | CD_PECA_ORCAMENTARIA_LANCMTO | NUMBER | N | Codigo do lancamento da peca |
| 4 | VL_PARAMETRO | NUMBER | Y | Valor numerico do parametro (por setor) |
| 5 | DS_VALOR_PARAMETRO | VARCHAR2 | Y | Valor do parametro - texto (por setor) |
| 6 | QTD_LANCAMENTO | NUMBER | Y | Quantidade do lançamento |
| 7 | VL_LANCAMENTO | NUMBER | Y | Valor de lançamento |

---

## DBAMV.PECA_ORCAMENTARIA_LANC_CSLDC
> Lançamentos das Peças Orçamentarias consolidadas

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PECA_ORCAMTR_LANC_CSLDC | NUMBER | N | Código Sequencial |
| 2 | CD_PECA_ORCAMENTARIA_CONSLDC | NUMBER | N | Código da Consolidacao da Peca |
| 3 | CD_PECA_ORCAMENTARIA_LANCMTO | NUMBER | N | Código do Lançamento da Peça Orçamentaria |
| 4 | CD_PECA_ORCAMENTARIA | NUMBER | N | Código da Peça Orçamentaria |
| 5 | VL_PARAMETRO | NUMBER | Y | Valor da Peça Orçamentaria |
| 6 | DS_VALOR_PARAMETRO | VARCHAR2 | Y | Valor da Peça - Texto |
| 7 | DS_FORMULA | VARCHAR2 | Y | Formula para calculo da peça orcamentaria |
| 8 | DS_FORMULA_EXIBICAO | VARCHAR2 | Y | Descricao da Formula para calculo da peça orcamentaria |

---

## DBAMV.PECA_ORCAMENTARIA_LIBERACAO
> Controle das pei??as que esti??o liberadas para lani??amento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PECA_ORCAMENTARIA_LIBERACAO | NUMBER | N | Ci??digo Sequencial do Controle |
| 2 | CD_USUARIO_CONFIGURACAO_PECAS | NUMBER | N | Ci??digo da Configurai??i??o do Usui??rio |
| 3 | SN_LIBERADO | VARCHAR2 | N | Indicador de liberai??i??o para lani??amento |
| 4 | CD_PECA_ORCAMENTARIA_LCAO_ORI | NUMBER | Y | Ci??digo da pei??a liberai??i??o origem |

---

## DBAMV.PIX_MOVIMENTO_FINAN
> TABELA DE REGISTRO DE TRANSAC?ES PIX NO FINANCEIRO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PIX_MOVIMENTO_FINAN | NUMBER | N | CODIGO SEQUENCIAL DA MOVIMENTAC?O PIX NO FINANCEIRO |
| 2 | DT_MOVIMENTO | DATE | N | DATA DE EFETIVAC?O DA MOVIMENTAC?O PIX |
| 3 | VL_MOVIMENTO | NUMBER | N | VALOR DA MOVIMENTAC?O PIX |
| 4 | CD_CAIXA | NUMBER | Y | CAIXA RESPONSAVEL PELA MOVIMENTAC?O PIX |
| 5 | CD_CON_COR | NUMBER | Y | CORRENTE CORRENTE RESPONSAVEL PELA MOVIMENTAC?O PIX |
| 6 | CD_CON_REC | NUMBER | Y | CODIGO DA A CONTA RECEBER ASSOCIADA A MOVIMENTAC?O PIX |
| 7 | CD_ITCON_REC | NUMBER | Y | CODIGO DA PARCELA ASSOCIADA A MOVIMENTAC?O PIX |
| 8 | CD_RECCON_REC | NUMBER | Y | CODIGO DO RECEBIMENTO ASSOCIADO A MOVIMENTAC?O PIX |
| 9 | CD_CAUCAO | NUMBER | Y | CODIGO DO DEPOSITO ANTECIPADO ASSOCIADO A MOVIMENTAC?O PIX |
| 10 | CD_ATENDIMENTO | NUMBER | Y | CODIGO DO ATENDIMENTO ASSOCIADO A MOVIMENTAC?O PIX |
| 11 | CD_MOV_CAIXA | VARCHAR2 | Y | CODIGO DA MOVIMENTAC?O DO CAIXA  ASSOCIADA A MOVIMENTAC?O PIX |
| 12 | CD_MOV_CONCOR | NUMBER | Y | CODIGO DA MOVIMENTAC?O DA CONTA CORRENTE  ASSOCIADA A MOVIMENTAC?O PIX |
| 13 | DT_ESTORNO | DATE | Y | DATA DE DEVOLUC?O/ESTORNO PIX |
| 14 | DT_CANCELAMENTO | DATE | Y | DATA DE DEVOLUC?O/CANCELAMENTO DA MOVIMENTAC?O PIX |
| 15 | CD_MOV_CAIXA_DEVOLUCAO | VARCHAR2 | Y | CODIGO DA MOVIMENTAC?O DO CAIXA  ASSOCIADA A MOVIMENTAC?O DE DEVOLUC?O/ESTORNO PIX |
| 16 | CD_MOV_CONCOR_DEVOLUCAO | NUMBER | Y | CODIGO DA MOVIMENTAC?O DA CONTA CORRENTE  ASSOCIADA A MOVIMENTAC?O DE DEVOLUC?O/ESTORNO PIX |
| 17 | CD_DOC_CAIXA | NUMBER | Y | Adicionando coluna doc caixa |
| 18 | TP_RECEBIMENTO_PIX | VARCHAR2 | N | Tipo de recebimento de PIX |
| 19 | CD_PIX_MOVIMENTO_RETORNO | NUMBER | Y | Codigo da movimentac?o pix retorno |
| 20 | CD_PIX_MOVIMENTO | VARCHAR2 | Y | Codigo da movimentac?o pix |

---

## DBAMV.PIX_MOVIMENTO_RETORNO_CP
> TABELA DE REGISTRO DE TRANSAC?ES PIX (PAGAMENTOS)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PIX_MOVIMENTO_RETORNO_CP | NUMBER | N | CODIGO SEQUENCIAL DE RETORNO MOVIMENTAC?O PIX |
| 2 | VL_AMOUNT | NUMBER | N | VALOR DA MOVIMENTAC?O |
| 3 | DS_DESCRIPTION | VARCHAR2 | N | DESCRIC?O DA MOVIMENTAC?O |
| 4 | CD_TRANSACTIONID | VARCHAR2 | N | IDENTIFICAC?O DA MOVIMENTAC?O PIX |
| 5 | CD_FORNEC | NUMBER | Y | IDENTIFICAC?O DO FORNECEDOR |
| 6 | DS_STATUS | VARCHAR2 | N | DS_STATUS DA MOVIMENTAC?O PIX |
| 7 | DS_NOME_RECEBEDOR | VARCHAR2 | N | NOME DO RESPONSAVEL PELO PIX |
| 8 | CD_CPF_CNPJ_RECEBEDOR | VARCHAR2 | N | CPF/CNPJ DO RESPONSAVEL PELO PIX |
| 9 | DT_TRANSACTION | DATE | N | DATA QUE FOI EFETUADA A TRANSAC?O |
| 10 | DT_CONFIRMTRASACTION | DATE | N | DATA QUE FOI CONFIRMADA A TRANSAC?O |
| 11 | SN_ERROR_MESSAGE | VARCHAR2 | N | (TRUE OR FALSE) APRESENTOU ERRO (S/N) |
| 12 | CD_PIX_MOVIMENTO_ENVIO_CP | NUMBER | N | CODIGO SEQUENCIAL DE ENVIO MOVIMENTAC?O PIX |

---

## DBAMV.PLANO
> Plano Contábil

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PLANO | VARCHAR2 | N | Código do plano |
| 2 | DS_PLANO | VARCHAR2 | N | Descrição do plano |
| 3 | TP_PLANO | VARCHAR2 | N | Tipo do plano G - Gerencial, F - Fiscal, O - Orçamento, C - Orçamento Gerencial |
| 4 | DS_MASCARA | VARCHAR2 | N | Mascara do plano |
| 5 | SN_ATIVO | VARCHAR2 | N | Registro ativo? |
| 6 | DT_CRIACAO | DATE | N | Data de criação do plano |

---

## DBAMV.PLANO_CARDAPIO
> Armazena as informac?o do Planejamento de cardapio.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PLANO_CARDAPIO | NUMBER | N | Codigo do Plano do Cardapio |
| 2 | DS_PLANO_CARDAPIO | VARCHAR2 | N | Descric?o do Plano de Cardapio |
| 3 | DT_PREVISAO_CARDAPIO | DATE | N | Data Prevista para Utilizac?o do Plano de Cardapio. |
| 4 | QT_PORCAO | NUMBER | N | Quantidade de Porc?es que ser?o servidas. |
| 5 | CD_USUARIO_CRIACAO | VARCHAR2 | N | Codigo do Usuario que criou o registro. |
| 6 | DH_CRIACAO_REGISTRO | DATE | N | Data e Hora de Criac?o do Registro. |
| 7 | CD_SETOR | NUMBER | N | Codigo do Setor. |
| 8 | CD_CLAS_CARDAPIO | VARCHAR2 | N |  |

---

## DBAMV.PLANO_CARDAPIO_OPCAO
> Opc?es de Cardapio do Planejamento do Cardapio.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PLANO_CARDAPIO_OPCAO | NUMBER | N | Codigo do Plano Cardapio por Opc?o de Cardapio. |
| 2 | CD_OPCAO | NUMBER | N | Codigo da Opc?o de Cardapio. |
| 3 | CD_PLANO_CARDAPIO | NUMBER | N | Codigo do Plano de Cardapio. |

---

## DBAMV.PLANO_CARDAPIO_PRATO
> Armazena os Pratos do planejamento do cardapio.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PLANO_CARDAPIO_PRATO | NUMBER | N | Codigo do Plano Cardapio Prato. |
| 2 | QT_PRATO | NUMBER | N | Quantidade do Prato. |
| 3 | CD_PLANO_CARDAPIO_OPCAO | NUMBER | N | Codigo do Plano de Cardapio. |
| 4 | CD_PRATO | NUMBER | N | Codigo do Prato. |

---

## DBAMV.PLANO_CARDAPIO_PRODUTO
> Armazena os Produtos do planejamento do cardapio.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PLANO_CARDAPIO_PRODUTO | NUMBER | N | Codigo do Plano de Cardapio do Produto. |
| 2 | QT_PADRAO | NUMBER | N | Quantidade Padr?o do Produto. |
| 3 | QT_PRODUTO | NUMBER | N | Quantidade do Produto. |
| 4 | CD_PLANO_CARDAPIO_PRATO | NUMBER | N | Codigo do Plano Cardapio Prato. |
| 5 | CD_PRODUTO | NUMBER | N | Codigo do Produto. |
| 6 | CD_UNI_PRO | NUMBER | N | Codigo da Unidade do Produto. |

---

## DBAMV.PLANO_CONTABIL
> ligação entre a conta e o estrutural

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PLANO_ESTR | NUMBER | N | Estrutura de plano |
| 2 | CD_REDUZIDO | NUMBER | N | Conta |

---

## DBAMV.PLANO_CONTAS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REDUZIDO | NUMBER | N |  |
| 2 | CD_CONTABIL | VARCHAR2 | Y |  |
| 3 | DS_CONTA | VARCHAR2 | N |  |
| 4 | TP_CONTA | VARCHAR2 | N |  |
| 5 | VL_SALDO_ATUAL | NUMBER | Y |  |
| 6 | CD_GRAU_DA_CONTA | NUMBER | Y |  |
| 7 | CD_REDUZIDO_PAI | NUMBER | Y |  |
| 8 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 9 | CD_REDUZIDO_RESULTADO | NUMBER | Y |  |
| 10 | CD_ITEM_RES | NUMBER | Y |  |
| 11 | CD_HISTORICO_PADRAO | NUMBER | Y |  |
| 12 | CD_REDUZIDO_PS | NUMBER | Y |  |
| 13 | TP_CONTA_FINANC | VARCHAR2 | Y |  |
| 14 | DS_FINANC | VARCHAR2 | Y |  |
| 15 | SN_IMPRIME | VARCHAR2 | N |  |
| 16 | SN_INSTITUCIONAL | VARCHAR2 | Y |  |
| 17 | CD_REDUZIDO_EXPORTACAO | NUMBER | Y |  |
| 18 | CD_MULTI_EMPRESA_ORIGEM | NUMBER | Y | Indica a empresa que realizou o cadastro da conta contabil |
| 19 | CD_PLANO_CONTAS_INTEGRA | VARCHAR2 | Y | Codigo da conta contabil (de-para) |
| 20 | CD_CTA_REF_SPED | VARCHAR2 | Y | Conta de Referencia para gerac?o do SPED |
| 21 | TP_CTA_REF_SPED | VARCHAR2 | Y | Tipo da Conta de Referencia para gerac?o do SPED |
| 22 | CD_LIGA_REF_SPED | VARCHAR2 | Y | Codigo de ligac?o para referencia com o SPED |
| 23 | CD_REDUZIDO_INTEGRA | VARCHAR2 | Y | C??digo do Plano Reduzido (de-para) |
| 24 | CD_SEQ_INTEGRA | NUMBER | Y | C??digo sequencial da integra???#o |
| 25 | DT_INTEGRA | DATE | Y | Data em que o registro foi integrado |
| 26 | SN_EXPORTA_ANS | VARCHAR2 | Y | Indica se a conta contabil e enviada ou n?o para DIOPS |
| 27 | SN_ATIVO | VARCHAR2 | N | coluna para permitir ativar/desativar contas contabeis |
| 28 | DT_DESATIVACAO | DATE | Y | Data da desativac?o da conta contabil |
| 29 | CD_REDUZIDO_CANC_RECEITA | NUMBER | Y | Codigo Reduzido do Cancelamento de vendas fora da competencia |
| 30 | TP_CLASS_SPED_ECD | VARCHAR2 | Y | Classificac?o para contas usadas na gerac?o do SPED ECD. DMPL - demonstrac?o de mutac?o do patrim... |
| 31 | DT_CRIACAO | DATE | N | Data de criacao do registro |
| 32 | TP_NATUREZA | VARCHAR2 | N | Natureza da conta: C - Credora \| D - Devedora. |
| 33 | TP_CONTA_CONTABIL | VARCHAR2 | Y | Tipo da conta contabil, ATIVO,PASSIVO,RECEITA,DESPESA. |
| 34 | TP_TAXA | VARCHAR2 | Y | Tipo de taxa. |
| 35 | CD_MOEDA | VARCHAR2 | Y | Codigo da moeda. |
| 36 | CD_REDUZIDO_GRUPO | NUMBER | Y | Código Reduzido do grupo da conta, coluna criada para o SPED contábil |
| 37 | TP_CLASS_SUBCONTA_ECD | VARCHAR2 | Y | Código de classificação da natureza do subgrupo SPED contábil |
| 38 | SN_CTA_COMPENSACAO | CHAR | Y | Informa se a conta é de compensação ou não. |
| 39 | TP_AUXILIAR | VARCHAR2 | N | Tipo de conta auxiliar |
| 40 | SN_RECEIT_N_OPERC | VARCHAR2 | N | Informa se a receita é não operacional. |
| 41 | CD_GRUPO_CONTA | NUMBER | N | Código de grupo contábil |

---

## DBAMV.PLANO_CONTAS_BKP_06042020

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REDUZIDO | NUMBER | N |  |
| 2 | CD_CONTABIL | VARCHAR2 | Y |  |
| 3 | DS_CONTA | VARCHAR2 | N |  |
| 4 | TP_CONTA | VARCHAR2 | N |  |
| 5 | VL_SALDO_ATUAL | NUMBER | Y |  |
| 6 | CD_GRAU_DA_CONTA | NUMBER | Y |  |
| 7 | CD_REDUZIDO_PAI | NUMBER | Y |  |
| 8 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 9 | CD_REDUZIDO_RESULTADO | NUMBER | Y |  |
| 10 | CD_ITEM_RES | NUMBER | Y |  |
| 11 | CD_HISTORICO_PADRAO | NUMBER | Y |  |
| 12 | CD_REDUZIDO_PS | NUMBER | Y |  |
| 13 | TP_CONTA_FINANC | VARCHAR2 | Y |  |
| 14 | DS_FINANC | VARCHAR2 | Y |  |
| 15 | SN_IMPRIME | VARCHAR2 | N |  |
| 16 | SN_INSTITUCIONAL | VARCHAR2 | Y |  |
| 17 | CD_REDUZIDO_EXPORTACAO | NUMBER | Y |  |
| 18 | CD_MULTI_EMPRESA_ORIGEM | NUMBER | Y |  |
| 19 | CD_PLANO_CONTAS_INTEGRA | VARCHAR2 | Y |  |
| 20 | CD_CTA_REF_SPED | VARCHAR2 | Y |  |
| 21 | TP_CTA_REF_SPED | VARCHAR2 | Y |  |
| 22 | CD_LIGA_REF_SPED | VARCHAR2 | Y |  |
| 23 | CD_REDUZIDO_INTEGRA | VARCHAR2 | Y |  |
| 24 | CD_SEQ_INTEGRA | NUMBER | Y |  |
| 25 | DT_INTEGRA | DATE | Y |  |
| 26 | SN_EXPORTA_ANS | VARCHAR2 | Y |  |
| 27 | SN_ATIVO | VARCHAR2 | N |  |
| 28 | DT_DESATIVACAO | DATE | Y |  |
| 29 | CD_REDUZIDO_CANC_RECEITA | NUMBER | Y |  |
| 30 | TP_CLASS_SPED_ECD | VARCHAR2 | Y |  |
| 31 | DT_CRIACAO | DATE | N |  |
| 32 | TP_NATUREZA | VARCHAR2 | N |  |
| 33 | TP_CONTA_CONTABIL | VARCHAR2 | Y |  |
| 34 | TP_TAXA | VARCHAR2 | Y |  |
| 35 | CD_MOEDA | VARCHAR2 | Y |  |
| 36 | CD_REDUZIDO_GRUPO | NUMBER | Y |  |
| 37 | TP_CLASS_SUBCONTA_ECD | VARCHAR2 | Y |  |
| 38 | SN_CTA_COMPENSACAO | CHAR | Y |  |
| 39 | TP_AUXILIAR | VARCHAR2 | N |  |
| 40 | SN_RECEIT_N_OPERC | VARCHAR2 | N |  |
| 41 | CD_GRUPO_CONTA | NUMBER | N |  |

---

## DBAMV.PLANO_CONTAS_BKP_08042020

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REDUZIDO | NUMBER | N |  |
| 2 | CD_CONTABIL | VARCHAR2 | Y |  |
| 3 | DS_CONTA | VARCHAR2 | N |  |
| 4 | TP_CONTA | VARCHAR2 | N |  |
| 5 | VL_SALDO_ATUAL | NUMBER | Y |  |
| 6 | CD_GRAU_DA_CONTA | NUMBER | Y |  |
| 7 | CD_REDUZIDO_PAI | NUMBER | Y |  |
| 8 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 9 | CD_REDUZIDO_RESULTADO | NUMBER | Y |  |
| 10 | CD_ITEM_RES | NUMBER | Y |  |
| 11 | CD_HISTORICO_PADRAO | NUMBER | Y |  |
| 12 | CD_REDUZIDO_PS | NUMBER | Y |  |
| 13 | TP_CONTA_FINANC | VARCHAR2 | Y |  |
| 14 | DS_FINANC | VARCHAR2 | Y |  |
| 15 | SN_IMPRIME | VARCHAR2 | N |  |
| 16 | SN_INSTITUCIONAL | VARCHAR2 | Y |  |
| 17 | CD_REDUZIDO_EXPORTACAO | NUMBER | Y |  |
| 18 | CD_MULTI_EMPRESA_ORIGEM | NUMBER | Y |  |
| 19 | CD_PLANO_CONTAS_INTEGRA | VARCHAR2 | Y |  |
| 20 | CD_CTA_REF_SPED | VARCHAR2 | Y |  |
| 21 | TP_CTA_REF_SPED | VARCHAR2 | Y |  |
| 22 | CD_LIGA_REF_SPED | VARCHAR2 | Y |  |
| 23 | CD_REDUZIDO_INTEGRA | VARCHAR2 | Y |  |
| 24 | CD_SEQ_INTEGRA | NUMBER | Y |  |
| 25 | DT_INTEGRA | DATE | Y |  |
| 26 | SN_EXPORTA_ANS | VARCHAR2 | Y |  |
| 27 | SN_ATIVO | VARCHAR2 | N |  |
| 28 | DT_DESATIVACAO | DATE | Y |  |
| 29 | CD_REDUZIDO_CANC_RECEITA | NUMBER | Y |  |
| 30 | TP_CLASS_SPED_ECD | VARCHAR2 | Y |  |
| 31 | DT_CRIACAO | DATE | N |  |
| 32 | TP_NATUREZA | VARCHAR2 | N |  |
| 33 | TP_CONTA_CONTABIL | VARCHAR2 | Y |  |
| 34 | TP_TAXA | VARCHAR2 | Y |  |
| 35 | CD_MOEDA | VARCHAR2 | Y |  |
| 36 | CD_REDUZIDO_GRUPO | NUMBER | Y |  |
| 37 | TP_CLASS_SUBCONTA_ECD | VARCHAR2 | Y |  |
| 38 | SN_CTA_COMPENSACAO | CHAR | Y |  |
| 39 | TP_AUXILIAR | VARCHAR2 | N |  |
| 40 | SN_RECEIT_N_OPERC | VARCHAR2 | N |  |
| 41 | CD_GRUPO_CONTA | NUMBER | N |  |

---

## DBAMV.PLANO_CONTAS_DE_PARA
> Tabela responsavel pela mudanca de plano de contas

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PLANO_CONTAS_DE_PARA | NUMBER | N | Codigo sequencial |
| 2 | CD_REDUZIDO_DE | NUMBER | Y | Conta de origem |
| 3 | CD_MULTI_EMPRESA_DE | NUMBER | Y | Codigo do multi empresa |
| 4 | DS_CONTA_DE | VARCHAR2 | Y | Descric?o da conta de origem |
| 5 | CD_CONTABIL_DE | VARCHAR2 | Y | Codigo estrutural da conta de origem |
| 6 | TP_CONTA_DE | VARCHAR2 | Y | Tipo da conta - A - Analitica, S - Sintetica |
| 7 | TP_CONTA_FINANC_DE | VARCHAR2 | Y | Tipo de conta financeira |
| 8 | CD_REDUZIDO_PARA | NUMBER | N | Reduzido da conta destino |
| 9 | CD_MULTI_EMPRESA_PARA | NUMBER | N | codigo do multi empresa |
| 10 | DT_ANO | DATE | N | Data da mudanca do plano de contas |
| 11 | CD_CONTABIL | VARCHAR2 | N | codigo estrutural |
| 12 | DS_CONTA | VARCHAR2 | N | descric?o da conta destino |
| 13 | TP_CONTA | VARCHAR2 | N | Tipo da conta destino |
| 14 | VL_SALDO_ATUAL | NUMBER | Y | Saldo Atual da Conta na origem |
| 15 | CD_REDUZIDO_PAI | NUMBER | Y | Reduzido da conta PAI |
| 16 | DT_ANO_PAI | DATE | Y |  |
| 17 | CD_MULTI_EMPRESA_PAI | NUMBER | Y | multi empresa da conta pai |
| 18 | CD_GRAU_DA_CONTA | NUMBER | N | grau da conta |
| 19 | CD_REDUZIDO_RESULTADO | NUMBER | Y | reduzido da conta de resultado |
| 20 | CD_ITEM_RES | NUMBER | Y | Codigo do item |
| 21 | CD_HISTORICO_PADRAO | NUMBER | Y | historico padr?o |
| 22 | CD_REDUZIDO_PS | NUMBER | Y | Codigo reduzido |
| 23 | TP_CONTA_FINANC | VARCHAR2 | Y | Tipo da conta financeira |
| 24 | DS_FINANC | VARCHAR2 | Y | descric?o do financeiro |
| 25 | SN_IMPRIME | VARCHAR2 | N | Indicador para se a conta e impressa |
| 26 | SN_INSTITUCIONAL | VARCHAR2 | Y | Se e institucional |
| 27 | CD_REDUZIDO_EXPORTACAO | NUMBER | Y | Codigo reduzido da exportac?o |
| 28 | TP_SITUACAO | VARCHAR2 | N | Situac?o da conta |
| 29 | SN_EXPORTA_ANS | VARCHAR2 | Y | Se sera exportado para a ans |
| 30 | SN_ATIVO | VARCHAR2 | N | Se a conta sera mantida ativa ou n?o |
| 31 | VL_SALDO | NUMBER | Y | Saldo da conta |
| 32 | SN_ERRO | VARCHAR2 | N | Se ha erro no registro |
| 33 | DS_ERRO | VARCHAR2 | Y | Descric?o do erro |

---

## DBAMV.PLANO_CONTAS_DE_PARA_WIZARD
> DE / PARA WIZARD

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PLANO | NUMBER | N | Codigo do plano de contas |
| 2 | CD_REDUZIDO_DE | NUMBER | N | Codigo reduzido da conta do plano vigente |
| 3 | CD_REDUZIDO_PARA | NUMBER | N | Codigo reduzido da nova conta |

---

## DBAMV.PLANO_CONTAS_EMP_TRANSACAO
> Empresas que compartilham uma mesma conta contabil

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REDUZIDO | NUMBER | N | Codigo Reduzido |
| 2 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da Empresa |

---

## DBAMV.PLANO_CONTAS_GERENCIAL
> Plano de Contas Gerencial das Empresas Controladoras

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REDUZIDO | NUMBER | N | Indica o codigo reduzido da conta contabil gerencial |
| 2 | CD_MULTI_EMPRESA | NUMBER | N | Indica a empresa consolidadora da conta gerencial |
| 3 | DT_ANO | DATE | N | Indica o ano do exercicio contabil |
| 4 | CD_CONTABIL | VARCHAR2 | N | Codigo da conta contabil |
| 5 | DS_CONTA | VARCHAR2 | N | Descric?o da conta contabil |
| 6 | TP_CONTA | VARCHAR2 | N | Indica se a conta e analitica (A) ou sintetica (S) |
| 7 | VL_SALDO_ATUAL | NUMBER | Y | Saldo Atual da conta contabil |
| 8 | CD_REDUZIDO_PAI | NUMBER | Y | Indica qual e a conta contabil que esta no nivel acima de um grupo de contas |
| 9 | DT_ANO_PAI | DATE | Y | Indica qual e a conta contabil que esta no nivel acima de um grupo de contas |
| 10 | CD_MULTI_EMPRESA_PAI | NUMBER | Y | Indica qual e a conta contabil que esta no nivel acima de um grupo de contas |
| 11 | CD_GRAU_DA_CONTA | NUMBER | N | Indica qual e o Grau da Conta Gerencial da Conta Contabil |
| 12 | CD_REDUZIDO_RESULTADO | NUMBER | Y | Indica o codigo reduzido de resultado  da conta contabil gerencial |
| 13 | CD_ITEM_RES | NUMBER | Y | Indica o codigo da conta de custo gerencial |
| 14 | CD_HISTORICO_PADRAO | NUMBER | Y | Indica o codigo do historico padr?o |
| 15 | CD_REDUZIDO_PS | NUMBER | Y | Indica o codigo reduzido da conta contabil gerencial do plano sintetico |
| 16 | TP_CONTA_FINANC | VARCHAR2 | Y | Indica o tipo de conta contabil |
| 17 | DS_FINANC | VARCHAR2 | Y | Descric?o financeira |
| 18 | SN_IMPRIME | VARCHAR2 | N | Indica se a conta conta contabil sera visualizado nos relatorios contabeis |
| 19 | SN_INSTITUCIONAL | VARCHAR2 | Y | Indica se a conta contabil e institucional |
| 20 | CD_REDUZIDO_EXPORTACAO | NUMBER | Y | Indica o codigo reduzido da conta contabil gerencial de exportac?o |
| 21 | TP_SITUACAO | VARCHAR2 | N | Indica se o plano de contas esta Aberto ou Fechado |
| 22 | SN_EXPORTA_ANS | VARCHAR2 | Y |  |
| 23 | CD_REDUZIDO_GRUPO | NUMBER | Y | Código Reduzido do grupo da conta, coluna criada para o SPED contábil |
| 24 | CD_MULTI_EMPRESA_GRUPO | NUMBER | Y | Empresa do grupo da conta, coluna criada para o SPED contábil |
| 25 | DT_ANO_GRUPO | DATE | Y | Data do grupo da conta, coluna criada para o SPED contábil |
| 26 | TP_CONTA_CONTABIL | VARCHAR2 | Y | tipo da conta classificacao da subconta, coluna criada para o SPED contábil |
| 27 | TP_CLASS_SPED_ECD | VARCHAR2 | Y | tipo de classificacao da subconta, coluna criada para o SPED contábil |
| 28 | TP_CLASS_SUBCONTA_ECD | VARCHAR2 | Y | tipo de classificacao da subconta, coluna criada para o SPED contábil |
| 29 | TP_CTA_REF_SPED | VARCHAR2 | Y | Código de classificação da natureza do subgrupo SPED contábil |
| 30 | SN_CTA_COMPENSACAO | CHAR | Y | Indica se a conta é de compensação, coluna criada para o SPED contábil |

---

## DBAMV.PLANO_CONTAS_GERENCIAL_COMP
> Relacionamento entre o Plano de Contas Gerencial e o Plano de Contas

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PLANO_CON_GER_COMP | NUMBER | N | Indica codigo do relacionamento entre o plano de contas gerencial e o plano de contas da empresa ... |
| 2 | CD_REDUZIDO | NUMBER | N | Indica o codigo reduzido do plano de contas gerencial |
| 3 | CD_MULTI_EMPRESA | NUMBER | N | Indica a empresa do plano do contas gerencial |
| 4 | DT_ANO | DATE | N | Indica o exercicio do plano de contas gerencial |
| 5 | CD_REDUZIDO_COMP | NUMBER | N | Indica o codigo reduzido do plano de contas |
| 6 | CD_MULTI_EMPRESA_GERENCIAL | NUMBER | Y | Indica a empresa do plano de contas gerencial |
| 7 | CD_REDUZIDO_GERENCIAL | NUMBER | Y | Indica o codigo reduzido do plano de contas gerencial |

---

## DBAMV.PLANO_CONTAS_INTER
> Plano de Contas Internacional

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MULTI_EMPRESA | NUMBER | N | Empresa da configurac?o |
| 2 | CD_REDUZIDO | NUMBER | N | Codigo reduzido da moeda estrangeira |
| 3 | TP_NATUREZA | VARCHAR2 | Y | Naturaza da conta (CREDORA, DEVEDORA, AMBAS) |
| 4 | TP_CONTA_CONTABIL | VARCHAR2 | Y | Tipo de conta contabil (ATIVO, PASSIVO, RECEITA, DESPESA, PATRIMONIO_LIQUIDO, APURACAO_RESULTADO,... |
| 5 | TP_TAXA | VARCHAR2 | N | Tipo de taxa |
| 6 | CD_MOEDA | VARCHAR2 | N | Codigo da moeda |

---

## DBAMV.PLANO_CONTAS_REF_SPED
> Tabela que irá armazenar as referência entre as contas do plano de contas e as contas do plano de contas do SPED

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PLANO_CONTAS_REF_SPED | NUMBER | N | Chave primária da tabela |
| 2 | CD_REDUZIDO | NUMBER | N | Chave estrangeira referente à coluna cd_reduzido da tabela plano_contas |
| 3 | CD_LIGA_REF_SPED | VARCHAR2 | N | Código de referencia da conta no SPED Receita Federal / Banco Central |
| 4 | CD_CTA_REF_SPED | VARCHAR2 | N | Conta de Referencia para geração do SPED |
| 5 | TP_CTA_REF_SPED | VARCHAR2 | N | Tipo da Conta de Referencia para geração do SPE |
| 6 | DT_VALIDADE_INICIO | DATE | N | Chave estrangeira referente à coluna dt validade inicio da tabela plano_contas_sped |

---

## DBAMV.PLANO_CONTAS_REF_SPED_GE
> Tabela que irá armazenar as referência entre as contas do plano de contas e as contas do plano de contas do SPED

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PLANO_CONTAS_REF_SPED | NUMBER | N | Chave primária da tabela |
| 2 | CD_REDUZIDO | NUMBER | N | Chave estrangeira referente à coluna cd_reduzido da tabela dbamv.plano_contas_gerencial |
| 3 | CD_MULTI_EMPRESA | NUMBER | N | Chave estrangeira referente à coluna cd_cd_multi_empresa da tabela dbamv.plano_contas_gerencial |
| 4 | DT_ANO | DATE | N | Chave estrangeira referente à coluna dt_ano da tabela dbamv.plano_contas_gerencial |
| 5 | CD_LIGA_REF_SPED | VARCHAR2 | N | Código de referencia da conta no SPED Receita Federal / Banco Central |
| 6 | CD_CTA_REF_SPED | VARCHAR2 | N | Conta de Referencia para geração do SPED |
| 7 | TP_CTA_REF_SPED | VARCHAR2 | N | Tipo da Conta de Referencia para geração do SPE |
| 8 | DT_VALIDADE_INICIO | DATE | N | Chave estrangeira referente à coluna dt_validade_inicio da tabela dbamv.plano_contas_sped |

---

## DBAMV.PLANO_CONTAS_SPED
> Tabela que ira armazenar as contas utilizadas como regerencia para a gerac?o do SPED

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONTA_CONTABIL | VARCHAR2 | N | Chave primario da tabela, codigo da conta |
| 2 | CD_REFERENCIA | VARCHAR2 | N | Codigo de referencia da conta no SPED Receita Federal / Banco Central |
| 3 | DS_DESCRICAO | VARCHAR2 | Y | Descric?o da Conta |
| 4 | DT_VALIDADE_INICIO | DATE | N | Data de incio da validade da conta |
| 5 | DT_VALIDADE_FIM | DATE | Y | Data final da validade da conta |
| 6 | TP_CONTA | VARCHAR2 | Y | Tipo da Contas Contabil no SPED |

---

## DBAMV.PLANO_CONTAS_WIZARD
> NOVO PLANO DE CONTAS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PLANO | NUMBER | N | Codigo do plano de contas |
| 2 | CD_CONTABIL | VARCHAR2 | N | Codigo contabil da nova conta. |
| 3 | CD_REDUZIDO | NUMBER | Y | Codigo reduzido da nova conta |
| 4 | DS_CONTA | VARCHAR2 | Y | Descric?o da nova conta. |
| 5 | TP_NATUREZA | VARCHAR2 | Y | Tipo da nova conta A - Analitica \| S - Sintetica. |
| 6 | SN_EXPORTA_ANS | VARCHAR2 | Y | Se a nova conta sera exportada para a ANS. |

---

## DBAMV.PLANO_CUIDADOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EXAME_FISICO | NUMBER | N |  |
| 2 | CD_PROCEDIMENTOS_CUIDADOS | NUMBER | N |  |
| 3 | CD_TIP_FRE | NUMBER | N |  |
| 4 | DS_TIP_FRE_COMP | VARCHAR2 | Y |  |
| 5 | SN_LANC_MANUAL | VARCHAR2 | N |  |

---

## DBAMV.PLANO_EMP
> Empresas que utilizam o plano

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PLANO | VARCHAR2 | N | Código do plano contábil |
| 2 | CD_EMPRESA | NUMBER | N | Código da empresa |

---

## DBAMV.PLANO_ESTR
> Estrutura do plano

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PLANO_ESTR | NUMBER | N | Chave primária |
| 2 | CD_PLANO | VARCHAR2 | N | Código do plano |
| 3 | CD_CONTABIL | VARCHAR2 | N | Código estrutural |
| 4 | DS_CONTA | VARCHAR2 | N | Nome da estrutura |
| 5 | CD_REDUZIDO | VARCHAR2 | N |  |
| 6 | TP_CONTA | VARCHAR2 | N | tipo da conta A - Analíticia, S - Sintética |
| 7 | TP_APRESENTACAO | VARCHAR2 | N | Indicador do Tipo de Apresentação. A-Ambos, I-Investimento, O-Operacional. |

---

## DBAMV.PLANO_INTERNO
> Tipos de modalidades da licitac?o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PLANO_INTERNO | NUMBER | N | Codigo do plano interno |
| 2 | DS_PLANO_INTERNO | VARCHAR2 | Y | Descric?o do plano interno |

---

## DBAMV.PLANO_MANUTENCAO
> Tabela onde ser?o salvas todos os planos de Manutenc?o.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PLANO | NUMBER | N | Codigo do Plano. |
| 2 | CD_PLANO_ALTERNO | VARCHAR2 | N | Codigo alterno do Plano. |
| 3 | SN_ATIVO | VARCHAR2 | N | Para indicar se o plano esta ativo ou n?o. |
| 4 | DS_PLANO | VARCHAR2 | Y | Descric?o do plano. |
| 5 | CD_TIPO_OS | NUMBER | N | Codigo do tipo de Servic?. |
| 6 | TP_PERIODICIDADE | VARCHAR2 | N | Periodicidade do plano. |
| 7 | DS_OBSERVACAO | VARCHAR2 | Y | Observac?es do plano. |

---

## DBAMV.PLANO_MANUTENCAO_DOC
> Tabela onde ser?o salvas todos os documentos anexos ao Plano.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PLANO | NUMBER | N | Codigo do Plano. |
| 2 | CD_PLANO_DOC | NUMBER | N | Codigo do documento anexo ao Plano. |
| 3 | DS_PLANO_DOC | VARCHAR2 | Y | Descric?o do documento anexo ao Plano. |
| 4 | LO_ANEXO_PLANO | BLOB | Y | Documento anexo ao Plano. |

---

## DBAMV.PLANO_MANUTENCAO_OFICINA
> Tabela onde ser?o salvas todas as Oficinas relacionadas ao Plano.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PLANO | NUMBER | N | Codigo do Plano. |
| 2 | SN_ATIVO | VARCHAR2 | N | Indica se a Oficina esta ativa, ou n?o. |
| 3 | CD_OFICINA | NUMBER | N | Codigo da Oficina relacionada ao Plano. |
| 4 | CD_MOT_SERV | NUMBER | Y | Motivo de Servico relacionado ao Plano. |
| 5 | TP_PREVISAO_RH | VARCHAR2 | N | Tipo de Previs?o relacionado ao Plano. |
| 6 | QT_HORAS_PARADA | NUMBER | Y | Quantidade de horas de parada prevista, relacionado ao Plano. |
| 7 | QT_HORAS_INTERFERENCIA | NUMBER | Y | Quantidade de horas de interferencia prevista, relacionado ao Plano. |
| 8 | QT_PERCENTUAL_INTERFER | NUMBER | Y | Percentual de horas de interferencia prevista, relacionado ao Plano. |
| 9 | QT_HORAS_EXECUCAO | NUMBER | Y | Quantidade de horas de execuc?o prevista, relacionado ao Plano. |
| 10 | QT_HORAS_EXECUCAO_DIA | NUMBER | Y | Quantidade de horas de execuc?o por dia, relacionado ao Plano. |
| 11 | HR_PREFERENCIAL | DATE | Y | Hora preferencial para realizar o servico. |

---

## DBAMV.PLANO_MANUTENCAO_PROD
> Tabela de Cadastro de Plano de Manutenção x Produtos.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PLANO | NUMBER | N | Código do Plano de Manutenção. |
| 2 | CD_PRODUTO | NUMBER | N | Código do Produto utilizado no plano de manutenção. |

---

## DBAMV.PLANO_ORCAMENTARIO
> Tabela responsavel por manter o Plano Orcamentario das empresas em cada periodo orcamentario

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PLANO_ORCAMENTARIO | NUMBER | N | Codigo do Plano Orcamentario |
| 2 | DS_PLANO_ORCAMENTARIO | VARCHAR2 | N | Descric?o do Plano Orcamentario |
| 3 | DS_OBSERVACAO | VARCHAR2 | Y | Observac?o relativa ao Plano Orcamentario |
| 4 | CD_PLANO_ORCAMENTARIO_PAI | NUMBER | Y | Codigo do Plano Orcamentario Pai |
| 5 | CD_TIPO_PLANO_ORCAMENTARIO | NUMBER | Y | Codigo do Tipo de Plano Orcamentario |
| 6 | CD_ORDEM_EXIBICAO | NUMBER | Y | Codigo da Ordem de Exibic?o |
| 7 | CD_ORCAMENTO_HOSPITALAR | NUMBER | N | Codigo do Orcamento Hospitalar |
| 8 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da Empresa |
| 9 | SN_ATIVO | VARCHAR2 | N | Plano Orcamentario Ativo |
| 10 | CD_PLANO_ORCAMTR_ORIGEM | NUMBER | Y | Codigo do Plano Orcamentario Origem |
| 11 | SN_ASSOCIAR_META | VARCHAR2 | N | Sincronizar as metas automaticamente |

---

## DBAMV.PLANO_SINTETICO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REDUZIDO_PS | NUMBER | N |  |
| 2 | CD_CONTABIL_PS | VARCHAR2 | N |  |
| 3 | DS_CONTA_PS | VARCHAR2 | N |  |

---

## DBAMV.PLANO_SINTETICO_VISAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PLANO_SINTETICO | NUMBER | N |  |
| 2 | CD_VISAO | NUMBER | N |  |
| 3 | CD_CONTA | VARCHAR2 | N |  |
| 4 | DS_CONTA | VARCHAR2 | N |  |
| 5 | CD_GRAU_CONTA | NUMBER | N |  |
| 6 | CD_PAI | NUMBER | Y |  |
| 7 | TP_CONTA | VARCHAR2 | N |  |
| 8 | PS_CD_PLANO_SINTETICO | NUMBER | Y |  |

---

## DBAMV.PLANO_USUARIO_MULTI_EMPRESA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ID_USUARIO | VARCHAR2 | N |  |
| 2 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 3 | CD_REDUZIDO | NUMBER | N |  |

---

## DBAMV.PLANO_WIZARD
> Plano de contas

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PLANO | NUMBER | N | Codigo identificador do plano de contas |
| 2 | CD_MULTI_EMPRESA | NUMBER | N | Empresa do plano de contas |
| 3 | DS_DESCRICAO | VARCHAR2 | Y | Descric?o do plano de contas |
| 4 | DT_INICIO | DATE | Y | Data de inicio da vigencia do plano de contas |
| 5 | CD_FASE | NUMBER | N | Fase em que a migrac?o esta. |
| 6 | TP_PLANO | VARCHAR2 | N | Tipo do plano de contas P - Padr?o \| G - Gerencial. |
| 7 | CD_PLANO_REFERENCIA | NUMBER | Y | Codigo do plano de referencia. |
| 8 | CD_PLANO_CRIADO | NUMBER | Y | Codigo do plano que foi gerado na tabela PLANO. |
| 9 | DT_CRIACAO | DATE | N | Data em que foi criado o wizard. |
| 10 | DT_ATIVACAO | DATE | Y | Data em que o plano de ativado. |
| 11 | TP_ORIGEM | VARCHAR2 | N |  |

---

## DBAMV.RATEIO_REPASSE
> Tabela para gravac?o da movimentac?o de rateio de pagamento de prestadores

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_RATEIO_REPASSE | NUMBER | N | Sequencial para gravac?o da movimentac?o de rateio de pagamento de prestadores |
| 2 | CD_REPASSE | NUMBER | N | Repasse origem da movimentac?o de rateio de pagamento de prestadores |
| 3 | CD_IT_REPASSE | NUMBER | Y | Item de Repasse de Convenio origem da movimentac?o de rateio de pagamento de prestadores |
| 4 | CD_IT_REPASSE_SIA | NUMBER | Y | Item de Repasse SIA origem da movimentac?o de rateio de pagamento de prestadores |
| 5 | CD_IT_REPASSE_SIH | NUMBER | Y | Item de Repasse SIH origem da movimentac?o de rateio de pagamento de prestadores |

---

## DBAMV.RATPAG_DESC_ACRES
> Tabela que registra os rateios dos descontos e acrescimos do pagamento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_RATPAG_DESC_ACRES | NUMBER | N | Codigo do rateio dos descontos e acrescimos do pagamento |
| 2 | CD_PAG_DESC_ACRES | NUMBER | N | Codigo do desconto ou acrescimo |
| 3 | CD_SETOR | NUMBER | Y | Codigo do Setor associado ao desconto ou acrescimo do pagamento |
| 4 | CD_ITEM_RES | NUMBER | Y | Codigo da Conta de Custo associado ao desconto ou acrescimo do pagamento |
| 5 | VL_RATPAG_DESC_ACRES | NUMBER | N | Valor rateado de desconto ou acrescimo no pagamento para cada setor e/ou conta de custo |

---

## DBAMV.RATREC_DESC_ACRES
> Tabela que registra o rateio dos descontos e acrescimos no recebimento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_RATREC_DESC_ACRES | NUMBER | N | Codigo do rateio do desconto ou acrescimo no recebimento |
| 2 | CD_REC_DESC_ACRES | NUMBER | N | Codigo do desconto ou acrescimo no recebimento |
| 3 | CD_SETOR | NUMBER | Y | Codigo do Setor no ratieo dos descontos e acrescimos no recebimento |
| 4 | CD_ITEM_RES | NUMBER | Y | Codigo da Conta de Custo associado ao desconto ou acrescimo do recebimento |
| 5 | VL_RATREC_DESC_ACRES | NUMBER | N | Valor rateado de desconto ou acrescimo no recebimento para cada setor e/ou conta de custo |

---

## DBAMV.RAT_PAGCON_PAG
> Tabela que registra o rateio do pagamento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_RAT_PAGCON_PAG | NUMBER | N | Codigo do rateio do pagamento |
| 2 | CD_PAGCON_PAG | NUMBER | N | Codigo do pagamento |
| 3 | CD_SETOR | NUMBER | Y | Codigo do Setor atrelado ao pagamento |
| 4 | CD_ITEM_RES | NUMBER | Y | Codigo da Conta de Custo atrelada ao setor |
| 5 | VL_RAT_PAGCON_PAG | NUMBER | N | Valor rateado no pagamento |
| 6 | CD_MULTI_EMPRESA | VARCHAR2 | Y | Codigo da multi empresa |
| 7 | CD_REDUZIDO | NUMBER | Y | Codigo Contabil Reduzido |

---

## DBAMV.RAT_RECCON_REC
> Tabela que registra o rateio do recebimento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_RAT_RECCON_REC | NUMBER | N | Codigo do rateio do recebimento |
| 2 | CD_RECCON_REC | NUMBER | N | Codigo do recebimento |
| 3 | CD_SETOR | NUMBER | Y | Codigo do Setor associado ao recebimento |
| 4 | CD_ITEM_RES | NUMBER | Y | Codigo da Conta de Custo associada ao recebimento |
| 5 | VL_RAT_RECCON_REC | NUMBER | N | Valor do rateio no recebimento |
| 6 | CD_MULTI_EMPRESA | NUMBER | Y | Codigo da multi empresa |
| 7 | CD_REDUZIDO | NUMBER | Y | Codigo Contabil Reduzido |

---

## DBAMV.RUBRICA
> Tabela onde est?o definidas as rubricas relacionadas as contas

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_RUBRICA | NUMBER | N | Codigo da rubrica que estara relacionada a conta |
| 2 | DS_RUBRICA | VARCHAR2 | N | Descric?o da rubrica que estara relacionada a conta |
| 3 | CD_CONTA | NUMBER | N | Codigo da conta principal |
| 4 | CD_CLASSIFICACAO_RUBRICA | NUMBER | N | Codigo do Tipo de classificac?o da rubrica |

---

## DBAMV.RUBRICA_SUS
> Listagem de rubricas SUS/MS-DATASUS.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_RUBRICA | VARCHAR2 | N | Codigo de identificac?o da rubrica |
| 2 | DS_RUBRICA | VARCHAR2 | N | Descric?o de identificac?o da rubrica |
| 3 | SN_ATIVO | VARCHAR2 | N | Identifica se a rubrica encontra-se ativa |

---

## DBAMV.SEGUROS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SEGURADORA | NUMBER | N |  |
| 2 | DS_SEGURADORA | VARCHAR2 | Y |  |
| 3 | DS_ENDERECO | VARCHAR2 | Y |  |
| 4 | NR_TELEFONE | VARCHAR2 | Y |  |
| 5 | NM_CORRETOR | VARCHAR2 | Y |  |
| 6 | NR_TELEFONE_CORRETOR | VARCHAR2 | Y |  |

---

## DBAMV.SIMULACAO_FC
> Tabela responsável por guardar informações de simulações realizadas para o fluxo de caixa na tela O_FLUXO_CAIXA.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SIMULACAO_FC | NUMBER | N | Código(PK) identificador da tabela. |
| 2 | CD_MODELO_CONTABIL | VARCHAR2 | N | Código do modelo contábil. |
| 3 | CD_MODELO_CONTABIL_EVENTO | NUMBER | N | Código do modelo contábil evento. |
| 4 | CD_USUARIO | VARCHAR2 | N | Código do usuário logado que realizou a simulação. |
| 5 | CD_MOVIMENTO | NUMBER | N | Código de movimento que identifica um conjunto de registros/linhas. |
| 6 | DT_INICIO | DATE | N | Data do inicio do intervalo da simulação. |
| 7 | DT_COMPETENCIA | DATE | N | Competência da simulação. |
| 8 | TP_VALOR | VARCHAR2 | N | Tipo de valor() que será utilizado na simulação. |
| 9 | TP_COMPETENCIA | VARCHAR2 | N | Tipo de competência(dias(DI)/semanas(SN)/meses(ME)/anos(AN) utilizada na simulação. |
| 10 | VL_SIMULACAO | NUMBER | N | Valor utilizado na simulação. |
| 11 | DS_COMPLEMENTO | VARCHAR2 | Y | Complemento para descrever a simulação. |

---

## DBAMV.SOLIC_AGENDAMENTO
> Solictac?o de Agendamento de Tratamento clinico

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SOLIC_AGENDAMENTO | NUMBER | N | Codigo identificador da solictac?o de Agendamento |
| 2 | DT_SOLIC_AGENDAMENTO | DATE | N | Data de criac?o da solictac?o de Agendamento |
| 3 | CD_ATENDIMENTO | NUMBER | N | Codigo do atendimento da consulta que originou a solicitac?o |
| 4 | CD_ITEM_AGENDAMENTO | NUMBER | N | Item a ser agendado |
| 5 | DT_REFERENCIA | DATE | N | Data de Referencia para o inicio das Sess?es |
| 6 | NR_DIA | NUMBER | N | Valor que define a sequencia de dias para agendamento, a partir de uma data inicial ou de referen... |
| 7 | TP_SITUACAO | VARCHAR2 | Y | Situac?o da solicitac?o de Agendamento |
| 8 | CD_TRATAMENTO | NUMBER | Y | Codigo do Tratamento clinico |
| 9 | NR_CICLO | NUMBER | Y | N? do Ciclo no Tratamento |
| 10 | NR_SESSAO | NUMBER | Y | N? da Sess?o no Ciclo |
| 11 | CD_IT_AGENDA_CENTRAL | NUMBER | Y | Codigo do harario da agenda marcada |
| 12 | DS_OBSERVACAO | VARCHAR2 | Y | Observac?o sobre o Agendamento do Item |
| 13 | CD_USUARIO_CANCELA | VARCHAR2 | Y | Usuario que realizou o cancelamento da Solcitac?o |
| 14 | DT_CANCELAMENTO | DATE | Y | Data de realizac?o do cancelamento |
| 15 | CD_ATENDIMENTO_FILHO | NUMBER | Y | Codigo do Atendimento-filho gerado pela Sess?o de Tratamento |
| 16 | SN_ATENDIMENTO_PAI | VARCHAR2 | Y | Identifica se a sess?o sera responsavel por gerar o atendimento-pai |
| 17 | CD_ITPRE_MED | NUMBER | Y | Codigo do item de prescricao origem da solicitacao |
| 18 | CD_TIP_PRESC | NUMBER | Y | Codigo da tabela DBAMV.TIP_PRESC |
| 19 | TP_AGENDAMENTO | VARCHAR2 | Y | Tipo da solicitação de agendamento. Pode ser QUI = Quimioterapia, RAD = Radioterapia, FAR = Farmá... |
| 20 | CD_GUIA | NUMBER | Y | Código da Guia que foi gerada pelo processo de agendamento. |
| 21 | CD_ENCAMINHAMENTO | NUMBER | Y | CÃ³digo do Encaminhamento gerado no PEP |
| 22 | CD_PRESTADOR | NUMBER | Y |  |
| 23 | CD_ESPECIALID | NUMBER | Y |  |
| 24 | CD_USUARIO_SOLICITANTE | VARCHAR2 | Y |  |

---

## DBAMV.SOLIC_ATD

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SOLIC_ATD | NUMBER | N |  |
| 2 | CD_ATENDIMENTO | NUMBER | N |  |
| 3 | TP_SOLIC_ATD | VARCHAR2 | N |  |
| 4 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 5 | QT_SESSOES | NUMBER | Y |  |
| 6 | CD_INSTR | NUMBER | Y |  |
| 7 | CD_ANEST | NUMBER | Y |  |
| 8 | QT_DIAS_INTERN | NUMBER | Y |  |
| 9 | TP_LOCAL | VARCHAR2 | N |  |
| 10 | VL_TEMPO_PREVISTO | DATE | Y |  |
| 11 | TP_NATUREZA | VARCHAR2 | Y |  |
| 12 | CD_AVISO_CIRURGIA | NUMBER | Y |  |
| 13 | CD_CASOS_ATD | NUMBER | Y | Codigo de identificac?o da tabela CASOS_ATD |

---

## DBAMV.SOLIC_ATD_PADR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SOLIC_ATD_PADR | NUMBER | N |  |
| 2 | DS_SOLIC_ATD_PADR | VARCHAR2 | N |  |
| 3 | TP_SOLIC_ATD | VARCHAR2 | N |  |
| 4 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 5 | QT_SESSOES | NUMBER | Y |  |
| 6 | QT_DIAS_INTERN | NUMBER | Y |  |
| 7 | TP_LOCAL | VARCHAR2 | Y |  |
| 8 | CD_PRESTADOR | NUMBER | Y |  |

---

## DBAMV.SOLIC_ATENDIMENTO_REGULACAO
> Tabela de solicitação de atendimento de regulação.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SOLIC_ATENDIMENTO_REGULACAO | NUMBER | N | Código único que identifica a solicitação de atendimento da Regulação. |
| 2 | DH_SOLICITACAO | DATE | N | Data e Hora da Solicitação de atendimento. |
| 3 | TP_SOLICITACAO | VARCHAR2 | N | Indica o tipo de solicitação de regulação: (1) - Padrão / (2) - Psiquiatria / (3) - Cateterismo. |
| 4 | CD_SOLICITACAO_ANTERIOR | NUMBER | Y | Código da Solicitação anterior. |
| 5 | NR_AIH_DV | VARCHAR2 | Y | Número de Autorização da Internação Hospitalar. |
| 6 | CD_MULTI_EMPRESA | NUMBER | Y | Código da empresa dona da solicitação. |
| 7 | CD_ESTABELECIMENTO_SOLICITANTE | NUMBER | Y | Código do Estabelecimento Solicitante. |
| 8 | DS_ESTABELECIMENTO_SOLICITANTE | VARCHAR2 | Y | Descrição do Estabelecimento Solicitante. |
| 9 | NR_CNES_ESTABELECIMENTO_SOLIC | NUMBER | Y | Número do CNES do Estabelecimento Solicitante. |
| 10 | CD_ESTABELECIMENTO_EXECUTANTE | NUMBER | Y | Código do Estabelecimento Executante. |
| 11 | DS_ESTABELECIMENTO_EXECUTANTE | VARCHAR2 | Y | Descrição do Estabelecimento Executante. |
| 12 | NR_CNES_ESTABELECIMENTO_EXEC | NUMBER | Y | Número do CNES do Estabelecimento Executante. |
| 13 | CD_ATENDIMENTO | NUMBER | Y | Código do atendimento de internação. |
| 14 | CD_PACIENTE | NUMBER | Y | Código do Paciente da Solicitação de Atendimento. |
| 15 | NM_PACIENTE | VARCHAR2 | Y | Nome do Paciente da Solicitação de Atendimento. |
| 16 | CD_RES_LEI | NUMBER | Y | Código da pré-internacao. |
| 17 | CD_CID | VARCHAR2 | Y | Código do CID principal. |
| 18 | DS_CID | VARCHAR2 | Y | Descrição do CID principal. |
| 19 | CD_PROCEDIMENTO | VARCHAR2 | Y | Código do procedimento. |
| 20 | CD_LEITO | NUMBER | Y | Código do leito em que o paciente está internado. |
| 21 | CD_COR_REFERENCIA | NUMBER | Y | Código da cor da classificação de risco. |
| 22 | CD_PROCEDENCIA | VARCHAR2 | Y | Código da procedência. |
| 23 | CD_SITUACAO | VARCHAR2 | Y | Código da situação da regulação. |
| 24 | CD_TIPO_LEITO_REGULACAO | VARCHAR2 | Y | Código do tipo do leito na regulação. |
| 25 | CD_ESPL_LEITO_REGULACAO | VARCHAR2 | Y | Código da especialidade do leito na regulação. |
| 26 | CD_CONDICAO | VARCHAR2 | Y | Código da condição. |
| 27 | CD_SENSORIO | VARCHAR2 | Y | Código do sensório. |
| 28 | CD_DEBITO_URINARIO | VARCHAR2 | Y | Código do débito urinário. |
| 29 | CD_SUPORTE_O2 | VARCHAR2 | Y | Código do tipo de suporte o2. |
| 30 | NR_FLUXO_O2 | NUMBER | Y | Fluxo de O2 que o paciente necessita em Litros por minuto. |
| 31 | TP_SITUACAO_SOLICITACAO | VARCHAR2 | N | Situação da solicitação. |
| 32 | TP_ORIGEM_SOLICITACAO | VARCHAR2 | N | Origem da solicitação. |
| 33 | NR_PROTOCOLO_ORIGEM | VARCHAR2 | Y | Número do protocolo de origem da solicitação de atendimento, para solicitações externas. |
| 34 | CD_PROTOCOLO_REGULACAO | VARCHAR2 | Y | Protocolo do sistema da central de regulação. |
| 35 | CD_PROTOCOLO_ORIGEM | VARCHAR2 | Y | Protocolo de agendamento em solicitações de caráter eletivo. |
| 36 | DH_REGULACAO | DATE | Y | Data e hora da regulação. |
| 37 | DS_MENSAGEM_REGULACAO | VARCHAR2 | Y | Mensagem enviada pela regulação. |
| 38 | CD_LEITO_REGULACAO | VARCHAR2 | Y | Código do leito no sistema de regulação. |
| 39 | DS_NACIONALIDADE | VARCHAR2 | Y | Nacionalidade do paciente. |
| 40 | DS_ESTADO_CIVIL | VARCHAR2 | Y | Estado civil do paciente. |
| 41 | NR_IDADE_APARENTE | NUMBER | Y | Idade aparente do paciente. |
| 42 | DS_TELEFONES | VARCHAR2 | Y | Telefones do paciente. |
| 43 | DS_PROCEDIMENTO | VARCHAR2 | Y | Descrição do procedimento. |
| 44 | SN_DIALISE | VARCHAR2 | N | Indica se o paciente precisa de dialise. |
| 45 | NR_FREQUENCIA_CARDIACA | NUMBER | Y | Frequência cardíaca do paciente. |
| 46 | NR_FREQUENCIA_RESPIRATORIA | NUMBER | Y | Frequência respiratória do paciente. |
| 47 | NR_TEMPERATURA | NUMBER | Y | Temperatura do paciente. |
| 48 | NR_SATURACAO_O2 | NUMBER | Y | Saturação O2 do paciente. |
| 49 | NR_PRESSAO_SISTOLICA | NUMBER | Y | Pressão sistólica do paciente. |
| 50 | NR_PRESSAO_DIASTOLICA | NUMBER | Y | Pressão diastólica do paciente. |
| 51 | NR_PEEP | NUMBER | Y | Pressão Expiratória Positiva Final. |
| 52 | NR_FIO2 | NUMBER | Y | Frações inspiradas de oxigênio. |
| 53 | NR_SATO2 | NUMBER | Y | Saturação de oxigênio. |
| 54 | CD_ENCAM_POSALTA_REGULACAO | VARCHAR2 | Y | Código do encaminhamento pós-alta na regulação. |
| 55 | SN_ISOLAMENTO_NECESSARIO | VARCHAR2 | N | Indica se há necessidade de isolamento do paciente. |
| 56 | CD_GERME_REGULACAO1 | VARCHAR2 | Y | Germe 1 apresentada pelo paciente. |
| 57 | CD_GERME_REGULACAO2 | VARCHAR2 | Y | Germe 2 apresentada pelo paciente. |
| 58 | CD_GERME_REGULACAO3 | VARCHAR2 | Y | Germe 3 apresentada pelo paciente. |
| 59 | DS_GERME_MULTIRRESISTENTE | VARCHAR2 | Y | Descrição de germe multirresistente apresentado pelo paciente. |
| 60 | SN_POSSUI_COMORBIDADE | VARCHAR2 | N | Indica se o paciente apresenta comorbidades. |
| 61 | CD_CID_COMORBIDADE1 | VARCHAR2 | Y | Comorbidade 1 apresentada pelo paciente. |
| 62 | CD_CID_COMORBIDADE2 | VARCHAR2 | Y | Comorbidade 2 apresentada pelo paciente. |
| 63 | CD_CID_COMORBIDADE3 | VARCHAR2 | Y | Comorbidade 3 apresentada pelo paciente. |
| 64 | DS_CID_COMORBIDADE1 | VARCHAR2 | Y | Descrição da comorbidade 1 apresentada pelo paciente. |
| 65 | DS_CID_COMORBIDADE2 | VARCHAR2 | Y | Descrição da comorbidade 2 apresentada pelo paciente. |
| 66 | DS_CID_COMORBIDADE3 | VARCHAR2 | Y | Descrição da comorbidade 3 apresentada pelo paciente. |
| 67 | CD_CID_SECUNDARIO | VARCHAR2 | Y | CID secundário. |
| 68 | DS_CID_SECUNDARIO | VARCHAR2 | Y | Descrição CID secundário. |
| 69 | DS_RESUMO_INTERNACAO | VARCHAR2 | Y | Resumo da internação do paciente. |
| 70 | DS_PRESCRICAO_ALTA | VARCHAR2 | Y | Prescrição da alta do paciente. |
| 71 | SN_ESTRANGEIRO | VARCHAR2 | N | Indica se o paciente é estrangeiro. |
| 72 | DT_NASCIMENTO | DATE | Y | Data de nascimento do paciente. |
| 73 | DT_NASCIMENTO_MAE | DATE | Y | Data de nascimento da mãe do paciente. |
| 74 | TP_SEXO | VARCHAR2 | N | Indica o sexo do paciente: (M) - Masculino / (F) - Feminino / (I) - Indeterminado. |
| 75 | TP_COR | VARCHAR2 | N | Raça/cor do paciente. |
| 76 | NR_CNS | VARCHAR2 | Y | Número do CNS do paciente. |
| 77 | NR_CPF | VARCHAR2 | Y | CPF do paciente. |
| 78 | NM_MAE | VARCHAR2 | Y | Nome da mãe do paciente. |
| 79 | DS_CIDADANIA | VARCHAR2 | Y | Cidadania do paciente. |
| 80 | NR_CEP | VARCHAR2 | Y | CEP do paciente. |
| 81 | CD_TIPO_LOGRADOURO | NUMBER | Y | Tipo de logradouro do endereço do paciente. |
| 82 | DS_ENDERECO | VARCHAR2 | Y | Endereço do paciente. |
| 83 | NR_ENDERECO | VARCHAR2 | Y | Número do endereço do paciente. |
| 84 | DS_COMPLEMENTO | VARCHAR2 | Y | Complemento do endereço do paciente. |
| 85 | NM_BAIRRO | VARCHAR2 | Y | Bairro em que reside o paciente. |
| 86 | NM_CIDADE | VARCHAR2 | Y | Nome do município em que reside o paciente. |
| 87 | CD_IBGE | NUMBER | Y | Código IBGE do município em que reside o paciente. |
| 88 | CD_IBGE_NASCIMENTO | NUMBER | Y | Código IBGE do município em que nasceu o paciente. |
| 89 | CD_UF | VARCHAR2 | Y | Estado em que reside o paciente. |
| 90 | DS_SINAIS_SINTOMAS | VARCHAR2 | Y | Descrição dos principais sinais e sintomas. |
| 91 | DS_JUSTIFICATIVA_SOLICITACAO | VARCHAR2 | Y | Condições que justificam a internação. |
| 92 | DS_RESULTADO_DIAGNOSTICO | VARCHAR2 | Y | Principais resultados de provas diagnósticas. |
| 93 | CD_PRESTADOR_SOLICITANTE | NUMBER | Y | Código do prestador solicitante. |
| 94 | NM_PRESTADOR_SOLICITANTE | VARCHAR2 | Y | Nome do prestador solicitante. |
| 95 | NR_CNS_PRESTADOR_SOLIC | VARCHAR2 | Y | Número CNS do prestador solicitante. |
| 96 | CD_PRESTADOR_RESPONSAVEL_INTER | NUMBER | Y | Código do Prestador Responsável pela Internação. |
| 97 | NM_PRESTADOR_RESPONSAVEL_INTER | VARCHAR2 | Y | Nome do Prestador Responsável pela Internação. |
| 98 | NR_CNS_PRESTADOR_RESP_INTER | VARCHAR2 | Y | Número CNS do Prestador Responsável pela Internação. |
| 99 | CD_ESPECIALID | NUMBER | Y | Código da Especialidade da Internação. |
| 100 | TP_CARATER_INTERNACAO | VARCHAR2 | N | Tipo de caráter da internação : (E) - Eletiva / (U) - Urgência. |
| 101 | SN_AUTO_INTERNACAO | VARCHAR2 | N | Indica se a solicitação é de uma Auto Internação. |
| 102 | DT_AGENDAMENTO | DATE | Y | Data prevista para o agendamento da internação eletiva. |
| 103 | DT_INTERNACAO | DATE | Y | Data da Internação. |
| 104 | DT_LAUDO | DATE | Y | Data do Laudo. |
| 105 | SN_PSIQUIATRICO | VARCHAR2 | N | Indica se o paciente é psiquiátrico. |
| 106 | DT_ALTA | DATE | Y | Data de Alta. |
| 107 | CD_MOT_ALT | NUMBER | Y | Código do Motivo da Alta. |
| 108 | DS_HISTORICO_PSIQUIATRIA | VARCHAR2 | Y | Histórico de Psiquiatria do Paciente. |
| 109 | TP_INTERNACAO_PSIQUIATRIA | VARCHAR2 | N | Tipo de internação de psiquiatria: (C) - Compulsória / (V) - Voluntária / (I) - Involuntária. |
| 110 | SN_INTERN_PSIQUIATRICA_PREVIA | VARCHAR2 | N | Indica se o paciente possui uma internação psiquiátrica prévia. |
| 111 | SN_RISCO_HETEROAGRESSAO | VARCHAR2 | N | Indica se existe o risco de heteroagressão. |
| 112 | SN_PACIENTE_MOTIVADO | VARCHAR2 | N | Indica se o paciente está motivado. |
| 113 | SN_ACOMP_PSIQUIATRICO_AMBULAT | VARCHAR2 | N | Indica a existência de acompanhamento psiquiátrico ambulatorial. |
| 114 | SN_USO_SUBSTANCIA_PSICOATIVA | VARCHAR2 | N | Indica se o paciente faz uso de substância psicoativa |
| 115 | DS_SUBSTANCIAS_PSICOATIVAS | VARCHAR2 | Y | Informar as substâncias psicoativas que o paciente faz uso. |
| 116 | TP_SUPORTE_FAMILIAR | VARCHAR2 | N | Indica o suporte familiar que o paciente possui. |
| 117 | SN_POSSUI_PLANO_SUICIDA | VARCHAR2 | N | Indica se o paciente possui um plano suicida. |
| 118 | SN_MEDIC_COMORB_PSIQUIATRIA | VARCHAR2 | N | Indica se o paciente faz uso de medicamentos para outras comorbidades. |
| 119 | DS_MEDIC_COMORB_PSIQUIATRIA | VARCHAR2 | Y | Medicamentos que o paciente usa para outras comorbidades. |
| 120 | SN_GRAVIDA_PSIQUIATRIA | VARCHAR2 | N | Indica se a paciente está grávida. |
| 121 | DS_OBSERVACOES_CATETERISMO | VARCHAR2 | Y | Descrição da observação do exame de cateterismo. |
| 122 | DS_JUSTIFICATIVA_CATETERISMO | VARCHAR2 | Y | Descrição da justificativa para realizar o exame de cateterismo. |
| 123 | DS_MEDICAMENTOS_CATETERISMO | VARCHAR2 | Y | Descrição dos medicamentos usados no cateterismo. |
| 124 | DS_EXAMES_CATETERISMO | VARCHAR2 | Y | Descrição do exame de cateterismo. |
| 125 | DS_HIPOTESE_DIAGNOSTICO | VARCHAR2 | Y | Hipótese Diagnóstica principal. |
| 126 | SN_CAMPANHA | VARCHAR2 | N | Informa se o atendimento eletivo será atendido através de alguma campanha de saúde. |
| 127 | TP_ACIDENTE | VARCHAR2 | N | Indica o tipo de Acidente: (TR) - Acidente de Trabalho / (TJ) - Acidente no Trajeto do trabalho /... |
| 128 | NR_CNPJ_SEGURADORA | NUMBER | Y | Número do CNPJ da Seguradora. |
| 129 | NR_BILHETE | VARCHAR2 | Y | Número do bilhete. |
| 130 | NR_SERIE | VARCHAR2 | Y | Número da série. |
| 131 | NR_CNPJ_EMPRESA | NUMBER | Y | Número do CNPJ da Empresa. |
| 132 | NR_CNAE_EMPRESA | VARCHAR2 | Y | Número do CNAE da Empresa. |
| 133 | CD_CBO | VARCHAR2 | Y | Código do Cadastro Brasileiro de Ocupações. |
| 134 | NM_PRESTADOR_REGULADOR | VARCHAR2 | Y | Nome do Prestador Regulador. |
| 135 | DH_AUTORIZACAO | DATE | Y | Data e Hora da Autorização. |
| 136 | DS_HOSPITAL_DESTINO | VARCHAR2 | Y | Nome do Hospital de Destino. |
| 137 | DS_POSTO_DESTINO | VARCHAR2 | Y | Nome do Posto de Destino. |
| 138 | DS_ENFERMARIA_DESTINO | VARCHAR2 | Y | Nome da Enfermaria de Destino. |
| 139 | DS_LEITO_DESTINO | VARCHAR2 | Y | Descrição do Leito de Destino. |
| 140 | SN_EVOLUCAO_PENDENTE | VARCHAR2 | N | Indica se a solicitação está com evolução do paciente pendente. |
| 141 | DH_PROXIMA_EVOLUCAO | DATE | Y | Data e hora limite para o estabelecimento enviar nova evolução do paciente. |
| 142 | DS_MOTIVO_CANCELAMENTO | VARCHAR2 | Y | Descrição do Motivo de Cancelamento da Solicitação de Atendimento. |
| 143 | DS_MOTIVO_REJEICAO | VARCHAR2 | Y | Descrição do Motivo de Rejeição da Solicitação de Atendimento. |
| 144 | DS_ESCLARECIMENTO | VARCHAR2 | Y | Descrição do esclarecimento que está sendo questionado. |
| 145 | DS_ERRO_INTEGRACAO | VARCHAR2 | Y | Descrição do Erro na Integração. |
| 146 | CD_LAUDO | NUMBER | Y | Laudo AIH do paciente. |
| 147 | CD_REGULADOR | VARCHAR2 | N | Serviço usado para a regulação de leitos. |
| 148 | CD_ENCERRAMENTO | VARCHAR2 | Y | Código usado pelo serviço regulador para encerrar a solicitação ATIVA. |

---

## DBAMV.SOLIC_AUT_FORMA_PAGTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SOLIC_AUT_FORMA_PAGTO | NUMBER | N | Código da solicitação de autorização da forma de pagamento sugerida. |
| 2 | CD_AVISO_CIRURGIA | NUMBER | N | Código do aviso de cirurgia. |
| 3 | CD_CIRURGIA_AVISO | NUMBER | N | Código da cirurgia do aviso. |
| 4 | CD_PRESTADOR | NUMBER | N | Código do prestador principal da cirurgia. |
| 5 | TP_PAGAMENTO_SUGERIDO | VARCHAR2 | N | Tipo de pagamento sugerida. P - Produção, C - Convênio, F - Hospital, R - Reembolso, N - Não fatu... |
| 6 | TP_PAGAMENTO | VARCHAR2 | N | Tipo de pagamento padrão. P - Produção, C - Convênio, F - Hospital, R - Reembolso, N - Não faturado. |
| 7 | TP_SITUACAO | VARCHAR2 | N | Situação da solicitação. P - Pendente, A - Aprovada, R - Reprovada. |
| 8 | DT_SOLICITACAO | DATE | N | Data em que a solicitação foi realizada. |
| 9 | CD_USUARIO_SOLICITACAO | VARCHAR2 | N | Código do usuário que gerou a solicitação. |
| 10 | DT_APROVACAO | DATE | Y | Data em que a solicitação foi aprovada. |
| 11 | CD_USUARIO_APROVACAO | VARCHAR2 | Y | Código do usuário que aprovou a solicitação. |
| 12 | DT_REPROVACAO | DATE | Y | Data em que a solicitação foi reprovada. |
| 13 | CD_USUARIO_REPROVACAO | VARCHAR2 | Y | Código do usuário que reprovou a solicitação. |
| 14 | DS_OBSERVACAO | VARCHAR2 | Y | Observação da solicitação |

---

## DBAMV.SOLIC_CANCELAMENTO_CIRURGIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SOLIC_CANCELAMENTO_CIRURGIA | NUMBER | N | Código da solicitação de cancelamento de cirurgia. |
| 2 | CD_MOT_CANC | NUMBER | N | Código do motivo de cancelamento. |
| 3 | CD_AVISO_CIRURGIA | NUMBER | N | Código do aviso de cirurgia que será cancelado. |
| 4 | TP_SITUACAO | VARCHAR2 | N | Situação da solicitação de cancelamento. P - Pendente, A - Aprovada, R - Reprovada. |
| 5 | DT_SOLICITACAO | DATE | N | Data de realização da solicitação. |
| 6 | CD_USUARIO | VARCHAR2 | N | Código do usuário que realizou a solicitação de cancelamento. |

---

## DBAMV.SOLIC_LIMPEZA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SOLIC_LIMPEZA | NUMBER | N |  |
| 2 | CD_ATENDIMENTO | NUMBER | Y |  |
| 3 | CD_MOV_INT | NUMBER | Y |  |
| 4 | CD_LEITO | NUMBER | N |  |
| 5 | CD_SETOR | NUMBER | N |  |
| 6 | CD_FUNC | NUMBER | Y |  |
| 7 | CD_TIPO_LIMPEZA | NUMBER | Y |  |
| 8 | DT_SOLIC_LIMPEZA | DATE | N |  |
| 9 | HR_SOLIC_LIMPEZA | DATE | N |  |
| 10 | NM_USUARIO | VARCHAR2 | N |  |
| 11 | TP_SOLICITACAO | VARCHAR2 | N |  |
| 12 | TP_SITUACAO | VARCHAR2 | N |  |
| 13 | SN_REALIZADO | VARCHAR2 | N |  |
| 14 | DT_REALIZADO | DATE | Y | Data da liberac?o do leito pela equipe de Limpeza |
| 15 | HR_REALIZADO | DATE | Y | Hora da liberac?o do leito pela equipe de limpeza |
| 16 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 17 | DT_CANCELAMENTO | DATE | Y |  |
| 18 | HR_CANCELAMENTO | DATE | Y |  |
| 19 | DS_MOTIVO | VARCHAR2 | Y |  |
| 20 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 21 | NM_USUARIO_CANCEL | VARCHAR2 | Y |  |
| 22 | DT_INICIO_HIGIENIZA | DATE | Y | Data da liberac?o do leito para ser higienizado |
| 23 | HR_INICIO_HIGIENIZA | DATE | Y | Hora da liberac?o do leito para ser higienizado |
| 24 | SN_LIB_LIMPEZA_AUTO | VARCHAR2 | N | Indicar que a solicitac?o foi gerada associada a liberac?o automatica da limpeza |
| 25 | DT_HR_FIM_AG_HIGIENIZA | DATE | Y | Data e hora final do processo do leito: Aguardando higienizac?o |
| 26 | DT_HR_INI_ROUPARIA | DATE | Y | Data e hora inicial do processo do leito: Rouparia |
| 27 | DT_HR_FIM_ROUPARIA | DATE | Y | Data e hora Final do processo do leito: Rouparia |
| 28 | DT_HR_FIM_HIGIENIZA | DATE | Y | Data e hora Final do processo do leito: Em higienizac?o |
| 29 | DT_HR_INI_POS_HIGIENIZA | DATE | Y | Data e hora Inicial do processo do leito: Pos Higienizac?o |
| 30 | DT_HR_FIM_POS_HIGIENIZA | DATE | Y | Data e hora Final do processo do leito: Pos Higienizac?o |

---

## DBAMV.SOLIC_PARECER
> Tabela de Solicitac?o de Parecer Medico

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SOLIC_PARECER | NUMBER | N | Codigo da Solicitac?o de Parecer Medico |
| 2 | CD_CASOS_ATD | NUMBER | N | Codido da Evoluc?o Medica que gerou a solicitac?o de parecer medico |
| 3 | CD_PRESTADOR | NUMBER | N | Codido do prestador que foi solicitado na solicitac?o de parecer medico |
| 4 | CD_ESPECIALID | NUMBER | N | Codido da Especialidade relacionada a solicitac?o de parecer medico |
| 5 | DT_SOLIC_PARECER | DATE | Y | Data/Hora que foi solicitado o Parecer Medico |
| 6 | SN_CANCELADA | VARCHAR2 | N | Indica que a solicitac?o de parecer esta cancelada |

---

## DBAMV.SOLIC_PARTIC_ANEXO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SOLIC_PARTIC_ANEXO | NUMBER | N | Código de Cadastro |
| 2 | CD_SOLICITACAO_PARTIC | NUMBER | N | Código referencia a Particularidade |
| 3 | DH_CRIACAO | DATE | Y | Dia e Hora da Criação do Documento |
| 4 | DS_NOME_ANEXO | VARCHAR2 | Y |  |
| 5 | DS_AUTOR | VARCHAR2 | Y |  |
| 6 | DS_ORIGEM | VARCHAR2 | Y |  |
| 7 | TP_EXTENSAO | VARCHAR2 | Y |  |
| 8 | LO_DOCUMENTO_ANEXO | BLOB | Y |  |

---

## DBAMV.SOLIC_PARTIC_GRU_PRO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SOLICITACAO_PARTIC | NUMBER | N | Chave Estrangeira Fk com a tabela de SOLICITACAO_PARTIC |
| 2 | CD_GRU_PRO | NUMBER | N | Relaciona com GRU_PRO |
| 3 | VL_DESCONTO | NUMBER | Y |  |
| 4 | VL_VALOR | NUMBER | Y |  |

---

## DBAMV.SOLIC_PARTIC_HISTORICO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SOLIC_PARTIC_HISTORICO | NUMBER | N | Guarda o código do Histórico da Solicitação da Particularidade |
| 2 | CD_SOLICITACAO_PARTIC | NUMBER | N | Chave estrangeira FK onde se relaciona com a solicitação da particularidade |
| 3 | DT_SOLIC_PARTIC_HISTORICO | DATE | Y | Data do Cadastro do Histórico da Particularidade |
| 4 | CD_USUARIO | VARCHAR2 | N | Chave estrangeira FK onde se relaciona com a tabela USUARIOS |
| 5 | TP_STATUS | VARCHAR2 | Y | A=Autorizado; N=Não Autorizado; P=Pendente |
| 6 | DS_DESCRICAO | VARCHAR2 | Y | Registra a Descrição |
| 7 | DS_OBSERVACAO | VARCHAR2 | Y | Registra a Observação |
| 8 | DT_VIGENCIA_INI | DATE | Y | Registra a data Inicio da Vigência |
| 9 | DT_VIGENCIA_FIM | DATE | Y | Registra a data Final da Vigência |
| 10 | CD_AUTORIZADOR | VARCHAR2 | Y |  |
| 11 | DT_AUTORIZACAO | DATE | Y |  |

---

## DBAMV.SOLIC_PARTIC_PRO_FAT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SOLICITACAO_PARTIC | NUMBER | N | Chave Estrangeira FK com a SOLICITACAO_PARTIC |
| 2 | CD_PRO_FAT | VARCHAR2 | N | Chave Estrangeira FK com a PRO_FAT |
| 3 | VL_DESCONTO | NUMBER | Y |  |
| 4 | VL_VALOR | NUMBER | Y |  |
| 5 | VL_PRO_FAT | NUMBER | Y | Guarda o valor do procedimento |

---

## DBAMV.SOLIC_SANGUE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SOLIC_SANGUE | NUMBER | N |  |
| 2 | DT_SOLIC_SANGUE | DATE | Y |  |
| 3 | HR_SOLIC_SANGUE | DATE | Y |  |
| 4 | NM_USUARIO | VARCHAR2 | Y |  |
| 5 | CD_AVISO_CIRURGIA | NUMBER | Y |  |
| 6 | CD_PRE_MED | NUMBER | Y |  |
| 7 | CD_ATENDIMENTO | NUMBER | Y |  |
| 8 | CD_SETOR | NUMBER | Y |  |
| 9 | TP_SOLICITACAO | VARCHAR2 | N |  |
| 10 | TP_SITUACAO | VARCHAR2 | N |  |
| 11 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 12 | DT_CANCELAMENTO | DATE | Y |  |
| 13 | HR_CANCELAMENTO | DATE | Y |  |
| 14 | NM_USUARIO_CANCEL | VARCHAR2 | Y |  |
| 15 | DS_MOTIVO_CANCELAMENTO | VARCHAR2 | Y |  |
| 16 | CD_SET_EXA | NUMBER | Y | armazena o codigo do setor de exames |
| 17 | CD_SOLIC_SANGUE_INTEGRA | VARCHAR2 | Y |  |
| 18 | CD_SEQ_INTEGRA | VARCHAR2 | Y |  |
| 19 | DT_INTEGRA | DATE | Y |  |

---

## DBAMV.SOLIC_TRANSFERENCIA_LEITO
> Solicitac?o de Transferencia de Leito do Paciente

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SOLIC_TRANSFERENCIA_LEITO | NUMBER | N | Codigo da Solicitac?o de Transferencia |
| 2 | CD_ATENDIMENTO | NUMBER | N | Codigo do Atendimento do paciente a ser transferido |
| 3 | CD_TIP_ACOM | NUMBER | N | Codigo do Tipo de Acomodac?o desejada para a transferencia do paciente |
| 4 | SN_PRIORIDADE | VARCHAR2 | N | Indica se existe prioridade na transferencia do paciente |
| 5 | DT_SOLIC_TRANSF | DATE | Y | Data preferencial em que a Transferencia sera feita |
| 6 | HR_SOLIC_TRANSF | DATE | Y | Hora preferencial em que a Transferencia sera feita |
| 7 | DS_OBSERVACAO | VARCHAR2 | Y | Observac?o sobre a solicitac?o de tarnsferencia |
| 8 | TP_SOLICITANTE | VARCHAR2 | Y | Indica quem solicitou a transferencia do Paciente |
| 9 | NM_SOLICITANTE | VARCHAR2 | Y | Nome de quem solicitou a transferencia, quando o tipo de solicitante e "Responsavel" |
| 10 | CD_TIP_PAREN | NUMBER | Y | Codigo do grau de parentesco para o Solicitante do tipo "Responsavel" |
| 11 | TP_DOCUMENTO | VARCHAR2 | Y | Tipo de documento apresentado pelo Responsavel pelo papciente |
| 12 | DS_DOCUMENTO | VARCHAR2 | Y | Numerac?o do documento do solicitante |
| 13 | CD_LEITO_RESERVA | NUMBER | Y | Codigo do leito selecionado (Reservado) para transferencia |
| 14 | TP_SITUACAO | VARCHAR2 | Y | Situac?o em que se encontra a solicitac?o (Solicitada, Atendida, Cancelada ou Realizada) |
| 15 | CD_USUARIO_SOLICITACAO | VARCHAR2 | Y | Codigo do usuario que criou a solicitac?o |
| 16 | DH_SOLICITACAO | DATE | Y | Data e hora de criac?o da solicitac?o |
| 17 | CD_USUARIO_CANCELAMENTO | VARCHAR2 | Y | Codigo do Usuario que cancelou a solicitac?o |
| 18 | DH_CANCELAMENTO | DATE | Y | Data e hora do canelamento da Solicitac?o |
| 19 | CD_MOT_CANC | NUMBER | Y | Codigo do motivo de cancelamento da Solicitac?o |
| 20 | CD_MOTIVO_TRANSF_LEITO | NUMBER | Y | Motivo de transferencia de leito |
| 21 | CD_MOV_INT | NUMBER | Y | Codigo da Movimentac?o do Paciente que referencia a efetivac?o da transferencia do mesmo. |
| 22 | SN_RESERVA_LEITO_ATUAL | VARCHAR2 | Y | Informa se o Leito atual do Paciente vai ficar reservado para o mesmo apos a tranferencia |
| 23 | CD_MOT_TRASNF_LEITO_ATUAL | NUMBER | Y | Motivo de transferencia do Leito atual quando hover retorno do Paciente |
| 24 | CD_LEITO_SUGERIDO | NUMBER | Y | Código do leito sugerido para transferência |
| 25 | CD_UNID_INT_SUGERIDO | NUMBER | Y | Código da Unidade de Internação sugerido para transferência |
| 26 | CD_MOV_CC_RPA | NUMBER | Y | Identificaodor de movimentação de RPA |

---

## DBAMV.TET_ORC

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FAT_SIA | NUMBER | N |  |
| 2 | CD_GRU_SSM | NUMBER | N |  |
| 3 | VL_FISICO | NUMBER | Y |  |
| 4 | VL_ORCAMENTO | NUMBER | Y |  |
| 5 | CD_UPS | NUMBER | Y | Indica o codigo da prestadora de servico do teto orcamentario |

---

## DBAMV.TET_ORC_SSM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FAT_SIA | NUMBER | N |  |
| 2 | CD_SSM | VARCHAR2 | N |  |
| 3 | QTD_FISICO | NUMBER | Y |  |
| 4 | VL_ORCAMENTO | NUMBER | Y |  |

---

## DBAMV.TET_ORC_SUB_GRU

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FAT_SIA | NUMBER | N |  |
| 2 | CD_GRU_SSM | NUMBER | N |  |
| 3 | CD_SUBGRU_SSM | NUMBER | N |  |
| 4 | VL_FISICO | NUMBER | Y |  |
| 5 | VL_ORCAMENTO | NUMBER | Y |  |

---

## DBAMV.TET_ORC_SUB_GRU_SSM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FAT_SIA | NUMBER | N |  |
| 2 | CD_GRU_SSM | NUMBER | N |  |
| 3 | CD_SUBGRU_SSM | NUMBER | N |  |
| 4 | CD_SSM | VARCHAR2 | N |  |
| 5 | VL_FISICO | NUMBER | Y |  |
| 6 | VL_ORCAMENTO | NUMBER | Y |  |

---

## DBAMV.TET_ORC_UPS
> Tetos por Unidades Prestadoras de Servico

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FAT_SIA | NUMBER | N | Indica o codigo da fatura do teto |
| 2 | CD_UPS | NUMBER | N | Indica o codigo da prestadora de servico do teto orcamentario |

---

## DBAMV.TET_ORC_UPS_GRU_SSM
> Tetos por Unidades Prestadoras de Servico

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FAT_SIA | NUMBER | N | Indica o codigo da fatura do teto |
| 2 | CD_UPS | NUMBER | N | Indica o codigo da prestadora de servico do teto orcamentario |
| 3 | CD_GRU_SSM | NUMBER | N | Indica o codigo do grupo de procedimento de servico do teto orcamentario |
| 4 | VL_FISICO | NUMBER | Y | Indica o valor fisico do grupo de procedimento |
| 5 | VL_ORCAMENTO | NUMBER | Y | Indica o valor orcamentario do grupo de procedimento |

---

## DBAMV.TITULO_BANCARIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TITULO_BANCARIO | NUMBER | N |  |
| 2 | NR_CGC_CPF | NUMBER | Y |  |
| 3 | NM_FORNECEDOR | VARCHAR2 | Y |  |
| 4 | NR_TITULO_BANCARIO | VARCHAR2 | Y |  |
| 5 | DT_VENCIMENTO | DATE | Y |  |
| 6 | DT_EMISSAO | DATE | Y |  |
| 7 | DT_DESCONTO | DATE | Y |  |
| 8 | VL_TITULO_BANCARIO | NUMBER | Y |  |
| 9 | VL_DESCONTO | NUMBER | Y |  |
| 10 | NR_SEQUENCIA | NUMBER | Y |  |
| 11 | NR_CODIGO_BARRAS | VARCHAR2 | Y |  |
| 12 | TP_CARTEIRA_BANCARIA | VARCHAR2 | Y |  |
| 13 | TP_MOVIMENTO | VARCHAR2 | Y |  |
| 14 | CD_AGENCIA | NUMBER | Y |  |
| 15 | SN_CONCILIADO | VARCHAR2 | Y |  |
| 16 | CD_ITCON_PAG | NUMBER | Y |  |
| 17 | CD_MULTI_EMPRESA | NUMBER | N | Empresa/hospital constante no arquivo DDA. |
| 18 | NR_SEQUENCIAL_ARQUIVO | NUMBER | Y | Sequencial do arquivo DDA. |
| 19 | DATA_GERACAO_ARQUIVO | DATE | Y | Data em que o banco gerou o arquivo DDA. |
| 20 | DATA_IMPORTACAO_ARQUIVO | DATE | Y | Data de importação do arquivo no SOUL. |
| 21 | NOME_ARQUIVO | VARCHAR2 | Y | Nome do arquivo importado. |

---

## DBAMV.TRIBUTO_MUNICIPAL
> TABELA RESPONSÁVEL POR ARMAZENAR OS CÓDIGOS DE TRIBUTAÇÃO MUNICIPAIS CONFIGURADOS PELO USUÁRIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TRIBUTO | VARCHAR2 | N | CÓDIGO DE TRIBUTAÇÃO |
| 2 | DS_TRIBUTO | VARCHAR2 | Y | DESCRIÇÃO DO CÓDIGO DE TRIBUTAÇÃO MUNICIPAL |
| 3 | TP_TRIBUTO | VARCHAR2 | N | TIPO DE TRIBUTAÇÃO |
| 4 | VL_ALIQUOTA | NUMBER | N | VALOR DA ALIQUOTA REFERENTE AO TRIBUTO |

---

## DBAMV.TRIBUTO_SERVICO_NOTA_FISCAL
> Tabela de tributos da nota fiscal.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TRIBUTO_SERVICO | NUMBER | N | IDENTIFICADOR DA TABELA |
| 2 | CD_SERVICO | NUMBER | Y | IDENTIFICADOR DO SERVIO |
| 3 | CD_GRU_FAT | NUMBER | Y | IDENTIFICADOR DA TABELA GRU_FAT |
| 4 | CD_DETALHAMENTO | NUMBER | N | IDENTIFICADOR DA TABELA TIP_DETALHE |
| 5 | CD_CST | VARCHAR2 | N | IDENTIFICADOR DA DESCRIO CST DA TABELA TIP_DETALHE_CST |
| 6 | CD_GRU_PRO | NUMBER | Y | CDIGO DO PROCEDIMENTO |

---

## MVCONT.ALCA_APROVADOR
> Aprovadores

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_APROVADOR | NUMBER | N | Código do aprovador |
| 2 | CD_USUARIO | VARCHAR2 | N | Código do usuário |
| 3 | NM_APROVADOR | VARCHAR2 | N | Nome do aprovador |
| 4 | CD_MOBILE | VARCHAR2 | Y | Código mobile |
| 5 | CD_EMAIL | VARCHAR2 | Y | Código do email |
| 6 | SN_ENVIAR_EMAIL | VARCHAR2 | N | Enviar email (S/N)? |
| 7 | SN_ENVIAR_PUSH | VARCHAR2 | N | Enviar push (S/N)? |
| 8 | TP_STATUS | VARCHAR2 | N | Tipo de status |
| 9 | DH_INSERT | DATE | N | Data do insert |
| 10 | CD_USUARIO_INS | VARCHAR2 | N | Usuário do insert |
| 11 | DH_UPDATE | DATE | Y | Data do update |
| 12 | CD_USUARIO_UPD | VARCHAR2 | Y | Usuário do update |

---

## MVCONT.ALCA_APROVADOR_MOB
> Identificador do Mobile do Aprovador

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_APROVADOR | NUMBER | N | Código do Aprovador |
| 2 | CD_ID_MOBILE | VARCHAR2 | N | Identificador do Mobile |
| 3 | DH_HISTORICO | DATE | N | Data do Insert do registro |
| 4 | TP_STATUS | VARCHAR2 | N | Status do identificador mobile |
| 5 | DH_STATUS | DATE | Y | Data do Status do identificador mobile |
| 6 | CD_HASH | VARCHAR2 | Y | Código Hash |

---

## MVCONT.ALCA_APROVADOR_STAT
> Ponto de Work-Flow para Autorização

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_APROVADOR_STAT | NUMBER | N | Código do Status do Aprovador |
| 2 | CD_APROVADOR | NUMBER | N | Código do Aprovador |
| 3 | TP_STATUS | VARCHAR2 | N | Status do Ponto |
| 4 | DH_STATUS | DATE | N | Data do Insert do registro |
| 5 | CD_USUARIO | VARCHAR2 | N | Usuário do Insert do registro |

---

## MVCONT.ALCA_DEMANDA
> Demanda de aprovação

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DEMANDA | NUMBER | N | Código de demanda de aprovação |
| 2 | CD_PONTO | VARCHAR2 | N | Código do ponto |
| 3 | CD_USUARIO | VARCHAR2 | N | Código do usuário |
| 4 | CD_EMPRESA | NUMBER | N | Código da empresa |
| 5 | CD_SETOR | NUMBER | Y | Código do setor |
| 6 | CD_CONTA | NUMBER | Y | Código da conta orçamentária |
| 7 | DT_COMPETENCIA | DATE | Y | Data da competência da origem |
| 8 | CD_CONTRATO | NUMBER | Y |  |
| 9 | CD_PROJETO | NUMBER | Y |  |
| 10 | CD_FORNECEDOR | NUMBER | Y |  |
| 11 | VL_DEMANDA | NUMBER | Y | Valor da demanda |
| 12 | DH_VISUALIZADO | DATE | Y | Data e hora que a demanda foi visualisada pelo ambiente |
| 13 | DH_RUBRICA | DATE | Y | Data e hora que a demanda concluiu suas rubricas |
| 14 | DH_ENTREGUE | DATE | Y | Data e hora que a demanda foi entregue para sua origem |
| 15 | CD_ORIGEM | NUMBER | Y | Código do documento que originou a demanda |
| 16 | TX_ORIGEM_IDENTIFICA | VARCHAR2 | Y | Identificação geral do registro de origem |
| 17 | TX_ORIGEM_APROVAR | VARCHAR2 | Y | Procedure a ser executada retornando à origem |
| 18 | TX_ORIGEM_REPROVAR | VARCHAR2 | Y |  |
| 19 | TP_RUBRICA | VARCHAR2 | Y | Resultado das rubricas |
| 20 | TX_MOTIVO | VARCHAR2 | Y | Motivo da rubrica de reprovação |
| 21 | DH_DEMANDA | DATE | N | Data e hora da demanda |
| 22 | TP_STATUS | VARCHAR2 | N | Status da demanda |

---

## MVCONT.ALCA_DEMANDA_AGRP
> Configuração dos agrupadores usados no ponto

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DEMANDA | NUMBER | N | Código da demanda |
| 2 | CD_PONTO_AGRP | NUMBER | N | Código do agrupador do ponto |
| 3 | CD_REFERENCIA | VARCHAR2 | Y | Código referência |

---

## MVCONT.ALCA_PARAMETRO
> Parametro Alcada

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | TP_STATUS | VARCHAR2 | N | Tipo de status |
| 2 | DH_INSERT | DATE | N | Data do insert |
| 3 | CD_USUARIO_INS | VARCHAR2 | N | Usuário do insert |
| 4 | DH_UPDATE | DATE | Y | Data do update |
| 5 | CD_USUARIO_UPD | VARCHAR2 | Y | Usuário do update |

---

## MVCONT.ALCA_PERMISSAO
> Permissões de aprovadores

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PERMISSAO | NUMBER | N | Código da permissao |
| 2 | CD_APROVADOR | NUMBER | N | Código do aprovador |
| 3 | CD_EMPRESA | NUMBER | N | Código da empresa |
| 4 | CD_PONTO | VARCHAR2 | N | Código do ponto |
| 5 | VL_LIMITE_MIN | NUMBER | Y | Limite mínimo |
| 6 | VL_LIMITE_MAX | NUMBER | Y | Limite máximo |
| 7 | NR_NIVEL | NUMBER | N | Nível da aprovação |
| 8 | SN_OBRIGATORIO | VARCHAR2 | N | Obrigação no nível |
| 9 | DH_VIGENCIA_INI | DATE | N | Vigência início da permissão |
| 10 | DH_VIGENCIA_FIN | DATE | Y | Vigência final da permissão |
| 11 | NR_DIAS_SLA_RUBRICA | NUMBER | N | Número dias SLA de rubrica |
| 12 | DH_INSERT | DATE | N |  |
| 13 | CD_USUARIO_INS | VARCHAR2 | N |  |

---

## MVCONT.ALCA_PERMISSAO_AGRP
> Configuração dos agrupadores usados no ponto

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PERMISSAO | NUMBER | N | Código da permissão |
| 2 | CD_PONTO_AGRP | NUMBER | N | Código do agrupador do ponto |
| 3 | CD_REFERENCIA | VARCHAR2 | Y | Código referência |

---

## MVCONT.ALCA_PONTO
> Ponto de Work-Flow para Autorização

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PONTO | VARCHAR2 | N | Código do ponto |
| 2 | CD_SISTEMA | VARCHAR2 | Y | Código do sistema |
| 3 | TP_PONTO | VARCHAR2 | N | Tipo do ponto |
| 4 | DS_PONTO | VARCHAR2 | N | Descrição do ponto |
| 5 | TX_MOTIVOS | VARCHAR2 | Y | Os tipos de motivos da reprovação? |
| 6 | SN_USA_ORCAMENTO | VARCHAR2 | N | Permissões do ponto checa orçamento |
| 7 | SN_USA_LIMITE | VARCHAR2 | N | Permissões do ponto exige valores limites? |
| 8 | TP_LIMITE | VARCHAR2 | Y | Tipo do limite |
| 9 | QT_LIMITE_INT | NUMBER | Y | Quantidade de inteiros do limite |
| 10 | QT_LIMITE_DEC | NUMBER | Y | Quantidade de decimais do limite |
| 11 | TP_STATUS | VARCHAR2 | N | Status atual do ponto |
| 12 | DH_INSERT | DATE | N | Data do Insert do registro |
| 13 | CD_USUARIO_INS | VARCHAR2 | N | Usuário do Insert do registro |
| 14 | DH_UPDATE | DATE | Y | Data do último update no registro |
| 15 | CD_USUARIO_UPD | VARCHAR2 | Y | Usuário do último update no registro |
| 16 | SN_SLA_INTERNO | VARCHAR2 | N | Permite Aditivar o sla interno |
| 17 | CD_EMAIL_AUT | VARCHAR2 | Y | Define o email remetente automatico do modulo |

---

## MVCONT.ALCA_PONTO_AGRP
> Configuração dos agrupadores usados no ponto

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PONTO_AGRP | NUMBER | N |  |
| 2 | CD_PONTO | VARCHAR2 | N | Código do ponto |
| 3 | CD_AGRUPADOR | VARCHAR2 | N | Código do agrupador |
| 4 | DS_AGRUPADOR | VARCHAR2 | N | Descrição do agrupador |
| 5 | TX_QUERY_REFERENCIA | VARCHAR2 | Y | Validador do conteúdo digitado para o agrupador |
| 6 | TP_DADO | VARCHAR2 | N | Tipo de dado |
| 7 | SN_NULO | VARCHAR2 | N | Permite nulo no campo |
| 8 | NR_ORDEM | NUMBER | N | Ordem de digitação do agrupador |

---

## MVCONT.ALCA_PONTO_RESP
> Respostas fixas do ponto

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PONTO | VARCHAR2 | N | Código do ponto |
| 2 | CD_RESPOSTA | VARCHAR2 | N | Código da resposta |
| 3 | DS_RESPOSTA | VARCHAR2 | N | Resposta serve para Reprovação |
| 4 | SN_APROVACAO | VARCHAR2 | N |  |
| 5 | SN_REPROVACAO | VARCHAR2 | N |  |

---

## MVCONT.ALCA_PONTO_STAT
> Ponto de Work-Flow para Autorização

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PONTO_STAT | NUMBER | N |  |
| 2 | CD_PONTO | VARCHAR2 | N | Código do Ponto |
| 3 | TP_STATUS | VARCHAR2 | N | Status do Ponto |
| 4 | DH_STATUS | DATE | N | Data do Insert do registro |
| 5 | CD_USUARIO | VARCHAR2 | N | Usuário do Insert do registro |

---

## MVCONT.ALCA_RUBRICA
> Rubricas para Aprovação

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_RUBRICA | NUMBER | N | Código d |
| 2 | CD_DEMANDA | NUMBER | N | Código da demanda |
| 3 | CD_PERMISSAO | NUMBER | N | Código do usuário aprovador |
| 4 | NR_NIVEL | NUMBER | N | Número do nível da aprovação |
| 5 | SN_OBRIGATORIO | VARCHAR2 | N | Aprovador é obrigatória |
| 6 | TP_STATUS | VARCHAR2 | N | Status da aprovação |
| 7 | DH_INSERT | DATE | N |  |
| 8 | DH_VISUALIZADO | DATE | Y | Data do momento da visualização |
| 9 | DH_RUBRICA | DATE | Y | Data do momento da rubrica |
| 10 | DH_ENTREGUE | DATE | Y |  |
| 11 | TP_RUBRICA | VARCHAR2 | Y | Tipo da rubrica |
| 12 | TX_MOTIVO | VARCHAR2 | Y | Texto do motivo da reprovação |
| 13 | CD_RESPOSTA | VARCHAR2 | Y | Resposta Fixa da Rubrica |
| 14 | TX_RESPOSTA | VARCHAR2 | Y | Texto da resposta da Rubrica |
| 15 | NR_DIAS_SLA_RUBRICA | NUMBER | N | Número dias SLA de rubrica |

---

## MVCONT.BASE_ORCA
> Base de orçamento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_BASE_ORCA | NUMBER | N | Código do base |
| 2 | DS_BASE_ORCA | VARCHAR2 | N | Descrição da etapa do projeto. |
| 3 | TX_BASE_ORCA | VARCHAR2 | Y | Texto da base orçamentária |
| 4 | CD_PROJETO | NUMBER | Y | FK - Código do projeto |
| 5 | CD_PLANO | VARCHAR2 | N | Código do plano orçamentário |
| 6 | DT_VIGENCIA_INI | DATE | Y | Vigência inicial do orçamento. |
| 7 | DT_VIGENCIA_FIM | DATE | Y | Vigência final do orçamento. |
| 8 | DT_ABERTURA | DATE | N | Data de abertura do orçamento |
| 9 | DT_FECHAMENTO | DATE | Y | Data de fechamento do orçamento |
| 10 | DT_APROVACAO | DATE | Y | Data de aprovação do orçamento |
| 11 | DT_PUBLICADO | DATE | Y | Data de publicação do orçamento |
| 12 | CD_USUARIO_ABER | VARCHAR2 | N | Usuário de abertura do orçamento |
| 13 | CD_USUARIO_FECH | VARCHAR2 | Y | Usuário de fechamento do orçamento |
| 14 | CD_USUARIO_APRV | VARCHAR2 | Y | Usuário de aprovação do orçamento |
| 15 | CD_USUARIO_PUBL | VARCHAR2 | Y | Usuário de publicação do orçamento |
| 16 | TP_SITUACAO | VARCHAR2 | Y | Situação do orçamento (A=Ativo, C=Cancelado) |
| 17 | SN_OFICIAL | VARCHAR2 | N | Indicador de orçamento oficial. |
| 18 | CD_MODELO_CONTABIL | VARCHAR2 | Y |  |
| 19 | DT_PROJECAO | DATE | Y | Data de inicio da projeção do realizado a partir do orçado do ano passado. |

---

## MVCONT.BASE_ORCA_CRONOGRAMA
> Base de orçamento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_BASE_ORCA_CRONOGRAMA | NUMBER | N | Código do cronograma da base orçamentária |
| 2 | CD_BASE_ORCA | NUMBER | N | Código da base |
| 3 | TP_ETAPA | VARCHAR2 | N | Tipo da etapa |
| 4 | DT_PREVISTA_INI | DATE | N | Data prevista para início da etapa |
| 5 | DT_PREVISTA_FIM | DATE | N | Data prevista para final da etapa |
| 6 | DT_REALIZADA_INI | DATE | Y | Data real do início da etapa |
| 7 | DT_REALIZADA_FIM | DATE | Y | Data real do final da etapa |
| 8 | TP_STATUS | VARCHAR2 | N | Status da fase |

---

## MVCONT.BASE_ORCA_EMP
> Empresas por orçamento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_BASE_ORCA | NUMBER | N | Código da base orçamentária. |
| 2 | CD_MULTI_EMPRESA | NUMBER | N | Código da empresa do orçamento. |

---

## MVCONT.BASE_ORCA_ITEM
> Base de orçamento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_BASE_ORCA_ITEM | NUMBER | N | Código do item da base orçamentária |
| 2 | CD_BASE_ORCA | NUMBER | N | Código do base orçamentária |
| 3 | CD_MULTI_EMPRESA | NUMBER | N | Código da empresa |
| 4 | CD_ORCA_CONTA | NUMBER | N | Código da conta de orçamento |
| 5 | CD_SETOR | NUMBER | N | Código do setor orçado |
| 6 | DT_ANO_MES | DATE | Y | Mês e ano orçado |
| 7 | VL_ORCADO | NUMBER | N | Valor orçado |
| 8 | CD_FORNECEDOR | NUMBER | Y | Código do fornecedor. |
| 9 | CD_CONTRATO | NUMBER | Y | Código do Contrato. |
| 10 | CD_PROJETO | NUMBER | Y | Código do projeto. |
| 11 | SN_INVESTIMENTO | VARCHAR2 | N | Indicador de item de investimento. S-Sim, N-Não |
| 12 | VL_ORCADO_RATEIO | NUMBER | Y | Valor orçado rateio. |

---

## MVCONT.BASE_ORCA_ITEM_ESTATISTICO
> Tabela de inclusão do item estatistico na base orçamentaria.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_BASE_ORCA_ITEM_ESTATISTICO | NUMBER | N | Sequencial do item. |
| 2 | CD_BASE_ORCA | NUMBER | N | Codigo da base orçamentaria. |
| 3 | CD_INDICADOR_ORCAMENTARIO | NUMBER | N | Codigo do indicador. |
| 4 | CD_SETOR | NUMBER | N | Codigo do setor. |
| 5 | DT_ANO_MES | DATE | Y | Mês e ano do valor orçado. |
| 6 | VL_ORCADO | NUMBER | N | Valor orçado. |
| 7 | VL_REALIZADO | NUMBER | N | Valor realizado. |

---

## MVCONT.BASE_ORCA_ITEM_IND_REALI
> Tabela de inclusão do item estatistico na base orçamentaria.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_BASE_ORCA_ITEM_IND_REALI | NUMBER | N | Sequencial do item. |
| 2 | CD_INDICADOR_ORCAMENTARIO | NUMBER | N | Codigo do indicador. |
| 3 | CD_SETOR | NUMBER | N | Codigo do setor. |
| 4 | DT_ANO_MES | DATE | Y | Mês e ano do valor orçado. |
| 5 | VL_REALIZADO | NUMBER | N | Valor realizado. |

---

## MVCONT.BASE_ORCA_MOVIMENTO
> Movimentos de orçamento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_BASE_ORCA_MOVIMENTO | NUMBER | N | Código do movimento |
| 2 | CD_BASE_ORCA_ITEM | NUMBER | N | Código do item da base |
| 3 | CD_MOTIVO | NUMBER | Y | Código do movimento |
| 4 | DT_COMPETENCIA | DATE | N | Data de competência do movimento. |
| 5 | TP_MOVIMENTO | VARCHAR2 | N | Tipo do movimento  (T - Transferência, A - Aporte, N - Nota explicativa) |
| 6 | TP_OPERACAO | VARCHAR2 | N | Tipo da operação  (E - Entrada, S - Saída, N - Neutro) |
| 7 | CD_ORCA_MOVIMENTA_TRANSF | NUMBER | Y | Código do movimento que gerou a entrada por transferência |
| 8 | VL_MOVIMENTO | NUMBER | Y | Valor do movimento |
| 9 | TX_MOVIMENTO | VARCHAR2 | Y | Texto do movimento |
| 10 | CD_USUARIO | VARCHAR2 | N | Código do usuário |
| 11 | DT_MOVIMENTO | DATE | N | Data do movimento |
| 12 | VL_MOVIMENTO_RATEIO | NUMBER | Y | Valor rateio. |

---

## MVCONT.BASE_ORCA_ORCA
> Orçamentos por orçamento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_BASE_ORCA_PAI | NUMBER | N | Código do orçamento Pai. |
| 2 | CD_BASE_ORCA | NUMBER | N | Código dos orçamentos que pertencem ao orçamento Pai. |

---

## MVCONT.BASE_ORCA_PARECER
> Parecer de orçamento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_BASE_ORCA_PARECER | NUMBER | N | Código do parecer de orçamento |
| 2 | CD_BASE_ORCA | NUMBER | N | Código da base |
| 3 | CD_BASE_ORCA_ITEM | NUMBER | Y | Código do item da base |
| 4 | TX_PARECER | VARCHAR2 | N | Texto do parecer |
| 5 | CD_USUARIO | VARCHAR2 | N | Usuário do parecer |
| 6 | DT_PARECER | DATE | N | Data do parecer |

---

## MVCONT.BASE_ORCA_REALIZADO
> Base de orçamento itens do realizado

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_BASE_ORCA_REALIZADO | NUMBER | N | Sequencial do realizado. |
| 2 | CD_MULTI_EMPRESA | NUMBER | N | Código da empresa |
| 3 | CD_PROJETO | NUMBER | Y | Código do projeto |
| 4 | CD_ORCA_CONTA | NUMBER | N | Código da conta de orçamento |
| 5 | CD_SETOR | NUMBER | N | Código do setor / centro de custo |
| 6 | DT_COMPETENCIA | DATE | N | Data de competência do valor realizado. |
| 7 | VL_REALIZADO | NUMBER | N | Valor realizado. |
| 8 | CD_FORNECEDOR | NUMBER | Y | Código do fornecedor. |
| 9 | CD_CONTRATO | NUMBER | Y | Código do Contrato. |
| 10 | VL_COMPROMETIDO | NUMBER | N | Valor comprometido. |
| 11 | VL_REALIZADO_RATEIO | NUMBER | Y | Valor realizado rateio. |

---

## MVCONT.CONFIG_GCTO
> Tabela de Configuração do GCTO (*M*)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MULTI_EMPRESA | NUMBER | N | Código da empresa relacionada |
| 2 | SN_ATIVACAO_ALCA | VARCHAR2 | N | Ativar alçada |
| 3 | SN_ATIVACAO_AUDI | VARCHAR2 | N | Ativar auditoria |
| 4 | SN_EXIBE_COL_AJUDA | VARCHAR2 | N | Exibe a coluna de ajuda para o usuário |
| 5 | SN_EXIBE_NOTA | VARCHAR2 | N | Exibe a nota na coluna de ajuda para o usuário |
| 6 | SN_INTEGRACAO_FATUR | VARCHAR2 | N | Integração com Faturamento |
| 7 | SN_INTEGRACAO_SUPRI | VARCHAR2 | N | Integração com Faturamento |
| 8 | SN_INTEGRACAO_FINAN | VARCHAR2 | N | Integração com Faturamento |
| 9 | SN_ATIVACAO_MARGEM | VARCHAR2 | N | Ativar margem de aceite sem autorização de alçada |
| 10 | SN_INTEGRACAO_REPASSE | VARCHAR2 | N | Integração com o repasse. |
| 11 | CD_TIP_DOC | NUMBER | Y | Código do tipo de documento padrão da configuração |
| 12 | CD_ESTOQUE | NUMBER | Y | Código do estoque padrão da configuração |
| 13 | CD_EMAIL_AUT | VARCHAR2 | Y | Define o email remetente automatico do modulo |
| 14 | SN_INTEGRACAO_ORCA | VARCHAR2 | N | Define a integracao com o modulo de orcamento. O default é não |
| 15 | CD_PROCESSO_CONREC | NUMBER | Y | Código do processo a ser integrado no título a receber de contratos |
| 16 | CD_PROCESSO_CONPAG | NUMBER | Y | Código do processo a ser integrado no título a pagar de contratos |
| 17 | CD_MOT_CANCEL | NUMBER | Y | Código do motivo de cancelamento padrão |

---

## MVCONT.GCTO_APONTA_PROD
> Apresentar todas as demandas que tenha pelo menos uma rubrica para o usuário logado

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_APONTA_PROD | NUMBER | N | código |
| 2 | CD_LOTE | NUMBER | N | código do lote |
| 3 | CD_CONTRATO | NUMBER | N | código do contrato |
| 4 | CD_CONTRATO_ITEM | NUMBER | N | Itens do contrato |
| 5 | CD_FORNECEDOR | NUMBER | N | código do fornecedor |
| 6 | CD_SERVICO | NUMBER | Y | código do serviço |
| 7 | CD_PRODUTO | NUMBER | Y | código do produto |
| 8 | CD_UNID_MEDIDA | VARCHAR2 | N | código unidade de medida |
| 9 | QT_APONTADA | NUMBER | Y | Quantidade apontada |
| 10 | VL_UNITARIO | NUMBER | Y | Valor unitário |
| 11 | VL_TOTAL | NUMBER | Y | Valor total |
| 12 | NM_PRESTADOR | VARCHAR2 | Y | Nome do prestador |
| 13 | CD_ORDEM | NUMBER | Y | código da ordem |
| 14 | CD_USUARIO | VARCHAR2 | N | código do usuário insert |
| 15 | DH_INSERT | VARCHAR2 | N | Data do insert |
| 16 | CD_CONTRATO_PARC | NUMBER | Y |  |

---

## MVCONT.GCTO_ARQUIVO
> BANCO DE ARQUIVOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GCTO_ARQUIVO | NUMBER | N | Código do arquivo |
| 2 | NM_ARQUIVO | VARCHAR2 | N | Nome do arquivo |
| 3 | DS_ORIGEM | VARCHAR2 | Y | Descrição da Origem |
| 4 | TP_ARQUIVO | VARCHAR2 | Y | Tipo do arquivo |
| 5 | SN_PRIVADO | VARCHAR2 | N | Se arquivo privado |
| 6 | DS_CAMINHO | VARCHAR2 | Y | Caminho do arquivo |
| 7 | DH_INCLUSAO | DATE | N | Data/hora de inclusão |
| 8 | CD_USUARIO_INS | VARCHAR2 | N | Código do usuário |

---

## MVCONT.GCTO_AUDITORIA
> Tabela de Item de Auditoria do sistema de contratos.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AUDITORIA | NUMBER | N | CODIGO SEQUENCIAL |
| 2 | NM_USUARIO | VARCHAR2 | Y | NOME DO USUARIO |
| 3 | DS_MACHINE | VARCHAR2 | Y | DESCRICAO DA MAQUINA |
| 4 | NM_OSUSER | VARCHAR2 | Y | NOME DO USER DA MAQUINA |
| 5 | DS_TERMINAL | VARCHAR2 | Y | DESCRICAO DO TERMINAL |
| 6 | DH_GERACAO | DATE | Y | DATA GERACAO DO LOG |
| 7 | DH_INICIO | DATE | Y | DATA HORA INICIO |
| 8 | DH_FINAL | DATE | Y | DATA HORA FINAL |

---

## MVCONT.GCTO_AUDITORIA_ITEM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AUDITORIA | NUMBER | N | CODIGO SEQUENCIAL DO LOG |
| 2 | CD_AUDITORIA_ITEM | NUMBER | N | CODIGO SEQUENCIAL DO ITEM |
| 3 | CD_MODULO | VARCHAR2 | N | CÓDIGO DO MÓDULO RASTREADO |
| 4 | CD_TABELA | VARCHAR2 | N | CÓDIGO DA TABELA RASTREADA |
| 5 | CD_CHAVE | VARCHAR2 | N | CÓDIGO DO REGISTRO DA TABELA RASTREADA |
| 6 | TP_MENSAGEM | VARCHAR2 | N | TIPO DA MENSAGEM |
| 7 | DS_MENSAGEM | VARCHAR2 | N | MENSAGEM DE LOG |
| 8 | DT_MENSAGEM | DATE | N | DATA E HORA MENSAGEM |

---

## MVCONT.GCTO_CONTRATO
> contratos padrões de contrato (*M*)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONTRATO | NUMBER | N | Código do contrato |
| 2 | CD_MODELO | NUMBER | Y | Código do modelo de contrato |
| 3 | NR_CONTRATO | VARCHAR2 | Y | Número do contrato |
| 4 | DS_CONTRATO | VARCHAR2 | N | Descrição do contrato |
| 5 | TP_FINANCEIRO | VARCHAR2 | N | Tipo financeiro do contrato |
| 6 | DT_EMISSAO | DATE | Y | Data da emissão do contrato |
| 7 | DT_VIGENCIA_INI | DATE | Y | Data inicial da vigência do contrato |
| 8 | DT_VIGENCIA_FIM | DATE | Y | Data final da vigência do contrato |
| 9 | CD_MOEDA | VARCHAR2 | Y | Código da moeda do contrato |
| 10 | VL_CONTRATO | NUMBER | Y | Valor do contrato |
| 11 | QT_PARCELA | NUMBER | Y | Quantidade de parcelas do contrato |
| 12 | CD_CONDICAO_PAGTO | NUMBER | Y | Código da condição de pagamento do contrato |
| 13 | CD_CONTA_FINANCEIRA | NUMBER | Y | Código da conta financeira do contrato |
| 14 | CD_INDICADOR | VARCHAR2 | Y | Código do indicador de ajuste do contrato |
| 15 | SN_ITENS | VARCHAR2 | N | Aparecer a aba itens no contrato |
| 16 | CD_STATUS | VARCHAR2 | N | Status atual do contrato |
| 17 | DH_INSERT | DATE | N | Data do Insert |
| 18 | CD_USUARIO_INS | VARCHAR2 | N | Usuário do insert |
| 19 | DH_UPDATE | DATE | Y | Data e hora do último update do registro |
| 20 | CD_USUARIO_UPD | VARCHAR2 | Y | Usuário do último update do registro |
| 21 | CD_TIPO_DOCUMENTO | NUMBER | Y | Tipo de documento do contrato |
| 22 | CD_SETOR | NUMBER | Y | Código do setor |
| 23 | CD_PROCESSO | NUMBER | Y | Código do processo |
| 24 | TP_ENVIO_FINANCEIRO | VARCHAR2 | Y | Tipo do envio para o financeiro |
| 25 | DT_REAJUSTE | DATE | Y | Data de reajuste do contrato |
| 26 | SN_PREENCHER_VIGE_FINAL | VARCHAR2 | Y | Preenche a vigência final do contrato |
| 27 | QT_DIAS_REAJUSTE | NUMBER | Y | Quantidade de dias para reajuste |
| 28 | SN_PERMITE_QUARTERIZAR | VARCHAR2 | N |  |
| 29 | CD_FORNECEDOR | NUMBER | Y |  |
| 30 | CD_REDUZIDO | NUMBER | Y |  |
| 31 | CD_MULTI_EMPRESA | NUMBER | Y |  |
| 32 | CD_TIPO | VARCHAR2 | Y |  |
| 33 | SN_FNFI | VARCHAR2 | N | Se marcado, indica que será aplicado as configurações do financeiro |
| 34 | DH_FNFI_GERACAO | DATE | Y | Data e hora da geração que foi feita pela tela do financeiro o_gcto_fnfi |
| 35 | SN_VL_ESTIMADO | VARCHAR2 | N | Se marcado, indica que o contrato tera valor estimado. |
| 36 | TP_DATA_VIGENCIA_FFCV | VARCHAR2 | Y | DATA PARA VERIFICAR VIGÊNCIA DO CONTRATO. L = LANÇAMENTO, C = INICIO DA CONTA, A = DATA DO ATENDI... |
| 37 | SN_FATURAMENTO | VARCHAR2 | N | Se marcado, indica que será aplicado as configurações do faturamento. |
| 38 | SN_REPASSE | VARCHAR2 | N | Se marcado, indica que será aplicado as configurações do repasse. |
| 39 | DS_MENS_ASSUNTO | VARCHAR2 | Y | Título da mensagem automática |
| 40 | TP_AREA | VARCHAR2 | N | Tipo da área |
| 41 | DS_MENS_MENSAGEM | VARCHAR2 | Y | Texto da Mensagem Automática |
| 42 | QT_DIAS_ALERTA_VCTO | NUMBER | Y | Quantidade de dias para alerta de vencimento. |
| 43 | TX_CONTRATO | VARCHAR2 | Y |  |
| 44 | SN_MULTA | VARCHAR2 | N | Indicacor de multa. S-'SIM' e N-'NÃO' |
| 45 | QT_DIAS_MULTA | NUMBER | Y | Dias de carência. |
| 46 | QT_ADITIVOS | NUMBER | Y | Quantidade de Aditivação |
| 47 | SN_RENOVADO | VARCHAR2 | Y | Indicador de renovado |
| 48 | SN_GERA_FINANCEIRO | VARCHAR2 | N | Indicacor de gerar financeiro. S-'SIM' e N-'NÃO'. |
| 49 | SN_VINCULO | VARCHAR2 | N | Indicacor se gera vínculo. S-'SIM' e N-'NÃO'. |
| 50 | CD_TIPDOC_FINANCEIRO | NUMBER | Y | Tipo de documento usado no financeiro. |

---

## MVCONT.GCTO_CONTRATO_ARQU
> Arquivos digitalizados relacionados a contrato (*M*)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONTRATO_ARQU | NUMBER | N | Código do arquivo do contrato |
| 2 | CD_CONTRATO | NUMBER | N | Código do contrato |
| 3 | CD_ARQUIVO | VARCHAR2 | N | Código do arquivo digitalizado |
| 4 | DS_ARQUIVO | VARCHAR2 | N | Descrição do arquivo digitalizado |
| 5 | TP_DOCUMENTO | VARCHAR2 | N | Tipo do arquivo digitalizado |
| 6 | FI_DIGITALIZADO | BLOB | Y | Arquivo digitalizado importado |
| 7 | SN_DEFINITIVO | VARCHAR2 | N | Arquivo definitivo (S/N)? |
| 8 | DH_INSERT | DATE | N | Data e hora do registro |
| 9 | CD_USUARIO_INS | VARCHAR2 | N | Usuário do registro |
| 10 | CD_USUARIO_AUTN | VARCHAR2 | Y | Usuário autenticação |
| 11 | DT_AUTENTICACAO | DATE | Y | Data autenticação |
| 12 | SN_AUTENTICADO | VARCHAR2 | N | Indicacor se o arquivo foi autenticado. S-'SIM' e N-'NÃO' |

---

## MVCONT.GCTO_CONTRATO_EVEN
> Eventos de Contrato (*M*)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONTRATO_EVEN | NUMBER | N | Código do Evento |
| 2 | CD_CONTRATO | NUMBER | N | Código do Contrato |
| 3 | CD_EVENTO | NUMBER | N | Código do Evento |
| 4 | QT_DIAS_GATILHO | NUMBER | Y | Quantidade de dias do gatilho |
| 5 | TX_AVISO | VARCHAR2 | Y | Aviso do evento |
| 6 | CD_STATUS_PARA | VARCHAR2 | Y | Status da evolução |
| 7 | SN_ENVIAR_SMS | VARCHAR2 | N | Enviar sms (S/N)? |
| 8 | SN_ENVIAR_EMAIL | VARCHAR2 | N | Enviar email (S/N)? |
| 9 | SN_DIG_PERIODO | VARCHAR2 | N | Digitar Período (S/N)? |
| 10 | SN_DIG_NOME | VARCHAR2 | N | Digitar Nome (S/N)? |
| 11 | SN_DIG_DURACAO | VARCHAR2 | N | Digitar Duração (S/N)? |
| 12 | SN_DIG_PRODUCAO | VARCHAR2 | N | Digitar Produção (S/N)? |
| 13 | SN_DIG_VALOR | VARCHAR2 | N | Digitar Valor (S/N)? |
| 14 | DH_INSERT | DATE | N | Data e hora do insert do registro |
| 15 | CD_USUARIO_INS | VARCHAR2 | N | Usuário do insert do registro |
| 16 | DH_UPDATE | DATE | Y | Data e hora do update do registro |
| 17 | CD_USUARIO_UPD | VARCHAR2 | Y | Usuário do update do registro |

---

## MVCONT.GCTO_CONTRATO_FORM
> usuarios de Contrato (*M*)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONTRATO | NUMBER | N | Código do contrato |
| 2 | CD_FORUM | NUMBER | N | Código do fórum |
| 3 | DH_INICIO | DATE | N | Data do início do contrato no forum |
| 4 | DH_FINAL | DATE | Y | Data do final do contrato no forum |
| 5 | DH_INSERT | DATE | N | Data e hora do insert do registro |
| 6 | CD_USUARIO_INS | VARCHAR2 | N | Usuário do insert do registro |

---

## MVCONT.GCTO_CONTRATO_ITEM
> Itens de contrato (*M*)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONTRATO_ITEM | NUMBER | N | Identificação do item de contrato |
| 2 | CD_CONTRATO | NUMBER | N | Código do contrato |
| 3 | QT_ITENS | NUMBER | Y | Quantidade do item |
| 4 | VL_UNITARIO | NUMBER | Y | Valor unitário do item |
| 5 | CD_CONDICAO_PAGTO | NUMBER | Y | Condição de pagamento |
| 6 | CD_UNID_MEDIDA | NUMBER | Y |  |
| 7 | CD_INDICADOR | VARCHAR2 | Y |  |
| 8 | CD_PROCESSO | NUMBER | Y | Código do processo |
| 9 | CD_MOEDA | VARCHAR2 | Y |  |
| 10 | QT_DIAS_REAJUSTE | NUMBER | Y |  |
| 11 | DT_REAJUSTE | DATE | Y |  |
| 12 | DT_VIGENCIA_INI | DATE | Y |  |
| 13 | DT_VIGENCIA_FIM | DATE | Y |  |
| 14 | SN_APONTAR | VARCHAR2 | N | Item vai ser renovado |
| 15 | SN_RENOVAR | VARCHAR2 | N | Item vai ser renovado |
| 16 | DH_INSERT | DATE | N | Data e hora do insert do registro |
| 17 | CD_USUARIO_INS | VARCHAR2 | N | Usuário do insert do registro |
| 18 | SN_PERMITE_EXCEDENTE | VARCHAR2 | N |  |
| 19 | SN_GERA_PEDIDO | VARCHAR2 | N |  |
| 20 | CD_UNID_APONTAMENTO | NUMBER | Y | Código da unidade de apontamento. |
| 21 | CD_REDUZIDO | NUMBER | Y |  |
| 22 | CD_PROJETO | NUMBER | Y | Código do projeto |
| 23 | CD_PRODUTO | NUMBER | Y |  |
| 24 | CD_SERVICO | NUMBER | Y |  |
| 25 | DH_OC_GERACAO | DATE | Y | Data e hora da geração que foi feita pela tela de geracao OS |
| 26 | VL_MARGEM_EXCED | NUMBER | Y | percentagem excedente do item. |
| 27 | CD_PROJETO_ETAPA | NUMBER | Y | Etapa do projeto |
| 28 | CD_ESPECIE | NUMBER | Y |  |
| 29 | CD_CLASSE | NUMBER | Y |  |
| 30 | CD_SUB_CLA | NUMBER | Y |  |
| 31 | TP_INTEGRACAO | VARCHAR2 | N | Tipo de integração com sistemas |
| 32 | CD_REGRA_RATEIO | NUMBER | Y | Código da regra de rateio no item do contrato. |
| 33 | CD_ESTOQUE | NUMBER | Y | Código do estoque no qual o item irá na Ordem de Compras. |
| 34 | NR_DIA_VENCIMENTO | NUMBER | Y | Dia do vencimento do Título a Pagar/Receber. |
| 35 | CD_FREQ_FATURAMENTO | VARCHAR2 | N | Código da freqüência de faturamento(Unica/Mensal). |
| 36 | CD_UNI_PRO | NUMBER | Y | CÓDIGO DE UNIDADE DE PRODUTO |
| 37 | TP_PERIODICIDADE | VARCHAR2 | N | Adicionar a informação do item de contrato se a periodicidade da geração do financeiro, será "Úni... |
| 38 | NR_DIA | NUMBER | N | Dia para a base de calculo do primeiro pagamento |
| 39 | VL_TOTAL_PERI | NUMBER | Y | Valor total do item do contrato com base na periodicidade |

---

## MVCONT.GCTO_CONTRATO_NOTA
> Apontamentos de Contrato (*M*)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONTRATO_NOTA | NUMBER | N | Código do registro |
| 2 | CD_CONTRATO | NUMBER | N | Código do contrato |
| 3 | CD_PESSOA | NUMBER | N | Código da pessoa |
| 4 | NR_NOTA | VARCHAR2 | N | Número da nota |
| 5 | NR_SERIE | VARCHAR2 | Y | Número da série |
| 6 | CD_REMESSA | NUMBER | Y | Código da remessa |
| 7 | CD_NOTA_ENTRADA | NUMBER | Y | Código da nota de entrada |
| 8 | CD_ORDEM | NUMBER | Y | Código da ordem de compra |
| 9 | CD_NOTA_SAIDA | NUMBER | Y | Código da nota de saída |
| 10 | CD_MOEDA | VARCHAR2 | N | Código da moeda |
| 11 | VL_NOTA | NUMBER | Y | Valor da nota |
| 12 | DH_INSERT | DATE | N | Data e hora do insert do registro |
| 13 | CD_USUARIO_INS | VARCHAR2 | N | Usuário do insert do registro |
| 14 | DH_UPDATE | DATE | Y | Data e hora do último update do registro |
| 15 | CD_USUARIO_UPD | VARCHAR2 | Y | Usuário do último update do registro |
| 16 | CD_MULTI_EMPRESA | NUMBER | N | Código da empresa |

---

## MVCONT.GCTO_CONTRATO_PARC
> Apontamentos de Contrato (*M*)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONTRATO | NUMBER | N | Código do contrato |
| 2 | NR_PARCELA | NUMBER | N | Número da parcela |
| 3 | DT_VENCIMENTO | DATE | N | Data do vencimento da parcela |
| 4 | VL_PARCELA | NUMBER | N | Valor da parcela |
| 5 | VL_APONTADO | NUMBER | Y | Valor apontado |
| 6 | DT_FINANCEIRO | DATE | Y | Data prevista para o lançamento financeiro |
| 7 | CD_PARCELA | NUMBER | Y | Código da parcela no financeiro |
| 8 | DH_INSERT | DATE | N | Data e hora do insert do registro |
| 9 | CD_USUARIO_INS | VARCHAR2 | N | Usuário do insert do registro |
| 10 | DH_UPDATE | DATE | Y | Data e hora do último update do registro |
| 11 | CD_USUARIO_UPD | VARCHAR2 | Y | Usuário do último update do registro |
| 12 | CD_CONTRATO_PARC | NUMBER | N |  |
| 13 | CD_CONTRATO_ITEM | NUMBER | N |  |
| 14 | QT_PARCELA | NUMBER | N |  |
| 15 | DT_PREVISTO_FINA | DATE | Y |  |
| 16 | CD_PROCESSO | NUMBER | Y | Código do processo empresa contrato |

---

## MVCONT.GCTO_CONTRATO_PERI
> Períodos de Contrato

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONTRATO_PERI | NUMBER | N | Código da tabela |
| 2 | CD_CONTRATO | NUMBER | N | Código do contrato |
| 3 | CD_CONTRATO_ITEM | NUMBER | Y | Código do item de contrato |
| 4 | CD_CONDICAO_PAGTO | NUMBER | Y | Condição de pagamento |
| 5 | CD_INDICADOR | VARCHAR2 | Y | Indicador financeiro |
| 6 | CD_PROCESSO | NUMBER | Y | Processo |
| 7 | CD_MOEDA | VARCHAR2 | Y | Moeda |
| 8 | CD_REDUZIDO | NUMBER | Y | Reduzido |
| 9 | NR_PERIODO | NUMBER | N | Número do Período de Vigência |
| 10 | QT_ITENS | NUMBER | N | Quantidade de itens |
| 11 | VL_UNITARIO | NUMBER | N | Valor Unitário |
| 12 | QT_MESES_PERIODO | NUMBER | N | Quantidade de meses do Período |
| 13 | QT_DIAS_ALERTA | NUMBER | N | Quantidade de dias para alerta de vigência |
| 14 | DT_VIGENCIA_INI | DATE | N | Data de Início da Vigência |
| 15 | DT_VIGENCIA_FIN | DATE | N | Data de Fim da Vigência |
| 16 | TP_STATUS | VARCHAR2 | N |  |
| 17 | DH_INSERT | DATE | N | Data do Insert |
| 18 | CD_USUARIO_INS | VARCHAR2 | N | Usuário do Insert |

---

## MVCONT.GCTO_CONTRATO_PROJ
> Tabela de associação do projeto ao contrato.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONTRATO_PROJ | NUMBER | N | Sequencial da tabela. |
| 2 | CD_CONTRATO | NUMBER | N | Código do contrato. |
| 3 | CD_PROJETO | NUMBER | N | Código do projeto. |
| 4 | VL_RATEIO | NUMBER | Y | Valor do rateio em percentual. |

---

## MVCONT.GCTO_CONTRATO_RATE
> Rateios do contrato (*M*)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONTRATO_RATE | NUMBER | N | Código do rateio de contrato |
| 2 | CD_CONTRATO | NUMBER | N | Código do contrato |
| 3 | CD_PROJETO | NUMBER | Y | Código do projeto |
| 4 | VL_RATEIO | NUMBER | N | Valor do rateio |
| 5 | DH_INSERT | DATE | N | Data e hora do insert do registro |
| 6 | CD_USUARIO_INS | VARCHAR2 | N | Usuário do insert do registro |
| 7 | DH_UPDATE | DATE | Y | Data e hora do último update do registro |
| 8 | CD_USUARIO_UPD | VARCHAR2 | Y | Usuário do último update do registro |
| 9 | CD_SETOR | NUMBER | Y | Código do centro de resultado |
| 10 | CD_REDUZIDO | NUMBER | Y | Código da conta contábil |
| 11 | CD_ITEM_RES | NUMBER | Y | Código referente a tabela item_res |
| 12 | CD_REGRA_RATEIO | NUMBER | Y | Código da regra de rateio. |
| 13 | CD_CONTRATO_ITEM | NUMBER | Y | Código do item do contrato. |

---

## MVCONT.GCTO_CONTRATO_SLA
> Regra de SLA do contrato (*M*)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONTRATO | NUMBER | N | Código do contrato |
| 2 | CD_SLAREGRA | NUMBER | N | Código da regra de SLA |
| 3 | QT_DURACAO | NUMBER | Y | Duração |
| 4 | QT_PRODUCAO | NUMBER | Y | Produção |
| 5 | DH_INSERT | DATE | N | Data e hora do insert do registro |
| 6 | CD_USUARIO_INS | VARCHAR2 | N | Usuário do insert do registro |
| 7 | DH_UPDATE | DATE | Y | Data e hora do último update do registro |
| 8 | CD_USUARIO_UPD | VARCHAR2 | Y | Usuário do último update do registro |

---

## MVCONT.GCTO_CONTRATO_STAT
> eventos de Contrato (*M*)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONTRATO | NUMBER | N | Código do contrato |
| 2 | DH_STATUS | DATE | N | Data e hora do início do status |
| 3 | CD_STATUS | VARCHAR2 | N | Código do status |
| 4 | CD_USUARIO | VARCHAR2 | N | Código do usuário do status |

---

## MVCONT.GCTO_CONTRATO_SUPR
> Itens de contrato (*M*)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONTRATO_SUPR | NUMBER | N | Identificação do registro |
| 2 | CD_CONTRATO | NUMBER | N | Código do contrato |
| 3 | CD_ESPECIE | NUMBER | N | Código da espécie |
| 4 | CD_CLASSE | NUMBER | Y | Código da classe |
| 5 | CD_SUB_CLA | NUMBER | Y | Código da sub-classe |
| 6 | DH_INSERT | DATE | N | Data de insert do registro |
| 7 | CD_USUARIO_INS | VARCHAR2 | N | Usuário de insert do registro |
| 8 | DH_UPDATE | DATE | Y | Data do update do registro |
| 9 | CD_USUARIO_UPD | VARCHAR2 | Y | Usuário do update do registro |

---

## MVCONT.GCTO_CONTRATO_TEXT
> Apontamentos de Contrato (*M*)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | SQ_CONTRATO_TEXT | NUMBER | N | Sequencia de texto do contrato |
| 2 | CD_CONTRATO | NUMBER | N | Código do Contrato |
| 3 | CD_TEXTO | NUMBER | Y | Código do texto |
| 4 | CD_ORDEM | NUMBER | N | Ordem do texto no contrato |
| 5 | DS_TOPICO | VARCHAR2 | N |  |
| 6 | TX_TEXTO | VARCHAR2 | N |  |
| 7 | DH_INSERT | DATE | N | Data e hora do insert do registro |
| 8 | CD_USUARIO_INS | VARCHAR2 | N | Usuário do insert do registro |
| 9 | DH_UPDATE | DATE | Y | Data e hora do último update do registro |
| 10 | CD_USUARIO_UPD | VARCHAR2 | Y | Usuário do último update do registro |

---

## MVCONT.GCTO_CONTRATO_UNEG
> Tabela de Unidades de Negócio do Contrato (*M*)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONTRATO | NUMBER | N | Contrato da Unidade de Negócio |
| 2 | DS_PARTICIPACAO | VARCHAR2 | Y | Descrição da participação da unidade de negócio no contrato |
| 3 | PE_PARTICIPACAO | NUMBER | N | Percentual de participação da unidade de negócio no contrato |
| 4 | DH_INSERT | DATE | N | Data e hora do insert do registro |
| 5 | CD_USUARIO_INS | VARCHAR2 | N | Usuário do insert do registro |
| 6 | CD_UNIDADE_NEGOCIO | NUMBER | N | Contrato do contrato |

---

## MVCONT.GCTO_CONTRATO_USUA
> Tabela de usuários relacionados ao contrato (*M*)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONTRATO | NUMBER | N | Código do Contrato |
| 2 | CD_USUARIO | VARCHAR2 | N | Usuário relacionado ao contrato |
| 3 | DS_VINCULO | VARCHAR2 | Y | Descrição do vínculo do usuário ao contrato |
| 4 | DH_VIGENCIA_INI | DATE | N | Data e hora de início da vigência do usuário para o contrato |
| 5 | DH_VIGENCIA_FIM | DATE | Y | Data e hora de final da vigência do usuário para o contrato |
| 6 | SN_APROVADOR | VARCHAR2 | N | Identifica se usuário é aprovador (Sim/Não) |
| 7 | CD_EMAIL | VARCHAR2 | Y | Email do aprovador |
| 8 | TP_ENVOLVIDO | VARCHAR2 | Y |  |
| 9 | DH_INSERT | DATE | N | Data e hora do insert do registro |
| 10 | CD_USUARIO_INS | VARCHAR2 | N | Usuário do insert do registro |
| 11 | QT_DIAS_RESPOSTA | NUMBER | N | Quantidade de dias para resposta |

---

## MVCONT.GCTO_CONTRATO_VINC
> Contratos relacionados (*M*)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONTRATO_DE | NUMBER | N | Contrato de |
| 2 | CD_CONTRATO_PARA | NUMBER | N | Contrato para |
| 3 | DS_VINCULO | VARCHAR2 | Y | Descrição do vínculo |
| 4 | DH_INICIO | DATE | N | Data inicio da relação |
| 5 | DH_FINAL | DATE | Y | Data final da relação |
| 6 | TP_VINCULO | VARCHAR2 | N | Tipo de vínculo entre os contratos |
| 7 | DH_INSERT | DATE | N | Data e hora do insert do registro |
| 8 | CD_USUARIO_INS | VARCHAR2 | N | Usuário do insert do registro |

---

## MVCONT.GCTO_COTACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_COTACAO | NUMBER | N | Código da cotação |
| 2 | DS_COTACAO | VARCHAR2 | N | Descrição da cotação |
| 3 | DH_ABERTURA | DATE | N | Data de abertura da cotação |
| 4 | DH_FECHAMENTO | DATE | Y | Date de fechamento da cotação |
| 5 | DS_OBSERVACAO | VARCHAR2 | Y | Descrição da cotação |
| 6 | CD_USUARIO_INSERT | VARCHAR2 | N | Usuário do insert do registro |
| 7 | DH_INSERT | DATE | N | Data de criação da cotação |

---

## MVCONT.GCTO_DATA
> Tipos de datas para eventos de contrato (*M*)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DATA | VARCHAR2 | N | Código do tipo de data |
| 2 | DS_DATA | VARCHAR2 | N | Descrição do tipo de data |
| 3 | DH_INSERT | DATE | N | Data e hora do insert do registro |
| 4 | CD_USUARIO_INS | VARCHAR2 | N | Usuário do insert do registro |
| 5 | DH_UPDATE | DATE | Y | Data e hora do último update do registro |
| 6 | CD_USUARIO_UPD | VARCHAR2 | Y | Usuário do último update do registro |

---

## MVCONT.GCTO_DATA_EMPR
> datas por Empresa (*M*)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DATA | VARCHAR2 | N | Código do data |
| 2 | SN_ATIVO | VARCHAR2 | N | Disposição do data na empresa |
| 3 | CD_MULTI_EMPRESA | NUMBER | N | Código da empresa |

---

## MVCONT.GCTO_DIAS_VENCIMENTO
> Dias de vencimento usados para faturar contratos.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NR_DIA_VENCIMENTO | NUMBER | N | Dia do vencimento. |

---

## MVCONT.GCTO_EVENTO
> Eventos padrões da gestão de contratos (*M*)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EVENTO | NUMBER | N | Código do evento |
| 2 | DS_EVENTO | VARCHAR2 | N | Descrição do evento |
| 3 | CD_TIPO_EVENTO | VARCHAR2 | N | Tipo do evento |
| 4 | SN_AUTOMATICO | VARCHAR2 | N | Evento automático (S/N)? |
| 5 | CD_EVENTO_GATILHO | NUMBER | Y |  |
| 6 | QT_DIAS_GATILHO | NUMBER | Y | Quantidade de dias da data de ocorrência para disparar o evento automático |
| 7 | CD_STATUS_PARA | VARCHAR2 | Y | Status do contrato após o automático |
| 8 | TX_AVISO | VARCHAR2 | Y | Aviso que será enviado para os envolvidos |
| 9 | SN_ENVIAR_SMS | VARCHAR2 | N | Enviar SMS automaticamente (S/N)? |
| 10 | SN_ENVIAR_EMAIL | VARCHAR2 | N | Enviar email automaticamente (S/N)? |
| 11 | SN_DIG_PERIODO | VARCHAR2 | N | Digitar o período na ocorrência (S/N)? |
| 12 | SN_DIG_NOME | VARCHAR2 | N | Digitar o nome na ocorrência (S/N)? |
| 13 | SN_DIG_DURACAO | VARCHAR2 | N | Digitar a duração na ocorrência (S/N)? |
| 14 | SN_DIG_PRODUCAO | VARCHAR2 | N | Digitar a produção na ocorrência (S/N)? |
| 15 | SN_DIG_VALOR | VARCHAR2 | N | Digitar o valor na ocorrência (S/N)? |
| 16 | SN_ATIVO | VARCHAR2 | N |  |
| 17 | SN_NATIVO | VARCHAR2 | N |  |
| 18 | DH_INSERT | DATE | N | Data e hora do insert do registro |
| 19 | CD_USUARIO_INS | VARCHAR2 | N | Usuário do insert do registro |
| 20 | DH_UPDATE | DATE | Y | Data e hora do último update do registro |
| 21 | CD_USUARIO_UPD | VARCHAR2 | Y | Usuário do último update do registro |

---

## MVCONT.GCTO_FORNECEDOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FORNECEDOR | NUMBER | N | Código do fornecedor |
| 2 | DS_FORNECEDOR | VARCHAR2 | Y | Descrição do fornecedor |
| 3 | NM_CONTATO | VARCHAR2 | Y | Nome do contato |
| 4 | NR_FONE | VARCHAR2 | N | Número para contato |
| 5 | DS_EMAIL | VARCHAR2 | Y | E-Mail para contato |
| 6 | NR_CPF | VARCHAR2 | Y | CPF do forncedor |
| 7 | NR_CNPJ | VARCHAR2 | Y | CNPJ do fornecedor |
| 8 | CD_FORNECEDOR_MV | NUMBER | Y | Código do fornecedor da mv ref dbamv.fornecedor |
| 9 | DH_INSERT | DATE | N | Data e hora do insert do registro |
| 10 | CD_USUARIO_INSERT | VARCHAR2 | N | Usuário do insert do registro |

---

## MVCONT.GCTO_FORUM
> forum de contratos (*M*)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FORUM | NUMBER | N | Código do forum |
| 2 | DS_FORUM | VARCHAR2 | N | Descrição do forum |
| 3 | TX_FORUM | VARCHAR2 | Y | Texto do forum |
| 4 | DT_VIGENCIA_INI | DATE | N | Data de início da vigencia do forum |
| 5 | DT_VIGENCIA_FIM | DATE | Y | Data de fim da vigencia do forum |
| 6 | DH_INSERT | DATE | N |  |
| 7 | CD_USUARIO_INS | VARCHAR2 | N | Usuário do insert do registro |
| 8 | DH_UPDATE | DATE | Y | Data e hora do último update do registro |
| 9 | CD_USUARIO_UPD | VARCHAR2 | Y | Usuário do último update do registro |

---

## MVCONT.GCTO_FORUM_USUA
> forum_usua de contratos (*M*)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FORUM | NUMBER | N | Código do forum_usua |
| 2 | CD_USUARIO | VARCHAR2 | N | Código do contrato |
| 3 | CD_EMAIL | VARCHAR2 | Y |  |
| 4 | DH_VIGENCIA_INI | DATE | N | Data e hora do início da vigência do contrato no forum |
| 5 | CD_USUARIO_INI | VARCHAR2 | N | Usuário que inseriu o contrato no forum |
| 6 | DH_VIGENCIA_FIM | DATE | Y | Data e hora do início da vigência do contrato no forum |
| 7 | CD_USUARIO_FIM | VARCHAR2 | Y | Usuário que retirou o contrato no forum |
| 8 | QT_DIAS_RESPOSTA | NUMBER | N | Quantidade de dias da resposta |

---

## MVCONT.GCTO_GESTAO
> Tabela de gestão de contratos (*M*)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GESTAO | NUMBER | N | Código da gestão |
| 2 | CD_MULTI_EMPRESA | NUMBER | N | Código da empresa |
| 3 | CD_USUARIO | VARCHAR2 | N | Código do usuário |
| 4 | CD_TIPO | VARCHAR2 | N | Código do tipo de contrato |
| 5 | CD_MODELO | NUMBER | Y | Código do modelo de contrato |
| 6 | CD_CONTRATO | NUMBER | Y | Código do contrato |
| 7 | DT_VIGENCIA_INI | DATE | N | Data início da vigência da gestão |
| 8 | DT_VIGENCIA_FIN | DATE | Y | Data final da vigência da gestão |
| 9 | DH_INSERT | DATE | N | Data e hora do registro |
| 10 | CD_USUARIO_INS | VARCHAR2 | N | Usuário do registro |
| 11 | SN_PERMITE_INCL | VARCHAR2 | N | Permite Incluir novo contrato |
| 12 | SN_PERMITE_SUSP | VARCHAR2 | N | Permite Suspender Contrato |
| 13 | SN_PERMITE_CANC | VARCHAR2 | N | Permite cancelar contrato |
| 14 | SN_PERMITE_APON | VARCHAR2 | N | Permite Apontamento |
| 15 | SN_PERMITE_APRV | VARCHAR2 | N | Permite Aprovar Contrato |
| 16 | CD_SETOR | NUMBER | Y | Setor da gestão |
| 17 | SN_FINALIZA_DISCUSSAO | VARCHAR2 | Y | Permite Finalizar discussao Contrato |
| 18 | SN_PERMITE_ADIT | VARCHAR2 | N | Permite Aditivar Contrato |
| 19 | SN_PERMITE_RENV | VARCHAR2 | N | Permite Renovar Contrato |
| 20 | SN_PERMITE_ATIV | VARCHAR2 | N | Permite Ativacao Contrato |

---

## MVCONT.GCTO_INDICADOR
> Tipos de contratos (*M*)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INDICADOR | VARCHAR2 | N | Código externo da conta |
| 2 | DS_INDICADOR | VARCHAR2 | N | Descrição da conta |
| 3 | TP_PERIODO | VARCHAR2 | N | Tipo da conta |
| 4 | TP_VALOR | VARCHAR2 | N | Tipo da conta |
| 5 | DH_INSERT | DATE | N | Data e hora do insert do registro |
| 6 | CD_USUARIO_INS | VARCHAR2 | N | Usuário do insert do registro |
| 7 | DH_UPDATE | DATE | Y | Data e hora do último update do registro |
| 8 | CD_USUARIO_UPD | VARCHAR2 | Y | Usuário do último update do registro |

---

## MVCONT.GCTO_INDICADOR_VAL
> Tipos de contratos (*M*)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INDICADOR_VAL | NUMBER | N | Código do valor do indicador |
| 2 | CD_INDICADOR | VARCHAR2 | N | Código do indicador |
| 3 | DT_INICIO | DATE | N | Data inicial da vigência do indicador |
| 4 | DT_FINAL | DATE | N | Data final da vigência do indicador |
| 5 | VL_INDICADOR | NUMBER | N | Valor do indicador no período |
| 6 | DH_INSERT | DATE | N | Data e hora do insert do registro |
| 7 | CD_USUARIO_INS | VARCHAR2 | N | Usuário do insert do registro |
| 8 | DH_UPDATE | DATE | Y | Data e hora do último update do registro |
| 9 | CD_USUARIO_UPD | VARCHAR2 | Y | Usuário do último update do registro |

---

## MVCONT.GCTO_INTEGRA
> Tabela de integração do modulo de contrato com financeiro e suprimentos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GCTO_INTEGRA | NUMBER | N | Chave da integração |
| 2 | CD_CONTRATO | NUMBER | N | Chave estrangeira com a mvcont.gcto_contrato |
| 3 | CD_CONTRATO_ITEM | NUMBER | N | Chave estrangeira com a mvcont.gcto_contrato_item |
| 4 | DT_PARCELA | DATE | N | Data da primeira parcela que será integrada. |
| 5 | CD_CONDICAO_PAGTO | NUMBER | Y | Código da condição de pagamento da parcela. |
| 6 | TP_STATUS | VARCHAR2 | N | Status da integração.  Indicará se já foi liberado ou não, "P" = Pendente , "L" = Liberado |
| 7 | NR_DOCUMENTO | NUMBER | Y | Coluna destinada ao contas a pagar, receber, ordem de serviço ou compra. |
| 8 | CD_SETOR | NUMBER | Y | Codigo do setor |
| 9 | CD_MULTI_EMPRESA | NUMBER | Y | Codigo do CD_MULTI_EMPRESA |

---

## MVCONT.GCTO_ITCOTACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IT_COTACAO | NUMBER | N | Código do item da cotação |
| 2 | CD_COTACAO | NUMBER | N | Código da cotação |
| 3 | CD_FORNECEDOR | NUMBER | N | Código do fornecedor ref. mvcont.gcto_fornecedor |
| 4 | DH_REGISTRO | DATE | N | Data do registro da cotação |
| 5 | NR_VALOR | NUMBER | N | Valor cotado |
| 6 | DH_INSERT | DATE | N | Data de criação do item |
| 7 | CD_USUARIO_INSERT | VARCHAR2 | N | Usuário do insert do registro |
| 8 | SN_SELECIONADO | VARCHAR2 | N | Usu?rio do insert do registro |

---

## MVCONT.GCTO_ITLOTE_APONTAMENTO
> Nova tabela de itens de lote de apontamentos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOTE | NUMBER | N | Código do Lote |
| 2 | CD_IT_LOTE | NUMBER | N | Código do item de Lote |
| 3 | CD_CONTRATO | NUMBER | N | Código do contrato |
| 4 | CD_CONTRATO_ITEM | NUMBER | N | Código do item de contrato |
| 5 | DS_IT_LOTE | VARCHAR2 | Y | Descrição do Iten de Lote |
| 6 | TP_STATUS | VARCHAR2 | N | Status: AProvado, REprovado, em ABerto |
| 7 | DH_CRIACAO | DATE | N | Data e hora da criação do item |
| 8 | CD_USUARIO_CRIOU | VARCHAR2 | Y | Usuário que criou o item |
| 9 | CD_PRODUTO | NUMBER | Y | Codigo do produto |
| 10 | CD_SERVICO | NUMBER | Y | Código do serviço |
| 11 | DT_INICIO | DATE | Y | Data inicial |
| 12 | DT_FINAL | DATE | Y | Data final |
| 13 | NR_QUANTIDADE | NUMBER | Y | Quantidade |
| 14 | NR_VALOR | NUMBER | Y | Valor |
| 15 | CD_FORNECEDOR | NUMBER | Y | Código do fornecedor |
| 16 | DS_OBS_ITEM | VARCHAR2 | Y | Observação do item de lote |
| 17 | DS_OBS_APROVADOR | VARCHAR2 | Y | Observação do aprovador |
| 18 | DT_OCORRENCIA | DATE | Y | Data da ocorrência do item |
| 19 | SN_EXCEDENTE | VARCHAR2 | N | Identifica se o item é excedente ou não. |
| 20 | VL_UNITARIO | NUMBER | Y | valor unitario do item. |
| 21 | DH_OC_GERACAO | DATE | Y | Data e hora da geração que foi feita pela tela de geracao OS. |
| 22 | CD_CONTRATO_PARC | NUMBER | Y | Código da parcela do contrato. |

---

## MVCONT.GCTO_LOTE
> Tabela de Lotes de Exportação para Financeiro (*M*)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOTE | NUMBER | N | Código do Lote |
| 2 | DS_LOTE | VARCHAR2 | N | Descrição do Lote |
| 3 | TP_LOTE | VARCHAR2 | N | Tipo do Lote |
| 4 | CD_CONTRATO | NUMBER | Y | Código do contrato |
| 5 | CD_TIPO | VARCHAR2 | Y | Código do Tipo de Contrato |
| 6 | TP_FINANCEIRO | VARCHAR2 | Y | Tipo Financeiro dos Contratos |
| 7 | CD_FORNECEDOR | NUMBER | Y | Código da Pessoa |
| 8 | DT_EMISSAO_INI | DATE | Y | Data Início de Emissão de Contrato |
| 9 | DT_EMISSAO_FIM | DATE | Y | Data Final de Emissão de Contrato |
| 10 | DT_VENCIMENTO_INI | DATE | Y | Data Início de Vencimento das Parcelas de Contrato |
| 11 | DT_VENCIMENTO_FIM | DATE | Y | Data Final de Vencimento das Parcelas de Contrato |
| 12 | DT_MENOR_VENCIMENTO | DATE | Y | Data Mínima para Vencimento das Parcelas de Contrato |
| 13 | DH_ABERTURA | DATE | N | Data e Hora da Abertura do Lote |
| 14 | CD_USUARIO_ABER | VARCHAR2 | N | Usuário do abertura do Lote |
| 15 | DH_FECHAMENTO | DATE | Y | Data e Hora do Fechamento do Lote |
| 16 | CD_USUARIO_FECH | VARCHAR2 | Y | Usuário do Fechamento do Lote |
| 17 | CD_MULTI_EMPRESA | NUMBER | Y | Código da Empresa |
| 18 | CD_USUARIO_CANC | VARCHAR2 | Y | Código usuario cancelamento |
| 19 | DH_CANCELAMENTO | DATE | Y | Data de cancelamento |
| 20 | CD_USUARIO_FINAN | VARCHAR2 | Y |  |
| 21 | DH_FINANCEIRO | DATE | Y |  |
| 22 | CD_CONTRATO_PARC | NUMBER | Y |  |
| 23 | CD_MODELO | NUMBER | Y | Código do modelo do contrato no lote. |
| 24 | TP_INTEGRACAO | VARCHAR2 | N | Indica o tipo de integração, se é Financeiro ou Ordem de Compras |
| 25 | CD_STATUS | VARCHAR2 | Y | Indica o Status do Lote, Aberto, Fechado, Cancelado |
| 26 | CD_ORIGEM | VARCHAR2 | Y | Código da Origem do lote. Reativado ou não. |

---

## MVCONT.GCTO_LOTE_APONTAMENTO
> Nova tabela de lote de apontamentos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOTE | NUMBER | N | Código do Lote |
| 2 | DS_LOTE | VARCHAR2 | N | Descrição do Lote |
| 3 | TP_STATUS | VARCHAR2 | N | Status: Aberto, Fechado, Liberado |
| 4 | CD_EVENTO | NUMBER | Y | Evento ligado ao lote de apontamento |
| 5 | DH_LIBERACAO | DATE | Y | Data e hora da liberação |
| 6 | CD_USUARIO_LIBEROU | VARCHAR2 | Y | Usuário que liberou |
| 7 | CD_FORNECEDOR | NUMBER | Y | Código do fornecedor no lote apontamento. |

---

## MVCONT.GCTO_LOTE_ITEM
> Tabela de Itens de Lote (*M*)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOTE_ITEM | NUMBER | N | Código do Item de Lote |
| 2 | CD_LOTE | NUMBER | N | Código do Lote |
| 3 | CD_CONTRATO | NUMBER | N | Código do Contrato |
| 4 | NR_PARCELA | NUMBER | N | Número da parcela |
| 5 | DT_VENCIMENTO | DATE | N | Data do Vencimento da Parcela |
| 6 | VL_PARCELA | NUMBER | N | Valor da Parcela |
| 7 | DT_FINANCEIRO | DATE | Y | Data da Geração para o Financeiro |
| 8 | CD_FINANCEIRO | NUMBER | Y | Conta da Geração no Financeiro |
| 9 | CD_CONTRATO_PARC | NUMBER | Y | Código contrato parcela |

---

## MVCONT.GCTO_MENSAGEM
> Tabela de mensagens (*M*)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MENSAGEM | NUMBER | N | Código da mensagem pai |
| 2 | CD_PAI | NUMBER | Y |  |
| 3 | CD_FORUM | NUMBER | N | Forum destino da mensagem |
| 4 | TX_MENSAGEM | VARCHAR2 | N | Texto da mensagem |
| 5 | DH_LIDO | DATE | Y | Data e hora da leitura da mensagem |
| 6 | DH_RESPONDIDO | DATE | Y | Data e hora da resposta da mensagem |
| 7 | DH_EMAIL | DATE | Y | Data e hora do envio do email |
| 8 | DH_INSERT | DATE | N | Data e hora do insert da mensagem |
| 9 | CD_USUARIO_INS | VARCHAR2 | N | Usuário do insert da mensagem |
| 10 | TX_ASSUNTO | VARCHAR2 | Y |  |
| 11 | TX_EMAILS | VARCHAR2 | Y |  |

---

## MVCONT.GCTO_MENSAGEM_LIDA
> Tabela de mensagens lidas por usuário (*M*)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MENSAGEM | NUMBER | N | Código da mensagem |
| 2 | CD_USUARIO | VARCHAR2 | N | Usuário que leu a mensagem |
| 3 | DH_LIDO | DATE | N | Data e hora da leitura da mensagem pelo usuário |

---

## MVCONT.GCTO_MENSAGERIA
> Mensagens de Contrato

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MENSAGERIA | NUMBER | N | Código da mensagem respondida |
| 2 | CD_MENSAGERIA_ORIG | NUMBER | Y |  |
| 3 | CD_MENSAGERIA_RESP | NUMBER | Y |  |
| 4 | CD_USUARIO | VARCHAR2 | N | Código do usuário |
| 5 | CD_EMAIL | VARCHAR2 | Y | Código do E-mail |
| 6 | CD_FORUM | NUMBER | Y | Código do fórum |
| 7 | CD_CONTRATO | NUMBER | Y | Código do contrato |
| 8 | DS_ASSUNTO | VARCHAR2 | N | Assunto da mensagem |
| 9 | TX_MENSAGEM | VARCHAR2 | N | Texto da mensagem |
| 10 | DH_LIDO | DATE | Y | Data da leitura da mensagem |
| 11 | DH_EMAIL | DATE | Y | Data de envio da mensagem |
| 12 | DH_INSERT | DATE | N | Data de inserção da mensagem |
| 13 | CD_STATUS | VARCHAR2 | Y |  |
| 14 | SN_DISCUSSAO_FINALIZADA | VARCHAR2 | Y |  |
| 15 | SN_ANEXAR_EMAIL | VARCHAR2 | Y |  |
| 16 | DH_FINALIZADO | DATE | Y | Discussão Finalizada (S/N) |
| 17 | TP_ORIGEM | VARCHAR2 | Y | Código do evento que gerou a mensagem. |

---

## MVCONT.GCTO_MENSAGERIA_ANEX
> Anexo da mensagem

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MENSAGERIA_ANEX | NUMBER | N | Código do anexo da mensagem |
| 2 | CD_MENSAGERIA | NUMBER | N | Código da mensagem |
| 3 | CD_ANEXO | VARCHAR2 | N | Código do anexo |
| 4 | DS_MENSAGERIA_ANEX | VARCHAR2 | Y | Descrição do anexo |
| 5 | FI_DIGITALIZADO | BLOB | Y | Campo de imagem do anexo |

---

## MVCONT.GCTO_MENSAGERIA_DEST
> Usuário destino da mensagem

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MENSAGERIA_DEST | NUMBER | N | Código primário |
| 2 | CD_MENSAGERIA | NUMBER | N | Código da mensagem |
| 3 | CD_USUARIO | VARCHAR2 | Y | Usuário destino |
| 4 | CD_EMAIL | VARCHAR2 | Y | Email do usuário |
| 5 | TP_COPIA | VARCHAR2 | N | Tipo da cópia |
| 6 | SN_SOLICITA_RESP | VARCHAR2 | N | Solicita resposta |
| 7 | DT_RETORNO | NUMBER | Y | Data do retorno |
| 8 | QT_DIAS_RESPOSTA | NUMBER | N | Quantidade de dias da resposta |
| 9 | DH_LIDO | DATE | Y | Data da Leitura |
| 10 | DH_RESPOSTA | DATE | Y | Data da Resposta |

---

## MVCONT.GCTO_MODELO_EMPR
> Tabela de associação do modelo a empresa

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MODELO_EMPR | NUMBER | N |  |
| 2 | CD_CONTRATO | NUMBER | N | Código do contrato |
| 3 | CD_MULTI_EMPRESA | NUMBER | N | Código da empresa |
| 4 | CD_SETOR | NUMBER | Y | Código do setor |
| 5 | SN_ATIVO | VARCHAR2 | N | Se está ativo ou não |
| 6 | TP_INTEGRACAO | VARCHAR2 | N | Tipo de integração com sistemas |
| 7 | CD_ESTOQUE | NUMBER | Y | Código do estoque empresa contrato |
| 8 | CD_TIP_DOC | NUMBER | Y | Código do tipo do documento empresa contrato |
| 9 | CD_PROCESSO | NUMBER | Y | Código do processo empresa contrato |
| 10 | CD_ITEM_RES | NUMBER | Y | Código do centro de custo empresa contrato |
| 11 | CD_REDUZIDO | NUMBER | Y | Código da conta contábil |

---

## MVCONT.GCTO_MODULO_NOTA
> Tabela responsável por persistir as notas/textos que serão exibidos no HELP das telas do módulo de CONTRATOS (*M*)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_NOTA | NUMBER | N | Código da nota |
| 2 | CD_MODULO | VARCHAR2 | N | Código do módulo |
| 3 | CD_USUARIO | VARCHAR2 | N | Código do usuário |
| 4 | DS_NOTA | VARCHAR2 | N | Descrição da nota referente a tela |
| 5 | DS_TITULO | VARCHAR2 | N | Descrição do título da nota |
| 6 | DT_CRIACAO | DATE | N | Data de criação da nota |
| 7 | SN_EXIBE_NOTA | VARCHAR2 | N | Indica se a nota deve ser exibida (S/N) |

---

## MVCONT.GCTO_MOTIVO
> Motivos de status de contrato (*M*)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MOTIVO | NUMBER | N | Código do motivo |
| 2 | DS_MOTIVO | VARCHAR2 | N | Descrição do motivo |
| 3 | CD_TIPO_EVENTO | VARCHAR2 | N | Código do Tipo de evento relacionado |
| 4 | SN_ATIVO | VARCHAR2 | N | Registro ativo (S/N) |
| 5 | SN_NATIVO | VARCHAR2 | N | Registro nativo (S/N) |
| 6 | DH_INSERT | DATE | N | Data e hora do insert do registro |
| 7 | CD_USUARIO_INS | VARCHAR2 | N | Usuário do insert do registro |
| 8 | DH_UPDATE | DATE | Y | Data e hora do último update do registro |
| 9 | CD_USUARIO_UPD | VARCHAR2 | Y | Usuário do último update do registro |

---

## MVCONT.GCTO_MOTIVO_EMPR
> motivos por Empresa (*M*)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MOTIVO | NUMBER | N | Código do motivo |
| 2 | SN_ATIVO | VARCHAR2 | N | Disposição do motivo na empresa |
| 3 | CD_MULTI_EMPRESA | NUMBER | N | Código da empresa |

---

## MVCONT.GCTO_OCORRENCIA
> Ocorrência de Contrato (*M*)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_OCORRENCIA | NUMBER | N | Código do ocorrência de contrato |
| 2 | CD_OCORRENCIA_PAI | NUMBER | Y | Código da ocorrência pai |
| 3 | CD_CONTRATO | NUMBER | N | Código do Contrato |
| 4 | CD_EVENTO | NUMBER | N | Código do evento |
| 5 | CD_SLAREGRA | NUMBER | Y | Código do SLA |
| 6 | DH_OCORRENCIA | DATE | N | Data e hora da ocorrência |
| 7 | TX_OCORRENCIA | VARCHAR2 | Y | Texto sobre a ocorrência |
| 8 | CD_MOTIVO | NUMBER | Y |  |
| 9 | DH_PERIODO_INI | DATE | Y | Dara início da período |
| 10 | DH_PERIODO_FIM | DATE | Y | Data fim do período |
| 11 | NM_PESSOA | VARCHAR2 | Y | Nome da pessoa da produção |
| 12 | QT_PRODUCAO | NUMBER | Y | Quantidade produzida |
| 13 | QT_DURACAO | NUMBER | Y | Duração apontada |
| 14 | VL_UNITARIO | NUMBER | Y |  |
| 15 | VL_OCORRENCIA | NUMBER | Y | Valor apontado |
| 16 | CD_PARCELA_APONT | NUMBER | Y | Código da parcela do contrato que recebeu o apontamento no momento da geração financeira |
| 17 | TX_AVISO | VARCHAR2 | Y | Texto aviso |
| 18 | CD_STATUS_ANTES | VARCHAR2 | N | Status do contrato depois da ocorrencia |
| 19 | CD_STATUS_DEPOIS | VARCHAR2 | N |  |
| 20 | DH_AVISO | DATE | Y |  |
| 21 | DH_INSERT | DATE | N | Data e hora do insert do registro |
| 22 | CD_USUARIO_INS | VARCHAR2 | N | Usuário do insert do registro |
| 23 | DH_AUTOMATICO | DATE | Y | Data do automático |
| 24 | TX_AUTOMATICO | VARCHAR2 | Y | Texto do automático |
| 25 | CD_CONTRATO_ITEM | NUMBER | Y |  |

---

## MVCONT.GCTO_ORD_COM_SERV
> Nova tabela de liberação de ordem de compra/serviço

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SEQUENCIAL | NUMBER | N | Sequencial da tabela |
| 2 | CD_LOTE | NUMBER | Y | Código do Lote |
| 3 | CD_IT_LOTE | NUMBER | Y | Código do item de Lote |
| 4 | CD_CONTRATO | NUMBER | Y | Código do contrato |
| 5 | CD_CONTRATO_ITEM | NUMBER | Y | Código do item de contrato |
| 6 | CD_PRODUTO | NUMBER | Y | Codigo do produto |
| 7 | CD_SERVICO | NUMBER | Y | Código do serviço |
| 8 | CD_FORNECEDOR | NUMBER | Y | Código do fornecedor do contrato |
| 9 | QT_ITENS | NUMBER | Y | Quantidade |
| 10 | VL_UNITARIO | NUMBER | Y | Valor de referência |
| 11 | DT_REFERENCIA | DATE | Y |  |
| 12 | NR_OC_OS | NUMBER | Y | Nr da Ordem de Compra (produto) ou Ordem de Serviço (serviço) |
| 13 | SN_CANCELADA | VARCHAR2 | N | Indica se a OC/OS foi cancelada |
| 14 | CD_USUARIO_GEROU | VARCHAR2 | Y | Usuário que gerou |
| 15 | DT_GEROU | DATE | Y | Data da geração |

---

## MVCONT.GCTO_PARADA
> Tabela de Parada Obrigatoria do GCTO (*M*)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GCTO_PARADA | NUMBER | N | Código da Parada Obrigatória |
| 2 | DH_PARADA_INICIO | DATE | N | Data/Hora de inicio da parada |
| 3 | DH_PARADA_FINAL | DATE | N | Data/Hora de fim da parada |
| 4 | SN_PARADA_ATIVO | VARCHAR2 | N | se parada ativa |
| 5 | TXT_PARADA_AVISO | VARCHAR2 | N | texto da parada obrigatoria |

---

## MVCONT.GCTO_STATUS
> Status (Fase) de contratos (*M*)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_STATUS | VARCHAR2 | N | Código do status |
| 2 | DS_STATUS | VARCHAR2 | N | Descrição do status |
| 3 | SN_CONTRATO_ATIV | VARCHAR2 | N | Status de contrato ativado |
| 4 | SN_ATIVO | VARCHAR2 | N |  |
| 5 | SN_NATIVO | VARCHAR2 | N | Nativo do sistema |
| 6 | DH_INSERT | DATE | N | Data e hora do insert do registro |
| 7 | CD_USUARIO_INS | VARCHAR2 | N | Usuário do insert do registro |
| 8 | DH_UPDATE | DATE | Y | Data e hora do último update do registro |
| 9 | CD_USUARIO_UPD | VARCHAR2 | Y | Usuário do último update do registro |
| 10 | CD_EVENTO | NUMBER | Y | Código do Evento |

---

## MVCONT.GCTO_STATUS_EMPR
> statuss por Empresa (*M*)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_STATUS | VARCHAR2 | N | Código do status |
| 2 | QT_DIAS_ATRASO | NUMBER | Y | Quantidade de dias de atraso |
| 3 | SN_ATIVO | VARCHAR2 | N | Disposição do status na empresa |
| 4 | CD_MULTI_EMPRESA | NUMBER | N | Código da empresa |

---

## MVCONT.GCTO_TAGS
> Tabela de Tags (*M*)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TAG | VARCHAR2 | N | Código da Tag |
| 2 | DS_TAG | VARCHAR2 | N | Descrição da tag |
| 3 | TX_SELECT | VARCHAR2 | N | Select relacionado |
| 4 | SN_ATIVO | VARCHAR2 | N |  |
| 5 | SN_NATIVO | VARCHAR2 | N |  |
| 6 | DH_INSERT | DATE | N |  |
| 7 | CD_USUARIO_INS | VARCHAR2 | N |  |
| 8 | DH_UPDATE | DATE | Y |  |
| 9 | CD_USUARIO_UPD | VARCHAR2 | Y |  |

---

## MVCONT.GCTO_TEXTO
> Textos padrões de contrato (*M*)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TEXTO | NUMBER | N | Código do texto padrão |
| 2 | DS_TOPICO | VARCHAR2 | N | Tópico cabeçalho do texto |
| 3 | CD_ORDEM | NUMBER | N | Ordem default do texto no contrato |
| 4 | TX_TEXTO | VARCHAR2 | N | Texto padrão |
| 5 | SN_ATIVO | VARCHAR2 | N |  |
| 6 | SN_NATIVO | VARCHAR2 | N |  |
| 7 | DH_INSERT | DATE | N | Data e hora do insert do registro |
| 8 | CD_USUARIO_INS | VARCHAR2 | N | Usuário do insert do registro |
| 9 | DH_UPDATE | DATE | Y | Data e hora do último update do registro |
| 10 | CD_USUARIO_UPD | VARCHAR2 | Y | Usuário do último update do registro |

---

## MVCONT.GCTO_TIPO
> Tipos de contratos (*M*)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIPO | VARCHAR2 | N | Código do contrato |
| 2 | DS_TIPO | VARCHAR2 | N | Descrição do contrato |
| 3 | CD_STATUS | VARCHAR2 | N | Status inicial do contrato do tipo |
| 4 | SN_ATIVO | VARCHAR2 | N | Situação do registro |
| 5 | SN_NATIVO | VARCHAR2 | N | Nativo do sistema |
| 6 | DH_INSERT | DATE | N | Data e hora do insert do registro |
| 7 | CD_USUARIO_INS | VARCHAR2 | N | Usuário do insert do registro |
| 8 | DH_UPDATE | DATE | Y | Data e hora do último update do registro |
| 9 | CD_USUARIO_UPD | VARCHAR2 | Y | Usuário do último update do registro |
| 10 | TP_DADOS_COMPL_CONTRATO | VARCHAR2 | Y |  |
| 11 | TP_AREA | VARCHAR2 | N | Tipo da área |
| 12 | CD_PROCESSO | NUMBER | Y | Código do Processo |
| 13 | CD_SETOR | NUMBER | Y | Setor |
| 14 | CD_TIPO_DOCUMENTO | NUMBER | Y | Tipo da documento |
| 15 | SN_GERA_FINANCEIRO | VARCHAR2 | N | Gera Financeiro |
| 16 | SN_GERA_OCOMPRA | VARCHAR2 | N | Gera Ordem de Compra ? |
| 17 | SN_PERMITE_APONTA | VARCHAR2 | N | Permite apontamento |
| 18 | TP_FINANCEIRO | VARCHAR2 | N | Tipo financeiro referente |
| 19 | QT_DIAS_ALERTA_VCTO | NUMBER | Y | Quantidade de dias para alerta de vencimento. |
| 20 | QT_DIAS_REAJUSTE | NUMBER | Y |  |
| 21 | SN_PERMITIR_VALOR_ZEROS | VARCHAR2 | Y | permitir valores Unitarios zerados |

---

## MVCONT.GCTO_TIPO_DOCUMENTO
> Tipos de documentos (*M*)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIPO_DOCUMENTO | NUMBER | N | Código do tipo de documento |
| 2 | DS_TIPO_DOCUMENTO | VARCHAR2 | N | Tipo de documento está ativo (S/N) |
| 3 | SN_ATIVO | VARCHAR2 | N | Indicador de registro ativo (S/N)) |
| 4 | SN_NATIVO | VARCHAR2 | N |  |
| 5 | DH_INSERT | DATE | N | Data e hora do insert do registro |
| 6 | CD_USUARIO_INS | VARCHAR2 | N | Usuário do insert do registro |
| 7 | DH_UPDATE | DATE | Y | Data e hora do último update do registro |
| 8 | CD_USUARIO_UPD | VARCHAR2 | Y | Usuário do último update do registro |
| 9 | SN_GERA_FINANCEIRO | VARCHAR2 | N | Sinaliza gerar financeiro |
| 10 | SN_PASSA_APROVACAO | VARCHAR2 | N | Passa aprovacao |

---

## MVCONT.GCTO_TIPO_EMPR
> Empresas/Setores do Tipo (*M*)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIPO | VARCHAR2 | N | Tipo de Contrato |
| 2 | SN_ATIVO | VARCHAR2 | N | Ativo S/N |
| 3 | CD_MULTI_EMPRESA | NUMBER | N | Empresa |
| 4 | CD_TIPO_EMPR | NUMBER | N | Código |
| 5 | CD_SETOR | NUMBER | Y | Setor |

---

## MVCONT.GCTO_TIPO_EVENTO
> Tipo de Evento (*M*)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIPO_EVENTO | VARCHAR2 | N | Código do tipo de evento |
| 2 | DS_TIPO_EVENTO | VARCHAR2 | N | Descrição do tipo do evento |
| 3 | SN_ATIVO | VARCHAR2 | N |  |
| 4 | SN_NATIVO | VARCHAR2 | N | Nativo do sistema |
| 5 | DH_INSERT | DATE | N | Data e hora do insert do registro |
| 6 | CD_USUARIO_INS | VARCHAR2 | N | Usuário do insert do registro |
| 7 | DH_UPDATE | DATE | Y | Data e hora do último update do registro |
| 8 | CD_USUARIO_UPD | VARCHAR2 | Y | Usuário do último update do registro |
| 9 | CD_EVENTO | NUMBER | Y | Tipo de Evento |

---

## MVCONT.INDICADOR_ORCAMENTARIO
> Tabela de indicadores orcamentarios.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INDICADOR_ORCAMENTARIO | NUMBER | N | Identificador do indicador orcamentario. |
| 2 | DS_INDICADOR_ORCAMENTARIO | VARCHAR2 | N | Descricao do indicador orcamentario. |
| 3 | TXT_FORMULA | VARCHAR2 | Y | Formula do indicador orcamentario. |
| 4 | SN_ATIVO | VARCHAR2 | N | Indicador de status de ativacao do registro. |
| 5 | CD_ORCA_GRUPO_INDICADOR | NUMBER | Y | Sequencial do grupo |
| 6 | TP_VISAO | VARCHAR2 | N | Código da visão do indicador. Valores possíveis (N)-Numérico, (P)-Percentual e (Q)-Quantitativo |
| 7 | TXT_FORMULA_REALIZADO | VARCHAR2 | Y |  |
| 8 | DS_MESES | VARCHAR2 | Y | Descrição dos meses de referência |
| 9 | NR_MESES | NUMBER | Y | Número de meses |
| 10 | SN_IMPRIME | VARCHAR2 | N | Imprime indicador |
| 11 | TP_PROJETAR | VARCHAR2 | Y | Projetar OrÃ§ado ou MÃ©dia. |

---

## MVCONT.INDICADOR_ORCAMENTARIO_SETOR
> Tabela de relacionamento entre os indicadores orcamentarios e os setores.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INDICADOR_ORCAMENTARIO | NUMBER | N | Identificador do indicador orcamentario. |
| 2 | CD_SETOR | NUMBER | N | Identificador do setor. |
| 3 | TXT_FORMULA_REALIZADO | VARCHAR2 | Y | Fórmula do realizado no setor. |
| 4 | TXT_FORMULA_ORCADO | VARCHAR2 | Y | Fórmula do orçado no setor. |

---

## MVCONT.LOG_ORCA_AJUSTE_NF
> Base de orçamento ajustes contas a pagar

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOG_ORCA_AJUSTE_NF | NUMBER | N | Código sequencial do LOG ajuste. |
| 2 | CD_ORCA_AJUSTE_NF | NUMBER | N | Código sequencial do ajuste. |
| 3 | DT_LOG_MOVTO | DATE | N | Data do movimento no LOG. |
| 4 | CD_MULTI_EMPRESA | NUMBER | N | Código da empresa. |
| 5 | DT_COMPETENCIA | DATE | N | Data de competência do título. |
| 6 | DT_EMISSAO | DATE | N | Data de emissão do título |
| 7 | NR_DOCUMENTO | VARCHAR2 | Y | Número do documento do título. |
| 8 | CD_FORNECEDOR | NUMBER | Y | Código do fornecedor do título. |
| 9 | VL_DOCUMENTO | NUMBER | N | Valor do título. |
| 10 | CD_HISTORICO_PADRAO | NUMBER | Y | Código do histórico padrão. |
| 11 | SN_DESCONSIDERAR | VARCHAR2 | Y | Indicador para desconciderar o título no orçamento. |
| 12 | DS_LOG | VARCHAR2 | Y | Descrição da modificação. |

---

## MVCONT.LOG_ORCA_AJUSTE_NF_RAT
> Base de orçamento o LOG dos ajustes contas a pagar rateio

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOG_ORCA_AJUSTE_NF_RAT | NUMBER | N | Código sequencial do LOG ajuste rateio. |
| 2 | CD_LOG_ORCA_AJUSTE_NF | NUMBER | N | Código sequencial do LOG ajuste NF. |
| 3 | CD_ORCA_AJUSTE_NF_RATEIO | NUMBER | N | Código sequencial do ajuste rateio. |
| 4 | CD_SETOR | NUMBER | Y | Código do setor do ajuste rateio. |
| 5 | CD_ITEM_RES | NUMBER | Y | Código da conta de custo no rateio. |
| 6 | VL_RATEIO | NUMBER | N | Valor do ajuste rateio. |
| 7 | DS_LOG_RATEIO | VARCHAR2 | Y |  |

---

## MVCONT.LOG_ORCA_CONTROLE_MOV
> Tabela dos logs dos movimentos.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOG_ORCA_CONTROLE_MOV | NUMBER | N | Sequencial do log. |
| 2 | CD_ORCA_CONTROLE_MOV | NUMBER | N | Sequencial do movimento no log. |
| 3 | DT_ALTERACAO | DATE | N | Data da alteração. |
| 4 | NM_USUARIO_ALTERACAO | VARCHAR2 | N | Usuario que realizou a alteração. |
| 5 | TP_STATUS_CONTROLE | VARCHAR2 | N | Status do controle. |
| 6 | DS_JUSTIFICATIVA | VARCHAR2 | Y | Justificativa da alteração. |
| 7 | VL_ORCADO_CONTR | NUMBER | Y | Valor previsto controle. |
| 8 | QT_ORCADO_CONTR | NUMBER | Y | Quantidade previsto controle. |
| 9 | CD_JUSTIFICATIVA | NUMBER | Y |  |
| 10 | VL_REALIZADO_CONTR | NUMBER | Y |  |
| 11 | QT_REALIZADO_CONTR | NUMBER | Y |  |
| 12 | SN_ALT_VL_REALIZADO_CONTR | VARCHAR2 | N | Indicador se alterou o valor realizado. |
| 13 | SN_ALT_VL_ORCADO_CONTR | VARCHAR2 | N | Indicador se alterou o valor orçado. |

---

## MVCONT.ORCA_AJUSTE_NF
> Base de orçamento ajustes contas a pagar

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_AJUSTE_NF | NUMBER | N | Código sequencial do ajuste. |
| 2 | CD_MULTI_EMPRESA | NUMBER | N | Código da empresa. |
| 3 | DT_COMPETENCIA | DATE | N | Data de competência do título. |
| 4 | DT_EMISSAO | DATE | N | Data de emissão do título |
| 5 | NR_DOCUMENTO | VARCHAR2 | Y | Número do documento do título. |
| 6 | CD_FORNECEDOR | NUMBER | Y | Código do fornecedor do título. |
| 7 | VL_DOCUMENTO | NUMBER | N | Valor do título. |
| 8 | CD_HISTORICO_PADRAO | NUMBER | Y | Código do histórico padrão. |
| 9 | SN_DESCONSIDERAR | VARCHAR2 | N | Indicador para desconciderar o título no orçamento. |
| 10 | DS_AJUSTE_NF | VARCHAR2 | Y | Descrição do ajuste |
| 11 | CD_TIPO | VARCHAR2 | Y | Codigo do Tipo, com os seguintes valores possiveis (FIN = Financeiro, CON = Contabil, CUS = Custo... |

---

## MVCONT.ORCA_AJUSTE_NF_RATEIO
> Base de orçamento ajustes contas a pagar rateio

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_AJUSTE_NF_RATEIO | NUMBER | N | Código sequencial do ajuste rateio. |
| 2 | CD_ORCA_AJUSTE_NF | NUMBER | N | Código sequencial do ajuste. |
| 3 | CD_SETOR | NUMBER | Y | Código do setor do ajuste rateio. |
| 4 | CD_ITEM_RES | NUMBER | Y | Código da conta de custo no rateio. |
| 5 | VL_RATEIO | NUMBER | N | Valor do ajuste rateio. |

---

## MVCONT.ORCA_CONTA
> Contas de Orçamento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_CONTA | NUMBER | N | Código da Conta de Orçamento |
| 2 | CD_TIPO_CONTA | VARCHAR2 | N | Código do Tipo da Conta de Orçamento |
| 3 | NM_CONTA | VARCHAR2 | N | Nome da Conta de Orçamento |
| 4 | SN_TRANSFERE_PERI | VARCHAR2 | N | Transferência Entre Períodos |
| 5 | SN_TRANSFERE_CNTA | VARCHAR2 | N | Transferência Entre Contas |
| 6 | SN_TRANSFERE_CTRO | VARCHAR2 | N | Transferência Entre Centros de Custos |
| 7 | SN_ATIVO | VARCHAR2 | N | Registro está ativo |
| 8 | DH_INSERT | DATE | N | Data de Insert do registro |
| 9 | CD_USUARIO_INS | VARCHAR2 | N | Código do Usuário de Insert do registro |
| 10 | DH_UPDATE | DATE | Y | Data do Último Update do registro |
| 11 | CD_USUARIO_UPD | VARCHAR2 | Y | Código do Usuário Último Update do registro |
| 12 | TP_VINCULO_CNTA | VARCHAR2 | N |  |
| 13 | SN_BLOQUEIA_ORCAMENTO | VARCHAR2 | N | Indica se a conta bloqueia orçamento = S, libera orçamento = N |
| 14 | VL_MARGEM | NUMBER | Y | Valor da margem Orçado X Realizado |

---

## MVCONT.ORCA_CONTA_COMP
> Composição da conta estrutural

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_CONTA | NUMBER | N | Código da conta |
| 2 | CD_ORCA_CONTA_COMP | NUMBER | N | Código da conta composta |
| 3 | TP_COMPOSICAO | VARCHAR2 | N | Tipo de composição: Valor/Percentual |
| 4 | QT_MESES | NUMBER | N |  |
| 5 | VL_COMPOSICAO | NUMBER | N | Valor da composição |
| 6 | DH_INSERT | DATE | N | Data de Insert do registro |
| 7 | CD_USUARIO_INS | VARCHAR2 | N | Código do Usuário de Insert do registro |
| 8 | DH_UPDATE | DATE | Y | Data do Último Update do registro |
| 9 | CD_USUARIO_UPD | VARCHAR2 | Y | Código do Usuário Último Update do registro |

---

## MVCONT.ORCA_CONTA_EMPR
> Empresas Relacionadas à Conta de Orçamento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_CONTA | NUMBER | N |  |
| 2 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 3 | CD_REDUZIDO | NUMBER | Y |  |
| 4 | SN_ATIVO | VARCHAR2 | N | Registro está ativo |
| 5 | DH_INSERT | DATE | N | Data de Insert do registro |
| 6 | CD_USUARIO_INS | VARCHAR2 | N | Código do Usuário de Insert do registro |
| 7 | DH_UPDATE | DATE | Y | Data do Último Update do registro |
| 8 | CD_USUARIO_UPD | VARCHAR2 | Y | Código do Usuário Último Update do registro |
| 9 | CD_ITEM_RES | NUMBER | Y |  |
| 10 | CD_ORCA_CONTA_EMPR | NUMBER | N |  |
| 11 | CD_AUXILIAR | NUMBER | Y |  |

---

## MVCONT.ORCA_CONTA_IND
> Indicadores por conta orçamentária

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INDICADOR_ORCAMENTARIO | NUMBER | N | Código do indicador orçamentário |
| 2 | CD_ORCA_CONTA | NUMBER | N | Código da conta |

---

## MVCONT.ORCA_CONTA_ITEM_LOG
> Tabela de log de erro das importações das peças orçamentárias.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_CONTA_ITEM_LOG | NUMBER | N | Sequencial da tabela de log de peças orçamentárias. |
| 2 | CD_ERRO | NUMBER | N | Código do erro. |
| 3 | DS_ITEM | VARCHAR2 | Y | Descrição do item. |
| 4 | DS_ERRO | VARCHAR2 | Y | Descrição do Erro. |
| 5 | CD_USUARIO | VARCHAR2 | N | Código do usuário. |
| 6 | DT_ERRO | DATE | Y | Data do erro. |

---

## MVCONT.ORCA_CONTA_PECA
> Linha da Peça Orçamentária

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_CONTA | NUMBER | N |  |
| 2 | NR_LINHA | NUMBER | N |  |
| 3 | NM_LINHA | VARCHAR2 | N |  |
| 4 | QT_DEC | NUMBER | Y |  |
| 5 | SN_MOSTRA | VARCHAR2 | N |  |
| 6 | SN_DIGITA | VARCHAR2 | N |  |
| 7 | TX_FORMULA | VARCHAR2 | Y |  |
| 8 | DH_INSERT | DATE | N | Data de Insert do registro |
| 9 | CD_USUARIO_INS | VARCHAR2 | N | Código do Usuário de Insert do registro |
| 10 | DH_UPDATE | DATE | Y | Data do Último Update do registro |
| 11 | CD_USUARIO_UPD | VARCHAR2 | Y | Código do Usuário Último Update do registro |

---

## MVCONT.ORCA_CONTA_USUA
> Gestores das Contas Estruturais

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_CONTA | NUMBER | N | Código da Conta de orçamento |
| 2 | CD_USUARIO | VARCHAR2 | N | Código do usuário |
| 3 | DT_VIGENCIA_INI | DATE | N | Data inicial da vigência |
| 4 | DT_VIGENCIA_FIM | DATE | Y | Data final da vigência |
| 5 | SN_CRIAR | VARCHAR2 | N | Criar |
| 6 | SN_REVISAR | VARCHAR2 | N | Revisar |
| 7 | SN_AJUSTAR | VARCHAR2 | N | Ajustar |
| 8 | SN_TRANSF_PERIODO | VARCHAR2 | N | Período |
| 9 | SN_TRANSF_CONTA | VARCHAR2 | N | Transferir contas |
| 10 | SN_TRANSF_CENTRO | VARCHAR2 | N | Transferir centros |
| 11 | SN_PARECER | VARCHAR2 | N | Parecer |
| 12 | SN_REALIZA | VARCHAR2 | N | Realiza |
| 13 | SN_ALCADA | VARCHAR2 | N | Alçada |
| 14 | SN_ATIVO | VARCHAR2 | N | Registro está ativo |
| 15 | DH_INSERT | DATE | N | Data de Insert do registro |
| 16 | CD_USUARIO_INS | VARCHAR2 | N | Código do Usuário de Insert do registro |
| 17 | DH_UPDATE | DATE | Y | Data do Último Update do registro |
| 18 | CD_USUARIO_UPD | VARCHAR2 | Y | Código do Usuário Último Update do registro |

---

## MVCONT.ORCA_CONTROLE
> Base controle de movimento dos orçamentos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_CONTROLE | NUMBER | N | CÓDIGO DO CONTROLE DO MOVIMENTO. |
| 2 | CD_BASE_ORCA | NUMBER | N | Código da base orçamentária. |
| 3 | CD_BASE_ORCA_REF | NUMBER | Y | Código do orçamento de referência. |
| 4 | DS_CONTROLE | VARCHAR2 | N | Descrição do controle do movimento. |
| 5 | DT_CRIACAO | DATE | Y | Data da criação do controle. |
| 6 | CD_USUARIO | VARCHAR2 | N | Usuário do controle. |
| 7 | TP_CONTROLE | VARCHAR2 | N | Tipo do controle (Manual, Importado, Peça e Replicado) |
| 8 | TP_SITUACAO | VARCHAR2 | N | Situação do controle (A-Aberto, E-Exportado para Orçamento, S-Setorizado, R - Retorno) |
| 9 | TP_CONTROLE_ORCAMENTO | VARCHAR2 | N | Tipo de controle orçamento C-Custo, R-Receita. |
| 10 | SN_OFICIAL | VARCHAR2 | N | Indicador de controle oficial S-Controle Oficial, N-Controle não oficial |
| 11 | SN_FECHADO | VARCHAR2 | N | Indicador do controle Fechado. S-Fechado, N-Aberto |

---

## MVCONT.ORCA_CONTROLE_CONCLUSAO
> Tabela de controle dos itens/peças concluídas.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_CONTROLE_CONCLUSAO | NUMBER | N | Sequencial da tabela. |
| 2 | CD_ORCA_CONTROLE | NUMBER | N | Código do controle orçamentário. |
| 3 | CD_ORCA_CONTROLE_PECA | NUMBER | N | Código da peça. |
| 4 | CD_ORCA_CONTROLE_CONTA | NUMBER | Y | Código da conta, se em branco é a conclusão da peça como um todo. |
| 5 | CD_SETOR | NUMBER | Y | Código do setor concluído. |
| 6 | SN_ORCADO | VARCHAR2 | N | S - Concluído / N - Não Concluído. |

---

## MVCONT.ORCA_CONTROLE_CONTA
> Base controle do orçamento por conta orçamentária

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_CONTROLE_CONTA | NUMBER | N | Sequencial do controle da conta. |
| 2 | CD_ORCA_CONTROLE | NUMBER | N | Código do controle do movimento. |
| 3 | CD_ORCA_CONTA | NUMBER | Y | Código da conta orçamentária. |
| 4 | VL_MEDIO | NUMBER | Y | Valor médio por conta. |
| 5 | CD_FORNECEDOR | NUMBER | Y | Código do fornecedor |
| 6 | CD_CONTRATO | NUMBER | Y | Código do contrato |
| 7 | CD_ORCA_PECA_ITEM | NUMBER | Y | Código do item da peça |
| 8 | DS_ITEM_CONTA | VARCHAR2 | Y |  |
| 9 | CD_PROJETO | NUMBER | Y |  |
| 10 | CD_USUARIO | VARCHAR2 | N | Usuário que realizou a inclusão do registro |
| 11 | CD_ORCA_CONTROLE_PECA | NUMBER | Y | CÃ³digo do controle peÃ§a |
| 12 | CD_PRODUTO | NUMBER | Y | Código do produto. |

---

## MVCONT.ORCA_CONTROLE_CONTA_AUX
> Base controle do orcamento por conta orcamentaria auxiliar.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_CONTROLE_CONTA_AUX | NUMBER | N | Sequencial do controle da conta auxiliar. |
| 2 | CD_ORCA_CONTROLE_CONTA | NUMBER | N | Codigo do controle conta. |
| 3 | CD_FORNECEDOR | NUMBER | Y | Codigo do fornecedor. |
| 4 | CD_CONTRATO | NUMBER | Y | Codigo do contrato. |
| 5 | CD_ORCA_PECA_ITEM | NUMBER | Y | Codigo do item da peca. |
| 6 | SN_USADO | VARCHAR2 | N | Indicador de uso do item. |
| 7 | CD_ORCA_CONTROLE_SETOR | NUMBER | N | Sequencial do setor no controle. |

---

## MVCONT.ORCA_CONTROLE_ESTATISTICO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_ESTATIST | NUMBER | N | CÓDIGO DA ORÇAMENTO ESTATÍSTICO. |
| 2 | DS_ORCA_ESTATIST | VARCHAR2 | N | DESCRIÇÃO DA ORÇAMENTO ESTATÍSTICO. |
| 3 | CD_ORCA_CONTROLE | NUMBER | N | CÓDIGO DO CONTROLE DO MOVIMENTO. |
| 4 | SN_VISIVEL | VARCHAR2 | Y | INDICADOR PARA EXIBIR VALORES EM OUTRAS TELAS. |
| 5 | CD_ORDEM_EXIBE | NUMBER | N | INDICADOR A ORDEM DE EXISBÇÃO. |
| 6 | VL_TOTAL_ORCADO | NUMBER | N | VALOR TOTAL ORÇADO. |
| 7 | VL_TOTAL_PROJETA | NUMBER | N | VALOR TOTAL PROJETADO. |

---

## MVCONT.ORCA_CONTROLE_ESTAT_SETOR
> Tabela de controle estatístico por setor.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ESTAT_SETOR | NUMBER | N |  |
| 2 | CD_ORCA_ESTATIST | NUMBER | N | CÓDIGO DA ORÇAMENTO ESTATÍSTICO. |
| 3 | CD_SETOR | NUMBER | N | CÓDIGO DO SETOR ORÇADO |

---

## MVCONT.ORCA_CONTROLE_IND
> Tabela de inclusão do indicador no controle.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_CONTROLE_IND | NUMBER | N | Sequencial do controle. |
| 2 | CD_INDICADOR_ORCAMENTARIO | NUMBER | N | Codigo do indicador. |
| 3 | CD_ORCA_CONTROLE_IND_SETOR | NUMBER | N | Sequencial do controle do setor. |
| 4 | VL_ORCADO | NUMBER | N | Valor orçado. |
| 5 | CD_ORCA_CONTROLE_IND_ORDER | NUMBER | Y |  |

---

## MVCONT.ORCA_CONTROLE_IND_MOV
> Tabela de inclusão dos valores no indicador no controle.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_CONTROLE_IND_MOV | NUMBER | N | Sequencial do controle. |
| 2 | CD_ORCA_CONTROLE_IND | NUMBER | N | Codigo do indicador. |
| 3 | DT_COMP_ATUAL | DATE | N | Data de competência atual. |
| 4 | VL_DOIS_ANOS_ANT | NUMBER | N | Valor orçado dois anos antes. |
| 5 | QT_DOIS_ANOS_ANT | NUMBER | Y | Quantidade orçada dois anos antes. |
| 6 | VL_ANO_ANT | NUMBER | N | Valor orçado no ano anterior. |
| 7 | QT_ANO_ANT | NUMBER | Y | Quantidade orçada no ano anterior. |
| 8 | VL_FORMULA | NUMBER | Y | Valor calculado pela fórmula. |
| 9 | VL_AJUSTE | NUMBER | Y | Valor ajustado pelo usuário. |
| 10 | TXT_FORMULA | VARCHAR2 | Y | Fórmula do indicador orçamentário. |
| 11 | VL_REALIZADO | NUMBER | N | Valor realizado. |
| 12 | SN_RECALCULADO | VARCHAR2 | N | Recalculado, sim ou nÃ£o. |

---

## MVCONT.ORCA_CONTROLE_IND_SETOR
> Tabela de inclusão do setor no indicador no controle.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_CONTROLE_IND_SETOR | NUMBER | N | Sequencial do controle. |
| 2 | CD_ORCA_CONTROLE | NUMBER | N | Codigo do controle. |
| 3 | CD_SETOR | NUMBER | N | Código do setor. |

---

## MVCONT.ORCA_CONTROLE_MOV
> Base com os valores calculados do orçamento.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_CONTROLE_MOV | NUMBER | N | Sequencial do item do movimento. |
| 2 | CD_ORCA_CONTROLE_SETOR | NUMBER | N | Sequencial do setor no movimento |
| 3 | DT_COMP_ATUAL | DATE | N | Data de competência atual. |
| 4 | VL_ORCADO_CONTR | NUMBER | N | Valor previsto controle. |
| 5 | QT_ORCADO_CONTR | NUMBER | Y | Quantidade previsto controle. |
| 6 | VL_REALIZADO_CONTR | NUMBER | Y | Valor realizado controle |
| 7 | QT_REALIZADO_CONTR | NUMBER | Y | Quantidade realizada controle |
| 8 | DS_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 9 | CD_ORCA_CONTROLE_MOV_AUX | NUMBER | Y | Sequencial do valor orçado no sub-item. |
| 10 | VL_ORCADO_FECHAMENTO | NUMBER | Y | Valor orçado no fechamento do controle. |
| 11 | QT_ORCADO_FECHAMENTO | NUMBER | Y | Quantidade orçada no fechamento do controle. |
| 12 | SN_ALTERADO | VARCHAR2 | Y | Alterado, sim ou não. |

---

## MVCONT.ORCA_CONTROLE_MOV_AUX
> Base valor orçados dos sub-itens relaionados.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_CONTROLE_MOV_AUX | NUMBER | N | Sequencial do controle dos valores de sub-itens. |
| 2 | CD_ORCA_CONTROLE_CONTA_AUX | NUMBER | N | Codigo do controle conta auxiliar. |
| 3 | DT_COMPETENCIA | DATE | Y | Data de competência. |
| 4 | QT_ORCADO | NUMBER | Y | Quantidade orçada. |
| 5 | VL_ORCADO | NUMBER | Y | Valor orçado. |

---

## MVCONT.ORCA_CONTROLE_PECA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_CONTROLE_PECA | NUMBER | N | Sequencial do contrela da peça |
| 2 | CD_ORCA_CONTROLE | NUMBER | N | Código do controle |
| 3 | CD_ORCA_PECA | NUMBER | N | Código da pça |

---

## MVCONT.ORCA_CONTROLE_PENDENCIAS
> Base com as pendências de controles.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_CONTROLE_PEND | NUMBER | N | Código da pendência do controle. |
| 2 | CD_ORCA_CONTROLE | NUMBER | N | Código do controle do movimento. |
| 3 | CD_BASE_ORCA | NUMBER | N | Código da base orçamentária. |
| 4 | CD_SETOR | NUMBER | N | Código do setor. |
| 5 | DT_CRIACAO | DATE | Y | Data da criação do controle. |
| 6 | DT_APROVACAO | DATE | Y | Data de aprovação de controle/setor. |
| 7 | CD_USUARIO | VARCHAR2 | Y | Usuário de aprovação. |
| 8 | CD_USUARIO_SETOR | VARCHAR2 | N | Usuário controller que efetuou a setorização. |
| 9 | TP_SITUACAO | VARCHAR2 | N | Situação do controle (P-Pendente, A-Aprovado, R-Rejeitado) |
| 10 | DT_ATUALIZA | DATE | N |  |

---

## MVCONT.ORCA_CONTROLE_PLANO_PEND
> Base com as pendências dos controles do plano.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_CONTROLE_PLANO_PEND | NUMBER | N | Código da pendência do controle. |
| 2 | CD_ORCA_CONTROLE | NUMBER | N | Código do controle do movimento. |
| 3 | CD_BASE_ORCA | NUMBER | N | Código da base orçamentária. |
| 4 | CD_ORCA_CONTA | NUMBER | N | Código da conta. |
| 5 | CD_SETOR | NUMBER | N | Código do setor. |
| 6 | CD_FORNECEDOR | NUMBER | Y | Código do fornecedor |
| 7 | CD_CONTRATO | NUMBER | Y | Código do contrato |
| 8 | CD_PROJETO | NUMBER | Y | Código do projeto |
| 9 | CD_ORCA_CONTROLE_CONTA | NUMBER | Y | Código do projeto |
| 10 | DT_APROVACAO | DATE | Y | Data de aprovação de controle/setor. |
| 11 | CD_USUARIO_APROVACAO | VARCHAR2 | Y | Usuário de aprovação. |
| 12 | TP_APROVADO | VARCHAR2 | N | Situação da aprovação (P-Pendente, A-Aprovado). |
| 13 | DT_AJUSTE | DATE | Y | Data de aprovação de controle/setor. |
| 14 | CD_USUARIO_AJUSTE | VARCHAR2 | Y | Usuário de aprovação. |
| 15 | DS_JUSTIFICATIVA | VARCHAR2 | Y | Justificativa do item ajustado. |

---

## MVCONT.ORCA_CONTROLE_SETOR
> Base do controle por Setor (Centro de custo)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_CONTROLE_SETOR | NUMBER | N | Sequencial do setor no controle. |
| 2 | CD_ORCA_CONTROLE_CONTA | NUMBER | N | Sequencial da conta no setor. |
| 3 | CD_SETOR | NUMBER | N | Código do setor. |
| 4 | QT_MEDIO | NUMBER | Y | Quantida média utilizada no orçamento. |
| 5 | SN_ORCADO | VARCHAR2 | N |  |

---

## MVCONT.ORCA_EXCECAO
> Tabela de exceção do orçamento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | TP_EXCECAO | VARCHAR2 | N | Tipo da exceção 1 - Convênio |
| 2 | CD_EXCECAO | NUMBER | N | Código da exceção |

---

## MVCONT.ORCA_EXIBE_INFO
> Base para exibir informações.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EXIBE_INFO | VARCHAR2 | N | Código exibir informações. |

---

## MVCONT.ORCA_EXTERNO
> Tabela de manutenção dos dados externos.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_EXTERNO | NUMBER | N | Sequencial do externo. |
| 2 | DT_COMPETENCIA | DATE | N | Data de competência. |
| 3 | VL_EXTERNO | NUMBER | Y | Valor do externo |
| 4 | DS_EXTERNO | VARCHAR2 | Y | Descrição do externo. |
| 5 | CD_ORCA_EXTERNO_LOTE | NUMBER | N | Sequencial da tabela ORCA_EXTERNO_LOTE, FK na tabela de externo |
| 6 | CD_FORNECEDOR | NUMBER | Y | Sequencial da tabela FORNECEDOR, FK na tabela de externo |
| 7 | CD_SETOR | NUMBER | Y | Sequencial da tabela SETOR, FK na tabela de externo |
| 8 | CD_ITEM_RES | NUMBER | Y | Sequencial da tabela ITEM_RES, FK na tabela de externo |
| 9 | CD_MULTI_EMPRESA | NUMBER | Y | Sequencial da tabela MULTI_EMPRESAS, FK na tabela de externo |

---

## MVCONT.ORCA_EXTERNO_LOG

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_EXTERNO_LOG | NUMBER | N |  |
| 2 | CD_LINHA | NUMBER | N |  |
| 3 | DS_MENSAGEM_ERRO | VARCHAR2 | Y |  |

---

## MVCONT.ORCA_EXTERNO_LOTE
> Tabela de inclusão de tipos externos.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_EXTERNO_LOTE | NUMBER | N | Sequencial do lote externo. |
| 2 | DS_ORCA_EXTERNO_LOTE | VARCHAR2 | Y | Descrição do lote externo. |
| 3 | CD_ORCA_TIPO_EXTERNO | NUMBER | N | Sequencial da tabela ORCA_EXTERNO_TIPO, FK na tabela de lote |

---

## MVCONT.ORCA_GRUPO_INDICADOR
> Tabela de inclusão do grupo do indicador no controle.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_GRUPO_INDICADOR | NUMBER | N | Sequencial do grupo. |
| 2 | DS_GRUPO | VARCHAR2 | N | Descrição do Grupo. |
| 3 | SN_ATIVO | VARCHAR2 | N | Indicacor de ativo. S-'SIM' e N-'NÃO' |

---

## MVCONT.ORCA_INDICADOR_COMP
> Tabela de inclusão do complemento do indicador no controle.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_INDICADOR_COMP | NUMBER | N | Sequencial do complemeto. |
| 2 | CD_INDICADOR_ORCAMENTARIO | NUMBER | N | Sequencial da tabela INDICADOR_ORCAMENTARIO, FK na tabela de complemento |
| 3 | VL_ORCA_INDICADOR_COMP | NUMBER | Y | Valor do complemento |
| 4 | DS_ORCA_INDICADOR_COMP | VARCHAR2 | Y | Descrição do complemento |
| 5 | DS_OBSERVACAO | VARCHAR2 | Y | Observação do complemento |

---

## MVCONT.ORCA_LOGS
> LOG genérico do orçamento.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_LOGS | NUMBER | N | Código sequencial do log. |
| 2 | DT_ACAO | DATE | N |  |
| 3 | NM_TABELA | VARCHAR2 | N | Nome da tebala em que foi efetuada a ação. |
| 4 | CD_USUARIO | VARCHAR2 | N | Código do usuário que efetou a ação. |
| 5 | CD_ACAO | VARCHAR2 | N | Nome da ação praticada. |
| 6 | DS_ACAO_ANT | VARCHAR2 | Y | Descrição da ação antes da atualização no banco. |
| 7 | DS_ACAO_POS | VARCHAR2 | Y | Descrição da ação após a atualização no banco. |

---

## MVCONT.ORCA_MOTIVO
> Motivos de Movimentações de Orçamento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MOTIVO | NUMBER | N | Código do Motivo |
| 2 | DS_MOTIVO | VARCHAR2 | N | Descrição do Motivo |
| 3 | SN_ATIVO | VARCHAR2 | N | Registro está ativo |
| 4 | DH_INSERT | DATE | N | Data de Insert do registro |
| 5 | CD_USUARIO_INS | VARCHAR2 | N | Código do Usuário de Insert do registro |
| 6 | DH_UPDATE | DATE | Y | Data do Último Update do registro |
| 7 | CD_USUARIO_UPD | VARCHAR2 | Y | Código do Usuário Último Update do registro |

---

## MVCONT.ORCA_NOTA_EXPLICATIVA
> Tabela de nota explicativa da base orçamentária.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_NOTA_EXPLICATIVA | NUMBER | N | Código sequencial da nota explicativa. |
| 2 | DT_CRIACAO | DATE | N | Data de criação da nota explicativa. |
| 3 | CD_BASE_ORCA | NUMBER | Y | Código do base |
| 4 | CD_MULTI_EMPRESA | NUMBER | Y | Código da empresa |
| 5 | CD_ORCA_CONTA | NUMBER | Y | Código da conta orçamentária. |
| 6 | CD_FORNECEDOR | NUMBER | Y | Código do fornecedor |
| 7 | CD_CONTRATO | NUMBER | Y | Código do contrato |
| 8 | CD_SETOR | NUMBER | Y | Código do setor. |
| 9 | CD_USUARIO | VARCHAR2 | N | Código do usuário. |
| 10 | DS_NOTA_EXPLICATIVA | VARCHAR2 | Y | Descrição da nota explicativa. |
| 11 | CD_PLANO_ESTR | NUMBER | Y | Código do plano estrutural |
| 12 | DT_COMPETENCIA | DATE | Y | Data de Competência |

---

## MVCONT.ORCA_PECA
> Peça orçamentária

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_PECA | NUMBER | N | Código da peça |
| 2 | DS_ORCA_PECA | VARCHAR2 | N | Descrição da peça |
| 3 | SN_ATIVO | VARCHAR2 | N | Indicador de peça ativa |
| 4 | DS_ORIENTACOES | VARCHAR2 | Y | Descreve uma orientação para o uso da peça. |
| 5 | SN_EXIBE_VALORES | VARCHAR2 | Y | Indicador para exibir valores da peça no controle. |
| 6 | SN_EXIBE_FORNECEDOR | VARCHAR2 | N | Indicador para apresentar o fornecedor no controle Sim/Não |
| 7 | SN_EXIBE_CONTRATO | VARCHAR2 | N | Indicador para apresentar o contrato no controle Sim/Não |
| 8 | SN_EXIBE_PROJETO | VARCHAR2 | N | Indicador para apresentar o contrato no controle Sim/Não |
| 9 | SN_EXIBE_INFO | VARCHAR2 | N | Indicador se o valor vai ser preenchido automaticamente no subitem do controle |
| 10 | SN_EDITA_ITEM_CONTROLE | VARCHAR2 | N | Indicador se será possivél alterar os dados do item do controle |
| 11 | SN_ORCADO | VARCHAR2 | N | Indicador para apresentar a peça no controle, opção gestor. |
| 12 | SN_EXIBE_CONTA | VARCHAR2 | N | Indicador para apresentar a conta Sim/Não |
| 13 | SN_ALTERA_SUBITEM | VARCHAR2 | N | Indicador que permite alterar o orçamento no sub-item. Dependente do Orçado desmarcado. |
| 14 | SN_INVESTIMENTO | VARCHAR2 | N | Indica se a peça é de investimento. |
| 15 | SN_SOLICITA_APROVACAO | VARCHAR2 | N | Indicador se a peça solicita aprovação |
| 16 | TP_PROJETAR | VARCHAR2 | Y | Tipo projetar (O=Orçado, null) |
| 17 | NR_MESES | NUMBER | Y | Número de meses de (1, 2, 3... 12). |
| 18 | SN_ESPECIE_PROD | VARCHAR2 | N | Indica se algum registro da tabela ORCA_PECA_ITEM está utilizando 'EPR' na coluna CD_TIPAGEM. |

---

## MVCONT.ORCA_PECA_ITEM
> Itens da Peça orçamentária

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_PECA_ITEM | NUMBER | N | Sequencial do item da peça. |
| 2 | CD_ORCA_PECA | NUMBER | N | Código da peça. |
| 3 | CD_TIPAGEM | VARCHAR2 | N | PRD - Produtos ,SVC - Serviços, PRC - Procedimento Convênio ,PRS - Procedimento SUS , PAC-Pacotes... |
| 4 | CD_ITEM | NUMBER | Y | Código do item. |
| 5 | CD_ORCA_CONTA | NUMBER | N | Código da conta orçamentária. |
| 6 | VL_ITEM | NUMBER | Y | Valor do item. |
| 7 | CD_FORNECEDOR | NUMBER | Y | Código do fornecedor. |
| 8 | CD_CONTRATO | NUMBER | Y | Código do contrato. |
| 9 | CD_ORCA_PECA_ITEM_PAI | NUMBER | Y | Código do item pai. |
| 10 | DS_ITEM | VARCHAR2 | Y | Descrição do item |
| 11 | SN_ATIVO | VARCHAR2 | N | Indicador de item da peça ativo |
| 12 | CD_FILTRO | VARCHAR2 | Y | Código do filtro |
| 13 | SN_VALOR_EDITAVEL | VARCHAR2 | N | Indicador de valor editavel no controle |
| 14 | CD_ORCA_PECA_ITEM_RELACIONADO | NUMBER | Y | Código do item pertencente a outra peça do qual este subitem é relacionado. |
| 15 | QT_MESES_AGENDAMENTO | NUMBER | Y | Quantidade de meses para agendar o orçamento do item. |
| 16 | TXT_FORMULA | VARCHAR2 | Y |  |
| 17 | SN_ERRO | VARCHAR2 | N |  |
| 18 | TP_VISAO_CONTROLE | VARCHAR2 | N | Tipo de visão no controle. VLR-Valor, QTD-Quantidade e AMB-Ambos |
| 19 | SN_VALOR_AUTOMATICO | VARCHAR2 | N | Indicador se o valor vai ser preenchido automaticamente no subitem do controle |
| 20 | CD_INFORMACAO_AUXILIAR | VARCHAR2 | Y | Código da informação auxiliar. |
| 21 | SN_EDITA_RELACIONADO | VARCHAR2 | N | Indicador se item relacionado vai ser editável |
| 22 | CD_ORCA_RATEIO | NUMBER | Y | Código do rateio associado |

---

## MVCONT.ORCA_PECA_ITEM_LOG
> Tabela de log de erro das importações das peças orçamentárias.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_PECA_ITEM_LOG | NUMBER | N | Sequencial da tabela de log de peças orçamentárias. |
| 2 | CD_ERRO | NUMBER | N | Código do erro. |
| 3 | DS_ITEM | VARCHAR2 | Y | Descrição do item. |
| 4 | DS_ERRO | VARCHAR2 | Y | Descrição do Erro. |
| 5 | CD_USUARIO | VARCHAR2 | N | Código do usuário. |
| 6 | DT_ERRO | DATE | Y | Data do erro. |

---

## MVCONT.ORCA_PECA_ITEM_SETOR
> Setor por itens da Peça orçamentária

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_PECA_ITEM | NUMBER | N | Sequencial do item da peça. |
| 2 | CD_SETOR | NUMBER | N | Código do setor. |

---

## MVCONT.ORCA_PECA_VARIAVEIS
> Base guardar as variáveis utilizadas na fórmula da peça.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_VARIAVEL | VARCHAR2 | N | Código da variável |
| 2 | NM_VARIAVEL | VARCHAR2 | N | Nome da variável |
| 3 | DS_VARIAVEL | VARCHAR2 | N | Descrição da variável |
| 4 | SN_VARIAVEL_MV | VARCHAR2 | N | Indica se a variável foi criada pela MV |
| 5 | TXT_QUERY | VARCHAR2 | Y | Query da variável |

---

## MVCONT.ORCA_PERFIL
> Base Perfil do orçamento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_PERFIL | NUMBER | N | Código do perfil no orçamento. |
| 2 | DS_PERFIL | VARCHAR2 | N | Código do usuário. |
| 3 | SN_TRANSFERE | VARCHAR2 | N | Permite transferir valores (S/N) |
| 4 | SN_TODAS_CONTAS | VARCHAR2 | N | Permite visualizar todas as contas (S/N) |
| 5 | SN_TODOS_SETORES | VARCHAR2 | N | Permite visualizar todos os setores (S/N) |
| 6 | SN_SETORIZA | VARCHAR2 | N | Permite setorizar controle (S/N) |
| 7 | SN_APORTA | VARCHAR2 | N | Permite aportar valores (S/N) |
| 8 | SN_APROVA | VARCHAR2 | N | Permite aprovar orçamento (S/N) |

---

## MVCONT.ORCA_PERFIL_USUARIO
> Base Perfil do usuário no orçamento.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_USUARIO | VARCHAR2 | N | Código do perfil no orçamento. |
| 2 | CD_ORCA_PERFIL | NUMBER | N | Código do perfil. |
| 3 | SN_EXIBE_VALORES | VARCHAR2 | Y | Indicador para exibir valores na peça e no controle. |
| 4 | SN_EXIBE_INFO | VARCHAR2 | N | Indicador se o valor vai ser preenchido automaticamente no subitem do controle |

---

## MVCONT.ORCA_PERFIL_USUA_CONTA
> Base Perfil das contas do usuário no orçamento.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_USUARIO | VARCHAR2 | N | Código do perfil no orçamento. |
| 2 | CD_ORCA_CONTA | NUMBER | N | Código da conta orçamentária. |

---

## MVCONT.ORCA_PERFIL_USUA_PROV
> Base Perfil provisório do usuário no orçamento.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_PERFIL_PROV | NUMBER | N | Código do perfil provisório. |
| 2 | CD_USUARIO | VARCHAR2 | N | Código do perfil no orçamento. |
| 3 | CD_ORCA_PERFIL | NUMBER | N | Código do perfil. |
| 4 | DT_VIGENCIA_INI | DATE | N | Data de vigência início. |
| 5 | DT_VIGENCIA_FIM | DATE | N | Data de vigência fim. |

---

## MVCONT.ORCA_PERFIL_USUA_SETOR
> Base Perfil dos setores do usuário no orçamento.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_USUARIO | VARCHAR2 | N | Código do perfil no orçamento. |
| 2 | CD_SETOR | NUMBER | N | Código do setor. |

---

## MVCONT.ORCA_PLANO
> Plano de contas orçamentário

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PLANO | VARCHAR2 | N | Código do plano de contas |
| 2 | DS_PLANO | VARCHAR2 | N | Descrição do plano de contas |
| 3 | DT_VIGENCIA_INI | DATE | N | Data de início da vigência do plano |
| 4 | DT_VIGENCIA_FIM | DATE | Y | Data de final da vigência do plano |
| 5 | SN_ATIVO | VARCHAR2 | N |  |
| 6 | DH_INSERT | DATE | N |  |
| 7 | CD_USUARIO_INS | VARCHAR2 | N |  |
| 8 | DH_UPDATE | DATE | Y |  |
| 9 | CD_USUARIO_UPD | VARCHAR2 | Y |  |
| 10 | CD_MASCARA | VARCHAR2 | Y | Mascara do plano. |
| 11 | TP_PLANO | VARCHAR2 | Y | Tipo de plano G-Gerencial, O-Orçamento |
| 12 | CD_PLANO_CNTA | NUMBER | Y |  |

---

## MVCONT.ORCA_PLANO_EMPR
> Plano de Contas de Orçamento (*M*)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PLANO | VARCHAR2 | N | Código do Plano |
| 2 | CD_MULTI_EMPRESA | NUMBER | N | Código da Empresa |
| 3 | SN_ATIVO | VARCHAR2 | N | Plano ativo para a empresa S/N? |

---

## MVCONT.ORCA_PLANO_ESTR
> Estrutura do Plano de Contas de Orçamento (*M*)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PLANO_ESTR | NUMBER | N | Código do Registro |
| 2 | CD_PLANO | VARCHAR2 | N | Código do Plano |
| 3 | CD_ESTRUTURAL | VARCHAR2 | N | Código Estrutural |
| 4 | DS_ESTRUTURAL | VARCHAR2 | N | Descrição do Estrutural |
| 5 | TP_GRAU | VARCHAR2 | N | Grau da conta (Sintético/Analítico)? |
| 6 | TP_VINCULO | VARCHAR2 | N |  |
| 7 | TP_NATUREZA | VARCHAR2 | N |  |

---

## MVCONT.ORCA_RATEIO
> Tabela contendo o rateio por setor do orçamento.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_RATEIO | NUMBER | N | Código do rateio. |
| 2 | DS_COMPLEMENTO | VARCHAR2 | Y | Descrição do rateio. |
| 3 | SN_ATIVO | VARCHAR2 | N | Ativo: (S=Sim) ou  (N=Não). |
| 4 | TP_ORCA_RATEIO | VARCHAR2 | N | Tipo: (CO=Construção), (OR=Orçado), (RE=Realizado) ou (RO=Orçado/Realizado). |

---

## MVCONT.ORCA_RATEIO_DESTINO
> Tabela contendo o rateio de destino por setor do orçamento.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_RATEIO_ORIGEM | NUMBER | Y | Código do rateio. |
| 2 | CD_SETOR | NUMBER | N | Código do setor. |
| 3 | DT_INICIAL | DATE | N | Data inicial do rateio. |
| 4 | DT_FINAL | DATE | Y | Data final do rateio. |
| 5 | VL_PERCENTUAL | NUMBER | N | Valor do percentual. |
| 6 | CD_ORCA_RATEIO_DESTINO | NUMBER | N | Código do tabela orca rateio destino. |
| 7 | CD_ORCA_RATEIO | NUMBER | N | Código do rateio. |

---

## MVCONT.ORCA_RATEIO_ORIGEM
> Tabela contendo o rateio de destino por setor do orçamento.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_RATEIO_ORIGEM | NUMBER | N | Código do rateio de origem. |
| 2 | CD_ORCA_RATEIO | NUMBER | N | Código do rateio. |
| 3 | CD_ORCA_CONTA | NUMBER | Y | Código da conta orçamentária |
| 4 | CD_SETOR | NUMBER | N | Código do setor. |
| 5 | VL_PERCENTUAL | NUMBER | N | Valor do percentual. |
| 6 | DT_INICIAL | DATE | N | Data inicial do rateio. |
| 7 | DT_FINAL | DATE | Y | Data final do rateio. |

---

## MVCONT.ORCA_RATEIO_USUARIO
> Tabela de usuário do rateio.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_RATEIO_USUARIO | NUMBER | N | Código da tabela orca rateio usuário. |
| 2 | CD_ORCA_RATEIO | NUMBER | N | Código do do rateio. |
| 3 | CD_USUARIO | VARCHAR2 | N | Código do usuário. |

---

## MVCONT.ORCA_REALIZADO
> Base de orçamento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REALIZADO | NUMBER | N | Código do lote de realizado |
| 2 | DS_REALIZADO | VARCHAR2 | N | Descrição do realizado |
| 3 | CD_ANO | NUMBER | N | Código do ano |
| 4 | CD_MULTI_EMPRESA | NUMBER | N | Código da empresa |
| 5 | CD_ORCA_CONTA | NUMBER | Y |  |
| 6 | CD_CENTRO | NUMBER | Y |  |
| 7 | SN_SOBREPOR | VARCHAR2 | N | Manter registros existentes ou apagar |
| 8 | DT_ABERTURA | DATE | N | Data da abertura |
| 9 | DT_FECHAMENTO | DATE | Y | Data do fechamento |
| 10 | CD_USUARIO_ABER | VARCHAR2 | N | Código do usuário de abertura |
| 11 | CD_USUARIO_FECH | VARCHAR2 | Y | Código do usuário de fechamento |

---

## MVCONT.ORCA_REALIZADO_ITEM
> Base de orçamento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REALIZADO_ITEM | NUMBER | N | Código do item da base |
| 2 | CD_REALIZADO | NUMBER | N | Código do base |
| 3 | CD_ANO | NUMBER | N | Código do ano exercício |
| 4 | CD_MULTI_EMPRESA | NUMBER | N | Código da empresa |
| 5 | CD_PROJETO | NUMBER | Y | Código do projeto |
| 6 | CD_ORCA_CONTA | NUMBER | N | Código da conta de orçamento |
| 7 | CD_CENTRO | NUMBER | N | Código do centro de custo |
| 8 | VL_REALIZADO_M01 | NUMBER | N | Valor realizado em Janeiro |
| 9 | VL_REALIZADO_M02 | NUMBER | N | Valor realizado em Fevereiro |
| 10 | VL_REALIZADO_M03 | NUMBER | N | Valor realizado em Março |
| 11 | VL_REALIZADO_M04 | NUMBER | N | Valor realizado em Abril |
| 12 | VL_REALIZADO_M05 | NUMBER | N | Valor realizado em Maio |
| 13 | VL_REALIZADO_M06 | NUMBER | N | Valor realizado em Junho |
| 14 | VL_REALIZADO_M07 | NUMBER | N | Valor realizado em Julho |
| 15 | VL_REALIZADO_M08 | NUMBER | N | Valor realizado em Agosto |
| 16 | VL_REALIZADO_M09 | NUMBER | N | Valor realizado em Setembro |
| 17 | VL_REALIZADO_M10 | NUMBER | N | Valor realizado em Outubro |
| 18 | VL_REALIZADO_M11 | NUMBER | N | Valor realizado em Novembro |
| 19 | VL_REALIZADO_M12 | NUMBER | N | Valor realizado em Dezembro |

---

## MVCONT.ORCA_REALIZADO_MOV
> Tabela com as origens do realizado.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_REALIZADO_MOV | NUMBER | N | Sequencial da movimentação. |
| 2 | CD_ORCA_CONTA | NUMBER | N | Código da conta orçamentária. |
| 3 | CD_SETOR | NUMBER | N | Código do setor. |
| 4 | CD_FORNECEDOR | NUMBER | Y | Código do fornecedor. |
| 5 | CD_CONTRATO | NUMBER | Y | Código do contrato. |
| 6 | CD_PROJETO | NUMBER | Y | Código do projeto. |
| 7 | CD_ORIGEM_DOCMTO | VARCHAR2 | N | Código da origem da alçada. Indica qual o sistema que gerou movimento. |
| 8 | NR_DOCUMENTO | VARCHAR2 | N | Número do documento. Identificador do documento no sistema de origem. |
| 9 | CD_NATUREZA | VARCHAR2 | N | Código da natureza. C-Crédito/D-Débito |
| 10 | DT_MOVIMENTO | DATE | N | Data do movimento. |
| 11 | VL_MOVIMENTO | NUMBER | N | Valor do movimento |
| 12 | CD_BASE_ORCA_REALIZADO | NUMBER | N | Código identificador do realizado. |

---

## MVCONT.ORCA_TIPO_CENTRO
> Tipos de Centros de Custos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIPO_CENTRO | VARCHAR2 | N |  |
| 2 | NM_CONTA | VARCHAR2 | N |  |
| 3 | SN_ATIVO | VARCHAR2 | N | Registro está ativo |
| 4 | DH_INSERT | DATE | N | Data de Insert do registro |
| 5 | CD_USUARIO_INS | VARCHAR2 | N | Código do Usuário de Insert do registro |
| 6 | DH_UPDATE | DATE | Y | Data do Último Update do registro |
| 7 | CD_USUARIO_UPD | VARCHAR2 | Y | Código do Usuário Último Update do registro |

---

## MVCONT.ORCA_TIPO_CONTA
> Tipos de Contas de Orçamento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIPO_CONTA | VARCHAR2 | N | Código do Tipo de Contas de Orçamento |
| 2 | NM_TIPO_CONTA | VARCHAR2 | N | Descrição do Tipo da Conta de Orçamento |
| 3 | TP_CONTA | VARCHAR2 | N | Tipo Conta |
| 4 | SN_ATIVO | VARCHAR2 | N | Registro está ativo |
| 5 | DH_INSERT | DATE | N | Data de Insert do registro |
| 6 | CD_USUARIO_INS | VARCHAR2 | N | Código do Usuário de Insert do registro |
| 7 | DH_UPDATE | DATE | Y | Data do ultimo Update do registro |
| 8 | CD_USUARIO_UPD | VARCHAR2 | Y | Código do Usuário ?timo Update do registro |

---

## MVCONT.ORCA_TIPO_EXTERNO
> Tabela de inclusão de tipos externos.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_TIPO_EXTERNO | NUMBER | N | Sequencial do tipo externo. |
| 2 | DS_ORCA_TIPO_EXTERNO | VARCHAR2 | Y | Descrição do tipo externo. |
| 3 | SN_ATIVO | VARCHAR2 | Y | Indica se o tipo exteno está ativo ou não DEFAULT S |

---

## MVCONT.ORCA_VARIAVEL
> Variáveis de Planilhas

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_VARIAVEL | VARCHAR2 | N | Identificação do registro |
| 2 | DS_ORCA_VARIAVEL | VARCHAR2 | N | Descrição da variável |
| 3 | QT_ORCA_VARIAVEL | NUMBER | Y | Quantidade padrão |
| 4 | VL_ORCA_VARIAVEL | NUMBER | Y | Valor padrão |
| 5 | SN_EMPRESA | VARCHAR2 | N | Preencher empresa |
| 6 | SN_ANO | VARCHAR2 | N | Preencher ano |
| 7 | SN_MES | VARCHAR2 | N | Distribuir nos meses |
| 8 | DT_INSERT | DATE | N | Momento da inserção do registro |
| 9 | CD_USUARIO_INS | VARCHAR2 | N | Usuário do momento de inserção |

---

## MVCONT.ORCA_VARIAVEL_CNTA
> Contas relacionadas com variáveis

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_VARIAVEL | VARCHAR2 | N | Identificação da variável |
| 2 | CD_ORCA_CONTA | NUMBER | N | Identificação da conta |
| 3 | SN_PRINCIPAL | VARCHAR2 | N | Conta é a principal da variável |
| 4 | QT_MESES_PRINCIPAL | NUMBER | N | Quantos meses Antes(-)/Depois(+) da entrada na conta principal |
| 5 | QT_MESES | NUMBER | N | Quantos meses se repete na conta secundária |
| 6 | DS_FORMULA | VARCHAR2 | Y | Fórmula de cálculo da conta secundária |
| 7 | DT_INSERT | DATE | N | Momento da inserção do registro |
| 8 | CD_USUARIO_INS | VARCHAR2 | N | Usuário do momento de inserção |

---

## MVCONT.ORCA_WIZARD_AUX
> Tabela auxiliar para montagem do relatório do Wizard.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORCA_WIZARD_AUX | NUMBER | N | Código identificador da tabela. |
| 2 | CD_NIVEL | NUMBER | Y | Código identificador do nível. |
| 3 | SN_APRESENTA_DECIMAL | VARCHAR2 | Y | Identificador de formatação com casas decimais. |
| 4 | DS_EVENTO | VARCHAR2 | Y | Descrição do Evento. |
| 5 | VL_ITEM0 | NUMBER | Y | Campo que reberá os valores |
| 6 | VL_ITEM1 | NUMBER | Y | Campo que reberá os valores |
| 7 | VL_ITEM2 | NUMBER | Y | Campo que reberá os valores |
| 8 | VL_ITEM3 | NUMBER | Y | Campo que reberá os valores |
| 9 | VL_ITEM4 | NUMBER | Y | Campo que reberá os valores |
| 10 | VL_ITEM5 | NUMBER | Y | Campo que reberá os valores |
| 11 | VL_ITEM6 | NUMBER | Y | Campo que reberá os valores |
| 12 | VL_ITEM7 | NUMBER | Y | Campo que reberá os valores |
| 13 | VL_ITEM8 | NUMBER | Y | Campo que reberá os valores |
| 14 | VL_ITEM9 | NUMBER | Y | Campo que reberá os valores |
| 15 | VL_ITEM10 | NUMBER | Y | Campo que reberá os valores |
| 16 | VL_ITEM11 | NUMBER | Y | Campo que reberá os valores |
| 17 | CD_CONTABIL_GRUPO | NUMBER | Y | Código do Grupo contabil. |
| 18 | CD_GRUPO_REF | NUMBER | Y | Código do grupo de referencia. |
| 19 | DS_CONTABIL_GRUPO | VARCHAR2 | Y | Descrição do Grupo contabil. |
| 20 | DS_OPERACAO | VARCHAR2 | Y | Descrição da operação. |
| 21 | CD_USUARIO | VARCHAR2 | Y | Código do usuário. |
| 22 | CD_IDENTIFICADOR | VARCHAR2 | Y | Identificador de inserção. |

---

## MVCONT.V_ORCA_CONTROLE_SETOR_CONTAS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_USUARIO | VARCHAR2 | Y |  |
| 2 | SN_TODAS_CONTAS | VARCHAR2 | Y |  |
| 3 | SN_TODOS_SETORES | VARCHAR2 | Y |  |
| 4 | SN_SETORIZA | VARCHAR2 | Y |  |
| 5 | SN_APORTA | VARCHAR2 | Y |  |
| 6 | SN_APROVA | VARCHAR2 | Y |  |
| 7 | CD_SETOR | NUMBER | Y |  |
| 8 | CD_ORCA_CONTA | NUMBER | Y |  |
