# 12 - Faturamento e Contas Medicas

> Contas, procedimentos, valores, glosas

## Resumo

- **Tabelas**: 216
- **Owners**: DBAMV

---

## DBAMV.AGIR_CONTA_PROD_PREST

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRESTADOR | NUMBER | N |  |
| 2 | PRESTADOR | VARCHAR2 | N |  |
| 3 | MES_FF | VARCHAR2 | Y |  |
| 4 | ANO | VARCHAR2 | Y |  |
| 5 | CD_ESPECIALIDADE | NUMBER | N |  |
| 6 | ESPECIALIDADE | VARCHAR2 | N |  |
| 7 | DS_CODIGO_CONSELHO | VARCHAR2 | Y |  |
| 8 | SN_ATUANTE | VARCHAR2 | Y |  |
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

## DBAMV.ASSOCIACAO_PROCEDIMENTO
> Tabela de Regra da Associac?o de Procedimentos.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REGRA_ASS | NUMBER | N | Codigo sequencial identificador da regra |
| 2 | DS_REGRA_CMP | VARCHAR2 | N | Descricao compactada da regra |
| 3 | DS_REGRA_DET | VARCHAR2 | N | Descricao detalhada da regra |
| 4 | DT_VIGENCIA | DATE | N | Data de inicio da vigencia da regra |
| 5 | SN_INF_FCH_FFIS | VARCHAR2 | N | Parametro que ativa a regra no fechamento da AIH no FFIS |
| 6 | SN_INTEGRA_FFAS | VARCHAR2 | N | Parametro que ativa a Informacao ou Aplicac?o Automatica da regra na integrao FFAS |
| 7 | SN_FECHA_RMS_FFAS | VARCHAR2 | N | Parametro que ativa a Informacao ou Aplicac?o Automatica da regra no Fechamento da Remessa FFAS |
| 8 | SN_PORTARIA | VARCHAR2 | N | Parametro que identifica a regra oriunda de Portarias DATASUS |
| 9 | SN_ATIVO | VARCHAR2 | N | Parametro que ativac?o geral da regra |

---

## DBAMV.CAD_EXCECOES_FAT_SIASUS
> Tabela onde ser?o cadastrados os procedimentos que n?o s?o lancados automaticamente com a informac?o do Decendio no BPA e os que precisam de autorizac?o para serem faturados.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROCEDIMENTO | VARCHAR2 | N | Codigo do Procedimento |
| 2 | SN_NAO_LANCA_DECENDIO | VARCHAR2 | N | Informa se o procedimento entrara na Excess?o de n?o ser importado com a informac?o do Decendio a... |
| 3 | SN_OBRIGA_AUTORIZACAO | VARCHAR2 | N | Informa se o procedimento necessita de Autorizac?o para ser faturado no Ambulatorio SUS. |
| 4 | SN_ATIVO | VARCHAR2 | N | Informa se a excess?o esta ativa ou n?o. |

---

## DBAMV.CID_SUS
> Tabela auxiliar de configurac?o de CID para o faturamento SUS.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CID | VARCHAR2 | N | Codigo do CID |
| 2 | SN_SUBCAT | VARCHAR2 | N | Indicador de CID de subcategoria |
| 3 | TP_SEXO | VARCHAR2 | N | Indicador do Tipo do Sexo (A-Amos, F-Feminino e M-Masculino) |
| 4 | NR_CAMPOS_RADIADOS | VARCHAR2 | N | Quantidade de campos radiados |
| 5 | SN_REPETE_RADIADOS | VARCHAR2 | N | Indicador de repetic?o do campos radiados na APAC |
| 6 | SN_ESTADIO | VARCHAR2 | N | Indicador de CID estadiado |
| 7 | DT_VALIDADE_INICIAL | DATE | N | Data inicial da validade |
| 8 | DT_VALIDADE_FINAL | DATE | Y | Data final da validade |

---

## DBAMV.COBRANCA_PARECER
> Tabela que o relacionamento entre o prestador, sua especialidade e o procedimento o qual sera cobrado ao realizar um parecer medico

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_COBRANCA_PARECER | NUMBER | N | Codigo da cobranca do parecer medico, vinculado ao prestador, especialidade e procedimento |
| 2 | CD_ESPECIALID | NUMBER | Y | Codigo da especialidade medica |
| 3 | CD_CBO | VARCHAR2 | Y | Codigo do cadastro brasileiro de ocupac?o |
| 4 | CD_PRESTADOR | NUMBER | N | Codigo do prestador |
| 5 | CD_PRO_FAT | VARCHAR2 | Y | Codigo do porcedimento de faturamento que sera associado ao prestador e sua especialidade |
| 6 | CD_PROCEDIMENTO_SUS | VARCHAR2 | Y | Codigo do porcedimento de faturamento Sus que sera associado ao prestador e sua especialidade |

---

## DBAMV.COD_PRO_CPT
> TABELA PARA RELACIONAMENTO DOS CÓDIGOS DE PROCEDIMENTO COM A CODIFICAÇÃO CPT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_COD_PRO | NUMBER | N | CÓDIGO DO PROCEDIMENTO CPT |
| 2 | DT_VIGENCIA | DATE | N | DATA DE VIGÊNCIA INICIAL |
| 3 | CD_PRO_FAT | VARCHAR2 | N | CÓDIGO DO PROCEDIMENTO |
| 4 | CD_CONVENIO | NUMBER | N | CÓDIGO DO CONVÊNIO |
| 5 | DS_CODIGO_COBRANCA | VARCHAR2 | N | CÓDIGO DO PROCEDIMENTO NO CONVÊNIO |
| 6 | DS_NOME_COBRANCA | VARCHAR2 | Y | DESCRIÇÃO DO PROCEDIMENTO NO CONVÊNIO |
| 7 | DS_UNIDADE_COBRANCA | VARCHAR2 | Y | UNIDADE DO PROCEDIMENTO NO CONVÊNIO |
| 8 | TP_ATENDIMENTO | VARCHAR2 | Y | TIPO DE ATENDIMENTO |
| 9 | CD_MULTI_EMPRESA | NUMBER | Y | CÓDIGO DA EMPRESA |

---

## DBAMV.COMPLEXIDADE
> Definicao de complexidade de procedimentos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_COMPLEXIDADE | NUMBER | N | Codigo sequencial para complexidade |
| 2 | DS_COMPLEXIDADE | VARCHAR2 | N | Descric?o da complexidad do procedimento |

---

## DBAMV.COMPLEXIDADE_PROCEDIMENTO
> Cadastro de complexidades de procedimentos SUS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | TP_COMPLEXIDADE_PROCEDIMENTO | VARCHAR2 | N | Tipo da complexidade do procedimento |
| 2 | DS_COMPLEXIDADE_PROCEDIMENTO | VARCHAR2 | N | Descricao da complexidade do procedimento |

---

## DBAMV.CONF_EMPRESA_CONVENIO_TAXA_OP
> Tabela responsável pelas taxas por grupos de procedimentos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONF_EMP_CONV_TAXA_OP | NUMBER | N | Código da configuração da taxa gerado por sequence |
| 2 | CD_MULTI_EMPRESA | NUMBER | N | Código de empresas ativas |
| 3 | CD_CONVENIO | NUMBER | N | Código dos convênios ativos |
| 4 | CD_CON_PLA | NUMBER | Y | Código dos planos que estão parametrizados para o convênio e empresa selecionados |
| 5 | DT_VIG_INICIAL | DATE | N | Data de vigência inicial da taxa |
| 6 | DT_VIG_FINAL | DATE | Y | Data de vigência final da taxa |
| 7 | CD_TAXA | VARCHAR2 | N | Código da taxa vinculado ao convenio selecionado |
| 8 | NR_PORCENTAGEM | NUMBER | Y | Percentual a ser cobrado |
| 9 | VL_COBRADO | NUMBER | Y | Valor a ser cobrado |
| 10 | SN_TAXA_SETOR | VARCHAR2 | Y | Taxa por setor |
| 11 | DT_INCLUSAO | DATE | Y | Data da inclusão do registro de fechamento de conta |
| 12 | DT_ALTERACAO | DATE | Y | Data da alteração do registro de fechamento de conta |
| 13 | NM_USUARIO_ALTERACAO | VARCHAR2 | Y | Usuário que incluiu o registro de fechamento de conta |
| 14 | NM_USUARIO_INCLUSAO | VARCHAR2 | Y | Usuário que alterou o registro de fechamento de conta |

---

## DBAMV.CONF_GRUPO_PROCEDIMENTO_TX_OP
> Tabela responsavel pelos grupos de procedimentos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONF_GRU_PCD_TX_OP | NUMBER | N | Codigo da configurac?o do agrupamento de procedimentos gerado por sequence |
| 2 | CD_CONF_EMP_CONV_TAXA_OP | NUMBER | N | Codigo das taxas por grupo |
| 3 | CD_GRU_PRO | NUMBER | N | Codigo dos grupos por procedimento |
| 4 | DT_INCLUSAO | DATE | Y | Data da inclus?o do registro de fechamento de conta |
| 5 | NM_USUARIO_INCLUSAO | VARCHAR2 | Y | Usuario que alterou o registro de fechamento de conta |

---

## DBAMV.CONTA
> Tabela de contas principais do processo licitatorio

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONTA | NUMBER | N | Codigo da conta principal do processo licitatorio |
| 2 | DS_CONTA | VARCHAR2 | N | Descric?o da conta principal do processo licitatorio |
| 3 | DS_CONTA_REL | VARCHAR2 | Y | Coluna existente no INTO |

---

## DBAMV.CONTAS_FORMACAO_FFCV
> Tabela para guardar dados de faturamento para uso do financeiro.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONTAS_FORMACAO_FFCV | NUMBER | N | Código sequencial. |
| 2 | DT_COMPETENCIA | DATE | Y | Competência. |
| 3 | CD_CONTA | NUMBER | Y |  |
| 4 | SN_FECHADA | VARCHAR2 | Y |  |
| 5 | VL_ACRESCIMO_CONTA | NUMBER | Y |  |
| 6 | VL_DESCONTO_CONTA | NUMBER | Y |  |
| 7 | CD_REMESSA | NUMBER | Y |  |
| 8 | CD_ATENDIMENTO | NUMBER | Y |  |
| 9 | CD_TIP_ACOM | NUMBER | Y |  |
| 10 | DT_INICIO | DATE | Y |  |
| 11 | DT_FINAL | DATE | Y |  |
| 12 | CD_CON_PLA | NUMBER | Y |  |
| 13 | CD_CONVENIO | NUMBER | Y |  |
| 14 | SN_FATURA_IMPRESSA | VARCHAR2 | Y |  |
| 15 | SN_CONTA_CALCULADA | VARCHAR2 | Y |  |
| 16 | CD_GUIA | NUMBER | Y |  |
| 17 | DT_FECHAMENTO | DATE | Y |  |
| 18 | NM_USUARIO_FECHOU | VARCHAR2 | Y |  |
| 19 | VL_DESCONTO_FECHAMENTO | NUMBER | Y |  |
| 20 | VL_ACRESCIMO_FECHAMENTO | NUMBER | Y |  |
| 21 | VL_CONTA_NO_FECHAMENTO | NUMBER | Y |  |
| 22 | CD_MULTI_EMPRESA | NUMBER | Y |  |
| 23 | CD_REGRA | NUMBER | Y |  |
| 24 | SN_PRONTA | VARCHAR2 | Y |  |
| 25 | DT_REMESSA | DATE | Y |  |
| 26 | CD_LANCAMENTO | NUMBER | Y |  |
| 27 | CD_PRO_FAT | VARCHAR2 | Y |  |
| 28 | DT_LANCAMENTO | DATE | Y |  |
| 29 | HR_LANCAMENTO | DATE | Y |  |
| 30 | QT_LANCAMENTO | NUMBER | Y |  |
| 31 | VL_PERCENTUAL_MULTIPLA | NUMBER | Y |  |
| 32 | VL_UNITARIO | NUMBER | Y |  |
| 33 | CD_GRU_FAT | NUMBER | Y |  |
| 34 | CD_PRESTADOR | NUMBER | Y |  |
| 35 | VL_TOTAL_CONTA | NUMBER | Y |  |
| 36 | CD_SETOR_PRODUZIU | NUMBER | Y |  |
| 37 | CD_SETOR | NUMBER | Y |  |
| 38 | SN_HORARIO_ESPECIAL | VARCHAR2 | Y |  |
| 39 | CD_USUARIO | VARCHAR2 | Y |  |
| 40 | CD_MVTO | NUMBER | Y |  |
| 41 | TP_MVTO | VARCHAR2 | Y |  |
| 42 | CD_ITMVTO | NUMBER | Y |  |
| 43 | SN_REPASSADO | VARCHAR2 | Y |  |
| 44 | CD_CONTA_PACOTE | NUMBER | Y |  |
| 45 | CD_REDUZIDO_ATIVO | NUMBER | Y |  |
| 46 | CD_REDUZIDO_RECEITA | NUMBER | Y |  |
| 47 | CD_REDUZIDO_PASSIVO | NUMBER | Y |  |
| 48 | CD_REDUZIDO_DESPESA | NUMBER | Y |  |
| 49 | CD_GRU_PRO | NUMBER | Y |  |
| 50 | NM_USUARIO_PROC | VARCHAR2 | Y |  |
| 51 | DT_PROCESSOU | DATE | Y |  |
| 52 | TP_PAGAMENTO | VARCHAR2 | Y | TIPO DE PAGAMENTO DO C , P OU X |
| 53 | TP_CONTA | VARCHAR2 | Y |  |

---

## DBAMV.CONTA_ACRES_DET
> Tabela de lançamentos de acréscimos detalhados por conta fechada.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONTA_ACRES_DET | NUMBER | N | Código sequencial dos lançamentos de acréscimos detalhados na conta |
| 2 | CD_REG_FAT | NUMBER | Y | Código da conta hospitalar, na qual sera aplicado o acréscimo |
| 3 | CD_REG_AMB | NUMBER | Y | Código da conta ambulatorial, na qual sera aplicado o acréscimo |
| 4 | CD_ATENDIMENTO | NUMBER | Y | Código do atendimento, utilizado para conta ambulatoriais, na qual sera aplicado o acréscimo |
| 5 | CD_GRU_PRO | NUMBER | Y | Código do grupo de procedimento para aplicação do acréscimo |
| 6 | CD_PRO_FAT | VARCHAR2 | Y | Código do procedimento para aplicação do acréscimo |
| 7 | VL_PERC_ACRESCIMO | NUMBER | N | Percentual de acréscimo para aplicação no grupo ou procedimento |
| 8 | VL_ACRESCIMO | NUMBER | Y | Valor do acréscimo |
| 9 | DT_LANCAMENTO | DATE | Y | Data do lançamento do procedimento |
| 10 | SN_ACRESCIMO_POR_LANCAMENTO | VARCHAR2 | N | Indica se o acréscimo foi realizado por lançamento |

---

## DBAMV.CONTA_ACRES_OBS
> Tabela dos itens de acréscimo para o acréscimo geral

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONTA_ACRES_OBS | NUMBER | N | Código das descrições da observação do acréscimo |
| 2 | CD_REG_FAT | NUMBER | N | Código da conta hospitar que foi dado o acréscimo |
| 3 | VL_TOTAL | NUMBER | Y | Valor total do acréscimo concedido a conta |

---

## DBAMV.CONTA_AIH_POSTERIOR
> Relaciona uma conta SUS com outra que esta recebendo a guia posterior.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REG_FAT | NUMBER | N | Codigo da conta de AIH posterior. |
| 2 | CD_REG_FAT_POST | NUMBER | N |  |

---

## DBAMV.CONTA_ARRAY_TEMP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONTA | NUMBER | N |  |
| 2 | TP_CONTA | VARCHAR2 | Y |  |

---

## DBAMV.CONTA_DESC_DET
> Tabela de lancamentos de descontos detalhados por conta fechada.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONTA_DESC_DET | NUMBER | N | Codigo sequencial dos lancamentos descontos detalhados na conta |
| 2 | CD_REG_FAT | NUMBER | Y | Codigo da conta hospitalar, na qual sera aplicado o desconto |
| 3 | CD_REG_AMB | NUMBER | Y | Codigo da conta ambulatorial, na qual sera aplicado o desconto |
| 4 | CD_ATENDIMENTO | NUMBER | Y | Codigo do atendimento, utilizado para conta ambulatoriais, na qual sera aplicado o desconto |
| 5 | CD_GRU_PRO | NUMBER | Y | Codigo do grupo de procedimento para aplicac?o do desconto |
| 6 | CD_PRO_FAT | VARCHAR2 | Y | Codigo do procedimento para aplicac?o do desconto |
| 7 | VL_PERC_DESCONTO | NUMBER | N | Percentual de desconto para aplicac?o no grupo ou procedimento |
| 8 | VL_DESCONTO | NUMBER | Y | Valor do desconto. |
| 9 | DT_LANCAMENTO | DATE | Y | Data do lancamento do procedimento. |
| 10 | SN_DESCONTO_POR_LANCAMENTO | VARCHAR2 | N | Indica se o desconto foi realizado por lancamento. |

---

