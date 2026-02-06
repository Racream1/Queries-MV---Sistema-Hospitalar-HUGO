# 05 - Prontuario Eletronico (PEP)

> Documentos clinicos, evolucoes, PW_ (PEP Web)

## Resumo

- **Tabelas**: 693
- **Owners**: DBAMV, EDITOR

---

## DBAMV.AUTORIZACAO_ACESSO_PRONTUARIO
> TABELA QUE ARMAZENA OS REGISTROS DAS AUTORIZAC?ES DE ACESSO AO PRONTUARIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AUTORIZACAO_ACESSO_PRONT | NUMBER | N | IDENTIFICADOR DO REGISTRO DA TABELA AUTORIZACAO_ACESSO_PRONTUARIO |
| 2 | CD_PACIENTE | NUMBER | N | IDENTIFICADOR DO CODIGO DO PACIENTE |
| 3 | SN_IMPRESSO | VARCHAR2 | Y | INDICA SE O REGISTRO DA AUTORIZAC?O FOI IMPRESSO |
| 4 | DT_INICIAL | DATE | N | DATA INICIAL |
| 5 | DT_FINAL | DATE | N | DATA FINAL |
| 6 | CD_USUARIO | VARCHAR2 | Y | IDENTIFICADOR DO CODIGO DO USUARIO |

---

## DBAMV.DEV_CENTRALIZADA
> TABELA QUE GUARDARÁ A ÚLTIMA OPÇÃO DE TIPO DE DEVOLUÇÃO SELECIONADA NA TELA O_DEVOLUCAO_CENTRALIZADA.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DEV_CENTRALIZADA | NUMBER | N | CÓDIGO DA DEVOLUCÃO SELECIONADO. |
| 2 | TP_DEV_CENTRALIZADA | VARCHAR2 | N | ÚLTIMO TIPO DE DEVOLUCÃO SELECIONADO. M-MOVIMENTAÇÃO E S-SOLICITAÇÃO |
| 3 | CD_USUARIO | VARCHAR2 | N | CÓDIGO DO USUÁRIO. |

---

## DBAMV.DEV_FOR_CONCLUSAO
> TABELA DE INFORMATIVO DE DEVOLUÇÃO DAS MOVIMENTAÇÕES DE ESTOQUE E SAIDAS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DEVOLUCAO | NUMBER | N | CÓDIGO DA DEVOLUÇÃO |
| 2 | DT_CONCLUSAO_DEVOLUCAO | DATE | Y | DATA DA CONCLUSÃO DA DEVOLUÇÃO |
| 3 | CD_USUARIO | VARCHAR2 | Y | CÓDIGO DO USUÁRIO RESPONSÁVEL PELO FECHAMENTO |
| 4 | CD_SEQ_INTEGRA | NUMBER | Y | CÓDIGO SEQUENCIA DA INTEGRAÇÃO |
| 5 | DT_INTEGRA | DATE | Y | DATA QUE O REGISTRO FOI INTEGRADO |

---

## DBAMV.DEV_FOR_SIMBOLICA
> Tabela de devolução de forncedor simbólica.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DEV_FOR_SIMBOLICA | NUMBER | N | Código da devolução simbólica. |
| 2 | CD_ENT_PRO | NUMBER | N | Código do entrada que vai ser devolvida. |
| 3 | CD_ESTOQUE | NUMBER | Y |  |
| 4 | CD_ATENDIMENTO | NUMBER | Y | Código do antendimento. |
| 5 | CD_AVISO_CIRURGIA | NUMBER | Y | Código do aviso cirurgico. |
| 6 | CD_FORNECEDOR | NUMBER | N | Código do fornecedor que vai receber a devolução. |
| 7 | DT_EMISSAO | DATE | Y | Data de emissão da nota que será devolvida. |
| 8 | DT_DEVOLUCAO | DATE | N | Data da devolução. |
| 9 | DT_AGENDAMENTO | DATE | N | Data e hora  da devolução. |
| 10 | CD_TIP_DEV_FISCAL | NUMBER | Y | Código da devolução fiscal |
| 11 | CD_MOT_DEV | NUMBER | N | Código do motivo da devolução |
| 12 | TP_DEVOLUCAO | VARCHAR2 | N | Tipo da devolução S - Simbólica e F - Fisica |
| 13 | TP_STATUS | VARCHAR2 | N | Status de processamento junto da integração. AE-Aguardando Emissão, EP-Emissão em Processamento, ... |
| 14 | NR_DOCUMENTO | VARCHAR2 | Y | Número do documento da devolução |
| 15 | NR_SERIE | VARCHAR2 | Y | Serie de devolução |
| 16 | VL_TOTAL | NUMBER | Y | Valor total da devolução |
| 17 | NR_DANFE_NF_ENT | VARCHAR2 | Y | Chave de Acesso da NFE de entrada. |
| 18 | NR_PROTOCOLO_NF_ENT | VARCHAR2 | Y | Número do protocolo da nota fiscal eletrônica de entrada |
| 19 | NR_DANFE_NF_DEV | VARCHAR2 | Y | Chave de Acesso da NFE de devolução |
| 20 | NR_PROTOCOLO_NF_DEV | VARCHAR2 | Y | Número do protocolo da nota fiscal eletrônica de devolução |
| 21 | DS_RETORNO_SEFAZ | VARCHAR2 | Y | Descrição do retorno da Sefaz |
| 22 | NM_FORNECEDOR | VARCHAR2 | Y | Nome do fornecedor que foi realizado a devolução |
| 23 | NM_FANTASIA | VARCHAR2 | Y | Razão social do fornecedor que foi realizado a devolução |
| 24 | CD_MULTI_EMPRESA | NUMBER | Y | Código da empresa da devolução. |
| 25 | CD_MVINTEGRA | NUMBER | Y | Código da integração |
| 26 | DT_INTEGRACAO_DEVOLUCAO | DATE | Y | Data de integração |
| 27 | CD_CONSUMO_PACIENTE | NUMBER | Y | Código do consumo do paciente |
| 28 | CD_USUARIO_EMISSAO | VARCHAR2 | Y | Usuário de emissão da nota que será devolvida |
| 29 | DH_CANCELAMENTO | DATE | Y | Data e hora do cancelamento da nota que foi devolvida |
| 30 | CD_USUARIO_CANCELAMENTO | VARCHAR2 | Y | Usuário de cancelamento da nota que foi devolvida |
| 31 | DS_CANCELAMENTO_SEFAZ | VARCHAR2 | Y | Descrição do retorno da Sefaz referente ao cancelamento |
| 32 | TP_AMBIENTE_SEFAZ | VARCHAR2 | N | Ambiente da Sefaz |

---

## DBAMV.EDITOR_CAMPO
> Tabela que descreve os campos do documento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CAMPO | NUMBER | N | Codigo do campo |
| 2 | DS_CAMPO | VARCHAR2 | N | Nome do campo |
| 3 | CD_TIPO_ITEM | NUMBER | N | Caracterizac?o do campo dentre os tipo de items existentes |
| 4 | CD_TIPO_VISUALIZACAO | NUMBER | Y | Como o item sera visualizado (TEXT, COMBOBOX, TEXTAREA, etc) |
| 5 | DS_IDENTIFICADOR | VARCHAR2 | N | Identificador unico (METADADO) |
| 6 | SN_ATIVO | VARCHAR2 | Y | Informa se o campo esta ativo para uso |
| 7 | CD_METADADO | NUMBER | Y | Metadado ao qual o campo se relaciona |

---

## DBAMV.EDITOR_CAMPO_PROP_VAL
> Tabela para as configuracoes dos campos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CAMPO | NUMBER | N | Codigo do campo referenciado |
| 2 | CD_TIPO_VISUALIZACAO | NUMBER | N | Codigo do tipo de visualizacao referenciado |
| 3 | CD_PROPRIEDADE | NUMBER | N | Codigo do tipo de propriedade referenciada |
| 4 | DS_VALOR | VARCHAR2 | Y | Valor de configuracao da propriedade |
| 5 | LO_VALOR | CLOB | Y | Valor da resposta |

---

## DBAMV.EDITOR_CAMPO_VALOR
> Tabela para a lista de valores do campo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_VALOR | NUMBER | N | Codigo do valor |
| 2 | DS_VALOR | VARCHAR2 | Y | Descricao do valor |
| 3 | CD_CAMPO | NUMBER | N | Codigo do campo referenciado |
| 4 | DS_IDENTIFICADOR | VARCHAR2 | Y | Identificador do valor |
| 5 | SN_SELECIONADO | VARCHAR2 | Y | Propriedade que indica se o valor vira como selecionado |
| 6 | LO_VALOR | CLOB | Y | Valor da resposta |
| 7 | CD_PROPRIEDADE | NUMBER | Y | Código da propriedade |

---

## DBAMV.EDITOR_CONFIGURACAO
> Tabela para Configurações do Editor

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DS_IDENTIFICADOR | VARCHAR2 | N | Identificador único da configuração |
| 2 | DS_VERSAO_SISTEMA | VARCHAR2 | N | Versão do sistema ao qual a propriedade pertence. Se a propriedade não precisar mudar de acordo c... |
| 3 | DS_VALOR | VARCHAR2 | N | Valor da configuração |

---

## DBAMV.EDITOR_DOCUMENTO
> Tabela para armazenar os documento do editor

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DOCUMENTO | NUMBER | N | Codigo do documento |
| 2 | DS_DOCUMENTO | VARCHAR2 | Y | Descricao do documento |
| 3 | CD_TIPO_ITEM | NUMBER | N | Caracterizacao do documento dentre os tipo de items existentes |
| 4 | DS_IDENTIFICADOR | VARCHAR2 | Y | Identificador unico (METADADO) |
| 5 | SN_ATIVO | VARCHAR2 | Y | Informa se o campo esta ativo para uso |
| 6 | CD_VERSAO_PUBLICADA | NUMBER | Y | Codigo da versao marcada como publicada |
| 7 | CD_CABECALHO | NUMBER | Y | Cabecalho a ser utilizado como padrao no documento |
| 8 | CD_RODAPE | NUMBER | Y | Rodape a ser utilizado como padrao no documento |

---

## DBAMV.EDITOR_GRUPO
> Tabela para armazenar os grupos (Repositorio, grupo de campos, grupo de documentos) do editor

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GRUPO | NUMBER | N | Codigo do grupo |
| 2 | DS_GRUPO | VARCHAR2 | Y | Descricao do grupo |
| 3 | CD_GRUPO_PAI | NUMBER | Y | Codigo que referencia o grupo pai |
| 4 | CD_TIPO_ITEM | NUMBER | N | Caracterizacao do grupo dentre os tipo de items existentes |
| 5 | SN_ATIVO | VARCHAR2 | Y | Informa se o campo esta ativo para uso |

---

## DBAMV.EDITOR_GRUPO_CAMPO
> Tabela para armazenas os campos do grupo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GRUPO | NUMBER | N | Codigo que refencia o grupo |
| 2 | CD_CAMPO | NUMBER | N | Codigo que refencia o campo |

---

## DBAMV.EDITOR_GRUPO_DOCUMENTO
> Tabela para armazenas os documentos do grupo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GRUPO | NUMBER | N | Codigo que refencia o grupo |
| 2 | CD_DOCUMENTO | NUMBER | N | Codigo que refencia o documento |

---

## DBAMV.EDITOR_HIST_REGISTRO
> Tabela de historico para os registros do editor

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REGISTRO | NUMBER | N | Codigo do registro |
| 2 | CD_LAYOUT | NUMBER | N | Codigo do layout referenciado |
| 3 | SN_FECHADO | VARCHAR2 | Y |  |
| 4 | DH_EVENTO | DATE | N | Data/Hora da inclusao/alteracao/exclusao |
| 5 | TP_EVENTO | VARCHAR2 | N | I - Inclusao / A - Alteracao / E - Exclusao |

---

## DBAMV.EDITOR_HIST_REG_CAMPO
> Tabela para armazenar o historico das respostas de cada campo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REGISTRO | NUMBER | N | Codigo do registro referenciado |
| 2 | CD_CAMPO | NUMBER | N | Codigo do campo referenciado |
| 3 | DS_VALOR | VARCHAR2 | Y | Valor da resposta |
| 4 | NM_IMAGEM | VARCHAR2 | Y | Nome da imagem que representa resposta |
| 5 | DH_EVENTO | DATE | N | Data/Hora da inclusao/alteracao/exclusao |
| 6 | TP_EVENTO | VARCHAR2 | N | I - Inclusao / A - Alteracao / E - Exclusao |
| 7 | LO_VALOR | CLOB | Y | Valor da resposta |

---

## DBAMV.EDITOR_HIST_VER_DOCUMENTO
> Tabela para armazenar o historico de cada versao gerada para o documento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_VERSAO_DOCUMENTO | NUMBER | N | Codigo da vers?o do documento |
| 2 | CD_DOCUMENTO | NUMBER | N | Codigo do documento referenciado |
| 3 | VL_VERSAO | NUMBER | Y | Nomero que representacao a versao ex.:  versao 1, ou versao 2 |
| 4 | CD_TIPO_ITEM | NUMBER | N | Caracterizacao do campo dentre os tipo de items existentes |
| 5 | SN_ATIVO | VARCHAR2 | Y | Informa se a versao do documento esta ativa para uso |
| 6 | CD_LAYOUT_PADRAO | NUMBER | Y | Informa qual layout sera carregado por padrao |
| 7 | SN_FOI_PUBLICADO | VARCHAR2 | Y | Informa se a versao ja foi publicada |
| 8 | CD_TIPO_VERSAO | NUMBER | Y |  |
| 9 | LO_REL_COMPILADO | BLOB | Y | Conteudo do relatorio compilado |
| 10 | DH_EVENTO | DATE | N |  |
| 11 | TP_EVENTO | VARCHAR2 | N |  |

---

## DBAMV.EDITOR_JOB
> Tabela para Jobs do editor

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_JOB | NUMBER | N |  |
| 2 | NM_JOB | VARCHAR2 | N | Nome completamente qualificado do Job |
| 3 | QTD_MINUTOS | NUMBER | N | Quantidade de minutos da repetição |
| 4 | SN_CANCELADO | CHAR | N | Indicador de cancelamento do Job |

---

## DBAMV.EDITOR_LAYOUT
> Tabela para armazenar os layouts dos documentos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LAYOUT | NUMBER | N | Codigo do layout |
| 2 | CD_VERSAO_DOCUMENTO | NUMBER | N | Codigo da versao referenciada |
| 3 | DS_LAYOUT | VARCHAR2 | Y | Descricao do layout |
| 4 | CD_TIPO_ITEM | NUMBER | N | Caracterizacao do layout dentre os tipo de items existentes |
| 5 | CD_TIPO_LAYOUT | NUMBER | Y | Finalidade do layout (TELA, RELATORIO, CABECALHO |
| 6 | VL_ALTURA | NUMBER | Y | Valor referente a altura do layout |
| 7 | VL_LARGURA | NUMBER | Y | Valor referente a largura do layout |
| 8 | LO_CONTEUDO_AUX | CLOB | Y |  |
| 9 | LO_CONTEUDO | CLOB | Y | Especificacao do layout (conteudo) |
| 10 | CD_LAYOUT_CABECALHO | NUMBER | Y | Codigo do layout de cabecalho referenciado |
| 11 | CD_LAYOUT_RODAPE | NUMBER | Y | Codigo do layout de rodape referenciado |

---

## DBAMV.EDITOR_LAYOUT_CAMPO
> Tabela para armazenar os campos presentes no layout

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LAYOUT | NUMBER | N | Codigo do layout referenciado |
| 2 | CD_CAMPO | NUMBER | N | Codigo do campo referenciado |

---

## DBAMV.EDITOR_LAYOUT_REGRA
> Tabela para armazenar as regras a serem utilizadas no layout

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LAYOUT | NUMBER | N | Codigo do layout referenciado |
| 2 | CD_REGRA | NUMBER | N | Codigo da regra referenciada |
| 3 | NR_ORDEM | NUMBER | Y | Numero que determina a ordem de execucao das regras |

---

## DBAMV.EDITOR_MAPEAMENTO_CAMPO
> Tabela para armazenar o mapeamento dos campos do editor antigo e editor novo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DOCUMENTO_ORIGEM | NUMBER | N | Codigo do documento no editor antigo |
| 2 | DS_METADADO_ORIGEM | VARCHAR2 | N | Nome do do metadado do campo no editor antigo |
| 3 | DS_METADADO_DESTINO | VARCHAR2 | N | Nome do metadado do campo no editor novo |

---

## DBAMV.EDITOR_MAPEAMENTO_DOCUMENTO
> Tabela para armazenar o mapeamento dos documento do editor antigo e editor novo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DOCUMENTO_ORIGEM | NUMBER | N | Codigo do documento no editor antigo |
| 2 | CD_DOCUMENTO_DESTINO | NUMBER | N | Codigo do documento no editor novo |
| 3 | TP_TEMA_CLINICO | VARCHAR2 | N | Chave do tema clinico associado |

---

## DBAMV.EDITOR_MAPEAMENTO_REGISTRO
> Tabela para armazenar o mapeamento dos registro do editor antigo e editor novo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DOCUMENTO_ORIGEM | NUMBER | N | Codigo do documento no editor antigo |
| 2 | CD_REGISTRO_ORIGEM | NUMBER | N | Codigo do registro no editor antigo |
| 3 | CD_REGISTRO_DESTINO | NUMBER | N | Codigo do registro no editor novo |

---

## DBAMV.EDITOR_PATCH
> tabela para controle de execuc?o das correc?es

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PATCH | NUMBER | N | Codigo do patch |
| 2 | DS_PATCH | VARCHAR2 | Y | Descric?o do Patch executado |
| 3 | SN_EXECUTADO | VARCHAR2 | Y | Indicador para validar se o patch ja foi executado |
| 4 | DH_EXECUCAO | DATE | N | Data da execuc?o do patch |
| 5 | LO_LOG | CLOB | Y | Log relativo a execuc?o do patch |
| 6 | DS_IDENTIFICADOR | VARCHAR2 | Y | Identificador Unico do Patch |

---

## DBAMV.EDITOR_PROPRIEDADE
> Tabela para armazenar as propriedades dinamicas dos campos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROPRIEDADE | NUMBER | N | Codigo da propriedade do campo |
| 2 | DS_PROPRIEDADE | VARCHAR2 | Y | Descricao da propriedade do campo |
| 3 | DS_IDENTIFICADOR | VARCHAR2 | Y | Identificacao unica para a propriedade |

---

## DBAMV.EDITOR_REGISTRO
> Tabela para armazenar cada registro de preenchimento do layout

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REGISTRO | NUMBER | N | Codigo do registro |
| 2 | CD_LAYOUT | NUMBER | N | Codigo do layout referenciado |
| 3 | SN_FECHADO | VARCHAR2 | Y | Informa se o registro est?! fechado |

---

## DBAMV.EDITOR_REGISTRO_CAMPO
> Tabela para armazenar as respostas de cada campo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REGISTRO | NUMBER | N | Codigo do registro referenciado |
| 2 | CD_CAMPO | NUMBER | N | Codigo do campo referenciado |
| 3 | DS_VALOR | VARCHAR2 | Y | Valor da resposta |
| 4 | NM_IMAGEM | VARCHAR2 | Y | Nome da imagem que representa resposta |
| 5 | LO_VALOR | CLOB | Y | Valor da resposta |

---

## DBAMV.EDITOR_REGRA
> Tabela para armazenar as regras do documento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REGRA | NUMBER | N | Codigo da regra |
| 2 | DS_REGRA | VARCHAR2 | Y | Descric?o da regra |
| 3 | CD_TIPO_ITEM | NUMBER | N | Caracterizac?o da regra dentre os tipo de items existentes |
| 4 | CD_TIPO_REGRA | NUMBER | Y | Caracterizac?o da regra dentre os tipo de regras existentes |
| 5 | DS_ACAO_SQL | VARCHAR2 | Y | Ac?o a ser executada |
| 6 | DS_MENSAGEM | VARCHAR2 | Y | Mensagem enviada ao usuario utilizada na regra |
| 7 | SN_ATIVO | VARCHAR2 | Y | Informa se o campo esta ativo para uso |
| 8 | CD_VERSAO_DOCUMENTO | NUMBER | N | Codigo da vers?o do documento referenciada |

---

## DBAMV.EDITOR_REGRA_CAMPO
> Tabela para armazenar os campos utilizados na regra

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REGRA | NUMBER | N | Codigo da regra referenciada |
| 2 | CD_CAMPO | NUMBER | N | Codigo do campo referenciado |

---

## DBAMV.EDITOR_REGRA_CAMPO_VALOR_FILT
> Tabela para armazenar o filtro feito para uma lista de valores

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REGRA | NUMBER | N | Codigo da regra referenciada |
| 2 | CD_CAMPO | NUMBER | N | Codigo do campo referenciado |
| 3 | CD_VALOR | NUMBER | N | Codigo do valor referenciado |

---

## DBAMV.EDITOR_REGRA_CONDICAO
> Tabela para armazenar as codic?es para execuc?o da regra

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REGRA_CONDICAO | NUMBER | N | Codigo da regra condic?o |
| 2 | VL_INICIAL | VARCHAR2 | Y | Valor inicial da resposta do campo |
| 3 | VL_FINAL | VARCHAR2 | Y | Valor final da resposta do campo |
| 4 | CD_CAMPO | NUMBER | N | Codigo do campo referenciado |
| 5 | CD_REGRA | NUMBER | N | Codigo da regra referenciada |
| 6 | CD_TIPO_OPERACAO | NUMBER | N | Tipo de operac?o utilizada (>, ) |
| 7 | CD_TIPO_CONECTOR | NUMBER | Y | Tipo do conector utilizado (E, OU) |

---

## DBAMV.EDITOR_TEMP
> Tabela para os arquivos temporÃ¡rios

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TEMP | NUMBER | N | CÃ³digo do arquivo temporÃ¡rio |
| 2 | DH_CRIACAO | DATE | N | Data da criaÃ§Ã£o do arquivo temporÃ¡rio |
| 3 | LO_CONTEUDO | CLOB | Y | Representa o conteÃºdo do arquivo temporÃ¡rio |

---

## DBAMV.EDITOR_TEXTO_PADRAO
> Tabela para armazenar os textos padr?es dos campos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TEXTO_PADRAO | NUMBER | N | Codigo do texto padr?o |
| 2 | CD_CONFIGURACAO | NUMBER | Y | Codigo da configurac?o de referencia |
| 3 | LO_TEXTO_PADRAO | CLOB | Y | Valor do texto padr?o |
| 4 | CD_CAMPO | NUMBER | N | Campo referenciado no texto padr?#o |

---

## DBAMV.EDITOR_TEXTO_PADRAO_CONFIG
> Tabela para armazenar a configurac?o de unicidade que agrupa textos padr?es

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIGURACAO | NUMBER | N | Codigo da configurac?o da unicidade |

---

## DBAMV.EDITOR_TEXTO_PADR_CONFIG_PARAM
> Tabela para armazenar os parametros da configurac?o do texto padr?o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIGURACAO | NUMBER | N | Codigo do configurac?o (agrupamento de parametros) |
| 2 | CD_PARAMETRO | NUMBER | N | Codigo do parametro (campo) referenciado |
| 3 | LO_VALOR_PARAMETRO | CLOB | Y | Valor do parametro |

---

## DBAMV.EDITOR_TIPO_CONECTOR
> Tabela para armazenar os tipos de conectores da condic?o de uma regra

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIPO_CONECTOR | NUMBER | N | Codigo do tipo de conector |
| 2 | DS_TIPO_CONECTOR | VARCHAR2 | Y | Descric?o do tipo de conector |
| 3 | DS_IDENTIFICADOR | VARCHAR2 | Y | Identificac?o unica do conector |

---

## DBAMV.EDITOR_TIPO_ITEM
> Tabela para armazenar os tipo de item utilizados no editor (campo, parametro, documento, regra, layout, etc)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIPO_ITEM | NUMBER | N | Codigo do tipo da versao |
| 2 | DS_IDENTIFICADOR | VARCHAR2 | Y | Identificac?o unica do tipo de item |
| 3 | DS_TIPO_ITEM | VARCHAR2 | Y | Descricao do tipo de versao |

---

## DBAMV.EDITOR_TIPO_LAYOUT
> Tabela para armazenar os tipos de layout possiveis no editor (TELA, RELATORIO, CABECALHO, etc)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIPO_LAYOUT | NUMBER | N | Codigo do tipo de layout |
| 2 | DS_IDENTIFICADOR | VARCHAR2 | N | Identificac?o unica do tipo de layout |
| 3 | DS_TIPO_LAYOUT | VARCHAR2 | N | Descric?o do tipo de layout |

---

## DBAMV.EDITOR_TIPO_OPERACAO
> Tabela para armazenar os tipos de operadores da condic?o de uma regra

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIPO_OPERACAO | NUMBER | N | Codigo do tipo de operac?o |
| 2 | DS_TIPO_OPERACAO | VARCHAR2 | Y | Descric?o do tipo de operac?o |
| 3 | DS_IDENTIFICADOR | VARCHAR2 | Y | Identificac?o unica do tipo de operac?o |

---

## DBAMV.EDITOR_TIPO_REGRA
> Tabela para armazenar os tipos de regras possiveis no editor (HABILITAR, FILTRAR, RESPONDER, etc)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIPO_REGRA | NUMBER | N | Codigo do tipo de regra |
| 2 | DS_TIPO_REGRA | VARCHAR2 | Y | Descric?o do tipo de regra |
| 3 | DS_IDENTIFICADOR | VARCHAR2 | Y | Identificac?o unica do tipo de regra |

---

## DBAMV.EDITOR_TIPO_VERSAO
> Tabela para armazenar os tipo de uma vers?o (Historico, Teste e Publicada)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIPO_VERSAO | NUMBER | N |  |
| 2 | DS_TIPO_VERSAO | VARCHAR2 | Y |  |

---

## DBAMV.EDITOR_TIPO_VISUALIZACAO
> Tabela para armazenar os tipos de visualizac?o dos campos possiveis no editor (TEXT, TEXTAREA, COMBOBOX, etc)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIPO_VISUALIZACAO | NUMBER | N | Codigo do tipo de visualizac?o do campo |
| 2 | DS_IDENTIFICADOR | VARCHAR2 | Y | Identificac?o unica tipo de visualizac?o do campo |
| 3 | DS_TIPO_VISUALIZACAO | VARCHAR2 | Y | Descric?o do tipo de visualizac?o do campo |

---

## DBAMV.EDITOR_TIPO_VSLZ_PROP
> Tabela para armazenar para cada tipo de visualizac?o os tipo de propriedade presentes

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIPO_VISUALIZACAO | NUMBER | N | Codigo do tipo de visualizac?o referenciado |
| 2 | CD_PROPRIEDADE | NUMBER | N | Descric?o da propriedade referenciada |
| 3 | SN_INSTANCIA | VARCHAR2 | Y | Informa se a propriedade é de instância para o tipo de visualização |

---

## DBAMV.EDITOR_VERSAO_DOCUMENTO
> Tabela para armazenar cada vers?o gerada para o documento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_VERSAO_DOCUMENTO | NUMBER | N | Codigo da vers?o do documento |
| 2 | CD_DOCUMENTO | NUMBER | N | Codigo do documento referenciado |
| 3 | VL_VERSAO | NUMBER | Y | Numero que representac?o a vers?o ex.:  vers?o 1, ou vers?o 2 |
| 4 | CD_TIPO_ITEM | NUMBER | N | Caracterizac?o do campo dentre os tipo de items existentes |
| 5 | SN_ATIVO | VARCHAR2 | Y | Informa se a vers?o do documento esta ativa para uso |
| 6 | CD_LAYOUT_PADRAO | NUMBER | Y | Informa qual layout sera carregado por padr?o |
| 7 | SN_FOI_PUBLICADO | VARCHAR2 | Y | Informa se a versao ji?? foi publicada |
| 8 | CD_TIPO_VERSAO | NUMBER | Y | Codigo do tipo da versao |
| 9 | LO_REL_COMPILADO | BLOB | Y | ConteÃºdo do relatÃ³rio compilado |

---

## DBAMV.ESTADIAMENTO
> Cadastro de estadiamento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ESTADIAMENTO | VARCHAR2 | N | Codigo do estadiamento |
| 2 | DS_ESTADIAMENTO | VARCHAR2 | N | Descric?o do estadiamento |

---

## DBAMV.EVOLUCAO_ADMINISTRATIVA
> Tabela de evoluc?es medicas para solicitac?es de atendimento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EVOLUCAO_ADMINISTRATIVA | NUMBER | N | Codigo da Evoluc?o administrativa |
| 2 | NM_USUARIO | VARCHAR2 | Y | Nome do usuario logado no sistema |
| 3 | DS_EVOLUCAO_ADMINISTRATIVA | VARCHAR2 | Y | Descric?o da Evoluc?o administrativa |
| 4 | DT_EVOLUCAO_ADMINISTRATIVA | DATE | Y | Data da Evoluc?o administrativa |
| 5 | HR_EVOLUCAO_ADMINISTRATIVA | DATE | Y | Hora da Evoluc?o administrativa |
| 6 | TP_FLUXO | VARCHAR2 | Y | Fluxo da Evoluc?o administrativa (se saiu do MV para sistema terceiro, ou se entrou no MV atraves... |
| 7 | CD_SOLICITACAO_ATENDIMENTO | NUMBER | Y | Codigo da Solicitac?o de Atendimento referente a Evoluc?o administrativa |
| 8 | CD_MULTI_EMPRESA | NUMBER | Y | Codigo da multi-empresa |
| 9 | CD_SEQ_INTEGRA | NUMBER | Y | Codigo da Evoluc?o administrativa na tabela de Integrac?o |
| 10 | DT_INTEGRA | DATE | Y | Data de integrac?o do registro |

---

## DBAMV.EVOLUCAO_ATENDIME_ASIS
> Armazena os cinco indices da classificac?o ASIS (A,B,C,D,E)e seus respectivos pesos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EVOLUCAO_ASIS | NUMBER | N | Identificador do registro de evoluc?o |
| 2 | CD_CARACT_CLINICA | NUMBER | N | Identificador do registro de caracteristica clinica |
| 3 | CD_ATENDIMENTO | NUMBER | N | Identificador do registro de atendimento |
| 4 | DT_AVALIACAO | DATE | N | Data da avaliac?o |

---

## DBAMV.EVOLUCAO_MEDICA
> Tabela de evoluc?es medicas para solicitac?es de atendimento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EVOLUCAO_MEDICA | NUMBER | N | Codigo da Evoluc?o Medica |
| 2 | NM_USUARIO | VARCHAR2 | Y | Nome do usuario logado no sistema |
| 3 | DS_EVOLUCAO_MEDICA | VARCHAR2 | Y | Descric?o da Evoluc?o Medica |
| 4 | DT_EVOLUCAO_MEDICA | DATE | Y | Data da Evoluc?o Medica |
| 5 | HR_EVOLUCAO_MEDICA | DATE | Y | Hora da Evoluc?o Medica |
| 6 | TP_FLUXO | VARCHAR2 | Y | Fluxo da Evoluc?o Medica (se saiu do MV para sistema terceiro, ou se entrou no MV atraves de sist... |
| 7 | CD_SOLICITACAO_ATENDIMENTO | NUMBER | Y | Codigo da Solicitac?o de Atendimento referente a Evoluc?o Medica |
| 8 | CD_MULTI_EMPRESA | NUMBER | Y | Codigo da multi-empresa |
| 9 | CD_SEQ_INTEGRA | NUMBER | Y | Codigo da Evoluc?o Medica na tabela de Integrac?o |
| 10 | DT_INTEGRA | DATE | Y | Data de integrac?o do registro |

---

## DBAMV.EVOLUCAO_SOL_ATND_RGL
> Tabela de evolução da solicitação de atendimento de regulação.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EVOLUCAO_SOL_ATND_RGL | NUMBER | N | Código único que identifica a evolução da solicitação de atendimento de Regulação. |
| 2 | CD_SOLIC_ATENDIMENTO_REGULACAO | NUMBER | N | Código que identifica a solicitação de atendimento da Regulação a que pertence a evolução. |
| 3 | DS_EVOLUCAO_QUADRO_CLINICO | VARCHAR2 | N | Alterações do quadro clínico do paciente. |
| 4 | DH_EVOLUCAO | DATE | N | Data e hora de criação da evolução. |
| 5 | DH_ENVIO_REGULACAO | DATE | Y | Data e hora de envio da evolução para a central de regulação. |
| 6 | NR_FREQUENCIA_CARDIACA | NUMBER | Y | Frequência cardíaca do paciente. |
| 7 | NR_FREQUENCIA_RESPIRATORIA | NUMBER | Y | Frequência respiratória do paciente. |
| 8 | NR_PRESSAO_SISTOLICA | NUMBER | Y | Pressão sistólica do paciente. |
| 9 | NR_PRESSAO_DIASTOLICA | NUMBER | Y | Pressão diastólica do paciente. |
| 10 | NR_TEMPERATURA | NUMBER | Y | Temperatura do paciente. |
| 11 | NR_SATURACAO_O2 | NUMBER | Y | Saturação O2 do paciente. |
| 12 | CD_SENSORIO | VARCHAR2 | Y |  |
| 13 | CD_DEBITO_URINARIO | VARCHAR2 | Y |  |
| 14 | CD_SUPORTE_O2 | VARCHAR2 | Y |  |
| 15 | NR_FLUXO_O2 | NUMBER | Y |  |
| 16 | NR_FIO2 | NUMBER | Y | Frações inspiradas de oxigênio. |
| 17 | NR_SATO2 | NUMBER | Y | Saturação de oxigênio. |
| 18 | NR_PEEP | NUMBER | Y | Pressão Expiratória Positiva Final. |
| 19 | NR_DINAMICA_UTERINA | NUMBER | Y |  |
| 20 | NR_BATIMENTO_CARDIACO_FETO | NUMBER | Y |  |
| 21 | SN_DROGAS_VASOATIVAS | VARCHAR2 | N | Indica se há uso de drogas vasoativas pelo paciente. |
| 22 | SN_TOQUE_REALIZADO | VARCHAR2 | N | Indica se foi realizado o exame de toque na paciente gestante. |
| 23 | SN_BOLSA_INTEGRA | VARCHAR2 | N | Indica se a bolsa da paciente gestante está íntegra. |
| 24 | SN_GRUMOS | VARCHAR2 | N | Indica se há grumos no líquido amniótico da paciente gestante |
| 25 | SN_ECOGRAFIA_REALIZADA | VARCHAR2 | N | Indica se uma ecografia foi realizada na paciente gestante. |
| 26 | DH_RUPTURA_BOLSA | DATE | Y | Data e hora de ruptura da bolsa amniótica da paciente gestante. |
| 27 | DS_COR_LIQUIDO_AMNIOTICO | VARCHAR2 | Y | Cor do líquido amniótico da paciente gestante. |
| 28 | DS_DESCRICAO_ECOGRAFIA | VARCHAR2 | Y | Descrição da ecografia realizada na paciente gestante |
| 29 | SN_ISOLAMENTO_NECESSARIO | VARCHAR2 | N | Indica se há necessidade de isolamento do paciente. |
| 30 | CD_GERME_REGULACAO1 | VARCHAR2 | Y | Germe 1 apresentada pelo paciente. |
| 31 | CD_GERME_REGULACAO2 | VARCHAR2 | Y | Germe 2 apresentada pelo paciente. |
| 32 | CD_GERME_REGULACAO3 | VARCHAR2 | Y | Germe 3 apresentada pelo paciente. |
| 33 | DS_GERME_MULTIRRESISTENTE | VARCHAR2 | Y | Descrição de germe multirresistente apresentado pelo paciente. |

---

## DBAMV.EVOL_ADMIN
> Tabela de Cadastro de Evoluc?es Administrativas.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AGRUPA_EVOL_ADMIN | NUMBER | N | Codigo do Agrupamento a qual esta associada a Evoluc?o Administrativa. |
| 2 | CD_EVOL_ADMIN | NUMBER | N | Codigo de identificac?o da Evoluc?o Administrativa. |
| 3 | DS_EVOL_ADMIN | VARCHAR2 | N | Descric?o da Evoluc?o Administrativa. |
| 4 | SN_AUTOMATICA | VARCHAR2 | N | Identifica se a Evoluc?o Administrativa possui lancamento automatico ou n?o. |
| 5 | TP_ACAO_ASSOCIADA | VARCHAR2 | Y | Ac?o associada a Evoluc?o Administrativa. |
| 6 | TP_ACESSO | VARCHAR2 | N | Indica a regra que sera utilizada para utilizac?o da Evoluc?o Administrativa (Pulblica/Privada). |

---

## DBAMV.EVOL_ADMIN_USUARIOS
> Tabela de Cadastro de Usuarios X Evoluc?es Administrativas.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EVOL_ADMIN | NUMBER | N | Codigo da Evoluc?o Administrativa a qual esta associado o Usuario. |
| 2 | CD_USUARIO | VARCHAR2 | N | Codigo do Usuario associado a Evoluc?o Administrativa. |
| 3 | SN_PESQUISAR | VARCHAR2 | N | Identifica se o usuario selecionado esta apto a visualizar esta evoluc?o ao pesquisa-la. |
| 4 | SN_INSERIR | VARCHAR2 | N | Identifica se o usuario selecionado esta apto a inserir novas Evoluc?es Administrativas. |
| 5 | SN_CANCELAR | VARCHAR2 | N | Identifica se o usuario selecionado esta apto a cancelar Evoluc?es Administrativas. |

---

## DBAMV.HT_PW_ALERGIA_PAC

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROBLEMA | NUMBER | N |  |

---

## DBAMV.HT_PW_ASSOC_TIP_PRESC

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROBLEMA | NUMBER | N |  |

---

## DBAMV.HT_PW_FAVORITO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FAVORITO | NUMBER | N |  |

---

## DBAMV.HT_PW_FAVORITO_CID

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FAVORITO | NUMBER | N |  |

---

## DBAMV.HT_PW_FAVORITO_PACIENTE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FAVORITO | NUMBER | N |  |

---

## DBAMV.HT_PW_FAVORITO_PRESCRICAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FAVORITO | NUMBER | N |  |

---

## DBAMV.HT_PW_PROBLEMA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROBLEMA | NUMBER | N |  |

---

## DBAMV.ITDEV_FOR_SIMBOLICA
> Tabela de itens da devolução de forncedor simbólica.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DEV_FOR_SIMBOLICA | NUMBER | N | Código da devolução simbólica. |
| 2 | CD_ITDEV_FOR_SIMBOLICA | NUMBER | N | Código do entrada que vai ser devolvida. |
| 3 | CD_IDENTIFICADOR_ETIQ | VARCHAR2 | Y | Código do antendimento. |
| 4 | CD_PRODUTO | NUMBER | N | Código do fornecedor que vai receber a devolução. |
| 5 | CD_LOTE | VARCHAR2 | Y | Código do CFOP utilizado na devolução. |
| 6 | CD_CFOP | NUMBER | N | Código do CFOP utilizado na devolução. |
| 7 | DT_VALIDADE | DATE | Y | Data de emissão da nota que será devolvida. |
| 8 | CD_UNI_PRO | NUMBER | Y | Data da devolução. |
| 9 | QT_DEVOLUCAO | NUMBER | Y | Data e hora  da devolução. |
| 10 | CD_ITENT_PRO | NUMBER | Y | Código do item da entrada. |
| 11 | DS_ENDERECO | VARCHAR2 | Y | Indica qual o endereço que o lote se encontra no estoque. |
| 12 | CD_TIP_DEV_FISCAL | NUMBER | Y | Código da devolução fiscal |
| 13 | VL_TOTAL | NUMBER | Y |  |
| 14 | VL_UNITARIO | NUMBER | Y |  |
| 15 | VL_FATOR | NUMBER | Y | Valor do fator. |
| 16 | DS_UNIDADE | VARCHAR2 | Y | Descrição da unidade do produto |
| 17 | CD_NCM | VARCHAR2 | Y | Incluido para realizar o vínculo entre Produto é Código NCM. |
| 18 | CD_EXP_CONTABILIDADE | NUMBER | Y | Código de lote de exportação para contabilidade |
| 19 | CD_LCTO_MOVIMENTO | NUMBER | Y | Código de movimentação da contabilidade |

---

## DBAMV.ITDEV_FOR_SIM_IMPOSTOS
> Tabela dos impostos dos itens da devolução de forncedor simbólica.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITDEV_FOR_SIM_IMPOSTOS | NUMBER | N | Sequencia da tabela de impostos da devolução simbólica. |
| 2 | CD_ITDEV_FOR_SIMBOLICA | NUMBER | N | Código do item da devolução simbolica |
| 3 | CD_PRODUTO | NUMBER | N | Código do produto que vai receber a devolução. |
| 4 | CD_DETALHAMENTO_SUGERIDO | NUMBER | Y | Código do imposto surgerido pelo sistema previamente cadastrado na tabela de produto |
| 5 | CD_DETALHAMENTO | NUMBER | Y | Código do imposto informado pelo usuário |
| 6 | CD_CST_ENTRADA_SUGERIDO | VARCHAR2 | Y | Código do CST de entrada surgerido pelo sistema previamente cadastrado na tabela de produto |
| 7 | CD_CST_ENTRADA | VARCHAR2 | Y | Código do CST de entrada informado pelo usuário |
| 8 | CD_CST_SAIDA_SUGERIDO | VARCHAR2 | Y | Código do CST de saída surgerido pelo sistema previamente cadastrado na tabela de produto |
| 9 | CD_CST_SAIDA | VARCHAR2 | Y | Código do CST de entrada informado pelo usuário |
| 10 | VL_BASE_CALCULO | NUMBER | Y | Valor da base de cálculo do imposto. |
| 11 | VL_PERCENTUAL_ALIQUOTA | NUMBER | Y | Valor percentual da aliquota para cálculo do imposto. |
| 12 | VL_TOTAL_IMPOSTO | NUMBER | Y | Total do imposto do item de entrada. |

---

## DBAMV.METASTASE
> Lista de locais de metastase

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_METASTASE | NUMBER | N | Codigo identificador do local da metastase |
| 2 | DS_METASTASE | VARCHAR2 | N | Descric?o do local da metastase |

---

## DBAMV.PEPWEB_COLUNA_CONFIG

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_COLUNA | NUMBER | N |  |
| 2 | CD_PORTAL | NUMBER | N |  |
| 3 | NR_POSICAO | NUMBER | N |  |

---

## DBAMV.PEPWEB_PARAMETROS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CHAVE | VARCHAR2 | N |  |
| 2 | VALOR | VARCHAR2 | Y |  |

---

## DBAMV.PEPWEB_PORTAL_CONFIG

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PORTAL | NUMBER | N |  |
| 2 | CD_USUARIO | VARCHAR2 | N |  |
| 3 | NR_COLUNAS | NUMBER | N |  |

---

## DBAMV.PEPWEB_PORTLET_CONFIG

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PORTLET | NUMBER | N |  |
| 2 | CD_COLUNA | NUMBER | N |  |
| 3 | NR_POSICAO | NUMBER | N |  |
| 4 | NR_LINHAS | NUMBER | N |  |
| 5 | CD_TIPO_GRAFICO | NUMBER | Y |  |
| 6 | SN_EXCLUIR | CHAR | N |  |
| 7 | BODY_PAGE | VARCHAR2 | Y |  |
| 8 | TITULO | VARCHAR2 | Y |  |
| 9 | TYPE | VARCHAR2 | Y |  |

---

## DBAMV.PEPWEB_PORTLET_CONFIG_MENU

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIGURACAO | NUMBER | N |  |
| 2 | CD_PORTLET | NUMBER | N |  |
| 3 | CHAVE | VARCHAR2 | Y |  |
| 4 | VALOR | VARCHAR2 | Y |  |

---

## DBAMV.PEPWEB_TIPO_GRAFICO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIPO | NUMBER | N |  |
| 2 | DS_TIPO | VARCHAR2 | N |  |

---

## DBAMV.PEPWEB_UNIDADE_MULTI_EMPRESAS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_UNIDADE_REGIONAL | VARCHAR2 | N |  |
| 2 | CD_MULTI_EMPRESA | NUMBER | Y |  |

---

## DBAMV.PEPWEB_USUARIO_UNID_REG

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_USUARIO | VARCHAR2 | N |  |
| 2 | CD_UNIDADE_REGIONAL | VARCHAR2 | Y |  |

---

## DBAMV.PL_CUIDADO
> tabela que armazena os planos de cuidados da Elsevier

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PL_CUIDADO | NUMBER | N | Código sequencial do registro |
| 2 | DS_PL_CUIDADO | VARCHAR2 | Y | Descricao do plano de cuidado |
| 3 | SN_ATIVO | VARCHAR2 | N | Status do plano |
| 4 | LO_INFORMACAO | CLOB | Y | Descricao da informacao do plano |
| 5 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 6 | CD_ELSEVIER | VARCHAR2 | Y | Codigo chave da Elsevier |
| 7 | CD_VERSAO | VARCHAR2 | Y | Versao do plan de cuidado |
| 8 | DT_INTEGRA | DATE | Y | Data que o plano foi integrado |
| 9 | CD_SEQ_INTEGRA | NUMBER | Y | Sequence do registro integrado |

---

## DBAMV.PL_CUIDADO_ATV
> Tabela que armazena os planos de cuidados ativos da Elsevier

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PL_CUIDADO_ATV | NUMBER | N | Cï¿½digo sequencial do registro |
| 2 | CD_PL_CUIDADO | NUMBER | N | Cï¿½digo chave da pl_cuidado |
| 3 | CD_ATENDIMENTO | NUMBER | Y | Cï¿½digo do atendimento |
| 4 | TP_SITUCAO | VARCHAR2 | N | Situaï¿½ï¿½o do plano se ativo ou nao |
| 5 | DT_ATIVACAO | DATE | Y | Data de ativaï¿½ï¿½o do plano |
| 6 | CD_USUARIO | VARCHAR2 | Y | Cï¿½digo do usuï¿½rio que ativou o plano |
| 7 | DT_DESATIVACAO | DATE | Y | Data de desativaï¿½ï¿½o do plano |
| 8 | CD_USUARIO_DESATIVACAO | VARCHAR2 | Y | Cï¿½digo do usuï¿½rio que desativou o plano |

---

## DBAMV.PL_CUID_CID
> Tabela que armazena os CIDs dos planos de cuidados da Elsevier

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PL_CUID_CID | NUMBER | N | Código sequencial do registro |
| 2 | CD_CID | VARCHAR2 | Y | Numero do CID |
| 3 | CD_PLANO_CUIDADO | NUMBER | N | Codigo do plano de cuidado |
| 4 | DT_INTEGRA | DATE | Y | Data que o plano foi integrado |
| 5 | CD_SEQ_INTEGRA | NUMBER | Y | Sequence do registro integrado |

---

## DBAMV.PL_CUID_EDU_OBJETIVO
> tabela que armazena os objetivos da educação dos planos de cuidados da Elsevier

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PL_CUID_EDU_OBJETIVO | NUMBER | N | Código sequencial do registro |
| 2 | CD_PL_CUIDADO | NUMBER | Y | Código chave da pl_cuidado |
| 3 | DS_OBJETIVO | VARCHAR2 | Y | Descricao do objetivo da educação do plano de cuidado |
| 4 | SN_ATIVO | VARCHAR2 | N | Status do objetivo da educação do plano |
| 5 | LO_OBSERVACAO | CLOB | Y | Observação do objetivo da educação do plano |
| 6 | CD_ELSEVIER | VARCHAR2 | Y | Codigo chave da Elsevier |
| 7 | DT_INTEGRA | DATE | Y | Data que o objetivo da educação foi integrado |
| 8 | CD_SEQ_INTEGRA | NUMBER | Y | Sequence do registro integrado |
| 9 | LO_INFORMACAO | CLOB | Y | Descricao da informacao do objetivo da educação |

---

## DBAMV.PL_CUID_EDU_OBJET_ATV
> tabela que armazena os objetivos ativos da educaï¿½ï¿½o para os planos de cuidados da Elsevier

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PL_CUID_EDU_OBJET_ATV | NUMBER | N | Cï¿½digo sequencial do registro |
| 2 | CD_PL_CUIDADO_ATV | NUMBER | N | Cï¿½digo chave da pl_cuidado_atv |
| 3 | CD_PL_CUID_EDU_OBJET | NUMBER | N | Cï¿½digo chave da pl_cuid_edu_objetivo |
| 4 | SN_ATIVO | VARCHAR2 | N | Status do objetivo da educaï¿½ï¿½o |
| 5 | DT_ATIVACAO | DATE | Y | Data de ativaï¿½ï¿½o do objetivo |
| 6 | CD_USUARIO | VARCHAR2 | Y | Cï¿½digo do usuï¿½rio |
| 7 | DT_DESATIVACAO | DATE | Y | Data de desativaï¿½ï¿½o do ojbetivo |
| 8 | CD_USUARIO_DESATIVACAO | VARCHAR2 | Y | Cï¿½digo do usuï¿½rio que desativou o objetivo |

---

## DBAMV.PL_CUID_EDU_OBJET_ITEM
> tabela que armazena os itens dos objetivos da educação dos planos de cuidados educação da Elsevier

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PL_CUID_EDU_OBJET_ITEM | NUMBER | N | Código sequencial do registro |
| 2 | CD_PL_CUID_EDU_OBJETIVO | NUMBER | Y | Codigo chave da pl_cuid_edu_objetivo |
| 3 | SN_ATIVO | VARCHAR2 | N | Status dos itens dos objetivos da educação dos planos de cuidados |
| 4 | DS_OBSERVACAO | VARCHAR2 | Y | Descricao da observação do item dos objetivos da educação dos plano de cuidado educação |
| 5 | DT_INTEGRA | DATE | Y | Data que o item do objetivo da educação foi integrado |
| 6 | CD_SEQ_INTEGRA | NUMBER | Y | Sequence do registro integrado |
| 7 | CD_ELSEVIER | VARCHAR2 | Y | Codigo chave da Elsevier |
| 8 | LO_INFORMACAO | CLOB | Y | Descricao da informacao do objetivo da educação |
| 9 | CD_PL_CUID_EDU_OBJET_ITEM_PAI | NUMBER | Y | Código sequencial do registro pai |
| 10 | SN_CABECALHO | VARCHAR2 | N | Identificação de cabeçalho |

---

## DBAMV.PL_CUID_EDU_OBJET_LINK
> Tabela que armazena os links dos objetivos da educaï¿½ï¿½o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PL_CUID_EDU_OBJET_LINK | NUMBER | N | Cï¿½digo sequencial do registro |
| 2 | CD_PL_CUID_EDU_OBJETIVO | NUMBER | Y | Chave da pl_cuid_edu_objetivo |
| 3 | DS_DESCRICAO | VARCHAR2 | Y | Descriï¿½ï¿½o do link |
| 4 | DS_LINK | VARCHAR2 | Y | Link |

---

## DBAMV.PL_CUID_GRUP_INTERV
> tabela que armazena os grupos de intervenções dos planos de cuidados da Elsevier

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PL_CUID_GRUP_INTERV | NUMBER | N | Código sequencial do registro |
| 2 | CD_PL_CUID_PROBLEMA | NUMBER | N | Codigo chave da pl_cuid_problema |
| 3 | DS_GRUPO_INTERVENCAO | VARCHAR2 | Y | Descricao do grupo da intervenção do plano |
| 4 | SN_ATIVO | VARCHAR2 | N | Status do grupo da intervenção do plano |
| 5 | LO_INFORMACAO | CLOB | Y | Descricao da informacao do grupo da intervenção do plano |
| 6 | CD_ELSEVIER | VARCHAR2 | Y | Codigo chave da Elsevier |
| 7 | DT_INTEGRA | DATE | Y | Data que o grupo da intervenção do plano foi integrado |
| 8 | CD_SEQ_INTEGRA | NUMBER | Y | Sequence do registro integrado |

---

## DBAMV.PL_CUID_GRUP_INTERV_ATV
> Tabela que armazena os grupos de intervencao ativo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PL_CUID_GRUP_INTERV_ATV | NUMBER | N | Cï¿½digo sequencial do registro |
| 2 | CD_GRUPO_ATV | NUMBER | N | Codigo do grupo ativo |
| 3 | CD_GRUPO_INTERVENCAO | NUMBER | Y | Codigo do grupo de intervencao |
| 4 | SN_ATIVO | VARCHAR2 | N | Indica se esta ativo |
| 5 | DT_ATIVACAO | DATE | Y | Data da ativacao |
| 6 | CD_USUARIO | VARCHAR2 | Y | Codigo do usuario |
| 7 | DT_DESATIVACAO | DATE | Y | Data da desativacao |
| 8 | CD_USUARIO_DESATIVACAO | VARCHAR2 | Y | Codigo do usuario da desativacao |

---

## DBAMV.PL_CUID_HISTORICO
> tabela que armazena o historico dos planos de cuidados da elsevier

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PL_CUID_HISTORICO | NUMBER | N | cï¿½digo sequencial do registro |
| 2 | CD_PL_CUID_ATV | NUMBER | Y | cï¿½digo do plano de cuidados ativo |
| 3 | CD_PROBLEMA_ATV | NUMBER | Y | cï¿½digo do problema ativo |
| 4 | CD_PROB_OBJET_ATV | NUMBER | Y | cï¿½digo do objetivo do problema ativo |
| 5 | CD_GRUPO_INTERV_ATV | NUMBER | Y | cï¿½digo do grupo de intervencao ativo |
| 6 | CD_INTERV_ATV | NUMBER | Y | cï¿½digo da intervencao ativa |
| 7 | CD_ATIVIDADE | NUMBER | Y | cï¿½digo da atividade |
| 8 | CD_EDU_OBJET_ATV | NUMBER | Y | cï¿½digo do objetivo da educacao ativa |
| 9 | CD_ITEM | NUMBER | Y | cï¿½digo do item |
| 10 | DT_REGISTRO | DATE | Y | data do registro |
| 11 | CD_USUARIO | VARCHAR2 | Y | cï¿½digo do usuario |
| 12 | TP_REGISTRO | VARCHAR2 | N | tipo de registro |
| 13 | LO_OBSERVACAO | CLOB | Y | observacao |
| 14 | SN_SUSPENSO | VARCHAR2 | N | suspenso sim/nao |
| 15 | DT_SUSPENSAO | DATE | Y | data da suspensao |
| 16 | CD_USUARIO_SUSPENSAO | VARCHAR2 | Y | usuario da suspensao |
| 17 | TP_SITUACAO | VARCHAR2 | N | tipo de situacao |
| 18 | DT_FECHAMENTO | DATE | Y | data de fechamento |
| 19 | CD_USUARIO_FECHAMENTO | VARCHAR2 | Y | usuario de fechamento |
| 20 | CD_HISTORICO_PAI | NUMBER | Y | historico pai |
| 21 | DS_ITEM | VARCHAR2 | N | valor do item |
| 22 | CD_DOCUMENTO_CLINICO | NUMBER | Y | codigo do documento clinico |
| 23 | CD_HISTORICO_PLANO_CUIDADO | NUMBER | Y | historico do plano de cuidado |

---

## DBAMV.PL_CUID_INTERV
> tabela que armazena as intervenções dos planos de cuidados da Elsevier

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PL_CUID_INTERV | NUMBER | N | Código sequencial do registro |
| 2 | CD_PL_CUID_GRUP_INTERV | NUMBER | Y | Codigo chave da PL_CUID_GRUP_INTERV |
| 3 | DS_INTERVENCAO | VARCHAR2 | Y | Descricao da intervenção do plano |
| 4 | SN_ATIVO | VARCHAR2 | N | Status da intervenção do plano |
| 5 | LO_INFORMACAO | CLOB | Y | Descricao da informacao da intervenção do plano |
| 6 | CD_ELSEVIER | VARCHAR2 | Y | Codigo chave da Elsevier |
| 7 | DT_INTEGRA | DATE | Y | Data que a intervenção do plano foi integrado |
| 8 | CD_SEQ_INTEGRA | NUMBER | Y | Sequence do registro integrado |

---

## DBAMV.PL_CUID_INTERV_ATIVID
> Tabela que armazena as intervencoes ativas dos planos de cuidados da Elsevier

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INTERV_ATIVID | NUMBER | N | Código sequencial do registro |
| 2 | CD_INTERVENCAO | NUMBER | N | Código da intervencao |
| 3 | DS_INTERV_ATIVID | VARCHAR2 | Y | Descricao da intervencao ativa do plano de cuidado |
| 4 | SN_ATIVO | VARCHAR2 | N | Status do plano |
| 5 | DS_OBSERVACAO | VARCHAR2 | Y | Descricao da observacao |
| 6 | CD_ELSEVIER | VARCHAR2 | Y | Codigo chave da Elsevier |
| 7 | DT_INTEGRA | DATE | Y | Data que o plano foi integrado |
| 8 | CD_SEQ_INTEGRA | NUMBER | Y | Sequence do registro integrado |

---

## DBAMV.PL_CUID_INTERV_ATV
> Tabela que armazena os cuidados da intervencao ativo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PL_CUID_INTERV_ATV | NUMBER | N | Cï¿½digo sequencial do registro |
| 2 | CD_GRUPO_INTERV_ATV | NUMBER | N | Codigo do grupo de intervencao ativo |
| 3 | CD_INTERVENCAO | NUMBER | N | Codigo da intervencao |
| 4 | SN_ATIVO | VARCHAR2 | N | Indica se esta ativo |
| 5 | DT_ATIVACAO | DATE | Y | Data da ativacao |
| 6 | CD_USUARIO | VARCHAR2 | Y | Codigo do usuario |
| 7 | DT_DESATIVACAO | DATE | Y | Data da desativacao |
| 8 | CD_USUARIO_DESATIVACAO | VARCHAR2 | Y | Codigo do usuario da desativacao |

---

## DBAMV.PL_CUID_ITEM
> Tabela que armazena os itens dos planos de cuidados da Elsevier

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PL_CUID_ITEM | NUMBER | N | Código sequencial do registro |
| 2 | CD_PL_CUIDADO | NUMBER | N | Codigo chave da pl_cuidado |
| 3 | SN_ATIVO | VARCHAR2 | N | Status do item do plano |
| 4 | DS_OBSERVACAO | VARCHAR2 | Y | Observacao do item do plano |
| 5 | DT_INTEGRA | DATE | Y | Data que o item do plano foi integrado |
| 6 | CD_SEQ_INTEGRA | NUMBER | Y | Sequence do registro integrado |
| 7 | CD_ELSEVIER | VARCHAR2 | Y | Codigo chave da Elsevier |

---

## DBAMV.PL_CUID_NANDA
> Tabela que armazena os protocolo nanda do planos de cuidados da Elsevier

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PL_CUID_NANDA | NUMBER | N | Código sequencial do registro |
| 2 | CD_DIAGNOSTICO | VARCHAR2 | Y | Numero do Nanda |
| 3 | CD_PLANO_CUIDADO | NUMBER | N | Codigo do plano de cuidado |
| 4 | DT_INTEGRA | DATE | Y | Data que o plano foi integrado |
| 5 | CD_SEQ_INTEGRA | NUMBER | Y | Sequence do registro integrado |

---

## DBAMV.PL_CUID_POPULACAO
> Tabela que armazena os dados de população dos planos de cuidados da Elsevier

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PL_CUID_POPULACAO | NUMBER | N | Código sequencial do registro |
| 2 | CD_PL_CUIDADO | NUMBER | N | Codigo chave da PL_CUIDADO |
| 3 | DS_POPULACAO | VARCHAR2 | Y | Descricao da população |

---

## DBAMV.PL_CUID_PROBLEMA
> tabela que armazena os problemas dos planos de cuidados da Elsevier

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PL_CUID_PROBLEMA | NUMBER | N | Código sequencial do registro |
| 2 | CD_PL_CUIDADO | NUMBER | Y | Codigo chave da pl_cuidado |
| 3 | DS_PROBLEMA | VARCHAR2 | Y | Descricao do problema |
| 4 | SN_ATIVO | VARCHAR2 | N | Status do problema |
| 5 | LO_INFORMACAO | CLOB | Y | Descricao da informacao do problema |
| 6 | CD_ELSEVIER | VARCHAR2 | Y | Codigo chave da Elsevier |
| 7 | DT_INTEGRA | DATE | Y | Data que o problema foi integrado |
| 8 | CD_SEQ_INTEGRA | NUMBER | Y | Sequence do registro integrado |

---

## DBAMV.PL_CUID_PROB_ATV
> tabela que armazena os problemas ativos dos planos de cuidados da Elsevier

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PL_CUID_PROB_ATV | NUMBER | N | Cï¿½digo sequencial do registro |
| 2 | CD_PL_CUIDADO_ATV | NUMBER | N | Codigo chave da pl_cuidado_atv |
| 3 | CD_PL_CUID_PROBLEMA | NUMBER | N | Codigo chave da pl_cuid_problema |
| 4 | SN_ATIVO | VARCHAR2 | N | Status do problema do plano |
| 5 | DT_ATIVACAO | DATE | Y | Data de ativaï¿½ï¿½o do problema do plano |
| 6 | CD_USUARIO | VARCHAR2 | Y | Cï¿½digo do usuï¿½rio |
| 7 | DT_DESATIVACAO | DATE | Y | Data de desativaï¿½ï¿½o do problema do plano |
| 8 | CD_USUARIO_DESATIVACAO | VARCHAR2 | Y | Cï¿½digo do usuï¿½rio que desativou o problema do plano |

---

## DBAMV.PL_CUID_PROB_OBJET
> tabela que armazena os objetivos dos problemas dos planos de cuidados da Elsevier

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PL_CUID_PROB_OBJET | NUMBER | N | Código sequencial do registro |
| 2 | CD_PL_CUID_PROBLEMA | NUMBER | N | Codigo chave da pl_cuid_problema |
| 3 | DS_OBJETIVO | VARCHAR2 | Y | Descricao do objetivo do problema |
| 4 | SN_ATIVO | VARCHAR2 | N | Status do objetivo do problema |
| 5 | LO_INFORMACAO | CLOB | Y | Descricao da informacao do objetivo do problema |
| 6 | CD_ELSEVIER | VARCHAR2 | Y | Codigo chave da Elsevier |
| 7 | DT_INTEGRA | DATE | Y | Data que o objetivo do problema foi integrado |
| 8 | CD_SEQ_INTEGRA | NUMBER | Y | Sequence do registro integrado |

---

## DBAMV.PL_CUID_PROB_OBJET_ATV
> tabela que armazena os objetivos dos problemas ativos dos planos de cuidados da Elsevier

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PL_CUID_PROB_OBJET_ATV | NUMBER | N | Cï¿½digo sequencial do registro |
| 2 | CD_PL_CUID_PROB_ATV | NUMBER | N | Codigo chave da pl_cuid_prob_atv |
| 3 | CD_PL_CUID_PROB_OBJET | NUMBER | N | Codigo chave da pl_cuid_prob_objet |
| 4 | SN_ATIVO | VARCHAR2 | N | Status do objetivo do problema do plano |
| 5 | DT_REGISTRO | DATE | Y | Data de registro do objetivo do problema do plano |
| 6 | CD_USUARIO | VARCHAR2 | Y | Cï¿½digo do usuï¿½rio |
| 7 | DT_DESATIVACAO | DATE | Y | Data de desativaï¿½ï¿½o do objetivo do problema do plano |
| 8 | CD_USUARIO_DESATIVACAO | VARCHAR2 | Y | Cï¿½digo do usuï¿½rio que desativou o objetivo do problema do plano |

---

## DBAMV.PL_CUID_PROB_OBJET_ITEM
> Tabela que armazena os itens dos objetivos dos problemas dos planos de cuidados da Elsevier

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PL_CUID_PROB_OBJET_ITEM | NUMBER | N | Código sequencial do registro |
| 2 | CD_PL_CUID_PROB_OBJET | NUMBER | N | Código chave da pl_cuid_prob_objet |
| 3 | SN_ATIVO | VARCHAR2 | N | Status do item do objetivo do problema |
| 4 | DS_OBSERVACAO | VARCHAR2 | Y | Observação do item do objetivo do problema |
| 5 | DT_INTEGRA | DATE | Y | Data que o item do objeitivo do problema foi integrado |
| 6 | CD_SEQ_INTEGRA | NUMBER | Y | Sequence do registro integrado |
| 7 | CD_ELSEVIER | VARCHAR2 | Y | Codigo chave da Elsevier |
| 8 | NR_VALOR | NUMBER | Y |  |

---

## DBAMV.PL_CUID_SNOMED
> Tabela que armazena os protocolo snomed do planos de cuidados da Elsevier

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PL_CUID_SNOMED | NUMBER | N | Código sequencial do registro |
| 2 | CD_SNOMEDCT | VARCHAR2 | Y | Numero do snomed |
| 3 | CD_PLANO_CUIDADO | NUMBER | N | Codigo do plano de cuidado |
| 4 | DT_INTEGRA | DATE | Y | Data que o plano foi integrado |
| 5 | CD_SEQ_INTEGRA | NUMBER | Y | Sequence do registro integrado |

---

## DBAMV.PW_ACAO_COPIA_ITEM_PRESCRICAO
> Representa os itens existentes na(s) prescrição(ões) copiada(s)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ACAO_COPIA_ITEM_PRESCRICAO | NUMBER | N | Chave primária da tabela |
| 2 | CD_ACAO_COPIA_PRESCRICAO | NUMBER | N | Código da ação de cópia no qual o item está contido |
| 3 | CD_PRE_MED_ORIGEM | NUMBER | N | Código da prescrição de origem |
| 4 | CD_PRE_MED_DESTINO | NUMBER | N | Código da prescrição de destino |
| 5 | CD_ITPRE_MED_ORIGEM | NUMBER | N | Código do item de prescrição a ser copiado |
| 6 | CD_ITPRE_MED_DESTINO | NUMBER | Y | Código do item de prescrição criado após a cópia |
| 7 | SN_COPIADO | VARCHAR2 | N | Indica se o item de prescrição foi copiado |

---

## DBAMV.PW_ACAO_COPIA_PRESCRICAO
> Representa uma ação de cópia de uma ou mais prescrições da mesma data de referência

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ACAO_COPIA_PRESCRICAO | NUMBER | N | Chave primária da tabela |
| 2 | CD_USUARIO | VARCHAR2 | N | Usuário que realizou a cópia |
| 3 | DT_REFERENCIA | DATE | N | Data de referência da(s) prescrição(ões) copiada(s) |
| 4 | DT_REALIZACAO | DATE | N | Data de realização da cópia |
| 5 | CD_PRE_MED_DESTINO | NUMBER | N | Código da prescrição de destino |

---

## DBAMV.PW_ACPMT_PACIENTE_ONCO
> Tabela que armazena as informações do acompanhamento oncologico do paciente

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ACPMT_PACIENTE_ONCO | NUMBER | N | Chave primaria |
| 2 | DH_CADASTRO | TIMESTAMP(6) | N | Data do cadastro |
| 3 | CD_PACIENTE | NUMBER | N | Código do paciente |
| 4 | CLASSIFICACAO_PACIENTE | VARCHAR2 | N | Classificação do paciente, se Oncologico ou Suspeita |
| 5 | DT_CLASSIFICACAO_PACIENTE | TIMESTAMP(6) | N | Data que foi informado a classificação do paciente |
| 6 | CD_PRESTADOR | NUMBER | N | Prestador que incluiu a informação |
| 7 | DT_IMUNO_HISTOQUIMICA | TIMESTAMP(6) | Y | Data do imuno-histoquimico |
| 8 | DT_HISTOPATOLOGICO | TIMESTAMP(6) | Y | Data do histopatologico |
| 9 | DH_PRIMEIRO_TRATAMENTO | TIMESTAMP(6) | Y | Data do primeiro tratamento |
| 10 | DH_OBITO | TIMESTAMP(6) | Y | Data do obito do paciente |
| 11 | SN_ATIVO | VARCHAR2 | N | Indica se o acompanhamento esta ativo ou não |

---

## DBAMV.PW_ACPMT_PACIENTE_TRATAMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ACPMT_PACIENTE_TRATAMENTO | NUMBER | N | Chave Prim?ria |
| 2 | CD_ACPMT_PACIENTE_ONCO | NUMBER | N | Código do acompanhamento oncológico |
| 3 | CD_DOCUMENTO_CLINICO_ORIGEM | NUMBER | N | Código do documento clínico no qual o tratamento foi adicionado |
| 4 | CD_TRATAMENTO | NUMBER | Y | Codigo do Tratamento |
| 5 | CD_CIRURGIA | NUMBER | Y | Codigo da cirurgia |
| 6 | TIPO_TRATAMENTO | VARCHAR2 | N | Tipo de Tratamento |
| 7 | CD_PESQUISA_CIENTIFICA | NUMBER | Y | Codigo da Pesquisa Cientifica |
| 8 | DS_LOCAL_TRATAMENTO | VARCHAR2 | N | Descricao do Local do Tratamento |
| 9 | DS_STATUS | VARCHAR2 | N | Descricao do status do tratamento do paciente oncologico |
| 10 | DH_INICIO | TIMESTAMP(6) | N | Data de inicio do tratamento |
| 11 | DH_FIM | TIMESTAMP(6) | Y | Data de finalizacao do tratamento |
| 12 | DS_OBSERVACAO | VARCHAR2 | Y | Observacoes do tratamento |
| 13 | DH_CRIACAO | TIMESTAMP(6) | Y | Data e hora da criacao do tratamento |
| 14 | CD_PRESTADOR | NUMBER | N | Prestador que realizou o cadastro do tratamento |
| 15 | NR_SESSOES | NUMBER | Y | Numero de sessoes para o caso de radioterapia |

---

## DBAMV.PW_AGENDA_DOMICILIAR
> Tabela de Agenda de Assistência Domiciliar

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AGENDA_DOMICILIAR | NUMBER | N | Código da agenda |
| 2 | DT_AGENDA | DATE | N | Data da agenda |
| 3 | CD_PRESTADOR | NUMBER | N | Código do prestador associado à agenda |
| 4 | CD_ORIGEM | NUMBER | N | Código da origem associada à agenda |
| 5 | CD_ESCALA_DOMICILIAR | NUMBER | N | Código da escala escolhida para a agenda |
| 6 | QT_MARCADOS | NUMBER | Y | Quantidade de atendimentos agendados |
| 7 | QTD_ATENDIMENTOS | NUMBER | N | Quantidade de atendimentos da agenda |
| 8 | SN_ATIVO | VARCHAR2 | N | Informa se a agenda está ativa ou não |
| 9 | SN_FERIADO | VARCHAR2 | N | Informa se o dia da agenda é feriado ou não |
| 10 | SN_PERMITE_ATEND_EXTRA | VARCHAR2 | N | Informa se o dia da agenda é feriado ou não |
| 11 | CD_USUARIO_GERACAO | VARCHAR2 | N | Nome do usuário que gerou a agenda |
| 12 | DT_GERACAO | DATE | N | Data da geração da agenda |
| 13 | CD_USUARIO_ALTERACAO | VARCHAR2 | Y | Nome do último usuário a alterar a agenda |
| 14 | DT_ALTERACAO | DATE | Y | Data da alteração da agenda |
| 15 | CD_MULTI_EMPRESA | NUMBER | N | Código da multi-empresa |

---

## DBAMV.PW_AGE_AGENDA_POR_RECURSO
> Agendas por recurso, para o prestador logado

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | PAR_CD_ATENDIMENTO | NUMBER | Y |  |
| 2 | PAR_CD_PACIENTE | NUMBER | Y |  |
| 3 | PAR_SN_PENDENTE | VARCHAR2 | Y |  |
| 4 | PAR_STATUS | VARCHAR2 | Y |  |
| 5 | PAR_CD_SENHA | VARCHAR2 | Y |  |
| 6 | PAR_HORA_INICIO | DATE | N |  |
| 7 | PAR_HORA_FIM | DATE | Y |  |
| 8 | PAR_NM_AGENDA | VARCHAR2 | Y |  |
| 9 | PAR_DT_AGENDA | DATE | N |  |
| 10 | PAR_NM_TITULO | VARCHAR2 | Y |  |
| 11 | DS_ITEM | VARCHAR2 | N |  |
| 12 | TRATAMENTO | VARCHAR2 | Y |  |
| 13 | DHCHEGADA | VARCHAR2 | Y |  |
| 14 | NM_PRESTADOR | VARCHAR2 | Y |  |
| 15 | DS_TIP_MAR | VARCHAR2 | Y |  |
| 16 | DSOBSERVACAOGERAL | VARCHAR2 | Y |  |
| 17 | PAR_CD_SETOR | NUMBER | N |  |

---

## DBAMV.PW_AGE_BLOCO_CIRURGICO
> Bloco Cirurgico

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | PAR_CD_ATENDIMENTO | NUMBER | Y |  |
| 2 | PAR_CD_PACIENTE | NUMBER | Y |  |
| 3 | PAR_SN_PENDENTE | VARCHAR2 | Y |  |
| 4 | PAR_STATUS | VARCHAR2 | Y |  |
| 5 | PAR_HORA_INICIO | DATE | N |  |
| 6 | PAR_HORA_FIM | DATE | N |  |
| 7 | PAR_NM_AGENDA | VARCHAR2 | N |  |
| 8 | PAR_DT_AGENDA | DATE | N |  |
| 9 | PAR_DT_AGENDA_FIM | DATE | N |  |
| 10 | PAR_NM_TITULO | VARCHAR2 | Y |  |
| 11 | EXT_01_CIRURGIAO | VARCHAR2 | Y |  |
| 12 | EXT_02_CIRURGIA | VARCHAR2 | Y |  |
| 13 | EXT_03_AVISO_CIRURGIA | VARCHAR2 | Y |  |

---

## DBAMV.PW_AGE_BLOCO_CIRURGICO_ES_CL
> Pabellón Quirúrgico

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | PAR_CD_ATENDIMENTO | NUMBER | Y |  |
| 2 | PAR_CD_PACIENTE | NUMBER | Y |  |
| 3 | PAR_SN_PENDENTE | VARCHAR2 | Y |  |
| 4 | PAR_STATUS | VARCHAR2 | Y |  |
| 5 | PAR_HORA_INICIO | DATE | N |  |
| 6 | PAR_HORA_FIM | DATE | N |  |
| 7 | PAR_NM_AGENDA | VARCHAR2 | N |  |
| 8 | PAR_DT_AGENDA | DATE | N |  |
| 9 | PAR_DT_AGENDA_FIM | DATE | N |  |
| 10 | PAR_NM_TITULO | VARCHAR2 | Y |  |
| 11 | EXT_01_CIRURGIAO | VARCHAR2 | Y |  |
| 12 | EXT_02_CIRURGIA | VARCHAR2 | Y |  |
| 13 | EXT_03_AVISO_CIRURGIA | VARCHAR2 | Y |  |

---

## DBAMV.PW_AGE_BLOCO_CIRURGICO_PREST
> Agenda de Cirurgia para o prestador logado

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | PAR_CD_ATENDIMENTO | NUMBER | Y |  |
| 2 | PAR_CD_PACIENTE | NUMBER | Y |  |
| 3 | PAR_SN_PENDENTE | VARCHAR2 | Y |  |
| 4 | PAR_STATUS | VARCHAR2 | Y |  |
| 5 | PAR_HORA_INICIO | DATE | N |  |
| 6 | PAR_HORA_FIM | DATE | N |  |
| 7 | PAR_NM_AGENDA | VARCHAR2 | N |  |
| 8 | PAR_DT_AGENDA | DATE | N |  |
| 9 | PAR_DT_AGENDA_FIM | DATE | N |  |
| 10 | PAR_NM_TITULO | VARCHAR2 | Y |  |
| 11 | EXT_01_CIRURGIAO | VARCHAR2 | Y |  |
| 12 | EXT_02_CIRURGIA | VARCHAR2 | Y |  |
| 13 | EXT_03_AVISO_CIRURGIA | VARCHAR2 | Y |  |

---

## DBAMV.PW_AGE_SESSAO_QT
> Sessão de QT (Beta)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | PAR_CD_ATENDIMENTO | NUMBER | Y |  |
| 2 | PAR_CD_PACIENTE | NUMBER | Y |  |
| 3 | PAR_SN_PENDENTE | VARCHAR2 | Y |  |
| 4 | PAR_STATUS | VARCHAR2 | Y |  |
| 5 | PAR_CD_SENHA | VARCHAR2 | Y |  |
| 6 | PAR_HORA_INICIO | DATE | N |  |
| 7 | PAR_HORA_FIM | DATE | Y |  |
| 8 | PAR_NM_AGENDA | VARCHAR2 | Y |  |
| 9 | PAR_DT_AGENDA | DATE | N |  |
| 10 | PAR_NM_TITULO | VARCHAR2 | Y |  |
| 11 | DS_ITEM | VARCHAR2 | N |  |
| 12 | TRATAMENTO | VARCHAR2 | Y |  |
| 13 | DHCHEGADA | VARCHAR2 | Y |  |
| 14 | NM_PRESTADOR | VARCHAR2 | Y |  |
| 15 | DS_TIP_MAR | VARCHAR2 | Y |  |
| 16 | DSOBSERVACAOGERAL | VARCHAR2 | Y |  |
| 17 | TEM_PRESCRICAO | VARCHAR2 | Y |  |

---

## DBAMV.PW_AGRUPADOR_HISTORICO
> Tabela para armazenar o domínio de agrupadores para o histórico de documentos de Telas TEMAS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AGRUPADOR_HISTORICO | NUMBER | N | Chave identificadora do agrupador |
| 2 | NM_AGRUPADOR_HISTORICO | VARCHAR2 | N | Nome identificador do agrupador |
| 3 | DS_AGRUPADOR_HISTORICO | VARCHAR2 | N | Descrição detalhada do agrupador |

---

## DBAMV.PW_AGRUPADOR_HIST_PAGU_OBJ
> Tabela para armazenar o domínio de agrupadores para o histórico de documentos de Telas TEMAS por objeto

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AGRUPADOR_HIST_PAGU_OBJ | NUMBER | N | Chave identificadora do registro |
| 2 | CD_OBJETO | NUMBER | N | Chave relacional do objeto |
| 3 | CD_AGRUPADOR_HISTORICO | NUMBER | N | Chave relacional do dominio de agrupadores |

---

## DBAMV.PW_AGRUPADOR_HIST_TIPO_DOCUM
> Tabela para armazenar o domínio de agrupadores para o histórico de documentos de Telas TEMAS por tipo de documento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AGRUP_HIST_DOCS_TIPO_DOC | NUMBER | N | Chave identificadora do registro |
| 2 | CD_TIPO_DOCUMENTO | NUMBER | N | Chave relacional do tipo de documento |
| 3 | CD_AGRUPADOR_HISTORICO | NUMBER | N | Chave relacional do dominio de agrupadores |

---

## DBAMV.PW_ALERGIA_INFORMACOES
> Tabela para armazenar as informações complementares da alergia

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DOCUMENTO_CLINICO | NUMBER | N | Código do documento clínico da alergia |
| 2 | SN_DESCONHECE_ALERGIA | VARCHAR2 | Y | Se não sabe se o paciente tem alergia |
| 3 | SN_SEM_ALERGIA | VARCHAR2 | Y | Se o paciente não tem alergia |
| 4 | CD_PACIENTE | NUMBER | Y |  |
| 5 | DH_CRIACAO | DATE | Y | Data/hora da criacao do registro |
| 6 | CD_USUARIO_CRIACAO | VARCHAR2 | Y | Codigo do usuario que criou o registro |

---

## DBAMV.PW_ALERGIA_PAC

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROBLEMA | NUMBER | N | Codigo da alergia |
| 2 | CD_SUBSTANCIA | NUMBER | Y | Código da substância |
| 3 | CD_ALIMENTO | NUMBER | Y | Código do alimento |
| 4 | DS_OBSERVACAO | VARCHAR2 | N | Observação da alergia para o paciente |
| 5 | CD_USUARIO_CRIACAO | VARCHAR2 | N | Código do usuário que criou o registro |
| 6 | CD_PRESTADOR_CRIACAO | NUMBER | N | Código do prestador que criou o registro |
| 7 | CD_USUARIO_INATIVACAO | VARCHAR2 | Y | código do usuário que inativou o registro |
| 8 | CD_PRESTADOR_INATIVACAO | NUMBER | Y | código do prestador que inativou o registro |
| 9 | TP_ALERGIA | VARCHAR2 | N | Tipo da alergia, O = outros, A = Alimento, S = (Substancia) Medicamento |
| 10 | TP_SEVERIDADE | VARCHAR2 | Y | Tipo da severidade, G = Grave, M = Moderada, L = Leve, D = Desconhecida |
| 11 | DS_OUTROS | VARCHAR2 | Y | Guarda a descrição da alergia quando o tipo for igual a Outros |
| 12 | DS_ALIMENTO_AVULSO | VARCHAR2 | Y |  |

---

## DBAMV.PW_ALERGIA_PACIENTE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_HIST_SUBS_PAC | NUMBER | N | CÓDIGO DO HISTÓRICO DA SUBSTANCIA DO PACIENTE. |
| 2 | CD_DOCUMENTO_CLINICO | NUMBER | N | CÓDIGO DO DOCUMENTO CLÍNICO QUE CRIOU O REGISTRO |

---

## DBAMV.PW_ALERGIA_PAC_VER

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ALERGIA_PAC_VER | NUMBER | N | Codigo da alergia |
| 2 | CD_DOCUMENTO_CLINICO | NUMBER | N | Codigo do documento clinico da versao |
| 3 | CD_PROBLEMA | NUMBER | N | Codigo da alergia |
| 4 | CD_SUBSTANCIA | NUMBER | Y | Cï¿½digo da substï¿½ncia |
| 5 | CD_ALIMENTO | NUMBER | Y | Cï¿½digo do alimento |
| 6 | DS_OBSERVACAO | VARCHAR2 | N | Observaï¿½ï¿½o da alergia para o paciente |
| 7 | CD_USUARIO_CRIACAO | VARCHAR2 | N | Cï¿½digo do usuï¿½rio que criou o registro |
| 8 | CD_PRESTADOR_CRIACAO | NUMBER | N | Cï¿½digo do prestador que criou o registro |
| 9 | CD_USUARIO_INATIVACAO | VARCHAR2 | Y | cï¿½digo do usuï¿½rio que inativou o registro |
| 10 | CD_PRESTADOR_INATIVACAO | NUMBER | Y | cï¿½digo do prestador que inativou o registro |
| 11 | TP_ALERGIA | VARCHAR2 | N | Tipo da alergia, O = outros, A = Alimento, S = (Substancia) Medicamento |
| 12 | TP_SEVERIDADE | VARCHAR2 | Y | Tipo da severidade, G = Grave, M = Moderada, L = Leve, D = Desconhecida |
| 13 | DS_OUTROS | VARCHAR2 | Y | Guarda a descriï¿½ï¿½o da alergia quando o tipo for igual a Outros |
| 14 | DS_ALIMENTO_AVULSO | VARCHAR2 | Y |  |

---

## DBAMV.PW_ALERTA_PROTOCOLO
> Tabela que armazena as características que vão alerta sobre um protocolo.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ALERTA_PROTOCOLO | NUMBER | N | Código sequencial identificador. |
| 2 | DS_ALERTA_PROTOCOLO | VARCHAR2 | N | Descrição do Alerta ou Protocolo em si. |
| 3 | DS_MENSAGEM | VARCHAR2 | N | Mensagem que será disparada ao usuário quando o paciente estiver compatível com o protocolo. |
| 4 | LO_PDF_FLUXO | BLOB | Y | PDF anexado com o desenho do fluxo. |
| 5 | SN_DISPARA_AFERICAO | VARCHAR2 | N | Indica se vai disparar no momento de finalizar uma aferição. |
| 6 | SN_DISPARA_DOCUMENTO | VARCHAR2 | N | Indica se vai disparar no momento de finalizar um documento. |
| 7 | SN_DISPARA_LAUDO | VARCHAR2 | N | Indica se vai disparar no momento de finalizar um laudo. |
| 8 | SN_DISPARA_DIAGNOSTICO | VARCHAR2 | N | Indica se vai disparar no momento de finalizar um diagnostico. |
| 9 | SN_DISPARA_JOB | VARCHAR2 | N | Indica se vai disparar auomaticamente de forma programada. |
| 10 | DS_FORMULA | VARCHAR2 | Y | Operação lógica dos critérios do protocolo (PW_CRITERIO_PROTOCOLO) que vão caracterizar a compati... |
| 11 | SN_DISPARA_MOV_INT | VARCHAR2 | Y | Indica se vai disparar no momento de transferir o paciente para leito de UTI. |
| 12 | DS_RGB_HEXADECIMAL | VARCHAR2 | Y | Rgb hexadecimal da cor usada para o protocolo |
| 13 | DS_SIGLA_PROTOCOLO | VARCHAR2 | Y | Sigla do Protocolo |
| 14 | SN_ATIVA_ICONE_LISTA_PACIENTE | VARCHAR2 | Y | Flag para ativar a exibição do ícone na lista de pacientes |
| 15 | CD_ORDEM_PROTOCOLO | NUMBER | Y | Código da ordem do protocolo - classificação de criticidade |
| 16 | CD_GRUPO_CRITERIO_ENTRADA | NUMBER | Y | Grupo de critérios para entrada nio Protocolo |
| 17 | SN_ATIVO | VARCHAR2 | N | Configuração para Ativar e Desativar o Protocolo |
| 18 | SN_REMOVE_STATUS_ALTA | VARCHAR2 | N | Configuração para remover o status na alta do paciente |
| 19 | SN_DISPARA_PRESCRICAO | VARCHAR2 | N | Gatilho para disparar o processamento de protocolos por prescrição |
| 20 | SN_DISPARA_HIST_ENF | VARCHAR2 | N | Gatilho para disparar o processamento de protocolos por hirtórico de enfermagem |
| 21 | SN_DISPARA_AVALIA_SCORE | CHAR | Y |  |

---

## DBAMV.PW_ALERTA_PROTOCOLO_SETOR
> Tabela responsável por gauardar as configurações dos setores que devem alertar ou não o alerta de protocolo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ALERTA_PROTOCOLO_SETOR | NUMBER | N | Código sequencial identificador do registro |
| 2 | CD_ALERTA_PROTOCOLO | NUMBER | N | Código do alerta de protocolo que a configuração se referencia (FK) |
| 3 | CD_SETOR | NUMBER | N | Código do setor que a configuração se referencia (FK) |
| 4 | SN_ALERTAR | VARCHAR2 | N | Flag que indica se o setor configurado irá alertar ou não |

---

## DBAMV.PW_ALERT_PROTO_PREMED_TP_PREST
> TABELA DE RELACIONAMENTO ENTRE PW_ALERTA_PROTOCOLO E PREMED_TIP_FRE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ALERT_PROTO_PREMED_TP_PREST | NUMBER | N | CHAVE PRIMARIA DA TABELA |
| 2 | CD_ALERTA_PROTOCOLO | NUMBER | N | REFERENCIA A TABELA PW_ALERTA_PROTOCOLO |
| 3 | CD_PREMED_TIP_PRESTA | NUMBER | N | REFERENCIA A TABELA PREMED_TIP_FRE |

---

## DBAMV.PW_ALIMENTO
> tabela responsável por cadastrar alimentos. Utilizada ao se informar uma alergia a alimento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ALIMENTO | NUMBER | N | Código do alimento |
| 2 | DS_ALIMENTO | VARCHAR2 | N | Descrição do alimento |
| 3 | SN_ATIVO | VARCHAR2 | N | S(Sim) ou N(não) informando se o registro está ativo |

---

## DBAMV.PW_ANESTESIA_FICHA
> Armazena as informac?es do tipo de anestesia que ser?o adicionadas na ficha anestesica

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ANESTESIA_FICHA | NUMBER | N | Indica o codigo dos registros da tabela de anestesia adicionadas na ficha(pk). |
| 2 | CD_FICHA_ANESTESICA | NUMBER | Y | Codigo da tabela principal referente a ficha anestesica(fk). |
| 3 | CD_TIP_ANEST | NUMBER | Y | Codigo do tipo de anestesia (fk). |

---

## DBAMV.PW_ANESTESISTA_FICHA
> Armazena as informac?es do tipo de anestesia que ser?o adicionadas na ficha anestesica

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ANESTESISTA_FICHA | NUMBER | N | Indica o codigo dos registros da tabela de anestesistas adicionadas na ficha(pk). |
| 2 | CD_PRESTADOR | NUMBER | N | Codigo do prestador anestesista(fk). |
| 3 | DS_OBSERVACAO | VARCHAR2 | Y | Descric?o de observac?es referente ao registro de anestesistas. |
| 4 | CD_FICHA_ANESTESICA | NUMBER | Y | Codigo da tabela principal referente a ficha anestesica(fk). |

---

## DBAMV.PW_ANTIBIOTICO_DOADOR
> Aramazena os antibioticos e suas respectivas datas de inicio (data em que o paciente iniciou o usuo do antibiotico), para determinada ficha de doador (pw_cadastro_doador)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ANTIBIOTICO_DOADOR | NUMBER | N | O codigo identificador (pk) |
| 2 | DS_ANTIBIOTICO | VARCHAR2 | N | A descric?o do antibiotico |
| 3 | DT_INICIO_ANTIBIOTICO | DATE | N | A data em que o paciente iniciou o uso do antibiotico |
| 4 | CD_CADASTRO_DOADOR | NUMBER | N | A ficha de doador (pw_cadastro_doador) a qual este registro pertence (e filho) |

---

## DBAMV.PW_AREA_DOMICILIAR
> Tabela de Cadastro de Área Domiciliar

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AREA_DOMICILIAR | NUMBER | N | Código da Área Domiciliar |
| 2 | DS_AREA_DOMICILIAR | VARCHAR2 | N | Descrição da Área Domiciliar |
| 3 | SN_ATIVO | VARCHAR2 | N | Indicador de Situação Ativo. S=Sim, N=Não |
| 4 | CD_USUARIO_INCLUSAO | VARCHAR2 | N | Código do usuário de inclusão |
| 5 | DT_CADASTRO | DATE | N | Data do cadastro da Área Domiciliar |
| 6 | CD_ORIGEM | NUMBER | N | Origem da Área Domiciliar |

---

## DBAMV.PW_AREA_PRESTADOR_DOMICILIAR
> Tabela de Cadastro de Área Prestador Domiciliar

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AREA_DOMICILIAR | NUMBER | N | Código da Área Domiciliar |
| 2 | CD_PRESTADOR | NUMBER | N | Código do prestador da Área Domiciliar |
| 3 | CD_USUARIO_INCLUSAO | VARCHAR2 | N | Código do usuário de inclusão |
| 4 | DT_CADASTRO | DATE | N | Data do cadastro da Área Prestador Domiciliar |
| 5 | NR_PRIORIDADE | NUMBER | N | Prioridade da Área Prestador Domiciliar |

---

## DBAMV.PW_ASSINANTE
> TABELA PARA LISTAR OS ASSINANTES CADASTRADOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ASSINANTE | NUMBER | N | Identificador das pessoas habilitadas para assinatura digital |
| 2 | NR_CPF_CNPJ | VARCHAR2 | N | CPF/CNPJ de quem esta sendo habilitado para assinatura digital |
| 3 | SN_ATIVO | VARCHAR2 | N | Se o assinante esta ativo para o hospital |

---

## DBAMV.PW_ASSOC_TIP_PRESC
> Tabela que tem uma relacao de heranca com a tabela DBAMV.PROBLEMA para formar uma associacao de eventos adversos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROBLEMA | NUMBER | N |  |

---

## DBAMV.PW_AUDITORIA_PRONTUARIO_VIP
> Tabela para armazenar o relacionamento prestadores e unidades de internação

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AUDITORIA_PRONTUARIO_VIP | NUMBER | N | Sequencial da auditoria de pronturio vip |
| 2 | TP_AUDITORIA_PRONTUARIO | VARCHAR2 | N | Tipo da ocorrência da auditoria. AUT - AUTORIZACAO, SOL - SOLICITAÇÃO DE ACESSO, ALT - ALTERACAO,... |
| 3 | TP_AUTORIZACAO | VARCHAR2 | Y | O tipo de autorização do prestador para o prontuário vip. Podendo ser (DIRETA, SENHA, JUSTIFICATI... |
| 4 | NM_MAQUINA | VARCHAR2 | N | Nome da máquina cliente |
| 5 | CD_USUARIO_AUDITORIA | VARCHAR2 | N | Código do usuário que gerou o registro de auditoria |
| 6 | DS_MODULO_AUDITORIA | VARCHAR2 | N | Nome descritivo do módulo que foi auditado |
| 7 | VL_AUDITORIA | VARCHAR2 | N | Identificador ou valor descritivo da ação que foi auditada |
| 8 | TZ_AUDITORIA_PRONTUARIO | TIMESTAMP(6) WITH TIME ZONE | Y | Data e hora com timezone da ocorrência do log de auditoria |
| 9 | NM_PERFIL_USUARIO | VARCHAR2 | Y | Papel ou perfil do usuário logado |
| 10 | CD_ATENDIMENTO | NUMBER | Y | Código do atendimento do registro |
| 11 | CD_PRODUTO | VARCHAR2 | Y | Produto utilizado pelo usuário que gerou a ocorrência do log de auditoria |
| 12 | NM_SERVIDOR | VARCHAR2 | Y | Nome do Servidor que atendeu a requisição do usuário |
| 13 | CD_MULTI_EMPRESA | VARCHAR2 | Y | Coluna que contém a empresa que criou o log de auditoria |

---

## DBAMV.PW_AUTENTICACAO_DOCUMENTO
> Tabela que armazena as assinaturas dos documentos de a???#o cl?-nica

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AUTENTICACAO_DOCUMENTO | NUMBER | N | Identificador da assinatura digital do documento. |
| 2 | CD_DOCUMENTO_AUTENTICADO | NUMBER | N | Identificador do documento de a???#o cl?-nica assinado digitalmente'Identificador do documento de... |
| 3 | NR_CPF_ASSINATURA | VARCHAR2 | Y | N??mero do CPF, com m?!scara, do propriet?!rio do certificado digital utilizado para assinar o do... |
| 4 | DH_ASSINATURA_DOCUMENTO | DATE | N | Instante da realiza???#o da assinatura do documento de a???#o cl?-nica |
| 5 | LO_ASSINATURA_DOCUMENTO | BLOB | N | Cont??m a assinatura digital do documento de a???#o cl?-nica |
| 6 | CD_ASSINANTE | NUMBER | Y | Identificador da pessoa que gerou a pendencia de assinatura do documento |

---

## DBAMV.PW_AUTORIZA_ONCO_PRESTADOR
> Tabela para armazenar quem tem permissão para alterar o paciente para oncológico (por prestador)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AUTORIZA_ONCO_PRESTADOR | NUMBER | N | ID - Sequencial do identificador |
| 2 | CD_AUTORIZA_ONCO_TIP_PRESTA | NUMBER | N | Código do cadastro de autorização por tipo de prestador |
| 3 | CD_PRESTADOR | NUMBER | N | Código do prestador |

---

## DBAMV.PW_AUTORIZA_ONCO_TIP_PRESTA
> Tabela para armazenar quem tem permissão para alterar o paciente para oncológico (Por tipo de prestador)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AUTORIZA_ONCO_TIP_PRESTA | NUMBER | N |  |
| 2 | CD_TIP_PRESTA | NUMBER | N | Código do tipo de prestador |

---

## DBAMV.PW_AUTORIZA_PENDENCIA_ASSINAT
> Armazena os status possíveis dos arquivos anexos ao prontuário

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AUTORIZA_PENDENCIA_ASSINAT | NUMBER | N | Código dos registros da tabela (pk). |
| 2 | CD_PRESTADOR | NUMBER | N | Código do prestador que foi autorizado a criar documento pendente |
| 3 | TZ_FIM_AUTORIZACAO | TIMESTAMP(6) | Y | Data fim da autorização |
| 4 | SN_ATIVO | VARCHAR2 | N | Indica se a autorização está ativa |
| 5 | CD_USUARIO_AUTORIZADOR | VARCHAR2 | N | Código do usuário autorizador |
| 6 | TZ_AUTORIZACAO | TIMESTAMP(6) | Y | Data da autorização |
| 7 | CD_USUARIO_DESATIVACAO | VARCHAR2 | Y | Código do usuário que desativou a autorização |
| 8 | TZ_DESATIVACAO | TIMESTAMP(6) | Y | Data de desativação da autorização |
| 9 | CD_MULTI_EMPRESA | NUMBER | N |  |

---

## DBAMV.PW_AVALIACAO_ITPRE_MED
> Tabela para armazenar os itens das avaliações farmacêuticas. Os valores aqui armazenados serão transformados nos itens válidos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AVALIACAO_ITPRE_MED | NUMBER | N | Chave primária da tabela |
| 2 | CD_AVALIACAO_PRE_MED | NUMBER | Y | Prescrição ao qual a avaliação faz referência |
| 3 | CD_ITPRE_MED | NUMBER | Y | Item de presrição ao qual a avaliação farmaceutica esta fazendo referência |
| 4 | CD_ITPRE_MED_SUBSTITUTO | NUMBER | Y | Item de presrição criado caso seja feita alguma alteração no item de prescrição que está sendo av... |
| 5 | DS_AVALIACAO_ITEM | VARCHAR2 | Y | Observação dada pela farmaceutica quando faz uma intervenção, no item prescrito, nem que seja ape... |
| 6 | CD_LIBERADOR_POR | NUMBER | Y |  |
| 7 | TP_STATUS | VARCHAR2 | Y | Situação do item em relação a avaliação farmaceutica |
| 8 | SN_SUBSTITUTO | VARCHAR2 | Y | Será atribuído o valor "S" caso o produto original tenha sido substituído pela farmacia |
| 9 | CD_ITPRE_MED_JUSTIFICATIVA | NUMBER | Y | Justificativa padrão usada para objeservação farmacêutica |
| 10 | SN_ITEM_HISTORICO | VARCHAR2 | Y | Campo que informa se um item da avaliação foi criado apartir do processo de reavaliação de prescr... |

---

## DBAMV.PW_AVALIACAO_ITPRE_MED_CONTROL
> Tabela responsável pelo controle de algumas informações dos itens avaliados pela avaliação farmacêutica

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AVALIACAO_ITPRE_MED_CONTROL | NUMBER | N | (PK) Código definidor do registro |
| 2 | CD_ITPRE_MED | NUMBER | N | (FK) Código do item de prescrição |
| 3 | SN_BLOQUEAR_SOLICITACAO_ESTOQ | VARCHAR2 | N | Coluna que indica se deve ser gerada a solicitação ao estoque do produto ao ser avaliado |

---

## DBAMV.PW_AVALIACAO_PRE_MED
> Tabela para armazenar as avaliações farmacêuticas

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AVALIACAO_PRE_MED | NUMBER | N | Código do item do alerta chave primaria |
| 2 | CD_PRE_MED | NUMBER | N | Código da prescrição medica avaliada |
| 3 | TP_AVALIACAO | VARCHAR2 | N | Tipo de geração da avaliação. Valores possíveis: AUT=>Automático; MAN=>Manual |
| 4 | CD_PRE_MED_SUBSTITUTA | NUMBER | Y | Código da prescrição medica criada, se necessário, após a avaliação |
| 5 | CD_DOCUMENTO_CLINICO | NUMBER | Y | Código do documento clinico criado para a avaliação |
| 6 | DS_AVALIACAO | VARCHAR2 | Y | Campo da descrição da avaliação por prescrição |
| 7 | CD_PRESTADOR_AUTORIZADOR | NUMBER | Y | Código do prestador autorizador da avaliação farmacêutica. |
| 8 | DS_ALERTA_PESO_PONDERAL | VARCHAR2 | Y | Campo de informação do alerta do peso ponderal do paciente |

---

## DBAMV.PW_BALANCO_HIDRICO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_BALANCO_HIDRICO | NUMBER | N | CHAVE PRIMARIA DA TABELA DBAMV.PW_BALANCO_HIDRICO |
| 2 | CD_SETOR | NUMBER | N | CODIGO DO SETOR |
| 3 | CD_ATENDIMENTO | NUMBER | N | CODIGO DO ATENDIMENTO |
| 4 | CD_PACIENTE | NUMBER | N | CODIGO DO PACIENTE |
| 5 | QT_TURNO | NUMBER | Y | QUANTIDADE DE TURNOS DO SETOR |
| 6 | DT_REFERENCIA | DATE | N | DATA DE REFERENCIA DO BALANCO HIDRICO |
| 7 | DH_CRIACAO | DATE | N | DATA DE CRIACAO DO REGISTRO |
| 8 | HR_FECHAMENTO | DATE | Y |  |
| 9 | SN_LANCAMENTO_POR_MINUTO | VARCHAR2 | N |  |
| 10 | NR_IDADE_PEDIATRIA | NUMBER | Y | LIMITE IDADE DO PACIENTE PARA SER CONSIDERADO CRIANCA |
| 11 | NR_IDADE_PACIENTE | NUMBER | Y | PESO DO PACIENTE NO MOMENTO QUE FOI FECHADO O BALANCO HIDRICO |
| 12 | QT_PESO | NUMBER | Y | PESO DO PACIENTE NO MOMENTO QUE FOI FECHADO O BALANCO HIDRICO |

---

## DBAMV.PW_BALANCO_HIDRICO_FECHAMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_BALANCO_HIDRICO_FECHAMENTO | NUMBER | N | CHAVE PRIMARIA DA TABELA DBAMV.PW_BALANCO_HIDRICO_FECHAMENTO |
| 2 | DH_REGISTRO | DATE | N | DATA QUE FOI CRIADO O REGISTRO. |
| 3 | DH_FECHAMENTO_INICIO | DATE | N | DATA INICIO QUE FOI REALIZADO O FECHAMENTO DO BALANCO. |
| 4 | DH_FECHAMENTO_FIM | DATE | N | DATA FIM QUE FOI REALIZADO O FECHAMENTO DO BALANCO. |
| 5 | TP_FECHAMENTO | VARCHAR2 | N | TIPO DO FECHAMENTO. SE PARCIAL(P) OU TOTAL(T) |
| 6 | DT_REFERENCIA | DATE | N | DATA DE REFERENCIA |
| 7 | CD_USUARIO | VARCHAR2 | N | CÓDIGO DO USUÁRIO |
| 8 | CD_DOCUMENTO_CLINICO | NUMBER | Y | CODIGO DO DOCUMENTO CLINICO |
| 9 | CD_BALANCO_HIDRICO | NUMBER | N | CODIGO DO BALANCO HIDRICO |
| 10 | QT_TOTAL | NUMBER | Y | QUANTIDADE DO TOTAL DOS LANCAMENTOS DE TOTOS OS ITENS |
| 11 | CD_PRESTADOR | NUMBER | Y | Código do prestador que fechou o balanço hídrico. |

---

## DBAMV.PW_BASE_LISTA_AMB_SETOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | PAR_CD_ATENDIMENTO | NUMBER | N |  |
| 2 | PAR_CD_PACIENTE | NUMBER | N |  |
| 3 | PAR_SN_PENDENTE | VARCHAR2 | Y |  |
| 4 | PAR_CD_PARMED | VARCHAR2 | Y |  |
| 5 | PAR_CD_SETOR | NUMBER | Y |  |
| 6 | PAR_CD_DOC_CLINICO | VARCHAR2 | Y |  |
| 7 | PAR_CD_TRIAGEM | NUMBER | Y |  |
| 8 | PAR_NM_PACIENTE | VARCHAR2 | Y |  |
| 9 | PAR_IDADE_PACIENTE | VARCHAR2 | Y |  |
| 10 | PAR_DT_NASCIMENTO | DATE | Y |  |
| 11 | PAR_TP_SEXO | VARCHAR2 | N |  |
| 12 | PAR_NM_MAE | VARCHAR2 | Y |  |
| 13 | PAR_SN_FAVORITO | VARCHAR2 | Y |  |
| 14 | PAR_NM_SETOR | VARCHAR2 | N |  |
| 15 | PAR_STATUS | VARCHAR2 | Y |  |
| 16 | Senha | VARCHAR2 | Y |  |
| 17 | PAR_CD_SENHA | VARCHAR2 | Y |  |
| 18 | Recepção | VARCHAR2 | Y |  |
| 19 | Sexo | VARCHAR2 | Y |  |
| 20 | Especialidade | VARCHAR2 | Y |  |
| 21 | Serviço | VARCHAR2 | Y |  |
| 22 | Recurso | VARCHAR2 | Y |  |
| 23 | Assistente | VARCHAR2 | N |  |
| 24 | Observação | VARCHAR2 | Y |  |
| 25 | TP_FUNCAO | VARCHAR2 | Y |  |
| 26 | DT_ALTA | DATE | Y |  |
| 27 | DH_ATENDIMENTO | DATE | Y |  |
| 28 | DH_AGENDAMENTO | DATE | Y |  |

---

## DBAMV.PW_BKP_BHF1974297

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_BALANCO_HIDRICO_FECHAMENTO | NUMBER | N |  |
| 2 | DH_REGISTRO | DATE | N |  |
| 3 | DH_FECHAMENTO_INICIO | DATE | N |  |
| 4 | DH_FECHAMENTO_FIM | DATE | N |  |
| 5 | TP_FECHAMENTO | VARCHAR2 | N |  |
| 6 | DT_REFERENCIA | DATE | N |  |
| 7 | CD_USUARIO | VARCHAR2 | N |  |
| 8 | CD_DOCUMENTO_CLINICO | NUMBER | Y |  |
| 9 | CD_BALANCO_HIDRICO | NUMBER | N |  |
| 10 | QT_TOTAL | NUMBER | Y |  |

---

## DBAMV.PW_BKP_IBHF1974297

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITBALANCO_HIDRICO_FECH | NUMBER | N |  |
| 2 | CD_TIP_PRESC | NUMBER | Y |  |
| 3 | QT_TIP_PRESC | NUMBER | Y |  |
| 4 | CD_BALANCO_HIDRICO_FECHAMENTO | NUMBER | N |  |

---

## DBAMV.PW_BLOCO
> Tabela para Bloco

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_BLOCO | NUMBER | N | Codigo Bloco |
| 2 | DS_BLOCO | VARCHAR2 | Y | Descric?o Bloco |
| 3 | SN_ATIVO | VARCHAR2 | Y | Se o Bloco esta Ativo |
| 4 | CD_VERSAO_EDICAO | NUMBER | Y | Codigo Vers?o Edic?o |
| 5 | CD_VERSAO_ATUAL | NUMBER | Y | Codigo Vers?o Atual |

---

## DBAMV.PW_BLOCO_ANAMNESE
> Tabela que armazena ao bloco anamnese

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_BLOCO_ANAMNESE | NUMBER | N | codigo do bloco anamnese |
| 2 | DS_BLOCO_ANAMNESE | VARCHAR2 | N | descric?o do bloco anamnese |
| 3 | CD_SEGMENTO_ANAMNESE | NUMBER | N | codigo do segmento anamnese |

---

## DBAMV.PW_BLOCO_EXAME_FISICO
> Tabela para Bloco Exame Fisico

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_BLOCO | NUMBER | N | Codigo Bloco Exame Fisico |

---

## DBAMV.PW_BLOCO_ITEM_ANAMNESE
> Tabela que armazena ao bloco item anamnese

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_BLOCO_ANAMNESE | NUMBER | N | codigo do bloco anamnese |
| 2 | CD_PERGUNTA_ANAMNESE | NUMBER | N | codigo da pergunta anamnese |
| 3 | NR_ORDEM | NUMBER | N | numero da ordem |

---

## DBAMV.PW_CADASTRO_DOADOR
> Tabela para registro do cadastro do doador

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CADASTRO_DOADOR | NUMBER | N | Codigo do Doador |
| 2 | CD_PACIENTE | NUMBER | N | Codigo do Paciente Doador |
| 3 | CD_ATENDIMENTO | NUMBER | N | Codigo do atendimento do Doador |
| 4 | DT_CADASTRO | DATE | N | Data do Cadastro |
| 5 | CD_USUARIO | VARCHAR2 | N | Nome do usuario que esta registrando o cadastro |
| 6 | DH_CAPTACAO | DATE | N | Data e hora da captac?o do org?o a ser doado |
| 7 | CD_CIDADE_CAPTACAO | NUMBER | N | Cidade da Captac?o do org?o a ser doado |
| 8 | DS_HOSPITAL_CAPTACAO | VARCHAR2 | N | Hospital de Captac?o do org?o |
| 9 | DS_LOCOMOCAO | VARCHAR2 | N | Forma de locomoc?o para captac?o do org?o |
| 10 | DH_INTERNACAO | DATE | N | Data e hora da internac?o do doador |
| 11 | DS_CAUSA | VARCHAR2 | Y | Causa da internac?o do doador |
| 12 | DS_CAUSA_MORTE | VARCHAR2 | Y | Causa da Morte do Doador |
| 13 | DH_DIAG_MORTE_ENCEFALICA | DATE | Y | Data e Hora da morte encefalica do doador |
| 14 | QT_DIAS_CTI | NUMBER | N | Quantidade de dias de CTI que o doador passou |
| 15 | CD_EQUIPE_MEDICA | NUMBER | Y | Equipe medica de captac?o do org?o a ser doado |
| 16 | DS_DIFERENCIAL | VARCHAR2 | Y | Diferencial a ser informado do doador |
| 17 | DH_INICIO_PROCEDIMENTO | DATE | N | Inicio do procedimento de captac?o |
| 18 | DH_FIM_PROCEDIMENTO | DATE | N |  |
| 19 | DH_CLAMPAGEM | DATE | N | Data e Hora da Clampagem do org?o |
| 20 | TP_PERFUSAO | VARCHAR2 | N | Tipo de perfus?o para captac?o do org?o AOT=Aorta, POR=Veia Porta,NEN=Nenhuma |
| 21 | VL_PESO | NUMBER | N | Peso do paciente no momento da captac?o |
| 22 | VL_ALT | NUMBER | N | Altura do paciente no momento da captac?o |
| 23 | VL_PA | NUMBER | N | Press?o arterial no momento da captac?o |
| 24 | VL_FC | NUMBER | N | Frequencia Cardiaca no momento da captac?o |
| 25 | VL_SAT | NUMBER | N | Saturac?o no momento da Captac?o |
| 26 | DS_CIRURGIAS | VARCHAR2 | Y | Cirurgias efetuadas no doador |
| 27 | DS_NUTRICAO | VARCHAR2 | Y | Nutric?es do doador |
| 28 | DS_PCR | VARCHAR2 | Y | Press?o Cardio Respiratoria do doador |
| 29 | DS_AMINAS | VARCHAR2 | Y | Aminas administrado para o doador |
| 30 | DS_ANTIBIOTICOS | VARCHAR2 | Y | Antibioticos administrados para o doador |
| 31 | DT_INICIO_ANTIB | DATE | Y | Data da administrac?o do antibiotico para o doador |
| 32 | CD_DOCUMENTO_CLINICO | NUMBER | N | Codigo do Documento Clinico referente ao cadastro |
| 33 | SN_FECHADO | VARCHAR2 | N | Situac?o do cadastro |
| 34 | CD_PRESTADOR | NUMBER | Y | Codigo do prestador que esta fazendo o registro |

---

## DBAMV.PW_CAD_FUNCAO_MEDICA
> Tabela cadastrar as funções médicas

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CAD_FUNCAO_MEDICA | NUMBER | N | Código da função médica |
| 2 | DS_CAD_FUNCAO_MEDICA | VARCHAR2 | Y | Descrição da função médica |
| 3 | SN_ATIVO | VARCHAR2 | Y | Ativo S ou N |

---

## DBAMV.PW_CAD_FUNCAO_MEDICA_EMPRESA
> Tabela para armazenar as empresas vinculadas a função médica

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CAD_FUNCAO_MEDICA_EMPRESA | NUMBER | N | Chave do registro da empresa vinculada a função médica |
| 2 | CD_CAD_FUNCAO_MEDICA | NUMBER | N | Chave relacional da função médica |
| 3 | CD_MULTI_EMPRESA | NUMBER | Y | Chave relacional tabela de empresas |
| 4 | CD_SETOR | NUMBER | Y | Chave relacional tabela de setor |
| 5 | CD_ID_OPERADORA | NUMBER | Y | Código do plantão da operadora |

---

## DBAMV.PW_CAMPO_PK_TABELA_ACAO
> Tabela que armazena os campos que fazem parte da chave de identificac?o dos documentos de ac?o a serem assinados

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CAMPO_PK_TABELA_ACAO | NUMBER | N | Identificador dos campos que determinam uma ac?o a ser assinada digitalmente |
| 2 | NM_CAMPO_PK_TABELA_ACAO | VARCHAR2 | N | Nome do campo da ac?o que sera assinada digitalmente |
| 3 | CD_TIPO_DOCUMENTO_AUTENTICADO | NUMBER | N | Identificador do tipo de ac?o a ser assinada |
| 4 | NR_ORDEM_CAMPO_ACAO | NUMBER | N | Ordem pelo qual esse campo e relacionado a chave identificadora da ac?o |

---

## DBAMV.PW_CAPILAR
> Tabela associativa para cadastro das aberturas do uso dos capilares

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CAPILAR | NUMBER | N | Código identificador |
| 2 | CD_PACIENTE | NUMBER | N | Código do paciente |
| 3 | DH_ABERTURA | DATE | N | Data da abertura do capilar |
| 4 | CD_USUARIO_ABERTURA | VARCHAR2 | N | Usuário que abriu o Capilar |
| 5 | DH_FECHAMENTO | DATE | Y | Data de fechamento do capilar |
| 6 | CD_USUARIO_FECHAMENTO | VARCHAR2 | Y | Usuário que o Fechou o capilar |
| 7 | TP_LIMPEZA | VARCHAR2 | N | Tipo de limpeza do capilar M-Manual, A-Automática |
| 8 | QTD_REUSO | NUMBER | N | Quantidade de vezes que o capilar pode ser reusado |
| 9 | SN_ATIVO | VARCHAR2 | N | Informa se o capilar foi excluído por alguém |
| 10 | CD_USUARIO_DESATIVADO | VARCHAR2 | Y | Usuário que o desativou o capilar |
| 11 | DS_MOTIVO_DESATIVAR | VARCHAR2 | Y | Motivo de desativar a linha |
| 12 | DH_DESATIVADO | DATE | Y |  |
| 13 | DS_MOTIVO_DESCARTE | VARCHAR2 | Y | Motivo do descarte do capilar |

---

## DBAMV.PW_CAPITULO_CIAP_ATN
> Tabela de Capítulos de um CIAP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CAPITULO_CIAP | NUMBER | N | Código do capítulo |
| 2 | DS_SIGLA_CAPITULO_CIAP | VARCHAR2 | N | Sigla do capítulo |
| 3 | DS_CAPITULO_CIAP | VARCHAR2 | N | Descrição do capítulo |
| 4 | DH_CADASTRO | DATE | N | Data de cadastro do capítulo no sistema |

---

## DBAMV.PW_CASO_PROTOCOLO
> Tabela de Casos dos Protocolos. Apresenta as principais informações dos casos que serão detalhadas na tabela PW_EVOLUCAO_CASO_PROTOCOLO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CASO_PROTOCOLO | NUMBER | N | Código Sequencial. |
| 2 | CD_PACIENTE | NUMBER | N | Código do paciente. |
| 3 | CD_ALERTA_PROTOCOLO | NUMBER | N | Código relacionado à tabela principal PW_ALERTA_PROTOCOLO. |
| 4 | DT_INICIO | DATE | N | Data de inicio do caso. |
| 5 | DT_FIM | DATE | Y | Data de finalizacao do caso. |
| 6 | CD_USUARIO_ACEITACAO | VARCHAR2 | Y | Usuario que aceitou o inicio do protocolo. |
| 7 | CD_USUARIO_FINALIZACAO | VARCHAR2 | Y | Usuario que finalizou o caso. |
| 8 | CD_USUARIO_DESCARTE | VARCHAR2 | Y | Usuario que descartou o caso. |
| 9 | TP_ETAPA | VARCHAR2 | Y | Risco de Protocolo Entrada no Protocolo Finalização do protocolo Risco descartado |
| 10 | CD_ETAPA_PROTOCOLO | NUMBER | Y | Etapa atual do caso do protocolo |
| 11 | DS_FORMULA | VARCHAR2 | Y | Formula usada no momento em que o caso de protocolo foi criado |
| 12 | CD_ATENDIMENTO | NUMBER | Y | Código do Atendimento |
| 13 | CD_DOCUMENTO_CLINICO | NUMBER | Y | Codigo do documento eletronico que disparou o protocolo |

---

## DBAMV.PW_CASO_PROTOCOLO_CRITERIO
> Tabela responsável por gauardar os critérios atendidos para um caso de protocolo criado

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CASO_PROTOCOLO_CRITERIO | NUMBER | N | Código sequencial identificador do registro |
| 2 | CD_CASO_PROTOCOLO | NUMBER | N | Código do Caso de protocolo à que o critério atendeu (FK) |
| 3 | DS_CRITERIO | VARCHAR2 | N | Descrição do critério no momento da criacao do caso protocolo |
| 4 | VL_CRITERIO | VARCHAR2 | Y | Valor do critério atendido |
| 5 | DS_IDENTIFICADOR | VARCHAR2 | Y | Identificador usado no critério no momento da criação do caso protocolo |
| 6 | DS_MOTIVO_CRITERIO_ATENDIDO | VARCHAR2 | Y | Texto que contém o motivo para o critério ter sido atendido |

---

## DBAMV.PW_CENARIO
> Tabela para configurac?o da lista de pacientes

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CENARIO | NUMBER | N | Codigo do cenario valor |
| 2 | TP_FUNCAO | VARCHAR2 | N | Tipo da func?o do Cenario Valor |
| 3 | TP_ATENDIMENTO | VARCHAR2 | N | Tipo do atendimento do Cenario Valor |
| 4 | CD_MULTIEMPRESA | NUMBER | N | Codigo dA multi empresa do Cenario Valor |
| 5 | TP_MODO_PESQUISA | VARCHAR2 | N |  |

---

## DBAMV.PW_CENARIO_CONFIG_STAT_COL
> Entidade para controlar o status colunas da lista de pacientes

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CENARIO_CONFIGU_COLUNA_STAT | NUMBER | N | Código sequêncial da tabela. |
| 2 | CD_CENARIO | NUMBER | N | Código do cenário. |
| 3 | NR_COLUNA | VARCHAR2 | N | Número da coluna que será exibida na lista de pacientes. |
| 4 | CD_CHAVE_ATRIBUTO | VARCHAR2 | Y | Atributo que será validado para a lista de pacientes. |
| 5 | CD_CHAVE_CONFIGURACAO | VARCHAR2 | Y | Chave da configuração. |
| 6 | VL_VALOR | VARCHAR2 | Y | Valor da chave. |

---

## DBAMV.PW_CENARIO_VALOR
> Tabela para configurac?o da lista de pacientes

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CENARIO_VALOR | NUMBER | N | codigo do Cenario valor |
| 2 | CD_CENARIO | NUMBER | N | Codigo do cenario |
| 3 | DS_CHAVE | VARCHAR2 | N | decric?o da chave do Cenario valor |
| 4 | DS_VALOR | VARCHAR2 | N | descric?o do campo  do Cenario valor |

---

## DBAMV.PW_CENTRAL_ACESSO_AUTORIZADO
> Tabela para armazenar as autorizaes de acesso a pronturio de paciente vip por prestadores ou equipes assistenciais

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CENTRAL_ACESSO_AUTORIZADO | NUMBER | N | Sequencial da central de acesso autorizado |
| 2 | CD_CENTRAL_PACIENTE_VIP | NUMBER | N | Cdigo da configurao do paciente vip |
| 3 | CD_PRESTADOR | NUMBER | Y | Cdigo do prestador |
| 4 | CD_EQUIPE_PRONTUARIO_VIP | NUMBER | Y | Cdigo da equipe assistencial |
| 5 | CD_ATENDIMENTO | NUMBER | Y | Cdigo do atendimento |
| 6 | TP_AUTORIZACAO | VARCHAR2 | Y | O tipo de autorizao para o prestador ou equipe associada. Podendo ser (DIRETA, SENHA, JUSTIFICATI... |
| 7 | DH_VIGENCIA_INICIAL | DATE | Y | Data/Hora de vigncia inicial |
| 8 | DH_VIGENCIA_FINAL | DATE | Y | Data/Hora de vigncia final |
| 9 | CD_CENTRAL_ACESSO_SOLICITADO | NUMBER | Y | Indica que o registro de autorização é oriundo de uma solicitação de acesso (FK) |

---

## DBAMV.PW_CENTRAL_ACESSO_SOLICITADO
> Tabela para armazenar as solicitaes de acesso a pronturio de paciente vip por prestadores solicitantes

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CENTRAL_ACESSO_SOLICITADO | NUMBER | N | Sequencial da central de acesso solicitado |
| 2 | CD_CENTRAL_PACIENTE_VIP | NUMBER | N | Cdigo da configurao do paciente vip |
| 3 | CD_PRESTADOR | NUMBER | N | Cdigo do prestador solicitante |
| 4 | DH_SOLICITACAO | DATE | N | Data/Hora da solicitao de acesso |
| 5 | CD_ATENDIMENTO | NUMBER | Y | Cdigo do atendimento |
| 6 | CD_MOTIVO_SOLIC_PRONTUARIO_VIP | NUMBER | N | Cdigo do motivo de solicitao de acesso |
| 7 | DS_OBSERVACAO | VARCHAR2 | Y | Observao do motivo de solicitao de acesso |
| 8 | TP_SOLICITACAO | VARCHAR2 | N | O tipo de solicitacao do prestador solicitante. Podendo ser (DIRETA, SENHA, JUSTIFICATIVA, NEGADA... |

---

## DBAMV.PW_CENTRAL_PACIENTE_VIP
> Tabela para armazenar os pacientes configurados como vip

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CENTRAL_PACIENTE_VIP | NUMBER | N | CÃ³digo sequencial da tabela |
| 2 | CD_PACIENTE | NUMBER | N | CÃ³digo do paciente |
| 3 | CD_SENHA_PACIENTE_VIP | NUMBER | Y | Código da senha gerada para o paciente vip, através da funcionalidade de geração de senha |
| 4 | TP_AUTORIZACAO | VARCHAR2 | Y | O tipo de autorização padrão do paciente. Podendo ser (DIRETA, SENHA, JUSTIFICATIVA, NEGADA) |
| 5 | SN_ATUALIZA_ACESSO_PADRAO | VARCHAR2 | N | Flag que permite atualizar o tipo de autorização do paciente |
| 6 | DH_VIGENCIA_INICIAL | DATE | Y | Data/Hora de vigência inicial para acesso ao paciente |
| 7 | DH_VIGENCIA_FINAL | DATE | Y | Data/Hora de vigência final para acesso ao paciente |

---

## DBAMV.PW_CHAMADO_DOMICILIAR
> [PAGU] Tabela de cadastro de Chamado Domiciliar.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CHAMADO_DOMICILIAR | NUMBER | N | Código sequencial único do Chamado Domiciliar. |
| 2 | DT_CHAMADO | DATE | N | Data do chamado. |
| 3 | TP_CHAMADO | VARCHAR2 | N | Tipo do Chamado. |
| 4 | CD_PACIENTE | VARCHAR2 | N | Código do paciente. Ou o código do identificador pessoa. |
| 5 | CD_CONVENIO | NUMBER | Y | Código do convênio. |
| 6 | CD_CON_PLA | NUMBER | Y | Código do plano do convênio. |
| 7 | CD_SUB_PLANO | VARCHAR2 | Y | Código do sub-plano do convênio e plano. |
| 8 | DS_ENDERECO | VARCHAR2 | N | Endereço do paciente. |
| 9 | NR_NUMERO | NUMBER | N | Número do endereço do paciente. |
| 10 | DS_COMPLEMENTO | VARCHAR2 | Y | Complemento do endereço do paciente. |
| 11 | DS_BAIRRO | VARCHAR2 | Y | Bairro do endereço do paciente. |
| 12 | DS_CIDADE | VARCHAR2 | Y | Cidade do endereço do paciente. |
| 13 | DS_TELEFONE | VARCHAR2 | N | Telefone do paciente. |
| 14 | CD_CONTRATO_MVS | NUMBER | Y | Código do Contrato do MV-Saúde. |
| 15 | CD_PLANO_MVS | NUMBER | Y | Código do plano do MV-Saúde. |
| 16 | DS_SERVICO_MVS | VARCHAR2 | Y | Serviço do MV-Saúde. |
| 17 | CD_PRESTADOR_SOLICITANTE | NUMBER | Y | Código do prestador solicitante do chamado. |
| 18 | CD_ESPECIALID_SOLICITANTE | NUMBER | Y | Código da especialidade solicitante do chamado. |
| 19 | CD_SINTOMA_DOMICILIAR | NUMBER | N | Código do sintoma do paciente. |
| 20 | DS_OBSERVACAO_CHAMADO | VARCHAR2 | Y | Observação do chamado. |
| 21 | CD_TIPO_CHAMADO_DOMICILIAR | NUMBER | N | Código do tipo do chamado domiciliar. |
| 22 | CD_ORIGEM | NUMBER | N | Código da origem do chamado domiciliar. |
| 23 | CD_AREA_CHAMADO_DOMICILIAR | NUMBER | Y | Código da área do chamado domiciliar. |
| 24 | VL_CO_PARTICIPACAO | NUMBER | Y | Valor de co-participação, retornado pela integração com o MV-Saúde. |
| 25 | NR_GUIA_MVS | NUMBER | Y | Número da guia, retornado pela integração com o MV-Saúde. |
| 26 | CD_CON_REC | NUMBER | Y | Número da conta a receber, retornado pela integração com o MV-Saúde. |
| 27 | TP_STATUS | VARCHAR2 | Y | Status do chamado domiciliar. I = Inserido; A = Atribuído; O = Notificado; R = Realizado; S = Rea... |
| 28 | DT_CADASTRO | DATE | N | Data de Cadastro. |
| 29 | CD_USUARIO_CADASTRO | VARCHAR2 | N | Usuário de Cadastro. |
| 30 | CD_MOTIVO_ANULACAO | NUMBER | Y | Código do mnotivo de anulação. |
| 31 | DT_ANULACAO | DATE | Y | Data de anulação. |
| 32 | CD_USUARIO_ANULACAO | VARCHAR2 | Y | Código do usuário de anulação. |
| 33 | CD_ATENDIMENTO | NUMBER | Y | Código do atendimento. |
| 34 | DT_REALIZACAO | DATE | Y | Data de realização do chamado. |
| 35 | DS_OBSERVACAO_NOTIFICACAO | VARCHAR2 | Y | Observação da notificação. |
| 36 | CD_PRESTADOR | NUMBER | Y | Código do prestador do chamado. |
| 37 | CD_ESPECIALID | NUMBER | Y | Código da especialidade do chamado. |
| 38 | DS_OBSERVACAO_ATRIBUICAO | VARCHAR2 | Y | Observação da atribuição. |
| 39 | DS_JUSTIFICATIVA | VARCHAR2 | Y | Justificativa da anulação ou da reiteração. |
| 40 | DS_OBSERVACAO_CONFIRMACAO | VARCHAR2 | Y | Observação da confirmação. |
| 41 | CD_AGENDA_DOMICILIAR | NUMBER | Y | Código da agenda domiciliar. |
| 42 | DS_OBSERVACAO_REATRIBUICAO | VARCHAR2 | Y | Observação da reatribuição. |
| 43 | CD_MULTI_EMPRESA | NUMBER | Y | Multi empresa do chamado. |

---

## DBAMV.PW_CIAP_ATN
> Tabela de CIAP - Código Internacional de Atenção Primária

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CIAP | NUMBER | N | Código do CIAP |
| 2 | DS_SIGLA_CIAP | VARCHAR2 | N |  |
| 3 | DS_CIAP | VARCHAR2 | N | Descrição do CIAP |
| 4 | CD_CAPITULO_CIAP | NUMBER | Y | Código do capítulo associado ao CIAP |
| 5 | CD_COMPONENTE_CIAP | NUMBER | N | Código do componente associado ao CIAP |
| 6 | SN_ATIVO | VARCHAR2 | N | Informa se o CIAP está ativo ou não |
| 7 | DS_DEFINICAO | VARCHAR2 | Y | Definição do CIAP |
| 8 | DS_CRITERIO_INCLUSAO | VARCHAR2 | Y | Critério de inclusão do CIAP |
| 9 | DS_CRITERIO_EXCLUSAO | VARCHAR2 | Y | Critério de Exclusão do CIAP |
| 10 | DS_CONSIDERAR | VARCHAR2 | Y | Considerações do CIAP |
| 11 | DS_NOTA | VARCHAR2 | Y | Notas do CIAP |
| 12 | CD_CID_FREQUENTE | VARCHAR2 | Y | Código do CID frequentemente associado ao CIAP |
| 13 | DH_CADASTRO | DATE | N | Data de cadastro do CIAP no sistema |

---

## DBAMV.PW_CIAP_CID_POSSIVEL_ATN
> Tabela de CIDs possíveis

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CIAP_CID_POSSIVEL | NUMBER | N | Código do CID possível |
| 2 | CD_CIAP | NUMBER | N | Código do CIAP associado ao CID possível |
| 3 | CD_CID | VARCHAR2 | N | Código do CID |

---

## DBAMV.PW_CITPRE_MED_ALERTA
> Tabela para armazenar os alertas dos processos e sub-processos dos componentes de prescricao.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CITPRE_MED_ALERTA | NUMBER | N |  |
| 2 | CD_ITPRE_MED | NUMBER | N |  |
| 3 | CD_TIP_PRESC | NUMBER | N |  |
| 4 | PROCESSO | VARCHAR2 | Y |  |
| 5 | SUBPROCESSO | VARCHAR2 | Y |  |
| 6 | NR_ORDEM_PROCESSO | NUMBER | Y |  |
| 7 | DH_ALERTA | DATE | N |  |
| 8 | DS_ALERTA | VARCHAR2 | Y |  |
| 9 | CD_DOCUMENTO_CLINICO | NUMBER | Y |  |
| 10 | SN_AVISAR_PRESCRICAO | VARCHAR2 | N |  |
| 11 | TP_ALERTA | VARCHAR2 | N |  |
| 12 | SN_JUSTIFICAR | VARCHAR2 | N |  |
| 13 | NR_REFERENCIA | NUMBER | Y |  |
| 14 | DS_IDENTIFICADOR_REFERENCIA | VARCHAR2 | Y |  |
| 15 | DS_IDENTIFICADOR_COPIA | VARCHAR2 | Y |  |
| 16 | CD_ORIGEM | NUMBER | Y |  |

---

## DBAMV.PW_CITPRE_MED_HISTORICO
> Tabela de Historico dos componentes dos itens da PRE_MED

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITPRE_MED | NUMBER | Y |  |
| 2 | CD_TIP_PRESC | NUMBER | Y |  |
| 3 | QT_COMPONENTE | NUMBER | Y |  |
| 4 | TP_COMPONENTE | VARCHAR2 | Y |  |
| 5 | CD_UNIDADE | VARCHAR2 | Y |  |
| 6 | CD_UNI_PRO | NUMBER | Y |  |
| 7 | CD_PRODUTO | NUMBER | Y |  |
| 8 | SN_FATURA | VARCHAR2 | Y |  |
| 9 | DS_CITPRE_MED | VARCHAR2 | Y |  |
| 10 | DS_NPADRONIZADO | VARCHAR2 | Y |  |
| 11 | CD_PRE_MED_SUSP | NUMBER | Y | Código da prescrição responsável pela suspensão |
| 12 | CD_PRE_MED | NUMBER | Y | Código da prescricão responsável pelo lançamento do componente |
| 13 | CD_UNI_PRESC | NUMBER | Y | Código da unidade de medida |
| 14 | NR_ORDEM | NUMBER | Y | Indica qual será a ordem do componente dentro de um item em uma prescriçao medica |
| 15 | SN_COPIA_IDENTICA | VARCHAR2 | Y | Coluna que indica que o item é uma cópia identica ao item copiado de outra prescrição |
| 16 | CD_CONFIGURACAO_CURVA | NUMBER | Y | Campo para armazenar o código da configuração da curva dinâmica, ao prescrever exames. |
| 17 | SN_CURVA_PADRAO_AUTO | VARCHAR2 | Y | Define se o item sofreu alteração manual da sua curva padrão setada automaticamente pelo sistema |
| 18 | DS_MATERIAL_COMPLEMENTAR | VARCHAR2 | Y | Descrição do material complementar para o exame laboratorial |
| 19 | CD_CID | VARCHAR2 | Y | Campo para armazenar o código do CID ao prescrever exames. |
| 20 | SN_PESQUISA_CIENTIFICA | VARCHAR2 | Y | Se o componente foi incluído como item de pesquisa científica |
| 21 | CD_SET_EXA | NUMBER | Y | Código do setor do exame |
| 22 | CD_MATERIAL | NUMBER | Y | Código do Material para o exame laboratorial |
| 23 | CD_TUBO_COLETA | NUMBER | Y | Código do tubo de coleta. |
| 24 | DS_JUSTIFICATIVA | VARCHAR2 | Y | Descrição da justificativa do componente |
| 25 | TP_HISTORICO | VARCHAR2 | Y | D = Sessão de tratamento desfeita / S = Item suspenso na sessão / A = Intervenção Realizada na Av... |
| 26 | DT_HISTORICO | DATE | Y |  |
| 27 | CD_PRESTADOR_HISTORICO | NUMBER | Y |  |
| 28 | CD_CITPRE_MED_HISTORICO | NUMBER | Y |  |
| 29 | CD_ITPRE_MED_HISTORICO | NUMBER | Y |  |

---

## DBAMV.PW_CLAS_RISCO_QUEST_ATP
> Tabela que guarda a classificacao de risco do objeto para o questionario

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CLAS_RISCO_QUEST_ATP | NUMBER | N | Sequencial da tabela |
| 2 | CD_OBJETO | NUMBER | N | Código do objeto do controle QUEATP |
| 3 | VL_RISCO_INICIAL | NUMBER | N | Valor inicial do risco |
| 4 | VL_RISCO_FINAL | NUMBER | N | Valor final do risco |
| 5 | TP_RISCO | VARCHAR2 | N | Tipo do risco |

---

## DBAMV.PW_COBRANCA_ENCAMINHAMENTO
> Tabela para cadastro dos procedimentos por convênio e especialidade

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_COB_ENCAMINHAMENTO | NUMBER | N | Código do cadastro do procedimento por convênio e especialidade |
| 2 | CD_CONVENIO | NUMBER | N | Código do convênio |
| 3 | CD_ESPECIALID | NUMBER | N | Código da especialidade |
| 4 | CD_PRO_FAT | VARCHAR2 | Y | Código do procedimento de faturamento |
| 5 | CD_PROCEDIMENTO_SIH | VARCHAR2 | Y | Código do procedimento de internação SUS -SIH |
| 6 | CD_PROCEDIMENTO_SIA | VARCHAR2 | Y | Código do procedimento de ambulatóriol SUS - SIA |

---

## DBAMV.PW_COLUNA_PERGUNTA_LISTA
> Tabela para Coluna Pergunta Lista

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_COLUNA_PERGUNTA_LISTA | NUMBER | N | Codigo Coluna Pergunta Lista |
| 2 | VL_POSICAO | NUMBER | Y | Posic?o Coluna Pergunta Lista |
| 3 | NM_COLUNA | VARCHAR2 | Y | Nome Coluna Coluna Pergunta Lista |
| 4 | CD_PERGUNTA | NUMBER | N |  |

---

## DBAMV.PW_COMPONENTE_CIAP_ATN
> Tabela de Componentes de um CIAP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_COMPONENTE_CIAP | NUMBER | N | Código do componente |
| 2 | NR_COMPONENTE_CIAP | VARCHAR2 | N | Número do componente |
| 3 | DS_COMPONENTE_CIAP | VARCHAR2 | N | Descrição do componente |
| 4 | DH_CADASTRO | DATE | N | Data de cadastro do componente no sistema |

---

## DBAMV.PW_COMPONENTE_POSOLOGIA
> Tabela que armazena os componentes do item padr?o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_COMPONENTE_POSOLOGIA | NUMBER | N | Identificador da tabela que armazena os componentes do item padr?o. |
| 2 | CD_CONFIGURACAO_PADRAO_ITEM | NUMBER | N | Codigo o qual pertence esse componente. |
| 3 | CD_TIP_PRESC_COMPONENTE | NUMBER | N | Codigo do TIP_PRESC do componente. |
| 4 | QT_COMPONENTE | NUMBER | N | Quantidade do Item |
| 5 | CD_FOR_APL | VARCHAR2 | Y | Codigo da forma de aplicac?o. |
| 6 | CD_UNI_PRO | NUMBER | Y | Codigo da unidade do produto associado ao item. |
| 7 | CD_UNI_PRESC | NUMBER | Y | Codigo da unidade da prescric?o associado ao item. |
| 8 | TP_COMPONENTE | VARCHAR2 | N | Tipo do item referente ao componente. |
| 9 | SN_FATURA | VARCHAR2 | Y | Se o componente cai na fatura. |
| 10 | TP_KIT | VARCHAR2 | Y | Componente a ser multiplicado pela quantidade do item principal. |
| 11 | DS_OBSERVACAO_COMPON | VARCHAR2 | Y | Observac?o do Componente. |
| 12 | SN_DILUENTE_PADRAO | VARCHAR2 | N | Indica se o componente é o diluente padrão |
| 13 | SN_RECONSTITUINTE_PADRAO | VARCHAR2 | N | Indica se o componente é o reconstituinte padrão |

---

## DBAMV.PW_CONDUTA_PROBLEMA_PAC

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONDUTA_PROBLEMA | NUMBER | N | CÃ¿DIGO DA CONDUTA. |
| 2 | DS_CONDUTA_PROBLEMA | VARCHAR2 | N | DESCRIÃ¿Ã¿O DA CONDUTA. |
| 3 | CD_PROBLEMA | NUMBER | N | CÃ¿DIGO DO PROBLEMA RELACIONADO A CONDUTA. |

---

## DBAMV.PW_CONFIGURACAO_ASSINAT_DIGIT
> Tabela de configurac?o das instituic?es que assinam digitalmente

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PW_CONFIG_ASSINAT_DIGIT | NUMBER | N | Campo PK da tabela |
| 2 | CD_MULTI_EMPRESA | NUMBER | N | Indentificador da empresa |
| 3 | SN_ASSINATURA_DIGITAL | VARCHAR2 | Y | Identificador se assina digitalmente |
| 4 | SN_SBIS | VARCHAR2 | Y | Identificador se ele e certificado SBIS |
| 5 | SN_WINDOWS_MY | VARCHAR2 | Y | Identifica se a empresa utilizara windows-my por padr?o ou n?o |

---

## DBAMV.PW_CONFIGURACAO_INTEGRACAO
> Tabela responsável por guardar as configurações dos sistemas integrados ao PEP2

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIGURACAO_INTEGRACAO | NUMBER | N | Código sequêncial da tabela (PK) |
| 2 | CD_SISTEMA_INTEGRADO | NUMBER | N | Código do sistema integrado da tabela (FK) |
| 3 | SN_ATIVO | VARCHAR2 | N | Esta coluna indica se o sistema integrado está ativo |
| 4 | CD_CONFIGURACAO_INTEGRA_EXCE | NUMBER | Y | Código da configuração de integração a que esta exceção está referenciada |
| 5 | CD_SETOR | NUMBER | Y | Código do setor. Caso ele esteja informado, significa que este registro é uma exeção a configuraç... |

---

## DBAMV.PW_CONFIGURACAO_PADRAO_ITEM
> Tabela para Configurac?o Padr?o Item

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIGURACAO_PADRAO_ITEM | NUMBER | N | Codigo Configurac?o Padr?o Item |
| 2 | QT_ITEM | NUMBER | Y | Quantidade Configurac?o Padr?o Item |
| 3 | QT_DURACAO | VARCHAR2 | Y | Quantidade Durac?o Configurac?o Padr?o Item |
| 4 | SN_CONTINUO | VARCHAR2 | Y | Se a Configurac?o Padr?o Item e Continua |
| 5 | SN_ATIVO | VARCHAR2 | Y | Se a Configurac?o Padr?o Item esta Ativa |
| 6 | CD_UNIDADE_DURACAO | NUMBER | Y | Codigo Unidade Durac?o |
| 7 | CD_SETOR | NUMBER | Y | Codigo Setor |
| 8 | CD_FOR_APL | VARCHAR2 | Y | Codigo Forma Aplicac?o |
| 9 | CD_UNI_PRO | NUMBER | Y | Codigo Unidade Produto |
| 10 | CD_UNI_PRESC | NUMBER | Y | Codigo Unidade Prescric?o |
| 11 | CD_TIP_FRE | NUMBER | Y | Codigo Tipo Frequencia |
| 12 | CD_TIP_PRESC | NUMBER | N | Codigo Tipo Prescric?o |
| 13 | DS_TITULO | VARCHAR2 | Y | Atribui um texto resumido para este padr?o de informac?es. Sera usado no lancamento agrupado. |
| 14 | DS_OBSERVACAO | VARCHAR2 | Y | Coluna que pode ter um texto padronizado |
| 15 | CD_MATERIAL | NUMBER | Y | Material de coleta de exame |
| 16 | QT_DOSE_PADRAO | NUMBER | Y | Apresenta a dose padr?o da medicac?o, sendo esta informada pelo medico na prescric?o |
| 17 | NR_ORDEM | NUMBER | Y | Numero de ordem |
| 18 | NR_IDADE_INICIAL | NUMBER | Y | Restric?o Idade Inicial |
| 19 | NR_IDADE_FINAL | NUMBER | Y | Restric?o Idade Final |
| 20 | NR_PESO_INICIAL | NUMBER | Y | Restric?o Peso Inicial |
| 21 | NR_PESO_FINAL | NUMBER | Y | Restric?o Peso Final |
| 22 | QT_DIA_APLICACAO | NUMBER | Y | Dias de aplicac?o da medicac?o |
| 23 | QT_INFUSAO | NUMBER | Y | Quantidade de infus?o |
| 24 | CD_UNI_PRESC_INF | NUMBER | Y | Unidade da infus?o do item de prescric?o |
| 25 | CD_UNI_PRO_INF | NUMBER | Y | Unidade da infus?o do produto |
| 26 | SN_MEDICACAO | VARCHAR2 | Y | Se o item e se necessario |
| 27 | SN_URGENTE | VARCHAR2 | Y | Se o item e urgente |
| 28 | CD_PRESTADOR | NUMBER | Y | O prestador executante indicado para o procedimento |
| 29 | CD_PADRAO_FORMULA | NUMBER | Y | A formula que servira como padr?o nessa posologia |
| 30 | CD_OBSERVACAO_PREDEFINIDA | NUMBER | Y | Associação com uma observação predefinida |
| 31 | HR_DURACAO | DATE | Y | Duração da infusão |
| 32 | CD_LOCAL_ANATOMICO_COLETA | NUMBER | Y | Campo para armazenar o código do local anatomico da coleta |
| 33 | CD_DISPOSITIVO | NUMBER | Y | Código do dispositivo utilizado no item de prescrição. |
| 34 | QTD_VOLUME_TOTAL | NUMBER | Y | Campo para informar o volume total da solução após a diluição. |
| 35 | CD_UNID_VOL_TOTAL | NUMBER | Y | Unidade de produto relacionada ao volume total da solução após a diluição. |
| 36 | CD_UNID_PRESC_VOL_TOTAL | NUMBER | Y | Unidade de prescrição relacionada ao volume total da solução após a diluição. |
| 37 | SN_CRONICO | VARCHAR2 | N | Informa se a configuração padrão do item de prescrição é de uso crônico |
| 38 | NR_DIAS_DURACAO | NUMBER | Y | Informa a quantidade de dias de duração da configuração padrão do item |
| 39 | NR_HORAS_DURACAO | NUMBER | Y | Informa a quantidade de horas de duração da configuração padrão do item |
| 40 | NR_MINUTOS_DURACAO | NUMBER | Y | Informa a quantidade de minutos de duração da configuração padrão do item |
| 41 | CD_MULTI_EMPRESA | NUMBER | Y | Código da empresa padrão |

---

## DBAMV.PW_CONFIGURACAO_USUARIO_SETOR
> Tabela mapeada juntamente com ConfiguracaoUsuarioSetor; identifica a qual ConfiguracaoUsuarioSetor o Setor esta relacionado.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PW_CONFIGURACAO_USUARIO_SET | NUMBER | N | Codigo da relac?o entre um  Setor e um ConfiguracaoUsuarioSetor ? PK |
| 2 | CD_SETOR | NUMBER | N | Identifica o Setor ao qual o ConfiguracaoUsuarioSetor esta relacionado ? FK |
| 3 | CD_CONFIGURACAO_USUARIO_SETOR | NUMBER | N | Identifica a qual ConfiguracaoUsuarioSetor o Setor  esta relacionado ? FK |

---

## DBAMV.PW_CONFIG_ALERTAS_PRE_MED
> Tabela para armazenar as configurações das integrações dos alertas da prescrição.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_ALERTA_PRE_MED | NUMBER | N | Código da config. da integração dos alertas chave primaria |
| 2 | TP_PROCESSO | VARCHAR2 | N | Código do processo da integração |
| 3 | TP_DET_PROCESSO | VARCHAR2 | Y | Código do sub processo da integração |
| 4 | CD_SETOR | NUMBER | Y | Código do setor para exceção da config. da integração |
| 5 | SN_ALERTA | VARCHAR2 | Y | Informa se exibirpa alerta na prescrição |
| 6 | SN_JUSTIFICAR | VARCHAR2 | Y | Informa se será obrigatório justificar na prescrição |
| 7 | TP_PROCESSO_CONFIG | VARCHAR2 | Y | Código da configuração do processo existente |
| 8 | TP_DET_PROCESSO_CONFIG | VARCHAR2 | Y | Código da configuração do sub processo existente |
| 9 | CD_SISTEMA_INTEGRADO | NUMBER | Y | Código do sistema integrado (FK) |

---

## DBAMV.PW_CONFIG_ALTA_MEDICA_TRANSP
> TABELA PARA CADASTRO DOS PROCEDIMENTOS POR CONVÊNIO NA SOLICITACAO DE TRANSLADO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_ALTA_MEDICA_TRANSP | NUMBER | N | CÓDIGO DA CHAVE PRIMÁRIA DA TABELA PW_CONFIG_ALTA_MEDICA_TRANSP |
| 2 | CD_CONVENIO | NUMBER | N | CÓDIGO DO CONVÊNIO |
| 3 | CD_PRO_FAT | VARCHAR2 | Y | CÓDIGO DO PROCEDIMENTO DE FATURAMENTO |
| 4 | CD_PROCEDIMENTO_SIH | VARCHAR2 | Y | CÓDIGO DO PROCEDIMENTO DE INTERNAÇÃO SUS -SIH |
| 5 | CD_PROCEDIMENTO_SIA | VARCHAR2 | Y | CÓDIGO DO PROCEDIMENTO DE AMBULATÓRIOL SUS - SIA |
| 6 | CD_MOT_ALT | NUMBER | Y | Especifica um determinado motivo de alta de atendimento de internação. Quando este motivo de alta... |
| 7 | CD_TIPO_RESULTADO | NUMBER | Y | Especifica um determinado tipo de resultado (motivo) para atendimentos ambulatoriais e de urgênci... |

---

## DBAMV.PW_CONFIG_AUDIT_ESQUEMA_PRESC
> Tabela responsavel por armazenar configuracao auditoria por esquema

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_AUDIT_ESQUEMA_PRESC | NUMBER | N |  |
| 2 | CD_CONFIG_AUDIT_SETOR_PRESC | NUMBER | N |  |
| 3 | CD_TIP_ESQ | VARCHAR2 | Y |  |
| 4 | SN_GERAR_PENDENCIA | VARCHAR2 | Y |  |
| 5 | NR_TOLERANCIA | NUMBER | N |  |

---

## DBAMV.PW_CONFIG_AUDIT_PRON_TIP_PRESC
> Tabela responsavel por armazenar configuracao de auditoria tipo prescricao

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_AUDIT_PRON_TIP_PRESC | NUMBER | N |  |
| 2 | CD_CONFIG_AUDIT_ESQUEMA_PRESC | NUMBER | N |  |
| 3 | CD_TIP_PRESC | NUMBER | Y |  |
| 4 | SN_GERAR_PENDENCIA | VARCHAR2 | Y |  |
| 5 | NR_TOLERANCIA | NUMBER | N |  |

---

## DBAMV.PW_CONFIG_AUDIT_SETOR_PRESC
> Tabela responsavel por armazenar configuracao auditoria por setor

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_AUDIT_SETOR_PRESC | NUMBER | N |  |
| 2 | CD_TIPO_PENDENCIA_PRONTUARIO | NUMBER | N |  |
| 3 | CD_SETOR | NUMBER | Y |  |
| 4 | SN_GERAR_PENDENCIA | VARCHAR2 | Y |  |
| 5 | NR_TOLERANCIA | NUMBER | N |  |
| 6 | SN_CONFIGURACAO_GLOBAL | VARCHAR2 | Y |  |

---

## DBAMV.PW_CONFIG_AVAL_FARMACIA_DIA
> Informa os dias da semana e seus horários que terá avaliação farmaceutica. Para um dia de semana será permitido configurar mais de uma faixa de horário

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_AVAL_FARMACIA_DIA | NUMBER | N | Código da config. da avaliação farmacêutica por dia chave primaria |
| 2 | CD_SETOR | NUMBER | N | Código da configurado para avaliação farmacêutica por setor. |
| 3 | TP_DIA_SEMANA | VARCHAR2 | N | Dia da semana usando os valores: "DOM"ingo; "SEG"unda, "TER"ça, "QUA"rta, "QUI"nta, "SEX"ta, "SAB... |
| 4 | HR_INICIAL | DATE | Y | Limite de horário que será considerado como INÍCIO do expediente das avaliações farmaceuticas no ... |
| 5 | HR_FINAL | DATE | Y | Limite de horário que será considerado como FINAL do expediente das avaliações farmaceuticas no d... |

---

## DBAMV.PW_CONFIG_AVAL_FARMACIA_ESQ
> Tabela para armazenar as configurações da avaliação farmacêutica por esquema de prescrição.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_AVAL_FARMACIA_ESQ | NUMBER | N | Código da config. da avaliação farmacêutica por esquema chave primaria |
| 2 | CD_SETOR | NUMBER | N | Código da configurado para avaliação farmacêutica por setor. |
| 3 | CD_TIP_ESQ | VARCHAR2 | N | Código do esquema para ser configurado na avaliação farmacêutica. |

---

## DBAMV.PW_CONFIG_DOCUMENTO_OBGT_CID
> TABELA PARA GUARDAR AS CONFIGURACOES DE OBRIGATORIEDADE DE DOCUMENTOS POR CID.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_DOCUMENTO_OBGT_CID | NUMBER | N | CHAVE PRIMARIA DA TABELA PARA GUARDAR AS CONFIGURACOES DE OBRIGATORIEDADE DE DOCUMENTOS POR CID. |
| 2 | CD_DOCUMENTO | NUMBER | N | DOCUMENTO OBRIGATORIO QUE SERA EXIGIDO AO CRIAR O ESTADIAMENTO COM UM CID CONFIGUDADO PARA EXIGIR... |
| 3 | CD_CID | VARCHAR2 | N | REFERENCIA PARA O CID CADASTRADO - FK. |
| 4 | CD_MULTI_EMPRESA | NUMBER | Y | CODIGO DA EMPRESA CONFIGURADA. |
| 5 | CD_SETOR | NUMBER | Y | CODIGO DO SETOR CONFIGURADO. |
| 6 | CD_CONVENIO | NUMBER | Y | CODIGO DO CID CONFIGURADO. |

---

## DBAMV.PW_CONFIG_ESQMA_REDUCAO_QUANTD
> Representa os esquemas de prescrição que sofrerão alteração na sua quantidade quando um percentual de redução for aplicado

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_ESQMA_REDUCAO_QUANTD | NUMBER | N | Chave primária da tabela |
| 2 | CD_TIP_ESQ | VARCHAR2 | N | Código do esquema da prescrição |

---

## DBAMV.PW_CONFIG_ESQUEMA_OBS_PREDEF
> Representa os esquemas de prescrição que serão considerados para a troca da observação predefinida pela mensagem substituta

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_ESQUEMA_OBS_PREDEF | NUMBER | N | Chave primária da tabela |
| 2 | CD_OBSERVACAO_PREDEFINIDA | NUMBER | N |  |
| 3 | CD_TIP_ESQ | VARCHAR2 | N | Código do esquema da prescrição |

---

## DBAMV.PW_CONFIG_EXIBICAO_ITEM_PRESC
> Tabela para armazenar as configurações de exibição do item de prescrição

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_EXIBICAO_ITEM_PRESC | NUMBER | N | Código sequêncial para a tabela |
| 2 | DS_CONFIG_EXIBICAO_ITEM_PRESC | VARCHAR2 | N | Descrição da configuração de exibição do item de prescrição |
| 3 | SN_ATIVO | VARCHAR2 | N | Indica se a configuração está ativa |

---

## DBAMV.PW_CONFIG_GRUPO_BALANCO_HID

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_GRUPO_BALANCO_HID | NUMBER | N | CHAVE PRIMARIA DA TABELA DBAMV.PW_CONFIG_GRUPO_BALANCO_HID |
| 2 | NM_GRUPO_BALANCO_HIDRICO | VARCHAR2 | N | NOME DO GRUPO DE BALANÇO HÍDRICO |
| 3 | TP_GRUPO | VARCHAR2 | N | TIPO DO GRUPO DE BALANÇO HÍDRICO. TIPOS POSSIVEIS: BALANCO HIDRICO (B) , IRRIGACAO (I), SINAL VIT... |

---

## DBAMV.PW_CONFIG_GRUPO_QUEST
> Tabela de grupos de questionários

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_GRUPO_QUEST | NUMBER | N | Código do grupo do questionário |
| 2 | DS_CONFIG_GRUPO_QUEST | VARCHAR2 | N | Descrição do grupo do questionário |
| 3 | SN_OBSERVACAO | VARCHAR2 | N | Informa se exibe observação: S - Sim, N - Não |
| 4 | CD_CHAVE_CONTEXTO | VARCHAR2 | N | Informa o tipo do contexto do grupo |

---

## DBAMV.PW_CONFIG_INDICACAO_PACIENTE
> Tabela para guardar as indicações do paciente

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_INDICACAO_PACIENTE | NUMBER | N | Código da Sequence da tabela |
| 2 | DH_CRIACAO | DATE | N | Data/hora da criacao do registro |
| 3 | TP_INDICACAO | VARCHAR2 | N | Descrição do tipo de indicação. valores possíveis:R, P |
| 4 | DS_INDICACAO_PACIENTE | VARCHAR2 | N | Identificador único da indicação do paciente. valores possiveis: AEROSOL, BRONCOASPIRACAO, CONTAT... |
| 5 | DS_COR | VARCHAR2 | N | Código da cor |
| 6 | DS_LETRA | VARCHAR2 | N | Letra da Indicação |
| 7 | NR_ORDEM | NUMBER | N | Ordem de prioridade de exibição |
| 8 | CD_GRUPO_CRITERIO_ENTRADA | NUMBER | Y | Grupo de critérios para entrada na indicação de paciente |
| 9 | CD_GRUPO_CRITERIO_SAIDA | NUMBER | Y | Grupo de critérios para saída da indicação de paciente |
| 10 | SN_ATIVO | VARCHAR2 | N | Configuração para Ativar e Desativar a Indicação |
| 11 | SN_REMOVE_STATUS_ALTA | VARCHAR2 | N | Configuração para remover o status na alta do paciente |

---

## DBAMV.PW_CONFIG_INDICACAO_PAC_ORI
> Tabela para guardar as indicações do paciente

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_INDICACAO_PACI_ORI | NUMBER | N | Código da Sequence da tabela |
| 2 | DH_CRIACAO | DATE | N | Data/hora da criacao do registro |
| 3 | TP_ORIGEM | VARCHAR2 | Y |  |
| 4 | CD_RESPOSTA | NUMBER | Y | Código da Resposta do Histórico de Enfermagem |
| 5 | CD_METADADO | NUMBER | Y | Código do metadado do documento eletrônico |
| 6 | DS_IDENTIFICADOR | VARCHAR2 | Y | Identificador único do metadado |
| 7 | CD_DOCUMENTO | NUMBER | Y | Código do documento eletrônico |
| 8 | DS_VALOR | VARCHAR2 | Y | Descrição do valor do campo que indicará que será uma indicação |
| 9 | CD_CONFIG_INDICACAO_PACIENTE | NUMBER | N | Código da indicação do paciente na tabela pw_config_indicacao_paciente |

---

## DBAMV.PW_CONFIG_INTER_CID_PRESC
> Tabela para armazenar os detalhes da configurações de alertas nas prescrição exames x itens

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_INTER_CID_PRESC | NUMBER | N | Código do item do alerta chave primaria |
| 2 | CD_TIP_PRESC | NUMBER | Y | Código do item de prescrição a ser relacionado com exames |
| 3 | TP_SEXO | VARCHAR2 | Y | sexo do paciente M - masculino, f - feminino, i - indefinido, g - ignorado, a - ambos |
| 4 | NR_IDADE_MAXIMA | NUMBER | Y | Idade máxima do alerta |
| 5 | NR_IDADE_MINIMA | NUMBER | Y | Idade minina do alerta |
| 6 | SN_ATIVO | VARCHAR2 | Y | Alerta ativo Sim ou Não |
| 7 | DH_CRIACAO | DATE | Y | Data e hora da criação do alerta |

---

## DBAMV.PW_CONFIG_ITEM_ALIMENTO
> Tabela para armazenar os detalhes da configurações de alertas nas prescrição exames x itens

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_ITEM_ALIMENTO | NUMBER | N | Código do item do alerta chave primaria |
| 2 | CD_TIP_PRESC | NUMBER | Y | Código do item de prescrição a ser relacionado com exames |
| 3 | SN_ATIVO | VARCHAR2 | Y | Ativo S ou N |
| 4 | DS_MENSAGEM | VARCHAR2 | Y | Descrição do alerta para a prescrição médica referente a item x alimento. |

---

## DBAMV.PW_CONFIG_ITENS_GRUPO_BALANCO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_ITENS_GRUPO_BALANCO | NUMBER | N | CHAVE PRIMARIA DA TABELA |
| 2 | CD_TIP_PRESC | NUMBER | Y |  |
| 3 | NR_ORDEM | NUMBER | Y | ORDEM DO ITEM A SER EXIBIDO NO GRUPO DO BALANCO HIDRICO |
| 4 | CD_CONFIG_SETOR_GRUPO_BAL_HID | NUMBER | N | CHAVE DA TABELA DBAMV.PW_CONFIG_SETOR_GRUPO_BAL_HID |
| 5 | TP_ITEM_PREDEFINIDO | VARCHAR2 | Y | TIPO DO ITEM PREDEFINIDO. TIPOS POSSIVEIS: VOMITO (VOM), DIURESE(DIU), SUDORESE(SUD), EVACUAÇÃO(E... |
| 6 | CD_FOR_APL | VARCHAR2 | Y | TIPO DA FORMA DE APLICACAO |
| 7 | SN_ITEM_FIXO | VARCHAR2 | N | INDICA SE O ITEM SERÁ EXIBIDO FIXO |
| 8 | DS_ITEM_PREDEFINIDO | VARCHAR2 | Y | DESCRIÇÃO DO ITEM PRÉ-DEFINIDO. |
| 9 | TP_LANCAMENTO | VARCHAR2 | Y | TIPO DE LANÇAMENTO PARA ITEM PRÉ-DEFINIDO. TIPOS POSSIVEIS: CRUZ, AUSENTE_PRESENTE, NUMERICO, FOR... |
| 10 | SN_SOMA_TOTAL_BALANCO | VARCHAR2 | Y | CONFIGURAÇÃO QUE INDICA SE O VALOR DO ITEM DEVE SER SOMADO AO TOTAL DO BALANÇO. |
| 11 | CD_SINAL_VITAL | NUMBER | Y | CHAVE DA TABELA DBAMV.SINAL_VITAL. |
| 12 | CD_UNI_PRO | NUMBER | Y | COLUNA PARA CONSOLIDAR O CODIGO DA UNIDADE DO PRODUTO ASSOCIADA AO ITEM. |
| 13 | SN_ATIVO | VARCHAR2 | Y | Coluna para ativar ou desativar a configuracao do item pre-definido. |

---

## DBAMV.PW_CONFIG_ITENS_REDUCAO_QUANTD
> Representa os itens de prescrição que sofrerão alteração na sua quantidade quando um percentual de redução for aplicado

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_ITENS_REDUCAO_QUANTD | NUMBER | N | Chave primária da tabela |
| 2 | CD_TIP_PRESC | NUMBER | N | Código do item de prescrição |
| 3 | CD_CONFIG_ESQMA_REDUCAO_QUANTD | NUMBER | N | Chave estrangeira da configuração pai por esquema |

---

## DBAMV.PW_CONFIG_PADRAO_PRONT_VIP
> Tabela para armazenar a configurao padro para o pronturio vip

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_PADRAO_PRONT_VIP | NUMBER | N | Cdigo sequencial da configurao padro (PK) |
| 2 | CD_MULTI_EMPRESA | NUMBER | N | Cdigo da empresa configurada com a configurao padro |
| 3 | TP_AUTORIZACAO | VARCHAR2 | N | O tipo de autorizacao padrao do paciente. Podendo ser (DIRETA, SENHA, JUSTIFICATIVA, NEGADA) |

---

## DBAMV.PW_CONFIG_PEND_DOC_TIP_DOC
> TABELA DE CONFIGURAÇÃO DO VINCULO DA PENDENCIA DO DOCUMENTO COM O TIPO DE DOCUMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_PEND_DOC_TIP_DOC | NUMBER | N | CÓDIGO DA CHAVE PRIMARIA DA TABELA. |
| 2 | CD_TIPO_DOCUMENTO | NUMBER | N | CÓDIGO DA PW_TIPO_DOCUMENTO. |
| 3 | TP_PRESTADOR_PENDENCIA | VARCHAR2 | Y | TIPO DO PRESTADOR CONSIDERADO NA PENDENCIA. |
| 4 | SN_PENDENCIA_IMPEDITIVA | VARCHAR2 | Y | FLAG QUE INDICA SE O DOCUMENTO IRÁ GERAR PENDENCIA OU NÃO. |
| 5 | CD_TIPO_DOCUMENTO_POSSUI_PEND | NUMBER | N | CÓDIGO DA PW_TIPO_DOCUMENTO QUE CONTÉM O TIPO DO DOCUMENTO PAI DA A LISTA DE PENDENCIAS. |

---

## DBAMV.PW_CONFIG_PERG_QUEST
> Tabela que guarda perguntas do questionário

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_PERG_QUEST | NUMBER | N | Código da pergunta do questionário |
| 2 | DS_CONFIG_PERG_QUEST | VARCHAR2 | N | Descrição da pergunta do questionário |
| 3 | CD_CONFIG_QUESTIONARIO | NUMBER | N | Código do questionário |
| 4 | NR_ORDEM | NUMBER | N | Ordem da pergunta |
| 5 | SN_OBRIGATORIO | VARCHAR2 | N | Informa se é obrigatório: S - Sim, N - Não |
| 6 | SN_ATIVO | VARCHAR2 | N | Informa se está ativo: S - Sim, N - Não |

---

## DBAMV.PW_CONFIG_PESO_RESP_QUEST
> Tabela que guarda as faixas de valores e os pesos das respostas numéricas

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_PESO_RESP_QUEST | NUMBER | N | Código do peso da resposta |
| 2 | CD_CONFIG_RESP_QUEST | NUMBER | N | Descrição da resposta |
| 3 | VL_MINIMO | NUMBER | Y | Valor mínimo possível |
| 4 | VL_MAXIMO | NUMBER | Y | Valor máximo possível |
| 5 | NR_PESO | NUMBER | N | Peso dos valores possíveis para a resposta |

---

## DBAMV.PW_CONFIG_QUESTIONARIO
> Tabela de questionários

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_QUESTIONARIO | NUMBER | N | Código do questionário |
| 2 | DS_CONFIG_QUESTIONARIO | VARCHAR2 | N | Descrição do questionário |
| 3 | CD_CONFIG_GRUPO_QUEST | NUMBER | N | Código do grupo do questionário |
| 4 | NR_ORDEM | NUMBER | N | Ordem do questionário |
| 5 | SN_ATIVO | VARCHAR2 | N | Informa se está ativo: S - Sim, N - Não |

---

## DBAMV.PW_CONFIG_RESP_QUEST
> Tabela que guarda as respostas das perguntas ligadas aos questionários

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_RESP_QUEST | NUMBER | N | Código da resposta da pergunta ligada ao questionário |
| 2 | DS_CONFIG_RESP_QUEST | VARCHAR2 | N | Descrição da resposta da pergunta ligada ao questionário |
| 3 | CD_CONFIG_PERG_QUEST | NUMBER | N | Código da pergunta ligada ao questionário |
| 4 | TP_RESPOSTA | VARCHAR2 | N | Tipo da resposta: M - Múltipla escolha, T - Texto, U - Única escolha, N- Numérico |
| 5 | NR_ORDEM | NUMBER | N | Ordem da resposta |
| 6 | SN_ATIVO | VARCHAR2 | N | Informa se está ativa: S - Sim, N - Não |

---

## DBAMV.PW_CONFIG_RESUL_EXAME_PRESC
> Tabela para armazenar os detalhes da configurações de alertas nas prescrição exames x itens

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_RESUL_EXAME_PRESC | NUMBER | N | Código do item do alerta chave primaria |
| 2 | CD_TIP_PRESC | NUMBER | Y | Código do item de prescrição a ser relacionado com exames |
| 3 | QT_ITEM | NUMBER | Y | quandidade do item prescrito |
| 4 | CD_UNI_PRO | NUMBER | Y | unidade do produto |
| 5 | TP_SEXO | VARCHAR2 | Y | sexo do paciente M - masculino, f - feminino, i - indefinido, g - ignorado, a - ambos |
| 6 | NR_IDADE_MAXIMA | NUMBER | Y | Idade máxima do alerta |
| 7 | NR_IDADE_MINIMA | NUMBER | Y | Idade minina do alerta |
| 8 | QT_DIAS_VALIDADE_EXAME | NUMBER | Y | Quantidade de dias da validade do exame |
| 9 | SN_ATIVO | VARCHAR2 | Y | Alerta ativo Sim ou Não |
| 10 | DH_CRIACAO | DATE | Y | Data e hora da criação do alerta |
| 11 | NR_IDADE_MESES_MAXIMA | NUMBER | Y | Quantidade máxima de meses de vida que o paciente precisa ter |
| 12 | NR_IDADE_DIAS_MAXIMA | NUMBER | Y | Quantidade máxima de dias de vida que o paciente precisa ter |
| 13 | NR_IDADE_MESES_MINIMA | NUMBER | Y | Quantidade mínima de meses de vida que o paciente precisa ter |
| 14 | NR_IDADE_DIAS_MINIMA | NUMBER | Y | Quantidade mínima de dias de vida que o paciente precisa ter |

---

## DBAMV.PW_CONFIG_SAE_ATIVIDADE_INTER
> TABELA PARA CADASTRO DOS RESULTADOS DE ENFERMAGEM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_SAE_ATIVIDADE_INTER | NUMBER | N | CHAVE RPIMARIA DA TABELA CD_CONFIG_SAE_ATIVIDADE_INTER |
| 2 | CD_CONFIG_SAE_INTERVENCAO_ENF | NUMBER | N | CODIGO DA INTERVENCAO DESTA ATIVIDADE |
| 3 | CD_COMPON | NUMBER | Y | CODIGO DO COMPONENTE QUE REPRESENTA A ATIVIDADE |
| 4 | CODIGO | VARCHAR2 | Y | CODIGO DA ATIVIDADE DA INTERVENCAO |
| 5 | NM_ATIVIDADE | VARCHAR2 | N | INDICADOR DO RESULTADO DO RESULTADO |
| 6 | CD_TIP_PRESC | NUMBER | Y | CODIGO DO ITEM DA PRESCRICAO VINCULADO A ESTA ATIVIDADE |
| 7 | SN_ATIVO | VARCHAR2 | N | INDICA SE O REGISTRO ESTÁ ATIVO NO SISTEMA |

---

## DBAMV.PW_CONFIG_SAE_DIAGNOSTICO_RES
> TABELA PARA CADASTRO DE CONFIGURACAO DOS RESULTADOS VINCULADOS AOS DIAGNOSTICOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_SAE_DIAGNOSTICO_RES | NUMBER | N | CODIGO DA CHAVE PRIMARIA DA TABELA DE LIGACAO PW_CONFIG_SAE_DIAGNOSTICO_RES |
| 2 | CD_DIAGNOSTICO | NUMBER | N | CODIGO DA CHAVE PRIMARIA DA TABELA DE DIAGNOSTICO - FK |
| 3 | CD_CONFIG_SAE_RESULTADO_ENFER | NUMBER | N | CODIGO DA TABELA DO RESULTADO-FK |

---

## DBAMV.PW_CONFIG_SAE_ESCALA_RESULTADO
> TABELA PARA CADASTRO DAS ESCALAS DOS RESULTADOS DE ENFERMAGEM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_SAE_ESCALA_RESULTADO | NUMBER | N | CHAVE PRIMARIA DA TABELA PW_CONFIG_SAE_ESCALA_RESULTADO |
| 2 | CODIGO | VARCHAR2 | Y | CODIGO DA ESCALA |
| 3 | CD_CONFIG_SAE_TIPO_ESCALA_RES | NUMBER | N | TIPO DA ESCALA |
| 4 | NM_ESCALA | VARCHAR2 | N | TITULO DA ESCALA |
| 5 | VALOR_RESULTADO | NUMBER | Y | VALOR DA ESCALA LIKERT |

---

## DBAMV.PW_CONFIG_SAE_INDICADOR_RESULT
> TABELA PARA CADASTRO DOS RESULTADOS DE ENFERMAGEM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_SAE_INDICADOR_RESULT | NUMBER | N | CHAVE RPIMARIA DA TABELA PW_CONFIG_SAE_INDICADOR_RESULT |
| 2 | CD_CONFIG_SAE_RESULTADO_ENFER | NUMBER | N | CODIGO DO RESULTADO DA INDICACAO |
| 3 | CODIGO | VARCHAR2 | Y | CODIGO DO INDICADOR DO RESULTADO |
| 4 | NM_INDICADOR | VARCHAR2 | N | INDICADOR DO RESULTADO DO RESULTADO |
| 5 | SN_ATIVO | VARCHAR2 | N | INDICA SE O REGISTRO ESTÁ ATIVO NO SISTEMA |

---

## DBAMV.PW_CONFIG_SAE_INTERVENCAO_ENF
> TABELA PARA CADASTRO DOS RESULTADOS DE ENFERMAGEM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_SAE_INTERVENCAO_ENF | NUMBER | N | CHAVE RPIMARIA DA TABELA PW_CONFIG_SAE_INTERVENCAO_ENF |
| 2 | CODIGO | VARCHAR2 | Y | CODIGO DA INTERVERSAO |
| 3 | NM_INTERVENCAO | VARCHAR2 | N | TITULO DA INTERVERSAO |
| 4 | CD_CLASSE | NUMBER | Y | CLASSE DA INTERVERSAO |
| 5 | DS_DEFINICAO | VARCHAR2 | Y | DEFINICAO DA INTERVERSAO |
| 6 | CD_TIP_PRESC | NUMBER | Y |  |
| 7 | SN_ATIVO | VARCHAR2 | N | INDICA SE O REGISTRO ESTÁ ATIVO NO SISTEMA |

---

## DBAMV.PW_CONFIG_SAE_RESULTADO_ENFER
> TABELA PARA CADASTRO DOS RESULTADOS DE ENFERMAGEM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_SAE_RESULTADO_ENFER | NUMBER | N | CHAVE PRIMARIA DA TABELA PW_CONFIG_SAE_RESULTADO_ENFER |
| 2 | NM_RESULTADO | VARCHAR2 | N | NOME DO RESULTADO |
| 3 | CODIGO | VARCHAR2 | Y | CODIGO DO RESULTADO |
| 4 | CD_CLASSE | NUMBER | Y | CLASSE DO RESULTADO - FK |
| 5 | DS_DEFINICAO | VARCHAR2 | Y | DEFINICAO DO RESULTADO |
| 6 | CD_CONFIG_SAE_TIPO_ESCALA_RES | NUMBER | Y | ESCALA DO RESULTADO - FK |
| 7 | SN_ATIVO | VARCHAR2 | N | INDICA SE O REGISTRO ESTÁ ATIVO NO SISTEMA |

---

## DBAMV.PW_CONFIG_SAE_RESULTADO_ESCALA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_SAE_RESULTADO_ESCALA | NUMBER | N | Chave primária da tabela |
| 2 | CD_CONFIG_SAE_RESULTADO_ENFER | NUMBER | N | Código do resultado. |
| 3 | CD_CONFIG_SAE_TIPO_ESCALA_RES | NUMBER | N | Código da tabela |

---

## DBAMV.PW_CONFIG_SAE_RESULTADO_INTERV
> TABELA PARA CADASTRO DE CONFIGURACAO DOS RESULTADOS VINCULADOS AS INTERVENSOES

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_SAE_RESULTADO_INTERV | NUMBER | N | CODIGO DA CHAVE PRIMARIA DA TABELA DE LIGACAO PW_CONFIG_SAE_RESULTADO_INTERV |
| 2 | CD_CONFIG_SAE_INTERVENCAO_ENF | NUMBER | N | CODIGO DA TABELA DE CONFIGURACAO DA INTERVERSAO - FK |
| 3 | CD_CONFIG_SAE_RESULTADO_ENFER | NUMBER | N | CODIGO DA TABELA DE CONFIGURACAO DO RESULTADO-FK |

---

## DBAMV.PW_CONFIG_SAE_RESULT_INT_GERAL
> TABELA PARA CADASTRO DE CONFIGURACAO DA ATIVACAO DO USO DA SUGESTAO DE RESULTADOS E O USO DA NNN.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_SAE_RESULT_INT_GERAL | NUMBER | N | CODIGO DA CHAVE PRIMARIA DA TABELA PW_CONFIG_SAE_RESULT_INT_GERAL |
| 2 | SN_ATIVA_SUGESTAO_RESULTADO | VARCHAR2 | N | SE OS RESULTADOS SERAO SUGERIDOS NO MESMO MOMENTO DA SUGESTAO DE PRESCRICAO |
| 3 | SN_ATIVA_NNN_VINCULO_RESUL_INT | VARCHAR2 | N | SE AS INTERVENSOES SERAO VINCULADAS OS RESULTADOS E NÃO SOMENTE AO DIAGNOSTICO DE ENFERMAGEM. |
| 4 | TP_PERMISSAO_ALTERACAO | VARCHAR2 | N | SE SERÁ PERMITIDO ALTERAR OS RESULTADOS OBTIDOS OU OS DIAS. |

---

## DBAMV.PW_CONFIG_SAE_TIPO_ESCALA_RES
> TABELA PARA CADASTRO DO TIPO DAS DAS ESCALAS DOS RESULTADOS DE ENFERMAGEM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_SAE_TIPO_ESCALA_RES | NUMBER | N | CHAVE PRIMARIA DA TABELA |
| 2 | DS_TP_ESCALA | VARCHAR2 | N | DESCRICAO DA ESCALA |

---

## DBAMV.PW_CONFIG_SETOR_BALANCO_HIDR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_SETOR_BALANCO_HIDR | NUMBER | N | CHAVE PRIMARIA DA TABELA |
| 2 | CD_SETOR | NUMBER | Y | VINCULO COM O SETOR QUE TERA AS CONFIGURAÇÕES DEFINIDAS |
| 3 | QT_TURNO | NUMBER | Y | INDICA A QUANTIDADE DE FECHAMENTOS PARCIAIS DOS TURNOS |
| 4 | SN_ATIVO | VARCHAR2 | N | INDICA SE AS CONFIGURAÇÕES DO BALANÇO HIDRICO ESTÃO ATIVAS NO SETOR. |
| 5 | SN_LANCAMENTO_POR_MINUTO | VARCHAR2 | Y | INDICA SE O POP UP DE MINUTO SERÁ EXIBIDO NO GRUPO |
| 6 | HR_FECHAMENTO | DATE | Y | INDICA A HORA DO FECHAMENTO DO BALANCO HIDRICO NO SERTOR. |
| 7 | NR_IDADE_PEDIATRIA | NUMBER | Y | IDADE QUE LIMITE CONSIDERADA COMO PACIENTES DE PEDIATRIA |
| 8 | QT_PESO_LIMITE_PEDIATRIA | NUMBER | Y | Coluna que indica o limite de peso para um paciente ser considerado como de pediatria, mesmo esta... |
| 9 | CD_UNIDADE_AFERICAO | NUMBER | Y | Coluna que indica a unidade de aferição padrão para o campo qt_peso_limite_pediatria |

---

## DBAMV.PW_CONFIG_SETOR_GRUPO_BAL_HID

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_SETOR_GRUPO_BAL_HID | NUMBER | N | CHAVE PRIMARIA DA TABELA |
| 2 | CD_CONFIG_SETOR_BALANCO_HIDR | NUMBER | Y |  |
| 3 | CD_CONFIG_GRUPO_BALANCO_HID | NUMBER | N |  |
| 4 | NR_ORDEM | NUMBER | Y | INDICA A ORDEM QUE O GRUPO SERA EXIBIDO NO BALANCO. |
| 5 | HR_FECHAMENTO | DATE | Y | INDICA SE O VINCULO DO GRUPO COM O SETOR ESTÁ ATIVO |
| 6 | SN_ATIVO | VARCHAR2 | N | INDICA SE O VINCULO DO GRUPO COM O SETOR ESTÁ ATIVO |

---

## DBAMV.PW_CONFIG_SETOR_PARECER_ENCM
> TABELA DE CONFIGURAÇÃO DAO VINCULO DAS ESPECIALIDADES COM AS SOLICITAÇÕES DE PARECER E ENCAMINHAMENTO DE PACIENTE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PARECER_ENCAMINHAMENTO | NUMBER | N | CÓDIGO DA CHAVE PRIMARIA DA TABELA. |
| 2 | CD_SETOR | NUMBER | N | CÓDIGO DO SETOR. |
| 3 | CD_ESPECIALIDADE | NUMBER | N | CÓDIGO DA ESPECIALIDADE. |
| 4 | TP_PARECER_ENCAMINHAMENTO | VARCHAR2 | N | TIPO DA TABELA. TIPOS POSSIVEIS PARECER (P) E ENCAMINHAMENTO(E) |
| 5 | TP_ATENDIMENTO | VARCHAR2 | Y | TIPO DO ATENDIMENTO. |

---

## DBAMV.PW_CONFIG_SOAP
> Tabla de configuracao SOAP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_SOAP | NUMBER | N | Código do SOAP |
| 2 | DS_CONFIG_SOAP | VARCHAR2 | N | Descrição do SOAP |
| 3 | SN_ATIVO | VARCHAR2 | N | Informa se está ativo: S - Sim, N - Não |
| 4 | CD_OBJETO | NUMBER | N | Informa o código do objeto |
| 5 | CD_CONFIG_SOAP_AFERICAO | NUMBER | N | Informa o código da  ligação com o objeto de aferição |
| 6 | TP_SOAP | VARCHAR2 | N | Informa o tipo do SOAP. SO - Subjetivo e Objetivo, SOAP - Subjetivo, Objetivo, Avaliação e Plano |

---

## DBAMV.PW_CONFIG_SOAP_AFERICAO
> Tabela que guarda o codigo da aferição que terá ligação com o SOAP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_SOAP_AFERICAO | NUMBER | N | Código da PK |
| 2 | CD_OBJETO | NUMBER | N | Informa o código do objeto do tipo Aferição |

---

## DBAMV.PW_CONFIG_SOAP_CRITICIDADE
> Tabela da criticidade do SOAP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CRITICIDADE_CONFIG | NUMBER | N | Código da criticidade |
| 2 | DS_CRITICIDADE_CONFIG | VARCHAR2 | N | Descrição da criticidade |
| 3 | CD_CONFIG_SOAP | NUMBER | N | Código do SOAP |
| 4 | DS_COR | VARCHAR2 | N | RGB da cor |
| 5 | SN_ATIVO | VARCHAR2 | N | Informa se está ativo: S - Sim, N - Não |

---

## DBAMV.PW_CONFIG_SOAP_EXAME
> Tabela que guarda o exame do SOAP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EXAME_CONFIG | NUMBER | N | Código PK |
| 2 | CD_EXA_LAB | NUMBER | Y | Código do exame laboratorial |
| 3 | CD_EXA_RX | NUMBER | Y | Código do exame de imagem |
| 4 | CD_CONFIG_SOAP | NUMBER | N | Código do SOAP |

---

## DBAMV.PW_CONFIG_SOLIC_EXAME_PRESC
> Tabela para armazenar configurações de alertas nas prescrição exames x itens

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_SOLIC_EXAME_PRESC | NUMBER | N | Código do item do alerta chave primaria |
| 2 | CD_TIP_PRESC | NUMBER | Y | Código do item de prescrição a ser relacionado com exames |
| 3 | SN_ATIVO | VARCHAR2 | Y | Campo que informa se o alerta estará ativo SIM/NÃO |

---

## DBAMV.PW_CONFIG_TEMPO_AUTZ_CONVENIO
> Representa o tempo de autorização do convênio para os protocolos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_TEMPO_AUTZ_CONVENIO | NUMBER | N | Chave primária da tabela |
| 2 | CD_CONVENIO | NUMBER | N | Código do convênio |
| 3 | QT_DIAS_AUTORIZACAO | NUMBER | N | Quantidade de dias para autorização dos protocolos |

---

## DBAMV.PW_CONFIG_TEMPO_AUTZ_CONV_PROT
> Representa as exceções por protocolo para o tempo de autorização do convênio

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_TEMPO_AUTZ_CONV_PROT | NUMBER | N | Chave primária da tabela |
| 2 | CD_CONFIG_TEMPO_AUTZ_CONVENIO | NUMBER | N | Chave estrangeira para configuração pai por convênio |
| 3 | CD_PROTOCOLO | NUMBER | N | Código do protocolo |
| 4 | QT_DIAS_AUTORIZACAO | NUMBER | N | Quantidade de dias para autorização do protocolo |

---

## DBAMV.PW_CONFIG_TIPO_MARCO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_TIPO_MARCO | NUMBER | N | Chave Primaria. |
| 2 | DS_NOME | VARCHAR2 | N | Descricao da Consulta do Marco. |
| 3 | DS_TIPO_MARCO | VARCHAR2 | N | Descricao do Marco. |
| 4 | DS_TIPO_MARCO_PADRAO | VARCHAR2 | N | Descricao predefinida dos Marcos no Sistema. |
| 5 | SN_EXCLUIR | VARCHAR2 | N | É possivel excluir o Marco. |
| 6 | SN_ATIVO | VARCHAR2 | N | Informa se o tipo de marco está ativo |

---

## DBAMV.PW_CONFIG_TURNO_GRUPO_BAL_HID

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_TURNO_GRUPO_BAL_HID | NUMBER | N | CHAVE PRIMARIA DA TABELA DBAMV.PW_CONFIG_TURNO_GRUPO_BAL_HID |
| 2 | CD_CONFIG_SETOR_BALANCO_HIDR | NUMBER | N | CHAVE ESTRANGEIRA PARA TABELA DBAMV.PW_CONFIG_SETOR_BALANCO_HIDR |
| 3 | NM_TURNO_GRUPO_BAL_HID | VARCHAR2 | N | NOME DO TURNO DO GRUPO DE BALANÇO HÍDRICO |
| 4 | DS_ABREVIACAO_TURNO_GRP_BAL | VARCHAR2 | Y | ABREVIACAO DO TURNO DO GRUPO DE BALANÇO HÍDRICO. |
| 5 | HR_INICIO | NUMBER | N | HORA INICIAL DO TURNO DO GRUPO DE BALANÇO HÍDRICO. |
| 6 | HR_FIM | NUMBER | N | HORA FINAL DO TURNO DO GRUPO DE BALANÇO HÍDRICO. |

---

## DBAMV.PW_CONF_DOC_OBGT_FAIXA_ETARIA
> Tabela para armazenar faixas etárias de obrigatoriedade de preenchimento de documentos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONF_DOC_OBGT_FAIXA_ETARIA | NUMBER | N | Chave identificadora da faixa etária |
| 2 | CD_DOCUMENTO | NUMBER | Y | Documento com obrigatoriedade de preenchimento |
| 3 | CD_SETOR | NUMBER | Y | Setor do Atendimento para a obrigatoriedade de preenchimento |
| 4 | CD_CONVENIO | NUMBER | Y | Convênio do Atendimento para a obrigatoriedade de preenchimento |
| 5 | CD_MULTI_EMPRESA | NUMBER | Y | Empresa para a obrigatoriedade de preenchimento |
| 6 | TP_SEXO | VARCHAR2 | Y | Sexo do paciente |
| 7 | TP_ATENDIMENTO | VARCHAR2 | Y | Tipo do atendimento |
| 8 | CD_TIP_PRESTA | NUMBER | Y | Tipo do Prestador |
| 9 | NR_ANO_INICIAL | NUMBER | Y | Ano inicial a ser levado em conta para a faixa etária da obrigatoriedade |
| 10 | NR_MES_INICIAL | NUMBER | Y | Mês inicial a ser levado em conta para a faixa etária da obrigatoriedade |
| 11 | NR_DIA_INICIAL | NUMBER | Y | Dia inicial a ser levado em conta para a faixa etária da obrigatoriedade |
| 12 | NR_ANO_FINAL | NUMBER | Y | Ano final a ser levado em conta para a faixa etária da obrigatoriedade |
| 13 | NR_MES_FINAL | NUMBER | Y | Mês final a ser levado em conta para a faixa etária da obrigatoriedade |
| 14 | NR_DIA_FINAL | NUMBER | Y | Dia final a ser levado em conta para a faixa etária da obrigatoriedade |

---

## DBAMV.PW_CONF_SETOR_SAE_PER_HIS_ENF
> TABELA DE CONFIGURAÇÃO DO VINCULO DO SETOR COM AS PERGUNTAS DO HISTORICO DO PACIENTE DO SAE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONF_SETOR_SAE_PER_HIS_ENF | NUMBER | N | CÓDIGO DA CHAVE PRIMARIA DA TABELA. |
| 2 | CD_SETOR | NUMBER | N | CÓDIGO DO SETOR. |
| 3 | CD_PERGUNTA | NUMBER | N | CÓDIGO DA ESPECIALIDADE. |

---

## DBAMV.PW_CONF_SOAP_ITEM_AFER
> Tabela que guarda as configuracoes de Afericao do SOAP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITEM_AFER_CONFIG | NUMBER | N | Código PK |
| 2 | CD_CONFIG_SOAP | NUMBER | N | Código do SOAP |
| 3 | CD_SINAL_VITAL | NUMBER | N | Código do sinal vital |
| 4 | NR_ORDEM | NUMBER | Y | Número de ordem |
| 5 | SN_EXIBE_ITEM | VARCHAR2 | N | Informa se exibe o item: S - Sim, N - Não |
| 6 | SN_OBRIGA_ITEM | VARCHAR2 | N | Informa se obriga o item: S - Sim, N - Não |
| 7 | SN_EXIBE_LOCAL | VARCHAR2 | N | Informa se exibe local do item: S - Sim, N - Não |
| 8 | SN_OBRIGA_LOCAL | VARCHAR2 | N | Informa se obriga local do item: S - Sim, N - Não |
| 9 | SN_EXIBE_POSICAO | VARCHAR2 | N | Informa se exibe posição do item: S - Sim, N - Não |
| 10 | SN_OBRIGA_POSICAO | VARCHAR2 | N | Informa se obriga posição do item: S - Sim, N - Não |

---

## DBAMV.PW_CONTAB_ACESSO_PRONTUARIO
> Tabela para armazenar a contabilizacao de acessos dos prestadores ao pronturio vip

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONTAB_ACESSO_PRONTUARIO | NUMBER | N | Codigo sequencial (PK) |
| 2 | CD_PRESTADOR | NUMBER | N | Codigo do prestador |
| 3 | CD_ATENDIMENTO | NUMBER | N | Codigo do atendimento |
| 4 | DH_ACESSO | DATE | Y | Data do primeiro acesso realizado pelo prestador |
| 5 | NR_ACESSO | NUMBER | Y | Numero de acessos realizados pelo prestador ate a criacao de algum documento clinico |
| 6 | DH_CRIACAO_DOCUMENTO | DATE | Y | Data de cricao do documento clinico |

---

## DBAMV.PW_CONTROLE_DOSE
> Tabela que armazena as regras de superdosagem

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONTROLE_DOSE | NUMBER | N | Identificador da tabela de controle das regras de superdosagem. |
| 2 | CD_TIP_PRESC | NUMBER | N | Identificador do item de prescric?o que vai ter a validac?o da dosagem. |
| 3 | QT_IMPEDITIVO_MAX | NUMBER | Y | Limite absurdo, que n?o pode ser prescrito. |
| 4 | QT_ALERTA_MAX | NUMBER | Y | Quantidade que ja deve ser alertado da superdosagem. |
| 5 | CD_UNI_PRESC | NUMBER | Y | Codigo da unidade de prescric?o (quando n?o tem produto no item). |
| 6 | CD_UNI_PRO | NUMBER | Y | Codigo da unidade do produto associado ao item. |
| 7 | SN_PESO | VARCHAR2 | Y | Se o limite considera o peso (em KG). |
| 8 | TP_PERIODO | VARCHAR2 | Y | Indica o tipo o periodo em que a quantidade dada n?o pode ultrapassar. |
| 9 | NR_DIAS | NUMBER | Y | Controlar pedidos frequentes de exames de alto custo em curto periodo. |
| 10 | NR_IDADE_MAXIMA | NUMBER | Y | Gravar a idade em meses, mas exibir em tela o componente em anos e meses. |
| 11 | NR_IDADE_MINIMA | NUMBER | Y | Gravar a idade em meses, mas exibir em tela o componente em anos e meses. |
| 12 | NR_PESO_MINIMO | NUMBER | Y | Deve ser considerado o peso em kg (intervalo minimo). |
| 13 | NR_PESO_MAXIMO | NUMBER | Y | Deve ser considerado o peso em kg (intervalo maximo). |
| 14 | DS_ALERTA_MAX | VARCHAR2 | Y | Exibido no momento que a condic?o de superdosagem for atingido. |
| 15 | QT_IMPEDITIVO_MIN | NUMBER | Y |  |
| 16 | QT_ALERTA_MIN | NUMBER | Y |  |
| 17 | DS_ALERTA_MIN | VARCHAR2 | Y |  |
| 18 | SN_ARREDONDA_PRESC_TRAT | VARCHAR2 | Y | Deverá refletir no arredondamento dos valores na Prescrição de Tratamento quando o limite impedit... |
| 19 | SN_ALERTA_PRESC_TRAT | VARCHAR2 | Y | Gerar alerta de arredondamento em MVPEP_PRESCRICAO_TRATAMENTO quando ocorrer o arredondamento por... |
| 20 | QT_DOSE_PADRAO_MIN | NUMBER | Y | Quantidade dose padrão mínima |
| 21 | QT_DOSE_PADRAO_MAX | NUMBER | Y | Quantidade dose padrão máxima |

---

## DBAMV.PW_CONTROLE_SINC_PRONT_PAC
> Tabela responsável por controlar a execução do sincronizador de prontuários do PEP 2

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PACIENTE | NUMBER | N | Código do paciente (PK) (FK) |
| 2 | DH_INICIO_PROCESSAMENTO | DATE | N | Data/hora de início do processamento |
| 3 | TP_PROCESSO | VARCHAR2 | N | Tipo do processamento que pode ser 'SINCRONIZAR' ou 'LIMPAR' |
| 4 | CD_CONTROL_SINC | NUMBER | N |  |

---

## DBAMV.PW_CONVENIO_TIP_PRESC
> Esta tabela é responsável por armazenar os convênios associados ao item e seus respectivos tipos de permissão

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONVENIO_TIP_PRESC | NUMBER | N |  |
| 2 | CD_TIP_PRESC | NUMBER | N | Código do Item/Componente disponível para prescrição |
| 3 | CD_CONVENIO | NUMBER | N | Código do Convênio |
| 4 | TP_PERMISSAO | VARCHAR2 | N | P (PERMITIDO), N (NÃO PERMITIDO) |

---

## DBAMV.PW_CRITERIO
> Repositório geral de critérios

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CRITERIO | NUMBER | N | Codigo de identificação do criterio |
| 2 | CD_TIPO_CRITERIO | NUMBER | N | Codigo de identificação do tipo de criterio |
| 3 | CD_GRUPO_CRITERIO | NUMBER | N | Codigo de identificação do grupo de criterio |
| 4 | VL_UNICO | VARCHAR2 | Y | Valor único para comparação do critério |
| 5 | VL_INICIAL | NUMBER | Y | Valor inicial para faixa de comparação do critério |
| 6 | VL_FINAL | NUMBER | Y | Valor final para faixa de comparação do critério |
| 7 | DS_IDENTIFICADOR_CRITERIO | VARCHAR2 | Y | Descrição de identificação do critério para formula |
| 8 | DS_IDENTIFICADOR_PEP | VARCHAR2 | Y | Identificação do critério visualizada no sistema |
| 9 | VL_VALIDADE | NUMBER | Y | Tipo de validade do critério |
| 10 | TP_VALIDADE | VARCHAR2 | Y | Valor da validade do critério |
| 11 | DS_SQL | VARCHAR2 | Y | Consulta SQL utilizada pelo critério |

---

## DBAMV.PW_CRITERIO_PROTOCOLO
> Condições para que um paciente seja considerado compatível com o protocolo.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CRITERIO_PROTOCOLO | NUMBER | N | Código sequencial. |
| 2 | CD_TIPO_CRITERIO | NUMBER | Y | Código relacionado ao tipo de critério. |
| 3 | CD_ALERTA_PROTOCOLO | NUMBER | N | Código relacionado ao alerta do protocolo, tabela principal. |
| 4 | CD_RELACIONADO | VARCHAR2 | Y | Código do registro relacionado, dependendo do tipo. |
| 5 | CD_UNIDADE | VARCHAR2 | Y | Código da Unidade de medida. |
| 6 | DS_UNIDADE | VARCHAR2 | Y | Descrição da Unidade de medida. |
| 7 | VL_VALOR | VARCHAR2 | Y | Valor fixo para avaliar compatibilidade. |
| 8 | VL_INICIAL | NUMBER | Y | Valor inicial da faixa de valores para avaliar a compatibilidade. |
| 9 | VL_FINAL | NUMBER | Y | Valor final da faixa de valores para avaliar a compatibilidade. |
| 10 | DS_IDENTIFICADOR | VARCHAR2 | Y | Identificador do criterio para que seja utiliado na fórmula da tabela PW_ALERTA_PROTOCOLO. |
| 11 | QT_VALIDADE | NUMBER | Y | Tempo retroativo em dias em que o critério deve ser atendido. |
| 12 | DS_SQL | VARCHAR2 | Y | Consulta SQL de resultado único para o tipo SQL. |
| 13 | DS_CAMPO_EXAME_LAB | VARCHAR2 | Y | Campo do exame que será avaliado, quando o tipo for exame. |
| 14 | DS_EXIBICAO | VARCHAR2 | Y | Valor que será usado para exibição do critério em tela no PEP2 |

---

## DBAMV.PW_CRITERIO_VALOR_PAR_CONSULT
> Repositório geral dos valores dos parâmetros de critérios

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CRITERIO_VALOR_PAR_CONSULT | NUMBER | N | Chave relacional - Parâmetro Critério FK |
| 2 | CD_CRITERIO | NUMBER | N | Chave relacional - Critério FK |
| 3 | CD_TIPO_CRITERIO_PARAM_CONSULT | NUMBER | N | Chave relacional - Tipo Critério FK |
| 4 | VL_PARAMETRO | VARCHAR2 | Y | Valor do parâmetro |
| 5 | DS_PARAMETRO | VARCHAR2 | Y | Descrição do parâmetro |

---

## DBAMV.PW_CURVA_CRESCIMENTO_FAIXA
> Tabela que armazena os valores de Normalidade baseado na curva de crescimento da OMS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | TP_SEXO | VARCHAR2 | Y | Filtro, para indicar a qual sexo pode ser usado este gráfico. Valores Permitidos: (M)asculino, (F... |
| 2 | TP_AFERICAO | VARCHAR2 | Y | Classificação interna do gráfico para referência de consultas padronizadas |
| 3 | NR_MES | NUMBER | Y | Indica o mes da referência para ser usado no eixo Y do gráfico |
| 4 | NM_FAIXA | VARCHAR2 | Y | Indica a descrição para ser usado no eixo X do gráfico |
| 5 | VL_FAIXA | NUMBER | Y | Valor a ser plotado no gráfico, de acordo com o mes e a faixa |

---

## DBAMV.PW_CURVA_REFERENCIA
> Tabela responsável por guardar as informações das curvas de referências do gráfico

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CURVA_REFERENCIA | NUMBER | N | Codigo sequencial identificador do registro |
| 2 | CD_FAIXA_ETARIA_GRAFICO | NUMBER | N | FK para a tabela responsável por guardar as informações das faixas etárias do gráfico de curva de... |
| 3 | TP_CURVA | VARCHAR2 | N | Define se a curva é do tipo P - Percentil e S - Score Z |
| 4 | NM_CURVA | VARCHAR2 | N | Nome da curva de referência |
| 5 | TP_SEXO | VARCHAR2 | N | Sexo a que se refere a curva de referência F- Feminino, M - Masculino, A - Ambos |
| 6 | DS_RGB_HEXADECIMAL | VARCHAR2 | N | Rgb hexadecimal da cor usada para a curva de referência |
| 7 | TP_ESTILO | VARCHAR2 | Y | Define se a linha que representa a curva no gráfico deve ser L - Linha ou P - Pontilhada |
| 8 | SN_VISIVEL | VARCHAR2 | Y | Define se a linha está visível ou não no gráfico |
| 9 | NR_ORDEM | NUMBER | Y | Ordem de exibição da curva de crescimento na legenda do gráfico |

---

## DBAMV.PW_DEPARA
> tabela responsável por guardar os de-paras usados pelo pep2

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DEPARA | NUMBER | N | código sequêncial da tabela (pk) |
| 2 | CD_MULTI_EMPRESA | NUMBER | Y | código da multi empresa a qual o depara refere-se |
| 3 | CD_IDENTIFICADOR | VARCHAR2 | N | código identificador do de-para, este identificador é utilizado para especificar sobre o que se r... |
| 4 | DH_CRIACAO | DATE | N | data de criação do de-para |
| 5 | CD_DEPARA_MV | VARCHAR2 | N | código de-para do lado da mv, este código refere-se ao registro que está sendo especificado neste... |
| 6 | DS_DEPARA_MV | VARCHAR2 | Y | descrição do de-para do lado da mv, esta coluna deve ser usada caso exista alguma descrição espec... |
| 7 | CD_SISTEMA_INTEGRADO | NUMBER | Y | código do sistema integrado ao pep2 (fk) |
| 8 | CD_DEPARA_SISTEMA_INTEGRADO | VARCHAR2 | N | código de-para do lado do sistema integrado, este código refere-se ao registro que está sendo esp... |
| 9 | DS_DEPARA_SISTEMA_INTEGRADO | VARCHAR2 | Y | descrição do de-para do lado do sistema integrado, esta coluna deve ser usada caso exista alguma ... |

---

## DBAMV.PW_DE_PARA_FOR_APL
> Tabela DE-PARA para a integração com a  Forma de Aplicação

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CHAVE | NUMBER | N |  |
| 2 | CD_DE_PARA_FOR_APL | VARCHAR2 | N | Código da integração |
| 3 | DS_DE_PARA_FOR_APL | VARCHAR2 | Y | Descrição da integração |
| 4 | CD_FOR_APL | VARCHAR2 | N | Código da  Forma de Aplicação |

---

## DBAMV.PW_DE_PARA_TIP_FRE
> Tabela DE-PARA para a integração com a Frequência

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CHAVE | NUMBER | N |  |
| 2 | CD_DE_PARA_TIP_FRE | VARCHAR2 | N | Código da integração |
| 3 | DS_DE_PARA_TIP_FRE | VARCHAR2 | Y | Descrição da integração |
| 4 | CD_TIP_FRE | NUMBER | N | Código da frequência |

---

## DBAMV.PW_DE_PARA_TIP_PRESC
> Tabela DE-PARA para a integração com o Item da Prescrição

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CHAVE | NUMBER | N |  |
| 2 | CD_DE_PARA_TIP_PRESC | VARCHAR2 | N | Código da integração |
| 3 | DS_DE_PARA_TIP_PRESC | VARCHAR2 | Y | Descrição da integração |
| 4 | CD_TIP_PRESC | NUMBER | N | Código do Item da Prescrição |
| 5 | CD_PRODUTO | NUMBER | N | Código do produto |
| 6 | CD_TIP_PRESC_MICROMEDEX | NUMBER | Y | CÃ³digo da integraÃ§Ã£o Micromedex |
| 7 | DS_TIP_PRESC_MICROMEDEX | VARCHAR2 | Y | DescriÃ§Ã£o da integraÃ§Ã£o Micromedex |
| 8 | DS_PRINCIPIO_ATIVO | VARCHAR2 | Y | DescriÃ§Ã£o da integraÃ§Ã£o para o InfoButton |

---

## DBAMV.PW_DIAGNOSTICO_ATENDIME_CID
> Armazena as informac?es historicas dos cid's secundaarios.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PW_REGISTRO_CID | NUMBER | N | Indica o codigo dos registros da tabela de registro de cid. |
| 2 | CD_ATENDIMENTO | NUMBER | N |  |
| 3 | CD_CID | VARCHAR2 | N | Codico do cid segundario. |
| 4 | CD_DIAGNOSTICO_ATENDIME | NUMBER | N | Codigo da diagnostico atendimente referente aquele registro. |

---

## DBAMV.PW_DIAGNOSTICO_ATENDIME_SNOMED
> Armazena as informações históricas dos diagnosticos secundários em SNOMED-CT.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PW_REGISTRO_SNOMED | NUMBER | N | Indica o código dos registros da tabela de registro de SNOMED. |
| 2 | CD_ATENDIMENTO | NUMBER | N |  |
| 3 | CD_SNOMEDCT | NUMBER | N | Códico do snomed secundário. |
| 4 | CD_DIAGNOSTICO_ATENDIME | NUMBER | N | Código da tabela DIAGNOSTICO_ATENDIME referenciada. |
| 5 | CD_USUARIO | VARCHAR2 | Y |  |

---

## DBAMV.PW_DICAS_SAUDE_ATP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DICAS_SAUDE | NUMBER | N |  |
| 2 | DS_DICAS_SAUDE | VARCHAR2 | N |  |
| 3 | SN_ATIVO | VARCHAR2 | N |  |

---

## DBAMV.PW_DISPOSITIVO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DISPOSITIVO | NUMBER | N | Código do dispositivo. |
| 2 | DS_DISPOSITIVO | VARCHAR2 | N | Descrição do dispositivo. |
| 3 | SN_ATIVO | VARCHAR2 | N | Define se o dispositivo está ativo para uso. |
| 4 | CD_PRO_FAT | VARCHAR2 | Y | Codigo do procedimento do faturamento. |
| 5 | CD_PROCEDIMENTO_SIA | VARCHAR2 | Y | Codigo do procedimento ambulatorial SUS. |
| 6 | CD_PROCEDIMENTO_SIH | VARCHAR2 | Y | Codigo do procedimento hospitalar SUS. |

---

## DBAMV.PW_DISPOSITIVO_CONVENIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DISPOSITIVO_CONVENIO | NUMBER | N | Código do dispositivo por convênio. |
| 2 | CD_DISPOSITIVO | NUMBER | N | Código do dispositivo. |
| 3 | CD_CONVENIO | NUMBER | Y | Código do convênio. |
| 4 | CD_PRO_FAT | VARCHAR2 | Y | Codigo do procedimento do faturamento. |
| 5 | CD_PROCEDIMENTO_SIA | VARCHAR2 | Y | Codigo do procedimento ambulatorial SUS. |
| 6 | CD_PROCEDIMENTO_SIH | VARCHAR2 | Y | Codigo do procedimento hospitalar SUS. |

---

## DBAMV.PW_DOADOR_RECEPTOR
> Armazena as informac?es adicionais tanto do receptor quanto do doador nos transplantes

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DOADOR_RECEPTOR | NUMBER | N | Indica o codigo dos registros da tabela de informac?es adicionais(pk). |
| 2 | CD_PACIENTE_RECEPTOR | NUMBER | N | Codigo do paciente receptor. |
| 3 | CD_PACIENTE_DOADOR | NUMBER | Y | Codigo do paciente doador. |
| 4 | DS_CENTRO_HEMODIALISE | VARCHAR2 | Y | Descric?o do centro de hemodialise, setor onde sera realizada a hemodialise. |
| 5 | TP_DIALISE | VARCHAR2 | Y | Tipo de Dialise - HED: Hemodialise , CAP: Dialise Peritonial Ambulatorial continua ou APD: Dialis... |
| 6 | TP_ACESSO | VARCHAR2 | Y | Tipo de acesso - CDL:Cateter duplo Lumen ou FAV: Fistula Arteriovenosa |
| 7 | DS_OUTROS_RESULTADOS | VARCHAR2 | Y | Descric?o de outros exames n?o apresentados em tela. |
| 8 | CD_DOCUMENTO_CLINICO | NUMBER | Y | O codigo do documento clinico, setado via trigger (fk) |

---

## DBAMV.PW_DOCUMENTO_ACAO
> Tabela que armazena as varias ac?es para um documento autenticado

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DOCUMENTO_ACAO | NUMBER | N | Identificador da tabela de PW_DOCUMENTO_ACAO |
| 2 | CD_DOCUMENTO_AUTENTICADO | NUMBER | N | Documento ao qual pertence essa ac?o a ser assinada |

---

## DBAMV.PW_DOCUMENTO_AUTENTICADO
> Tabela que armazena os documento de ac?o clinica autenticados

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DOCUMENTO_AUTENTICADO | NUMBER | N | Identificador do documento de ac?o clinica |
| 2 | CD_TIPO_DOCUMENTO_AUTENTICADO | NUMBER | N |  |
| 3 | VL_PK_TABELA_ACAO_CLINICA | VARCHAR2 | N | Valor do identificador do registro da ac?o clinica associada ao documento |
| 4 | CD_PRESTADOR | NUMBER | N | Identificador do prestador que gerou o documento de ac?o clinica |
| 5 | CD_PACIENTE | NUMBER | N | Identificador do paciente ao qual pertencem as informac?es do documento de ac?o clinica |
| 6 | DH_AUTENTICACAO_DOCUMENTO | DATE | N | Instante em que o documento de ac?o clinica foi autenticado |
| 7 | LO_DOCUMENTO_AUTENTICADO | BLOB | Y | Contem o documento de ac?o clinica autenticado |
| 8 | LO_MARCA_DAGUA_DOCUMENTO | CLOB | Y | Contem a marca dagua do documento de ac?o clinica |

---

## DBAMV.PW_DOCUMENTO_CLINICO
> Armazena dados b?!sicos sobre todos os documentos gerados atrav??s do MVPEP ou de sistemas que geram os mesmos documentos do MVPEP, esta tabela ?? populada e atualizada atrav??s de triggers nas tabelas que representam os documentos cl?-nicos, ex.: PRE_MED, RECEITA, AFERICAO, etc.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DOCUMENTO_CLINICO | NUMBER | N | O c??digo do documento cl?-nico (pk) |
| 2 | CD_TIPO_DOCUMENTO | NUMBER | N | O c??digo do tipo de documento (fk) |
| 3 | CD_DOCUMENTO_DIGITAL | NUMBER | Y | O c??digo do documento assinado, caso o documento j?! tenha sido assinado digitalmente, nulo indi... |
| 4 | CD_PACIENTE | NUMBER | Y | O c??digo do paciente ao qual o documento se refere (fk) |
| 5 | CD_ATENDIMENTO | NUMBER | Y | O c??digo do atendimento ao qual o documento se refere (fk) |
| 6 | CD_USUARIO | VARCHAR2 | Y | O c??digo do usu?!rio, ser?! sempre o mesmo que est?! na tabela original do documento (PRE_MED, P... |
| 7 | CD_PRESTADOR | NUMBER | Y | O c??digo do prestador, ser?! sempre o mesmo que est?! na tabela original do documento (PRE_MED, ... |
| 8 | TP_STATUS | VARCHAR2 | Y | O status do documento (ABERTO, FECHADO, ASSINADO=Assinado Digitalmente ou CANCELADO). Se for ASSI... |
| 9 | DH_REFERENCIA | DATE | Y | A data de refer??ncia do documento, nem todos os documentos utilizam |
| 10 | DH_CRIACAO | DATE | Y | A data de cria???#o do documento |
| 11 | DH_FECHAMENTO | DATE | Y | A data de fechamento do documento |
| 12 | DH_IMPRESSO | DATE | Y | A data em que o documento foi impresso |
| 13 | TP_EXTENSAO | VARCHAR2 | Y | Indica a extens?o do documento clinico |
| 14 | CD_SETOR | NUMBER | Y | Indica SETOR QUE o documento clinico foi criado. |
| 15 | CD_OBJETO | NUMBER | Y | Codigo do tipo de pagu objeto |
| 16 | CD_DOCUMENTO_CANCELADO | NUMBER | Y | O codigo do documento clinico cancelado. Quando o documento clinico e cancelado obrigatoriamente ... |
| 17 | NM_DOCUMENTO | VARCHAR2 | Y | Vers?o do documento no momento que ele foi criado. |
| 18 | NM_VERSAO_DOCUMENTO | VARCHAR2 | Y |  |
| 19 | DH_DOCUMENTO | DATE | Y | A data do documento. |
| 20 | CD_DOCUMENTO_CLINICO_NOVO | NUMBER | Y |  |
| 21 | CD_DOC_CLINICO_REFERENCIA | NUMBER | Y | Coluna que guarda o código do documento clínico a que o documento faz referência |
| 22 | CD_USUARIO_AUTORIZADOR | VARCHAR2 | Y | CÓDIGO DO USUÁRIO QUE AUTORIZOU O DOCUMENTO CLÍNICO. |
| 23 | SN_INTEGRA_GREEN | VARCHAR2 | Y | Verifica se green ja importou o documento |
| 24 | CD_MULTI_EMPRESA | NUMBER | Y |  |
| 25 | SN_CONFIDENCIAL | VARCHAR2 | Y | Indicará se o documento foi gravado como confidencial (OP42330). |
| 26 | QT_VIAS_IMPRESSAS | NUMBER | Y | Quantidade de vias impressas do documento |
| 27 | CD_DOCUMENTO_CLINICO_ANTERIOR | NUMBER | Y |  |
| 28 | CD_ESPECIALIDADE_PRESTADOR | NUMBER | Y | Código da especialidade do prestador no fechamento |
| 29 | SN_DOC_MARCACAO | VARCHAR2 | Y | Indica se o documento está marcado |
| 30 | CD_PRESTADOR_AUTORIZADOR | NUMBER | Y | Código do prestador que autorizou o documento clínico |

---

## DBAMV.PW_DOCUMENTO_CLINICO_CONSULTA
> Tabela que armazena os tipos de consultas utilizados na

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DOCUMENTO_CLINICO | NUMBER | N | Codigo do documento clinico |
| 2 | CD_TIPO_CONSULTA | NUMBER | N | Tipo de Consulta registrado |
| 3 | CD_OBJETO | NUMBER | Y | Codigo do tipo de objeto |

---

## DBAMV.PW_DOCUMENTO_OBJETO
> Tabela que armazena a associac?o do documento clinico com o novo editor

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DOCUMENTO_OBJETO | NUMBER | N | Identificador da associac?o do documento clinico com o novo editor. |
| 2 | CD_DOCUMENTO | NUMBER | N | Identificador do documento no novo editor. |
| 3 | CD_OBJETO | NUMBER | N | Contem o codigo do objeto agrupador do documento. |
| 4 | DS_DOCUMENTO | VARCHAR2 | N | Contem o nome do documento que sera referenciado no PEP. |
| 5 | NR_VERSAO | NUMBER | Y | Número da versão do documento do editor |

---

## DBAMV.PW_DOCUMENTO_PENDENTE_AUTENTCC
> Tabela que armazena os documento de ac?o clinica autenticados pendente

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DOCUMENTO_PENDENTE_AUTENTCC | NUMBER | N | Identificador do documento de ac?o clinica pendente de assinatura |
| 2 | CD_TIPO_DOCUMENTO_AUTENTICADO | NUMBER | Y |  |
| 3 | VL_PK_TABELA_ACAO_CLINICA | VARCHAR2 | Y | Valor do identificador do registro da ac?o clinica associada ao documento |
| 4 | NR_CPF_CNPJ | VARCHAR2 | Y | Identificador da pessoa que gerou a pendencia de assinatura do documento |
| 5 | DH_GERACAO_DOCUMENTO | DATE | N | Instante em que o documento de ac?o clinica foi autenticado |
| 6 | LO_DOCUMENTO_PENDENTE | BLOB | N | Contem o documento de ac?o clinica pendente de autenticac?o |
| 7 | CD_DOCUMENTO_AUTENTICADO | NUMBER | Y | Valor do identificador do registro do documento a ser autenticado que ainda esta pendente |

---

## DBAMV.PW_DOCUMENTO_TEMA
> Tabela que armazena a associac?o do documento clinico com o novo editor

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DOCUMENTO_TEMA | NUMBER | N | Identificador da associac?o do documento clinico com o novo editor. |
| 2 | CD_DOCUMENTO | NUMBER | N | Identificador do documento no novo editor. |
| 3 | CD_TEMA_CLINICO | NUMBER | N | Identificador do tema clinico ao qual ele pertence. |
| 4 | DS_DOCUMENTO | VARCHAR2 | Y | Contem o nome do documento do editor que sera referenciado no MVPEP |

---

## DBAMV.PW_DOC_ALERGIA_PAC
> Tabela referente ao registro do documento clínico de ALERGIAS por paciente.Os registros são mantidos aqui, exatamente como as alergias estavam, para o paciente em questão, no momento da geração do documento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DOC_ALERGIA_PACIENTE | NUMBER | N | Código documento alergia paciente |
| 2 | CD_PROBLEMA | NUMBER | N | código da alergia por paciente |
| 3 | CD_DOCUMENTO_CLINICO | NUMBER | N | código do documento clínico |
| 4 | CD_PACIENTE | NUMBER | N | Código do paciente |
| 5 | CD_SUBSTANCIA | NUMBER | Y | código da substância |
| 6 | CD_ALIMENTO | NUMBER | Y | código do alimento |
| 7 | DS_OBSERVACAO | VARCHAR2 | N | observação da alergia pro paciente |
| 8 | DH_CRIACAO | TIMESTAMP(6) | N | data e hora da criação do registro |
| 9 | DH_MODIFICACAO | TIMESTAMP(6) | N | data e hora da modificação do registro |
| 10 | CD_USUARIO_CRIACAO | VARCHAR2 | N | Código do usuário que criou o registro |
| 11 | CD_PRESTADOR_CRIACAO | NUMBER | N | Código do prestador que criou o registro |
| 12 | CD_USUARIO_INATIVACAO | VARCHAR2 | Y | código do usuário que inativou o registro |
| 13 | CD_PRESTADOR_INATIVACAO | NUMBER | Y | código do prestador que inativou o registro |
| 14 | DS_JUSTIFICATIVA_INATIVACAO | VARCHAR2 | Y | justificativa do inativamento |
| 15 | SN_ATIVO | VARCHAR2 | N | S(Sim) ou N(não) informando se o registro está ativo |
| 16 | TP_ALERGIA | VARCHAR2 | N | Tipo da alergia, O = outros, A = Alimento, S = (Substancia) Medicamento |
| 17 | TP_SEVERIDADE | VARCHAR2 | Y | Tipo da severidade, G = Grave, M = Moderada, L = Leve, D = Desconhecida |
| 18 | DS_OUTROS | VARCHAR2 | Y |  |
| 19 | DS_ALIMENTO_AVULSO | VARCHAR2 | Y |  |

---

## DBAMV.PW_DOC_CLINICO_ASSINATURA
> Tabela que armazena as assinaturas associadas a documentos clínicos.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DOC_CLI_ASSINATURA | NUMBER | N | Código identificador da assinatura do documento clínico (chave primária). |
| 2 | CD_DOCUMENTO_CLINICO | NUMBER | Y | Código do documento clínico ao qual a assinatura está vinculada. |
| 3 | CD_DOCUMENTO_DIGITAL | NUMBER | Y | Código do documento digital gerado após a assinatura. |
| 4 | TP_STATUS | VARCHAR2 | N | Status da assinatura (ex: PENDENTE, ASSINADO, CANCELADO, etc). |
| 5 | CD_PRESTADOR | NUMBER | Y | Código do prestador (profissional de saúde) que realizou a assinatura. |
| 6 | DH_ASSINATURA | DATE | Y | Data e hora em que a assinatura foi registrada. |
| 7 | SN_MANDATORIO | CHAR | Y | Indicador se a assinatura é obrigatória (S = Sim, N = Não). |

---

## DBAMV.PW_DOC_OBSERVACAO_PACIENTE
> Tabela referente ao registro do documento clinico de observações por paciente.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DOC_OBSERVACAO_PACIENTE | NUMBER | N | Código do documento de observação do paciente |
| 2 | CD_DOCUMENTO_CLINICO | NUMBER | N | Código do documento clinico |
| 3 | CD_PACIENTE | NUMBER | N | Código do paciente |
| 4 | CD_ATENDIMENTO | NUMBER | Y | Código do atendimento |
| 5 | CD_OBSERVACAO_PACIENTE | NUMBER | N | Código da observação do paciente |
| 6 | DS_OBSERVACAO_PACIENTE | VARCHAR2 | N | Descrição da observação do paciente |
| 7 | DH_OBSERVACAO_PACIENTE | TIMESTAMP(6) WITH LOCAL TIME ZONE | N | Data em que a observação do paciente foi criada |
| 8 | SN_ATIVO | VARCHAR2 | N | Indica se a observação está ativa ou inativa |
| 9 | CD_PRESTADOR | NUMBER | N | Código do prestador que criou a observação |
| 10 | DH_CANCELAMENTO | TIMESTAMP(6) WITH LOCAL TIME ZONE | Y | Data em que a observação foi inativada |
| 11 | CD_PRESTADOR_CANCELAMENTO | NUMBER | Y | Código do prestador que inativou a observação |
| 12 | CD_REGISTRO_CLINICO | NUMBER | Y | Código do registro clinico |
| 13 | TP_OBSERVACAO | VARCHAR2 | N | Tipo da observação (Relev - Relevante, NOTA - Anotação, OBS - Observação) |
| 14 | SN_FECHADO | VARCHAR2 | N | Indica se a observacao esta fechada para edição |

---

## DBAMV.PW_DOSE
> Tabela que armazena as doses das vacinas

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DOSE | NUMBER | N | Codigo do intervalo da dose da vacina |
| 2 | NM_DOSE | VARCHAR2 | Y | Nome do intervalo da dose da vacina |
| 3 | NR_ORDEM | NUMBER | Y | Ordem da vacina |
| 4 | SN_DOSE_ANUAL | VARCHAR2 | Y | Indica se e dose anual |
| 5 | SN_DOSE_UNICA | VARCHAR2 | Y | indica se e dose unica |
| 6 | SN_ATIVO | VARCHAR2 | N | Indica se a dose esta ativa ou n?o. |

---

## DBAMV.PW_DOSE_VACINA
> Tabela que armazena as doses das vacinas

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DOSE_VACINA | NUMBER | N | Codigo da dose da vacina |
| 2 | CD_DOSE | NUMBER | N | codigo da dose da vacina |
| 3 | CD_VACINA | NUMBER | N | Codigo da vacina |
| 4 | SN_ATIVO | VARCHAR2 | N | Indica se a dose esta ativa ou n?o. |

---

## DBAMV.PW_EDITOR_CLINICO
> Tabela que armazena a associac?o do documento clinico com o novo editor

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EDITOR_CLINICO | NUMBER | N | Identificador do vinculo do documento clinico com o novo editor. |
| 2 | CD_EDITOR_REGISTRO | NUMBER | N | Identificador do documento no novo editor. |
| 3 | CD_DOCUMENTO_CLINICO | NUMBER | Y | Identificador do documento clinico registrado. |
| 4 | CD_EDITOR_CLINICO_MODULO | NUMBER | Y | Identifica que esse documento corresponde a uma aba de um grupo de documentos |
| 5 | CD_DOCUMENTO | NUMBER | Y | Codigo do documento para facilitar a localizac?o do historico |
| 6 | CD_USUARIO_AUTORIZADOR | VARCHAR2 | Y | Código do usuário que autorizou finalizar o documento |
| 7 | CD_VERSAO | NUMBER | Y | Codigo da versao do editor |

---

## DBAMV.PW_EDITOR_CLINICO_MODULO
> Tabela que armazena a associac?o do documento clinico com o novo editor

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EDITOR_CLINICO_MODULO | NUMBER | N | Identificador de como foi o registro do documento com abas no momento passado. |
| 2 | CD_DOCUMENTO_CLINICO | NUMBER | N | Identificador do documento clinico. |
| 3 | CD_MODULO | VARCHAR2 | N | Identificador do modulo origem. |
| 4 | NM_TITULO | VARCHAR2 | N | Nome que ira aparecer na aba de modulos |
| 5 | NR_ORDEM | NUMBER | N | Referencia a ordem da aba a ser apresentada |

---

## DBAMV.PW_EIXO_GRAFICO
> Tabela responsável por guardar as informações dos eixos do gráfico de curva de crescimento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EIXO_GRAFICO | NUMBER | N | Código sequencial identificador do registro |
| 2 | CD_GRAFICO_CURVA_CRESCIMENTO | NUMBER | N | FK para a tabela que guarda as informações do gráfico de curva de crescimento |
| 3 | TP_EIXO | VARCHAR2 | N | Tipo do eixo podendo ser X ou Y |
| 4 | TP_VALOR_EIXO | VARCHAR2 | N | Define se o eixo irá usar a I - Idade ou uma A - Aferição como escala para os valores |
| 5 | CD_SINAL_VITAL | NUMBER | Y | Caso o eixo seja baseado em uma aferição, esta coluna conterá o código do sinal vital |
| 6 | CD_UNIDADE_AFERICAO | NUMBER | Y | Caso o eixo seja baseado em uma aferição, esta coluna conterá o código da unidade usada de aferiç... |
| 7 | NR_INICIO_FAIXA | NUMBER | N | Determina o valor de início da escala do eixo |
| 8 | NR_FIM_FAIXA | NUMBER | N | Determina o valor final da escala do eixo |
| 9 | NR_INTERVALO_ESCALA | NUMBER | Y | Determina o valor final do intervalo entre os valores da escala do eixo |

---

## DBAMV.PW_EMPRESA_EXTERNA
> Tabela para guardar a informação das empresas externas

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EMPRESA_EXTERNA | NUMBER | N | Código sequencial identificador do registro |
| 2 | CD_MULTI_EMPRESA | NUMBER | N | Código multi empresa (FK) |

---

## DBAMV.PW_ENCAMINHAMENTO
> Tabela que registra os encaminhamentos de pacientes para outros medicos ou especialidades.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ENCAMINHAMENTO | NUMBER | N | Identificador do encaminhamento. |
| 2 | CD_ATENDIMENTO | NUMBER | N | Identificador do atendimento. |
| 3 | CD_PRESTADOR_ATUAL | NUMBER | Y | Identificador do prestador para o qual o paciente foi encaminhado. |
| 4 | CD_ESPECIALIDADE_ATUAL | NUMBER | N | Identificador da especialidade para a qual o paciente foi encaminhado. |
| 5 | CD_PRESTADOR_ANTERIOR | NUMBER | Y | Identificador do prestador anterior ao encaminhamento do paciente. |
| 6 | CD_ESPECIALIDADE_ANTERIOR | NUMBER | Y | Identificador da especialidade anterior ao encaminhamento do paciente. |
| 7 | DS_OBSERVACAO | VARCHAR2 | Y | Observac?es pertinentes ao encaminhamento do paciente. |
| 8 | CD_USUARIO_ENCAMINHAMENTO | VARCHAR2 | N | Identificador do usuario que cadastrou o encaminhamento. |
| 9 | DH_ENCAMINHAMENTO | DATE | N | Data e hora do instante em que o encaminhamento foi realizado. |
| 10 | SN_ATENDIDO | VARCHAR2 | N | Indica se o encaminhamento foi atendido. |
| 11 | CD_REGISTRO_CLINICO | NUMBER | Y | Especifica o RegistroClinico que foi realizado no atendimento |
| 12 | CD_DOCUMENTO_CLINICO | NUMBER | Y | O codigo do documento clinico, setado via trigger (fk) |
| 13 | SN_REJEITADO | VARCHAR2 | Y | Coluna que indica se o encaminhamento foi rejeitado pela pessoa que deveria receber o encaminhamento |
| 14 | CD_SERVICO | NUMBER | Y | CODIGO DO SERVICO ASSOCIADO A ESPECIALIDADE DO PRESTADOR PARA O ATENDIMENTO |
| 15 | CD_SERVICO_ANTERIOR | NUMBER | Y | Indica o serviço anterior ao encaminhamento. |
| 16 | DH_AGENDA | DATE | Y | Data e hora solicitada para agendamento |
| 17 | CD_SOLICITACAO_AGENDAMENTO | NUMBER | Y | Codigo da solicitac?o de agendamento |
| 18 | CD_SER_DIS | NUMBER | Y | Codigo da tabela ser_dis associado a especialidade do prestador para o atendimento |

---

## DBAMV.PW_EQUIPE_ASSISTENCIAL
> Tabela que guarda a equipe assistencial

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EQUIPE_ASSISTENCIAL | NUMBER | N | Chave primária para equipe assistencial |
| 2 | DS_EQUIPE_ASSISTENCIAL | VARCHAR2 | N |  |
| 3 | CD_ESPECIALIDADE_ASSISTENCIAL | NUMBER | N | Código para especialidade assistencial |

---

## DBAMV.PW_EQUIPE_ATN
> Tabela da equipe de atenção primária

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EQUIPE | NUMBER | N | Código da Equipe |
| 2 | NM_EQUIPE | VARCHAR2 | N | Nome da Equipe |
| 3 | CD_MULTI_EMPRESA | NUMBER | N | Código da multi_empresa |

---

## DBAMV.PW_EQUIPE_PESQUISA_CIENTIFICA
> Tabela da equipe das pesquisas cientificas

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EQUIPE_PESQUISA_CIENTIFICA | NUMBER | N | Sequencial da tabela |
| 2 | CD_PESQUISA_CIENTIFICA | NUMBER | N | Código da pesquisa científica |
| 3 | CD_PRESTADOR | NUMBER | N | Código do prestador |
| 4 | SN_COORDENADOR | VARCHAR2 | N | Informa se é coordenador da pesquisa |

---

## DBAMV.PW_EQUIPE_PRESTADOR_ATN
> Tabela de prestadores da equipe ATP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EQUIPE_PRESTADOR | NUMBER | N | Código do Prestador |
| 2 | CD_EQUIPE | NUMBER | N | Código da Equipe |
| 3 | CD_PRESTADOR | NUMBER | N | Código do Prestador |
| 4 | SN_ENFERMEIRO_REFERENCIA | VARCHAR2 | N | Informa se é enfermeiro referência da equipe |
| 5 | SN_MEDICO_REFERENCIA | VARCHAR2 | N | Informa se é médico referência da equipe |
| 6 | CD_TIP_PRESTA | NUMBER | N | Tipo do Prestador |

---

## DBAMV.PW_EQUIPE_PRONTUARIO_VIP
> Tabela para armazenar as equipes do pronturio vip

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EQUIPE_PRONTUARIO_VIP | NUMBER | N | Cdigo da equipe |
| 2 | DS_EQUIPE_PRONTUARIO_VIP | VARCHAR2 | N | Descrio da equipe |
| 3 | DT_INICIO | DATE | N | Data de incio da equipe |
| 4 | DT_FIM | DATE | Y | Data de fim da equipe |
| 5 | SN_ATIVO | VARCHAR2 | N | Se registro est ativo. Podendo ser (S, N) |

---

## DBAMV.PW_EQUIPE_TIP_PREST_PRONT_VIP
> Tabela para armazenar o relacionamento das equipes do pronturio vip com os prestadores participantes

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EQUIPE_TIP_PREST_PRONT_VIP | NUMBER | N | Sequencial da equipe com prestador |
| 2 | CD_EQUIPE_PRONTUARIO_VIP | NUMBER | N | Cdigo da equipe |
| 3 | CD_PRESTADOR | NUMBER | N | Cdigo do prestador |
| 4 | DT_INICIO_PARTICIPACAO | DATE | Y | Data de incio de participao do prestador na equipe |
| 5 | DT_FIM_PARTICIPACAO | DATE | Y | Data de fim de participao do prestador na equipe |
| 6 | TP_AUTORIZACAO | VARCHAR2 | Y | O tipo de autorizao do prestador. Podendo ser (DIRETA, SENHA, JUSTIFICATIVA, NEGADA) |

---

## DBAMV.PW_ESCALA_DOMICILIAR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ESCALA_DOMICILIAR | NUMBER | N | Código da Escala |
| 2 | TP_DIA_SEMANA | VARCHAR2 | N | Dias da semana: 1 - Domingo, 2 - Segunda, 3 - Terça, 4 - Quarta, 5 - Quinta, 6 - Sexta, 7 - Sábado |
| 3 | SN_ATIVO | VARCHAR2 | N | Informa se está ativo: S - Sim, N - Não |
| 4 | SN_FERIADO | VARCHAR2 | N | Informa se é feriado: S - Sim, N - Não |
| 5 | QT_ATENDIMENTO | NUMBER | N | Informa a quantidade de atendimentos |
| 6 | SN_PERMITE_ATEND_EXTRA | VARCHAR2 | N | Informa se permite atendimento extra: S - Sim, N - Não |
| 7 | CD_PRESTADOR | NUMBER | N | Código do Prestador |
| 8 | CD_ORIGEM | NUMBER | N | Código da Origem |
| 9 | DT_CADASTRO | DATE | Y | Data do cadastro do modelo da escala |
| 10 | CD_USUARIO_INCLUSAO | VARCHAR2 | Y | Usuário que realizou a inclusão da escala |
| 11 | CD_USUARIO_ALTERACAO | VARCHAR2 | Y | Usuário que realizou a alteração da escala |
| 12 | DT_ALTERACAO | DATE | Y | Data da alteração do modelo da escala |
| 13 | CD_MULTI_EMPRESA | NUMBER | Y | Código do Multi Empresa. |

---

## DBAMV.PW_ESCALA_TIPO_CHAMADO_DOMIC

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIPO_CHAMADO_DOMICILIAR | NUMBER | N | Código do Tipo da Escala |
| 2 | CD_ESCALA_DOMICILIAR | NUMBER | Y | Código da Escala |
| 3 | QT_ATENDIMENTO | NUMBER | Y | Quantidade de atendimentos |

---

## DBAMV.PW_ESPECIALIDADE_ASSISTENCIAL
> Tabela que guarda a especialidade da equipe

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ESPECIALIDADE_ASSISTENCIAL | NUMBER | N | Chave primária para especialidade assistencial |
| 2 | CD_ESPECIALID | NUMBER | N | Código da especialidade |

---

## DBAMV.PW_ESPECIALIDADE_ATENDIMENTO
> tabela para o cadastro de especialidade por tipo de atendimento para o filtro do parecer.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ESPECIALID_ATEND | NUMBER | N | código do cadastro da especialidade por tipo de atendimento |
| 2 | TP_ATENDIMENTO | VARCHAR2 | N | tipo do atendimento, que pode ser "H", "I", "A", "E" ou "U" |
| 3 | CD_ESPECIALID | NUMBER | Y | código da especialidade |

---

## DBAMV.PW_ESPECIALID_ITEM_AGENDAMENTO
> Associação da especialidade com o item de agendamento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ESPECIALID | NUMBER | N | Código da especialidade |
| 2 | CD_ITEM_AGENDAMENTO | NUMBER | N | Código do item do agendamento |

---

## DBAMV.PW_ETAPAS_ALERTA_PROTOCOLO
> Cadastro das possíveis etapas do protocolo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ETAPAS_ALERTA_PROTOCOLO | NUMBER | N | Código sequencial. |
| 2 | CD_ALERTA_PROTOCOLO | NUMBER | Y | Ordem da etapa. |
| 3 | CD_ETAPA_PROTOCOLO | NUMBER | Y | Descrição da etapa. |
| 4 | CD_ORDEM | NUMBER | Y | Descrição da etapa. |

---

## DBAMV.PW_ETAPA_PROTOCOLO
> Cadastro das possíveis etapas do protocolo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ETAPA_PROTOCOLO | NUMBER | N | Código sequencial. |
| 2 | CD_ORDEM | NUMBER | N | Ordem da etapa. |
| 3 | DS_ETAPA | VARCHAR2 | N | Descrição da etapa. |
| 4 | TP_ETAPA | VARCHAR2 | Y | Indica qual o tipo da etapa. |

---

## DBAMV.PW_EVENTO_ADVERSO
> Tabela referente ao cadastro dos eventos adversos. Se relaciona com a tabela PW_GRUPO_EVENTO_ADVERSO. Como um evento adverso também possui um Grau, a tabela PW_GRAU_EVENTO_ADVERSO se relaciona com esta tabela

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EVENTO_ADVERSO | NUMBER | N | Código do evento adverso |
| 2 | CD_GRUPO_EVENTO_ADVERSO | NUMBER | N | Código do grupo do evento adverso |
| 3 | DS_EVENTO_ADVERSO | VARCHAR2 | N | Descrição do evento adverso |
| 4 | CD_USUARIO_CRIACAO | VARCHAR2 | N | Código do usuário que criou o registro |
| 5 | DH_CRIACAO | TIMESTAMP(6) | N | data e hora da criação do registro |
| 6 | SN_ATIVO | VARCHAR2 | N | S(Sim) ou N(não) informando se o registro está ativo |
| 7 | DS_DEF_EVENTO_ADVERSO | VARCHAR2 | Y |  |

---

## DBAMV.PW_EVENTO_ADVERSO_PAC
> Tabela referente ao registro de evento adverso por paciente. Tabela se relaciona com PW_EVENTO_ADVERSO, PW_GRAU_EVENTO_ADVERSO, USUARIOS, PACIENTE e PW_ALERGIA_EVENTO_PAC

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EVENTO_ADVERSO_PAC | NUMBER | N | Código do evento adverso para o paciente |
| 2 | CD_PROBLEMA | NUMBER | N | Código da alergia evento paciente |
| 3 | CD_EVENTO_ADVERSO | NUMBER | N | Código de cadastro do evento adverso |
| 4 | CD_GRAU_EVENTO_ADVERSO | NUMBER | N | Código do grau do evento adverso |
| 5 | CD_USUARIO_CRIACAO | VARCHAR2 | N | Código do usuário responsável pelo registro |
| 6 | CD_PRESTADOR_CRIACAO | NUMBER | N | Código do prestador responsável pelo registro |
| 7 | CD_USUARIO_INATIVACAO | VARCHAR2 | Y | Código do usuário responsável pela inativacao do registro |
| 8 | CD_PRESTADOR_INATIVACAO | NUMBER | Y | Código do prestador responsável pela inativacao do registro |
| 9 | CD_PACIENTE | NUMBER | N | Código do paciente |
| 10 | DH_CRIACAO | TIMESTAMP(6) | N |  |
| 11 | DH_MODIFICACAO | TIMESTAMP(6) | N |  |
| 12 | DS_JUSTIFICATIVA_INATIVACAO | VARCHAR2 | Y |  |
| 13 | SN_ATIVO | VARCHAR2 | N |  |
| 14 | CD_PRESTADOR_MODIFICACAO | NUMBER | Y | PRESTADOR RESPONSAVEL PELA ULTIMA MODIFICACAO |

---

## DBAMV.PW_EVENTO_ADVERSO_PAC_VER
> Tabela referente ao registro de evento adverso por paciente. Tabela se relaciona com PW_EVENTO_ADVERSO, PW_GRAU_EVENTO_ADVERSO, USUARIOS, PACIENTE e PW_ALERGIA_EVENTO_PAC

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EVENTO_ADVERSO_PAC_VER | NUMBER | N | C?digo do evento adverso atual |
| 2 | CD_DOCUMENTO_CLINICO | NUMBER | N | CÃ³digo do documento clinico da versao |
| 3 | CD_EVENTO_ADVERSO_PAC | NUMBER | Y | C?digo do evento adverso para o paciente |
| 4 | CD_PROBLEMA | NUMBER | N | C?digo da alergia evento paciente |
| 5 | CD_EVENTO_ADVERSO | NUMBER | N | C?digo de cadastro do evento adverso |
| 6 | CD_GRAU_EVENTO_ADVERSO | NUMBER | N | C?digo do grau do evento adverso |
| 7 | CD_USUARIO_CRIACAO | VARCHAR2 | N | C?digo do usu?rio respons?vel pelo registro |
| 8 | CD_PRESTADOR_CRIACAO | NUMBER | N | C?digo do prestador respons?vel pelo registro |
| 9 | CD_USUARIO_INATIVACAO | VARCHAR2 | Y | C?digo do usu?rio respons?vel pela inativacao do registro |
| 10 | CD_PRESTADOR_INATIVACAO | NUMBER | Y | C?digo do prestador respons?vel pela inativacao do registro |
| 11 | CD_PACIENTE | NUMBER | N | C?digo do paciente |
| 12 | DH_CRIACAO | TIMESTAMP(6) | N |  |
| 13 | DH_MODIFICACAO | TIMESTAMP(6) | N |  |
| 14 | DS_JUSTIFICATIVA_INATIVACAO | VARCHAR2 | Y |  |
| 15 | SN_ATIVO | VARCHAR2 | N |  |

---

## DBAMV.PW_EVOLUCAO_CASO_PROTOCOLO
> Armazena as trocas de etapas do caso do protocolo.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EVOLUCAO_CASO_PROTOCOLO | NUMBER | N | Código sequencial. |
| 2 | CD_CASO_PROTOCOLO | NUMBER | N | Código relacionado à tabela principal PW_CASO_PROTOCOLO. |
| 3 | DT_INICIO | DATE | N | Data de inicio da etapa caso. |
| 4 | DT_FIM | DATE | Y | Data de conclusão da etapa. |
| 5 | CD_USUARIO | VARCHAR2 | Y | Usuário que registrou a etapa. |
| 6 | TP_ETAPA | VARCHAR2 | Y | Tipo da Etapa. |
| 7 | DS_OBSERVACAO | VARCHAR2 | Y | Observação ou justificativa para a mudança de etapa. |
| 8 | CD_MOT_FINALIZACAO_PROTOCOLO | NUMBER | Y | Motivo de finalização do protocolo |
| 9 | CD_ETAPA_PROTOCOLO | NUMBER | Y | Etapa registrada na evolução do caso do protocolo |
| 10 | CD_MOTIVO_DESCARTE_PROTOCOLO | NUMBER | Y |  |

---

## DBAMV.PW_EXAME_FISICO
> Tabela para Exame Fisico

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EXAME_FISICO | NUMBER | N | Codigo Exame Fisico |
| 2 | TP_EXAME_FISICO | NUMBER | Y | Tipo Exame Fisico |
| 3 | CD_SERVICO | NUMBER | N |  |

---

## DBAMV.PW_EXA_FIS_PART_CORP_HUM
> Tabela intermediaria entre Exame Fisico e Parte Corpo Humano

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EXAME_FISICO | NUMBER | N | Codigo Exame Fisico |
| 2 | CD_PARTE_CORPO_HUMANO | NUMBER | N | Codigo Parte do Corpo Humano |

---

## DBAMV.PW_FAIXA_ETARIA_GRAFICO
> Tabela responsável por guardar as informações das faixas etárias do gráfico de curva de crescimento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FAIXA_ETARIA_GRAFICO | NUMBER | N | Código sequencial identificador do registro |
| 2 | CD_GRAFICO_CURVA_CRESCIMENTO | NUMBER | N | FK para a tabela que guarda as informações do gráfico de curva de crescimento |
| 3 | NR_IDADE_INICIO | NUMBER | N | Número de meses que representa o início da faixa etária do paciente a que o gráfico se refere |
| 4 | NR_IDADE_FIM | NUMBER | N | Número de meses que representa o fim da faixa etária do paciente a que o gráfico se refere |
| 5 | NR_ORDEM | NUMBER | N | Ordem em que o gráfico deverá ser exibido na tela |

---

## DBAMV.PW_FAIXA_QUEBRA_GRAFICO
> Tabela responsável por guardar as informações que serão usadas para quebrar o eixo do gráfico de curva de crescimento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FAIXA_QUEBRA_GRAFICO | NUMBER | N | Código sequencial identificador do registro |
| 2 | CD_FAIXA_ETARIA_GRAFICO | NUMBER | N | FK para a tabela responsável por guardar as informações das faixas etárias do gráfico de curva de... |
| 3 | NR_INICIO_FAIXA | NUMBER | N | Número que representa o inicio da faixa selecionada para quebra do eixo |
| 4 | NR_FIM_FAIXA | NUMBER | N | Número que representa o fim da faixa selecionada para quebra do eixo |
| 5 | NR_ORDEM | NUMBER | N | Ordem em que o gráfico deverá ser exibido na tela |

---

## DBAMV.PW_FAMILIA_ATN
> Tabela que guarda a familia ATP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FAMILIA | NUMBER | N | Código da família |
| 2 | NM_FAMILIA | VARCHAR2 | N | Nome da família |
| 3 | CD_EQUIPE | NUMBER | Y | Código da Equipe |

---

## DBAMV.PW_FAMILIA_PACIENTE_ATN
> tabla de pacientes da familia

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FAMILIA_PACIENTE | NUMBER | N | Código da família do paciente |
| 2 | CD_PACIENTE | NUMBER | N | Código do paciente |
| 3 | CD_FAMILIA | NUMBER | N | Código da família |
| 4 | SN_RESPONSAVEL | VARCHAR2 | N | Informa o responsável pela família |
| 5 | CD_TIP_PAREN | NUMBER | Y | Tipo de parentesco da família |
| 6 | SN_VISUALIZAR_PRONTUARIO | VARCHAR2 | Y | Informa se o paciente pode visualizar o prontuario de todos. |

---

## DBAMV.PW_FATOR_CONVERSAO_UNID_AFER
> Tabela responsável por guardar as informações dos pontos referentes a curva de referência

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FATOR_CONVERSAO_UNID_AFER | NUMBER | N | Código sequencial identificador do registro |
| 2 | CD_UNIDADE_AFERICAO_BASE | NUMBER | N | FK para a tabela de cadastro das unidades de aferição. Esta unidade é a unidade base de referênci... |
| 3 | CD_UNIDADE_AFERICAO | NUMBER | N | FK para a tabela de cadastro das unidades de aferição. Esta unidade é a unidade à ser convertida |
| 4 | VL_FATOR | NUMBER | N | Define o valor de conversão da unidade base para a unidade à ser convertida |
| 5 | TP_OPERACAO | VARCHAR2 | N | Define a operação que será usada para sair da unidade à ser convertida para a unidade base. M - M... |

---

## DBAMV.PW_FAVORITO
> Tabela que armazena favoritos do prestador

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FAVORITO | NUMBER | N | codigo do favorito |
| 2 | DT_CRIACAO | DATE | Y | data de criacao do favorito |
| 3 | CD_PRESTADOR | NUMBER | Y | codigo do prestador |

---

## DBAMV.PW_FAVORITO_CID
> Tabela que armazena cid favoritos do prestador

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FAVORITO | NUMBER | N | codigo do cid favorito |
| 2 | CD_CID | VARCHAR2 | N |  |

---

## DBAMV.PW_FAVORITO_ESTRUTURA_ANAMNESE
> Tabela para a estrutura dos favoritos de anamnese

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FAVORITO | NUMBER | N | Codigo do favorito |
| 2 | CD_SERVICO | NUMBER | N | Codigo do servico |
| 3 | CD_FORMULARIO_ANAMNESE | NUMBER | N | Codigo do formulario de anamnese |

---

## DBAMV.PW_FAVORITO_PACIENTE
> TABELA QUE ARMAZENA PACIENTES FAVORITOS DO PRESTADOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FAVORITO | NUMBER | N | CODIGO DO FAVORITO |
| 2 | CD_PACIENTE | NUMBER | N | CODIGO DO PACIENTE |

---

## DBAMV.PW_FAVORITO_PRESCRICAO
> Tabela que armazena os Favoritos de Prescric?o definidos pelo Prestador. Classe FavoritoPrescricao e subClasse de Favorito.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FAVORITO | NUMBER | N | Codigo do Favorito ? PK e FK para PW_FAVORITO |
| 2 | CD_TIP_PRESC | NUMBER | N | Chave estrangeira para tabela TIP_PRESC. Determina qual TipPresc e definida como favorita para o ... |

---

## DBAMV.PW_FAVORITO_PRESCRICAO_PADRAO
> Tabela associativa entre o cadastro de Documento Eletronico e os Registros Clinicos dos prestadores.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FAVORITO | NUMBER | N |  |
| 2 | CD_PRE_PAD | NUMBER | Y | Chave estrangeira para tabela PRE_PAD. Define que este PrePad e favorito para o prestador registr... |
| 3 | CD_RECEITA_PADRAO | NUMBER | Y | Chave estrangeira para tabela PW_RECEITA_PADRAO. Define que esta ReceitaPadrao e favorita para o ... |

---

## DBAMV.PW_FAVORITO_PRINCIPIO_ATIVO
> Tabela que armazena a resposta evoluc?o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FAVORITO | NUMBER | N | codigo da resposta evoluc?o |

---

## DBAMV.PW_FAVORITO_PROCEDIMENTO
> Tabela que armazena procedimentos favoritos do prestador

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FAVORITO | NUMBER | N | codigo do procedimento favorito |
| 2 | CD_PROCEDIMENTO | NUMBER | N |  |

---

## DBAMV.PW_FAVORITO_PRODUTO
> Tabela que armazena produto favorito

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FAVORITO | NUMBER | N | codigo do produto favorito |
| 2 | CD_PRODUTO | NUMBER | N | codigo do produto |

---

## DBAMV.PW_FECHAMENTO_HORARIO_CHECAGEM
> Representa o fechamento de horários checados por um usuário

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FECHAMENTO_HORARIO_CHECAGEM | NUMBER | N | Chave primária da tabela |
| 2 | CD_USUARIO | VARCHAR2 | N | Código do usuário que realizou o fechamento |
| 3 | CD_ATENDIMENTO | NUMBER | N | Código do atendimento |
| 4 | DT_REFERENCIA | DATE | N | Data de referência |
| 5 | DH_FECHAMENTO | DATE | N | Data/Hora de realização do fechamento |
| 6 | CD_SETOR | NUMBER | N | Código do setor |
| 7 | CD_UNID_INT | NUMBER | Y | Código da unidade de internação |
| 8 | CD_DOCUMENTO_CLINICO | NUMBER | Y | Código do documento clínico |

---

## DBAMV.PW_FICHA_ANESTESICA
> Tabela que contem as fichas anestesicas

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FICHA_ANESTESICA | NUMBER | N | Chave primaria da tabela |
| 2 | DT_GERACAO | DATE | N | Data de gerac?o do registro |
| 3 | DT_FICHA | DATE | N | Codigo do Objeto atrelado a ficha anestesica |
| 4 | CD_PAGU_OBJETO | NUMBER | N |  |
| 5 | CD_PACIENTE | NUMBER | N | Codigo so paciente |
| 6 | CD_PRESTADOR | NUMBER | N | Codigo do prestador criador da ficha anestesica |
| 7 | DH_INICIO_CIRUGIA | DATE | Y | Data e hora de inicio da cirurgia |
| 8 | DH_FINAL_CIRUGIA | DATE | Y | Data e hora do final da cirurgia |
| 9 | DH_INICIO_ANESTESIA | DATE | Y | Data e hora do inicio da anestesia |
| 10 | DH_FINAL_ANESTESIA | DATE | Y | Data e hora do final da anestesia |
| 11 | TP_STATUS | VARCHAR2 | N | Status da Ficha Anestesica. Nova - N, Salva/Aberta - A, Assinada/Fechada - F, Impressa - I, Exclu... |
| 12 | QT_INTERVALO_SELECIONADO | NUMBER | Y | Intervalo do grafico, selecionado na ficha anestesica. |
| 13 | DT_EXCLUSAO | DATE | Y | Coluna que informa a data em que o status do item foi setado para exclus?o - E |

---

## DBAMV.PW_FORMA_ENVIO_PARAM_VALOR
> Tabela para guardar os valores configurados nos parâmetros das formas de envio

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FORMA_ENVIO_PARAM_VALOR | NUMBER | N | Código sequencial identificador do registro |
| 2 | CD_NOTIFICACAO_FORMA_ENVIO | NUMBER | N | Coluna com o código sequencial da configuração da forma de envio (FK) |
| 3 | CD_NOTIF_PARAM_FORMA_ENVIO | NUMBER | N | Coluna com o código sequencial da configuração do parâmetro da forma de envio (FK) |
| 4 | CD_NOTIF_VALOR_PARAM_FORMA_ENV | NUMBER | N | Coluna com o código sequencial da configuração dos valores para parâmetro da forma de envio (FK) |
| 5 | VL_VALOR | VARCHAR2 | Y | Valor informado no momento da configuração dos parâmetros da forma de envio |

---

## DBAMV.PW_FORMULARIO
> Tabela para Formulario

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FORMULARIO | NUMBER | N | Codigo Formulario |
| 2 | DS_FORMULARIO | VARCHAR2 | Y | Descric?o Formulario |
| 3 | DT_CRIACAO | DATE | Y | Data Criac?o Formulario |
| 4 | SN_ATIVO | VARCHAR2 | Y | Se o Formulario esta Ativo |
| 5 | CD_GRUPO_FORMULARIO | NUMBER | Y | Codigo Grupo Formulario |
| 6 | CD_VERSAO_EDICAO | NUMBER | Y | Codigo Vers?o Edic?o |
| 7 | CD_VERSAO_ATUAL | NUMBER | Y | Codigo Vers?o Atual |

---

## DBAMV.PW_FORMULARIO_ANAMNESE
> Tabela para formulario de anamnese

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FORMULARIO_ANAMNESE | NUMBER | N | Codigo do formulario de anamnese |
| 2 | DS_FORMULARIO_ANAMNESE | VARCHAR2 | N | Descric?o do formulario de anamnese |

---

## DBAMV.PW_FORMULARIO_BLOCO_EXAME_FIS
> Tabela para Formulario Bloco Exame FIsico

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FOR_BLO_EXA_FIS | NUMBER | N | Codigo Formulario Bloco Exame FIsico |
| 2 | SN_OBRIGATORIO | VARCHAR2 | Y | Se o Formulario Bloco Exame FIsico e Obrigatorio |
| 3 | CD_FORMULARIO | NUMBER | N | Codigo Formulario |
| 4 | CD_BLOCO | NUMBER | N | Codigo Bloco |

---

## DBAMV.PW_FORMULARIO_EXAME_FISICO
> Tabela para Formulario Exame Fisico

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FORMULARIO | NUMBER | N | Codigo Formulario Exame Fisico |

---

## DBAMV.PW_FORMULARIO_ITEM_ANAMNESE
> Tabela para os blocos do formuario de anamnese

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FORMULARIO_ANAMNESE | NUMBER | N | Codigo do formulario de anamnese |
| 2 | CD_BLOCO_ANAMNESE | NUMBER | N | Codigo do bloco de anamnese |
| 3 | TP_BLOCO_ANAMNESE | VARCHAR2 | N | Tipo do bloco de anamnese (B = BASICO, O = OPCIONAL) |

---

## DBAMV.PW_GERACAO_AGENDA_DOMICILIAR
> Tabela de Geração da Agenda Domiciliar

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GERACAO_AGENDA_DOMICILIAR | NUMBER | N | Código da geração da agenda |
| 2 | DT_GERACAO_AGENDA_DOMICILIAR | DATE | N | Data da agenda |
| 3 | CD_ESCALA_DOMICILIAR | NUMBER | Y | Código da escala associada à agenda |
| 4 | DT_INICIO | DATE | Y | Início do período selecionado |
| 5 | DT_FIM | DATE | Y | Final do período selecionado |
| 6 | SN_OPERA_DOMINGO | VARCHAR2 | N | Informa se a agenda inclui o domingo |
| 7 | SN_OPERA_SEGUNDA | VARCHAR2 | N | Informa se a agenda inclui a segunda |
| 8 | SN_OPERA_TERCA | VARCHAR2 | N | Informa se a agenda inclui a terça |
| 9 | SN_OPERA_QUARTA | VARCHAR2 | N | Informa se a agenda inclui a quarta |
| 10 | SN_OPERA_QUINTA | VARCHAR2 | N | Informa se a agenda inclui a quinta |
| 11 | SN_OPERA_SEXTA | VARCHAR2 | N | Informa se a agenda inclui a sexta |
| 12 | SN_OPERA_SABADO | VARCHAR2 | N | Informa se a agenda inclui o sábado |
| 13 | CD_ORIGEM | NUMBER | Y | Código da origem relacionada à agenda |
| 14 | CD_PRESTADOR | NUMBER | Y | Código do prestador relacionado à agenda |
| 15 | SN_SOBREPOR_AGENDAS | VARCHAR2 | N | Informa se a agenda pode sobrepor outra |
| 16 | CD_USUARIO | VARCHAR2 | N | Nome do usuário que gerou a agenda |
| 17 | TP_PERIODO | VARCHAR2 | N | Tipo de período selecionado, sendo S = Semanal, Q = Quinzenal, M = Mensal |
| 18 | SN_FERIADO | VARCHAR2 | N | Indica se o período selecionado contém feriado(s) ou não |

---

## DBAMV.PW_GERA_PESQUISA_CRITERIO
> Tabela que guarda os processamentos de critérios de entrada e saída

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GERA_PESQUISA_CRITERIO | NUMBER | N | Código pk da tabela |
| 2 | CD_PESQUISA_CIENTIFICA | NUMBER | N | Código da pesquisa que foi processada |
| 3 | DH_INICIO_PROCESSAMENTO | DATE | N | Hora de início de processamento |
| 4 | DH_FIM_PROCESSAMENTO | DATE | Y |  |
| 5 | TP_GERACAO | VARCHAR2 | N | Tipo de geração S - Saída / E - Entrada |
| 6 | CD_USUARIO | VARCHAR2 | Y | Código do usuario que processou o critério |
| 7 | SN_AUTOMATICO | VARCHAR2 | N | Informa se o processamento foi automático |

---

## DBAMV.PW_GRAFICO_CURVA_CRESCIMENTO
> Tabela para guardar a informação do gráfico de curva de crescimento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GRAFICO_CURVA_CRESCIMENTO | NUMBER | N | Código sequencial identificador do registro |
| 2 | DS_GRAFICO_CURVA_CRESCIMENTO | VARCHAR2 | N | Descrição do gráfico de curva de crescimento |
| 3 | TP_EIXO_REFERENCIA_QUEBRA | VARCHAR2 | N | Eixo utilizado para quebra do gráfico em subgráficos podendo ser X ou Y |
| 4 | CD_GRAFICO_PADRAO_CURVA_CRESC | NUMBER | Y | Código da configuração padrão do gráfico (FK) |
| 5 | DS_IDENTIFICADOR | VARCHAR2 | Y | Identificador do gráfico. Esta coluna será usada pelo usuário para criar identificadores que agru... |

---

## DBAMV.PW_GRAFICO_PADRAO_CURVA_CRESC
> Tabela para guardar a informação dos gráficos clinicos padrões da MV

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GRAFICO_PADRAO_CURVA_CRESC | NUMBER | N | Código sequencial identificador do registro |
| 2 | CD_GRAFICO_CURVA_CRESCIMENTO | NUMBER | Y | Código da configuração do gráfico que está ligado ao gráfico padrão (FK) |
| 3 | DS_GRAFICO_CURVA_CRESCIMENTO | VARCHAR2 | N | Descrição do gráfico de curva de crescimento |
| 4 | DS_IDENTIFICADOR | VARCHAR2 | N | Identificador do gráfico. Esta coluna será usada pelo usuário para criar identificadores que agru... |
| 5 | TP_VALOR_EIXO_X | VARCHAR2 | N | Tipo do eixo X definindo se será usado o tipo I - Para IDADE e A - Para AFERIÇÃO |
| 6 | CD_SINAL_VITAL_X | NUMBER | Y | Caso o eixo seja baseado em uma aferição para o eixo X, esta coluna conterá o código do sinal vital |
| 7 | CD_UNIDADE_AFERICAO_X | NUMBER | Y | Caso o eixo seja baseado em uma aferição para o eixo X, esta coluna conterá o código da unidade u... |
| 8 | TP_VALOR_EIXO_Y | VARCHAR2 | N | Tipo do eixo Y definindo se será usado o tipo I - Para IDADE e A - Para AFERIÇÃO |
| 9 | CD_SINAL_VITAL_Y | NUMBER | Y | Caso o eixo seja baseado em uma aferição para o eixo Y, esta coluna conterá o código do sinal vital |
| 10 | CD_UNIDADE_AFERICAO_Y | NUMBER | Y | Caso o eixo seja baseado em uma aferição para o eixo Y, esta coluna conterá o código da unidade u... |
| 11 | DS_ROTINA_CARGA | VARCHAR2 | N | Nome da rotina que será usada para inserir o gráfico na tabela DBAMV.PW_GRAFICO_CURVA_CRESCIMENTO... |
| 12 | SN_EDITAVEL | VARCHAR2 | N | Define se a configuração do gráfico padrão poderá ou não ser editada na tela. |

---

## DBAMV.PW_GRAU_EVENTO_ADVERSO
> Tabela referente ao Grau do evento adverso. Essa tabela se relaciona com a EVENTO_ADVERSO.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GRAU_EVENTO_ADVERSO | NUMBER | N | Código do grau do evento adverso |
| 2 | CD_EVENTO_ADVERSO | NUMBER | N | Código do evento adverso |
| 3 | TP_GRAU_EVENTO_ADVERSO | VARCHAR2 | N | Muito Leve = ML, Leve = LV, Moderado = MD, Grave = GR, Risco de morte = RM, Morte = MR |
| 4 | DS_GRAU_EVENTO_ADVERSO | VARCHAR2 | N | Descrição do grau do evento adverso |
| 5 | SN_ATIVO | VARCHAR2 | N | S(Sim) ou N(não) informando se o registro está ativo |

---

## DBAMV.PW_GRUPO_BALANCO_HIDRICO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GRUPO_BALANCO_HIDRICO | NUMBER | N | CHAVE PRIMARIA DA TABELA DBAMV.PW_BALANCO_HIDRICO |
| 2 | NR_ORDEM | NUMBER | N | INDICA A ORDEM QUE O GRUPO SERÁ EXIBIDO NO  BALANCO. |
| 3 | NM_GRUPO_BALANCO_HIDRICO | VARCHAR2 | N | NOME DO GRUPO DO BALANCO HIDRICO |
| 4 | CD_CONFIG_GRUPO_BALANCO_HID | NUMBER | N | CÓDIGO DA CHAVE PRIMARIA DA TABELA DBAMV.PW_CONFIG_GRUPO_BALANCO_HID |
| 5 | CD_BALANCO_HIDRICO | NUMBER | N | CÓDIGO DO BALANCO HIDRICO QUE CONTEM O GRUPO. |
| 6 | CD_CONFIG_SETOR_GRUPO_BAL_HID | NUMBER | Y | CÓDIGO DA CONFIGURACAO DO GRUPO DO BALANCO HIDRICO NO SETOR QUE CONTEM O GRUPO. |

---

## DBAMV.PW_GRUPO_CRITERIO
> Repositório geral de grupo de critérios

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GRUPO_CRITERIO | NUMBER | N | Chave de identificação do Grupo de critérios |
| 2 | DS_GRUPO_CRITERIO | VARCHAR2 | N | Descrição do Grupo de critérios |
| 3 | VL_FORMULA_CRITERIO | VARCHAR2 | Y | Formula do Grupo de critérios - Relação entre os critérios |

---

## DBAMV.PW_GRUPO_DIAGNOSTICO_ATENDIME
> Tabela de versionamento dos registros da tabela DBAMV.DIAGNOSTICO_ATENDIME.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GRUPO_DIAGNOSTICO_ATENDIME | NUMBER | N | Chave primária da tabela. |
| 2 | CD_DOCUMENTO_CLINICO_VALIDO | NUMBER | N | Documento clinico válido do diagnóstico versionado. |
| 3 | CD_ULTIMO_DOCUMENTO_CLINICO | NUMBER | N | Ultimo documento clinico do diagnóstico versionado. |

---

## DBAMV.PW_GRUPO_EVENTO_ADVERSO
> Tabela responsável pelos grupos do evento adverso. Essa tabela possui um auto relacionamento, para definir se o grupo possui um grupo pai, virando um sub-grupo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GRUPO_EVENTO_ADVERSO | NUMBER | N | código do grupo referente ao evento adverso |
| 2 | CD_GRUPO_PAI_EVENTO_ADVERSO | NUMBER | Y | Código do grupo pai, é um auto relacionamento com a coluna CD_GRUPO_EVENTO_ADVERSO |
| 3 | DS_GRUPO_EVENTO_ADVERSO | VARCHAR2 | N | Descrição do grupo do evento adverso |
| 4 | SN_ATIVO | VARCHAR2 | N | S(Sim) ou N(não) informando se o registro está ativo |
| 5 | SN_POSSUI_SUBGRUPO | VARCHAR2 | N | S(Sim) ou N(não) informando se possui sub-grupo, caso esteja relacionado na coluna CD_GRUPO_PAI_E... |

---

## DBAMV.PW_GRUPO_EXAME
> Armazena as informac?es de configurac?es especificas para os grupos de exames e seus exames a qual ser?o apresentados em tela do MVPEP 2.0 servindo de comparativo entre prontuarios dos pacientes

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GRUPO_EXAME | NUMBER | N | Indica o codigo do grupo e  exames que ser?o apresentados em tela para realizac?o de comparativos... |
| 2 | DS_GRUPO_EXAME | VARCHAR2 | Y | Descric?o do grupo de exames. |
| 3 | TP_EXAME | VARCHAR2 | Y | Tipo do exame - R:Receptor X Doador ou  P: Pos Operatorio. |
| 4 | SN_ATIVO | VARCHAR2 | Y | Indica se o grupo de exames esta ativo (expressa: sim ou n?o). |

---

## DBAMV.PW_GRUPO_EXAME_COMPARATIVO
> Armazena as informac?es de configurac?es especificas para os grupos de exames com a descric?o de quais ser?o os resultados comparados.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GRUPO_EXAME_COMPARATIVO | NUMBER | N | Indica o codigo do grupo e  exames comparativo que ser?o apresentados em tela(pk). |
| 2 | DS_GRUPO_EXAME_COMPARATIVO | VARCHAR2 | Y | Descric?o informada pelo Usuario, que deve ser apresentada em tela como o agrupador dos resultados |
| 3 | NR_ORDEM | NUMBER | N | Numero de ordem de apresentac?o em tela. |
| 4 | CD_GRUPO_EXAME | NUMBER | N | Codigo do grupo de exames (Fk). |

---

## DBAMV.PW_GRUPO_FORMULARIO
> Tabela para Grupo Formulario

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GRUPO_FORMULARIO | NUMBER | N | Codigo Grupo Formulario |
| 2 | DS_GRUPO_FORMULARIO | VARCHAR2 | Y | Descric?o Grupo Formulario |
| 3 | CD_GRUPO_PAI | NUMBER | Y | Codigo Grupo Pai |

---

## DBAMV.PW_GRUPO_ITEM_PRESCRICAO
> Tabela de grupos e seus Itens de prescrito

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIP_PRESC | NUMBER | N | Codigo do item de Prescric?o |
| 2 | CD_GRUPO_PRESCRICAO | NUMBER | N | Codigo do Grupo |
| 3 | CD_TIP_ESQ | VARCHAR2 | N | Codigo do Esquema |
| 4 | CD_SUB_GRUPO_PRESCRICAO | NUMBER | N | Codigo do Subgrupo |
| 5 | NR_ORDEM | NUMBER | Y | Ordem de Exibic?o do Item |
| 6 | DS_EXIBICAO | VARCHAR2 | Y | Sera usado para ter um texto resumido a ser exibido quando for na selec?o agrupada. |
| 7 | CD_TIP_PRESC_PAI | NUMBER | Y | Associac?o com o Item Pai do item do Subgrupo |

---

## DBAMV.PW_GRUPO_ITENS_AFERICAO
> Tabela para registro dos grupos de itens de aferic?o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GRUPO_ITENS_AFERICAO | NUMBER | N | Codigo de identificac?o do resgistro de log |
| 2 | DS_GRUPO_ITENS_AFERICAO | VARCHAR2 | Y | Codigo da evoluc?o,sera gravada na tabela pre_med |

---

## DBAMV.PW_GRUPO_PERGUNTA
> Tabela para Grupo Pergunta

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GRUPO_PERGUNTA | NUMBER | N | Codigo Grupo Pergunta |
| 2 | DS_GRUPO_PERGUNTA | VARCHAR2 | Y | Descric?o Grupo Pergunta |
| 3 | SN_GLOBAL | VARCHAR2 | Y | Se o Grupo Pergunta e Global |
| 4 | CD_GRUPO_PAI | NUMBER | Y | Codigo Grupo Pai |

---

## DBAMV.PW_GRUPO_PRESCRICAO
> Tabela de grupos de Itens de Prescric?o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GRUPO_PRESCRICAO | NUMBER | N | Codigo grupo de prescric?o |
| 2 | DS_GRUPO_PRESCRICAO | VARCHAR2 | N | Descric?o do grupo de prescric?o |
| 3 | SN_EXIBIR_FAVORITO | VARCHAR2 | N | Sinaliza se o grupo vai exibir os favoritos nos Sub Grupos (S-Sim,N-N?o) |
| 4 | NR_ORDEM_FAVORITO | NUMBER | Y | Ordem de Exibic?o dos Favoritos no Sub grupos. |

---

## DBAMV.PW_GRUPO_PRESCRICAO_ITPRE_MED
> Tabela de grupos de Prescricao e seus Itens de prescrito

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GRUPO_PRESCRICAO_ITPRE_MED | NUMBER | N | Codigo do grupo dos itens prescritos |
| 2 | CD_GRUPO_PRESCRICAO | NUMBER | N | Codigo do Grupo |
| 3 | CD_PRE_MED | NUMBER | N | Codigo da Prescric?o |
| 4 | DS_OBSERVACAO | VARCHAR2 | Y | Observac?o |
| 5 | DS_OUTROS | VARCHAR2 | Y | Texto livre para lancar itens de prescric?o n?o padronizados |
| 6 | DS_EXIBICAO | VARCHAR2 | Y | Caso exista necessidade de ter um nome diferente deste grupo para cada tipo de prescric?o ( recei... |
| 7 | NR_ORDEM_EXIBICAO | NUMBER | Y | Ordem de exibic?o dos Grupos do (Objeto)Segmento |

---

## DBAMV.PW_GRUPO_PRESCRICAO_TIPO_ESQM
> Tabela de relacionamento entre grupos e Esquemas

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GRUPO_PRESCRICAO | NUMBER | N | Codigo do grupo de prescric?o |
| 2 | CD_TIP_ESQ | VARCHAR2 | N | Codigo do Objeto |

---

## DBAMV.PW_GRUPO_QUEST

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GRUPO_QUEST | NUMBER | N |  |
| 2 | CD_DOCUMENTO_CLINICO | NUMBER | N |  |
| 3 | CD_CONFIG_GRUPO_QUEST | NUMBER | Y |  |
| 4 | DS_CONFIG_GRUPO_QUEST | VARCHAR2 | Y |  |
| 5 | SN_OBSERVACAO | VARCHAR2 | Y |  |
| 6 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 7 | CD_CHAVE_CONTEXTO | VARCHAR2 | Y |  |
| 8 | VL_RISCO_INICIAL | NUMBER | Y | Valor inicial do risco. |
| 9 | VL_RISCO_FINAL | NUMBER | Y | Valor final do risco. |
| 10 | TP_RISCO | VARCHAR2 | Y | Tipo do risco. |

---

## DBAMV.PW_HISTORICO_CHAMADO_DOMIC
> [PAGU] Tabela de cadastro de histórico do Chamado Domiciliar.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_HISTORICO_CHAMADO_DOMIC | NUMBER | N | Código sequencial único do Histórico do Chamado Domiciliar. |
| 2 | DT_HISTORICO | DATE | N | Data do histórico do chamado. |
| 3 | CD_USUARIO | VARCHAR2 | N | Usuário de movimentação do histórico do chamado. |
| 4 | CD_CHAMADO_DOMICILIAR | NUMBER | N | Código do chamado domiciliar movimentado. |
| 5 | CD_MOTIVO_DOMICILIAR | NUMBER | Y | Código do motivo do chamado domiciliar. |
| 6 | TP_STATUS | VARCHAR2 | N | Status do chamado domiciliar. I = Inserido; A = Atribuído; O = Notificado; R = Realizado; S = Rea... |
| 7 | CD_PRESTADOR_ATUAL | NUMBER | Y | Código do prestador atual do chamado. |
| 8 | CD_PRESTADOR_ANTERIOR | NUMBER | Y | Código do prestador anterior do chamado. |
| 9 | DS_OBSERVACAO_HISTORICO | VARCHAR2 | Y | Observação do histórico. |

---

## DBAMV.PW_HISTORICO_ENCAMNH_PAC
> Tabela para guardar o historico dos Encaminhamentos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_HISTORICO_ENCAMNH_PAC | NUMBER | N | Código da Sequence da tabela |
| 2 | CD_ENCAMINHAMENTO | NUMBER | N | Código do encaminhamento |
| 3 | CD_PACIENTE | NUMBER | N | Código do Paciente |
| 4 | DH_CRIACAO | DATE | N | Data/hora da criacao do registro |
| 5 | CD_USUARIO_CRIACAO | VARCHAR2 | N | Codigo do usuario que criou o registro |
| 6 | CD_PRESTADOR | NUMBER | N | Codigo do prestador que cancelou o registro |
| 7 | DS_JUSTIFICATIVA_REJEICAO | VARCHAR2 | Y | DESCRICAO DA JUSTIFICATIVA DA REJEIÇÃO DO ENCAMINHAMENTO |
| 8 | STATUS | VARCHAR2 | N | Status do encaminhamento. Tipos: R: Rejeitado, A:Aceito |

---

## DBAMV.PW_HISTORICO_REJEICAO_ATND_PAC
> TABELA DE REGISTRO DO HISTÓRICO DA REJEIÇÃO DO ATENDIMENTO DO PACIENTE PELO PRESTADOR.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_HISTORICO_REJEICAO_ATND_PAC | NUMBER | N | CÓDIGO DA CHAVE PRIMARIA DA TABELA. |
| 2 | CD_SETOR | NUMBER | N | CÓDIGO DO SETOR. |
| 3 | CD_ESPECIALIDADE | NUMBER | N | CÓDIGO DA ESPECIALIDADE. |
| 4 | CD_ATENDIMENTO | NUMBER | N | CÓDIGO DO ATENDIMENTO. |
| 5 | CD_USUARIO_CRIACAO | VARCHAR2 | N | CODIGO DO USUARIO QUE CRIOU O REGISTRO. |
| 6 | CD_PRESTADOR | NUMBER | N | CODIGO DO PRESTADOR QUE REJEITOU O ATENDIMENTO. |
| 7 | DS_JUSTIFICATIVA_REJEICAO | VARCHAR2 | Y |  |
| 8 | TP_ATENDIMENTO | VARCHAR2 | Y | TIPO DO ATENDIMENTO. |

---

## DBAMV.PW_HIST_ACPMT_PACIENTE_ONCO
> Tabela que armazena o histórico do acompanhamento oncologico do paciente

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_HIST_ACPMT_PACIENTE_ONCO | NUMBER | N | Chave Primária |
| 2 | CD_ACPMT_PACIENTE_ONCO | NUMBER | N | Código do acompanhamento do paciente |
| 3 | CD_DOCUMENTO_CLINICO | NUMBER | N | Código do documento clínico |
| 4 | DH_CADASTRO | TIMESTAMP(6) | Y | Data do cadastro |
| 5 | CLASSIFICACAO_PACIENTE | VARCHAR2 | N | Classificação do paciente, se Oncológico ou Suspeita |
| 6 | DT_CLASSIFICACAO_PACIENTE | TIMESTAMP(6) | N | Data de Classificação do paciente, se Oncológico ou Suspeita |
| 7 | DT_IMUNO_HISTOQUIMICA | TIMESTAMP(6) | Y | Data do imuno-histoquímico |
| 8 | DT_HISTOPATOLOGICO | TIMESTAMP(6) | Y | Data do histoparologico |
| 9 | DH_PRIMEIRO_TRATAMENTO | TIMESTAMP(6) | Y | Data do primeiro tratamento |
| 10 | TEMPO_DOENCA | NUMBER | Y | Tempo da doença |
| 11 | DH_OBITO | TIMESTAMP(6) | Y | Data do óbito do paciente |
| 12 | SN_ATIVO | VARCHAR2 | N | Indica se o acompanhamento está ativo ou não |
| 13 | NM_USUARIO | VARCHAR2 | N | Nome do usuário que assinou, fechou ou cancelou o documento |
| 14 | CD_PRESTADOR | NUMBER | N | Prestador que assinou, fechou ou cancelou o documento |

---

## DBAMV.PW_HIST_ACPMT_PACIENTE_TRTM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_HIST_ACPMT_PACIENTE_TRTM | NUMBER | N | Chave Prim?ria |
| 2 | CD_HIST_ACPMT_PACIENTE_ONCO | NUMBER | N | Codigo do Historico do Acompanhamento Oncologico |
| 3 | CD_ACPMT_PACIENTE_TRATAMENTO | NUMBER | N | Codigo Tratamento Oncologico |
| 4 | CD_ACPMT_PACIENTE_ONCO | NUMBER | N | Código do acompanhamento oncológico |
| 5 | CD_DOCUMENTO_CLINICO_ORIGEM | NUMBER | N | Código do documento clínico no qual o tratamento foi adicionado |
| 6 | CD_CIRURGIA | NUMBER | Y | Codigo da cirurgia |
| 7 | CD_TRATAMENTO | NUMBER | Y | Codigo do Tratamento |
| 8 | TIPO_TRATAMENTO | VARCHAR2 | N | Tipo de Tratamento |
| 9 | CD_PESQUISA_CIENTIFICA | NUMBER | Y | Codigo da Pesquisa Cientifica |
| 10 | DS_LOCAL_TRATAMENTO | VARCHAR2 | N | Descricao do Local do Tratamento |
| 11 | DS_STATUS | VARCHAR2 | N | Descricao do status do tratamento do paciente oncologico |
| 12 | DH_INICIO | TIMESTAMP(6) | N | Data de inicio do tratamento |
| 13 | DH_FIM | TIMESTAMP(6) | Y | Data de finalizacao do tratamento |
| 14 | DS_OBSERVACAO | VARCHAR2 | Y | Observacoes do tratamento |
| 15 | DH_CRIACAO | TIMESTAMP(6) | Y | Data e hora da criacao do tratamento |
| 16 | CD_PRESTADOR | NUMBER | N | Prestador que realizou o cadastro do tratamento |
| 17 | NR_SESSOES | NUMBER | Y |  |

---

## DBAMV.PW_HIST_EVENTO_ADVERSO_PAC
> Tabela referente ao histórico de evolução do evento adverso por paciente, toda modificação do evento adverso por paciente, deve ser salvo aqui.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_HIST_EVENTO_ADVERSO_PAC | NUMBER | N | Código do histórico do evento adverso por paciente |
| 2 | CD_EVENTO_ADVERSO_PAC | NUMBER | N | Código do evento adverso por paciente |
| 3 | CD_DOCUMENTO_CLINICO | NUMBER | N | código do documento clínico |
| 4 | CD_EVENTO_ADVERSO | NUMBER | N |  |
| 5 | CD_GRAU_EVENTO_ADVERSO | NUMBER | N | código do grau do evento adverso |
| 6 | DH_MODIFICACAO | TIMESTAMP(6) | N | data e hora da modificação do registro |
| 7 | DH_CRIACAO | TIMESTAMP(6) | N |  |
| 8 | SN_ATIVO | VARCHAR2 | N | S(Sim) ou N(não) informando se o registro está ativo |
| 9 | DS_JUSTIFICATIVA_INATIVACAO | VARCHAR2 | Y | justificativa do inativamento |
| 10 | CD_PRESTADOR_INATIVACAO | NUMBER | Y |  |
| 11 | CD_USUARIO_INATIVACAO | VARCHAR2 | Y |  |
| 12 | CD_PRESTADOR_CRIACAO | NUMBER | N |  |
| 13 | CD_USUARIO_CRIACAO | VARCHAR2 | N | código do usuário responsável pelo registro |
| 14 | CD_PRESTADOR_MODIFICACAO | NUMBER | Y | PRESTADOR RESPONSAVEL PELA ULTIMA MODIFICACAO |

---

## DBAMV.PW_HIST_REACAO_TRATAMENTO
> Tabela que armazena as reações ao tratamento.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_HIST_REACAO_TRATAMENTO | NUMBER | N | Chave primária |
| 2 | CD_HIST_ACPMT_PACIENTE_ONCO | NUMBER | N | Código do histórico do acompanhamento do paciente |
| 3 | CD_REACAO_TRATAMENTO | NUMBER | N | Código da reação ao tratamento |
| 4 | NR_PROGRESSO | NUMBER | N | Número do progresso |
| 5 | TIPO_REACAO | VARCHAR2 | N | Tipo da reação: Progressão, Remissão, Recaída, Recidiva, Informar Óbito |
| 6 | DH_AVALIACAO | TIMESTAMP(6) | N | Data da avaliação |
| 7 | CD_ACPMT_PACIENTE_ONCO | NUMBER | N | Acompanhamento oncológico |
| 8 | CD_PRESTADOR | NUMBER | N | Prestador que inseriu a informação |
| 9 | DH_REGISTRO | TIMESTAMP(6) | Y | Data do registro da informação |

---

## DBAMV.PW_HIST_SESS_TRTM_ACPMT_PAC
> Tabela que armazena O HISTÓRICO da sessão do tratamento oncologico do paciente

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_HIST_SESS_TRTM_ACPMT_PAC | NUMBER | N | Chave primária |
| 2 | CD_HIST_ACPMT_PACIENTE_TRTM | NUMBER | N | Código do histórico do acompanhamento do tratamento do paciente |
| 3 | DH_CADASTRO | TIMESTAMP(6) | Y | Data do cadastro |
| 4 | CD_SESS_TRTM_ACPMT_PAC_ONCO | NUMBER | Y | Código da seção do tratamento acompanhado |
| 5 | CD_TRATAMENTO | NUMBER | N | Código do tratamento |
| 6 | NR_CICLO | NUMBER | N | Número do ciclo |
| 7 | NR_SESSAO | NUMBER | N | Número da sessão |
| 8 | NR_DIA | NUMBER | N | Número dia |
| 9 | DT_PREVISTA | TIMESTAMP(6) | N | Data prevista para a sessão |
| 10 | DT_REALIZADO | TIMESTAMP(6) | Y | Data que foi realizado a sessão |
| 11 | CD_ACPMT_PACIENTE_TRATAMENTO | NUMBER | N | Código do acompanhamento do tratamento do paciente |
| 12 | STATUS | VARCHAR2 | N | Status da sessão: Não realizado, Agendado, Realizado, Interrompido |
| 13 | MOTIVO | VARCHAR2 | Y | Motivo para a não realização da sessão: Recusa do tratamento, Doença avançada, Falta de condições... |
| 14 | OBSERVACAO | VARCHAR2 | Y | Observação sobre o motivo da não realização da sessão |
| 15 | NM_USUARIO | VARCHAR2 | N | Nome do usuário que realizou informou os dados da seção |
| 16 | CD_PRESTADOR | NUMBER | N | Prestador que realizou informou os dados da seção |

---

## DBAMV.PW_HORARIO_FECHADO_CHECAGEM
> Representa os horários checados pertencentes a um fechamento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_HORARIO_FECHADO_CHECAGEM | NUMBER | N | Chave primária da tabela |
| 2 | CD_FECHAMENTO_HORARIO_CHECAGEM | NUMBER | N | Código do fechamento no qual o horário está contido |
| 3 | CD_IDENTIFICADOR | NUMBER | Y | Código identificador do horário |
| 4 | CD_ITPRE_MED | NUMBER | N | Código do item de prescrição relativo ao horário |
| 5 | DH_MEDICACAO | DATE | N | Representa um horário para o item de prescrição |
| 6 | DH_CHECAGEM | DATE | N | Data/Hora de realização da checagem do horário |
| 7 | CD_USUARIO | VARCHAR2 | N | Código do usuário que incluiu o horário |
| 8 | SN_SUSPENSO | VARCHAR2 | N | Se o horário foi checado como não administrado |
| 9 | DS_OBSERVACAO_APRAZAMENTO | VARCHAR2 | Y | Representa a observação inserida no momento de aprazamento do horário |
| 10 | CD_USUARIO_APRAZAMENTO | VARCHAR2 | Y | Código do usuário que realizou o aprazamento do horário |
| 11 | DH_CONFERENCIA | DATE | Y | Data/Hora de conferência do horário |
| 12 | CD_USUARIO_CONFERENCIA | VARCHAR2 | Y | Código do usuário que realizou o conferência do horário |
| 13 | CD_FECHAMENTO | NUMBER | Y | Código de fechamento do aprazamento |
| 14 | QT_ADMINISTRADA | NUMBER | Y | Indica a quantidade informada para o item através da tela de checagem |
| 15 | DS_JUSTIFICATIVA | VARCHAR2 | Y | Representa a justificativa inserida no momento de checagem do horário |
| 16 | CD_JUSTIFICATIVA_CHECAGEM | NUMBER | Y | Código de justificativa informado no momento de checagem do horário |
| 17 | DH_DESLIGA | DATE | Y | Data/Hora do desligamento |
| 18 | SN_ALTERADO | VARCHAR2 | N | Indica que houve alteração no horário após o fechamento (Checagem desfeita) |

---

## DBAMV.PW_HRITPRE_MED_PRESCRICAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_HRITPRE_MED_PRESCRICAO | NUMBER | N | Chave da tabela |
| 2 | CD_ITPRE_MED | NUMBER | N |  |
| 3 | DH_MEDICACAO | DATE | N |  |
| 4 | CD_ATENDIMENTO | NUMBER | N |  |
| 5 | DH_CANCELADO | DATE | Y |  |
| 6 | CD_PREST_CANC | NUMBER | Y |  |
| 7 | CD_FECHAMENTO | NUMBER | Y | CÃ³digo do Fechamento |
| 8 | DS_HORARIO | VARCHAR2 | Y | DescriÃ§Ã£o do Horario |
| 9 | DH_LIMITE | DATE | Y | Horario Limite de AplicaÃ§Ã£o |
| 10 | NR_DIA | NUMBER | Y | NÃºmero do dia da SessÃ£o. |
| 11 | SN_ALTERADO_PRESTADOR | VARCHAR2 | Y | Informa se o horÃ¡rio foi modificado pelo prestador |
| 12 | NM_USUARIO | VARCHAR2 | Y | CÃ³digo do usuÃ¡rio que inseriu o registro. |
| 13 | DH_CRIACAO | DATE | Y | Hora da criaÃ§Ã£o do registro. |
| 14 | NM_FORMULARIO | VARCHAR2 | Y | Tela, origem, da criaÃ§Ã£o do registro. |
| 15 | NR_DIA_TRATAMENTO | NUMBER | Y | Preserva a informaÃ§Ã£o do dia da sessÃ£o para prescriÃ§Ãµes tipo TRATMT |
| 16 | CD_PRE_MED_SESSAO | NUMBER | Y | CÃ³digo da prescriÃ§Ã£o de tratamento referente ao dia |
| 17 | DS_OBSERVACAO_APRAZAMENTO | VARCHAR2 | Y | Coluna que guarda a observaÃ§Ã£o inserida no momento do aprazamento do horÃ¡rio do item de prescr... |
| 18 | CD_USUARIO_APRAZAMENTO | VARCHAR2 | Y | Coluna que guarda o usuÃ¡rio que fez o aprazamento do horÃ¡rio |
| 19 | DS_JUSTIFICATIVA | VARCHAR2 | Y | Justificativa para checagem atrasada |
| 20 | DH_CONFERENCIA | DATE | Y | Data e Hora da conferÃªncia do horÃ¡rio |
| 21 | CD_USUARIO_CONFERENCIA | VARCHAR2 | Y | CÃ³digo identificador do usuÃ¡rio que efetuou a conferÃªncia do horÃ¡rio |
| 22 | DS_CODIGO_BARRAS_HORARIO | VARCHAR2 | Y |  |
| 23 | CD_JUSTIFICATIVA_MOBILE | NUMBER | Y | CÃ³digo identificador da justificativa para checagem sem cÃ³digo de barras |
| 24 | TP_GERACAO | VARCHAR2 | Y | Indica se foi gerado horÃ¡rio das seguintes formas: (AUTOMATICO,PRESCRICAO,CHECAGEM,AVALIACAO_FAR... |
| 25 | QTD_ADMINISTRADA | NUMBER | Y | Indica a quantidade informada para o item atravÃ©s da tela de checagem. |
| 26 | CD_USUARIO | VARCHAR2 | Y | Indica o usuÃ¡rio que criou o horÃ¡rio. |
| 27 | QT_ADMINISTRADA | NUMBER | Y |  |
| 28 | CD_IDENTIFICADOR | NUMBER | Y | Codigo unico identificador do horario, para manter o rastreamento apos reaprazamento que altera o... |

---

## DBAMV.PW_ICONE
> Tabela que concentra todos os icones padrões utilizados no MVPEP. O domínio de registros desta tabela é controlado exclusivamente por carga padrão da MV

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NM_ICONE | VARCHAR2 | N | Chave primária da tabela de icone |
| 2 | LO_ICONE | BLOB | N | Tipo de uso previsto para o Icone. Valores possiveis: [PERFIL]=>Usado no cadastro dos modulos do ... |
| 3 | TP_USO | VARCHAR2 | N |  |

---

## DBAMV.PW_INDICACAO_PACIENTE
> Tabela para guardar as indicações do paciente

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INDICACAO_PACIENTE | NUMBER | N | Código da Sequence da tabela |
| 2 | DH_CRIACAO | DATE | Y | Data/hora da criacao do registro |
| 3 | DH_INATIVACAO | DATE | Y | Data/hora da inativação do registro |
| 4 | CD_PACIENTE | NUMBER | N | Código do Paciente |
| 5 | CD_ATENDIMENTO | NUMBER | N | Código do Atendimento |
| 6 | TP_INDICACAO | VARCHAR2 | N | Descrição do tipo de indicação. valores possíveis: P,R |
| 7 | DS_INDICACAO_PACIENTE | VARCHAR2 | N | Descrição da Indicação valores possíveis: C, G, A, Q, F, U, B, I, N |
| 8 | CD_DOCUMENTO_CLINICO_CRIACAO | NUMBER | Y | Código do Documento Clínico que criou o registro |
| 9 | CD_DOCUMENTO_CLINICO_INATIVA | NUMBER | Y | Código do Documento Clínico que inativou o registro |
| 10 | CD_CONFIG_INDICACAO_PACIENTE | NUMBER | Y | Chave relacional(FK) com a tabela de configuração de indicações |
| 11 | CD_USUARIO_INICIO_INDICACAO | VARCHAR2 | Y | Usuário que deu origem a entrada na indicação |
| 12 | CD_USUARIO_FIM_INDICACAO | VARCHAR2 | Y | Usuário que deu origem a saída da indicação |

---

## DBAMV.PW_INSTRUMENTO_AFERICAO
> Tabela para Instrumento Aferic?o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INSTRUMENTO_AFERICAO | NUMBER | N | Codigo Instrumento Aferic?o |
| 2 | DS_INSTRUMENTO_AFERICAO | VARCHAR2 | N | Descric?o Instrumento Aferic?o |
| 3 | SN_ATIVO | VARCHAR2 | N | Se Instrumento Aferic?o esta Ativo |

---

## DBAMV.PW_INTEGRACAO
> Configuracao de integracao

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INTEGRACAO | NUMBER | N | Codigo da integracao |
| 2 | CD_TIPO_INTEGRACAO | NUMBER | N | Codigo do tipo de integracao |
| 3 | CD_SISTEMA_INTEGRADO | NUMBER | N | Codigo do sistema a ser integrado |
| 4 | DESCRICAO | VARCHAR2 | N | Descricao da integracao |
| 5 | DS_URL | VARCHAR2 | Y | URL para comunicacao com o sistema integrado |
| 6 | SN_ATIVO | VARCHAR2 | N | Determina se a integracao esta habilitada. Valores: S - Sim, N - Nao |

---

## DBAMV.PW_ITBALANCO_HIDRICO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITBALANCO_HIDRICO | NUMBER | N |  |
| 2 | CD_TIP_PRESC | NUMBER | Y | CODIGO DO TIPO DA PRESCRICAO. |
| 3 | VL_COLETA | NUMBER | N | VALOR DA COLETA. |
| 4 | TP_CALCULO | VARCHAR2 | N | TIPO DO CALCULO DO ITEM. TIPOS POSSIVEIS: GANHO(G), PERCA(P), OUTROS(O) |
| 5 | CD_FOR_APL | VARCHAR2 | Y | CÓDIGO DA FORMA DE APLICACAO |
| 6 | CD_USUARIO | VARCHAR2 | N | CODIGO DO USUÁRIO QUE FEZ A COLETA. |
| 7 | DH_COLETA | DATE | N | DATAE HORA  QUE FOI REALIZADO A COLETA |
| 8 | DH_REGISTRO | DATE | N | DATA E HORA QUE O REGISTRO FOI CRIADO |
| 9 | DS_TIP_PRESC | VARCHAR2 | Y | DESCRICAO DO ITEM DE PRESCRICAO |
| 10 | CD_GRUPO_BALANCO_HIDRICO | NUMBER | N | CODIGO DO GRUPO DO BALANCO HIDRICO |
| 11 | SN_ITEM_FIXO | VARCHAR2 | N | INDICA SE O ITEM SERÁ EXIBIDO FIXO NO GRUPO DO BALANCO HIDRICO |
| 12 | TP_ITEM_PREDEFINIDO | VARCHAR2 | Y | TIPO DO ITEM PREDEFINIDO. TIPOS POSSIVEIS: VOMITO (VOM), DIURESE(DIUQ), SUDORESE(SUD), DEBITO URI... |
| 13 | NR_ORDEM | NUMBER | Y | INDICA A ORDEM CONFIGURADA PARA O ITEM QUANDO ESTE FOR PREDEFINIDO |
| 14 | CD_UNI_PRO | NUMBER | Y | COLUNA PARA CONSOLIDAR O CODIGO DA UNIDADE DO PRODUTO ASSOCIADA AO ITEM BALACO HIDRICO. |
| 15 | SN_SOMA_TOTAL_BALANCO | VARCHAR2 | Y | CONFIGURAÇÃO QUE INDICA SE O ITEM NO MOMENTO DO LANÇAMENTO ESTAVA CONFIGURADO PARA SOMAR AO TOTAL... |
| 16 | VL_COLETA_UNI_PRO_LANC | NUMBER | Y | VALOR DA COLETA RELACIONADO À UNIDADE. |
| 17 | CD_CONFIG_ITENS_GRUPO_BALANCO | NUMBER | Y | CONSOLIDA A CONFIGURAÇÃO DO ITEM DO GRUPO DO BALANÇO. |
| 18 | CD_ITPRE_MED | NUMBER | Y | Codigo Item para fazer ligacao com o item admintrado PK composta CD_ITPRE_MED e DH_MEDICACAO |
| 19 | DH_MEDICACAO | DATE | Y | Data do Item para fazer ligacao com o item admintrado PK composta CD_ITPRE_MED e DH_MEDICACAO |

---

## DBAMV.PW_ITBALANCO_HIDRICO_FECH

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITBALANCO_HIDRICO_FECH | NUMBER | N | CHAVE PRIMARIA DA TABELA DBAMV.PW_BALANCO_HIDRICO_FECHAMENTO |
| 2 | CD_TIP_PRESC | NUMBER | Y | CÓDIGO DA TABELA TIP_PRESC |
| 3 | QT_TIP_PRESC | NUMBER | Y | QUANTIDADE TOTAL DOS HORÁRIOS SOMADOS |
| 4 | CD_BALANCO_HIDRICO_FECHAMENTO | NUMBER | N | CHAVE DA TABELA DBAMV.PW_BALANCO_HIDRICO_FECHAMENTO |

---

## DBAMV.PW_ITBAL_HID_UNI_PRO_FATOR
> TABELA PARA ARMAZENAR A MOVIMENTAÇÃO DOS LANÇAMENTOS DE UNIDADES E FATORES UTILIZADOS NAS CONVERSÕES, PARA OS ITENS DE BALANÇO HÍDRICO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITBAL_HID_UNI_PRO_FATOR | NUMBER | N | CÓDIGO SEQUENCIAL DAS MOVIMENTAÇÕES, CHAVE PRIMARIA. |
| 2 | CD_ITBALANCO_HIDRICO | NUMBER | N | CÓDIGO DO ITEM DO BALANÇO HÍDRICO, FOREIGN KEY. |
| 3 | CD_UNI_PRO | NUMBER | N | CÓDIGO DA UNIDADE DO PRODUTO UTILIZADA NO LANÇAMENTO OU NA CONVERSÃO, FOREIGN KEY. |
| 4 | VL_FATOR | NUMBER | N | VALOR DO FATOR DE REFERÊNCIA UTILIZADO PARA A CONVERSÃO. |
| 5 | SN_REFERENCIA | VARCHAR2 | N | CAMPO PARA INDICAR QUAL FOI A UNIDADE REFERENCIA UTILIZADA NA CONVERSÃO. |

---

## DBAMV.PW_ITCONFIG_INTER_CID_PRESC
> Tabela para armazenar os detalhes da configurações de alertas itens x cid

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITCONFIG_INTER_CID_PRESC | NUMBER | N | Código do item do alerta chave primaria |
| 2 | CD_CONFIG_INTER_CID_PRESC | NUMBER | Y | Código do item do alerta da tabela Pw_itconfig_inter_cid_presc |
| 3 | TP_INTERACAO | VARCHAR2 | Y | Tipo da interação ¿ (hepatotóxicos e nefrotóxicos) |
| 4 | CD_CID | VARCHAR2 | Y | Armazena o código do CID - doença |
| 5 | DS_MENSAGEM | VARCHAR2 | Y | Campo texto para a mensagem de alerta a interação itens x cid. |

---

## DBAMV.PW_ITCONFIG_RESUL_EXAME_PRESC
> Tabela para armazenar os detalhes da configurações de alertas nas prescrição exames x itens

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITCONFIG_RESUL_EXAME_PRESC | NUMBER | N | Código do item do alerta chave primaria |
| 2 | CD_CONFIG_RESUL_EXAME_PRESC | NUMBER | Y | Código do item de prescrição a ser relacionado com exames |
| 3 | CD_EXA_LAB | NUMBER | Y | código do exame laboratorial |
| 4 | CD_VERSAO | NUMBER | Y | Código da versão do exame |
| 5 | NM_CAMPO | VARCHAR2 | Y | Nome do campo da versão do exame |
| 6 | VL_FAIXA_MIN_INI | NUMBER | Y | Valor minimo inicial para a faixa do resultado de exame |
| 7 | VL_FAIXA_MIN_FIM | NUMBER | Y | Valor minimo final para a faixa do resultado de exame |
| 8 | VL_FAIXA_MAX_INI | NUMBER | Y | Valor máximo inicial para a faixa do resultado de exame |
| 9 | VL_FAIXA_MAX_FIM | NUMBER | Y | Valor máximo final para a faixa do resultado de exame |
| 10 | VL_BLOQUEIO | NUMBER | Y | Valor de bloqueio para prescrição do resultado de exame |
| 11 | DS_MENSAGEM | VARCHAR2 | Y | Descrição do alerta para a prescrição médica referente a item x exame. |
| 12 | TP_SEXO | VARCHAR2 | N | Sexo do paciente para se enquadrar no alerta, e ele ser exibido no item de prescrição |
| 13 | DS_RESULTADO_TEXTO | VARCHAR2 | Y | Coluna que contém o resultado do exame do tipo texto que será validado pela tela |

---

## DBAMV.PW_ITCONFIG_SOLIC_EXAME_DIMIN
> Tabela para armazenar os detalhes da configurações de alertas nas prescrição exames x itens

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITCONFIG_SOLIC_EXAME_DIMIN | NUMBER | N | Código do item do alerta chave primaria |
| 2 | CD_CONFIG_SOLIC_EXAME_PRESC | NUMBER | Y | Código do item de prescrição a ser relacionado com exames |
| 3 | CD_EXA_LAB_DIMINUICAO | NUMBER | Y | Codigo do exame diminuição |
| 4 | DS_EFEITO | VARCHAR2 | Y | Descrição do efeito |

---

## DBAMV.PW_ITCONFIG_SOLIC_EXAME_ELEV
> Tabela para armazenar os detalhes da configurações de alertas nas prescrição exames x itens

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITCONFIG_SOLIC_EXAME_ELEV | NUMBER | N | Código do item do alerta chave primaria |
| 2 | CD_CONFIG_SOLIC_EXAME_PRESC | NUMBER | Y | Código do item de prescrição a ser relacionado com exames |
| 3 | CD_EXA_LAB_ELEVACAO | NUMBER | Y | Codigo do exame diminuição |
| 4 | DS_EFEITO | VARCHAR2 | Y | Descrição do efeito |

---

## DBAMV.PW_ITEM_AFERICAO_SETOR
> Tabela para Item de Aferic?o por Setor

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITEM_AFERICAO_SETOR | NUMBER | N | Codigo Item de Aferic?o por Setor |
| 2 | CD_SINAL_VITAL | NUMBER | N | Codigo Sinal Vital |
| 3 | CD_SETOR | NUMBER | Y | Codigo Setor |
| 4 | SN_VISUALIZAR | VARCHAR2 | N | Indica se o item sera visualizado na receita, prescric?o, solicitac?o de exame e outros. |
| 5 | NR_ORDEM | NUMBER | Y | Grava a ordem q os itens de aferic?o dever?o ser exibidos para esse setor |
| 6 | SN_OBRIGATORIO | VARCHAR2 | Y | Campo que indica se o item sera obrigatorio ou n?o no momento da aferic?o |
| 7 | CD_GRUPO_ITENS_AFERICAO | NUMBER | Y | Campo para criar grupos de itens de aferic?o |
| 8 | SN_EXIBE_LOCAL_AFERICAO | VARCHAR2 | N |  |
| 9 | SN_EXIBE_POSICAO_PACIENTE | VARCHAR2 | N |  |
| 10 | SN_OBRIGA_LOCAL_AFERICAO | VARCHAR2 | N |  |
| 11 | SN_OBRIGA_POSICAO_PACIENTE | VARCHAR2 | N |  |
| 12 | SN_IMPORTACAO_AUTOMATICA | VARCHAR2 | N | ATIVA IMPORTACAO AUTOMATICA DE SINAIS VITAIS |
| 13 | NR_HORAS_IMPORTACAO | NUMBER | Y | LIMITE DE HORAS PARA RECUPERACAO DE AFERICOES INTEGRADAS |
| 14 | NR_MINUTOS_IMPORTACAO | NUMBER | Y | LIMITE DE MINUTOS PARA RECUPERACAO DE AFERICOES INTEGRADAS |
| 15 | SN_OBSERVACAO | VARCHAR2 | Y |  |

---

## DBAMV.PW_ITEM_CORPO_HUMANO
> Tabela para Item do Corpo Humano

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITEM_CORPO_HUMANO | NUMBER | N | Codigo Item do Corpo Humano |
| 2 | NM_ITEM_CORPO_HUMANO | VARCHAR2 | N | Nome Item do Corpo Humano |
| 3 | DS_SIGLA | VARCHAR2 | N | Sigla Item do Corpo Humano |
| 4 | DS_SVG | VARCHAR2 | N | SVG Item do Corpo Humano |

---

## DBAMV.PW_ITEM_GRUPO_EXAME
> Tabela que vai associar os exames com os grupos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GRUPO_EXAME | NUMBER | N | Código do grupo ao qual o exame esta vinculado. |
| 2 | CD_EXA_LAB | NUMBER | N | Código do exame. |
| 3 | NR_ORDEM | NUMBER | N | Ordem em que os exames serão apresentadas |

---

## DBAMV.PW_ITEM_GRUPO_PADR_SELEC_PRESC
> Tabela de relacionamento entre os Padroes e Itens selecionados

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIGURACAO_PADRAO_ITEM | NUMBER | N | Codigo do Item padr?es |
| 2 | CD_ITPRE_MED | NUMBER | N | Codigo do item de prescritos |

---

## DBAMV.PW_ITEM_MEMBRO_CORPO_HUMANO
> Tabela para Item de Membro do Corpo Humano

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITEM_CORPO_HUMANO | NUMBER | N | Codigo Item de Membro do Corpo Humano |
| 2 | CD_MEMBRO_CORPO_HUMANO | NUMBER | Y | Codigo Membro do Corpo Humano |

---

## DBAMV.PW_ITEM_ORGAO_CORPO_HUMANO
> Tabela para Item de Org?o do Corpo Humano

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITEM_CORPO_HUMANO | NUMBER | N | Codigo Item de Org?o do Corpo Humano |
| 2 | CD_ORGAO_CORPO_HUMANO | NUMBER | Y | Codigo Org?o do Corpo Humano |

---

## DBAMV.PW_ITEM_PESQUISA_CIENTIFICA
> Configuração dos itens da pesquisa científica

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITEM_PESQUISA_CIENTIFICA | NUMBER | N | Código do item da pesquisa cientifica |
| 2 | CD_PESQUISA_CIENTIFICA | NUMBER | N | Código da pesquisa cientifica |
| 3 | CD_TIP_PRESC | NUMBER | N | Código do item de prescrição |
| 4 | SN_CONTRA_INDICADO | VARCHAR2 | N | Informa se é contra-indicado: S - Sim, N - Não |
| 5 | SN_PRINCIPAL | VARCHAR2 | N | Informa se é o item principal da pesquisa: S - Sim, N - Não |

---

## DBAMV.PW_ITEM_RECEITA
> Tabela para Item Receita

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITEM_RECEITA | NUMBER | N | Codigo Item Receita |
| 2 | QT_ITEM | NUMBER | Y | Quantidade Item Receita |
| 3 | QT_DURACAO | NUMBER | Y | Quantidade Durac?o Item Receita |
| 4 | DS_OBSERVACAO | VARCHAR2 | Y | Observac?o Item Receita |
| 5 | SN_INTERACAO | VARCHAR2 | N | Interac?o Item Receita |
| 6 | SN_ALERGIA | VARCHAR2 | N | Alergia Item Receita |
| 7 | SN_SUSPENSO | VARCHAR2 | N | Se o Item Receita esta Suspenso |
| 8 | SN_CONTINUO | VARCHAR2 | N | Se o Item Receita e Continua |
| 9 | DT_HORA_ITEM_RECEITA_MEDICA | DATE | Y | Data Hora Item Receita |
| 10 | DS_JUSTIFICATIVA_INTERACAO | VARCHAR2 | Y | Justificativa Interac?o Item Receita |
| 11 | DS_JUSTIFICATIVA_ALERGIA | VARCHAR2 | Y | Justificativa Alergia Item Receita |
| 12 | DS_MOTIVO_SUSPENSAO | VARCHAR2 | Y | Motivo Suspens?o Item Receita |
| 13 | DS_JUSTIFICATIVA_ITEM | VARCHAR2 | Y | Justificativa Item Receita |
| 14 | CD_RECEITA | NUMBER | N | Codigo Receita |
| 15 | CD_UNIDADE_DURACAO | NUMBER | Y | Codigo Unidade Durac?o |
| 16 | CD_FOR_APL | VARCHAR2 | Y | Codigo Forma Aplicac?o. |
| 17 | CD_UNI_PRO | NUMBER | Y | Codigo Unidade Produto |
| 18 | CD_UNI_PRESC | NUMBER | Y | Codigo Unidade Prescric?o |
| 19 | CD_TIP_FRE | NUMBER | Y | Codigo Tipo Frequencia |
| 20 | CD_TIP_PRESC | NUMBER | N | Codigo Tipo Prescric?o |
| 21 | CD_ITEM_SUSPENSAO | NUMBER | Y | Grava o codigo do item que foi suspenso, para que se pssa saber de qual receita ele veio |
| 22 | DS_NPADRONIZADO | VARCHAR2 | Y | Descricao do item nao padronizado |
| 23 | QT_DIAS | NUMBER | Y | Grava a quantidade de dias em que o paciente devera tomar a medicac?o receitada |

---

## DBAMV.PW_ITEM_RECEITA_PADRAO
> Tabela para Item de Receita Padr?o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITEM_RECEITA_PADRAO | NUMBER | N | Codigo Item de Receita Padr?o |
| 2 | SN_ATIVO | VARCHAR2 | Y | Ativo Item de Receita Padr?o |
| 3 | CD_RECEITA_PADRAO | NUMBER | N | Codigo Receita Padr?o |
| 4 | CD_TIP_PRESC | NUMBER | N | Codigo Tipo Prescric?o |

---

## DBAMV.PW_ITEM_TIPO_INTERVENCAO
> Tabela para armazenar cadastros os tipos intervenções por item

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITEM_TIPO_INTERVENCAO | NUMBER | N | Código do tipo de intervenção farmacêutica por item chave primaria |
| 2 | CD_TIPO_INTERVENCAO | NUMBER | N | Código do tipo de intervenção farmacêutica por empresa |
| 3 | CD_ITPRE_MED | NUMBER | Y | Campo que informa o item prescrito |
| 4 | CD_TIP_PRESC | NUMBER | Y | Campo que informa tipo de item prescrito |
| 5 | CD_PRESTADOR | NUMBER | Y | Campo que informa o prestador que realizou a intervenção |

---

## DBAMV.PW_ITGRUPO_EXAME_COMPARATIVO
> Armazena as informac?es de configurac?es dos itens de exames adicionados a um grupo de exames comparativo.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITGRUPO_EXAME_COMPARATIVO | NUMBER | N | Indica o codigo do item do grupo de  exames comparativo(pk). |
| 2 | DS_ITGRUPO_EXAME_COMPARATIVO | VARCHAR2 | Y | Indica a descric?o do item do grupo de exames comparativo |
| 3 | CD_EXA_LAB | NUMBER | Y | Codigo do exame que sera apresentado como resultado. |
| 4 | NR_ORDEM | NUMBER | N | Numero de ordem de apresentac?o em tela. |
| 5 | CD_GRUPO_EXAME_COMPARATIVO | NUMBER | N | Codigo do grupo de exames comparativo(Fk). |
| 6 | CD_VERSAO | NUMBER | Y | Vers?o do Exame |

---

## DBAMV.PW_ITPRE_MED_ALERTA
> Tabela para armazenar os alertar dos processos e sub-processos dos itens de prescrição.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITPRE_MED_ALERTA | NUMBER | N | Código do item do alerta chave primaria |
| 2 | CD_ITPRE_MED | NUMBER | N | Código do item da prescrição medica |
| 3 | TP_JUSTIFICATIVA | VARCHAR2 | Y | Código tipo do processo |
| 4 | TP_DET_JUSTIFICATIVA | VARCHAR2 | Y | Código tipo do sub processo |
| 5 | NR_ORDEM_PROCESSO | NUMBER | Y | Ordem do alerta |
| 6 | DH_ALERTA | DATE | N | data e hora da gravação do alerta |
| 7 | DS_ALERTA | VARCHAR2 | Y | Mensagem do alerta |
| 8 | CD_DOCUMENTO_CLINICO | NUMBER | Y | Código do documento clinico |
| 9 | CD_AVALIACAO_ITPRE_MED | NUMBER | Y | Código do item da avaliação medica caso exista |
| 10 | SN_AVISAR_PRESCRICAO | VARCHAR2 | N | Indica se na ocorrência deste processo será emitida uma mensagem de aviso na tela de Prescrição |
| 11 | SN_AVISAR_AVALIACAO_FARMACIA | VARCHAR2 | N | Indica se na ocorrência deste processo será emitida uma mensagem de aviso na tela de Avaliação Fa... |
| 12 | SN_AVISAR_CHECAGEM_APRAZAMENTO | VARCHAR2 | N | Indica se na ocorrência deste processo será emitida uma mensagem de aviso na tela de Checagem/Apr... |
| 13 | TP_ALERTA | VARCHAR2 | N | Classifica o alerta em Crítico, Informativo ou Não Classificado |
| 14 | SN_JUSTIFICAR | VARCHAR2 | N | Indica se na ocorrência deste processo foi necessário justificar |
| 15 | INDENTIFICADOR_REFERENCIA | NUMBER | Y | Identificação para o id da monografia |
| 16 | NR_IDENTIFICADOR_REFERENCIA | VARCHAR2 | Y |  |

---

## DBAMV.PW_ITPRONTUARIO
> Armazena as informac?es dos itens impressos do prontuario do paciente.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITPRONTUARIO | NUMBER | N | Codigo sequencial do item da impress?o |
| 2 | CD_PRONTUARIO | NUMBER | N | Codigo pk da impress?o do prontuario |
| 3 | CD_DOCUMENTO_CLINICO | NUMBER | N | Codigo do documento clinico |
| 4 | TP_STATUS | VARCHAR2 | Y | Status do documento clinico no momento da impress?o |
| 5 | SN_ERROR | CHAR | Y | Indica se houve erro na geracao |

---

## DBAMV.PW_IT_AFERICAO_SETOR_IMP_AUTM
> CONFIGURACAO DE IMPORTACAO AUTOMATICA DOS SINAIS VITAIS POR SETOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IT_AFERICAO_SETOR_IMP_AUTM | NUMBER | N | CHAVE PRIMARIA |
| 2 | SN_ATIVO | VARCHAR2 | N | HABILITA/DESABILITA IMPORTACAO |
| 3 | CD_SETOR | NUMBER | N | SETOR CONFIGURADO |
| 4 | NR_HORAS | NUMBER | Y | LIMITE DE HORAS PARA RECUPERAR REGISTROS DA INTEGRACAO. MAXIMO 12 HORAS |
| 5 | NR_MINUTOS | NUMBER | Y | LIMITE DE MINUTOS PARA RECUPERAR REGISTROS DA INTEGRACAO. MAXIMO 59 HORAS |

---

## DBAMV.PW_IT_AGENDA_DOMICILIAR
> Tabela do Tipo de Chamado da Agenda da Assistência Domiciliar

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IT_AGENDA_DOMICILIAR | NUMBER | N | Código |
| 2 | CD_TIPO_CHAMADO_DOMICILIAR | NUMBER | N | Código do Tipo de Chamado |
| 3 | CD_AGENDA_DOMICILIAR | NUMBER | N | Código da Agenda |
| 4 | QT_ATENDIMENTO | NUMBER | N | Quantidade de atendimentos permitidos na agenda |
| 5 | QT_MARCADOS | NUMBER | Y | Quantidade de atendimentos agendados |
| 6 | CD_USUARIO_ALTERACAO | VARCHAR2 | Y | Nome do usuário que realizou a última alteração |
| 7 | DT_ALTERACAO | DATE | Y | Data da última alteração |

---

## DBAMV.PW_IT_AGENDA_TP_CHAMADO_DOMIC
> Tabela de log dos tipos de chamados da geração da agenda

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IT_AGENDA_TP_CHAMADO_DOMIC | NUMBER | N | Código do log |
| 2 | CD_IT_AGENDA_DOMICILIAR | NUMBER | N | Código do item(tipo de chamado) da agenda |
| 3 | CD_IT_GERACAO_AGD_AGENDA_DOMIC | NUMBER | N |  |
| 4 | CD_TIPO_CHAMADO_DOMICILIAR | NUMBER | N | Código do tipo de chamado |
| 5 | QT_ATENDIMENTO | NUMBER | N | Quantidade de atendimentos permitidos |

---

## DBAMV.PW_IT_CONFIG_EXIB_ITEM_PRESC
> Tabela para armazenar o detalhamento das configurações de exibição do item de prescrição

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IT_CONFIG_EXIB_ITEM_PRESC | NUMBER | N | Código sequêncial para a tabela |
| 2 | TP_IT_CONFIG_EXIB_ITEM_PRESC | VARCHAR2 | N | Tipo do detalhamento a ser ordenado |
| 3 | CD_CONFIG_EXIBICAO_ITEM_PRESC | NUMBER | N | Código da configuração de exibição do item de prescrição |
| 4 | NR_ORDEM | NUMBER | N | Indica a ordem de exibição |

---

## DBAMV.PW_IT_FICHA_ANESTESICA
> Tabela que contem os itens das fichas anestesicas

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IT_FICHA_ANESTESICA | NUMBER | N | Chave primaria da tabela |
| 2 | CD_FICHA_ANESTESICA | NUMBER | N | Codigo da tabela principal referente a ficha anestesica(fk) |
| 3 | CD_CONFIG_FICHA_ITEM | NUMBER | Y |  |
| 4 | DT_GERACAO | DATE | N | Data da gerac?o do registro |
| 5 | CD_TIP_PRESC | NUMBER | Y | Codigo do item de prescric?o adicionado a ficha anestesica (fk) |
| 6 | CD_SINAL_VITAL | NUMBER | Y | Codigo do Sinal vital adicionado a ficha anestesica (fk) |
| 7 | DS_VALOR | VARCHAR2 | N | Valor adicionado ao item de prescric?o ou sinal vital |
| 8 | DS_UNIDADE | VARCHAR2 | Y |  |
| 9 | SN_ATIVO | VARCHAR2 | N | Indica se o registro esta ativo |
| 10 | CD_CONFIG_FICHA_MONITORAMENTO | NUMBER | Y | Codigo da tabela com os itens de monitoramento referente a configurac?o da ficha anestesica(fk). |
| 11 | DT_IT_FICHA_ANESTESICA | DATE | Y | Data digitada no momento da inclus?o do item |
| 12 | TP_IT_FICHA_ANESTESICA | VARCHAR2 | Y | Tipo da classe do item da ficha anestesica Item de Prescricao: ITEM_PRESCRICAO, Sinal Vital: SINA... |
| 13 | TP_CLASSE_IT_FICHA_ANESTESICA | VARCHAR2 | Y |  |
| 14 | DH_INICIAL | DATE | Y | Data do inicio da medicac?o |
| 15 | DH_FINAL | DATE | Y | Data do final da medicac?o |

---

## DBAMV.PW_IT_GERACAO_AGD_AGENDA_DOMIC
> Tabela de log das agendas geradas para cada escala

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IT_GERACAO_AGD_AGENDA_DOMIC | NUMBER | N | Código do log |
| 2 | CD_IT_GERACAO_AGD_DOMICILIAR | NUMBER | N | Código do item(escala) |
| 3 | CD_AGENDA_DOMICILIAR | NUMBER | N | Código da agenda |

---

## DBAMV.PW_IT_GERACAO_AGD_DOMICILIAR
> Tabela de itens (escalas) de geração da agenda da assistência domiciliar

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IT_GERACAO_AGD_DOMICILIAR | NUMBER | N | Código do item |
| 2 | CD_GERACAO_AGENDA_DOMICILIAR | NUMBER | N | Código da agenda gerada |
| 3 | CD_ESCALA_DOMICILIAR | NUMBER | N | Código da escala |
| 4 | TP_DIA_SEMANA | VARCHAR2 | N | Dia da semana |
| 5 | SN_FERIADO | VARCHAR2 | N | Informa se inclui feriado |
| 6 | QT_ATENDIMENTO | NUMBER | N | Quantidade de atendimentos permitidos |
| 7 | SN_PERMITE_ATEND_EXTRA | VARCHAR2 | N | Informa se permite atendimentos extras |
| 8 | CD_PRESTADOR | NUMBER | N | Código do prestador |
| 9 | CD_ORIGEM | NUMBER | N | Código da origem |
| 10 | TP_STATUS | VARCHAR2 | N | Indica a fase de geração da agenda: P = Pendente/C = Finalizado com críticas/S = Finalizado com s... |
| 11 | DS_MENSAGEM_PROCESSO | VARCHAR2 | Y | Mensagens do processo de geração da agenda. |

---

## DBAMV.PW_JUSTIF_PRONTUARIO_VIP
> Tabela para armazenar as justificativas do pronturio vip

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_JUSTIF_PRONTUARIO_VIP | NUMBER | N | Cdigo da justificativa (PK) |
| 2 | CD_TIPO_JUSTIF_PRONTUARIO_VIP | NUMBER | N | Cdigo do tipo de justificativa (FK) |
| 3 | DS_JUSTIF_PRONTUARIO_VIP | VARCHAR2 | N | Descrio da justificativa |
| 4 | SN_ATIVO | VARCHAR2 | N | Se registro est ativo. Podendo ser (S, N) |

---

## DBAMV.PW_LIMITE_SINAL_VITAL
> Tabela para Limite Sinal Vital

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LIMITE_SINAL_VITAL | NUMBER | N | Codigo Limite Sinal Vital |
| 2 | VL_FAIXA_ETARIA_INICIAL | NUMBER | Y | Faixa Etária em Anos Inicial - Limite Sinal Vital |
| 3 | VL_FAIXA_ETARIA_FINAL | NUMBER | Y | Faixa Etária em Anos Final - Limite Sinal Vital |
| 4 | TP_SEXO | VARCHAR2 | N | Sexo Limite Sinal Vital |
| 5 | VL_LIMITE_INFERIOR | NUMBER | Y | Limite Inferior |
| 6 | VL_LIMITE_SUPERIOR | NUMBER | Y | Limite Superior |
| 7 | SN_ATIVO | VARCHAR2 | N | Se Limite Sinal Vital esta Ativo |
| 8 | CD_SINAL_VITAL | NUMBER | Y | Codigo Sinal Vital |
| 9 | CD_SINAL_VITAL_UNID_INSTR_AFER | NUMBER | Y | Codigo Sinal Vital Unidade e Instrumento Aferic?o |
| 10 | CD_INSTRUMENTO_AFERICAO | NUMBER | Y | Codigo Instrumento Aferic?o |
| 11 | CD_UNIDADE_AFERICAO | NUMBER | Y | Identificador da unidade de aferic?o. |
| 12 | VL_NORMAL_INFERIOR | NUMBER | Y | Faixa de normalidade inferior |
| 13 | VL_NORMAL_SUPERIOR | NUMBER | Y | Faixa de normalidade superior |
| 14 | VL_FAIXA_ETARIA_MESES_INICIAL | NUMBER | Y | Faixa Etária em Meses Inicial - Limite Sinal Vital |
| 15 | VL_FAIXA_ETARIA_DIAS_INICIAL | NUMBER | Y | Faixa Etária em Dias Inicial - Limite Sinal Vital |
| 16 | VL_FAIXA_ETARIA_MESES_FINAL | NUMBER | Y | Faixa Etária em Meses Final - Limite Sinal Vital |
| 17 | VL_FAIXA_ETARIA_DIAS_FINAL | NUMBER | Y | Faixa Etária em Dias Final - Limite Sinal Vital |

---

## DBAMV.PW_LINHA_TEMPO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LINHA_TEMPO | NUMBER | N | Chave Primária |
| 2 | CD_PACIENTE | NUMBER | N | Código do Paciente |

---

## DBAMV.PW_LISTA_AMB_ATENDIMENTO_SETOR
> AMB-Atendimentos do setor

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | PAR_CD_ATENDIMENTO | NUMBER | N |  |
| 2 | PAR_CD_PACIENTE | NUMBER | N |  |
| 3 | PAR_NM_PACIENTE | VARCHAR2 | Y |  |
| 4 | PAR_IDADE_PACIENTE | VARCHAR2 | Y |  |
| 5 | PAR_DT_NASCIMENTO | DATE | Y |  |
| 6 | PAR_TP_SEXO | VARCHAR2 | N |  |
| 7 | PAR_NM_MAE | VARCHAR2 | Y |  |
| 8 | PAR_SN_FAVORITO | VARCHAR2 | Y |  |
| 9 | PAR_NM_SETOR | VARCHAR2 | N |  |
| 10 | PAR_SN_PENDENTE | VARCHAR2 | Y |  |
| 11 | PAR_NM_FILTRO | VARCHAR2 | Y |  |
| 12 | PAR_CD_PARMED | VARCHAR2 | Y |  |
| 13 | PAR_CD_SETOR | NUMBER | Y |  |
| 14 | PAR_CD_DOC_CLINICO | VARCHAR2 | Y |  |
| 15 | PAR_CD_TRIAGEM | NUMBER | Y |  |
| 16 | PAR_STATUS | VARCHAR2 | Y |  |
| 17 | Senha | VARCHAR2 | Y |  |
| 18 | PAR_CD_SENHA | VARCHAR2 | Y |  |
| 19 | Recepção | VARCHAR2 | Y |  |
| 20 | Especialidade | VARCHAR2 | Y |  |
| 21 | Serviço | VARCHAR2 | Y |  |
| 22 | Recurso | VARCHAR2 | Y |  |
| 23 | Assistente | VARCHAR2 | N |  |
| 24 | Observação | VARCHAR2 | Y |  |

---

## DBAMV.PW_LISTA_AMB_ATEND_ASSISTENCIA
> AMB-Atendimentos Assistencial (Não Médico) ("Beta")

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | PAR_CD_ATENDIMENTO | NUMBER | N |  |
| 2 | PAR_CD_PACIENTE | NUMBER | N |  |
| 3 | PAR_SN_PENDENTE | VARCHAR2 | Y |  |
| 4 | PAR_CD_PARMED | VARCHAR2 | Y |  |
| 5 | PAR_CD_SETOR | NUMBER | Y |  |
| 6 | PAR_CD_DOC_CLINICO | VARCHAR2 | Y |  |
| 7 | PAR_CD_TRIAGEM | NUMBER | Y |  |
| 8 | PAR_STATUS | VARCHAR2 | Y |  |
| 9 | Senha | VARCHAR2 | Y |  |
| 10 | PAR_CD_SENHA | VARCHAR2 | Y |  |
| 11 | Recepção | VARCHAR2 | Y |  |
| 12 | Serviço | VARCHAR2 | Y |  |
| 13 | Especialidade | VARCHAR2 | Y |  |
| 14 | Recurso | VARCHAR2 | Y |  |
| 15 | Assistente | VARCHAR2 | N |  |
| 16 | Observação | VARCHAR2 | Y |  |
| 17 | PAR_NM_PACIENTE | VARCHAR2 | Y |  |
| 18 | PAR_IDADE_PACIENTE | VARCHAR2 | Y |  |
| 19 | PAR_DT_NASCIMENTO | DATE | Y |  |
| 20 | PAR_TP_SEXO | VARCHAR2 | N |  |
| 21 | PAR_NM_MAE | VARCHAR2 | Y |  |
| 22 | PAR_SN_FAVORITO | VARCHAR2 | Y |  |
| 23 | PAR_NM_SETOR | VARCHAR2 | N |  |

---

## DBAMV.PW_LISTA_AMB_ATEND_ASST_ES_DO
> AMB-Atenciones Asistencial (No Médico) ("Beta")

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | PAR_CD_ATENDIMENTO | NUMBER | N |  |
| 2 | PAR_CD_PACIENTE | NUMBER | N |  |
| 3 | PAR_SN_PENDENTE | VARCHAR2 | Y |  |
| 4 | PAR_CD_PARMED | VARCHAR2 | Y |  |
| 5 | PAR_CD_SETOR | NUMBER | Y |  |
| 6 | PAR_CD_DOC_CLINICO | VARCHAR2 | Y |  |
| 7 | PAR_CD_TRIAGEM | NUMBER | Y |  |
| 8 | PAR_STATUS | VARCHAR2 | Y |  |
| 9 | Senha | VARCHAR2 | Y |  |
| 10 | PAR_CD_SENHA | VARCHAR2 | Y |  |
| 11 | Recepção | VARCHAR2 | Y |  |
| 12 | Serviço | VARCHAR2 | Y |  |
| 13 | Especialidade | VARCHAR2 | Y |  |
| 14 | Recurso | VARCHAR2 | Y |  |
| 15 | Assistente | VARCHAR2 | N |  |
| 16 | Observação | VARCHAR2 | Y |  |
| 17 | PAR_NM_PACIENTE | VARCHAR2 | Y |  |
| 18 | PAR_IDADE_PACIENTE | VARCHAR2 | Y |  |
| 19 | PAR_DT_NASCIMENTO | DATE | Y |  |
| 20 | PAR_TP_SEXO | VARCHAR2 | N |  |
| 21 | PAR_NM_MAE | VARCHAR2 | Y |  |
| 22 | PAR_SN_FAVORITO | VARCHAR2 | Y |  |
| 23 | PAR_NM_SETOR | VARCHAR2 | N |  |

---

## DBAMV.PW_LISTA_AMB_ATND_SET_ES_DO
> AMB-Atendimentos do setor

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | PAR_CD_ATENDIMENTO | NUMBER | N |  |
| 2 | PAR_CD_PACIENTE | NUMBER | N |  |
| 3 | PAR_SN_PENDENTE | VARCHAR2 | Y |  |
| 4 | PAR_NM_FILTRO | VARCHAR2 | Y |  |
| 5 | PAR_CD_PARMED | VARCHAR2 | Y |  |
| 6 | PAR_CD_SETOR | NUMBER | Y |  |
| 7 | PAR_CD_DOC_CLINICO | VARCHAR2 | Y |  |
| 8 | PAR_CD_TRIAGEM | NUMBER | Y |  |
| 9 | PAR_STATUS | VARCHAR2 | Y |  |
| 10 | Senha | VARCHAR2 | Y |  |
| 11 | PAR_CD_SENHA | VARCHAR2 | Y |  |
| 12 | Recepção | VARCHAR2 | Y |  |
| 13 | Especialidade | VARCHAR2 | Y |  |
| 14 | Serviço | VARCHAR2 | Y |  |
| 15 | Recurso | VARCHAR2 | Y |  |
| 16 | Assistente | VARCHAR2 | N |  |
| 17 | Observação | VARCHAR2 | Y |  |
| 18 | PAR_NM_PACIENTE | VARCHAR2 | Y |  |
| 19 | PAR_IDADE_PACIENTE | VARCHAR2 | Y |  |
| 20 | PAR_DT_NASCIMENTO | DATE | Y |  |
| 21 | PAR_TP_SEXO | VARCHAR2 | N |  |
| 22 | PAR_NM_MAE | VARCHAR2 | Y |  |
| 23 | PAR_SN_FAVORITO | VARCHAR2 | Y |  |
| 24 | PAR_NM_SETOR | VARCHAR2 | N |  |

---

## DBAMV.PW_LISTA_AMB_PEND_ENFERMAGEM
> AMB-Pendência da enfermagem para paciente com atendimento médico ("Beta")

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | PAR_CD_ATENDIMENTO | NUMBER | N |  |
| 2 | PAR_CD_PACIENTE | NUMBER | N |  |
| 3 | PAR_SN_PENDENTE | CHAR | Y |  |
| 4 | PAR_CD_PARMED | VARCHAR2 | Y |  |
| 5 | PAR_CD_SETOR | NUMBER | Y |  |
| 6 | PAR_CD_DOC_CLINICO | VARCHAR2 | Y |  |
| 7 | PAR_CD_TRIAGEM | NUMBER | Y |  |
| 8 | PAR_STATUS | VARCHAR2 | Y |  |
| 9 | Senha | VARCHAR2 | Y |  |
| 10 | PAR_CD_SENHA | VARCHAR2 | Y |  |
| 11 | Recepção | VARCHAR2 | Y |  |
| 12 | Serviço | VARCHAR2 | Y |  |
| 13 | Especialidade | VARCHAR2 | Y |  |
| 14 | Recurso | VARCHAR2 | Y |  |
| 15 | Assistente | VARCHAR2 | N |  |
| 16 | Observação | VARCHAR2 | Y |  |
| 17 | Hr. Prescrição | DATE | Y |  |
| 18 | PAR_NM_PACIENTE | VARCHAR2 | Y |  |
| 19 | PAR_IDADE_PACIENTE | VARCHAR2 | Y |  |
| 20 | PAR_DT_NASCIMENTO | DATE | Y |  |
| 21 | PAR_TP_SEXO | VARCHAR2 | N |  |
| 22 | PAR_NM_MAE | VARCHAR2 | Y |  |
| 23 | PAR_SN_FAVORITO | VARCHAR2 | Y |  |
| 24 | PAR_NM_SETOR | VARCHAR2 | N |  |

---

## DBAMV.PW_LISTA_AMB_PEND_ENFERM_ES_DO
> AMB-Pendiente de la enfermería para paciente con atención médica ("Beta")

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | PAR_CD_ATENDIMENTO | NUMBER | N |  |
| 2 | PAR_CD_PACIENTE | NUMBER | N |  |
| 3 | PAR_SN_PENDENTE | CHAR | Y |  |
| 4 | PAR_CD_PARMED | VARCHAR2 | Y |  |
| 5 | PAR_CD_SETOR | NUMBER | Y |  |
| 6 | PAR_CD_DOC_CLINICO | VARCHAR2 | Y |  |
| 7 | PAR_CD_TRIAGEM | NUMBER | Y |  |
| 8 | PAR_STATUS | VARCHAR2 | Y |  |
| 9 | Senha | VARCHAR2 | Y |  |
| 10 | PAR_CD_SENHA | VARCHAR2 | Y |  |
| 11 | Recepção | VARCHAR2 | Y |  |
| 12 | Serviço | VARCHAR2 | Y |  |
| 13 | Especialidade | VARCHAR2 | Y |  |
| 14 | Recurso | VARCHAR2 | Y |  |
| 15 | Assistente | VARCHAR2 | N |  |
| 16 | Observação | VARCHAR2 | Y |  |
| 17 | PAR_NM_PACIENTE | VARCHAR2 | Y |  |
| 18 | PAR_IDADE_PACIENTE | VARCHAR2 | Y |  |
| 19 | PAR_DT_NASCIMENTO | DATE | Y |  |
| 20 | PAR_TP_SEXO | VARCHAR2 | N |  |
| 21 | PAR_NM_MAE | VARCHAR2 | Y |  |
| 22 | PAR_SN_FAVORITO | VARCHAR2 | Y |  |
| 23 | PAR_NM_SETOR | VARCHAR2 | N |  |

---

## DBAMV.PW_LISTA_AMB_PRESTADOR_LOGADO
> AMB-Atendimentos do prestador logado

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | PAR_CD_ATENDIMENTO | NUMBER | N |  |
| 2 | PAR_CD_PACIENTE | NUMBER | N |  |
| 3 | PAR_SN_PENDENTE | VARCHAR2 | Y |  |
| 4 | PAR_NM_FILTRO | VARCHAR2 | Y |  |
| 5 | PAR_CD_PARMED | VARCHAR2 | Y |  |
| 6 | PAR_CD_SETOR | NUMBER | Y |  |
| 7 | PAR_CD_DOC_CLINICO | VARCHAR2 | Y |  |
| 8 | PAR_CD_TRIAGEM | NUMBER | Y |  |
| 9 | Chegada | VARCHAR2 | Y |  |
| 10 | Recepção | VARCHAR2 | Y |  |
| 11 | PAR_CD_SENHA | VARCHAR2 | Y |  |
| 12 | PAR_STATUS | VARCHAR2 | Y |  |
| 13 | Convênio | VARCHAR2 | N |  |
| 14 | Plano | VARCHAR2 | N |  |
| 15 | Assistente | VARCHAR2 | N |  |
| 16 | PAR_NM_PACIENTE | VARCHAR2 | Y |  |
| 17 | PAR_IDADE_PACIENTE | VARCHAR2 | Y |  |
| 18 | PAR_DT_NASCIMENTO | DATE | Y |  |
| 19 | PAR_TP_SEXO | VARCHAR2 | N |  |
| 20 | PAR_NM_MAE | VARCHAR2 | Y |  |
| 21 | PAR_SN_FAVORITO | VARCHAR2 | Y |  |
| 22 | PAR_NM_SETOR | VARCHAR2 | N |  |

---

## DBAMV.PW_LISTA_AMB_PRES_LOGADO_ES_DO
> AMB-Atenciones del prestador conectado

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | PAR_CD_ATENDIMENTO | NUMBER | N |  |
| 2 | PAR_CD_PACIENTE | NUMBER | N |  |
| 3 | PAR_SN_PENDENTE | VARCHAR2 | Y |  |
| 4 | PAR_NM_FILTRO | VARCHAR2 | Y |  |
| 5 | PAR_CD_PARMED | VARCHAR2 | Y |  |
| 6 | PAR_CD_SETOR | NUMBER | Y |  |
| 7 | PAR_CD_DOC_CLINICO | VARCHAR2 | Y |  |
| 8 | PAR_CD_TRIAGEM | NUMBER | Y |  |
| 9 | Chegada | VARCHAR2 | Y |  |
| 10 | Recepção | VARCHAR2 | Y |  |
| 11 | PAR_CD_SENHA | VARCHAR2 | Y |  |
| 12 | PAR_STATUS | VARCHAR2 | Y |  |
| 13 | Convênio | VARCHAR2 | N |  |
| 14 | Plano | VARCHAR2 | N |  |
| 15 | PAR_NM_PACIENTE | VARCHAR2 | N |  |
| 16 | PAR_IDADE_PACIENTE | VARCHAR2 | Y |  |
| 17 | PAR_DT_NASCIMENTO | DATE | Y |  |
| 18 | PAR_TP_SEXO | VARCHAR2 | N |  |
| 19 | PAR_NM_MAE | VARCHAR2 | Y |  |
| 20 | PAR_SN_FAVORITO | VARCHAR2 | Y |  |
| 21 | PAR_NM_SETOR | VARCHAR2 | N |  |

---

## DBAMV.PW_LISTA_EM_ATENDIMENTO
> Registra a entrada no prontuário do paciente e controla a concorrência avisando quando outro profissional acessa o mesmo paciente simultaneamente

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LISTA_EM_ATENDIMENTO | NUMBER | N | Chave primária da tabela |
| 2 | CD_USUARIO | VARCHAR2 | N | Usuário que esta acessando o prontuário do paciente |
| 3 | NM_MODULO_ENTRADA | VARCHAR2 | N | Aplicativo usado para acessar o prontuário, valores previstos: MVPEP_LISTA_PACIENTE, MVPEP_PORTAL... |
| 4 | NM_PORTA_ENTRADA | VARCHAR2 | N | Porta de entrada que foi usado para acessar o prontuário do paciente. Para soluções da lista gené... |
| 5 | CD_PACIENTE | NUMBER | N | Código do paciente selecionado na lista de trabalho |
| 6 | CD_ATENDIMENTO | NUMBER | Y | Código do atendimento selecionado na lista de trabalho. Atualmente para entrar no prontuário é ne... |
| 7 | DH_ACESSO | DATE | N | Horário que o prontuário do paciente foi acessado |
| 8 | DH_LIBERADO | DATE | Y | Horário que saiu do prontuário. Caso feche o browser esta informação não conseguirá ser preenchido |
| 9 | TP_LIBERACAO | VARCHAR2 | N | É marcado para "FORCADA" quando a liberação foi feito por um evento não esperado. A liberação qua... |

---

## DBAMV.PW_LISTA_EXT_ATENDIMENTO_SETOR
> EXT-Atendimentos do setor

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | PAR_CD_ATENDIMENTO | NUMBER | N |  |
| 2 | PAR_CD_PACIENTE | NUMBER | N |  |
| 3 | PAR_SN_PENDENTE | VARCHAR2 | Y |  |
| 4 | PAR_NM_FILTRO | VARCHAR2 | Y |  |
| 5 | PAR_CD_PARMED | VARCHAR2 | Y |  |
| 6 | PAR_CD_SETOR | NUMBER | Y |  |
| 7 | PAR_CD_DOC_CLINICO | VARCHAR2 | Y |  |
| 8 | PAR_CD_TRIAGEM | NUMBER | Y |  |
| 9 | PAR_STATUS | VARCHAR2 | Y |  |
| 10 | Senha | VARCHAR2 | Y |  |
| 11 | PAR_CD_SENHA | VARCHAR2 | Y |  |
| 12 | Recepção | VARCHAR2 | Y |  |
| 13 | Especialidade | VARCHAR2 | Y |  |
| 14 | Serviço | VARCHAR2 | Y |  |
| 15 | Recurso | VARCHAR2 | Y |  |
| 16 | Assistente | VARCHAR2 | N |  |
| 17 | Observação | VARCHAR2 | Y |  |
| 18 | PAR_NM_PACIENTE | VARCHAR2 | Y |  |
| 19 | PAR_IDADE_PACIENTE | VARCHAR2 | Y |  |
| 20 | PAR_DT_NASCIMENTO | DATE | Y |  |
| 21 | PAR_TP_SEXO | VARCHAR2 | N |  |
| 22 | PAR_NM_MAE | VARCHAR2 | Y |  |
| 23 | PAR_SN_FAVORITO | VARCHAR2 | Y |  |
| 24 | PAR_NM_SETOR | VARCHAR2 | N |  |

---

## DBAMV.PW_LISTA_EXT_ATEND_SET_ES_CL
> CL - EXT-Atendimentos do setor

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | PAR_CD_ATENDIMENTO | NUMBER | N |  |
| 2 | PAR_CD_PACIENTE | NUMBER | N |  |
| 3 | PAR_SN_PENDENTE | VARCHAR2 | Y |  |
| 4 | PAR_NM_FILTRO | VARCHAR2 | Y |  |
| 5 | PAR_CD_PARMED | VARCHAR2 | Y |  |
| 6 | PAR_CD_SETOR | NUMBER | Y |  |
| 7 | PAR_CD_DOC_CLINICO | VARCHAR2 | Y |  |
| 8 | PAR_CD_TRIAGEM | NUMBER | Y |  |
| 9 | PAR_STATUS | VARCHAR2 | Y |  |
| 10 | Contraseña | VARCHAR2 | Y |  |
| 11 | PAR_CD_SENHA | VARCHAR2 | Y |  |
| 12 | Recepción | VARCHAR2 | Y |  |
| 13 | Especialidad | VARCHAR2 | Y |  |
| 14 | Servicio | VARCHAR2 | Y |  |
| 15 | Recurso | VARCHAR2 | Y |  |
| 16 | Asistente | VARCHAR2 | N |  |
| 17 | Observación | VARCHAR2 | Y |  |
| 18 | PAR_NM_PACIENTE | VARCHAR2 | Y |  |
| 19 | PAR_IDADE_PACIENTE | VARCHAR2 | Y |  |
| 20 | PAR_DT_NASCIMENTO | DATE | Y |  |
| 21 | PAR_TP_SEXO | VARCHAR2 | N |  |
| 22 | PAR_NM_MAE | VARCHAR2 | Y |  |
| 23 | PAR_SN_FAVORITO | VARCHAR2 | Y |  |
| 24 | PAR_NM_SETOR | VARCHAR2 | N |  |

---

## DBAMV.PW_LISTA_IMPRESSAO_PRONTUARIO
> Lista de impressao de prontuario

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | PAR_CD_ATENDIMENTO | NUMBER | Y |  |
| 2 | PAR_CD_PACIENTE | NUMBER | Y |  |
| 3 | PAR_NM_PACIENTE | VARCHAR2 | Y |  |
| 4 | PAR_IDADE_PACIENTE | VARCHAR2 | Y |  |
| 5 | PAR_DT_NASCIMENTO | DATE | Y |  |
| 6 | PAR_TP_SEXO | VARCHAR2 | Y |  |
| 7 | PAR_NM_MAE | VARCHAR2 | Y |  |
| 8 | PAR_SN_FAVORITO | VARCHAR2 | Y |  |
| 9 | PAR_CD_PRONTUARIO | NUMBER | Y |  |
| 10 | PAR_SN_FECHADO | CHAR | Y |  |
| 11 | PAR_CD_SETOR | NUMBER | Y |  |
| 12 | LOTE | NUMBER | Y |  |
| 13 | DT. CRIACAO | VARCHAR2 | Y |  |
| 14 | DT. INICIO | DATE | Y |  |
| 15 | STATUS DE EXECUCAO | VARCHAR2 | Y |  |
| 16 | QTD. GERADOS | NUMBER | Y |  |
| 17 | QTD. DOCUMENTOS | NUMBER | Y |  |
| 18 | PERCENTUAL | VARCHAR2 | Y |  |

---

## DBAMV.PW_LISTA_PACIENTES_AVAL_FARM
> Avaliacao Farmceutica

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | Status | VARCHAR2 | Y |  |
| 2 | Urg. Auto. | NUMBER | Y |  |
| 3 | Agora Auto. | NUMBER | Y |  |
| 4 | Aval. Aberta | VARCHAR2 | Y |  |
| 5 | Nome do Paciente | VARCHAR2 | Y |  |
| 6 | Horário da prescrição | VARCHAR2 | Y |  |
| 7 | Primeira Adm. | VARCHAR2 | Y |  |
| 8 | Aprazado | VARCHAR2 | Y |  |
| 9 | Prescrição | NUMBER | Y |  |
| 10 | Prestador | VARCHAR2 | Y |  |
| 11 | Data Alta Médica | VARCHAR2 | Y |  |
| 12 | PAR_CD_PACIENTE | NUMBER | Y |  |
| 13 | PAR_CD_ATENDIMENTO | NUMBER | Y |  |
| 14 | PAR_CD_SETOR | NUMBER | Y |  |
| 15 | PAR_CD_DOC_CLINICO | NUMBER | Y |  |
| 16 | PAR_CD_DOC_CLINICO_DETALHE | NUMBER | Y |  |
| 17 | PAR_SN_PENDENTE | VARCHAR2 | Y |  |
| 18 | Prescrição Just. | NUMBER | Y |  |
| 19 | Prescrição Docele. | NUMBER | Y |  |
| 20 | Par_Nm_Paciente | VARCHAR2 | Y |  |
| 21 | Par_idade_paciente | VARCHAR2 | Y |  |
| 22 | Par_Dt_Nascimento | DATE | Y |  |
| 23 | Par_Tp_sexo | VARCHAR2 | Y |  |
| 24 | Par_nm_mae | VARCHAR2 | Y |  |
| 25 | Par_sn_favorito | VARCHAR2 | Y |  |
| 26 | Par_nm_setor | VARCHAR2 | Y |  |

---

## DBAMV.PW_LISTA_PAC_AVAL_FARM_ES_CL
> Evaluación Farmaceutica

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | Situación | VARCHAR2 | Y | TAMANHO_55 |
| 2 | Nombre del Paciente | VARCHAR2 | Y | TAMANHO_120 |
| 3 | Horario de la Prescripción | VARCHAR2 | Y | TAMANHO_130 |
| 4 | Primera Adm. | VARCHAR2 | Y | TAMANHO_80 |
| 5 | Planificado | VARCHAR2 | Y | TAMANHO_60 |
| 6 | Prescripción | NUMBER | Y | TAMANHO_65 |
| 7 | Prestador | VARCHAR2 | Y | TAMANHO_155 |
| 8 | PAR_CD_PACIENTE | NUMBER | Y |  |
| 9 | PAR_CD_ATENDIMENTO | NUMBER | Y |  |
| 10 | PAR_CD_SETOR | NUMBER | Y |  |
| 11 | PAR_CD_DOC_CLINICO | NUMBER | Y |  |
| 12 | PAR_CD_DOC_CLINICO_DETALHE | NUMBER | Y |  |
| 13 | PAR_SN_PENDENTE | VARCHAR2 | Y |  |

---

## DBAMV.PW_LISTA_PAC_AVAL_FARM_ES_DO
> Avaliação Farmaceutica

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | Status | VARCHAR2 | Y | TAMANHO_55 |
| 2 | Nome do Paciente | VARCHAR2 | Y | TAMANHO_120 |
| 3 | Horário da prescrição | VARCHAR2 | Y | TAMANHO_130 |
| 4 | Primeira Adm. | VARCHAR2 | Y | TAMANHO_80 |
| 5 | Aprazado | VARCHAR2 | Y | TAMANHO_60 |
| 6 | Prescrição | NUMBER | Y | TAMANHO_65 |
| 7 | Prestador | VARCHAR2 | Y | TAMANHO_155 |
| 8 | PAR_CD_PACIENTE | NUMBER | Y |  |
| 9 | PAR_CD_ATENDIMENTO | NUMBER | Y |  |
| 10 | PAR_CD_SETOR | NUMBER | Y |  |
| 11 | PAR_CD_DOC_CLINICO | NUMBER | Y |  |
| 12 | PAR_CD_DOC_CLINICO_DETALHE | NUMBER | Y |  |
| 13 | PAR_SN_PENDENTE | VARCHAR2 | Y |  |

---

## DBAMV.PW_LISTA_PAC_AVAL_FARM_ES_MX
> Evaluación Farmaceutica

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | Situación | VARCHAR2 | Y | TAMANHO_55 |
| 2 | Nombre del Paciente | VARCHAR2 | Y | TAMANHO_120 |
| 3 | Horario de la Prescripción | VARCHAR2 | Y | TAMANHO_130 |
| 4 | Primera Adm. | VARCHAR2 | Y | TAMANHO_80 |
| 5 | Planificado | VARCHAR2 | Y | TAMANHO_60 |
| 6 | Prescripción | NUMBER | Y | TAMANHO_65 |
| 7 | Prestador | VARCHAR2 | Y | TAMANHO_155 |
| 8 | PAR_CD_PACIENTE | NUMBER | Y |  |
| 9 | PAR_CD_ATENDIMENTO | NUMBER | Y |  |
| 10 | PAR_CD_SETOR | NUMBER | Y |  |
| 11 | PAR_CD_DOC_CLINICO | NUMBER | Y |  |
| 12 | PAR_CD_DOC_CLINICO_DETALHE | NUMBER | Y |  |
| 13 | PAR_SN_PENDENTE | VARCHAR2 | Y |  |

---

## DBAMV.PW_LISTA_PAC_AVAL_FARM_ES_PA
> Evaluación Farmaceutica

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | Situación | VARCHAR2 | Y | TAMANHO_55 |
| 2 | Nombre del Paciente | VARCHAR2 | Y | TAMANHO_120 |
| 3 | Horario de la Prescripción | VARCHAR2 | Y | TAMANHO_130 |
| 4 | Primera Adm. | VARCHAR2 | Y | TAMANHO_80 |
| 5 | Planificado | VARCHAR2 | Y | TAMANHO_60 |
| 6 | Prescripción | NUMBER | Y | TAMANHO_65 |
| 7 | Prestador | VARCHAR2 | Y | TAMANHO_155 |
| 8 | PAR_CD_PACIENTE | NUMBER | Y |  |
| 9 | PAR_CD_ATENDIMENTO | NUMBER | Y |  |
| 10 | PAR_CD_SETOR | NUMBER | Y |  |
| 11 | PAR_CD_DOC_CLINICO | NUMBER | Y |  |
| 12 | PAR_CD_DOC_CLINICO_DETALHE | NUMBER | Y |  |
| 13 | PAR_SN_PENDENTE | VARCHAR2 | Y |  |

---

## DBAMV.PW_LISTA_PAC_AVAL_FARM_ES_PE
> Evaluación Farmaceutica

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | Situación | VARCHAR2 | Y | TAMANHO_55 |
| 2 | Nombre del Paciente | VARCHAR2 | Y | TAMANHO_120 |
| 3 | Horario de la Prescripción | VARCHAR2 | Y | TAMANHO_130 |
| 4 | Primera Adm. | VARCHAR2 | Y | TAMANHO_80 |
| 5 | Planificado | VARCHAR2 | Y | TAMANHO_60 |
| 6 | Prescripción | NUMBER | Y | TAMANHO_65 |
| 7 | Prestador | VARCHAR2 | Y | TAMANHO_155 |
| 8 | PAR_CD_PACIENTE | NUMBER | Y |  |
| 9 | PAR_CD_ATENDIMENTO | NUMBER | Y |  |
| 10 | PAR_CD_SETOR | NUMBER | Y |  |
| 11 | PAR_CD_DOC_CLINICO | NUMBER | Y |  |
| 12 | PAR_CD_DOC_CLINICO_DETALHE | NUMBER | Y |  |
| 13 | PAR_SN_PENDENTE | VARCHAR2 | Y |  |

---

## DBAMV.PW_LISTA_PAC_AVAL_FARM_ES_UY
> Evaluación Farmaceutica

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | Situación | VARCHAR2 | Y | TAMANHO_55 |
| 2 | Nombre del Paciente | VARCHAR2 | Y | TAMANHO_120 |
| 3 | Horario de la Prescripción | VARCHAR2 | Y | TAMANHO_130 |
| 4 | Primera Adm. | VARCHAR2 | Y | TAMANHO_80 |
| 5 | Planificado | VARCHAR2 | Y | TAMANHO_60 |
| 6 | Prescripción | NUMBER | Y | TAMANHO_65 |
| 7 | Prestador | VARCHAR2 | Y | TAMANHO_155 |
| 8 | PAR_CD_PACIENTE | NUMBER | Y |  |
| 9 | PAR_CD_ATENDIMENTO | NUMBER | Y |  |
| 10 | PAR_CD_SETOR | NUMBER | Y |  |
| 11 | PAR_CD_DOC_CLINICO | NUMBER | Y |  |
| 12 | PAR_CD_DOC_CLINICO_DETALHE | NUMBER | Y |  |
| 13 | PAR_SN_PENDENTE | VARCHAR2 | Y |  |

---

## DBAMV.PW_LISTA_PARAMETRO_PAGU_OBJ
> Tabela de Lista de opc?es do Repositorio de Parametros para o Tipo de Documento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LISTA_PARAMETRO_PAGU_OBJ | NUMBER | N | Codigo da Lista de opc?es |
| 2 | CD_PARAMETRO_PAGU_OBJETO | NUMBER | N | Codido do Repositorio de Parametros para o Tipo de Documento |
| 3 | VL_LISTA_PARAMETRO_PAGU_OBJ | VARCHAR2 | N | Valor disponivel |
| 4 | DS_LISTA_PARAMETRO_PAGU_OBJ | VARCHAR2 | N | Descric?o do Valor disponivel |

---

## DBAMV.PW_LISTA_PRESTADORES
> Tabela que associa prestadores (profissionais) às listas de signatários.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LISTA_SIGNATARIOS | NUMBER | N | Chave estrangeira referenciando a lista de signatários. |
| 2 | CD_PRESTADOR | NUMBER | N | Código do prestador, referenciando a tabela de prestadores. |

---

## DBAMV.PW_LISTA_SIGNATARIOS
> Tabela que armazena listas de signatários para facilitar a definição de signatários em documentos.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LISTA_SIGNATARIOS | NUMBER | N | Código identificador único da lista de signatários (PK). |
| 2 | DS_LISTA | VARCHAR2 | N | Descrição ou nome da lista de signatários. |

---

## DBAMV.PW_LOCAL_AFERICAO
> Tabela de cadastro dos locais de aferição (braço, perna, axila, peito, etc).

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOCAL_AFERICAO | NUMBER | N | Código identificador do local da aferição - Chave Primária. |
| 2 | DS_LOCAL_AFERICAO | VARCHAR2 | N | Descrição do Local da Aferição. |
| 3 | SN_ATIVO | VARCHAR2 | N | Indica se o local da aferição está ativo ou não. |

---

## DBAMV.PW_LOG_ACAO_ADM_ITEM
> Tabela referente as ações que ocorrem na administração de um item na checagem

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ACAO_ADM_ITEM | NUMBER | N |  |
| 2 | CD_ITPRE_MED | NUMBER | N |  |
| 3 | NM_USUARIO | VARCHAR2 | N | Nome do usuário que é responsável pela ação |
| 4 | DH_ACAO | DATE | N | Data e hora em que ocorreu a ação |
| 5 | DH_REGISTRO | DATE | N | Data e hora do registro |
| 6 | TP_ACAO | VARCHAR2 | N | A ação efetuada sobre o item P (Pausado), R (Reiniciado), F (Finalizado) |
| 7 | CD_JUSTIFICATIVA_CHECAGEM | NUMBER | N | A justificativa selecionada pelo usuário na interrupção |
| 8 | DS_JUSTIFICATIVA | VARCHAR2 | Y | A observação descrita pela usuário na interrupção |

---

## DBAMV.PW_LOG_ALTERACAO_INFUSAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOG_ALTERACAO_INFUSAO | NUMBER | N |  |
| 2 | CD_ITPRE_MED | NUMBER | N | Código do item de prescrição. |
| 3 | DH_MEDICACAO | DATE | N | Data/Hora da medicação. Momento que foi alterado a velocidade de infusão. |
| 4 | QT_INFUSAO | NUMBER | Y | Quantidade para a velocidade de infusão. |
| 5 | CD_UNI_PRO_INF | NUMBER | Y | Unidade de produto para a velocidade de infusão. |
| 6 | CD_UNI_PRESC_INF | NUMBER | Y | Unidade de prescrição para a velocidade de infusão. |
| 7 | DS_JUSTIFICATIVA | VARCHAR2 | Y | Justificativa da alteração da velocidade de infusão. |
| 8 | CD_USUARIO | VARCHAR2 | N | Código do usuário que gerou a inclusão. |
| 9 | DH_REGISTRO | DATE | N | Data/Hora da inclusão do registro (SYSDATE). |
| 10 | TP_REGISTRO | VARCHAR2 | N | Tipo da inclusão: I - inclusão, A - alteração. |
| 11 | DH_ALTERACAO | DATE | N | Data/Hora que o usuário informa que foi alterado a velocidade de infusão. |

---

## DBAMV.PW_LOG_ALTERA_DATA_AFERICAO
> Guardar as alterac?es em datas

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOG_ALTERA_DT | NUMBER | N | Codigo de identificac?o do log |
| 2 | DT_REAL | DATE | Y | Data real da aferic?o, o que compreende sysdate |
| 3 | DT_INFORMADA | DATE | Y | Data informada na aferic?o |
| 4 | NM_USUARIO | VARCHAR2 | Y | Nome do usuario que alterou |

---

## DBAMV.PW_LOG_DOCUMENTO_CLINICO
> Log das operac?es realizadas no documento clinico

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOG_DOCUMENTO_CLINICO | NUMBER | N | Codigo, pk |
| 2 | CD_DOCUMENTO_CLINICO | NUMBER | N | O codigo do documento clinico relacionado a operac?o |
| 3 | DH_PROCESSO | DATE | N | Data/hora que ocorreu a operac?o |
| 4 | TP_ACAO | VARCHAR2 | N | Tipo da ac?o ocorrida |
| 5 | DS_JUSTIFICATIVA | VARCHAR2 | Y | A justificativa para execuc?o da operac?o |
| 6 | CD_USUARIO | VARCHAR2 | N | O codigo do usuario responsavel pela operac?o ocorrida |
| 7 | CD_TIPO_DOCUMENTO | NUMBER | Y | O codigo do tipo de documento (fk) |
| 8 | DS_TIPO_DOCUMENTO | VARCHAR2 | Y | Descric?o do tipo de documento |
| 9 | TP_DOCUMENTO | VARCHAR2 | Y | Tipo do tipo do documento |
| 10 | CD_DOCUMENTO_DIGITAL | NUMBER | Y | O codigo do documento assinado, caso o documento ja tenha sido assinado digitalmente, nulo indica... |
| 11 | CD_PACIENTE | NUMBER | Y | O codigo do paciente ao qual o documento se refere |
| 12 | NM_PACIENTE | VARCHAR2 | Y | Nome do paciente |
| 13 | CD_ATENDIMENTO | NUMBER | Y | O codigo do atendimento ao qual o documento se refere |
| 14 | CD_PRESTADOR | NUMBER | Y | O codigo do prestador, sera sempre o mesmo que esta na tabela original do documento (PRE_MED, PW_... |
| 15 | NM_PRESTADOR | VARCHAR2 | Y | Nome do prestador |
| 16 | TP_STATUS | VARCHAR2 | Y | O status do documento (ABERTO, FECHADO, ASSINADO=Assinado Digitalmente ou CANCELADO). Se for ASSI... |
| 17 | DH_REFERENCIA | DATE | Y | A data de referencia do documento, nem todos os documentos utilizam |
| 18 | DH_CRIACAO | DATE | Y | A data de cria???o do documento |
| 19 | DH_FECHAMENTO | DATE | Y | A data de fechamento do documento |
| 20 | DH_IMPRESSO | DATE | Y | A data em que o documento foi impresso |
| 21 | TP_EXTENSAO | VARCHAR2 | Y | Indica a extens?o do documento clinico |
| 22 | CD_SETOR | NUMBER | Y | Indica SETOR QUE o documento clinico foi criado. |
| 23 | NM_SETOR | VARCHAR2 | Y | Nome do setor |
| 24 | CD_OBJETO | NUMBER | Y | Codigo do tipo de pagu objeto |
| 25 | NM_OBJETO | VARCHAR2 | Y | Descricao do Objeto |
| 26 | TP_OBJETO | VARCHAR2 | Y | Tipo de Objeto Ex- Prescr Medica, Prescr Enferm, Trancricao, Admissao |
| 27 | CD_DOCUMENTO_CANCELADO | NUMBER | Y | O codigo do documento clinico cancelado. Quando o documento clinico e cancelado obrigatoriamente ... |
| 28 | NM_DOCUMENTO | VARCHAR2 | Y | Vers?o do documento no momento que ele foi criado. |
| 29 | NM_VERSAO_DOCUMENTO | VARCHAR2 | Y |  |
| 30 | DH_DOCUMENTO | DATE | Y | A data do documento. |

---

## DBAMV.PW_LOG_IMPORT_ALERG
> Tabela de LOG para a importação de alergias da estrutura antiga para a nova estrutura.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOG_IMPORT_ALERG | NUMBER | N | Código sequencial da tabela |
| 2 | CD_IMPORTACAO | NUMBER | Y | Código da importação |
| 3 | DS_IMPORT | VARCHAR2 | Y | Descrição da importação |
| 4 | CD_PROBLEMA | NUMBER | Y | Código do problema, que é o código da alergia ou evento adverso na estrutura nova |
| 5 | CD_HIST_SUBS_PAC | NUMBER | Y | Código da alergia na estrutura antiga |
| 6 | CD_PACIENTE | NUMBER | Y | Código do paciente |
| 7 | DH_IMPORTACAO | TIMESTAMP(6) | Y | Data e hora da importação |
| 8 | DS_STATUS_IMPORTACAO | VARCHAR2 | Y | Status da importação |
| 9 | QT_ALERGIAS_ANTIGAS | NUMBER | Y | Quantidade de alergias no padrão antigo para tal importação |
| 10 | QT_ALERGIAS_NOVAS | NUMBER | Y | Quantidade alergias novas importadas |
| 11 | QT_ALERGIAS_NOVAS_DOC_CLINICO | NUMBER | Y | Quantidade de alergias novas com documento clínico |
| 12 | CD_DOC_CLINICO_CRIADO | NUMBER | Y | codigo do documento clínico criado |
| 13 | QT_CANC | NUMBER | Y | Quantidade de cancelamentos |
| 14 | TP_IMPORTACAO_ALERGIA | VARCHAR2 | Y | Tipo de importacao da alergia. Se I: a alergia foi importada, se U: foi realizado ajuste em legado |
| 15 | DS_OBSERVACAO | VARCHAR2 | Y | Concatenacao para mapeamento dos registros que forem utilizado update. Se: DATA_AUTO_PRESTADOR_PA... |
| 16 | CD_PRESTADOR_ANTIGO | NUMBER | Y | Codigo do prestador antes de ser realizado update do prestador responsavel para o prestador padra... |
| 17 | CD_PRESTADOR_NOVO | NUMBER | Y | Codigo do prestador posterior ao update do prestador responsavel para o prestador padrao da insti... |

---

## DBAMV.PW_LOG_OBSERVACAO_PACIENTE
> Tabela para armazenamento de log de informac?es relevantes do paciente.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOG_OBSERVACAO_PACIENTE | NUMBER | N | Codigo da Informac?o relevante para o paciente. |
| 2 | CD_OBSERVACAO_PACIENTE | NUMBER | N | Campo do Codigo da observac?oPaciente |
| 3 | DH_LOG_OBSERVACAO | TIMESTAMP(6) WITH LOCAL TIME ZONE | N | Campo da data/hora de criac?o da observac?o |
| 4 | DS_LOG_OBSERVACAO | VARCHAR2 | N | Descric?o da informac?o relevante do paciente. |
| 5 | CD_PRESTADOR | NUMBER | N | Campo do Codigo do prestador |
| 6 | CD_ATENDIMENTO | NUMBER | Y | Codigo do Atendimento da Informac?o Relevante, preenchido caso a informac?o seja especifica para ... |

---

## DBAMV.PW_LOG_PONTUACAO_PAC
> Tabela que gyarda as transações feitas na pw_pontuacao_paciente

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOG_PONTUACAO_PAC | NUMBER | N | Sequencial da tabela |
| 2 | CD_PONTUACAO_PACIENTE | NUMBER | N | Código sequencial da pontuação do paciente |
| 3 | DT_CRIACAO | DATE | N | Data da alteração |
| 4 | CD_PACIENTE | NUMBER | N |  |
| 5 | NR_PONTUACAO | NUMBER | N | Nova pontuação atualizada |
| 6 | CD_USUARIO | VARCHAR2 | N | Usuário que alterou |

---

## DBAMV.PW_LOG_PRE_MED
> Tabela de log das alteracoes de prestador da pre_med

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PW_LOG_PRE_MED | NUMBER | N | Chave sequencial do log |
| 2 | CD_PRE_MED | NUMBER | N | Codigo da prescricao medica a qual o log de alteracao se refere |
| 3 | CD_PRESTADOR_ANTERIOR | NUMBER | N | Codigo do prestador anterior da prescricao |
| 4 | CD_USUARIO_ANTERIOR | VARCHAR2 | Y | Codigo do usuario anterior da prescricao |
| 5 | DH_CRIACAO_ANTERIOR | DATE | Y | Data de criacao anterior da prescricao |
| 6 | CD_PRESTADOR | NUMBER | N | Codigo do prestador que efetuou a alterac?o na prescricao |
| 7 | CD_USUARIO | VARCHAR2 | Y | Codigo do usuario que efetuou a alterac?o na prescricao |
| 8 | DH_CRIACAO | DATE | Y | Data da alterac?o na prescricao |

---

## DBAMV.PW_LOG_RECEITA
> Tabela de log das alteracoes de prestador, usuario ou data da pw_receita

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PW_LOG_RECEITA | NUMBER | N | Chave sequencial do log |
| 2 | CD_RECEITA | NUMBER | N | Codigo da receita a qual o log de alteracao se refere |
| 3 | CD_PRESTADOR_ANTERIOR | NUMBER | N | Codigo do prestador anterior da receita |
| 4 | DT_HORA_RECEITA_ANTERIOR | DATE | Y | Data anterior da receita |
| 5 | CD_PRESTADOR | NUMBER | N | Codigo do prestador que alterou a receita |
| 6 | DT_HORA_RECEITA | DATE | Y | Data de alterac?o da receita |

---

## DBAMV.PW_LOG_USUARIO_ITEM_BAL_HID

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOG_USUARIO_ITEM_BAL_HID | NUMBER | N | CHAVE PRIMARIA DA TABELA. |
| 2 | CD_USUARIO | VARCHAR2 | N | REFERENCIA PARA TABELA USUARIOS |
| 3 | CD_TIP_PRESC | NUMBER | Y | CODIGO DO TIPO DO ITEM DA PRESCRICAO |
| 4 | DT_CRIACAO | DATE | N | DATA DE CRIACAO DO LOG |
| 5 | TP_ACAO | VARCHAR2 | N | ACAO DO USUARIO QUE GEROU O REGISTRO DE LOG. TIPOS POSSIVEIS: INCLUSAO_REGISTRO, ALTERACAO_REGIST... |
| 6 | VL_COLETA | NUMBER | Y |  |
| 7 | TP_CALCULO | VARCHAR2 | Y |  |
| 8 | TP_FECHAMENTO | VARCHAR2 | Y |  |
| 9 | CD_FOR_APL | VARCHAR2 | Y |  |
| 10 | DH_COLETA | DATE | Y |  |
| 11 | DS_TIP_PRESC | VARCHAR2 | Y | DESCRICAO DO ITEM DA PRESCRICAO NO MOMENTO DA ALTERACAO |
| 12 | CD_ATENDIMENTO | NUMBER | N |  |
| 13 | DT_REFERENCIA | DATE | N |  |
| 14 | NM_GRUPO_BALANCO_HIDRICO | VARCHAR2 | Y |  |

---

## DBAMV.PW_MAQUINA_USUARIO
> Tabela para armazenar maquina, usuario e empresa logados no sistema

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DS_MAQUINA | VARCHAR2 | Y | Maquina logada |
| 2 | CD_USUARIO | VARCHAR2 | Y | Usuario logado |
| 3 | CD_MULTI_EMPRESA | NUMBER | Y | Codigo da empresa logada |
| 4 | DT_LOGADO | DATE | Y | Data do ultimo acesso no sistema PEP |

---

## DBAMV.PW_MARCADOR_CID_MORFOLOGICO
> TABELA QUE REGISTRA OS CIDS MORFOLOGICOS PARA OS MARCADORES TUMORAIS.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MARCADOR_CID_MORFOLOGICO | NUMBER | N | CHAVE PRIMARIA - CODIGO QUE REPRESENTA O CID MORFOLOGICO QUE SERA UM MARCADOR TUMORAL. |
| 2 | CD_CID | VARCHAR2 | N | CODIGO DO CID MORFOLOGICO. |

---

## DBAMV.PW_MARCADOR_EXA_LAB
> TABELA QUE REGISTRA OS MARCADORES TUMORAIS.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MARCADOR_EXA_LAB | NUMBER | N | CODIGO DO MARCADOR DO EXAME LABORATORIAL. |
| 2 | CD_MARCADOR_CID_MORFOLOGICO | NUMBER | N | CODIGO DO MARCADOR DO CID MORFOLOGICO. |
| 3 | CD_EXA_LAB | NUMBER | N | CÓDIGO DO EXAME LABORATORIAL. |
| 4 | SN_ATIVO | VARCHAR2 | N | INDICA SE O MARCADOR ESTA ATIVO |

---

## DBAMV.PW_MARCADOR_TUMORAL
> TABELA QUE REGISTRA OS MARCADORES TUMORAIS.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MARCADOR_TUMORAL | NUMBER | N | CODIGO DOS MARCADORES TUMORAIS. |
| 2 | CD_EXA_LAB | NUMBER | N | CODIGO DO EXAME LABORATORIAL. |
| 3 | CD_CID | VARCHAR2 | N | CÓDIGO DO CID MORFOLÓGICO. |

---

## DBAMV.PW_MARCO_LINHA_TEMPO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MARCO_LINHA_TEMPO | NUMBER | N | Chave Primaria. |
| 2 | CD_LINHA_TEMPO | NUMBER | N | Linha do Tempo |
| 3 | CD_CONFIG_TIPO_MARCO | NUMBER | Y | Configuracao do Tipo de Marco. |
| 4 | DT_EVENTO | TIMESTAMP(6) | N | Data do Evento no Marco da linha do tempo. |
| 5 | DS_EVENTO | VARCHAR2 | Y | Descricao do Evento |
| 6 | CD_PRESTADOR | NUMBER | Y | Prestador Responsavel pelo Marco. |
| 7 | SN_EXCLUIDO | VARCHAR2 | N | Marco excluido - nao visivel pelo sistema |
| 8 | DS_EXCLUIDO | VARCHAR2 | Y | Motivo por excluir o marco |
| 9 | DT_EXCLUIDO | TIMESTAMP(6) | Y | Data que o Marco foi excluido. |
| 10 | CD_PRESTADOR_EXCLUIDO | NUMBER | Y | Codigo do prestador que fez a exclusão do Marco. |
| 11 | DH_CRIACAO | TIMESTAMP(6) | Y | Data de criacao do Marco. |
| 12 | CD_DOCUMENTO_CLINICO | NUMBER | Y | Codigo do documento clinico incluido por outro modulo. |
| 13 | SN_VISIVEL | VARCHAR2 | N | Marco visivel na linha do tempo |
| 14 | CD_ITPED_LAB | NUMBER | Y | Codigo Item do Pedido do Laboratorio |
| 15 | CD_PED_LAB | NUMBER | Y | Codigo Pedido do Laboratorio |
| 16 | CD_EXA_LAB | NUMBER | Y | Codigo Exame do Laboratorio |
| 17 | TP_MARCO | VARCHAR2 | Y | Tipo do Marco padrao para utilizacao dos outros modulos |
| 18 | NR_PROGRESSAO | NUMBER | Y | Número da Progressão do acompanhamento oncologico relacionado com o marco |
| 19 | CD_ACPMT_PACIENTE_TRATAMENTO | NUMBER | Y | Tratamento do Paciente relacionado com o acompanhamento oncologico |
| 20 | CD_PRE_MED | NUMBER | Y | Código da PreMed relacionado com o marco |
| 21 | CD_USUARIO | VARCHAR2 | Y | Usurio Responsvel pelo Marco. |
| 22 | CD_TRATAMENTO | NUMBER | Y | Tratamento do marco de linha da vida. |
| 23 | CD_USUARIO_EXCLUIDO | VARCHAR2 | Y | Usurio que fez a excluso do Marco. |
| 24 | TP_INCLUSAO | VARCHAR2 | N | Tipo de incluso do marco (AUTOMATICO, MANUAL). |
| 25 | CD_CIRURGIA_AVISO | NUMBER | Y | Cdigo da cirurgia do aviso. |
| 26 | CD_PACIENTE_PESQ | NUMBER | Y | Cdigo da pesquisa cientfica do paciente. |

---

## DBAMV.PW_MARCO_LINHA_TEMPO_TRANSACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MARCO_LINHA_TEMPO_TRAN | NUMBER | N | Chave Primaria. |
| 2 | CD_MARCO_LINHA_TEMPO_PAI | NUMBER | N | Codigo do Marco Pai Responsavel pelo Registro. |
| 3 | CD_MARCO_LINHA_TEMPO | NUMBER | N | Codigo do Marco da Linha do Tempo |

---

## DBAMV.PW_MEDICAMENTO_USO
> Armazena as informac?es referente aos medicamentos em uso do paciente

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MEDICAMENTO_USO | NUMBER | N | Indica o codigo dos medicamentos em uso(pk). |
| 2 | CD_ATENDIMENTO | NUMBER | N | Codigo do atendimento que foi registrado os medicamentos em uso. |
| 3 | DH_MEDICAMENTO | DATE | Y | Data e hora de criac?o do registro do uso do medicamento. |
| 4 | DS_MEDICAMENTO_USO | VARCHAR2 | Y | Descric?o do medicamento em uso. |
| 5 | CD_USUARIO | VARCHAR2 | Y | Usuario que realizou o registro do medicamento em uso |
| 6 | SN_SUSPENSO | VARCHAR2 | N | Informac?o de que o medicamento esta ou n?o suspenso o uso. |
| 7 | DH_SUSPENSO | DATE | Y | Data e hora que o medicamento foi suspenso na aplicac?o |
| 8 | CD_USUARIO_SUSPENSAO | VARCHAR2 | Y | Usuario que realizou a suspens?o do medicamento em uso |
| 9 | DS_JUSTIFICA_SUSPENSAO | VARCHAR2 | Y | Descric?o da justificativa da suspens?o |
| 10 | DH_REGISTRO | TIMESTAMP(6) WITH LOCAL TIME ZONE | Y | Campo que armazena a data e hora de criação do registro. |

---

## DBAMV.PW_MEMBRO_CORPO_HUMANO
> Tabela para Membro do Corpo Humano

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MEMBRO_CORPO_HUMANO | NUMBER | N | Codigo Membro do Corpo Humano |
| 2 | NM_MEMBRO_CORPO_HUMANO | VARCHAR2 | N | Nome Membro do Corpo Humano |
| 3 | DS_SIGLA | VARCHAR2 | N | Sigla Membro do Corpo Humano |
| 4 | DS_SVG | VARCHAR2 | N | SVG Membro do Corpo Humano |
| 5 | CD_PARTE_CORPO_HUMANO | NUMBER | Y | Codigo Parte do Corpo Humano |

---

## DBAMV.PW_METASTASE_ESTADIO
> TABELA QUE REGISTRA AS METASTASE DO ESTADIO.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_METASTASE_ESTADIO | NUMBER | N | CODIGO DA RELAÇÃO METASTASE-ESTADIO. |
| 2 | CD_DIAGNOSTICO_ATENDIME | NUMBER | N | CODIGO DO DIAGNOSTICO. |
| 3 | CD_CID | VARCHAR2 | N | CÓDIGO DO CID-0. |
| 4 | CD_CID_O | VARCHAR2 | Y | CÓDIGO DO CID-0. |

---

## DBAMV.PW_MOTIVO
> Tabela de Motivos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MOTIVO | NUMBER | N | Código do Motivo |
| 2 | DS_MOTIVO | VARCHAR2 | N | Descrição do Motivo |
| 3 | SN_ATIVO | VARCHAR2 | N | Informa se o motivo está ativo ou não |
| 4 | TP_MOTIVO | VARCHAR2 | N | Informa o tipo do motivo, sendo A = Alteração de Médico Referência e B = Alteração de Programa de... |

---

## DBAMV.PW_MOTIVOS_DOMICILIAR
> Tabela de Cadastro de Motivos dos Chamados da Assistência Domiciliar

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MOTIVO_DOMICILIAR | NUMBER | N | Código do Motivo da Assistência Domiciliar |
| 2 | DS_MOTIVO_DOMICILIAR | VARCHAR2 | N | Descrição do Motivo da Assistência Domiciliar |
| 3 | SN_ATIVO | VARCHAR2 | N | Indicador de Situação Ativo. S=Sim, N=Não |
| 4 | TP_MOTIVO_DOMICILIAR | VARCHAR2 | N | Tipo de Assistência Domiciliar. A=Anular, R=Reiterar |
| 5 | CD_USUARIO_INCLUSAO | VARCHAR2 | N | Código do usuário de inclusão |
| 6 | DT_CADASTRO | DATE | N | Data do cadastro do Motivo da Assistência Domiciliar |

---

## DBAMV.PW_MOTIVO_DESCARTE_PROTOCOLO
> Cadastro das possíveis etapas do protocolo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MOTIVO_DESCARTE_PROTOCOLO | NUMBER | N | Código sequencial. |
| 2 | DS_MOTIVO_DESCARTE_PROTOCOLO | VARCHAR2 | N | Descrição da etapa. |
| 3 | SN_ATIVO | VARCHAR2 | N | Indica se a etapa é uma etapa final. |

---

## DBAMV.PW_MOTIVO_SOLIC_PRONTUARIO_VIP
> Tabela para armazenar o cadastro de motivos de solicitaes de acesso a pronturio vip por prestadores

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MOTIVO_SOLIC_PRONTUARIO_VIP | NUMBER | N | Sequencial de motivos de solicitaes |
| 2 | DS_MOTIVO_SOLIC_PRONTUARIO_VIP | VARCHAR2 | N | Descrio de motivos de solicitaes |
| 3 | SN_ATIVO | VARCHAR2 | N | Se est ativo ou no |

---

## DBAMV.PW_MOT_FINALIZACAO_PROTOCOLO
> Cadastro das possíveis etapas do protocolo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MOT_FINALIZACAO_PROTOCOLO | NUMBER | N | Código sequencial. |
| 2 | DS_MOT_FINALIZACAO_PROTOCOLO | VARCHAR2 | N | Descrição da etapa. |
| 3 | SN_ATIVO | VARCHAR2 | N | Indica se a etapa é uma etapa final. |

---

## DBAMV.PW_NOME_EXIBICAO_COMPONENTES
> Tabela para armazenar os nomes de exibição para os componentes do item de prescrição

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_NOME_EXIBICAO_COMPONENTES | NUMBER | N | Código sequêncial para a tabela |
| 2 | DS_NOME_EXIBICAO_COMPONENTES | VARCHAR2 | N | Descrição do nome de exibição para os componentes do item de prescrição |

---

## DBAMV.PW_NOTIFICACAO_FORMA_ENVIO
> Tabela para guardar a informação do gráfico de curva de crescimento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_NOTIFICACAO_FORMA_ENVIO | NUMBER | N | Código sequencial identificador do registro |
| 2 | CD_CONFIG_NOTIFICACAO | NUMBER | N | Coluna com o código sequencial da configuração da notificação (FK) |
| 3 | DS_NOTIFICACAO_FORMA_ENVIO | VARCHAR2 | N | Coluna que contém a descrição da forma de envio |
| 4 | DS_CHAVE_FORMA_ENVIO | VARCHAR2 | N | Chave utilizada pelos serviços de mensagem para identificar uma forma de envio |
| 5 | SN_ATIVO | VARCHAR2 | N | Define se a forma de envio está ativa ou não |
| 6 | SN_USA_TRIGGER | VARCHAR2 | N | Esta coluna define se esta forma de envio habilita ou não o envio de mensagens via trigger |
| 7 | SN_EXCECAO_POR_SETOR | VARCHAR2 | N | Esta coluna define se este registro é referente a uma exceção por setor. |
| 8 | CD_NOTIF_FORMA_ENVIO_EXCECAO | NUMBER | Y | Coluna com o código sequencial da configuração da forma de envio (FK).Este é um auto-relacionamen... |
| 9 | CD_SETOR | NUMBER | Y | Coluna com o código sequencial do setor (FK). Caso esta coluna esteja configurada, este registro ... |

---

## DBAMV.PW_NOTIF_PARAM_FORMA_ENVIO
> Tabela para guardar os parâmetros utilizados para cada fórma de envio

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_NOTIF_PARAM_FORMA_ENVIO | NUMBER | N | Código sequencial identificador do registro |
| 2 | CD_NOTIFICACAO_FORMA_ENVIO | NUMBER | N | Coluna com o código sequencial da configuração da forma de envio (FK) |
| 3 | DS_PARAMETRO | VARCHAR2 | N | Descrição do parâmetro que deverá ser exibida na tela para entendimento da configuração |
| 4 | DS_CHAVE_PARAMETRO | VARCHAR2 | N | Chave utilizada pelos serviços de mensagem para identificar o valor para um parâmetro |
| 5 | TP_PARAMETRO | VARCHAR2 | N | Esta coluna define se esta forma de envio habilita ou não o envio de mensagens via trigger |

---

## DBAMV.PW_NOTIF_VALOR_PARAM_FORMA_ENV
> Tabela para guardar os valores possívis para os parâmetros utilizados nas formas de envío

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_NOTIF_VALOR_PARAM_FORMA_ENV | NUMBER | N | Código sequencial identificador do registro |
| 2 | CD_NOTIF_PARAM_FORMA_ENVIO | NUMBER | N | Coluna com o código sequencial da configuração do parâmetro da forma de envio (FK) |
| 3 | DS_EXIBICAO_VALOR | VARCHAR2 | Y | Descrição do valor que deverá ser exibida para o usuário na tela. |
| 4 | DS_VALOR | VARCHAR2 | Y | Valor possível para o parâmetro |
| 5 | TP_VALOR | VARCHAR2 | N | Define o tipo do valor possível para o campo |

---

## DBAMV.PW_NTFC_RISCO_PROGR_SAUDE_ATP
> Tabela que armazena as informações para notificar sobre a alteração do risco do programa de saúde.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_NTFC_RISCO_PROGR_SAUDE | NUMBER | N | Chave primária |
| 2 | CD_PROGRAMA_SAUDE_PACIENTE | NUMBER | N | Programa de saúde do paciente. |
| 3 | NM_RISCO | VARCHAR2 | N | Risco do programa de saúde. |

---

## DBAMV.PW_OBJETIVO_EXAME
> Tabela que armazena as informações dos exames informado no Objetivo do SOAP.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_OBJETIVO_EXAME | NUMBER | N | Chave primária |
| 2 | CD_SOAP_OBJETIVO | NUMBER | N | Código do Objetivo |
| 3 | CD_EXAME_CONFIG | NUMBER | N | Código da configuração do SOAP exame |
| 4 | DT_SOLICITACAO | TIMESTAMP(6) | Y | Data da solicitação do exame |
| 5 | DT_REALIZACAO | TIMESTAMP(6) | Y | Data da realização do exame |
| 6 | DT_AVALIACAO | TIMESTAMP(6) | Y | Data da avaliação do exame |
| 7 | DS_RESULTADO | VARCHAR2 | Y | Descrição do resultado do exame |

---

## DBAMV.PW_OBJETIVO_ITEM_AFERICAO
> Tabela que armazena os itens de aferição para o Objetivo do SOAP.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_OBJETIVO_ITEM_AFERICAO | NUMBER | N | Chave primária |
| 2 | CD_SOAP_OBJETIVO | NUMBER | N | Código do Objetivo |
| 3 | DT_COLETA | TIMESTAMP(6) | Y | Data da coleta |
| 4 | CD_SINAL_VITAL | NUMBER | N | Código do sinal vital |
| 5 | VALOR | NUMBER | Y | Valor da coleta |
| 6 | DS_VALOR | VARCHAR2 | Y | Descrição do valor da coleta |
| 7 | CD_INSTRUMENTO_AFERICAO | NUMBER | Y | Instrumento aferição |
| 8 | CD_UNIDADE_AFERICAO | NUMBER | Y | Unidade aferição |
| 9 | CD_LOCAL_AFERICAO | NUMBER | Y | Local da aferição |
| 10 | CD_POSICAO_PACIENTE | NUMBER | Y | Posição do paciente |
| 11 | SN_GLICEMIA | VARCHAR2 | N | Se a aferição é de Glicemia. "S" ou "N" |
| 12 | NR_SERIE | VARCHAR2 | Y | Número de série do equipamento que foi feita a verificação da glicemia |
| 13 | NR_LOTE | VARCHAR2 | Y | Número do lote da fita que foi usada para fazer a verificação da glicemia |
| 14 | NR_ORDEM | NUMBER | Y | Número da ordem |
| 15 | SN_EXIBE_ITEM | VARCHAR2 | N | Indica se irá exibir o item de aferição |
| 16 | SN_OBRIGA_ITEM | VARCHAR2 | N | Indica se será obrigatório informar o item de aferição |
| 17 | SN_EXIBE_LOCAL | VARCHAR2 | N | Indica se irá exibir o local da aferição |
| 18 | SN_OBRIGA_LOCAL | VARCHAR2 | N | Indica se será obrigatório informar o item de aferição |
| 19 | SN_EXIBE_POSICAO | VARCHAR2 | N | Indica se irá exibir o campo da posição do paciente |
| 20 | SN_OBRIGA_POSICAO | VARCHAR2 | N | Indica se será obrigatório informar o campo da posição do paciente |

---

## DBAMV.PW_OBJETIVO_VACINA
> Tabela que armazena as vacinas para o Objetivo do SOAP.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_OBJETIVO_VACINA | NUMBER | N | Chave primária |
| 2 | CD_SOAP_OBJETIVO | NUMBER | N | Código do Objetivo SOAP |
| 3 | CD_VACINA | NUMBER | N | Código da vacina |

---

## DBAMV.PW_OBJETO_CAMPOS_AVAL_FARM
> Tabela para indicação de valores de avaliação farmaceutica ligada ao objeto

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_OBJETO_CAMPOS_AVAL_FARM | NUMBER | N | Código da PK |
| 2 | CD_OBJETO | NUMBER | N | Código do objeto |
| 3 | SN_CRONICO | VARCHAR2 | N | Informa se o medicamento é de uso Crônico |
| 4 | SN_QUANTIDADE | VARCHAR2 | N | Informa se no Lançamento da aval. farm. Aceita a Quantidade |
| 5 | SN_QTD_CHECAGEM | VARCHAR2 | N | Indica se será ou não permitido inserir a quantidade do item na tela de checagem |
| 6 | SN_OBSERVACAO | VARCHAR2 | N | Indica se a observação será utilizada para a aval. farm. |
| 7 | SN_OBSERVACAO_PRE_DEFINIDA | VARCHAR2 | N | Indica se a observação predenifida será utilizada para a aval. farm. |
| 8 | SN_FREQUENCIA | VARCHAR2 | N | Indica se no Lançamento da aval. farm. Aceita Frequência |
| 9 | SN_FOR_APL | VARCHAR2 | N | Indica se no Lançamento da aval. farm. Aceita Forma de aplicação |
| 10 | SN_UNIDADE | VARCHAR2 | N | Controle de Unidade no Esquema de Itens de Prescricao da aval. farm. |
| 11 | SN_VELOCIDADE_INFUSAO | VARCHAR2 | N | Permite controle de velocidade de Infusão do medicamento (Soroterapia) |
| 12 | SN_DURACAO | VARCHAR2 | N | Habilta ou não a opção de duração. Valores: S - Sim(Obrigatório); N - Não |
| 13 | SN_SOLICITA_PRESTADOR | VARCHAR2 | N | Indica se solicita o prestador no item |
| 14 | SN_SET_EXA | VARCHAR2 | N | Indica se solicita o setor do exame |
| 15 | SN_HORARIO | VARCHAR2 | N | Indica se permite informar horário para os itens de prescrição |
| 16 | SN_NR_DIA | VARCHAR2 | N | Identifica se os itens controlam o número de dia de aplicação |
| 17 | SN_DIAS_APLICACAO | VARCHAR2 | N | Identifica se os itens controlam o dia de aplicação |
| 18 | SN_DOSE_PADRAO | VARCHAR2 | N | Indica se a dose padrão será utilizada para o objeto selecionado |
| 19 | SN_DISPOSITIVO | VARCHAR2 | N | Controle se o item terá dispositivo |
| 20 | SN_URGENTE | VARCHAR2 | N | Define se os itens neste objeto poderão informar se o item é urgente |
| 21 | SN_CRITERIO_MEDICO | VARCHAR2 | N | Define se os itens neste objeto poderão informar se o item é A Critério Médico |
| 22 | SN_VOL_TOTAL_SOL | VARCHAR2 | N | Indica se deverá ser informado o volume total e a unidadeda solução no item. |
| 23 | SN_CONTINUO | VARCHAR2 | N | Define se os itens neste objeto poderão informar se o item é contínuo |

---

## DBAMV.PW_OBJETO_GRUPO_HIST_ENFERM
> Tabela que vincula o objeto aos grupos de enfermagem

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_OBJETO | NUMBER | N | Indica o código do pagu objeto (Fk). |
| 2 | CD_GRUPO | NUMBER | N | Indica o código dos grupo do historico de enfermagem (Fk). |

---

## DBAMV.PW_OBJETO_GRUPO_PRESCRICAO
> Tabela de relacionamento entre grupos e Objetos(Segmento)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GRUPO_PRESCRICAO | NUMBER | N | Codigo do grupo de prescric?o |
| 2 | CD_OBJETO | NUMBER | N | Codigo do Objeto |
| 3 | NR_ORDEM_EXIBICAO | NUMBER | N | Ordem de exibic?o dos Grupos do (Objeto)Segmento |
| 4 | DS_EXIBICAO | VARCHAR2 | Y | Caso exista necessidade de ter um nome diferente deste grupo para cada tipo de prescric?o ( recei... |

---

## DBAMV.PW_OBSERVACAO_PACIENTE
> TABELA QUE ARMAZENA OS REGISTROS DE OBSERVAC?ES DOS PACIENTES DURANTE OS ATENDIMENTOS.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_OBSERVACAO_PACIENTE | NUMBER | N | IDENTIFICADOR DO REGISTRO DAS OBSERVAC?ES DO PACIENTE. |
| 2 | CD_ATENDIMENTO | NUMBER | Y | IDENTIFICADOR DO ATENDIMENTO QUANDO O PACIENTE INFORMOU SUA OBSERVAC?O. |
| 3 | DS_OBSERVACAO_PACIENTE | VARCHAR2 | N | OBSERVAC?ES DO PACIENTE, CONFORME DIGITADO PELO PRESTADOR. |
| 4 | DH_OBSERVACAO_PACIENTE | TIMESTAMP(6) WITH LOCAL TIME ZONE | N | DATA E HORA DE QUANDO O REGISTRO DA OBSERVAC?O DO PACIENTE FOI GRAVADO NO BANCO DE DADOS. |
| 5 | SN_ATIVO | VARCHAR2 | N | INDICA SE O REGISTRO DA OBSERVAC?O DO PACIENTE ESTA ATIVO. |
| 6 | CD_PRESTADOR | NUMBER | N | IDENTIFICADOR DO PRESTADOR QUE REGISTROU A OBSERVAC?O DO PACIENTE. |
| 7 | CD_REGISTRO_CLINICO | NUMBER | Y | Especifica o RegistroClinico que foi realizado no atendimento |
| 8 | TP_OBSERVACAO | VARCHAR2 | N | Identifica o tipo de observac?o realizado(RELEV = Relevante; NOTA = Anotac?o, OBS=Observac?o); |
| 9 | CD_PACIENTE | NUMBER | Y | Campo do Codigo do paciente. |
| 10 | SN_FECHADO | VARCHAR2 | N | Informa se a observação foi fechada para assinatura digital |
| 11 | DH_CANCELAMENTO | TIMESTAMP(6) WITH LOCAL TIME ZONE | Y | Data em que a nota foi inativada |
| 12 | CD_PRESTADOR_CANCELAMENTO | NUMBER | Y | Código do prestador que inativou a nota |

---

## DBAMV.PW_OBSERVACAO_PREDEFINIDA
> Tabela para armazenar as observações predefinidas a serem inseridas no item de prescrição

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_OBSERVACAO_PREDEFINIDA | NUMBER | N | Código sequêncial para a tabela |
| 2 | NM_OBSERVACAO_PREDEFINIDA | VARCHAR2 | N | Nome da observação predefinida |
| 3 | DS_OBSERVACAO_PREDEFINIDA | VARCHAR2 | N | Descrição da observação predefinida |
| 4 | TP_OBSERVACAO_PREDEFINIDA | VARCHAR2 | N | Tipo da observação predefinida |
| 5 | NM_EXIBICAO_OBSERVACAO_PREDEF | VARCHAR2 | Y | Nome de exibição da observação predefinida |
| 6 | TP_OBSERVACAO_PREDEF_SUBST | VARCHAR2 | Y | Tipo da observação predefinida substituta |
| 7 | DS_OBSERVACAO_PREDEF_SUBST | VARCHAR2 | Y | Descrição da observação substituta |
| 8 | TP_GRUPO_TIPO_COMPONENTE | VARCHAR2 | Y | Representa o grupo de tipos de componentes que serão levados em consideração para troca da observ... |

---

## DBAMV.PW_ORDEM_GRUPO_EXAME
> Tabela com os grupos do exame

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GRUPO_EXAME | NUMBER | N | Código do grupo ao qual o exame esta vinculado. |
| 2 | NM_GRUPO_EXAME | VARCHAR2 | N | Nome do grupo. |
| 3 | NR_ORDEM | NUMBER | N | Ordem em que os grupos serão apresentadas |
| 4 | SN_ATIVO | VARCHAR2 | N | Grupo ativo para ser utilizada no sistema. |

---

## DBAMV.PW_ORDEM_PROTOCOLO
> CADASTRO DE ORDEM PARA OS PROTOCOLOS - CLASSIFICAÇÃO DO CUIDADO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORDEM_PROTOCOLO | NUMBER | N | CÓDIGO DA ORDEM DO PROTOCOLO |
| 2 | DS_ORDEM_PROTOCOLO | VARCHAR2 | N | DESCRIÇÃO DA ORDEM DO PROTOCOLO - CLASSIFICAÇÃO DO CUIDADO |
| 3 | NR_ORDEM | NUMBER | Y | ORDEM DO PROTOCOLO - PESO DA CLASSIFICAÇÃO DO CUIDADO |

---

## DBAMV.PW_ORGAO_CORPO_HUMANO
> Tabela para Org?o do Corpo Humano

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORGAO_CORPO_HUMANO | NUMBER | N | Codigo Org?o do Corpo Humano |
| 2 | NM_ORGAO_CORPO_HUMANO | VARCHAR2 | N | Nome Org?o do Corpo Humano |
| 3 | DS_SIGLA | VARCHAR2 | N | Sigla Org?o do Corpo Humano |
| 4 | DS_SVG | VARCHAR2 | N | SVG Org?o do Corpo Humano |

---

## DBAMV.PW_ORGAO_SOLUCAO_PRESERVACAO
> Tabela para registro da soluc?o de preservac?o do org?o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SOLUCAO_ORGAO | NUMBER | N | Codigo da soluc?o de preservac?o do org?o |
| 2 | CD_TRANSPLANTE_RGCT | NUMBER | N | Cadastro do org?o doador por paciente doador |
| 3 | CD_CADASTRO_DOADOR | NUMBER | N | Codigo do Doador |
| 4 | DT_CADASTRO | DATE | N | Data do Cadastro |
| 5 | CD_USUARIO | VARCHAR2 | N | Nome do usuario que esta registrando o cadastro |
| 6 | DS_MARCA | VARCHAR2 | N | Marca da soluc?o de preservac?o do org?o doado |
| 7 | DT_VALIDADE | DATE | Y | Data de validade da soluc?o de preservac?o do org?o doado |
| 8 | DS_LOTE | VARCHAR2 | Y | Lote da soluc?o de preservac?o do org?o doado |

---

## DBAMV.PW_PACIENTE_CRTE_ENTR_PESQ
> Tabela que guarda os pacientes elegíveis para a pesquisa

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PACIENTE_CRTE_ENTR_PESQ | NUMBER | N | Código de entrada - PK |
| 2 | CD_PROCESSAMENTO | NUMBER | N | Código de processamento |
| 3 | DH_PROCESSAMENTO | DATE | N | Data e hora de processamento |
| 4 | CD_PACIENTE | NUMBER | N | Código do paciente FK -- PACIENTE |
| 5 | CD_PESQUISA_CIENTIFICA | NUMBER | N | Código da pesquisa científica - FK -- PW_PESQUISA_CIENTIFICA |
| 6 | CD_GRUPO_CRITERIO_ENTRADA | NUMBER | N | Código do grupo de critério de entrada- FK -- PW_GRUPO_CRITERIO |
| 7 | SN_PARTICIPA_PESQUISA | VARCHAR2 | Y | Informa se participa da pesquisa: S - Sim, N - Não |
| 8 | DH_PARTICIPA_PESQUISA | DATE | Y | Hora que o paciente decidiu se participa ou não da pesquisa |
| 9 | DS_OBSERVACAO_CRTE_ENTR_PESQ | VARCHAR2 | Y | Observação do paciente para a entrada na pesquisa |

---

## DBAMV.PW_PACIENTE_CRTE_SAI_PESQ
> Tabela que contém os pacientes que estão na pesquisa e estão dentro do critério de saída

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PACIENTE_CRTE_SAI_PESQ | NUMBER | N | Código de entrada - PK |
| 2 | CD_PROCESSAMENTO | NUMBER | N | Código de processamento |
| 3 | DH_PROCESSAMENTO | DATE | N | Data e hora de processamento |
| 4 | CD_PACIENTE | NUMBER | N | Código do paciente - FK -- PACIENTE |
| 5 | CD_PESQUISA_CIENTIFICA | NUMBER | N | Código da pesquisa científica - FK -- PW_PESQUISA_CIENTIFICA |
| 6 | CD_GRUPO_CRITERIO_SAIDA | NUMBER | N | Código do grupo de critério de entrada - FK -- PW_GRUPO_CRITERIO |
| 7 | CD_PRESTADOR | NUMBER | Y | Código do prestador que recebeu o alerta - FK -- PRESTADOR |
| 8 | CD_PACIENTE_PESQ | NUMBER | N | Código do paciente quando entra na pesquisa de fato- FK -- PW_PACIENTE_PESQ |
| 9 | DH_LEITURA_ALERTA | DATE | Y | Data e Hora de leitura do alerta |

---

## DBAMV.PW_PACIENTE_C_ENTR_PESQ_HIST
> Tabela que guarda o histórico de movimentação de aceite do usuário à pesquisa

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PACIENTE_C_ENTR_PESQ_HIST | NUMBER | N | Código PK |
| 2 | CD_PACIENTE_ENTR_PESQ_MOV | NUMBER | N | Código da entrada da pesquisa FK -- PW_PACIENTE_ENTR_PESQ_MOV |
| 3 | CD_PACIENTE | NUMBER | N | Código do paciente FK -- PACIENTE |
| 4 | CD_PESQUISA_CIENTIFICA | NUMBER | N | Código da pesquisa científica - FK -- PW_PESQUISA_CIENTIFICA |
| 5 | SN_PARTICIPA_PESQUISA | VARCHAR2 | Y | Informa se participa da pesquisa: S - Sim, N - Não |
| 6 | DH_PARTICIPA_PESQUISA | DATE | Y | Hora que o paciente decidiu se participa ou não da pesquisa |
| 7 | DS_OBSERVACAO_CRTE_ENTR_PESQ | VARCHAR2 | Y | Observação do paciente para a entrada na pesquisa |

---

## DBAMV.PW_PACIENTE_ENTR_PESQ_MOV
> Tabela que guarda a última movimentação de aceite do usuário à pesquisa

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PACIENTE_ENTR_PESQ_MOV | NUMBER | N | Código de entrada - PK |
| 2 | CD_PACIENTE_CRTE_ENTR_PESQ | NUMBER | N | Código de entrada - FK PW_PACIENTE_CRTE_ENTR_PESQ |
| 3 | CD_PACIENTE | NUMBER | N | Código do paciente FK -- PACIENTE |
| 4 | CD_PESQUISA_CIENTIFICA | NUMBER | N | Código da pesquisa científica - FK -- PW_PESQUISA_CIENTIFICA |
| 5 | SN_PARTICIPA_PESQUISA | VARCHAR2 | N | Informa se participa da pesquisa: S - Sim, N - Não |
| 6 | DH_PARTICIPA_PESQUISA | DATE | N | Hora que o paciente decidiu se participa ou não da pesquisa |
| 7 | DS_OBSERVACAO_CRTE_ENTR_PESQ | VARCHAR2 | Y | Observação do paciente para a entrada na pesquisa |

---

## DBAMV.PW_PACIENTE_PESQ
> Tabela que contém os pacientes em pesquisa

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PACIENTE_PESQ | NUMBER | N | Código do paciente da pesquisa - PK |
| 2 | DT_CRIACAO | DATE | N | Data de Criação |
| 3 | CD_PACIENTE_ENTR_PESQ_MOV | NUMBER | N | Código do aceite do paciente - FK -- PW_PACIENTE_ENTR_PESQ_MOV |
| 4 | CD_PESQUISA_CIENTIFICA | NUMBER | N | Código da pesquisa científica - FK -- PW_PESQUISA_CIENTIFICA |
| 5 | CD_PACIENTE | NUMBER | N | Código do paciente - FK -- PACIENTE |
| 6 | TP_STATUS | VARCHAR2 | N | STATUS DO PACIENTE - AGUARDANDO,FINALIZADO, INICIADO,PAUSADO |
| 7 | DT_INICIO_TRATAMENTO | DATE | Y | DATA DO INICIO DO TRATAMENTO |
| 8 | DT_FIM_TRATAMENTO | DATE | Y | DATA DO FIM DO TRATAMENTO |
| 9 | DS_OBSERVACAO | VARCHAR2 | Y | Observação do Status da pesquisa/paciente |
| 10 | TP_FINALIZADO | VARCHAR2 | Y | Motivo da finalização - Outros, Pelo critério de saída ou Processo padrão de finalização |
| 11 | TP_VISUALIZACAO | VARCHAR2 | N | Tipo de visualização do paciente na pesquisa |

---

## DBAMV.PW_PACIENTE_PESQ_HIST

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PACIENTE_PESQ_HIST | NUMBER | N | CSequencial da tabela |
| 2 | CD_PACIENTE_PESQ | NUMBER | N | Código do paciente participando na pesquisa |
| 3 | DT_CRIACAO | DATE | N | Data de Criação |
| 4 | CD_PACIENTE_ENTR_PESQ_MOV | NUMBER | N | Código do aceite do paciente |
| 5 | CD_PESQUISA_CIENTIFICA | NUMBER | N | Código da pesquisa científica |
| 6 | CD_PACIENTE | NUMBER | N | Código do paciente - FK -- PACIENTE |
| 7 | TP_STATUS | VARCHAR2 | N | Status do paciente - AGUARDANDO,FINALIZADO, INICIADO,PAUSADO |
| 8 | DT_INICIO_TRATAMENTO | DATE | Y | Data do inicio do tratamento |
| 9 | DT_FIM_TRATAMENTO | DATE | Y | Data do fim do tratamento |
| 10 | DT_ALTERACAO | DATE | N |  |
| 11 | CD_USUARIO | VARCHAR2 | N | Usuário que alterou |
| 12 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 13 | TP_FINALIZADO | VARCHAR2 | Y | Motivo da finalização - Outros, Pelo critério de saída ou Processo padrão de finalização |
| 14 | TP_VISUALIZACAO | VARCHAR2 | N | Tipo de visualização do paciente na pesquisa |

---

## DBAMV.PW_PAC_PESQ_CIENT_CRITERIO
> Tabela para armazenar os critério no qual o paciente foi identificado

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PAC_PESQ_CIENT_CRITERIO | NUMBER | N | Código do registro do critério |
| 2 | CD_GERA_PESQUISA_CRITERIO | NUMBER | N | Código do processamento no qual foi encontrado o paciente no qual atendeu o critério |
| 3 | CD_GRUPO_CRITERIO | NUMBER | N | Código do grupo de critérios aplicados ao paciente |
| 4 | CD_PACIENTE | NUMBER | N | Código do paciente que atendeu o critério |
| 5 | CD_ATENDIMENTO | NUMBER | N | Código do atendimento que foi utilizado para obter o valor do critério |
| 6 | DS_CRITERIO | VARCHAR2 | N | Descrição do critério utilizado |
| 7 | CD_CRITERIO | NUMBER | N | Critério atendido |
| 8 | VL_CRITERIO_ATENDINDO | VARCHAR2 | N | Valor do criterio atendido |
| 9 | CD_TIPO_CRITERIO_PARAM_CONSULT | NUMBER | Y | Parametros atendidos |

---

## DBAMV.PW_PARAMETRO_INTEGRACAO
> Parametros que serão informados durante a chamada ao sistema integrado

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PARAMETRO_INTEGRACAO | NUMBER | N | Codigo do parâmetro da integracao |
| 2 | CD_INTEGRACAO | NUMBER | N | Codigo da integracao |
| 3 | DESCRICAO | VARCHAR2 | N | Descricao do parametro |
| 4 | PARAMETRO | VARCHAR2 | N |  |
| 5 | VALOR | VARCHAR2 | Y | Valor do parametro |

---

## DBAMV.PW_PARAMETRO_MVREPORT
> Tabela para registro dos parametros do MVREPORT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PARAMETRO_MVREPORT | NUMBER | N | Codigo de identificac?o dos parametros MVREPORT |
| 2 | CD_PERFIL_MODULO_PARAMETRO | NUMBER | N | Identificador da tabela de perfil/modulo com os parametros do modulo. |
| 3 | CD_PARAMETRO | VARCHAR2 | N | Nome do parametro |
| 4 | NM_VALOR | VARCHAR2 | N | Valor utilizado como referencia. |

---

## DBAMV.PW_PARAMETRO_PAGU_OBJETO
> Repositorio de Parametros para o Tipo de Documento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PARAMETRO_PAGU_OBJETO | NUMBER | N | Codigo de Identificac?o do Parametro |
| 2 | CD_TIPO_DOCUMENTO | NUMBER | N | Codido do Tipo de Documento |
| 3 | NM_PARAMETRO | VARCHAR2 | N | Nome do Parametro |
| 4 | DS_PARAMETRO | VARCHAR2 | N | Descric?o do Parametro |
| 5 | TP_PARAMETRO | VARCHAR2 | N | Tipo de Parametro (QUERY,LISTA,VALOR) |
| 6 | DS_QUERY | VARCHAR2 | Y | Query para armazenar a query do TP_PARAMETRO = QUERY |

---

## DBAMV.PW_PARAMETRO_QUESTIONARIO
> Tabela de configuração do questionário ao objeto

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PARAMETRO_QUESTIONARIO | NUMBER | N | Código da configuração da ligação entre o objeto e o questionário |
| 2 | CD_CONFIG_GRUPO_QUEST | NUMBER | N | Código do grupo do questionário |
| 3 | CD_CONFIG_QUESTIONARIO | NUMBER | N | Código do questionário |
| 4 | CD_OBJETO | NUMBER | N | Código do objeto ligado ao questionario |

---

## DBAMV.PW_PARTE_CORPO_HUMANO
> Tabela para Parte do Corpo Humano

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PARTE_CORPO_HUMANO | NUMBER | N | Codigo Parte do Corpo Humano |
| 2 | NM_PARTE_CORPO_HUMANO | VARCHAR2 | N | Nome Parte do Corpo Humano |
| 3 | DS_SIGLA | VARCHAR2 | N | Sigla Parte do Corpo Humano |
| 4 | DS_SVG | VARCHAR2 | N | SVG Parte do Corpo Humano |

---

## DBAMV.PW_PART_CORP_HUM_SIS_CORP_HUM
> Tabela intermediaria entre Parte Corpo Humano e Sistema Corpo Humano

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SISTEMA_CORPO_HUMANO | NUMBER | N | Codigo Sistema Corpo Humano |
| 2 | CD_PARTE_CORPO_HUMANO | NUMBER | N | Codigo Parte Corpo Humano |

---

## DBAMV.PW_PAR_TRANSCRICAO_VOZ
> Tabela que armazena os parametros de transcricao por voz.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PAR_TRANSCRICAO_VOZ | NUMBER | N |  |
| 2 | NM_PAR_TRANSCRICAO_VOZ | VARCHAR2 | N |  |
| 3 | DS_PAR_TRANSCRICAO_VOZ | VARCHAR2 | N |  |
| 4 | TP_PAR_TRANSCRICAO_VOZ | VARCHAR2 | N |  |
| 5 | DS_COLUNA_TRANSCRICAO_VOZ | VARCHAR2 | N |  |
| 6 | DS_REGRA_IA | CLOB | Y | Regra em formato livre (texto ou JSON) usada por IA para extração de informações como CID. |

---

## DBAMV.PW_PERFIL_MODULO
> Tabela que armazena a associac?o dos perfis ao modulo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PERFIL_MODULO | NUMBER | N | Identificador do vinculo de perfil com modulo. |
| 2 | CD_PERFIL_AMBULATORIAL | NUMBER | N | Identificador do perfil que esta sendo criado. |
| 3 | CD_MODULO | VARCHAR2 | Y | Identifica que modulo/tipo sera chamado na aba |
| 4 | NR_ORDEM | NUMBER | Y | Indica qual sera a ordem apresentada dos modulo no perfil |
| 5 | CD_PERFIL_MODULO_PAI | NUMBER | Y | Usada para indicar o modulo pai para a estrutura de subsegmento |
| 6 | DS_CAMINHO | VARCHAR2 | Y | Caso esse modulo tenha um caminho diferente do padrao MV, utilizar esse campo |
| 7 | LO_ICONE | BLOB | Y | Caso esse modulo tenha um icone diferente do padrao MV, utilizar esse campo |
| 8 | NM_TITULO | VARCHAR2 | Y | Grava o titulo que ira aparecer em cada modulo |
| 9 | CD_PERFIL_MODULO_AGRUPADOR | NUMBER | Y | Código do segmento agrupador - MVPEP_SEG_AGRUPADOR |

---

## DBAMV.PW_PERFIL_MODULO_PARAMETRO
> Tabela que armazena que tipos de consulta estão disponíveis para cada documento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PERFIL_MODULO_PARAMETRO | NUMBER | N | Identificador da tabela de perfil/modulo com os parâmetros do módulo. |
| 2 | CD_MODULO | VARCHAR2 | N | Identificador do módulo que está sendo usado |
| 3 | CD_PARAMETRO | VARCHAR2 | N | Parâmetro do módulo que está sendo referenciado |
| 4 | CD_PERFIL_MODULO | NUMBER | N | Identificador da tabela de perfil/modulo. |
| 5 | NM_VALOR | VARCHAR2 | N | Valor utilizado como referência. |
| 6 | DS_VALOR | VARCHAR2 | Y | Descrição do valor usado no parâmetro |

---

## DBAMV.PW_PERFIL_MODULO_PAR_TRSC_VOZ
> Tabela que faz o vinculo entre perfil e os parametros ligados a ele

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PERFIL_MODULO_PAR_TRSC_VOZ | NUMBER | N |  |
| 2 | CD_PERFIL_MODULO | NUMBER | N |  |
| 3 | CD_PAR_TRANSCRICAO_VOZ | NUMBER | N |  |

---

## DBAMV.PW_PERF_AMBULAT_DAD_DEMOG
> Tabela responsvel cadastrar os campos dados demograficos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PERF_AMBULAT_DAD_DEMOG | NUMBER | N | Cdigo gerado por sequence |
| 2 | DS_CAMPO | VARCHAR2 | N | Descricao do campo |
| 3 | NM_COLUNA | VARCHAR2 | N | Nome da coluna do campo |

---

## DBAMV.PW_PERF_AMB_CAM_BLQ_PERF
> Tabela que guarda os campos bloqueados do perfil

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PERF_AMB_CAM_BLQ_PERF | NUMBER | N | Codigo gerado por sequence |
| 2 | CD_PERF_AMBULAT_DAD_DEMOG | NUMBER | N | Codigo do campo |
| 3 | CD_PERFIL_AMBULATORIAL | NUMBER | N | Codigo do perfil ambulatorial |

---

## DBAMV.PW_PERF_AMB_EXC_GRL_PRES
> Tabela que guarda os campos bloqueados do perfil

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PERF_AMB_EXC_GRL_PRES | NUMBER | N | Codigo gerado por sequence |
| 2 | CD_PERFIL_AMBULATORIAL | NUMBER | N | Codigo do perfil ambulatorial |
| 3 | CD_PRESTADOR | NUMBER | N | Codigo do prestador |

---

## DBAMV.PW_PERF_AMB_EXC_PRES_CAM
> Tabela que guarda os campos bloqueados do perfil

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PERF_AMB_EXC_PRES_CAM | NUMBER | N | Codigo gerado por sequence |
| 2 | CD_PERFIL_AMBULATORIAL | NUMBER | N | Codigo do perfil ambulatorial |
| 3 | CD_PRESTADOR | NUMBER | N | Codigo do prestador |
| 4 | CD_PERF_AMBULAT_DAD_DEMOG | NUMBER | N | Codigo do campo |

---

## DBAMV.PW_PERGUNTA
> Tabela para Pergunta

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PERGUNTA | NUMBER | N | Codigo da Pergunta |
| 2 | DS_PERGUNTA | VARCHAR2 | Y | Descric?o da Pergunta |
| 3 | SN_ATIVO | VARCHAR2 | Y | Se a Pergunta esta Ativa |
| 4 | SN_USO | VARCHAR2 | Y | Se a Pergunta esta Em Uso |
| 5 | DS_DICA | VARCHAR2 | Y | Dica da Pergunta |
| 6 | SN_EDITAVEL | VARCHAR2 | Y | Se a Pergunta e Editavel |
| 7 | SN_OBRIGATORIO | VARCHAR2 | Y | Se a Pergunta e Obrigatoria |
| 8 | DS_VALOR_INICIAL | VARCHAR2 | Y | Valor Inicial da Pergunta |
| 9 | CD_GRUPO_PERGUNTA | NUMBER | Y | Codigo Grupo Pergunta |
| 10 | CD_VERSAO_FORMULARIO | NUMBER | Y | Codigo Vers?o Formulario |

---

## DBAMV.PW_PERGUNTA_ANAMNESE
> Tabela que armazena a pergunta anamnese

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PERGUNTA_ANAMNESE | NUMBER | N | codigo da pergunta anamnese |
| 2 | DS_PERGUNTA_ANAMNESE | VARCHAR2 | N | descric?o da pergunta anamnese |
| 3 | CD_TIPO_RESPOSTA | NUMBER | Y | codigo do tipo valor resposta |
| 4 | SN_OBRIGATORIO | VARCHAR2 | N | se a pergunta anamnese e orbigatoria |

---

## DBAMV.PW_PERGUNTA_BOOLEANA
> Tabela para Pergunta Booleana

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PERGUNTA | NUMBER | N | Codigo Pergunta Booleana |

---

## DBAMV.PW_PERGUNTA_DATA_HORA
> Tabela para Pergunta Data Hora

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PERGUNTA | NUMBER | N | Codigo Pergunta Data Hora |
| 2 | VL_CAMPO_DATA_HORA | DATE | Y | Valor Pergunta Data Hora |
| 3 | VL_MAXIMO | DATE | Y | Valor Maximo Pergunta Data Hora |
| 4 | TP_CAMPO_DATA_HORA | NUMBER | Y | Tipo Pergunta Data Hora |
| 5 | VL_MINIMO | DATE | Y | Valor Minimo Pergunta Data Hora |
| 6 | DS_MASCARA | VARCHAR2 | Y | Mascara Pergunta Data Hora |
| 7 | NR_TAMANHO_APRESENTACAO | NUMBER | Y | Tamanho Apresentac?o Pergunta Data Hora |
| 8 | NR_TAMANHO_MAXIMO | NUMBER | Y | Tamanho Maximo Pergunta Data Hora |

---

## DBAMV.PW_PERGUNTA_EVOLUCAO
> Tabela que armazena a pergunta evoluc?o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PERGUNTA_EVOLUCAO | NUMBER | N | codigo da pergunta evoluc?o |
| 2 | DS_PERGUNTA_EVOLUCAO | VARCHAR2 | Y | descric?o da pergunta evoluc?o |
| 3 | SN_SN_PER_EVO_OBR | VARCHAR2 | Y | se a pergunta evoluc?o e orbigatoria |
| 4 | ORDEM_PERGUNTA_EVOLUCAO | NUMBER | Y | ordem da pergunta evoluc?o |
| 5 | CD_TIPO_VALOR_RESPOSTA | NUMBER | Y | codigo do tipo valor resposta evoluc?o |

---

## DBAMV.PW_PERGUNTA_EXAME_FISICO
> Tabela para Pergunta Exame Fisico

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PERGUNTA | NUMBER | N | Codigo Pergunta Exame Fisico |

---

## DBAMV.PW_PERGUNTA_LISTA
> Tabela para Pergunta Lista

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PERGUNTA | NUMBER | N | Codigo Pergunta Lista |
| 2 | NR_ITENS_EXIBIDOS | NUMBER | Y | Numero de Itens Exibidos Pergunta Lista |
| 3 | NM_COLUNA_CODIGO | VARCHAR2 | Y | Nome Coluna Codigo Pergunta Lista |
| 4 | NM_COLUNA_DESCRICAO | VARCHAR2 | Y | Nome Coluna Descric?o Pergunta Lista |
| 5 | DS_QUERY | VARCHAR2 | Y | Query Pergunta Lista |
| 6 | NR_TAMANHO_APRESENTACAO | NUMBER | Y | Tamanho Apresentac?o Pergunta Lista |

---

## DBAMV.PW_PERGUNTA_NUMERICA
> Tabela para Pergunta Numerica

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PERGUNTA | NUMBER | N | Codigo Pergunta Numerica |
| 2 | VL_MAXIMO | NUMBER | Y | Valor Maximo Pergunta Numerica |
| 3 | VL_MINIMO | NUMBER | Y | Valor Minimo Pergunta Numerica |
| 4 | NR_CASA_DECIMAIS | NUMBER | Y | Numero Casas Decimais Pergunta Numerica |
| 5 | VL_CAMPO_NUMERICO | NUMBER | Y | Valor Pergunta Numerica |
| 6 | NR_TAMANHO_APRESENTACAO | NUMBER | Y | Tamanho Apresentac?o Pergunta Numerica |
| 7 | NR_TAMANHO_MAXIMO | NUMBER | Y | Tamanho Maximo Pergunta Numerica |

---

## DBAMV.PW_PERGUNTA_QUEST

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PERGUNTA_QUEST | NUMBER | N |  |
| 2 | CD_QUESTIONARIO | NUMBER | Y |  |
| 3 | CD_CONFIG_PERG_QUEST | NUMBER | Y |  |
| 4 | DS_CONFIG_PERG_QUEST | VARCHAR2 | Y |  |
| 5 | NR_ORDEM | NUMBER | Y |  |
| 6 | SN_OBRIGATORIO | VARCHAR2 | Y |  |
| 7 | SN_ATIVO | VARCHAR2 | Y |  |

---

## DBAMV.PW_PERGUNTA_TEXTO
> Tabela para Pergunta Texto

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PERGUNTA | NUMBER | N | Codigo Pergunta Texto |
| 2 | NR_TAMANHO_APRESENTACAO | NUMBER | Y | Tamanho Apresentac?o Pergunta Texto |
| 3 | NR_TAMANHO_MAXIMO | NUMBER | Y | Tamanho Maximo Pergunta Texto |
| 4 | NR_LINHAS_EXIBICAO | NUMBER | Y | Numero Linhas Exibic?o Pergunta Texto |

---

## DBAMV.PW_PESO_RESPOSTA_QUEST

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PESO_RESPOSTA_QUEST | NUMBER | N |  |
| 2 | CD_RESPOSTA_QUEST | NUMBER | Y |  |
| 3 | CD_CONFIG_PESO_RESP_QUEST | NUMBER | Y |  |
| 4 | VL_MIN | NUMBER | Y |  |
| 5 | VL_MAX | NUMBER | Y |  |
| 6 | NR_PESO | NUMBER | Y |  |

---

## DBAMV.PW_PESQUISA_AGENDA_CRITERIO
> Tabela que guarda as informações de geração automática dos critérios de saída das pesquisas

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DH_INICIO | DATE | N | Informa a hora que será executada |
| 2 | SN_ATIVO | VARCHAR2 | N | Informa se a geração automática está ativa ou não |
| 3 | SN_SEGUNDA_FEIRA | VARCHAR2 | N | Informa se será executada na segunda |
| 4 | SN_TERCA_FEIRA | VARCHAR2 | N | Informa se será executada na terça |
| 5 | SN_QUARTA_FEIRA | VARCHAR2 | N | Informa se será executada na quarta |
| 6 | SN_QUINTA_FEIRA | VARCHAR2 | N | Informa se será executada na quinta |
| 7 | SN_SEXTA_FEIRA | VARCHAR2 | N | Informa se será executada na sexta |
| 8 | SN_SABADO | VARCHAR2 | N | Informa se será executada no sábado |
| 9 | SN_DOMINGO | VARCHAR2 | N | Informa se será executada no domingo |
| 10 | SN_FERIADO | VARCHAR2 | N | INFORMA SE O SISTEMA PODE PROCESSAR A SAIDA NO FERIADO |

---

## DBAMV.PW_PESQUISA_CIENTIFICA
> Configuração de pesquisa científica

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PESQUISA_CIENTIFICA | NUMBER | N | Código da pesquisa científica |
| 2 | NM_PESQUISA_CIENTIFICA | VARCHAR2 | N | Nome da pesquisa científica |
| 3 | DT_INICIO_PESQUISA | DATE | N | Data de início da pesquisa científica |
| 4 | DT_FIM_PESQUISA | DATE | N | Data final da pesquisa científica |
| 5 | CD_PRESTADOR | NUMBER | N | Código do prestador/coordenador da pesquisa |
| 6 | CD_TIP_PRESC | NUMBER | Y |  |
| 7 | SN_ATIVO | VARCHAR2 | N | Informa se a pesquisa está ativa: S - Sim, N - Não |
| 8 | DS_OBSERVACAO_PESQUISA | VARCHAR2 | Y | Observação da pesquisa científica |
| 9 | CD_GRUPO_CRITERIO_ENTRADA | NUMBER | N | Grupo do critério de entrada |
| 10 | CD_GRUPO_CRITERIO_SAIDA | NUMBER | N | Grupo de critério de saída |
| 11 | DS_OBSERVACAO_CONTRA_INDICACAO | VARCHAR2 | Y | Observação de contra-indicação |
| 12 | SN_SAIDA_AUTOMATICO | VARCHAR2 | N | Informa se o critério de saída será processado de forma automatica |
| 13 | SN_DIRETORIA | VARCHAR2 | N | Informa se aprovada pela diretoria |
| 14 | SN_COMITE | VARCHAR2 | N | Informa se aprovada pelo comitê |
| 15 | SN_PERMITE_DADOS_PESQUISA | VARCHAR2 | N | Apresenta para os usuários que não são membros da pesquisa os dados da pesquisa científica |
| 16 | SN_PERMITE_PACIENTE_PESQUISA | VARCHAR2 | N | Apresenta para os usuários que não são membros da pesquisa que o paciente está ou não em pesquisa... |
| 17 | NR_DIAS_PROCESSAMENTO | NUMBER | N | Número de dias que será verificado os atendimentos dos pacientes. |

---

## DBAMV.PW_PLANO_CUIDADO_ATP
> Tabela que armazena os planos de cuidado do paciente.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PLANO_CUIDADO | NUMBER | N | Chave primária |
| 2 | CD_PROGRAMA_SAUDE_PACIENTE | NUMBER | N | Programa de saúde do paciente. |
| 3 | NM_RISCO | VARCHAR2 | N | Risco do paciente. |
| 4 | DT_CRIACAO | TIMESTAMP(6) | Y | Data que foi criado o plano de cuidado. |
| 5 | DT_ENVIO | TIMESTAMP(6) | Y | Data de envio das informações para o paciente. |
| 6 | SN_FECHADO | VARCHAR2 | N | Indica se o plano de cuidado está fechado. |
| 7 | DT_FECHADO | TIMESTAMP(6) | Y | Data que o plano de cuidado foi fechado. |
| 8 | CD_USUARIO | VARCHAR2 | N | Usuário que criou o Plano de cuidado. |

---

## DBAMV.PW_PLANO_CUIDADO_JUSTV_ATP
> Tabela que armazena as informações da justificativa para a não criação do plano de cuidado.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PLANO_CUIDADO_JUSTV | NUMBER | N | Chave primária |
| 2 | CD_PROGRAMA_SAUDE_PACIENTE | NUMBER | N | Programa de saúde do paciente. |
| 3 | DS_JUSTIFICATIVA | VARCHAR2 | N | Descrição da justificativa. |
| 4 | CD_USUARIO | VARCHAR2 | N | Usuário que inserio a justificativa. |
| 5 | NM_RISCO | VARCHAR2 | N | Risco do programa de saúde. |
| 6 | DT_JUSTIFICATIVA | TIMESTAMP(6) | N | Data da justificativa. |

---

## DBAMV.PW_PONTO_CURVA_REFERENCIA
> Tabela responsável por guardar as informações dos pontos referentes a curva de referência

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PONTO_CURVA_REFERENCIA | NUMBER | N | Código sequencial identificador do registro |
| 2 | CD_CURVA_REFERENCIA | NUMBER | N | FK para a tabela responsável por guardar as informações das curvas de referência |
| 3 | VL_X | NUMBER | N | Valor do ponto na curva de referencia, para o eixo X |
| 4 | VL_Y | NUMBER | N | Valor do ponto na curva de referencia, para o eixo Y |

---

## DBAMV.PW_PONTO_ENTRADA_PROTOCOLO
> Tabela que configura os documentos que indcarão que o paciente entrou no protocolo.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PONTO_ENTRADA_PROTOCOLO | NUMBER | N | Código sequencial. |
| 2 | CD_ALERTA_PROTOCOLO | NUMBER | N | Vinculo com a tabela principal. |
| 3 | DS_PONTO_ENTRADA_PROTOCOLO | VARCHAR2 | Y | Desccrição do ponto de entrada no protocolo. |
| 4 | TP_PONTO_ENTRADA | VARCHAR2 | Y | Tipo do ponto de entrada. No momento nao será preenchido, pois poderá ser apenas documento eletrô... |
| 5 | CD_DOCUMENTO | NUMBER | Y | Código do documento eletrônico vinculado. |
| 6 | QT_VALIDADE | NUMBER | Y | Tempo retroativo em dias em que o documento tem que ser preenchido para caacterizar entrada no pr... |
| 7 | CD_TIPO_CONSULTA | NUMBER | Y | Codigo do grupo de documento |

---

## DBAMV.PW_PONTO_SAIDA_PROTOCOLO
> Tabela que configura os documentos que indicarão que o paciente saiu do protocolo.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PONTO_SAIDA_PROTOCOLO | NUMBER | N | Código sequencial. |
| 2 | CD_ALERTA_PROTOCOLO | NUMBER | N | Vinculo com a tabela principal. |
| 3 | DS_PONTO_SAIDA_PROTOCOLO | VARCHAR2 | Y | Desccrição do ponto de saida do protocolo. |
| 4 | TP_PONTO_SAIDA | VARCHAR2 | Y | Tipo do ponto de entrada. No momento nao será preenchido, pois poderá ser apenas documento eletrô... |
| 5 | CD_DOCUMENTO | NUMBER | Y | Código do documento eletrônico vinculado. |
| 6 | QT_VALIDADE | NUMBER | Y | Tempo futuro em dias em que o documento tem validade para caracterizar a saida do protocolo. |
| 7 | CD_TIPO_CONSULTA | NUMBER | Y | Codigo do grupo de documento |

---

## DBAMV.PW_PONTUACAO_PACIENTE
> Tabela que guarda a pontuação dos pacientes.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PONTUACAO_PACIENTE | NUMBER | N | Sequencial da tabela |
| 2 | CD_PACIENTE | NUMBER | N | Código do paciente |
| 3 | NR_PONTUACAO | NUMBER | N | Pontuação do paciente |

---

## DBAMV.PW_POSICAO_PACIENTE
> Tabela de cadastro das posições do paciente na aferição (sentado, em pé, deitado, etc.).

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_POSICAO_PACIENTE | NUMBER | N | Código identificador da posição do paciente - Chave Primária. |
| 2 | DS_POSICAO_PACIENTE | VARCHAR2 | N | Descrição da posição do paciente. |
| 3 | SN_ATIVO | VARCHAR2 | N | Indica se a posição do paciente está ativa ou não. |

---

## DBAMV.PW_PREFERENCIA
> Tabela que armazena os relatorio que serao assinados digitalmente

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PREFERENCIA | NUMBER | N | Codigo da preferencia |
| 2 | CD_USUARIO | VARCHAR2 | N |  |
| 3 | SN_ATENDIMENTO | VARCHAR2 | Y | Indica paciente em atendimento |
| 4 | SN_NAO_ATENDIDO | VARCHAR2 | Y | Indica paciente nao atendido |
| 5 | SN_REAVALIACAO | VARCHAR2 | Y | Indica paciente em reavaliacao |
| 6 | SN_FINALIZADO | VARCHAR2 | Y | Indica paciente finalizado |
| 7 | SN_FAVORITO | VARCHAR2 | Y | Indica paciente favorito |
| 8 | CD_ESPECIALID | NUMBER | Y | Indica paciente com prescricao do dia |
| 9 | SN_PRESCRICAO_DO_DIA | VARCHAR2 | Y |  |
| 10 | SN_ULTIMAS_ATUALIZACOES | VARCHAR2 | Y | Indica se o usuario deseja visualizar a aba de ultimas atualizac?es na tela de pendencias/alertas... |
| 11 | SN_PENDENCIA_ALERTA_PROX_LGN | VARCHAR2 | Y | Indica se o usuario deseja visualizar a tela de pendencias/alertas/atualizac?es somente no proxim... |
| 12 | SN_AMBULATORIO | VARCHAR2 | Y | Indica se ira filtrar os tipos de atendimento ambulatorial na lista de paciente. |
| 13 | SN_EXTERNO | VARCHAR2 | Y | Indica se ira filtrar os tipos de atendimento externo na lista de paciente. |
| 14 | SN_PRESTADOR_LOGADO | VARCHAR2 | Y | Identificador se dever?o ser exibidos somente os prestadores logados na lista de pacientes |
| 15 | SN_ULTIMAS_24_HORAS | VARCHAR2 | Y | Indica pacientes que foram atendidos nas ultimas 24 horas |
| 16 | SN_ATUALIZA_LISTA | VARCHAR2 | Y | Identifica se a lista de pacientes tera atualizac?o automatica ou n?o |
| 17 | SN_ALERTA_POPUP | VARCHAR2 | Y | Coluna que determina se o usuário decidiu não ver as mensagens do tipo POP-UP |
| 18 | CD_PRESTADOR_ATENDIMENTOS | NUMBER | Y | Indica código do prestador selecionado no campo atendimentos do prestador da lista ambulatorial |
| 19 | SN_PESQUISA_CNS_LS_TP | VARCHAR2 | Y | Indica se o CNS deve ser pesquisado na busca por palavra-chave na lista de todos os pacientes |
| 20 | SN_PESQUISA_CPF_LS_TP | VARCHAR2 | Y | Indica se o CPF deve ser pesquisado na busca por palavra-chave na lista de todos os pacientes |
| 21 | SN_PESQUISA_IDADE_LS_TP | VARCHAR2 | Y | Indica se a idade deve ser pesquisada na busca por palavra-chave na lista de todos os pacientes |
| 22 | SN_PESQUISA_MATRICULA_LS_TP | VARCHAR2 | Y | Indica se a matrícula deve ser pesquisada na busca por palavra-chave na lista de todos os pacientes |
| 23 | SN_PESQUISA_NASCIMENTO_LS_TP | VARCHAR2 | Y | Indica se a data de nascimento deve ser pesquisado na busca por palavra-chave na lista de todos o... |
| 24 | SN_PESQUISA_NOME_MAE_LS_TP | VARCHAR2 | Y | Indica se o nome da mãe deve ser pesquisado na busca por palavra-chave na lista de todos os pacie... |
| 25 | SN_PESQUISA_NOME_PACIEN_LS_TP | VARCHAR2 | Y | Indica se o nome do paciente deve ser pesquisado na busca por palavra-chave na lista de todos os ... |
| 26 | SN_PESQUISA_PRONTUARIO_LS_TP | VARCHAR2 | Y | Indica se o número de prontuário deve ser pesquisado na busca por palavra-chave na lista de todos... |

---

## DBAMV.PW_PREFERENCIA_IMP_PRONT_USU

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PREFERENCIA_IMP_PRONT_USU | NUMBER | N |  |
| 2 | CD_USUARIO | VARCHAR2 | N | Ususuario que selecionou o tipo de documento |
| 3 | CD_TIPO_DOCUMENTO | NUMBER | N | Tipo de documento selecionado |

---

## DBAMV.PW_PREMED_SESSAO_AVALIA_STATUS
> Tabela para armazenar o status da prescrição quando é feita alguma intervenção através da avaliação farmacêutica

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PREMED_SESSAO_AVALIA_STATUS | NUMBER | N | Código sequencial da tabela (PK) |
| 2 | CD_PRE_MED | NUMBER | N | Código da prescrição |
| 3 | TP_STATUS | VARCHAR2 | N | Status da avaliação farmaceutica por prescrição PAR=PARCIAL, CON=CONCLUIDA E ANA=EM ANALISE |

---

## DBAMV.PW_PREPARO_JUSTIFICATIVA
> Tabela responsável cadastrar as justificativas de medicação

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PREPARO_JUSTIFICATIVA | NUMBER | N | Código gerado por sequence |
| 2 | DS_PREPARO | VARCHAR2 | N | Descrição do preparo |
| 3 | SN_ATIVO | VARCHAR2 | N | Se está ativo ou não |
| 4 | DS_TEXTO_PADRAO | VARCHAR2 | N | Descrição completa do preparo |

---

## DBAMV.PW_PRESTADOR_ASSISTENCIAL
> Tabela que guarda os prestadores da equipe assistencial

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRESTADOR_ASSISTENCIAL | NUMBER | N | Chave primária para prestador assistencial |
| 2 | CD_EQUIPE_ASSISTENCIAL | NUMBER | N | Código para equipe assistencial |
| 3 | CD_PRESTADOR | NUMBER | N | Código para prestador assistencial |
| 4 | SN_EMAIL | VARCHAR2 | Y | SN envia e-mail no parecer |

---

## DBAMV.PW_PRESTADOR_PADRAO_CIRURGIA
> Tabela que guarda o prestador padrão para as cirurgias de uma empresa.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRESTADOR_PADRAO_CIRURGIA | NUMBER | N | Sequencial da tabela |
| 2 | CD_MULTI_EMPRESA | NUMBER | N | Código da empresa |
| 3 | CD_PRESTADOR | NUMBER | N | Código do prestador |

---

## DBAMV.PW_PRESTADOR_RECURSO
> Tabela de associac?o entre Prestador e Recurso

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRESTADOR_RECURSO | NUMBER | N | Codigo da associac?o entre Prestador e Recurso |
| 2 | CD_PRESTADOR | NUMBER | N | Prestador ao qual o recurso esta associado. |
| 3 | CD_RECURSO_CENTRAL | NUMBER | N | Recurso ao qual o prestador esta associado. |

---

## DBAMV.PW_PRESTADOR_TERMO_PADRAO
> TABELA QUE ARMAZENA OS PRESTADORES QUE TEM ACESSO A DETERMINADO TERMO DE CONSENTIMENTO.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TERMO_CONSENTIMENTO_PRESTAD | NUMBER | N | IDENTIFICADOR DO REGISTRO DOS TERMOS DE CONSENTIMENTOS DE UM PRESTADOR. |
| 2 | CD_TERMO_CONSENTIMENTO_PADRAO | NUMBER | N | IDENTIFICADOR DO TERMO DE CONSENTIMENTO PADRAO. |
| 3 | CD_PRESTADOR | NUMBER | N | IDENTIFICADOR DO PRESTADOR QUE TERA ACESSO AO TERMO. |

---

## DBAMV.PW_PREST_UNID_INT_PRONTU_VIP
> Tabela para armazenar o relacionamento prestadores e unidades de internação

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PREST_UNID_INT_PRONTU_VIP | NUMBER | N | Sequencial da central do pronturio vip |
| 2 | CD_PRESTADOR | NUMBER | N | Código prestador |
| 3 | CD_UNID_INT | NUMBER | N | Código da unidade de internação |
| 4 | CD_ATENDIMENTO | NUMBER | Y | Código do atendimento |
| 5 | TP_AUTORIZACAO | VARCHAR2 | N | O tipo de autorização do prestador. Podendo ser (DIRETA, SENHA, JUSTIFICATIVA) |
| 6 | DH_VIGENCIA_INICIAL | DATE | Y | Data/Hora de vigência inicial do prestador |
| 7 | DH_VIGENCIA_FINAL | DATE | Y | Data/Hora de vigência final do prestador |
| 8 | SN_ATIVO | VARCHAR2 | N | Se registro está ativo. Podendo ser (S, N) |

---

## DBAMV.PW_PRE_MED_AVALIACAO_STATUS
> Tabela para o status da avaliação farmaceutica. Otimiza a recuperação da informação atual da avaliação farmaceutica por prescrição, evitando que para recuperar esta informação tenha que consultar todos os itens prescritos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRE_MED_AVAL_STATUS | NUMBER | N | Código do status da avaliação chave primaria. |
| 2 | CD_PRE_MED | NUMBER | Y | Código da prescrição medica sinalizando o status dela. |
| 3 | TP_STATUS | VARCHAR2 | Y | Status da avaliação farmaceutica por prescrição PAR=PARCIAL, CON=CONCLUIDA E ANA=EM ANALISE. |
| 4 | DS_AVALIACAO | VARCHAR2 | Y | Campo da descrição da avaliação por prescrição |

---

## DBAMV.PW_PRE_MED_CICLO_HISTORICO
> Tabela com dados de prescrições, ciclos e tratamentos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRE_MED_HISTORICO | NUMBER | Y | Código da Prescrição |
| 2 | CD_PRE_MED | NUMBER | Y |  |
| 3 | NR_CICLO | NUMBER | Y | Número do Ciclo |
| 4 | CD_TRATAMENTO | NUMBER | Y | Código do Tratamento |
| 5 | TP_HISTORICO | VARCHAR2 | Y | D = Sessão de tratamento desfeita / S = Item suspenso na sessão / A = Intervenção Realizada na Av... |
| 6 | DT_HISTORICO | DATE | Y |  |

---

## DBAMV.PW_PRE_MED_HISTORICO
> Tabela de Historico da PRE_MED

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRE_MED | NUMBER | Y |  |
| 2 | CD_PRE_MED_HISTORICO | NUMBER | N |  |
| 3 | CD_ATENDIMENTO | NUMBER | Y |  |
| 4 | CD_PRESTADOR | NUMBER | Y |  |
| 5 | CD_UNID_INT | NUMBER | Y |  |
| 6 | DT_PRE_MED | DATE | Y |  |
| 7 | HR_PRE_MED | DATE | Y |  |
| 8 | DS_EVOLUCAO | CLOB | Y |  |
| 9 | CD_ID_USUARIO | NUMBER | Y |  |
| 10 | CD_SOLSAI_PRO | NUMBER | Y |  |
| 11 | SN_FECHADO | VARCHAR2 | Y |  |
| 12 | SN_RN | VARCHAR2 | Y |  |
| 13 | DT_VALIDADE | DATE | Y |  |
| 14 | SN_PRINCIPAL | VARCHAR2 | Y |  |
| 15 | SN_IMPRESSO | VARCHAR2 | Y |  |
| 16 | TP_PRE_MED | VARCHAR2 | Y |  |
| 17 | NM_USUARIO | VARCHAR2 | Y |  |
| 18 | CD_SETOR | NUMBER | Y |  |
| 19 | DT_REFERENCIA | DATE | Y |  |
| 20 | SN_TRANSCRICAO | VARCHAR2 | Y |  |
| 21 | DH_CRIACAO | DATE | Y |  |
| 22 | DH_IMPRESSAO | DATE | Y |  |
| 23 | CD_IMPORTA_REG_FAT | NUMBER | Y |  |
| 24 | CD_IMPORTA_REG_AMB | NUMBER | Y |  |
| 25 | CD_PRE_PAD | NUMBER | Y |  |
| 26 | CD_OBJETO | NUMBER | Y | Codigo do Objeto - FK de PAGU_OBJETO |
| 27 | NM_USUARIO_AUTORIZADOR | VARCHAR2 | Y | Usuario responsavel para autorização da prescrição. |
| 28 | CD_REGISTRO_CLINICO | NUMBER | Y | Especifica o RegistroClinico que foi realizado no atendimento |
| 29 | CD_PRE_MED_TRATMT | NUMBER | Y | Primary key da prescrição pai de tratamento |
| 30 | SN_ALTERA_PROTOCOLO_TRATAMENTO | VARCHAR2 | Y | Se o protocolo da prescrição de tratamento foi alterado durante a prescrição |
| 31 | SN_PRESCRICAO_DIA_SEGUINTE | VARCHAR2 | Y | Se a prescrição é uma prescrição criada para o dia seguinte |
| 32 | CD_USUARIO_CONVERSAO_PRESCRIC | VARCHAR2 | Y | Usuário que fez a conversão da prescrição do dia seguinte para uma prescrição médica |
| 33 | DH_CONVERSAO_PRESCRICAO | DATE | Y | Data da conversão da prescrição futura para prescrição médica |
| 34 | NM_PRESCRICAO | VARCHAR2 | Y | Nome da Prescrição para facil identificação no histórico |
| 35 | CD_DOCUMENTO_CLINICO | NUMBER | Y | O código do documento clínico, setado via trigger (fk) |
| 36 | CD_TRATAMENTO | NUMBER | Y | O código da sessão do tratamento |
| 37 | NR_CICLO | NUMBER | Y | Numero do ciclo de tratamento |
| 38 | NR_SESSAO | NUMBER | Y | Numero da sessão do tratamento |
| 39 | CD_PRE_MED_INTEGRA | VARCHAR2 | Y | Código de-para da prescrição médica |
| 40 | CD_TP_SOLICITACAO | NUMBER | Y | Coluna que informa qual o tipo de solicitação foi selecionado no momento da criação da prescrição... |
| 41 | SN_COPIADA | VARCHAR2 | Y | Indica se a prescrição foi copiada |
| 42 | NR_PERCENTUAL_REDUCAO_QUANTD | NUMBER | Y | Indica o percentual a ser usado na redução da quantidade dos itens |
| 43 | DS_JUSTIFICATIVA_REDUCAO_QTD | VARCHAR2 | Y | Justificativa para quando for marcado a redução da quantidade na tela de prescrição de tratamento |
| 44 | SN_CONCO_RADIOTERAPIA | VARCHAR2 | Y | Se a PRE_MED é concomitante (realizado ao mesmo tempo) com a radioterapia ou não |
| 45 | TP_AGENDAMENTO | VARCHAR2 | Y | TIPO DA SOLICITAÇÃO DE AGENDAMENTO. PODE SER QUI = QUIMIOTERAPIA, RAD = RADIOTERAPIA, FAR = FARMÁ... |
| 46 | SN_INTERROMPER_SESSAO | VARCHAR2 | Y | Informa se a sessão de tratamento foi interrompida. |
| 47 | DS_JUSTIFICATIVA_INTERROMPER | VARCHAR2 | Y | Justificativa informada ao interromper uma sessão de tratamento via tela de checagem. |
| 48 | SN_INTERCORRENCIA | VARCHAR2 | Y |  |
| 49 | DS_JUSTIFICATIVA_SESSAO | VARCHAR2 | Y |  |
| 50 | SN_MEDICAMENTO_ADMINISTRADO | VARCHAR2 | Y |  |
| 51 | DS_TOKEN_EXAMES_ONLINE | VARCHAR2 | Y | Armazenamento do token ou URL para redirecionamento para o sistema de exames online da Unimed POA |
| 52 | DS_EVOLUCAO_HTML | CLOB | Y |  |
| 53 | CD_ORIGEM | NUMBER | Y |  |
| 54 | CD_COLETA_SINAL_VITAL | NUMBER | Y |  |
| 55 | VL_PRINCIAL | NUMBER | Y |  |
| 56 | TP_HISTORICO | VARCHAR2 | Y | D = Sessão de tratamento desfeita / S = Item suspenso na sessão / A = Intervenção Realizada na Av... |
| 57 | DT_HISTORICO | DATE | Y |  |
| 58 | CD_PRESTADOR_HISTORICO | NUMBER | Y |  |

---

## DBAMV.PW_PRE_MED_REPROGRAMADA
> Tabela de reprogramações de prescrições médicas

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRE_MED_REPROGRAMADA | NUMBER | N | Chave primária da tabela de reprogramação |
| 2 | CD_PRE_MED | NUMBER | N | Código da prescrição médica original |
| 3 | DT_REPROGRAMDA | DATE | N | Data da reprogramação |
| 4 | DS_JUSTIFICATIVA | VARCHAR2 | N | Descrição da justificativa da reprogramação |
| 5 | TP_REPROGRAMADA | VARCHAR2 | N | Tipo de reprogramação: S = Sessão / C = Ciclo / T = Tratamento / R = Reprogramada |

---

## DBAMV.PW_PRE_PAD_SETOR
> Tabela que guarda os acessos de uma prescric?o padr?o por setor

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRE_PAD | NUMBER | N | Codigo da Prescric?o Padr?o referencia do acesso |
| 2 | CD_SETOR | NUMBER | N | Codigo do setor que o usuario tera acesso a prescric?o padr?o |

---

## DBAMV.PW_PROBLEMA
> tabela referente ao que existe em comum entre pw_alergia_paciente e pw_evento_adverso_paciente.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROBLEMA | NUMBER | N | código da alergia evento por paciente |
| 2 | DH_CRIACAO | TIMESTAMP(6) | N | data e hora da criação do registro |
| 3 | DH_MODIFICACAO | TIMESTAMP(6) | N | data e hora da modificação do registro |
| 4 | DS_JUSTIFICATIVA_INATIVACAO | VARCHAR2 | Y | justificativa do inativacao |
| 5 | SN_ATIVO | VARCHAR2 | N | S(Sim) ou N(não) informando se o registro está ativo |
| 6 | CD_PACIENTE | NUMBER | N | Codigo do paciente |

---

## DBAMV.PW_PROBLEMA_PACIENTE
> Tabela para guardar os problemas do paciente

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROBLEMA | NUMBER | N | Código da Sequence da tabela |
| 2 | DS_PROBLEMA | VARCHAR2 | N | Descrição do problema |
| 3 | CD_CID | VARCHAR2 | Y | Código do CID da doença |
| 4 | CD_PACIENTE | NUMBER | N | Código do Paciente |
| 5 | DH_CRIACAO | DATE | N | Data/hora da criacao do registro |
| 6 | DH_INICIO | DATE | N | Data/hora de iniciao da ocorrência do registro |
| 7 | DH_FIM | DATE | Y | Data/hora da finalização da ocorrência do registro |
| 8 | CD_USUARIO_CRIACAO | VARCHAR2 | N | Codigo do usuario que criou o registro |
| 9 | CD_USUARIO_INATV | VARCHAR2 | Y | Codigo do usuario que inativou o registro |
| 10 | DS_JUSTIFICATIVA_INATV | VARCHAR2 | Y | Descricao da justificativa da inativação do registro |
| 11 | DS_COMENTARIO | VARCHAR2 | Y | Observação para inserção do problema |
| 12 | CD_DOCUMENTO_CLINICO | NUMBER | N | Código do documento clínico |
| 13 | SN_ATIVO | VARCHAR2 | N | Validacao de registro ativo |
| 14 | CD_SNOMEDCT | NUMBER | Y |  |
| 15 | CD_CIAP | NUMBER | Y | Código do CIAP |

---

## DBAMV.PW_PROBLEMA_VER
> tabela referente ao que existe em comum entre pw_alergia_paciente e pw_evento_adverso_paciente.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROBLEMA_VER | NUMBER | N | CÃ³digo da versÃ£o da alergia ou evento adverso |
| 2 | CD_PROBLEMA | NUMBER | N | CÃ³digo da alergia ou evento adverso |
| 3 | CD_DOCUMENTO_CLINICO | NUMBER | N | CÃ³digo do documento clÃ­nico da versÃ£o |
| 4 | DH_CRIACAO | TIMESTAMP(6) | N | Data e hora de criaÃ§Ã£o do registro |
| 5 | DH_MODIFICACAO | TIMESTAMP(6) | N | Data e hora da Ãºltima modificaÃ§Ã£o do registro |
| 6 | DS_JUSTIFICATIVA_INATIVACAO | VARCHAR2 | Y | justificativa do inativacao |
| 7 | SN_ATIVO | VARCHAR2 | N | S(Sim) ou N(NÃ£o) informando se o registro estÃ¡ ativo |
| 8 | CD_PACIENTE | NUMBER | N | Codigo do paciente |

---

## DBAMV.PW_PROCEDIMENTO_FICHA
> Armazena as informac?es dos procedimentos inseridos na ficha anestesica

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROCEDIMENTO_FICHA | NUMBER | N | Indica o codigo dos registros da tabela de informac?es de procedimentos(pk). |
| 2 | CD_FICHA_ANESTESICA | NUMBER | Y | Codigo da tabela principal referente a ficha anestesica(fk). |
| 3 | CD_CIRURGIA | NUMBER | Y | Codigo da tabela principal referente ao procedimento adicionado a ficha anestesica(fk). |

---

## DBAMV.PW_PROGRAMA_SAUDE_ATN
> Tabela que guarda os programas de saúde

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROGRAMA_SAUDE | NUMBER | N | Sequencial da tabela |
| 2 | NM_PROGRAMA_SAUDE | VARCHAR2 | N | Nome do programa de saúde |
| 3 | DS_PROGRAMA_SAUDE | VARCHAR2 | Y | Descrição do programa de saúde |
| 4 | SN_ATIVO | VARCHAR2 | Y | Informa se o programa de saúde está ativo ou não |
| 5 | TP_GENERO_PROGRAMA_SAUDE | VARCHAR2 | Y | Informa o tipo do gênero do programa de saúde - F- Feminino, G - Ignorado, I - Indefinido, M - Ma... |
| 6 | CD_GRUPO_CRITERIO_ENTRADA | NUMBER | Y | Código do grupo do critério de entrada |
| 7 | CD_GRUPO_CRITERIO_SAIDA | NUMBER | Y | Código do grupo do critério de saída |
| 8 | CD_GRUPO_CFRITERIO_ENTRADA | NUMBER | Y | Código do grupo de critério de entrada |
| 9 | CD_GRUPO_CFRITERIO_SAIDA | NUMBER | Y | Código do grupo de critério de saída |

---

## DBAMV.PW_PROGRAMA_SAUDE_DICAS_ATP
> Tabela de Cadastro de dicas de saude do programa de saúde

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROGRAMA_SAUDE_DICAS | NUMBER | N | Sequencial da tabela |
| 2 | CD_PROGRAMA_SAUDE | NUMBER | N | Código do programa de saúde |
| 3 | CD_DICAS_SAUDE | NUMBER | N | Código da dica de saúde |

---

## DBAMV.PW_PROGRAMA_SAUDE_PACIENTE_ATP
> Tabela que armazena o programa de saï¿½de do paciente.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROGRAMA_SAUDE_PACIENTE | NUMBER | N | Chave primï¿½ria |
| 2 | CD_PACIENTE | NUMBER | N | Paciente, que participa do programa. |
| 3 | CD_PROGRAMA_SAUDE | NUMBER | N | Programa de saï¿½de. |
| 4 | DS_JUSTIFICATIVA | VARCHAR2 | Y | Justificativa da alteraï¿½ï¿½o do status do programa de saï¿½de. |
| 5 | CD_USUARIO | VARCHAR2 | N | Usuï¿½rio que incluido o paciente no programa. |
| 6 | SN_ATIVO | VARCHAR2 | N | Indica se programa estï¿½ ativo. |
| 7 | DT_INCLUSAO | TIMESTAMP(6) | Y | Data da inclusï¿½o do paciente no programa de saï¿½de. |
| 8 | DT_DESATIVADO | TIMESTAMP(6) | Y | Data que o programa de saï¿½de foi desativado. |
| 9 | NM_RISCO | VARCHAR2 | Y | risco, essa informação será salva quando o programa de saúde for desativado. |

---

## DBAMV.PW_PROGRAMA_SAUDE_PRE_PAD_ATP
> Tabela que guarda as prescrições padrão de programa de saude

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROGRAMA_SAUDE_PRE_PAD_ATP | NUMBER | N | Sequencial da tabela |
| 2 | CD_PROGRAMA_SAUDE | NUMBER | N | Código do programa de saude |
| 3 | CD_PRE_PAD | NUMBER | N | Código da prescrição padrão |

---

## DBAMV.PW_PROGRAMA_SAUDE_PROTOC_ATN
> Tabela de Cadastro de Protocolo de um Programa de Saúde

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROTOCOLO | NUMBER | N | Código do protocolo associado ao programa de saúde |
| 2 | CD_PROGRAMA_SAUDE | NUMBER | N | Código do programa de saúde |
| 3 | DS_NOME_PROTOCOLO | VARCHAR2 | N | Nome do protocolo associado ao programa de saúde |
| 4 | LO_PROTOCOLO | BLOB | N | Arquivo do protocolo associado ao programa de saúde |
| 5 | TP_EXTENSAO | VARCHAR2 | N | Extensão do arquivo |

---

## DBAMV.PW_PROGRAMA_SAUDE_QUEST_ATP
> Tabela que guarda os questionarios de programa de saude

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROGRAMA_SAUDE_QUEST_ATP | NUMBER | N | Sequencial da tabela |
| 2 | CD_PROGRAMA_SAUDE | NUMBER | N | Código do programa de saude |
| 3 | CD_OBJETO | NUMBER | N | Código do objeto de QUEATP |

---

## DBAMV.PW_PROG_SAUD_PAC_IT_PRESC_ATP
> Tabela que armazena os items de prescrição solicitadas para o paciente.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROG_SAUD_PAC_IT_PRESC | NUMBER | N | Chave primária |
| 2 | CD_TIP_PRESC | NUMBER | N | Tipo prescrição. |
| 3 | CD_ITPRE_PAD | NUMBER | Y | Item da prescrição padrão |
| 4 | DT_INCLUSAO | TIMESTAMP(6) | Y | Data da inclusão. |
| 5 | DT_ULTIMA_SOLICITACAO | TIMESTAMP(6) | Y | Data da última solicitação. |
| 6 | CD_PLANO_CUIDADO | NUMBER | Y | Plano de cuidado. |
| 7 | NR_QUANTIDADE | NUMBER | Y | Quantidade do item que deve ser ministrado. |
| 8 | CD_TIP_FRE | NUMBER | Y | Tipo de frequência. |
| 9 | NR_DIAS_DURACAO | NUMBER | Y | Duração, em dias. |
| 10 | NR_HORAS_DURACAO | NUMBER | Y | Duração, em horas. |
| 11 | NR_MINUTOS_DURACAO | NUMBER | Y | Duração, em minutos. |
| 12 | CD_FOR_APL | VARCHAR2 | Y | Forma de aplicação. |
| 13 | DT_INICIO_PROCEDIMENTO | TIMESTAMP(6) | Y | Data do inicio do procedimento. |
| 14 | SN_NOTIFICAR_PENDENCIA | VARCHAR2 | N | Indica se deve gerar notificação de pendencia. |
| 15 | SN_NOTIFICAR_MOBILE | VARCHAR2 | N | Indica se deve gerar notificação mobile para o paciente. |
| 16 | DT_ENVIO_PACIENTE | TIMESTAMP(6) | Y | Data do envio para o paciente. |
| 17 | SN_CRONICO | VARCHAR2 | Y | Sinaliza se é medicamento crônico. |
| 18 | SN_CONTINUO | VARCHAR2 | Y | Sinaliza se o item é continuo. |
| 19 | QT_INFUSAO | NUMBER | Y | Quantidade da infusão. |
| 20 | CD_UN_INFUSAO | NUMBER | Y | Unidade da infusão. |
| 21 | QT_SOLUCAO | NUMBER | Y | Quantidade da solução. |
| 22 | CD_UN_SOLUCAO | NUMBER | Y | Unidade da solução. |
| 23 | CD_DISPOSITIVO | NUMBER | Y | Dispositivo usado. |
| 24 | QT_DOSE | NUMBER | Y | Quantidade da dose. |
| 25 | QT_DOSE_PADRAO | NUMBER | Y | Quantidade da dose padrão. |
| 26 | CD_MULTI_EMPRESA | NUMBER | Y | Empresa. |
| 27 | CD_SETOR | NUMBER | Y | Setor. |
| 28 | CD_PRESTADOR | NUMBER | Y | Prestador. |
| 29 | DS_OBSERVACAO | VARCHAR2 | Y | Observação. |
| 30 | CD_OBSERVACAO_PREDEFINIDA | NUMBER | Y | Observação predefinida. |
| 31 | TP_ADMINISTRACAO | VARCHAR2 | Y | Tipo da administraï¿½ï¿½o: SE_NESSECERIO, URGENTE, A_CRITERIO_MEDICO. |
| 32 | CD_UNIDADE_PRODUTO | NUMBER | Y | Unidade do produto prescrito. |
| 33 | CD_LOCAL_ANATOMICO_COLETA | NUMBER | Y | Local anatômico da coleta. |

---

## DBAMV.PW_PRONTUARIO
> Armazena as informac?es da impress?o do prontuario do paciente.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRONTUARIO | NUMBER | N | Indica o codigo dos registros da tabela de a impress?o do prontuario do paciente(pk). |
| 2 | TP_IMPRESSAO | VARCHAR2 | Y | Indica o tipo de impress?o que sera realizada. Por periodo - PER ou por Atendimento - ATN, Todos ... |
| 3 | DH_AGENDADO | DATE | Y | Data e hora que foi agendado para ser gerado o prontuario. |
| 4 | CD_ATENDIMENTO | NUMBER | Y | Codigo do atendimento que sera impresso o prontuario. |
| 5 | CD_PACIENTE | NUMBER | Y |  |
| 6 | DH_INICIO_IMPRESSAO | DATE | Y | Data e hora do periodo a qual a impress?o sera gerada - informac?o do prontuario a partir desta d... |
| 7 | DH_FIM_IMPRESSAO | DATE | Y | Data e hora do periodo a qual a impress?o sera gerada - informac?o do prontuario ate esta data. |
| 8 | CD_PRESTADOR_AUTORIZA | NUMBER | Y | Codigo do prestador que esta autorizando a impress?o do prontuario. |
| 9 | TP_STATUS | VARCHAR2 | Y | Status da impress?o do prontuario. Agendado - AGE, Gerado - GER, Impresso - IMP |
| 10 | DS_OBSERVACAO | VARCHAR2 | Y | Descric?o de observac?es sobre a impress?o do prontuario do paciente. |
| 11 | LO_DOCUMENTO_PRONTUARIO | BLOB | Y | Armazena o prontuario impresso do paciente. |
| 12 | DH_IMPRESSAO | DATE | Y | Data da impress?o do prontuario. |
| 13 | SN_FILTRAR_CANCELADOS | VARCHAR2 | Y | Indica se no ultimo filtro usado na tela, foi selecionada a opc?o de filtrar ou n?o os documentos... |
| 14 | CD_DOCUMENTO_CLINICO | NUMBER | Y | Codigo do documento clinico. |
| 15 | NM_AUTORIZADOR | VARCHAR2 | Y | Nome da pessoa autorizadora da impress?o do prontuario, caso esta pessoa n?o esteja cadastrada co... |
| 16 | DH_CRIACAO | DATE | Y | Data de criac?o do registro |
| 17 | LO_DOC_DECLARACAO_RECEBIMENTO | BLOB | Y |  |
| 18 | TP_ENTREGA | VARCHAR2 | Y | Tipo de Entrega do prontuário (I - Impresso, E - Email, P - Pendrive, O - Outros) |
| 19 | CD_RECEPTOR_PRONTUARIO | NUMBER | Y | Dados do receptor do prontuário |
| 20 | TP_STATUS_EXECUCAO | CHAR | Y |  |
| 21 | SN_PARTICIONADO | VARCHAR2 | Y | Indica se o relatario foi particionado |

---

## DBAMV.PW_PRONTUARIO_DISTRIBUIDO
> Tabela responsável por configurar a funcionalidade de prontuários distribuidos do PEP2

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRONTUARIO_DISTRIBUIDO | NUMBER | N | Código identificador do registro (PK) |
| 2 | SN_ATIVO | VARCHAR2 | N | Indica se a funcionalidade está ligada |
| 3 | QT_TEMPO_JOB_SINCRONIZAR | NUMBER | N | Define o intervalo em segundos que a job de sincronização dos prontuários irá ser executada |
| 4 | QT_TEMPO_JOB_LIMPEZA | NUMBER | N | Define o intervalo em segundos que a job de limpeza dos prontuários irá ser executada |
| 5 | QT_TEMPO_JOB_CONFIGURACAO | NUMBER | N | Define o intervalo em segundos que a job que verifica se houve mudança nas configurações irá ser ... |
| 6 | QT_TENTATIVA_CRIACAO | NUMBER | N | Define a quantidade de vezes que será tentada a criação de um documento que ocorreu erro |
| 7 | QT_DIAS_ULTIMOS_ATENDIMENTOS | NUMBER | N | Define a quantidade dias para tras que será levada em consideração para pegar os atendimentos que... |
| 8 | DH_INICIO_VERIFICACAO | DATE | N | Data que será levada em consideração para saber a partir de quando serão lidos os documentos clín... |
| 9 | DS_SENHA_ARQUIVO | VARCHAR2 | Y | Senha que sera usada para proteger os arquivos impressos. Caso esteja vazio, os arquivos não terã... |

---

## DBAMV.PW_PRONTUARIO_DISTR_LOG
> Tabela responsável por quardar os logs da funcionalidade de prontuários distribuidos do PEP2 por objeto

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRONTUARIO_DISTR_LOG | NUMBER | N | Código identificador do registro (PK) |
| 2 | CD_DOCUMENTO_CLINICO | NUMBER | N | Código do documento clínico (FK) |
| 3 | CD_SETOR | NUMBER | Y | Código do Setor (FK) |
| 4 | DS_PATH_ARQUIVO | VARCHAR2 | Y | Caminho onde o arquivo se encontra |
| 5 | TP_STATUS | VARCHAR2 | N | Status do processamento do arquivo |
| 6 | DH_ULTIMO_EVENTO | DATE | N | Data do ultimo log de evento |
| 7 | NR_TENTATIVA | NUMBER | Y | Número de tentativas de criação do arquivo até o momento |

---

## DBAMV.PW_PRONTUARIO_DISTR_LOG_EVENTO
> Tabela responsável por quardar os logs da funcionalidade de prontuários distribuidos do PEP2 por objeto

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRONTUARIO_DISTR_LOG_EVENTO | NUMBER | N | Código identificador do registro (PK) |
| 2 | CD_PRONTUARIO_DISTR_LOG | NUMBER | N | Código do Log (FK) |
| 3 | CD_SETOR | NUMBER | Y | Código do Setor (FK) |
| 4 | DH_EVENTO | DATE | N | Data de criação do log de evento |
| 5 | TP_STATUS | VARCHAR2 | Y | Status do processamento do arquivo |
| 6 | DS_DESCRICAO | VARCHAR2 | Y | Descrição do evento que gerou o log |
| 7 | LO_TRACE | CLOB | Y | Coluna que guarda o trace de erro que foi retornado no momento da geração do arquivo |

---

## DBAMV.PW_PRONTUARIO_DISTR_OBJETO
> Tabela responsável por configurar a funcionalidade de prontuários distribuidos do PEP2 por objeto

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRONTUARIO_DISTR_OBJETO | NUMBER | N | Código identificador do registro (PK) |
| 2 | CD_PRONTUARIO_DISTR_TIP_DOC | NUMBER | N | Código da configuração do prontuario distribuido por tipo de documento (FK) |
| 3 | SN_ATIVO | VARCHAR2 | N | Indica se a funcionalidade está ativa para o setor |
| 4 | CD_OBJETO | NUMBER | N | Código do objeto que está sendo configurado (FK) |

---

## DBAMV.PW_PRONTUARIO_DISTR_SETOR
> Tabela responsável por configurar a funcionalidade de prontuários distribuidos do PEP2 por setor

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRONTUARIO_DISTR_SETOR | NUMBER | N | Código identificador do registro (PK) |
| 2 | CD_PRONTUARIO_DISTRIBUIDO | NUMBER | N | Código da configuração do prontuario distribuido (FK) |
| 3 | DS_PATH_ARQUIVO | VARCHAR2 | Y | Caminho configurado para guardar os arquivos para o setor |
| 4 | SN_ATIVO | VARCHAR2 | N | Indica se a funcionalidade está ativa para o setor |
| 5 | CD_SETOR | NUMBER | N | Código do setor que está sendo configurado (FK) |

---

## DBAMV.PW_PRONTUARIO_DISTR_TIP_DOC
> Tabela responsável por configurar a funcionalidade de prontuários distribuidos do PEP2 por tipo de documento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRONTUARIO_DISTR_TIP_DOC | NUMBER | N | Código identificador do registro (PK) |
| 2 | CD_PRONTUARIO_DISTR_SETOR | NUMBER | N | Código da configuração do prontuario distribuido por setor (FK) |
| 3 | SN_ATIVO | VARCHAR2 | N | Indica se a funcionalidade está ativa para o setor |
| 4 | CD_TIPO_DOCUMENTO | NUMBER | N | Código do tipo de documento que está sendo configurado (FK) |

---

## DBAMV.PW_PRONTUARIO_IMPRESSAO_TEMP
> Tabela responsável por guardar as configurações dos sistemas integrados ao PEP2

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRONTUARIO_IMPRESSAO_TEMP | NUMBER | N | Código sequêncial da tabela (PK) |
| 2 | CD_PRONTUARIO | NUMBER | N | Código da impressão de prontuario (FK) |
| 3 | DH_INICIO_IMPRESSAO | DATE | Y | Data de início da impressão |
| 4 | DH_PARTE_IMPRESSAO | DATE | Y | Data da impressao da parte do arquivo total que vai ser gerado pela tela |
| 5 | CD_USUARIO_IMPRESSAO | VARCHAR2 | Y | Código do usuário que está imprimindo o prontuário (FK) |
| 6 | LO_PARTE_IMPRESSAO | BLOB | Y | Coluna que guarda a parte do documento que está sendo impresso |
| 7 | NR_ORDEM | NUMBER | Y |  |
| 8 | NR_PAGINA | NUMBER | Y | Indica a quantidade de paginas |

---

## DBAMV.PW_PRONTUARIO_PARTICOES
> Tabela para armazenar as particoes de documentos do prontuario.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRONTUARIO_PARTICOES | NUMBER | N | Codigo da particao do prontuario, chave primaria |
| 2 | LO_DOCUMENTO_PRONTUARIO | BLOB | Y | Documento do prontuario em formato BLOB |
| 3 | CD_PRONTUARIO | NUMBER | N | Codigo do prontuario, chave estrangeira para PW_PRONTUARIO |
| 4 | NR_SEQUENCIA | NUMBER | Y | Numero de sequencia da particao do prontuario |

---

## DBAMV.PW_QRTZ_CALENDARIOS
> Tabela utilizada pelo Quartz para controle do calendário

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NM_AGENDAMENTO | VARCHAR2 | N |  |
| 2 | NM_CALENDARIO | VARCHAR2 | N |  |
| 3 | LO_CALENDARARIO | BLOB | N |  |

---

## DBAMV.PW_QRTZ_DETALHES_TRABALHO
> Tabela utilizada pelo Quartz para controle de job

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NM_AGENDAMENTO | VARCHAR2 | N |  |
| 2 | NM_TRABALHO | VARCHAR2 | N |  |
| 3 | DS_GRUPO_TRABALHO | VARCHAR2 | N |  |
| 4 | DS_DETALHES_TRABALHO | VARCHAR2 | Y |  |
| 5 | NM_CLASSE | VARCHAR2 | N |  |
| 6 | DS_DURAVEL | VARCHAR2 | N |  |
| 7 | DS_NAO_CONCORRENTE | VARCHAR2 | N |  |
| 8 | DS_DADOS_ATUALIZADOS | VARCHAR2 | N |  |
| 9 | DS_PEDIDO_RECUPERACAO | VARCHAR2 | N |  |
| 10 | LO_DADOS | BLOB | Y |  |

---

## DBAMV.PW_QRTZ_ESTADO_AGENDADOR
> Tabela utilizada pelo Quartz para controle do estado do agendador

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NM_AGENDAMENTO | VARCHAR2 | N |  |
| 2 | NM_INSTANCIA | VARCHAR2 | N |  |
| 3 | NR_ULTIMA_VERICACAO | NUMBER | N |  |
| 4 | NR_INTERVALO_VERIFICACAO | NUMBER | N |  |

---

## DBAMV.PW_QRTZ_GATILHOS
> Tabela utilizada pelo Quartz para controle de triggers

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NM_AGENDAMENTO | VARCHAR2 | N |  |
| 2 | NM_GATILHO | VARCHAR2 | N |  |
| 3 | DS_GRUPO_GATILHO | VARCHAR2 | N |  |
| 4 | NM_TRABALHO | VARCHAR2 | N |  |
| 5 | DS_GRUPO_TRABALHO | VARCHAR2 | N |  |
| 6 | DS_GATILHOS | VARCHAR2 | Y |  |
| 7 | NR_PROXIMO_DISPARO | NUMBER | Y |  |
| 8 | NR_DISPARO_ANTERIOR | NUMBER | Y |  |
| 9 | NR_PRIORIDADE | NUMBER | Y |  |
| 10 | DS_ESTADO_GATILHO | VARCHAR2 | N |  |
| 11 | DS_TIPO_GATILHO | VARCHAR2 | N |  |
| 12 | NR_HORA_INICIO | NUMBER | N |  |
| 13 | NR_HORA_FIM | NUMBER | Y |  |
| 14 | NM_CALENDARIO | VARCHAR2 | Y |  |
| 15 | VL_FALHA | NUMBER | Y |  |
| 16 | LO_DADOS | BLOB | Y |  |

---

## DBAMV.PW_QRTZ_GATILHOS_AGENDADOS
> Tabela utilizada pelo Quartz para controle de triggers agendadas

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NM_AGENDAMENTO | VARCHAR2 | N |  |
| 2 | NM_GATILHO | VARCHAR2 | N |  |
| 3 | DS_GRUPO_GATILHO | VARCHAR2 | N |  |
| 4 | DS_EXPRESSAO_CRON | VARCHAR2 | N |  |
| 5 | DS_TIME_ZONE | VARCHAR2 | Y |  |

---

## DBAMV.PW_QRTZ_GATILHOS_DISPARADOS
> Tabela utilizada pelo Quartz para controle dos gatilhos disparados

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NM_AGENDAMENTO | VARCHAR2 | N |  |
| 2 | DS_ENTRADA | VARCHAR2 | N |  |
| 3 | NM_GATILHO | VARCHAR2 | N |  |
| 4 | DS_GRUPO_GATILHO | VARCHAR2 | N |  |
| 5 | NM_INSTANCIA | VARCHAR2 | N |  |
| 6 | NR_TEMPO_DISPARO | NUMBER | N |  |
| 7 | NR_TEMPO_AGENDADO | NUMBER | N |  |
| 8 | NR_PRIORIDADE | NUMBER | N |  |
| 9 | DS_ESTADO | VARCHAR2 | N |  |
| 10 | NM_TRABALHO | VARCHAR2 | Y |  |
| 11 | DS_GRUPO_TRABALHO | VARCHAR2 | Y |  |
| 12 | DS_NAO_CONCORRENTE | VARCHAR2 | Y |  |
| 13 | DS_PEDIDO_RECUPERACAO | VARCHAR2 | Y |  |

---

## DBAMV.PW_QRTZ_GATILHOS_PAUSADOS
> Tabela utilizada pelo Quartz para controle dos gatilhos pausados

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NM_AGENDAMENTO | VARCHAR2 | N |  |
| 2 | DS_GRUPO_GATILHO | VARCHAR2 | N |  |

---

## DBAMV.PW_QRTZ_GATILHOS_SIMPLES
> Tabela utilizada pelo Quartz para controle de triggers

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NM_AGENDAMENTO | VARCHAR2 | N |  |
| 2 | NM_GATILHO | VARCHAR2 | N |  |
| 3 | DS_GRUPO_GATILHO | VARCHAR2 | N |  |
| 4 | NR_CONTAGEM_REPICAO | NUMBER | N |  |
| 5 | NR_INTERVALO_REPETICAO | NUMBER | N |  |
| 6 | NR_VEZES_ACIONADO | NUMBER | N |  |

---

## DBAMV.PW_QRTZ_GATILHOS_TEXTOS
> Tabela utilizada pelo Quartz para controle dos dados das triggers

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NM_AGENDAMENTO | VARCHAR2 | N |  |
| 2 | NM_GATILHO | VARCHAR2 | N |  |
| 3 | DS_GRUPO_GATILHO | VARCHAR2 | N |  |
| 4 | LO_DATA | BLOB | Y |  |

---

## DBAMV.PW_QRTZ_TRAVAS
> Tabela utilizada pelo Quartz para controle das travas

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NM_AGENDAMENTO | VARCHAR2 | N |  |
| 2 | NM_TRAVA | VARCHAR2 | N |  |

---

## DBAMV.PW_QUESTIONARIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_QUESTIONARIO | NUMBER | N |  |
| 2 | CD_GRUPO_QUEST | NUMBER | Y |  |
| 3 | CD_CONFIG_QUESTIONARIO | NUMBER | Y |  |
| 4 | DS_CONFIG_QUESTIONARIO | VARCHAR2 | Y |  |
| 5 | NR_ORDEM | NUMBER | Y |  |
| 6 | SN_ATIVO | VARCHAR2 | Y |  |
| 7 | VL_SOMATORIO | NUMBER | Y |  |

---

## DBAMV.PW_REACAO_TRATAMENTO
> Tabela que armazena as reações ao tratamento.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REACAO_TRATAMENTO | NUMBER | N | Chave primária |
| 2 | NR_PROGRESSO | NUMBER | N | Número do progresso |
| 3 | TIPO_REACAO | VARCHAR2 | N | Tipo da reação: Progressão, Remissão, Recaída, Recidiva, Informar Óbito |
| 4 | DH_AVALIACAO | TIMESTAMP(6) | N | Data da avaliação |
| 5 | CD_ACPMT_PACIENTE_ONCO | NUMBER | N | Acompanhamento oncológico |
| 6 | CD_PRESTADOR | NUMBER | N | Prestador que inseriu a informação |
| 7 | DH_REGISTRO | TIMESTAMP(6) | Y | Data do registro da informação |

---

## DBAMV.PW_RECEITA
> Tabela para Receita

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_RECEITA | NUMBER | N | Codigo Receita |
| 2 | DT_HORA_RECEITA_MEDICA | DATE | Y | Data Hora Receita |
| 3 | CD_ATENDIMENTO | NUMBER | N | Codigo Atendimento |
| 4 | CD_PRESTADOR | NUMBER | N | Codigo Prestador |
| 5 | SN_FINALIZADO | VARCHAR2 | N | Indica se a receita esta finalizada. |
| 6 | DS_ORIENTACOES | VARCHAR2 | Y | Contem recomendac?es, orientac?es e observac?es que o medico queira colocar na receita do paciente |
| 7 | CD_REGISTRO_CLINICO | NUMBER | Y | Especifica o RegistroClinico que foi realizado no atendimento |
| 8 | CD_DOCUMENTO_CLINICO | NUMBER | Y | O c??digo do documento cl?-nico, setado via trigger (fk) |

---

## DBAMV.PW_RECEITA_PADRAO
> Tabela para Receita Padr?o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_RECEITA_PADRAO | NUMBER | N | Codigo Receita Padr?o |
| 2 | DS_RECEITA_PADRAO | VARCHAR2 | N | Descric?o Receita Padr?o |
| 3 | SN_ATIVO | VARCHAR2 | Y | Ativo Receita Padr?o |

---

## DBAMV.PW_RECEPTOR_PRONTUARIO
> Dados do responsável pelo recebimento do prontuário

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_RECEPTOR_PRONTUARIO | NUMBER | N | Código do registro de recebimento do prontuário (PK) |
| 2 | CD_TIP_PAREN | NUMBER | Y | Código do grau de parentesco |
| 3 | NM_RECEPTOR | VARCHAR2 | Y | Nome do responsável |
| 4 | DS_ENDERECO | VARCHAR2 | Y | Endereço do responsável |
| 5 | NR_TELEFONE | VARCHAR2 | Y | Número de telefone do responsável |
| 6 | DS_NACIONALIDADE | VARCHAR2 | Y | Nacionalidade do responsável |
| 7 | DS_PROFISSAO | VARCHAR2 | Y | Profissão do responsável |
| 8 | NR_IDENTIDADE | VARCHAR2 | Y | Identidade do responsável |
| 9 | DT_EXPEDICAO | DATE | Y | Data de expedição da identidade |
| 10 | NR_PASSAPORTE | VARCHAR2 | Y | Número do passaporte do responsável |
| 11 | NR_CPF | VARCHAR2 | Y | Numero do CPF do responsável |

---

## DBAMV.PW_REGISTRO_ALTA
> Armazena as informac?es da alta do paciente.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REGISTRO_ALTA | NUMBER | N | Indica o codigo dos registros da tabela de registro de alta(pk). |
| 2 | DT_REGISTRO_ALTA | DATE | Y | Indica a data da alta. |
| 3 | CD_ATENDIMENTO | NUMBER | Y | Codigo do atendimento da alta. |
| 4 | CD_PRESTADOR | NUMBER | Y | Codigo do prestador da alta. |
| 5 | CD_DOCUMENTO_CLINICO | NUMBER | Y | Codigo do documento clinico (FK). |
| 6 | CD_USUARIO | VARCHAR2 | Y | Codigo do usuario da alta. |
| 7 | TP_SITUACAO | VARCHAR2 | Y | Tipo da situal?o da alta, se ela esta Fechada ou Cancelada. |
| 8 | DS_OBS_ALTA | VARCHAR2 | Y |  |
| 9 | CD_ATENDIMENTO_PAI | NUMBER | Y |  |
| 10 | CD_MOT_ALT | NUMBER | Y |  |
| 11 | DT_ALTA_MEDICA | DATE | Y |  |
| 12 | HR_ALTA_MEDICA | DATE | Y |  |
| 13 | DT_PREVISTA_ALTA | DATE | Y |  |
| 14 | CD_SETOR_OBITO | NUMBER | Y |  |
| 15 | NR_DECLARACAO_OBITO | VARCHAR2 | Y |  |
| 16 | CD_CID_OBITO | VARCHAR2 | Y |  |
| 17 | NM_USUARIO_ALTA_MEDICA | VARCHAR2 | Y |  |
| 18 | CD_PRESTADOR_EM_ATENDIMENTO | VARCHAR2 | Y |  |
| 19 | CD_PRO_INT | VARCHAR2 | Y |  |
| 20 | CD_PRO_INT_PROCEDIMENTO_ENTRAD | VARCHAR2 | Y |  |
| 21 | CD_PROCEDIMENTO_ALTA | VARCHAR2 | Y |  |
| 22 | CD_SSM_CIH | VARCHAR2 | Y |  |
| 23 | CD_CONVENIO | NUMBER | Y |  |
| 24 | CD_CID | VARCHAR2 | Y |  |
| 25 | DS_PROGRAMA_ALTA | VARCHAR2 | Y |  |
| 26 | DT_PROGRAMA_ALTA | DATE | Y |  |
| 27 | NM_USUARIO_PROG_ALTA | VARCHAR2 | Y |  |
| 28 | SN_OBITO | VARCHAR2 | Y |  |
| 29 | SN_BUSCA_ATIVA | VARCHAR2 | N |  |
| 30 | TP_BUSCA_ATIVA | VARCHAR2 | N |  |
| 31 | DH_ALTA_MEDICA_LANCADA | DATE | Y |  |
| 32 | CD_DOCUMENTO_CLINICO_DOC | NUMBER | Y |  |
| 33 | CD_DOCUMENTO_CLINICO_MOT_ALT | NUMBER | Y |  |
| 34 | CD_DOCUMENTO_CLINICO_ESTADIAM | NUMBER | Y | Indica o código do documento clínico do estadiamento criado junto com o finalização da alta |
| 35 | TP_SITUACAO_DIAGNOSTICO | VARCHAR2 | Y | SITUACAO DO DIAGNOSTICO. TIPOS: HIPOTESE, CONFIRMADO, REPETIDO |
| 36 | CD_SERVICO | NUMBER | Y | Chave estrangeira que indica o serviço do atendimento ambulatorial. |
| 37 | CD_SER_DIS | NUMBER | Y | Chave estrangeira que indica o serviço do atendimento urgência e emergência. |
| 38 | TP_MODALIDADE_ASSISTENCIAL | VARCHAR2 | Y | Indica qual é a modalidade assistencial e se é DOMICILIAR, HOSPITALAR, INTERMEDIARIA ou PSICOSSOC... |
| 39 | TP_ESTADO_RESOLUCAO | VARCHAR2 | Y | Indica qual é o estado de resolucao e se está RESOLVIDO, RESOLVENDO, NAO RESOLVIDO ou INDETERMINADO |
| 40 | DS_JUSTIFICATIVA_ALTA | VARCHAR2 | Y |  |

---

## DBAMV.PW_REGISTRO_AUDITORIA
> Tabela que armazena os registros de auditoria conforme solicitado pela versi??o 3.3 do Manual de Certificai??i??o da SBIS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REGISTRO_AUDITORIA | NUMBER | N | Identificador do registro de auditoria |
| 2 | DH_REGISTRO_AUDITORIA | DATE | N | Data e hora da ocorri??ncia do registro de auditoria |
| 3 | TP_REGISTRO_AUDITORIA | VARCHAR2 | N | Tipo da ocorrência do registro de auditoria. AUT - AUTORIZACAO, ALT - ALTERACAO, EXC - EXCLUSAO, ... |
| 4 | NM_LOCAL_REGISTRO_AUDITORIA | VARCHAR2 | N | Nome da mi??quina utilizada pelo usui??rio que gerou a ocorri??ncia do registro de auditoria |
| 5 | NM_USUARIO_REGISTRO_AUDITORIA | VARCHAR2 | N | Codigo do usuario que gerou a ocorrencia do registro de auditoria |
| 6 | DS_REGISTRO_AUDITORIA | VARCHAR2 | N | Nome da entidade, ou o tipo de autenticai??i??o, que foi auditada |
| 7 | VL_REGISTRO_AUDITORIA | VARCHAR2 | N | Identificador da entidade, ou da autenticai??i??o, que foi auditada |
| 8 | NM_PAPEL_USUARIO | VARCHAR2 | Y | Papel ou perfil do usuario logado |
| 9 | CD_DOCUMENTO_CLINICO | NUMBER | Y | Código do documento clínico do registro |
| 10 | CD_ATENDIMENTO | NUMBER | Y | Código do atendimento do registro |

---

## DBAMV.PW_REGISTRO_OPINIAO_PACIENTE
> Tabela que armazena os registros de opini?es dos pacientes durante os atendimentos.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REGISTRO_OPINIAO_PACIENTE | NUMBER | N | Identificador do registro da opini?o do paciente. |
| 2 | CD_ATENDIMENTO | NUMBER | N | Identificador do atendimento quando o paciente opinou. |
| 3 | DS_REGISTRO_OPINIAO_PACIENTE | VARCHAR2 | N | Opini?o do paciente, conforme digitado pelo prestador. |
| 4 | DH_REGISTRO_OPINIAO_PACIENTE | DATE | N | Data e hora de quanto o registro da opini?o do paciente foi gravado no banco de dados. |
| 5 | SN_ATIVO | VARCHAR2 | N | Indica se o registro da opini?o do paciente esta ativo. |
| 6 | CD_PRESTADOR | NUMBER | N | Identificador do prestador que registrou a opini?o do paciente. |
| 7 | CD_REGISTRO_CLINICO | NUMBER | Y | Especifica o RegistroClinico que foi realizado no atendimento |

---

## DBAMV.PW_RELATORIO_ASSINATURA_DIGIT
> Tabela que armazena os relatorio que serao assinados digitalmente

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_RELATORIO | NUMBER | N | Codigo do relatorio |
| 2 | DS_RELATORIO | VARCHAR2 | N | Descric?o do relatorio |
| 3 | SN_ASSINATURA_DIGITAL | VARCHAR2 | N | Indica se ha assinatura digital |
| 4 | CD_SETOR | NUMBER | Y | Codigo do setor |
| 5 | CD_USUARIO | VARCHAR2 | Y | Codigo do usuario |

---

## DBAMV.PW_REPOSITORIO_USUARIO
> Tabela que armazena os repositorios que um determinado usuario pode utilizar

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REPOSITORIO | NUMBER | N | Codigo de identificac?o do repositorio |
| 2 | CD_USUARIO_REPOS | VARCHAR2 | N | Codigo do usuario que usara esse repositorio |
| 3 | TP_REPOSITORIO | VARCHAR2 | N | Tipo do repositorio que esta sendo usado. A - Arquivo; D - Dispositivo; H - HSM |
| 4 | DS_DETALHE | VARCHAR2 | Y | Se o repositorio for do tipo arquivo, tera o caminho do mesmo, caso contrario, sera o texto AUSEN... |
| 5 | SN_ATIVO | VARCHAR2 | Y | Se o repositorio esta ativo para esse usuario |
| 6 | CD_USUARIO | VARCHAR2 | N | Usuario que registrou esse repositorio para terceiros |
| 7 | CD_TIPO_REPOSITORIO | NUMBER | Y | Identificador do tipo de repositorio que a pessoa usa, DEVERIA SER NOT NULL |
| 8 | CAMINHO_ARQUIVO | VARCHAR2 | Y | Se o tipo do repositorio for arquivo, esse campo devera conter o arquivo que o JKS esta localizado |
| 9 | CD_ASSINANTE | NUMBER | Y | Identificador da pessoa que possue o repositorio, DEVERIA SER NOT NULL |

---

## DBAMV.PW_RESPOSTA_ANAMNESE
> Tabela que armazena a resposta da anamnese

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_RESPOSTA_ANAMNESE | NUMBER | N | codigo da resposta da anamnese |
| 2 | VL_RESPOSTA | VARCHAR2 | Y | valor da resposta da anamnese |
| 3 | CD_PERGUNTA_ANAMNESE | NUMBER | N | codigo da pergunta da anamnese |
| 4 | CD_ATENDIMENTO | NUMBER | Y | Coluna que refencia o codigo do atendimento |
| 5 | CD_BLOCO_ANAMNESE | NUMBER | N | codigo do bloco anamnese |

---

## DBAMV.PW_RESPOSTA_EVOLUCAO
> Tabela que armazena a resposta evoluc?o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_RESPOSTA_EVOLUCAO | NUMBER | N | codigo da resposta evoluc?o |
| 2 | VL_RESPOSTA | NUMBER | Y | valor da resposta evoluc?o |
| 3 | CD_PERGUNTA_EVOLUCAO | NUMBER | N | codigo da pergunta evoluc?o |
| 4 | CD_ATENDIMENTO | NUMBER | Y | Coluna que refencia o codigo do atendimento |

---

## DBAMV.PW_RESPOSTA_EXAME_FISICO
> Tabela para Resposta Exame Fisico

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_RESPOSTA_EXAME_FISICO | NUMBER | N | Codigo Resposta Exame Fisico |
| 2 | DT_HORA_CRIACAO | DATE | Y | Data Hora Criac?o Resposta Exame Fisico |
| 3 | DT_HORA_ULTIMA_GRAVACAO | DATE | Y | Data Hora Ultima Gravac?o Resposta Exame Fisico |
| 4 | CD_VERSAO_FORMULARIO | NUMBER | N | Codigo Vers?o Formulario |

---

## DBAMV.PW_RESPOSTA_EX_FISICO_ITEM
> Tabela para Resposta Exame Fisico Item

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_RESPOSTA_EXAME_FISICO_ITEM | NUMBER | N | Codigo Resposta Exame Fisico Item |
| 2 | VL_RESPOSTA | VARCHAR2 | Y | Valor da Resposta Exame Fisico Item |
| 3 | CD_RESPOSTA_EXAME_FISICO | NUMBER | N | Codigo Resposta Exame Fisico |
| 4 | CD_PERGUNTA | NUMBER | N | Codigo Pergunta Exame Fisico |

---

## DBAMV.PW_RESPOSTA_EX_FIS_ATENDIME
> Tabela para Resposta Exame Fisico Atendimento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_RES_EXA_FIS_ATE | NUMBER | N | Codigo Resposta Exame Fisico Atendimento |
| 2 | CD_RESPOSTA_EXAME_FISICO | NUMBER | N | Codigo Resposta Exame Fisico |
| 3 | CD_ATENDIMENTO | NUMBER | N | Codigo Atendimento |

---

## DBAMV.PW_RESPOSTA_QUEST

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_RESPOSTA_QUEST | NUMBER | N |  |
| 2 | CD_PERGUNTA_QUEST | NUMBER | Y |  |
| 3 | CD_CONFIG_RESP_QUEST | NUMBER | Y |  |
| 4 | DS_CONFIG_RESP_QUEST | VARCHAR2 | Y |  |
| 5 | TP_RESPOSTA | VARCHAR2 | Y |  |
| 6 | NR_ORDEM | NUMBER | Y |  |
| 7 | SN_ATIVO | VARCHAR2 | Y |  |
| 8 | VL_RESPOSTA | VARCHAR2 | Y |  |

---

## DBAMV.PW_RESTRICAO_POSOLOGIA
> Tabela que armazena as regras de restric?o de posologia

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_RESTRICAO_POSOLOGIA | NUMBER | N | Identificador da tabela de que restringe a situac?o de exibic?o da posologia. |
| 2 | CD_CONFIGURACAO_PADRAO_ITEM | NUMBER | N | Codigo da posologia que tera a restric?o. |
| 3 | CD_SETOR | NUMBER | N | Setor que vai poder ser exibido essa posologia |

---

## DBAMV.PW_RESULTADO_PROBLEMA_PAC

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_RESULTADO_PROBLEMA | NUMBER | N | CÃ¿DIGO DO RESULTADO. |
| 2 | DS_RESULTADO_PROBLEMA | VARCHAR2 | N | DESCRIÃ¿Ã¿O DO RESULTADO. |
| 3 | CD_PROBLEMA | NUMBER | N | CODIGO DO PROBLEMA RELACIONADO. |
| 4 | DT_AVALIACAO_RESULTADO | TIMESTAMP(6) | Y | DATA DA AVALIAÃ¿Ã¿O DO RESULTADO. |
| 5 | TP_AVALIACAO_RESULTADO | VARCHAR2 | Y | TIPO DE RESULTADO, A (ATINGIDO), NA (NÃ¿O ATINGIDO), S (SUSPENSO), EA (EM ANDAMENTO) |
| 6 | TP_JUSTIFICATIVA_RESULTADO | VARCHAR2 | Y | JUSTIFICATIVA DO RESULTADO, NA (NÃ¿O APLICA), MQ (MANTENDO QUADRO), PC (PIORA CLÃNICA), AF (NÃ¿O... |

---

## DBAMV.PW_RES_TRANSC_EXAMES
> Tabela de Resultados de campos dos Exames  - Laboratorio

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_RES_TRANSC_EXA | NUMBER | N | Codigo do Pedido de Exame |
| 2 | CD_EXA_LAB | NUMBER | N |  |
| 3 | CD_VERSAO | NUMBER | N | Codigo da Vers?o do Layout do Laudo |
| 4 | NM_CAMPO | VARCHAR2 | N | Descric?o do Campo do Exame |
| 5 | DS_RESULTADO | VARCHAR2 | Y | Descric?o do Resultado |
| 6 | CD_ATENDIMENTO | NUMBER | Y | Codigo do Atendimento |
| 7 | CD_PACIENTE | NUMBER | Y | Codigo do Paciente |
| 8 | CD_PRESTADOR_RESP | NUMBER | Y |  |
| 9 | DT_RESULTADO | DATE | Y | Data do Resultado |
| 10 | CD_ORDEM_PERGUNTA | NUMBER | Y | Numero de ordem da visualizac?o da pergunta |
| 11 | CD_ITPED_LAB | NUMBER | Y | Codigo do Exame Solicitado no Pedido |
| 12 | DS_JUSTIFICATIVA | VARCHAR2 | Y | Descric?o da Justificativa para valores controlados |
| 13 | TP_RESULTADO | VARCHAR2 | Y | Tipo do Resultado |
| 14 | IM_GRAFICO | VARCHAR2 | Y | Imagem referente ao resultado do campo do Laudo |
| 15 | DS_NORMAL_ABSOLUTO | VARCHAR2 | Y | Descric?o do valor de referencia normal absoluto |
| 16 | VL_NORMAL_ABSO_REF_INICIO | NUMBER | Y | Valor de inicio para o valor de referencia normal absoluto |
| 17 | VL_NORMAL_ABSO_REF_FIM | NUMBER | Y | Valor fim para o valor de referencia normal absoluto |
| 18 | DS_NORMAL_PERCENTUAL | VARCHAR2 | Y | Descric?o do valor de referencia normal percentual |
| 19 | VL_NORMAL_PERC_REF_INICIO | NUMBER | Y | Valor de inicio para o valor de referencia normal percentual |
| 20 | VL_NORMAL_PERC_REF_FIM | NUMBER | Y | Valor fim para o valor de referencia normal percentual |
| 21 | DS_LIMITE_ABSOLUTO | VARCHAR2 | Y | Descric?o do valor de referencia limite absoluto |
| 22 | VL_LIMITE_ABSO_REF_INICIO | NUMBER | Y | Valor de inicio para o valor de referencia limite absoluto |
| 23 | VL_LIMITE_ABSO_REF_FIM | NUMBER | Y | Valor fim para o valor de referencia limite absoluto |
| 24 | DS_LIMITE_PERCENTUAL | VARCHAR2 | Y | Descric?o do valor de referencia limite percentual |
| 25 | VL_LIMITE_PERC_REF_INICIO | NUMBER | Y | Valor de inicio para o valor de referencia limite percentual |
| 26 | VL_LIMITE_PERC_REF_FIM | NUMBER | Y | Valor fim para o valor de referencia limite percentual |
| 27 | DS_ABSURDO_ABSOLUTO | VARCHAR2 | Y | Descric?o do valor de referencia absurdo absoluto |
| 28 | VL_ABSURDO_ABSO_REF_INICIO | NUMBER | Y | Valor de inicio para o valor de referencia absurdo absoluto |
| 29 | VL_ABSURDO_ABSO_REF_FIM | NUMBER | Y | Valor fim para o valor de referencia absurdo absoluto |
| 30 | DS_ABSURDO_PERCENTUAL | VARCHAR2 | Y | Descric?o do valor de referencia absurdo percentual |
| 31 | VL_ABSURDO_PERC_REF_INICIO | NUMBER | Y | Valor de inicio para o valor de referencia absurdo percentual |
| 32 | VL_ABSURDO_PERC_REF_FIM | NUMBER | Y | Valor fim para o valor de referencia absurdo percentual |
| 33 | DS_TEXTO_REFERENCIA_NORMAL | VARCHAR2 | Y | Texto para referencia de resultado normal |
| 34 | DS_MASCARA_VALOR_NORM_ABSO_REF | VARCHAR2 | Y | Mascara para valores de referencia absolutos normal |
| 35 | DS_TEXTO_REFERENCIA_LIMITE | VARCHAR2 | Y | Texto para referencia de resultado limite |
| 36 | DS_MASCARA_VALOR_LIMT_ABSO_REF | VARCHAR2 | Y | Mascara para valores de referencia absolutos limite |
| 37 | DS_TEXTO_REFERENCIA_ABSURDO | VARCHAR2 | Y | Texto para referencia de resultado absurdo |
| 38 | DS_MASCARA_VALOR_ABSU_ABSO_REF | VARCHAR2 | Y | Mascara para valores de referencia absolutos absurdo |
| 39 | DS_UNIDADE | VARCHAR2 | Y | Coluna que contem a unidade de medida usada no resultado do exame |

---

## DBAMV.PW_REUSO_CAPILAR
> Tabela para cadastro dos reusos dos capilares

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REUSO_CAPILAR | NUMBER | N | Código identificador |
| 2 | CD_CAPILAR | NUMBER | N | Código do capilar referente a tabela PW_CAPILAR |
| 3 | DH_ABERTURA | DATE | N | Data da abertura da utilização do capilar |
| 4 | PRIMING_INICIAL | NUMBER | N | Priming inicial do capilar |
| 5 | DH_HEMODIALISE | DATE | N | Data da hemodiálise |
| 6 | PEROXIDO_PRE_LAVAGEM | VARCHAR2 | N | Teste peróxido pré-lavagem |
| 7 | PEROXIDO_POS_LAVAGEM | VARCHAR2 | N | Teste peróxido pós-lavagem |
| 8 | ORDEM_REUSO | NUMBER | N | Ordem do reuso do capilar |
| 9 | PRIMING_REUSO | NUMBER | N | Priming do Reuso |
| 10 | LINHA_ARTERIAL | NUMBER | N | Linha arterial do capilar |
| 11 | SN_DESCARTE_LINHA_ART_VEN | VARCHAR2 | N | Se a linha arterial foi o motivo do descarte |
| 12 | LINHA_VENOSA | NUMBER | N | Linha venosa do capilar |
| 13 | DS_OBSERVACAO | VARCHAR2 | Y | Observação da utilização do capilar |
| 14 | SN_ATIVO | VARCHAR2 | N | Se o reuso está ativo ou não |
| 15 | CD_USUARIO_DESATIVADO | VARCHAR2 | Y | Usuário que desativou o reuso |
| 16 | DS_MOTIVO_DESATIVAR | VARCHAR2 | Y |  |
| 17 | DH_DESATIVADO | DATE | Y |  |

---

## DBAMV.PW_SAE_ATIVIDADE_INTERVENCAO
> TABELA PARA CADASTRO DOS RESULTADOS DE ENFERMAGEM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SAE_ATIVIDADE_INTERVENCAO | NUMBER | N | CODIGO DA CHAVE PRIMÁRIA DA TABELA PW_SAE_ATIVIDADE_INTERVENCAO |
| 2 | CODIGO | VARCHAR2 | Y | CODIGO DO RESULTADO |
| 3 | NM_ATIVIDADE | VARCHAR2 | N | NOME DA ATIVIDADE DA INTERVENCAO DE ENFERMAGEM |
| 4 | DS_COMENTARIO | VARCHAR2 | Y | OBSERVACOES PARA ALTERACOES NOS INDICADORES DOS RESULTADOS |
| 5 | DH_CRIACAO | DATE | N | DATA DE CRIACAO DO REGISTRO |
| 6 | DH_FINALIZACAO | DATE | Y | DATA DE FINALIZAÇÃO |
| 7 | CD_PACIENTE | NUMBER | N | IDENTIFICA O PACIENTE QUE ESTÁ TENDO UM RESULTADO DE ENFERMAGEM REALIZADO - FK |
| 8 | CD_SETOR | NUMBER | N | IDENTIFICA O SETOR EM QUE O USUÁRIO ESTA LOGADO - FK |
| 9 | CD_ATENDIMENTO | NUMBER | N | IDENTIFICA O CÓDIGO DO ATENDIMENTO DO PACIENTE - FK |
| 10 | CD_PRESTADOR | NUMBER | N | IDENTIFICA O PRESTADOR QUE REALIZOU O INDICADOR RESULTADO DE ENFERMAGEM - FK |
| 11 | CD_SAE_INTERVENCAO_ENFERMAGEM | NUMBER | N | CODIGO DA INTERVENSÃO DA ATIVIDADE DE ENFERMAGEM |
| 12 | CD_TIP_PRESC | NUMBER | Y |  |

---

## DBAMV.PW_SAE_DIAG_EN_RLZ_RES_EN_RLZ

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SAE_DIAG_EN_RLZ_RES_EN_RLZ | NUMBER | Y |  |
| 2 | CD_DOC_CLI_SAE_DIAG_ENF_RLZD | NUMBER | N | O CÓDIGO DO DOCUMENTO CLÍNICO REFERENCIADO DO DIAGNOSTIVO DE ENFERMAGEM |
| 3 | CD_DOC_CLI_SAE_RES_ENF_RL_NOVO | NUMBER | N | O CÓDIGO DO DOCUMENTO CLÍNICO DO RESULTADO DE ENFERMAGEM NOVO (MAIS ATUAL) |

---

## DBAMV.PW_SAE_INDICADOR_RESULTADO
> TABELA PARA CADASTRO DOS RESULTADOS DE ENFERMAGEM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SAE_INDICADOR_RESULTADO | NUMBER | N | CODIGO DA CHAVE PRIMÁRIA DA TABELA PW_SAE_INDICADOR_RESULTADO |
| 2 | CD_SAE_RESULTADO_ENFERMAGEM | NUMBER | N | CODIGO DO RESULTADO DA INDICACAO |
| 3 | CODIGO | VARCHAR2 | Y | CODIGO DO RESULTADO |
| 4 | NM_INDICADOR | VARCHAR2 | N | INDICADOR DO RESULTADO DO RESULTADO |
| 5 | DS_COMENTARIO | VARCHAR2 | Y | OBSERVACOES PARA ALTERACOES NOS INDICADORES DOS RESULTADOS |
| 6 | TP_ESCALA | VARCHAR2 | Y | TIPO DA ESCALA DE RESULTADO DO INDICADOR |
| 7 | DH_CRIACAO | DATE | N | DATA DE CRIACAO DO REGISTRO |
| 8 | DH_FINALIZACAO | DATE | Y | DATA DE FINALIZAÇÃO |
| 9 | CD_PACIENTE | NUMBER | N | IDENTIFICA O PACIENTE QUE ESTÁ TENDO UM RESULTADO DE ENFERMAGEM REALIZADO - FK |
| 10 | CD_SETOR | NUMBER | N | IDENTIFICA O SETOR EM QUE O USUÁRIO ESTA LOGADO - FK |
| 11 | CD_ATENDIMENTO | NUMBER | N | IDENTIFICA O CÓDIGO DO ATENDIMENTO DO PACIENTE - FK |
| 12 | CD_PRESTADOR | NUMBER | N | IDENTIFICA O PRESTADOR QUE REALIZOU O INDICADOR RESULTADO DE ENFERMAGEM - FK |
| 13 | ESCORE_INICIAL | VARCHAR2 | Y | VALOR DA AVALIAÇÃO INICIAL DO RESULTADO |
| 14 | ESCORE_OBJETIVO | VARCHAR2 | Y | VALOR DA AVALIAÇÃO OBJETIVO DO RESULTADO |
| 15 | ESCORE_OBTIDO | VARCHAR2 | Y | VALOR DA AVALIAÇÃO OBJETIVO DO RESULTADO |
| 16 | VALOR_RESULTADO_INICIAL | NUMBER | Y | VALOR DA AVALIAÇÃO INICIAL DO RESULTADO |
| 17 | VALOR_RESULTADO_OBJETIVO | NUMBER | Y | VALOR DO RESULTADO OBJETIVO DO PACIENTE |
| 18 | VALOR_RESULTADO_OBTIDO | NUMBER | Y | PREVISAO DE DIAS PARA OBTER O RESULTADO OBJETIVO |
| 19 | QT_DIAS | NUMBER | Y | PREVISAO DE DIAS PARA OBTER O RESULTADO OBJETIVO |
| 20 | CD_USUARIO_CRIACAO | VARCHAR2 | N | USUARIO QUE CRIOU O REGISTRO |
| 21 | CD_USUARIO_ALTERACAO | VARCHAR2 | Y | USUARIO QUE ALTEROU O REGISTRO |
| 22 | CD_USUARIO_FINALIZACAO | VARCHAR2 | Y | USUARIO QUE FINALIZOU O REGISTRO |
| 23 | DH_ALTERACAO | DATE | Y | DATA E HORA DA ALTERAÇÃO DO REGISTRO |
| 24 | STATUS | VARCHAR2 | Y | STATUS DO INDICADOR DO RESULTADO. TIPOS: NEGATIVO, POSITIVO, PARCIAL, CANCELADO |

---

## DBAMV.PW_SAE_INTERVENCAO_ENFERMAGEM
> TABELA PARA CADASTRO DOS INTERVENCAOS DE ENFERMAGEM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SAE_INTERVENCAO_ENFERMAGEM | NUMBER | N |  |
| 2 | CODIGO | VARCHAR2 | Y | CODIGO DO INTERVENCAO |
| 3 | NM_INTERVENCAO | VARCHAR2 | N | TITULO DA INTERVENCAO DE ENFERMAGEM |
| 4 | DS_DOMINIO | VARCHAR2 | Y | DOMINIO INTERVENCAO DE ENFERMAGEM |
| 5 | DS_CLASSE | VARCHAR2 | Y | CLASSE INTERVENCAO DE ENFERMAGEM |
| 6 | DS_DEFINICAO | VARCHAR2 | Y | DEFINICAO INTERVENCAO DE ENFERMAGEM |
| 7 | CD_PRE_PAD | NUMBER | Y | DEFINICAO INTERVENCAO DE ENFERMAGEM |
| 8 | CD_DIAGNOSTICO_PACIENTE | NUMBER | Y |  |
| 9 | CD_ITPRE_MED | NUMBER | Y | CODIGO DO ITEM DA PRESCRIÇÃO GERADO PARA A INTERVENCAO |

---

## DBAMV.PW_SAE_RESULTADO_ENFERMAGEM
> TABELA PARA CADASTRO DOS RESULTADOS DE ENFERMAGEM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SAE_RESULTADO_ENFERMAGEM | NUMBER | N |  |
| 2 | CODIGO | VARCHAR2 | Y | CODIGO DO RESULTADO |
| 3 | NM_RESULTADO | VARCHAR2 | N | TITULO DO RESULTADO DO RESULTADO |
| 4 | DS_DOMINIO | VARCHAR2 | Y | DOMINIO DO RESULTADO |
| 5 | DS_CLASSE | VARCHAR2 | Y | CLASSE DO RESULTADO |
| 6 | TP_ESCALA | VARCHAR2 | Y | TIPO DA ESCALA DO RESULTADO |
| 7 | DS_DEFINICAO | VARCHAR2 | Y | DEFINICAO DO RESULTADO |
| 8 | DS_COMENTARIO | VARCHAR2 | Y | COMENTÁRIO INFORMADO NA INCLUSÃO OU NA ALTERAÇÃO DE UM RESULTADO |
| 9 | CD_DIAGNOSTICO_PACIENTE | NUMBER | N | CÓDIGO DO DIAGNOSTICO DE ENFERMAGEM REGISTRADO PARA O PACIENTE - FK |
| 10 | CD_SAE_RESULTADO_ENFERMG_RLZD | NUMBER | Y | CÓDIGO DO AGRUPADOR DO RESULTADO -FK |
| 11 | ESCORE_INICIAL | VARCHAR2 | Y | VALOR DA AVALIAÇÃO INICIAL DO RESULTADO |
| 12 | ESCORE_OBJETIVO | VARCHAR2 | Y | VALOR DA AVALIAÇÃO OBJETIVO DO RESULTADO |
| 13 | ESCORE_OBTIDO | VARCHAR2 | Y |  |
| 14 | VALOR_RESULTADO_INICIAL | NUMBER | Y | VALOR DA AVALIAÇÃO INICIAL DO RESULTADO |
| 15 | VALOR_RESULTADO_OBJETIVO | NUMBER | Y | VALOR DO RESULTADO OBJETIVO DO PACIENTE |
| 16 | VALOR_RESULTADO_OBTIDO | NUMBER | Y | VALOR DO SCORE DO RESULTADO OBTIDO |
| 17 | QT_DIAS | NUMBER | Y | PREVISAO DE DIAS PARA OBTER O RESULTADO OBJETIVO |
| 18 | CD_USUARIO_CRIACAO | VARCHAR2 | Y | USUARIO QUE CRIOU O REGISTRO |
| 19 | CD_USUARIO_ALTERACAO | VARCHAR2 | Y | USUARIO QUE ALTEROU O REGISTRO |
| 20 | CD_USUARIO_FINALIZACAO | VARCHAR2 | Y | USUARIO QUE FINALIZOU O REGISTRO |
| 21 | CD_USUARIO_CANCELAMENTO | VARCHAR2 | Y | USUARIO QUE CANCELOU O RESULTADO |
| 22 | DH_CRIACAO | DATE | Y | DATA QUE CRIOU O REGISTRO |
| 23 | DH_ALTERACAO | DATE | Y | DATA QUE CRIOU O REGISTRO |
| 24 | DH_FINALIZACAO | DATE | Y | DATA QUE FINALIZOU O REGISTRO |
| 25 | DH_CANCELAMENTO | DATE | Y | DATA DO CANCELAMENTO DO RESULTADO |
| 26 | STATUS | VARCHAR2 | Y | STATUS DO RESULTADO. TIPOS: NEGATIVO, POSITIVO, PARCIAL, CANCELADO |

---

## DBAMV.PW_SAE_RESULTADO_ENFERMG_RLZD
> REGISTRO DE RESULTADOS DE ENFERMAGEM REALIZADOS.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SAE_RESULTADO_ENFERMG_RLZD | NUMBER | N | CÓDIGO DA REALIZAÇÃO DE RESULTADO DE ENFERMAGEM- PRIMARY KEY |
| 2 | DH_CRIACAO | DATE | N | DATA DE CRIACAO DO REGISTRO |
| 3 | DH_FINALIZACAO | DATE | Y | DATA DE FINALIZAÇÃO |
| 4 | CD_PACIENTE | NUMBER | N | IDENTIFICA O PACIENTE QUE ESTÁ TENDO UM RESULTADO DE ENFERMAGEM REALIZADO - FK |
| 5 | CD_SETOR | NUMBER | N | IDENTIFICA O SETOR EM QUE O USUÁRIO ESTA LOGADO - FK |
| 6 | CD_ATENDIMENTO | NUMBER | N | IDENTIFICA O CÓDIGO DO ATENDIMENTO DO PACIENTE - FK |
| 7 | CD_PRESTADOR | NUMBER | N | IDENTIFICA O PRESTADOR QUE REALIZOU O RESULTADO DE ENFERMAGEM - FK |
| 8 | SN_FINALIZADO | VARCHAR2 | N | INDICA SE O RESULTADO DE ENFERMAGEM FOI FINALIZADO. POR PADRÃO SERÁ NÃO FINALIZADO |
| 9 | DS_EVOLUCAO_DIAGNOSTICO_ENF | VARCHAR2 | Y | DESCRIÇÃO DA EVOLUÇÃO DO DIAGNOSTICO GERAL DO PACIENTE |
| 10 | TP_STATUS | VARCHAR2 | N | STATUS DO DIAGNOSTICO DE ENFERMAGEM DO PACIENTE |
| 11 | CD_DIAGNOSTICO_PACIENTE | NUMBER | N | DIAGNOSTICO DE ENFERMAGEM DO PACIENTE - FK |
| 12 | CD_DOCUMENTO_CLINICO | NUMBER | Y | O CÓDIGO DO DOCUMENTO CLÍNICO |
| 13 | SN_ATIVA_NNN_VINCULO_RESUL_INT | VARCHAR2 | N | SE ESTAVA ATIVO A CONFIGURAÇÃO DAS INTERVENCOES SERAO VINCULADAS OS RESULTADOS E NÃO SOMENTE AO D... |
| 14 | TP_PERMISSAO_ALTERACAO | VARCHAR2 | N | SE ESTAVA ATIVO A CONFIGURAÇÃO DE PERMISSÃO DE ALTERAÇÃO |

---

## DBAMV.PW_SAE_RESULTADO_INTERVENCAO
> TABELA PARA CADASTRO DOS RESULTADOS VINCULADOS AS INTERVENSOES DE ENFERMAGEM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SAE_RESULTADO_INTERVENCAO | NUMBER | N | CODIGO DA CHAVE PRIMARIA DA TABELA DE LIGACAO |
| 2 | CD_SAE_INTERVENCAO_ENFERMAGEM | NUMBER | N | CODIGO DA TABELA DE INTERVENCAO - FK |
| 3 | CD_SAE_RESULTADO_ENFERMAGEM | NUMBER | N | CODIGO DA TABELA DO RESULTADO-FK |

---

## DBAMV.PW_SCHEMA
> Tabela que armazena schemas de dados a serem enviados para a IA MAIDA.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SCHEMA | NUMBER | N | Chave primária da tabela. Identificador ínico do schema. |
| 2 | NM_SCHEMA | VARCHAR2 | Y | Nome amigável/descritivo do schema. Deve ser ínico. |
| 3 | CD_MODULO | VARCHAR2 | N | Nome do modulo que o schema representa. |
| 4 | DS_SCHEMA | CLOB | Y | Representação do schema em formato texto (geralmente JSON), armazenado como CLOB para suportar gr... |

---

## DBAMV.PW_SEGMENTO
> Tabela para Segmento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SEGMENTO | NUMBER | N | Codigo Segmento |
| 2 | DS_SEGMENTO | VARCHAR2 | Y | Descric?o Segmento |
| 3 | SN_ATIVO | VARCHAR2 | Y | Se o Segmento esta Ativo |
| 4 | CD_VERSAO_ATUAL | NUMBER | Y | Codigo Vers?o Atual |
| 5 | CD_VERSAO_EDICAO | NUMBER | Y | Codigo Vers?o Edic?o |

---

## DBAMV.PW_SEGMENTO_ANAMNESE
> Tabela que armazena o segmento anamnese

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SEGMENTO_ANAMNESE | NUMBER | N | codigo do segmento anamnese |
| 2 | DS_SEGMENTO_ANAMNESE | VARCHAR2 | Y | valor do segmento anamnese |

---

## DBAMV.PW_SEGMENTO_ASSINATURA_DIGITAL
> Tabela de configurac?o dos Segmentos que assinam digitalmente

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SEGMENTO_ASSINATURA_DIGITAL | NUMBER | N | Campo PK da tabela |
| 2 | CD_SEGMENTO | NUMBER | N | Indentificador do Segmento |
| 3 | SN_ASSINATURA_DIGITAL | VARCHAR2 | Y | Identifica se segmento assina digitalmente |

---

## DBAMV.PW_SEGMENTO_EVOLUCAO
> Tabela que armazena o segmento evoluc?o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SEGMENTO_EVOLUCAO | NUMBER | N | codigo do segmento evoluc?o |
| 2 | DS_SEGMENTO_EVOLUCAO | VARCHAR2 | Y | descric?o do segmento evoluc?o |

---

## DBAMV.PW_SEGMENTO_EXAME_FISICO
> Tabela para Segmento Exame Fisico

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SEGMENTO | NUMBER | N | Codigo Segmento Exame Fisico |

---

## DBAMV.PW_SEGMENTO_PERGUNTA_EXAME_FIS
> Tabela para Segmento Pergunta Exame Fisico

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SEG_PER_EXA_FIS | NUMBER | N | Codigo Segmento Pergunta Exame Fisico |
| 2 | VL_ORDEM | NUMBER | Y | Ordem Segmento Pergunta Exame Fisico |
| 3 | CD_SEGMENTO | NUMBER | N | Codigo Segmento |
| 4 | CD_PERGUNTA | NUMBER | N | Codigo Pergunta |

---

## DBAMV.PW_SENHA_PACIENTE_VIP
> Tabela para armazenar a senha de acesso ao prontuÃ¡rio de um determinado paciente

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SENHA_PACIENTE_VIP | NUMBER | N | Sequencial da senha do prontuÃ¡rio do paciente vip |
| 2 | CD_PACIENTE | NUMBER | N | Paciente vip que teve sua senha gerada ou alterada |
| 3 | CD_SENHA | VARCHAR2 | N | Registro do Hash da Senha de acesso do paciente gerada pela funcionalidade de geraÃ§Ã£o de senha |
| 4 | VL_PERIODO | NUMBER | N | Valor do perÃ­odo utilizado no momento da geraÃ§Ã£o |
| 5 | TP_PERIODO | VARCHAR2 | N | Tipo de perÃ­odo utilizado no momento da geraÃ§Ã£o. Podendo ser (HORA, DIA, SEMANA, MES) |
| 6 | DH_EXPIRACAO | DATE | N | Data/Hora de expiraÃ§Ã£o da senha gerada. Utilizando data/hora do registro + o perÃ­do configurado |
| 7 | DH_REGISTRO | DATE | N | Data/hora de registro da senha no momento da geraÃ§Ã£o |
| 8 | CD_USUARIO_RESPONSAVEL | VARCHAR2 | N | CÃ³digo do usuÃ¡rio responsÃ¡vel pela geraÃ§Ã£o da senha |

---

## DBAMV.PW_SESS_TRTM_ACPMT_PAC_ONCO
> Tabela que armazena as informações da sessão do tratamento oncologico do paciente

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SESS_TRTM_ACPMT_PAC_ONCO | NUMBER | N | Chave Primária |
| 2 | CD_TRATAMENTO | NUMBER | N | Código do tratamento |
| 3 | NR_CICLO | NUMBER | N | Número do ciclo |
| 4 | NR_SESSAO | NUMBER | N | Número da sessão |
| 5 | NR_DIA | NUMBER | N | Número dia |
| 6 | DT_PREVISTA | TIMESTAMP(6) | N | Data prevista para a sessão |
| 7 | DT_REALIZADO | TIMESTAMP(6) | Y | Data que foi realizado a sessão |
| 8 | CD_ACPMT_PACIENTE_TRATAMENTO | NUMBER | N | Código do tratamento que está sendo acompanhado |
| 9 | STATUS | VARCHAR2 | N | Status da sessão: Não realizado, Agendado, Realizado, Interrompido |
| 10 | MOTIVO | VARCHAR2 | Y | Motivo para a não realização da sessão: Recusa do tratamento, Doença avançada, Falta de condições... |
| 11 | OBSERVACAO | VARCHAR2 | Y | Observação sobre o motivo da não realização da sessão |
| 12 | NM_USUARIO | VARCHAR2 | N | Nome do usuário que realizou informou os dados da seção |
| 13 | CD_PRESTADOR | NUMBER | N | Prestador que realizou informou os dados da seção |
| 14 | DH_CADASTRO | TIMESTAMP(6) | Y | Data do cadastro |

---

## DBAMV.PW_SETOR_TIPO_ATENDIMENTO
> Tabela que armazena os registros de relac?o entre setor e tipo do atendimento.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PW_SETOR_TIPO_ATENDIMENTO | NUMBER | N | Identificador da relac?o entre setor e tipo do atendimento. |
| 2 | CD_SETOR | NUMBER | N | Identificador do setor. |
| 3 | TP_ATENDIMENTO | VARCHAR2 | N | Tipo do atendimento. |

---

## DBAMV.PW_SINAL_SINTOMA
> Sinais e Sintomas que o paciente relatou para o medico apos o transplante

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SINAL_SINTOMA | NUMBER | N | Codigo, pk |
| 2 | DS_SINAL_SINTOMA | VARCHAR2 | N | Descric?o do sinal e/ou sintoma relatado pelo paciente |
| 3 | DT_SINAL_SINTOMA | DATE | N | Data que o paciente relatou ter notado o sinal e/ou sintoma |
| 4 | CD_ATENDIMENTO | NUMBER | N | O codigo do atendimento em qual o paciente relatou o sinal/sintoma |
| 5 | CD_USUARIO | VARCHAR2 | N | O codigo do usuario que registro o sinal/sintoma no sistema |

---

## DBAMV.PW_SINAL_VITAL_UNID_INSTR_AFER
> Tabela para Sinal Vital Unidade e Instrumento Aferic?o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SINAL_VITAL_UNID_INSTR_AFER | NUMBER | N | Codigo Sinal Vital Unidade e Instrumento Aferic?o |
| 2 | SN_PADRAO | VARCHAR2 | Y | Se Sinal Vital Unidade e Instrumento Aferic?o e Padr?o |
| 3 | SN_ATIVO | VARCHAR2 | N | Se Sinal Vital Unidade e Instrumento Aferic?o esta Ativo |
| 4 | CD_INSTRUMENTO_AFERICAO | NUMBER | Y | Codigo Instrumento Aferic?o |
| 5 | CD_SINAL_VITAL | NUMBER | N | Codigo Sinal Vital |
| 6 | CD_UNIDADE_AFERICAO | NUMBER | Y | Identificador da unidade de aferic?o. |
| 7 | TP_LANCAMENTO | VARCHAR2 | Y | Determina se o valor do item é inteiro ou fracionário |

---

## DBAMV.PW_SISTEMA_CORPO_HUMANO
> Tabela para Sistema do Corpo Humano

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SISTEMA_CORPO_HUMANO | NUMBER | N | Codigo Sistema do Corpo Humano |
| 2 | NM_SISTEMA_CORPO_HUMANO | VARCHAR2 | N | Nome Sistema do Corpo Humano |
| 3 | DS_SIGLA | VARCHAR2 | N | Sigla Sistema do Corpo Humano |
| 4 | DS_SVG | VARCHAR2 | N | SVG Sistema do Corpo Humano |

---

## DBAMV.PW_SISTEMA_INTEGRADO
> Tabela responsável por guardar as configurações dos sistemas integrados ao PEP2

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SISTEMA_INTEGRADO | NUMBER | N | Código sequêncial da tabela (PK) |
| 2 | DS_CHAVE_SISTEMA_INTEGRADO | VARCHAR2 | N | Chave de identificação do sistema integrado para ser refletido no PEP2 |
| 3 | DS_SISTEMA_INTEGRADO | VARCHAR2 | N | Descrição do sistema integrado. Ex: Nome do sistema integrado [MICROMEDEX] |
| 4 | DS_DESCRICAO | VARCHAR2 | Y | Descrição do sistema integrado, deverá conter uma explicação básica do objetivo da integração com... |
| 5 | DS_URL | VARCHAR2 | Y | Informa a URL para a integração |

---

## DBAMV.PW_SISTEMA_INTEGRA_TP_INT
> Determina quais tipos de integracao estão habilitados para o sistema integrado

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SISTEMA_INTEGRA_TP_INT | NUMBER | N | Codigo da configuracao |
| 2 | CD_TIPO_INTEGRACAO | NUMBER | N | Codigo do tipo de integracao |
| 3 | CD_SISTEMA_INTEGRADO | NUMBER | N | Codigo do sistema integrado |
| 4 | SN_PERMITE_LIGAR | VARCHAR2 | N | Determina se a configuracao esta habilitada. Valores: S - Sim, N - Nao |

---

## DBAMV.PW_SIS_CORP_HUM_ORG_CORP_HUM
> Tabela intermediaria entre Sistema Corpo Humano e Org?o Corpo Humano

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORGAO_CORPO_HUMANO | NUMBER | N | Codigo Org?o Corpo Humano |
| 2 | CD_SISTEMA_CORPO_HUMANO | NUMBER | N | Codigo Sistema Corpo Humano |

---

## DBAMV.PW_SOAP
> Tabela que armazena as informações do SOAP.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SOAP | NUMBER | N | Chave primária |
| 2 | CD_DOCUMENTO_CLINICO | NUMBER | N | Código do documento clínico |
| 3 | CD_CRITICIDADE_CONFIG | NUMBER | Y | Código da criticidade |
| 4 | CD_SUBJETIVO | NUMBER | Y | Código do Subjetivo |
| 5 | CD_OBJETIVO | NUMBER | Y | Código do Objetivo |
| 6 | CD_AVALIACAO | NUMBER | Y | Código da Avaliação |
| 7 | CD_PLANO | NUMBER | Y | Código do Plano |
| 8 | TP_SOAP | VARCHAR2 | N | Tipo do SOAP. |

---

## DBAMV.PW_SOAP_AVALIACAO
> Tabela que armazena as informações da Avaliação do SOAP.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SOAP_AVALIACAO | NUMBER | N |  |
| 2 | DS_AVALIACAO | VARCHAR2 | Y | Descrição da avaliação |
| 3 | TP_GESTACAO | VARCHAR2 | Y | Tipo da gestação |

---

## DBAMV.PW_SOAP_CIAP
> Tabela que armazena as informações dos CIAPs do Subjetivo, Avaliação e Plano.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SOAP_CIAP | NUMBER | N | Chave primária |
| 2 | CD_SOAP_SUBJETIVO | NUMBER | Y | Código do Subjetivo |
| 3 | CD_SOAP_AVALIACAO | NUMBER | Y | Código do Objetivo |
| 4 | CD_SOAP_PLANO | NUMBER | Y | Código do Plano |
| 5 | CD_CIAP | NUMBER | Y | Código do CIAP |
| 6 | DS_NOTA | VARCHAR2 | Y | Nota do CIAP |
| 7 | CD_CID | VARCHAR2 | Y | Código do CID |
| 8 | SN_INSERIR_LISTA_PROBLEMA | VARCHAR2 | N | Indica se foi inserido um item na lista de problema |
| 9 | SN_FILTRAR_CID_PELO_CIAP | VARCHAR2 | N | Indica se o CID foi filtrado pelo CIAP inserido |

---

## DBAMV.PW_SOAP_OBJETIVO
> Tabela que armazena as informações do Objetivo do SOAP.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SOAP_OBJETIVO | NUMBER | N | Chave primária |
| 2 | DS_OBJETIVO | VARCHAR2 | Y | Descrição do Objetivo |
| 3 | TP_EDEMA | VARCHAR2 | Y | Nível do edema: -, +, ++, +++ |
| 4 | SN_GRAVIDEZ_PLANEJADA | VARCHAR2 | Y | Indica se a gravidez foi planejada |
| 5 | SN_MOVIMENTO_FETAL | VARCHAR2 | Y | Indica se houve movimento do feto |
| 6 | DT_DUM | TIMESTAMP(6) | Y | Data da última mestruação |
| 7 | DT_DPP | TIMESTAMP(6) | Y | Data provável do parto |
| 8 | SN_VACINACAO_EM_DIA | VARCHAR2 | Y | Indica se a vacinação está em dia |
| 9 | DS_OBSERVACAO_VACINA | VARCHAR2 | Y | Observação sobre vacinação |
| 10 | QT_DIAS_GESTACAO | NUMBER | Y | Idade gestacional, em dias |

---

## DBAMV.PW_SOAP_PLANO
> Tabela que armazena as informações do Plano do SOAP.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SOAP_PLANO | NUMBER | N | Chave primária |
| 2 | DS_PLANO | VARCHAR2 | Y | Plano da consulta |

---

## DBAMV.PW_SOAP_SUBJETIVO
> Tabela que armazena as informações do Subjetivo do SOAP.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SOAP_SUBJETIVO | NUMBER | N | Chave primária |
| 2 | DS_SUBJETIVO | VARCHAR2 | Y | Motivo da consulta |

---

## DBAMV.PW_SOLICITACAO_IMPRES_PRON_PAC
> Tabela que armazena as solicitac?es de impress?o de prontuarios para pacientes

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SOLICITACAO_IMPR_PRON_PAC | NUMBER | N | Codigo identificador da solicitac?o. Tambem referenciado como o numero da solicitac?o. |
| 2 | DH_SOLICITACAO | DATE | N | Data e hora do cadastro da solicitac?o. |
| 3 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da instituic?o de saude onde a solicitac?o foi solicitada. |
| 4 | CD_PACIENTE | NUMBER | N | Codigo do paciente dono do prontuario. |
| 5 | CD_PRESTADOR | NUMBER | N | Codigo do prestador que registrou a solicitac?o. |
| 6 | DS_MOTIVO_SOLICITACAO | VARCHAR2 | N | Motivo informado pelo paciente para solicitar a impress?o de seu prontuario. |
| 7 | DS_TEXTO_SOLICITACAO | VARCHAR2 | N | Texto da solicitac?o de impress?o que foi impresso para posterior assinatura do paciente. |
| 8 | SN_PRONTUARIO_IMPRESSO | VARCHAR2 | N | Indica se a solicitac?o de impress?o de prontuario foi atendida. |

---

## DBAMV.PW_SOLICITACAO_TRANSPORTE
> TABELA PARA CADASTRO DAS SOLICITAÇÕES DE TRANSPORTE DOS PACIENTES

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SOLICITACAO_TRANSPORTE | NUMBER | N | CÓDIGO DA CHAVE PRIMÁRIA DA TABELA PW_SOLICITACAO_TRANSPORTE |
| 2 | CD_PACIENTE | NUMBER | N | CÓDIGO DO PACIENTE |
| 3 | CD_PRO_FAT | VARCHAR2 | Y | CÓDIGO DO PROCEDIMENTO DE FATURAMENTO |
| 4 | CD_PROCEDIMENTO_SIH | VARCHAR2 | Y | CÓDIGO DO PROCEDIMENTO DE INTERNAÇÃO SUS -SIH |
| 5 | CD_PROCEDIMENTO_SIA | VARCHAR2 | Y | CÓDIGO DO PROCEDIMENTO DE AMBULATÓRIOL SUS - SIA |
| 6 | CD_REGISTRO_ALTA | NUMBER | Y | CÓDIGO DO REGISTRO DA ALTA |
| 7 | NR_VEICULO | NUMBER | Y | NÚMERO DO VEICULO |
| 8 | DS_TIPO_VEICULO | VARCHAR2 | Y | TIPO DO VEICULO |
| 9 | DS_CONDICAO_TRANSPORTE | VARCHAR2 | Y | CONDIÇÃO DO TRANSPORTE |
| 10 | MN_TRIPULANTE | VARCHAR2 | Y | NOME DOS TRIPULANTES |
| 11 | MN_ACOMPANHANTE | VARCHAR2 | Y | NOME DO ACOMPANHANTE |
| 12 | DH_CRIACAO | DATE | N | DATA E HORA DA CRIAÇÃO DO REGISTRO |
| 13 | DH_SAIDA | DATE | Y | DATA E HORA DA SAIDA DO VEICULO |
| 14 | DH_CHEGADA | DATE | Y | DATA E HORA DA CHEGADA DO VEICULO NO LOCAL |
| 15 | QT_KM | NUMBER | Y | QUANTIDADE DE KILOMETROS RODADOS PARA CHEGAR NO DESTINO |
| 16 | STATUS | VARCHAR2 | N | STATUS DA SOLICITAÇÃO DE TRANSPORTE. TIPOS POSSIVEIS: ¿Pendente (P)¿,  ¿Atendido (A)¿ / ¿Em andam... |

---

## DBAMV.PW_SUB_GRUPO_PRESCRICAO
> Tabela de sub grupos dos Itens de Prescric?o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SUB_GRUPO_PRESCRICAO | NUMBER | N | Codigo do sub grupo |
| 2 | DS_SUB_GRUPO_PRESCRICAO | VARCHAR2 | N | Descric?o do sub grupo |
| 3 | CD_GRUPO_PRESCRICAO | NUMBER | N | Codigo do Grupo da Prescric?o |
| 4 | NR_ORDEM_EXIBICAO | NUMBER | Y | Ordem de Exibic?o dos Favoritos no Sub Grupos. |

---

## DBAMV.PW_SUGESTAO_PROTOCOLO
> Tabela responsável por armazenar as sugestões de protocolo e seus critérios, tal sugestão é feita na tela de prescrição de tratamento, ao adicionar um tratamento, seguindo os critérios (CID,ESTADIO,EXAMES,IDADE, SEXO E ETC. dessa tabela

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SUGESTAO_PROTOCOLO | NUMBER | N | Código sequencial da tabela |
| 2 | CD_PROTOCOLO | NUMBER | N |  |
| 3 | CD_CID | VARCHAR2 | Y | código do CID (FK) |
| 4 | CD_ESTADIAMENTO | VARCHAR2 | Y | Código do estadiamento (FK) |
| 5 | CD_EXA_LAB | NUMBER | Y |  |
| 6 | CD_VERSAO | NUMBER | Y | Código da versão (FK) referente ao campo para resultado do exame |
| 7 | NM_CAMPO | VARCHAR2 | Y | Nome do campo(FK) referente ao resultado do exame |
| 8 | DS_TEXTO | VARCHAR2 | Y | Resultado do exame em caso de resultados textuais, para sugerir o protocolo |
| 9 | VL_MIN | NUMBER | Y | Valor mínimo do resultado do exame, em casos de resultados númericos, para sugerir o protocolo |
| 10 | VL_MAX | NUMBER | Y | Valor máximo do resultado do exame,em casos de resultados númericos, para sugerir o protocolo |
| 11 | TP_SEXO | VARCHAR2 | N | Sexo para a sugestão do protocolo A = AMBOS, M = MASCULINO, F = FEMININO |
| 12 | QT_IDADE_MIN_DIAS | NUMBER | Y | Idade mínima em dias para a sugestão do protocolo |
| 13 | QT_IDADE_MIN_MESES | NUMBER | Y | Idade mínima em meses para a sugestão do protocolo |
| 14 | QT_IDADE_MIN_ANOS | NUMBER | Y | Idade mínima em anos para a sugestão do protocolo |
| 15 | QT_IDADE_MAX_DIAS | NUMBER | Y | Idade máxima em dias para a sugestão do protocolo |
| 16 | QT_IDADE_MAX_MESES | NUMBER | Y | Idade máxima em meses para a sugestão do protocolo |
| 17 | QT_IDADE_MAX_ANOS | NUMBER | Y | Idade máxima em anos para a sugestão do protocolo |
| 18 | SN_ATIVO | VARCHAR2 | N | registro ativo sim ou não |

---

## DBAMV.PW_TEMA_CLINICO
> Tabela que armazena temas de documentos a serem criados no sistema.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TEMA_CLINICO | NUMBER | N | Identificador do tema de documento cadastrado. |
| 2 | DS_TEMA_CLINICO | VARCHAR2 | N | Descric?o do tema de documento criado. |
| 3 | TP_TEMA_CLINICO | VARCHAR2 | N | Chave do tema criado. |
| 4 | SN_ASSINATURA | CHAR | Y | Verificar se permite assinatura para habilitar a tela de assinatura eletronica ou n?o |
| 5 | SN_PRONTUARIO | CHAR | Y | Utilizado no processo de impress?o de prontuario. |
| 6 | TP_EXIBE_DOC_ABERTO | VARCHAR2 | Y | Indica quais os documentos em aberto que ser?o exibidos no historico do tema. (PRE)stador, traz s... |

---

## DBAMV.PW_TERMO_CONSENTIMENTO_ATND
> TABELA QUE ARMAZENA OS TERMOs DE CONSENTIMENTO PARA DETERMINADOS ATENDIMENTOS.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TERMO_CONSENTIMENTO_ATND | NUMBER | N | IDENTIFICADOR DO REGISTRO DOS TERMOS DE CONSENTIMENTOS DE UM ATENDIMENTO. |
| 2 | CD_ATENDIMENTO | NUMBER | N | IDENTIFICADOR DO REGISTRO DOS ATENDIMENTOS. |
| 3 | CD_TERMO_CONSENTIMENTO_PRESTAD | NUMBER | Y | IDENTIFICADOR DO REGISTRO DOS TERMOS DE CONSENTIMENTOS DE UM PRESTADOR. |
| 4 | CD_TERMO_CONSENTIMENTO_PADRAO | NUMBER | Y | IDENTIFICADOR DO TERMO DE CONSENTIMENTO PADRAO. |
| 5 | DS_OBSERVACAO | VARCHAR2 | N | DESCRICAO DO DA OBSERVACAO REFERENTE AO TERMO DE CONSENTIMENTO DO ATENDIMENTO. |
| 6 | CD_PRESTADOR | NUMBER | N | IDENTIFICADOR DO PRESTADOR QUE TERA ACESSO AO TERMO. |
| 7 | DS_SIMPLES | VARCHAR2 | N | DESCRICAO SIMPLES DO TERMO DE CONSENTIMENTO DO ATENDIMENTO. |
| 8 | LO_TECNICA | CLOB | N | DESCRICAO TECNICA DO TERMO DE CONSENTIMENTO DO ATENDIMENTO. |
| 9 | LO_SIMPLES | CLOB | Y | Descric?o simples do termo consentimento do atendimento |
| 10 | CD_DOCUMENTO_CLINICO | NUMBER | Y | O codigo do documento clinico, setado via trigger (fk) |

---

## DBAMV.PW_TERMO_CONSENTIMENTO_PADRAO
> Tabela que armazena os termos de consentimento padroes

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TERMO_CONSENTIMENTO_PADRAO | NUMBER | N | Identificador do termo de consentimento padrao |
| 2 | NM_TERMO_CONSENTIMENTO_PADRAO | VARCHAR2 | N | nome do termo de consentimento padrao |
| 3 | DS_SIMPLES | VARCHAR2 | N | descricao simples do termo de consentimento padrao |
| 4 | LO_TECNICA | CLOB | N | descricao tecnica do termo de consentimento padrao |
| 5 | DH_TERMO_CONSENTIMENTO_PADRAO | DATE | N | data e hora de criacao do termo de consentimento padrao |
| 6 | CD_USUARIO_TERMO_CONSENT_PDR | VARCHAR2 | N | identificador do usuario que cadastrou o termo de consentimento padrao |
| 7 | LO_SIMPLES | CLOB | Y | Descric?o simples do termo consentimento padr?o |

---

## DBAMV.PW_TERMO_CONSENTIMENTO_PRESTAD
> Tabela que armazena os termos de consentimento dos prestadores

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TERMO_CONSENTIMENTO_PRESTAD | NUMBER | N | Identificador do termo de consentimento do prestador |
| 2 | NM_TERMO_CONSENTIMENTO_PRESTAD | VARCHAR2 | N | nome do termo de consentimento do prestador |
| 3 | DS_SIMPLES | VARCHAR2 | N | descricao simples do termo de consentimento do prestador |
| 4 | LO_TECNICA | CLOB | N | descricao tecnica do termo de consentimento do prestador |
| 5 | DH_TERMO_CONSENTIMENTO_PRESTAD | DATE | N | data e hora de criacao do termo de consentimento do prestador |
| 6 | CD_PRESTADOR | NUMBER | N | identificador do prestador que cadastrou o termo de consentimento do prestador |
| 7 | LO_SIMPLES | CLOB | Y | Descric?o simples do termo consentimento do prestador |

---

## DBAMV.PW_TERMO_CONSENT_PDR_PRO_FAT
> Tabela que relaciona o termo de consentimento com os procedimentos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TERMO_CONSENTIMENTO_PADRAO | NUMBER | N | Identificador do termo de consentimento |
| 2 | CD_PRO_FAT | VARCHAR2 | N | Identificador do procedimento |

---

## DBAMV.PW_TERMO_CONSENT_PRES_PRO_FAT
> Tabela que relaciona o termo de consentimento do prestador com os procedimentos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TERMO_CONSENTIMENTO_PRESTAD | NUMBER | N | Identificador do termo de consentimento do prestador |
| 2 | CD_PRO_FAT | VARCHAR2 | N | Identificador do procedimento |

---

## DBAMV.PW_TIPO_AFERICAO
> TABELA CADASTRO DE ITEM DE AFERICAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TP_SINAL | VARCHAR2 | N | Tipo de identificador sinal vital |
| 2 | DS_AFERICAO | VARCHAR2 | Y | Descricao de afericao |
| 3 | SN_ATIVO | VARCHAR2 | N | ATIVO SIM OU NAO |

---

## DBAMV.PW_TIPO_CHAMADO_DOMICILIAR
> Tabela de Tipo de Chamado da Assistência Domiciliar

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIPO_CHAMADO_DOMICILIAR | NUMBER | N | Código do Tipo do Chamado da Assistência Domiciliar |
| 2 | CD_USUARIO_INCLUSAO | VARCHAR2 | N | Código do Usuário de Inclusão |
| 3 | CD_PRO_FAT | VARCHAR2 | N | Código do Procedimento |
| 4 | CD_SER_DIS | NUMBER | N | Código do Serviço do Atendimento |
| 5 | CD_TIP_MAR | NUMBER | N | Código do Tipo de Atendimento |
| 6 | DS_TIPO_CHAMADO_DOMICILIAR | VARCHAR2 | N | Descrição do Tipo de Chamado da Assistência Domiciliar |
| 7 | SN_ATIVO | VARCHAR2 | N | S/N Ativo |
| 8 | DT_CADASTRO | DATE | N | Data do Cadastro |
| 9 | SN_CO_PARTICIPACAO | VARCHAR2 | N | S/N Co participação |
| 10 | TP_UNIDADE | VARCHAR2 | N | Tipo Unidade |
| 11 | VL_UNIDADE | NUMBER | N | Valor Unidade |

---

## DBAMV.PW_TIPO_CONSULTA
> Tabela que armazena tipos de consulta foram criados no sistema.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIPO_CONSULTA | NUMBER | N | Identificador do tipo de consulta cadastrado. |
| 2 | DS_TIPO_CONSULTA | VARCHAR2 | N | Descric?o do tipo de consulta criado. |

---

## DBAMV.PW_TIPO_CRITERIO
> Repositório geral de tipos de critérios

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIPO_CRITERIO | NUMBER | N | Chave do registro - PK |
| 2 | DS_TIPO_CRITERIO | VARCHAR2 | N | Descrição do tipo de critério |
| 3 | DS_IDENTIFICADOR | VARCHAR2 | Y | Identificador único do tipo de critério |
| 4 | SN_VALIDA_VALOR_UNICO | VARCHAR2 | Y | Flag para indicar a validação do preenchimento do campo valor único |
| 5 | SN_VALIDA_FAIXA_VALOR | VARCHAR2 | Y | Flag para indicar a validação do preenchimento dos campos valor inicial e valor final |

---

## DBAMV.PW_TIPO_CRITERIO_PARAM_CONSULT
> Repositório geral de parâmetros de critérios

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIPO_CRITERIO_PARAM_CONSULT | NUMBER | N | Tipo de Critério - Chave Relacional FK |
| 2 | CD_TIPO_CRITERIO | NUMBER | N | Critério - Chave Relacional FK |
| 3 | DS_CHAVE_ITEM_RELACIONADO | VARCHAR2 | N | Descrição do parâmetro - Item Relacionado |
| 4 | DS_IDENTIFICADOR_PARAM_CONSULT | VARCHAR2 | Y | Identificador único do parâmetro - Flag de Identificação |
| 5 | VL_QUERY_PARAM_CONSULT | VARCHAR2 | Y | Consulta do parâmetro - Lista de Valores TELA |
| 6 | NR_ORDEM | NUMBER | Y | Ordem do parâmetro - Ordem de preenchimento |
| 7 | SN_OBRIGATORIO | VARCHAR2 | Y | Flag de obrigatoriedade do parâmetro |
| 8 | VL_PRECEDENCIA_CAMPOS | VARCHAR2 | Y | Campos de precedencia - Campos dependentes |

---

## DBAMV.PW_TIPO_CRITERIO_PROTOCOLO
> Define tipos dos criterios para indicar que o paciente é compatível com o protocolo.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIPO_CRITERIO | NUMBER | N | Código sequencial do tipo. |
| 2 | DS_TIPO_CRITERIO | VARCHAR2 | N | Descrição do tipo. |
| 3 | TP_TIPO_CRITERIO | VARCHAR2 | Y |  |

---

## DBAMV.PW_TIPO_DADO_ANTROPOMETRICO
> Tabela para Tipo de Dado Antropometrico

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIPO_DADO_ANTROPOMETRICO | NUMBER | N | Codigo Tipo de Dado Antropometrico |
| 2 | DS_TIPO_DADO_ANTROPOMETRICO | VARCHAR2 | N | Descric?o Tipo de Dado Antropometrico |

---

## DBAMV.PW_TIPO_DOCUMENTO
> Armazena os tipos de documentos gerados pelo MVPEP. Estes tipos s?#o carregados atrav??s de script n?#o s?#o alterados pelo sistema, apenas utilizados

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIPO_DOCUMENTO | NUMBER | N | O c??digo do tipo de documento (pk) |
| 2 | DS_TIPO_DOCUMENTO | VARCHAR2 | N | A descri???#o do tipo de documento |
| 3 | NM_TABELA | VARCHAR2 | N | O nome da tabela onde o tipo de documento ?? criado |
| 4 | SN_ASSINATURA_DIGITAL | VARCHAR2 | N | Se o tipo de documento pode ser assinado digitalmente |
| 5 | SN_PRONTUARIO | VARCHAR2 | N | Se o tipo de documento faz parte do prontu?!rio do paciente |
| 6 | TP_DOCUMENTO | VARCHAR2 | N | O identificador do tipo de documento |
| 7 | SN_PENDENCIAS_ALERTAS | VARCHAR2 | N | Indica se os documentos n?#o assinados devem aparecer na tela de pend??ncias e alertas. |
| 8 | DH_PENDENCIAS_ALERTAS | DATE | Y | Indica a partir de que data os documentos n?#o assinados devem aparecer na tela de pend??ncias e ... |
| 9 | SN_ATIVO | VARCHAR2 | N | Coloca como inativo os tipos de documento do Prontuario |
| 10 | TP_SUB_DOCUMENTO | VARCHAR2 | Y | Indica o Sub Tipo de Documento |
| 11 | SN_OBJETO | VARCHAR2 | N | Indica se o tipo de documento e um objeto |
| 12 | SN_PENDENCIA_IMPEDITIVA_ALTA | VARCHAR2 | Y | Controle se sera impeditivo a realização da alta do paciente. |
| 13 | TP_GERA_PENDENCIA_FECHAMENTO | VARCHAR2 | Y | Flag para controlar as pendêcia de fechamento de documento(O - OBRIGA, A - ALERTA, L - LIBERADO) |
| 14 | DT_INICIO_PENDENCIA_FECHAMENTO | DATE | Y | Data de início para geração de pendências de fechamento |

---

## DBAMV.PW_TIPO_DOCUMENTO_AUTENTICADO
> Tabela que armazena os tipos de documento de ac?o clinica que podem ser autenticados

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIPO_DOCUMENTO_AUTENTICADO | NUMBER | N | Identificador do tipo de documento de ac?o clinica |
| 2 | DS_TIPO_DOCUMENTO_AUTENTICADO | VARCHAR2 | Y | Descric?o do tipo de documento de ac?o clinica |
| 3 | NM_TABELA_ACAO_CLINICA | VARCHAR2 | Y | Nome da tabela de ac?o clinica associada ao tipo do documento |
| 4 | NM_PK_TABELA_ACAO_CLINICA | VARCHAR2 | Y | Nome da chave primaria da tabela de ac?o clinica associada ao tipo do documento |
| 5 | SN_ASSINATURA_DIGITAL | VARCHAR2 | Y | IDENTIFICA SE O SEGMENTO ACEITA ASSINATURA DIGITAL |
| 6 | CD_PERFIL_AMBULATORIAL_SEGMT | NUMBER | Y | Indentificador da Ac?o do Perfil Segmento |

---

## DBAMV.PW_TIPO_DOCUMENTO_CONSULTA
> Tabela que armazena que tipos de consulta estar?o acessiveis em cada tipo de documento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIPO_DOCUMENTO_CONSULTA | NUMBER | N | Identificador do vinculo da tabela que tem o registro do tipo de documento X tipo de consulta. |
| 2 | CD_TIPO_CONSULTA | NUMBER | N | Identificador do tipo de consulta que esta sendo dado acesso no registro. |
| 3 | SN_EXIGE_ATENDIMENTO | VARCHAR2 | N | Identifica se esse tipo de consulta exige atendimento. |
| 4 | NR_ORDEM | NUMBER | Y | Ordem que ira sera chamado na MODULO |
| 5 | CD_OBJETO | NUMBER | Y | Objeto de Prescric?o |

---

## DBAMV.PW_TIPO_DOCUMENTO_MODULO
> Tabela que armazena que MODULOs estar?o pertencendo ao tipo de documento escolhido

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIPO_DOCUMENTO_MODULO | NUMBER | N | Identificador do registro de MODULOs de um tipo de documento. |
| 2 | CD_MODULO | VARCHAR2 | N | Identifica que modulo/tipo sera chamado na MODULO |
| 3 | NM_TITULO | VARCHAR2 | N | Nome que ira aparecer em cada MODULO na tela. |
| 4 | NR_ORDEM | NUMBER | Y | Ordem que ira sera chamado na MODULO |
| 5 | DS_CAMINHO | VARCHAR2 | Y | Caso esse modulo tenha um caminho diferente do padrao MV, utilizar esse campo |
| 6 | CD_TIPO_DOCUMENTO_CONSULTA | NUMBER | N | Codigo do tipo da Consulta |

---

## DBAMV.PW_TIPO_DOCUMENTO_MODULO_PARAM
> Tabela que armazena que tipos de consulta est?o disponiveis para cada documento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIPO_DOCUMENTO_MODULO_PARAM | NUMBER | N | Identificador da tabela de perfil/modulo com os parametros do modulo. |
| 2 | CD_MODULO | VARCHAR2 | N | Identificador do modulo que esta sendo usado |
| 3 | CD_PARAMETRO | VARCHAR2 | N | Parametro do modulo que esta sendo referenciado |
| 4 | CD_TIPO_DOCUMENTO_MODULO | NUMBER | N | Tipo de Documento Modulo |
| 5 | NM_VALOR | VARCHAR2 | N | Valor utilizado como referencia. |
| 6 | NR_VERSAO_EDITOR | NUMBER | Y | Número da versão do editor para os documentos |

---

## DBAMV.PW_TIPO_INTEGRACAO
> Descreve a natureza da integracao realizada

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIPO_INTEGRACAO | NUMBER | N | Codigo do tipo de integracao |
| 2 | DESCRICAO | VARCHAR2 | N | Descreve o tipo de integracao |
| 3 | CHAVE | VARCHAR2 | N | Codigo identificador unico da integracao |

---

## DBAMV.PW_TIPO_INTERVENCAO
> Tabela para armazenar cadastros dos tipos de intervenção farmacêutica

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIPO_INTERVENCAO | NUMBER | N | Código do tipo de intervenção farmacêutica chave primaria |
| 2 | DS_TIPO_INTERVENCAO | VARCHAR2 | Y | Descrição do tipo de intervenção farmacêutica |
| 3 | SN_ATIVO | VARCHAR2 | Y | Campo que informa se o tipo de intervenção farmacêutica estará ativa SIM/NÃO |
| 4 | TP_INTERVENCAO | VARCHAR2 | Y | Tipo de intervencao farmaceutica. "A" - Intervencao de Alteracao, "B" - Intervencao de Bloqueio |

---

## DBAMV.PW_TIPO_INTERVENCAO_EMPRESA
> Tabela para armazenar cadastros dos tipos de intervenção farmacêutica por empresa

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIPO_INTERVENCAO_EMP | NUMBER | N | Código do tipo de intervenção farmacêutica por empresa chave primaria |
| 2 | CD_TIPO_INTERVENCAO | NUMBER | N | Código do tipo de intervenção farmacêutica por empresa |
| 3 | CD_MULTI_EMPRESA | NUMBER | N | Campo que informa a empresa reelacioada ao tipo de intervenção |

---

## DBAMV.PW_TIPO_JUSTIF_PRONTUARIO_VIP
> Tabela para armazenar os tipos de justificativas

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIPO_JUSTIF_PRONTUARIO_VIP | NUMBER | N | Cdigo do tipo de justificativa |
| 2 | DS_TIPO_JUSTIF_PRONTUARIO_VIP | VARCHAR2 | N | Descrio do tipo de justificativa |
| 3 | TP_JUSTIF_PRONTUARIO_VIP | VARCHAR2 | N | Tipo de justificativa/funo. Podendo ser (M - Mdico, E - Enfermeiro, N - Nutricionista, F - Fisiot... |
| 4 | SN_ATIVO | VARCHAR2 | N | Se registro est ativo. Podendo ser (S, N) |

---

## DBAMV.PW_TIPO_PENDENCIA_PRONTUARIO
> Tabela de pendencias do prontuario.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIPO_PENDENCIA_PRONTUARIO | NUMBER | N | Codigo da pendencia. |
| 2 | TP_TIPO_PENDENCIA_PRONTUARIO | VARCHAR2 | N | Indica o tipo de pendencia. |
| 3 | DS_TIPO_PENDENCIA_PRONTUARIO | VARCHAR2 | N | Descricao da pendencia. |
| 4 | DS_OBSERVACAO | VARCHAR2 | N |  |
| 5 | NR_TOLERANCIA | NUMBER | N |  |
| 6 | SN_RESOLUCAO_MANUAL | VARCHAR2 | N |  |
| 7 | SN_ATIVO | VARCHAR2 | N | Valor default N |

---

## DBAMV.PW_TIPO_REPOSITORIO
> TABELA PARA LISTAR OS TIPOS DE REPOSITORIO DOs ASSINANTES

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIPO_REPOSITORIO | NUMBER | N | Identificador do tipo de repositorio para assinatura digital |
| 2 | DS_TIPO_REPOSITORIO | VARCHAR2 | N | Descric?o do Tipo de repositorio que o usuario pode ter H - HSM; D - Dispositivo; A - Arquivo |
| 3 | SN_ATIVO | VARCHAR2 | N | Se o tipo do repositorio esta ativo/e permitido para o hospital |

---

## DBAMV.PW_TIPO_SEGMENTO
> Tabela que armazena os tipos de segmento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIPO_SEGMENTO | NUMBER | N | codigo do segmento |
| 2 | DS_TIPO_SEGMENTO | VARCHAR2 | N | descricao do tipo de segmento |
| 3 | SN_ATIVO | VARCHAR2 | Y | indica se o campo esta ativo ou nao |
| 4 | VL_TIPO_SEGMENTO | VARCHAR2 | Y | Identifica???#o do tipo de segmento de acordo com sua funcionalidade e imagem |

---

## DBAMV.PW_TIPO_SINAL_VITAL
> Tabela para Tipo de Sinal Vital

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIPO_SINAL_VITAL | NUMBER | N | Codigo Tipo de Sinal Vital |
| 2 | DS_TIPO_SINAL_VITAL | VARCHAR2 | N | Descric?o Tipo de Sinal Vital |

---

## DBAMV.PW_TIPO_VINCULO
> TABELA PARA LISTAR OS TIPOS DE VINCULO DO ASSINANTE SUBSTITUTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIPO_VINCULO | NUMBER | N | Identificador do tipo de vinculo para assinatura digital |
| 2 | DS_TIPO_VINCULO | VARCHAR2 | N | Descric?o do Tipo de vinculo que o usuario pode ter 1 - Substitue; 2 - Atesta; 3 - Valida |
| 3 | SN_OBRIGA_ASSINATURA | VARCHAR2 | N | Se o tipo do vinculo obriga o usuario a ter assinatura tambem |

---

## DBAMV.PW_TIP_PRESC_EVENTO_ADV_PAC
> tabela referente aos itens de prescrição, para os eventos adversos do paciente

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIP_PRESC_EVENTO_ADV_PAC | NUMBER | N | Código do item de prescrição por paciente |
| 2 | CD_TIP_PRESC | NUMBER | N | Código do item de prescrição |
| 3 | CD_PROBLEMA | NUMBER | N | Código do evento adverso por paciente |

---

## DBAMV.PW_TIP_PRESC_EVT_ADV_PAC_VER
> tabela referente aos itens de prescriï¿½ï¿½o, para os eventos adversos do paciente

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIP_PRESC_EVT_ADV_PAC_VER | NUMBER | N | Cï¿½digo da versÃ£o do item de prescriï¿½ï¿½o por paciente |
| 2 | CD_DOCUMENTO_CLINICO | NUMBER | N | Cï¿½digo do documento clinico da versÃ£o |
| 3 | CD_TIP_PRESC_EVENTO_ADV_PAC | NUMBER | N | Cï¿½digo do item de prescriï¿½ï¿½o por paciente |
| 4 | CD_TIP_PRESC | NUMBER | N | Cï¿½digo do item de prescriï¿½ï¿½o |
| 5 | CD_PROBLEMA | NUMBER | N | Cï¿½digo do evento adverso por paciente |

---

## DBAMV.PW_TRANSC_CID_PRE_PAD
> Tabela que faz o relacionamento entre os CID e prescricao padrao

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TRANSC_CID_PRE_PAD | NUMBER | N |  |
| 2 | CD_CID | VARCHAR2 | N |  |
| 3 | CD_PRE_PAD | NUMBER | N |  |

---

## DBAMV.PW_T_FIGO
> Tabela de cadastro da relação do FIGO com os resumos esquemáticos do tipo T para CIDs ginecológicos.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_T_FIGO | NUMBER | N | Código da relação do T do TNMxFIGO |
| 2 | CD_FIGO | VARCHAR2 | N | Código do FIGO |
| 3 | DS_FIGO | VARCHAR2 | N | Descrição do FIGO |
| 4 | CD_RESUMO_ESQUEMATICO | NUMBER | N | Código do resumo esquemático |
| 5 | CD_LOCALIZACAO_ANATOMICA | NUMBER | Y | Código da localização anatômica |
| 6 | CD_LOCALIZACAO_PRIMARIA | NUMBER | N | Código da localização primária |
| 7 | CD_SUBLOCALIZACAO_ANATOMICA | NUMBER | Y | Código da sublocalização anatômica |

---

## DBAMV.PW_UNIDADE_AFERICAO
> Tabela para UNIDADE Aferic?o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_UNIDADE_AFERICAO | NUMBER | N | Codigo UNIDADE Aferic?o |
| 2 | DS_UNIDADE_AFERICAO | VARCHAR2 | N | Descric?o UNIDADE Aferic?o |
| 3 | SN_ATIVO | VARCHAR2 | N | Se UNIDADE Aferic?o esta Ativo |
| 4 | TP_UNIDADE | VARCHAR2 | Y | Tipo da Unidade AferiÃ§Ã£o |

---

## DBAMV.PW_UNIDADE_DURACAO
> Tabela para Unidade Durac?o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_UNIDADE_DURACAO | NUMBER | N | Codigo Unidade Durac?o |
| 2 | DS_UNIDADE_DURACAO | VARCHAR2 | Y | Descric?o Unidade Durac?o |
| 3 | SN_ATIVO | VARCHAR2 | N | Se a Unidade Durac?o esta Ativa |
| 4 | QT_DIAS | NUMBER | N | Quantidade de dias da durac?o. |

---

## DBAMV.PW_UNIDADE_FORMULA
> Tabela para armazenar as unidades das fórmulas

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_UNIDADE_FORMULA | NUMBER | N | Código da unidade |
| 2 | DS_UNIDADE_FORMULA | VARCHAR2 | N | Descrição da unidade |

---

## DBAMV.PW_USUARIO_PRIVILEGIO_DOMIC
> Cadastro de usuário com privilégio de seleção de prestador

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_USUARIO_PRIVILEGIO_DOMIC | NUMBER | N | Código do usuário com privilégio de seleção de prestador |
| 2 | CD_USUARIO | VARCHAR2 | N | Código do usuário do sistema com privilégio de seleção de prestador |
| 3 | CD_USUARIO_INCLUSAO | VARCHAR2 | N | Código do usuário do sistema que cadastrou o usuário com privilégio de seleção de prestador |
| 4 | DT_CADASTRO | DATE | N | Data de cadastro do usuário com privilégio de seleção de prestador |

---

## DBAMV.PW_VACINA_DOSE_PACIENTE
> Tabela que armazena as doses das vacinas

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_VACINA_DOSE_PACIENTE | NUMBER | N | dose da vacina do paciente |
| 2 | CD_DOSE_VACINA | NUMBER | Y | codigo da vacina |
| 3 | CD_PACIENTE | NUMBER | Y | codigo do paciente |
| 4 | DT_VACINA | DATE | Y | data da imunizac?o |
| 5 | DS_OBSERVACAO | VARCHAR2 | Y | observacao da imunizac?o |
| 6 | NR_CICLO | NUMBER | N | codigo do ciclo |
| 7 | SN_ATIVO | VARCHAR2 | N | Indica se a vacina registrada para o paciente esta ativa. Exclus?o logica. |

---

## DBAMV.PW_VALOR_PK_TABELA_ACAO
> Tabela que armazena os documento de ac?o clinica autenticados pendente

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_VALOR_PK_TABELA_ACAO | NUMBER | N | Identificador do documento de ac?o clinica pendente de assinatura |
| 2 | VL_CAMPO_TABELA_ACAO | VARCHAR2 | N | Valor do identificador do registro da ac?o clinica associada ao documento |
| 3 | CD_CAMPO_PK_TABELA_ACAO | NUMBER | N | Identificador da pessoa que gerou a pendencia de assinatura do documento |
| 4 | CD_DOCUMENTO_ACAO | NUMBER | N | Instante em que o documento de ac?o clinica foi autenticado |

---

## DBAMV.PW_VERSAO_BLOCO
> Tabela para Vers?o Bloco

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_VERSAO_BLOCO | NUMBER | N | Codigo Vers?o Bloco |
| 2 | DT_VERSAO | DATE | Y | Data Vers?o Bloco |
| 3 | NR_VERSAO | NUMBER | Y | Numero da Vers?o Bloco |
| 4 | SN_PUBLICADO | VARCHAR2 | Y | Se a Vers?o Bloco esta Publicada |
| 5 | CD_BLOCO | NUMBER | Y | Codigo Bloco |

---

## DBAMV.PW_VERSAO_FORMULARIO
> Tabela para Vers?o Formulario

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_VERSAO_FORMULARIO | NUMBER | N | Codigo Vers?o Formulario |
| 2 | DT_VERSAO | DATE | Y | Data Hora da Vers?o Formulario |
| 3 | NR_VERSAO | NUMBER | Y | Numero da Vers?o Formulario |
| 4 | SN_PUBLICADO | VARCHAR2 | Y | Se a Vers?o Formulario esta Publicada |
| 5 | CD_GRUPO_PERGUNTA | NUMBER | Y | Codigo Grupo Pergunta |
| 6 | CD_FORMULARIO | NUMBER | Y | Codigo Formulario |

---

## DBAMV.PW_VERSAO_SEGMENTO
> Tabela para Vers?o Segmento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_VERSAO_SEGMENTO | NUMBER | N | Codigo Vers?o Segmento |
| 2 | DT_VERSAO | DATE | Y | Data da Vers?o Segmento |
| 3 | NR_VERSAO | NUMBER | Y | Numero da Vers?o Segmento |
| 4 | SN_PUBLICADO | VARCHAR2 | Y | Se a Vers?o Segmento esta Publicada |
| 5 | CD_SEGMENTO | NUMBER | Y | Codigo Segmento |

---

## DBAMV.PW_VINCULO_DOADOR
> Tabela para registro de vinculo do doador

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_VINCULO_DOADOR | NUMBER | N | Codigo do Vinculo |
| 2 | CD_TRANSPLANTE_RGCT | NUMBER | N | Codigo do RGCT |
| 3 | CD_PACIENTE | NUMBER | N | Codigo do Paciente |
| 4 | DT_CADASTRO | DATE | Y | Data do Cadastro |
| 5 | CD_USUARIO | VARCHAR2 | N | Nome do usuario |
| 6 | CD_ORGAO | NUMBER | N | Codigo do Org?o |
| 7 | CD_GRAU_PARENTESCO | NUMBER | Y | Grau de parentesco |
| 8 | OBSERVACAO | VARCHAR2 | Y | Observac?o |
| 9 | STATUS_DOACAO | CHAR | Y | Status Doac?o NT- NAO TRANSPLANTADO TR - TRANSPLANTADO AG - AGUARDANDO DR - DOADO REJEITADO DA - ... |
| 10 | SN_PARENTE | CHAR | N |  |
| 11 | CD_RGCT_DOADOR | VARCHAR2 | Y | Código RGCT do doador. |
| 12 | DT_ALTERACAO | DATE | Y | Data da última alteração do vínculo do doador. |

---

## DBAMV.PW_VINCULO_USUARIO
> Tabela que armazena as pessoas que tem algum vinculo de autorizac?o de documentos pendentes

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_VINCULO_USUARIO | NUMBER | N | Identificador do vinculo de um usuario que assina digitalmente |
| 2 | CD_TIPO_VINCULO | NUMBER | N | Valor do identificador da forma que o usuario tem vinculo de assinatura com outra pessoa |
| 3 | CD_ASSINANTE | NUMBER | N | Valor do identificador da pessoa tem vinculo de assinatura com outro profissional |
| 4 | CD_ASSINANTE_RESPONSAVEL | NUMBER | N | Identificador da pessoa que assina pela pessoa definida no campo acima |
| 5 | SN_ATIVO | VARCHAR2 | N | Define se o vinculo do usuario esta ativo |

---

## DBAMV.PW_VISUALIZADOR_IMPRESSAO_TEMP
> Armazena as informações da impressão por visualizador pdf do paciente.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_VISUALIZADOR_IMPRESSAO_TEMP | NUMBER | N | Indica o código dos registros da tabela impressão por visualizador pdf para o paciente(pk). |
| 2 | CD_VISUALIZADOR | NUMBER | Y | Indica o tipo de impressão que será realizada. Por visualizador - VIS |
| 3 | DH_INICIO_IMPRESSAO | DATE | Y | Código do paciente |
| 4 | DH_PARTE_IMPRESSAO | DATE | Y | Código do prestador que está realizando a impressão por visualizador pdf. |
| 5 | CD_USUARIO_IMPRESSAO | VARCHAR2 | Y | Status da impressão do prontuário. Agendado - AGE, Gerado - GER, Impresso - IMP |
| 6 | LO_PARTE_IMPRESSAO | BLOB | Y | Armazena os pdfs impressos do paciente. |

---

## DBAMV.PW_VISUALIZADOR_PDF
> Armazena as informações da impressão por visualizador pdf do paciente.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_VISUALIZADOR | NUMBER | N | Indica o código dos registros da tabela impressão por visualizador pdf para o paciente(pk). |
| 2 | TP_IMPRESSAO | VARCHAR2 | Y | Indica o tipo de impressão que será realizada. Por visualizador - VIS |
| 3 | CD_PACIENTE | NUMBER | Y | Código do paciente |
| 4 | CD_PRESTADOR | NUMBER | Y | Código do prestador que está realizando a impressão por visualizador pdf. |
| 5 | TP_STATUS | VARCHAR2 | Y | Status da impressão do prontuário. Agendado - AGE, Gerado - GER, Impresso - IMP |
| 6 | LO_DOCUMENTO_VISUALIZADOR | BLOB | Y | Armazena os pdfs impressos do paciente. |

---

## DBAMV.SAE_CARACTERISTICA_DIAGNOSTICO
> Relaciona as caracteristicas definidoras, fatores de risco e fatores realcionados foram selecionados para determinado diagnostico de enfermagem

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CARACTERISTICA_DIAGNOSTICO | NUMBER | N | O codigo identificador sintetico (pk) |
| 2 | CD_DIAGNOSTICO_PACIENTE | NUMBER | N | FK. O codigo do diagnostico associado ao diagnostico de enfermagem. Note que um diagnostico de en... |
| 3 | CD_CARACTERISTICA_FATOR | NUMBER | N | FK. O codigo da caracteristica definidora, fator de risco ou fator realcionado que foi selecionad... |

---

## DBAMV.SAE_CARACTERISTICA_FATOR
> TABELA PARA A CARACTERISTICA FATOR REFERENTE A TAXONOMIA II DO PROTOCOLO NANDA, SUAS CARACTERISTICAS DEFINIDORAS, DOS FATORES DE RISCO E DOS FATORES RELACIONADOS.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CARACTERISTICA_FATOR | NUMBER | N | CODIGO IDENTIFICADOR DO CARACTERISTICAFATOR |
| 2 | DS_CARACTERISTICA_FATOR | VARCHAR2 | N | DESCRIC?O DO CARACTERISTICAFATOR |
| 3 | TP_CARACTERISTICA_FATOR | VARCHAR2 | N | TIPO DO CARACTERISTICAFATOR |
| 4 | DH_INICIO_VIGENCIA | DATE | Y | DATA DE INICIO DA VIGENCIA |
| 5 | DH_FIM_VIGENCIA | DATE | Y | DATA DE TERMINO DA VIGENCIA |
| 6 | SN_ATIVO | VARCHAR2 | N | DETERMINA SE O ITEM ESTA ATIVO OU INATIVO PARA UTILIZAC?O |
| 7 | CD_DIAGNOSTICO | NUMBER | Y | Codigo do Diagnostico |

---

## DBAMV.SAE_CARACT_DIAG_ENFE_PAC
> Tabela que armazena a caracteristica do paciente, relacionada com o diagnostico selecionado.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CARACT_DIAG_ENFE_PAC | NUMBER | N | Codigo da associac?o de uma CaracteristicaFator com um DiagnosticoEnfermagemPaciente - PK |
| 2 | CD_DIAGNOSTICO_PACIENTE | NUMBER | N | Identifica a qual diagnosticoEnfermagemPaciente estes dados est?o vinculados. - FK |
| 3 | CD_CARACTERISTICA_FATOR | NUMBER | Y | Identifica a CaracteristicaFator com que o paciente foi diagnosticado. - FK |
| 4 | CD_ITEM_CARACTERISTICA_FATOR | NUMBER | Y | Identifica o ItemCaracteristicaFator com que o paciente foi diagnosticado. |

---

## DBAMV.SAE_CLASSE
> ARMAZENA AS CLASSES DO SAE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CLASSE | NUMBER | N | CODIGO DA CLASSE (PK) |
| 2 | CD_DOMINIO | NUMBER | N | CODIGO DO DOMINIO (FK) |
| 3 | NR_CLASSE | NUMBER | N | NUMERO PARA ORDENAC?O E IDENTIFICAC?O DAS CLASSES |
| 4 | DS_CLASSE | VARCHAR2 | N | DESCRIC?O DA CLASSE |
| 5 | DS_DEFINICAO | VARCHAR2 | N | DEFINIC?O DA CLASSE |
| 6 | DH_INICIO_VIGENCIA | DATE | Y | DATA INICIAL DA VIGENCIA |
| 7 | DH_FIM_VIGENCIA | DATE | Y | DATA FINAL DA VIGENCIA |
| 8 | SN_ATIVO | VARCHAR2 | N | INDICA SE O REGISTRO ESTA ATIVO |
| 9 | TP_CLASSE | VARCHAR2 | Y | Tipo do dominio: Diagnostico(D), Resultado(R) ou da Intervenção (I). |
| 10 | CODIGO | VARCHAR2 | Y | Código do domínio |

---

## DBAMV.SAE_DIAGNOSTICO
> TABELA DE DIAGNOSTICO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DIAGNOSTICO | NUMBER | N | CODIGO DO DIAGNOSTICO - PRIMARY KEY |
| 2 | CD_TIPO_DIAGNOSTICO | NUMBER | N | CODIGO DO TIPO DE DIAGNOSTICO - FOREIGN KEY |
| 3 | DS_ENUNCIADO | VARCHAR2 | N | DESCRICAO DO ENUNCIADO |
| 4 | NR_CODIGO | NUMBER | N | NUMERO DO CODIGO |
| 5 | DS_ANO_APROVACAO | VARCHAR2 | N | DESCRICAO DO ANO DE APROVACAO |
| 6 | DS_DEFINICAO | VARCHAR2 | N | DESCRICAO DA DEFINICAO |
| 7 | DS_NOTA | VARCHAR2 | Y | DESCRICAO DA NOTA |
| 8 | SN_ATIVO | VARCHAR2 | N | INDICA SE O DIAGNOSTICO ENCONTRA-SE ATIVO OU INATIVO. POR PADRAO ESTARA INATIVO. |
| 9 | CD_CARACTERISTICA_FATOR | NUMBER | Y | Caracteristica Fator primaria de um Diagnostico. |

---

## DBAMV.SAE_DIAGNOSTICO_ASSOCIACAO
> TABELA USADA PARA ASSOCIAR DIAGNOSTICOS COM GRUPOS OU SUB-GRUPOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DIAGNOSTICO_ASSOCIACAO | NUMBER | N | CODIGO DA ASSOCIAC?O ENTRE DIAGNOSTICO, GRUPO E SUB-GRUPO ? PK |
| 2 | CD_DIAGNOSTICO | NUMBER | N | CODIGO DO DIAGNOSTICO ? FK |
| 3 | CD_GRUPO_CARACTERISTICA_FTR | NUMBER | Y | CODIGO DO GRUPO ? FK |
| 4 | CD_SUBGRUPO_CARACT_FTR | NUMBER | Y | CODIGO DO SUB-GRUPO ? FK |

---

## DBAMV.SAE_DIAGNOSTICO_CARACT_FTR
> TABELA USADA PARA ASSOCIAR DIAGNOSTICO ASSOCIACAO COM CARACTERISTICA FATOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DIAGNOSTICO_CARACT_FTR | NUMBER | N | CODIGO DA ASSOCIAC?O DE DIAGNOSTICO ASSOCIACAO COM CARACTERISTICA FATOR ? PK |
| 2 | CD_DIAGNOSTICO_ASSOCIACAO | NUMBER | N | CODIGO DO DIAGNOSTICO ASSOCIACAO ? FK |
| 3 | CD_CARACTERISTICA_FATOR | NUMBER | N | CODIGO DA CARACTERISTICA FATOR ? FK |

---

## DBAMV.SAE_DIAGNOSTICO_CLASSE
> TABELA USADA PARA ASSOCIAR DIAGNOSTICOS E CLASSES

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DIAGNOSTICO_CLASSE | NUMBER | N | CODIGO DE ASSOCIACAO ENTRE DIAGNOSTICO E CLASSE ? PK |
| 2 | CD_DIAGNOSTICO | NUMBER | N | CODIGO DO DIAGNOSTICO - FK |
| 3 | CD_CLASSE | NUMBER | N | CODIGO DA CLASSE ? FK |

---

## DBAMV.SAE_DIAGNOSTICO_ITEM_CRCT_FTR
> TABELA USADA PARA ASSOCIAR DIAGNOSTICO CARACTERISTICA FATOR COM ITEM CARACTERISTICA FATOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DIAGNOSTICO_ITEM_CARACT_FTR | NUMBER | N | CODIGO DA ASSOCIAC?O DE DIAGNOSTICO CARACTERISTICA FATOR COM ITEM CARACTERISTICA FATOR ? PK |
| 2 | CD_ITEM_CARACTERISTICA_FATOR | NUMBER | N | CODIGO DO ITEM DE CARACTERISTICA FATOR ? FK |
| 3 | CD_DIAGNOSTICO_CARACT_FTR | NUMBER | N | CODIGO DO DIAGNOSTICO CARACTERISTICA FATOR ? PK |

---

## DBAMV.SAE_DIAGNOSTICO_PACIENTE
> Registro de diagnosticos de pacientes.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DIAGNOSTICO_PACIENTE | NUMBER | N | Codigo da associac?o entre DiagnosticoEnfermagemRealizado e um DiagnosticoEnfermagem - PRIMARY KEY |
| 2 | DS_OBSERVACAO | VARCHAR2 | Y | Observac?o feita pelo enfermeiro sobre o paciente. |
| 3 | CD_DIAGNOSTICO | NUMBER | N | Identifica o DiagnosticoEnfermagem com que o paciente foi diagnosticado - FK |
| 4 | CD_DIAGNOSTICO_REALIZADO | NUMBER | N | Identifica a qual DiagnosticoEnfermagemRealizado estes dados est?o associados - FK |
| 5 | CD_REGISTRO_CLINICO | NUMBER | Y | Codigo do registro clinico associado |

---

## DBAMV.SAE_DIAGNOSTICO_REALIZADO
> REGISTRO DE DIAGNOSTICOS DE PACIENTES REALIZADOS PELA ENFERMAGEM.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DIAGNOSTICO_REALIZADO | NUMBER | N | CODIGO DA REALIZAC?O DE UM DIAGNOSTICO - PRIMARY KEY |
| 2 | DH_INICIO_VIGENCIA | DATE | N | DATA DE INICIO DA VIGENCIA |
| 3 | DH_FIM_VIGENCIA | DATE | Y | DATA DE FIM DA VIGENCIA |
| 4 | CD_PACIENTE | NUMBER | N | IDENTIFICA O PACIENTE QUE ESTA SENDO DIAGNOSTICADO - FK |
| 5 | CD_SETOR | NUMBER | N | IDENTIFICA O SETOR EM QUE O USUARIO ESTA LOGADO - FK |
| 6 | CD_ATENDIMENTO | NUMBER | N | IDENTIFICA O CODIGO DO ATENDIMENTO DO PACIENTE - FK |
| 7 | CD_PRESTADOR | NUMBER | N | IDENTIFICA O PRESTADOR QUE REALIZOU O DIAGNOSTICO - FK |
| 8 | SN_FINALIZADO | VARCHAR2 | N | INDICA SE O DIAGNOSTICO FOI FINALIZADO. POR PADR?O SERA N?O FINALIZADO |
| 9 | DS_OBSERVACAO | VARCHAR2 | Y | Observac?o feita pelo enfermeiro sobre o paciente. |
| 10 | CD_DOCUMENTO_CLINICO | NUMBER | Y | O codigo do documento clinico |

---

## DBAMV.SAE_DIAGNOSTICO_RESPOSTA
> Tabela com as respostas do diagnostico

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DIAGNOSTICO_RESPOSTA | NUMBER | N | Codigo da resposta. |
| 2 | CD_DIAGNOSTICO | NUMBER | N | Codigo do diagnostico associado. |
| 3 | CD_RESPOSTA | NUMBER | Y | Codigo da resposta associada. |

---

## DBAMV.SAE_DIAGNOSTICO_SETOR
> TABELA USADA PARA ASSOCIAR UM DIAGNOSTICO A UM SETOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DIAGNOSTICO_SETOR | NUMBER | N | CODIGO DE ASSOCIACAO ENTRE DIAGNOSTICO E SETOR ? PK |
| 2 | CD_DIAGNOSTICO | NUMBER | N | CODIGO DO DIAGNOSTICO - FK |
| 3 | CD_SETOR | NUMBER | N | CODIGO DO SETOR ? FK |

---

## DBAMV.SAE_DOMINIO
> ARMAZENA OS DOMINIOS DO SAE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DOMINIO | NUMBER | N | CODIGO DO DOMINIO (PK) |
| 2 | NR_DOMINIO | NUMBER | N | NUMERO PARA ORDENAC?O E IDENTIFICAC?O DOS DOMINIOS |
| 3 | DS_DOMINIO | VARCHAR2 | N | DESCRIC?O DO DOMINIO |
| 4 | DS_DEFINICAO | VARCHAR2 | N | DEFINIC?O DO DOMINIO |
| 5 | DH_INICIO_VIGENCIA | DATE | Y | DATA INICIAL DA VIGENCIA |
| 6 | DH_FIM_VIGENCIA | DATE | Y | DATA FINAL DA VIGENCIA |
| 7 | SN_ATIVO | VARCHAR2 | N | INDICA SE O REGISTRO ESTA ATIVO |
| 8 | TP_DOMINIO | VARCHAR2 | Y | Tipo do dominio: Diagnostico(D), Resultado(R) ou da Intervenção (I). |
| 9 | CODIGO | VARCHAR2 | Y | Código do domínio |

---

## DBAMV.SAE_GRUPO_CARACTERISTICA_FTR
> TABELA DE GRUPOS EM CARACTERISTICA FATOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GRUPO_CARACTERISTICA_FTR | NUMBER | N | CODIGO DO GRUPO |
| 2 | DS_GRUPO_CARACTERISTICA_FTR | VARCHAR2 | N | DESCRIC?O DO GRUPO |
| 3 | SN_ATIVO | VARCHAR2 | N | INDICA SE O GRUPO ENCONTRA-SE ATIVO OU INATIVO. POR PADR?O ESTARA INATIVO. |
| 4 | TP_GRUPO_CARACTERISTICA_FTR | VARCHAR2 | Y | TIPO DO GRUPO DE ACORDO COM AS CARACTERISTICAS FATOR |

---

## DBAMV.SAE_GRUPO_HISTORICO_ENFERMAGEM
> Tabela com os grupos do historico de enfermagem

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GRUPO | NUMBER | N | Codigo do grupo ao qual a pergunta pertence. |
| 2 | DS_GRUPO | VARCHAR2 | N | Descric?o do Grupo de perguntas do historico de enfermagem. |
| 3 | TP_GRUPO | VARCHAR2 | N | Tipo do Grupo: E( Entrevista), N(Necessidades Basicas), R(Realizar Aferic?o), S(Sistemas), F(Fina... |
| 4 | NR_ORDEM | NUMBER | N | Ordem em que os grupos ser?o apresentadas |
| 5 | SN_ATIVO | VARCHAR2 | N | Grupo ativo para ser utilizada no sistema. |
| 6 | CD_SAE_TIPO_GRUPO | NUMBER | N | Sequencial sobre a informação se o grupo do SAE apresenta observação |

---

## DBAMV.SAE_HISTORICO_ENFERMAGEM
> Tabela com Historico de enfermagem do paciente. Utilizado para sugerir diagnosticos de enfermagem.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_HISTORICO_ENFERMAGEM | NUMBER | N | Codigo do historico de enfermagem do paciente. |
| 2 | DS_OBS_ENTREVISTA | VARCHAR2 | Y | Observac?o para as perguntas do tipo E(Entrevista). |
| 3 | DS_OBS_NECESSIDADES_HUMANAS | VARCHAR2 | Y | Observac?o para as perguntas do tipo E(Entrevista). |
| 4 | DS_OBS_SISTEMAS | VARCHAR2 | Y | Observac?o para as perguntas do tipo S(Sistemas). |
| 5 | SN_ATIVO | VARCHAR2 | N | Se esta ativo |
| 6 | CD_PACIENTE | NUMBER | N | Codigo do paciente |
| 7 | CD_PRESTADOR | NUMBER | N | Codigo do prestador |
| 8 | DT_INICIO | DATE | N | Data de inicio |
| 9 | DT_FIM | DATE | Y | Data de fim |
| 10 | CD_ATENDIMENTO | NUMBER | N | Codigo do atendimento. |
| 11 | CD_COLETA_SINAL_VITAL | NUMBER | Y | Codigo do Sinal vital. |
| 12 | DS_JUSTIFICATIVA | VARCHAR2 | Y | Justificativa da suspens?o do Historico de Enfermagem |
| 13 | CD_DOCUMENTO_CLINICO | NUMBER | Y | O codigo do documento clinico, setado via trigger (fk) |

---

## DBAMV.SAE_ITEM_CARACTERISTICA_FATOR
> TABELA DE ITEMS DA CARACTERISTICA FATOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CARACTERISTICA_FATOR | NUMBER | N | CODIGO DE CARACTERISTICA FATOR - FOREIGN KEY |
| 2 | CD_ITEM_CARACTERISTICA_FATOR | NUMBER | N | CODIGO DE ITEM DA CARACTERISTICA FATOR - PRIMARY KEY |
| 3 | DS_ITEM_CARACTERISTICA_FATOR | VARCHAR2 | N | DESCRIC?O DE ITEM DA CARACTERISTICA FATOR |
| 4 | SN_ATIVO | VARCHAR2 | N | INDICA SE O ITEM ENCONTRA-SE ATIVO OU INATIVO. POR PADR?O ESTARA INATIVO. |

---

## DBAMV.SAE_LIMITE_RESP_HIST_ENFERMG
> Tabela com os Limites minimo e maximo para o valor da resposta de diagnostico de enfermagem do tipo I.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LIMITES | NUMBER | N | Codigo do limite da resposta de diagnostico de enfermagem. |
| 2 | VL_MINIMO | NUMBER | N | Valor minimo da resposta de diagnostico de enfermagem. |
| 3 | VL_MAXIMO | NUMBER | N | Valor maximo da resposta de diagnostico de enfermagem. |

---

## DBAMV.SAE_PERGUNTA_HISTORICO_ENFERMG
> Tabela com as perguntas do historico de enfermagem

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PERGUNTA | NUMBER | N | Codigo da pergunta a qual a resposta esta relacionada. |
| 2 | CD_GRUPO | NUMBER | N | Codigo do grupo ao qual a pergunta pertence. |
| 3 | DS_PERGUNTA | VARCHAR2 | N | Descric?o da pergunta. |
| 4 | SN_OBRIGATORIO | VARCHAR2 | N | Define se esta pergunta exige que ao menos uma de suas respostas seja preenchida. |
| 5 | NR_ORDEM | NUMBER | N | Ordem em que as perguntas ser?o apresentadas |
| 6 | SN_ATIVO | VARCHAR2 | N | Pergunta ativa para ser utilizada no sistema. |

---

## DBAMV.SAE_PERG_CONF_HIST_ENFE_SETOR
> TABELA DE REGISTRO DO VINCULO DO HISTORICO DE ENFERMAGEM DO PACIENTE DO SAE COM AS PERGUNTAS EXIBIDAS NO SETOR DO ATENDIMENTO DO PACIENTE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SAE_PERG_CONF_HIST_ENFE_ST | NUMBER | N | CÓDIGO DA CHAVE PRIMARIA DA TABELA. |
| 2 | CD_SETOR | NUMBER | Y | CÓDIGO DO SETOR. |
| 3 | CD_PERGUNTA | NUMBER | Y | CÓDIGO DA ESPECIALIDADE. |
| 4 | CD_HISTORICO_ENFERMAGEM | NUMBER | Y | CÓDIGO DO HISTÓRICO DE ENFERMAGEM |

---

## DBAMV.SAE_RELACIONA_CARACT_FTR
> Tabela com as definic?es

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_RELACIONA_CARACT_FTR | NUMBER | N | Codigo da definic?o. |
| 2 | DS_RELACIONA_CARACT_FTR | VARCHAR2 | N | Descric?o da definic?o. |
| 3 | CD_CARACTERISTICA_FATOR | NUMBER | N | Codigo da Caracteristica fator associada. |

---

## DBAMV.SAE_RESPOSTA_HISTORICO_ENFERMG
> Tabela com as respostas das perguntas da tabela PerguntaHistoricoEnfermagem

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_RESPOSTA | NUMBER | N | Codigo da resposta do historico de enfermagem. |
| 2 | CD_PERGUNTA | NUMBER | N | Codigo da pergunta a qual a resposta esta relacionada. |
| 3 | DS_RESPOSTA | VARCHAR2 | N | Descric?o da resposta. |
| 4 | TP_RESPOSTA | VARCHAR2 | N | Tipo da resposta na camada visual (C(Check), R(Radio), I(Integer)) |
| 5 | CD_LIMITES | NUMBER | Y | FK para tabela LimitesRespostaHistoricoEnfermagem |
| 6 | NR_ORDEM | NUMBER | N | Ordem em que as respostas ser?o apresentadas |
| 7 | SN_ATIVO | VARCHAR2 | N | Resposta ativa para ser utilizada no sistema. |

---

## DBAMV.SAE_RESP_HISTORICO_ENFERMG
> Tabela com as Respostas do histórico de enfermagem para manter as respostas dos documentos clinicos fechados, assinados.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_RESPOSTA | NUMBER | N | Código da resposta |
| 2 | CD_RESPOSTA_HISTORICO | NUMBER | N | Código da resposta do historico. |
| 3 | CD_HISTORICO_ENFERMAGEM | NUMBER | N |  |
| 4 | CD_PERGUNTA | NUMBER | N | Código da pergunta do historico |

---

## DBAMV.SAE_RESP_SELCND_HIST_ENFERMG
> Tabela com as Respostas selecionadas pelo prestador referentes as perguntas do Historico de Enfermagem. Utilizado para sugerir diagnosticos de enfermagem.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_RESPOSTA_SELECIONADA | NUMBER | N | Codigo da resposta selecionada |
| 2 | CD_RESPOSTA_HISTORICO | NUMBER | N | Codigo da resposta do historico. |
| 3 | CD_HISTORICO_ENFERMAGEM | NUMBER | N |  |
| 4 | CD_PERGUNTA_HISTORICO | NUMBER | N | Codigo da pergunta do historico |
| 5 | TP_RESPOSTA | VARCHAR2 | N | Tipo da resposta na camada visual (C(Check), R(Radio), I(Integer)) |
| 6 | VL_RESPOSTA | NUMBER | Y | Valor para respostas do tipo I. |
| 7 | DS_RESPOSTA | VARCHAR2 | Y | coluna de texto livre para respostas do tipo T |

---

## DBAMV.SAE_SUBGRUPO_CARACT_FTR
> TABELA DE SUB-GRUPOS EM CARACTERISTICA FATOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GRUPO_CARACTERISTICA_FTR | NUMBER | N | CODIGO DO GRUPO |
| 2 | CD_SUBGRUPO_CARACT_FTR | NUMBER | N | CODIGO DO SUB-GRUPO |
| 3 | DS_SUBGRUPO_CARACT_FTR | VARCHAR2 | N | DESCRIC?O DO SUB-GRUPO |
| 4 | SN_ATIVO | VARCHAR2 | N | INDICA SE O SUB-GRUPO ENCONTRA-SE ATIVO OU INATIVO. POR PADR?O ESTARA INATIVO. |

---

## DBAMV.SAE_TIPO_DIAGNOSTICO
> TABELA DE TIPO DE DIAGNOSTICO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIPO_DIAGNOSTICO | NUMBER | N | CODIGO DO TIPO DE DIAGNOSTICO - PRIMARY KEY |
| 2 | DS_TIPO_DIAGNOSTICO | VARCHAR2 | N | DESCRICAO DO TIPO DE DIAGNOSTICO |
| 3 | SN_ATIVO | VARCHAR2 | N | INDICA SE O TIPO DE DIAGNOSTICO ENCONTRA-SE ATIVO OU INATIVO. POR PADRAO ESTARA INATIVO. |
| 4 | SN_RISCO | VARCHAR2 | N | INDICA SE O RISCO ENCONTRA-SE ATIVO OU INATIVO. POR PADRAO ESTARA INATIVO. |

---

## DBAMV.SAE_TIPO_GRUPO_HIST_ENFERM
> Armazena a informação se o grupo do SAE apresenta observação

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SAE_TIPO_GRUPO | NUMBER | N | Indica o código dos registros da tabela de observação dos tipos de grupo(pk). |
| 2 | TP_GRUPO | VARCHAR2 | Y | Tipo do grupo da observação. |
| 3 | DS_TIPO_GRUPO | VARCHAR2 | Y | Descriçao do grupo da observação. |
| 4 | SN_OBSERVACAO | VARCHAR2 | Y | Indica se o grupo do SAE apresenta observação . |

---

## DBAMV.TERMO_CONSENTIMENTO_PCD_PRES
> Tabela que armazena os termos de consentimento especificos de um determinado prestador

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TERMO_CONSENT_PRC_PRES | NUMBER | N | Codigo do termo de consentimento |
| 2 | DS_SIMPLES | VARCHAR2 | N | Descric?o simples do procedimento, utilizada para melhor entendimento do paciente |
| 3 | CD_PRO_FAT | VARCHAR2 | N | Codigo do procedimento a ser realizado, vem da tabela pro_fat |
| 4 | CD_PRESTADOR | NUMBER | N | Codigo do prestador que cadastrou o termo |
| 5 | LO_TECNICO | BLOB | Y | Conteudo tecnico do termo |

---

## DBAMV.TERMO_CONSENTIMENTO_PROCED
> Tabela que armazena os termos de consentimento usados como padr?es

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TERMO_CONSENTIMENTO_PROCED | NUMBER | N | Codigo do termo de consentimento |
| 2 | DS_SIMPLES | VARCHAR2 | N | Descric?o simples do procedimento, utilizada para melhor entendimento do paciente |
| 3 | CD_PRO_FAT | VARCHAR2 | N | Codigo do procedimento a ser realizado, vem da tabela pro_fat |
| 4 | CD_USUARIO | VARCHAR2 | N | Codigo do usuario que cadastrou o termo |
| 5 | LO_TECNICO | BLOB | Y | Conteudo tecnico do termo |

---

## DBAMV.TERMO_DIVIDA
> TABELA DE TERMOS DE DIVIDAS.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TERMO_DIVIDA | NUMBER | N |  |
| 2 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 3 | CD_FORNECEDOR | NUMBER | N |  |
| 4 | CD_USUARIO_EMIS | VARCHAR2 | Y |  |
| 5 | CD_USUARIO_ASS | VARCHAR2 | Y |  |
| 6 | CD_USUARIO_CANC | VARCHAR2 | Y |  |
| 7 | CD_USUARIO_IMP | VARCHAR2 | Y |  |
| 8 | QT_PARCELAS | NUMBER | N |  |
| 9 | QT_IMPRESSAO | NUMBER | Y |  |
| 10 | VL_TERMO_DIVIDA | NUMBER | N |  |
| 11 | TP_ORIGEM | VARCHAR2 | N |  |
| 12 | TP_SITUACAO | VARCHAR2 | N |  |
| 13 | DS_TERMO_DIVIDA | VARCHAR2 | Y |  |
| 14 | DT_EMISSAO | DATE | Y |  |
| 15 | DT_ASSINATURA | DATE | Y |  |
| 16 | DT_CANCELAMENTO | DATE | Y |  |
| 17 | DT_IMPRESSAO | DATE | Y |  |

---

## DBAMV.TERMO_DIVIDA_ANEX
> TABELA DE TERMOS DE DIVIDAS ANEXADAS.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TERMO_DIVIDA_ANEX | NUMBER | N |  |
| 2 | CD_TERMO_DIVIDA | NUMBER | N |  |
| 3 | CD_USUARIO_ANEX | VARCHAR2 | Y |  |
| 4 | CD_USUARIO_EXCL | VARCHAR2 | Y |  |
| 5 | DT_ANEXO | DATE | Y |  |
| 6 | DS_ANEXO | VARCHAR2 | Y |  |
| 7 | DT_EXCLUSAO | DATE | Y |  |
| 8 | DS_ARQUIVO | VARCHAR2 | Y |  |
| 9 | LO_TERMO_DIVIDA_DOC | BLOB | Y |  |

---

## DBAMV.TERMO_DIVIDA_ITEM
> TABELA DE TERMOS DE DIVIDAS ITENS.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TERMO_DIVIDA_ITEM | NUMBER | N |  |
| 2 | CD_TERMO_DIVIDA | NUMBER | N |  |
| 3 | CD_ITCON_REC | NUMBER | N |  |
| 4 | CD_MENS_CONTRATO | NUMBER | Y |  |
| 5 | VL_SALDO | NUMBER | Y |  |

---

## DBAMV.TERMO_DIVIDA_PARAMETRO
> TABELA DE PARAMETROS PARA O R_TERMO_DIVIDA_PERSON

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CABECALHO | NUMBER | Y | Numero do cabeçalho |
| 2 | DS_CABECALHO | VARCHAR2 | Y | Descrição do cabeçalho |
| 3 | CD_PARAGRAFO | NUMBER | Y | Numero do paragrafo |
| 4 | CD_CLAUSULA | NUMBER | Y | Numero da clausula |
| 5 | DS_PARAGRAFO | VARCHAR2 | Y | Descrição do paragrafo |
| 6 | DS_CLAUSULA | VARCHAR2 | Y | Descrição da clausula |
| 7 | DS_VALOR_PARAMETRO | CLOB | Y | Descrição que vai retornar no relatório |

---

## DBAMV.TERMO_DIVIDA_PARC
> TABELA DE TERMOS DE DIVIDAS PARCELADAS.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TERMO_DIVIDA_PARC | NUMBER | N |  |
| 2 | CD_TERMO_DIVIDA | NUMBER | N |  |
| 3 | DT_VENCIMENTO | DATE | Y |  |
| 4 | VL_PARCELA | NUMBER | Y |  |
| 5 | NR_PARCELA | NUMBER | Y | NÚMERO DA PARCELA |

---

## DBAMV.TERMO_LIVRO_PSICOTROPICO
> Tabela que grava os dados do termo de encerramento e abertura do livro de registro.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TERMO | NUMBER | N | Codigo do termo |
| 2 | CD_PRESTADOR_RESPONSAVEL | NUMBER | N | Codigo do farmaceutico responsavel |
| 3 | DS_FIRMA | VARCHAR2 | N | Descric?o da firma. |
| 4 | DS_RAZAO_SOCIAL | VARCHAR2 | N | Descric?o da raz?o social do hospital. |
| 5 | DS_ENDERECO | VARCHAR2 | N | Descric?o do endereco. |
| 6 | NM_CIDADE | VARCHAR2 | N | Cidade. |
| 7 | DS_ESTADO | VARCHAR2 | N | Estado do hospital. |
| 8 | CD_IEST | VARCHAR2 | N | Codigo de inscric?o estadual. |
| 9 | NR_CGC | NUMBER | N | Numero do CNPJ. |

---

## DBAMV.TERMO_PORTARIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TERMO_PORTARIA | NUMBER | N |  |
| 2 | NR_PAG_INICIAL | NUMBER | Y |  |
| 3 | NR_PAG_FINAL | NUMBER | Y |  |
| 4 | QT_PAG_EXTENSO | VARCHAR2 | Y |  |
| 5 | DH_IMPRESSAO | DATE | Y |  |
| 6 | DT_COMPETENCIA | DATE | N |  |
| 7 | CD_PORTARIA | VARCHAR2 | N |  |
| 8 | CD_ESTOQUE | NUMBER | Y |  |
| 9 | NR_LIVRO | VARCHAR2 | Y |  |

---

## DBAMV.TOPOGRAFIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TOPOGRAFIA | NUMBER | N | Codigo |
| 2 | DS_TOPOGRAFIA | VARCHAR2 | N | Descric?o |
| 3 | TP_CATEGORIA | VARCHAR2 | Y | Indica a categoria da topografia segundo a classificac?o NNIS em treze sitios principais |
| 4 | SN_ATIVO | VARCHAR2 | N | Indicara se topografia esta ativa(S/N) |

---

## DBAMV.TOPOGRAFIA_EXAME
> Cadastro das Topografias dos exames

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TOPOGRAFIA | NUMBER | N | Codigo da Topografia |
| 2 | DS_TOPOGRAFIA | VARCHAR2 | N | Descrição da Topografia |
| 3 | SN_ATIVO | VARCHAR2 | N | Ativo ou não |

---

## DBAMV.TRATAMENTO
> Tratamento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TRATAMENTO | NUMBER | N | codigo do tratamento |
| 2 | DH_INICIO | DATE | N | codigo do tratamento |
| 3 | CD_PACIENTE | NUMBER | N | codigo do paciente |
| 4 | CD_PRESTADOR | NUMBER | N | codigo do prestador |
| 5 | SN_ATIVO | VARCHAR2 | N | tratamento ativo |
| 6 | DH_FINALIZADO | DATE | Y | dia e hora de termino |
| 7 | QT_CICLO | NUMBER | Y | quantidade de cliclos |
| 8 | CD_DIAGNOSTICO_ATENDIME | NUMBER | Y | codigo do diagnostico |
| 9 | QT_INTERVALO_DIAS | NUMBER | Y | Apresenta a o intervalo  de dias que tera entre os ciclos de um tratamento |
| 10 | NM_PROTOCOLO | VARCHAR2 | Y | Descric?o do nome do protocolo que sera criado pelo usuario de forma livre |
| 11 | CD_PROTOCOLO | NUMBER | Y | Codigo do protocolo |
| 12 | TP_QUIMIOTERAPIA | VARCHAR2 | Y | Código do tipo de quimioterapia solicitada |
| 13 | TP_FINALIDADE | VARCHAR2 | Y | Código da finalidade do tratamento |
| 14 | TP_ECOG | VARCHAR2 | Y | Terminologia de escala de capacidade funcional |
| 15 | SN_EXIBE_DATA_PROCEDIMENTO | VARCHAR2 | Y | Habilita campo de data do procecimento |
| 16 | DS_PROCEDIMENTO | VARCHAR2 | Y | Descrição do procedimento que será realizado |
| 17 | DH_PROCEDIMENTO | DATE | Y | Data de realização do procedimento |
| 18 | DS_CIRURGIA | VARCHAR2 | Y | Descrição da cirurgia informada na prescrição de tratamento, utilizada para preenchimento do camp... |
| 19 | DS_AREA_IRRADIADA | VARCHAR2 | Y | Descrição da área irradiada informada na prescrição de tratamento, utilizada para preenchimento d... |
| 20 | DS_JUSTIFICATIVA_PROTOCOLO | VARCHAR2 | Y | Descrição da justificativa informada na criação do tratamento, caso não seja selecionado um proto... |
| 21 | TP_STATUS | VARCHAR2 | Y | Status do tratamento, podendo ser AN = em andamento, PA = Pausa, FI = Finalizado, IN = Interrompido |
| 22 | DT_REALIZACAO | DATE | Y | Data da realização informada na prescrição de tratamento |
| 23 | DT_APLICACAO | DATE | Y | Data da aplicação informada na prescrição de tratamento |
| 24 | DH_PAUSA | DATE | Y | Data da realização da pausa do tratamento executada pelo prestador |
| 25 | DH_FINALIZACAO_INTERRUPCAO | DATE | Y | Data da finalização ou interrupção do tratamento executada pelo prestador |
| 26 | SN_EMPRESA_SETOR_SESSAO | VARCHAR2 | Y | Consolida no momento da criação do tratamento, a configuração de apresentação/utilização de empre... |
| 27 | TP_AGENDAMENTO | VARCHAR2 | N | QUI = QUIMIOTERAPIA, RAD = RADIOTERAPIA, FAR = FARMACIA, INF = INFUSÃO. |
| 28 | TP_ATENDIMENTO | VARCHAR2 | N | I = INTERNACAO, A = AMBULATORIO |
| 29 | TP_PRIORIDADE | VARCHAR2 | N | E = ELETIVO, U = URGENTE |

---

## DBAMV.TRATAMENTO_REALIZADO
> Lista de possiveis tratamentos realizados no processo quimioterapico

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TRATAMENTO_REALIZADO | VARCHAR2 | N | Codigo identificador do tratamento quimioterapico |
| 2 | DS_TRATAMENTO_REALIZADO | VARCHAR2 | N | Descric?o do tratamento quimioterapico |
| 3 | CD_TIP_ATE | NUMBER | Y | Codigo do tipo de tratamento APAC |

---

## EDITOR.DATABASECHANGELOG

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | VARCHAR2 | N |  |
| 2 | AUTHOR | VARCHAR2 | N |  |
| 3 | FILENAME | VARCHAR2 | N |  |
| 4 | DATEEXECUTED | TIMESTAMP(6) | N |  |
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

## EDITOR.DATABASECHANGELOGLOCK

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | LOCKED | NUMBER | N |  |
| 3 | LOCKGRANTED | TIMESTAMP(6) | Y |  |
| 4 | LOCKEDBY | VARCHAR2 | Y |  |

---

## EDITOR.EDITOR_AUDITORIA
> Tabela relacionada a auditoria do sistema

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | ADDRESS | VARCHAR2 | Y |  |
| 3 | OPERATION | VARCHAR2 | Y |  |
| 4 | USER_OP | VARCHAR2 | Y |  |
| 5 | PATH | NUMBER | Y |  |
| 6 | DATA_HORA | TIMESTAMP(6) | Y |  |

---

## EDITOR.EDITOR_CAMPO
> Tabela relacionada aos campos do sistema

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CAMPO | NUMBER | N |  |
| 2 | DS_IDENTIFICADOR | VARCHAR2 | N |  |
| 3 | SN_ATIVO | NUMBER | N |  |
| 4 | SN_REPROCESSADO | NUMBER | Y |  |
| 5 | DS_CAMPO | VARCHAR2 | Y |  |
| 6 | CD_METADADO | NUMBER | Y |  |
| 7 | CD_GRUPO | NUMBER | N |  |
| 8 | CD_TIPO_ITEM | NUMBER | Y |  |
| 9 | CD_TIPO_VISUALIZACAO | NUMBER | Y |  |
| 10 | CD_ORIGEM_COPIA | NUMBER | Y |  |
| 11 | DS_HASH | VARCHAR2 | Y |  |

---

## EDITOR.EDITOR_CAMPO_PROP_VAL
> Tabela relacionada aos valores das propriedades de cada campo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CAMPO_PROP_VAL | NUMBER | N |  |
| 2 | CD_CAMPO | NUMBER | N |  |
| 3 | CD_PROPRIEDADE | NUMBER | N |  |
| 4 | LO_VALOR | CLOB | Y |  |
| 5 | HASH | VARCHAR2 | Y |  |

---

## EDITOR.EDITOR_CAMPO_TAG
> Tabela relacionada as tags dos campos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CAMPO | NUMBER | N |  |
| 2 | DS_TAG | VARCHAR2 | N |  |

---

## EDITOR.EDITOR_CAMPO_VALOR
> Tabela relacionada valor de cada campo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_VALOR | NUMBER | N |  |
| 2 | DS_IDENTIFICADOR | VARCHAR2 | Y |  |
| 3 | SN_SELECIONADO | NUMBER | N |  |
| 4 | LO_VALOR | CLOB | Y |  |
| 5 | CD_CAMPO | NUMBER | N |  |
| 6 | CD_PROPRIEDADE | NUMBER | Y |  |
| 7 | NUM_ORDEM | NUMBER | N |  |

---

## EDITOR.EDITOR_COMPANY_INFO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | CNPJ | VARCHAR2 | Y |  |
| 3 | VALIDATED | NUMBER | Y |  |

---

## EDITOR.EDITOR_COMP_AUD_EQUIP
> Guarda as informações sobre os equipamentos de audiometria, como a marca e o modelo.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EQUIP | NUMBER | N | Código identificador do equipamento. |
| 2 | NM_MARCA | VARCHAR2 | N | Marca do equipamento. |
| 3 | NM_MODELO | VARCHAR2 | N | Modelo do equipamento. |
| 4 | CD_EQUIP_EXT | NUMBER | Y |  |
| 5 | CD_SERIAL | VARCHAR2 | Y |  |

---

## EDITOR.EDITOR_COMP_AUD_EQUIP_FREQ

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EQUIP | NUMBER | N | Código identificador do equipamento (FK). |
| 2 | CD_FREQ | NUMBER | N | Código identificador da frequência (FK). |
| 3 | NR_VA_MAX | NUMBER | Y | Valor máximo suportado em Via Aérea (VA) para a o equipamento na frequência informada. |
| 4 | NR_VO_MAX | NUMBER | Y | Valor máximo suportado em Via Óssea (VO) para a o equipamento na frequência informada. |

---

## EDITOR.EDITOR_COMP_AUD_FREQ
> Armazena as frequências possíveis de medição.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FREQ | NUMBER | N | Código identificador da frequência. |
| 2 | NR_HERTZ | NUMBER | N | Valor da frequência em hertz. |
| 3 | DS_FREQ_FORMAT | VARCHAR2 | N | Valor de exibição formatado da frequência. |
| 4 | SN_VA_ATIVO | NUMBER | N | Se a frequência é suportada em via aérea (VA). |
| 5 | SN_VO_ATIVO | NUMBER | N | Se a frequência é suportada em via óssea (VO). |

---

## EDITOR.EDITOR_DEFAULT_STYLE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DEFAULT_STYLE | NUMBER | N |  |
| 2 | FONT_SIZE | NUMBER | Y |  |
| 3 | FONT_FAMILY | VARCHAR2 | Y |  |
| 4 | FONT_WEIGHT | NUMBER | Y |  |
| 5 | FONT_STYLE | NUMBER | Y |  |
| 6 | TEXT_DECORATION | NUMBER | Y |  |
| 7 | COLOR | VARCHAR2 | Y |  |

---

## EDITOR.EDITOR_DOCUMENTO
> Tabela relacionada aos documentos do sistema

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DOCUMENTO | NUMBER | N |  |
| 2 | DS_IDENTIFICADOR | VARCHAR2 | N |  |
| 3 | DS_DOCUMENTO | VARCHAR2 | N |  |
| 4 | CD_GRUPO | NUMBER | N |  |
| 5 | CD_TIPO_ITEM | NUMBER | N |  |

---

## EDITOR.EDITOR_DOCUMENTO_TAG
> Tabela relacionada as tags dos documentos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DOCUMENTO | NUMBER | N |  |
| 2 | DS_TAG | VARCHAR2 | N |  |

---

## EDITOR.EDITOR_ERRO
> Tabela relacionada aos erros não tratados pelo sistema

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | UUID | VARCHAR2 | N |  |
| 2 | LOGGER | CLOB | Y |  |
| 3 | DATE_TIME | TIMESTAMP(6) | Y |  |

---

## EDITOR.EDITOR_GRUPO
> Tabela relacionada aos grupos do sistema

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GRUPO | NUMBER | N |  |
| 2 | DS_GRUPO | VARCHAR2 | N |  |
| 3 | CD_TIPO_ITEM | NUMBER | N |  |
| 4 | CD_GRUPO_PAI | NUMBER | Y |  |
| 5 | CD_KEY_TRADUCAO | VARCHAR2 | Y |  |
| 6 | SN_EDITAVEL | NUMBER | N |  |

---

## EDITOR.EDITOR_GRUPO_PERMISSAO
> Tabela de relacionamento entre usuario e grupo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PERMISSAO | NUMBER | N |  |
| 2 | CD_GRUPO_U | NUMBER | N |  |
| 3 | SN_ATIVO | NUMBER | N |  |

---

## EDITOR.EDITOR_GRUPO_U
> Tabela grupos de usuários

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GRUPO_U | NUMBER | N |  |
| 2 | DS_GRUPO | VARCHAR2 | N |  |

---

## EDITOR.EDITOR_LAYOUT
> Tabela relacionada aos layouts do sistema

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LAYOUT | NUMBER | N |  |
| 2 | LO_CONTEUDO | CLOB | Y |  |
| 3 | DS_LAYOUT | VARCHAR2 | Y |  |
| 4 | VL_ALTURA | NUMBER | N |  |
| 5 | TP_ORIENTACAO | VARCHAR2 | N |  |
| 6 | VL_LARGURA | NUMBER | N |  |
| 7 | CD_LAYOUT_RODAPE | NUMBER | Y |  |
| 8 | CD_LAYOUT_CABECALHO | NUMBER | Y |  |
| 9 | CD_TIPO_LAYOUT | NUMBER | N |  |
| 10 | CD_VERSAO_DOCUMENTO | NUMBER | N |  |
| 11 | VL_MARGEM_TOPO | NUMBER | N |  |
| 12 | VL_MARGEM_BASE | NUMBER | N |  |
| 13 | VL_MARGEM_ESQUERDA | NUMBER | N |  |
| 14 | VL_MARGEM_DIREITA | NUMBER | N |  |

---

## EDITOR.EDITOR_LAYOUT_CAMPO
> Tabela relacionada a associação de um campo a um layout

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LAYOUT | NUMBER | N |  |
| 2 | CD_CAMPO | NUMBER | N |  |

---

## EDITOR.EDITOR_PATCH
> Tabela relacionada a aplicação de paths de correção para o sistema

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PATCH | NUMBER | N |  |
| 2 | DATA | TIMESTAMP(6) | Y |  |
| 3 | EXECUTADO | VARCHAR2 | Y |  |
| 4 | IDENTIFICADOR | VARCHAR2 | Y |  |
| 5 | LOG | VARCHAR2 | Y |  |

---

## EDITOR.EDITOR_PERMISSAO
> Tabela de permissões

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PERMISSAO | NUMBER | N |  |
| 2 | DS_PERMISSAO | VARCHAR2 | N |  |
| 3 | CD_KEY_TRADUCAO | VARCHAR2 | Y |  |

---

## EDITOR.EDITOR_PROPRIEDADE
> Tabela relacionada as propriedades de cada campo do editor

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROPRIEDADE | NUMBER | N |  |
| 2 | DS_IDENTIFICADOR | VARCHAR2 | N |  |
| 3 | DS_VALOR_PADRAO | VARCHAR2 | Y |  |
| 4 | DS_PROPRIEDADE | VARCHAR2 | N |  |
| 5 | CD_KEY_TRADUCAO | VARCHAR2 | Y |  |

---

## EDITOR.EDITOR_PROP_DOC_VALOR
> Tabela relacionada ao valor das propriedades de um documento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DOCUMENTO | NUMBER | N |  |
| 2 | CD_PROPRIEDADE | NUMBER | N |  |
| 3 | DS_VALOR | VARCHAR2 | Y |  |

---

## EDITOR.EDITOR_REGISTRO
> Tabela relacionada aos registros

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REGISTRO | NUMBER | N |  |
| 2 | SN_FECHADO | NUMBER | N |  |
| 3 | CONTEUDO_CORPO | CLOB | Y |  |
| 4 | CONTEUDO_RODAPE | CLOB | Y |  |
| 5 | CONTEUDO_CABECALHO | CLOB | Y |  |
| 6 | CD_SISTEMA | NUMBER | N |  |
| 7 | CD_LAYOUT | NUMBER | N |  |
| 8 | MIGRADO | NUMBER | Y |  |

---

## EDITOR.EDITOR_REGISTRO_CAMPO
> Tabela relacionada aos registros de cada campo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REGISTRO | NUMBER | N |  |
| 2 | CD_CAMPO | NUMBER | N |  |
| 3 | LO_CONTEUDO | CLOB | Y |  |
| 4 | CAMPO_CHAVE_VALOR | VARCHAR2 | Y |  |
| 5 | RESPOSTA_ACAO | CLOB | Y |  |
| 6 | OCULTADO | NUMBER | Y |  |
| 7 | DADOS_IMPRESSAO | CLOB | Y |  |
| 8 | MIGRADO | NUMBER | Y |  |

---

## EDITOR.EDITOR_REGRA
> Tabela relacionada as regras

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REGRA | NUMBER | N |  |
| 2 | ACAO | CLOB | Y |  |
| 3 | ATIVA | NUMBER | N |  |
| 4 | DS_ALERTA | VARCHAR2 | Y |  |
| 5 | DS_IDENTIFICADOR | VARCHAR2 | N |  |
| 6 | NUM_ORDEM | NUMBER | N |  |
| 7 | CD_LAYOUT | NUMBER | N |  |
| 8 | CD_TIPO_REGRA | NUMBER | N |  |
| 9 | API_REQUEST | CLOB | Y |  |

---

## EDITOR.EDITOR_REGRA_CAMPO
> Tabela relacionada as regras de cada campo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REGRA | NUMBER | N |  |
| 2 | CD_CAMPO | NUMBER | N |  |

---

## EDITOR.EDITOR_REGRA_CAMPO_VL_FTR
> Tabela relacionada as regras do tipo filtrar

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_RULE_FIELD_VALUE_FILTER | NUMBER | N |  |
| 2 | VALOR | VARCHAR2 | N |  |
| 3 | CD_REGRA | NUMBER | N |  |
| 4 | CD_CAMPO | NUMBER | N |  |

---

## EDITOR.EDITOR_REGRA_CONDICAO
> Tabela relacionada as condições de uma regra

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REGRA_CONDICAO | NUMBER | N |  |
| 2 | VALOR | VARCHAR2 | Y |  |
| 3 | CD_REGRA_CONDICAO_PAI | NUMBER | Y |  |
| 4 | CD_REGRA | NUMBER | Y |  |
| 5 | CD_CONECTOR | NUMBER | Y |  |
| 6 | CD_OPERADOR | NUMBER | Y |  |
| 7 | CD_CAMPO | NUMBER | Y |  |

---

## EDITOR.EDITOR_REGRA_CONECTOR
> Tabela relacionada aos tipos de conectores utilizados nas condições de uma regra

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REGRA_CONECTOR | NUMBER | N |  |
| 2 | DS_IDENTIFICADOR | VARCHAR2 | N |  |

---

## EDITOR.EDITOR_REGRA_GRUPO
> Tabela de relacionamento entre grupo e regra

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REGRA_PAI | NUMBER | N |  |
| 2 | CD_REGRA | NUMBER | N |  |
| 3 | NUM_ORDEM | NUMBER | N |  |

---

## EDITOR.EDITOR_REGRA_OPERADOR
> Tabela relacionada aos tipos das regras

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REGRA_OPERADOR | NUMBER | N |  |
| 2 | DS_IDENTIFICADOR | VARCHAR2 | N |  |

---

## EDITOR.EDITOR_REGRA_PROP_VAL
> Tabela relacionada ao valor das propriedades de uma regra

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REGRA | NUMBER | N |  |
| 2 | CD_PROPRIEDADE | NUMBER | N |  |
| 3 | LO_VALOR | CLOB | Y |  |

---

## EDITOR.EDITOR_SISTEMA
> Tabela relacionada ao sistema que está fazendo a integração com o editor

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SISTEMA | NUMBER | N |  |
| 2 | DS_IDENTIFICADOR | VARCHAR2 | N |  |

---

## EDITOR.EDITOR_TAG
> Tabela relacionada as tags dos campos e documentos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DS_TAG | VARCHAR2 | N |  |

---

## EDITOR.EDITOR_TEXTO_PADRAO
> Tabela relacionada a texto padrão

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TEXTO_PADRAO | NUMBER | N |  |
| 2 | LO_TEXTO_PADRAO | CLOB | N |  |
| 3 | CD_CAMPO | NUMBER | Y |  |
| 4 | CD_EMPRESA | NUMBER | Y |  |

---

## EDITOR.EDITOR_TEXTO_PADRAO_PARAM
> Tabela relacionada a texto padrão dos parametros

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DEFAULT_TEXT_ID | NUMBER | N |  |
| 2 | PARAM_ID | NUMBER | N |  |
| 3 | LO_VALOR | CLOB | Y |  |
| 4 | FIELD_ID | NUMBER | N |  |

---

## EDITOR.EDITOR_TEXTO_PADRAO_VALOR
> Tabela relacionada aos valores de texto padrão dos parametros

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | VALUE | VARCHAR2 | Y |  |
| 3 | DEFAULT_TEXT_CD_TEXTO_PADRAO | NUMBER | N |  |

---

## EDITOR.EDITOR_TEXTO_PADRAO_VL_PARAM
> Tabela relacionada aos valores de texto padrão dos parametros

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DEFAULT_TEXT_ID | NUMBER | N |  |
| 2 | PARAM_ID | NUMBER | N |  |
| 3 | FIELD_ID | NUMBER | N |  |
| 4 | VALUE_PARAM | VARCHAR2 | Y |  |

---

## EDITOR.EDITOR_TIPO_ITEM
> Tabela relacionada ao tipo item de cada campo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIPO_ITEM | NUMBER | N |  |
| 2 | DS_IDENTIFICADOR | VARCHAR2 | N |  |
| 3 | DS_TIPO_ITEM | VARCHAR2 | N |  |
| 4 | MODIFICA_GRUPO | NUMBER | Y |  |

---

## EDITOR.EDITOR_TIPO_LAYOUT
> Tabela relacionada ao tipo que cada layout pode utilizar

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIPO_LAYOUT | NUMBER | N |  |
| 2 | DS_IDENTIFICADOR | VARCHAR2 | N |  |
| 3 | DS_TIPO_LAYOUT | VARCHAR2 | N |  |

---

## EDITOR.EDITOR_TIPO_REGRA
> Tabela relacionada aos tipos das regras

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIPO_REGRA | NUMBER | N |  |
| 2 | DS_IDENTIFICADOR | VARCHAR2 | N |  |

---

## EDITOR.EDITOR_TIPO_REGRA_PROP
> Relação entre os tipos de regras e as propriedades que cada tipo possui.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIPO_REGRA | NUMBER | N | Código do tipo da regra. |
| 2 | CD_PROPRIEDADE | NUMBER | N | Código da propriedade. |
| 3 | DS_VALOR_PADRAO | VARCHAR2 | Y | Valor padrão da propriedade para o tipo de regra. |

---

## EDITOR.EDITOR_TIPO_VISUALIZACAO
> Tabela relacionada ao tipo de visualização aplicado aos campos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIPO_VISUALIZACAO | NUMBER | N |  |
| 2 | DS_IDENTIFICADOR | VARCHAR2 | N |  |
| 3 | DS_TIPO_VISUALIZACAO | VARCHAR2 | N |  |

---

## EDITOR.EDITOR_TRACE
> Tabela relacionada a trace do sistema

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | DESTINATION_ADDRESS | VARCHAR2 | Y |  |
| 3 | DESTINATION_PORT | VARCHAR2 | Y |  |
| 4 | USER_OP | VARCHAR2 | Y |  |
| 5 | DH_END | TIMESTAMP(6) | Y |  |
| 6 | DH_START | TIMESTAMP(6) | Y |  |
| 7 | DH_TOTAL | TIMESTAMP(6) | Y |  |
| 8 | REMOTE_ADDRESS | VARCHAR2 | Y |  |
| 9 | REQUEST_ID | VARCHAR2 | Y |  |
| 10 | REQUEST_URL | VARCHAR2 | Y |  |
| 11 | STATUS | VARCHAR2 | Y |  |

---

## EDITOR.EDITOR_USUARIO
> Tabela para cadastro dos usuários do editor

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_USUARIO | NUMBER | N |  |
| 2 | DS_USUARIO | VARCHAR2 | N |  |

---

## EDITOR.EDITOR_USUARIO_GRUPO
> Tabela de relacionamento entre usuario e grupo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_USUARIO | NUMBER | N |  |
| 2 | CD_GRUPO_U | NUMBER | N |  |

---

## EDITOR.EDITOR_VERSAO_DOCUMENTO
> Tabela relacionada as versões de um documento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_VERSAO_DOCUMENTO | NUMBER | N |  |
| 2 | SN_ATIVO | NUMBER | N |  |
| 3 | SN_PUBLICADO | NUMBER | Y |  |
| 4 | TP_VERSAO | VARCHAR2 | N |  |
| 5 | VL_VERSAO | NUMBER | N |  |
| 6 | CD_DOCUMENTO | NUMBER | N |  |
| 7 | CD_VERSAO_COMPILADO | NUMBER | Y |  |
| 8 | DS_HASH | VARCHAR2 | Y |  |

---

## EDITOR.EDITOR_VERSAO_DOC_COMPILADO
> Tabela relacionada as versões compiladas de um documento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_VERSAO_COMPILADO | NUMBER | N |  |
| 2 | LO_CONTEUDO_COMPILADO | BLOB | Y |  |
| 3 | HASH | VARCHAR2 | Y |  |
| 4 | HASH_MASK | VARCHAR2 | Y |  |
| 5 | LO_DADO_IMPRESSAO_COMPILADO | BLOB | Y |  |

---

## EDITOR.EDITOR_VSLZ_PROP_COMPART
> Tabela relacionada as propriedades que podem ser compartilhadas por campos filhos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROPRIEDADE | NUMBER | N |  |
| 2 | CD_TIPO_VISUALIZACAO | NUMBER | N |  |
| 3 | INSTANCIAVEL | NUMBER | N |  |
| 4 | DS_VALOR_PADRAO | VARCHAR2 | Y |  |
