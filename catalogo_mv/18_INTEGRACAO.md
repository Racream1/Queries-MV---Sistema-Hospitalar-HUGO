# 18 - Integracao e Interoperabilidade

> APIs, HL7, FUSION_, INTEGRA_, IMV_

## Resumo

- **Tabelas**: 749
- **Owners**: APOIOINTEGRADORCLIENT, DBAMV, DBASW, FUSION, FUSION_INTEGRACAO, GTP, GTP_INTS, MVINTEGRA, REMWEB

---

## APOIOINTEGRADORCLIENT.CONFIGURACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | DATABASE_URL | VARCHAR2 | N |  |
| 3 | DATABASE_SCHEMA | VARCHAR2 | N |  |
| 4 | DATA_BASE_PORT | VARCHAR2 | N |  |
| 5 | DATABASE_USER | VARCHAR2 | N |  |
| 6 | DATABASE_PWD | VARCHAR2 | N |  |
| 7 | DRIVER_CLASS_NAME | VARCHAR2 | Y |  |
| 8 | DATABASE_TIMEZONE | VARCHAR2 | Y |  |

---

## APOIOINTEGRADORCLIENT.DATABASECHANGELOG

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | VARCHAR2 | N |  |
| 2 | AUTHOR | VARCHAR2 | N |  |
| 3 | FILENAME | VARCHAR2 | N |  |
| 4 | DATEEXECUTED | DATE | N |  |
| 5 | ORDEREXECUTED | NUMBER | N |  |
| 6 | EXECTYPE | VARCHAR2 | N |  |
| 7 | MD5SUM | VARCHAR2 | Y |  |
| 8 | DESCRIPTION | VARCHAR2 | Y |  |
| 9 | COMMENTS | VARCHAR2 | Y |  |
| 10 | TAG | VARCHAR2 | Y |  |
| 11 | LIQUIBASE | VARCHAR2 | Y |  |
| 12 | CONTEXTS | VARCHAR2 | Y |  |
| 13 | LABELS | VARCHAR2 | Y |  |
| 14 | DEPLOYMENT_ID | VARCHAR2 | Y |  |

---

## APOIOINTEGRADORCLIENT.DATABASECHANGELOGLOCK

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | LOCKED | NUMBER | N |  |
| 3 | LOCKGRANTED | DATE | Y |  |
| 4 | LOCKEDBY | VARCHAR2 | Y |  |

---

## APOIOINTEGRADORCLIENT.HIST_ENVIO_AUDITORIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | ENTIDADE | VARCHAR2 | Y |  |
| 3 | ID_EMPRESA | NUMBER | Y |  |
| 4 | CRON_EXPRESSION | VARCHAR2 | Y |  |
| 5 | DATA_HORA_ENVIO | DATE | Y |  |
| 6 | QRY_VERIFICA_NOVOS_REGISTROS | VARCHAR2 | Y |  |
| 7 | QRY_BUSCA_NOVOS_REGISTROS | VARCHAR2 | Y |  |
| 8 | SUCESSO_ENVIO | NUMBER | Y |  |
| 9 | MENSAGEM_RETORNO_ENVIO | VARCHAR2 | Y |  |
| 10 | VERIFICACAO_POR_ID | NUMBER | Y |  |
| 11 | NOME_COLUNA_ID | VARCHAR2 | Y |  |
| 12 | NOME_COLUNA_DATA | VARCHAR2 | Y |  |
| 13 | PATTERN_DATA | VARCHAR2 | Y |  |
| 14 | INTEGRADOR_SERVER_SERVICE | VARCHAR2 | Y |  |
| 15 | UTILIZA_PARAMETRO | NUMBER | Y |  |
| 16 | PARAMETRO_ENVIO_MAX_REGISTRO | NUMBER | Y |  |
| 17 | OPERACAO | VARCHAR2 | Y |  |
| 18 | DATA_LIMITE | DATE | Y |  |
| 19 | SISTEMA_DESTINO | NUMBER | Y |  |

---

## APOIOINTEGRADORCLIENT.HIST_ENVIO_TAREFA_AGENDADA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | ENTIDADE | VARCHAR2 | N |  |
| 3 | ID_EMPRESA | NUMBER | N |  |
| 4 | CRON_EXPRESSION | VARCHAR2 | Y |  |
| 5 | DATA_HORA_ENVIO | DATE | N |  |
| 6 | QRY_VERIFICA_NOVOS_REGISTROS | VARCHAR2 | Y |  |
| 7 | QRY_BUSCA_NOVOS_REGISTROS | VARCHAR2 | Y |  |
| 8 | SUCESSO_ENVIO | NUMBER | N |  |
| 9 | MENSAGEM_RETORNO_ENVIO | VARCHAR2 | N |  |
| 10 | NOME_COLUNA_DATA | VARCHAR2 | Y |  |
| 11 | NOME_COLUNA_ID | VARCHAR2 | Y |  |
| 12 | VERIFICACAO_POR_ID | NUMBER | N |  |
| 13 | PATTERN_DATA | VARCHAR2 | Y |  |
| 14 | INTEGRADOR_SERVER_SERVICE | VARCHAR2 | N |  |
| 15 | UTILIZA_PARAMETRO | NUMBER | N |  |
| 16 | PARAMETRO_ENVIO_MAX_REGISTRO | NUMBER | Y |  |
| 17 | OPERACAO | VARCHAR2 | Y |  |
| 18 | DATA_LIMITE | DATE | Y |  |
| 19 | SISTEMA_DESTINO_ID | NUMBER | N |  |

---

## APOIOINTEGRADORCLIENT.JHI_AUTHORITY

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NAME | VARCHAR2 | N |  |

---

## APOIOINTEGRADORCLIENT.JHI_PERSISTENT_AUDIT_EVENT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | EVENT_ID | NUMBER | N |  |
| 2 | PRINCIPAL | VARCHAR2 | N |  |
| 3 | EVENT_DATE | DATE | Y |  |
| 4 | EVENT_TYPE | VARCHAR2 | Y |  |

---

## APOIOINTEGRADORCLIENT.JHI_PERSISTENT_AUDIT_EVT_DATA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | EVENT_ID | NUMBER | N |  |
| 2 | NAME | VARCHAR2 | N |  |
| 3 | VALUE | VARCHAR2 | Y |  |

---

## APOIOINTEGRADORCLIENT.JHI_USER

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | LOGIN | VARCHAR2 | N |  |
| 3 | PASSWORD_HASH | VARCHAR2 | N |  |
| 4 | FIRST_NAME | VARCHAR2 | Y |  |
| 5 | LAST_NAME | VARCHAR2 | Y |  |
| 6 | EMAIL | VARCHAR2 | Y |  |
| 7 | IMAGE_URL | VARCHAR2 | Y |  |
| 8 | ACTIVATED | NUMBER | N |  |
| 9 | LANG_KEY | VARCHAR2 | Y |  |
| 10 | ACTIVATION_KEY | VARCHAR2 | Y |  |
| 11 | RESET_KEY | VARCHAR2 | Y |  |
| 12 | CREATED_BY | VARCHAR2 | N |  |
| 13 | CREATED_DATE | DATE | Y |  |
| 14 | RESET_DATE | DATE | Y |  |
| 15 | LAST_MODIFIED_BY | VARCHAR2 | Y |  |
| 16 | LAST_MODIFIED_DATE | DATE | Y |  |

---

## APOIOINTEGRADORCLIENT.JHI_USER_AUTHORITY

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | USER_ID | NUMBER | N |  |
| 2 | AUTHORITY_NAME | VARCHAR2 | N |  |

---

## APOIOINTEGRADORCLIENT.SCRIPT_EXECUCAO_LOCAL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | CHAVE_ENTIDADE | VARCHAR2 | N |  |
| 3 | SQL_OPERACAO | VARCHAR2 | N |  |
| 4 | TAREFA_EXECUCAO_LOCAL_ID | NUMBER | N |  |
| 5 | SCRIPT_EXECUCAO_LOCAL_ID | NUMBER | Y |  |
| 6 | SQL_CONSULTA_PK | VARCHAR2 | Y |  |
| 7 | EXECUCAO_INDEPENDENTE | NUMBER | N |  |
| 8 | RETORNO_PROCEDURE | NUMBER | Y |  |

---

## APOIOINTEGRADORCLIENT.SOLICITACAO_DE_COMPRA_PRODUTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SOL_COM | NUMBER | N |  |
| 2 | CD_SOL_COM_INTEGRA | VARCHAR2 | Y |  |
| 3 | COMPRA_URGENCIA | VARCHAR2 | N |  |
| 4 | DT_SOL_COM | VARCHAR2 | Y |  |
| 5 | TITULO | NUMBER | N |  |
| 6 | DT_MAXIMA | VARCHAR2 | Y |  |
| 7 | DT_MAXIMA_BIONEXO | VARCHAR2 | Y |  |
| 8 | CD_SETOR | NUMBER | N |  |
| 9 | CD_USUARIO | VARCHAR2 | Y |  |
| 10 | NM_SOLICITANTE | VARCHAR2 | N |  |
| 11 | CD_MOT_PED | NUMBER | N |  |
| 12 | CD_COTADOR | NUMBER | Y |  |
| 13 | CD_ESTOQUE | NUMBER | N |  |
| 14 | TP_SOL_COM | VARCHAR2 | N |  |
| 15 | SN_URGENTE | VARCHAR2 | N |  |
| 16 | TP_SITUACAO | VARCHAR2 | N |  |
| 17 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 18 | SN_OPME | VARCHAR2 | N |  |
| 19 | SETOR_SOLICITANTE | VARCHAR2 | Y |  |
| 20 | DS_MOT_PED | VARCHAR2 | Y |  |
| 21 | DS_COTADOR | VARCHAR2 | Y |  |
| 22 | DS_ESTOQUE | VARCHAR2 | Y |  |
| 23 | CD_ESPECIE | NUMBER | N |  |
| 24 | CD_ESPECIE_INTEGRA | VARCHAR2 | Y |  |
| 25 | DS_ESPECIE | VARCHAR2 | N |  |
| 26 | CD_CLASSE | NUMBER | N |  |
| 27 | CD_CLASSE_INTEGRA | VARCHAR2 | Y |  |
| 28 | DS_CLASSE | VARCHAR2 | N |  |
| 29 | CD_SUB_CLA | NUMBER | N |  |
| 30 | CD_SUB_CLA_INTEGRA | VARCHAR2 | Y |  |
| 31 | DS_SUB_CLA | VARCHAR2 | N |  |
| 32 | CD_PRODUTO | NUMBER | N |  |
| 33 | CD_PRODUTO_INTEGRA | VARCHAR2 | Y |  |
| 34 | DS_PRODUTO | VARCHAR2 | N |  |
| 35 | CD_UNIDADE | VARCHAR2 | N |  |
| 36 | NM_ITUNIDADE | VARCHAR2 | N |  |
| 37 | DS_DICA_DA_COMPRA | VARCHAR2 | Y |  |
| 38 | QT_SOLICITADA | NUMBER | N |  |
| 39 | CD_SEQ_INTEGRA | NUMBER | Y |  |
| 40 | NR_PARCELA | NUMBER | Y |  |
| 41 | DT_PARCELA | VARCHAR2 | Y |  |
| 42 | DT_PARCELA_INTERVALO | VARCHAR2 | Y |  |
| 43 | QT_SOLIC_PARCELA | NUMBER | Y |  |
| 44 | LOGIN | VARCHAR2 | Y |  |
| 45 | SENHA | VARCHAR2 | Y |  |
| 46 | DT_INTEGRA_SOLICITACAO | VARCHAR2 | Y |  |
| 47 | DT_PROGRAMACAO_ENTREGA | VARCHAR2 | Y |  |
| 48 | QT_PROGRAMACAO_ENTREGA | NUMBER | Y |  |
| 49 | CD_SICAN | VARCHAR2 | Y |  |
| 50 | CODIGO_CATEGORIA | NUMBER | N |  |
| 51 | DT_INTEGRA_PRODUTO | DATE | Y |  |
| 52 | CD_PRODUTO_MESTRE | NUMBER | Y |  |
| 53 | SN_MESTRE | VARCHAR2 | Y |  |
| 54 | PRODUTO_ATIVO | NUMBER | Y |  |
| 55 | VL_CUSTO_MEDIO | NUMBER | Y |  |
| 56 | VL_PRECO_REFERENCIA | VARCHAR2 | Y |  |
| 57 | MARCAS_PRODUTO | VARCHAR2 | Y |  |
| 58 | CD_EMBALAGEM | VARCHAR2 | N |  |
| 59 | DS_EMBALAGEM | VARCHAR2 | N |  |
| 60 | CD_UNI_PRO | NUMBER | N |  |
| 61 | NOME_UNIDADE_REFERENCIA | VARCHAR2 | N |  |
| 62 | VL_FATOR | NUMBER | N |  |
| 63 | LIST_CD_EMBALAGEM | VARCHAR2 | N |  |
| 64 | LIST_DS_EMBALAGEM | VARCHAR2 | N |  |
| 65 | LIST_CD_UNI_PRO | NUMBER | N |  |
| 66 | LIST_CD_UNIDADE | VARCHAR2 | Y |  |
| 67 | LIST_VL_FATOR | NUMBER | N |  |
| 68 | LIST_TP_UNIDADE_PRODUTO | VARCHAR2 | N |  |
| 69 | LIST_UNIDADE_ATIVA | VARCHAR2 | N |  |
| 70 | DS_ESPECIFICACAO | VARCHAR2 | Y |  |
| 71 | DT_ALT_USUARIO | VARCHAR2 | Y |  |
| 72 | CD_MULTI_EMPRESA | NUMBER | Y |  |

---

## APOIOINTEGRADORCLIENT.TAREFA_AGENDADA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | ENTIDADE | VARCHAR2 | N |  |
| 3 | ID_EMPRESA | NUMBER | N |  |
| 4 | CRON_EXPRESSION | VARCHAR2 | Y |  |
| 5 | ID_ULTIMA_VERIFICACAO | NUMBER | Y |  |
| 6 | DATA_HORA_ULTIMA_VERIFICACAO | DATE | Y |  |
| 7 | QRY_VERIFICA_NOVOS_REGISTROS | VARCHAR2 | Y |  |
| 8 | QRY_BUSCA_NOVOS_REGISTROS | VARCHAR2 | Y |  |
| 9 | INTEGRADOR_SERVER_URL | VARCHAR2 | N |  |
| 10 | NOME_COLUNA_DATA | VARCHAR2 | Y |  |
| 11 | NOME_COLUNA_ID | VARCHAR2 | Y |  |
| 12 | VERIFICACAO_POR_ID | NUMBER | N |  |
| 13 | PATTERN_DATA | VARCHAR2 | Y |  |
| 14 | INTEGRADOR_SERVER_SERVICE | VARCHAR2 | N |  |
| 15 | USUARIO_API_SERVER | VARCHAR2 | N |  |
| 16 | SENHA_API_SERVER | VARCHAR2 | N |  |
| 17 | UTILIZA_PARAMETRO | NUMBER | N |  |
| 18 | PARAMETRO_ENVIO_MAX_REGISTRO | NUMBER | N |  |
| 19 | OPERACAO | VARCHAR2 | Y |  |
| 20 | DATA_LIMITE | DATE | Y |  |
| 21 | SISTEMA_DESTINO_ID | NUMBER | N |  |
| 22 | ATIVO | NUMBER | Y |  |
| 23 | PROXIMA_TAREFA_AGENDADA_ID | NUMBER | Y |  |
| 24 | HABILITAR_NOTIFICACAO_WEBHOOK | NUMBER | N |  |

---

## APOIOINTEGRADORCLIENT.TAREFA_EXECUCAO_LOCAL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | ENTIDADE | VARCHAR2 | N |  |
| 3 | OPERACAO | VARCHAR2 | N |  |

---

## DBAMV.APARELHO_ONCOLOGIA
> Lista de aparelhos utilizados no processo quimioterapico

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_APARELHO_ONCOLOGIA | VARCHAR2 | N | Codigo identificador do aparelho do tratamento quimioterapico |
| 2 | DS_APARELHO_ONCOLOGIA | VARCHAR2 | N | Descric?o do aparelho do tratamento quimioterapico |

---

## DBAMV.APARELHO_ONCOLOG_LAUD_SIA_APAC
> Cadastro de Aparelhos utilizados na Radioterapia.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LAUDO | NUMBER | N | Codigo do Laudo APAC. |
| 2 | CD_APARELHO_ONCOLOGIA | VARCHAR2 | N | Codigo identificador do Aparelho Radioterapico. |

---

## DBAMV.ASSOCIACAO
> Lista de associac?es no tratamento quimioterapico

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ASSOCIACAO | VARCHAR2 | N | Codigo identificador de associacao no tratamento quimioterapico |
| 2 | DS_ASSOCIACAO | VARCHAR2 | N | Descric?o da associacao no tratamento quimioterapico |
| 3 | CD_CODIGO_SECRETARIA | VARCHAR2 | Y | Codigo especifico para utilizac?o na secretaria de saude. |

---

## DBAMV.ASSOCIACAO_LAUDO_SIA_APAC
> Tratamentos Associados ao tratamento da Radioterapia.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LAUDO | NUMBER | N | Codigo do laudo APAC. |
| 2 | CD_ASSOCIACAO | VARCHAR2 | N | Codigo do tratamento associado ao tratamento da Radioterapia. |

---

## DBAMV.CAPITULO_CID
> Tabela que armazena os capitulos do CID

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CAPITULO_CID | NUMBER | N | Codigo do capitulo do CID |
| 2 | DS_CAPITULO_CID | VARCHAR2 | N | Descric?o do capitulo do CID |
| 3 | CD_CAPITULO_INICIAL | VARCHAR2 | N | Codigo do capitulo inicial do CID |
| 4 | CD_CAPITULO_FINAL | VARCHAR2 | N | Codigo do capitulo final do CID |

---

## DBAMV.CARTA_CORRECAO_SPED
> Tabela de Integracao de SPED

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CARTA_CORRECAO | NUMBER | N | Codigo sequencial da tabela |
| 2 | CD_USUARIO | VARCHAR2 | N | Usuario que realizou a operacao |
| 3 | CD_ENT_PRO | NUMBER | Y | Codigo da entrada |
| 4 | CD_MVTO_ESTOQUE | NUMBER | Y | Codigo da saida |
| 5 | CD_DEV_FOR | NUMBER | Y | Codigo da devolucao de compra |
| 6 | CD_OS | NUMBER | Y | Codigo da ordem de servico |
| 7 | DH_CADASTRO | DATE | N | Data/Hora da operacao |
| 8 | DS_CARTA_CORRECAO | VARCHAR2 | N | Descritivo da carta de correcao |
| 9 | CD_SEQ_INTEGRA | NUMBER | Y | Codigo da integracao do AVALARA |
| 10 | DT_INTEGRA | DATE | Y | CAMPO PARA GRAVAR A DATA DE INTEGRAÇÃO DA CARTA DE CORREÇÃO |

---

## DBAMV.CARTEIRAS_CAPITATION
> Tabela para iportação das carteiras utilizadas na regra capitation

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REGRA_CAPITATION | NUMBER | N | Código da regra capitation onde a importação foi feita |
| 2 | NR_CARTEIRA | VARCHAR2 | N | Numero da Carteira importada na regra capitation |
| 3 | NM_PACIENTE | VARCHAR2 | N | Nome do paciente associado a carteira |
| 4 | DT_IMPORTACAO | DATE | N | data onde a importação foi realizada |

---

## DBAMV.DADOS_AVISO_ANTERIOR
> Dados Anteriores ao Aviso de Cirurgia

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AVISO_CIRURGIA | NUMBER | N | Codigo do aviso da cirurgia |
| 2 | NR_CARTEIRA | VARCHAR2 | Y | Numero da cateira do convenio |
| 3 | CD_CONVENIO | NUMBER | Y | Codigo do convenio |
| 4 | CD_CON_PLAN | NUMBER | Y | Codigo do plano do convenio |
| 5 | NM_PACIENTE | VARCHAR2 | Y | Nome do paciente |
| 6 | DS_OBS_AVISO | VARCHAR2 | Y | Descritivo da Observacao do aviso |
| 7 | DH_HORA_CIRURGIA | DATE | Y | Data e hora da cirurgia |

---

## DBAMV.DADOS_BALANCETE
> TABELA DE DADOS DO BALANCETE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REDUZIDO | NUMBER | Y | CODIGO REDUZIDO DA CONTA |
| 2 | CD_CONTABIL | VARCHAR2 | Y | CODIGO ESTRUTURAL DA CONTA |
| 3 | CD_GRUPO_CONTA | NUMBER | Y | CÓDIGO DO GRUPO DA CONTA |
| 4 | TP_NATUREZA | VARCHAR2 | Y | NATUREZA DA CONTA |
| 5 | TOTAL_DEVEDOR_ANT | NUMBER | Y | TOTAL DEVEDOR ANTERIOR |
| 6 | TOTAL_CREDOR_ANT | NUMBER | Y | TOTAL CREDOR ANTEROR |
| 7 | DS_CONTA | VARCHAR2 | Y | DESCRICAO DA CONTA |
| 8 | CD_GRAU | NUMBER | Y | GRAU DA CONTA |
| 9 | TP_CONTA | VARCHAR2 | Y | TIPO DE CONTA |
| 10 | CD_PLANO_ESTR | NUMBER | Y | CÓDIGO REDUZIDO DA CONTA |
| 11 | TP_NATUREZA_SALDO_ANT | VARCHAR2 | Y | NATUREZA DO SALDO ANTERIOR |
| 12 | TP_NATUREZA_SALDO_ATU | VARCHAR2 | Y | NATUREZA DO SALDO ATUAL |
| 13 | TP_CONTA_CONTABIL | VARCHAR2 | Y | TIPO DE CONTA CONTABIL |
| 14 | VL_SALDO_ANT | NUMBER | Y | SALDO ANTERIOR |
| 15 | VL_DEBITO | NUMBER | Y | VALOR DEBITO DA COMPOSICAO |
| 16 | VL_CREDITO | NUMBER | Y | VALOR CREDITO DA COMPOSICAO |
| 17 | VL_MOVIMENTO | NUMBER | Y | VALOR DE MOVIMENTACAO |
| 18 | VL_SALDO_ATU | NUMBER | Y | SALDO ATUAL |
| 19 | CD_USUARIO | VARCHAR2 | Y | CODIGO DO USUARIO |
| 20 | DT_HORA_INICIO_CARGA | DATE | Y | DATA DE INICIO DA CARGA |
| 21 | DT_HORA_FIM_CARGA | DATE | Y | DATA DE FIM DA CARGA |
| 22 | TEMPO_CARGA | VARCHAR2 | Y | TEMPO DECORRIDO |
| 23 | DT_HORA_INICIO_LEITURA | DATE | Y | DATA DE INICIO DA LEITURA |
| 24 | DT_HORA_FIM_LEITURA | DATE | Y | DATA DE FIM DA LEITURA |
| 25 | TEMPO_LEITURA | VARCHAR2 | Y | TEMPO DE LEITURA |
| 26 | CAMPO_AUXILIAR | VARCHAR2 | Y | CODIGO DO AUXILIAR |

---

## DBAMV.DADOS_BALANCETE_AUXILIAR
> Tabela de Dados do Balancete Auxiliar

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REDUZIDO | VARCHAR2 | Y | Codigo Reduzido da conta |
| 2 | CD_AUXILIAR | NUMBER | Y | Codigo Conta Auxiliar |
| 3 | DS_AUXILIAR | VARCHAR2 | Y | Descricao da conta auxiliar |
| 4 | VL_SALDO_ANTERIOR | NUMBER | Y | Saldo Anterior |
| 5 | VL_DEBITO | NUMBER | Y | Valor Debito da Composicao |
| 6 | VL_CREDITO | NUMBER | Y | Valor Credito da Composicao |
| 7 | VL_MOVIMENTO | NUMBER | Y | Valor de Movimentacao |
| 8 | VL_SALDO_MES | NUMBER | Y | Saldo Atual |
| 9 | CD_USUARIO | VARCHAR2 | Y | Saldo Atual |

---

## DBAMV.DADOS_BALANCETE_SETOR
> Tabela de Dados do Balancete Setor

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REDUZIDO | VARCHAR2 | Y | Codigo Reduzido da conta |
| 2 | CD_CONTABIL | VARCHAR2 | Y | Codigo Estrutural da Conta |
| 3 | CD_SETOR | NUMBER | Y | Codigo do Setor |
| 4 | NM_SETOR | VARCHAR2 | Y | Nome do Setor |
| 5 | DS_CONTA | VARCHAR2 | Y | Descricao da conta |
| 6 | CD_GRAU | NUMBER | Y | Grau da Conta |
| 7 | TP_CONTA | VARCHAR2 | Y | Tipo de Conta |
| 8 | TP_CONTA_CONTABIL | VARCHAR2 | Y | Tipo de conta contabil |
| 9 | CD_GRUPO_CONTA | NUMBER | Y | Cdigo do grupo da conta |
| 10 | VL_SALDO_ANT | NUMBER | Y | Saldo Anterior |
| 11 | VL_DEBITO | NUMBER | Y | Valor Debito da Composicao |
| 12 | VL_CREDITO | NUMBER | Y | Valor Credito da Composicao |
| 13 | VL_SALDO_ATU | NUMBER | Y | Saldo Atual |
| 14 | TP_NATUREZA | VARCHAR2 | Y | Natureza da conta |
| 15 | CD_USUARIO | VARCHAR2 | Y | Codigo do Usuario |
| 16 | TOTAL_DEVEDOR_ANT | NUMBER | Y | Total devedor anterior |
| 17 | TOTAL_CREDOR_ANT | NUMBER | Y | Total credor anteror |
| 18 | TP_NATUREZA_SALDO_ATU | VARCHAR2 | Y | Natureza do saldo atual |
| 19 | TP_NATUREZA_SALDO_ANT | VARCHAR2 | Y | Natureza do Saldo Anterior |
| 20 | VL_MOVIMENTO | NUMBER | Y | Valor de Movimentacao |

---

## DBAMV.DADOS_CIRURGIA_ANTERIOR
> Aviso dos dados da Cirurgia

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AVISO_CIRURGIA | NUMBER | N | Codigo do aviso da cirurgia |
| 2 | CD_CIRURGIA | NUMBER | N | Codigo da Cirurgia |
| 3 | DS_OBSERVACAO | VARCHAR2 | Y | Observac?o da Cirurgia |
| 4 | CD_CIRURGIA_AVISO | NUMBER | Y | Codigo da cirurgia aviso |
| 5 | CD_CONVENIO | NUMBER | Y | Codigo do Convenio |
| 6 | NM_CONVENIO | VARCHAR2 | Y | Descricao do Convenio |
| 7 | CD_CON_PLA | NUMBER | Y | Codigo do Plano do Convenio |
| 8 | DS_CON_PLA | VARCHAR2 | Y | Descricao do Plano do Convenio |
| 9 | NR_CARTEIRA | VARCHAR2 | Y | Numero da carteira do Convenio |

---

## DBAMV.DADOS_HISTORICO_CUSTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 2 | DT_COMPETENCIA | DATE | N |  |
| 3 | VL_PESO | NUMBER | N |  |

---

## DBAMV.DADOS_LAUDO_SA04
> Dados exportados no laudo médico SA04z

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NR_LAUDO | NUMBER | N | Número laudo SA04 |
| 2 | DH_CRIACAO | DATE | N | De hora da criação do registro |
| 3 | CD_ATENDIMENTO | VARCHAR2 | N | Código do atendimento |
| 4 | CD_CARATER_ATENDIMENTO | NUMBER | Y | Código do caráter de atendimento |
| 5 | CD_PACIENTE | NUMBER | N | Código do paciente |
| 6 | NM_PACIENTE | VARCHAR2 | N | Nome do paciente |
| 7 | NM_MAE | VARCHAR2 | Y | Nome da mãe do paciente |
| 8 | NM_RESPONSAVEL | VARCHAR2 | Y | Nome do responsável pelo paciente |
| 9 | DT_NASCIMENTO | DATE | Y | Data de nascimento do paciente |
| 10 | TP_SEXO | VARCHAR2 | Y | Sexo do paciente |
| 11 | TP_COR | VARCHAR2 | Y | Branca, Preta, paRda, Amarela, Indigena, 9=sem informação |
| 12 | NR_CNS | VARCHAR2 | Y | CNS do paciente |
| 13 | NR_RG_NASC | NUMBER | Y | Registro de Nascimento do paciente |
| 14 | NR_IDENTIDADE | VARCHAR2 | Y | Identidade do paciente |
| 15 | NR_CPF | VARCHAR2 | Y | CPF do paciente |
| 16 | TP_LOGRADOURO | NUMBER | Y | Tipo logradouro |
| 17 | TP_LOGRADOURO_DNE | VARCHAR2 | Y | Tipo logradouro DNE |
| 18 | NM_LOGRADOURO | VARCHAR2 | Y | Nome logradouro |
| 19 | NR_LOGRADOURO | NUMBER | Y | Número logradouro |
| 20 | NM_BAIRRO | VARCHAR2 | Y | Bairro logradouro |
| 21 | NR_CEP | VARCHAR2 | Y | CEP logradouro |
| 22 | CD_IBGE | NUMBER | Y | Município logradouro |
| 23 | CD_CIDADE | NUMBER | Y | Código da cidade |
| 24 | CD_UF | VARCHAR2 | Y | UF logradouro |
| 25 | CD_PROCEDIMENTO_SOLICITADO | VARCHAR2 | Y | Procedimento solicitado |
| 26 | CD_PROCEDIMENTO_AUTORIZADO | VARCHAR2 | Y | Procedimento autorizado |
| 27 | CD_CID | VARCHAR2 | Y | CID principal |

---

## DBAMV.DADOS_PALM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DADOS_PALM | NUMBER | N |  |
| 2 | XML_CLOB | CLOB | Y |  |
| 3 | DH_GERACAO_XML | DATE | Y |  |
| 4 | NM_USR_GERACAO_XML | VARCHAR2 | Y |  |

---

## DBAMV.DADOS_PRODUTO_ANTERIOR
> Dados do Produto Anterior

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IT_AV_PRODUTOS | NUMBER | N | Codigo do produto anterior |
| 2 | CD_AVISO_CIRURGIA | NUMBER | N | Codigo do aviso da cirurgia |
| 3 | QT_SOLICITADA | NUMBER | N | Quantidade solicitada |
| 4 | CD_CIRURGIA | NUMBER | N | Codigo da cirurgia |
| 5 | CD_UNI_PRO | NUMBER | Y | Codigo da unidade do produto |
| 6 | CD_PRODUTO | NUMBER | Y | Codigo do produto |
| 7 | DS_PRODUTO | VARCHAR2 | N | Descric?o do produto |
| 8 | CD_ESTOQUE | NUMBER | N | Codigo do estoque |
| 9 | CD_FORNECEDOR | NUMBER | Y | Codigo do fornecedor |
| 10 | DS_OBSERVACAO | VARCHAR2 | Y | Descricao da Observacao |
| 11 | DS_JUSTIFICATIVA | VARCHAR2 | Y | Descricao da justificativa |

---

## DBAMV.DADOS_RAZAO_SETOR
> TABELA PARA EMISSÃO DO RELATÓRIO DADOS RAZAO SETOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SETOR | NUMBER | Y | CÓDIGO DO SETOR |
| 2 | NM_SETOR | VARCHAR2 | Y | NOME DO SETOR |
| 3 | CD_CONTABIL | VARCHAR2 | Y | CÓDIGO CONTÁBIL |
| 4 | DS_CONTABIL | VARCHAR2 | Y | DESCRIÇÃO DO CÓDIGO CONTÁBIL |
| 5 | DT_LCTO | DATE | Y | DATA DE LANÇAMENTO |
| 6 | CD_LOTE | NUMBER | Y | CÓDIGO DO LOTE |
| 7 | CD_LCTO_MOVIMENTO | NUMBER | Y | CÓDIGO DO LANÇAMENTO DO MOVIMENTO |
| 8 | CD_HISTORICO_PADRAO | NUMBER | Y | CÓDIGO DO HISTÓRICO PADRÃO DO MOVIMENTO |
| 9 | DS_HISTORICO_PADRAO | VARCHAR2 | Y | HISTÓRICO PADRÃO DO MOVIMENTO |
| 10 | DS_COMPLEMENTO | VARCHAR2 | Y | DESCRIÇÃO DO COMPLEMENTO |
| 11 | DS_HISTORICO_COMPLEMENTO | VARCHAR2 | Y | DESCRIÇÃO DO COMPLEMENTO DO HISTÓRICO |
| 12 | VL_DEBITO | NUMBER | Y | VALOR DO DÉBITO |
| 13 | VL_CREDITO | NUMBER | Y | VALOR DO CRÉDITO |
| 14 | TP_NATUREZA | VARCHAR2 | N | TIPO DE NATUREZA |
| 15 | CD_LCTO_SETOR | NUMBER | Y | CÓDIGO DO LANÇAMENTO DO SETOR |
| 16 | VL_SALDO | NUMBER | Y | VALOR SALDO |
| 17 | VL_SALDO_ACUM | NUMBER | Y | VALOR SALDO ACUMULADO |
| 18 | DT_LCTO_DIA_CHAR | DATE | Y | DATA DE LANÇAMENTO DIA |
| 19 | CD_USUARIO | VARCHAR2 | Y | CÓDIGO DO USUÁRIO |

---

## DBAMV.DE_PARA_CENTRO_CUSTO
> TABELA PARA EXPORTAÇÃO DE MOVIMENTAÇÃO CONTÁBIL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SETOR_DE | NUMBER | N | CÓDIGO SETOR DE |
| 2 | CD_CEN_CUS_DE | VARCHAR2 | N | CÓDIGO CENTRO DE CUSTO DE |
| 3 | CD_MULTI_EMPRESA_DE | NUMBER | N | CÓDIGO EMPRESA DE |
| 4 | CENTRO_CUSTO_PARA | VARCHAR2 | N | CENTRO DE CUSTO PARA |

---

## DBAMV.DE_PARA_CONTABIL
> TABELA PARA EXPORTAÇÃO DE MOVIMENTAÇÃO CONTÁBIL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REDUZIDO_DE | NUMBER | N | CÓDIGO REDUZIDO DE |
| 2 | CD_CONTABIL_DE | VARCHAR2 | N | CONTA CONTÁBIL DE |
| 3 | CD_MULTI_EMPRESA_DE | NUMBER | N | CÓDIGO EMPRESA DE |
| 4 | CONTA_REDUZIDA_PARA | NUMBER | N | CONTA REDUZIDA PARA |
| 5 | CLASSIFICACAO_PARA | VARCHAR2 | N | CLASSIFICAÇÃO PARA |

---

## DBAMV.DE_PARA_FORNECEDOR
> TABELA PARA EXPORTAÇÃO DE MOVIMENTAÇÃO CONTÁBIL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FORNECEDOR_DE | NUMBER | N | CÓDIGO FORNECEDOR DE |
| 2 | DS_FORNECEDOR_DE | VARCHAR2 | N | DESCRIÇÃO FORNECEDOR DE |
| 3 | CD_MULTI_EMPRESA_DE | NUMBER | N | CÓDIGO EMPRESA DE |
| 4 | CD_FORNECEDOR_PARA | NUMBER | Y | FORNECEDOR PARA |

---

## DBAMV.DE_PARA_HIST_PADRAO
> TABELA PARA EXPORTAÇÃO DE MOVIMENTAÇÃO CONTÁBIL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_HISTORICO_PADRAO_DE | NUMBER | N | CÓDIGO HISTÓRICO PADRÃO DE |
| 2 | DS_HISTORICO_PADRAO_DE | VARCHAR2 | N | DESCRIÇÃO  HISTÓRICO PADRÃO DE |
| 3 | CD_MULTI_EMPRESA_DE | NUMBER | N | CÓDIGO EMPRESA DE |
| 4 | CD_HISTORICO_PADRAO_PARA | NUMBER | Y | HISTÓRICO PADRÃO PARA |

---

## DBAMV.DE_PARA_PRODUTO
> TABELA PARA EXPORTAÇÃO DE MOVIMENTAÇÃO CONTÁBIL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRODUTO_DE | NUMBER | N | CÓDIGO PRODUTO DE |
| 2 | DS_PRODUTO_DE | VARCHAR2 | N | DESCRIÇÃO PRODUTO DE |
| 3 | CD_ESPECIE_DE | NUMBER | Y | CÓDIGO ESPÉCIE DE |
| 4 | CD_CLASSE | NUMBER | Y | CÓDIGO CLASSE DE |
| 5 | CD_MULTI_EMPRESA_DE | NUMBER | N | CÓDIGO EMPRESA DE |
| 6 | CD_PRODUTO_PARA | NUMBER | Y | CÓDIGO PRODUTO PARA |
| 7 | CD_ESPECIE_PARA | NUMBER | Y | CÓDIGO ESPÉCIE PARA |
| 8 | CD_CLASSE_PARA | NUMBER | Y | CÓDIGO CLASSE PARA |

---

## DBAMV.ESQUEMA
> Lista de drogas utilizadas no tratamento quimioterapicos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ESQUEMA | NUMBER | N | Codigo identificador da droga utilizada no tratamento quimioterapico |
| 2 | DS_ESQUEMA | VARCHAR2 | N | Descric?o da droga utilizada no tratamento quimioterapico |
| 3 | CD_MEDICAMENTO | NUMBER | Y | Código do medicamento antineoplásicos |

---

## DBAMV.EXPORTADOR
> Tabela do Exportador de Dados

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EXPORTADOR | NUMBER | N | Cdigo do Exportador de Dados |
| 2 | DS_EXPORTADOR | VARCHAR2 | N | Descrio do Exportador de Dados |

---

## DBAMV.EXPORTADOR_REGISTRO
> Tabela de Registros do Exportador de Dados.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EXPORTADOR | NUMBER | N | Cdigo do Exportador de Dados |
| 2 | CD_EXPORTADOR_REGISTRO | VARCHAR2 | N | Cdigo do Registro |
| 3 | DS_EXPORTADOR_REGISTRO | VARCHAR2 | N | Descrio do Registro |
| 4 | CD_ORDEM_REGISTRO | NUMBER | N | Cdigo de Ordem do Registro |
| 5 | CD_EXPORTADOR_PAI | NUMBER | Y | Cdigo do Exportador de Dados Pai |
| 6 | CD_EXPORTADOR_REGISTRO_PAI | VARCHAR2 | Y | Cdigo do Registro Pai |

---

## DBAMV.EXPORTADOR_REGISTRO_EMPRESA
> Tabela de Registros do Exportador de Dados por Empresa.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EXPORTADOR | NUMBER | N | Cdigo do Exportador de Dados |
| 2 | CD_EXPORTADOR_REGISTRO | VARCHAR2 | N | Cdigo do Registro do Exportador de Dados |
| 3 | CD_MULTI_EMPRESA | NUMBER | N | Cdigo da Empresa |
| 4 | SN_EXPORTA_REGISTRO | VARCHAR2 | N | Indicativo de Exportao do Registro. Valores possveis: S-Sim e N-No |

---

## DBAMV.GRAU_HISTOPATOLOGICO
> Lista de grau histopatologico do processo quimioterapico

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GRAU_HISTOPATOLOGICO | VARCHAR2 | N | Codigo identificador do grau histopatologico do tratamento quimioterapico |
| 2 | DS_GRAU_HISTOPATOLOGICO | VARCHAR2 | N | Descric?o do grau histopatologico do tratamento quimioterapico |

---

## DBAMV.IMVSAP_EMPRESA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 2 | CD_EMPRESA_SAP | NUMBER | N |  |

---

## DBAMV.IMVSAP_EXP_CAUCAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CAUCAO | NUMBER | N |  |
| 2 | DT_EXPORTACAO | DATE | N |  |

---

## DBAMV.IMVSAP_EXP_CONTA_REC

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CON_REC | NUMBER | N |  |
| 2 | DT_EXPORTACAO | DATE | N |  |

---

## DBAMV.IMVSAP_INT_MGES

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DS_ARQUIVO_MGES_DEBITO | VARCHAR2 | Y |  |
| 2 | DS_ARQUIVO_MGES_CREDITO | VARCHAR2 | Y |  |
| 3 | DS_ARQUIVO_NOTAS_FISCAIS | VARCHAR2 | Y |  |
| 4 | DS_ARQUIVO_FORNECEDOR | VARCHAR2 | Y |  |
| 5 | DS_ARQUIVO_CLIENTE | VARCHAR2 | Y |  |
| 6 | DS_ARQUIVO_REC_PACIENTE | VARCHAR2 | Y |  |
| 7 | DS_ARQUIVO_REC_CONVENIO | VARCHAR2 | Y |  |
| 8 | DS_ARQUIVO_REC_CAUCAO | VARCHAR2 | Y |  |
| 9 | DS_ARQUIVO_NF_DOACAO | VARCHAR2 | Y | Diretorio para gravac?o do arquivo de NF doac?o |

---

## DBAMV.IMVSAP_IT_PROTOCOLO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IMVSAP_IT_PROTOCOLO | NUMBER | N |  |
| 2 | CD_IMVSAP_PROTOCOLO | NUMBER | N |  |
| 3 | CD_CON_PAG | NUMBER | N |  |
| 4 | NR_CGC_CPF | NUMBER | N |  |
| 5 | NM_FORNECEDOR | VARCHAR2 | N |  |
| 6 | NR_DOCUMENTO | VARCHAR2 | N |  |
| 7 | NR_SERIE | VARCHAR2 | Y |  |
| 8 | VL_DOCUMENTO | NUMBER | N |  |
| 9 | STATUS | VARCHAR2 | Y |  |

---

## DBAMV.IMVSAP_PLANO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REDUZIDO | NUMBER | N |  |
| 2 | CD_CONTABIL_SAP | VARCHAR2 | N |  |
| 3 | CD_MULTI_EMPRESA | NUMBER | N |  |

---

## DBAMV.IMVSAP_PROTOCOLO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IMVSAP_PROTOCOLO | NUMBER | N |  |
| 2 | DATA_PROTOCOLO | DATE | N |  |
| 3 | NM_USUARIO | VARCHAR2 | N |  |
| 4 | TP_SITUACAO | VARCHAR2 | N |  |

---

## DBAMV.IMVSAP_REL_MGES

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IMVSAP | NUMBER | N |  |
| 2 | NM_ARQUIVO | VARCHAR2 | Y |  |
| 3 | DS_TIPO | VARCHAR2 | Y |  |
| 4 | DT_DOCUMENTO | DATE | Y |  |
| 5 | DT_LANCAMENTO | DATE | Y |  |
| 6 | NR_MES | VARCHAR2 | Y |  |
| 7 | DS_DOCUMENTO | VARCHAR2 | Y |  |
| 8 | DS_CONTA | VARCHAR2 | Y |  |
| 9 | DS_CENTRO_CUSTO | VARCHAR2 | Y |  |
| 10 | VL_MONTANTE | NUMBER | Y |  |

---

## DBAMV.IMVSAP_REL_NOTAS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NM_ARQUIVO | VARCHAR2 | Y |  |
| 2 | DS_TIPO | VARCHAR2 | Y |  |
| 3 | NR_IDENTIFICACAO | VARCHAR2 | Y |  |
| 4 | DT_GERACAO | VARCHAR2 | Y |  |
| 5 | DT_EMISSAO | VARCHAR2 | Y |  |
| 6 | NR_DOCUMENTO | VARCHAR2 | Y |  |
| 7 | NR_CGC_CPF | VARCHAR2 | Y |  |
| 8 | CD_FORNECEDOR | VARCHAR2 | Y |  |
| 9 | DT_ANO | VARCHAR2 | Y |  |
| 10 | DT_LANCAMENTO | VARCHAR2 | Y |  |
| 11 | MES_EXERCICIO | VARCHAR2 | Y |  |
| 12 | DS_DOCUMENTO | VARCHAR2 | Y |  |
| 13 | TP_FORNECEDOR | VARCHAR2 | Y |  |
| 14 | CD_CONTABIL | VARCHAR2 | Y |  |
| 15 | VL_DOCUMENTO | VARCHAR2 | Y |  |
| 16 | DT_VENCIMENTO | VARCHAR2 | Y |  |
| 17 | CD_CENTRO_CUSTO | VARCHAR2 | Y |  |
| 18 | NM_FORNECEDOR | VARCHAR2 | Y |  |
| 19 | CD_IMVSAP_REL_NOTAS | NUMBER | N |  |
| 20 | TP_REGISTRO | VARCHAR2 | Y |  |

---

## DBAMV.IMVSAP_SETOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SETOR | NUMBER | N |  |
| 2 | CD_SETOR_SAP | VARCHAR2 | N |  |
| 3 | CD_MULTI_EMPRESA | NUMBER | N |  |

---

## DBAMV.IMV_BIOCLINICO_ENTRADA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | TP_REG | VARCHAR2 | N |  |
| 2 | NR_CONTROLE | NUMBER | Y |  |
| 3 | CD_ATENDIMENTO | NUMBER | Y |  |
| 4 | NM_PACIENTE | VARCHAR2 | Y |  |
| 5 | CD_LEITO | NUMBER | Y |  |
| 6 | NR_LINHA | NUMBER | Y |  |
| 7 | DT_RESULTADO | DATE | Y |  |
| 8 | HR_RESULTADO | DATE | Y |  |
| 9 | CD_EXA_LAB | NUMBER | Y |  |
| 10 | DS_MNEMONICO | VARCHAR2 | Y |  |
| 11 | DS_RESULTADO | VARCHAR2 | Y |  |
| 12 | TP_EXAME | VARCHAR2 | Y |  |
| 13 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 14 | CD_PED_LAB | NUMBER | Y |  |
| 15 | CD_SETOR | NUMBER | Y |  |
| 16 | CD_PRESTADOR | NUMBER | Y |  |
| 17 | CD_CONVENIO | NUMBER | Y |  |
| 18 | CD_CON_PLA | NUMBER | Y |  |
| 19 | CD_SET_EXA | NUMBER | Y |  |
| 20 | CD_LABORATORIO | NUMBER | Y |  |
| 21 | CD_VERSAO | NUMBER | Y |  |
| 22 | NM_PRESTADOR | VARCHAR2 | Y |  |
| 23 | DS_CONSELHO | VARCHAR2 | Y |  |

---

## DBAMV.IMV_INTEGRA_EQUIPAMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | TIPO_LINHA | VARCHAR2 | Y |  |
| 2 | AMOSTRA | VARCHAR2 | Y |  |
| 3 | DILUICAO | VARCHAR2 | Y |  |
| 4 | AGRUPAMENTO | VARCHAR2 | Y |  |
| 5 | LABORATORIO | VARCHAR2 | Y |  |
| 6 | INSTRUMENTO | VARCHAR2 | Y |  |
| 7 | REGISTRO | VARCHAR2 | Y |  |
| 8 | ORIGEM | VARCHAR2 | Y |  |
| 9 | MATERIAL | VARCHAR2 | Y |  |
| 10 | RACK | VARCHAR2 | Y |  |
| 11 | DT_COLETA | VARCHAR2 | Y |  |
| 12 | OBSERVACAO | VARCHAR2 | Y |  |
| 13 | ESCANINHO | VARCHAR2 | Y |  |
| 14 | DIGITO_VERIF_20 | VARCHAR2 | Y |  |
| 15 | EXAME | VARCHAR2 | Y |  |
| 16 | PARAMETRO | VARCHAR2 | Y |  |
| 17 | RESULTADO | VARCHAR2 | Y |  |
| 18 | DT_RESULTADO | DATE | Y |  |
| 19 | HR_RESULTADO | DATE | Y |  |
| 20 | DT_LIBERACAO | DATE | Y |  |
| 21 | HR_LIBERACAO | DATE | Y |  |
| 22 | OPERADOR_LIBERACAO | VARCHAR2 | Y |  |
| 23 | DIGITO_VERIF_21 | VARCHAR2 | Y |  |
| 24 | DIGITO_VERIF_24 | VARCHAR2 | Y |  |
| 25 | NOME_GRAFICO | VARCHAR2 | Y |  |
| 26 | ENDERECO_GRAFICO | VARCHAR2 | Y |  |
| 27 | NOME_ARQUIVO | VARCHAR2 | Y |  |
| 28 | DIGITO_VERIF_27 | VARCHAR2 | Y |  |
| 29 | CD_VERSAO | NUMBER | Y |  |
| 30 | DS_CAMPO | VARCHAR2 | Y |  |
| 31 | CD_ITPED_LAB | NUMBER | Y |  |
| 32 | TP_RESULTADO | VARCHAR2 | Y |  |
| 33 | CD_PED_LAB | NUMBER | Y | Codigo do Pedido de Exame a ser importado |
| 34 | CD_ATENDIMENTO | NUMBER | Y | Codigo do Atendimento relacionado ao Pedido. |
| 35 | CD_SETOR | NUMBER | Y | Codigo do Setor Solicitante. |
| 36 | CD_PRESTADOR | NUMBER | Y | Codigo do Prestador Solicitante. |
| 37 | NM_PRESTADOR | VARCHAR2 | Y | Nome do Prestador Solicitante. |
| 38 | NR_CRM_PRESTADOR | VARCHAR2 | Y | Numero do CRM do Prestador Solicitante. |
| 39 | CD_SET_EXA | NUMBER | Y | Codigo do Setor Executante. |
| 40 | NR_CONTROLE | NUMBER | Y | Numero de controle do Pedido de Exame. |
| 41 | CD_CONVENIO | NUMBER | Y | Codigo do Convenio. |
| 42 | CD_CON_PLA | NUMBER | Y | Codigo do Plano de Convenio. |
| 43 | NM_USUARIO | VARCHAR2 | Y | Usuario responsavel pelo Pedido |
| 44 | NM_PACIENTE | VARCHAR2 | Y | Nome do Paciente |
| 45 | DT_NASCIMENTO | DATE | Y | Data de Nascimento |
| 46 | TP_SEXO | VARCHAR2 | Y | Sexo do Paciente |
| 47 | TP_COR | VARCHAR2 | Y | Cor do Paciente |
| 48 | NM_MAE | VARCHAR2 | Y | Nome da M?e |
| 49 | NM_PAI | VARCHAR2 | Y | Nome do Pai |
| 50 | DS_ENDERECO | VARCHAR2 | Y | Descric?o do Endereco |
| 51 | NR_ENDERECO | VARCHAR2 | Y | Numero do Endereco |
| 52 | DS_COMPLEMENTO | VARCHAR2 | Y | Complemento |
| 53 | DS_BAIRRO | VARCHAR2 | Y | Bairro |
| 54 | DS_CEP | VARCHAR2 | Y | Bairro |
| 55 | DS_FONE | VARCHAR2 | Y | Telefone do Paciente |
| 56 | DS_EMAIL | VARCHAR2 | Y | E-mail do Paciente |
| 57 | DS_REG_NASCIMENTO | VARCHAR2 | Y | Registro de Nascimento do Paciente |
| 58 | NR_IDENTIDADE | VARCHAR2 | Y | Numero da Identidade do Paciente |
| 59 | DS_ORG_EMISSOR | VARCHAR2 | Y | Org?o Emissor |
| 60 | NR_CPF | VARCHAR2 | Y | Numero do CPF |
| 61 | CD_PACIENTE_TERCEIRO | VARCHAR2 | Y | Codigo do Paciente no sistema Terceiro |
| 62 | CD_ESPECIALID | VARCHAR2 | Y | Codigo da especialidade |
| 63 | CD_PEDIDO_TERCEIRO | VARCHAR2 | Y | Codigo do Pedido no Sistema Terceiro |
| 64 | CD_ORIGEM | VARCHAR2 | Y | Codigo da Origem |
| 65 | CD_BANCADA | VARCHAR2 | Y | Codigo da bancada, para identificar o robo que esta usando este registro |
| 66 | DS_CAMPO_LIVRE_OBS | VARCHAR2 | Y | Campo livre para observac?es do item do exame |

---

## DBAMV.IMV_INTEGRA_EQUIP_EXPORTA
> Tabela para Exportac?o de Resultado PSSD-MV2000

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITPED_LAB | NUMBER | Y | Codigo do Item do Pedido de Exame |
| 2 | SN_INTEGRADO | VARCHAR2 | N | Indica se o registro foi integrado |
| 3 | SN_ERRO | VARCHAR2 | N |  |

---

## DBAMV.INTEGRA_C_CONEST

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRODUTO | NUMBER | N |  |
| 2 | CD_ESTOQUE | NUMBER | N |  |
| 3 | CD_ANO | NUMBER | N |  |
| 4 | CD_MES | NUMBER | N |  |
| 5 | QT_ESTOQUE_INICIAL | NUMBER | Y |  |
| 6 | VL_ESTOQUE_INICIAL | NUMBER | Y |  |
| 7 | QT_ESTOQUE_FINAL | NUMBER | Y |  |
| 8 | VL_ESTOQUE_FINAL | NUMBER | Y |  |
| 9 | QT_ENTRADA | NUMBER | Y |  |
| 10 | VL_ENTRADA | NUMBER | Y |  |
| 11 | QT_ENTRADA_TRANSFERIDO | NUMBER | Y |  |
| 12 | VL_ENTRADA_TRANSFERIDO | NUMBER | Y |  |
| 13 | QT_SAIDA_SETOR | NUMBER | Y |  |
| 14 | VL_SAIDA_SETOR | NUMBER | Y |  |
| 15 | QT_SAIDA_PACIENTE | NUMBER | Y |  |
| 16 | VL_SAIDA_PACIENTE | NUMBER | Y |  |
| 17 | QT_BAIXA | NUMBER | Y |  |
| 18 | VL_BAIXA | NUMBER | Y |  |
| 19 | QT_VENDA | NUMBER | Y |  |
| 20 | VL_VENDA | NUMBER | Y |  |
| 21 | QT_EMPRESTIMO | NUMBER | Y |  |
| 22 | VL_EMPRESTIMO | NUMBER | Y |  |
| 23 | QT_DEVOLUCAO_SETOR | NUMBER | Y |  |
| 24 | VL_DEVOLUCAO_SETOR | NUMBER | Y |  |
| 25 | QT_DEVOLUCAO_PACIENTE | NUMBER | Y |  |
| 26 | VL_DEVOLUCAO_PACIENTE | NUMBER | Y |  |
| 27 | QT_DEMANDA | NUMBER | Y |  |
| 28 | VL_DEMANDA | NUMBER | Y |  |
| 29 | QT_TRANSFERENCIA_SAIDA | NUMBER | Y |  |
| 30 | VL_TRANSFERENCIA_SAIDA | NUMBER | Y |  |
| 31 | QT_DOACAO | NUMBER | Y |  |
| 32 | VL_DOACAO | NUMBER | Y |  |
| 33 | QT_MANIPULADA_ENTRADA | NUMBER | Y |  |
| 34 | VL_MANIPULADA_ENTRADA | NUMBER | Y |  |
| 35 | QT_MANIPULADA_SAIDA | NUMBER | Y |  |
| 36 | VL_MANIPULADA_SAIDA | NUMBER | Y |  |
| 37 | SN_IMPORTADO_MGES_FCCT | VARCHAR2 | N |  |
| 38 | QT_CONTAGEM_ENTRADA | NUMBER | Y |  |
| 39 | VL_CONTAGEM_ENTRADA | NUMBER | Y |  |
| 40 | QT_CONTAGEM_SAIDA | NUMBER | Y |  |
| 41 | VL_CONTAGEM_SAIDA | NUMBER | Y |  |
| 42 | QT_DEVOLVIDA_FORNEC | NUMBER | Y |  |
| 43 | VL_DEVOLVIDA_FORNEC | NUMBER | Y |  |
| 44 | CD_EXP_CONTABILIDADE | NUMBER | Y |  |
| 45 | QT_EMPRESTIMO_ENTRADA | NUMBER | Y |  |
| 46 | VL_EMPRESTIMO_ENTRADA | NUMBER | Y |  |
| 47 | QT_ESTOQUE_INICIAL_SEM_TRANSF | NUMBER | Y |  |
| 48 | VL_ESTOQUE_INICIAL_SEM_TRANSF | NUMBER | Y |  |
| 49 | QT_ESTOQUE_FINAL_SEM_TRANSF | NUMBER | Y |  |
| 50 | VL_ESTOQUE_FINAL_SEM_TRANSF | NUMBER | Y |  |
| 51 | QT_VALE | NUMBER | Y |  |
| 52 | VL_VALE | NUMBER | Y |  |
| 53 | TP_OPERACAO | VARCHAR2 | Y |  |
| 54 | SN_PROCESSADO | VARCHAR2 | Y |  |
| 55 | DT_PROCESSADO | DATE | Y |  |

---

## DBAMV.INTEGRA_C_CONSET

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRODUTO | NUMBER | N |  |
| 2 | CD_SETOR | NUMBER | N |  |
| 3 | CD_ESTOQUE | NUMBER | N |  |
| 4 | CD_ANO | NUMBER | N |  |
| 5 | CD_MES | NUMBER | N |  |
| 6 | QT_SAIDA_SETOR | NUMBER | Y |  |
| 7 | VL_SAIDA_SETOR | NUMBER | Y |  |
| 8 | QT_CONSUMO_CONS_PAC | NUMBER | Y |  |
| 9 | VL_CONSUMO_CONS_PAC | NUMBER | Y |  |
| 10 | QT_DEVOLVIDA_SETOR | NUMBER | Y |  |
| 11 | VL_DEVOLVIDA_SETOR | NUMBER | Y |  |
| 12 | QT_SAIDA_PACIENTE | NUMBER | Y |  |
| 13 | VL_SAIDA_PACIENTE | NUMBER | Y |  |
| 14 | QT_DEVOLVIDA_PACIENTE | NUMBER | Y |  |
| 15 | VL_DEVOLVIDA_PACIENTE | NUMBER | Y |  |
| 16 | SN_IMPORTADO_MGES_FCCT | VARCHAR2 | N |  |
| 17 | CD_EXP_CONTABILIDADE | NUMBER | Y |  |
| 18 | LIXO | VARCHAR2 | Y |  |
| 19 | QT_BAIXA | NUMBER | Y |  |
| 20 | VL_BAIXA | NUMBER | Y |  |
| 21 | TP_OPERACAO | VARCHAR2 | Y |  |
| 22 | SN_PROCESSADO | VARCHAR2 | Y |  |
| 23 | DT_PROCESSADO | DATE | Y |  |

---

## DBAMV.INTEGRA_FFAS_EXT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INTEGRA_FFAS | NUMBER | N | Codigo de integrac?o faturamento ambulatorial |
| 2 | CD_ORI_ATE | NUMBER | N | Codigo de origem do atendimento ao paciente |
| 3 | CD_SER_DIS | NUMBER | N | Codigo do servico executado |
| 4 | CD_SETOR_EXECUTANTE | NUMBER | N | Codigo do setor executante do procedimento |
| 5 | CD_SETOR_SOLICITANTE | NUMBER | N | Codigo do setor solicitante do procedimento |
| 6 | CD_PRESTADOR | NUMBER | N | Codigo do prestador executante |
| 7 | CD_CBOS | VARCHAR2 | Y | Codigo do cbo executado |
| 8 | CD_CID | VARCHAR2 | Y | Codigo do Cid |
| 9 | CD_CARATER_ATENDIMENTO | NUMBER | Y | Codigo do carater de atendimento |
| 10 | CD_PROCEDIMENTO | VARCHAR2 | N | Codigo do procedimento de acordo com tabela SIGTAB |
| 11 | CD_ATENDIMENTO | NUMBER | N | Codigo do atendimento do sistema do Hospital |
| 12 | CD_PACIENTE | NUMBER | N | Codigo do paciente |
| 13 | DT_LANCAMENTO | DATE | N | Data do lancamento |
| 14 | QT_LANCAMENTO | NUMBER | Y | Quantidade lancada |
| 15 | TP_INTEGRA | VARCHAR2 | N | Identificac?o da origem por tipo de procedimento |
| 16 | CD_USUARIO_LOG | VARCHAR2 | N | Codigo do usuario que realizou o lancamento |
| 17 | NR_AUTORIZACAO | VARCHAR2 | Y | Numero da autorizac?o |
| 18 | SN_IMPORTADO | VARCHAR2 | N | Flag de importac?o do registro |

---

## DBAMV.INTEGRA_FFIS_EXT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INTEGRA_FFIS | NUMBER | N | Codigo de identificac?o de integrac?o |
| 2 | CD_SETOR_EXECUTANTE | NUMBER | N | Codigo do setor executante do procedimento |
| 3 | CD_SETOR_SOLICITANTE | NUMBER | N | Codigo do setor solicitante do procedimento |
| 4 | CD_ORI_ATE | NUMBER | N | Codigo de origem do atendimento ao paciente |
| 5 | CD_SER_DIS | NUMBER | N | Codigo do servico executado |
| 6 | CD_PROCEDIMENTO | VARCHAR2 | N | Codigo do procedimento de acordo com tabela SIGTAB |
| 7 | CD_PRESTADOR | NUMBER | N | Codigo do prestador executante |
| 8 | CD_PACIENTE | NUMBER | N | Codigo do paciente |
| 9 | CD_ESPECIALID | VARCHAR2 | Y | Codigo da especialidade do leito |
| 10 | CD_CID | VARCHAR2 | Y | Codigo do Cid |
| 11 | CD_CBOS | VARCHAR2 | Y | Codigo do cbo executado |
| 12 | CD_CARATER_ATENDIMENTO | NUMBER | Y | Codigo do carater de atendimento |
| 13 | CD_ATENDIMENTO | NUMBER | N | Codigo do atendimento do sistema do Hospital |
| 14 | DT_LANCAMENTO | DATE | N | Data do lancamento |
| 15 | QT_LANCAMENTO | NUMBER | Y | Quantidade lancada |
| 16 | TP_INTEGRA | VARCHAR2 | N | Identificac?o da origem por tipo de procedimento |
| 17 | CD_USUARIO_LOG | VARCHAR2 | N | Codigo do usuario que realizou o lancamento |
| 18 | NR_LAUDO_AIH | NUMBER | Y | Numero do Laudo aih que deu origem a AIH |
| 19 | DT_LAUDO_AIH | DATE | Y | Numero do Laudo aih que deu origem a AIH |
| 20 | SN_IMPORTADO | VARCHAR2 | N | Flag de importac?o do registro |

---

## DBAMV.INTEGRA_LEGADO_RECURSOS
> Tabela para cadastro de movimentação de glosa para a base zero.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INTEGRA_LEGADO | NUMBER | N | Código Sequencial. |
| 2 | CD_REMESSA_GLOSA | NUMBER | Y | Código da remessa (DBAMV.REMESSA_GLOSA). |
| 3 | CD_REMESSA_GLOSA_PAI | NUMBER | Y | Código remessa pai (DBAMV.REMESSA_GLOSA). |
| 4 | DT_ENTREGA | DATE | Y | Data de entrega (DBAMV.REMESSA_GLOSA). |
| 5 | DT_PREVISTA_PARA_PGTO | DATE | Y | Data prevista para pagamento (DBAMV.REMESSA_GLOSA). |
| 6 | VL_TOTAL_REMESSA | NUMBER | Y | Valor total da remessa (DBAMV.REMESSA_GLOSA). |
| 7 | CD_ITCON_REC | NUMBER | Y | Código da parcela (DBAMV.MOV_GLOSAS). |
| 8 | DT_MOVIMENTACAO | DATE | Y | Data da movimentação (DBAMV.MOV_GLOSAS). |
| 9 | VL_MOVIMENTACAO | NUMBER | Y | Valor da movimentação (DBAMV.MOV_GLOSAS). |
| 10 | TP_FLUXO | VARCHAR2 | Y |  |
| 11 | CD_REMESSA | NUMBER | Y |  |
| 12 | VL_RECEBIDO_FIN | NUMBER | Y |  |
| 13 | TP_MOVIMENTO | VARCHAR2 | Y |  |
| 14 | CD_EXP_CONTABILIDADE | NUMBER | Y |  |
| 15 | CD_MOV_GLOSAS | NUMBER | Y |  |

---

## DBAMV.INTEGRA_SISTEMAS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SISTEMA_MV | VARCHAR2 | N |  |
| 2 | CD_SISTEMA_INTEGRADO | VARCHAR2 | N |  |
| 3 | SN_INTEGRACAO | VARCHAR2 | Y |  |
| 4 | DT_INTEGRACAO | DATE | Y |  |

---

## DBAMV.INTEGRA_SOLICITACAO_AGENDMTO
> Tabela responsavel em manter as solicitac?es de atendimentos da central de regulac?o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IT_SOLICITACAO_AGENDAMENTO | NUMBER | N |  |
| 2 | CD_SOLICITACAO_AGENDAMENTO | NUMBER | N |  |
| 3 | DT_SOLICITACAO | DATE | Y |  |
| 4 | CD_PRO_FAT | VARCHAR2 | Y | Codigo do procedimento solicitado para atendimento |
| 5 | CD_PROCEDIMENTO | VARCHAR2 | Y | Codigo do procedimento SUS - Portaria 321 |
| 6 | CD_EXA_RX | NUMBER | Y | Codigo do exame diagnostico e imagem |
| 7 | CD_EXA_LAB | NUMBER | Y | Codigo do exame laboratorial |

---

## DBAMV.INTEGRA_TISS_IT_SOLICITACAO
> Tabela de integração de entre sistemas e solicitação de autorização de TISS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INTEGRA | NUMBER | N | Código ID(PK) da tabela de integração |
| 2 | CD_IT_INTEGRA | NUMBER | N | Código ID(PK) da tabela de item de integração |
| 3 | CD_PRO_FAT | VARCHAR2 | N | Código do procedimento de faturamento |
| 4 | QT_SOLICITADA | NUMBER | N | Quantidade solicitada |
| 5 | ID_TISS_SOL_GUIA | NUMBER | Y | Código da solicitação da TISS (conciliação) |
| 6 | ID_TISS_ITSOL_GUIA | NUMBER | Y | Código do item da solicitação da TISS (conciliação) |
| 7 | CD_PROCEDIMENTO | VARCHAR2 | Y | Código de procedimento de TUSS |
| 8 | QT_AUTORIZADA | NUMBER | Y | Quantidade autorizada pela operadora |
| 9 | DS_RETORNO_TRANSACAO | VARCHAR2 | Y | Mensagem de retorno da operadora |
| 10 | ID_ITSISTEMA_ORIGEM | VARCHAR2 | Y | Código do item |

---

## DBAMV.INTEGRA_TISS_SOLICITACAO
> Tabela de integração de entre sistemas e solicitação de autorização de TISS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INTEGRA | NUMBER | N | Código ID(PK) da tabela de integração |
| 2 | CD_MULTI_EMPRESA | NUMBER | Y | Código da Multi-Empresa |
| 3 | DT_SOLICITACAO | DATE | Y | Data de Solicitação da Guia |
| 4 | TP_ATENDIMENTO_TISS | VARCHAR2 | Y | Tipo do Atendimento do TISS |
| 5 | CD_PACIENTE | NUMBER | Y | Código do Paciente |
| 6 | CD_ATENDIMENTO | NUMBER | Y | Código do Atendimento |
| 7 | TP_ATENDIMENTO | VARCHAR2 | Y | Tipo do Atendimento |
| 8 | NR_CARTEIRA | VARCHAR2 | Y | Número da Carteira do beneficiário |
| 9 | DT_VALIDADE_CARTEIRA | DATE | Y | Data de Validade da Carteira |
| 10 | CD_CONVENIO | NUMBER | Y | Código do Convênio |
| 11 | CD_CON_PLA | NUMBER | Y | Código do Plano |
| 12 | CD_CID_PRINCIPAL | VARCHAR2 | Y | Código do CID Principal |
| 13 | CD_PRESTADOR | NUMBER | Y | Código do Prestador |
| 14 | CD_ESPECIALID | VARCHAR2 | Y | Código da Especialidade |
| 15 | CD_CONSELHO | VARCHAR2 | Y | Código do Conselho Médico |
| 16 | NR_CONSELHO | VARCHAR2 | Y | Número do Conselho Médico |
| 17 | UF_CONSELHO | VARCHAR2 | Y | UF do Conselho Médico |
| 18 | DS_INDICACAO_CLINICA | VARCHAR2 | Y | Descrição da Indicação Clínica da Solicitação |
| 19 | CD_CBOS | VARCHAR2 | Y | Código do CBOS |
| 20 | ID_SISTEMA_ORIGEM | NUMBER | Y |  |
| 21 | CD_SISTEMA_ORIGEM | VARCHAR2 | Y | Sistema de origem que solicitou a guia |
| 22 | CD_INTEGRADOR | VARCHAR2 | Y | Código do aplicativo padrão de integração |
| 23 | CD_GUIA | NUMBER | Y |  |
| 24 | ID_TISS_SOL_GUIA | NUMBER | Y | Código da TISS_SOL_GUIA |
| 25 | NR_GUIA_PRESTADOR | VARCHAR2 | Y | Número da guia |
| 26 | NR_SENHA | VARCHAR2 | Y | Código da senha de autorização |
| 27 | DS_RETORNO_TRANSACAO | VARCHAR2 | Y | Mensagem de retorno da transação |
| 28 | CD_INTEGRA_CANCELA | NUMBER | Y | Quando uma solicitação exige o cancelamento de outra |
| 29 | DS_ID_BENEFICIARIO | VARCHAR2 | Y | Código de barras da carteira do convênio/plano do paciente. |
| 30 | DS_RETORNO_ACAO | VARCHAR2 | Y | Retorno da Ação. |
| 31 | TP_RESPOSTA_ACAO | VARCHAR2 | Y | Tipo de ação devido ao retorno. |
| 32 | TP_PROCESSO_ORIGEM | VARCHAR2 | Y | Tipo de ação devido ao retorno. |
| 33 | CD_INTEGRA_ENVIO | NUMBER | Y | Obrigatório quando for um retorno de integração |
| 34 | TP_INTEGRA | VARCHAR2 | Y | Define o tipo: Gravar ENVIO ou RETORNO |

---

## DBAMV.ITCOLETA_GLICEMIA_CAPILAR
> Tabela que armazena os dados referente aos itens de afericao do tipo Glicemia Capilar

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITCOLETA_GLICEMIA_CAPILAR | NUMBER | N | Codigo incremental, e chave primaria da tabela |
| 2 | NR_SERIE | VARCHAR2 | N | Numero de serie do equipamento que e feita a verificac?o da glicemia capilar |
| 3 | NR_LOTE | VARCHAR2 | N | Numero do lote da fita que foi utilizada para fazer a verificac?o da glicemia |
| 4 | LO_ANEXO_AFERICAO | BLOB | Y | Documentos anexos ao registro da aferic?o da glicemia |
| 5 | NM_DOCUMENTO | VARCHAR2 | Y | Nome do arquivo que esta sendo salvo no banco |
| 6 | TP_DOCUMENTO | VARCHAR2 | Y | Tipo do arquivo salvo, pode ser PDF, ou IMG |

---

## DBAMV.ITCOLETA_GLICEMIA_CAPIL_AGRUPA
> Tabela que armazena os dados referente aos itens de afericao do tipo Glicemia Capilar

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITCOLETA_GLICEMIA_CAP_AGRP | NUMBER | N | Código incremental, e chave primária da tabela |
| 2 | NR_SERIE | VARCHAR2 | N | Número de série do equipamento que é feita a verificação da glicemia capilar |
| 3 | NR_LOTE | VARCHAR2 | N | Número do lote da fita que foi utilizada para fazer a verificação da glicemia |
| 4 | LO_ANEXO_AFERICAO | BLOB | Y | Documentos anexos ao registro da aferição da glicemia |
| 5 | NM_DOCUMENTO | VARCHAR2 | Y | Nome do arquivo que está sendo salvo no banco |
| 6 | TP_DOCUMENTO | VARCHAR2 | Y | Tipo do arquivo salvo, pode ser PDF, ou IMG |

---

## DBAMV.LOGS_CAPITATION
> Tabela para armazenar os logs de alterações nos fluxos capitation

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOG_CAPITATION | NUMBER | N | Código do log gravado |
| 2 | CD_REGRA_CAPITATION | NUMBER | N | Regra capitation que foi afetada |
| 3 | DS_CAMPO_VALOR | VARCHAR2 | Y | Campos e valores que foram manipulados |
| 4 | DS_ALTERACAO | VARCHAR2 | N | Descrição da alteração realizada |
| 5 | DT_ALTERACAO | DATE | N | Data da realização da alteração |
| 6 | DS_USUARIO | VARCHAR2 | N | Usuario que realizou a alteração |

---

## DBAMV.PARAMETROS_URL_ERP
> Tabela de parametros de url e chaves para integracao

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PARAMETROS_URL_ERP | NUMBER | N | Codigo do parametro de url e chaves para integracao |
| 2 | CD_URL_ERP | VARCHAR2 | Y | Codigo do registro de url e chaves para integracao |
| 3 | DS_CHAVE | VARCHAR2 | Y | Descricao do parametro de url e chaves para integracao |
| 4 | DS_VALOR | VARCHAR2 | Y | Valor do parametro de url e chaves para integracao |
| 5 | TP_PARAMETRO | VARCHAR2 | N | Tipo do parametro de url e chaves para integracao |
| 6 | SN_ENCRIPTADO | VARCHAR2 | N | Chave do parametro para encriptar o registro |

---

## DBAMV.PROD_INTEG_BRINT
> TABELA PARA INTEGRAÇÃO COM O SISTEMA DA BRINT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROD_INTEG | NUMBER | N | CÓDIGO SEQUENCIAL DA TABELA |
| 2 | CD_ITENT_PRO | NUMBER | N | CÓDIGO DA ENTRADA DO ITEM |
| 3 | CD_PRODUTO | NUMBER | Y | CÓDIGO DO PRODUTO DO ITEM |
| 4 | CD_LOTE | VARCHAR2 | Y | CÓDIGO DO LOTE DO ITEM |
| 5 | DT_VALIDADE | DATE | Y | DATA DE VALIDADE DO PRODUTO |
| 6 | QT_ENTRADA | NUMBER | Y | QUANTIDADE DA ENTRADA DO PRODUTO |
| 7 | CD_IDENTIFICADOR | VARCHAR2 | N | IDENTIFICADOR DO LOTE E VALIDADE DO PRODUTO - NAO TEM RELACAO COM A TABELA IDENTIFICADOR_ETIQUETA |

---

## DBAMV.PROTOCOLO_SISCAN
> Tabela de resposta do webservice.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROTOCOLO | NUMBER | N | Codigo de controle do protocolo. |
| 2 | NR_PROTOCOLO | VARCHAR2 | Y | Numero do protocolo de retorno da solicitac?o via webservice. |
| 3 | NR_CARTAO_SUS_INFORMADO | VARCHAR2 | Y | Numero do cart?o nascional de Saude informado. |
| 4 | NR_CARTAO_SUS_GRAVADO | VARCHAR2 | Y | Numero do cart?o nascional de Saude gravado. |
| 5 | TP_PROTOCOLO | VARCHAR2 | Y | Tipo de solicitac?o associado ao protocolo: 01-Requisic?o e 02-Resultado. |

---

## DBAMV.RESPOSTA_SISCAN
> Tabela de resposta do webservice.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_RESPOSTA | NUMBER | N | Codigo das respostas do protocolo. |
| 2 | CD_PROTOCOLO | NUMBER | N | Codigo da tabela de protocolo associado as mensagens. |
| 3 | DS_RETORNO | VARCHAR2 | Y | Retorno. |
| 4 | DS_CONTEMERRO | VARCHAR2 | Y | Indica de o ternor aperesenta erro ou n?o. |
| 5 | DS_MENSAGEM | VARCHAR2 | Y | Mensagem de retorno. |

---

## DBAMV.SINCRONIZACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DADOS_PALM | NUMBER | N |  |
| 2 | DH_SINCRONIZACAO | DATE | N |  |
| 3 | ID_ATIVIDADE | CHAR | Y |  |
| 4 | ID_USUARIO_PALM | VARCHAR2 | Y |  |

---

## DBAMV.URL_ERP
> Tabela de configuracao url e chaves para integracao

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_URL_ERP | VARCHAR2 | N | Codigo do registro de url e chaves para integracao |
| 2 | DS_URL_ERP | VARCHAR2 | Y | Descricao do registro de url e chaves para integracao |

---

## DBAMV.VIA_TRATAMENTO
> Lista de possiveis vias para tratamentos realizados no processo quimioterapico

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_VIA_TRATAMENTO | VARCHAR2 | N | Codigo identificador da via de tratamento quimioterapico |
| 2 | DS_VIA_TRATAMENTO | VARCHAR2 | N | Descric?o da via de tratamento quimioterapico |
| 3 | CD_CODIGO_SECRETARIA | VARCHAR2 | Y | Codigo especifico para utilizac?o na secretaria de saude. |

---

## DBASW.C_CONEST_BKP_12848

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRODUTO | NUMBER | N |  |
| 2 | CD_ESTOQUE | NUMBER | N |  |
| 3 | CD_ANO | NUMBER | N |  |
| 4 | CD_MES | NUMBER | N |  |
| 5 | QT_ESTOQUE_INICIAL | NUMBER | Y |  |
| 6 | VL_ESTOQUE_INICIAL | NUMBER | Y |  |
| 7 | QT_ESTOQUE_FINAL | NUMBER | Y |  |
| 8 | VL_ESTOQUE_FINAL | NUMBER | Y |  |
| 9 | QT_ENTRADA | NUMBER | Y |  |
| 10 | VL_ENTRADA | NUMBER | Y |  |
| 11 | QT_ENTRADA_TRANSFERIDO | NUMBER | Y |  |
| 12 | VL_ENTRADA_TRANSFERIDO | NUMBER | Y |  |
| 13 | QT_SAIDA_SETOR | NUMBER | Y |  |
| 14 | VL_SAIDA_SETOR | NUMBER | Y |  |
| 15 | QT_SAIDA_PACIENTE | NUMBER | Y |  |
| 16 | VL_SAIDA_PACIENTE | NUMBER | Y |  |
| 17 | QT_BAIXA | NUMBER | Y |  |
| 18 | VL_BAIXA | NUMBER | Y |  |
| 19 | QT_VENDA | NUMBER | Y |  |
| 20 | VL_VENDA | NUMBER | Y |  |
| 21 | QT_EMPRESTIMO | NUMBER | Y |  |
| 22 | VL_EMPRESTIMO | NUMBER | Y |  |
| 23 | QT_DEVOLUCAO_SETOR | NUMBER | Y |  |
| 24 | VL_DEVOLUCAO_SETOR | NUMBER | Y |  |
| 25 | QT_DEVOLUCAO_PACIENTE | NUMBER | Y |  |
| 26 | VL_DEVOLUCAO_PACIENTE | NUMBER | Y |  |
| 27 | QT_DEMANDA | NUMBER | Y |  |
| 28 | VL_DEMANDA | NUMBER | Y |  |
| 29 | QT_TRANSFERENCIA_SAIDA | NUMBER | Y |  |
| 30 | VL_TRANSFERENCIA_SAIDA | NUMBER | Y |  |
| 31 | QT_DOACAO | NUMBER | Y |  |
| 32 | VL_DOACAO | NUMBER | Y |  |
| 33 | QT_MANIPULADA_ENTRADA | NUMBER | Y |  |
| 34 | VL_MANIPULADA_ENTRADA | NUMBER | Y |  |
| 35 | QT_MANIPULADA_SAIDA | NUMBER | Y |  |
| 36 | VL_MANIPULADA_SAIDA | NUMBER | Y |  |
| 37 | SN_IMPORTADO_MGES_FCCT | VARCHAR2 | N |  |
| 38 | QT_CONTAGEM_ENTRADA | NUMBER | Y |  |
| 39 | VL_CONTAGEM_ENTRADA | NUMBER | Y |  |
| 40 | QT_CONTAGEM_SAIDA | NUMBER | Y |  |
| 41 | VL_CONTAGEM_SAIDA | NUMBER | Y |  |
| 42 | QT_DEVOLVIDA_FORNEC | NUMBER | Y |  |
| 43 | VL_DEVOLVIDA_FORNEC | NUMBER | Y |  |
| 44 | CD_EXP_CONTABILIDADE | NUMBER | Y |  |
| 45 | QT_EMPRESTIMO_ENTRADA | NUMBER | Y |  |
| 46 | VL_EMPRESTIMO_ENTRADA | NUMBER | Y |  |
| 47 | QT_ESTOQUE_INICIAL_SEM_TRANSF | NUMBER | Y |  |
| 48 | VL_ESTOQUE_INICIAL_SEM_TRANSF | NUMBER | Y |  |
| 49 | QT_ESTOQUE_FINAL_SEM_TRANSF | NUMBER | Y |  |
| 50 | VL_ESTOQUE_FINAL_SEM_TRANSF | NUMBER | Y |  |
| 51 | QT_VALE | NUMBER | Y |  |
| 52 | VL_VALE | NUMBER | Y |  |
| 53 | QT_ESTOQUE_INICIAL_CONSIG | NUMBER | Y |  |
| 54 | VL_ESTOQUE_INICIAL_CONSIG | NUMBER | Y |  |
| 55 | QT_ESTOQUE_FINAL_CONSIG | NUMBER | Y |  |
| 56 | VL_ESTOQUE_FINAL_CONSIG | NUMBER | Y |  |
| 57 | QT_DEVOLUCAO_VENDA | NUMBER | Y |  |
| 58 | VL_DEVOLUCAO_VENDA | NUMBER | Y |  |
| 59 | QT_ENTRADA_ORC | NUMBER | Y |  |
| 60 | VL_ENTRADA_ORC | NUMBER | Y |  |
| 61 | QT_ENTRADA_TRANSFERIDO_ORC | NUMBER | Y |  |
| 62 | VL_ENTRADA_TRANSFERIDO_ORC | NUMBER | Y |  |
| 63 | QT_SAIDA_SETOR_ORC | NUMBER | Y |  |
| 64 | VL_SAIDA_SETOR_ORC | NUMBER | Y |  |
| 65 | QT_SAIDA_PACIENTE_ORC | NUMBER | Y |  |
| 66 | VL_SAIDA_PACIENTE_ORC | NUMBER | Y |  |
| 67 | QT_BAIXA_ORC | NUMBER | Y |  |
| 68 | VL_BAIXA_ORC | NUMBER | Y |  |
| 69 | QT_VENDA_ORC | NUMBER | Y |  |
| 70 | VL_VENDA_ORC | NUMBER | Y |  |
| 71 | QT_EMPRESTIMO_ORC | NUMBER | Y |  |
| 72 | VL_EMPRESTIMO_ORC | NUMBER | Y |  |
| 73 | QT_DEVOLUCAO_SETOR_ORC | NUMBER | Y |  |
| 74 | VL_DEVOLUCAO_SETOR_ORC | NUMBER | Y |  |
| 75 | QT_DEVOLUCAO_PACIENTE_ORC | NUMBER | Y |  |
| 76 | VL_DEVOLUCAO_PACIENTE_ORC | NUMBER | Y |  |
| 77 | QT_DEMANDA_ORC | NUMBER | Y |  |
| 78 | VL_DEMANDA_ORC | NUMBER | Y |  |
| 79 | QT_TRANSFERENCIA_SAIDA_ORC | NUMBER | Y |  |
| 80 | VL_TRANSFERENCIA_SAIDA_ORC | NUMBER | Y |  |
| 81 | QT_DOACAO_ORC | NUMBER | Y |  |
| 82 | VL_DOACAO_ORC | NUMBER | Y |  |
| 83 | QT_MANIPULADA_ENTRADA_ORC | NUMBER | Y |  |
| 84 | VL_MANIPULADA_ENTRADA_ORC | NUMBER | Y |  |
| 85 | QT_MANIPULADA_SAIDA_ORC | NUMBER | Y |  |
| 86 | VL_MANIPULADA_SAIDA_ORC | NUMBER | Y |  |
| 87 | QT_CONTAGEM_ENTRADA_ORC | NUMBER | Y |  |
| 88 | VL_CONTAGEM_ENTRADA_ORC | NUMBER | Y |  |
| 89 | QT_CONTAGEM_SAIDA_ORC | NUMBER | Y |  |
| 90 | VL_CONTAGEM_SAIDA_ORC | NUMBER | Y |  |
| 91 | QT_DEVOLVIDA_FORNEC_ORC | NUMBER | Y |  |
| 92 | VL_DEVOLVIDA_FORNEC_ORC | NUMBER | Y |  |
| 93 | QT_EMPRESTIMO_ENTRADA_ORC | NUMBER | Y |  |
| 94 | VL_EMPRESTIMO_ENTRADA_ORC | NUMBER | Y |  |
| 95 | QT_VALE_ORC | NUMBER | Y |  |
| 96 | VL_VALE_ORC | NUMBER | Y |  |
| 97 | QT_ENTRADA_EXT | NUMBER | Y |  |
| 98 | VL_ENTRADA_EXT | NUMBER | Y |  |
| 99 | QT_ENTRADA_TRANSFERIDO_EXT | NUMBER | Y |  |
| 100 | VL_ENTRADA_TRANSFERIDO_EXT | NUMBER | Y |  |
| 101 | QT_SAIDA_SETOR_EXT | NUMBER | Y |  |
| 102 | VL_SAIDA_SETOR_EXT | NUMBER | Y |  |
| 103 | QT_SAIDA_PACIENTE_EXT | NUMBER | Y |  |
| 104 | VL_SAIDA_PACIENTE_EXT | NUMBER | Y |  |
| 105 | QT_BAIXA_EXT | NUMBER | Y |  |
| 106 | VL_BAIXA_EXT | NUMBER | Y |  |
| 107 | QT_VENDA_EXT | NUMBER | Y |  |
| 108 | VL_VENDA_EXT | NUMBER | Y |  |
| 109 | QT_EMPRESTIMO_EXT | NUMBER | Y |  |
| 110 | VL_EMPRESTIMO_EXT | NUMBER | Y |  |
| 111 | QT_DEVOLUCAO_SETOR_EXT | NUMBER | Y |  |
| 112 | VL_DEVOLUCAO_SETOR_EXT | NUMBER | Y |  |
| 113 | QT_DEVOLUCAO_PACIENTE_EXT | NUMBER | Y |  |
| 114 | VL_DEVOLUCAO_PACIENTE_EXT | NUMBER | Y |  |
| 115 | QT_DEMANDA_EXT | NUMBER | Y |  |
| 116 | VL_DEMANDA_EXT | NUMBER | Y |  |
| 117 | QT_TRANSFERENCIA_SAIDA_EXT | NUMBER | Y |  |
| 118 | VL_TRANSFERENCIA_SAIDA_EXT | NUMBER | Y |  |
| 119 | QT_DOACAO_EXT | NUMBER | Y |  |
| 120 | VL_DOACAO_EXT | NUMBER | Y |  |
| 121 | QT_MANIPULADA_ENTRADA_EXT | NUMBER | Y |  |
| 122 | VL_MANIPULADA_ENTRADA_EXT | NUMBER | Y |  |
| 123 | QT_MANIPULADA_SAIDA_EXT | NUMBER | Y |  |
| 124 | VL_MANIPULADA_SAIDA_EXT | NUMBER | Y |  |
| 125 | QT_CONTAGEM_ENTRADA_EXT | NUMBER | Y |  |
| 126 | VL_CONTAGEM_ENTRADA_EXT | NUMBER | Y |  |
| 127 | QT_CONTAGEM_SAIDA_EXT | NUMBER | Y |  |
| 128 | VL_CONTAGEM_SAIDA_EXT | NUMBER | Y |  |
| 129 | QT_DEVOLVIDA_FORNEC_EXT | NUMBER | Y |  |
| 130 | VL_DEVOLVIDA_FORNEC_EXT | NUMBER | Y |  |
| 131 | QT_EMPRESTIMO_ENTRADA_EXT | NUMBER | Y |  |
| 132 | VL_EMPRESTIMO_ENTRADA_EXT | NUMBER | Y |  |
| 133 | QT_VALE_EXT | NUMBER | Y |  |
| 134 | VL_VALE_EXT | NUMBER | Y |  |
| 135 | QT_DEVOLUCAO_VENDA_ORC | NUMBER | Y |  |
| 136 | QT_DEVOLUCAO_VENDA_EXT | NUMBER | Y |  |
| 137 | VL_DEVOLUCAO_VENDA_ORC | NUMBER | Y |  |
| 138 | VL_DEVOLUCAO_VENDA_EXT | NUMBER | Y |  |
| 139 | QT_ENTRADA_AJUSTE_CONTABIL | NUMBER | Y |  |
| 140 | VL_ENTRADA_AJUSTE_CONTABIL | NUMBER | Y |  |
| 141 | QT_SAIDA_AJUSTE_CONTABIL | NUMBER | Y |  |
| 142 | VL_SAIDA_AJUSTE_CONTABIL | NUMBER | Y |  |
| 143 | QT_ENTRADA_AJUSTE_CONTABIL_SEM | NUMBER | Y |  |
| 144 | VL_ENTRADA_AJUSTE_CONTABIL_SEM | NUMBER | Y |  |
| 145 | QT_SAIDA_AJUSTE_CONTABIL_SEM | NUMBER | Y |  |
| 146 | VL_SAIDA_AJUSTE_CONTABIL_SEM | NUMBER | Y |  |
| 147 | QT_ENTRADA_EMPRESTIMO_RECEBIDO | NUMBER | Y |  |
| 148 | VL_ENTRADA_EMPRESTIMO_RECEBIDO | NUMBER | Y |  |
| 149 | QT_ENTRADA_PAG_EMPRESTIMO | NUMBER | Y |  |
| 150 | VL_ENTRADA_PAG_EMPRESTIMO | NUMBER | Y |  |
| 151 | QT_SAIDA_EMPRESTIMO_CONCEDIDO | NUMBER | Y |  |
| 152 | VL_SAIDA_EMPRESTIMO_CONCEDIDO | NUMBER | Y |  |
| 153 | QT_SAIDA_PAG_EMPRESTIMO | NUMBER | Y |  |
| 154 | VL_SAIDA_PAG_EMPRESTIMO | NUMBER | Y |  |
| 155 | QT_TRANSF_EMP_SAI | NUMBER | Y |  |
| 156 | VL_TRANSF_EMP_SAI | NUMBER | Y |  |
| 157 | QT_TRANSF_EMP_ENT | NUMBER | Y |  |
| 158 | VL_TRANSF_EMP_ENT | NUMBER | Y |  |
| 159 | QT_NOTA_FISCAL_NAO_COBRADA | NUMBER | Y |  |
| 160 | VL_NOTA_FISCAL_NAO_COBRADA | NUMBER | Y |  |
| 161 | QT_ENTRADA_CONSIG | NUMBER | Y |  |
| 162 | VL_ENTRADA_CONSIG | NUMBER | Y |  |
| 163 | QT_DEVOLVIDA_FORNEC_CONSIG | NUMBER | Y |  |
| 164 | VL_DEVOLVIDA_FORNEC_CONSIG | NUMBER | Y |  |
| 165 | QT_EST_INICIAL_FIS_CONSIG | NUMBER | Y |  |
| 166 | VL_EST_INICIAL_FIS_CONSIG | NUMBER | Y |  |
| 167 | QT_EST_INICIAL_FIS_CONSIG_SEM | NUMBER | Y |  |
| 168 | VL_EST_INICIAL_FIS_CONSIG_SEM | NUMBER | Y |  |
| 169 | QT_EST_FINAL_FIS_CONSIG | NUMBER | Y |  |
| 170 | VL_EST_FINAL_FIS_CONSIG | NUMBER | Y |  |
| 171 | QT_EST_FINAL_FIS_CONSIG_SEM | NUMBER | Y |  |
| 172 | VL_EST_FINAL_FIS_CONSIG_SEM | NUMBER | Y |  |
| 173 | CD_SEQ_INTEGRA | NUMBER | Y |  |
| 174 | DT_INTEGRA | DATE | Y |  |
| 175 | CD_LCTO_MOVIMENTO | NUMBER | Y |  |
| 176 | QT_ACERTO_ENTRADA | NUMBER | Y |  |
| 177 | VL_ACERTO_ENTRADA | NUMBER | Y |  |
| 178 | QT_BONIFICACAO | NUMBER | Y |  |
| 179 | VL_BONIFICACAO | NUMBER | Y |  |
| 180 | QT_ENTRADA_NF_TRANSF_EMP | NUMBER | Y |  |
| 181 | VL_ENTRADA_NF_TRANSF_EMP | NUMBER | Y |  |
| 182 | VL_MANIPULADA_ENTRADA_MOV | NUMBER | Y |  |
| 183 | VL_MANIPULADA_SAIDA_MOV | NUMBER | Y |  |
| 184 | VL_TRANSF_EMP_ENT_MOV | NUMBER | Y |  |
| 185 | VL_TRANSF_EMP_SAI_MOV | NUMBER | Y |  |
| 186 | VL_TRANSFERENCIA_SAIDA_MOV | NUMBER | Y |  |
| 187 | VL_ENTRADA_TRANSFERIDO_MOV | NUMBER | Y |  |
| 188 | VL_SAIDA_PACIENTE_MOV | NUMBER | Y |  |
| 189 | VL_DEVOLUCAO_PACIENTE_MOV | NUMBER | Y |  |
| 190 | VL_DEVOLUCAO_SETOR_MOV | NUMBER | Y |  |
| 191 | VL_SAIDA_SETOR_MOV | NUMBER | Y |  |
| 192 | VL_BAIXA_MOV | NUMBER | Y |  |
| 193 | QT_ESTORNO | NUMBER | Y |  |
| 194 | VL_ESTORNO | NUMBER | Y |  |

---

## DBASW.C_CONEST_BKP_12851

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRODUTO | NUMBER | N |  |
| 2 | CD_ESTOQUE | NUMBER | N |  |
| 3 | CD_ANO | NUMBER | N |  |
| 4 | CD_MES | NUMBER | N |  |
| 5 | QT_ESTOQUE_INICIAL | NUMBER | Y |  |
| 6 | VL_ESTOQUE_INICIAL | NUMBER | Y |  |
| 7 | QT_ESTOQUE_FINAL | NUMBER | Y |  |
| 8 | VL_ESTOQUE_FINAL | NUMBER | Y |  |
| 9 | QT_ENTRADA | NUMBER | Y |  |
| 10 | VL_ENTRADA | NUMBER | Y |  |
| 11 | QT_ENTRADA_TRANSFERIDO | NUMBER | Y |  |
| 12 | VL_ENTRADA_TRANSFERIDO | NUMBER | Y |  |
| 13 | QT_SAIDA_SETOR | NUMBER | Y |  |
| 14 | VL_SAIDA_SETOR | NUMBER | Y |  |
| 15 | QT_SAIDA_PACIENTE | NUMBER | Y |  |
| 16 | VL_SAIDA_PACIENTE | NUMBER | Y |  |
| 17 | QT_BAIXA | NUMBER | Y |  |
| 18 | VL_BAIXA | NUMBER | Y |  |
| 19 | QT_VENDA | NUMBER | Y |  |
| 20 | VL_VENDA | NUMBER | Y |  |
| 21 | QT_EMPRESTIMO | NUMBER | Y |  |
| 22 | VL_EMPRESTIMO | NUMBER | Y |  |
| 23 | QT_DEVOLUCAO_SETOR | NUMBER | Y |  |
| 24 | VL_DEVOLUCAO_SETOR | NUMBER | Y |  |
| 25 | QT_DEVOLUCAO_PACIENTE | NUMBER | Y |  |
| 26 | VL_DEVOLUCAO_PACIENTE | NUMBER | Y |  |
| 27 | QT_DEMANDA | NUMBER | Y |  |
| 28 | VL_DEMANDA | NUMBER | Y |  |
| 29 | QT_TRANSFERENCIA_SAIDA | NUMBER | Y |  |
| 30 | VL_TRANSFERENCIA_SAIDA | NUMBER | Y |  |
| 31 | QT_DOACAO | NUMBER | Y |  |
| 32 | VL_DOACAO | NUMBER | Y |  |
| 33 | QT_MANIPULADA_ENTRADA | NUMBER | Y |  |
| 34 | VL_MANIPULADA_ENTRADA | NUMBER | Y |  |
| 35 | QT_MANIPULADA_SAIDA | NUMBER | Y |  |
| 36 | VL_MANIPULADA_SAIDA | NUMBER | Y |  |
| 37 | SN_IMPORTADO_MGES_FCCT | VARCHAR2 | N |  |
| 38 | QT_CONTAGEM_ENTRADA | NUMBER | Y |  |
| 39 | VL_CONTAGEM_ENTRADA | NUMBER | Y |  |
| 40 | QT_CONTAGEM_SAIDA | NUMBER | Y |  |
| 41 | VL_CONTAGEM_SAIDA | NUMBER | Y |  |
| 42 | QT_DEVOLVIDA_FORNEC | NUMBER | Y |  |
| 43 | VL_DEVOLVIDA_FORNEC | NUMBER | Y |  |
| 44 | CD_EXP_CONTABILIDADE | NUMBER | Y |  |
| 45 | QT_EMPRESTIMO_ENTRADA | NUMBER | Y |  |
| 46 | VL_EMPRESTIMO_ENTRADA | NUMBER | Y |  |
| 47 | QT_ESTOQUE_INICIAL_SEM_TRANSF | NUMBER | Y |  |
| 48 | VL_ESTOQUE_INICIAL_SEM_TRANSF | NUMBER | Y |  |
| 49 | QT_ESTOQUE_FINAL_SEM_TRANSF | NUMBER | Y |  |
| 50 | VL_ESTOQUE_FINAL_SEM_TRANSF | NUMBER | Y |  |
| 51 | QT_VALE | NUMBER | Y |  |
| 52 | VL_VALE | NUMBER | Y |  |
| 53 | QT_ESTOQUE_INICIAL_CONSIG | NUMBER | Y |  |
| 54 | VL_ESTOQUE_INICIAL_CONSIG | NUMBER | Y |  |
| 55 | QT_ESTOQUE_FINAL_CONSIG | NUMBER | Y |  |
| 56 | VL_ESTOQUE_FINAL_CONSIG | NUMBER | Y |  |
| 57 | QT_DEVOLUCAO_VENDA | NUMBER | Y |  |
| 58 | VL_DEVOLUCAO_VENDA | NUMBER | Y |  |
| 59 | QT_ENTRADA_ORC | NUMBER | Y |  |
| 60 | VL_ENTRADA_ORC | NUMBER | Y |  |
| 61 | QT_ENTRADA_TRANSFERIDO_ORC | NUMBER | Y |  |
| 62 | VL_ENTRADA_TRANSFERIDO_ORC | NUMBER | Y |  |
| 63 | QT_SAIDA_SETOR_ORC | NUMBER | Y |  |
| 64 | VL_SAIDA_SETOR_ORC | NUMBER | Y |  |
| 65 | QT_SAIDA_PACIENTE_ORC | NUMBER | Y |  |
| 66 | VL_SAIDA_PACIENTE_ORC | NUMBER | Y |  |
| 67 | QT_BAIXA_ORC | NUMBER | Y |  |
| 68 | VL_BAIXA_ORC | NUMBER | Y |  |
| 69 | QT_VENDA_ORC | NUMBER | Y |  |
| 70 | VL_VENDA_ORC | NUMBER | Y |  |
| 71 | QT_EMPRESTIMO_ORC | NUMBER | Y |  |
| 72 | VL_EMPRESTIMO_ORC | NUMBER | Y |  |
| 73 | QT_DEVOLUCAO_SETOR_ORC | NUMBER | Y |  |
| 74 | VL_DEVOLUCAO_SETOR_ORC | NUMBER | Y |  |
| 75 | QT_DEVOLUCAO_PACIENTE_ORC | NUMBER | Y |  |
| 76 | VL_DEVOLUCAO_PACIENTE_ORC | NUMBER | Y |  |
| 77 | QT_DEMANDA_ORC | NUMBER | Y |  |
| 78 | VL_DEMANDA_ORC | NUMBER | Y |  |
| 79 | QT_TRANSFERENCIA_SAIDA_ORC | NUMBER | Y |  |
| 80 | VL_TRANSFERENCIA_SAIDA_ORC | NUMBER | Y |  |
| 81 | QT_DOACAO_ORC | NUMBER | Y |  |
| 82 | VL_DOACAO_ORC | NUMBER | Y |  |
| 83 | QT_MANIPULADA_ENTRADA_ORC | NUMBER | Y |  |
| 84 | VL_MANIPULADA_ENTRADA_ORC | NUMBER | Y |  |
| 85 | QT_MANIPULADA_SAIDA_ORC | NUMBER | Y |  |
| 86 | VL_MANIPULADA_SAIDA_ORC | NUMBER | Y |  |
| 87 | QT_CONTAGEM_ENTRADA_ORC | NUMBER | Y |  |
| 88 | VL_CONTAGEM_ENTRADA_ORC | NUMBER | Y |  |
| 89 | QT_CONTAGEM_SAIDA_ORC | NUMBER | Y |  |
| 90 | VL_CONTAGEM_SAIDA_ORC | NUMBER | Y |  |
| 91 | QT_DEVOLVIDA_FORNEC_ORC | NUMBER | Y |  |
| 92 | VL_DEVOLVIDA_FORNEC_ORC | NUMBER | Y |  |
| 93 | QT_EMPRESTIMO_ENTRADA_ORC | NUMBER | Y |  |
| 94 | VL_EMPRESTIMO_ENTRADA_ORC | NUMBER | Y |  |
| 95 | QT_VALE_ORC | NUMBER | Y |  |
| 96 | VL_VALE_ORC | NUMBER | Y |  |
| 97 | QT_ENTRADA_EXT | NUMBER | Y |  |
| 98 | VL_ENTRADA_EXT | NUMBER | Y |  |
| 99 | QT_ENTRADA_TRANSFERIDO_EXT | NUMBER | Y |  |
| 100 | VL_ENTRADA_TRANSFERIDO_EXT | NUMBER | Y |  |
| 101 | QT_SAIDA_SETOR_EXT | NUMBER | Y |  |
| 102 | VL_SAIDA_SETOR_EXT | NUMBER | Y |  |
| 103 | QT_SAIDA_PACIENTE_EXT | NUMBER | Y |  |
| 104 | VL_SAIDA_PACIENTE_EXT | NUMBER | Y |  |
| 105 | QT_BAIXA_EXT | NUMBER | Y |  |
| 106 | VL_BAIXA_EXT | NUMBER | Y |  |
| 107 | QT_VENDA_EXT | NUMBER | Y |  |
| 108 | VL_VENDA_EXT | NUMBER | Y |  |
| 109 | QT_EMPRESTIMO_EXT | NUMBER | Y |  |
| 110 | VL_EMPRESTIMO_EXT | NUMBER | Y |  |
| 111 | QT_DEVOLUCAO_SETOR_EXT | NUMBER | Y |  |
| 112 | VL_DEVOLUCAO_SETOR_EXT | NUMBER | Y |  |
| 113 | QT_DEVOLUCAO_PACIENTE_EXT | NUMBER | Y |  |
| 114 | VL_DEVOLUCAO_PACIENTE_EXT | NUMBER | Y |  |
| 115 | QT_DEMANDA_EXT | NUMBER | Y |  |
| 116 | VL_DEMANDA_EXT | NUMBER | Y |  |
| 117 | QT_TRANSFERENCIA_SAIDA_EXT | NUMBER | Y |  |
| 118 | VL_TRANSFERENCIA_SAIDA_EXT | NUMBER | Y |  |
| 119 | QT_DOACAO_EXT | NUMBER | Y |  |
| 120 | VL_DOACAO_EXT | NUMBER | Y |  |
| 121 | QT_MANIPULADA_ENTRADA_EXT | NUMBER | Y |  |
| 122 | VL_MANIPULADA_ENTRADA_EXT | NUMBER | Y |  |
| 123 | QT_MANIPULADA_SAIDA_EXT | NUMBER | Y |  |
| 124 | VL_MANIPULADA_SAIDA_EXT | NUMBER | Y |  |
| 125 | QT_CONTAGEM_ENTRADA_EXT | NUMBER | Y |  |
| 126 | VL_CONTAGEM_ENTRADA_EXT | NUMBER | Y |  |
| 127 | QT_CONTAGEM_SAIDA_EXT | NUMBER | Y |  |
| 128 | VL_CONTAGEM_SAIDA_EXT | NUMBER | Y |  |
| 129 | QT_DEVOLVIDA_FORNEC_EXT | NUMBER | Y |  |
| 130 | VL_DEVOLVIDA_FORNEC_EXT | NUMBER | Y |  |
| 131 | QT_EMPRESTIMO_ENTRADA_EXT | NUMBER | Y |  |
| 132 | VL_EMPRESTIMO_ENTRADA_EXT | NUMBER | Y |  |
| 133 | QT_VALE_EXT | NUMBER | Y |  |
| 134 | VL_VALE_EXT | NUMBER | Y |  |
| 135 | QT_DEVOLUCAO_VENDA_ORC | NUMBER | Y |  |
| 136 | QT_DEVOLUCAO_VENDA_EXT | NUMBER | Y |  |
| 137 | VL_DEVOLUCAO_VENDA_ORC | NUMBER | Y |  |
| 138 | VL_DEVOLUCAO_VENDA_EXT | NUMBER | Y |  |
| 139 | QT_ENTRADA_AJUSTE_CONTABIL | NUMBER | Y |  |
| 140 | VL_ENTRADA_AJUSTE_CONTABIL | NUMBER | Y |  |
| 141 | QT_SAIDA_AJUSTE_CONTABIL | NUMBER | Y |  |
| 142 | VL_SAIDA_AJUSTE_CONTABIL | NUMBER | Y |  |
| 143 | QT_ENTRADA_AJUSTE_CONTABIL_SEM | NUMBER | Y |  |
| 144 | VL_ENTRADA_AJUSTE_CONTABIL_SEM | NUMBER | Y |  |
| 145 | QT_SAIDA_AJUSTE_CONTABIL_SEM | NUMBER | Y |  |
| 146 | VL_SAIDA_AJUSTE_CONTABIL_SEM | NUMBER | Y |  |
| 147 | QT_ENTRADA_EMPRESTIMO_RECEBIDO | NUMBER | Y |  |
| 148 | VL_ENTRADA_EMPRESTIMO_RECEBIDO | NUMBER | Y |  |
| 149 | QT_ENTRADA_PAG_EMPRESTIMO | NUMBER | Y |  |
| 150 | VL_ENTRADA_PAG_EMPRESTIMO | NUMBER | Y |  |
| 151 | QT_SAIDA_EMPRESTIMO_CONCEDIDO | NUMBER | Y |  |
| 152 | VL_SAIDA_EMPRESTIMO_CONCEDIDO | NUMBER | Y |  |
| 153 | QT_SAIDA_PAG_EMPRESTIMO | NUMBER | Y |  |
| 154 | VL_SAIDA_PAG_EMPRESTIMO | NUMBER | Y |  |
| 155 | QT_TRANSF_EMP_SAI | NUMBER | Y |  |
| 156 | VL_TRANSF_EMP_SAI | NUMBER | Y |  |
| 157 | QT_TRANSF_EMP_ENT | NUMBER | Y |  |
| 158 | VL_TRANSF_EMP_ENT | NUMBER | Y |  |
| 159 | QT_NOTA_FISCAL_NAO_COBRADA | NUMBER | Y |  |
| 160 | VL_NOTA_FISCAL_NAO_COBRADA | NUMBER | Y |  |
| 161 | QT_ENTRADA_CONSIG | NUMBER | Y |  |
| 162 | VL_ENTRADA_CONSIG | NUMBER | Y |  |
| 163 | QT_DEVOLVIDA_FORNEC_CONSIG | NUMBER | Y |  |
| 164 | VL_DEVOLVIDA_FORNEC_CONSIG | NUMBER | Y |  |
| 165 | QT_EST_INICIAL_FIS_CONSIG | NUMBER | Y |  |
| 166 | VL_EST_INICIAL_FIS_CONSIG | NUMBER | Y |  |
| 167 | QT_EST_INICIAL_FIS_CONSIG_SEM | NUMBER | Y |  |
| 168 | VL_EST_INICIAL_FIS_CONSIG_SEM | NUMBER | Y |  |
| 169 | QT_EST_FINAL_FIS_CONSIG | NUMBER | Y |  |
| 170 | VL_EST_FINAL_FIS_CONSIG | NUMBER | Y |  |
| 171 | QT_EST_FINAL_FIS_CONSIG_SEM | NUMBER | Y |  |
| 172 | VL_EST_FINAL_FIS_CONSIG_SEM | NUMBER | Y |  |
| 173 | CD_SEQ_INTEGRA | NUMBER | Y |  |
| 174 | DT_INTEGRA | DATE | Y |  |
| 175 | CD_LCTO_MOVIMENTO | NUMBER | Y |  |
| 176 | QT_ACERTO_ENTRADA | NUMBER | Y |  |
| 177 | VL_ACERTO_ENTRADA | NUMBER | Y |  |
| 178 | QT_BONIFICACAO | NUMBER | Y |  |
| 179 | VL_BONIFICACAO | NUMBER | Y |  |
| 180 | QT_ENTRADA_NF_TRANSF_EMP | NUMBER | Y |  |
| 181 | VL_ENTRADA_NF_TRANSF_EMP | NUMBER | Y |  |
| 182 | VL_MANIPULADA_ENTRADA_MOV | NUMBER | Y |  |
| 183 | VL_MANIPULADA_SAIDA_MOV | NUMBER | Y |  |
| 184 | VL_TRANSF_EMP_ENT_MOV | NUMBER | Y |  |
| 185 | VL_TRANSF_EMP_SAI_MOV | NUMBER | Y |  |
| 186 | VL_TRANSFERENCIA_SAIDA_MOV | NUMBER | Y |  |
| 187 | VL_ENTRADA_TRANSFERIDO_MOV | NUMBER | Y |  |
| 188 | VL_SAIDA_PACIENTE_MOV | NUMBER | Y |  |
| 189 | VL_DEVOLUCAO_PACIENTE_MOV | NUMBER | Y |  |
| 190 | VL_DEVOLUCAO_SETOR_MOV | NUMBER | Y |  |
| 191 | VL_SAIDA_SETOR_MOV | NUMBER | Y |  |
| 192 | VL_BAIXA_MOV | NUMBER | Y |  |
| 193 | QT_ESTORNO | NUMBER | Y |  |
| 194 | VL_ESTORNO | NUMBER | Y |  |

---

## DBASW.VW_DATA_INICIAL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DATA | DATE | Y |  |

---

## FUSION.ACOMODACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | VARCHAR2 | N |  |
| 3 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.ACOMODACAOAPLICACAODEPARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDACOMODACAO | NUMBER | N |  |
| 3 | IDAPLICACAO | NUMBER | N |  |
| 4 | CODIGO | VARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.ACOMODACAODEPARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDACOMODACAO | NUMBER | N |  |
| 3 | IDINTEGRACAO | NUMBER | N |  |
| 4 | CODIGO | VARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.AGENDAMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAO | NUMBER | N |  |
| 3 | CODIGO | NVARCHAR2 | N |  |
| 4 | IDPACIENTE | NUMBER | N |  |
| 5 | IDESPECIALIDADE | NUMBER | Y |  |
| 6 | IDPROFISSIONAL | NUMBER | Y |  |
| 7 | NUMEROAGENDAMENTO | NVARCHAR2 | Y |  |
| 8 | DATAAGENDAMENTO | TIMESTAMP(6) | N |  |
| 9 | DESCRICAO | NCLOB | Y |  |
| 10 | IDSTATUS | NUMBER | Y |  |
| 11 | DATACONFIRMACAO | TIMESTAMP(6) | Y |  |
| 12 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.ALERGENICO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | NVARCHAR2 | N |  |
| 3 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.ALERGENICODEPARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAO | NUMBER | N |  |
| 3 | IDALERGENICO | NUMBER | N |  |
| 4 | CODIGO | NVARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.ALERGIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDCATEGORIAALERGIA | NUMBER | Y |  |
| 3 | IDALERGENICO | NUMBER | Y |  |
| 4 | NOME | NVARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.ALERGIADEPARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAO | NUMBER | N |  |
| 3 | IDALERGIA | NUMBER | N |  |
| 4 | CODIGO | NVARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.ALERTA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | NVARCHAR2 | N |  |
| 3 | ATIVO | NUMBER | N |  |
| 4 | DATAALTERACAO | TIMESTAMP(6) | N |  |

---

## FUSION.ALERTADOENCA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDALERTA | NUMBER | N |  |
| 3 | IDDOENCA | NUMBER | N |  |
| 4 | DATAALTERACAO | TIMESTAMP(6) | N |  |

---

## FUSION.ALERTAPROCEDIMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDALERTA | NUMBER | N |  |
| 3 | IDPROCEDIMENTO | NUMBER | N |  |
| 4 | VALORRESULTADO | NVARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | N |  |

---

## FUSION.AMBIENTE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | DOMINIO | NVARCHAR2 | N |  |
| 3 | NOME | NVARCHAR2 | N |  |
| 4 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.ANAMNESE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDATENDIMENTO | NUMBER | N |  |
| 3 | IDPROFISSIONAL | NUMBER | Y |  |
| 4 | DATAREGISTRO | TIMESTAMP(6) | N |  |
| 5 | DATAANAMNESE | TIMESTAMP(6) | Y |  |
| 6 | TEXTO | CLOB | N |  |
| 7 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.APLICACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | VARCHAR2 | N |  |
| 3 | DESCRICAO | VARCHAR2 | Y |  |
| 4 | INSTANCECLASS | VARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.APLICACAOMETODOHABILITADO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | IDAPLICACAO | NUMBER | N |  |
| 2 | IDMETODO | NUMBER | N |  |
| 3 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.APLICACAOPARAMETRO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDAPLICACAO | NUMBER | N |  |
| 3 | NOME | VARCHAR2 | N |  |
| 4 | DESCRICAO | VARCHAR2 | N |  |
| 5 | OBRIGATORIO | NUMBER | N |  |
| 6 | ORDEM | NUMBER | N |  |
| 7 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.APLICACAOPENDENCIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAO | NUMBER | N |  |
| 3 | IDAPLICACAO | NUMBER | N |  |
| 4 | IDMETODO | NUMBER | N |  |
| 5 | DATAREGISTRO | TIMESTAMP(6) | N |  |
| 6 | CHAVEENTIDADE | NUMBER | N |  |
| 7 | IDSTATUS | NUMBER | N |  |
| 8 | DATAPROCESSAMENTO | TIMESTAMP(6) | Y |  |
| 9 | ERRO | NUMBER | N |  |
| 10 | AGUARDATRATARERRO | NUMBER | N |  |
| 11 | MENSAGEMERRO | VARCHAR2 | Y |  |
| 12 | DATAERRO | TIMESTAMP(6) | Y |  |
| 13 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.ATENDIMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAO | NUMBER | N |  |
| 3 | CODIGO | NVARCHAR2 | N |  |
| 4 | IDAGENDAMENTO | NUMBER | Y |  |
| 5 | IDATENDIMENTOPAI | NUMBER | Y |  |
| 6 | NUMEROPREATENDIMENTO | NVARCHAR2 | Y |  |
| 7 | NUMEROATENDIMENTO | NVARCHAR2 | Y |  |
| 8 | DATAATENDIMENTO | TIMESTAMP(6) | N |  |
| 9 | IDPACIENTE | NUMBER | N |  |
| 10 | IDTIPOATENDIMENTO | NUMBER | Y |  |
| 11 | IDCARATERATENDIMENTO | NUMBER | Y |  |
| 12 | IDINSTITUICAO | NUMBER | Y |  |
| 13 | IDEQUIPE | NUMBER | Y |  |
| 14 | IDPROFISSIONALRESPONSAVEL | NUMBER | Y |  |
| 15 | IDMOTIVOATENDIMENTO | NUMBER | Y |  |
| 16 | DECLARACAOSUBJETIVAINDIVIDUO | CLOB | Y |  |
| 17 | IDMODELOASSISTENCIAL | NUMBER | Y |  |
| 18 | IDSTATUS | NUMBER | Y |  |
| 19 | DATAALTERACAO | TIMESTAMP(6) | Y |  |
| 20 | IDUNIDADEATENDIMENTO | NUMBER | Y |  |
| 21 | IDSETORATENDIMENTO | NUMBER | Y |  |
| 22 | IDESPECIALIDADEATENDIMENTO | NUMBER | Y |  |
| 23 | DATAINICIOATENDIMENTO | TIMESTAMP(6) | Y |  |
| 24 | DATAFIMATENDIMENTO | TIMESTAMP(6) | Y |  |
| 25 | IDOPERADORASAUDE | NUMBER | Y |  |
| 26 | CARTAOBENEFICIARIO | VARCHAR2 | Y |  |
| 27 | VIACARTAOBENEFICIARIO | VARCHAR2 | Y |  |
| 28 | IDACOMODACAO | NUMBER | Y |  |

---

## FUSION.ATENDIMENTOALTA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | DATAALTA | TIMESTAMP(6) | N |  |
| 3 | IDPROFISSIONAL | NUMBER | Y |  |
| 4 | IDMOTIVOALTA | NUMBER | Y |  |
| 5 | IDDOENCA | NUMBER | Y |  |
| 6 | OBSERVACAO | CLOB | Y |  |
| 7 | OBITO | NUMBER | Y |  |
| 8 | DATAOBITO | TIMESTAMP(6) | Y |  |
| 9 | IDMOTIVOOBITO | NUMBER | Y |  |
| 10 | DATAALTERACAO | TIMESTAMP(6) | Y |  |
| 11 | NUMERODECLARACAOOBITO | VARCHAR2 | Y |  |

---

## FUSION.ATENDIMENTOALTAENCAMINHAMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDTIPOINSTITUICAO | NUMBER | Y |  |
| 3 | IDESPECIALIDADE | NUMBER | Y |  |
| 4 | IDPROFISSIONAL | NUMBER | Y |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.ATENDIMENTOANEXO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDATENDIMENTO | NUMBER | N |  |
| 3 | IDTIPOARMAZENAMENTOARQUIVO | NUMBER | N |  |
| 4 | IDTIPOANEXOATENDIMENTO | NUMBER | Y |  |
| 5 | IDPROFISSIONAL | NUMBER | Y |  |
| 6 | DATAREGISTRO | TIMESTAMP(6) | N |  |
| 7 | NOME | VARCHAR2 | N |  |
| 8 | OBSERVACAO | VARCHAR2 | Y |  |
| 9 | CAMINHO | VARCHAR2 | Y |  |
| 10 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.ATENDIMENTOANEXODATA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | FILEDATA | BLOB | N |  |
| 3 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.ATENDIMENTOAPLICACAOCODIGO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDATENDIMENTO | NUMBER | N |  |
| 3 | IDAPLICACAO | NUMBER | N |  |
| 4 | CODIGO | VARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.ATENDIMENTOINFOADICIONAL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | DATAREGISTRO | TIMESTAMP(6) | Y |  |
| 3 | DATAULTIMAMENSTRUACAO | TIMESTAMP(6) | Y |  |
| 4 | IDADEGESTACIONAL | NUMBER | Y |  |
| 5 | QUANTIDADEPARTOS | NUMBER | Y |  |
| 6 | QUANTIDADEABORTOS | NUMBER | Y |  |
| 7 | IDTIPOALEITAMENTOMATERNO | NUMBER | Y |  |
| 8 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.ATENDIMENTOLOCALIZACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDATENDIMENTO | NUMBER | N |  |
| 3 | IDTIPOLOCAL | NUMBER | N |  |
| 4 | IDLOCAL | NUMBER | N |  |
| 5 | DATAREGISTRO | TIMESTAMP(6) | N |  |
| 6 | DATAENTRADA | TIMESTAMP(6) | Y |  |
| 7 | DATASAIDA | TIMESTAMP(6) | Y |  |
| 8 | DATATRANSFERENCIA | TIMESTAMP(6) | Y |  |
| 9 | OBSERVACAO | NCLOB | Y |  |
| 10 | ATUAL | NUMBER | N |  |
| 11 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.ATENDIMENTOOBSERVACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDATENDIMENTO | NUMBER | N |  |
| 3 | DATAOBSERVACAO | TIMESTAMP(6) | Y |  |
| 4 | NOME | NVARCHAR2 | Y |  |
| 5 | OBSERVACAO | CLOB | Y |  |
| 6 | DATAALTERACAO | TIMESTAMP(6) | Y |  |
| 7 | CODIGO | NVARCHAR2 | N |  |

---

## FUSION.ATENDIMENTOOBSERVACAOANEXO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDATENDIMENTOOBSERVACAO | NUMBER | N |  |
| 3 | IDTIPOANEXO | NUMBER | Y |  |
| 4 | DATAREGISTRO | TIMESTAMP(6) | Y |  |
| 5 | NOME | NVARCHAR2 | Y |  |
| 6 | CAMINHO | NVARCHAR2 | Y |  |
| 7 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.ATENDIMENTOPACIENTECONVENIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDCONVENIO | NUMBER | N |  |
| 3 | NUMEROCARTAO | VARCHAR2 | N |  |
| 4 | VIACARTAO | VARCHAR2 | Y |  |
| 5 | VALIDADECARTAO | TIMESTAMP(6) | Y |  |
| 6 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.ATENDIMENTOPROFISSIONAL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDATENDIMENTO | NUMBER | N |  |
| 3 | IDPROFISSIONAL | NUMBER | N |  |
| 4 | DATAREGISTRO | TIMESTAMP(6) | N |  |
| 5 | RESPONSAVEL | NUMBER | N |  |
| 6 | ATIVO | NUMBER | N |  |
| 7 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.ATENDIMENTOSINALVITAL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDATENDIMENTO | NUMBER | N |  |
| 3 | IDSINALVITAL | NUMBER | N |  |
| 4 | DATAAFERICAO | TIMESTAMP(6) | N |  |
| 5 | VALORTEXTO | NVARCHAR2 | Y |  |
| 6 | VALOR | NUMBER | Y |  |
| 7 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.ATENDIMENTOUSOSUBSTANCIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDATENDIMENTO | NUMBER | N |  |
| 3 | IDSUBSTANCIA | NUMBER | N |  |
| 4 | DATAREGISTRO | TIMESTAMP(6) | Y |  |
| 5 | FREQUENCIA | NVARCHAR2 | Y |  |
| 6 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.BAIRRO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDCIDADE | NUMBER | N |  |
| 3 | NOME | NVARCHAR2 | N |  |
| 4 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.BAIRRODEPARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAO | NUMBER | N |  |
| 3 | IDBAIRRO | NUMBER | N |  |
| 4 | CODIGO | NVARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.CARATERATENDIMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | NVARCHAR2 | N |  |
| 3 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.CARATERATENDIMENTODEPARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAO | NUMBER | N |  |
| 3 | IDCARATERATENDIMENTO | NUMBER | N |  |
| 4 | CODIGO | NVARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.CATEGORIAALERGIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | NVARCHAR2 | N |  |
| 3 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.CATEGORIAALERGIADEPARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAO | NUMBER | N |  |
| 3 | IDCATEGORIAALERGIA | NUMBER | N |  |
| 4 | CODIGO | NVARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.CATEGORIAPROCAPLICACAODEPARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDCATEGORIAPROCEDIMENTO | NUMBER | N |  |
| 3 | IDAPLICACAO | NUMBER | N |  |
| 4 | CODIGO | VARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.CATEGORIAPROCEDIMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | NVARCHAR2 | N |  |
| 3 | DATAALTERACAO | TIMESTAMP(6) | Y |  |
| 4 | IDGRUPOCATEGORIAPROCEDIMENTO | NUMBER | Y |  |

---

## FUSION.CATEGORIAPROCEDIMENTODEPARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAO | NUMBER | N |  |
| 3 | IDCATEGORIAPROCEDIMENTO | NUMBER | N |  |
| 4 | CODIGO | NVARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.CIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDESTADO | NUMBER | N |  |
| 3 | NOME | NVARCHAR2 | N |  |
| 4 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.CIDADECODIGOTABELA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDCIDADE | NUMBER | N |  |
| 3 | IDTABELA | NUMBER | N |  |
| 4 | CODIGO | NVARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.CIDADEDEPARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAO | NUMBER | N |  |
| 3 | IDCIDADE | NUMBER | N |  |
| 4 | CODIGO | NVARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.CLASSIFICACAOOCUPACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | CODIGO | NVARCHAR2 | N |  |
| 3 | NOME | NVARCHAR2 | N |  |
| 4 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.CLASSIFICACAOTIPODIAGNOSTICO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | VARCHAR2 | N |  |
| 3 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.COMPONENTEWIDGET

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | COMPONENTE | NVARCHAR2 | N |  |
| 3 | CONFIGDIALOG | NVARCHAR2 | N |  |
| 4 | NOME | NVARCHAR2 | N |  |
| 5 | DESCRICAO | NVARCHAR2 | Y |  |
| 6 | ICONE | NVARCHAR2 | Y |  |
| 7 | MINWIDTH | NUMBER | Y |  |
| 8 | MAXWIDTH | NUMBER | Y |  |
| 9 | MINHEIGHT | NUMBER | Y |  |
| 10 | MAXHEIGHT | NUMBER | Y |  |
| 11 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.COMPONENTEWIDGETESTILO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDCOMPONENTEWIDGET | NUMBER | N |  |
| 3 | NOME | NVARCHAR2 | N |  |
| 4 | DESCRICAO | NVARCHAR2 | Y |  |
| 5 | PROPRIEDADECSS | NVARCHAR2 | N |  |
| 6 | VALORPADRAO | NVARCHAR2 | Y |  |
| 7 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.COMPONENTEWIDGETPARAM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDCOMPONENTEWIDGET | NUMBER | N |  |
| 3 | IDTIPODADO | NUMBER | N |  |
| 4 | NOME | NVARCHAR2 | N |  |
| 5 | DESCRICAO | NVARCHAR2 | Y |  |
| 6 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.CONSELHOPROFISSIONAL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDTIPOPROFISSIONAL | NUMBER | Y |  |
| 3 | IDESTADO | NUMBER | Y |  |
| 4 | SIGLA | NVARCHAR2 | N |  |
| 5 | NOME | NVARCHAR2 | N |  |
| 6 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.CONSELHOPROFISSIONALDEPARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAO | NUMBER | N |  |
| 3 | IDCONSELHOPROFISSIONAL | NUMBER | N |  |
| 4 | CODIGO | NVARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.CONVENIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | VARCHAR2 | N |  |
| 3 | NUMEROREGISTROANS | VARCHAR2 | Y |  |
| 4 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.CONVENIODEPARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDCONVENIO | NUMBER | N |  |
| 3 | IDINTEGRACAO | NUMBER | N |  |
| 4 | CODIGO | VARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.DETALHERECURSO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDTIPODETALHERECURSO | NUMBER | Y |  |
| 3 | NOME | VARCHAR2 | N |  |
| 4 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.DETALHERECURSODEPARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDDETALHERECURSO | NUMBER | N |  |
| 3 | IDINTEGRACAO | NUMBER | N |  |
| 4 | CODIGO | VARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.DIAGNOSTICO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDATENDIMENTO | NUMBER | N |  |
| 3 | CODIGO | NVARCHAR2 | N |  |
| 4 | IDDOENCA | NUMBER | N |  |
| 5 | IDTIPODIAGNOSTICO | NUMBER | Y |  |
| 6 | IDPROFISSIONAL | NUMBER | Y |  |
| 7 | IDSTATUSDIAGNOSTICO | NUMBER | Y |  |
| 8 | DATA | TIMESTAMP(6) | Y |  |
| 9 | ANOTACOES | CLOB | Y |  |
| 10 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.DOENCA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDTABELA | NUMBER | Y |  |
| 3 | CODIGO | NVARCHAR2 | Y |  |
| 4 | NOME | NVARCHAR2 | N |  |
| 5 | ATIVO | NUMBER | N |  |
| 6 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.DOENCADEPARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAO | NUMBER | N |  |
| 3 | IDDOENCA | NUMBER | N |  |
| 4 | CODIGO | NVARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.DOMINIOINFORMACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | VARCHAR2 | N |  |
| 3 | DESCRICAO | VARCHAR2 | Y |  |
| 4 | COR | VARCHAR2 | Y |  |
| 5 | PATH | CLOB | N |  |
| 6 | ORDEM | NUMBER | N |  |
| 7 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.DURACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | NVARCHAR2 | N |  |
| 3 | IDUNIDADEMEDIDA | NUMBER | Y |  |
| 4 | FATORTEXT | NVARCHAR2 | Y |  |
| 5 | FATOR | NUMBER | Y |  |
| 6 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.DURACAODEPARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAO | NUMBER | N |  |
| 3 | IDDURACAO | NUMBER | N |  |
| 4 | CODIGO | NVARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.EQUIPE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDTIPOEQUIPE | NUMBER | Y |  |
| 3 | NOME | NVARCHAR2 | N |  |
| 4 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.EQUIPECODIGOTABELA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDEQUIPE | NUMBER | N |  |
| 3 | IDTABELA | NUMBER | N |  |
| 4 | CODIGO | NVARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.EQUIPEDEPARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAO | NUMBER | N |  |
| 3 | IDEQUIPE | NUMBER | N |  |
| 4 | CODIGO | NVARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.ERROINTEGRACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAO | NUMBER | N |  |
| 3 | IDSTATUS | NUMBER | N |  |
| 4 | DATAERRO | TIMESTAMP(6) | N |  |
| 5 | CHAVEENTIDADE | NVARCHAR2 | N |  |
| 6 | DADOSOBJETO | CLOB | Y |  |
| 7 | MENSAGEMERRO | CLOB | Y |  |
| 8 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.ESPECIALIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDTIPOPROFISSIONAL | NUMBER | Y |  |
| 3 | NOME | NVARCHAR2 | Y |  |
| 4 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.ESPECIALIDADEDEPARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAO | NUMBER | N |  |
| 3 | IDESPECIALIDADE | NUMBER | N |  |
| 4 | CODIGO | NVARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.ESTADO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDPAIS | NUMBER | N |  |
| 3 | SIGLA | NVARCHAR2 | N |  |
| 4 | NOME | NVARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.ESTADOCODIGOTABELA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDESTADO | NUMBER | N |  |
| 3 | IDTABELA | NUMBER | N |  |
| 4 | CODIGO | NVARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.ESTADODEPARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAO | NUMBER | N |  |
| 3 | IDESTADO | NUMBER | N |  |
| 4 | CODIGO | NVARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.EVOLUCAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDATENDIMENTO | NUMBER | N |  |
| 3 | IDPROFISSIONAL | NUMBER | Y |  |
| 4 | DATAREGISTRO | TIMESTAMP(6) | N |  |
| 5 | DATAEVOLUCAO | TIMESTAMP(6) | Y |  |
| 6 | TEXTO | CLOB | N |  |
| 7 | DATAALTERACAO | TIMESTAMP(6) | Y |  |
| 8 | CODIGO | VARCHAR2 | Y |  |

---

## FUSION.FREQUENCIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | NVARCHAR2 | Y |  |
| 3 | IDUNIDADEMEDIDA | NUMBER | Y |  |
| 4 | FATORTEXTO | NVARCHAR2 | Y |  |
| 5 | FATOR | NUMBER | Y |  |
| 6 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.FREQUENCIADEPARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAO | NUMBER | N |  |
| 3 | IDFREQUENCIA | NUMBER | N |  |
| 4 | CODIGO | NVARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.GENERO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | SIGLA | NVARCHAR2 | N |  |
| 3 | NOME | NVARCHAR2 | N |  |
| 4 | DATAALTERACAO | TIMESTAMP(6) | Y |  |
| 5 | ICONE | VARCHAR2 | Y |  |

---

## FUSION.GENERODEPARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAO | NUMBER | N |  |
| 3 | IDGENERO | NUMBER | N |  |
| 4 | CODIGO | NVARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.GRUPOALERTA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | NVARCHAR2 | N |  |
| 3 | ATIVO | NUMBER | N |  |
| 4 | DATAALTERACAO | TIMESTAMP(6) | N |  |

---

## FUSION.GRUPOALERTAITEM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDGRUPOALERTA | NUMBER | N |  |
| 3 | IDALERTA | NUMBER | N |  |
| 4 | DATAALTERACAO | TIMESTAMP(6) | N |  |

---

## FUSION.GRUPOALERTAUSUARIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDGRUPOALERTA | NUMBER | N |  |
| 3 | IDUSUARIO | NUMBER | N |  |
| 4 | DATAALTERACAO | TIMESTAMP(6) | N |  |

---

## FUSION.GRUPOCATEGORIAPROCEDIMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | VARCHAR2 | N |  |
| 3 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.GRUPOPARAMETRO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | ICONE | NVARCHAR2 | Y |  |
| 3 | NOME | NVARCHAR2 | N |  |
| 4 | DESCRICAO | NVARCHAR2 | Y |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.HL7DATATYPE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDVERSION | NUMBER | N |  |
| 3 | CODIGO | NVARCHAR2 | Y |  |
| 4 | NOME | NVARCHAR2 | N |  |
| 5 | DESCRICAO | NVARCHAR2 | Y |  |
| 6 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.HL7DATATYPECOMPOSITION

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDPARENTDATATYPE | NUMBER | N |  |
| 3 | IDCHILDDATATYPE | NUMBER | N |  |
| 4 | SEQUENCIA | NUMBER | N |  |
| 5 | SEQUENCIACODIGO | NVARCHAR2 | Y |  |
| 6 | DESCRICAO | NVARCHAR2 | Y |  |
| 7 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.HL7SEGMENT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDVERSION | NUMBER | N |  |
| 3 | CODIGO | NVARCHAR2 | Y |  |
| 4 | NOME | NVARCHAR2 | N |  |
| 5 | DESCRICAO | NVARCHAR2 | Y |  |
| 6 | CABECALHO | NUMBER | N |  |
| 7 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.HL7SEGMENTCOMPOSITION

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDSEGMENT | NUMBER | N |  |
| 3 | IDDATATYPE | NUMBER | N |  |
| 4 | SEQUENCIA | NUMBER | N |  |
| 5 | SEQUENCIACODIGO | NVARCHAR2 | Y |  |
| 6 | DESCRICAO | NVARCHAR2 | Y |  |
| 7 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.HL7VERSION

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | CODIGO | NVARCHAR2 | N |  |
| 3 | NOME | NVARCHAR2 | N |  |
| 4 | DATAVERSAO | TIMESTAMP(6) | Y |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.IMPORTARATENDIMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAO | NUMBER | N |  |
| 3 | CODIGO | VARCHAR2 | N |  |
| 4 | IDSTATUS | NUMBER | N |  |
| 5 | ERRO | CLOB | Y |  |
| 6 | DATAALTERACAO | TIMESTAMP(6) | Y |  |
| 7 | DATAATUALIZACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.INSTITUICAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDTIPOINSTITUICAO | NUMBER | Y |  |
| 3 | CODIGOCNES | NVARCHAR2 | Y |  |
| 4 | NOME | NVARCHAR2 | N |  |
| 5 | DATACADASTRO | TIMESTAMP(6) | N |  |
| 6 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.INSTITUICAOAPLICACAODEPARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINSTITUICAO | NUMBER | N |  |
| 3 | IDAPLICACAO | NUMBER | N |  |
| 4 | CODIGO | VARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.INSTITUICAODEPARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAO | NUMBER | N |  |
| 3 | IDINSTITUICAO | NUMBER | N |  |
| 4 | CODIGO | NVARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.INSTITUICAODOCUMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINSTITUICAO | NUMBER | N |  |
| 3 | IDTIPODOCUMENTO | NUMBER | N |  |
| 4 | NUMERODOCUMENTO | NVARCHAR2 | N |  |
| 5 | ATIVO | NUMBER | N |  |
| 6 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.INSTITUICAOENDERECO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINSTITUICAO | NUMBER | N |  |
| 3 | IDTIPOENDERECO | NUMBER | Y |  |
| 4 | IDPAIS | NUMBER | Y |  |
| 5 | IDESTADO | NUMBER | Y |  |
| 6 | IDCIDADE | NUMBER | Y |  |
| 7 | IDBAIRRO | NUMBER | Y |  |
| 8 | LOGRADOURO | NVARCHAR2 | Y |  |
| 9 | NUMERO | NVARCHAR2 | Y |  |
| 10 | COMPLEMENTO | NVARCHAR2 | Y |  |
| 11 | CEP | NVARCHAR2 | Y |  |
| 12 | ATIVO | NUMBER | N |  |
| 13 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.INTEGRACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | CODIGO | NVARCHAR2 | N |  |
| 3 | NOME | NVARCHAR2 | N |  |
| 4 | DESCRICAO | NVARCHAR2 | Y |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.INTEGRACAOAPI

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDUSUARIORESPONSAVEL | NUMBER | Y |  |
| 3 | CNPJRESPONSAVEL | NVARCHAR2 | Y |  |
| 4 | NOMERESPONSAVEL | NVARCHAR2 | Y |  |
| 5 | VINCULAUSUARIOAUTENTICACAO | NUMBER | Y |  |
| 6 | ATIVO | NUMBER | Y |  |
| 7 | DATAALTERACAO | TIMESTAMP(6) | Y |  |
| 8 | GRAVARREQUISICAO | NUMBER | Y |  |
| 9 | GRAVARRESPOSTA | NUMBER | Y |  |

---

## FUSION.INTEGRACAOAPIAMBIENTE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAOAPI | NUMBER | N |  |
| 3 | IDAMBIENTE | NUMBER | N |  |
| 4 | IDSERVIDORBANCODADOS | NUMBER | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.INTEGRACAOAPILOG

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAOAPI | NUMBER | N |  |
| 3 | IDINTEGRACAOAPIMETODO | NUMBER | N |  |
| 4 | IDUSUARIO | NUMBER | N |  |
| 5 | DATAREQUISICAO | TIMESTAMP(6) | N |  |
| 6 | CONTEUDOREQUISICAO | NCLOB | Y |  |
| 7 | DATARESPOSTA | TIMESTAMP(6) | Y |  |
| 8 | DATAALTERACAO | TIMESTAMP(6) | N |  |
| 9 | CONTEUDORESPOSTA | NCLOB | Y |  |
| 10 | AUTORIZADO | NUMBER | Y |  |
| 11 | IDAMBIENTE | NUMBER | N |  |
| 12 | URL | NVARCHAR2 | Y |  |
| 13 | IP | NVARCHAR2 | Y |  |

---

## FUSION.INTEGRACAOAPILOGQUERY

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAOAPILOG | NUMBER | N |  |
| 3 | NOMEPARAMETRO | NVARCHAR2 | N |  |
| 4 | VALORPARAMETRO | NVARCHAR2 | Y |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.INTEGRACAOAPIMETODO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAOAPI | NUMBER | N |  |
| 3 | NOME | NVARCHAR2 | N |  |
| 4 | ATIVO | NUMBER | Y |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.INTEGRACAOAPLICACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAO | NUMBER | N |  |
| 3 | IDAPLICACAO | NUMBER | N |  |
| 4 | DATAREGISTRO | TIMESTAMP(6) | N |  |
| 5 | IDUSUARIOREGISTRO | NUMBER | N |  |
| 6 | ATIVO | NUMBER | N |  |
| 7 | IDUSUARIODESATIVACAO | NUMBER | Y |  |
| 8 | DATADESATIVACAO | TIMESTAMP(6) | Y |  |
| 9 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.INTEGRACAOAPLICACAOMETODO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAOAPLICACAO | NUMBER | N |  |
| 3 | IDMETODO | NUMBER | N |  |
| 4 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.INTEGRACAOAPLICACAOPARAM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAOAPLICACAO | NUMBER | N |  |
| 3 | IDAPLICACAOPARAMETRO | NUMBER | N |  |
| 4 | VALOR | VARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.INTEGRACAOLAYOUT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAO | NUMBER | N |  |
| 3 | IDLAYOUT | NUMBER | N |  |
| 4 | IDTIPOINTEGRACAO | NUMBER | N |  |
| 5 | ATIVO | NUMBER | N |  |
| 6 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.INTEGRACAOLAYOUTHL7

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAOLAYOUT | NUMBER | N |  |
| 3 | IDSEGMENT | NUMBER | N |  |
| 4 | IDSEGMENTCOMPOSITION | NUMBER | N |  |
| 5 | VALOR | NVARCHAR2 | N |  |
| 6 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.INTEGRACAOLAYOUTHL7REGRA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAOLAYOUT | NUMBER | N |  |
| 3 | NOMESEGMENTO | NVARCHAR2 | N |  |
| 4 | INDICECAMPO | NUMBER | N |  |
| 5 | VALOR | NVARCHAR2 | N |  |
| 6 | DATAALTERACAO | TIMESTAMP(6) | N |  |

---

## FUSION.INTEGRACAOLAYOUTJSON

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAOLAYOUT | NUMBER | N |  |
| 3 | NOMECABECALHO | NVARCHAR2 | N |  |
| 4 | VALOR | NVARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.INTEGRACAOLAYOUTJSONREGRA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAOLAYOUT | NUMBER | N |  |
| 3 | NOMEPROPRIEDADE | NVARCHAR2 | N |  |
| 4 | VALOR | NVARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.LATERALIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | VARCHAR2 | N |  |
| 3 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.LATERALIDADEDEPARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAO | NUMBER | N |  |
| 3 | IDLATERALIDADE | NUMBER | N |  |
| 4 | CODIGO | VARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.LAYOUT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDTIPOLAYOUT | NUMBER | N |  |
| 3 | NOMECLASSEINTEGRACAO | NVARCHAR2 | N |  |
| 4 | NOME | NVARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.LAYOUTHL7

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDVERSAO | NUMBER | N |  |
| 3 | CODIGO | NVARCHAR2 | N |  |
| 4 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.LAYOUTITEM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDLAYOUT | NUMBER | N |  |
| 3 | IDLAYOUTITEMPAI | NUMBER | Y |  |
| 4 | SEQUENCIA | NUMBER | N |  |
| 5 | NOMECLASSEREFERENCIA | NVARCHAR2 | Y |  |
| 6 | NOMETIPOPROPRIEDADE | NVARCHAR2 | Y |  |
| 7 | NOMEPROPRIEDADE | NVARCHAR2 | Y |  |
| 8 | LISTA | NUMBER | N |  |
| 9 | OBRIGATORIO | NUMBER | N |  |
| 10 | DATAALTERACAO | TIMESTAMP(6) | Y |  |
| 11 | NOME | NVARCHAR2 | Y |  |

---

## FUSION.LAYOUTITEMCAMPO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDLAYOUTITEM | NUMBER | N |  |
| 3 | IDLAYOUTITEMCAMPOPAI | NUMBER | Y |  |
| 4 | SEQUENCIA | NUMBER | N |  |
| 5 | NOMECLASSEREFERENCIA | NVARCHAR2 | Y |  |
| 6 | NOMETIPOPROPRIEDADE | NVARCHAR2 | Y |  |
| 7 | NOMEPROPRIDADE | NVARCHAR2 | Y |  |
| 8 | LISTA | NUMBER | N |  |
| 9 | REMOVERESPACOS | NUMBER | N |  |
| 10 | REMOVERACENTOS | NUMBER | N |  |
| 11 | IDTIPOTEXTO | NUMBER | N |  |
| 12 | FORMATACAO | NVARCHAR2 | Y |  |
| 13 | TEXTOREMOVER | NVARCHAR2 | Y |  |
| 14 | VALORPADRAO | NVARCHAR2 | Y |  |
| 15 | DATAALTERACAO | TIMESTAMP(6) | Y |  |
| 16 | NOME | NVARCHAR2 | Y |  |

---

## FUSION.LAYOUTITEMCAMPOCONVERTECODIGO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDTIPOCONVERSAOCODIGO | NUMBER | N |  |
| 3 | NOMEPROPRIEDADETABELA | NVARCHAR2 | Y |  |
| 4 | NOMEPROPRIEDADEVERSAO | NVARCHAR2 | Y |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.LAYOUTITEMCAMPOHL7

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDSEGMENTCOMPOSITION | NUMBER | N |  |
| 3 | IDDATATYPECOMPOSITION | NUMBER | Y |  |
| 4 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.LAYOUTITEMHL7

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDSEGMENT | NUMBER | N |  |
| 3 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.LOCAL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDTIPOLOCAL | NUMBER | N |  |
| 3 | NOME | NVARCHAR2 | N |  |
| 4 | DATAALTERACAO | TIMESTAMP(6) | Y |  |
| 5 | IDSTATUS | NUMBER | Y |  |
| 6 | IDINSTITUICAO | NUMBER | Y |  |
| 7 | NUMERO | VARCHAR2 | Y |  |

---

## FUSION.LOCALDEPARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAO | NUMBER | N |  |
| 3 | IDLOCAL | NUMBER | N |  |
| 4 | CODIGO | NVARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.LOCALIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | VARCHAR2 | N |  |
| 3 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.LOCALIDADEDEPARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAO | NUMBER | N |  |
| 3 | IDLOCALIDADE | NUMBER | N |  |
| 4 | CODIGO | VARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.LOCALOCUPACAOATUAL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDLOCAL | NUMBER | N |  |
| 3 | IDATENDIMENTO | NUMBER | N |  |
| 4 | DATAREGISTRO | TIMESTAMP(6) | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | N |  |

---

## FUSION.MEDICAMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NUMEROREGISTRO | NVARCHAR2 | Y |  |
| 3 | NOME | NVARCHAR2 | N |  |
| 4 | CONCENTRACAO | NVARCHAR2 | Y |  |
| 5 | APRESENTACAO | NVARCHAR2 | Y |  |
| 6 | IDSTATUS | NUMBER | Y |  |
| 7 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.MEDICAMENTODEPARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAO | NUMBER | N |  |
| 3 | IDMEDICAMENTO | NUMBER | N |  |
| 4 | CODIGO | NVARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.MENU

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDTIPOMENU | NUMBER | N |  |
| 3 | IDMENUPAI | NUMBER | Y |  |
| 4 | ORDEM | NUMBER | N |  |
| 5 | ICONE | NVARCHAR2 | Y |  |
| 6 | NOME | NVARCHAR2 | N |  |
| 7 | PATH | NVARCHAR2 | N |  |
| 8 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.METODOAPLICACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDTIPOINTEGRACAO | NUMBER | N |  |
| 3 | NOME | VARCHAR2 | N |  |
| 4 | METHOD | VARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.MODELOASSISTENCIAL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | NVARCHAR2 | N |  |
| 3 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.MODELOASSISTENCIALDEPARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAO | NUMBER | N |  |
| 3 | IDMODELOASSISTENCIAL | NUMBER | N |  |
| 4 | CODIGO | NVARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.MOTIVOALTA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | NVARCHAR2 | N |  |
| 3 | DESCRICAO | NCLOB | Y |  |
| 4 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.MOTIVOALTAAPLICACAODEPARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDMOTIVOALTA | NUMBER | N |  |
| 3 | IDAPLICACAO | NUMBER | N |  |
| 4 | CODIGO | VARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.MOTIVOALTADEPARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAO | NUMBER | N |  |
| 3 | IDMOTIVOALTA | NUMBER | N |  |
| 4 | CODIGO | NVARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.MOTIVOATENDIMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | NVARCHAR2 | N |  |
| 3 | ATIVO | NUMBER | N |  |
| 4 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.MOTIVOATENDIMENTOCODIGOTABELA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDMOTIVOATENDIMENTO | NUMBER | N |  |
| 3 | IDTABELA | NUMBER | N |  |
| 4 | CODIGO | NVARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.MOTIVOATENDIMENTODEPARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAO | NUMBER | N |  |
| 3 | IDMOTIVOATENDIMENTO | NUMBER | N |  |
| 4 | CODIGO | NVARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.MOTIVOOBITO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDDOENCA | NUMBER | Y |  |
| 3 | NOME | NVARCHAR2 | N |  |
| 4 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.MOTIVOOBITODEPARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAO | NUMBER | N |  |
| 3 | IDMOTIVOOBITO | NUMBER | N |  |
| 4 | CODIGO | NVARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.MOTIVOQUEBRAVIDRO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | NVARCHAR2 | N |  |
| 3 | ICONE | NVARCHAR2 | Y |  |
| 4 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.NATUREZAPESSOA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | NVARCHAR2 | N |  |
| 3 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.NIVELACESSO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | NVARCHAR2 | N |  |
| 3 | ATIVO | NUMBER | N |  |
| 4 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.NIVELACESSOMENU

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDNIVELACESSO | NUMBER | N |  |
| 3 | IDMENU | NUMBER | N |  |
| 4 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.NIVELACESSOMENUHISTORICO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDNIVELACESSO | NUMBER | N |  |
| 3 | IDMENU | NUMBER | N |  |
| 4 | IDUSUARIO | NUMBER | Y |  |
| 5 | DATA | TIMESTAMP(6) | N |  |
| 6 | ACAO | NVARCHAR2 | N |  |
| 7 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.OPERADORASAUDE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | REGISTROANS | VARCHAR2 | Y |  |
| 3 | NOME | VARCHAR2 | N |  |
| 4 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.OPERADORASAUDEDEPARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDOPERADORASAUDE | NUMBER | N |  |
| 3 | IDINTEGRACAO | NUMBER | N |  |
| 4 | CODIGO | VARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.OPERADORASAUDEDOCUMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDOPERADORASAUDE | NUMBER | N |  |
| 3 | IDTIPODOCUMENTO | NUMBER | N |  |
| 4 | NUMERODOCUMENTO | VARCHAR2 | N |  |
| 5 | VIA | VARCHAR2 | Y |  |
| 6 | DATAEXPEDICAO | TIMESTAMP(6) | Y |  |
| 7 | ORGAOEXPEDICAO | VARCHAR2 | Y |  |
| 8 | ATIVO | NUMBER | N |  |
| 9 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.ORGANIZACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | NVARCHAR2 | N |  |
| 3 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.PACIENTE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | NVARCHAR2 | N |  |
| 3 | NOMEMAE | NVARCHAR2 | Y |  |
| 4 | NOMEPAI | NVARCHAR2 | Y |  |
| 5 | DATANASCIMENTO | TIMESTAMP(6) | Y |  |
| 6 | DATAOBITO | TIMESTAMP(6) | Y |  |
| 7 | IDCIDADENASCIMENTO | NUMBER | Y |  |
| 8 | IDPAISNACIONALIDADE | NUMBER | Y |  |
| 9 | IDGENERO | NUMBER | Y |  |
| 10 | DATACADASTRO | TIMESTAMP(6) | N |  |
| 11 | DATAALTERACAO | TIMESTAMP(6) | Y |  |
| 12 | ATIVO | NUMBER | N |  |

---

## FUSION.PACIENTEALERGIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDPACIENTE | NUMBER | N |  |
| 3 | IDALERGIA | NUMBER | N |  |
| 4 | DATAREGISTRO | TIMESTAMP(6) | N |  |
| 5 | IDSEVERIDADE | NUMBER | Y |  |
| 6 | IDSTATUS | NUMBER | Y |  |
| 7 | DATAINICIO | TIMESTAMP(6) | Y |  |
| 8 | DATAFIM | TIMESTAMP(6) | Y |  |
| 9 | DATAULTIMAREACAO | TIMESTAMP(6) | Y |  |
| 10 | OBSERVACAO | NCLOB | Y |  |
| 11 | ATIVO | NUMBER | N |  |
| 12 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.PACIENTEALERGIAEVOLUCAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDPACIENTEALERGIA | NUMBER | N |  |
| 3 | IDPROFISSIONAL | NUMBER | Y |  |
| 4 | DATAREGISTRO | TIMESTAMP(6) | N |  |
| 5 | DATAMANIFESTACAO | TIMESTAMP(6) | Y |  |
| 6 | OBSREVACAO | NCLOB | Y |  |
| 7 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.PACIENTEALERTA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDPACIENTE | NUMBER | N |  |
| 3 | IDALERTA | NUMBER | N |  |
| 4 | DATAREGISTRO | TIMESTAMP(6) | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | N |  |

---

## FUSION.PACIENTEALERTAITEM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDPACIENTEALERTA | NUMBER | N |  |
| 3 | IDTIPOREGRAALERTA | NUMBER | N |  |
| 4 | IDATENDIMENTO | NUMBER | N |  |
| 5 | DATAOCORRENCIA | TIMESTAMP(6) | N |  |
| 6 | DATAALTERACAO | TIMESTAMP(6) | N |  |

---

## FUSION.PACIENTEALERTAITEMDOENCA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDPACIENTEALERTAITEM | NUMBER | N |  |
| 3 | IDDOENCA | NUMBER | N |  |
| 4 | DATAALTERACAO | TIMESTAMP(6) | N |  |

---

## FUSION.PACIENTEALERTAITEMPRO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDPACIENTEALERTAITEM | NUMBER | N |  |
| 3 | IDPROCEDIMENTO | NUMBER | N |  |
| 4 | VALORRESULTADO | NVARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | N |  |

---

## FUSION.PACIENTEBLOQUEIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDPACIENTE | NUMBER | N |  |
| 3 | IDUSUARIOBLOQUEIO | NUMBER | N |  |
| 4 | DATABLOQUEIO | TIMESTAMP(6) | N |  |
| 5 | MOTIVO | NCLOB | N |  |
| 6 | ATIVO | NUMBER | N |  |
| 7 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.PACIENTEBLOQUEIOANEXO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDPACIENTEBLOQUEIO | NUMBER | N |  |
| 3 | NOME | NVARCHAR2 | N |  |
| 4 | NOMEARQUIVO | NVARCHAR2 | N |  |
| 5 | DESCRICAO | NVARCHAR2 | Y |  |
| 6 | ARQUIVO | BLOB | N |  |
| 7 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.PACIENTECONSENTIMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDPACIENTE | NUMBER | N |  |
| 3 | IDUSUARIOCONSENTIMENTO | NUMBER | N |  |
| 4 | DATACONSENTIMENTO | TIMESTAMP(6) | N |  |
| 5 | IDUSUARIOREVOGACAO | NUMBER | Y |  |
| 6 | DATAREVOGACAO | TIMESTAMP(6) | Y |  |
| 7 | MOTIVORECOVACAO | NCLOB | Y |  |
| 8 | ATIVO | NUMBER | N |  |
| 9 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.PACIENTECONSENTIMENTOANEXO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDPACIENTECONSENTIMENTO | NUMBER | N |  |
| 3 | NOME | NVARCHAR2 | N |  |
| 4 | NOMEARQUIVO | NVARCHAR2 | N |  |
| 5 | DESCRICAO | NVARCHAR2 | Y |  |
| 6 | ARQUIVO | BLOB | N |  |
| 7 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.PACIENTEDEPARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAO | NUMBER | N |  |
| 3 | IDPACIENTE | NUMBER | N |  |
| 4 | CODIGO | NVARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.PACIENTEDOCUMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDPACIENTE | NUMBER | N |  |
| 3 | IDTIPODOCUMENTO | NUMBER | N |  |
| 4 | NUMERODOCUMENTO | NVARCHAR2 | N |  |
| 5 | VIA | NVARCHAR2 | Y |  |
| 6 | DATAEXPEDICAO | TIMESTAMP(6) | Y |  |
| 7 | ORGAOEXPEDICAO | NVARCHAR2 | Y |  |
| 8 | ATIVO | NUMBER | N |  |
| 9 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.PACIENTEENDERECO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDPACIENTE | NUMBER | N |  |
| 3 | IDTIPOENDERECO | NUMBER | Y |  |
| 4 | IDPAIS | NUMBER | Y |  |
| 5 | IDESTADO | NUMBER | Y |  |
| 6 | IDCIDADE | NUMBER | Y |  |
| 7 | IDBAIRRO | NUMBER | Y |  |
| 8 | LOGRADOURO | NVARCHAR2 | Y |  |
| 9 | NUMERO | NVARCHAR2 | Y |  |
| 10 | COMPLEMENTO | NVARCHAR2 | Y |  |
| 11 | CEP | NVARCHAR2 | Y |  |
| 12 | ATIVO | NUMBER | N |  |
| 13 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.PACIENTELIBERACAOACESSO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDTIPOLIBERACAOACESSO | NUMBER | N |  |
| 3 | IDPACIENTE | NUMBER | N |  |
| 4 | IDUSUARIO | NUMBER | N |  |
| 5 | DATASOLICITACAO | TIMESTAMP(6) | N |  |
| 6 | IDSTATUS | NUMBER | N |  |
| 7 | DATAINICIO | TIMESTAMP(6) | N |  |
| 8 | DATAFIM | TIMESTAMP(6) | N |  |
| 9 | OBSERVACAO | VARCHAR2 | Y |  |
| 10 | CODIGOPROTOCOLOCENTRAL | VARCHAR2 | Y |  |
| 11 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.PACIENTELIBERACAOACESSOPROP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDPACIENTELIBERACAOACESSO | NUMBER | N |  |
| 3 | NOME | VARCHAR2 | N |  |
| 4 | VALOR | VARCHAR2 | Y |  |
| 5 | VISIVEL | NUMBER | N |  |
| 6 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.PACIENTEQUEBRAVIDRO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDPACIENTE | NUMBER | N |  |
| 3 | IDUSUARIO | NUMBER | N |  |
| 4 | IDMOTIVOQUEBRAVIDRO | NUMBER | N |  |
| 5 | DATAINICIO | TIMESTAMP(6) | N |  |
| 6 | DATAFIM | TIMESTAMP(6) | N |  |
| 7 | OBSERVACAO | NCLOB | Y |  |
| 8 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.PACIENTEQUEBRAVIDROANEXO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDPACIENTEQUEBRAVIDRO | NUMBER | N |  |
| 3 | NOME | NVARCHAR2 | N |  |
| 4 | DESCRICAO | NVARCHAR2 | Y |  |
| 5 | CAMINHO | NVARCHAR2 | N |  |
| 6 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.PACIENTETELEFONE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDPACIENTE | NUMBER | N |  |
| 3 | IDTIPOTELEFONE | NUMBER | N |  |
| 4 | DDI | VARCHAR2 | Y |  |
| 5 | DDD | VARCHAR2 | Y |  |
| 6 | NUMERO | VARCHAR2 | N |  |
| 7 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.PACIENTEVACINA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDPACIENTE | NUMBER | N |  |
| 3 | IDVACINA | NUMBER | N |  |
| 4 | DATAPROXIMADOSE | TIMESTAMP(6) | Y |  |
| 5 | DATAULTIMADOSE | TIMESTAMP(6) | Y |  |
| 6 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.PACIENTEVACINADOSE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDPACIENTEVACINA | NUMBER | N |  |
| 3 | DATADOSE | TIMESTAMP(6) | N |  |
| 4 | IDINSTITUICAO | NUMBER | Y |  |
| 5 | IDPROFISSIONAL | NUMBER | Y |  |
| 6 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.PAIS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | SIGLA | NVARCHAR2 | N |  |
| 3 | NOME | NVARCHAR2 | N |  |
| 4 | NACIONALIDADE | NVARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.PAISCODIGOTABELA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDPAIS | NUMBER | N |  |
| 3 | IDTABELA | NUMBER | N |  |
| 4 | CODIGO | NVARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.PAISDEPARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAO | NUMBER | N |  |
| 3 | IDPAIS | NUMBER | N |  |
| 4 | CODIGO | NVARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.PARAMETRO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDGRUPOPARAMETRO | NUMBER | N |  |
| 3 | IDTIPODADO | NUMBER | N |  |
| 4 | NOME | NVARCHAR2 | N |  |
| 5 | DESCRICAO | NVARCHAR2 | Y |  |
| 6 | DATAALTERACAO | TIMESTAMP(6) | Y |  |
| 7 | IDTIPOPARAMETRO | NUMBER | N |  |
| 8 | INSTRUCAOSQL | VARCHAR2 | Y |  |
| 9 | CRIPTOGRAFADO | NUMBER | N |  |

---

## FUSION.PARAMETROVALOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDPARAMETRO | NUMBER | N |  |
| 3 | IDINTEGRACAO | NUMBER | Y |  |
| 4 | VALOR | VARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.PENDENCIAINTEGRACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAO | NUMBER | N |  |
| 3 | IDSERVICO | NUMBER | N |  |
| 4 | IDSTATUSPENDENCIAINTEGRACAO | NUMBER | N |  |
| 5 | CHAVEENTIDADE | VARCHAR2 | Y |  |
| 6 | ERRO | NUMBER | Y |  |
| 7 | AGUARDATRATARERRO | NUMBER | Y |  |
| 8 | MENSAGEMERRO | CLOB | Y |  |
| 9 | DATAALTERACAO | TIMESTAMP(6) | N |  |

---

## FUSION.PRIORIDADESOLICITACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | NVARCHAR2 | N |  |
| 3 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.PRIORIDADESOLICITACAODEPARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAO | NUMBER | N |  |
| 3 | IDPRIORIDADESOLICITACAO | NUMBER | N |  |
| 4 | CODIGO | NVARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.PROCEDIMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDCATEGORIAPROCEDIMENTO | NUMBER | Y |  |
| 3 | NOME | NVARCHAR2 | N |  |
| 4 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.PROCEDIMENTOCODIGOTABELA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDPROCEDIMENTO | NUMBER | N |  |
| 3 | IDTABELA | NUMBER | N |  |
| 4 | CODIGO | NVARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.PROCEDIMENTOCOMPOSICAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDPROCEDIMENTO | NUMBER | N |  |
| 3 | IDINTEGRACAO | NUMBER | N |  |
| 4 | CODIGO | VARCHAR2 | N |  |
| 5 | IDLOCALIDADE | NUMBER | Y |  |
| 6 | IDLATERALIDADE | NUMBER | Y |  |
| 7 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.PROCEDIMENTODEPARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAO | NUMBER | N |  |
| 3 | IDPROCEDIMENTO | NUMBER | N |  |
| 4 | CODIGO | NVARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.PROFISSIONAL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDTIPOPROFISSIONAL | NUMBER | N |  |
| 3 | IDCLASSIFICACAOOCUPACAO | NUMBER | Y |  |
| 4 | IDGENERO | NUMBER | Y |  |
| 5 | IDCONSELHO | NUMBER | Y |  |
| 6 | NUMEROCONSELHO | NVARCHAR2 | Y |  |
| 7 | NOME | NVARCHAR2 | N |  |
| 8 | DATANASCIMENTO | TIMESTAMP(6) | Y |  |
| 9 | DATACADASTRO | TIMESTAMP(6) | N |  |
| 10 | DATAALTERACAO | TIMESTAMP(6) | Y |  |
| 11 | IDUSUARIO | NUMBER | Y |  |

---

## FUSION.PROFISSIONALDEPARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAO | NUMBER | N |  |
| 3 | IDPROFISSIONAL | NUMBER | N |  |
| 4 | CODIGO | NVARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.PROFISSIONALDOCUMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDPROFISSIONAL | NUMBER | N |  |
| 3 | IDTIPODOCUMENTO | NUMBER | N |  |
| 4 | NUMERODOCUMENTO | NVARCHAR2 | N |  |
| 5 | VIA | NVARCHAR2 | Y |  |
| 6 | DATAEXPEDICAO | TIMESTAMP(6) | Y |  |
| 7 | ORGAOEXPEDICAO | NVARCHAR2 | Y |  |
| 8 | ATIVO | NUMBER | N |  |
| 9 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.PROFISSIONALENDERECO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDPROFISSIONAL | NUMBER | N |  |
| 3 | IDTIPOENDERECO | NUMBER | Y |  |
| 4 | IDPAIS | NUMBER | Y |  |
| 5 | IDESTADO | NUMBER | Y |  |
| 6 | IDCIDADE | NUMBER | Y |  |
| 7 | IDBAIRRO | NUMBER | Y |  |
| 8 | LOGRADOURO | NVARCHAR2 | Y |  |
| 9 | NUMERO | NVARCHAR2 | Y |  |
| 10 | COMPLEMENTO | NVARCHAR2 | Y |  |
| 11 | CEP | NVARCHAR2 | Y |  |
| 12 | ATIVO | NUMBER | N |  |
| 13 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.PROFISSIONALESPECIALIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDPROFISSIONAL | NUMBER | N |  |
| 3 | IDESPECIALIDADE | NUMBER | N |  |
| 4 | ATIVO | NUMBER | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.RECURSO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | VARCHAR2 | N |  |
| 3 | DATAALTERACAO | TIMESTAMP(6) | Y |  |
| 4 | SOMENTEATENDIMENTOINTERNO | NUMBER | Y |  |

---

## FUSION.RECURSODEPARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDRECURSO | NUMBER | N |  |
| 3 | IDINTEGRACAO | NUMBER | N |  |
| 4 | CODIGO | VARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.RECURSODETALHE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDRECURSO | NUMBER | N |  |
| 3 | IDDETALHERECURSO | NUMBER | N |  |
| 4 | OBRIGATORIO | NUMBER | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.SERVICE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | NVARCHAR2 | N |  |
| 3 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.SERVICEFILE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDSERVICE | NUMBER | N |  |
| 3 | FILEID | NVARCHAR2 | N |  |
| 4 | DATAREGISTRO | TIMESTAMP(6) | N |  |
| 5 | DATAINICIOPROCESSAMENTO | TIMESTAMP(6) | Y |  |
| 6 | DATAFIMPROCESSAMENTO | TIMESTAMP(6) | Y |  |
| 7 | PROCESSADO | NUMBER | N |  |
| 8 | ERRO | NUMBER | N |  |
| 9 | MENSAGEMERRO | NCLOB | Y |  |
| 10 | CONTENT | BLOB | N |  |
| 11 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.SERVICELOG

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDSERVICE | NUMBER | N |  |
| 3 | IDTIPOLOG | NUMBER | N |  |
| 4 | DATA | TIMESTAMP(6) | N |  |
| 5 | LOG | NCLOB | N |  |
| 6 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.SERVICO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | VARCHAR2 | N |  |
| 3 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.SERVICOCONTROLE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAO | NUMBER | N |  |
| 3 | IDSERVICO | NUMBER | N |  |
| 4 | DATAIMPORTADO | TIMESTAMP(6) | Y |  |
| 5 | REGISTROIMPORTADO | VARCHAR2 | Y |  |
| 6 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.SERVICOINTEGRACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | VARCHAR2 | N |  |
| 3 | DATAALTERACAO | TIMESTAMP(6) | N |  |

---

## FUSION.SERVIDORBANCODADOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDTIPOBANCODADOS | NUMBER | N |  |
| 3 | NOME | NVARCHAR2 | N |  |
| 4 | DESCRICAO | NVARCHAR2 | Y |  |
| 5 | CONEXAO | NVARCHAR2 | N |  |
| 6 | DATAALTERACAO | TIMESTAMP(6) | Y |  |
| 7 | IDSISTEMAINTEGRACAO | NUMBER | Y |  |
| 8 | UTILIZARCOMANDOSFETCH | NUMBER | Y |  |
| 9 | NOMESCHEMA | VARCHAR2 | Y |  |

---

## FUSION.SERVIDORLDAP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | NVARCHAR2 | N |  |
| 3 | HOST | NVARCHAR2 | N |  |
| 4 | PORTA | NUMBER | Y |  |
| 5 | SSL | NUMBER | N |  |
| 6 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.SETORATENDIMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | VARCHAR2 | N |  |
| 3 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.SETORATENDIMENTODEPARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAO | NUMBER | N |  |
| 3 | IDSETORATENDIMENTO | NUMBER | N |  |
| 4 | CODIGO | VARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.SEVERIDADEALERGIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | NVARCHAR2 | N |  |
| 3 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.SEVERIDADEALERGIADEPARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAO | NUMBER | N |  |
| 3 | IDSEVERIDADEALERGIA | NUMBER | N |  |
| 4 | CODIGO | NVARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.SINALVITAL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDUNIDADEMEDIDA | NUMBER | Y |  |
| 3 | NOME | NVARCHAR2 | N |  |
| 4 | ICONE | VARCHAR2 | Y |  |
| 5 | ORDEM | NUMBER | Y |  |
| 6 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.SINALVITALDEPARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAO | NUMBER | N |  |
| 3 | IDSINALVITAL | NUMBER | N |  |
| 4 | CODIGO | NVARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.SISTEMAINTEGRACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | NVARCHAR2 | N |  |
| 3 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.SOLICITACAOMEDICAMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDATENDIMENTO | NUMBER | N |  |
| 3 | IDINTEGRACAO | NUMBER | N |  |
| 4 | CODIGO | NVARCHAR2 | N |  |
| 5 | NUMEROPEDIDO | NVARCHAR2 | Y |  |
| 6 | DATAPEDIDO | TIMESTAMP(6) | Y |  |
| 7 | IDPROFISSIONAL | NUMBER | Y |  |
| 8 | ANOTACOES | CLOB | Y |  |
| 9 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.SOLICITACAOMEDICAMENTOITEM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDSOLICITACAOMEDICAMENTO | NUMBER | N |  |
| 3 | IDMEDICAMENTO | NUMBER | N |  |
| 4 | DATAREGISTRO | TIMESTAMP(6) | Y |  |
| 5 | IDUNIDADEMEDIDADOSE | NUMBER | Y |  |
| 6 | QUANTIDADEDOSETEXTO | NVARCHAR2 | Y |  |
| 7 | QUANTIDADEDOSE | NUMBER | Y |  |
| 8 | IDFREQUENCIA | NUMBER | Y |  |
| 9 | IDVIAADMINISTRACAO | NUMBER | Y |  |
| 10 | IDDURACAO | NUMBER | Y |  |
| 11 | QUANTIDADESOLICITADATEXTO | NVARCHAR2 | Y |  |
| 12 | QUANTIDADESOLICITADA | NUMBER | Y |  |
| 13 | IDSTATUS | NUMBER | Y |  |
| 14 | ANOTACOES | CLOB | Y |  |
| 15 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.SOLICITACAOMEDICAMENTOITEMADM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDSOLICITACAOMEDICAMENTOITEM | NUMBER | N |  |
| 3 | IDPROFISSIONAL | NUMBER | Y |  |
| 4 | DATAADMINISTRACAO | TIMESTAMP(6) | Y |  |
| 5 | IDUNIDADEMEDIDADOSE | NUMBER | Y |  |
| 6 | QUANTIDADETEXTO | NVARCHAR2 | Y |  |
| 7 | QUANTIDADE | NUMBER | Y |  |
| 8 | IDVIAADMINISTRACAO | NUMBER | Y |  |
| 9 | NUMEROLOTE | NVARCHAR2 | Y |  |
| 10 | DATAVALIDATE | TIMESTAMP(6) | Y |  |
| 11 | OBSERVACAO | NCLOB | Y |  |
| 12 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.SOLICITACAOMEDICAMENTOITEMSUSP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDPROFISSIONAL | NUMBER | Y |  |
| 3 | DATASUSPENSAO | TIMESTAMP(6) | Y |  |
| 4 | OBSERVACAO | NCLOB | Y |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.SOLICITACAOPROCEDIMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDATENDIMENTO | NUMBER | N |  |
| 3 | IDINTEGRACAO | NUMBER | N |  |
| 4 | CODIGO | NVARCHAR2 | N |  |
| 5 | NUMEROPEDIDO | NVARCHAR2 | Y |  |
| 6 | DATAPEDIDO | TIMESTAMP(6) | Y |  |
| 7 | IDPROFISSIONAL | NUMBER | Y |  |
| 8 | MOTIVO | NCLOB | Y |  |
| 9 | OBSERVACAO | CLOB | Y |  |
| 10 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.SOLICITACAOPROCEDIMENTOITEM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDSOLICITACAOPROCEDIMENTO | NUMBER | N |  |
| 3 | IDPROCEDIMENTO | NUMBER | N |  |
| 4 | IDPRIORIDADE | NUMBER | Y |  |
| 5 | DATAREGISTRO | TIMESTAMP(6) | Y |  |
| 6 | DATAPREVISAOINI | TIMESTAMP(6) | Y |  |
| 7 | DATAPREVISAOFIN | TIMESTAMP(6) | Y |  |
| 8 | IDSTATUS | NUMBER | Y |  |
| 9 | ANOTACOES | CLOB | Y |  |
| 10 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.SOLICITACAOPROITEMRESANEXO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDSOLICITACAOPROITEMRESULTADO | NUMBER | N |  |
| 3 | IDTIPOANEXO | NUMBER | Y |  |
| 4 | DATAREGISTRO | TIMESTAMP(6) | Y |  |
| 5 | NOME | NVARCHAR2 | Y |  |
| 6 | DESCRICAO | NCLOB | Y |  |
| 7 | OBSERVACAO | CLOB | Y |  |
| 8 | CAMINHO | NVARCHAR2 | Y |  |
| 9 | DATAALTERACAO | TIMESTAMP(6) | Y |  |
| 10 | IDTIPOARMAZENAMENTOARQUIVO | NUMBER | N |  |

---

## FUSION.SOLICITACAOPROITEMRESANEXODATA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | FILEDATA | BLOB | N |  |
| 3 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.SOLICITACAOPROITEMRESULTADO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDSOLICITACAOPROCEDIMENTOITEM | NUMBER | N |  |
| 3 | IDPROFISSIONAL | NUMBER | Y |  |
| 4 | DATAREGISTRO | TIMESTAMP(6) | Y |  |
| 5 | DATAINICIO | TIMESTAMP(6) | Y |  |
| 6 | DATAFIM | TIMESTAMP(6) | Y |  |
| 7 | RESULTADO | CLOB | Y |  |
| 8 | OBSERVACAO | CLOB | Y |  |
| 9 | DATAALTERACAO | TIMESTAMP(6) | Y |  |
| 10 | SEQUENCIA | NUMBER | Y |  |
| 11 | IDVALOREXAME | NUMBER | Y |  |
| 12 | POSSUIANEXOS | NUMBER | Y |  |
| 13 | URL | VARCHAR2 | Y |  |

---

## FUSION.STATUSAGENDAMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | NVARCHAR2 | N |  |
| 3 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.STATUSAGENDAMENTODEPARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAO | NUMBER | N |  |
| 3 | IDSTATUS | NUMBER | N |  |
| 4 | CODIGO | NVARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.STATUSALERGIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | NVARCHAR2 | N |  |
| 3 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.STATUSALERGIADEPARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAO | NUMBER | N |  |
| 3 | IDSTATUSALERGIA | NUMBER | N |  |
| 4 | CODIGO | NVARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.STATUSAPLICACAOPENDENCIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | VARCHAR2 | N |  |
| 3 | CSS | VARCHAR2 | N |  |
| 4 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.STATUSATENDIMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | NVARCHAR2 | N |  |
| 3 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.STATUSATENDIMENTODEPARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAO | NUMBER | N |  |
| 3 | IDSTATUSATENDIMENTO | NUMBER | N |  |
| 4 | CODIGO | NVARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.STATUSDIAGNOSTICO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | NVARCHAR2 | N |  |
| 3 | DATAALTERACAO | TIMESTAMP(6) | Y |  |
| 4 | DIAGNOSTICOATIVO | NUMBER | Y |  |

---

## FUSION.STATUSDIAGNOSTICODEPARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAO | NUMBER | N |  |
| 3 | IDSTATUSDIAGNOSTICO | NUMBER | N |  |
| 4 | CODIGO | NVARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.STATUSERROINTEGRACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | NVARCHAR2 | N |  |
| 3 | CSS | NVARCHAR2 | N |  |
| 4 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.STATUSIMPORTACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | VARCHAR2 | N |  |
| 3 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.STATUSLIBERACAOACESSO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | CSS | VARCHAR2 | N |  |
| 3 | NOME | VARCHAR2 | N |  |
| 4 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.STATUSLOCAL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | NVARCHAR2 | N |  |
| 3 | DATAALTERACAO | TIMESTAMP(6) | N |  |
| 4 | COR | VARCHAR2 | Y |  |

---

## FUSION.STATUSMEDICAMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | NVARCHAR2 | N |  |
| 3 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.STATUSPENDENCIAINTEGRACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | VARCHAR2 | N |  |
| 3 | DATAALTERACAO | TIMESTAMP(6) | N |  |

---

## FUSION.STATUSSOLICITACAOPROCEDIMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | NVARCHAR2 | N |  |
| 3 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.STATUSSOLMEDITEM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | NVARCHAR2 | N |  |
| 3 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.STATUSSOLPRODEPARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAO | NUMBER | N |  |
| 3 | IDSTATUS | NUMBER | N |  |
| 4 | CODIGO | NVARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.STATUSTRILHAAUDITORIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | NVARCHAR2 | N |  |
| 3 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.SUBSTANCIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDTIPOSUBSTANCIA | NUMBER | N |  |
| 3 | NOME | NVARCHAR2 | N |  |
| 4 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.SUBSTANCIADEPARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAO | NUMBER | N |  |
| 3 | IDSUBSTANCIA | NUMBER | N |  |
| 4 | CODIGO | NVARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.TABELA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDTIPOTABELA | NUMBER | N |  |
| 3 | CODIGO | NVARCHAR2 | N |  |
| 4 | VERSAO | NVARCHAR2 | Y |  |
| 5 | NOME | NVARCHAR2 | N |  |
| 6 | DESCRICAO | NVARCHAR2 | Y |  |
| 7 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.TABELADEPARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAO | NUMBER | N |  |
| 3 | IDTABELA | NUMBER | N |  |
| 4 | CODIGO | NVARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.TABELATERMO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDTABELA | NUMBER | N |  |
| 3 | NOME | NVARCHAR2 | N |  |
| 4 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.TABELATERMODEPARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAO | NUMBER | N |  |
| 3 | IDTABELA | NUMBER | N |  |
| 4 | IDTABELATERMO | NUMBER | N |  |
| 5 | CODIGO | NVARCHAR2 | N |  |
| 6 | PRINCIPAL | NUMBER | N |  |
| 7 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.TIPOACESSOWIDGET

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | NVARCHAR2 | N |  |
| 3 | DESCRICAO | NVARCHAR2 | Y |  |
| 4 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.TIPOALEITAMENTOMATERNO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | NVARCHAR2 | N |  |
| 3 | DESCRICAO | NVARCHAR2 | Y |  |
| 4 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.TIPOALEITAMENTOMATERNODEPARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAO | NUMBER | N |  |
| 3 | IDTIPOALEITAMENTOMATERNO | NUMBER | N |  |
| 4 | CODIGO | NVARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.TIPOANEXO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | NVARCHAR2 | N |  |
| 3 | EXTENSAO | NVARCHAR2 | Y |  |
| 4 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.TIPOANEXOATENDIMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | ICONE | VARCHAR2 | Y |  |
| 3 | NOME | VARCHAR2 | N |  |
| 4 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.TIPOANEXOATENDIMENTODEPARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDTIPOANEXOATENDIMENTO | NUMBER | N |  |
| 3 | IDINTEGRACAO | NUMBER | N |  |
| 4 | CODIGO | VARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.TIPOANEXODEPARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAO | NUMBER | N |  |
| 3 | IDTIPOANEXO | NUMBER | N |  |
| 4 | CODIGO | NVARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.TIPOARMAZENAMENTOARQUIVO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | VARCHAR2 | N |  |
| 3 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.TIPOATENDIMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | NVARCHAR2 | N |  |
| 3 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.TIPOATENDIMENTOAPLICACAODEPARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDAPLICACAO | NUMBER | N |  |
| 3 | IDTIPOATENDIMENTO | NUMBER | N |  |
| 4 | CODIGO | VARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.TIPOATENDIMENTODEPARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAO | NUMBER | N |  |
| 3 | IDTIPOATENDIMENTO | NUMBER | N |  |
| 4 | CODIGO | NVARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.TIPOBANCODADOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | NVARCHAR2 | N |  |
| 3 | DATAALTERACAO | TIMESTAMP(6) | Y |  |
| 4 | ICONE | NVARCHAR2 | Y |  |

---

## FUSION.TIPOCONVERSAOCODIGO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | NVARCHAR2 | N |  |
| 3 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.TIPODADO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | NVARCHAR2 | N |  |
| 3 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.TIPODETALHERECURSO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | VARCHAR2 | N |  |
| 3 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.TIPODETALHERECURSODEPARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDTIPODETALHERECURSO | NUMBER | N |  |
| 3 | IDINTEGRACAO | NUMBER | N |  |
| 4 | CODIGO | VARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.TIPODIAGNOSTICO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | NVARCHAR2 | N |  |
| 3 | DATAALTERACAO | TIMESTAMP(6) | Y |  |
| 4 | IDCLASSIFICACAOTIPODIAGNOSTICO | NUMBER | Y |  |

---

## FUSION.TIPODIAGNOSTICODEPARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAO | NUMBER | N |  |
| 3 | IDTIPODIAGNOSTICO | NUMBER | N |  |
| 4 | CODIGO | NVARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.TIPODOCUMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | NVARCHAR2 | N |  |
| 3 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.TIPOENDERECO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | NVARCHAR2 | N |  |
| 3 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.TIPOENDERECODEPARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAO | NUMBER | N |  |
| 3 | IDTIPOENDERECO | NUMBER | N |  |
| 4 | CODIGO | NVARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.TIPOEQUIPE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | NVARCHAR2 | N |  |
| 3 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.TIPOEQUIPEDEPARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAO | NUMBER | N |  |
| 3 | IDTIPOEQUIPE | NUMBER | N |  |
| 4 | CODIGO | NVARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.TIPOINSTITUICAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | NVARCHAR2 | N |  |
| 3 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.TIPOINSTITUICAODEPARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAO | NUMBER | N |  |
| 3 | IDTIPOINSTITUICAO | NUMBER | N |  |
| 4 | CODIGO | NVARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.TIPOINTEGRACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | NVARCHAR2 | N |  |
| 3 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.TIPOLAYOUT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | NVARCHAR2 | N |  |
| 3 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.TIPOLIBERACAOACESSO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | VARCHAR2 | N |  |
| 3 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.TIPOLOCAL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | NVARCHAR2 | N |  |
| 3 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.TIPOLOG

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | NVARCHAR2 | N |  |
| 3 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.TIPOLOGIN

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | NVARCHAR2 | N |  |
| 3 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.TIPOMENU

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | NVARCHAR2 | N |  |
| 3 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.TIPOPARAMETRO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | VARCHAR2 | N |  |
| 3 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.TIPOPROFISSIONAL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | NVARCHAR2 | N |  |
| 3 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.TIPOPROFISSIONALDEPARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAO | NUMBER | N |  |
| 3 | IDTIPOPROFISSIONAL | NUMBER | N |  |
| 4 | CODIGO | NVARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.TIPOREGRAALERTA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | NVARCHAR2 | N |  |
| 3 | DATAALTERACAO | TIMESTAMP(6) | N |  |

---

## FUSION.TIPOSUBSTANCIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | NVARCHAR2 | N |  |
| 3 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.TIPOSUBSTANCIADEPARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAO | NUMBER | N |  |
| 3 | IDTIPOSUBSTANCIA | NUMBER | N |  |
| 4 | CODIGO | NVARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.TIPOTABELA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | NVARCHAR2 | N |  |
| 3 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.TIPOTELEFONE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | VARCHAR2 | N |  |
| 3 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.TIPOTEXTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | NVARCHAR2 | N |  |
| 3 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.TIPOUSUARIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | NVARCHAR2 | N |  |
| 3 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.TIPOWIDGET

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | CSS | NVARCHAR2 | N |  |
| 3 | NOME | NVARCHAR2 | N |  |
| 4 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.TRILHAAUDITORIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDPACIENTE | NUMBER | N |  |
| 3 | IDUSUARIO | NUMBER | N |  |
| 4 | DATA | TIMESTAMP(6) | N |  |
| 5 | IDSTATUS | NUMBER | N |  |
| 6 | IDENTIDADESTATUS | NUMBER | Y |  |
| 7 | URL | NVARCHAR2 | N |  |
| 8 | DESCRICAO | NCLOB | N |  |
| 9 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.UNIDADEATENDIMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | VARCHAR2 | N |  |
| 3 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.UNIDADEATENDIMENTODEPARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAO | NUMBER | N |  |
| 3 | IDUNIDADEATENDIMENTO | NUMBER | N |  |
| 4 | CODIGO | VARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.UNIDADEMEDIDA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | SIGLA | NVARCHAR2 | N |  |
| 3 | NOME | NVARCHAR2 | N |  |
| 4 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.UNIDADEMEDIDADEPARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAO | NUMBER | N |  |
| 3 | IDUNIDADEMEDIDA | NUMBER | N |  |
| 4 | CODIGO | NVARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.USUARIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDTIPOUSUARIO | NUMBER | N |  |
| 3 | NOME | NVARCHAR2 | N |  |
| 4 | EMAIL | NVARCHAR2 | N |  |
| 5 | SENHA | NVARCHAR2 | N |  |
| 6 | CPF | NVARCHAR2 | Y |  |
| 7 | TELEFONE | NVARCHAR2 | Y |  |
| 8 | ATIVO | NUMBER | N |  |
| 9 | PENDENTECONFIRMACAO | NUMBER | N |  |
| 10 | BLOQUEADO | NUMBER | N |  |
| 11 | TENTATIVASLOGINERRO | NUMBER | Y |  |
| 12 | DATAALTERACAO | TIMESTAMP(6) | Y |  |
| 13 | IDNIVELACESSO | NUMBER | Y |  |
| 14 | IDTIPOLOGIN | NUMBER | N |  |
| 15 | IDSERVIDORLDAP | NUMBER | Y |  |
| 16 | IDORGANIZACAO | NUMBER | Y |  |

---

## FUSION.USUARIOACESSOSEMSENHA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDUSUARIORESPONSAVEL | NUMBER | N |  |
| 3 | IPRESPONSAVEL | NVARCHAR2 | N |  |
| 4 | IDINTEGRACAOAPIMETODO | NUMBER | Y |  |
| 5 | IDUSUARIO | NUMBER | N |  |
| 6 | DATAREGISTRO | TIMESTAMP(6) | N |  |
| 7 | DATAVALIDADE | TIMESTAMP(6) | N |  |
| 8 | TOKEN | NVARCHAR2 | N |  |
| 9 | URL | NVARCHAR2 | N |  |
| 10 | JSON | NCLOB | Y |  |
| 11 | RESTRINGIRACESSOIP | NUMBER | N |  |
| 12 | IPRESTRICAO | NVARCHAR2 | Y |  |
| 13 | ATIVO | NUMBER | N |  |
| 14 | DATAACESSO | TIMESTAMP(6) | Y |  |
| 15 | IPACESSO | NVARCHAR2 | Y |  |
| 16 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.USUARIOINTEGRACAOAPI

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDUSUARIO | NUMBER | N |  |
| 3 | IDINTEGRACAOAPIMETODO | NUMBER | N |  |
| 4 | AUTOMATICO | NUMBER | Y |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.USUARIOINTEGRACAOAPIHIST

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | DATA | TIMESTAMP(6) | N |  |
| 3 | IDUSUARIO | NUMBER | N |  |
| 4 | IDINTEGRACAOAPIMETODO | NUMBER | N |  |
| 5 | AUTOMATICO | NUMBER | Y |  |
| 6 | ACAO | NVARCHAR2 | N |  |
| 7 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.USUARIONIVELACESSOHISTORICO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDUSUARIO | NUMBER | N |  |
| 3 | IDNIVELACESSO | NUMBER | N |  |
| 4 | IDUSUARIOACAO | NUMBER | Y |  |
| 5 | DATA | TIMESTAMP(6) | N |  |
| 6 | ACAO | NVARCHAR2 | N |  |
| 7 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.USUARIONOVASENHA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDUSUARIO | NUMBER | N |  |
| 3 | TOKEN | NVARCHAR2 | N |  |
| 4 | DATACRIACAO | TIMESTAMP(6) | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | N |  |

---

## FUSION.USUARIOTOKENACESSO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDUSUARIO | NUMBER | N |  |
| 3 | CLIENTID | NVARCHAR2 | N |  |
| 4 | CLIENTSECRET | NVARCHAR2 | N |  |
| 5 | ATIVO | NUMBER | N |  |
| 6 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.VACINA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | NVARCHAR2 | N |  |
| 3 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.VACINADEPARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAO | NUMBER | N |  |
| 3 | IDVACINA | NUMBER | N |  |
| 4 | CODIGO | NVARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.VACINADOENCA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDVACINA | NUMBER | N |  |
| 3 | IDDOENCA | NUMBER | N |  |
| 4 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.VALOREXAME

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | VARCHAR2 | N |  |
| 3 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.VALOREXAMEDEPARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAO | NUMBER | N |  |
| 3 | IDVALOREXAME | NUMBER | N |  |
| 4 | CODIGO | VARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.VERSAOREGISTROINTEGRACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAO | NUMBER | N |  |
| 3 | NOMECAMPO | NVARCHAR2 | N |  |
| 4 | VALORATUAL | NVARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.VIAADMINISTRACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | NVARCHAR2 | N |  |
| 3 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.VIAADMINISTRACAODEPARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDINTEGRACAO | NUMBER | N |  |
| 3 | IDVIAADMINISTRACAO | NUMBER | N |  |
| 4 | CODIGO | NVARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.WIDGET

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDTIPOWIDGET | NUMBER | N |  |
| 3 | IDCOMPONENTEWIDGET | NUMBER | N |  |
| 4 | IDTIPOACESSOWIDGET | NUMBER | N |  |
| 5 | IDUSUARIO | NUMBER | Y |  |
| 6 | NOME | NVARCHAR2 | N |  |
| 7 | DESCRICAO | NVARCHAR2 | Y |  |
| 8 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.WIDGETESPECIALIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDWIDGET | NUMBER | N |  |
| 3 | IDESPECIALIDADE | NUMBER | N |  |
| 4 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.WIDGETESTILO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDWIDGET | NUMBER | N |  |
| 3 | IDCOMPONENTEWIDGETESTILO | NUMBER | N |  |
| 4 | VALOR | NVARCHAR2 | Y |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.WIDGETNIVELACESSO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDWIDGET | NUMBER | N |  |
| 3 | IDNIVELACESSO | NUMBER | N |  |
| 4 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION.WIDGETPARAM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDWIDGET | NUMBER | N |  |
| 3 | IDCOMPONENTEWIDGETPARAM | NUMBER | N |  |
| 4 | VALOR | NVARCHAR2 | N |  |
| 5 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION_INTEGRACAO.BKP_PENDENCIAINTEGRACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDTIPOPENDENCIA | NUMBER | N |  |
| 3 | CHAVEENTIDADEANTIGA | NVARCHAR2 | Y |  |
| 4 | CHAVEENTIDADE | NVARCHAR2 | N |  |
| 5 | CHAVEENTIDADEAUXILIAR | NVARCHAR2 | Y |  |
| 6 | DATAREGISTRO | TIMESTAMP(6) | N |  |
| 7 | PENDENTE | NUMBER | N |  |
| 8 | ERRO | NUMBER | N |  |
| 9 | MENSAGEMERRO | NVARCHAR2 | Y |  |
| 10 | REQUISICAO | NCLOB | Y |  |
| 11 | AGUARDATRATARERRO | NUMBER | Y |  |
| 12 | DATAINTEGRACAO | TIMESTAMP(6) | Y |  |
| 13 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION_INTEGRACAO.IMPORTACAOATENDIMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | DATAREGISTROABERTURA | TIMESTAMP(6) | Y |  |
| 3 | DATAABERTURA | TIMESTAMP(6) | Y |  |
| 4 | ABERTURA | NUMBER | Y |  |
| 5 | ABERTURAPENDENTE | NUMBER | Y |  |
| 6 | ABERTURAPROCESSADA | NUMBER | Y |  |
| 7 | DATAREGISTROALTA | TIMESTAMP(6) | Y |  |
| 8 | DATAALTA | TIMESTAMP(6) | Y |  |
| 9 | ALTA | NUMBER | Y |  |
| 10 | ALTAPENDENTE | NUMBER | Y |  |
| 11 | DATAPROCESSAMENTOALTA | TIMESTAMP(6) | Y |  |
| 12 | ALTAPROCESSADA | NUMBER | Y |  |
| 13 | DATAALTERACAO | TIMESTAMP(6) | Y |  |
| 14 | DATAPROCESSAMENTOABERTURA | TIMESTAMP(6) | Y |  |
| 15 | ERRO | NUMBER | Y |  |
| 16 | TEXTOERRO | VARCHAR2 | Y |  |

---

## FUSION_INTEGRACAO.ORIGEMINFORMACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | IDTIPOORIGEMINFORMACAO | NUMBER | N |  |
| 2 | ID | NUMBER | N |  |
| 3 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION_INTEGRACAO.PENDENCIABUSCAATENDIMENTOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | DATAREGISTRO | TIMESTAMP(6) | N |  |
| 3 | IDPACIENTEFUSION | NUMBER | N |  |
| 4 | SISTEMAORIGEM | VARCHAR2 | N |  |
| 5 | CODIGOPACIENTEORIGEM | VARCHAR2 | N |  |
| 6 | CODIGOATENDIMENTOORIGEM | VARCHAR2 | N |  |
| 7 | NOME | VARCHAR2 | N |  |
| 8 | NOMEMAE | VARCHAR2 | Y |  |
| 9 | DATANASCIMENTO | TIMESTAMP(6) | Y |  |
| 10 | CPF | VARCHAR2 | Y |  |
| 11 | CNS | VARCHAR2 | Y |  |
| 12 | CONCLUIDO | NUMBER | N |  |
| 13 | DATACONCLUSAO | TIMESTAMP(6) | Y |  |
| 14 | DATAERRO | TIMESTAMP(6) | Y |  |
| 15 | ERRO | NUMBER | N |  |
| 16 | MENSAGEMERRO | VARCHAR2 | Y |  |
| 17 | AGUARDATRATARERRO | NUMBER | Y |  |
| 18 | TENTATIVASPROCESSAMENTO | NUMBER | Y |  |

---

## FUSION_INTEGRACAO.PENDENCIAINTEGRACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | IDTIPOPENDENCIA | NUMBER | N |  |
| 3 | CHAVEENTIDADEANTIGA | NVARCHAR2 | Y |  |
| 4 | CHAVEENTIDADE | NVARCHAR2 | N |  |
| 5 | CHAVEENTIDADEAUXILIAR | NVARCHAR2 | Y |  |
| 6 | DATAREGISTRO | TIMESTAMP(6) | N |  |
| 7 | IDSTATUS | NUMBER | N |  |
| 8 | ERRO | NUMBER | N |  |
| 9 | MENSAGEMERRO | NVARCHAR2 | Y |  |
| 10 | REQUISICAO | NCLOB | Y |  |
| 11 | AGUARDATRATARERRO | NUMBER | Y |  |
| 12 | DATAINTEGRACAO | TIMESTAMP(6) | Y |  |
| 13 | DATAALTERACAO | TIMESTAMP(6) | Y |  |
| 14 | PENDENTE | VARCHAR2 | Y |  |

---

## FUSION_INTEGRACAO.STATUSPENDENCIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | VARCHAR2 | N |  |
| 3 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION_INTEGRACAO.TIPOORIGEMINFORMACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | VARCHAR2 | N |  |
| 3 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## FUSION_INTEGRACAO.TIPOPENDENCIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | NVARCHAR2 | N |  |
| 3 | DATAALTERACAO | TIMESTAMP(6) | Y |  |

---

## GTP.ERP_INVENTORY

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_COMPANY_FK | NUMBER | N |  |
| 2 | COD_ITEM_PK | VARCHAR2 | N |  |
| 3 | COD_ESTAB_PK | VARCHAR2 | N |  |
| 4 | COD_LOCAL_PK | VARCHAR2 | N |  |
| 5 | QTY_INV | NUMBER | N |  |
| 6 | SIT_MIX | NUMBER | Y |  |
| 7 | QTY_MIN | NUMBER | Y |  |
| 8 | QTY_MAX | NUMBER | Y |  |

---

## GTP.ERP_INVENTORY_LEO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_COMPANY_FK | NUMBER | N |  |
| 2 | COD_ITEM_PK | VARCHAR2 | N |  |
| 3 | COD_ESTAB_PK | VARCHAR2 | N |  |
| 4 | COD_LOCAL_PK | VARCHAR2 | N |  |
| 5 | QTY_INV | NUMBER | N |  |
| 6 | SIT_MIX | NUMBER | Y |  |
| 7 | QTY_MIN | NUMBER | Y |  |
| 8 | QTY_MAX | NUMBER | Y |  |

---

## GTP.ERP_INVOICE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_COMPANY_FK | NUMBER | N |  |
| 2 | ID_INVOICE_PK | VARCHAR2 | N |  |
| 3 | NUM_INVOICE | VARCHAR2 | Y |  |
| 4 | COD_ITEM | VARCHAR2 | Y |  |
| 5 | COD_ESTAB | VARCHAR2 | Y |  |
| 6 | ID_SUPPLIER | VARCHAR2 | Y |  |
| 7 | DATE_INVOICE | DATE | Y |  |
| 8 | DATE_INVOICE_RECEIVED | DATE | Y |  |
| 9 | NUM_ORDER | NUMBER | Y |  |
| 10 | DATE_ORDER | DATE | Y |  |
| 11 | DATE_ORDER_EXP | DATE | Y |  |
| 12 | QTY_ORDER | NUMBER | Y |  |
| 13 | QTY_INVOICE | NUMBER | Y |  |
| 14 | VAL_UNIT_ORDER | FLOAT | Y |  |
| 15 | VAL_UNIT_INVOICE | FLOAT | Y |  |
| 16 | YN_URGENT | CHAR | Y |  |

---

## GTP.ERP_INVOICE_LEO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_COMPANY_FK | NUMBER | Y |  |
| 2 | ID_INVOICE_PK | VARCHAR2 | Y |  |
| 3 | NUM_INVOICE | VARCHAR2 | Y |  |
| 4 | COD_ITEM | VARCHAR2 | Y |  |
| 5 | COD_ESTAB | VARCHAR2 | Y |  |
| 6 | ID_SUPPLIER | VARCHAR2 | Y |  |
| 7 | DATE_INVOICE | DATE | Y |  |
| 8 | DATE_INVOICE_RECEIVED | DATE | Y |  |
| 9 | NUM_ORDER | NUMBER | Y |  |
| 10 | DATE_ORDER | DATE | Y |  |
| 11 | DATE_ORDER_EXP | DATE | Y |  |
| 12 | QTY_ORDER | NUMBER | Y |  |
| 13 | QTY_INVOICE | NUMBER | Y |  |
| 14 | VAL_UNIT_ORDER | FLOAT | Y |  |
| 15 | VAL_UNIT_INVOICE | FLOAT | Y |  |
| 16 | YN_URGENT | CHAR | Y |  |

---

## GTP.ERP_LOCAL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_COMPANY_FK | NUMBER | N |  |
| 2 | COD_LOCAL_PK | VARCHAR2 | N |  |
| 3 | DESC_LOCAL | VARCHAR2 | N |  |
| 4 | COD_ESTAB_PK | VARCHAR2 | N |  |

---

## GTP.ERP_LOCAL_LEO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_COMPANY_FK | NUMBER | N |  |
| 2 | COD_LOCAL_PK | VARCHAR2 | N |  |
| 3 | DESC_LOCAL | VARCHAR2 | N |  |
| 4 | COD_ESTAB_PK | VARCHAR2 | N |  |

---

## GTP.ERP_PURCHASE_ORDER

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_COMPANY_FK | NUMBER | N |  |
| 2 | ID_ORDER_PK | VARCHAR2 | N |  |
| 3 | NUM_ORDER | NUMBER | N |  |
| 4 | COD_ITEM | VARCHAR2 | N |  |
| 5 | COD_ESTAB | VARCHAR2 | N |  |
| 6 | DATE_ORDER | DATE | N |  |
| 7 | QTY_PARC | NUMBER | Y |  |
| 8 | QTY_REC | NUMBER | Y |  |
| 9 | DATE_EXP | DATE | N |  |
| 10 | DATE_REAL | DATE | Y |  |
| 11 | ID_SUPPLIER | VARCHAR2 | N |  |
| 12 | NUM_REQ | NUMBER | Y |  |
| 13 | DATE_REQ | DATE | Y |  |
| 14 | VAL_UNIT | FLOAT | Y |  |
| 15 | COD_BUYER | VARCHAR2 | Y |  |
| 16 | COD_LOCAL_IN | VARCHAR2 | Y |  |
| 17 | COD_PAYMENT | VARCHAR2 | Y |  |
| 18 | SIT_ORDER | VARCHAR2 | Y |  |
| 19 | OBS_ORDER | VARCHAR2 | Y |  |
| 20 | COD_ORDER_EXTERNAL | VARCHAR2 | Y |  |

---

## GTP.ERP_PURCHASE_ORDER_LEO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_COMPANY_FK | NUMBER | N |  |
| 2 | ID_ORDER_PK | VARCHAR2 | N |  |
| 3 | NUM_ORDER | NUMBER | N |  |
| 4 | COD_ITEM | VARCHAR2 | N |  |
| 5 | COD_ESTAB | VARCHAR2 | N |  |
| 6 | DATE_ORDER | DATE | N |  |
| 7 | QTY_PARC | NUMBER | Y |  |
| 8 | QTY_REC | NUMBER | Y |  |
| 9 | DATE_EXP | DATE | N |  |
| 10 | DATE_REAL | DATE | Y |  |
| 11 | ID_SUPPLIER | VARCHAR2 | N |  |
| 12 | NUM_REQ | NUMBER | Y |  |
| 13 | DATE_REQ | DATE | Y |  |
| 14 | VAL_UNIT | FLOAT | Y |  |
| 15 | COD_BUYER | VARCHAR2 | Y |  |
| 16 | COD_LOCAL_IN | VARCHAR2 | Y |  |
| 17 | COD_PAYMENT | VARCHAR2 | Y |  |
| 18 | SIT_ORDER | VARCHAR2 | Y |  |
| 19 | OBS_ORDER | VARCHAR2 | Y |  |
| 20 | COD_ORDER_EXTERNAL | VARCHAR2 | Y |  |

---

## GTP.ERP_PURCHASE_REQ

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_COMPANY_FK | NUMBER | N |  |
| 2 | ID_REQ_PK | VARCHAR2 | N |  |
| 3 | NUM_REQ | NUMBER | N |  |
| 4 | NUM_ITEM_REQ | NUMBER | N |  |
| 5 | NUM_PARC_REQ | NUMBER | N |  |
| 6 | COD_ITEM | VARCHAR2 | N |  |
| 7 | COD_ESTAB | VARCHAR2 | N |  |
| 8 | COD_LOCAL | VARCHAR2 | Y |  |
| 9 | QTY_PARC | NUMBER | Y |  |
| 10 | DATE_EXP | DATE | N |  |
| 11 | DATE_REQ | DATE | Y |  |

---

## GTP.ERP_PURCHASE_REQ_LEO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_COMPANY_FK | NUMBER | N |  |
| 2 | ID_REQ_PK | VARCHAR2 | N |  |
| 3 | NUM_REQ | NUMBER | N |  |
| 4 | NUM_ITEM_REQ | NUMBER | N |  |
| 5 | NUM_PARC_REQ | NUMBER | N |  |
| 6 | COD_ITEM | VARCHAR2 | N |  |
| 7 | COD_ESTAB | VARCHAR2 | N |  |
| 8 | COD_LOCAL | VARCHAR2 | Y |  |
| 9 | QTY_PARC | FLOAT | Y |  |
| 10 | DATE_EXP | DATE | N |  |
| 11 | DATE_REQ | DATE | Y |  |

---

## GTP.ERP_RESERVE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_COMPANY_FK | NUMBER | N |  |
| 2 | ID_RESERVE_PK | VARCHAR2 | N |  |
| 3 | COD_ITEM | VARCHAR2 | N |  |
| 4 | COD_ESTAB | VARCHAR2 | N |  |
| 5 | COD_LOCAL | VARCHAR2 | N |  |
| 6 | DATE_REQ | DATE | N |  |
| 7 | QTY_REQ | FLOAT | Y |  |
| 8 | TYPE_RESERVE_PK | CHAR | N |  |
| 9 | OBSERVATION | VARCHAR2 | Y |  |

---

## GTP.ERP_RESERVE_LEO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_COMPANY_FK | NUMBER | N |  |
| 2 | ID_RESERVE_PK | VARCHAR2 | N |  |
| 3 | COD_ITEM | VARCHAR2 | N |  |
| 4 | COD_ESTAB | VARCHAR2 | N |  |
| 5 | COD_LOCAL | VARCHAR2 | N |  |
| 6 | DATE_REQ | DATE | N |  |
| 7 | QTY_REQ | FLOAT | Y |  |
| 8 | TYPE_RESERVE_PK | CHAR | N |  |
| 9 | OBSERVATION | VARCHAR2 | Y |  |

---

## GTP.ERP_SKU

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_COMPANY_FK | NUMBER | Y |  |
| 2 | COD_ITEM_PK | VARCHAR2 | N |  |
| 3 | COD_ESTAB_PK | VARCHAR2 | N |  |
| 4 | DESC_ITEM | VARCHAR2 | Y |  |
| 5 | DESC_ESTAB | VARCHAR2 | Y |  |
| 6 | VAL_UNIT_SKU | FLOAT | Y |  |
| 7 | QTY_LAST_ARR | FLOAT | Y |  |
| 8 | VAL_LAST_ARR | FLOAT | Y |  |
| 9 | DATE_LAST_ARR | DATE | Y |  |
| 10 | CURVE_ABC | CHAR | N |  |
| 11 | CURVE_XYZ | CHAR | N |  |
| 12 | QTY_MAX | FLOAT | Y |  |
| 13 | QTY_MIN | FLOAT | Y |  |
| 14 | QTY_PP | FLOAT | Y |  |
| 15 | QTY_AVG_CONS | FLOAT | Y |  |
| 16 | YN_SKU_ACTIVE | CHAR | N |  |
| 17 | COD_STD_UNIT | VARCHAR2 | N |  |
| 18 | DESC_STD_UNIT | VARCHAR2 | N |  |
| 19 | DATE_ADDED | DATE | N |  |
| 20 | YN_PARENT | CHAR | N |  |
| 21 | COD_ITEM_PARENT | VARCHAR2 | Y |  |
| 22 | COD_ITEM_RANK | NUMBER | Y |  |
| 23 | COD_GROUP1 | VARCHAR2 | Y |  |
| 24 | COD_GROUP2 | VARCHAR2 | Y |  |
| 25 | COD_GROUP3 | VARCHAR2 | Y |  |
| 26 | COD_GROUP4 | VARCHAR2 | Y |  |
| 27 | COD_GROUP5 | VARCHAR2 | Y |  |
| 28 | COD_GROUP6 | VARCHAR2 | Y |  |
| 29 | COD_GROUP7 | VARCHAR2 | Y |  |
| 30 | COD_GROUP8 | VARCHAR2 | Y |  |
| 31 | COD_GROUP9 | VARCHAR2 | Y |  |
| 32 | COD_GROUP10 | VARCHAR2 | Y |  |
| 33 | COD_GROUP11 | VARCHAR2 | Y |  |
| 34 | COD_GROUP12 | VARCHAR2 | Y |  |
| 35 | DESC_GROUP1 | VARCHAR2 | Y |  |
| 36 | DESC_GROUP2 | VARCHAR2 | Y |  |
| 37 | DESC_GROUP3 | VARCHAR2 | Y |  |
| 38 | DESC_GROUP4 | VARCHAR2 | Y |  |
| 39 | DESC_GROUP5 | VARCHAR2 | Y |  |
| 40 | DESC_GROUP6 | VARCHAR2 | Y |  |
| 41 | DESC_GROUP7 | VARCHAR2 | Y |  |
| 42 | DESC_GROUP8 | VARCHAR2 | Y |  |
| 43 | DESC_GROUP9 | VARCHAR2 | Y |  |
| 44 | DESC_GROUP10 | VARCHAR2 | Y |  |
| 45 | DESC_GROUP11 | VARCHAR2 | Y |  |
| 46 | DESC_GROUP12 | VARCHAR2 | Y |  |
| 47 | SIT_SUPPLIER_AVAIL | NUMBER | Y |  |
| 48 | QTY_MULT_ORDER | FLOAT | Y |  |
| 49 | COD_ORDER_UNIT | VARCHAR2 | N |  |
| 50 | DESC_ORDER_UNIT | VARCHAR2 | N |  |
| 51 | DEFAULT_LOCAL | VARCHAR2 | Y |  |
| 52 | LAST_PURCHASE_ORDER | NUMBER | Y |  |
| 53 | LAST_PURCHASE_SUPPLIER | VARCHAR2 | Y |  |
| 54 | LAST_PURCHASE_DATE | DATE | Y |  |
| 55 | LAST_PURCHASE_PRICE | FLOAT | Y |  |
| 56 | LAST_PURCHASE_QTY | FLOAT | Y |  |
| 57 | QTY_MIN_BATCH | FLOAT | Y |  |
| 58 | QTY_MULT_BATCH | FLOAT | Y |  |
| 59 | LT_BUYER | VARCHAR2 | Y |  |
| 60 | LT_SUPPLIER | VARCHAR2 | Y |  |
| 61 | FIELD1 | VARCHAR2 | Y |  |
| 62 | FIELD2 | VARCHAR2 | Y |  |
| 63 | FIELD3 | VARCHAR2 | Y |  |

---

## GTP.ERP_SKU_ALL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_COMPANY_FK | NUMBER | N |  |
| 2 | COD_ITEM_PK | VARCHAR2 | N |  |
| 3 | COD_ESTAB_PK | VARCHAR2 | N |  |
| 4 | DESC_ITEM | VARCHAR2 | Y |  |
| 5 | VAL_UNIT | FLOAT | Y |  |
| 6 | YN_PARENT | CHAR | Y |  |
| 7 | COD_ITEM_PARENT | VARCHAR2 | Y |  |
| 8 | COD_STD_UNIT | VARCHAR2 | Y |  |
| 9 | DESC_STD_UNIT | VARCHAR2 | Y |  |
| 10 | QTY_MULT_ORDER | FLOAT | Y |  |
| 11 | COD_ORDER_UNIT | VARCHAR2 | Y |  |
| 12 | DESC_ORDER_UNIT | VARCHAR2 | Y |  |
| 13 | DATE_CREATED | DATE | Y |  |
| 14 | COD_GROUP2 | VARCHAR2 | Y |  |
| 15 | COD_GROUP3 | VARCHAR2 | Y |  |
| 16 | COD_GROUP4 | VARCHAR2 | Y |  |
| 17 | COD_GROUP5 | VARCHAR2 | Y |  |
| 18 | COD_GROUP6 | VARCHAR2 | Y |  |
| 19 | COD_GROUP7 | VARCHAR2 | Y |  |
| 20 | COD_GROUP8 | VARCHAR2 | Y |  |
| 21 | COD_GROUP9 | VARCHAR2 | Y |  |
| 22 | COD_GROUP10 | VARCHAR2 | Y |  |
| 23 | COD_GROUP11 | VARCHAR2 | Y |  |
| 24 | COD_GROUP12 | VARCHAR2 | Y |  |
| 25 | DESC_GROUP1 | VARCHAR2 | Y |  |
| 26 | DESC_GROUP2 | VARCHAR2 | Y |  |
| 27 | DESC_GROUP3 | VARCHAR2 | Y |  |
| 28 | DESC_GROUP4 | VARCHAR2 | Y |  |
| 29 | DESC_GROUP5 | VARCHAR2 | Y |  |
| 30 | DESC_GROUP6 | VARCHAR2 | Y |  |
| 31 | DESC_GROUP7 | VARCHAR2 | Y |  |
| 32 | DESC_GROUP8 | VARCHAR2 | Y |  |
| 33 | DESC_GROUP9 | VARCHAR2 | Y |  |
| 34 | DESC_GROUP10 | VARCHAR2 | Y |  |
| 35 | DESC_GROUP11 | VARCHAR2 | Y |  |
| 36 | DESC_GROUP12 | VARCHAR2 | Y |  |
| 37 | DATE_INSERTED | DATE | Y |  |

---

## GTP.ERP_SKU_LEO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_COMPANY_FK | NUMBER | Y |  |
| 2 | COD_ITEM_PK | VARCHAR2 | N |  |
| 3 | COD_ESTAB_PK | VARCHAR2 | N |  |
| 4 | DESC_ITEM | VARCHAR2 | Y |  |
| 5 | DESC_ESTAB | VARCHAR2 | Y |  |
| 6 | VAL_UNIT_SKU | FLOAT | Y |  |
| 7 | QTY_LAST_ARR | FLOAT | Y |  |
| 8 | VAL_LAST_ARR | FLOAT | Y |  |
| 9 | DATE_LAST_ARR | DATE | Y |  |
| 10 | CURVE_ABC | CHAR | N |  |
| 11 | CURVE_XYZ | CHAR | N |  |
| 12 | QTY_MAX | FLOAT | Y |  |
| 13 | QTY_MIN | FLOAT | Y |  |
| 14 | QTY_PP | FLOAT | Y |  |
| 15 | QTY_AVG_CONS | FLOAT | Y |  |
| 16 | YN_SKU_ACTIVE | CHAR | N |  |
| 17 | COD_STD_UNIT | VARCHAR2 | N |  |
| 18 | DESC_STD_UNIT | VARCHAR2 | N |  |
| 19 | DATE_ADDED | DATE | N |  |
| 20 | YN_PARENT | CHAR | N |  |
| 21 | COD_ITEM_PARENT | VARCHAR2 | Y |  |
| 22 | COD_ITEM_RANK | NUMBER | Y |  |
| 23 | COD_GROUP1 | VARCHAR2 | Y |  |
| 24 | COD_GROUP2 | VARCHAR2 | Y |  |
| 25 | COD_GROUP3 | VARCHAR2 | Y |  |
| 26 | COD_GROUP4 | VARCHAR2 | Y |  |
| 27 | COD_GROUP5 | VARCHAR2 | Y |  |
| 28 | COD_GROUP6 | VARCHAR2 | Y |  |
| 29 | COD_GROUP7 | VARCHAR2 | Y |  |
| 30 | COD_GROUP8 | VARCHAR2 | Y |  |
| 31 | COD_GROUP9 | VARCHAR2 | Y |  |
| 32 | COD_GROUP10 | VARCHAR2 | Y |  |
| 33 | COD_GROUP11 | VARCHAR2 | Y |  |
| 34 | COD_GROUP12 | VARCHAR2 | Y |  |
| 35 | DESC_GROUP1 | VARCHAR2 | Y |  |
| 36 | DESC_GROUP2 | VARCHAR2 | Y |  |
| 37 | DESC_GROUP3 | VARCHAR2 | Y |  |
| 38 | DESC_GROUP4 | VARCHAR2 | Y |  |
| 39 | DESC_GROUP5 | VARCHAR2 | Y |  |
| 40 | DESC_GROUP6 | VARCHAR2 | Y |  |
| 41 | DESC_GROUP7 | VARCHAR2 | Y |  |
| 42 | DESC_GROUP8 | VARCHAR2 | Y |  |
| 43 | DESC_GROUP9 | VARCHAR2 | Y |  |
| 44 | DESC_GROUP10 | VARCHAR2 | Y |  |
| 45 | DESC_GROUP11 | VARCHAR2 | Y |  |
| 46 | DESC_GROUP12 | VARCHAR2 | Y |  |
| 47 | SIT_SUPPLIER_AVAIL | NUMBER | Y |  |
| 48 | QTY_MULT_ORDER | FLOAT | Y |  |
| 49 | COD_ORDER_UNIT | VARCHAR2 | N |  |
| 50 | DESC_ORDER_UNIT | VARCHAR2 | N |  |
| 51 | DEFAULT_LOCAL | VARCHAR2 | Y |  |
| 52 | LAST_PURCHASE_ORDER | NUMBER | Y |  |
| 53 | LAST_PURCHASE_SUPPLIER | VARCHAR2 | Y |  |
| 54 | LAST_PURCHASE_DATE | DATE | Y |  |
| 55 | LAST_PURCHASE_PRICE | FLOAT | Y |  |
| 56 | LAST_PURCHASE_QTY | FLOAT | Y |  |
| 57 | QTY_MIN_BATCH | FLOAT | Y |  |
| 58 | QTY_MULT_BATCH | FLOAT | Y |  |
| 59 | LT_BUYER | VARCHAR2 | Y |  |
| 60 | LT_SUPPLIER | VARCHAR2 | Y |  |
| 61 | COD_ITEM_CORP | VARCHAR2 | Y |  |
| 62 | FIELD1 | VARCHAR2 | Y |  |
| 63 | FIELD2 | VARCHAR2 | Y |  |
| 64 | FIELD3 | VARCHAR2 | Y |  |

---

## GTP.ERP_SUPPLIER

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_COMPANY_FK | NUMBER | N |  |
| 2 | ID_SUPPLIER_PK | VARCHAR2 | N |  |
| 3 | COD_SUPPLIER | VARCHAR2 | N |  |
| 4 | DESC_SUPPLIER | VARCHAR2 | N |  |
| 5 | SUPPLIER_CONTACT_NAME | VARCHAR2 | Y |  |
| 6 | EMAIL_SUPPLIER | VARCHAR2 | Y |  |

---

## GTP.ERP_SUPPLIER_LEO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_COMPANY_FK | NUMBER | N |  |
| 2 | ID_SUPPLIER_PK | VARCHAR2 | N |  |
| 3 | COD_SUPPLIER | VARCHAR2 | N |  |
| 4 | DESC_SUPPLIER | VARCHAR2 | N |  |
| 5 | SUPPLIER_CONTACT_NAME | VARCHAR2 | Y |  |
| 6 | EMAIL_SUPPLIER | VARCHAR2 | Y |  |

---

## GTP.ERP_TRANSACTION_IN

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_COMPANY_FK | NUMBER | Y |  |
| 2 | COD_TRANS_PK | NUMBER | N |  |
| 3 | COD_ITEM | VARCHAR2 | Y |  |
| 4 | COD_ESTAB | VARCHAR2 | N |  |
| 5 | DATE_TRANS | DATE | Y |  |
| 6 | QTY_TRANS | FLOAT | N |  |
| 7 | TYPE_TRANS | CHAR | Y |  |

---

## GTP.ERP_TRANSACTION_IN_LEO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_COMPANY_FK | NUMBER | Y |  |
| 2 | COD_TRANS_PK | NUMBER | N |  |
| 3 | COD_ITEM | VARCHAR2 | Y |  |
| 4 | COD_ESTAB | VARCHAR2 | Y |  |
| 5 | DATE_TRANS | DATE | Y |  |
| 6 | QTY_TRANS | FLOAT | N |  |
| 7 | TYPE_TRANS | CHAR | Y |  |

---

## GTP.ERP_TRANSACTION_OUT_DAY

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_COMPANY_FK | NUMBER | N |  |
| 2 | COD_ITEM_PK | VARCHAR2 | N |  |
| 3 | COD_ESTAB_PK | VARCHAR2 | N |  |
| 4 | COD_LOCAL_PK | VARCHAR2 | N |  |
| 5 | COD_LOCAL_DEST_PK | VARCHAR2 | N |  |
| 6 | COD_SECTOR_PK | VARCHAR2 | N |  |
| 7 | TYPE_TRANS_PK | VARCHAR2 | N |  |
| 8 | DATE_TRANS_PK | DATE | N |  |
| 9 | QTY_TRANS | FLOAT | Y |  |
| 10 | YN_CONS | CHAR | Y |  |

---

## GTP.ERP_TRANSACTION_OUT_DAY_LEO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_COMPANY_FK | NUMBER | N |  |
| 2 | COD_ITEM_PK | VARCHAR2 | N |  |
| 3 | COD_ESTAB_PK | VARCHAR2 | N |  |
| 4 | COD_LOCAL_PK | VARCHAR2 | N |  |
| 5 | COD_LOCAL_DEST_PK | VARCHAR2 | N |  |
| 6 | COD_SECTOR_PK | VARCHAR2 | N |  |
| 7 | TYPE_TRANS_PK | VARCHAR2 | N |  |
| 8 | DATE_TRANS_PK | DATE | N |  |
| 9 | QTY_TRANS | FLOAT | Y |  |
| 10 | YN_CONS | CHAR | Y |  |

---

## GTP.ERP_TRANSACTION_OUT_MONTH

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_COMPANY_FK | NUMBER | Y |  |
| 2 | COD_ITEM_PK | VARCHAR2 | N |  |
| 3 | COD_ESTAB_PK | VARCHAR2 | N |  |
| 4 | COD_LOCAL_PK | VARCHAR2 | N |  |
| 5 | COD_LOCAL_DEST_PK | VARCHAR2 | N |  |
| 6 | COD_SECTOR_PK | VARCHAR2 | N |  |
| 7 | TYPE_TRANS_PK | VARCHAR2 | N |  |
| 8 | MONTH_TRANS_PK | DATE | N |  |
| 9 | QTY_TRANS | FLOAT | Y |  |
| 10 | YN_CONS | CHAR | Y |  |

---

## GTP.ERP_TRANSACTION_OUT_MONTH_LEO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_COMPANY_FK | NUMBER | Y |  |
| 2 | COD_ITEM_PK | VARCHAR2 | N |  |
| 3 | COD_ESTAB_PK | VARCHAR2 | N |  |
| 4 | COD_LOCAL_PK | VARCHAR2 | N |  |
| 5 | COD_LOCAL_DEST_PK | VARCHAR2 | N |  |
| 6 | COD_SECTOR_PK | VARCHAR2 | N |  |
| 7 | TYPE_TRANS_PK | VARCHAR2 | N |  |
| 8 | MONTH_TRANS_PK | DATE | N |  |
| 9 | QTY_TRANS | FLOAT | Y |  |
| 10 | YN_CONS | CHAR | Y |  |

---

## GTP.VW_ERP_INVENTORY

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | COD_ITEM_PK | NUMBER | N |  |
| 2 | COD_ESTAB_PK | VARCHAR2 | Y |  |
| 3 | COD_LOCAL_PK | NUMBER | N |  |
| 4 | QTY_INV | NUMBER | Y |  |
| 5 | SIT_MIX | NUMBER | Y |  |
| 6 | QTY_MIN | NUMBER | Y |  |
| 7 | QTY_MAX | NUMBER | Y |  |

---

## GTP.VW_ERP_INVENTORY_BKP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | COD_ITEM_PK | NUMBER | N |  |
| 2 | COD_ESTAB_PK | VARCHAR2 | Y |  |
| 3 | COD_LOCAL_PK | NUMBER | N |  |
| 4 | QTY_INV | NUMBER | Y |  |
| 5 | SIT_MIX | NUMBER | Y |  |
| 6 | QTY_MIN | NUMBER | Y |  |
| 7 | QTY_MAX | NUMBER | Y |  |

---

## GTP.VW_ERP_INVENTORY_TESTE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | COD_ITEM_PK | NUMBER | N |  |
| 2 | COD_ESTAB_PK | VARCHAR2 | Y |  |
| 3 | COD_LOCAL_PK | NUMBER | N |  |
| 4 | QTY_INV | NUMBER | Y |  |
| 5 | SIT_MIX | NUMBER | Y |  |
| 6 | QTY_MIN | NUMBER | Y |  |
| 7 | QTY_MAX | NUMBER | Y |  |

---

## GTP.VW_ERP_INVOICE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_INVOICE_PK | NUMBER | N |  |
| 2 | NUM_INVOICE | VARCHAR2 | Y |  |
| 3 | COD_ITEM | NUMBER | Y |  |
| 4 | COD_ESTAB | NUMBER | N |  |
| 5 | ID_SUPPLIER | NUMBER | Y |  |
| 6 | DATE_INVOICE | DATE | Y |  |
| 7 | DATE_INVOICE_RECEIVED | DATE | N |  |
| 8 | NUM_ORDER | NUMBER | Y |  |
| 9 | DATE_ORDER | DATE | Y |  |
| 10 | DATE_ORDER_EXP | DATE | Y |  |
| 11 | QTY_ORDER | NUMBER | Y |  |
| 12 | QTY_INVOICE | NUMBER | N |  |
| 13 | VAL_UNIT_ORDER | NUMBER | Y |  |
| 14 | VAL_UNIT_INVOICE | NUMBER | Y |  |
| 15 | YN_URGENT | CHAR | Y |  |

---

## GTP.VW_ERP_LOCAL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | COD_LOCAL_PK | NUMBER | N |  |
| 2 | DESC_LOCAL | VARCHAR2 | Y |  |
| 3 | COD_ESTAB_PK | NUMBER | Y |  |

---

## GTP.VW_ERP_PURCHASE_ORDER

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_ORDER_PK | VARCHAR2 | Y |  |
| 2 | NUM_ORDER | NUMBER | N |  |
| 3 | COD_ITEM | NUMBER | N |  |
| 4 | COD_ESTAB | NUMBER | N |  |
| 5 | DATE_ORDER | DATE | Y |  |
| 6 | QTY_PARC | NUMBER | Y |  |
| 7 | DATE_EXP | DATE | Y |  |
| 8 | DATE_REAL | VARCHAR2 | Y |  |
| 9 | ID_SUPPLIER | NUMBER | N |  |
| 10 | NUM_REQ | NUMBER | Y |  |
| 11 | DATE_REQ | DATE | Y |  |
| 12 | VAL_UNIT | NUMBER | N |  |
| 13 | QTY_REC | NUMBER | Y |  |
| 14 | COD_ORDER_EXTERNAL | VARCHAR2 | Y |  |
| 15 | COD_BUYER | VARCHAR2 | Y |  |
| 16 | COD_LOCAL_IN | NUMBER | N |  |
| 17 | COD_PAYMENT | NUMBER | N |  |
| 18 | OBS_ORDER | VARCHAR2 | Y |  |
| 19 | SIT_ORDER | VARCHAR2 | N |  |

---

## GTP.VW_ERP_PURCHASE_ORDER_BKP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_ORDER_PK | VARCHAR2 | Y |  |
| 2 | NUM_ORDER | NUMBER | N |  |
| 3 | COD_ITEM | NUMBER | N |  |
| 4 | COD_ESTAB | NUMBER | N |  |
| 5 | DATE_ORDER | DATE | Y |  |
| 6 | QTY_PARC | NUMBER | Y |  |
| 7 | DATE_EXP | DATE | Y |  |
| 8 | DATE_REAL | VARCHAR2 | Y |  |
| 9 | ID_SUPPLIER | NUMBER | N |  |
| 10 | NUM_REQ | NUMBER | Y |  |
| 11 | DATE_REQ | DATE | Y |  |
| 12 | VAL_UNIT | NUMBER | N |  |
| 13 | QTY_REC | NUMBER | Y |  |
| 14 | COD_ORDER_EXTERNAL | VARCHAR2 | Y |  |
| 15 | COD_BUYER | VARCHAR2 | Y |  |
| 16 | COD_LOCAL_IN | NUMBER | N |  |
| 17 | COD_PAYMENT | NUMBER | N |  |
| 18 | OBS_ORDER | VARCHAR2 | Y |  |
| 19 | SIT_ORDER | VARCHAR2 | N |  |

---

## GTP.VW_ERP_PURCHASE_ORDER_BKP2

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_ORDER_PK | VARCHAR2 | Y |  |
| 2 | NUM_ORDER | NUMBER | N |  |
| 3 | COD_ITEM | NUMBER | N |  |
| 4 | COD_ESTAB | NUMBER | N |  |
| 5 | DATE_ORDER | DATE | Y |  |
| 6 | QTY_PARC | NUMBER | Y |  |
| 7 | DATE_EXP | DATE | Y |  |
| 8 | DATE_REAL | VARCHAR2 | Y |  |
| 9 | ID_SUPPLIER | NUMBER | N |  |
| 10 | NUM_REQ | NUMBER | Y |  |
| 11 | DATE_REQ | DATE | Y |  |
| 12 | VAL_UNIT | NUMBER | N |  |
| 13 | QTY_REC | NUMBER | Y |  |
| 14 | COD_ORDER_EXTERNAL | VARCHAR2 | Y |  |
| 15 | COD_BUYER | VARCHAR2 | Y |  |
| 16 | COD_LOCAL_IN | NUMBER | N |  |
| 17 | COD_PAYMENT | NUMBER | N |  |
| 18 | OBS_ORDER | VARCHAR2 | Y |  |
| 19 | SIT_ORDER | VARCHAR2 | N |  |

---

## GTP.VW_ERP_PURCHASE_REQ

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_REQ_PK | VARCHAR2 | Y |  |
| 2 | NUM_REQ | NUMBER | N |  |
| 3 | NUM_ITEM_REQ | NUMBER | Y |  |
| 4 | NUM_PARC_REQ | NUMBER | Y |  |
| 5 | COD_ITEM | NUMBER | N |  |
| 6 | COD_ESTAB | NUMBER | N |  |
| 7 | COD_LOCAL | NUMBER | N |  |
| 8 | QTY_PARC | NUMBER | Y |  |
| 9 | DATE_EXP | DATE | N |  |
| 10 | DATE_REQ | DATE | N |  |

---

## GTP.VW_ERP_PURCHASE_REQ_BKP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_REQ_PK | VARCHAR2 | Y |  |
| 2 | NUM_REQ | NUMBER | N |  |
| 3 | NUM_ITEM_REQ | NUMBER | Y |  |
| 4 | NUM_PARC_REQ | NUMBER | Y |  |
| 5 | COD_ITEM | NUMBER | N |  |
| 6 | COD_ESTAB | NUMBER | N |  |
| 7 | COD_LOCAL | NUMBER | N |  |
| 8 | QTY_PARC | NUMBER | Y |  |
| 9 | DATE_EXP | DATE | N |  |
| 10 | DATE_REQ | DATE | N |  |

---

## GTP.VW_ERP_RESERVE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_RESERVE_PK | VARCHAR2 | Y |  |
| 2 | TYPE_RESERVE_PK | CHAR | Y |  |
| 3 | COD_ITEM | NUMBER | Y |  |
| 4 | COD_LOCAL | NUMBER | Y |  |
| 5 | COD_ESTAB | NUMBER | Y |  |
| 6 | DATE_REQ | DATE | Y |  |
| 7 | QTY_REQ | NUMBER | Y |  |
| 8 | OBSERVATION | VARCHAR2 | Y |  |

---

## GTP.VW_ERP_SKU

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | COD_ITEM_PK | NUMBER | N |  |
| 2 | COD_ESTAB_PK | NUMBER | N |  |
| 3 | DESC_ITEM | VARCHAR2 | Y |  |
| 4 | DESC_ESTAB | VARCHAR2 | Y |  |
| 5 | QTY_LAST_ARR | NUMBER | Y |  |
| 6 | VAL_LAST_ARR | NUMBER | Y |  |
| 7 | DATE_LAST_ARR | DATE | Y |  |
| 8 | CURVE_ABC | VARCHAR2 | Y |  |
| 9 | CURVE_XYZ | VARCHAR2 | Y |  |
| 10 | QTY_MAX | NUMBER | Y |  |
| 11 | QTY_MIN | NUMBER | Y |  |
| 12 | QTY_PP | NUMBER | Y |  |
| 13 | QTY_AVG_CONS | NUMBER | Y |  |
| 14 | COD_STD_UNIT | NUMBER | Y |  |
| 15 | DESC_STD_UNIT | VARCHAR2 | Y |  |
| 16 | VAL_UNIT_SKU | NUMBER | Y |  |
| 17 | DATE_ADDED | DATE | Y |  |
| 18 | YN_PARENT | VARCHAR2 | Y |  |
| 19 | YN_SKU_ACTIVE | CHAR | Y |  |
| 20 | COD_ITEM_PARENT | NUMBER | Y |  |
| 21 | COD_ITEM_RANK | NUMBER | Y |  |
| 22 | COD_GROUP1 | CHAR | Y |  |
| 23 | COD_GROUP2 | VARCHAR2 | Y |  |
| 24 | COD_GROUP3 | VARCHAR2 | Y |  |
| 25 | COD_GROUP4 | VARCHAR2 | Y |  |
| 26 | COD_GROUP5 | CHAR | Y |  |
| 27 | COD_GROUP6 | CHAR | Y |  |
| 28 | COD_GROUP7 | CHAR | Y |  |
| 29 | COD_GROUP8 | CHAR | Y |  |
| 30 | COD_GROUP9 | CHAR | Y |  |
| 31 | COD_GROUP10 | CHAR | Y |  |
| 32 | COD_GROUP11 | CHAR | Y |  |
| 33 | COD_GROUP12 | CHAR | Y |  |
| 34 | DESC_GROUP1 | CHAR | Y |  |
| 35 | DESC_GROUP2 | VARCHAR2 | Y |  |
| 36 | DESC_GROUP3 | VARCHAR2 | Y |  |
| 37 | DESC_GROUP4 | VARCHAR2 | Y |  |
| 38 | DESC_GROUP5 | CHAR | Y |  |
| 39 | DESC_GROUP6 | CHAR | Y |  |
| 40 | DESC_GROUP7 | CHAR | Y |  |
| 41 | DESC_GROUP8 | CHAR | Y |  |
| 42 | DESC_GROUP9 | CHAR | Y |  |
| 43 | DESC_GROUP10 | CHAR | Y |  |
| 44 | DESC_GROUP11 | CHAR | Y |  |
| 45 | DESC_GROUP12 | CHAR | Y |  |
| 46 | SIT_SUPPLIER_AVAIL | NUMBER | Y |  |
| 47 | QTY_MULT_ORDER | NUMBER | Y |  |
| 48 | COD_ORDER_UNIT | NUMBER | Y |  |
| 49 | DESC_ORDER_UNIT | VARCHAR2 | Y |  |
| 50 | DEFAULT_LOCAL | CHAR | Y |  |
| 51 | LAST_PURCHASE_ORDER | NUMBER | Y |  |
| 52 | LAST_PURCHASE_SUPPLIER | NUMBER | Y |  |
| 53 | LAST_PURCHASE_DATE | DATE | Y |  |
| 54 | LAST_PURCHASE_PRICE | NUMBER | Y |  |
| 55 | LAST_PURCHASE_QTY | NUMBER | Y |  |
| 56 | QTY_MIN_BATCH | VARCHAR2 | Y |  |
| 57 | QTY_MULT_BATCH | VARCHAR2 | Y |  |
| 58 | LT_BUYER | VARCHAR2 | Y |  |
| 59 | LT_SUPPLIER | VARCHAR2 | Y |  |
| 60 | FIELD1 | VARCHAR2 | Y |  |
| 61 | FIELD2 | VARCHAR2 | Y |  |
| 62 | FIELD3 | VARCHAR2 | Y |  |

---

## GTP.VW_ERP_SKU_BKP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | COD_ITEM_PK | NUMBER | N |  |
| 2 | COD_ESTAB_PK | NUMBER | N |  |
| 3 | DESC_ITEM | VARCHAR2 | Y |  |
| 4 | DESC_ESTAB | CHAR | Y |  |
| 5 | QTY_LAST_ARR | NUMBER | Y |  |
| 6 | VAL_LAST_ARR | NUMBER | Y |  |
| 7 | DATE_LAST_ARR | DATE | Y |  |
| 8 | CURVE_ABC | VARCHAR2 | Y |  |
| 9 | CURVE_XYZ | VARCHAR2 | Y |  |
| 10 | QTY_MAX | NUMBER | Y |  |
| 11 | QTY_MIN | NUMBER | Y |  |
| 12 | QTY_PP | NUMBER | Y |  |
| 13 | QTY_AVG_CONS | NUMBER | Y |  |
| 14 | COD_STD_UNIT | NUMBER | Y |  |
| 15 | DESC_STD_UNIT | VARCHAR2 | Y |  |
| 16 | VAL_UNIT_SKU | NUMBER | Y |  |
| 17 | DATE_ADDED | DATE | Y |  |
| 18 | YN_PARENT | VARCHAR2 | Y |  |
| 19 | YN_SKU_ACTIVE | CHAR | Y |  |
| 20 | COD_ITEM_PARENT | NUMBER | Y |  |
| 21 | COD_ITEM_RANK | NUMBER | Y |  |
| 22 | COD_GROUP1 | CHAR | Y |  |
| 23 | COD_GROUP2 | VARCHAR2 | Y |  |
| 24 | COD_GROUP3 | VARCHAR2 | Y |  |
| 25 | COD_GROUP4 | VARCHAR2 | Y |  |
| 26 | COD_GROUP5 | CHAR | Y |  |
| 27 | COD_GROUP6 | CHAR | Y |  |
| 28 | COD_GROUP7 | CHAR | Y |  |
| 29 | COD_GROUP8 | CHAR | Y |  |
| 30 | COD_GROUP9 | CHAR | Y |  |
| 31 | COD_GROUP10 | CHAR | Y |  |
| 32 | COD_GROUP11 | CHAR | Y |  |
| 33 | COD_GROUP12 | CHAR | Y |  |
| 34 | DESC_GROUP1 | CHAR | Y |  |
| 35 | DESC_GROUP2 | VARCHAR2 | Y |  |
| 36 | DESC_GROUP3 | VARCHAR2 | Y |  |
| 37 | DESC_GROUP4 | VARCHAR2 | Y |  |
| 38 | DESC_GROUP5 | CHAR | Y |  |
| 39 | DESC_GROUP6 | CHAR | Y |  |
| 40 | DESC_GROUP7 | CHAR | Y |  |
| 41 | DESC_GROUP8 | CHAR | Y |  |
| 42 | DESC_GROUP9 | CHAR | Y |  |
| 43 | DESC_GROUP10 | CHAR | Y |  |
| 44 | DESC_GROUP11 | CHAR | Y |  |
| 45 | DESC_GROUP12 | CHAR | Y |  |
| 46 | SIT_SUPPLIER_AVAIL | NUMBER | Y |  |
| 47 | QTY_MULT_ORDER | NUMBER | Y |  |
| 48 | COD_ORDER_UNIT | NUMBER | Y |  |
| 49 | DESC_ORDER_UNIT | VARCHAR2 | Y |  |
| 50 | DEFAULT_LOCAL | CHAR | Y |  |
| 51 | LAST_PURCHASE_ORDER | NUMBER | Y |  |
| 52 | LAST_PURCHASE_SUPPLIER | NUMBER | Y |  |
| 53 | LAST_PURCHASE_DATE | DATE | Y |  |
| 54 | LAST_PURCHASE_PRICE | NUMBER | Y |  |
| 55 | LAST_PURCHASE_QTY | NUMBER | Y |  |
| 56 | QTY_MIN_BATCH | VARCHAR2 | Y |  |
| 57 | QTY_MULT_BATCH | VARCHAR2 | Y |  |
| 58 | LT_BUYER | VARCHAR2 | Y |  |
| 59 | LT_SUPPLIER | VARCHAR2 | Y |  |
| 60 | FIELD1 | VARCHAR2 | Y |  |
| 61 | FIELD2 | VARCHAR2 | Y |  |
| 62 | FIELD3 | VARCHAR2 | Y |  |

---

## GTP.VW_ERP_SKU_BKP2

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | COD_ITEM_PK | NUMBER | N |  |
| 2 | COD_ESTAB_PK | NUMBER | N |  |
| 3 | DESC_ITEM | VARCHAR2 | Y |  |
| 4 | DESC_ESTAB | VARCHAR2 | Y |  |
| 5 | QTY_LAST_ARR | NUMBER | Y |  |
| 6 | VAL_LAST_ARR | NUMBER | Y |  |
| 7 | DATE_LAST_ARR | DATE | Y |  |
| 8 | CURVE_ABC | VARCHAR2 | Y |  |
| 9 | CURVE_XYZ | VARCHAR2 | Y |  |
| 10 | QTY_MAX | NUMBER | Y |  |
| 11 | QTY_MIN | NUMBER | Y |  |
| 12 | QTY_PP | NUMBER | Y |  |
| 13 | QTY_AVG_CONS | NUMBER | Y |  |
| 14 | COD_STD_UNIT | NUMBER | Y |  |
| 15 | DESC_STD_UNIT | VARCHAR2 | Y |  |
| 16 | VAL_UNIT_SKU | NUMBER | Y |  |
| 17 | DATE_ADDED | DATE | Y |  |
| 18 | YN_PARENT | VARCHAR2 | Y |  |
| 19 | YN_SKU_ACTIVE | CHAR | Y |  |
| 20 | COD_ITEM_PARENT | NUMBER | Y |  |
| 21 | COD_ITEM_RANK | NUMBER | Y |  |
| 22 | COD_GROUP1 | CHAR | Y |  |
| 23 | COD_GROUP2 | VARCHAR2 | Y |  |
| 24 | COD_GROUP3 | VARCHAR2 | Y |  |
| 25 | COD_GROUP4 | VARCHAR2 | Y |  |
| 26 | COD_GROUP5 | CHAR | Y |  |
| 27 | COD_GROUP6 | CHAR | Y |  |
| 28 | COD_GROUP7 | CHAR | Y |  |
| 29 | COD_GROUP8 | CHAR | Y |  |
| 30 | COD_GROUP9 | CHAR | Y |  |
| 31 | COD_GROUP10 | CHAR | Y |  |
| 32 | COD_GROUP11 | CHAR | Y |  |
| 33 | COD_GROUP12 | CHAR | Y |  |
| 34 | DESC_GROUP1 | CHAR | Y |  |
| 35 | DESC_GROUP2 | VARCHAR2 | Y |  |
| 36 | DESC_GROUP3 | VARCHAR2 | Y |  |
| 37 | DESC_GROUP4 | VARCHAR2 | Y |  |
| 38 | DESC_GROUP5 | CHAR | Y |  |
| 39 | DESC_GROUP6 | CHAR | Y |  |
| 40 | DESC_GROUP7 | CHAR | Y |  |
| 41 | DESC_GROUP8 | CHAR | Y |  |
| 42 | DESC_GROUP9 | CHAR | Y |  |
| 43 | DESC_GROUP10 | CHAR | Y |  |
| 44 | DESC_GROUP11 | CHAR | Y |  |
| 45 | DESC_GROUP12 | CHAR | Y |  |
| 46 | SIT_SUPPLIER_AVAIL | NUMBER | Y |  |
| 47 | QTY_MULT_ORDER | NUMBER | Y |  |
| 48 | COD_ORDER_UNIT | NUMBER | Y |  |
| 49 | DESC_ORDER_UNIT | VARCHAR2 | Y |  |
| 50 | DEFAULT_LOCAL | CHAR | Y |  |
| 51 | LAST_PURCHASE_ORDER | NUMBER | Y |  |
| 52 | LAST_PURCHASE_SUPPLIER | NUMBER | Y |  |
| 53 | LAST_PURCHASE_DATE | DATE | Y |  |
| 54 | LAST_PURCHASE_PRICE | NUMBER | Y |  |
| 55 | LAST_PURCHASE_QTY | NUMBER | Y |  |
| 56 | QTY_MIN_BATCH | VARCHAR2 | Y |  |
| 57 | QTY_MULT_BATCH | VARCHAR2 | Y |  |
| 58 | LT_BUYER | VARCHAR2 | Y |  |
| 59 | LT_SUPPLIER | VARCHAR2 | Y |  |
| 60 | FIELD1 | VARCHAR2 | Y |  |
| 61 | FIELD2 | VARCHAR2 | Y |  |
| 62 | FIELD3 | VARCHAR2 | Y |  |

---

## GTP.VW_ERP_SUPPLIER

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_SUPPLIER_PK | NUMBER | N |  |
| 2 | COD_SUPPLIER | NUMBER | N |  |
| 3 | DESC_SUPPLIER | VARCHAR2 | Y |  |
| 4 | SUPPLIER_CONTACT_NAME | VARCHAR2 | Y |  |
| 5 | EMAIL_SUPPLIER | VARCHAR2 | Y |  |

---

## GTP.VW_ERP_TRANSACTION_IN

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | COD_TRANS_PK | NUMBER | N |  |
| 2 | COD_ITEM | NUMBER | N |  |
| 3 | COD_ESTAB | NUMBER | Y |  |
| 4 | DATE_TRANS | DATE | Y |  |
| 5 | QTY_TRANS | NUMBER | Y |  |
| 6 | TYPE_TRANS | CHAR | Y |  |

---

## GTP.VW_ERP_TRANSACTION_OUT_DAY

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | COD_ITEM_PK | NUMBER | N |  |
| 2 | COD_ESTAB_PK | NUMBER | Y |  |
| 3 | COD_LOCAL_PK | NUMBER | N |  |
| 4 | COD_LOCAL_DEST_PK | NUMBER | Y |  |
| 5 | COD_SECTOR_PK | NUMBER | Y |  |
| 6 | TYPE_TRANS_PK | VARCHAR2 | N |  |
| 7 | DATE_TRANS_PK | DATE | Y |  |
| 8 | QTY_TRANS | NUMBER | Y |  |
| 9 | YN_CONS | CHAR | Y |  |

---

## GTP.VW_ERP_TRANSACTION_OUT_DAY_BK2

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | COD_ITEM_PK | NUMBER | N |  |
| 2 | COD_ESTAB_PK | NUMBER | Y |  |
| 3 | COD_LOCAL_PK | NUMBER | N |  |
| 4 | COD_LOCAL_DEST_PK | NUMBER | Y |  |
| 5 | COD_SECTOR_PK | NUMBER | Y |  |
| 6 | TYPE_TRANS_PK | VARCHAR2 | N |  |
| 7 | DATE_TRANS_PK | DATE | Y |  |
| 8 | QTY_TRANS | NUMBER | Y |  |
| 9 | YN_CONS | CHAR | Y |  |

---

## GTP.VW_ERP_TRANSACTION_OUT_DAY_BK3

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | COD_ITEM_PK | NUMBER | N |  |
| 2 | COD_ESTAB_PK | NUMBER | Y |  |
| 3 | COD_LOCAL_PK | NUMBER | N |  |
| 4 | COD_LOCAL_DEST_PK | NUMBER | Y |  |
| 5 | COD_SECTOR_PK | NUMBER | Y |  |
| 6 | TYPE_TRANS_PK | VARCHAR2 | N |  |
| 7 | DATE_TRANS_PK | DATE | Y |  |
| 8 | QTY_TRANS | NUMBER | Y |  |
| 9 | YN_CONS | CHAR | Y |  |

---

## GTP.VW_ERP_TRANSACTION_OUT_DAY_BKP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | COD_ITEM_PK | NUMBER | N |  |
| 2 | COD_ESTAB_PK | NUMBER | Y |  |
| 3 | COD_LOCAL_PK | NUMBER | N |  |
| 4 | COD_LOCAL_DEST_PK | NUMBER | Y |  |
| 5 | COD_SECTOR_PK | NUMBER | Y |  |
| 6 | TYPE_TRANS_PK | VARCHAR2 | N |  |
| 7 | DATE_TRANS_PK | DATE | Y |  |
| 8 | QTY_TRANS | NUMBER | Y |  |
| 9 | YN_CONS | CHAR | Y |  |

---

## GTP.VW_ERP_TRANSACTION_OUT_MONTH

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | COD_ITEM_PK | NUMBER | N |  |
| 2 | COD_ESTAB_PK | NUMBER | Y |  |
| 3 | COD_LOCAL_PK | NUMBER | N |  |
| 4 | COD_LOCAL_DEST_PK | NUMBER | Y |  |
| 5 | COD_SECTOR_PK | NUMBER | Y |  |
| 6 | TYPE_TRANS_PK | VARCHAR2 | N |  |
| 7 | MONTH_TRANS_PK | DATE | Y |  |
| 8 | QTY_TRANS | NUMBER | Y |  |
| 9 | YN_CONS | CHAR | Y |  |

---

## GTP.VW_ERP_TRANSACTION_OUT_MONTH_2

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | COD_ITEM_PK | NUMBER | N |  |
| 2 | COD_ESTAB_PK | NUMBER | Y |  |
| 3 | COD_LOCAL_PK | NUMBER | N |  |
| 4 | COD_LOCAL_DEST_PK | NUMBER | Y |  |
| 5 | COD_SECTOR_PK | NUMBER | Y |  |
| 6 | TYPE_TRANS_PK | VARCHAR2 | N |  |
| 7 | MONTH_TRANS_PK | DATE | Y |  |
| 8 | QTY_TRANS | NUMBER | Y |  |
| 9 | YN_CONS | CHAR | Y |  |

---

## GTP.VW_ERP_TRANSACTION_OUT_MONTH_3

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | COD_ITEM_PK | NUMBER | N |  |
| 2 | COD_ESTAB_PK | NUMBER | Y |  |
| 3 | COD_LOCAL_PK | NUMBER | N |  |
| 4 | COD_LOCAL_DEST_PK | NUMBER | Y |  |
| 5 | COD_SECTOR_PK | NUMBER | Y |  |
| 6 | TYPE_TRANS_PK | VARCHAR2 | N |  |
| 7 | MONTH_TRANS_PK | DATE | Y |  |
| 8 | QTY_TRANS | NUMBER | Y |  |
| 9 | YN_CONS | CHAR | Y |  |

---

## GTP.VW_ERP_TRANSACTION_OUT_MONTH_B

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | COD_ITEM_PK | NUMBER | N |  |
| 2 | COD_ESTAB_PK | NUMBER | Y |  |
| 3 | COD_LOCAL_PK | NUMBER | N |  |
| 4 | COD_LOCAL_DEST_PK | NUMBER | Y |  |
| 5 | COD_SECTOR_PK | NUMBER | Y |  |
| 6 | TYPE_TRANS_PK | VARCHAR2 | N |  |
| 7 | MONTH_TRANS_PK | DATE | Y |  |
| 8 | QTY_TRANS | NUMBER | Y |  |
| 9 | YN_CONS | CHAR | Y |  |

---

## GTP.VW_SCR_ADM109G_JOBS_LIST

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | JOB_NAME | VARCHAR2 | Y |  |
| 2 | REPEAT_INTERVAL | VARCHAR2 | Y |  |
| 3 | JOB_ACTION | VARCHAR2 | Y |  |
| 4 | ENABLED | VARCHAR2 | Y |  |
| 5 | RUN_COUNT | NUMBER | Y |  |
| 6 | FAILURE_COUNT | NUMBER | Y |  |
| 7 | LAST_START_DATE | DATE | Y |  |
| 8 | NEXT_RUN_DATE | DATE | Y |  |
| 9 | LAST_RUN_DURATION | VARCHAR2 | Y |  |

---

## GTP.VW_SCR_ADM110G_JOBS_LOG

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | LOG_ID | NUMBER | Y |  |
| 2 | JOB_NAME | VARCHAR2 | Y |  |
| 3 | STATUS | VARCHAR2 | Y |  |
| 4 | SCHEDULED_START | DATE | Y |  |
| 5 | ACTUAL_START | DATE | Y |  |
| 6 | ACTUAL_FINISH | DATE | Y |  |
| 7 | RUN_DURATION | VARCHAR2 | Y |  |
| 8 | ADDITIONAL_INFO | VARCHAR2 | Y |  |
| 9 | JOB_TYPE | NUMBER | Y |  |

---

## GTP.VW_WES_ERP_NUM_REG

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | TABLE_NAME | VARCHAR2 | Y |  |
| 2 | QTY_LINE_REG | NUMBER | Y |  |
| 3 | LAST_INT | DATE | Y |  |
| 4 | QTY_SUM_REG | NUMBER | Y |  |

---

## GTP.VW_WES_INVENTORY_DEL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_WES | NUMBER | N |  |
| 2 | ID_COMPANY_FK | VARCHAR2 | N |  |
| 3 | COD_ITEM_PK | VARCHAR2 | N |  |
| 4 | COD_ESTAB_PK | VARCHAR2 | Y |  |
| 5 | COD_LOCAL_PK | VARCHAR2 | Y |  |
| 6 | QTY_INV | VARCHAR2 | Y |  |
| 7 | AVG_VAL | VARCHAR2 | Y |  |
| 8 | SIT_MIX | VARCHAR2 | Y |  |
| 9 | QTY_MIN | VARCHAR2 | Y |  |
| 10 | QTY_MAX | VARCHAR2 | Y |  |

---

## GTP.VW_WES_INVENTORY_INS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_WES | NUMBER | N |  |
| 2 | ID_COMPANY_FK | NUMBER | N |  |
| 3 | COD_ITEM_PK | VARCHAR2 | N |  |
| 4 | COD_ESTAB_PK | VARCHAR2 | N |  |
| 5 | COD_LOCAL_PK | VARCHAR2 | N |  |
| 6 | QTY_INV | NUMBER | N |  |
| 7 | SIT_MIX | NUMBER | Y |  |
| 8 | QTY_MIN | NUMBER | Y |  |
| 9 | QTY_MAX | NUMBER | Y |  |

---

## GTP.VW_WES_INVOICE_DEL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_WES | NUMBER | N |  |
| 2 | ID_COMPANY_FK | VARCHAR2 | N |  |
| 3 | ID_INVOICE_PK | VARCHAR2 | N |  |
| 4 | NUM_INVOICE | VARCHAR2 | Y |  |
| 5 | COD_ITEM | VARCHAR2 | Y |  |
| 6 | COD_ESTAB | VARCHAR2 | Y |  |
| 7 | ID_SUPPLIER | VARCHAR2 | Y |  |
| 8 | DATE_INVOICE | VARCHAR2 | Y |  |
| 9 | DATE_INVOICE_RECEIVED | VARCHAR2 | Y |  |
| 10 | NUM_ORDER | VARCHAR2 | Y |  |
| 11 | DATE_ORDER | VARCHAR2 | Y |  |
| 12 | DATE_ORDER_EXP | VARCHAR2 | Y |  |
| 13 | QTY_ORDER | VARCHAR2 | Y |  |
| 14 | VAL_UNIT_ORDER | VARCHAR2 | Y |  |
| 15 | VAL_UNIT_INVOICE | VARCHAR2 | Y |  |

---

## GTP.VW_WES_INVOICE_INS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_WES | NUMBER | N |  |
| 2 | ID_COMPANY_FK | NUMBER | N |  |
| 3 | ID_INVOICE_PK | VARCHAR2 | N |  |
| 4 | NUM_INVOICE | VARCHAR2 | Y |  |
| 5 | COD_ITEM | VARCHAR2 | Y |  |
| 6 | COD_ESTAB | VARCHAR2 | Y |  |
| 7 | ID_SUPPLIER | VARCHAR2 | Y |  |
| 8 | DATE_INVOICE | VARCHAR2 | Y |  |
| 9 | DATE_INVOICE_RECEIVED | VARCHAR2 | Y |  |
| 10 | NUM_ORDER | NUMBER | Y |  |
| 11 | DATE_ORDER | VARCHAR2 | Y |  |
| 12 | DATE_ORDER_EXP | VARCHAR2 | Y |  |
| 13 | QTY_ORDER | NUMBER | Y |  |
| 14 | QTY_INVOICE | NUMBER | Y |  |
| 15 | VAL_UNIT_ORDER | FLOAT | Y |  |
| 16 | VAL_UNIT_INVOICE | FLOAT | Y |  |
| 17 | YN_URGENT | CHAR | Y |  |

---

## GTP.VW_WES_LOCAL_DEL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_WES | NUMBER | N |  |
| 2 | ID_COMPANY_FK | VARCHAR2 | N |  |
| 3 | COD_LOCAL_PK | VARCHAR2 | N |  |
| 4 | DESC_LOCAL | VARCHAR2 | Y |  |
| 5 | COD_ESTAB | VARCHAR2 | Y |  |

---

## GTP.VW_WES_LOCAL_INS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_WES | NUMBER | N |  |
| 2 | ID_COMPANY_FK | NUMBER | N |  |
| 3 | COD_LOCAL_PK | VARCHAR2 | N |  |
| 4 | DESC_LOCAL | VARCHAR2 | N |  |
| 5 | COD_ESTAB_PK | VARCHAR2 | N |  |

---

## GTP.VW_WES_PENDING_GROUPED

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | WES_TABLE | VARCHAR2 | N |  |
| 2 | WES_STATUS | NUMBER | N |  |
| 3 | WES_ACTION | VARCHAR2 | N |  |
| 4 | NUM_REGISTROS | NUMBER | Y |  |

---

## GTP.VW_WES_PURCHASE_ORDER_DEL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_WES | NUMBER | N |  |
| 2 | ID_COMPANY_FK | VARCHAR2 | N |  |
| 3 | ID_ORDER_PK | VARCHAR2 | N |  |
| 4 | NUM_ORDER | VARCHAR2 | Y |  |
| 5 | COD_ITEM | VARCHAR2 | Y |  |
| 6 | COD_ESTAB | VARCHAR2 | Y |  |
| 7 | DATE_ORDER | VARCHAR2 | Y |  |
| 8 | QTY_PARC | VARCHAR2 | Y |  |
| 9 | QTY_REC | VARCHAR2 | Y |  |
| 10 | DATE_EXP | VARCHAR2 | Y |  |
| 11 | DATE_REAL | VARCHAR2 | Y |  |
| 12 | SIT_PARC | VARCHAR2 | Y |  |
| 13 | COD_SUPPLIER | VARCHAR2 | Y |  |
| 14 | COD_PAY | VARCHAR2 | Y |  |
| 15 | NUM_REQ | VARCHAR2 | Y |  |
| 16 | DATE_REQ | VARCHAR2 | Y |  |
| 17 | VAL_UNIT | VARCHAR2 | Y |  |

---

## GTP.VW_WES_PURCHASE_ORDER_INS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_WES | NUMBER | N |  |
| 2 | ID_COMPANY_FK | NUMBER | N |  |
| 3 | ID_ORDER_PK | VARCHAR2 | N |  |
| 4 | NUM_ORDER | NUMBER | N |  |
| 5 | COD_ITEM | VARCHAR2 | N |  |
| 6 | COD_ESTAB | VARCHAR2 | N |  |
| 7 | DATE_ORDER | VARCHAR2 | Y |  |
| 8 | QTY_PARC | NUMBER | Y |  |
| 9 | QTY_REC | NUMBER | Y |  |
| 10 | DATE_EXP | VARCHAR2 | Y |  |
| 11 | DATE_REAL | VARCHAR2 | Y |  |
| 12 | ID_SUPPLIER | VARCHAR2 | N |  |
| 13 | NUM_REQ | NUMBER | Y |  |
| 14 | DATE_REQ | VARCHAR2 | Y |  |
| 15 | VAL_UNIT | FLOAT | Y |  |
| 16 | COD_ORDER_EXTERNAL | VARCHAR2 | Y |  |
| 17 | COD_BUYER | VARCHAR2 | Y |  |
| 18 | COD_LOCAL_IN | VARCHAR2 | Y |  |
| 19 | COD_PAYMENT | VARCHAR2 | Y |  |
| 20 | SIT_ORDER | VARCHAR2 | Y |  |
| 21 | OBS_ORDER | VARCHAR2 | Y |  |

---

## GTP.VW_WES_PURCHASE_REQ_DEL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_WES | NUMBER | N |  |
| 2 | ID_COMPANY_FK | VARCHAR2 | N |  |
| 3 | ID_REQ_PK | VARCHAR2 | N |  |
| 4 | NUM_REQ_PK | VARCHAR2 | Y |  |
| 5 | NUM_ITEM_REQ_PK | VARCHAR2 | Y |  |
| 6 | NUM_PARC_REQ_PK | VARCHAR2 | Y |  |
| 7 | COD_ITEM | VARCHAR2 | Y |  |
| 8 | COD_ESTAB | VARCHAR2 | Y |  |
| 9 | COD_LOCAL | VARCHAR2 | Y |  |
| 10 | QTY_PARC | VARCHAR2 | Y |  |
| 11 | DATE_EXP | VARCHAR2 | Y |  |
| 12 | COD_UNIT | VARCHAR2 | Y |  |
| 13 | DATE_REQ | VARCHAR2 | Y |  |

---

## GTP.VW_WES_PURCHASE_REQ_INS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_WES | NUMBER | N |  |
| 2 | ID_COMPANY_FK | NUMBER | N |  |
| 3 | ID_REQ_PK | VARCHAR2 | N |  |
| 4 | NUM_REQ | NUMBER | N |  |
| 5 | NUM_ITEM_REQ | NUMBER | N |  |
| 6 | NUM_PARC_REQ | NUMBER | N |  |
| 7 | COD_ITEM | VARCHAR2 | N |  |
| 8 | COD_ESTAB | VARCHAR2 | N |  |
| 9 | COD_LOCAL | VARCHAR2 | Y |  |
| 10 | QTY_PARC | NUMBER | Y |  |
| 11 | DATE_EXP | VARCHAR2 | Y |  |
| 12 | DATE_REQ | VARCHAR2 | Y |  |

---

## GTP.VW_WES_RESERVE_DEL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_WES | NUMBER | N |  |
| 2 | ID_COMPANY_FK | VARCHAR2 | N |  |
| 3 | ID_RESERVE_PK | VARCHAR2 | N |  |
| 4 | TYPE_RESERVE_PK | VARCHAR2 | Y |  |

---

## GTP.VW_WES_RESERVE_INS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_WES | NUMBER | N |  |
| 2 | ID_COMPANY_FK | NUMBER | N |  |
| 3 | ID_RESERVE_PK | VARCHAR2 | N |  |
| 4 | TYPE_RESERVE_PK | CHAR | N |  |
| 5 | DATE_REQ | VARCHAR2 | Y |  |
| 6 | QTY_REQ | FLOAT | Y |  |
| 7 | OBSERVATION | VARCHAR2 | Y |  |
| 8 | COD_ITEM | VARCHAR2 | N |  |
| 9 | COD_LOCAL | VARCHAR2 | N |  |
| 10 | COD_ESTAB | VARCHAR2 | N |  |

---

## GTP.VW_WES_SKU_DEL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_WES | NUMBER | N |  |
| 2 | ID_COMPANY_FK | VARCHAR2 | N |  |
| 3 | COD_ITEM_PK | VARCHAR2 | N |  |
| 4 | COD_ESTAB_PK | VARCHAR2 | Y |  |

---

## GTP.VW_WES_SKU_INS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_WES | NUMBER | N |  |
| 2 | ID_COMPANY_FK | NUMBER | Y |  |
| 3 | COD_ITEM_PK | VARCHAR2 | N |  |
| 4 | COD_ESTAB_PK | VARCHAR2 | N |  |
| 5 | DESC_ITEM | VARCHAR2 | Y |  |
| 6 | DESC_ESTAB | VARCHAR2 | Y |  |
| 7 | VAL_UNIT_SKU | FLOAT | Y |  |
| 8 | QTY_LAST_ARR | FLOAT | Y |  |
| 9 | VAL_LAST_ARR | FLOAT | Y |  |
| 10 | DATE_LAST_ARR | VARCHAR2 | Y |  |
| 11 | CURVE_ABC | CHAR | N |  |
| 12 | CURVE_XYZ | CHAR | N |  |
| 13 | QTY_MAX | FLOAT | Y |  |
| 14 | QTY_MIN | FLOAT | Y |  |
| 15 | QTY_PP | FLOAT | Y |  |
| 16 | QTY_AVG_CONS | FLOAT | Y |  |
| 17 | YN_SKU_ACTIVE | CHAR | N |  |
| 18 | COD_STD_UNIT | VARCHAR2 | N |  |
| 19 | DESC_STD_UNIT | VARCHAR2 | N |  |
| 20 | DATE_ADDED | VARCHAR2 | Y |  |
| 21 | YN_PARENT | CHAR | N |  |
| 22 | COD_ITEM_PARENT | VARCHAR2 | Y |  |
| 23 | COD_ITEM_RANK | NUMBER | Y |  |
| 24 | COD_GROUP1 | VARCHAR2 | Y |  |
| 25 | COD_GROUP2 | VARCHAR2 | Y |  |
| 26 | COD_GROUP3 | VARCHAR2 | Y |  |
| 27 | COD_GROUP4 | VARCHAR2 | Y |  |
| 28 | COD_GROUP5 | VARCHAR2 | Y |  |
| 29 | COD_GROUP6 | VARCHAR2 | Y |  |
| 30 | COD_GROUP7 | VARCHAR2 | Y |  |
| 31 | COD_GROUP8 | VARCHAR2 | Y |  |
| 32 | COD_GROUP9 | VARCHAR2 | Y |  |
| 33 | COD_GROUP10 | VARCHAR2 | Y |  |
| 34 | COD_GROUP11 | VARCHAR2 | Y |  |
| 35 | COD_GROUP12 | VARCHAR2 | Y |  |
| 36 | DESC_GROUP1 | VARCHAR2 | Y |  |
| 37 | DESC_GROUP2 | VARCHAR2 | Y |  |
| 38 | DESC_GROUP3 | VARCHAR2 | Y |  |
| 39 | DESC_GROUP4 | VARCHAR2 | Y |  |
| 40 | DESC_GROUP5 | VARCHAR2 | Y |  |
| 41 | DESC_GROUP6 | VARCHAR2 | Y |  |
| 42 | DESC_GROUP7 | VARCHAR2 | Y |  |
| 43 | DESC_GROUP8 | VARCHAR2 | Y |  |
| 44 | DESC_GROUP9 | VARCHAR2 | Y |  |
| 45 | DESC_GROUP10 | VARCHAR2 | Y |  |
| 46 | DESC_GROUP11 | VARCHAR2 | Y |  |
| 47 | DESC_GROUP12 | VARCHAR2 | Y |  |
| 48 | SIT_SUPPLIER_AVAIL | NUMBER | Y |  |
| 49 | QTY_MULT_ORDER | FLOAT | Y |  |
| 50 | COD_ORDER_UNIT | VARCHAR2 | N |  |
| 51 | DESC_ORDER_UNIT | VARCHAR2 | N |  |
| 52 | DEFAULT_LOCAL | VARCHAR2 | Y |  |
| 53 | LAST_PURCHASE_ORDER | NUMBER | Y |  |
| 54 | LAST_PURCHASE_SUPPLIER | VARCHAR2 | Y |  |
| 55 | LAST_PURCHASE_DATE | VARCHAR2 | Y |  |
| 56 | LAST_PURCHASE_PRICE | FLOAT | Y |  |
| 57 | LAST_PURCHASE_QTY | FLOAT | Y |  |
| 58 | QTY_MIN_BATCH | FLOAT | Y |  |
| 59 | QTY_MULT_BATCH | FLOAT | Y |  |
| 60 | LT_BUYER | VARCHAR2 | Y |  |
| 61 | LT_SUPPLIER | VARCHAR2 | Y |  |
| 62 | FIELD1 | VARCHAR2 | Y |  |
| 63 | FIELD2 | VARCHAR2 | Y |  |
| 64 | FIELD3 | VARCHAR2 | Y |  |

---

## GTP.VW_WES_SUPPLIER_DEL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_WES | NUMBER | N |  |
| 2 | ID_COMPANY_FK | VARCHAR2 | N |  |
| 3 | ID_SUPPLIER_PK | VARCHAR2 | N |  |
| 4 | COD_SUPPLIER | VARCHAR2 | Y |  |
| 5 | DESC_SUPPLIER | VARCHAR2 | Y |  |
| 6 | SUPPLIER_CONTACT_NAME | VARCHAR2 | Y |  |
| 7 | EMAIL_SUPPLIER | VARCHAR2 | Y |  |
| 8 | TYPE_SUPPLIER | VARCHAR2 | Y |  |

---

## GTP.VW_WES_SUPPLIER_INS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_WES | NUMBER | N |  |
| 2 | ID_COMPANY_FK | NUMBER | N |  |
| 3 | ID_SUPPLIER_PK | VARCHAR2 | N |  |
| 4 | COD_SUPPLIER | VARCHAR2 | N |  |
| 5 | DESC_SUPPLIER | VARCHAR2 | N |  |
| 6 | SUPPLIER_CONTACT_NAME | VARCHAR2 | Y |  |
| 7 | EMAIL_SUPPLIER | VARCHAR2 | Y |  |

---

## GTP.VW_WES_TRANSACTION_DAY_DEL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_WES | NUMBER | N |  |
| 2 | ID_COMPANY_FK | VARCHAR2 | N |  |
| 3 | COD_ITEM_PK | VARCHAR2 | N |  |
| 4 | COD_ESTAB_PK | VARCHAR2 | Y |  |
| 5 | COD_LOCAL_PK | VARCHAR2 | Y |  |
| 6 | COD_LOCAL_DEST_PK | VARCHAR2 | Y |  |
| 7 | COD_SECTOR_PK | VARCHAR2 | Y |  |
| 8 | TYPE_TRANS_PK | VARCHAR2 | Y |  |
| 9 | DATE_TRANS_PK | VARCHAR2 | Y |  |

---

## GTP.VW_WES_TRANSACTION_DAY_INS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_WES | NUMBER | N |  |
| 2 | ID_COMPANY_FK | NUMBER | N |  |
| 3 | COD_ITEM_PK | VARCHAR2 | N |  |
| 4 | COD_ESTAB_PK | VARCHAR2 | N |  |
| 5 | COD_LOCAL_PK | VARCHAR2 | N |  |
| 6 | COD_LOCAL_DEST_PK | VARCHAR2 | N |  |
| 7 | COD_SECTOR_PK | VARCHAR2 | N |  |
| 8 | TYPE_TRANS_PK | VARCHAR2 | N |  |
| 9 | DATE_TRANS_PK | VARCHAR2 | Y |  |
| 10 | QTY_TRANS | FLOAT | Y |  |
| 11 | YN_CONS | CHAR | Y |  |

---

## GTP.VW_WES_TRANSACTION_IN_DEL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_WES | NUMBER | N |  |
| 2 | ID_COMPANY_FK | VARCHAR2 | N |  |
| 3 | COD_TRANS_PK | VARCHAR2 | N |  |

---

## GTP.VW_WES_TRANSACTION_IN_INS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_WES | NUMBER | N |  |
| 2 | ID_COMPANY_FK | NUMBER | Y |  |
| 3 | COD_TRANS_PK | NUMBER | N |  |
| 4 | COD_ITEM | VARCHAR2 | Y |  |
| 5 | COD_ESTAB | VARCHAR2 | N |  |
| 6 | DATE_TRANS | VARCHAR2 | Y |  |
| 7 | QTY_TRANS | FLOAT | N |  |
| 8 | TYPE_TRANS | CHAR | Y |  |

---

## GTP.VW_WES_TRANSACTION_MONTH_DEL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_WES | NUMBER | N |  |
| 2 | ID_COMPANY_FK | VARCHAR2 | N |  |
| 3 | COD_ITEM_PK | VARCHAR2 | N |  |
| 4 | COD_ESTAB_PK | VARCHAR2 | Y |  |
| 5 | COD_LOCAL_PK | VARCHAR2 | Y |  |
| 6 | COD_LOCAL_DEST_PK | VARCHAR2 | Y |  |
| 7 | COD_SECTOR_PK | VARCHAR2 | Y |  |
| 8 | TYPE_TRANS_PK | VARCHAR2 | Y |  |
| 9 | MONTH_TRANS_PK | VARCHAR2 | Y |  |

---

## GTP.VW_WES_TRANSACTION_MONTH_INS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_WES | NUMBER | N |  |
| 2 | ID_COMPANY_FK | NUMBER | Y |  |
| 3 | COD_ITEM_PK | VARCHAR2 | N |  |
| 4 | COD_ESTAB_PK | VARCHAR2 | N |  |
| 5 | COD_LOCAL_PK | VARCHAR2 | N |  |
| 6 | COD_LOCAL_DEST_PK | VARCHAR2 | N |  |
| 7 | COD_SECTOR_PK | VARCHAR2 | N |  |
| 8 | TYPE_TRANS_PK | VARCHAR2 | N |  |
| 9 | MONTH_TRANS_PK | VARCHAR2 | Y |  |
| 10 | QTY_TRANS | FLOAT | Y |  |
| 11 | YN_CONS | CHAR | Y |  |

---

## GTP.WES_DRP_LOCAL_SUG_HEADER

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_HEADER | NUMBER | N |  |
| 2 | COD_ESTAB_FROM | VARCHAR2 | N |  |
| 3 | COD_ESTAB_TO | VARCHAR2 | N |  |
| 4 | COD_LOCAL_FROM | VARCHAR2 | N |  |
| 5 | COD_LOCAL_TO | VARCHAR2 | N |  |
| 6 | COD_USER | VARCHAR2 | N |  |
| 7 | YN_URGENT | CHAR | N |  |
| 8 | SIT_HEADER | NUMBER | N |  |
| 9 | ID_HEADER_ERP | NUMBER | Y |  |
| 10 | HEADER_LOG | VARCHAR2 | Y |  |
| 11 | OBS_HEADER | VARCHAR2 | Y |  |
| 12 | DATE_INSERT | DATE | Y |  |

---

## GTP.WES_DRP_LOCAL_SUG_ITEM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_HEADER | NUMBER | N |  |
| 2 | COD_ITEM | VARCHAR2 | N |  |
| 3 | QTY_ITEM | FLOAT | N |  |
| 4 | COD_UN_ITEM | VARCHAR2 | N |  |
| 5 | LOG_ITEM | VARCHAR2 | Y |  |
| 6 | OBS_ITEM | VARCHAR2 | Y |  |

---

## GTP.WES_PENDING

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_WES | NUMBER | N |  |
| 2 | WES_TABLE | VARCHAR2 | N |  |
| 3 | WES_ACTION | VARCHAR2 | N |  |
| 4 | WES_STATUS | NUMBER | N |  |
| 5 | PK01 | VARCHAR2 | N |  |
| 6 | PK02 | VARCHAR2 | N |  |
| 7 | PK03 | VARCHAR2 | Y |  |
| 8 | PK04 | VARCHAR2 | Y |  |
| 9 | PK05 | VARCHAR2 | Y |  |
| 10 | PK06 | VARCHAR2 | Y |  |
| 11 | PK07 | VARCHAR2 | Y |  |
| 12 | PK08 | VARCHAR2 | Y |  |
| 13 | WES_DATE_CREATED | DATE | Y |  |

---

## GTP.WES_PENDING_LOG

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_WES | NUMBER | N |  |
| 2 | WES_TABLE | VARCHAR2 | N |  |
| 3 | WES_ACTION | VARCHAR2 | N |  |
| 4 | WES_STATUS | NUMBER | N |  |
| 5 | PK01 | VARCHAR2 | N |  |
| 6 | PK02 | VARCHAR2 | N |  |
| 7 | PK03 | VARCHAR2 | Y |  |
| 8 | PK04 | VARCHAR2 | Y |  |
| 9 | PK05 | VARCHAR2 | Y |  |
| 10 | PK06 | VARCHAR2 | Y |  |
| 11 | PK07 | VARCHAR2 | Y |  |
| 12 | PK08 | VARCHAR2 | Y |  |
| 13 | WES_DATE_CREATED | DATE | N |  |
| 14 | WES_DATE_LOGGED | DATE | N |  |
| 15 | WES_ERROR | VARCHAR2 | Y |  |

---

## GTP.WES_PO_HEADER

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_PO_PK | NUMBER | N |  |
| 2 | ID_SUPPLIER_FK | VARCHAR2 | N |  |
| 3 | COD_PAYMENT_COND | NUMBER | N |  |
| 4 | COD_LOCAL_IN | VARCHAR2 | N |  |
| 5 | COD_BUYER | VARCHAR2 | N |  |
| 6 | NUM_ORDER | NUMBER | Y |  |
| 7 | SIT_ORDER | NUMBER | N |  |
| 8 | DATE_EXP_HEADER | DATE | N |  |
| 9 | DATE_INSERTED | DATE | N |  |
| 10 | DATE_UPDATED | DATE | N |  |
| 11 | NUM_REQ_FK | NUMBER | Y |  |
| 12 | DESC_LOG_HEADER_ERROR | VARCHAR2 | Y |  |
| 13 | YN_URGENT | CHAR | Y |  |
| 14 | OBS_HEADER | VARCHAR2 | Y |  |
| 15 | COD_ESTAB_FK | VARCHAR2 | Y |  |
| 16 | COD_REQUESTER | VARCHAR2 | Y |  |
| 17 | COD_APPROVER | VARCHAR2 | Y |  |
| 18 | VAL_ALTERED | FLOAT | Y |  |
| 19 | ID_BID_FK | NUMBER | Y |  |

---

## GTP.WES_PO_ITEM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_PO_FK | NUMBER | N |  |
| 2 | ID_PO_ITEM_PK | NUMBER | N |  |
| 3 | NUM_ITEM | NUMBER | Y |  |
| 4 | COD_ITEM_FK | VARCHAR2 | N |  |
| 5 | COD_UNIT | VARCHAR2 | N |  |
| 6 | QTY_ITEM | FLOAT | N |  |
| 7 | VAL_UNIT | FLOAT | N |  |
| 8 | VAL_IPI | FLOAT | N |  |
| 9 | DATE_INSERTED | DATE | N |  |
| 10 | DATE_UPDATED | DATE | N |  |
| 11 | DESC_LOG_ITEM_ERROR | VARCHAR2 | Y |  |

---

## GTP.WES_PO_PARC

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_PO_ITEM_FK | NUMBER | N |  |
| 2 | ID_PO_PARC_PK | NUMBER | N |  |
| 3 | NUM_PARC | NUMBER | N |  |
| 4 | QTY_PARC | FLOAT | N |  |
| 5 | DATE_EXP_PARC | DATE | N |  |
| 6 | DATE_INSERTED | DATE | N |  |
| 7 | DATE_UPDATED | DATE | N |  |
| 8 | DESC_LOG_PARC_ERROR | VARCHAR2 | Y |  |

---

## GTP.WES_SCHEDULER

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_SCHEDULER_PK | NUMBER | N |  |
| 2 | WES_TABLE | VARCHAR2 | N |  |
| 3 | DH_START | TIMESTAMP(6) | N |  |
| 4 | DH_END | TIMESTAMP(6) | Y |  |

---

## GTP.WES_SUGGESTION_HEADER

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_INT_PLANNEXO | NUMBER | N |  |
| 2 | DATE_EXPECTED | DATE | N |  |
| 3 | COD_SECTOR | VARCHAR2 | N |  |
| 4 | COD_LOCAL | VARCHAR2 | N |  |
| 5 | COD_REASON | VARCHAR2 | N |  |
| 6 | COD_BUYER | VARCHAR2 | N |  |
| 7 | COD_USER | VARCHAR2 | N |  |
| 8 | YN_URGENT | CHAR | N |  |
| 9 | SIT_REQ | NUMBER | N |  |
| 10 | DATE_INT | DATE | Y |  |
| 11 | ID_REQ_ERP | NUMBER | Y |  |
| 12 | HEADER_LOG | VARCHAR2 | Y |  |
| 13 | COD_ESTAB | VARCHAR2 | N |  |
| 14 | OBS_HEADER | VARCHAR2 | Y |  |

---

## GTP.WES_SUGGESTION_ITEM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_INT_PLANNEXO | NUMBER | N |  |
| 2 | COD_ITEM | VARCHAR2 | N |  |
| 3 | QTY_PARC | FLOAT | N |  |
| 4 | STD_UNIT | VARCHAR2 | N |  |
| 5 | ITEM_LOG | VARCHAR2 | Y |  |
| 6 | ITEM_ORDER | NUMBER | Y |  |
| 7 | OBS | VARCHAR2 | Y |  |

---

## GTP.WES_SUGGESTION_PARC

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_INT_PLANNEXO | NUMBER | N |  |
| 2 | COD_ITEM | VARCHAR2 | N |  |
| 3 | NUM_PARC | NUMBER | Y |  |
| 4 | DATE_PARC | DATE | N |  |
| 5 | QTY_PARC | FLOAT | N |  |

---

## GTP_INTS.ERP_INVENTORY

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_COMPANY_FK | NUMBER | N |  |
| 2 | COD_ITEM_PK | VARCHAR2 | N |  |
| 3 | COD_ESTAB_PK | VARCHAR2 | N |  |
| 4 | COD_LOCAL_PK | VARCHAR2 | N |  |
| 5 | QTY_INV | NUMBER | N |  |
| 6 | SIT_MIX | NUMBER | Y |  |
| 7 | QTY_MIN | NUMBER | Y |  |
| 8 | QTY_MAX | NUMBER | Y |  |

---

## GTP_INTS.ERP_INVOICE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_COMPANY_FK | NUMBER | N |  |
| 2 | ID_INVOICE_PK | VARCHAR2 | N |  |
| 3 | NUM_INVOICE | VARCHAR2 | Y |  |
| 4 | COD_ITEM | VARCHAR2 | Y |  |
| 5 | COD_ESTAB | VARCHAR2 | Y |  |
| 6 | ID_SUPPLIER | VARCHAR2 | Y |  |
| 7 | DATE_INVOICE | DATE | Y |  |
| 8 | DATE_INVOICE_RECEIVED | DATE | Y |  |
| 9 | NUM_ORDER | NUMBER | Y |  |
| 10 | DATE_ORDER | DATE | Y |  |
| 11 | DATE_ORDER_EXP | DATE | Y |  |
| 12 | QTY_ORDER | NUMBER | Y |  |
| 13 | QTY_INVOICE | NUMBER | Y |  |
| 14 | VAL_UNIT_ORDER | FLOAT | Y |  |
| 15 | VAL_UNIT_INVOICE | FLOAT | Y |  |
| 16 | YN_URGENT | CHAR | Y |  |

---

## GTP_INTS.ERP_LOCAL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_COMPANY_FK | NUMBER | N |  |
| 2 | COD_LOCAL_PK | VARCHAR2 | N |  |
| 3 | DESC_LOCAL | VARCHAR2 | N |  |
| 4 | COD_ESTAB_PK | VARCHAR2 | N |  |

---

## GTP_INTS.ERP_PURCHASE_ORDER

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_COMPANY_FK | NUMBER | N |  |
| 2 | ID_ORDER_PK | VARCHAR2 | N |  |
| 3 | NUM_ORDER | NUMBER | N |  |
| 4 | COD_ITEM | VARCHAR2 | N |  |
| 5 | COD_ESTAB | VARCHAR2 | N |  |
| 6 | DATE_ORDER | DATE | N |  |
| 7 | QTY_PARC | NUMBER | Y |  |
| 8 | QTY_REC | NUMBER | Y |  |
| 9 | DATE_EXP | DATE | N |  |
| 10 | DATE_REAL | DATE | Y |  |
| 11 | ID_SUPPLIER | VARCHAR2 | N |  |
| 12 | NUM_REQ | NUMBER | Y |  |
| 13 | DATE_REQ | DATE | Y |  |
| 14 | VAL_UNIT | FLOAT | Y |  |
| 15 | COD_BUYER | VARCHAR2 | Y |  |
| 16 | COD_LOCAL_IN | VARCHAR2 | Y |  |
| 17 | COD_PAYMENT | VARCHAR2 | Y |  |
| 18 | SIT_ORDER | VARCHAR2 | Y |  |
| 19 | OBS_ORDER | VARCHAR2 | Y |  |
| 20 | COD_ORDER_EXTERNAL | VARCHAR2 | Y |  |

---

## GTP_INTS.ERP_PURCHASE_REQ

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_COMPANY_FK | NUMBER | N |  |
| 2 | ID_REQ_PK | VARCHAR2 | N |  |
| 3 | NUM_REQ | NUMBER | N |  |
| 4 | NUM_ITEM_REQ | NUMBER | N |  |
| 5 | NUM_PARC_REQ | NUMBER | N |  |
| 6 | COD_ITEM | VARCHAR2 | N |  |
| 7 | COD_ESTAB | VARCHAR2 | N |  |
| 8 | COD_LOCAL | VARCHAR2 | Y |  |
| 9 | QTY_PARC | FLOAT | Y |  |
| 10 | DATE_EXP | DATE | N |  |
| 11 | DATE_REQ | DATE | Y |  |

---

## GTP_INTS.ERP_RESERVE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_COMPANY_FK | NUMBER | N |  |
| 2 | ID_RESERVE_PK | VARCHAR2 | N |  |
| 3 | COD_ITEM | VARCHAR2 | N |  |
| 4 | COD_ESTAB | VARCHAR2 | N |  |
| 5 | COD_LOCAL | VARCHAR2 | N |  |
| 6 | DATE_REQ | DATE | N |  |
| 7 | QTY_REQ | FLOAT | Y |  |
| 8 | TYPE_RESERVE_PK | CHAR | N |  |
| 9 | OBSERVATION | VARCHAR2 | Y |  |

---

## GTP_INTS.ERP_SKU

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_COMPANY_FK | NUMBER | Y |  |
| 2 | COD_ITEM_PK | VARCHAR2 | N |  |
| 3 | COD_ESTAB_PK | VARCHAR2 | N |  |
| 4 | DESC_ITEM | VARCHAR2 | Y |  |
| 5 | DESC_ESTAB | VARCHAR2 | Y |  |
| 6 | VAL_UNIT_SKU | FLOAT | Y |  |
| 7 | QTY_LAST_ARR | FLOAT | Y |  |
| 8 | VAL_LAST_ARR | FLOAT | Y |  |
| 9 | DATE_LAST_ARR | DATE | Y |  |
| 10 | CURVE_ABC | CHAR | Y |  |
| 11 | CURVE_XYZ | CHAR | Y |  |
| 12 | QTY_MAX | FLOAT | Y |  |
| 13 | QTY_MIN | FLOAT | Y |  |
| 14 | QTY_PP | FLOAT | Y |  |
| 15 | QTY_AVG_CONS | FLOAT | Y |  |
| 16 | YN_SKU_ACTIVE | CHAR | Y |  |
| 17 | COD_STD_UNIT | VARCHAR2 | Y |  |
| 18 | DESC_STD_UNIT | VARCHAR2 | Y |  |
| 19 | DATE_ADDED | DATE | Y |  |
| 20 | YN_PARENT | CHAR | Y |  |
| 21 | COD_ITEM_PARENT | VARCHAR2 | Y |  |
| 22 | COD_ITEM_RANK | NUMBER | Y |  |
| 23 | COD_GROUP1 | VARCHAR2 | Y |  |
| 24 | COD_GROUP2 | VARCHAR2 | Y |  |
| 25 | COD_GROUP3 | VARCHAR2 | Y |  |
| 26 | COD_GROUP4 | VARCHAR2 | Y |  |
| 27 | COD_GROUP5 | VARCHAR2 | Y |  |
| 28 | COD_GROUP6 | VARCHAR2 | Y |  |
| 29 | COD_GROUP7 | VARCHAR2 | Y |  |
| 30 | COD_GROUP8 | VARCHAR2 | Y |  |
| 31 | COD_GROUP9 | VARCHAR2 | Y |  |
| 32 | COD_GROUP10 | VARCHAR2 | Y |  |
| 33 | COD_GROUP11 | VARCHAR2 | Y |  |
| 34 | COD_GROUP12 | VARCHAR2 | Y |  |
| 35 | DESC_GROUP1 | VARCHAR2 | Y |  |
| 36 | DESC_GROUP2 | VARCHAR2 | Y |  |
| 37 | DESC_GROUP3 | VARCHAR2 | Y |  |
| 38 | DESC_GROUP4 | VARCHAR2 | Y |  |
| 39 | DESC_GROUP5 | VARCHAR2 | Y |  |
| 40 | DESC_GROUP6 | VARCHAR2 | Y |  |
| 41 | DESC_GROUP7 | VARCHAR2 | Y |  |
| 42 | DESC_GROUP8 | VARCHAR2 | Y |  |
| 43 | DESC_GROUP9 | VARCHAR2 | Y |  |
| 44 | DESC_GROUP10 | VARCHAR2 | Y |  |
| 45 | DESC_GROUP11 | VARCHAR2 | Y |  |
| 46 | DESC_GROUP12 | VARCHAR2 | Y |  |
| 47 | SIT_SUPPLIER_AVAIL | NUMBER | Y |  |
| 48 | QTY_MULT_ORDER | FLOAT | Y |  |
| 49 | COD_ORDER_UNIT | VARCHAR2 | Y |  |
| 50 | DESC_ORDER_UNIT | VARCHAR2 | Y |  |
| 51 | DEFAULT_LOCAL | VARCHAR2 | Y |  |
| 52 | LAST_PURCHASE_ORDER | NUMBER | Y |  |
| 53 | LAST_PURCHASE_SUPPLIER | VARCHAR2 | Y |  |
| 54 | LAST_PURCHASE_DATE | DATE | Y |  |
| 55 | LAST_PURCHASE_PRICE | FLOAT | Y |  |
| 56 | LAST_PURCHASE_QTY | FLOAT | Y |  |
| 57 | QTY_MIN_BATCH | FLOAT | Y |  |
| 58 | QTY_MULT_BATCH | FLOAT | Y |  |
| 59 | LT_BUYER | VARCHAR2 | Y |  |
| 60 | LT_SUPPLIER | VARCHAR2 | Y |  |
| 61 | FIELD1 | VARCHAR2 | Y |  |
| 62 | FIELD2 | VARCHAR2 | Y |  |
| 63 | FIELD3 | VARCHAR2 | Y |  |

---

## GTP_INTS.ERP_SUPPLIER

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_COMPANY_FK | NUMBER | N |  |
| 2 | ID_SUPPLIER_PK | VARCHAR2 | N |  |
| 3 | COD_SUPPLIER | VARCHAR2 | N |  |
| 4 | DESC_SUPPLIER | VARCHAR2 | N |  |
| 5 | SUPPLIER_CONTACT_NAME | VARCHAR2 | Y |  |
| 6 | EMAIL_SUPPLIER | VARCHAR2 | Y |  |

---

## GTP_INTS.ERP_TRANSACTION_IN

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_COMPANY_FK | NUMBER | Y |  |
| 2 | COD_TRANS_PK | NUMBER | N |  |
| 3 | COD_ITEM | VARCHAR2 | Y |  |
| 4 | COD_ESTAB | VARCHAR2 | N |  |
| 5 | DATE_TRANS | DATE | Y |  |
| 6 | QTY_TRANS | FLOAT | N |  |
| 7 | TYPE_TRANS | CHAR | Y |  |

---

## GTP_INTS.ERP_TRANSACTION_OUT_DAY

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_COMPANY_FK | NUMBER | N |  |
| 2 | COD_ITEM_PK | VARCHAR2 | N |  |
| 3 | COD_ESTAB_PK | VARCHAR2 | N |  |
| 4 | COD_LOCAL_PK | VARCHAR2 | N |  |
| 5 | COD_LOCAL_DEST_PK | VARCHAR2 | N |  |
| 6 | COD_SECTOR_PK | VARCHAR2 | N |  |
| 7 | TYPE_TRANS_PK | VARCHAR2 | N |  |
| 8 | DATE_TRANS_PK | DATE | N |  |
| 9 | QTY_TRANS | FLOAT | Y |  |
| 10 | YN_CONS | CHAR | Y |  |

---

## GTP_INTS.ERP_TRANSACTION_OUT_MONTH

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_COMPANY_FK | NUMBER | Y |  |
| 2 | COD_ITEM_PK | VARCHAR2 | N |  |
| 3 | COD_ESTAB_PK | VARCHAR2 | N |  |
| 4 | COD_LOCAL_PK | VARCHAR2 | N |  |
| 5 | COD_LOCAL_DEST_PK | VARCHAR2 | N |  |
| 6 | COD_SECTOR_PK | VARCHAR2 | N |  |
| 7 | TYPE_TRANS_PK | VARCHAR2 | N |  |
| 8 | MONTH_TRANS_PK | DATE | N |  |
| 9 | QTY_TRANS | FLOAT | Y |  |
| 10 | YN_CONS | CHAR | Y |  |

---

## GTP_INTS.VW_ERP_INVENTORY

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | COD_ITEM_PK | NUMBER | N |  |
| 2 | COD_ESTAB_PK | VARCHAR2 | Y |  |
| 3 | COD_LOCAL_PK | NUMBER | N |  |
| 4 | QTY_INV | NUMBER | Y |  |
| 5 | SIT_MIX | NUMBER | Y |  |
| 6 | QTY_MIN | NUMBER | Y |  |
| 7 | QTY_MAX | NUMBER | Y |  |

---

## GTP_INTS.VW_ERP_INVOICE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_INVOICE_PK | NUMBER | N |  |
| 2 | NUM_INVOICE | VARCHAR2 | Y |  |
| 3 | COD_ITEM | NUMBER | Y |  |
| 4 | COD_ESTAB | NUMBER | N |  |
| 5 | ID_SUPPLIER | NUMBER | Y |  |
| 6 | DATE_INVOICE | DATE | Y |  |
| 7 | DATE_INVOICE_RECEIVED | DATE | N |  |
| 8 | NUM_ORDER | NUMBER | Y |  |
| 9 | DATE_ORDER | DATE | Y |  |
| 10 | DATE_ORDER_EXP | DATE | Y |  |
| 11 | QTY_ORDER | NUMBER | Y |  |
| 12 | QTY_INVOICE | NUMBER | N |  |
| 13 | VAL_UNIT_ORDER | NUMBER | Y |  |
| 14 | VAL_UNIT_INVOICE | NUMBER | Y |  |
| 15 | YN_URGENT | CHAR | Y |  |

---

## GTP_INTS.VW_ERP_LOCAL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | COD_LOCAL_PK | NUMBER | N |  |
| 2 | DESC_LOCAL | VARCHAR2 | Y |  |
| 3 | COD_ESTAB_PK | NUMBER | Y |  |

---

## GTP_INTS.VW_ERP_PURCHASE_ORDER

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_ORDER_PK | VARCHAR2 | Y |  |
| 2 | NUM_ORDER | NUMBER | N |  |
| 3 | COD_ITEM | NUMBER | N |  |
| 4 | COD_ESTAB | NUMBER | N |  |
| 5 | DATE_ORDER | DATE | Y |  |
| 6 | QTY_PARC | NUMBER | Y |  |
| 7 | DATE_EXP | DATE | Y |  |
| 8 | DATE_REAL | VARCHAR2 | Y |  |
| 9 | ID_SUPPLIER | NUMBER | N |  |
| 10 | NUM_REQ | NUMBER | Y |  |
| 11 | DATE_REQ | DATE | Y |  |
| 12 | VAL_UNIT | NUMBER | N |  |
| 13 | QTY_REC | NUMBER | Y |  |
| 14 | COD_ORDER_EXTERNAL | VARCHAR2 | Y |  |
| 15 | COD_BUYER | VARCHAR2 | Y |  |
| 16 | COD_LOCAL_IN | NUMBER | N |  |
| 17 | COD_PAYMENT | NUMBER | N |  |
| 18 | OBS_ORDER | VARCHAR2 | Y |  |
| 19 | SIT_ORDER | VARCHAR2 | N |  |

---

## GTP_INTS.VW_ERP_PURCHASE_REQ

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_REQ_PK | VARCHAR2 | Y |  |
| 2 | NUM_REQ | NUMBER | N |  |
| 3 | NUM_ITEM_REQ | NUMBER | Y |  |
| 4 | NUM_PARC_REQ | NUMBER | Y |  |
| 5 | COD_ITEM | NUMBER | N |  |
| 6 | COD_ESTAB | NUMBER | N |  |
| 7 | COD_LOCAL | NUMBER | N |  |
| 8 | QTY_PARC | NUMBER | Y |  |
| 9 | DATE_EXP | DATE | N |  |
| 10 | DATE_REQ | DATE | N |  |

---

## GTP_INTS.VW_ERP_RESERVE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_RESERVE_PK | VARCHAR2 | Y |  |
| 2 | TYPE_RESERVE_PK | CHAR | Y |  |
| 3 | COD_ITEM | NUMBER | Y |  |
| 4 | COD_LOCAL | NUMBER | Y |  |
| 5 | COD_ESTAB | NUMBER | Y |  |
| 6 | DATE_REQ | DATE | Y |  |
| 7 | QTY_REQ | NUMBER | Y |  |
| 8 | OBSERVATION | VARCHAR2 | Y |  |

---

## GTP_INTS.VW_ERP_SKU

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | COD_ITEM_PK | NUMBER | N |  |
| 2 | COD_ESTAB_PK | NUMBER | N |  |
| 3 | DESC_ITEM | VARCHAR2 | Y |  |
| 4 | DESC_ESTAB | CHAR | Y |  |
| 5 | QTY_LAST_ARR | NUMBER | Y |  |
| 6 | VAL_LAST_ARR | NUMBER | Y |  |
| 7 | DATE_LAST_ARR | DATE | Y |  |
| 8 | CURVE_ABC | VARCHAR2 | Y |  |
| 9 | CURVE_XYZ | VARCHAR2 | Y |  |
| 10 | QTY_MAX | NUMBER | Y |  |
| 11 | QTY_MIN | NUMBER | Y |  |
| 12 | QTY_PP | NUMBER | Y |  |
| 13 | QTY_AVG_CONS | NUMBER | Y |  |
| 14 | COD_STD_UNIT | NUMBER | Y |  |
| 15 | DESC_STD_UNIT | VARCHAR2 | Y |  |
| 16 | VAL_UNIT_SKU | NUMBER | Y |  |
| 17 | DATE_ADDED | DATE | Y |  |
| 18 | YN_PARENT | CHAR | Y |  |
| 19 | YN_SKU_ACTIVE | CHAR | Y |  |
| 20 | COD_ITEM_PARENT | VARCHAR2 | Y |  |
| 21 | COD_ITEM_RANK | NUMBER | Y |  |
| 22 | COD_GROUP1 | CHAR | Y |  |
| 23 | COD_GROUP2 | VARCHAR2 | Y |  |
| 24 | COD_GROUP3 | VARCHAR2 | Y |  |
| 25 | COD_GROUP4 | VARCHAR2 | Y |  |
| 26 | COD_GROUP5 | CHAR | Y |  |
| 27 | COD_GROUP6 | CHAR | Y |  |
| 28 | COD_GROUP7 | CHAR | Y |  |
| 29 | COD_GROUP8 | CHAR | Y |  |
| 30 | COD_GROUP9 | CHAR | Y |  |
| 31 | COD_GROUP10 | CHAR | Y |  |
| 32 | COD_GROUP11 | CHAR | Y |  |
| 33 | COD_GROUP12 | CHAR | Y |  |
| 34 | DESC_GROUP1 | CHAR | Y |  |
| 35 | DESC_GROUP2 | VARCHAR2 | Y |  |
| 36 | DESC_GROUP3 | VARCHAR2 | Y |  |
| 37 | DESC_GROUP4 | VARCHAR2 | Y |  |
| 38 | DESC_GROUP5 | CHAR | Y |  |
| 39 | DESC_GROUP6 | CHAR | Y |  |
| 40 | DESC_GROUP7 | CHAR | Y |  |
| 41 | DESC_GROUP8 | CHAR | Y |  |
| 42 | DESC_GROUP9 | CHAR | Y |  |
| 43 | DESC_GROUP10 | CHAR | Y |  |
| 44 | DESC_GROUP11 | CHAR | Y |  |
| 45 | DESC_GROUP12 | CHAR | Y |  |
| 46 | SIT_SUPPLIER_AVAIL | NUMBER | Y |  |
| 47 | QTY_MULT_ORDER | NUMBER | Y |  |
| 48 | COD_ORDER_UNIT | NUMBER | Y |  |
| 49 | DESC_ORDER_UNIT | VARCHAR2 | Y |  |
| 50 | DEFAULT_LOCAL | CHAR | Y |  |
| 51 | LAST_PURCHASE_ORDER | NUMBER | Y |  |
| 52 | LAST_PURCHASE_SUPPLIER | NUMBER | Y |  |
| 53 | LAST_PURCHASE_DATE | DATE | Y |  |
| 54 | LAST_PURCHASE_PRICE | NUMBER | Y |  |
| 55 | LAST_PURCHASE_QTY | NUMBER | Y |  |
| 56 | QTY_MIN_BATCH | VARCHAR2 | Y |  |
| 57 | QTY_MULT_BATCH | VARCHAR2 | Y |  |
| 58 | LT_BUYER | VARCHAR2 | Y |  |
| 59 | LT_SUPPLIER | VARCHAR2 | Y |  |
| 60 | COD_ITEM_CORP | VARCHAR2 | Y |  |
| 61 | FIELD1 | VARCHAR2 | Y |  |
| 62 | FIELD2 | VARCHAR2 | Y |  |
| 63 | FIELD3 | VARCHAR2 | Y |  |

---

## GTP_INTS.VW_ERP_SKU_ALL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | COD_ITEM_PK | NUMBER | N |  |
| 2 | COD_ESTAB_PK | NUMBER | N |  |
| 3 | DESC_ITEM | VARCHAR2 | Y |  |
| 4 | COD_STD_UNIT | NUMBER | Y |  |
| 5 | DESC_STD_UNIT | VARCHAR2 | Y |  |
| 6 | VAL_UNIT | NUMBER | Y |  |
| 7 | YN_PARENT | VARCHAR2 | Y |  |
| 8 | COD_ITEM_PARENT | NUMBER | Y |  |
| 9 | COD_GROUP2 | VARCHAR2 | Y |  |
| 10 | COD_GROUP3 | VARCHAR2 | Y |  |
| 11 | COD_GROUP4 | VARCHAR2 | Y |  |
| 12 | COD_GROUP5 | CHAR | Y |  |
| 13 | COD_GROUP6 | CHAR | Y |  |
| 14 | COD_GROUP7 | CHAR | Y |  |
| 15 | COD_GROUP8 | CHAR | Y |  |
| 16 | COD_GROUP9 | CHAR | Y |  |
| 17 | COD_GROUP10 | CHAR | Y |  |
| 18 | COD_GROUP11 | CHAR | Y |  |
| 19 | COD_GROUP12 | CHAR | Y |  |
| 20 | DESC_GROUP2 | VARCHAR2 | Y |  |
| 21 | DESC_GROUP3 | VARCHAR2 | Y |  |
| 22 | DESC_GROUP4 | VARCHAR2 | Y |  |
| 23 | DESC_GROUP5 | CHAR | Y |  |
| 24 | DESC_GROUP6 | CHAR | Y |  |
| 25 | DESC_GROUP7 | CHAR | Y |  |
| 26 | DESC_GROUP8 | CHAR | Y |  |
| 27 | DESC_GROUP9 | CHAR | Y |  |
| 28 | DESC_GROUP10 | CHAR | Y |  |
| 29 | DESC_GROUP11 | CHAR | Y |  |
| 30 | DESC_GROUP12 | CHAR | Y |  |
| 31 | QTY_MULT_ORDER | NUMBER | Y |  |
| 32 | COD_ORDER_UNIT | NUMBER | Y |  |
| 33 | DESC_ORDER_UNIT | VARCHAR2 | Y |  |

---

## GTP_INTS.VW_ERP_SUPPLIER

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_SUPPLIER_PK | NUMBER | N |  |
| 2 | COD_SUPPLIER | NUMBER | N |  |
| 3 | DESC_SUPPLIER | VARCHAR2 | Y |  |
| 4 | SUPPLIER_CONTACT_NAME | VARCHAR2 | Y |  |
| 5 | EMAIL_SUPPLIER | VARCHAR2 | Y |  |

---

## GTP_INTS.VW_ERP_TRANSACTION_IN

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | COD_TRANS_PK | NUMBER | N |  |
| 2 | COD_ITEM | NUMBER | N |  |
| 3 | COD_ESTAB | NUMBER | Y |  |
| 4 | DATE_TRANS | DATE | Y |  |
| 5 | QTY_TRANS | NUMBER | Y |  |
| 6 | TYPE_TRANS | CHAR | Y |  |

---

## GTP_INTS.VW_ERP_TRANSACTION_OUT_DAY

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | COD_ITEM_PK | NUMBER | N |  |
| 2 | COD_ESTAB_PK | NUMBER | Y |  |
| 3 | COD_LOCAL_PK | NUMBER | N |  |
| 4 | COD_LOCAL_DEST_PK | NUMBER | Y |  |
| 5 | COD_SECTOR_PK | NUMBER | Y |  |
| 6 | TYPE_TRANS_PK | VARCHAR2 | N |  |
| 7 | DATE_TRANS_PK | DATE | Y |  |
| 8 | QTY_TRANS | NUMBER | Y |  |
| 9 | YN_CONS | CHAR | Y |  |

---

## GTP_INTS.VW_ERP_TRANSACTION_OUT_MONTH

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | COD_ITEM_PK | NUMBER | N |  |
| 2 | COD_ESTAB_PK | NUMBER | Y |  |
| 3 | COD_LOCAL_PK | NUMBER | N |  |
| 4 | COD_LOCAL_DEST_PK | NUMBER | Y |  |
| 5 | COD_SECTOR_PK | NUMBER | Y |  |
| 6 | TYPE_TRANS_PK | VARCHAR2 | N |  |
| 7 | MONTH_TRANS_PK | DATE | Y |  |
| 8 | QTY_TRANS | NUMBER | Y |  |
| 9 | YN_CONS | CHAR | Y |  |

---

## GTP_INTS.VW_SCR_ADM109G_JOBS_LIST

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | JOB_NAME | VARCHAR2 | Y |  |
| 2 | REPEAT_INTERVAL | VARCHAR2 | Y |  |
| 3 | JOB_ACTION | VARCHAR2 | Y |  |
| 4 | ENABLED | VARCHAR2 | Y |  |
| 5 | RUN_COUNT | NUMBER | Y |  |
| 6 | FAILURE_COUNT | NUMBER | Y |  |
| 7 | LAST_START_DATE | DATE | Y |  |
| 8 | NEXT_RUN_DATE | DATE | Y |  |
| 9 | LAST_RUN_DURATION | VARCHAR2 | Y |  |

---

## GTP_INTS.VW_SCR_ADM110G_JOBS_LOG

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | LOG_ID | NUMBER | Y |  |
| 2 | JOB_NAME | VARCHAR2 | Y |  |
| 3 | STATUS | VARCHAR2 | Y |  |
| 4 | SCHEDULED_START | DATE | Y |  |
| 5 | ACTUAL_START | DATE | Y |  |
| 6 | ACTUAL_FINISH | DATE | Y |  |
| 7 | RUN_DURATION | VARCHAR2 | Y |  |
| 8 | ADDITIONAL_INFO | VARCHAR2 | Y |  |
| 9 | JOB_TYPE | NUMBER | Y |  |

---

## GTP_INTS.VW_WES_ERP_NUM_REG

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | TABLE_NAME | VARCHAR2 | Y |  |
| 2 | QTY_LINE_REG | NUMBER | Y |  |
| 3 | LAST_INT | DATE | Y |  |
| 4 | QTY_SUM_REG | NUMBER | Y |  |

---

## GTP_INTS.VW_WES_INVENTORY_DEL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_WES | NUMBER | N |  |
| 2 | ID_COMPANY_FK | VARCHAR2 | N |  |
| 3 | COD_ITEM_PK | VARCHAR2 | N |  |
| 4 | COD_ESTAB_PK | VARCHAR2 | Y |  |
| 5 | COD_LOCAL_PK | VARCHAR2 | Y |  |
| 6 | QTY_INV | VARCHAR2 | Y |  |
| 7 | AVG_VAL | VARCHAR2 | Y |  |
| 8 | SIT_MIX | VARCHAR2 | Y |  |
| 9 | QTY_MIN | VARCHAR2 | Y |  |
| 10 | QTY_MAX | VARCHAR2 | Y |  |

---

## GTP_INTS.VW_WES_INVENTORY_INS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_WES | NUMBER | N |  |
| 2 | ID_COMPANY_FK | NUMBER | N |  |
| 3 | COD_ITEM_PK | VARCHAR2 | N |  |
| 4 | COD_ESTAB_PK | VARCHAR2 | N |  |
| 5 | COD_LOCAL_PK | VARCHAR2 | N |  |
| 6 | QTY_INV | NUMBER | N |  |
| 7 | SIT_MIX | NUMBER | Y |  |
| 8 | QTY_MIN | NUMBER | Y |  |
| 9 | QTY_MAX | NUMBER | Y |  |

---

## GTP_INTS.VW_WES_INVOICE_DEL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_WES | NUMBER | N |  |
| 2 | ID_COMPANY_FK | VARCHAR2 | N |  |
| 3 | ID_INVOICE_PK | VARCHAR2 | N |  |
| 4 | NUM_INVOICE | VARCHAR2 | Y |  |
| 5 | COD_ITEM | VARCHAR2 | Y |  |
| 6 | COD_ESTAB | VARCHAR2 | Y |  |
| 7 | ID_SUPPLIER | VARCHAR2 | Y |  |
| 8 | DATE_INVOICE | VARCHAR2 | Y |  |
| 9 | DATE_INVOICE_RECEIVED | VARCHAR2 | Y |  |
| 10 | NUM_ORDER | VARCHAR2 | Y |  |
| 11 | DATE_ORDER | VARCHAR2 | Y |  |
| 12 | DATE_ORDER_EXP | VARCHAR2 | Y |  |
| 13 | QTY_ORDER | VARCHAR2 | Y |  |
| 14 | VAL_UNIT_ORDER | VARCHAR2 | Y |  |
| 15 | VAL_UNIT_INVOICE | VARCHAR2 | Y |  |

---

## GTP_INTS.VW_WES_INVOICE_INS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_WES | NUMBER | N |  |
| 2 | ID_COMPANY_FK | NUMBER | N |  |
| 3 | ID_INVOICE_PK | VARCHAR2 | N |  |
| 4 | NUM_INVOICE | VARCHAR2 | Y |  |
| 5 | COD_ITEM | VARCHAR2 | Y |  |
| 6 | COD_ESTAB | VARCHAR2 | Y |  |
| 7 | ID_SUPPLIER | VARCHAR2 | Y |  |
| 8 | DATE_INVOICE | VARCHAR2 | Y |  |
| 9 | DATE_INVOICE_RECEIVED | VARCHAR2 | Y |  |
| 10 | NUM_ORDER | NUMBER | Y |  |
| 11 | DATE_ORDER | VARCHAR2 | Y |  |
| 12 | DATE_ORDER_EXP | VARCHAR2 | Y |  |
| 13 | QTY_ORDER | NUMBER | Y |  |
| 14 | QTY_INVOICE | NUMBER | Y |  |
| 15 | VAL_UNIT_ORDER | FLOAT | Y |  |
| 16 | VAL_UNIT_INVOICE | FLOAT | Y |  |
| 17 | YN_URGENT | CHAR | Y |  |

---

## GTP_INTS.VW_WES_LOCAL_DEL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_WES | NUMBER | N |  |
| 2 | ID_COMPANY_FK | VARCHAR2 | N |  |
| 3 | COD_LOCAL_PK | VARCHAR2 | N |  |
| 4 | DESC_LOCAL | VARCHAR2 | Y |  |
| 5 | COD_ESTAB | VARCHAR2 | Y |  |

---

## GTP_INTS.VW_WES_LOCAL_INS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_WES | NUMBER | N |  |
| 2 | ID_COMPANY_FK | NUMBER | N |  |
| 3 | COD_LOCAL_PK | VARCHAR2 | N |  |
| 4 | DESC_LOCAL | VARCHAR2 | N |  |
| 5 | COD_ESTAB_PK | VARCHAR2 | N |  |

---

## GTP_INTS.VW_WES_PENDING_GROUPED

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | WES_TABLE | VARCHAR2 | N |  |
| 2 | WES_STATUS | NUMBER | N |  |
| 3 | WES_ACTION | VARCHAR2 | N |  |
| 4 | NUM_REGISTROS | NUMBER | Y |  |

---

## GTP_INTS.VW_WES_PURCHASE_ORDER_DEL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_WES | NUMBER | N |  |
| 2 | ID_COMPANY_FK | VARCHAR2 | N |  |
| 3 | ID_ORDER_PK | VARCHAR2 | N |  |
| 4 | NUM_ORDER | VARCHAR2 | Y |  |
| 5 | COD_ITEM | VARCHAR2 | Y |  |
| 6 | COD_ESTAB | VARCHAR2 | Y |  |
| 7 | DATE_ORDER | VARCHAR2 | Y |  |
| 8 | QTY_PARC | VARCHAR2 | Y |  |
| 9 | QTY_REC | VARCHAR2 | Y |  |
| 10 | DATE_EXP | VARCHAR2 | Y |  |
| 11 | DATE_REAL | VARCHAR2 | Y |  |
| 12 | SIT_PARC | VARCHAR2 | Y |  |
| 13 | COD_SUPPLIER | VARCHAR2 | Y |  |
| 14 | COD_PAY | VARCHAR2 | Y |  |
| 15 | NUM_REQ | VARCHAR2 | Y |  |
| 16 | DATE_REQ | VARCHAR2 | Y |  |
| 17 | VAL_UNIT | VARCHAR2 | Y |  |

---

## GTP_INTS.VW_WES_PURCHASE_ORDER_INS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_WES | NUMBER | N |  |
| 2 | ID_COMPANY_FK | NUMBER | N |  |
| 3 | ID_ORDER_PK | VARCHAR2 | N |  |
| 4 | NUM_ORDER | NUMBER | N |  |
| 5 | COD_ITEM | VARCHAR2 | N |  |
| 6 | COD_ESTAB | VARCHAR2 | N |  |
| 7 | DATE_ORDER | VARCHAR2 | Y |  |
| 8 | QTY_PARC | NUMBER | Y |  |
| 9 | QTY_REC | NUMBER | Y |  |
| 10 | DATE_EXP | VARCHAR2 | Y |  |
| 11 | DATE_REAL | VARCHAR2 | Y |  |
| 12 | ID_SUPPLIER | VARCHAR2 | N |  |
| 13 | NUM_REQ | NUMBER | Y |  |
| 14 | DATE_REQ | VARCHAR2 | Y |  |
| 15 | VAL_UNIT | FLOAT | Y |  |
| 16 | COD_ORDER_EXTERNAL | VARCHAR2 | Y |  |
| 17 | COD_BUYER | VARCHAR2 | Y |  |
| 18 | COD_LOCAL_IN | VARCHAR2 | Y |  |
| 19 | COD_PAYMENT | VARCHAR2 | Y |  |
| 20 | SIT_ORDER | VARCHAR2 | Y |  |
| 21 | OBS_ORDER | VARCHAR2 | Y |  |

---

## GTP_INTS.VW_WES_PURCHASE_REQ_DEL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_WES | NUMBER | N |  |
| 2 | ID_COMPANY_FK | VARCHAR2 | N |  |
| 3 | ID_REQ_PK | VARCHAR2 | N |  |
| 4 | NUM_REQ_PK | VARCHAR2 | Y |  |
| 5 | NUM_ITEM_REQ_PK | VARCHAR2 | Y |  |
| 6 | NUM_PARC_REQ_PK | VARCHAR2 | Y |  |
| 7 | COD_ITEM | VARCHAR2 | Y |  |
| 8 | COD_ESTAB | VARCHAR2 | Y |  |
| 9 | COD_LOCAL | VARCHAR2 | Y |  |
| 10 | QTY_PARC | VARCHAR2 | Y |  |
| 11 | DATE_EXP | VARCHAR2 | Y |  |
| 12 | COD_UNIT | VARCHAR2 | Y |  |
| 13 | DATE_REQ | VARCHAR2 | Y |  |

---

## GTP_INTS.VW_WES_PURCHASE_REQ_INS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_WES | NUMBER | N |  |
| 2 | ID_COMPANY_FK | NUMBER | N |  |
| 3 | ID_REQ_PK | VARCHAR2 | N |  |
| 4 | NUM_REQ | NUMBER | N |  |
| 5 | NUM_ITEM_REQ | NUMBER | N |  |
| 6 | NUM_PARC_REQ | NUMBER | N |  |
| 7 | COD_ITEM | VARCHAR2 | N |  |
| 8 | COD_ESTAB | VARCHAR2 | N |  |
| 9 | COD_LOCAL | VARCHAR2 | Y |  |
| 10 | QTY_PARC | FLOAT | Y |  |
| 11 | DATE_EXP | VARCHAR2 | Y |  |
| 12 | DATE_REQ | VARCHAR2 | Y |  |

---

## GTP_INTS.VW_WES_RESERVE_DEL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_WES | NUMBER | N |  |
| 2 | ID_COMPANY_FK | VARCHAR2 | N |  |
| 3 | ID_RESERVE_PK | VARCHAR2 | N |  |
| 4 | TYPE_RESERVE_PK | VARCHAR2 | Y |  |

---

## GTP_INTS.VW_WES_RESERVE_INS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_WES | NUMBER | N |  |
| 2 | ID_COMPANY_FK | NUMBER | N |  |
| 3 | ID_RESERVE_PK | VARCHAR2 | N |  |
| 4 | TYPE_RESERVE_PK | CHAR | N |  |
| 5 | DATE_REQ | VARCHAR2 | Y |  |
| 6 | QTY_REQ | FLOAT | Y |  |
| 7 | OBSERVATION | VARCHAR2 | Y |  |
| 8 | COD_ITEM | VARCHAR2 | N |  |
| 9 | COD_LOCAL | VARCHAR2 | N |  |
| 10 | COD_ESTAB | VARCHAR2 | N |  |

---

## GTP_INTS.VW_WES_SKU_DEL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_WES | NUMBER | N |  |
| 2 | ID_COMPANY_FK | VARCHAR2 | N |  |
| 3 | COD_ITEM_PK | VARCHAR2 | N |  |
| 4 | COD_ESTAB_PK | VARCHAR2 | Y |  |

---

## GTP_INTS.VW_WES_SKU_INS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_WES | NUMBER | N |  |
| 2 | ID_COMPANY_FK | NUMBER | Y |  |
| 3 | COD_ITEM_PK | VARCHAR2 | N |  |
| 4 | COD_ESTAB_PK | VARCHAR2 | N |  |
| 5 | DESC_ITEM | VARCHAR2 | Y |  |
| 6 | DESC_ESTAB | VARCHAR2 | Y |  |
| 7 | VAL_UNIT_SKU | FLOAT | Y |  |
| 8 | QTY_LAST_ARR | FLOAT | Y |  |
| 9 | VAL_LAST_ARR | FLOAT | Y |  |
| 10 | DATE_LAST_ARR | VARCHAR2 | Y |  |
| 11 | CURVE_ABC | CHAR | Y |  |
| 12 | CURVE_XYZ | CHAR | Y |  |
| 13 | QTY_MAX | FLOAT | Y |  |
| 14 | QTY_MIN | FLOAT | Y |  |
| 15 | QTY_PP | FLOAT | Y |  |
| 16 | QTY_AVG_CONS | FLOAT | Y |  |
| 17 | YN_SKU_ACTIVE | CHAR | Y |  |
| 18 | COD_STD_UNIT | VARCHAR2 | Y |  |
| 19 | DESC_STD_UNIT | VARCHAR2 | Y |  |
| 20 | DATE_ADDED | VARCHAR2 | Y |  |
| 21 | YN_PARENT | CHAR | Y |  |
| 22 | COD_ITEM_PARENT | VARCHAR2 | Y |  |
| 23 | COD_ITEM_RANK | NUMBER | Y |  |
| 24 | COD_GROUP1 | VARCHAR2 | Y |  |
| 25 | COD_GROUP2 | VARCHAR2 | Y |  |
| 26 | COD_GROUP3 | VARCHAR2 | Y |  |
| 27 | COD_GROUP4 | VARCHAR2 | Y |  |
| 28 | COD_GROUP5 | VARCHAR2 | Y |  |
| 29 | COD_GROUP6 | VARCHAR2 | Y |  |
| 30 | COD_GROUP7 | VARCHAR2 | Y |  |
| 31 | COD_GROUP8 | VARCHAR2 | Y |  |
| 32 | COD_GROUP9 | VARCHAR2 | Y |  |
| 33 | COD_GROUP10 | VARCHAR2 | Y |  |
| 34 | COD_GROUP11 | VARCHAR2 | Y |  |
| 35 | COD_GROUP12 | VARCHAR2 | Y |  |
| 36 | DESC_GROUP1 | VARCHAR2 | Y |  |
| 37 | DESC_GROUP2 | VARCHAR2 | Y |  |
| 38 | DESC_GROUP3 | VARCHAR2 | Y |  |
| 39 | DESC_GROUP4 | VARCHAR2 | Y |  |
| 40 | DESC_GROUP5 | VARCHAR2 | Y |  |
| 41 | DESC_GROUP6 | VARCHAR2 | Y |  |
| 42 | DESC_GROUP7 | VARCHAR2 | Y |  |
| 43 | DESC_GROUP8 | VARCHAR2 | Y |  |
| 44 | DESC_GROUP9 | VARCHAR2 | Y |  |
| 45 | DESC_GROUP10 | VARCHAR2 | Y |  |
| 46 | DESC_GROUP11 | VARCHAR2 | Y |  |
| 47 | DESC_GROUP12 | VARCHAR2 | Y |  |
| 48 | SIT_SUPPLIER_AVAIL | NUMBER | Y |  |
| 49 | QTY_MULT_ORDER | FLOAT | Y |  |
| 50 | COD_ORDER_UNIT | VARCHAR2 | Y |  |
| 51 | DESC_ORDER_UNIT | VARCHAR2 | Y |  |
| 52 | DEFAULT_LOCAL | VARCHAR2 | Y |  |
| 53 | LAST_PURCHASE_ORDER | NUMBER | Y |  |
| 54 | LAST_PURCHASE_SUPPLIER | VARCHAR2 | Y |  |
| 55 | LAST_PURCHASE_DATE | VARCHAR2 | Y |  |
| 56 | LAST_PURCHASE_PRICE | FLOAT | Y |  |
| 57 | LAST_PURCHASE_QTY | FLOAT | Y |  |
| 58 | QTY_MIN_BATCH | FLOAT | Y |  |
| 59 | QTY_MULT_BATCH | FLOAT | Y |  |
| 60 | LT_BUYER | VARCHAR2 | Y |  |
| 61 | LT_SUPPLIER | VARCHAR2 | Y |  |
| 62 | FIELD1 | VARCHAR2 | Y |  |
| 63 | FIELD2 | VARCHAR2 | Y |  |
| 64 | FIELD3 | VARCHAR2 | Y |  |

---

## GTP_INTS.VW_WES_SUPPLIER_DEL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_WES | NUMBER | N |  |
| 2 | ID_COMPANY_FK | VARCHAR2 | N |  |
| 3 | ID_SUPPLIER_PK | VARCHAR2 | N |  |
| 4 | COD_SUPPLIER | VARCHAR2 | Y |  |
| 5 | DESC_SUPPLIER | VARCHAR2 | Y |  |
| 6 | SUPPLIER_CONTACT_NAME | VARCHAR2 | Y |  |
| 7 | EMAIL_SUPPLIER | VARCHAR2 | Y |  |
| 8 | TYPE_SUPPLIER | VARCHAR2 | Y |  |

---

## GTP_INTS.VW_WES_SUPPLIER_INS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_WES | NUMBER | N |  |
| 2 | ID_COMPANY_FK | NUMBER | N |  |
| 3 | ID_SUPPLIER_PK | VARCHAR2 | N |  |
| 4 | COD_SUPPLIER | VARCHAR2 | N |  |
| 5 | DESC_SUPPLIER | VARCHAR2 | N |  |
| 6 | SUPPLIER_CONTACT_NAME | VARCHAR2 | Y |  |
| 7 | EMAIL_SUPPLIER | VARCHAR2 | Y |  |

---

## GTP_INTS.VW_WES_TRANSACTION_DAY_DEL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_WES | NUMBER | N |  |
| 2 | ID_COMPANY_FK | VARCHAR2 | N |  |
| 3 | COD_ITEM_PK | VARCHAR2 | N |  |
| 4 | COD_ESTAB_PK | VARCHAR2 | Y |  |
| 5 | COD_LOCAL_PK | VARCHAR2 | Y |  |
| 6 | COD_LOCAL_DEST_PK | VARCHAR2 | Y |  |
| 7 | COD_SECTOR_PK | VARCHAR2 | Y |  |
| 8 | TYPE_TRANS_PK | VARCHAR2 | Y |  |
| 9 | DATE_TRANS_PK | VARCHAR2 | Y |  |

---

## GTP_INTS.VW_WES_TRANSACTION_DAY_INS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_WES | NUMBER | N |  |
| 2 | ID_COMPANY_FK | NUMBER | N |  |
| 3 | COD_ITEM_PK | VARCHAR2 | N |  |
| 4 | COD_ESTAB_PK | VARCHAR2 | N |  |
| 5 | COD_LOCAL_PK | VARCHAR2 | N |  |
| 6 | COD_LOCAL_DEST_PK | VARCHAR2 | N |  |
| 7 | COD_SECTOR_PK | VARCHAR2 | N |  |
| 8 | TYPE_TRANS_PK | VARCHAR2 | N |  |
| 9 | DATE_TRANS_PK | VARCHAR2 | Y |  |
| 10 | QTY_TRANS | FLOAT | Y |  |
| 11 | YN_CONS | CHAR | Y |  |

---

## GTP_INTS.VW_WES_TRANSACTION_IN_DEL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_WES | NUMBER | N |  |
| 2 | ID_COMPANY_FK | VARCHAR2 | N |  |
| 3 | COD_TRANS_PK | VARCHAR2 | N |  |

---

## GTP_INTS.VW_WES_TRANSACTION_IN_INS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_WES | NUMBER | N |  |
| 2 | ID_COMPANY_FK | NUMBER | Y |  |
| 3 | COD_TRANS_PK | NUMBER | N |  |
| 4 | COD_ITEM | VARCHAR2 | Y |  |
| 5 | COD_ESTAB | VARCHAR2 | N |  |
| 6 | DATE_TRANS | VARCHAR2 | Y |  |
| 7 | QTY_TRANS | FLOAT | N |  |
| 8 | TYPE_TRANS | CHAR | Y |  |

---

## GTP_INTS.VW_WES_TRANSACTION_MONTH_DEL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_WES | NUMBER | N |  |
| 2 | ID_COMPANY_FK | VARCHAR2 | N |  |
| 3 | COD_ITEM_PK | VARCHAR2 | N |  |
| 4 | COD_ESTAB_PK | VARCHAR2 | Y |  |
| 5 | COD_LOCAL_PK | VARCHAR2 | Y |  |
| 6 | COD_LOCAL_DEST_PK | VARCHAR2 | Y |  |
| 7 | COD_SECTOR_PK | VARCHAR2 | Y |  |
| 8 | TYPE_TRANS_PK | VARCHAR2 | Y |  |
| 9 | MONTH_TRANS_PK | VARCHAR2 | Y |  |

---

## GTP_INTS.VW_WES_TRANSACTION_MONTH_INS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_WES | NUMBER | N |  |
| 2 | ID_COMPANY_FK | NUMBER | Y |  |
| 3 | COD_ITEM_PK | VARCHAR2 | N |  |
| 4 | COD_ESTAB_PK | VARCHAR2 | N |  |
| 5 | COD_LOCAL_PK | VARCHAR2 | N |  |
| 6 | COD_LOCAL_DEST_PK | VARCHAR2 | N |  |
| 7 | COD_SECTOR_PK | VARCHAR2 | N |  |
| 8 | TYPE_TRANS_PK | VARCHAR2 | N |  |
| 9 | MONTH_TRANS_PK | VARCHAR2 | Y |  |
| 10 | QTY_TRANS | FLOAT | Y |  |
| 11 | YN_CONS | CHAR | Y |  |

---

## GTP_INTS.WES_PENDING

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_WES | NUMBER | N |  |
| 2 | WES_TABLE | VARCHAR2 | N |  |
| 3 | WES_ACTION | VARCHAR2 | N |  |
| 4 | WES_STATUS | NUMBER | N |  |
| 5 | PK01 | VARCHAR2 | N |  |
| 6 | PK02 | VARCHAR2 | N |  |
| 7 | PK03 | VARCHAR2 | Y |  |
| 8 | PK04 | VARCHAR2 | Y |  |
| 9 | PK05 | VARCHAR2 | Y |  |
| 10 | PK06 | VARCHAR2 | Y |  |
| 11 | PK07 | VARCHAR2 | Y |  |
| 12 | PK08 | VARCHAR2 | Y |  |
| 13 | WES_DATE_CREATED | DATE | Y |  |

---

## GTP_INTS.WES_PENDING_LOG

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_WES | NUMBER | N |  |
| 2 | WES_TABLE | VARCHAR2 | N |  |
| 3 | WES_ACTION | VARCHAR2 | N |  |
| 4 | WES_STATUS | NUMBER | N |  |
| 5 | PK01 | VARCHAR2 | N |  |
| 6 | PK02 | VARCHAR2 | N |  |
| 7 | PK03 | VARCHAR2 | Y |  |
| 8 | PK04 | VARCHAR2 | Y |  |
| 9 | PK05 | VARCHAR2 | Y |  |
| 10 | PK06 | VARCHAR2 | Y |  |
| 11 | PK07 | VARCHAR2 | Y |  |
| 12 | PK08 | VARCHAR2 | Y |  |
| 13 | WES_DATE_CREATED | DATE | N |  |
| 14 | WES_DATE_LOGGED | DATE | N |  |
| 15 | WES_ERROR | VARCHAR2 | Y |  |

---

## GTP_INTS.WES_PO_HEADER

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_PO_PK | NUMBER | N |  |
| 2 | ID_SUPPLIER_FK | VARCHAR2 | N |  |
| 3 | COD_PAYMENT_COND | NUMBER | N |  |
| 4 | COD_LOCAL_IN | VARCHAR2 | N |  |
| 5 | COD_BUYER | VARCHAR2 | N |  |
| 6 | NUM_ORDER | NUMBER | Y |  |
| 7 | SIT_ORDER | NUMBER | N |  |
| 8 | DATE_EXP_HEADER | DATE | N |  |
| 9 | DATE_INSERTED | DATE | N |  |
| 10 | DATE_UPDATED | DATE | N |  |
| 11 | NUM_REQ_FK | NUMBER | Y |  |
| 12 | DESC_LOG_HEADER_ERROR | VARCHAR2 | Y |  |
| 13 | YN_URGENT | CHAR | Y |  |
| 14 | OBS_HEADER | VARCHAR2 | Y |  |
| 15 | COD_ESTAB_FK | VARCHAR2 | Y |  |
| 16 | COD_REQUESTER | VARCHAR2 | Y |  |
| 17 | COD_APPROVER | VARCHAR2 | Y |  |
| 18 | VAL_ALTERED | FLOAT | Y |  |
| 19 | ID_BID_FK | NUMBER | Y |  |

---

## GTP_INTS.WES_PO_ITEM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_PO_FK | NUMBER | N |  |
| 2 | ID_PO_ITEM_PK | NUMBER | N |  |
| 3 | NUM_ITEM | NUMBER | Y |  |
| 4 | COD_ITEM_FK | VARCHAR2 | N |  |
| 5 | COD_UNIT | VARCHAR2 | N |  |
| 6 | QTY_ITEM | FLOAT | N |  |
| 7 | VAL_UNIT | FLOAT | N |  |
| 8 | VAL_IPI | FLOAT | N |  |
| 9 | DATE_INSERTED | DATE | N |  |
| 10 | DATE_UPDATED | DATE | N |  |
| 11 | DESC_LOG_ITEM_ERROR | VARCHAR2 | Y |  |
| 12 | NUM_REQ_FK | NUMBER | Y |  |

---

## GTP_INTS.WES_PO_PARC

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_PO_ITEM_FK | NUMBER | N |  |
| 2 | ID_PO_PARC_PK | NUMBER | N |  |
| 3 | NUM_PARC | NUMBER | N |  |
| 4 | QTY_PARC | FLOAT | N |  |
| 5 | DATE_EXP_PARC | DATE | N |  |
| 6 | DATE_INSERTED | DATE | N |  |
| 7 | DATE_UPDATED | DATE | N |  |
| 8 | DESC_LOG_PARC_ERROR | VARCHAR2 | Y |  |
| 9 | NUM_REQ_FK | NUMBER | Y |  |

---

## GTP_INTS.WES_SCHEDULER

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_SCHEDULER_PK | NUMBER | N |  |
| 2 | WES_TABLE | VARCHAR2 | N |  |
| 3 | DH_START | TIMESTAMP(6) | N |  |
| 4 | DH_END | TIMESTAMP(6) | Y |  |

---

## GTP_INTS.WES_SUGGESTION_HEADER

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_INT_PLANNEXO | NUMBER | N |  |
| 2 | DATE_EXPECTED | DATE | N |  |
| 3 | COD_SECTOR | VARCHAR2 | N |  |
| 4 | COD_LOCAL | VARCHAR2 | N |  |
| 5 | COD_REASON | VARCHAR2 | N |  |
| 6 | COD_BUYER | VARCHAR2 | N |  |
| 7 | COD_USER | VARCHAR2 | N |  |
| 8 | YN_URGENT | CHAR | N |  |
| 9 | SIT_REQ | NUMBER | N |  |
| 10 | DATE_INT | DATE | Y |  |
| 11 | ID_REQ_ERP | NUMBER | Y |  |
| 12 | HEADER_LOG | VARCHAR2 | Y |  |
| 13 | COD_ESTAB | VARCHAR2 | N |  |
| 14 | OBS_HEADER | VARCHAR2 | Y |  |

---

## GTP_INTS.WES_SUGGESTION_ITEM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_INT_PLANNEXO | NUMBER | N |  |
| 2 | COD_ITEM | VARCHAR2 | N |  |
| 3 | QTY_PARC | FLOAT | N |  |
| 4 | STD_UNIT | VARCHAR2 | N |  |
| 5 | ITEM_LOG | VARCHAR2 | Y |  |
| 6 | ITEM_ORDER | NUMBER | Y |  |
| 7 | OBS | VARCHAR2 | Y |  |

---

## GTP_INTS.WES_SUGGESTION_PARC

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_INT_PLANNEXO | NUMBER | N |  |
| 2 | COD_ITEM | VARCHAR2 | N |  |
| 3 | NUM_PARC | NUMBER | Y |  |
| 4 | DATE_PARC | DATE | N |  |
| 5 | QTY_PARC | FLOAT | N |  |

---

## MVINTEGRA.AGFA_ADT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | MSH_SENDINGFACILITY | VARCHAR2 | Y |  |
| 2 | MSH_DATE | DATE | Y |  |
| 3 | MSH_ID | NUMBER | N |  |
| 4 | MSH_STATUS | VARCHAR2 | Y |  |
| 5 | EVN_TYPECODE | VARCHAR2 | Y |  |
| 6 | EVN_RECDATE | DATE | Y |  |
| 7 | PID_ID | VARCHAR2 | Y |  |
| 8 | PID_LNAMEF | VARCHAR2 | Y |  |
| 9 | PID_LNAMEM | VARCHAR2 | Y |  |
| 10 | PID_FNAME | VARCHAR2 | Y |  |
| 11 | PID_DOB | DATE | Y |  |
| 12 | PID_SEX | VARCHAR2 | Y |  |
| 13 | PID_STREET | VARCHAR2 | Y |  |
| 14 | PID_STREETNR | VARCHAR2 | Y |  |
| 15 | PID_COMUNA | VARCHAR2 | Y |  |
| 16 | PID_REGION | VARCHAR2 | Y |  |
| 17 | PID_PHONE | VARCHAR2 | Y |  |
| 18 | PID_MARITSTAT | VARCHAR2 | Y |  |
| 19 | PID_NATIONALITY | VARCHAR2 | Y |  |
| 20 | PID_DOD | DATE | Y |  |
| 21 | NK1_FNAME | VARCHAR2 | Y |  |
| 22 | NK1_RELATION | VARCHAR2 | Y |  |
| 23 | NK1_FNAME2 | VARCHAR2 | Y |  |
| 24 | NK1_RELATION2 | VARCHAR2 | Y |  |
| 25 | MGR_OLDPID | VARCHAR2 | Y |  |
| 26 | PV1_STATUS | VARCHAR2 | Y |  |
| 27 | PV1_LOCATION | VARCHAR2 | Y |  |
| 28 | PV1_ROOM | VARCHAR2 | Y |  |
| 29 | PV1_BED | VARCHAR2 | Y |  |
| 30 | PV1_ADMTYPE | VARCHAR2 | Y |  |
| 31 | PV1_ATTDOC | VARCHAR2 | Y |  |
| 32 | PV1_VISITNR | VARCHAR2 | Y |  |
| 33 | PV1_ADMITDATE | VARCHAR2 | Y |  |
| 34 | PV1_DISCHARGEDATE | VARCHAR2 | Y |  |
| 35 | IN1_PLANID | VARCHAR2 | Y |  |
| 36 | IN1_PLANNAME | VARCHAR2 | Y |  |
| 37 | IN1_COMPID | VARCHAR2 | Y |  |
| 38 | IN1_COMPNAME | VARCHAR2 | Y |  |
| 39 | IN1_STARTDATE | DATE | Y |  |
| 40 | IN1_ENDDATE | DATE | Y |  |
| 41 | IN1_POLICYNR | VARCHAR2 | Y |  |
| 42 | CD_MULTI_EMPRESA | NUMBER | Y |  |

---

## MVINTEGRA.AGFA_DFT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | MSH_10_ID | VARCHAR2 | Y |  |
| 2 | PID_02_ID | VARCHAR2 | Y |  |
| 3 | PID_03_INFO | VARCHAR2 | Y |  |
| 4 | PID_05_NOMBRE | VARCHAR2 | Y |  |
| 5 | PR1_03_BILLING_CODE | VARCHAR2 | Y |  |
| 6 | PR1_03_COD_INT | VARCHAR2 | Y |  |
| 7 | FT1_02_EXAMID | VARCHAR2 | Y |  |
| 8 | FT1_02_TYPE_ID | VARCHAR2 | Y |  |
| 9 | FT1_03_BATCH_ID | VARCHAR2 | Y |  |
| 10 | FT1_04_PROCEDURE_D | VARCHAR2 | Y |  |
| 11 | FT1_04_TRANS_DATE | VARCHAR2 | Y |  |
| 12 | FT1_05_POST_DATE | VARCHAR2 | Y |  |
| 13 | FT1_06_STATUS | VARCHAR2 | Y |  |
| 14 | FT1_07_CODE_ID | VARCHAR2 | Y |  |
| 15 | FT1_07_EXAM_COD | VARCHAR2 | Y |  |
| 16 | FT1_02_07_FLAG | NUMBER | Y |  |
| 17 | FT1_10_QTY | NUMBER | Y |  |
| 18 | FT1_13_CC | VARCHAR2 | Y |  |
| 19 | FT1_18_P_TYPE | VARCHAR2 | Y |  |
| 20 | FT1_24_USER_RIS | VARCHAR2 | Y |  |
| 21 | FT1_09_STATUS_PAID | VARCHAR2 | Y |  |
| 22 | DFT_03_ACTIVE_STAT | VARCHAR2 | Y |  |
| 23 | FT1_26_ACC_NUMBER | VARCHAR2 | Y |  |
| 24 | FT1_25_STATUS_VAL | VARCHAR2 | Y |  |
| 25 | PV1_19_CTA_CTE | VARCHAR2 | Y |  |
| 26 | FT1_21_MED_SOL | VARCHAR2 | Y |  |
| 27 | STATUS_HIS | NUMBER | Y |  |
| 28 | CD_MULTI_EMPRESA | NUMBER | Y |  |
| 29 | CD_ATENDIMENTO | NUMBER | Y |  |
| 30 | DFT_02_CODIGO_PEDIDO | VARCHAR2 | Y |  |

---

## MVINTEGRA.AGFA_ORM_IN

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ORM_STATUS_RECORD | VARCHAR2 | Y | Status do registro: N: NOVO; T: TRATADO; E: ERRO |
| 2 | MSH_ID_RECORD | VARCHAR2 | Y | Numero sequencial do registro |
| 3 | ORC_04_QP_REQ_ID | VARCHAR2 | Y | Codigo Do Pedido De Exame |
| 4 | ORC_25_QP_STATUS | VARCHAR2 | Y | Status de solicitac?o do Exame: 0^REQUEST - solicitado / 1^DECLINED - Cancelado / 2^NULL - Agenda... |
| 5 | ORM_01_HIS_DATE | DATE | Y | Data atual |
| 6 | MSH_06_RIS_DATE | DATE | Y | Para preenchimento do Sistema AGFA |
| 7 | OBR_05_PRIORITY_EXAM | VARCHAR2 | Y | Prioridade do exame: S: ALTA / A: NORMAL |
| 8 | ORC_07_EXAM_DATE_INIT | DATE | Y | Data de solicitac?o do pedido de exame |
| 9 | ORC_07_EXAM_DATE_FIN | DATE | Y | Repetic?o da Data de solicitac?o do pedido de exame |
| 10 | ORC_21_QP_SERV | VARCHAR2 | Y | Codigo do Setor solicitante |
| 11 | ORC_10_QP_USER_HIS | VARCHAR2 | Y | Codigo do usuario |
| 12 | OBR_16_QP_MED_ID | VARCHAR2 | Y | Codigo do Prestador |
| 13 | OBR_6_QP_REQ_DATE | DATE | Y | Repetic?o da Data de solicitac?o do pedido de exame |
| 14 | PID_05_ID | VARCHAR2 | Y | Codigo do paciente |
| 15 | PV1_19_VISIT_NRO | VARCHAR2 | Y | Codigo do Atendimento |
| 16 | PV1_18_PTYPE | VARCHAR2 | Y | Tipo de atendimento: A2: URGENCIA /H1: INTERNAC?O /AA: AMBULATORIAL / AB: EXTERNO |
| 17 | OBR_04_EXAM_CODE | VARCHAR2 | Y | Codigo do exame |
| 18 | OBR_04_EXAM_DESC | VARCHAR2 | Y | Descric?o do exame |
| 19 | OBR_02_QP_EXAM_ID | VARCHAR2 | Y | Codigo De Identificac?o Do Exame Dentro Da Solicitac?o - Cd_itPed_rx |
| 20 | OBR_31_PREST_INFO | VARCHAR2 | Y | Observacao do exame |
| 21 | OBR_13_ORDER_INFO | VARCHAR2 | Y | Observac?o da Solicitac?o |
| 22 | CD_MULTI_EMPRESA | NUMBER | Y | Codigo Da Multi Empresa Do Pedido |

---

## MVINTEGRA.AGFA_ORU

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ORU_01_HIS_DATE | DATE | Y |  |
| 2 | MSH_06_RIS_DATE | DATE | Y |  |
| 3 | PID_05_ID | VARCHAR2 | Y |  |
| 4 | OBR_32_AUTHOR_ID | VARCHAR2 | Y |  |
| 5 | OBR_32_AUTHOR_NAME | VARCHAR2 | Y |  |
| 6 | OBR_27_VALIDATE_DATE | DATE | Y |  |
| 7 | OBR_35_TRANSCRIP_ID | VARCHAR2 | Y |  |
| 8 | OBR_35_TRANSCRIP_NAME | VARCHAR2 | Y |  |
| 9 | ORU_04_COD_PEDIDO | VARCHAR2 | Y |  |
| 10 | ORU_02_STATUS_HIS | VARCHAR2 | Y |  |
| 11 | OBR_03_BATCH_ID | VARCHAR2 | Y |  |
| 12 | OBR_03_ACC_NUMBER | VARCHAR2 | Y |  |
| 13 | OBR_STATUS_REP | VARCHAR2 | Y |  |
| 14 | TP_STATUS | VARCHAR2 | Y | registra o status da integrac?o: A - Aguarda, T - Transporte, E - Erro, P - Processando |
| 15 | DS_STATUS | VARCHAR2 | Y | armazena mensagens relacioandas ao status da integrac?o |

---

## MVINTEGRA.ARQUIVO_INTEGRACAO
> Configurac?o dos arquivos a serem lidos ou gerados pela integrac?o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROCESSO_INTEGRACAO | VARCHAR2 | N | Identificador do processo de integrac?o |
| 2 | DS_PASTA_ARQUIVO_ENTRADA | VARCHAR2 | Y | Pasta onde sera lido o arquivo importac?o |
| 3 | DS_PASTA_ARQUIVO_SAIDA | VARCHAR2 | Y | Pasta onde sera gravado os arquivos de exportac?o |
| 4 | DS_PREFIXO_ARQUIVO | VARCHAR2 | Y | Prefixo a ser usado no arquivo na gravac?o ou leitura |
| 5 | DS_SUFIXO_ARQUIVO | VARCHAR2 | Y | Sufixo a ser usando no arquivo de gravac?o ou leitura |
| 6 | DS_FORMA_GERACAO_ARQUIVO | VARCHAR2 | N | Forma de gerac?o do arquivo de exportac?o, "S" para Sequencial ou "F" para fixo |
| 7 | NR_SEQUENCIA_ARQUIVO | NUMBER | Y | Sequencia numerica para compor o nome do arquivo de exportac?o |
| 8 | DS_NOME_FIXO_ARQUIVO | VARCHAR2 | Y | Nome fixo do arquivo para gravac?o ou leitura |
| 9 | SN_SEQUENCIA_FINAL_ARQUIVO | VARCHAR2 | Y | Informa se sera adiconado numero sequencial no final do arquivo |
| 10 | NR_SEQUENCIA_FINAL_ARQUIVO | NUMBER | Y | Numero sequencial para ser adicionado no final do arquivo |
| 11 | DS_EXTENSAO_ENVIO | VARCHAR2 | Y | Extens?o para ser utilizada nos arquivos exportados |
| 12 | DS_EXTENSAO_STATUS | VARCHAR2 | Y | Extens?o para ser utilizada nos arquivos de status |
| 13 | DS_EXTENSAO_RETORNO | VARCHAR2 | Y | Extens?o para ser utilziada nos arquivos de retorno |
| 14 | DS_EXTENSAO_CONFIRMACAO | VARCHAR2 | Y | Extens?o para ser utilziada nos arquivos de confirmacao |
| 15 | QT_TEMPO_ESPERA_STATUS | NUMBER | Y | Tempo de espera (em segundos) para a leitura de arquivos de status |
| 16 | QT_TEMPO_ESPERA_RETORNO | NUMBER | Y | Tempo de espera (em segundos) para a leitura de arquivos de retorno |
| 17 | CD_MULTI_EMPRESA | NUMBER | N | Empresa do processo de integrac?o |
| 18 | QT_TEMPO_ESPERA_EXECUCAO | NUMBER | Y | Tempo de espera (em segundos) para execuc?o do processo |

---

## MVINTEGRA.BKP_INTEGRA_BNEXO_RESP_CAB

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ID | NUMBER | Y |  |
| 2 | CD_ID_PAI | NUMBER | Y |  |
| 3 | CD_CONTROLE | VARCHAR2 | Y |  |
| 4 | CD_SOL_COM | VARCHAR2 | Y |  |
| 5 | DT_VENCIMENTO | VARCHAR2 | Y |  |
| 6 | HR_VENCIMENTO | VARCHAR2 | Y |  |

---

## MVINTEGRA.BNEXO_RESP_CAB

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ID | NUMBER | Y |  |
| 2 | CD_ID_PAI | NUMBER | Y |  |
| 3 | CD_CONTROLE | VARCHAR2 | Y |  |
| 4 | CD_SOL_COM | VARCHAR2 | Y |  |
| 5 | DT_VENCIMENTO | VARCHAR2 | Y |  |
| 6 | HR_VENCIMENTO | VARCHAR2 | Y |  |

---

## MVINTEGRA.BNEXO_RESP_IT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ID | NUMBER | Y |  |
| 2 | CD_ID_PAI | NUMBER | Y |  |
| 3 | CD_ARTIGO | VARCHAR2 | Y |  |
| 4 | CD_PRODUTO | VARCHAR2 | Y |  |
| 5 | QT_PRODUTO | VARCHAR2 | Y |  |

---

## MVINTEGRA.BNEXO_RESP_IT_RS_BKP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ID | NUMBER | Y |  |
| 2 | CD_ID_PAI | NUMBER | Y |  |
| 3 | NR_CNPJ | VARCHAR2 | Y |  |
| 4 | NM_FABRICANTE | VARCHAR2 | Y |  |
| 5 | DS_EMBALAGEM | VARCHAR2 | Y |  |
| 6 | VL_UNITARIO | VARCHAR2 | Y |  |
| 7 | VL_TOTAL | VARCHAR2 | Y |  |
| 8 | DS_COMENTARIO | VARCHAR2 | Y |  |

---

## MVINTEGRA.CMP3$111495

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IMV_LOG_REQUISICAO | NUMBER | N |  |
| 2 | DH_CRIACAO_LOG | DATE | N |  |
| 3 | NM_SERVICO | VARCHAR2 | N |  |
| 4 | SN_SUCESSO | VARCHAR2 | N |  |
| 5 | LO_MENSAGEM | BLOB | N |  |
| 6 | LO_RESPOSTA | BLOB | N |  |
| 7 | DH_RETORNO | DATE | Y |  |
| 8 | DS_ERRO | VARCHAR2 | Y |  |
| 9 | CD_SISTEMA_ORIGEM | VARCHAR2 | Y |  |
| 10 | CD_EMPRESA_DESTINO | VARCHAR2 | Y |  |
| 11 | LO_MENSAGEM_TERCEIRO | BLOB | Y |  |
| 12 | LO_RESPOSTA_TERCEIRO | BLOB | Y |  |
| 13 | NM_INSTANCIA | VARCHAR2 | Y |  |

---

## MVINTEGRA.CMP3$111818

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INTEGRA_SAIDA_ATENDIMENTO | NUMBER | Y |  |
| 2 | TP_INTEGRACAO | VARCHAR2 | N |  |
| 3 | DS_ERRO | VARCHAR2 | Y |  |
| 4 | DT_INTEGRACAO | DATE | N |  |
| 5 | DT_INTEGRACAO_MV2000 | DATE | Y |  |
| 6 | TP_MOVIMENTO | VARCHAR2 | N |  |
| 7 | TP_REGISTRO | VARCHAR2 | N |  |
| 8 | CD_FILIAL_INTEGRA | VARCHAR2 | N |  |
| 9 | CD_ATENDIMENTO | NUMBER | Y |  |
| 10 | DT_ATENDIMENTO | DATE | Y |  |
| 11 | HR_ATENDIMENTO | DATE | Y |  |
| 12 | CD_ORIGEM | NUMBER | Y |  |
| 13 | CD_ORIGEM_INTEGRA | VARCHAR2 | Y |  |
| 14 | DS_ORIGEM | VARCHAR2 | Y |  |
| 15 | CD_PRESTADOR | NUMBER | Y |  |
| 16 | CD_PRESTADOR_INTEGRA | VARCHAR2 | Y |  |
| 17 | NM_PRESTADOR | VARCHAR2 | Y |  |
| 18 | CD_CONVENIO | NUMBER | Y |  |
| 19 | CD_CONVENIO_INTEGRA | VARCHAR2 | Y |  |
| 20 | TP_CONVENIO | VARCHAR2 | Y |  |
| 21 | TP_CONVENIO_INTEGRA | VARCHAR2 | Y |  |
| 22 | NM_CONVENIO | VARCHAR2 | Y |  |
| 23 | CD_PLANO | NUMBER | Y |  |
| 24 | CD_PLANO_INTEGRA | VARCHAR2 | Y |  |
| 25 | DS_PLANO | VARCHAR2 | Y |  |
| 26 | CD_SUB_PLANO | VARCHAR2 | Y |  |
| 27 | CD_SUB_PLANO_INTEGRA | VARCHAR2 | Y |  |
| 28 | DS_SUB_PLANO | VARCHAR2 | Y |  |
| 29 | CD_LOCAL_PROCEDENCIA | NUMBER | Y |  |
| 30 | CD_LOCAL_PROCEDENCIA_INTEGRA | VARCHAR2 | Y |  |
| 31 | DS_LOCAL_PROCEDENCIA | VARCHAR2 | Y |  |
| 32 | CD_DESTINO_ATENDIMENTO | NUMBER | Y |  |
| 33 | CD_DESTINO_ATENDIMENTO_INTEGRA | VARCHAR2 | Y |  |
| 34 | DS_DESTINO_ATENDIMENTO | VARCHAR2 | Y |  |
| 35 | SN_TEM_ACOMPANHANTE | VARCHAR2 | Y |  |
| 36 | CD_PROC_ATENDIMENTO | VARCHAR2 | Y |  |
| 37 | CD_PROC_ATENDIMENTO_INTEGRA | VARCHAR2 | Y |  |
| 38 | DS_PROC_ATENDIMENTO | VARCHAR2 | Y |  |
| 39 | CD_CID_ATENDIMENTO | VARCHAR2 | Y |  |
| 40 | TP_ATENDIMENTO | VARCHAR2 | Y |  |
| 41 | TP_ATENDIMENTO_INTEGRA | VARCHAR2 | Y |  |
| 42 | TP_INTERNACAO | NUMBER | Y |  |
| 43 | TP_INTERNACAO_INTEGRA | VARCHAR2 | Y |  |
| 44 | DS_INTERNACAO | VARCHAR2 | Y |  |
| 45 | CD_UNID_INTERNACAO | NUMBER | Y |  |
| 46 | CD_UNID_INTERNACAO_INTEGRA | VARCHAR2 | Y |  |
| 47 | DS_UNID_INTERNACAO | VARCHAR2 | Y |  |
| 48 | CD_SETOR | NUMBER | Y |  |
| 49 | CD_SETOR_INTEGRA | VARCHAR2 | Y |  |
| 50 | DS_SETOR | VARCHAR2 | Y |  |
| 51 | TP_ACOMODACAO | NUMBER | Y |  |
| 52 | TP_ACOMODACAO_INTEGRA | VARCHAR2 | Y |  |
| 53 | DS_ACOMODACAO | VARCHAR2 | Y |  |
| 54 | CD_LEITO | NUMBER | Y |  |
| 55 | CD_LEITO_INTEGRA | VARCHAR2 | Y |  |
| 56 | DS_LEITO | VARCHAR2 | Y |  |
| 57 | DS_LEITO_RESUMIDO | VARCHAR2 | Y |  |
| 58 | DS_ENFERMAGEM | VARCHAR2 | Y |  |
| 59 | CD_SERVICO | NUMBER | Y |  |
| 60 | CD_SERVICO_INTEGRA | VARCHAR2 | Y |  |
| 61 | DS_SERVICO | VARCHAR2 | Y |  |
| 62 | CD_ESPECIALIDADE | VARCHAR2 | Y |  |
| 63 | CD_ESPECIALIDADE_INTEGRA | VARCHAR2 | Y |  |
| 64 | DS_ESPECIALIDADE | VARCHAR2 | Y |  |
| 65 | NR_GUIA | VARCHAR2 | Y |  |
| 66 | TP_GUIA | VARCHAR2 | Y |  |
| 67 | TP_GUIA_INTEGRA | VARCHAR2 | Y |  |
| 68 | QT_DIAS_SOLICITADOS | NUMBER | Y |  |
| 69 | QT_HORAS_SOLICITADOS | NUMBER | Y |  |
| 70 | QT_DIAS_AUTORIZADOS | NUMBER | Y |  |
| 71 | QT_HORAS_AUTORIZADOS | NUMBER | Y |  |
| 72 | CD_SENHA | VARCHAR2 | Y |  |
| 73 | CD_PACIENTE | NUMBER | Y |  |
| 74 | CD_PACIENTE_INTEGRA | VARCHAR2 | Y |  |
| 75 | DS_NOME | VARCHAR2 | Y |  |
| 76 | DS_RESPONSAVEL_PACIENTE | VARCHAR2 | Y |  |
| 77 | TP_PARENTESCO | VARCHAR2 | Y |  |
| 78 | TP_PARENTESCO_INTEGRA | VARCHAR2 | Y |  |
| 79 | DS_TIPO_PARENTESCO | VARCHAR2 | Y |  |
| 80 | CD_PROFISSAO_RESP | NUMBER | Y |  |
| 81 | CD_PROFISSAO_RESP_INTEGRA | VARCHAR2 | Y |  |
| 82 | DS_NATURALIDADE_RESP | VARCHAR2 | Y |  |
| 83 | NR_TELEFONE_RESP | VARCHAR2 | Y |  |
| 84 | NR_IDENTIDADE_RESP | VARCHAR2 | Y |  |
| 85 | NR_CPF_RESP | VARCHAR2 | Y |  |
| 86 | DS_CONTATO_FAMILIA | VARCHAR2 | Y |  |
| 87 | DS_ENDERECO_RESP | VARCHAR2 | Y |  |
| 88 | NR_ENDERECO_RESP | VARCHAR2 | Y |  |
| 89 | DS_COMPLEMENTO_RESP | VARCHAR2 | Y |  |
| 90 | DS_BAIRRO_RESP | VARCHAR2 | Y |  |
| 91 | CD_CIDADE_RESP | VARCHAR2 | Y |  |
| 92 | DS_CIDADE_RESP | VARCHAR2 | Y |  |
| 93 | CD_ESTADO_RESP | VARCHAR2 | Y |  |
| 94 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 95 | DT_ALTA | DATE | Y |  |
| 96 | HR_ALTA | DATE | Y |  |
| 97 | CD_PACIENTE_ANTERIOR | NUMBER | Y |  |
| 98 | NM_PACIENTE_ANTERIOR | VARCHAR2 | Y |  |
| 99 | SN_ALTA_POR_OBITO | VARCHAR2 | Y |  |
| 100 | CD_LEITO_ANTERIOR | NUMBER | Y |  |
| 101 | DS_LEITO_ANTERIOR | VARCHAR2 | Y |  |
| 102 | DS_LEITO_RESUMIDO_ANTERIOR | VARCHAR2 | Y |  |
| 103 | SN_ALTA | VARCHAR2 | Y |  |
| 104 | CD_MOTIVO_ALTA | NUMBER | Y |  |
| 105 | DS_MOTIVO_ALTA | VARCHAR2 | Y |  |
| 106 | CD_LEITO_ANTERIOR_INTEGRA | VARCHAR2 | Y |  |
| 107 | CD_INTEGRA_PAI | NUMBER | Y |  |
| 108 | CD_ATENDIMENTO_INTEGRA | VARCHAR2 | Y |  |
| 109 | TP_ESTADO_CIVIL_RESP | VARCHAR2 | Y |  |
| 110 | NR_CEP_RESP | VARCHAR2 | Y |  |
| 111 | DT_NASCIMENTO_RESP | DATE | Y |  |
| 112 | NR_CPF_PRESTADOR | VARCHAR2 | Y |  |
| 113 | DS_PROC_ALTA | VARCHAR2 | Y |  |
| 114 | CD_PROC_ALTA | VARCHAR2 | Y |  |
| 115 | NR_CNS_PRESTADOR | VARCHAR2 | Y |  |
| 116 | CD_PROC_ALTA_INTEGRA | VARCHAR2 | Y |  |

---

## MVINTEGRA.COLUNA_INTEGRACAO
> Tabela contendo as colunas responsaveis pela execuc?o de atualizac?o da integrac?o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROCESSO_INTEGRACAO | VARCHAR2 | N | Identificac?o (ID) do processo de integrac?o |
| 2 | DS_COLUNA_INTEGRACAO | VARCHAR2 | N | Nome da coluna responsavel em executar o processo de integrac?o |

---

## MVINTEGRA.CONDICAO_EXECUCAO
> Tabela de condic?o de execuc?o das integrac?es

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONDICAO_EXECUCAO | NUMBER | N | Chave primaria da tabela |
| 2 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da Empresa da condic?o de execuc?o |
| 3 | CD_PROCESSO_INTEGRACAO | VARCHAR2 | N | Codigo do processo de integrac?o a qual a condic?o sera aplicada |
| 4 | NM_COLUNA | VARCHAR2 | N | Nome da coluna em que a condic?o de execuc?o sera comparada |
| 5 | TP_COLUNA | VARCHAR2 | N | Tipo da Coluna da condic?o |
| 6 | TP_CONDICAO | VARCHAR2 | N | Tipo da condic?o de comparac?o. S?o validos: "=", "<>", ">", "<", ">=", "<=", "IN", "NOT IN", "BE... |
| 7 | DS_VALOR | VARCHAR2 | N | Valor da condic?o para execuc?o |
| 8 | DS_VALOR_MAX | VARCHAR2 | Y | Valor maximo da condic?o para execuc?o se a condic?o for "BETWEEN" OU "NOT BETWEEN" |

---

## MVINTEGRA.CONFIGURACAO_MVCONNECT
> Tabela do tipo chave/valor utilizada para armazenar configurac?es do sistema MV CONNECT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIGURACAO_MVCONNECT | NUMBER | N | Primary key da tabela |
| 2 | DS_IDENTIFICADOR | VARCHAR2 | N | Uma String arbitraria que identifica a configurac?o |
| 3 | DS_VALOR | VARCHAR2 | Y | O valor da configurac?o |

---

## MVINTEGRA.CONFIG_INTERFACE_LIS
> Tabela resposável pela configuração da interface de integração dos resultados de exames laboratoriais

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_INTERFACE_LIS | NUMBER | N | Código sequencial da integração |
| 2 | CD_BANCADA | NUMBER | N | Código sequencial da integração |
| 3 | SN_REVISA_EXA_INTEGRA_LAB | VARCHAR2 | Y | Código sequencial da integração |
| 4 | SN_ASSINA_EXA_INTEGRA_LAB | VARCHAR2 | Y | Código sequencial da integração |
| 5 | SN_VERSAO_PADRAO | VARCHAR2 | Y | Código sequencial da integração |
| 6 | NR_PERIODO_ARQ_RETORNO | NUMBER | N | Código sequencial da integração |
| 7 | DS_CAMINHO_ARQ_INTEGRA_RCB | VARCHAR2 | Y | Código sequencial da integração |
| 8 | DS_CAMINHO_ARQ_INTEGRA_ENV | VARCHAR2 | Y | Código sequencial da integração |
| 9 | DS_CAMINHO_ARQ_ERRO | VARCHAR2 | Y | Código sequencial da integração |
| 10 | DS_CAMINHO_GRAFICOS | VARCHAR2 | Y | Código sequencial da integração |
| 11 | NR_POSICAO_INI_GERME_1 | NUMBER | N | Código sequencial da integração |
| 12 | NR_POSICAO_FIM_GERME_1 | NUMBER | N | Código sequencial da integração |
| 13 | NR_POSICAO_INI_GERME_2 | NUMBER | N | Código sequencial da integração |
| 14 | NR_POSICAO_FIM_GERME_2 | NUMBER | N | Código sequencial da integração |
| 15 | NR_POSICAO_INI_GERME_3 | NUMBER | N | Código sequencial da integração |
| 16 | NR_POSICAO_FIM_GERME_3 | NUMBER | N | Código sequencial da integração |
| 17 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da Multi Empresa |
| 18 | DS_CAMINHO_ARQ_PROCESSADO | VARCHAR2 | Y | Diretório onde deverão ser gravados os arquivos de retorno dos equipamentos que apresentarem erros |

---

## MVINTEGRA.CONFIG_MVINTEGRA
> Tabela de parametros de configurac?o MVINTEGRA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_MVINTEGRA | NUMBER | Y |  |
| 2 | CAMINHO_ARQUIVO_GERADO | VARCHAR2 | Y |  |
| 3 | CAMINHO_LEITURA_ARQUIVO | VARCHAR2 | Y |  |
| 4 | CD_FILIAL_INTEGRA | VARCHAR2 | Y |  |
| 5 | CD_MULTI_EMPRESA | NUMBER | Y | Codigo da multi-empresa |
| 6 | UNIDADE_WINDOWS | VARCHAR2 | Y |  |
| 7 | TEMPO_ATUALIZACAO | NUMBER | Y |  |
| 8 | CD_MOT_DEV | NUMBER | Y | Codigo padr?o do motivo de devoluc?o de uma nota fiscal |
| 9 | CD_TIP_DOC_FRETE | NUMBER | Y | Codigo padr?o do tipo de frete usando selecionar documentos a serem integrados |
| 10 | SN_ATIVA_INTEGRACAO_AGFA | VARCHAR2 | N | Armazena a configurac?o se a integrac?o da AGFA estara ativa |
| 11 | CD_SETOR_PERDAS_CREDITO | VARCHAR2 | Y | Codigo padr?o do setor de credito para contabilizar perdas |
| 12 | CD_CONTA_PERDAS_CREDITO | VARCHAR2 | Y | Codigo padr?o da conta de credito para contabilizar perdas |
| 13 | CD_SETOR_PERDAS_DEBITO | VARCHAR2 | Y | Codigo padr?o do setor de debito para contabilizar perdas |
| 14 | CD_CONTA_PERDAS_DEBITO | VARCHAR2 | Y | Codigo padr?o da conta de debito para contabilizar perdas |
| 15 | CD_SETOR_INVENTARIO_CREDITO | VARCHAR2 | Y | Codigo padr?o do setor de credito para contabilizar inventario |
| 16 | CD_CONTA_INVENTARIO_CREDITO | VARCHAR2 | Y | Codigo padr?o da conta de credito para contabilizar inventario |
| 17 | CD_SETOR_INVENTARIO_DEBITO | VARCHAR2 | Y | Codigo padr?o do setor de debito para contabilizar inventario |
| 18 | CD_CONTA_INVENTARIO_DEBITO | VARCHAR2 | Y | Codigo padr?o da conta de debito para contabilizar inventario |
| 19 | CD_CEN_CUS_PERDAS_CREDITO | VARCHAR2 | Y | Codigo padr?o do centro de custo de credito para contabilizar perdas |
| 20 | CD_CEN_CUS_PERDAS_DEBITO | VARCHAR2 | Y | Codigo padr?o do centro de custo de credito para contabilizar perdas |
| 21 | CD_CEN_CUS_INVENTARIO_CREDITO | VARCHAR2 | Y | Codigo padr?o do centro de custo de debito para contabilizar perdas |
| 22 | CD_CEN_CUS_INVENTARIO_DEBITO | VARCHAR2 | Y | Codigo padr?o do centro de custo de debito para contabilizar perdas |

---

## MVINTEGRA.CONSULTA_CIDADAO_PRONTUARIO
> Tabela para controlar as listagens de paciente do PEPCIDADAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PACIENTE | NUMBER | N |  |
| 2 | CD_CIDADE | NUMBER | Y |  |
| 3 | CD_DIS_SAN | NUMBER | Y |  |
| 4 | TP_SITUACAO | VARCHAR2 | N |  |
| 5 | NM_MNEMONICO | VARCHAR2 | Y |  |
| 6 | NM_PACIENTE | VARCHAR2 | N |  |
| 7 | TP_SEXO | VARCHAR2 | N |  |
| 8 | TP_ESTADO_CIVIL | VARCHAR2 | Y | Tipo de estado civil: S = Solteito; C = Casado; V = Viuvo; D = Desquitado; I = Divorciado; U = Un... |
| 9 | CD_CIDADE_TEM | NUMBER | Y |  |
| 10 | DS_ENDERECO | VARCHAR2 | Y |  |
| 11 | DT_CADASTRO | DATE | N |  |
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
| 26 | NM_PAI | VARCHAR2 | Y |  |
| 27 | CD_DIS_SAN_MUITOS | NUMBER | Y |  |
| 28 | DS_TRABALHO | VARCHAR2 | Y |  |
| 29 | NM_CONJUGE | VARCHAR2 | Y |  |
| 30 | TP_SANGUINEO | VARCHAR2 | Y |  |
| 31 | SN_DOADOR | VARCHAR2 | Y |  |
| 32 | DS_CHECAPAC | VARCHAR2 | Y |  |
| 33 | NM_USUARIO | VARCHAR2 | Y |  |
| 34 | CD_CNS | VARCHAR2 | Y |  |
| 35 | NR_CNS | VARCHAR2 | Y |  |
| 36 | NR_CPF | VARCHAR2 | Y |  |
| 37 | DS_COMPLEMENTO | VARCHAR2 | Y |  |
| 38 | NR_ENDERECO | NUMBER | Y |  |
| 39 | NR_RG_NASC | NUMBER | Y |  |
| 40 | NR_IDENTIDADE | VARCHAR2 | Y |  |
| 41 | DS_OM_IDENTIDADE | VARCHAR2 | Y |  |
| 42 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 43 | CD_PACIENTE_ANTIGO | VARCHAR2 | Y |  |
| 44 | DT_ULTIMA_ATUALIZACAO | DATE | Y |  |
| 45 | CD_NATURALIDADE | NUMBER | Y |  |
| 46 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 47 | DS_ATRIBUTO1 | VARCHAR2 | Y |  |
| 48 | SN_ALT_DADOS_ORA_APP | VARCHAR2 | N |  |
| 49 | EMAIL | VARCHAR2 | Y |  |
| 50 | NM_BAIRRO | VARCHAR2 | Y |  |
| 51 | DT_INATIVO | DATE | Y |  |
| 52 | DT_INTEGRA | DATE | Y |  |
| 53 | CD_SEQ_INTEGRA | NUMBER | Y |  |
| 54 | CD_PIS_PASEP | VARCHAR2 | Y | Numero do PIS/PASEP  do Paciente |
| 55 | TP_CERTIDAO | VARCHAR2 | Y | Tipo de certid?o usada no atendimento |
| 56 | NM_CARTORIO | VARCHAR2 | Y | Nome do cartorio responsavel pela emiss?o da certid?o |
| 57 | DS_LIVRO | VARCHAR2 | Y | Numero do livro onde se encontra a certid?o registrada |
| 58 | DS_FOLHA | VARCHAR2 | Y | Folha do livro onde se encontra a certid?o registrada |
| 59 | DT_EMISSAO_CERTIDAO | DATE | Y | Data de emiss?o da certid?o |
| 60 | DT_EMISSAO_IDENTIDADE | DATE | Y | Data de emiss?o da carteira de identidade |
| 61 | CD_UF_EMISSAO_IDENTIDADE | VARCHAR2 | Y | Unidade federativa que emitiu a identidade |
| 62 | DT_ENTRADA_ESTRANGEIRO | DATE | Y | Data de entrada no Pais, se a carteira for de estrangeiro |
| 63 | NR_CTPS | VARCHAR2 | Y | Numero da Carteira de Trabalho e Previdencia Social |
| 64 | NR_SERIE_CTPS | VARCHAR2 | Y | Serie da CTPS |
| 65 | DT_EMISSAO_CTPS | DATE | Y | Data de emiss?o da CTPS |
| 66 | CD_UF_EMISSAO_CTPS | VARCHAR2 | Y | Unidade Federativa que emitiu a CTPS |
| 67 | NR_TITULO_ELEITORAL | VARCHAR2 | Y | Numero do titulo eleitoral |
| 68 | NR_ZONA_TITULO_ELEITORAL | VARCHAR2 | Y | Zona do titulo Eleitoral |
| 69 | NR_SECAO_TITULO_ELEITORAL | VARCHAR2 | Y | Sec?o do Titulo Eleitoral |
| 70 | SN_RECEBE_CONTATO | VARCHAR2 | N | Campo que identificara se o paciente aceitara receber comunicados via e-mail. |
| 71 | CD_TIPO_LOGRADOURO | NUMBER | Y | Codigo do identificador do tipo de logradouro |
| 72 | SN_PERMITE_AGENDAR_PARA_SUS | VARCHAR2 | Y | Indica se o paciente pode ser agendado para SUS, se o ultimo atendimento tenha sido por Convenio ... |
| 73 | CD_CATEGORIA_OPINIAO | NUMBER | Y | Codigo da categoria do formador de opini?o associada ao paciente. |
| 74 | SN_VIP | VARCHAR2 | N | Indica se o paciente e VIP ou n?o. |
| 75 | CD_PAIS | NUMBER | Y | Codigo do Pais relacionado ao endereco do Paciente. |
| 76 | CD_PACIENTE_EXTERNO | VARCHAR2 | Y | Codigo do Paciente no Sistema Terceiro |
| 77 | CD_PACIENTE_INTEGRA | VARCHAR2 | Y |  |
| 78 | DT_INTEGRADO | DATE | N | Data que o Registro foi integrado. |
| 79 | CD_MAQUINA_SESSAO | VARCHAR2 | N | Maquina dona da Sess?o da consulta. |

---

## MVINTEGRA.CONTROLE_LIMPEZA_LOG
> tabela de controle para robo que exclui registro de tabelas de log

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONTROLE_LIMPEZA_LOG | NUMBER | N | codigo |
| 2 | DS_TABELA | VARCHAR2 | N | nome da tabela que ser?! limpa |
| 3 | DS_SCHEMA | VARCHAR2 | N | schema da tabela que sera limpa |
| 4 | DS_COLUNA_DATA | VARCHAR2 | N | coluna de data que servir?! de refencia para exclus?#o dos registros |
| 5 | DS_COLUNA_PK | VARCHAR2 | N | chave primaria da tabela que sera limpa |
| 6 | HR_EXECUCAO | DATE | N | hora do dia em que a exclus?#o ser?! realizada |
| 7 | HR_LIMITE_EXECUCAO | DATE | N | rotina de exclus?#o s?? executar?! at?? este horario |
| 8 | QT_MAXIMA_REGISTROS_EXCLUSAO | NUMBER | Y | numero maximo de registros que podem ser excluidos por execucao |
| 9 | QT_DIAS_PARA_EXCLUSAO | NUMBER | N | apenas registros em que dataatual-qtd_dias_para_exclusao>=data referencia |
| 10 | QT_REGITROS_BLOCO | NUMBER | N | numero de registros que ser?#o excluidos no mesmo bloco de transacao |
| 11 | DH_ULTIMA_EXECUCAO | DATE | Y | data da ultima execucao |
| 12 | TP_STATUS | VARCHAR2 | N | status da execu???#o: A: aguardando, F: em fila de execu???#o, E: executando |
| 13 | SN_ATIVO | VARCHAR2 | N | se n?#o estiver ativo, n?#o executa |

---

## MVINTEGRA.DATASUS_BASE
> Tabela de definic?o dos campos do pacote de dados

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | identificac?o da tabela de acordo com a tag XML |
| 2 | ID_PAI | NUMBER | N | identificac?o da tabela pai de acordo com o no pai do XML |
| 3 | DS_VERSAO | VARCHAR2 | Y | descric?o da vers?o |

---

## MVINTEGRA.DATASUS_LINHA
> Tabela que guarda informac?es dos dados a serem gerados o arquivo XML

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | identificac?o da tabela de acordo com a tag XML |
| 2 | ID_PAI | NUMBER | N | identificac?o da tabela pai de acordo com o no pai do XML |
| 3 | DS_SITUACAO_LINHA | VARCHAR2 | Y | campo de identificac?o do estado dos registros na tabela |
| 4 | CD_SOLICITACAO | VARCHAR2 | Y | codigo sequencial da solicitac?o |
| 5 | CD_CID | VARCHAR2 | Y | codigo internacional de doencas |
| 6 | DT_LAUDO | VARCHAR2 | Y | data do laudo |
| 7 | CD_LAUDO | VARCHAR2 | Y | numero do laudo |
| 8 | TP_SOLICITACAO | VARCHAR2 | Y | tipo da solicitac?o |
| 9 | CD_CARATER_INTERNACAO | VARCHAR2 | Y | carater da internac?o |
| 10 | CD_CLINICA | VARCHAR2 | Y | clinica medica |
| 11 | CD_PROCEDIMENTO_SOLICITADO | VARCHAR2 | Y | procedimento solicitado |
| 12 | CD_CNES | VARCHAR2 | Y | estabelecimento de saude |
| 13 | CD_CPF_MEDICO_SOLICITANTE | VARCHAR2 | Y | cpf do profissional solicitante |
| 14 | DT_SOLICITACAO | VARCHAR2 | Y | data solicitac?o |
| 15 | CD_PACIENTE | VARCHAR2 | Y | codigo sequencial do paciente |
| 16 | CD_CPF_PACIENTE | VARCHAR2 | Y | cpf do paciente |
| 17 | CD_CNS_PACIENTE | VARCHAR2 | Y | cns do paciente |
| 18 | NM_NOME_PACIENTE | VARCHAR2 | Y | nome do paciente |
| 19 | TP_SEXO_PACIENTE | VARCHAR2 | Y | sexo do paciente |
| 20 | DT_NASCIMENTO_PACIENTE | VARCHAR2 | Y | data de nascimento do paciente |
| 21 | NM_MAE_PACIENTE | VARCHAR2 | Y | nome da m?e do paciente |
| 22 | DS_LOGRADOURO_PACIENTE | VARCHAR2 | Y | logradouro do paciente |
| 23 | NR_ENDERECO_PACIENTE | VARCHAR2 | Y | numero do logradouro do paciente |
| 24 | DS_COMPLEMENTO | VARCHAR2 | Y | complemento do logradouro do paciente |
| 25 | DS_BAIRRO | VARCHAR2 | Y | bairro do paciente |
| 26 | CD_CEP_PACIENTE | VARCHAR2 | Y | codigo do cep do paciente de acordo com a tabela do IBGE |
| 27 | CD_MUNICIPIO_PACIENTE | VARCHAR2 | Y | codigo da cidade do paciente de acordo com a tabela do IBGE |
| 28 | DS_MOTIVO | VARCHAR2 | Y | motivo da solicitac?o |

---

## MVINTEGRA.DATASUS_METADADOS
> Tabela de Log de Alterac?o do METADADOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | identificac?o da tabela de acordo com a tag XML |
| 2 | ID_PAI | NUMBER | N | identificac?o da tabela pai de acordo com o no pai do XML |
| 3 | DS_LOG_ALTERACAO | VARCHAR2 | Y | descric?o log de alterac?o |

---

## MVINTEGRA.DATASUS_METADADOS_CAMPO
> Tabela de Definic?o dos campos do METADADOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | identificac?o da tabela de acordo com a tag XML |
| 2 | ID_PAI | NUMBER | N | identificac?o da tabela pai de acordo com o no pai do XML |
| 3 | NM_CAMPO | VARCHAR2 | Y | nome do campo |
| 4 | TP_CAMPO | VARCHAR2 | Y | tipo do campo |
| 5 | TM_CAMPO | VARCHAR2 | Y | tamanho do campo |
| 6 | DS_SUB_TIPO | VARCHAR2 | Y | descricao do sub-tipo |

---

## MVINTEGRA.DEPARA
> TABELA depara responsavel pela nova estrutura de DE-PARA da integrac?o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | TP_DEPARA | VARCHAR2 | N | Tipo Do Depara |
| 2 | CD_MULTI_EMPRESA | NUMBER | N | Codigo Multi Empresa |
| 3 | CD_DEPARA_MV | VARCHAR2 | N | Codigo Cadastrado No Mv |
| 4 | CD_DEPARA_INTEGRA | VARCHAR2 | N | Codigo De-Para Do Sistema Terceiro |
| 5 | CD_SISTEMA_INTEGRA | VARCHAR2 | N | Codigo Do Sistema Terceiro |
| 6 | SN_AUTOMATICO | VARCHAR2 | N |  |

---

## MVINTEGRA.ERRO_PROCESSO
> Esta tabela armazena os erros encontrados durante a verificac?o de erros de integrac?o, as verificac?es s?o armazanadas na tabela MVINTEGRA.VERIFICACAO_ERRO e os erros e seus processos ficam armazenados nesta tabela.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ERRO_PROCESSO | NUMBER | N | Primary key da tabela |
| 2 | CD_VERIFICACAO_ERRO | NUMBER | N | fk, a verificac?o de erro a qual este registro pertence |
| 3 | CD_PROCESSO_INTEGRACAO | VARCHAR2 | N | fk, o processo de integrac?o em que ocorreu o erro |
| 4 | DS_ERRO | VARCHAR2 | Y | A descric?o do erro encontrado, este erro e copiado das tabelas de integrac?o. Ex.: mvintegra.int... |

---

## MVINTEGRA.EXCECAO_EXAME_ASSINADO
> Tabela usada para guardar exames que não podem ser assinados

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MULTI_EMPRESA | NUMBER | Y | Código da empresa |
| 2 | CD_EXA_LAB | NUMBER | Y | Código do Exame que não poderá ter assinatura automática |

---

## MVINTEGRA.FILTRO_PROCESSO
> Tabela de cadastro de filtros dinamicos, guarda quais filtros podem ser efetuados para cada processo de integrac?o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FILTRO_PROCESSO | NUMBER | N | Primary key da tabela |
| 2 | CD_PROCESSO_INTEGRACAO | VARCHAR2 | N | O processo de integrac?o ao qual o filtro se aplica (fk) |
| 3 | NM_COLUNA | VARCHAR2 | N | O nome da coluna da tabela de integrac?o sob a qual o filtro deve ser feito |
| 4 | DS_COLUNA | VARCHAR2 | N | A descric?o da coluna, que e apresentada ao usuario. Ex.: Se nm_coluna = a cd_atendimento a descr... |

---

## MVINTEGRA.HL7_EVENTO
> Tabela de eventos HL7

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EVENTO | NUMBER | N | Codigo identificador do evento (sequencial) |
| 2 | DS_EVENTO | VARCHAR2 | N | Descric?o do evento HL7 |
| 3 | TP_MENSAGEM | VARCHAR2 | N | Tipo da mensagem HL7 |
| 4 | DS_IDENTIFICADOR | VARCHAR2 | Y | Identificador da mensagem no JIntegra |
| 5 | TP_MOVIMENTO | VARCHAR2 | Y | Tipo de movimento da mensagem no JIntegra |
| 6 | TP_ATENDIMENTO | VARCHAR2 | Y | Tipo do atendimento. Utilizado em mensagens ADT |
| 7 | TP_FLUXO | VARCHAR2 | Y | Coluna somente utilizada para entrada de uma mensagem via HL7. Na saida n?o e utilizada |
| 8 | CD_SISTEMA_ORIGEM | VARCHAR2 | Y | Coluna que armazena o codigo do sistema de origem |

---

## MVINTEGRA.HL7_EVENTO_SEGMENTO
> Tabela de relacionamento entre os eventos e segmentos HL7

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EVENTO | NUMBER | N | Codigo identificador do evento |
| 2 | CD_SEGMENTO | NUMBER | N | Codigo identificador do segmento |
| 3 | NR_ORDEM | NUMBER | Y | Ordem de exibic?o do segmento para o evento |
| 4 | SN_VALIDA_REPETICAO | VARCHAR2 | Y | Coluna que informa se sera validado ou n?o a repetic?o de um seguimento que n?o foi configurado c... |

---

## MVINTEGRA.HL7_EVENTO_VERSAO
> Tabela com relacionamento entre as vers?es e terceiros que utilizam

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_VERSAO | NUMBER | N | Codigo identificador da vers?o |
| 2 | CD_EVENTO | NUMBER | N | Codigo identificador do evento |

---

## MVINTEGRA.HL7_MAPM_SEGM_IMV_CNFG_ENT_XML
> Tabela com a configurac?o do elemento HL7 com um elemento do JIntegra

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IMV_CONFIGURACAO_ELEMEN_XML | NUMBER | N | Codigo identificador do elemento no JIntegra |
| 2 | CD_MAPEAMENTO | NUMBER | N | Codigo identificador do elemento no HL7 |
| 3 | DS_QUERY_PARSER_ENTRADA | VARCHAR2 | Y | Coluna para personalizar uma query onde pode ser realizada uma convers?o no valor enviado no HL7 ... |

---

## MVINTEGRA.HL7_SEGMENTO
> Tabela de segmentos HL7

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SEGMENTO | NUMBER | N | Codigo identificador do segmento (sequencial) |
| 2 | TP_SEGMENTO | VARCHAR2 | N | Tipo do segmento HL7 |
| 3 | DS_SEGMENTO | VARCHAR2 | N | Descric?o do segmento HL7 |
| 4 | DS_SEPARADOR | VARCHAR2 | N | Separador do segmento HL7 |
| 5 | SN_OBRIGATORIO | VARCHAR2 | N | Segmento obrigatorio? |
| 6 | CD_SEGMENTO_PAI | NUMBER | Y | Codigo do segmento pai (auto-relacionamento) |
| 7 | DS_CHAVE | VARCHAR2 | Y | Chave do segmento |
| 8 | SN_LISTA | VARCHAR2 | Y | Segmento e uma lista? |
| 9 | DS_SELECT_LISTA | VARCHAR2 | Y | Select para recuperar segmentos do tipo lista |

---

## MVINTEGRA.HL7_SEGMENTO_MAPEAMENTO
> Tabela com o mapeamento dos elementos de um determinado segmento HL7

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MAPEAMENTO | NUMBER | N | Codigo identificador do mapeamento (seguencial) |
| 2 | CD_SEGMENTO | NUMBER | N | Codigo do segmento |
| 3 | DS_MAPEAMENTO | VARCHAR2 | N | Descric?o do mapeamento |
| 4 | DS_TABELA | VARCHAR2 | Y | Descric?o da tabela fonte da informac?o |
| 5 | DS_CAMPO | VARCHAR2 | Y | Descric?o do campo fonte da informac?o |
| 6 | DS_SEPARADOR | VARCHAR2 | Y | Separador de elementos |
| 7 | VL_PADRAO | VARCHAR2 | Y | Valor padr?o do elemento |
| 8 | DS_MASCARA | VARCHAR2 | Y | Mascara do elemento |
| 9 | CD_MAPEAMENTO_PAI | NUMBER | Y | Codigo do mapeamento pai (auto-relacionamento) |
| 10 | DS_CHAVE | VARCHAR2 | Y | Descric?o da chave de fonte da informac?o |
| 11 | NR_ORDEM | NUMBER | Y | Ordem do elemento |
| 12 | SN_EVENTO | VARCHAR2 | N | Informac?o referente ao evento? |
| 13 | SN_TERCEIRO | VARCHAR2 | N | Informac?o referente ao sistema destino? |
| 14 | DS_SELECT | VARCHAR2 | Y | Select para informac?es dinamicas |
| 15 | SN_ID_MENSAGEM | VARCHAR2 | N | Informac?o referente a mensagem do conector? |
| 16 | DS_QUERY_PARSER_ENTRADA | VARCHAR2 | Y | Esta conluna contem a query que sera usada para transformar o valor do campo HL7 no padr?o MV |
| 17 | SN_CLOB | VARCHAR2 | Y | Informa se o retorno da configurac?o do mapeamento no HL7 e do tipo CLOB |

---

## MVINTEGRA.HL7_SEGM_IMV_CNFG_ENTID_XML
> Tabela com a configurac?o do segmento HL7 com entidade/elemento do JIntegra

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_HL7_SEGM_IMV_CNFG_ENTID_XML | NUMBER | N | Codigo identificador do registro (sequencial) |
| 2 | CD_IMV_CONFIGURACAO_ENTID_XML | NUMBER | Y | Codigo da entidade no JIntegra |
| 3 | CD_IMV_CONFIGURACAO_ELEMEN_XML | NUMBER | Y | Codigo do elemento no JIntegra |
| 4 | CD_SEGMENTO | NUMBER | N | Codigo do segmento no HL7 |

---

## MVINTEGRA.HL7_VALOR_MAPEAMENTO
> Tabela com a configurac?o de valores para um determinado mapeamento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_VALOR_MAPEAMENTO | NUMBER | N | Codigo identificador do registro (sequencial) |
| 2 | CD_MAPEAMENTO | NUMBER | N | Codigo do mapeamento relacionado |
| 3 | DS_VALOR_MAPEAMENTO | VARCHAR2 | Y | Descric?o do mapeamento do valor |
| 4 | VL_MAPEAMENTO | VARCHAR2 | Y | Valor de mapeamento no HL7 |
| 5 | VL_MV | VARCHAR2 | Y | Valor referente no MV |
| 6 | TP_FLUXO | VARCHAR2 | Y | Define o fluxo para poder usar mais de um de-para com o mesmo TP_MOVIMENTO. |

---

## MVINTEGRA.HL7_VERSAO
> Tabela com as vers?es do HL7

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_VERSAO | NUMBER | N | Codigo identificador da vers?o (seguencial) |
| 2 | DS_VERSAO | VARCHAR2 | N | Descric?o da vers?o |

---

## MVINTEGRA.HL7_VERSAO_TERCEIRO
> Tabela com relacionamento entre as vers?es e eventos permitidos por um sistema terceiro

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EVENTO | NUMBER | N | Codigo identificador do evento |
| 2 | CD_VERSAO | NUMBER | N | Codigo identificador da versao |
| 3 | CD_TERCEIRO | VARCHAR2 | N | Codigo identificador do sistema terceiro |

---

## MVINTEGRA.IMV_AGENDAMENTO
> Tabela de integrac?o usada para tratar mensagens de agendamentos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IMV_AGENDAMENTO | NUMBER | N | Codigo (ID) de identificac?o do registro |
| 2 | TP_FLUXO | VARCHAR2 | N | Identificador do fluxo da informac?o (S - Saida, E - Entrada) |
| 3 | TP_STATUS | VARCHAR2 | N | Identificac?o da situac?o atual do registro (A - Aguardando, T - Transmitido e E - Erro) |
| 4 | DS_ERRO | VARCHAR2 | Y | Descric?o do erro quando ocorrer |
| 5 | DT_GERADO | DATE | N | Data do registro gerado na integrac?o |
| 6 | DT_PROCESSADO | DATE | Y | Data em que o registro foi integrado |
| 7 | TP_MOVIMENTO | VARCHAR2 | N | Tipo do movimento (I - Inclus?o, A - Alterac?o e E - Exclus?o) |
| 8 | TP_REGISTRO | VARCHAR2 | N | Tipo do registro da integrac?o (001 - Registro referente a pessoa) |
| 9 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da multi-empresa |
| 10 | CD_MULTI_EMPRESA_INTEGRA | VARCHAR2 | Y | Codigo da multi-empresa (DE-PARA) |
| 11 | CD_REGISTRO_PRINCIPAL | NUMBER | Y | Codigo do registro principal desta transac?o |
| 12 | CD_REGISTRO_PAI | NUMBER | Y | Codigo do registro pai deste registro |
| 13 | CD_AGENDA | NUMBER | Y | Codigo da agenda |
| 14 | CD_AGENDA_INTEGRA | VARCHAR2 | Y | Codigo da agenda (DE-PARA) |
| 15 | DT_AGENDA | DATE | Y | Data da agenda |
| 16 | TP_AGENDA | VARCHAR2 | Y | Tipo de Agenda. A-Ambulatorial, I-Imagem, L-Laboratotio |
| 17 | TP_ACAO_AGENDA | VARCHAR2 | Y | Ac?o a ser executada no agendamento |
| 18 | CD_UNIDADE_REGIONAL | VARCHAR2 | Y | Codigo de identificac?o da unidade regional |
| 19 | CD_UNIDADE_REGIONAL_INTEGRA | VARCHAR2 | Y | Codigo de identificac?o da unidade regional (DE-PARA) |
| 20 | DS_UNIDADE_REGIONAL | VARCHAR2 | Y | descric?o da unidade regional |
| 21 | HR_INICIO_AGENDA | DATE | Y | Hora inicial da agenda |
| 22 | HR_FINAL_AGENDA | DATE | Y | hora final da agenda |
| 23 | NR_TEMPO_MEDIO_CONSULTA | NUMBER | Y | Tempo medio de cada consulta |
| 24 | DT_LIBERADO_AGENDAMENTO | DATE | Y | Data em que a agenda sera liberada para agendamentos |
| 25 | QT_CONSULTA_PLANTAO | NUMBER | Y | Quantidade de consultas a ser realizada no plant?o |
| 26 | QT_ENCAIXE | NUMBER | Y | Quantidade de encaixes permitido no plant?o |
| 27 | TP_VISIBILIDADE_AGENDA | VARCHAR2 | Y | Tipo de visibilidade da agenda P-Publica ou V-Privada |
| 28 | TP_HORARIO_AGENDA | VARCHAR2 | Y | Indica o tipo do horario da agenda. Se F-Fixo ou D-Dinamico |
| 29 | SN_AGENDA_ATENDE_SUS | VARCHAR2 | Y | Informe se a agenda atende ao SUS (S), n?o atende (N) ou atende a ambos (A) |
| 30 | SN_TIPO_AGENDAMENTO_LIVRE | VARCHAR2 | Y | Identifica se o tipo de agendamento sera livre |
| 31 | SN_SERVICO_LIVRE | VARCHAR2 | Y | Indica se o servico do agendamento sera livre |
| 32 | SN_FALTA_MEDICA | VARCHAR2 | Y | Indica se houve falta medica no plant?o |
| 33 | SN_BLOQUEADO | VARCHAR2 | Y | Indica se o item esta bloqueado |
| 34 | SN_ATIVO | VARCHAR2 | Y | Indica se o registro esta ativo (S) ou inativo (N) |
| 35 | DS_USUARIO | VARCHAR2 | Y | Usuario responsavel pelo registro. |
| 36 | CD_PRESTADOR | NUMBER | Y | Codigo do prestador da agenda |
| 37 | CD_PRESTADOR_INTEGRA | VARCHAR2 | Y | Codigo do prestador da agenda (de-para) |
| 38 | NM_PRESTADOR | VARCHAR2 | Y | Nome do prestador |
| 39 | DS_CODIGO_CONSELHO | VARCHAR2 | Y | Numero de registro do conselho de classe |
| 40 | TP_CODIGO_CONSELHO | VARCHAR2 | Y | Tipo do conselho do prestador |
| 41 | DS_ESTADO_CONSELHO | VARCHAR2 | Y | Unidade federativa responsavel pela emiss?o do conselho |
| 42 | CD_ORIGEM | NUMBER | Y | Codigo da origem do atendiemnto |
| 43 | CD_ORIGEM_INTEGRA | VARCHAR2 | Y | Codigo da origem do atendiemnto (DE-PARA) |
| 44 | DS_ORIGEM | VARCHAR2 | Y | Descric?o da Origem |
| 45 | CD_RECURSO | NUMBER | Y | Codigo do recurso |
| 46 | CD_RECURSO_INTEGRA | VARCHAR2 | Y | Codigo do recurso (DE-PARA) |
| 47 | DS_RECURSO | VARCHAR2 | Y | Nome do recurso |
| 48 | DS_CONSULTORIO | VARCHAR2 | Y | Descric?o do consultororio |
| 49 | TP_PRESTACAO_AGENDA | VARCHAR2 | Y | Tipo de prestac?o de servico da agenda. P-Produc?o, C-Contrato |
| 50 | CD_SETOR | NUMBER | Y | Codigo do setor |
| 51 | CD_SETOR_INTEGRA | VARCHAR2 | Y | Codigo do setor (DE-PARA) |
| 52 | DS_SETOR | VARCHAR2 | Y | Descric?o do setor |
| 53 | CD_SERVICO | NUMBER | Y | Codigo do servico |
| 54 | CD_SERVICO_INTEGRA | VARCHAR2 | Y |  |
| 55 | DS_SERVICO | VARCHAR2 | Y | Descric?o do servico |
| 56 | CD_ESPECIALIDADE | NUMBER | Y | Codigo de especialidade |
| 57 | CD_ESPECIALIDADE_INTEGRA | VARCHAR2 | Y | Codigo de especialidade (de-para) |
| 58 | DS_ESPECIALIDADE | VARCHAR2 | Y | Descric?o da especialidade |
| 59 | CD_TIPO_PLANTAO | NUMBER | Y | Codigo do tipo de plant?o |
| 60 | CD_TIPO_PLANTAO_INTEGRA | VARCHAR2 | Y | Codigo do tipo de plant?o (de-para) |
| 61 | DS_TIPO_PLANTAO | VARCHAR2 | Y | Codigo do servico (DE-PARA) |
| 62 | CD_CONVENIO_AGENDA | NUMBER | Y | Codigo do convenio |
| 63 | CD_CONVENIO_AGENDA_INTEGRA | VARCHAR2 | Y | Codigo do convenio (DE-PARA) |
| 64 | DS_CONVENIO_AGENDA | VARCHAR2 | Y | Nome do convenio permitido na agenda |
| 65 | CD_ITEM_AGENDA | VARCHAR2 | Y | Codigo do item permitido na agenda |
| 66 | CD_ITEM_AGENDA_INTEGRA | VARCHAR2 | Y | Codigo do item permitido na agenda (DE-PARA) |
| 67 | DS_ITEM_AGENDA | VARCHAR2 | Y |  |
| 68 | CD_SUS_ITEM_AGENDA | VARCHAR2 | Y | Codigo do procedimento no sistema SUS |
| 69 | DS_OBSERVACAO | VARCHAR2 | Y | Observac?es |
| 70 | CD_AGENDAMENTO | NUMBER | Y | Codigo do agendamento realizado |
| 71 | CD_AGENDAMENTO_INTEGRA | VARCHAR2 | Y |  |
| 72 | CD_AGENDAMENTO_ORIGEM | VARCHAR2 | Y | Codido de identificac?o do agendamento aterior (usado para transferencias) |
| 73 | CD_AGENDAMENTO_ORIGEM_INTEGRA | VARCHAR2 | Y | Codido de identificac?o do agendamento aterior (usado para transferencias) -DE-PARA |
| 74 | HR_AGENDAMENTO | DATE | Y | Hora do agendamento |
| 75 | SN_ENCAIXE | VARCHAR2 | Y | Identifica se o agendamento trata-se de um encaixa |
| 76 | NR_CNS | VARCHAR2 | Y |  |
| 77 | CD_PACIENTE | NUMBER | Y | Codigo do Paciente Integrado |
| 78 | CD_PACIENTE_INTEGRA | VARCHAR2 | Y | Codigo do Paciente Integrado (DE-PARA) |
| 79 | NM_PACIENTE | VARCHAR2 | Y | Nome do Paciente Agendado |
| 80 | TP_SEXO | VARCHAR2 | Y | Sexo do paciente |
| 81 | DT_NASCIMENTO | DATE | Y | Data de Nascimento |
| 82 | NR_IDENTIDADE | VARCHAR2 | Y | Numero da carteira de identidade |
| 83 | NR_CPF | VARCHAR2 | Y | Numero do CPF |
| 84 | NM_MAE | VARCHAR2 | Y | Nome da m?e |
| 85 | NM_PAI | VARCHAR2 | Y | Nome do pai |
| 86 | DS_ENDERECO | VARCHAR2 | Y | Endereco do paciente |
| 87 | NR_ENDERECO_NUMERO | VARCHAR2 | Y | Numero do endereco do paciente |
| 88 | DS_BAIRRO | VARCHAR2 | Y | Nome do Bairro |
| 89 | DS_CIDADE | VARCHAR2 | Y | Nome da Cidade |
| 90 | DS_ESTADO | VARCHAR2 | Y | Nome do Estado |
| 91 | NR_CEP | VARCHAR2 | Y | CEP do endereco |
| 92 | NR_DDD_TELEFONE | VARCHAR2 | Y | DDD do telefone residencial |
| 93 | NR_TELEFONE | VARCHAR2 | Y | Telefone residencial |
| 94 | NR_DDD_CELULAR | VARCHAR2 | Y | DDD do telefone celular |
| 95 | NR_CELULAR | VARCHAR2 | Y | Telefone celular |
| 96 | NR_DDD_TELEFONE_COMERCIAL | VARCHAR2 | Y | DDD do telefone comercial |
| 97 | NR_TELEFONE_COMERCIAL | VARCHAR2 | Y | Numero do telefone comercial |
| 98 | NR_RAMAL_FONE_COMERCIAL | VARCHAR2 | Y | Numero do ramal |
| 99 | DS_EMAIL | VARCHAR2 | Y | Endereco de e-mail |
| 100 | NM_CONTATO | VARCHAR2 | Y | Nome do contato |
| 101 | NR_DDD_FONE_CONTATO | VARCHAR2 | Y | DDD do telefone do contato |
| 102 | NR_FONE_CONTATO | VARCHAR2 | Y | Numero do telefone do contato |
| 103 | CD_UNIDADE_SOLICITANTE | VARCHAR2 | Y | Codigo da unidade solicitante do agendamento |
| 104 | CD_UNIDADE_SOLICITANTE_INTEGRA | VARCHAR2 | Y | Codigo da unidade solicitante do agendamento (de-para) |
| 105 | CD_CNES_UNIDADE_SOLICITANTE | VARCHAR2 | Y | Codigo CNES da unidade solicitante |
| 106 | DS_UNIDADE_SOLICITANTE | VARCHAR2 | Y | Descric?o da unidade solicitante |
| 107 | NM_USUARIO_SOLICITANTE | VARCHAR2 | Y | Nome do usuario que solicitou o agendamento |
| 108 | CD_IMV_LOG_REQUISICAO | NUMBER | Y |  |
| 109 | CD_SISTEMA_ORIGEM | VARCHAR2 | Y |  |
| 110 | SN_ALTA | VARCHAR2 | Y | Informa se o Atendimento ja teve alta |
| 111 | CD_ATENDIMENTO | VARCHAR2 | Y | Codigo do atendimento |
| 112 | TP_RECURSO | VARCHAR2 | Y | Tipo do recurso |
| 113 | DS_SIGLA | VARCHAR2 | Y | Sigla |
| 114 | CD_ESCALA | NUMBER | Y | Classificac?o do Tipo de Escala: Imagem, laboratorio ou Ambulatorio |
| 115 | CD_ESCALA_INTEGRA | VARCHAR2 | Y |  |
| 116 | TP_ESCALA | VARCHAR2 | Y |  |
| 117 | TP_DIA_SEMANA | NUMBER | Y | Tipo de Dia da semana para gerac?o da Agenda (Domingo, Segunda-feira, Terca-feira, Quarta-feira, ... |
| 118 | QT_ATENDIMENTO | NUMBER | Y | Quantidade de Atendimentos maxima para a Escala |
| 119 | SN_ATENDE_FERIADO | VARCHAR2 | Y | Informa ao Sistema se a Escala gera ou n?o plant?o quando o dia for Feriado |
| 120 | CD_TIPO_MARCACAO | NUMBER | Y | Codigo do Tipo de Atendimento (Marcac?o) da Escala |
| 121 | CD_TIPO_MARCACAO_INTEGRA | VARCHAR2 | Y |  |
| 122 | DS_TIPO_MARCACAO | VARCHAR2 | Y | Descric?o do Tipo de Atendimento (Marcac?o) da Escala |
| 123 | DT_REGERACAO | DATE | Y | Data em que foi feita a gerac?o da agenda |
| 124 | NM_USUARIO_REGERACAO | VARCHAR2 | Y | Usuario que realizou a ultima regerac?o da agenda |
| 125 | VL_ALTURA | NUMBER | Y | Altura do Paciente (m) |
| 126 | QT_PESO | NUMBER | Y | Peso do Paciente (Kg) |
| 127 | SN_ATENDIDO | VARCHAR2 | Y | Indica a situac?o do Paciente: atendido - Sim / N?o |
| 128 | CD_PLANO_AGENDA | NUMBER | Y | Codigo do Plano de Convenio do paciente |
| 129 | CD_PLANO_AGENDA_INTEGRA | VARCHAR2 | Y | Codigo do Plano de Convenio do paciente de para |
| 130 | DS_PLANO_AGENDA | VARCHAR2 | Y | Descric?o do Plano de Convenio do paciente |
| 131 | TP_SITUACAO_AGENDAMENTO | VARCHAR2 | Y | Situac?o que se encontra o Horario / Paciente: (M) Marcado / (A) Aguardando /  (E) Atendido / (C)... |
| 132 | CD_ANESTESISTA | NUMBER | Y | Codigo do Anestesista solicitado para o procedimento |
| 133 | CD_ANESTESISTA_INTEGRA | VARCHAR2 | Y | Codigo do Anestesista solicitado para o procedimento de para |
| 134 | SN_SESSAO | VARCHAR2 | Y | Indica se o agendamento e ou n?o uma Sess?o |
| 135 | DS_MODULO | VARCHAR2 | Y | Informa qual o modulo a mensagem pertente |
| 136 | CD_ATENDIMENTO_INTEGRA | VARCHAR2 | Y | Codigo de-para do atendimento |
| 137 | CD_USUARIO | VARCHAR2 | Y | Codigo do usuario que realizou o agendamento |
| 138 | CD_AVISO_CIRURGIA | NUMBER | Y | Codigo do aviso de cirurgia |
| 139 | DT_AGENDAMENTO | DATE | Y | Data do agendamento |
| 140 | CD_LEITO | NUMBER | Y | Codigo do leito |
| 141 | CD_CIRURGIA | NUMBER | Y | Codigo da cirurgia |
| 142 | CD_PRO_FAT | VARCHAR2 | Y | Codigo pro_fat da cirurgia agendada |
| 143 | CD_PRO_FAT_HIERARQUIZADO | VARCHAR2 | Y | Codigo pro_fat_hierarquizado da cirurgia agendada |
| 144 | TP_ATENDIMENTO | VARCHAR2 | Y | Coluna que armazena o tipo de atendimento |
| 145 | DT_AVISO_CIRURGIA | DATE | Y | Data do aviso de cirurgia |
| 146 | CD_AVISO_CIRURGIA_INTEGRA | VARCHAR2 | Y | Codigo de-para do aviso de cirurgia |
| 147 | CD_LEITO_INTEGRA | VARCHAR2 | Y | Codigo de-para do leito |
| 148 | DS_CIRURGIA | VARCHAR2 | Y | Descric?o da cirurgia |
| 149 | DT_CIRURGIA | DATE | Y | Data cirurgia agendamento |

---

## MVINTEGRA.IMV_AMOSTRA
> Tabela de integrac?o de amostras

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IMV_AMOSTRA | NUMBER | N | Codigo sequencial do registro na integrac?o |
| 2 | TP_FLUXO | VARCHAR2 | N | Tipo de fluxo do registro (E - Entrada / S - Saida) |
| 3 | TP_STATUS | VARCHAR2 | N | Status do registro (A - Aguardando / E - Erro / T - Transmitido / P - Em processamento) |
| 4 | DS_ERRO | VARCHAR2 | Y | Descric?o da mensagem de erro ocorrido no processamento da mensagem |
| 5 | DT_GERADO | DATE | N | Data de gerac?o do registro na tabela |
| 6 | DT_PROCESSADO | DATE | Y | Data de processamento do registro |
| 7 | TP_MOVIMENTO | VARCHAR2 | N | Tipo do movimento do registro (I - Inclus?o / A - Alterac?o / E - Exclus?o) |
| 8 | TP_REGISTRO | VARCHAR2 | N | Identificac?o do tipo de registro existente: 001 ? Dados da amostra  / 002 ? Dados relacionado ao... |
| 9 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da multi-empresa |
| 10 | CD_MULTI_EMPRESA_INTEGRA | VARCHAR2 | Y | Codigo de-para da multi-empresa |
| 11 | CD_REGISTRO_PRINCIPAL | NUMBER | Y | Codigo identificador do registro principal da mensagem |
| 12 | CD_REGISTRO_PAI | NUMBER | Y | Codigo identificador do registro pai da mensagem |
| 13 | CD_CONVENIO | NUMBER | Y | Codigo do convenio |
| 14 | CD_CONVENIO_INTEGRA | VARCHAR2 | Y | Codigo de-para do convenio |
| 15 | NM_CONVENIO | VARCHAR2 | Y | Descric?o do convenio |
| 16 | CD_ATENDIMENTO | NUMBER | Y | Codigo do atendimento |
| 17 | CD_PACIENTE | NUMBER | Y | Codigo do paciente |
| 18 | NM_PACIENTE | VARCHAR2 | Y | Nome do paciente |
| 19 | DT_NASCIMENTO | DATE | Y | Data de nascimento do paciente |
| 20 | TP_SEXO | VARCHAR2 | Y | Sexo do paciente |
| 21 | CD_PEDIDO | NUMBER | Y | Codigo do pedido de exame |
| 22 | CD_PEDIDO_INTEGRA | VARCHAR2 | Y | Codigo de-para do pedido de exame |
| 23 | DT_PEDIDO | DATE | Y | Data do pedido |
| 24 | CD_SETOR | NUMBER | Y | Codigo do setor |
| 25 | NM_SETOR | VARCHAR2 | Y | Descric?o do setor |
| 26 | CD_AMOSTRA | NUMBER | Y | Codigo da amostra |
| 27 | CD_AMOSTRA_PAI | NUMBER | Y | Codigo da amostra pai |
| 28 | TP_SITUACAO | VARCHAR2 | Y | Situac?o da amostra |
| 29 | DT_COLETA | DATE | Y | Data da coleta |
| 30 | CD_USUARIO_COLETA | VARCHAR2 | Y | Usuario responsavel pela coleta |
| 31 | CD_MATERIAL | NUMBER | Y | Codigo do material |
| 32 | DS_MATERIAL | VARCHAR2 | Y | Descric?o do material |
| 33 | CD_TUBO_COLETA | NUMBER | Y | Codigo do tubo de coleta |
| 34 | DS_TUBO_COLETA | VARCHAR2 | Y | Descric?o do tubo de coleta |
| 35 | SN_CONFIRMADA | VARCHAR2 | Y | Coleta confirmada |
| 36 | CD_EXAME | NUMBER | Y | Codigo do exame |
| 37 | CD_EXAME_INTEGRA | VARCHAR2 | Y | Codigo de-para do exame |
| 38 | NM_EXAME | VARCHAR2 | Y | Nome do exame |
| 39 | NM_MNEMONICO | VARCHAR2 | Y | Mnemonico do exame |
| 40 | CD_BANCADA | NUMBER | Y | Codigo da bancada |
| 41 | DS_BANCADA | VARCHAR2 | Y | Descric?o da bancada |
| 42 | CD_AMOSTRA_INTEGRA | VARCHAR2 | Y |  |
| 43 | CD_AMOSTRA_PAI_INTEGRA | VARCHAR2 | Y |  |
| 44 | CD_IMV_LOG_REQUISICAO | NUMBER | Y |  |
| 45 | HR_COLETA | DATE | Y |  |
| 46 | DS_ETIQUETA | VARCHAR2 | Y |  |
| 47 | CD_ITEM_PEDIDO | VARCHAR2 | Y |  |
| 48 | CD_SISTEMA_ORIGEM | VARCHAR2 | Y |  |
| 49 | CD_ITEM_PRESCRICAO | NUMBER | Y |  |
| 50 | CD_AMOSTRA_RECOLETA | VARCHAR2 | Y |  |
| 51 | DS_SETOR_HL7 | VARCHAR2 | Y |  |
| 52 | NM_PRESTADOR_HL7 | VARCHAR2 | Y |  |
| 53 | NR_TEMPO | NUMBER | Y |  |
| 54 | CD_CID | VARCHAR2 | Y |  |
| 55 | DT_COLETA_SETOR | DATE | Y |  |
| 56 | CD_USUARIO_COLETA_SETOR | VARCHAR2 | Y |  |
| 57 | NR_VOLUME | NUMBER | Y |  |
| 58 | CD_PRESTADOR | NUMBER | Y |  |
| 59 | NM_PRESTADOR | VARCHAR2 | Y |  |
| 60 | CD_LEITO | NUMBER | Y |  |
| 61 | DS_LEITO | VARCHAR2 | Y |  |
| 62 | DS_RESUMO | VARCHAR2 | Y |  |
| 63 | TP_SOLICITACAO | VARCHAR2 | Y |  |
| 64 | NR_ORDEM | NUMBER | Y |  |
| 65 | CD_SETOR_EXEC | NUMBER | Y |  |
| 66 | NM_SETOR_EXEC | VARCHAR2 | Y |  |

---

## MVINTEGRA.IMV_ATENDIMENTO
> Tabela para controlar as listagens de paciente do PEPCIDADAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IMV_ATENDIMENTO | NUMBER | N | Codigo sequencial da integrac?o |
| 2 | TP_FLUXO | VARCHAR2 | N | Identificador do fluxo da informac?o (S - Saida, E - Entrada) |
| 3 | TP_STATUS | VARCHAR2 | N | Identificac?o da situac?o atual do registro (A - Aguardando, T - Transmitido e E - Erro) |
| 4 | DS_ERRO | VARCHAR2 | Y | Descric?o do erro quando ocorrer |
| 5 | DT_GERADO | DATE | N | Data do registro gerado na integrac?o |
| 6 | DT_PROCESSADO | DATE | Y | Data em que o registro foi integrado |
| 7 | TP_MOVIMENTO | VARCHAR2 | N | Tipo do movimento (I - Inclus?o, A - Alterac?o e E - Exclus?o) |
| 8 | TP_REGISTRO | VARCHAR2 | N | Tipo do registro da integrac?o (001 - Registro referente a pessoa) |
| 9 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da multi-empresa |
| 10 | CD_MULTI_EMPRESA_INTEGRA | VARCHAR2 | Y | Codigo da multi-empresa (DE-PARA) |
| 11 | CD_REGISTRO_PRINCIPAL | NUMBER | Y | Codigo do registro principal desta transac?o |
| 12 | CD_REGISTRO_PAI | NUMBER | Y | Cosigo do registro pai deste registro |
| 13 | CD_ATENDIMENTO | NUMBER | Y | Codigo do atendimento |
| 14 | CD_ATENDIMENTO_INTEGRA | VARCHAR2 | Y | Codigo do atendimento (DE-PARA) |
| 15 | DT_PREVISAO_INTERNACAO | DATE | Y | Data de previs?o da internac?o |
| 16 | DT_ATENDIMENTO | DATE | Y | Data que foi realizado o atendimento |
| 17 | HR_ATENDIMENTO | DATE | Y | Hora em que foi realizado o atendimento |
| 18 | TP_ATENDIMENTO | VARCHAR2 | Y | Tipo do atendimento |
| 19 | TP_ATENDIMENTO_INTEGRA | VARCHAR2 | Y | Tipo do atendimento (DE-PARA) |
| 20 | CD_ORIGEM | NUMBER | Y | Codigo da origem do atendimento |
| 21 | CD_ORIGEM_INTEGRA | VARCHAR2 | Y | Codigo da origem do atendimento (DE-PARA) |
| 22 | DS_ORIGEM | VARCHAR2 | Y | Descric?o da Origem do atendimento |
| 23 | CD_PRESTADOR | NUMBER | Y | Codigo do prestador |
| 24 | CD_PRESTADOR_INTEGRA | VARCHAR2 | Y | Codigo do prestador (DE-PARA) |
| 25 | NM_PRESTADOR | VARCHAR2 | Y | Nome do prestador |
| 26 | NR_CPF_PRESTADOR | VARCHAR2 | Y | Cpf do prestador |
| 27 | CD_CONVENIO | NUMBER | Y | Codigo do convenio |
| 28 | CD_CONVENIO_INTEGRA | VARCHAR2 | Y | Codigo do convenio (DE-PARA) |
| 29 | TP_CONVENIO | VARCHAR2 | Y | Tipo do convenio |
| 30 | TP_CONVENIO_INTEGRA | VARCHAR2 | Y | Tipo do convenio (DE-PARA) |
| 31 | NM_CONVENIO | VARCHAR2 | Y | Nome do convenio |
| 32 | CD_PLANO | NUMBER | Y | Codigo do plano de saude |
| 33 | CD_PLANO_INTEGRA | VARCHAR2 | Y | Codigo do plano de saude (DE-PARA) |
| 34 | DS_PLANO | VARCHAR2 | Y | Descric?o do plando de saude |
| 35 | CD_SUB_PLANO | VARCHAR2 | Y | Codigo do sub-Plano de saude |
| 36 | CD_SUB_PLANO_INTEGRA | VARCHAR2 | Y | Codigo do sub-Plano de saude (DE-PARA) |
| 37 | DS_SUB_PLANO | VARCHAR2 | Y | Descric?o do Sub-Plano de saude |
| 38 | CD_LOCAL_PROCEDENCIA | NUMBER | Y | Codigo do logal de procedencia |
| 39 | CD_LOCAL_PROCEDENCIA_INTEGRA | VARCHAR2 | Y | Codigo do logal de procedencia (DE-PARA) |
| 40 | DS_LOCAL_PROCEDENCIA | VARCHAR2 | Y | Descric?o do local de procedencia |
| 41 | CD_DESTINO_ATENDIMENTO | NUMBER | Y | Codigo do destino do atendimento |
| 42 | CD_DESTINO_ATENDIMENTO_INTEGRA | VARCHAR2 | Y | Codigo do destino do atendimento (DE-PARA) |
| 43 | DS_DESTINO_ATENDIMENTO | VARCHAR2 | Y | Descric?o do destino do atendimento |
| 44 | SN_TEM_ACOMPANHANTE | VARCHAR2 | Y | Informa se tem acompanhante |
| 45 | CD_PROC_ATENDIMENTO | NUMBER | Y | Codigo do procedimento |
| 46 | CD_PROC_ATENDIMENTO_INTEGRA | VARCHAR2 | Y | Codigo do procedimento (DE-PARA) |
| 47 | DS_PROC_ATENDIMENTO | VARCHAR2 | Y | Descric?o do procedimento |
| 48 | CD_CID_ATENDIMENTO | VARCHAR2 | Y | Codigo do CID do atendimento |
| 49 | CD_SETOR | NUMBER | Y | Codigo do setor do atendimento |
| 50 | CD_SETOR_INTEGRA | VARCHAR2 | Y | Codigo do setor do atendimento (DE-PARA) |
| 51 | DS_SETOR | VARCHAR2 | Y | Descric?o do setor do atendimento |
| 52 | TP_INTERNACAO | NUMBER | Y | Tipo de internac?o |
| 53 | TP_INTERNACAO_INTEGRA | VARCHAR2 | Y | Tipo de internac?o (DE-PARA) |
| 54 | DS_TIPO_INTERNACAO | VARCHAR2 | Y | Descric?o do tipo de internac?o |
| 55 | CD_UNID_INTERNACAO | NUMBER | Y | Codigo da unidade de internac?o |
| 56 | CD_UNID_INTERNACAO_INTEGRA | VARCHAR2 | Y | Codigo da unidade de internac?o (DE-PARA) |
| 57 | DS_UNID_INTERNACAO | VARCHAR2 | Y | Descric?o da unidade de internac?o |
| 58 | TP_ACOMODACAO | NUMBER | Y | Tipo de acomodac?o |
| 59 | TP_ACOMODACAO_INTEGRA | VARCHAR2 | Y | Tipo de acomodac?o (DE-PARA) |
| 60 | DS_ACOMODACAO | VARCHAR2 | Y | Descric?o da acomodac?o |
| 61 | DS_ENFERMAGEM | VARCHAR2 | Y | Descric?o da enfermagem |
| 62 | CD_LEITO | NUMBER | Y | Codigo do leito |
| 63 | CD_LEITO_INTEGRA | VARCHAR2 | Y | Codigo do leito (DE-PARA) |
| 64 | DS_LEITO | VARCHAR2 | Y | Descric?o do leito |
| 65 | DS_LEITO_RESUMIDO | VARCHAR2 | Y | Descric?o resumida do leito |
| 66 | CD_LEITO_ANTERIOR | NUMBER | Y | Codigo do leito anterior |
| 67 | DS_LEITO_ANTERIOR | VARCHAR2 | Y | Descric?o do leito anterior |
| 68 | DS_LEITO_RESUMIDO_ANTERIOR | VARCHAR2 | Y | Descric?o resumida do leito anterior |
| 69 | CD_SERVICO | NUMBER | Y | Codigo do servico |
| 70 | CD_SERVICO_INTEGRA | VARCHAR2 | Y | Codigo do servico (DE-PARA) |
| 71 | DS_SERVICO | VARCHAR2 | Y | Descric?o do servico |
| 72 | CD_ESPECIALIDADE | VARCHAR2 | Y | Codigo da Especialidade |
| 73 | CD_ESPECIALIDADE_INTEGRA | VARCHAR2 | Y | Codigo da Especialidade (DE-PARA) |
| 74 | DS_ESPECIALIDADE | VARCHAR2 | Y | Descric?o da Especialidade |
| 75 | NR_GUIA | VARCHAR2 | Y | Numero da guia |
| 76 | TP_GUIA | VARCHAR2 | Y | Tipo da guia |
| 77 | TP_GUIA_INTEGRA | VARCHAR2 | Y | Tipo da guia (DE-PARA) |
| 78 | QT_DIAS_SOLICITADOS | NUMBER | Y | Quantidade de dias de quando foi solicitada a guia |
| 79 | QT_HORAS_SOLICITADOS | NUMBER | Y | Quantidade de horas de quando foi solicitada a guia |
| 80 | QT_DIAS_AUTORIZADOS | NUMBER | Y | Quantidade de dias quie foram autorizados pela guia |
| 81 | QT_HORAS_AUTORIZADOS | NUMBER | Y | Quantidade de horas quie foram autorizados pela guia |
| 82 | CD_SENHA | VARCHAR2 | Y | Codigo da senha de autorizac?o |
| 83 | CD_PACIENTE | NUMBER | Y | codigo do paciente |
| 84 | CD_PACIENTE_INTEGRA | VARCHAR2 | Y | codigo do paciente (DE-PARA) |
| 85 | NM_PACIENTE | VARCHAR2 | Y | Nome do paciente |
| 86 | TP_SEXO | VARCHAR2 | Y | Tipo do sexo do paciente |
| 87 | DT_NASCIMENTO | DATE | Y | Data de nascimento do paciente |
| 88 | NM_MAE | VARCHAR2 | Y | Nome da M?e do paciente |
| 89 | NR_FONE | VARCHAR2 | Y | Numero do telefone do paciente |
| 90 | CD_PACIENTE_ANTERIOR | NUMBER | Y | Codigo do paciente anterior caso teve mudanca de nome |
| 91 | NM_PACIENTE_ANTERIOR | VARCHAR2 | Y | Nome do paciente anterior caso teve mudanca de nome |
| 92 | DS_RESPONSAVEL_PACIENTE | VARCHAR2 | Y | Descric?o do responsavel pelo paciente |
| 93 | TP_PARENTESCO | VARCHAR2 | Y | Tipo de parentesco do responsavel |
| 94 | TP_PARENTESCO_INTEGRA | VARCHAR2 | Y | Tipo de parentesco do responsavel (DE-PARA) |
| 95 | DS_TIPO_PARENTESCO | VARCHAR2 | Y | Descric?o Tipo de parentesco do responsavel |
| 96 | CD_PROFISSAO_RESP | NUMBER | Y | Codigo da profiss?o do responsavel |
| 97 | CD_PROFISSAO_RESP_INTEGRA | VARCHAR2 | Y | Codigo da profiss?o do responsavel (DE-PARA) |
| 98 | DS_PROFISSAO_RESP | VARCHAR2 | Y | Descric?o da profiss?o do responsavel |
| 99 | DS_NATURALIDADE_RESP | VARCHAR2 | Y | Descric?o da naturalidade do responsavel pelo paciente |
| 100 | NR_TELEFONE_RESP | VARCHAR2 | Y | Telefone do responsavel pelo paciente |
| 101 | NR_IDENTIDADE_RESP | VARCHAR2 | Y | Numero da identidade do responsavel pelo paciente |
| 102 | NR_CPF_RESP | VARCHAR2 | Y | Numero do CPF do responsavel pelo paciente |
| 103 | DS_CONTATO_FAMILIA | VARCHAR2 | Y | Descric?o do contato da familia |
| 104 | NR_CEP_RESP | NUMBER | Y | Numero do CEP do responsavel pelo paciente |
| 105 | DS_ENDERECO_RESP | VARCHAR2 | Y | Descricao do endereco do responsavel pelo paciente |
| 106 | NR_ENDERECO_RESP | VARCHAR2 | Y | Numero do enredeco do responsavel pelo paciente |
| 107 | DS_COMPLEMENTO_RESP | VARCHAR2 | Y | Complemento do endereco do responsavel pelo paciente |
| 108 | DS_BAIRRO_RESP | VARCHAR2 | Y | Descricao do bairro do responsavel pelo paciente |
| 109 | CD_CIDADE_RESP | VARCHAR2 | Y | Codigo da cidade do responsavel pelo paciente |
| 110 | DS_CIDADE_RESP | VARCHAR2 | Y | Descricao da cidade do responsavel pelo paciente |
| 111 | CD_ESTADO_RESP | VARCHAR2 | Y | Codigo do estado do responsavel pelo paciente |
| 112 | DT_PREVISAO_ALTA | DATE | Y | Data da previsao da alta |
| 113 | SN_ALTA | VARCHAR2 | Y | Indica se foi dada a alta |
| 114 | SN_ALTA_POR_OBITO | VARCHAR2 | Y | Indica se foi dada alta por obito |
| 115 | DT_ALTA | DATE | Y | Data da alta |
| 116 | HR_ALTA | DATE | Y | Hora da alta |
| 117 | CD_MOTIVO_ALTA | NUMBER | Y | Codigo do motivo da alta |
| 118 | CD_MOTIVO_ALTA_INTEGRA | VARCHAR2 | Y | Codigo do motivo da alta (DE-PARA) |
| 119 | DS_MOTIVO_ALTA | VARCHAR2 | Y | Descricao do motivo da alta |
| 120 | SN_PRE_INTERNACAO | VARCHAR2 | Y | Indica se trata-se de uma Pre-internac?o |
| 121 | SN_RESERVA_LEITO | VARCHAR2 | Y | Indica se reserva leito |
| 122 | DS_OBSERVACAO | VARCHAR2 | Y | Observac?o do atendimento |
| 123 | DS_TRATAMENTO | VARCHAR2 | Y | Descric?o do tratamento |
| 124 | DS_INTERNACAO | VARCHAR2 | Y | Descric?o da Internac?o |
| 125 | CD_LEITO_ANTERIOR_INTEGRA | VARCHAR2 | Y | Codigo do leito anterior (DE-PARA) |
| 126 | CD_SOLICITACAO_INTEGRA | VARCHAR2 | Y | codigo da solicitacao (DE-PARA) |
| 127 | NR_CNS_PRESTADOR | VARCHAR2 | Y | Numero CNS do prestador |
| 128 | TP_ATENDIMENTO_TISS | NUMBER | Y | Tipo de Atendimento usado no TISS |
| 129 | TP_CARATER_INTERNACAO | VARCHAR2 | Y | Tipo de carater de internacao do TISS |
| 130 | NR_TAG_ATENDIMENTO | VARCHAR2 | Y | Valor da TAG RFID do paciente |
| 131 | CD_ATENDIMENTO_PAI | NUMBER | Y | Codigo do atendimento pai |
| 132 | CD_IMV_LOG_REQUISICAO | NUMBER | Y | Codigo da mensagem que esta na mvintegra.inv_log_requisicao que originou este registro. |
| 133 | HR_CANCELAMENTO_ALTA | DATE | Y | Hora do cancelamento da alta |
| 134 | DS_SOLICITANTE_REGULACAO | VARCHAR2 | Y | Coluna destinada a armazenar a unidade que solicitou a internac?o a Central de Regulac?o. |
| 135 | DT_AUTORIZACAO_GUIA | DATE | Y | Contem a data de autorizac?o da guia |
| 136 | DS_SITUACAO_REGULACAO | VARCHAR2 | Y | Situac?o que encontra-se a solicitacao de regulac?o |
| 137 | CD_RES_LEI | NUMBER | Y | Codigo da Reserva de leito |
| 138 | SN_CANCELAMENTO_ALTA | VARCHAR2 | Y | Indica se foi feito um cancelamento de alta |
| 139 | DT_CANCELAMENTO_ALTA | DATE | Y | Data do cancelamento da alta |
| 140 | NR_CARTEIRA | VARCHAR2 | Y | Numero da carteira do paciente |
| 141 | CD_CBO_PRESTADOR | VARCHAR2 | Y | Codigo Brasileiro de Ocupac?o |
| 142 | CD_SISTEMA_ORIGEM | VARCHAR2 | Y | Coluna que vai conter o codigo do sistema origem da mensagem, usada na entrada de mensagens |
| 143 | NM_USUARIO_ALTA | VARCHAR2 | Y | Nome do usuario responsavel pela alta |
| 144 | DS_OBS_ALTA | VARCHAR2 | Y | Observacao sobre a alta |
| 145 | CD_PROCEDIMENTO_ALTA | VARCHAR2 | Y | Codigo do procedimento da alta |
| 146 | NR_CONSELHO | VARCHAR2 | Y | Numero do Conselho |
| 147 | DS_CONSELHO | VARCHAR2 | Y | Descric?o do Conselho |
| 148 | TP_MOTIVO_ALTA | VARCHAR2 | Y | Tipo de motivo da alta |
| 149 | CD_SETOR_OBITO | NUMBER | Y | Codigo do setor do obito |
| 150 | NR_CEP_PAC | VARCHAR2 | Y | CEP do paciente enviado junto ao atendimento |
| 151 | DS_ENDERECO_PAC | VARCHAR2 | Y | Endereco do paciente enviado junto ao atendimento |
| 152 | DS_BAIRRO_PAC | VARCHAR2 | Y | Bairro do paciente enviado junto ao atendimento |
| 153 | CD_CIDADE_PAC | VARCHAR2 | Y | Cidade do paciente enviado junto ao atendimento |
| 154 | CD_ESTADO_PAC | VARCHAR2 | Y | UF do paciente enviado junto ao atendimento |
| 155 | DT_VALIDADE | DATE | Y | Data de validade da carteira do paciente |
| 156 | DT_CANCELAMENTO | DATE | Y |  |
| 157 | NR_FONE_PRESTADOR | VARCHAR2 | Y |  |
| 158 | EMAIL | VARCHAR2 | Y |  |
| 159 | DT_TRANSFERENCIA | DATE | Y |  |
| 160 | HR_TRANSFERENCIA | DATE | Y |  |
| 161 | UF_CONSELHO | VARCHAR2 | Y |  |
| 162 | CD_USUARIO_PRESTADOR | VARCHAR2 | Y |  |
| 163 | NM_PAI | VARCHAR2 | Y |  |
| 164 | NR_CNS_PACIENTE | VARCHAR2 | Y |  |
| 165 | NR_CPF_PACIENTE | VARCHAR2 | Y |  |
| 166 | TP_OCUPACAO | VARCHAR2 | Y |  |
| 167 | TP_OCUPACAO_INTEGRA | VARCHAR2 | Y |  |
| 168 | DT_ALTA_MEDICA | DATE | Y |  |
| 169 | SN_ALTA_MEDICA | VARCHAR2 | Y |  |
| 170 | CD_UNIDADE_ANTERIOR | NUMBER | Y |  |
| 171 | TP_SAIDA_INTEGRA | VARCHAR2 | Y |  |
| 172 | NM_ACOMPANHANTE | VARCHAR2 | Y |  |
| 173 | SN_VIP | VARCHAR2 | Y |  |
| 174 | DT_NASCIMENTO_ACOMPANHANTE | DATE | Y |  |
| 175 | DS_DOCUMENTO_ACOMPANHANTE | VARCHAR2 | Y |  |
| 176 | NR_DOCUMENTO_ACOMPANHANTE | VARCHAR2 | Y |  |

---

## MVINTEGRA.IMV_ATENDIMENTO_SOS
> Tabela para controlar as movimentac?es do projeto SOS Emergencia

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IMV_ATENDIMENTO_SOS | NUMBER | N | Codigo sequencial do registro integrado |
| 2 | TP_FLUXO | VARCHAR2 | N | Identificador do fluxo da informac?o (S - Saida, E - Entrada) |
| 3 | TP_STATUS | VARCHAR2 | N | Identifica o status da integrac?o (E - Erro, A - Aguardando, P - Processado, S - Sucesso |
| 4 | DS_ERRO | VARCHAR2 | Y | Descric?o do erro caso o campo TP_STATUS seja igual a E |
| 5 | DT_GERADO | DATE | N | Data em que o registro foi disponibilizado na tabela de integrac?o |
| 6 | DT_PROCESSADO | DATE | Y | Data em que ocorreu a integrac?o do registro com o outro sistema |
| 7 | TP_MOVIMENTO | VARCHAR2 | N | Tipo do movimento (I - Inclus?o, A - Alterac?o e E - Exclus?o) |
| 8 | TP_REGISTRO | VARCHAR2 | N | Identificac?o do tipo de registro existente: 001 usado para o no principal do xml, 002 para filho... |
| 9 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da empresa. Usado para ambientes multi-empresa. Sen?o houver, preencher com 1 |
| 10 | CD_MULTI_EMPRESA_INTEGRA | VARCHAR2 | Y | Codigo da empresa (DE-PARA) |
| 11 | CD_REGISTRO_PRINCIPAL | NUMBER | Y | Identificador do registro principal da mensagem |
| 12 | CD_REGISTRO_PAI | NUMBER | Y | Identificador do registro pai da mensagem |
| 13 | CD_ATENDIMENTO | NUMBER | Y | Codigo do atendimento |
| 14 | NR_CNS_PACIENTE | VARCHAR2 | Y | CNS: Cadastro Nacional de saude. Numero do CNS do paciente que foi atendido no estabelecimento de... |
| 15 | NR_CNS_PROFISSIONAL | VARCHAR2 | Y | CNS: Cadastro Nacional de saude. Numero do CNS do profissional que realizou o atendimento ao paci... |
| 16 | CD_ETAPA_ATENDIMENTO | VARCHAR2 | Y | Codigo da Etapa de Atendimento |
| 17 | CD_ETAPA_ATENDIMENTO_INTEGRA | VARCHAR2 | Y | Codigo da Etapa de Atendimento (DE-PARA) |
| 18 | DS_ETAPA_ATENDIMENTO | VARCHAR2 | Y | Descric?o da Etapa do Atendimento |
| 19 | DT_ENTRADA | DATE | Y | Data da entrada do paciente na etapa de atendimento. |
| 20 | HR_ENTRADA | DATE | Y | Hora da entrada do paciente na etapa de atendimento |
| 21 | DT_SAIDA | DATE | Y | Data da saida do paciente da etapa de atendimento. |
| 22 | HR_SAIDA | DATE | Y | Hora da saida do paciente da etapa de atendimento |
| 23 | CD_CID | VARCHAR2 | Y | CID10. Hipotese Diagnostica definida pelo profissional medico no momento da consulta individual. |
| 24 | CD_CID_REAVALIACAO | VARCHAR2 | Y | CID10. Hipotese Diagnostica definida pelo profissional medico no momento da consulta de reavaliac?o. |
| 25 | CD_ESPECIALIDADE | NUMBER | Y | Tipo de especialidades clinicas do Estabelecimento Assistencial de saude EAS. |
| 26 | CD_ESPECIALIDADE_INTEGRA | VARCHAR2 | Y | Tipo de especialidades clinicas do Estabelecimento Assistencial de saude EAS. (DE-PARA) |
| 27 | DS_ESPECIALIDADE | VARCHAR2 | Y | Descric?o do Tipo de especialidades clinicas do Estabelecimento Assistencial de saude EAS. (DE-PARA) |
| 28 | DS_COR_CLASSIFICACAO_RISCO | VARCHAR2 | Y | Tipo de classificac?o divida em cores que e atribuido ao paciente no momento da classificac?o de ... |
| 29 | CD_PROCEDIMENTO | VARCHAR2 | Y | Procedimento principal realizado pelo profissional de saude, esta anamnese feita pelo profissiona... |
| 30 | CD_PROCEDIMENTO_INTEGRA | VARCHAR2 | Y | Procedimento principal realizado pelo profissional de saude, esta anamnese feita pelo profissiona... |
| 31 | DS_PROCEDIMENTO | VARCHAR2 | Y | Procedimento principal realizado pelo profissional de saude, esta anamnese feita pelo profissiona... |
| 32 | QT_TEMPO_PREVISTO_ATENDIMENTO | NUMBER | Y | Tempo estimado definido pelo medico em que o paciente devera ficar em observac?o. |
| 33 | CD_LOCAL_OBSERVACAO | NUMBER | Y | Codigo do Local onde o paciente ficara em observac?o fisicamente. Exemplo: Corredor, espera da or... |
| 34 | CD_LOCAL_OBSERVACAO_INTEGRA | VARCHAR2 | Y | Codigo do Local onde o paciente ficara em observac?o fisicamente. Exemplo: Corredor, espera da or... |
| 35 | DS_LOCAL_OBSERVACAO | VARCHAR2 | Y | Local onde o paciente ficara em observac?o fisicamente. Exemplo: Corredor, espera da ortopedia, o... |
| 36 | CD_ACOMODACAO_OBS | NUMBER | Y | Codigo da Acomodac?o onde o paciente ficara em observac?o. Exemplo: maca, cadeira, leito e outros. |
| 37 | CD_ACOMODACAO_OBS_INTEGRA | VARCHAR2 | Y | Codigo da Acomodac?o onde o paciente ficara em observac?o. Exemplo: maca, cadeira, leito e outros... |
| 38 | DS_ACOMODACAO_OBSERVACAO | VARCHAR2 | Y | Acomodac?o onde o paciente ficara em observac?o. Exemplo: maca, cadeira, leito e outros. |
| 39 | CD_KANBAN | NUMBER | Y | Codigo KANBAN |
| 40 | CD_KANBAN_INTEGRA | VARCHAR2 | Y | Codigo KANBAN DE-PARA |
| 41 | DS_KANBAN | VARCHAR2 | Y | Descrc?o do codigo KANBAN |
| 42 | CD_MOT_TRANSFERENCIA | NUMBER | Y | Codigo do motivo da transferencia |
| 43 | CD_MOT_TRANSFERENCIA_INTEGRA | VARCHAR2 | Y | Codigo do motivo da transferencia DE-PARA |
| 44 | DS_MOT_TRANSFERENCIA | VARCHAR2 | Y | Descric?o do motivo da transfarencia |
| 45 | CD_MOT_ALTA | NUMBER | Y | Codigo do motivo de alta |
| 46 | CD_MOT_ALTA_INTEGRA | VARCHAR2 | Y | Codigo do motivo de alta DE-PARA |
| 47 | DS_MOT_ALTA | VARCHAR2 | Y | Descric?o do motivo de alta |
| 48 | CD_TIP_RES | NUMBER | Y | Codigo do tipo de resultado |
| 49 | CD_TIP_RES_INTEGRA | VARCHAR2 | Y | Codigo do tipo de resultado DE-PARA |
| 50 | DS_TIP_RES | VARCHAR2 | Y | Descric?o do tipo de resultado |
| 51 | CD_PACIENTE | NUMBER | Y | Codigo do paciente |
| 52 | CD_PACIENTE_INTEGRA | VARCHAR2 | Y | Codigo do paciente (DE-PARA) |
| 53 | NM_PACIENTE | VARCHAR2 | Y | Nome do paciente |
| 54 | CD_COR_CLASSIFICACAO_RISCO | NUMBER | Y | Codigo de classificac?o divida em cores que e atribuido ao paciente no momento da classificac?o d... |

---

## MVINTEGRA.IMV_AUTORIZADOR
> Tabela resposavel pela integrac?o com o Autorizador

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IMV_AUTORIZADOR | NUMBER | N | Codigo sequencial da integrac?o |
| 2 | TP_FLUXO | VARCHAR2 | N | Identificador do fluxo da informac?o (S - Saida, E - Entrada) |
| 3 | TP_STATUS | VARCHAR2 | N | Identificac?o da situac?o atual do registro (A - Aguardando, T - Transmitido e E - Erro) |
| 4 | DS_ERRO | VARCHAR2 | Y | Descric?o do erro quando ocorrer |
| 5 | DT_GERADO | DATE | N | Data do registro gerado na integrac?o |
| 6 | DT_PROCESSADO | DATE | Y | Data em que o registro foi integrado |
| 7 | TP_MOVIMENTO | VARCHAR2 | N | Tipo do movimento (I - Inclus?o, A - Alterac?o e E - Exclus?o) |
| 8 | TP_REGISTRO | VARCHAR2 | N | Tipo do registro da integrac?o |
| 9 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da multi-empresa |
| 10 | CD_MULTI_EMPRESA_INTEGRA | VARCHAR2 | Y | Codigo da multi-empresa (DE-PARA) |
| 11 | CD_REGISTRO_TRANSACAO | NUMBER | Y | Codigo do registro que iniciou a transac?o |
| 12 | CD_REGISTRO_PRINCIPAL | NUMBER | Y | Codigo do registro principal desta transac?o |
| 13 | CD_REGISTRO_PAI | NUMBER | Y | Codigo do registro pai deste registro |
| 14 | DS_USUARIO | VARCHAR2 | Y | Descric?o do usuario que esta logado no sistema |
| 15 | DS_SENHA | VARCHAR2 | Y |  |
| 16 | DS_ESTABELECIMENTO | VARCHAR2 | Y | Descric?o do estabelecimento |
| 17 | ID_OPERADORA | VARCHAR2 | Y | ID da operadora do convenio |
| 18 | SN_TRANSACAO_CANCELAMENTO | VARCHAR2 | Y | Indica se a transac?o trata-se de um cancelamento |
| 19 | SN_GUIA_INFORMADA | VARCHAR2 | Y | Informa se a guia foi informada |
| 20 | DH_SOLICITACAO | DATE | Y | Data e Hora de solicitac?o da autorizac?o |
| 21 | CD_ATENDIMENTO | NUMBER | Y | Codigo do atendimento |
| 22 | CD_PACIENTE | NUMBER | Y | Codigo do paciente |
| 23 | CD_PACIENTE_INTEGRA | VARCHAR2 | Y | Codigo do paciente De-Para |
| 24 | NM_PACIENTE | VARCHAR2 | Y | Nome do paciente |
| 25 | CD_CONVENIO | NUMBER | Y | Codigo do convenio |
| 26 | CD_CONVENIO_INTEGRA | VARCHAR2 | Y | Codigo do convenio De-Para |
| 27 | DS_CONVENIO | VARCHAR2 | Y | Descric?o do Convenio |
| 28 | CD_CON_PLA | NUMBER | Y | Codigo do Plano no convenio |
| 29 | CD_CON_PLA_INTEGRA | VARCHAR2 | Y | Codigo do Plano no convenio De-Para |
| 30 | DS_CON_PLA | VARCHAR2 | Y | Descric?o do Plano no convenio |
| 31 | NR_CARTEIRA | VARCHAR2 | Y | Numero da Carteira do paciente |
| 32 | DS_TRILHA1 | VARCHAR2 | Y | Trilha 1 do cart?o do plano |
| 33 | DS_TRILHA2 | VARCHAR2 | Y | Trilha 2 do cart?o do plano |
| 34 | NR_GUIA | VARCHAR2 | Y | Numero da Guia |
| 35 | NR_SENHA | VARCHAR2 | Y | Senha de autorizac?o da Guia |
| 36 | DT_VALIDADE_GUIA | DATE | Y | Data de Validade da guia |
| 37 | TP_TRANSACAO | VARCHAR2 | Y | Tipo de transac?o (Parametro Cadastrado) |
| 38 | TP_CARATER_ATENDIMENTO | VARCHAR2 | Y | Tipo Carater de Atendimento (Parametro Cadastrado) |
| 39 | TP_REGIME | VARCHAR2 | Y | Tipo Regime (Parametro Cadastrado) |
| 40 | TP_INTERNACAO | VARCHAR2 | Y | Tipo Internac?o (Parametro Cadastrado) |
| 41 | TP_ACOMODACAO | VARCHAR2 | Y | Tipo de Acomodac?o(Parametro Cadastrado) |
| 42 | CD_PRESTADOR_SOLICITANTE | NUMBER | Y | Codigo do prestador solicitante |
| 43 | CD_PRESTADOR_SOLIC_INTEGRA | VARCHAR2 | Y | Codigo do prestador solicitante De-Para |
| 44 | NM_PRESTADOR_SOLICITANTE | VARCHAR2 | Y | Nome do Prestador Solicitante |
| 45 | CD_CONSELHO_SOLICITANTE | VARCHAR2 | Y | Codigo do Conselho do prestador solicitante |
| 46 | DS_CONSELHO_SOLICITANTE | VARCHAR2 | Y | Descric?o do conselho do prestador solicitante |
| 47 | CD_PRESTADOR_EXECUTANTE | NUMBER | Y | Codigo do prestador Executante |
| 48 | CD_PRESTADOR_EXEC_INTEGRA | VARCHAR2 | Y | Codigo do prestador Executante De-Para |
| 49 | NM_PRESTADOR_EXECUTANTE | VARCHAR2 | Y | Nome do prestador executante |
| 50 | CD_CONSELHO_EXECUTANTE | VARCHAR2 | Y | Codigo do Conselho do prestador executante |
| 51 | DS_CONSELHO_EXECUTANTE | VARCHAR2 | Y | Descric?o do Conselho do prestador executante |
| 52 | CD_ESPECIALIDADE | NUMBER | Y | Codigo da especialidade do prestador Executante |
| 53 | DS_ESPECIALIDADE | VARCHAR2 | Y | Descric?o da especialidade do prestador Executante |
| 54 | CD_CID | VARCHAR2 | Y | Codigo do CID |
| 55 | DS_CID | VARCHAR2 | Y | Crescric?o do CID |
| 56 | CD_PRO_FAT | VARCHAR2 | Y | Codigo do procedimento para o faturamento |
| 57 | DS_PRO_FAT | VARCHAR2 | Y | Descrc?o do procedimento para o faturamento |
| 58 | QT_SOLICITADA | NUMBER | Y | Quantidade de procedimentos solicitados |
| 59 | QT_AUTORIZADA | NUMBER | Y | Quantidade de procedimentos autorizador |
| 60 | SN_AUTORIZADO | VARCHAR2 | Y | Indica se foi autorizado |
| 61 | SN_REALIZADO | VARCHAR2 | Y | Indica se ja foi realizado |
| 62 | VL_OPERADORA | NUMBER | Y | Valor pago pela operadora |
| 63 | VL_PACIENTE | NUMBER | Y | Valor pago pelo paciente |
| 64 | CD_IMV_LOG_REQUISICAO | NUMBER | Y | Codigo da mensagem que esta na mvintegra.inv_log_requisicao que originou este registro. |
| 65 | CD_SISTEMA_ORIGEM | VARCHAR2 | Y | Coluna que vai conter o codigo do sistema origem da mensagem, usada na entrada de mensagens |
| 66 | SN_SOLICITACAO_URGENTE | VARCHAR2 | Y | indica se trata-se de uma solicitac?o urgente |
| 67 | DS_OBSERVACAO | VARCHAR2 | Y | Contem a observac?o que a operadora envia ao autorizar o procedimento. |
| 68 | SN_CANCELADO | VARCHAR2 | Y | Informa se foi cancelado |
| 69 | NR_CPF_PRESTADOR_SOLIC | VARCHAR2 | Y | Numero do CPF do prestador solicitante |
| 70 | NR_CPF_PRESTADOR_EXEC | VARCHAR2 | Y | Numero do CPF do prestador executante |
| 71 | CD_PRO_FAT_INTEGRA | VARCHAR2 | Y | Campo usado para mandar um depara de procedimento para o convenio |
| 72 | CD_SEQ_TRANSACAO_PROCEDIMENTO | VARCHAR2 | Y | Coluna que contera o codigo sequencial transacional para cada procedimento autorizado pelo convenio |
| 73 | CD_CBOS_EXECUTANTE | NUMBER | Y | Especialidade do prestador |
| 74 | CD_UF_EXEC | VARCHAR2 | Y | UF do Conselho Profissional do Executante |
| 75 | CD_ATI_MED | VARCHAR2 | Y | Grau de participação do profissional conforme tabela de grau de participação |
| 76 | NR_REGISTRO_OPERADORA_ANS | VARCHAR2 | Y | Registro na ANS da operadora |
| 77 | CD_CBOS_SOLICITANTE | NUMBER | Y | Código do Conselho do prestador solicitante |
| 78 | CD_UF_SOLIC | VARCHAR2 | Y | Código UF do Conselho Profissional do label Solicitante |
| 79 | TP_CARATER | VARCHAR2 | Y | Tipo Atendimento (E ¿ Eletiva, U ¿ urgência/emergência) |
| 80 | SN_TITULAR | VARCHAR2 | Y | Indica se o beneficiario e o titular do convenio |
| 81 | DT_NASCIMENTO | DATE | Y | Data de nascimento |
| 82 | SN_HGIP | VARCHAR2 | N | Define se o Serviço foi executado no Hospital IPSEMG |

---

## MVINTEGRA.IMV_AUTORIZADOR_TISS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IMV_AUTORIZADOR_TISS | NUMBER | N |  |
| 2 | TP_FLUXO | VARCHAR2 | N |  |
| 3 | TP_STATUS | VARCHAR2 | N |  |
| 4 | DS_ERRO | VARCHAR2 | Y |  |
| 5 | DT_GERADO | DATE | N |  |
| 6 | DT_PROCESSADO | DATE | Y |  |
| 7 | TP_MOVIMENTO | VARCHAR2 | N |  |
| 8 | TP_REGISTRO | VARCHAR2 | N |  |
| 9 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 10 | CD_MULTI_EMPRESA_INTEGRA | VARCHAR2 | Y |  |
| 11 | CD_REGISTRO_PRINCIPAL | NUMBER | Y |  |
| 12 | CD_REGISTRO_PAI | NUMBER | Y |  |
| 13 | TP_TRANSACAO | VARCHAR2 | Y |  |
| 14 | CD_SEQ_TRANSACAO | NUMBER | Y |  |
| 15 | DT_TRANSACAO | DATE | Y |  |
| 16 | HR_TRANSACAO | DATE | Y |  |
| 17 | CD_MOTIVO_GLOSA | NUMBER | Y |  |
| 18 | DS_MOTIVO_GLOSA | VARCHAR2 | Y |  |
| 19 | DS_MSG_ERRO | VARCHAR2 | Y |  |
| 20 | CD_CGC_ORIGEM | VARCHAR2 | Y |  |
| 21 | CD_CPF_ORIGEM | VARCHAR2 | Y |  |
| 22 | CD_ORIGEM | VARCHAR2 | Y |  |
| 23 | NR_REGISTRO_ANS_ORIGEM | VARCHAR2 | Y |  |
| 24 | CD_CPF_DESTINO | VARCHAR2 | Y |  |
| 25 | CD_DESTINO | VARCHAR2 | Y |  |
| 26 | NR_REGISTRO_ANS_DESTINO | VARCHAR2 | Y |  |
| 27 | CD_CGC_DESTINO | VARCHAR2 | Y |  |
| 28 | CD_VERSAO | VARCHAR2 | Y |  |
| 29 | NM_APLICATIVO | VARCHAR2 | Y |  |
| 30 | DS_VERSAO_APLICATIVO | VARCHAR2 | Y |  |
| 31 | NM_FABRICANTE_APLICATIVO | VARCHAR2 | Y |  |
| 32 | NR_REGISTRO_OPERADORA_ANS | NUMBER | Y |  |
| 33 | CD_FONTE_PAGADORA | VARCHAR2 | Y |  |
| 34 | DT_EMISSAO | DATE | Y |  |
| 35 | NR_GUIA_OPERADORA | VARCHAR2 | Y |  |
| 36 | NR_GUIA | NUMBER | Y |  |
| 37 | NR_GUIA_PRINCIPAL | VARCHAR2 | Y |  |
| 38 | NR_CARTEIRA | VARCHAR2 | Y |  |
| 39 | NM_PACIENTE | VARCHAR2 | Y |  |
| 40 | DS_CON_PLA | VARCHAR2 | Y |  |
| 41 | DT_VALIDADE | DATE | Y |  |
| 42 | NR_CNS | VARCHAR2 | Y |  |
| 43 | NR_ID_BENEFICIARIO | VARCHAR2 | Y |  |
| 44 | CD_CGC | VARCHAR2 | Y |  |
| 45 | CD_CPF | VARCHAR2 | Y |  |
| 46 | CD_OPERADORA | VARCHAR2 | Y |  |
| 47 | NM_PRESTADOR_CONTRATADO | VARCHAR2 | Y |  |
| 48 | CD_TIPO_LOGRADOURO | NUMBER | Y |  |
| 49 | DS_ENDERECO | VARCHAR2 | Y |  |
| 50 | NR_ENDERECO | NUMBER | Y |  |
| 51 | NM_BAIRRO | VARCHAR2 | Y |  |
| 52 | CD_IBGE | NUMBER | Y |  |
| 53 | NM_CIDADE | VARCHAR2 | Y |  |
| 54 | UF_SOLICITANTE | VARCHAR2 | Y |  |
| 55 | NR_CEP | NUMBER | Y |  |
| 56 | NR_CNES | NUMBER | Y |  |
| 57 | NM_PRESTADOR | VARCHAR2 | Y |  |
| 58 | DS_CONSELHO | VARCHAR2 | Y |  |
| 59 | DS_CODIGO_CONSELHO | VARCHAR2 | Y |  |
| 60 | UF_CONSELHO | VARCHAR2 | Y |  |
| 61 | CD_CBOS | VARCHAR2 | Y |  |
| 62 | CD_CGC_CPF_SOLICITADO | VARCHAR2 | Y |  |
| 63 | CD_CPF_SOLICITADO | VARCHAR2 | Y |  |
| 64 | CD_PRESTADOR_NA_OPERADORA | VARCHAR2 | Y |  |
| 65 | NM_PRESTADOR_SOLICITADO | VARCHAR2 | Y |  |
| 66 | CD_CNES_AUTORIZADO | VARCHAR2 | Y |  |
| 67 | CD_CARATER_SOLICITACAO | VARCHAR2 | Y |  |
| 68 | DH_SOLICITACAO | DATE | Y |  |
| 69 | TP_CID | VARCHAR2 | Y |  |
| 70 | CD_CID | VARCHAR2 | Y |  |
| 71 | DS_CID | VARCHAR2 | Y |  |
| 72 | DS_HDA | VARCHAR2 | Y |  |
| 73 | QT_SOLICITADA | NUMBER | Y |  |
| 74 | CD_PROCEDIMENTO | NUMBER | Y |  |
| 75 | TP_TAB_FAT | VARCHAR2 | Y |  |
| 76 | DS_PROCEDIMENTO | VARCHAR2 | Y |  |
| 77 | NM_FABRICANTE_OP | VARCHAR2 | Y |  |
| 78 | VL_UNITARIO | NUMBER | Y |  |
| 79 | DS_OBSERVACAO | VARCHAR2 | Y |  |

---

## MVINTEGRA.IMV_CADASTRO_PESSOA
> Tabela de integrac?o para registro de pessoas

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IMV_CADASTRO_PESSOA | NUMBER | N | Identificador sequencial do registro da integrac?o |
| 2 | TP_FLUXO | VARCHAR2 | N | Identificador do fluxo da informac?o (S - Saida, E - Entrada) |
| 3 | DS_ERRO | VARCHAR2 | Y | Descric?o do erro quando ocorrer |
| 4 | TP_MOVIMENTO | VARCHAR2 | N | Tipo do movimento (I - Inclus?o, A - Alterac?o e E - Exclus?o) |
| 5 | TP_REGISTRO | VARCHAR2 | N | Tipo do registro da integrac?o (001 - Registro referente a pessoa) |
| 6 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da multi-empresa |
| 7 | CD_REGISTRO_PRINCIPAL | NUMBER | Y | Identificador de qual o registro principal da mensagem |
| 8 | CD_REGISTRO_PAI | NUMBER | Y | Identificador de hierarquia entre registros |
| 9 | TP_PESSOA | VARCHAR2 | Y | Corresponde ao tipo da pessoa (I - Paciente) |
| 10 | CD_PESSOA | NUMBER | Y | Codigo identificador da pessoa |
| 11 | NM_PESSOA | VARCHAR2 | Y | Nome da pessoa |
| 12 | NM_MNEMONICO | VARCHAR2 | Y | Mnemonico da pessoa |
| 13 | DT_NASCIMENTO | DATE | Y | Data de nascimento |
| 14 | TP_SEXO | VARCHAR2 | Y | Sexo |
| 15 | TP_COR | VARCHAR2 | Y | Cor |
| 16 | TP_SANGUINEO | VARCHAR2 | Y | Tipo sanguineo da pessoa |
| 17 | SN_VIP | VARCHAR2 | Y | Pessoa do tipo vip |
| 18 | SN_FREQUENTA_ESCOLA | VARCHAR2 | Y | Pessoa frequenta escola |
| 19 | SN_NOTIFICACAO_SMS | VARCHAR2 | Y | Recebe notificac?o SMS ? |
| 20 | SN_DOADOR | VARCHAR2 | Y | E doador? |
| 21 | NM_MAE | VARCHAR2 | Y | Nome da m?e |
| 22 | NM_PAI | VARCHAR2 | Y | Nome do pai |
| 23 | NM_CONJUGE | VARCHAR2 | Y | Conjugue |
| 24 | NR_IDENTIDADE | VARCHAR2 | Y | Numero identidade |
| 25 | DS_OM_IDENTIDADE | VARCHAR2 | Y | Org?o emissor da identidade |
| 26 | DT_EXP_IDENTIDADE | DATE | Y | Data expedic?o da identidade |
| 27 | NR_CGC_CPF | VARCHAR2 | Y | Numero do CPF ou CGC |
| 28 | NR_REGISTRO_CERT | NUMBER | Y | Numero do registro da certidao |
| 29 | TP_REGISTRO_CERT | VARCHAR2 | Y | Tipo do registro da certidao |
| 30 | NM_CARTORIO | VARCHAR2 | Y | Nome do Cartorio |
| 31 | DS_LIVRO | VARCHAR2 | Y | Numero do livro |
| 32 | DS_FOLHA | VARCHAR2 | Y | Numero da folha |
| 33 | DT_EMISSAO_REGISTRO | DATE | Y | Data emiss?o registro |
| 34 | TP_ESTADO_CIVIL | VARCHAR2 | Y | Estado civil |
| 35 | NR_CTPS | VARCHAR2 | Y | Numero da CTPS |
| 36 | NR_SERIE_CTPS | VARCHAR2 | Y | Serie da CTPS |
| 37 | DT_EMISSAO_CTPS | DATE | Y | Data emiss?o CTPS |
| 38 | CD_UF_EMISSAO_CTPS | VARCHAR2 | Y | UF emiss?o CTPS |
| 39 | NR_TITULO | VARCHAR2 | Y | Numero titulo eleitor |
| 40 | NR_ZONA_TITULO | VARCHAR2 | Y | Zona do titulo eleitor |
| 41 | NR_SECAO_TITULO | VARCHAR2 | Y | Sec?o do titulo eleitor |
| 42 | CD_CNS | VARCHAR2 | Y | Codigo CNS Pessoa |
| 43 | NR_CNS | VARCHAR2 | Y | Numero CNS Pessoa |
| 44 | CD_CBOR | VARCHAR2 | Y | CBOR Pessoa |
| 45 | DS_ENDERECO | VARCHAR2 | Y | Descric?o do endereco |
| 46 | NR_ENDERECO | VARCHAR2 | Y | Numero do endereco |
| 47 | DS_COMPLEMENTO | VARCHAR2 | Y | Complemento |
| 48 | NM_BAIRRO | VARCHAR2 | Y | Descric?o do bairro |
| 49 | CD_CIDADE | NUMBER | Y | Codigo da cidade |
| 50 | NM_CIDADE | VARCHAR2 | Y | Descric?o da cidade |
| 51 | NR_CEP | VARCHAR2 | Y | CEP |
| 52 | CD_UF | VARCHAR2 | Y | UF endereco |
| 53 | NR_DDD_FONE | NUMBER | Y | DDD Telefone |
| 54 | NR_TELEFONE | VARCHAR2 | Y | Numero do telefone |
| 55 | DS_EMAIL | VARCHAR2 | Y | Email |
| 56 | DS_LOCAL_TRABALHO | VARCHAR2 | Y | Descric?o do local de trabalho |
| 57 | CD_PROFISSAO | NUMBER | Y | Codigo da profiss?o |
| 58 | NM_PROFISSAO | VARCHAR2 | Y | Descric?o da profiss?o |
| 59 | CD_DISTRITO_SANITARIO | NUMBER | Y | Codigo do distrito sanitario |
| 60 | NM_DISTRITO_SANITARIO | VARCHAR2 | Y | Descric?o do distrito sanitario |
| 61 | CD_NACIONALIDADE | NUMBER | Y | Codigo da Nacionalidade |
| 62 | DS_NACIONALIDADE | VARCHAR2 | Y | Descric?o da Nacionalidade |
| 63 | CD_NATURALIDADE | NUMBER | Y | Codigo da Naturalidade |
| 64 | DS_NATURALIDADE | VARCHAR2 | Y | Descric?o da Naturalidade |
| 65 | DS_UF_NATURALIDADE | VARCHAR2 | Y | UF Naturalidade |
| 66 | CD_CLASSE_ECONOMICA | NUMBER | Y | Codigo da classe economica |
| 67 | DS_CLASSE_ECONOMICA | VARCHAR2 | Y | Descric?o da classe economica |
| 68 | CD_GRAU_INSTRUCAO | NUMBER | Y | Codigo do grau de instruc?o |
| 69 | DS_GRAU_INSTRUCAO | VARCHAR2 | Y | Descric?o do grau de instruc?o |
| 70 | CD_TIPO_MORADIA | NUMBER | Y | Codigo do tipo de moradia |
| 71 | DS_TIPO_MORADIA | VARCHAR2 | Y | Descric?o do tipo de moradia |
| 72 | CD_RELIGIAO | NUMBER | Y | Codigo da religi?o |
| 73 | DS_RELIGIAO | VARCHAR2 | Y | Descric?o da religi?o |
| 74 | DS_OBSERVACAO | VARCHAR2 | Y | Observac?o |
| 75 | TP_SITUACAO | VARCHAR2 | Y | Situac?o da pessoa |
| 76 | DT_CADASTRO | DATE | Y | Data de cadastro |
| 77 | HR_CADASTRO | DATE | Y | Hora de cadastro |
| 78 | NM_USUARIO | VARCHAR2 | Y | Usuario cadastro |
| 79 | SN_ATIVO | VARCHAR2 | Y | Pessoa encontra-se ativa |
| 80 | CD_PESSOA_INTEGRA | VARCHAR2 | Y | Codigo de-para de pessoa |
| 81 | CD_PROFISSAO_INTEGRA | VARCHAR2 | Y | Codigo de-para da profissao |
| 82 | CD_DISTRITO_INTEGRA | VARCHAR2 | Y | Codigo de-para do distrito sanitario |
| 83 | CD_NACIONALIDADE_INTEGRA | VARCHAR2 | Y | Codigo de-para da nacionalidade |
| 84 | CD_NATURALIDADE_INTEGRA | VARCHAR2 | Y | Codigo de-para da naturalidade |
| 85 | CD_CLASSE_ECONOMICA_INTEGRA | VARCHAR2 | Y | Codigo de-para da classe economica |
| 86 | CD_GRAU_INSTRUCAO_INTEGRA | VARCHAR2 | Y | Codigo de-para do grau de instrucao |
| 87 | CD_TIPO_MORADIA_INTEGRA | VARCHAR2 | Y | Codigo de-para do tipo de moradia |
| 88 | CD_RELIGIAO_INTEGRA | VARCHAR2 | Y | Codigo de-para da religiao |
| 89 | TP_SITUACAO_INTEGRA | VARCHAR2 | Y | Codigo de-para da situacao |
| 90 | DT_PROCESSADO | DATE | Y | Data em que o registro foi integrado |
| 91 | DT_GERADO | DATE | Y | Data do registro gerado na integrac?o |
| 92 | CD_MULTI_EMPRESA_INTEGRA | VARCHAR2 | Y | Codigo de-para da multi-empresa |
| 93 | TP_STATUS | VARCHAR2 | N | Identifica o status da integrac?o |
| 94 | NR_CARTEIRA | VARCHAR2 | Y | Numero da carteira |
| 95 | SN_CARTEIRA_ATIVO | VARCHAR2 | Y | Indica se a carteira esta ativa |
| 96 | CD_CONVENIO | NUMBER | Y | Codigo do Convenio |
| 97 | CD_CONVENIO_INTEGRA | VARCHAR2 | Y | Codigo do Convenio (DE-PARA) |
| 98 | NM_CONVENIO | VARCHAR2 | Y | Descric?o do Convenio |
| 99 | CD_CON_PLA | NUMBER | Y | Codigo do Convenio no plano |
| 100 | CD_CON_PLA_INTEGRA | VARCHAR2 | Y | Codigo do Convenio no plano (DE-PARA) |
| 101 | DS_CON_PLA | VARCHAR2 | Y | Descric?o do Convenio no plano |
| 102 | DT_VALIDADE | DATE | Y | Data de validade da carteira |
| 103 | DT_VIGENCIA | DATE | Y | Data de vigencia da carteira |
| 104 | NM_TITULAR | VARCHAR2 | Y | Nome do titular da carteira |
| 105 | SN_TITULAR | VARCHAR2 | Y | Indica se e o titular da carteira |
| 106 | DT_ULT_PAGTO | VARCHAR2 | Y | Data do ultimo pagamento |
| 107 | CD_SUB_PLA | VARCHAR2 | Y | Codigo do SubPlano |
| 108 | CD_SUB_PLA_INTEGRA | VARCHAR2 | Y | Codigo do SubPlano (DE-PARA) |
| 109 | DS_SUB_PLA | VARCHAR2 | Y | Descric?o do SubPlano |
| 110 | NR_MATRICULA_TITULAR | VARCHAR2 | Y | Numero da matricula do titular |
| 111 | TP_CONVENIO | VARCHAR2 | Y | Tipo do convenio |
| 112 | CD_CIDADE_COMERCIAL | NUMBER | Y | Cidade do endereco comercial |
| 113 | DS_ENDERECO_COMERCIAL | VARCHAR2 | Y | Descric?o do endereco comercial |
| 114 | DS_COMPLEMENTO_COMERCIAL | VARCHAR2 | Y | Complemento do endereco comercial |
| 115 | NR_PISPASEP | NUMBER | Y | Numero PIS/PASEP |
| 116 | TP_CORPO_CLINICO | VARCHAR2 | Y | Tipo do corpo clinico |
| 117 | DS_CODIGO_CONSELHO | VARCHAR2 | Y | Descric?o do conselho do prestador |
| 118 | CD_CONSELHO | NUMBER | Y | Codigo do conselho do prestador |
| 119 | CD_TIP_PRESTA | NUMBER | Y | Tipo do prestador |
| 120 | DS_CARGO | VARCHAR2 | Y | Cargo da pessoa |
| 121 | NR_CCM | NUMBER | Y | Numero CRM do prestador |
| 122 | DS_FACULDADE | VARCHAR2 | Y | Faculdade da pessoa |
| 123 | TP_DOCUMENTACAO | VARCHAR2 | Y | Tipo de documentac?o |
| 124 | TP_VINCULO | VARCHAR2 | Y | Tipo do vinculo do prestador |
| 125 | CD_ESPECIALIDADE | NUMBER | Y | Codigo da especialidade |
| 126 | DS_ESPECIALIDADE | VARCHAR2 | Y | Descric?o da especialidade |
| 127 | CD_ESPECIALIDADE_INTEGRA | VARCHAR2 | Y | Codigo De-para da especialidade |
| 128 | SN_ESPECIALIDADE_PRINCIPAL | VARCHAR2 | Y | Especialidade Principal? |
| 129 | CD_CONSELHO_INTEGRA | VARCHAR2 | Y | Codigo De-para do conselho |
| 130 | CD_TIP_PRESTA_INTEGRA | VARCHAR2 | Y | Codigo de-para do tipo do prestador |
| 131 | DS_TIP_PRESTA | VARCHAR2 | Y | Descric?o do tipo do prestador |
| 132 | SN_ANESTESISTA | VARCHAR2 | Y | Anestesista? |
| 133 | SN_AUXILIAR | VARCHAR2 | Y | Auxiliar? |
| 134 | SN_CIRURGIAO | VARCHAR2 | Y | Cirurgiao? |
| 135 | SN_OUTROS | VARCHAR2 | Y | Outros? |
| 136 | SN_ATUANTE | VARCHAR2 | Y | Atuante? |
| 137 | SN_AUDITOR_SUS | VARCHAR2 | Y | Auditor SUS? |
| 138 | SN_CESSAO_CREDITO | VARCHAR2 | Y | Cessao credito? |
| 139 | SN_MOSTRAR_ENDERECO | VARCHAR2 | Y | Mostrar endereco? |
| 140 | CD_CIDADE_INTEGRA | VARCHAR2 | Y | Codigo de-para da cidade |
| 141 | CD_CIDADE_COMERCIAL_INTEGRA | VARCHAR2 | Y | Codigo de-para da cidade do endereco comercial |
| 142 | CD_UF_CIDADE_COMERCIAL | VARCHAR2 | Y | UF do endereco comercial |
| 143 | NR_INSS | NUMBER | Y | Numero INSS |
| 144 | CD_BANCO | NUMBER | Y | Codigo do Banco |
| 145 | CD_AGENCIA | VARCHAR2 | Y | Codigo Agencia |
| 146 | NR_CONTA | VARCHAR2 | Y | Numero da Conta |
| 147 | NR_INSC_EST | VARCHAR2 | Y | Numero Inscric?o Estadual |
| 148 | TP_FORNECEDOR | VARCHAR2 | Y | Tipo de Fornecedor |
| 149 | NM_FANTASIA | VARCHAR2 | Y | Nome Fantasia |
| 150 | NR_PIS_PASEP | NUMBER | Y | Numero PIS |
| 151 | CD_IMV_LOG_REQUISICAO | NUMBER | Y | Codigo da mensagem que esta na mvintegra.inv_log_requisicao que originou este registro. |
| 152 | SN_REPASSE_FATURA_AMB_SUS | VARCHAR2 | Y | Sinaliza se sera feito o repasse ambulatorial SUS |
| 153 | DS_AGENCIA | VARCHAR2 | Y | Descric?o da agencia |
| 154 | NM_BAIRRO_COMERCIAL | VARCHAR2 | Y | Nome do bairro comercial |
| 155 | NR_CEP_COMERCIAL | VARCHAR2 | Y | Numero do CEP comercial |
| 156 | NR_INSCR_AUTONOMO | VARCHAR2 | Y | Numero de inscric?o autonomo |
| 157 | DT_INATIVACAO | DATE | Y | Data de inativac?o do cadastro |
| 158 | DT_CADASTRO_COOPERATIVA | DATE | Y | Data de cadastro na cooperativa |
| 159 | NR_MATRICULA_COOPERATIVA | VARCHAR2 | Y | Numero de matricula na cooperativa |
| 160 | CD_TIPO_LOGRADOURO | NUMBER | Y | Codigo do tipo de logradouro |
| 161 | CD_TIPO_LOGRADOURO_INTEGRA | VARCHAR2 | Y | Codigo do tipo de logradouro De-Para |
| 162 | DS_TIPO_LOGRADOURO | VARCHAR2 | Y | Descric?o do tipo de logradouro |
| 163 | CD_TIPO_LOGRADOURO_COMERCIAL | NUMBER | Y | Codigo do tipo de logradouro Comercial |
| 164 | CD_TIPO_LOGRAD_COMERC_INTEGRA | VARCHAR2 | Y | Codigo do tipo de logradouro Comercial De-Para |
| 165 | DS_TIPO_LOGRADOURO_COMERCIAL | VARCHAR2 | Y | Descric?o do tipo de logradouro Comercial |
| 166 | NR_ENDERECO_COMERCIAL | VARCHAR2 | Y | Numero do endereco comercial |
| 167 | NR_CNES | VARCHAR2 | Y | Numero do CNES |
| 168 | CD_CBOS | VARCHAR2 | Y | Codigo CBOS |
| 169 | SN_MOSTRAR_ENDERECO_COMERCIAL | VARCHAR2 | Y | Indica se o endereco comeercial ira ser exibido |
| 170 | TP_REMESSA | VARCHAR2 | Y | Tipo da Remessa: T-Todas S-Pagas C-Conciliadas P-Parametro da tela |
| 171 | NR_TELEFONE_COMERCIAL | VARCHAR2 | Y | Numero do telefone comercial |
| 172 | CD_TIPO_CONTATO | NUMBER | Y | Codigo do tipo de contato |
| 173 | CD_TIPO_CONTATO_INTEGRA | VARCHAR2 | Y | Codigo do tipo de contato De-Para |
| 174 | DS_TIPO_CONTATO | VARCHAR2 | Y | Descric?o do tipo de contato |
| 175 | DS_CONTATO | VARCHAR2 | Y | Descric?o do contato Ex: 8188885544 |
| 176 | SN_MOSTRAR_CONTATO | VARCHAR2 | Y | Indica se sera exibido o contato |
| 177 | CD_SISTEMA_ORIGEM | VARCHAR2 | Y | Coluna que vai conter o codigo do sistema origem da mensagem, usada na entrada de mensagens |
| 178 | DS_BANCO | VARCHAR2 | Y | Descric?o do banco |
| 179 | NM_CIDADE_COMERCIAL | VARCHAR2 | Y | Nome da cidade comercial do prestador |
| 180 | DT_HR_ULT_ELEGIBILIDADE | DATE | Y | Data da ultima elegibilidade |
| 181 | SN_ELEGIBILIDADE | VARCHAR2 | Y | Indica se tem elegibilidade |
| 182 | SN_PENSIONISTA | VARCHAR2 | Y | Indica se e pensionista |
| 183 | CD_CATEGORIA_PLANO | NUMBER | Y | Codigo da categoria do plano |
| 184 | CD_CATEGORIA_PLANO_INTEGRA | VARCHAR2 | Y | Codigo da categoria do plano De-Para |
| 185 | NM_CATEGORIA_PLANO | VARCHAR2 | Y | Nome da categoria do plano |
| 186 | NM_EMPRESA | VARCHAR2 | Y | Nome da empresa |
| 187 | DS_CONSELHO | VARCHAR2 | Y | Descric?o do conselho do prestador |
| 188 | CD_CONSTITUICAO_EMPRESA | NUMBER | Y | Codigo da constituic?o da empresa |
| 189 | CD_CONSTITUICAO_EMPR_INTEGRA | VARCHAR2 | Y | Codigo da constituic?o da empresa De-Para |
| 190 | DS_CONSTITUICAO_EMPRESA | VARCHAR2 | Y | Descric?o da constituic?o da empresa |
| 191 | NR_INSCRICAO_MUNICIPAL | VARCHAR2 | Y | Numero de inscric?o municipal |
| 192 | QT_DEPENDENTES | NUMBER | Y | Indica a Quantidade de Dependentes deste Fornecedor |
| 193 | NR_DIGITO_VERIFICADOR_AGENCIA | VARCHAR2 | Y | Digito Verificador da Agencia |
| 194 | NR_DIGITO_VERIFICADOR_CONTA | VARCHAR2 | Y | Digito Verificador da conta corrente |
| 195 | CD_CONTATO | NUMBER | Y | Codigo do contato |
| 196 | NM_CONTATO | VARCHAR2 | Y | Coluna que contem o nome do contato no formecedor |
| 197 | CD_MAQUINA_SESSAO | VARCHAR2 | Y | Identificador da maquina que realizou a consulta do paciente via integrac?o |
| 198 | CD_IBGE | NUMBER | Y | Codigo IBGE |
| 199 | NR_DIGITO_IBGE | NUMBER | Y | Numero do digito identificador do codigo IBGE |
| 200 | CD_ESTOQUE | NUMBER | Y | Codigo estoque usado na integrac?o de usuarios de estoque |
| 201 | NM_ESTOQUE | VARCHAR2 | Y | Descric?o estoque usado na integrac?o de usuarios de estoque |
| 202 | CD_SETOR | NUMBER | Y | Codigo setor usado na integrac?o de usuarios de estoque |
| 203 | NM_SETOR | VARCHAR2 | Y | Descric?o setor usado na integrac?o de usuarios de estoque |
| 204 | CD_ATENDIMENTO | NUMBER | Y | Codigo do atendimento |
| 205 | DS_RAMO_ATIVIDADE | VARCHAR2 | Y | Descric?o do ramo de atividade, utilizado para fornecedores |
| 206 | CD_CONTATO_INTEGRA | VARCHAR2 | Y | Codigo do contato do paciente no sistema terceiro |
| 207 | CD_RAMO_ATIVIDADE | NUMBER | Y | Codigo do ramo de atividade |
| 208 | CD_RAMO_ATIVIDADE_INTEGRA | VARCHAR2 | Y | Codigo de-para do ramo de atividade |
| 209 | CD_TIPO_COMUNICACAO | NUMBER | Y | Codigo do tipo de comunicac?o |
| 210 | DS_FORMA_CONTATO | VARCHAR2 | Y | Descric?o da forma de contato |
| 211 | CD_REDUZIDO | NUMBER | Y | Codigo reduzido |
| 212 | TP_CONTA | VARCHAR2 | Y | Tipo da conta |
| 213 | CD_REGISTRO_TRANSACAO | NUMBER | Y | Codigo do registro que iniciou a transac?o |
| 214 | DS_SENHA | VARCHAR2 | Y | Descric?o da senha |
| 215 | CD_CONTATO_PACIENTE | NUMBER | Y | Codigo do contato do paciente |
| 216 | NR_DDI | NUMBER | Y | Prefixo internacional do telefone |
| 217 | NR_DDD | NUMBER | Y | Prefixo nacional do telefone |
| 218 | NR_RAMAL | VARCHAR2 | Y | Numero do ramal do telefone |
| 219 | TP_CONTATO | VARCHAR2 | Y | Indica o tipo do telefone de contato: C Celular, R Residencial, O Comercial |
| 220 | SN_PADRAO | VARCHAR2 | Y | Indica qual dos telefones sera padr?o |
| 221 | CD_VINCULO_CNES | VARCHAR2 | Y | Codigo do vinculo do prestador conforme regra do CNES |
| 222 | CD_TIPO_VINCULO_CNES | VARCHAR2 | Y | Tipo do Vinculo do prestador |
| 223 | CD_SUBTIPO_VINCULO_CNES | VARCHAR2 | Y | Subtipo do Vinculo do prestador |
| 224 | QT_HORAS_SIA | NUMBER | Y | Carga horaria do prestador no estabelecimento para o Convenio SIA |
| 225 | QT_HORAS_SIH | NUMBER | Y | Carga horaria do prestador no estabelecimento para o Convenio SIH |
| 226 | QT_HORAS_OUTROS | NUMBER | Y | Carga horaria do prestador no estabelecimento para outros tipo de convenio n?o SUS |
| 227 | SN_REGRA_VINCULO | VARCHAR2 | Y | Define se faz parte da regra de vinculac?o do profissional com o CNES |
| 228 | TP_PADRAO_FATURAMENTO | VARCHAR2 | Y | Padr?o de lancamento do SIA/SIH |
| 229 | SN_PADRAO_INTEGRACAO | VARCHAR2 | Y | Usado para o FFIS, quando o prestador cai de integrac?o, ele precisa de um padr?o de vinculo |
| 230 | DT_VALIDADE_INICIAL | DATE | Y | Validade final da regra de CBO/Prestador |
| 231 | DT_VALIDADE_FINAL | DATE | Y |  |
| 232 | TP_CBO_PADRAO_IMPORTACAO | VARCHAR2 | N | Indica qual o CBO do prestador que sera o padr?o para importac?o dos modulos FSCC, PSSD e PSDI. |
| 233 | CD_ORGAO_EMISSOR | VARCHAR2 | Y | Codigo do org?o emissor do conselho |
| 234 | CD_ETNIA | NUMBER | Y | Codigo da Etnia |
| 235 | DS_ETNIA | VARCHAR2 | Y | Descric?o da Etnia |
| 236 | CD_LOCALIDADE | NUMBER | Y |  |
| 237 | NR_DOCUMENTO_ESTRANGEIRO | VARCHAR2 | Y |  |
| 238 | TP_STATUS_UNIFICADO | VARCHAR2 | Y |  |
| 239 | CD_PESSOA_EXTERNO | VARCHAR2 | Y |  |
| 240 | NR_MATRICULA_SAME | NUMBER | Y |  |

---

## MVINTEGRA.IMV_COLETA_SINAL_VITAL
> Tabela para recebimento e envio de coletas de sinais vitais

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IMV_COLETA_SINAL_VITAL | NUMBER | N | Chave primï¿½ria da tabela |
| 2 | TP_FLUXO | VARCHAR2 | N | Identificador do fluxo da informaï¿½ï¿½o (S - Saï¿½da, E - Entrada) |
| 3 | TP_STATUS | VARCHAR2 | N | Identificaï¿½ï¿½o da situaï¿½ï¿½o atual do registro |
| 4 | DS_ERRO | VARCHAR2 | Y | Descriï¿½ï¿½o do erro quando ocorrer |
| 5 | DT_GERADO | DATE | N | Data do registro gerado na integraï¿½ï¿½o |
| 6 | DT_PROCESSADO | DATE | Y | Data em que o registro foi integrado |
| 7 | TP_MOVIMENTO | VARCHAR2 | N | Tipo do movimento |
| 8 | TP_REGISTRO | VARCHAR2 | N | Tipo do registro da integraï¿½ï¿½o |
| 9 | CD_MULTI_EMPRESA | NUMBER | N | Cï¿½digo da empresa |
| 10 | CD_MULTI_EMPRESA_INTEGRA | VARCHAR2 | Y | Cï¿½digo de-para da empresa |
| 11 | CD_REGISTRO_PRINCIPAL | NUMBER | Y |  |
| 12 | CD_REGISTRO_PAI | NUMBER | Y |  |
| 13 | CD_COLETA_SINAL_VITAL | NUMBER | Y | Chave primaria da coleta de sinais vitais |
| 14 | CD_COLETA_SINAL_VITAL_INTEGRA | VARCHAR2 | Y | Coluna que armazena o cï¿½digo dePara do cï¿½digo de sinal vital |
| 15 | NM_USUARIO | VARCHAR2 | Y | Nome do Usuï¿½rio |
| 16 | DATA_COLETA | DATE | Y | Data de coleta dos sinais vitais |
| 17 | CD_ATENDIMENTO | NUMBER | Y | Cï¿½digo do atendimento do paciente |
| 18 | CD_FECHAMENTO | NUMBER | Y | Cï¿½digo do fechamento |
| 19 | DS_OBSERVACAO | VARCHAR2 | Y | Observaï¿½ï¿½o |
| 20 | CD_TRIAGEM_ATENDIMENTO | NUMBER | Y | Cï¿½digo da triagem do atendimento |
| 21 | DT_REFERENCIA | DATE | Y | Data de referï¿½ncia |
| 22 | CD_PRESTADOR | NUMBER | Y | Cï¿½digo do prestador |
| 23 | SN_FINALIZADO | VARCHAR2 | Y | Sim-Nï¿½o finalizado |
| 24 | CD_REGISTRO_CLINICO | NUMBER | Y | Cï¿½digo do registro clï¿½nico |
| 25 | CD_SINAL_VITAL | NUMBER | Y | Cï¿½digo identificador do sinal vital |
| 26 | CD_SINAL_VITAL_INTEGRA | VARCHAR2 | Y | Cï¿½digo identificador do sinal vital dePara |
| 27 | VALOR | NUMBER | Y | Valor do sinal vital |
| 28 | CD_INSTRUMENTO_AFERICAO | NUMBER | Y | Cï¿½digo do instrumento usado na aferiï¿½ï¿½o |
| 29 | SN_RELEVANTE | VARCHAR2 | Y | Sim/Nï¿½o relevante |
| 30 | CD_UNIDADE_AFERICAO | NUMBER | Y | Cï¿½digo da unidade de aferiï¿½ï¿½o |
| 31 | SN_ATIVO | VARCHAR2 | Y | Sim/Nï¿½o ativo |
| 32 | NR_SERIE_EQUIPAMENTO | NUMBER | Y | Nï¿½mero de sï¿½rie do equipamento que foi feita a verificaï¿½ï¿½o de glicemia capilar |
| 33 | NR_LOTE_FITA | NUMBER | Y | Nï¿½mero do lote da fita que foi utilizada para fazer a verificaï¿½ï¿½o de glicemia capilar |
| 34 | LO_LAUDO_AFERICAO | BLOB | Y | Laudo PDF para o registro de aferiï¿½ï¿½o de glicemia capilar |
| 35 | CD_IMV_LOG_REQUISICAO | NUMBER | Y |  |
| 36 | CD_SISTEMA_ORIGEM | VARCHAR2 | Y |  |
| 37 | CD_IT_COLETA_GLICEMIA | NUMBER | Y | Cï¿½digo do item da coleta glicemia |
| 38 | CD_LEITO | NUMBER | Y | Cï¿½digo do leito MV |
| 39 | DS_LEITO | VARCHAR2 | Y | Descriï¿½ï¿½o do leito MV |
| 40 | CD_LEITO_INTEGRA | VARCHAR2 | Y | Cï¿½digo do leito de-para |
| 41 | CD_UNID_INTERNACAO | NUMBER | Y | Cï¿½digo da unidade de internaï¿½ï¿½o MV |
| 42 | CD_UNID_INTERNACAO_INTEGRA | VARCHAR2 | Y | Cï¿½digo da unidade de internaï¿½ï¿½o de-para |
| 43 | CD_PACIENTE | NUMBER | Y | Cï¿½digo do paciente MV |
| 44 | CD_PACIENTE_INTEGRA | VARCHAR2 | Y | Cï¿½digo do paciente de-para |
| 45 | CD_DOCUMENTO_CLINICO | NUMBER | Y | Cï¿½digo do documento clï¿½nico |

---

## MVINTEGRA.IMV_COLETA_SINAL_VITAL_PHI
> tabela para recebimento e envio de coletas de sinais vitais

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IMV_COLETA_SINAL_VITAL_PHI | NUMBER | N | chave primÃ¡ria da tabela |
| 2 | TP_FLUXO | VARCHAR2 | N | identificador do fluxo da informaÃ§Ã£o (s - saÃ­da, e - entrada) |
| 3 | TP_STATUS | VARCHAR2 | N | identificaÃ§Ã£o da situaÃ§Ã£o atual do registro |
| 4 | DS_ERRO | VARCHAR2 | Y | descriÃ§Ã£o do erro quando ocorrer |
| 5 | DT_GERADO | DATE | N | data do registro gerado na integraÃ§Ã£o |
| 6 | DT_PROCESSADO | DATE | Y | data em que o registro foi integrado |
| 7 | TP_MOVIMENTO | VARCHAR2 | N | tipo do movimento |
| 8 | TP_REGISTRO | VARCHAR2 | N | tipo do registro da integraÃ§Ã£o |
| 9 | CD_MULTI_EMPRESA | VARCHAR2 | N | cÃ³digo da empresa |
| 10 | CD_MULTI_EMPRESA_INTEGRA | VARCHAR2 | Y | cÃ³digo de-para da empresa |
| 11 | CD_REGISTRO_PRINCIPAL | NUMBER | Y |  |
| 12 | CD_REGISTRO_PAI | NUMBER | Y |  |
| 13 | CD_COLETA_SINAL_VITAL | NUMBER | Y | chave primaria da coleta de sinais vitais |
| 14 | CD_COLETA_SINAL_VITAL_INTEGRA | VARCHAR2 | Y | coluna que armazena o cÃ³digo depara do cÃ³digo de sinal vital |
| 15 | NM_USUARIO | VARCHAR2 | Y | nome do usuÃ¡rio |
| 16 | DATA_COLETA | DATE | Y | data de coleta dos sinais vitais |
| 17 | CD_ATENDIMENTO | NUMBER | Y | cÃ³digo do atendimento do paciente |
| 18 | CD_FECHAMENTO | NUMBER | Y | cÃ³digo do fechamento |
| 19 | DS_OBSERVACAO | VARCHAR2 | Y | observaÃ§Ã£o |
| 20 | CD_TRIAGEM_ATENDIMENTO | NUMBER | Y | cÃ³digo da triagem do atendimento |
| 21 | DT_REFERENCIA | DATE | Y | data de referÃªncia |
| 22 | CD_PRESTADOR | NUMBER | Y | cÃ³digo do prestador |
| 23 | SN_FINALIZADO | VARCHAR2 | Y | sim-nÃ£o finalizado |
| 24 | CD_REGISTRO_CLINICO | NUMBER | Y | cÃ³digo do registro clÃ­nico |
| 25 | CD_SINAL_VITAL | NUMBER | Y | cÃ³digo identificador do sinal vital |
| 26 | CD_SINAL_VITAL_INTEGRA | VARCHAR2 | Y | cÃ³digo identificador do sinal vital depara |
| 27 | VALOR | VARCHAR2 | Y | valor do sinal vital |
| 28 | CD_INSTRUMENTO_AFERICAO | NUMBER | Y | cÃ³digo do instrumento usado na aferiÃ§Ã£o |
| 29 | SN_RELEVANTE | VARCHAR2 | Y | sim/nÃ£o relevante |
| 30 | CD_UNIDADE_AFERICAO | NUMBER | Y | cÃ³digo da unidade de aferiÃ§Ã£o |
| 31 | SN_ATIVO | VARCHAR2 | Y | sim/nÃ£o ativo |
| 32 | NR_SERIE_EQUIPAMENTO | NUMBER | Y | nÃºmero de sÃ©rie do equipamento que foi feita a verificaÃ§Ã£o de glicemia capilar |
| 33 | NR_LOTE_FITA | NUMBER | Y | nÃºmero do lote da fita que foi utilizada para fazer a verificaÃ§Ã£o de glicemia capilar |
| 34 | LO_LAUDO_AFERICAO | BLOB | Y | laudo pdf para o registro de aferiÃ§Ã£o de glicemia capilar |
| 35 | CD_IMV_LOG_REQUISICAO | NUMBER | Y |  |
| 36 | CD_SISTEMA_ORIGEM | VARCHAR2 | Y |  |
| 37 | CD_IT_COLETA_GLICEMIA | NUMBER | Y | cÃ³digo do item da coleta glicemia |
| 38 | CD_LEITO | NUMBER | Y | cÃ³digo do leito mv |
| 39 | DS_LEITO | VARCHAR2 | Y | descriÃ§Ã£o do leito mv |
| 40 | CD_LEITO_INTEGRA | VARCHAR2 | Y | cÃ³digo do leito de-para |
| 41 | CD_UNID_INTERNACAO | NUMBER | Y | cÃ³digo da unidade de internaÃ§Ã£o mv |
| 42 | CD_UNID_INTERNACAO_INTEGRA | VARCHAR2 | Y | cÃ³digo da unidade de internaÃ§Ã£o de-para |
| 43 | CD_PACIENTE | NUMBER | Y | cÃ³digo do paciente mv |
| 44 | CD_PACIENTE_INTEGRA | VARCHAR2 | Y | cÃ³digo do paciente de-para |
| 45 | CD_DOCUMENTO_CLINICO | NUMBER | Y | cÃ³digo do documento clÃ­nico |
| 46 | TP_REG_SINAL_VITAL | VARCHAR2 | Y | tipo de sinal vital (texto, string, number) na obx |

---

## MVINTEGRA.IMV_COMPRA
> TABELA PARA INTEGRAÇÃO DE COMPRAS MODELO NOVO IMVW

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IMV_COMPRA | NUMBER | N | CÓDIGO SEQUENCIAL DA INTEGRAÇÃO |
| 2 | TP_FLUXO | VARCHAR2 | N | IDENTIFICADOR DO FLUXO DA INFORMAÇÃO (S - SAÍDA, E - ENTRADA) |
| 3 | TP_STATUS | VARCHAR2 | N | IDENTIFICAÇÃO DA SITUAÇÃO ATUAL DO REGISTRO (A - AGUARDANDO, T - TRANSMITIDO E E - ERRO) |
| 4 | DS_ERRO | VARCHAR2 | Y | DESCRIÇÃO DO ERRO QUANDO OCORRER |
| 5 | DT_GERADO | DATE | N | DATA DO REGISTRO GERADO NA INTEGRAÇÃO |
| 6 | DT_PROCESSADO | DATE | Y | DATA EM QUE O REGISTRO FOI INTEGRADO |
| 7 | TP_MOVIMENTO | VARCHAR2 | N | TIPO DO MOVIMENTO (I - INCLUSÃO, A - ALTERAÇÃO E E - EXCLUSÃO) |
| 8 | TP_REGISTRO | VARCHAR2 | N | TIPO DO REGISTRO DA INTEGRAÇÃO (001 - REGISTRO REFERENTE A PESSOA) |
| 9 | CD_MULTI_EMPRESA | NUMBER | N | CÓDIGO DA MULTI-EMPRESA |
| 10 | CD_MULTI_EMPRESA_INTEGRA | VARCHAR2 | Y | CÓDIGO DA MULTI-EMPRESA (DE-PARA) |
| 11 | CD_REGISTRO_PRINCIPAL | NUMBER | Y |  |
| 12 | CD_REGISTRO_PAI | NUMBER | Y |  |
| 13 | CD_ORDEM_COMPRA | NUMBER | Y | CÓDIGO DA ORDEM DE COMPRAS |
| 14 | CD_ORDEM_COMPRA_INTEGRA | VARCHAR2 | Y | CÓDIGO DA ORDEM DE COMPRAS (DE-PARA) |
| 15 | CD_SOLICITACAO_COMPRA | NUMBER | Y | CÓDIGO DA SOLICITAÇÃO DE COMPRAS |
| 16 | CD_SOLICITACAO_COMPRA_INTEGRA | VARCHAR2 | Y | CÓDIGO DA SOLICITAÇÃO DE COMPRAS (DE-PARA) |
| 17 | CD_ENTRADA_DOCUMENTO | NUMBER | Y | CÓDIGO DA ENTRADA DO DOCUMENTO |
| 18 | CD_ENTRADA_DOCUMENTO_INTEGRA | VARCHAR2 | Y | CÓDIGO DA ENTRADA DO DOCUMENTO (NF) (DE-PARA) |
| 19 | TP_MENSAGEM | VARCHAR2 | Y | TIPO DA MENSAGEM. SC-SOLICITAÇÃO DE COMPRAS, OC-ORDEM COMPRAS, NF-NOTA FISCAL, |
| 20 | CD_TIPO_DOCUMENTO | NUMBER | Y | TIPO DO DOCUMENTO |
| 21 | CD_TIPO_DOCUMENTO_INTEGRA | VARCHAR2 | Y | TIPO DO DOCUMENTO (DE-PARA) |
| 22 | DS_TIPO_DOCUMENTO | VARCHAR2 | Y | DESCRIÇÃO DO TIPO DE DOCUMENTO |
| 23 | NR_DOCUMENTO | VARCHAR2 | Y | NÚMERO DO DOCUMENTO |
| 24 | NR_SERIE | VARCHAR2 | Y | SÉRIE DO DOCUMENTOS |
| 25 | CD_CFOP | NUMBER | Y | ID CADASTRAL DO CFOP |
| 26 | CD_CFOP_INTEGRA | VARCHAR2 | Y | ID CADASTRAL DO CFOP (DE-PARA) |
| 27 | NR_CFOP | VARCHAR2 | Y | NÚMERO DO CFOP |
| 28 | DS_CFOP | VARCHAR2 | Y | DESCRIÇÃO DO CFOP |
| 29 | DT_EMISSAO | DATE | Y | DATA DE EMISSÃODO DOCUMENTO |
| 30 | DT_ENTRADA | DATE | Y | DATA DE ENTRADA DO DOCUMENTO |
| 31 | TP_ENTRADA | VARCHAR2 | Y | TIPO DE ENTRADA DO DOCUMENTO |
| 32 | NR_PROCESSO | NUMBER | Y | CÓDIGO DO PROCESSO NA LICITAÇÃO |
| 33 | NR_EMPENHO | VARCHAR2 | Y | NÚMERO DO EMPENHO |
| 34 | DT_SOLICITACAO | DATE | Y | DATA DE SOLICITAÇÃO/PEDIDO |
| 35 | DT_VALIDADE | DATE | Y | DATA DE VALIDADE |
| 36 | CD_SETOR | NUMBER | Y | CÓDIGO DO SETOR SOLICITANTE |
| 37 | CD_SETOR_INTEGRA | VARCHAR2 | Y | CÓDIGO DO SETOR SOLICITANTE (DE-PARA) |
| 38 | DS_SETOR | VARCHAR2 | Y | NOME DO SETOR SOLICITANTE |
| 39 | NM_SOLICITANTE | VARCHAR2 | Y | NOME DO SOLICITANTE |
| 40 | DS_USUARIO | VARCHAR2 | Y | NOME DO USUÁRIO RESPONSÁVEL PELA DIGITAÇÃO |
| 41 | CD_ESTOQUE | NUMBER | Y | CÓDIGO DO ESTOQUE |
| 42 | CD_ESTOQUE_INTEGRA | VARCHAR2 | Y | CÓDIGO DO ESTOQUE (DE-PARA) |
| 43 | DS_ESTOQUE | VARCHAR2 | Y | DESCRIÇÃO DO ESTOQUE |
| 44 | CD_MOTIVO_SOLICITACAO | NUMBER | Y | CÓDIGO DO MOTIVO DE SOLICITAÇÃO DO PEDIDO |
| 45 | CD_MOTIVO_SOLICITACAO_INTEGRA | VARCHAR2 | Y | CÓDIGO DO MOTIVO DE SOLICITAÇÃO DO PEDIDO (DE-PARA) |
| 46 | DS_MOTIVO_SOLICITACAO | VARCHAR2 | Y | DESCRIÇÃO DO MOTIVO DE SOLICITAÇÃO DO PEDIDO |
| 47 | CD_COMPRADOR | NUMBER | Y | CÓDIGO DO COMPRADOR |
| 48 | CD_COMPRADOR_INTEGRA | VARCHAR2 | Y | CÓDIGO DO COMPRADOR (DE-PARA) |
| 49 | DS_COMPRADOR | VARCHAR2 | Y | NOME DO COMPRADOR |
| 50 | TP_PEDIDO | VARCHAR2 | Y | TIPO DO PEDIDO/SOLICITAÇÃO (PRODUTO/SERVIÇO) |
| 51 | SN_URGENTE | VARCHAR2 | Y | IDENTIFICA SE O PEDIDO/SOLICITAÇÃO É UMA COMPRAR DE URGÊNCIA |
| 52 | TP_SITUACAO | VARCHAR2 | Y | SITUAÇÃO DO REGISTRO |
| 53 | SN_CONSIGNADO | VARCHAR2 | Y | IDENTIFICA SE O DOCUMENTO É REFERENTE A ITENS CONSIGNADOS |
| 54 | SN_APLICACAO_DIRETA | VARCHAR2 | Y | IDENTIFICA SE O TIPO DE ENTRADA É POR APLICAÇÃO DIRETA |
| 55 | TP_APLICACAO_DIRETA | VARCHAR2 | Y | IDENTIFICA O TIPO DE APLICAÇÃO DIRETA DA ENTRADA |
| 56 | CD_AVISO_CIRURGIA | NUMBER | Y | CÓDIGO DO AVIDO DE CIRURGIA, PARA COMPRAS DIRETA PARA PACIENTES |
| 57 | CD_ATENDIMENTO | NUMBER | Y | CÓDIGO DO ATENDIMENTO DO PACIENTE |
| 58 | CD_FORNECEDOR | NUMBER | Y | CÓDIGO DO FORNECEDOR |
| 59 | CD_FORNECEDOR_INTEGRA | VARCHAR2 | Y | CÓDIGO DO FORNECEDOR (DE-PARA) |
| 60 | DS_FORNECEDOR | VARCHAR2 | Y | RAZAO SOCIAL/FANTASIA DO FORNECEDOR |
| 61 | NR_CNPJ_CPF | VARCHAR2 | Y | NÚMERO DO CNPJ/CPF DO FORNECEDOR/PRESTADOR DE SERVIÇOS |
| 62 | CD_CONDICAO_PAGAMENTO | NUMBER | Y | CÓDIGO DA CONDIÇÃO DE PAGAMENTO |
| 63 | CD_CONDICAO_PAGAMENTO_INTEGRA | VARCHAR2 | Y | CÓDIGO DA CONDIÇÃO DE PAGAMENTO (DE-PARA) |
| 64 | DS_CONDICAO_PAGAMENTO | VARCHAR2 | Y | DESCRIÇÃO DA CONDIÇÃO DE PAGAMENTO |
| 65 | DT_INICIO_ENTREGA | DATE | Y | DATA DE INICIO DA ENTREGA DOS MATERIAIS/SERVIÇOS |
| 66 | DT_FINAL_ENTREGA | DATE | Y | DATA FINAL DA ENTREGA DOS MATERIAIS/SERVIÇOS |
| 67 | TP_MODALIDADE_COMPRA | VARCHAR2 | Y | IDENTIFICA A MODEDALIDADE DA COMPRA (C-COTAÇÃO, A-ACORDO) |
| 68 | TP_MODALIDADE_COMPRA_INTEGRA | VARCHAR2 | Y | IDENTIFICA A MODEDALIDADE DA COMPRA (DE-PARA) |
| 69 | DS_MODALIDADE_COMPRA | VARCHAR2 | Y | DESCRIÇÃO DA MODALIDADE DE COMPRAS |
| 70 | TP_FRETE | VARCHAR2 | Y | TIPO DO FRETE |
| 71 | DS_FRETE | VARCHAR2 | Y | DESCRIÇÃO DO TIPO DO FRETE |
| 72 | TP_FRETE_INTEGRA | VARCHAR2 | Y | TIPO DO FRETE (DE-PARA) |
| 73 | SN_FRETE_NOTA | VARCHAR2 | Y | INDICA SE O FRETE ESTA INCLUSO NA NOTA. |
| 74 | VL_PERC_FRETE | NUMBER | Y | VALOR PERCENTUAL DO FRETE |
| 75 | VL_FRETE | NUMBER | Y | VALOR DO FRETE |
| 76 | CD_FORNECEDOR_FRETE | NUMBER | Y | CÓDIGO DO FORNECEDOR DO FRETE |
| 77 | CD_FORNECEDOR_FRETE_INTEGRA | VARCHAR2 | Y | CÓDIGO DO FORNECEDOR DO FRETE (DE-PARA) |
| 78 | DS_FORNECEDOR_FRETE | VARCHAR2 | Y | RAZÃO/NOME DO FORNECEDOR DO FRETE |
| 79 | NR_CNPJ_CPF_FRETE | VARCHAR2 | Y | NUMERO DO CNPJ DO FORNECEDOR DE FRETE |
| 80 | CD_PORTADOR | NUMBER | Y | CÓDIGO DO PORTADOR |
| 81 | CD_PORTADOR_INTEGRA | VARCHAR2 | Y | CÓDIGO DO PORTADOR (DE-PARA) |
| 82 | DS_PORTADOR | VARCHAR2 | Y | DESCRIÇÃO DO PORTADOR |
| 83 | NR_CONHECIMENTO | VARCHAR2 | Y | NUMERO DO CONHECIMENTO |
| 84 | NR_SERIE_FRETE | VARCHAR2 | Y | NÚMERO DE SÉRIE DO CONHECIMENTO |
| 85 | DT_VENCIMENTO_FRETE | DATE | Y | DATA DE VENCIMENTO DO FRETE |
| 86 | DT_CANCELAMENTO | DATE | Y |  |
| 87 | CD_MOTIVO_CANCELAMENTO | NUMBER | Y |  |
| 88 | CD_MOTIVO_CANCELAMENTO_INTEGRA | VARCHAR2 | Y |  |
| 89 | DS_MOTIVO_CANCELAMENTO | VARCHAR2 | Y |  |
| 90 | SN_AUTORIZADO | VARCHAR2 | Y |  |
| 91 | DT_AUTORIZACAO | DATE | Y |  |
| 92 | CD_USUARIO_AUTORIZADOR | VARCHAR2 | Y |  |
| 93 | DS_USUARIO_AUTORIZADOR | VARCHAR2 | Y |  |
| 94 | DS_ORDEM_DE_COMPRA | VARCHAR2 | Y |  |
| 95 | NR_PARCELA | NUMBER | Y |  |
| 96 | DT_PARCELA | DATE | Y |  |
| 97 | CD_PRODUTO | NUMBER | Y | CÓDIGO DO PRODUTO |
| 98 | CD_PRODUTO_INTEGRA | VARCHAR2 | Y | CÓDIGO DO PRODUTO (DE-PARA) |
| 99 | DS_PRODUTO | VARCHAR2 | Y | DESCRIÇÃO DO PRODUTO |
| 100 | DS_CODIGO_BARRAS | VARCHAR2 | Y | CÓDIGO DE BARRAS DO PRODUTO |
| 101 | DS_MARCA_FABRICANTE | VARCHAR2 | Y | MARCA OU FABRICANTE DO PRODUTO |
| 102 | QT_PRODUTO | NUMBER | Y | QUANTIDADE DO PRODUTO |
| 103 | CD_UNI_PRO | NUMBER | Y | CÓDIGO INTERNO DA UNIDADE DO PRODUTO |
| 104 | CD_UNIDADE | VARCHAR2 | Y | CÓDIGO DA UNIDADE DO PRODUTO |
| 105 | CD_EMBALAGEM | VARCHAR2 | Y | CÓDIIGO DA EMBALAGEM DO PRODUTO |
| 106 | DS_EMBALAGEM | VARCHAR2 | Y | DESCRIÇÃO DA EMBALAGEM DO PRODUTO |
| 107 | VL_FATOR | NUMBER | Y | DATA DE VALIDADE DO LOTE |
| 108 | CD_LOTE | VARCHAR2 | Y | NUMERO DO LOTE DO PRODUTO |
| 109 | DT_VALIDADE_LOTE | DATE | Y | DATA DE VALIDADE DO PRODUTO |
| 110 | VL_UNITARIO | NUMBER | Y | VALOR UNITÁRIO DO PRODUTO/SERVIÇO |
| 111 | VL_PERC_ISS | NUMBER | Y | VALOR PERCENTUAL DO ISS |
| 112 | VL_ISS | NUMBER | Y | VALOR DO ISS |
| 113 | VL_PERC_IPI | NUMBER | Y | VALOR PERCENTUAL DE IPI |
| 114 | VL_IPI | NUMBER | Y | VALOR DO IPI DO PRODUTO |
| 115 | VL_PERC_ICMS | NUMBER | Y | VALOR PERCENTUAL DO ICMS |
| 116 | VL_ICMS | NUMBER | Y | VALOR DO ICMS |
| 117 | VL_PERC_DESCONTO | NUMBER | Y | VALOR PERCENTUAL DO DESCONTO |
| 118 | VL_DESCONTO | NUMBER | Y | VALOR DO DESCONTO |
| 119 | VL_PERC_ACRESCIMO | NUMBER | Y | VALOR PERCENTUAL DO ACRESCIMO |
| 120 | VL_ACRESCIMO | NUMBER | Y | VALOR ACRESCIMO |
| 121 | VL_OUTROS | NUMBER | Y | OUTROS VALORES |
| 122 | VL_BASE_CALCULO | NUMBER | Y | BALSE DE CALCULO |
| 123 | VL_CALCULADO | NUMBER | Y | VALOR CALCULADO |
| 124 | VL_TOTAL | NUMBER | Y | VALOR TOTAL DO DOCUMENTO |
| 125 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 126 | DS_UNIDADE | VARCHAR2 | Y | DESCRIÇÃO DA UNIDADE |
| 127 | DT_IMPRESSAO | DATE | Y | DATA DA IMPRESSÃO DA ORDEM DE COMPRA |
| 128 | SN_EMITIDO_ESTOQUE | VARCHAR2 | Y | OBSERVAÇÕES DO FORNECEDOR |
| 129 | DS_OBSERVACAO_FORNECEDOR | VARCHAR2 | Y |  |
| 130 | SN_RESPONDIDA | VARCHAR2 | Y | INDICA SE A ORDEM DE COMPRA FOI RESPONDIDA |
| 131 | DT_ENVIO_EMAIL_PARA_FORNECEDOR | DATE | Y | DATA DE ENVIO DE EMAIL PARA O FORNECEDOR |
| 132 | SN_EMAIL_ENVIADO_PARA_FORN | VARCHAR2 | Y | INDICA SE SERÁ ENVIADO EMAIL PARA O FORNECEDOR |
| 133 | CD_ITORD_PRO_INTEGRA | VARCHAR2 | Y | CÓDIGO DOS INTENS DA ORDEM DE COMPRA (DE-PARA) |
| 134 | CD_UNI_PRO_INTEGRA | VARCHAR2 | Y | CÓDIGO INTEGRA DOS INTENS DA ORDEM DE COMPRA |
| 135 | CD_ENTRADA_PRODUTO | NUMBER | Y | CÓDIGO DE ENTRADA DO PRODUTO |
| 136 | CD_ENTRADA_PRODUTO_INTEGRA | VARCHAR2 | Y | CÓDIGO DA ENTRADA DO PRODUTO (DE-PARA) |
| 137 | TP_NOTA_FISCAL | VARCHAR2 | Y | TIPO DA NOTA FISCAL |
| 138 | TP_MVTO_ESTOQUE | VARCHAR2 | Y | TIPO DA MOVIMENTACAO DE ESTOQUE |
| 139 | HR_ENTRADA | DATE | Y | HORA DA ENTRADA DO DOCUMENTO |
| 140 | SN_INCLUSAO_NOTA | VARCHAR2 | Y | INDICA INCLUSÃO DA NOTA |
| 141 | TP_ENTREGA | VARCHAR2 | Y | TIPO DE ENTREGA |
| 142 | DT_VENCIMENTO | DATE | Y | DATA DO VENCIMENTO |
| 143 | CD_ESPECIE | NUMBER | Y | CÓDIGO DE ESPECIE DO PRODUTO |
| 144 | CD_ESPECIE_INTEGRA | VARCHAR2 | Y | CÓDIGO DE ESPECIE DO PRODUTO (DE-PARA) |
| 145 | DS_ESPECIE | VARCHAR2 | Y | DESCRIÇÃO DE ESPECIE DO PRODUTO |
| 146 | CD_CLASSE | NUMBER | Y | CÓDIGO DA CLASSE DO PRODUTO |
| 147 | CD_CLASSE_INTEGRA | VARCHAR2 | Y | CÓDIGO DE CLASSE DO PRODUTO (DE-PARA) |
| 148 | DS_CLASSE | VARCHAR2 | Y | DESCRIÇÃO DA CLASSE DO PRODUTO |
| 149 | CD_SUB_CLA | NUMBER | Y | CÓDIGO DA SUB-CLASSE DO PRODUTO |
| 150 | CD_SUB_CLA_INTEGRA | VARCHAR2 | Y | CÓDIGO DA SUB-CLASSE DO PRODUTO (DE-PARA) |
| 151 | DS_SUB_CLA | VARCHAR2 | Y | DESCRIÇÃO DA SUB-CLASSE DO PRODUTO |
| 152 | QT_ENTRADA | NUMBER | Y | QUANTIDADE DA ENTRADA DO PRODUTO |
| 153 | VL_CUSTO_REAL | NUMBER | Y | VALOR DE CUSTO DO PRODUTO |
| 154 | VL_TOTAL_CUSTO_REAL | NUMBER | Y | VALOR TOTAL DE CUSTO DO PRODUTO |
| 155 | TP_MODALIDADE_EMPRESTIMO | VARCHAR2 | Y | TIPO DE MODALIDADE DE EMPRESTIMO DO PRODUTO |
| 156 | CD_IMV_LOG_REQUISICAO | NUMBER | Y | CÓDIGO DA MENSAGEM QUE ESTÁ NA MVINTEGRA.INV_LOG_REQUISICAO QUE ORIGINOU ESTE REGISTRO. |
| 157 | CD_COLETA | NUMBER | Y | CÓDIGO DA COLETA DE PREÇOS |
| 158 | CD_COLETA_INTEGRA | VARCHAR2 | Y | CÓDIGO DA COLETA DE PREÇOS DE-PARA |
| 159 | DS_COLETA | VARCHAR2 | Y | DESCRIÇÃO DA COLETA DE PREÇOS |
| 160 | SN_ESTIMATIVA | NUMBER | Y | VERIFICA SE A COLETA SERÁ UMA ESTIMATIVA DE PREÇO OU UMA COLETA DE PREÇO |
| 161 | CD_COLETA_TEM | NUMBER | Y | ARMAZENA O CODIGO DA ESTIMATIVA ASSOCIADA A COLETA |
| 162 | CD_SISTEMA_ORIGEM | VARCHAR2 | Y | COLUNA QUE VAI CONTER O CODIGO DO SISTEMA ORIGEM DA MENSAGEM, USADA NA ENTRADA DE MENSAGENS |
| 163 | DT_CONCLUSAO | DATE | Y | DATA DA CONCLUSÃO DE ENTRADA |
| 164 | QT_ATENDIDA | NUMBER | Y | QUANTIDADE ATENDIDA |
| 165 | CD_SERVICO | NUMBER | Y | CODIGO DO SERVICO |
| 166 | CD_SERVICO_INTEGRA | VARCHAR2 | Y | CODIGO DO SERVICO DE-PARA |
| 167 | DS_SERVICO | VARCHAR2 | Y | DESCRIÇÃO DO SERVIÇO |
| 168 | CD_OFICINA | NUMBER | Y | CODIGO DA OFICINA |
| 169 | CD_OFICINA_INTEGRA | VARCHAR2 | Y | CODIGO DA OFICINA DE-PARA |
| 170 | DS_OFICINA | VARCHAR2 | Y | DESCRICAO DA OFICINA |
| 171 | CD_UNIDADE_INTEGRA | VARCHAR2 | Y | CODIGO DA UNIDADE DE-PARA |
| 172 | CD_JUSTIFICATIVA | VARCHAR2 | Y | CODIGO DA JUSTIFICATIVA DO MOTIVO DE NÃO TER ORDEM DE COMPRA |
| 173 | CD_JUSTIFICATIVA_INTEGRA | VARCHAR2 | Y | CODIGO DA JUSTIFICATIVA DO MOTIVO DE NÃO TER ORDEM DE COMPRA DE-PARA |
| 174 | DS_JUSTIFICATIVA | VARCHAR2 | Y | DESCRIÇÃO DA JUSTIFICATIVA DO MOTIVO DE NÃO TER ORDEM DE COMPRA |
| 175 | VL_BASE_SUBSTITUICAO_TRIB | NUMBER | Y | VALOR BASE PARA SUBSTITUIÇÃO TRIBUTÁRIA |
| 176 | VL_CALC_SUBSTITUICAO_TRIB | NUMBER | Y | VALOR CALCULO PARA SUBSTITUIÇÃO TRIBUTÁRIA |
| 177 | DS_DATA_MATRIX | VARCHAR2 | Y | CÓDIGO DE BARRAS DA ETIQUETA DATA MATRIX |
| 178 | CD_DEVOLUCAO | NUMBER | Y | CÓDIGO DA DEVOLUÇÃO AO FORNECEDOR |
| 179 | CD_MOTIVO_DEVOLUCAO | NUMBER | Y | CÓDIGO DO MOTIVO DA DEVOLUÇÃO AO FORNECEDOR |
| 180 | CD_MOTIVO_DEVOLUCAO_INTEGRA | VARCHAR2 | Y | CÓDIGO DO MOTIVO DA DEVOLUÇÃO AO FORNECEDOR DE-PARA |
| 181 | DS_MOTIVO_DEVOLUCAO | VARCHAR2 | Y | DESCRIÇÃO DO MOTIVO DA DEVOLUÇÃO AO FORNECEDOR |
| 182 | DT_DEVOLUCAO | DATE | Y | DATA DA DEVOLUÇÃO AO FORNECEDOR |
| 183 | HR_DEVOLUCAO | DATE | Y | HORA DA DEVOLUÇÃO AO FORNECEDOR |
| 184 | TP_DEVOLUCAO | VARCHAR2 | Y | TIPO DA DEVOLUÇÃO AO FORNECEDOR |
| 185 | CD_ITDEV_FOR | NUMBER | Y | CÓDIGO DO ITEM DA DEVOLUÇÃO AO FORNECEDOR |
| 186 | QT_DEVOLVIDA | NUMBER | Y | QUANTIDADE DO ITEM NA DEVOLUÇÃO AO FORNECEDOR |
| 187 | CD_ITEM_ENTRADA_PRODUTO | NUMBER | Y | CODIGO DO ITEM DA ENTRADA DE PRODUTO DE-PARA |
| 188 | CD_ITEM_ENTRADA_PROD_INTEGRA | VARCHAR2 | Y |  |
| 189 | CD_SICAM | VARCHAR2 | Y | CÓDIGO SICAM DO PRODUTO |
| 190 | CD_SICAN | VARCHAR2 | Y | CÓDIGO SICAN DO PRODUTO |
| 191 | SN_OPME | VARCHAR2 | Y | INFORMA SE A SOLICITAÇÃO/ORDEM DE COMPRA É DO TIPO OPME |
| 192 | SN_ORD_COM_POR_PARCELA | VARCHAR2 | Y | INFORMA SE SERÁ CRIADA UMA ORDEM DE COMPRA POR PARCELA DE PROGRAMAÇÃO DE ENTREGA |
| 193 | CD_CON_PAG | NUMBER | Y | CÓDIGO DO CONTA A PAGAR |
| 194 | VL_RATEIO | NUMBER | Y | VALOR DO RATEIO |
| 195 | QT_RATEIO | NUMBER | Y | QUANTIDADE DE RATEIO |
| 196 | CD_CEN_CUS | VARCHAR2 | Y | CÓDIGO DO CENTRO DE CUSTO |
| 197 | CD_CEN_CUS_INTEGRA | VARCHAR2 | Y | CÓDIGO DE-PARA DO CENTRO DE CUSTO |
| 198 | CD_PROCEDIMENTO | NUMBER | Y | CÓDIGO DO PRODUTO OPMENEXO |
| 199 | DT_PROCEDIMENTO | DATE | Y | DATA DO PROCEDIMENTO DO AVISO DE CIRURGIA OU ATENDIMENTO |
| 200 | HR_PROCEDIMENTO | DATE | Y | HORA DO PROCEDIMENTO DO AVISO DE CIRURGIA OU ATENDIMENTO |
| 201 | CD_PACIENTE | NUMBER | Y | CÓDIGO DO PACIENTE |
| 202 | NM_PACIENTE | VARCHAR2 | Y | NOME DO PACIENTE |
| 203 | NM_PRESTADOR | VARCHAR2 | Y | NOME DO PRESTADOR |
| 204 | DS_CRM_PRESTADOR | VARCHAR2 | Y | CRM DO PRESTADOR |
| 205 | CD_CONVENIO | NUMBER | Y | CÓDIGO DO CONVÊNIO |
| 206 | NR_CNPJ_CONVENIO | VARCHAR2 | Y | CNPJ DO CONVÊNIO |
| 207 | CD_AGENDAMENTO | NUMBER | Y | CÓDIGO DO AGENDAMENTO |
| 208 | SN_ITEM_EXTRA | VARCHAR2 | Y | COLUNA PARA INTEGRAÇÃO MV X OPMENEXO, INFORMA SE O ITEM É EXTRA OU NÃO |
| 209 | TP_VALORIZACAO | VARCHAR2 | Y | COLUNA PARA INTEGRAÇÃO MV X OPMENEXO, INFORMA POR QUAL MÉTODO O ITEM FOI VALORIZADO |
| 210 | CD_PRODUTO_OPMENEXO | VARCHAR2 | Y |  |
| 211 | DT_CONFIRMACAO | DATE | Y | DATA DE CONFIRMAÇÃO DA ORDEM DE COMPRA NO SISTEMA TERCEIRO |
| 212 | NR_PRAZO_ENTREGA | NUMBER | Y | NÚMERO DE DIAS DE PRAZO DE ENTRAGA DA MERCADORIA |
| 213 | SN_ENCERRADO | VARCHAR2 | Y | IDENTIFICADOR DO CANCELAMENTO DA OC: SERÁ EXCLUIDO QUANDO N / SERÁ ENCERRADO QUANDO S |
| 214 | TP_CATEGORIA | VARCHAR2 | Y | TIPO DA CATEGORIA TIPOPROC QUE SERÁ ENVIADA AO ME |
| 215 | CD_SOLIC_COMPRA_AGRUPADA | VARCHAR2 | Y | CÓDIGO DA SOLICITAÇÃO DE COMPRAS AGRUPADAS DO ME |
| 216 | VL_AUTORIZADO | NUMBER | Y | VALOR AUTORIZADO |
| 217 | DT_MAXIMA | DATE | Y | DATA MÁXIMA DOS ITENS DE PROGRAMAÇÃO DE ENTREGA PARA O CABEÇALHO DA SOLICITAÇÃO DE COMPRA |
| 218 | SN_FECHADO | VARCHAR2 | Y | STATUS PARA O RECEBIMENTO DAS NOTAS FISCAIS DO MERCADO ELETRÔNICO. N - RECEBIDO PARCIALMENTE E S ... |
| 219 | NR_CHAVE_ACESSO | VARCHAR2 | Y |  |
| 220 | NM_FORNECEDOR | VARCHAR2 | Y |  |
| 221 | NR_SEQ | NUMBER | Y |  |
| 222 | NR_PROTOCOLO_INUTILIZACAO | NUMBER | Y |  |
| 223 | NR_PROTOCOLO_CANCELAMENTO | NUMBER | Y |  |
| 224 | NR_PROTOCOLO_AUTORIZACAO | NUMBER | Y |  |
| 225 | NR_NCM | NUMBER | Y |  |
| 226 | CD_SENHA | VARCHAR2 | Y |  |

---

## MVINTEGRA.IMV_CONFIGURACAO_CONDICAO_ENV
> Tabela de condic?o de execuc?o das integrac?es

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IMV_CONFIGURACAO_CONDIC_ENV | NUMBER | N | Chave primaria da tabela |
| 2 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da Empresa da condic?o de execuc?o |
| 3 | CD_IMV_CONFIGURACAO_SAIDA | NUMBER | N | Codigo da configurac?o de saida |
| 4 | CD_IMV_CONFIGURACAO_ELEMEN_XML | NUMBER | N | Codigo do elemento da configurac?o do XML a que pertence a condic?o |
| 5 | TP_DOCUMENTO | VARCHAR2 | N | Tipo de documento a que percente esta condic?o |
| 6 | TP_CONDICAO | VARCHAR2 | N | Tipo da condic?o de comparac?o. S?o validos: "=", "<>", ">", "<", ">=", "<=", "IN", "NOT IN", "BE... |
| 7 | DS_VALOR | VARCHAR2 | N | Valor da condic?o para execuc?o |

---

## MVINTEGRA.IMV_CONFIGURACAO_ELEMENTO_XML
> Tabela responsavel por guardar as configurac?es dos Elementos para o XML padr?o do JIntegra

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IMV_CONFIGURACAO_ELEMEN_XML | NUMBER | N | Codigo de identificac?o do registro |
| 2 | NM_ELEMENTO | VARCHAR2 | Y | Nome do elemendo no XML |
| 3 | TP_ELEMENTO | VARCHAR2 | Y | Tipo do elemento Ex: String, Date, Number |
| 4 | NM_COLUNA | VARCHAR2 | Y | Nome da coluna na tabela de integrac?o correspondente ao elemento no XML |
| 5 | CD_ELEMENTO_PAI | NUMBER | Y | Nome do elemento pai com relac?o ao elemento no XML |
| 6 | DS_MASCARA | VARCHAR2 | Y | Mascara usada pelo elemento |
| 7 | NR_ORDEM | NUMBER | N | Ordem que deve ser exibida no XML |
| 8 | DS_VERSOES_VALIDAS | VARCHAR2 | N | Vers?es do XML que este elemento e valido |
| 9 | CD_IMV_CONFIGURACAO_ENTID_XML | NUMBER | N | FK para tabela INTEGRA_CONFIG_ENT_XML_PAD |
| 10 | VL_FIXO | VARCHAR2 | Y | Valor que ira ser usado para ser parametro de select ou valor de inclus?o |
| 11 | SN_ATIVO | VARCHAR2 | Y | Informa se a configurac?o esta ativa ou n?o |
| 12 | CD_COPIA | NUMBER | Y | Codigo do elemento que sera feita a copia |
| 13 | SN_MENSAGEM_FORMATADA | VARCHAR2 | Y | Coluna que informa se a TAG vai ser incluida no XML formatado |
| 14 | SN_CDATA | VARCHAR2 | Y | Indica se a informac?o que sera colocada no elemnto deve ser incluida em um CDATA ou lida como um... |
| 15 | SN_BASE64 | VARCHAR2 | Y | Indica se a informac?o deve ser convertida para a base64 tanto na entrada quanto na saida |
| 16 | NR_POSICAO_INICIO_BASE64 | NUMBER | Y | Posic?o inicial onde o Decode da base64 sera aplicada |
| 17 | NR_POSICAO_FINAL_BASE64 | NUMBER | Y | Posic?o final onde o Decode da base64 sera aplicada |

---

## MVINTEGRA.IMV_CONFIGURACAO_ENTIDADE_XML
> Tabela responsavel por guardar as configurac?es dos tipos de registros para o XML padr?o do JIntegra

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IMV_CONFIGURACAO_ENTID_XML | NUMBER | N | Codigo de identificac?o do registro |
| 2 | NM_TABELA | VARCHAR2 | N | Nome da tabela em que o registro esta |
| 3 | TP_REGISTRO | VARCHAR2 | N | Tipo do registro Ex: 001, 003 |
| 4 | CD_REGISTRO_PAI | VARCHAR2 | Y | Se o registro n?o for um raiz |
| 5 | NM_ELEMENTO | VARCHAR2 | N | Nome do elemento no XML |
| 6 | DS_INTEGRACAO | VARCHAR2 | N | Tipo da integrac?o Ex: Paciente, Atendimento... |
| 7 | NM_COLUNA_PK | VARCHAR2 | N | Nome da coluna Primare Key da tabela... |
| 8 | SN_LISTA | VARCHAR2 | Y |  |
| 9 | TP_FLUXO | VARCHAR2 | Y |  |
| 10 | CD_PROCESSO_INTEGRACAO | VARCHAR2 | Y | Informa qual o PROCESSO_INTEGRACAO relacionado a esta configuracao |
| 11 | SN_BUSCA | VARCHAR2 | Y | Coluna que infoma que a configurac?o e de uma integrac?o de busca de dados |

---

## MVINTEGRA.IMV_CONFIGURACAO_FUNCAO_CONEC
> Tabela responsavel por guardar as configurac?es das Funcoes para processamentos de ENTRADA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IMV_CONFIGURACAO_FNC_CONEC | NUMBER | N | Codigo de identificac?o do registro |
| 2 | DS_INTEGRACAO | VARCHAR2 | N | Tipo da integrac?o Ex: Paciente, Atendimento... |
| 3 | DS_FUNCAO | VARCHAR2 | Y | Descricao da funcao que devera ser executada onde cada valor entre <> e o nome do elemento que de... |
| 4 | NM_ELEMENTO_INFO | VARCHAR2 | N | Elemento do XML que contem as informacoes necessarias para a requisicao |
| 5 | TP_REQUISICAO | VARCHAR2 | N | Tipo da requisicao Ex: BUSCA, PROCESSAMENTO |
| 6 | NM_ELEMENTO_RETORNO | VARCHAR2 | N | Nome do elemento que vai agrupar o retorno. |
| 7 | DS_SEQUENCE | VARCHAR2 | Y | Nome da Sequence de usada para inserc?o nas tabelas de Integrac?o. |
| 8 | CD_IMV_CONFIGURACAO_ENTID_XML | NUMBER | Y | Informa o codigo da configuracao do XML |
| 9 | SN_USA_ARQUIVO_XSLT | VARCHAR2 | Y | Identifica se o processo irá usar um arquivo de formatação (XSLT) |
| 10 | DS_ARQUIVO_XSLT | VARCHAR2 | Y | Arquivo XSLT responsável em fazer uma nova formatação no XML de retorno |

---

## MVINTEGRA.IMV_CONFIGURACAO_JOB
> tabela de status das mensagens de saida padr?#o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IMV_CONFIGURACAO_JOB | NUMBER | N | codigo configura???#o do job |
| 2 | DS_JOB | VARCHAR2 | N | nome do servi??o do job |
| 3 | DS_CRON | VARCHAR2 | N | configura???#o de tempo de execu???#o, em formato baseado no cron do unix |
| 4 | SN_ATIVO | VARCHAR2 | N | se o job esta ativo, S=sim, N=n?#o |
| 5 | TP_SINCRONISMO | VARCHAR2 | N | Coluna que informa se a job vai ser executada de forma SINCRONA ou ASSINCRONA |
| 6 | DS_MEDICAO_INTERVALO | VARCHAR2 | N | Coluna que contem o codigo da medic?o do intervalo da Thread |
| 7 | NR_INTERVALO | NUMBER | Y | Coluna que contem o intervalo de execuc?o da Thread |

---

## MVINTEGRA.IMV_CONFIGURACAO_REQUISICAO
> tabela que permite direcionar uma requisi???#o ao webservice a um servi??o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IMV_CONFIGURACAO_REQUISICAO | NUMBER | N | c??digo da configura???#o da requisi???#o |
| 2 | DS_TAG_SERVICO | VARCHAR2 | N | valor do elemento servico no xml |
| 3 | DS_SERVICO | VARCHAR2 | N | nome do servi??o que ser?! usado para processar o xml |
| 4 | CD_IMV_CONFIGURACAO_ENTID_XML | NUMBER | Y | Informa a qual configurac?o de XML esta entrada esta atrelada. |

---

## MVINTEGRA.IMV_CONFIGURACAO_SAIDA
> tabela que configura um ponto de integra???#o de saida

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IMV_CONFIGURACAO_SAIDA | NUMBER | N | codigo do ponto de integra???#o |
| 2 | DS_SAIDA | VARCHAR2 | N | descri???#o do ponto de integra???#o |
| 3 | CD_SISTEMA_DESTINO | VARCHAR2 | N | sistema ao qual a mensagem ser?! destinada |
| 4 | CD_EMPRESA_DESTINO | NUMBER | N | empresa ao qual a mensagem ser?! destinada |
| 5 | CD_CONFIGURACAO_JOB_FORMATACAO | NUMBER | Y | c??digo do job que executar?! este ponto de integra???#o para formata???#o da mensagem |
| 6 | CD_CONFIGURACAO_JOB_ENVIO | NUMBER | Y | c??digo do job que executar?! este ponto de integra???#o para envio da mensagem |
| 7 | CD_VERSAO | VARCHAR2 | Y | vers?#o do tipo de formata???#o do documento |
| 8 | SN_ATIVO | VARCHAR2 | N | se o job esta ativo, S=sim, N=n?#o |
| 9 | DS_IDENTIFICACAO_CLIENTE | VARCHAR2 | Y | Coluna usada para cadastrar um identificador para o Hospital. Esta informac?o sera colocada na TA... |
| 10 | CD_FILIAL_EMPRESA_DESTINO | VARCHAR2 | Y | Codigo da filial da empresa destino |
| 11 | SN_PROCESSA_RETORNO | VARCHAR2 | Y | Informa se o retorno de uma chamada ao WebService deve ser processado como uma entrada, no retorn... |
| 12 | SN_CONTROLAR_FILA | VARCHAR2 | N |  |

---

## MVINTEGRA.IMV_CONFIGURACAO_SAIDA_PARAM
> tabela de configurac?o dos pontos de integrac?o de saida

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IMV_CONFIGURACAO_SAIDA | NUMBER | N | codigo do ponto de integrac?o de saida |
| 2 | NM_PARAMETRO | VARCHAR2 | N | nome do parametro |
| 3 | DS_VALOR | VARCHAR2 | N | valor do parametro |
| 4 | CD_IMV_CONFIGURACAO_SAIDA_PAR | NUMBER | N |  |

---

## MVINTEGRA.IMV_CONFIGURACAO_SAIDA_TP_DOC
> tabela que relaciona tipos de documentos a um ponto de integrac?o de saida

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IMV_CONFIGURACAO_SAIDA | NUMBER | N | codigo do ponto de integrac?o de saida |
| 2 | TP_DOCUMENTO | VARCHAR2 | N | tipo de documento |
| 3 | CD_IMV_CONFIGURACAO_SAI_TP_DOC | NUMBER | N | Codigo do Tipo de DOcumento |
| 4 | CD_IMV_CONFIGURACAO_ENTID_XML | NUMBER | Y | Codigo de identificac?o da entidade referente a este tipo de documento |
| 5 | SN_USA_ARQUIVO_XSLT | VARCHAR2 | Y | Coluna que informa se o documento vai usar ou n?o um arquivo XSLT para formatac?o |
| 6 | TP_DEPARA | VARCHAR2 | Y | Tipo do DE-PARA que sera inserido na tabela de mvintegra.depara ao receber o retorno de uma requi... |
| 7 | DS_FUNCAO | VARCHAR2 | Y |  |

---

## MVINTEGRA.IMV_CONFIGURACAO_TIP_INTG_CNCT
> Tabela responsavel por guardar as configurac?es das Threads que vir?o pegar os registros

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IMV_CONFIG_TP_INTG_CNCT | NUMBER | N | Codigo de identificac?o do registro |
| 2 | DS_INTEGRACAO | VARCHAR2 | N | Tipo da integrac?o Ex: Paciente, Atendimento... |
| 3 | CD_THREAD | NUMBER | N | Codigo da Thread do CO que vira solicitar os registros |
| 4 | SN_ATIVO | VARCHAR2 | N | Informa se esta configurac?o esta ativa |
| 5 | CD_IMV_CONFIGURACAO_ENTID_XML | NUMBER | Y | Informa o codigo da configuracao do XML |

---

## MVINTEGRA.IMV_CONFIG_ALERTA_EMAIL
> Tabela de configuração de e-mail para envio

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IMV_CONFIG_ALERTA_EMAIL | NUMBER | N | Código da tabela. |
| 2 | DS_SERVIDOR | VARCHAR2 | Y | Servidor do smtp. |
| 3 | DS_PORTA | VARCHAR2 | Y | Porta do smtp. |
| 4 | DS_EMAIL | VARCHAR2 | Y | E-mail de origem de envio. |
| 5 | DS_USUARIO | VARCHAR2 | Y | Usuário do smtp. |
| 6 | DS_SENHA | VARCHAR2 | Y | Senha do smtp. |
| 7 | DS_DESTINATARIO | VARCHAR2 | Y | Destinatário que receberá os erros por e-mail. |
| 8 | NR_VERIFICAR_ERRO | NUMBER | Y | Intervalo de envio de erros por e-mail. |
| 9 | SN_ATIVAR | VARCHAR2 | N | Habilita a opção de envio de erros por e-mail (S/N). |
| 10 | SN_ESPECIFICO | VARCHAR2 | N | Habilita a opção caso queira enviar apenas para os documentos especificos (S/N). |

---

## MVINTEGRA.IMV_CONFIG_ENTID_XML_PROC_INTG
> Criac?o da tabela que faz a ligac?o entre a tabela IMV_CONFIGURACAO_ENTIDADE_XML e a tabela PROCESSO_INTEGRACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IMV_CONFIGURACAO_ENTID_XML | NUMBER | N | PK da tabela PROCESSO_INTEGRACAO |
| 2 | CD_PROCESSO_INTEGRACAO | VARCHAR2 | N |  |

---

## MVINTEGRA.IMV_CONFIG_ERRO_PROCESSO
> Esta tabela armazena destinatarios especificos por processo de integração

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IMV_CONFIG_ERRO_PROCESSO | NUMBER | N | Primary key da tabela |
| 2 | TP_DOCUMENTO | VARCHAR2 | N | Processo de integração em que ocorreu o erro |
| 3 | TP_FLUXO | VARCHAR2 | N | Processo de integração em que ocorreu o erro |
| 4 | DS_DESTINATARIOS | VARCHAR2 | Y | e-mails para os quais este erro será enviado. |
| 5 | CD_MULTI_EMPRESA | NUMBER | N | Empresa em que ocorreu o erro |

---

## MVINTEGRA.IMV_CONTABIL
> Tabela de integrac?o contabil

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IMV_CONTABIL | NUMBER | N | Codigo sequencial do registro na integrac?o |
| 2 | TP_FLUXO | VARCHAR2 | N | Tipo de fluxo do registro (E - Entrada / S - Saida) |
| 3 | TP_STATUS | VARCHAR2 | N | Status do registro (A - Aguardando / E - Erro / T - Transmitido / P - Em processamento) |
| 4 | DS_ERRO | VARCHAR2 | Y | Descric?o da mensagem de erro ocorrido no processamento da mensagem |
| 5 | DT_GERADO | DATE | N | Data de gerac?o do registro na tabela |
| 6 | DT_PROCESSADO | DATE | Y | Data de processamento do registro |
| 7 | TP_MOVIMENTO | VARCHAR2 | N | Tipo do movimento do registro (I - Inclus?o / A - Alterac?o / E - Exclus?o) |
| 8 | TP_REGISTRO | VARCHAR2 | N | Tipo do registro: 001 - Lote , 002 - Lancamentos, 003 - Rateio |
| 9 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da empresa no MV2000i |
| 10 | CD_MULTI_EMPRESA_INTEGRA | VARCHAR2 | Y | Codigo da empresa de-para |
| 11 | CD_REGISTRO_PRINCIPAL | NUMBER | Y | Identificador do registro principal da mensagem |
| 12 | CD_REGISTRO_PAI | NUMBER | Y | Identificador do registro pai da mensagem |
| 13 | CD_LANCAMENTO | NUMBER | Y | Codigo do lancamento contabil |
| 14 | CD_LANCAMENTO_SETOR | NUMBER | Y | Codigo do lancamento do setor |
| 15 | CD_MOVIMENTO | NUMBER | Y | Codigo do movimento contabil |
| 16 | CD_LOTE | NUMBER | Y | Codigo do lote |
| 17 | DS_LOTE | VARCHAR2 | Y | Descric?o do lote |
| 18 | DT_INICIAL_LCTO | DATE | Y | Data inicial de lancamentos |
| 19 | DT_FINAL_LCTO | DATE | Y | Data final de lancamentos |
| 20 | VL_LOTE | NUMBER | Y | Valor do lote |
| 21 | DT_LIBERADO | DATE | Y | Data de liberac?o do lote |
| 22 | DT_CRIACAO | DATE | Y | Data de criac?o do lote |
| 23 | CD_LOTE_PAI | NUMBER | Y | Codigo do lote pai |
| 24 | SN_LOTE_APURACAO_RESULTADO | VARCHAR2 | Y | Lote com apuracao de resultado? |
| 25 | DT_LANCAMENTO | DATE | Y | Data do lancamento do movimento |
| 26 | CD_REDUZIDO_DEBITO | NUMBER | Y | Codigo reduzido da conta Contabil Debito |
| 27 | CD_REDUZIDO_DEBITO_INTEGRA | VARCHAR2 | Y | Codigo reduzido da conta Contabil Debito (De-para) |
| 28 | CD_CONTABIL_DEBITO | VARCHAR2 | Y | Codigo da conta contabil Debito |
| 29 | CD_CONTABIL_DEBITO_INTEGRA | VARCHAR2 | Y | Codigo da conta contabil Debito (de-para) |
| 30 | DS_CONTABIL_DEBITO | VARCHAR2 | Y | Descric?o da conta contabil Debito |
| 31 | CD_SETOR_DEBITO | NUMBER | Y | Codigo do setor Debito |
| 32 | CD_SETOR_DEBITO_INTEGRA | VARCHAR2 | Y | Codigo do setor Debito (de-para) |
| 33 | CD_REDUZIDO_CREDITO | NUMBER | Y | Codigo reduzido da conta Contabil Credito |
| 34 | CD_REDUZIDO_CREDITO_INTEGRA | VARCHAR2 | Y | Codigo reduzido da conta Contabil Credito (de-para) |
| 35 | CD_CONTABIL_CREDITO | VARCHAR2 | Y | Codigo da conta coltabil Credito |
| 36 | CD_CONTABIL_CREDITO_INTEGRA | VARCHAR2 | Y | Codigo da conta contabil Credito |
| 37 | DS_CONTABIL_CREDITO | VARCHAR2 | Y | Descric?o da conta contabil Credito |
| 38 | CD_SETOR_CREDITO | NUMBER | Y | Codigo do setor Credito |
| 39 | CD_SETOR_CREDITO_INTEGRA | VARCHAR2 | Y | Codigo do setor Credito (de-para) |
| 40 | CD_HISTORICO_PADRAO | NUMBER | Y | Codigo do historico padr?o |
| 41 | CD_HISTORICO_PADRAO_INTEGRA | VARCHAR2 | Y | Codigo do historico padr?o (de-para) |
| 42 | DS_COMPLEMENTO_HISTORICO | VARCHAR2 | Y | Complemento do historico padr?o |
| 43 | CD_MOEDA | VARCHAR2 | Y | Codigo da moeda do lancamento |
| 44 | VL_MOEDA | NUMBER | Y | Valor da moeda do lancamento |
| 45 | VL_LANCAMENTO | NUMBER | Y | Valor do lancamento contabil |
| 46 | TP_ESTOQUE | VARCHAR2 | Y | Tipo do estoque |
| 47 | CD_ESPECIE | NUMBER | Y | Codigo da Especie do Produto |
| 48 | CD_ESPECIE_INTEGRA | VARCHAR2 | Y | Codigo da Especie de-para |
| 49 | CD_CLASSE | NUMBER | Y | Codigo da classe do Produto |
| 50 | CD_SUB_CLA | NUMBER | Y | Codigo da Sub-classe do Produto |
| 51 | VL_ESPECIE | NUMBER | Y | Valor dos movimentos de estoque agrupados por cada especie |
| 52 | VL_CLASSE | NUMBER | Y | Valor dos movimentos de estoque agrupados por cada classe |
| 53 | VL_SUB_CLA | NUMBER | Y | Valor dos movimentos de estoque agrupados por cada sub_classe |
| 54 | CD_CLASSE_INTEGRA | VARCHAR2 | Y | Codigo da classe do produto (de-para) |
| 55 | CD_SUB_CLA_INTEGRA | VARCHAR2 | Y | Codigo da sub-classe (de-para) |
| 56 | QT_LANCADO | NUMBER | Y | Quantidade lancada |
| 57 | CD_ESTOQUE_ORIGEM | NUMBER | Y | Codigo do estoque de origem |
| 58 | CD_ESTOQUE_ORIGEM_INTEGRA | NUMBER | Y | Codigo do estoque de origem |
| 59 | CD_ESTOQUE_DESTINO | NUMBER | Y | Codigo do estoque de destino |
| 60 | CD_ESTOQUE_DESTINO_INTEGRA | NUMBER | Y | Codigo do estoque de destino |
| 61 | CD_PRODUTO | NUMBER | Y | Codigo do produto |
| 62 | CD_PRODUTO_INTEGRA | VARCHAR2 | Y | Codigo do produto (de-para) |
| 63 | DS_PRODUTO | VARCHAR2 | Y | Descric?o do produto |
| 64 | QT_SAIDA | NUMBER | Y | Quantidade da saida |
| 65 | VL_SAIDA | NUMBER | Y | Valor da saida |
| 66 | QT_ENTRADA | NUMBER | Y | Quantidade da entrada |
| 67 | VL_ENTRADA | NUMBER | Y | Valor da entrada |
| 68 | TP_MODALIDADE_EMPRESTIMO | VARCHAR2 | Y | Tipo da modalidade do emprestimo |
| 69 | DS_LANCAMENTO | VARCHAR2 | Y | Descric?o do lancamento |
| 70 | CD_CEN_CUS_DEBITO_INTEGRA | VARCHAR2 | Y | Codigo do centro de custo para debito De-Para |
| 71 | CD_CEN_CUS_CREDITO_INTEGRA | VARCHAR2 | Y | Codigo do centro de custo para credito De-Para |
| 72 | DT_COMPETENCIA | DATE | Y | Data de competencia do fechamento do estoque |
| 73 | DH_REALIZACAO_FECHAMENTO | DATE | Y | Data do fechamento do estoque |
| 74 | CD_USUARIO_FECHAMENTO | VARCHAR2 | Y | Codigo do usuario de fechamento do estoque |
| 75 | DH_REALIZACAO_CONSOLIDACAO | DATE | Y |  |
| 76 | CD_USUARIO_CONSOLIDACAO | VARCHAR2 | Y | Codigo do usuario de consolidac?o do estoque |
| 77 | CD_SISTEMA_ORIGEM | VARCHAR2 | Y | Coluna que vai conter o codigo do sistema origem da mensagem, usada na entrada de mensagens |
| 78 | CD_IMV_LOG_REQUISICAO | NUMBER | Y | Codigo da mensagem que esta na mvintegra.inv_log_requisicao que originou este registro. |
| 79 | CD_LANCAMENTO_INTEGRA | VARCHAR2 | Y | Codigo do lancamento contabil (de-para) |
| 80 | CD_LANCAMENTO_SETOR_INTEGRA | VARCHAR2 | Y | Codigo do lancamento do setor (de-para) |
| 81 | CD_MOVIMENTO_INTEGRA | VARCHAR2 | Y | Codigo do movimento contabil (de-para) |
| 82 | CD_LOTE_INTEGRA | VARCHAR2 | Y | Codigo do lote (de-para) |
| 83 | CD_CEN_CUS_CREDITO | VARCHAR2 | Y | Codigo do centro de custo de credito |
| 84 | CD_CEN_CUS_DEBITO | VARCHAR2 | Y | Codigo do centro de custo de debito |

---

## MVINTEGRA.IMV_CONTROLE_AMOSTRA
> Tabela usada para realizar o controle de integrac?o de exames pela amostra

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AMOSTRA | NUMBER | N | Codigo da Solicitacao de Coleta. |
| 2 | CD_ITPED_LAB | NUMBER | N | Codigo Sequencial do Item de Pedido de Exame |
| 3 | DH_PROCESSADO | DATE | Y | Data de processamento da mensagem |
| 4 | CD_USUARIO | VARCHAR2 | N | Nome do usuario que solicitou o envio da mensagem |
| 5 | CD_EXA_LAB | NUMBER | Y |  |
| 6 | SN_PROCESSADO | VARCHAR2 | Y |  |

---

## MVINTEGRA.IMV_DATASUL_CLASSE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CLASSE | NUMBER | N |  |
| 2 | CD_ESPECIE | NUMBER | N |  |
| 3 | CD_CLASSE_DAT | VARCHAR2 | Y |  |

---

## MVINTEGRA.IMV_DATASUL_ESPECIE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ESPECIE | NUMBER | N |  |
| 2 | CD_ESPECIE_DAT | NUMBER | N |  |
| 3 | CD_UNIDADE | VARCHAR2 | N |  |
| 4 | CD_UNIDADE_DAT | VARCHAR2 | N |  |
| 5 | VL_FATOR_DAT | NUMBER | N |  |

---

## MVINTEGRA.IMV_DATASUL_UNID

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_UNIDADE | VARCHAR2 | N |  |
| 2 | CD_UNIDADE_DAT | VARCHAR2 | N |  |
| 3 | VL_FATOR_DAT | NUMBER | N |  |

---

## MVINTEGRA.IMV_FATURAMENTO
> Tabela de integrac?o com dados do faturamento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IMV_FATURAMENTO | NUMBER | N | Codigo identificador do registro (sequencial) |
| 2 | TP_FLUXO | VARCHAR2 | N | Tipo de fluxo do registro (E - Entrada / S - Saida) |
| 3 | TP_STATUS | VARCHAR2 | N | Status do registro (A - Aguardando / E - Erro / T - Transmitido / P - Em processamento) |
| 4 | DS_ERRO | VARCHAR2 | Y | Descric?o da mensagem de erro ocorrido no processamento da mensagem |
| 5 | DT_GERADO | DATE | N | Data de gerac?o do registro na tabela |
| 6 | DT_PROCESSADO | DATE | Y | Data de processamento do registro |
| 7 | TP_MOVIMENTO | VARCHAR2 | N | Tipo do movimento do registro (I - Inclus?o / A - Alterac?o / E - Exclus?o) |
| 8 | TP_REGISTRO | VARCHAR2 | N | Tipo do registro (001 - Informac?es da remessa / 002 ? Informac?es da conta do faturamento / 003 ... |
| 9 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da multi-empresa |
| 10 | CD_MULTI_EMPRESA_INTEGRA | VARCHAR2 | Y | Codigo de-para da multi-empresa |
| 11 | CD_REGISTRO_PRINCIPAL | NUMBER | Y | Codigo identificador do registro principal da mensagem |
| 12 | CD_REGISTRO_PAI | NUMBER | Y | Codigo identificador do registro pai da mensagem |
| 13 | CD_CONVENIO | NUMBER | Y | Codigo do convenio |
| 14 | CD_CONVENIO_INTEGRA | VARCHAR2 | Y | Codigo de identificac?o do convenio no sistmqa de terceiros |
| 15 | NM_CONVENIO | VARCHAR2 | Y | Descric?o do convenio |
| 16 | TP_CONVENIO | VARCHAR2 | Y | Tipo de convenio |
| 17 | CD_PLANO | NUMBER | Y | Codigo do plano de saude |
| 18 | CD_PLANO_INTEGRA | VARCHAR2 | Y | Codigo de identificac?o do plano no sistema de terceiros |
| 19 | DS_PLANO | VARCHAR2 | Y | Descric?o do plano |
| 20 | NM_TITULAR_PLANO | VARCHAR2 | Y | Nome do titular do plano de saude |
| 21 | CD_FATURA | NUMBER | Y | Codigo da fatura |
| 22 | DS_FATURA | VARCHAR2 | Y | Descric?o da Fatura |
| 23 | TP_FATURA | VARCHAR2 | Y | Tipo da Fatura |
| 24 | CD_APAC | NUMBER | Y | Codigo APAC |
| 25 | SN_APAC_PRINCIPAL | VARCHAR2 | Y | Identifica se a APAC e a principal |
| 26 | CD_SISCO_CITO | NUMBER | Y | Codigo do Citopatologico (SISCOLO) |
| 27 | CD_SISCO_HISTO | NUMBER | Y | Codigo do Histopatologico (SISCOLO) |
| 28 | DT_COMPETENCIA | DATE | Y | Competencia da Fatura |
| 29 | CD_REMESSA | NUMBER | Y | Codigo da remessa |
| 30 | TP_REMESSA | VARCHAR2 | Y | Tipo da remessa |
| 31 | DT_ABERTURA_REMESSA | DATE | Y | Data da abertura da remessa |
| 32 | DT_FECHAMENTO_REMESSA | DATE | Y | Data de fechamento da remessa |
| 33 | DT_ENTREGA_REMESSA | DATE | Y | Data de entrega da remessa |
| 34 | DT_PREVISTA_PGTO_REMESSA | DATE | Y | Data prevista de pagamento da remessa |
| 35 | CD_CONTA | NUMBER | Y | Codigo da conta |
| 36 | TP_CONTA | VARCHAR2 | Y | Identificador do tipo da conta. (H)ospitalar (A)ambulatorial |
| 37 | NR_GUIA | VARCHAR2 | Y | Numero da guia |
| 38 | DT_GUIA_AUTORIZADA | DATE | Y | Data de autorizac?o da guia de atendimento/exames |
| 39 | DT_GUIA_VALIDADE | DATE | Y | Data de validade da guia de atendimento/exames |
| 40 | CD_PACIENTE | NUMBER | Y | Codigo de identificac?o do Paciente |
| 41 | CD_PACIENTE_INTEGRA | VARCHAR2 | Y | Codigo de-para do paciente |
| 42 | NM_PACIENTE | VARCHAR2 | Y | Nome do paciente |
| 43 | NR_CNS | VARCHAR2 | Y | CNS do paciente |
| 44 | NR_ALTURA_PACIENTE | NUMBER | Y | Altura do paciente |
| 45 | NR_PESO_PACIENTE | NUMBER | Y | Peso do paciente |
| 46 | TP_PACIENTE | VARCHAR2 | Y | Tipo de Paciente |
| 47 | NR_CPF_PACIENTE | VARCHAR2 | Y | Cpf do paciente |
| 48 | NR_CARTEIRA | VARCHAR2 | Y | Numero da Carteira do paciente |
| 49 | CD_FAIXA_ETARIA | NUMBER | Y | Codigo da faixa etaria do paciente |
| 50 | CD_ATENDIMENTO | NUMBER | Y | Codigo do atendimento do paciente |
| 51 | TP_ATENDIMENTO | VARCHAR2 | Y | Tipo de atendimento |
| 52 | TP_ATENDIMENTO_INTEGRA | VARCHAR2 | Y |  |
| 53 | TP_ATENDIMENTO_TISS | NUMBER | Y | Tipo de atendimento TISS |
| 54 | CD_TIPO_ATENDIMENTO | NUMBER | Y | Codigo do tipo de atendimento |
| 55 | CD_TIPO_ATENDIMENTO_INTEGRA | VARCHAR2 | Y | Codigo de-para do tipo de atendimento |
| 56 | DS_TIPO_ATENDIMENTO | VARCHAR2 | Y | Descric?o do tipo de atendimento |
| 57 | CD_GRUPO_ATENDIMENTO | NUMBER | Y | Codigo do grupo de atendimento |
| 58 | CD_ORIGEM_ATENDIMENTO | NUMBER | Y | Codigo da origem de atendimento |
| 59 | CD_ORIGEM_ATENDIMENTO_INTEGRA | VARCHAR2 | Y | Codigo de-para da origem do atendimento |
| 60 | DS_ORIGEM_ATENDIMENTO | VARCHAR2 | Y | Descric?o da origem do atendimento |
| 61 | CD_SERVICO_DISPONIVEL | NUMBER | Y | Codigo do servico disponibilizado |
| 62 | CD_TIPO_ACOMODACAO | NUMBER | Y | Tipo da acomodac?o |
| 63 | CD_TIPO_ACOMODACAO_INTEGRA | VARCHAR2 | Y | Codigo de identificac?o da acomodac?o no sistema de terceiros |
| 64 | DS_TIPO_ACOMODACAO | VARCHAR2 | Y |  |
| 65 | DT_PERIODO_INICIO_CONTA | DATE | Y | Data do periodo inicial da conta |
| 66 | DT_PERIODO_FINAL_CONTA | DATE | Y | Data do periodo finla da conta |
| 67 | CD_PROCEDIMENTO | VARCHAR2 | Y | Codigo do procedimento |
| 68 | CD_PROCEDIMENTO_INTEGRA | VARCHAR2 | Y | Codigo do de identificac?o do procedimento no sistema de terceiros |
| 69 | DS_PROCEDIMENTO | VARCHAR2 | Y | Descric?o do procedimento |
| 70 | SN_PROCEDIMENTO_PRINCIPAL | VARCHAR2 | Y | Idenfica o procedimento principal |
| 71 | CD_LANCAMENTO | NUMBER | Y | Codigo do lancamento |
| 72 | DT_LANCAMENTO | DATE | Y | Data do lancamento |
| 73 | HR_LANCAMENTO | DATE | Y | Hora do lacamento |
| 74 | CD_GRUPO_FATURAMENTO | NUMBER | Y | Codigo do grupo de faturamento |
| 75 | CD_GRUPO_FATURAMENTO_INTEGRA | VARCHAR2 | Y | Codigo do grupo de faturamento (de-para) |
| 76 | CD_GRUPO_PROCEDIMENTO | NUMBER | Y | Codigo do grupo de procedimento |
| 77 | CD_GRUPO_PROCEDIMENTO_INTEGRA | VARCHAR2 | Y | Codigo do grupo de procedimento (de-para) |
| 78 | CD_PRESTADOR | NUMBER | Y | Codigo do prestador |
| 79 | CD_PRESTADOR_INTEGRA | VARCHAR2 | Y | Codigo do prestador (de-para) |
| 80 | NM_PRESTADOR | VARCHAR2 | Y | Nome do prestador |
| 81 | NR_CONSELHO_PRESTADOR | VARCHAR2 | Y | Numero do conselho do prestador |
| 82 | TP_CONSELHO_PRESTADOR | VARCHAR2 | Y | Tipo do conselho do prestador |
| 83 | CD_ANESTESISTA | NUMBER | Y | Codigo da anestesia |
| 84 | CD_ATIVIDADE_MEDICA | NUMBER | Y | Codigo da atividade medica |
| 85 | CD_ATIVIDADE_MEDICA_INTEGRA | VARCHAR2 | Y | Codigo da atividade medica (de-para) |
| 86 | CD_TIPO_VINCULO | NUMBER | Y | Codigo do vinculo do prestador |
| 87 | CD_TIPO_VINCULO_INTEGRA | VARCHAR2 | Y | Codigo do vinculo do prestador (de-para) |
| 88 | TP_PAGAMENTO | VARCHAR2 | Y | Tipo de pagamento |
| 89 | QT_PONTOS | NUMBER | Y | Quantidade de pontos |
| 90 | CD_ESPECIALIDADE | NUMBER | Y | Codigo da especialidade medica |
| 91 | CD_SETOR | NUMBER | Y | Codigo do setor |
| 92 | CD_SETOR_INTEGRA | VARCHAR2 | Y | Codigo do setor (de-para) |
| 93 | NM_SETOR | VARCHAR2 | Y | Nome do setor |
| 94 | QT_PROCEDIMENTO | NUMBER | Y | Quantidade do procedimento |
| 95 | VL_UNITARIO | NUMBER | Y | Valor unitario |
| 96 | VL_FILME_UNITARIO | NUMBER | Y | Valor unitario do filme |
| 97 | VL_HONORARIO_UNITARIO | NUMBER | Y | Valor unitario do honorario |
| 98 | VL_OPERACIONAL_UNITARIO | NUMBER | Y | Valor operacional unitario |
| 99 | VL_PERCENTUAL_PACIENTE | NUMBER | Y | Valor do percentual de participac?o do paciente |
| 100 | VL_SERVICO_PROFISSIONAL | NUMBER | Y | Valor do servico profissional |
| 101 | VL_SERVICO_HOSPITALAR | NUMBER | Y | Valor do servico hospitalar |
| 102 | VL_ANESTESISTA | NUMBER | Y | Valor da anestesia |
| 103 | VL_SADT | NUMBER | Y | Valor do servico SADT |
| 104 | VL_ATO | NUMBER | Y | Valor do ato medico |
| 105 | VL_ACRESCIMO | NUMBER | Y | Valor do acrescimo |
| 106 | VL_DESCONTO | NUMBER | Y | Valor do desconto |
| 107 | VL_TOTAL | NUMBER | Y | Valor total |
| 108 | SN_PERTENCE_PACOTE | VARCHAR2 | Y | Identifica se o procedimento pertence ou n?o a pacote |
| 109 | CD_FORNECEDOR | NUMBER | Y | Codigo do fornecedor da ortese & protese |
| 110 | CD_FORNECEDOR_INTEGRA | VARCHAR2 | Y | Codigo do fornecedor de ortese & protese no sistema do terceiro |
| 111 | NR_NOTA_FISCAL | VARCHAR2 | Y | Numero da Nota Fiscal |
| 112 | VL_NOTA_FISCAL | NUMBER | Y | Valor da nota fiscal |
| 113 | CD_SETOR_EXECUTANTE | NUMBER | Y | Codigo do setor executante |
| 114 | CD_SETOR_EXECUTANTE_INTEGRA | VARCHAR2 | Y | Codigo de-para do setor executante |
| 115 | NM_SETOR_EXECUTANTE | VARCHAR2 | Y | Nome do setor executante |
| 116 | DS_UNIDADE_PROCEDIMENTO | VARCHAR2 | Y | Unidade do procedimento |
| 117 | VL_PERCENTE_PAGAMENTO | NUMBER | Y | Percentual de pagamento (usado para ato cirurgico) |
| 118 | CD_PORTE_ANESTESICO | NUMBER | Y | Codigo do porte anestesico |
| 119 | CD_CID | VARCHAR2 | Y | Codiog do CID |
| 120 | CD_CID_SECUNDARIO | VARCHAR2 | Y | CID Secundario |
| 121 | CD_CID_CAUSA_ASSOC | VARCHAR2 | Y | CID causas associadas |
| 122 | TP_INF_PARTO | VARCHAR2 | Y | Informac?es sobre o Parto |
| 123 | TP_INF_RECEM_NASCIDO | VARCHAR2 | Y | Informac?es sobre o Recem-nascido |
| 124 | TP_INF_GRAVIDEZ | VARCHAR2 | Y | Informac?es sobre a Gravidez |
| 125 | CD_GUIA | VARCHAR2 | Y | Codigo da guia |
| 126 | NR_SENHA | VARCHAR2 | Y | Numero da senha da guia |
| 127 | SN_HORARIO_ESPECIAL | VARCHAR2 | Y | Identifica se o item foi realizado em horario especial |
| 128 | TP_GRUPO_PROCEDIMENTO | VARCHAR2 | Y | Tipo do grupo de procedimento |
| 129 | TP_VINCULO_PRESTADOR | VARCHAR2 | Y | Tipo do vinculo do prestador com o hospital |
| 130 | VL_PERC_ATO_CIRURGICO | NUMBER | Y | Percentual de pagamento em ato cirurgico (mesma via/via diferente) |
| 131 | VL_ORIGINAL_ITEM | NUMBER | Y | Valor original do item |
| 132 | CD_TIPO_INTERNACAO | NUMBER | Y | Tipo de internacao |
| 133 | CD_TIPO_INTERNACAO_INTEGRA | VARCHAR2 | Y | Tipo de internacao (de-para) |
| 134 | DT_INTERNACAO | DATE | Y | Data da internac?o do paciente |
| 135 | TP_REGIME_INTERNACAO | VARCHAR2 | Y | Tipo do regisme de internac?o |
| 136 | TP_CARATER_INTERNACAO | VARCHAR2 | Y | Tipo do carater da internac?o |
| 137 | DT_ALTA | DATE | Y | Data da alta do paciente |
| 138 | CD_MOTIVO_ALTA | NUMBER | Y | Codigo do motivo de alta |
| 139 | TP_MOTIVO_ALTA | VARCHAR2 | Y | Tipo do motivo de alta |
| 140 | CD_MOTIVO_ALTA_INTEGRA | VARCHAR2 | Y | Codigo do motivo de alta (de-para) |
| 141 | CID_ALTA | VARCHAR2 | Y | Cid da alta |
| 142 | SN_ABORTO | VARCHAR2 | Y | Identifica se houve aborto |
| 143 | SN_PARTO_SALA | VARCHAR2 | Y | Identifica que o parto do recem nascido foi na sala |
| 144 | SN_COMPLICACAO_NEO | VARCHAR2 | Y | Identifica que houve complicac?es no nascimento |
| 145 | SN_BAIXO_PESO | VARCHAR2 | Y | Identifica que o recem-nascido nasceu com baixo peso |
| 146 | SN_PARTO_CESARIA | VARCHAR2 | Y | Identifica se o parto foi por cesaria |
| 147 | DT_GUIA_SOLICITADA | DATE | Y | Data da solicitac?o da guia |
| 148 | TP_DOENCA | VARCHAR2 | Y | Tipo de doenca |
| 149 | QT_TEMPO_DOENCA | NUMBER | Y | Tempo da doeca |
| 150 | DS_UNIDADE_TEMPO_DOENCA | VARCHAR2 | Y | Unidade do tempo da doenca |
| 151 | TP_ACIDENTE | NUMBER | Y | Tipo de acidente: 0-Acidente/Doenca do Trabalho, 1-Acidente de Transito e 2-Outros Acidentes |
| 152 | TP_OBITO_MULHER | NUMBER | Y | Tipo de Obito feminino |
| 153 | SN_GESTACAO | VARCHAR2 | Y | Indica se Paciente esta em gestacao |
| 154 | SN_TRANSTORNO | VARCHAR2 | Y | Indica se paciente teve algum transtorno relacionado a gravidez |
| 155 | SN_COMPLICACAO | VARCHAR2 | Y | Indica se paciente teve alguma complicacao no periodo puerperio |
| 156 | NR_DECLARACAO_OBITO | NUMBER | Y | Numero da declarac?a de obito |
| 157 | SN_FATURAMENTO_SUS | VARCHAR2 | Y | Indica se corresponde a um faturamento SUS |
| 158 | CD_AUTORIZADOR | NUMBER | Y | Codigo identificador do autorizador |
| 159 | CD_AUTORIZADOR_INTEGRA | VARCHAR2 | Y | Codigo de-para identificador do autorizador |
| 160 | NM_AUTORIZADOR | VARCHAR2 | Y | Nome do autorizador |
| 161 | DT_INICIO_TRAT | DATE | Y | Data de inicio do tratamento |
| 162 | SN_INDICADO_TRANS | VARCHAR2 | Y | Indicado para transplante |
| 163 | SN_INSCRITO_LISTA | VARCHAR2 | Y | Inscrito na lista de espera de transplante |
| 164 | DT_INSCRITO_TANSPLANTE | DATE | Y | Data de inscric?o na lista de transplante |
| 165 | NR_TRANSPLANTE | NUMBER | Y | Numero de transplantes |
| 166 | DT_PRIMEIRO_TRANS | DATE | Y | Data do primeiro transplante |
| 167 | DT_SEGUNDO_TRANS | DATE | Y | Data do segundo transplante |
| 168 | DT_TERCEIRO_TRANS | DATE | Y | Data do terceiro transplante |
| 169 | QT_DIURESE | NUMBER | Y | Quantidade diurese |
| 170 | QT_GLICOSE | NUMBER | Y | Quantidade glicose |
| 171 | QT_ABULMINA | NUMBER | Y | Quantidade abulmina |
| 172 | QT_HB | NUMBER | Y | Quanidade HB |
| 173 | SN_ACESSO_VASCULAR | VARCHAR2 | Y | Acesso vascular |
| 174 | SN_ANTIGENO | VARCHAR2 | Y | Positivo/Negativo HBs Ag |
| 175 | SN_ULTRA_ABDOMINAL | VARCHAR2 | Y | Sim/N?o Sonografia Abnominal |
| 176 | QT_FISTOLA | NUMBER | Y | Quantidade intervenc?o de fistola |
| 177 | NR_TAXA_UREIA | NUMBER | Y | Taxa de reduc?o de ureia |
| 178 | SN_LISTA_CAPITACAO | VARCHAR2 | Y | Sim/N?o inscrito lista CNCDO |
| 179 | QT_CREATININA | NUMBER | Y | Quantidade creatinina |
| 180 | QT_UREIA_PRE | NUMBER | Y | Quantidade ureia pre |
| 181 | QT_UREIA_POS | NUMBER | Y | Quantidade ureia pos |
| 182 | SN_HEPATITE | VARCHAR2 | Y | Sim/N?o Hepatite |
| 183 | SN_TESTE_HBS | VARCHAR2 | Y | Sim/N?o HBSAG |
| 184 | SN_TESTE_HIV | VARCHAR2 | Y | Sim/N?o Teste HIV |
| 185 | SN_TESTE_HCV | VARCHAR2 | Y | Sim/N?o Teste HCV |
| 186 | SN_EXAME_HLA | VARCHAR2 | Y | Sim/N?o Exame HLA |
| 187 | CD_CBO | VARCHAR2 | Y | Codigo CBO |
| 188 | CD_CBO_INTEGRA | VARCHAR2 | Y | Codigo de-para CBO |
| 189 | DS_CBO | VARCHAR2 | Y | Descric?o CBO |
| 190 | CD_CARATER_ATENDIMENTO | NUMBER | Y | Codigo carater atendimento |
| 191 | CD_MOTIVO_COBRANCA | NUMBER | Y | Codigo motivo cobranca |
| 192 | CD_MOTIVO_COBRANCA_INTEGRA | VARCHAR2 | Y | Codigo de-para motivo cobranca |
| 193 | DS_MOTIVO_COBRANCA | VARCHAR2 | Y | Descric?o motivo cobranca |
| 194 | DT_OCORRENCIA | DATE | Y | Data da ocorrencia |
| 195 | NR_CNPJ | NUMBER | Y | CNPJ |
| 196 | CD_RESULTADO | VARCHAR2 | Y |  |
| 197 | CD_RESULTADO_INTEGRA | VARCHAR2 | Y |  |
| 198 | DS_RESULTADO | VARCHAR2 | Y |  |
| 199 | SN_METASTASE | VARCHAR2 | Y | Sim/N?o Metastase |
| 200 | CD_IMV_LOG_REQUISICAO | NUMBER | Y | Codigo da mensagem que esta na mvintegra.inv_log_requisicao que originou este registro. |
| 201 | DS_CARATER_ATENDIMENTO | VARCHAR2 | Y | Descric?o do carater atendimento |
| 202 | CD_CARATER_ATENDIMENTO_INTEGRA | VARCHAR2 | Y | Codigo sequencial carater de internac?o (de-para) |
| 203 | DS_ESPECIALIDADE | VARCHAR2 | Y | Descric?o da especialidade medica |
| 204 | TP_MODALIDADE_ATENDIMENTO | VARCHAR2 | Y | Tipo de modalidade do atendimento |
| 205 | DS_MODALIDADE_ATENDIMENTO | VARCHAR2 | Y | Descricao da modalidade do atendimento |
| 206 | CD_ATENDIMENTO_INTEGRA | VARCHAR2 | Y | Codigo sequencial do atendimento (de-para) |
| 207 | NR_CPF_PRESTADOR | VARCHAR2 | Y | Numero do CPF do prestador |
| 208 | NR_CNS_PRESTADOR | VARCHAR2 | Y | Numero do Cart?o Nacional de Saude do prestador |
| 209 | DS_CID | VARCHAR2 | Y | Descric?o do codigo internacional de doencas |
| 210 | DS_CID_SECUNDARIO | VARCHAR2 | Y | Descric?o do CID secundario |
| 211 | DS_TIP_ACOM | VARCHAR2 | Y | Descric?o do tipo de acomodac?o |
| 212 | DS_MOTIVO_ALTA | VARCHAR2 | Y | Descric?o do motivo da alta |
| 213 | CD_MOVIMENTO_FATURA | VARCHAR2 | Y | Codigo da movimentac?o de origem |
| 214 | CD_MOVIMENTO_FATURA_INTEGRA | VARCHAR2 | Y | Codigo da movimentac?o de origem De-Para |
| 215 | TP_MOVIMENTO_FATURA | VARCHAR2 | Y | Tipo da movimentac?o de origem |
| 216 | TP_MOVIMENTO_FATURA_INTEGRA | VARCHAR2 | Y | Tipo da movimentac?o de origem De-Para |
| 217 | VL_PERCENTUAL_CONVENIO | NUMBER | Y | Valor do percentual de participac?o do convenio |
| 218 | CD_SISTEMA_ORIGEM | VARCHAR2 | Y | Coluna que vai conter o codigo do sistema origem da mensagem, usada na entrada de mensagens |
| 219 | CD_CARATER_INTERNACAO | NUMBER | Y | Codigo do carater de internac?o |
| 220 | DS_CARATER_INTERNACAO | VARCHAR2 | Y | Descric?o do carater de internac?o |

---

## MVINTEGRA.IMV_FINANCEIRO
> Tabela de integrac?o financeira

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IMV_FINANCEIRO | NUMBER | N | Codigo sequencial do registro na integrac?o |
| 2 | TP_FLUXO | VARCHAR2 | N | Tipo de fluxo do registro (E - Entrada / S - Saida) |
| 3 | TP_STATUS | VARCHAR2 | N | Status do registro (A - Aguardando / E - Erro / T - Transmitido / P - Em processamento) |
| 4 | DS_ERRO | VARCHAR2 | Y | Descric?o da mensagem de erro ocorrido no processamento da mensagem |
| 5 | DT_GERADO | DATE | N | Data de gerac?o do registro na tabela |
| 6 | DT_PROCESSADO | DATE | Y | Data de processamento do registro |
| 7 | TP_MOVIMENTO | VARCHAR2 | N | Tipo do movimento do registro (I - Inclus?o / A - Alterac?o / E - Exclus?o) |
| 8 | TP_REGISTRO | VARCHAR2 | N | Identificac?o do tipo de registro existente: 001  ? Dados gerais da conta a pagar/receber / 002 ?... |
| 9 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da multi-empresa |
| 10 | CD_MULTI_EMPRESA_INTEGRA | VARCHAR2 | Y | Codigo de-para da multi-empresa |
| 11 | CD_REGISTRO_PRINCIPAL | NUMBER | Y | Codigo identificador do registro principal da mensagem |
| 12 | CD_REGISTRO_PAI | NUMBER | Y | Codigo identificador do registro pai da mensagem |
| 13 | CD_DOCUMENTO | NUMBER | Y | Codigo do documento |
| 14 | CD_DOCUMENTO_INTEGRA | VARCHAR2 | Y | Codigo de-para do documento |
| 15 | TP_DOCUMENTO | VARCHAR2 | Y | Identifica o tipo do documento: R ? Contas a Receber / P ? Contas a Pagar / N ? Nota Fiscal |
| 16 | TP_NATUREZA_DOCUMENTO | VARCHAR2 | Y | Identifica a natureza do documento: Contas a Receber: C ? Convenio / P ? Paciente / F ? Funcionar... |
| 17 | CD_TIPO_DOCUMENTO | NUMBER | Y | Tipo do documento |
| 18 | CD_TIPO_DOCUMENTO_INTEGRA | VARCHAR2 | Y | Tipo do documento (de-para) |
| 19 | DS_TIPO_DOCUMENTO | VARCHAR2 | Y | Descric?o do tipo do documento |
| 20 | DT_EMISSAO_DOCUMENTO | DATE | Y | Data de emiss?o do documento |
| 21 | CD_TITULO | NUMBER | Y | Codigo de identificac?o do titulo |
| 22 | CD_TITULO_INTEGRA | VARCHAR2 | Y | Codigo de-para de identificac?o do titulo |
| 23 | CD_PROCESSO | NUMBER | Y | Codigo do processo |
| 24 | CD_PROCESSO_INTEGRA | VARCHAR2 | Y | Codigo de-para do processo |
| 25 | DS_PROCESSO | VARCHAR2 | Y | Descric?o do processo |
| 26 | CD_NOTA_FISCAL | NUMBER | Y | Codigo da nota fiscal |
| 27 | TP_NOTA_FISCAL | VARCHAR2 | Y | Tipo da nota fiscal |
| 28 | DT_LANCAMENTO | DATE | Y | Data de lancamento do documento |
| 29 | CD_CLIENTE_FORNECEDOR | NUMBER | Y | Codigo do cliente/fornecedor |
| 30 | CD_CLIENTE_FORNECEDOR_INTEGRA | VARCHAR2 | Y | Codigo de-para do cliente/fornecedor |
| 31 | DS_CLIENTE_FORNECEDOR | VARCHAR2 | Y | Nome do cliente/fornecedor |
| 32 | NR_CNPJ_CPF | VARCHAR2 | Y | Numero do CNPJ da pessoa juridica ou CPF para pessoa fisica |
| 33 | DS_ENDERECO | VARCHAR2 | Y | Endereco do credor/devedor |
| 34 | NR_ENDERECO | VARCHAR2 | Y | Numero do endereco |
| 35 | NM_BAIRRO | VARCHAR2 | Y | Nome do bairro |
| 36 | NM_CIDADE | VARCHAR2 | Y | Nome da cidade |
| 37 | DS_UF | VARCHAR2 | Y | Unidade Federativa do Brasil |
| 38 | NR_CEP | VARCHAR2 | Y | Numero do CEP |
| 39 | NR_INSCRICAO_ESTADUAL | VARCHAR2 | Y | Numero da Inscric?o Estadual |
| 40 | NR_INSCRICAO_MUNICIPAL | VARCHAR2 | Y | Numero da Inscric?o Municipal |
| 41 | SN_CONTABILIZA | VARCHAR2 | Y | Contabiliza? |
| 42 | SN_GLOSA_ACEITA | VARCHAR2 | Y | Aceita glosa? |
| 43 | TP_VENCIMENTO_DOCUMENTO | VARCHAR2 | Y | Identifica o tipo de vencimento do documento: V ? A Vista / P ? A prazo |
| 44 | NR_DOCUMENTO | VARCHAR2 | Y | Numero do documento |
| 45 | NR_SERIE_DOCUMENTO | VARCHAR2 | Y | Numero de serie do documento |
| 46 | CD_CONTABIL | VARCHAR2 | Y | Codigo contabil estruturado |
| 47 | CD_CONTABIL_INTEGRA | VARCHAR2 | Y | Codigo contabil de-para estruturado |
| 48 | DS_CONTABIL | VARCHAR2 | Y | Descric?o do codigo contabil |
| 49 | CD_MOEDA | VARCHAR2 | Y | Codigo da moeda |
| 50 | CD_MOEDA_INTEGRA | VARCHAR2 | Y | Codigo de-para da moeda |
| 51 | VL_BRUTO_DOCUMENTO | NUMBER | Y | Valor bruto do documento |
| 52 | CD_DESCONTO | NUMBER | Y | Codigo do desconto |
| 53 | CD_DESCONTO_INTEGRA | VARCHAR2 | Y | Codigo de-para do desconto |
| 54 | DS_DESCONTO | VARCHAR2 | Y | Descric?o do desconto |
| 55 | VL_DESCONTO | NUMBER | Y | Valor do desconto |
| 56 | VL_DESCONTO_MOEDA | NUMBER | Y | Valor do desconto na moeda |
| 57 | CD_ACRESCIMO | NUMBER | Y | Codigo do acrescimo |
| 58 | CD_ACRESCIMO_INTEGRA | VARCHAR2 | Y | Codigo de-para do acrescimo |
| 59 | DS_ACRESCIMO | VARCHAR2 | Y | Descric?o do acrescimo |
| 60 | VL_ACRESCIMO | NUMBER | Y | Valor do acrescimo |
| 61 | VL_ACRESCIMO_MOEDA | NUMBER | Y | Valor do acrescimo na moeda |
| 62 | CD_REMESSA | NUMBER | Y | Codigo da remessa (fechamento de contas no MV2000i) |
| 63 | CD_REMESSA_INTEGRA | VARCHAR2 | Y | Codigo de-para da remessa |
| 64 | CD_HISTORICO_PADRAO | NUMBER | Y | Codigo do historico padr?o |
| 65 | DS_HISTORICO_PADRAO | VARCHAR2 | Y | Descric?o do historico padr?o |
| 66 | CD_HISTORICO_PADRAO_INTEGRA | VARCHAR2 | Y | Codigo de-para do historico padr?o |
| 67 | DS_COMPLEMENTO_HISTORICO | VARCHAR2 | Y | Complemento do historico padr?o |
| 68 | DS_OBSERVACAO | VARCHAR2 | Y | Observac?es |
| 69 | DS_MOVIMENTO | VARCHAR2 | Y | Descric?o do movimento |
| 70 | CD_USUARIO | VARCHAR2 | Y | Codigo do Usuario |
| 71 | CD_ITEM | NUMBER | Y | Codigo do item |
| 72 | CD_ITEM_INTEGRA | VARCHAR2 | Y | Codigo de-para do item |
| 73 | NR_PARCELA | NUMBER | Y | Numero da parcela |
| 74 | DT_VENCIMENTO | DATE | Y | Data de vencimento |
| 75 | DT_PREVISAO_PAGAMENTO | DATE | Y | Data de previs?o de pagamento |
| 76 | TP_QUITACAO | VARCHAR2 | Y | Tipo de quitac?o: Para Contas a Receber (CR): V ? Previsto / Q ? Quitado / P ? Parcialmente Receb... |
| 77 | DS_TIPO_QUITACAO | VARCHAR2 | Y | Descric?o do tipo de quitac?o |
| 78 | VL_TITULO | NUMBER | Y | Valor do titulo |
| 79 | TP_SITUACAO | VARCHAR2 | Y | Tipo da situac?o do documento: E ? Depositado / C ? Custodiado / P ? Pre-datado / D ? Devolvido /... |
| 80 | TP_SITUACAO_INTEGRA | VARCHAR2 | Y | Tipo da situac?o (de-para) |
| 81 | DT_CANCELAMENTO | DATE | Y | Data de cancelamento |
| 82 | DS_CANCELAMENTO | VARCHAR2 | Y | Descric?o do cancelamento |
| 83 | CD_CAIXA | NUMBER | Y | Codigo do caixa |
| 84 | CD_CAIXA_INTEGRA | VARCHAR2 | Y | Codigo de-para do caixa |
| 85 | DS_CAIXA | VARCHAR2 | Y | Descric?o do caixa |
| 86 | CD_BANCO | NUMBER | Y | Codigo do banco |
| 87 | CD_BANCO_INTEGRA | VARCHAR2 | Y | Codigo de-para do banco |
| 88 | NM_BANCO | VARCHAR2 | Y | Nome do banco |
| 89 | CD_CONTA | NUMBER | Y | Codigo da conta |
| 90 | CD_CONTA_INTEGRA | VARCHAR2 | Y | Codigo de-para da conta |
| 91 | CD_DETALHAMENTO | NUMBER | Y | Codigo do Tributo |
| 92 | DS_DETALHAMENTO | VARCHAR2 | Y | Descric?o do Tributo |
| 93 | CD_DETALHAMENTO_INTEGRA | VARCHAR2 | Y | Codigo de-para do tributo |
| 94 | SN_RETIDO | VARCHAR2 | Y | Indica se o Tributo foi Retido na Nota Fiscal |
| 95 | VL_TRIBUTO | NUMBER | Y | Valor do tributo |
| 96 | VL_PERCENTUAL | NUMBER | Y | Percentual do imposto a ser aplicado no total da nota fiscal |
| 97 | VL_TRIBUTO_TOTAL | NUMBER | Y | Valor Total do Tributo |
| 98 | CD_SETOR | NUMBER | Y | Codigo do setor alocado pela receita/despesa |
| 99 | CD_SETOR_INTEGRA | VARCHAR2 | Y | Codigo de-para do setor alocado pela receita/despesa |
| 100 | NM_SETOR | VARCHAR2 | Y | Nome do setor |
| 101 | CD_RATEIO | NUMBER | Y | Codigo do rateio |
| 102 | CD_RATEIO_INTEGRA | VARCHAR2 | Y | Codigo de-para do rateio |
| 103 | VL_RATEIO | NUMBER | Y | Valor do rateio |
| 104 | CD_IMV_LOG_REQUISICAO | NUMBER | Y | Codigo da mensagem que esta na mvintegra.inv_log_requisicao que originou este registro. |
| 105 | CD_LOTE_CAIXA | NUMBER | Y | Identificador do lote do caixa gerado |
| 106 | DT_ABERTURA | DATE | Y | Data de abertura do caixa |
| 107 | DT_FECHAMENTO | DATE | Y | Data de fechamento do caixa |
| 108 | DT_BLOQUEIO | DATE | Y | Data de bloqueio do caixa |
| 109 | VL_SALDO_INICIAL | NUMBER | Y | Saldo inicial do caixa |
| 110 | VL_SALDO_FINAL | NUMBER | Y | Saldo final do caixa |
| 111 | VL_SALDO_DINHEIRO | NUMBER | Y | Saldo do caixa em dinheiro |
| 112 | CD_USUARIO_FECHAMENTO | VARCHAR2 | Y | Usuario identificador do fechamento |
| 113 | CD_RECCON_REC | NUMBER | Y | Codigo do recebimento do conta a receber |
| 114 | CD_ITCON_REC | NUMBER | Y | Codigo identificador do item da conta a receber |
| 115 | VL_MOEDA | NUMBER | Y | Moeda utilizada |
| 116 | CD_REG_FAT | NUMBER | Y | Codigo do registro da fatura hospitalar |
| 117 | CD_REG_AMB | NUMBER | Y | Codigo do registro da fatura ambulatorial |
| 118 | CD_CON_REC | NUMBER | Y | Codigo da conta a receber |
| 119 | CD_ATENDIMENTO | NUMBER | Y | Codigo do atendimento |
| 120 | CD_STATUS | VARCHAR2 | Y | Status da nota fiscal |
| 121 | TP_ORIGEM_DOCUMENTO | VARCHAR2 | Y | Origem do documento que encontra-se vinculado a movimentac?o do caixa |
| 122 | VL_LIQUIDO_DOCUMENTO | NUMBER | Y | Valor liquido do documento |
| 123 | VL_QUITACAO | NUMBER | Y | Valor quitac?o do documento |
| 124 | SN_PREVISAO | VARCHAR2 | Y |  |
| 125 | CD_MOTIVO_LANCAMENTO | NUMBER | Y | Motivo do lancamento |
| 126 | CD_LAN_CONCOR | NUMBER | Y | Codigo do lancamento na conta corrente |
| 127 | DS_LAN_CONCOR | VARCHAR2 | Y | Descric?o do lancamento na conta corrente |
| 128 | CD_FINANCEIRA_CARTAO | NUMBER | Y | Codigo da financeira do cart?o |
| 129 | TP_SITUACAO_DOCUMENTO | VARCHAR2 | Y | Situac?o do documento |
| 130 | TP_PAGAMENTO_QUITACAO | VARCHAR2 | Y | Tipo da quitac?o do pagamento |
| 131 | TP_CAUCAO | VARCHAR2 | Y | Tipo da cauc?o |
| 132 | TP_DESTINO_CAUCAO | VARCHAR2 | Y | Destino da cauc?o |
| 133 | CD_PACIENTE | NUMBER | Y | Codigo do paciente |
| 134 | NM_PACIENTE | VARCHAR2 | Y | Nome do paciente ou responsavel |
| 135 | CD_PACIENTE_INTEGRA | VARCHAR2 | Y | Codigo de-para do paciente |
| 136 | DS_MOV_CAIXA | VARCHAR2 | Y | Descric?o da movimentac?o do caixa |
| 137 | DT_MOVIMENTACAO | DATE | Y | DATA DE MOVIMENTAC?O |
| 138 | TP_PESSOA | VARCHAR2 | Y | Informar o tipo de pessoa (Fisica ou Juridica). |
| 139 | NR_TELEFONE | VARCHAR2 | Y | Telefone de Contato |
| 140 | CD_NACIONALIDADE | NUMBER | Y | Codigo da Nacionalidade |
| 141 | CD_NACIONALIDADE_INTEGRA | VARCHAR2 | Y | Codigo da Nacionalidade DE-PARA |
| 142 | DS_NACIONALIDADE | VARCHAR2 | Y | Descric?o da Nacionalidade |
| 143 | DS_EMAIL | VARCHAR2 | Y | e-mail do cliente |
| 144 | DT_SAIDA | DATE | Y | Data da saida da nota fiscal |
| 145 | CD_GRU_FAT | NUMBER | Y | Codigo do grupo de faturamento |
| 146 | DS_GRU_FAT | VARCHAR2 | Y | Descric?o do grupo de faturamento |
| 147 | VL_GRU_FAT | NUMBER | Y | Valor do Total do Grupo de Faturamento |
| 148 | VL_DESCONTO_NOTA | NUMBER | Y | Valor Desconto Nota Fiscal |
| 149 | VL_ACRESCIMO_NOTA | NUMBER | Y | Valor Acrescimo Nota Fiscal |
| 150 | VL_ISS | NUMBER | Y | Valor do ISS Nota Fiscal |
| 151 | VL_IR | NUMBER | Y | Valor do I.R. Nota Fiscal |
| 152 | VL_TOTAL_NOTA | NUMBER | Y | Valor Total da Nota Fiscal |
| 153 | TP_GUIA | VARCHAR2 | Y | Tipo da Guia |
| 154 | DT_AUTORIZACAO | DATE | Y | Data de autorizac?o da guia pelo convenio |
| 155 | NR_GUIA | VARCHAR2 | Y | Numero da guia do convenio |
| 156 | DT_SOLICITACAO | DATE | Y | Data de solicitac?o da guia ao convenio |
| 157 | CD_MOTIVO_ADIANTAMENTO | NUMBER | Y | Codigo do motivo do adiantamento de pagamento |
| 158 | DS_MOTIVO_ADIANTAMENTO | VARCHAR2 | Y | Descric?o do motivo do adiantamento de pagamento |
| 159 | CD_FINANCEIRA_CARTAO_INTG | VARCHAR2 | Y | Codigo de-para do cart?o |
| 160 | TP_RECEBIMENTO_INTEGRA | VARCHAR2 | Y | Codigo de-para do tipo de recebimento |
| 161 | CD_CEN_CUS | VARCHAR2 | Y | Codigo do centro de custo |
| 162 | CD_RESPONSAVEL | NUMBER | Y | Codigo do responsavel |
| 163 | NR_NOTA_FISCAL_NFE | VARCHAR2 | Y | Numero da nota fiscal eletronica |
| 164 | DT_RECEBIMENTO | DATE | Y | Data de recebimento |
| 165 | TP_RECEBIMENTO | VARCHAR2 | Y | Tipo do recebimento |

---

## MVINTEGRA.IMV_HEMODERIVADO
> Tabela de integrac?o hemoderivado

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IMV_HEMODERIVADO | NUMBER | N | Codigo sequencial do registro na integrac?o |
| 2 | TP_FLUXO | VARCHAR2 | N | Tipo de fluxo do registro (E - Entrada / S - Saida) |
| 3 | TP_STATUS | VARCHAR2 | N | Status do registro (A - Aguardando / E - Erro / T - Transmitido / P - Em processamento) |
| 4 | DS_ERRO | VARCHAR2 | Y | Descric?o da mensagem de erro ocorrido no processamento da mensagem |
| 5 | DT_GERADO | DATE | N | Data de gerac?o do registro na tabela |
| 6 | DT_PROCESSADO | DATE | Y | Data de processamento do registro |
| 7 | TP_MOVIMENTO | VARCHAR2 | N | Tipo do movimento do registro (I - Inclus?o / A - Alterac?o / E - Exclus?o) |
| 8 | TP_REGISTRO | VARCHAR2 | N | Identificac?o do tipo de registro existente: 001 ? Solicitac?o de hemoderivados / 002 ? Itens da ... |
| 9 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da multi-empresa |
| 10 | CD_MULTI_EMPRESA_INTEGRA | VARCHAR2 | Y | Codigo de-para da multi-empresa |
| 11 | CD_REGISTRO_PRINCIPAL | NUMBER | Y | Codigo identificador do registro principal da mensagem |
| 12 | CD_REGISTRO_PAI | NUMBER | Y | Codigo identificador do registro pai da mensagem |
| 13 | CD_SOLIC_SANGUE | NUMBER | Y | Codigo da solicitac?o de sangue |
| 14 | CD_SOLIC_SANGUE_INTEGRA | VARCHAR2 | Y | Codigo de-para da solicitac?o de sangue |
| 15 | DT_SOLIC_SANGUE | DATE | Y | Data da solicitac?o de sangue |
| 16 | HR_SOLIC_SANGUE | DATE | Y | Hora da solicitac?o de sangue |
| 17 | NM_USUARIO | VARCHAR2 | Y | Nome do usuario solicitante |
| 18 | CD_AVISO_CIRURGIA | NUMBER | Y | Codigo do aviso de cirurgia associada a solicitac?o de sangue |
| 19 | CD_PRE_MED | NUMBER | Y | Codigo da prescric?o medica |
| 20 | CD_ATENDIMENTO | NUMBER | Y | Codigo do atendimento do paciente |
| 21 | CD_ATENDIMENTO_INTEGRA | VARCHAR2 | Y | Codigo de-para do atendimento do paciente |
| 22 | CD_SETOR | NUMBER | Y | Codigo do setor solicitante |
| 23 | CD_SETOR_INTEGRA | VARCHAR2 | Y | Codigo de-para do setor solicitante |
| 24 | NM_SETOR | VARCHAR2 | Y | Nome do setor solicitante |
| 25 | TP_SOLICITACAO | VARCHAR2 | Y | Tipo da solicitac?o |
| 26 | TP_SITUACAO | VARCHAR2 | Y | Situac?o da solicitac?o |
| 27 | DS_OBSERVACAO | VARCHAR2 | Y | Observac?es sobre a solicitac?o |
| 28 | DT_CANCELAMENTO | DATE | Y | Data de cancelamento da solicitac?o |
| 29 | HR_CANCELAMENTO | DATE | Y | Hora de cancelamento da solicitac?o |
| 30 | NM_USUARIO_CANCEL | VARCHAR2 | Y | Usuario responsavel pelo cancelamento |
| 31 | DS_MOTIVO_CANCELAMENTO | VARCHAR2 | Y | Descric?o do motivo de cancelamento da solicitac?o |
| 32 | CD_SET_EXA | NUMBER | Y | Codigo do setor de exames |
| 33 | CD_SET_EXA_INTEGRA | VARCHAR2 | Y | Codigo de-para do setor de exames |
| 34 | NM_SET_EXA | VARCHAR2 | Y | Descric?o do setor de exames |
| 35 | CD_IT_SOLIC_SANGUE | NUMBER | Y | Identificador do item da solicitac?o de sangue |
| 36 | CD_IT_SOLIC_SANGUE_INTEGRA | VARCHAR2 | Y | Identificador de-para do item da solicitac?o de sangue |
| 37 | CD_SANGUE_DERIVADOS | NUMBER | Y | Codigo do derivado |
| 38 | CD_SANGUE_DERIVADOS_INTEGRA | VARCHAR2 | Y | Codigo de-para do derivado |
| 39 | DS_SANGUE_DERIVADOS | VARCHAR2 | Y | Descric?o do derivado |
| 40 | CD_CIRURGIA | NUMBER | Y | Codigo da cirurgia |
| 41 | SN_REALIZADO | VARCHAR2 | Y | Transfus?o realizada? |
| 42 | QT_SOLICITADA | NUMBER | Y | Quantidade solicitada |
| 43 | DT_REALIZADO | DATE | Y | Data de realizac?o |
| 44 | HR_REALIZADO | DATE | Y | Hora de realizac?o |
| 45 | QT_REALIZADO | NUMBER | Y | Quantidade realizado |
| 46 | CD_TIP_FRE | NUMBER | Y | Identificador do tipo de frequencia |
| 47 | DS_TIP_FRE | VARCHAR2 | Y | Descric?o do tipo de frequencia |
| 48 | QT_PRESCRICAO | NUMBER | Y | Quantidade prescrita |
| 49 | NR_DIFEP | VARCHAR2 | Y | Numero DIFEP |
| 50 | CD_ITPRE_MED | NUMBER | Y | Codigo do item da prescric?o medica |
| 51 | CD_PACIENTE | NUMBER | Y | Codigo do paciente |
| 52 | CD_PACIENTE_INTEGRA | VARCHAR2 | Y | Codigo de-para do paciente |
| 53 | NM_PACIENTE | VARCHAR2 | Y | Nome do paciente |
| 54 | DT_NASCIMENTO | DATE | Y | Data de nascimento do paciente |
| 55 | TP_SEXO | VARCHAR2 | Y | Sexo do paciente |
| 56 | CD_LEITO | NUMBER | Y | Codigo do leito do paciente |
| 57 | DS_LEITO | VARCHAR2 | Y | Descric?o do leito do paciente |
| 58 | DS_LEITO_RESUMIDO | VARCHAR2 | Y | Descric?o resumida do leito do paciente |
| 59 | DS_ENFERMAGEM | VARCHAR2 | Y | Descric?o da enfermagem do leito do paciente |
| 60 | DS_UNIDADE | VARCHAR2 | Y | Unidade de medida do hemoderivado |
| 61 | TP_PROCEDIMENTO | VARCHAR2 | Y | Tipo do procedimento |
| 62 | CD_PRESTADOR_SOLICITANTE | NUMBER | Y | Codigo do prestador solicitante |
| 63 | CD_PRESTADOR_SOLIC_INTEGRA | VARCHAR2 | Y | Codigo do prestrador solicitante, em caso de prestadores integrados |
| 64 | NM_PRESTADOR_SOLICITANTE | VARCHAR2 | Y | Nome do prestador solicitante |
| 65 | NR_CONSELHO_SOLICITANTE | VARCHAR2 | Y | Codigo do conselho do prestador solicitante |
| 66 | TP_CONSELHO_SOLICITANTE | VARCHAR2 | Y | Tipo do conselho do prestador |
| 67 | CD_IMV_LOG_REQUISICAO | NUMBER | Y | Codigo do log de requisic?o para fluxo de entrada |
| 68 | CD_SISTEMA_ORIGEM | VARCHAR2 | Y |  |
| 69 | NR_CPF_PACIENTE | VARCHAR2 | Y |  |
| 70 | DS_SEGUNDO_SOBRENOME | VARCHAR2 | Y |  |
| 71 | DS_PRIMEIRO_SOBRENOME | VARCHAR2 | Y |  |
| 72 | DS_PRIMEIRO_NOME | VARCHAR2 | Y |  |
| 73 | NR_DOCUMENTO_ESTRANGEIRO | VARCHAR2 | Y |  |
| 74 | TP_DOCUMENTO_ESTRANGEIRO | VARCHAR2 | Y |  |
| 75 | DS_SEGUNDO_NOME | VARCHAR2 | Y |  |

---

## MVINTEGRA.IMV_INTERNACAO
> Tabela para controlar as listagens de internação

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IMV_INTERNACAO | NUMBER | N | Codigo sequencial da integrac?o |
| 2 | TP_FLUXO | VARCHAR2 | N | Identificador do fluxo da informac?o (S - Saida, E - Entrada) |
| 3 | TP_STATUS | VARCHAR2 | N | Identificac?o da situac?o atual do registro (A - Aguardando, T - Transmitido e E - Erro) |
| 4 | DS_ERRO | VARCHAR2 | Y | Descric?o do erro quando ocorrer |
| 5 | DT_GERADO | DATE | N | Data do registro gerado na integrac?o |
| 6 | DT_PROCESSADO | DATE | Y | Data em que o registro foi integrado |
| 7 | TP_MOVIMENTO | VARCHAR2 | N | Tipo do movimento (I - Inclus?o, A - Alterac?o e E - Exclus?o) |
| 8 | TP_REGISTRO | VARCHAR2 | N | Tipo do registro da integrac?o (001 - Registro referente a pessoa) |
| 9 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da multi-empresa |
| 10 | CD_MULTI_EMPRESA_INTEGRA | VARCHAR2 | Y | Codigo da multi-empresa (DE-PARA) |
| 11 | CD_REGISTRO_PRINCIPAL | NUMBER | Y | Codigo do registro principal desta transac?o |
| 12 | CD_REGISTRO_PAI | NUMBER | Y | Cosigo do registro pai deste registro |
| 13 | CD_CID_SEC | VARCHAR2 | Y | Código CID secundário |
| 14 | IDENTIFICACAO_LEITO | VARCHAR2 | Y |  |
| 15 | DT_NASCIMENTO | DATE | Y | Data de nascimento do paciente |
| 16 | CD_CIDADE_PAC | VARCHAR2 | Y | Código da cidade do paciente |
| 17 | DS_ENDERECO_PAC | VARCHAR2 | Y | Endereço do paciente |
| 18 | CD_ESPECIALIDADE | VARCHAR2 | Y | Código da especialidade médica |
| 19 | CD_ESPECIALIDADE_INTEGRA | VARCHAR2 | Y | Código de integração da especialidade |
| 20 | DS_ESPECIALIDADE | VARCHAR2 | Y | Descrição da especialidade |
| 21 | CD_IBGE | NUMBER | Y | Código do IBGE do município |
| 22 | DS_JUSTIFICATIVA_INTERNACAO | VARCHAR2 | Y | Justificativa para internação do paciente |
| 23 | CD_PACIENTE | NUMBER | Y | Código do paciente no sistema |
| 24 | CD_SISTEMA_ORIGEM | VARCHAR2 | Y | Código do sistema de origem |
| 25 | NR_FREQUENCIA_CARDIACA | NUMBER | Y | Frequência cardíaca medida em bpm |
| 26 | NR_FREQUENCIA_RESPIRATORIA | NUMBER | Y | Frequência respiratória medida em respirações por minuto |
| 27 | NR_TEMPERATURA | NUMBER | Y | Temperatura corporal medida em °C |
| 28 | CD_PROCEDIMENTO | VARCHAR2 | Y | Código do procedimento realizado |
| 29 | NR_PRESSAO_SISTOLICA | NUMBER | Y | Valor da pressão sistólica medida em mmHg |
| 30 | NR_PRESSAO_DIASTOLICA | NUMBER | Y | Valor da pressão diastólica medida em mmHg |
| 31 | NM_MAE | VARCHAR2 | Y | Nome da mãe do paciente |
| 32 | NR_ENDERECO | VARCHAR2 | Y | Numero do enredeco do responsavel pelo paciente |
| 33 | DS_COMPLEMENTO | VARCHAR2 | Y | Complemento do endereco do responsavel pelo paciente |
| 34 | NM_BAIRRO | VARCHAR2 | Y | Descricao do bairro do responsavel pelo paciente |
| 35 | NR_CEP | VARCHAR2 | Y | CEP do paciente enviado junto ao atendimento |
| 36 | CD_IBGE_NASCIMENTO | NUMBER | Y | Código do IBGE referente ao local de nascimento |
| 37 | DS_TELEFONES | VARCHAR2 | Y | Descrição dos telefones de contato |
| 38 | DS_NACIONALIDADE | VARCHAR2 | Y | Descrição da nacionalidade do paciente |
| 39 | DS_ESTADO_CIVIL | VARCHAR2 | Y | Descrição do estado civil do paciente |
| 40 | DS_PROCEDIMENTO | VARCHAR2 | Y | Descrição do procedimento realizado |
| 41 | DS_CID | VARCHAR2 | Y | Descrição do diagnóstico principal (CID) |
| 42 | DS_CID_SECUNDARIO | VARCHAR2 | Y | Descrição do CID secundário |
| 43 | CD_CID_SECUNDARIO | VARCHAR2 | Y | Código secundário CID |
| 44 | CD_CID_COMORBIDADE1 | VARCHAR2 | Y | Código CID da comorbidade 1 |
| 45 | CD_CID_COMORBIDADE2 | VARCHAR2 | Y | Código CID da comorbidade 2 |
| 46 | CD_CID_COMORBIDADE3 | VARCHAR2 | Y | Código CID da comorbidade 3 |
| 47 | DS_CID_COMORBIDADE1 | VARCHAR2 | Y | Descrição da comorbidade 1 (CID) |
| 48 | DS_CID_COMORBIDADE2 | VARCHAR2 | Y | Descrição da comorbidade 2 (CID) |
| 49 | DS_CID_COMORBIDADE3 | VARCHAR2 | Y | Descrição da comorbidade 3 (CID) |
| 50 | CD_IMV_LOG_REQUISICAO | NUMBER | Y | Código de log da requisição de integração |
| 51 | CD_TIPO_LEITO_REGULACAO | VARCHAR2 | Y | Código do tipo de leito na regulação |
| 52 | CD_SITUACAO | VARCHAR2 | Y | Código da situação atual do paciente |
| 53 | DT_INTERNACAO | DATE | Y | Data de internação do paciente |
| 54 | SN_EXTRA | VARCHAR2 | Y | Indicador extra para integração (S - Sim, N - Não) |
| 55 | NR_PROTOCOLO_DESTINO | VARCHAR2 | Y | Número do protocolo de destino |
| 56 | DT_ALTA | DATE | Y | Data da alta hospitalar |
| 57 | DS_MOT_ALT | VARCHAR2 | Y | Motivo da alta do paciente |
| 58 | DS_OBS_ALTA | VARCHAR2 | Y | Observações sobre a alta do paciente |
| 59 | CD_CID_SECUNDARIO2 | VARCHAR2 | Y | Código secundário CID 2 (Classificação Internacional de Doenças) |
| 60 | DS_ESTABELECIMENTO_EXECUTANTE | VARCHAR2 | Y | Nome do estabelecimento executante |
| 61 | NR_CNES_ESTABELECIMENTO_EXEC | NUMBER | Y | Número CNES do estabelecimento executante |
| 62 | NR_SATURACAO_O2 | NUMBER | Y | Valor de saturação de oxigênio em percentual |
| 63 | CD_SENSORIO | VARCHAR2 | Y | Código do sensorio (nível de consciência) |
| 64 | CD_DEBITO_URINARIO | VARCHAR2 | Y | Código do débito urinário |
| 65 | NR_IDADE_APARENTE | NUMBER | Y | Idade aparente do paciente |
| 66 | CD_SUPORTE_O2 | VARCHAR2 | Y | Código do tipo de suporte de oxigênio |
| 67 | NR_FLUXO_O2 | NUMBER | Y | Fluxo de oxigênio administrado (em litros por minuto) |
| 68 | NR_FIO2 | NUMBER | Y | Fração inspirada de oxigênio (em percentual) |
| 69 | NR_SATO2 | NUMBER | Y | Saturação de oxigênio no sangue (em percentual) |
| 70 | NR_PEEP | NUMBER | Y | Pressão positiva no final da expiração (PEEP) em cmH2O |
| 71 | SN_DROGAS_VASOATIVAS | VARCHAR2 | Y | Indicador de uso de drogas vasoativas (S - Sim, N - Não) |
| 72 | SN_BOLSA_INTEGRA | VARCHAR2 | Y | Indicador de bolsa integra (S - Sim, N - Não) |
| 73 | DH_RUPTURA_BOLSA | DATE | Y | Data e hora da ruptura da bolsa |
| 74 | SN_ISOLAMENTO_NECESSARIO | VARCHAR2 | Y | Indicador de necessidade de isolamento (S - Sim, N - Não) |
| 75 | CD_GERME_REGULACAO1 | VARCHAR2 | Y | Código do primeiro germe para regulação |
| 76 | CD_GERME_REGULACAO2 | VARCHAR2 | Y | Código do segundo germe para regulação |
| 77 | CD_GERME_REGULACAO3 | VARCHAR2 | Y | Código do terceiro germe para regulação |
| 78 | DS_RUPTURA_BOLSA | VARCHAR2 | Y | Descrição da ruptura da bolsa |
| 79 | DS_MENSAGEM_REGULACAO | VARCHAR2 | Y | Descrição da mensagem de regulação |
| 80 | DS_DT_INTERNACAO | VARCHAR2 | Y | Data de internação em formato de texto |
| 81 | DS_DT_ALTA | VARCHAR2 | Y | Data de alta em formato de texto |
| 82 | SN_DIALISE | VARCHAR2 | Y | Indicador de diálise (S - Sim, N - Não) |
| 83 | NM_DROGA_VASOATIVA | VARCHAR2 | Y | Nome da droga vasoativa utilizada |
| 84 | DS_DOSAGEM | VARCHAR2 | Y | Descrição da dosagem da medicação |
| 85 | CD_ESPL_LEITO_REGULACAO | VARCHAR2 | Y | Código do leito na regulação de especialidade |
| 86 | CD_AVISO_CIRURGIA_INTEGRA | VARCHAR2 | Y | Codigo do aviso da cirurgia integra |
| 87 | DS_MOT_ENC | VARCHAR2 | Y | Descricao do motivo de encontro |
| 88 | DS_IDENT_LEITO_REGULACAO | VARCHAR2 | Y | Identificação do leito na regulação |
| 89 | TP_OCUPACAO | VARCHAR2 | Y | Tipo de ocupação (C - Comercial, M - Militar, etc.) |
| 90 | DS_OCUPACAO | VARCHAR2 | Y | Descrição da ocupação do paciente |
| 91 | NR_CNS_PACIENTE | VARCHAR2 | Y | Número do Cartão Nacional de Saúde do paciente |
| 92 | NR_CPF_PACIENTE | VARCHAR2 | Y | Número do CPF do paciente |
| 93 | TP_INTERNACAO | NUMBER | Y | Tipo de internação (ex.: Emergência, Eletiva) |
| 94 | TP_INTERNACAO_INTEGRA | VARCHAR2 | Y | Descrição da internação integrada |
| 95 | DS_TIPO_INTERNACAO | VARCHAR2 | Y | Descrição do tipo de internação |
| 96 | NR_PROTOCOLO_ORIGEM | VARCHAR2 | Y | Número do protocolo de origem |
| 97 | TP_PROTOCOLO_ORIGEM | VARCHAR2 | Y | Tipo de protocolo de origem |
| 98 | TP_ACESSO | VARCHAR2 | Y | Tipo de acesso ao atendimento |
| 99 | SN_INTERNACAO_PROPRIA | VARCHAR2 | Y | Indicador de internação própria (S - Sim, N - Não) |
| 100 | CD_LEITO | NUMBER | Y | Código do leito hospitalar |
| 101 | CD_LEITO_INTEGRA | VARCHAR2 | Y | Código de integração do leito |
| 102 | DS_LEITO | VARCHAR2 | Y | Identificação do leito hospitalar |
| 103 | CD_CID | VARCHAR2 | Y | Código do diagnóstico principal (CID) |
| 104 | NR_CPF_PRESTADOR | VARCHAR2 | Y | Número do CPF do prestador |
| 105 | DS_SINTOMAS | VARCHAR2 | Y | Descrição dos sintomas do paciente |
| 106 | TP_COR | VARCHAR2 | Y | Tipo de cor/raça do paciente |
| 107 | TP_CONDICAO | VARCHAR2 | Y | Tipo de condição do paciente |
| 108 | NM_PACIENTE | VARCHAR2 | Y | Nome completo do paciente |
| 109 | TP_SEXO | VARCHAR2 | Y | Sexo do paciente |

---

## MVINTEGRA.IMV_INVENTARIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IMV_INVENTARIO | NUMBER | N |  |
| 2 | TP_FLUXO | VARCHAR2 | N |  |
| 3 | TP_STATUS | VARCHAR2 | N |  |
| 4 | DS_ERRO | VARCHAR2 | Y |  |
| 5 | DT_GERADO | DATE | N |  |
| 6 | DT_PROCESSADO | DATE | Y |  |
| 7 | TP_MOVIMENTO | VARCHAR2 | N |  |
| 8 | TP_REGISTRO | VARCHAR2 | N |  |
| 9 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 10 | CD_MULTI_EMPRESA_INTEGRA | VARCHAR2 | Y |  |
| 11 | CD_REGISTRO_PRINCIPAL | NUMBER | Y |  |
| 12 | CD_REGISTRO_PAI | NUMBER | Y |  |
| 13 | CD_IMV_LOG_REQUISICAO | NUMBER | Y |  |
| 14 | CD_SISTEMA_ORIGEM | VARCHAR2 | Y |  |
| 15 | SN_ZERA_PRODUTO_NAO_ENVIADO | VARCHAR2 | Y |  |
| 16 | SN_ATUALIZA_PRECO_PROD | VARCHAR2 | Y |  |
| 17 | QT_KIT | NUMBER | Y |  |
| 18 | QT_EXTRA_ORCAMENTARIO | NUMBER | Y |  |
| 19 | QT_ORCAMENTARIO | NUMBER | Y |  |
| 20 | QT_ESTOQUE_DOADO | NUMBER | Y |  |
| 21 | QT_ESTOQUE | NUMBER | Y |  |
| 22 | NR_CODIGO_DE_BARRA | VARCHAR2 | Y |  |
| 23 | VL_CUSTO_MEDIO | NUMBER | Y |  |
| 24 | CD_LOTE | VARCHAR2 | Y |  |
| 25 | DT_VALIDADE | DATE | Y |  |
| 26 | CD_UNI_PRO | NUMBER | Y |  |
| 27 | DS_MARCA | VARCHAR2 | Y |  |
| 28 | DT_GRAVACAO_PRODUTO | DATE | Y |  |
| 29 | DS_UNIDADE | VARCHAR2 | Y |  |
| 30 | CD_UNIDADE_INTEGRA | VARCHAR2 | Y |  |
| 31 | CD_UNIDADE | VARCHAR2 | Y |  |
| 32 | DS_PRODUTO | VARCHAR2 | Y |  |
| 33 | CD_PRODUTO_INTEGRA | VARCHAR2 | Y |  |
| 34 | CD_PRODUTO | NUMBER | Y |  |
| 35 | CD_LINHA_INTEGRA | VARCHAR2 | Y |  |
| 36 | CD_LINHA | NUMBER | Y |  |
| 37 | DS_ESTOQUE | VARCHAR2 | Y |  |
| 38 | CD_ESTOQUE_INTEGRA | VARCHAR2 | Y |  |
| 39 | CD_ESTOQUE | NUMBER | Y |  |
| 40 | SN_CONTAGEM_CONSOLIDADA | VARCHAR2 | Y |  |
| 41 | SN_CONTAGEM_ABERTA | VARCHAR2 | Y |  |
| 42 | TP_CONTAGEM | VARCHAR2 | Y |  |
| 43 | HR_CONTAGEM | DATE | Y |  |
| 44 | DT_CONTAGEM | DATE | Y |  |
| 45 | CD_CONTAGEM_INTEGRA | VARCHAR2 | Y |  |
| 46 | CD_CONTAGEM | NUMBER | Y |  |
| 47 | HR_GERACAO_INVENTARIO | DATE | Y |  |
| 48 | DT_GERACAO_INVENTARIO | DATE | Y |  |
| 49 | CD_INVENTARIO_INTEGRA | VARCHAR2 | Y |  |
| 50 | CD_INVENTARIO | NUMBER | Y |  |
| 51 | VL_FATOR | NUMBER | Y |  |
| 52 | QT_ESTOQUE_ANTERIOR | NUMBER | Y |  |
| 53 | DT_INTEGRA | DATE | Y |  |
| 54 | CD_CEN_CUS_INTEGRA | VARCHAR2 | Y |  |
| 55 | CD_LOTE_INTEGRA | VARCHAR2 | Y |  |
| 56 | CD_PRODUTO_TEM_INTEGRA | VARCHAR2 | Y |  |
| 57 | CD_PRODUTO_TEM | NUMBER | Y |  |
| 58 | CD_CEN_CUS | VARCHAR2 | Y |  |
| 59 | TP_RELATORIOS | VARCHAR2 | Y |  |

---

## MVINTEGRA.IMV_LAUDO_AIH
> Tabela de integrac?o para transmiss?o de mensagens envolvendo o Laudo AIH

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IMV_LAUDO_AIH | NUMBER | N | Codigo identificador do registro (sequencial) |
| 2 | TP_FLUXO | VARCHAR2 | N | Tipo de fluxo do registro (E - Entrada / S - Saida) |
| 3 | TP_STATUS | VARCHAR2 | N | Status do registro (A - Aguardando / E - Erro / T - Transmitido / P - Em processamento) |
| 4 | DS_ERRO | VARCHAR2 | Y | Descric?o da mensagem de erro ocorrido no processamento da mensagem |
| 5 | DT_GERADO | DATE | N | Data de gerac?o do registro na tabela |
| 6 | DT_PROCESSADO | DATE | Y | Data de processamento do registro |
| 7 | TP_MOVIMENTO | VARCHAR2 | N | Tipo do movimento do registro (I - Inclus?o / A - Alterac?o / E - Exclus?o) |
| 8 | TP_REGISTRO | VARCHAR2 | N | Tipo do registro (001 - Solicitac?o AIH / 002 - Autorizac?o AIH) |
| 9 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da multi-empresa |
| 10 | CD_MULTI_EMPRESA_INTEGRA | VARCHAR2 | Y | Codigo de-para da multi-empresa |
| 11 | CD_REGISTRO_PRINCIPAL | NUMBER | Y | Codigo identificador do registro principal da mensagem |
| 12 | CD_REGISTRO_PAI | NUMBER | Y | Codigo identificador do registro pai da mensagem |
| 13 | CD_ATENDIMENTO | NUMBER | Y | Codigo do atendimento |
| 14 | CD_ATENDIMENTO_INTEGRA | VARCHAR2 | Y | Codigo de-para do atendimento |
| 15 | CD_SOLICITACAO_ATEND | NUMBER | Y | Codigo da solicitac?o que gerou o atendimento |
| 16 | CD_SOLICITACAO_ATEND_INTEGRA | VARCHAR2 | Y | Codigo de-para da solicitac?o que gerou o atendimento |
| 17 | DT_EMISSAO | DATE | Y | Data de emiss?o do laudo AIH |
| 18 | CD_PRESTADOR_SOLIC | NUMBER | Y | Codigo do prestador solicitante |
| 19 | CD_PRESTADOR_SOLIC_INTEGRA | VARCHAR2 | Y | Codigo de-para do prestador solicitante |
| 20 | NM_PRESTADOR_SOLIC | VARCHAR2 | Y | Nome do prestador solicitante |
| 21 | NR_CRM_PRESTADOR_SOLIC | NUMBER | Y | CRM do prestador solicitante |
| 22 | NR_CPF_PRESTADOR_SOLIC | VARCHAR2 | Y | CPF do prestador solicitante |
| 23 | NR_CNS_PRESTADOR_SOLIC | VARCHAR2 | Y | CNS do prestador solicitante |
| 24 | CD_PROCEDIMENTO_SOLIC_SUS | VARCHAR2 | Y | Codigo do procedimento SUS solicitado |
| 25 | DS_PROCEDIMENTO | VARCHAR2 | Y | Descric?o do procedimento |
| 26 | CD_CARATER_INTERNACAO | NUMBER | Y | Codigo do carater de internac?o |
| 27 | CD_CARATER_INTERNACAO_INTEGRA | VARCHAR2 | Y | Codigo de-para do carater de internac?o |
| 28 | DS_CARATER_INTERNACAO | VARCHAR2 | Y | Descric?o do carater de internac?o |
| 29 | CD_PRESTADOR_RESP | NUMBER | Y | Codigo do prestador responsavel |
| 30 | CD_PRESTADOR_RESP_INTEGRA | VARCHAR2 | Y | Codigo de-para do prestador responsavel |
| 31 | NM_PRESTADOR_RESP | VARCHAR2 | Y | Nome do prestador responsavel |
| 32 | NR_CRM_PRESTADOR_RESP | VARCHAR2 | Y | CRM do prestador responsavel |
| 33 | NR_CPF_PRESTADOR_RESP | VARCHAR2 | Y | CPF do prestador responsavel |
| 34 | NR_CNS_PRESTADOR_RESP | VARCHAR2 | Y | CNS do prestador responsavel |
| 35 | CD_CID_PRINCIPAL | VARCHAR2 | Y | CID principal |
| 36 | DS_CID_PRINCIPAL | VARCHAR2 | Y | Descric?o do CID principal |
| 37 | CD_CID_SECUNDARIO | VARCHAR2 | Y | CID secundario |
| 38 | DS_CID_SECUNDARIO | VARCHAR2 | Y | Descric?o do CID secundario |
| 39 | DS_SINAIS_E_SINTOMAS | VARCHAR2 | Y | Sinais e sintomas |
| 40 | DS_JUSTIFICATIVA | VARCHAR2 | Y | Justificativa de internac?o |
| 41 | DS_PROVA_DIAGNOSTICA | VARCHAR2 | Y | Descric?o da prova diagnostica |
| 42 | DS_DIAGNOSTICO_INICIAL | VARCHAR2 | Y | Diagnostivo inicial |
| 43 | DT_AUTORIZACAO | DATE | Y | Data da autorizac?o AIH |
| 44 | CD_PRESTADOR_AUT | NUMBER | Y | Codigo do prestador autorizador |
| 45 | CD_PRESTADOR_AUT_INTEGRA | VARCHAR2 | Y | Codigo de-para do prestador autorizador |
| 46 | NM_PRESTADOR_AUT | VARCHAR2 | Y | Nome do prestador autorizador |
| 47 | NR_CRM_PRESTADOR_AUT | VARCHAR2 | Y | CRM do prestador autorizador |
| 48 | NR_CPF_PRESTADOR_AUT | VARCHAR2 | Y | CPF do prestador autorizador |
| 49 | NR_CNS_PRESTADOR_AUT | VARCHAR2 | Y | CNS do prestador autorizador |
| 50 | NR_AIH | VARCHAR2 | Y | Numero AIH gerada na autorizac?o |
| 51 | CD_PROCEDIMENTO_REALIZADO | VARCHAR2 | Y | Procedimento realizado |
| 52 | DS_PROCEDIMENTO_REALIZADO | VARCHAR2 | Y | Descric?o do procedimento realizado |
| 53 | CD_IMV_LOG_REQUISICAO | NUMBER | Y | Codigo da mensagem que esta na mvintegra.inv_log_requisicao que originou este registro. |
| 54 | CD_ESPEC_SUS | VARCHAR2 | Y | Codigo da especialidade SUS |
| 55 | DS_ESPEC_SUS | VARCHAR2 | Y | Descric?o da especialidade SUS |
| 56 | CD_ESPEC_SUS_INTEGRA | VARCHAR2 | Y | Codigo sequencial especialidade SUS (de-para) |
| 57 | CD_CARATER_ATENDIMENTO_INTEGRA | VARCHAR2 | Y | Codigo sequencial carater de internac?o (de-para) |
| 58 | CD_PACIENTE | NUMBER | Y | Codigo do paciente |
| 59 | DS_CONSELHO | VARCHAR2 | Y | Descric?o do conselho CRM |

---

## MVINTEGRA.IMV_LAUDO_PSDI
> Tabela responsavel por receber os laudos dos exames de imagem

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IMV_LAUDO_PSDI | NUMBER | N | Codigo sequencial da tabela |
| 2 | TP_FLUXO | VARCHAR2 | N | Tipo de fluxo do registro (E - Entrada / S - Saida) |
| 3 | TP_STATUS | VARCHAR2 | N | Status do registro (A - Aguardando / E - Erro / T - Transmitido / P - Em processamento) |
| 4 | DS_ERRO | VARCHAR2 | Y | Descric?o da mensagem de erro ocorrido no processamento da mensagem |
| 5 | DT_GERADO | DATE | N | Data de gerac?o do registro na tabela |
| 6 | DT_PROCESSADO | DATE | Y | Data de processamento do registro |
| 7 | TP_MOVIMENTO | VARCHAR2 | N | Tipo do movimento do registro (I - Inclus?o / A - Alterac?o / E - Exclus?o) |
| 8 | TP_REGISTRO | VARCHAR2 | N | Tipo do registro (001 - Solicitac?o AIH / 002 - Autorizac?o AIH) |
| 9 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da multi-empresa |
| 10 | CD_MULTI_EMPRESA_INTEGRA | VARCHAR2 | Y | Codigo de-para da multi-empresa |
| 11 | CD_REGISTRO_PRINCIPAL | NUMBER | Y | Codigo identificador do registro principal da mensagem |
| 12 | CD_REGISTRO_PAI | NUMBER | Y | Codigo identificador do registro pai da mensagem |
| 13 | CD_ATENDIMENTO | VARCHAR2 | Y | Codigo do atendimento |
| 14 | CD_ATENDIMENTO_INTEGRA | VARCHAR2 | Y | Codigo do atendimento de para |
| 15 | CD_PACIENTE | VARCHAR2 | Y | Codigo do paciente |
| 16 | CD_PACIENTE_INTEGRA | VARCHAR2 | Y | Codigo do paciente de para |
| 17 | NM_PACIENTE | VARCHAR2 | Y | Nome do paciente |
| 18 | VL_PESO | NUMBER | Y | Peso |
| 19 | VL_ALTURA | NUMBER | Y | Altura |
| 20 | VL_AORTA | NUMBER | Y | Aorta |
| 21 | VL_ATRIO_ESQUERDO | NUMBER | Y | atrio esquerdo |
| 22 | VL_VENTRICULO_DIREITO | NUMBER | Y | ventriculo direito |
| 23 | VL_SEPTO_INTERVENTRICULAR | NUMBER | Y | septo interventricular |
| 24 | VL_PAREDE_POSTERIOR | NUMBER | Y | parece posterior |
| 25 | VL_DIAMETRO_DIASTOLICO | NUMBER | Y | diametro diastolico |
| 26 | VL_DIAMETRO_SISTOLICO | NUMBER | Y | diametro sistolico |
| 27 | VL_ATRIO_ESQUERDO_AORTA | NUMBER | Y | atrio esquerdo aorta |
| 28 | VL_SEPTO_PAREDE | NUMBER | Y | septo parede |
| 29 | VL_DELTA_FRAC_ENCURT | NUMBER | Y | delta |
| 30 | VL_FRACAO | NUMBER | Y | fracao |
| 31 | VL_MASSA | NUMBER | Y | massa |
| 32 | VL_IND_MASSA | NUMBER | Y | indice de massa |
| 33 | VL_RELACAO_VM | NUMBER | Y | valor da relac?o valor massa |
| 34 | VL_SUPERFICIE_CORPOREA | NUMBER | Y | superficie corporea |
| 35 | VL_FATOR_DIASTOLICO | NUMBER | Y | fator diastolico |
| 36 | VL_FATOR_SISTOLICO | NUMBER | Y | fator sistolico |
| 37 | CD_PEDIDO | VARCHAR2 | Y | Codigo do pedido |
| 38 | CD_PEDIDO_INTEGRA | VARCHAR2 | Y | Codigo do Pedido de para |
| 39 | CD_INTEGRA_SEQUENCE_EXTERNA | NUMBER | Y |  |
| 40 | CD_ITEM_PEDIDO | VARCHAR2 | Y | Codigo do item do pedido |
| 41 | CD_ITEM_PEDIDO_INTEGRA | VARCHAR2 | Y | Codigo do item do pedido de para |
| 42 | CD_EXAME | VARCHAR2 | Y | Codigo do exame |
| 43 | CD_EXAME_INTEGRA | VARCHAR2 | Y | Codigo do exame de para |
| 44 | NM_EXAME | VARCHAR2 | Y | Nome do exame |
| 45 | CD_SETOR_EXECUTANTE | NUMBER | Y | Codigo do setor executante |
| 46 | CD_SETOR_EXECUTANTE_INTEGRA | VARCHAR2 | Y | Codigo do setor executante de para |
| 47 | NM_SETOR_EXECUTANTE | VARCHAR2 | Y | Nome do setor executante |
| 48 | CD_PRESTADOR_EXEC | VARCHAR2 | Y | Codigo do prestador executante |
| 49 | CD_PRESTADOR_EXEC_INTEGRA | VARCHAR2 | Y | Codigo do prestador executante de para |
| 50 | NM_PRESTADOR_EXEC | VARCHAR2 | Y | Nome do prestador executante |
| 51 | CD_PRESTADOR_TECNICO | VARCHAR2 | Y | Codigo do prestador tecnico |
| 52 | CD_PRESTADOR_TECNICO_INTEGRA | VARCHAR2 | Y | Codigo do prestador tecnico de para |
| 53 | NM_PRESTADOR_TECNICO | VARCHAR2 | Y | Nome do prestador tecnico |
| 54 | CD_USUARIO_DIGITADOR | VARCHAR2 | Y | Codigo do usuario digitador |
| 55 | CD_USUARIO_DIGITADOR_INTEGRA | VARCHAR2 | Y | Codigo do usuario digitador de para |
| 56 | NM_USUARIO_DIGITADOR | VARCHAR2 | Y | Nome do usuario digitador |
| 57 | SN_IMAGEM_DISPONIVEL | VARCHAR2 | Y | Indica se a imagem ja esta disponivel |
| 58 | DT_IMAGEM_DISPONIVEL | DATE | Y | Data da liberacao da imagem |
| 59 | DT_REALIZACAO | DATE | Y | Data da realizacao do exame |
| 60 | CD_LAUDO | NUMBER | Y |  |
| 61 | CD_LAUDO_INTEGRA | VARCHAR2 | Y |  |
| 62 | DS_LAUDO | BLOB | Y | Descricao do laudo |
| 63 | DS_LAUDO_ECO | LONG | Y |  |
| 64 | DS_MOTIVO | VARCHAR2 | Y |  |
| 65 | CD_INSUMO | NUMBER | Y | Codigo do Insumo |
| 66 | CD_INSUMO_INTEGRA | VARCHAR2 | Y | Codigo do Insumo de para |
| 67 | DS_INSUMO | VARCHAR2 | Y | Descricao do insumo |
| 68 | TP_INSUMO | NUMBER | Y | Tipo do insumo |
| 69 | CD_UNIDADE | VARCHAR2 | Y | Codigo da unidade do insumo |
| 70 | CD_UNIDADE_INTEGRA | VARCHAR2 | Y | Codigo da unidade do insumo de para |
| 71 | DS_UNIDADE | VARCHAR2 | Y | Descricao da unidade do insumo |
| 72 | VL_FATOR | NUMBER | Y | Valor do fator do insumo |
| 73 | QT_INSUMO | NUMBER | Y | Quantidade do insumo |
| 74 | CD_IMV_LOG_REQUISICAO | NUMBER | Y | Codigo da mensagem que esta na mvintegra.inv_log_requisicao que originou este registro. |
| 75 | TP_MOTIVO | VARCHAR2 | Y | Tipo do Motivo |
| 76 | DS_ENFERMARIA | VARCHAR2 | Y | Descric?o da Enfermaria |
| 77 | DS_ESTACAO_DICOM | VARCHAR2 | Y | Identificac?o da estac?o DICOM |
| 78 | DS_SIGLA_MODALIDADE_EXAME | VARCHAR2 | Y | Sigla de Identificac?o da modalidade do exame |
| 79 | DS_REGIAO | VARCHAR2 | Y | Descric?o da Regi?o |
| 80 | DS_LOCAL_EXAME | VARCHAR2 | Y | Descric?o do local do exame |
| 81 | CD_PRESTADOR_SOLIC | NUMBER | Y | codigo prestador solicitante |
| 82 | CD_PRESTADOR_SOLIC_INTEGRA | VARCHAR2 | Y | codigo do prestador solicitante depara |
| 83 | NM_PRESTADOR_SOLICITANTE | VARCHAR2 | Y | nome do prestador solicitante |
| 84 | TP_CONSELHO_SOLICITANTE | VARCHAR2 | Y | tipo do conselho do prestador solicitante |
| 85 | NR_CONSELHO_SOLICITANTE | VARCHAR2 | Y | numero do conselho do prestador solicitante |
| 86 | TP_CONSELHO_TECNICO | VARCHAR2 | Y | tipo do conselho do tecnico |
| 87 | NR_CONSELHO_TECNICO | VARCHAR2 | Y | numero do conselho do tecnico |
| 88 | CD_SETOR_SOLIC | NUMBER | Y | codigo do setor solicitante |
| 89 | CD_SETOR_SOLIC_INTEGRA | VARCHAR2 | Y | codigo do setor solicitante depara |
| 90 | NM_SETOR_SOLIC | VARCHAR2 | Y | nome do setor solicitante |
| 91 | DT_NASCIMENTO | DATE | Y | data de nascimento do paciente |
| 92 | DT_ENTREGUE | DATE | Y | data de entrega do exame |
| 93 | CD_LABORATORIO | NUMBER | Y | codigo do laboratorio |
| 94 | CD_LABORATORIO_INTEGRA | VARCHAR2 | Y | codigo do laboratorio depara |
| 95 | DS_LABORATORIO | VARCHAR2 | Y | descricao do laboratorio |
| 96 | DT_PEDIDO | DATE | Y | data do pedido |
| 97 | HR_PEDIDO | DATE | Y | hora do pedido |
| 98 | NR_CONTROLE | NUMBER | Y | numero de controle do pedido |
| 99 | NR_PESO | NUMBER | Y | peso do paciente |
| 100 | TP_SEXO | VARCHAR2 | Y | tipo do sexo do paciente |
| 101 | NR_ALTURA | NUMBER | Y | altura do paciente |
| 102 | CD_CONVENIO | NUMBER | Y | codigo do convenio do paciente |
| 103 | CD_CONVENIO_INTEGRA | VARCHAR2 | Y | codigo do convenio do paciente depara |
| 104 | NM_CONVENIO | VARCHAR2 | Y | nome do convenio do paciente |
| 105 | CD_PLANO | NUMBER | Y | codigo do plano do paciente |
| 106 | CD_PLANO_INTEGRA | VARCHAR2 | Y | codigo do plano do pacinente depara |
| 107 | DS_PLANO | VARCHAR2 | Y | descricao do plano do paciente |
| 108 | CD_EXAME_FATURAMENTO | VARCHAR2 | Y | codigo do exame no faturamento |
| 109 | DS_EXAME_FATURAMENTO | VARCHAR2 | Y | descricao do exame no faturamento |
| 110 | CD_USUARIO_PEDIDO | VARCHAR2 | Y | codigo do usuario que fez o pedido |
| 111 | NR_GUIA | VARCHAR2 | Y | numero da guia |
| 112 | DT_ENTREGA | DATE | Y | data de entrega do exame |
| 113 | DS_ORIENTACAO_EXAME | VARCHAR2 | Y | descricao da orientacao do exame |
| 114 | DS_EXAME | VARCHAR2 | Y | descricao do exame |
| 115 | DS_OBSERVACAO | VARCHAR2 | Y | observacao do exame |
| 116 | DT_VALIDADE_GUIA | VARCHAR2 | Y | data de validade da guia |
| 117 | CD_MODALIDADE_EXAME | NUMBER | Y | codigo da modalidade do exame |
| 118 | CD_LEITO | NUMBER | Y | codigo do leito |
| 119 | DS_LEITO | VARCHAR2 | Y | descricao do leito |
| 120 | DS_LEITO_RESUMIDO | VARCHAR2 | Y | descricao do leito resumido |
| 121 | CD_SISTEMA_ORIGEM | VARCHAR2 | Y | Coluna que armazena o codigo do sistema de origem |
| 122 | CD_PRESTADOR_2 | VARCHAR2 | Y | Codigo do prestador 2 que cria o laudo |
| 123 | CD_PRESTADOR_2_INTEGRA | VARCHAR2 | Y | Codigo do prestador 2 que cria o laudo (de-para) |
| 124 | NM_PRESTADOR_2 | VARCHAR2 | Y | Nome do prestador 2 que cria o laudo |
| 125 | SN_ASSINADO | VARCHAR2 | Y | Informa se o laudo esta assinado |
| 126 | DH_ASSINADO | DATE | Y | Data e hora da assinatura do laudo |
| 127 | CD_PRESTADOR_ASSINATURA | NUMBER | Y | Codigo do prestador que assinou o laudo |
| 128 | CD_PRESTADOR_ASSIN_INTEGRA | VARCHAR2 | Y | Codigo de-para do prestador que assinou o laudo |
| 129 | NM_PRESTADOR_ASSINATURA | VARCHAR2 | Y | Nome do prestador que assinou o laudo |
| 130 | CD_PRESTADOR_ASSINATURA2 | NUMBER | Y | Codigo do prestador 2 que assinou o laudo |
| 131 | CD_PRESTADOR_ASSIN2_INTEGRA | VARCHAR2 | Y | Codigo de-para do prestador 2 que assinou o laudo |
| 132 | NM_PRESTADOR_ASSINATURA2 | VARCHAR2 | Y | Nome do prestador 2 que assinou o laudo |

---

## MVINTEGRA.IMV_LEITO
> Tabela de integrac?o de leitos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IMV_LEITO | NUMBER | N | Codigo sequencial do registro na integrac?o |
| 2 | TP_FLUXO | VARCHAR2 | N | Tipo de fluxo do registro (E - Entrada / S - Saida) |
| 3 | TP_STATUS | VARCHAR2 | N | Status do registro (A - Aguardando / E - Erro / T - Transmitido / P - Em processamento) |
| 4 | DS_ERRO | VARCHAR2 | Y | Descric?o da mensagem de erro ocorrido no processamento da mensagem |
| 5 | DT_GERADO | DATE | N | Data de gerac?o do registro na tabela |
| 6 | DT_PROCESSADO | DATE | Y | Data de processamento do registro |
| 7 | TP_MOVIMENTO | VARCHAR2 | N | Tipo do movimento do registro (I - Inclus?o / A - Alterac?o / E - Exclus?o) |
| 8 | TP_REGISTRO | VARCHAR2 | N | Identificac?o do tipo de registro existente: 001 ? Dados gerais da conta a pagar/receber / 002 ? ... |
| 9 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da multi-empresa |
| 10 | CD_MULTI_EMPRESA_INTEGRA | VARCHAR2 | Y | Codigo de-para da multi-empresa |
| 11 | CD_REGISTRO_PRINCIPAL | NUMBER | Y | Codigo identificador do registro principal da mensagem |
| 12 | CD_REGISTRO_PAI | NUMBER | Y | Codigo identificador do registro pai da mensagem |
| 13 | CD_UNIDADE_INTERNACAO | NUMBER | Y | Codigo da Unidade de Internac?o ao qual o leito pertence |
| 14 | CD_UNIDADE_INTERNACAO_INTEGRA | VARCHAR2 | Y | Codigo da Unidade de Internac?o de compatibilidade entre sistemas (de-para) |
| 15 | DS_UNIDADE_INTERNACAO | VARCHAR2 | Y | Descric?o da Unidade de Internac?o |
| 16 | DS_LOCALIZACAO | VARCHAR2 | Y | Localixac?o da unidade de internac?o |
| 17 | CD_SETOR | NUMBER | Y | Codigo do setor(centro de custo) que a unidade pertence |
| 18 | CD_SETOR_INTEGRA | VARCHAR2 | Y | Codigo do setor para compatibilidade entre sistemas (de-para) |
| 19 | TP_UNIDADE_INTERNACAO | VARCHAR2 | Y | Tipo da unidade de internac?o |
| 20 | SN_HOSPITAL_DIA | VARCHAR2 | Y | Identifica se a unidade e para atendimentos do tipo Day Hospital |
| 21 | CD_LEITO | NUMBER | Y | Codigo do leito |
| 22 | CD_LEITO_INTEGRA | VARCHAR2 | Y | Codigo do leito de compatibilidade entre sistema (de-para) |
| 23 | DS_LEITO | VARCHAR2 | Y | Descric?o do leito |
| 24 | DS_LEITO_RESUMIDO | VARCHAR2 | Y | Descric?o resumida do leito |
| 25 | DS_ENFERMARIA | VARCHAR2 | Y | Nome da Enfermaria |
| 26 | TP_SEXO | VARCHAR2 | Y | Sexo padr?o para atendimento de pacientes |
| 27 | CD_ACOMODACAO | NUMBER | Y | Codigo padr?o da acomodac?o do leito |
| 28 | CD_ACOMODACAO_INTEGRA | VARCHAR2 | Y | Codigo padr?o da acomodac?o do leito (de-para) |
| 29 | DS_ACOMODACAO | VARCHAR2 | Y | Descric?o da acomodac?o padr?o do leito |
| 30 | CD_COPA | NUMBER | Y | Codigo da Copa que atende essa Unidade de Internac?o |
| 31 | DS_COPA | VARCHAR2 | Y | Descric?o da Copa |
| 32 | TP_OCUPACAO | VARCHAR2 | Y | Tipo de ocupac?o do leito |
| 33 | DS_OCUPACAO | VARCHAR2 | Y | Descric?o da ocupac?o do leito |
| 34 | SN_ATIVO | VARCHAR2 | Y | Identifica se o registro esta ativo (S) ou inativo (N) |
| 35 | DT_ATIVACAO | DATE | Y | Data que houve a ativac?o do leito |
| 36 | DT_DESATIVACAO | DATE | Y | Data que houve a desativac?o do leito |
| 37 | SN_LEITO_EXTRA | VARCHAR2 | Y | identifica se o leito do tipo extra (S) |
| 38 | SN_ALTA_MEDICA | VARCHAR2 | Y | Indica se permite alta medica no leito |
| 39 | NR_RAMAL | VARCHAR2 | Y | Ramal do leito |
| 40 | DT_MOVIMENTO_INICIO | DATE | Y | Data que o leito passou a ser utilizado |
| 41 | DT_MOVIMENTO_FINAL | DATE | Y | Data que o leito ficou disponivel |
| 42 | CD_ATENDIMENTO | NUMBER | Y | Data do atendimento do paciente |
| 43 | NM_PACIENTE | VARCHAR2 | Y | Nome do paciente |
| 44 | TP_ACOMODACAO | VARCHAR2 | Y | Tipo da acomodac?o |
| 45 | CD_USUARIO | VARCHAR2 | Y | Nome do usuario responsavel pela movimentac?o do registro |
| 46 | CD_PACIENTE | NUMBER | Y | Codigo do paciente |
| 47 | TP_OCUPACAO_INTEGRA | VARCHAR2 | Y | Tipo de ocupac?o De-Para |
| 48 | CD_SISTEMA_ORIGEM | VARCHAR2 | Y | Coluna que vai conter o codigo do sistema origem da mensagem, usada na entrada de mensagens |
| 49 | CD_IMV_LOG_REQUISICAO | NUMBER | Y | Codigo da mensagem que esta na mvintegra.inv_log_requisicao que originou este registro. |

---

## MVINTEGRA.IMV_LOG_REQUISICAO
> tabela de log de requisicao

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IMV_LOG_REQUISICAO | NUMBER | N | c??digo do log |
| 2 | DH_CRIACAO_LOG | DATE | N | data e hora da cria???#o do log |
| 3 | NM_SERVICO | VARCHAR2 | N | nome do servi??o do log |
| 4 | SN_SUCESSO | VARCHAR2 | N | se o processamento foi bem sucedido, S=sim, N=n?#o |
| 5 | LO_MENSAGEM | BLOB | N | conteudo da mensagem |
| 6 | LO_RESPOSTA | BLOB | N | resposta |
| 7 | DH_RETORNO | DATE | Y | Data e hora que foi retornada a informac?o para o sistema que requisitou o servico |
| 8 | DS_ERRO | VARCHAR2 | Y | Coluna que sera preenchida se houver erro no processamento |
| 9 | CD_SISTEMA_ORIGEM | VARCHAR2 | Y | Codigo do sistema que enviou a mensagem valor que vem na TAG <sistemaOrigem> |
| 10 | CD_EMPRESA_DESTINO | VARCHAR2 | Y | Codigo da empresa destino no MV este codigo deve ser o codigo multi empresa, e esta na tag <empre... |
| 11 | LO_MENSAGEM_TERCEIRO | BLOB | Y | Coluna que contem a mensagem enviada pelo o Terceiro usando uma caixinha especifica |
| 12 | LO_RESPOSTA_TERCEIRO | BLOB | Y | Coluna que contem a resposta que foi enviada para o Terceiro usando uma caixinha especifica |
| 13 | NM_INSTANCIA | VARCHAR2 | Y |  |

---

## MVINTEGRA.IMV_MATERIAIS
> Tabela usada para a integrac?o de Materiais

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IMV_MATERIAIS | NUMBER | N | Codigo sequencial da integrac?o |
| 2 | TP_FLUXO | VARCHAR2 | N |  |
| 3 | TP_STATUS | VARCHAR2 | N | Identifica o status da integrac?o |
| 4 | DS_ERRO | VARCHAR2 | Y | Descric?o do erro, caso o campo TP_INTEGRACAO seja igual a "E" |
| 5 | DT_GERADO | DATE | N | Data de inclus?o do registro nesta tabela de integrac?o |
| 6 | DT_PROCESSADO | DATE | Y | Data de Integrac?o com o MV2000i |
| 7 | TP_MOVIMENTO | VARCHAR2 | N | Identifica o tipo de movimento. I-Iclus?o, A-Alterac?o, E-Exclus?o e D-Desativado |
| 8 | TP_REGISTRO | VARCHAR2 | N | Identifica o tipo do registro |
| 9 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da empresa no MV2000i |
| 10 | CD_MULTI_EMPRESA_INTEGRA | VARCHAR2 | Y | Codigo multi empresa de para |
| 11 | CD_REGISTRO_PRINCIPAL | NUMBER | Y | Codigo de controle para saber qual o registro PRINCIPAL da transac?o atual |
| 12 | CD_REGISTRO_PAI | NUMBER | Y | Codigo de controle para saber qual o registro PAI do registro atual |
| 13 | CD_ESPECIE | NUMBER | Y | Codigo da especie |
| 14 | CD_ESPECIE_INTEGRA | VARCHAR2 | Y | Codigo da especie (de-para) |
| 15 | DS_ESPECIE | VARCHAR2 | Y | Descric?o da especie |
| 16 | CD_CLASSE | NUMBER | Y | Codigo da classe |
| 17 | CD_CLASSE_INTEGRA | VARCHAR2 | Y | Codigo da classe (de-para) |
| 18 | DS_CLASSE | VARCHAR2 | Y | Descric?o da classe |
| 19 | CD_SUB_CLA | NUMBER | Y | Codigo da sub_classe |
| 20 | CD_SUB_CLA_INTEGRA | VARCHAR2 | Y | Codigo da sub_classe (de-para) |
| 21 | DS_SUB_CLA | VARCHAR2 | Y | Descric?o da sub-classe |
| 22 | CD_PRODUTO | NUMBER | Y | Codigo do produto |
| 23 | CD_PRODUTO_INTEGRA | VARCHAR2 | Y | Codigo do produto (de-para) |
| 24 | DS_PRODUTO | VARCHAR2 | Y | Descric?o do produto |
| 25 | DS_PRODUTO_RESUMIDO | VARCHAR2 | Y | Descric?o resumida do produto |
| 26 | SN_MESTRE | VARCHAR2 | Y | Identifica se o produot e ou n?o um mestre |
| 27 | CD_PRODUTO_TEM | NUMBER | Y |  |
| 28 | CD_PRODUTO_TEM_INTEGRA | VARCHAR2 | Y |  |
| 29 | SN_MOVIMENTACAO | VARCHAR2 | Y | Identifica se o produto podera ser ou n?o movimentado |
| 30 | SN_CONTROLE_VALIDADE | VARCHAR2 | Y | Identifica se o produto sera ou n?o controlado pela sua data de validade |
| 31 | SN_PADRONIZADO | VARCHAR2 | Y | Indica se o produto e padronizado |
| 32 | SN_CONTROLADO | VARCHAR2 | Y | Indica se o produto e um medicamento controlado |
| 33 | SN_LOTE | VARCHAR2 | Y | Identifica se o produto sera ou n?o controlado pelo lote |
| 34 | CD_PRO_FAT | VARCHAR2 | Y | Codigo do produto no faturamento |
| 35 | CD_PRO_FAT_INTEGRA | VARCHAR2 | Y | Codigo do produto no faturamento DE-PARA |
| 36 | DS_PRO_FAT | VARCHAR2 | Y | Descric?o do codigo pro_fat |
| 37 | VL_FATOR_PRO_FAT | NUMBER | Y | Fator do produto para o faturamento |
| 38 | SN_MEDICAMENTO | VARCHAR2 | Y | Identifica se o produto e ou n?o um medicamento |
| 39 | SN_BLOQUEIO_COMPRA | VARCHAR2 | Y | Identifica se o produto esta bloqueado para ser comprado |
| 40 | SN_KIT | VARCHAR2 | Y | Identifica se o produto e ou n?o um Kit |
| 41 | SN_CONSIGNADO | VARCHAR2 | Y | Indica se o produto e consignado |
| 42 | SN_INVASIVO | VARCHAR2 | Y | Indica se o produto e invasivo |
| 43 | CD_PRO_FAT_SUS | VARCHAR2 | Y | Codigo do produto no faturamento sus |
| 44 | DS_PROCEDIMENTO_SUS | VARCHAR2 | Y | Descric?o do codigo pro_fat_sus |
| 45 | TP_ATUALIZACAO_PRECO | VARCHAR2 | Y | Tipo de atualizac?o do preco do produto |
| 46 | VL_PERCENTUAL_VARIACAO | NUMBER | Y | Percentual de variac?o |
| 47 | TP_CLASSIFICACAO_TRIBUTARIA | VARCHAR2 | Y | Tipo de Classificac?o tributaria |
| 48 | DS_ESPECIFICACAO | VARCHAR2 | Y | Esecificac?o tecnica do produto |
| 49 | NR_ORDEM_PREFERENCIA | VARCHAR2 | Y |  |
| 50 | CD_DCB | VARCHAR2 | Y | Codigo DCB do produto |
| 51 | CD_UNI_PRO_REFE_INTEGRA | NUMBER | Y |  |
| 52 | CD_UNI_PRO_COMPRA_INTEGRA | NUMBER | Y |  |
| 53 | CD_UNI_PRO_VENDA_INTEGRA | NUMBER | Y |  |
| 54 | CD_UNI_PRO_CONSU_INTEGRA | NUMBER | Y |  |
| 55 | DT_CADASTRO | DATE | Y | Data de cadastro |
| 56 | TP_CLASSIFICACAO_XYZ | VARCHAR2 | Y | Tipo da classificac?o XYZ |
| 57 | CD_TIPO_ATIVIDADE | NUMBER | Y | Codigo do tipo de atividade relacionada ao produto |
| 58 | DS_TIPO_ATIVIDADE | VARCHAR2 | Y | Descric?o do tipo de atividade |
| 59 | CD_SICAN | VARCHAR2 | Y | Codigo Sican do produto |
| 60 | VL_PRECO_DE_VENDA | NUMBER | Y | Valor de venda |
| 61 | VL_CUSTO_MEDIO | NUMBER | Y | Valor do custo medio |
| 62 | QT_ESTOQUE_ATUAL | NUMBER | Y | Estoque atual do produto |
| 63 | QT_ESTOQUE_RESERVADO | NUMBER | Y | Quantida reservada do produto |
| 64 | QT_ESTOQUE_MINIMO | NUMBER | Y | Estoque minimo do produto |
| 65 | QT_ESTOQUE_MAXIMO | NUMBER | Y | Estoque maximo do produto |
| 66 | QT_PONTO_DE_PEDIDO | NUMBER | Y | Ponto de pedido do produto |
| 67 | CD_ITUNIDADE | NUMBER | Y | Codigo do Item da Unidade no MV2000 |
| 68 | CD_ITUNIDADE_INTEGRA | VARCHAR2 | Y | Codigo da Unidade no outro sistema |
| 69 | CD_UNIDADE | VARCHAR2 | Y | Codigo da Unidade do MV2000 |
| 70 | CD_UNIDADE_INTEGRA | VARCHAR2 | Y |  |
| 71 | NM_ITUNIDADE | VARCHAR2 | Y | Nome do Item da Unidade no MV2000 |
| 72 | DS_ITUNIDADE | VARCHAR2 | Y | Descric?o do Item da Unidade no MV2000 |
| 73 | VL_FATOR | NUMBER | Y | Valor do fator de convers?o da Unidade no MV2000 |
| 74 | TP_UNIDADE_PRODUTO | VARCHAR2 | Y | Tipo da Unidade do Produto |
| 75 | SN_PRODUTO_PERMANENTE | VARCHAR2 | Y | Identifica se o produto e ou n?o um produto permanente |
| 76 | CD_CONDICAO_PAGAMENTO | NUMBER | Y | Codigo da condic?o de pagamento |
| 77 | CD_CONDICAO_PAGAMENTO_INTEGRA | VARCHAR2 | Y | Codigo da condic?o de pagamento (de-para) |
| 78 | DS_CONDICAO_PAGAMENTO | VARCHAR2 | Y | Descric?o da condic?o de pagamento |
| 79 | TP_PRAZO_PAGAMENTO | VARCHAR2 | Y | Tipo do prazo de pagamento |
| 80 | DS_TIPO_PRAZO_PAGAMENTO | VARCHAR2 | Y | Descric?o do tipo de prazo de pagamento |
| 81 | TP_DATA_BASE_PARCELA | VARCHAR2 | Y | Tipo da data base para a gerac?o das parcelas |
| 82 | DS_TP_DATA_BASE_PARCELA | VARCHAR2 | Y | Descric?o do tipo de data base para a gerac?o das parcelas |
| 83 | NR_PARCELA | NUMBER | Y | Numero da parcela |
| 84 | QT_DIAS_INTERVALO_PARCELA | NUMBER | Y | Quantidade de dias de intervalo entgre as parcelas |
| 85 | VL_PERCENTUAL_PARCELA | NUMBER | Y | Percentual de cada parcela |
| 86 | CD_CLASSIFICACAO | NUMBER | Y | Codigo referente a classificac?o |
| 87 | CD_CLASSIFICACAO_INTEGRA | VARCHAR2 | Y | Codigo referente a classificac?o (de-para) |
| 88 | DS_CLASSIFICACAO | VARCHAR2 | Y | Descric?o da classificac?o |
| 89 | CD_SUB_CLASSIFICACAO | NUMBER | Y | Codigo referente a Sub-classificac?o |
| 90 | CD_SUB_CLASSIFICACAO_INTEGRA | VARCHAR2 | Y | Codigo referente a Sub-classificac?o (de-para) |
| 91 | DS_SUB_CLASSIFICACAO | VARCHAR2 | Y | Descric?o da Sub-classificac?o |
| 92 | CD_FORNECEDOR | NUMBER | Y | Codigo do fornecedor do item |
| 93 | CD_FORNECEDOR_INTEGRA | VARCHAR2 | Y | Codigo do fornecedor (de-para) |
| 94 | NM_FORNECEDOR | VARCHAR2 | Y | Nome do fornecedor |
| 95 | CD_LOCALIDADE | NUMBER | Y | Codigo da localizac?o do item |
| 96 | CD_LOCALIDADE_INTEGRA | VARCHAR2 | Y | Codigo da localizac?o do item (de-para) |
| 97 | DS_LOCALIDADE | VARCHAR2 | Y | Descric?o da localizac?o do item |
| 98 | CD_BAIXA | NUMBER | Y | Codigo do motivo da baixa |
| 99 | CD_BAIXA_INTEGRA | VARCHAR2 | Y | Codigo do motivo da baixa (de-para) |
| 100 | DS_BAIXA | VARCHAR2 | Y | Descric?o do motivo da baixa |
| 101 | CD_EMPRESA_ORIGEM | NUMBER | Y | Codigo da empresa em que o item esteve alocado |
| 102 | CD_EMPRESA_ORIGEM_INTEGRA | VARCHAR2 | Y | Codigo da empresa em que o item esteve alocado (de-para) |
| 103 | CD_SETOR | NUMBER | Y | Codigo do setor onde o item esta alocado |
| 104 | CD_SETOR_INTEGRA | VARCHAR2 | Y | Codigo do setor onde o item esta alocado (de-para) |
| 105 | NM_SETOR | VARCHAR2 | Y | Nome do setor onde o item esta alocado |
| 106 | CD_TIPO_AQUISICAO | NUMBER | Y | Codigo do tipo de aquisc?o |
| 107 | CD_TIPO_AQUISICAO_INTEGRA | VARCHAR2 | Y | Codigo do tipo de aquisc?o (de-para) |
| 108 | DS_TIPO_AQUISICAO | VARCHAR2 | Y | Descric?o do tipo de aquisc?o |
| 109 | DS_ESPECIFICACOES | VARCHAR2 | Y | Detalhes do item |
| 110 | DS_GARANTIA_PENHORA | VARCHAR2 | Y | Descric?o da garantia de penhora do item |
| 111 | DS_MARCA | VARCHAR2 | Y | Marca do item |
| 112 | DS_MODELO | VARCHAR2 | Y | Modelo do item |
| 113 | DS_OBSERVACAO | VARCHAR2 | Y | Observac?es para o item |
| 114 | DS_PLAQUETA | VARCHAR2 | Y | Descric?o da plaqueta do item |
| 115 | DT_BAIXA | DATE | Y | Data da baixa do item |
| 116 | HR_BAIXA | DATE | Y | Hora da baica do item |
| 117 | DT_CANCELAMENTO_BAIXA | DATE | Y | Data do cancelamento da baixa do item |
| 118 | DT_COMPRA | DATE | Y | Data de compra do item |
| 119 | DT_TOMBAMENTO | DATE | Y | Data do tombamento do item |
| 120 | DT_ULTIMA_DEPRECIACAO | DATE | Y | Data da ultima depreciac?o do item |
| 121 | DT_ULTIMA_PREVENTIVA | DATE | Y | Data da ultima manutenc?o preventiva do item |
| 122 | DT_GARANTIA | DATE | Y | Data da garantia do item |
| 123 | NR_ANOS_UTIL | NUMBER | Y | Vida util do item em anos |
| 124 | NR_DIAS_PREVENTIVA | NUMBER | Y | Periodicidade de manutenc?o preventiva em dias |
| 125 | NR_MES_DEPRECIACAO | NUMBER | Y | Mes em que o item deprecia |
| 126 | NR_NOTA_FISCAL | VARCHAR2 | Y | Numero da Nota Fiscal de compra do item |
| 127 | NR_SERIE | VARCHAR2 | Y | Numero de serie do item |
| 128 | SN_DESP_OPERACIONAL | VARCHAR2 | Y | Item deve ser contabilizado como Despesa Operacional |
| 129 | SN_GARANTIA_PENHORA | VARCHAR2 | Y | Indica se o item tem garantia/penhora |
| 130 | SN_NATUREZA_PERMANENTE | VARCHAR2 | Y | Sim - permanentes. N?o - terceiros |
| 131 | TP_DEPRECIACAO | VARCHAR2 | Y | (M) Informa que este e um lote de depreciac?o mensal - (A) Informa que este e um lote de deprecia... |
| 132 | NR_TAXA_DEPRECIACAO | NUMBER | Y | Coluna tem finalidade de armazenar a taxa de depreciac?o aplicada ao bem. |
| 133 | VL_COMPRA | NUMBER | Y | Valor de compra do item |
| 134 | VL_DEPRECIACAO | NUMBER | Y | Valor da depreciac?o |
| 135 | VL_HISTORICO | NUMBER | Y | Valor historico |
| 136 | VL_INDEXADO | NUMBER | Y | Valor indexado |
| 137 | VL_REFERENCIA | NUMBER | Y | Valor de referencia |
| 138 | CD_ESTOQUE | NUMBER | Y | Codigo do Estoque no MV2000 |
| 139 | CD_ESTOQUE_INTEGRA | VARCHAR2 | Y | Codigo do estoque no sistema externo |
| 140 | DS_ESTOQUE | VARCHAR2 | Y | Descric?o do Estoque no MV2000 |
| 141 | TP_SEXO | VARCHAR2 | Y | Tipo do sexo que usa o produto |
| 142 | TP_ATIVO | VARCHAR2 | Y | Status do produto |
| 143 | SN_IMPRIME_ETIQUETA | VARCHAR2 | Y | Indica se o produto imprime etiqueta |
| 144 | TP_CARATER | VARCHAR2 | Y | Tipo do carater do produto |
| 145 | CD_LISTA_CODIGO_MEDICAMENTO | VARCHAR2 | Y | Codigo da lista de medicamentos do produto |
| 146 | CD_UNI_PRO | NUMBER | Y | Codigo da unidade de produto |
| 147 | CD_UNI_PRO_INTEGRA | VARCHAR2 | Y | Codigo da unidade de produto integra |
| 148 | DS_UNIDADE | VARCHAR2 | Y | Descric?o da unidade |
| 149 | CD_EMBALAGEM | VARCHAR2 | Y | Codigo da Embalagem |
| 150 | CD_EMBALAGEM_INTEGRA | VARCHAR2 | Y | Codigo da Embalagem integra |
| 151 | DS_EMBALAGEM | VARCHAR2 | Y | Descric?o da embalagem |
| 152 | NR_CNPJ | NUMBER | Y | Numero do CNPJ do Fornecedor |
| 153 | QT_ENTRADA | NUMBER | Y | Quantidade do Produto que deu Entrada na Empresa |
| 154 | QT_DEVOLVIDA | NUMBER | Y | Quantidade do Produto que foram devoldidas |
| 155 | QT_TOMBADO | NUMBER | Y | Quantidade do produto que foi comprado na nota, tombado para o patrimonio |
| 156 | QT_RESTANTE | NUMBER | Y | Quantidade restante do produto comprado |
| 157 | VL_CUSTO_REAL | NUMBER | Y | Valor do custo unitario do produto ( custo real ) |
| 158 | CD_ITENT_PRO | NUMBER | Y | Codigo do item do documento |
| 159 | CD_SETOR_ANTERIOR | NUMBER | Y | Codigo do setor anterior a movimentac?o do bem |
| 160 | NM_SETOR_ANTERIOR | VARCHAR2 | Y | Nome do setor anterior que o bem estava anterior a movimentac?o |
| 161 | CD_LOCALIDADE_ANTERIOR | NUMBER | Y | Codigo da localidade do bem antes da movimentac?o |
| 162 | DS_LOCALIDADE_ANTERIOR | VARCHAR2 | Y | Descric?o da localidade que o bem estava antes da movimentac?o. |
| 163 | CD_EMPRESA_DESTINO | NUMBER | Y | Codigo da empresa em que o item esta sendo alocado. |
| 164 | DT_DEPRECIACAO | DATE | Y | Competencia que esta sendo realizado o calculo da depreciac?o do BEM. |
| 165 | CD_DEPRECIACAO | NUMBER | Y | Codigo de idenficac?o do processo da depreciac?o do BEM. |
| 166 | TP_DEPRECIACAO_PENDENTES | VARCHAR2 | Y | (C) Informa que as depreciac?es atrasadas foram geradas no mes de competencia - (G) Informa que a... |
| 167 | VL_DEPRECIA_ANTES | NUMBER | Y | Valor anterior do bem antes do calculo da depreciac?o do bem. |
| 168 | VL_DEPRECIA_ATUAL | NUMBER | Y | Valor atual apos o calculo de depreciac?o do bem. |
| 169 | NM_SOLICITANTE | VARCHAR2 | Y | Realizador da Depreciac?o. |
| 170 | DT_ENTRADA | DATE | Y | Dia, mes e ano de entrada do produto da nota fiscal |
| 171 | DT_EMISSAO | DATE | Y | Dia, mes e ano da emiss?o da nota fiscal |
| 172 | SN_BEM_AGREGADOR | VARCHAR2 | Y | (S) Informa que o bem e agregador - (N) Bem que n?o e agragador. |
| 173 | CD_SISTEMA_ORIGEM | VARCHAR2 | Y | Coluna que vai conter o codigo do sistema origem da mensagem, usada na entrada de mensagens |
| 174 | CD_IMV_LOG_REQUISICAO | NUMBER | Y | Codigo da mensagem que esta na mvintegra.inv_log_requisicao que originou este registro. |
| 175 | CD_EMPRESA_PRODUTO | NUMBER | Y | Codigo da empresa que sera cadastrado o produto |
| 176 | CD_EMPRESA_PRODUTO_INTEGRA | VARCHAR2 | Y | Codigo da empresa que sera cadastrado o produto DE-PARA |
| 177 | DS_EMPRESA_PRODUTO | VARCHAR2 | Y | Descric?o da empresa que sera cadastrado o produto |
| 178 | TP_CLASSIFICACAO_ABC | VARCHAR2 | Y | Tipo de classificac?o curva ABC |
| 179 | DT_AGREGACAO | DATE | Y | Data de agregac?o do bem |
| 180 | SN_AGREGA_VALOR | VARCHAR2 | Y | Informa se o bem agrega valor ou nao |
| 181 | CD_CEN_CUS | VARCHAR2 | Y | Codigo do centro de custo |
| 182 | CD_LABORATOR | VARCHAR2 | Y | Codigo do fabricante |
| 183 | NM_LABORATOR | VARCHAR2 | Y | Descric?o do fabricante |
| 184 | SN_LABORATOR_ATIVO | VARCHAR2 | Y | Informa se o fabricante esta ativo |
| 185 | SN_SAIDA_PACIENTE | VARCHAR2 | Y |  |
| 186 | SN_SAIDA_CC | VARCHAR2 | Y |  |
| 187 | SN_CUSTO_DIRETO | VARCHAR2 | Y |  |
| 188 | TX_DEPRECIACAO | NUMBER | Y |  |
| 189 | VL_PERC_VAR_QUANT | NUMBER | Y |  |
| 190 | CD_TIP_ESQ | VARCHAR2 | Y |  |
| 191 | CD_GRU_PRO | NUMBER | Y |  |
| 192 | CD_TAB_FAT | NUMBER | Y |  |
| 193 | CD_ITEM_RES | NUMBER | Y |  |
| 194 | SN_PROD_PERMANENTE | VARCHAR2 | Y |  |
| 195 | CD_GRU_PRO_INTEGRA | VARCHAR2 | Y |  |
| 196 | CD_TIP_ESQ_INTEGRA | VARCHAR2 | Y |  |
| 197 | CD_TAB_FAT_INTEGRA | VARCHAR2 | Y |  |
| 198 | SN_TRANSFERE | VARCHAR2 | Y |  |
| 199 | TP_CHECAGEM | VARCHAR2 | Y |  |
| 200 | VL_PERC_VAR_ULT_ENT | NUMBER | Y |  |
| 201 | TP_BLOQUEIO_MARCA | VARCHAR2 | Y |  |
| 202 | SN_SOL_PRESCRICAO | VARCHAR2 | Y |  |
| 203 | QT_DIAS_REFERENCIA | NUMBER | Y |  |
| 204 | SN_ATIVO | VARCHAR2 | Y |  |
| 205 | CD_ITEM_RES_INTEGRA | VARCHAR2 | Y |  |
| 206 | TP_BAIXA | VARCHAR2 | Y |  |
| 207 | DS_OBSERVACAO_AGREGADO | VARCHAR2 | Y |  |
| 208 | DS_BEM_AGREGADO | VARCHAR2 | Y |  |
| 209 | DS_PLAQUETA_AGREGADO | VARCHAR2 | Y |  |
| 210 | CD_BEM_AGREGADO | NUMBER | Y |  |
| 211 | DS_ACESSORIOS | VARCHAR2 | Y |  |
| 212 | SN_IMOB_AND_BEM | VARCHAR2 | Y |  |
| 213 | CD_LOTE | VARCHAR2 | Y |  |
| 214 | DT_VALIDADE | DATE | Y |  |
| 215 | DS_DATA_MATRIX | VARCHAR2 | Y |  |
| 216 | TP_UNIDADE_RELATORIO | VARCHAR2 | Y |  |
| 217 | SN_ADMITIDO | VARCHAR2 | Y |  |
| 218 | CD_REGISTRO | VARCHAR2 | Y |  |
| 219 | DT_VALIDADE_REGISTRO | DATE | Y |  |
| 220 | SN_HOMOLOGACAO | VARCHAR2 | Y |  |
| 221 | CD_TUSS | VARCHAR2 | Y |  |
| 222 | DT_INTEGRA | DATE | Y |  |
| 223 | CD_SOLSAI_PRO | NUMBER | Y |  |
| 224 | DT_CONCLUSAO_ENTRADA | DATE | Y |  |
| 225 | CD_ENT_PRO | NUMBER | Y |  |
| 226 | CD_ESPECIE_CLASSE_SUB_CLA | VARCHAR2 | Y |  |
| 227 | CD_ESP_CLAS_SUB_CLA_INTEGRA | VARCHAR2 | Y |  |
| 228 | SN_IMPRIME_DIRETO | VARCHAR2 | Y |  |
| 229 | TP_ESTOQUE | VARCHAR2 | Y |  |
| 230 | SN_CONTAGEM | VARCHAR2 | Y |  |
| 231 | SN_PERMITIR_DIGITAR_PRODUTO | VARCHAR2 | Y |  |
| 232 | SN_IMPRIME_PRESCRICAO | VARCHAR2 | Y |  |
| 233 | SN_LIM_TRANS_COTA | VARCHAR2 | Y |  |
| 234 | DS_MOTIVO_BLOQUEIO | VARCHAR2 | Y |  |
| 235 | DS_ENDERECO_OLD | VARCHAR2 | Y |  |
| 236 | DS_ENDERECO | VARCHAR2 | Y |  |
| 237 | QT_KIT | NUMBER | Y |  |
| 238 | QT_EXTRA_ORCAMENTARIO | NUMBER | Y |  |
| 239 | QT_ORCAMENTARIO | NUMBER | Y |  |
| 240 | QT_ESTOQUE_DOADO | NUMBER | Y |  |
| 241 | CD_LOT_PRO | NUMBER | Y |  |
| 242 | SN_CHECA_SALDO_EST | VARCHAR2 | Y |  |
| 243 | TP_MOTIVO_DIVERGENCIA_ATENDIME | VARCHAR2 | Y |  |
| 244 | QT_PRODUTO | NUMBER | Y |  |
| 245 | CD_USUARIO | VARCHAR2 | Y |  |
| 246 | CD_MVTO_ESTOQUE | NUMBER | Y |  |
| 247 | TP_MVTO_ESTOQUE | VARCHAR2 | Y |  |
| 248 | DT_MVTO_ESTOQUE | DATE | Y |  |
| 249 | HR_MVTO_ESTOQUE | DATE | Y |  |
| 250 | SN_CODIGO_DE_BARRAS | VARCHAR2 | Y |  |
| 251 | SN_KIT_ARMAZENADO | VARCHAR2 | Y |  |
| 252 | SITUACAO | NUMBER | Y |  |
| 253 | DT_MOVIMENTO | DATE | Y |  |
| 254 | TP_MVTO | VARCHAR2 | Y |  |
| 255 | CD_CONTA_CREDITO | VARCHAR2 | Y |  |
| 256 | CD_CONTA_DEBITO | VARCHAR2 | Y |  |
| 257 | QT_MOVIMENTADA | NUMBER | Y |  |
| 258 | VALOR_MOVIMENTO | NUMBER | Y |  |
| 259 | VL_BEM_PERC_SETOR | NUMBER | Y |  |
| 260 | CD_BEMPRINCIPAL | NUMBER | Y |  |
| 261 | CD_UNI_REF | NUMBER | Y |  |
| 262 | UNI_REF | VARCHAR2 | Y |  |
| 263 | TP_SAIDA | VARCHAR2 | Y |  |
| 264 | SN_CODIGO_BARRA | VARCHAR2 | Y |  |
| 265 | DT_FECHAMENTO | DATE | Y |  |
| 266 | TP_ESP_MOVIMENTACAO | VARCHAR2 | Y |  |
| 267 | VL_TEMPO_DE_REPOSICAO | NUMBER | Y |  |
| 268 | HR_ULTIMA_ENTRADA | DATE | Y |  |
| 269 | VL_ULTIMA_ENTRADA | NUMBER | Y |  |
| 270 | CD_ULTIMO_FORNECEDOR | NUMBER | Y |  |
| 271 | QT_ULTIMA_ENTRADA | NUMBER | Y |  |
| 272 | VL_ULTIMA_CUSTO_REAL | NUMBER | Y |  |
| 273 | CD_FORNECEDOR_PRINCIPAL | NUMBER | Y |  |
| 274 | CD_ESTOQUE_SOLICITANTE | NUMBER | Y |  |
| 275 | VL_ULTIMA_COMPRA_IPI | NUMBER | Y |  |
| 276 | QT_CONSUMO_MES | NUMBER | Y |  |
| 277 | NR_CRF_HOSPITAL | VARCHAR2 | Y |  |
| 278 | SN_ALTA_VIGILANCIA | VARCHAR2 | Y |  |
| 279 | SN_BLOQUEIO_DE_COMPRA | VARCHAR2 | Y |  |
| 280 | CD_FORMULA | NUMBER | Y |  |
| 281 | CD_SUB_CLASSE_INTEGRA | VARCHAR2 | Y |  |
| 282 | DT_GRAVACAO | DATE | Y |  |
| 283 | DSP_CD_BARRAS | NUMBER | Y |  |
| 284 | CD_ITMVTO_ESTOQUE | NUMBER | Y |  |
| 285 | QT_MOVIMENTACAO | NUMBER | Y |  |
| 286 | DH_MVTO_ESTOQUE | DATE | Y |  |
| 287 | TP_ORCAMENTO | VARCHAR2 | Y |  |
| 288 | CD_IDENTIFICADOR | VARCHAR2 | Y |  |
| 289 | CD_SUB_CLASSE | NUMBER | Y |  |
| 290 | DS_SUB_CLASSE | VARCHAR2 | Y |  |
| 291 | TP_CRITERIO | VARCHAR2 | Y |  |
| 292 | DS_TIP_ATIV | VARCHAR2 | Y |  |
| 293 | CD_TIP_ATIV | NUMBER | Y |  |
| 294 | TP_STATUS_UNIFICADO | VARCHAR2 | Y |  |
| 295 | TP_DESCRICAO | VARCHAR2 | Y |  |
| 296 | CD_PRODUTO_NOVO | NUMBER | Y |  |
| 297 | DT_ULTIMA_ENTRADA | DATE | Y |  |
| 298 | VL_MARGEM_LUCRO | NUMBER | Y |  |
| 299 | SN_MANIPULADO | VARCHAR2 | Y |  |
| 300 | SN_IMPRIME_ETIQUETA_DOSE | VARCHAR2 | Y |  |
| 301 | CD_SEQ_INTEGRA | VARCHAR2 | Y |  |

---

## MVINTEGRA.IMV_MENSAGEM_ERRO
> Tabela de mensagens de erro para envio

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IMV_MENSAGEM_ERRO | NUMBER | N | Codigo da mensagem |
| 2 | TP_STATUS | VARCHAR2 | N | Status de envio |
| 3 | TP_FLUXO | VARCHAR2 | N | Informa se é Entrada ou Saida |
| 4 | TP_ETAPA | VARCHAR2 | Y | Se for uma saida, informa se é P para padrão ou F para formatado |
| 5 | CD_SISTEMA_DESTINO | VARCHAR2 | Y | Sistema terceiro |
| 6 | CD_ORIGEM_ERRO | NUMBER | N | Origem do erro |
| 7 | DH_CRIACAO | DATE | N | Data de criação |
| 8 | CD_PROCESSO_INTEGRACAO | VARCHAR2 | Y | Código do processo de integração |
| 9 | TP_DOCUMENTO | VARCHAR2 | N | Tipo do documento de mensagem |
| 10 | SN_ENVIADO | VARCHAR2 | N | Informa se foi enviado. |
| 11 | DH_ENVIO | DATE | Y | Data de envio |
| 12 | DS_MENSAGEM_ERRO | VARCHAR2 | Y | Mensagem de erro da integração |
| 13 | LB_MENSAGEM | BLOB | Y | Arquivo de erro da integração no formato CLOB |
| 14 | LC_MENSAGEM | CLOB | Y |  |
| 15 | DS_EMAIL_ERRO | VARCHAR2 | Y | Mensagem de erro do envio |

---

## MVINTEGRA.IMV_MENSAGEM_SAIDA_FORMATADA
> tabela de mensagens de saida formatadas prontas para envio

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IMV_MENSAGEM_SAIDA_FORMTD | NUMBER | N | codigo da mensagem formatada |
| 2 | CD_VERSAO | VARCHAR2 | N | vers?#o da estrutura da mensagem |
| 3 | TP_STATUS | VARCHAR2 | N | status da mensagem: A: aguardando, T: transferida, E: erro |
| 4 | CD_SISTEMA_DESTINO | VARCHAR2 | N | c??digo do sistema para onde esta mensagem ser?! enviada |
| 5 | TP_DOCUMENTO | VARCHAR2 | N | tipo da mensagem |
| 6 | DH_CRIACAO_MSG | DATE | N | data e hora da cria???#o da mensagem |
| 7 | DH_ULTIMO_ENVIO | DATE | Y | data em que foi realizada a ultima tentativa de envio |
| 8 | DS_ERRO | VARCHAR2 | Y | mensagem de erro |
| 9 | LO_MENSAGEM | BLOB | N | conteudo da mensagem |
| 10 | CD_IMV_MENSAGEM_SAIDA_PADRAO | NUMBER | Y | Codigo da mensagem padr?o |
| 11 | TP_SINCRONISMO | VARCHAR2 | N | Coluna que informa se a mensagem foi processada de forma SINCRONA ou ASSINCRONA |
| 12 | LO_RETORNO | BLOB | Y | Coluna que contem a resposta da mensagem enviada |
| 13 | DH_RETORNO | DATE | Y | Data e hora que o retorno chegou |
| 14 | NM_INSTANCIA | VARCHAR2 | Y |  |
| 15 | DH_SEMAFORO | DATE | Y |  |

---

## MVINTEGRA.IMV_MENSAGEM_SAIDA_PADRAO
> tabela de mensagens de saida em formato padr?#o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IMV_MENSAGEM_SAIDA_PADRAO | NUMBER | N | c??digo da mensagem |
| 2 | CD_VERSAO | VARCHAR2 | N | vers?#o da formata???#o da mensagem |
| 3 | DH_CRIACAO_MSG | DATE | N | data em que a mensagem foi criada |
| 4 | TP_OPERACAO | VARCHAR2 | N | tipo da opera???#o: A altera???#o, I inclus?#o, E exclus?#o |
| 5 | TP_DOCUMENTO | VARCHAR2 | N | tipo da mensagem |
| 6 | CD_IDENTIFICADOR | VARCHAR2 | N | identificador do registro que esta mensagem representa |
| 7 | LO_MENSAGEM | CLOB | N | mensagem padr?#o de saida em formato xml |
| 8 | TP_SINCRONISMO | VARCHAR2 | N | Coluna que informa se a mensagem foi processada de forma SINCRONA ou ASSINCRONA |
| 9 | CD_REGISTRO_ORIGEM | NUMBER | Y | Codigo do registro da tabela de integrac?o que originou a mensagem |
| 10 | NM_INSTANCIA | VARCHAR2 | Y |  |

---

## MVINTEGRA.IMV_MENSAGEM_SAIDA_PADRAO_STAT
> tabela de status das mensagens de saida padr?#o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IMV_MENSAGEM_SAIDA_PADRAO | NUMBER | N | c??digo da mensagem de saida padr?#o |
| 2 | CD_SISTEMA_DESTINO | VARCHAR2 | N | c??digo do sistema para onde esta mensagem ser?! enviada |
| 3 | TP_STATUS | VARCHAR2 | N | status da mensagem: A: aguardando, T: transferida, E: erro |
| 4 | DS_ERRO | VARCHAR2 | Y | mensagem de erro |
| 5 | DH_ENVIO_FORMATACAO | DATE | Y | data em que a mensagem foi formatada |
| 6 | LO_MENSAGEM_PADRAO_ALTERADA | CLOB | Y | Coluna que contem a mensagem padrao alterada conforme condic?es de envio |
| 7 | NM_INSTANCIA | VARCHAR2 | Y |  |
| 8 | DH_SEMAFORO | DATE | Y |  |

---

## MVINTEGRA.IMV_MENSAGEM_SMS
> Armazenamento de mensagens SMS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IMV_MENSAGEM_SMS | NUMBER | N | Codigo sequencial da integrac?o |
| 2 | TP_FLUXO | VARCHAR2 | N | Identificador do fluxo da informac?o (S - Saida, E - Entrada) |
| 3 | TP_STATUS | VARCHAR2 | N | Identificac?o da situac?o atual do registro (A - Aguardando, T - Transmitido e E - Erro) |
| 4 | DS_ERRO | VARCHAR2 | Y | Descric?o do erro quando ocorrer |
| 5 | DT_GERADO | DATE | N | Data do registro gerado na integrac?o |
| 6 | DT_PROCESSADO | DATE | Y | Data em que o registro foi integrado |
| 7 | TP_MOVIMENTO | VARCHAR2 | N | Tipo do movimento (I - Inclus?o, A - Alterac?o e E - Exclus?o) |
| 8 | TP_REGISTRO | VARCHAR2 | N | Tipo do registro da integrac?o |
| 9 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da multi-empresa |
| 10 | CD_MULTI_EMPRESA_INTEGRA | VARCHAR2 | Y | Codigo da multi-empresa (DE-PARA) |
| 11 | CD_REGISTRO_PRINCIPAL | NUMBER | Y | Codigo do registro principal desta transac?o |
| 12 | CD_REGISTRO_PAI | NUMBER | Y | Cosigo do registro pai deste registro |
| 13 | NR_DDI | NUMBER | Y | Numero do DDI do pais |
| 14 | NR_DDD | NUMBER | Y | Numero do DDD do estado |
| 15 | NR_TELEFONE | NUMBER | Y | Numero do telefone para quem deseja enviar a mensagem |
| 16 | DT_AGENDAMENTO | DATE | Y | Data para envio futuro da mensagem, se estiver nula a mensagem e enviada em tempo real |
| 17 | NM_REMETENTE | VARCHAR2 | Y | Nome de quem enviou a mensagem |
| 18 | DS_CONTEUDO | VARCHAR2 | Y | Descric?o da mensagem |
| 19 | DS_RETORNO | VARCHAR2 | Y | Retorno disponibilizado pelo recebedor de requisic?es |
| 20 | DS_ACAO | VARCHAR2 | Y | Ac?o que deve ser disparada |
| 21 | CD_ID | VARCHAR2 | Y | Identificac?o da mensagem |

---

## MVINTEGRA.IMV_MOVIMENTACAO_ESTOQUE
> Tabela responsavel em exportac?o movimentac?es de estoque

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IMV_MOVIMENTACAO_ESTOQUE | NUMBER | N | Codigo sequencial do registro integrado |
| 2 | TP_FLUXO | VARCHAR2 | N | Identificador do fluxo da informac?o (S - Saida, E - Entrada) |
| 3 | TP_STATUS | VARCHAR2 | N | Identificac?o da situac?o atual do registro (A - Aguardando, T - Transmitido e E - Erro) |
| 4 | DS_ERRO | VARCHAR2 | Y | Descric?o do erro quando ocorrer |
| 5 | DT_GERADO | DATE | N | Data do registro gerado na integrac?o |
| 6 | DT_PROCESSADO | DATE | Y | Data em que o registro foi integrado |
| 7 | TP_MOVIMENTO | VARCHAR2 | N | Tipo do movimento (I - Inclus?o, A - Alterac?o e E - Exclus?o) |
| 8 | TP_REGISTRO | VARCHAR2 | N | Tipo do registro da integrac?o (001 - Registro referente a pessoa) |
| 9 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da multi-empresa |
| 10 | CD_MULTI_EMPRESA_INTEGRA | VARCHAR2 | Y | Codigo da multi-empresa (DE-PARA) |
| 11 | CD_REGISTRO_PRINCIPAL | NUMBER | Y | Identificador do registro principal da mensagem |
| 12 | CD_REGISTRO_PAI | NUMBER | Y | Identificador do registro pai da mensagem |
| 13 | CD_MOVIMENTO | NUMBER | Y | Codigo do movimento |
| 14 | CD_MOVIMENTO_INTEGRA | VARCHAR2 | Y |  |
| 15 | TP_MOVIMENTO_ESTOQUE | VARCHAR2 | Y | Tipo de movimentac?o do estoque |
| 16 | TP_MOVIMENTO_ESTOQUE_INTEGRA | VARCHAR2 | Y | Tipo de movimentac?o do estoque (de-para) |
| 17 | DT_MOVIMENTO | DATE | Y | Data do movimento |
| 18 | HR_MOVIMENTO | DATE | Y | Hora do movimento |
| 19 | DT_CONSUMO_INICIAL | DATE | Y | Data inicial do concumo (usado para home care) |
| 20 | DT_CONSUMO_FINAL | DATE | Y | Data final do consumo (usado para home care) |
| 21 | CD_ESTOQUE | NUMBER | Y | Codigo do estoque da movimentac?o |
| 22 | CD_ESTOQUE_INTEGRA | VARCHAR2 | Y | Codigo do estoque da movimentac?o (de-para) |
| 23 | CD_ESTOQUE_DESTINO | NUMBER | Y | Codigo do estoque destino (usado para transferencias) |
| 24 | CD_ESTOQUE_DESTINO_INTEGRA | VARCHAR2 | Y | Codigo do estoque destino (de-para) |
| 25 | CD_ATENDIMENTO | NUMBER | Y | Codigo do atendimento (em caso de movimentac?o de paciente) |
| 26 | CD_UNIDADE_ATENDIMENTO | NUMBER | Y | Codigo da unidade de atendimento |
| 27 | CD_UNIDADE_ATENDIMENTO_INTEGRA | VARCHAR2 | Y | Codigo da unidade de atendimento (de-para) |
| 28 | CD_SETOR | NUMBER | Y | Codigo do setor |
| 29 | CD_SETOR_INTEGRA | VARCHAR2 | Y | Codigo do setor (de-para) |
| 30 | NR_DOCUMENTO | VARCHAR2 | Y | Codigo do documento de origem |
| 31 | NR_SERIE | VARCHAR2 | Y | Numero de serie do documento |
| 32 | CD_CFOP | NUMBER | Y | Codigo fiscal da operac?o |
| 33 | CD_TIPO_DOCUMENTO | NUMBER | Y | Codigo do tipo de documento usado para realizar o movimento |
| 34 | CD_TIPO_DOCUMENTO_INTEGRA | VARCHAR2 | Y | Codigo do tipo de documento usado para realizar o movimento (de-para) |
| 35 | TP_VENDA | VARCHAR2 | Y | Tipo de venda |
| 36 | CD_MOTIVO_DEVOLUCAO | NUMBER | Y | Codigo do motivo de devoluc?o |
| 37 | CD_MOTIVO_DEVOLUCAO_INTEGRA | VARCHAR2 | Y | Codigo do motivo de devoluc?o (de-para) |
| 38 | CD_MOTIVO_BAIXA | NUMBER | Y | Codigo do motivo de baixa do produto |
| 39 | CD_MOTIVO_BAIXA_INTEGRA | VARCHAR2 | Y | Codigo do motivo da baixa do produto (de-para) |
| 40 | CD_PRESTADOR_SOLIC | NUMBER | Y | Codigo do prestador (medico) solicitante |
| 41 | CD_PRESTADOR_SOLIC_INTEGRA | VARCHAR2 | Y | Codigo do prestador (medico) solicitante (de-para) |
| 42 | CD_SOLICITACAO | NUMBER | Y | Codigo da solicitac?o que gerou essa movimentac?o |
| 43 | CD_SOLICITACAO_INTEGRA | VARCHAR2 | Y | Codigo da solicitac?o que gerou essa movimentac?o (de-para) |
| 44 | CD_DESCRICAO_SAIDA | NUMBER | Y | Codigo da descric?o de saida |
| 45 | CD_DESCRICAO_SAIDA_INTEGRA | VARCHAR2 | Y | Codigo da descric?o de saida (de-para) |
| 46 | CD_AVISO_CIRURGIA | NUMBER | Y | Codigo do aviso de cirurgia |
| 47 | CD_AVISO_CIRURGIA_INTEGRA | VARCHAR2 | Y | Codigo do aviso de cirurgia (de-para) |
| 48 | CD_ENTRADA_PRODUTO | NUMBER | Y | Codigo da entrada do produto (usado para aplicac?o direta) |
| 49 | CD_ENTRADA_PRODUTO_INTEGRA | VARCHAR2 | Y | Codigo da entrada do produto (usado para aplicac?o direta (de-para) |
| 50 | DS_OBSERVACAO | VARCHAR2 | Y | Observac?o da movimentac?o |
| 51 | CD_USUARIO | VARCHAR2 | Y | Codigo do usuario responsavel pela movimentac?o |
| 52 | CD_MOVIMENTO_ITEM | NUMBER | Y | Codigo do movimentac?o do item |
| 53 | CD_PRODUTO | NUMBER | Y | Codigo do produto |
| 54 | CD_PRODUTO_INTEGRA | VARCHAR2 | Y | Codigo do produto (de-para) |
| 55 | DS_CODIGO_BARRAS | VARCHAR2 | Y | Codigo de barras do item (precisa ser o mesmo do MV2000i) |
| 56 | DS_PRODUTO | VARCHAR2 | Y | Descric?o do produto |
| 57 | CD_UNIDADE | VARCHAR2 | Y | Unidade do produto |
| 58 | CD_UNIDADE_INTEGRA | VARCHAR2 | Y | Unidade do produto (de-para) |
| 59 | CD_UNI_PRO | NUMBER | Y | Codigo da unidade do item no MV2000i (uso preferencial) |
| 60 | DS_UNIDADE | VARCHAR2 | Y | Decric?o da unidade do produto |
| 61 | VL_FATOR | NUMBER | Y | Fator de convers?o do item |
| 62 | QT_MOVIMENTACAO | NUMBER | Y | Quantidade de movimentac?o do item |
| 63 | CD_LOTE | VARCHAR2 | Y | Lote do item |
| 64 | DT_VALIDADE | DATE | Y | Validade do item |
| 65 | VL_UNITARIO | NUMBER | Y | Valor unitario |
| 66 | VL_TOTAL | NUMBER | Y | Valor total |
| 67 | TP_DOCUMENTO_MOVIMENTACAO | VARCHAR2 | Y | Identifica o tipo de movimentac?o: M-Movimentacao ou S-Solicitac?o |
| 68 | TP_MODALIDADE_EMPRESTIMO | VARCHAR2 | Y | Tipo da modalidade do emprestimo |
| 69 | CD_CONVENIO | NUMBER | Y | Codigo do convenio vinculado ao atendimento DE-PARA |
| 70 | NM_CONVENIO | VARCHAR2 | Y | Nome do convenio vinculado ao atendimento |
| 71 | CD_CONVENIO_INTEGRA | VARCHAR2 | Y |  |
| 72 | TP_DOCUMENTO_INTEGRACAO | VARCHAR2 | Y | identifica o tipo de documento |
| 73 | CD_UNIDADE_INTERNACAO | NUMBER | Y | Codigo Sequencial da Unidade de Internac?o |
| 74 | CD_UNIDADE_INTERNACAO_INTEGRA | VARCHAR2 | Y | Codigo Sequencial da Unidade de Internac?o De-Para |
| 75 | DS_UNIDADE_INTERNACAO | VARCHAR2 | Y | Descric?o da Unidade de Internac?o |
| 76 | CD_ATENDIMENTO_INTEGRA | VARCHAR2 | Y | Codigo do atendimento De-Para |
| 77 | CD_MOVIMENTO_ITEM_INTEGRA | VARCHAR2 | Y | Codigo do movimento do item De-Para |
| 78 | CD_EMBALAGEM | VARCHAR2 | Y | Codigo Sequencial da Embalagem |
| 79 | CD_EMBALAGEM_INTEGRA | VARCHAR2 | Y | Codigo Sequencial da Embalagem De-Para |
| 80 | DS_EMBALAGEM | VARCHAR2 | Y | Descric?o da Embalagem |
| 81 | CD_UNI_PRO_INTEGRA | VARCHAR2 | Y | Codigo UNI_PRO De-Para |
| 82 | CD_SISTEMA_ORIGEM | VARCHAR2 | Y | Coluna que vai conter o codigo do sistema origem da mensagem, usada na entrada de mensagens |
| 83 | CD_IMV_LOG_REQUISICAO | NUMBER | Y | Codigo da mensagem que esta na mvintegra.inv_log_requisicao que originou este registro. |
| 84 | CD_CEN_CUS_ORIGEM | VARCHAR2 | Y |  |
| 85 | CD_CEN_CUS_ORIGEM_INTEGRA | VARCHAR2 | Y |  |
| 86 | CD_CEN_CUS_DESTINO | VARCHAR2 | Y |  |
| 87 | CD_CEN_CUS_DESTINO_INTEGRA | VARCHAR2 | Y |  |
| 88 | TP_MOVIMENTO_INTEGRA | VARCHAR2 | Y |  |
| 89 | CD_ITENT_PRO_INTEGRA | VARCHAR2 | Y |  |
| 90 | VL_CUSTO_MEDIO | NUMBER | Y |  |
| 91 | CD_PRODUTO_TEM | NUMBER | Y |  |
| 92 | CD_FORNECEDOR | NUMBER | Y |  |
| 93 | CD_FORNECEDOR_INTEGRA | VARCHAR2 | Y |  |
| 94 | CD_ITEM_PRO_INTEGRA | VARCHAR2 | Y |  |
| 95 | CD_ITEM_SOLICITACAO | NUMBER | Y |  |
| 96 | TP_ESTOQUE | VARCHAR2 | Y |  |
| 97 | TP_STATUS_CONFIRMACAO | VARCHAR2 | Y |  |
| 98 | QT_PERDA | NUMBER | Y |  |
| 99 | QT_RECEBIDA | NUMBER | Y |  |

---

## MVINTEGRA.IMV_NOTA_ESTOQUE
> Tabela para controlar integrac?es de unificac?o do cadastro de paciente

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IMV_NOTA_ESTOQUE | NUMBER | N | Chave primaria da tabela |
| 2 | TP_FLUXO | VARCHAR2 | N | Identificador do fluxo da informac?o (S - Saida, E - Entrada) |
| 3 | TP_STATUS | VARCHAR2 | N | Identificac?o da situac?o atual do registro |
| 4 | DS_ERRO | VARCHAR2 | Y | Descric?o do erro quando ocorrer |
| 5 | DT_GERADO | DATE | N | Data do registro gerado na integrac?o |
| 6 | DT_PROCESSADO | DATE | Y | Data em que o registro foi integrado |
| 7 | TP_MOVIMENTO | VARCHAR2 | N | Tipo do movimento |
| 8 | TP_REGISTRO | VARCHAR2 | N | Tipo do registro da integrac?o |
| 9 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da empresa |
| 10 | CD_MULTI_EMPRESA_INTEGRA | VARCHAR2 | Y | Codigo de-para da empresa |
| 11 | CD_REGISTRO_PRINCIPAL | NUMBER | Y | Identificador do registro principal da mensagem |
| 12 | CD_REGISTRO_PAI | NUMBER | Y | Identificador do registro pai da mensagem |
| 13 | CD_ORDEM_COMPRA | NUMBER | Y | Codigo da Ordem de Compra |
| 14 | CD_ORDEM_COMPRA_INTEGRA | VARCHAR2 | Y | Codigo da Ordem de Compra De-para |
| 15 | NR_CNPJ_CPF | VARCHAR2 | Y | CNPJ do Fornecedor |
| 16 | TP_MENSAGEM | VARCHAR2 | Y | Tipo da Mensagem para diferenciar entre NF, SC, OC, PP (pre pedido) |
| 17 | DT_ENTRADA | DATE | Y | Data de entrada do documento |
| 18 | CD_PRODUTO_INTEGRA | VARCHAR2 | Y | Codigo do produto (DE-PARA) |
| 19 | QT_PRODUTO | NUMBER | Y | Quantidade do produto |
| 20 | CD_SOLICITACAO_COMPRA | NUMBER | Y | Codigo da solicitac?o de compras |
| 21 | NR_DOCUMENTO | VARCHAR2 | Y | Numero do documento |
| 22 | SN_FECHADO | VARCHAR2 | Y | Status para o recebimento das notas fiscais do Mercado Eletronico. N - RECEBIDO PARCIALMENTE e S ... |

---

## MVINTEGRA.IMV_NOTA_FISCAL_ELETRONICA
> TABELA DE INTEGRAÇÃO COM DADOS DO FATURAMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IMV_NOTA_FISCAL_ELETRONICA | NUMBER | N | CÓDIGO IDENTIFICADOR DO REGISTRO (SEQUENCIAL) |
| 2 | TP_FLUXO | VARCHAR2 | N | TIPO DE FLUXO DO REGISTRO (E - ENTRADA / S - SAÍDA) |
| 3 | TP_STATUS | VARCHAR2 | N | STATUS DO REGISTRO (A - AGUARDANDO / E - ERRO / T - TRANSMITIDO / P - EM PROCESSAMENTO) |
| 4 | CD_ERRO | VARCHAR2 | Y | CÓDIGO DE ERRO |
| 5 | DS_ERRO | VARCHAR2 | Y | DESCRIÇÃO DA MENSAGEM DE ERRO OCORRIDO NO PROCESSAMENTO DA MENSAGEM |
| 6 | DS_SUGESTAO | VARCHAR2 | Y | SUGESTÃO DE CORREÇÃO DE ERRO |
| 7 | DT_GERADO | DATE | N | DATA DE GERAÇÃO DO REGISTRO NA TABELA |
| 8 | DT_PROCESSADO | DATE | Y | DATA DE PROCESSAMENTO DO REGISTRO |
| 9 | TP_MOVIMENTO | VARCHAR2 | Y | TIPO DO MOVIMENTO DO REGISTRO (I - INCLUSÃO / A - ALTERAÇÃO / E - EXCLUSÃO) |
| 10 | TP_REGISTRO | VARCHAR2 | N | TIPO DO REGISTRO (001 - INFORMAÇÕES DA REMESSA / 002 ¿ INFORMAÇÕES DA CONTA DO FATURAMENTO / 003 ... |
| 11 | CD_MULTI_EMPRESA | NUMBER | N | CÓDIGO DA MULTI-EMPRESA |
| 12 | CD_MULTI_EMPRESA_INTEGRA | VARCHAR2 | Y | CÓDIGO DE-PARA DA MULTI-EMPRESA |
| 13 | CD_REGISTRO_PRINCIPAL | NUMBER | Y | CÓDIGO IDENTIFICADOR DO REGISTRO PRINCIPAL DA MENSAGEM |
| 14 | CD_REGISTRO_PAI | NUMBER | Y | CÓDIGO IDENTIFICADOR DO REGISTRO PAI DA MENSAGEM |
| 15 | CD_SISTEMA_ORIGEM | VARCHAR2 | Y | NOME DO SISTEMA QUE ENVIOU A MENSAGEM |
| 16 | CD_ATENDIMENTO | NUMBER | Y | CÓDIGO DO ANTEDIMENTO DO PACIENTE |
| 17 | TP_CONTA | VARCHAR2 | Y | TIPO DA CONTA/REMESSA - A-AMBULATORIAL E H-HOSPITALAR |
| 18 | CD_CONVENIO | NUMBER | Y | CÓDIGO DO CONVÊNIO DO ATENDIMENTO |
| 19 | CD_REMESSA | NUMBER | Y | CÓDIGO DA REMESSA NO FATURAMENTO |
| 20 | CD_CONTA_HOSPITALAR | NUMBER | Y | CÓDIGO DA CONTA HOSPITALAR |
| 21 | CD_CONTA_AMBULATORIAL | NUMBER | Y | CÓDIGO DA CONTA AMBULATIORIAL |
| 22 | CD_LOTE | NUMBER | Y | CÓDIGO DO LOTE DE RPS |
| 23 | DT_LOTE_GERADO | DATE | Y | DATA DA GERAÇÃO DO LOTE DE RPS |
| 24 | DS_USUARIO | VARCHAR2 | Y | USUÁRIO RESPONSÁVEL PELA GERAÇÃO DO LOTE DE RPS |
| 25 | NR_PROTOCOLO | VARCHAR2 | Y | NÚMERO DO PROTOCOLO DO LOTE |
| 26 | DT_PROTOCOLO | DATE | Y | DATA/HORA QUE O PROTOCOLO FOI INFORMADO |
| 27 | CD_NOTA_FISCAL | NUMBER | Y | CÓDIGO DA NOTA FISCAL |
| 28 | NR_ID_NOTA_FISCAL | NUMBER | Y | CÓDIGO SEQUENCIAL DA NOTA FISCAL |
| 29 | CD_FORMULARIO_NOTA_FISCAL | NUMBER | Y | CÓDIGO DO FORMULÁRIO DA NOTA FISCAL |
| 30 | CD_SERIE | VARCHAR2 | Y | NÚMERO DE SÉRIE |
| 31 | TP_NOTA_FISCAL | VARCHAR2 | Y | TIPO DA NOTA FISCAL: 1 ¿ RECIBO PROVISÓRIO DE SERVIÇOS;2 ¿ RPS NOTA FISCAL CONJUGADA (MISTA);3 ¿ ... |
| 32 | DT_EMISSAO | DATE | Y | DATA DE EMISSÃO DA NOTA FISCAL |
| 33 | DT_COMPETENCIA | DATE | Y | DIA, MÊS E ANO DA PRESTAÇÃO DE SERVIÇO (AAAAMMDD) |
| 34 | DT_SAIDA | DATE | Y | DATA DE SAÍDA DA NOTA FISCAL |
| 35 | DT_CANCELAMENTO | DATE | Y | DATA DE CANCELAMENTO DA NOTA FISCAL |
| 36 | CD_MOTIVO_CANCELAMENTO | NUMBER | Y | CÓDIGO DO MOTIVO DE CANCELAMENTO DA NOTA FISCAL |
| 37 | DS_SITUACAO_NOTA_FISCAL | VARCHAR2 | Y | 1 ¿ NORMAL;2-CANCELADA |
| 38 | NR_NOTA_FISCAL_CONVERTIDA | NUMBER | Y | NUMERO DA NOTA FISCAL CONVERTIDA |
| 39 | DT_NOTA_FISCAL_CONVERTIDA | DATE | Y | DATA DA NOTA FISCAL CONVERTIDA |
| 40 | CD_VERIFICACAO_NOTA_FISCAL | VARCHAR2 | Y | CÓDIGO DE VERIFIFICAÇÃO DA NOTA FISCAL CONVERTIDA |
| 41 | DS_ENDERECO_ELETRONICO_NOTA | VARCHAR2 | Y | ENDEREÇO ELETRONICO DA NOTA FISCAL NO ORGÃO EMISSOR |
| 42 | DT_CANC_NOTA_CONVERTIDA | DATE | Y | DATA DE CANCELAMENTO DA NOTA FISCAL CONVERTIDA |
| 43 | CD_NOTA_FISCAL_SUBSTITUIDA | NUMBER | Y | NÚMERO DO RPS QUE ESTA SENDO SUBSTITUÍDA |
| 44 | CD_SERIE_NOTA_SUBSTITUIDA | VARCHAR2 | Y | NÚMERO DO EQUIPAMENTO EMISSOR DO RPS OU SÉRIE DO RPS QUE ESTA SENDO SUBSTITUÍDA |
| 45 | TP_NOTA_FISCAL_SUBSTITUIDA | NUMBER | Y | TIPO DO RPS QUE ESTA SENDO SUBSTITUÍDO |
| 46 | TP_NATUREZA_OPERACAO | NUMBER | Y | 1-EXIGÍVEL;2-NÃO INCIDÊNCIA;3-ISENÇÃO;4-EXPORTAÇÃO;5-IMUNIDADE;6-EXIGIBILIDADE SUSPENSA POR DECIS... |
| 47 | NR_PROCESSO_JUDICIAL | VARCHAR2 | Y | NÚMERO DO PROCESSO JUDICIAL OU ADMINISTRATIVO DE SUSPENSÃO DA EXIGIBILIDADE. OBRIGATÓRIO E INFORM... |
| 48 | CD_REGIME_ESPECIAL_TRIBUTACAO | NUMBER | Y | 1-MICROEMPRESA MUNICIPAL;2-ESTIMATIVA;3-SOCIEDADE DE PROFISSIONAIS;4-COOPERATIVA;5-MICROEMPRESÁRI... |
| 49 | SN_OPTANTE_SIMPLES_NACIONAL | VARCHAR2 | Y | INDICA SE A EMPRESA É OPTANTE PELO SIMPLES NACIONAL |
| 50 | SN_INCENTIVO_FISCAL | VARCHAR2 | Y | INDICA SE A EMPRESA TEM INCENTIVO FISCAL |
| 51 | NR_CPF_CNPJ_PRESTADOR | VARCHAR2 | Y | CNPJ DA EMPRESA PRESTADORA DO SERVIÇO |
| 52 | NR_INSC_MUNICIPAL_PRESTADOR | VARCHAR2 | Y | INSCRIÇÃO MUNICIPAL DA EMPRESA PRESTADORA DO SERVIÇO |
| 53 | NR_INSC_ESTADUAL_PRESTADOR | VARCHAR2 | Y | INSCRIÇÃO ESTADUIAL DA EMPRESA PRESTADORA DO SERVIÇO |
| 54 | DS_RAZAO_SOCIAL_PRESTADOR | VARCHAR2 | Y | RAZAO SOCIAL DA EMPRESA PRESTADORA DO SERVIÇO |
| 55 | DS_TIPO_ENDERECO_PRESTADOR | NUMBER | Y | TIPO DE LOGRADOURO DA EMPRESA PRESTADORA DO SERVIÇO |
| 56 | DS_ENDERECO_PRESTADOR | VARCHAR2 | Y | LOGRADOURO DA EMPRESA PRESTADORA DO SERVIÇO |
| 57 | NR_NUMERO_ENDERECO_PRESTADOR | VARCHAR2 | Y | NUMERO DO LOGRADOURO DA EMPRESA PRESTADORA DO SERVIÇO |
| 58 | DS_COMP_ENDERECO_PRESTADOR | VARCHAR2 | Y | COMPLEMENTO DO LOGRADOURO DA EMPRESA PRESTADORA DO SERVIÇO |
| 59 | DS_BAIRRO_PRESTADOR | VARCHAR2 | Y | BAIRRO DO LOGRADOURO DA EMPRESA PRESTADORA DO SERVIÇO |
| 60 | CD_CIDADE_PRESTADOR | NUMBER | Y | CIDADE DO LOGRADOURO DA EMPRESA PRESTADORA DO SERVIÇO |
| 61 | DS_UF_PRESTADOR | VARCHAR2 | Y | ESTADO (UF) DO LOGRADOURO DA EMPRESA PRESTADORA DO SERVIÇO |
| 62 | CD_PAIS_PRESTADOR | NUMBER | Y | CODIGO PAIS PRESTADOR |
| 63 | NR_CEP_PRESTADOR | VARCHAR2 | Y | CEP DO LOGRADOURO DA EMPRESA PRESTADORA DO SERVIÇO |
| 64 | DS_EMAIL_PRESTADOR | VARCHAR2 | Y | EMAIL DA EMPRESA PRESTADORA DO SERVIÇO |
| 65 | NR_TELEFONE_PRESTADOR | VARCHAR2 | Y | TELEFONE DA EMPRESA PRESTADORA DO SERVIÇO |
| 66 | TP_PESSOA_TOMADOR | VARCHAR2 | Y | TIPO DE PESSOA TOMADORA DO SERVIÇO. F-FISICA, J-JURIDICA |
| 67 | NR_CPF_CNPJ_TOMADOR | VARCHAR2 | Y | CNPJ DA EMPRESA TOMADORA DO SERVIÇO |
| 68 | NR_INSC_MUNICIPAL_TOMADOR | VARCHAR2 | Y | INSCRIÇÃO MUNICIPAL DA EMPRESA TOMADORA DO SERVIÇO |
| 69 | NR_INSC_ESTADUAL_TOMADOR | VARCHAR2 | Y | INSCRIÇÃO ESTADUIAL DA EMPRESA TOMADORA DO SERVIÇO |
| 70 | DS_RAZAO_SOCIAL_TOMADOR | VARCHAR2 | Y | RAZAO SOCIAL DA EMPRESA TOMADORA DO SERVIÇO |
| 71 | DS_TIPO_ENDERECO_TOMADOR | NUMBER | Y | TIPO DE LOGRADOURO DA EMPRESA TOMADORA DO SERVIÇO |
| 72 | DS_ENDERECO_TOMADOR | VARCHAR2 | Y | LOGRADOURO DA EMPRESA TOMADORA DO SERVIÇO |
| 73 | NR_NUMERO_ENDERECO_TOMADOR | VARCHAR2 | Y | NUMERO DO LOGRADOURO DA EMPRESA TOMADORA DO SERVIÇO |
| 74 | DS_COMP_ENDERECO_TOMADOR | VARCHAR2 | Y | COMPLEMENTO DO LOGRADOURO DA EMPRESA TOMADORA DO SERVIÇO |
| 75 | DS_BAIRRO_TOMADOR | VARCHAR2 | Y | BAIRRO DO LOGRADOURO DA EMPRESA TOMADORA DO SERVIÇO |
| 76 | CD_CIDADE_TOMADOR | NUMBER | Y | CIDADE DO LOGRADOURO DA EMPRESA TOMADORA DO SERVIÇO |
| 77 | DS_UF_TOMADOR | VARCHAR2 | Y | ESTADO (UF) DO LOGRADOURO DA EMPRESA TOMADORA DO SERVIÇO |
| 78 | CD_PAIS_TOMADOR | NUMBER | Y | PAÍS DO LOGRADOURO DA EMPRESA TOMADORA DO SERVIÇO |
| 79 | NR_CEP_TOMADOR | VARCHAR2 | Y | CEP DO LOGRADOURO DA EMPRESA TOMADORA DO SERVIÇO |
| 80 | DS_EMAIL_TOMADOR | VARCHAR2 | Y | EMAIL DA EMPRESA TOMADORA DO SERVIÇO |
| 81 | NR_TELEFONE_TOMADOR | VARCHAR2 | Y | TELEFONE DA EMPRESA TOMADORA DO SERVIÇO |
| 82 | NR_CPF_CNPJ_INTERMEDIARIO | VARCHAR2 | Y | CNPJ DA EMPRESA TOMADORA DO SERVIÇO |
| 83 | NR_INSC_MUNIC_INTERMEDIARIO | VARCHAR2 | Y | INSCRIÇÃO MUNICIPAL DA EMPRESA TOMADORA DO SERVIÇO |
| 84 | NR_INSC_ESTAD_INTERMEDIARIO | VARCHAR2 | Y | INSCRIÇÃO ESTADUIAL DA EMPRESA TOMADORA DO SERVIÇO |
| 85 | DS_RAZAO_SOC_INTERMEDIARIO | VARCHAR2 | Y | RAZAO SOCIAL DA EMPRESA TOMADORA DO SERVIÇO |
| 86 | DS_TIPO_END_INTERMEDIARIO | NUMBER | Y | TIPO DE LOGRADOURO DA EMPRESA TOMADORA DO SERVIÇO |
| 87 | DS_ENDERECO_INTERMEDIARIO | VARCHAR2 | Y | LOGRADOURO DA EMPRESA TOMADORA DO SERVIÇO |
| 88 | NR_ENDERECO_INTERMEDIARIO | VARCHAR2 | Y | NUMERO DO LOGRADOURO DA EMPRESA TOMADORA DO SERVIÇO |
| 89 | DS_COMP_END_INTERMEDIARIO | VARCHAR2 | Y | COMPLEMENTO DO LOGRADOURO DA EMPRESA TOMADORA DO SERVIÇO |
| 90 | DS_BAIRRO_INTERMEDIARIO | VARCHAR2 | Y | BAIRRO DO LOGRADOURO DA EMPRESA TOMADORA DO SERVIÇO |
| 91 | CD_CIDADE_INTERMEDIARIO | NUMBER | Y | CIDADE DO LOGRADOURO DA EMPRESA TOMADORA DO SERVIÇO |
| 92 | DS_UF_INTERMEDIARIO | VARCHAR2 | Y | ESTADO (UF) DO LOGRADOURO DA EMPRESA TOMADORA DO SERVIÇO |
| 93 | CD_PAIS_INTERMEDIARIO | NUMBER | Y | PAÍS DO LOGRADOURO DA EMPRESA TOMADORA DO SERVIÇO |
| 94 | NR_CEP_INTERMEDIARIO | VARCHAR2 | Y | CEP DO LOGRADOURO DA EMPRESA TOMADORA DO SERVIÇO |
| 95 | DS_EMAIL_INTERMEDIARIO | VARCHAR2 | Y | EMAIL DA EMPRESA TOMADORA DO SERVIÇO |
| 96 | NR_TELEFONE_INTERMEDIARIO | VARCHAR2 | Y | TELEFONE DA EMPRESA TOMADORA DO SERVIÇO |
| 97 | CD_SERVICO | NUMBER | Y | CÓDIGO DO SERVIÇO EXECUTADO |
| 98 | CD_SERVICO_PRESTADO | VARCHAR2 | Y | CÓDIGO DO SERVIÇO PRESTADO |
| 99 | CD_CNAE | VARCHAR2 | Y | CNAE 2.0 |
| 100 | CD_TRIBUTACAO_MUNICIPIO | VARCHAR2 | Y | CÓDIGO DO SERVIÇO PRESTADO PRÓPRIO DO MUNICÍPIO |
| 101 | CD_MUNICIPIO_INCIDENCIA | NUMBER | Y | MUNICIPIO DE INCIDENCIA DO IMPOSTO ISS |
| 102 | DS_SERVICO | VARCHAR2 | Y | DESCRIÇÃO DO SERVIÇO EXECUTADO |
| 103 | VL_SERVICO | NUMBER | Y | VALOR DO SERVIÇO EXECUTADO |
| 104 | TP_TRIBUTO_RETIDO | VARCHAR2 | Y | TIPO DO TRIBUTO RETIDO |
| 105 | VL_DEDUCOES | NUMBER | Y | VALOR DAS DEDUÇÕES PARA REDUÇÃO DA BASE DE CÁLCULO |
| 106 | VL_ALIQUOTA_PIS | NUMBER | Y | PERCENTUAL DA ALIQUOTA DO PIS |
| 107 | VL_PIS | NUMBER | Y | VALOR DA RETENÇÃO DO PIS |
| 108 | VL_ALIQUOTA_CONFIS | NUMBER | Y | PERCENTUAL DA ALOQUOTA DO CONFINS |
| 109 | VL_CONFINS | NUMBER | Y | VALOR DA RETENÇÃO DO COFINS |
| 110 | VL_ALIQUOTA_INSS | NUMBER | Y | PERCENTUAL DA ALIQUOTA DO INSS |
| 111 | VL_INSS | NUMBER | Y | VALOR DA RETENÇÃO DO INSS |
| 112 | VL_ALIQUOTA_IR | NUMBER | Y | PERCENTUAL DA ALIQUOTA DO IR |
| 113 | VL_IR | NUMBER | Y | VALOR DA RETENÇÃO DO IR |
| 114 | VL_ALIQUOTA_CSLL | NUMBER | Y | PERCENTUAL DA ALIQUOTA DO CSLL |
| 115 | VL_CSLL | NUMBER | Y | VALOR DA RETENÇÃO DO CSLL |
| 116 | SN_ISS_RETIDO | VARCHAR2 | Y | INFORMA SE O ISS DEVE SER RETIDO |
| 117 | VL_ALIQUOTA_ISS | NUMBER | Y | ALIQUOTA DO ISS |
| 118 | VL_ISS | NUMBER | Y | VALOR DO ISS |
| 119 | VL_ISS_RETIDO | NUMBER | Y | VALOR DO ISS A SER RETIDO. |
| 120 | VL_OUTRAS_RETENCOES | NUMBER | Y | OUTRAS RETENÇÕES NA FONTE. INFORMAÇÃO DECLARATÓRIA |
| 121 | CD_RESPONSAVEL_RETENCAO | VARCHAR2 | Y | RESPOSÁVEL PELA RETENÇÃO DO ISS. INFORMADO SOMENTE SE ISSRETIDO IGUAL A ¿1 ¿ SIM¿, A OPÇÃO ¿2 ¿ I... |
| 122 | VL_DESCONTO_INCONDICIONADO | NUMBER | Y | VALOR DO DESCONTO INCONDICIONADO |
| 123 | VL_DESCONTO_CONDICIONADO | NUMBER | Y | VALOR DO DESCONTO CONDICIONADO |
| 124 | VL_BASE_CALCULO | NUMBER | Y | VALOR PARA BASE DE CALCULO DO IMPOSTO, FORMULA: (VALOR DOS SERVIÇOS - VALOR DAS DEDUÇÕES - DESCON... |
| 125 | VL_LIQUIDO_NOTA | NUMBER | Y | VALOR LIQUIDO DA NOTA. FORMULA: (VALORSERVICOS - VALORPIS - VALORCOFINS - VALORINSS - VALORIR - V... |
| 126 | DS_TIPO_MENSAGEM | VARCHAR2 | Y | TIPO DA MENSAGEM DO REGISTRO |
| 127 | CD_IMV_LOG_REQUISICAO | NUMBER | Y | CÓDIGO DA MENSAGEM DE ENTRADA |
| 128 | CD_MOTIVO_CANCELAMENTO_INTEGRA | VARCHAR2 | Y | CÓDIGO DO MOTIVO DE CANCELAMENTO DA NFE |
| 129 | CD_MOT_SITUACAO | NUMBER | Y | MOTIVO SITUAÇÃO DE CANCELAMENTO DA NOTA FISCAL |
| 130 | DS_INFORMACAO_ADICIONAIS | VARCHAR2 | Y | INFORMAÇÕES ADCIONAIS E OBSERVAÇÕES DA NOTA FISCAL |
| 131 | TP_IDENTIFICACAO_CPF_CNPJ | VARCHAR2 | Y | ITENDITFICA O TIPO DE INFORMAÇÃO QUE ESTÁ SENDO PASSADA NO CAMPO DE CPF/CNPJ (1 ¿ CPF \| 2 ¿ CNPJ... |
| 132 | TP_ORIGEM_NF | NUMBER | Y | TIPO DE ORIGEM DO REGISTRO: 1 - DBAMV.NOTA_FISCAL; 2 - DBAMV.MVS_NOTA_FISCAL |
| 133 | NR_RSP_NOTA_FISCAL_NFE | NUMBER | Y | RESPOSTA: NUMERO DA NOTA FISCAL CONVERTIDA. |
| 134 | HR_RSP_EMISSAO_NFE | DATE | Y | RESPOSTA: HORA DE EMISSÃO DA NOTA CONVERTIDA |
| 135 | CD_RSP_VERIFICACAO_NFE | VARCHAR2 | Y | RESPOSTA: CHAVE DE VERIFICAÇÃO DE CONVERSÃO. |
| 136 | NR_RSP_PROTOCOLO | VARCHAR2 | Y | RESPOSTA: PROTOCOLO DE RECEBIMENTO DO XML |
| 137 | DT_RSP_PROTOCOLO | DATE | Y | RESPOSTA: DATA HORA DE RECEBIMENTO DO PROTOCOLO |
| 138 | DS_RSP_URL_NFE | VARCHAR2 | Y | RESPOSTA: URL PARA IMPRESSÃO DO ESPELHO DE NOTA |
| 139 | DS_RSP_RETORNO_NFE | VARCHAR2 | Y | RESPOSTA: RETORNO DO PROCESSAMENTO DO XML ENCAMINHADO |
| 140 | NR_RSP_PROTOCOLO_CANCELAMENTO | VARCHAR2 | Y | RESPOSTA: NÚMERO DO PROTOCOLO DE CANCELAMENTO DA NOTA CONVERTIDA |
| 141 | DT_RSP_CANCELAMENTO_NFE | DATE | Y | RESPOSTA: DATA DE RECEBIMENTO DO PROTOCOLO DE CANCELAMENTO DE NOTA |
| 142 | CD_STATUS_INTEGRACAO | VARCHAR2 | Y | STATUS DE GERAÇÃO DA NFE: W - REGISTRO RECÉM INSERIDO, AGUARDANDO ATIVAÇÃO PARA PROCESSAMENTO; A-... |
| 143 | CD_UF_PRESTADOR | NUMBER | Y | CÓDIGO IBGE PARA ESTADO DO PRESTADOR |
| 144 | TP_AMBIENTE | VARCHAR2 | Y | TIPO DE AMBIENTE: 1-PRODUÇÃO \| 2-HOMOLOGAÇÃO |
| 145 | CD_CHAVE_NFE | VARCHAR2 | Y | CHAVE DO NFE |
| 146 | TP_OPERACAO | VARCHAR2 | Y | TIPO DE OPERAÇÃO. NA SEFAZ: 0-ENTRADA \| 1-SAÍDA |
| 147 | CD_SIAFI_PRESTADOR | VARCHAR2 | Y | CODIGO SIAFI PARA A CIDADE DO PRESTADOR |
| 148 | DS_MOTIVO_CANCELAMENTO | VARCHAR2 | Y | DESCRIÇÃO DO MOTIVO DE CANCELAMENTO DA NOTA FISCAL |
| 149 | DS_FUSO_HORARIO | VARCHAR2 | Y | FUSO HORÁRIO A SER USADO NO CONVERSÃO DO XSLT. -02:00 DURANTE HORARIO DE VERÃO, E -03:00 QUANDO N... |
| 150 | CD_MODELO_NF | VARCHAR2 | Y | CÓDIGO DO MODELO DE NOTA FISCAL. PARA SEFAZ: NFE, NFC,... |
| 151 | DS_CIDADE_TOMADOR | VARCHAR2 | Y | DESCRICAÇÃO DA CIDADE DO TOMADOR |
| 152 | CD_TOM_TOMADOR | VARCHAR2 | Y | CODIGO TOM PARA A CIDADE DO TOMADOR |
| 153 | CD_SIAFI_TOMADOR | VARCHAR2 | Y | CODIGO SIAFI PARA A CIDADE DO TOMADOR |
| 154 | DS_CIDADE_PRESTADOR | VARCHAR2 | Y | DESCRIÇÃO DA CIDADE DO PRESTADOR |
| 155 | CD_TOM_PRESTADOR | VARCHAR2 | Y | CODIGO TOM PARA A CIDADE DO PRESTADOR |
| 156 | TP_IMPRESSAO | VARCHAR2 | Y | TIPO LAYOUT DE IMPRESSÃO DA DANFE PARA A SEFAZ: 1-RETRATO \| 2-PAISAGEM |
| 157 | NR_CFOP | VARCHAR2 | Y | CFOP DO SERVICO |
| 158 | TP_IND_IE_DESTINATARIO | NUMBER | Y | INDICADOR DA INSCRICAO ESTADUAL DO TOMADOR: 1 - CONTRIBUINTE ICMS (INFORMAR IE); 2 - CONTRIBUINTE... |
| 159 | CD_ID_DEST | NUMBER | Y | IDENTIFICACAO DO LOCAL DESTINO DA OPERAÇÃO SEFAZ; 1 - INTERNA; 2 - INTERESTADUAL; 3 - EXTERIOR; |
| 160 | TP_CONSUMIDOR_FINAL | VARCHAR2 | Y | INDICA OPERACAO COM CONSUMIDOR FINAL: 0- NORMAL; 1 - FINAL |
| 161 | DT_ADESAO_SIMPLES_NACIONAL | DATE | Y | DATA DE ADESAO AO SIMPLES NACIONAL |
| 162 | DS_NATUREZA_OPERACAO_SEFAZ | VARCHAR2 | Y | DESCRIÇÃO DA NATUREZA E OPERAÇÃO DA SEFAZ: VENDA \| COMPRA |
| 163 | TP_PAGAMENTO | VARCHAR2 | Y | TIPO DE PAGAMENTO. PARA SEFAZ SÃO ESSES VALORES: 0 ¿ PAGAMENTO À VISTA; 1 ¿ PAGAMENTO À PRAZO; 2 ... |
| 164 | DS_CHAVE_ACESSO | VARCHAR2 | Y | CHAVE DE ACESSO. NA SEFAZ: CÓDIGO NUMÉRICO QUE COMPÕE A CHAVE DE ACESSO. NÚMERO ALEATÓRIO GERADO ... |
| 165 | CD_UF_TOMADOR | NUMBER | Y | CÓDIGO IBGE PARA ESTADO DO TOMADOR |
| 166 | CD_UF_INTERMEDIARIO | NUMBER | Y | CÓDIGO IBGE PARA ESTADO DO INTERMEDIARIO |
| 167 | TP_EMISSAO | VARCHAR2 | Y | NA SEFAZ: 1 ¿ NORMAL; 2 ¿ CONTINGÊNCIA FS; 3 ¿ CONTINGÊNCIA SCAN; 4 ¿ CONTINGÊNCIA DPEC; 5 ¿ CONT... |
| 168 | NR_DIGITO_VERIF_CHAVE_ACESSO | NUMBER | Y | INFORMAR O DV DA CHAVE DE ACESSO DA NF-E, O DV SERÁ CALCULADO COM A APLICAÇÃO DO ALGORITMO MÓDULO... |
| 169 | SN_NOTA_FISCAL_MVS | VARCHAR2 | Y | INDICA SE A NOTA FISCAL É DO MVSAUDE |
| 170 | TP_PROCESSO_EMISSAO | VARCHAR2 | Y | IDENTIFICADOR DO PROCESSO DE EMISSÃO DA NF-E: 0 - EMISSÃO DE NF-E COM APLICATIVO DO CONTRIBUINTE;... |
| 171 | DS_VERSAO_PROCESSAMENTO | VARCHAR2 | Y | IDENTIFICADOR DA VERSÃO DO PROCESSO DE EMISSÃO (INFORMAR A VERSÃO DO APLICATIVO EMISSOR DE NF-E) |
| 172 | NR_ITEM | NUMBER | Y | NÚMERO DO ITEM DA NOTA |
| 173 | DS_PAIS_PRESTADOR | VARCHAR2 | Y | NOME DO PAIS DO PRESTADOR |
| 174 | DS_PAIS_TOMADOR | VARCHAR2 | Y | NOME DO PAIS DO TOMADOR |
| 175 | VL_BASE_CALCULO_ITEM | NUMBER | Y | BASE DE CALCULO DO ITEM INDIVIDUALMENTE. |
| 176 | VL_TOTAL_ITEM | NUMBER | Y | VALOR TOTAL DO ITEM |
| 177 | VL_ISS_ITEM | NUMBER | Y | VALOR DO ISS NÃO RETIDO ESPECIFICO DO ITEM |
| 178 | VL_ISS_RETIDO_ITEM | NUMBER | Y | VALOR DO ISS RETIDO ESPECIFICO DO ITEM |
| 179 | QR_CODE | VARCHAR2 | Y | QR CODE DA NOTA FISCAL MODELO 65 SEFAZ; NFC |
| 180 | CD_CST_PIS | VARCHAR2 | Y | CODIGO SITUACAO TRIBUTARIA DO PIS |
| 181 | CD_CST_COFINS | VARCHAR2 | Y | CODIGO SITUACAO TRIBUTARIA DO COFINS |
| 182 | DS_LOGRADOURO_PRESTADOR | VARCHAR2 | Y | DESCRIÇÃO DO LOGRADOURO DO PRESTADOR: RUA, AVENIDA, PRAÇA,... |
| 183 | DS_LOGRADOURO_TOMADOR | VARCHAR2 | Y | DESCRIÇÃO DO LOGRADOURO DO TOMADOR: RUA, AVENIDA, PRAÇA,... |
| 184 | DS_LOGRADOURO_INTERMEDIARIO | VARCHAR2 | Y | DESCRIÇÃO DO LOGRADOURO DO INTERMEDIARIO: RUA, AVENIDA, PRAÇA,... |
| 185 | DS_PAIS_INTERMEDIARIO | VARCHAR2 | Y | NOME DO PAÍS DO INTERMEDIÁRIO DA NOTA |
| 186 | DS_CIDADE_INTERMEDIARIO | VARCHAR2 | Y | NOME DA CIDADE DO INTERMEDIÁRIO DA NOTA |
| 187 | SN_PIS_RETIDO | VARCHAR2 | Y | INFORMA SE O PIS DEVE SER RETIDO |
| 188 | SN_COFINS_RETIDO | VARCHAR2 | Y | INFORMA SE O COFINS DEVE SER RETIDO |
| 189 | SN_CSLL_RETIDO | VARCHAR2 | Y | INFORMA SE O CSLL DEVE SER RETIDO |
| 190 | SN_IRRF_RETIDO | VARCHAR2 | Y | INFORMA SE O IRRF DEVE SER RETIDO |
| 191 | DS_VL_DESCONTO | VARCHAR2 | Y | DESCRIÇÃO DO VALOR DO DESCONTO |
| 192 | DS_DOCUMENTO_ESTRANGEIRO | VARCHAR2 | Y | DOCUMENTO DO ESTRANGEIRO |
| 193 | DS_INFORMACAO_TRIBUTOS | VARCHAR2 | Y | INFORMACOES DOS TRIBUTOS DA NOTA FISCAL |
| 194 | VL_PERCENTUAL_CARGA_TRIBUTARIA | NUMBER | Y |  |
| 195 | VL_PIS_ITEM | NUMBER | Y |  |
| 196 | VL_ALIQUOTA_PIS_ITEM | NUMBER | Y |  |
| 197 | VL_COFINS_ITEM | NUMBER | Y |  |
| 198 | VL_ALIQUOTA_COFINS_ITEM | NUMBER | Y |  |
| 199 | DS_INFORMACAO_FISCO | VARCHAR2 | Y |  |
| 200 | DS_INFORMACAO_COMPL | VARCHAR2 | Y |  |
| 201 | DS_NATUREZA_OPERACAO | VARCHAR2 | Y |  |
| 202 | CD_CRT | NUMBER | Y |  |
| 203 | CD_MODELO | NUMBER | Y |  |
| 204 | VL_ALIQUOTA_ICMS | NUMBER | Y |  |
| 205 | CD_ICMS | NUMBER | Y |  |
| 206 | CD_PIS | NUMBER | Y |  |
| 207 | CD_COFINS | NUMBER | Y |  |
| 208 | CD_CONDICAO_PAGAMENTO | NUMBER | Y |  |
| 209 | CD_ICMS_ORIGEM | NUMBER | Y |  |
| 210 | CD_ICMS_MODALIDADE | NUMBER | Y |  |
| 211 | CD_CODIGO_BARRA | VARCHAR2 | Y |  |
| 212 | CD_PRODUTO | NUMBER | Y |  |
| 213 | DS_PRODUTO | VARCHAR2 | Y |  |
| 214 | CD_NCM | NUMBER | Y |  |
| 215 | CD_CFOP | NUMBER | Y |  |
| 216 | QT_PRODUTO | NUMBER | Y |  |
| 217 | QT_PRODUTO_TRIB | NUMBER | Y |  |
| 218 | DS_UNIDADE | VARCHAR2 | Y |  |
| 219 | DS_UNIDADE_TRIB | VARCHAR2 | Y |  |
| 220 | VL_PRODUTO | NUMBER | Y |  |
| 221 | VL_TOTAL | NUMBER | Y |  |
| 222 | VL_PRODUTO_TRIB | NUMBER | Y |  |
| 223 | VL_BASE_CONFIS | NUMBER | Y |  |
| 224 | VL_BASE_PIS | NUMBER | Y |  |
| 225 | VL_BASE_ICMS | NUMBER | Y |  |
| 226 | NR_LOTE | VARCHAR2 | Y |  |
| 227 | QT_LOTE | NUMBER | Y |  |
| 228 | DT_VALIDADE | DATE | Y |  |
| 229 | VL_LOTE | NUMBER | Y |  |
| 230 | DT_LOTE | DATE | Y |  |
| 231 | VL_ICMS | NUMBER | Y |  |
| 232 | VL_DESCONTO | NUMBER | Y |  |
| 233 | VL_SEGURO | NUMBER | Y |  |
| 234 | VL_FRETE | NUMBER | Y |  |
| 235 | VL_OUTRO | NUMBER | Y |  |
| 236 | VL_TRIBUTO | NUMBER | Y |  |
| 237 | NR_ID_NOTA_FISCAL_INICIO | NUMBER | Y |  |
| 238 | NR_ID_NOTA_FISCAL_FINAL | NUMBER | Y |  |
| 239 | CD_PROD_ANVISA | VARCHAR2 | Y |  |
| 240 | VL_IPI_DEVOLUCAO | NUMBER | Y | VALOR DA IPI DE DEVOLUÇÃO |
| 241 | CD_FORNECEDOR | NUMBER | Y | CÓDIGO DO FORNECEDOR |
| 242 | DT_VENCIMENTO | DATE | Y | DATA DE VENCIMENYO |
| 243 | DS_CLASSIFICACAO_CENTRO_CUSTO | VARCHAR2 | Y | DESCRIÇÃO DA CLASSIFICAÇÃO DO CENTRO DE CUSTO |
| 244 | DS_MULTI_EMPRESA | VARCHAR2 | Y | DESCRIÇÃO DA MULTIEMPRESA |
| 245 | VL_DUPLICATA | NUMBER | Y | VALOR DA DUPLICATA |
| 246 | NR_NSU | VARCHAR2 | Y | NÚMERO DO NSU |
| 247 | CD_SENHA | VARCHAR2 | Y | CÓDIGO DA SENHA |
| 248 | VL_REMESSA | NUMBER | Y | VALOR DA REMESSA |
| 249 | VL_FCP_UF_DEST | NUMBER | Y | VALOR FCP DO ESTADO DESTINO |
| 250 | VL_ICMS_UF_DEST | NUMBER | Y | VALOR ICMS ESTADO DESTINO |
| 251 | VL_ICMS_UF_REMET | NUMBER | Y | VALOR ICMS ESTADO REMETENTE |
| 252 | VL_FUNDO_COMBATE_POBREZA | NUMBER | Y | VALOR FUNDO COMBATE POBREZA |
| 253 | VL_FUNDO_COMBATE_POBREZA_ST | NUMBER | Y | VALOR FUNDO COMBATE POBREZA ST |
| 254 | VL_FUNDO_COMBATE_POBREZA_RET | NUMBER | Y | VALOR FUNDO COMBATE POBREZA RET |
| 255 | VL_PERC_DEVOLUCAO | NUMBER | Y | VALOR PERCENTUAL DE DEVOLUÇÃO |
| 256 | CD_TIPO_LOGRADOURO | NUMBER | Y | CÓDIGO DO TIPO DE LOGRADOURO |
| 257 | CD_GRU_FAT | NUMBER | Y | CÓDIGO GRUPO DE FATURAMENTO |
| 258 | SN_RETIDO | VARCHAR2 | Y | S - RETIDO N - NÃO RETIDO |
| 259 | VL_PERCENTUAL | NUMBER | Y | VALOR PERCENTUAL |
| 260 | CD_SETOR | NUMBER | Y | CÓDIGO DO SETOR |
| 261 | CD_REDUZIDO | NUMBER | Y | CÓDIGO REDUZIDO |
| 262 | CD_ITEM_RES | NUMBER | Y | CÓDIGO DO ITEM RES |
| 263 | VL_GRU_FAT | NUMBER | Y | VALOR DO GRUPO DE FATURAMENTO |
| 264 | VL_RATEIO | NUMBER | Y | VALOR DE RATEIO |
| 265 | CD_DETALHAMENTO | NUMBER | Y | CÓDIGO DE DETALHAMENTO |
| 266 | NR_NOTA_FISCAL_NFE | NUMBER | Y | NÚMERO DA NOTA FISCAL NFE |
| 267 | HR_EMISSAO_NFE | DATE | Y | HORA DA EMISSÃO NFE |
| 268 | CD_VERIFICACAO_NFE | VARCHAR2 | Y | CÓDIGO VERIFICAÇÃO NFE |
| 269 | CD_PROTOCOLO_NFE | VARCHAR2 | Y | CÓDIGO DE PROTOCOLO NFE |
| 270 | NM_PROTOCOLO_AUTORIZACAO_USO | VARCHAR2 | Y | NOME PROTOCOLO AUTORIZAÇÃO DE USO |
| 271 | DS_URL_NFE | VARCHAR2 | Y | DESCRIÇÃO DA URL DA NFE |
| 272 | DT_CANCELAMENTO_NFE | DATE | Y | DATA DE CANCELAMENTO DA NFE |
| 273 | DS_RETORNO_NFE | VARCHAR2 | Y | DESCRIÇÃO DE RETORNO DA NFE |
| 274 | NR_PROTOCOLO_CANCELAMENTO | VARCHAR2 | Y | NÚMERO DO PROTOCOLO DE CANCELAMENTO |
| 275 | VL_PERC_DESCONTO | NUMBER | Y | VALOR PERCENTUAL DE DESCONTO |
| 276 | CD_CARTA_CORRECAO_NF | NUMBER | Y | CÓDIGO DA CARTA CORREÇÃO NF |
| 277 | NR_NFE_INICIAL | NUMBER | Y | NÚMERO NFE INICIAL |
| 278 | NR_NFE_FINAL | NUMBER | Y | NÚMERO NFE FINAL |
| 279 | DS_JUSTIFICATIVA_INUTILIZACAO | VARCHAR2 | Y | DESCRIÇÃO DA JUSTIFICATIVA DA INUTILIZAÇÃO |
| 280 | DS_CORRECAO_NFE | VARCHAR2 | Y | DESCRIÇÃO DA CORREÇÃO DA NFE |
| 281 | DT_CARTA_CORRECAO | DATE | Y | DATA DA CARTA DE CORREÇÃO |
| 282 | CD_CONT_NF_SIMPLES_REMESSA | NUMBER | Y | CÓDIGO DE CONTIGÊNCIA DA NF DE SIMPLES REMESSA |
| 283 | DS_JUSTIFICATIVA | VARCHAR2 | Y | DESCRIÇÃO DA JUSTIFICATIVA |
| 284 | DH_INICIO | DATE | Y | DATA/HORA INÍCIO |
| 285 | DS_MOTIVO_CORRECAO | VARCHAR2 | Y | DESCRIÇÃO DO MOTIVO DA CORREÇÃO |

---

## MVINTEGRA.IMV_NUTRICAO
> Tabela de integrac?o de nutric?o e dietas

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IMV_NUTRICAO | NUMBER | N | Codigo sequencial do registro na integrac?o |
| 2 | TP_FLUXO | VARCHAR2 | N | Tipo de fluxo do registro (E - Entrada / S - Saida) |
| 3 | TP_STATUS | VARCHAR2 | N | Status do registro (A - Aguardando / E - Erro / T - Transmitido / P - Em processamento) |
| 4 | DS_ERRO | VARCHAR2 | Y | Descric?o da mensagem de erro ocorrido no processamento da mensagem |
| 5 | DT_GERADO | DATE | N | Data de gerac?o do registro na tabela |
| 6 | DT_PROCESSADO | DATE | Y | Data de processamento do registro |
| 7 | TP_MOVIMENTO | VARCHAR2 | N | Tipo do movimento do registro (I - Inclus?o / A - Alterac?o / E - Exclus?o) |
| 8 | TP_REGISTRO | VARCHAR2 | N | Identificac?o do tipo de registro existente: 001 ? Dados gerais da conta a pagar/receber / 002 ? ... |
| 9 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da multi-empresa |
| 10 | CD_MULTI_EMPRESA_INTEGRA | VARCHAR2 | Y | Codigo de-para da multi-empresa |
| 11 | CD_REGISTRO_PRINCIPAL | NUMBER | Y | Codigo identificador do registro principal da mensagem |
| 12 | CD_REGISTRO_PAI | NUMBER | Y | Codigo identificador do registro pai da mensagem |
| 13 | CD_PACIENTE | NUMBER | Y | Codigo do paciente no MV2000i |
| 14 | CD_PACIENTE_INTEGRA | VARCHAR2 | Y | Codigo de-para do paciente |
| 15 | NM_PACIENTE | VARCHAR2 | Y | Nome do paciente |
| 16 | CD_ATENDIMENTO | NUMBER | Y | Codigo do atendimento no MV2000i |
| 17 | CD_ATENDIMENTO_INTEGRA | VARCHAR2 | Y | Codigo de-para do atendimento |
| 18 | CD_UNID_INTERNACAO | NUMBER | Y | Codigo da unidade de internac?o no MV2000i |
| 19 | CD_UNID_INTERNACAO_INTEGRA | VARCHAR2 | Y | Codigo de-para da unidade de internacao |
| 20 | DS_UNID_INTERNACAO | VARCHAR2 | Y | Descric?o da unidade de internac?o |
| 21 | TP_ACOMODACAO | NUMBER | Y | Tipo de acomodac?o no MV2000i |
| 22 | TP_ACOMODACAO_INTEGRA | VARCHAR2 | Y | Codigo de-para do tipo de acomodac?o |
| 23 | DS_ACOMODACAO | VARCHAR2 | Y | Descric?o do tipo de acomodac?o |
| 24 | CD_LEITO | NUMBER | Y | Codigo do leito no MV2000i |
| 25 | CD_LEITO_INTEGRA | VARCHAR2 | Y | Codigo de-para do leito |
| 26 | DS_LEITO | VARCHAR2 | Y | Descric?o do leito |
| 27 | CD_MOV_CARDAPIO | NUMBER | Y | Codigo da movimentac?o da dieta |
| 28 | DT_MOV_CARDAPIO | DATE | Y | Data da prescric?o da dieta |
| 29 | CD_PRE_MED | NUMBER | Y | Codigo da prescric?o medica |
| 30 | CD_PRESTADOR | NUMBER | Y | Codigo do prestador no MV2000i |
| 31 | CD_PRESTADOR_INTEGRA | VARCHAR2 | Y | Codigo de-para do prestador |
| 32 | NM_PRESTADOR | VARCHAR2 | Y | Nome do prestador |
| 33 | CD_SETOR | NUMBER | Y | Codigo do setor no MV2000i |
| 34 | CD_SETOR_INTEGRA | VARCHAR2 | Y | Codigo de-para do setor |
| 35 | TP_CARDAPIO | VARCHAR2 | Y | Tipo do cardapio |
| 36 | CD_TIPO_REFEICAO | VARCHAR2 | Y | Codigo do tipo de refeic?o no MV2000i |
| 37 | CD_TIPO_REFEICAO_INTEGRA | VARCHAR2 | Y | Codigo de-para do tipo de refeic?o |
| 38 | DS_TIPO_REFEICAO | VARCHAR2 | Y | Descric?o do tipo de refeic?o |
| 39 | CD_TIPO_DIETA | VARCHAR2 | Y | Codigo do tipo de dieta no MV2000i |
| 40 | CD_TIPO_DIETA_INTEGRA | VARCHAR2 | Y | Codigo de-para do tipo de dieta |
| 41 | DS_TIPO_DIETA | VARCHAR2 | Y | Descric?o do tipo de dieta |
| 42 | DS_OBSERVACAO_PRESCRICAO | VARCHAR2 | Y | Observac?o da prescric?o |
| 43 | DS_OBSERVACAO_NUTRICAO | VARCHAR2 | Y | Observac?o da nutric?o |
| 44 | CD_ITPRE_MED | NUMBER | Y | Codigo do item de prescric?o |
| 45 | QT_ITPRE_MED | NUMBER | Y | Quantidade do item de prescric?o |
| 46 | DS_ITPRE_MED | VARCHAR2 | Y | Descric?o do item de prescric?o |
| 47 | CD_PRODUTO | NUMBER | Y | Codigo do produto |
| 48 | DS_PRODUTO | VARCHAR2 | Y | Descric?o do produto |
| 49 | CD_UNI_PRO | NUMBER | Y | Codigo identificador do produto x unidade |
| 50 | DS_UNIDADE | VARCHAR2 | Y | Descric?o da unidade do produto |
| 51 | CD_TIP_FRE | NUMBER | Y | Codigo do tipo de frequencia da prescric?o do item no MV2000i |
| 52 | CD_TIP_FRE_INTEGRA | VARCHAR2 | Y | Codigo de-para do tipo de frequencia |
| 53 | DS_TIP_FRE | VARCHAR2 | Y | Descric?o do tipo de frequencia |
| 54 | SN_VISITANTE_ATIVO | VARCHAR2 | Y |  |
| 55 | DT_NASCIMENTO_PACIENTE | DATE | Y |  |
| 56 | HR_INICIO_REFEICAO | DATE | Y |  |
| 57 | HR_TERMINO_REFEICAO | DATE | Y |  |
| 58 | DS_TP_CARDAPIO | VARCHAR2 | Y |  |
| 59 | DS_TP_STATUS_REFEICAO | VARCHAR2 | Y |  |
| 60 | DS_OCORRENCIA | VARCHAR2 | Y |  |
| 61 | CD_TIPO_OCORRENCIA | NUMBER | Y |  |
| 62 | DS_COPA | VARCHAR2 | Y |  |
| 63 | CD_COPA | NUMBER | Y |  |
| 64 | NM_SETOR | VARCHAR2 | Y |  |
| 65 | NR_CPF_PACIENTE | VARCHAR2 | Y |  |
| 66 | TP_STATUS_REFEICAO | VARCHAR2 | Y |  |
| 67 | DS_TIPO_OCORRENCIA | VARCHAR2 | Y |  |
| 68 | QT_CARDAPIO | NUMBER | Y |  |
| 69 | CD_ITMOV_CARDAPIO | NUMBER | Y |  |
| 70 | DS_OPCAO | VARCHAR2 | Y |  |
| 71 | CD_OPCAO | NUMBER | Y |  |
| 72 | DS_PRATO | VARCHAR2 | Y |  |
| 73 | CD_PRATO | NUMBER | Y |  |
| 74 | DS_CONSUMO_EXTRA | VARCHAR2 | Y |  |
| 75 | CD_CONSUMO_EXTRA | VARCHAR2 | Y |  |
| 76 | CD_USUARIO_ENTREGA | VARCHAR2 | Y |  |
| 77 | DT_ENTREGA | DATE | Y |  |
| 78 | SN_CONFIRMADO | VARCHAR2 | Y |  |
| 79 | SN_AVULSO | VARCHAR2 | Y |  |

---

## MVINTEGRA.IMV_PRESCRICAO
> Tabela de integrac?o de prescric?es

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IMV_PRESCRICAO | NUMBER | N | Codigo sequencial do registro na integrac?o |
| 2 | TP_FLUXO | VARCHAR2 | N | Tipo de fluxo do registro (E - Entrada / S - Saida) |
| 3 | TP_STATUS | VARCHAR2 | N | Status do registro (A - Aguardando / E - Erro / T - Transmitido / P - Em processamento) |
| 4 | DS_ERRO | VARCHAR2 | Y | Descric?o da mensagem de erro ocorrido no processamento da mensagem |
| 5 | DT_GERADO | DATE | N | Data de gerac?o do registro na tabela |
| 6 | DT_PROCESSADO | DATE | Y | Data de processamento do registro |
| 7 | TP_MOVIMENTO | VARCHAR2 | N | Tipo do movimento do registro (I - Inclus?o / A - Alterac?o / E - Exclus?o) |
| 8 | TP_REGISTRO | VARCHAR2 | N | Identificac?o do tipo de registro existente: 001 - Dados da prescric?o / 002 - Itens prescritos /... |
| 9 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da multi-empresa |
| 10 | CD_MULTI_EMPRESA_INTEGRA | VARCHAR2 | Y | Codigo de-para da multi-empresa |
| 11 | CD_REGISTRO_PRINCIPAL | NUMBER | Y | Codigo identificador do registro principal da mensagem |
| 12 | CD_REGISTRO_PAI | NUMBER | Y | Codigo identificador do registro pai da mensagem |
| 13 | CD_ATENDIMENTO | NUMBER | Y | Codigo do atendimento |
| 14 | CD_ATENDIMENTO_INTEGRA | VARCHAR2 | Y | Codigo de-para do atendimento |
| 15 | CD_PRESCRICAO | NUMBER | Y | Codigo da prescric?o |
| 16 | CD_PRESCRICAO_INTEGRA | VARCHAR2 | Y | Codigo de-para da prescric?o |
| 17 | DT_PRESCRICAO | DATE | Y | Data da prescric?o |
| 18 | HR_PRESCRICAO | DATE | Y | Hora da prescric?o |
| 19 | CD_PRESTADOR | NUMBER | Y | Codigo do prestador |
| 20 | CD_PRESTADOR_INTEGRA | VARCHAR2 | Y | Codigo de-para do prestador |
| 21 | NM_PRESTADOR | VARCHAR2 | Y | Nome do prestador |
| 22 | CD_CONSELHO | NUMBER | Y | Codigo do conselho |
| 23 | CD_CONSELHO_INTEGRA | VARCHAR2 | Y | Codigo de-para do conselho |
| 24 | DS_CONSELHO | VARCHAR2 | Y | Descric?o do conselho |
| 25 | NR_CONSELHO | VARCHAR2 | Y | Numero do conselho |
| 26 | DS_EVOLUCAO | LONG | Y | Evoluc?o da prescric?o |
| 27 | NM_USUARIO | VARCHAR2 | Y | Usuario da prescric?o |
| 28 | SN_FECHADO | VARCHAR2 | Y | Prescric?o fechada? |
| 29 | SN_RN | VARCHAR2 | Y | Prescric?o de RN? |
| 30 | DT_VALIDADE | DATE | Y | Data de validade da prescric?o |
| 31 | SN_PRINCIPAL | VARCHAR2 | Y | Prescric?o principal? |
| 32 | SN_IMPRESSO | VARCHAR2 | Y | Prescric?o impressa? |
| 33 | CD_SETOR | NUMBER | Y | Codigo do setor |
| 34 | CD_SETOR_INTEGRA | VARCHAR2 | Y | Codigo de-para do setor |
| 35 | NM_SETOR | VARCHAR2 | Y | Nome do setor |
| 36 | TP_PRESCRICAO | VARCHAR2 | Y | Tipo da prescric?o |
| 37 | DT_REFERENCIA | DATE | Y | Data de referencia da prescric?o |
| 38 | SN_TRANSCRICAO | VARCHAR2 | Y | Prescric?o transcrita? |
| 39 | DH_CRIACAO | DATE | Y | Data e hora de criac?o da prescric?o |
| 40 | DH_IMPRESSAO | DATE | Y | Data e hora de impress?o da prescric?o |
| 41 | CD_ITEM_PRESCRICAO | NUMBER | Y | Codigo identificador do item da prescric?o |
| 42 | CD_ITEM_PRESCRICAO_INTEGRA | VARCHAR2 | Y | Codigo de-para identificador do item da prescric?o |
| 43 | DS_ITEM_PRESCRICAO | VARCHAR2 | Y | Descric?o do item da prescric?o |
| 44 | CD_TIPO_ESQUEMA | VARCHAR2 | Y | Codigo do tipo de esquema da prescric?o |
| 45 | CD_TIPO_ESQUEMA_INTEGRA | VARCHAR2 | Y | Codigo de-para do tipo de esquema da prescric?o |
| 46 | DS_TIPO_ESQUEMA | VARCHAR2 | Y | Descric?o do tipo de esquema da prescric?o |
| 47 | CD_TIPO_ITEM_PRESCRICAO | NUMBER | Y | Codigo do tipo do item da prescric?o |
| 48 | CD_TIPO_ITEM_PRESCRICAO_INTG | VARCHAR2 | Y | Codigo de-para do tipo do item da prescric?o |
| 49 | DS_TIPO_ITEM_PRESCRICAO | VARCHAR2 | Y | Descric?o do tipo de item da prescric?o |
| 50 | CD_TIPO_FREQUENCIA | NUMBER | Y | Codigo do tipo de frequencia |
| 51 | CD_TIPO_FREQUENCIA_INTEGRA | VARCHAR2 | Y | Codigo de-para do tipo de frequencia |
| 52 | DS_TIPO_FREQUENCIA | VARCHAR2 | Y | Descric?o do tipo de frequencia |
| 53 | CD_FORMA_APLICACAO | VARCHAR2 | Y | Codigo da forma de aplicac?o |
| 54 | CD_FORMA_APLICACAO_INTEGRA | VARCHAR2 | Y | Codigo de-para da forma de aplicac?o |
| 55 | DS_FORMA_APLICACAO | VARCHAR2 | Y | Descric?o da forma de aplicac?o |
| 56 | QT_PRESCICAO | NUMBER | Y | Quantidade prescrita |
| 57 | TP_SITUACAO | VARCHAR2 | Y | Situac?o do item prescrito |
| 58 | TP_LOCAL_EXAME | VARCHAR2 | Y | Local da prescric?o do item |
| 59 | DH_INICIO_ITEM | DATE | Y | Data de inicio do item prescrito |
| 60 | DH_FINAL_ITEM | DATE | Y | Data termino do item prescrito |
| 61 | CD_PRODUTO | NUMBER | Y | Codigo do produto |
| 62 | CD_PRODUTO_INTEGRA | VARCHAR2 | Y | Codigo de-para do produto |
| 63 | DS_PRODUTO | VARCHAR2 | Y | Descric?o do produto |
| 64 | CD_UNIDADE | VARCHAR2 | Y | Codigo da unidade |
| 65 | CD_UNI_PRO | NUMBER | Y | Codigo da unidade do produto |
| 66 | SN_CANCELADO | VARCHAR2 | Y | Item Cancelado? |
| 67 | DH_CANCELADO | DATE | Y | Data e hora do cancelamento do item |
| 68 | DS_JUSTIFICATIVA | VARCHAR2 | Y | Justificativa de cancelamento do item |
| 69 | QT_INFUSAO | NUMBER | Y | Quantidade de infus?o |
| 70 | CD_UNI_PRO_INF | NUMBER | Y | Unidade do produto da infus?o |
| 71 | TP_TEMPO | VARCHAR2 | Y | Tempo da infus?o |
| 72 | QT_DIAS | NUMBER | Y | Quantidade de dias |
| 73 | NR_DIA | NUMBER | Y | Numero de dias realizados |
| 74 | SN_URGENTE | VARCHAR2 | Y | Item urgente? |
| 75 | CD_TIPO_FREQUENCIA_DET | NUMBER | Y | Codigo do detalhamento da frequencia quando esta solicitar. Usado a principio para as frequencia ... |
| 76 | CD_TIPO_FREQUENCIA_DET_INTEGRA | VARCHAR2 | Y | Codigo de-para do detalhamento da frequencia quando esta solicitar. Usado a principio para as fre... |
| 77 | DS_TIPO_FREQUENCIA_DET | VARCHAR2 | Y | Descric?o do detalhamento da frequencia quando esta solicitar. Usado a principio para as frequenc... |
| 78 | CD_ITEM_PRESCRICAO_COPIA | NUMBER | Y | Codigo identificador do item da prescric?o que foi baseado para copia |
| 79 | SN_SOMENTE_HOJE | VARCHAR2 | Y | Indica se o item podera ser copiado em prescric?es futuras |
| 80 | CD_UNIDADE_PRESCRICAO | VARCHAR2 | Y | Codigo da unidade de medida |
| 81 | CD_UNIDADE_PRESCRICAO_INTEGRA | VARCHAR2 | Y | Codigo de-para da unidade de medida |
| 82 | DS_UNIDADE_PRESCRICAO | VARCHAR2 | Y | Descric?o da unidade de medida |
| 83 | CD_MATERIAL | NUMBER | Y | Codigo do material |
| 84 | CD_MATERIAL_INTEGRA | VARCHAR2 | Y | Codigo de-para do material |
| 85 | DS_MATERIAL | VARCHAR2 | Y | Descric?o do material |
| 86 | DH_MEDICACAO | DATE | Y | Data e hora da medicac?o |
| 87 | DH_LIMITE | DATE | Y | Data e hora limite |
| 88 | DS_HORARIO | VARCHAR2 | Y | Descric?o do horario |
| 89 | DH_CHECAGEM | DATE | Y | Data e hora da checagem |
| 90 | SN_SUSPENSO | VARCHAR2 | Y | Horario suspenso? |
| 91 | CD_JUSTIFICATIVA_CHECAGEM | NUMBER | Y | Codigo da justificativa da checagem |
| 92 | CD_JUSTIFICATIVA_CHECAGEM_INTG | VARCHAR2 | Y | Codigo de-para da justificativa da checagem |
| 93 | DS_JUSTIFICATIVA_CHECAGEM | VARCHAR2 | Y | Descric?o da justificativa da checagem |
| 94 | QT_CONSUMO | NUMBER | Y | Quantidade de consumo |
| 95 | VL_SOBRA | NUMBER | Y | Valor de sobra do item apos o consumo |
| 96 | CD_IMV_LOG_REQUISICAO | NUMBER | Y | Codigo do registro da integrac?o para caso de uma entrada |
| 97 | CD_SISTEMA_ORIGEM | VARCHAR2 | Y | Identificador do sistema origem para caso de uma entrada |
| 98 | DS_LEITO | VARCHAR2 | Y | Coluna que armazena a descric?o do leito |
| 99 | TP_ATENDIMENTO | VARCHAR2 | Y | Coluna que armazena o tipo de atendimento |
| 100 | CD_PACIENTE | NUMBER | Y | Coluna que armazena o codigo do paciente |
| 101 | DS_UNIDADE | VARCHAR2 | Y |  |
| 102 | SN_EXECUTADO | VARCHAR2 | Y |  |
| 103 | QT_REPETICAO | NUMBER | Y | Quantidade que se repete a quantidade prescrica. Ex: se quantidade prescrita for 300ml de soro (q... |
| 104 | QT_PADRAO | NUMBER | Y |  |
| 105 | DS_ITPRE_MED | VARCHAR2 | Y |  |
| 106 | QT_PRESCRICAO | NUMBER | Y |  |
| 107 | CD_LEITO | NUMBER | Y |  |
| 108 | CD_FECHAMENTO | NUMBER | Y |  |
| 109 | CD_SETOR_LEITO | NUMBER | Y |  |
| 110 | DS_SETOR_LEITO | VARCHAR2 | Y |  |
| 111 | NM_PACIENTE | VARCHAR2 | Y |  |

---

## MVINTEGRA.IMV_PRE_PEDIDO
> Tabela para controlar integrac?es de unificac?o do cadastro de paciente

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IMV_PRE_PEDIDO | NUMBER | N | Chave primaria da tabela |
| 2 | TP_FLUXO | VARCHAR2 | N | Identificador do fluxo da informac?o (S - Saida, E - Entrada) |
| 3 | TP_STATUS | VARCHAR2 | N | Identificac?o da situac?o atual do registro |
| 4 | DS_ERRO | VARCHAR2 | Y | Descric?o do erro quando ocorrer |
| 5 | DT_GERADO | DATE | N | Data do registro gerado na integrac?o |
| 6 | DT_PROCESSADO | DATE | Y | Data em que o registro foi integrado |
| 7 | TP_MOVIMENTO | VARCHAR2 | N | Tipo do movimento |
| 8 | TP_REGISTRO | VARCHAR2 | N | Tipo do registro da integrac?o |
| 9 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da empresa |
| 10 | CD_MULTI_EMPRESA_INTEGRA | VARCHAR2 | Y | Codigo de-para da empresa |
| 11 | CD_REGISTRO_PRINCIPAL | NUMBER | Y | Identificador do registro principal da mensagem |
| 12 | CD_REGISTRO_PAI | NUMBER | Y | Identificador do registro pai da mensagem |
| 13 | CD_ORDEM_COMPRA | NUMBER | Y | Codigo da Ordem de Compra |
| 14 | CD_ORDEM_COMPRA_INTEGRA | VARCHAR2 | Y | Codigo da Ordem de Compra De-para |
| 15 | NR_CNPJ_CPF | VARCHAR2 | Y | CNPJ do Fornecedor |
| 16 | TP_MENSAGEM | VARCHAR2 | Y | Tipo da Mensagem para diferenciar entre NF, SC, OC, PP (pre pedido) |
| 17 | TP_STATUS_OC | VARCHAR2 | Y | Coluna para controlar se deu sucesso ou erro na entrada da OC e enviar pro ME uma resposta com Pr... |
| 18 | DS_ERRO_OC | VARCHAR2 | Y | Descric?o do erro na entrada da OC para retornar ao ME |

---

## MVINTEGRA.IMV_PRODUTO_ANS
> Tabela usada na integrac?o que manda a informac?o dos produtos usados pelos convenios para o sistema SIP da ANS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IMV_PRODUTO_ANS | NUMBER | N | Codigo sequencial da integrac?o |
| 2 | TP_FLUXO | VARCHAR2 | N | Identificador do fluxo da informac?o (S - Saida, E - Entrada) |
| 3 | TP_STATUS | VARCHAR2 | N | Identificac?o da situac?o atual do registro (A - Aguardando, T - Transmitido e E - Erro) |
| 4 | DS_ERRO | VARCHAR2 | Y | Descric?o do erro quando ocorrer |
| 5 | DT_GERADO | DATE | N | Data do registro gerado na integrac?o |
| 6 | DT_PROCESSADO | DATE | Y | Data em que o registro foi integrado |
| 7 | TP_MOVIMENTO | VARCHAR2 | N | Tipo do movimento (I - Inclus?o, A - Alterac?o e E - Exclus?o) |
| 8 | TP_REGISTRO | VARCHAR2 | N | Tipo do registro da integrac?o (001 - Registro referente a pessoa) |
| 9 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da multi-empresa |
| 10 | CD_MULTI_EMPRESA_INTEGRA | VARCHAR2 | Y | Codigo da multi-empresa (DE-PARA) |
| 11 | CD_REGISTRO_PRINCIPAL | NUMBER | Y | Codigo do registro principal desta transac?o |
| 12 | CD_REGISTRO_PAI | NUMBER | Y | Cosigo do registro pai deste registro |
| 13 | CD_PERIODO | NUMBER | Y | Codigo do periodo |
| 14 | CD_PERIODO_INTEGRA | VARCHAR2 | Y | Codigo do periodo (DE-PARA) |
| 15 | DS_PERIODO | VARCHAR2 | Y | Descric?o do periodo |
| 16 | DT_INICIAL_PERIODO | DATE | Y | Competencia inicial do periodo - MM/YYYY |
| 17 | DT_FINAL_PERIODO | DATE | Y | Competencia final do periodo - MM/YYYY |
| 18 | TP_TRIMESTRE_PERIODO | VARCHAR2 | Y | Indica o trimestre (1, 2, 3, 4) |
| 19 | TP_TRIMESTRE_PERIODO_INTEGRA | VARCHAR2 | Y | Indica o trimestre de acordo com a ANS (01, 04, 07, 10) (DE-PARA) |
| 20 | DT_ANO_PERIODO | DATE | Y | Ano |
| 21 | SN_FECHADO | VARCHAR2 | Y | Indica que o periodo foi fechado e enviado |
| 22 | CD_OCORRENCIA | NUMBER | Y | Codigo da ocorrencia |
| 23 | CD_OCORRENCIA_INTEGRA | VARCHAR2 | Y | Codigo da ocorrencia (DE-PARA) |
| 24 | DS_OCORRENCIA | VARCHAR2 | Y |  |
| 25 | DT_INICIAL_OCORRENCIA | DATE | Y | Competencia inicial do ocorrencia - MM/YYYY |
| 26 | DT_FINAL_OCORRENCIA | DATE | Y | Competencia final do ocorrencia - MM/YYYY |
| 27 | TP_TRIMESTRE_OCORRENCIA | VARCHAR2 | Y | Indica o trimestre (1, 2, 3, 4) |
| 28 | TP_TRIMESTRE_OCORREN_INTEGRA | VARCHAR2 | Y | Indica o trimestre de acordo com a ANS (01, 04, 07, 10) (DE-PARA) |
| 29 | DT_ANO_OCORRENCIA | DATE | Y | Ano |
| 30 | CD_INFORMACAO | NUMBER | Y | Codigo da informacao |
| 31 | CD_INFORMACAO_INTEGRA | VARCHAR2 | Y | Codigo da informacao (DE-PARA) |
| 32 | DS_INFORMACAO | VARCHAR2 | Y | Descricao da informacao |
| 33 | CD_CONFIGURACAO_ITEM_ASSIST | NUMBER | Y | SIP Item Assistencial |
| 34 | CD_UF | VARCHAR2 | Y | UF |
| 35 | TP_FORMA_CONTRATACAO | VARCHAR2 | Y | Forma de contratac?o - (I) Individual/Famailiar (E) Empresarial (A) Coletivo por Ades?o |
| 36 | TP_SEGMENTACAO | VARCHAR2 | Y | Segmentac?o - (AMB) Ambulatorial (HSO) Hospital sem obstetricia (HCO) Hospital com Obstetricia (O... |
| 37 | QT_EVENTO | NUMBER | Y | Quantidade de eventos |
| 38 | QT_BENEFICIARIO | NUMBER | Y | Quantidade de beneficiarios expostos |
| 39 | VL_DESPESA | NUMBER | Y | Valor Liquido da Despesa |
| 40 | NR_SEQUENCIA | NUMBER | Y | Sequencial |

---

## MVINTEGRA.IMV_REGISTRO_JOB

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DH_REGISTRO | DATE | N |  |
| 2 | CD_IDENTIFICADOR | NUMBER | N |  |
| 3 | TP_FLUXO | VARCHAR2 | N |  |
| 4 | TP_DOCUMENTO | VARCHAR2 | N |  |
| 5 | TP_STATUS | VARCHAR2 | Y |  |
| 6 | DS_MENSAGEM | VARCHAR2 | Y |  |
| 7 | DH_PROCESSO | DATE | Y |  |
| 8 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 9 | TP_MOVIMENTO | VARCHAR2 | Y |  |
| 10 | CD_MULTI_EMPRESA | NUMBER | Y |  |

---

## MVINTEGRA.IMV_REINF

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IMV_REINF | NUMBER | N |  |
| 2 | TP_FLUXO | VARCHAR2 | N |  |
| 3 | TP_STATUS | VARCHAR2 | N |  |
| 4 | TP_REGISTRO | VARCHAR2 | Y |  |
| 5 | DS_ERRO | VARCHAR2 | Y |  |
| 6 | DT_GERADO | DATE | Y |  |
| 7 | DT_PROCESSADO | DATE | Y |  |
| 8 | TP_MOVIMENTO | VARCHAR2 | N |  |
| 9 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 10 | CD_REGISTRO_PRINCIPAL | NUMBER | N |  |
| 11 | CD_PROTOCOLO_ENVIO | VARCHAR2 | Y |  |
| 12 | DS_XMLENVIADO | VARCHAR2 | Y |  |
| 13 | DS_XMLRETORNO | VARCHAR2 | Y |  |
| 14 | DS_XMLCONSULTA | VARCHAR2 | Y |  |
| 15 | QT_PROCESSADO | NUMBER | Y |  |
| 16 | LO_MENSAGEM | BLOB | Y |  |
| 17 | LO_RETORNO | BLOB | Y |  |
| 18 | LO_CONSULTA | BLOB | Y |  |
| 19 | AMBIENTE | VARCHAR2 | Y |  |

---

## MVINTEGRA.IMV_RESULTADO_PSSD
> Tabela de integrac?o de resultado de exames laboratoriais

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IMV_RESULTADO_PSSD | NUMBER | N | Codigo sequencial do registro na integrac?o |
| 2 | TP_FLUXO | VARCHAR2 | N | Tipo de fluxo do registro (E - Entrada / S - Saida) |
| 3 | TP_STATUS | VARCHAR2 | N | Status do registro (A - Aguardando / E - Erro / T - Transmitido / P - Em processamento) |
| 4 | DS_ERRO | VARCHAR2 | Y | Descric?o da mensagem de erro ocorrido no processamento da mensagem |
| 5 | DT_GERADO | DATE | N | Data de gerac?o do registro na tabela |
| 6 | DT_PROCESSADO | DATE | Y | Data de processamento do registro |
| 7 | TP_MOVIMENTO | VARCHAR2 | N | Tipo do movimento do registro (I - Inclus?o / A - Alterac?o / E - Exclus?o) |
| 8 | TP_REGISTRO | VARCHAR2 | N | Identificac?o do tipo de registro existente: 001 ? Dados gerais da conta a pagar/receber / 002 ? ... |
| 9 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da multi-empresa |
| 10 | CD_MULTI_EMPRESA_INTEGRA | VARCHAR2 | Y | Codigo de-para da multi-empresa |
| 11 | CD_REGISTRO_PRINCIPAL | NUMBER | Y | Codigo identificador do registro principal da mensagem |
| 12 | CD_REGISTRO_PAI | NUMBER | Y | Codigo identificador do registro pai da mensagem |
| 13 | CD_PEDIDO | VARCHAR2 | Y | Codigo do pedido |
| 14 | CD_PEDIDO_INTEGRA | VARCHAR2 | Y | Codigo de-para do pedido |
| 15 | CD_AMOSTRA | VARCHAR2 | Y | Codigo da amostrar |
| 16 | CD_LABORATORIO | VARCHAR2 | Y | Codigo do laboratorio |
| 17 | CD_LABORATORIO_INTEGRA | VARCHAR2 | Y | Codigo de-para do laboratorio |
| 18 | CD_PRESTADOR_SOLIC | VARCHAR2 | Y | Codigo do prestador solicitante |
| 19 | CD_PRESTADOR_SOLIC_INTEGRA | VARCHAR2 | Y | Codigo de-para do prestador solicitante |
| 20 | CD_SETOR_SOLIC | VARCHAR2 | Y | Codigo do setor solicitante |
| 21 | CD_SETOR_SOLIC_INTEGRA | VARCHAR2 | Y | Codigo de-para do setor solicitante |
| 22 | CD_PRESTADOR_EXEC | VARCHAR2 | Y | Codigo do prestador executante |
| 23 | CD_PRESTADOR_EXEC_INTEGRA | VARCHAR2 | Y | Codigo de-para do prestador executante |
| 24 | CD_PACIENTE | VARCHAR2 | Y | Codigo do paciente |
| 25 | CD_PACIENTE_INTEGRA | VARCHAR2 | Y | Codigo de-para do paciente |
| 26 | DS_PACIENTE | VARCHAR2 | Y | Nome do paciente |
| 27 | DT_NASCIMENTO | DATE | Y | Data de nascimento do paciente |
| 28 | TP_SEXO | VARCHAR2 | Y | Sexo do paciente |
| 29 | CD_ATENDIMENTO | VARCHAR2 | Y | Codigo do atendimento |
| 30 | CD_ATENDIMENTO_INTEGRA | VARCHAR2 | Y | Codigo de-para do atendimento |
| 31 | CD_ITEM_PEDIDO | VARCHAR2 | Y | Codigo identificador do item do pedido |
| 32 | CD_ITEM_PEDIDO_INTEGRA | VARCHAR2 | Y | Codigo de-para identificador do item do pedido |
| 33 | CD_EXAME | VARCHAR2 | Y | Codigo do exame |
| 34 | CD_EXAME_INTEGRA | VARCHAR2 | Y | Codigo de-para do exame |
| 35 | NM_MNEMONICO | VARCHAR2 | Y | Mnemonico do exame |
| 36 | NM_EXAME | VARCHAR2 | Y | Descric?o do exame |
| 37 | SN_CULTURA | VARCHAR2 | Y | Identifica se e exame de cultura |
| 38 | TP_RESULTADO | VARCHAR2 | Y | Tipo do resultado |
| 39 | CD_PARAMETRO | VARCHAR2 | Y | Codigo do parametro do exame cultura |
| 40 | CD_VERSAO | VARCHAR2 | Y | Vers?o do exame |
| 41 | CD_ORDEM | VARCHAR2 | Y | Ordem do exame |
| 42 | DS_CAMPO | VARCHAR2 | Y | Descric?o do campo deo exame |
| 43 | TP_CAMPO | VARCHAR2 | Y | Tipo do campo do exame |
| 44 | CD_GERME | VARCHAR2 | Y | Identificador do germe |
| 45 | CD_ANTIMICROBIANO | VARCHAR2 | Y | Identificador do antimicrobiano |
| 46 | DS_RESULTADO | VARCHAR2 | Y | Resultado do exame |
| 47 | DS_OBSERVACAO | VARCHAR2 | Y | Observac?es do exame |
| 48 | DS_MIC | VARCHAR2 | Y | Descric?o do antimicrobiano |
| 49 | DS_UNIDADE | VARCHAR2 | Y | Descric?o da unidade |
| 50 | CD_PROCEDIMENTO | VARCHAR2 | Y | Codigo do procedimento |
| 51 | DS_MASCARA | VARCHAR2 | Y | Mascara |
| 52 | TP_VALOR_REFERENCIA | VARCHAR2 | Y | Tipo do valor de referencia |
| 53 | DT_COLETA | DATE | Y | Data de coleta |
| 54 | CD_MATERIAL | VARCHAR2 | Y | Codigo do material |
| 55 | CD_MATERIAL_INTEGRA | VARCHAR2 | Y | Codigo de-para do material |
| 56 | DS_MATERIAL | VARCHAR2 | Y | Descric?o do material |
| 57 | DT_CADASTRO | DATE | Y | Data de cadastro do exame |
| 58 | DS_USUARIO_CADASTRO | VARCHAR2 | Y | Usuario de cadastro do exame |
| 59 | DT_REVISAO | DATE | Y | Data de revis?o do exame |
| 60 | DS_USUARIO_REVISAO | VARCHAR2 | Y | Usuario de revis?o do exame |
| 61 | DT_ASSINADO | DATE | Y | Data de assinatura do exame |
| 62 | DS_USUARIO_ASSINADO | VARCHAR2 | Y | Usuario de assinatura do exame |
| 63 | DT_LIBERACAO | DATE | Y | Data de liberac?o do exame |
| 64 | DS_USUARIO_LIBERACAO | VARCHAR2 | Y | Usuario de liberac?o do exame |
| 65 | TP_SITUACAO_RESULTADO | VARCHAR2 | Y | Situac?o do resultado |
| 66 | DS_NORMAL_ABSOLUTO | VARCHAR2 | Y | Descric?o do valor referencia normal absoluto |
| 67 | VL_NORMAL_ABSO_REF_INICIO | NUMBER | Y | Valor referencia normal absoluto inicio |
| 68 | VL_NORMAL_ABSO_REF_FIM | NUMBER | Y | Valor referencia normal absoluto inicio |
| 69 | DS_NORMAL_PERCENTUAL | VARCHAR2 | Y | Descric?o do valor referencia normal em percentual |
| 70 | VL_NORMAL_PERC_REF_INICIO | NUMBER | Y | Valor referencia normal percentual inicio |
| 71 | VL_NORMAL_PERC_REF_FIM | NUMBER | Y | Valor referencia normal percentual fim |
| 72 | DS_LIMITE_ABSOLUTO | VARCHAR2 | Y | Descric?o do valor referencia limite absoluto |
| 73 | VL_LIMITE_ABSO_REF_INICIO | NUMBER | Y | Valor referencia limite absoluto inicio |
| 74 | VL_LIMITE_ABSO_REF_FIM | NUMBER | Y | Valor referencia limite absoluto fim |
| 75 | DS_LIMITE_PERCENTUAL | VARCHAR2 | Y | Descric?o do valor referencia limite percentual |
| 76 | VL_LIMITE_PERC_REF_INICIO | NUMBER | Y | Valor referencia limite percentual inicio |
| 77 | VL_LIMITE_PERC_REF_FIM | NUMBER | Y | Valor referencia limite percentual fim |
| 78 | DS_ABSURDO_ABSOLUTO | VARCHAR2 | Y | Descric?o do valor referencia absurdo absoluto |
| 79 | VL_ABSURDO_ABSO_REF_INICIO | NUMBER | Y | Valor referencia absurdo absoluto inicio |
| 80 | VL_ABSURDO_ABSO_REF_FIM | NUMBER | Y | Valor referencia absurdo absoluto inicio |
| 81 | DS_ABSURDO_PERCENTUAL | VARCHAR2 | Y | Descric?o do valor referencia absurdo percentual |
| 82 | VL_ABSURDO_PERC_REF_INICIO | NUMBER | Y | Valor referencia absurdo percentual inicio |
| 83 | VL_ABSURDO_PERC_REF_FIM | NUMBER | Y | Valor referencia absurdo percentual fim |
| 84 | CD_SISTEMA_ORIGEM | VARCHAR2 | Y | Coluna que vai conter o codigo do sistema origem da mensagem, usada na entrada de mensagens |
| 85 | CD_IMV_LOG_REQUISICAO | NUMBER | Y | Codigo da mensagem que esta na mvintegra.inv_log_requisicao que originou este registro. |
| 86 | CD_COLONIA | NUMBER | Y | Codigo da colonia |
| 87 | CD_COLONIA_INTEGRA | VARCHAR2 | Y | Codigo da colonia DE-PARA |
| 88 | DS_COLONIA | VARCHAR2 | Y | Descric?o da colonia |
| 89 | CD_PROCEDIMENTO_INTEGRA | VARCHAR2 | Y | Codigo do procedimento DE-PARA |
| 90 | CD_GERME_INTEGRA | VARCHAR2 | Y | Codigo do germeo DE-PARA |
| 91 | DS_TEXTO_REFERENCIA_NORMAL | VARCHAR2 | Y | Texto para referencia de resultado normal |
| 92 | DS_MASCARA_VALOR_NORM_ABSO_REF | VARCHAR2 | Y | Mascara para valores de referencia absolutos normal |
| 93 | DS_TEXTO_REFERENCIA_LIMITE | VARCHAR2 | Y | Texto para referencia de resultado limite |
| 94 | DS_MASCARA_VALOR_LIMT_ABSO_REF | VARCHAR2 | Y | Mascara para valores de referencia absolutos limite |
| 95 | DS_TEXTO_REFERENCIA_ABSURDO | VARCHAR2 | Y | Texto para referencia de resultado absurdo |
| 96 | DS_MASCARA_VALOR_ABSU_ABSO_REF | VARCHAR2 | Y | Mascara para valores de referencia absolutos absurdo |
| 97 | CD_AGRUPAMENTO | NUMBER | Y | Código do agrupamento |
| 98 | TP_COR | VARCHAR2 | Y | Cor do paciente |
| 99 | SN_ASSINADO | VARCHAR2 | Y | Indica se o exame já está assinado |
| 100 | SN_REVISADO | VARCHAR2 | Y | Indica se o exame já está revisado |
| 101 | SN_LIBERADO | VARCHAR2 | Y | Indica se o exame já está liberado |
| 102 | DS_COMENTARIO | VARCHAR2 | Y |  |
| 103 | DS_METODO | VARCHAR2 | Y |  |
| 104 | DS_CAMINHO_RESULTADO | VARCHAR2 | Y |  |
| 105 | DS_PANICO_ABSOLUTO | VARCHAR2 | Y |  |
| 106 | VL_PANICO_ABSO_REF_INICIO | NUMBER | Y |  |
| 107 | VL_PANICO_ABSO_REF_FIM | NUMBER | Y |  |
| 108 | CD_ITEM_PRESCRICAO | NUMBER | Y |  |
| 109 | CD_ANTIMICROBIANO_INTEGRA | VARCHAR2 | Y |  |
| 110 | SN_PARCIAL | VARCHAR2 | Y |  |
| 111 | SN_RETIFICADO | VARCHAR2 | Y |  |
| 112 | VL_INI_ABSURDO | NUMBER | Y |  |
| 113 | VL_FIM_ABSURDO | NUMBER | Y |  |
| 114 | VL_REF_TEXTO | VARCHAR2 | Y |  |
| 115 | DS_VALOR_PADRAO | VARCHAR2 | Y |  |
| 116 | NR_CNES | NUMBER | Y |  |
| 117 | CD_REGISTRO_UNICO_PACIENTE | NUMBER | Y |  |
| 118 | CD_GUIA | NUMBER | Y |  |
| 119 | VL_REFERENCIA_INICIAL | VARCHAR2 | Y |  |
| 120 | VL_REFERENCIA_FINAL | VARCHAR2 | Y |  |
| 121 | NM_CONVENIO | VARCHAR2 | Y |  |
| 122 | DS_ORI_ATE | VARCHAR2 | Y |  |
| 123 | DT_PEDIDO | DATE | Y |  |
| 124 | VL_INI_LIMITE | NUMBER | Y |  |
| 125 | VL_FIM_LIMITE | NUMBER | Y |  |
| 126 | DS_OBSERVACAO_GERME | VARCHAR2 | Y |  |

---

## MVINTEGRA.IMV_SERVICO
> Tabela de integrac?o para Cadastro de Servicos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IMV_SERVICO | NUMBER | N | Codigo sequencial do registro na integrac?o |
| 2 | TP_FLUXO | VARCHAR2 | N | Tipo de fluxo do registro (E - Entrada / S - Saida) |
| 3 | TP_STATUS | VARCHAR2 | N | Status do registro (A - Aguardando / E - Erro / T - Transmitido / P - Em processamento) |
| 4 | DS_ERRO | VARCHAR2 | Y | Descric?o da mensagem de erro ocorrido no processamento da mensagem |
| 5 | DT_GERADO | DATE | N | Data de gerac?o do registro na tabela |
| 6 | DT_PROCESSADO | DATE | Y | Data de processamento do registro |
| 7 | TP_MOVIMENTO | VARCHAR2 | N | Tipo do movimento do registro (I - Inclus?o / A - Alterac?o / E - Exclus?o) |
| 8 | TP_REGISTRO | VARCHAR2 | N | Identificac?o do tipo de registro existente: 001 - Dados da prescric?o / 002 - Itens prescritos /... |
| 9 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da multi-empresa |
| 10 | CD_MULTI_EMPRESA_INTEGRA | VARCHAR2 | Y | Codigo de-para da multi-empresa |
| 11 | CD_REGISTRO_PRINCIPAL | NUMBER | Y | Codigo identificador do registro principal da mensagem |
| 12 | CD_REGISTRO_PAI | NUMBER | Y | Codigo identificador do registro pai da mensagem |
| 13 | CD_SERVICO_INTEGRA | VARCHAR2 | Y | Codigo de-para do servico |
| 14 | CD_SERVICO | NUMBER | Y | Codigo do servico no MV |
| 15 | NM_SERVICO | VARCHAR2 | Y | Descric?o do servico |
| 16 | PESO | NUMBER | Y | Peso |
| 17 | QTD_HORA_MIN | NUMBER | Y | Quantidade de horas minima do servico |
| 18 | QTD_HORA_MAX | NUMBER | Y | Quantidade de horas maxima do servico |
| 19 | TP_CATEGORIA | VARCHAR2 | Y | Tipo da categoria do servico |
| 20 | QT_MINUTO_MIN | NUMBER | Y | Quantidade de minutos minima do servico |
| 21 | QT_MINUTO_MAX | NUMBER | Y | Quantidade de minutos maxima do servico |
| 22 | DS_UNIDADE_MEDIDA | VARCHAR2 | Y | Descric?o da unidade de medida do servico |
| 23 | CD_REDUZIDO | NUMBER | Y | Indica o codigo da conta contabil |
| 24 | CD_ITEM_RES | NUMBER | Y | Indica o codigo da conta de custo |
| 25 | CD_SERV_DMS | NUMBER | Y | Codigo do Servico na DMS |
| 26 | SN_TRIBUTA | VARCHAR2 | Y | Identifica se o tipo de servico gera ou n?o tributos |
| 27 | CD_OFICINA_INTEGRA | VARCHAR2 | Y | Codigo de-para da oficina |
| 28 | CD_OFICINA | NUMBER | Y | Codigo da oficina |
| 29 | CD_IMV_LOG_REQUISICAO | NUMBER | Y | Codigo do registro da integrac?o para caso de uma entrada |
| 30 | CD_SISTEMA_ORIGEM | VARCHAR2 | Y | Identificador do sistema origem para caso de uma entrada |

---

## MVINTEGRA.IMV_SOLICITACAO_ATENDIMENTO
> Tabela para integrac?o de SOLICITAC?O DE ATENDIMENTO modelo novo IMVW

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IMV_SOLICITACAO_ATENDIMENTO | NUMBER | N | Codigo sequencial da integrac?o |
| 2 | TP_FLUXO | VARCHAR2 | N | Identificador do fluxo da informac?o (S - Saida, E - Entrada) |
| 3 | TP_STATUS | VARCHAR2 | N | Identificac?o da situac?o atual do registro (A - Aguardando, T - Transmitido e E - Erro) |
| 4 | DS_ERRO | VARCHAR2 | Y | Descric?o do erro quando ocorrer |
| 5 | DT_GERADO | DATE | N | Data do registro gerado na integrac?o |
| 6 | DT_PROCESSADO | DATE | Y | Data em que o registro foi integrado |
| 7 | TP_MOVIMENTO | VARCHAR2 | N | Tipo do movimento (I - Inclus?o, A - Alterac?o e E - Exclus?o) |
| 8 | TP_REGISTRO | VARCHAR2 | N | Tipo do registro da integrac?o (001 - Registro referente a pessoa) |
| 9 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da multi-empresa |
| 10 | CD_MULTI_EMPRESA_INTEGRA | VARCHAR2 | Y | Codigo da multi-empresa (DE-PARA) |
| 11 | CD_REGISTRO_PRINCIPAL | NUMBER | Y | Codigo do registro principal desta transac?o |
| 12 | CD_REGISTRO_PAI | NUMBER | Y | Cosigo do registro pai deste registro |
| 13 | CD_SOLICITACAO_ATENDIMENTO | NUMBER | Y | Codigo da solicitacao de atendimento |
| 14 | CD_SOLICITACAO_ATND_INTEGRA | VARCHAR2 | Y | Codigo da solicitacao de atendimento (DE-PARA) |
| 15 | DT_SOLICITACAO_ATENDIMENTO | DATE | Y | Data da solicitacao de atendimento |
| 16 | HR_SOLICITACAO_ATENDIMENTO | DATE | Y | Hora da solicitacao de atendimento |
| 17 | TP_SOLICITACAO | VARCHAR2 | Y | Tipo de solicitacao |
| 18 | TP_PRIORIDADE | VARCHAR2 | Y | Tipo de prioridade |
| 19 | SN_USA_UTI | VARCHAR2 | Y | Informa se utiliza UTI |
| 20 | CD_ATENDIMENTO_ORIGEM | NUMBER | Y | Codigo do atendimento de origem |
| 21 | CD_PRESTADOR | NUMBER | Y | Codigo do prestador solicitante |
| 22 | CD_PRESTADOR_INTEGRA | VARCHAR2 | Y | Codigo do prestador solicitante (DE-PARA) |
| 23 | DS_PRESTADOR | VARCHAR2 | Y | Descricao do prestador solicitante |
| 24 | NR_CPF_PRESTADOR | VARCHAR2 | Y | Numero do CPF do prestador solicitante |
| 25 | NR_CONSELHO_PRESTADOR | VARCHAR2 | Y | Numero do conselho do prestador solicitante |
| 26 | DS_CONSELHO_PRESTADOR | VARCHAR2 | Y | Descricao do conselho do prestador solicitante |
| 27 | DS_ESTADO_CONSELHO | VARCHAR2 | Y | Descricao da UF do conselho do prestador solicitante |
| 28 | CD_PROC_ATENDIMENTO | VARCHAR2 | Y | Codigo do precedimento do atendimento |
| 29 | CD_PROC_ATENDIMENTO_INTEGRA | VARCHAR2 | Y | Codigo do precedimento do atendimento (DE-PARA) |
| 30 | DS_PROC_ATENDIMENTO | VARCHAR2 | Y | Descricao do procedimento do atendimento |
| 31 | CD_CID_ATENDIMENTO | VARCHAR2 | Y | Codigo do CID do atendimento |
| 32 | CD_SETOR | NUMBER | Y | Codigo do setor do atendimento |
| 33 | CD_SETOR_INTEGRA | VARCHAR2 | Y | Codigo do setor do atendimento (DE-PARA) |
| 34 | DS_SETOR | VARCHAR2 | Y | Descricao do setor do atendimento |
| 35 | CD_LEITO | NUMBER | Y | Codigo do leito do atendimento |
| 36 | CD_LEITO_INTEGRA | VARCHAR2 | Y | Codigo do leito do atendimento (DE-PARA) |
| 37 | DS_LEITO | VARCHAR2 | Y | Descricao do leito do atendimento |
| 38 | DS_LEITO_RESUMIDO | VARCHAR2 | Y | Descricao do leito resumido do atendimento |
| 39 | DS_ENFERMAGEM | VARCHAR2 | Y | Descricao da enfermagem do atendimento |
| 40 | CD_ESPECIALIDADE | VARCHAR2 | Y | Codigo da especialidade do atendimento |
| 41 | CD_ESPECIALIDADE_INTEGRA | VARCHAR2 | Y | Codigo da especialidade do atendimento (DE-PARA) |
| 42 | DS_ESPECIALIDADE | VARCHAR2 | Y | Descricao da especialidade do atendimento |
| 43 | CD_PACIENTE | NUMBER | Y | Codigo do paciente do atendimento |
| 44 | CD_PACIENTE_INTEGRA | VARCHAR2 | Y | Codigo do paciente do atendimento (DE-PARA) |
| 45 | DS_PACIENTE | VARCHAR2 | Y | Descricao do paciente do atendimento |
| 46 | NR_PESO | NUMBER | Y | Peso do paciente |
| 47 | NR_ALTURA | NUMBER | Y | Altura do paciente |
| 48 | QT_PRESSAO_SISTOLICA | NUMBER | Y | Pressao sistolica do paciente |
| 49 | QT_PRESSAO_DIASTOLICA | NUMBER | Y | Pressao diastolica do paciente |
| 50 | NR_TEMPERATURA | NUMBER | Y | Temperatura do paciente |
| 51 | TP_VIA_AEREA | VARCHAR2 | Y | Indica o estado da via aerea do paciente |
| 52 | DS_VIA_AEREA | VARCHAR2 | Y | Descricao do estado da via aerea do paciente |
| 53 | TP_VENTILACAO | VARCHAR2 | Y | Indica o tipo de ventilacao do paciente |
| 54 | DS_VENTILACAO | VARCHAR2 | Y | Descricao do tipo da vendilacao do paciente |
| 55 | TP_CIRCULACAO | VARCHAR2 | Y | Indica o tipo de circulacao |
| 56 | DS_CIRCULACAO | VARCHAR2 | Y | Descricao do tipo de circulacao |
| 57 | TP_GRAU_CIRCULACAO | VARCHAR2 | Y | Indica o tipo do grau de circulacao |
| 58 | DS_GRAU_CIRCULACAO | VARCHAR2 | Y | Descricao do tipo do grau de circulacao |
| 59 | SN_ACESSO_VASCULAR | VARCHAR2 | Y | Indica o tipo do acesso vascular |
| 60 | DS_LOCAL_ACESSO_VASCULAR | VARCHAR2 | Y | Descricao do local de acesso vascular |
| 61 | SN_DRENAGEM_TORAX | VARCHAR2 | Y | Indica a drenagem do torax |
| 62 | DS_LOCAL_DRENAGEM_TORAX | VARCHAR2 | Y | Descricao local drenagem do torax |
| 63 | SN_GLASGOW | VARCHAR2 | Y | Indica o grasglow |
| 64 | NR_NIVEL_GLASGOW | NUMBER | Y | Numero do nivel glasglow |
| 65 | SN_SINAL_FOCAL | VARCHAR2 | Y | Indica sinal focal |
| 66 | SN_PUPILA_REAGENTE | VARCHAR2 | Y | Indica Pupila reagente |
| 67 | SN_MIDRIASE | VARCHAR2 | Y | Indica se foi feito midriase |
| 68 | TP_LOCAL_MIDRIASE | VARCHAR2 | Y | Indica local da midriase |
| 69 | DS_LOCAL_MIDRIASE | VARCHAR2 | Y | Descricao do local de midriase |
| 70 | DS_SINAIS_SINTOMAS | VARCHAR2 | Y | Descricao de sinais e sintomas |
| 71 | DS_JUSTIFICATIVA_SOLICITACAO | VARCHAR2 | Y | Descricao da justificativa da solicitacao |
| 72 | DS_RESULTADO_DIAGNOSTICO | VARCHAR2 | Y | Descricao do resultado do diagnostico |
| 73 | TP_STATUS_ATENDIMENTO | VARCHAR2 | Y | Indica o status do atendimento |
| 74 | NM_MAE | VARCHAR2 | Y | Nome da mae do paciente |
| 75 | TP_SEXO | VARCHAR2 | Y | Indica o sexo do paciente |
| 76 | DT_NASCIMENTO | DATE | Y | Data de nascimento do paciente |
| 77 | CD_ESTABELECIMENTO_EXEC | NUMBER | Y | Codigo do estabelecimento executante |
| 78 | NM_ESTABELECIMENTO_EXEC | VARCHAR2 | Y | Nome do estabelecimento executante |
| 79 | DS_POSTO_DESTINO | VARCHAR2 | Y | Descricao do posto de destino |
| 80 | DS_ENFERMARIA_DESTINO | VARCHAR2 | Y | Descricao da enfermaria de destino |
| 81 | DS_LEITO_DESTINO | VARCHAR2 | Y | Descricao do leito de destino |
| 82 | NM_MEDICO_REGULADOR | VARCHAR2 | Y | Nome do medico regulador |
| 83 | DT_AUTORIZACAO | DATE | Y | Data de autorizacao |
| 84 | NR_CNS_PRESTADOR | VARCHAR2 | Y | Numero do CNS do prestador |
| 85 | CD_IMV_LOG_REQUISICAO | NUMBER | Y | Codigo da mensagem que esta na mvintegra.inv_log_requisicao que originou este registro. |

---

## MVINTEGRA.IMV_SOLICITACAO_ESTOQUE
> Tabela de integracao de solicitacoes ao estoque

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IMV_SOLICITACAO_ESTOQUE | NUMBER | N | Codigo sequencial da integrac?o |
| 2 | TP_FLUXO | VARCHAR2 | N | Identificador do fluxo da informac?o (S - Saida, E - Entrada) |
| 3 | TP_STATUS | VARCHAR2 | N | Identificac?o da situac?o atual do registro (A - Aguardando, T - Transmitido e E - Erro) |
| 4 | DS_ERRO | VARCHAR2 | Y | Descric?o do erro quando ocorrer |
| 5 | DT_GERADO | DATE | N | Data do registro gerado na integrac?o |
| 6 | DT_PROCESSADO | DATE | Y | Data em que o registro foi integrado |
| 7 | TP_MOVIMENTO | VARCHAR2 | N | Tipo do movimento (I - Inclus?o, A - Alterac?o e E - Exclus?o) |
| 8 | TP_REGISTRO | VARCHAR2 | N | Tipo do registro da integrac?o (001 - Registro referente a pessoa) |
| 9 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da multi-empresa |
| 10 | CD_MULTI_EMPRESA_INTEGRA | VARCHAR2 | Y | Codigo da multi-empresa (DE-PARA) |
| 11 | CD_REGISTRO_PRINCIPAL | NUMBER | Y | Codigo do registro principal desta transac?o |
| 12 | CD_REGISTRO_PAI | NUMBER | Y | Codigo do registro pai deste registro |
| 13 | CD_SOLSAI_PRO | NUMBER | Y | Codigo da solicitac?o |
| 14 | DT_SOLSAI_PRO | DATE | Y | Data da solicitac?o |
| 15 | SN_URGENTE | VARCHAR2 | Y | Solicitac?o urgente |
| 16 | CD_PACIENTE | NUMBER | Y | Codigo do paciente |
| 17 | CD_PACIENTE_INTEGRA | VARCHAR2 | Y | Codigo do paciente (DE-PARA) |
| 18 | NM_PACIENTE | VARCHAR2 | Y | Nome do paciente |
| 19 | CD_LEITO | NUMBER | Y | Codigo do leito |
| 20 | CD_LEITO_INTEGRA | VARCHAR2 | Y | Codigo do leito (DE-PARA) |
| 21 | DS_LEITO | VARCHAR2 | Y | Descric?o do leito |
| 22 | TP_SOLICITACAO | VARCHAR2 | Y | Tipo de solicitac?o |
| 23 | TP_SOLICITACAO_INTEGRA | VARCHAR2 | Y | Tipo de solicitac?o (DE-PARA) |
| 24 | SN_CANCELADO | VARCHAR2 | Y | Solicitac?o cancelada |
| 25 | CD_UNID_INT | NUMBER | Y | Codigo da unidade de internac?o |
| 26 | CD_UNID_INT_INTEGRA | VARCHAR2 | Y | Codigo da unidade de internac?o (DE-PARA) |
| 27 | DS_UNID_INT | VARCHAR2 | Y | Descric?o da unidade de internac?o |
| 28 | CD_SETOR | NUMBER | Y | Codigo do setor |
| 29 | CD_SETOR_INTEGRA | VARCHAR2 | Y | Codigo do setor (DE-PARA) |
| 30 | NM_SETOR | VARCHAR2 | Y | Descric?o do setor |
| 31 | CD_ESTOQUE | NUMBER | Y | Codigo do estoque |
| 32 | CD_ESTOQUE_INTEGRA | VARCHAR2 | Y | Codigo do estoque (DE-PARA) |
| 33 | DS_ESTOQUE | VARCHAR2 | Y | Descric?o do estoque |
| 34 | CD_TURNO | NUMBER | Y | Codigo do turno |
| 35 | CD_TURNO_INTEGRA | VARCHAR2 | Y | Codigo do turno (DE-PARA) |
| 36 | DS_TURNO | VARCHAR2 | Y | Descric?o do turno |
| 37 | CD_ITSOLSAI_PRO | NUMBER | Y | Codigo do item de solicitac?o |
| 38 | CD_ITSOLSAI_PRO_INTEGRA | VARCHAR2 | Y | Codigo do item de solicitac?o (DE-PARA) |
| 39 | NM_PRODUTO | VARCHAR2 | Y | Descric?o do produto |
| 40 | DS_LOTE | VARCHAR2 | Y | Descric?o do lote do produto |
| 41 | DT_VALIDADE | DATE | Y | Data de validade do produto |
| 42 | QT_SOLICITADO | NUMBER | Y | Quantidade solicitada |
| 43 | SN_ITEM_CANCELADO | VARCHAR2 | Y | Item cancelado |
| 44 | CD_PRODUTO | NUMBER | Y | Codigo do produto |
| 45 | CD_PRODUTO_INTEGRA | VARCHAR2 | Y | Codigo do produto DE-PARA |
| 46 | CD_LOTE_INTEGRA | VARCHAR2 | Y | Codigo do lote do produto DE-PARA |
| 47 | CD_ITPRE_MED | NUMBER | Y | Codigo do item da prescricao |
| 48 | CD_ITPRE_MED_INTEGRA | VARCHAR2 | Y | Codigo do item da prescricao DE-PARA |
| 49 | DS_ITPRE_MED | VARCHAR2 | Y | Descric?o do Item da Prescricao |
| 50 | CD_PRODUTO_MESTRE | NUMBER | Y | Codigo do produto mestre |
| 51 | CD_PRODUTO_MESTRE_INTEGRA | VARCHAR2 | Y | Codigo do produto mestre DE-PARA |
| 52 | NM_PRODUTO_MESTRE | VARCHAR2 | Y | Nome do produto mestre |
| 53 | CD_PRE_MED | NUMBER | Y | Codigo da Prescricao Medica |
| 54 | CD_PRE_MED_INTEGRA | VARCHAR2 | Y | Codigo da Prescricao Medica DE-PARA |
| 55 | TP_PRE_MED | VARCHAR2 | Y | Tipo da Prescricao Medica |
| 56 | CD_IMV_LOG_REQUISICAO | NUMBER | Y | Codigo da mensagem que esta na mvintegra.inv_log_requisicao que originou este registro. |
| 57 | TP_SITUACAO | VARCHAR2 | Y | Flag para identificar a situac?o da solicitac?o. P - PEDIDO;S - CONFIRMADO;C - ATENDIMENTO PARCIA... |
| 58 | SN_FECHADA | VARCHAR2 | Y | Quantidade de produtos atendidos |
| 59 | QT_ATENDIDA | NUMBER | Y |  |
| 60 | DS_CONSELHO | VARCHAR2 | Y | Descric?o do conselho |
| 61 | NR_CONSELHO | VARCHAR2 | Y | Numero do conselho |
| 62 | CD_TIPO_ITEM_PRESCRICAO | NUMBER | Y | Codigo do tipo de item de prescric?o |
| 63 | CD_LOTE | VARCHAR2 | Y | Codigo do lote do produto |
| 64 | CD_ATENDIMENTO | NUMBER | Y |  |
| 65 | TP_ORIGEM_SOLICITACAO | VARCHAR2 | Y |  |
| 66 | DH_MEDICACAO | DATE | Y |  |
| 67 | CD_UNI_PRO | NUMBER | Y |  |
| 68 | CD_UNI_PRO_INTEGRA | VARCHAR2 | Y |  |
| 69 | CD_UNIDADE | VARCHAR2 | Y |  |
| 70 | CD_UNIDADE_INTEGRA | VARCHAR2 | Y |  |
| 71 | DS_UNIDADE | VARCHAR2 | Y |  |

---

## MVINTEGRA.IMV_SOLICITACAO_SADT
> TABELA DE INTEGRAC?OD E EXAMES DE IMAGENS E LABORATORIAIS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IMV_SOLICITACAO_SADT | NUMBER | N | CODIGO SEQUENCIA DA INTEGRAC?O |
| 2 | TP_FLUXO | VARCHAR2 | N |  |
| 3 | TP_STATUS | VARCHAR2 | N | IDENTIFICA O STATUS DA INTERACAO |
| 4 | DS_ERRO | VARCHAR2 | Y | DESCRICAO DO ERRO, CASO O CAMPO TP_INTEGRACAO SEJA IGUAL A E |
| 5 | DT_GERADO | DATE | N | DATA EM QUE O REGISTRO FOI DISPONIBILIZADO NA TABELA DE INTEGRACAO |
| 6 | DT_PROCESSADO | DATE | Y | DATA EM QUE OCORREU A INTEGRACAO DO REGISTRO COM OUTRO SISTEMA |
| 7 | TP_MOVIMENTO | VARCHAR2 | N | IDENTIFICA O TIPO DO MOMENTO: I-INCLUSAO, A-ALTERACAO E E-EXCLUSO |
| 8 | TP_REGISTRO | VARCHAR2 | N | TIPO DO REGISTRO |
| 9 | CD_MULTI_EMPRESA | NUMBER | N | CODIGO DA EMPRESA. USADO PARA AMBINETES MULTI-EMPRESA. SENAO HOUVER, PREENCHER COM 1 |
| 10 | CD_MULTI_EMPRESA_INTEGRA | VARCHAR2 | Y |  |
| 11 | CD_REGISTRO_PRINCIPAL | NUMBER | Y |  |
| 12 | CD_REGISTRO_PAI | NUMBER | Y |  |
| 13 | CD_PEDIDO | NUMBER | Y | CODIGO DO PEDIDO |
| 14 | TP_PEDIDO | VARCHAR2 | Y | TIPO DO PEDIDO |
| 15 | DT_PEDIDO | DATE | Y | DATA DO PEDIDO |
| 16 | HR_PEDIDO | DATE | Y | HORA DO PEDIDO |
| 17 | TP_SOLICITACAO | VARCHAR2 | Y | TIPO DA SOLICITAC?O |
| 18 | DS_OBSERVACAO | VARCHAR2 | Y | OBSERVAC?ES DA SOLICITAC?O |
| 19 | CD_PRESTADOR_SOLICITANTE | NUMBER | Y | CODIGO DO PRESTADOR SOLICITANTE |
| 20 | CD_PRESTADOR_SOLIC_INTEGRA | VARCHAR2 | Y | CODIGO DO PRESTADOR SOLICITANTE, CASO O PRESTADOR SEJA DE INTEGRAC?O |
| 21 | NM_PRESTADOR_SOLICITANTE | VARCHAR2 | Y | NOME DO PRESTADOR SOLICITANTE |
| 22 | NR_CONSELHO_SOLICITANTE | VARCHAR2 | Y | NUMERO DO CONSELHO DO PRESTADOR SOLICITANTE |
| 23 | TP_CONSELHO_SOLICITANTE | VARCHAR2 | Y | TIPO DO CONSELHO DO PRESTADOR SOLICITANTE |
| 24 | CD_SETOR_SOLICITANTE | NUMBER | Y | CODIGO DO SETOR SOLCIITANTE |
| 25 | CD_SETOR_SOLIC_INTEGRA | VARCHAR2 | Y | CODIGO DO SETOR SOLICITANTE, CASO O SETOR SEJA DE UMA INTEGRAC?O |
| 26 | NM_SETOR_SOLICITANTE | VARCHAR2 | Y | NOME DO SETOR SOLICITANTE |
| 27 | NR_CONTROLE | NUMBER | Y | NUMERO DE CONTROLE, INTERNO, DO SETOR EXECUTANTE |
| 28 | DS_LOCAL_EXAME | VARCHAR2 | Y | IDENTIFICA ONDE SERA REALIZADO O EXAME |
| 29 | CD_CONVENIO | NUMBER | Y | CODIGO DO CONVENIO |
| 30 | CD_CONVENIO_INTEGRA | VARCHAR2 | Y | CODIGO DO CONVENIO NO SISTEMA DESTINO |
| 31 | NM_CONVENIO | VARCHAR2 | Y | NOME DO CONVENIO |
| 32 | CD_PLANO | NUMBER | Y | CODIGO DO PLANO DE SAUDE |
| 33 | CD_PLANO_INTEGRA | VARCHAR2 | Y | CODIGO DO PLANO DE SAUDE NO OUTRO SISTEMA |
| 34 | DS_PLANO | VARCHAR2 | Y | DESCRIC?O DO PLANO DE SAUDE |
| 35 | NR_CARTEIRA | VARCHAR2 | Y | NUMERO DA CARTEIRA DO PACIENTE |
| 36 | DT_VALIDADE_CARTEIRA | DATE | Y | DATA DE VALIDADE DA CARTEIRA DO PACIENTE |
| 37 | NR_GUIA | VARCHAR2 | Y | NUMERO DA GUIA |
| 38 | DT_VALIDADE_GUIA | DATE | Y | DATA DE VALIDADE DA GUIA DE AUTORIZAC?O |
| 39 | CD_SENHA | VARCHAR2 | Y | SENHA DA GUIA |
| 40 | CD_PACIENTE | NUMBER | Y | CODIGO DE IDENTIFICAC?O DO PACIENTE (PRONTUARIO) |
| 41 | CD_PACIENTE_INTEGRA | VARCHAR2 | Y | CODIGO DO PACIENTE NO OUTRO SISTEMA |
| 42 | CD_ATENDIMENTO | NUMBER | Y | CODIGO DO ATENDIMENTO DO PACIENTE |
| 43 | NM_PACIENTE | VARCHAR2 | Y | NOME DO PACIENTE |
| 44 | DT_NASCIMENTO | DATE | Y | DATA DE NASCIMENTO DO PACIENTE |
| 45 | NR_PESO | NUMBER | Y | PESO DO PACIENTE |
| 46 | NR_ALTURA | NUMBER | Y | ALTURA DO PACIENTE |
| 47 | TP_SEXO | VARCHAR2 | Y |  |
| 48 | CD_LEITO | NUMBER | Y | CODIGO DO LEITO |
| 49 | DS_LEITO | VARCHAR2 | Y | DESCRIC?O DO LEITO |
| 50 | DS_LEITO_RESUMIDO | VARCHAR2 | Y | DESCRIC?O RESUMIDA DO LEITO |
| 51 | DS_ENFERMARIA | VARCHAR2 | Y | DESCRIC?O DA ENFERMARIA ONDE SE ENCONTRA O PACIENTE |
| 52 | CD_ITEM_PEDIDO | NUMBER | Y | CODIGO (UNICO) DO ITEM SOLICITADO |
| 53 | CD_EXAME | NUMBER | Y | CODIGO DO EXAME SOLICITADO |
| 54 | CD_EXAME_INTEGRA | VARCHAR2 | Y | CODIGO DO EXAME SOLICITADO, CASO O EXAME SEJA DE UMA INTEGRAC?O |
| 55 | DS_EXAME | VARCHAR2 | Y | DESCRIC?O DO EXAME SOLICITADO |
| 56 | CD_EXAME_FATURAMENTO | VARCHAR2 | Y | CODIGO DE FATURAMENTO DO EXAME, SERA SEMPRE REFERENTE AO CONVENIO DO ATENDIMENTO |
| 57 | DS_EXAME_FATURAMENTO | VARCHAR2 | Y | DESCRIC?O DE FATURAMENTO DO EXAME SOLICITADO |
| 58 | DS_REGIAO | VARCHAR2 | Y | TOPOGRAFIA HUMANA ONDE SERA REALIZADO O EXAME |
| 59 | DT_ENTREGA | DATE | Y | DTA DE ENTREGA DO RESULTADO DO EXAME |
| 60 | CD_LABORATORIO | NUMBER | Y | CODIGO DO LABORATORIO QUE REALIZARA O EXAME |
| 61 | CD_LABORATORIO_INTEGRA | VARCHAR2 | Y | CODIGO DO LABORATORIO QUE REALIZARA O EXAME, CASO O LABORATORIO SEJA PROVENIENTE DE UMA INTEGRAC?O |
| 62 | DS_LABORATORIO | VARCHAR2 | Y | DESCRIC?O DO LABORATORIO QUE REALIZARA O EXAME |
| 63 | CD_SETOR_EXECUTANTE | NUMBER | Y | CODIGO DO SETOR (CENTRO DE CUSTOS) QUE REALIZARA O EXAME |
| 64 | CD_SETOR_EXECUTANTE_INTEGRA | VARCHAR2 | Y | CODIGO DO SETOR (CENTRO DE CUSTOS) QUE REALIZARA O EXAME, CASO SEJA PROVENIENTE DE UMA INTEGRAC?O |
| 65 | NM_SETOR_EXECUTANTE | VARCHAR2 | Y | NOME DO SETOR (CENTRO DE CUSTOS) QUE REALIZARA O EXAME |
| 66 | CD_MODALIDADE_EXAME | NUMBER | Y | CODIGO DA MODALIDADE DO EXAME (PADR?O DICOM) |
| 67 | DS_ESTACAO_DICOM | VARCHAR2 | Y | MAQUINA QUE REALZIARA O EXAME |
| 68 | DS_SIGLA_MODALIDADE_EXAME | VARCHAR2 | Y |  |
| 69 | SN_IMAGEM_DISPONIVEL | VARCHAR2 | Y |  |
| 70 | DT_IMAGEM_DISPONIVEL | DATE | Y |  |
| 71 | CD_PRESTADOR_TECNICO | NUMBER | Y | CODIGO DO TECNICO QUE REALIZARA O EXAME |
| 72 | CD_PRESTADOR_TECNICO_INTEGRA | VARCHAR2 | Y | CODIGO DO TECNICO QUE REALIZARA O EXAME, CASO SEJA PROVENIENTE DE UMA INTEGRAC?O |
| 73 | NM_PRESTADOR_TECNICO | VARCHAR2 | Y | NOME DO PRESTADOR TECNICO QUE REALIZARA O EXAME |
| 74 | NR_CONSELHO_TECNICO | VARCHAR2 | Y | NUMERO DO CONSELHO DO TECNICO QUE REALIZARA O EXAME |
| 75 | TP_CONSELHO_TECNICO | VARCHAR2 | Y | TIPO DO CONSELHO DO TECNICO QUE REALIZARA O EXAME |
| 76 | CD_INTEGRA_SEQUENCE_EXTERNA | NUMBER | Y | CODIGO IDENTIFICADOR DE UM PROCESSO NO SISTEMA EXTERNO (INTEGRAC?O) QUE ESTA ASSOCIADO A ESTE REG... |
| 77 | CD_USUARIO_DIGITADOR | VARCHAR2 | Y | IDENTIFICA O USUARIO DIGITADOR DO RESULTADO DO EXAME |
| 78 | CD_PRESTADOR_EXEC | NUMBER | Y | CODIGO DO PRESTADOR QUE REALIZOU O EXAME |
| 79 | DT_REALIZACAO | DATE | Y | DATA DA REALIZAC?O DO EXAME |
| 80 | CD_USUARIO_PEDIDO | VARCHAR2 | Y | CODIGO DO USUARIO QUE DIGITOU A SOLICITAC?O DE PEDIDO DE EXAMES |
| 81 | DS_ORIENTACAO_EXAME | VARCHAR2 | Y | ORIENTAC?O CADASTRADA PARA O EXAME SOLICITADO |
| 82 | CD_LAUDO | NUMBER | Y | CODIGO DO LAUDO DO EXAME |
| 83 | DS_LAUDO | BLOB | Y | DESCRICAO DO LAUDO |
| 84 | DT_AGENDAMENTO | DATE | Y | DATA DO AGENDAMENTO DA SOLICITAC?O |
| 85 | HR_AGENDAMENTO | DATE | Y | HORA DO AGENDAMENTO DA SOLICITAC?O |
| 86 | DT_DURACAO | DATE | Y | DURACAO DA SOLICITAC?O |
| 87 | DS_LOCAL_REALIZACAO | VARCHAR2 | Y | DESCRIC?O DO LOCAL DA REALIZAC?O |
| 88 | CD_TIPO_ENTREGA | VARCHAR2 | Y | CODIGO DO TIPO DA ENTREGA |
| 89 | DS_TIPO_ENTREGA | VARCHAR2 | Y | DESCRIC?O DA ENTREGA |
| 90 | SN_PENDENCIA_COLETA | VARCHAR2 | Y | SN SE COLETA ESTA PENDENTE |
| 91 | CD_COLETA_MATERIAL | NUMBER | Y | CODIGO DA SOLICITAC?O DE COLETA. |
| 92 | CD_AMOSTRA | NUMBER | Y | CODIGO SEQUENCIAL DA AMOSTRA. |
| 93 | CD_BANCADA | NUMBER | Y | CODIGO DA BANCADA. |
| 94 | TP_SITUACAO | VARCHAR2 | Y | SITUAC?O DA AMOSTRA.A = ATIVA; C = CANCELADA; D = DISTRIBUIDA |
| 95 | SN_COLETA | VARCHAR2 | Y | FLAG QUE IDENTIFICA SE O MATERIAL DA AMOSTRA JA FOI COLETADA. |
| 96 | DT_COLETA | DATE | Y | DATA DA COLETA A SER REALIZADA |
| 97 | NR_ORDEM_COLETA | NUMBER | Y | NUMERO DE ORDEM DA AMOSTRA. |
| 98 | CD_AMOSTRA_PAI | NUMBER | Y | CODIGO DA AMOSTRA PAI, PARA TUBOS COLETIVOS. |
| 99 | CD_TUBO_COLETA | NUMBER | Y | CODIGO DO TUBO DE COLETA. |
| 100 | CD_MATERIAL | NUMBER | Y | CODIGO DO MATERIAL COLHIDO. |
| 101 | DT_RECOLETA | DATE | Y | DATA EM QUE FOI SOLICITADA A RECOLETA DA AMOSTRA |
| 102 | NR_ETIQUETA_EXTERNA | VARCHAR2 | Y | NUMERO DA ETIQUETA DE COLETA EXTERNA |
| 103 | SN_COLETA_SETOR | VARCHAR2 | Y | FLAG QUE INDICA SE A COLETA FOI COLHIDA NO SETOR SOLICITANTE. |
| 104 | DT_COLETA_SETOR | DATE | Y | DATA EM QUE A AMOSTRA TEVE SUA COLETA CONFIRMADA NO SETOR SOLICITANTE. |
| 105 | HR_COLETA_SETOR | DATE | Y | HORA EM QUE A AMOSTRA TEVE SUA COLETA CONFIRMADA NO SETOR SOLICITANTE. |
| 106 | DT_COLETA_PEDIDO | DATE | Y | DATA DA COLETA A SER REALIZADA |
| 107 | HR_COLETA_PEDIDO | DATE | Y | HORA DA COLETA A SER REALIZADA |
| 108 | CD_ATENDIMENTO_INTEGRA | VARCHAR2 | Y | CODIGO DO ATENDIMENTO (DE-PARA) |
| 109 | CD_PEDIDO_INTEGRA | VARCHAR2 | Y | CODIGO DO PEDIDO DE EXAME (DE-PARA) |
| 110 | CD_ITEM_PEDIDO_INTEGRA | VARCHAR2 | Y | CODIGO DO ITEM DE EXAME (DE-PARA) |
| 111 | SN_ESPERA_COLETA | VARCHAR2 | Y | INDICADOR DE ESPERA DE COLETA |
| 112 | DT_EXAME | DATE | Y | DATA DE REALIZAC?O DO EXAME |
| 113 | CD_POSTO_COLETA | NUMBER | Y | CODIGO DE IDENTIFICAC?O DO POSTO DE COLETA |
| 114 | CD_POSTO_COLETA_INTEGRA | VARCHAR2 | Y | CODIGO DE IDENTIFICAC?O DO POSTO DE COLETA (DE-PARA) |
| 115 | DS_POSTO_COLETA | VARCHAR2 | Y | DESCRIC?O DO POSTO DE COLETA |
| 116 | CD_LAUDO_INTEGRA | VARCHAR2 | Y | CODIGO DO LAUDO DE EXAME (DE-PARA) |
| 117 | VL_PESO | NUMBER | Y | PESO |
| 118 | VL_ALTURA | NUMBER | Y | ALTURA |
| 119 | VL_AORTA | NUMBER | Y | AORTA |
| 120 | VL_ATRIO_ESQUERDO | NUMBER | Y | ATRIO_ESQUERDO |
| 121 | VL_VENTRICULO_DIREITO | NUMBER | Y | VENTRICULO_DIREITO |
| 122 | VL_SEPTO_INTERVENTRICULAR | NUMBER | Y | SEPTO_INTERVENTRICULAR |
| 123 | VL_PAREDE_POSTERIOR | NUMBER | Y | PAREDE_POSTERIOR |
| 124 | VL_DIAMETRO_DIASTOLICO | NUMBER | Y | DIAMETRO_DIASTOLICO |
| 125 | VL_DIAMETRO_SISTOLICO | NUMBER | Y | DIAMETRO_SISTOLICO |
| 126 | VL_ATRIO_ESQUERDO_AORTA | NUMBER | Y | ATRIO_AORTA |
| 127 | VL_SEPTO_PAREDE | NUMBER | Y | SEPTO_PAREDE |
| 128 | VL_DELTA_FRAC_ENCURT | NUMBER | Y | DELTA_FRAC_ENCURT |
| 129 | VL_FRACAO | NUMBER | Y | FRACAO |
| 130 | VL_MASSA | NUMBER | Y | MASSA |
| 131 | VL_IND_MASSA | NUMBER | Y | INDICE DE MASSA |
| 132 | VL_RELACAO_VM | NUMBER | Y | RELACAO VM |
| 133 | VL_SUPERFICIE_CORPOREA | NUMBER | Y | SUPERFICIE CORPOREA |
| 134 | VL_FATOR_DIASTOLICO | NUMBER | Y | FATOR DIASTOLICO |
| 135 | VL_FATOR_SISTOLICO | NUMBER | Y | FATOR SISTOLICO |
| 136 | DS_LAUDO_ECO | LONG | Y | CODIGO DE CONTROLE PARA SABER QUAL O REGISTRO PAI DO REGISTRO ATUAL |
| 137 | CD_GUIA | NUMBER | Y | CODIGO DA GUIA DO PEDIDO |
| 138 | CD_INTEGRA_PAI | NUMBER | Y | DESCRIC?O DO LAUDO DA ECOCARDIOGRAMA |
| 139 | NR_CNS_PRESTADOR | VARCHAR2 | Y | NUMERO CNS PRESTADOR |
| 140 | CD_PRE_MED | VARCHAR2 | Y |  |
| 141 | SN_REALIZADO | VARCHAR2 | Y | EXAME REALIZADO |
| 142 | DS_MOTIVO | VARCHAR2 | Y | MOTIVO DE EXCLUS?O DO EXAME |
| 143 | DS_MATERIAL | VARCHAR2 | Y | Descric?o do material |
| 144 | CD_IMV_LOG_REQUISICAO | NUMBER | Y | Codigo da mensagem que esta na mvintegra.inv_log_requisicao que originou este registro. |
| 145 | NM_MNEMONICO | VARCHAR2 | Y | Nome do mnemonico do exame |
| 146 | DS_MODALIDADE_EXAME | VARCHAR2 | Y | Descric?o da modalidade do exame |
| 147 | SN_ATIVO | VARCHAR2 | Y | Indica se o exame esta ativo |
| 148 | CD_PROCEDIMENTO_SIA | VARCHAR2 | Y | Codigo SIA do exame |
| 149 | CD_PROCEDIMENTO_SIH | VARCHAR2 | Y | Codigo SIH do exame |
| 150 | DS_ORIENTACAO | VARCHAR2 | Y | Orientac?o do exame |
| 151 | CD_PERGUNTA | VARCHAR2 | Y | codigo da pergunta |
| 152 | DS_PERGUNTA | VARCHAR2 | Y | descric?o da pergunta |
| 153 | CD_RESPOSTA | VARCHAR2 | Y | codigo da resposta |
| 154 | DS_RESPOSTA | VARCHAR2 | Y | descric?o da resposta |
| 155 | SN_MENSAGEM_ATIVA | VARCHAR2 | Y | Indica se a resposta esta ativa |
| 156 | SN_IMPEDE_REALIZACAO | VARCHAR2 | Y | indica se a resposta impede a realizacao |
| 157 | SN_CULTURA | VARCHAR2 | Y | informa se o exame e uma cultura |
| 158 | CD_SISTEMA_ORIGEM | VARCHAR2 | Y | Coluna que vai conter o codigo do sistema origem da mensagem, usada na entrada de mensagens |
| 159 | CD_ACCESSION_NUMBER_INTEGRA | VARCHAR2 | Y | Coluna que contera o Accession Number recebido pela integrac?o. Esta coluna sera vista pelo PEP p... |
| 160 | CD_AREA_ENTREGA | NUMBER | Y | Codigo da area (regi?o) onde sera realizada a entrega (dados demograficos) |
| 161 | CD_ACESSION_NUMBER | VARCHAR2 | Y | Guarda o codigo recebido do sistema terceiro para visualizar as imagens de exame pelo PSDI |
| 162 | CD_MATERIAL_INTEGRA | VARCHAR2 | Y | Codigo material (DE-PARA) |
| 163 | QT_INSUMO | NUMBER | Y | Quantidade do insumo |
| 164 | CD_ITEM_PRESCRICAO | NUMBER | Y |  |
| 165 | TP_ATENDIMENTO | VARCHAR2 | Y |  |
| 166 | DS_QUARTO | VARCHAR2 | Y |  |
| 167 | DS_AREA_COLETA | VARCHAR2 | Y |  |
| 168 | DS_LOCAL_PADRAO | VARCHAR2 | Y |  |
| 169 | CD_LOCAL_PADRAO | NUMBER | Y |  |
| 170 | SN_COBRAR_TAXA | VARCHAR2 | Y |  |
| 171 | NR_FAX | VARCHAR2 | Y |  |
| 172 | NR_CELULAR | VARCHAR2 | Y |  |
| 173 | DS_LOGRADOURO | VARCHAR2 | Y |  |
| 174 | VL_SERVICO | NUMBER | Y |  |
| 175 | DT_SERVICO | DATE | Y |  |
| 176 | TP_SERVICO | VARCHAR2 | Y |  |
| 177 | CD_AREA_COLETA | NUMBER | Y |  |
| 178 | DS_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 179 | CD_SALA | NUMBER | Y |  |
| 180 | CD_UF_PRESTADOR | VARCHAR2 | Y |  |
| 181 | CD_ORI_ATE | NUMBER | Y |  |
| 182 | CD_ESPECIALIDE_PRESTADOR | NUMBER | Y |  |
| 183 | CD_UF_CONSELHO_SOLICITANTE | VARCHAR2 | Y |  |
| 184 | NM_MAE_PACIENTE | VARCHAR2 | Y |  |
| 185 | DS_CID | VARCHAR2 | Y |  |
| 186 | CD_CID | VARCHAR2 | Y |  |
| 187 | CD_VERSAO_ATUAL | NUMBER | Y |  |
| 188 | CD_RECURSO | NUMBER | Y |  |
| 189 | DS_SETOR_HL7 | VARCHAR2 | Y |  |
| 190 | NR_TELEFONE_PRESTADOR | VARCHAR2 | Y |  |
| 191 | DS_EMAIL_PRESTADOR | VARCHAR2 | Y |  |
| 192 | NR_CNS_PACIENTE | VARCHAR2 | Y |  |
| 193 | NR_CHAMADA_PAINEL | VARCHAR2 | Y |  |
| 194 | CD_SETOR | NUMBER | Y |  |
| 195 | UF_CONSELHO_SOLICITANTE | VARCHAR2 | Y |  |
| 196 | CD_PAIS | NUMBER | Y |  |
| 197 | CD_PAIS_NATURALIDADE_PACIENTE | NUMBER | Y |  |
| 198 | CD_NATURALIDADE_PACIENTE | NUMBER | Y |  |
| 199 | NR_ORDEM_COLETA_INTEGRA | VARCHAR2 | Y |  |
| 200 | CD_AMOSTRA_INTEGRA | VARCHAR2 | Y |  |
| 201 | CD_AMOSTRA_PAI_INTEGRA | VARCHAR2 | Y |  |
| 202 | DT_ANALISE | DATE | Y |  |
| 203 | CD_FILIAL_INTEGRA | DATE | Y |  |
| 204 | DT_INTEGRACAO_MV2000 | DATE | Y |  |
| 205 | DT_INTEGRACAO | DATE | Y |  |
| 206 | TP_GUIA | VARCHAR2 | Y |  |
| 207 | DT_GERACAO_GUIA | DATE | Y |  |
| 208 | DT_SOLICITACAO_GUIA | DATE | Y |  |
| 209 | DS_OBSERVACAO_GUIA | VARCHAR2 | Y |  |
| 210 | NM_PAIS | VARCHAR2 | Y |  |
| 211 | TP_CARATER_INTERNACAO | VARCHAR2 | Y |  |
| 212 | NM_PAIS_NATURALIDADE_PACIENTE | VARCHAR2 | Y |  |
| 213 | DT_ATENDIMENTO | DATE | Y |  |
| 214 | HR_ATENDIMENTO | DATE | Y |  |
| 215 | NM_NATURALIDADE_PACIENTE | VARCHAR2 | Y |  |
| 216 | DS_TIPO_RISCO | VARCHAR2 | Y |  |
| 217 | CD_ORIGEM_ATENDIMENTO | NUMBER | Y |  |
| 218 | NR_TELEFONE | VARCHAR2 | Y |  |
| 219 | NR_CEP | VARCHAR2 | Y |  |
| 220 | CD_UF | VARCHAR2 | Y |  |
| 221 | NR_LOGRADOURO | VARCHAR2 | Y |  |
| 222 | NM_CIDADE | VARCHAR2 | Y |  |
| 223 | CD_CIDADE | NUMBER | Y |  |
| 224 | NM_BAIRRO | VARCHAR2 | Y |  |
| 225 | CD_LOC_PROCED | NUMBER | Y |  |
| 226 | NR_CPF_PACIENTE | VARCHAR2 | Y |  |
| 227 | NR_ENDERECO | NUMBER | Y |  |
| 228 | TP_COR | VARCHAR2 | Y |  |
| 229 | SN_NUTRICAO | VARCHAR2 | Y |  |
| 230 | DS_EMAIL | VARCHAR2 | Y |  |
| 231 | DS_TRANSFUSAO | VARCHAR2 | Y |  |
| 232 | QT_GEMELARIDADE | NUMBER | Y |  |
| 233 | QT_SEMANA | NUMBER | Y |  |
| 234 | DS_COMPLEMENTO | VARCHAR2 | Y |  |
| 235 | DS_ENDERECO | VARCHAR2 | Y |  |
| 236 | NM_SOCIAL_PACIENTE | VARCHAR2 | Y |  |
| 237 | NR_DDD_FONE | NUMBER | Y |  |
| 238 | NR_DDD_CELULAR | NUMBER | Y |  |
| 239 | NR_IDENTIDADE | VARCHAR2 | Y |  |

---

## MVINTEGRA.IMV_SOLICITACAO_SERVICO
> Tabela de integrac?o para as solicitac?es de servico

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IMV_SOLICITACAO_SERVICO | NUMBER | N | Codigo sequencial do registro da integrac?o |
| 2 | TP_FLUXO | VARCHAR2 | N | Tipo de fluxo do registro (e - entrada / s - saida) |
| 3 | TP_STATUS | VARCHAR2 | N | Status do registro (a - aguardando / e - erro / t - transmitido / p - em processamento) |
| 4 | DS_ERRO | VARCHAR2 | Y | Descric?o da mensagem de erro ocorrido no processamento da mensagem |
| 5 | DT_GERADO | DATE | N | Data de gerac?o do registro na tabela |
| 6 | DT_PROCESSADO | DATE | Y | Data de processamento do registro |
| 7 | TP_MOVIMENTO | VARCHAR2 | N | Tipo do movimento do registro (i - inclus?o / a - alterac?o / e - exclus?o) |
| 8 | TP_REGISTRO | VARCHAR2 | N | Identificac?o do tipo de registro existente: 001 ? dados gerais do setor |
| 9 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da multi-empresa |
| 10 | CD_MULTI_EMPRESA_INTEGRA | VARCHAR2 | Y | Codigo de-para da multi-empresa |
| 11 | CD_REGISTRO_PRINCIPAL | NUMBER | Y | Identificador de qual o registro principal da mensagem |
| 12 | CD_REGISTRO_PAI | NUMBER | Y | Identificador de hierarquia entre registros |
| 13 | CD_IMV_LOG_REQUISICAO | NUMBER | Y |  |
| 14 | CD_SISTEMA_ORIGEM | VARCHAR2 | Y |  |
| 15 | CD_OS | NUMBER | Y | Codigo do Servico |
| 16 | DT_PEDIDO | DATE | Y | Data do Pedido do Servico |
| 17 | DS_SERVICO | VARCHAR2 | Y | Descric?o do Servico |
| 18 | DS_OBSERVACAO | VARCHAR2 | Y | Observac?o do Servico |
| 19 | DT_EXECUCAO | DATE | Y | Data de Execuc?o |
| 20 | NM_SOLICITANTE | VARCHAR2 | Y | Nome do Solicitante |
| 21 | TP_SITUACAO | VARCHAR2 | Y | Tipo de Situac?o |
| 22 | CD_SETOR | NUMBER | Y | Codigo do Setor |
| 23 | CD_SETOR_INTEGRA | VARCHAR2 | Y | Codigo do Setor (De-Para) |
| 24 | NM_SETOR | VARCHAR2 | Y | Nome do Setor |
| 25 | CD_TIPO_OS | NUMBER | Y | Tipo da Solicitac?o |
| 26 | DS_TIPO_OS | VARCHAR2 | Y | Descric?o do Tipo de Solicitac?o |
| 27 | NM_USUARIO | VARCHAR2 | Y | Nome do Usuario |
| 28 | DT_ULTIMA_ATUALIZACAO | DATE | Y | Data da Ultima Atualizac?o |
| 29 | CD_LOCALIDADE | NUMBER | Y | Codigo da Localidade |
| 30 | DS_LOCALIDADE | VARCHAR2 | Y | Descric?o da Localidade |
| 31 | CD_BEM | NUMBER | Y | Codigo do Bem |
| 32 | DS_BEM | VARCHAR2 | Y | Descric?o do Bem |
| 33 | CD_OFICINA | NUMBER | Y | Codigo da Oficina |
| 34 | DS_OFICINA | VARCHAR2 | Y | Descric?o da Oficina |

---

## MVINTEGRA.IMV_TARIFADOR
> Tabela de integrac?o do tarifador de ligac?es

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IMV_TARIFADOR | NUMBER | N | Codigo sequencial do registro na integrac?o |
| 2 | TP_FLUXO | VARCHAR2 | N | Tipo de fluxo do registro (E - Entrada / S - Saida) |
| 3 | TP_STATUS | VARCHAR2 | N | Status do registro (A - Aguardando / E - Erro / T - Transmitido / P - Em processamento) |
| 4 | DS_ERRO | VARCHAR2 | Y | Descric?o da mensagem de erro ocorrido no processamento da mensagem |
| 5 | DT_GERADO | DATE | N | Data de gerac?o do registro na tabela |
| 6 | DT_PROCESSADO | DATE | Y | Data de processamento do registro |
| 7 | TP_MOVIMENTO | VARCHAR2 | N | Tipo do movimento do registro (I - Inclus?o / A - Alterac?o / E - Exclus?o) |
| 8 | TP_REGISTRO | VARCHAR2 | N | Identificac?o do tipo de registro existente: 001 ? Dados gerais da conta a pagar/receber / 002 ? ... |
| 9 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da multi-empresa |
| 10 | CD_MULTI_EMPRESA_INTEGRA | VARCHAR2 | Y | Codigo de-para da multi-empresa |
| 11 | CD_REGISTRO_PRINCIPAL | NUMBER | Y | Codigo identificador do registro principal da mensagem |
| 12 | CD_REGISTRO_PAI | NUMBER | Y | Codigo identificador do registro pai da mensagem |
| 13 | CD_LEITO | NUMBER | Y | Codigo do leito |
| 14 | CD_LEITO_INTEGRA | VARCHAR2 | Y | Codigo do leito de compatibilidade entre sistema (de-para) |
| 15 | DS_LEITO | VARCHAR2 | Y | Descric?o do leito |
| 16 | DS_LEITO_RESUMIDO | VARCHAR2 | Y | Descric?o resumida do leito |
| 17 | NR_RAMAL | VARCHAR2 | Y | Ramal do leito |
| 18 | CD_TIPO_LIGACAO | NUMBER | Y | Codigo do tipo de ligac?o |
| 19 | CD_TIPO_LIGACAO_INTEGRA | VARCHAR2 | Y | Codigo do tipo de ligac?o (de-para) |
| 20 | DS_TIPO_LIGACAO | VARCHAR2 | Y | Descric?o do tipo de ligac?o |
| 21 | DH_LIGACAO | DATE | Y | Data e hora da ligac?o |
| 22 | QT_LIGACAO_MINUTO | NUMBER | Y | Quantidade de minutos |
| 23 | QT_LIGACAO_SEGUNDO | NUMBER | Y | Quantidade de segundos |
| 24 | NR_DDD | VARCHAR2 | Y | Numero do DDD utilizado |
| 25 | NR_DDI | VARCHAR2 | Y | Numero do DDI utilizado |
| 26 | NR_TELEFONE | VARCHAR2 | Y | Numero do telefone |
| 27 | VL_LIGACAO | NUMBER | Y | Valor da ligac?o |
| 28 | CD_SISTEMA_ORIGEM | VARCHAR2 | Y | Coluna que vai conter o codigo do sistema origem da mensagem, usada na entrada de mensagens |
| 29 | CD_IMV_LOG_REQUISICAO | NUMBER | Y | Codigo da mensagem que esta na mvintegra.inv_log_requisicao que originou este registro. |

---

## MVINTEGRA.IMV_UNIFICA_PACIENTE
> Tabela para controlar integrac?es de unificac?o do cadastro de paciente

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IMV_UNIFICA_PACIENTE | NUMBER | N | Chave primaria da tabela |
| 2 | TP_FLUXO | VARCHAR2 | N | Identificador do fluxo da informac?o (S - Saida, E - Entrada) |
| 3 | TP_STATUS | VARCHAR2 | N | Identificac?o da situac?o atual do registro |
| 4 | DS_ERRO | VARCHAR2 | Y | Descric?o do erro quando ocorrer |
| 5 | DT_GERADO | DATE | N | Data do registro gerado na integrac?o |
| 6 | DT_PROCESSADO | DATE | Y | Data em que o registro foi integrado |
| 7 | TP_MOVIMENTO | VARCHAR2 | N | Tipo do movimento |
| 8 | TP_REGISTRO | VARCHAR2 | N | Tipo do registro da integrac?o |
| 9 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da empresa |
| 10 | CD_MULTI_EMPRESA_INTEGRA | VARCHAR2 | Y | Codigo de-para da empresa |
| 11 | CD_REGISTRO_PRINCIPAL | NUMBER | Y | Identificador do registro principal da mensagem |
| 12 | CD_REGISTRO_PAI | NUMBER | Y | Identificador do registro pai da mensagem |
| 13 | CD_LOG_TRANS | NUMBER | Y | Codigo do log de transferencia |
| 14 | DT_LOG_TRANS | DATE | Y | Data do log de transferencia |
| 15 | HR_LOG_TRANS | DATE | Y | Hora do log de transferencia |
| 16 | NM_USUARIO_LOG | VARCHAR2 | Y | Nome do usuario do log |
| 17 | CD_ATENDIMENTO_OLD | NUMBER | Y | codigo do atendimento |
| 18 | CD_PACIENTE_OLD | NUMBER | Y | codigo do paciente |
| 19 | CD_PACIENTE_NEW | NUMBER | Y | novo codigo do paciente |
| 20 | DS_MOTIVO | VARCHAR2 | Y | motivo da unificac?o |
| 21 | DS_CONCLUIDA | VARCHAR2 | Y | descric?o de conclus?o |
| 22 | CD_SISTEMA_ORIGEM | VARCHAR2 | Y | Codigo do sistema de origem. |
| 23 | CD_IMV_LOG_REQUISICAO | NUMBER | Y | Codigo da mensagem que esta na mvintegra.inv_log_requisicao que originou este registro. |
| 24 | CD_PACIENTE | NUMBER | Y | Codigo do paciente. |

---

## MVINTEGRA.INTEGRA_BNEXO_BASE
> Tabela Base pertencente a integrac?o XML BIOnexo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ID | NUMBER | N | Codigo de identificac?o da tabela (PK) |
| 2 | CD_ID_PAI | NUMBER | Y | Codigo de identificac?o do registro pai (FK) com a tabela INTEGRA_BNEXO_BASE (CD_ID) |
| 3 | TP_SCHEMA | VARCHAR2 | Y | Tipo do SCHEMA XML que o registro se refere |
| 4 | CD_ID_MENSAGEM_ORIGEM | NUMBER | Y | Mensagem que originou o registro |

---

## MVINTEGRA.INTEGRA_BNEXO_CONF
> Tabela de Confirmac?o para compra - XML BIOnexo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ID | NUMBER | N | Codigo de identificac?o da tabela (PK) |
| 2 | CD_ID_PAI | NUMBER | Y | Codigo de identificac?o do registro pai (FK) com a tabela INTEGRA_BNEXO_BASE (CD_ID) |
| 3 | CD_CONTROLE | VARCHAR2 | Y | Codigo de controle do BIOnexo para confirmac?o de compra |
| 4 | CD_LAYOUT | VARCHAR2 | Y | Codigo do layout utilizado |
| 5 | DS_LAYOUT | VARCHAR2 | Y | Descric?o do layout utilizado |

---

## MVINTEGRA.INTEGRA_BNEXO_CONF_IT
> Tabela de Item da confirmac?o de compra - XML BIOnexo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ID | NUMBER | N | Codigo de identificac?o da tabela (PK) |
| 2 | CD_ID_PAI | NUMBER | Y | Codigo de identificac?o do registro pai (FK) com a tabela INTEGRA_BNEXO_CONF (CD_ID) |
| 3 | NR_CNPJ_FORNECEDOR | VARCHAR2 | Y | CNPJ do Fornecedor |
| 4 | CD_ARTIGO | VARCHAR2 | Y | Identificador na Bionexo do item a confirmar enviado no download |
| 5 | CD_PRODUTO | VARCHAR2 | Y | Codigo do produto no sistema MV2000 |
| 6 | QT_PRODUTO | VARCHAR2 | Y | Quantidade do produto |
| 7 | DS_OBSERVACAO | VARCHAR2 | Y | Observac?o para enviar ao fornecedor |

---

## MVINTEGRA.INTEGRA_BNEXO_COTA
> Tabela de Cotac?es - XML BIOnexo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ID | NUMBER | N | Codigo de identificac?o da tabela (PK) |
| 2 | CD_ID_PAI | NUMBER | Y | Codigo de identificac?o do registro pai (FK) com a tabela INTEGRA_BNEXO_BASE (CD_ID) |
| 3 | CD_LAYOUT | VARCHAR2 | Y | Codigo do layout utilizado |
| 4 | DS_LAYOUT | VARCHAR2 | Y | Descric?o do layout utilizado |

---

## MVINTEGRA.INTEGRA_BNEXO_COTA_CAB
> Tabela Base pertencente a integrac?o XML BIOnexo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ID | NUMBER | N | Codigo de identificac?o da tabela (PK) |
| 2 | CD_ID_PAI | NUMBER | Y | Codigo de identificac?o do registro pai (FK) com a tabela INTEGRA_BNEXO_COTA (CD_ID) |
| 3 | CD_SOL_COM | VARCHAR2 | Y | Codigo da Solicitac?o no sistema MV2000 |
| 4 | DS_TITULO | VARCHAR2 | Y | Titulo da Cotac?o |
| 5 | CD_FORMA_PAGAMENTO | VARCHAR2 | Y | Forma de pagamento solicitada pelo comprador |
| 6 | DT_VENCIMENTO | VARCHAR2 | Y | Data do vencimento da cotac?o |
| 7 | HR_VENCIMENTO | VARCHAR2 | Y | Hora do vencimento da cotac?o |
| 8 | DS_MOEDA | VARCHAR2 | Y | Moeda utilizada para cotac?o |
| 9 | DS_OBSERVACAO | VARCHAR2 | Y | Observac?o da cotac?o |

---

## MVINTEGRA.INTEGRA_BNEXO_COTA_CAB_CE
> Tabela de Campo Extra do cabecalho da cotac?o - XML BIOnexo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ID | NUMBER | N | Codigo de identificac?o da tabela (PK) |
| 2 | CD_ID_PAI | NUMBER | Y | Codigo de identificac?o do registro pai (FK) com a tabela INTEGRA_BNEXO_COTA_CAB (CD_ID) |
| 3 | DS_NOME | VARCHAR2 | Y | Descric?o do campo extra |
| 4 | DS_VALOR | VARCHAR2 | Y | Valor do campo extra |

---

## MVINTEGRA.INTEGRA_BNEXO_COTA_IT
> Tabela de Itens da cotac?o - XML BIOnexo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ID | NUMBER | N | Codigo de identificac?o da tabela (PK) |
| 2 | CD_ID_PAI | NUMBER | Y | Codigo de identificac?o do registro pai (FK) com a tabela INTEGRA_BNEXO_COTA (CD_ID) |
| 3 | CD_PRODUTO | VARCHAR2 | Y | Codigo do produto no sistema MV2000 |
| 4 | DS_PRODUTO | VARCHAR2 | Y | Descric?o do Item no cadastro enviado para Bionexo |
| 5 | QT_PRODUTO | VARCHAR2 | Y | Quantidade do produto |

---

## MVINTEGRA.INTEGRA_BNEXO_COTA_IT_CE
> Tabela de Campo Extra do item da cotac?o - XML BIOnexo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ID | NUMBER | N | Codigo de identificac?o da tabela (PK) |
| 2 | CD_ID_PAI | NUMBER | Y | Codigo de identificac?o do registro pai (FK) com a tabela INTEGRA_BNEXO_COTA_IT (CD_ID) |
| 3 | DS_NOME | VARCHAR2 | Y | Descric?o do campo extra |
| 4 | DS_VALOR | VARCHAR2 | Y | Valor do campo extra |

---

## MVINTEGRA.INTEGRA_BNEXO_COTA_IT_PE
> Tabela de Programac?o da Entrega do item da cotac?o - XML BIOnexo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ID | NUMBER | N | Codigo de identificac?o da tabela (PK) |
| 2 | CD_ID_PAI | NUMBER | Y | Codigo de identificac?o do registro pai (FK) com a tabela INTEGRA_BNEXO_COTA_IT (CD_ID) |
| 3 | DT_ENTREGA | VARCHAR2 | Y | Data de entrega da parcela |
| 4 | QT_ENTREGA | VARCHAR2 | Y | Quantidade do item na entrega da parcela |

---

## MVINTEGRA.INTEGRA_BNEXO_RESP
> Tabela de Respostas - XML BIOnexo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ID | NUMBER | N | Codigo de identificac?o da tabela (PK) |
| 2 | CD_ID_PAI | NUMBER | Y | Codigo de identificac?o do registro pai (FK) com a tabela INTEGRA_BNEXO_BASE (CD_ID) |
| 3 | CD_LAYOUT | VARCHAR2 | Y | Codigo do layout utilizado |
| 4 | DS_LAYOUT | VARCHAR2 | Y | Descric?o do layout utilizado |

---

## MVINTEGRA.INTEGRA_BNEXO_RESP_CAB
> Tabela de Cabecalho da resposta - XML BIOnexo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ID | NUMBER | N | Codigo de identificac?o da tabela (PK) |
| 2 | CD_ID_PAI | NUMBER | Y | Codigo de identificac?o do registro pai (FK) com a tabela INTEGRA_BNEXO_RESP (CD_ID) |
| 3 | CD_CONTROLE | VARCHAR2 | Y | Codigo de controle do BIOnexo |
| 4 | CD_SOL_COM | NUMBER | Y | Numero da solicitac?o dsta resposta no sistema MV2000 |
| 5 | DT_VENCIMENTO | VARCHAR2 | Y | Data do vencimento da cotac?o |
| 6 | HR_VENCIMENTO | VARCHAR2 | Y | Hora do vencimento da cotac?o |

---

## MVINTEGRA.INTEGRA_BNEXO_RESP_CAB_CE
> Tabela de Campo Extra do cabecalho da resposta - XML BIOnexo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ID | NUMBER | N | Codigo de identificac?o da tabela (PK) |
| 2 | CD_ID_PAI | NUMBER | Y | Codigo de identificac?o do registro pai (FK) com a tabela INTEGRA_BNEXO_RESP_CAB (CD_ID) |
| 3 | DS_NOME | VARCHAR2 | Y | Descric?o do campo extra |
| 4 | DS_VALOR | VARCHAR2 | Y | Valor do campo extra |

---

## MVINTEGRA.INTEGRA_BNEXO_RESP_FORN
> Tabela de Fornecedores da resposta - XML BIOnexo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ID | NUMBER | N | Codigo de identificac?o da tabela (PK) |
| 2 | CD_ID_PAI | NUMBER | Y | Codigo de identificac?o do registro pai (FK) com a tabela BIONEXO_RESPOSTA (CD_ID) |
| 3 | DS_RAZAO_SOCIAL | VARCHAR2 | Y | Raz?o Social do Fornecedor |
| 4 | NR_CNPJ | VARCHAR2 | Y | CNPJ do Fornecedor |
| 5 | VL_FATURAMENTO_MINIMO | VARCHAR2 | Y | Faturamento minimo solicitado pelo fornecedor |
| 6 | QT_PRAZO_ENTREGA | VARCHAR2 | Y | Dias de Prazo para entrega |
| 7 | DT_VALIDADE | VARCHAR2 | Y | Validade da proposta |
| 8 | CD_FORMA_PAGAMENTO | VARCHAR2 | Y | Forma de pagamento ofertada pelo fornecedor |
| 9 | DS_FRETE | VARCHAR2 | Y | Tipo de frete CIF ou FOB |

---

## MVINTEGRA.INTEGRA_BNEXO_RESP_IT
> Tabela de Itens da resposta - XML BIOnexo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ID | NUMBER | N | Codigo de identificac?o da tabela (PK) |
| 2 | CD_ID_PAI | NUMBER | Y | Codigo de identificac?o do registro pai (FK) com a tabela INTEGRA_BNEXO_RESP (CD_ID) |
| 3 | CD_ARTIGO | VARCHAR2 | Y | Identificador do item na Bionexo |
| 4 | CD_PRODUTO | VARCHAR2 | Y | Codigo do produto no MV2000 |
| 5 | QT_PRODUTO | VARCHAR2 | Y | Quantidade solicitada pela cotac?o |

---

## MVINTEGRA.INTEGRA_BNEXO_RESP_IT_CE
> Tabela de Campo Extra do item da resposta - XML BIOnexo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ID | NUMBER | N | Codigo de identificac?o da tabela (PK) |
| 2 | CD_ID_PAI | NUMBER | Y | Codigo de identificac?o do registro pai (FK) com a tabela INTEGRA_BNEXO_RESP_IT (CD_ID) |
| 3 | DS_NOME | VARCHAR2 | Y | Descric?o do campo extra |
| 4 | DS_VALOR | VARCHAR2 | Y | Valor do campo extra |

---

## MVINTEGRA.INTEGRA_BNEXO_RESP_IT_RS
> Tabela de Resposta do item da resposta - XML BIOnexo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ID | NUMBER | N | Codigo de identificac?o da tabela (PK) |
| 2 | CD_ID_PAI | NUMBER | Y | Codigo de identificac?o do registro pai (FK) com a tabela INTEGRA_BNEXO_RESP_IT (CD_ID) |
| 3 | NR_CNPJ | VARCHAR2 | Y | CNPJ do Fornecedor |
| 4 | NM_FABRICANTE | VARCHAR2 | Y | Fabricante do produto |
| 5 | DS_EMBALAGEM | VARCHAR2 | Y | Descric?o da embalagem do produto |
| 6 | VL_UNITARIO | VARCHAR2 | Y | Preco unitario ofertado pelo fornecedor |
| 7 | VL_TOTAL | VARCHAR2 | Y | Preco total ofertado pelo fornecedor |
| 8 | DS_COMENTARIO | VARCHAR2 | Y | Comentario feito pelo fornecedor |

---

## MVINTEGRA.INTEGRA_BNEXO_RESP_IT_RS_BKP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ID | NUMBER | Y |  |
| 2 | CD_ID_PAI | NUMBER | Y |  |
| 3 | NR_CNPJ | VARCHAR2 | Y |  |
| 4 | NM_FABRICANTE | VARCHAR2 | Y |  |
| 5 | DS_EMBALAGEM | VARCHAR2 | Y |  |
| 6 | VL_UNITARIO | VARCHAR2 | Y |  |
| 7 | VL_TOTAL | VARCHAR2 | Y |  |
| 8 | DS_COMENTARIO | VARCHAR2 | Y |  |

---

## MVINTEGRA.INTEGRA_CONTROLE_XML_COMPRAS
> Tabela para controle da gerac?o do XML

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Codigo de identificac?o do registro |
| 2 | ID_PAI | NUMBER | Y | Codigo de identificac?o do registro (pai) |
| 3 | TP_INTEGRACAO | VARCHAR2 | N | tipo de integrac?o |
| 4 | DS_ERRO | VARCHAR2 | Y | Mensagem de erro |
| 5 | DT_INTEGRACAO | DATE | N | Data em que o registro foi disponibilizado na integrac?o |
| 6 | DT_INTEGRACAO_MV2000 | DATE | Y | Data em que os registros foram processadas |
| 7 | TP_MOVIMENTO | VARCHAR2 | N | Tipo da movimentac?o |
| 8 | CD_FILIAL_INTEGRA | VARCHAR2 | N | Codigo da empresa (de-para) |
| 9 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da multi-empresa |
| 10 | TP_TRANSACAO | VARCHAR2 | Y |  |
| 11 | NM_XML | VARCHAR2 | Y |  |

---

## MVINTEGRA.INTEGRA_CRACHA
> Tabela de integrac?o do MV Portaria com a Catraca da Telematica

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INTEGRA_CRACHA | NUMBER | N | O codigo da integrac?o (pk) |
| 2 | TP_MOVIMENTO | VARCHAR2 | N | Tipo do movimento (I - Inclus?o, A - Alterac?o e E - Exclus?o) |
| 3 | TP_INTEGRACAO | VARCHAR2 | N | Identificac?o da situac?o atual do registro (A - Aguardando, T - Transmitido e E - Erro) |
| 4 | TP_REGISTRO | VARCHAR2 | N | Identificac?o do tipo de registro existente: 001 usado para o no principal do xml, 002 para filho... |
| 5 | CD_MULTI_EMPRESA | NUMBER | N | O codigo da multi-empresa onde foi realizada a integrac?o (fk) |
| 6 | TP_FLUXO | VARCHAR2 | N | Se a integrac?o e de entrada ou saida (E=Entrada, S=Saida) |
| 7 | DS_ERRO | VARCHAR2 | Y | A descric?o do erro, caso o tp_integracao seja igual a E |
| 8 | DT_INTEGRACAO | DATE | Y | Data/hora em que o registro foi inserido nesta tabela |
| 9 | DT_INTEGRACAO_MV2000 | DATE | Y | Data/hora em que o registro foi integrado pelo outro sistema, utilizado somente quando tp_fluxo = E |
| 10 | CD_FILIAL_INTEGRA | NUMBER | Y |  |
| 11 | CD_INTEGRA_PAI | NUMBER | Y |  |
| 12 | CD_CRACHA | NUMBER | N | O codigo/numero do cracha que esta sendo integrado |
| 13 | SN_ATIVO | VARCHAR2 | N | Se o cracha esta ativo |
| 14 | SN_EM_USO | VARCHAR2 | N | Se o cracha esta em uso (catraca liberada) |

---

## MVINTEGRA.INTEGRA_ENTRADA_AGENDAMENTO
> Tabela de Entrada de Agendamentos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INTEGRA_ENTRADA_AGENDAMENTO | NUMBER | N | Codigo sequencial do registro integrado |
| 2 | CD_INTEGRA_PAI | NUMBER | Y | Codigo sequencial do registro master |
| 3 | TP_INTEGRACAO | VARCHAR2 | N | Identifica o status da interacao |
| 4 | DS_ERRO | VARCHAR2 | Y | Descricao do erro, caso o campo TP_INTEGRACAO seja igual a E |
| 5 | DT_INTEGRACAO | DATE | N | Data em que o registro foi disponibilizado na tabela de integracao |
| 6 | DT_INTEGRACAO_MV2000 | DATE | Y | Data em que ocorreu a integracao do registro com outro sistema |
| 7 | TP_MOVIMENTO | VARCHAR2 | N | Identifica o tipo do momento: I-Inclusao, A-Alteracao e E-Excluso |
| 8 | TP_REGISTRO | VARCHAR2 | N | Tipo do registro |
| 9 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da empresa. Usado para ambinetes multi-empresa. Senao houver, preencher com 1 |
| 10 | CD_MULTI_EMPRESA_INTEGRA | VARCHAR2 | Y | Codigo da empresa (de-para) |
| 11 | CD_FILIAL_INTEGRA | VARCHAR2 | N | Codigo da filial da empresa que esta se integrando |
| 12 | CD_AGENDA | NUMBER | Y | Codigo da agenda/plant?o |
| 13 | CD_AGENDA_INTEGRA | VARCHAR2 | Y | Codigo da agenda/plant?o (de-para) |
| 14 | CD_UNIDADE_REGIONAL | VARCHAR2 | Y | Codigo da Unidade Regional |
| 15 | CD_UNIDADE_REGIONAL_INTEGRA | VARCHAR2 | Y | Codigo da unidade regional (de-para) |
| 16 | DS_UNIDADE_REGIONAL | VARCHAR2 | Y | Descric?o da unidade regional |
| 17 | CD_PRESTADOR | NUMBER | Y | Nome do medico solicitante  do servico |
| 18 | CD_PRESTADOR_INTEGRA | VARCHAR2 | Y | Nome do medico solicitante  do servico (de-para) |
| 19 | NM_PRESTADOR | VARCHAR2 | Y | Nome do prestador |
| 20 | CD_ORIGEM | NUMBER | Y | Codigo da origem do atendimento/agendamento |
| 21 | CD_ORIGEM_INTEGRA | VARCHAR2 | Y | Codigo da origem do atendimento/agendamento (de-para) |
| 22 | DS_ORIGEM | VARCHAR2 | Y | Descric?o da origem do atendimento/agendamento |
| 23 | CD_SETOR | NUMBER | Y | Codigo do setor. Para exames, usar codigo do setor executante |
| 24 | CD_SETOR_INTEGRA | VARCHAR2 | Y | Codigo do setor. Para exames, usar codigo do setor executante (de-para) |
| 25 | DS_SETOR | VARCHAR2 | Y | Descric?o do setor. Para exames, usar codigo do setor executante (de-para) |
| 26 | CD_RECURSO | NUMBER | Y | Codigo do recurso |
| 27 | DS_RECURSO | VARCHAR2 | Y | Descric?o do recurso |
| 28 | DS_CONSULTORIO | VARCHAR2 | Y | Descric?o/nome do consultorio de atendimento |
| 29 | TP_AGENDA | VARCHAR2 | Y | Tipo da agenda. A-Ambulatorio, I-Imagem, L - Laboratorio, C - Centro Cirurgico |
| 30 | TP_VISIBILIDADE_AGENDA | VARCHAR2 | Y | Tipo de visibilidade da agenda.P-Publica ou V-Provada |
| 31 | DT_AGENDA | DATE | Y | Data da Agenda ou data de agendamento |
| 32 | SN_AGENDA_DINAMICA | VARCHAR2 | Y | Identifica se a agenda tera seu tempo de atendimento fixo ou de acordo como tempo de realizac?o d... |
| 33 | HR_INICIAL_AGENDA | DATE | Y | Hora inicial da agenda |
| 34 | HR_FINAL_AGENDA | DATE | Y | Hora final da agenda |
| 35 | HR_TEMPO_MEDIO | DATE | Y | Tempo medio de cada consulta/atendimento |
| 36 | SN_ENCAIXE | VARCHAR2 | Y | Identifica se a genda aceita encaixe, ou se o agendamento e um encaixe |
| 37 | QT_ENCAIXE | NUMBER | Y | Se a agenda permitir, quantos encixes ser?o possiveis. |
| 38 | DT_LIBERACAO | DATE | Y | Data de liberac?o da agenda |
| 39 | SN_ATENDE_SUS | VARCHAR2 | Y | Identifica se a agenda atendera pacientes para convenios SUS. S- Sim, atende, N-N?o atende e T - ... |
| 40 | SN_ATIVO | VARCHAR2 | Y | Identifica se a agenda esta ou n?o ativa |
| 41 | SN_TIPO_LIVRE | VARCHAR2 | Y | Identifica se a agenda tera tipo de atendimento livre |
| 42 | SN_SERVICO_LIVRE | VARCHAR2 | Y | Identifica se a agenda tera o tipo de servico livre |
| 43 | SN_BLOQUEADO | VARCHAR2 | Y | Identifica se a agend ou o horario esta bloqueado |
| 44 | SN_FALTA_MEDICA | VARCHAR2 | Y | Identifica se a agenda teve faltas medicas |
| 45 | CD_USUARIO | VARCHAR2 | Y | Codigo do usuario |
| 46 | CD_CONVENIO | NUMBER | Y | Codigo do convenio |
| 47 | CD_CONVENIO_INTEGRA | VARCHAR2 | Y | Codigo do convenio (de-para) |
| 48 | DS_CONVENIO | VARCHAR2 | Y | Descric?o do convenio |
| 49 | CD_SERVICO | NUMBER | Y | Codigo do servico |
| 50 | CD_SERVICO_INTEGRA | VARCHAR2 | Y | Codigo do servico (de-para) |
| 51 | DS_SERVICO | VARCHAR2 | Y | Descric?o do servico |
| 52 | CD_TIPO_MARCACAO | NUMBER | Y | Tipo de marcacao |
| 53 | CD_TIPO_MARCACAO_INTEGRA | VARCHAR2 | Y | Tipo de marcacao (de-para) |
| 54 | DS_TIPO_MARCACAO | VARCHAR2 | Y | Descricao do tipo de marcacao |
| 55 | CD_ITEM_AGENDAMENTO | VARCHAR2 | Y | Codigo do item agendado. Podenso ser um procedimento ou um codigo de exames |
| 56 | CD_ITEM_AGENDAMENTO_INTEGRA | VARCHAR2 | Y | Codigo do item agendado (de-para) |
| 57 | DS_ITEM_AGENDAMENTO | VARCHAR2 | Y | Descric?o do item de agendamento |
| 58 | CD_ITEM_AGENDAMENTO_SUS | VARCHAR2 | Y | Codigo do item agendado. PodenDo ser um procedimento ou um codigo de exames SUS |
| 59 | DS_ITEM_AGENDAMENTO_SUS | VARCHAR2 | Y | Descric?o do item agendado. Podenso ser um procedimento ou um codigo de exames SUS |
| 60 | QT_CONSULTAS | NUMBER | Y | Quantidade de consultas/atendimentos |
| 61 | QT_CONSULTAS_MARCADAS | NUMBER | Y | Quantidade de consultas marcadas |
| 62 | CD_USUARIO_AUTORIZADO | VARCHAR2 | Y | Codigo do usuario autorizado a manipular a agenda |
| 63 | CD_HORA_AGENDAMENTO | NUMBER | Y | Codigo do horario para agendamento |
| 64 | HR_AGENDA | DATE | Y | Hora do agendamento |
| 65 | CD_ATENDIMENTO | NUMBER | Y | Codigo da atendimento |
| 66 | CD_ATENDIMENTO_INTEGRA | VARCHAR2 | Y | Codigo da atendimento (de-para) |
| 67 | CD_PACIENTE | NUMBER | Y | Codigo do paciente |
| 68 | CD_PACIENTE_INTEGRA | VARCHAR2 | Y | Codigo do paciente (de-para) |
| 69 | NM_PACIENTE | VARCHAR2 | Y | Nome do paciente |
| 70 | DT_NASCIMENTO | DATE | Y | Data de Nascimento |
| 71 | NM_CONVENIO | VARCHAR2 | Y | Nome do convenio |
| 72 | CD_PLANO | NUMBER | Y | Codigo do plano do convenio |
| 73 | CD_PLANO_INTEGRA | VARCHAR2 | Y | Codigo do plano do convenio (de-para) |
| 74 | DS_PLANO | VARCHAR2 | Y | Descric?o do contato. |
| 75 | DS_OBSERVACAO | VARCHAR2 | Y | Observac?es do agendamento |
| 76 | NM_MAE | VARCHAR2 | Y | Nome da M?e do paciente |
| 77 | CD_CIDADE | NUMBER | Y | Codigo da cidade |
| 78 | NM_CIDADE | VARCHAR2 | Y | Nome da cidade |
| 79 | NM_CARTEIRA | VARCHAR2 | Y | Numero da carteira do plano de saude |
| 80 | DT_VALIDADE_CARTEIRA | DATE | Y | Data de validade da carteira |
| 81 | NR_GUIA | VARCHAR2 | Y | Numero da guia |
| 82 | DT_VALIDADE_GUIA | DATE | Y | Data de validade da guia |
| 83 | CD_SENHA | VARCHAR2 | Y | Codigo da senha da guia |
| 84 | HR_CHEGADA | DATE | Y | Hora da chegada do paciente para a consulta |
| 85 | SN_ATRASO | VARCHAR2 | Y | Identifica se o paciente chegou atrasado para sua consulta ou execuc?o de exames |
| 86 | DT_TEMPO_ATRASO | DATE | Y | Tempo de atraso do paciente |
| 87 | SN_ATENDIDO | VARCHAR2 | Y | Identifica se o paciente foi ou nao atendido |
| 88 | HR_ATENDIDO | DATE | Y | Hora em que o paciente foi atendido |
| 89 | TP_SITUACAO_AGENDAMENTO | VARCHAR2 | Y | Situac?o do agendamento |
| 90 | DT_REQUISICAO_MEDICA | DATE | Y | Data que foi emitida a requsic?o medica solicitando a realizac?o do procedimento |
| 91 | NR_CONSELHO_PRESTADOR | VARCHAR2 | Y | Numero do conselho do prestador solicitante |
| 92 | SN_AGENDADO | VARCHAR2 | Y | Identificador - Paciente Agendado ? |
| 93 | SN_ANESTESISTA | VARCHAR2 | Y | Identificador - Necessaria a presenca do Anestesista ? |
| 94 | SN_PRIORIDADE | VARCHAR2 | Y | Identificador - E um agendamento prioritario ? |
| 95 | CD_UNIDADE_REGIONAL_UBS | VARCHAR2 | Y | Unidade Regional a qual pertence o horario |
| 96 | CD_DIVISAO_UNIDADE_REGIONAL | VARCHAR2 | Y | Indica se os detalhes da divis?o |
| 97 | SN_LIBERA_VAGA_UBS | VARCHAR2 | Y | Indica se o horario sera contabilizado como vaga para as Unidades Regionais |
| 98 | SN_IMPRIME_AVISO | VARCHAR2 | Y | Identificador - Etiqueta de Aviso ao Same ja foi impressa ? |
| 99 | NM_USUARIO_AGENDAMENTO | VARCHAR2 | Y | Nome do usuario que realizou o agendamento |
| 100 | NM_USUARIO_CONFIRMOU | VARCHAR2 | Y | Nome do usuario que confirmou o agendamento |
| 101 | CD_AGENDA_PAI | NUMBER | Y | Codigo do Plant?o da Agenda Pai - Agendamento que ocupa multiplos horarios |
| 102 | CD_HORA_AGENDAMENTO_PAI | NUMBER | Y | Horario da Agenda Pai - Agendamento que ocupa multiplos horarios |
| 103 | CD_ESCALA_DIA | NUMBER | Y | Codigo da escala. |

---

## MVINTEGRA.INTEGRA_ENTRADA_ATENDIMENTO
> Tabela usada para tratar a integracao de pessoas quando houver mais de uma empresa no processo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INTEGRA_ENTRADA_ATENDIMENTO | NUMBER | N | Codigo sequencial dos registros da integracao |
| 2 | CD_INTEGRA_PAI | NUMBER | Y |  |
| 3 | TP_INTEGRACAO | VARCHAR2 | N | Identifica o status da interacao |
| 4 | DS_ERRO | VARCHAR2 | Y | Descricao do erro, caso o campo TP_INTEGRACAO seja igual a E |
| 5 | DT_INTEGRACAO | DATE | N | Data em que o registro foi disponibilizado na tabela de integracao |
| 6 | DT_INTEGRACAO_MV2000 | DATE | Y | Data em que ocorreu a integracao do registro com outro sistema |
| 7 | TP_MOVIMENTO | VARCHAR2 | N | Identifica o tipo do momento: I-Inclusao, A-Alteracao e E-Excluso |
| 8 | TP_REGISTRO | VARCHAR2 | N | Tipo do registro |
| 9 | CD_FILIAL_INTEGRA | VARCHAR2 | N | Codigo da filial da empresa que esta se integrando |
| 10 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da empresa. Usado para ambinetes multi-empresa. Senao houver, preencher com 1 |
| 11 | CD_MULTI_EMPRESA_INTEGRA | VARCHAR2 | Y |  |
| 12 | CD_ATENDIMENTO | NUMBER | Y | Codigo do atendimento do paciente |
| 13 | DT_ATENDIMENTO | DATE | Y | Data que ocorreu o atendimento |
| 14 | HR_ATENDIMENTO | DATE | Y | Hora que ocorreu o atendimento |
| 15 | CD_ORIGEM | NUMBER | Y | Codigo da Origem do Atendimento |
| 16 | CD_ORIGEM_INTEGRA | VARCHAR2 | Y | Codigo da Origem do Atendimento no Sistema Destino |
| 17 | DS_ORIGEM | VARCHAR2 | Y | Descric?o da origem do atendimento |
| 18 | CD_PRESTADOR | NUMBER | Y | Codigo do Prestador responsavel pelo atendimento do paciente |
| 19 | CD_PRESTADOR_INTEGRA | VARCHAR2 | Y | Codigo do Prestador no Sistema Destino |
| 20 | NM_PRESTADOR | VARCHAR2 | Y | Nome do Prestador |
| 21 | CD_CONVENIO | NUMBER | Y | Codigo do Convenio |
| 22 | CD_CONVENIO_INTEGRA | VARCHAR2 | Y | Codigo do Convenio no Sistema Destino |
| 23 | TP_CONVENIO | VARCHAR2 | Y | Tipo do Convenio |
| 24 | TP_CONVENIO_INTEGRA | VARCHAR2 | Y | Tipo do Convenio no outro sistema |
| 25 | NM_CONVENIO | VARCHAR2 | Y | Nome do convenio |
| 26 | CD_PLANO | NUMBER | Y | Codigo do plano de saude |
| 27 | CD_PLANO_INTEGRA | VARCHAR2 | Y | Codigo do plano de saude no outro sistema |
| 28 | DS_PLANO | VARCHAR2 | Y | Descric?o do plano de saude |
| 29 | CD_SUB_PLANO | VARCHAR2 | Y | Codigo do sub-plano |
| 30 | CD_SUB_PLANO_INTEGRA | VARCHAR2 | Y | Codigo do sub-plano no outro sistema |
| 31 | DS_SUB_PLANO | VARCHAR2 | Y | Descric?o do sub-plano |
| 32 | CD_LOCAL_PROCEDENCIA | NUMBER | Y | Local da procedencia do paciente |
| 33 | CD_LOCAL_PROCEDENCIA_INTEGRA | VARCHAR2 | Y | Local da procedencia do paciente no outro sistema |
| 34 | DS_LOCAL_PROCEDENCIA | VARCHAR2 | Y | Descric?o da procedencia do paciente |
| 35 | CD_DESTINO_ATENDIMENTO | NUMBER | Y | Destino do paciente |
| 36 | CD_DESTINO_ATENDIMENTO_INTEGRA | VARCHAR2 | Y | Destino do paciente no outro sistema |
| 37 | DS_DESTINO_ATENDIMENTO | VARCHAR2 | Y | Descric?o do destino do paciente |
| 38 | SN_TEM_ACOMPANHANTE | VARCHAR2 | Y | Identifica se o paciente esta com acompanhante. |
| 39 | CD_PROC_ATENDIMENTO | VARCHAR2 | Y | Codigo do procedimento do atendimento |
| 40 | CD_PROC_ATENDIMENTO_INTEGRA | VARCHAR2 | Y | Codigo do procedimento do atendimento no outro sistema |
| 41 | DS_PROC_ATENDIMENTO | VARCHAR2 | Y | Descric?o do procedimento do atendimento |
| 42 | CD_CID_ATENDIMENTO | VARCHAR2 | Y | Codigo do CID no atendimento |
| 43 | TP_ATENDIMENTO | VARCHAR2 | Y | Tipo do atendimento |
| 44 | TP_ATENDIMENTO_INTEGRA | VARCHAR2 | Y | Tipo do atendimento no outro sistema |
| 45 | TP_INTERNACAO | NUMBER | Y | Tipo de internac?o |
| 46 | TP_INTERNACAO_INTEGRA | VARCHAR2 | Y | Tipo de internac?o no outro sistema |
| 47 | DS_INTERNACAO | VARCHAR2 | Y | Descric?o do tipo de internac?o |
| 48 | CD_UNID_INTERNACAO | NUMBER | Y | Unidade de internac?o |
| 49 | CD_UNID_INTERNACAO_INTEGRA | VARCHAR2 | Y | Unidade de internac?o no outro sistema |
| 50 | DS_UNID_INTERNACAO | VARCHAR2 | Y | Descric?o da unidade de internac?o |
| 51 | CD_SETOR | NUMBER | Y | Setor  (centro de custo) |
| 52 | CD_SETOR_INTEGRA | VARCHAR2 | Y | Setor  (centro de custo) no outro sistema |
| 53 | DS_SETOR | VARCHAR2 | Y | Descric?o do setor |
| 54 | TP_ACOMODACAO | NUMBER | Y | Tipo de acomodac?o |
| 55 | TP_ACOMODACAO_INTEGRA | VARCHAR2 | Y | Tipo de acomodac?o no outro sistema |
| 56 | DS_ACOMODACAO | VARCHAR2 | Y | Descric?o do tipo de acomodac?o |
| 57 | CD_LEITO | NUMBER | Y | Codigo do leito |
| 58 | CD_LEITO_INTEGRA | VARCHAR2 | Y | Codigo do leito no outro sistema |
| 59 | DS_LEITO | VARCHAR2 | Y | Descric?o do leito |
| 60 | DS_LEITO_RESUMIDO | VARCHAR2 | Y | Descric?o resumida do leito |
| 61 | DS_ENFERMAGEM | VARCHAR2 | Y | Descric?o da enfermaria |
| 62 | CD_SERVICO | NUMBER | Y | Servico do atendimento |
| 63 | CD_SERVICO_INTEGRA | VARCHAR2 | Y | Servico do atendimento no outro sistema |
| 64 | DS_SERVICO | VARCHAR2 | Y | Descric?o do servico |
| 65 | CD_ESPECIALIDADE | VARCHAR2 | Y | Codigo da Especialidade |
| 66 | CD_ESPECIALIDADE_INTEGRA | VARCHAR2 | Y | Codigo da Especialidade no outro sistema |
| 67 | DS_ESPECIALIDADE | VARCHAR2 | Y | Descric?o da especialidade |
| 68 | NR_GUIA | VARCHAR2 | Y | Numero da guia |
| 69 | TP_GUIA | VARCHAR2 | Y | Tipo da guia |
| 70 | TP_GUIA_INTEGRA | VARCHAR2 | Y | Tipo da guia no outro sistema |
| 71 | QT_DIAS_SOLICITADOS | NUMBER | Y | Quantidade de dias solicitados na guia |
| 72 | QT_HORAS_SOLICITADOS | NUMBER | Y | Quantidade de horas solicitadas na guia. (usada para paciente dia) |
| 73 | QT_DIAS_AUTORIZADOS | NUMBER | Y | Quantidade de dias autorizados na guia |
| 74 | QT_HORAS_AUTORIZADOS | NUMBER | Y | Quantidade de horas autorizadas na guia. (usada para paciente dia) |
| 75 | CD_SENHA | VARCHAR2 | Y | Senha da guia |
| 76 | CD_PACIENTE | NUMBER | Y | Codigo de Identificac?o do Paciente (Prontuario) |
| 77 | CD_PACIENTE_INTEGRA | VARCHAR2 | Y | Codigo do paciente no outro sistema |
| 78 | DS_NOME | VARCHAR2 | Y | Nome do paciente |
| 79 | DS_RESPONSAVEL_PACIENTE | VARCHAR2 | Y | Nome do responsavel pelo paciente |
| 80 | TP_PARENTESCO | VARCHAR2 | Y | Tipo de parentesco |
| 81 | TP_PARENTESCO_INTEGRA | VARCHAR2 | Y | Tipo de parentesco no outro sistema |
| 82 | DS_TIPO_PARENTESCO | VARCHAR2 | Y | Descric?o do tipo de parentesco |
| 83 | CD_PROFISSAO_RESP | NUMBER | Y | Codigo da profiss?o do responsavel pelo paciente |
| 84 | CD_PROFISSAO_RESP_INTEGRA | VARCHAR2 | Y | Codigo da profiss?o do responsavel pelo paciente no outro sistema |
| 85 | DS_NATURALIDADE_RESP | VARCHAR2 | Y | Naturalidade do responsavel pelo paciente |
| 86 | NR_TELEFONE_RESP | VARCHAR2 | Y | Telefone de contato do responsavel do paciente |
| 87 | NR_IDENTIDADE_RESP | VARCHAR2 | Y | Numero da carteira de identidade do responsavel do paciente |
| 88 | NR_CPF_RESP | VARCHAR2 | Y | Numero do cpf do responsavel pelo paciente |
| 89 | DS_CONTATO_FAMILIA | VARCHAR2 | Y | Nome de algum contato da familia do paciente |
| 90 | DS_ENDERECO_RESP | VARCHAR2 | Y | Endereco do responsavel do paciente |
| 91 | NR_ENDERECO_RESP | VARCHAR2 | Y | Numero do endereco do responsavel do paciente |
| 92 | DS_COMPLEMENTO_RESP | VARCHAR2 | Y | Complemento do endereco do responsavel do paciente |
| 93 | DS_BAIRRO_RESP | VARCHAR2 | Y | Bairro do endereco do responsavel do paciente |
| 94 | CD_CIDADE_RESP | VARCHAR2 | Y | Cidade do endereco do responsavel do paciente |
| 95 | DS_CIDADE_RESP | VARCHAR2 | Y | Descric?o da cidade do endereco do responsavel do paciente |
| 96 | CD_ESTADO_RESP | VARCHAR2 | Y | Estado do endereco do responsavel do paciente |
| 97 | DT_ALTA | DATE | Y | Data da alya do paciente |
| 98 | HR_ALTA | DATE | Y | Hora da Alta do paciente |
| 99 | CD_PACIENTE_ANTERIOR | NUMBER | Y | Codigo do Paciente antes de unificar as informac?es do cadastro |
| 100 | NM_PACIENTE_ANTERIOR | VARCHAR2 | Y | Nome do paciente antes de unificar as informac?es do cadastro |
| 101 | SN_ALTA_POR_OBITO | VARCHAR2 | Y | Identifica se a alta do paciente e com obito |
| 102 | CD_LEITO_ANTERIOR | NUMBER | Y | Codigo do leito ocupado angteriormente pelo paciente |
| 103 | DS_LEITO_ANTERIOR | VARCHAR2 | Y | Descric?o do leito ocupado anteriormente pelo paciente |
| 104 | DS_LEITO_RESUMIDO_ANTERIOR | VARCHAR2 | Y | Nome resumido do leito ocuipado anteriormente pelo paciente |
| 105 | SN_ALTA | VARCHAR2 | Y | Identifica que o paciente esta de alta |
| 106 | DT_PREVISAO_INTERNACAO | DATE | Y | Data de previs?o da internac?o |
| 107 | DT_PREVISAO_ALTA | DATE | Y | Data de precis?o de alta |
| 108 | CD_ATENDIMENTO_INTEGRA | VARCHAR2 | Y | Codigo do Atendimento no sistema externo |
| 109 | TP_ATENDIMENTO_TISS | NUMBER | Y | Tipo de Atendimento usado no TISS |
| 110 | TP_CARATER_INTERNACAO | VARCHAR2 | Y | Tipo de carater de internacao do TISS |

---

## MVINTEGRA.INTEGRA_ENTRADA_CAD_PESSOA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INTEGRA_ENTRADA_CAD_PESSOA | NUMBER | N |  |
| 2 | TP_INTEGRACAO | VARCHAR2 | N |  |
| 3 | DS_ERRO | VARCHAR2 | Y |  |
| 4 | DT_INTEGRACAO | DATE | N |  |
| 5 | DT_INTEGRACAO_MV2000 | DATE | Y |  |
| 6 | TP_MOVIMENTO | VARCHAR2 | N |  |
| 7 | TP_REGISTRO | VARCHAR2 | N |  |
| 8 | CD_FILIAL_INTEGRA | VARCHAR2 | N |  |
| 9 | NR_CGC_CPF | VARCHAR2 | Y |  |
| 10 | CD_PESSOA | NUMBER | Y | Codigo da pessoa |
| 11 | CD_PESSOA_INTEGRA | VARCHAR2 | Y |  |
| 12 | NM_PESSOA | VARCHAR2 | Y | Nome da pessoa |
| 13 | NM_FANTASIA | VARCHAR2 | Y |  |
| 14 | NM_MNEMONICO | VARCHAR2 | Y |  |
| 15 | TP_FORNECEDOR | VARCHAR2 | Y |  |
| 16 | TP_CLIENTE_FORN | VARCHAR2 | Y | Identifica o tipo de cadastro da pessoa |
| 17 | DS_ENDERECO | VARCHAR2 | Y |  |
| 18 | NR_ENDERECO | VARCHAR2 | Y |  |
| 19 | DS_COMPLEMENTO | VARCHAR2 | Y |  |
| 20 | NM_BAIRRO | VARCHAR2 | Y |  |
| 21 | NR_FONE | VARCHAR2 | Y |  |
| 22 | NR_CEP | VARCHAR2 | Y |  |
| 23 | CD_CIDADE | NUMBER | Y |  |
| 24 | CD_CIDADE_COMERCIAL | NUMBER | Y |  |
| 25 | DS_ENDERECO_COMERCIAL | VARCHAR2 | Y |  |
| 26 | DS_COMPLEMENTO_COMERCIAL | VARCHAR2 | Y |  |
| 27 | DS_EMAIL | VARCHAR2 | Y |  |
| 28 | NR_RG_NASC | NUMBER | Y |  |
| 29 | NR_IDENTIDADE | VARCHAR2 | Y |  |
| 30 | DS_OM_IDENTIDADE | VARCHAR2 | Y |  |
| 31 | NR_INSC_EST | VARCHAR2 | Y |  |
| 32 | SN_ATIVO | VARCHAR2 | Y |  |
| 33 | TP_SITUACAO | VARCHAR2 | Y |  |
| 34 | TP_ESTADO_CIVIL | VARCHAR2 | Y |  |
| 35 | TP_SEXO | VARCHAR2 | Y |  |
| 36 | TP_COR | VARCHAR2 | Y |  |
| 37 | TP_SANGUINEO | VARCHAR2 | Y |  |
| 38 | SN_DOADOR | VARCHAR2 | Y |  |
| 39 | NM_MAE | VARCHAR2 | Y |  |
| 40 | NM_PAI | VARCHAR2 | Y |  |
| 41 | NM_CONJUGE | VARCHAR2 | Y |  |
| 42 | NR_PISPASEP | NUMBER | Y |  |
| 43 | TP_CORPO_CLINICO | VARCHAR2 | Y |  |
| 44 | DS_CODIGO_CONSELHO | VARCHAR2 | Y |  |
| 45 | CD_CONSELHO | NUMBER | Y |  |
| 46 | CD_TIP_PRESTA | NUMBER | Y |  |
| 47 | DS_CARGO | VARCHAR2 | Y |  |
| 48 | NR_CCM | NUMBER | Y |  |
| 49 | NR_INSS | NUMBER | Y |  |
| 50 | DS_FACULDADE | VARCHAR2 | Y |  |
| 51 | TP_DOCUMENTACAO | VARCHAR2 | Y |  |
| 52 | DT_CADASTRO | DATE | Y |  |
| 53 | HR_CADASTRO | DATE | Y |  |
| 54 | DT_NASCIMENTO | DATE | Y |  |
| 55 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 56 | TP_VINCULO | VARCHAR2 | Y |  |
| 57 | DS_FOR_COM | VARCHAR2 | Y |  |
| 58 | NR_CGC_CPF_CONTATO | NUMBER | Y |  |
| 59 | NM_CONTATO | VARCHAR2 | Y |  |
| 60 | DS_OBSERVACAO_CONTATO | VARCHAR2 | Y |  |
| 61 | CD_CONVENIO | NUMBER | Y |  |
| 62 | CD_CON_PLA | NUMBER | Y |  |
| 63 | CD_CON_PLA_INTEGRA | VARCHAR2 | Y |  |
| 64 | CD_SUB_PLA | NUMBER | Y |  |
| 65 | CD_SUB_PLA_INTEGRA | VARCHAR2 | Y |  |
| 66 | DT_VALIDADE | DATE | Y |  |
| 67 | NM_TITULAR | VARCHAR2 | Y |  |
| 68 | NR_CARTEIRA | VARCHAR2 | Y |  |
| 69 | NR_CARTEIRA_INTEGRA | VARCHAR2 | Y |  |
| 70 | DT_ULT_PAGTO | DATE | Y |  |
| 71 | SN_TITULAR | VARCHAR2 | Y |  |
| 72 | NR_MATRICULA_TITULAR | VARCHAR2 | Y |  |
| 73 | SN_CARTEIRA_ATIVO | VARCHAR2 | Y |  |
| 74 | CD_ESPECIALID | NUMBER | Y |  |
| 75 | DS_ESPECIALID | VARCHAR2 | Y |  |
| 76 | CD_ESPECIALID_INTEGRA | VARCHAR2 | Y |  |
| 77 | SN_ESPECIALID_PRINCIPAL | VARCHAR2 | Y |  |
| 78 | CD_INTEGRA_SEQUENCE_EXTERNA | NUMBER | Y | Codigo identificador de um processo no Sistema Externo (integrac?o) que esta associado a este reg... |
| 79 | CD_PESSOA_INTEGRA_DESTINO | VARCHAR2 | Y |  |
| 80 | CD_BANCO | NUMBER | Y |  |
| 81 | CD_AGENCIA | VARCHAR2 | Y |  |
| 82 | NR_CONTA | VARCHAR2 | Y |  |
| 83 | CD_CIDADANIA | NUMBER | Y | Codigo referente a Nacionalidade do Paciente |
| 84 | DS_CIDADANIA | VARCHAR2 | Y | Descric?o da Nacionalidade do Paciente |
| 85 | CD_CIDADANIA_INTEGRA | VARCHAR2 | Y | Codigo referente a Nacionalidade do Paciente no Sistema de integrac?o |
| 86 | NM_AGENCIA | VARCHAR2 | Y | Nome da agencia onde a pessoa possui conta |
| 87 | SN_ANESTESISTA | VARCHAR2 | Y | Identifica se a pessoa e ou n?o um anestesista |
| 88 | SN_AUXILIAR | VARCHAR2 | Y | identifica se a pessoa e ou n?o um auxiliar de cirurgia |
| 89 | SN_CIRURGIAO | VARCHAR2 | Y | Identifica se a pessoa e ou n?o um cirurgi?o |
| 90 | SN_OUITROS | VARCHAR2 | Y | Identifica outros tipo de prestador |
| 91 | DS_BAIRRO_COMERCIAL | VARCHAR2 | Y | Nome do bairro comercial da pessoa |
| 92 | DS_CEP_COMERCIAL | VARCHAR2 | Y | CEP comerical da pessoa |
| 93 | TP_PARTICIPACAO | VARCHAR2 | Y | Tipo de participac?o da pessoa na instituic?o: Atuante ) Residente ) Provisorio |
| 94 | NR_INSCR_AUTONOMO | VARCHAR2 | Y | Numero de inscric?o de autonomo |
| 95 | DT_CADASTRO_COOPERATIVA | DATE | Y | Data de cadastramento na cooperativa |
| 96 | NR_MATRICULA_COOPERATIVA | VARCHAR2 | Y | Numero da matricula na cooperativa |
| 97 | TP_CATEGORIA_SUS | NUMBER | Y | Tipo de categora da pessoa no SUS |
| 98 | NR_CATEGORIA_SUS | NUMBER | Y | Numero da caegoria da pessoa no SUS |
| 99 | SN_SESSAO_CREDITO | VARCHAR2 | Y | Define se e prestador SUS autonomo com sess?o de credito |
| 100 | SN_AUDITOR_SUS | VARCHAR2 | Y | Define se o perstador e um auditor SUS |
| 101 | DT_INICIO_ATUACAO | DATE | Y | Data do inicio de atuac?o do prestador na instituic?o |
| 102 | TP_PRESTADOR | VARCHAR2 | Y | Identifica o tipo de prestador: Aluno ) professor e outros |
| 103 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da multi-empresa |
| 104 | CD_CONVENIO_INTEGRA | VARCHAR2 | Y | Codigo do convenio (de-para) |
| 105 | SN_DESTRAVA_REGISTRO | VARCHAR2 | Y | Informa se o registro ficara ou n?o travado |
| 106 | CD_INTEGRA_PAI | NUMBER | Y | Codigo de controle para saber qual o registro PAI do registro atual |
| 107 | DT_VIGENCIA | DATE | Y | Data de vigencia da proibic?o da carteira |
| 108 | NM_CIDADE | VARCHAR2 | Y | Nome da Cidade |
| 109 | CD_UF | VARCHAR2 | Y | Codigo da Unidade Federativa do Brasil |
| 110 | CD_ESP_MED_INTEGRA | VARCHAR2 | Y | Codigo de Especialidade Medica da Integrac?o. |
| 111 | CD_PRESTADOR_MUITOS | NUMBER | Y | Codigo do chefe de cada prestador. |
| 112 | SN_REPASSE_FATURA_AMB_SUS | VARCHAR2 | Y | Repasse de fatura do SUS. |
| 113 | SN_ATUANTE | VARCHAR2 | Y | Se o prestador e atuante ou n?o. |
| 114 | SN_ALT_DADOS_ORA_APP | VARCHAR2 | Y |  |
| 115 | CD_IDENTIFICACAO | NUMBER | Y | Codigo de identificac?o no CME. |
| 116 | SN_MOSTRA_ENDERECO | VARCHAR2 | Y | Permite a visualizac?o do Endereco Pessoal para forma de contato do Prestador |
| 117 | SN_MOSTRA_ENDERECO_COM | VARCHAR2 | Y | Permite a visualizac?o do Endereco Comercial para forma de contato do Prestador |
| 118 | TP_REMESSA | VARCHAR2 | Y | Tipo da Remessa: T-Todas S-Pagas C-Conciliadas P-Parametro da tela |
| 119 | NR_FONE_COMERCIAL | VARCHAR2 | Y | Telefone Comercial |
| 120 | DT_INATIVACAO | DATE | Y | Data que informa quando o prestador foi inativado |
| 121 | NR_CNS | VARCHAR2 | Y | Conselho Nacional de Saude |
| 122 | CD_TIPO_LOGRADOURO | NUMBER | Y | Codigo do tipo de logradouro |
| 123 | CD_TIPO_LOGRADOURO_COMERCIAL | NUMBER | Y | Codigo do tipo de logradouro do endereco comercial do prestador |
| 124 | NR_ENDERECO_COMERCIAL | VARCHAR2 | Y | Numero do endereco comercial do prestador |
| 125 | NR_CNES | VARCHAR2 | Y | Numero do CNES do prestador. |
| 126 | CD_CBOS | VARCHAR2 | Y | Codigo CBO-S do prestador. |
| 127 | CD_SITUACAO_FAMILIAR | NUMBER | Y | Codigo da situac?o familiar do prestador. |
| 128 | TP_CERTIDAO | VARCHAR2 | Y | Codigo da situac?o familiar do prestador. |
| 129 | CD_GRAU_INS | NUMBER | Y | Grau de instruc?o do prestador. |
| 130 | CD_NATURALIDADE | NUMBER | Y | Indica a naturalidade (Cidade de Nascimento) do prestador. |
| 131 | CD_IBGE_CIDADE | NUMBER | Y | Codigo IBGE da Cidade |
| 132 | DS_TIPO_LOGRADOURO | VARCHAR2 | Y | Descricao do tipo de logradouro |
| 133 | DS_NATURALIDADE | VARCHAR2 | Y | Descricao da cidade da naturalidade |
| 134 | CD_IBGE_NATURALIDADE | NUMBER | Y | Codigo IBGE da cidade da naturalidade |
| 135 | CD_UF_NATURALIDADE | VARCHAR2 | Y | UF - Unidade Federativa da cidade da naturalidade |
| 136 | CD_CBOR | VARCHAR2 | Y | Codigo do CBOR - Codigo Brasileiro de Ocupac?o Reduzido |
| 137 | DS_CBOR | VARCHAR2 | Y | Descricao do CBOR - Codigo Brasileiro de Ocupac?o Reduzido |
| 138 | DT_EMISSAO_IDENTIDADE | DATE | Y | Data de emissao da identidade |
| 139 | DS_GRAU_INS | VARCHAR2 | Y | Descricao do Grau de Instrucao |
| 140 | CD_GRAU_INS_INTEGRA | VARCHAR2 | Y | Codigo do Grau de Instrucao (de-para) |
| 141 | DS_CERTIDAO | VARCHAR2 | Y | Descricao da Certidao do paciente |
| 142 | CD_CERTIDAO_INTEGRA | VARCHAR2 | Y | Codigo da Certidao do paciente (de-para) |
| 143 | CD_OM_IDENTIDADE | NUMBER | Y | Codigo do orgao emissor da identidade |
| 144 | CD_OM_IDENTIDADE_SIGLA | VARCHAR2 | Y | Codigo da sigla do orgao emissor da identidade |
| 145 | NM_OM_IDENTIDADE | VARCHAR2 | Y | Nome do orgao emissor da identidade |
| 146 | CD_OM_IDENTIDADE_INTEGRA | VARCHAR2 | Y | Codigo do orgao emissor da identidade (de-para) |
| 147 | DS_SITUACAO_FAMILIAR | VARCHAR2 | Y | Descricao da situacao familiar do paciente |
| 148 | CD_SITUACAO_FAMILIAR_INTEGRA | VARCHAR2 | Y | Codigo da situacao familiar do paciente (de-para) |
| 149 | NM_CARTORIO | VARCHAR2 | Y | Nome do cartorio da certidao |
| 150 | DS_LIVRO | VARCHAR2 | Y | Descricao do livro da certidao |
| 151 | DS_FOLHA | VARCHAR2 | Y | Descricao da folha do livro da certidao |
| 152 | DT_EMISSAO_CERTIDAO | DATE | Y | Data da emissao da certidao |
| 153 | SN_PRESTADOR_EXTERNO | VARCHAR2 | Y | Identifica se o prestador deve ser cadastrado como externo ou interno |
| 154 | DT_EMISSAO_CERTIDADAO | DATE | Y | Data de emiss?o da certid?o |
| 155 | NR_CELULAR | VARCHAR2 | Y |  |
| 156 | NR_DDD_CELULAR | NUMBER | Y |  |
| 157 | NR_DDD | NUMBER | Y |  |
| 158 | CD_DISTRITO_SANITARIO | NUMBER | Y |  |
| 159 | CD_CLASSE_ECONOMICA | NUMBER | Y |  |
| 160 | CD_TIPO_MORADIA | NUMBER | Y |  |
| 161 | CD_RELIGIAO | NUMBER | Y |  |
| 162 | DS_TRABALHO | VARCHAR2 | Y |  |
| 163 | CD_UF_EMISSAO_IDENTIDADE | VARCHAR2 | Y |  |
| 164 | NR_CTPS | VARCHAR2 | Y |  |
| 165 | NR_SERIE_CTPS | VARCHAR2 | Y |  |
| 166 | DT_EMISSAO_CTPS | DATE | Y |  |
| 167 | CD_UF_EMISSAO_CTPS | VARCHAR2 | Y |  |
| 168 | NR_TITULO_ELEITORAL | VARCHAR2 | Y |  |
| 169 | NR_ZONA_TITULO_ELEITORAL | VARCHAR2 | Y |  |
| 170 | NR_SECAO_TITULO_ELEITORAL | VARCHAR2 | Y |  |
| 171 | SN_VIP | VARCHAR2 | Y |  |
| 172 | CD_PAIS | VARCHAR2 | Y |  |

---

## MVINTEGRA.INTEGRA_ENTRADA_COMPRAS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INTEGRA_ENTRADA_COMPRAS | NUMBER | N |  |
| 2 | TP_INTEGRACAO | VARCHAR2 | N |  |
| 3 | DS_ERRO | VARCHAR2 | Y |  |
| 4 | DT_INTEGRACAO | DATE | N |  |
| 5 | DT_INTEGRACAO_MV2000 | DATE | Y |  |
| 6 | TP_MOVIMENTO | VARCHAR2 | N |  |
| 7 | TP_REGISTRO | VARCHAR2 | N |  |
| 8 | CD_FILIAL_INTEGRA | VARCHAR2 | N |  |
| 9 | CD_ESTOQUE | NUMBER | Y |  |
| 10 | CD_ORD_COM | NUMBER | Y |  |
| 11 | CD_ORD_COM_INTEGRA | VARCHAR2 | Y |  |
| 12 | CD_SOL_COM | NUMBER | Y |  |
| 13 | NR_CGC_CPF | NUMBER | Y |  |
| 14 | DT_ORD_COM | DATE | Y |  |
| 15 | DT_PREV_ENTREGA | DATE | Y |  |
| 16 | TP_FRETE | VARCHAR2 | Y |  |
| 17 | VL_FRETE | NUMBER | Y |  |
| 18 | VL_PERC_FRETE | NUMBER | Y |  |
| 19 | SN_INCLUSAO_NOTA | VARCHAR2 | Y |  |
| 20 | VL_TOTAL | NUMBER | Y |  |
| 21 | VL_DESCONTO | NUMBER | Y |  |
| 22 | VL_PERCENTUAL_DESCONTO | NUMBER | Y |  |
| 23 | VL_ICMS | NUMBER | Y |  |
| 24 | VL_PERCENTUAL_ICMS | NUMBER | Y |  |
| 25 | VL_OUTROS | NUMBER | Y |  |
| 26 | DT_CANCELAMENTO | DATE | Y |  |
| 27 | DS_MOTIVO_CANCELAMENTO | VARCHAR2 | Y |  |
| 28 | DT_AUTORIZACAO | DATE | Y |  |
| 29 | DS_ORDEM_DE_COMPRA | VARCHAR2 | Y |  |
| 30 | SN_EMITIDO_ESTOQUE | VARCHAR2 | Y |  |
| 31 | TP_SITUACAO | VARCHAR2 | Y |  |
| 32 | CD_CONDICAO_PAGAMENTO | NUMBER | Y |  |
| 33 | CD_CONDICAO_PAGAMENTO_INTEGRA | NUMBER | Y |  |
| 34 | DT_IMPRESSAO | DATE | Y |  |
| 35 | DS_OBSERVACAO_FORNECEDOR | VARCHAR2 | Y |  |
| 36 | SN_RESPONDIDA | VARCHAR2 | Y |  |
| 37 | DT_ENVIO_EMAIL_PARA_FORNECEDOR | DATE | Y |  |
| 38 | SN_EMAIL_ENVIADO_PARA_FORN | VARCHAR2 | Y |  |
| 39 | TP_ORD_COM | VARCHAR2 | Y |  |
| 40 | USUARIO_AUTORIZADOR | VARCHAR2 | Y |  |
| 41 | SN_AUTORIZADO | VARCHAR2 | Y |  |
| 42 | NR_PARCELA | NUMBER | Y |  |
| 43 | DT_VENCIMENTO | DATE | Y |  |
| 44 | VL_PARCELA | NUMBER | Y |  |
| 45 | CD_PRODUTO | NUMBER | Y |  |
| 46 | CD_PRODUTO_INTEGRA | VARCHAR2 | Y |  |
| 47 | DS_UNI_PRO_INTEGRA | VARCHAR2 | Y |  |
| 48 | QT_COMPRADA | NUMBER | Y |  |
| 49 | VL_UNITARIO | NUMBER | Y |  |
| 50 | VL_IMPOSTO | NUMBER | Y |  |
| 51 | VL_PERC_IMPOSTO | NUMBER | Y |  |
| 52 | DT_CANCEL | DATE | Y |  |
| 53 | QT_CANCELADA | NUMBER | Y |  |
| 54 | DS_ESCOLHA_FORNEC | VARCHAR2 | Y |  |
| 55 | TP_SITUACAO_SOL | VARCHAR2 | Y |  |
| 56 | CD_INTEGRA_SEQUENCE_EXTERNA | NUMBER | Y |  |
| 57 | CD_ORD_DUPL_INTEGRA | VARCHAR2 | Y |  |
| 58 | CD_ITORD_PRO_INTEGRA | VARCHAR2 | Y |  |
| 59 | CD_COLETA | NUMBER | Y | Codigo da cotac?o de precos |
| 60 | CD_FORNECEDOR | NUMBER | Y | Codigo do fornecedor envolvido na cotac?o ou ordem de compras |
| 61 | NR_PARCELA_PROGRAMA | NUMBER | Y |  |
| 62 | DT_PARCELA_PROGRAMA | DATE | Y |  |
| 63 | CD_UNI_PRO | NUMBER | Y | Codigo da Unidade do produto no MV2000i. |
| 64 | TP_SOL_COM | VARCHAR2 | Y |  |
| 65 | DT_SOL_COM | DATE | Y |  |
| 66 | NM_SOLICITANTE | VARCHAR2 | Y |  |
| 67 | CD_SETOR | NUMBER | Y |  |
| 68 | CD_MOT_PED | NUMBER | Y |  |
| 69 | TP_MOVIMENTO_REGISTRO | VARCHAR2 | Y |  |
| 70 | DT_MAXIMA | DATE | Y |  |
| 71 | SN_URGENTE | VARCHAR2 | Y |  |
| 72 | DS_OBS_COTACAO | VARCHAR2 | Y |  |
| 73 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 74 | QT_SOLIC | NUMBER | Y |  |
| 75 | CD_MOT_CANCEL | NUMBER | Y |  |
| 76 | DS_MOT_N_ATEND | VARCHAR2 | Y |  |
| 77 | CD_USUARIO | VARCHAR2 | Y |  |
| 78 | CD_SOL_COM_INTEGRA | VARCHAR2 | Y |  |
| 79 | CD_MULTI_EMPRESA | NUMBER | N | Identifica se e ou n?o para desravar um registro integrado |
| 80 | TP_REGISTRO_COMPRA | VARCHAR2 | Y | Identifica o tipo de registro de compras: OC-Ordem de Compra, SC-Solicitac?o de Compras |
| 81 | SN_DESTRAVA_REGISTRO | VARCHAR2 | Y | Destrava Registro |
| 82 | CD_MULTI_EMPRESA_INTEGRA | VARCHAR2 | Y | Codigo da multi-empresa (de-para) |
| 83 | CD_INTEGRA_PAI | NUMBER | Y | Codigo de controle para saber qual o registro PAI do registro atual |
| 84 | DS_MARCA | VARCHAR2 | Y | Laboratorio Fabricante |

---

## MVINTEGRA.INTEGRA_ENTRADA_EVOLUCAO
> Tabela de integrac?o para recebimento de evoluc?es

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INTEGRA_ENTRADA_EVOLUCAO | NUMBER | N | Codigo primario |
| 2 | TP_INTEGRACAO | VARCHAR2 | N | Tipo de integrac?o |
| 3 | DS_ERRO | VARCHAR2 | Y | Descric?o do erro |
| 4 | DT_INTEGRACAO | DATE | N | Data de integracao |
| 5 | DT_INTEGRACAO_MV2000 | DATE | Y | Data de processamento |
| 6 | TP_MOVIMENTO | VARCHAR2 | N | Tipo de movimento |
| 7 | TP_REGISTRO | VARCHAR2 | N | Tipo de registro |
| 8 | CD_FILIAL_INTEGRA | VARCHAR2 | N | Multi-empresa |
| 9 | CD_MULTI_EMPRESA | NUMBER | N | Multi-empresa |
| 10 | CD_CNES_SOLICITANTE | NUMBER | Y | CNES do hospital |
| 11 | CD_INTERNACAO | NUMBER | Y | Codigo da Internac?o |
| 12 | TP_EVOLUCAO | VARCHAR2 | Y | Tipo de evoluc?o |
| 13 | DT_EVOLUCAO | DATE | Y | Data da evoluc?o |
| 14 | DS_EVOLUCAO | VARCHAR2 | Y | Descric?o da evoluc?o |

---

## MVINTEGRA.INTEGRA_ENTRADA_FINANCEIRO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INTEGRA_ENTRADA_FINANCEIRO | NUMBER | N |  |
| 2 | TP_INTEGRACAO | VARCHAR2 | N |  |
| 3 | DS_ERRO | VARCHAR2 | Y |  |
| 4 | DT_INTEGRACAO | DATE | N |  |
| 5 | DT_INTEGRACAO_MV2000 | DATE | Y |  |
| 6 | TP_MOVIMENTO | VARCHAR2 | N |  |
| 7 | TP_REGISTRO | VARCHAR2 | N |  |
| 8 | CD_FILIAL_INTEGRA | NUMBER | N |  |
| 9 | NR_SERIE_INTEGRA | VARCHAR2 | Y |  |
| 10 | NR_CGC_CPF | NUMBER | Y |  |
| 11 | SN_CONTABILIZA | VARCHAR2 | Y | Indica necessidade de contabilizar |
| 12 | NR_ID_NOTA_FISCAL | NUMBER | Y |  |
| 13 | CD_INTEGRA_SEQUENCE_EXTERNA | NUMBER | Y |  |
| 14 | NR_DOCUMENTO | NUMBER | Y | Numero do documento |
| 15 | NR_PARCELA | NUMBER | Y | Numero da parcela |
| 16 | CD_INTEGRA_PAI | NUMBER | Y | Codigo do registro PAI de integrac?o |
| 17 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da Empresa no MV2000 |
| 18 | TP_TITULO | VARCHAR2 | Y | Indica o tipo de Integrac?o: (R) ? Contas a Receber, (P) ? Contas a Pagar |
| 19 | CD_TITULO | NUMBER | Y | Codigo do registro do Titulo no MV2000 |
| 20 | CD_TITULO_INTEGRA | VARCHAR2 | Y | Codigo do registro do Titulo no sistema externo |
| 21 | CD_PROCESSO | NUMBER | Y | Codigo do Processo no sistema MV2000 |
| 22 | DS_PROCESSO | VARCHAR2 | Y | Descric?o do Processo |
| 23 | CD_PROCESSO_INTEGRA | VARCHAR2 | Y | Codigo do Processo no sistema externo |
| 24 | CD_NOTA_FISCAL | NUMBER | Y | Codigo da Nota Fiscal |
| 25 | SN_CONVENIO_TERCEIRIZADO | VARCHAR2 | Y | Indica se o convenio e terceirizado |
| 26 | SN_AGRUPAMENTO | VARCHAR2 | Y | Indica se o registro e de agrupamento |
| 27 | DT_EMISSAO | DATE | Y | Data de emiss?o do Titulo |
| 28 | DT_LANCAMENTO | DATE | Y | Data de lancamento do Titulo |
| 29 | TP_VENCIMENTO | VARCHAR2 | Y | Tipo de vencimento do Titulo |
| 30 | SN_GLOSA_ACEITA | VARCHAR2 | Y | Indica se a glosa foi ou n?o aceita |
| 31 | CD_TIPO_DOCUMENTO | NUMBER | Y | Codigo do Tipo de Documento no MV2000 |
| 32 | CD_TIPO_DOCUMENTO_INTEGRA | VARCHAR2 | Y | Codigo do Tipo de Documento no sistema externo |
| 33 | DS_TIPO_DOCUMENTO | VARCHAR2 | Y | Descric?o do Tipo de Documento |
| 34 | CD_CLIENTE_FORNECEDOR | NUMBER | Y | Codigo do Cliente/Fornecedor no sistema MV2000 |
| 35 | CD_CLIENTE_FORNECEDOR_INTEGRA | VARCHAR2 | Y | Codigo do Cliente/Fornecedor no sistema externo |
| 36 | NM_CLIENTE_FORNECEDOR | VARCHAR2 | Y | Nome do Cliente/Fornecedor |
| 37 | CD_MOEDA | VARCHAR2 | Y | Moeda utilizada: R$ |
| 38 | NR_SERIE | VARCHAR2 | Y | Numero da serie |
| 39 | VL_BRUTO | NUMBER | Y | Valor do documento sem descontos |
| 40 | CD_CONTABIL | NUMBER | Y | Codigo contabil reduzido no sistema MV2000 |
| 41 | DS_CONTABIL | VARCHAR2 | Y | Descric?o da conta contabil |
| 42 | CD_CONTABIL_INTEGRA | VARCHAR2 | Y | Codigo contabil reduzido no sistema externo |
| 43 | CD_DESCONTO | NUMBER | Y | Codigo do desconto no sistema MV2000 |
| 44 | CD_DESCONTO_INTEGRA | VARCHAR2 | Y | Codigo do desconto no sistema externo |
| 45 | DS_DESCONTO | VARCHAR2 | Y | Descric?o do desconto |
| 46 | VL_DESCONTO | NUMBER | Y | Valor do desconto |
| 47 | CD_ACRESCIMO | NUMBER | Y | Codigo do acrescimo no sistema MV2000 |
| 48 | CD_ACRESCIMO_INTEGRA | VARCHAR2 | Y | Codigo do acrescimo no sistema externo |
| 49 | DS_ACRESCIMO | VARCHAR2 | Y | Descric?o do acrescimo |
| 50 | VL_ACRESCIMO | NUMBER | Y | Valor do acrescimo |
| 51 | CD_REMESSA | NUMBER | Y | Codigo da remessa no sistema MV2000 |
| 52 | CD_REMESSA_INTEGRA | VARCHAR2 | Y | Codigo da remessa no sistema externo |
| 53 | DS_MOVIMENTO | VARCHAR2 | Y | Descric?o da movimentac?o |
| 54 | DS_OBSERVACAO | VARCHAR2 | Y | Observac?o |
| 55 | CD_HISCORICO | NUMBER | Y | Codigo do historico no sistema MV2000 |
| 56 | CD_HISCORICO_INTEGRA | VARCHAR2 | Y | Codigo do historico no sistema externo |
| 57 | CD_USUARIO | VARCHAR2 | Y | Codigo do usuario no sistema MV2000 |
| 58 | CD_ITEM_TITULO | NUMBER | Y | Codigo do item do Titulo no sistema MV2000 |
| 59 | CD_ITEM_TITULO_INTEGRA | VARCHAR2 | Y | Codigo do item do Titulo no sistema externo |
| 60 | VL_ITEM_CONTA | NUMBER | Y | Valor do item do Titulo |
| 61 | DT_VENCIMENTO | DATE | Y | Data de vencimento da parcela |
| 62 | DT_PREVISAO | DATE | Y | Data prevista para recebimento |
| 63 | TP_QUITACAO | VARCHAR2 | Y | Tipo da quitac?o da parcela |
| 64 | CD_SITUACAO | NUMBER | Y | Codigo da situac?o da parcela no sistema MV2000 |
| 65 | CD_SITUACAO_INTEGRA | VARCHAR2 | Y | Codigo da situac?o da parcela no sistema externo |
| 66 | DS_SITUACAO | VARCHAR2 | Y | Descric?o da situac?o da parcela |
| 67 | DT_CANCELAMENTO | DATE | Y | Data de cancelamento da parcela |
| 68 | CD_BANCO | NUMBER | Y | Codigo do Banco no sistema MV2000 |
| 69 | NM_BANCO | VARCHAR2 | Y | Nome do Banco |
| 70 | CD_BANCO_INTEGRA | NUMBER | Y | Codigo do Banco no sistema externo |
| 71 | DS_CANCELAMENTO | VARCHAR2 | Y | Descric?o do cancelamento |
| 72 | CD_CONTA_CORRENTE | NUMBER | Y | Codigo da Conta-Corrente no sistema MV20000 |
| 73 | CD_CONTA_CORRENTE_INTEGRA | VARCHAR2 | Y | Codigo da Conta-Corrente no sistema externo |
| 74 | CD_CAIXA | NUMBER | Y | Codigo do Caixa no sistema MV20000 |
| 75 | CD_CAIXA_INTEGRA | VARCHAR2 | Y | Codigo do Caixa no sistema externo |
| 76 | CD_DETALHAMENTO | NUMBER | Y | Codigo do Detalhamento no sistema MV2000 |
| 77 | CD_DETALHAMENTO_INTEGRA | VARCHAR2 | Y | Codigo do Detalhamento no sistema externo |
| 78 | DS_DETALHAMENTO | VARCHAR2 | Y | Descric?o do Detalhamento |
| 79 | VL_DETALHAMENTO | NUMBER | Y | Valor do detalhamento |
| 80 | SN_RETIDO | VARCHAR2 | Y | Indica se o detalhamento esta retido |
| 81 | CD_RATEIO_INTEGRA | VARCHAR2 | Y | Codigo do Rateio no sistema externo |
| 82 | CD_SETOR | NUMBER | Y | Codigo do Setor no sistema MV2000 |
| 83 | CD_SETOR_INTEGRA | VARCHAR2 | Y | Codigo do Setor no sistema externo |
| 84 | DS_SETOR | VARCHAR2 | Y | Descric?o do Setor |
| 85 | VL_RATEIO | NUMBER | Y | Valor de rateio para o setor |
| 86 | CD_ACRESCIMO_DESCONTO | NUMBER | Y | Codigo do Registro de Acrescimo/Desconto no sistema MV2000 |
| 87 | CD_ACRESCIMO_DESCONTO_INTEGRA | VARCHAR2 | Y | Codigo do Registro de Acrescimo/Desconto no sistema externo |
| 88 | CD_RECEBIMENTO | NUMBER | Y | Codigo do Registro de Recebimento no sistema MV2000 |
| 89 | CD_RECEBIMENTO_INTEGRA | VARCHAR2 | Y | Codigo do Registro de Recebimento no sistema externo |

---

## MVINTEGRA.INTEGRA_ENTRADA_INTERNACAO
> Tabela de integrac?o para recebimento de solicitac?es de internac?es

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INTEGRA_ENTRADA_INTERNACAO | NUMBER | N | Codigo primario |
| 2 | TP_INTEGRACAO | VARCHAR2 | N | Tipo de integrac?o |
| 3 | DS_ERRO | VARCHAR2 | Y | Descric?o do erro |
| 4 | DT_INTEGRACAO | DATE | N | Data de integracao |
| 5 | DT_INTEGRACAO_MV2000 | DATE | Y | Data de processamento |
| 6 | TP_MOVIMENTO | VARCHAR2 | N | Tipo de movimento |
| 7 | TP_REGISTRO | VARCHAR2 | N | Tipo de registro |
| 8 | CD_FILIAL_INTEGRA | VARCHAR2 | N | Multi-empresa |
| 9 | CD_MULTI_EMPRESA | NUMBER | N | Multi-empresa |
| 10 | CD_CNES_SOLICITANTE | NUMBER | Y | CNES do hospital |
| 11 | CD_PRONTUARIO | NUMBER | Y | Protuario medico |
| 12 | NM_PACIENTE | VARCHAR2 | Y | Nome do Paciente |
| 13 | DT_NASCIMENTO | DATE | Y | Data de Nascimento do Paciente |
| 14 | TP_SEXO | VARCHAR2 | Y | Sexo |
| 15 | TP_ESTADO_CIVIL | VARCHAR2 | Y | Estado Civil |
| 16 | NM_MAE | VARCHAR2 | Y | Nome da M?e |
| 17 | NM_PAI | VARCHAR2 | Y | Nome do Pai |
| 18 | NR_CEP | NUMBER | Y | CEP |
| 19 | NR_ENDERECO | NUMBER | Y | Endereco |
| 20 | DS_COMPLEMENTO | VARCHAR2 | Y | Complemento do Endereco |
| 21 | CD_PROFISSAO | NUMBER | Y | Codigo de Ocupacao |
| 22 | TP_COR | VARCHAR2 | Y | Cor |
| 23 | CD_NATURALIDADE | NUMBER | Y | Codigo da Naturalidade |
| 24 | CD_PAIS | NUMBER | Y | Pais |
| 25 | NR_IDENTIDADE | VARCHAR2 | Y | Numero Identidade |
| 26 | NR_CPF | VARCHAR2 | Y | Nmero CPF |
| 27 | NR_CARTAO_SUS | NUMBER | Y | Numero Cart?o Sus |
| 28 | CD_SOLICITACAO | NUMBER | Y | Codigo da Solicitacao |
| 29 | CD_INTERNACAO | NUMBER | Y | Codigo da Internacao |
| 30 | TP_PRIORIDADE | VARCHAR2 | Y | Prioridade do Atendimento |
| 31 | TP_SITUACAO | VARCHAR2 | Y | Situacao do atendimento |
| 32 | SN_USA_UTI | VARCHAR2 | Y | Utiliza UTI |
| 33 | NR_CPF_CGC_PRESTADOR | VARCHAR2 | Y | CPF CGG Prestador |
| 34 | CD_PROCEDIMENTO | VARCHAR2 | Y | Codigo do Procedimento |
| 35 | CD_CID | VARCHAR2 | Y | Codigo do CID |
| 36 | DS_SINAIS_SINTOMAS | VARCHAR2 | Y | Sinais e Sintomas |
| 37 | DS_JUSTIFICATIVA | VARCHAR2 | Y | Justificativa da solicitac?o |
| 38 | DS_RESULTADO_DIAGNOSTICO | VARCHAR2 | Y | Diagnostico |
| 39 | NR_CPF_CGC_AUTORIZADOR | VARCHAR2 | Y | CPF CGC Autorizador |
| 40 | CD_CNES_EXECUTORA | NUMBER | Y | CNES do hospital executor |
| 41 | CD_POSTO_ENFERMAGEM | NUMBER | Y | Codigo do Posto de Enfermagem |
| 42 | CD_ENFERMARIA | NUMBER | Y | Codigo da Enfermaria |
| 43 | CD_LEITO | NUMBER | Y | Codigo do Leito |
| 44 | DT_ATENDIMENTO | DATE | Y | Data de atendimento |
| 45 | DT_PREVISTA_ALTA | DATE | Y | Previs?o de alta |
| 46 | CD_CNES_EXECUTANTE_INDICACAO | NUMBER | Y | CNES Indicado |
| 47 | CD_CONVENIO | NUMBER | Y | Codigo do Convenio |
| 48 | NR_CPF_AUTORIZADOR_CLINICO | VARCHAR2 | Y | CPF CGC Autorizador |
| 49 | DT_AUTORIZACAO | DATE | Y | Data de autorizac?o |
| 50 | DT_AGENDAMENTO | DATE | Y | Data de agendamento |
| 51 | CD_TIP_ACOM | NUMBER | Y | Tipo de acomodac?o |
| 52 | DT_ALTA | DATE | Y | Data da alta |
| 53 | CD_MOT_ALTA | NUMBER | Y | Motivo da alta |
| 54 | NR_CPF_MEDICO_ALTA | VARCHAR2 | Y | Medico que deu alta |
| 55 | CD_CID_ALTA | VARCHAR2 | Y | CID da Alta |
| 56 | TP_AUTORIZACAO_AUTOMATICA | VARCHAR2 | Y | Autorizac?o automatica |
| 57 | DS_MOTIVO_CANCELAMENTO | VARCHAR2 | Y | Descric?o do Motivo de Cancelamento |
| 58 | CD_MOTIVO_REJEICAO | NUMBER | Y | Motivo de Rejeic?o |
| 59 | DS_MOTIVO_REJEICAO | VARCHAR2 | Y | Descric?o do Motivo de Rejeic?o |

---

## MVINTEGRA.INTEGRA_ENTRADA_LANC_CONTA
> Tabela responsavel em importar informac?es de cobranca, lancamentos, na conta do paciente - FFCV

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INTEGRA_ENTRADA_LANC_CONTA | NUMBER | N | Identificac?o da linha do registro |
| 2 | TP_INTEGRACAO | VARCHAR2 | N | Identifica o Status atual do registro |
| 3 | DS_ERRO | VARCHAR2 | Y | Descric?o do erro (caso o campo TP_INTEGRACAO seja igual a "E") |
| 4 | DT_INTEGRACAO | DATE | N | Data em que o registro foi disponibilizado na tabela de integrac?o |
| 5 | DT_INTEGRACAO_MV2000 | DATE | Y | Data em que o registro foi efetivamente integrado (processado) |
| 6 | TP_MOVIMENTO | VARCHAR2 | N | Identifica o tipo de ac?o que devera ser tomada para o registro: I-Inclus?o, A-Alterac?o e E-Excl... |
| 7 | TP_REGISTRO | VARCHAR2 | N | Identifica o tipo de registro |
| 8 | CD_FILIAL_INTEGRA | VARCHAR2 | N | Codigo da empresa no outro sistema (caso o outro sistema trabalhe com o processo Multi-Empresa) |
| 9 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da empresa no MV2000i |
| 10 | CD_MVTO | NUMBER | Y | Codigo da movimentac?o de origem |
| 11 | TP_MVTO | VARCHAR2 | Y | Tipo da movimentac?o de origem |
| 12 | CD_ITMVTO | NUMBER | Y | Codigo do item da movimentac?o de origem |
| 13 | CD_ATENDIMENTO | NUMBER | Y | Codigo do atendimento |
| 14 | CD_CON_PLA | NUMBER | Y | Codigo do plano do convenio |
| 15 | CD_CONVENIO | NUMBER | Y | Codigo do convenio |
| 16 | DT_LANCAMENTO | DATE | Y | Data do lancamento do item |
| 17 | HR_LANCAMENTO | DATE | Y | Hora de lancamento do item |
| 18 | QT_LANCAMENTO | NUMBER | Y | Quantidade de lancamento do item |
| 19 | VL_PERCENTUAL_MULTIPLA | NUMBER | Y | Valor do percentual de cobranca |
| 20 | VL_UNITARIO | NUMBER | Y | Valor unitario. Caso o item seja recalculado, informar zeros. |
| 21 | VL_FILME_UNITARIO | NUMBER | Y | Valor do filme |
| 22 | VL_ACRESCIMO | NUMBER | Y | Valor do acrescimo |
| 23 | VL_DESCONTO | NUMBER | Y | Valor do desconto |
| 24 | CD_GRU_FAT | NUMBER | Y | Codigo do grupo de faturamento |
| 25 | CD_PRO_FAT | VARCHAR2 | Y | Codigo do procedimento |
| 26 | CD_PRESTADOR | NUMBER | Y | Codigo do prestador |
| 27 | VL_HONORARIO_UNITARIO | NUMBER | Y | Valor de honorario do item |
| 28 | VL_OPERACIONAL_UNITARIO | NUMBER | Y | Valor operacional do item |
| 29 | VL_PERCENTUAL_PACIENTE | NUMBER | Y | Valor do percentual a ser pago pela paciente. Ao informar cria uma conta particular |
| 30 | VL_TOTAL_CONTA | NUMBER | Y | Valor total do item. Caso o item seja recalculado, informar zeros. |
| 31 | NR_GUIA | VARCHAR2 | Y | Informac?es de guias (senha). Ao informar sera criada uma guia de procedimento |
| 32 | QT_CH_UNITARIO | NUMBER | Y | Quantidade de CH's |
| 33 | TP_PAGAMENTO | VARCHAR2 | Y | Tipos de pagamento: P - Produc?o (Fatura e Repassa); C - Credenciado (N?o Fatura e N?o Repassa); ... |
| 34 | CD_SETOR_PRODUZIU | NUMBER | Y | Codigo do setor que realizou |
| 35 | CD_SETOR | NUMBER | Y | Codigo do setor |
| 36 | SN_HORARIO_ESPECIAL | VARCHAR2 | Y | Informa de horario especial |
| 37 | DT_SESSAO | DATE | Y | Data de sess?o |
| 38 | SN_PERTENCE_PACOTE | VARCHAR2 | Y | Informa de lanca como pacote |
| 39 | DS_OBSERVACAO | VARCHAR2 | Y | Observac?es |
| 40 | CD_ATI_MED | VARCHAR2 | Y | Codigo da atividade medica do prestador |
| 41 | CD_INTEGRA_PAI | NUMBER | Y | Codigo de controle para saber qual o registro PAI do registro atual |

---

## MVINTEGRA.INTEGRA_ENTRADA_MATERIAIS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INTEGRA_ENTRADA_MATERIAIS | NUMBER | N | Codigo sequencial de identificac?o do registro |
| 2 | CD_TIPO_MOVIMENTO | VARCHAR2 | Y | Tipo do movimento |
| 3 | CD_TIPO_ENTRADA | VARCHAR2 | Y | Tipo de entrada |
| 4 | DT_INTEGRA | VARCHAR2 | Y |  |
| 5 | SN_INTEGRA | VARCHAR2 | Y |  |
| 6 | CD_EMPRESA | NUMBER | Y |  |
| 7 | CD_FORNECEDOR | NUMBER | Y | Codigo do fornecedor |
| 8 | DT_ENTRADA | VARCHAR2 | Y | Data de entrada do documento |
| 9 | HR_ENTRADA | VARCHAR2 | Y | Hora de entrada do documento |
| 10 | DT_EMISSAO | VARCHAR2 | Y | Data de emiss?o do documento |
| 11 | VL_TOTAL | NUMBER | Y | Valor total |
| 12 | VL_DESCONTO | NUMBER | Y | Valor do desconto |
| 13 | VL_IMPOSTO | NUMBER | Y | Valor do Imposto |
| 14 | VL_PERCENTUAL_DESCONTO | NUMBER | Y |  |
| 15 | VL_PERCENTUAL_IMPOSTO | NUMBER | Y |  |
| 16 | VL_OUTROS | NUMBER | Y | Outros valores |
| 17 | TP_FRETE | VARCHAR2 | Y | Tipo de frete |
| 18 | VL_FRETE | NUMBER | Y | Valor do frete |
| 19 | VL_PERC_FRETE | NUMBER | Y | Valor percentual do frete |
| 20 | SN_INCLUSAO_NOTA | VARCHAR2 | Y | identifica se o frete esta incluso ou nao na nota fiscal |
| 21 | NR_CONHECIMENTO_FRETE | VARCHAR2 | Y | Numero do conhecimento do frete |
| 22 | DT_VENCIMENTO_FRETE | VARCHAR2 | Y | Data de vencimento do frete |
| 23 | CD_FORNECEDOR_FRETE | NUMBER | Y | Codigo do fornecedor do frete |
| 24 | CD_PORTADOR_FRETE | NUMBER | Y | Codigo do portador do frete |
| 25 | DT_VENCIMENTO | VARCHAR2 | Y | Data de vencimento da parcela |
| 26 | NR_PARCELA | NUMBER | Y | Numero da parcela |
| 27 | VL_PARCELA | NUMBER | Y | Valor da parcela |
| 28 | CD_PRODUTO | NUMBER | Y | Codigo do produto |
| 29 | CD_UNID_PRO | NUMBER | Y |  |
| 30 | QT_ENTRADA | NUMBER | Y | Quantidade de entrada |
| 31 | VL_UNITARIO | NUMBER | Y | Valor unitario |
| 32 | CD_LOTE | VARCHAR2 | Y | Codigo do lote do produto |
| 33 | DT_VALIDADE | VARCHAR2 | Y | Data de validade do produto |
| 34 | QT_ENT_PRO | NUMBER | Y |  |
| 35 | TP_ERRO | VARCHAR2 | Y |  |
| 36 | DS_ERRO | VARCHAR2 | Y | Descric?o do erro, caso o campo TP_INTEGRACAO seja igual a "E" |
| 37 | VL_CUSTO_REAL | NUMBER | Y | Custo real |
| 38 | TP_INTEGRACAO | VARCHAR2 | N | Identifica o status da integrac?o |
| 39 | DT_INTEGRACAO | DATE | N | Data de inclus?o do registro nesta tabela de integrac?o |
| 40 | DT_INTEGRACAO_MV2000 | DATE | Y | Data de integrac?o com o MV2000i |
| 41 | TP_MOVIMENTO | VARCHAR2 | N | Tipo de movimentac?o |
| 42 | TP_REGISTRO | VARCHAR2 | N | Identificac?o do tipo de registro |
| 43 | CD_FILIAL_INTEGRA | VARCHAR2 | N | Codigo de identificac?o da empresa no sistema de terceiros |
| 44 | TP_MVTO_ESTOQUE | VARCHAR2 | Y | Tipo do movimento no estoque |
| 45 | NR_DOCUMENTO | VARCHAR2 | Y | Numero do documento |
| 46 | NR_SERIE_INTEGRA | VARCHAR2 | Y |  |
| 47 | NR_CGC_CPF | NUMBER | Y | Numero do CNPJ |
| 48 | SN_CONTABILIZA | VARCHAR2 | Y |  |
| 49 | SN_IMPORTADA_FNFI | VARCHAR2 | Y |  |
| 50 | CD_TIP_DOC | VARCHAR2 | Y |  |
| 51 | SN_IMPORTADO_FINANCEIRO | VARCHAR2 | Y |  |
| 52 | CD_MULTI_EMPRESA | NUMBER | N | Codigo do convenio |
| 53 | CD_USUARIO | VARCHAR2 | Y |  |
| 54 | TP_ENTREGA | VARCHAR2 | Y | Tipo de entrada |
| 55 | CD_ESTOQUE | NUMBER | Y | Codigo do estoque |
| 56 | CD_UNI_PRO | NUMBER | Y | Codigo da unidade do produto no MV2000i |
| 57 | CD_CUSTO_MEDIO | NUMBER | Y |  |
| 58 | CD_ITENT_PRO_INTEGRA | NUMBER | Y |  |
| 59 | DS_MARCA | VARCHAR2 | Y | Marca do produto |
| 60 | DT_ENT_LOTE | DATE | Y |  |
| 61 | SN_ULTIMO_INTEGRA | VARCHAR2 | Y |  |
| 62 | NR_DOCUMENTO_DEVOLUCAO | VARCHAR2 | Y | Numero do documento de identificac?o na devoluc?o |
| 63 | NR_SERIE_DEVOLUCAO | VARCHAR2 | Y | Numero de Serie do documento de identificac?o na devoluc?o |
| 64 | CD_ENTRADA_PRODUTO | NUMBER | Y | Codigo de identificac?o da entrada do documento no MV2000i |
| 65 | CD_ENTRADA_PRODUTO_INTEGRA | VARCHAR2 | Y | Codigo de identificac?o da entrada do documento no MV2000i (de-para) |
| 66 | CD_ORDEM_COMPRA | NUMBER | Y | Codigo da Ordem de Compras |
| 67 | CD_JUSTIFICATIVA | NUMBER | Y | Codigo da justifica por falta da ordem de compras |
| 68 | CD_JUSTIFICATIVA_INTEGRA | VARCHAR2 | Y | Codigo da justifica por falta da ordem de compras (de-para) |
| 69 | CD_SETOR_APLICACAO | NUMBER | Y | Codigo do setor usado para aplicac?o direta |
| 70 | CD_SETOR_APLICACAO_INTEGRA | VARCHAR2 | Y | Codigo do setor usado para aplicac?o direta (de-para) |
| 71 | CD_TIPO_DOCUMENTO | VARCHAR2 | Y | Tipo do documento |
| 72 | TP_NOTA_FISCAL | VARCHAR2 | Y | Tipo de nota fiscal: P-Produto, S-Servico |
| 73 | CD_ESTOQUE_INTEGRA | VARCHAR2 | Y | Codigo do estoque (de-para) |
| 74 | CD_FORNECEDOR_INTEGRA | VARCHAR2 | Y | Codigo do fornecedor (de-para) |
| 75 | CD_CFOP | NUMBER | Y | Codigo CFOP |
| 76 | CD_CFOP_INTEGRA | VARCHAR2 | Y | Codigo CFOP (de-para) |
| 77 | NR_CFOP | VARCHAR2 | Y | Numero CFOP |
| 78 | NR_SERIE | VARCHAR2 | Y | Serie do documento |
| 79 | VL_BASE_SUBSTITUICAO_TRIB | NUMBER | Y | Valor base para substituic?o tributaria |
| 80 | VL_CALC_SUBSTITUICAO_TRIB | NUMBER | Y | Valor para calculo da base para substituic?o tributaria |
| 81 | VL_PERC_DESCONTO | NUMBER | Y | Percentual de desconto |
| 82 | VL_PERC_IMPOSTO | NUMBER | Y | Percentual do Imposto |
| 83 | VL_PERC_ICMS | NUMBER | Y | Percentual do ICMS |
| 84 | VL_ICMS | NUMBER | Y | Valor do ICMS |
| 85 | VL_PERC_ISS | NUMBER | Y | Percentual de ISS |
| 86 | VL_ISS | NUMBER | Y | Valor do ISS |
| 87 | CD_FORNECEDOR_FRETE_INTEGRA | VARCHAR2 | Y | Codigo do fornecedor do frete (de-para) |
| 88 | CD_PORTADOR_FRETE_INTEGRA | VARCHAR2 | Y | Codigo do portador do frete (de-para) |
| 89 | NR_SERIE_FRETE | VARCHAR2 | Y | Numero da serie da nota do frete |
| 90 | CD_PRODUTO_INTEGRA | VARCHAR2 | Y | Codigo do produto (de-para) |
| 91 | DS_PRODUTO | VARCHAR2 | Y | Descric?o do produto |
| 92 | CD_UNIDADE | VARCHAR2 | Y | Codigo da UNIDADE |
| 93 | DS_UNIDADE | VARCHAR2 | Y | Unidade do produto |
| 94 | VL_FATOR | NUMBER | Y | Faltor de convers?o |
| 95 | QT_LOTE | NUMBER | Y | Quantidade do lote |
| 96 | DS_OBSERVACAO | VARCHAR2 | Y | Observac?o |
| 97 | SN_DESTRAVA_REGISTRO | VARCHAR2 | Y | Define se o registro deve ou nao fica travado |
| 98 | CD_ATENDIMENTO | NUMBER | Y | Codigo do atendimento do paciente |
| 99 | SN_CONSIGNADO | VARCHAR2 | Y | Identifica se a nota fiscal e de produtos consiganados |
| 100 | CD_INTEGRA_PAI | NUMBER | Y | Codigo de controle para saber qual o registro PAI do registro atual |
| 101 | CD_ORDEM_COMPRAS_INTEGRA | VARCHAR2 | Y | Codigo da Ordem de Compras no sistema externo |
| 102 | CD_ATENDIMENTO_INTEGRA | VARCHAR2 | Y | Codigo do Atendimento no sistema externo |
| 103 | CD_MOTIVO | NUMBER | Y | Codigo do Motivoo de Devoluc?o |
| 104 | CD_DEVOLUCAO | NUMBER | Y | Codigo da Devoluc?o da NF |
| 105 | CD_DEVOLUCAO_INTEGRA | VARCHAR2 | Y | Codigo da Devoluc?o no sistema externo |
| 106 | CD_TIPO_DOCUMENTO_INTEGRA | VARCHAR2 | Y | Tipo do documento (DE-PARA) |
| 107 | DS_DATA_MATRIX | VARCHAR2 | Y | Informac?o para armazenar a etiqueta datamatrix do produto |
| 108 | CD_ID | NUMBER | Y | Identificador do sequencial da integrac?o de xml |

---

## MVINTEGRA.INTEGRA_ENTRADA_PRONTUAR_ATEND
> Tabela de integrac?o para cadastro de respostas do paciente durante o atendimento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INTEGRA_ENTRADA_ATENDIME | NUMBER | N | C digo seq encial da tabela de integra  o (Devera ser alimentado obrigatoriamente pelo objeto de ... |
| 2 | CD_INTEGRA_PAI | NUMBER | N | Coluna usada para definir hierarquia. Para os registros com a coluna TP_REGISTRO diferente de ?00... |
| 3 | TP_INTEGRACAO | VARCHAR2 | N | Identifica o status da integra  o. |
| 4 | DS_ERRO | VARCHAR2 | Y | Descri  o do erro, caso o campo tp_integracao seja igual a ?E? |
| 5 | DT_INTEGRACAO | DATE | N | Data de inclus o do registro nesta tabela de integra  o |
| 6 | DT_INTEGRACAO_MV2000 | DATE | Y | Data de Integrac?o com o MV2000i? |
| 7 | TP_MOVIMENTO | VARCHAR2 | N | Tipo de movimento: |
| 8 | TP_REGISTRO | VARCHAR2 | N | Identificac?o do tipo de registro existente: |
| 9 | CD_MULTI_EMPRESA | NUMBER | N | C?digo da empresa, no MV2000i, responsavel pelo registro. |
| 10 | CD_MULTI_EMPRESA_INTEGRA | VARCHAR2 | Y | C?digo da empresa que esta integrando com o MV2000i |
| 11 | CD_FILIAL_INTEGRA | VARCHAR2 | N | C?digo da empresa do sistema que esta integrando. |
| 12 | CD_CLASSIFICACAO_RISCO | NUMBER | N | C?digo da classificac?o |
| 13 | CD_COR_REFERENCIA | NUMBER | N | c?digo da cor de refer ncia (vide arquivos DE/PARA) |
| 14 | CD_SINTOMA_AVALIACAO | NUMBER | N | C?digo do sintoma da avalia  o (vide arquivos DE/PARA) |
| 15 | CD_PROTOCOLO | NUMBER | N | C?digo do protocolo (vide arquivos DE/PARA) |
| 16 | CD_ATENDIMENTO | NUMBER | N | C?digo do atendimento |
| 17 | VL_ESCORE | NUMBER | Y | Escore da classificac?o |
| 18 | DS_CLASSIF_OBSERVACAO | VARCHAR2 | Y |  |
| 19 | DH_FECHAMENTO | DATE | N | Data e hora do fechamento |
| 20 | DS_QUEIXAPRINCIPAL | VARCHAR2 | Y | Descric?o da queixa principal |
| 21 | DT_INICIO_TRIAGEM | DATE | Y | Data de in!cio da triagem |
| 22 | DT_FIM_TRIAGEM | DATE | Y | Data de fim da triagem |
| 23 | CD_TRIAGEM | NUMBER | Y | C?digo da triagem |
| 24 | DT_REGISTRO | DATE | Y | Data do registro |
| 25 | DT_REFERENCIA | DATE | Y | Data da referencia |
| 26 | VL_AFERIDO | NUMBER | Y | Valor aferido |
| 27 | CD_SINAL_VITAL | NUMBER | Y | C?digo do sinal vital (vide arquivos DE/PARA) |
| 28 | DS_PERGUNTA | VARCHAR2 | Y | Descric?o da pergunta |
| 29 | DS_COMPLEMT_AFERICAO | VARCHAR2 | Y | Dados Complementares da Aferic?o do Sinal Vital |
| 30 | NM_USUARIO | VARCHAR2 | Y | Nome do Usuario |

---

## MVINTEGRA.INTEGRA_ENTRADA_SERVICO
> Tabela para integrac?es de Saida de Servicos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INTEGRA_ENTRADA_SERVICO | NUMBER | N | Codigo sequencial da integrac?o |
| 2 | CD_INTEGRA_PAI | NUMBER | Y | Codigo de controle para saber qual o registro PAI do registro atual |
| 3 | TP_INTEGRACAO | VARCHAR2 | N | Identifica o status da interacao |
| 4 | DS_ERRO | VARCHAR2 | Y | Descricao do erro, caso o campo TP_INTEGRACAO seja igual a E |
| 5 | DT_INTEGRACAO | DATE | N | Data em que o registro foi disponibilizado na tabela de integracao |
| 6 | DT_INTEGRACAO_MV2000 | DATE | Y | Data em que ocorreu a integracao do registro com outro sistema |
| 7 | TP_MOVIMENTO | VARCHAR2 | N | Identifica o tipo do momento: I-Inclusao, A-Alteracao e E-Exclusao |
| 8 | TP_REGISTRO | VARCHAR2 | N | Tipo do registro |
| 9 | CD_FILIAL_INTEGRA | VARCHAR2 | N | Codigo da filial da empresa que esta se integrando |
| 10 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da empresa. Usado para ambientes multi-empresa. Se nao houver, preencher com 1 |
| 11 | CD_ESPECIALIDADE | NUMBER | Y | Codigo da especialidade de manutenc?o no sistema MV2000 |
| 12 | CD_ESPECIALIDADE_INTEGRA | VARCHAR2 | Y | Codigo da especialidade de manutenc?o no sistema externo |
| 13 | DS_ESPECIALIDADE | VARCHAR2 | Y | Descric?o da especialidade de manutenc?o |
| 14 | SN_ZELADORIA | VARCHAR2 | Y | Indica se a especialidade pertence ao setor de Zeladoria |
| 15 | CD_ESPECIE | NUMBER | Y | Codigo da Especie no sistema MV2000 |
| 16 | DS_ESPECIE | VARCHAR2 | Y | Descric?o da Especie |
| 17 | CD_ESPECIE_INTEGRA | VARCHAR2 | Y | Codigo da Especie no sistema externo |
| 18 | CD_CLASSE | NUMBER | Y | Codigo da Classe no sistema MV2000 |
| 19 | DS_CLASSE | VARCHAR2 | Y | Descric?o da Classe |
| 20 | CD_CLASSE_INTEGRA | VARCHAR2 | Y | Codigo da Classe no sistema externo |
| 21 | CD_SUB_CLASSE | NUMBER | Y | Codigo da Sub-Classe no sistema MV2000 |
| 22 | DS_SUB_CLASSE | VARCHAR2 | Y | Descric?o da Sub-Classe |
| 23 | CD_SUB_CLASSE_INTEGRA | VARCHAR2 | Y | Codigo da Sub-Classe no sistema externo |
| 24 | CD_SERVICO | NUMBER | Y | Codigo do Servico no sistema MV2000 |
| 25 | CD_SERVICO_INTEGRA | VARCHAR2 | Y | Codigo do Servico no sistema externo |
| 26 | DS_SERVICO | VARCHAR2 | Y | Descric?o do servico |
| 27 | VL_PRIORIDADE | NUMBER | Y | Valor da prioridade do servico |
| 28 | DS_UNIDADE_MEDIDA | VARCHAR2 | Y | Unidade de medida do servico |
| 29 | CD_SERVICO_DMS | NUMBER | Y | Codigo do Servico na DMS |
| 30 | CD_REDUZIDO | NUMBER | Y | Conta contabil reduzido no sistema MV2000 |
| 31 | DS_REDUZIDO | VARCHAR2 | Y | Descric?o da conta contabil |
| 32 | CD_REDUZIDO_INTEGRA | VARCHAR2 | Y | Conta contabil reduzido no sistema externo |
| 33 | CD_CONTA_CUSTO | NUMBER | Y | Conta de custo no sistema MV2000 |
| 34 | DS_CONTA_CUSTO | VARCHAR2 | Y | Descric?o da conta de custo |
| 35 | CD_CONTA_CUSTO_INTEGRA | VARCHAR2 | Y | Conta de custo no sistema externo |
| 36 | SN_TRIBUTAVEL | VARCHAR2 | Y | Indica se o servico gera tributos |
| 37 | QT_MAXIMA_HORA | NUMBER | Y | Quantidade maxima de horas para realizac?o do servico |
| 38 | QT_MAXIMA_MINUTO | NUMBER | Y | Quantidade maxima de minutos para realizac?o do servico |
| 39 | QT_MINIMA_HORA | NUMBER | Y | Quantidade minima de horas para realizar o servico |
| 40 | QT_MINIMA_MINUTO | NUMBER | Y | Quantidade minima de minutos para realizar o servico |
| 41 | TP_CATEGORIA | VARCHAR2 | Y | Prioridade da categoria do Servico |
| 42 | CD_OFICINA | NUMBER | Y | Codigo da oficina no sistema MV2000 |
| 43 | CD_OFICINA_INTEGRA | VARCHAR2 | Y | Codigo da oficina no sistema externo |
| 44 | DS_OFICINA | VARCHAR2 | Y | Descric?o da oficina |
| 45 | CD_MOTIVO_SERVICO | NUMBER | Y | Codigo do Motivo do Servico no sistema MV2000 |
| 46 | CD_MOTIVO_SERVICO_INTEGRA | VARCHAR2 | Y | Codigo do Motivo do Servico no sistema externo |
| 47 | DS_MOTIVO_SERVICO | VARCHAR2 | Y | Descric?o do Motivo do Servico |
| 48 | TP_MOTIVO_SERVICO | VARCHAR2 | Y | Tipo do Motivo de Servico |
| 49 | CD_TIPO_OS | NUMBER | Y | Codigo do Tipo da OS no sistema MV2000 |
| 50 | CD_TIPO_OS_INTEGRA | VARCHAR2 | Y | Codigo do Tipo da OS no sistema externo |
| 51 | DS_TIPO_OS | VARCHAR2 | Y | Descric?o do Tipo da OS |
| 52 | CD_SETOR | NUMBER | Y | Codigo do Setor no sistema MV2000 |
| 53 | CD_SETOR_INTEGRA | VARCHAR2 | Y | Codigo do Setor no sistema externo |
| 54 | DS_SETOR | VARCHAR2 | Y | Descric?o do Setor |
| 55 | CD_LOCALIDADE | NUMBER | Y | Codigo da Localidade no sistema MV2000 |
| 56 | CD_LOCALIDADE_INTEGRA | VARCHAR2 | Y | Codigo da Localidade no sistema externo |
| 57 | DS_LOCALIDADE | VARCHAR2 | Y | Descric?o da Localidade |
| 58 | NM_RESPONSAVEL | VARCHAR2 | Y | Nome do Responsavel |
| 59 | CD_ORDEM_SERVICO | NUMBER | Y | Codigo da Ordem de Servico no sistema MV2000 |
| 60 | CD_ORDEM_SERVICO_INTEGRA | VARCHAR2 | Y | Codigo da Ordem de Servico no sistema externo |
| 61 | DS_ORDEM_SERVICO | VARCHAR2 | Y | Descric?o da Ordem de Servico |
| 62 | SN_ORDEM_SERVICO_PRINCIPAL | VARCHAR2 | Y | Indica se a OS e a OS Principal |
| 63 | CD_ORDEM_SERVICO_PRINCIPAL | NUMBER | Y | Codigo da OS Pricipal no sistema MV2000 |
| 64 | CD_ORDEM_SERVICO_PRINC_INTEGRA | VARCHAR2 | Y | Codigo da OS Principal no sistema externo |
| 65 | DT_PEDIDO | DATE | Y | Data do Pedido da Solicitac?o |
| 66 | DT_EXECUCAO | DATE | Y | Data de Execuc?o do Servico |
| 67 | DT_PREVISTA_EXECUCAO | DATE | Y | Data prevista para execuc?o do Servico |
| 68 | TP_LOCAL | VARCHAR2 | Y | Tipo da localidade do Servico - (I)nterna, (E)xterna |
| 69 | CD_FORNECEDOR | NUMBER | Y | Codigo do Fornecedor no sistema MV2000 |
| 70 | CD_FORNECEDOR_INTEGRA | VARCHAR2 | Y | Codigo do Fornecedor no sistema externo |
| 71 | NM_FORNECEDOR | VARCHAR2 | Y | Nome do Fornecedor |
| 72 | SN_IMPRESSO | VARCHAR2 | Y | Indica se a OS foi impressa |
| 73 | DT_IMPRESSAO | DATE | Y | Data em que a OS foi impressa |
| 74 | TP_SITUACAO | VARCHAR2 | Y | Situac?o da OS: A-Aberto, C-Concluido, N-N?o Atendido, M-Aguardando Material, E-Conserto Externo,... |
| 75 | CD_BEM | NUMBER | Y | Codigo do Bem no sistema MV2000 |
| 76 | CD_BEM_INTEGRA | VARCHAR2 | Y | Codigo do Bem no sistema externo |
| 77 | DS_BEM | VARCHAR2 | Y | Descric?o do Bem |
| 78 | DS_PLAQUETA | VARCHAR2 | Y | Descric?o da Plaqueta do Bem |
| 79 | NM_SOLICITANTE | VARCHAR2 | Y | Nome do solicitante da OS |
| 80 | DS_OBSERVACAO | LONG | Y | Observac?es sobre a Ordem de Servico |
| 81 | CD_ITEM_SOLICITACAO | NUMBER | Y | Codigo do Servico no sistema MV2000 |
| 82 | CD_ITEM_SOLICITACAO_INTEGRA | VARCHAR2 | Y | Codigo do Servico no sistema externo |
| 83 | CD_FUNCIONARIO | NUMBER | Y | Codigo do Funcionario no MV2000 que executara o Servico |
| 84 | CD_FUNCIONARIO_INTEGRA | VARCHAR2 | Y | Codigo do Funcionario no sistema externo que executara o Servico |
| 85 | NM_FUNCIONARIO | VARCHAR2 | Y | Nome do Funcionario que executara o Servico |
| 86 | SN_CHECK_LIST | VARCHAR2 | Y | Indica se o Servico devera ser executado |
| 87 | DT_INICIAL | DATE | Y | Data inicial do Servico |
| 88 | HR_INICIAL | DATE | Y | Hora inicial do Servico |
| 89 | DT_FINAL | DATE | Y | Data final do Servico |
| 90 | HR_FINAL | DATE | Y | Hora final do Servico |
| 91 | VL_TEMPO_GASTO_HORA | NUMBER | Y | Horas utilizadas na execuc?o do Servico |
| 92 | VL_TEMPO_GASTO_MINUTO | NUMBER | Y | Minutos utilizados na execuc?o do Servico |
| 93 | VL_EXTRA_HORA | NUMBER | Y | Quantidade de Hora Extra a pagar ao Funcionario |
| 94 | VL_EXTRA_MINUTO | NUMBER | Y | Quantidade de Minuto Extra a pagar ao Funcionario |
| 95 | NR_NOTA_FISCAL | NUMBER | Y | Numero da Nota Fiscal do servico externo |
| 96 | DT_ENVIO | DATE | Y | Data de Envio da OS para o servico externo |
| 97 | HR_ENVIO | DATE | Y | Hora de Envio da OS para o servico externo |
| 98 | DT_RECEBIMENTO | DATE | Y | Data de Recebimento da Nota Fiscal |
| 99 | HR_RECEBIMENTO | DATE | Y | Hora de Recebimento da Nota Fiscal |
| 100 | DT_FIM_GARANTIA | DATE | Y | Data do fim da Garantia |
| 101 | VL_TEMPO_HORA | NUMBER | Y | Quantidade de horas do servico |
| 102 | VL_TEMPO_MIN | NUMBER | Y | Quantidade de minutos do servico |
| 103 | VL_MAO_OBRA | NUMBER | Y | Valor da M?o de Obra do servico |
| 104 | VL_HORA | NUMBER | Y | Valor da hora de trabalho do funcionario |
| 105 | VL_HORA_EXTRA | NUMBER | Y | Valor da hora extra de trabalho do funcionario |
| 106 | VL_TOTAL | NUMBER | Y | Valor total cobrado na Nota Fiscal |
| 107 | QT_ITEM | NUMBER | Y | Quantidade do Item utilizado no servico |
| 108 | DS_ITEM | VARCHAR2 | Y | Descric?o do Item utilizado no Servico |
| 109 | DS_SERVICO_REALIZADO | VARCHAR2 | Y | Descric?o do servico realizado |
| 110 | CD_USUARIO | VARCHAR2 | Y | Codigo do usuario no sistema MV2000 |

---

## MVINTEGRA.INTEGRA_ENTRADA_SOLICIT_AGDM
> Tabela usada para integracao solicitac?es de agendamento usadas no processo de central de regulac?o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INTEGRA_ENT_SOL_AGDM | NUMBER | N | Codigo sequencial dos registros da integracao |
| 2 | TP_INTEGRACAO | VARCHAR2 | N | Identifica o status da interacao |
| 3 | DS_ERRO | VARCHAR2 | Y | Descricao do erro, caso o campo TP_INTEGRACAO seja igual a E |
| 4 | DT_INTEGRACAO | DATE | N | Data em que o registro foi disponibilizado na tabela de integracao |
| 5 | DT_INTEGRACAO_MV2000 | DATE | Y | Data em que ocorreu a integracao do registro com outro sistema |
| 6 | TP_MOVIMENTO | VARCHAR2 | N | Identifica o tipo do momento: I-Inclusao, A-Alteracao e E-Excluso |
| 7 | TP_REGISTRO | VARCHAR2 | N | Tipo do registro |
| 8 | CD_FILIAL_INTEGRA | VARCHAR2 | N | Codigo da filial da empresa que esta se integrando |
| 9 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da empresa. Usado para ambinetes multi-empresa. Senao houver, preencher com 1 |
| 10 | CD_SOLICITACAO_ATENDIMENTO | NUMBER | Y | Codigo de identificac?o da solicitac?o |
| 11 | DT_SOLICITACAO_ATENDIMENTO | DATE | Y | Data da solicitac?o |
| 12 | HR_SOLICITACAO_ATENDIMENTO | DATE | Y | Hora da solicitac?o |
| 13 | CD_ATENDIMENTO_ORIGEM | NUMBER | Y | Codigo do atendimento que originou a solicitac?o |
| 14 | CD_PRESTADOR | NUMBER | Y | Codigo do Prestador responsavel pelo atendimento do paciente |
| 15 | CD_PRESTADOR_INTEGRA | VARCHAR2 | Y | Codigo do Prestador no Sistema Destino |
| 16 | NM_PRESTADOR | VARCHAR2 | Y | Nome do Prestador |
| 17 | CD_PROC_ATENDIMENTO | VARCHAR2 | Y | Codigo do procedimento do atendimento |
| 18 | CD_PROC_ATENDIMENTO_INTEGRA | VARCHAR2 | Y | Codigo do procedimento do atendimento no outro sistema |
| 19 | DS_PROC_ATENDIMENTO | VARCHAR2 | Y | Descric?o do procedimento do atendimento |
| 20 | CD_CID_ATENDIMENTO | VARCHAR2 | Y | Codigo do CID no atendimento |
| 21 | CD_SETOR | NUMBER | Y | Setor  (centro de custo) |
| 22 | CD_SETOR_INTEGRA | VARCHAR2 | Y | Setor  (centro de custo) no outro sistema |
| 23 | DS_SETOR | VARCHAR2 | Y | Descric?o do setor |
| 24 | CD_ESPECIALIDADE | VARCHAR2 | Y | Codigo da Especialidade |
| 25 | CD_ESPECIALIDADE_INTEGRA | VARCHAR2 | Y | Codigo da Especialidade no outro sistema |
| 26 | DS_ESPECIALIDADE | VARCHAR2 | Y | Descric?o da especialidade |
| 27 | CD_PACIENTE | NUMBER | Y | Codigo de Identificac?o do Paciente (Prontuario) |
| 28 | CD_PACIENTE_INTEGRA | VARCHAR2 | Y | Codigo do paciente no outro sistema |
| 29 | DS_PACIENTE | VARCHAR2 | Y | Nome do paciente |
| 30 | TP_SOLICITACAO | VARCHAR2 | Y | Tipo de solicitacao: A - atendimento - T - Transferencia |
| 31 | TP_PRIORIDADE | VARCHAR2 | Y | Tipo de prioridade: N-normal - U-urgencia |
| 32 | CD_INTEGRA_PAI | NUMBER | Y | Codigo de controle para saber qual o registro PAI do registro atual |
| 33 | CD_MULTI_EMPRESA_INTEGRA | VARCHAR2 | Y | Codigo da empresa (DE-PARA) |
| 34 | CD_SOLICITACAO | NUMBER | Y | Codigo da solicitac?o |
| 35 | CD_SOLICITACAO_INTEGRA | NUMBER | Y | Codigo da solicitac?o (DE-PARA) |
| 36 | DT_SOLICITACAO | DATE | Y | Data da solicitac?o |
| 37 | HR_SOLICITACAO | DATE | Y | Hora da solicitac?o |
| 38 | CD_PROCEDIMENTO | VARCHAR2 | Y | Codigo do procedimento |
| 39 | CD_PROCEDIMENTO_INTEGRA | VARCHAR2 | Y | Codigo do procedimento (DE-PARA) |
| 40 | CD_IT_SOLICITACAO_AGENDAMENTO | NUMBER | Y |  |
| 41 | CD_CID | VARCHAR2 | Y | Codigo do CID |
| 42 | NM_PACIENTE | VARCHAR2 | Y | Nome do paciente |
| 43 | TP_SITUACAO | VARCHAR2 | Y | Situac?o do paciente |
| 44 | NM_MEDICO_REGULADOR | VARCHAR2 | Y | Nome medico regulador |
| 45 | DH_AUTORIZACAO | DATE | Y | Data/Hora da autorizac?o da solicitac?o |
| 46 | DS_HOSPITAL_DESTINO | VARCHAR2 | Y | Nome do hospital onde o paciente sera atendido |
| 47 | DS_POSTO_DESTINO | VARCHAR2 | Y |  |
| 48 | DS_SINAIS_SINTOMAS | VARCHAR2 | Y | Sinais e sintomas do paciente |
| 49 | DS_JUSTIFICATIVA_SOLICITACAO | VARCHAR2 | Y | Justificativa da solicitacao |
| 50 | DS_RESULTADO_DIAGNOSTICO | VARCHAR2 | Y | Resultado/diagnostico do paciente |

---

## MVINTEGRA.INTEGRA_ENTRADA_SOLIC_SADT
> Tabela de integrac?od e exames de imagens e laboratoriais

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INTEGRA_ENTRADA_SOLIC_SADT | NUMBER | N | Campo de identificac?o (ID) do registro |
| 2 | TP_INTEGRACAO | VARCHAR2 | N | Define o tipo de integrac?o |
| 3 | DS_ERRO | VARCHAR2 | Y | Apresenta mensagem de erro |
| 4 | DT_INTEGRACAO | DATE | N | Data em que o registro foi disponibilizado na integrac?o |
| 5 | DT_INTEGRACAO_MV2000 | DATE | Y | Data em que o registro foi integrado com o MV2000 |
| 6 | TP_MOVIMENTO | VARCHAR2 | N | Identifica o tipo de movimento |
| 7 | TP_REGISTRO | VARCHAR2 | N | Identifica o tipo de registro |
| 8 | CD_FILIAL_INTEGRA | VARCHAR2 | N | Coduigo da filial de integrac?o |
| 9 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da multi-emrpesa |
| 10 | CD_PEDIDO | NUMBER | Y | Codigo do pedido de exame |
| 11 | TP_PEDIDO | VARCHAR2 | Y | Tipo de peido de exame |
| 12 | DT_PEDIDO | DATE | Y | Data do pedido de exame |
| 13 | HR_PEDIDO | DATE | Y | Hora do pedido do exame |
| 14 | TP_SOLICITACAO | VARCHAR2 | Y | Identifica o tipo da solicitac?o |
| 15 | DS_OBSERVACAO | VARCHAR2 | Y | Observac?o do pedido de exame |
| 16 | CD_PRESTADOR_SOLICITANTE | NUMBER | Y | Codigo de cadastro do prestador solicitante |
| 17 | CD_PRESTADOR_SOLIC_INTEGRA | VARCHAR2 | Y | Codigo de cadastro do prestador no sistema do terceiro |
| 18 | NM_PRESTADOR_SOLICITANTE | VARCHAR2 | Y | Nome do prestador solicitante |
| 19 | NR_CONSELHO_SOLICITANTE | VARCHAR2 | Y | Numero do conselho do prestador solicitante |
| 20 | TP_CONSELHO_SOLICITANTE | VARCHAR2 | Y | Tipo do conselho do prestador solicitante |
| 21 | CD_SETOR_SOLICITANTE | NUMBER | Y | Codigo do setor solicitante |
| 22 | CD_SETOR_SOLIC_INTEGRA | VARCHAR2 | Y | Codigo do setor solicitante no sistema do terceiro |
| 23 | NM_SETOR_SOLICITANTE | VARCHAR2 | Y | Nome do setor solicitante |
| 24 | NR_CONTROLE | NUMBER | Y | Numero de controle |
| 25 | DS_LOCAL_EXAME | VARCHAR2 | Y | Local do exame |
| 26 | CD_CONVENIO | NUMBER | Y | Codigo do convenio |
| 27 | CD_CONVENIO_INTEGRA | VARCHAR2 | Y | Codigo do convenio no sistema do terceiro |
| 28 | NM_CONVENIO | VARCHAR2 | Y | Nome do convenio |
| 29 | CD_PLANO | NUMBER | Y | Codigo do plano |
| 30 | CD_PLANO_INTEGRA | VARCHAR2 | Y | Codigo do plano no sistema do terceiro |
| 31 | DS_PLANO | VARCHAR2 | Y | Nome do plano |
| 32 | NR_CARTEIRA | VARCHAR2 | Y | Nuumero da carteira do paciente |
| 33 | DT_VALIDADE_CARTEIRA | DATE | Y | Data de validade da carteira do paciente |
| 34 | NR_GUIA | VARCHAR2 | Y | Numero de guia |
| 35 | DT_VALIDADE_GUIA | DATE | Y | Data de valida da guia |
| 36 | CD_SENHA | VARCHAR2 | Y | Numero da senha |
| 37 | CD_PACIENTE | NUMBER | Y | Codigo unico do paciente |
| 38 | CD_PACIENTE_INTEGRA | VARCHAR2 | Y | Codigo unico do paciente no sistema do terceiro |
| 39 | CD_ATENDIMENTO | NUMBER | Y | Codigo do atendimento do paciente |
| 40 | NM_PACIENTE | VARCHAR2 | Y | Nome do paciente |
| 41 | DT_NASCIMENTO | DATE | Y | Data de nascimento do paciente |
| 42 | NR_PESO | NUMBER | Y | Peso do paciente |
| 43 | NR_ALTURA | NUMBER | Y | Altura do paciente |
| 44 | TP_SEXO | VARCHAR2 | Y | Sexo do paciente |
| 45 | CD_LEITO | NUMBER | Y | Codigo do leito |
| 46 | DS_LEITO | VARCHAR2 | Y | Descric?o do leito |
| 47 | DS_LEITO_RESUMIDO | VARCHAR2 | Y | Descric?o resumida do leito |
| 48 | DS_ENFERMARIA | VARCHAR2 | Y | Enfermaria |
| 49 | CD_ITEM_PEDIDO | NUMBER | Y | Codigo unico do item solicitado |
| 50 | CD_EXAME | NUMBER | Y | Codigo do exame |
| 51 | CD_EXAME_INTEGRA | VARCHAR2 | Y | Codigo do exame do sistema do terceiro |
| 52 | DS_EXAME | VARCHAR2 | Y | Descric?o do exame |
| 53 | CD_EXAME_FATURAMENTO | VARCHAR2 | Y | Codigo de faturamento do exame |
| 54 | DS_EXAME_FATURAMENTO | VARCHAR2 | Y | Descric?o de faturamento do exame |
| 55 | DS_REGIAO | VARCHAR2 | Y | Regi?o onde devera ser realizado o exame no paciente (topografia) |
| 56 | DT_ENTREGA | DATE | Y | Data de entrega do exame |
| 57 | CD_LABORATORIO | NUMBER | Y | Codigo do laboratorio |
| 58 | CD_LABORATORIO_INTEGRA | VARCHAR2 | Y | Codigo do laboratorio no sistema do terceiro |
| 59 | DS_LABORATORIO | VARCHAR2 | Y | Descric?o do laboratorio |
| 60 | CD_SETOR_EXECUTANTE | NUMBER | Y | Codigo do setor executante |
| 61 | CD_SETOR_EXECUTANTE_INTEGRA | VARCHAR2 | Y | Codigo do setor executante no sistema do terceiro |
| 62 | NM_SETOR_EXECUTANTE | VARCHAR2 | Y | Nome do setor executante |
| 63 | CD_MODALIDADE_EXAME | NUMBER | Y | Codigo da modalidade |
| 64 | DS_ESTACAO_DICOM | VARCHAR2 | Y | Descric?o da extac?o DICOM |
| 65 | DS_SIGLA_MODALIDADE_EXAME | VARCHAR2 | Y | Sigla da modalidade do exame |
| 66 | SN_IMAGEM_DISPONIVEL | VARCHAR2 | Y | Identifica se a imagem ja esta ou n?o disponivel |
| 67 | DT_IMAGEM_DISPONIVEL | DATE | Y | Data em que a imagem foi disponibilizada |
| 68 | CD_PRESTADOR_TECNICO | NUMBER | Y | Codigo do prestador tecnico |
| 69 | CD_PRESTADOR_TECNICO_INTEGRA | VARCHAR2 | Y | Codigo do prestador tecnico no sistema do terceiro |
| 70 | NM_PRESTADOR_TECNICO | VARCHAR2 | Y | Nome do prestador tecnico |
| 71 | NR_CONSELHO_TECNICO | VARCHAR2 | Y | Numero do conselho do prestador tecnico |
| 72 | TP_CONSELHO_TECNICO | VARCHAR2 | Y | Tipo do conselho do prestador tecnico |
| 73 | CD_INTEGRA_SEQUENCE_EXTERNA | NUMBER | Y | Codigo identificador de um processo no Sistema Externo (integrac?o) que esta associado a este reg... |
| 74 | CD_USUARIO_DIGITADOR | VARCHAR2 | Y | Identifica o usuario digitador do resultado do exame |
| 75 | CD_PRESTADOR_EXEC | NUMBER | Y | Codigo do Prestador que realizou o exame |
| 76 | DT_REALIZACAO | DATE | Y | Data da realizac?o do exame |
| 77 | DS_LAUDO | BLOB | Y | Texto do laudo de exames em formato BLOB |
| 78 | CD_INSUMO | VARCHAR2 | Y | Codigo do insumo |
| 79 | CD_INSUMO_INTEGRA | VARCHAR2 | Y | Codigo do insumo (de-para) |
| 80 | DS_INSUMO | VARCHAR2 | Y | Descric?o do insumo |
| 81 | TP_INSUMO | NUMBER | Y | Tipo do insumo |
| 82 | CD_UNIDADE | VARCHAR2 | Y | Codigo da unidade |
| 83 | CD_UNIDADE_INTEGRA | VARCHAR2 | Y | Codigo da unidade (de-para_ |
| 84 | DS_UNIDADE | VARCHAR2 | Y | Descric?o da unidade |
| 85 | VL_FATOR | NUMBER | Y | Fator de convers?o |
| 86 | QT_INSUMO | NUMBER | Y | Quantidde do insumo |
| 87 | CD_PEDIDO_INTEGRA | VARCHAR2 | Y | Codigo do Pedido no sistema externo |
| 88 | CD_ITEM_PEDIDO_INTEGRA | VARCHAR2 | Y | Codigo do Item do Pedido no sistema externo |
| 89 | CD_ATENDIMENTO_INTEGRA | VARCHAR2 | Y | Codigo do Atendimento no sistema externo |
| 90 | VL_PESO | NUMBER | Y | Peso |
| 91 | VL_ALTURA | NUMBER | Y | Altura |
| 92 | VL_AORTA | NUMBER | Y | Aorta |
| 93 | VL_ATRIO_ESQUERDO | NUMBER | Y | Atrio esquerdo |
| 94 | VL_VENTRICULO_DIREITO | NUMBER | Y | Ventriculo direito |
| 95 | VL_SEPTO_INTERVENTRICULAR | NUMBER | Y | Septo interventricular |
| 96 | VL_PAREDE_POSTERIOR | NUMBER | Y | Parede posterior |
| 97 | VL_DIAMETRO_DIASTOLICO | NUMBER | Y | Diametro diastolico |
| 98 | VL_DIAMETRO_SISTOLICO | NUMBER | Y | Diametro sistolico |
| 99 | VL_ATRIO_ESQUERDO_AORTA | NUMBER | Y | Atrio aorta |
| 100 | VL_SEPTO_PAREDE | NUMBER | Y | Septo parede |
| 101 | VL_DELTA_FRAC_ENCURT | NUMBER | Y | Delta frac encurt |
| 102 | VL_FRACAO | NUMBER | Y | Fracao |
| 103 | VL_MASSA | NUMBER | Y | Massa |
| 104 | VL_IND_MASSA | NUMBER | Y | Indice de massa |
| 105 | VL_RELACAO_VM | NUMBER | Y | Relacao vm |
| 106 | VL_SUPERFICIE_CORPOREA | NUMBER | Y | Superficie corporea |
| 107 | VL_FATOR_DIASTOLICO | NUMBER | Y | Fator diastolico |
| 108 | VL_FATOR_SISTOLICO | NUMBER | Y | Fator sistolico |
| 109 | CD_LAUDO | NUMBER | Y |  |
| 110 | CD_LAUDO_INTEGRA | VARCHAR2 | Y |  |
| 111 | DS_LAUDO_ECO | LONG | Y | Descric?o do laudo da EcoCardiograma |
| 112 | DS_CAMINHO_ARQUIVO_RESULTADO | VARCHAR2 | Y | Caminho absoluto para o arquivo de resultado |
| 113 | CD_INTEGRA_PAI | NUMBER | Y | Codigo de controle para saber qual o registro PAI do registro atual |
| 114 | TP_EXAME_PCMSO | VARCHAR2 | Y | Tipo do exame PCMSO |
| 115 | CD_USUARIO_PEDIDO | VARCHAR2 | Y | Codigo do usuario no MV2000 que esta realizando o pedido |
| 116 | SN_ESPERA_COLETA | VARCHAR2 | Y | Indicador de espera de coleta |
| 117 | DT_EXAME | DATE | Y | Data de realizac?o do exame |
| 118 | CD_POSTO_COLETA | NUMBER | Y | Codigo de identificac?o do Posto de Coleta |
| 119 | CD_POSTO_COLETA_INTEGRA | VARCHAR2 | Y | Codigo de identificac?o do Posto de Coleta (de-para) |
| 120 | DS_POSTO_COLETA_INTEGRA | VARCHAR2 | Y | Descric?o do Posto de Coleta |
| 121 | DT_AGENDAMENTO | DATE | Y | Data do agendamento do exame |
| 122 | HR_AGENDAMENTO | DATE | Y | Hora do agendamento do exames |
| 123 | DT_DURACAO | DATE | Y | Durac?o do exame |
| 124 | DS_LOCAL_REALIZACAO | VARCHAR2 | Y | Local de realizac?o do exame |
| 125 | CD_TIPO_ENTREGA | NUMBER | Y | Codigo do tipo da entrega |
| 126 | DS_TIPO_ENTREGA | VARCHAR2 | Y | Descric?o do tipo de entrega |
| 127 | DT_COLETA_PEDIDO | DATE | Y | Data da Coleta a ser realizada |
| 128 | HR_COLETA_PEDIDO | DATE | Y | Hora da Coleta a ser realizada |
| 129 | CD_COLETA_MATERIAL | NUMBER | Y | Codigo da Solicitac?o de Coleta. |
| 130 | CD_AMOSTRA | NUMBER | Y | Codigo Sequencial da Amostra. |
| 131 | CD_BANCADA | NUMBER | Y | Codigo da Bancada. |
| 132 | TP_SITUACAO | VARCHAR2 | Y | Situac?o da Amostra.A = Ativa; C = Cancelada; D = Distribuida |
| 133 | SN_COLETA | VARCHAR2 | Y | Flag que identifica se o material da amostra ja foi coletada. |
| 134 | DT_COLETA | DATE | Y | Data de realizac?o da coleta. |
| 135 | NR_ORDEM_COLETA | NUMBER | Y | Numero de ordem da amostra. |
| 136 | CD_AMOSTRA_PAI | NUMBER | Y | Codigo da Amostra pai, para tubos coletivos. |
| 137 | CD_TUBO_COLETA | NUMBER | Y | Codigo do Tubo de Coleta. |
| 138 | CD_MATERIAL | NUMBER | Y | Codigo do Material colhido. |
| 139 | DT_RECOLETA | DATE | Y | Data em que foi solicitada a recoleta da amostra |
| 140 | NR_ETIQUETA_EXTERNA | VARCHAR2 | Y | Numero da Etiqueta de Coleta Externa |
| 141 | SN_COLETA_SETOR | VARCHAR2 | Y | Flag que indica se a coleta foi colhida no Setor Solicitante. |
| 142 | DT_COLETA_SETOR | DATE | Y | Data em que a amostra teve sua coleta confirmada no setor solicitante. |
| 143 | HR_COLETA_SETOR | DATE | Y | Hora em que a amostra teve sua coleta confirmada no setor solicitante. |
| 144 | DS_MOTIVO | VARCHAR2 | Y | Motivo da exclus?o do laudo |
| 145 | NR_INCIDENCIAS | NUMBER | Y | Quantidades de incidencia cobrada |
| 146 | NR_FATURADO | NUMBER | Y | Quantidade a Faturar |
| 147 | SN_PENDENCIA_COLETA | VARCHAR2 | Y | Identifica se o item esta ou n?oo pendente de coleta. |
| 148 | CD_PRESTADOR_EXEC2 | NUMBER | Y | Codigo do Segundo Prestador que realizou o exame |
| 149 | DS_NOTIFICACAO_CRITICIDADE | VARCHAR2 | Y |  |
| 150 | SN_NOTIFICACAO_CRITICIDADE | CHAR | Y |  |

---

## MVINTEGRA.INTEGRA_ENTRADA_SOL_AGDM
> Tabela usada para integracao solicitac?es de agendamento usadas no processo de central de regulac?o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INTEGRA_ENTRADA_SOL_AGDM | NUMBER | N | Codigo sequencial dos registros da integracao |
| 2 | TP_INTEGRACAO | VARCHAR2 | N | Identifica o status da interacao |
| 3 | DS_ERRO | VARCHAR2 | Y | Descricao do erro, caso o campo TP_INTEGRACAO seja igual a E |
| 4 | DT_INTEGRACAO | DATE | N | Data em que o registro foi disponibilizado na tabela de integracao |
| 5 | DT_INTEGRACAO_MV2000 | DATE | Y | Data em que ocorreu a integracao do registro com outro sistema |
| 6 | TP_MOVIMENTO | VARCHAR2 | N | Identifica o tipo do momento: I-Inclusao, A-Alteracao e E-Excluso |
| 7 | TP_REGISTRO | VARCHAR2 | N | Tipo do registro |
| 8 | CD_FILIAL_INTEGRA | VARCHAR2 | N | Codigo da filial da empresa que esta se integrando |
| 9 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da empresa. Usado para ambinetes multi-empresa. Senao houver, preencher com 1 |
| 10 | CD_SOLICITACAO_ATENDIMENTO | NUMBER | Y | Codigo de identificac?o da solicitac?o |
| 11 | DT_SOLICITACAO_ATENDIMENTO | DATE | Y | Data da solicitac?o |
| 12 | HR_SOLICITACAO_ATENDIMENTO | DATE | Y | Hora da solicitac?o |
| 13 | CD_ATENDIMENTO_ORIGEM | NUMBER | Y | Codigo do atendimento que originou a solicitac?o |
| 14 | CD_PRESTADOR | NUMBER | Y | Codigo do Prestador responsavel pelo atendimento do paciente |
| 15 | CD_PRESTADOR_INTEGRA | VARCHAR2 | Y | Codigo do Prestador no Sistema Destino |
| 16 | NM_PRESTADOR | VARCHAR2 | Y | Nome do Prestador |
| 17 | CD_PROC_ATENDIMENTO | VARCHAR2 | Y | Codigo do procedimento do atendimento |
| 18 | CD_PROC_ATENDIMENTO_INTEGRA | VARCHAR2 | Y | Codigo do procedimento do atendimento no outro sistema |
| 19 | DS_PROC_ATENDIMENTO | VARCHAR2 | Y | Descric?o do procedimento do atendimento |
| 20 | CD_CID_ATENDIMENTO | VARCHAR2 | Y | Codigo do CID no atendimento |
| 21 | CD_SETOR | NUMBER | Y | Setor  (centro de custo) |
| 22 | CD_SETOR_INTEGRA | VARCHAR2 | Y | Setor  (centro de custo) no outro sistema |
| 23 | DS_SETOR | VARCHAR2 | Y | Descric?o do setor |
| 24 | CD_ESPECIALIDADE | VARCHAR2 | Y | Codigo da Especialidade |
| 25 | CD_ESPECIALIDADE_INTEGRA | VARCHAR2 | Y | Codigo da Especialidade no outro sistema |
| 26 | DS_ESPECIALIDADE | VARCHAR2 | Y | Descric?o da especialidade |
| 27 | CD_PACIENTE | NUMBER | Y | Codigo de Identificac?o do Paciente (Prontuario) |
| 28 | CD_PACIENTE_INTEGRA | VARCHAR2 | Y | Codigo do paciente no outro sistema |
| 29 | DS_PACIENTE | VARCHAR2 | Y | Nome do paciente |
| 30 | TP_SOLICITACAO | VARCHAR2 | Y | Tipo de solicitacao: A - atendimento - T - Transferencia |
| 31 | TP_PRIORIDADE | VARCHAR2 | Y | Tipo de prioridade: N-normal - U-urgencia |
| 32 | CD_INTEGRA_PAI | NUMBER | Y | Codigo de controle para saber qual o registro PAI do registro atual |
| 33 | CD_MULTI_EMPRESA_INTEGRA | VARCHAR2 | Y | Codigo da empresa (DE-PARA) |
| 34 | CD_SOLICITACAO | NUMBER | Y | Codigo da solicitac?o |
| 35 | CD_SOLICITACAO_INTEGRA | NUMBER | Y | Codigo da solicitac?o (DE-PARA) |
| 36 | DT_SOLICITACAO | DATE | Y | Data da solicitac?o |
| 37 | HR_SOLICITACAO | DATE | Y | Hora da solicitac?o |
| 38 | CD_PROCEDIMENTO | VARCHAR2 | Y | Codigo do procedimento |
| 39 | CD_PROCEDIMENTO_INTEGRA | VARCHAR2 | Y | Codigo do procedimento (DE-PARA) |
| 40 | CD_IT_SOLICITACAO_AGENDAMENTO | NUMBER | Y |  |
| 41 | CD_CID | VARCHAR2 | Y | Codigo do CID |
| 42 | NM_PACIENTE | VARCHAR2 | Y | Nome do paciente |
| 43 | TP_SITUACAO | VARCHAR2 | Y | Situac?o do paciente |
| 44 | NM_MEDICO_REGULADOR | VARCHAR2 | Y | Nome medico regulador |
| 45 | DH_AUTORIZACAO | DATE | Y | Data/Hora da autorizac?o da solicitac?o |
| 46 | DS_HOSPITAL_DESTINO | VARCHAR2 | Y | Nome do hospital onde o paciente sera atendido |
| 47 | DS_POSTO_DESTINO | VARCHAR2 | Y |  |
| 48 | DS_SINAIS_SINTOMAS | VARCHAR2 | Y | Sinais e sintomas do paciente |
| 49 | DS_JUSTIFICATIVA_SOLICITACAO | VARCHAR2 | Y | Justificativa da solicitacao |
| 50 | DS_RESULTADO_DIAGNOSTICO | VARCHAR2 | Y | Resultado/diagnostico do paciente |

---

## MVINTEGRA.INTEGRA_ENTRADA_TARIFADOR
> Tabela de integrac?o para importac?o do txt de tarifac?o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INTEGRA_ENTRADA_TARIFADOR | NUMBER | N | Codigo sequencial do registro de importac?o |
| 2 | TP_MOVIMENTO | VARCHAR2 | N | Status identificador do evento ocorrido: I - Inclui; A - Altera; E - Exclui |
| 3 | TP_INTEGRACAO | VARCHAR2 | N | Status de integrac?o para o registro: A ? Aguardando); T ? Transportado; E ? Erro; P ? Processando |
| 4 | DS_ERRO | VARCHAR2 | Y | Descric?o de erro na importac?o do registro |
| 5 | DT_INTEGRACAO | DATE | N | Data de importac?o do registro |
| 6 | DT_INTEGRACAO_MV2000 | DATE | Y | Data de importac?o do registro no MV2000 |
| 7 | CD_FILIAL_INTEGRA | NUMBER | N | Codigo da filial de integrac?o |
| 8 | NR_RAMAL | VARCHAR2 | Y | Codigo do ramal da ligac?o telefonica |
| 9 | DT_LIGACAO | DATE | Y | Data da ligac?o telefonica |
| 10 | HR_LIGACAO | DATE | Y | Hora da ligac?o telefonica |
| 11 | DS_TIPO_LIGACAO_TARIFADOR | VARCHAR2 | Y | Codigo do tipo de ligac?o telefonica |
| 12 | QT_LIGACAO_MINUTO | NUMBER | Y | Durac?o em minutos da ligac?o telefonica |
| 13 | QT_LIGACAO_SEGUNDO | NUMBER | Y | Durac?o em segundos da ligac?o telefonica |
| 14 | NR_DDD | VARCHAR2 | Y | Codigo do DDD de destino da ligac?o telefonica |
| 15 | NR_DDI | VARCHAR2 | Y | Codigo do DDI de destino da ligac?o telefonica |
| 16 | NR_TELEFONE | VARCHAR2 | Y | Numero do telefone de destino da ligac?o telefonica |
| 17 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da empresa onde foi executada a ligac?o telefonica |
| 18 | CD_ATENDIMENTO | NUMBER | Y | Codigo do atendimento no qual foi executada a ligac?o telefonica |
| 19 | CD_INTEGRA_PAI | NUMBER | Y | Codigo de controle para saber qual o registro PAI do registro atual |

---

## MVINTEGRA.INTEGRA_ENT_AGEND_CIRURGICO
> Tabela responsavel em importar pre-agendamento cirurgico

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INTEGRA_ENT_AGEND_CIRURGIA | NUMBER | N | Codigo sequencial do registro integrado |
| 2 | TP_INTEGRACAO | VARCHAR2 | N | Identifica o status da integrac?o |
| 3 | DS_ERRO | VARCHAR2 | Y | Descric?o de erro, caso o campo TP_INTEGRAC?O seja igual a "E" |
| 4 | DT_INTEGRACAO | DATE | N | Data da inclus?o do registro na tabela de integrac?o |
| 5 | DT_INTEGRACAO_MV2000 | DATE | Y | Data de integracao do registro com o MV2000i |
| 6 | TP_MOVIMENTO | VARCHAR2 | N | Tipo do movimento no estoque |
| 7 | TP_REGISTRO | VARCHAR2 | N | Identifica o tipo de registro |
| 8 | CD_FILIAL_INTEGRA | VARCHAR2 | N | Codigo da empresa no sistema que esta se integrando |
| 9 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da empresa |
| 10 | CD_MULTI_EMPRESA_INTEGRA | VARCHAR2 | Y | Codigo de-para da empresa |
| 11 | CD_PRE_INTERNACAO | NUMBER | Y | Codigo do pre-agendamento da cirurgia no MV2000 |
| 12 | CD_PRE_INTERNACAO_INTEGRA | VARCHAR2 | Y | Codigo de-para do pre-agendamento da cirurgia |
| 13 | DT_PEDIDO | DATE | Y | Data do pedido |
| 14 | CD_CONVENIO | NUMBER | Y | Codigo do convenio do paciente no MV2000 |
| 15 | CD_CONVENIO_INTEGRA | VARCHAR2 | Y | Codigo de-para do convenio do paciente |
| 16 | CD_PLANO | NUMBER | Y | Codigo do plano do paciente no MV2000 |
| 17 | CD_PLANO_INTEGRA | VARCHAR2 | Y | Codigo de-para do plano do paciente |
| 18 | CD_PACIENTE | NUMBER | Y | Codigo do Paciente no MV2000 |
| 19 | CD_PACIENTE_INTEGRA | VARCHAR2 | Y | Codigo de-para do Paciente |
| 20 | NM_PACIENTE | VARCHAR2 | Y | Nome do paciente |
| 21 | DS_EMAIL_PACIENTE | VARCHAR2 | Y | Email do paciente |
| 22 | DS_OBSERVACAO | VARCHAR2 | Y | Observac?es do pre-agendamento cirurgico |
| 23 | IDADE_PACIENTE | NUMBER | Y | Idade do paciente |
| 24 | TP_IDADE | VARCHAR2 | Y | Tipo  idade do paciente |
| 25 | TP_SEXO | VARCHAR2 | Y | Sexo do paciente |
| 26 | NR_FONE_MOVEL_PACIENTE | VARCHAR2 | Y | Numero do telefone movel do paciente |
| 27 | NR_FONE_FIXO_PACIENTE | VARCHAR2 | Y | Numero do telefone fixo do paciente |
| 28 | NR_FONE_COMERCIAL_PACIENTE | VARCHAR2 | Y | Numero do telefone comercial do paciente |
| 29 | DS_GRUPO_SANGUINEO | VARCHAR2 | Y | Grupo sanguineo do paciente |
| 30 | TP_INTERNACAO | VARCHAR2 | Y | Tipo da internacao |
| 31 | DS_INTERNACAO | VARCHAR2 | Y | Descricao do tipo da internacao |
| 32 | DT_SUGESTAO_CIRURGIA | DATE | Y | Data de sugestao da cirurgia |
| 33 | DT_TEMPO_PREVISTO | DATE | Y | Tempo previso da cirurgia |
| 34 | SN_SANGUE_PARA_PACIENTE | VARCHAR2 | Y | Necessita de sangue para o paciente |
| 35 | SN_CTI_APOS_CIRURGIA | VARCHAR2 | Y | Necessita UTI apos cirurgia |
| 36 | CD_TIPO_ANESTESIA | NUMBER | Y | Codigo do tipo da anestesia no MV2000 |
| 37 | CD_TIPO_ANESTESIA_INTEGRA | VARCHAR2 | Y | Codigo de-para do tipo da anestesia |
| 38 | SN_CONGELACAO | VARCHAR2 | Y | Necessita congelacao |
| 39 | CD_ESPECIALIDADE | NUMBER | Y | Codigo especialidade no MV2000 |
| 40 | CD_ESPECIALIDADE_INTEGRA | VARCHAR2 | Y | Codigo de-para especialidade |
| 41 | NM_USUARIO_PRE_INTERNACAO | VARCHAR2 | Y | Usuario registro pre-agendamento cirurgico |
| 42 | NM_USUARIO_CANCELA_AGENDA | VARCHAR2 | Y | Usuario cancelamento pre-agendamento |
| 43 | DT_CANCELA_AGENDA | DATE | Y | Data cancelamento pre-agendamento |
| 44 | DS_CANCELAMENTO | VARCHAR2 | Y | Descricao do cancelamento |
| 45 | STATUS | VARCHAR2 | Y | Status do pre-agendamento |
| 46 | CD_PRODUTO_AGEND | NUMBER | Y | Codigo de identificacao do produto x pre-agendamento no MV2000 |
| 47 | CD_PRODUTO_AGEND_INTEGRA | VARCHAR2 | Y | Codigo de-para de identificacao do produto x pre-agendamento |
| 48 | CD_PRODUTO | NUMBER | Y | Codigo do produto no MV2000 |
| 49 | CD_PRODUTO_INTEGRA | VARCHAR2 | Y | Codigo de-para do produto |
| 50 | DS_PRODUTO | VARCHAR2 | Y | Descricao do produto |
| 51 | DS_UNIDADE | VARCHAR2 | Y | Unidade do produto |
| 52 | QTD_PRODUTO | NUMBER | Y | Quantidade necessaria |
| 53 | CD_FORNECEDOR | NUMBER | Y | Codigo do fornecedor no MV2000 |
| 54 | CD_FORNECEDOR_INTEGRA | VARCHAR2 | Y | Codigo de-para do fornecedor |
| 55 | NM_FORNECEDOR | VARCHAR2 | Y | Nome do fornecedor |
| 56 | CD_PRESTADOR | NUMBER | Y | Codigo do Prestador no MV2000 |
| 57 | CD_PRESTADOR_INTEGRA | VARCHAR2 | Y | Codigo de-para do Prestador |
| 58 | NM_PRESTADOR | VARCHAR2 | Y | Nome do prestador |
| 59 | CD_PRE_INT_CIRURGIA | NUMBER | Y | Codigo de identificacao do relacionamento cirurgia x pre-agendamento no MV2000 |
| 60 | CD_PRE_INT_CIRURGIA_INTEGRA | VARCHAR2 | Y | Codigo de-para de identificacao do relacionamento cirurgia x pre-agendamento no MV2000 |
| 61 | CD_CIRURGIA | NUMBER | Y | Codigo da cirurgia no MV2000 |
| 62 | CD_CIRURGIA_INTEGRA | VARCHAR2 | Y | Codigo de-para da cirurgia |
| 63 | DS_CIRURGIA | VARCHAR2 | Y | Descric?o da cirurgia |
| 64 | SN_PRINCIPAL | VARCHAR2 | Y | Informa se a cirurgia e a principal |
| 65 | CD_ATIVIDADE_MED | VARCHAR2 | Y | Codigo da atividade medica do prestador associado a cirurgia no MV2000 |
| 66 | CD_ATIVIDADE_MED_INTEGRA | VARCHAR2 | Y | Codigo de-para da atividade medica do prestador associado a cirurgia |
| 67 | DS_ATIVIDADE_MED | VARCHAR2 | Y | Descric?o da atividade medica |
| 68 | CD_EQUIPAMENTO | NUMBER | Y | Codigo do equipamento no MV2000 |
| 69 | CD_EQUIPAMENTO_INTEGRA | VARCHAR2 | Y | Codigo de-para do equipamento |
| 70 | DS_EQUIPAMENTO | VARCHAR2 | Y | Descric?o do equipamento |
| 71 | QTD_EQUIPAMENTO | NUMBER | Y | Quantidade do equipamento |
| 72 | CD_INTEGRA_PAI | NUMBER | Y | Codigo de controle para saber qual o registro PAI do registro atual |

---

## MVINTEGRA.INTEGRA_ENT_CAD_MATERIAIS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INTEGRA_ENT_CAD_MATERIAIS | NUMBER | N |  |
| 2 | TP_INTEGRACAO | VARCHAR2 | N |  |
| 3 | DS_ERRO | VARCHAR2 | Y |  |
| 4 | DT_INTEGRACAO | DATE | N |  |
| 5 | DT_INTEGRACAOMV2000 | DATE | Y |  |
| 6 | TP_MOVIMENTO | VARCHAR2 | N |  |
| 7 | TP_REGISTRO | VARCHAR2 | N |  |
| 8 | CD_FILIAL_INTEGRA | VARCHAR2 | N |  |
| 9 | CD_ESPECIE | NUMBER | Y |  |
| 10 | CD_ESPECIE_INTEGRA | VARCHAR2 | Y |  |
| 11 | DS_ESPECIE | VARCHAR2 | Y |  |
| 12 | CD_CLASSE | NUMBER | Y |  |
| 13 | CD_CLASSE_INTEGRA | VARCHAR2 | Y |  |
| 14 | DS_CLASSE | VARCHAR2 | Y |  |
| 15 | SN_PROD_PERMANENTE | VARCHAR2 | Y |  |
| 16 | CD_PRODUTO | NUMBER | Y |  |
| 17 | CD_PRODUTO_INTEGRA | VARCHAR2 | Y |  |
| 18 | DS_PRODUTO | VARCHAR2 | Y |  |
| 19 | DS_PRODUTO_RESUMIDO | VARCHAR2 | Y |  |
| 20 | SN_MESTRE | VARCHAR2 | Y |  |
| 21 | CD_PRODUTO_TEM | NUMBER | Y |  |
| 22 | CD_PRODUTO_TEM_INTEGRA | VARCHAR2 | Y | Codigo do produto mestre cadastrado (de-para) |
| 23 | SN_MOVIMENTACAO | VARCHAR2 | Y |  |
| 24 | SN_CONTROLE_VALIDADE | VARCHAR2 | Y |  |
| 25 | SN_LOTE | VARCHAR2 | Y |  |
| 26 | SN_MEDICAMENTO | VARCHAR2 | Y |  |
| 27 | SN_BLOQUEIO_COMPRA | VARCHAR2 | Y |  |
| 28 | SN_KIT | VARCHAR2 | Y |  |
| 29 | DS_ESPECIFICACAO | VARCHAR2 | Y |  |
| 30 | NR_ORDEM_PREFERENCIA | NUMBER | Y |  |
| 31 | DS_UNI_PRO_INTREGA | VARCHAR2 | Y |  |
| 32 | CD_CONDICAO_PAGAMENTO | NUMBER | Y |  |
| 33 | CD_CONDICAO_PAGAMENTO_INTEGRA | VARCHAR2 | Y |  |
| 34 | DS_CONDICAO_PAGAMENTO | VARCHAR2 | Y |  |
| 35 | CD_INTEGRA_SEQUENCE_EXTERNA | NUMBER | Y |  |
| 36 | CD_ESTOQUE | NUMBER | Y | Codigo do estoque do produto cadastrado |
| 37 | CD_ESTOQUE_INTEGRA | VARCHAR2 | Y | Codigo do estoque do produto cadastrado (de-para) |
| 38 | DS_ESTOQUE | VARCHAR2 | Y | Descric?o do estoque do produto cadastrado |
| 39 | NR_PARCELAS | NUMBER | Y | Numero das parcelas da condic?o de pagamento |
| 40 | QT_DIAS_PARCELA | NUMBER | Y | Quantidade de dias da parcela da condic?o de pagamento |
| 41 | VL_PERCENTUAL_PARCELA | NUMBER | Y | Valor percentual da parcelas da condic?o de pagamento |
| 42 | CD_UNI_PRO | NUMBER | Y | Codigo da unidade_produto cadastrado |
| 43 | CD_UNI_PRO_INTEGRA | VARCHAR2 | Y | Codigo da unidade_produto cadastrado (de-para) |
| 44 | CD_SUB_CLASSE | NUMBER | Y | Codigo da Subclasse do Produto |
| 45 | CD_SUB_CLASSE_INTEGRA | VARCHAR2 | Y | Codigo da Subclasse do Produto (de-para) |
| 46 | DS_SUB_CLASSE | VARCHAR2 | Y | Descric?o da Subclasse do Produto |
| 47 | SN_BLOQUEADO_COMPRAS | VARCHAR2 | Y | Informa se o item esta autorizado  a ser comprado |
| 48 | SN_CONTROLA_LOTE | VARCHAR2 | Y | Informe se o item sera controlado por lote |
| 49 | SN_CONTROLA_VALIDADE | VARCHAR2 | Y | Informar se o item sera controlado por data de vencimento |
| 50 | SN_AUTORIZADO_MOVIMENTO | VARCHAR2 | Y | Informa se o item esta autorizado a ser movimentado |
| 51 | SN_PERMITE_DISPENSA_PACIENTE | VARCHAR2 | Y | Informa se o item podera ser dispensado diretamente para um paciente |
| 52 | SN_PADRONIZADO | VARCHAR2 | Y | Informa se o produto e ou n?o padronizado: S-Sim, padronizado, N-N?o padronizado |
| 53 | SN_CONSIGNADO | VARCHAR2 | Y | Informa se o produto e ou n?o um produto consignado: S-Sim, e um produto consignado, N-N?o, n?o e... |
| 54 | SN_INVASIVO | VARCHAR2 | Y | Informa se a forma da administrac?o do item no paciente e de forma invasivva ou n?o: Sim ou N?o |
| 55 | TP_SEXO | VARCHAR2 | Y | Informa qual o sexo que podera consumir/utilizar o item cadastrado: F-Feminino, M-Masculino ou A-... |
| 56 | TP_UNIDADE | VARCHAR2 | Y | Tipo da unidade/embalagem: 1-Auxiliar1, 2-Auxiliar2, 3-Auxiliar3, 4-Auxiliar4 , G-Gerencial, B-Co... |
| 57 | SN_MEDICAMENTO_CONTROLADO | VARCHAR2 | Y | Informa se o medicamento e ou n?o controlado |
| 58 | SN_PERMITE_DISPENSA_SETOR | VARCHAR2 | Y | Informar se o item podera ser dispensado diretamente para um centro de custos |
| 59 | SN_PERMITE_TRANSF_ESTOQUE | VARCHAR2 | Y | Informa se o item podera ser transferido entre estoque |
| 60 | SN_CUSTO_DIRETO | VARCHAR2 | Y | Informa se o item representa um custo direto |
| 61 | TP_BEM | VARCHAR2 | Y | Tipo de bem: ME-Medicamento Consumivel, MA-Material Consumivel, OP-Ortese e Protese, N-N?o consum... |
| 62 | SN_DESTRAVA_REGISTRO | VARCHAR2 | Y | Define se o registro deve ou n?o ficar travado |
| 63 | DT_INTEGRACAO_MV2000 | DATE | Y | Data em que o registro foi processado pelo MV2000i |
| 64 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da empresa onde devera ser processado o registro |
| 65 | CD_PRODUTO_MESTRE | NUMBER | Y | Codigo do produto mestre, se esse produto for um filho |
| 66 | CD_PRODUTO_MESTRE_INTEGRA | VARCHAR2 | Y | Codigo do produto mestre (de-para) |
| 67 | DS_PRODUTO_MESTRE | VARCHAR2 | Y | Descric?o do produto mestre |
| 68 | CD_UNIDADE | VARCHAR2 | Y | Codigo da unidade |
| 69 | CD_UNIDADE_INTEGRA | VARCHAR2 | Y | Codigo da unidade (de-para) |
| 70 | DS_UNIDADE | VARCHAR2 | Y | Descric?o da unidade do produto |
| 71 | CD_EMBALAGEM | VARCHAR2 | Y | Codigo da embalagem (unidade) do produto |
| 72 | CD_EMBALAGEM_INTEGRA | VARCHAR2 | Y | Codigo da embalagem (unidade) do produto (de-para) |
| 73 | DS_EMBALAGEM | VARCHAR2 | Y | Descric?o da embalagem (unidade) do produto |
| 74 | VL_FATOR | NUMBER | Y | Fator da embalagem/unidade |
| 75 | CD_PRODUTO_UNIFICADO | VARCHAR2 | Y | Codigo unificado do produto, como: SICAM, SIAF, SIAGEM e SIAFEM |
| 76 | CD_CLASSIFICACAO_ABC | VARCHAR2 | Y | Classificac?o ABC: A-Cuidado Rigido, B-Cuidado Normal e C-Cuidado Moderado |
| 77 | CD_CLASSIFICACAO_XYZ | VARCHAR2 | Y | Classificac?o XYZ: X-Pouco Importante, Y-Importante, Z-Muito importante |
| 78 | QT_ESTOQUE_MAXIMO | NUMBER | Y | Quantidade do estoque maximo |
| 79 | QT_ESTOQUE_MININO | NUMBER | Y | Quantidade de estoque minimo |
| 80 | QT_PONTO_PEDIDO | NUMBER | Y | Quantidade de estoque de ponto de pedido |
| 81 | VL_TEMPO_REPOSICAO | NUMBER | Y | Tempo de reposic?o |
| 82 | CD_LISTA_MEDICAMENTO | VARCHAR2 | Y | Codigo da lista a qual pertence o medicamneto (PORTARIA 344) |
| 83 | SN_MEDICAMENTE | VARCHAR2 | Y | Informa se o item cadastrado e ou n?o um medicamento: S-Sim, e um medicamento ou N-N?o, n?o e um ... |
| 84 | CD_DCB | VARCHAR2 | Y | Codigo da Denominac?o Comum Brasileira (DCB) |
| 85 | CD_ATIVIDADE_PRODUTO | NUMBER | Y | Codigo de atividade do produto |
| 86 | TP_SITUACAO_TRIBUTARIA | VARCHAR2 | Y | Situac?o tributaria do item: T-Tributado, NN-N?o Incidente, FF-Substituicao tributaria e II-Insento |
| 87 | CD_PRO_FAT | VARCHAR2 | Y | Codigo do procedimento relacionado, se item tiver relacionamento com procedimento de faturamento |
| 88 | CD_PRO_FAT_INTEGRA | VARCHAR2 | Y | Codigo do procedimento relacionado (de-para) |
| 89 | DS_PRO_FAT | VARCHAR2 | Y | Descric?o do procedimento de faturamento |
| 90 | VL_FATOR_PRO_FAT | NUMBER | Y | Fator de convers?o em relac?o ao procedimneto de faturamento |
| 91 | NR_ORDEM_DE_PREFERENCIA | NUMBER | Y | Ordem de preferencia da condic?o de pagamento |
| 92 | CD_FORMA_CALCULO_CONDICAO | VARCHAR2 | Y | Formula de calculo da condic?o de pagamento |
| 93 | CD_BASE_CALCULO_CONDICAO | VARCHAR2 | Y | Base de calculo da condic?o de pagamento |
| 94 | CD_INTEGRA_PAI | NUMBER | Y | Codigo de controle para saber qual o registro PAI do registro atual |
| 95 | TP_UTILIZACAO_ETIQUETA | VARCHAR2 | Y | Tipo da utilizac?o de etiqueta. S - Sistema, F - Fornecedor, N - N?o utiliza, A - Ambos, L - Forn... |
| 96 | SN_CURVA_ABC | VARCHAR2 | Y | Indica se o produto utiliza a Curva ABC |
| 97 | NR_CRF_LABORATORIO | VARCHAR2 | Y | Codigo do conselho regional de farmacia do responsavel pelo produto no fabricante |
| 98 | NR_ORDEM_IMPRESSAO | VARCHAR2 | Y | Informe a ordem de impress?o em que o produto deve obedecer no relatorio de Solicitac?es de Produto |
| 99 | TP_CARATER | VARCHAR2 | Y | Carater da droga(I-Irrigante ou V-Vesicante) |
| 100 | TP_CLASSIFICACAO_TRIBUTARIA | VARCHAR2 | Y | Classificac?o Tributaria do produto. T - Tributado, NN - N?o Incidente, FF - Substituic?o Tributa... |
| 101 | CD_LOCALIZACAO | VARCHAR2 | Y | Codigo da Localizac?o onde se encontra o produto |
| 102 | CD_LABORATOR | VARCHAR2 | Y | Codigo do laboratorio fabricante |
| 103 | VL_PERC_DESCONTO | NUMBER | Y | Percentual de desconto do fabricante |
| 104 | DT_VALIDADE_REGISTRO | DATE | Y | Data de validade do registro do Protudo no Org?o Regulador |
| 105 | CD_REGISTRO | VARCHAR2 | Y | Registro do Protudo no Org?o Regulador. |
| 106 | CD_LABORATOR_INTEGRA | VARCHAR2 | Y | Codigo do Laboratorio no sistema externo |
| 107 | NM_LABORATOR | VARCHAR2 | Y | Nome do Laboratorio Fabricante |
| 108 | TP_ORIGEM | VARCHAR2 | Y | I - Importado, N - Nacional |
| 109 | DS_PAIS_ORIGEM | VARCHAR2 | Y | Pais de Origem do Laboratorio Fabricante |

---

## MVINTEGRA.INTEGRA_ENT_HEMODERIVADO
> Tabela responsavel em realizar a integracao de solicitacoes de nutricao e dietoterapia

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INTEGRA_ENT_HEMODERIVADO | NUMBER | N | Codigo sequencial dos registros da integrac?o |
| 2 | TP_INTEGRACAO | VARCHAR2 | N | Identifica o status da integrac?o |
| 3 | DS_ERRO | VARCHAR2 | Y | Descric?o do erro, caso o campo TP_INTEGRACAO seja igual a E |
| 4 | DT_INTEGRACAO | DATE | N | Data em que o registro foi disponibilizado na tabela de integrac?o |
| 5 | DT_INTEGRACAO_MV2000 | DATE | Y | Data em que ocorreu a integrac?odo registro com o outro sistema |
| 6 | TP_MOVIMENTO | VARCHAR2 | N | Indica o tipo do resgistro: I-Iclus?o, A-Alterac?o e E-Exclus?o |
| 7 | TP_REGISTRO | VARCHAR2 | N | Tipo do regsitro |
| 8 | CD_FILIAL_INTEGRA | VARCHAR2 | N | Codigo da filial da empresa ao qual se esta integrando |
| 9 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da empresa, usado para ambientes multi-empresa |
| 10 | CD_SOLICITACAO | NUMBER | Y | Codigio da solicitac?o do hemoderivado |
| 11 | CD_SOLICITACAO_INTEGRA | VARCHAR2 | Y | Codigo da solicitac?o do Hemoderivado (de-para) |
| 12 | DT_SOLICITACAO | DATE | Y | Data da solicitac?o do hemoderivado |
| 13 | CD_ATENDIMENTO | NUMBER | Y | Codigo do atendimento do paciente |
| 14 | CD_PACIENTE | NUMBER | Y | Codigo do paciente |
| 15 | CD_PACIENTE_INTEGRA | VARCHAR2 | Y | Codigo do paciente, em caso de paciente integrado |
| 16 | NM_PACIENTE | VARCHAR2 | Y | Nome do paciente |
| 17 | DT_NASCIMENTO | DATE | Y | Data de nascimento do paciente |
| 18 | CD_LEITO | NUMBER | Y | Codigo do leito, onde o paciente se encontra |
| 19 | DS_LEITO | VARCHAR2 | Y | Descric?o do leito, onde o paciente se encontra |
| 20 | DS_LEITO_RESUMIDO | VARCHAR2 | Y | Descric?o resumida, onde o paciente se encontra |
| 21 | DS_ENFERMAGEM | VARCHAR2 | Y | Descric?o da enfermaria |
| 22 | CD_PRESTADOR_SOLICITANTE | NUMBER | Y | Codigo do prestador solicitante |
| 23 | CD_PRESTADOR_SOLIC_INTEGRA | VARCHAR2 | Y | Codigo do prestrador solicitante, em caso de prestadores integrados |
| 24 | NM_PRESTADOR_SOLICITANTE | VARCHAR2 | Y | Nome do prestador solicitante |
| 25 | NR_CONSELHO_SOLICITANTE | VARCHAR2 | Y | Codigo do conselho do prestador solicitante |
| 26 | TP_CONSELHO_SOLICITANTE | VARCHAR2 | Y | Tipo do conselho do prestador |
| 27 | CD_SETOR_SOLICITANTE | NUMBER | Y | Codigo do setor solicitante |
| 28 | CD_SETOR_SOLIC_INTEGRA | VARCHAR2 | Y | Codigo do setor solicitante, em caso de setores integrados |
| 29 | NM_SETOR_SOLICITANTE | VARCHAR2 | Y | Nome do setor solicitante |
| 30 | CD_ITEM_SOLICITACAO | NUMBER | Y | Id do item solicitado |
| 31 | CD_ITEM_SOLICITACAO_INTEGRA | VARCHAR2 | Y | Id do item solicitado (de-para) |
| 32 | CD_HEMODERIVADO | NUMBER | Y | Codigo do hemoderivado solicitado |
| 33 | CD_HEMODERIVADO_INTEGRA | NUMBER | Y | Codigo do hemoderivado solicitado, em caso de hemoderivado integrado |
| 34 | DS_HEMODERIVADO | VARCHAR2 | Y | Descric?o do hemoderivado |
| 35 | CD_PROCEDIMENTO | VARCHAR2 | Y | Codigo do procedimento de faturamento |
| 36 | CD_PROCEDIMENTO_INTEGRA | VARCHAR2 | Y | Codigo do procedimento de faturamento (de-para) |
| 37 | DS_PROCEDIMENTO | VARCHAR2 | Y | Descric?o do codigo do procedimento de faturamento |
| 38 | DT_REALIZADO | DATE | Y | Data da realizac?o do procedimento |
| 39 | HR_REALIZADO | DATE | Y | Hora da realizac?o do procedimento |
| 40 | DS_UNIDADE | VARCHAR2 | Y | Unidade de medida do hemoderivado |
| 41 | QT_SOLICITADO | NUMBER | Y | Quantidade de hemoderivado solicitado |
| 42 | QT_REALIZADO | NUMBER | Y | Quantodade de homoderivado realizado |
| 43 | NR_DIFEP | VARCHAR2 | Y | Numero de identificac?o da unidade de hemoderivado |
| 44 | TP_LANCAMENTO | VARCHAR2 | Y | Tipo de lancamento: H-Hemocomponente, E-Exames, T-Taxas |
| 45 | CD_INTEGRA_PAI | NUMBER | Y | Codigo de controle para saber qual o registro PAI do registro atual |

---

## MVINTEGRA.INTEGRA_ENT_MOV_CONTABIL
> Tabela responsave pela integrac?o de movmentac?o contabil

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INTEGRA_ENT_MOV_CONTABIL | NUMBER | N | Codigo sequencial do registro de integrac?o |
| 2 | TP_INTEGRACAO | VARCHAR2 | N | Identifica o status da integrac?o |
| 3 | DS_ERRO | VARCHAR2 | Y | Descric?o do erro, caso o campo TP_INTEGRACAO seja igual a "E" |
| 4 | DT_INTEGRACAO | DATE | N | Data em que o registro foi disponibilizado na tabela de integrac?o |
| 5 | DT_INTEGRACAO_MV2000 | DATE | Y | Data em que ocorreu a integrac?o do registroo com o outro sistema |
| 6 | TP_MOVIMENTO | VARCHAR2 | N | Identifica o tipo do movimento: I-Inclus?o, A-Alterac?o e E-Exclus?o |
| 7 | TP_REGISTRO | VARCHAR2 | N | Tipo do registro |
| 8 | CD_FILIAL_INTEGRA | VARCHAR2 | N | Codigo da filial/empresa do outro sistema |
| 9 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da empresa no MV2000i |
| 10 | CD_LOTE | NUMBER | Y | Codigo do lote |
| 11 | DS_LOTE | VARCHAR2 | Y | Descric?o do lote |
| 12 | CD_LANCAMENTO | NUMBER | Y | Codigo do lancamento contabil |
| 13 | CD_LANCAMENTO_INTEGRA | VARCHAR2 | Y | Codigo do lancamento contabil (de-para) |
| 14 | CD_LANCAMENTO_SETOR | NUMBER | Y | Codigo do lancamento do setor |
| 15 | CD_LANCAMENTO_SETOR_INTEGRA | VARCHAR2 | Y | Codigo do lancamento do seotr (de-para) |
| 16 | CD_MOVIMENTO | NUMBER | Y | Codigo do movimento contabil |
| 17 | CD_MOVIMENTO_INTEGRA | VARCHAR2 | Y | Codigo do movimento contabil (de-para) |
| 18 | DT_INICIO_LOTE | DATE | Y | Data de inicio do lote |
| 19 | DT_FINAL_LOTE | DATE | Y | Data do final do lote |
| 20 | DT_LANCAMENTO | DATE | Y | Data do lancamento do movimento |
| 21 | CD_REDUZIDO_DEBITO | NUMBER | Y | Codigo reduzido da conta Contabil Debito |
| 22 | CD_REDUZIDO_DEBITO_INTEGRA | VARCHAR2 | Y | Codigo reduzido da conta Contabil Debito (De-para) |
| 23 | CD_CONTABIL_DEBITO | VARCHAR2 | Y | Codigo da conta contabil Debito |
| 24 | CD_CONTABIL_DEBITO_INTEGRA | VARCHAR2 | Y | Codigo da conta contabil Debito (de-para) |
| 25 | DS_CONTABIL_DEBITO | VARCHAR2 | Y | Descric?o da conta contabil Debito |
| 26 | CD_REDUZIDO_CREDITO | NUMBER | Y | Codigo reduzido da conta Contabil Credito |
| 27 | CD_REDUZIDO_CREDITO_INTEGRA | VARCHAR2 | Y | Codigo reduzido da conta Contabil Credito (de-para) |
| 28 | CD_CONTABIL_CREDITO | VARCHAR2 | Y | Codigo da conta coltabil Credito |
| 29 | CD_CONTABIL_CREDITO_INTEGRA | VARCHAR2 | Y | Codigo da conta contabil Credito |
| 30 | DS_CONTABIL_CREDITO | VARCHAR2 | Y | Descric?o da conta contabil Credito |
| 31 | CD_SETOR_DEBITO | NUMBER | Y | Codigo do setor Debito |
| 32 | CD_SETOR_DEBITO_INTEGRA | VARCHAR2 | Y | Codigo do setor Debito (de-para) |
| 33 | CD_SETOR_CREDITO | NUMBER | Y | Codigo do setor Credito |
| 34 | CD_SETOR_CREDITO_INTEGRA | VARCHAR2 | Y | Codigo do setor Credito (de-para) |
| 35 | CD_HISTORICO_PADRAO | NUMBER | Y | Codigo do historico padr?o |
| 36 | CD_HISTORICO_PADRAO_INTEGRA | VARCHAR2 | Y | Codigo do historico padr?o (de-para) |
| 37 | DS_COMPLEMENTO_HISTORICO | VARCHAR2 | Y | Complemento do historico padr?o |
| 38 | CD_MOEDA | VARCHAR2 | Y | Codigo da moeda do lancamento |
| 39 | VL_MOEDA | NUMBER | Y | Valor da moerda do lancamento |
| 40 | VL_LANCAMENTO | NUMBER | Y | Valor do lancamento contabil |
| 41 | CD_LOTE_INTEGRA | VARCHAR2 | Y | Codigo do lote (de-para) |
| 42 | CD_INTEGRA_PAI | NUMBER | Y | Codigo de controle para saber qual o registro PAI do registro atual |

---

## MVINTEGRA.INTEGRA_ENT_MOV_ESTOQUE
> Tabela responsavel em importar movimentac?es de estoque

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INTEGRA_ENT_MOV_ESTOQUE | NUMBER | N | Codigo sequencial do registro integrado |
| 2 | TP_INTEGRACAO | VARCHAR2 | N | Identifica o status da integrac?o |
| 3 | DS_ERRO | VARCHAR2 | Y | Descric?o de erro, caso o campo TP_INTEGRAC?O seja igual a "E" |
| 4 | DT_INTEGRACAO | DATE | N | Data da inclus?o do registro na tabela de integrac?o |
| 5 | DT_INTEGRACAO_MV2000 | DATE | Y | Data de integracao do registro com o MV2000i |
| 6 | TP_MOVIMENTO | VARCHAR2 | N | Tipo do movimento no estoque |
| 7 | TP_REGISTRO | VARCHAR2 | N | Identifica o tipo de registro |
| 8 | CD_FILIAL_INTEGRA | VARCHAR2 | N | Codigo da empresa no sistema que esta se integrando |
| 9 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da empresa |
| 10 | CD_MOVIMENTO | NUMBER | Y | Codigo do movimento |
| 11 | CD_MOVIMENTO_INTEGRA | VARCHAR2 | Y | Codigo do movimento (de-para) |
| 12 | TP_MOVIMENTO_ESTOQUE | VARCHAR2 | Y | Tipo de movimentac?o do estoque |
| 13 | TP_MOVIMENTO_ESTOQUE_INTEGRA | VARCHAR2 | Y | Tipo de movimentac?o do estoque (de-para) |
| 14 | DT_MOVIMENTO | DATE | Y | Data do movimento |
| 15 | HR_MOVIMENTO | DATE | Y | Hora do movimento |
| 16 | DT_CONSUMO_INICIAL | DATE | Y | Data inicial do concumo (usado para home care) |
| 17 | DT_CONSUMO_FINAL | DATE | Y | Data final do consumo (usado para home care) |
| 18 | CD_ESTOQUE | NUMBER | Y | Codigo do estoque da movimentac?o |
| 19 | CD_ESTOQUE_INTEGRA | VARCHAR2 | Y | Codigo do estoque da movimentac?o (de-para) |
| 20 | CD_ESTOQUE_DESTINO | NUMBER | Y | Codigo do estoque destino (usado para transferencias) |
| 21 | CD_ESTOQUE_DESTINO_INTEGRA | VARCHAR2 | Y | Codigo do estoque destino (de-para) |
| 22 | CD_ATENDIMENTO | NUMBER | Y | Codigo do atendimento (em caso de movimentac?o de paciente) |
| 23 | CD_UNIDADE_ATENDIMENTO | NUMBER | Y | Codigo da unidade de atendimento |
| 24 | CD_UNIDADE_ATENDIMENTO_INTEGRA | VARCHAR2 | Y | Codigo da unidade de atendimento (de-para) |
| 25 | CD_SETOR | NUMBER | Y | Codigo do setor |
| 26 | CD_SETOR_INTEGRA | VARCHAR2 | Y | Codigo do setor (de-para) |
| 27 | NR_DOCUMENTO | VARCHAR2 | Y | Codigo do documento de origem |
| 28 | NR_SERIE | VARCHAR2 | Y | Numero de serie do documento |
| 29 | CD_CFOP | NUMBER | Y | Codigo fiscal da operac?o |
| 30 | CD_TIPO_DOCUMENTO | NUMBER | Y | Codigo do tipo de documento usado para realizar o movimento |
| 31 | CD_TIPO_DOCUMENTO_INTEGRA | VARCHAR2 | Y | Codigo do tipo de documento usado para realizar o movimento (de-para) |
| 32 | TP_VENDA | VARCHAR2 | Y | Tipo de venda |
| 33 | CD_MOTIVO_DEVOLUCAO | NUMBER | Y | Codigo do motivo de devoluc?o |
| 34 | CD_MOTIVO_DEVOLUCAO_INTEGRA | VARCHAR2 | Y | Codigo do motivo de devoluc?o (de-para) |
| 35 | CD_MOTIVO_BAIXA | NUMBER | Y | Codigo do motivo de baixa do produto |
| 36 | CD_MOTIVO_BAIXA_INTEGRA | VARCHAR2 | Y | Codigo do motivo da baixa do produto (de-para) |
| 37 | CD_PRESTADOR_SOLIC | NUMBER | Y | Codigo do prestador (medico) solicitante |
| 38 | CD_PRESTADOR_SOLIC_INTEGRA | VARCHAR2 | Y | Codigo do prestador (medico) solicitante (de-para) |
| 39 | CD_SOLICITACAO | NUMBER | Y | Codigo da solicitac?o que gerou essa movimentac?o |
| 40 | CD_SOLICITACAO_INTEGRA | VARCHAR2 | Y | Codigo da solicitac?o que gerou essa movimentac?o (de-para) |
| 41 | CD_DESCRICAO_SAIDA | NUMBER | Y | Codigo da descric?o de saida |
| 42 | CD_DESCRICAO_SAIDA_INTEGRA | VARCHAR2 | Y | Codigo da descric?o de saida (de-para) |
| 43 | CD_AVISO_CIRURGIA | NUMBER | Y | Codigo do aviso de cirurgia |
| 44 | CD_AVISO_CIRURGIA_INTEGRA | VARCHAR2 | Y | Codigo do aviso de cirurgia (de-para) |
| 45 | CD_ENTRADA_PRODUTO | NUMBER | Y | Codigo da entrada do produto (usado para aplicac?o direta) |
| 46 | CD_ENTRADA_PRODUTO_INTEGRA | VARCHAR2 | Y | Codigo da entrada do produto (usado para aplicac?o direta (de-para) |
| 47 | DS_OBSERVACAO | VARCHAR2 | Y | Observac?o da movimentac?o |
| 48 | CD_USUARIO | VARCHAR2 | Y | Codigo do usuario responsavel pela movimentac?o |
| 49 | CD_MOVIMENTO_ITEM | NUMBER | Y | Codigo do movimentac?o do item |
| 50 | CD_PRODUTO | NUMBER | Y | Codigo do produto |
| 51 | CD_PRODUTO_INTEGRA | VARCHAR2 | Y | Codigo do produto (de-para) |
| 52 | DS_CODIGO_BARRAS | VARCHAR2 | Y | Codigo de barras do item (precisa ser o mesmo do MV2000i) |
| 53 | DS_PRODUTO | VARCHAR2 | Y | Descric?o do produto |
| 54 | CD_UNIDADE | VARCHAR2 | Y | Unidade do produto |
| 55 | CD_UNIDADE_INTEGRA | VARCHAR2 | Y | Unidade do produto (de-para) |
| 56 | CD_UNI_PRO | NUMBER | Y | Codigo da unidade do item no MV2000i (uso preferencial) |
| 57 | DS_UNIDADE | VARCHAR2 | Y | Decric?o da unidade do produto |
| 58 | VL_FATOR | NUMBER | Y | Fator de convers?o do item |
| 59 | QT_MOVIMENTACAO | NUMBER | Y | Quantidade de movimentac?o do item |
| 60 | CD_LOTE | VARCHAR2 | Y | Lote do item |
| 61 | DT_VALIDADE | DATE | Y | Validade do item |
| 62 | VL_UNITARIO | NUMBER | Y | Valor unitario |
| 63 | VL_TOTAL | NUMBER | Y | Valor total |
| 64 | TP_DOCUMENTO_INTEGRACAO | VARCHAR2 | Y | identifica o tipo de documento |
| 65 | CD_INTEGRA_PAI | NUMBER | Y | Codigo do registro mestre |
| 66 | CD_PACIENTE | NUMBER | Y | CODIGO DO(A) PACIENTE |
| 67 | NM_PACIENTE | VARCHAR2 | Y | NOME DO(A) PACIENTE |
| 68 | CD_PACIENTE_INTEGRA | VARCHAR2 | Y | CODIGO DO(A) PACIENTE NA TABELA DE INTEGRAC?O |
| 69 | NM_PACIENTE_INTEGRA | VARCHAR2 | Y | NOME DO(A) PACIENTE NA TABELA DE INTEGRAC?O |
| 70 | CD_MOVIMENTO_ITEM_INTEGRA | VARCHAR2 | Y | Codigo do movimentac?o do item (DE-PARA) |
| 71 | CD_ATENDIMENTO_INTEGRA | VARCHAR2 | Y | Codigo do atendimento do paciente (DE-PARA) |
| 72 | CD_MUNICIPIO | NUMBER | Y | Codigo municipio - MVSISS |
| 73 | DS_MUNICIPIO | VARCHAR2 | Y | Descric?o do Municipio - MVSISS |
| 74 | CD_MUNICIPIO_INTEGRA | VARCHAR2 | Y | Codigo do municipio (de-para) - MVSISS |
| 75 | CD_CLINICA | NUMBER | Y | Codigo da clinica - MVSISS |
| 76 | DS_CLINICA | VARCHAR2 | Y | Descric?o da Clinica - MVSISS |
| 77 | CD_CLINICA_INTEGRA | NUMBER | Y | Codigo da clinica (de-para) - MVSISS |

---

## MVINTEGRA.INTEGRA_LOG

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | TP_OBJETO | VARCHAR2 | Y |  |
| 2 | NM_OBJETO | VARCHAR2 | Y |  |
| 3 | TP_ACAO | VARCHAR2 | Y |  |
| 4 | DT_ACAO | DATE | Y |  |
| 5 | VERSAO | VARCHAR2 | Y |  |

---

## MVINTEGRA.INTEGRA_LOG_IMPORT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INTEGRA_LOG_IMPORT | NUMBER | N |  |
| 2 | TP_REGISTRO | VARCHAR2 | N |  |
| 3 | DT_IMPORT | DATE | Y |  |
| 4 | DT_VIGENCIA | DATE | Y |  |
| 5 | NM_ARQUIVO | VARCHAR2 | Y |  |
| 6 | CD_TAB_FAT | NUMBER | Y |  |
| 7 | CD_USUARIO | VARCHAR2 | Y |  |

---

## MVINTEGRA.INTEGRA_ONEXO_BASE
> Tabela Base pertencente a integrac?o - XML OPMEnexo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ID | NUMBER | N | Codigo de identificac?o da tabela (PK) |
| 2 | CD_ID_PAI | NUMBER | N | Codigo de identificac?o do registro pai (FK) com a tabela INTEGRA_ONEXO_BASE (CD_ID) |
| 3 | TP_SCHEMA | VARCHAR2 | Y | Tipo do SCHEMA XML que o registro se refere |
| 4 | CD_ID_MENSAGEM_ORIGEM | NUMBER | Y | Mensagem que originou o registro |

---

## MVINTEGRA.INTEGRA_ONEXO_CONF
> Tabela de Confirmac?o - XML OPMEnexo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ID | NUMBER | N | Codigo de identificac?o da tabela (PK) |
| 2 | CD_ID_PAI | NUMBER | N | Codigo de identificac?o do registro pai (FK) com a tabela INTEGRA_ONEXO_BASE (CD_ID) |
| 3 | CD_LAYOUT | VARCHAR2 | Y | Codigo do layout utilizado |
| 4 | DS_LAYOUT | VARCHAR2 | Y | Descric?o do layout utilizado |

---

## MVINTEGRA.INTEGRA_ONEXO_CONF_CAB
> Tabela de Cabecalho da confirmac?o - XML OPMEnexo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ID | NUMBER | N | Codigo de identificac?o da tabela (PK) |
| 2 | CD_ID_PAI | NUMBER | N | Codigo de identificac?o do registro pai (FK) com a tabela INTEGRA_ONEXO_CONF (CD_ID) |
| 3 | CD_ORD_COM | VARCHAR2 | Y | Codigo da ordem para confirmar os itens |

---

## MVINTEGRA.INTEGRA_ONEXO_CONF_CAB_CE
> Tabela de Campo Extra do cabecalho da confirmac?o - XML OPMEnexo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ID | NUMBER | N | Codigo de identificac?o da tabela (PK) |
| 2 | CD_ID_PAI | NUMBER | N | Codigo de identificac?o do registro pai (FK) com a tabela INTEGRA_ONEXO_CONF_CAB (CD_ID) |
| 3 | DS_NOME | VARCHAR2 | Y | Descric?o do campo extra |
| 4 | DS_VALOR | VARCHAR2 | Y | Valor do campo extra |

---

## MVINTEGRA.INTEGRA_ONEXO_CONF_IT
> Tabela de Itens da confirmac?o - XML OPMEnexo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ID | NUMBER | N | Codigo de identificac?o da tabela (PK) |
| 2 | CD_ID_PAI | NUMBER | N | Codigo de identificac?o do registro pai (FK) com a tabela OPMENEXO_CONFIRMA (CD_ID) |
| 3 | CD_PRODUTO | VARCHAR2 | Y | Codigo do produto |
| 4 | QT_PRODUTO | VARCHAR2 | Y | Quantidade do produto |
| 5 | NR_CNPJ | VARCHAR2 | Y | CNPJ do fornecedor |

---

## MVINTEGRA.INTEGRA_ONEXO_CONF_IT_CE
> Tabela de Campo Extra do item da confirmac?o - XML OPMEnexo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ID | NUMBER | N | Codigo de identificac?o da tabela (PK) |
| 2 | CD_ID_PAI | NUMBER | N | Codigo de identificac?o do registro pai (FK) com a tabela INTEGRA_ONEXO_CONF_IT (CD_ID) |
| 3 | DS_NOME | VARCHAR2 | Y | Descric?o do campo extra |
| 4 | DS_VALOR | VARCHAR2 | Y | Valor do campo extra |

---

## MVINTEGRA.INTEGRA_ONEXO_REQ
> Tabela de Requisic?es - XML OPMEnexo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ID | NUMBER | N | Codigo de identificac?o da tabela (PK) |
| 2 | CD_ID_PAI | NUMBER | N | Codigo de identificac?o do registro pai (FK) com a tabela INTEGRA_ONEXO_BASE (CD_ID) |
| 3 | CD_LAYOUT | VARCHAR2 | Y | Codigo do layout utilizado |
| 4 | DS_LAYOUT | VARCHAR2 | Y | Descric?o do layout utilizado |

---

## MVINTEGRA.INTEGRA_ONEXO_REQ_CAB
> Tabela de Cabecalhos da solicitac?o - XML OPMEnexo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ID | NUMBER | N | Codigo de identificac?o da tabela (PK) |
| 2 | CD_ID_PAI | NUMBER | N | Codigo de identificac?o do registro pai (FK) com a tabela INTEGRA_ONEXO_REQ (CD_ID) |
| 3 | CD_SOL_COM | VARCHAR2 | Y | Numero da requis?o de cotac?o no sistema MV2000 |
| 4 | DS_TITULO | VARCHAR2 | Y | Titulo do pedido |
| 5 | DS_CONTATO | VARCHAR2 | Y | Contato do hospital para o fornecedor |
| 6 | CD_FORMA_PAGAMENTO | VARCHAR2 | Y | Identificador da forma de pagamento OPMEnexo. Deve ser feita equilencias no sistema de gest?o |
| 7 | DT_VENCIMENTO | VARCHAR2 | Y | Data de vencimento da cotac?o |
| 8 | HR_VENCIMENTO | VARCHAR2 | Y | Hora do vencimento da cotac?o |
| 9 | DS_MOEDA | VARCHAR2 | Y | Moeda em que deve ser cotado |
| 10 | DS_OBSERVACAO | VARCHAR2 | Y | Observac?o para o forncedor |
| 11 | DS_TERMOS_CONDICOES | VARCHAR2 | Y | Termos e condic?es impostas pelo hospital |
| 12 | DT_PROCEDIMENTO | VARCHAR2 | Y | Data do procedimento |
| 13 | HR_PROCEDIMENTO | VARCHAR2 | Y | Hora do procedimento |
| 14 | NM_PACIENTE | VARCHAR2 | Y | Nome do paciente |
| 15 | NR_MATRICULA | VARCHAR2 | Y | Numero da matricula do paciente |
| 16 | NM_MEDICO | VARCHAR2 | Y | Nome do medico |
| 17 | NR_CRM | VARCHAR2 | Y | CRM do medico |
| 18 | NR_CNPJ_CONVENIO | VARCHAR2 | Y | CNPJ do convenio |

---

## MVINTEGRA.INTEGRA_ONEXO_REQ_CAB_CE
> Tabela de Campo Extra do cabecalho da solicitac?o - XML OPMEnexo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ID | NUMBER | N | Codigo de identificac?o da tabela (PK) |
| 2 | CD_ID_PAI | NUMBER | N | Codigo de identificac?o do registro pai (FK) com a tabela INTEGRA_ONEXO_REQ_CAB (CD_ID) |
| 3 | DS_NOME | VARCHAR2 | Y | Descric?o do campo extra |
| 4 | DS_VALOR | VARCHAR2 | Y | Valor do campo extra |

---

## MVINTEGRA.INTEGRA_ONEXO_REQ_CAB_PR
> Tabela de Procedimentos do cabecalho da solicitac?o - XML OPMEnexo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ID | NUMBER | N | Codigo de identificac?o da tabela (PK) |
| 2 | CD_ID_PAI | NUMBER | N | Codigo de identificac?o do registro pai (FK) com a tabela INTEGRA_ONEXO_REQ_CAB (CD_ID) |
| 3 | CD_PROCEDIMENTO | VARCHAR2 | Y | Codigo do procedimento |

---

## MVINTEGRA.INTEGRA_ONEXO_REQ_IT
> Tabela de Itens da solicitac?o - XML OPMEnexo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ID | NUMBER | N | Codigo de identificac?o da tabela (PK) |
| 2 | CD_ID_PAI | NUMBER | N | Codigo de identificac?o do registro pai (FK) com a tabela INTEGRA_ONEXO_REQ (CD_ID) |
| 3 | CD_PRODUTO | VARCHAR2 | Y | Codigo do produto no sistema MV2000 |
| 4 | QT_PRODUTO | VARCHAR2 | Y | Quantidade do produto |

---

## MVINTEGRA.INTEGRA_ONEXO_REQ_IT_CE
> Tabela de Campo Extra do item da solicitac?o - XML OPMEnexo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ID | NUMBER | N | Codigo de identificac?o da tabela (PK) |
| 2 | CD_ID_PAI | NUMBER | N | Codigo de identificac?o do registro pai (FK) com a tabela INTEGRA_ONEXO_REQ_IT (CD_ID) |
| 3 | DS_NOME | VARCHAR2 | Y | Descric?o do campo extra |
| 4 | DS_VALOR | VARCHAR2 | Y | Valor do campo extra |

---

## MVINTEGRA.INTEGRA_ONEXO_REQ_IT_LT
> Tabela de Lotes do item da solicitac?o - XML OPMEnexo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ID | NUMBER | N | Codigo de identificac?o da tabela (PK) |
| 2 | CD_ID_PAI | NUMBER | N | Codigo de identificac?o do registro pai (FK) com a tabela INTEGRA_ONEXO_REQ_IT (CD_ID) |
| 3 | CD_LOTE | VARCHAR2 | Y | Codigo do lote |

---

## MVINTEGRA.INTEGRA_ONEXO_RESP
> Tabela de Respostas - XML OPMEnexo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ID | NUMBER | N | Codigo de identificac?o da tabela (PK) |
| 2 | CD_ID_PAI | NUMBER | N | Codigo de identificac?o do registro pai (FK) com a tabela INTEGRA_ONEXO_BASE (CD_ID) |
| 3 | CD_LAYOUT | VARCHAR2 | Y | Codigo do layout utilizado |
| 4 | DS_LAYOUT | VARCHAR2 | Y | Descric?o do layout utilizado |

---

## MVINTEGRA.INTEGRA_ONEXO_RESP_CAB
> Tabela de Cabecalho das Respostas - XML OPMEnexo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ID | NUMBER | N | Codigo de identificac?o da tabela (PK) |
| 2 | CD_ID_PAI | NUMBER | N | Codigo de identificac?o do registro pai (FK) com a tabela INTEGRA_ONEXO_RESP (CD_ID) |
| 3 | CD_SOL_COM | VARCHAR2 | Y | Codigo da solicitac?o no sistema MV2000 |
| 4 | DT_VENCIMENTO | VARCHAR2 | Y | Data do vencimento da cotac?o |
| 5 | HR_VENCIMENTO | VARCHAR2 | Y | Hora do vencimento da cotac?o |
| 6 | DT_PROCEDIMENTO | VARCHAR2 | Y | Data do procedimento |
| 7 | HR_PROCEDIMENTO | VARCHAR2 | Y | Hora do procedimento |
| 8 | NM_PACIENTE | VARCHAR2 | Y | Nome do paciente |
| 9 | CD_MATRICULA | VARCHAR2 | Y | Matricula do paciente |
| 10 | NM_MEDICO | VARCHAR2 | Y | Nome do medico |
| 11 | NR_CRM | VARCHAR2 | Y | CRM do medico |
| 12 | NR_CNPJ_CONVENIO | VARCHAR2 | Y | CNPJ do convenio |

---

## MVINTEGRA.INTEGRA_ONEXO_RESP_CAB_CE
> Tabela de Campo Extra do cabecalho das respostas - XML OPMEnexo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ID | NUMBER | N | Codigo de identificac?o da tabela (PK) |
| 2 | CD_ID_PAI | NUMBER | N | Codigo de identificac?o do registro pai (FK) com a tabela INTEGRA_ONEXO_RESP_CAB (CD_ID) |
| 3 | DS_NOME | VARCHAR2 | Y | Descric?o do campo extra |
| 4 | DS_VALOR | VARCHAR2 | Y | Valor do campo extra |

---

## MVINTEGRA.INTEGRA_ONEXO_RESP_CAB_PR
> Tabela de Procedimentos do cabecalho da resposta - XML OPMEnexo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ID | NUMBER | N | Codigo de identificac?o da tabela (PK) |
| 2 | CD_ID_PAI | NUMBER | N | Codigo de identificac?o do registro pai (FK) com a tabela INTEGRA_ONEXO_RESP_CAB (CD_ID) |
| 3 | CD_PROCEDIMENTO | VARCHAR2 | Y | Codigo do procedimento |

---

## MVINTEGRA.INTEGRA_ONEXO_RESP_FORN
> Tabela de Fornecedores da resposta - XML OPMEnexo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ID | NUMBER | N | Codigo de identificac?o da tabela (PK) |
| 2 | CD_ID_PAI | NUMBER | N | Codigo de identificac?o do registro pai (FK) com a tabela INTEGRA_ONEXO_RESP (CD_ID) |
| 3 | NM_FANTASIA | VARCHAR2 | Y | Nome fantasia do fornecedor |
| 4 | DS_RAZAOSOCIAL | VARCHAR2 | Y | Descric?o da raz?o social do fornecedor |
| 5 | NR_CNPJ | VARCHAR2 | Y | Numero do CNPJ do fornecedor |
| 6 | VL_FATURA_MINIMO | VARCHAR2 | Y | Valor minimo faturado pelo fornecedor |
| 7 | QT_PRAZO_ENTREGA | VARCHAR2 | Y | Numero de dias para entrega |
| 8 | DT_VALIDADE_PROPOSTA | VARCHAR2 | Y | Validade da proposta |
| 9 | CD_FORMA_PAGAMENTO | VARCHAR2 | Y | Codigo da forma de pagamento (tabela prorpia do Bionexo) |
| 10 | DS_FRETE | VARCHAR2 | Y | Descric?o do tipo do frete. Se e CIF ou FOB |

---

## MVINTEGRA.INTEGRA_ONEXO_RESP_IT
> Tabela dos Itens da resposta - XML OPMEnexo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ID | NUMBER | N | Codigo de identificac?o da tabela (PK) |
| 2 | CD_ID_PAI | NUMBER | N | Codigo de identificac?o do registro pai (FK) com a tabela INTEGRA_ONEXO_RESP (CD_ID) |
| 3 | CD_ARTIGO | VARCHAR2 | Y | Identificador do item OPMEnexo - Esse valor deve ser guardado para devoluc?o no momento da confir... |
| 4 | CD_MARCA | VARCHAR2 | Y | Identificador da marca OPMEnexo - Esse valor deve ser guardado para devoluc?o no momento da confi... |
| 5 | DS_MARCA | VARCHAR2 | Y | Descric?o da marca do produto |
| 6 | CD_PRODUTO | VARCHAR2 | Y | Codigo do produto |
| 7 | QT_PRODUTO | VARCHAR2 | Y | Quantidade do produto |

---

## MVINTEGRA.INTEGRA_ONEXO_RESP_IT_CE
> Tabela de Campo Extra do item da resposta - XML OPMEnexo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ID | NUMBER | N | Codigo de identificac?o da tabela (PK) |
| 2 | CD_ID_PAI | NUMBER | N | Codigo de identificac?o do registro pai (FK) com a tabela INTEGRA_ONEXO_RESP_IT (CD_ID) |
| 3 | DS_NOME | VARCHAR2 | Y | Descric?o do campo extra |
| 4 | DS_VALOR | VARCHAR2 | Y | Valor do campo extra |

---

## MVINTEGRA.INTEGRA_ONEXO_RESP_IT_LT
> Tabela de Lotes do item da resposta - XML OPMEnexo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ID | NUMBER | N | Codigo de identificac?o da tabela (PK) |
| 2 | CD_ID_PAI | NUMBER | N | Codigo de identificac?o do registro pai (FK) com a tabela INTEGRA_ONEXO_RESP_IT (CD_ID) |
| 3 | CD_LOTE | VARCHAR2 | Y | Codigo do lote |

---

## MVINTEGRA.INTEGRA_ONEXO_RESP_IT_RS
> Tabela de Respostas do item da resposta - XML OPMEnexo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ID | NUMBER | N | Codigo de identificac?o da tabela (PK) |
| 2 | CD_ID_PAI | NUMBER | N | Codigo de identificac?o do registro pai (FK) com a tabela INTEGRA_ONEXO_RESP_IT (CD_ID) |
| 3 | NR_CNPJ | VARCHAR2 | Y | Numero do CNPJ do fornecedor |
| 4 | NM_FABRICANTE | VARCHAR2 | Y | Nome do fabricante do produto |
| 5 | DS_EMBALAGEM | VARCHAR2 | Y | Descric?o da embalagem do produto (caixa, unitario etc) |
| 6 | VL_PRECO_UNITARIO | VARCHAR2 | Y | Valor unitario do produto |
| 7 | VL_TOTAL | VARCHAR2 | Y | Valor total do produto |
| 8 | DS_COMENTARIO | VARCHAR2 | Y | Comentario do fornecedor sobre o produto |

---

## MVINTEGRA.INTEGRA_PARAMETRO_SAPIENS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | SN_SAIDA_PACIENTE | VARCHAR2 | Y |  |
| 2 | SN_SAIDA_CC | VARCHAR2 | Y |  |
| 3 | SN_CUSTO_DIRETO | VARCHAR2 | Y |  |
| 4 | TX_DEPRECIACAO | NUMBER | Y |  |
| 5 | VL_PERC_QUANT | NUMBER | Y |  |
| 6 | SN_PADRONIZADO | VARCHAR2 | Y |  |
| 7 | SN_PSICOTROPICO | VARCHAR2 | Y |  |
| 8 | SN_IMPRIME_ETIQUETA | VARCHAR2 | Y |  |
| 9 | TP_SEXO | VARCHAR2 | Y |  |
| 10 | SN_CONSIGNADO | VARCHAR2 | Y |  |
| 11 | TP_CLASSIFICACAO_TRIBUTARIA | VARCHAR2 | Y |  |
| 12 | NR_ORDEM_PREFERENCIA | NUMBER | Y |  |
| 13 | SN_PROD_PERMANENTE | VARCHAR2 | Y |  |
| 14 | CD_FILIAL_SAPIENS | VARCHAR2 | Y |  |
| 15 | CD_INTEGRA_PARAMETRO_SAPIENS | NUMBER | Y |  |
| 16 | TP_CALCULO_IPI_SAPIENS | VARCHAR2 | Y |  |
| 17 | CD_TIP_COMUM_SAPIENS | NUMBER | Y |  |
| 18 | CD_ESTOQUE_SAPIENS | NUMBER | Y |  |
| 19 | CD_TIP_DOC_FRETE | NUMBER | Y |  |

---

## MVINTEGRA.INTEGRA_PARAMETRO_SGPS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INTEGRA_PARAMETRO_SGPS | NUMBER | N |  |
| 2 | CD_FILIAL_SGPS | VARCHAR2 | Y |  |
| 3 | DS_CODIGO_CONSELHO_SGPS | VARCHAR2 | Y |  |
| 4 | CD_CONSELHO_SGPS | NUMBER | Y |  |
| 5 | CD_TIP_PRESTA_SGPS | NUMBER | Y |  |
| 6 | TP_DOCUMENTACAO_SGPS | VARCHAR2 | Y |  |
| 7 | SN_ANESTESISTA_SGPS | VARCHAR2 | Y |  |
| 8 | SN_AUXILIAR_SGPS | VARCHAR2 | Y |  |
| 9 | SN_CIRURGIAO_SGPS | VARCHAR2 | Y |  |
| 10 | SN_ATUANTE_SGPS | VARCHAR2 | Y |  |
| 11 | SN_OUTROS_SGPS | VARCHAR2 | Y |  |
| 12 | SN_REPASSE_FATURA_AMB_SUS_SGPS | VARCHAR2 | Y |  |
| 13 | SN_DOADOR_SGPS | VARCHAR2 | Y |  |
| 14 | CD_MULTI_EMPRESA_SGPS | NUMBER | Y |  |
| 15 | NM_ARQUIVO_SGPS | VARCHAR2 | Y |  |

---

## MVINTEGRA.INTEGRA_PARAM_207

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIP_DOC | NUMBER | Y |  |
| 2 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 3 | CD_USUARIO | VARCHAR2 | Y |  |
| 4 | CD_ESTOQUE | NUMBER | Y |  |

---

## MVINTEGRA.INTEGRA_PLANO_CONTAS_DE_PARA
> Tabela utilizada para exportac?o de dados consolidados de acordo com o Tipo de Lancamento, Estoque, Especie e Classe

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PLANO | NUMBER | N | Chave primaria da tabela |
| 2 | CD_ESTOQUE | NUMBER | N | Codigo do estoque no MV |
| 3 | CD_ESPECIE | NUMBER | N | Codigo da especie no MV |
| 4 | CD_CLASSE | NUMBER | N | Codigo da classe no MV |
| 5 | CD_TIPO | VARCHAR2 | N | Tipo de Lancamento |
| 6 | CD_REDUZIDO_CREDITO | VARCHAR2 | Y | Codigo contabil reduzido de Credito para exportar |
| 7 | CD_REDUZIDO_DEBITO | VARCHAR2 | Y | Codigo contabil reduzido de Debito para exportar |

---

## MVINTEGRA.INTEGRA_SAIDA_AGENDAMENTO
> Tabela de saida de Agendamentos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INTEGRA_SAIDA_AGENDAMENTO | NUMBER | N | Codigo sequencial do registro integrado |
| 2 | CD_INTEGRA_PAI | NUMBER | Y | Codigo sequencial do registro master |
| 3 | TP_INTEGRACAO | VARCHAR2 | N | Identifica o status da interacao |
| 4 | DS_ERRO | VARCHAR2 | Y | Descricao do erro, caso o campo TP_INTEGRACAO seja igual a E |
| 5 | DT_INTEGRACAO | DATE | N | Data em que o registro foi disponibilizado na tabela de integracao |
| 6 | DT_INTEGRACAO_MV2000 | DATE | Y | Data em que ocorreu a integracao do registro com outro sistema |
| 7 | TP_MOVIMENTO | VARCHAR2 | N | Identifica o tipo do momento: I-Inclusao, A-Alteracao e E-Excluso |
| 8 | TP_REGISTRO | VARCHAR2 | N | Tipo do registro |
| 9 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da empresa. Usado para ambinetes multi-empresa. Senao houver, preencher com 1 |
| 10 | CD_MULTI_EMPRESA_INTEGRA | VARCHAR2 | Y | Codigo da empresa (de-para) |
| 11 | CD_FILIAL_INTEGRA | VARCHAR2 | N | Codigo da filial da empresa que esta se integrando |
| 12 | CD_AGENDA | NUMBER | Y | Codigo da agenda/plant?o |
| 13 | CD_AGENDA_INTEGRA | VARCHAR2 | Y | Codigo da agenda/plant?o (de-para) |
| 14 | CD_UNIDADE_REGIONAL | VARCHAR2 | Y | Codigo da Unidade Regional |
| 15 | CD_UNIDADE_REGIONAL_INTEGRA | VARCHAR2 | Y | Codigo da unidade regional (de-para) |
| 16 | DS_UNIDADE_REGIONAL | VARCHAR2 | Y | Descric?o da unidade regional |
| 17 | CD_PRESTADOR | NUMBER | Y | Nome do medico solicitante  do servico |
| 18 | CD_PRESTADOR_INTEGRA | VARCHAR2 | Y | Nome do medico solicitante  do servico (de-para) |
| 19 | NM_PRESTADOR | VARCHAR2 | Y | Nome do prestador |
| 20 | CD_ORIGEM | NUMBER | Y | Codigo da origem do atendimento/agendamento |
| 21 | CD_ORIGEM_INTEGRA | VARCHAR2 | Y | Codigo da origem do atendimento/agendamento (de-para) |
| 22 | DS_ORIGEM | VARCHAR2 | Y | Descric?o da origem do atendimento/agendamento |
| 23 | CD_SETOR | NUMBER | Y | Codigo do setor. Para exames, usar codigo do setor executante |
| 24 | CD_SETOR_INTEGRA | VARCHAR2 | Y | Codigo do setor. Para exames, usar codigo do setor executante (de-para) |
| 25 | DS_SETOR | VARCHAR2 | Y | Descric?o do setor. Para exames, usar codigo do setor executante (de-para) |
| 26 | CD_RECURSO | NUMBER | Y | Codigo do recurso |
| 27 | DS_RECURSO | VARCHAR2 | Y | Descric?o do recurso |
| 28 | DS_CONSULTORIO | VARCHAR2 | Y | Descric?o/nome do consultorio de atendimento |
| 29 | TP_AGENDA | VARCHAR2 | Y | Tipo da agenda. A-Ambulatorio, I-Imagem, L - Laboratorio, C - Centro Cirurgico |
| 30 | TP_VISIBILIDADE_AGENDA | VARCHAR2 | Y | Tipo de visibilidade da agenda.P-Publica ou V-Provada |
| 31 | DT_AGENDA | DATE | Y | Data da Agenda ou data de agendamento |
| 32 | SN_AGENDA_DINAMICA | VARCHAR2 | Y | Identifica se a agenda tera seu tempo de atendimento fixo ou de acordo como tempo de realizac?o d... |
| 33 | HR_INICIAL_AGENDA | DATE | Y | Hora inicial da agenda |
| 34 | HR_FINAL_AGENDA | DATE | Y | Hora final da agenda |
| 35 | HR_TEMPO_MEDIO | DATE | Y | Tempo medio de cada consulta/atendimento |
| 36 | SN_ENCAIXE | VARCHAR2 | Y | Identifica se a genda aceita encaixe, ou se o agendamento e um encaixe |
| 37 | QT_ENCAIXE | NUMBER | Y | Se a agenda permitir, quantos encixes ser?o possiveis. |
| 38 | DT_LIBERACAO | DATE | Y | Data de liberac?o da agenda |
| 39 | SN_ATENDE_SUS | VARCHAR2 | Y | Identifica se a agenda atendera pacientes para convenios SUS. S- Sim, atende, N-N?o atende e T - ... |
| 40 | SN_ATIVO | VARCHAR2 | Y | Identifica se a agenda esta ou n?o ativa |
| 41 | SN_TIPO_LIVRE | VARCHAR2 | Y | Identifica se a agenda tera tipo de atendimento livre |
| 42 | SN_SERVICO_LIVRE | VARCHAR2 | Y | Identifica se a agenda tera o tipo de servico livre |
| 43 | SN_BLOQUEADO | VARCHAR2 | Y | Identifica se a agend ou o horario esta bloqueado |
| 44 | SN_FALTA_MEDICA | VARCHAR2 | Y | Identifica se a agenda teve faltas medicas |
| 45 | CD_USUARIO | VARCHAR2 | Y | Codigo do usuario |
| 46 | CD_CONVENIO | NUMBER | Y | Codigo do convenio |
| 47 | CD_CONVENIO_INTEGRA | VARCHAR2 | Y | Codigo do convenio (de-para) |
| 48 | DS_CONVENIO | VARCHAR2 | Y | Descric?o do convenio |
| 49 | CD_SERVICO | NUMBER | Y | Codigo do servico |
| 50 | CD_SERVICO_INTEGRA | VARCHAR2 | Y | Codigo do servico (de-para) |
| 51 | DS_SERVICO | VARCHAR2 | Y | Descric?o do servico |
| 52 | CD_TIPO_MARCACAO | NUMBER | Y | Tipo de marcacao |
| 53 | CD_TIPO_MARCACAO_INTEGRA | VARCHAR2 | Y | Tipo de marcacao (de-para) |
| 54 | DS_TIPO_MARCACAO | VARCHAR2 | Y | Descricao do tipo de marcacao |
| 55 | CD_ITEM_AGENDAMENTO | VARCHAR2 | Y | Codigo do item agendado. Podenso ser um procedimento ou um codigo de exames |
| 56 | CD_ITEM_AGENDAMENTO_INTEGRA | VARCHAR2 | Y | Codigo do item agendado (de-para) |
| 57 | DS_ITEM_AGENDAMENTO | VARCHAR2 | Y | Descric?o do item de agendamento |
| 58 | CD_ITEM_AGENDAMENTO_SUS | VARCHAR2 | Y | Codigo do item agendado. Podenso ser um procedimento ou um codigo de exames SUS |
| 59 | DS_ITEM_AGENDAMENTO_SUS | VARCHAR2 | Y | Descric?o do item agendado. Podenso ser um procedimento ou um codigo de exames SUS |
| 60 | QT_CONSULTAS | NUMBER | Y | Quantidade de consultas/atendimentos |
| 61 | QT_CONSULTAS_MARCADAS | NUMBER | Y | Quantidade de consultas marcadas |
| 62 | CD_USUARIO_AUTORIZADO | VARCHAR2 | Y | Codigo do usuario autorizado a manipular a agenda |
| 63 | CD_HORA_AGENDAMENTO | NUMBER | Y | Codigo do horario para agendamento |
| 64 | HR_AGENDA | DATE | Y | Hora do agendamento |
| 65 | CD_ATENDIMENTO | NUMBER | Y | Codigo da atendimento |
| 66 | CD_ATENDIMENTO_INTEGRA | VARCHAR2 | Y | Codigo da atendimento (de-para) |
| 67 | CD_PACIENTE | NUMBER | Y | Codigo do paciente |
| 68 | CD_PACIENTE_INTEGRA | VARCHAR2 | Y | Codigo do paciente (de-para) |
| 69 | NM_PACIENTE | VARCHAR2 | Y | Nome do paciente |
| 70 | DT_NASCIMENTO | DATE | Y | Data de Nascimento |
| 71 | NM_CONVENIO | VARCHAR2 | Y | Nome do convenio |
| 72 | CD_PLANO | NUMBER | Y | Codigo do plano do convenio |
| 73 | CD_PLANO_INTEGRA | VARCHAR2 | Y | Codigo do plano do convenio (de-para) |
| 74 | DS_PLANO | VARCHAR2 | Y | Descric?o do contato. |
| 75 | DS_OBSERVACAO | VARCHAR2 | Y | Observac?es do agendamento |
| 76 | NM_MAE | VARCHAR2 | Y | Nome da M?e do paciente |
| 77 | CD_CIDADE | NUMBER | Y | Codigo da cidade |
| 78 | NM_CIDADE | VARCHAR2 | Y | Nome da cidade |
| 79 | NM_CARTEIRA | VARCHAR2 | Y | Numero da carteira do plano de saude |
| 80 | DT_VALIDADE_CARTEIRA | DATE | Y | Data de validade da carteira |
| 81 | NR_GUIA | VARCHAR2 | Y | Numero da guia |
| 82 | DT_VALIDADE_GUIA | DATE | Y | Data de validade da guia |
| 83 | CD_SENHA | VARCHAR2 | Y | Codigo da senha da guia |
| 84 | HR_CHEGADA | DATE | Y | Hora da chegada do paciente para a consulta |
| 85 | SN_ATRASO | VARCHAR2 | Y | Identifica se o paciente chegou atrasado para sua consulta ou execuc?o de exames |
| 86 | DT_TEMPO_ATRASO | DATE | Y | Tempo de atraso do paciente |
| 87 | SN_ATENDIDO | VARCHAR2 | Y | Identifica se o paciente foi ou nao atendido |
| 88 | HR_ATENDIDO | DATE | Y | Hora em que o paciente foi atendido |
| 89 | TP_SITUACAO_AGENDAMENTO | VARCHAR2 | Y | Situac?o do agendamento |
| 90 | DT_REQUISICAO_MEDICA | DATE | Y | Data que foi emitida a requsic?o medica solicitando a realizac?o do procedimento |
| 91 | NR_CONSELHO_PRESTADOR | VARCHAR2 | Y | Numero do conselho do prestador solicitante |
| 92 | SN_AGENDADO | VARCHAR2 | Y | Identificador - Paciente Agendado ? |
| 93 | SN_ANESTESISTA | VARCHAR2 | Y | Identificador - Necessaria a presenca do Anestesista ? |
| 94 | SN_PRIORIDADE | VARCHAR2 | Y | Identificador - E um agendamento prioritario ? |
| 95 | CD_UNIDADE_REGIONAL_UBS | VARCHAR2 | Y | Unidade Regional a qual pertence o horario |
| 96 | CD_DIVISAO_UNIDADE_REGIONAL | VARCHAR2 | Y | Indica se os detalhes da divis?o |
| 97 | SN_LIBERA_VAGA_UBS | VARCHAR2 | Y | Indica se o horario sera contabilizado como vaga para as Unidades Regionais |
| 98 | SN_IMPRIME_AVISO | VARCHAR2 | Y | Identificador - Etiqueta de Aviso ao Same ja foi impressa ? |
| 99 | NM_USUARIO_AGENDAMENTO | VARCHAR2 | Y | Nome do usuario que realizou o agendamento |
| 100 | NM_USUARIO_CONFIRMOU | VARCHAR2 | Y | Nome do usuario que confirmou o agendamento |
| 101 | CD_AGENDA_PAI | NUMBER | Y | Codigo do Plant?o da Agenda Pai - Agendamento que ocupa multiplos horarios |
| 102 | CD_HORA_AGENDAMENTO_PAI | NUMBER | Y | Horario da Agenda Pai - Agendamento que ocupa multiplos horarios |

---

## MVINTEGRA.INTEGRA_SAIDA_ATENDIMENTO
> Tabela usada para tratar a integracao de pessoas quando houver mais de uma empresa no processo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INTEGRA_SAIDA_ATENDIMENTO | NUMBER | N | Codigo sequencial dos registros da integracao |
| 2 | TP_INTEGRACAO | VARCHAR2 | N | Identifica o status da interacao |
| 3 | DS_ERRO | VARCHAR2 | Y | Descricao do erro, caso o campo TP_INTEGRACAO seja igual a E |
| 4 | DT_INTEGRACAO | DATE | N | Data em que o registro foi disponibilizado na tabela de integracao |
| 5 | DT_INTEGRACAO_MV2000 | DATE | Y | Data em que ocorreu a integracao do registro com outro sistema |
| 6 | TP_MOVIMENTO | VARCHAR2 | N | Identifica o tipo do momento: I-Inclusao, A-Alteracao e E-Excluso |
| 7 | TP_REGISTRO | VARCHAR2 | N | Tipo do registro |
| 8 | CD_FILIAL_INTEGRA | VARCHAR2 | N | Codigo da filial da empresa que esta se integrando |
| 9 | CD_ATENDIMENTO | NUMBER | Y | Codigo do atendimento do paciente |
| 10 | DT_ATENDIMENTO | DATE | Y | Data que ocorreu o atendimento |
| 11 | HR_ATENDIMENTO | DATE | Y | Hora que ocorreu o atendimento |
| 12 | CD_ORIGEM | NUMBER | Y | Codigo da Origem do Atendimento |
| 13 | CD_ORIGEM_INTEGRA | VARCHAR2 | Y | Codigo da Origem do Atendimento no Sistema Destino |
| 14 | DS_ORIGEM | VARCHAR2 | Y | Descric?o da origem do atendimento |
| 15 | CD_PRESTADOR | NUMBER | Y | Codigo do Prestador responsavel pelo atendimento do paciente |
| 16 | CD_PRESTADOR_INTEGRA | VARCHAR2 | Y | Codigo do Prestador no Sistema Destino |
| 17 | NM_PRESTADOR | VARCHAR2 | Y | Nome do Prestador |
| 18 | CD_CONVENIO | NUMBER | Y | Codigo do Convenio |
| 19 | CD_CONVENIO_INTEGRA | VARCHAR2 | Y | Codigo do Convenio no Sistema Destino |
| 20 | TP_CONVENIO | VARCHAR2 | Y | Tipo do Convenio |
| 21 | TP_CONVENIO_INTEGRA | VARCHAR2 | Y | Tipo do Convenio no outro sistema |
| 22 | NM_CONVENIO | VARCHAR2 | Y | Nome do convenio |
| 23 | CD_PLANO | NUMBER | Y | Codigo do plano de saude |
| 24 | CD_PLANO_INTEGRA | VARCHAR2 | Y | Codigo do plano de saude no outro sistema |
| 25 | DS_PLANO | VARCHAR2 | Y | Descric?o do plano de saude |
| 26 | CD_SUB_PLANO | VARCHAR2 | Y | Codigo do sub-plano |
| 27 | CD_SUB_PLANO_INTEGRA | VARCHAR2 | Y | Codigo do sub-plano no outro sistema |
| 28 | DS_SUB_PLANO | VARCHAR2 | Y | Descric?o do sub-plano |
| 29 | CD_LOCAL_PROCEDENCIA | NUMBER | Y | Local da procedencia do paciente |
| 30 | CD_LOCAL_PROCEDENCIA_INTEGRA | VARCHAR2 | Y | Local da procedencia do paciente no outro sistema |
| 31 | DS_LOCAL_PROCEDENCIA | VARCHAR2 | Y | Descric?o da procedencia do paciente |
| 32 | CD_DESTINO_ATENDIMENTO | NUMBER | Y | Destino do paciente |
| 33 | CD_DESTINO_ATENDIMENTO_INTEGRA | VARCHAR2 | Y | Destino do paciente no outro sistema |
| 34 | DS_DESTINO_ATENDIMENTO | VARCHAR2 | Y | Descric?o do destino do paciente |
| 35 | SN_TEM_ACOMPANHANTE | VARCHAR2 | Y | Identifica se o paciente esta com acompanhante. |
| 36 | CD_PROC_ATENDIMENTO | VARCHAR2 | Y | Codigo do procedimento do atendimento |
| 37 | CD_PROC_ATENDIMENTO_INTEGRA | VARCHAR2 | Y | Codigo do procedimento do atendimento no outro sistema |
| 38 | DS_PROC_ATENDIMENTO | VARCHAR2 | Y | Descricao do procedimento do atendimento |
| 39 | CD_CID_ATENDIMENTO | VARCHAR2 | Y | Codigo do CID no atendimento |
| 40 | TP_ATENDIMENTO | VARCHAR2 | Y | Tipo do atendimento |
| 41 | TP_ATENDIMENTO_INTEGRA | VARCHAR2 | Y | Tipo do atendimento no outro sistema |
| 42 | TP_INTERNACAO | NUMBER | Y | Tipo de internac?o |
| 43 | TP_INTERNACAO_INTEGRA | VARCHAR2 | Y | Tipo de internac?o no outro sistema |
| 44 | DS_INTERNACAO | VARCHAR2 | Y | Descric?o do tipo de internac?o |
| 45 | CD_UNID_INTERNACAO | NUMBER | Y | Unidade de internac?o |
| 46 | CD_UNID_INTERNACAO_INTEGRA | VARCHAR2 | Y | Unidade de internac?o no outro sistema |
| 47 | DS_UNID_INTERNACAO | VARCHAR2 | Y | Descric?o da unidade de internac?o |
| 48 | CD_SETOR | NUMBER | Y | Setor  (centro de custo) |
| 49 | CD_SETOR_INTEGRA | VARCHAR2 | Y | Setor  (centro de custo) no outro sistema |
| 50 | DS_SETOR | VARCHAR2 | Y | Descric?o do setor |
| 51 | TP_ACOMODACAO | NUMBER | Y | Tipo de acomodac?o |
| 52 | TP_ACOMODACAO_INTEGRA | VARCHAR2 | Y | Tipo de acomodac?o no outro sistema |
| 53 | DS_ACOMODACAO | VARCHAR2 | Y | Descric?o do tipo de acomodac?o |
| 54 | CD_LEITO | NUMBER | Y | Codigo do leito |
| 55 | CD_LEITO_INTEGRA | VARCHAR2 | Y | Codigo do leito no outro sistema |
| 56 | DS_LEITO | VARCHAR2 | Y | Descric?o do leito |
| 57 | DS_LEITO_RESUMIDO | VARCHAR2 | Y | Descric?o resumida do leito |
| 58 | DS_ENFERMAGEM | VARCHAR2 | Y | Descric?o da enfermaria |
| 59 | CD_SERVICO | NUMBER | Y | Servico do atendimento |
| 60 | CD_SERVICO_INTEGRA | VARCHAR2 | Y | Servico do atendimento no outro sistema |
| 61 | DS_SERVICO | VARCHAR2 | Y | Descric?o do servico |
| 62 | CD_ESPECIALIDADE | VARCHAR2 | Y | Codigo da Especialidade |
| 63 | CD_ESPECIALIDADE_INTEGRA | VARCHAR2 | Y | Codigo da Especialidade no outro sistema |
| 64 | DS_ESPECIALIDADE | VARCHAR2 | Y | Descric?o da especialidade |
| 65 | NR_GUIA | VARCHAR2 | Y | Numero da guia |
| 66 | TP_GUIA | VARCHAR2 | Y | Tipo da guia |
| 67 | TP_GUIA_INTEGRA | VARCHAR2 | Y | Tipo da guia no outro sistema |
| 68 | QT_DIAS_SOLICITADOS | NUMBER | Y | Quantidade de dias solicitados na guia |
| 69 | QT_HORAS_SOLICITADOS | NUMBER | Y | Quantidade de horas solicitadas na guia. (usada para paciente dia) |
| 70 | QT_DIAS_AUTORIZADOS | NUMBER | Y | Quantidade de dias autorizados na guia |
| 71 | QT_HORAS_AUTORIZADOS | NUMBER | Y | Quantidade de horas autorizadas na guia. (usada para paciente dia) |
| 72 | CD_SENHA | VARCHAR2 | Y | Senha da guia |
| 73 | CD_PACIENTE | NUMBER | Y | Codigo de Identificac?o do Paciente (Prontuario) |
| 74 | CD_PACIENTE_INTEGRA | VARCHAR2 | Y | Codigo do paciente no outro sistema |
| 75 | DS_NOME | VARCHAR2 | Y | Nome do paciente |
| 76 | DS_RESPONSAVEL_PACIENTE | VARCHAR2 | Y | Nome do responsavel pelo paciente |
| 77 | TP_PARENTESCO | VARCHAR2 | Y | Tipo de parentesco |
| 78 | TP_PARENTESCO_INTEGRA | VARCHAR2 | Y | Tipo de parentesco no outro sistema |
| 79 | DS_TIPO_PARENTESCO | VARCHAR2 | Y | Descric?o do tipo de parentesco |
| 80 | CD_PROFISSAO_RESP | NUMBER | Y | Codigo da profiss?o do responsavel pelo paciente |
| 81 | CD_PROFISSAO_RESP_INTEGRA | VARCHAR2 | Y | Codigo da profiss?o do responsavel pelo paciente no outro sistema |
| 82 | DS_NATURALIDADE_RESP | VARCHAR2 | Y | Naturalidade do responsavel pelo paciente |
| 83 | NR_TELEFONE_RESP | VARCHAR2 | Y | Telefone de contato do responsavel do paciente |
| 84 | NR_IDENTIDADE_RESP | VARCHAR2 | Y | Numero da carteira de identidade do responsavel do paciente |
| 85 | NR_CPF_RESP | VARCHAR2 | Y | Numero do cpf do responsavel pelo paciente |
| 86 | DS_CONTATO_FAMILIA | VARCHAR2 | Y | Nome de algum contato da familia do paciente |
| 87 | DS_ENDERECO_RESP | VARCHAR2 | Y | Endereco do responsavel do paciente |
| 88 | NR_ENDERECO_RESP | VARCHAR2 | Y | Numero do endereco do responsavel do paciente |
| 89 | DS_COMPLEMENTO_RESP | VARCHAR2 | Y | Complemento do endereco do responsavel do paciente |
| 90 | DS_BAIRRO_RESP | VARCHAR2 | Y | Bairro do endereco do responsavel do paciente |
| 91 | CD_CIDADE_RESP | VARCHAR2 | Y | Cidade do endereco do responsavel do paciente |
| 92 | DS_CIDADE_RESP | VARCHAR2 | Y | Descric?o da cidade do endereco do responsavel do paciente |
| 93 | CD_ESTADO_RESP | VARCHAR2 | Y | Estado do endereco do responsavel do paciente |
| 94 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da empresa. Usado para ambinetes multi-empresa. Senao houver, preencher com 1 |
| 95 | DT_ALTA | DATE | Y | Data da alta do paciente |
| 96 | HR_ALTA | DATE | Y | Hora da alta do paciente |
| 97 | CD_PACIENTE_ANTERIOR | NUMBER | Y | Codigo do Paciente anterior em uma transferencia/atualizac?o de dados de um paciente para outro |
| 98 | NM_PACIENTE_ANTERIOR | VARCHAR2 | Y | Nome do Paciente anterior em uma transferencia/atualizac?o de dados de um paciente para outro |
| 99 | SN_ALTA_POR_OBITO | VARCHAR2 | Y | Identifica se a alta foi por obito em atendimentos de internac?o e urgencia |
| 100 | CD_LEITO_ANTERIOR | NUMBER | Y | Codigo referente leito anterior da Transferencia de Leito do paciente |
| 101 | DS_LEITO_ANTERIOR | VARCHAR2 | Y | Descric?o do leito anterior da Transferencia de Leito do paciente |
| 102 | DS_LEITO_RESUMIDO_ANTERIOR | VARCHAR2 | Y | Descric?o resumida do leito anterior da Transferencia de Leito do paciente |
| 103 | SN_ALTA | VARCHAR2 | Y | Indica o evento de alta do paciente na integrac?o |
| 104 | CD_MOTIVO_ALTA | NUMBER | Y | Codigo do Motivo da Alta |
| 105 | DS_MOTIVO_ALTA | VARCHAR2 | Y | Descric?o do motivo de alta |
| 106 | CD_LEITO_ANTERIOR_INTEGRA | VARCHAR2 | Y | Codigo do leito anterior (de-para) |
| 107 | CD_INTEGRA_PAI | NUMBER | Y | Codigo de controle para saber qual o registro PAI do registro atual |
| 108 | CD_ATENDIMENTO_INTEGRA | VARCHAR2 | Y | Codigo de-para do atendimento |
| 109 | TP_ESTADO_CIVIL_RESP | VARCHAR2 | Y | Estado Civil do Responsavel |
| 110 | NR_CEP_RESP | VARCHAR2 | Y | CEP do endereco do Responsavel |
| 111 | DT_NASCIMENTO_RESP | DATE | Y | Data de nascimento do Responsavel |
| 112 | NR_CPF_PRESTADOR | VARCHAR2 | Y | Numero CPF prestador |
| 113 | DS_PROC_ALTA | VARCHAR2 | Y | Descricao do procedimento de alta |
| 114 | CD_PROC_ALTA | VARCHAR2 | Y | Codigo do procedimento de alta |
| 115 | NR_CNS_PRESTADOR | VARCHAR2 | Y | Numero do CNS do prestador |
| 116 | CD_PROC_ALTA_INTEGRA | VARCHAR2 | Y | Codigo do procedimento de alta (DE-PARA) |

---

## MVINTEGRA.INTEGRA_SAIDA_ATENDIMENTO_STS
> Tabela usada para tratar a integracao de pessoas quando houver mais de uma empresa no processo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INTEGRA_SAIDA_ATENDIMENTO | NUMBER | N | Codigo sequencial dos registros da integracao |
| 2 | TP_INTEGRACAO | VARCHAR2 | N | Identifica o status da interacao |
| 3 | DS_ERRO | VARCHAR2 | Y | Descricao do erro, caso o campo TP_INTEGRACAO seja igual a E |
| 4 | DT_INTEGRACAO | DATE | N | Data em que o registro foi disponibilizado na tabela de integracao |
| 5 | DT_INTEGRACAO_MV2000 | DATE | Y | Data em que ocorreu a integracao do registro com outro sistema |
| 6 | TP_MOVIMENTO | VARCHAR2 | N | Identifica o tipo do momento: I-Inclusao, A-Alteracao e E-Excluso |
| 7 | TP_REGISTRO | VARCHAR2 | N | Tipo do registro |
| 8 | CD_FILIAL_INTEGRA | VARCHAR2 | N | Codigo da filial da empresa que esta se integrando |
| 9 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da empresa. Usado para ambinetes multi-empresa. Senao houver, preencher com 1 |
| 10 | DS_EMPRESA_INTEGRACAO | VARCHAR2 | Y | Assinatura da empresa que esta integrando |

---

## MVINTEGRA.INTEGRA_SAIDA_CAD_PESSOA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INTEGRA_SAIDA_CAD_PESSOA | NUMBER | N |  |
| 2 | TP_INTEGRACAO | VARCHAR2 | N |  |
| 3 | DS_ERRO | VARCHAR2 | Y |  |
| 4 | DT_INTEGRACAO | DATE | N |  |
| 5 | DT_INTEGRACAO_MV2000 | DATE | Y |  |
| 6 | TP_MOVIMENTO | VARCHAR2 | N |  |
| 7 | TP_REGISTRO | VARCHAR2 | N |  |
| 8 | CD_FILIAL_INTEGRA | VARCHAR2 | N |  |
| 9 | NR_CGC_CPF | VARCHAR2 | Y |  |
| 10 | CD_PESSOA | NUMBER | Y |  |
| 11 | NM_PESSOA | VARCHAR2 | Y |  |
| 12 | NM_FANTASIA | VARCHAR2 | Y |  |
| 13 | NM_MNEMONICO | VARCHAR2 | Y |  |
| 14 | TP_FORNECEDOR | VARCHAR2 | Y |  |
| 15 | TP_CLIENTE_FORN | VARCHAR2 | Y |  |
| 16 | DS_ENDERECO | VARCHAR2 | Y |  |
| 17 | NR_ENDERECO | VARCHAR2 | Y |  |
| 18 | DS_COMPLEMENTO | VARCHAR2 | Y |  |
| 19 | NM_BAIRRO | VARCHAR2 | Y |  |
| 20 | NR_FONE | VARCHAR2 | Y |  |
| 21 | NR_CEP | VARCHAR2 | Y |  |
| 22 | CD_CIDADE | NUMBER | Y |  |
| 23 | CD_CIDADE_COMERCIAL | NUMBER | Y |  |
| 24 | DS_ENDERECO_COMERCIAL | VARCHAR2 | Y |  |
| 25 | DS_COMPLEMENTO_COMERCIAL | VARCHAR2 | Y |  |
| 26 | DS_EMAIL | VARCHAR2 | Y |  |
| 27 | NR_RG_NASC | NUMBER | Y |  |
| 28 | NR_IDENTIDADE | VARCHAR2 | Y |  |
| 29 | DS_OM_IDENTIDADE | VARCHAR2 | Y |  |
| 30 | NR_INSC_EST | VARCHAR2 | Y |  |
| 31 | SN_ATIVO | VARCHAR2 | Y |  |
| 32 | TP_SITUACAO | VARCHAR2 | Y |  |
| 33 | TP_ESTADO_CIVIL | VARCHAR2 | Y |  |
| 34 | TP_SEXO | VARCHAR2 | Y |  |
| 35 | TP_COR | VARCHAR2 | Y |  |
| 36 | TP_SANGUINEO | VARCHAR2 | Y |  |
| 37 | SN_DOADOR | VARCHAR2 | Y |  |
| 38 | NM_MAE | VARCHAR2 | Y |  |
| 39 | NM_PAI | VARCHAR2 | Y |  |
| 40 | NM_CONJUGE | VARCHAR2 | Y |  |
| 41 | NR_PISPASEP | NUMBER | Y |  |
| 42 | TP_CORPO_CLINICO | VARCHAR2 | Y |  |
| 43 | DS_CODIGO_CONSELHO | VARCHAR2 | Y |  |
| 44 | CD_CONSELHO | NUMBER | Y |  |
| 45 | CD_TIP_PRESTA | NUMBER | Y |  |
| 46 | DS_CARGO | VARCHAR2 | Y |  |
| 47 | NR_CCM | NUMBER | Y |  |
| 48 | NR_INSS | NUMBER | Y |  |
| 49 | DS_FACULDADE | VARCHAR2 | Y |  |
| 50 | TP_DOCUMENTACAO | VARCHAR2 | Y |  |
| 51 | DT_CADASTRO | DATE | Y |  |
| 52 | HR_CADASTRO | DATE | Y |  |
| 53 | DT_NASCIMENTO | DATE | Y |  |
| 54 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 55 | TP_VINCULO | VARCHAR2 | Y |  |
| 56 | DS_FOR_COM | VARCHAR2 | Y |  |
| 57 | NR_CGC_CPF_CONTATO | NUMBER | Y |  |
| 58 | NM_CONTATO | VARCHAR2 | Y |  |
| 59 | DS_OBSERVACAO_CONTATO | VARCHAR2 | Y |  |
| 60 | CD_CONVENIO | NUMBER | Y |  |
| 61 | CD_CON_PLA | NUMBER | Y |  |
| 62 | CD_CON_PLA_INTEGRA | VARCHAR2 | Y |  |
| 63 | CD_SUB_PLA_INTEGRA | VARCHAR2 | Y |  |
| 64 | DT_VALIDADE | DATE | Y |  |
| 65 | NM_TITULAR | VARCHAR2 | Y |  |
| 66 | NR_CARTEIRA | VARCHAR2 | Y |  |
| 67 | NR_CARTEIRA_INTEGRA | VARCHAR2 | Y |  |
| 68 | DT_ULT_PAGTO | DATE | Y |  |
| 69 | SN_TITULAR | VARCHAR2 | Y |  |
| 70 | NR_MATRICULA_TITULAR | VARCHAR2 | Y |  |
| 71 | SN_CARTEIRA_ATIVO | VARCHAR2 | Y |  |
| 72 | CD_ESPECIALID | NUMBER | Y |  |
| 73 | DS_ESPECIALID | VARCHAR2 | Y |  |
| 74 | CD_ESPECIALID_INTEGRA | VARCHAR2 | Y |  |
| 75 | SN_ESPECIALID_PRINCIPAL | VARCHAR2 | Y |  |
| 76 | CD_CIDADANIA | NUMBER | Y | Codigo referente a Nacionalidade do Paciente |
| 77 | DS_CIDADANIA | VARCHAR2 | Y | Descric?o da Nacioanlidade do Paciente |
| 78 | CD_INTEGRA_SEQUENCE_EXTERNA | NUMBER | Y |  |
| 79 | CD_CIDADANIA_INTEGRA | VARCHAR2 | Y | Codigo referente a Nacionalidade do Paciente no Sistema de integrac?o |
| 80 | NM_CIDADE | VARCHAR2 | Y |  |
| 81 | CD_UF | VARCHAR2 | Y |  |
| 82 | CD_PESSOA_INTEGRA | VARCHAR2 | Y | Codida de cadastral da pessoa (de-para) |
| 83 | CD_BANCO | NUMBER | Y | Codigo do banco |
| 84 | CD_AGENCIA | VARCHAR2 | Y | Codigo da agencia bancaria |
| 85 | NR_CONTA | VARCHAR2 | Y | Numero da conta bacaria |
| 86 | CD_PESSOA_INTEGRA_DESTINO | VARCHAR2 | Y | Novo codigo da pessoa, usado na unificac?o de prontuario. (so e usado para integrac?o de pacientes) |
| 87 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da empresa no MV2000) |
| 88 | CD_SUB_PLA | VARCHAR2 | Y |  |
| 89 | CD_INTEGRA_PAI | NUMBER | Y | Codigo de controle para saber qual o registro PAI do registro atual |
| 90 | DT_VIGENCIA | DATE | Y | Data Inicial da Vigencia |
| 91 | CD_CONVENIO_INTEGRA | VARCHAR2 | Y | Codigo do Convenio (De-Para) |
| 92 | VL_HORA_TRABALHADA | NUMBER | Y | Valor da Hora trabalhada |
| 93 | VL_HORA_TRABALHADA_EXTRA | NUMBER | Y | Valor da Hora Extra trabalhada |
| 94 | CD_ESCALA | NUMBER | Y | Codigo da Escala do Funcionario |
| 95 | CD_ESCALA_INTEGRA | VARCHAR2 | Y | Codigo da Escala do Funcionario |
| 96 | SN_AUTORIZA_EXTRA | VARCHAR2 | Y | Autorizac?o de Hora Extra |
| 97 | CD_SETOR | NUMBER | Y | Indica o setor onde o funcionario esta locado |
| 98 | CD_USUARIO | VARCHAR2 | Y | Usuario que efetuou a atualizac?o |
| 99 | CD_IBGE_CIDADE | NUMBER | Y | Codigo IBGE da Cidade |
| 100 | CD_TIPO_LOGRADOURO | NUMBER | Y | Tipo de logradouro |
| 101 | DS_TIPO_LOGRADOURO | VARCHAR2 | Y | Descricao do tipo de logradouro |
| 102 | CD_NATURALIDADE | NUMBER | Y | Codigo da cidade da naturalidade |
| 103 | DS_NATURALIDADE | VARCHAR2 | Y | Descricao da cidade da naturalidade |
| 104 | CD_IBGE_NATURALIDADE | NUMBER | Y | Codigo IBGE da cidade da naturalidade |
| 105 | CD_UF_NATURALIDADE | VARCHAR2 | Y | UF - Unidade Federativa da cidade da naturalidade |
| 106 | CD_CBOR | VARCHAR2 | Y | Codigo do CBOR - Codigo Brasileiro de Ocupac?o Reduzido |
| 107 | DS_CBOR | VARCHAR2 | Y | Descricao do CBOR - Codigo Brasileiro de Ocupac?o Reduzido |
| 108 | NR_CNS | VARCHAR2 | Y | Numero da Carteira Nacional de Saude do paciente |
| 109 | DT_EMISSAO_IDENTIDADE | DATE | Y | Data de emissao da identidade |
| 110 | CD_GRAU_INS | NUMBER | Y | Codigo do Grau de Instrucao |
| 111 | DS_GRAU_INS | VARCHAR2 | Y | Descricao do Grau de Instrucao |
| 112 | CD_GRAU_INS_INTEGRA | VARCHAR2 | Y | Codigo do Grau de Instrucao (de-para) |
| 113 | TP_CERTIDAO | VARCHAR2 | Y | Tipo da Certidao do paciente |
| 114 | DS_CERTIDAO | VARCHAR2 | Y | Descricao da Certidao do paciente |
| 115 | CD_CERTIDAO_INTEGRA | VARCHAR2 | Y | Codigo da Certidao do paciente (de-para) |
| 116 | CD_OM_IDENTIDADE | NUMBER | Y | Codigo do orgao emissor da identidade |
| 117 | CD_OM_IDENTIDADE_SIGLA | VARCHAR2 | Y | Codigo da sigla do orgao emissor da identidade |
| 118 | NM_OM_IDENTIDADE | VARCHAR2 | Y | Nome do orgao emissor da identidade |
| 119 | CD_OM_IDENTIDADE_INTEGRA | VARCHAR2 | Y | Codigo do orgao emissor da identidade (de-para) |
| 120 | CD_SITUACAO_FAMILIAR | NUMBER | Y | Codigo da situacao familiar do paciente |
| 121 | DS_SITUACAO_FAMILIAR | VARCHAR2 | Y | Descricao da situacao familiar do paciente |
| 122 | CD_SITUACAO_FAMILIAR_INTEGRA | VARCHAR2 | Y | Codigo da situacao familiar do paciente (de-para) |
| 123 | NM_CARTORIO | VARCHAR2 | Y | Nome do cartorio da certidao |
| 124 | DS_LIVRO | VARCHAR2 | Y | Descricao do livro da certidao |
| 125 | DS_FOLHA | VARCHAR2 | Y | Descricao da folha do livro da certidao |
| 126 | DT_EMISSAO_CERTIDAO | DATE | Y | Data da emissao da certidao |
| 127 | DS_TRABALHO | VARCHAR2 | Y | Descric?o do Local de Trabalho |
| 128 | CD_PROFISSAO | NUMBER | Y | Codigo da profiss?o |
| 129 | CD_PROFISSAO_INTEGRA | VARCHAR2 | Y | Codigo da profiss?o DE-PARA |
| 130 | DS_PROFISSAO | VARCHAR2 | Y | Descric?o da profissao |
| 131 | CD_DISTRITO_SANITARIO | NUMBER | Y | Codigo do distrito tanitario |
| 132 | CD_DIST_SANITARIO_INTEGRA | VARCHAR2 | Y | Codigo do distrito tanitario DE-PARA |
| 133 | DS_DISTRITO_SANITARIO | VARCHAR2 | Y | Descric?o do distrito sanitario |
| 134 | CD_CLASSE_ECONOMICA | NUMBER | Y | Codigo da classe economica |
| 135 | CD_CLASSE_ECON_INTEGRA | VARCHAR2 | Y | Codigo da classe economica DE-PARA |
| 136 | DS_CLASSE_ECONOMICA | VARCHAR2 | Y | Descric?o da classe economica |
| 137 | CD_TIPO_MORADIA | NUMBER | Y | Codigo do tipo de moradia |
| 138 | CD_TIPO_MORADIA_INTEGRA | VARCHAR2 | Y | Codigo do tipo de moradia DE-PARA |
| 139 | DS_TIPO_MORADIA | VARCHAR2 | Y | Descric?o do tipo de moradia |
| 140 | CD_RELIGIAO | NUMBER | Y | Codigo da religi?o |
| 141 | CD_RELIGIAO_INTEGRA | VARCHAR2 | Y | Codigo da religi?o DE-PARA |
| 142 | DS_RELIGIAO | VARCHAR2 | Y | Descric?o da religi?o |
| 143 | CD_ETNIA | NUMBER | Y | Codigo da Etinia Indigena |
| 144 | CD_PESSOA_ANTERIOR | NUMBER | Y | Codigo anterior da pessoa. |
| 145 | NR_CELULAR | VARCHAR2 | Y |  |
| 146 | NR_DDD_CELULAR | NUMBER | Y |  |
| 147 | CD_UF_EMISSAO_IDENTIDADE | VARCHAR2 | Y |  |
| 148 | NR_CTPS | VARCHAR2 | Y |  |
| 149 | NR_SERIE_CTPS | VARCHAR2 | Y |  |
| 150 | DT_EMISSAO_CTPS | DATE | Y |  |
| 151 | CD_UF_EMISSAO_CTPS | VARCHAR2 | Y |  |
| 152 | NR_TITULO_ELEITORAL | VARCHAR2 | Y |  |
| 153 | NR_ZONA_TITULO_ELEITORAL | VARCHAR2 | Y |  |
| 154 | NR_SECAO_TITULO_ELEITORAL | VARCHAR2 | Y |  |
| 155 | SN_VIP | VARCHAR2 | Y |  |
| 156 | CD_PAIS | NUMBER | Y |  |
| 157 | NR_DDD | NUMBER | Y |  |

---

## MVINTEGRA.INTEGRA_SAIDA_CAD_PESSOA_STS
> Tabela usada para tratar a integracao de pessoas quando houver mais de uma empresa no processo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INTEGRA_SAIDA_CAD_PESSOA | NUMBER | Y | Codigo sequencial dos registros da integracao |
| 2 | TP_INTEGRACAO | VARCHAR2 | N | Identifica o status da interacao |
| 3 | DS_ERRO | VARCHAR2 | Y | Descricao do erro, caso o campo TP_INTEGRACAO seja igual a E |
| 4 | DT_INTEGRACAO | DATE | N | Data em que o registro foi disponibilizado na tabela de integracao |
| 5 | DT_INTEGRACAO_MV2000 | DATE | Y | Data em que ocorreu a integracao do registro com outro sistema |
| 6 | TP_MOVIMENTO | VARCHAR2 | N | Identifica o tipo do momento: I-Inclusao, A-Alteracao e E-Excluso |
| 7 | TP_REGISTRO | VARCHAR2 | N | Tipo do registro |
| 8 | CD_FILIAL_INTEGRA | VARCHAR2 | N | Codigo da filial da empresa que esta se integrando |
| 9 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da empresa. Usado para ambinetes multi-empresa. Senao houver, preencher com 1 |
| 10 | DS_EMPRESA_INTEGRACAO | VARCHAR2 | Y | Assinatura da empresa que esta integrando |

---

## MVINTEGRA.INTEGRA_SAIDA_CAD_TABELAS
> Tabela responsavel em integraral tabelas do MV2000i

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INTEGRA_SAIDA_CAD_TABELAS | NUMBER | N | Codigo sequencial dos registros da integrac?o |
| 2 | TP_INTEGRACAO | VARCHAR2 | N | Identifica o status da integrac?o |
| 3 | DS_ERRO | VARCHAR2 | Y | Descric?o do erro, caso o campo TP_INTEGRACAO seja igual a E |
| 4 | DT_INTEGRACAO | DATE | N | Data em que o registro foi disponibilizado na tabela de integrac?o |
| 5 | DT_INTEGRACAO_MV2000 | DATE | Y | Data em que ocorreu a integrac?odo registro com o outro sistema |
| 6 | TP_MOVIMENTO | VARCHAR2 | N | Indica o tipo do resgistro: I-Iclus?o, A-Alterac?o e E-Exclus?o |
| 7 | TP_REGISTRO | VARCHAR2 | N | Tipo do registro |
| 8 | CD_FILIAL_INTEGRA | VARCHAR2 | N | Codigo da filial da empresa ao qual se esta integrando |
| 9 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da empresa, usado para ambientes multi-empresa |
| 10 | CD_ITEM | VARCHAR2 | Y | Codigo de identificac?o do item da tabela |
| 11 | CD_ITEM_INTEGRA | VARCHAR2 | Y | Codigo de identificac?o do item da tabela |
| 12 | DS_ITEM | VARCHAR2 | Y | Descric?o do item |
| 13 | TP_PORTE_CIRURGICO | VARCHAR2 | Y | Porte da cirurgia |
| 14 | QT_TEMPO_PREVISTO | DATE | Y | Tempo de realizac?a da cirurgia |
| 15 | CD_GRUPO | VARCHAR2 | Y | Codigo do grupo (depende do tipo do item) |
| 16 | DS_GRUPO | VARCHAR2 | Y | Descric?o do grupo (depende do tipo do item) |
| 17 | CD_SUB_GRUPO | VARCHAR2 | Y | Codigo do sub_grupo (depende do tipo do item) |
| 18 | DS_SUB_GRUPO | VARCHAR2 | Y | Descricao do sub_grupo (depende do tipo do item) |
| 19 | SN_ATIVO | VARCHAR2 | Y | Identifica se o item esta ou n?o ativo |
| 20 | CD_VIA_ACESSO | NUMBER | Y | Codigo da via de acesso |
| 21 | DS_VIA_ACESSO | VARCHAR2 | Y | Descricao da via de acesso |
| 22 | CD_PRO_FAT_AMB | VARCHAR2 | Y | Codigo de faturamento para convenios e particulares |
| 23 | DS_PRO_FAT_AMB | VARCHAR2 | Y | Descric?o do procedimento de faturamento de convenios e particulares |
| 24 | CD_PRO_FAT_SIH | VARCHAR2 | Y | Codigo do procedimento de faturamento para internac?es SUS-AIH |
| 25 | DS_PRO_FAT_SIH | VARCHAR2 | Y | Descricao do procedimento de faturamento SUS-SIH |
| 26 | CD_PRO_FAT_SIA | VARCHAR2 | Y | Codigo do procedimento de faturamento para atendimentos SUS-SIA |
| 27 | DS_PRO_FAT_SIA | VARCHAR2 | Y | Descric?o do procedimento de faturamento de atendimentos SUS-SIA |
| 28 | CD_INTEGRA_PAI | NUMBER | Y | Codigo de controle para saber qual o registro PAI do registro atual |
| 29 | TP_ITEM | VARCHAR2 | Y | Tipo do Item |
| 30 | CD_SETOR | NUMBER | Y | C??digo do Setor no sistema MV2000 |
| 31 | DS_SETOR | VARCHAR2 | Y | Descri???#o do Setor |
| 32 | CD_SETOR_INTEGRA | VARCHAR2 | Y | C??digo do Setor no sistema externo |

---

## MVINTEGRA.INTEGRA_SAIDA_COMPRAS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INTEGRA_SAIDA_COMPRAS | NUMBER | N |  |
| 2 | CD_SOL_COM | NUMBER | Y |  |
| 3 | CD_PRODUTO | NUMBER | Y |  |
| 4 | QT_SOLIC | NUMBER | Y |  |
| 5 | DT_SOL_COM | DATE | Y |  |
| 6 | CD_ESTOQUE | NUMBER | Y |  |
| 7 | DT_INTEGRA | DATE | Y |  |
| 8 | TP_INTEGRACAO | VARCHAR2 | N |  |
| 9 | DS_ERRO | VARCHAR2 | Y |  |
| 10 | DT_INTEGRACAO | DATE | N |  |
| 11 | DT_INTEGRACAO_MV2000 | DATE | Y |  |
| 12 | TP_MOVIMENTO | VARCHAR2 | N |  |
| 13 | TP_REGISTRO | VARCHAR2 | N |  |
| 14 | CD_FILIAL_INTEGRA | VARCHAR2 | N |  |
| 15 | DT_MAXIMA | DATE | Y |  |
| 16 | DS_OBS | VARCHAR2 | Y |  |
| 17 | CD_PRODUTO_INTEGRA | VARCHAR2 | Y |  |
| 18 | CD_CEN_CUS | VARCHAR2 | Y |  |
| 19 | CD_INTEGRA_SEQUENCE_EXTERNA | NUMBER | Y |  |
| 20 | CD_USUARIO | VARCHAR2 | Y |  |
| 21 | CD_COTADOR | NUMBER | Y |  |
| 22 | NM_SOLICITANTE | VARCHAR2 | Y |  |
| 23 | CD_UNI_PRO | NUMBER | Y |  |
| 24 | DS_DICA_DA_COMPRA | VARCHAR2 | Y |  |
| 25 | CD_COLETA | NUMBER | Y | Codigo da cotac?o de precos |
| 26 | CD_FORNECEDOR | NUMBER | Y | Codigo do fornecedor envolvido na cotac?o de precos ou ordem de compras |
| 27 | DT_COLETA | DATE | Y | Data da cotac?o de precos |
| 28 | CD_CONDICAO_PAGAMENTO | NUMBER | Y | Codigo da condic?o de pagamento no MV2000i |
| 29 | CD_ORD_COM | NUMBER | Y | Codigo da ordem de compras |
| 30 | DT_ORD_COM | DATE | Y | Data da ordem de compras |
| 31 | DT_PREV_ENTREGA | DATE | Y | Data da previs?o de entrega para a ordem de compras selecionada |
| 32 | CD_PARCELA | NUMBER | Y | Numero da parcela na programac?o de compras |
| 33 | DT_PARCELA | DATE | Y | Data da parcela na programac?o de compras |
| 34 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da multi_empresa no MV2000I |
| 35 | DT_ENTREGA_INICIO | DATE | Y | Data de entrega inicial |
| 36 | DT_ENTREGA_FINAL | DATE | Y | Data de entrega final |
| 37 | TP_ORD_COMPRAS | VARCHAR2 | Y | tipo da ordem de compras |
| 38 | CD_SETOR | NUMBER | Y | Codigo do setor |
| 39 | TP_FRETE | VARCHAR2 | Y | Tipo do frete - C-CIF ou F-Fob |
| 40 | SN_INCLUSO_NOTA_FISCAL | VARCHAR2 | Y | Identifica se o frete esta incluso ou n?o na nota fiscal |
| 41 | VL_PERC_FRETE | NUMBER | Y | Percentual do valor do frete |
| 42 | VL_FRETE | NUMBER | Y | Valor do frete |
| 43 | CD_ESPECIE | NUMBER | Y | Codigo da especie |
| 44 | CD_ESPECIE_INTEGRA | VARCHAR2 | Y | Codigo da especie (de-para) |
| 45 | CD_CLASSE | NUMBER | Y | Codigo da classe |
| 46 | CD_CLASSE_INTEGRA | VARCHAR2 | Y | Codigo da classe (de-para) |
| 47 | CD_SUB_CLASSE | NUMBER | Y | Codigo da sub-classe |
| 48 | CD_SUB_CLASSE_INTEGRA | VARCHAR2 | Y | Codigo da sub-classe (de-para) |
| 49 | DS_PRODUTO | VARCHAR2 | Y | Descric?o do produto |
| 50 | DS_MARCA_FABRICANTE | VARCHAR2 | Y | Marca do fabricante |
| 51 | DS_UNIDADE | VARCHAR2 | Y | Descric?o da unidade de medida |
| 52 | VL_FATOR | NUMBER | Y | Valor do fator de convers?o |
| 53 | VL_UNITARIO | NUMBER | Y | Valor unitario do item |
| 54 | VL_PERC_DESCONTO | NUMBER | Y | Percentual de desconto do item |
| 55 | VL_DESCONTO | NUMBER | Y | Valor do desconto de item |
| 56 | VL_PERC_IMPOSTO | NUMBER | Y | Percentual do imposto |
| 57 | VL_IMPOSTO | NUMBER | Y | Valor do imposto |
| 58 | VL_OUTROS | NUMBER | Y | Outros valores |
| 59 | VL_TOTAL | NUMBER | Y | Valor total |
| 60 | VL_PARCELA | NUMBER | Y | Valor da parcela |
| 61 | TP_REGISTRO_COMPRA | VARCHAR2 | Y | Tipo de registro compra |
| 62 | CD_MOTIVO_PEDIDO | NUMBER | Y | Codigo do motivo do pedido |
| 63 | DS_MOTIVO_PEDIDO | VARCHAR2 | Y | Descric?o do motivo do pedido |
| 64 | DS_COTADOR | VARCHAR2 | Y | Nome do responsavel pela contac?o |
| 65 | DS_ESTOQUE | VARCHAR2 | Y | Descric?o do estoque |
| 66 | TP_ITEM | VARCHAR2 | Y | Tipo do item |
| 67 | TP_SITUACAO | VARCHAR2 | Y | Tipo da situac?o |
| 68 | SN_URGENTE | VARCHAR2 | Y | Indica se a solicitac?o e ou n?o urgente |
| 69 | DS_OBSERVACAO | VARCHAR2 | Y | Observac?o |
| 70 | DS_ESPECIE | VARCHAR2 | Y | Descric?o da especie do item |
| 71 | DS_CLASSE | VARCHAR2 | Y | Descric?o da classe do item |
| 72 | DS_SUB_CLASSE | VARCHAR2 | Y | Descric?o da sub-classe do item |
| 73 | QT_SOLICITADA | NUMBER | Y | Quantidade solicitada |
| 74 | QT_PROGRAMADA | NUMBER | Y | Quantidade programada |
| 75 | CD_MULTI_EMPRESA_INTEGRA | VARCHAR2 | Y | Codigo da multi-empresa (de-para) |
| 76 | CD_INTEGRA_PAI | NUMBER | Y | Codigo de controle para saber qual o registro PAI do registro atual |
| 77 | CD_SOL_COM_INTEGRA | VARCHAR2 | Y | Codigo de-para da solicitac?o de compras |

---

## MVINTEGRA.INTEGRA_SAIDA_COMPRAS_XML
> Tabela para controle da gerac?o do XML

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Codigo de identificac?o do XML |
| 2 | ID_PAI | NUMBER | Y | Codigo de identificac?o do XML pai |
| 3 | DS_IDENTIFICACAO_XML | VARCHAR2 | Y | String de identificac?o do XML |
| 4 | DT_GERACAO_XML | VARCHAR2 | Y | Data da gerac?o do XML |
| 5 | NR_CNPJ_CPF | VARCHAR2 | Y | Codigo do CNPJ/CPF do cliente |
| 6 | CD_IDENTIFICACAO | VARCHAR2 | Y | Codigo de identificac?o do cliente |
| 7 | CD_SISTEMA | VARCHAR2 | Y | Codigo do sistema a ser utilizado |

---

## MVINTEGRA.INTEGRA_SAIDA_CONTABIL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INTEGRA_SAIDA_CONTABIL | NUMBER | N |  |
| 2 | TP_INTEGRACAO | VARCHAR2 | N |  |
| 3 | DS_ERRO | VARCHAR2 | Y |  |
| 4 | DT_INTEGRACAO | DATE | N |  |
| 5 | DT_INTEGRACAO_MV2000 | DATE | Y |  |
| 6 | TP_MOVIMENTO | VARCHAR2 | N |  |
| 7 | TP_REGISTRO | VARCHAR2 | N |  |
| 8 | CD_FILIAL_INTEGRA | VARCHAR2 | N |  |
| 9 | DT_LANCADO | DATE | Y |  |
| 10 | DT_LANCADO_INTEGRA | DATE | Y |  |
| 11 | CD_ESPECIE_INTEGRA | VARCHAR2 | Y |  |
| 12 | VL_LANCADO | NUMBER | Y |  |
| 13 | CD_REDUZIDO_DEBITO | NUMBER | Y |  |
| 14 | CD_REDUZIDO_CREDITO | NUMBER | Y |  |
| 15 | CD_CONTABIL_DEBITO | VARCHAR2 | Y |  |
| 16 | CD_CONTABIL_CREDITO | VARCHAR2 | Y |  |
| 17 | CD_CONTABIL_DEBITO_INTEGRA | VARCHAR2 | Y |  |
| 18 | CD_CONTABIL_CREDITO_INTEGRA | VARCHAR2 | Y |  |
| 19 | CD_SETOR_DEBITO | NUMBER | Y |  |
| 20 | CD_SETOR_CREDITO | NUMBER | Y |  |
| 21 | CD_CEN_CUS_DEBITO_INTEGRA | VARCHAR2 | Y |  |
| 22 | CD_CEN_CUS_CREDITO_INTEGRA | VARCHAR2 | Y |  |
| 23 | DS_LANCADO | VARCHAR2 | Y |  |
| 24 | TP_ESTOQUE | VARCHAR2 | Y |  |
| 25 | CTRLJOB | VARCHAR2 | Y |  |
| 26 | CD_ESPECIE | NUMBER | Y | Codigo da Especie do Produto |
| 27 | CD_CLASSE | NUMBER | Y | Codigo da classe do Produto |
| 28 | CD_SUB_CLA | NUMBER | Y | Codigo da Sub-classe do Produto |
| 29 | VL_ESPECIE | NUMBER | Y | Valor dos movimentos de estoque agrupados por cada especie |
| 30 | VL_CLASSE | NUMBER | Y | Valor dos movimentos de estoque agrupados por cada classe |
| 31 | VL_SUB_CLA | NUMBER | Y | Valor dos movimentos de estoque agrupados por cada sub_classe |
| 32 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 33 | CD_CLASSE_INTEGRA | VARCHAR2 | Y | Codigo da classe do produto (de-para) |
| 34 | CD_SUB_CLA_INTEGRA | VARCHAR2 | Y | Codigo da sub-classe (de-para) |
| 35 | QT_LANCADO | NUMBER | Y | Quantidade lancada |
| 36 | CD_ESTOQUE_ORIGEM | NUMBER | Y | Codigo do estoque de origem |
| 37 | CD_ESTOQUE_ORIGEM_INTEGRA | NUMBER | Y | Codigo do estoque de origem |
| 38 | CD_ESTOQUE_DESTINO | NUMBER | Y | Codigo do estoque de destino |
| 39 | CD_ESTOQUE_DESTINO_INTEGRA | NUMBER | Y | Codigo do estoque de destino |
| 40 | CD_PRODUTO | NUMBER | Y | Codigo do produto |
| 41 | CD_PRODUTO_INTEGRA | VARCHAR2 | Y | Codigo do produto (de-para) |
| 42 | DS_PRODUTO | VARCHAR2 | Y | Descric?o do produto |
| 43 | QT_SAIDA | NUMBER | Y | Quantidade da saida |
| 44 | VL_SAIDA | NUMBER | Y | Valor da saida |
| 45 | QT_ENTRADA | NUMBER | Y | Quantidade da entrada |
| 46 | VL_ENTRADA | NUMBER | Y | Valor da entrada |
| 47 | TP_MODALIDADE_EMPRESTIMO | VARCHAR2 | Y | Tipo da modalidade do emprestimo |
| 48 | CD_INTEGRA_PAI | NUMBER | Y | Codigo de controle para saber qual o registro PAI do registro atual |

---

## MVINTEGRA.INTEGRA_SAIDA_CONTA_FINANC

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INTEGRA_SAIDA_CONTA_FINANC | NUMBER | N | Codigo sequencial do registro de integrac?o. |
| 2 | CD_INTEGRA_PAI | NUMBER | Y |  |
| 3 | TP_INTEGRACAO | VARCHAR2 | N | Identifica o estado da integrac?o. A - Aguardando, T - Transportado, E - Erro, P - Processando |
| 4 | TP_MOVIMENTO | VARCHAR2 | N | indica a ac?o do registro. I - Inclus?o, A - Alterac?o, E - Exclus?o. |
| 5 | DS_ERRO | VARCHAR2 | Y | Registra as menssagens de erro. |
| 6 | TP_REGISTRO | VARCHAR2 | N | Indica o tipo de informac?o de ira para a tabela. |
| 7 | DT_INTEGRACAO | DATE | N | Preenchida quando e postada a informac?o. |
| 8 | DT_INTEGRACAO_MV2000 | DATE | Y | Data em que o registro foi integrado pelo outro sistema (NUNCA PREENCHER QUANDO FOR SAIDA). |
| 9 | CD_FILIAL_INTEGRA | VARCHAR2 | N | Codigo da filial da empresa que esta se integrando. |
| 10 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da empresa. Usado para ambinetes multi-empresa. Senao houver, preencher com 1. |
| 11 | CD_MULTI_EMPRESA_INTEGRA | VARCHAR2 | Y | Codigo da empresa integrada. |
| 12 | TP_CONTA_FINANC | VARCHAR2 | Y | Define o tipo de CONTA - P ou R). |
| 13 | CD_CONTA_FINANC | NUMBER | Y | Codigo - (CD_CON_PAG/CD_CON_REC). |
| 14 | CD_CONTA_FINANC_INTEGRA | NUMBER | Y | Codigo - (CD_CON_PAG/CD_CON_REC). |
| 15 | CD_ITCONTA_FINANC | NUMBER | Y | Codigo - (CD_ITCON_PAG/CD_ITCON_REC). |
| 16 | CD_ITCONTA_FINANC_INTEGRA | NUMBER | Y | Codigo - (CD_ITCON_PAG/CD_ITCON_REC). |
| 17 | NR_DOCUMENTO | VARCHAR2 | Y | Numero de identificac?o do documento. |
| 18 | NR_SERIE | VARCHAR2 | Y | Numero de serie do documento selecionado. |
| 19 | DT_LANCAMENTO | DATE | Y | Data do lancamento do tipo de conta a pagar/receber. |
| 20 | DT_EMISSAO | DATE | Y | Data de emiss?o do lancamento. |
| 21 | SN_CONTABILIZA | VARCHAR2 | Y | Indica se a conta esta contabilizada.Default - N. |
| 22 | TP_VENCIMENTO | VARCHAR2 | Y | Tipo do vencimento da conta a pagar/receber.Default V - quando for RECEBER |
| 23 | VL_BRUTO_CONTA | NUMBER | Y | Valor liquido da conta a pagar/receber. |
| 24 | CD_HISTORICO_PADRAO | NUMBER | Y | Codigo do historico padr?o cadastrado. |
| 25 | CD_FORNECEDOR | NUMBER | Y | Identificac?o do fornecedor a ser pago. |
| 26 | DS_FORNECEDOR | VARCHAR2 | Y | Descric?o do fornecedor a ser pago. |
| 27 | CD_REDUZIDO | NUMBER | Y | Codigo de identificac?o. |
| 28 | CD_TIP_DOC | NUMBER | Y | Codigo de identificac?o do tipo de documento que foi lancado. |
| 29 | CD_PORTADOR | NUMBER | Y | Codigo do portador. |
| 30 | VL_BASE_IRRF | NUMBER | Y | Valor base do IRRF. |
| 31 | VL_BASE_INSS | NUMBER | Y | Valor base do INSS. |
| 32 | SN_IMPORT_AUT_ESTOQUE | VARCHAR2 | Y | Sinaliza se importa automaticamente para o estoque. Default - N. |
| 33 | CD_COTA | NUMBER | Y | Cota responsavel pelo documento. |
| 34 | SN_AUTORIZADO | VARCHAR2 | Y | Indica se a conta esta autorizada. Default - S |
| 35 | CD_DESCONTO | NUMBER | Y | Codigo de identificac?o do desconto  da conta pagar/receber. |
| 36 | VL_DESCONTO | NUMBER | Y | Valor do desconto . |
| 37 | CD_ACRESCIMO | NUMBER | Y | Codigo de identificac?o do acrescimo da conta pagar/receber. |
| 38 | VL_ACRESCIMO | NUMBER | Y | Valor do acrescimo. |
| 39 | VL_MOEDA_LIQ | NUMBER | Y | Valor liquido da conta a pagar - VL_MOEDA. |
| 40 | VL_MOEDA_DESC | NUMBER | Y | Digite o valor do desconto. |
| 41 | VL_MOEDA_ACRES | NUMBER | Y | Valor do acrescimo. |
| 42 | CD_MOEDA | VARCHAR2 | Y | Tipo de moeda que sera efetuado o pagamento. |
| 43 | TP_CON_PAG | VARCHAR2 | Y | Tipo de conta -> DO - Documento, AF - Adiantamento Fornecedor, AN - Adiantamento n?o Fornecedor, ... |
| 44 | CD_PROCESSO | NUMBER | Y | Codigo do processo. |
| 45 | CD_SERVICO | NUMBER | Y | Codigo do Servico. |
| 46 | CD_CONDICAO_PAGAMENTO | NUMBER | Y | Codigo de condic?o de pagamento. |
| 47 | CD_NOTA_FICAL | NUMBER | Y | Codigo da nota fiscal. |
| 48 | NR_PARCELA | NUMBER | Y | Numero das parcelas. |
| 49 | DT_VENCIMENTO | DATE | Y | Data de vencimento de cada parcelamento. |
| 50 | VL_DUPLICATA | NUMBER | Y | Valor de cada parcela. |
| 51 | TP_QUITACAO | VARCHAR2 | Y | Tipo da quitac?o da parcela. V - Previsto, Q - Quitado, P - Parcialmente Pago, C - Comprometido, ... |
| 52 | SN_BAIXADA | VARCHAR2 | Y | Se foi dado baixa do pagamento da parcela. S - Sim, N - N?o |
| 53 | DT_PREV_PAGAMENTO | DATE | Y | Data prevista para o pagamento da parcela. |
| 54 | VL_MOEDA | NUMBER | Y | Valor da moeda - ITCON_PAG.VL_MOEDA. |
| 55 | CD_CONTA_PAI | NUMBER | Y | Codigo da conta a pagar pai. |
| 56 | CD_DETALHAMENTO | NUMBER | Y | Codigo que informa o detalhamento da conta a pagar. |
| 57 | CD_CONTA_FILHO | NUMBER | Y | Codigo da conta a pagar filho. |
| 58 | VL_DETALHAMENTO | NUMBER | Y | Valor do detalhamento a pagar. |
| 59 | CD_RATEIO_CONTA | NUMBER | Y | Sequence do rateio. |
| 60 | CD_SETOR | NUMBER | Y | Codigo do setor da conta a pagar/receber. |
| 61 | VL_RATEIO | NUMBER | Y | Valor do rateio(repassado) da conta a pagar/receber. |
| 62 | DT_COMPETENCIA | DATE | Y | Data da competencia da conta a pagar. |
| 63 | CD_ITEM_CONTA | NUMBER | Y | Codigo da conta de custo da conta a pagar/receber. |
| 64 | SN_IMPORTADO_CUSTOS | VARCHAR2 | Y | Informa se foi importado os custos.Defaut - N |
| 65 | TP_ORIGEM_INFORMACAO | VARCHAR2 | Y | Tipo da informac?o. |
| 66 | CD_EXP_CONTABILIDADE | NUMBER | Y |  |

---

## MVINTEGRA.INTEGRA_SAIDA_EVOLUCAO
> Tabela de integrac?o para envio de evoluc?es

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INTEGRA_SAIDA_EVOLUCAO | NUMBER | N | Codigo primario |
| 2 | TP_INTEGRACAO | VARCHAR2 | N | Tipo de integrac?o |
| 3 | DS_ERRO | VARCHAR2 | Y | Descric?o do erro |
| 4 | DT_INTEGRACAO | DATE | N | Data de integracao |
| 5 | DT_INTEGRACAO_MV2000 | DATE | Y | Data de processamento |
| 6 | TP_MOVIMENTO | VARCHAR2 | N | Tipo de movimento |
| 7 | TP_REGISTRO | VARCHAR2 | N | Tipo de registro |
| 8 | CD_FILIAL_INTEGRA | VARCHAR2 | N | Multi-empresa |
| 9 | CD_MULTI_EMPRESA | NUMBER | N | Multi-empresa |
| 10 | CD_CNES_SOLICITANTE | NUMBER | Y | CNES do hospital |
| 11 | CD_INTERNACAO | NUMBER | Y | Codigo da Internac?o |
| 12 | TP_EVOLUCAO | VARCHAR2 | Y | Tipo de evoluc?o |
| 13 | DT_EVOLUCAO | DATE | Y | Data da evoluc?o |
| 14 | DS_EVOLUCAO | VARCHAR2 | Y | Descric?o da evoluc?o |

---

## MVINTEGRA.INTEGRA_SAIDA_EXAMES

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INTEGRA_SAIDA_EXAMES | NUMBER | N |  |
| 2 | TP_INTEGRACAO | VARCHAR2 | N |  |
| 3 | DS_ERRO | VARCHAR2 | Y |  |
| 4 | DT_INTEGRACAO | DATE | N |  |
| 5 | DT_INTEGRACAO_MV2000 | DATE | Y |  |
| 6 | TP_MOVIMENTO | VARCHAR2 | N |  |
| 7 | TP_REGISTRO | VARCHAR2 | N |  |
| 8 | CD_PED_LAB | NUMBER | Y |  |
| 9 | DT_PEDIDO | DATE | Y |  |
| 10 | HR_PEDIDO | DATE | Y |  |
| 11 | DT_EXAME | DATE | Y |  |
| 12 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 13 | DT_ENTREGA | DATE | Y |  |
| 14 | CD_ATENDIMENTO | NUMBER | Y |  |
| 15 | NM_PACIENTE | VARCHAR2 | Y |  |
| 16 | NR_GUIA | VARCHAR2 | Y |  |
| 17 | CD_SENHA | VARCHAR2 | Y |  |
| 18 | NR_CARTEIRA | VARCHAR2 | Y |  |
| 19 | CD_SETOR | NUMBER | Y |  |
| 20 | CD_PRESTADOR | NUMBER | Y |  |
| 21 | CD_SET_EXA | NUMBER | Y |  |
| 22 | CD_CONVENIO | NUMBER | Y |  |
| 23 | NM_CONVENIO | VARCHAR2 | Y |  |
| 24 | CD_CON_PLA | NUMBER | Y |  |
| 25 | DS_CON_PLA | VARCHAR2 | Y |  |
| 26 | CD_EXA_LAB | NUMBER | Y |  |
| 27 | CD_PRO_FAT | VARCHAR2 | Y |  |
| 28 | DT_LAUDO | DATE | Y |  |
| 29 | HR_LAUDO | DATE | Y |  |
| 30 | DS_RESULTADO | VARCHAR2 | Y |  |
| 31 | CD_LABORATORIO | NUMBER | Y |  |
| 32 | CD_INTEGRA_SEQUENCE_EXTERNA | NUMBER | Y |  |
| 33 | DS_PRO_FAT | VARCHAR2 | Y |  |
| 34 | CD_PACIENTE | NUMBER | Y |  |
| 35 | TP_SEXO | VARCHAR2 | Y |  |
| 36 | NR_IDADE | VARCHAR2 | Y |  |
| 37 | NR_IDENTIDADE | VARCHAR2 | Y |  |
| 38 | DS_OM_IDENTIDADE | VARCHAR2 | Y |  |
| 39 | NR_MATRICULA_SAME | NUMBER | Y |  |
| 40 | NM_SETOR | VARCHAR2 | Y |  |
| 41 | NM_SET_EXA | VARCHAR2 | Y |  |
| 42 | NM_PRESTADOR | VARCHAR2 | Y |  |
| 43 | NR_CRM_PRESTADOR | VARCHAR2 | Y |  |
| 44 | DT_NASCIMENTO | DATE | Y |  |
| 45 | DS_LEITO | VARCHAR2 | Y | Descric?o resumida do Leito |
| 46 | DT_LEITURA_REG | DATE | Y | Data de leitura do registro pelo sistema que esta efetuando a leitura da Tabela |
| 47 | VL_PRO_FAT | NUMBER | Y | Valor do procedimento associado ao exame solicitado |
| 48 | CD_INTEGRA_PAI | NUMBER | Y | Codigo de controle para saber qual o registro PAI do registro atual |

---

## MVINTEGRA.INTEGRA_SAIDA_FATURAMENTO
> Tabela de integrac?o responsavel em disponibilizar informac?es para sistemas de terceiros

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INTEGRA_SAIDA_FATURAMENTO | NUMBER | N | Codigo sequencial de identificac?o do registro |
| 2 | TP_INTEGRACAO | VARCHAR2 | N | Identifica o status da integrac?o |
| 3 | DS_ERRO | VARCHAR2 | Y | Descric?o do erro, caso o campo TP_INTEGRACAO seja igual a "E" |
| 4 | DT_INTEGRACAO | DATE | N | Data de inclus?o do registro nesta tabela de integrac?o |
| 5 | DT_INTEGRACAO_MV2000 | DATE | Y | Data de integrac?o com o MV2000i |
| 6 | TP_MOVIMENTO | VARCHAR2 | N | Tipo de movimentac?o |
| 7 | TP_REGISTRO | VARCHAR2 | N | Identificac?o do tipo de registro |
| 8 | CD_FILIAL_INTEGRA | VARCHAR2 | N | Codigo de identificac?o da empresa no sistema de terceiros |
| 9 | CD_CONVENIO | NUMBER | Y | Codigo do convenio |
| 10 | CD_CONVENIO_INTEGRA | VARCHAR2 | Y | Codigo de identificac?o do convenio no sistmqa de terceiros |
| 11 | CD_PLANO | NUMBER | Y | Codigo do plano de saude |
| 12 | CD_PLANO_INTEGRA | VARCHAR2 | Y | Codigo de identificac?o do plano no sistema de terceiros |
| 13 | TP_CONVENIO | VARCHAR2 | Y | Tipo de convenio |
| 14 | CD_FATURA | NUMBER | Y | Cidigo da fatura |
| 15 | DS_FATURA | VARCHAR2 | Y | Descric?o da Fatura |
| 16 | TP_FATURA | VARCHAR2 | Y | Tipo da Fatura |
| 17 | CD_APAC | NUMBER | Y | Codigo APAC |
| 18 | SN_APAC_PRINCIPAL | VARCHAR2 | Y | Identifica se a APAC e a principal |
| 19 | CD_SISCO_CITO | NUMBER | Y | Codigo do Citopatologico (SISCOLO) |
| 20 | CD_SISCO_HISTO | NUMBER | Y | Codigo do Histopatologico (SISCOLO) |
| 21 | DT_COMPETENCIA | DATE | Y | Competencia da Fatura |
| 22 | CD_REMESSA | NUMBER | Y | Codigo da remessa |
| 23 | TP_REMESSA | VARCHAR2 | Y | Tipo da remessa |
| 24 | DT_ABERTURA_REMESSA | DATE | Y | Data da abertura da remessa |
| 25 | DT_FECHAMENTO_REMESSA | DATE | Y | Data de fechamento da remessa |
| 26 | DT_ENTREGA_REMESSA | DATE | Y | Data de entrega da remessa |
| 27 | DT_PREVISTA_PGTO_REMESSA | DATE | Y | Data prevista de pagamento da remessa |
| 28 | CD_CONTA | NUMBER | Y | Codigo da conta |
| 29 | TP_CONTA | VARCHAR2 | Y | Identificador do tipo da conta. (H)ospitalar (A)ambulatorial |
| 30 | NR_GUIA | VARCHAR2 | Y | Numero da guia |
| 31 | DT_GUIA_AUTORIZADA | DATE | Y | Data de autorizac?o da guia de atendimento/exames |
| 32 | DT_GUIA_VALIDADE | DATE | Y | Data de validade da guia de atendimento/exames |
| 33 | CD_PACIENTE | NUMBER | Y | Codigo de identificac?o do Paciente |
| 34 | NM_PACIENTE | VARCHAR2 | Y | Nome do paciente |
| 35 | CD_ATENDIMENTO | NUMBER | Y | Codigo do atendimento do paciente |
| 36 | TP_PACIENTE | VARCHAR2 | Y | Tipo de Paciente |
| 37 | TP_ATENDIMENTO | VARCHAR2 | Y | Tipo de atendimento |
| 38 | CD_FAIXA_ETARIA | NUMBER | Y | Codigo da faixa etaria do paciente |
| 39 | CD_TIPO_ATENDIMENTO | NUMBER | Y | Codigo do tipo de atendimento |
| 40 | CD_GRUPO_ATENDIMENTO | NUMBER | Y | Codigo do grupo de atendimento |
| 41 | CD_ORIGEM_ATENDIMENTO | NUMBER | Y | Codigo da origem de atendimento |
| 42 | CD_SERVICO_DISPONIVEL | NUMBER | Y | Codigo do servico disponibilizado |
| 43 | CD_TIPO_ACOMODACAO | NUMBER | Y | Tipo da acomodac?o |
| 44 | CD_TIPO_ACOMODACAO_INTEGRA | VARCHAR2 | Y | Codigo de identificac?o da acomodac?o no sistema de terceiros |
| 45 | DT_PERIODO_INICIO_CONTA | DATE | Y | Data do periodo inicial da conta |
| 46 | DT_PERIODO_FINAL_CONTA | DATE | Y | Data do periodo finla da conta |
| 47 | CD_PROCEDIMENTO | VARCHAR2 | Y | Codigo do procedimento |
| 48 | CD_PROCEDIMENTO_INTEGRA | VARCHAR2 | Y | Codigo do de identificac?o do procedimento no sistema de terceiros |
| 49 | CD_LANCAMENTO | NUMBER | Y | Codigo do lancamento |
| 50 | DT_LANCAMENTO | DATE | Y | Data do lancamento |
| 51 | HR_LANCAMENTO | DATE | Y | Hora do lacamento |
| 52 | CD_GRUPO_FATURAMENTO | NUMBER | Y | Codigo do grupo de faturamento |
| 53 | CD_GRUPO_FATURAMENTO_INTEGRA | VARCHAR2 | Y | Codigo do grupo de faturamento (de-para) |
| 54 | CD_GRUPO_PROCEDIMENTO | NUMBER | Y | Codigo do grupo de procedimento |
| 55 | CD_GRUPO_PROCEDIMENTO_INTEGRA | VARCHAR2 | Y | Codigo do grupo de procedimento (de-para) |
| 56 | CD_PRESTADOR | NUMBER | Y | Codigo do prestador |
| 57 | CD_PRESTADOR_INTEGRA | VARCHAR2 | Y | Codigo do prestador (de-para) |
| 58 | CD_ANESTESISTA | NUMBER | Y | Codigo da anestesia |
| 59 | CD_ATIVIDADE_MEDICA | NUMBER | Y | Codigo da atividade medica |
| 60 | CD_ATIVIDADE_MEDICA_INTEGRA | VARCHAR2 | Y | Codigo da atividade medica (de-para) |
| 61 | CD_TIPO_VINCULO | NUMBER | Y | Codigo do vinculo do prestador |
| 62 | CD_TIPO_VINCULO_INTEGRA | VARCHAR2 | Y | Codigo do vinculo do prestador (de-para) |
| 63 | TP_PAGAMENTO | VARCHAR2 | Y | Tipo de pagamento |
| 64 | QT_PONTOS | NUMBER | Y | Qunatidade de pontos |
| 65 | CD_ESPECIALIDADE | NUMBER | Y | Codigo da especialidade medica |
| 66 | CD_SETOR | NUMBER | Y | Codigo do setor |
| 67 | CD_SETOR_INTEGRA | VARCHAR2 | Y | Codigo do setor (de-para) |
| 68 | QT_PROCEDIMENTO | NUMBER | Y | Quantidade do procedimento |
| 69 | VL_UNITARIO | NUMBER | Y | Valor unitario |
| 70 | VL_FILME_UNITARIO | NUMBER | Y | Valor unitario do filme |
| 71 | VL_HONORARIO_UNITARIO | NUMBER | Y | Valor unitario do honorario |
| 72 | VL_OPERACIONAL_UNITARIO | NUMBER | Y | Valor operacional unitario |
| 73 | VL_PERCENTUAL_PACIENTE | NUMBER | Y | Valor do percentual de participac?o do paciente |
| 74 | VL_SERVICO_PROFISSIONAL | NUMBER | Y | Valor do servico profissional |
| 75 | VL_SERVICO_HOSPITALAR | NUMBER | Y | Valor do servico hospitalar |
| 76 | VL_ANESTESISTA | NUMBER | Y | Valor da anestesia |
| 77 | VL_SADT | NUMBER | Y | Valor do servico SADT |
| 78 | VL_ATO | NUMBER | Y | Valor do ato medico |
| 79 | VL_ACRESCIMO | NUMBER | Y | Valor do acrescimo |
| 80 | VL_DESCONTO | NUMBER | Y | Valor do desconto |
| 81 | VL_TOTAL | NUMBER | Y | Valor total |
| 82 | SN_PERTENCE_PACOTE | VARCHAR2 | Y | Identifica se o procedimento pertence ou n?o a pacote |
| 83 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da multi-empresa |
| 84 | CD_FORNECEDOR | NUMBER | Y | Codigo do fornecedor da ortese & protese |
| 85 | CD_FORNECEDOR_INTEGRA | VARCHAR2 | Y | Codigo do fornecedor de ortese & protese no sistema do terceiro |
| 86 | NR_NOTA_FISCAL | VARCHAR2 | Y | Numero da Nota Fiscal |
| 87 | VL_NOTA_FISCAL | NUMBER | Y | Valor da nota fiscal |
| 88 | CD_SETOR_EXECUTANTE | NUMBER | Y | Codigo do setor executante |
| 89 | CD_TIPO_INTERNACAO | NUMBER | Y | Tipo de internacao |
| 90 | CD_TIPO_INTERNACAO_INTEGRA | VARCHAR2 | Y | Tipo de internacao (de-para) |
| 91 | NR_CONSELHO_PRESTADOR | VARCHAR2 | Y | Numero do conselho do prestador |
| 92 | TP_CONSELHO_PRESTADOR | VARCHAR2 | Y | Tipo do conselho do prestador |
| 93 | DS_UNIDADE_PROCEDIMENTO | VARCHAR2 | Y | Unidade do procedimento |
| 94 | VL_PERCENTE_PAGAMENTO | NUMBER | Y | Percentual de pagamento (usado para ato cirurgico) |
| 95 | CD_PORTE_ANESTESICO | NUMBER | Y | Codigo do porte anestesico |
| 96 | CD_CID | VARCHAR2 | Y | Codiog do CID |
| 97 | DS_PROCEDIMENTO | VARCHAR2 | Y | Descric?o do procedimento |
| 98 | TP_INF_PARTO | VARCHAR2 | Y | Informac?es sobre o Parto |
| 99 | TP_INF_RECEM_NASCIDO | VARCHAR2 | Y | Informac?es sobre o Recem-nascido |
| 100 | TP_INF_GRAVIDEZ | VARCHAR2 | Y | Informac?es sobre a Gravidez |
| 101 | CD_MOTIVO_ALTA | NUMBER | Y | Codigo do motivo de alta |
| 102 | TP_MOTIVO_ALTA | VARCHAR2 | Y | Tipo do motivo de alta |
| 103 | CD_MOTIVO_ALTA_INTEGRA | VARCHAR2 | Y | Codigo do motivo de alta (de-para) |
| 104 | CID_ALTA | VARCHAR2 | Y | Cid da alta |
| 105 | CD_GUIA | VARCHAR2 | Y | Codigo da guia |
| 106 | NR_SENHA | VARCHAR2 | Y | Numero da senha da guia |
| 107 | SN_HORARIO_ESPECIAL | VARCHAR2 | Y | Identifica se o item foi realizado em horario especial |
| 108 | NR_CARTEIRA | VARCHAR2 | Y | Numero da Carteira do paciente |
| 109 | TP_GRUPO_PROCEDIMENTO | VARCHAR2 | Y | Tipo do grupo de procedimento |
| 110 | TP_VINCULO_PRESTADOR | VARCHAR2 | Y | Tipo do vinculo do prestador com o hospital |
| 111 | VL_PERC_ATO_CIRURGICO | NUMBER | Y | Percentual de pagamento em ato cirurgico (mesma via/via diferente) |
| 112 | VL_ORIGINAL_ITEM | NUMBER | Y | Valor original do item |
| 113 | DT_INTERNACAO | DATE | Y | Data da internac?o do paciente |
| 114 | DT_ALTA | DATE | Y | Data da alta do paciente |
| 115 | SN_ABORTO | VARCHAR2 | Y | Identifica se houve aborto |
| 116 | SN_PARTO_SALA | VARCHAR2 | Y | Identifica que o parto do recem nascido foi na sala |
| 117 | SN_COMPLICACAO_NEO | VARCHAR2 | Y | Identifica que houve complicac?es no nascimento |
| 118 | SN_BAIXO_PESO | VARCHAR2 | Y | Identifica que o recem-nascido nasceu com baixo peso |
| 119 | SN_PARTO_CESARIA | VARCHAR2 | Y | Identifica se o parto foi por cesaria |
| 120 | TP_CARATER_INTERNACAO | VARCHAR2 | Y | Tipo do carater da internac?o |
| 121 | DT_GUIA_SOLICITADA | DATE | Y | Data da solicitac?o da guia |
| 122 | TP_REGIME_INTERNACAO | VARCHAR2 | Y | Tipo do regisme de internac?o |
| 123 | TP_DOENCA | VARCHAR2 | Y | Tipo de doenca |
| 124 | QT_TEMPO_DOENCA | NUMBER | Y | Tempo da doeca |
| 125 | DS_UNIDADE_TEMPO_DOENCA | VARCHAR2 | Y | Unidade do tempo da doenca |
| 126 | TP_ACIDENTE | NUMBER | Y | Tipo de acidente: 0-Acidente/Doenca do Trabalho, 1-Acidente de Transito e 2-Outros Acidentes |
| 127 | TP_OBITO_MULHER | NUMBER | Y | Tipo de Obito feminino |
| 128 | SN_GESTACAO | VARCHAR2 | Y | Indica se Paciente esta em gestacao |
| 129 | SN_TRANSTORNO | VARCHAR2 | Y | Indica se paciente teve algum transtorno relacionado a gravidez |
| 130 | SN_COMPLICACAO | VARCHAR2 | Y | Indica se paciente teve alguma complicacao no periodo puerperio |
| 131 | TP_ATENDIMENTO_TISS | NUMBER | Y | Tipo de atendimento TISS |
| 132 | NR_DECLARACAO_OBITO | NUMBER | Y | Numero da declarac?a de obito |
| 133 | NM_TITULAR_PLANO | VARCHAR2 | Y | Nome do titular do plano de saude |
| 134 | NR_CPF_PACIENTE | VARCHAR2 | Y | Cpf do paciente |
| 135 | NM_PRESTADOR | VARCHAR2 | Y | Nome do prestador |
| 136 | CD_INTEGRA_PAI | NUMBER | Y | Codigo de controle para saber qual o registro PAI do registro atual |
| 137 | NR_CGC | VARCHAR2 | Y | CNPJ do convenio |
| 138 | SN_REABERTURA | VARCHAR2 | Y | Identifica se a remessa foi reaberta. |

---

## MVINTEGRA.INTEGRA_SAIDA_FINANCEIRO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INTEGRA_SAIDA_FINANCEIRO | NUMBER | N |  |
| 2 | TP_REGISTRO | VARCHAR2 | N |  |
| 3 | CD_TIPO_ENTRADA | VARCHAR2 | Y |  |
| 4 | DT_INTEGRA_FINANCEIRO | DATE | Y |  |
| 5 | DT_INTEGRA_CLIENTES | DATE | Y |  |
| 6 | CD_EMPRESA | NUMBER | Y |  |
| 7 | NR_DOCUMENTO | VARCHAR2 | Y |  |
| 8 | NR_SERIE | VARCHAR2 | Y |  |
| 9 | CD_CONTA | NUMBER | Y |  |
| 10 | TP_ORIGEM | VARCHAR2 | Y |  |
| 11 | TP_CON_REC | VARCHAR2 | Y |  |
| 12 | CD_ATENDIMENTO | NUMBER | Y |  |
| 13 | CD_FIN_CAR | NUMBER | Y |  |
| 14 | CD_REMESSA | NUMBER | Y |  |
| 15 | CD_REG_FAT | NUMBER | Y |  |
| 16 | CD_REG_AMB | NUMBER | Y |  |
| 17 | DT_EMISSAO | DATE | Y |  |
| 18 | TP_VENCIMENTO | VARCHAR2 | Y |  |
| 19 | DS_CONTA | VARCHAR2 | Y |  |
| 20 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 21 | CD_TIP_DOC | VARCHAR2 | Y |  |
| 22 | VL_PREVISTO | NUMBER | Y |  |
| 23 | VL_ACRESCIMO | NUMBER | Y |  |
| 24 | CD_ACRESCIMO | NUMBER | Y |  |
| 25 | VL_DESCONTO | NUMBER | Y |  |
| 26 | CD_DESCONTO | NUMBER | Y |  |
| 27 | VL_IMPOSTO | NUMBER | Y |  |
| 28 | CD_HIST_PADRAO | NUMBER | Y |  |
| 29 | CD_FORN_CLI | NUMBER | Y |  |
| 30 | DS_FORN_CLI | VARCHAR2 | Y |  |
| 31 | ID_CPF_CGC | VARCHAR2 | Y |  |
| 32 | NR_CEP | VARCHAR2 | Y |  |
| 33 | NR_INSC_EST | VARCHAR2 | Y |  |
| 34 | NM_FANTASIA | VARCHAR2 | Y |  |
| 35 | TP_FORN_CLI | VARCHAR2 | Y |  |
| 36 | DS_ENDERECO | VARCHAR2 | Y |  |
| 37 | DS_BAIRRO | VARCHAR2 | Y |  |
| 38 | NM_CIDADE | VARCHAR2 | Y |  |
| 39 | CD_UF | VARCHAR2 | Y |  |
| 40 | DT_CADASTRO | DATE | Y |  |
| 41 | NR_PARCELA | NUMBER | Y |  |
| 42 | DT_VENCIMENTO | DATE | Y |  |
| 43 | DT_PREVISTA | DATE | Y |  |
| 44 | VL_DUPLICATA | NUMBER | Y |  |
| 45 | TP_ERRO | VARCHAR2 | Y |  |
| 46 | DS_ERRO | VARCHAR2 | Y |  |
| 47 | CD_CON_REC | NUMBER | Y |  |
| 48 | NR_ID_NOTA_FISCAL | NUMBER | Y |  |
| 49 | TP_INTEGRACAO | VARCHAR2 | N |  |
| 50 | TP_REGISTRO_INTEGRA | VARCHAR2 | Y |  |
| 51 | TP_INTEGRA | VARCHAR2 | Y |  |
| 52 | CD_FILIAL_INTEGRA | NUMBER | N |  |
| 53 | NR_SERIE_INTEGRA | VARCHAR2 | Y |  |
| 54 | DT_LANCAMENTO | DATE | Y |  |
| 55 | CD_EXP_CONTABILIDADE | NUMBER | Y |  |
| 56 | SN_CONTABILIZA | VARCHAR2 | Y |  |
| 57 | CD_NOTA_FISCAL | NUMBER | Y |  |
| 58 | CD_USUARIO | VARCHAR2 | Y |  |
| 59 | VL_MOEDA | NUMBER | Y |  |
| 60 | CD_MOEDA | VARCHAR2 | Y |  |
| 61 | CD_ITCON_REC | NUMBER | Y |  |
| 62 | DT_PREVISTA_RECEBIMENTO | DATE | Y |  |
| 63 | TP_QUITACAO | VARCHAR2 | Y |  |
| 64 | CD_RECCON_REC | NUMBER | Y |  |
| 65 | CD_CON_COR | NUMBER | Y |  |
| 66 | CD_CAIXA | NUMBER | Y |  |
| 67 | CD_MOV_CAIXA | VARCHAR2 | Y |  |
| 68 | TP_RECEBIMENTO | VARCHAR2 | Y |  |
| 69 | DT_RECEBIMENTO | DATE | Y |  |
| 70 | VL_RECEBIMENTO | NUMBER | Y |  |
| 71 | DT_CHEQUE | DATE | Y |  |
| 72 | DS_RECCON_REC | VARCHAR2 | Y |  |
| 73 | CD_MOTIVO_CANC | NUMBER | Y |  |
| 74 | CD_RESPONSAVEL | NUMBER | Y |  |
| 75 | NM_RESPONSAVEL | VARCHAR2 | Y |  |
| 76 | NR_ID_RESPONSAVEL | VARCHAR2 | Y |  |
| 77 | CD_BANCO | NUMBER | Y |  |
| 78 | CD_CAUCAO | NUMBER | Y |  |
| 79 | NM_UF | VARCHAR2 | Y |  |
| 80 | NR_FONE | VARCHAR2 | Y |  |
| 81 | NR_INSCRICAO_ESTADUAL | VARCHAR2 | Y |  |
| 82 | DT_SAIDA | DATE | Y |  |
| 83 | VL_TOTAL_NOTA | NUMBER | Y |  |
| 84 | VL_ISS | NUMBER | Y |  |
| 85 | VL_IR | NUMBER | Y |  |
| 86 | CD_STATUS | VARCHAR2 | Y |  |
| 87 | DT_CANCELAMENTO | DATE | Y |  |
| 88 | CD_USUARIO_CANCELOU | VARCHAR2 | Y |  |
| 89 | CD_PRO_FAT | VARCHAR2 | Y |  |
| 90 | CD_GRU_FAT_INTEGRA | NUMBER | Y |  |
| 91 | VL_GRU_FAT_INTEGRA | NUMBER | Y |  |
| 92 | QT_ITFAT_NF | NUMBER | Y |  |
| 93 | QT_GRU_FAT_INTEGRA | NUMBER | Y |  |
| 94 | CD_ITFAT_NF | NUMBER | Y |  |
| 95 | CD_SETOR | NUMBER | Y |  |
| 96 | DT_INTEGRACAO | DATE | N |  |
| 97 | DT_INTEGRACAO_MV2000 | DATE | Y |  |
| 98 | TP_MOVIMENTO | VARCHAR2 | N |  |
| 99 | TIPNFS_INTEGRA | NUMBER | Y |  |
| 100 | NM_CLIENTE | VARCHAR2 | Y |  |
| 101 | DT_MOVIMENTACAO_INTEGRA | DATE | Y |  |
| 102 | VL_MOVIMENTACAO_INTEGRA | NUMBER | Y |  |
| 103 | TP_RECEBIMENTO_INTEGRA | VARCHAR2 | Y |  |
| 104 | TP_STATUS_CHEQUE_INTEGRA | VARCHAR2 | Y |  |
| 105 | NR_CHEQUE_INTEGRA | VARCHAR2 | Y |  |
| 106 | CD_AGENCIA | VARCHAR2 | Y |  |
| 107 | NR_CONTA | VARCHAR2 | Y |  |
| 108 | TP_INTEGRACAO_SAPIENS | VARCHAR2 | Y |  |
| 109 | DS_OBSERVACAO_RECEBIMENTO | VARCHAR2 | Y |  |
| 110 | CD_DOC_CAIXA | NUMBER | Y |  |
| 111 | CD_CONVENIO | NUMBER | Y | Codigo do convenio |
| 112 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da multi-empresa |
| 113 | NR_CARTEIRA | VARCHAR2 | Y | Numeor da carteira do paciente |
| 114 | CD_INTEGRA_PAI | NUMBER | Y | Codigo de controle para saber qual o registro PAI do registro atual |

---

## MVINTEGRA.INTEGRA_SAIDA_HEMODERIVADO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INTEGRA_SAIDA_HEMODERIVADO | NUMBER | N | Codigo sequencial dos registros da integrac?o |
| 2 | TP_INTEGRACAO | VARCHAR2 | N | Identifica o status da integrac?o |
| 3 | DS_ERRO | VARCHAR2 | Y | Descric?o do erro, caso o campo TP_INTEGRACAO seja igual a E |
| 4 | DT_INTEGRACAO | DATE | N | Data em que o registro foi disponibilizado na tabela de integrac?o |
| 5 | DT_INTEGRACAO_MV2000 | DATE | Y | Data em que ocorreu a integrac?odo registro com o outro sistema |
| 6 | TP_MOVIMENTO | VARCHAR2 | N | Indica o tipo do resgistro: I-Iclus?o, A-Alterac?o e E-Exclus?o |
| 7 | TP_REGISTRO | VARCHAR2 | N | Tipo do regsitro |
| 8 | CD_FILIAL_INTEGRA | VARCHAR2 | N | Codigo da filial da empresa ao qual se esta integrando |
| 9 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da empresa, usado para ambientes multi-empresa |
| 10 | CD_SOLICITACAO | NUMBER | Y | Codigio da solicitac?o do hemoderivado |
| 11 | DT_SOLICITACAO | DATE | Y | Data da solicitac?o do hemoderivado |
| 12 | CD_ATENDIMENTO | NUMBER | Y | Codigo do atendimento do paciente |
| 13 | CD_PACIENTE | NUMBER | Y | Codigo do paciente |
| 14 | CD_PACIENTE_INTEGRA | VARCHAR2 | Y | Codigo do paciente, em caso de paciente integrado |
| 15 | NM_PACIENTE | VARCHAR2 | Y | Nome do paciente |
| 16 | DT_NASCIMENTO | DATE | Y | Data de nascimento do paciente |
| 17 | CD_LEITO | NUMBER | Y | Codigo do leito, onde o paciente se encontra |
| 18 | DS_LEITO | VARCHAR2 | Y | Descric?o do leito, onde o paciente se encontra |
| 19 | DS_LEITO_RESUMIDO | VARCHAR2 | Y | Descric?o resumida, onde o paciente se encontra |
| 20 | DS_ENFERMAGEM | VARCHAR2 | Y | Descric?o da enfermaria |
| 21 | CD_PRESTADOR_SOLICITANTE | NUMBER | Y | Codigo do prestador solicitante |
| 22 | CD_PRESTADOR_SOLIC_INTEGRA | VARCHAR2 | Y | Codigo do prestrador solicitante, em caso de prestadores integrados |
| 23 | NM_PRESTADOR_SOLICITANTE | VARCHAR2 | Y | Nome do prestador solicitante |
| 24 | NR_CONSELHO_SOLICITANTE | VARCHAR2 | Y | Codigo do conselho do prestador solicitante |
| 25 | TP_CONSELHO_SOLICITANTE | VARCHAR2 | Y | Tipo do conselho do prestador |
| 26 | CD_SETOR_SOLICITANTE | NUMBER | Y | Codigo do setor solicitante |
| 27 | CD_SETOR_SOLIC_INTEGRA | VARCHAR2 | Y | Codigo do setor solicitante, em caso de setores integrados |
| 28 | NM_SETOR_SOLICITANTE | VARCHAR2 | Y | Nome do setor solicitante |
| 29 | CD_HEMODERIVADO | NUMBER | Y | Codigo do hemoderivado solicitado |
| 30 | CD_HEMODERIVADO_INTEGRA | NUMBER | Y | Codigo do hemoderivado solicitado, em caso de hemoderivado integrado |
| 31 | DS_HEMODERIVADO | VARCHAR2 | Y | Descric?o do hemoderivado |
| 32 | DS_UNIDADE | VARCHAR2 | Y | Unidade de medida do hemoderivado |
| 33 | QT_SOLICITADO | NUMBER | Y | Quantidade de hemoderivado solicitado |
| 34 | CD_SOLICITACAO_INTEGRA | VARCHAR2 | Y | Codigo da solicitac?o (de-para) |
| 35 | CD_PRE_MED | NUMBER | Y | Codigo da prescric?o |
| 36 | CD_AVISO_CIRURGIA | NUMBER | Y | Codigo do aviso da cirurgia |
| 37 | CD_ITEM_SOLICITACAO | NUMBER | Y | Codigo do item solicitado |
| 38 | CD_ITEM_SOLICITACAO_INTEGRA | VARCHAR2 | Y | Codigo do item solicitado (de-para) |
| 39 | TP_PROCEDIMENTO | VARCHAR2 | Y | Tipo do procedimento |
| 40 | CD_INTEGRA_PAI | NUMBER | Y | Codigo de controle para saber qual o registro PAI do registro atual |
| 41 | DS_OBSERVACAO | VARCHAR2 | Y | Observac?o sobre a solicitacao |

---

## MVINTEGRA.INTEGRA_SAIDA_INTERNACAO
> Tabela de integrac?o para envio de solicitac?es de internac?es

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INTEGRA_SAIDA_INTERNACAO | NUMBER | N | Codigo primario |
| 2 | TP_INTEGRACAO | VARCHAR2 | N | Tipo de integrac?o |
| 3 | DS_ERRO | VARCHAR2 | Y | Descric?o do erro |
| 4 | DT_INTEGRACAO | DATE | N | Data de integracao |
| 5 | DT_INTEGRACAO_MV2000 | DATE | Y | Data de processamento |
| 6 | TP_MOVIMENTO | VARCHAR2 | N | Tipo de movimento |
| 7 | TP_REGISTRO | VARCHAR2 | N | Tipo de registro |
| 8 | CD_FILIAL_INTEGRA | VARCHAR2 | N | Multi-empresa |
| 9 | CD_MULTI_EMPRESA | NUMBER | N | Multi-empresa |
| 10 | CD_CNES_SOLICITANTE | NUMBER | Y | CNES do hospital |
| 11 | CD_PRONTUARIO | NUMBER | Y | Protuario medico |
| 12 | NM_PACIENTE | VARCHAR2 | Y | Nome do Paciente |
| 13 | DT_NASCIMENTO | DATE | Y | Data de Nascimento do Paciente |
| 14 | TP_SEXO | VARCHAR2 | Y | Sexo |
| 15 | TP_ESTADO_CIVIL | VARCHAR2 | Y | Estado Civil |
| 16 | NM_MAE | VARCHAR2 | Y | Nome da M?e |
| 17 | NM_PAI | VARCHAR2 | Y | Nome do Pai |
| 18 | NR_CEP | NUMBER | Y | CEP |
| 19 | NR_ENDERECO | NUMBER | Y | Endereco |
| 20 | DS_COMPLEMENTO | VARCHAR2 | Y | Complemento do Endereco |
| 21 | CD_PROFISSAO | NUMBER | Y | Codigo de Ocupacao |
| 22 | TP_COR | VARCHAR2 | Y | Cor |
| 23 | CD_NATURALIDADE | NUMBER | Y | Codigo da Naturalidade |
| 24 | CD_PAIS | NUMBER | Y | Pais |
| 25 | NR_IDENTIDADE | VARCHAR2 | Y | Numero Identidade |
| 26 | NR_CPF | VARCHAR2 | Y | Nmero CPF |
| 27 | NR_CARTAO_SUS | NUMBER | Y | Numero Cart?o Sus |
| 28 | CD_SOLICITACAO | NUMBER | Y | Codigo da Solicitacao |
| 29 | CD_INTERNACAO | NUMBER | Y | Codigo da Internacao |
| 30 | TP_PRIORIDADE | VARCHAR2 | Y | Prioridade do Atendimento |
| 31 | TP_SITUACAO | VARCHAR2 | Y | Situacao do atendimento |
| 32 | SN_USA_UTI | VARCHAR2 | Y | Utiliza UTI |
| 33 | NR_CPF_CGC_PRESTADOR | VARCHAR2 | Y | CPF CGG Prestador |
| 34 | CD_PROCEDIMENTO | VARCHAR2 | Y | Codigo do Procedimento |
| 35 | CD_CID | VARCHAR2 | Y | Codigo do CID |
| 36 | DS_SINAIS_SINTOMAS | VARCHAR2 | Y | Sinais e Sintomas |
| 37 | DS_JUSTIFICATIVA | VARCHAR2 | Y | Justificativa da solicitac?o |
| 38 | DS_RESULTADO_DIAGNOSTICO | VARCHAR2 | Y | Diagnostico |
| 39 | NR_CPF_CGC_AUTORIZADOR | VARCHAR2 | Y | CPF CGC Autorizador |
| 40 | CD_CNES_EXECUTORA | NUMBER | Y | CNES do hospital executor |
| 41 | CD_POSTO_ENFERMAGEM | NUMBER | Y | Codigo do Posto de Enfermagem |
| 42 | CD_ENFERMARIA | NUMBER | Y | Codigo da Enfermaria |
| 43 | CD_LEITO | NUMBER | Y | Codigo do Leito |
| 44 | DT_ATENDIMENTO | DATE | Y | Data de atendimento |
| 45 | DT_PREVISTA_ALTA | DATE | Y | Previs?o de alta |
| 46 | CD_CNES_EXECUTANTE_INDICACAO | NUMBER | Y | CNES Indicado |
| 47 | CD_CONVENIO | NUMBER | Y | Codigo do Convenio |
| 48 | NR_CPF_AUTORIZADOR_CLINICO | VARCHAR2 | Y | CPF CGC Autorizador |
| 49 | DT_AUTORIZACAO | DATE | Y | Data de autorizac?o |
| 50 | DT_AGENDAMENTO | DATE | Y | Data de agendamento |
| 51 | CD_TIP_ACOM | NUMBER | Y | Tipo de acomodac?o |
| 52 | DT_ALTA | DATE | Y | Data da alta |
| 53 | CD_MOT_ALTA | NUMBER | Y | Motivo da alta |
| 54 | NR_CPF_MEDICO_ALTA | VARCHAR2 | Y | Medico que deu alta |
| 55 | CD_CID_ALTA | VARCHAR2 | Y | CID da Alta |
| 56 | DS_MOTIVO_CANCELAMENTO | VARCHAR2 | Y | Motivo do cancelamento da solicitac?o |
| 57 | TP_AUTORIZACAO_AUTOMATICA | VARCHAR2 | Y | Autorizac?o automatica |

---

## MVINTEGRA.INTEGRA_SAIDA_ITORD_COM_XML
> Tabela para controle da gerac?o do XML, gerac?o dos itens

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Codigo sequencial de registro |
| 2 | ID_PAI | NUMBER | Y | Codigo sequencial do registro pai |
| 3 | NR_LINHA | VARCHAR2 | Y | Linha do pedido |
| 4 | ID_ITEM | VARCHAR2 | Y | Codigo de identificac?o do item |
| 5 | CD_PRODUTO | VARCHAR2 | Y | Codigo do produto (do cliente) |
| 6 | DS_PRODUTO | VARCHAR2 | Y | Descric?o do produto |
| 7 | QT_ITEM | VARCHAR2 | Y | Quantidade do item |
| 8 | DS_UNIDADE_QUANTIDADE | VARCHAR2 | Y | Unidade e quantidade da unidade () |
| 9 | DS_LINGUAGEM | VARCHAR2 | Y | Ligagem utilizada |
| 10 | DT_ENTREGA_DESEJADA | VARCHAR2 | Y | Data desejada para entrega |
| 11 | CD_ENDERECO_ENTREGA | VARCHAR2 | Y | Endereco de entrega |

---

## MVINTEGRA.INTEGRA_SAIDA_MATERIAIS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INTEGRA_SAIDAS_MATERIAIS | NUMBER | N |  |
| 2 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 3 | CD_MVTO_ESTOQUE | NUMBER | Y |  |
| 4 | CD_ESTOQUE | NUMBER | Y |  |
| 5 | DT_MVTO_ESTOQUE | DATE | Y |  |
| 6 | HR_MVTO_ESTOQUE | DATE | Y |  |
| 7 | CD_ATENDIMENTO | NUMBER | Y |  |
| 8 | CD_UNID_INT | NUMBER | Y |  |
| 9 | CD_SETOR | NUMBER | Y |  |
| 10 | CD_PRESTADOR | NUMBER | Y |  |
| 11 | CD_ESTOQUE_DESTINO | NUMBER | Y |  |
| 12 | CD_MOT_DEV | NUMBER | Y |  |
| 13 | CD_TIPO_MOVIMENTO | VARCHAR2 | Y |  |
| 14 | DT_INTEGRA | DATE | Y |  |
| 15 | SN_INTEGRA | VARCHAR2 | Y |  |
| 16 | CD_ITMVTO_ESTOQUE | NUMBER | Y |  |
| 17 | CD_PRODUTO | NUMBER | Y |  |
| 18 | CD_UNI_PRO | NUMBER | Y |  |
| 19 | QT_MOVIMENTACAO | NUMBER | Y |  |
| 20 | CD_LOTE | VARCHAR2 | Y |  |
| 21 | DT_VALIDADE | DATE | Y |  |
| 22 | TP_ERRO | VARCHAR2 | Y |  |
| 23 | DS_ERRO | VARCHAR2 | Y |  |
| 24 | CD_TIPO_GRAVACAO | VARCHAR2 | Y |  |
| 25 | CD_ESTOQUE_ANTES | NUMBER | Y |  |
| 26 | CD_SETOR_ANTES | NUMBER | Y |  |
| 27 | CD_PRODUTO_ANTES | NUMBER | Y |  |
| 28 | CD_UNI_PRO_ANTES | NUMBER | Y |  |
| 29 | QT_MOVIMENTACAO_ANTES | NUMBER | Y |  |
| 30 | CD_LOTE_ANTES | VARCHAR2 | Y |  |
| 31 | DT_VALIDADE_ANTES | DATE | Y |  |
| 32 | TP_INTEGRACAO | VARCHAR2 | N |  |
| 33 | DT_INTEGRACAO | DATE | N |  |
| 34 | DT_INTEGRACAO_MV2000 | DATE | Y |  |
| 35 | TP_MOVIMENTO | VARCHAR2 | N |  |
| 36 | CD_FILIAL_INTEGRA | VARCHAR2 | N |  |
| 37 | CD_TIPO_ENTRADA | VARCHAR2 | Y |  |
| 38 | CD_TIPO_ENTRADA_INTEGRA | NUMBER | Y |  |
| 39 | NR_DOCUMENTO | VARCHAR2 | Y |  |
| 40 | NR_SERIE | VARCHAR2 | Y |  |
| 41 | NR_SERIE_INTEGRA | VARCHAR2 | Y |  |
| 42 | NR_CGC_CPF | NUMBER | Y |  |
| 43 | DT_ENTRADA | DATE | Y |  |
| 44 | HR_ENTRADA | DATE | Y |  |
| 45 | HR_ENTRADA_INTEGRA | NUMBER | Y |  |
| 46 | DT_EMISSAO | DATE | Y |  |
| 47 | VL_TOTAL | NUMBER | Y |  |
| 48 | VL_DESCONTO | NUMBER | Y |  |
| 49 | VL_IMPOSTO | NUMBER | Y |  |
| 50 | VL_PERCENTUAL_DESCONTO | NUMBER | Y |  |
| 51 | VL_PERCENTUAL_IMPOSTO | NUMBER | Y |  |
| 52 | VL_BASE_IPI_INTEGRA | NUMBER | Y |  |
| 53 | VL_OUTROS | NUMBER | Y |  |
| 54 | TP_FRETE | VARCHAR2 | Y |  |
| 55 | VL_FRETE | NUMBER | Y |  |
| 56 | VL_PERC_FRETE | NUMBER | Y |  |
| 57 | NR_CONHECIMENTO_FRETE | VARCHAR2 | Y |  |
| 58 | DT_VECIMENTO_FRETE | DATE | Y |  |
| 59 | CD_CONDICAO_PAGAMENTO_INTEGRA | VARCHAR2 | Y |  |
| 60 | DS_OBS_INTEGRA | VARCHAR2 | Y |  |
| 61 | CD_SIT_NOTA_FISCAL_INTEGRA | VARCHAR2 | Y |  |
| 62 | VL_ICMS | NUMBER | Y |  |
| 63 | DT_VENCIMENTO | DATE | Y |  |
| 64 | NR_PARCELA | NUMBER | Y |  |
| 65 | VL_PARCELA | NUMBER | Y |  |
| 66 | CD_PRODUTO_INTEGRA | VARCHAR2 | Y |  |
| 67 | DS_UNI_PRO_INTEGRA | VARCHAR2 | Y |  |
| 68 | QT_ENTRADA | NUMBER | Y |  |
| 69 | VL_UNITARIO | NUMBER | Y |  |
| 70 | CD_ORD_COM_INTEGRA | NUMBER | Y |  |
| 71 | SEQ_ITEM_NOTA_INTEGRA | NUMBER | Y |  |
| 72 | DT_ENT_LOTE | DATE | Y |  |
| 73 | QT_ENT_PRO | NUMBER | Y |  |
| 74 | TP_REGISTRO | VARCHAR2 | N |  |
| 75 | TP_MVTO_ESTOQUE | VARCHAR2 | Y |  |
| 76 | SN_INCLUSAO_NOTA | VARCHAR2 | Y |  |
| 77 | NR_CGC_CPF_INTEGRA_FRETE | NUMBER | Y |  |
| 78 | CD_FAMILIA_INTEGRA | NUMBER | Y |  |
| 79 | DT_VENCIMENTO_FRETE | DATE | Y |  |
| 80 | CD_FORNECEDOR | NUMBER | Y | Codigo de identificac?o do fornecedor |
| 81 | CD_ORD_COM | NUMBER | Y | Codigo da Ordem de compras |
| 82 | CD_ENTRADA_PRODUTO | NUMBER | Y | Codigo da entrada do produto |
| 83 | CD_FORNECEDOR_FRETE | NUMBER | Y | Codigo do fornecedor (frete) |
| 84 | CD_ESPECIE | NUMBER | Y | Codigo da especie do produto |
| 85 | CD_ESPECIE_INTEGRA | VARCHAR2 | Y | Codigo da especie do produto (de-para) |
| 86 | DS_ESPECIE | VARCHAR2 | Y | Descric?o da especie do produto |
| 87 | CD_CLASSE | NUMBER | Y | Codigo da classe do produto |
| 88 | CD_CLASSE_INTEGRA | VARCHAR2 | Y | Codigo da classe do produto (de-para) |
| 89 | DS_CLASSE | VARCHAR2 | Y | Descric?o da classe do produto |
| 90 | CD_SUB_CLASSE | NUMBER | Y | Codigo da Sub-classe do produto |
| 91 | CD_SUB_CLASSE_INTEGRA | VARCHAR2 | Y | Codigo da sub-classe do produto (de-para) |
| 92 | DS_SUB_CLASSE | VARCHAR2 | Y | Descric?o da sub-classe do produto |
| 93 | DS_PRODUTO | VARCHAR2 | Y | Descric?o do Item (produto/servico |
| 94 | VL_FATOR | NUMBER | Y | Fator de convers?o da unidade do produto |
| 95 | VL_CUSTO_REAL | NUMBER | Y | Valor real do item, levando em considerac?o outros valores sobre rateio |
| 96 | VL_TOTAL_CUSTO_REAL | NUMBER | Y | Valor rela total, levando em considerac?o ouotros valores sobre rateio |
| 97 | CD_IDENTIFICADOR | VARCHAR2 | Y | Identificador de etiquetas de produtos |
| 98 | TP_NOTA_FISCAL | VARCHAR2 | Y | Tipo da nomta fiscal. (P)roduto ou (S)ervico |
| 99 | CD_CONDICAO_PAGAMENTO | NUMBER | Y | Codigo da condic?o de pagamento |
| 100 | SN_CONSIGNADO | VARCHAR2 | Y | Identifica se o documento e ou n?o o tipo consignado |
| 101 | TP_ENTREGA | VARCHAR2 | Y | Tipo de entrega |
| 102 | TP_MODALIDADE_EMPRESTIMO | VARCHAR2 | Y | Modalidade do emprestimo |
| 103 | CD_TIP_DOC | NUMBER | Y | Codigo do tipo de pagamento |
| 104 | CD_MULTI_EMPRESA_INTEGRA | VARCHAR2 | Y | Codigo da multi-empresa (de-para) |
| 105 | CD_INTEGRA_PAI | NUMBER | Y | Codigo de controle para saber qual o registro PAI do registro atual |
| 106 | TP_DEVOLUCAO | VARCHAR2 | Y | Tipo de Devoluc?o: N - Nota Fiscal, C - Carta de Credito |

---

## MVINTEGRA.INTEGRA_SAIDA_MOVIM_LEITOS
> Tabela responsavel em integrar movimentos de leitos (saidas)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INTEGRA_SAIDA_MOVIM_LEITOS | NUMBER | N | Codigo sequencial da tabela de integrac?o. (Devera ser alimentado obrigatoriamente pelo objeto de... |
| 2 | TP_INTEGRACAO | VARCHAR2 | N | Identifica o status da integrac?o. |
| 3 | DS_ERRO | VARCHAR2 | Y | Mensagem de erro, caso o valor de TP_INTEGRACAO seja igual a "E" |
| 4 | DT_INTEGRACAO | DATE | N | Data em que o registro foi colocado nessa tabela de integrac?o |
| 5 | DT_INTEGRACAO_MV2000 | DATE | Y | Data em que o registro foi integrado com o MV2000 |
| 6 | TP_MOVIMENTO | VARCHAR2 | N | Identifica o tipo do movimento do registro. I - Incluir, A - Alterar e E - Excluir |
| 7 | TP_REGISTRO | VARCHAR2 | N | Identifica o tipo de registro |
| 8 | CD_FILIAL_INTEGRA | VARCHAR2 | N | Codigo da empresa do sistema que esta integrando |
| 9 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da empresa para onde vai o registro no MV2000 |
| 10 | CD_UNIDADE_INTERNACAO | NUMBER | Y | Codigo da Unidade de Internac?o ao qual o leito pertence |
| 11 | CD_UNIDADE_INTERNACAO_INTEGRA | VARCHAR2 | Y | Codigo da Unidade de Internac?o de compatibilidade entre sistemas (de-para) |
| 12 | DS_UNIDADE_INTERNACAO | VARCHAR2 | Y | Descric?o da Unidade de Internac?o |
| 13 | DS_LOCALIZACAO | VARCHAR2 | Y | Localixac?o da unidade de internac?o |
| 14 | CD_SETOR | NUMBER | Y | Codigo do setor(centro de custo) que a unidade pertence |
| 15 | CD_SETOR_INTEGRA | VARCHAR2 | Y | Codigo do setor para compatibilidade entre sistemas (de-para) |
| 16 | TP_UNIDADE_INTERNACAO | VARCHAR2 | Y | Tipo da unidade de internac?o |
| 17 | SN_HOSPITAL_DIA | VARCHAR2 | Y | Identifica se a unidade e para atendimentos do tipo Day Hospital |
| 18 | CD_LEITO | NUMBER | Y | Codigo do leito |
| 19 | CD_LEITO_INTEGRA | VARCHAR2 | Y | Codigo do leito de compatibilidade entre sistema (de-para) |
| 20 | DS_LEITO | VARCHAR2 | Y | Descric?o do leito |
| 21 | DS_LEITO_RESUMIDO | VARCHAR2 | Y | Descric?o resumida do leito |
| 22 | DS_ENFERMARIA | VARCHAR2 | Y | Nome da Enfermaria |
| 23 | TP_SEXO | VARCHAR2 | Y | Sexo padr?o para atendimento de pacientes |
| 24 | CD_ACOMODACAO | NUMBER | Y | Codigo padr?o da acomodac?o do leito |
| 25 | CD_ACOMODACAO_INTEGRA | VARCHAR2 | Y | Codigo padr?o da acomodac?o do leito (de-para) |
| 26 | DS_ACOMODACAO | VARCHAR2 | Y | Descric?o da acomodac?o padr?o do leito |
| 27 | CD_COPA | NUMBER | Y | Codigo da Copa que atende essa Unidade de Internac?o |
| 28 | DS_COPA | VARCHAR2 | Y | Descric?o da Copa |
| 29 | TP_OCUPACAO | VARCHAR2 | Y | Tipo de ocupac?o do leito |
| 30 | DS_OCUPACAO | VARCHAR2 | Y | Descric?o da ocupac?o do leito |
| 31 | SN_ATIVO | VARCHAR2 | Y | Identifica se o registro esta ativo (S) ou inativo (N) |
| 32 | DT_ATIVACAO | DATE | Y | Data que houve a ativac?o do leito |
| 33 | DT_DESATIVACAO | DATE | Y | Data que houve a desativac?o do leito |
| 34 | SN_LEITO_EXTRA | VARCHAR2 | Y | identifica se o leito do tipo extra (S) |
| 35 | NR_RAMAL | VARCHAR2 | Y | Ramal do leito |
| 36 | DT_MOVIMENTO_INICIO | DATE | Y | Data que o leito passou a ser utilizado |
| 37 | DT_MOVIMENTO_FINAL | DATE | Y | Data que o leito ficou disponivel |
| 38 | CD_ATENDIMENTO | NUMBER | Y | Data do atendimento do paciente |
| 39 | NM_PACIENTE | VARCHAR2 | Y | Nome do paciente |
| 40 | CD_USUARIO | VARCHAR2 | Y | Nome do usuario responsavel pela movimentac?o do registro |
| 41 | CD_INTEGRA_PAI | NUMBER | Y | Codigo de controle para saber qual o registro PAI do registro atual |
| 42 | TP_ACOMODACAO | VARCHAR2 | Y | Tipo da acomodac?o |

---

## MVINTEGRA.INTEGRA_SAIDA_MOVIM_LEITOS_STS
> Tabela usada para tratar a integracao de leitos quando houver mais de uma empresa no processo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INTEGRA_SAIDA_MOVIM_LEITOS | NUMBER | N | Codigo sequencial dos registros da integracao |
| 2 | TP_INTEGRACAO | VARCHAR2 | N | Identifica o status da interacao |
| 3 | DS_ERRO | VARCHAR2 | Y | Descricao do erro, caso o campo TP_INTEGRACAO seja igual a E |
| 4 | DT_INTEGRACAO | DATE | N | Data em que o registro foi disponibilizado na tabela de integracao |
| 5 | DT_INTEGRACAO_MV2000 | DATE | Y | Data em que ocorreu a integracao do registro com outro sistema |
| 6 | TP_MOVIMENTO | VARCHAR2 | N | Identifica o tipo do momento: I-Inclusao, A-Alteracao e E-Excluso |
| 7 | TP_REGISTRO | VARCHAR2 | N | Tipo do registro |
| 8 | CD_FILIAL_INTEGRA | VARCHAR2 | N | Codigo da filial da empresa que esta se integrando |
| 9 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da empresa. Usado para ambinetes multi-empresa. Senao houver, preencher com 1 |
| 10 | DS_EMPRESA_INTEGRACAO | VARCHAR2 | Y | Assinatura da empresa que esta integrando |

---

## MVINTEGRA.INTEGRA_SAIDA_MOV_CONTABIL
> Tabela responsave pela integrac?o de movmentac?o contabil

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INTEGRA_SAIDA_MOV_CONTABIL | NUMBER | N | Codigo sequencial do registro de integrac?o |
| 2 | TP_INTEGRACAO | VARCHAR2 | N | Identifica o status da integrac?o |
| 3 | DS_ERRO | VARCHAR2 | Y | Descric?o do erro, caso o campo TP_INTEGRACAO seja igual a "E" |
| 4 | DT_INTEGRACAO | DATE | N | Data em que o registro foi disponibilizado na tabela de integrac?o |
| 5 | DT_INTEGRACAO_MV2000 | DATE | Y | Data em que ocorreu a integrac?o do registroo com o outro sistema |
| 6 | TP_MOVIMENTO | VARCHAR2 | N | Identifica o tipo do movimento: I-Inclus?o, A-Alterac?o e E-Exclus?o |
| 7 | TP_REGISTRO | VARCHAR2 | N | Tipo do registro |
| 8 | CD_FILIAL_INTEGRA | VARCHAR2 | N | Codigo da filial/empresa do outro sistema |
| 9 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da empresa no MV2000i |
| 10 | CD_LANCAMENTO | NUMBER | Y | Codigo do lancamento contabil |
| 11 | CD_LANCAMENTO_SETOR | NUMBER | Y | Codigo do lancamento do setor |
| 12 | CD_MOVIMENTO | NUMBER | Y | Codigo do movimento contabil |
| 13 | CD_LOTE | NUMBER | Y | Codigo do lote |
| 14 | DT_LANCAMENTO | DATE | Y | Data do lancamento do movimento |
| 15 | CD_REDUZIDO_DEBITO | NUMBER | Y | Codigo reduzido da conta Contabil Debito |
| 16 | CD_REDUZIDO_DEBITO_INTEGRA | VARCHAR2 | Y | Codigo reduzido da conta Contabil Debito (De-para) |
| 17 | CD_CONTABIL_DEBITO | VARCHAR2 | Y | Codigo da conta contabil Debito |
| 18 | CD_CONTABIL_DEBITO_INTEGRA | VARCHAR2 | Y | Codigo da conta contabil Debito (de-para) |
| 19 | DS_CONTABIL_DEBITO | VARCHAR2 | Y | Descric?o da conta contabil Debito |
| 20 | CD_SETOR_DEBITO | NUMBER | Y | Codigo do setor Debito |
| 21 | CD_SETOR_DEBITO_INTEGRA | VARCHAR2 | Y | Codigo do setor Debito (de-para) |
| 22 | CD_REDUZIDO_CREDITO | NUMBER | Y | Codigo reduzido da conta Contabil Credito |
| 23 | CD_REDUZIDO_CREDITO_INTEGRA | VARCHAR2 | Y | Codigo reduzido da conta Contabil Credito (de-para) |
| 24 | CD_CONTABIL_CREDITO | VARCHAR2 | Y | Codigo da conta coltabil Credito |
| 25 | CD_CONTABIL_CREDITO_INTEGRA | VARCHAR2 | Y | Codigo da conta contabil Credito |
| 26 | DS_CONTABIL_CREDITO | VARCHAR2 | Y | Descric?o da conta contabil Credito |
| 27 | CD_SETOR_CREDITO | NUMBER | Y | Codigo do setor Credito |
| 28 | CD_SETOR_CREDITO_INTEGRA | VARCHAR2 | Y | Codigo do setor Credito (de-para) |
| 29 | CD_HISTORICO_PADRAO | NUMBER | Y | Codigo do historico padr?o |
| 30 | CD_HISTORICO_PADRAO_INTEGRA | VARCHAR2 | Y | Codigo do historico padr?o (de-para) |
| 31 | DS_COMPLEMENTO_HISTORICO | VARCHAR2 | Y | Complemento do historico padr?o |
| 32 | CD_MOEDA | VARCHAR2 | Y | Codigo da moeda do lancamento |
| 33 | VL_MOEDA | NUMBER | Y | Valor da moerda do lancamento |
| 34 | VL_LANCAMENTO | NUMBER | Y | Valor do lancamento contabil |
| 35 | CD_INTEGRA_PAI | NUMBER | Y | Codigo de controle para saber qual o registro PAI do registro atual |

---

## MVINTEGRA.INTEGRA_SAIDA_MOV_ESTOQUE
> Tabela responsavel em exportac?o movimentac?es de estoque

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INTEGRA_SAIDA_MOV_ESTOQUE | NUMBER | N | Codigo sequencial do registro integrado |
| 2 | TP_INTEGRACAO | VARCHAR2 | N | Identifica o status da integrac?o |
| 3 | DS_ERRO | VARCHAR2 | Y | Descric?o de erro, caso o campo TP_INTEGRAC?O seja igual a "E" |
| 4 | DT_INTEGRACAO | DATE | N | Data da inclus?o do registro na tabela de integrac?o |
| 5 | DT_INTEGRACAO_MV2000 | DATE | Y | Data de integrac?o do registro com o MV2000i |
| 6 | TP_MOVIMENTO | VARCHAR2 | N | Tipo do movimento no estoque |
| 7 | TP_REGISTRO | VARCHAR2 | N | Identifica o tipo de registro |
| 8 | CD_FILIAL_INTEGRA | VARCHAR2 | N | Codigo da empresa no sistema que esta se integrando |
| 9 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da empresa |
| 10 | CD_MOVIMENTO | NUMBER | Y | Codigo do movimento |
| 11 | TP_MOVIMENTO_ESTOQUE | VARCHAR2 | Y | Tipo de movimentac?o do estoque |
| 12 | TP_MOVIMENTO_ESTOQUE_INTEGRA | VARCHAR2 | Y | Tipo de movimentac?o do estoque (de-para) |
| 13 | DT_MOVIMENTO | DATE | Y | Data do movimento |
| 14 | HR_MOVIMENTO | DATE | Y | Hora do movimento |
| 15 | DT_CONSUMO_INICIAL | DATE | Y | Data inicial do concumo (usado para home care) |
| 16 | DT_CONSUMO_FINAL | DATE | Y | Data final do consumo (usado para home care) |
| 17 | CD_ESTOQUE | NUMBER | Y | Codigo do estoque da movimentac?o |
| 18 | CD_ESTOQUE_INTEGRA | VARCHAR2 | Y | Codigo do estoque da movimentac?o (de-para) |
| 19 | CD_ESTOQUE_DESTINO | NUMBER | Y | Codigo do estoque destino (usado para transferencias) |
| 20 | CD_ESTOQUE_DESTINO_INTEGRA | VARCHAR2 | Y | Codigo do estoque destino (de-para) |
| 21 | CD_ATENDIMENTO | NUMBER | Y | Codigo do atendimento (em caso de movimentac?o de paciente) |
| 22 | CD_UNIDADE_ATENDIMENTO | NUMBER | Y | Codigo da unidade de atendimento |
| 23 | CD_UNIDADE_ATENDIMENTO_INTEGRA | VARCHAR2 | Y | Codigo da unidade de atendimento (de-para) |
| 24 | CD_SETOR | NUMBER | Y | Codigo do setor |
| 25 | CD_SETOR_INTEGRA | VARCHAR2 | Y | Codigo do setor (de-para) |
| 26 | NR_DOCUMENTO | VARCHAR2 | Y | Codigo do documento de origem |
| 27 | NR_SERIE | VARCHAR2 | Y | Numero de serie do documento |
| 28 | CD_CFOP | NUMBER | Y | Codigo fiscal da operac?o |
| 29 | CD_TIPO_DOCUMENTO | NUMBER | Y | Codigo do tipo de documento usado para realizar o movimento |
| 30 | CD_TIPO_DOCUMENTO_INTEGRA | VARCHAR2 | Y | Codigo do tipo de documento usado para realizar o movimento (de-para) |
| 31 | TP_VENDA | VARCHAR2 | Y | Tipo de venda |
| 32 | CD_MOTIVO_DEVOLUCAO | NUMBER | Y | Codigo do motivo de devoluc?o |
| 33 | CD_MOTIVO_DEVOLUCAO_INTEGRA | VARCHAR2 | Y | Codigo do motivo de devoluc?o (de-para) |
| 34 | CD_MOTIVO_BAIXA | NUMBER | Y | Codigo do motivo de baixa do produto |
| 35 | CD_MOTIVO_BAIXA_INTEGRA | VARCHAR2 | Y | Codigo do motivo da baixa do produto (de-para) |
| 36 | CD_PRESTADOR_SOLIC | NUMBER | Y | Codigo do prestador (medico) solicitante |
| 37 | CD_PRESTADOR_SOLIC_INTEGRA | VARCHAR2 | Y | Codigo do prestador (medico) solicitante (de-para) |
| 38 | CD_SOLICITACAO | NUMBER | Y | Codigo da solicitac?o que gerou essa movimentac?o |
| 39 | CD_SOLICITACAO_INTEGRA | VARCHAR2 | Y | Codigo da solicitac?o que gerou essa movimentac?o (de-para) |
| 40 | CD_DESCRICAO_SAIDA | NUMBER | Y | Codigo da descric?o de saida |
| 41 | CD_DESCRICAO_SAIDA_INTEGRA | VARCHAR2 | Y | Codigo da descric?o de saida (de-para) |
| 42 | CD_AVISO_CIRURGIA | NUMBER | Y | Codigo do aviso de cirurgia |
| 43 | CD_AVISO_CIRURGIA_INTEGRA | VARCHAR2 | Y | Codigo do aviso de cirurgia (de-para) |
| 44 | CD_ENTRADA_PRODUTO | NUMBER | Y | Codigo da entrada do produto (usado para aplicac?o direta) |
| 45 | CD_ENTRADA_PRODUTO_INTEGRA | VARCHAR2 | Y | Codigo da entrada do produto (usado para aplicac?o direta (de-para) |
| 46 | DS_OBSERVACAO | VARCHAR2 | Y | Observac?o da movimentac?o |
| 47 | CD_USUARIO | VARCHAR2 | Y | Codigo do usuario responsavel pela movimentac?o |
| 48 | CD_MOVIMENTO_ITEM | NUMBER | Y | Codigo do movimentac?o do item |
| 49 | CD_PRODUTO | NUMBER | Y | Codigo do produto |
| 50 | CD_PRODUTO_INTEGRA | VARCHAR2 | Y | Codigo do produto (de-para) |
| 51 | DS_CODIGO_BARRAS | VARCHAR2 | Y | Codigo de barras do item (precisa ser o mesmo do MV2000i) |
| 52 | DS_PRODUTO | VARCHAR2 | Y | Descric?o do produto |
| 53 | CD_UNIDADE | VARCHAR2 | Y | Unidade do produto |
| 54 | CD_UNIDADE_INTEGRA | VARCHAR2 | Y | Unidade do produto (de-para) |
| 55 | CD_UNI_PRO | NUMBER | Y | Codigo da unidade do item no MV2000i (uso preferencial) |
| 56 | DS_UNIDADE | VARCHAR2 | Y | Decric?o da unidade do produto |
| 57 | VL_FATOR | NUMBER | Y | Fator de convers?o do item |
| 58 | QT_MOVIMENTACAO | NUMBER | Y | Quantidade de movimentac?o do item |
| 59 | CD_LOTE | VARCHAR2 | Y | Lote do item |
| 60 | DT_VALIDADE | DATE | Y | Validade do item |
| 61 | VL_UNITARIO | NUMBER | Y | Valor unitario |
| 62 | VL_TOTAL | NUMBER | Y | Valor total |
| 63 | TP_DOCUMENTO_MOVIMENTACAO | VARCHAR2 | Y | Identifica o tipo de movimentac?o: M-Movimentacao ou S-Solicitac?o |
| 64 | TP_MODALIDADE_EMPRESTIMO | VARCHAR2 | Y | Tipo da modalidade do emprestimo |
| 65 | CD_INTEGRA_PAI | NUMBER | Y | Codigo de controle para saber qual o registro PAI do registro atual |
| 66 | CD_ATENDIMENTO_INTEGRA | VARCHAR2 | Y | Codigo do atendimento do paciente (de-para) |
| 67 | QT_ESTOQUE | NUMBER | Y | Quantidade digitada no estoque |
| 68 | SN_ABERTURA_INVENTARIO | VARCHAR2 | Y | Corresponde a abertura do inventario |
| 69 | CD_PRESCRICAO | NUMBER | Y | Codigo da prescric?o |
| 70 | SN_URGENTE | VARCHAR2 | Y | Identifica se o item e urgente |
| 71 | TP_RECEBIDO | VARCHAR2 | Y | Tipo de recebimento |
| 72 | CD_ITPRESCRICAO | NUMBER | Y | Codigo do item de prescricao |
| 73 | CD_FREQUENCIA | NUMBER | Y | Tipo de frequencia |
| 74 | QT_PRESCRITA | NUMBER | Y | Quantidade prescrita |
| 75 | SN_CANCELADO | VARCHAR2 | Y | Identifica se o item esta ou n?o cancelado |
| 76 | CD_FORMA_APLICACAO | VARCHAR2 | Y | Forma de aplicacao |
| 77 | DS_FORMA_APLICACAO | VARCHAR2 | Y | Descricao da forma de aplicacao |
| 78 | DS_FREQUENCIA | VARCHAR2 | Y | Descric?o do tipo de frequencia |
| 79 | CD_FREQUENCIA_INTEGRA | VARCHAR2 | Y | Tipo de frequencia (DE-PARA) |
| 80 | CD_FORMA_APLICACAO_INTEGRA | VARCHAR2 | Y | Forma de aplicacao (de-para) |
| 81 | CD_ID | NUMBER | Y | Codigo identificador |
| 82 | CD_CONVENIO | NUMBER | Y | Codigo do convenio vinculado ao atendimento DE-PARA |
| 83 | NM_CONVENIO | VARCHAR2 | Y | Nome do convenio vinculado ao atendimento |
| 84 | CD_CONVENIO_INTEGRA | VARCHAR2 | Y |  |

---

## MVINTEGRA.INTEGRA_SAIDA_MOV_FINANC
> Tabela responsavel em exportar informac?es de Contas a pagar/receber, notas fiscais e movimento de caixa

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INTEGRA_SAIDA_MOV_FINANC | NUMBER | N | Identificac?o da linha do registro |
| 2 | TP_INTEGRACAO | VARCHAR2 | N | Identifica o Status atual do registro |
| 3 | DS_ERRO | VARCHAR2 | Y | Descric?o do erro (caso o campo TP_INTEGRACAO seja igual a "E") |
| 4 | DT_INTEGRACAO | DATE | N | Data em que o registro foi disponibilizado na tabela de integrac?o |
| 5 | DT_INTEGRACAO_MV2000 | DATE | Y | Data em que o registro foi efetivamente integrado (processado) |
| 6 | TP_MOVIMENTO | VARCHAR2 | N | Identifica o tipo de ac?o que devera ser tomada para o registro: I-Inclus?o, A-Alterac?o e E-Excl... |
| 7 | TP_REGISTRO | VARCHAR2 | N | Identifica o tipo de registro |
| 8 | CD_FILIAL_INTEGRA | VARCHAR2 | N | Codigo da empresa no outro sistema (caso o outro sistema trabalhe com o processo Multi-Empresa) |
| 9 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da empresa no MV2000i |
| 10 | CD_DOCUMENTO | NUMBER | Y | Codigo do documento |
| 11 | TP_ORIGEM_DOCUMENTO | VARCHAR2 | Y | Identifica o tipo do documento: CR-Contas a Receber, CP-Contas a Pagar, NF-Nota Fiscal |
| 12 | TP_NATUREZA_DOCUMENTO | VARCHAR2 | Y | Identifica a natureza do documento |
| 13 | DT_EMISSAO_DOCUMENTO | DATE | Y | Data de emiss?o do documento |
| 14 | SN_PREVISAO | VARCHAR2 | Y | Identifica se o documento gerado e ou n?o uma previs?o |
| 15 | DT_SAIDA | DATE | Y | Data da saida |
| 16 | TP_VENCIMENTO_DOCUMENTO | VARCHAR2 | Y | Do do vencimento do documento: V-A vista, P-A Prazo |
| 17 | DT_LANCAMENTO | DATE | Y | Data do lancamento do documento |
| 18 | CD_TIPO_DOCUMENTO | NUMBER | Y | Codigo do tipo de documento |
| 19 | CD_TIPO_DOCUMENTO_INTEGRA | VARCHAR2 | Y | Codigo do tipo de documento (de-para) |
| 20 | DS_TIPO_DOCUMENTO | VARCHAR2 | Y | Descric?o do tipo de documento |
| 21 | CD_CLIENTE_FORNECEDOR | NUMBER | Y | Codigo do cliente/fornecedor |
| 22 | CD_CLIENTE_FORNECEDOR_INTEGRA | VARCHAR2 | Y | Codigo do cliente/fornecedor (de-para) |
| 23 | DS_CLIENTE_FORNECEDOR | VARCHAR2 | Y | Nome do cliente/fornecedor |
| 24 | NR_CNPJ_CPF | VARCHAR2 | Y | Numero do CNPJ para pessoa juridica, ou CPF para pesso fisica |
| 25 | DS_ENDERECO | VARCHAR2 | Y | Endereco de credor/devedor |
| 26 | NR_ENDERECO | VARCHAR2 | Y | Numero do endereco |
| 27 | NM_BAIRRO | VARCHAR2 | Y | Nome do bairro |
| 28 | NM_CIDADE | VARCHAR2 | Y | Nome da cidade |
| 29 | DS_UF | VARCHAR2 | Y | Sigla do estado |
| 30 | NR_CEP | VARCHAR2 | Y | Numero do CEP |
| 31 | NR_INSCRICAO_ESTADUAL | VARCHAR2 | Y | Numero da Inscric?o Estadual |
| 32 | NR_INSCRICAO_MUNICIPAL | VARCHAR2 | Y | Numero da Inscric?o Municipal |
| 33 | NR_DOCUMENTO | VARCHAR2 | Y | Numero do documento |
| 34 | NR_SERIE_DOCUMENTO | VARCHAR2 | Y | Numero de serie do documento |
| 35 | CD_MOEDA | VARCHAR2 | Y | Codigo da moeda |
| 36 | VL_MOEDA | NUMBER | Y | Valor da moeda |
| 37 | VL_BRUTO_DOCUMENTO | NUMBER | Y | Valor Bruto do documento |
| 38 | CD_DESCONTO | NUMBER | Y | Codigo do desconto |
| 39 | CD_DESCONTO_INTEGRA | VARCHAR2 | Y | Codigo do desconto (de-para) |
| 40 | DS_DESCONTO | VARCHAR2 | Y | Descric?o do desconto |
| 41 | VL_DESCONTO_MOEDA | NUMBER | Y |  |
| 42 | VL_DESCONTO | NUMBER | Y | Valor do desconto |
| 43 | CD_ACRESCIMO | NUMBER | Y | Codigo do acrescimo |
| 44 | CD_ACRESCIMO_INTEGRA | VARCHAR2 | Y | Codigo do acrescimo (de-para) |
| 45 | DS_ACRESCIMO | VARCHAR2 | Y | Descric?o do acrescimo |
| 46 | VL_ACRESCIMO | NUMBER | Y | Valor do acrescimo |
| 47 | VL_ACRESCIMO_MOEDA | NUMBER | Y |  |
| 48 | VL_BASE_IR | NUMBER | Y | Valor base para calculo do IRRF |
| 49 | VL_BASE_INSS | NUMBER | Y | Valor base para calculo do INSS |
| 50 | VL_ISS | NUMBER | Y | Valor ISS |
| 51 | VL_PERC_IR | NUMBER | Y | Percentual de IR |
| 52 | VL_PERC_ISS | NUMBER | Y | Percentual de ISS |
| 53 | VL_LIQUIDO_DOCUMENTO | NUMBER | Y | Valor liquido do documento |
| 54 | CD_PROCESSO | NUMBER | Y | Codigo do processo |
| 55 | DS_PROCESSO | VARCHAR2 | Y | Descric?o do processo |
| 56 | CD_REMESSA | NUMBER | Y | Codigo da remessa (fechamento de contas MV2000i) |
| 57 | CD_FATURA | NUMBER | Y | Codigo da fatura (fechamento de contas MV2000i) |
| 58 | DS_FATURA | VARCHAR2 | Y | Descric?o da fatura |
| 59 | CD_CONTA | NUMBER | Y | Codigo da conta |
| 60 | DT_COMPETENCIA_FATURA | DATE | Y | Data de competencia da fatura |
| 61 | CD_FINANCEIRA_CARTAO | NUMBER | Y | Codigo da fianceira do cart?o de credito |
| 62 | DS_FINANCEIRA_CARTAO | VARCHAR2 | Y | Descric?o da financeira do cart?o de credito |
| 63 | CD_PORTADOR | NUMBER | Y | Codigo do portador |
| 64 | DS_PORTADOR | VARCHAR2 | Y | Descric?o do portador |
| 65 | CD_REDUZIDO_CONTABILL | NUMBER | Y | Codigo contabil reduzido |
| 66 | CD_CONTABIL | VARCHAR2 | Y | Codigo contabil estruturado |
| 67 | CD_CONTABIL_INTEGRA | VARCHAR2 | Y | Codigo contabil (de-para) |
| 68 | DS_CONTABIL | VARCHAR2 | Y | Descric?o da conta contabil |
| 69 | CD_HISTORICO_PADRAO | NUMBER | Y | Codigo do historico padr?o |
| 70 | DS_HISTORICO_PADRAO | VARCHAR2 | Y | Descricao do historico padr?o |
| 71 | CD_HISTORICO_PADRAO_INTEGRA | VARCHAR2 | Y | Codigo do historico padr?o (de-para) |
| 72 | DS_COMPLEMENTO_HISTORICO | VARCHAR2 | Y | Complemento do historico padr?o |
| 73 | DS_OBSERVACAO | VARCHAR2 | Y | Observac?es |
| 74 | CD_TITULO | NUMBER | Y | Codigo de identificac?o da parcela |
| 75 | NR_PARCELA | NUMBER | Y | Numero da parcela |
| 76 | VL_TITULO | NUMBER | Y |  |
| 77 | DT_VENCIMENTO | DATE | Y | Data de vencimento do documento |
| 78 | DT_PREVISAO_PAGAMENTO | DATE | Y | Data prevista de pagamento |
| 79 | TP_QUITACAO | VARCHAR2 | Y | Tipo da quitac?o |
| 80 | DS_TIPO_QUITACAO | VARCHAR2 | Y | Descric?o do tipo de quitac?o |
| 81 | VL_QUITACAO | NUMBER | Y | Valor da quitac?o |
| 82 | CD_USUARIO | VARCHAR2 | Y | Nome do usuario que movimentou o documento |
| 83 | CD_CON_REC | NUMBER | Y | Codigo de identificac?o do contas a receber |
| 84 | CD_CON_PAG | NUMBER | Y | Codigo de identificac?o do contas a pagar |
| 85 | CD_RECCON_REC | NUMBER | Y | Codigo de identificac?o do recebimento |
| 86 | CD_PAGCON_PAG | NUMBER | Y | Codigo de identificacao do pagamento |
| 87 | CD_ATENDIMENTO | NUMBER | Y | Codigo de identificac?o do atendimento |
| 88 | CD_REG_AMB | NUMBER | Y | Codigo de identificac?o da conta ambulatorial |
| 89 | CD_REG_FAT | NUMBER | Y | Codigo de identificac?o da conta hospitalar |
| 90 | CD_MOEDA_DESCONTO | VARCHAR2 | Y | Codigo da moeda de desconto |
| 91 | VL_MOEDA_DESCONTO | NUMBER | Y | Valor da moeda de desconto |
| 92 | CD_MOEDA_ACRESCIMO | VARCHAR2 | Y | Codigo da moeda de acrescimo |
| 93 | VL_MOEDA_ACRESCIMO | NUMBER | Y | Valor da moeda de acrescimo |
| 94 | VL_IR | NUMBER | Y | Valor do IR |
| 95 | VL_PERC_INSS | NUMBER | Y | Valor percentual de INSS |
| 96 | VL_INSS | NUMBER | Y | Valor do INSS |
| 97 | VL_BASE_ISS | NUMBER | Y | Valor base do ISS |
| 98 | CD_ITCON_REC | NUMBER | Y | Codigo de identificac?o do item do contas a receber |
| 99 | CD_ITCON_PAG | NUMBER | Y | Codigo de identificac?o do item do contas a pagar |
| 100 | CD_GRUPO_FATURAMENTO | NUMBER | Y | Codigo do grupo de faturamento |
| 101 | CD_GRUPO_FATURAMENTO_INTEGRA | VARCHAR2 | Y | Codigo do grupo de faturamento (de-para) |
| 102 | VL_GRUPO_FATURAMENTO | NUMBER | Y | Valor do grupo de faturamento |
| 103 | DS_SITUACAO_NOTA_FISCAL | VARCHAR2 | Y | Situac?o da nota fiscal: E-Emitida, C-Cancelada |
| 104 | TP_NOTA_FISCAL | VARCHAR2 | Y | Tipo da nota fiscal: N-Nomal, A-Avulsa |
| 105 | CD_NOTA_FISCAL | NUMBER | Y | Codigo da Nota Fiscal (id) |
| 106 | CD_RATCON_PAG | NUMBER | Y | Codigo de identificac?o do rateio |
| 107 | CD_SETOR | NUMBER | Y | Codigo do setor |
| 108 | CD_SETOR_INTEGRA | VARCHAR2 | Y | Codigo do setor (de-para) |
| 109 | CD_CONTA_RESULTADO | NUMBER | Y | Conta de resultado |
| 110 | CD_CONTA_RESULTADO_INTEGRA | VARCHAR2 | Y | Conta de resultado (de-para) |
| 111 | DS_CONTA_RESULTADO | VARCHAR2 | Y | Descric?o da conta de resultado |
| 112 | VL_RATEIO | NUMBER | Y | Valor de rateio |
| 113 | DS_GRUPO_FATURAMENTO | VARCHAR2 | Y | Descric?o do grupo de faturamento |
| 114 | CD_PRO_FAT | VARCHAR2 | Y | Codigo do procedimento |
| 115 | CD_GRU_PRO | NUMBER | Y | Codigo do grupo de procedimento |
| 116 | CD_GRU_FAT | NUMBER | Y | Codigo do grupo de faturamento |
| 117 | TP_PAGAMENTO_QUITACAO | VARCHAR2 | Y | Tipo da quitac?o do pagamento |
| 118 | TP_ORIGEM_MOVIMENTO | VARCHAR2 | Y | Tipo da origem do movimento |
| 119 | CD_PACIENTE | NUMBER | Y | Codigo do paciente |
| 120 | CD_PACIENTE_INTEGRA | VARCHAR2 | Y | Codigo do paciente (de-para) |
| 121 | NM_PACIENTE | VARCHAR2 | Y | Nome do paciente |
| 122 | CD_MOTIVO_MOVIMENTO | NUMBER | Y | Codigo do motivo do movimento |
| 123 | TP_SITUACAO_DOCUMENTO | VARCHAR2 | Y | Tipo da situac?o do documento |
| 124 | TP_CAUCAO | VARCHAR2 | Y | Tipo de cauc?o |
| 125 | TP_DESTINO_CAUCAO | VARCHAR2 | Y | Tipo do destino do cauc?o |
| 126 | CD_MOTIVO_LANCAMENTO | VARCHAR2 | Y | Codigo do motivo de lancamento |
| 127 | CD_LAN_CONCOR | NUMBER | Y | Codigo do lancamento na conta-corrente |
| 128 | DS_LAN_CONCOR | VARCHAR2 | Y | Descric?o do lancamento na conta-corrente |
| 129 | CD_CAIXA | NUMBER | Y | Codigo do caixa |
| 130 | DS_CAIXA | VARCHAR2 | Y | Nome do caixa |
| 131 | CD_CONVENIO_ORIGEM | NUMBER | Y | Codigo do convenio de origem (atendimento) |
| 132 | CD_INTEGRA_PAI | NUMBER | Y | Codigo de controle para saber qual o registro PAI do registro atual |
| 133 | CD_DETALHAMENTO | NUMBER | Y | Codigo do imposto |
| 134 | DS_DETALHAMENTO | VARCHAR2 | Y | Indica a descric?o do imposto. |
| 135 | CD_DETALHAMENTO_INTEGRA | VARCHAR2 | Y | Codigo do imposto (de-para) |
| 136 | SN_RETIDO | VARCHAR2 | Y | Indica se o Tributo foi Retido na Nota Fiscal. |
| 137 | VL_TRIBUTO | NUMBER | Y | Valor do Tributo. |
| 138 | VL_PERCENTUAL | NUMBER | Y | Percentual do imposto a ser aplicado no total da nota fiscal. |
| 139 | VL_TRIBUTO_TOTAL | NUMBER | Y | Valor Total do Tributo. |
| 140 | CD_CON_COR | NUMBER | Y | Codigo da Conta-Corrente |
| 141 | CD_CON_COR_INTEGRA | VARCHAR2 | Y | Codigo da Conta-Corrente (de-para) |
| 142 | DS_CON_COR | VARCHAR2 | Y | Descric?o da Conta-Corrente |
| 143 | CD_BANCO | NUMBER | Y | Codigo do Banco |
| 144 | CD_BANCO_INTEGRA | VARCHAR2 | Y | Codigo do Banco (De-Para) |
| 145 | NM_BANCO | VARCHAR2 | Y | Nome do Banco |
| 146 | DS_AGENCIA | VARCHAR2 | Y | Descric?o da Agencia |
| 147 | CD_CONDICAO_PAGAMENTO | NUMBER | Y | Codigo Condic?o Pagamento |
| 148 | CD_CONDICAO_PAGAMENTO_INTEGRA | VARCHAR2 | Y | Codigo Condic?o Pagamento (De-Para) |
| 149 | DS_CONDICAO_PAGAMENTO | VARCHAR2 | Y | Descric?o da Condic?o de Pagamento |
| 150 | CD_SERVICO | NUMBER | Y | Codigo do servico podendo ser associado a mais de uma oficina. |
| 151 | NM_SERVICO | VARCHAR2 | Y | Descric?o do servico |
| 152 | CD_SERVICO_INTEGRA | VARCHAR2 | Y | Codigo do Servico (De-Para) |
| 153 | CD_AGENCIA | VARCHAR2 | Y | Codigo da Agencia |
| 154 | CD_AGENCIA_INTEGRA | VARCHAR2 | Y | Codigo da Agencia (De-Para) |
| 155 | CD_CHEQUE | NUMBER | Y | Codigo sequencial do Cheque |
| 156 | CD_CHEQUE_INTEGRA | VARCHAR2 | Y | Codigo sequencial do Cheque (De-Para) |
| 157 | NR_CHEQUE | NUMBER | Y | Numero do Cheque |
| 158 | DT_PAGAMENTO | DATE | Y | Data do pagamento |
| 159 | NR_CONTA | VARCHAR2 | Y | Numero da Conta-Corrente |
| 160 | DT_IMPORTACAO_MGES | DATE | Y | Data de importac?o do contas a pagar do MGES |

---

## MVINTEGRA.INTEGRA_SAIDA_NUTRICAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INTEGRA_SAIDA_NUTRICAO | NUMBER | N | Codigo sequencial dos registros da integrac?o |
| 2 | TP_INTEGRACAO | VARCHAR2 | N | Identifica o status da integrac?o |
| 3 | DS_ERRO | VARCHAR2 | Y | Descric?o do erro, caso o campo TP_INTEGRACAO seja igual a E |
| 4 | DT_INTEGRACAO | DATE | N | Data em que o registro foi disponibilizado na tabela de integrac?o |
| 5 | DT_INTEGRACAO_MV2000 | DATE | Y | Data em que ocorreu a integrac?odo registro com o outro sistema |
| 6 | TP_MOVIMENTO | VARCHAR2 | N | Indica o tipo do resgistro: I-Iclus?o, A-Alterac?o e E-Exclus?o |
| 7 | TP_REGISTRO | VARCHAR2 | N | Tipo do regsitro |
| 8 | CD_FILIAL_INTEGRA | VARCHAR2 | N | Codigo da filial da empresa ao qual se esta integrando |
| 9 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da empresa, usado para ambientes multi-empresa |
| 10 | CD_PEDIDO | NUMBER | Y | Codido do pedido (solicitac?o) de dieta |
| 11 | DT_PEDIDO | DATE | Y | Data em que ocorreu o pedido da dieta |
| 12 | CD_ATENDIMENTO | NUMBER | Y | Codigo do atendimento do paciente que recebera a dieta |
| 13 | CD_PACIENTE | NUMBER | Y | Codigo do paciente |
| 14 | CD_PACIENTE_INTEGRA | VARCHAR2 | Y | Codigo do paciente. Em caso de pacientes integrados |
| 15 | NM_PACIENTE | VARCHAR2 | Y | Nome do paciente |
| 16 | DT_NASCIMENTO | DATE | Y | Data de nascimento do paciente |
| 17 | CD_LEITO | NUMBER | Y | Codigo do leito onde o paciente se encontra |
| 18 | DS_LEITO | VARCHAR2 | Y | Descric?o do leito onde o paciente se encontra |
| 19 | DS_LEITO_RESUMIDO | VARCHAR2 | Y | Descric?o resumida do leito onde o paciente se encontra |
| 20 | DS_ENFERMAGEM | VARCHAR2 | Y | Descric?o da enfermaria, onde o paciente se econtra |
| 21 | CD_PRESTADOR_SOLICITANTE | NUMBER | Y | Codigo do prestador solicitante da dienta |
| 22 | CD_PRESTADOR_SOLIC_INTEGRA | VARCHAR2 | Y | Codigo do prestador, em caso de prestadores integrados |
| 23 | NM_PRESTADOR_SOLICITANTE | VARCHAR2 | Y | Nome do prestador solicitante da dieta |
| 24 | NR_CONSELHO_SOLICITANTE | VARCHAR2 | Y | Numero do conselho regional do prestador |
| 25 | TP_CONSELHO_SOLICITANTE | VARCHAR2 | Y | Tipo do conselho regional do prestador |
| 26 | CD_SETOR_SOLICITANTE | NUMBER | Y | Codigo do setor solicitante |
| 27 | CD_SETOR_SOLIC_INTEGRA | VARCHAR2 | Y | Codigo do setor solicitante, em caso de setores integrados |
| 28 | NM_SETOR_SOLICITANTE | VARCHAR2 | Y | Nome do setor solicitante |
| 29 | CD_TIPO_REFEICAO | VARCHAR2 | Y | Tipo de refeicao |
| 30 | CD_TIPO_REFEICAO_INTEGRA | VARCHAR2 | Y | Tipo de refeic?o, em caso de tipo de refereic?o intgrado |
| 31 | DS_TIPO_REFEICAO | VARCHAR2 | Y | Descric?o do tipo de refeic?o |
| 32 | TP_REFEICAO | VARCHAR2 | Y | Tipo de refeic?o. Esse valor e fixo |
| 33 | DS_TP_REFEICAO | VARCHAR2 | Y | Descric?o do tipo de refeic?o. Esse valor e fixo |
| 34 | CD_DESTINO_CARDAPIO | VARCHAR2 | Y | Codigo do destino do cardapio |
| 35 | DS_DESTINO_CARDAPIO | VARCHAR2 | Y | Descric?o do destino do cardapio |
| 36 | TP_DIETA_PACIENTE | VARCHAR2 | Y | Tipo de dieta |
| 37 | DS_DIETA_PACIENTE | VARCHAR2 | Y | Descric?o do tipo de dieta |
| 38 | DS_OBSERVACAO_PRESCRICAO | VARCHAR2 | Y | Observac?o da prescric?o |
| 39 | DS_OBSERVACAO_NUTRICAO | VARCHAR2 | Y | Observac?o da nutricionista |
| 40 | CD_INTEGRA_PAI | NUMBER | Y | Codigo de controle para saber qual o registro PAI do registro atual |

---

## MVINTEGRA.INTEGRA_SAIDA_ORD_COM_XML
> Tabela para controle da gerac?o do XML, gerac?o do pedido

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Codigo de identificac?o do registro |
| 2 | ID_PAI | NUMBER | Y | Codigo de identificac?o do registro pai |
| 3 | TP_DOCUMENTO | VARCHAR2 | Y | Tipo de documento |
| 4 | CD_PEDIDO | VARCHAR2 | Y | Codigo do pedido de compras |
| 5 | DT_PEDIDO | VARCHAR2 | Y | Data do pedido |
| 6 | DS_CONHECIMENTO | VARCHAR2 | Y | Descric?o do conhecimento |
| 7 | DS_FORMA_CONFIRMACAO | VARCHAR2 | Y | Forma de confirmac?o |
| 8 | CD_ENDERECO_ENTREGA | VARCHAR2 | Y | Codigo do endereco de entrega |
| 9 | DT_ENTREGA_DESEJADA | VARCHAR2 | Y | Data desejada para entrega |

---

## MVINTEGRA.INTEGRA_SAIDA_SERVICO
> Tabela para integrac?es de Saida de Servicos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INTEGRA_SAIDA_SERVICO | NUMBER | N | Codigo sequencial da integrac?o |
| 2 | CD_INTEGRA_PAI | NUMBER | Y | Codigo de controle para saber qual o registro PAI do registro atual |
| 3 | TP_INTEGRACAO | VARCHAR2 | N | Identifica o status da interacao |
| 4 | DS_ERRO | VARCHAR2 | Y | Descricao do erro, caso o campo TP_INTEGRACAO seja igual a E |
| 5 | DT_INTEGRACAO | DATE | N | Data em que o registro foi disponibilizado na tabela de integracao |
| 6 | DT_INTEGRACAO_MV2000 | DATE | Y | Data em que ocorreu a integracao do registro com outro sistema |
| 7 | TP_MOVIMENTO | VARCHAR2 | N | Identifica o tipo do momento: I-Inclusao, A-Alteracao e E-Exclusao |
| 8 | TP_REGISTRO | VARCHAR2 | N | Tipo do registro |
| 9 | CD_FILIAL_INTEGRA | VARCHAR2 | N | Codigo da filial da empresa que esta se integrando |
| 10 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da empresa. Usado para ambientes multi-empresa. Se nao houver, preencher com 1 |
| 11 | CD_ESPECIALIDADE | NUMBER | Y | Codigo da especialidade de manutenc?o no sistema MV2000 |
| 12 | CD_ESPECIALIDADE_INTEGRA | VARCHAR2 | Y | Codigo da especialidade de manutenc?o no sistema externo |
| 13 | DS_ESPECIALIDADE | VARCHAR2 | Y | Descric?o da especialidade de manutenc?o |
| 14 | SN_ZELADORIA | VARCHAR2 | Y | Indica se a especialidade pertence ao setor de Zeladoria |
| 15 | CD_ESPECIE | NUMBER | Y | Codigo da Especie no sistema MV2000 |
| 16 | DS_ESPECIE | VARCHAR2 | Y | Descric?o da Especie |
| 17 | CD_ESPECIE_INTEGRA | VARCHAR2 | Y | Codigo da Especie no sistema externo |
| 18 | CD_CLASSE | NUMBER | Y | Codigo da Classe no sistema MV2000 |
| 19 | DS_CLASSE | VARCHAR2 | Y | Descric?o da Classe |
| 20 | CD_CLASSE_INTEGRA | VARCHAR2 | Y | Codigo da Classe no sistema externo |
| 21 | CD_SUB_CLASSE | NUMBER | Y | Codigo da Sub-Classe no sistema MV2000 |
| 22 | DS_SUB_CLASSE | VARCHAR2 | Y | Descric?o da Sub-Classe |
| 23 | CD_SUB_CLASSE_INTEGRA | VARCHAR2 | Y | Codigo da Sub-Classe no sistema externo |
| 24 | CD_SERVICO | NUMBER | Y | Codigo do Servico no sistema MV2000 |
| 25 | CD_SERVICO_INTEGRA | VARCHAR2 | Y | Codigo do Servico no sistema externo |
| 26 | DS_SERVICO | VARCHAR2 | Y | Descric?o do servico |
| 27 | VL_PRIORIDADE | NUMBER | Y | Valor da prioridade do servico |
| 28 | DS_UNIDADE_MEDIDA | VARCHAR2 | Y | Unidade de medida do servico |
| 29 | CD_SERVICO_DMS | NUMBER | Y | Codigo do Servico na DMS |
| 30 | CD_REDUZIDO | NUMBER | Y | Conta contabil reduzido no sistema MV2000 |
| 31 | DS_REDUZIDO | VARCHAR2 | Y | Descric?o da conta contabil |
| 32 | CD_REDUZIDO_INTEGRA | VARCHAR2 | Y | Conta contabil reduzido no sistema externo |
| 33 | CD_CONTA_CUSTO | NUMBER | Y | Conta de custo no sistema MV2000 |
| 34 | DS_CONTA_CUSTO | VARCHAR2 | Y | Descric?o da conta de custo |
| 35 | CD_CONTA_CUSTO_INTEGRA | VARCHAR2 | Y | Conta de custo no sistema externo |
| 36 | SN_TRIBUTAVEL | VARCHAR2 | Y | Indica se o servico gera tributos |
| 37 | QT_MAXIMA_HORA | NUMBER | Y | Quantidade maxima de horas para realizac?o do servico |
| 38 | QT_MAXIMA_MINUTO | NUMBER | Y | Quantidade maxima de minutos para realizac?o do servico |
| 39 | QT_MINIMA_HORA | NUMBER | Y | Quantidade minima de horas para realizar o servico |
| 40 | QT_MINIMA_MINUTO | NUMBER | Y | Quantidade minima de minutos para realizar o servico |
| 41 | TP_CATEGORIA | VARCHAR2 | Y | Prioridade da categoria do Servico |
| 42 | CD_OFICINA | NUMBER | Y | Codigo da oficina no sistema MV2000 |
| 43 | CD_OFICINA_INTEGRA | VARCHAR2 | Y | Codigo da oficina no sistema externo |
| 44 | DS_OFICINA | VARCHAR2 | Y | Descric?o da oficina |
| 45 | CD_MOTIVO_SERVICO | NUMBER | Y | Codigo do Motivo do Servico no sistema MV2000 |
| 46 | CD_MOTIVO_SERVICO_INTEGRA | VARCHAR2 | Y | Codigo do Motivo do Servico no sistema externo |
| 47 | DS_MOTIVO_SERVICO | VARCHAR2 | Y | Descric?o do Motivo do Servico |
| 48 | TP_MOTIVO_SERVICO | VARCHAR2 | Y | Tipo do Motivo de Servico |
| 49 | CD_TIPO_OS | NUMBER | Y | Codigo do Tipo da OS no sistema MV2000 |
| 50 | CD_TIPO_OS_INTEGRA | VARCHAR2 | Y | Codigo do Tipo da OS no sistema externo |
| 51 | DS_TIPO_OS | VARCHAR2 | Y | Descric?o do Tipo da OS |
| 52 | CD_SETOR | NUMBER | Y | Codigo do Setor no sistema MV2000 |
| 53 | CD_SETOR_INTEGRA | VARCHAR2 | Y | Codigo do Setor no sistema externo |
| 54 | DS_SETOR | VARCHAR2 | Y | Descric?o do Setor |
| 55 | CD_LOCALIDADE | NUMBER | Y | Codigo da Localidade no sistema MV2000 |
| 56 | CD_LOCALIDADE_INTEGRA | VARCHAR2 | Y | Codigo da Localidade no sistema externo |
| 57 | DS_LOCALIDADE | VARCHAR2 | Y | Descric?o da Localidade |
| 58 | NM_RESPONSAVEL | VARCHAR2 | Y | Nome do Responsavel |
| 59 | CD_ORDEM_SERVICO | NUMBER | Y | Codigo da Ordem de Servico no sistema MV2000 |
| 60 | CD_ORDEM_SERVICO_INTEGRA | VARCHAR2 | Y | Codigo da Ordem de Servico no sistema externo |
| 61 | DS_ORDEM_SERVICO | VARCHAR2 | Y | Descric?o da Ordem de Servico |
| 62 | SN_ORDEM_SERVICO_PRINCIPAL | VARCHAR2 | Y | Indica se a OS e a OS Principal |
| 63 | CD_ORDEM_SERVICO_PRINCIPAL | NUMBER | Y | Codigo da OS Pricipal no sistema MV2000 |
| 64 | CD_ORDEM_SERVICO_PRINC_INTEGRA | VARCHAR2 | Y | Codigo da OS Principal no sistema externo |
| 65 | DT_PEDIDO | DATE | Y | Data do Pedido da Solicitac?o |
| 66 | DT_EXECUCAO | DATE | Y | Data de Execuc?o do Servico |
| 67 | DT_PREVISTA_EXECUCAO | DATE | Y | Data prevista para execuc?o do Servico |
| 68 | TP_LOCAL | VARCHAR2 | Y | Tipo da localidade do Servico - (I)nterna, (E)xterna |
| 69 | CD_FORNECEDOR | NUMBER | Y | Codigo do Fornecedor no sistema MV2000 |
| 70 | CD_FORNECEDOR_INTEGRA | VARCHAR2 | Y | Codigo do Fornecedor no sistema externo |
| 71 | NM_FORNECEDOR | VARCHAR2 | Y | Nome do Fornecedor |
| 72 | SN_IMPRESSO | VARCHAR2 | Y | Indica se a OS foi impressa |
| 73 | DT_IMPRESSAO | DATE | Y | Data em que a OS foi impressa |
| 74 | TP_SITUACAO | VARCHAR2 | Y | Situac?o da OS: A-Aberto, C-Concluido, N-N?o Atendido, M-Aguardando Material, E-Conserto Externo,... |
| 75 | CD_BEM | NUMBER | Y | Codigo do Bem no sistema MV2000 |
| 76 | CD_BEM_INTEGRA | VARCHAR2 | Y | Codigo do Bem no sistema externo |
| 77 | DS_BEM | VARCHAR2 | Y | Descric?o do Bem |
| 78 | DS_PLAQUETA | VARCHAR2 | Y | Descric?o da Plaqueta do Bem |
| 79 | NM_SOLICITANTE | VARCHAR2 | Y | Nome do solicitante da OS |
| 80 | DS_OBSERVACAO | LONG | Y | Observac?es sobre a Ordem de Servico |
| 81 | CD_ITEM_SOLICITACAO | NUMBER | Y | Codigo do Servico no sistema MV2000 |
| 82 | CD_ITEM_SOLICITACAO_INTEGRA | VARCHAR2 | Y | Codigo do Servico no sistema externo |
| 83 | CD_FUNCIONARIO | NUMBER | Y | Codigo do Funcionario no MV2000 que executara o Servico |
| 84 | CD_FUNCIONARIO_INTEGRA | VARCHAR2 | Y | Codigo do Funcionario no sistema externo que executara o Servico |
| 85 | NM_FUNCIONARIO | VARCHAR2 | Y | Nome do Funcionario que executara o Servico |
| 86 | SN_CHECK_LIST | VARCHAR2 | Y | Indica se o Servico devera ser executado |
| 87 | DT_INICIAL | DATE | Y | Data inicial do Servico |
| 88 | HR_INICIAL | DATE | Y | Hora inicial do Servico |
| 89 | DT_FINAL | DATE | Y | Data final do Servico |
| 90 | HR_FINAL | DATE | Y | Hora final do Servico |
| 91 | VL_TEMPO_GASTO_HORA | NUMBER | Y | Horas utilizadas na execuc?o do Servico |
| 92 | VL_TEMPO_GASTO_MINUTO | NUMBER | Y | Minutos utilizados na execuc?o do Servico |
| 93 | VL_EXTRA_HORA | NUMBER | Y | Quantidade de Hora Extra a pagar ao Funcionario |
| 94 | VL_EXTRA_MINUTO | NUMBER | Y | Quantidade de Minuto Extra a pagar ao Funcionario |
| 95 | NR_NOTA_FISCAL | NUMBER | Y | Numero da Nota Fiscal do servico externo |
| 96 | DT_ENVIO | DATE | Y | Data de Envio da OS para o servico externo |
| 97 | HR_ENVIO | DATE | Y | Hora de Envio da OS para o servico externo |
| 98 | DT_RECEBIMENTO | DATE | Y | Data de Recebimento da Nota Fiscal |
| 99 | HR_RECEBIMENTO | DATE | Y | Hora de Recebimento da Nota Fiscal |
| 100 | DT_FIM_GARANTIA | DATE | Y | Data do fim da Garantia |
| 101 | VL_TEMPO_HORA | NUMBER | Y | Quantidade de horas do servico |
| 102 | VL_TEMPO_MIN | NUMBER | Y | Quantidade de minutos do servico |
| 103 | VL_MAO_OBRA | NUMBER | Y | Valor da M?o de Obra do servico |
| 104 | VL_HORA | NUMBER | Y | Valor da hora de trabalho do funcionario |
| 105 | VL_HORA_EXTRA | NUMBER | Y | Valor da hora extra de trabalho do funcionario |
| 106 | VL_TOTAL | NUMBER | Y | Valor total cobrado na Nota Fiscal |
| 107 | QT_ITEM | NUMBER | Y | Quantidade do Item utilizado no servico |
| 108 | DS_ITEM | VARCHAR2 | Y | Descric?o do Item utilizado no Servico |
| 109 | DS_SERVICO_REALIZADO | VARCHAR2 | Y | Descric?o do servico realizado |
| 110 | CD_USUARIO | VARCHAR2 | Y | Codigo do usuario no sistema MV2000 |

---

## MVINTEGRA.INTEGRA_SAIDA_SOLICITACAO_AGDM
> Tabela usada para integracao solicitac?es de agendamentos usadas no processo de central de regulac?o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INTEGRA_SAIDA_SOL_AGDM | NUMBER | N | Codigo sequencial dos registros da integracao |
| 2 | TP_INTEGRACAO | VARCHAR2 | N | Identifica o status da interacao |
| 3 | DS_ERRO | VARCHAR2 | Y | Descricao do erro, caso o campo TP_INTEGRACAO seja igual a E |
| 4 | DT_INTEGRACAO | DATE | N | Data em que o registro foi disponibilizado na tabela de integracao |
| 5 | DT_INTEGRACAO_MV2000 | DATE | Y | Data em que ocorreu a integracao do registro com outro sistema |
| 6 | TP_MOVIMENTO | VARCHAR2 | N | Identifica o tipo do momento: I-Inclusao, A-Alteracao e E-Excluso |
| 7 | TP_REGISTRO | VARCHAR2 | N | Tipo do registro |
| 8 | CD_FILIAL_INTEGRA | VARCHAR2 | N | Codigo da filial da empresa que esta se integrando |
| 9 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da empresa. Usado para ambinetes multi-empresa. Senao houver, preencher com 1 |
| 10 | CD_SOLICITACAO_AGENDAMENTO | NUMBER | Y | Codigo de identificac?o da solicitac?o |
| 11 | DT_SOLICITACAO_AGENDAMENTO | DATE | Y | Data da solicitac?o |
| 12 | HR_SOLICITACAO_AGENDAMENTO | DATE | Y | Hora da solicitac?o |
| 13 | TP_SOLICITACAO | VARCHAR2 | Y | Tipo de solicitacao: A - atendimento - T - Transferencia |
| 14 | TP_PRIORIDADE | VARCHAR2 | Y | Tipo de prioridade: N-normal - U-urgencia |
| 15 | SN_USA_UTI | VARCHAR2 | Y |  |
| 16 | CD_ATENDIMENTO_ORIGEM | NUMBER | Y | Codigo do atendimento que originou a solicitac?o |
| 17 | CD_PRESTADOR | NUMBER | Y | Codigo do Prestador responsavel pelo atendimento do paciente |
| 18 | CD_PRESTADOR_INTEGRA | VARCHAR2 | Y | Codigo do Prestador no Sistema Destino |
| 19 | NM_PRESTADOR | VARCHAR2 | Y | Nome do Prestador |
| 20 | NR_CPF_PRESTADOR | VARCHAR2 | Y |  |
| 21 | NR_CONSELHO_PRESTADOR | VARCHAR2 | Y |  |
| 22 | DS_CONSELHO_PRESTADOR | VARCHAR2 | Y |  |
| 23 | DS_ESTADO_CONSELHO | VARCHAR2 | Y |  |
| 24 | CD_PROC_ATENDIMENTO | VARCHAR2 | Y | Codigo do procedimento do atendimento |
| 25 | CD_PROC_ATENDIMENTO_INTEGRA | VARCHAR2 | Y | Codigo do procedimento do atendimento no outro sistema |
| 26 | CD_IT_SOLICITACAO_AGENDAMENTO | NUMBER | Y |  |
| 27 | DS_PROC_ATENDIMENTO | VARCHAR2 | Y | Descric?o do procedimento do atendimento |
| 28 | CD_CID_ATENDIMENTO | VARCHAR2 | Y | Codigo do CID no atendimento |
| 29 | CD_SETOR | NUMBER | Y | Setor  (centro de custo) |
| 30 | CD_SETOR_INTEGRA | VARCHAR2 | Y | Setor  (centro de custo) no outro sistema |
| 31 | DS_SETOR | VARCHAR2 | Y | Descric?o do setor |
| 32 | CD_ESPECIALIDADE | VARCHAR2 | Y | Codigo da Especialidade |
| 33 | CD_ESPECIALIDADE_INTEGRA | VARCHAR2 | Y | Codigo da Especialidade no outro sistema |
| 34 | DS_ESPECIALIDADE | VARCHAR2 | Y | Descric?o da especialidade |
| 35 | CD_PACIENTE | NUMBER | Y | Codigo de Identificac?o do Paciente (Prontuario) |
| 36 | CD_PACIENTE_INTEGRA | VARCHAR2 | Y | Codigo do paciente no outro sistema |
| 37 | DS_PACIENTE | VARCHAR2 | Y | Nome do paciente |
| 38 | DS_SINAIS_SINTOMAS | VARCHAR2 | Y |  |
| 39 | DS_JUSTIFICATIVA_SOLICITACAO | VARCHAR2 | Y |  |
| 40 | DS_RESULTADO_DIAGNOSTICO | VARCHAR2 | Y |  |
| 41 | CD_INTEGRA_PAI | NUMBER | Y | Codigo de controle para saber qual o registro PAI do registro atual |

---

## MVINTEGRA.INTEGRA_SAIDA_SOLICITACAO_SADT
> Tabela de integrac?od e exames de imagens e laboratoriais

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INTEGRA_SAIDA_SOLIC_SADT | NUMBER | N | Codigo sequencia da integrac?o |
| 2 | TP_INTEGRACAO | VARCHAR2 | N | Identifica o status da interacao |
| 3 | DS_ERRO | VARCHAR2 | Y | Descricao do erro, caso o campo TP_INTEGRACAO seja igual a E |
| 4 | DT_INTEGRACAO | DATE | N | Data em que o registro foi disponibilizado na tabela de integracao |
| 5 | DT_INTEGRACAO_MV2000 | DATE | Y | Data em que ocorreu a integracao do registro com outro sistema |
| 6 | TP_MOVIMENTO | VARCHAR2 | N | Identifica o tipo do momento: I-Inclusao, A-Alteracao e E-Excluso |
| 7 | TP_REGISTRO | VARCHAR2 | N | Tipo do registro |
| 8 | CD_FILIAL_INTEGRA | VARCHAR2 | N | Codigo da filial da empresa que esta se integrando |
| 9 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da empresa. Usado para ambinetes multi-empresa. Senao houver, preencher com 1 |
| 10 | CD_PEDIDO | NUMBER | Y | Codigo do pedido |
| 11 | TP_PEDIDO | VARCHAR2 | Y | Tipo do pedido |
| 12 | DT_PEDIDO | DATE | Y | Data do pedido |
| 13 | HR_PEDIDO | DATE | Y | Hora do pedido |
| 14 | TP_SOLICITACAO | VARCHAR2 | Y | Tipo da solicitac?o |
| 15 | DS_OBSERVACAO | VARCHAR2 | Y | Observac?es da solicitac?o |
| 16 | CD_PRESTADOR_SOLICITANTE | NUMBER | Y | Codigo do prestador solicitante |
| 17 | CD_PRESTADOR_SOLIC_INTEGRA | VARCHAR2 | Y | Codigo do prestador solicitante, caso o prestador seja de integrac?o |
| 18 | NM_PRESTADOR_SOLICITANTE | VARCHAR2 | Y | Nome do prestador solicitante |
| 19 | NR_CONSELHO_SOLICITANTE | VARCHAR2 | Y | Numero do conselho do prestador solicitante |
| 20 | TP_CONSELHO_SOLICITANTE | VARCHAR2 | Y | Tipo do conselho do prestador solicitante |
| 21 | CD_SETOR_SOLICITANTE | NUMBER | Y | Codigo do setor solciitante |
| 22 | CD_SETOR_SOLIC_INTEGRA | VARCHAR2 | Y | Codigo do setor solicitante, caso o setor seja de uma integrac?o |
| 23 | NM_SETOR_SOLICITANTE | VARCHAR2 | Y | Nome do setor solicitante |
| 24 | NR_CONTROLE | NUMBER | Y | Numero de controle, interno, do setor executante |
| 25 | DS_LOCAL_EXAME | VARCHAR2 | Y | Identifica onde sera realizado o exame |
| 26 | CD_CONVENIO | NUMBER | Y | Codigo do Convenio |
| 27 | CD_CONVENIO_INTEGRA | VARCHAR2 | Y | Codigo do Convenio no Sistema Destino |
| 28 | NM_CONVENIO | VARCHAR2 | Y | Nome do convenio |
| 29 | CD_PLANO | NUMBER | Y | Codigo do plano de saude |
| 30 | CD_PLANO_INTEGRA | VARCHAR2 | Y | Codigo do plano de saude no outro sistema |
| 31 | DS_PLANO | VARCHAR2 | Y | Descric?o do plano de saude |
| 32 | NR_CARTEIRA | VARCHAR2 | Y | Numero da carteira do paciente |
| 33 | DT_VALIDADE_CARTEIRA | DATE | Y | Data de validade da carteira do paciente |
| 34 | NR_GUIA | VARCHAR2 | Y | Numero da guia |
| 35 | DT_VALIDADE_GUIA | DATE | Y | Data de validade da guia de autorizac?o |
| 36 | CD_SENHA | VARCHAR2 | Y | Senha da guia |
| 37 | CD_PACIENTE | NUMBER | Y | Codigo de Identificac?o do Paciente (Prontuario) |
| 38 | CD_PACIENTE_INTEGRA | VARCHAR2 | Y | Codigo do paciente no outro sistema |
| 39 | CD_ATENDIMENTO | NUMBER | Y | Codigo do atendimento do paciente |
| 40 | NM_PACIENTE | VARCHAR2 | Y | Nome do paciente |
| 41 | DT_NASCIMENTO | DATE | Y | Data de nascimento do paciente |
| 42 | NR_PESO | NUMBER | Y | Peso do paciente |
| 43 | NR_ALTURA | NUMBER | Y | Altura do paciente |
| 44 | TP_SEXO | VARCHAR2 | Y |  |
| 45 | CD_LEITO | NUMBER | Y | Codigo do leito |
| 46 | DS_LEITO | VARCHAR2 | Y | Descric?o do leito |
| 47 | DS_LEITO_RESUMIDO | VARCHAR2 | Y | Descric?o resumida do leito |
| 48 | DS_ENFERMARIA | VARCHAR2 | Y | Descric?o da enfermaria onde se encontra o paciente |
| 49 | CD_ITEM_PEDIDO | NUMBER | Y | Codigo (UNICO) do item solicitado |
| 50 | CD_EXAME | NUMBER | Y | Codigo do exame solicitado |
| 51 | CD_EXAME_INTEGRA | VARCHAR2 | Y | Codigo do exame solicitado, caso o exame seja de uma integrac?o |
| 52 | DS_EXAME | VARCHAR2 | Y | Descric?o do exame solicitado |
| 53 | CD_EXAME_FATURAMENTO | VARCHAR2 | Y | Codigo de faturamento do exame, sera sempre referente ao convenio do atendimento |
| 54 | DS_EXAME_FATURAMENTO | VARCHAR2 | Y | Descric?o de faturamento do exame solicitado |
| 55 | DS_REGIAO | VARCHAR2 | Y | Topografia humana onde sera realizado o exame |
| 56 | DT_ENTREGA | DATE | Y | Dta de entrega do resultado do exame |
| 57 | CD_LABORATORIO | NUMBER | Y | Codigo do laboratorio que realizara o exame |
| 58 | CD_LABORATORIO_INTEGRA | VARCHAR2 | Y | Codigo do laboratorio que realizara o exame, caso o laboratorio seja proveniente de uma integrac?o |
| 59 | DS_LABORATORIO | VARCHAR2 | Y | Descric?o do laboratorio que realizara o exame |
| 60 | CD_SETOR_EXECUTANTE | NUMBER | Y | Codigo do setor (centro de custos) que realizara o exame |
| 61 | CD_SETOR_EXECUTANTE_INTEGRA | VARCHAR2 | Y | Codigo do setor (centro de custos) que realizara o exame, caso seja proveniente de uma integrac?o |
| 62 | NM_SETOR_EXECUTANTE | VARCHAR2 | Y | Nome do setor (centro de custos) que realizara o exame |
| 63 | CD_MODALIDADE_EXAME | NUMBER | Y | Codigo da modalidade do exame (padr?o DICOM) |
| 64 | DS_ESTACAO_DICOM | VARCHAR2 | Y | Maquina que realziara o exame |
| 65 | DS_SIGLA_MODALIDADE_EXAME | VARCHAR2 | Y |  |
| 66 | SN_IMAGEM_DISPONIVEL | VARCHAR2 | Y |  |
| 67 | DT_IMAGEM_DISPONIVEL | DATE | Y |  |
| 68 | CD_PRESTADOR_TECNICO | NUMBER | Y | Codigo do tecnico que realizara o exame |
| 69 | CD_PRESTADOR_TECNICO_INTEGRA | VARCHAR2 | Y | Codigo do tecnico que realizara o exame, caso seja proveniente de uma integrac?o |
| 70 | NM_PRESTADOR_TECNICO | VARCHAR2 | Y | Nome do prestador tecnico que realizara o exame |
| 71 | NR_CONSELHO_TECNICO | VARCHAR2 | Y | Numero do conselho do tecnico que realizara o exame |
| 72 | TP_CONSELHO_TECNICO | VARCHAR2 | Y | Tipo do conselho do tecnico que realizara o exame |
| 73 | CD_INTEGRA_SEQUENCE_EXTERNA | NUMBER | Y | Codigo identificador de um processo no Sistema Externo (integrac?o) que esta associado a este reg... |
| 74 | CD_USUARIO_DIGITADOR | VARCHAR2 | Y | Identifica o usuario digitador do resultado do exame |
| 75 | CD_PRESTADOR_EXEC | NUMBER | Y | Codigo do Prestador que realizou o exame |
| 76 | DT_REALIZACAO | DATE | Y | Data da realizac?o do exame |
| 77 | CD_USUARIO_PEDIDO | VARCHAR2 | Y | Codigo do usuario que digitou a solicitac?o de Pedido de Exames |
| 78 | DS_ORIENTACAO_EXAME | VARCHAR2 | Y | Orientac?o cadastrada para o exame solicitado |
| 79 | CD_LAUDO | NUMBER | Y | Codigo do laudo do exame |
| 80 | DS_LAUDO | BLOB | Y | Descricao do laudo |
| 81 | DT_AGENDAMENTO | DATE | Y | Data do agendamento do exame |
| 82 | HR_AGENDAMENTO | DATE | Y | Hora do agendamento do exames |
| 83 | DT_DURACAO | DATE | Y | Durac?o do exame |
| 84 | DS_LOCAL_REALIZACAO | VARCHAR2 | Y | Local de realizac?o do exame |
| 85 | CD_TIPO_ENTREGA | NUMBER | Y | Codigo do tipo da entrega |
| 86 | DS_TIPO_ENTREGA | VARCHAR2 | Y | Descric?o do tipo de entrega |
| 87 | SN_PENDENCIA_COLETA | VARCHAR2 | Y | Informe se existe alguma pendencia na coleta |
| 88 | CD_COLETA_MATERIAL | NUMBER | Y | Codigo da Solicitac?o de Coleta. |
| 89 | CD_AMOSTRA | NUMBER | Y | Codigo Sequencial da Amostra. |
| 90 | CD_BANCADA | NUMBER | Y | Codigo da Bancada. |
| 91 | TP_SITUACAO | VARCHAR2 | Y | Situac?o da Amostra.A = Ativa; C = Cancelada; D = Distribuida |
| 92 | SN_COLETA | VARCHAR2 | Y | Flag que identifica se o material da amostra ja foi coletada. |
| 93 | DT_COLETA | DATE | Y | Data de realizac?o da coleta. |
| 94 | NR_ORDEM_COLETA | NUMBER | Y | Numero de ordem da amostra. |
| 95 | CD_AMOSTRA_PAI | NUMBER | Y | Codigo da Amostra pai, para tubos coletivos. |
| 96 | CD_TUBO_COLETA | NUMBER | Y | Codigo do Tubo de Coleta. |
| 97 | CD_MATERIAL | NUMBER | Y | Codigo do Material colhido. |
| 98 | DT_RECOLETA | DATE | Y | Data em que foi solicitada a recoleta da amostra |
| 99 | NR_ETIQUETA_EXTERNA | VARCHAR2 | Y | Numero da Etiqueta de Coleta Externa |
| 100 | SN_COLETA_SETOR | VARCHAR2 | Y | Flag que indica se a coleta foi colhida no Setor Solicitante. |
| 101 | DT_COLETA_SETOR | DATE | Y | Data em que a amostra teve sua coleta confirmada no setor solicitante. |
| 102 | HR_COLETA_SETOR | DATE | Y | Hora em que a amostra teve sua coleta confirmada no setor solicitante. |
| 103 | DT_COLETA_PEDIDO | DATE | Y | Data da Coleta a ser realizada |
| 104 | HR_COLETA_PEDIDO | DATE | Y | Hora da Coleta a ser realizada |
| 105 | CD_ATENDIMENTO_INTEGRA | VARCHAR2 | Y | codigo do atendimento (de-para) |
| 106 | CD_PEDIDO_INTEGRA | VARCHAR2 | Y | Codigo do pedido de exame (de-para) |
| 107 | CD_ITEM_PEDIDO_INTEGRA | VARCHAR2 | Y | Codigo do item de exame (de-para) |
| 108 | SN_ESPERA_COLETA | VARCHAR2 | Y | Indicador de espera de coleta |
| 109 | DT_EXAME | DATE | Y | Data de realizac?o do exame |
| 110 | CD_POSTO_COLETA | NUMBER | Y | Codigo de identificac?o do Posto de Coleta |
| 111 | CD_POSTO_COLETA_INTEGRA | VARCHAR2 | Y | Codigo de identificac?o do Posto de Coleta (de-para) |
| 112 | DS_POSTO_COLETA_INTEGRA | VARCHAR2 | Y | Descric?o do Posto de Coleta |
| 113 | CD_LAUDO_INTEGRA | VARCHAR2 | Y | Codigo do laudo de exame (de-para) |
| 114 | VL_PESO | NUMBER | Y | Peso |
| 115 | VL_ALTURA | NUMBER | Y | Altura |
| 116 | VL_AORTA | NUMBER | Y | Aorta |
| 117 | VL_ATRIO_ESQUERDO | NUMBER | Y | Atrio_esquerdo |
| 118 | VL_VENTRICULO_DIREITO | NUMBER | Y | Ventriculo_direito |
| 119 | VL_SEPTO_INTERVENTRICULAR | NUMBER | Y | Septo_interventricular |
| 120 | VL_PAREDE_POSTERIOR | NUMBER | Y | Parede_posterior |
| 121 | VL_DIAMETRO_DIASTOLICO | NUMBER | Y | Diametro_diastolico |
| 122 | VL_DIAMETRO_SISTOLICO | NUMBER | Y | Diametro_sistolico |
| 123 | VL_ATRIO_ESQUERDO_AORTA | NUMBER | Y | Atrio_aorta |
| 124 | VL_SEPTO_PAREDE | NUMBER | Y | Septo_parede |
| 125 | VL_DELTA_FRAC_ENCURT | NUMBER | Y | Delta_frac_encurt |
| 126 | VL_FRACAO | NUMBER | Y | Fracao |
| 127 | VL_MASSA | NUMBER | Y | Massa |
| 128 | VL_IND_MASSA | NUMBER | Y | Indice de massa |
| 129 | VL_RELACAO_VM | NUMBER | Y | Relacao vm |
| 130 | VL_SUPERFICIE_CORPOREA | NUMBER | Y | Superficie corporea |
| 131 | VL_FATOR_DIASTOLICO | NUMBER | Y | Fator diastolico |
| 132 | VL_FATOR_SISTOLICO | NUMBER | Y | Fator sistolico |
| 133 | DS_LAUDO_ECO | LONG | Y | Descric?o do laudo da EcoCardiograma |
| 134 | CD_GUIA | NUMBER | Y | Codigo da guia do pedido |
| 135 | CD_INTEGRA_PAI | NUMBER | Y | Codigo de controle para saber qual o registro PAI do registro atual |
| 136 | CD_PRE_MED | VARCHAR2 | Y | Codigo da prescric?o medica do MV2000. |
| 137 | NR_CNS_PRESTADOR | VARCHAR2 | Y | Numero CNS Prestador |
| 138 | NR_CPF_PRESTADOR | VARCHAR2 | Y | Numero CPF prestador |
| 139 | CD_PED_LAB_ENDER | NUMBER | Y | Codigo do Endereco da entrega da coleta |
| 140 | TP_SERVICO | VARCHAR2 | Y | Indica se o endereco corresponde a Coleta Manual ou Entrega do Laudo |
| 141 | VL_SERVICO | NUMBER | Y | Valor do servico |
| 142 | DS_LOGRADOURO | VARCHAR2 | Y | Logradouro do Endereco |
| 143 | NR_LOGRADOURO | VARCHAR2 | Y | Numero no Logradouro |
| 144 | DS_COMPLEMENTO | VARCHAR2 | Y | Complemento do Endereco |
| 145 | NM_BAIRRO | VARCHAR2 | Y | Nome do Bairro |
| 146 | NR_CEP | VARCHAR2 | Y | Cep |
| 147 | NR_TELEFONE | VARCHAR2 | Y | Numero do telefone |
| 148 | NR_CELULAR | VARCHAR2 | Y | Numero do telefone celular |
| 149 | NR_FAX | VARCHAR2 | Y | Numero do fax |
| 150 | DS_EMAIL | VARCHAR2 | Y | Email |
| 151 | CD_CIDADE | NUMBER | Y | Codigo da cidade no mv2000 |
| 152 | SN_COBRAR_TAXA | VARCHAR2 | Y | Identifica se sera cobrada taxa de coleta de material |
| 153 | QT_COLETA | NUMBER | Y | Quantidade de materiais coletados |
| 154 | CD_AREA_COLETA | NUMBER | Y | Codigo da area de coleta no mv2000 |
| 155 | CD_LOCAL_PADRAO | NUMBER | Y | Codigo do local padr?o no mv2000 |
| 156 | CD_PED_RX | NUMBER | Y | Codigo do pedido de imagem no mv2000 |
| 157 | DS_AREA_COLETA | VARCHAR2 | Y | Descric?o da area da coleta |
| 158 | DS_LOCAL_PADRAO | VARCHAR2 | Y | Descric?o do local padr?o utilizado |
| 159 | CD_PED_RX_INTEGRA | VARCHAR2 | Y | Codigo externo do pedido de imagem |
| 160 | VL_TAXA_AREA_COLETA | NUMBER | Y | Taxa do servico na area de coleta |
| 161 | VL_TAXA_TIPO_ENTREGA | NUMBER | Y | Taxa do servico na area, para determinado tipo de entrega |
| 162 | NM_CIDADE | VARCHAR2 | Y | Nome da cidade do Endereco |
| 163 | SN_REALIZADO | VARCHAR2 | Y | EXAME REALIZADO |
| 164 | SN_EXAME_LAUDADO | VARCHAR2 | Y | Identifica a necessidade do exame ser laudado |
| 165 | NR_INCIDENCIAS | NUMBER | Y | Quantidades de incidencia cobrada |
| 166 | NR_FATURADO | NUMBER | Y | Quantidade a Faturar |
| 167 | NR_CNS | VARCHAR2 | Y | Numero da Carteira Nacional de Saude |
| 168 | DS_CAMINHO_ARQUIVO_RESULTADO | VARCHAR2 | Y | Caminho absoluto para o arquivo de resultado |
| 169 | SN_IMPORTA_REGISTRO | VARCHAR2 | N | Indica se a informac?o deve ser convertida para a base64 tanto na entrada quanto na saida |

---

## MVINTEGRA.INTEGRA_SAIDA_SOLIC_SADT_ME8

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INTEGRA_SAIDA_SOLIC_SADT | NUMBER | N |  |
| 2 | TP_INTEGRACAO | VARCHAR2 | N |  |
| 3 | DS_ERRO | VARCHAR2 | Y |  |
| 4 | DT_INTEGRACAO | DATE | N |  |
| 5 | DT_INTEGRACAO_MV2000 | DATE | Y |  |
| 6 | TP_MOVIMENTO | VARCHAR2 | N |  |
| 7 | TP_REGISTRO | VARCHAR2 | N |  |
| 8 | CD_FILIAL_INTEGRA | VARCHAR2 | N |  |
| 9 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 10 | CD_PEDIDO | NUMBER | Y |  |
| 11 | TP_PEDIDO | VARCHAR2 | Y |  |
| 12 | DT_PEDIDO | DATE | Y |  |
| 13 | HR_PEDIDO | DATE | Y |  |
| 14 | TP_SOLICITACAO | VARCHAR2 | Y |  |
| 15 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 16 | CD_PRESTADOR_SOLICITANTE | NUMBER | Y |  |
| 17 | CD_PRESTADOR_SOLIC_INTEGRA | VARCHAR2 | Y |  |
| 18 | NM_PRESTADOR_SOLICITANTE | VARCHAR2 | Y |  |
| 19 | NR_CONSELHO_SOLICITANTE | VARCHAR2 | Y |  |
| 20 | TP_CONSELHO_SOLICITANTE | VARCHAR2 | Y |  |
| 21 | CD_SETOR_SOLICITANTE | NUMBER | Y |  |
| 22 | CD_SETOR_SOLIC_INTEGRA | VARCHAR2 | Y |  |
| 23 | NM_SETOR_SOLICITANTE | VARCHAR2 | Y |  |
| 24 | NR_CONTROLE | NUMBER | Y |  |
| 25 | DS_LOCAL_EXAME | VARCHAR2 | Y |  |
| 26 | CD_CONVENIO | NUMBER | Y |  |
| 27 | CD_CONVENIO_INTEGRA | VARCHAR2 | Y |  |
| 28 | NM_CONVENIO | VARCHAR2 | Y |  |
| 29 | CD_PLANO | NUMBER | Y |  |
| 30 | CD_PLANO_INTEGRA | VARCHAR2 | Y |  |
| 31 | DS_PLANO | VARCHAR2 | Y |  |
| 32 | NR_CARTEIRA | VARCHAR2 | Y |  |
| 33 | DT_VALIDADE_CARTEIRA | DATE | Y |  |
| 34 | NR_GUIA | VARCHAR2 | Y |  |
| 35 | DT_VALIDADE_GUIA | DATE | Y |  |
| 36 | CD_SENHA | VARCHAR2 | Y |  |
| 37 | CD_PACIENTE | NUMBER | Y |  |
| 38 | CD_PACIENTE_INTEGRA | VARCHAR2 | Y |  |
| 39 | CD_ATENDIMENTO | NUMBER | Y |  |
| 40 | NM_PACIENTE | VARCHAR2 | Y |  |
| 41 | DT_NASCIMENTO | DATE | Y |  |
| 42 | NR_PESO | NUMBER | Y |  |
| 43 | NR_ALTURA | NUMBER | Y |  |
| 44 | TP_SEXO | VARCHAR2 | Y |  |
| 45 | CD_LEITO | NUMBER | Y |  |
| 46 | DS_LEITO | VARCHAR2 | Y |  |
| 47 | DS_LEITO_RESUMIDO | VARCHAR2 | Y |  |
| 48 | DS_ENFERMARIA | VARCHAR2 | Y |  |
| 49 | CD_ITEM_PEDIDO | NUMBER | Y |  |
| 50 | CD_EXAME | NUMBER | Y |  |
| 51 | CD_EXAME_INTEGRA | VARCHAR2 | Y |  |
| 52 | DS_EXAME | VARCHAR2 | Y |  |
| 53 | CD_EXAME_FATURAMENTO | VARCHAR2 | Y |  |
| 54 | DS_EXAME_FATURAMENTO | VARCHAR2 | Y |  |
| 55 | DS_REGIAO | VARCHAR2 | Y |  |
| 56 | DT_ENTREGA | DATE | Y |  |
| 57 | CD_LABORATORIO | NUMBER | Y |  |
| 58 | CD_LABORATORIO_INTEGRA | VARCHAR2 | Y |  |
| 59 | DS_LABORATORIO | VARCHAR2 | Y |  |
| 60 | CD_SETOR_EXECUTANTE | NUMBER | Y |  |
| 61 | CD_SETOR_EXECUTANTE_INTEGRA | VARCHAR2 | Y |  |
| 62 | NM_SETOR_EXECUTANTE | VARCHAR2 | Y |  |
| 63 | CD_MODALIDADE_EXAME | NUMBER | Y |  |
| 64 | DS_ESTACAO_DICOM | VARCHAR2 | Y |  |
| 65 | DS_SIGLA_MODALIDADE_EXAME | VARCHAR2 | Y |  |
| 66 | SN_IMAGEM_DISPONIVEL | VARCHAR2 | Y |  |
| 67 | DT_IMAGEM_DISPONIVEL | DATE | Y |  |
| 68 | CD_PRESTADOR_TECNICO | NUMBER | Y |  |
| 69 | CD_PRESTADOR_TECNICO_INTEGRA | VARCHAR2 | Y |  |
| 70 | NM_PRESTADOR_TECNICO | VARCHAR2 | Y |  |
| 71 | NR_CONSELHO_TECNICO | VARCHAR2 | Y |  |
| 72 | TP_CONSELHO_TECNICO | VARCHAR2 | Y |  |
| 73 | CD_INTEGRA_SEQUENCE_EXTERNA | NUMBER | Y |  |
| 74 | CD_USUARIO_DIGITADOR | VARCHAR2 | Y |  |
| 75 | CD_PRESTADOR_EXEC | NUMBER | Y |  |
| 76 | DT_REALIZACAO | DATE | Y |  |
| 77 | CD_USUARIO_PEDIDO | VARCHAR2 | Y |  |
| 78 | DS_ORIENTACAO_EXAME | VARCHAR2 | Y |  |
| 79 | CD_LAUDO | NUMBER | Y |  |
| 80 | DS_LAUDO | BLOB | Y |  |
| 81 | DT_AGENDAMENTO | DATE | Y |  |
| 82 | HR_AGENDAMENTO | DATE | Y |  |
| 83 | DT_DURACAO | DATE | Y |  |
| 84 | DS_LOCAL_REALIZACAO | VARCHAR2 | Y |  |
| 85 | CD_TIPO_ENTREGA | NUMBER | Y |  |
| 86 | DS_TIPO_ENTREGA | VARCHAR2 | Y |  |
| 87 | SN_PENDENCIA_COLETA | VARCHAR2 | Y |  |
| 88 | CD_COLETA_MATERIAL | NUMBER | Y |  |
| 89 | CD_AMOSTRA | NUMBER | Y |  |
| 90 | CD_BANCADA | NUMBER | Y |  |
| 91 | TP_SITUACAO | VARCHAR2 | Y |  |
| 92 | SN_COLETA | VARCHAR2 | Y |  |
| 93 | DT_COLETA | DATE | Y |  |
| 94 | NR_ORDEM_COLETA | NUMBER | Y |  |
| 95 | CD_AMOSTRA_PAI | NUMBER | Y |  |
| 96 | CD_TUBO_COLETA | NUMBER | Y |  |
| 97 | CD_MATERIAL | NUMBER | Y |  |
| 98 | DT_RECOLETA | DATE | Y |  |
| 99 | NR_ETIQUETA_EXTERNA | VARCHAR2 | Y |  |
| 100 | SN_COLETA_SETOR | VARCHAR2 | Y |  |
| 101 | DT_COLETA_SETOR | DATE | Y |  |
| 102 | HR_COLETA_SETOR | DATE | Y |  |
| 103 | DT_COLETA_PEDIDO | DATE | Y |  |
| 104 | HR_COLETA_PEDIDO | DATE | Y |  |
| 105 | CD_ATENDIMENTO_INTEGRA | VARCHAR2 | Y |  |
| 106 | CD_PEDIDO_INTEGRA | VARCHAR2 | Y |  |
| 107 | CD_ITEM_PEDIDO_INTEGRA | VARCHAR2 | Y |  |
| 108 | SN_ESPERA_COLETA | VARCHAR2 | Y |  |
| 109 | DT_EXAME | DATE | Y |  |
| 110 | CD_POSTO_COLETA | NUMBER | Y |  |
| 111 | CD_POSTO_COLETA_INTEGRA | VARCHAR2 | Y |  |
| 112 | DS_POSTO_COLETA_INTEGRA | VARCHAR2 | Y |  |
| 113 | CD_LAUDO_INTEGRA | VARCHAR2 | Y |  |
| 114 | VL_PESO | NUMBER | Y |  |
| 115 | VL_ALTURA | NUMBER | Y |  |
| 116 | VL_AORTA | NUMBER | Y |  |
| 117 | VL_ATRIO_ESQUERDO | NUMBER | Y |  |
| 118 | VL_VENTRICULO_DIREITO | NUMBER | Y |  |
| 119 | VL_SEPTO_INTERVENTRICULAR | NUMBER | Y |  |
| 120 | VL_PAREDE_POSTERIOR | NUMBER | Y |  |
| 121 | VL_DIAMETRO_DIASTOLICO | NUMBER | Y |  |
| 122 | VL_DIAMETRO_SISTOLICO | NUMBER | Y |  |
| 123 | VL_ATRIO_ESQUERDO_AORTA | NUMBER | Y |  |
| 124 | VL_SEPTO_PAREDE | NUMBER | Y |  |
| 125 | VL_DELTA_FRAC_ENCURT | NUMBER | Y |  |
| 126 | VL_FRACAO | NUMBER | Y |  |
| 127 | VL_MASSA | NUMBER | Y |  |
| 128 | VL_IND_MASSA | NUMBER | Y |  |
| 129 | VL_RELACAO_VM | NUMBER | Y |  |
| 130 | VL_SUPERFICIE_CORPOREA | NUMBER | Y |  |
| 131 | VL_FATOR_DIASTOLICO | NUMBER | Y |  |
| 132 | VL_FATOR_SISTOLICO | NUMBER | Y |  |
| 133 | DS_LAUDO_ECO | LONG | Y |  |
| 134 | CD_GUIA | NUMBER | Y |  |
| 135 | CD_INTEGRA_PAI | NUMBER | Y |  |
| 136 | CD_PRE_MED | VARCHAR2 | Y |  |
| 137 | NR_CNS_PRESTADOR | VARCHAR2 | Y |  |
| 138 | NR_CPF_PRESTADOR | VARCHAR2 | Y |  |
| 139 | CD_PED_LAB_ENDER | NUMBER | Y |  |
| 140 | TP_SERVICO | VARCHAR2 | Y |  |
| 141 | VL_SERVICO | NUMBER | Y |  |
| 142 | DS_LOGRADOURO | VARCHAR2 | Y |  |
| 143 | NR_LOGRADOURO | VARCHAR2 | Y |  |
| 144 | DS_COMPLEMENTO | VARCHAR2 | Y |  |
| 145 | NM_BAIRRO | VARCHAR2 | Y |  |
| 146 | NR_CEP | VARCHAR2 | Y |  |
| 147 | NR_TELEFONE | VARCHAR2 | Y |  |
| 148 | NR_CELULAR | VARCHAR2 | Y |  |
| 149 | NR_FAX | VARCHAR2 | Y |  |
| 150 | DS_EMAIL | VARCHAR2 | Y |  |
| 151 | CD_CIDADE | NUMBER | Y |  |
| 152 | SN_COBRAR_TAXA | VARCHAR2 | Y |  |
| 153 | QT_COLETA | NUMBER | Y |  |
| 154 | CD_AREA_COLETA | NUMBER | Y |  |
| 155 | CD_LOCAL_PADRAO | NUMBER | Y |  |
| 156 | CD_PED_RX | NUMBER | Y |  |
| 157 | DS_AREA_COLETA | VARCHAR2 | Y |  |
| 158 | DS_LOCAL_PADRAO | VARCHAR2 | Y |  |
| 159 | CD_PED_RX_INTEGRA | VARCHAR2 | Y |  |
| 160 | VL_TAXA_AREA_COLETA | NUMBER | Y |  |
| 161 | VL_TAXA_TIPO_ENTREGA | NUMBER | Y |  |
| 162 | NM_CIDADE | VARCHAR2 | Y |  |
| 163 | SN_REALIZADO | VARCHAR2 | Y |  |
| 164 | SN_EXAME_LAUDADO | VARCHAR2 | Y |  |
| 165 | NR_INCIDENCIAS | NUMBER | Y |  |
| 166 | NR_FATURADO | NUMBER | Y |  |
| 167 | NR_CNS | VARCHAR2 | Y |  |
| 168 | DS_CAMINHO_ARQUIVO_RESULTADO | VARCHAR2 | Y |  |
| 169 | SN_IMPORTA_REGISTRO | VARCHAR2 | N |  |

---

## MVINTEGRA.INTEGRA_SAIDA_SOLIC_SADT_STS
> Tabela usada para controlar o status da integrac?o quando houver concorreencia em registros

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INTEGRA_SAIDA_SOLIC_SADT | NUMBER | N | Codido sequencia do registro integrado |
| 2 | TP_INTEGRACAO | VARCHAR2 | N | Situac?o do registro no tabela de integrac?o |
| 3 | DS_ERRO | VARCHAR2 | Y | Descric?o do erro, quando houver |
| 4 | DT_INTEGRACAO | DATE | N | Data em que o regsitro foi colocado na tabela de integrac?o |
| 5 | DT_INTEGRACAO_MV2000 | DATE | Y | Data em que o registro foi transportado - integrac?o efetivada |
| 6 | TP_MOVIMENTO | VARCHAR2 | N | Tipo de movimento do registro |
| 7 | TP_REGISTRO | VARCHAR2 | N | Tipo de registro |
| 8 | CD_FILIAL_INTEGRA | VARCHAR2 | N | Codigo da filial ou empresa (de-para) |
| 9 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da empresa que gerou o registro |
| 10 | DS_EMPRESA_INTEGRACAO | VARCHAR2 | Y | Assinatura do empresa terceira que esta fazendo a integrac?o |
| 11 | TP_PEDIDO | VARCHAR2 | Y | Tipo do Pedido: (I)magem, (L)aboratorial |

---

## MVINTEGRA.INTEGRA_SAIDA_SOL_AGDM
> Tabela usada para integracao solicitac?es de agendamentos usadas no processo de central de regulac?o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INTEGRA_SAIDA_SOL_AGDM | NUMBER | N | Codigo sequencial dos registros da integracao |
| 2 | TP_INTEGRACAO | VARCHAR2 | N | Identifica o status da interacao |
| 3 | DS_ERRO | VARCHAR2 | Y | Descricao do erro, caso o campo TP_INTEGRACAO seja igual a E |
| 4 | DT_INTEGRACAO | DATE | N | Data em que o registro foi disponibilizado na tabela de integracao |
| 5 | DT_INTEGRACAO_MV2000 | DATE | Y | Data em que ocorreu a integracao do registro com outro sistema |
| 6 | TP_MOVIMENTO | VARCHAR2 | N | Identifica o tipo do momento: I-Inclusao, A-Alteracao e E-Excluso |
| 7 | TP_REGISTRO | VARCHAR2 | N | Tipo do registro |
| 8 | CD_FILIAL_INTEGRA | VARCHAR2 | N | Codigo da filial da empresa que esta se integrando |
| 9 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da empresa. Usado para ambinetes multi-empresa. Senao houver, preencher com 1 |
| 10 | CD_SOLICITACAO_AGENDAMENTO | NUMBER | Y | Codigo de identificac?o da solicitac?o |
| 11 | DT_SOLICITACAO_AGENDAMENTO | DATE | Y | Data da solicitac?o |
| 12 | HR_SOLICITACAO_AGENDAMENTO | DATE | Y | Hora da solicitac?o |
| 13 | TP_SOLICITACAO | VARCHAR2 | Y | Tipo de solicitacao: A - atendimento - T - Transferencia |
| 14 | TP_PRIORIDADE | VARCHAR2 | Y | Tipo de prioridade: N-normal - U-urgencia |
| 15 | SN_USA_UTI | VARCHAR2 | Y |  |
| 16 | CD_ATENDIMENTO_ORIGEM | NUMBER | Y | Codigo do atendimento que originou a solicitac?o |
| 17 | CD_PRESTADOR | NUMBER | Y | Codigo do Prestador responsavel pelo atendimento do paciente |
| 18 | CD_PRESTADOR_INTEGRA | VARCHAR2 | Y | Codigo do Prestador no Sistema Destino |
| 19 | NM_PRESTADOR | VARCHAR2 | Y | Nome do Prestador |
| 20 | NR_CPF_PRESTADOR | VARCHAR2 | Y |  |
| 21 | NR_CONSELHO_PRESTADOR | VARCHAR2 | Y |  |
| 22 | DS_CONSELHO_PRESTADOR | VARCHAR2 | Y |  |
| 23 | DS_ESTADO_CONSELHO | VARCHAR2 | Y |  |
| 24 | CD_PROC_ATENDIMENTO | VARCHAR2 | Y | Codigo do procedimento do atendimento |
| 25 | CD_PROC_ATENDIMENTO_INTEGRA | VARCHAR2 | Y | Codigo do procedimento do atendimento no outro sistema |
| 26 | CD_IT_SOLICITACAO_AGENDAMENTO | NUMBER | Y |  |
| 27 | DS_PROC_ATENDIMENTO | VARCHAR2 | Y | Descric?o do procedimento do atendimento |
| 28 | CD_CID_ATENDIMENTO | VARCHAR2 | Y | Codigo do CID no atendimento |
| 29 | CD_SETOR | NUMBER | Y | Setor  (centro de custo) |
| 30 | CD_SETOR_INTEGRA | VARCHAR2 | Y | Setor  (centro de custo) no outro sistema |
| 31 | DS_SETOR | VARCHAR2 | Y | Descric?o do setor |
| 32 | CD_ESPECIALIDADE | VARCHAR2 | Y | Codigo da Especialidade |
| 33 | CD_ESPECIALIDADE_INTEGRA | VARCHAR2 | Y | Codigo da Especialidade no outro sistema |
| 34 | DS_ESPECIALIDADE | VARCHAR2 | Y | Descric?o da especialidade |
| 35 | CD_PACIENTE | NUMBER | Y | Codigo de Identificac?o do Paciente (Prontuario) |
| 36 | CD_PACIENTE_INTEGRA | VARCHAR2 | Y | Codigo do paciente no outro sistema |
| 37 | DS_PACIENTE | VARCHAR2 | Y | Nome do paciente |
| 38 | DS_SINAIS_SINTOMAS | VARCHAR2 | Y |  |
| 39 | DS_JUSTIFICATIVA_SOLICITACAO | VARCHAR2 | Y |  |
| 40 | DS_RESULTADO_DIAGNOSTICO | VARCHAR2 | Y |  |
| 41 | CD_INTEGRA_PAI | NUMBER | Y | Codigo de controle para saber qual o registro PAI do registro atual |

---

## MVINTEGRA.INTEGRA_SAIDA_SOL_ATENDIME
> Tabela usada para integracao solicitac?es de atendimento usadas no processo de central de regulac?o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INTEGRA_SAIDA_SOL_ATENDIME | NUMBER | N | Codigo sequencial dos registros da integracao |
| 2 | TP_INTEGRACAO | VARCHAR2 | N | Identifica o status da interacao |
| 3 | DS_ERRO | VARCHAR2 | Y | Descricao do erro, caso o campo TP_INTEGRACAO seja igual a E |
| 4 | DT_INTEGRACAO | DATE | N | Data em que o registro foi disponibilizado na tabela de integracao |
| 5 | DT_INTEGRACAO_MV2000 | DATE | Y | Data em que ocorreu a integracao do registro com outro sistema |
| 6 | TP_MOVIMENTO | VARCHAR2 | N | Identifica o tipo do momento: I-Inclusao, A-Alteracao e E-Excluso |
| 7 | TP_REGISTRO | VARCHAR2 | N | Tipo do registro |
| 8 | CD_FILIAL_INTEGRA | VARCHAR2 | N | Codigo da filial da empresa que esta se integrando |
| 9 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da empresa. Usado para ambinetes multi-empresa. Senao houver, preencher com 1 |
| 10 | CD_SOLICITACAO_ATENDIMENTO | NUMBER | Y | Codigo de identificac?o da solicitac?o |
| 11 | DT_SOLICITACAO_ATENDIMENTO | DATE | Y | Data da solicitac?o |
| 12 | HR_SOLICITACAO_ATENDIMENTO | DATE | Y | Hora da solicitac?o |
| 13 | TP_SOLICITACAO | VARCHAR2 | Y | Tipo de solicitacao: A - atendimento - T - Transferencia |
| 14 | TP_PRIORIDADE | VARCHAR2 | Y | Tipo de prioridade: N-normal - U-urgencia |
| 15 | SN_USA_UTI | VARCHAR2 | Y | Sim se paciente precisar de UTI |
| 16 | CD_ATENDIMENTO_ORIGEM | NUMBER | Y | Codigo do atendimento que originou a solicitac?o |
| 17 | CD_PRESTADOR | NUMBER | Y | Codigo do Prestador responsavel pelo atendimento do paciente |
| 18 | CD_PRESTADOR_INTEGRA | VARCHAR2 | Y | Codigo do Prestador no Sistema Destino |
| 19 | NM_PRESTADOR | VARCHAR2 | Y | Nome do Prestador |
| 20 | NR_CPF_PRESTADOR | VARCHAR2 | Y |  |
| 21 | NR_CONSELHO_PRESTADOR | VARCHAR2 | Y |  |
| 22 | DS_CONSELHO_PRESTADOR | VARCHAR2 | Y |  |
| 23 | DS_ESTADO_CONSELHO | VARCHAR2 | Y |  |
| 24 | CD_PROC_ATENDIMENTO | VARCHAR2 | Y | Codigo do procedimento do atendimento |
| 25 | CD_PROC_ATENDIMENTO_INTEGRA | VARCHAR2 | Y | Codigo do procedimento do atendimento no outro sistema |
| 26 | DS_PROC_ATENDIMENTO | VARCHAR2 | Y | Descric?o do procedimento do atendimento |
| 27 | CD_CID_ATENDIMENTO | VARCHAR2 | Y | Codigo do CID no atendimento |
| 28 | CD_SETOR | NUMBER | Y | Setor  (centro de custo) |
| 29 | CD_SETOR_INTEGRA | VARCHAR2 | Y | Setor  (centro de custo) no outro sistema |
| 30 | DS_SETOR | VARCHAR2 | Y | Descric?o do setor |
| 31 | CD_LEITO | NUMBER | Y | Codigo do leito |
| 32 | CD_LEITO_INTEGRA | VARCHAR2 | Y | Codigo do leito no outro sistema |
| 33 | DS_LEITO | VARCHAR2 | Y | Descric?o do leito |
| 34 | DS_LEITO_RESUMIDO | VARCHAR2 | Y | Descric?o resumida do leito |
| 35 | DS_ENFERMAGEM | VARCHAR2 | Y | Descric?o da enfermaria |
| 36 | CD_ESPECIALIDADE | VARCHAR2 | Y | Codigo da Especialidade |
| 37 | CD_ESPECIALIDADE_INTEGRA | VARCHAR2 | Y | Codigo da Especialidade no outro sistema |
| 38 | DS_ESPECIALIDADE | VARCHAR2 | Y | Descric?o da especialidade |
| 39 | CD_PACIENTE | NUMBER | Y | Codigo de Identificac?o do Paciente (Prontuario) |
| 40 | CD_PACIENTE_INTEGRA | VARCHAR2 | Y | Codigo do paciente no outro sistema |
| 41 | DS_PACIENTE | VARCHAR2 | Y | Nome do paciente |
| 42 | NR_PESO | NUMBER | Y | Peso do paciente |
| 43 | NR_ALTURA | NUMBER | Y | Altura do paciente |
| 44 | QT_PRESSAO_SISTOLICA | NUMBER | Y | Press?o sistolica |
| 45 | QT_PRESSAO_DIASTOLICA | NUMBER | Y | Press?o diastolica |
| 46 | NR_TEMPERATURA | NUMBER | Y | Temperatura |
| 47 | TP_VIA_AEREA | VARCHAR2 | Y | Apresenta como esta as vias aereas do paciente |
| 48 | DS_VIA_AEREA | VARCHAR2 | Y | Descricc?o das vias aereas do paciente |
| 49 | TP_VENTILACAO | VARCHAR2 | Y | Tipo de ventilac?o |
| 50 | DS_VENTILACAO | VARCHAR2 | Y | Descric?o do tipo de ventilac?o |
| 51 | TP_CIRCULACAO | VARCHAR2 | Y | Forma de circulac?o |
| 52 | DS_CIRCULACAO | VARCHAR2 | Y | Descric?o da forma de circulac?o |
| 53 | TP_GRAU_CIRCULACAO | VARCHAR2 | Y | Grau da circulac?o |
| 54 | DS_GRAU_CIRCULACAO | VARCHAR2 | Y | Descric?o do grau da circulac?o |
| 55 | SN_ACESSO_VASCULAR | VARCHAR2 | Y | Identifica se o paciente esta (S) ou n?o (N) com acesso vascular |
| 56 | DS_LOCAL_ACESSO_VASCULAR | VARCHAR2 | Y | Local onde se encontra o acesso vascular |
| 57 | SN_DRENAGEM_TORAX | VARCHAR2 | Y | Identifica se o paciente esta (S) ou n?o (N) com drenagem taraxica |
| 58 | DS_LOCAL_DRENAGEM_TORAX | VARCHAR2 | Y | Local onde se encontra a drenagem toxacica |
| 59 | SN_GLASGOW | VARCHAR2 | Y | Identifica se foi feito o teste de GLASGOW |
| 60 | NR_NIVEL_GLASGOW | NUMBER | Y | Nivel do resultado do GLASGOW |
| 61 | SN_SINAL_FOCAL | VARCHAR2 | Y | Identifica se o paciente apresenta (S) ou n?o (N) algum sinal focal |
| 62 | SN_PUPILA_REAGENTE | VARCHAR2 | Y | Identifica se o paciente apresenta (S) ou n?o (N) pupilas reagentes |
| 63 | SN_MIDRIASE | VARCHAR2 | Y | Identifica se o paciente apresenta (S) ou n?o sinais de Midriase |
| 64 | TP_LOCAL_MIDRIASE | VARCHAR2 | Y | Identifica onde em qual dos olhos  o paciente apresenta a midriase. (E) Esquerdo, (D) Direito ou ... |
| 65 | DS_LOCAL_MIDRIASE | VARCHAR2 | Y | Local onde esta ocorrendo a Midriase |
| 66 | DS_SINAIS_SINTOMAS | VARCHAR2 | Y |  |
| 67 | DS_JUSTIFICATIVA_SOLICITACAO | VARCHAR2 | Y |  |
| 68 | DS_RESULTADO_DIAGNOSTICO | VARCHAR2 | Y |  |
| 69 | CD_INTEGRA_PAI | NUMBER | Y | Codigo de controle para saber qual o registro PAI do registro atual |

---

## MVINTEGRA.INTEGRA_SAI_CAD_MATERIAIS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INTEGRA_SAI_CAD_MATERIAIS | NUMBER | N | Codigo sequencial da integrac?o |
| 2 | TP_INTEGRACAO | VARCHAR2 | N | Identifica o status da integrac?o |
| 3 | DS_ERRO | VARCHAR2 | Y | Descric?o do erro, caso o campo TP_INTEGRACAO seja igual a "E" |
| 4 | DT_INTEGRACAO_MV2000I | DATE | Y | Data de Integrac?o com o MV2000i |
| 5 | DT_INTEGRACAO | DATE | N | Data de inclus?o do registro nesta tabela de integrac?o |
| 6 | TP_MOVIMENTO | VARCHAR2 | N | Identifica o tipo de movimento. I-Iclus?o, A-Alterac?o, E-Exclus?o e D-Desativado |
| 7 | TP_REGISTRO | VARCHAR2 | N | Identifica o tipo do registro |
| 8 | CD_FILIAL_INTEGRA | VARCHAR2 | N | Codigo da filial |
| 9 | CD_ESPECIE | NUMBER | Y | Codigo da especie |
| 10 | DS_ESPECIE | VARCHAR2 | Y | Descric?o da especie |
| 11 | CD_CLASSE | NUMBER | Y | Codigo da classe |
| 12 | DS_CLASSE | VARCHAR2 | Y | Descric?o da classe |
| 13 | CD_SUB_CLA | NUMBER | Y | Codigo da sub_classe |
| 14 | DS_SUB_CLA | VARCHAR2 | Y | Descric?o da sub-classe |
| 15 | CD_PRODUTO | NUMBER | Y | Codigo do produto |
| 16 | DS_PRODUTO | VARCHAR2 | Y | Descric?o do produto |
| 17 | DS_PRODUTO_RESUMIDO | VARCHAR2 | Y | Descric?o resumida do produto |
| 18 | SN_MESTRE | VARCHAR2 | Y | Identifica se o produot e ou n?o um mestre |
| 19 | CD_PRODUTO_TEM | NUMBER | Y |  |
| 20 | SN_MOVIMENTACAO | VARCHAR2 | Y | Identifica se o produto podera ser ou n?o movimentado |
| 21 | SN_CONTROLE_VALIDADE | VARCHAR2 | Y | Identifica se o produto sera ou n?o controlado pela sua data de validade |
| 22 | SN_LOTE | VARCHAR2 | Y | Identifica se o produto sera ou n?o controlado pelo lote |
| 23 | SN_MEDICAMENTO | VARCHAR2 | Y | Identifica se o produto e ou n?o um medicamento |
| 24 | SN_BLOQUEIO_COMPRA | VARCHAR2 | Y | Identifica se o produto esta bloqueado para ser comprado |
| 25 | SN_KIT | VARCHAR2 | Y | Identifica se o produto e ou n?o um Kit |
| 26 | DS_ESPECIFICACAO | VARCHAR2 | Y | Esecificac?o tecnica do produto |
| 27 | NR_ORDEM_PREFERENCIA | VARCHAR2 | Y |  |
| 28 | CD_UNI_PRO_REFE_INTEGRA | NUMBER | Y |  |
| 29 | CD_UNI_PRO_COMPRA_INTEGRA | NUMBER | Y |  |
| 30 | CD_UNI_PRO_VENDA_INTEGRA | NUMBER | Y |  |
| 31 | CD_UNI_PRO_CONSU_INTEGRA | NUMBER | Y |  |
| 32 | DT_CADASTRO | DATE | Y | Data de cadastro |
| 33 | TP_CLASSIFICACAO_XYZ | VARCHAR2 | Y | Tipo da classificac?o XYZ |
| 34 | CD_SICAN | VARCHAR2 | Y | Codigo Sican do produto |
| 35 | VL_PRECO_DE_VENDA | NUMBER | Y | Valor de venda |
| 36 | VL_CUSTO_MEDIO | NUMBER | Y | Valor do custo medio |
| 37 | QT_ESTOQUE_ATUAL | NUMBER | Y | Estoque atual do produto |
| 38 | QT_ESTOQUE_RESERVADO | NUMBER | Y | Quantida reservada do produto |
| 39 | QT_ESTOQUE_MINIMO | NUMBER | Y | Estoque minimo do produto |
| 40 | QT_ESTOQUE_MAXIMO | NUMBER | Y | Estoque maximo do produto |
| 41 | QT_PONTO_DE_PEDIDO | NUMBER | Y | Ponto de pedido do produto |
| 42 | CD_ITUNIDADE | NUMBER | Y | Codigo do Item da Unidade no MV2000 |
| 43 | CD_ITUNIDADE_INTEGRA | VARCHAR2 | Y | Codigo da Unidade no outro sistema |
| 44 | CD_UNIDADE | VARCHAR2 | Y | Codigo da Unidade do MV2000 |
| 45 | NM_ITUNIDADE | VARCHAR2 | Y | Nome do Item da Unidade no MV2000 |
| 46 | DS_ITUNIDADE | VARCHAR2 | Y | Descric?o do Item da Unidade no MV2000 |
| 47 | VL_FATOR | NUMBER | Y | Valor do fator de convers?o da Unidade no MV2000 |
| 48 | TP_UNIDADE_PRODUTO | VARCHAR2 | Y | Tipo da Unidade do Produto |
| 49 | CD_ESPECIE_INTEGRA | VARCHAR2 | Y | Codigo da especie (de-para) |
| 50 | CD_CLASSE_INTEGRA | VARCHAR2 | Y | Codigo da classe (de-para) |
| 51 | CD_SUB_CLA_INTEGRA | VARCHAR2 | Y | Codigo da sub_classe (de-para) |
| 52 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da empresa no MV2000i |
| 53 | CD_PRODUTO_INTEGRA | VARCHAR2 | Y | Codigo do produto (de-para) |
| 54 | CD_CONDICAO_PAGAMENTO | NUMBER | Y | Codigo da condic?o de pagamento |
| 55 | CD_CONDICAO_PAGAMENTO_INTEGRA | VARCHAR2 | Y | Codigo da condic?o de pagamento (de-para) |
| 56 | DS_CONDICAO_PAGAMENTO | VARCHAR2 | Y | Descric?o da condic?o de pagamento |
| 57 | TP_PRAZO_PAGAMENTO | VARCHAR2 | Y | Tipo do prazo de pagamento |
| 58 | DS_TIPO_PRAZO_PAGAMENTO | VARCHAR2 | Y | Descric?o do tipo de prazo de pagamento |
| 59 | TP_DATA_BASE_PARCELA | VARCHAR2 | Y | Tipo da data base para a gerac?o das parcelas |
| 60 | DS_TP_DATA_BASE_PARCELA | VARCHAR2 | Y | Descric?o do tipo de data base para a gerac?o das parcelas |
| 61 | NR_PARCELA | NUMBER | Y | Numero da parcela |
| 62 | QT_DIAS_INTERVALO_PARCELA | NUMBER | Y | Quantidade de dias de intervalo entgre as parcelas |
| 63 | VL_PERCENTUAL_PARCELA | NUMBER | Y | Percentual de cada parcela |
| 64 | CD_CLASSIFICACAO | NUMBER | Y | Codigo referente a classificac?o |
| 65 | DS_CLASSIFICACAO | VARCHAR2 | Y | Descric?o da classificac?o |
| 66 | CD_CLASSIFICACAO_INTEGRA | VARCHAR2 | Y | Codigo referente a classificac?o (de-para) |
| 67 | CD_SUB_CLASSIFICACAO | NUMBER | Y | Codigo referente a Sub-classificac?o |
| 68 | DS_SUB_CLASSIFICACAO | VARCHAR2 | Y | Descric?o da Sub-classificac?o |
| 69 | CD_SUB_CLASSIFICACAO_INTEGRA | VARCHAR2 | Y | Codigo referente a Sub-classificac?o (de-para) |
| 70 | CD_FORNECEDOR | NUMBER | Y | Codigo do fornecedor do item |
| 71 | NM_FORNECEDOR | VARCHAR2 | Y | Nome do fornecedor |
| 72 | CD_FORNECEDOR_INTEGRA | VARCHAR2 | Y | Codigo do fornecedor (de-para) |
| 73 | CD_LOCALIDADE | NUMBER | Y | Codigo da localizac?o do item |
| 74 | DS_LOCALIDADE | VARCHAR2 | Y | Descric?o da localizac?o do item |
| 75 | CD_LOCALIDADE_INTEGRA | VARCHAR2 | Y | Codigo da localizac?o do item (de-para) |
| 76 | CD_BAIXA | NUMBER | Y | Codigo do motivo da baixa |
| 77 | DS_BAIXA | VARCHAR2 | Y | Descric?o do motivo da baixa |
| 78 | CD_BAIXA_INTEGRA | VARCHAR2 | Y | Codigo do motivo da baixa (de-para) |
| 79 | CD_EMPRESA_ORIGEM | NUMBER | Y | Codigo da empresa em que o item esteve alocado |
| 80 | CD_EMPRESA_ORIGEM_INTEGRA | VARCHAR2 | Y | Codigo da empresa em que o item esteve alocado (de-para) |
| 81 | CD_SETOR | NUMBER | Y | Codigo do setor onde o item esta alocado |
| 82 | NM_SETOR | VARCHAR2 | Y | Nome do setor onde o item esta alocado |
| 83 | CD_SETOR_INTEGRA | VARCHAR2 | Y | Codigo do setor onde o item esta alocado (de-para) |
| 84 | CD_TIPO_AQUISICAO | NUMBER | Y | Codigo do tipo de aquisc?o |
| 85 | DS_TIPO_AQUISICAO | VARCHAR2 | Y | Descric?o do tipo de aquisc?o |
| 86 | CD_TIPO_AQUISICAO_INTEGRA | VARCHAR2 | Y | Codigo do tipo de aquisc?o (de-para) |
| 87 | DS_ESPECIFICACOES | VARCHAR2 | Y | Detalhes do item |
| 88 | DS_GARANTIA_PENHORA | VARCHAR2 | Y | Descric?o da garantia de penhora do item |
| 89 | DS_MARCA | VARCHAR2 | Y | Marca do item |
| 90 | DS_MODELO | VARCHAR2 | Y | Modelo do item |
| 91 | DS_OBSERVACAO | VARCHAR2 | Y | Observac?es para o item |
| 92 | DS_PLAQUETA | VARCHAR2 | Y | Descric?o da plaqueta do item |
| 93 | DT_BAIXA | DATE | Y | Data da baixa do item |
| 94 | HR_BAIXA | DATE | Y | Hora da baica do item |
| 95 | DT_CANCELAMENTO_BAIXA | DATE | Y | Data do cancelamento da baixa do item |
| 96 | DT_COMPRA | DATE | Y | Data de compra do item |
| 97 | DT_TOMBAMENTO | DATE | Y | Data do tombamento do item |
| 98 | DT_ULTIMA_DEPRECIACAO | DATE | Y | Data da ultima depreciac?o do item |
| 99 | DT_ULTIMA_PREVENTIVA | DATE | Y | Data da ultima manutenc?o preventiva do item |
| 100 | DT_GARANTIA | DATE | Y | Data da garantia do item |
| 101 | NR_ANOS_UTIL | NUMBER | Y | Vida util do item em anos |
| 102 | NR_DIAS_PREVENTIVA | NUMBER | Y | Periodicidade de manutenc?o preventiva em dias |
| 103 | NR_MES_DEPRECIACAO | NUMBER | Y | Mes em que o item deprecia |
| 104 | NR_NOTA_FISCAL | VARCHAR2 | Y | Numero da Nota Fiscal de compra do item |
| 105 | NR_SERIE | VARCHAR2 | Y | Numero de serie do item |
| 106 | SN_DESP_OPERACIONAL | VARCHAR2 | Y | Item deve ser contabilizado como Despesa Operacional |
| 107 | SN_GARANTIA_PENHORA | VARCHAR2 | Y | Indica se o item tem garantia/penhora |
| 108 | SN_NATUREZA_PERMANENTE | VARCHAR2 | Y | Sim - permanentes. N?o - terceiros |
| 109 | TP_DEPRECIACAO | VARCHAR2 | Y | Tipo de depreciac?o |
| 110 | NR_TAXA_DEPRECIACAO | NUMBER | Y | Taxa de depreciac?o |
| 111 | VL_COMPRA | NUMBER | Y | Valor de compra do item |
| 112 | VL_DEPRECIACAO | NUMBER | Y | Valor da depreciac?o |
| 113 | VL_HISTORICO | NUMBER | Y | Valor historico |
| 114 | VL_INDEXADO | NUMBER | Y | Valor indexado |
| 115 | VL_REFERENCIA | NUMBER | Y | Valor de referencia |
| 116 | CD_ESTOQUE | NUMBER | Y | Codigo do Estoque no MV2000 |
| 117 | DS_ESTOQUE | VARCHAR2 | Y | Descric?o do Estoque no MV2000 |
| 118 | CD_ESTOQUE_INTEGRA | VARCHAR2 | Y | Codigo do estoque no sistema externo |
| 119 | CD_INTEGRA_PAI | NUMBER | Y | Codigo de controle para saber qual o registro PAI do registro atual |

---

## MVINTEGRA.INTEGRA_XML_MATERIAIS
> Tabela base para integrac?o SCMA via XML

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ID | NUMBER | N | Codigo sequencial da tabela (PK) |
| 2 | TP_STATUS | VARCHAR2 | N | Indica o Status do registro atual: Aguardando - A, Processado - T, Erro - E |
| 3 | DS_ERRO | VARCHAR2 | Y | Coluna para guardar mensagens de erro no processamento do registro |
| 4 | CD_VERSAO | VARCHAR2 | N | Campo utilizado para determinar a vers?o do XSD |
| 5 | CD_SISTEMA | VARCHAR2 | N | Campo utilizado para descrever o sistema que enviou o XML |
| 6 | DT_CRIACAO_XML | DATE | N | Data em que o registro foi gerado |
| 7 | TP_OPERACAO | VARCHAR2 | N | Tipo de operac?o do registro. (I)nserir, (A)lterar, (E)xcluir, (M)anter |
| 8 | TP_FLUXO | VARCHAR2 | N | Fluxo do registro. (S)aida, (E)ntrada |
| 9 | CD_EMPRESA_ORIGEM | VARCHAR2 | N | Codigo da empresa que enviou o XML |
| 10 | CD_EMPRESA_DESTINO | VARCHAR2 | N | Codigo da empresa recebera o registro |
| 11 | TP_DOCUMENTO | VARCHAR2 | N | Descic?o do Schema que gerou o XML |
| 12 | NM_USUARIO | VARCHAR2 | N | Nome do usuario que gerou o XML |
| 13 | TP_COMUNICACAO | VARCHAR2 | N | Descreve a forma de comunicac?o utilizada para o consumo do arquivo XML gerado |
| 14 | DS_XML | CLOB | N | Conteudo do arquivo XML |

---

## MVINTEGRA.JOB_INTEGRACAO
> Tabela de integrac?o para controle de JOBs

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROCESSO_INTEGRACAO | VARCHAR2 | N | Identificador do processo de integrac?o |
| 2 | TP_PERIODO_EXECUCAO | VARCHAR2 | Y | Periodo de execuc?o do JOB |
| 3 | QT_MINUTOS_EXECUCAO | NUMBER | Y | Minutos de execuc?o |
| 4 | QT_HORAS_EXECUCAO | NUMBER | Y | Horas de execuc?o do JOB |
| 5 | QT_DIAS_EXECUCAO | NUMBER | Y | Dias de execuc?o do JOB |
| 6 | DS_COMANDO | VARCHAR2 | Y | Comando a ser executado |
| 7 | DS_ESQUEMA_JOB | VARCHAR2 | Y | Nome do esquema que sera utilizado pelo JOB |
| 8 | DS_TABELA_JOB | VARCHAR2 | Y | Nome da tabela que sera processada pela rotina do JOB |
| 9 | HR_EXECUCAO_DIARIA | DATE | Y | Hora que a Job ira executar, no caso de uma execuc?o diaria |

---

## MVINTEGRA.LOG_ERROS_JOBS_GSH
> Tabela de Logs de execuc?o dos Jobs da Integrac?o MV x GSH (AGHOS)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_JOB | NUMBER | N | Codigo do Job |
| 2 | DT_GRAVACAO | DATE | N | Data |
| 3 | HR_GRAVACAO | DATE | N | Data e Hora |
| 4 | DS_ERRO | VARCHAR2 | Y | Descric?o do Erro |

---

## MVINTEGRA.LOG_SOLICITACAO_MULTI_EMPRESA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | USUARIO | VARCHAR2 | Y |  |
| 2 | DATA | DATE | Y |  |
| 3 | ACAO | VARCHAR2 | Y |  |
| 4 | EMPRESA_ANTERIOR | NUMBER | Y |  |
| 5 | EMPRESA_NOVA | NUMBER | Y |  |
| 6 | CODIGO | NUMBER | Y |  |

---

## MVINTEGRA.PACIENTE_SBS
> TABELA DE INTEGRACAO DO MODULO PBSA COM O SISTEMA SBS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PACIENTE_SBS | NUMBER | N | CODIGO DA CHAVE PRIMARIA |
| 2 | CD_PACIENTE | NUMBER | N | CODIGO DO PACIENTE |
| 3 | CD_ATENDIMENTO | NUMBER | N | CODIGO DO ATENDIMENTO |
| 4 | NM_PACIENTE | VARCHAR2 | N | NOME DO PACIENTE |
| 5 | DS_ENDERECO_PAC | VARCHAR2 | Y | ENDERECO DO PACIENTE |
| 6 | NM_BAIRRO | VARCHAR2 | Y | BAIRRO DO PACIENTE |
| 7 | NR_CEP | VARCHAR2 | Y | CEP DO ENDERECO DO PACIENTE |
| 8 | NM_PAI | VARCHAR2 | Y | NOME DO PAI DO PACIENTE |
| 9 | NM_MAE | VARCHAR2 | Y | NOME DA MAE DO PACIENTE |
| 10 | DS_DOCUMENTO | VARCHAR2 | N | FIXO = "PRONTUARIO" |
| 11 | TP_SEXO | VARCHAR2 | N | SEXO DO PACIENTE |
| 12 | NM_HOSPITAL | VARCHAR2 | N | NOME DO HOSPITAL |
| 13 | DT_ATENDIMENTO | DATE | N | DATA DO ATENDIMENTO |
| 14 | CD_UNID_INT | NUMBER | Y | UNIDADE EM QUE O PACIENTE ESTA INTERNADO |
| 15 | CD_LEITO | NUMBER | Y | LEITO DO PACIENTE INTERNADO |
| 16 | DT_NASCIMENTO | DATE | Y | DATA DE NASCIMENTO DO PACIENTE |
| 17 | CD_ESPECIALID | NUMBER | Y | ESPECIALIDADE MEDICA RESPONSAVEL PELA INTERNACAO |
| 18 | NM_RESPONSAVEL | VARCHAR2 | Y | NOME DA PESSOA RESPONSAVEL PELA INTERNACAO |
| 19 | DS_ENDERECO_RES | VARCHAR2 | Y | ENDERECO DO RESPONSAVEL PELA INTERNACAO DO PACIENTE |
| 20 | NR_FONE | VARCHAR2 | Y | NUMERO DO TELEFONE DO RESPONSVEL PELA INTERNACAO DO PACIENTE |
| 21 | HR_ATENDIMENTO | DATE | N | HORARIO DO ATENDIMENTO |
| 22 | DT_ALTA | DATE | Y | DATA DA ALTA |
| 23 | DT_OBITO | DATE | Y | DATA DA ALTA DO TIPO OBITO |
| 24 | CD_SOLIC_SANGUE | NUMBER | N | CODIGO DA SOLICITACAO DE HEMODERIVADOS |
| 25 | DT_SOLIC_SANGUE | VARCHAR2 | N | DATA DA SOLICITACAO DE HEMODERIVADOS |
| 26 | CD_SANGUE_DERIVADO | NUMBER | N | CODIGO DO HEMODERIVADO |
| 27 | QT_SOLICITADA | NUMBER | Y | QUANTIDADE SOLICITADA DO HEMODERIVADO |
| 28 | DS_OBSERVACAO | VARCHAR2 | Y | OBSERVACOES COMPLEMENTARES |
| 29 | SN_TRASNF_TXT | VARCHAR2 | Y | INDICA SE A LINHA FOI EXPORTADA VIA ARQUIVO TEXTO |
| 30 | DT_TRANSF_TXT | DATE | Y | DATA EM QUE A SOLICITACAO DE SERVICO FOI EXPORTADA POR AQUIVO TEXTO |
| 31 | SN_EXCLUIDO | VARCHAR2 | Y | INDICA SE O ITEM DA SOLICITACAO FOI EXCLUIDO NO MV2000 |
| 32 | DT_EXCLUIDO | DATE | Y | CATA EM QUE O ITEM FOI EXCLUIDO DO MV2000 |
| 33 | NM_USUARIO_EXCLUSAO | VARCHAR2 | Y | NOME DO USUARIO RESPONSAVEL PELA EXCLUS?O NO MV2000 |

---

## MVINTEGRA.PROCESSO_INTEGRACAO
> Tabela responsavel em guardar os processos de integrac?es

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INTEGRACAO | VARCHAR2 | Y | Codigo de relacionamento (FK) com a tabela INTEGRACAO. |
| 2 | CD_PROCESSO_INTEGRACAO | VARCHAR2 | N | Codigo identificador (PK) do processo de integrac?o. |
| 3 | DS_PROCESSO_INTEGRACAO | VARCHAR2 | Y | Descric?o do processo de integrac?o |
| 4 | TP_FLUXO | VARCHAR2 | Y | Tipo do fluxo do processo de integrac?o. E (Entrada), o MV2000i recebe informac?es. S (Saida), o ... |
| 5 | TP_VIA | VARCHAR2 | Y | Tipo de via do processo de integrac?o. T (Trigger), a integrac?o e realizada atraves de Triggers.... |
| 6 | NR_ORDEM | NUMBER | Y | Ordem do processo de integrac?o. Essa informac?o e usada apenas para ordenar dados na tela. |
| 7 | SN_ATIVO | VARCHAR2 | Y | Identifica se o processo de integrac?o esta ativo (S) ou inativo (N). |
| 8 | DS_ESQUEMA | VARCHAR2 | Y | Nome do esquema da tabela |
| 9 | DS_MOMENTO_EXECUCAO | VARCHAR2 | Y | Momento em que a trigger sera executada |
| 10 | SN_INSERT | VARCHAR2 | Y | Executar a trigger no momento do Insert |
| 11 | SN_UPDATE | VARCHAR2 | Y | Executar a trigger no momento do Update |
| 12 | SN_DELETE | VARCHAR2 | Y | Executar a trigger no momento do Delete |
| 13 | DS_ROTINA | VARCHAR2 | Y | Nome da rotina que sera executada pela trigger |
| 14 | DS_CHAMADA_MANUAL | VARCHAR2 | Y | Configurac?o manual da chamada da rotina |
| 15 | DS_TABELA | VARCHAR2 | Y | Nome da tabela |
| 16 | DS_ESQUEMA_INTEGRACAO | VARCHAR2 | Y | Nome do esquema da tabela de integrac?o |
| 17 | DS_TABELA_INTEGRACAO | VARCHAR2 | Y | Nome da tabela de integrac?o |
| 18 | CD_MULTI_EMPRESA | NUMBER | N | Empresa do processo de integrac?o |
| 19 | SN_TRAVA_REGISTRO_INTEGRADO | VARCHAR2 | Y | Identifica se os registros integrados poder?o ser alterados |
| 20 | SN_GERA_ARQUIVO | VARCHAR2 | Y | Determina se a rotina de integrac?o gera ou n?o arquivos |
| 21 | DS_ROTINA_SERVICO | VARCHAR2 | Y | Nome da rotina a ser executada pelo servico. |
| 22 | QT_TEMPO_EXECUCAO_SERVICO | NUMBER | Y | Tempo de execuc?o da rotina de servico |
| 23 | DS_ESQUEMA_SERVICO | VARCHAR2 | Y | Esquema da Tabela de origem das informac?es para uso do servico. |
| 24 | DS_TABELA_SERVICO | VARCHAR2 | Y | Tabela de origem das informac?es para uso do servico. |

---

## MVINTEGRA.SISTEMA_PROCESSO
> Relaciona um processo de integrac?o com um ou varios sistemas terceiros

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SISTEMA_PROCESSO | NUMBER | N | Primary key da tabela |
| 2 | DS_SISTEMA_TERCEIRO | VARCHAR2 | N | O codigo do sistema terceiro (fk) |
| 3 | CD_PROCESSO_INTEGRACAO | VARCHAR2 | N | O codigo do processo de integrac?o (fk) |

---

## MVINTEGRA.SISTEMA_TERCEIRO
> Tabela com os sistemas terceiros

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DS_SISTEMA_TERCEIRO | VARCHAR2 | N | Nome do Sistema |
| 2 | DS_PLATAFORMA | VARCHAR2 | Y | Plataforma do Sistema |
| 3 | DS_EMPRESA_RESPONSAVEL | VARCHAR2 | Y | Nome da Empresa responsavel pelo sistema |
| 4 | DS_NOME_CONTATO | VARCHAR2 | Y | Nome do contato |

---

## MVINTEGRA.USER_TOMCAT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NM_MACHINE | VARCHAR2 | Y |  |
| 2 | PROGRAMA | VARCHAR2 | Y |  |
| 3 | DT_INTEGRACAO | DATE | Y |  |
| 4 | NM_USUARIO | VARCHAR2 | Y |  |

---

## MVINTEGRA.VDIC_ETIQUETA_PRESCRICAO1

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ATENDIMENTO | NUMBER | N |  |
| 2 | CD_PRE_MED | NUMBER | N |  |
| 3 | CD_ITPRE_MED | NUMBER | N |  |
| 4 | NM_PACIENTE | VARCHAR2 | N |  |
| 5 | NM_MAE | VARCHAR2 | Y |  |
| 6 | DT_NASCIMENTO | DATE | Y |  |
| 7 | UNID_INT | VARCHAR2 | N |  |
| 8 | LEITO | VARCHAR2 | N |  |
| 9 | ITEM | VARCHAR2 | Y |  |
| 10 | VIA | VARCHAR2 | Y |  |
| 11 | QTDE | NUMBER | Y |  |
| 12 | UNIDADE | VARCHAR2 | Y |  |
| 13 | DOSAGEM | VARCHAR2 | Y |  |
| 14 | HORARIO | VARCHAR2 | Y |  |
| 15 | ANTIMICROBIANO | CHAR | Y |  |

---

## MVINTEGRA.VDIC_IMV_FINANCEIRO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REGISTRO_PRINCIPAL | UNDEFINED | Y |  |
| 2 | CD_MULTI_EMPRESA | UNDEFINED | Y |  |
| 3 | NR_DOCUMENTO | UNDEFINED | Y |  |
| 4 | VL_DESCONTO | UNDEFINED | Y |  |
| 5 | VL_ACRESCIMO | UNDEFINED | Y |  |
| 6 | VL_TITULO | UNDEFINED | Y |  |
| 7 | CD_RECCON_REC | UNDEFINED | Y |  |
| 8 | DT_RECEBIMENTO | UNDEFINED | Y |  |
| 9 | VL_DUPLICATA | UNDEFINED | Y |  |
| 10 | CD_CLIENTE_FORNECEDOR | UNDEFINED | Y |  |
| 11 | VL_TRIBUTO | UNDEFINED | Y |  |
| 12 | TP_STATUS | UNDEFINED | Y |  |
| 13 | CD_CON_REC | UNDEFINED | Y |  |
| 14 | CD_RECCON_REC_INTEGRA | UNDEFINED | Y |  |
| 15 | NR_PARCELA | UNDEFINED | Y |  |
| 16 | CD_CONTA | UNDEFINED | Y |  |
| 17 | TP_RECEBIMENTO | UNDEFINED | Y |  |
| 18 | CD_MOEDA | UNDEFINED | Y |  |
| 19 | CD_BANCO | UNDEFINED | Y |  |
| 20 | DS_RECCON_REC | UNDEFINED | Y |  |
| 21 | CD_ITCON_REC | UNDEFINED | Y |  |
| 22 | VL_MOEDA | UNDEFINED | Y |  |
| 23 | CD_DETALHAMENTO | UNDEFINED | Y |  |
| 24 | CD_IMV_FINANCEIRO | UNDEFINED | Y |  |
| 25 | CD_DOCUMENTO_INTEGRA | UNDEFINED | Y |  |
| 26 | CD_SISTEMA_ORIGEM | UNDEFINED | Y |  |
| 27 | CD_TITULO | UNDEFINED | Y |  |
| 28 | CD_CONTA_INTEGRA | UNDEFINED | Y |  |
| 29 | TP_FLUXO | UNDEFINED | Y |  |
| 30 | TP_REGISTRO | UNDEFINED | Y |  |

---

## MVINTEGRA.VDIC_RECEPCAO_AGENDA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AGENDA_CENTRAL | NUMBER | N |  |
| 2 | TP_AGENDA | VARCHAR2 | N |  |
| 3 | CD_UNIDADE_ATENDIMENTO | NUMBER | Y |  |
| 4 | CD_RECURSO_CENTRAL | NUMBER | Y |  |
| 5 | CD_PRESTADOR | NUMBER | Y |  |
| 6 | CD_SETOR | NUMBER | N |  |
| 7 | DT_AGENDA | DATE | N |  |
| 8 | HR_INICIO | DATE | N |  |
| 9 | HR_FIM | DATE | N |  |
| 10 | SN_SIA | VARCHAR2 | N |  |
| 11 | QT_ATENDIMENTO | NUMBER | Y |  |
| 12 | QT_ENCAIXES | NUMBER | Y |  |
| 13 | QT_MARCADOS | NUMBER | Y |  |
| 14 | QT_ENCAIXES_MARCADOS | NUMBER | Y |  |
| 15 | QT_TEMPO_MEDIO | NUMBER | N |  |
| 16 | TP_PRODUCAO | VARCHAR2 | Y |  |
| 17 | DS_CONSULTORIO | VARCHAR2 | Y |  |
| 18 | DT_LIBERACAO | DATE | N |  |
| 19 | SN_ATIVO | VARCHAR2 | N |  |
| 20 | SN_FALTA | VARCHAR2 | Y |  |
| 21 | SN_SERVICO_LIVRE | VARCHAR2 | Y |  |
| 22 | SN_TIPO_LIVRE | VARCHAR2 | Y |  |
| 23 | SN_PUBLICO_AC | VARCHAR2 | Y |  |
| 24 | SN_AGENDA_DINAMICA | VARCHAR2 | N |  |
| 25 | CD_MULTI_EMPRESA | VARCHAR2 | N |  |
| 26 | CD_USUARIO_AC | VARCHAR2 | N |  |
| 27 | CD_AGENDA_CENTRAL_IT | NUMBER | N |  |
| 28 | HR_AGENDA | DATE | N |  |
| 29 | CD_PACIENTE | NUMBER | Y |  |
| 30 | NM_PACIENTE | VARCHAR2 | Y |  |
| 31 | VL_ALTURA | NUMBER | Y |  |
| 32 | QT_PESO | NUMBER | Y |  |
| 33 | DT_NASCIMENTO | DATE | Y |  |
| 34 | SN_ATENDIDO | VARCHAR2 | Y |  |
| 35 | SN_ENCAIXE | VARCHAR2 | Y |  |
| 36 | CD_GRUPO_AGENDA | NUMBER | Y |  |
| 37 | CD_ATENDIMENTO | NUMBER | Y |  |
| 38 | CD_ATENDIMENTO_PAI | NUMBER | Y |  |
| 39 | CD_GRU_ATE | NUMBER | Y |  |
| 40 | CD_ITEM_AGENDAMENTO | NUMBER | Y |  |
| 41 | CD_USUARIO | VARCHAR2 | Y |  |
| 42 | CD_CONVENIO | NUMBER | Y |  |
| 43 | CD_CON_PLA | NUMBER | Y |  |
| 44 | CD_SUB_PLANO | VARCHAR2 | Y |  |
| 45 | CD_SER_DIS | NUMBER | Y |  |
| 46 | CD_TIP_MAR | NUMBER | Y |  |
| 47 | TP_SITUACAO | VARCHAR2 | Y |  |
| 48 | VL_PERC_DESCONTO | NUMBER | Y |  |
| 49 | VL_NEGOCIADO | NUMBER | Y |  |
| 50 | SN_ANESTESISTA | VARCHAR2 | Y |  |
| 51 | SN_PUBLICO_IAC | VARCHAR2 | Y |  |
| 52 | SN_BLOQUEADO | VARCHAR2 | Y |  |
| 53 | NR_FONE | VARCHAR2 | Y |  |
| 54 | CD_IT_AGENDA_CENTRAL | NUMBER | N |  |
| 55 | CD_IT_AGENDA_PAI | NUMBER | Y |  |
| 56 | TP_SEXO | VARCHAR2 | Y |  |
| 57 | CD_ANESTESISTA | NUMBER | Y |  |
| 58 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 59 | CD_SOLIC_AGENDAMENTO | NUMBER | Y |  |
| 60 | DS_SENHA_PAINEL | VARCHAR2 | Y |  |
| 61 | SN_DISPENSA_EQUIPAMENTOS | VARCHAR2 | Y |  |
| 62 | SN_SESSAO | VARCHAR2 | N |  |
| 63 | DS_OBSERVACAO_GERAL | VARCHAR2 | Y |  |
| 64 | CD_TIPO_BLOQUEIO | NUMBER | Y |  |
| 65 | NR_DDD_FONE | NUMBER | Y |  |
| 66 | NR_DDD_CELULAR | NUMBER | Y |  |
| 67 | NR_CELULAR | VARCHAR2 | Y |  |
| 68 | DT_GRAVACAO | DATE | Y |  |

---

## MVINTEGRA.VERIFICACAO_ERRO
> Esta tabela armazena o resultado das verificac?es de erros de integrac?o. O MV Connect possui a funcionalidade de alertas de erros de integrac?o enviados por e-mail. O usuario pode configurar o sistema paraque a cada X minutos verifique se ha erros de integrac?o e caso haja, envie um e-mail e registra os erros encontrados nesta tabela e na MEINTEGRA.ERRO_PROCESSO. Dependendo da quantidade de pontos de integrac?o, a verificac?o pode ser demorada, os campos dh_inicio e dh_fim servem para sabermos o tempo que a verificac?o levou. Nota: Mesmo as verificac?es onde n?o foram encontrados erros s?o registradas nesta tabela, nestes casos o campo ds_destinatarios sera nulo.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_VERIFICACAO_ERRO | NUMBER | N | Primary key da tabela |
| 2 | DH_INICIO_VERIFICACAO | DATE | N | A hora em que a verificac?o foi iniciada |
| 3 | DH_FIM_VERIFICACAO | DATE | Y | A hora em que a verificac?o foi finalizada |
| 4 | DS_DESTINATARIOS | VARCHAR2 | Y | Os emails para os quais o alerta de erro foi enviado, separados por ponto-e-virgula. Note que est... |

---

## MVINTEGRA.V_CONSOLIDA_EST_REDE_DOR
> Vis?o responsavel em fornecer a consolidac?o do estoque

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IDENTIFICADOR | NUMBER | N | Codigo identificador do registro |
| 2 | CD_EMPRESA | NUMBER | N | Codigo da empresa |
| 3 | CD_FILIAL | VARCHAR2 | N | Codigo da filial da empresa |
| 4 | DT_COMPETENCIA | DATE | Y | Competencia da consolidac?o |
| 5 | SN_REABERTURA | VARCHAR2 | Y | S - Reabertura, N - Fechamento |
| 6 | DT_REALIZACAO | DATE | Y | Data da realizac?o da consolidac?o |
| 7 | TP_CONTA | VARCHAR2 | Y | D - para conta Debito, C - para conta credito |
| 8 | CD_ESPECIE | NUMBER | Y | Tipo (especie) do produto |
| 9 | VL_CONTABIL | NUMBER | Y | Valor contabil por tipo (especie) do produto |

---

## MVINTEGRA.V_IMV_CONSULTA_SOL_COM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INTEGRACAO | NUMBER | Y |  |
| 2 | CD_SOLICITACAO | NUMBER | Y |  |
| 3 | CD_ORDEM_COMPRA_INTEGRA | VARCHAR2 | Y |  |
| 4 | CD_PRODUTO_INTEGRA | VARCHAR2 | Y |  |
| 5 | QT_PRODUTO | NUMBER | Y |  |
| 6 | DT_GERADO | DATE | Y |  |
| 7 | TP_FLUXO | VARCHAR2 | Y |  |
| 8 | TP_ACAO | VARCHAR2 | Y |  |
| 9 | DS_ORIGEM | VARCHAR2 | Y |  |
| 10 | DS_DESTINO | VARCHAR2 | Y |  |
| 11 | DT_PROCESSAMENTO | DATE | Y |  |
| 12 | DS_PROCESSO | VARCHAR2 | Y |  |
| 13 | DS_STATUS | VARCHAR2 | Y |  |
| 14 | DS_ERRO | VARCHAR2 | Y |  |

---

## MVINTEGRA.V_IMV_PSSD_DASA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ATENDIMENTO | NUMBER | N |  |
| 2 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 3 | CD_PACIENTE | NUMBER | N |  |
| 4 | TP_ATENDIMENTO | VARCHAR2 | N |  |
| 5 | NR_TAG_ATENDIMENTO | VARCHAR2 | Y |  |
| 6 | CD_PED_LAB | NUMBER | N |  |
| 7 | CD_LOCAL_COLETA | NUMBER | Y |  |
| 8 | DS_LOCAL_COLETA | VARCHAR2 | Y |  |
| 9 | DS_CODIGO_CONSELHO | VARCHAR2 | Y |  |
| 10 | DS_CONSELHO | VARCHAR2 | N |  |
| 11 | NM_UF | VARCHAR2 | N |  |

---

## MVINTEGRA.V_NOTA_EST_REDE_DOR
> Vis?o responsavel em fornecer as notas fiscais de entrada de produtos no estoque

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IDENTIFICADOR | NUMBER | N | Codigo identificador do registro |
| 2 | CD_EMPRESA | NUMBER | N | Codigo da empresa |
| 3 | CD_FILIAL | VARCHAR2 | N | Codigo da filial da empresa |
| 4 | NR_DOCUMENTO | VARCHAR2 | Y | Numero do documento |
| 5 | NR_CGC_CPF | NUMBER | Y | CPF/CNPJ do fornecedor |
| 6 | DT_EMISSAO | DATE | Y | Data emiss?o da nota fiscal do estoque |
| 7 | NR_PARCELA | NUMBER | Y | Numero da parcela |
| 8 | VL_PARCELA | NUMBER | Y | Valor da parcela |
| 9 | DT_VENCIMENTO | DATE | Y | Data de vencimento da parcela |
| 10 | CD_IDENTIFICADOR_PAI | NUMBER | Y | Codigo identificador do registro pai |

---

## REMWEB.ANALYZED_QUERY
> Tabela de armazenamento de querys que fazem table scan no banco de dados

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Código da Análise |
| 2 | USERNAME | VARCHAR2 | N | Usuário responsável pela query |
| 3 | QUERY | CLOB | N | Query analisada |
| 4 | REPORT_ID | NUMBER | N | Id do relatório onde a query foi salva |
| 5 | DH_QUERY | DATE | Y | Data-Hora em que a query foi salva |

---

## REMWEB.ERROR
> Tabela de log erros gerados no executor

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Código do erro |
| 2 | TRACE_ID | NUMBER | N | Código do trace |
| 3 | DH_ERROR | DATE | N | Data-hora do erro |
| 4 | DS_ERROR | VARCHAR2 | Y | Descrição do erro |

---

## REMWEB.FOLDER
> Tabela de pastas do Report Manager

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | FOLDER_ID | NUMBER | N | Nome da Pasta |
| 2 | FOLDER_NAME | VARCHAR2 | N |  |
| 3 | IS_PUBLIC | NUMBER | Y | Indica se a pasta e publica |

---

## REMWEB.MEMBERSHIP
> Tabela de relacionamento de usuarios e grupos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | USERNAME | VARCHAR2 | N | Nome do usuario |
| 2 | GROUPNAME | VARCHAR2 | N | Nome do grupo |

---

## REMWEB.PERMISSION
> Tabela de permissoes de pastas e relatorios

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Codigo da permissao |
| 2 | ACTION | VARCHAR2 | N | Acao permitida |
| 3 | FOLDER_ID | NUMBER | Y | Codigo da pasta |
| 4 | REPORT_ID | NUMBER | Y | Codigo do relatorio |
| 5 | GROUPNAME | VARCHAR2 | Y | Nome do grupo |
| 6 | USERNAME | VARCHAR2 | Y | Nome do usuario |

---

## REMWEB.REPORT
> Tabela de relatórios do Report Manager

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | REPORT_ID | NUMBER | N | Código do relatório |
| 2 | REPORT_NAME | VARCHAR2 | N | Nome do Relatório |
| 3 | FOLDER_ID | NUMBER | N | Código da pasta |
| 4 | DT_LAST_MODIFIED | DATE | Y |  |
| 5 | MODULE_ID | VARCHAR2 | Y |  |
| 6 | PRINT_MODE | VARCHAR2 | N | Mode de impressão - D(ireta) ou T(ela) |
| 7 | CONTENT | CLOB | Y | Conteúdo do relatório |
| 8 | REPORT_HASH | VARCHAR2 | Y |  |
| 9 | REQUIRES_AUTHENTICATION | NUMBER | Y | INDICA SE O RELATÃ¿RIO NECESSITA DE AUTENTICAÃ¿Ã¿O |
| 10 | SN_ASYNC_EXECUTION | NUMBER | N | Indica se o relatorio sera executado no modo assincrono |

---

## REMWEB.REPORT_AUTHENTICATION
> TABELA DE AUTENTICAÃ¿Ã¿O DOS RELATÃ¿RIOS, ARMAZENA O USUÃRIO E O RELATÃ¿RIO QUE O MESMO PODE ACESSAR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | REPORT_AUTHENTICATION_ID | NUMBER | N | SEQUENCE |
| 2 | USER_ID | VARCHAR2 | N | CÃ¿DIGO DO USUÃRIO ATRELADO AO RELATÃ¿RIO |
| 3 | REPORT_ID | NUMBER | N | CÃ¿DIGO DO RELATÃ¿RIO ATRELADO AO USUÃRIO |

---

## REMWEB.REPORT_BKP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | REPORT_ID | NUMBER | N |  |
| 2 | REPORT_NAME | VARCHAR2 | N |  |
| 3 | FOLDER_ID | NUMBER | N |  |
| 4 | DT_LAST_MODIFIED | DATE | Y |  |
| 5 | MODULE_ID | VARCHAR2 | Y |  |
| 6 | PRINT_MODE | VARCHAR2 | N |  |
| 7 | CONTENT | CLOB | Y |  |
| 8 | REPORT_HASH | VARCHAR2 | Y |  |
| 9 | REQUIRES_AUTHENTICATION | NUMBER | Y |  |
| 10 | SN_ASYNC_EXECUTION | NUMBER | N |  |

---

## REMWEB.TRACE
> Tabela de trace das reuqisições do executor de relatórios

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Código do trace |
| 2 | REQUEST_ID | VARCHAR2 | Y | Código único da requisição do relatório |
| 3 | REQUEST_URL | VARCHAR2 | Y | URL da requsição |
| 4 | REMOTE_ADDRESS | VARCHAR2 | Y | IP do requisitante |
| 5 | DESTINATION_ADDRESS | VARCHAR2 | Y | IP do serviço sendo requisitado |
| 6 | DESTINATION_PORT | VARCHAR2 | Y | Porta do serviço sendo requisitado |
| 7 | DH_START | DATE | Y | Ínicio do Processamento |
| 8 | DH_END | DATE | Y | Fim do Processamento |
| 9 | STATUS | VARCHAR2 | Y | Status da Requisição |

---

## REMWEB.USERNAME
> Tabela de usuarios

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | USERNAME | VARCHAR2 | N | Nome do usuario |

---

## REMWEB.USER_GROUP
> Tabela de grupos de usuarios do Report Manager

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NAME | VARCHAR2 | N | Nome do grupo |
