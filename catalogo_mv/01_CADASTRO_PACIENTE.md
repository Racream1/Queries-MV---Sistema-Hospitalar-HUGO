# 01 - Cadastro e Paciente

> Cadastro de pacientes, dados demograficos, convenios e vinculacoes

## Resumo

- **Tabelas**: 216
- **Owners**: CARTORIO, DBAMV

---

## CARTORIO.CMP3$199197

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | SIGNATURE_ID | NUMBER | N |  |
| 2 | DOCUMENT_ID | NUMBER | N |  |
| 3 | HASH | BLOB | Y |  |
| 4 | ALIAS | VARCHAR2 | Y |  |
| 5 | KEY_TYPE | VARCHAR2 | Y |  |
| 6 | SIGNER_TYPE | VARCHAR2 | Y |  |
| 7 | TOKEN_TYPE | VARCHAR2 | Y |  |
| 8 | SIGNATURE_TYPE | VARCHAR2 | Y |  |
| 9 | VALUE | BLOB | Y |  |
| 10 | REFERENCE_TIME | TIMESTAMP(6) | Y |  |
| 11 | CERTIFICATE_TYPE | VARCHAR2 | Y |  |
| 12 | MESSAGE | VARCHAR2 | Y |  |
| 13 | SUBJECT | VARCHAR2 | Y |  |
| 14 | ISSUER | VARCHAR2 | Y |  |

---

## CARTORIO.DOCUMENT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DOCUMENT_ID | NUMBER | N |  |
| 2 | STATUS_ID | NUMBER | N |  |
| 3 | CONTENT | BLOB | Y |  |
| 4 | ORIGIN | VARCHAR2 | Y |  |
| 5 | JMS | VARCHAR2 | Y |  |
| 6 | CONTRACT | VARCHAR2 | Y |  |
| 7 | DOCUMENT_TYPE | VARCHAR2 | N |  |
| 8 | REFERENCE_TIME | TIMESTAMP(6) | Y |  |
| 9 | METHOD | VARCHAR2 | N |  |
| 10 | METHOD_TYPE | VARCHAR2 | N |  |
| 11 | NAME | VARCHAR2 | Y |  |
| 12 | TIPO_DOCUMENTO | VARCHAR2 | Y |  |
| 13 | DS_CONSELHO | VARCHAR2 | Y |  |
| 14 | REGISTRO_CONSELHO | VARCHAR2 | Y |  |
| 15 | UF_CONSELHO | VARCHAR2 | Y |  |
| 16 | ESPECIALIDADE | VARCHAR2 | Y |  |
| 17 | PDF_PACIENTE | BLOB | Y |  |
| 18 | P7S_PACIENTE | BLOB | Y |  |
| 19 | ID_CLIENT | NUMBER | Y |  |
| 20 | TIMESTMP | VARCHAR2 | Y |  |
| 21 | CNPJ | VARCHAR2 | Y |  |
| 22 | INSTANCIA | NUMBER | N |  |

---

## CARTORIO.SIGNATURE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | SIGNATURE_ID | NUMBER | N |  |
| 2 | DOCUMENT_ID | NUMBER | N |  |
| 3 | HASH | BLOB | Y |  |
| 4 | ALIAS | VARCHAR2 | Y |  |
| 5 | KEY_TYPE | VARCHAR2 | Y |  |
| 6 | SIGNER_TYPE | VARCHAR2 | Y |  |
| 7 | TOKEN_TYPE | VARCHAR2 | Y |  |
| 8 | SIGNATURE_TYPE | VARCHAR2 | Y |  |
| 9 | VALUE | BLOB | Y |  |
| 10 | REFERENCE_TIME | TIMESTAMP(6) | Y |  |
| 11 | CERTIFICATE_TYPE | VARCHAR2 | Y |  |
| 12 | MESSAGE | VARCHAR2 | Y |  |
| 13 | SUBJECT | VARCHAR2 | Y |  |
| 14 | ISSUER | VARCHAR2 | Y |  |

---

## CARTORIO.STATUS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | STATUS_ID | NUMBER | N |  |
| 2 | MESSAGE | VARCHAR2 | N |  |

---

## DBAMV.AUTORIZADOR
> Tabela para cadastro dos profissionais autorizadores

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AUTORIZADOR | NUMBER | N | Codigo do Autorizador |
| 2 | NR_CPF | VARCHAR2 | Y | Numero do CPF do Autorizador |
| 3 | NM_AUTORIZADOR | VARCHAR2 | N | Nome do Autorizador |
| 4 | CD_CONSELHO | NUMBER | Y | Codigo do conselho em que pertence o Autorizador |
| 5 | NR_CONSELHO | NUMBER | Y | Numero do Autorizador no conselho em que pertence |
| 6 | NR_CNS | VARCHAR2 | Y | Numero do CNS do Autorizador |
| 7 | SN_ATIVO | VARCHAR2 | N | Identifica se Autorizador esta ativo |

---

## DBAMV.AUTORIZADORES_SOLICIT_EMAIL
> tabela de autorizadores de Solicitacao de Compra que recebem email

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SOL_COM | NUMBER | N | numero da solicitac?o de compra |
| 2 | CD_ID_USUARIO | VARCHAR2 | N | usuario autorizador que recebeu email para aprovac?o |
| 3 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da empresa a que pertence o usuario autorizador cadastrado |
| 4 | DT_ENVIO_EMAIL | DATE | N | data de envio do email |

---

## DBAMV.AUTORIZADOR_ACOMODACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AUTORIZADOR_ELETRONICO | NUMBER | Y | Identificador do autorizador eletronico |
| 2 | CD_SISTEMA | VARCHAR2 | N | Identificador do sistema |
| 3 | DS_ELEMENTO | VARCHAR2 | N | Descric?o do elemento na lista |
| 4 | DS_VALOR_ELEMENTO | VARCHAR2 | N | Codigo do Elemento na Lista |
| 5 | CD_TIP_ACOM | NUMBER | Y | Identificador do Tipo de Acomodac?o |
| 6 | SN_DEFAULT | VARCHAR2 | N | Identifica se o item e para ser tratado como default |

---

## DBAMV.AUTORIZADOR_CANCELAMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AUTORIZADOR_ELETRONICO | NUMBER | Y | Identificador do autorizador eletronico |
| 2 | CD_SISTEMA | VARCHAR2 | N | Identificador do sistema |
| 3 | DS_ELEMENTO | VARCHAR2 | N | Descric?o do elemento na lista |
| 4 | DS_VALOR_ELEMENTO | VARCHAR2 | N | Codigo do Elemento na Lista |
| 5 | SN_DEFAULT | VARCHAR2 | N | Identifica se o item e para ser tratado como default |

---

## DBAMV.AUTORIZADOR_CARATER

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AUTORIZADOR_ELETRONICO | NUMBER | Y | Identificador do autorizador eletronico |
| 2 | CD_SISTEMA | VARCHAR2 | N | Identificador do sistema |
| 3 | DS_ELEMENTO | VARCHAR2 | N | Descric?o do elemento na lista |
| 4 | DS_VALOR_ELEMENTO | VARCHAR2 | N | Codigo do Elemento na Lista |
| 5 | SN_DEFAULT | VARCHAR2 | N | Identifica se o item e para ser tratado como default |

---

## DBAMV.AUTORIZADOR_CONVENIO
> Tabela de relacionamento entre os convenios e as operadoras

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AUTORIZADOR_ELETRONICO | NUMBER | N |  |
| 2 | CD_CONVENIO | NUMBER | N | Codigo do convenio |
| 3 | DS_IDENTIFICADOR_NA_OPERADORA | VARCHAR2 | Y | Codigo de identificac?o da operadora |
| 4 | TP_LEITURA_CARTEIRA | VARCHAR2 | Y | Forma da leitura da carteira: L-Leitora, M-Digitac?o Manual |
| 5 | TP_AUTORIZACAO | VARCHAR2 | Y | Indica o tipo de autorizac?o que o convenio ira usar WEBSERVICE ou TXT. |
| 6 | SN_GUIA_AUTORIZADA | VARCHAR2 | Y | Indica se o convênio utiliza guia já autorizada se utilizar o valor é S, Se utilizar a opção: aut... |

---

## DBAMV.AUTORIZADOR_ELETRONICO
> Tabela usada para configurar o autorizador automatico de atendimentos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AUTORIZADOR_ELETRONICO | NUMBER | N | Codigo de identificac?o da configurac?o |
| 2 | CD_CONVENIO | NUMBER | Y | Codigo de Identificac?odo Convenio |
| 3 | CD_MULTI_EMPRESAS | NUMBER | Y | Codigo de Identificac?o da Multu-Empresa |
| 4 | SN_UTILIZA_AUTORIZADOR_PADRAO | VARCHAR2 | N | Indica se sera usado o autorizador como padr?o |
| 5 | SN_MASCARA_MATRICULA | VARCHAR2 | N | Indica se os caracteres do numero da carteira ser?o mascarados com asteriscos |
| 6 | SN_POSICAO_ESPECIAL_MATRICULA | VARCHAR2 | N | Indica se os caracteres do numero da carterira ter?o posic?o especial de leitura |
| 7 | NR_POSICAO_INICIAL_MATRICULA | NUMBER | Y | Identifica o inicio da leitura especial |
| 8 | NR_POSICAO_FINAL_MATRICULA | NUMBER | Y | Identifica o final de leitura especial |
| 9 | SN_UTILIZA_MATRICULA | VARCHAR2 | N | Identifica se a matricula sera requisitada no processod de cancelamento de autorizac?o |
| 10 | SN_UTILIZA_GUIA | VARCHAR2 | N | Identifica se a guia sera requisitada no processo de cancelamento de autorizac?o |
| 11 | SN_UTILIZA_AUTORIZACAO | VARCHAR2 | N | Identifica se o codigo da autorizac?o sera requisitado no processo de cancelamento de autorizac?o |
| 12 | SN_UTILIZA_CARTEIRA | VARCHAR2 | N | Identifica se o numero da carteira sera requisitado no processo de cancelamento de autorizac?o |
| 13 | DS_PATH_ENTRADA | VARCHAR2 | Y | Informa a localizac?o da pasta onde ser?o depositados os arquivos retornados pelo autorizador |
| 14 | DS_PATH_SAIDA | VARCHAR2 | Y | Informa a localizac?o da pasta onde ser?o enviados os arquivos para o autorizador |
| 15 | DS_PREFIXO_ARQUIVO | VARCHAR2 | Y | Prefixo a ser utilizado no nome do arquivo |
| 16 | DS_SUFIXO_ARQUIVO | VARCHAR2 | Y | Sufixo a ser utilizado no nome do aquivo |
| 17 | DS_EXTENSAO_ARQUIVO_SOLICITA | VARCHAR2 | Y | Extens?o utilizada para os arquivo de Solicitac?o |
| 18 | DS_EXTENSAO_ARQUIVO_STATUS | VARCHAR2 | Y | Extens?o utilziada para os arquivos de Status |
| 19 | DS_EXTENSAO_ARQUIVO_RESPOSTA | VARCHAR2 | Y | Extens?o utilziada para os arquivos de Respostas |
| 20 | DS_EXTENSAO_ARQUIVO_CONFIRMA | VARCHAR2 | Y | Exten?o utilizada para os arquivos de Confirmac?o |
| 21 | NR_SEGUNDOS_TIMEOUT_STATUS | NUMBER | Y | Tempo maximo para aguardar o arquivo de status |
| 22 | NR_SEGUNDOS_TIMEOUT_RESPOSTA | NUMBER | Y | Tempo maximo para aguardar o arquivo de resposta |
| 23 | DS_LAYOUT_IMPRESSAO | VARCHAR2 | Y | Layout para impress?o do comprovante |
| 24 | DS_ESTABELECIMENTO | VARCHAR2 | Y | Localizac?o do arquivo de credenciamento da operadora |
| 25 | DS_ROTINA_CARREGAR_ARQUIVO | VARCHAR2 | Y | Nodo da rotina responsavel em ler o arquivo do autorizador |
| 26 | DS_ROTINA_GERAR_ARQUIVO | VARCHAR2 | Y | Nodo da rotina responsavel em escrever o arquivo do autorizador |
| 27 | CD_OPERADORA | NUMBER | Y | Codigo da operadora |
| 28 | CD_USUARIO | VARCHAR2 | Y | Codigo do usuario |
| 29 | DS_SENHA | VARCHAR2 | Y | Senha de acesso |

---

## DBAMV.AUTORIZADOR_INTERNACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AUTORIZADOR_ELETRONICO | NUMBER | Y | Identificador do autorizador eletronico |
| 2 | CD_SISTEMA | VARCHAR2 | N | Identificador do sistema |
| 3 | DS_ELEMENTO | VARCHAR2 | N | Descric?o do elemento na lista |
| 4 | DS_VALOR_ELEMENTO | VARCHAR2 | N | Codigo do Elemento na Lista |
| 5 | CD_TIPO_INTERNACAO | NUMBER | Y | Identificador do Tipo de Internac?o |
| 6 | SN_DEFAULT | VARCHAR2 | N | Identifica se o item e para ser tratado como default |

---

## DBAMV.AUTORIZADOR_OPERADORA
> Tabela de cadastro de operadora de autorizac?o eletronicas de atendimento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_OPERADORA | NUMBER | N | Codigo de identificac?o da operadora |
| 2 | NM_OPERADORA | VARCHAR2 | N | Nome da operadora |
| 3 | SN_ATIVO | VARCHAR2 | N | Identifica se o cadastro esta ou n?o ativo |

---

## DBAMV.AUTORIZADOR_ORDEM_COMPRA
> Lista dos autorizadores nas ordens de compra

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORD_COM | NUMBER | N | Codigo da ordem de compra |
| 2 | CD_USUARIO | VARCHAR2 | N | Codigo do usuario autorizador |
| 3 | DT_AUTORIZACAO | DATE | N | Data da autorizac?o |
| 4 | CD_NIVEL_AUTORIZADOR | NUMBER | N | Codigo do nivel autorizador |
| 5 | DS_JUSTIFICATIVA | VARCHAR2 | Y | Descrição da Justificativa |

---

## DBAMV.AUTORIZADOR_REGIME

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AUTORIZADOR_ELETRONICO | NUMBER | Y | Identificador do autorizador eletronico |
| 2 | CD_SISTEMA | VARCHAR2 | N | Identificador do sistema |
| 3 | DS_ELEMENTO | VARCHAR2 | N | Descric?o do elemento na lista |
| 4 | DS_VALOR_ELEMENTO | VARCHAR2 | N | Codigo do Elemento na Lista |
| 5 | SN_DEFAULT | VARCHAR2 | N | Identifica se o item e para ser tratado como default |

---

## DBAMV.AUTORIZADOR_SOL_COM
> Tabela que ira gravar as autorizac?es das solicitac?es de compra

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SOL_COM | NUMBER | N | Codigo da solicitac?o de compras |
| 2 | CD_USUARIO | VARCHAR2 | N | Codigo do usuario que realizou a autorizac?o da solicitac?o de compras |
| 3 | CD_NIVEL_AUTORIZADOR | NUMBER | Y | Codigo do nivel autorizador |
| 4 | NR_SEQUENCIA_AUTORIZADOR | NUMBER | N | SALVA A SEQUENCIA HIERARQUICA DO AUTORIZADOR DA SOLICITAÇÃO DE COMPRAS |
| 5 | DT_AUTORIZACAO | DATE | N | Data da autorização da solicitação de compras |

---

## DBAMV.AUTORIZADOR_TETO
> Tabela de Autorizadores do Teto.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | SN_ATIVO | VARCHAR2 | N | Informa se o Autorizador esta Ativou ou n?o. |
| 2 | DT_INATIVO | DATE | Y | Data de inativac?o do Autorizador. |
| 3 | DS_MOTIVO_INATIVO | LONG | Y | Descric?o do motivo de inativac?o do autorizador do teto. |
| 4 | CD_USUARIO | VARCHAR2 | N | Codigo do Autorizador do Teto |
| 5 | NM_USUARIO | VARCHAR2 | N | Nome do Autorizador do Teto |
| 6 | CD_SENHA | VARCHAR2 | N | Senha do Autorizador do Teto |

---

## DBAMV.AUTORIZADOR_TIPO_TRANSACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AUTORIZADOR_ELETRONICO | NUMBER | Y | Identificador do autorizador eletronico |
| 2 | CD_SISTEMA | VARCHAR2 | N | Identificador do sistema |
| 3 | DS_ELEMENTO | VARCHAR2 | N | Descric?o do elemento na lista |
| 4 | DS_VALOR_ELEMENTO | VARCHAR2 | N | Codigo do Elemento na Lista |
| 5 | SN_DEFAULT | VARCHAR2 | N | Identifica se o item e para ser tratado como default |

---

## DBAMV.AUXILIA_SUS_PACIENTE
> Tabela Auxiliar do SUS para Paciente.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PACIENTE | NUMBER | N | Codigo do Paciente. |
| 2 | NR_MATRICULA | VARCHAR2 | N | Numero da Matricula do Registro Civil. |

---

## DBAMV.AVISO_RECOLETA
> Tabela de Avisos de Comparecimento do Paciente para realizac?o de Recoleta de Amostras

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AVISO_RECOLETA | NUMBER | N | Codigo de Identificac?o do Aviso de Recoleta |
| 2 | CD_COLETA_MATERIAL | NUMBER | N | Codigo de identificac?o da Solicitac?o de Coleta associada ao Aviso |
| 3 | TP_SITUACAO | VARCHAR2 | N | Situac?o atual do Aviso de Recoleta |
| 4 | DT_MARCACAO | DATE | Y | Data para qual foi marcada a Recoleta pelo paciente |
| 5 | DS_HISTORICO | VARCHAR2 | Y | Descric?o dos contatos realizados com o Paciente |
| 6 | CD_AMOSTRA | NUMBER | Y | Codigo da amostra(fk). |

---

## DBAMV.BIOMETRIA_PACIENTE
> Tabela das biometrias do paciente

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PACIENTE | NUMBER | N | Código do paciente |
| 2 | TP_DEDO | VARCHAR2 | N | Tipo do dedo do paciente. |
| 3 | TEMPLATE_DEDO | VARCHAR2 | Y | Imagem(Template) do dedo |

---

## DBAMV.BIOMETRIA_PACIENTE_IMG
> Tabela de imagens dos dedos dos pacientes

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PACIENTE | NUMBER | N |  |
| 2 | TP_DEDO | VARCHAR2 | N |  |
| 3 | IMG1 | BLOB | N |  |
| 4 | IMG2 | BLOB | N |  |
| 5 | IMG3 | BLOB | N |  |
| 6 | IMG4 | BLOB | N |  |

---

## DBAMV.CARACT_CLINICA_PACIENTE
> Caracteristicas clinicas do paciente segundo indice ASIS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CARACT_CLINICA | NUMBER | N | Identificador do registro na tabela |
| 2 | DS_CARACTERISTICA | VARCHAR2 | N | Descreve a caracteristica clinica do paciente segundo indice de gravidade ASIS |
| 3 | SN_ATIVO | VARCHAR2 | N | Permite desabilitar o registro |
| 4 | DT_ATIVACAO | DATE | N | Data que a caracteristica foi incluida |
| 5 | NM_USUARIO_ATIV | VARCHAR2 | N | Nome do usuario que registrou a avaliac?o |
| 6 | DT_DESATIVACAO | DATE | Y | Data de desativacao da caracteristica |
| 7 | NM_USUARIO_DESATIV | VARCHAR2 | Y |  |
| 8 | NM_USUARIO | VARCHAR2 | N | Nome do usuario que responsavel pelo registro |
| 9 | DT_ULT_ALTERACAO | DATE | N | Data da ultima alterac?o do registro |

---

## DBAMV.CATEGORIA
> Tabela que armazena a descric?o das categorias para serem utilizados no cadastro do paciente

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CATEGORIA | NUMBER | N | Codigo sequencial da tabela de categorias |
| 2 | DS_CATEGORIA | VARCHAR2 | Y | Descric?o da categoria |
| 3 | DS_RGB_HEXADECIMAL | VARCHAR2 | Y | Rgb hexadecimal da cor |
| 4 | SN_ATIVO | VARCHAR2 | N | Identifica se a categoria esta ativa |

---

## DBAMV.CBOR
> Aramazena os codigos e descric?es dos CBORs das empresas

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CBOR | NUMBER | N | Chave Primaria. Codigo do Cadastro. |
| 2 | DS_CBOR | VARCHAR2 | Y | Descric?o do CBOR. |

---

## DBAMV.CFOP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CFOP | NUMBER | N |  |
| 2 | NR_CFOP | VARCHAR2 | N |  |
| 3 | DS_CFOP | VARCHAR2 | Y |  |
| 4 | TP_CFOP | VARCHAR2 | Y |  |
| 5 | DT_VIGENCIA | DATE | Y |  |

---