## DBAMV.CONTA_FINANC
> ARMAZENA OS DADOS SOBRE A CONTA FINANCEIRA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONTA_FINANC | NUMBER | N | CÓDIGO DA CONTA FINANCEIRA |
| 2 | DS_CONTA_FINANC | VARCHAR2 | Y | DESCRIÇÃO DA CONTA FINANCEIRA |
| 3 | TP_CONTA | VARCHAR2 | Y | TIPO DA CONTA((RCT)RECEITA,(DES)DESPESA,(INV)INVESTIMENTO,(EMF)EM FORMAÇÃO |
| 4 | TP_VINCULO | VARCHAR2 | Y | TIPO DO VINCULO CONTA((CM)CONTA MOVIMENTAÇÃO,(CC)CONTA CUSTO,(VA)VARIAVEL,(PR)PROCESSO |
| 5 | SN_ATIVO | VARCHAR2 | Y | ARMAZENA STATUS DA CONTA ATIVA OU NÃO (S/N) |

---

## DBAMV.CONTA_FINANC_EXCECOES
> ARMAZENA OS FILTROS SELECIONADOS DA CONTA FINANCEIRA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONTA_FINANC_EXCEXOES | NUMBER | N | CÓDIGO DA CONTA FINANCEIRA |
| 2 | CD_CONTA_FINANC | NUMBER | N |  |
| 3 | TP_CONTA | VARCHAR2 | Y | ARMAZENA DE QUAL TIPO DO FILTRO DA CONTA(BANCOS,CAIXA,FORNECEDOR,APLICAÇÃO,IMPOSTO) |
| 4 | CD_CHAVE | NUMBER | N | CÓDIGO DO FILTRO SELECIONADO |
| 5 | SN_EXCETO | VARCHAR2 | Y | INFORMA SE E OU NAO UM EXCEÇÃO ATIVA (S/N) |

---

## DBAMV.CONTA_FINANC_VINCULO
> ARMAZENA OS VINCULOS DA CONTA FINANCEIRA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONTA_FINANC_VINCULO | VARCHAR2 | N | CÓDIGO DO VINCULO |
| 2 | CD_CONTA_FINANC | NUMBER | N | CÓDIGO DA CONTA FINANCEIRA |

---

## DBAMV.CONTA_FRANQUIADESC_OBS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FRANQDESC_OBS | NUMBER | N |  |
| 2 | CD_REG_FAT | NUMBER | N |  |
| 3 | VL_TOTAL | NUMBER | Y |  |

---

## DBAMV.CONTA_GRU_FAT
> Table de Grupo da Faturamento por Conta Contabil/Empresa

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GRU_FAT | NUMBER | N | Codigo do Grupo de Faturamento |
| 2 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da Empresa |
| 3 | CD_REDUZIDO_OP | NUMBER | Y | Codigo do Reduzido da Conta Contabil de Ortese e Protese |
| 4 | CD_REDUZIDO_SH | NUMBER | Y | Codigo do Reduzido da Conta Contabil de Servico Hospitalar |
| 5 | CD_REDUZIDO_SADT | NUMBER | Y | Codigo do Reduzido da Conta Contabil de Servico Auxiliar de Diagnose e Terapia |
| 6 | CD_REDUZIDO_SP | NUMBER | Y | Codigo do Reduzido da Conta Contabil de Servico Profissional |

---

## DBAMV.CONTA_KIT
> Tabela de movimentac?o de kits na conta de faturamento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONTA_KIT | NUMBER | N | Codigo sequencial da movimentac?o de kit na conta de faturamento |
| 2 | CD_REG_FAT | NUMBER | Y | Codigo da conta hospitalar de lancamento do kit |
| 3 | CD_REG_AMB | NUMBER | Y | Codigo da conta ambulatorial de lancamento do kit |
| 4 | CD_ATENDIMENTO | NUMBER | N | Codigo dp atendimento de lancamento do kit |
| 5 | CD_PADRAO | NUMBER | N | Codigo do kit lancado |
| 6 | DT_LANCAMENTO | DATE | Y | Data de lancamento do kit |
| 7 | HR_LANCAMENTO | DATE | Y | Hora de lancamento do kit |
| 8 | QT_LANCAMENTO | NUMBER | N | Quantidade de lancamento do kit |
| 9 | CD_SETOR | NUMBER | Y | Setor de lancamento do kit |
| 10 | CD_PRESTADOR | NUMBER | Y | Prestador de lancamento do kit |
| 11 | TP_PAGAMENTO | VARCHAR2 | Y | Tipo de pagamento do kit |
| 12 | CD_ATI_MED | VARCHAR2 | Y | Atividade medica de lancamento do kit |
| 13 | DT_SESSAO | DATE | Y | Data de sess?o em contas ambulatoriais de lancamento do kit |

---

## DBAMV.CONTA_PACOTE
> Tabelas de pacotes por conta.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONTA_PACOTE | NUMBER | N | Codigo sequencial que deve seguir o sequence, DBAMV.SEQ_CONTA_PACOTE |
| 2 | CD_REG_FAT | NUMBER | Y | Codigo da conta hospitalar na qual foi lancado o pacote |
| 3 | CD_LANCAMENTO_FAT | NUMBER | Y | Codigo do lancamento na conta hospitar no qual foi lancado o procedimento que desencadeia o pacote |
| 4 | CD_REG_AMB | NUMBER | Y | Codigo da conta ambulatorial na qual foi lancado o pacote |
| 5 | CD_LANCAMENTO_AMB | NUMBER | Y | Codigo do lancamento na conta ambulatorial no qual foi lancado o procedimento que desencadeia o p... |
| 6 | CD_PACOTE | NUMBER | N | Codigo do pacote lancado na conta, codigo da regra de pacote |
| 7 | SN_PRINCIPAL | VARCHAR2 | N | Informa se o pacote e o principal da conta. Quando um pacote for lancado pela segunda vez ja sera... |
| 8 | SN_PACOTE_RN | VARCHAR2 | Y | Indica se pacote pertence a RN - S ou N |
| 9 | CD_LANCAMENTO_PAC | NUMBER | Y | Codigo do lancamento FAT ou AMB |

---

## DBAMV.CONTA_PROCED_HORARIO_ESPEC
> Tabela que guarda os itens da conta que foram gerados pelo replicação do HE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONTA_PROCED_HE | NUMBER | N | Código sesquencial da tabela |
| 2 | CD_REG_FAT | NUMBER | Y | Código da conta Hospitalar |
| 3 | CD_REG_AMB | NUMBER | Y | Código da conta Ambulatorial |
| 4 | CD_LANC_FAT | NUMBER | Y | Código do item da Conta Hospitalar |
| 5 | CD_LANC_AMB | NUMBER | Y | Código do item da Conta Ambulatorial |
| 6 | VL_TOTAL_PERCENT | NUMBER | Y | Total do Percentual retornado para o Horário Especial |
| 7 | SN_INSERIU_CONTA | VARCHAR2 | Y | Indica se já foi inserido na conta o item de HE replicado |

---

## DBAMV.CONTA_REL_MEIO_MAG

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_APR_CONTA_MEIO_MAG | NUMBER | N |  |
| 2 | CD_REG_FAT | NUMBER | Y |  |
| 3 | CD_LANCAMENTO_FAT | NUMBER | Y |  |
| 4 | CD_REG_AMB | NUMBER | Y |  |
| 5 | CD_LANCAMENTO_AMB | NUMBER | Y |  |
| 6 | CD_ATI_MED | VARCHAR2 | Y |  |
| 7 | CD_APR_CONTA | NUMBER | N |  |
| 8 | CD_APR_LANCAMENTO | NUMBER | N |  |

---

## DBAMV.CONTA_TEMP_FFCV

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REG_FAT | NUMBER | Y |  |
| 2 | CD_REG_AMB | NUMBER | Y |  |
| 3 | CD_ATENDIMENTO | NUMBER | Y |  |

---

## DBAMV.CONTA_UNIFICADA
> Tabela que Indica que a conta foi Unificada

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REG_FAT | NUMBER | N | Codigo da Conta Unificada. |
| 2 | QT_RETIRAR | NUMBER | N | Quantidade de dias que dever?o ser retiradas das validac?es que conta diarias. |

---

## DBAMV.CTR_FREQUENCIA_PROC_SECUNDARIO
> Tabela de relaciomento dos procedimento secundarios lancados no controle de frequencia APAC.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROCEDIMENTO | VARCHAR2 | N | Codigo do procedimento secundario lancado no controle de frequencia apac. |
| 2 | CD_FREQUENCIA | NUMBER | N | Codigo do controle de frequencia apac. |

---

## DBAMV.DETALHE_CUSTO_PROCEDIMENTO
> Detalhamento do custo dos procedimentos.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DETALHE | NUMBER | N | Chave primaria. |
| 2 | DT_COMPETENCIA | DATE | Y | Competencia da informac?o. |
| 3 | CD_MULTI_EMPRESA | NUMBER | Y | Empresa origem da informac?o. |
| 4 | CD_SETOR | NUMBER | Y | Setor produziu. |
| 5 | CD_ITEM_RES | NUMBER | Y | Conta de Custo. |
| 6 | CD_TIP_ACOM | NUMBER | Y | Tipo de acomodac?o. |
| 7 | CD_PROCEDIMENTO_SUS | VARCHAR2 | Y | Procedimento SUS. |
| 8 | CD_PRO_FAT | VARCHAR2 | Y | Procedimento convenio. |
| 9 | CD_SAL_CIR | NUMBER | Y | Sala cirurgica. |
| 10 | CD_SETOR_ORIGEM_RATEIO | NUMBER | Y | Setor que originou o rateio. |
| 11 | VL_UNITARIO | NUMBER | Y | Custo uniario. |
| 12 | TP_DETALHE | VARCHAR2 | Y | Tipo de detalhe. |
| 13 | VL_RATEIO_FIXO | NUMBER | Y | Custo do rateio fixo. |
| 14 | VL_RATEIO_VARIAVEL | NUMBER | Y | Custo do rateio variavel |
| 15 | CD_EXA_LAB | NUMBER | Y | Exame laboratorio. |
| 16 | CD_EXA_RX | NUMBER | Y | Exame Raio-X |

---

## DBAMV.DETALHE_REGRA_PROCED_ASSOCIA
> Tabela de Detalhamento da Regra da Associac?o de Procedimentos.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REGRA_ASS | NUMBER | N | Codigo sequencial identificador da regra |
| 2 | CD_PROCEDIMENTO | VARCHAR2 | N | Procedimento Principal da regra de Associacao |
| 3 | CD_PROC_REGRA | VARCHAR2 | N | Procedimento Associado ao Principal da Regra |
| 4 | SN_FILANTROPIA | VARCHAR2 | N | Parametro que identifica se o procedimento e de filantropia |
| 5 | SN_GRATUIDADE | VARCHAR2 | N | Parametro que identifica se o procedimento e de filantropia |
| 6 | QT_PROCEDIMENTO | NUMBER | Y | Quantidade de ocorrencias do procedimento valido para a regra |
| 7 | NR_DIAS_VIGENCIA | NUMBER | Y | Vigencia em dias da regra de associacao para o atendimento Pai |

---

## DBAMV.DIARIA_UTI_SUS
> Armazena as cobrancas de diarias especiais.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REG_FAT | NUMBER | N | Codigo da Reg_Fat (Registro de faturamento) |
| 2 | CD_LANCAMENTO | NUMBER | N | Codigo do lancamento (ItReg_FAT) |
| 3 | DT_COMPETENCIA | DATE | N | Data de competencia do lancamento |
| 4 | TP_ALTA_UTI_NEO | VARCHAR2 | Y | Tipo de Alta da UTI/UCI Neonatal |
| 5 | QT_PESO_RN | NUMBER | Y | Peso do RN |
| 6 | QT_MES_GESTACAO | NUMBER | Y | Quantidade de meses de gestac?o do RN |
| 7 | QT_LANCADA | NUMBER | N | Quantidade de lancamento de UTI/Mes |
| 8 | DT_CONTROLA_LANC | DATE | Y | Utilizada para comparac?o da data que o registro foi lancado com a data de Alta da Conta, evitand... |

---

## DBAMV.EXCECAO_ACRES_DESC
> Tabela de exceções para acréscimo e desconto em contas do faturamento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REG_FAT | NUMBER | Y | Código da conta hospitalar |
| 2 | CD_REG_AMB | NUMBER | Y | Código da conta ambulatorial |
| 3 | CD_GRU_PRO | NUMBER | Y | Código do grupo de procedimento da exceção |
| 4 | CD_PRO_FAT | VARCHAR2 | Y | Código de procedimento da exceção |
| 5 | TP_EXCECAO | VARCHAR2 | N | Tipo de exceção do 'A' acréscimo ou 'D' desconto. |

---

## DBAMV.EXCECAO_PERCENTUAL_COBRANCA
> Tabela de excec?o do percentual de cobranca

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EXCECAO | NUMBER | N | Codigo da da excec?o do percentual de cobranca |
| 2 | CD_REGRA | NUMBER | N | Codigo da regra do percentual de cobranca |
| 3 | CD_GRU_PRO | NUMBER | N | Codigo do grupo de procedimento do percentual de cobranca |
| 4 | CD_TAB_FAT | NUMBER | N | Codigo da tabela de faturamento do percentual de cobranca |
| 5 | VL_PERCENTUAL_PAGO | NUMBER | N | Valor percentual pago do percentual de cobranca |
| 6 | CD_PRO_FAT | VARCHAR2 | Y | Codigo do procedimento do percentual de cobranca |
| 7 | CD_ATI_MED | VARCHAR2 | Y | Codigo da atividade medica do percentual de cobranca |

---

## DBAMV.EXCECAO_REGRA_EXPORTACAO
> Tabela de excec?o de regra de exportac?o de gupo de procedimento.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROCEDIMENTO | VARCHAR2 | N | Codigo do Procedimento. |
| 2 | CD_PRESTADOR | NUMBER | N | Codigo do Prestador. |
| 3 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da Empresa. |

---

## DBAMV.FATURA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FATURA | NUMBER | N |  |
| 2 | DS_FATURA | VARCHAR2 | N |  |
| 3 | CD_CONVENIO | NUMBER | N |  |
| 4 | DT_COMPETENCIA | DATE | N |  |
| 5 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 6 | SN_FECHADA | VARCHAR2 | N | Indica se a fatura está aberta ou fechada. |

---

## DBAMV.FATURAMENTO_DETALHAMENTO
> Tabela para cadastrar os teipos de detalhamentos por regras de faturamento, para definic?o do detalhamento na gerac?o de nota fiscal

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FATURAMENTO_DETALHAMENTO | NUMBER | N | Campo numerico gerado pelo sistema. |
| 2 | CD_MULTI_EMPRESA | NUMBER | Y | Codigo da empresa. FK |
| 3 | TP_ATENDIMENTO | VARCHAR2 | Y | Tipo de atendimento |
| 4 | CD_CONVENIO | NUMBER | Y | Codigo do convenio. FK |
| 5 | TP_GRU_FAT | VARCHAR2 | Y | Tipo do grupo faturamento. aceita os seguintes valores: 'SH' , 'SP' , 'SD' , 'MD' , 'MT' , 'MM' ,... |
| 6 | CD_GRU_FAT | NUMBER | Y | codigo do grupo faturamento. FK |
| 7 | CD_GRU_PRO | NUMBER | Y | Codigo do grupo procedimento. FK |
| 8 | CD_PRO_FAT | VARCHAR2 | Y | Codigo do procedimento. FK |
| 9 | CD_DETALHAMENTO | NUMBER | N | Codigo do tributo que devera ser utilizado na gerac?o da nota fiscal. |
| 10 | SN_RETEM | VARCHAR2 | N | Indica se retem ou n?o o tributo |
| 11 | SN_RETEM_SERVICO | VARCHAR2 | N | Indica se retem ou n?o valores de de itens de servicos |
| 12 | CD_FORMULARIO_NF | NUMBER | Y | Indica o codigo do formulario de nota fiscal que devera ser utilizado para a regra |

---

## DBAMV.FATURAMENTO_SUS_COMPLEMT_ATND
> Complemento de atndimento SUS - ICFUC

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROCEDIMENTO | VARCHAR2 | N | Codigo do procedimento |
| 2 | CD_CBO | VARCHAR2 | N | Codigo do CBO |
| 3 | CD_PRESTADOR | NUMBER | N | Codigo do Prestador |
| 4 | CD_ORI_ATE | NUMBER | N | Codigo da origem |
| 5 | CD_SETOR | NUMBER | Y | Codigo do setor solicitante |
| 6 | CD_SETOR_PRODUZIU | NUMBER | Y | Codigo do setor executante |

---

## DBAMV.FATURA_CAPITATION
> Tabela das faturas das regras do capitation

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REGRA_CAPITATION | NUMBER | N | Codido da regra capitation onde a fatura será aplicada |
| 2 | DT_COMPETENCIA | DATE | N | Competencia onde a fatura será aplicada |
| 3 | VL_COBRANCA | NUMBER | N | Valor que será cobrado na nota fiscal |
| 4 | CD_DESCONTO | NUMBER | N | Codigo de desconto aplicado na nota fiscal |
| 5 | CD_ACRESCIMO | NUMBER | N | Codigo de acrescimo aplicado na nota fiscal |

---

## DBAMV.FATURA_SUS_VALOR
> Tabela auxiliar de calculo de sadt por fatura do SUS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FATURA | NUMBER | N | Codigo da fatura |
| 2 | QT_PONTOS_SADT | NUMBER | Y | Quantidade de pontos sadt |
| 3 | VL_PONTO_SADT | NUMBER | Y | Valor do ponto sadt |
| 4 | DT_CALCULO | DATE | Y | Data em que foi realizado o calculo do SADT. |
| 5 | NM_USUARIO_CALCULO | VARCHAR2 | Y | Nome do usuario que realizou o calculo do SADT. |

---

## DBAMV.FAT_ORIATE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FATURA | NUMBER | N |  |
| 2 | CD_ORI_ATE | NUMBER | N |  |

---

## DBAMV.FAT_SIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FAT_SIA | NUMBER | N |  |
| 2 | DS_FAT_SIA | VARCHAR2 | N |  |
| 3 | DT_PERIODO_INICIAL | DATE | N |  |
| 4 | DT_PERIODO_FINAL | DATE | N |  |
| 5 | LG_SITUACAO | VARCHAR2 | Y |  |
| 6 | DT_FECHAMENTO | DATE | Y |  |
| 7 | HR_FECHAMENTO | DATE | Y |  |
| 8 | NM_USUARIO_FECHOU | VARCHAR2 | Y |  |
| 9 | TIPO_FATURA | VARCHAR2 | Y |  |
| 10 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 11 | DT_COMPETENCIA | DATE | Y |  |
| 12 | CD_REMESSA | NUMBER | Y |  |
| 13 | DT_BLOQUEIO_FATURA | DATE | Y | Data maxima permitida para inserc?o de novos registros |

---

## DBAMV.FFAS_ITENS_ATENDIMENTO
> Tabela de carga para faturamento sus ambulatorial.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CHAVE_FFAS | NUMBER | N | Chave primária da tabela dbamv.ffas_itens_atendimento para controle interno |
| 2 | DT_CARGA | DATE | Y | Data da realização da carga |
| 3 | TP_PERIODO_RECEITA | VARCHAR2 | Y | Período para cálculo do Faturamento Hospitalar e Ambulatorial (Competência Alta = F, Data Lançame... |
| 4 | CD_SETOR_PRODUZIU | NUMBER | Y | Código do Setor Executante oriundo da itreg_fat |
| 5 | CD_SETOR | NUMBER | Y | Código do Setor Solicitante oriundo da itreg_fat |
| 6 | CD_MULTI_EMPRESA | NUMBER | Y | Código da empresa da carga |
| 7 | DT_EVE_SIASUS | DATE | Y | Data da eventos sus |
| 8 | CD_EVENTOS | NUMBER | N | Código do evento |
| 9 | DT_PERIODO_INICIAL | DATE | Y | Data período inicial do lançamento |
| 10 | DT_PERIODO_FINAL | DATE | Y | Data período final do lançamento |
| 11 | CD_REMESSA | NUMBER | Y | Código da remassa da conta |
| 12 | CD_REMESSA_BPA | NUMBER | Y | Código da remassa bpa da conta |
| 13 | CD_ATENDIMENTO | NUMBER | Y | Código do atendimento |
| 14 | CD_CONVENIO | NUMBER | Y | Código do Convênio do Atendimento |
| 15 | CD_GRUPO_PROCEDIMENTO | VARCHAR2 | Y | Código do Grupo de Procedimento |
| 16 | CD_SUB_GRUPO_PROCEDIMENTO | VARCHAR2 | Y | Código do Sub-Grupo de Procedimento |
| 17 | CD_ORGANIZA_GRUPO_PROCEDIMENTO | VARCHAR2 | Y | Código do Organiza-Grupo de Procedimento |
| 18 | CD_ITEM_RES | NUMBER | Y | Código do Item |
| 19 | CD_PROCEDIMENTO | VARCHAR2 | Y | Código do Procedimento do Faturamento |
| 20 | DS_PROCEDIMENTO | VARCHAR2 | Y | Descrição do Procedimento do Faturamento |
| 21 | QT_LANCADA | NUMBER | Y | Quantidade Lançada do Item no Faturamento |
| 22 | CD_GRU_FAT | NUMBER | Y | Código do Grupo de Faturamento |
| 23 | CD_PRESTADOR | NUMBER | Y | Código do Prestador |
| 24 | VL_TOTAL_AMBULATORIAL | NUMBER | Y | Valor total do lançamento |
| 25 | SN_PACOTE | VARCHAR2 | Y | S/N equipe |

---

## DBAMV.GLOSA20_ITEM
> Tabela itens de faturamento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GLOSA20_ITEM | NUMBER | N | Código do item |
| 2 | TP_CONTA | VARCHAR2 | N | Tipo da conta do paciente |
| 3 | CD_CONTA | NUMBER | N | Código da conta do paciente |
| 4 | CD_LANCAMENTO | NUMBER | N | Sequência do lançamento do item da conta |
| 5 | CD_CONVENIO | NUMBER | N | Código do convênio |
| 6 | CD_ATENDIMENTO | NUMBER | N | Código do atendimento |
| 7 | CD_GRU_FAT | NUMBER | N | Código do grupo de faturamento |
| 8 | CD_PRO_FAT | VARCHAR2 | N | Código do procedimento |
| 9 | CD_SETOR | NUMBER | N | Código do setor |
| 10 | VL_ITEM | NUMBER | Y | Valor do item |
| 11 | DT_ITEM | DATE | Y | Data do item |
| 12 | CD_ATI_MED | VARCHAR2 | Y | Código da atiidade médica |
| 13 | CD_PRESTADOR | NUMBER | Y | Código do prestador |
| 14 | CD_REMESSA | NUMBER | Y | Código da remessa de fatura |
| 15 | DT_REMESSA | DATE | Y | Data da remessa de fatura |
| 16 | CD_NOTA | NUMBER | Y | Código da nota fiscal |
| 17 | DT_NOTA | DATE | Y | Data da nota fiscal |
| 18 | CD_ITFAT_NF | NUMBER | Y | Código do item da nota fiscal |
| 19 | VL_FORMACAO | NUMBER | Y | Valor do item ainda em formação (sem remessa) |
| 20 | VL_FATURADO | NUMBER | Y | Valor do item na nota fiscal |
| 21 | VL_RECEBIDO | NUMBER | Y | Valor recebido total do item |
| 22 | VL_ACRESCIMO | NUMBER | Y | Valor de acréscimo no recebimento do item |
| 23 | VL_DESCONTO | NUMBER | Y | Valor de desconto no recebimento do item |
| 24 | VL_RETIDO | NUMBER | Y | Valor de impostos retidos no recebimento |
| 25 | VL_GLOSADO | NUMBER | Y | Valor da glosa no financeiro |
| 26 | VL_RECURSADO | NUMBER | Y | Valor do recurso |
| 27 | VL_ACEITO | NUMBER | Y | Valor de aceite |
| 28 | DT_REGISTRO | DATE | N | Data do registro |

---

## DBAMV.GLOSA20_MVTO
> Tabela de movimentos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GLOSA20_MVTO | NUMBER | N | Código do registro |
| 2 | CD_ESTORNO | NUMBER | Y | Código do registro estorno |
| 3 | CD_MULTI_EMPRESA | NUMBER | N | Código da empresa |
| 4 | CD_CONVENIO | NUMBER | Y | Código do convênio |
| 5 | CD_PROCESSO | NUMBER | N | Código do processo |
| 6 | CD_REMESSA | NUMBER | Y | Código da remessa |
| 7 | CD_NOTA_FISCAL | NUMBER | Y | Código da nota fiscal |
| 8 | CD_FINAN_RECEB | NUMBER | Y | Código do lote de baixa financeira |
| 9 | CD_USUARIO | VARCHAR2 | N | Código do usuário do registro |
| 10 | CD_MODULO | VARCHAR2 | N | Código do módulo que gerou o registro |
| 11 | CD_LOTE_CONTABIL | NUMBER | Y | Código do lote contábil |
| 12 | DT_MOVIMENTO | DATE | N | Data do movimento |
| 13 | TP_MOVIMENTO | VARCHAR2 | N | Tipo do movimento |
| 14 | VL_MOVIMENTO | NUMBER | N | Valor do movimento |
| 15 | TX_MOVIMENTO | VARCHAR2 | Y | Texto do movimento |
| 16 | NR_PROTOCOLO | VARCHAR2 | Y | Número do protocolo de recurso |
| 17 | DT_PROTOCOLO | DATE | Y | Data do protocolo de recurso |
| 18 | DT_VENCIMENTO | DATE | Y | Data do vencimento previsto do recurso |
| 19 | TP_STATUS | VARCHAR2 | N | Tipo de status do registro |
| 20 | SN_LEGADO | VARCHAR2 | N | Registro Legado (Sim/Não) |
| 21 | SN_FECHADO | VARCHAR2 | N | Registro Fechado (Sim/Não) |
| 22 | CD_INTEGRACAO | VARCHAR2 | Y | Código de integração |
| 23 | TP_INTEGRACAO_ERRO | VARCHAR2 | Y | Tipo de erro da integração |
| 24 | SN_TISS | VARCHAR2 | N | Registro gerado pelo TISS (Sim/Não) |
| 25 | CD_SEQ_INTEGRA | NUMBER | Y | Código sequencial da integração |
| 26 | DT_INTEGRA | DATE | Y | Data da integração |
| 27 | NR_GRUPO_LANCAMENTO | VARCHAR2 | Y | Número do grupo de lancamento da integração |
| 28 | NR_PARCELA_PIRAMIDE | NUMBER | Y | Número da parcela da integração |
| 29 | DT_REGISTRO | DATE | N | Data do registro |
| 30 | CD_RECCON_REC | NUMBER | Y | Código do recebimento |
| 31 | CD_MOV_GLOSAS | NUMBER | Y | Código do movimento glosa |
| 32 | CD_REMESSA_GLOSA | NUMBER | Y | Código da remessa glosa |
| 33 | VL_ACRESCIMO | NUMBER | Y | Valor acréscimo do recebimento |
| 34 | VL_DESCONTO | NUMBER | Y | Valor desconto do recebimento |
| 35 | VL_RETIDO | NUMBER | Y | Valor de imposto retido |
| 36 | VL_FORMACAO | NUMBER | Y | Valor do movimento em formação |
| 37 | VL_FATURADO | NUMBER | Y | Valor do movimento já faturado |
| 38 | NM_USER_CRIACAO | VARCHAR2 | Y | Usuario responsável pela criação da movimentação |
| 39 | DT_CRIACAO | DATE | Y | Data da criação da movimentação |
| 40 | NM_USER_FECH | VARCHAR2 | Y | Usuario responsável pelo fechamento da movimentação |
| 41 | DT_FECHAMENTO | DATE | Y | Data do fechamento da movimentação |
| 42 | NM_USER_CONTAB | VARCHAR2 | Y | Usuario responsável pela contabilização da movimentação |
| 43 | DT_CONTABILIDADE | DATE | Y | Data da contabilização da movimentação |
| 44 | NM_USER_CANCELAMENTO | VARCHAR2 | Y | Usuario responsável pelo cancelamento da movimentação |
| 45 | DT_CANCELAMENTO | DATE | Y | Data do cancelamento da movimentação |
| 46 | TP_SITUACAO | VARCHAR2 | N | A - ABERTO, F - FECHADO, C - CONTABILIZADO, E - CANCELADO |

---

## DBAMV.GLOSA20_VALOR
> Tabela valores de itens de movimento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GLOSA20_VALOR | NUMBER | N | Código do registro |
| 2 | CD_GLOSA20_MVTO | NUMBER | N | Código do movimento |
| 3 | CD_GLOSA20_ITEM | NUMBER | N | Código do item |
| 4 | CD_ITFAT_NF | NUMBER | Y | Código do item da nota fiscal |
| 5 | CD_ATI_MED | VARCHAR2 | Y | Código da atividade médica |
| 6 | CD_PRESTADOR | NUMBER | Y | Código do prestador |
| 7 | CD_RECURSO | NUMBER | Y | Código do movimento de recurso |
| 8 | CD_MOTIVO | NUMBER | Y | Código do motivo do movimento |
| 9 | TX_MOVIMENTO | VARCHAR2 | Y | Texto do movimento |
| 10 | VL_MOVIMENTO | NUMBER | Y | Valor líquido do movimento |
| 11 | VL_DESCONTO | NUMBER | Y | Valor de desconto |
| 12 | VL_ACRESCIMO | NUMBER | Y | Valor de acréscimo |
| 13 | VL_RETIDO | NUMBER | Y | Valor retido de imposto |
| 14 | VL_FATURADO | NUMBER | Y | Valor faturado de conta em formação |

---

## DBAMV.GLOSAS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GLOSAS | NUMBER | N |  |
| 2 | CD_MOTIVO_GLOSA | NUMBER | N |  |
| 3 | CD_REG_FAT | NUMBER | Y |  |
| 4 | CD_LANCAMENTO_FAT | NUMBER | Y |  |
| 5 | CD_REG_AMB | NUMBER | Y |  |
| 6 | CD_LANCAMENTO_AMB | NUMBER | Y |  |
| 7 | CD_PRESTADOR | NUMBER | Y |  |
| 8 | CD_ATI_MED | VARCHAR2 | Y |  |
| 9 | DT_GLOSA | DATE | N |  |
| 10 | QT_GLOSA | NUMBER | Y |  |
| 11 | VL_GLOSA | NUMBER | Y |  |
| 12 | VL_REAPRESENTADO | NUMBER | Y |  |
| 13 | QT_REAPRESENTADA | NUMBER | Y |  |
| 14 | CD_JUSTIFICA_GLOSA | NUMBER | Y |  |
| 15 | DT_COMPETENCIA_REAPRESENTA | DATE | Y |  |
| 16 | DS_COMPLEMENTO_JUSTIFICA | VARCHAR2 | Y |  |
| 17 | DT_RECEBIDO | DATE | Y |  |
| 18 | VL_RECEBIDO | NUMBER | Y |  |
| 19 | CD_REMESSA_GLOSA | NUMBER | Y |  |
| 20 | VL_BASE_REPASSADO | NUMBER | Y |  |
| 21 | CD_ATENDIMENTO | NUMBER | Y |  |
| 22 | CD_PRO_FAT | VARCHAR2 | Y |  |
| 23 | CD_GRU_FAT | NUMBER | Y |  |
| 24 | CD_GRU_PRO | NUMBER | Y |  |
| 25 | SN_FINANCEIRO | VARCHAR2 | Y |  |
| 26 | CD_GLOSAS_PAI | NUMBER | Y |  |
| 27 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 28 | CD_MULTI_EMPRESA | NUMBER | N | Coluna Criada na vers?o v4.5 |
| 29 | VL_RECURSO_REPASSADO | NUMBER | Y | Valor repassado do Recurso |
| 30 | CD_USUARIO | VARCHAR2 | Y | Usuario que registrou a Glosa. |
| 31 | VL_GLOSA_PRE_ACEITA | NUMBER | Y | Valor pre-aceito de glosa |
| 32 | SN_EM_ANALISE | VARCHAR2 | Y | Indica se a glosa esta em analise |
| 33 | CD_SETOR | NUMBER | Y | Setor em que o procedimento foi lancado |
| 34 | ID_IT_ENVIO | NUMBER | Y | Identificador que relaciona este lancamento ao item da Guias Tiss gerado para Envio. |
| 35 | CD_MOTIVO_RECURSO_GLOSA | NUMBER | Y | Codigo do motivo do recurso de glosa |
| 36 | CD_JUSTIFICA_RECURSO_GLOSA | NUMBER | Y | Codigo da justificativa do recurso de glosa |
| 37 | DS_OBSERVACAO_RECURSO | VARCHAR2 | Y | Observac?o do motivo do recurso de glosa |
| 38 | CD_ITFAT_NF | NUMBER | Y | Codigo do registro de item da nota fiscal |
| 39 | CD_CHECK | VARCHAR2 | Y | Nivel de consistencia do item de glosa |
| 40 | CD_SETOR_APOIO | NUMBER | Y | Codigo do setor de apoio |
| 41 | CD_MOTIVO_ACEITE | NUMBER | Y | Codigo do motivo de aceite |
| 42 | DS_JUSTIFICA_ACEITE | VARCHAR2 | Y | Descric?o Livre da Justificativa do Aceite |
| 43 | CD_GLOSA_CONVENIO | VARCHAR2 | Y | Código de motivo de glosas relacionado ao convênio. |

---

## DBAMV.GLOSAS_SIA_SUS
> Tabela de Registro de Glosas SIA SUS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GLOSA_SIA_SUS | NUMBER | N | Codigo Registro de Glosa |
| 2 | CD_FAT_SIA | NUMBER | N | Codigo Fatura da Glosa |
| 3 | CD_APAC | NUMBER | N | Codigo APAC |
| 4 | CD_REMESSA_APAC_GLOSADA | NUMBER | N | Codigo Remessa APAC Glosada |
| 5 | CD_JUSTIFICA_GLOSA_SUS | NUMBER | N | Codigo Justificativa de Glosas SUS |
| 6 | CD_REMESSA_APAC_REAPRESENTADA | NUMBER | N | Codigo Remessa APAC de Reapresentacao |

---

## DBAMV.GLOSAS_SITUACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REG_FAT | NUMBER | Y |  |
| 2 | CD_REG_AMB | NUMBER | Y |  |
| 3 | CD_ATENDIMENTO | NUMBER | Y |  |
| 4 | TP_SITUACAO | VARCHAR2 | N |  |

---

## DBAMV.GLOSAS_SUS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GLOSAS_SUS | NUMBER | N |  |
| 2 | CD_MOTIVO_GLOSA_SUS | VARCHAR2 | N |  |
| 3 | CD_REG_FAT | NUMBER | N |  |
| 4 | VL_GLOSA | NUMBER | Y |  |
| 5 | VL_REAPRESENTADO | NUMBER | Y |  |
| 6 | CD_JUSTIFICA_GLOSA_SUS | NUMBER | N |  |
| 7 | CD_REMESSA_GLOSADA | NUMBER | N |  |
| 8 | CD_REMESSA_REAPRESENTADA | NUMBER | Y |  |
| 9 | CD_ATENDIMENTO | NUMBER | N |  |
| 10 | DT_GLOSA | DATE | Y | Data da glosa AIH |
| 11 | NM_USUARIO_GLOSA | VARCHAR2 | Y | Nome do usuario da glosa AIH |

---

## DBAMV.GLOSAS_TISS
> Tabela de codificac?o de Glosas do padr?o TISS.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GLOSA | NUMBER | N | Codigo da Glosa |
| 2 | DS_GRUPO | VARCHAR2 | Y | Grupo da Glosa |
| 3 | DS_GLOSA | VARCHAR2 | Y | Descric?o da Glosa |

---

## DBAMV.GLOSA_LEGADO
> Historico do script

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LEGADO | NUMBER | N | Codigo |
| 2 | DT_INICIO | DATE | Y | Data de inicio do processo |
| 3 | DT_MAX_GLOSA | DATE | Y | Data da maior glosa salva |
| 4 | QT_GLOSAS | NUMBER | Y | Quantidade de itens de glosa |
| 5 | QT_ITFAT_INIC | NUMBER | Y | Quantidade de cd_itfat_nf populada no inicio |
| 6 | QT_ITFAT_FINA | NUMBER | Y | Quantidade de cd_itfat_nf populada no final |
| 7 | DS_CHECK | VARCHAR2 | Y | Log de descric?o do processo |

---

## DBAMV.GLOSA_RETRO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GLOSA_RETRO | NUMBER | N |  |
| 2 | CD_MOTIVO_GLOSA | NUMBER | N |  |
| 3 | CD_REG_FAT | NUMBER | Y |  |
| 4 | CD_LANCAMENTO_FAT | NUMBER | Y |  |
| 5 | CD_REG_AMB | NUMBER | Y |  |
| 6 | CD_LANCAMENTO_AMB | NUMBER | Y |  |
| 7 | CD_PRESTADOR | NUMBER | Y |  |
| 8 | CD_ATI_MED | VARCHAR2 | Y |  |
| 9 | DT_GLOSA | DATE | N |  |
| 10 | QT_GLOSA | NUMBER | Y |  |
| 11 | VL_GLOSA | NUMBER | Y |  |
| 12 | VL_REAPRESENTADO | NUMBER | Y |  |
| 13 | QT_REAPRESENTADA | NUMBER | Y |  |
| 14 | CD_JUSTIFICA_GLOSA | NUMBER | Y |  |
| 15 | DS_COMPLEMENTO_JUSTIFICA | VARCHAR2 | Y |  |
| 16 | DT_RECEBIDO | DATE | Y |  |
| 17 | VL_RECEBIDO | NUMBER | Y |  |
| 18 | CD_REMESSA_GLOSA | NUMBER | Y |  |
| 19 | CD_ATENDIMENTO | NUMBER | Y |  |
| 20 | CD_PRO_FAT | VARCHAR2 | Y |  |
| 21 | TP_SITUACAO | VARCHAR2 | N |  |
| 22 | DT_COMPETENCIA_REAPRESENTA | DATE | Y |  |
| 23 | CD_GLOSAS_PAI | NUMBER | Y |  |

---

## DBAMV.HORARIO_ESPECIAL_PROCED
> Tabela com horário especial por procedimento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REGRA | NUMBER | N | Código da Regra para o horário especial por procedimento |
| 2 | CD_GRU_PRO | NUMBER | N | Código do Grupo de Procedimento para o horário especial por procedimento |
| 3 | CD_PRO_FAT | VARCHAR2 | N | Código do Procedimento para o horário especial |
| 4 | CD_HORARIO | NUMBER | N | Código do horário especial especificio para o procedimento |
| 5 | TP_ATEND_AMBULATORIAL | VARCHAR2 | Y | aplicação do horário especial por procedimento para atendimento ambulatorial |
| 6 | TP_ATEND_EXTERNO | VARCHAR2 | Y | aplicação do horário especial por procedimento para atendimento externo |
| 7 | TP_ATEND_INTERNACAO | VARCHAR2 | Y | aplicação do horário especial por procedimento para atendimento de internação |
| 8 | TP_ATEND_URGEME | VARCHAR2 | Y | aplicação do horário especial por procedimento para atendimento de urgência e emergência |
| 9 | TP_ATEND_HOMECARE | VARCHAR2 | Y | aplicação do horário especial por procedimento para atendimento home care |

---

## DBAMV.ITMOV_GLOSAS
> Tabela Responsavel por amarzenar os itens que recebem  aceite de glosa

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITFAT_NF | NUMBER | N | Identifica o item da nofa fiscal que esta recebendo o Aceite |
| 2 | CD_MOV_GLOSAS | NUMBER | N | Codigo identificador da Movimentac?o da Glosa. |
| 3 | CD_CON_REC | NUMBER | N | Codigo do Contas a receber referente a glosa |
| 4 | VL_GLOSA | NUMBER | N | Valor da glosa aceita do item recebido. |
| 5 | CD_GLOSAS | NUMBER | Y | Codigo do registro de item da glosa |
| 6 | VL_RETIRA_RECURSO | NUMBER | Y | Valor que sera retirado do recurso na itcon_rec |

---

## DBAMV.ITNOTA_FISCAL_GRU_PRO
> Tabela de itens de nota fical por grupos de procedimentos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_NOTA_FISCAL | NUMBER | N | Codigo da nota fiscal |
| 2 | CD_GRU_PRO | NUMBER | N | Codigo do grupo de procedimento |
| 3 | VL_GRU_PRO | NUMBER | N | Valor do Grupo de procedimento |
| 4 | VL_BASE_CALCULO | NUMBER | Y | VALOR BASE DO GRUPO DE PROCEDIMENTO |

---

## DBAMV.ITREGRA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REGRA | NUMBER | N |  |
| 2 | CD_TAB_FAT | NUMBER | N |  |
| 3 | CD_GRU_PRO | NUMBER | N |  |
| 4 | VL_PERCETUAL_PAGO | NUMBER | N |  |
| 5 | TP_HOR_ESP_SD | VARCHAR2 | Y |  |
| 6 | CD_HORARIO | NUMBER | Y |  |
| 7 | TP_VALOR_BASE | VARCHAR2 | N |  |
| 8 | CD_CONTRATO | NUMBER | Y | Código do Contrato |

---

## DBAMV.ITREGRA_EXCECAO
> Tabela de excec?o de itens da regra em horario especial

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REGRA | NUMBER | N | Regra da excec?o em horario especial |
| 2 | CD_GRU_PRO | NUMBER | N | Codigo do grupo de procedimento da excec?o em horario especial |
| 3 | TP_ATEND_AMBULATORIAL | VARCHAR2 | Y | Excec?o em horario especial para atendimento ambulatorial |
| 4 | TP_ATEND_EXTERNO | VARCHAR2 | Y | Excec?o em horario especial para atendimento externo |
| 5 | TP_ATEND_INTERNACAO | VARCHAR2 | Y | Excec?o em horario especial para internac?o |
| 6 | TP_ATEND_URGEME | VARCHAR2 | Y | Excec?o em horario especial para atendimento de urgencia/emergencia |
| 7 | TP_ATEND_HOMECARE | VARCHAR2 | Y | Excec?o em horario especial para atendimento home care |

---

## DBAMV.ITREGRA_EXCECAO_PRO_FAT
> Tabela de excec?o de Procedimentos da regra em horario especial

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REGRA | NUMBER | N | Regra da excec?o em horario especial |
| 2 | CD_GRU_PRO | NUMBER | N | Codigo do grupo de procedimento da excec?o em horario especial |
| 3 | CD_PRO_FAT | VARCHAR2 | N | Procedimentos da Excec?o em horario especial |

---

## DBAMV.ITREGRA_RATEIO_FNFI
> Tabela de Regra do Rateio

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITREGRA_RATEIO_FNFI | NUMBER | N | Codigo do item da Regra do Rateio |
| 2 | CD_REGRA_RATEIO_FNFI | NUMBER | Y | Codigo da Regra do Rateio |
| 3 | CD_SETOR | NUMBER | Y | Codigo da Setor associado a Regra do Rateio |
| 4 | CD_ITEM_RES | NUMBER | Y | Centro de Custo associado a Regra do Rateio |
| 5 | CD_REDUZIDO | NUMBER | Y | Plano de Contas associado a Regra do Rateio |
| 6 | TX_RATEIO_FNFI | NUMBER | Y | Taxa em % da regra do Rateio |
| 7 | CD_REDUZIDO_CONTRAPARTIDA | NUMBER | Y | CODIGO REDUZIDO DE CONTRAPARTIDA DO LANCAMENTO |
| 8 | TP_MOVIMENTO | VARCHAR2 | Y | TIPO DE MOVIMENTAC?O DEBITO OU CREDITO QUANDO TIPO DE REGRA DE RATEIO E 'M' |

---

## DBAMV.ITREGRA_REPASSE_SERVICO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SERVICO | NUMBER | N |  |
| 2 | DT_VIGENCIA | DATE | N |  |
| 3 | NR_PARCELA | NUMBER | N |  |
| 4 | VL_NOMINAL | NUMBER | Y |  |
| 5 | VL_PERCENTUAL | NUMBER | Y |  |

---

## DBAMV.ITREG_AMB

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REG_AMB | NUMBER | N |  |
| 2 | CD_LANCAMENTO | NUMBER | N |  |
| 3 | HR_LANCAMENTO | DATE | N |  |
| 4 | QT_LANCAMENTO | NUMBER | N |  |
| 5 | VL_UNITARIO | NUMBER | Y |  |
| 6 | VL_ACRESCIMO | NUMBER | Y |  |
| 7 | VL_DESCONTO | NUMBER | Y |  |
| 8 | CD_GRU_FAT | NUMBER | N |  |
| 9 | CD_PRO_FAT | VARCHAR2 | N |  |
| 10 | CD_ATENDIMENTO | NUMBER | N |  |
| 11 | CD_PRESTADOR | NUMBER | Y |  |
| 12 | CD_CON_PLA | NUMBER | N |  |
| 13 | CD_CONVENIO | NUMBER | N |  |
| 14 | VL_HONORARIO_UNITARIO | NUMBER | Y |  |
| 15 | VL_OPERACIONAL_UNITARIO | NUMBER | Y |  |
| 16 | CD_ATI_MED | VARCHAR2 | Y |  |
| 17 | CD_PRES_CON | NUMBER | Y |  |
| 18 | VL_PERCENTUAL_PACIENTE | NUMBER | Y |  |
| 19 | VL_FILME_UNITARIO | NUMBER | Y |  |
| 20 | VL_TOTAL_CONTA | NUMBER | Y |  |
| 21 | SN_FATURA_IMPRESSA | VARCHAR2 | N |  |
| 22 | SN_FECHADA | VARCHAR2 | N |  |
| 23 | CD_IMPORTA_REG_AMB | NUMBER | Y |  |
| 24 | SN_CONTA_CALCULADA | VARCHAR2 | N |  |
| 25 | CD_GUIA | NUMBER | Y |  |
| 26 | SN_PERTENCE_PACOTE | VARCHAR2 | N |  |
| 27 | DT_FECHAMENTO | DATE | Y |  |
| 28 | NM_USUARIO_FECHOU | VARCHAR2 | Y |  |
| 29 | VL_DESCONTO_FECHAMENTO | NUMBER | Y |  |
| 30 | VL_ACRESCIMO_FECHAMENTO | NUMBER | Y |  |
| 31 | VL_CONTA_NO_FECHAMENTO | NUMBER | Y |  |
| 32 | VL_BASE_REPASSADO | NUMBER | Y |  |
| 33 | CD_MOTIVO_GLOSA | NUMBER | Y |  |
| 34 | QT_CH_UNITARIO | NUMBER | Y |  |
| 35 | VL_PERCENTUAL_MULTIPLA | NUMBER | Y |  |
| 36 | TP_PAGAMENTO | VARCHAR2 | Y |  |
| 37 | CD_SETOR_PRODUZIU | NUMBER | Y |  |
| 38 | CD_SETOR | NUMBER | Y |  |
| 39 | CD_PADRAO | NUMBER | Y |  |
| 40 | SN_HORARIO_ESPECIAL | VARCHAR2 | Y |  |
| 41 | CD_REG_AMB_PAI | NUMBER | Y |  |
| 42 | CD_LANCAMENTO_PAI | NUMBER | Y |  |
| 43 | CD_FRANQUIA | NUMBER | Y |  |
| 44 | CD_REGRA_ACOPLAMENTO | NUMBER | Y |  |
| 45 | VL_PERC_ACOPLAMENTO | NUMBER | Y |  |
| 46 | SN_PACIENTE_PAGA | VARCHAR2 | Y |  |
| 47 | CD_REGRA_ATENDIMENTO | NUMBER | Y |  |
| 48 | CD_REGRA_ATENDIMENTO_PRO_FAT | NUMBER | Y |  |
| 49 | CD_FRANQUIA_VALOR_TOTAL | NUMBER | Y |  |
| 50 | CD_REG_AMB_REL | NUMBER | Y |  |
| 51 | CD_LANCAMENTO_REL | NUMBER | Y |  |
| 52 | CD_USUARIO | VARCHAR2 | Y |  |
| 53 | CD_MVTO | NUMBER | Y |  |
| 54 | TP_MVTO | VARCHAR2 | Y |  |
| 55 | HR_LANCAMENTO_FINAL | DATE | Y |  |
| 56 | CD_ITMVTO | NUMBER | Y |  |
| 57 | SN_REPASSOU_VIRTUAL | VARCHAR2 | N |  |
| 58 | SN_PRONTA | VARCHAR2 | N |  |
| 59 | VL_DESCONTO_CONTA | NUMBER | Y |  |
| 60 | DT_SESSAO | DATE | Y |  |
| 61 | TP_MVTO_DESCONTO | VARCHAR2 | Y |  |
| 62 | TP_DESCONTO | VARCHAR2 | Y |  |
| 63 | VL_NOTA | NUMBER | Y |  |
| 64 | SN_REPASSADO | VARCHAR2 | Y |  |
| 65 | FATOR_RELACIONADO | NUMBER | Y | Quantidade do Fator relacionado da Regra |
| 66 | SN_LIBERADO | CHAR | Y |  |
| 67 | NR_SEQ_PREIMPRE | NUMBER | Y | Sequencial do relatorio pre-impresso do convenio |
| 68 | CD_CONTA_KIT | NUMBER | Y | Codigo sequencial da movimentac?o de kit na conta de faturamento |
| 69 | DS_OBSERVACAO_FRANQUIA | VARCHAR2 | Y | Observac?o para franquia ou desconto com a conta fechada |
| 70 | CD_LANCAMENTO_REG_LANC | NUMBER | Y | Codigo de lancamento do procedimeto principal que orginou a aplicac?o da regra |
| 71 | CD_REGRA_LANCAMENTO | NUMBER | Y | Codigo da regra de lancamento |
| 72 | CD_CONTA_PACOTE | NUMBER | Y | Codigo sequencial do pacote na conta ambulatorial |
| 73 | SN_REGRA_LANCAMENTO | VARCHAR2 | N | Indica se a conta tem regra de lancamento aplicada. |
| 74 | NR_DIFEP | VARCHAR2 | Y | Numero de controle estadual de bolsas de sangue por Hemocentros. |
| 75 | CD_IT_AGENDA_CENTRAL | NUMBER | Y | Codigo da item de agenda de origem do lancamento. Relacionamento visando a fidelizac?o de valores... |
| 76 | NR_GUIA_ENVIO | VARCHAR2 | Y | Numero da Guia de envio ao Convenio |
| 77 | ID_IT_ENVIO | NUMBER | Y | Identificador que relaciona este lancamento ao item da Guias Tiss gerado para Envio. |
| 78 | NM_INSTANCIA | VARCHAR2 | Y | Instancia da tabela gv$session, para auxiliar no processo de regra de lancamento |
| 79 | NM_SESSAO | VARCHAR2 | Y | SID da tabela gv$session, para auxiliar no processo de regra de lancamento |
| 80 | NM_USUARIO | VARCHAR2 | Y | Usuario que realizou o processo de regra de lancamento |
| 81 | INSTANC | VARCHAR2 | Y | Instancia da tabela gv$session, para auxiliar no processo de regra de lancamento |
| 82 | SID | VARCHAR2 | Y | SID da tabela gv$session, para auxiliar no processo de regra de lancamento |
| 83 | USERNAME | VARCHAR2 | Y | Usuario que realizou o processo de regra de lancamento |
| 84 | VL_DESCONTO_PREST_DISTRIBUICAO | NUMBER | Y | Coluna para guardar o valor do desconto do prestador na distribuição de contas |
| 85 | VL_HONORARIO_PREST_DISTRIBUI | NUMBER | Y | valor anterior do Honorário após desconto na distribuicao |
| 86 | VL_TOTAL_DISTRIBUIDO | NUMBER | Y | Valor distribuido para a conta filha |
| 87 | VL_BASE_HONOR_REPASSE | NUMBER | Y | Valor do honorário proporcional ao valor total, calculado de acordo com valor de tabela do prorce... |
| 88 | VL_HONOR_DISTRIBUIDO | NUMBER | Y | VALOR APLICADO NA DISTRIBUICAO DE CONTA, VALOR DESCONTADO DA COLUNA VL_BASE_HONOR_REPASSE |
| 89 | DT_PRODUCAO | DATE | Y | Data em que o registro foi criado na tabela. |
| 90 | CD_REGRA_SUBSTITUICAO_PROCED | NUMBER | Y | Código da regra de substituição, se houver. |
| 91 | SN_PLANTAO_EMERG_PRESTADOR | VARCHAR2 | Y | Identifica se houve Plantão Emergencial de Prestador sobre procedimento, não incide valorização d... |
| 92 | E_VL_ACRESCIMO_CONTA | NUMBER | Y | [EXTENSIBILIDADE] Indica o valor do acréscimo a conta. |
| 93 | SN_REPASSADO_PARCELADO | VARCHAR2 | N | Indicador que o item da conta foi realizado baixa de forma parcelada. |

---

## DBAMV.ITREG_AMB_ESPELHO
> Tabela de Log ambulatorial referente regras de lancamento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REG_AMB | NUMBER | N | Codigo do lote |
| 2 | CD_LANCAMENTO | NUMBER | N | Codigo lancamento |
| 3 | HR_LANCAMENTO | DATE | N | Hora de lancamento |
| 4 | QT_LANCAMENTO | NUMBER | N | Quantidade de lancamento |
| 5 | VL_UNITARIO | NUMBER | Y | valor unitario |
| 6 | VL_ACRESCIMO | NUMBER | Y | valor acrescimo |
| 7 | VL_DESCONTO | NUMBER | Y | valor desconto |
| 8 | CD_GRU_FAT | NUMBER | N | Codigo do grupo de faturamento |
| 9 | CD_PRO_FAT | VARCHAR2 | N | Codigo procedimento |
| 10 | CD_ATENDIMENTO | NUMBER | N | Codigo do atendimento |
| 11 | CD_PRESTADOR | NUMBER | Y | codigo do prestador |
| 12 | CD_CON_PLA | NUMBER | N | codigo do plano |
| 13 | CD_CONVENIO | NUMBER | N | codigo do convenio |
| 14 | VL_HONORARIO_UNITARIO | NUMBER | Y | valor de honorario unitario |
| 15 | VL_OPERACIONAL_UNITARIO | NUMBER | Y | valor operacional unitario |
| 16 | CD_ATI_MED | VARCHAR2 | Y | Codigo atividade medica |
| 17 | CD_PRES_CON | NUMBER | Y | Codigo pres_con |
| 18 | VL_PERCENTUAL_PACIENTE | NUMBER | Y | valor percentual do paciente |
| 19 | VL_FILME_UNITARIO | NUMBER | Y | valor filme unitario |
| 20 | VL_TOTAL_CONTA | NUMBER | Y | Valor total do item |
| 21 | SN_FATURA_IMPRESSA | VARCHAR2 | N | Fatura impressa(s/n)? |
| 22 | SN_FECHADA | VARCHAR2 | N | conta fechada(s/n)? |
| 23 | CD_IMPORTA_REG_AMB | NUMBER | Y | codigo importacao do lote |
| 24 | SN_CONTA_CALCULADA | VARCHAR2 | N | Pertence a pacote(s/n)? |
| 25 | CD_GUIA | NUMBER | Y | codigo da guia |
| 26 | SN_PERTENCE_PACOTE | VARCHAR2 | N | se o procedimento esta contido dentro do pacote? |
| 27 | DT_FECHAMENTO | DATE | Y | data fechamento |
| 28 | NM_USUARIO_FECHOU | VARCHAR2 | Y | Usuario que fechou a conta |
| 29 | VL_DESCONTO_FECHAMENTO | NUMBER | Y | valor desconto no fechamento da conta |
| 30 | VL_ACRESCIMO_FECHAMENTO | NUMBER | Y | valor acrescimo no fechamento da conta |
| 31 | VL_CONTA_NO_FECHAMENTO | NUMBER | Y | Valor do item no fechamento da conta |
| 32 | VL_BASE_REPASSADO | NUMBER | Y | Valor base repassado |
| 33 | CD_MOTIVO_GLOSA | NUMBER | Y | codigo motivo de glosa |
| 34 | QT_CH_UNITARIO | NUMBER | Y | qtd CH unitario |
| 35 | VL_PERCENTUAL_MULTIPLA | NUMBER | Y | valor percentual do procedimento |
| 36 | TP_PAGAMENTO | VARCHAR2 | Y | tipo de pagamento |
| 37 | CD_SETOR_PRODUZIU | NUMBER | Y | codigo do setor que produziu |
| 38 | CD_SETOR | NUMBER | Y | codigo do setor |
| 39 | CD_PADRAO | NUMBER | Y | codigo do padr?o |
| 40 | SN_HORARIO_ESPECIAL | VARCHAR2 | Y | Horario especial(s/n)? |
| 41 | CD_REG_AMB_PAI | NUMBER | Y | codigo do lote pai |
| 42 | CD_LANCAMENTO_PAI | NUMBER | Y | codigo do lancamento pai |
| 43 | CD_FRANQUIA | NUMBER | Y | codigo da franquia |
| 44 | CD_REGRA_ACOPLAMENTO | NUMBER | Y | codigo da regra acoplamento |
| 45 | VL_PERC_ACOPLAMENTO | NUMBER | Y | valor percentual do acoplamento |
| 46 | SN_PACIENTE_PAGA | VARCHAR2 | Y | Paciente paga(s/n)? |
| 47 | CD_REGRA_ATENDIMENTO | NUMBER | Y | codigo da regra de atendimento |
| 48 | CD_REGRA_ATENDIMENTO_PRO_FAT | NUMBER | Y | codigo da regra de atendimento procedimento |
| 49 | CD_FRANQUIA_VALOR_TOTAL | NUMBER | Y | codigo franquia valor total |
| 50 | CD_REG_AMB_REL | NUMBER | Y | codigo lote relacionado |
| 51 | CD_LANCAMENTO_REL | NUMBER | Y | codigo lancamento relacionado |
| 52 | CD_ITMVTO | NUMBER | Y | codigo do item de movimentac?o |
| 53 | CD_USUARIO | VARCHAR2 | Y | codigo do usuario |
| 54 | CD_MVTO | NUMBER | Y | codigo de movimentac?o |
| 55 | TP_MVTO | VARCHAR2 | Y | tipo de movimentac?o |
| 56 | HR_LANCAMENTO_FINAL | DATE | Y | hora lancamento final |
| 57 | SN_REPASSOU_VIRTUAL | VARCHAR2 | N | Repassou virtual(s/n)? |
| 58 | SN_PRONTA | VARCHAR2 | N | Pronta?(s/n)? |
| 59 | VL_DESCONTO_CONTA | NUMBER | Y | Valor desconto conta |
| 60 | DT_SESSAO | DATE | Y | data de sess?o |
| 61 | TP_MVTO_DESCONTO | VARCHAR2 | Y | tipo movimentac?o de desconto |
| 62 | TP_DESCONTO | VARCHAR2 | Y | Codigo sequencial da movimentac?o de kit na conta de faturamento |
| 63 | VL_NOTA | NUMBER | Y | valor nota |
| 64 | SN_REPASSADO | VARCHAR2 | Y | Repassado?(s/n)? |
| 65 | FATOR_RELACIONADO | NUMBER | Y | qtd fator relacionado da regra |
| 66 | NR_SEQ_PREIMPRE | NUMBER | Y | Sequencial do relatorio pre-impresso do convenio |
| 67 | CD_CONTA_KIT | NUMBER | Y | codigo  do kit na conta |
| 68 | DS_OBSERVACAO_FRANQUIA | VARCHAR2 | Y | observac?o franquia |
| 69 | CD_LANCAMENTO_REG_LANC | NUMBER | Y | codigo  lancamento  que utilizou a regra de lancamento |
| 70 | CD_REGRA_LANCAMENTO | NUMBER | Y | codigo regra de lacamento |
| 71 | CD_CONTA_PACOTE | NUMBER | Y | codigo da conta pacote |
| 72 | SN_REGRA_LANCAMENTO | VARCHAR2 | N | Indica se a conta tem regra de lanccamento aplicada |
| 73 | NR_DIFEP | VARCHAR2 | Y | Numero de controle estadual de bolsas de sangue por Hemocentros. |
| 74 | CD_IT_AGENDA_CENTRAL | NUMBER | Y | codigo do item da agenda central |
| 75 | NR_GUIA_ENVIO | VARCHAR2 | Y | Npumero de guia do envio do TISS |
| 76 | ID_IT_ENVIO | NUMBER | Y | Identificac?o do item de envio |
| 77 | INSTANC | VARCHAR2 | Y |  |
| 78 | SID | VARCHAR2 | Y |  |
| 79 | USERNAME | VARCHAR2 | Y |  |

---

## DBAMV.ITREG_AMB_ORIGINAL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REG_AMB | NUMBER | N |  |
| 2 | CD_LANCAMENTO | NUMBER | N |  |
| 3 | HR_LANCAMENTO | DATE | N |  |
| 4 | QT_LANCAMENTO | NUMBER | N |  |
| 5 | VL_UNITARIO | NUMBER | Y |  |
| 6 | VL_ACRESCIMO | NUMBER | Y |  |
| 7 | VL_DESCONTO | NUMBER | Y |  |
| 8 | CD_GRU_FAT | NUMBER | N |  |
| 9 | CD_PRO_FAT | VARCHAR2 | N |  |
| 10 | CD_ATENDIMENTO | NUMBER | N |  |
| 11 | CD_PRESTADOR | NUMBER | Y |  |
| 12 | CD_CON_PLA | NUMBER | N |  |
| 13 | CD_CONVENIO | NUMBER | N |  |
| 14 | VL_HONORARIO_UNITARIO | NUMBER | Y |  |
| 15 | VL_OPERACIONAL_UNITARIO | NUMBER | Y |  |
| 16 | CD_ATI_MED | VARCHAR2 | Y |  |
| 17 | CD_PRES_CON | NUMBER | Y |  |
| 18 | VL_PERCENTUAL_PACIENTE | NUMBER | Y |  |
| 19 | VL_FILME_UNITARIO | NUMBER | Y |  |
| 20 | VL_TOTAL_CONTA | NUMBER | Y |  |
| 21 | SN_FATURA_IMPRESSA | VARCHAR2 | N |  |
| 22 | SN_FECHADA | VARCHAR2 | N |  |
| 23 | CD_IMPORTA_REG_AMB | NUMBER | Y |  |
| 24 | SN_CONTA_CALCULADA | VARCHAR2 | N |  |
| 25 | CD_GUIA | NUMBER | Y |  |
| 26 | SN_PERTENCE_PACOTE | VARCHAR2 | N |  |
| 27 | DT_FECHAMENTO | DATE | Y |  |
| 28 | NM_USUARIO_FECHOU | VARCHAR2 | Y |  |
| 29 | VL_DESCONTO_FECHAMENTO | NUMBER | Y |  |
| 30 | VL_ACRESCIMO_FECHAMENTO | NUMBER | Y |  |
| 31 | VL_CONTA_NO_FECHAMENTO | NUMBER | Y |  |
| 32 | VL_BASE_REPASSADO | NUMBER | Y |  |
| 33 | QT_CH_UNITARIO | NUMBER | Y |  |
| 34 | VL_PERCENTUAL_MULTIPLA | NUMBER | Y |  |
| 35 | TP_PAGAMENTO | VARCHAR2 | Y |  |
| 36 | CD_SETOR | NUMBER | Y |  |
| 37 | CD_SETOR_PRODUZIU | NUMBER | Y |  |
| 38 | CD_MOTIVO_GLOSA | NUMBER | Y |  |
| 39 | CD_PADRAO | NUMBER | Y |  |
| 40 | SN_HORARIO_ESPECIAL | VARCHAR2 | Y |  |
| 41 | CD_REG_AMB_PAI | NUMBER | Y |  |
| 42 | CD_LANCAMENTO_PAI | NUMBER | Y |  |
| 43 | CD_FRANQUIA | NUMBER | Y |  |
| 44 | CD_REGRA_ACOPLAMENTO | NUMBER | Y |  |
| 45 | VL_PERC_ACOPLAMENTO | NUMBER | Y |  |
| 46 | SN_PACIENTE_PAGA | VARCHAR2 | Y |  |
| 47 | CD_REGRA_ATENDIMENTO | NUMBER | Y |  |
| 48 | CD_REGRA_ATENDIMENTO_PRO_FAT | NUMBER | Y |  |
| 49 | CD_FRANQUIA_VALOR_TOTAL | NUMBER | Y |  |
| 50 | CD_REG_AMB_REL | NUMBER | Y |  |
| 51 | CD_LANCAMENTO_REL | NUMBER | Y |  |
| 52 | CD_USUARIO | VARCHAR2 | Y |  |
| 53 | CD_MVTO | NUMBER | Y |  |
| 54 | TP_MVTO | VARCHAR2 | Y |  |
| 55 | HR_LANCAMENTO_FINAL | DATE | Y |  |
| 56 | SN_REPASSOU_VIRTUAL | VARCHAR2 | N |  |
| 57 | CD_ITMVTO | NUMBER | Y |  |
| 58 | SN_PRONTA | VARCHAR2 | N |  |
| 59 | VL_DESCONTO_CONTA | NUMBER | Y |  |
| 60 | DT_SESSAO | DATE | Y |  |
| 61 | TP_MVTO_DESCONTO | VARCHAR2 | Y |  |
| 62 | TP_DESCONTO | VARCHAR2 | Y |  |
| 63 | FATOR_RELACIONADO | NUMBER | Y | Quantidade do Fator relacionado da Regra |
| 64 | NR_SEQ_PREIMPRE | NUMBER | Y | Sequencial do relatorio pre-impresso do convenio |
| 65 | VL_NOTA | NUMBER | Y | Valor do item na nota fiscal |
| 66 | SN_REPASSADO | VARCHAR2 | Y | Campo para identificar se o repasse foi realizado pra o item. |
| 67 | CD_CONTA_KIT | NUMBER | Y | Codigo sequencial da movimentac?o de kit na conta de faturamento |
| 68 | DS_OBSERVACAO_FRANQUIA | VARCHAR2 | Y | Observac?o para franquia ou desconto com a conta fechada |
| 69 | CD_LANCAMENTO_REG_LANC | NUMBER | Y |  |
| 70 | CD_REGRA_LANCAMENTO | NUMBER | Y |  |
| 71 | CD_CONTA_PACOTE | NUMBER | Y | Codigo sequencial do pacote na conta ambulatorial |
| 72 | NR_DIFEP | VARCHAR2 | Y | Numero de controle estadual de bolsas de sangue por Hemocentros. |
| 73 | SN_REGRA_LANCAMENTO | VARCHAR2 | N | Indica se a conta tem regra de lancamento aplicada. |
| 74 | CD_IT_AGENDA_CENTRAL | NUMBER | Y | Codigo da item de agenda de origem do lancamento. Relacionamento visando a fidelizac?o de valores... |
| 75 | VL_TOTAL_DISTRIBUIDO | NUMBER | Y | Valor distribuido para a conta filha |
| 76 | VL_BASE_HONOR_REPASSE | NUMBER | Y | Valor do honorário proporcional ao valor total, calculado de acordo com valor de tabela do prorce... |
| 77 | VL_HONOR_DISTRIBUIDO | NUMBER | Y | VALOR APLICADO NA DISTRIBUICAO DE CONTA, VALOR DESCONTADO DA COLUNA VL_BASE_HONOR_REPASSE |
| 78 | SN_PLANTAO_EMERG_PRESTADOR | VARCHAR2 | Y | Identifica se houve Plantão Emergencial de Prestador sobre procedimento, não incide valorização d... |

---

## DBAMV.ITREG_FAT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REG_FAT | NUMBER | N |  |
| 2 | CD_LANCAMENTO | NUMBER | N |  |
| 3 | DT_LANCAMENTO | DATE | N |  |
| 4 | HR_LANCAMENTO | DATE | Y |  |
| 5 | QT_LANCAMENTO | NUMBER | N |  |
| 6 | VL_PERCENTUAL_MULTIPLA | NUMBER | N |  |
| 7 | VL_UNITARIO | NUMBER | Y |  |
| 8 | VL_FILME_UNITARIO | NUMBER | Y |  |
| 9 | VL_ACRESCIMO | NUMBER | Y |  |
| 10 | VL_DESCONTO | NUMBER | Y |  |
| 11 | CD_GRU_FAT | NUMBER | N |  |
| 12 | CD_PRO_FAT | VARCHAR2 | N |  |
| 13 | CD_PRESTADOR | NUMBER | Y |  |
| 14 | NR_PADRAO | NUMBER | Y |  |
| 15 | VL_HONORARIO_UNITARIO | NUMBER | Y |  |
| 16 | VL_OPERACIONAL_UNITARIO | NUMBER | Y |  |
| 17 | CD_PRES_CON | NUMBER | Y |  |
| 18 | VL_PERCENTUAL_PACIENTE | NUMBER | Y |  |
| 19 | VL_TOTAL_CONTA | NUMBER | Y |  |
| 20 | CD_IMPORTA_REG_FAT | NUMBER | Y |  |
| 21 | CD_GUIA | NUMBER | Y |  |
| 22 | SN_PERTENCE_PACOTE | VARCHAR2 | N |  |
| 23 | VL_BASE_REPASSADO | NUMBER | Y |  |
| 24 | CD_MOTIVO_GLOSA | NUMBER | Y |  |
| 25 | QT_CH_UNITARIO | NUMBER | Y |  |
| 26 | TP_PAGAMENTO | VARCHAR2 | Y |  |
| 27 | CD_SETOR_PRODUZIU | NUMBER | Y |  |
| 28 | CD_SETOR | NUMBER | Y |  |
| 29 | CD_PADRAO | NUMBER | Y |  |
| 30 | SN_HORARIO_ESPECIAL | VARCHAR2 | Y |  |
| 31 | QT_PONTOS | NUMBER | Y |  |
| 32 | SN_PROCED_AUTORIZADO | VARCHAR2 | Y |  |
| 33 | TP_ALTA_UTI_NEO | VARCHAR2 | Y |  |
| 34 | QT_PESO_RN | NUMBER | Y |  |
| 35 | QT_MES_GESTACAO | NUMBER | Y |  |
| 36 | CD_SUS | VARCHAR2 | Y |  |
| 37 | CD_TIPO_VINCULO | NUMBER | Y |  |
| 38 | CD_ATI_MED | VARCHAR2 | Y |  |
| 39 | VL_SP | NUMBER | Y |  |
| 40 | VL_SH | NUMBER | Y |  |
| 41 | VL_SD | NUMBER | Y |  |
| 42 | VL_ATO | NUMBER | Y |  |
| 43 | CD_SUS_AUXILIAR | VARCHAR2 | Y |  |
| 44 | CD_REG_FAT_PAI | NUMBER | Y |  |
| 45 | CD_LANCAMENTO_PAI | NUMBER | Y |  |
| 46 | SN_PROCED_REALIZADO | VARCHAR2 | Y |  |
| 47 | CD_FRANQUIA | NUMBER | Y |  |
| 48 | CD_REGRA_ACOPLAMENTO | NUMBER | Y |  |
| 49 | VL_PERC_ACOPLAMENTO | NUMBER | Y |  |
| 50 | SN_PACIENTE_PAGA | VARCHAR2 | Y |  |
| 51 | CD_REGRA_ATENDIMENTO | NUMBER | Y |  |
| 52 | CD_REGRA_ATENDIMENTO_PRO_FAT | NUMBER | Y |  |
| 53 | CD_REG_FAT_REL | NUMBER | Y |  |
| 54 | CD_LANCAMENTO_REL | NUMBER | Y |  |
| 55 | CD_USUARIO | VARCHAR2 | Y |  |
| 56 | CD_MVTO | NUMBER | Y |  |
| 57 | TP_MVTO | VARCHAR2 | Y |  |
| 58 | HR_LANCAMENTO_FINAL | DATE | Y |  |
| 59 | VL_DESCONTO_CONTA | NUMBER | Y |  |
| 60 | SN_REPASSOU_VIRTUAL | VARCHAR2 | N |  |
| 61 | VL_NOTA | NUMBER | Y |  |
| 62 | SN_IMP_LAUDO_ALTERACAO | VARCHAR2 | Y |  |
| 63 | VL_PONTO_REPASSADO | NUMBER | Y |  |
| 64 | CD_ITMVTO | NUMBER | Y |  |
| 65 | SN_REPASSADO | VARCHAR2 | Y |  |
| 66 | FATOR_RELACIONADO | NUMBER | Y | Quantidade do Fator relacionado da Regra |
| 67 | NR_SEQ_PREIMPRE | NUMBER | Y | Sequencial do relatorio pre-impresso do convenio |
| 68 | CD_CONTA_PAI | NUMBER | Y | Codigo da conta pai para relacionamento deste item |
| 69 | CD_MULTI_EMPRESA | NUMBER | Y | Codigo da empresa a qual pertence a cobranca do item |
| 70 | CD_CONTA_KIT | NUMBER | Y | Codigo sequencial da movimentac?o de kit na conta de faturamento |
| 71 | TP_RESULTADO_EXAME_ACH | VARCHAR2 | Y | Tipo de Resultado do exame ACH |
| 72 | TP_SITUACAO_ACH | VARCHAR2 | Y | Situacao do registro no ACH |
| 73 | CD_GERACAO_ACH_AUTORIZADO | NUMBER | Y | Codigo da geracao do ACH para procedimentos autorizados |
| 74 | CD_LANCAMENTO_REG_LANC | NUMBER | Y | Codigo de lancamento do procedimeto principal que orginou a aplicac?o da regra |
| 75 | CD_REGRA_LANCAMENTO | NUMBER | Y | Codigo da regra de lancamento |
| 76 | CD_CONTA_PACOTE | NUMBER | Y | Codigo sequencial do pacote na conta hospitalar |
| 77 | SN_CALC_DIFERENCA_ACOMODACAO | VARCHAR2 | Y | Identifica se havera ou n?o, o calculo da diferenca entre o valor da acomodac?o coberta pelo conv... |
| 78 | NR_DIFEP | VARCHAR2 | Y | Numero de controle estadual de bolsas de sangue por Hemocentros. |
| 79 | NR_GUIA_ENVIO | VARCHAR2 | Y | Numero da Guia de envio ao Convenio |
| 80 | CD_CBO_PRESTADOR | VARCHAR2 | Y | Codigo do CBO do prestador |
| 81 | CD_PROCEDIMENTO | VARCHAR2 | Y | Codigo do procedimento SUS |
| 82 | TP_APURAR_VALOR | NUMBER | Y | Identifica para quem sera apurado o valor do procedimento.(1-CPF PROF, 2-CNPJ, 3-CNES PROPRIO e 4... |
| 83 | TP_APURAR_VALOR_ORIGEM | VARCHAR2 | Y | Armazena uma string com a concatenac?o do Tipo de Vinculo e Tipo de Apurac?o originais |
| 84 | ID_IT_ENVIO | NUMBER | Y | Identificador que relaciona este lancamento ao item da Guias Tiss gerado para Envio. |
| 85 | NM_INSTANCIA | VARCHAR2 | Y | Instancia da tabela gv$session, para auxiliar no processo de regra de lancamento |
| 86 | NM_SESSAO | VARCHAR2 | Y | SID da tabela gv$session, para auxiliar no processo de regra de lancamento |
| 87 | NM_USUARIO | VARCHAR2 | Y | Usuario que realizou o processo de regra de lancamento |
| 88 | INSTANC | VARCHAR2 | Y | Instancia da tabela gv$session, para auxiliar no processo de regra de lancamento |
| 89 | SID | VARCHAR2 | Y | SID da tabela gv$session, para auxiliar no processo de regra de lancamento |
| 90 | USERNAME | VARCHAR2 | Y | Usuario que realizou o processo de regra de lancamento |
| 91 | CD_PRIORIDADE_AIH | VARCHAR2 | Y | Identifica priodidade do item da conta AIH. |
| 92 | CD_SEQ_INTEGRA | NUMBER | Y | Codigo sequencial da integrac?o |
| 93 | DT_INTEGRA | DATE | Y | Data da integrac?o |
| 94 | CD_SERVICO_SUS | VARCHAR2 | Y | Codigo do servico SUS |
| 95 | CD_CLASSIFICACAO_SUS | VARCHAR2 | Y | Codigo da classificac?o SUS |
| 96 | SN_INTERCORRENCIA | VARCHAR2 | Y | Informa se o procedimento e de intercorrencia |
| 97 | VL_DESCONTO_PREST_DISTRIBUICAO | NUMBER | Y | Coluna para guardar o valor do desconto do prestador na distribuição de contas |
| 98 | VL_HONORARIO_PREST_DISTRIBUI | NUMBER | Y | Valor anterior do Honorário após desconto na distribuicao |
| 99 | VL_TOTAL_DISTRIBUIDO | NUMBER | Y | VALOR DISTRIBUIDO PARA A CONTA FILHA |
| 100 | VL_BASE_HONOR_REPASSE | NUMBER | Y | VALOR DO HONORÁRIO PROPORCIONAL AO VALOR TOTAL, CALCULADO DE ACORDO COM VALOR DE TABELA DO PRORCE... |
| 101 | VL_HONOR_DISTRIBUIDO | NUMBER | Y | VALOR APLICADO NA DISTRIBUICAO DE CONTA, VALOR DESCONTADO DA COLUNA VL_BASE_HONOR_REPASSE |
| 102 | DT_PRODUCAO | DATE | Y | Data em que o registro foi criado na tabela. |
| 103 | CD_REGRA_SUBSTITUICAO_PROCED | NUMBER | Y | Código da regra de substituição, se houver. |
| 104 | SN_PLANTAO_EMERG_PRESTADOR | VARCHAR2 | Y | Identifica se houve Plantão Emergencial de Prestador sobre procedimento, não incide valorização d... |
| 105 | E_VL_ACRESCIMO_CONTA | NUMBER | Y | [EXTENSIBILIDADE] Indica o valor do acréscimo a conta. |
| 106 | VL_ATO_SUS_COMPLEMENTAR | NUMBER | Y | Coluna Criada para implementação da tabela Paulista valores complementares |
| 107 | SN_REVISADO | VARCHAR2 | Y | Indica se o item já foi revisado. |
| 108 | CD_USUARIO_REVISOU | VARCHAR2 | Y | Usuário que realizou a última revisão. |
| 109 | DT_REVISADO | DATE | Y | Data que realizou a última revisão. |
| 110 | VL_SH_FEDERAL | NUMBER | Y | Valor do sh federal |
| 111 | VL_SH_LOCAL | NUMBER | Y | Valor do sh local |
| 112 | VL_SP_FEDERAL | NUMBER | Y | Valor do sp federal |
| 113 | VL_SP_LOCAL | NUMBER | Y | Valor do sp local |
| 114 | SN_REPASSADO_PARCELADO | VARCHAR2 | N | Indicador que o item da conta foi realizado baixa de forma parcelada. |

---

## DBAMV.ITREG_FAT_ESPELHO
> tabela de log dos itens hospitalares

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REG_FAT | NUMBER | N | Codigo da conta. |
| 2 | CD_LANCAMENTO | NUMBER | N | Codigo do lancamento. |
| 3 | DT_LANCAMENTO | DATE | N | Data do lancamento. |
| 4 | HR_LANCAMENTO | DATE | Y | Hora do lancamento. |
| 5 | QT_LANCAMENTO | NUMBER | N | Quantidade do lancamento. |
| 6 | VL_PERCENTUAL_MULTIPLA | NUMBER | N | valor percentual do procedimento. |
| 7 | VL_UNITARIO | NUMBER | Y | valor unitario do procedimento. |
| 8 | VL_FILME_UNITARIO | NUMBER | Y | valor do filme. |
| 9 | VL_ACRESCIMO | NUMBER | Y | valor acrescimo. |
| 10 | VL_DESCONTO | NUMBER | Y | valor desconto. |
| 11 | CD_GRU_FAT | NUMBER | N | codigo do grupo de faturamento. |
| 12 | CD_PRO_FAT | VARCHAR2 | N | codigo do procedimento. |
| 13 | CD_PRESTADOR | NUMBER | Y | codigo do prestador. |
| 14 | NR_PADRAO | NUMBER | Y | numero padrao. |
| 15 | VL_HONORARIO_UNITARIO | NUMBER | Y | valor de honorario unitario. |
| 16 | VL_OPERACIONAL_UNITARIO | NUMBER | Y | valor de honorario unitario. |
| 17 | CD_PRES_CON | NUMBER | Y | codigo pres_con |
| 18 | VL_PERCENTUAL_PACIENTE | NUMBER | Y | valor percentual do paciente. |
| 19 | VL_TOTAL_CONTA | NUMBER | Y | valor total do procedimento. |
| 20 | CD_IMPORTA_REG_FAT | NUMBER | Y | codigo importac?o da reg_fat. |
| 21 | CD_GUIA | NUMBER | Y | codigo guia. |
| 22 | SN_PERTENCE_PACOTE | VARCHAR2 | N | Pertence a pacote(s/n)?. |
| 23 | VL_BASE_REPASSADO | NUMBER | Y | valor base repassado. |
| 24 | CD_MOTIVO_GLOSA | NUMBER | Y | codigo motivo da glosa. |
| 25 | QT_CH_UNITARIO | NUMBER | Y | qtd CH unitario. |
| 26 | TP_PAGAMENTO | VARCHAR2 | Y | tipo pagamento. |
| 27 | CD_SETOR_PRODUZIU | NUMBER | Y | codigo setor produziu. |
| 28 | CD_SETOR | NUMBER | Y | codigo setor. |
| 29 | CD_PADRAO | NUMBER | Y | codigo padr?o. |
| 30 | SN_HORARIO_ESPECIAL | VARCHAR2 | Y | Horario especial(s/n)? |
| 31 | QT_PONTOS | NUMBER | Y | Quantidade pontos? |
| 32 | SN_PROCED_AUTORIZADO | VARCHAR2 | Y | Procedimento autorizado? |
| 33 | TP_ALTA_UTI_NEO | VARCHAR2 | Y | tipo alta uti_neo |
| 34 | QT_PESO_RN | NUMBER | Y | qtd peso rn |
| 35 | QT_MES_GESTACAO | NUMBER | Y | qtd mes gestac?o |
| 36 | CD_SUS | VARCHAR2 | Y | codigo SUS |
| 37 | CD_TIPO_VINCULO | NUMBER | Y | codigo SUS |
| 38 | CD_ATI_MED | VARCHAR2 | Y | codigo atividade medica |
| 39 | VL_SP | NUMBER | Y | valor SP |
| 40 | VL_SH | NUMBER | Y | valor SH |
| 41 | VL_SD | NUMBER | Y | valor SD |
| 42 | VL_ATO | NUMBER | Y | valor ATO |
| 43 | CD_SUS_AUXILIAR | VARCHAR2 | Y | Codigo da conta pai SUS auxiliar. |
| 44 | CD_REG_FAT_PAI | NUMBER | Y | Codigo da conta pai. |
| 45 | CD_LANCAMENTO_PAI | NUMBER | Y | Codigo do lancamento conta pai para este item. |
| 46 | SN_PROCED_REALIZADO | VARCHAR2 | Y | Procedimento realizado?(s/n) |
| 47 | CD_FRANQUIA | NUMBER | Y | Codigo da franquia. |
| 48 | CD_REGRA_ACOPLAMENTO | NUMBER | Y | Codigo da regra de acoplamento. |
| 49 | VL_PERC_ACOPLAMENTO | NUMBER | Y | valor percentual acoplamento. |
| 50 | SN_PACIENTE_PAGA | VARCHAR2 | Y | Paciente paga(s/n)? |
| 51 | CD_REGRA_ATENDIMENTO | NUMBER | Y | Codigo regra atendimento |
| 52 | CD_REGRA_ATENDIMENTO_PRO_FAT | NUMBER | Y | Codigo regra atendimento procedimento |
| 53 | CD_REG_FAT_REL | NUMBER | Y | Codigo da conta do relacionado |
| 54 | CD_LANCAMENTO_REL | NUMBER | Y | Codigo do lancamento do relacionado |
| 55 | CD_USUARIO | VARCHAR2 | Y | Codigo do usuario |
| 56 | CD_MVTO | NUMBER | Y | Codigo de movimentac?o |
| 57 | TP_MVTO | VARCHAR2 | Y | Tipo de movimentac?o |
| 58 | HR_LANCAMENTO_FINAL | DATE | Y | Hora lancamento final |
| 59 | VL_DESCONTO_CONTA | NUMBER | Y | Valor desconto conta |
| 60 | SN_REPASSOU_VIRTUAL | VARCHAR2 | N | Repasse virtual(s/n)? |
| 61 | VL_NOTA | NUMBER | Y | Valor nota |
| 62 | SN_IMP_LAUDO_ALTERACAO | VARCHAR2 | Y | sn_imp_laudo_alteracao? |
| 63 | VL_PONTO_REPASSADO | NUMBER | Y | Valor ponto repassado |
| 64 | CD_ITMVTO | NUMBER | Y | Codigo do item movimentac?o |
| 65 | SN_REPASSADO | VARCHAR2 | Y | Repassado(s/n)? |
| 66 | FATOR_RELACIONADO | NUMBER | Y | fator relacionado do item |
| 67 | NR_SEQ_PREIMPRE | NUMBER | Y | Sequencial do relatorio pre-impresso do convenio |
| 68 | CD_CONTA_PAI | NUMBER | Y | Codigo da conta pai para relacionamento deste item. |
| 69 | CD_MULTI_EMPRESA | NUMBER | Y | Codigo da empresa logada. |
| 70 | CD_CONTA_KIT | NUMBER | Y | Codigo sequencial da movimentac?o de kit na conta de faturamento. |
| 71 | TP_RESULTADO_EXAME_ACH | VARCHAR2 | Y | Tipo de resultado do exame ach. |
| 72 | TP_SITUACAO_ACH | VARCHAR2 | Y | Tipo de situac?o ACH. |
| 73 | CD_GERACAO_ACH_AUTORIZADO | NUMBER | Y | Cod gerac?o ACH autorizado |
| 74 | CD_LANCAMENTO_REG_LANC | NUMBER | Y | Cod lancamento referente regra lancamento |
| 75 | CD_REGRA_LANCAMENTO | NUMBER | Y | Cod regra lancamento |
| 76 | CD_CONTA_PACOTE | NUMBER | Y | Cod conta de pacote |
| 77 | SN_CALC_DIFERENCA_ACOMODACAO | VARCHAR2 | Y | Identifica se havera ou n?o, o calculo da diferenca entre o valor da acomodac?o coberta pelo conv... |
| 78 | NR_DIFEP | VARCHAR2 | Y | Numero de controle estadual de bolsas de sangue por Hemocentros. |
| 79 | NR_GUIA_ENVIO | VARCHAR2 | Y | Numero de guia do envio do TISS |
| 80 | CD_CBO_PRESTADOR | VARCHAR2 | Y | Codigo co dbo do prestador |
| 81 | CD_PROCEDIMENTO | VARCHAR2 | Y | Codigo do procedimento |
| 82 | TP_APURAR_VALOR | NUMBER | Y | Tipo de apurac?o do valor |
| 83 | TP_APURAR_VALOR_ORIGEM | VARCHAR2 | Y | Tipo de aprurac?o do valor de origem |
| 84 | ID_IT_ENVIO | NUMBER | Y | Identificac?o do item de envio |
| 85 | INSTANC | VARCHAR2 | Y |  |
| 86 | SID | VARCHAR2 | Y |  |
| 87 | USERNAME | VARCHAR2 | Y |  |

---

## DBAMV.ITREG_FAT_LOG_CHEC_TELA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REG_FAT | NUMBER | N |  |
| 2 | CD_LANCAMENTO | NUMBER | N |  |
| 3 | DT_LANCAMENTO | DATE | N |  |
| 4 | HR_LANCAMENTO | DATE | Y |  |
| 5 | QT_LANCAMENTO | NUMBER | N |  |
| 6 | VL_PERCENTUAL_MULTIPLA | NUMBER | N |  |
| 7 | VL_UNITARIO | NUMBER | Y |  |
| 8 | VL_FILME_UNITARIO | NUMBER | Y |  |
| 9 | VL_ACRESCIMO | NUMBER | Y |  |
| 10 | VL_DESCONTO | NUMBER | Y |  |
| 11 | CD_GRU_FAT | NUMBER | N |  |
| 12 | CD_PRO_FAT | VARCHAR2 | N |  |
| 13 | CD_PRESTADOR | NUMBER | Y |  |
| 14 | NR_PADRAO | NUMBER | Y |  |
| 15 | VL_HONORARIO_UNITARIO | NUMBER | Y |  |
| 16 | VL_OPERACIONAL_UNITARIO | NUMBER | Y |  |
| 17 | CD_PRES_CON | NUMBER | Y |  |
| 18 | VL_PERCENTUAL_PACIENTE | NUMBER | Y |  |
| 19 | VL_TOTAL_CONTA | NUMBER | Y |  |
| 20 | CD_IMPORTA_REG_FAT | NUMBER | Y |  |
| 21 | CD_GUIA | NUMBER | Y |  |
| 22 | SN_PERTENCE_PACOTE | VARCHAR2 | N |  |
| 23 | VL_BASE_REPASSADO | NUMBER | Y |  |
| 24 | CD_MOTIVO_GLOSA | NUMBER | Y |  |
| 25 | QT_CH_UNITARIO | NUMBER | Y |  |
| 26 | TP_PAGAMENTO | VARCHAR2 | Y |  |
| 27 | CD_SETOR_PRODUZIU | NUMBER | Y |  |
| 28 | CD_SETOR | NUMBER | Y |  |
| 29 | CD_PADRAO | NUMBER | Y |  |
| 30 | SN_HORARIO_ESPECIAL | VARCHAR2 | Y |  |
| 31 | QT_PONTOS | NUMBER | Y |  |
| 32 | SN_PROCED_AUTORIZADO | VARCHAR2 | Y |  |
| 33 | TP_ALTA_UTI_NEO | VARCHAR2 | Y |  |
| 34 | QT_PESO_RN | NUMBER | Y |  |
| 35 | QT_MES_GESTACAO | NUMBER | Y |  |
| 36 | CD_SUS | VARCHAR2 | Y |  |
| 37 | CD_TIPO_VINCULO | NUMBER | Y |  |
| 38 | CD_ATI_MED | VARCHAR2 | Y |  |
| 39 | VL_SP | NUMBER | Y |  |
| 40 | VL_SH | NUMBER | Y |  |
| 41 | VL_SD | NUMBER | Y |  |
| 42 | VL_ATO | NUMBER | Y |  |
| 43 | CD_SUS_AUXILIAR | VARCHAR2 | Y |  |
| 44 | CD_REG_FAT_PAI | NUMBER | Y |  |
| 45 | CD_LANCAMENTO_PAI | NUMBER | Y |  |
| 46 | SN_PROCED_REALIZADO | VARCHAR2 | Y |  |
| 47 | CD_FRANQUIA | NUMBER | Y |  |
| 48 | CD_REGRA_ACOPLAMENTO | NUMBER | Y |  |
| 49 | VL_PERC_ACOPLAMENTO | NUMBER | Y |  |
| 50 | SN_PACIENTE_PAGA | VARCHAR2 | Y |  |
| 51 | CD_REGRA_ATENDIMENTO | NUMBER | Y |  |
| 52 | CD_REGRA_ATENDIMENTO_PRO_FAT | NUMBER | Y |  |
| 53 | CD_REG_FAT_REL | NUMBER | Y |  |
| 54 | CD_LANCAMENTO_REL | NUMBER | Y |  |
| 55 | CD_USUARIO | VARCHAR2 | Y |  |
| 56 | CD_MVTO | NUMBER | Y |  |
| 57 | TP_MVTO | VARCHAR2 | Y |  |
| 58 | HR_LANCAMENTO_FINAL | DATE | Y |  |
| 59 | VL_DESCONTO_CONTA | NUMBER | Y |  |
| 60 | SN_REPASSOU_VIRTUAL | VARCHAR2 | N |  |
| 61 | VL_NOTA | NUMBER | Y |  |
| 62 | SN_IMP_LAUDO_ALTERACAO | VARCHAR2 | Y |  |
| 63 | VL_PONTO_REPASSADO | NUMBER | Y |  |
| 64 | CD_ITMVTO | NUMBER | Y |  |
| 65 | SN_REPASSADO | VARCHAR2 | Y |  |
| 66 | FATOR_RELACIONADO | NUMBER | Y |  |
| 67 | NR_SEQ_PREIMPRE | NUMBER | Y |  |
| 68 | CD_CONTA_PAI | NUMBER | Y |  |
| 69 | CD_MULTI_EMPRESA | NUMBER | Y |  |
| 70 | CD_CONTA_KIT | NUMBER | Y |  |
| 71 | TP_RESULTADO_EXAME_ACH | VARCHAR2 | Y |  |
| 72 | TP_SITUACAO_ACH | VARCHAR2 | Y |  |
| 73 | CD_GERACAO_ACH_AUTORIZADO | NUMBER | Y |  |
| 74 | CD_LANCAMENTO_REG_LANC | NUMBER | Y |  |
| 75 | CD_REGRA_LANCAMENTO | NUMBER | Y |  |
| 76 | CD_CONTA_PACOTE | NUMBER | Y |  |
| 77 | SN_CALC_DIFERENCA_ACOMODACAO | VARCHAR2 | Y |  |
| 78 | NR_DIFEP | VARCHAR2 | Y |  |
| 79 | NR_GUIA_ENVIO | VARCHAR2 | Y |  |
| 80 | CD_CBO_PRESTADOR | VARCHAR2 | Y |  |
| 81 | CD_PROCEDIMENTO | VARCHAR2 | Y |  |
| 82 | TP_APURAR_VALOR | NUMBER | Y |  |
| 83 | TP_APURAR_VALOR_ORIGEM | VARCHAR2 | Y |  |
| 84 | ID_IT_ENVIO | NUMBER | Y |  |
| 85 | NM_INSTANCIA | VARCHAR2 | Y |  |
| 86 | NM_SESSAO | VARCHAR2 | Y |  |
| 87 | NM_USUARIO | VARCHAR2 | Y |  |
| 88 | INSTANC | VARCHAR2 | Y |  |
| 89 | SID | VARCHAR2 | Y |  |
| 90 | USERNAME | VARCHAR2 | Y |  |
| 91 | CD_PRIORIDADE_AIH | VARCHAR2 | Y |  |
| 92 | CD_SEQ_INTEGRA | NUMBER | Y |  |
| 93 | DT_INTEGRA | DATE | Y |  |
| 94 | CD_SERVICO_SUS | VARCHAR2 | Y |  |
| 95 | CD_CLASSIFICACAO_SUS | VARCHAR2 | Y |  |
| 96 | SN_INTERCORRENCIA | VARCHAR2 | Y |  |
| 97 | DT_LOG | DATE | Y |  |
| 98 | USUARIO_LOG | VARCHAR2 | Y |  |

---

## DBAMV.ITREG_FAT_ORIGINAL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REG_FAT | NUMBER | N |  |
| 2 | CD_LANCAMENTO | NUMBER | N |  |
| 3 | DT_LANCAMENTO | DATE | N |  |
| 4 | HR_LANCAMENTO | DATE | Y |  |
| 5 | QT_LANCAMENTO | NUMBER | N |  |
| 6 | VL_PERCENTUAL_MULTIPLA | NUMBER | N |  |
| 7 | VL_UNITARIO | NUMBER | Y |  |
| 8 | VL_FILME_UNITARIO | NUMBER | Y |  |
| 9 | VL_ACRESCIMO | NUMBER | Y |  |
| 10 | VL_DESCONTO | NUMBER | Y |  |
| 11 | CD_GRU_FAT | NUMBER | N |  |
| 12 | CD_PRO_FAT | VARCHAR2 | N |  |
| 13 | CD_PRESTADOR | NUMBER | Y |  |
| 14 | NR_PADRAO | NUMBER | Y |  |
| 15 | VL_HONORARIO_UNITARIO | NUMBER | Y |  |
| 16 | VL_OPERACIONAL_UNITARIO | NUMBER | Y |  |
| 17 | CD_PRES_CON | NUMBER | Y |  |
| 18 | VL_PERCENTUAL_PACIENTE | NUMBER | Y |  |
| 19 | VL_TOTAL_CONTA | NUMBER | Y |  |
| 20 | CD_IMPORTA_REG_FAT | NUMBER | Y |  |
| 21 | CD_GUIA | NUMBER | Y |  |
| 22 | SN_PERTENCE_PACOTE | VARCHAR2 | N |  |
| 23 | VL_BASE_REPASSADO | NUMBER | Y |  |
| 24 | QT_CH_UNITARIO | NUMBER | Y |  |
| 25 | TP_PAGAMENTO | VARCHAR2 | Y |  |
| 26 | CD_SETOR | NUMBER | Y |  |
| 27 | CD_SETOR_PRODUZIU | NUMBER | Y |  |
| 28 | CD_PADRAO | NUMBER | Y |  |
| 29 | SN_HORARIO_ESPECIAL | VARCHAR2 | Y |  |
| 30 | QT_PONTOS | NUMBER | Y |  |
| 31 | SN_PROCED_AUTORIZADO | VARCHAR2 | Y |  |
| 32 | TP_ALTA_UTI_NEO | VARCHAR2 | Y |  |
| 33 | QT_PESO_RN | NUMBER | Y |  |
| 34 | QT_MES_GESTACAO | NUMBER | Y |  |
| 35 | CD_SUS | VARCHAR2 | Y |  |
| 36 | CD_TIPO_VINCULO | NUMBER | Y |  |
| 37 | CD_ATI_MED | VARCHAR2 | Y |  |
| 38 | VL_SP | NUMBER | Y |  |
| 39 | VL_SH | NUMBER | Y |  |
| 40 | VL_SD | NUMBER | Y |  |
| 41 | VL_ATO | NUMBER | Y |  |
| 42 | CD_SUS_AUXILIAR | VARCHAR2 | Y |  |
| 43 | CD_REG_FAT_PAI | NUMBER | Y |  |
| 44 | CD_LANCAMENTO_PAI | NUMBER | Y |  |
| 45 | CD_FRANQUIA | NUMBER | Y |  |
| 46 | SN_PROCED_REALIZADO | VARCHAR2 | Y |  |
| 47 | CD_REGRA_ACOPLAMENTO | NUMBER | Y |  |
| 48 | VL_PERC_ACOPLAMENTO | NUMBER | Y |  |
| 49 | SN_PACIENTE_PAGA | VARCHAR2 | Y |  |
| 50 | CD_REGRA_ATENDIMENTO | NUMBER | Y |  |
| 51 | CD_REGRA_ATENDIMENTO_PRO_FAT | NUMBER | Y |  |
| 52 | CD_REG_FAT_REL | NUMBER | Y |  |
| 53 | CD_LANCAMENTO_REL | NUMBER | Y |  |
| 54 | CD_USUARIO | VARCHAR2 | Y |  |
| 55 | CD_MVTO | NUMBER | Y |  |
| 56 | TP_MVTO | VARCHAR2 | Y |  |
| 57 | HR_LANCAMENTO_FINAL | DATE | Y |  |
| 58 | VL_DESCONTO_CONTA | NUMBER | Y |  |
| 59 | SN_REPASSOU_VIRTUAL | VARCHAR2 | N |  |
| 60 | FATOR_RELACIONADO | NUMBER | Y | Quantidade do Fator relacionado da Regra |
| 61 | CD_ITMVTO | NUMBER | Y | Armazena o codigo identificados dos itens de movimentacao dos sistemas que originaram o lancamento |
| 62 | CD_CONTA_PAI | NUMBER | Y | Codigo da conta pai para relacionamento deste item |
| 63 | CD_MULTI_EMPRESA | NUMBER | Y | Codigo da empresa a qual pertence a cobranca do item |
| 64 | SN_IMP_LAUDO_ALTERACAO | VARCHAR2 | Y | Imprime laudo da alterac?o sim ou n?o |
| 65 | VL_PONTO_REPASSADO | NUMBER | Y | Valor do ponto repassado |
| 66 | SN_REPASSADO | VARCHAR2 | Y | Indica se o registro ja foi repassado |
| 67 | NR_SEQ_PREIMPRE | NUMBER | Y | Sequencial do relatorio pre-impresso do convenio |
| 68 | CD_CONTA_KIT | NUMBER | Y | Codigo sequencial da movimentac?o de kit na conta de faturamento |
| 69 | CD_MOTIVO_GLOSA | NUMBER | Y | Codigo do motivo da glosa |
| 70 | VL_NOTA | NUMBER | Y | Valor do item na nota |
| 71 | CD_LANCAMENTO_REG_LANC | NUMBER | Y |  |
| 72 | CD_REGRA_LANCAMENTO | NUMBER | Y |  |
| 73 | CD_CONTA_PACOTE | NUMBER | Y | Codigo sequencial do pacote na conta hospitalar |
| 74 | SN_CALC_DIFERENCA_ACOMODACAO | VARCHAR2 | Y | Identifica se havera ou n?o, o calculo da diferenca entre o valor da acomodac?o coberta pelo conv... |
| 75 | NR_DIFEP | VARCHAR2 | Y | Numero de controle estadual de bolsas de sangue por Hemocentros. |
| 76 | VL_TOTAL_DISTRIBUIDO | NUMBER | Y | VALOR DISTRIBUIDO PARA A CONTA FILHA |
| 77 | VL_BASE_HONOR_REPASSE | NUMBER | Y | VALOR DO HONORÁRIO PROPORCIONAL AO VALOR TOTAL, CALCULADO DE ACORDO COM VALOR DE TABELA DO PRORCE... |
| 78 | VL_HONOR_DISTRIBUIDO | NUMBER | Y | VALOR APLICADO NA DISTRIBUICAO DE CONTA, VALOR DESCONTADO DA COLUNA VL_BASE_HONOR_REPASSE |
| 79 | SN_PLANTAO_EMERG_PRESTADOR | VARCHAR2 | Y | Identifica se houve Plantão Emergencial de Prestador sobre procedimento, não incide valorização d... |

---

## DBAMV.ITREG_REPASSE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITREG_REPASSE | NUMBER | N |  |
| 2 | CD_REG_REPASSE | NUMBER | N |  |
| 3 | CD_CONVENIO | NUMBER | Y |  |
| 4 | CD_ORI_ATE | NUMBER | Y |  |
| 5 | CD_GRU_PRO | NUMBER | Y |  |
| 6 | CD_PRO_FAT | VARCHAR2 | Y |  |
| 7 | VL_PERCENT_PAGO | NUMBER | Y |  |
| 8 | VL_PERCENT_DESC | NUMBER | Y |  |
| 9 | VL_PROCEDIMENTO | NUMBER | Y |  |
| 10 | VL_DESCONTO | NUMBER | Y |  |
| 11 | CD_ATI_MED | VARCHAR2 | Y |  |
| 12 | CD_TIP_ACOM | NUMBER | Y |  |
| 13 | SN_PERTENCE_PACOTE | VARCHAR2 | N |  |
| 14 | SN_INSIDE_NO_FILME | VARCHAR2 | N |  |
| 15 | CD_SETOR | NUMBER | Y |  |
| 16 | SN_CH_FATURADO | VARCHAR2 | N |  |
| 17 | QT_CH | NUMBER | Y |  |
| 18 | TP_ATENDIMENTO | VARCHAR2 | Y |  |
| 19 | SN_HORARIO_CONTRATADO | VARCHAR2 | Y |  |
| 20 | CD_MULTI_EMPRESA | NUMBER | Y | Parametro de filtro de busca da regra n?o tem impacto extrutural. |
| 21 | SN_UCO | VARCHAR2 | Y | Identificador do custo operacional para uso no calculo da regra. |
| 22 | DT_VIGENCIA | DATE | Y | Data de início da vigência do repasse (opcional). |
| 23 | CD_GRU_FAT | NUMBER | Y | Para permitir criar regra de repasse por Grupo de Faturamento. |
| 24 | TP_REPASSE_DIF | VARCHAR2 | N | Tipo de repasse diferenciado. Inicialmente os tipos N-Normal, P-Produção CH., G-Glosa |
| 25 | CD_ESPECIALID | NUMBER | Y | Código da especialidade. |
| 26 | VL_INDICE | NUMBER | Y | Valor do Índice utilizado para o cálculo das regras em CH. |
| 27 | VL_PERC_HE | NUMBER | Y | Percentual de acréscimo de Horário Especial no repasse de produção. |
| 28 | VL_PERC_FERIADO | NUMBER | Y | Percentual de acréscimo de Feriados no repasse de produção. |
| 29 | SN_PERC_CONTA | VARCHAR2 | N |  |
| 30 | TP_ESCALONAMENTO | VARCHAR2 | N | Valor do tipo de Escalonamento > N - Nenhum, F - Valor Fixo, I - Incremento, IF - Incremento + va... |
| 31 | CD_CON_PLA | NUMBER | Y | Código do plano do item da regra de repasse. |

---

## DBAMV.ITREG_REPASSE_H9J

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITREG_REPASSE_H9J | NUMBER | N |  |
| 2 | CD_CONVENIO | NUMBER | Y |  |
| 3 | CD_GRU_PRO | NUMBER | Y |  |
| 4 | CD_PRO_FAT | VARCHAR2 | Y |  |
| 5 | CD_ORI_ATE | NUMBER | Y |  |
| 6 | CD_PRESTADOR | NUMBER | Y |  |
| 7 | CD_SETOR | NUMBER | Y |  |
| 8 | CD_TIP_ACOM | NUMBER | Y |  |
| 9 | CD_ESPECIALID | NUMBER | Y |  |
| 10 | VL_PERCENT_PAGO | NUMBER | Y |  |
| 11 | VL_PROCEDIMENTO | NUMBER | Y |  |
| 12 | SN_PERTENCE_PACOTE | VARCHAR2 | N |  |
| 13 | SN_INSIDE_NO_FILME | VARCHAR2 | N |  |

---

## DBAMV.ITREG_REPASSE_PROD
> Cadastro de regras do repasse de produtividade

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITREG_REP_PRD | NUMBER | N | Código do item da regra de repasse de produtividade |
| 2 | CD_REG_REP_PRD | NUMBER | N | Código da regra de repasse de produtividade |
| 3 | CD_MULTI_EMPRESA | NUMBER | Y | Código da multi_empresa regra de produtividade |
| 4 | CD_CONVENIO | NUMBER | Y |  |
| 5 | CD_SETOR | NUMBER | Y | Código do setor na regra de produtividade |
| 6 | CD_ORI_ATE | NUMBER | Y | Código da origem na regra de produtividade |
| 7 | CD_ESPECIALID | NUMBER | Y | Código da especialidade na regra de produtividade |
| 8 | CD_GRU_PRO | NUMBER | Y | Código do gupo do procedimento na regra de produtividade |
| 9 | CD_ATI_MED | VARCHAR2 | Y | Código da atividade médica na regra de produtividade |
| 10 | CD_TIP_ACOM | NUMBER | Y | Código do tipo da acomodação na regra de produtividade |
| 11 | CD_GRU_FAT | NUMBER | Y | Código do grupo de faturamento na regra de produtividade |
| 12 | TP_ATENDIMENTO | VARCHAR2 | Y | Código do tipo de atendimento na regra de produtividade |
| 13 | SN_FILME | VARCHAR2 | Y | SN do filme na regra de produtividade |
| 14 | SN_PERTENCE_PACOTE | VARCHAR2 | Y | SN do item de pacote na regra de produtividade |
| 15 | DT_VIGENCIA | DATE | Y | Data da vigencia do item na regra de produtividade |
| 16 | TP_BASE_CALCULO | VARCHAR2 | N | Tipo da base de calculo na regra de produtividade |
| 17 | VL_PERCENT_PAGO | NUMBER | Y | Percentual do item para calculo na regra de produtividade |
| 18 | VL_PROCEDIMENTO | NUMBER | Y | Percentual do item para calculo na regra de produtividade |
| 19 | CD_ITEM_RES | NUMBER | Y | Codigo da conta de custo na regra de produtividade |
| 20 | TP_CUSTO | VARCHAR2 | Y | Tipo da Conta de custo na regra de produtividade. |
| 21 | VL_PERC_DED_RECEITA | NUMBER | Y | Valor percentual deducao da receita. |

---

## DBAMV.ITREG_REPASSE_RATEIO
> Tabela de itens de regra de rateio

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITREG_REPASSE_RATEIO | NUMBER | N | Chave primaria do item da regra de rateio |
| 2 | CD_REG_REPASSE_RATEIO | NUMBER | N | Foreign key com a tabela reg_repasse_rateio |
| 3 | CD_PRESTADOR | NUMBER | N | Prestador que fara parte do rateio |
| 4 | VL_PERCENTUAL | NUMBER | N | Valor percentual do prestador no rateio |

---

## DBAMV.ITREG_REPASSE_SIH

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITREG_REPASSE_SIH | NUMBER | N |  |
| 2 | CD_REG_REPASSE_SIH | NUMBER | N |  |
| 3 | CD_ESPEC_SUS | VARCHAR2 | Y |  |
| 4 | CD_ORI_ATE | NUMBER | Y |  |
| 5 | VL_PERCENTUAL_PAGO | NUMBER | Y |  |
| 6 | VL_PERCENTUAL_DESC | NUMBER | Y |  |
| 7 | VL_PROCEDIMENTO | NUMBER | Y |  |
| 8 | VL_DESCONTO | NUMBER | Y |  |
| 9 | CD_SUS_INICIAL | VARCHAR2 | Y |  |
| 10 | CD_SUS_FINAL | VARCHAR2 | Y |  |
| 11 | TP_VALOR_BASE | VARCHAR2 | N |  |
| 12 | SN_HORARIO_CONTRATADO | VARCHAR2 | Y |  |
| 13 | VL_PONTOS | NUMBER | Y |  |
| 14 | CD_GRUPO_PROCEDIMENTO | VARCHAR2 | Y | Codigo do grupo de procedimentos SUS modelo P321 |
| 15 | CD_SUB_GRUPO_PROCEDIMENTO | VARCHAR2 | Y | Codigo do SubGrupo de procedimentos SUS modelo P321 |
| 16 | CD_ORGANIZA_GRUPO_PROCEDIMENTO | VARCHAR2 | Y | Codigo da Organizac?o dos Grupos  de procedimentos SUS modelo P321 |
| 17 | CD_PROCEDIMENTO | VARCHAR2 | Y | Codigo do procedimento SUS modelo P321 |
| 18 | CD_CBOS | VARCHAR2 | Y | Codigo CBOS SUS |
| 19 | DT_VIGENCIA | DATE | Y | Data de início da vigência do repasse (opcional). |
| 20 | CD_ATI_MED | VARCHAR2 | Y |  |
| 21 | CD_PORTE | NUMBER | Y |  |
| 22 | VL_FIXO | NUMBER | Y |  |

---

## DBAMV.ITREG_REPASSE_VIGENCIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITREG_REP_VIG | NUMBER | N |  |
| 2 | TP_REG_REPASSE | VARCHAR2 | N | Identificador da regra |
| 3 | CD_REG_REPASSE | NUMBER | N | Codigo da regra |
| 4 | CD_ITREG_REPASSE | NUMBER | Y | Codigo item da regra convenio |
| 5 | CD_ITREG_REPASSE_SIH | NUMBER | Y | Codigo item da regra SIH |
| 6 | CD_ITREG_REPASSE_SIA | NUMBER | Y | Codigo item da regra SIA |
| 7 | CD_CONVENIO | NUMBER | Y | Codigo do convenio |
| 8 | CD_ORI_ATE | NUMBER | Y | Codigo da origem do atendimento |
| 9 | CD_GRU_PRO | NUMBER | Y | grupo do procedimento |
| 10 | CD_PRO_FAT | VARCHAR2 | Y | procedimento no faturamento |
| 11 | VL_PERCENT_PAGO | NUMBER | Y | valor percentual a ser aplicado no calculo |
| 12 | VL_PERCENT_DESC | NUMBER | Y | valor percentual de desconto a ser aplicado no calculo |
| 13 | VL_PROCEDIMENTO | NUMBER | Y | valor do procedimento a ser aplicaco no calculo |
| 14 | VL_DESCONTO | NUMBER | Y | valor do desconto a ser aplicado no calculo |
| 15 | CD_ATI_MED | VARCHAR2 | Y | atividade medica |
| 16 | CD_ESPEC_SUS | VARCHAR2 | Y |  |
| 17 | CD_TIP_ACOM | NUMBER | Y | tipo de acomodacao |
| 18 | SN_PERTENCE_PACOTE | VARCHAR2 | N | identificador de pertencente a pacote |
| 19 | SN_INSIDE_NO_FILME | VARCHAR2 | N | S/N insidencia do valor do filme no calculo |
| 20 | CD_SETOR | NUMBER | Y | codigo do setor |
| 21 | SN_CH_FATURADO | VARCHAR2 | N | S/N ch faturado |
| 22 | QT_CH | NUMBER | Y | quantidades de CH |
| 23 | TP_ATENDIMENTO | VARCHAR2 | Y | tipo do atendimento |
| 24 | SN_HORARIO_CONTRATADO | VARCHAR2 | Y | horario contratado |
| 25 | CD_SUS_INICIAL | VARCHAR2 | Y | range inicial do codigo sus |
| 26 | CD_SUS_FINAL | VARCHAR2 | Y | range final do codigo sus |
| 27 | TP_VALOR_BASE | VARCHAR2 | Y | tipo do valor base de calculo |
| 28 | VL_PONTOS | NUMBER | Y | valor de pontos |
| 29 | CD_GRUPO_PROCEDIMENTO | VARCHAR2 | Y | grupo do procedimento regra SUS |
| 30 | CD_SUB_GRUPO_PROCEDIMENTO | VARCHAR2 | Y | sub grupo do procedimento regra SUS |
| 31 | CD_ORGANIZA_GRUPO_PROCEDIMENTO | VARCHAR2 | Y | forma de organizacao regra SUS |
| 32 | CD_PROCEDIMENTO | VARCHAR2 | Y | codigo do procedimento SUS |
| 33 | CD_CBOS | VARCHAR2 | Y | codigo do CBO regra SUS |
| 34 | CD_TIP_ATE | NUMBER | Y | tipo de atendimento |
| 35 | CD_ESPECIALID | NUMBER | Y | codigo da especialidade |
| 36 | CD_SSM | VARCHAR2 | Y | codigo do procedimento antes da portaria |
| 37 | CD_UPS | NUMBER | Y | codigo da ups |
| 38 | DT_INICIO_VIGENCIA | DATE | N | Inicio da vigencia do item da regra |
| 39 | DT_FINAL_VIGENCIA | DATE | Y | Final da vigencia do item da regra |
| 40 | SN_ATIVO | VARCHAR2 | Y | item de regra ativo S/N |

---

## DBAMV.ITREG_REP_EQP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITREG_REP_EQP | NUMBER | N |  |
| 2 | CD_REG_REP_EQP | NUMBER | N |  |
| 3 | CD_MULTI_EMPRESA | NUMBER | N | Codigo multi empresa da regra por equipe |
| 4 | CD_PRESTADOR | NUMBER | N | Prestador participante da equipe |
| 5 | CD_ATI_MED | VARCHAR2 | N | Atividade medica do prestador participante da equipe |
| 6 | CD_PESO | NUMBER | Y | PESO do participante da equipe para calculo |
| 7 | SN_ATIVO | VARCHAR2 | Y |  |

---

## DBAMV.ITREG_REP_ESCALONAMENTO
> Tabela utilizada para Cadastro dos escalomentos a ser utilizada na geração de repasse)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | VL_INICIAL | NUMBER | Y | Valor mínimo a ser aplicado o escalonamento |
| 2 | VL_FINAL | NUMBER | Y | Valor máximo a ser aplicado o escalonamento |
| 3 | VL_INCREMENTO | NUMBER | Y | Valor em % a ser aplicado no valor em cima da produção |
| 4 | VL_FIXO | NUMBER | Y | Valor Fixo a ser pago ao prestador como valor minimo assegurado |
| 5 | CD_ITREG_REPASSE | NUMBER | N | Código do item da regra de repasse |

---

## DBAMV.ITREPASSE_MEDICO_CD
> Tabela de resumo do faturamento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITREP_CD | NUMBER | N | Sequencial da tabela |
| 2 | DT_COMPETENCIA | DATE | Y |  |
| 3 | CD_SETOR | NUMBER | Y | Setor onde foi executado o exame |
| 4 | NM_SETOR | VARCHAR2 | Y |  |
| 5 | CD_GRU_PRO | NUMBER | Y | Grupo do procedimento da conta |
| 6 | DS_GRU_PRO | VARCHAR2 | Y |  |
| 7 | CD_PRESTADOR | NUMBER | Y | Codigo do prestador do laudo, caso n?o tenha, prestador da conta |
| 8 | NM_PRESTADOR | VARCHAR2 | Y |  |
| 9 | CD_ORI_ATE | NUMBER | Y | Codigo da Origem do atendimento |
| 10 | DS_ORI_ATE | VARCHAR2 | Y |  |
| 11 | CD_CONVENIO | NUMBER | Y | Codigo do convenio da conta |
| 12 | NM_CONVENIO | VARCHAR2 | Y |  |
| 13 | CD_ATENDIMENTO | NUMBER | Y |  |
| 14 | CD_REG_FAT | NUMBER | Y |  |
| 15 | CD_REG_AMB | NUMBER | Y |  |
| 16 | CD_LANCAMENTO | NUMBER | Y |  |
| 17 | CD_MVTO | NUMBER | Y |  |
| 18 | CD_ITMVTO | NUMBER | Y |  |
| 19 | CD_PACIENTE | NUMBER | Y |  |
| 20 | NM_PACIENTE | VARCHAR2 | Y |  |
| 21 | CD_PRO_FAT | VARCHAR2 | Y |  |
| 22 | DS_PRO_FAT | VARCHAR2 | Y |  |
| 23 | DT_LANCAMENTO | DATE | Y | Competencia do faturamento |
| 24 | DT_LAUDO | DATE | Y | Data do laudo, caso nao tenha, data da conta. |
| 25 | HR_LAUDO | DATE | Y | Hora do laudo, caso nao tenha, hora da conta. |
| 26 | TP_ATENDIMENTO | VARCHAR2 | Y |  |
| 27 | SN_HORARIO_ESPECIAL | VARCHAR2 | Y |  |
| 28 | VL_TOTAL_CONTA | NUMBER | Y |  |
| 29 | VL_FILME_UNITARIO | NUMBER | Y |  |
| 30 | QT_LANCAMENTO | NUMBER | Y |  |
| 31 | SN_FECHADA | VARCHAR2 | Y |  |

---

## DBAMV.IT_REPASSE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IT_REPASSE | NUMBER | N |  |
| 2 | CD_REPASSE | NUMBER | N |  |
| 3 | CD_REG_FAT | NUMBER | Y |  |
| 4 | CD_LANCAMENTO_FAT | NUMBER | Y |  |
| 5 | CD_REG_AMB | NUMBER | Y |  |
| 6 | CD_LANCAMENTO_AMB | NUMBER | Y |  |
| 7 | VL_REPASSE | NUMBER | Y |  |
| 8 | VL_PERC_REPASSE | NUMBER | Y |  |
| 9 | VL_GLOSA | NUMBER | Y |  |
| 10 | CD_ATI_MED | VARCHAR2 | Y |  |
| 11 | CD_PRESTADOR | NUMBER | N |  |
| 12 | CD_GLOSAS | NUMBER | Y |  |
| 13 | VL_FILME | NUMBER | Y |  |
| 14 | SN_VIRTUAL | VARCHAR2 | N |  |
| 15 | QT_CH | NUMBER | Y |  |
| 16 | CD_PRESTADOR_REPASSE | NUMBER | N | Prestador para pagamento do item de repasse |
| 17 | CD_REMESSA_GLOSA | NUMBER | Y | Codigo do Recurso de Glosa |
| 18 | VL_REPASSE_CUSTOS | NUMBER | Y | Valor dos custos abatidos no valor base de repasse |
| 19 | CD_REDUZIDO | NUMBER | Y | Codigo reduzido do compartilhamento da conta de repasse. |
| 20 | VL_TOTAL | NUMBER | Y | Valor total faturado do procedimento |
| 21 | SN_REPASSE_PARCELADO | VARCHAR2 | N | Indicador que o item da conta foi realizado baixa de forma parcelada. |
| 22 | CD_RECCON_REC | VARCHAR2 | Y | Código do recebimento do contas a receber. |

---

## DBAMV.IT_REPASSE_PRD
> CADASTRO DE REGRAS DO REPASSE DE PRODUTIVIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REPASSE | NUMBER | N | CÓDIGO DO REPASSE |
| 2 | CD_ATENDIMENTO | NUMBER | N | CÓDIGO DO ATENDIMENTO |
| 3 | CD_CONTA | NUMBER | N | CONTA DO FATURAMENTO |
| 4 | CD_LANCAMENTO | NUMBER | N | CÓDIGO DO LANÇAMENTO DA CONTA |
| 5 | CD_ATI_MED | VARCHAR2 | Y | CÓDIGO DA ATIVIDADE MÉDICA |
| 6 | CD_PRESTADOR | NUMBER | Y | CÓDIGO DO PRESTADOR |
| 7 | CD_PRESTADOR_REPASSE | NUMBER | Y | GRUPO DO REPASSE |
| 8 | CD_REG_REP_PRD | NUMBER | Y | CÓDIGO DA REGRA |
| 9 | CD_ITREG_REP_PRD | NUMBER | Y | CÓDIGO DO ITEM DA REGRA |
| 10 | DT_COMPETENCIA | DATE | N | COMPETENCIA |
| 11 | VL_FATURADO | NUMBER | Y | VALOR FATURADO |
| 12 | VL_PERCENT_PAGO | NUMBER | Y | PERCENTUAL DA REGRA |
| 13 | VL_GLOSA | NUMBER | Y | VALOR DA GLOSA |
| 14 | VL_CUSTO | NUMBER | Y | VALOR DE CUSTO |
| 15 | VL_TOTAL | NUMBER | Y | VALOR TOTAL |
| 16 | VL_REPASSE | NUMBER | Y | VALOR DO REPASSE CALCULADO |

---

## DBAMV.IT_REPASSE_SIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IT_REPASSE_SIA | NUMBER | N |  |
| 2 | CD_REPASSE | NUMBER | N |  |
| 3 | CD_EVENTOS | NUMBER | N |  |
| 4 | VL_REPASSE | NUMBER | Y |  |
| 5 | VL_GLOSA | NUMBER | Y |  |
| 6 | VL_PERC_REPASSE | NUMBER | Y |  |
| 7 | VL_TOTAL | NUMBER | Y |  |
| 8 | CD_PRESTADOR | NUMBER | Y |  |
| 9 | TP_MEDICO | VARCHAR2 | Y |  |
| 10 | CD_PRESTADOR_REPASSE | NUMBER | N | Prestador para pagamento do item de repasse |

---

## DBAMV.IT_REPASSE_SIH

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IT_REPASSE_SIH | NUMBER | N |  |
| 2 | CD_REPASSE | NUMBER | N |  |
| 3 | CD_REG_FAT | NUMBER | N |  |
| 4 | CD_LANCAMENTO | NUMBER | N |  |
| 5 | CD_PRESTADOR | NUMBER | N |  |
| 6 | CD_ATI_MED | VARCHAR2 | Y |  |
| 7 | VL_REPASSE | NUMBER | Y |  |
| 8 | VL_PERC_REPASSE | NUMBER | Y |  |
| 9 | VL_PONTOS | NUMBER | Y |  |
| 10 | QT_PONTOS | NUMBER | Y |  |
| 11 | CD_PRESTADOR_REPASSE | NUMBER | N | Prestador para pagamento do item de repasse |
| 12 | VL_TOTAL | NUMBER | Y | Valor total faturado do procedimento |

---

## DBAMV.IT_REPASSE_TEMP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REMESSA | NUMBER | Y |  |
| 2 | DT_LANCAMENTO | DATE | Y |  |
| 3 | CD_REG_FAT | NUMBER | Y |  |
| 4 | CD_REG_AMB | NUMBER | Y |  |
| 5 | CD_LANC_FAT | NUMBER | Y |  |
| 6 | CD_LANC_AMB | NUMBER | Y |  |
| 7 | CD_PRO_FAT | VARCHAR2 | Y |  |
| 8 | CD_CONVENIO | NUMBER | Y |  |
| 9 | QT_LANCAMENTO | NUMBER | Y |  |
| 10 | CD_PRESTADOR | NUMBER | Y |  |
| 11 | CD_ATI_MED | VARCHAR2 | Y |  |
| 12 | VL_TOTAL | NUMBER | Y |  |
| 13 | NM_CONVENIO | VARCHAR2 | Y |  |
| 14 | DS_PRO_FAT | VARCHAR2 | Y |  |
| 15 | CD_GRU_PRO | NUMBER | Y |  |
| 16 | CD_PACIENTE | NUMBER | Y |  |
| 17 | CD_ORI_ATE | NUMBER | Y |  |
| 18 | NM_PACIENTE | VARCHAR2 | Y |  |
| 19 | NM_PRESTADOR | VARCHAR2 | Y |  |
| 20 | CD_REG_REPASSE | NUMBER | Y |  |
| 21 | CD_GRU_FAT | NUMBER | Y |  |
| 22 | TP_REMESSA | VARCHAR2 | Y |  |
| 23 | DT_ENTREGA_DA_FATURA | DATE | Y |  |
| 24 | DT_COMPETENCIA | DATE | Y |  |
| 25 | CD_PRESTADOR_REPASSE | NUMBER | Y |  |
| 26 | SN_PERTENCE_PACOTE | VARCHAR2 | Y |  |
| 27 | CD_TIP_ACOM | NUMBER | Y |  |
| 28 | FILME | NUMBER | Y |  |
| 29 | CD_SETOR | NUMBER | Y |  |
| 30 | TP_ATENDIMENTO | VARCHAR2 | Y |  |
| 31 | CD_MULTI_EMPRESA | NUMBER | Y |  |
| 32 | QT_CH_UNITARIO | NUMBER | Y |  |
| 33 | CD_ATENDIMENTO | NUMBER | Y |  |
| 34 | VL_REPASSE_SOL | NUMBER | Y |  |
| 35 | DS_REG_REP_SOL | VARCHAR2 | Y |  |
| 36 | CD_PRESTADOR_SOL | NUMBER | Y |  |
| 37 | VL_REPASSE_SUB | NUMBER | Y |  |
| 38 | CD_PREST_CRED_SUB | NUMBER | Y |  |
| 39 | DS_PREST_CRED_SUB | VARCHAR2 | Y |  |
| 40 | CD_PREST_DEB_SUB | NUMBER | Y |  |
| 41 | DS_PREST_DEB_SUB | VARCHAR2 | Y |  |
| 42 | VL_REPASSE | NUMBER | Y |  |
| 43 | VL_FILME | NUMBER | Y |  |
| 44 | VL_GLOSA | NUMBER | Y |  |
| 45 | VL_PERC_REPASSE | NUMBER | Y |  |
| 46 | DT_FECHAMENTO | DATE | Y |  |
| 47 | CD_EVENTOS | NUMBER | Y |  |
| 48 | CD_ESPECIALID | NUMBER | Y |  |
| 49 | CD_SSM | VARCHAR2 | Y |  |
| 50 | QT_LANCADA | NUMBER | Y |  |
| 51 | CD_GRU_ATE | NUMBER | Y |  |
| 52 | CD_IT_MARCACAO | NUMBER | Y |  |
| 53 | DT_EVE_SIASUS | DATE | Y |  |
| 54 | CD_TIP_ATE | NUMBER | Y |  |
| 55 | DS_ORI_ATE | VARCHAR2 | Y |  |
| 56 | VL_OUTROS | NUMBER | Y |  |
| 57 | VL_AUXILIAR | NUMBER | Y |  |
| 58 | VL_ANESTESISTA | NUMBER | Y |  |
| 59 | CD_REG_REPASSE_SIA | NUMBER | Y |  |
| 60 | DS_TITULO | VARCHAR2 | Y |  |
| 61 | CD_FAT_SIA | NUMBER | Y |  |
| 62 | DT_PERIODO_FINAL | DATE | Y |  |
| 63 | TIPO | VARCHAR2 | Y |  |
| 64 | HR_LANCAMENTO | DATE | Y |  |
| 65 | VL_ATO | NUMBER | Y |  |
| 66 | VL_SD | NUMBER | Y |  |
| 67 | VL_SP | NUMBER | Y |  |
| 68 | VL_SH | NUMBER | Y |  |
| 69 | VL_PONTOS | NUMBER | Y |  |
| 70 | QT_PONTOS | NUMBER | Y |  |
| 71 | CD_ESPEC_SUS | VARCHAR2 | Y |  |
| 72 | CD_SUS | VARCHAR2 | Y |  |
| 73 | CD_REG_REPASSE_SIH | NUMBER | Y |  |
| 74 | NR_GUIA | VARCHAR2 | Y |  |
| 75 | VL_REPASSE_CUSTOS | NUMBER | Y | Valor dos custos abatidos no valor base de repasse |
| 76 | CD_PROCEDIMENTO | VARCHAR2 | Y | Codigo do procedimento SUS de acordo com portaria 321 |
| 77 | DS_PROCEDIMENTO | VARCHAR2 | Y | Descricao de procedimento SUS portaria 321 |
| 78 | CD_UPS | NUMBER | Y | Codigo da unidade prestadora de servico (UPS) |
| 79 | CD_DECENDIO | NUMBER | Y | Codigo do Decendio da fatura ambulatorial |
| 80 | CD_PRESTADOR_AUX | NUMBER | Y |  |
| 81 | SN_DETALHE_CALC_LOG | VARCHAR2 | Y |  |
| 82 | CD_REPASSE | NUMBER | Y | CODIGO DO REPASSE GERADO |
| 83 | CD_REPASSE_PRESTADOR | NUMBER | Y | GRUPO DO REPASSE |
| 84 | TIPO_REG | VARCHAR2 | Y | TIPO DO REGISTRO VINDO DA INTERFACE DA GERACAO |
| 85 | VL_PREVISAO_REPASSE | NUMBER | Y | VALOR DE PREVISAO DE REPASSE |
| 86 | DT_REPASSE | DATE | Y | DATA DA EMISSAO DO REPASSE |
| 87 | CD_CON_PAG | NUMBER | Y | CONTAS A PAGAR DE REPASSE |
| 88 | DS_REPASSE | VARCHAR2 | Y | CONTAS A PAGAR DE REPASSE |
| 89 | DT_ATENDIMENTO | DATE | Y | DATA DO ATENDIMENTO |
| 90 | DT_ALTA | DATE | Y | DATA DA ALTA |
| 91 | CONTA | NUMBER | Y | CONTA REPASSADA(INTERNACAO OU AMBULATORIO) |
| 92 | TP_PAGAMENTO | VARCHAR2 | Y | TIPO DO PAGAMENTO PARA O REPASSE MEDICO |
| 93 | VL_TOTAL_CONTA | NUMBER | Y | TOTAL DO ITEM NA CONTA |
| 94 | LANCAMENTO | NUMBER | Y | LANCAMENTO (INTERNACAO OU AMBULATORIO) |
| 95 | DT_COMPET_REPASSE | DATE | Y | DATA DA COMPETENCIA DO REPASSE GERADO |
| 96 | CD_ITREG_REPASSE | NUMBER | Y | CODIGO DO ITEM DA REGRA DE REPASSE |
| 97 | DT_RECEBIDO | DATE | Y | Data de recebimento do recurso. |
| 98 | CD_RECCON_REC | VARCHAR2 | Y | Código do recebimento do contas a receber. |
| 99 | SN_ULTIMA_PARCELA | VARCHAR2 | N | Indicador que a baixa à ser efetuada é da última parcela. |
| 100 | SN_REG_PARCELADO | VARCHAR2 | N | Indicador que a baixa do item da conta foi realizada de forma parcelada. |

---

## DBAMV.IT_REPASSE_VIRTUAL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REMESSA | NUMBER | Y |  |
| 2 | DT_LANCAMENTO | DATE | Y |  |
| 3 | CD_REG_FAT | NUMBER | Y |  |
| 4 | CD_REG_AMB | NUMBER | Y |  |
| 5 | CD_LANC_FAT | NUMBER | Y |  |
| 6 | CD_LANC_AMB | NUMBER | Y |  |
| 7 | CD_PRO_FAT | VARCHAR2 | Y |  |
| 8 | CD_CONVENIO | NUMBER | Y |  |
| 9 | QT_LANCAMENTO | NUMBER | Y |  |
| 10 | CD_PRESTADOR | NUMBER | Y |  |
| 11 | CD_ATI_MED | VARCHAR2 | Y |  |
| 12 | VL_TOTAL | NUMBER | Y |  |
| 13 | VL_TOTAL_CONTA | NUMBER | Y |  |
| 14 | NM_CONVENIO | VARCHAR2 | Y |  |
| 15 | DS_PRO_FAT | VARCHAR2 | Y |  |
| 16 | CD_GRU_PRO | NUMBER | Y |  |
| 17 | CD_PACIENTE | NUMBER | Y |  |
| 18 | CD_ORI_ATE | NUMBER | Y |  |
| 19 | NM_PACIENTE | VARCHAR2 | Y |  |
| 20 | NM_PRESTADOR | VARCHAR2 | Y |  |
| 21 | CD_REG_REPASSE | NUMBER | Y |  |
| 22 | CD_GRU_FAT | NUMBER | Y |  |
| 23 | TP_REMESSA | VARCHAR2 | Y |  |
| 24 | DT_ENTREGA_DA_FATURA | DATE | Y |  |
| 25 | DT_COMPETENCIA | DATE | Y |  |
| 26 | CD_PRESTADOR_REPASSE | NUMBER | Y |  |
| 27 | SN_PERTENCE_PACOTE | VARCHAR2 | Y |  |
| 28 | CD_TIP_ACOM | NUMBER | Y |  |
| 29 | FILME | NUMBER | Y |  |
| 30 | CD_SETOR | NUMBER | Y |  |
| 31 | TP_ATENDIMENTO | VARCHAR2 | Y |  |
| 32 | CD_MULTI_EMPRESA | NUMBER | Y |  |
| 33 | SN_REPASSOU_VIRTUAL | VARCHAR2 | Y |  |
| 34 | CD_PRESTADOR_VIRTUAL | NUMBER | Y |  |
| 35 | VL_REPASSE | NUMBER | Y |  |
| 36 | VL_FILME | NUMBER | Y |  |
| 37 | VL_PERC_PAGO | NUMBER | Y |  |

---

## DBAMV.JUSTIFICA_RECURSO_GLOSA
> Dados de justificativa de recurso de glosa

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_JUSTIFICA_RECURSO_GLOSA | NUMBER | N | Codigo da justificativa do recurso de glosa |
| 2 | DS_JUSTIFICA_RECURSO_GLOSA | VARCHAR2 | N | Descric?o da justificativa do recurso de glosa |

---

## DBAMV.LANCAMENTO_MANUAL_CIHA
> Tabela lancamento manual da produc?o CIHA-SUS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DT_COMPETENCIA | DATE | N | Data da competencia de Gerac?o |
| 2 | CD_ATENDIMENTO | NUMBER | N | Codigo do Atendimento |
| 3 | CD_PRO_FAT | VARCHAR2 | N | Codigo do procedimento AMB-Convenio |
| 4 | CD_PROCEDIMENTO | VARCHAR2 | N | Codigo do procedimetno SUS |
| 5 | CD_VERSAO_CIHA | VARCHAR2 | Y | Codigo da vers?o da CIHA |
| 6 | CD_CID | VARCHAR2 | Y | Indicac?o do dignostico do atendimento |
| 7 | CD_MOTIVO | NUMBER | Y | Indicac?o do motivo de cobranca do atendimento |
| 8 | TP_ATENDIMENTO | VARCHAR2 | Y | Indicac?o tipo do atendimento |
| 9 | DT_CADASTRO | DATE | Y | Data de cadastro do item de lancamento manual da produc?o CIHA. |
| 10 | NM_USUARIO_CADASTRO | VARCHAR2 | Y | Nome do usuario de cadastro do item de lancamento manual da produc?o CIHA. |

---

## DBAMV.LANCAMENTO_MODELO
> Lançamento modelo contábil

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LANCAMENTO_MODELO | NUMBER | N | CÓDIGO DO MODELO DE LANÇAMENTO. |
| 2 | CD_MODELO_CONTABIL | VARCHAR2 | Y | CÓDIGO DO MODELO CONTÁBIL. |
| 3 | CD_MODELO_CONTABIL_EVENTO | NUMBER | Y | CÓDIGO DO EVENTO DO MODELO CONTÁBIL. |
| 4 | TP_LANCAMENTO | VARCHAR2 | N | TIPO DE LANÇAMENTO. |
| 5 | CD_REDUZIDO | NUMBER | Y | CÓDIGO DA CONTA CONTÁBIL. |
| 6 | CD_HISTORICO_PADRAO | NUMBER | Y | CÓDIGO DO HISTÓRICO PADRÃO. |
| 7 | DS_COMPLEMENTO | VARCHAR2 | Y | COMPLEMENTO. |

---

## DBAMV.LANCAMENTO_PATRIMONIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DT_LANCAMENTO | DATE | N | Data de gerac?o do lancamento. |
| 2 | CD_BEM | NUMBER | N | Bem que esta relacionado ao lancamento patrimonial. |
| 3 | TP_LANCAMENTO | VARCHAR2 | N | Descreve o tipo de lançamento. (T) Tombamento - (D) Depreciação - (B) Baixa de Bens - (A) Movimen... |
| 4 | VL_LANCAMENTO | NUMBER | N | Valor do lancamento. |
| 5 | CD_ITDEPRECIA | NUMBER | Y | Codigo do movimento de depreciac?o que gerou o lancamento (Preenchido nos lancamentos de deprecia... |
| 6 | DS_LANCAMENTO | VARCHAR2 | Y | Descric?o do lancamento. |
| 7 | CD_BEMAGREGADOR | NUMBER | Y | Codigo do bem agregador. Este atributo e utilizados nos lancamentos de agregac?o e desagregac?o d... |
| 8 | DT_IMPORTACAO | DATE | Y | Data que foi efetuada importac?o do lancamento na contabilidade. |
| 9 | CD_EXP_CONTABILIDADE | NUMBER | Y | Codigo do lote de importac?o para contabilidade. |
| 10 | CD_LANCAMENTO_PATRIMONIO | NUMBER | N | Sequencial do lancamento. |
| 11 | TP_ENTRADA_SAIDA | VARCHAR2 | Y | Identifica se o lancamento e de entrada ou saida no patrimonio (Raz?o Patrimonial). |
| 12 | SN_CONTABILIZA | VARCHAR2 | Y | (S) Movimento deve ser contabilizado - (N) Movimento n?o deve ser contabilizado. |
| 13 | CD_REDUZIDO_CREDITO | NUMBER | Y | Caso movimento exija contabilizac?o esta e a conta de credito. |
| 14 | CD_REDUZIDO_DEBITO | NUMBER | Y | Caso movimento exija contabilizac?o esta e a conta de debito. |
| 15 | CD_ALTERACAO_SUB_IOB_BEM | NUMBER | Y | Codigo da Alterac?o da Subclassificac?o do Bem. |
| 16 | CD_PROCESSO | NUMBER | Y | Indica o processo que gerou o lancamento |
| 17 | CD_MOTIVO_BAIXA | NUMBER | Y | Codigo do motivo de baixa equivalente ao movimento de baixa. |
| 18 | CD_MULTI_EMPRESA_ORIGEM | NUMBER | Y | Codigo da empresa de origem do bem, antes da movimentac?o. |
| 19 | CD_MULTI_EMPRESA_DESTINO | NUMBER | Y | Codigo da empresa de destino do bem. |
| 20 | CD_MULTI_EMPRESA | NUMBER | Y | Codigo da empresa proprietaria do bem equivalente ao lancamento. |
| 21 | CD_REDUZIDO_CREDITO_TRANS | NUMBER | Y | Codigo reduzido da conta contabil transitoria utilizada na contra partida da conta de debito. |
| 22 | CD_REDUZIDO_DEBITO_TRANS | NUMBER | Y | Codigo reduzido da conta contabil transitoria utilizada na contra partida da conta de credito. |
| 23 | CD_MOV_BEM | NUMBER | Y | Codigo da movimentac?o do bem que originou o lancamento no patrimonio. |
| 24 | CD_LCTO_MOVIMENTO | NUMBER | Y | Código agrupador dos lancamentos contábeis |
| 25 | VL_LANCAMENTO_ECO | NUMBER | Y |  |
| 26 | CD_LANCAMENTO_PAI | NUMBER | Y | Código de lançamento patrimonio pai |
| 27 | SN_BAIXA_PARCIAL | VARCHAR2 | N | Identifica se o lançamento refere-se a uma baixa parcial 'S' ou total 'N'. |

---

## DBAMV.LANCAMENTO_PATRIMONIO_CTB
> Tabela tem finalidade de armazenar as partilhas contabeis equivalentes a cada lancamento no patrimonio.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LANCAMENTO_PATRIMONIO | NUMBER | N | Codigo do lancamento no patrimonio |
| 2 | DT_LANCAMENTO | DATE | N | Data do lancamento no patrimonio |
| 3 | CD_LANCAMENTO_PATRIMONIO_CTB | NUMBER | N | Codigo do lancamento contabil equivalente ao lancamento do patrimonio |
| 4 | TP_DEBITO_CREDITO | VARCHAR2 | N | Indicador se o lancamento e de debito ou credito |
| 5 | CD_REDUZIDO | NUMBER | N | Codigo reduzido da conta contabil equivalente ao lancamento contabil |
| 6 | DS_LANCAMENTO_CONTABIL | VARCHAR2 | N | Descric?o do lancamento contabil |
| 7 | VL_LANCAMENTO_CONTABIL | NUMBER | N | Valor do lancamento contabil |

---

## DBAMV.LIGACAO_PACIENTE
> Tabela para cadastramento das ligac?es telefonicas para cobranca mediante tarifac?o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LIGACAO_PACIENTE | NUMBER | N | Codigo sequencial da ligac?o telefonica |
| 2 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da empresa que cobrara a ligac?o telefonica |
| 3 | NR_RAMAL | NUMBER | N | Codigo do ramal da ligac?o telefonica |
| 4 | DT_LIGACAO | DATE | N | Data da ligac?o telefonica |
| 5 | HR_LIGACAO | DATE | N | Hora da ligac?o telefonica |
| 6 | CD_TIPO_LIGACAO | NUMBER | N | Codigo do tipo de ligac?o telefonica |
| 7 | QT_LIGACAO_MINUTO | NUMBER | Y | Durac?o em minutos da ligac?o telefonica |
| 8 | QT_LIGACAO_SEGUNDO | NUMBER | Y | Durac?o em segundos da ligac?o telefonica |
| 9 | NR_DDD | VARCHAR2 | Y | Codigo do DDD de destino da ligac?o telefonica |
| 10 | NR_DDI | VARCHAR2 | Y | Codigo do DDI de destino da ligac?o telefonica |
| 11 | NR_TELEFONE | VARCHAR2 | N | Numero do telefone de destino da ligac?o telefonica |
| 12 | CD_ATENDIMENTO | NUMBER | N | Codigo do atendimento no qual foi executada a ligac?o telefonica |

---

## DBAMV.MARCACAO_PRO_FAT
> Tabela de Procedimentos Habilitados para o Plant?o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MARCACAO | NUMBER | N | Codigo de identificac?o do Plant?o |
| 2 | CD_PRO_FAT | VARCHAR2 | N | Codigo de identificac?o do Procedimento |
| 3 | CD_SSM | VARCHAR2 | Y | (N?o utilizado apos 31/12/2007 portaria 321) |
| 4 | CD_PROCEDIMENTO_SIA | VARCHAR2 | Y | Procedimento Ambulatorial SUS |
| 5 | CD_PROCEDIMENTO | VARCHAR2 | Y | Codigo do procedimento integrado |
| 6 | CD_SEQ_INTEGRA | NUMBER | Y | Codigo sequencial do registro integrado |
| 7 | DT_INTEGRA | DATE | Y | Data de integrac?o com registro |

---

## DBAMV.ORGANIZA_GRUPO_PROCEDIMENTOS
> Forma de organizacao dos procedimentos em seus grupos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SUB_GRUPO_PROCEDIMENTO | VARCHAR2 | N | Codigo do sub grupo de procedimento |
| 2 | CD_GRUPO_PROCEDIMENTO | VARCHAR2 | N | Codigo do grupo de procedimento |
| 3 | CD_ORGANIZA_GRUPO_PROCEDIMENTO | VARCHAR2 | N | Codigo da organizacao do procedimento |
| 4 | DS_ORGANIZA_GRUPO_PROCEDIMENTO | VARCHAR2 | N | Descricao da organizacao do procedimento |
| 5 | SN_ATIVO | VARCHAR2 | N | Identifica se a organizacao dos procedimentos esta ativo |

---

## DBAMV.PACOTE
> Tabela de cadastro de regras de cobranca de pacotes

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PACOTE | NUMBER | N | Codigo sequencial que deve seguir o sequence, DBAMV.SEQ_PACOTE |
| 2 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da empresa que possui contrato de cobranca do pacote |
| 3 | CD_CONVENIO | NUMBER | Y | Codigo da convenio que possui contrato de cobranca do pacote |
| 4 | CD_CON_PLA | NUMBER | Y | Codigo do plano que possui contrato de cobranca do pacote |
| 5 | CD_PRO_FAT | VARCHAR2 | N | Codigo do procedimento que, ao ser realizado, indica a cobranca do pacote. Este o procedimento de... |
| 6 | CD_PRO_FAT_PACOTE | VARCHAR2 | N | odigo do procedimento de convers?o, cobranca. Procedimento que possuira o valor do pacote, contra... |
| 7 | DT_VIGENCIA | DATE | N | Data de inicio do contrato de cobranca referente a regra do pacote |
| 8 | CD_TIP_ACOM | NUMBER | Y | Codigo da acomodac?o de cobranca que possui contrato de cobranca do pacote |
| 9 | CD_SETOR | NUMBER | Y | Codigo do setor de realizac?o do procedimento que possui contrato de cobranca do pacote |
| 10 | TP_ATENDIMENTO | VARCHAR2 | N | Tipo de Atendimento que possui contrato de cobranca do pacote |
| 11 | QT_DIARIAS | NUMBER | N | Quantidade de dias de cobertura do pacote, conforme contrato |
| 12 | VL_PERC_PAC_SECUND | NUMBER | N | Percentual de cobranca sobre os pacotes secundarios. Pacotes secundarios s?o os pacotes, como mes... |
| 13 | TP_EXTRA | VARCHAR2 | Y | Controle para procedimentos fora do pacote na conta, o extra |
| 14 | SN_GUIA | VARCHAR2 | N | Controla se os procedimentos autorizados por guia  tambem cair?o como pacote. Marcado ir?o sair c... |
| 15 | QT_PARCELAS | NUMBER | N | Quantidade maxima de parcelas para pagamento do pacote, conforme contrato. Campo utilizado pelo c... |
| 16 | SN_AUTOMATICO | VARCHAR2 | N | Informa de o lancamento de pacote sera automatico |
| 17 | DS_OBSERVACAO | VARCHAR2 | Y | Descrever observac?es referentes ao protocolo deste pacote |
| 18 | DT_VIGENCIA_FINAL | DATE | Y | Data final de vigencia da regra de pacotes |
| 19 | NR_IDADE_MAXIMA | NUMBER | Y | Idade maxima para aplicac?o da regra de pacote |
| 20 | TP_COBRANCA_PAC_SECUND | VARCHAR2 | N | Tipo de cobranca dos pacotes secundarios |
| 21 | VL_PERC_PAC_SECUND_2 | NUMBER | Y | Percentual de cobranca sobre os pacotes secundarios. Pacotes secundarios s?o os pacotes, como mes... |
| 22 | VL_PERC_PAC_SECUND_3 | NUMBER | Y | Percentual de cobranca sobre os pacotes secundarios. Pacotes secundarios s?o os pacotes, como mes... |
| 23 | VL_PERC_PAC_SECUND_4 | NUMBER | Y | Percentual de cobranca sobre os pacotes secundarios. Pacotes secundarios s?o os pacotes, como mes... |
| 24 | CD_TIPO_INTERNACAO | NUMBER | Y | Tipo de atendimento do paciente |
| 25 | SN_VALIDA_AUTORIZACAO | VARCHAR2 | N | Informa de existira autorizac?o para itens dentro do pacote |
| 26 | SN_DAY_CLINIC | VARCHAR2 | N | Informa se o pacote e de Day-Clinic, visando emiss?o da informac?o na etiqueta de internac?o |
| 27 | VL_PERC_ACRES_GEMELARES | NUMBER | Y | Valor de percentual de acrescimo no valor do pacote por RN gemelar nascido vivo. |
| 28 | VL_PERC_DESC_RN_UTI | NUMBER | Y | Informa o valor do percentual de desconto no pacote, caso o mesmo esteja vinculado a um atendimen... |
| 29 | SN_CONSIDERA_HORA | VARCHAR2 | Y | Indica se leva em considerac?o hora do termino da diaria |
| 30 | SN_PROTOCOLO_DE_PACOTE | VARCHAR2 | N | Protocolo de pacote. |
| 31 | NR_IMC_INICIAL | NUMBER | Y | Indica se o indice de massa corporea for abaixo do limite,o pacote sera descaracterizado |
| 32 | NR_IMC_FINAL | NUMBER | Y | Indica se o indice de massa corporea ultrapassar o limite,o pacote sera descaracterizado |
| 33 | SN_OBITO | VARCHAR2 | N | Indica se o paciente for a obito, o pacote sera descaracterizado |
| 34 | SN_GEMELAR | VARCHAR2 | N | Indica se houver gemeos, o pacote sera descaracterizado |
| 35 | SN_DIARIA_GABARITO | VARCHAR2 | N | Indica se a quantidade de diarias ultrapassar a do gabarito, o pacote sera descaracterizado |
| 36 | TP_DISPERCAO | VARCHAR2 | N | Indica o tipo de dispercao que tera o pacote |
| 37 | SN_NAO_INTERVENCIONISTA | VARCHAR2 | N | Indica quando o pacote não é de intervenção. |
| 38 | SN_LANCA_NO_FECHAMENTO | VARCHAR2 | N | Indica se o pacote será tratado na conta apenas no fechamento. |
| 39 | SN_PACOTE_PRO_FAT | VARCHAR2 | N | Indica quando o pacote vai trabalhar com procedimentos não intervencionistas. |
| 40 | SN_PROFAT_DESCARACTERIZA | VARCHAR2 | N | Indica se os procedimentos descaracterizarão o pacote. |
| 41 | SN_PROC_FORA_PACOTE | VARCHAR2 | N | Possibilitar cobrar o item que desencadeia o pacote (Honorário Médico) nos itens da conta (intern... |
| 42 | CD_CONTRATO | NUMBER | Y | Código do contrato |
| 43 | VL_PERC_LIMITE_OPME | NUMBER | Y | Percentual limite de OPME nas guias do aviso sobre o valor dos pacotes. |

---

## DBAMV.PACOTE_EXCECAO_PROCEDIMENTO
> Tabela que definira os grupos de procedimentos que sempre ser?o lancados como pacote

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PACOTE_EXCECAO | NUMBER | N | Codigo da excec?o de grupo do pacote |
| 2 | CD_PRO_FAT | VARCHAR2 | N | Procedimento da excec?o da excec?o de grupo do pacote |

---

## DBAMV.PACOTE_GRU_PRO
> Tabela que definira os grupos de procedimentos que sempre ser?o lancados como pacote

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PACOTE | NUMBER | N | Codigo da regra de pacote |
| 2 | CD_GRU_PRO | NUMBER | N | Codigo do grupo de procedimento que devra ser lancado sempre fechado no pacote |

---

## DBAMV.PACOTE_PRO_FAT
> Tabela que definirá os procedimentos intervencionistas.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PACOTE | NUMBER | N | Código da regra de pacote |
| 2 | CD_PRO_FAT | VARCHAR2 | N | Código do procedimento que deverá ser lançado sempre aberto no pacote |

---

## DBAMV.PACOTE_TIP_ACOM
> Tabela que definira os grupos de procedimentos que sempre ser?o lancados como pacote

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PACOTE | NUMBER | N | Codigo da regra de pacote |
| 2 | CD_TIP_ACOM | NUMBER | N | Codigo do tipo de acomodac?o que devera ser lancado sempre aberto no pacote |
| 3 | TP_APLICA_ACOMODACAO | VARCHAR2 | Y | Tipo de paciente que sera aplicada a regra de acomodacao |

---

## DBAMV.PROCEDIMENTOS_DETALHE_TETO_ORC
> Tabela que ira cadastrar os procedimentos que entrar?o na regra do Teto Orcamentario por Fatura e UPS.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FAT_SIA | NUMBER | N | Codigo da Fatura do Teto Orcamentario |
| 2 | CD_UPS | NUMBER | N | Codigo da UPS |
| 3 | CD_GRUPO_PROCEDIMENTO | VARCHAR2 | N | Codigo do Grupo de Procedimento SUS |
| 4 | CD_SUB_GRUPO_PROCEDIMENTO | VARCHAR2 | N | Codigo do Sub-Grupo de Procedimento SUS |
| 5 | CD_PROCEDIMENTO | VARCHAR2 | N | Codigo do Procedimento SUS |

---

## DBAMV.PROCEDIMENTO_CBO_VIGENCIA
> Armazena a data de vigencia de acordo com cada procedimento vinculado ao CBO.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROCEDIMENTO | VARCHAR2 | N | Codigo do procedimento SUS. |
| 2 | CD_CBO | VARCHAR2 | N | Codigo do CBO compativel com procedimento. |
| 3 | DT_VALIDADE_INICIAL | DATE | N | Indica o inicio da validade para o procedimento x CBO. |
| 4 | DT_VALIDADE_FINAL | DATE | Y | Indica o fim da validade para o procedimento x CBO. |

---

## DBAMV.PROCEDIMENTO_CID_VIGENCIA
> Armazena a data de vigencia de acordo com cada procedimento vinculado ao CID.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROCEDIMENTO | VARCHAR2 | N | Codigo do procedimento SUS. |
| 2 | CD_CID | VARCHAR2 | N | Codigo do cid compativel com procedimento. |
| 3 | SN_PRINCIPAL | VARCHAR2 | N | Identifica se o procedimento e principal para o cid. |
| 4 | SN_SECUNDARIO | VARCHAR2 | N | Identifica se o procedimento e secundario para o cid. |
| 5 | SN_PADRAO | VARCHAR2 | N | Identifica se o procedimento e padrao para o cid. |
| 6 | DT_VALIDADE_INICIAL | DATE | N | Indica o inicio da validade para o procedimento. |
| 7 | DT_VALIDADE_FINAL | DATE | Y | Indica o fim da validade para o procedimento. |

---

## DBAMV.PROCEDIMENTO_CONTRL_SA04
> Tabaela de procedimentos controlados pelo SA04

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROCEDIMENTO | VARCHAR2 | N | Código do procedimentos |
| 2 | QT_SA04 | NUMBER | N | Quantidade no SA04 |
| 3 | QT_MAXIMA_SIGTAP | NUMBER | Y | Quantidade maxima da Sigtap |
| 4 | DT_VALIDADE_INICIAL | DATE | N | Competência inicial |
| 5 | DT_VALIDADE_FINAL | DATE | Y | Competência final |
| 6 | CD_MULTI_EMPRESA | NUMBER | N | Código da empresa |

---

## DBAMV.PROCEDIMENTO_DETALHE_VIGENCIA
> Armazena a data de vigencia de acordo com cada procedimento.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROCEDIMENTO | VARCHAR2 | N | Codigo do procedimento SUS. |
| 2 | DT_VIGENCIA | DATE | N | Data de vigencia. |
| 3 | QT_MAXIMA | NUMBER | Y | Quantidade maxima permitida para cobranca. |
| 4 | TP_SEXO | VARCHAR2 | N | Sexo do paciente. |
| 5 | TP_FINANCIAMENTO | VARCHAR2 | Y | Informa o tipo de financiamento. |
| 6 | NR_DIAS_INTERNACAO | NUMBER | Y | Numero de dias de internacao permitodo pelo procedimento. |
| 7 | NR_IDADE_MINIMA | NUMBER | Y | Idade minima para internacao. |
| 8 | NR_IDADE_MAXIMA | NUMBER | Y | Idade maxima para internacao. |
| 9 | NR_IDADE_MINIMA_MES | NUMBER | Y | Idade minima permitida para o procedimento em meses. |
| 10 | NR_IDADE_MAXIMA_MES | NUMBER | Y | Idade maxima permitida para o procedimento em meses. |
| 11 | SN_ATIVO | VARCHAR2 | Y | Identifica se o procedimento esta ativo. |
| 12 | SN_ATO_ANESTESICO | VARCHAR2 | Y | Identifica se o procedimento permite ato anestesico. |
| 13 | SN_APAC_PRINCIPAL | VARCHAR2 | N | Identifica se o procedimento principal APAC. |
| 14 | SN_APAC_SECUNDARIO | VARCHAR2 | N | Identifica se o procedimento secundario APAC. |
| 15 | SN_BPA_CONSOLIDADO | VARCHAR2 | N | Identifica se o procedimento principal BPA consolidado. |
| 16 | SN_BPA_INDIVIDUALIZADO | VARCHAR2 | N | Identifica se o procedimento principal BPA individualizado. |
| 17 | SN_AIH_PRINCIPAL | VARCHAR2 | N | Identifica se o procedimento principal AIH. |
| 18 | SN_AIH_SECUNDARIO | VARCHAR2 | N | Identifica se o procedimento secundario AIH. |
| 19 | SN_AIH_ESPECIAL | VARCHAR2 | N | Identifica se o procedimento especial AIH. |
| 20 | SN_SISCOLO | VARCHAR2 | N | Indica se procedimento e lancamento siscolo. |
| 21 | SN_SISMAMA | VARCHAR2 | Y | Indica se o procedimento e do modulo SISMAMA. |
| 22 | DT_VALIDADE_INICIAL | DATE | N | Indica o inicio da validade para o procedimento |
| 23 | DT_VALIDADE_FINAL | DATE | Y | Indica o fim da validade para o procedimento |
| 24 | SN_ORTESE_PROTESE | VARCHAR2 | N | Identifica os procedimentos de ORTESE e PROTESE. |
| 25 | SN_PERMITE_CONTINUIDADE_APAC | VARCHAR2 | N | Verifica se procedimento permite lancamento de Apac de continuidade. |
| 26 | SN_OBRIGA_BPAI | VARCHAR2 | N | Campo de identificac?o de BPA Indentificado. |
| 27 | SN_EXIGE_MULTIPLO | VARCHAR2 | N | Indica se o procedimento exige lancamento de procedimento multiplo |
| 28 | SN_ADMITE_MUDANCA_PROCEDIMENTO | VARCHAR2 | N | Indica que procedimento permite mudanca de procedimento. |
| 29 | SN_SOLICITADO_IGUAL_REALIZADO | VARCHAR2 | N | Indica que o procedimento solicitado deve ser igual ao procedimento realizado. |
| 30 | SN_PERMITE_CONTA_SEM_DT_ALTA | VARCHAR2 | N | Identifica se o procedimento permite fechar a remessa sem a data de alta da conta informada. |
| 31 | SN_DIARIA_UTI | VARCHAR2 | Y | Se o procedimento e diaria de UTI |
| 32 | SN_PODE_SER_AUTORIZADO | VARCHAR2 | N | Identifica se o procedimento pode ser lancado como autorizado |
| 33 | TP_APAC | VARCHAR2 | Y | Indica se o procedimento APAC e do tipo apac de continuidade C ou Unica U |
| 34 | SN_EXIGE_EQUIPE_MEDICA | VARCHAR2 | N | Informa se o Procedimento exige a criac?o de uma equipe medica. |
| 35 | SN_OBRIGA_FETO_VIVO | VARCHAR2 | N | Identifica se procedimento exige que feto tenha nascido vivo |
| 36 | CD_TIP_ACOM | NUMBER | Y | Codigo do tipo de Acomodac?o - Custos |
| 37 | CD_TIPO_LAUDO_SIA | VARCHAR2 | Y | Codigo do tipo de laudo SIA compativel com o procedimento. |
| 38 | SN_FATURADO_AMB | VARCHAR2 | Y | Indica se procedimento BPA e ou n?o faturado |
| 39 | SN_PERMITE_ZERADO | VARCHAR2 | N | Indica se o procedimento permite lancamento de quantidade zerada |
| 40 | SN_OBRIGA_COMPATIBILIDADE | VARCHAR2 | N | Indentifica se o procedimento exige regra de compatibilidade |
| 41 | SN_PERMANENCIA_MAIOR | VARCHAR2 | N | Armazena uma string com a concatenac?o do Tipo de Vinculo e Tipo de Apurac?o originais |
| 42 | SN_ACOMPANHANTE | VARCHAR2 | N | VIEWS - Identifica os procedimentos de Diaria de Acompanhante |
| 43 | TP_ACOMPANHANTE | VARCHAR2 | Y | VIEWS - Identifica o Tipo de Diaria de Acompanhante GT(Gestante), AD(Adulto), IC(Idoso com Pernoi... |
| 44 | SN_UCI | VARCHAR2 | N | VIEWS - Identifica os procedimentos de UCI |
| 45 | SN_UTI_NORMAL | VARCHAR2 | N | VIEWS - Identifica os procedimentos de UTI NORMAL |
| 46 | SN_ANESTESISTA | VARCHAR2 | N | VIEWS - Identifica os procedimentos de Anestesista |
| 47 | SN_ANALG_OBSTETRICA | VARCHAR2 | N | VIEWS - Identifica os procedimentos de Analgesia |
| 48 | SN_CONSULTA_PEDIATRICA | VARCHAR2 | N | VIEWS - Identifica os procedimentos de Consulta Pediatrica |
| 49 | SN_NEONATOLOGIA | VARCHAR2 | N | VIEWS - Identifica os procedimentos de Neonatologia |
| 50 | SN_PERFUSIONISTA | VARCHAR2 | N | VIEWS - Identifica os procedimentos de Perfusionismo |
| 51 | SN_CONCENTRADO_FATOR_VIII | VARCHAR2 | N | VIEWS - Identifica os procedimentos de Concentrado |
| 52 | SN_FATORES_X_COAGULACAO | VARCHAR2 | N | VIEWS - Identifica os procedimentos de Fator de Coagulacao - VIEWS |
| 53 | SN_ALBUMINA_HUMANA | VARCHAR2 | N | VIEWS - Identifica os procedimentos de Albumina |
| 54 | SN_PLASMA_HUMANO | VARCHAR2 | N | VIEWS - Identifica os procedimentos de Plasma Humano |
| 55 | SN_LITOTRIPSIA | VARCHAR2 | N | VIEWS - Identifica os procedimentos de Litotripsia |
| 56 | SN_ANTICORPO_ANTI_RH | VARCHAR2 | N | VIEWS - Identifica os procedimentos de Anticorpos |
| 57 | SN_EXOSANGUINEO_TRANSFUSAO | VARCHAR2 | N | VIEWS - Identifica os procedimentos de EXOSANGUINEO TRANSFUSAO |
| 58 | SN_ESTREPTOQUINASE | VARCHAR2 | N | VIEWS - Identifica os procedimentos de ESTREPTOQUINASE |
| 59 | SN_ANTICORPO_MONOCLORAL | VARCHAR2 | N | VIEWS - Identifica os procedimentos de ANTICORPO MONOCLORAL |
| 60 | SN_METILPREDNISILONA | VARCHAR2 | N | VIEWS - Identifica os procedimentos de METILPREDNISILONA |
| 61 | SN_SURFACTANTE_FR_AMP | VARCHAR2 | N | VIEWS - Identifica os procedimentos de |
| 62 | SN_COMPONENTE_I | VARCHAR2 | N | VIEWS - Identifica os procedimentos de Componentes |
| 63 | SN_TESTE_HIV | VARCHAR2 | N | VIEWS - Identifica os procedimentos de Teste HIV |
| 64 | SN_REGISTRO_CIVIL | VARCHAR2 | N | VIEWS - Identifica os procedimentos de |
| 65 | SN_HEMODIALISE_PAC_RENAIS | VARCHAR2 | N | VIEWS - Identifica os procedimentos de Hemodialise Pacientes Renais |
| 66 | SN_DIALISE_PAC_RENAIS | VARCHAR2 | N | VIEWS - Identifica os procedimentos de Dialise em Pacientes Renais |
| 67 | SN_HEMOPERFUSAO | VARCHAR2 | N | VIEWS - Identifica os procedimentos de HEMOPERFUSAO |
| 68 | SN_ULTRAFILTRACAO_CONTINUA | VARCHAR2 | N | VIEWS - Identifica os procedimentos de ULTRAFILTRACAO CONTINUA |
| 69 | SN_HEMODIALISE_CONTINUA | VARCHAR2 | N | VIEWS - Identifica os procedimentos de HEMODIALISE CONTINUA |
| 70 | SN_HEMOFILTRACAO_CONTINUA | VARCHAR2 | N | VIEWS - Identifica os procedimentos de HEMOFILTRACAO CONTINUA |
| 71 | SN_HEDIAFILTRACAO_CONTINUA | VARCHAR2 | N | VIEWS - Identifica os procedimentos de HEDIAFILTRACAO CONTINUA |
| 72 | SN_HEMOFILTRACAO | VARCHAR2 | N | VIEWS - Identifica os procedimentos de HEMOFILTRACAO |
| 73 | SN_IMUNOGLOBULINA_G | VARCHAR2 | N | VIEWS - Identifica os procedimentos de IMUNOGLOBULINA |
| 74 | SN_SANGUE | VARCHAR2 | N | VIEWS - Identifica os procedimentos de SANGUE |
| 75 | SN_SANGUE_TAXA_APLICACAO | VARCHAR2 | N | VIEWS - Identifica os procedimentos de SANGUE TAXA APLICACAO |
| 76 | SN_NUTRICAO_ENTERAL | VARCHAR2 | N | VIEWS - Identifica os procedimentos de NUTRICAO ENTERAL |
| 77 | SN_TOMOGRAFIAS_NEURO | VARCHAR2 | N | VIEWS - Identifica os procedimentos de TOMOGRAFIAS NEURO |
| 78 | SN_ARTERIOR_NEURO | VARCHAR2 | N | VIEWS - Identifica os procedimentos de ARTERIOR NEURO |
| 79 | SN_CICLOSPORINA | VARCHAR2 | N | VIEWS - Identifica os procedimentos de CICLOSPORINA |
| 80 | SN_TOMOGRAFIAS | VARCHAR2 | N | VIEWS - Identifica os procedimentos de TOMOGRAFIAS |
| 81 | SN_CICLOSPORINA_CAPSULA | VARCHAR2 | N | VIEWS - Identifica os procedimentos de CICLOSPORINA CAPSULA |
| 82 | SN_CRIACAO_FAV | VARCHAR2 | N | VIEWS - Identifica os procedimentos de CRIACAO FAV |
| 83 | SN_GLOBULINA_ANTIMOCITARIA | VARCHAR2 | N | VIEWS - Identifica os procedimentos de GLOBULINA ANTIMOCITARIA |
| 84 | SN_ESTUDOS_HEMODINAMICOS | VARCHAR2 | N | VIEWS - Identifica os procedimentos de ESTUDOS HEMODINAMICOS |
| 85 | SN_NOTIFICACAO_AGRAVO | VARCHAR2 | N | VIEWS - Identifica os procedimentos de NOTIFICACAO AGRAVO |
| 86 | SN_CATETERISMO | VARCHAR2 | N | VIEWS - Identifica os procedimentos de CATETERISMO |
| 87 | SN_PACIENTE_RENAL_AGUDO | VARCHAR2 | N | VIEWS - Identifica os procedimentos de PACIENTE RENAL AGUDO |
| 88 | SN_ENFERMARIA | VARCHAR2 | N | VIEWS - Identifica os procedimentos de ENFERMARIA |
| 89 | NR_AUXILIAR | NUMBER | Y | Numero de auxiliares permitidos pelo procedimento |
| 90 | SN_PERMITE_PERMANENCIA_MAIOR | VARCHAR2 | Y | Identifica se o procedimento permite cobranca de permanencia a maior |
| 91 | CD_CODIGO_REDUZIDO | NUMBER | Y | Codigo que permite o lancamento simplificado do procedimento |
| 92 | SN_PERMITE_BUSCA_ATIVA | VARCHAR2 | Y | Identifica se o procedimento permite a busca ativa de orgaos |
| 93 | SN_PERMITE_EXAMES | VARCHAR2 | Y | Identifica se o procedimento permite a cobranca de exames |
| 94 | SN_PERMITE_ALTA_UTI | VARCHAR2 | Y | Identifica se o procedimento permite alta diretamente da UTI. |
| 95 | SN_CARATER_INTERNACAO_HOSP_DIA | VARCHAR2 | Y | Identifica se o procedimento pode ser cobrado com carater de hospital dia |
| 96 | CD_TIP_ATE | NUMBER | Y | Codigo do tipo de atendimento APAC |
| 97 | QT_MAXIMA_AUTORIZADO | NUMBER | Y | Identifica a quantidade maxima de procedimentos que podem ser autorizados sendo este procedimento... |
| 98 | SN_ADMITE_LONGA_PERMANENCIA | VARCHAR2 | N | Indica se procedimento permite longa permanencia de lancamento de AIH |
| 99 | SN_PERMITE_AIH_CONTINUACAO | VARCHAR2 | N | Indica se procedimento permite continuidade de lancamento de AIH |
| 100 | SN_HEMOTERAPIA | VARCHAR2 | Y | SN_HEMOTERAPIA |
| 101 | SN_PARTO | VARCHAR2 | N | Indica se o procedimento e de realizacao de parto |
| 102 | SN_VASECTOMIA | VARCHAR2 | N | Indica se procedimento possui vasectomia. |
| 103 | SN_LAQUEADURA | VARCHAR2 | N | Informa se o Procedimento e uma Laqueadura e se entrara na validac?o da Procedure PRC_FFIS_VALIDA... |
| 104 | SN_VALIDA_CANCER_HIV | VARCHAR2 | N | Informa se o Procedimento trata-se de Tratamento de Cancer em menor de 16 ou AIH(ou relacionado) ... |
| 105 | SN_VALIDA_ESPEC_SUS | VARCHAR2 | N | Informa se o Procedimento entrara na validac?o da Procedure PRC_FFIS_VALIDA_ESPEC_SUS. |
| 106 | SN_CALCULA_PT_PROFISSIONAL | VARCHAR2 | Y | Informa se o Procedimento trata-se de Tratamento de Cancer em menor de 16 ou AIH(ou relacionado) ... |
| 107 | SN_UTI | VARCHAR2 | N | Informa se o Procedimento e um Procedimento de UTI e entrara na validac?o da Procedure PRC_FFIS_V... |
| 108 | TP_UTI | VARCHAR2 | N | Informa o tipo de UTI que podera ser UA2, UP2, UN2, UA3, UP3, UN3, QUE e UCI  e entrara na valida... |
| 109 | SN_CNRAC | VARCHAR2 | Y | Identifica se o procedimento exige autorizacao CNRAC |
| 110 | SN_CIRURGIA_ELETIVA | VARCHAR2 | Y | Identifica se procedimento exige autorizacao especial para cirurgia eletiva |
| 111 | SN_CIRURGIA_MULTIPLA | VARCHAR2 | N | Informa se o Procedimento trata-se de uma Cirurgia Multipla e entrara na validac?o da Procedure P... |
| 112 | SN_CALCULA_AIH | VARCHAR2 | N | Informa se o Procedimento entrara na validac?o do calculo da AIH das func?es FNC_FFIS_VALIDA_CALC... |
| 113 | SN_ALTA_REOPERACAO | VARCHAR2 | N | Informa se o Procedimento permite alta para Reoperac?o e entrara na validac?o da func?o FNC_FFIS_... |
| 114 | SN_OBRIGA_CNPJ_PRESTADOR | VARCHAR2 | N | Informa se o Procedimento tem que ser cobrado para um prestador que tenha um CNPJ e entrara nas v... |
| 115 | SN_OBRIGA_PROC_COMPAT | VARCHAR2 | N | Informa se o Procedimento obriga a existencia de um procedimento compativel na conta e entrara na... |
| 116 | SN_URGENCIA | VARCHAR2 | N | Indica se procedimento e de urgencia |
| 117 | SN_DIARIA_ACOMPANHANTE | VARCHAR2 | N | Informa se o Procedimento e uma Diaria de Acompanhante e entrara nas validac?es da procedure PRC_... |
| 118 | SN_OBRIGA_VDRL | VARCHAR2 | N | Informa se o Procedimento obriga a cobranca de um dos procedimentos 0202031110 e 0202031179 e ent... |
| 119 | SN_PODE_EXECEDE_QT_MAXIMA | VARCHAR2 | Y | SN_PODE_EXECEDE_QT_MAXIMA |
| 120 | CD_GRU_PRO | NUMBER | Y | Codigo do Grupo |
| 121 | SN_MODULO_TRANSFUSIONAL | VARCHAR2 | N | Se o procedimento referente a hemoterapia e a taxa de aplicac?o (Modulo Transfusional). |
| 122 | SN_VALIDA_QT_MAXIMA | VARCHAR2 | N | Sinaliza os procedimentos clinicos que ter?o validac?o da quantidade maxima, e n?o do periodo da ... |
| 123 | SN_ANESTESIA | VARCHAR2 | N | SN_ANESTESIA |
| 124 | SN_SESSAO | VARCHAR2 | N | Identifica se o procedimento e do tipo sess?o ou n?o. |
| 125 | SN_EXIGE_CPF_CBO | VARCHAR2 | N | Sinaliza se o procedimento exige ou n?o o preenchimento de CPF + CBO |
| 126 | SN_GERA_MATRICULA_SAME | VARCHAR2 | N | Identifica se Procedimento esta habilitado a gerar prontuario no Same ? |
| 127 | SN_GERA_ACH | VARCHAR2 | N | Indica se o procedimento sera gerac?o na ACH. |
| 128 | SN_GERADO_CHEKIN | VARCHAR2 | N | Indica que o procedimento sera gerado no arquivo do CHEKIN. |
| 129 | SN_PERMITE_UTI | VARCHAR2 | N | Indica se o procedimento se o procedimento principal admite lancamento de diaria de UTI. |
| 130 | SN_PROFISSIONAL | VARCHAR2 | N | SN_PROFISSIONAL |
| 131 | CD_GRU_PRO_AMB | NUMBER | Y | Configuracao procedimento X ambulatorio |
| 132 | SN_PROCED_CIRURGICO | VARCHAR2 | N | Procedimentos Cirurgicos |
| 133 | SN_EXIGE_CNS_PACIENTE | VARCHAR2 | N | Exige CNS do paciente |
| 134 | SN_PROCEDIMENTO_FATURADO | VARCHAR2 | N | Identifica os procedimentos que podem ser faturado. |
| 135 | CD_ATI_MED | VARCHAR2 | Y | Atividade medica (Preenchido quando SADT) |
| 136 | CD_TIP_ACOM_CUSTO | NUMBER | Y | Codigo do tipo de Acomodac?o - Custos |
| 137 | VL_TEMPO | NUMBER | Y | Fator de Tempo do procedimento para Custos |
| 138 | VL_FATOR_MINUTO | NUMBER | Y | Fator de Minuto do Procedimento para Custos |
| 139 | FATOR | NUMBER | Y | Fator do Procedimento para o Calc.Custos |
| 140 | SN_PAGO_POR_DIA | VARCHAR2 | N | Procedimentos que pagam por dia. |
| 141 | SN_PAGO_POR_DIA_UTIL | VARCHAR2 | N | Procedimentos que pagam por dia util |
| 142 | SN_EXIGE_CNES | VARCHAR2 | N | Procedimento que exige o preenchimento do CNES |
| 143 | SN_EXIGE_CNES_HOSP | VARCHAR2 | N | Procedimento que exige o preenchimento do CNES do proprio Hospital. |
| 144 | SN_CERIH | VARCHAR2 | N | Codigo de autorizac?o do CERIH. |
| 145 | SN_ADMITE_QUALQUER_CBO | VARCHAR2 | N | Numero da Declarac?o do RN. |
| 146 | TP_COMPLEXIDADE_PROCEDIMENTO | VARCHAR2 | Y | Tipo da Complexidade do Procedimento |
| 147 | SN_CIHA | VARCHAR2 | Y | Indicac?o de procedimento CIHA portaria 134 |
| 148 | TP_INS_BPA | VARCHAR2 | Y | Identifica se o procedimento tem mais de um instrumento de registro. |
| 149 | SN_FATURA_AMOSTRA_PSSD | VARCHAR2 | Y | Sinaliza os procedimentos que serão cobrados por amostra. |

---

## DBAMV.PROCEDIMENTO_LEITO_VIGENCIA
> Armazena a data de vigencia de acordo com cada procedimento vinculado ao codigo da Especialidade.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROCEDIMENTO | VARCHAR2 | N | Codigo do procedimento SUS. |
| 2 | CD_ESPEC_SUS | VARCHAR2 | N | Codigo da Especialidade compativel com procedimento. |
| 3 | SN_PADRAO | VARCHAR2 | N | Indica se a especialidade e a padr?o para o procedimento. |
| 4 | DT_VALIDADE_INICIAL | DATE | N | Indica o inicio da validade para o procedimento x Especialidade. |
| 5 | DT_VALIDADE_FINAL | DATE | Y | Indica o fim da validade para o procedimento x Especialidade. |

---

## DBAMV.PROCEDIMENTO_MODALIDADE_VIGENC
> Armazena a data de vigencia de acordo com cada procedimento vinculado ao codigo da Modalidade.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROCEDIMENTO | VARCHAR2 | N | Codigo do procedimento SUS. |
| 2 | TP_MODALIDADE_ATENDIMENTO | VARCHAR2 | N | Tipo da Modalidade compativel com procedimento. |
| 3 | DT_VALIDADE_INICIAL | DATE | N | Indica o inicio da validade |
| 4 | DT_VALIDADE_FINAL | DATE | Y | Indica o fim da validade. |

---

## DBAMV.PROCEDIMENTO_PLANO
> Tabela onde ser?o salvas todos os Procedimentos relacionados ao Plano.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITEM_PROCEDIMENTO_PLANO | NUMBER | N | Sequencial da tabela. |
| 2 | CD_PROCEDIMENTO_PLANO | NUMBER | N | Codigo do Plano. |
| 3 | CD_PROCEDIMENTO_OFICINA | NUMBER | N | Codigo da Oficina relacionado ao Plano. |
| 4 | CD_TIPO_PROCEDIMENTO_PLANO | NUMBER | N | Codigo do Procedimento do Plano. |
| 5 | CD_SERVICO | NUMBER | N | Codigo do Servico. |
| 6 | CD_FUNCIONARIO | NUMBER | Y | Codigo do funcionario associado ao servico. |

---

## DBAMV.PROCEDIMENTO_REGISTRO_VIGENCIA
> Armazena a data de vigencia de acordo com cada procedimento vinculado ao Instrumento de Registro.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROCEDIMENTO | VARCHAR2 | N | Codigo do procedimento SUS. |
| 2 | CD_INSTRUMENTO_REGISTRO | VARCHAR2 | N | Codigo do instrumento de registro. |
| 3 | DT_VALIDADE_INICIAL | DATE | N | Indica o inicio da validade. |
| 4 | DT_VALIDADE_FINAL | DATE | Y | Indica o fim da validade. |

---

## DBAMV.PROCEDIMENTO_REGRA_CONDIC_SUS
> Relacionamento entre os procedimentos X regra condicionada SUS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROCEDIMENTO | VARCHAR2 | N | Codigo do procedimento SUS |
| 2 | CD_REGRA_CONDICIONADA | VARCHAR2 | N | Codigo da regra condicionada |
| 3 | DT_VALIDADE_INICIAL | DATE | N | Validade inicial |
| 4 | DT_VALIDADE_FINAL | DATE | Y | Validade final |

---

## DBAMV.PROCEDIMENTO_SERVICO_VIGENCIA
> Armazena a data de vigencia de acordo com cada procedimento vinculado ao Servico e Classificac?o.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROCEDIMENTO | VARCHAR2 | N | Codigo do procedimento SUS. |
| 2 | CD_SERVICO_SUS | VARCHAR2 | N | Codigo do Servico compativel com procedimento. |
| 3 | CD_CLASSIFICACAO_SUS | VARCHAR2 | N | Codigo da Classificac?o compativel com procedimento. |
| 4 | DT_VALIDADE_INICIAL | DATE | N | Indica o inicio da validade para o procedimento x Servico e Classificac?o. |
| 5 | DT_VALIDADE_FINAL | DATE | Y | Indica o fim da validade para o procedimento x Servico e Classificac?o. |

---

## DBAMV.PROCEDIMENTO_TUSS
> Tabela de cadastro dos Procedimentos TUSS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SEQ_TUSS | NUMBER | N |  |
| 2 | CD_PRO_TUSS | VARCHAR2 | N | Codigo dos Procedimentos TUSS |
| 3 | DS_PRO_TUSS | VARCHAR2 | N | Descric?o dos Procedimentos TUSS |
| 4 | CD_SUB_GRU_PRO_TUSS | VARCHAR2 | Y | Codigo do Sub-Grupo dos Procedimentos TUSS |
| 5 | CD_PRO_FAT | VARCHAR2 | Y | Codigo dos Procedimento MV2000 relacionado ao procedimento TUSS |
| 6 | SN_ROLL_ANS | VARCHAR2 | N | Se o procedimento perntence ou n?o ao ROLL da ANS |
| 7 | DT_VIGENCIA_PRO_TUSS | DATE | N | Data de vingencia do procedimento TUSS |
| 8 | DS_EDICAO_NORMA_TUSS | VARCHAR2 | N | Descric?o da edic?o ou norma da criac?o do procedimento TUSS |

---

## DBAMV.PROCEDIMENTO_TUSS_SIGTAP
> Tabela de Procedimentos TUSS do SIGTAP usada no CIHA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROCEDIMENTO | VARCHAR2 | N | Codigo do procedimento |
| 2 | DS_PROCEDIMENTO | VARCHAR2 | N | Descricao do procedimento |

---

## DBAMV.PROCED_MICRODATA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROCED_MICRODATA | NUMBER | N |  |
| 2 | DS_PROCED_MICRODATA | VARCHAR2 | N |  |

---

## DBAMV.PROCED_SUS_TETO_UPS_SISCOLO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MULTI_EMPRESA | NUMBER | N | Campo do codigo da empresa associada ao Teto Fisico do procedimento. |
| 2 | CD_UNI_SER | NUMBER | N | Campo do codigo da UPS (SISCOLO) associada ao Teto Fisico do procedimento. |
| 3 | CD_PROCEDIMENTO | VARCHAR2 | N | Campo do codigo do procedimento associada ao Teto Fisico do procedimento. |
| 4 | QT_FISICO | NUMBER | Y | Campo de Qtde. Fisica do procedimento associada ao Teto Fisico do procedimento. |
| 5 | VL_ORCAMENTARIO | NUMBER | Y | Campo de Valor Orcamentario do procedimento associada ao Teto Fisico do procedimento. |
| 6 | DT_VIGENCIA | DATE | N | Campo de Data vigente associada ao Teto Fisico do procedimento. |
| 7 | QT_FISICO_ATUAL | NUMBER | Y | Campo de Qtde. Fisica Atual do procedimento. |
| 8 | VL_ORCAMENTARIO_ATUAL | NUMBER | Y | Campo de Valor Orcamentario Atual do procedimento. |

---

## DBAMV.PROTOCOLO_PACOTE_SETOR
> Tabela de setores por procedimentos do protocolo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PACOTE | NUMBER | N | Codigo do pacote |
| 2 | CD_PRO_FAT | VARCHAR2 | N | Codigo do procedimento |
| 3 | CD_SETOR | NUMBER | N | Codigo do setor |
| 4 | CD_PROTOCOLO_PACOTE | NUMBER | Y | Codigo do protocolo pacote da tabela pai |
| 5 | CD_PROTOCOLO_PACOTE_SETOR | NUMBER | N | Codigo do protocolo do setor |
| 6 | CD_SETOR_PACOTE | NUMBER | Y | Codigo do setor da tabela de protocolo de pacote |

---

## DBAMV.PROTOCOLO_PACOTE_SIMILAR
> Tabela de procedimentos similares por procedimentos do protocolo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PACOTE | NUMBER | N | Codigo do pacote |
| 2 | CD_PRO_FAT | VARCHAR2 | N | Codigo do procedimento |
| 3 | CD_PRO_FAT_SIMILAR | VARCHAR2 | N | Codigo do procedimento similar |
| 4 | TP_FATOR_CONVERSAO | VARCHAR2 | N | Indica o fator de conversao para calculo de produto similares |
| 5 | QT_FATOR_CONVERSAO | NUMBER | N | Indica o valor que sera convertido |

---

## DBAMV.PRO_DSP_AUDIT_CONV
> Tabela de procedimentos dispensados de auditoria por convenio

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONVENIO | NUMBER | N | Codigo do convenio que tem procedimento dispensados de auditoria |
| 2 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da empresa vinculada a regra de procedimento dispensados de auditoria |
| 3 | CD_PRO_FAT | VARCHAR2 | N | Codigo do procedimento de faturamento que n?o sofrera auditoira |

---

## DBAMV.PRO_FAT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRO_FAT | VARCHAR2 | N |  |
| 2 | DS_PRO_FAT | VARCHAR2 | N |  |
| 3 | DS_UNIDADE | VARCHAR2 | N |  |
| 4 | TP_SEXO | VARCHAR2 | N |  |
| 5 | NR_AUXILIAR | NUMBER | Y |  |
| 6 | NR_INCIDENCIAS | NUMBER | Y |  |
| 7 | VL_FILME | NUMBER | Y |  |
| 8 | CD_GRU_PRO | NUMBER | N |  |
| 9 | CD_POR_ANE | NUMBER | Y |  |
| 10 | QTD_MAXIMA | NUMBER | Y |  |
| 11 | SN_PACOTE | VARCHAR2 | N |  |
| 12 | NR_DIAS_INTERNACAO | NUMBER | Y |  |
| 13 | CD_SUS | VARCHAR2 | Y |  |
| 14 | SN_ATIVO | VARCHAR2 | Y |  |
| 15 | CD_GRU_PRO_SUS | VARCHAR2 | Y |  |
| 16 | DS_SUS | VARCHAR2 | Y |  |
| 17 | SN_URGENCIA | VARCHAR2 | Y |  |
| 18 | SN_PODE_PERM_MAIOR | VARCHAR2 | Y |  |
| 19 | SN_PODE_SD | VARCHAR2 | Y |  |
| 20 | QT_MAXIMA_UTI | NUMBER | Y |  |
| 21 | QT_MAXIMA_ACOMPANHANTE | NUMBER | Y |  |
| 22 | CD_ESPEC_SUS | VARCHAR2 | Y |  |
| 23 | NR_IDADE_MINIMA | NUMBER | Y |  |
| 24 | NR_IDADE_MAXIMA | NUMBER | Y |  |
| 25 | CD_ATI_MED | VARCHAR2 | Y |  |
| 26 | SN_FIDEPS | VARCHAR2 | Y |  |
| 27 | SN_CD_SUS_AUXILIAR | VARCHAR2 | Y |  |
| 28 | SN_PERTENCE_PACOTE_SUS | VARCHAR2 | Y |  |
| 29 | FATOR | NUMBER | Y |  |
| 30 | VL_FATOR_MINUTO | NUMBER | Y |  |
| 31 | CD_TIP_ACOM_CUSTO | NUMBER | Y |  |
| 32 | CD_ITEM_RES | NUMBER | Y |  |
| 33 | VL_TEMPO | NUMBER | Y |  |
| 34 | SN_CONTRASTE | VARCHAR2 | Y |  |
| 35 | SN_PODE_SER_AUTORIZADO | VARCHAR2 | Y |  |
| 36 | CD_TIPO_REMESSA | VARCHAR2 | Y |  |
| 37 | VL_CUSTO | NUMBER | Y |  |
| 38 | CD_SUS_REDUZIDO | VARCHAR2 | Y |  |
| 39 | CD_SUB_GRU_PRO_SUS | VARCHAR2 | Y |  |
| 40 | SN_ATO_ANESTESICO | VARCHAR2 | Y |  |
| 41 | SN_BUSCA_ATIVA_PAC_OBITO | VARCHAR2 | N |  |
| 42 | SN_OBRIGA_VDRL | VARCHAR2 | N | Obriga ou n?o cobranca de exame VDRL no SUS. |
| 43 | SN_PERMITE_ALTA_DA_UTI | VARCHAR2 | N |  |
| 44 | SN_GERA_MATRICULA_SAME | VARCHAR2 | N | Identificador - Procedimento esta habilitado a gerar prontuario no Same ? |
| 45 | SN_LANCA_PRO_FAT_ATEND | VARCHAR2 | N |  |
| 46 | NR_HORAS_INTERNACAO | DATE | Y | Numero de horas necessarias de internac?o para realizac?o do procedimento. |
| 47 | NR_DIAS_PERM_UTI | NUMBER | Y | Numero de dias de permanencia em leito de UTI para o procedimento. |
| 48 | NR_HORAS_PERM_UTI | DATE | Y | Numero de horas de permanencia em leito de UTI para o procedimento. |
| 49 | TP_SERV_HOSPITALAR | VARCHAR2 | Y | Tipo de Servico Hospitalar |
| 50 | CD_COMPLEXIDADE | NUMBER | Y | Codigo da complexidade atribuida ao procedimento |
| 51 | SN_CALCULA_VALOR | VARCHAR2 | N | Informa se o procedimento sera recalculado no momento do calculo da conta |
| 52 | SN_PARTO | VARCHAR2 | N | Identifica se o procedimento e um Parto. |
| 53 | TP_CONSULTA | VARCHAR2 | Y | Identifica se o procedimento e Consulta, e o tipo de Consulta (Eletiva/Urgencia) |
| 54 | SN_DIARIA_UTI_RN | VARCHAR2 | N | Indica se a diaria de UTI e para recem nascido |
| 55 | SN_OPME | VARCHAR2 | Y | indica se o Medicamento (MD) ou o Material (MT) sera tratado como se fosse um OPME. |
| 56 | CD_NBS | VARCHAR2 | Y |  |

---

## DBAMV.PRO_FAT_ALTO_CUSTO
> Tabela contém os procedimentos de alto custo por convênio

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONVENIO | NUMBER | N | Código do convênio |
| 2 | CD_PRO_FAT | VARCHAR2 | Y | Código do procedimento (pro-fat) |
| 3 | CD_MULTI_EMPRESA | NUMBER | Y | Código da Multi-Empresa |
| 4 | CD_CON_PLA | NUMBER | Y | ID - PK |
| 5 | TP_GRU_PRO | VARCHAR2 | Y | Código do tipo do grupo de procedimento |
| 6 | VL_BASE | NUMBER | Y | Procedimento passa a ser considerado alto custo quando o valor for maior |
| 7 | ID | NUMBER | N |  |
| 8 | CD_GRU_PRO | NUMBER | Y | Código do grupo de procedimento |

---

## DBAMV.PRO_FAT_CID

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRO_FAT | VARCHAR2 | N |  |
| 2 | CD_CID | VARCHAR2 | N |  |
| 3 | SN_PRINCIPAL_SUS | VARCHAR2 | Y |  |
| 4 | SN_SECUNDARIO_SUS | VARCHAR2 | Y |  |
| 5 | SN_PADRAO | VARCHAR2 | Y |  |

---

## DBAMV.PRO_FAT_HABILITACOES_SUS
> Tabela de cadastro de habilitac?es SUS x Codigo do procedimento de Internac?o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRO_FAT | VARCHAR2 | N | Codigo do procedimento internac?o |
| 2 | CD_HABILITACAO | VARCHAR2 | N | Codigo da habilitac?o SUS |

---

## DBAMV.PRO_FAT_HIERARQUIZADO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRO_FAT | VARCHAR2 | N |  |
| 2 | CD_PRO_FAT_HIERARQUIZADO | VARCHAR2 | N |  |
| 3 | DS_PRO_FAT_HIERARQUIZADO | VARCHAR2 | N |  |
| 4 | CD_PORTE_MEDICO | NUMBER | N |  |
| 5 | CD_SUB_GRU_PRO_HIERARQUIZADO | VARCHAR2 | N |  |
| 6 | QT_PORTE_MEDICO | NUMBER | Y |  |
| 7 | QT_UCO | NUMBER | Y |  |
| 8 | NR_INCIDENCIA | NUMBER | Y |  |
| 9 | VL_FILME | NUMBER | Y |  |

---

## DBAMV.PRO_FAT_HIERARQUIZADO_CBHPM
> TABELA DE AUXILIO A IMPORTACAO DA CBHPM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRO_FAT_HIERARQUIZADO_CBHPM | NUMBER | N | Chave primaria da tabela |
| 2 | CD_PRO_FAT | VARCHAR2 | Y | coluna para gravar o codigo pro_fat |
| 3 | CD_PRO_FAT_HIERARQUIZADO | VARCHAR2 | Y | coluna para gravar o codigo pro_fat_hierarquizado |
| 4 | DS_PRO_FAT_HIERARQUIZADO | VARCHAR2 | Y | coluna para gravar a descricao do procedimento |
| 5 | CD_PORTE_MEDICO | VARCHAR2 | Y | coluna para gravar o porte medico |
| 6 | CD_SUB_GRU_PRO_HIERARQUIZADO | VARCHAR2 | Y | coluna para gravar o subgrupo |
| 7 | QT_PORTE_MEDICO | NUMBER | Y | coluna para gravar aquantidade de porte medico |
| 8 | QT_UCO | NUMBER | Y | coluna para gravar a quantidade de uco |
| 9 | NR_INCIDENCIA | VARCHAR2 | Y | coluna para gravar o numero de incidencias |
| 10 | VL_FILME | VARCHAR2 | Y | coluna para gravar o valor do filme |
| 11 | NR_AUXILIAR | VARCHAR2 | Y | coluna para gravar o numero de auxiliares |
| 12 | PORTE_ANESTESICO | VARCHAR2 | Y | coluna para gravar o porte anestesico |
| 13 | QT_M2_FILME | NUMBER | Y | coluna para gravar metragem do filme |

---

## DBAMV.PRO_FAT_SEM_PRESTADOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRO_FAT_SEM_PRESTADOR | NUMBER | N |  |
| 2 | CD_GRU_PRO | NUMBER | Y |  |
| 3 | CD_PRO_FAT | VARCHAR2 | Y |  |
| 4 | CD_SETOR | NUMBER | Y |  |
| 5 | CD_PRESTADOR | NUMBER | N |  |
| 6 | CD_SERVICO | NUMBER | Y |  |
| 7 | SN_VALOR_LUCRO | VARCHAR2 | N | Informa se o item tera como base de repasse o valor do lucro (faturado - compra) |
| 8 | DT_VIGENCIA | DATE | Y | Data de início da vigência do repasse (opcional). |

---

## DBAMV.PRO_FAT_SIPAC

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRO_FAT | VARCHAR2 | N |  |
| 2 | CD_SIPAC | VARCHAR2 | N |  |

---

## DBAMV.PRO_FAT_SUS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRO_FAT | VARCHAR2 | N |  |
| 2 | CD_PRO_FAT_SUS | VARCHAR2 | Y |  |
| 3 | CD_PROCEDIMENTO | VARCHAR2 | Y | Codigo do procedimento SUS - Portaria 321 |

---

## DBAMV.PRO_FAT_SUS_AMB
> Tabela de relacionamento dos procedimentos do faturamento com procedimento sus

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRO_FAT | VARCHAR2 | N | Coluna da tabela que guarda a informac?o do codigo do faturamento |
| 2 | CD_PROCEDIMENTO_SUS | VARCHAR2 | N | Coluna da tabela que guarda a informac?o do codigo do faturamento SUS |
| 3 | SN_PACOTE | VARCHAR2 | N | Indica se o procedimento sera considerado como pacote. |
| 4 | SN_GERA_TP_SERV_HOSPITALAR | VARCHAR2 | N | Indica se o procedimento do grupo SH e configurado como taxa sera gerado no arquivo da CIHA. |

---

## DBAMV.PRO_FAT_SUS_BKP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRO_FAT | VARCHAR2 | N |  |
| 2 | CD_PRO_FAT_SUS | VARCHAR2 | Y |  |
| 3 | CD_PROCEDIMENTO | VARCHAR2 | Y |  |

---

## DBAMV.PRO_FAT_TAXA_MEIO_MAG

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRO_FAT | VARCHAR2 | N |  |

---

## DBAMV.PRO_FAT_TUSS_AMB
> Tabela de relacionamento pro_fat x proced. TUSS usada no CIHA ambulatório

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRO_FAT | VARCHAR2 | N | Codigo do procedimento |
| 2 | CD_PROCEDIMENTO_TUSS | VARCHAR2 | Y | Codigo do procedimento TUSS |
| 3 | SN_PACOTE | VARCHAR2 | N |  |
| 4 | SN_GERA_TP_SERV_HOSPITALAR | VARCHAR2 | N |  |

---

## DBAMV.PRO_FAT_TUSS_INT
> Tabela de relacionamento pro_fat x proced. TUSS usada no CIHA internação

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRO_FAT | VARCHAR2 | N | Codigo do procedimento |
| 2 | CD_PROCEDIMENTO_TUSS | VARCHAR2 | Y | Codigo do procedimento TUSS |

---

## DBAMV.P_ESCALA_PRO_FAT
> Tabela de de Configurac?o dos Procedimentos realizados durante os horarios da Escala

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_P_ESCALA | VARCHAR2 | N | Codigo de Identificac?o da Escala |
| 2 | CD_PRO_FAT | VARCHAR2 | N | Codigo de Identificac?o do Procedimento |
| 3 | CD_SSM | VARCHAR2 | Y | Codigo de Identificac?o do Procedimento Ambulatorial SUS associado ao Procedimento de Faturamento |
| 4 | CD_PROCEDIMENTO | VARCHAR2 | Y |  |

---

## DBAMV.REG_REPASSE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REG_REPASSE | NUMBER | N |  |
| 2 | DS_REG_REPASSE | VARCHAR2 | N |  |

---

## DBAMV.REG_REPASSE_PLANTAO_SETOR
> Tabela para geração do repasse de plantão por setor.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ESCALA | NUMBER | N | Código da escala. |
| 2 | DT_COMPETENCIA | DATE | N | COmpetência para gerar o repasse. |
| 3 | CD_PRESTADOR_REPASSE | NUMBER | N | Grupo de repasse. |
| 4 | CD_GRUPO_SETOR | NUMBER | N | Grupo de setor. |
| 5 | CD_SETOR | NUMBER | N | Código do setor. |
| 6 | VL_TOT_PLANTAO | NUMBER | Y | Total calculado dos plantões efetuados. |
| 7 | VL_REPASSAR | NUMBER | Y | Valor a repassar para o grupo de repasse e setor. |
| 8 | DT_AUTORIZADO | DATE | Y | Data em que o registro foi autorizado para geração do repasse. |
| 9 | DT_CANCELADO | DATE | Y | Data em que o registro foi cancelado para não gerar repasse. |
| 10 | SN_AUTORIZADO | VARCHAR2 | Y | Indica que o registro foi autorizado para geração do repasse. |
| 11 | SN_CANCELADO | VARCHAR2 | Y | Indica que o registro foi cancelado para geração do repasse. |
| 12 | CD_USUARIO_AUTORIZOU | VARCHAR2 | Y | Usuário que autorizou ou cancelou o registro para repasse. |
| 13 | CD_USUARIO_GEROU | VARCHAR2 | Y | Usuário que gerou o repasse. |
| 14 | CD_REPASSE | NUMBER | Y | Código do repasse gerado. |

---

## DBAMV.REG_REPASSE_POS_ANAL
> Cadastro de regras pos calculo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITREG_POS_ANAL | NUMBER | N | Código sequencial do item pos analise |
| 2 | VL_FAIXA_INI | NUMBER | Y | Valor referencia faixa inicio a ser usado na regra de pos analise |
| 3 | VL_FAIXA_FIM | NUMBER | Y | Valor referencia faixa final  a ser usado na regra de pos analise |
| 4 | VL_PERC_INCREMENTO | NUMBER | Y | Percentual de referencia a ser usadao na regra de pos analise |
| 5 | VL_FIXO | NUMBER | Y | Valor fixo a ser usado na regra de pos analise |
| 6 | CD_PRESTADOR_REPASSE | NUMBER | Y | CÓDIGO DO GRUPO PARA REPASSE |
| 7 | CD_MULTI_EMPRESA | NUMBER | N | CÓDIGO DA EMPRESA |

---

## DBAMV.REG_REPASSE_PROD
> Cadastro de regras do repasse de produtividade

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REG_REP_PRD | NUMBER | N | Codigo da regra de produtividade |
| 2 | DS_REG_REP_PRD | VARCHAR2 | N | Descrição da regra de produtividade |
| 3 | TP_REG_REP_PRD | VARCHAR2 | Y | Tipo da regra de produtividade MR ou SP |

---

## DBAMV.REG_REPASSE_PROD_EXCECAO
> Cadastro de regras de exceção no repasse de produtividade

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITREG_REP_PRD_EXC | NUMBER | N | Código do item da regra de exceção no repasse de produtividade |
| 2 | CD_REG_REP_PRD | NUMBER | N | Código do item da regra de repasse de produtividade |
| 3 | CD_GRU_FAT | NUMBER | Y | Código do grupo de faturamento na regra de exceção do repasse de produtividade |
| 4 | CD_GRU_PRO | NUMBER | Y | Código do grupo de procedimento na regra de exceção do repasse de produtividade |
| 5 | CD_ORI_ATE | NUMBER | Y | Código de origem na regra de exceção do repasse de produtividade |
| 6 | CD_SETOR | NUMBER | Y | Código do setor na regra de exceção do repasse de produtividade |
| 7 | CD_ITEM_RES | NUMBER | Y | Código da conta de custo na regra de exceção do repasse de produtividade |
| 8 | TP_CUSTO | VARCHAR2 | Y | Tipo da conta de custo na regra de exceção do repasse de produtividade |
| 9 | CD_CONVENIO | NUMBER | Y | CÓDIGO DO CONVÊNIO |
| 10 | CD_PRO_FAT | VARCHAR2 | Y | CÓDIGO DO PROCEDIMENTO DO FATURAMENTO |

---

## DBAMV.REG_REPASSE_RATEIO
> Regra de Rateio de Pagamento de Repasse por Grupo de Repasse

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MULTI_EMPRESA | NUMBER | N | Empresa que utiliza a Regra de Rateio de Pagamento de Repasse por Grupo de Repasse |
| 2 | CD_PRESTADOR_REPASSE | NUMBER | N | Grupo de Repasse que utiliza a Regra de Rateio de Pagamento de Repasse por Grupo de Repasse |
| 3 | CD_REG_REPASSE_RATEIO | NUMBER | N | Chave primaria da tabela a partir da sequence seq_reg_repasse_rateio |
| 4 | DT_COMPETENCIA | DATE | N | Competencia de vigencia da regra |

---

## DBAMV.REG_REPASSE_SIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REG_REPASSE_SIA | NUMBER | N |  |
| 2 | DS_REG_REPASSE_SIA | VARCHAR2 | N |  |

---

## DBAMV.REG_REPASSE_SIH

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REG_REPASSE_SIH | NUMBER | N |  |
| 2 | DS_REG_REPASSE_SIH | VARCHAR2 | N |  |

---

## DBAMV.REG_REP_AMB

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REG_REPASSE | NUMBER | N |  |
| 2 | DS_REG_REPASSE | VARCHAR2 | N |  |

---

## DBAMV.REG_REP_DESC

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REG_REP_DESC | NUMBER | N |  |
| 2 | CD_REG_REPASSE | NUMBER | Y |  |
| 3 | DS_REG_REP_DESC | VARCHAR2 | N |  |
| 4 | VL_FAIXA_INICIAL | NUMBER | N |  |
| 5 | VL_FAIXA_FINAL | NUMBER | N |  |
| 6 | VL_DESCONTO | NUMBER | Y |  |
| 7 | VL_PERC_DESCONTO | NUMBER | Y |  |
| 8 | VL_ACRESCIMO | NUMBER | Y |  |
| 9 | VL_PERC_ACRESCIMO | NUMBER | Y |  |
| 10 | CD_PRESTADOR | NUMBER | Y |  |
| 11 | CD_REG_REPASSE_SIA | NUMBER | Y |  |
| 12 | CD_REG_REPASSE_SIH | NUMBER | Y |  |
| 13 | SN_INCIDE_BASE_IMPOSTO | VARCHAR2 | N | Informa de o acrescimo e desconto sera aplicado na base de calculo de impostos no pagamento do re... |
| 14 | CD_DESC_ACRES | NUMBER | Y | Informa o acrescimo e desconto do financeiro para lancamento somente para os registros que n?o in... |
| 15 | DT_VIGENCIA_INICIAL | DATE | N | Data inicial de vigencia da regra |
| 16 | DT_VIGENCIA_FINAL | DATE | N | Data final de vigencia da regra |
| 17 | TP_FREQUENCIA | VARCHAR2 | N | Frequencia em que a regra sera aplicada na competencia. S - Sempre, M - Mensal |
| 18 | SN_ATIVO | VARCHAR2 | N | Ativa ou desativa a regra de acrescimo e desconto |
| 19 | SN_CALCULA_SOBRE_VALOR_LIQUIDO | VARCHAR2 | Y | Indica que o acrescimo ou desconto s?o calculados a partir do valor liquido de repasse |
| 20 | CD_MULTI_EMPRESA | NUMBER | Y | Empresa correspondente a regra. Sera obrigatoria apenas com a restric?o por empresa ativa no cad ... |

---

## DBAMV.REG_REP_EQP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REG_REP_EQP | NUMBER | N |  |
| 2 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 3 | CD_PRESTADOR | NUMBER | N | Prestador Lider participante da equipe |
| 4 | DT_INICIO | DATE | N | Data inicio da vigencia da regra |
| 5 | DT_FINAL | DATE | Y | Data final de vigencia da regra |
| 6 | CD_REG_REPASSE | NUMBER | Y | Codigo da regra da equipe para o convenio |
| 7 | CD_REG_REPASSE_SIH | NUMBER | Y | Codigo da regra da equipe para a internacao SUS |
| 8 | CD_REG_REPASSE_SIA | NUMBER | Y |  |

---

## DBAMV.REG_REP_GRUPO
> Armazena regra de repasse por grupo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REG_REP_GRU | NUMBER | N |  |
| 2 | CD_GRU_PRO | NUMBER | Y | Código do Grupo de Procedimento |
| 3 | CD_GRU_FAT | NUMBER | Y | Código do Grupo de Faturamento |
| 4 | CD_PRO_FAT | VARCHAR2 | Y | Código do Faturamento |
| 5 | CD_ORI_ATE | NUMBER | Y | Código da Origem |
| 6 | CD_SERVICO | NUMBER | Y | Código do Serviço |
| 7 | CD_CONVENIO | NUMBER | Y | Código do Convênio |
| 8 | CD_MULTI_EMPRESA | NUMBER | Y | Código da empresa |
| 9 | CD_SETOR | NUMBER | Y | Código do Setor |
| 10 | TP_ATENDIMENTO | VARCHAR2 | Y | Tipo de Contas |

---

## DBAMV.REG_REP_SOLICITANTE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REG_REP_SOL | NUMBER | N |  |
| 2 | CD_GRU_PRO | NUMBER | Y |  |
| 3 | CD_ORI_ATE | NUMBER | Y |  |
| 4 | CD_SERVICO | NUMBER | Y |  |
| 5 | CD_CONVENIO | NUMBER | Y |  |
| 6 | TP_ATENDIMENTO | VARCHAR2 | N |  |
| 7 | CD_SETOR | NUMBER | Y |  |
| 8 | VL_PERC_REPASSE | NUMBER | N |  |
| 9 | DS_REG_REP_SOL | VARCHAR2 | N |  |
| 10 | CD_PRO_FAT | VARCHAR2 | Y |  |
| 11 | CD_MULTI_EMPRESA | NUMBER | Y | Empresa correspondente a regra. Sera obrigatoria apenas com a restric?o por empresa ativa no cad ... |
| 12 | SN_SOBRE_TOTAL | VARCHAR2 | N | Flag "% sobre Total". Indica, caso marcada com "S", que a forma de cálculo seguirá um fluxo difer... |
| 13 | CD_PRESTADOR | NUMBER | Y | Código do Prestador |

---

## DBAMV.REG_REP_SUBCONTRATADA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REG_REP_SUB | NUMBER | N |  |
| 2 | CD_GRU_PRO | NUMBER | Y |  |
| 3 | CD_ORI_ATE | NUMBER | Y |  |
| 4 | CD_SERVICO | NUMBER | Y |  |
| 5 | CD_CONVENIO | NUMBER | Y |  |
| 6 | TP_ATENDIMENTO | VARCHAR2 | N |  |
| 7 | CD_SETOR | NUMBER | Y |  |
| 8 | VL_PERC_REPASSE | NUMBER | Y | Preenchido quando a regra for por percentual |
| 9 | CD_PRESTADOR_CRED | NUMBER | N |  |
| 10 | CD_PRESTADOR_DEB | NUMBER | N |  |
| 11 | DS_REG_REP_SUB_CRED | VARCHAR2 | N |  |
| 12 | DS_REG_REP_SUB_DEB | VARCHAR2 | N |  |
| 13 | VL_REPASSE | NUMBER | Y | Preenchido quando a regra for por Valor |
| 14 | CD_PRO_FAT | VARCHAR2 | Y | Preenchido quando a regra for por procedimento AMB |
| 15 | CD_SUS | VARCHAR2 | Y | Preenchido quando a regra for por procedimento SUS/SIH |
| 16 | CD_SSM | VARCHAR2 | Y | Preenchido quando a regra for por procedimento SUS/SIA |
| 17 | CD_MULTI_EMPRESA | NUMBER | Y | Empresa correspondente a regra. Sera obrigatoria apenas com a restric?o por empresa ativa no cad ... |

---

## DBAMV.REG_REP_VARIAVEL
> Tabela de regras do Repasse Variável.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REG_REP_VARIAVEL | NUMBER | N | Sequencial da tabela. |
| 2 | DS_REG_REP_VARIAVEL | VARCHAR2 | Y | Descrição da regra. |
| 3 | CD_MULTI_EMPRESA | NUMBER | Y | Empresa. |
| 4 | DT_VIGENCIA_INI | DATE | Y | Vigência inicial da regra. |
| 5 | DT_VIGENCIA_FIM | DATE | Y | Vigência final da regra. |
| 6 | CD_EQUIPE_REP_VARIAVEL | NUMBER | N | Equipe do repasse. |
| 7 | CD_CONVENIO | NUMBER | Y | Convênio. |
| 8 | CD_CON_PLA | NUMBER | Y | Plano. |
| 9 | CD_ESPECIALID | NUMBER | Y | Especialidade. |
| 10 | CD_TIP_ACOM | NUMBER | Y | Acomodação. |
| 11 | CD_PRO_FAT | VARCHAR2 | N | Código do procedimento. |
| 12 | SN_PACOTE | VARCHAR2 | N | Indica de o Procedimento se refere a um Pacote. |
| 13 | VL_PERC_PACOTE | NUMBER | Y | Indica o percentual que será aplicado ao valor do pacote na conta, como base para calcular o valo... |

---

## DBAMV.RELACAO_PROCED_SUS_SERVICO
> Tabela que relaciona Procedimento SUS com Servico

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GRUPO_PROCEDIMENTO | VARCHAR2 | Y | Codigo do Grupo de Procedimento |
| 2 | CD_SUB_GRUPO_PROCEDIMENTO | VARCHAR2 | Y | Codigo do SubGrupo de Procedimento |
| 3 | CD_ORGANIZA_GRUPO_PROCEDIMENTO | VARCHAR2 | Y | Codigo da Forma de Organizac?o do Procedimento |
| 4 | CD_PROCEDIMENTO | VARCHAR2 | Y | Codigo do Procedimento |
| 5 | CD_SERVICO | NUMBER | N | Codigo do Servico |
| 6 | CD_CONTROLE | VARCHAR2 | N | Codigo do Controle |

---

## DBAMV.REPASSE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REPASSE | NUMBER | N |  |
| 2 | DT_COMPETENCIA | DATE | N |  |
| 3 | DT_REPASSE | DATE | N |  |
| 4 | DS_REPASSE | VARCHAR2 | Y |  |
| 5 | TP_REPASSE | VARCHAR2 | N |  |
| 6 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 7 | SN_CONTABILIZAR | VARCHAR2 | N | Informa se o repasse sera apenas para previs?o de contabilizac?o |

---

## DBAMV.REPASSE_AUDITORIA
> TABELA DE AUDITORIA REPASSE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REPASSE_AUDITORIA | NUMBER | N | CÓDIGO DA AUDITORIA REPASSE PK E SEQUENCE DA TABELA |
| 2 | TP_STATUS_DET | VARCHAR2 | N | STATUS DO DETALHAMENTO (VALORES S,N E DEFAULT S) |
| 3 | DT_COMPETENCIA | DATE | N | COMPETÊNCIA DO REPASSE |
| 4 | CD_PRESTADOR | NUMBER | N | PRESTADOR OU GRUPO DE REPASSE - FK COM DBAMV.PRESTADOR.CD_PRESTADOR |
| 5 | CD_REPASSE | NUMBER | N | CÓDIGO DO REPASSE - FK COM DBAMV.REPASSE.CD_REPASSE |
| 6 | DS_REPASSE | VARCHAR2 | Y | DESCRIÇÃO DO REPASSE |
| 7 | DT_REPASSE | DATE | Y | DATA DO REPASSE |
| 8 | TP_REPASSE | VARCHAR2 | Y | TIPO DO REPASSE |
| 9 | CD_CONTRATO | NUMBER | Y | CÓDIGO DO CONTRATO - FK COM DBAMV.GCTO_CONTRATO.CD_CONTRATO |
| 10 | VL_LIMITE_MAXIMO | NUMBER | Y | LIMITE DEFINIDO PARA O REPASSE |
| 11 | VL_REPASSE | NUMBER | Y | VALOR DESTE REPASSE GERADO |
| 12 | VL_DESCONTO | NUMBER | Y | VALOR DE DESCONTO NO REPASSE GERADO |
| 13 | VL_LIBERADO | NUMBER | Y | VALOR QUE SERÁ LIBERADO PARA PAGAMENTO |
| 14 | SN_BLOQUEIA | VARCHAR2 | Y | INDICA SE O REPASSE FOI BLOQUEADO PARA PAGAMENTO (DEFAULT N) |
| 15 | SN_CANCELA | VARCHAR2 | Y | INDICA SE O REPASSE FOI CANCELADO PARA PAGAMENTO (DEFAULT N) |
| 16 | SN_APROVA | VARCHAR2 | Y | INDICA SE O REPASSE FOI APROVADO PARA PAGAMENTO (DEFAULT N) |
| 17 | CD_DEMANDA | NUMBER | Y | CÓDIGO DA DEMANDA DE ALÇADA DE APROVAÇÃO |
| 18 | SN_AUTORIZADO | VARCHAR2 | Y | INDICA QUE O REPASSE ESTÁ AUTORIZADO PARA PAGAMENTO (DEFAULT N) |
| 19 | DT_AUTORIZACAO | DATE | Y | DATA DA AUTORIZAÇÃO |
| 20 | DT_REPROVACAO | DATE | Y | DATA DA REPROVAÇÃO |
| 21 | SN_PAGO | VARCHAR2 | Y | INDICA QUE O REPASSE JÁ FOI PAGO (DEFAULT N) |

---

## DBAMV.REPASSE_CONSOLIDADO
> Tabela de consolidac?o do repasse medico

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REPASSE_CONSOLIDADO | NUMBER | N | Codigo sequencial que deve seguir o sequence, DBAMV.SEQ_REPASSE_CONSOLIDADO |
| 2 | CD_IT_REPASSE | NUMBER | Y | Codigo do item de repasse de convenio, glosa |
| 3 | CD_IT_REPASSE_SIA | NUMBER | Y | Codigo do item de repasse SIA |
| 4 | CD_IT_REPASSE_SIH | NUMBER | Y | Codigo do item de repasse SIH |
| 5 | CD_REMESSA | NUMBER | Y | Codigo da remessa |
| 6 | DT_LANCAMENTO | DATE | Y | Data de lancamento do item na conta |
| 7 | CD_REG_FAT | NUMBER | Y | Codigo da conta hospitalar |
| 8 | CD_REG_AMB | NUMBER | Y | Codigo da conta ambulatorial |
| 9 | CD_LANC_FAT | NUMBER | Y | Codigo do lancamento na conta hospitalar |
| 10 | CD_LANC_AMB | NUMBER | Y | Codigo do lancamento na conta ambulatorial |
| 11 | CD_PRO_FAT | VARCHAR2 | Y | Codigo do procedimento |
| 12 | CD_CONVENIO | NUMBER | Y | Codigo do convenio |
| 13 | QT_LANCAMENTO | NUMBER | Y | Quantidade de lancamento |
| 14 | CD_PRESTADOR | NUMBER | Y | Codigo do prestador |
| 15 | CD_ATI_MED | VARCHAR2 | Y | Codigo da atividade medica |
| 16 | VL_TOTAL_CONTA | NUMBER | Y | Valor do item na conta |
| 17 | NM_CONVENIO | VARCHAR2 | Y | Nome do convenio |
| 18 | DS_PRO_FAT | VARCHAR2 | Y | Descric?o do procedimento |
| 19 | CD_GRU_PRO | NUMBER | Y | Codigo do grupo de procedimento |
| 20 | CD_PACIENTE | NUMBER | Y | Codigo do paciente |
| 21 | CD_ORI_ATE | NUMBER | Y | Codigo da origem do atendimento |
| 22 | NM_PACIENTE | VARCHAR2 | Y | Nome do paciente |
| 23 | NM_PRESTADOR | VARCHAR2 | Y | Nome do prestador |
| 24 | CD_REG_REPASSE | NUMBER | Y | Codigo da regra de repasse |
| 25 | CD_GRU_FAT | NUMBER | Y | Codigo do grupo de faturamento |
| 26 | TP_REMESSA | VARCHAR2 | Y | Tipo da gerac?o do repasse |
| 27 | DT_ENTREGA_DA_FATURA | DATE | Y | Data da entrega da fatura |
| 28 | DT_COMPETENCIA_FAT | DATE | Y | Data da competencia do faturamento |
| 29 | CD_PRESTADOR_REPASSE | NUMBER | Y | Codigo do prestador de repasse |
| 30 | SN_PERTENCE_PACOTE | VARCHAR2 | Y | Informa se o item pertence a pacote |
| 31 | CD_TIP_ACOM | NUMBER | Y | Codigo do tipo de acomodac?o |
| 32 | CD_SETOR | NUMBER | Y | Codigo do setor |
| 33 | TP_ATENDIMENTO | VARCHAR2 | Y | Tipo de Atendimento |
| 34 | CD_MULTI_EMPRESA | NUMBER | Y | Codigo da empresa |
| 35 | QT_CH_UNITARIO | NUMBER | Y | Qtd. CH do item na conta |
| 36 | CD_ATENDIMENTO | NUMBER | Y | Codigo do atendimento |
| 37 | VL_REPASSE_SOL | NUMBER | Y | Valor do repasse de solicitante |
| 38 | DS_REG_REP_SOL | VARCHAR2 | Y | Descric?o do repasse de solicitante |
| 39 | CD_PRESTADOR_SOL | NUMBER | Y | Codigo do prestador do solicitante |
| 40 | VL_REPASSE_SUB | NUMBER | Y | Valor do repasse de subcontratada |
| 41 | CD_PREST_CRED_SUB | NUMBER | Y | Descric?o do repasse de credito de subcontratada |
| 42 | DS_PREST_CRED_SUB | VARCHAR2 | Y |  |
| 43 | CD_PREST_DEB_SUB | NUMBER | Y | Descric?o do repasse de debito de subcontratada |
| 44 | DS_PREST_DEB_SUB | VARCHAR2 | Y |  |
| 45 | VL_REPASSE | NUMBER | Y | Valor do repasse |
| 46 | VL_FILME | NUMBER | Y | Valor do filme do item |
| 47 | VL_GLOSA | NUMBER | Y | Valor da glosa |
| 48 | VL_PERC_REPASSE | NUMBER | Y | Valor do percentual de repasse |
| 49 | DT_FECHAMENTO | DATE | Y | Data do fechamento |
| 50 | CD_EVENTOS | NUMBER | Y | Codigo do evento SIA-SUS |
| 51 | CD_ESPECIALID | NUMBER | Y | Codigo da especialidade SIA-SUS |
| 52 | CD_SSM | VARCHAR2 | Y | Codigo do procedimento SIA-SUS |
| 53 | QT_LANCADA | NUMBER | Y | Quantidade do evento SIA-SUS |
| 54 | CD_GRU_ATE | NUMBER | Y | Codigo do grupo de atendimento do evento SIA-SUS |
| 55 | CD_IT_MARCACAO | NUMBER | Y | Codigo do item de marcac?o |
| 56 | DT_EVE_SIASUS | DATE | Y | Data do evento SIA-SUS |
| 57 | CD_TIP_ATE | NUMBER | Y | Codigo do tipo de atendimento SIA-SUS |
| 58 | DS_ORI_ATE | VARCHAR2 | Y | Descric?o da origem do atendimento |
| 59 | VL_OUTROS | NUMBER | Y | Valor dos outros integrantes no evento SIA-SUS |
| 60 | VL_AUXILIAR | NUMBER | Y | Valor do auxiliar no evento SIA-SUS |
| 61 | VL_ANESTESISTA | NUMBER | Y | Valor do anaestesista no evento SIA-SUS |
| 62 | CD_REG_REPASSE_SIA | NUMBER | Y | Codigo da regra do repasse SIA |
| 63 | DS_TITULO | VARCHAR2 | Y | Descric?o do procedimento SIA-SUS |
| 64 | CD_FAT_SIA | NUMBER | Y | Codigo da fatura SIA |
| 65 | DT_PERIODO_FINAL | DATE | Y | Codido do periodo final do repasse SIA |
| 66 | CD_TIPO | VARCHAR2 | Y | Codido do tipo de repasse |
| 67 | HR_LANCAMENTO | DATE | Y | Hora de lancamento do item |
| 68 | VL_ATO | NUMBER | Y | Valor do ato no item da conta SIH |
| 69 | VL_SD | NUMBER | Y | Valor do sd no item da conta SIH |
| 70 | VL_SP | NUMBER | Y | Valor do sp no item da conta SIH |
| 71 | VL_SH | NUMBER | Y | Valor do sh no item da conta SIH |
| 72 | VL_PONTOS | NUMBER | Y | Valor do ponto no item da conta SIH |
| 73 | QT_PONTOS | NUMBER | Y | Quantdade de ponto no item da conta SIH |
| 74 | CD_ESPEC_SUS | VARCHAR2 | Y | Codigo da especialidade SIH |
| 75 | CD_SUS | VARCHAR2 | Y | Codigo do procedimento SIH |
| 76 | CD_REG_REPASSE_SIH | NUMBER | Y | Codigo da regra do repasse SIH |
| 77 | NR_GUIA | VARCHAR2 | Y | Numero da guia no item |
| 78 | CD_REPASSE | NUMBER | Y | Codigo do repasse |
| 79 | DS_REPASSE | VARCHAR2 | Y | Descric?o do repasse |
| 80 | DT_COMPETENCIA_REP | DATE | Y | Competencia do repasse |
| 81 | DT_REPASSE | DATE | Y | Data do repasse |
| 82 | DS_GRU_PRO | VARCHAR2 | Y | Descric?o do grupo de procedimento |
| 83 | DS_TIPO | VARCHAR2 | Y | Descric?o do tipo de repasse no relatorio |
| 84 | SN_MEDICO | VARCHAR2 | Y | Informa se e medico |
| 85 | VL_GERAL | NUMBER | Y | Valor geral do item SIA |
| 86 | VL_BASE_REPASSADO | NUMBER | Y | Valor base do repasse no item |
| 87 | DS_ATI_MED | VARCHAR2 | Y | Descric?o da atividade medica |
| 88 | SN_HORARIO_CONTRATADO | VARCHAR2 | Y | Informa se e consultorio particular |
| 89 | NM_PRESTADOR_REPASSE | VARCHAR2 | Y | Nome do prestador de repasse |
| 90 | CD_CON_PAG | NUMBER | Y | Contas a pagar do repasse |
| 91 | DT_EMISSAO | DATE | Y | Data de pagamento do repasse |
| 92 | CD_GLOSA | NUMBER | Y | Codigo da glosa do item |
| 93 | VL_RECEBIDO | NUMBER | Y | Valor recebido no conciliado |
| 94 | NM_SETOR | VARCHAR2 | Y | Nome do setor |
| 95 | DS_GRU_FAT | VARCHAR2 | Y | Descric?o do grupo de faturamento |
| 96 | SN_HORARIO_ESPECIAL | VARCHAR2 | Y | Informa se e horario especial |
| 97 | CD_PROCEDIMENTO | VARCHAR2 | Y | Codigo do procedimento SUS modelo P321 |
| 98 | DS_PROCEDIMENTO | VARCHAR2 | Y | Descric?o do procedimento SUS modelo P321 |
| 99 | CD_UPS | VARCHAR2 | Y | Codigo da Unidade Prestadora de Servicos (UPS) |
| 100 | DS_UPS | VARCHAR2 | Y | Descric?o da Unidade Prestadora de Servicos (UPS) |
| 101 | CD_ITREG_REPASSE | NUMBER | Y | Código do item da regra de repasse |

---

## DBAMV.REPASSE_CONTA
> Tabela de repasse por conta de convenio

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REPASSE_CONTA | NUMBER | N | Codigo da chave primaria da tabela de repasse por conta, sequence |
| 2 | CD_REPASSE | NUMBER | N | Codigo do repasse gerado na tabela de repasse prestador |
| 3 | CD_PRESTADOR | NUMBER | N | Codigo do prestador gerado na tabela de repasse prestador |
| 4 | CD_PRESTADOR_REPASSE | NUMBER | N | Codigo do prestador de repasse gerado na tabela de repasse prestador |
| 5 | CD_REG_FAT | NUMBER | Y | Codigo da conta hospitalar gerada no repasse |
| 6 | CD_REG_AMB | NUMBER | Y | Codigo da conta ambulatorial gerada no repasse |
| 7 | VL_FATURADO | NUMBER | N | Valor total da conta, base para o repasse |
| 8 | VL_REPASSADO | NUMBER | N | Valor do repasse aplicada a regra, por conta, do prestador |

---

## DBAMV.REPASSE_CONTROLE_CONTAS
> Tabela de controle de contas

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONTA | NUMBER | N | Código da conta |
| 2 | CD_REGRA | NUMBER | N | Código da regra |
| 3 | TP_REPASSE | VARCHAR2 | N | Tipo do repasse |
| 4 | DT_COMPETENCIA | DATE | N | Data da competência |
| 5 | CD_PRESTADOR | NUMBER | Y | Código do prestador |
| 6 | CD_REPASSE | NUMBER | Y | Código do repasse |

---

## DBAMV.REPASSE_CUSTOS
> Tabela para armazenar custos mensais de cada tipo de despesa por pestador

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SETOR | NUMBER | N | Codigo do setor associado ao valor de custos, a ser informado, na competencia |
| 2 | CD_ITEM_RES | NUMBER | N | Codigo do tipo de despesa associada ao valor de custos, a ser informado, na competencia |
| 3 | DT_COMPETENCIA | DATE | N | Data de competencia associada ao valor de custos do tipo de despesa, a ser informado, para o setor |
| 4 | VL_CUSTOS | NUMBER | N | Valor de custos do tipo de despesa, no setor, para a competencia |

---

## DBAMV.REPASSE_CUSTOS_PREST
> Tabela de cadastro dos tipos de despesa de repasse do prestador

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MULTI_EMPRESA | NUMBER | N | Empresa a qual esta vinculado desconto da despesa no setor |
| 2 | CD_PRESTADOR | NUMBER | N | Prestador ao qual esta vinculado desconto da despesa no setor |
| 3 | CD_ITEM_RES | NUMBER | N | Codigo do tipo de despesa que sera abatida no repasse do prestador. |
| 4 | CD_SETOR | NUMBER | N | Codigo do setor no qual a produc?o do prestador sofre abatimento dos custos para a despesa informada |
| 5 | DT_VIGENCIA | DATE | N | Data de inicio do desconto da despesa para o setor com o percentual informado |
| 6 | VL_PERC_CUSTOS | NUMBER | N | Percentual aplicado sobre os custos no setor para a despesa informada, resultando na base de desc... |

---

## DBAMV.REPASSE_CUSTOS_TEMP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SETOR | NUMBER | N |  |
| 2 | VL_RECEBIDO | NUMBER | N |  |

---

## DBAMV.REPASSE_GCTO_CONTRATO
> Tabela de Repasse GCTO Contratos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SEQUENCIAL | NUMBER | N | Código Sequencial |
| 2 | CD_MULTI_EMPRESA | NUMBER | N | Código da Empresa |
| 3 | CD_PRESTADOR | NUMBER | N | Código do Prestador |
| 4 | TP_REPASSE | VARCHAR2 | N | Tipo de Repasse |
| 5 | CD_CONTRATO | NUMBER | Y | Código do Contrato |
| 6 | VL_LIMITE_MAXIMO | NUMBER | Y | Valor do Limite Máximo |

---

## DBAMV.REPASSE_PAGAMENTO_TEMP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REPASSE | NUMBER | N |  |
| 2 | CD_PRESTADOR | NUMBER | N |  |
| 3 | CD_PRESTADOR_REPASSE | NUMBER | N |  |
| 4 | DT_COMPETENCIA | DATE | N |  |
| 5 | DS_REPASSE | VARCHAR2 | N |  |
| 6 | VL_REPASSE | NUMBER | N |  |
| 7 | VL_DESCONTO | NUMBER | N |  |
| 8 | VL_TOTAL | NUMBER | N |  |

---

## DBAMV.REPASSE_PERC_RESULTADO
> Tabela de Repasse Resultado Percentual

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SEQUENCIAL | NUMBER | N | Código Sequencial do Repasse |
| 2 | CD_MULTI_EMPRESA | NUMBER | N | Código da Empresa |
| 3 | CD_PRESTADOR | NUMBER | N | Código do Prestador |
| 4 | DT_VIGENCIA_INI | DATE | Y | Data Inicial da Vigência |
| 5 | DT_VIGENCIA_FIM | DATE | Y | Data Final da Vigência |
| 6 | VL_PERC_REPASSE_RESULTADO | NUMBER | Y | Valor Percentual do Repasse |

---

## DBAMV.REPASSE_PLANTAO
> Tabela para configuração de repasse por plantão.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REPASSE_PLANTAO | NUMBER | N | Sequencial da tabela. |
| 2 | CD_MULTI_EMPRESA | NUMBER | N | Empresa. |
| 3 | CD_PRESTADOR | NUMBER | N | Prestador. |
| 4 | CD_ESPECIALID | NUMBER | Y | Código da Especialidade. |
| 5 | CD_DIA | NUMBER | Y | Dia da Semana para o Plantão. |
| 6 | DT_VIGENCIA_INI | DATE | Y | Vigência inicial. |
| 7 | DT_VIGENCIA_FIM | DATE | Y | Vigência final. |
| 8 | QT_HORAS | NUMBER | Y | Quantidade de horas do Plantão. |
| 9 | VL_PLANTAO | NUMBER | Y | Valor do Plantão. |
| 10 | CD_SETOR | NUMBER | Y | Código do setor. |
| 11 | VL_PERC_HE | NUMBER | Y | Percentual de acréscimo para Horário Especial. |
| 12 | VL_PERC_FERIADO | NUMBER | Y | Percentual de acréscimo para Feriados. |
| 13 | VL_PLANTAO_HE | NUMBER | Y | Valor do plantão em horário especial. |
| 14 | VL_PLANTAO_FERIADO | NUMBER | Y | Valor do plantão em feriados. |
| 15 | TP_HORA_TURNO | VARCHAR2 | N | Valor do tipo do planto I - INTEGRAL, D - DIURNO, N - NOTURNO |

---

## DBAMV.REPASSE_PLANTAO_VALOR_HORA
> Tabela para configuração de repasse por plantão.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REPASSE_PLANTAO | NUMBER | N | Sequencial da tabela. |
| 2 | CD_MULTI_EMPRESA | NUMBER | N | Empresa. |
| 3 | CD_PRESTADOR | NUMBER | N | Prestador. |
| 4 | CD_DIA | NUMBER | Y | Dia da Semana para o Plantão. |
| 5 | DT_VIGENCIA_INI | DATE | Y | Vigência inicial. |
| 6 | DT_VIGENCIA_FIM | DATE | Y | Vigência final. |
| 7 | QT_HORAS | NUMBER | Y | Quantidade de Horas do plantão. |
| 8 | VL_PLANTAO | NUMBER | Y | Valor do Plantão. |
| 9 | CD_ESPECIALID | NUMBER | Y | Código da Especialidade. |
| 10 | CD_SETOR | NUMBER | Y | Código do setor. |
| 11 | VL_PERC_HE | NUMBER | Y | Percentual de acréscimo para Horário Especial. |
| 12 | VL_PERC_FERIADO | NUMBER | Y | Percentual de acréscimo para Feriados. |
| 13 | VL_PLANTAO_HE | NUMBER | Y | Valor do plantão em horário especial. |
| 14 | VL_PLANTAO_FERIADO | NUMBER | Y | Valor do plantão em feriados. |
| 15 | TP_HORA_TURNO | VARCHAR2 | N | Valor do tipo do planto I - INTEGRAL, D - DIURNO, N - NOTURNO |

---

## DBAMV.REPASSE_PRESTADOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REPASSE | NUMBER | N |  |
| 2 | CD_PRESTADOR | NUMBER | N |  |
| 3 | VL_REPASSE | NUMBER | Y |  |
| 4 | VL_DESCONTO | NUMBER | Y |  |
| 5 | CD_CON_PAG | NUMBER | Y |  |
| 6 | VL_FATURADO | NUMBER | Y |  |
| 7 | CD_PRESTADOR_REPASSE | NUMBER | N |  |
| 8 | CD_SETOR | NUMBER | Y |  |
| 9 | CD_REPASSE_PAI | NUMBER | Y |  |
| 10 | CD_PRESTADOR_PAI | NUMBER | Y |  |
| 11 | CD_PRESTADOR_REPASSE_PAI | NUMBER | Y | Codigo do prestador de pagamento do repasse para repasse terceiros |
| 12 | REP_PRE_CD_REPASSE | NUMBER | Y | REP_PRE_CD_REPASSE |
| 13 | CD_DESC_ACRES | NUMBER | Y | Codigo do desconto/acrescimo |
| 14 | DS_JUSTIFICATIVA | VARCHAR2 | Y | Justificativa de alteração no valor do repasse de plantão. |
| 15 | CD_GRUPO_SETOR | NUMBER | Y | Código do grupo de setor (repasse de plantão por setor) |
| 16 | CD_REPASSE_INTEGRA | VARCHAR2 | Y | Código do registro do repasse na integração |

---

## DBAMV.REPASSE_PRESTADOR_CON_PAG

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CON_PAG | NUMBER | N | Codigo do contas a pagar gerado no pagamento do repasse |
| 2 | CD_PRESTADOR | NUMBER | N | Codigo do prestador para o qual foi retirada a produc?o gerada no pagamento do repasse |
| 3 | CD_PRESTADOR_REPASSE | NUMBER | N | Codigo do prestador para o qual foi gerado o pagamento do repasse |
| 4 | CD_REPASSE | NUMBER | N | Codigo do repasse pago |

---

## DBAMV.REPASSE_PRESTADOR_RATEIO_SETOR
> Tabela de rateio por setor do repasse.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REPASSE | NUMBER | N | Código do Repasse. |
| 2 | CD_PRESTADOR | NUMBER | N | Prestador. |
| 3 | CD_PRESTADOR_REPASSE | NUMBER | N | Grupo de repasse. |
| 4 | CD_SETOR | NUMBER | Y | Setor. |
| 5 | VL_RATEIO | NUMBER | Y | Valor rateio. |

---

## DBAMV.REPASSE_PRODUCAO_CH
> Tabela de dados da geração do Repasse Produção CH.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REPASSE_PRODUCAO_CH | NUMBER | N | Sequencial da tabela. |
| 2 | CD_REPASSE | NUMBER | Y | Código do repasse gerado. |
| 3 | CD_MULTI_EMPRESA | NUMBER | N | Empresa. |
| 4 | DT_COMPETENCIA | DATE | Y | Competência. |
| 5 | CD_PRESTADOR | NUMBER | N | Prestador. |
| 6 | DS_REPASSE | VARCHAR2 | Y | Descrição do repasse. |
| 7 | CD_PRO_FAT | VARCHAR2 | Y | Código do procedimento. |
| 8 | CD_ATENDIMENTO | NUMBER | Y | Atendimento. |
| 9 | CD_CONTA | NUMBER | Y | Conta ambulatorial/hospitalar. |
| 10 | CD_LANCAMENTO | NUMBER | Y | Código do lançamento na conta. |
| 11 | TP_ATENDIMENTO_REP | VARCHAR2 | Y | Tipo do atendimento da view do repasse. |
| 12 | DT_LANCAMENTO | DATE | Y | Data de lançamento do item na conta. |
| 13 | QT_LANCAMENTO | NUMBER | Y | Quantidade de lançamento do item na conta. |
| 14 | VL_TOTAL_CONTA | NUMBER | Y | Valor do item na conta. |
| 15 | VL_REPASSAR | NUMBER | Y | Valor a repassar / repassado. |
| 16 | CD_USUARIO_GEROU | VARCHAR2 | Y | Usuário que gerou o repasse. |
| 17 | DT_GERACAO | DATE | Y | Data da geração. |

---

## DBAMV.REPASSE_VALOR_FIXO
> Tabela para configuração de repasse de valor fixo.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REPASSE_PLANTAO | NUMBER | N | Sequencial da tabela. |
| 2 | CD_MULTI_EMPRESA | NUMBER | N | Empresa. |
| 3 | CD_PRESTADOR | NUMBER | N | Prestador. |
| 4 | DT_VIGENCIA_INI | DATE | Y | Vigência inicial. |
| 5 | DT_VIGENCIA_FIM | DATE | Y | Vigência final. |
| 6 | VL_PLANTAO | NUMBER | Y | Valor Fixo. |
| 7 | SN_AUTOMATICO | VARCHAR2 | N | Indica se será gerado de forma automática (repasse de convênios) ou não (em tela própria). |
| 8 | CD_SETOR | NUMBER | Y | Código do Setor |
| 9 | CD_GRUPO_REPASSE | NUMBER | Y | Código do Grupo de Repasse do Prestador |
| 10 | DT_DIA_PAGAMENTO | NUMBER | Y | Dia do Pagamento |
| 11 | DS_REP_FIXO | VARCHAR2 | Y | Texto que será concatenado com a descrição do repasse fixo. |

---

## DBAMV.REPASSE_VALOR_MINIMO
> Tabela para configuração de repasse de valor minimo assegurado.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REPASSE_PLANTAO | NUMBER | N | Sequencial da tabela. |
| 2 | CD_MULTI_EMPRESA | NUMBER | N | Empresa. |
| 3 | CD_PRESTADOR | NUMBER | N | Prestador. |
| 4 | DT_VIGENCIA_INI | DATE | Y | Vigência inicial. |
| 5 | DT_VIGENCIA_FIM | DATE | Y | Vigência final. |
| 6 | VL_PLANTAO | NUMBER | Y | Valor Minimo Assegurado. |
| 7 | SN_AUTOMATICO | VARCHAR2 | N | Indica se será gerado de forma automática (repasse de convênios) ou não (em tela própria). |

---

## DBAMV.REPASSE_VIRTUAL_ATENDIME

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NR_CONTA | NUMBER | Y |  |
| 2 | DT_INICIO | DATE | Y |  |
| 3 | DT_FINAL | DATE | Y |  |
| 4 | CD_CONVENIO | NUMBER | Y |  |
| 5 | CD_ATENDIMENTO | NUMBER | Y |  |
| 6 | CD_PACIENTE | NUMBER | Y |  |
| 7 | CD_GRU_PRO | NUMBER | Y |  |
| 8 | CD_PRO_FAT | VARCHAR2 | Y |  |
| 9 | CD_SETOR | NUMBER | Y |  |
| 10 | CD_MULTI_EMPRESA | NUMBER | Y |  |
| 11 | DT_COMPETENCIA | DATE | Y |  |
| 12 | CD_PRESTADOR | NUMBER | Y |  |
| 13 | TP_CIRURGIA | VARCHAR2 | Y |  |
| 14 | VL_TOTAL | NUMBER | Y |  |
| 15 | VL_VIRTUAL | NUMBER | Y |  |
| 16 | VL_HEMODINAMICA | NUMBER | Y |  |
| 17 | CD_REPASSE | NUMBER | Y |  |

---

## DBAMV.RES_LEI_PROCEDIMENTO
> Tabela para armazenar todos os procedimentos da pre-internac?o.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_RES_LEI | NUMBER | N | Codigo da pre-internac?o. |
| 2 | CD_PRO_INT | VARCHAR2 | N | Codigo do Procedimento |
| 3 | NR_QUANTIDADE | NUMBER | N | Quantidade de procedimentos realizados. |
| 4 | SN_INCLUI_GUIA_RES_LEI | VARCHAR2 | N | Indica se o Procedimento sera lancado como Item da Guia principal da pre-internac?o. |

---

## DBAMV.RETORNO_ARQMAG_IPE
> Tabela de Retorno de Glosa IPE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_RETORNO_LOG_IPE | NUMBER | N | Sequêncial da tabela LOG_RETORNO_ARQMAG_IPE |
| 2 | CD_RETORNO_ARQMAG_IPE | NUMBER | N | Sequêncial da tabela RETORNO_ARQMAG_IPE |
| 3 | TP_ARQMAG_IPE | VARCHAR2 | Y | Tipo de Arquivo de retorno IPE. 35,55,75,85. O valor 00 é para caso não venha nenhum dos outros t... |
| 4 | VL_APRESENTADO | NUMBER | Y | Valor Apresentado |
| 5 | VL_PAGO | NUMBER | Y | Valor Pago |
| 6 | VL_GLOSADO | NUMBER | Y | Valor Glosado |
| 7 | DT_IMPORTACAO | DATE | Y | Data em que a importação foi realizada |
| 8 | VL_TERCEIRO | NUMBER | Y | Valor de Terceiros |

---

## DBAMV.SETEXA_LANC_FFCV_PSDI
> EXCESSÃO DE SETORES PARA LANÇAMENTO NO FATURAMENTO DO PSI

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SET_EXA | NUMBER | N | CÓDIGO SEQUENCIAL DO SETOR |
| 2 | SN_PSDI_PEDIDO | VARCHAR2 | Y | INDICAR SE O SETOR EXECUTANTE LANÇARÁ NO FATURAMENTO PELO PEDIDO OU LAUDO |

---

## DBAMV.SIASUS_PROC_FIN
> Tabela de Procedimentos SIA-SUS x Financiamentos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SSM | VARCHAR2 | N | Codigo Procedimento SIA-SUS |
| 2 | CD_FINANCIAMENTO | VARCHAR2 | N | Codigo Financiamento SIA-SUS |

---

## DBAMV.SIGTAP_SUS
> Tabela de importac?o procedimentos do SIGTAP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | COMPETENCIA_TABELA | DATE | N | Data da competencia dos arquivo texto do SIGTAP |
| 2 | NM_ARQUIVO_TEXTO | VARCHAR2 | N | Nome do arquivo texto importado |
| 3 | DT_IMPORTACAO | DATE | N | Data da importac?o do arquivo texto |
| 4 | NM_USUARIO | VARCHAR2 | N | Nome do usuario |

---

## DBAMV.TEMPO_EXECUCAO
> Tabela que ira armazenar a execucao do procedimento de implantacao do CMM para verificar o tempo de execucao do processo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TEMPO_EXECUCAO | NUMBER | N | Chave Primaria da tabela |
| 2 | CD_PRODUTO | NUMBER | Y | Codigo do produto que esta sendo executado |
| 3 | DT_INICIO | DATE | Y | Data de inicio da execucao do processo para o produto/estoque |
| 4 | DT_FIM | DATE | Y | Data fim da execucao do processo para o produto/estoque |
| 5 | DS_PROCESSO | VARCHAR2 | Y | Descric?o do processo que esta sendo executado |
| 6 | CD_ESTOQUE | NUMBER | Y | Codigo do estoque que esta sendo executado |

---

## DBAMV.TETO_ORCAMENTARIO_GRP_PRC_SUS
> Cadastro do teto orcamentario por Grupo de Procedimento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FAT_SIA | NUMBER | N | Codigo da Fatura Ambulatorial |
| 2 | CD_GRUPO_PROCEDIMENTO | VARCHAR2 | N | Codigo do Grupo do Procedimento |
| 3 | QT_FISICO | NUMBER | Y | Quantidade fisico orcamentaria para o grupo de procedimento |
| 4 | VL_ORCAMENTO | NUMBER | Y | Valor do orcamento para o grupo de procedimento |

---

## DBAMV.TETO_ORCAMENTARIO_GRU_SUBG_SUS
> Cadastro do teto orcamentario por Grupo/Sub-Grupo de Procedimento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FAT_SIA | NUMBER | N | Codigo da Fatura Ambulatorial |
| 2 | CD_GRUPO_PROCEDIMENTO | VARCHAR2 | N | Codigo do Grupo do Procedimento |
| 3 | CD_SUB_GRUPO_PROCEDIMENTO | VARCHAR2 | N | Codigo do Sub-Grupo do Procedimento |
| 4 | QT_FISICO | NUMBER | Y | Quantidade fisico orcamentaria para o grupo de procedimento |
| 5 | VL_ORCAMENTO | NUMBER | Y | Valor do orcamento para o Sub-Grupo do procedimento |

---

## DBAMV.TETO_ORCAMENTARIO_PROCED_SUS
> Cadastro do teto orcamentario por Procedimento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FAT_SIA | NUMBER | N | Codigo da Fatura Ambulatorial |
| 2 | CD_PROCEDIMENTO | VARCHAR2 | N | Codigo do procedimento ambulatorial |
| 3 | QT_FISICO | NUMBER | Y | Quantidade fisico orcamentaria para o procedimento |
| 4 | VL_ORCAMENTO | NUMBER | Y | Valor do orcamento para o procedimento |

---

## DBAMV.TETO_ORCAMENTARIO_SET_PRC_SUS
> Cadastro do teto orcamentario por Grupo de Procedimento/Setor

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FAT_SIA | NUMBER | N | Codigo da Fatura Ambulatorial |
| 2 | CD_SETOR | NUMBER | N | Codigo do Setor de produc?o do movimento ambulatorial |
| 3 | CD_PROCEDIMENTO | VARCHAR2 | N | Codigo do procedimento ambulatorial |
| 4 | QT_FISICO | NUMBER | Y | Quantidade fisico orcamentaria para o procedimento |
| 5 | VL_ORCAMENTO | NUMBER | Y | Valor do orcamento para o procedimento |

---

## DBAMV.TETO_ORCAM_UPS_GRU_PRC_SUS
> Cadastro do teto orcamentario por Grupo de Procedimento por UPS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FAT_SIA | NUMBER | N | Codigo da Fatura Ambulatorial |
| 2 | CD_UPS | NUMBER | N | Codigo da unidade prestadora de servico |
| 3 | CD_GRUPO_PROCEDIMENTO | VARCHAR2 | N | Codigo do Grupo do Procedimento |
| 4 | QT_FISICO | NUMBER | Y | Quantidade fisico orcamentaria para o grupo de procedimento |
| 5 | VL_ORCAMENTO | NUMBER | Y | Valor do orcamento para o grupo de procedimento |
| 6 | CD_SUB_GRUPO_PROCEDIMENTO | VARCHAR2 | Y | Codigo do Sub-Grupo do Procedimento |

---

## DBAMV.TETO_ORC_GRU_SUBG_PRC_SUS
> Cadastro do teto orcamentario por Grupo/Sub-Grupo de Procedimento/Procedimento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FAT_SIA | NUMBER | N | Codigo da Fatura Ambulatorial |
| 2 | CD_GRUPO_PROCEDIMENTO | VARCHAR2 | N | Codigo do Grupo do Procedimento |
| 3 | CD_SUB_GRUPO_PROCEDIMENTO | VARCHAR2 | N | Codigo do Sub-Grupo do Procedimento |
| 4 | CD_PROCEDIMENTO | VARCHAR2 | N | Codigo do procedimento ambulatorial |
| 5 | QT_FISICO | NUMBER | Y | Quantidade fisico orcamentaria para o procedimento |
| 6 | VL_ORCAMENTO | NUMBER | Y | Valor do orcamento para o procedimento |

---

## DBAMV.VALOR_ACORDO_MEDICO_PAC
> Tabela para armazenar os dados do valor acordado entre paciente e prestador (médico)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_VALOR_ACORDO_MED_PAC | NUMBER | N | Código único que identifica a configuração |
| 2 | CD_ATENDIMENTO | NUMBER | N | Código do atendimento |
| 3 | CD_CONVENIO | NUMBER | Y | Código do convênio |
| 4 | CD_PRESTADOR | NUMBER | Y | Código do prestador |
| 5 | CD_PRO_FAT | VARCHAR2 | N | Código do procedimento |
| 6 | DT_VIGENCIA | DATE | N | Data de vigência |
| 7 | SN_ATIVO | VARCHAR2 | N | Indica se o acordo esta ativo S = Sim  N=Não. |
| 8 | VL_TOTAL_ACORDO | NUMBER | N | Valor total informado. |
| 9 | CD_USUARIO_DESATIVACAO | VARCHAR2 | Y | Usuário que desativou o acordo |
| 10 | DT_HR_DESATIVACAO | DATE | Y | Data e hora da desativação |
| 11 | CD_ATI_MED | VARCHAR2 | Y |  |

---

## DBAMV.VALOR_AIH
> Tabela com valor da conta AIH.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REG_FAT | NUMBER | N | Codigo da conta |
| 2 | CD_LANCAMENTO | NUMBER | N | Codigo do item |
| 3 | CD_PROCEDIMENTO | VARCHAR2 | N |  |
| 4 | CD_ATI_MED | VARCHAR2 | Y | Codigo da atividade medica (indicador do membro da equipe) |
| 5 | QT_PONTOS | NUMBER | Y | Pontuac?o medica para calculo |
| 6 | VL_PONTO | NUMBER | Y | Valor do ponto para rateio profissional |
| 7 | VL_SH_PROPRIO | NUMBER | Y | Valor do servico hospitalar proprio |
| 8 | VL_SH_TERCEIRO | NUMBER | Y | Valor do servico hospitalar terceiro |
| 9 | VL_SP_D_PROPRIO | NUMBER | Y | Valor do servico profissional proprio (valor n?o rateado) |
| 10 | VL_SP_D_TERCEIRO | NUMBER | Y | Valor do servico profissional terceiro (valor n?o rateado) |
| 11 | VL_SP_R_PROPRIO | NUMBER | Y | Valor do servico profissional proprio (valor rateado) |
| 12 | VL_SP_R_TERCEIRO | NUMBER | Y | Valor do servico profissional terceiro (valor rateado) |
| 13 | VL_SH_TOTAL | NUMBER | Y | Valor total do servico hospitalar |
| 14 | VL_SP_TOTAL | NUMBER | Y | Valor total do servico profissional |
| 15 | VL_TOTAL | NUMBER | Y | Valor total da conta |
| 16 | VL_IPONTO | NUMBER | Y | Valor do ponto para rateio profissional c/ incremento |
| 17 | VL_ISH_PROPRIO | NUMBER | Y | Valor do servico hospitalar proprio c/ incremento |
| 18 | VL_ISH_TERCEIRO | NUMBER | Y | Valor do servico hospitalar terceiro c/ incremento |
| 19 | VL_ISP_D_PROPRIO | NUMBER | Y | Valor do servico profissional proprio (valor n?o rateado) c/ incremento |
| 20 | VL_ISP_D_TERCEIRO | NUMBER | Y | Valor do servico profissional terceiro (valor n?o rateado) c/ incremento |
| 21 | VL_ISP_R_PROPRIO | NUMBER | Y | Valor do servico profissional proprio (valor rateado) c/ incremento |
| 22 | VL_ISP_R_TERCEIRO | NUMBER | Y | Valor do servico profissional terceiro (valor rateado) c/ incremento |
| 23 | VL_ITOTAL | NUMBER | Y | Valor total da conta c/ incremento |
| 24 | VL_ISH_TOTAL | NUMBER | Y | Valor total do servico hospitalar c/ incremento |
| 25 | VL_ISP_TOTAL | NUMBER | Y | Valor total do servico profissional c/ incremento |
| 26 | CD_OPERACAO | VARCHAR2 | Y |  |

---

## DBAMV.VALOR_AIH_EQUIPE
> Tabela com o valor dos integrantes da equipe medica da conta AIH

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REG_FAT | NUMBER | N | Codigo da conta |
| 2 | CD_LANCAMENTO | NUMBER | N | Codigo do item |
| 3 | CD_ATI_MED | VARCHAR2 | N | Codigo da atividade medica (indicador do membro da equipe) |
| 4 | QT_PONTOS | NUMBER | Y | Pontuac?o medica para calculo |
| 5 | VL_SP_D_PROPRIO | NUMBER | Y | Valor do servico profissional proprio (valor n?o rateado) |
| 6 | VL_SP_D_TERCEIRO | NUMBER | Y | Valor do servico profissional terceiro (valor n?o rateado) |
| 7 | VL_SP_R_PROPRIO | NUMBER | Y | Valor do servico profissional proprio (valor rateado) |
| 8 | VL_SP_R_TERCEIRO | NUMBER | Y | Valor do servico profissional terceiro (valor rateado) |
| 9 | VL_SP_TOTAL | NUMBER | Y | Valor total do servico profissional |
| 10 | VL_ISP_D_PROPRIO | NUMBER | Y | Valor do servico profissional proprio (valor n?o rateado) c/ incremento |
| 11 | VL_ISP_D_TERCEIRO | NUMBER | Y | Valor do servico profissional terceiro (valor n?o rateado) c/ incremento |
| 12 | VL_ISP_R_PROPRIO | NUMBER | Y | Valor do servico profissional proprio (valor rateado) c/ incremento |
| 13 | VL_ISP_R_TERCEIRO | NUMBER | Y | Valor do servico profissional terceiro (valor rateado) c/ incremento |
| 14 | VL_ISP_TOTAL | NUMBER | Y | Valor total do servico profissional c/ incremento |
| 15 | CD_OPERACAO | VARCHAR2 | Y |  |

---

## DBAMV.VALOR_AIH_EQUIPE_INCREMENTO
> Tabela com o valor dos incrementos da conta AIH

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REG_FAT | NUMBER | N | Codigo da conta |
| 2 | CD_LANCAMENTO | NUMBER | N | Codigo de lancamento do item da conta |
| 3 | CD_ATI_MED | VARCHAR2 | N | Codigo da atividade medica (indicador do membro da equipe) |
| 4 | CD_HABILITACAO | VARCHAR2 | N | Codigo da habilitac?o sus |
| 5 | VL_SP_PERCENTUAL | NUMBER | Y | Valor do percentual de incremento de SP |
| 6 | VL_SP_D_PROPRIO | NUMBER | Y | Valor do incremento de SP Direto Proprio |
| 7 | VL_SP_D_TERCEIRO | NUMBER | Y | Valor do incremento de SP Direto Terceiro |
| 8 | VL_SP_R_PROPRIO | NUMBER | Y | Valor do incremento de SP Rateado Proprio |
| 9 | VL_SP_R_TERCEIRO | NUMBER | Y | Valor do incremento de SP Rateado Terceiro |

---

## DBAMV.VALOR_AIH_INCREMENTO
> Tabela com o valor dos incrementos da conta AIH

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REG_FAT | NUMBER | N | Codigo da conta |
| 2 | CD_LANCAMENTO | NUMBER | N | Codigo de lancamento do item da conta |
| 3 | CD_HABILITACAO | VARCHAR2 | N | Codigo da habilitac?o sus |
| 4 | VL_SH_PERCENTUAL | NUMBER | Y | Valor do percentual de incremento de SH |
| 5 | VL_SP_PERCENTUAL | NUMBER | Y | Valor do percentual de incremento de SP |
| 6 | VL_SH_PROPRIO | NUMBER | Y | Valor do incremento de SH Proprio |
| 7 | VL_SH_TERCEIRO | NUMBER | Y | Valor do incremento de SH Terceiro |
| 8 | VL_SP_D_PROPRIO | NUMBER | Y | Valor do incremento de SP Direto Proprio |
| 9 | VL_SP_D_TERCEIRO | NUMBER | Y | Valor do incremento de SP Direto Terceiro |
| 10 | VL_SP_R_PROPRIO | NUMBER | Y | Valor do incremento de SP Rateado Proprio |
| 11 | VL_SP_R_TERCEIRO | NUMBER | Y | Valor do incremento de SP Rateado Terceiro |

---

## DBAMV.VALOR_CATEGORIA_CLINICA
> Tabela responsável por guardar os códigos de valor e categorios clinicas

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_VALOR_CATEGORIA_CLINICA | NUMBER | N |  |
| 2 | CD_CATEGORIA_CLINICA | NUMBER | N | Código da Categoria Clínica |

---

## DBAMV.VALOR_CUSTO_FIXO_PRODUCAO
> Tabela das Vigencias dos custos fixos da produc?o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_VALOR_CUSTO_FIXO_PRODUCAO | NUMBER | N | Codigo da tabela (Sequencial) - PK |
| 2 | CD_CUSTO_FIXO_PRODUCAO | NUMBER | N | Codigo do custo_fixo_produc?o - FK |
| 3 | VL_CUSTO_FIXO_PRODUCAO | NUMBER | N | Valor do custo_fixo_produc?o pela vigencia, valor por hora de produc?o |
| 4 | DT_VIGENCIA | DATE | N | Data da vigencia do custo_fixo_producao |

---

## DBAMV.VALOR_DESCONTO
> Tabela valor dos descontos.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_VALOR_DESCONTO | NUMBER | N | Código do valor do desconto |
| 2 | CD_TIP_DESCONTO_REP | NUMBER | Y | Código do tipo de desconto do repasse |
| 3 | VL_DESCONTO | NUMBER | Y | Valor do desconto |
| 4 | CD_REPASSE_PLANTAO | NUMBER | N | FK da tabela "repasse_valor_fixo" |

---

## DBAMV.VALOR_INICIAL_PRODUTO
> Tabela que ira armazenar o valor do custo medio inicial do produto quando ele for cadatrado no sistema

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_VALOR_INICIAL_PRODUTO | NUMBER | N | Codigo sequencial da tabela |
| 2 | CD_PRODUTO | NUMBER | N | Codigo do produto que foi informado o valor inicial |
| 3 | CD_ESTOQUE | NUMBER | Y | Codigo do estoque que foi informado o valor inicial |
| 4 | VL_CUSTO_MEDIO | NUMBER | N | Valor do custo medio inicial do produto quando cadastrado no sistema |
| 5 | CD_UNI_PRO | NUMBER | N | Codigo da unidade que foi informado o valor do produto |
| 6 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da multi empresa |
| 7 | DT_INCLUSAO | DATE | N | Data de inclus?o do registro do valor inicial do produto |
| 8 | CD_USUARIO | VARCHAR2 | Y | Usuario que cadastrou o valor inicial do produto. |
| 9 | DS_OBSERVACAO | VARCHAR2 | Y | Observac?o do valor inicial do produto. |
| 10 | CD_SEQ_INTEGRA | NUMBER | Y |  |
| 11 | DT_INTEGRA | DATE | Y |  |

---

## DBAMV.VALOR_REFERENCIA_ANALISE
> Tabela de Valores de Referencia associada ao Documento de Referencia Base de Analise

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REFERENCIA_ANALISE | NUMBER | N | Codigo da Referencia utilizada para fornecer o resultado da Analise |
| 2 | CD_VAL_REF_ANALISE | NUMBER | N | Codigo do Valor de Refencia utilizado pelas referencias de Analise |
| 3 | DS_VAL_REF_ANALISE | VARCHAR2 | N | Descric?o do Valor de Refencia utilizado pelas referencias de Analise |

---

## DBAMV.VALOR_REFERENCIA_ECOCARD
> Tabela de Registro dos valores normais dos exames de Ecocardiograma.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_VL_REFERENCIA_ECOCARD | NUMBER | N | Codigo incremental da tabela. |
| 2 | CD_EXA_RX | NUMBER | N | Codigo do exame do PSDI. |
| 3 | NM_CAMPO | VARCHAR2 | N | Nome do campo da Formula. |
| 4 | TP_SEXO | VARCHAR2 | N | Sexo ao qual a faixa de referencia de refere. |
| 5 | NR_ANO_INICIAL | NUMBER | Y | Ano inicial ao qual a faixa de referencia de refere. |
| 6 | NR_MES_INICIAL | NUMBER | Y | Mes inicial ao qual a faixa de referencia de refere. |
| 7 | NR_DIA_INICIAL | NUMBER | Y | Dia inicial ao qual a faixa de referencia de refere. |
| 8 | NR_ANO_FINAL | NUMBER | Y | Ano final ao qual a faixa de referencia de refere. |
| 9 | NR_MES_FINAL | NUMBER | Y | Mes final ao qual a faixa de referencia de refere. |
| 10 | NR_DIA_FINAL | NUMBER | Y | Dia final ao qual a faixa de referencia de refere. |
| 11 | VL_PESO_INICIAL | NUMBER | Y | Peso inicial ao qual a faixa de referencia de refere. |
| 12 | VL_PESO_FINAL | NUMBER | Y | Peso final ao qual a faixa de referencia de refere. |
| 13 | VL_REFERENCIA_INICIAL | NUMBER | N | Valor inicial do campo ao qual a faixa de referencia de refere. |
| 14 | VL_REFERENCIA_FINAL | NUMBER | N | Valor final do campo ao qual a faixa de referencia de refere. |

---

## DBAMV.VALOR_TOTAL_CURVA
> Calculo atraves da demanda.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DT_INICIAL | DATE | N | Data inicial informada na tela de calculo atraves da demanda |
| 2 | DT_FINAL | DATE | N | Data final informada na tela de calculo atraves da demanda |
| 3 | CD_MULTI_EMPRESA | NUMBER | N | Empresa informada para realizar o calculo |
| 4 | TP_PROCESSO_CURVA | VARCHAR2 | N | Tipo do processo informado |
| 5 | VL_TOTAL_CURVA | NUMBER | Y | Valor atribuido a classificação. |

---

## DBAMV.VAL_ECOCARDIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LAUDO | NUMBER | N |  |
| 2 | VL_AORTA | NUMBER | N |  |
| 3 | VL_ATRIOE | NUMBER | N |  |
| 4 | VL_VENTRICULO_D | NUMBER | N |  |
| 5 | VL_SEPTO | NUMBER | N |  |
| 6 | VL_PAREDE_POSTERIOR | NUMBER | N |  |
| 7 | VL_DIAMETRO_DIASTOLICO | NUMBER | N |  |
| 8 | VL_DIAMETRO_SISTOLICO | NUMBER | N |  |
| 9 | VL_PESO | NUMBER | N |  |
| 10 | VL_ALTURA | NUMBER | N |  |
| 11 | ATRIOE_AORTA | NUMBER | Y | Atrio Esquerdo/Aorta |
| 12 | SEPTO_PAREDE | NUMBER | Y | Septo IV/Parede Posterior |
| 13 | DELTA_FRAC_ENCURT | NUMBER | Y | Fracao de Encurtamento |
| 14 | FRACAO | NUMBER | Y | Fracao de Ejecao |
| 15 | MASSA | NUMBER | Y | Massa VE |
| 16 | IND_MASSA | NUMBER | Y | Ind. Massa VE |
| 17 | RELACAO_VM | NUMBER | Y | Relac?o V/M |
| 18 | SUPERFICIE_CORPOREA | NUMBER | Y | ASC |
| 19 | FATOR_DIASTOLICO | NUMBER | Y | VE - Volume Diastolico Final |
| 20 | FATOR_SISTOLICO | NUMBER | Y | VE - Volume Sistolico Final |
| 21 | NR_ESPESSURA_RELATIVA_PAREDE | NUMBER | Y | Espessura Relativa da Parede Do VE (mm) |
| 22 | NR_ESPESSURA_RELATIVA_SEPTO | NUMBER | Y | Espessura Relativa Do Septo (mm) |

---

## DBAMV.VAL_EXA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_VERSAO | NUMBER | N |  |
| 2 | NM_CAMPO | VARCHAR2 | N |  |
| 3 | VL_TAMANHO_DO_CAMPO | NUMBER | N |  |
| 4 | DS_CAMPO | VARCHAR2 | N |  |
| 5 | VL_INI_DOENCA | NUMBER | Y |  |
| 6 | VL_FIN_DOENCA | NUMBER | Y |  |
| 7 | VL_INI_ABSURDO | NUMBER | Y |  |
| 8 | VL_FIN_ABSURDO | NUMBER | Y |  |
| 9 | VL_INI_LIMITE | NUMBER | Y |  |
| 10 | VL_FIN_LIMITE | NUMBER | Y |  |
| 11 | DS_FORMULA | VARCHAR2 | Y |  |
| 12 | SN_FECHAR_LISTA | VARCHAR2 | Y |  |
| 13 | TP_CAMPO | VARCHAR2 | Y |  |
| 14 | DS_RESULTADO_OBRI | VARCHAR2 | Y |  |
| 15 | DS_MENSAGEM_AVISO | VARCHAR2 | Y |  |
| 16 | NR_ODEM_DE_PERGUNTA | NUMBER | Y |  |
| 17 | NR_ORDEM_DE_PERGUNTA | NUMBER | N |  |
| 18 | MASCARA | VARCHAR2 | Y |  |
| 19 | TP_TIPO_CAMPO | VARCHAR2 | N |  |
| 20 | TP_ALINHAMENTO | VARCHAR2 | N |  |
| 21 | TP_OPERACAO | VARCHAR2 | Y |  |
| 22 | SN_IMPRIME_NULO | VARCHAR2 | N |  |
| 23 | DS_VALOR_PADRAO | VARCHAR2 | Y | Valor padr?o assumido pelo campo nomomento do cadastro do resultado. |
| 24 | CD_AGRUPAMENTO_RESULTADO | NUMBER | Y | Codigo do Agrupamento de Resultados |
| 25 | NM_MNEMONICO | VARCHAR2 | Y | PDA 175560 - Descric?o do Mnemonico de identificac?o do Resultado de Exame. Utilizado para efeito... |
| 26 | SN_EDITAR | VARCHAR2 | Y | Indica se permite o campo. S/N |
| 27 | DS_METODO | VARCHAR2 | Y | Métodologia da realização de exame |
| 28 | CD_UNIDADE_MEDIDA_VAL_EXA | NUMBER | Y | Define unidade de medida para o campo do exame |
| 29 | CD_MATERIAL_MULTI_CURVA | NUMBER | Y | Código do material para vincular os campos aos pontos de curva em caso de multiplos materiais. |
| 30 | CD_TUBO_MULTI_CURVA | NUMBER | Y | Código do tubo para vincular os campos aos pontos de curva em caso de multiplos materiais. |
| 31 | NR_ORDEM_CURVA | NUMBER | Y | Ordem que será vinculado a ordem das amostras de curvas, para caso de multiplos materiais |

---

## DBAMV.VAL_EXA_CONVENIO
> Tabela para associar a ordenac?o do campo do exame no convenio

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NR_ORDEM_DE_PERGUNTA | NUMBER | N | Indica a ordenac?o do campo na formatac?o do laudo |
| 2 | CD_VERSAO | NUMBER | N | Codigo da vers?o do laudo |
| 3 | NM_CAMPO | VARCHAR2 | N | Nome do campo na vers?o do laudo |
| 4 | CD_CONVENIO | NUMBER | N | Codigo do convenio |

---

## DBAMV.VAL_EXA_TERCEIRO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NM_CAMPO | VARCHAR2 | N |  |
| 2 | CD_VERSAO | NUMBER | N |  |
| 3 | CD_EXAME_TERCEIRO | VARCHAR2 | N |  |
| 4 | CD_ITEM_TERCEIRO | VARCHAR2 | N |  |

---

## DBAMV.VAL_EXCED

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REGRA | NUMBER | N |  |
| 2 | CD_PRO_FAT | VARCHAR2 | N |  |
| 3 | DT_VIGENCIA | DATE | N |  |
| 4 | QT_INICIAL | NUMBER | N |  |
| 5 | QT_SUBSEQUENTE | NUMBER | N |  |
| 6 | VL_SUBSEQUENTE | NUMBER | Y |  |
| 7 | VL_PERCENTUAL_SUB | NUMBER | Y |  |
| 8 | CD_PRO_FAT_SEQ | VARCHAR2 | Y |  |

---

## DBAMV.VAL_FE_ECO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | INDICE | NUMBER | N |  |
| 2 | FATOR | NUMBER | N |  |

---

## DBAMV.VAL_HONO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRO_FAT | VARCHAR2 | N |  |
| 2 | VL_HONO | NUMBER | Y |  |

---

## DBAMV.VAL_INDICE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INDICE | NUMBER | N |  |
| 2 | DT_VIGENCIA | DATE | N |  |
| 3 | VL_INDICE | NUMBER | N |  |
| 4 | VL_M2FILME | NUMBER | N |  |
| 5 | CD_VAL_INDICE | NUMBER | N |  |
| 6 | VL_HONORARIO | NUMBER | N |  |
| 7 | VL_UCO | NUMBER | Y | Valor da Unidade de Cobranca Operacional para o indice. |

---

## DBAMV.VAL_INDICE_GRU_PRO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GRU_PRO | NUMBER | N |  |
| 2 | CD_VAL_INDICE | NUMBER | N |  |
| 3 | VL_INDICE | NUMBER | N |  |
| 4 | VL_HONORARIO | NUMBER | Y |  |
| 5 | VL_M2FILME | NUMBER | Y |  |
| 6 | TP_ATENDIMENTO | VARCHAR2 | N |  |
| 7 | VL_UCO | NUMBER | Y | Valor da Unidade de Cobranca Operacional para o indice e Grupo de Procedimento |

---

## DBAMV.VAL_INDICE_ORI_ATE
> Tabela para especificar o valor do indice por origem.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_VAL_INDICE_ORI_ATE | NUMBER | N | Chave da tabela definida pela SEQUENCE. |
| 2 | CD_VAL_INDICE | NUMBER | N | Chave da tabela VAL_INDICE, indica de qual indice o registro e filho. |
| 3 | TP_ATENDIMETO | VARCHAR2 | N | Tipo do atendimento da regra. TODOS e o padr?o. |
| 4 | CD_ORI_ATE | NUMBER | N | Codigo da origem de atendimento na qual a regra sera aplicada. |
| 5 | CD_GRU_PRO | NUMBER | Y | Codigo do grupo de procedimento onde a regra sera aplicada. Se for nulo = TODOS. |
| 6 | VL_INDICE | NUMBER | Y | Valor do indice. |
| 7 | VL_HONORARIO | NUMBER | Y | Valor do indice para honorarios. |
| 8 | VL_UCO | NUMBER | Y | Valor da Unidade de Cobranca Operacional para o indice e Origem de Atendimento. |
| 9 | VL_M2FILME | NUMBER | Y | Valor do indice para Metro Quadrado de Filme. |

---

## DBAMV.VAL_INDICE_SETOR
> Tabela para especificar o valor do indice por setor.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_VAL_INDICE_SETOR | NUMBER | N | Chave da tabela definida pela SEQUENCE. |
| 2 | CD_VAL_INDICE | NUMBER | N | Chave da tabela VAL_INDICE, indica de qual indice o registro e filho. |
| 3 | TP_ATENDIMETO | VARCHAR2 | N | Tipo do atendimento da regra. TODOS e o padr?o. |
| 4 | CD_SETOR | NUMBER | N | Codigo do setor no qual a regra sera aplicada. |
| 5 | CD_GRU_PRO | NUMBER | Y | Codigo do grupo de procedimento onde a regra sera aplicada. Se for nulo = TODOS. |
| 6 | VL_INDICE | NUMBER | Y | Valor do indice. |
| 7 | VL_HONORARIO | NUMBER | Y | Valor do indice para honorarios. |
| 8 | VL_UCO | NUMBER | Y | Valor da Unidade de Cobranca Operacional para o indice e Setor. |
| 9 | VL_M2FILME | NUMBER | Y | Valor do indice para Metro Quadrado de Filme. |

---

## DBAMV.VAL_INDICE_TP_ATEND

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | TP_ATENDIMENTO | VARCHAR2 | N |  |
| 2 | CD_VAL_INDICE | NUMBER | N |  |
| 3 | VL_HONORARIO | NUMBER | Y |  |
| 4 | VL_INDICE | NUMBER | N |  |
| 5 | VL_M2FILME | NUMBER | Y |  |
| 6 | VL_UCO | NUMBER | Y | Valor da Unidade de Cobranca Operacional para o indice e Tipo de atendimento |

---

## DBAMV.VAL_OPME_IT_GUIA
> Valores de OPME nos Itens da Guia. A tabela sera utilizada para que o usuario informe o valor e o fabricante do produto, que ser?o utilizados para gerac?o de relatorio e envio de solicitac?o de autorizac?o ao convenio.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GUIA | NUMBER | N | Codigo da Guia relacionada |
| 2 | CD_IT_GUIA | NUMBER | N | Codigo do item da guia relacionada |
| 3 | DT_VIGENCIA | DATE | Y | Data de vigencia do valor cotado |
| 4 | CD_LABORATOR | VARCHAR2 | Y | Codigo do fabricante do produto. |
| 5 | CD_FORNECEDOR | NUMBER | N | Codigo do fornecedor do produto. |
| 6 | VL_PERC_FRACAO | NUMBER | Y | Percentual da frac?o utilizavel. |
| 7 | VL_UNITARIO | NUMBER | Y | Valor unitario Cotado. |
| 8 | VL_TOTAL | NUMBER | Y | Valor total do produto cotado |
| 9 | VL_TOTAL_AUTORIZADO | NUMBER | Y | Valor total autorizado pelo Convenio. |
| 10 | CD_USU_AUT_ENVIO | VARCHAR2 | Y | Codigo do usuario que autorizou o envio do orcamento da guia. |
| 11 | CD_RMS | VARCHAR2 | Y | Registro no Ministerio da Saude - RMS |
| 12 | SN_TAXA_COMERCIALIZACAO | VARCHAR2 | N | Se utiliza a taxa de comercializac?o no calculo de valorizac?o |
| 13 | SN_FORNECEDOR_AUTORIZADO | VARCHAR2 | N | Indica qual Fornecedor foi autorizado pelo Convenio. |
| 14 | SN_AUTORIZADO | VARCHAR2 | N | Indica se o preco do precedimento foi autorizado pelo convenio |
| 15 | VL_TAXA_COMERCIALIZACAO | NUMBER | Y | Valor da Taxa de Comercializac?o. |
| 16 | CD_OPME_FORN | VARCHAR2 | Y | Indica o codigo do produto OPME no fornecedor |
| 17 | DT_VALIDADE_REGISTRO | DATE | Y | Informa a data do registro do produto no Ministerio da Saude |
| 18 | DS_OBSERVACAO | VARCHAR2 | Y | Observac?o da valorizac?o de OPME |
| 19 | VL_PROPOSTO | NUMBER | Y | Valor proposto para envio ao convênio via solicitação TISS. |
| 20 | VL_REFERENCIA | NUMBER | Y | Valor de Referência apenas informativo, é preenchido do Simpro, Tabela e NF. |
| 21 | TP_REFERENCIA | VARCHAR2 | Y | Tipo de Referência com que o vl_referencia foi preenchido. |
| 22 | SN_ORC_ENVIO | VARCHAR2 | N | Se a OPME será eviada para orçamento. |
| 23 | NR_REGISTRO_OPERADORA_ANS | VARCHAR2 | Y | Número do registro da operadora ANS |

---

## DBAMV.VAL_OPME_IT_GUIA_MGCO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SOL_COM | NUMBER | N | CODIGO DA SOLICITAÇÃO |
| 2 | CD_GUIA | NUMBER | N | CODIGO DA GUIA RELACIONADA |
| 3 | CD_IT_GUIA | NUMBER | N | CODIGO DO ITEM DA GUIA RELACIONADA |
| 4 | CD_PRO_FAT | VARCHAR2 | Y | CODIGO DO PROCEDIMENTO DO ITEM DA GUIA RELACIONADA |
| 5 | DS_PROCEDIMENTO | VARCHAR2 | Y | DESCRIÇÃO DO PROCEDIMENTO DO ITEM DA GUIA RELACIONADA |
| 6 | CD_FORNECEDOR | NUMBER | N | CODIGO DO FORNECEDOR DO PRODUTO. |
| 7 | TP_REFERENCIA | VARCHAR2 | Y | TIPO DE REFERENCIA COM QUE O VL_REFERENCIA FOI PREENCHIDO. |
| 8 | CD_REFERENCIA | VARCHAR2 | Y | CÓDIGO DA REFERENCIA |
| 9 | VL_REFERENCIA | NUMBER | Y | VALOR DE REFERENCIA APENAS INFORMATIVO, E PREENCHIDO DO SIMPRO, TABELA E NF. |
| 10 | VL_UNITARIO | NUMBER | Y | VALOR UNITARIO COTADO. |
| 11 | VL_TAXA_COMERCIALIZACAO | NUMBER | Y | VALOR DA TAXA DE COMERCIALIZAC?O. |
| 12 | VL_PROPOSTO | NUMBER | Y | VALOR PROPOSTO PARA ENVIO AO CONVENIO VIA SOLICITAC?O TISS. |
| 13 | VL_TOTAL | NUMBER | Y | VALOR TOTAL DO PRODUTO COTADO |

---

## DBAMV.VAL_PONTO_FRANQUIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONVENIO | NUMBER | N |  |
| 2 | DT_VIGENCIA | DATE | N |  |
| 3 | VL_PONTO | NUMBER | N |  |

---

## DBAMV.VAL_PORTE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_POR_ANE | NUMBER | N |  |
| 2 | CD_TAB_FAT | NUMBER | N |  |
| 3 | DT_VIGENCIA | DATE | N |  |
| 4 | VL_PORTE | NUMBER | Y |  |

---

## DBAMV.VAL_PORTE_MEDICO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TAB_FAT | NUMBER | N |  |
| 2 | CD_PORTE_MEDICO | NUMBER | N |  |
| 3 | DT_VIGENCIA | DATE | N |  |
| 4 | VL_PORTE_MEDICO | NUMBER | N |  |

---

## DBAMV.VAL_PRO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TAB_FAT | NUMBER | N |  |
| 2 | CD_PRO_FAT | VARCHAR2 | N |  |
| 3 | DT_VIGENCIA | DATE | N |  |
| 4 | VL_HONORARIO | NUMBER | Y |  |
| 5 | VL_OPERACIONAL | NUMBER | Y |  |
| 6 | VL_TOTAL | NUMBER | Y |  |
| 7 | CD_IMPORT | NUMBER | Y |  |
| 8 | VL_SH | NUMBER | Y |  |
| 9 | VL_SD | NUMBER | Y |  |
| 10 | QT_PONTOS | NUMBER | Y |  |
| 11 | QT_PONTOS_ANEST | NUMBER | Y |  |
| 12 | SN_ATIVO | VARCHAR2 | Y |  |
| 13 | NM_USUARIO | VARCHAR2 | Y |  |
| 14 | DT_ATIVACAO | DATE | Y |  |
| 15 | CD_SEQ_INTEGRA | NUMBER | Y |  |
| 16 | DT_INTEGRA | DATE | Y |  |
| 17 | CD_CONTRATO | NUMBER | Y | Código do Contrato |
| 18 | CD_IMPORT_SIMPRO | NUMBER | Y | Campo referente ao código de importação. |

---

## DBAMV.VAL_PROC_ORCAMENTO
> Tabela usada para impress?o da consulta de valores do modulo FFCV

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_VAL_PROC_ORCAMENTO | NUMBER | N |  |
| 2 | CD_CONVENIO | NUMBER | Y |  |
| 3 | CD_CON_PLA | NUMBER | Y |  |
| 4 | DT_REFERENCIA | DATE | Y |  |
| 5 | TP_ATENDIMENTO | VARCHAR2 | Y |  |
| 6 | CD_TIP_ACOM | NUMBER | Y |  |
| 7 | DS_ESPECIFICACAO | VARCHAR2 | Y |  |
| 8 | CD_PACIENTE | NUMBER | Y | Código do paciente |
| 9 | NM_PACIENTE | VARCHAR2 | Y | Nome do paciente ligado ao orçamento gerado |
| 10 | CD_IDENTIFICADOR_PESSOA | VARCHAR2 | Y | Código do RUT do paciente ligado ao orçamento gerado |
| 11 | CD_PRESTADOR | NUMBER | Y | Código do prestador ligado ao orçamento gerado |
| 12 | NR_TELEFONE | VARCHAR2 | Y | Número de telefone do paciente ligado ao orçamento gerado |
| 13 | FORMA_PAGAMENTO | VARCHAR2 | Y | Forma de pagamento ligado ao orçamento gerado |
| 14 | EMAIL | VARCHAR2 | Y | E-mail do paciente ligado ao orçamento gerado |
| 15 | DT_VALIDADE_ORCAMENTO | DATE | Y | Data de validade do orçamento gerado |

---

## DBAMV.VAL_PROD_CONV
> Valores de produtos por convenio

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRODUTO | NUMBER | N | Codigo do Produto |
| 2 | CD_UNI_PRO | NUMBER | N | Codigo da Unidade |
| 3 | CD_CONVENIO | NUMBER | N | Codigo do Convenio |
| 4 | DT_VIGENCIA | DATE | N | Data da vigencia do preco. |
| 5 | VL_PRECO | NUMBER | N | Valor do produto para o convenio |
| 6 | CD_FORNECEDOR | NUMBER | Y | Codigo do fornecedor |
| 7 | VL_PERC_DESCONTO_OPME | NUMBER | Y | Informa o valor do percentural do desconto utilizado na confirmação de consumo OPME. [ C - COMERC... |
| 8 | TP_DESCONTO_OPME | VARCHAR2 | Y | Informa o tipo de desconto utilizado na confirmação de consumo OPME. [ C - COMERCIAL / F - FINANC... |

---

## DBAMV.VAL_PRO_CONVENIO_ESTADO
> Tabela de faturamento do convenio Estado

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TAB_FAT | NUMBER | N |  |
| 2 | DS_CODIGO_COBRANCA | VARCHAR2 | N | Descricao codigo de cobranca |
| 3 | CD_PRO_FAT_SH | VARCHAR2 | Y | Codigo do procedimento SH |
| 4 | CD_PRO_FAT_SP | VARCHAR2 | Y | Codigo do procedimento SP |
| 5 | CD_PRO_FAT_SD | VARCHAR2 | Y | Codigo do procedimento SD |
| 6 | DT_VIGENCIA | DATE | N | Data de vigencia |
| 7 | VL_SH | NUMBER | Y | Valor do procedimento SH |
| 8 | VL_SP | NUMBER | Y | Valor do procedimento SP |
| 9 | VL_SD | NUMBER | Y | Valor do procedimento SD |
| 10 | VL_TOTAL | NUMBER | Y | Valor total do procedimento |
| 11 | SN_ATIVO | VARCHAR2 | Y | SN Ativo |
| 12 | CD_USUARIO | VARCHAR2 | N | Codigo do usuario |
| 13 | DT_ATIVACAO | DATE | N | Data de ativacao |
| 14 | CD_USUARIO_ATUALIZOU | VARCHAR2 | Y | Codigo do usuario que atualizou |
| 15 | DT_ATUALIZOU | DATE | Y | Data de atualizacao |
| 16 | CD_MULTI_EMPRESA | NUMBER | N | Empresa logada |

---

## DBAMV.VAL_PRO_RELACIONADO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REGRA | NUMBER | N |  |
| 2 | CD_PRO_FAT | VARCHAR2 | N |  |
| 3 | DT_VIGENCIA | DATE | N |  |
| 4 | VL_PERCENTUAL | NUMBER | N |  |
| 5 | TP_LANCAMENTO | VARCHAR2 | Y |  |
| 6 | TP_VALOR | VARCHAR2 | Y |  |
| 7 | TP_ATEND_HOMECARE | VARCHAR2 | Y |  |
| 8 | TP_ATEND_EXTERNO | VARCHAR2 | Y |  |
| 9 | TP_ATEND_URGEME | VARCHAR2 | Y |  |
| 10 | TP_ATEND_AMBULATORIAL | VARCHAR2 | Y |  |
| 11 | TP_ATEND_INTERNACAO | VARCHAR2 | Y |  |
| 12 | QT_LANCAMENTO | NUMBER | Y | Quantidade do Fator relacionado da Regra |
| 13 | SN_FATURAMENTO_DIRETO | VARCHAR2 | Y | Procedimento relacionado sera lancado na conta caso o procedimento principal seja de faturamento ... |
| 14 | SN_INCIDENCIA_EXAME | VARCHAR2 | Y | Indica se o relacionamento e para satisfazer a regra de incidencia de exame da AMB e CBHPM |
| 15 | CD_PRO_FAT_PAI | VARCHAR2 | Y | Procedimento principal para relacionados |
| 16 | CD_GRU_PRO_PAI | NUMBER | Y | Grupo de Procedimento principal para relacionados |
| 17 | CD_VAL_PRO_RELACIONADO | NUMBER | Y | Sequence da tabela, opcional, por causa da tabela filha que será criada. |
| 18 | SN_AUDITORIA | VARCHAR2 | Y | Lança o procedimento pela tela de auditoria. |
| 19 | SN_FATUR_REL | VARCHAR2 | Y | Lança o procedimento pelas tela do faturamento. |
| 20 | CD_PRESTADOR | NUMBER | Y | Código do prestador que será vinculado ao procedimento relacionado |
| 21 | CD_ATI_MED | VARCHAR2 | Y | Atividade médica que será vinculado ao procedimento relacionado |

---

## DBAMV.VAL_REFERENCIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_VAL_REFERENCIA | NUMBER | N |  |
| 2 | CD_VERSAO | NUMBER | N |  |
| 3 | NM_CAMPO | VARCHAR2 | N |  |
| 4 | TP_SEXO | VARCHAR2 | N |  |
| 5 | NR_ANO_INICIAL | NUMBER | Y |  |
| 6 | NR_MES_INICIAL | NUMBER | Y |  |
| 7 | NR_DIA_INICIAL | NUMBER | Y |  |
| 8 | NR_ANO_FINAL | NUMBER | Y |  |
| 9 | NR_MES_FINAL | NUMBER | Y |  |
| 10 | NR_DIA_FINAL | NUMBER | Y |  |
| 11 | VL_REFERENCIA_INICIAL | VARCHAR2 | Y |  |
| 12 | VL_REFERENCIA_FINAL | VARCHAR2 | Y |  |
| 13 | VL_INI_LIMITE | NUMBER | Y |  |
| 14 | VL_FIM_LIMITE | NUMBER | Y |  |
| 15 | VL_INI_ABSURDO | NUMBER | Y |  |
| 16 | VL_FIM_ABSURDO | NUMBER | Y |  |
| 17 | VL_REF_TEXTO | VARCHAR2 | Y |  |
| 18 | DS_VALOR_PADRAO | VARCHAR2 | Y |  |
| 19 | VL_INI_PANICO | NUMBER | Y | Valor inicial para a referencia de panico |
| 20 | VL_FIM_PANICO | NUMBER | Y |  |

---

## DBAMV.VAL_REFERENCIA_TEMP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_VERSAO | NUMBER | N |  |
| 2 | NM_CAMPO | VARCHAR2 | N |  |
| 3 | TP_SEXO | VARCHAR2 | N |  |
| 4 | NR_IDADE_INICIAL | NUMBER | N |  |
| 5 | NR_IDADE_FINAL | NUMBER | N |  |
| 6 | VL_REFERENCIA_INICIAL | VARCHAR2 | N |  |
| 7 | VL_REFERENCIA_FINAL | VARCHAR2 | N |  |

---

## DBAMV.VAL_TAB_SIASUS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SSM | VARCHAR2 | N |  |
| 2 | DT_VIGENCIA | DATE | N |  |
| 3 | VL_ANESTESISTA | NUMBER | Y |  |
| 4 | VL_AUXILIAR | NUMBER | Y |  |
| 5 | VL_OUTROS | NUMBER | Y |  |
| 6 | VL_GERAL | NUMBER | Y |  |

---

## DBAMV.VAL_TETO_CPM_EXCECAO
> Tabela responsável por guardar as configurações de exceção de custo paciente mês

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_VAL_TETO_CPM_EXCECAO | NUMBER | N | Campo sequencial da tabela. Pk composta. |
| 2 | CD_CONV_PLAN_VAL_TETO_CPM | NUMBER | N | FK da tabela pai. Pk composta. |
| 3 | CD_PACIENTE | NUMBER | N | Código do paciente que será tratado como exceção a regra de CMP |
| 4 | DT_INICIAL | DATE | N | Data inicial da regra de exceção para CPM |
| 5 | DT_FINAL | DATE | Y | Data final da regra de exceção para CPM |
| 6 | DS_CPM_EXCECAO | VARCHAR2 | Y | Motivo pelo qual o paciente informado não deve ser tratado como Custo Paciente Mês |

---

## DBAMV.VAL_UCO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TAB_FAT | NUMBER | N |  |
| 2 | DT_VIGENCIA | DATE | N |  |
| 3 | VL_UCO | NUMBER | N |  |