## DBAMV.CID

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CID | VARCHAR2 | N |  |
| 2 | CD_SGRU_CID | VARCHAR2 | N |  |
| 3 | DS_CID | VARCHAR2 | N |  |
| 4 | TP_SEXO | VARCHAR2 | N |  |
| 5 | CAT | VARCHAR2 | Y |  |
| 6 | SUBCAT | VARCHAR2 | Y |  |
| 7 | RESTRSEXO | VARCHAR2 | Y |  |
| 8 | CAMPOS_RAD | NUMBER | Y |  |
| 9 | ESTADIO | VARCHAR2 | Y |  |
| 10 | OPC | VARCHAR2 | Y |  |
| 11 | REPETE_RAD | VARCHAR2 | N |  |
| 12 | TP_CLASSIFICACAO | VARCHAR2 | Y | Tipo classificacao do cid10 |
| 13 | DS_CID_AUX | VARCHAR2 | Y | Descric?o de cid de alta. |
| 14 | SN_ATIVO | VARCHAR2 | Y | Indica se o CID pode ou n?o ser lancado. |
| 15 | SN_NOTIFICAVEL | VARCHAR2 | N | Indica se o CID e uma Doencas de Notificac?o Compulsoria |
| 16 | SN_NOTIFICA_IMEDIATO | VARCHAR2 | N | Indica se o CID deve ser notificado imediatamente |
| 17 | TP_LISTA_NOTIFICACAO | VARCHAR2 | Y | Tipo da lista de notificac?o |
| 18 | DS_CID_COMPLETA | VARCHAR2 | Y | Descricao completa do cid10 |
| 19 | DS_DETALHES | VARCHAR2 | Y | Detalhamento do Cid |
| 20 | LINF | VARCHAR2 | Y | LÃ­mite de edade inferior mininima aceptado |
| 21 | LSUP | VARCHAR2 | Y | LÃ­mite de edade maximas aceptado |
| 22 | ERRAD | VARCHAR2 | Y | Causas erradicadas ou nÃ£o existentes no paÃ­s(MEXICO) (F = No erradicada, T = Erradicada) |
| 23 | NO_CBD | VARCHAR2 | Y | No es vÃ¡lida como Causa BÃ¡sica de DefunciÃ³n (F = Causa valida, T = No causa valida) |
| 24 | NO_APH | VARCHAR2 | Y | No es vÃ¡lida como AfecciÃ³n principal hospitalaria (F = Causa valida, T = No causa valida) |
| 25 | SN_OHM | VARCHAR2 | Y |  |
| 26 | SN_GO | VARCHAR2 | Y |  |
| 27 | TP_DESTINATARIO | VARCHAR2 | N | O destinatário da notificação do CID (MS - Ministério da saúde, SE - Secretaria estadual de saúde... |
| 28 | TP_NOTIFICACAO | VARCHAR2 | N | Qual o período de notificação das ocorências do CID (D - Diariamente , S - Semanalmente e N - Nen... |

---

## DBAMV.CIDADANIAS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CIDADANIA | NUMBER | N |  |
| 2 | DS_CIDADANIA | VARCHAR2 | N |  |
| 3 | CD_CIDADANIA_SUS | VARCHAR2 | Y |  |
| 4 | CD_CIDADANIA_SUS_BKP | NUMBER | Y |  |
| 5 | CD_PAIS | NUMBER | Y | Codigo do pais |

---

## DBAMV.CIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CIDADE | NUMBER | N |  |
| 2 | NM_CIDADE | VARCHAR2 | N |  |
| 3 | NR_CEP_INICIAL | VARCHAR2 | Y |  |
| 4 | NR_CEP_FINAL | VARCHAR2 | Y |  |
| 5 | NR_DDD | VARCHAR2 | Y |  |
| 6 | CD_UF | VARCHAR2 | N |  |
| 7 | CD_PAIS | NUMBER | N |  |
| 8 | CD_IBGE | NUMBER | Y |  |
| 9 | CD_LOCALIDADE | NUMBER | Y |  |
| 10 | NR_DIGITO_IBGE | NUMBER | Y |  |
| 11 | CD_SIAFI | VARCHAR2 | Y |  |
| 12 | CD_ESTADO | NUMBER | Y | Estado |
| 13 | CD_CIDADE_EXTERNO | VARCHAR2 | Y | Codigo de identificac?o da cidade do pais |
| 14 | CD_TOM | VARCHAR2 | Y | Armazena o Código TOM, gerado pela Receita Federal, para cada cidade |

---

## DBAMV.CIDO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CIDO | VARCHAR2 | N | Código do CID oncológico |
| 2 | CD_SGRU_CIDO | VARCHAR2 | N | Código do sub-grupo (categoria) oncologica. |
| 3 | DS_CIDO | VARCHAR2 | N | Descrição de cid oconlógico. |
| 4 | TP_SEXO | VARCHAR2 | N | Indica o sexo que CID oncológico pode ou não ser lançado. |
| 5 | SN_ATIVO | VARCHAR2 | Y | Indica se o CID oncológico pode ou não ser lançado. |
| 6 | SN_NOTIFICAVEL | VARCHAR2 | N | Indica se o CID oncológico é uma Doenças de Notificação Compulsória |
| 7 | SN_NOTIFICA_IMEDIATO | VARCHAR2 | N | Indica se o CID oncológico deve ser notificado imediatamente |
| 8 | SN_GO | VARCHAR2 | Y | Indica se o subgrupo (categoria) é ginecológico ou não. |
| 9 | CD_CID | VARCHAR2 | N | Código do CID 10 que o CID oncológico está relacionado |
| 10 | TP_DESTINATARIO | VARCHAR2 | N | O destinatário da notificação do CID (MS - Ministério da saúde, SE - Secretaria estadual de saúde... |
| 11 | TP_NOTIFICACAO | VARCHAR2 | N | Qual o período de notificação das ocorências do CID (D - Diariamente , S - Semanalmente e N - Nne... |

---

## DBAMV.CLASSIF_INDICE_ASIS
> Associa as tabelas DBAMV.CARACT_CLINICA_PACIENTE e DBAMV.INDICE_ASIS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CLASSIF_IND_ASIS | NUMBER | N | Identificador do registro na tabela |
| 2 | VL_PESO_CALC | NUMBER | N | Peso especifico do indice para calculo da gravidade |
| 3 | CD_CARACT_CLINICA | NUMBER | N | Codigo identificador da caracteristica clinica |
| 4 | TP_INDICE_ASIS | VARCHAR2 | N | Indices da tabela ASIS |
| 5 | SN_ATIVO | VARCHAR2 | N | Indica se o criterio esta ativo |
| 6 | DT_ATIVACAO | DATE | N | Data que o criterio foi incluido |
| 7 | NM_USUARIO_ATIV | VARCHAR2 | N | Responsavel pela inclus?o do criterio |
| 8 | DT_DESATIVACAO | DATE | Y | Data que o criterio foi desativado |
| 9 | NM_USUARIO_DESATIV | VARCHAR2 | Y | Responsavel pela desativac?o do criterio |
| 10 | NM_USUARIO | VARCHAR2 | N | Nome do ultimo usuario a alterar o registro |
| 11 | DT_ULT_ALTERACAO | DATE | N | Data da ultima alterac?o do registro |

---

## DBAMV.CNAE
> Tabela CNAE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CNAE | NUMBER | N | Cdigo do registro |
| 2 | CD_PAI | NUMBER | Y | Cdigo do registro pai |
| 3 | NR_CNAE | VARCHAR2 | Y | Nmero cdigo |
| 4 | DS_CNAE | VARCHAR2 | N | Descrição |
| 5 | SN_ISS | VARCHAR2 | N | Incide no clculo do ISS |
| 6 | SN_ICMS | VARCHAR2 | N | Inside no clculo do ICMS |
| 7 | TP_REGISTRO | VARCHAR2 | N | Tipo do registro |
| 8 | SN_BLOQUEADO | VARCHAR2 | N | Registro bloqueado para uso |
| 9 | DT_INSERT | DATE | N | Data do registro |
| 10 | CD_USUARIO_INS | VARCHAR2 | N | Usurio do registro |

---

## DBAMV.CNAER
> Aramazena os codigos e descric?es do Cadastro Nacional de Atividade Economica

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CNAER | NUMBER | N | Chave Primaria. Codigo do Cadastro. |
| 2 | DS_CNAER | VARCHAR2 | Y | Descric?o do Cadastro. |

---

## DBAMV.CNO
> Tabela do Cadastro Nacional de Obras - CNO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CNO | VARCHAR2 | N | Código |
| 2 | DS_DESCRICAO | VARCHAR2 | Y | Descrição |
| 3 | DT_REGISTRO | DATE | Y | Data de Registro |
| 4 | DT_VALIDADE | DATE | Y | Data de Validade |
| 5 | CD_IND_OBRA | NUMBER | Y | Código indicativo de Obras |

---

## DBAMV.CONDICAO_REGULACAO
> Tabela de condições do paciente na regulação

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONDICAO_REGULACAO | VARCHAR2 | N | Código da Condição do paciente na Regulação |
| 2 | DS_CONDICAO_REGULACAO | VARCHAR2 | N | Descrição da Condição do paciente na Regulação |
| 3 | TP_CONDICAO | VARCHAR2 | N | Tipo de Condição do paciente na Regulação: IU - INTRA_UTERO, RN - RECEM_NASCIDO, SR - SITUACAO_RU... |

---

## DBAMV.CONDICOES_ESPECIAIS_PAC
> Tabela de condições especiais do paciente.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONDICAO | NUMBER | N | Código sequencial, para identificar a condição especial. |
| 2 | DS_CONDICAO | VARCHAR2 | N | Descrição da condição especial. |
| 3 | SN_ATIVO | VARCHAR2 | N | Identifica se a condição especial está ativa. |

---

## DBAMV.CONSELHO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONSELHO | NUMBER | N |  |
| 2 | DS_CONSELHO | VARCHAR2 | N |  |
| 3 | TP_CONSELHO | NUMBER | N | Indentificador do Tipo de Conselho |
| 4 | CD_UF | VARCHAR2 | Y | Estado do conselho regional |

---

## DBAMV.CONSELHO_ESPECIALID
> Tabela de Especialidades por Conselho

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONSELHO_ESPECIALID | NUMBER | N | Chave primária (PK) |
| 2 | CD_CONSELHO | NUMBER | N | Código do Conselho (DBAMV.CONSELHO) |
| 3 | CD_ESPECIALID | NUMBER | N | Código da Especialidade (DBAMV.ESPECIALID) |

---

## DBAMV.CONTATO_FORNEC

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONTATO | NUMBER | N |  |
| 2 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 3 | NM_CONTATO | VARCHAR2 | N |  |
| 4 | CD_FORNECEDOR | NUMBER | Y |  |
| 5 | CD_CONTATO_FORNEC_INTEGRA | VARCHAR2 | Y |  |
| 6 | DT_INTEGRA | DATE | Y |  |
| 7 | CD_SEQ_INTEGRA | NUMBER | Y |  |

---

## DBAMV.CONTATO_PACIENTE
> Tabela de cadastro de telefones de contato do paciente

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONTATO_PACIENTE | NUMBER | N | Indica o numero da sequencia do contato |
| 2 | CD_PACIENTE | NUMBER | N | Indica o numero do codigo do paciente |
| 3 | NM_PAIS | VARCHAR2 | Y | Indica a descric?o do pais vinculado ao ddi |
| 4 | NR_DDI | NUMBER | Y | Indica o numero prefixo internacional do telefone |
| 5 | NR_DDD | NUMBER | Y | Indica o numero prefixo nacional do telefone |
| 6 | NR_TELEFONE | VARCHAR2 | Y | Indica o numero do telefone |
| 7 | NR_RAMAL | VARCHAR2 | Y | Indica o numero do ramal do telefone residencial ou comercial |
| 8 | DS_TIP_COMUN | VARCHAR2 | N | Indica a descric?o do contato do paciente |
| 9 | TP_CONTATO | VARCHAR2 | N | Indica o tipo do telefone de contato: C-> Celular, R-> Residencial, O-> Comercial |
| 10 | SN_PADRAO | VARCHAR2 | N | Indica qual dos telefones sera padr?o |
| 11 | DS_OBSERVACAO | VARCHAR2 | Y | Observac?o dos telefones de contato |
| 12 | SN_SMS | VARCHAR2 | N | Permtie o envio de SMS |

---

## DBAMV.CONTATO_PACIENTE_EXTERNO
> Tabela de Acompanhamento de Pacientes Externos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONTATO | NUMBER | N | Numero do registro de contato realizado com o paciente. |
| 2 | DT_CONTATO | DATE | N | Data em que foi realizado o contato com o paciente ou responsavel. |
| 3 | HR_CONTATO | DATE | N | Hora em que foi realizado o contato com o paciente ou responsavel. |
| 4 | CD_USUARIO | VARCHAR2 | N | Usuario responsavel pelo cadastro do registro de contato. |
| 5 | CD_PACIENTE | NUMBER | N | Codigo do Paciente acompanhado. |
| 6 | DS_INFORMANTE | VARCHAR2 | N | Descric?o da pessoa responsavel por passar as informac?es para o paciente. |
| 7 | DS_INFORMACAO | VARCHAR2 | N | Descric?o das informac?es passadas sobre o paciente. |
| 8 | SN_OBITO | VARCHAR2 | N | Indica que foi comunicado o obito do paciente durante o registro de contato. |
| 9 | DT_OBITO | DATE | Y | Data do obito do paciente passada para o Hospital. |
| 10 | HR_OBITO | DATE | Y | Hora do obito do paciente passada para o Hospital. |
| 11 | NR_DECLARACAO_OBITO | VARCHAR2 | Y | Numero da Declarac?o de Obito do Paciente. |
| 12 | TP_LOCAL | VARCHAR2 | Y | Discriminac?o do local onde ocorreu o Obito do Paciente |
| 13 | CD_CID_OBITO | VARCHAR2 | Y | Codigo do Diagnostico associado ao Obito do Paciente (Causa Morte). |
| 14 | DS_CAUSA_MORTE | VARCHAR2 | Y | Descric?o da Causa Morte do Paciente (Diagnostico). |

---

## DBAMV.CONTATO_REALIZADO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONTATO_REALIZADO | NUMBER | N | Codigo do contato realizado. |
| 2 | CD_ITPED_RX | NUMBER | Y | Codigo do Item do pedido (fk). |
| 3 | DATA | DATE | N | Data do log (fk). |
| 4 | NM_USUARIO | VARCHAR2 | N | Nome do usuario do log (fk). |
| 5 | DATA_CONTATO | DATE | N | Data de gravac?o do contato. |
| 6 | NM_USUARIO_CONTATO | VARCHAR2 | N | Nome do usuario que fez o contato. |
| 7 | DS_OBSERVACAO_CONTATO | VARCHAR2 | Y | Campo de observac?o do contato. |
| 8 | CD_AVISO_RECOLETA | NUMBER | Y | Codigo do aviso de recoleta(fk). |
| 9 | DT_RECOLETA_MARCADA | DATE | Y | Data marcada paraa nova recoleta. |

---

## DBAMV.CONVENIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONVENIO | NUMBER | N |  |
| 2 | NM_CONVENIO | VARCHAR2 | N |  |
| 3 | SN_FATURA_AMBULATORIO_SUS | VARCHAR2 | Y |  |
| 4 | SN_COBRA_INSUMOS | VARCHAR2 | Y |  |
| 5 | TP_CONVENIO | VARCHAR2 | N |  |
| 6 | CD_FOR_APRE | NUMBER | Y |  |
| 7 | TP_FORMA_AGRUPAMENTO | VARCHAR2 | Y |  |
| 8 | TP_IMPORTAR_MATMED | VARCHAR2 | Y |  |
| 9 | DS_BAIRRO | VARCHAR2 | Y |  |
| 10 | DS_CIDADE | VARCHAR2 | Y |  |
| 11 | DS_ENDERECO | VARCHAR2 | Y |  |
| 12 | DS_UF | VARCHAR2 | Y |  |
| 13 | NR_CGC | VARCHAR2 | Y |  |
| 14 | NR_FONE | VARCHAR2 | Y |  |
| 15 | NR_CEP | VARCHAR2 | Y |  |
| 16 | NM_RAZAO_SOCIAL | VARCHAR2 | Y |  |
| 17 | SN_GUIA | VARCHAR2 | Y |  |
| 18 | SN_VALIDADE_CARTEIRA | VARCHAR2 | Y |  |
| 19 | SN_ABATE_DEVOLUCAO | VARCHAR2 | Y |  |
| 20 | SN_ATIVO | VARCHAR2 | N |  |
| 21 | NR_DIAS_RETORNO | NUMBER | Y |  |
| 22 | VL_PERC_IR | NUMBER | Y |  |
| 23 | VL_PERC_ISS | NUMBER | Y |  |
| 24 | CD_HOSPITAL_NO_CONVENIO | VARCHAR2 | Y |  |
| 25 | CD_CONVENIO_UNIFICADO | VARCHAR2 | Y |  |
| 26 | NR_SEQ_REMESSA | NUMBER | Y |  |
| 27 | CD_APR_CONTA_MEIO_MAG | NUMBER | Y |  |
| 28 | SN_FATURA_DATA_ALTA | VARCHAR2 | N |  |
| 29 | NM_CONTATO | VARCHAR2 | Y |  |
| 30 | CD_GRUPO_VAL | NUMBER | Y |  |
| 31 | TP_TRIBUTO_RETIDO | VARCHAR2 | N |  |
| 32 | DS_E_MAIL | VARCHAR2 | Y |  |
| 33 | SN_ALT_DADOS_ORA_APP | VARCHAR2 | N |  |
| 34 | CD_GRUPO_VAL_SENHA | NUMBER | Y |  |
| 35 | DS_ENDERECO_CORRESPONDENCIA | VARCHAR2 | Y |  |
| 36 | DS_BAIRRO_CORRESPONDENCIA | VARCHAR2 | Y |  |
| 37 | DS_CIDADE_CORRESPONDENCIA | VARCHAR2 | Y |  |
| 38 | NR_CEP_CORRESPONDENCIA | VARCHAR2 | Y |  |
| 39 | DS_UF_CORRESPONDENCIA | VARCHAR2 | Y |  |
| 40 | DS_ENDERECO_COBRANCA | VARCHAR2 | Y |  |
| 41 | DS_BAIRRO_COBRANCA | VARCHAR2 | Y |  |
| 42 | DS_CIDADE_COBRANCA | VARCHAR2 | Y |  |
| 43 | NR_CEP_COBRANCA | VARCHAR2 | Y |  |
| 44 | DS_UF_COBRANCA | VARCHAR2 | Y |  |
| 45 | SN_FILANTROPIA | VARCHAR2 | Y |  |
| 46 | DS_ATRIBUTO1 | VARCHAR2 | Y |  |
| 47 | DT_INICIO_CONTRATO | DATE | Y |  |
| 48 | DS_CARGO_CONTATO | VARCHAR2 | Y |  |
| 49 | SN_CATEGORIA | VARCHAR2 | N |  |
| 50 | CD_FORNECEDOR | NUMBER | Y |  |
| 51 | VL_CUSTO_FINANCEIRO | NUMBER | Y |  |
| 52 | CD_FORMULARIO_NF | NUMBER | Y |  |
| 53 | SN_CARTEIRA_PARTICULAR | VARCHAR2 | N |  |
| 54 | NM_CONTATO_GLOSAS | VARCHAR2 | Y |  |
| 55 | TP_CON_REC_CONV | VARCHAR2 | N |  |
| 56 | SN_ISS_PAGO_CONV | VARCHAR2 | N |  |
| 57 | SN_AUDITORIA_INTERNA | VARCHAR2 | N |  |
| 58 | NR_SEQ_LOTE | NUMBER | Y |  |
| 59 | SN_ISS_PLANO | VARCHAR2 | N |  |
| 60 | NR_DIAS_PAGTO_REMESSA | NUMBER | Y |  |
| 61 | NR_INSCRICAO_MUNICIPAL | VARCHAR2 | Y |  |
| 62 | NR_INSCRICAO_ESTADUAL | VARCHAR2 | Y |  |
| 63 | NR_SEQ_PREIMPRE | NUMBER | Y |  |
| 64 | NR_LIMITE_PREIMPRE | NUMBER | Y |  |
| 65 | NM_REPORT_PREIMPRE_AMB | VARCHAR2 | Y |  |
| 66 | NM_REPORT_PREIMPRE_HOSP | VARCHAR2 | Y |  |
| 67 | DS_MOVIMENTACAO | VARCHAR2 | Y |  |
| 68 | NR_DOCUMENTO_IDENTIFICACAO | VARCHAR2 | Y |  |
| 69 | CD_CON_COR | NUMBER | Y |  |
| 70 | TP_RETORNO_FATURA | VARCHAR2 | Y |  |
| 71 | CD_MOTIVO_GLOSA | NUMBER | Y |  |
| 72 | DT_DIA_RECEBIMENTO | NUMBER | Y |  |
| 73 | SN_IMPORTA_GLOSA_RECEB | VARCHAR2 | N |  |
| 74 | QT_HORAS_RETORNO_PAEU | NUMBER | Y | Criada para realizar o controle de retornos nos atendimentos de urgencia |
| 75 | SN_CHECAR_ESPECIALID_PAEU | VARCHAR2 | N | Criada para realizar o controle de retornos atravez da especialdiade nos atendimentos de urgencia. |
| 76 | SN_REGRA_ATENDIMENTO_CONTA | VARCHAR2 | N |  |
| 77 | TP_GERACAO_NR_GUIA | VARCHAR2 | Y |  |
| 78 | SN_BLOQUEIA_PREST | VARCHAR2 | N | Indica se o Convenio Bloqueia pedidos de Exame por Prestador |
| 79 | NR_DIAS_REQUISICAO_MEDICA | NUMBER | Y | Limite em dias para emiss?o da requisic?o medica do procedimentos |
| 80 | SN_REQUISICAO_MESMO_ANO | VARCHAR2 | N | Identificador - A guia deve ser emitida no mesmo ano do atendimento ? |
| 81 | NR_SEQ_PREIMPRE_FINAL | NUMBER | Y | Numerac?o pre-impressa final propria do convenio |
| 82 | NM_REPORT_CAPA_REMESSA | VARCHAR2 | Y | Relatorio Especifico de Capa de Remessa |
| 83 | SN_RETORNO_PRESTADOR_AMB | VARCHAR2 | N | Identificador - Identificar retorno de atendimento ambulatorial pelo prestador ? |
| 84 | SN_RETORNO_PROCED_AMB | VARCHAR2 | N | Identificador - Identificar retorno de atendimento ambulatorial pelo procedimento ? |
| 85 | SN_RETORNO_ESPECIALID_AMB | VARCHAR2 | N | Identificador - Identificar retorno de atendimento ambulatorial pela especialidade ? |
| 86 | SN_RETORNO_SERVICO_AMB | VARCHAR2 | N | Identificador - Identificar retorno de atendimento ambulatorial pelo servico ? |
| 87 | SN_RETORNO_LIVRE_AMB | VARCHAR2 | N | Identificador - Identificar retorno de atendimento ambulatorial pela escolha do usuario ? |
| 88 | SN_RETORNO_PRESTADOR_URG | VARCHAR2 | N | Identificador - Identificar retorno de atendimento de urgencia pelo prestador ? |
| 89 | SN_RETORNO_PROCED_URG | VARCHAR2 | N | Identificador - Identificar retorno de atendimento de urgencia pelo procedimento ? |
| 90 | SN_RETORNO_ESPECIALID_URG | VARCHAR2 | N | Identificador - Identificar retorno de atendimento de urgencia pela especialidade ? |
| 91 | SN_RETORNO_SERVICO_URG | VARCHAR2 | N | Identificador - Identificar retorno de atendimento de urgencia pelo servico ? |
| 92 | SN_RETORNO_LIVRE_URG | VARCHAR2 | N | Identificador - Identificar retorno de atendimento de urgencia por escolha do usuario ? |
| 93 | CD_PRO_FAT | VARCHAR2 | Y | Procedimento configurado para lancamento dos acrescimos no calculo da conta |
| 94 | VL_PERCENTUAL | NUMBER | Y | Percentual de acrescimo para lancamento no calculo da conta |
| 95 | CD_MOTIVO_AUDITORIA | NUMBER | Y |  |
| 96 | TP_SEQ_PREIMPRE | VARCHAR2 | Y | Tipo de sequencial do relatorio pre-impresso do convenio, responsavel pelo controle da func?o de ... |
| 97 | TP_GERACAO_SEQ_PREIMPRE | VARCHAR2 | Y | Forma de gerac?o de sequencial do relatorio pre-impresso do convenio para contas ambulatoriais. |
| 98 | QT_PRO_FAT_SEQ_PREIMPRE | NUMBER | Y | Quantidade maxima de procedimentos por sequencial do relatorio pre-impresso do convenio para cont... |
| 99 | QT_SEQ_PREIMPRE_REMESSA | NUMBER | Y | Quantidade maxima de sequenciais do relatorio pre-impresso do convenio por remessa. |
| 100 | NR_DIAS_RETORNO_EXTERNO | NUMBER | Y | Dias admitidos para retorno de atendimentos externos. |
| 101 | SN_RETORNO_PRESTADOR_EXT | VARCHAR2 | N | Identificador - Identificar retorno de atendimento externo pelo prestador ? |
| 102 | SN_RETORNO_PROCED_EXT | VARCHAR2 | N | Identificador - Identificar retorno de atendimento externo pelo procedimento ? |
| 103 | SN_RETORNO_ESPECIALID_EXT | VARCHAR2 | N | Identificador - Identificar retorno de atendimento externo pela especialidade ? |
| 104 | SN_RETORNO_SERVICO_EXT | VARCHAR2 | N | Identificador - Identificar retorno de atendimento externo pelo servico ? |
| 105 | SN_RETORNO_LIVRE_EXT | VARCHAR2 | N | Identificador - Identificar retorno de atendimento externo pela escolha do usuario ? |
| 106 | TP_FONTE_REMUNERACAO | VARCHAR2 | Y | Fonte de remunerac?o utilizado no financiamento da internac?es.. |
| 107 | NR_REGISTRO_OPERADORA_ANS | VARCHAR2 | Y | Numero do Registro da Operadora junto a ANS |
| 108 | SN_PROT_GUIA_PRESTADOR | VARCHAR2 | N | Controlar Entrega de Guias ao Prestador Credenciado |
| 109 | NR_DIAS_AUTORIZA_OPME | NUMBER | Y | Numero de Dias Limite para Autorizac?o das guias de OPME |
| 110 | SN_CRIA_GUIA_OPME_FSCC | VARCHAR2 | N | Define se a guia de OPME sera criada automaticamente pelo Centro Cirurgico |
| 111 | NR_POS_INI_CD_CARTEIRA_BARRAS | NUMBER | Y | Numero da posic?o inicial do codigo da carteira, dentro do codigo de barras |
| 112 | NR_POS_FIM_CD_CARTEIRA_BARRAS | NUMBER | Y | Numero da posic?o final do codigo da carteira, dentro do codigo de barras |
| 113 | NR_POS_INI_DT_VALIDADE_BARRAS | NUMBER | Y | Numero da posic?o inicial da validade da carteira, dentro do codigo de barras |
| 114 | NR_POS_FIM_DT_VALIDADE_BARRAS | NUMBER | Y | Numero da posic?o final da validade da carteira, dentro do codigo de barras |
| 115 | TP_ATUALIZA_GUIA_OPME_FSCC | VARCHAR2 | N | Define como sera a atualizac?o da Guia de OPME pelo FSCC : [N]?o atualiza, [A]tualiza na mesma gu... |
| 116 | SN_COBRANCA_PORTE | VARCHAR2 | N | Indicara se para este convenio, ao lanca a taxa na confirmac?o da cirurgia, incidira sobre a mesm... |
| 117 | VL_PERCENTUAL_PORTE2 | NUMBER | Y | Indicara qual o percentual de cobranca para as taxas e equipamentos vinculadas as cirurgias de 2o... |
| 118 | VL_PERCENTUAL_PORTE3 | NUMBER | Y | Indicara qual o percentual de cobranca para as taxas e equipamentos vinculadas as cirurgias a par... |
| 119 | CD_CHR_ANT_NR_CARTEIRA_BARRA | VARCHAR2 | Y | Caractere anterior ao Numero da Carteira no Codigo de Barras |
| 120 | CD_CHR_ANT_DT_VALIDADE_BARRA | VARCHAR2 | Y | Caractere anterior a Validade da Carteira no Codigo de Barras |
| 121 | SN_LANCA_CONSIGNADO_NA_CONTA | VARCHAR2 | Y | Produto consignado pago pelo convenio e ou n?o, lancado na conta. |
| 122 | LOGOTIPO | BLOB | Y | Logotipo do Convenio |
| 123 | TP_COBRANCA_ONCOLOGIA | VARCHAR2 | N | Informa o tipo de cobranca de tratamentos oncologicos: T - por Tratamento ou C - por Ciclo |
| 124 | SN_PERMITE_ATEND_AMB_INT | VARCHAR2 | Y | Indica se o convenio permite atendimento ambulatorial se o paciente estiver internado |
| 125 | SN_PERMITE_ATEND_EXT_INT | VARCHAR2 | Y | Indica se o convenio permite atendimento externo se o paciente estiver internado |
| 126 | QT_CSMH | NUMBER | N | Informa a quantidade de numeros CSMH utilizados na remessa e no relatorio de capa de lote |
| 127 | CD_CONVENIO_INTEGRA | VARCHAR2 | Y | Codigo do convenio (de-para) |
| 128 | CD_SEQ_INTEGRA | NUMBER | Y | Codigo sequencial da integrac?o |
| 129 | DT_INTEGRA | DATE | Y | Data da integrac?o do registro |
| 130 | TP_ARQUIVO_RETORNO | VARCHAR2 | N | Configurac?o do tipo de arquivo para importac?o do retorno |
| 131 | SN_EXIGE_LAUDO_TXT | VARCHAR2 | Y | Indica o convenio exige que os laudos do PSSD sejam exportado em arquivos texto |
| 132 | SN_VERIFICA_ELEGIBILIDADE | VARCHAR2 | N | Realiza a consulta Elegibilidade do Beneficiario/Carteira |
| 133 | TP_RETORNO_ATEND_AMB | VARCHAR2 | N | Campo utilizado para verificar juntamente com o numero de dias se o atendimento sera cadastrado c... |
| 134 | TP_RETORNO_ATEND_URG | VARCHAR2 | N | Campo utilizado para verificar juntamente com o numero de horas se o atendimento sera cadastrado ... |
| 135 | SN_EMAIL_NOTIFICACAO | VARCHAR2 | Y | Flag de configuracao para envio de email de notificacao. |
| 136 | CD_ENDERECO_POSTAL | VARCHAR2 | Y | Campo para registrar o CEP internacional do convenio |
| 137 | CD_IDENTIFICADOR_PESSOA | VARCHAR2 | Y | Campo para registrar o CPF/CNPJ internacional do convenio |
| 138 | CD_ESTADO | NUMBER | Y | Campo para registrar o ESTADO internacional do convenio |
| 139 | CD_ENDERECO_POSTAL_CORRESPOND | VARCHAR2 | Y | Campo para registrar o CEP internacional para endereco de correspondencia do convenio |
| 140 | CD_ESTADO_CORRESPONDENCIA | NUMBER | Y | Campo para registrar o ESTADO internacional para endereco de correspondencia do convenio |
| 141 | CD_ENDERECO_POSTAL_COBRANCA | VARCHAR2 | Y | Campo para registrar o CEP internacional para endereco de cobranca do convenio |
| 142 | CD_ESTADO_COBRANCA | NUMBER | Y | Campo para registrar o ESTADO internacional para endereco de cobranca do convenio |
| 143 | SN_GERA_NF_CONV_PACIENTE | VARCHAR2 | N | Indica se a nota fiscal de convênio será gerado por cada conta do paciente |
| 144 | SN_FECHA_AMB_SEM_IMPRIMIR | VARCHAR2 | N | Indica que a Conta Ambulatorial pode ser fechada sem Imprimir a fatura na tela de Lançamentos por... |
| 145 | NR_LIMITE_PRE_REMESSA | NUMBER | Y | Limite de Contas para a Pré-remessa. |
| 146 | SN_RETORNO_CID_AMB | VARCHAR2 | N | Identificador - Identificar retorno de atendimento ambulatorial pelo CID. |
| 147 | SN_RETORNO_CID_URG | VARCHAR2 | N | Identificador - Identificar retorno de atendimento de Urgencia pelo CID. |
| 148 | SN_RETORNO_CID_EXT | VARCHAR2 | N | Identificador - Identificar retorno de atendimento Externo pelo CID. |
| 149 | CD_TIPO_LOGRADOURO_CONV | NUMBER | Y | Tipo de logradouro do convenio (Usado apenas na tela de nota fiscal de convenio) |
| 150 | CD_TIPO_LOGRADOURO_CORRESP | NUMBER | Y | Tipo de logradouro de correspondencia do convenio (Usado apenas na tela de nota fiscal de convenio) |
| 151 | CD_TIPO_LOGRADOURO_COBRANCA | NUMBER | Y | Tipo de logradouro de cobrança do convenio (Usado apenas na tela de nota fiscal de convenio) |
| 152 | NR_NUMERO_END_CONVENIO | NUMBER | Y | Numero do endereco do convenio (Usado apenas na tela de nota fiscal de convenio) |
| 153 | NR_NUMERO_END_COBRANCA | NUMBER | Y | Numero do endereco de cobranca do convenio (Usado apenas na tela de nota fiscal de convenio) |
| 154 | NR_NUMERO_END_CORRESP | NUMBER | Y | Numero do endereco de correspondencia do convenio (Usado apenas na tela de nota fiscal de convenio) |
| 155 | CD_PAIS | NUMBER | Y | Codigo do Pais (Usado apenas na tela de nota fiscal de convenio) |
| 156 | CD_CIDADE | NUMBER | Y | Codigo da cidade (Usado apenas na tela de nota fiscal de convenio) |
| 157 | CD_CIDADE_COBRANCA | NUMBER | Y | Codigo da cidade de cobranca (Usado apenas na tela de nota fiscal de convenio) |
| 158 | CD_CIDADE_CORRESP | NUMBER | Y | Codigo da cidade de correspondencia (Usado apenas na tela de nota fiscal de convenio) |
| 159 | SN_FATURA_PRE_IMPRESSO_HOSP | VARCHAR2 | N | Indica se será impresso apenas o pré-impresso nas telas de lançamento da conta hospitalar no fatu... |
| 160 | SN_FATURA_PRE_IMPRESSO_AMB | VARCHAR2 | N | Indica se será impresso apenas o pré-impresso nas telas de lançamento da conta ambulatorial no fa... |
| 161 | NM_OBJETO_INTEGRACAO | VARCHAR2 | Y | Nome da função ligada a integração de elegibilidade |
| 162 | NR_DIGITOS_ELEGIBILIDADE | NUMBER | Y | Indica o tamanho fixo para o Código da Elegibilidade informado na tela de Carteira. |
| 163 | CD_PREFIXOS_ELEGIBILIDADE | VARCHAR2 | Y | Indica s prefixos válidos para o Código da Elegibilidade informado na tela de Carteira, separados... |
| 164 | TP_AUTORIZ_CENTRAL_AGENDAMENTO | VARCHAR2 | Y | Tipo de integração com central de agendamento |
| 165 | ID_CONVENIO_ESTRANGEIRO | VARCHAR2 | Y | Identificação do Convênio Estrangeiro/Integração. Campo livre. |
| 166 | NR_ENDERECO | VARCHAR2 | Y | Número de endereço do convênio |
| 167 | SN_OBRIGA_PLANO_AGENDA | VARCHAR2 | Y | Indica se é obrigatório informar o Plano no agendamento de cirurgias. |
| 168 | SN_IMPEDE_FECHAM_CONTA | VARCHAR2 | Y | Indica se impedirá o fechamento das contas, caso no momento do fechamento seja verificado que se ... |
| 169 | SN_PERMITE_ATEND_URG_INT | VARCHAR2 | N | Indica se o convênio permite atendimento de urgência se o paciente estiver internado |

---

## DBAMV.CONVENIOS_ORCAMENTO
> CONVENIOS - MV ORÇAMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONVENIO_ORCAMENTO | NUMBER | N | Código sequencial |
| 2 | DS_CONVENIO_ORCAMENTO | VARCHAR2 | N | Descrição do convênio |
| 3 | CD_ORCAMENTO_HOSPITALAR | NUMBER | N | Codigo do orcamento |
| 4 | DT_REFERENCIA | DATE | N | Data de Referencia |
| 5 | DS_SUBTITULO | VARCHAR2 | N | Subtitulo do relatorio |

---

## DBAMV.CONVENIO_BANCARIO
> Tabela utilizada para armazenar os convenios bancarios

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONVENIO_BANCARIO | NUMBER | N | Corresponde ao codigo do Convenio Bancario |
| 2 | DS_CONVENIO_BANCARIO | VARCHAR2 | N | Corresponde a descric?o do Convenio Bancario |
| 3 | TP_CONVENIO_BANCARIO | VARCHAR2 | N | Corresponde ao Tipo de Convenio Bancario |
| 4 | CD_CON_COR | NUMBER | N | Corresponde ao codigo da Conta Corrente associada ao Convenio Bancario |
| 5 | TP_BOLETO | VARCHAR2 | Y | Corresponde ao Tipo de Boleto associada ao Convenio Bancario. Caso TP_CONVENIO_BANCARIO = 'A' (ar... |
| 6 | NR_DIAS_FLOAT | NUMBER | Y | Corresponde ao numero de dias p/ recebimento da arrecadac?o a partir do recebimento |
| 7 | DS_ARQUIVO | VARCHAR2 | Y | Corresponde ao local e nome e nome do arquivo equivalente ao relatorio a ser utilizado para a emi... |
| 8 | SN_CTRL_TAR_BANC | VARCHAR2 | N | Informa se o hospital ira controlar os pagamentos de tarifas bancarias pelos recebimentos realiza... |
| 9 | TP_FORMA_PAGTO | VARCHAR2 | Y | Corresponde a forma de pagamento da tarifa por boleto recebido pelo banco associado ao Convenio B... |
| 10 | VL_TARIFA_BANCARIA | NUMBER | Y |  |
| 11 | CD_FORNECEDOR | NUMBER | Y |  |
| 12 | CD_MOEDA | VARCHAR2 | Y |  |
| 13 | CD_MULTI_EMPRESA | NUMBER | N |  |

---

## DBAMV.CONVENIO_CONF_TISS
> Tabela especifica por Convenio para as configurac?es do TISS.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONVENIO | NUMBER | N | Codigo do convenio. |
| 2 | CD_SEQ_TRANSACAO | NUMBER | Y | Sequencial da transac?o no envio do XML. |
| 3 | NM_PASTA | VARCHAR2 | Y | Pasta onde sera criado o arquivo XML. |
| 4 | NM_ENDERECO_ENVIO | VARCHAR2 | Y | Endereco para envio do XML. |
| 5 | CD_PORTA | VARCHAR2 | Y | Porta de envio do XML. |
| 6 | NR_REGISTRO_OPERADORA_ANS | VARCHAR2 | Y | Registro ANS do convenio. |
| 7 | TP_SEQUENCIAL_GUIA | VARCHAR2 | Y | Tipo de Sequencial para o Numero das Guias |
| 8 | SN_AGRUPA_PROCED_MAIOR_DATA | VARCHAR2 | N | Define se vai agrupar procedimentos iguais de datas diferentes na maior data de lancamento |
| 9 | SN_IMPRIME_DESPESA_GUIA_PRINC | VARCHAR2 | N | Define se vai imprimir despesas na guia principal completando os itens da guia ( [S]im, [N]?o, ap... |
| 10 | CD_PRESTADOR_PADRAO_SP_SADT | NUMBER | Y | Prestador padr?o para as guias de sp/sadt sem SP e SADT |
| 11 | TP_QUEBRA_GUIA_RES_INT | VARCHAR2 | N | Tipo de quebra da guia de Resumo de Internac?o (Folha ou Guia) |
| 12 | TP_GERACAO_GUIA_SADT | VARCHAR2 | N | Tipo de guia para gerac?o dos SADTs |
| 13 | TP_IDENTIFICA_CONVENIO_XML | VARCHAR2 | N | Tipo de Idenficiac?o do Convenio na TISS_MENSAGEM (CGC ou Registro ANS) |
| 14 | TP_IDENTIFICA_HOSPITAL_XML | VARCHAR2 | N | Tipo de Identificac?o do Hospital na TISS_MENSAGEM (CGC ou Codigo na Operadora) |
| 15 | TP_TOTALIZA_OUTRAS_DESP | VARCHAR2 | N | imprimir os prestadores credenciado com valor zerado |
| 16 | SN_IMPRIME_CREDENCIADO | VARCHAR2 | N | Imprimir ou n?o os prestadores credenciados |
| 17 | SN_CREDENCIADO_ZERADO | VARCHAR2 | N |  |
| 18 | SN_OBRIGA_CID_NA_ALTA | VARCHAR2 | N | Se sera obrigatorio informar o CID na alta, caso esteja nulo. |
| 19 | SN_GUIA_CONSULTA | VARCHAR2 | N | Define se o convenio utiliza a Guia de Consulta |
| 20 | SN_PREST_CONTRATADO_SOLIC | VARCHAR2 | N | Define se o prestador sera exibido no nome do contratado em contratado solicitante |
| 21 | NR_LIMITE_GUIAS | NUMBER | N | Indica o numero limite de guias por lote (mensagem) |
| 22 | TP_TOTALIZA_RES_INT | VARCHAR2 | N | Define como os lancamentos ser?o agrupados na guia de Resumo de Internac?o. L = Pela data do lanc... |
| 23 | CD_FILME | VARCHAR2 | Y | Codigo do Item FILME em Guias de Outras Despesas, quando separado do EXAME |
| 24 | DS_FILME | VARCHAR2 | Y | Descric?o do Item FILME em Guias de Outras Despesas, quando separado do EXAME |
| 25 | CD_TAB_FAT | NUMBER | Y | Tabela de Faturamento do Item FILME em Guias de Outras Despesas, quando separado do EXAME |
| 26 | CD_VERSAO_TISS | VARCHAR2 | Y | Codigo da vers?o do Tiss para o Convenio |
| 27 | SN_GUIA_ESPECIF | VARCHAR2 | Y | Gera Guia especifica |
| 28 | SN_SEPARA_PREST_GUIA | VARCHAR2 | Y | Separar prestador por guia (SP/SADT) |
| 29 | SN_SOMENTE_XML | VARCHAR2 | Y | Indica se vai gerar relatorios tambem ou somente XML |
| 30 | SN_ELEGIBILIDADE_TISS | VARCHAR2 | N | Realiza a consulta Elegibilidade do Beneficiario/Carteira |
| 31 | TP_ORDENACAO_GUIAS | VARCHAR2 | N | Define a ordenac?o das guias TISS nos relatorios e nos arquivos XML |
| 32 | SN_GERA_VERSO_GUIA | VARCHAR2 | N | configura o relatorio sp/sadt para n?o imprimir o verso da guia |
| 33 | TP_INF_HORARIO_ESPECIAL | VARCHAR2 | N | Tipo de Informac?o para o Horario Especial ( S - sem detalhe;  H - por Hora de Lancamento; P - Pe... |
| 34 | SN_EXIBE_ASSINATURA_PREST | VARCHAR2 | Y | Indica se a assinatura digital do prestador sera exibida ou n?o nas guias tiss do atendimento. |
| 35 | SN_PADRAO_II | VARCHAR2 | N | Opc?o para as confirac?es do Tiss no Padr?o II |
| 36 | SN_AGRUPA_ITENS | VARCHAR2 | N | Agrupamento dos Itens para Envio. Agrupar('S') ou Detalhar item-a-item ('N') |
| 37 | SN_CRED_NA_GUIA_PRINC | VARCHAR2 | N | Opc?o para que itens de credenciados sejam enviado na Guia Principal do Hospital) |
| 38 | CD_MOT_ALT_PARCIAL | VARCHAR2 | Y | Codigo do motivo de alta para as contas hospitalares parciais |
| 39 | SN_GUIA_OPERADORA | VARCHAR2 | N | Define a a tag numeroguiaOperadora vai ser preenchida com o numeroguiaSoliciacao nas contas hospi... |
| 40 | SN_UTILIZA_APR_PROCED | VARCHAR2 | Y | Convenio utilizara a apresentac?o de procedimentos |
| 41 | TP_INF_ACRES_DESC | VARCHAR2 | N | Forma de exibir a informac?o de Percentual de Acrescimos e Descontos no TISS |
| 42 | SN_GERA_VERSO_GUIA_SI | VARCHAR2 | N | configura o relatorio solic_inter para n?o imprimir o verso da guia |
| 43 | SN_GERA_VERSO_GUIA_RI | VARCHAR2 | N | configura o relatorio resumo internac?o para n?o imprimir o verso da guia |
| 44 | TP_TOTALIZA_AMB | VARCHAR2 | Y | Indica o Tipo de agrupamento dos itens ambulatorial |
| 45 | SN_LEITURA_CARTAO_MAGNETICO | VARCHAR2 | Y | Indica se o convenio usara a leitura de cart?o magnetico (TEF). |
| 46 | SN_AUTORIZACAO_TISS | VARCHAR2 | Y | Indica se o convenio usara a autorizac?o eletronica. |
| 47 | SN_FATURAMENTO_TISS | VARCHAR2 | Y |  |
| 48 | SN_RETORNO_FAT_TISS | VARCHAR2 | Y |  |
| 49 | SN_REAPRESENTACAO_FAT_TISS | VARCHAR2 | Y |  |
| 50 | SN_CONSIDERA_PAGO_ITEM_NAO_RET | VARCHAR2 | Y | Indica se o ao importar o arquivo xml de retorno os itens n?o retornados ser?o considerados como ... |
| 51 | SN_OMITIR_GUIA_SEM_VALOR | VARCHAR2 | Y | Indica se guias sem valor (sem procedimentos) ser?o omitidas. |
| 52 | CD_PREST_OPER_SEM_CREDENC | VARCHAR2 | Y | Codigo de identificac?o padrao de prestadores n?o credenciados. |
| 53 | SN_INFORMA_CID | VARCHAR2 | Y | Opcao de omitir informacoes de CID no TISS (ANS IN-40) |
| 54 | DS_RAZAO_HOSP_CONV | VARCHAR2 | Y | RAZ?O SOCIAL CONFIGURAVEL DO HOSPITAL POR CONVENIO PARA O TISS |
| 55 | CD_CNPJ_HOSP_CONV | VARCHAR2 | Y | CNPJ CONFIGURAVEL DO HOSPITAL POR CONVENIO PARA O TISS |
| 56 | CNPJ_HOSP_CONV | VARCHAR2 | Y | CNPJ do hospital |
| 57 | SN_OBRIGA_ELEGIBILIDADE | VARCHAR2 | Y | Campo que torna obrigatório a Elegibilidade do paciente. |

---

## DBAMV.CONVENIO_CONF_TISS_CONTRATADO
> Tabela de configurac?o do TISS por convenio - Contratado Solicitante

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONVENIO | NUMBER | N | Codigo do convenio |
| 2 | CD_CONVENIO_CONF_TISS_CONTR | NUMBER | N | Codigo da configurac?o |
| 3 | TP_ATENDIMENTO | VARCHAR2 | Y | Tipo de atendimento |
| 4 | CD_ORI_ATE | NUMBER | Y | Codigo da origem do atendimento |
| 5 | CD_SERVICO | NUMBER | Y | Codigo do servico |
| 6 | CD_CEN_CUS | VARCHAR2 | Y | Codigo do centro de custo ligado ao setor |
| 7 | CD_SETOR | NUMBER | Y | Codigo do setor executante |
| 8 | TP_GRU_PRO | VARCHAR2 | Y | Tipo do grupo de procedimento |
| 9 | CD_GRU_PRO | NUMBER | Y | Codigo do grupo de procedimento |
| 10 | CD_PRO_FAT | VARCHAR2 | Y | Codigo do procedimento |
| 11 | CD_CODIGO_CONTRATADO | VARCHAR2 | N | Codigo do contratado solicitante |
| 12 | CD_SER_DIS | NUMBER | Y | Código do serviço ambulatorial |

---

## DBAMV.CONVENIO_CONF_TISS_GLOSA
> Tabela de Glosas da configurac?o do convenio do TISS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONVENIO | NUMBER | N | Codigo do Convenio |
| 2 | CD_GLOSA_TISS | NUMBER | Y | Codigo da glosa do padr?o TISS |
| 3 | CD_MOTIVO_GLOSA | NUMBER | Y | Codigo da glosa do sistema |

---

## DBAMV.CONVENIO_INTEGRA_SOL_GUIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONVENIO | NUMBER | N |  |
| 2 | SN_OBG_ID_BENEFICIARIO | VARCHAR2 | Y | Sinaliza se obriga a identificação do Beneficiário (Leitura da tarja magnética do cartão da opera... |
| 3 | TP_CNTAGD_INTEGRA | VARCHAR2 | Y | Trata do tipo de integração com a Central de Agendamentos |
| 4 | TP_CNTAGD_EXECUTA | VARCHAR2 | Y | Trata do momento de execução da rotina de integração |
| 5 | SN_CNTAGD_NEGADO | VARCHAR2 | Y | Trata do momento da resposta |
| 6 | SN_CNTAGD_PENDENTE | VARCHAR2 | Y | Trata do momento da resposta |
| 7 | SN_CNTAGD_FALHA | VARCHAR2 | Y | Trata do momento da resposta |
| 8 | TP_RECPAC_INTEGRA | VARCHAR2 | Y | Trata do tipo de integração com a Recepção do Paciente |
| 9 | TP_RECPAC_EXECUTA | VARCHAR2 | Y | Trata do momento de execução da rotina de integração |
| 10 | SN_RECPAC_NEGADO | VARCHAR2 | Y | Trata do momento da resposta |
| 11 | SN_RECPAC_PENDENTE | VARCHAR2 | Y | Trata do momento da resposta |
| 12 | SN_RECPAC_FALHA | VARCHAR2 | Y | Trata do momento da resposta |
| 13 | TP_PEDEXA_INTEGRA | VARCHAR2 | Y | Trata do tipo de integração com a Recepção do Paciente |
| 14 | TP_PEDEXA_EXECUTA | VARCHAR2 | Y | Trata do momento de execução da rotina de integração |
| 15 | SN_PEDEXA_NEGADO | VARCHAR2 | Y | Trata do momento da resposta |
| 16 | SN_PEDEXA_PENDENTE | VARCHAR2 | Y | Trata do momento da resposta |
| 17 | SN_PEDEXA_FALHA | VARCHAR2 | Y | Trata do momento da resposta |
| 18 | TP_PEDIMG_INTEGRA | VARCHAR2 | Y | Trata do tipo de integração com a Recepção do Paciente |
| 19 | TP_PEDIMG_EXECUTA | VARCHAR2 | Y | Trata do momento de execução da rotina de integração |
| 20 | SN_PEDIMG_NEGADO | VARCHAR2 | Y | Trata do momento da resposta |
| 21 | SN_PEDIMG_PENDENTE | VARCHAR2 | Y | Trata do momento da resposta |
| 22 | SN_PEDIMG_FALHA | VARCHAR2 | Y | Trata do momento da resposta |
| 23 | TP_ATDEXT_INTEGRA | VARCHAR2 | Y | Trata do tipo de integração com a Recepção do Paciente |
| 24 | TP_ATDEXT_EXECUTA | VARCHAR2 | Y | Trata do momento de execução da rotina de integração |
| 25 | SN_ATDEXT_NEGADO | VARCHAR2 | Y | Trata do momento da resposta |
| 26 | SN_ATDEXT_PENDENTE | VARCHAR2 | Y | Trata do momento da resposta |
| 27 | SN_ATDEXT_FALHA | VARCHAR2 | Y | Trata do momento da resposta |
| 28 | TP_ATDURG_INTEGRA | VARCHAR2 | Y | Trata do tipo de integração com a Recepção do Paciente |
| 29 | TP_ATDURG_EXECUTA | VARCHAR2 | Y | Trata do momento de execução da rotina de integração |
| 30 | SN_ATDURG_NEGADO | VARCHAR2 | Y | Trata do momento da resposta |
| 31 | SN_ATDURG_PENDENTE | VARCHAR2 | Y | Trata do momento da resposta |
| 32 | SN_ATDURG_FALHA | VARCHAR2 | Y | Trata do momento da resposta |
| 33 | TP_ATDAMB_INTEGRA | VARCHAR2 | Y | Trata do tipo de integração com a Recepção do Paciente |
| 34 | TP_ATDAMB_EXECUTA | VARCHAR2 | Y | Trata do momento de execução da rotina de integração |
| 35 | SN_ATDAMB_NEGADO | VARCHAR2 | Y | Trata do momento da resposta |
| 36 | SN_ATDAMB_PENDENTE | VARCHAR2 | Y | Trata do momento da resposta |
| 37 | SN_ATDAMB_FALHA | VARCHAR2 | Y | Trata do momento da resposta |

---

## DBAMV.CONVENIO_LOGOTIPO
> Tabela para armazenar o logotipo dos convenios

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONVENIO | NUMBER | N | Codigo do convenio |
| 2 | LO_CONVENIO | BLOB | Y | Logotipo do Convenio |

---

## DBAMV.CONVENIO_ORIGEM_SENHA_AUT
> Tabela responsável pelos convênios onde serão verificados os tipos de senhas

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORIGEM_SENHA_AUT | NUMBER | N |  |
| 2 | CD_CONVENIO | NUMBER | N |  |

---

## DBAMV.CONVENIO_PERFIL_AGENDAMENTO
> Cadastro de Convênio / Perfis de Agendamento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MULTI_EMPRESA | NUMBER | N | Código da Empresa |
| 2 | CD_PERFIL_AGENDAMENTO | NUMBER | N | Código do perfil de Agendamento |
| 3 | CD_CONVENIO | NUMBER | N | Código do Convênio |
| 4 | DH_CADASTRO | DATE | N | Data/Hora de Cadastro do Registro |
| 5 | CD_USUARIO_CADASTRO | VARCHAR2 | N | Código do Usuário do Registro |

---

## DBAMV.CONVENIO_PLANO_UC

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONVENIO_UC | NUMBER | N |  |
| 2 | CD_PLANO_UC | NUMBER | N |  |
| 3 | CD_CONVENIO_MV | NUMBER | N |  |
| 4 | CD_PLANO_MV | NUMBER | N |  |

---

## DBAMV.CONVENIO_PL_CONTAS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 2 | CD_CONVENIO | NUMBER | N |  |
| 3 | CD_REDUZIDO | NUMBER | N |  |
| 4 | CD_REDUZIDO_RECEITA | NUMBER | Y |  |

---

## DBAMV.CONVENIO_PROTOCOLO
> Tabela responsável por armazenar os convênios a serem verificados por protocolo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONVENIO_PROTOCOLO | NUMBER | N | Código sequencial da tabela |
| 2 | CD_CONVENIO | NUMBER | N | Código do convênio (FK) |
| 3 | SN_ATIVO | VARCHAR2 | N | registro ativo sim ou não |
| 4 | CD_PROTOCOLO | NUMBER | N |  |

---

## DBAMV.CONVENIO_PRO_FAT
> Tabela de Configurac?o dos Procedimentos de Fatura Direta com o Convenio

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONVENIO | NUMBER | N | Codigo do convenio. |
| 2 | CD_PRO_FAT | VARCHAR2 | N | Codigo do procedimento. |

---

## DBAMV.CONVENIO_PRO_FAT_ISENTO
> Tabela de procedimentos isentos de cobranca

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONV_PRO_FAT_ISENTO | NUMBER | N | Codigo da chave primaria da tabela convenio_pro_fat_isento |
| 2 | CD_CONVENIO | NUMBER | N | Codigo do convenio que isenta o paciente de cobranca de procedimentos |
| 3 | CD_MULTI_EMPRESA | NUMBER | N | Codido da Empresa na qual o convenio isenta o paciente de cobranca de procedimentos |
| 4 | CD_GRU_PRO | NUMBER | N | Codigo do Grupo de Procedimentos isentos de cobranca |
| 5 | CD_PRO_FAT | VARCHAR2 | Y | Codigo do Procedimento isentos de cobranca |
| 6 | TP_ATENDIMENTO | VARCHAR2 | Y | Tipos de atendimento isentos de cobranca |
| 7 | DT_INICIO | DATE | Y | Data a partir da qual tera validade a isenc?o |

---

## DBAMV.CONV_PLAN_VAL_TETO_CPM
> Tabela responsável por guardar as configurações do valor de teto custo paciente mês.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONV_PLAN_VAL_TETO_CPM | NUMBER | N | Código sequencial da tabela |
| 2 | CD_MULTI_EMPRESA | NUMBER | N | Código da empresa para configuração da regra |
| 3 | CD_CONVENIO | NUMBER | N | Código do convênio |
| 4 | CD_CON_PLA | NUMBER | N | Código do plano |
| 5 | DT_VIGENCIA | DATE | N | Data de Vigência a partir da qual a regra será considerada |
| 6 | SN_BLOQUEIA_ATENDIMENTO | VARCHAR2 | N | Indica se o atendimento será bloqueado ou não, após ultrapassar valor do teto. Valores possíveis ... |
| 7 | VL_TETO | NUMBER | N | Valor do máximo para o teto do Custo Paciente Mês. |
| 8 | SN_REGRA_ATIVA | VARCHAR2 | N | Desabilitar a regra. Valores possíveis (S,N) |

---

## DBAMV.COOPERATIVA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_COOPERATIVA | NUMBER | N |  |
| 2 | DS_COOPERATIVA | VARCHAR2 | Y |  |

---

## DBAMV.COOPERATIVA_PRESTADOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_COOPERATIVA | NUMBER | N |  |
| 2 | CD_PRESTADOR | NUMBER | N |  |

---

## DBAMV.COR_AREA_FAMILIA
> Tabela que caracteriza a cor de uma determinada área geográfica para classificar o risco de doença do paciente

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_COR_AREA_FAMILIA | NUMBER | N |  |
| 2 | DS_COR_AREA_FAMILIA | VARCHAR2 | Y |  |

---

## DBAMV.COTA_PACIENTE
> Armazena dados complementares da marcac?o da consulta do paciente pelo sistema MVGERC

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_COTA_PACIENTE | NUMBER | N | Codigo sequencial |
| 2 | CD_IT_MARCACAO | NUMBER | N | Codigo do item marcac?o |
| 3 | CD_PACIENTE | NUMBER | Y | Codigo do Paciente |
| 4 | TP_STATUS_SMS | VARCHAR2 | Y | Status da notificac?o via SMS (E Enviada, N N?o Enviada ) |
| 5 | TP_STATUS_EMAIL | VARCHAR2 | Y | Status da notificac?o via EMAIL (E Enviada, N N?o Enviada ) |
| 6 | DS_NUM_PROCESSO | VARCHAR2 | Y | Numero do processo judicial que originou a consulta |
| 7 | DT_PROCESSO | DATE | Y | Data do processo judicial |
| 8 | DS_LIMINAR | VARCHAR2 | Y | Texto da Liminar do processo judicial |
| 9 | DS_HISTORICO_ATEND | VARCHAR2 | Y | Texto da Liminar do processo judicial |
| 10 | DS_MOT_NAO_ATEND | VARCHAR2 | Y | Motivo do n?o atendimento do paciente |
| 11 | TP_STATUS_ATEND | VARCHAR2 | Y | Status do Atendimento (R Realizado, N N?o Realizado ) |
| 12 | TP_CONTRA_REF | VARCHAR2 | Y | Contra referencia (S Sim, N N?o ) |
| 13 | DS_MOT_CONTRA_REF | VARCHAR2 | Y | Motivo da contra referencia |
| 14 | NR_FICHA_ATEND | NUMBER | Y | Numero da ficha de atendimento |
| 15 | DT_ATENDIMENTO | DATE | Y | Data do atendimento |
| 16 | SN_RETORNO | VARCHAR2 | Y | Consulta de retorno S Sim N N?o |
| 17 | DT_RETORNO | DATE | Y | Data da consulta de retorno |
| 18 | TP_SEXO | VARCHAR2 | Y | Sexo do Paciente M F |
| 19 | DS_EMAIL | VARCHAR2 | Y | Email do paciente |
| 20 | NR_CNS | VARCHAR2 | Y | Numero do CNS do paciente |
| 21 | NM_PRESTADOR | VARCHAR2 | Y | Nome do Prestador |
| 22 | CD_MUNICIPIO | NUMBER | Y | Codigo do municipio |

---

## DBAMV.CREDENCIADO
> Tabela para cadastro da rede credenciada ao hospital.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CREDENCIADO | NUMBER | N | Código do credenciado |
| 2 | NM_CREDENCIADO | VARCHAR2 | N | Nome do credenciado |
| 3 | NR_CPF_CNPJ | VARCHAR2 | N | CPF CNPJ do credenciado |
| 4 | TP_SITUACAO | VARCHAR2 | N | Situação - Ativo(S) Inativo(I) |
| 5 | TP_PESSOA | VARCHAR2 | N | Pessoa física ou jurídica |
| 6 | DT_INCLUSAO | DATE | N | Data da inclusão do credenciado |
| 7 | DT_INATIVACAO | DATE | Y | Data de inativação do credenciado |

---

## DBAMV.CSOSN
> TABELA PARA IDENTIFICAR O CADASTRO DA SITUAÇÃO DA OPERAÇÃO DO SIMPLES NACIONAL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CSOSN | VARCHAR2 | N | CÓDIGO DA SITUAÇÃO DA OPERAÇÃO DO SIMPLES NACIONAL |
| 2 | DS_CSOSN | VARCHAR2 | N | DESCRIÇÃO DA SITUAÇÃO DA OPERAÇÃO DO SIMPLES NACIONAL |
| 3 | CD_CST | VARCHAR2 | Y | CÓDIGO DO CST |

---

## DBAMV.CST
> Tabela dos códigos das situações tributárias

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CST | VARCHAR2 | N | Código da situação tributária. |
| 2 | DS_CST | VARCHAR2 | Y | Descrição da situação tributária. |
| 3 | SN_ATIVO | VARCHAR2 | Y | Estado da situação tributária. S=Ativa, N=Destivada. |

---

## DBAMV.DIAGNOSTICO
> Cadastro de diagnosticos possiveis para o paciente, seja diagnostico medico ou de enfermagem

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DIAGNOSTICO | NUMBER | N | Chave Primaria |
| 2 | DS_DIAGNOSTICO | VARCHAR2 | N | Descric?o do diagnostico |
| 3 | TP_CLINICO | VARCHAR2 | N | Tipo Clinico |
| 4 | SN_ATIVO | VARCHAR2 | N | Indica se o diagnostico estara ativo ou n?o |
| 5 | DS_DETALHAMENTO | VARCHAR2 | Y | Descric?o detalhada das caracteristicas do diagnostico |
| 6 | TP_DIAGNOSTICO | VARCHAR2 | N | Informa o tipo de diagnostico. Normal ou Tratamento. Tratamento sera usado para Oncologia |
| 7 | NR_DIAGNOSTICO | NUMBER | Y | Numero do diagnostico. |
| 8 | DS_ANO_APROVACAO | VARCHAR2 | Y | Ano da aprovac?o. |
| 9 | DS_NOTA | VARCHAR2 | Y | Descric?o da nota. |

---

## DBAMV.DIAGNOSTICO_ATENDIME
> Diagnosticos atribuido ao paciente durante sua internac?o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DIAGNOSTICO_ATENDIME | NUMBER | N | Chave Primaria |
| 2 | CD_ATENDIMENTO | NUMBER | N | Atendimento que estara sendo atribuido o diagnostico |
| 3 | CD_DIAGNOSTICO | NUMBER | Y | Diagnostico atribuido ao atendimento |
| 4 | DH_DIAGNOSTICO | DATE | N | Data e Hora que o diagnostico foi associado |
| 5 | NM_USUARIO | VARCHAR2 | N |  |
| 6 | CD_CID | VARCHAR2 | Y | Cid atribuido ao atendimento |
| 7 | CD_PRE_MED | NUMBER | Y | Informa em qual prescric?o foi informado o diagnostico |
| 8 | CD_PROTOCOLO | NUMBER | Y | Protocolo com o qual o paciente estara sendo tratado |
| 9 | CD_DIAGNOSTICO_ATENDIME_PAI | NUMBER | Y | Tera duas func?es principais esta coluna: |
| 10 | CD_HISTOLOGIA | VARCHAR2 | Y | Codigo da histologia |
| 11 | CD_LOCALIZACAO_PRIMARIA | NUMBER | Y | Codigo da localizac?o primaria |
| 12 | CD_LOCALIZACAO_ANATOMICA | NUMBER | Y | Codigo da localizac?o anatomica |
| 13 | CD_SUBLOCALIZACAO_ANATOMICA | NUMBER | Y | Codigo da sub-localizac?o anatomica |
| 14 | DS_ESTADIAMENTO | VARCHAR2 | Y | Descric?o do estadiamento |
| 15 | CD_TP_TNM_T | VARCHAR2 | Y | Codigo TNM T |
| 16 | CD_TP_TNM_N | VARCHAR2 | Y | Codigo TNM N |
| 17 | CD_TP_TNM_M | VARCHAR2 | Y | Codigo TNM M |
| 18 | CD_TP_TNM_G | VARCHAR2 | Y | Codigo TNM G |
| 19 | CD_TP_TNM_S | VARCHAR2 | Y | Codigo TNM S |
| 20 | CD_CONTROLE_EXTERNO | VARCHAR2 | Y | Codigo do controle externo |
| 21 | TP_DOENCA | VARCHAR2 | Y | Tipo de doenca de um atendimentoDiagnostico |
| 22 | QT_TEMPO_DOENCA | NUMBER | Y | Quantidade de tempo da doenca |
| 23 | TP_UNIDADE_TEMPO_DOENCA | VARCHAR2 | Y | Tipo da unidade de tempo |
| 24 | CD_DOCUMENTO_CLINICO | NUMBER | Y | O c??digo do documento cl?-nico, setado via trigger (fk) |
| 25 | DS_TITULO_ESTADIO | VARCHAR2 | Y | Fornece um titulo ao registro do estadio nos varios registros |
| 26 | DS_OBSERVACAO | VARCHAR2 | Y | Observac?o do Estadiamento |
| 27 | TP_SITUACAO | VARCHAR2 | Y | SITUACAO DO DIAGNOSTICO. TIPOS: HIPOTESE, CONFIRMADO, REPETIDO |
| 28 | CD_SNOMEDCT | NUMBER | Y |  |
| 29 | CD_HISTOLOGIA_SNOMEDCT | NUMBER | Y |  |
| 30 | DH_IMUNO_HISTOQUIMICA | TIMESTAMP(6) | Y | Data da ImunoHistoquimica |
| 31 | DH_HISTO_PATOLOGICO | TIMESTAMP(6) | Y | Data do Histopatologico |
| 32 | TP_ESTADIAMENTO | VARCHAR2 | Y | Indica os tipo de estadiamento. Se é CLINICO ou PATOLOGICO. |
| 33 | TP_QUIMIOTERAPIA | VARCHAR2 | Y | Indica se o tipo de quimioterapia é PRIMEIRA, SEGUNDA, ou TERCEIRA LINHA, ou OUTROS. |
| 34 | TP_STATUS_QUIMIOTERAPIA | VARCHAR2 | Y | Indica se a quimioterapia é PRÉ ou PÓS quimioterápica. |
| 35 | TP_FINALIDADE | VARCHAR2 | Y | Indica qual a finalidade do estadiamento. |
| 36 | DS_IMUNO_HISTOQUIMICA | VARCHAR2 | Y | Descrição do diagnostico imuno histoquimico. |
| 37 | DS_HISTO_PATOLOGICO | VARCHAR2 | Y | Descrição do diagnostico histo patologico. |
| 38 | TP_ECOG | VARCHAR2 | Y | Tipo do ECOG (Escala de capacidade funcional). |
| 39 | CD_T_FIGO | NUMBER | Y | FIGO relacionado ao estadiamento. |
| 40 | DH_INATIVACAO | TIMESTAMP(6) | Y | Data da inativação do diagnostico. |
| 41 | CD_PRESTADOR_INATIVACAO | NUMBER | Y | Prestador responsável pela inativação do diagnóstico. |
| 42 | DS_JUSTIFICATIVA_INATIVACAO | VARCHAR2 | Y | Justificativa da inativação do diagnóstico. |
| 43 | TP_SITUACAO_ESTADIAMENTO | VARCHAR2 | Y | SITUACAO DO ESTADIAMENTO. TIPOS: HIPOTESE, CONFIRMADO, REPETIDO |
| 44 | CD_PRESTADOR_ALTERACAO | NUMBER | Y | Prestador responsável pela inativação do diagnóstico. |
| 45 | DH_ALTERACAO | TIMESTAMP(6) | Y | Data da ultima alteracao no diagnostico. |
| 46 | TEMPO_DOENCA_HISTO_PATOLOGICO | NUMBER | Y | Tempo da doenca do estadiamento em milissegundos. |
| 47 | TP_TERMINOLOGIA | VARCHAR2 | Y | Tipo de terminologia clinica do diagnóstico. |
| 48 | CD_GRUPO_DIAGNOSTICO_ATENDIME | NUMBER | Y | Código do agraupador de versões do diagnostico. |
| 49 | DS_EXAME_MOLECULAR | VARCHAR2 | Y | Descrição do exame molecular. |
| 50 | DH_EXAME_MOLECULAR | TIMESTAMP(6) | Y | Data do exame molecular. |
| 51 | NM_LABORATORIO | VARCHAR2 | Y | Nome do laboratorio do exame histopatologico. |
| 52 | NR_PECA_HISTO_PATOLOGICO | VARCHAR2 | Y | Numero da peça do exame histopatologico. |
| 53 | TP_STATUS_PACIENTE | VARCHAR2 | Y | Indica qual o status do estadiamento do paciente. se progressão, remissão, recaída ou recidiva. |
| 54 | NR_ORDEM_STATUS_PACIENTE | NUMBER | Y | Número de ordem do status do paciente. |
| 55 | DH_STATUS_PACIENTE | TIMESTAMP(6) | Y | Indica a data de inclusão do status do paciente. |

---

## DBAMV.DIARIA_FAIXA_ETARIA
> Gerar diária de acordo com a faixa etária do paciente

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONVENIO | NUMBER | N | Código do convênio |
| 2 | CD_CON_PLA | NUMBER | N | Código do plano |
| 3 | CD_TIP_ACOM | NUMBER | N | Código do tipo de acomodação |
| 4 | CD_PRO_FAT | VARCHAR2 | N | Código do procedimento |
| 5 | CD_GRU_FAT | NUMBER | N | Código do grupo de faturamento para lançamento da diária |
| 6 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 7 | SN_ACOMPANHANTE | VARCHAR2 | Y | Gerar diária de acompanhante |
| 8 | NR_IDADE_INICIAL | NUMBER | N | Idade inicial da faixa etária |
| 9 | NR_IDADE_FINAL | NUMBER | N | Idade final da faixa etária |
| 10 | SN_GERA_GUIA_DIARIA | VARCHAR2 | N | Informa se gera a guia de diária / prorrogação no lançamentos de diárias automáticas |
| 11 | SN_SUBSTITUI | VARCHAR2 | N | Indica se a diária da faixa irá substituir a diária da acomodação. |
| 12 | CD_TIPO_INTERNACAO | NUMBER | Y | Tipo de internação. |

---

## DBAMV.DIFER_ACOMOD
> Diferenca de Acomodac?o. Indica em que procedimento sera cobrada a diferenca caso o paciente fique internado numa acomodac?o diferente da coberta pelo seu plano.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REGRA | NUMBER | Y | Codigo opcional de Regra. |
| 2 | CD_CONVENIO | NUMBER | Y | Codigo opcional do Convenio. |
| 3 | CD_TIP_ACOMOD_ORIGEM | NUMBER | N | Codigo do Tipo de Acomodac?o de Origem. |
| 4 | CD_TIP_ACOMOD_DESTINO | NUMBER | N | Codigo do Tipo de Acomodac?o Destino. |
| 5 | CD_PRO_FAT_DIFERENCA | VARCHAR2 | N | Codigo do Procedimento da Diferenca de Acomodac?o. |

---

## DBAMV.ELEGIBILIDADE_PACIENTE
> REGISTROS DE SOLICITAÇÕES DE ELEGIBILIDADE DO PACIENTE NA OPERADORA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PACIENTE | NUMBER | N | CÓDIGO DO PACIENTE |
| 2 | CD_CONVENIO | NUMBER | N | CÓDIGO DO CONVÊNIO |
| 3 | DH_ELEGIBILIDADE | DATE | N | DATA/HORA DA ELEGIBILIDADE |
| 4 | TP_STATUS | VARCHAR2 | N | STATUS DA SOLICITAÇÃO (P-PENDENTE/E-ELEGÍVEL/N-NÃO ELEGÍVEL) |
| 5 | NR_CARTEIRA | VARCHAR2 | N | NÚMERO DA CARTEIRA DO BENEFICIÁRIO |
| 6 | DT_VAL_CARTEIRA | DATE | Y | DATA DE VALIDADE DA CARTEIRA DO BENEFICIÁRIO |
| 7 | CD_AUSENCIA_VALIDACAO | VARCHAR2 | Y | JUSTIFICATIVA DO PACIENTE PELA AUSÊNCIA DO CÓDIGO DE VALIDAÇÃO (AUSENCIACODVALIDACAO/TUSS-74) |
| 8 | CD_VALIDACAO | VARCHAR2 | Y | CÓDIGO DE VALIDAÇÃO PARA ATESTAR PRESENÇA DO PACIENTE (CODVALIDACAO) |
| 9 | TP_IDENT_BENEFICIARIO | VARCHAR2 | Y | TIPO DE TECNOLOGIA USADA NA IDENTIFICAÇÃO DO BENEFICIÁRIO (TIPOIDENT/TUSS-72) |
| 10 | DS_TEMPLATE_IDENT_BENEFICIARIO | VARCHAR2 | Y | MINÚCIA DO IDENTIFICADOR BIOMÉTRICO (TEMPLATEBIOMETRICO) |
| 11 | NR_ID_BENEFICIARIO | VARCHAR2 | Y | ATESTA A PRESENÇA DO BENEFICIÁRIO. GRAVAR DE ACORDO COM TIPOIDENT/TUSS-72 (IDENTIFICADORBENEFICIA... |

---

## DBAMV.ENDERECO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ENDERECO | NUMBER | N |  |
| 2 | CD_PACIENTE | NUMBER | N |  |
| 3 | DS_ENDERECO | VARCHAR2 | Y |  |
| 4 | CD_BAIRRO | NUMBER | Y |  |
| 5 | NM_BAIRRO | VARCHAR2 | Y |  |
| 6 | NR_ENDERECO | NUMBER | Y |  |
| 7 | NR_FONE | VARCHAR2 | Y |  |
| 8 | DS_COMPLEMENTO | VARCHAR2 | Y |  |
| 9 | DS_PTO_REFERENCIA | VARCHAR2 | Y |  |
| 10 | CD_LOCALIDADE | NUMBER | Y |  |
| 11 | NR_CEP | NUMBER | Y |  |
| 12 | SN_PADRAO | VARCHAR2 | Y | Identificac?o do endereco padr?o do paciente S = Sim, N = N?o |

---

## DBAMV.ENDERECO_CARACTERISTICA
> Tabela para cadastrar o vinculo das caracteristicas e restric?es de armazenamento com os enderecos.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ENDERECO_NIVEL_1 | NUMBER | N | Campo cd_endereco_nivel_1 da tabela endereco_nivel_1. |
| 2 | CD_CARACTERISTICA | NUMBER | N | Campo cd_caracteristica da tabela armazenamento_caracteristica. |
| 3 | CD_ENDERECO_NIVEL_2 | VARCHAR2 | Y | Campo cd_endereco_nivel_2 da tabela endereco_nivel_2. |
| 4 | CD_ENDERECO_NIVEL_3 | VARCHAR2 | Y | Campo cd_endereco_nivel_3 da tabela endereco_nivel_3. |
| 5 | CD_ENDERECO_NIVEL_4 | VARCHAR2 | Y | Campo cd_endereco_nivel_4 da tabela endereco_nivel_4. |
| 6 | CD_ESTOQUE | NUMBER | N | Campo cd_estoque da tabela estoque. |
| 7 | CD_ENDERECO_NIVEL_5 | VARCHAR2 | Y | Guarda o código do nível 5 do endereço. |
| 8 | CD_ENDERECO_NIVEL_6 | VARCHAR2 | Y | Guarda o código do nível 6 do endereço. |
| 9 | CD_ENDERECO_NIVEL_7 | VARCHAR2 | Y | Guarda o código do nível 7 do endereço. |
| 10 | CD_ENDERECO_NIVEL_8 | VARCHAR2 | Y | Guarda o código do nível 8 do endereço. |

---

## DBAMV.ENDERECO_CREDENCIADO
> Tabela para cadastro do endereço da rede credenciada ao hospital.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ENDERECO | NUMBER | N | Código do endereco do credenciado. |
| 2 | CD_CREDENCIADO | NUMBER | N | Código do credenciado. |
| 3 | NR_CEP | VARCHAR2 | N | Número do CEP. |
| 4 | DS_ENDERECO | VARCHAR2 | N | Descrição do endereço/logradouro. |
| 5 | NR_ENDERECO | VARCHAR2 | Y | Número do endereço. |
| 6 | DS_BAIRRO | VARCHAR2 | N | Descrição do bairro. |
| 7 | CD_MUNICIPIO | NUMBER | Y | Código do município. |
| 8 | DS_MUNICIPIO | VARCHAR2 | Y | Descrição do município. |
| 9 | CD_UF | VARCHAR2 | Y | Código do estado. |
| 10 | NR_TELEFONE_PRIN | VARCHAR2 | Y | Telefone principal. |
| 11 | NR_TELEFONE_COMP | VARCHAR2 | Y | Telefone complementar. |
| 12 | NR_FAX | VARCHAR2 | Y | Fax. |
| 13 | DS_EMAIL | VARCHAR2 | Y | Email do credenciado. |
| 14 | DS_OBSERVACAO | VARCHAR2 | Y | Complemento para o endereço. |

---

## DBAMV.ENDERECO_NIVEL_1
> Tabela de enderecamento nivel 1.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ENDERECO_NIVEL_1 | NUMBER | N | Campo numerico gerado pelo sistema. |
| 2 | DS_ENDERECO_NIVEL_1 | VARCHAR2 | N | Texto livre informando pelo usuario. |
| 3 | SN_BLOQUEIO_NIVEL_1 | VARCHAR2 | N | Indica se o nivel esta bloqueado. |
| 4 | SN_ATIVO_NIVEL_1 | VARCHAR2 | N | Indica se o nivel esta ativo. |

---

## DBAMV.ENDERECO_NIVEL_2
> Tabela de enderecamento nivel 2.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ENDERECO_NIVEL_1 | NUMBER | N | Campo numerico de relacionamento com a tabela endereco_nivel_1. |
| 2 | CD_ENDERECO_NIVEL_2 | VARCHAR2 | N | Campo numerico gerado pelo sistema. |
| 3 | DS_ENDERECO_NIVEL_2 | VARCHAR2 | N | Texto livre informando pelo usuario. |
| 4 | SN_BLOQUEIO_NIVEL_2 | VARCHAR2 | N | Indica se o nivel esta bloqueado. |
| 5 | SN_ATIVO_NIVEL_2 | VARCHAR2 | N | Indica se o nivel esta ativo. |

---

## DBAMV.ENDERECO_NIVEL_3
> Tabela de enderecamento nivel 3.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ENDERECO_NIVEL_1 | NUMBER | N | Campo numerico de relacionamento com a tabela endereco_nivel_1. |
| 2 | CD_ENDERECO_NIVEL_2 | VARCHAR2 | N | Campo numerico de relacionamento com a tabela endereco_nivel_2. |
| 3 | CD_ENDERECO_NIVEL_3 | VARCHAR2 | N | Campo numerico gerado pelo sistema. |
| 4 | DS_ENDERECO_NIVEL_3 | VARCHAR2 | N | Texto livre informando pelo usuario. |
| 5 | SN_BLOQUEIO_NIVEL_3 | VARCHAR2 | N | Indica se o nivel esta bloqueado. |
| 6 | SN_ATIVO_NIVEL_3 | VARCHAR2 | N | Indica se o nivel esta ativo. |

---

## DBAMV.ENDERECO_NIVEL_4
> Tabela de enderecamento nivel 4.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ENDERECO_NIVEL_1 | NUMBER | N | Campo numerico de relacionamento com a tabela endereco_nivel_1. |
| 2 | CD_ENDERECO_NIVEL_2 | VARCHAR2 | N | Campo numerico de relacionamento com a tabela endereco_nivel_2. |
| 3 | CD_ENDERECO_NIVEL_3 | VARCHAR2 | N | Campo numerico de relacionamento com a tabela endereco_nivel_3. |
| 4 | CD_ENDERECO_NIVEL_4 | VARCHAR2 | N | Campo numerico gerado pelo sistema. |
| 5 | DS_ENDERECO_NIVEL_4 | VARCHAR2 | N | Texto livre informando pelo usuario. |
| 6 | SN_BLOQUEIO_NIVEL_4 | VARCHAR2 | N | Indica se o nivel esta bloqueado. |
| 7 | SN_ATIVO_NIVEL_4 | VARCHAR2 | N | Indica se o nivel esta ativo. |

---

## DBAMV.ENDERECO_NIVEL_5
> Tabela que guarda o nível 5 do endereçamento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ENDERECO_NIVEL_1 | NUMBER | N | Guarda o código do nível 1 |
| 2 | CD_ENDERECO_NIVEL_2 | VARCHAR2 | N | Guarda o código do nível 2 |
| 3 | CD_ENDERECO_NIVEL_3 | VARCHAR2 | N | Guarda o código do nível 3 |
| 4 | CD_ENDERECO_NIVEL_4 | VARCHAR2 | N | Guarda o código do nível 4 |
| 5 | CD_ENDERECO_NIVEL_5 | VARCHAR2 | N | Guarda o código do nível 5 |
| 6 | DS_ENDERECO_NIVEL_5 | VARCHAR2 | N | Guarda a descrição do nível 5 |
| 7 | SN_BLOQUEIO_NIVEL_5 | VARCHAR2 | N | Guarda o status de bloqueio do endereço no nível 5 |
| 8 | SN_ATIVO_NIVEL_5 | VARCHAR2 | N | Guarda o status de ativo do nível 5 |

---

## DBAMV.ENDERECO_NIVEL_6
> Tabela que guarda o nível 6 do endereçamento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ENDERECO_NIVEL_1 | NUMBER | N | Guarda o código do nível 1 |
| 2 | CD_ENDERECO_NIVEL_2 | VARCHAR2 | N | Guarda o código do nível 2 |
| 3 | CD_ENDERECO_NIVEL_3 | VARCHAR2 | N | Guarda o código do nível 3 |
| 4 | CD_ENDERECO_NIVEL_4 | VARCHAR2 | N | Guarda o código do nível 4 |
| 5 | CD_ENDERECO_NIVEL_5 | VARCHAR2 | N | Guarda o código do nível 5 |
| 6 | CD_ENDERECO_NIVEL_6 | VARCHAR2 | N | Guarda o código do nível 6 |
| 7 | DS_ENDERECO_NIVEL_6 | VARCHAR2 | N | Guarda a descrição do nível 6 |
| 8 | SN_BLOQUEIO_NIVEL_6 | VARCHAR2 | N | Guarda o status de bloqueio do endereço no nível 6 |
| 9 | SN_ATIVO_NIVEL_6 | VARCHAR2 | N | Guarda o status de ativo do nível 6 |

---

## DBAMV.ENDERECO_NIVEL_7
> Tabela que guarda o nível 7 do endereçamento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ENDERECO_NIVEL_1 | NUMBER | N | Guarda o código do nível 1 |
| 2 | CD_ENDERECO_NIVEL_2 | VARCHAR2 | N | Guarda o código do nível 2 |
| 3 | CD_ENDERECO_NIVEL_3 | VARCHAR2 | N | Guarda o código do nível 3 |
| 4 | CD_ENDERECO_NIVEL_4 | VARCHAR2 | N | Guarda o código do nível 4 |
| 5 | CD_ENDERECO_NIVEL_5 | VARCHAR2 | N | Guarda o código do nível 5 |
| 6 | CD_ENDERECO_NIVEL_6 | VARCHAR2 | N | Guarda o código do nível 6 |
| 7 | CD_ENDERECO_NIVEL_7 | VARCHAR2 | N | Guarda o código do nível 7 |
| 8 | DS_ENDERECO_NIVEL_7 | VARCHAR2 | N | Guarda a descrição do nível 7 |
| 9 | SN_BLOQUEIO_NIVEL_7 | VARCHAR2 | N | Guarda o status de bloqueio do endereço no nível 7 |
| 10 | SN_ATIVO_NIVEL_7 | VARCHAR2 | N | Guarda o status de ativo do nível 7 |

---

## DBAMV.ENDERECO_NIVEL_8
> Tabela que guarda o nível 8 do endereçamento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ENDERECO_NIVEL_1 | NUMBER | N | Guarda o código do nível 1 |
| 2 | CD_ENDERECO_NIVEL_2 | VARCHAR2 | N | Guarda o código do nível 2 |
| 3 | CD_ENDERECO_NIVEL_3 | VARCHAR2 | N | Guarda o código do nível 3 |
| 4 | CD_ENDERECO_NIVEL_4 | VARCHAR2 | N | Guarda o código do nível 4 |
| 5 | CD_ENDERECO_NIVEL_5 | VARCHAR2 | N | Guarda o código do nível 5 |
| 6 | CD_ENDERECO_NIVEL_6 | VARCHAR2 | N | Guarda o código do nível 6 |
| 7 | CD_ENDERECO_NIVEL_7 | VARCHAR2 | N | Guarda o código do nível 7 |
| 8 | CD_ENDERECO_NIVEL_8 | VARCHAR2 | N | Guarda o código do nível 8 |
| 9 | DS_ENDERECO_NIVEL_8 | VARCHAR2 | N | Guarda a descrição do nível 8 |
| 10 | SN_BLOQUEIO_NIVEL_8 | VARCHAR2 | N | Guarda o status de bloqueio do endereço no nível 8 |
| 11 | SN_ATIVO_NIVEL_8 | VARCHAR2 | N | Guarda o status de ativo do nível 8 |

---

## DBAMV.ENDERECO_PACIENTE
> Tabela de cadastro de telefones do paciente

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ENDERECO_PACIENTE | NUMBER | N | Codigo do endereco PK da tabela |
| 2 | CD_PACIENTE | NUMBER | N | Codigo do paciente |
| 3 | NR_CEP | VARCHAR2 | Y | Indica o numero do cep do endereco |
| 4 | CD_ENDERECO_POSTAL | VARCHAR2 | Y | Indica o numero do endereco postal, utilizado para enderecos internacionais |
| 5 | DS_ENDERECO | VARCHAR2 | Y | Indica o a descric?o do endereco |
| 6 | NR_ENDERECO | NUMBER | Y | Indica o numero do endereco |
| 7 | DS_COMPLEMENTO | VARCHAR2 | Y | Indica o complemento do endereco |
| 8 | NM_BAIRRO | VARCHAR2 | Y | Indica o nome do bairro do endereco |
| 9 | CD_CIDADE | NUMBER | Y | Indica o codigo da cidade |
| 10 | CD_PAIS | NUMBER | Y | Indica o codigo do pais |
| 11 | TP_ENDERECO | VARCHAR2 | N | Indica o tipo do endereco do contato: C-> Comercial, R-> Residencial, O-> Outros |
| 12 | SN_PADRAO | VARCHAR2 | N | Indica qual dos enderecos sera padr?o |
| 13 | DS_OBSERVACAO | VARCHAR2 | Y | Observac?o dos enderecos do contato |
| 14 | SN_ENDERECO_EXTERNO | VARCHAR2 | Y | Indica se o paciente possui endereco externo. |
| 15 | CD_LOGRADOURO_SANTOS | NUMBER | Y | Código do logradouro da integração com a prefeitura de santos |
| 16 | CD_BAIRRO_SANTOS | NUMBER | Y | Código do bairro da integração com a prefeitura de santos |

---

## DBAMV.EQUIPE
> Tabela para cadastro de equipes de prestadores.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EQUIPE | NUMBER | N | Código da equipe. |
| 2 | DS_EQUIPE | VARCHAR2 | N | Descrição da equipe. |
| 3 | DH_INICIO | DATE | N | Data de início da equipe. |
| 4 | DH_FINAL | DATE | Y | Data final da equipe. |
| 5 | DH_CADASTRO | DATE | N | Data de cadastro da Equipe. |
| 6 | CD_USUARIO_CADASTRO | VARCHAR2 | N | Usuário que realizou o Cadastro da Equipe. |
| 7 | DH_MODIFICACAO | DATE | Y | Data de modificação da Equipe. |
| 8 | CD_USUARIO_MODIFICACAO | VARCHAR2 | Y | Usuário que modificou o registro da Equipe. |

---

## DBAMV.EQUIPE_ANEXO
> Tabela onde são guardados os anexos de uma equipe(dbamv.equipe).

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EQUIPE_ANEXO | NUMBER | N | Código da anexo. |
| 2 | DS_ANEXO | VARCHAR2 | Y | Descrição do anexo. |
| 3 | LO_ANEXO | BLOB | Y | Blob do anexo. |
| 4 | CD_EQUIPE | NUMBER | N | Código da equipe que o anexo está relacionado. |
| 5 | NM_ARQUIVO | VARCHAR2 | Y |  |
| 6 | DH_CADASTRO | DATE | N | Data de cadastro da Equipe. |
| 7 | CD_USUARIO_CADASTRO | VARCHAR2 | N | Usuário que realizou o Cadastro da Equipe. |

---

## DBAMV.EQUIPE_DILIGENCIAMENTO_DIAGN
> Cadastros da equipe de Diligenciamento.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EQUIPE_DILIGENCIAMENTO | NUMBER | N | Sequence da tabela. |
| 2 | CD_DILIGENCIAMENTO | NUMBER | N | Código do Diligenciamento. |
| 3 | CD_USUARIO | VARCHAR2 | N | Código do Usuario. |
| 4 | DS_EMAIL | VARCHAR2 | Y | Email a ser enviado notificação. |
| 5 | NR_DDI_SMS | NUMBER | Y | DDI do SMS a ser enviado notificação. |
| 6 | NR_DDD_SMS | NUMBER | Y | DDD do SMS a ser enviado notificação. |
| 7 | NR_SMS | NUMBER | Y | Numero do SMS a ser enviado notificação. |
| 8 | SN_ATIVO | VARCHAR2 | N | Ativa ou não o uso do diligenciamento |

---

## DBAMV.EQUIPE_MEDICA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EQUIPE_MEDICA | NUMBER | N |  |
| 2 | DS_EQUIPE_MEDICA | VARCHAR2 | N |  |
| 3 | NR_ORDEM | NUMBER | Y |  |
| 4 | SN_ATIVO | VARCHAR2 | N | Indica se a equipe medica esta ativa ou n?o. |

---

## DBAMV.EQUIPE_PREGAO
> Tabela que armazena todos os funcionarios que participam do preg?o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_USUARIO | VARCHAR2 | N | Indica o codigo funcionario( usuario ) que participa da equipe do preg?o |
| 2 | TP_DIA_SEMANA | VARCHAR2 | N | Indica o dia da semana que o funcionario participa do preg?o 1-Domingo, 2-Segunda, 3-Terca, 4-Qua... |
| 3 | TP_TURNO | VARCHAR2 | N | Indica o turno que o funcionario trabalha no pregao: 1 - 1?Turno, 2 - 2?Turno |
| 4 | NM_GUERRA | VARCHAR2 | Y | Indica o nome de guerra do funcionario |
| 5 | TP_SITUACAO | VARCHAR2 | N | Indica se o funcionario esta Ativo ( A ) ou Inativo ( I ) |

---

## DBAMV.EQUIPE_PREGAO_PROCESSO
> Tabela que ira registrar quem vai participar do preg?o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LICITACAO | NUMBER | N | Codigo do licitac?o que contem os funcionarios do preg?o |
| 2 | TP_FUNCAO_PREGAO | VARCHAR2 | N | Func?o do usuario no preg?o:Responsavel - R,Equipe Apoio-E,Apoio Juridico-A,Parecer Tecnico-P |
| 3 | CD_USUARIO | VARCHAR2 | N | Codigo do funcion?rio que ira participar do preg?o |

---

## DBAMV.EQUIPE_PRESTADOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EQUIPE_MEDICA | NUMBER | N |  |
| 2 | CD_PRESTADOR | NUMBER | N |  |
| 3 | CD_ATI_MED | VARCHAR2 | N |  |
| 4 | NR_ORDEM | NUMBER | Y |  |
| 5 | SN_RESPONSAVEL | VARCHAR2 | N |  |

---

## DBAMV.EQUIPE_REP_VARIAVEL
> Equipes do repasse de remuneração variável.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EQUIPE_REP_VARIAVEL | NUMBER | N | Código da equipe. |
| 2 | CD_MULTI_EMPRESA | NUMBER | N | Empresa da equipe. |
| 3 | DS_EQUIPE_REP_VARIAVEL | VARCHAR2 | Y | Nome da equipe. |

---

## DBAMV.EQUIPE_SAUDE_FAMILIA
> Tabela de responsável por armazenar as Equipes de Saúde Família do RAAS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EQUIPE | NUMBER | N | Código da Equipe |
| 2 | DS_EQUIPE | VARCHAR2 | N | Descrição da Equipe |
| 3 | CD_TIPO | NUMBER | N | Tipo da Equipe |
| 4 | CD_IBGE | NUMBER | Y | Código IBGE do município |
| 5 | CD_UPS | NUMBER | Y | Código da UPS |
| 6 | NR_CNES | NUMBER | Y | Número do Cadadastro Nacional de Estabelecimento de Saúde |
| 7 | DT_VALIDADE_INICIAL | DATE | Y | Data inicial da validade da equipe para USP |
| 8 | DT_VALIDADE_FINAL | DATE | Y | Data final da validade da equipe para USP |
| 9 | NR_AREA | NUMBER | Y | Número da área da equipe |
| 10 | NR_SEQUENCIA | NUMBER | Y | Número da sequência da equipe |

---

## DBAMV.ESPECIALID

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ESPECIALID | NUMBER | N |  |
| 2 | DS_ESPECIALID | VARCHAR2 | N |  |
| 3 | SN_ATIVO | VARCHAR2 | N |  |
| 4 | VL_CUSTO_VARIAVEL | NUMBER | Y |  |
| 5 | CD_CBOS | VARCHAR2 | Y | Codigo do CBO-S |
| 6 | CD_ESPECIALID_INTEGRA | VARCHAR2 | Y | Codigo da Especialidade (de-para) |
| 7 | DT_INTEGRA | DATE | Y | Data em que o registro foi integrado |
| 8 | CD_SEQ_INTEGRA | NUMBER | Y | Codigo sequencial da integrac?o |
| 9 | SN_CLASSIFICACAO_RISCO | VARCHAR2 | Y | Identifica se Atendimentos associados a esta Espcialidade dever?o ser visualizados no Processo de... |
| 10 | SN_ATIVO_ENCAMINHAMENTO | VARCHAR2 | N | Identifica se a especialidade esta ou n?o habilitada para encaminhamento |
| 11 | CD_ESPECIALID_MEDICO_EXT | VARCHAR2 | Y | Codigo da Especialidade Externa |
| 12 | CD_ESPECIALID_RESIDENTE_EXT | VARCHAR2 | Y | Codigo da Especialidade Externa |
| 13 | TP_ESPECIALID | VARCHAR2 | N | Indica o tipo da especialidade. M - Médica, O - Outras |
| 14 | NR_DIAS_CONSULT_ANS | NUMBER | Y | Indica o número de dias para nova consulta |

---

## DBAMV.ESPECIALIDADE_MEIO_MAG

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ESPECIALIDADE_MEIO_MAG | NUMBER | N |  |
| 2 | CD_APR_CONTA_MEIO_MAG | NUMBER | N |  |
| 3 | CD_ESPECIALIDADE | NUMBER | Y |  |
| 4 | TP_ESPECIALIDADE_MEIO_MAG | VARCHAR2 | N |  |

---

## DBAMV.ESPECIALIDADE_TERMO
> Tabela de Especialidades do Termo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ESP_TERMO | NUMBER | N | Codigo da Especialidade do Termo |
| 2 | DS_ESP_TERMO | VARCHAR2 | N | Descric?o da Especialidade do Termo |

---

## DBAMV.ESPECIALIDADE_UTI_SUS
> Epecialidades de uti sus

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ESPECIALIDADE_UTI | NUMBER | N | Código da especialidade |
| 2 | DS_ESPECIALIDADE_UTI | VARCHAR2 | N | Descrição da especialidade |
| 3 | CD_PROCEDIMENTO | VARCHAR2 | N | Código do procedimento sus |

---

## DBAMV.ESPECIALID_CBO
> Tabela de Especialidade X CBO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ESPECIALID | NUMBER | N | Codigo da especialidade medica. |
| 2 | CD_CBO | VARCHAR2 | N | Codigo Brasileiro de Ocupac?o. |

---

## DBAMV.ESPECIALID_CIRURGIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CIRURGIA | NUMBER | N |  |
| 2 | CD_ESPECIALID | NUMBER | N |  |

---

## DBAMV.ESPECIALID_CONTROLE_SENHA
> Tabela responsável pelas especialidades onde serão aplicadas o controle de senhas

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONTROLE_SENHA_AUT | NUMBER | N |  |
| 2 | CD_ESPECIALID | NUMBER | N |  |

---

## DBAMV.ESPECIALID_EXA_RX

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ESPECIALID | NUMBER | N |  |
| 2 | CD_EXA_RX | NUMBER | N |  |

---

## DBAMV.ESPECIALID_ORIGEM_SENHA_AUT
> Tabela responsável pelas especialidades onde serão verificados os tipos de senhas

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORIGEM_SENHA_AUT | NUMBER | N |  |
| 2 | CD_ESPECIALID | NUMBER | N |  |

---

## DBAMV.ESPECIALID_TAB_SIASUS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ESPECIALID | NUMBER | N |  |
| 2 | CD_TAB_SIASUS | VARCHAR2 | N |  |
| 3 | SN_ATIVO | VARCHAR2 | N |  |

---

## DBAMV.ESPECIALIZACOES

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ESPECIALIZ | NUMBER | N |  |
| 2 | DS_ESPECIALIZ | VARCHAR2 | N |  |

---

## DBAMV.ESTADO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ESTADO | NUMBER | N | Codigo do Estado. |
| 2 | NM_ESTADO | VARCHAR2 | N | Nome do Estado. |
| 3 | DS_SIGLA | VARCHAR2 | N | Sigla Externa do Estado . |
| 4 | CD_PAIS | NUMBER | N | Codigo do Pais. |
| 5 | DS_SIGLA_EXTERNA | VARCHAR2 | Y |  |

---

## DBAMV.ESTADO_PACIENTE_PROG_SAUDE
> TABELA ESTADO DO PACIENTE.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ESTADO_PACIENTE_PROG_SAUDE | NUMBER | N | CHAVE DA TABELA. |
| 2 | DS_ESTADO_PACIENTE_PROG_SAUDE | VARCHAR2 | N | DESCRIÇÃO DO ESTADO. |
| 3 | SN_ATIVO | VARCHAR2 | N | INDICA SE O ESTADO ESTÁ ATIVO. S = SIM, N = NÃO |
| 4 | TP_ESTADO | VARCHAR2 | N | INDICA O TIPO DO ESTADO, SE SERÁ USADO DURANTE ATIVAÇÃO OU INATIVAÇÃO DO PACIENTE NO PROGRAMA. A ... |
| 5 | SN_PADRAO_ATIVACAO | VARCHAR2 | N |  |
| 6 | CD_MULTI_EMPRESA | NUMBER | N | CÓDIGO DA EMPRESA CORRESPONDENTE. |

---

## DBAMV.ETNIA
> Tabela de etnias

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ETNIA | NUMBER | N | Codigo da Etnia. |
| 2 | DS_ETNIA | VARCHAR2 | Y | Descric?o da Etnia |
| 3 | TP_COR | VARCHAR2 | N | Codigo Raca cor da Etnia |

---

## DBAMV.FILA_ESPERA_AGENDAMENTO
> Fila de espera de pacientes que aguardam vagas para agendamento de consulta AMA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FILA_ESPERA_AGENDAMENTO | NUMBER | N | Codigo sequencial |
| 2 | CD_PACIENTE | NUMBER | Y | Codigo do paciente |
| 3 | DH_CADASTRO | DATE | Y | Data e Hora do cadastro |
| 4 | CD_SER_DIS | NUMBER | Y | Especialidade |
| 5 | CD_MUNICIPIO | NUMBER | Y | Codigo do municipio |
| 6 | NM_PACIENTE | VARCHAR2 | Y | Nome do paciente |
| 7 | DT_NASCIMENTO | DATE | Y | Data de nascimento do paciente |
| 8 | NR_TELEFONE | VARCHAR2 | Y | Numero do telefone do paciente |
| 9 | NR_CNS | VARCHAR2 | Y | Numero do CNS do paciente |
| 10 | DS_EMAIL | VARCHAR2 | Y | Email do paciente |

---

## DBAMV.FOTO_PACIENTE
> Armzena fotos dos pacientes

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PACIENTE | NUMBER | N | Codigo de Paciente |
| 2 | CD_FOTO_PESSOA | NUMBER | N | Codigo de Foto Pessoa |

---

## DBAMV.FUNCIONAR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FUNCIONARIO | NUMBER | N |  |
| 2 | NM_FUNCIONARIO | VARCHAR2 | N |  |

---

## DBAMV.FUNCIONARIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FUNC | NUMBER | N |  |
| 2 | NM_FUNC | VARCHAR2 | N |  |
| 3 | SN_ATIVO | VARCHAR2 | Y |  |
| 4 | VL_HORA | NUMBER | Y | Valor da Hora trabalhada |
| 5 | VL_HORA_EXTRA | NUMBER | Y | Valor da Hora Extra trabalhada |
| 6 | DT_VIGENCIA | DATE | Y | Data Inicial da Vigencia |
| 7 | CD_ESCALA | NUMBER | Y | Codigo da Escala do Funcionario |
| 8 | SN_AUTORIZA_EXTRA | VARCHAR2 | Y | Autorizac?o de Hora Extra |
| 9 | CD_SETOR | NUMBER | Y | Indica o setor onde o funcionario esta locado |
| 10 | CD_USUARIO | VARCHAR2 | Y | Esse codgio serve para digitac?o movimento de cardapio rapido para os funcionarios |
| 11 | CD_FUNC_INTEGRA | VARCHAR2 | Y | Codigo do funcionario (de-para) |
| 12 | CD_SEQ_INTEGRA | NUMBER | Y | Codigo sequencial da inetgrac?o |
| 13 | DT_INTEGRA | DATE | Y | Data em que ocorreu a integrac?o |
| 14 | NR_CPF | NUMBER | Y | CPF do funcionario |
| 15 | DS_ENDERECO | VARCHAR2 | Y | Endereco do funcionario |
| 16 | NR_ENDERECO | VARCHAR2 | Y | Nro. do endereco do funcionario |
| 17 | DS_COMPLEMENTO | VARCHAR2 | Y | Complemento do Endereco do funcionario |
| 18 | DS_BAIRRO | VARCHAR2 | Y | Bairro do Endereco do funcionario |
| 19 | CD_CIDADE | NUMBER | Y | Cidade do Endereco do funcionario |
| 20 | NR_CEP | VARCHAR2 | Y | CEP do Endereco do funcionario |
| 21 | DS_RUA | VARCHAR2 | Y | Descric?o da Rua do Endereco do funcionario |
| 22 | CD_OFICINA | NUMBER | Y | Oficina do funcionario |
| 23 | SN_INTERNET | VARCHAR2 | N | Indica se o funcionario acessa a Internet |
| 24 | NR_TELEFONE1 | NUMBER | Y | N? telefone do funcionario |
| 25 | NR_TELEFONE2 | NUMBER | Y | N? telefone do funcionario |
| 26 | VL_VENDA_HORA | NUMBER | Y | Valor venda hora do funcionario |
| 27 | DS_EMAIL | VARCHAR2 | Y | E-mail do funcionario |
| 28 | CD_TIPO_CARGO_PLANO | NUMBER | Y | Cargo do funcionario |
| 29 | CD_REDUZIDO | NUMBER | Y | Plano de Contas (CD_REDUZIDO) do funcionario |
| 30 | DS_SINDICATO | VARCHAR2 | Y | Sindicato do funcionario |
| 31 | DS_INTERNET | VARCHAR2 | Y | Site do funcionario |

---

## DBAMV.FUNCIONARIO_PLANO
> Tabela onde serão salvas todos os Funcionarios relacionados ao Plano.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PLANO | NUMBER | N | Código do Plano. |
| 2 | CD_OFICINA | NUMBER | N | Código da Oficina relacionado ao Plano. |
| 3 | CD_FUNCIONARIO_PLANO | VARCHAR2 | N | Código do funcionario do plano. |

---

## DBAMV.FUNCIONARIO_SALDO
> Tabela que mantera o saldo devedor atual do funcionario do HMSC - S?o Cristov?o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NR_MATRICULA | VARCHAR2 | N | Numero da matricula do funcionario. Sera o mesmo que o numero da carteira sem os ultimos dois dig... |
| 2 | VL_SALDO_ANTERIOR | NUMBER | N | Saldo devedor atual do funcionario. |

---

## DBAMV.GERMES_REG_INF
> TABELA DE HISTÓRICO DE REGISTROS DE MICRORGANISMOS ASSOCIADOS AO REGISTRO DE COLONIZAÇÃO DO PACIENTE.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GERMES_REG_INF | NUMBER | N | CHAVE DA TABELA |
| 2 | CD_REG_INF | NUMBER | N | CÓDIGO DO REGISTRO QUE FORAM RELACIONADOS OS GERMES |
| 3 | DT_GERMES_REG_INF | DATE | N | DATA QUE FORAM INFORMADOS OS GERMES DA COLONIZAÇÃO |
| 4 | CD_USUARIO | VARCHAR2 | N | USUÁRIO QUE INFORMOU OS GERMES DA COLONIZAÇÃO |

---

## DBAMV.GRAVIDADE_PACIENTE_SIDRA
> Tabela da Gravidade do Paciente SIDRA.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GRAVIDADE_PACIENTE | NUMBER | N | Código sequencial, para identificar a Gravidade do Paciente SIDRA. |
| 2 | DS_GRAVIDADE_PACIENTE | VARCHAR2 | N | Descrição da Gravidade do Paciente SIDRA. |

---

## DBAMV.INDICACAO_AGENDA
> Registro de Indicac?o de agendamento para Pacientes

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INDICACAO_AGENDA | NUMBER | N | Codigo da indicac?o |
| 2 | DT_INDICACAO_AGENDA | DATE | N | data de realizac?o da indicac?o |
| 3 | CD_USUARIO | VARCHAR2 | N | Usuario que realizou o registro de indicac?o |
| 4 | CD_PACIENTE | NUMBER | Y | Codigo do Paciente que esta sendo agendado |
| 5 | NM_PACIENTE | VARCHAR2 | Y | Nome de paciente n?o cadastrado que esta sendo agendado |
| 6 | DS_CONTATO_PACIENTE | VARCHAR2 | Y | Informac?es sobre contato com o paciente |
| 7 | CD_PRESTADOR | NUMBER | Y | Se indicado por prestador, trata-se do codigo do mesmo |
| 8 | NM_INDICADOR | VARCHAR2 | Y | Nome da fonte de indicac?o, se n?o for prestador |
| 9 | CD_TP_INDICACAO_AGENDA | NUMBER | N | Identificacor do Tipo de Indicacao de Agenda (tabela dbamv.tp_indicacao_agenda) |
| 10 | CD_MOVIMENTO_AGENDA_CENTRAL | NUMBER | Y |  |

---

## DBAMV.INDICACAO_PACIENTE
> Registro de Indicacao de Pacientes

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INDICACAO_PACIENTE | NUMBER | N | Codigo da indicacao |
| 2 | CD_USUARIO | VARCHAR2 | N | Usuario que realizou o registro de indicacao |
| 3 | CD_PACIENTE | NUMBER | N | Codigo do Paciente que esta sendo agendado |
| 4 | CD_TIPO_INDICACAO | NUMBER | Y | Identificacor do Tipo de Indicacao (tabela dbamv.tp_indicacao_agenda) |
| 5 | CD_PRESTADOR | NUMBER | Y | Se indicado por prestador, trata-se do codigo do mesmo |
| 6 | NM_INDICADOR | VARCHAR2 | Y | Nome da fonte de indicacao, se não for prestador |

---

## DBAMV.JUSTIFICATIVA_MOBILE
> Tabela para armazenar as justificativas para acesso a paciente sem identificação da pulseira e para administração de medicamento sem leitura do código de barras do medicamento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_JUSTIFICATIVA_MOBILE | NUMBER | N | Código identificador |
| 2 | DS_JUSTIFICATIVA_MOBILE | VARCHAR2 | N | Descrição da Justificativa |
| 3 | SN_ATIVO | VARCHAR2 | N | Gravar se a justificativa está ativa ou não |
| 4 | TP_JUSTIFICATIVA_CHECAGEM | VARCHAR2 | N | Tipo da justificativa, sendo: AP - Acesso ao paciente, AM - Administração de Medicamento |
| 5 | SN_EXCETO_SETOR | VARCHAR2 | N |  |
| 6 | SN_EXCETO_TIP_PRESTA | VARCHAR2 | N |  |

---

## DBAMV.JUSTIFICATIVA_MOBILE_SETOR
> Tabela para armazenar as justificativas para acesso a paciente sem identificação da pulseira e para administração de medicamento sem leitura do código de barras do medicamento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_JUSTIFICATIVA_MOBILE | NUMBER | N | Código identificador da justificativa |
| 2 | CD_SETOR | NUMBER | N | Código identificador do setor |

---

## DBAMV.JUSTIFICATIVA_MOB_TIP_PRESTA
> Tabela para armazenar as justificativas para acesso a paciente sem identificação da pulseira e para administração de medicamento sem leitura do código de barras do medicamento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_JUSTIFICATIVA_MOBILE | NUMBER | N | Código identificador da justificativa |
| 2 | CD_TIP_PRESTA | NUMBER | N | Código identificador do tipo de prestador |

---

## DBAMV.LOCALIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOCALIDADE | NUMBER | N |  |
| 2 | DS_LOCALIDADE | VARCHAR2 | N |  |
| 3 | CD_SETOR | NUMBER | N |  |
| 4 | NM_RESPONSAVEL | VARCHAR2 | Y | Nome do responsavel pela localidade. |
| 5 | CD_LOCALIDADE_INTEGRA | VARCHAR2 | Y | Codigo da localidade (de-para) |
| 6 | CD_SEQ_INTEGRA | NUMBER | Y | Sequencia o registro integrado |
| 7 | DT_INTEGRA | DATE | Y | Data de integrac?o do registro |
| 8 | NR_CODIGO_BARRA | VARCHAR2 | Y | NÚMERO DO CÓDIGO DE BARRAS |

---

## DBAMV.LOCALIDADE_SA04_SUS
> Tabela para exportação dos laudos SUS para o SA04z de BH.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOCALIDADE_SA04 | NUMBER | N | Código da localidade no SA04z. |
| 2 | NM_LOCALIDADE | VARCHAR2 | N | Nome da localidade. |
| 3 | CD_IBGE | NUMBER | N | Código do municipio na tabela CIDADE. |
| 4 | NR_DIGITO_IBGE | NUMBER | N | Conta exportada. |

---

## DBAMV.LOCAL_TRABALHO
> Tabela de condições especiais do paciente.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOCAL | NUMBER | N | Código sequencial, para identificar o Local de Trabalho. |
| 2 | DS_LOCAL | VARCHAR2 | N | Descrição do Local de Trabalho. |
| 3 | SN_ATIVO | VARCHAR2 | N | Identifica se local de trabalho está ativo. |

---

## DBAMV.MOV_CC_RPA
> Tabela de Movimentac?es Antes e Pos Cirurgia do Paciente.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ATENDIMENTO | NUMBER | N |  |
| 2 | DT_CENTRO_CIRURGICO | DATE | Y |  |
| 3 | DT_ENTRADA_RPA | DATE | Y |  |
| 4 | DT_SAIDA_RPA | DATE | Y |  |
| 5 | NM_USUARIO | VARCHAR2 | Y |  |
| 6 | CD_MOV_CC_RPA | NUMBER | N | Codigo Sequencial da Movimentac?o. |
| 7 | CD_AVISO_CIRURGIA | NUMBER | Y | Codigo do aviso de cirurgia associado a transferencia |
| 8 | DS_LOCAL_TRANSF_POS_CIR | VARCHAR2 | Y |  |
| 9 | DT_CHAMADA_TRANSF | DATE | Y | Data e hora em que foi realizada a chamada para realizac?o da transferencia do paciente. |
| 10 | DT_LOG_CHAMADA_TRANSF | DATE | Y | Data do registro da transferencia do paciente para o centro cirurgico. |
| 11 | CD_USUARIO_CHAMADA_TRANSF | VARCHAR2 | Y | Usuario responsavel pelo registro da transferencia do paciente para o centro cirurgico. |
| 12 | DT_LOG_TRANSF_CC | DATE | Y | Data e hora do registro da transferencia do paciente para o centro cirurgico. |
| 13 | DT_LOG_RPA | DATE | Y | Data e hora do registro da ultima movimentac?o de entrada ou saida do paciente do RPA. |
| 14 | CD_USUARIO_RPA | VARCHAR2 | Y | Usuario responsavel pelo registro da transferencia da entrada ou saida do paciente da RPA. |
| 15 | CD_SETOR | NUMBER | Y | Codigo Sequencial do Setor. |
| 16 | CD_SETOR_TRANSF | NUMBER | Y | Codigo do setor atual |
| 17 | CD_UNID_INT_TRANSF | NUMBER | Y | Codigo do unidade de internacao atual |

---

## DBAMV.MOV_INV
> Tabela de Cadastro de Procedimentos Invasivos Realizados pelos Pacientes.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DT_MOV_INV | DATE | Y | Data e Hora de cadastro da Movimentac?o de Invasivos. |
| 2 | CD_ATENDIMENTO | NUMBER | N | Codigo do Atendimento. |
| 3 | CD_PRO_INVASIVO | NUMBER | N | Codigo do Procedimento Invasivo. |
| 4 | NR_OCORRENCIA | NUMBER | Y | Numero de ocorrencias. |
| 5 | CD_MOV_INV | NUMBER | N |  |
| 6 | CD_REG_INF | NUMBER | Y |  |
| 7 | DT_INICIO | DATE | Y | Data de Inicio do procedimento invasivo |
| 8 | HR_INICIO | DATE | Y | Horario de Inicio do procedimento invasivo |
| 9 | DT_TERMINO | DATE | Y | Data de Termino do procedimento invasivo |
| 10 | HR_TERMINO | DATE | Y | Horario de Termino do procedimento invasivo |
| 11 | CD_TIP_PREST | NUMBER | Y |  |
| 12 | USR_INICIO | VARCHAR2 | Y | Usuario que cadastrou o inicio do prodecimento |
| 13 | USR_FINAL | VARCHAR2 | Y | Usuario que cadastrou o final do procedimento |
| 14 | DT_USR_INICIO | DATE | Y | Data em que o usuario cadastrou o registro |
| 15 | DT_USR_FINAL | DATE | Y | Data que o usuario cadastrou o final do procedimento |
| 16 | DS_JUSTIFICATIVA | VARCHAR2 | Y | Justificativa para a aplicac?o do procedimento |
| 17 | CD_LEITO | NUMBER | Y |  |
| 18 | CD_AVISO_CIRURGIA | NUMBER | Y |  |
| 19 | CD_TOPOGRAFIA | NUMBER | Y |  |
| 20 | CD_ITPRE_MED | NUMBER | Y |  |
| 21 | CD_PRO_INV_PSIH | NUMBER | Y |  |
| 22 | TP_CATEGORIA | VARCHAR2 | Y | Indica a categoria da topografia segundo a classificac?o NNIS em treze sitios principais |
| 23 | CD_USUARIO_APLICACAO | VARCHAR2 | Y | Código do usuário que aplicou o procedimento invasivo. |
| 24 | CD_USUARIO_RETIRADA | VARCHAR2 | Y | Código do usuário que retirou o procedimento invasivo. |
| 25 | CD_ITPRE_MED_RETIRADA | NUMBER | Y | Código do item de prescrição que foi aplicado o procedimento invasivo. |
| 26 | DH_MEDICACAO_APLICACAO | DATE | Y | Data na qual foi realizada a checagem da medicação de aplicação. |
| 27 | DH_MEDICACAO_RETIRADA | DATE | Y | Data na qual foi realizada a checagem da medicação de retirada. |
| 28 | SN_CANCELADO | VARCHAR2 | N | Indica se a movimentação de procedimentos invasivos está cancelada ou não. |
| 29 | CD_LOCAL_AFERICAO | NUMBER | Y | Código do local de aferição, local onde o dispositivo será implantado no paciente |
| 30 | CD_USUARIO_CANCELAMENTO | VARCHAR2 | Y | Código do usuário que cancelou a movimentação do procedimento invasivo. |
| 31 | DS_JUSTIFICATIVA_CANCELAMENTO | VARCHAR2 | Y | Descrição extra do motivo do cancelamento da movimentação do procedimento invasivo. |

---

## DBAMV.MUNICIPIO
> Tabela de Cadastro de Municipio.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MUNICIPIO | NUMBER | N | Codigo sequencial do Municipio. |
| 2 | DS_MUNICIPIO | VARCHAR2 | N | Descric?o do Municipio. |
| 3 | QT_POPULACAO | NUMBER | N | Quantidade de individuos do Municipio. |
| 4 | NR_DOC_IDENT | VARCHAR2 | Y | Documento de Identificac?o do Municipio. |
| 5 | NR_CEP | VARCHAR2 | Y | CEP do Endereco do Municipio. |
| 6 | DS_ENDERECO | VARCHAR2 | Y | Descric?o do Endereco do Municipio. |
| 7 | NR_ENDERECO | NUMBER | Y | Numero do Endereco do Municipio. |
| 8 | DS_COMPLEMENTO | VARCHAR2 | Y | Complemento do Endereco do Municipio. |
| 9 | NM_BAIRRO | VARCHAR2 | Y | Bairro do Endereco do Municipio. |
| 10 | CD_CIDADE | NUMBER | Y | Codigo da Cidade do Endereco do Municipio. |
| 11 | DT_CADASTRO | DATE | N | Data de cadastro do Municipio. |
| 12 | HR_CADASTRO | DATE | N | Hora de cadastro do Municipio. |

---

## DBAMV.MUNICIPIO_UNIDADE_REGIONAL
> Tabela de Municipio x unidade regional

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MUNICIPIO | NUMBER | N | Codigo sequencial de municipio. |
| 2 | CD_UNIDADE_REGIONAL | VARCHAR2 | N | Codigo sequencial da unidade regional. |

---

## DBAMV.NBS
> Tabela com as classificações tributárias.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_NBS | VARCHAR2 | N | Código da nomenclatura brasileira de serviços. |
| 2 | DS_NBS | VARCHAR2 | Y | Descrição da nomenclatura brasileira de serviços. |
| 3 | SN_ATIVO | CHAR | Y | Estado da nomenclatura brasileira de servições. S=Ativado, N=Desativado. |

---

## DBAMV.OUTROS_CONTATOS_PACIENTE
> Tabela de cadastro de telefones do paciente

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_OUTROS_CONTATOS_PACIENTE | NUMBER | N | Codigo do contato do paciente PK da tabela |
| 2 | CD_PACIENTE | NUMBER | N | Codigo do paciente |
| 3 | TP_OUTROS_CONTATO | VARCHAR2 | N | Tipo do contato E -> E-mail ou O -> Outros |
| 4 | CONTATO | VARCHAR2 | Y |  |
| 5 | SN_PADRAO | VARCHAR2 | N | Indica qual dos enderecos sera padr?o |
| 6 | SN_RECEBE_CONTATO | VARCHAR2 | N |  |
| 7 | DS_TIP_COMUN | VARCHAR2 | N | Observac?o dos enderecos do contato |
| 8 | DS_OBSERVACAO | VARCHAR2 | Y | Observac?o dos enderecos do contato |

---

## DBAMV.PACIENTE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PACIENTE | NUMBER | N |  |
| 2 | CD_CIDADE | NUMBER | Y |  |
| 3 | CD_DIS_SAN | NUMBER | Y |  |
| 4 | TP_SITUACAO | VARCHAR2 | N |  |
| 5 | NM_MNEMONICO | VARCHAR2 | Y |  |
| 6 | NM_PACIENTE | VARCHAR2 | N |  |
| 7 | TP_SEXO | VARCHAR2 | N |  |
| 8 | TP_ESTADO_CIVIL | VARCHAR2 | Y |  |
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
| 55 | CD_PIS_PASEP | VARCHAR2 | Y |  |
| 56 | TP_CERTIDAO | VARCHAR2 | Y |  |
| 57 | NM_CARTORIO | VARCHAR2 | Y |  |
| 58 | DS_LIVRO | VARCHAR2 | Y |  |
| 59 | DS_FOLHA | VARCHAR2 | Y |  |
| 60 | DT_EMISSAO_CERTIDAO | DATE | Y |  |
| 61 | DT_EMISSAO_IDENTIDADE | DATE | Y |  |
| 62 | CD_UF_EMISSAO_IDENTIDADE | VARCHAR2 | Y |  |
| 63 | DT_ENTRADA_ESTRANGEIRO | DATE | Y |  |
| 64 | NR_CTPS | VARCHAR2 | Y |  |
| 65 | NR_SERIE_CTPS | VARCHAR2 | Y |  |
| 66 | DT_EMISSAO_CTPS | DATE | Y |  |
| 67 | CD_UF_EMISSAO_CTPS | VARCHAR2 | Y |  |
| 68 | NR_TITULO_ELEITORAL | VARCHAR2 | Y |  |
| 69 | NR_ZONA_TITULO_ELEITORAL | VARCHAR2 | Y |  |
| 70 | NR_SECAO_TITULO_ELEITORAL | VARCHAR2 | Y |  |
| 71 | SN_RECEBE_CONTATO | VARCHAR2 | N |  |
| 72 | CD_TIPO_LOGRADOURO | NUMBER | Y |  |
| 73 | SN_PERMITE_AGENDAR_PARA_SUS | VARCHAR2 | Y |  |
| 74 | CD_CATEGORIA_OPINIAO | NUMBER | Y |  |
| 75 | SN_VIP | VARCHAR2 | N |  |
| 76 | CD_PAIS | NUMBER | Y |  |
| 77 | CD_PACIENTE_EXTERNO | VARCHAR2 | Y |  |
| 78 | CD_ETNIA | NUMBER | Y |  |
| 79 | DS_HASH | VARCHAR2 | Y |  |
| 80 | NR_DDD_FONE | NUMBER | Y |  |
| 81 | NR_DDD_CELULAR | NUMBER | Y |  |
| 82 | NR_CELULAR | VARCHAR2 | Y |  |
| 83 | SN_NOTIFICACAO_SMS | VARCHAR2 | N |  |
| 84 | NM_PACIENTE_FONETIZADO | VARCHAR2 | Y |  |
| 85 | CD_SITUACAO_FAMILIAR | NUMBER | Y |  |
| 86 | DT_CADASTRO_MANUAL | DATE | N |  |
| 87 | NR_DOCUMENTO_ESTRANGEIRO | VARCHAR2 | Y |  |
| 88 | DT_ENTRADA_BRASIL | DATE | Y |  |
| 89 | DT_NATURALIZACAO | DATE | Y |  |
| 90 | NR_PORTARIA_NATURALIZACAO | VARCHAR2 | Y |  |
| 91 | DS_PRIMEIRO_NOME | VARCHAR2 | Y |  |
| 92 | DS_PRIMEIRO_SOBRENOME | VARCHAR2 | Y |  |
| 93 | DS_SEGUNDO_SOBRENOME | VARCHAR2 | Y |  |
| 94 | CD_IDENTIFICADOR_PESSOA | VARCHAR2 | Y | Código do identificador do paciente |
| 95 | CD_ENDERECO_POSTAL | VARCHAR2 | Y |  |
| 96 | NR_DDI_FONE | NUMBER | Y |  |
| 97 | NR_DDI_CELULAR | NUMBER | Y |  |
| 98 | NR_DDI_FONE_COMERCIAL | NUMBER | Y |  |
| 99 | NR_DDD_FONE_COMERCIAL | NUMBER | Y |  |
| 100 | NR_FONE_COMERCIAL | NUMBER | Y |  |
| 101 | SN_ATIVO | VARCHAR2 | Y |  |
| 102 | DS_COAGULOPATIA | VARCHAR2 | Y |  |
| 103 | NR_SAME | VARCHAR2 | Y |  |
| 104 | SN_UTILIZA_NOME_SOCIAL | VARCHAR2 | Y |  |
| 105 | NM_SOCIAL_PACIENTE | VARCHAR2 | Y |  |
| 106 | SN_ENDERECO_SEM_NUMERO | VARCHAR2 | N |  |
| 107 | SN_ENDERECO_EXTERNO | VARCHAR2 | Y |  |
| 108 | CD_BANCO | NUMBER | Y | Banco da Conta Bancaria do Paciente |
| 109 | NR_AGENCIA | VARCHAR2 | Y | Numero da Agencia da Conta Bancaria do paciente |
| 110 | DS_AGENCIA | VARCHAR2 | Y | Nome da Agencia da Conta Bancaria do paciente |
| 111 | NR_CONTA | VARCHAR2 | Y | Numero da Conta Bancaria do paciente |
| 112 | SN_FREQUENTA_ESCOLA | VARCHAR2 | Y | Informe se Frequenta Escola |
| 113 | DS_CARGO_TRABALHO | VARCHAR2 | Y | Descric?o do Cargo Atual que o paciente exerce |
| 114 | NR_REGISTRO_FUNCIONAL_TRABALHO | VARCHAR2 | Y | Numero de Registro Funcional |
| 115 | DS_VINCLULO_TRABALHO | VARCHAR2 | Y | Tipo de Vinculo Empregaticio |
| 116 | DS_HORARIO_TRABALHO | VARCHAR2 | Y | Horario de trabalho |
| 117 | TP_PACIENTE | VARCHAR2 | Y | Tipo de Paciente : MENOR_INDADE,INAPTO e IDOSO |
| 118 | CD_TIP_PAREN | NUMBER | Y | Tipo de parentesco do Tutor do Paciente |
| 119 | DS_COMPLEMENTO_TUTOR | VARCHAR2 | Y | Complemento sobre o Tutor do Paciente |
| 120 | NM_TUTOR | VARCHAR2 | Y | Nome do Tutor do Paciente |
| 121 | DT_NASCIMENTO_TUTOR | DATE | Y | Data de Nascimento do Tutor do Paciente |
| 122 | TP_SEXO_TUTOR | VARCHAR2 | Y | Sexo do Tutor do Paciente |
| 123 | NR_CPF_TUTOR | VARCHAR2 | Y | CPF do Tutor do Paciente |
| 124 | NR_DECLARACAO_NASCIDO_VIVO | VARCHAR2 | Y | Número da Declaração de Nascido Vivo |
| 125 | CD_TIPO_BENEFICIARIO | VARCHAR2 | Y | Código Tipo do Beneficiário |
| 126 | CD_IDENTIFICADOR_CONVENIO | VARCHAR2 | Y | Código de identificação para o convênio interno do paciente |
| 127 | CD_IDENTIFICADOR_CONVENIO_PAI | VARCHAR2 | Y | Código de identificação para o convênio interno do titular do plano |
| 128 | CD_TIP_PAREN_CONVENIO | NUMBER | Y | Tipo de parentesco do paciente com o titular do plano |
| 129 | SN_PLANO_ODONTOLOGICO | VARCHAR2 | Y | Se o paciente possui plano odontológico |
| 130 | CD_USUARIO_PERMISSAO | VARCHAR2 | Y | Código do motivo da ausência do documento obrigatório. |
| 131 | CD_MOT_AUSENCIA_DOC_OBRG | NUMBER | Y |  |
| 132 | CD_LOCAL_TRABALHO_CHILE | NUMBER | Y | Código do local de trabalho, da tabela LOCAL_TRABALHO. Utilizado somente para "Chile". |
| 133 | CD_CONDICAO_ESPECIAL | NUMBER | Y | Código da condição especial do paciente, da tabela CONDICOES_ESPECIAIS_PAC. |
| 134 | CD_COR_AREA_FAMILIA | NUMBER | Y |  |
| 135 | SN_RUT_FICTICIO | VARCHAR2 | N | Identificador de RUT ficticio. Valores: S / N |
| 136 | DT_VALIDADE | DATE | Y | Data Fim de Validade do Cadastro. Um paciente que possua o valor desse campo menor que a data do ... |
| 137 | CD_FORCA_MILITAR | NUMBER | Y | Identificador da Força Militar |
| 138 | CD_POSTO_MILITAR | NUMBER | Y | Identificador de Posto Militar |
| 139 | CD_LOG_LOGRADOURO | NUMBER | Y | Código do logradouro da integração com a prefeitura de santos |
| 140 | NM_USUARIO_ULTIMA_ATUALIZACAO | VARCHAR2 | Y |  |
| 141 | NR_NIF | VARCHAR2 | Y | Numero de identificacao fiscal |
| 142 | CD_PRESTADOR_REFERENCIA | NUMBER | Y | CÃ³digo do prestador referente a AtenÃ§Ã£o PrimÃ¡ria da famÃ­lia |
| 143 | SN_ONCOLOGICO | VARCHAR2 | N | Informa se o paciente é oncologico |
| 144 | DT_CLASSIFICACAO_ONCOLOGICO | DATE | Y | Data da classificação de oncologia |
| 145 | CD_TIPO_CELULAR | VARCHAR2 | N | Indica o tipo de telefone celular segundo o CADSUS (R - RESIDENCIAL, C - COMERCIAL, E - CELULAR, ... |
| 146 | CD_TIPO_FONE_COMERCIAL | VARCHAR2 | N | Indica o tipo de telefone comercial segundo o CADSUS (R - RESIDENCIAL, C - COMERCIAL, E - CELULAR... |
| 147 | CD_TIPO_FONE | VARCHAR2 | N | Indica o tipo de telefone residencial segundo o CADSUS (R - RESIDENCIAL, C - COMERCIAL, E - CELUL... |
| 148 | CD_PAIS_EMISSAO_PAS | NUMBER | Y | Indica o país de emissão do passaporte. |
| 149 | SN_AUSENCIA_MAE | VARCHAR2 | N | Indica que o paciente não tem o nome da mãe. |
| 150 | TP_ZONA_MORADIA | VARCHAR2 | N | Indica a zona da moradia do paciente: U - Urbana ou R - Rural. |
| 151 | SN_SITUACAO_RUA | VARCHAR2 | N | Indica se o paciente se encontra em situação de rua. |
| 152 | CD_VULNERABILIDADE_SOCIAL | NUMBER | Y | Código da vulnerabilidade social. |
| 153 | CD_ORIENTACAO_SEXUAL | NUMBER | Y | Código da orientação sexual do paciente. |
| 154 | SN_UTIL_IDENTIDADE_GENERO | VARCHAR2 | N | SN com função de permitir a persistencia do campo em outras telas |
| 155 | SN_UTIL_ORIENTACAO_SEXUAL | VARCHAR2 | N | SN com função de permitir a persistencia do campo em outras telas |
| 156 | CD_IDENTIDADE_GENERO | NUMBER | Y | Código da identidade de gênero do paciente. |
| 157 | TP_DESCONHECIDO_RECEM_NASCIDO | VARCHAR2 | N | Obrigatório para Desconhecido? |

---

## DBAMV.PACIENTE_202009090215

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PACIENTE | NUMBER | N |  |
| 2 | CD_CIDADE | NUMBER | Y |  |
| 3 | CD_DIS_SAN | NUMBER | Y |  |
| 4 | TP_SITUACAO | VARCHAR2 | N |  |
| 5 | NM_MNEMONICO | VARCHAR2 | Y |  |
| 6 | NM_PACIENTE | VARCHAR2 | N |  |
| 7 | TP_SEXO | VARCHAR2 | N |  |
| 8 | TP_ESTADO_CIVIL | VARCHAR2 | Y |  |
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
| 55 | CD_PIS_PASEP | VARCHAR2 | Y |  |
| 56 | TP_CERTIDAO | VARCHAR2 | Y |  |
| 57 | NM_CARTORIO | VARCHAR2 | Y |  |
| 58 | DS_LIVRO | VARCHAR2 | Y |  |
| 59 | DS_FOLHA | VARCHAR2 | Y |  |
| 60 | DT_EMISSAO_CERTIDAO | DATE | Y |  |
| 61 | DT_EMISSAO_IDENTIDADE | DATE | Y |  |
| 62 | CD_UF_EMISSAO_IDENTIDADE | VARCHAR2 | Y |  |
| 63 | DT_ENTRADA_ESTRANGEIRO | DATE | Y |  |
| 64 | NR_CTPS | VARCHAR2 | Y |  |
| 65 | NR_SERIE_CTPS | VARCHAR2 | Y |  |
| 66 | DT_EMISSAO_CTPS | DATE | Y |  |
| 67 | CD_UF_EMISSAO_CTPS | VARCHAR2 | Y |  |
| 68 | NR_TITULO_ELEITORAL | VARCHAR2 | Y |  |
| 69 | NR_ZONA_TITULO_ELEITORAL | VARCHAR2 | Y |  |
| 70 | NR_SECAO_TITULO_ELEITORAL | VARCHAR2 | Y |  |
| 71 | SN_RECEBE_CONTATO | VARCHAR2 | N |  |
| 72 | CD_TIPO_LOGRADOURO | NUMBER | Y |  |
| 73 | SN_PERMITE_AGENDAR_PARA_SUS | VARCHAR2 | Y |  |
| 74 | CD_CATEGORIA_OPINIAO | NUMBER | Y |  |
| 75 | SN_VIP | VARCHAR2 | N |  |
| 76 | CD_PAIS | NUMBER | Y |  |
| 77 | CD_PACIENTE_EXTERNO | VARCHAR2 | Y |  |
| 78 | CD_ETNIA | NUMBER | Y |  |
| 79 | DS_HASH | VARCHAR2 | Y |  |
| 80 | NR_DDD_FONE | NUMBER | Y |  |
| 81 | NR_DDD_CELULAR | NUMBER | Y |  |
| 82 | NR_CELULAR | VARCHAR2 | Y |  |
| 83 | SN_NOTIFICACAO_SMS | VARCHAR2 | N |  |
| 84 | NM_PACIENTE_FONETIZADO | VARCHAR2 | Y |  |
| 85 | CD_SITUACAO_FAMILIAR | NUMBER | Y |  |
| 86 | DT_CADASTRO_MANUAL | DATE | N |  |
| 87 | NR_DOCUMENTO_ESTRANGEIRO | VARCHAR2 | Y |  |
| 88 | DT_ENTRADA_BRASIL | DATE | Y |  |
| 89 | DT_NATURALIZACAO | DATE | Y |  |
| 90 | NR_PORTARIA_NATURALIZACAO | VARCHAR2 | Y |  |
| 91 | DS_PRIMEIRO_NOME | VARCHAR2 | Y |  |
| 92 | DS_PRIMEIRO_SOBRENOME | VARCHAR2 | Y |  |
| 93 | DS_SEGUNDO_SOBRENOME | VARCHAR2 | Y |  |
| 94 | CD_IDENTIFICADOR_PESSOA | VARCHAR2 | Y |  |
| 95 | CD_ENDERECO_POSTAL | VARCHAR2 | Y |  |
| 96 | NR_DDI_FONE | NUMBER | Y |  |
| 97 | NR_DDI_CELULAR | NUMBER | Y |  |
| 98 | NR_DDI_FONE_COMERCIAL | NUMBER | Y |  |
| 99 | NR_DDD_FONE_COMERCIAL | NUMBER | Y |  |
| 100 | NR_FONE_COMERCIAL | NUMBER | Y |  |
| 101 | SN_ATIVO | VARCHAR2 | Y |  |
| 102 | DS_COAGULOPATIA | VARCHAR2 | Y |  |
| 103 | NR_SAME | VARCHAR2 | Y |  |
| 104 | SN_UTILIZA_NOME_SOCIAL | VARCHAR2 | Y |  |
| 105 | NM_SOCIAL_PACIENTE | VARCHAR2 | Y |  |
| 106 | SN_ENDERECO_SEM_NUMERO | VARCHAR2 | N |  |
| 107 | SN_ENDERECO_EXTERNO | VARCHAR2 | Y |  |
| 108 | CD_BANCO | NUMBER | Y |  |
| 109 | NR_AGENCIA | VARCHAR2 | Y |  |
| 110 | DS_AGENCIA | VARCHAR2 | Y |  |
| 111 | NR_CONTA | VARCHAR2 | Y |  |
| 112 | SN_FREQUENTA_ESCOLA | VARCHAR2 | Y |  |
| 113 | DS_CARGO_TRABALHO | VARCHAR2 | Y |  |
| 114 | NR_REGISTRO_FUNCIONAL_TRABALHO | VARCHAR2 | Y |  |
| 115 | DS_VINCLULO_TRABALHO | VARCHAR2 | Y |  |
| 116 | DS_HORARIO_TRABALHO | VARCHAR2 | Y |  |
| 117 | TP_PACIENTE | VARCHAR2 | Y |  |
| 118 | CD_TIP_PAREN | NUMBER | Y |  |
| 119 | DS_COMPLEMENTO_TUTOR | VARCHAR2 | Y |  |
| 120 | NM_TUTOR | VARCHAR2 | Y |  |
| 121 | DT_NASCIMENTO_TUTOR | DATE | Y |  |
| 122 | TP_SEXO_TUTOR | VARCHAR2 | Y |  |
| 123 | NR_CPF_TUTOR | VARCHAR2 | Y |  |
| 124 | NR_DECLARACAO_NASCIDO_VIVO | VARCHAR2 | Y |  |
| 125 | CD_TIPO_BENEFICIARIO | VARCHAR2 | Y |  |
| 126 | CD_IDENTIFICADOR_CONVENIO | VARCHAR2 | Y |  |
| 127 | CD_IDENTIFICADOR_CONVENIO_PAI | VARCHAR2 | Y |  |
| 128 | CD_TIP_PAREN_CONVENIO | NUMBER | Y |  |
| 129 | SN_PLANO_ODONTOLOGICO | VARCHAR2 | Y |  |
| 130 | CD_USUARIO_PERMISSAO | VARCHAR2 | Y |  |
| 131 | CD_MOT_AUSENCIA_DOC_OBRG | NUMBER | Y |  |
| 132 | CD_LOCAL_TRABALHO_CHILE | NUMBER | Y |  |
| 133 | CD_CONDICAO_ESPECIAL | NUMBER | Y |  |
| 134 | CD_COR_AREA_FAMILIA | NUMBER | Y |  |
| 135 | SN_RUT_FICTICIO | VARCHAR2 | N |  |
| 136 | DT_VALIDADE | DATE | Y |  |
| 137 | CD_FORCA_MILITAR | NUMBER | Y |  |
| 138 | CD_POSTO_MILITAR | NUMBER | Y |  |
| 139 | CD_LOG_LOGRADOURO | NUMBER | Y |  |
| 140 | NM_USUARIO_ULTIMA_ATUALIZACAO | VARCHAR2 | Y |  |
| 141 | NR_NIF | VARCHAR2 | Y |  |
| 142 | CD_PRESTADOR_REFERENCIA | NUMBER | Y |  |
| 143 | SN_ONCOLOGICO | VARCHAR2 | N |  |
| 144 | DT_CLASSIFICACAO_ONCOLOGICO | DATE | Y |  |

---

## DBAMV.PACIENTE_202009090952

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PACIENTE | NUMBER | N |  |
| 2 | CD_CIDADE | NUMBER | Y |  |
| 3 | CD_DIS_SAN | NUMBER | Y |  |
| 4 | TP_SITUACAO | VARCHAR2 | N |  |
| 5 | NM_MNEMONICO | VARCHAR2 | Y |  |
| 6 | NM_PACIENTE | VARCHAR2 | N |  |
| 7 | TP_SEXO | VARCHAR2 | N |  |
| 8 | TP_ESTADO_CIVIL | VARCHAR2 | Y |  |
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
| 55 | CD_PIS_PASEP | VARCHAR2 | Y |  |
| 56 | TP_CERTIDAO | VARCHAR2 | Y |  |
| 57 | NM_CARTORIO | VARCHAR2 | Y |  |
| 58 | DS_LIVRO | VARCHAR2 | Y |  |
| 59 | DS_FOLHA | VARCHAR2 | Y |  |
| 60 | DT_EMISSAO_CERTIDAO | DATE | Y |  |
| 61 | DT_EMISSAO_IDENTIDADE | DATE | Y |  |
| 62 | CD_UF_EMISSAO_IDENTIDADE | VARCHAR2 | Y |  |
| 63 | DT_ENTRADA_ESTRANGEIRO | DATE | Y |  |
| 64 | NR_CTPS | VARCHAR2 | Y |  |
| 65 | NR_SERIE_CTPS | VARCHAR2 | Y |  |
| 66 | DT_EMISSAO_CTPS | DATE | Y |  |
| 67 | CD_UF_EMISSAO_CTPS | VARCHAR2 | Y |  |
| 68 | NR_TITULO_ELEITORAL | VARCHAR2 | Y |  |
| 69 | NR_ZONA_TITULO_ELEITORAL | VARCHAR2 | Y |  |
| 70 | NR_SECAO_TITULO_ELEITORAL | VARCHAR2 | Y |  |
| 71 | SN_RECEBE_CONTATO | VARCHAR2 | N |  |
| 72 | CD_TIPO_LOGRADOURO | NUMBER | Y |  |
| 73 | SN_PERMITE_AGENDAR_PARA_SUS | VARCHAR2 | Y |  |
| 74 | CD_CATEGORIA_OPINIAO | NUMBER | Y |  |
| 75 | SN_VIP | VARCHAR2 | N |  |
| 76 | CD_PAIS | NUMBER | Y |  |
| 77 | CD_PACIENTE_EXTERNO | VARCHAR2 | Y |  |
| 78 | CD_ETNIA | NUMBER | Y |  |
| 79 | DS_HASH | VARCHAR2 | Y |  |
| 80 | NR_DDD_FONE | NUMBER | Y |  |
| 81 | NR_DDD_CELULAR | NUMBER | Y |  |
| 82 | NR_CELULAR | VARCHAR2 | Y |  |
| 83 | SN_NOTIFICACAO_SMS | VARCHAR2 | N |  |
| 84 | NM_PACIENTE_FONETIZADO | VARCHAR2 | Y |  |
| 85 | CD_SITUACAO_FAMILIAR | NUMBER | Y |  |
| 86 | DT_CADASTRO_MANUAL | DATE | N |  |
| 87 | NR_DOCUMENTO_ESTRANGEIRO | VARCHAR2 | Y |  |
| 88 | DT_ENTRADA_BRASIL | DATE | Y |  |
| 89 | DT_NATURALIZACAO | DATE | Y |  |
| 90 | NR_PORTARIA_NATURALIZACAO | VARCHAR2 | Y |  |
| 91 | DS_PRIMEIRO_NOME | VARCHAR2 | Y |  |
| 92 | DS_PRIMEIRO_SOBRENOME | VARCHAR2 | Y |  |
| 93 | DS_SEGUNDO_SOBRENOME | VARCHAR2 | Y |  |
| 94 | CD_IDENTIFICADOR_PESSOA | VARCHAR2 | Y |  |
| 95 | CD_ENDERECO_POSTAL | VARCHAR2 | Y |  |
| 96 | NR_DDI_FONE | NUMBER | Y |  |
| 97 | NR_DDI_CELULAR | NUMBER | Y |  |
| 98 | NR_DDI_FONE_COMERCIAL | NUMBER | Y |  |
| 99 | NR_DDD_FONE_COMERCIAL | NUMBER | Y |  |
| 100 | NR_FONE_COMERCIAL | NUMBER | Y |  |
| 101 | SN_ATIVO | VARCHAR2 | Y |  |
| 102 | DS_COAGULOPATIA | VARCHAR2 | Y |  |
| 103 | NR_SAME | VARCHAR2 | Y |  |
| 104 | SN_UTILIZA_NOME_SOCIAL | VARCHAR2 | Y |  |
| 105 | NM_SOCIAL_PACIENTE | VARCHAR2 | Y |  |
| 106 | SN_ENDERECO_SEM_NUMERO | VARCHAR2 | N |  |
| 107 | SN_ENDERECO_EXTERNO | VARCHAR2 | Y |  |
| 108 | CD_BANCO | NUMBER | Y |  |
| 109 | NR_AGENCIA | VARCHAR2 | Y |  |
| 110 | DS_AGENCIA | VARCHAR2 | Y |  |
| 111 | NR_CONTA | VARCHAR2 | Y |  |
| 112 | SN_FREQUENTA_ESCOLA | VARCHAR2 | Y |  |
| 113 | DS_CARGO_TRABALHO | VARCHAR2 | Y |  |
| 114 | NR_REGISTRO_FUNCIONAL_TRABALHO | VARCHAR2 | Y |  |
| 115 | DS_VINCLULO_TRABALHO | VARCHAR2 | Y |  |
| 116 | DS_HORARIO_TRABALHO | VARCHAR2 | Y |  |
| 117 | TP_PACIENTE | VARCHAR2 | Y |  |
| 118 | CD_TIP_PAREN | NUMBER | Y |  |
| 119 | DS_COMPLEMENTO_TUTOR | VARCHAR2 | Y |  |
| 120 | NM_TUTOR | VARCHAR2 | Y |  |
| 121 | DT_NASCIMENTO_TUTOR | DATE | Y |  |
| 122 | TP_SEXO_TUTOR | VARCHAR2 | Y |  |
| 123 | NR_CPF_TUTOR | VARCHAR2 | Y |  |
| 124 | NR_DECLARACAO_NASCIDO_VIVO | VARCHAR2 | Y |  |
| 125 | CD_TIPO_BENEFICIARIO | VARCHAR2 | Y |  |
| 126 | CD_IDENTIFICADOR_CONVENIO | VARCHAR2 | Y |  |
| 127 | CD_IDENTIFICADOR_CONVENIO_PAI | VARCHAR2 | Y |  |
| 128 | CD_TIP_PAREN_CONVENIO | NUMBER | Y |  |
| 129 | SN_PLANO_ODONTOLOGICO | VARCHAR2 | Y |  |
| 130 | CD_USUARIO_PERMISSAO | VARCHAR2 | Y |  |
| 131 | CD_MOT_AUSENCIA_DOC_OBRG | NUMBER | Y |  |
| 132 | CD_LOCAL_TRABALHO_CHILE | NUMBER | Y |  |
| 133 | CD_CONDICAO_ESPECIAL | NUMBER | Y |  |
| 134 | CD_COR_AREA_FAMILIA | NUMBER | Y |  |
| 135 | SN_RUT_FICTICIO | VARCHAR2 | N |  |
| 136 | DT_VALIDADE | DATE | Y |  |
| 137 | CD_FORCA_MILITAR | NUMBER | Y |  |
| 138 | CD_POSTO_MILITAR | NUMBER | Y |  |
| 139 | CD_LOG_LOGRADOURO | NUMBER | Y |  |
| 140 | NM_USUARIO_ULTIMA_ATUALIZACAO | VARCHAR2 | Y |  |
| 141 | NR_NIF | VARCHAR2 | Y |  |
| 142 | CD_PRESTADOR_REFERENCIA | NUMBER | Y |  |
| 143 | SN_ONCOLOGICO | VARCHAR2 | N |  |
| 144 | DT_CLASSIFICACAO_ONCOLOGICO | DATE | Y |  |

---

## DBAMV.PACIENTE_ADICIONAL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PACIENTE | NUMBER | N |  |
| 2 | CD_CIDADE_NATURAL | NUMBER | Y |  |
| 3 | DS_PTO_REF | VARCHAR2 | Y |  |
| 4 | DS_OCUP_CONJUGE | VARCHAR2 | Y |  |
| 5 | DS_AVISAR_URGENCIA | VARCHAR2 | Y |  |
| 6 | DS_OCUP_PAI | VARCHAR2 | Y |  |
| 7 | DS_OCUP_MAE | VARCHAR2 | Y |  |
| 8 | DT_NASC_PAI | DATE | Y |  |
| 9 | DT_NASC_MAE | DATE | Y |  |
| 10 | CD_GRAU_INS_PAI | NUMBER | Y |  |
| 11 | CD_GRAU_INS_MAE | NUMBER | Y |  |
| 12 | NR_NASC_VIVOS | NUMBER | Y |  |
| 13 | NR_NASC_MORTOS | NUMBER | Y |  |
| 14 | NR_NASC_IGNORADO | NUMBER | Y |  |
| 15 | DS_OCUP_ANTERIOR | VARCHAR2 | Y |  |

---

## DBAMV.PACIENTE_CARTAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PACIENTE_CARTAO | NUMBER | N |  |
| 2 | CD_PACIENTE | NUMBER | N |  |
| 3 | DT_PACIENTE_CARTAO | DATE | N |  |
| 4 | HR_PACIENTE_CARTAO | DATE | N |  |
| 5 | NM_USUARIO | VARCHAR2 | N |  |
| 6 | NR_PACIENTE_CARTAO_ORDEM | NUMBER | N |  |

---

## DBAMV.PACIENTE_CONTA_SUS
> Tabela usada para guardar informac?es do paciente que foram exportadas

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | TP_CONTA | VARCHAR2 | N | Tipo da conta (APAC, BPA ou AIH). |
| 2 | CD_CONTA | NUMBER | N | Codigo da conta. |
| 3 | CD_PACIENTE | NUMBER | N | Codigo do paciente. |
| 4 | NM_PACIENTE | VARCHAR2 | N | Nome do paciente. |
| 5 | NM_MAE_PACIENTE | VARCHAR2 | Y | Nome da m?e do paciente. |
| 6 | NM_RESPONSAVEL | VARCHAR2 | Y | Nome do responsavel pelo paciente. |
| 7 | DT_NASCIMENTO | DATE | Y | Data de nascimento do paciente. |
| 8 | TP_SEXO | VARCHAR2 | Y | Sexo do paciente. |
| 9 | NR_CNS | VARCHAR2 | Y | Cart?o Nacional de Saude do paciente. |
| 10 | TP_RACA_COR | VARCHAR2 | Y | Raca cor do paciente. |
| 11 | CD_ETNIA | VARCHAR2 | Y | Etnia do paciente. |
| 12 | CD_CIDADANIA | VARCHAR2 | Y | Nacionalidade do paciente. |
| 13 | DS_LOGRADOURO | VARCHAR2 | Y | Logradouro do paciente. |
| 14 | NR_LOGRADOURO | VARCHAR2 | Y | Numero do logradouro. |
| 15 | DS_COMPLEMENTO_LOGR | VARCHAR2 | Y | Complemento do logradouro. |
| 16 | NR_CEP_LOGRADOURO | VARCHAR2 | Y | Cep do logradouro. |
| 17 | CD_MUNICIPIO_LOGRADOURO | VARCHAR2 | Y | Municipio do logradouro. |
| 18 | CD_TP_LOGRADOURO | NUMBER | Y | Codigo do tipo de logradouro. |
| 19 | NM_BAIRRO | VARCHAR2 | Y | Nome do bairro. |
| 20 | NR_DDD_FONE | NUMBER | Y | DDD do telefone. |
| 21 | NR_FONE | NUMBER | Y | Numero do telefone. |
| 22 | DS_EMAIL | VARCHAR2 | Y | Email do paciente. |

---

## DBAMV.PACIENTE_IDENTIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PACIENTE | NUMBER | N |  |
| 2 | NR_IDENTIDADE | NUMBER | Y |  |

---

## DBAMV.PACIENTE_LISTA_COLUNA
> Tabela com a configuracao da lista de pacientes

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PACIENTE_LISTA_COLUNA | NUMBER | N | Codigo sequencial unico |
| 2 | CD_CODIGO_COLUNA | VARCHAR2 | N | Codigo da coluna |
| 3 | NM_COLUNA | VARCHAR2 | Y | Nome da coluna |
| 4 | DS_LARGURA_COLUNA | VARCHAR2 | Y | Largura da coluna |
| 5 | DS_RENDERIZACAO | VARCHAR2 | Y | Coluna renderizavel |
| 6 | SN_OBRIGATORIO | VARCHAR2 | Y | Coluna obrigatoria |
| 7 | SN_OBRIGATORIO_SBIS | VARCHAR2 | Y | Indica que obriga SBIS |
| 8 | SN_ORDENAVEL | VARCHAR2 | Y | Coluna que permite ordenacao |
| 9 | SN_CLICAVEL | VARCHAR2 | Y | Coluna clicavel |
| 10 | NR_LARGURA_COLUNA_MINIMA | NUMBER | Y | Largura minima |
| 11 | SN_COLUNA_FIXA | VARCHAR2 | Y | Coluna fixa |
| 12 | DS_COLUNA_VALOR | VARCHAR2 | Y | Valor da coluna |
| 13 | TP_LISTA | VARCHAR2 | N | Tipo da lista |

---

## DBAMV.PACIENTE_MOTIVO_RESTRICAO_VSIT
> Tabela de vinculo do paciente com os motivos de restrição de visitas

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PACIENTE_MOTIVO_RESTR_VSIT | NUMBER | N | PK |
| 2 | CD_PACIENTE | NUMBER | N | codigo do paciente |
| 3 | CD_MOTIVO_RESTRICAO_VISITA | NUMBER | N | codigo do motivo de restrição de visita |
| 4 | SN_ATIVO | VARCHAR2 | N | Indica se o motivo de restrição está ativo (S) ou inativo (N) |
| 5 | DS_OBSERVACAO | VARCHAR2 | Y | Observação da restrição de visita |
| 6 | CD_USUARIO_INCLUSAO | VARCHAR2 | Y | Usuário que realizou a inclusão do motivo |
| 7 | DH_INCLUSAO | DATE | Y | Data/Hora de inclusão do motivo |
| 8 | CD_USUARIO_INATIVACAO | VARCHAR2 | Y | Usuário que realizou a inativação do motivo |
| 9 | DH_INATIVACAO | DATE | Y | Data/Hora de inativação do motivo |

---

## DBAMV.PACIENTE_OBITO
> Tabela de Registros de Pacientes que foram a obito para o processo de apagar os registros de agendamentos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PACIENTE_OBITO | NUMBER | N | Identificador do Registro |
| 2 | CD_PACIENTE | NUMBER | N | Código do Paciente |
| 3 | DT_CRIACAO | DATE | N | Data de Criação do Registro |
| 4 | CD_USUARIO | VARCHAR2 | N | Código do Usuário que criou o registro |
| 5 | TP_STATUS | VARCHAR2 | N | Status do Registro: (A) - A Processar / (P) - Processado / (E) - Erro |
| 6 | DT_ATUALIZACAO | DATE | Y | Data de Atualização do Registro (Processamento dos Registros do SCMA) |
| 7 | DS_MENSAGEM | VARCHAR2 | Y | Mensagem de Erro |

---

## DBAMV.PACIENTE_PRIORIDADE
> Tabela de associação entre paciente e prioridade.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PACIENTE_PRIORIDADE | NUMBER | N |  |
| 2 | CD_PACIENTE | NUMBER | N |  |
| 3 | CD_PRIORID_PACIENTE | NUMBER | N |  |

---

## DBAMV.PACIENTE_PROGRAMA_SAUDE
> Tabela de Paciente em Programas de Saude

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PACIENTE | NUMBER | N | Código do paciente |
| 2 | CD_PROGRAMA_SAUDE | NUMBER | N | Código do programa de saúde |
| 3 | CD_MULTI_EMPRESA | NUMBER | N | Código da Empresa |
| 4 | SN_PROGRAMA_SAUDE_ATIVO | VARCHAR2 | N | SITUAÇÃO DO PACIENTE NO PROGRAMA S = ATIVO, N = INATIVO. |
| 5 | CD_USUARIO | VARCHAR2 | Y | Código do usuário |
| 6 | DT_INICIO_VIGENCIA | DATE | Y | DATA DE INICIO DA PARTICIPAÇÃO DO PACIENTE NO PROGRAMA. QUANDO VAZIO INDICA QUE O PACIENTE NÃO TE... |
| 7 | DT_FIM_VIGENCIA | DATE | Y | DATA DE TERMINO DA PARTICIPAÇÃO DO PACIENTE NO PROGRAMA.QUANDO VAZIO INDICA QUE O PACIENTE NÃO TE... |
| 8 | CD_ESTADO_PACIENTE_PROG_SAUDE | NUMBER | Y | CÓDIGO DO ESTADO DO PACIENTE NO PROGRAMA DE SAUDE. |

---

## DBAMV.PACIENTE_RGHC
> Tabela de RGHC - identificador do paciente utilizado pelo hospital.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PACIENTE | NUMBER | N | Codigo do paciente mv. |
| 2 | NR_RGHC | VARCHAR2 | N | Identificador do paciente no hospital. |

---

## DBAMV.PAIS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PAIS | NUMBER | N |  |
| 2 | NM_PAIS | VARCHAR2 | N |  |
| 3 | CD_PAIS_EXTERNO | VARCHAR2 | Y | Codigo de identificac?o do pais externo |
| 4 | CD_PAIS_BACEN | VARCHAR2 | Y | Codigo de identificacao do pais no banco central |
| 5 | CD_PAIS_SISCOSERV | NUMBER | Y | Codigo do pais mapeado da SISCOSERV. |

---

## DBAMV.PERCENTUAL_UNID_REG
> Tabela de Pacientes relacionados aos vinculos provisorios do Prestador

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PERCENTUAL_UNID_REG | NUMBER | N | Codido que identifica o Prefil |
| 2 | CD_SER_DIS | NUMBER | Y | Codido do Servico associado ao perfil Ambulatorial |
| 3 | CD_TIP_MAR | NUMBER | Y | Codido do Tipo de Atendimento associado ao perfil Ambulatorial |
| 4 | CD_RECURSO | NUMBER | Y | Codido do Recurso associado ao perfil de Imagem |
| 5 | TP_UNIDADE_REG | VARCHAR2 | Y | Indica se o tipo de unidade e Ambulatorio, Laboratorio ou Imagem. |

---

## DBAMV.PERM_ACRES_DESCONTO
> Tabela de permissões para realizar acréscimos e descontos na conta do paciente.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_USUARIO | VARCHAR2 | N | Código do usuário |
| 2 | CD_MULTI_EMPRESA | NUMBER | N | Código da empresa |
| 3 | CD_CONVENIO | NUMBER | N | Código do convênio |
| 4 | CD_CON_PLA | NUMBER | N | Código do plano |
| 5 | TP_PERMISSAO | VARCHAR2 | N | Tipo de Permissão ('A' = Acréscimo, 'D' = Desconto) |

---

## DBAMV.PESSOA_BIOMETRIA
> Tabela que armazena os códigos de identificação de Digital do Prestador e do Paciente

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PESSOA_BIOMETRIA | NUMBER | N | Código de Identificação da Biometria |
| 2 | CD_PACIENTE | NUMBER | Y | Código de Identificação do Paciente |
| 3 | CD_USUARIO | VARCHAR2 | Y | Código de Identificação do Usuario |

---

## DBAMV.PLAUDOS_LOG_EXCLUSAO
> Tabela que guardará informações relacionado a exclusão do paciente no portal.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PLAUDOS_LOG_EXCLUSAO | NUMBER | N | PK Da tabela de log de exclusão do Portal de Laudos. |
| 2 | CD_USUARIO_RESP_EXCLUSAO | NUMBER | N | Usuário administrador responsável pela exclusão do paciente no portal. |
| 3 | DS_LOGIN | VARCHAR2 | Y | Login do paciente que foi excluido do portal. |
| 4 | CD_PACIENTE | NUMBER | Y | Código do paciente associado ao login que foi excluído do portal. |
| 5 | DH_EXCLUSAO | DATE | N | Campo que guardará a senha do usuário do Portal de Laudos. |
| 6 | DS_MOTIVO_DESVINCULO | VARCHAR2 | Y | Campo que guardará o motivo de ter desvinculado o paciente do portal. |

---

## DBAMV.POSICAO_PACIENTE_AMBULANCIA
> Tabela para armazenar posicao paciente dentro da ambulância.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_POSICAO_PACIENTE_AMBULANCIA | NUMBER | N | Código único que identifica a posicao do paciente dentro da ambulância. |
| 2 | CD_MULTI_EMPRESA | NUMBER | Y | Código da multi-empresa |
| 3 | DS_POSICAO_PACIENTE_AMBULANCIA | VARCHAR2 | Y | Descrição da posicao do paciente dentro da ambulância. |
| 4 | SN_ATIVO | VARCHAR2 | Y | Indica se o registro está ativo para novos cadastros da posicao paciente dentro da ambulância. S ... |

---

## DBAMV.PRESTADOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRESTADOR | NUMBER | N | Codigo do Prestador.  Obs: pda 402899 - tamanho aumentado para 12. |
| 2 | CD_BANCO | NUMBER | Y |  |
| 3 | CD_CONSELHO | NUMBER | N |  |
| 4 | CD_TIP_PRESTA | NUMBER | N |  |
| 5 | NR_CPF_CGC | VARCHAR2 | Y |  |
| 6 | TP_SITUACAO | VARCHAR2 | N |  |
| 7 | NM_PRESTADOR | VARCHAR2 | N |  |
| 8 | NM_MNEMONICO | VARCHAR2 | N |  |
| 9 | TP_CORPO_CLINICO | VARCHAR2 | N |  |
| 10 | CD_PRESTADOR_MUITOS | NUMBER | Y |  |
| 11 | DS_EMAIL | VARCHAR2 | Y |  |
| 12 | DS_ENDERECO | VARCHAR2 | Y |  |
| 13 | DS_CODIGO_CONSELHO | VARCHAR2 | Y |  |
| 14 | DS_FACULDADE | VARCHAR2 | Y |  |
| 15 | DT_CADASTRO | DATE | Y | Data e hora que o usuario realizou o cadastro de prestador |
| 16 | DT_NASCIMENTO | DATE | Y |  |
| 17 | NR_FONE_COMERCIAL | VARCHAR2 | Y |  |
| 18 | NR_FONE_CONTATO | VARCHAR2 | Y |  |
| 19 | NR_CEP | VARCHAR2 | Y |  |
| 20 | NR_AGENCIA | VARCHAR2 | Y |  |
| 21 | NM_AGENCIA | VARCHAR2 | Y |  |
| 22 | NR_CONTA | VARCHAR2 | Y |  |
| 23 | CD_CIDADE | NUMBER | Y |  |
| 24 | SN_REPASSE_FATURA_AMB_SUS | VARCHAR2 | N |  |
| 25 | SN_ANESTESISTA | VARCHAR2 | N |  |
| 26 | SN_AUXILIAR | VARCHAR2 | N |  |
| 27 | SN_CIRURGIAO | VARCHAR2 | N |  |
| 28 | SN_OUTROS | VARCHAR2 | N |  |
| 29 | CD_REG_REPASSE | NUMBER | Y |  |
| 30 | CD_PRESTADOR_REPASSE | NUMBER | Y |  |
| 31 | DS_OBS | VARCHAR2 | Y |  |
| 32 | TP_VINCULO | VARCHAR2 | Y |  |
| 33 | DS_BAIRRO | VARCHAR2 | Y |  |
| 34 | NR_INSS | NUMBER | Y |  |
| 35 | NR_CCM | NUMBER | Y |  |
| 36 | CD_REG_REPASSE_SIA | NUMBER | Y |  |
| 37 | DS_COMPLEMENTO | VARCHAR2 | Y |  |
| 38 | NR_DOCUMENTO | VARCHAR2 | Y |  |
| 39 | DS_ENDERECO_COMERCIAL | VARCHAR2 | Y |  |
| 40 | DS_BAIRRO_COMERCIAL | VARCHAR2 | Y |  |
| 41 | CD_CIDADE_COMERCIAL | NUMBER | Y |  |
| 42 | DS_COMPLEMENTO_COMERCIAL | VARCHAR2 | Y |  |
| 43 | DS_CEP_COMERCIAL | VARCHAR2 | Y |  |
| 44 | FOTO | LONG RAW | Y |  |
| 45 | SN_ATUANTE | VARCHAR2 | N |  |
| 46 | TP_DOCUMENTACAO | VARCHAR2 | Y |  |
| 47 | DS_ATRIBUTO1 | VARCHAR2 | Y |  |
| 48 | SN_ALT_DADOS_ORA_APP | VARCHAR2 | N |  |
| 49 | NR_PISPASEP | NUMBER | Y |  |
| 50 | INSCR_AUTONOMO | NUMBER | Y |  |
| 51 | NM_MAE | VARCHAR2 | Y |  |
| 52 | NM_PAI | VARCHAR2 | Y |  |
| 53 | CD_FORNECEDOR | NUMBER | Y |  |
| 54 | CD_MULTI_EMPRESA | NUMBER | Y |  |
| 55 | CD_INDICE | NUMBER | Y |  |
| 56 | DS_SENHA_PRE_INTERNACAO | VARCHAR2 | Y |  |
| 57 | SN_ADMINISTRADOR_PRESTADOR | VARCHAR2 | Y |  |
| 58 | DS_CARGO | VARCHAR2 | Y |  |
| 59 | CD_PRESTADOR_INTEGRA | VARCHAR2 | Y |  |
| 60 | DT_INTEGRA | DATE | Y |  |
| 61 | CD_SEQ_INTEGRA | NUMBER | Y |  |
| 62 | DT_INATIVACAO | DATE | Y |  |
| 63 | CD_IDENTIFICACAO | NUMBER | Y |  |
| 64 | NR_CNS | VARCHAR2 | Y |  |
| 65 | DT_CAD_COOPERATIVA | DATE | Y |  |
| 66 | NR_MATRICULA_COOPERATIVA | VARCHAR2 | Y |  |
| 67 | CD_REG_REPASSE_SIH | NUMBER | Y |  |
| 68 | TP_CAT_PRE_SUS | NUMBER | Y |  |
| 69 | NR_CAT_PRE_SUS | VARCHAR2 | Y |  |
| 70 | SN_CESSAO_CREDITO | VARCHAR2 | N |  |
| 71 | SN_AUDITOR_SUS | VARCHAR2 | N | Define se o prestador e auditor SUS. |
| 72 | DT_INICIO_ATUACAO | DATE | Y | Data do inicio da atuac?o do prestador na instituic?o |
| 73 | CD_SETOR | NUMBER | Y | Setor onde trabalha o prestador |
| 74 | TP_PRESTADOR | VARCHAR2 | N |  |
| 75 | CD_TIPO_LOGRADOURO | NUMBER | Y | Codigo do tipo de logradouro do prestador |
| 76 | NR_ENDERECO | VARCHAR2 | Y | Numero do endereco do prestador |
| 77 | CD_TIPO_LOGRADOURO_COMERCIAL | NUMBER | Y | Codigo do tipo de logradouro do endereco comercial do prestador |
| 78 | NR_ENDERECO_COMERCIAL | VARCHAR2 | Y | Numero do endereco comercial do prestador |
| 79 | NR_CNES | VARCHAR2 | Y | Numero do CNES do prestador |
| 80 | CD_CBOS | VARCHAR2 | Y | Codigo CBO-S do prestador |
| 81 | TP_ACESSO_DIAGNOSTICO | VARCHAR2 | Y | Define qual o caminho para chegar ao diagnostico |
| 82 | DS_ORIENTACAO_AGENDAMENTO | VARCHAR2 | Y | Descric?o das orientac?es para Agendamento (Central de Marcac?o). |
| 83 | SN_MOSTRA_ENDERECO | VARCHAR2 | N | Permite a visualizac?o do Endereco Pessoal para forma de contato do Prestador |
| 84 | SN_MOSTRA_ENDERECO_COM | VARCHAR2 | N | Permite a visualizac?o do Endereco Comercial para forma de contato do Prestador |
| 85 | TP_REMESSA | VARCHAR2 | N | Tipo da Remessa: T-Todas; S-Pagas; C-Conciliadas; Null-N?o definido |
| 86 | DS_SIGLA_AGENDAMENTO | VARCHAR2 | Y | Sigla exibida ao lado dos horarios no agendamento SCMA. |
| 87 | DV_AGENCIA | VARCHAR2 | Y | Digito verificador da agencia |
| 88 | DV_CONTA_CORRENTE | VARCHAR2 | Y | Digito verificador da conta corrente |
| 89 | NR_PONTUACAO_OCORRENCIA | NUMBER | Y | Acumulado da pontuac?o decorrente das ocorrencias medicas |
| 90 | CD_SITUACAO_FAMILIAR | NUMBER | Y | Codigo da situac?o familiar do prestador. |
| 91 | TP_SEXO | VARCHAR2 | Y | Sexo do Prestador |
| 92 | TP_COR | VARCHAR2 | Y | Raca / Cor do Prestador |
| 93 | TP_CERTIDAO | VARCHAR2 | Y | Tipo de registro do prestador |
| 94 | DS_OM_IDENTIDADE | VARCHAR2 | Y | org?o emissor da identidade |
| 95 | CD_CIDADANIA | NUMBER | Y | Codigo da cidadania do prestador |
| 96 | CD_GRAU_INS | NUMBER | Y | Grau de instruc?o do prestador |
| 97 | DT_CADASTRO_MANUAL | DATE | Y | Data e hora informada pelo usuario no cadastro do prestador |
| 98 | CD_NATURALIDADE | NUMBER | Y | Indica a naturalidade (Cidade de Nascimento) do prestador |
| 99 | CD_UF_ORGAO_EMISSOR | VARCHAR2 | Y | uf para o org?o emissor |
| 100 | DT_EXPEDICAO_ORGAO_EMISSOR | DATE | Y | data expedic?o orgao emissor |
| 101 | DT_INICIO_CONTRATO | DATE | Y | Indica a data de inicio do contrato do prestador |
| 102 | DT_FINAL_CONTRATO | DATE | Y | Indica a data de final do contrato do prestador |
| 103 | CD_IDENTIFICADOR_PESSOA | VARCHAR2 | Y | CGC/CPF do Prestador |
| 104 | CD_ENDERECO_POSTA | VARCHAR2 | Y | Codigo do CEP |
| 105 | CD_ENDERECO_POSTA_COM | VARCHAR2 | Y | Codigo do CEP Endereco Comercial |
| 106 | CD_INSTITUICAO_EXTERNA | VARCHAR2 | Y | Instituic?o Externa |
| 107 | CD_ATIVIDADE_PRINCIPAL | VARCHAR2 | Y | Atividade Principal |
| 108 | CD_AREA_ATUACAO | VARCHAR2 | Y | Area de Trabalho |
| 109 | CD_CLUE_CONTRATO_NOMINA | VARCHAR2 | Y | CLUE Nomina |
| 110 | CD_CLUE_CONTRATO_REAL | VARCHAR2 | Y | CLUE Real |
| 111 | CD_JORNADA | NUMBER | Y | Jornada de Trabalho |
| 112 | SN_RESIDENCIA_MEDICA | VARCHAR2 | Y | Residencia Medica |
| 113 | CD_ANO_RESIDENCIA | NUMBER | Y | Anos de Residencia |
| 114 | CD_ESPECIALID_RESIDENTE | NUMBER | Y | Especialidade da Residencia |
| 115 | TIPO_MODALIDADE_CONTRATO | NUMBER | Y | Tipo de modalidade de Contrato |
| 116 | SN_FIEL | VARCHAR2 | Y | Conta com Fiel |
| 117 | SN_VIGENCIA_FIEL | VARCHAR2 | Y | Vigencia Fiel |
| 118 | VL_SALARIO | NUMBER | Y | Valor do Salario |
| 119 | TP_CONTRATO_EXTERNO | NUMBER | Y |  |
| 120 | CD_ESTADO_FORMACAO | NUMBER | Y | Estado de formação (Entidad Federativa de la plaza) |
| 121 | DS_ORIENTACAO_AGENDAMENTO_WEB | VARCHAR2 | Y | Descrição das orientações para Agendamento WEB(Central de Marcação). |
| 122 | NR_PONTUACAO | NUMBER | Y | Pontuação do prestador para atenção primária |
| 123 | SN_LIBERA_ACESSO_LISTA_PEP | VARCHAR2 | N |  |
| 124 | NM_SOCIAL_PACIENTE | VARCHAR2 | Y | Nome social do prestador |
| 125 | DT_NATURALIZACAO | DATE | Y | Data de naturalização do prestador no Brasil. |
| 126 | DS_PASSAPORTE | VARCHAR2 | Y | Número do passaporte do prestador. |
| 127 | CD_PAIS_EMISSAO_PAS | NUMBER | Y | Indica o país de emissão do passaporte. |
| 128 | DT_EMISSAO_PAS | DATE | Y | Data de emissão do passaporte do prestador. |
| 129 | DT_VALIDADE_PAS | DATE | Y | Data de validade do passaporte do prestador. |
| 130 | CD_IDENTIDADE_GENERO | NUMBER | Y | Código da identidade de gênero |
| 131 | SN_AUSENCIA_MAE | VARCHAR2 | N | Habilitar registro mãe ausente |

---

## DBAMV.PRESTADORES_IT_GUIA
> Prestadores nos Itens da Guia. A tabela sera utilizada para informar no item da guia os prestadores relacionados ao mesmo.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GUIA | NUMBER | N | Codigo da Guia. |
| 2 | CD_IT_GUIA | NUMBER | N | Codigo unico do Itens da Guia. |
| 3 | CD_ATI_MED | VARCHAR2 | N | Codigo da Atividade Medica do Prestador no Procedimento do Item da Guia. |
| 4 | CD_PRESTADOR | NUMBER | N | Codigo do Prestador para a Atividade Medica do Procedimento do Item da Guia. |
| 5 | DT_EVENTO | DATE | Y | Data da realizac?o do Procedimento do item da Guia |
| 6 | DT_EMISSAO_PROTOCOLO | DATE | Y | Data da emiss?o do Protocolo de Guias do Medico. |
| 7 | NM_USU_PROTOCOLO | VARCHAR2 | Y | Nome do Usuario que emitiu (imprimiu) o protocolo de guias do Prestador. |
| 8 | DT_CANCELOU_PROT | DATE | Y | Data de cancelamento do protocolo de guias |
| 9 | NM_USU_CANCELOU | VARCHAR2 | Y | Usuario que realizou o cancelamento do protocolo de guias |

---

## DBAMV.PRESTADOR_ASSINATURA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRESTADOR | NUMBER | N |  |
| 2 | ASSINATURA | LONG RAW | Y |  |
| 3 | ASSINATURA_TISS | BLOB | Y | Indica a assinatura digital do prestador para as guias do tis |

---

## DBAMV.PRESTADOR_AVISO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AVISO_CIRURGIA | NUMBER | N |  |
| 2 | CD_ATI_MED | VARCHAR2 | N |  |
| 3 | CD_PRESTADOR | NUMBER | N |  |
| 4 | TP_PAGAMENTO | VARCHAR2 | Y | Tipo de pagamento. P - Produção, C - Convênio, F - Hospital, R - Reembolso, N - Não faturado. |
| 5 | CD_CIRURGIA | NUMBER | N |  |
| 6 | NM_PRESTADOR | VARCHAR2 | Y |  |
| 7 | SN_PRINCIPAL | VARCHAR2 | N |  |
| 8 | CD_CIRURGIA_AVISO | NUMBER | N |  |
| 9 | SN_ANEST_PRINCIPAL | VARCHAR2 | Y | Usado na O_AGENDA para preencher o campo A_SIMPLES.CD_PRESTADOR_ANESTESISTA e distingui-lo dos an... |
| 10 | TP_PAGAMENTO_SUGERIDO | VARCHAR2 | Y | Tipo de pagamento sugerido. P - Produção, C - Convênio, F - Hospital, R - Reembolso, N - Não fatu... |

---

## DBAMV.PRESTADOR_CBO
> Cadastro de CBOs validos para o prestador SUS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da empresa SUS |
| 2 | CD_CBO | VARCHAR2 | N | Codigo do CBO disponivel na empresa SUS |
| 3 | CD_PRESTADOR | NUMBER | N | Codigo do Prestador SUS |
| 4 | SN_ATIVO | VARCHAR2 | N | Indica se o prestador ainda executar o CBO SUS |
| 5 | TP_CBO_PADRAO_IMPORTACAO | VARCHAR2 | N | Indica qual o CBO do prestador que sera o padr?o para importac?o dos modulos FSCC, PSSD e PSDI. |
| 6 | SN_REGRA_VINCULO | VARCHAR2 | N | Define se faz parte da regra de vinculac?o do profissional com o CNES |
| 7 | CD_VINCULO_CNES | VARCHAR2 | N | Codigo do vinculo do prestador conforme regra do CNES |
| 8 | CD_TIPO_VINCULO_CNES | VARCHAR2 | N | Tipo do Vinculo do prestador |
| 9 | CD_SUBTIPO_VINCULO_CNES | VARCHAR2 | N | Subtipo do Vinculo do prestador |
| 10 | SN_CESSAO_CREDITO | VARCHAR2 | N | Define se o prestador tem o credito direto na conta |
| 11 | QT_HORAS_SIA | NUMBER | Y | Carga horaria do prestador no estabelecimento para o Convenio SIA |
| 12 | QT_HORAS_SIH | NUMBER | Y | Carga horaria do prestador no estabelecimento para o Convenio SIH |
| 13 | QT_HORAS_OUTROS | NUMBER | Y | Carga horaria do prestador no estabelecimento para outros tipo de convenio n?o SUS |
| 14 | TP_PADRAO_FATURAMENTO | VARCHAR2 | Y | Padr?o de lancamento do SIA/SIH |
| 15 | SN_PADRAO_INTEGRACAO | VARCHAR2 | Y | Usado para o FFIS, quando o prestador cai de integrac?o, ele precisa de um padr?o de vinculo |
| 16 | DT_VALIDADE_INICIAL | DATE | N | Validade final da regra de CBO/Prestador |
| 17 | DT_VALIDADE_FINAL | DATE | Y |  |
| 18 | CD_ORGAO_EMISSOR | VARCHAR2 | Y | Codigo do org?o emissor do conselho |
| 19 | DS_CONSELHO | VARCHAR2 | Y | Codigo do conselho do prestador |

---

## DBAMV.PRESTADOR_CIRURGIA
> Tabela que armazena os tempos individuais dos prestadores para a execuc?o de determinado procedimento cirurgico.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CIRURGIA | NUMBER | N | Codigo da Cirurgia |
| 2 | CD_PRESTADOR | NUMBER | N | Codigo do Prestador |
| 3 | QT_TEMPO_REALIZACAO | DATE | Y | Tempo que o prestador leva para realizar o procedimento cirurgico cadastrado. |

---

## DBAMV.PRESTADOR_CONVENIO_LIBERADO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRESTADOR | NUMBER | N | Prestador liberado para o convenio |
| 2 | CD_CONVENIO | NUMBER | N | Convenio que esta liberado para o Prestador cadastrado |

---

## DBAMV.PRESTADOR_DATASUS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_PRESTADOR | VARCHAR2 | N |  |
| 2 | DS_PRESTADOR | VARCHAR2 | Y |  |
| 3 | CRM | VARCHAR2 | Y |  |

---

## DBAMV.PRESTADOR_DE_PARA
> Tabela de Prestador Mv para Prestador Santa Casa de Santos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRESTADOR_MV | NUMBER | N | Codigo do Prestador MV |
| 2 | DS_PRESTADOR_MV | VARCHAR2 | Y | Descric?o do Prestador MV |
| 3 | CD_PRESTADOR_DE_PARA | NUMBER | Y | Codigo do Prestador do De-Para |

---

## DBAMV.PRESTADOR_DOCUMENTO
> Prestador Documentos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRESTADOR_DOCUMENTO | NUMBER | N | Codigo do Prestador Documento |
| 2 | DS_PRESTADOR_DOCUMENTO | VARCHAR2 | N | Descric?o do Prestador Documento |
| 3 | CD_PRESTADOR | NUMBER | N | Descric?o do Prestador |
| 4 | DS_NOME_DOCUMENTO | VARCHAR2 | Y | Nome do Arquivo Documento do Prestador |
| 5 | DS_NOME_DOCUMENTO_FISICO | VARCHAR2 | Y | Nome do Arquivo Documento fisico do Prestador |
| 6 | LO_DOCUMENTO_ANEXO | BLOB | Y | Anexo Documento do Prestador |

---

## DBAMV.PRESTADOR_EXTERNO
> Cadastro de Prestadores Externos ao Hospital

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRES_EXT | NUMBER | N | Codigo do prestador externo |
| 2 | NM_PRES_EXT | VARCHAR2 | N | Nome do prestador externo |
| 3 | NR_CPF_CGC | VARCHAR2 | Y | CPF / CGC do prestador externo |
| 4 | CD_CONSELHO | NUMBER | Y | Codigo do conselho regional do prestador externo |
| 5 | NR_CONSELHO | VARCHAR2 | N | Numero do conselho regional do prestador externo |
| 6 | CD_CBOS | VARCHAR2 | Y | Codigo do CBOS do prestador externo |
| 7 | NM_HOSPITAL | VARCHAR2 | Y | Nome do Hospital, no caso de pessoa juridica |
| 8 | NR_CGC_HOSPITAL | VARCHAR2 | Y | Numero do CGC do Hospital |
| 9 | NR_CNES | VARCHAR2 | Y | Numero do CNES do hospital externo |
| 10 | CD_ESPECIALID | NUMBER | Y | Codigo da Especialidade |
| 11 | SN_ATUANTE | VARCHAR2 | Y | Indentificacao do Prestador se esta atuante ou N?o no Conselho |
| 12 | DT_INSCRICAO | DATE | Y | Data de Inscricao do Prestador no Conselho |
| 13 | DT_INATIVACAO | DATE | Y | Data de desvinculo do Prestador no Conselho |
| 14 | DS_ORIGEM_CADASTRO | VARCHAR2 | Y | Origem do registro de Importac?o |
| 15 | NR_CNS | VARCHAR2 | Y | Número de cartão nacional de saúde do prestador externo |

---

## DBAMV.PRESTADOR_FOTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRESTADOR | NUMBER | N |  |
| 2 | FOTO | LONG RAW | Y |  |

---

## DBAMV.PRESTADOR_GRAU_INS
> Graus de Instruc?o do Prestador

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRESTADOR | NUMBER | N | Codigo do Prestador |
| 2 | CD_GRAU_INS | NUMBER | N | Codigo do Grau de Instruc?o |
| 3 | DS_CEDULA_PROFISSIONAL | VARCHAR2 | Y | Numero da Cedula Profissional |
| 4 | SN_TITULO_PROFISSIONAL | VARCHAR2 | Y | Titulo Profissional |
| 5 | SN_PRINCIPAL | VARCHAR2 | Y | Grau de Instruc?o Principal |
| 6 | DS_OBS | VARCHAR2 | Y | Observac?o |

---

## DBAMV.PRESTADOR_GRUPO_REPASSE
> Tabela para cadastramento de excec?es de grupos de repasse para pagamento por prestador e empresa

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRESTADOR | NUMBER | N | Codigo do Prestador para Excec?o de Grupo de Repasse |
| 2 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da Empresa para Excec?o de Grupo de Repasse |
| 3 | CD_PRESTADOR_REPASSE | NUMBER | N | Codigo do Grupo de Repasse utilizado na regra de excec?o de Grupo de Repasse |
| 4 | CD_CONVENIO | NUMBER | Y | Codigo do Convenio utilizado como filtro na regra de excec?o de Grupo de Repasse |
| 5 | CD_GRU_PRO | NUMBER | Y | Codigo do Grupo de Procedimento utilizado como filtro na regra de excec?o de Grupo de Repasse |
| 6 | CD_PRO_FAT | VARCHAR2 | Y | Codigo do Procedimento utilizado como filtro na regra de excec?o de Grupo de Repasse |
| 7 | CD_ORI_ATE | NUMBER | Y | Codigo da Origem do Atendimento utilizada como filtro na regra de excec?o de Grupo de Repasse |
| 8 | CD_SETOR | NUMBER | Y | Codigo do Setor utilizado como filtro na regra de excec?o de Grupo de Repasse |
| 9 | CD_ATI_MED | VARCHAR2 | Y | Codigo da Atividade Medica utilizada como filtro na regra de excec?o de Grupo de Repasse |
| 10 | CD_SERVICO | NUMBER | Y | Codigo do Servico do Atendimento utilizado como filtro na regra de excec?o de Grupo de Repasse |
| 11 | TP_ATENDIMENTO | VARCHAR2 | N | Codigo do Tipo de Atendimento utilizado como filtro na regra de excec?o de Grupo de Repasse |
| 12 | SN_SEGUE_CIRURGIA_PRINCIPAL | VARCHAR2 | N |  |
| 13 | CD_SSM | VARCHAR2 | Y | Codigo do Procedimento SIA utilizado como filtro na regra de excec?o de Grupo de Repasse |
| 14 | CD_PRO_FAT_SUS | VARCHAR2 | Y | Codigo do Procedimento SIH utilizado como filtro na regra de excec?o de Grupo de Repasse |
| 15 | CD_SER_DIS | NUMBER | Y | Codigo do Servico do Atendimento de Ambulatorio utilizado como filtro na regra de excec?o de Grup... |
| 16 | CD_GRU_REP | NUMBER | N | Codigo do Horario de aplicac?o do Grupo de Repasse |
| 17 | CD_PROCEDIMENTO | VARCHAR2 | Y | Codigo do procedimento SUS de acordo com portaria 321 |
| 18 | CD_GRUPO_PROCEDIMENTO | VARCHAR2 | Y | Codigo do grupo de procedimentos SUS modelo P321 |
| 19 | CD_SUB_GRUPO_PROCEDIMENTO | VARCHAR2 | Y | Codigo do SubGrupo de procedimentos SUS modelo P321 |
| 20 | CD_ORGANIZA_GRUPO_PROCEDIMENTO | VARCHAR2 | Y | Codigo da Organizac?o dos Grupos  de procedimentos SUS modelo P321 |
| 21 | TP_EXCESSAO | VARCHAR2 | Y | Tipo da regra de Excessao de repasse |

---

## DBAMV.PRESTADOR_INSTITUICAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRESTADOR | NUMBER | N |  |
| 2 | CD_LOC_TRANS | NUMBER | N |  |
| 3 | DT_INICIO | DATE | N |  |
| 4 | DT_FIM | DATE | N |  |

---

## DBAMV.PRESTADOR_LIBERA_ATD_CAS_CONF
> Prestadores com privilegio de acesso a informac?es confidenciais de consulta de outros prestadores

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRESTADOR | NUMBER | N | Codigo do Prestador que concede o privilegio de acesso de suas informac?es |
| 2 | CD_PRESTADOR_LIBERADO | NUMBER | N | Codigo do Prestador que recebe privilegio de acesso |
| 3 | DT_VALIDADE | DATE | Y |  |

---

## DBAMV.PRESTADOR_LIMITE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRESTADOR | NUMBER | N |  |
| 2 | DT_LIMITE | DATE | N |  |
| 3 | CD_TURNO | NUMBER | N |  |
| 4 | QT_LIMITE_PRESTADOR | NUMBER | Y |  |
| 5 | QT_LIMITE_DATA | NUMBER | Y |  |
| 6 | QT_RECIBO | NUMBER | Y |  |

---

## DBAMV.PRESTADOR_MEIO_MAG
> Tabela para de-para entre informac?es de prestadores e pacientes no meio-magnetico

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_APR_CONTA_MEIO_MAG | NUMBER | N | Codigo da forma de apresentac?o |
| 2 | CD_PRESTADOR_ENTRADA | VARCHAR2 | N | Codigo de entrada do de-para |
| 3 | CD_PRESTADOR_SAIDA | VARCHAR2 | N | Codigo de saida do de-para |

---

## DBAMV.PRESTADOR_ONCOLOGICO
> Tabela de cadastreo do prestador oncologico

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRESTADOR_ONCOLOGICO | NUMBER | N |  |
| 2 | CD_PRESTADOR | NUMBER | N | CHAVE DO PRESTADOR ONCOLOGICO |
| 3 | SN_SEGUNDA | VARCHAR2 | N | SE ATENDE NA SEGUNDA-FEIRA |
| 4 | SN_TERCA | VARCHAR2 | N | SE ATENDE NA TERÇA-FEIRA |
| 5 | SN_QUARTA | VARCHAR2 | N | SE ATENDE NA QUARTA-FEIRA |
| 6 | SN_QUINTA | VARCHAR2 | N | SE ATENDE NA QUINTA-FEIRA |
| 7 | SN_SEXTA | VARCHAR2 | N | SE ATENDE NA SEXTA-FEIRA |
| 8 | SN_SABADO | VARCHAR2 | N | SE ATENDE NO SABADO |
| 9 | SN_DOMINGO | VARCHAR2 | N | SE ATENDE NO DOMINGO |
| 10 | DT_TEMPO_PREPARO | DATE | Y | TEMPO DE PREPARO PADRÃO |
| 11 | CD_SETOR | NUMBER | N | Setor que o prestador Atua. |
| 12 | CD_UNIDADE_ATENDIMENTO | NUMBER | N | Unidade de Atendimento  que o prestador Atua. |
| 13 | HR_INICIO_SEGUNDA | DATE | Y | HORÁRIO DO INÍCIO DO ATENDIMENTO NA SEGUNDA-FEIRA |
| 14 | HR_FIM_SEGUNDA | DATE | Y | HORÁRIO DO FIM DO ATENDIMENTO NA SEGUNDA-FEIRA |
| 15 | HR_INICIO_TERCA | DATE | Y | HORÁRIO DO INÍCIO DO ATENDIMENTO NA TERÇA-FEIRA |
| 16 | HR_FIM_TERCA | DATE | Y | HORÁRIO DO FIM DO ATENDIMENTO NA TERÇA-FEIRA |
| 17 | HR_INICIO_QUARTA | DATE | Y | HORÁRIO DO INÍCIO DO ATENDIMENTO NA QUARTA-FEIRA |
| 18 | HR_FIM_QUARTA | DATE | Y | HORÁRIO DO FIM DO ATENDIMENTO NA QUARTA-FEIRA |
| 19 | HR_INICIO_QUINTA | DATE | Y | HORÁRIO DO INÍCIO DO ATENDIMENTO NA QUINTA-FEIRA |
| 20 | HR_FIM_QUINTA | DATE | Y | HORÁRIO DO FIM DO ATENDIMENTO NA QUINTA-FEIRA |
| 21 | HR_INICIO_SEXTA | DATE | Y | HORÁRIO DO INÍCIO DO ATENDIMENTO NA SEXTA-FEIRA |
| 22 | HR_FIM_SEXTA | DATE | Y | HORÁRIO DO FIM DO ATENDIMENTO NA SEXTA-FEIRA |
| 23 | HR_INICIO_SABADO | DATE | Y | HORÁRIO DO INÍCIO DO ATENDIMENTO NO SÁBADO |
| 24 | HR_FIM_SABADO | DATE | Y | HORÁRIO DO FIM DO ATENDIMENTO NA SABADO |
| 25 | HR_INICIO_DOMINGO | DATE | Y | HORÁRIO DO INÍCIO DO ATENDIMENTO NO DOMINGO |
| 26 | HR_FIM_DOMINGO | DATE | Y | HORÁRIO DO FIM DO ATENDIMENTO NO DOMINGO |

---

## DBAMV.PRESTADOR_PERFIL_AGENDAMENTO
> Cadastro de Prestador / Perfis de Agendamento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MULTI_EMPRESA | NUMBER | N | Código da Empresa |
| 2 | CD_PERFIL_AGENDAMENTO | NUMBER | N | Código do perfil de Agendamento |
| 3 | CD_PRESTADOR | NUMBER | N | Código do Prestador |
| 4 | DH_CADASTRO | DATE | N | Data/Hora de Cadastro do Registro |
| 5 | CD_USUARIO_CADASTRO | VARCHAR2 | N | Código do Usuário do Registro |

---

## DBAMV.PRESTADOR_PREFERENCIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRESTADOR | VARCHAR2 | N |  |
| 2 | CD_PREFERENCIA | NUMBER | N |  |
| 3 | CD_IT_PREFERENCIA | NUMBER | N |  |

---

## DBAMV.PRESTADOR_REFERENCIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRESTADOR | NUMBER | N |  |
| 2 | CD_LOC_TRANS | NUMBER | N |  |
| 3 | NM_REFERENCIA | VARCHAR2 | N |  |

---

## DBAMV.PRESTADOR_SANGUE_SUS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 2 | CD_PRESTADOR | NUMBER | N |  |
| 3 | CD_CONVENIO | NUMBER | N |  |

---

## DBAMV.PRESTADOR_SERVICOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRESTADOR | NUMBER | N |  |
| 2 | CD_SERVICO | NUMBER | N |  |
| 3 | CD_EXAME_FISICO | NUMBER | Y | codigo do exame fisico |

---

## DBAMV.PRESTADOR_SETOR_BENEFICIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRESTADOR | NUMBER | N | CODIGO DO PRESTADOR. |
| 2 | CD_SETOR | NUMBER | N | CODIGO DO SETOR. |

---

## DBAMV.PRESTADOR_SUS_CNS
> CNS Prestador SUS Vigência

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRESTADOR | NUMBER | N | Código do prestador |
| 2 | NR_CNS | VARCHAR2 | N | Numero do Cartão nacional de saúde |
| 3 | DT_VALIDADE_INICIAL | DATE | N | Data inicial da virgência |
| 4 | DT_VALIDADE_FINAL | DATE | Y | Data Final da virgência |

---

## DBAMV.PRESTADOR_TIPO_VINCULO
> Tabela de criac?o do tipo de vinculo por empresa

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIPO_VINCULO | NUMBER | N | codigo tipo de vinculo |
| 2 | CD_MULTI_EMPRESA | NUMBER | N | codigo multi empresa |
| 3 | TP_VINCULO | VARCHAR2 | N | tipo de vinculo |
| 4 | CD_PRESTADOR | NUMBER | N | codigo do prestador |
| 5 | TP_VINCULO_CONV | VARCHAR2 | Y | Tipo de vínculo do prestador com o convênio. |

---

## DBAMV.PRESTADOR_TIP_COMUN

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRESTADOR | NUMBER | N |  |
| 2 | CD_TIP_COMUN | NUMBER | N |  |
| 3 | DS_TIP_COMUN_PREST | VARCHAR2 | Y |  |
| 4 | SN_MOSTRA_TIP_COMUN | VARCHAR2 | N | Permite a visualizac?o do Contato do Prestador para forma de contato do Prestador |
| 5 | NR_DDI_CELULAR | VARCHAR2 | Y | Numero DDI do celular |
| 6 | NR_DDD_CELULAR | VARCHAR2 | Y | Numero DDD do celular |
| 7 | SN_RECEBE_NOTIFIC_LAB | VARCHAR2 | Y | Recebe Notificac?o do Laboratorio |

---

## DBAMV.PRESTADOR_UC

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRESTADOR_UC | NUMBER | N |  |
| 2 | CD_PRESTADOR_MV | NUMBER | N |  |

---

## DBAMV.PRESTADOR_UNIDADE_INTERNACAO
> Prestador por Unidade de Internação

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MULTI_EMPRESA | NUMBER | N | Código da Empresa |
| 2 | CD_UNID_INT | NUMBER | N | Código da Unidade de Internação |
| 3 | CD_PRESTADOR | NUMBER | N | Código do Prestador |
| 4 | CD_USUARIO | VARCHAR2 | N | Código do usuário de login do prestador |

---

## DBAMV.PRESTADOR_VINCULO
> Tabela de vinculos do Prestador provisorio

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRESTADOR_VINCULO | NUMBER | N | Codigo do vinculo |
| 2 | CD_PRESTADOR | NUMBER | N | Codido do prestador relacionado a vinculo |
| 3 | DT_INICIO_VINCULO | DATE | N | Data de inicio da vigencia do vinculo |
| 4 | DT_TERMINO_VINCULO | DATE | N | Data de Termino da vigencia do vinculo |
| 5 | DS_OBSERVACAO | VARCHAR2 | Y | Observac?es referente ao vinculo |

---

## DBAMV.PRESTADOR_VINCULO_ATENDIME
> Tabela de vínculo do prestador provisório com o atendimento.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRESTADOR_VINCULO_ATENDIME | NUMBER | N | Código sequencial do vínculo com o atendimento. |
| 2 | CD_PRESTADOR_VINCULO | NUMBER | Y | Código sequencial do vínculo. |
| 3 | CD_ATENDIMENTO | NUMBER | Y | Código do atendimento. |

---

## DBAMV.PRESTADOR_VINCULO_AVI_CIR
> Tabela de vínculo do prestador provisório com o aviso de cirurgia.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRESTADOR_VINCULO_AVI_CIR | NUMBER | N | Código sequencial do vínculo com o aviso de cirurgia. |
| 2 | CD_PRESTADOR_VINCULO | NUMBER | Y | Código sequencial do vínculo. |
| 3 | CD_AVISO_CIRURGIA | NUMBER | Y | Código do aviso de cirurgia. |

---

## DBAMV.PRESTADOR_VINCULO_PACIENTE
> Tabela de Pacientes relacionados aos vinculos provisorios do Prestador

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRESTADOR_VINCULO_PACIENTE | NUMBER | N | Codigo da relac?o do Paciente com o vinculo provisorio do Prestador |
| 2 | CD_PRESTADOR_VINCULO | NUMBER | N | Codido do vinculo provisorio do Prestador |
| 3 | CD_PACIENTE | NUMBER | Y | Codigo do Paciente que sera relacionado ao vinculo do Prestador |
| 4 | NM_PACIENTE | VARCHAR2 | Y | Nome do Paciente que sera relacionado ao vinculo do Prestador |
| 5 | DH_INICIO | DATE | Y | Data de início da vingência do Prestador para o paciente |
| 6 | DH_FIM | DATE | Y | Data de fim da vingência do Prestador para o paciente |
| 7 | CD_USUARIO_CADASTRO | VARCHAR2 | Y | Usuário que realizou o cadastro do vínculo do paciente |
| 8 | DH_CADASTRO | DATE | Y | Data de Cadastro do registro de vinculo do paciente |
| 9 | CD_USUARIO_MODIFICACAO | VARCHAR2 | Y | Usuário que modificiou o registro do vínculo do paciente |
| 10 | DH_MODIFICACAO | DATE | Y | Data da ultima modificação do registro de vínculo do paciente |

---

## DBAMV.PRESTADOR_VINCULO_RES_LEI
> Tabela de vínculo do prestador provisório com a pré-internação.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRESTADOR_VINCULO_RES_LEI | NUMBER | N | Código sequencial do vínculo com a pré-internação. |
| 2 | CD_PRESTADOR_VINCULO | NUMBER | Y | Código sequencial do vínculo. |
| 3 | CD_RES_LEI | NUMBER | Y | Código da pré-internação. |

---

## DBAMV.PRE_PACIENTE
> Tabela de Pré-Cadastro de Paciente

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PACIENTE | NUMBER | Y | Código do Paciente |
| 2 | CD_CIDADE | NUMBER | Y | Código da Cidade do Paciente |
| 3 | NM_PACIENTE | VARCHAR2 | N | Nome do Paciente |
| 4 | NM_SOCIAL_PACIENTE | VARCHAR2 | Y |  |
| 5 | TP_SEXO | VARCHAR2 | N | Sexo do Paciente: I = Indefinido;  M = Masculino; F = Feminino |
| 6 | TP_ESTADO_CIVIL | VARCHAR2 | Y | Tipo de estado civil: S = Solteito; C = Casado; V = Viúvo; D = Desquitado; I = Divorciado; U = Un... |
| 7 | DS_ENDERECO | VARCHAR2 | Y | Descrição do Endereço Residencial |
| 8 | DT_NASCIMENTO | DATE | Y | Data de Nascimento |
| 9 | TP_COR | VARCHAR2 | Y | Cor do Paciente |
| 10 | NM_MAE | VARCHAR2 | Y | Nome da mãe do paciente |
| 11 | CD_GRAU_INS | NUMBER | Y | Grau de Instrução do Paciente |
| 12 | CD_RELIGIAO | NUMBER | Y | Religião do Paciente |
| 13 | CD_PROFISSAO | NUMBER | Y | Profissão do Paciente |
| 14 | NR_CEP | VARCHAR2 | Y | CEP (código do endereçamento postal ) do paciente |
| 15 | NM_BAIRRO | VARCHAR2 | Y | Nome do bairro onde mora o paciente |
| 16 | NM_PAI | VARCHAR2 | Y | Nome dp Pai do paciente |
| 17 | NM_CONJUGE | VARCHAR2 | Y | Nome do Conjugue |
| 18 | TP_SANGUINEO | VARCHAR2 | Y | Tipo Sanguineo: tp_sanguineo A+, A- , B+ , B- , AB+ , AB- , O+ , O- |
| 19 | NR_CPF | VARCHAR2 | Y | Número do CPF  (cadastro de pessoa física) |
| 20 | DS_COMPLEMENTO | VARCHAR2 | Y | Complemento do Endereço Residencial |
| 21 | NR_ENDERECO | NUMBER | Y | Número do Endereço Residencial |
| 22 | NR_IDENTIDADE | VARCHAR2 | Y | Número do documento de identidade |
| 23 | DS_OM_IDENTIDADE | VARCHAR2 | Y | Órgão onde foi emitida a identidade do paciente |
| 24 | CD_NATURALIDADE | NUMBER | Y | Código da Naturalidade do Paciente |
| 25 | EMAIL | VARCHAR2 | Y | Email do Paciente |
| 26 | DT_EMISSAO_IDENTIDADE | DATE | Y | Data de Expedição do documento de Identidade |
| 27 | NR_DDI_FONE | NUMBER | Y | Prefixo da área correspondente ao número do telefone do paciente |
| 28 | NR_DDD_FONE | NUMBER | Y | Prefixo da área correspondente ao número do telefone do paciente |
| 29 | NR_DDI_CELULAR | NUMBER | Y | Prefixo da área correspondente ao número do celular do paciente |
| 30 | NR_DDD_CELULAR | NUMBER | Y | Prefixo da área correspondente ao número do celular do paciente |
| 31 | NR_DDI_FONE_COMERCIAL | NUMBER | Y | Prefixo da área correspondente ao número do telefone comercial do paciente |
| 32 | NR_DDD_FONE_COMERCIAL | NUMBER | Y | Prefixo da área correspondente ao número do telefone comercial do paciente |
| 33 | NR_CARTEIRA | VARCHAR2 | Y | Número da carteira do convênio |
| 34 | CD_CONVENIO | NUMBER | Y | Código do convênio associado ao atendimento do paciente |
| 35 | DT_VALIDADE | DATE | Y | Data de validade da carteira do convênio |
| 36 | CD_EMPRESA_CARTEIRA | NUMBER | Y | Código da Empresa (Plano empresarial) associada a carteira do convênio |
| 37 | NM_RESPONSAVEL | VARCHAR2 | Y | Nome do Responsável pelo paciente |
| 38 | NR_FONE_RESPONSAVEL | VARCHAR2 | Y | Número do Telefone do Responsável pelo paciente |
| 39 | DS_DOCUMENTO_RESPONSAVEL | VARCHAR2 | Y | Número  da Identidade do Responsável pelo paciente |
| 40 | DS_ENDERECO_RESPONSAVEL | VARCHAR2 | Y | Descrição do Endereço Residencial do Responsável pelo paciente |
| 41 | CD_CIDADE_RESPONSAVEL | NUMBER | Y | Código da Cidade do Responsável pelo paciente |
| 42 | CD_TIP_PAREN_RESPONSAVEL | NUMBER | Y | Tipo de Parentesco do Responsável pelo paciente |
| 43 | NR_CPF_RESPONSAVEL | VARCHAR2 | Y | Número do CPF  (cadastro de pessoa física) do Responsável pelo paciente |
| 44 | NM_BAIRRO_RESPONSAVEL | VARCHAR2 | Y | Nome do bairro onde mora o Responsável pelo paciente |
| 45 | DS_CONTATO_FAMILIA | VARCHAR2 | Y | Descrição do contato do Responsável pelo paciente |
| 46 | NR_ENDERECO_RESPONSAVEL | NUMBER | Y | Número do Endereço Residencial do Responsável pelo paciente |
| 47 | DS_COMPLEMENTO_RESPONSAVEL | VARCHAR2 | Y | Complemento do Endereço Residencial do Responsável pelo paciente |
| 48 | NR_CEP_RESPONSAVEL | VARCHAR2 | Y | CEP (código do endereçamento postal ) do Responsável pelo paciente |
| 49 | DH_IMPORTACAO | DATE | Y | Data e Hora da importação dos dados do pré-cadastro para o MV2000 |
| 50 | NR_FONE | VARCHAR2 | Y | Numero do telefone do paciente |
| 51 | NR_CELULAR | VARCHAR2 | Y | Numero do celular do paciente |
| 52 | NR_FONE_COMERCIAL | VARCHAR2 | Y | Numero do telefone comercial do paciente |
| 53 | CD_IDENTIFICADOR_PESSOA | VARCHAR2 | Y | Código identificar do paciente |
| 54 | CD_CNS | VARCHAR2 | Y | Coluna está em desuso |
| 55 | DT_INTEGRA | DATE | Y |  |
| 56 | NR_CNS | VARCHAR2 | Y | Número de CNS do Paciente (15 dígitos) |

---

## DBAMV.PRIORID_PACIENTE
> tabela de cadastro de prioridade de pacientes no agendamento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRIORID_PACIENTE | NUMBER | N |  |
| 2 | DS_PRIORID_PACIENTE | VARCHAR2 | Y |  |
| 3 | SN_ATIVO | VARCHAR2 | N |  |
| 4 | CD_MULTI_EMPRESA | NUMBER | Y |  |
| 5 | LO_SIMBOLO | BLOB | Y | Imagem que representa o símbolo da prioridade. |
| 6 | SN_PERMANENTE | VARCHAR2 | N | Prioridade permanente |
| 7 | TP_PRIORID_PACIENTE | VARCHAR2 | N | TIPO DA PRIORIDADE: 1 - PESSOA COM DEFICIENCIA, 2 - PESSOA IDOSA +60, 3 - PESSOA IDOSA +80, 4 - G... |

---

## DBAMV.PRIORID_PACIENTE_IT_AGEN_CTRAL
> tabela de relação do cadastro de prioridade de pacientes no agendamento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IT_AGENDA_CENTRAL | NUMBER | N |  |
| 2 | CD_PRIORID_PACIENTE | NUMBER | N |  |

---

## DBAMV.PRIORID_PACIENTE_PED_RX
> tabela de relação do cadastro de prioridade de pacientes no exame de imagem

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PED_RX | NUMBER | N |  |
| 2 | CD_PRIORID_PACIENTE | NUMBER | N |  |

---

## DBAMV.PROFISSAO
> Tabela de Profiss?es

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROFISSAO | NUMBER | N | Codigo da Profiss?o. |
| 2 | NM_PROFISSAO | VARCHAR2 | N | Descric?o da Profiss?o. |
| 3 | CD_CBO | VARCHAR2 | Y | Codigo  da profiss?o na CBO. |
| 4 | CD_CBO_BKP | VARCHAR2 | Y |  |
| 5 | TP_COBERTURA | VARCHAR2 | Y | Tipo de cobertura que a acomodação suporta. Pode ser Normal ou Supremo. |

---

## DBAMV.PROIBICAO_IDADE
> Proibição de procedimentos por Idade do paciente.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROIBICAO_IDADE | NUMBER | N | Sequence da tabela |
| 2 | CD_MULTI_EMPRESA | NUMBER | N | Código da empresa |
| 3 | CD_CONVENIO | NUMBER | N | Código do convênio |
| 4 | CD_CON_PLA | NUMBER | N | Código do plano |
| 5 | CD_PRO_FAT | VARCHAR2 | N | Código do procedimento |
| 6 | NR_IDADE_INICIAL | NUMBER | N | Idade inicial proibida |
| 7 | NR_IDADE_FINAL | NUMBER | N | Idade final proibida |

---

## DBAMV.PROTOCOLO
> Protocolos a serem definidos para tratamento do paciente de acordo com o diagnostico

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROTOCOLO | NUMBER | N | Chave Primaria |
| 2 | DS_PROTOCOLO | VARCHAR2 | N | Descric?o do protocolo |
| 3 | CD_DIAGNOSTICO | NUMBER | Y | Relacionamento com o Diagnostico |
| 4 | NR_TOT_DIA | NUMBER | N | Total de dias para tratamento do diagnostico associado a este protocolo |
| 5 | DT_INICIO | DATE | N | Data em que o protocolo devera iniciar a ser usado |
| 6 | DT_VALIDADE | DATE | Y | Ate quando o protocolo ficara ativo |
| 7 | VL_IDADE_INICIAL | NUMBER | Y | Idade Inicial que o protocolo podera ser aplicado |
| 8 | VL_IDADE_FINAL | NUMBER | Y | Idade maxima que o protocolo podera ser aplicado |
| 9 | QT_CICLO | NUMBER | Y | quantidade de ciclos por tratamento |
| 10 | SN_ATIVO | VARCHAR2 | Y | Se o Protocolo esta ativo para ser utilizado na prescric?o |
| 11 | TP_CONTAGEM | VARCHAR2 | Y | Tipo de Contagem dos Protocolos para criac?o de novos Ciclos |
| 12 | NR_CONTAGEM | NUMBER | Y | Intervalo de dias entre cada sess?o |
| 13 | SN_EXIBE_DATA_PROCEDIMENTO | VARCHAR2 | Y | Habilita campo de data do procecimento |
| 14 | DS_PROCEDIMENTO | VARCHAR2 | Y | Descrição do procedimento que será realizado |
| 15 | DS_OBSERVACAO_PADRAO | VARCHAR2 | Y | Coluna de Descrição Padrão do Protocolo |
| 16 | SN_EMPRESA_SETOR_SESSAO | VARCHAR2 | N | Verifica se permite selecIonar empresa e setor executante das sessoes |
| 17 | SN_INTERVALO_FIXO | VARCHAR2 | N |  |
| 18 | SN_D_FIXO | CHAR | N | Indicar se o protocolo utiliza identificadores "d", fixo ou no na prescrio oncolgica |
| 19 | TP_AGENDAMENTO | VARCHAR2 | N | QUI = QUIMIOTERAPIA, RAD = RADIOTERAPIA, FAR = FARMACIA, INF = INFUSÃO. |

---

## DBAMV.PROTOCOLO_DEPENDENCIA
> Tabela de Protocolos que ser?o utilizados dentro dos mesmos ciclos que outro protocolo prescrito para o paciente

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROTOCOLO | NUMBER | N | Codigo do Protocolo Principal prescrito |
| 2 | CD_PROTOCOLO_DEPENDENCIA | NUMBER | N | Codigo do Protocolo dependente do Principal |
| 3 | NR_ORDEM | NUMBER | Y | Ordem de Exibic?o |

---

## DBAMV.REFEICAO_DIETA
> Armazena as Refeic?es do paciente na dieta

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REFEICAO_DIETA | NUMBER | N | Codigo da Refeic?o da Dieta |
| 2 | CD_TIPO_REFEICAO_DIETA | NUMBER | N | Codigo da Refeic?o |
| 3 | CD_PRESCRICAO_DIETA | NUMBER | N | Codigo da prescric?o da Dieta |
| 4 | VL_PERCENTUAL_DIARIO | NUMBER | N | Percentual diario da Refeic?o |
| 5 | VL_CALORIAS | NUMBER | N | Valor de Calorias da Refeic?o. |

---

## DBAMV.REGIAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REGIAO | NUMBER | N |  |
| 2 | DS_REGIAO | VARCHAR2 | N |  |

---

## DBAMV.REGISTRO_AUDITORIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REGISTRO_AUDITORIA | NUMBER | N |  |
| 2 | TP_REGISTRO_AUDITORIA | VARCHAR2 | N |  |
| 3 | NM_MAQUINA_REGISTRO_AUDITORIA | VARCHAR2 | N |  |
| 4 | CD_USUARIO_REGISTRO_AUDITORIA | VARCHAR2 | N |  |
| 5 | DS_MODULO_AUDITORIA | VARCHAR2 | N |  |
| 6 | VL_REGISTRO_AUDITORIA | VARCHAR2 | Y |  |
| 7 | TZ_REGISTRO_AUDITORIA | TIMESTAMP(6) WITH TIME ZONE | Y |  |
| 8 | NM_PERFIL_USUARIO | VARCHAR2 | Y |  |
| 9 | CD_DOCUMENTO_CLINICO | NUMBER | Y |  |
| 10 | CD_ATENDIMENTO | NUMBER | Y |  |
| 11 | CD_PRODUTO | VARCHAR2 | Y |  |
| 12 | NM_SERVIDOR | VARCHAR2 | Y |  |
| 13 | CD_MULTI_EMPRESA | VARCHAR2 | Y |  |
| 14 | CD_ASSINATURA_DIGITAL | NUMBER | Y |  |

---

## DBAMV.REGISTRO_CIVIL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REG_FAT | NUMBER | N |  |
| 2 | CD_LANCAMENTO | NUMBER | N |  |
| 3 | NR_DECLARACAO_NASCIDO | VARCHAR2 | N |  |
| 4 | NM_RECEM_NASCIDO | VARCHAR2 | N |  |
| 5 | CD_CARTORIO | NUMBER | N |  |
| 6 | NR_LIVRO_RN | VARCHAR2 | N |  |
| 7 | NR_FOLHA_RN | VARCHAR2 | N |  |
| 8 | NR_TERMO_RN | VARCHAR2 | N |  |
| 9 | DT_EMISSAO_RN | DATE | N |  |
| 10 | NR_MATRICULA | VARCHAR2 | Y | Matricula obrigatoria para registros com emiss?o a partir de 01/01/2010. |

---

## DBAMV.REGISTRO_CLINICO
> Tabela para armazenamento de Registros Clinicos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REGISTRO_CLINICO | NUMBER | N | Codigo do registro clinico |
| 2 | CD_ATENDIMENTO | NUMBER | N | Codigo do atendimento |
| 3 | DH_INICIO | DATE | N | Data/hora de inicio do registro clinico |
| 4 | CD_USUARIO_CRIACAO | VARCHAR2 | N | Codigo do usuario que criou o registro clinico |
| 5 | CD_PRESTADOR_CRIACAO | NUMBER | N | Codigo do prestador que criou o registro clinico |
| 6 | DH_FIM | DATE | Y | Data/hora de fim do registro clinico |
| 7 | CD_USUARIO_FINALIZACAO | VARCHAR2 | Y | Codigo do usuario que finalizou o registro clinico |
| 8 | CD_PRESTADOR_FINALIZACAO | NUMBER | Y | Codigo do prestador que finalizou o registro clinico |
| 9 | DS_OBSERVACAO | VARCHAR2 | Y | Campo para observacoes |

---

## DBAMV.REGISTRO_COMPARECIMENTO
> Tabela para armazenar o registro de comparecimento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REGISTRO_COMPARECIMENTO | NUMBER | N | Codigo sequencial do registro de comparecimento. |
| 2 | CD_ITPED_LAB | NUMBER | N | Codigo do item do pedido. |
| 3 | CD_PACIENTE | NUMBER | N | Codigo do Paciente. |
| 4 | CD_SET_EXA | NUMBER | N | Codigo setor de exame. |
| 5 | CD_BANCADA | NUMBER | N | Codigo da bancada. |
| 6 | CD_CARTA_COMPARECIMENTO | NUMBER | N | Codigo da carta de comparecimento. |
| 7 | CD_COMPARACAO_ACAO_VAL_EXA | NUMBER | N | Codigo da comparac?o de resultados. |
| 8 | DT_SOLICITACAO | DATE | N | Data que o registro foi gerado. |
| 9 | DT_EMISSAO | DATE | Y | Data de Emiss?o(Impress?o) da carta. |
| 10 | DT_ULT_EMISSAO | DATE | Y | Data da ultima Emiss?o(Impress?o) da carta. |
| 11 | SN_EMITIDO | VARCHAR2 | N | S = Emitido(impresso), N =  N?o emitido (n?o impresso). |
| 12 | CD_USUARIO_EMISSAO | VARCHAR2 | Y | Usuario da primeira Emiss?o(Impress?o). |
| 13 | CD_USUARIO_ULT_EMISSAO | VARCHAR2 | Y | Usuario da ultima Emiss?o(Impress?o). |
| 14 | DT_ENTREGUE | DATE | Y | Data de entregue da carta. |
| 15 | SN_ENTREGUE | VARCHAR2 | Y | Indica se carta foi entregue. S/N |

---

## DBAMV.REGISTRO_CONTATO
> Tabela para registros de contatos com os pacientes

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REGISTRO_CONTATO | NUMBER | N | Codigo dos registos de contatos |
| 2 | CD_REGISTRO_VINCULADO | NUMBER | N | Codigo do item associado ao registro de contatos |
| 3 | DT_CONTATO | DATE | Y | Data em que foi registrado o contato com paciente |
| 4 | HR_CONTATO | DATE | Y | Hora em que foi registrado o contato com paciente |
| 5 | CD_USUARIO | VARCHAR2 | N | Usuario que efetuou o registro de contato |
| 6 | DS_ASSUNTO | VARCHAR2 | N | Assunto relacioado ao registro de contato |
| 7 | DS_CONTATO | VARCHAR2 | N | Observac?es do registro de contato |
| 8 | TP_ACAO | VARCHAR2 | N | Tipo de ac?o que o registro estara vinculado (PR)pre-agendamento; (AT) Agendamento de Turmas; (AS... |
| 9 | CD_PACIENTE | NUMBER | Y | Paciente contatado |
| 10 | NM_PACIENTE | VARCHAR2 | Y |  |

---

## DBAMV.REGISTRO_DOCUMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REGISTRO_DOCUMENTO | NUMBER | N |  |
| 2 | CD_DOCUMENTO | NUMBER | N |  |
| 3 | NM_USUARIO | VARCHAR2 | N |  |
| 4 | DT_REGISTRO | DATE | N |  |
| 5 | CD_ATENDIMENTO | NUMBER | Y |  |
| 6 | CD_IDENTIFICADOR | NUMBER | Y |  |
| 7 | DS_LAYOUT | LONG | Y |  |
| 8 | SN_IMPRESSO | VARCHAR2 | N |  |
| 9 | DS_LAYOUT_CLOB | CLOB | Y |  |
| 10 | DS_LAYOUT_CABECALHO_CLOB | CLOB | Y |  |
| 11 | DS_LAYOUT_RODAPE_CLOB | CLOB | Y |  |
| 12 | CD_GED_CABECALHO | NUMBER | Y |  |
| 13 | CD_GED_CORPO | NUMBER | Y |  |
| 14 | CD_GED_RODAPE | NUMBER | Y |  |
| 15 | CD_GED_VERSAO_CABECALHO_DOC | NUMBER | Y |  |
| 16 | CD_GED_VERSAO_CORPO_DOC | NUMBER | Y |  |
| 17 | CD_GED_VERSAO_RODAPE_DOC | NUMBER | Y |  |
| 18 | CD_TRIAGEM_ATENDIMENTO | NUMBER | Y | Codigo da triagem do SACR |
| 19 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da multi-empresa |
| 20 | CD_DOCUMENTO_CLINICO | NUMBER | Y | Referencia o codigo da tabela de Documento Clinico do paciente |
| 21 | CD_USUARIO_AUTORIZADOR | VARCHAR2 | Y | Codigo do Usuario (Docente) que autorizou o Documento. |
| 22 | CD_PRESTADOR | NUMBER | Y | Código do Prestador |

---

## DBAMV.REGISTRO_DOCUMENTO_IMAGEM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REGISTRO_DOCUMENTO_IMAGEM | NUMBER | N |  |
| 2 | CD_REGISTRO_DOCUMENTO | NUMBER | N |  |
| 3 | DS_IMAGEM | VARCHAR2 | N |  |
| 4 | IMAGEM | LONG RAW | Y |  |

---

## DBAMV.REGISTRO_DOCUMENTO_OBRIGATORIO
> Tabela para armazenar os registros dos documentos com obrigatoriedade de preenchimento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ATENDIMENTO | NUMBER | N | Informac?o do atendimento |
| 2 | CD_PRE_MED | NUMBER | Y | Informac?o da prescric?o |
| 3 | CD_ITPRE_MED | NUMBER | Y | Informac?o do item da prescric?o |
| 4 | CD_DOCUMENTO | NUMBER | Y | Codigo do documento vinculado a obrigatoriedade. Acompanhado do campo tp_identifica a qual editor... |
| 5 | SN_OBRIGATORIO | VARCHAR2 | N | Informac?o de obrigatoriedade do documento |
| 6 | CD_REGISTRO_DOCUMENTO | NUMBER | Y | Informac?o do registro do documento |
| 7 | TP_FORMA_PREENCHIMENTO | VARCHAR2 | N | I-Um doc. para cada item de prescric?o; P-Um doc. por processo; D-Um doc. por dia; A-Um doc. por ... |
| 8 | DT_REFERENCIA | DATE | N | Informac?o da data de referencia da prescric?o |
| 9 | CD_EDITOR_CLINICO | NUMBER | Y | Codigo que refere-se ao novo editor |
| 10 | CD_DIAGNOSTICO_ATENDIME | NUMBER | Y | CODIGO DO DIAGNOSTICO QUANDO O CID PRINCIPAL ESTA ENTRE OS CONFIGURADOS NA TELA DE OBRIGATORIEDAD... |
| 11 | CD_TIP_PRESC | NUMBER | Y | Coluna para vincular o componente do item prescrito, com chave para CITPRE_MED. |

---

## DBAMV.REGISTRO_EVOL_ADMIN
> Tabela de Cadastro dos registros das Evoluc?es Administrativas dos Pacientes.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REGISTRO_EVOL_ADMIN | NUMBER | N | Codigo de identificac?o do registro da Evoluc?o Administrativa. |
| 2 | DT_REGISTRO_EVOL_ADMIN | DATE | N | Data em que foi registrada a Evoluc?o Administrativa. |
| 3 | HR_REGISTRO_EVOL_ADMIN | DATE | N | Hora em que foi registrada a Evoluc?o Administrativa. |
| 4 | CD_USUARIO_REGISTRO | VARCHAR2 | N | Usuario responsavel pelo registro da evoluc?o. |
| 5 | CD_ATENDIMENTO | NUMBER | Y | Codigo do Atendimento associado a Evoluc?o Administrativa. |
| 6 | CD_AVISO_CIRURGIA | NUMBER | Y | Codigo do Aviso de Cirurgia associado a Evoluc?o Administrativa. |
| 7 | CD_RES_LEI | NUMBER | Y | Codigo da Pre-Internac?o associado a Evoluc?o Administrativa. |
| 8 | CD_EVOL_ADMIN | NUMBER | N | Codigo da Evoluc?o Administrativa que foi registrada. |
| 9 | DS_ANOTACAO | VARCHAR2 | Y | Descric?o das anotac?es referentes a Evoluc?o Administrativa. |
| 10 | DT_CANCELAMENTO | DATE | Y | Data em que foi cancelada a Evoluc?o Administrativa. |
| 11 | HR_CANCELAMENTO | DATE | Y | Hora em que foi cancelada a Evoluc?o Administrativa. |
| 12 | CD_USUARIO_CANCELAMENTO | VARCHAR2 | Y | Usuario responsavel pelo cancelamento da Evoluc?o Administrativa. |
| 13 | CD_MOT_CANC | NUMBER | Y |  |
| 14 | SN_FINALIZAR_ACAO | VARCHAR2 | Y | Informa se o Registro de Evoluc?o Administrativa vai finalizar uma Ac?o. |

---

## DBAMV.REGISTRO_FLUXO_AGENDA
> Tabela de Integrac?o das Informac?es da Agenda com o Registro de Fluxo de Tratamento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IT_AGENDA_CENTRAL | NUMBER | N | Chave Primaria da Tabela e referencia da tabela de itens agenda central |
| 2 | DS_OBSERVACAO | VARCHAR2 | N | Observac?o do Registro de Fluxo da Agenda |
| 3 | TP_REGISTRO_FLUXO_AGENDA | VARCHAR2 | N | Tipo de registro de fluxo S=valido N=N?o valido |

---

## DBAMV.REGISTRO_FLUXO_ONCOLOGIA
> Tabela de Registro de Fluxo da Oncologia

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REGISTRO_FLUXO_ONCOLOGIA | NUMBER | N | Chave primaria do registro de fluxo da oncologia |
| 2 | CD_PRE_MED | NUMBER | N | Numero da prescric?o medica (sess?o da oncologia) |
| 3 | CD_USUARIO | VARCHAR2 | N | Usuario que realizou o registro de fluxo |
| 4 | CD_TEX_EVO | NUMBER | Y | Codigo da Ocorrencia para o tipo de prestador |
| 5 | DH_CRIACAO | DATE | N | Data e hora de criac?o da Ocorrencia |
| 6 | TP_REGISTRO_FLUXO_ONCOLOGIA | VARCHAR2 | N | Se o registro e S=Valido N=N?o Valido A=Aguardando R=Reavaiac?o Medica |
| 7 | DS_OBSERVACAO | VARCHAR2 | Y | Observac?o do registro |
| 8 | CD_ACAO | VARCHAR2 | N | Ac?o realizada pelo prestador para realizar o fluxo |
| 9 | CD_MOTIVO_PADRAO_REGISTRO_FLUX | NUMBER | Y | Motivo Padr?o do Registro de Fluxo do Tratamento |
| 10 | CD_USUARIO_VALIDACAO | VARCHAR2 | Y | Usuario que realizou a validac?o do Fluxo |

---

## DBAMV.REGISTRO_ORDEM_PRODUCAO
> TABELA QUE REGISTRA DADOS DOS REGISTRO DA ORDEM DE PRODUÇÃO.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REGISTRO_ORDEM_PRODUCAO | NUMBER | N | INDICA CODIGO DO LOG. |
| 2 | CD_USUARIO | VARCHAR2 | N | INDICA QUAL USUARIO FEZ O REGISTRO. |
| 3 | DT_REGISTRO | DATE | N | INDICA EM QUE DATA FOI REALIZADO O REGISTRO. |
| 4 | DS_OPERACAO | VARCHAR2 | N | INDICA A OPERAÇÃO EXECUTADA. |
| 5 | DS_OBSERVACAO | VARCHAR2 | Y | INDICA A OBSERVAÇÃO DA OPERAÇÃO. |
| 6 | CD_ORDEM_PRODUCAO | NUMBER | N | INDICA O CODÍGO DA ORDEM DE PRODUÇÃO. |

---

## DBAMV.REGISTRO_PLANTAO
> Tabela responsável por guardar as informações dos registros de plantao dos prestadores

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REGISTRO_PLANTAO | NUMBER | N | Código sequencial identificador do registro |
| 2 | CD_PRESTADOR | NUMBER | N | Código identificador do prestador |
| 3 | HR_REGISTRO | DATE | Y | Data e hora da criação do registro |
| 4 | DT_INICIO | DATE | Y | Data e hora do inicio do plantão |
| 5 | DT_FIM | DATE | Y | Data e hora do inicio do plantão |
| 6 | TP_PLANTAO | VARCHAR2 | Y | Tipo do plantão |
| 7 | DS_JUSTIFICATIVA | VARCHAR2 | Y | Justificativa para mudança no registro de plantão já realizado |
| 8 | CD_SETOR | NUMBER | Y | Código do setor para registro do plantão |
| 9 | CD_CAD_FUNCAO_MEDICA | NUMBER | Y | Código da função médica |

---

## DBAMV.REGISTRO_PLANTOES_FNRM
> Tabela de registro de plantões para o repasse de plantões.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REGISTRO | NUMBER | N | Sequencial da tabela. |
| 2 | CD_PRESTADOR | NUMBER | Y | Código do prestador. |
| 3 | CD_MULTI_EMPRESA | NUMBER | Y | Empresa onde foi executado o plantão. |
| 4 | DT_PLANTAO | DATE | Y | Data do plantão que foi realizado. |
| 5 | CD_SETOR | NUMBER | Y | Código do setor (opcional). |
| 6 | CD_ESPECIALID | NUMBER | Y | Código da especialidade (opcional). |
| 7 | HR_ENTRADA_1 | DATE | Y | Hora da primeira entrada. |
| 8 | HR_SAIDA_1 | DATE | Y | Hora da primeira saída. |
| 9 | HR_ENTRADA_2 | DATE | Y | Hora da segunda entrada. |
| 10 | HR_SAIDA_2 | DATE | Y | Hora da segunda saída. |
| 11 | TP_REPASSE_PL | VARCHAR2 | Y | Tipo do repasse (Plantão ou Valor/Hora). |

---

## DBAMV.REGISTRO_PRECO
> Registro de Preco

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PEDIDO | NUMBER | N | Codigo do Pedido do Registro |
| 2 | CD_PRODUTO | NUMBER | N | Codigo do Produto do Registro |
| 3 | QT_SOLICITADA | NUMBER | Y | Quantidade Solicitada do Registro |
| 4 | CD_DOCUMENTO | NUMBER | Y | Codigo do Documento |
| 5 | DT_CADASTRO | DATE | Y | Data do Cadastro |
| 6 | NM_USUARIO | VARCHAR2 | Y | Nome do Usuario |
| 7 | NR_PREGAO | VARCHAR2 | N | Numero do Preg?o |
| 8 | CD_FORNECEDOR | NUMBER | Y | Codigo do Fornecedor |
| 9 | NR_EMPENHO | VARCHAR2 | Y | Numero do Empenho |
| 10 | NM_USUARIO_EMPENHO | VARCHAR2 | Y | Nome do Usuario do Empenho |
| 11 | DT_CADASTRO_EMPENHO | VARCHAR2 | Y | Data do Cadastro de Empenho |
| 12 | TP_STATUS | VARCHAR2 | Y | Tipo do Status do Registro |
| 13 | CD_MOTIVO | NUMBER | Y | Codigo do Motivo |
| 14 | VL_UNITARIO | NUMBER | Y | Valor Unitario |
| 15 | CD_ITEM | NUMBER | Y | Codigo do Item |
| 16 | CD_SOL_COM | NUMBER | Y | Codigo da Solicitac?o de Compras |
| 17 | SN_ITEM_FECHADO | VARCHAR2 | N | Item Fechado? Sim ou N?o |
| 18 | CD_MULTI_EMPRESA | NUMBER | N | Codigo do Multi Empresa |

---

## DBAMV.REGISTRO_REJEITADO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REGISTRO_REJEITADO | NUMBER | N |  |
| 2 | DS_ERRO | VARCHAR2 | Y |  |
| 3 | NR_LINHA | NUMBER | Y |  |
| 4 | CD_TABELA_IMPORTACAO | NUMBER | N |  |

---

## DBAMV.REGISTRO_RESPOSTA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REGISTRO_DOCUMENTO | NUMBER | N |  |
| 2 | CD_PERGUNTA_DOC | NUMBER | N |  |
| 3 | DT_RESPOSTA | DATE | Y |  |
| 4 | VL_RESPOSTA | NUMBER | Y |  |
| 5 | DS_RESPOSTA | VARCHAR2 | Y |  |
| 6 | IM_RESPOSTA | LONG RAW | Y |  |

---

## DBAMV.REGISTRO_UTI_SUS
> Contem os registros de movimentac?es de UTI-SUS por atendimento e competencia.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ATENDIMENTO | NUMBER | N | Codigo do atendimento. |
| 2 | CD_REG_FAT | NUMBER | N | Codigo da conta AIH. |
| 3 | DT_COMPETENCIA | DATE | N | Competencia do movimento de UTI. |
| 4 | DT_MOV_INT | DATE | N | Data da movimentac?o do leito. |
| 5 | DT_MOV_LIB | DATE | Y | Data da liberac?o, ou data limite. |
| 6 | NR_DIAS | NUMBER | N | Dias que o paciente passou na acomodac?o de UTI. |
| 7 | TP_PROCESSO | VARCHAR2 | Y | Sinaliza o tipo de controle (Interno) |
| 8 | TP_UTI_SUS | VARCHAR2 | Y | Tipo da acomodac?o do SUS |
| 9 | TP_UTI_FAIXAETARIA | VARCHAR2 | Y | Faixa Etaria da UTI vs Idade do paciente. |
| 10 | CD_NIVEL | VARCHAR2 | Y | Define o nivel da UTI |
| 11 | CD_SETOR | VARCHAR2 | Y | Codigo do Setor atribuido a UTI. |
| 12 | CD_PROCEDIMENTO | VARCHAR2 | Y | Codigo do procedimento SIH. |

---

## DBAMV.RELACAO_PUBLICA
> Tabela criada para Câmara dos Deputados, para armazenar RP ou seja paciente de Relação Pública.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_RELACAO_PUBLICA | NUMBER | N | Código da Relação Pública - RP. |
| 2 | CD_PACIENTE_SOLICITANTE | NUMBER | Y | Código do paciente que solicitou o RP. |
| 3 | NR_CARTEIRA_SOLICITANTE | VARCHAR2 | Y | Código da carteira que solicitou o RP. |
| 4 | NM_PACIENTE_RP | VARCHAR2 | N | Nome do paciente para o agendamento de RP. |
| 5 | SN_ATIVO | VARCHAR2 | N | Indica o Status da autorização RP - ativo(S), inativo(N) ou excluído(E). |
| 6 | DT_SOLICITACAO | DATE | N | Data da solicitacao |
| 7 | DS_OBSERVACAO | VARCHAR2 | Y | Observação sobre o cadastro do RP |
| 8 | CD_PACIENTE | NUMBER | Y | Código do paciente vinculado ao cadastro de RP |
| 9 | CD_SER_DIS | NUMBER | Y | Código do tipo de procedência do RP |
| 10 | CD_TIPO_PROCEDENCIA | NUMBER | Y |  |

---

## DBAMV.RELIGIAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_RELIGIAO | NUMBER | N |  |
| 2 | DS_RELIGIAO | VARCHAR2 | N |  |
| 3 | CD_RELIGIAO_EXTERNO | VARCHAR2 | Y | Código de identificação da religião |
| 4 | CD_GRUPO_RELIGIAO | VARCHAR2 | Y | Código de identificação do Grupo |

---

## DBAMV.SENHA_AUTORIZACAO
> Tabela responsável cadastro de senhas dos pacientes

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SENHA_AUTORIZACAO | NUMBER | N |  |
| 2 | CD_PACIENTE | NUMBER | N |  |
| 3 | CD_ORIGEM_SENHA_AUT | NUMBER | N |  |
| 4 | DS_SENHA | VARCHAR2 | N | Senha de autorização utilizada pelo paciente |
| 5 | DT_CRIACAO | DATE | N | Data da criação da senha |
| 6 | DT_ULTIMA_ATIVACAO | DATE | Y | Data em que foi efetuada a última ativação da senha |
| 7 | DT_ULTIMA_DESATIVACAO | DATE | Y | Data em que foi efetuada a última desativação da senha |
| 8 | DS_MOTIVO_DESATIVACAO | VARCHAR2 | Y |  |
| 9 | DT_EXPIRACAO | DATE | Y | Data em que ocorreu a expiração da senha |
| 10 | CD_ESPECIALID | NUMBER | Y | Especialidade autorizado para a senha cadastrada |
| 11 | CD_SER_DIS | NUMBER | Y | Serviço autorizado para a senha cadastrada |

---

## DBAMV.SINAL_VITAL_PW_POSICAO_PACIEN
> Tabela de vinculo de  o sinal vital com a posição do paciente.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SINAL_VITAL_PW_POSICAO_PAC | NUMBER | N | Código identificador da tabela - Chave Primária. |
| 2 | CD_SINAL_VITAL | NUMBER | N | Código do Sinal Vital. |
| 3 | CD_POSICAO_PACIENTE | NUMBER | N | Código da Posição do Paciente. |
| 4 | SN_PADRAO | VARCHAR2 | N | Indica se a posiçao do paciente será padrão para o sinal vital. |
| 5 | SN_ATIVO | VARCHAR2 | N |  |

---

## DBAMV.TRANSPORTE_PACIENTE
> Tabela da tela Registro de Transporte de Paciente.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TRANSPORTE_PACIENTE | NUMBER | N | Código do registro de transporte do paciente. |
| 2 | CD_ATENDIMENTO | NUMBER | N | Código do atendimento do paciente. |
| 3 | TP_TRANSPORTE_PACIENTE | VARCHAR2 | N | Tipo do transporte do paciente. C - CIRURGIA, E - EXAME, L - CONSULTA, O - OUTROS |
| 4 | DS_TRANSPORTE_PACIENTE | VARCHAR2 | N | Descrição sobre o registro de transporte do paciente. |
| 5 | CD_AVISO_CIRURGIA | NUMBER | Y | Aviso de cirurgia associado ao atendimento. |
| 6 | DH_SAIDA_LEITO | DATE | N | Data de saída do paciente do leito em que está internado, a ser informada pelo usuário. |
| 7 | DH_RETORNO_LEITO | DATE | Y | Data de retorno do paciente ao leito em que está internado, a ser informada pelo usuário. |

---

## DBAMV.TUSS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIP_TUSS | NUMBER | N | Codigo do Tipo de Terminologia TUSS. |
| 2 | CD_TUSS | VARCHAR2 | N | Codigo da Terminologia TUSS, definida pela ANS. |
| 3 | DS_TUSS | VARCHAR2 | N | Descric?o da Terminologia TUSS, definida pela ANS. |
| 4 | DT_INICIO_VIGENCIA | DATE | N | Data inicio da vigencia de uso da terminologia. |
| 5 | DT_FIM_VIGENCIA | DATE | Y | Data final da vigencia de uso da terminlogia. |
| 6 | DT_FIM_IMPLANTACAO | DATE | Y | Data final da implantac?o da terminologia. |
| 7 | DS_EDICAO_NORMA_OBSERVACOES | VARCHAR2 | Y | Descric?o de edic?o, norma ou observac?es relacionada a criac?o da terminologia. |
| 8 | DS_DESCRICAO_DETALHADA | VARCHAR2 | Y | Descric?o detalhada da terminlogia. |
| 9 | DS_APRESENTACAO | VARCHAR2 | Y | Descric?o da apresentac?o da terminologia. |
| 10 | NM_FABRICANTE | VARCHAR2 | Y | Identificac?o do fabricante. |
| 11 | CD_REF_FABRICANTE | VARCHAR2 | Y | Codificac?o de referencia no fabricante. |
| 12 | NM_LABORATORIO | VARCHAR2 | Y | Identificac?o do laboratorio. |
| 13 | DS_SIGLA | VARCHAR2 | Y | Identificac?o da sigla. |
| 14 | CD_SEQ_TUSS | NUMBER | N | Sequencial Tuss. |
| 15 | CD_MULTI_EMPRESA | NUMBER | Y | Codigo de Multi-Empresa (opcional). |
| 16 | CD_CONVENIO | NUMBER | Y | Codigo do Convenio (opcional). |
| 17 | TP_ATENDIMENTO | VARCHAR2 | Y | Tipo de Atendimento relacionado (opcional). |
| 18 | CD_ESPECIALIDADE | NUMBER | Y | Codigo de Especialidade relacionalada (opcional). |
| 19 | CD_TIP_ACOM | NUMBER | Y | Tipo de Acomodac?o relacionada (opcional) |
| 20 | CD_MOT_ALT | NUMBER | Y | Motivo de Alta relacionalada (opcional). |
| 21 | TP_SEXO | VARCHAR2 | Y | Tipo de Sexo relacionado (opcional). |
| 22 | CD_SERVICO | NUMBER | Y | Servico relacionado (opcional). |
| 23 | TP_GRU_PRO | VARCHAR2 | Y | Tipo de Grupo de Procedimento relacionado (opcional). |
| 24 | CD_GRU_PRO | NUMBER | Y | Grupo de Procedimento relacionado (opcional). |
| 25 | CD_PRO_FAT | VARCHAR2 | Y | Codigo de procedimento de faturamento relacionado (opcional). |
| 26 | CD_ATI_MED | VARCHAR2 | Y | Atividade Medica relacionalada (opcional). |
| 27 | TP_SERVICO_HOSPITALAR | VARCHAR2 | Y | Tipo de Servico Hospitalar relacionado (opcional). |
| 28 | CD_CONSELHO | NUMBER | Y | Codigo de Conselho profissional relacionado (opcional). |
| 29 | CD_MOTIVO_GLOSA | NUMBER | Y | Motivo de Glosa relacionado (opcional). |
| 30 | CD_REFERENCIA | VARCHAR2 | Y | Codigo da entidade de referencia (ANVISA). |
| 31 | CD_SETOR | NUMBER | Y | Codigo do setor |

---

## DBAMV.UF

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PAIS | NUMBER | N |  |
| 2 | CD_UF | VARCHAR2 | N |  |
| 3 | NM_UF | VARCHAR2 | N |  |
| 4 | CD_UF_IBGE | VARCHAR2 | Y | Codigo IBGE. Informac?o fixa, retirada da tabela do IBGE |
