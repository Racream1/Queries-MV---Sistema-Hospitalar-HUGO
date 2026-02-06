# 11 - Compras e Contratos

> Pedidos de compra, fornecedores, contratos (GCTO_), licitacoes

## Resumo

- **Tabelas**: 134
- **Owners**: DBAMV

---

## DBAMV.ACAO_PARECER_MEDICO
> Armazena as ac?es realizadas na rotina de Parecer Medico, como por exemplo, solicitar, responder (realizar), cancelar, etc.  As acoes podem ser:  SOL - Solicitacao do Parecer Medico;  CAN - Cancelamento do Parecer Medico;  ANA - Inicio da analise do Parecer Medico;  RES - Resposta e consequente realizacao do Parecer Medico.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ACAO | NUMBER | N | Codigo numerico que identifica a Acao do Parecer Medico |
| 2 | CD_PAR_MED | NUMBER | N | Codigo numerico do Parecer Medico |
| 3 | CD_PRESTADOR | NUMBER | N | Codigo de identificacao do Prestador |
| 4 | DH_ACAO | DATE | N | Data e Hora em que a Acao foi realizada |
| 5 | TP_ACAO | CHAR | N | Tipo da Acao realizada, podendo ser Solicitacao (SOL), Cancelamento (CAN), Analise (ANA), ou Real... |
| 6 | SN_CANCELADO | VARCHAR2 | N | Analise da ac?o cancelada (S/N) |
| 7 | DS_ACAO | CLOB | Y | Armazena o conteúdo da Açao de acordo com o Tipo da Ação |

---

## DBAMV.ACOMPANHAMENTO_ORDEM_COMPRA
> Acompanhamento de ordem de compra (Follow-up)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ACOMPANHAMENTO_ORDEM_COMPRA | NUMBER | N | Codigo do Acompanhamento |
| 2 | CD_ORD_COM | NUMBER | N | Codigo da Ordem de Compra |
| 3 | DH_REGISTRO | DATE | N | Data e hora em que o registro foi efetuado |
| 4 | CD_USUARIO | VARCHAR2 | N | usuario que efetuou o registro |
| 5 | DT_CONTATO | DATE | Y | Data do contato |
| 6 | HR_CONTATO | DATE | Y | Hora do contato |
| 7 | NM_CONTATO | VARCHAR2 | Y | Nome do contato (Fornecedor) |
| 8 | NR_FONE_CONTATO | VARCHAR2 | Y | Fone do contato (Fornecedor) |
| 9 | DS_EMAIL_CONTATO | VARCHAR2 | Y | E-mail do contato (Fornecedor) |
| 10 | CD_ACOMPANHAMENTO_ORD_CPR_PAI | NUMBER | Y | Codigo do acompanhamento que encaminhou a mensagem para gerar a resposta atual |
| 11 | TP_STATUS | VARCHAR2 | N | Status do Acompanhamento: Normal, Aberto, Respondido |
| 12 | DS_ANDAMENTO | VARCHAR2 | N | Texto da conversa ou posicionamento obtido no contato |

---

## DBAMV.ADESAO_PROCESSO_PREGAO
> Ades?o do Processo de Preg?o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LANCAMENTO | NUMBER | N | Codigo do Lancamento |
| 2 | NR_PROCESSO | VARCHAR2 | N | Numero do Processo |
| 3 | NR_PREGAO | VARCHAR2 | N | Numero do Preg?o |
| 4 | NM_USUARIO | VARCHAR2 | N | Nome do Usuario |
| 5 | DT_CADASTRO | DATE | N | Data do Cadastro |
| 6 | DT_VALIDADE | DATE | Y | Data da Validade |
| 7 | CD_DOCUMENTO | NUMBER | Y | Codigo do Documento |
| 8 | TP_ADESAO | VARCHAR2 | Y | Tipo de Ades?o |
| 9 | CD_MULTI_EMPRESA | NUMBER | Y | Codigo do Multi Empresa |

---

## DBAMV.CAMPO_OBRIGACAO_SOLIC_AMBU
> Tabela para armazenar os campos obrigatórios da solicitação de ambulância.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CAMPO_OBRIGACAO_SOLIC_AMBU | NUMBER | N | Código único que identifica os campos obrigatórios da solicitação de ambulância. |
| 2 | CD_MULTI_EMPRESA | NUMBER | Y | Código da multi-empresa |
| 3 | NM_CAMPO_OBRIGACAO_SOLIC_AMBU | VARCHAR2 | Y | Nome do campo. |
| 4 | DS_CAMPO_OBRIGACAO_SOLIC_AMBU | VARCHAR2 | Y | Descrição do campo. |
| 5 | SN_OBRIGATORIO | VARCHAR2 | Y | Indica se o campo é obrigatórios ou não na solicitação de ambulância. S = Sim N = Não |

---

## DBAMV.CNO_FORNECEDOR
> Fornecedor vinculado ao Cadastro Nacional de Obras - CNO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CNO | VARCHAR2 | N | Código do CNO |
| 2 | CD_FORNECEDOR | NUMBER | N | Código do Fornecedor |

---

## DBAMV.COMPOSICAO_SOLICITACAO_CME
> [MGCE] Tabela de cadastro de Composição de Solicitação de Esterilização.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_COMPOSICAO_SOLICITACAO_CME | NUMBER | N | Código sequencial único da Composição Solicitação de Esterilização. |
| 2 | CD_SOLICITACAO_CME | NUMBER | N | Código da Solicitação de Esterilização. |
| 3 | CD_KIT | NUMBER | N | Código do Kit/Caixa. |
| 4 | CD_LOCALIDADE | NUMBER | Y | Código da Localidade. |
| 5 | CD_PRESTADOR_IDENTIFICA | NUMBER | Y | Código do prestador da identificação. |
| 6 | CD_PRESTADOR_RETIRANTE | NUMBER | Y | Código do prestador retirante. |
| 7 | CD_MULTI_EMPRESA | NUMBER | N | Código da multi-empresa |
| 8 | SN_CONFERENCIA_ENTRADA | VARCHAR2 | N | Indica se será conferido na entrada. |
| 9 | SN_LAVADO | VARCHAR2 | N | Indica se o produto será lavado. |
| 10 | SN_DESINFECTADO | VARCHAR2 | N | Indica se o produto será desinfectado. |
| 11 | QT_KIT_CAIXA | NUMBER | N | Quantidade de kits/caixa. |
| 12 | CD_ESTERILIZA | NUMBER | Y | Código da esterilização. |
| 13 | DT_VALIDADE_ESTERILIZACAO | DATE | Y | Data de validade da esterilização. |
| 14 | CD_CANCELAMENTO | NUMBER | Y | Código do cancelamento. |
| 15 | CD_ARSENAL | NUMBER | Y | Código do Arsenal. |
| 16 | CD_FORNECEDOR | NUMBER | Y | Código do Fornecedor. |
| 17 | CD_USUARIO_CADASTRO | VARCHAR2 | N | Código do Usuário de Cadastro. |
| 18 | DH_CADASTRO | DATE | N | Data de Cadastro. |
| 19 | CD_USUARIO_ALTERACAO | VARCHAR2 | Y | Código do Usuário de Alteração. |
| 20 | DH_ALTERACAO | DATE | Y | Data de Alteração. |
| 21 | CD_ARSENAL_DESTINO | NUMBER | Y | Código do Arsenal de destino. |
| 22 | TP_SITUACAO | NUMBER | N | Situação em que se encontra o componente da solicitação de esterilização. 0 = Solicitada, 1 = Rec... |
| 23 | DS_OBSERVACAO | VARCHAR2 | Y | Observação da composição. |
| 24 | SN_ENTRADA_EXPURGO | VARCHAR2 | N | INDICA SE A COMPOSIÃ¿Ã¿O Ã¿ CONFERIDO NA ENTRADA PARA EXPURGO |
| 25 | SN_PREPARADO | VARCHAR2 | N |  |
| 26 | CD_USUARIO_PREPARO | VARCHAR2 | Y | Usuário que fez o preparo para esterilização. |
| 27 | CD_DESINFECCAO | NUMBER | Y | Código da desinfecção |

---

## DBAMV.COM_DOC_ANEXO
> Tabela que guarda os documentos inseridos no processo de compra.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DOCUMENTO | VARCHAR2 | N | Nome unico do documento gravado. |
| 2 | CD_SOL_COM | NUMBER | Y | Código da solicitação de compras associada ao documento. |
| 3 | CD_PRO_SOL_COM | NUMBER | Y | Código do produto da solicitação de compras associado ao documento. |
| 4 | CD_SER_SOL_COM | NUMBER | Y | Código do serviço da solicitação de compras associado ao documento. |
| 5 | CD_ORD_COM | NUMBER | Y | Código da ordem de compras associada ao documento. |
| 6 | CD_PRO_ORD_COM | NUMBER | Y | Código do produto da ordem de compras associado ao documento. |
| 7 | CD_SER_ORD_COM | NUMBER | Y | Código do serviço da ordem de compras associado ao documento. |
| 8 | LO_DOCUMENTO | BLOB | Y | Arquivo gravado. |
| 9 | CD_USUARIO_INCLUSAO | VARCHAR2 | N |  |
| 10 | DT_INCLUSAO | DATE | N |  |
| 11 | CD_USUARIO_EXCLUSAO | VARCHAR2 | Y |  |
| 12 | DT_EXCLUSAO | DATE | Y |  |
| 13 | DS_JUSTIF_EXCLUSAO | VARCHAR2 | Y |  |

---

## DBAMV.CONTRATO_ADIANTAMENTO
> Tabela de Contrato de Adiantamento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | TP_CONTRATO_ADIANT | VARCHAR2 | N | Tipo de Contrato de Adiantamento(Pacote ou Financeiro) |
| 2 | TP_CONTRATANTE | VARCHAR2 | N | Tipo de Contratante (Paciente ou Responsavel) |
| 3 | CD_CONTRATANTE | NUMBER | N | Codigo do Contratante |
| 4 | NM_CONTRATANTE | VARCHAR2 | N | Nome do Contratante |
| 5 | CD_CONTRATO_ADIANT | NUMBER | N | Codigo Sequencial do Contrato de Adiantamento |
| 6 | DS_CONTRATO_ADIANT | VARCHAR2 | N | Descric?o do Contrato de Adiantamento |
| 7 | NR_CONTRATO_ADIANT | VARCHAR2 | N | Numero do Contrato de Adiantamento |
| 8 | CD_PACIENTE | NUMBER | Y | Codigo do Paciente associado ao Contrato de Adiantamento |
| 9 | CD_PACOTE | NUMBER | Y | Codigo do Pacote, caso o Tipo de Contrato de Adiantemento seja pacote |
| 10 | CD_ATENDIMENTO | NUMBER | Y | Codigo do Atendimento associado ao Pacote |
| 11 | NR_DIA_VENCTO | NUMBER | N | Dia do Vencimento do Pacote |
| 12 | CD_FORMA_PAGTO_ADIANT | NUMBER | N | Codigo da Forma de Pagamento associada ao Contrato de Adiantamento |
| 13 | VL_CONTRATO_ADIANT | NUMBER | N |  |
| 14 | DT_CONTRATO_ADIANT | DATE | N |  |
| 15 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da Empresa ao qual pertence o Contrato |
| 16 | ST_CONTRATO_ADIANT | VARCHAR2 | N | Situac?o do Contrato de Adiantamento |
| 17 | CD_CONTRATO_ORIGEM | NUMBER | Y | Codigo do Contrato de Origem, caso exista |
| 18 | VL_SALDO_RECEBIDO | NUMBER | Y | Saldo ja recebido do Contrato de Adiantamento |
| 19 | DT_CANCELAMENTO | DATE | Y | Data de Cancelamento do Contrato |
| 20 | CD_USUARIO_CANCELAMENTO | VARCHAR2 | Y | Codigo do Usuario que realizou o Cancelamento do Contrato |
| 21 | SN_RECEBIDO | VARCHAR2 | N | Indica se o Contrato de Adiantamento ja foi utilizado como forma de abatimento da conta a receber. |
| 22 | NM_SOCIAL_CONTRATANTE | VARCHAR2 | Y | NOME SOCIAL |
| 23 | VL_SALDO | NUMBER | Y | Valor do Saldo Adiantamento |

---

## DBAMV.CONTRATO_ADIANT_PARAMETRO
> Tabela de Contrato de Adiantamento Parametro

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONTRATO_ADIANT | NUMBER | N | Codigo do Contrato de Adiantamento |
| 2 | DS_PARAMETRO | VARCHAR2 | N | Descric?o do Parametro |
| 3 | DS_VALOR_PARAMETRO | VARCHAR2 | Y | Valores da Descric?o do Parametro |

---

## DBAMV.CONTRATO_ADIANT_PRO_FAT
> Tabela para cadastro dos procedimentos do contrato

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONTRATO_ADIANT | NUMBER | N | Código do contrato de adiantamento |
| 2 | CD_CONVENIO | NUMBER | N | Código do Convenio no tipo de contrato procedimento |
| 3 | CD_CON_PLA | NUMBER | N | Código do Plano no tipo de contrato procedimento |
| 4 | CD_PRO_FAT | VARCHAR2 | N | Código do Procedimento no tipo de contrato procedimento |
| 5 | QUANTIDADE | NUMBER | N | Quantidade do procedimento no tipo de contrato procedimento |
| 6 | VL_PRO_FAT | NUMBER | N | Valor do procedimento no tipo de contrato procedimento |
| 7 | CD_TIP_ACOM | NUMBER | Y |  |
| 8 | CD_CONTRATO_ADIANT_PRO_FAT | NUMBER | N |  |
| 9 | CD_PERCENTUAL | NUMBER | Y | Percentual do procedimento |

---

## DBAMV.CONTRATO_MANUTENCAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONTRATO_MANUTENCAO | NUMBER | N |  |
| 2 | DS_CONTRATO_MANUTENCAO | VARCHAR2 | N |  |
| 3 | CD_FORNECEDOR | NUMBER | N |  |
| 4 | DT_INICIO | DATE | N |  |
| 5 | DT_TERMINO | DATE | Y |  |
| 6 | CD_USUARIO_RESPONSAVEL | VARCHAR2 | N |  |
| 7 | TP_SITUACAO | VARCHAR2 | N |  |
| 8 | VL_CONTRATO_MANUTENCAO | NUMBER | Y |  |
| 9 | NR_DIA_VENCIMENTO | NUMBER | Y |  |
| 10 | TP_PERIODO_PAGAMENTO | VARCHAR2 | N |  |
| 11 | DS_CLAUSULA | LONG | Y |  |
| 12 | CD_MULTI_EMPRESA | NUMBER | N |  |

---

## DBAMV.CONTRATO_MANUTENCAO_DOC
> Tabela onde serão salvos todos os Documentos vinculados há um Contrato de Manutenção do ACMA.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONTRATO_MANUTENCAO | NUMBER | N | Código do Contrato de Manutenção(Tabela DBAMV.CONTRATO_MANUTENCAO) que os arquivos estão vinculados |
| 2 | CD_CONTRATO_MANUTENCAO_DOC | NUMBER | N | Código da Sequence da tabela que faz parte da Chava Primária |
| 3 | DS_CONTRATO_MANUTENCAO_DOC | VARCHAR2 | Y | Descrição do documento anexado |
| 4 | LO_ANEXO_CONTRATO_MANUTENCAO | BLOB | Y | Conteúdo do documento anexado |

---

## DBAMV.CONTRATO_SUS
> Tabela de contratualizac?o.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONTRATO_SUS | NUMBER | N | Codigo do Contrato. |
| 2 | NR_CONTRATO | VARCHAR2 | N | Numero do Contrato. |
| 3 | TP_CONTRATO | VARCHAR2 | N | Tipo de Contrato. M= municipal ou E= estadual |
| 4 | DT_VIGENCIA_INI | DATE | N | Data de inicio de vigencia do contrato. |
| 5 | DT_VIGENCIA_FIM | DATE | Y | Data de final de  vigencia do contrato. |
| 6 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da empresa associada a contratualizac?o. |

---

## DBAMV.COTADOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_COTADOR | NUMBER | N |  |
| 2 | DS_COTADOR | VARCHAR2 | N |  |
| 3 | DS_ENDERECO_EMAIL | VARCHAR2 | Y |  |
| 4 | ENDERECO_EMAIL | VARCHAR2 | Y |  |
| 5 | SN_ATIVO | VARCHAR2 | Y |  |
| 6 | SN_ALTERAR_DT_MAXIMA | VARCHAR2 | N | Indica se o usuario pode alterar a data maxima da ordem Compra |
| 7 | CD_USUARIO | VARCHAR2 | Y | Guarda o usuário do Sistema que corresponde ao comprador |

---

## DBAMV.COTADOR_USUARIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_COTADOR | NUMBER | N |  |
| 2 | CD_ID_DO_USUARIO | VARCHAR2 | N |  |

---

## DBAMV.CTRL_ACESSO_FORCLI
> Controle de Acesso ao Cadastro de Fornecedores/Clientes.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CTRL_ACESSO_FORCLI | NUMBER | N | Codigo do Controle de Acesso do Fornecedor/Cliente. |
| 2 | CD_USUARIO | VARCHAR2 | Y | Codigo do Usuario do SGU. |
| 3 | CD_PAPEL | NUMBER | Y | Codigo do Papel do SGU. |
| 4 | TP_CLIENTE_FORN | VARCHAR2 | N | Tipo de Cliente/Fornecededor. |

---

## DBAMV.CTRL_APLC_COTA_SOL_PROD_EMP
> Tabela para controle da aplicação de cotas de ressuprimento na solicitação de produtos entre empresas

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CTRL_APLC_COTA_SOL_PROD_EMP | NUMBER | N | Chave de controle - Primary Key |
| 2 | DT_GERACAO_SOLICITACAO_PROD | DATE | Y | Chave de controle - Primary Key |
| 3 | TP_MOV_APLC_COTA_SOL_PROD_EMP | VARCHAR2 | N | Tipo do movimento(A - Solicitação automática usando JOB / S - Solicitação avulsa) |
| 4 | CD_SOLSAI_PRO | NUMBER | N | Código da Solicitação de Produtos |
| 5 | CD_SETOR_DESTINO | NUMBER | Y | Código do setor de destino da solicitação |
| 6 | CD_ESTOQUE_DESTINO | NUMBER | Y | Código do estoque de destino da solicitação |
| 7 | QT_QUANTIDADE_DIAS_REPOSICAO | NUMBER | Y | Quantidade de dias usada para verificar o consumo do produto no estoque de destino |

---

## DBAMV.DEV_FOR_HISTORICO
> Tabela de histório de devoluções ao fornecedor.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DEV_FOR_HISTORICO | NUMBER | N | Código do histórico. |
| 2 | CD_DEV_FOR_SIMBOLICA | NUMBER | Y | Código de devolução simbólica associada |
| 3 | TP_STATUS | VARCHAR2 | N | Status de processamento junto da integração. AE-Aguardando Emissão, EP-Emissão em Processamento, ... |
| 4 | DT_HISTORICO | DATE | N | Data do histórico |
| 5 | CD_USUARIO | VARCHAR2 | N | Usuário responsável pelo histórico |
| 6 | DS_HISTORICO | VARCHAR2 | Y | Descrição do histórico |

---

## DBAMV.DISPOSITIVO_USU_VERIFICACAO
> Tabela que armazena a solicitação de validação do dispositivo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DISPOSITIVO_USU_VERIFICACAO | NUMBER | N | Código sequencial único. |
| 2 | CD_DISPOSITIVO_USUARIO | NUMBER | N |  |
| 3 | NR_VERIFICACAO | VARCHAR2 | N | Número de verificação do dispositivo do usuário |
| 4 | DT_CRIACAO | DATE | N | Data de criação do número de verificação do dispositivo do usuário |
| 5 | DS_EMAIL | VARCHAR2 | N | Email para qual o n?mero de verificação foi enviado |
| 6 | SN_VALIDADO | VARCHAR2 | N | Indicador do status de validação do dispositivo |
| 7 | CD_USUARIO_INATIVACAO | VARCHAR2 | Y | Usuário responsável pela inativação do dispositivo |
| 8 | DT_INATIVACAO | DATE | Y | Data da inativação do dispositivo |
| 9 | SN_EMAIL_ENVIADO | VARCHAR2 | N | Indicador do status de envio do email de validação do dispositivo |

---

## DBAMV.ENCERRAMENTO_SOLICITACAO
> Tabela de motivos de encerramento da solicitação

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ENCERRAMENTO_SOLICITACAO | VARCHAR2 | N | C?igo do encerramento |
| 2 | DS_ENCERRAMENTO_SOLICITACAO | VARCHAR2 | N | Descrição do encerramento |
| 3 | TP_ENCERRAMENTO | VARCHAR2 | N | TIPOS DE ENCERRAMENTO: 0 - EXECUTANTE FORA DO GERINT  / 1 - TRANSFERIDO/INTERNADO COM COMPRA DE L... |

---

## DBAMV.ENQUA_TRIBU_FORN
> Enquadro Tributário Fornecedor

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ENQUA_TRIBU_FORN | NUMBER | N |  |
| 2 | CD_ENQUA_TRIBU | NUMBER | N | Chave estrangeira da tabela ENQUA_TRIBU |
| 3 | CD_FORNECEDOR | NUMBER | N | Chave estrangeira da tabela FORNECEDOR |

---

## DBAMV.ENTREGA_TIPO_SOLICITACAO_SETOR
> Tabela para armazenas as configurações de dias de entrega, minutos entrega por tipo de solicitação

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ENTREGA_TIPO_SOLICT_SET | NUMBER | N | Chave primária |
| 2 | CD_EXA_LAB | NUMBER | N | Código do exame |
| 3 | CD_SETOR | NUMBER | Y | Código do setor |
| 4 | NR_DIAS_ENTREGA | NUMBER | Y | Quantidade de dias para entrega do exame |
| 5 | NR_MINUTOS_ENTREGA | NUMBER | Y | Tempo médio utilizado no agendamento de exame. |
| 6 | TP_SOLICITACAO | VARCHAR2 | N | Tipo de solicitação do pedido de exame: R=Rotina, U=Urgência, E=Emergência |
| 7 | CD_ENTREGA_EXA_LAB_SETOR | NUMBER | N | PK da tabela entrega_exa_lab_setor |

---

## DBAMV.ENVIO_ACOMPANHAMENTO_ORDEM_CPR
> Usuarios que receberam emails encaminhados pelo Acompanhamento de ordem de compra (Follow-up)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ACOMPANHAMENTO_ORDEM_COMPRA | NUMBER | N | Codigo do Acompanhamento de Ordem de COmpra |
| 2 | CD_ENVIO_ACOMPANH_ORD_CPR | NUMBER | N | Codigo do Envio |
| 3 | DH_ENVIO | DATE | N | Data e hora em que o envio foi efetuado |
| 4 | CD_USUARIO | VARCHAR2 | N | usuario que recebeu o encaminhamento |
| 5 | TP_STATUS | VARCHAR2 | N | Status do Envio: Pendente, Respondido |

---

## DBAMV.ESPECIE_CLASSE_SUBCLASSE_UNIF
> Especies, Classes e Sub_classes que ter?o seus dados unificados na Central de Compras

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_HOSPITAL | NUMBER | N | Codigo do Hospital no qual a especie, classe e sub-classe esta cadastrada |
| 2 | CD_ESPECIE_CENTRAL | NUMBER | N | Codigo da Especie no cadastro da Central de Compras |
| 3 | CD_CLASSE_CENTRAL | NUMBER | N | Codigo da Classe no cadastro da Central de Compras |
| 4 | CD_SUB_CLA_CENTRAL | NUMBER | N | Codigo da Sub-Classe no cadastro da Central de Compras |
| 5 | CD_ESPECIE_HOSPITAL | NUMBER | N | Codigo da especie no cadastro do Hospital |
| 6 | CD_CLASSE_HOSPITAL | NUMBER | N | Codigo da Classe no cadastro do Hospital |
| 7 | CD_SUB_CLA_HOSPITAL | NUMBER | N | Codigo da Sub-Classe no cadastro do Hospital |

---

## DBAMV.ESPECIE_COTADOR
> Tabela que guarda as espécies as quais o comprador está autorizado a comprar

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_COTADOR | NUMBER | N | Guarda o código do cotador |
| 2 | CD_ESPECIE | NUMBER | N | Guarda o código da espécie |

---

## DBAMV.ESTERILIZA_SOLICITACAO_CME
> [MGCE] Tabela relacional entre esterilização e solicitação de esterilização.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ESTERILIZA | NUMBER | N | Código da esterilização. |
| 2 | CD_SOLICITACAO_CME | NUMBER | N | Código da solicitação de esterilização. |

---

## DBAMV.FORNECEDOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FORNECEDOR | NUMBER | N |  |
| 2 | NM_FORNECEDOR | VARCHAR2 | N |  |
| 3 | NM_FANTASIA | VARCHAR2 | N |  |
| 4 | TP_FORNECEDOR | VARCHAR2 | N |  |
| 5 | DS_ENDERECO | VARCHAR2 | N |  |
| 6 | NR_CGC_CPF | NUMBER | N |  |
| 7 | DS_AGENCIA | VARCHAR2 | Y |  |
| 8 | DS_BAIRRO | VARCHAR2 | Y |  |
| 9 | NR_CEP | VARCHAR2 | Y |  |
| 10 | NR_CONTA | VARCHAR2 | Y |  |
| 11 | NM_CONTATO | VARCHAR2 | Y |  |
| 12 | CD_BANCO | NUMBER | Y |  |
| 13 | CD_CIDADE | NUMBER | N |  |
| 14 | NR_INSC_EST | VARCHAR2 | Y |  |
| 15 | CD_AGENCIA | VARCHAR2 | Y |  |
| 16 | SN_ATIVO | VARCHAR2 | N |  |
| 17 | TP_CLIENTE_FORN | VARCHAR2 | N |  |
| 18 | TP_PAGAMENTO | VARCHAR2 | Y |  |
| 19 | CD_SETOR | NUMBER | Y |  |
| 20 | SN_UTILIZA_INTERNET | VARCHAR2 | N |  |
| 21 | DS_ANEXO_DOCUMENTO | LONG RAW | Y |  |
| 22 | DS_SENHA_INTERNET | VARCHAR2 | Y |  |
| 23 | DS_ENDERECO_EMAIL | VARCHAR2 | Y |  |
| 24 | DS_USERNAME_INTERNET | VARCHAR2 | Y |  |
| 25 | SN_ALT_DADOS_ORA_APP | VARCHAR2 | N |  |
| 26 | CD_RANKING | NUMBER | Y |  |
| 27 | DS_ATRIBUTO1 | VARCHAR2 | Y |  |
| 28 | QT_DIAS_AVALIACAO | NUMBER | Y |  |
| 29 | SN_FORNECE_OPM | VARCHAR2 | N |  |
| 30 | SN_COBRANCA_FORNEC | VARCHAR2 | N |  |
| 31 | DT_IMPORTACAO_SAP | DATE | Y |  |
| 32 | TP_CALCULO_IPI | VARCHAR2 | N |  |
| 33 | CD_SISTEMA_INTEGRADO | VARCHAR2 | Y |  |
| 34 | SN_OPERADOR | VARCHAR2 | Y |  |
| 35 | NR_MATRICULA | VARCHAR2 | Y |  |
| 36 | CD_FORNECEDOR_INTEGRA | VARCHAR2 | Y |  |
| 37 | DT_INTEGRA | DATE | Y |  |
| 38 | CD_SEQ_INTEGRA | NUMBER | Y |  |
| 39 | NR_INSCRICAO_INSS | NUMBER | Y |  |
| 40 | NR_PIS_PASEP | NUMBER | Y |  |
| 41 | NR_INSC_MUN | VARCHAR2 | Y |  |
| 42 | DS_RUA | VARCHAR2 | Y | Armazena o tipo da Rua do Fornecedor. |
| 43 | NR_ENDERECO | VARCHAR2 | Y | Numero do endereco do fornecedor |
| 44 | DS_COMPLEMENTO | VARCHAR2 | Y | Complemento do endereco do fornecedor |
| 45 | QT_DEPENDENTES | NUMBER | Y | Indica a Quantidade de Dependentes deste Fornecedor |
| 46 | DS_CBO | VARCHAR2 | Y | Informac?o do Codigo do CBO |
| 47 | CD_CONSTITUICAO_EMPRESA | NUMBER | Y |  |
| 48 | SN_CESSAO_CREDITO | VARCHAR2 | Y | Sinaliza se o fornecedor tera seu credito cessado. |
| 49 | SN_VALOR_ACORDADO | VARCHAR2 | Y | Identifica se o fornecedor trabalha com valores acordado de vendas |
| 50 | DV_AGENCIA | VARCHAR2 | Y | Digito verificador da agencia |
| 51 | DV_CONTA_CORRENTE | VARCHAR2 | Y | Digito Verificador da Conta Corrente |
| 52 | DT_INCLUSAO | DATE | Y | Data de inclus?o do fornecedor no MV |
| 53 | NR_REGISTRO_ANVISA | NUMBER | Y | Numero do Registro da Fornecedor na Anvisa. |
| 54 | DS_DOCUMENTO | VARCHAR2 | Y |  |
| 55 | SN_SIMPLES | VARCHAR2 | Y | Indica se o fornecedor e optante do simples nacional |
| 56 | CD_ENDERECO_POSTAL | VARCHAR2 | Y | Campo para registrar o CEP internacional |
| 57 | CD_IDENTIFICADOR_PESSOA | VARCHAR2 | Y | Campo para registrar o CPF/CNPJ internacional |
| 58 | CD_ESTADO_FORNECEDOR | VARCHAR2 | Y | CAMPO PARA REGISTRAR O ESTADO |
| 59 | CD_SIMPLES_NACIONAL | VARCHAR2 | Y | Situac?o do fornecedor para DES |
| 60 | NR_CONTRIBUINTE | VARCHAR2 | Y | Numero do contribuinte.  Esse numero equivalente ao CNPJ no Brasil |
| 61 | CD_AFE | VARCHAR2 | Y | Codigo da AFE - Autorizac?o de Funcionamento de Empresas da ANVISA |
| 62 | NR_CNES | VARCHAR2 | Y | Numerac?o do codigo do CNES do fornecedor. |
| 63 | SN_PERMITE_INTO | VARCHAR2 | Y | VERIFICA SE O FORNECEDOR E DO TIPO INTO |
| 64 | TP_STATUS_UNIFICADO | VARCHAR2 | N | Indica o status do fornecedor unificado. N=Novo, M=Modificado, D=Disponivel, U=Unificado e A=Antigo |
| 65 | CD_FORNECEDOR_NOVO | NUMBER | Y | Indica o codigo fornecedor novo do fornecedor quando e unificado. |
| 66 | DS_LOGRADOURO | VARCHAR2 | Y |  |
| 67 | DT_NASCIMENTO | DATE | Y | Data de nascimento da pessoa fisica. |
| 68 | NR_CCM | VARCHAR2 | Y | Numero do CCM. |
| 69 | NR_REGISTRO | VARCHAR2 | Y | Número do registro (RG ou Registro Individual). |
| 70 | CD_SITUACAO_ESPECIAL_RESPONSA | VARCHAR2 | Y | Código da Situação Especial de Responsabilidade |
| 71 | CD_MOTIVO_NAO_RETENCAO | VARCHAR2 | Y | Código do Motivo de Não Retenção |
| 72 | CD_PAIS | NUMBER | Y | Campo para registra o pais do fornecedor |
| 73 | STATUS_FORNECEDOR | VARCHAR2 | N | "Aprovado", "Em Análise" ou "Bloqueado" |
| 74 | CD_PAIS_BACEN | VARCHAR2 | Y | Codigo do pais junto ao bacen |
| 75 | NR_NACIONALIDADE | VARCHAR2 | Y | Sinaliza se a empresa é nacional ou extrangeira |
| 76 | NR_CGC_CPF_MATRIZ | NUMBER | Y |  |
| 77 | CD_CNAE | NUMBER | Y | Cdigo do registro |
| 78 | TP_CONTRIBUICAO_REINF | VARCHAR2 | Y | Destino da Contribuição Previdenciária Reinf |
| 79 | TP_IND_AQUISICAO_REINF | VARCHAR2 | Y | Indicativo de Aquisição de Produção Rural |
| 80 | DS_CHAVE_PIX | VARCHAR2 | Y | Chave Pix do fornecedor |
| 81 | NM_SOCIAL_FORNECEDOR | VARCHAR2 | Y | Nome social fornecedor |
| 82 | SN_DEDUCAO_SIMP | VARCHAR2 | Y | Tipo de Deducao |
| 83 | TP_ENTE_GOV | VARCHAR2 | Y | Tipo Ente Governamental. |

---

## DBAMV.FORNECEDOR_ANVISA
> Tabela de importac?o dos Fornecedores da ANVISA, atraves de carga.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NR_CNPJ | NUMBER | N | Numero do CNPJ do fornecedor. |
| 2 | DT_VALIDADE_INICIAL | DATE | N | Inicio da validade do fornecedor Anvisa |
| 3 | DT_VALIDADE_FINAL | DATE | Y | Final da validade do fornecedor Anvisa |
| 4 | NM_RAZAO_SOCIAL | VARCHAR2 | N | Campo com a raz?o solical |
| 5 | NM_FANTASIA | VARCHAR2 | Y | Campo com a descric?o do nome fantasia. |
| 6 | DT_COMPETENCIA | DATE | N | Competencia do arquivo que foi importado o fornecedor. |
| 7 | SN_ATIVO | VARCHAR2 | Y | Campo de controle de carga. |

---

## DBAMV.FORNECEDOR_CATEGORIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FORNECEDOR | NUMBER | N |  |
| 2 | CD_CATEGORIA_FORN | NUMBER | N |  |

---

## DBAMV.FORNECEDOR_COND_PAGAMENTO
> Tabela para configurac?o de condic?o pagto de fornecedor por empresa

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FORNECEDOR_COND_PAGTO | NUMBER | N | Codigo de condic?o de pagamento |
| 2 | CD_MULTI_EMPRESA | NUMBER | Y | Codigo da empresa |
| 3 | CD_FORNECEDOR | NUMBER | N | Codigo do fornecedor |
| 4 | CD_CONDICAO_PAGAMENTO | NUMBER | N |  |

---

## DBAMV.FORNECEDOR_EMP_TRANSACAO
> Tabela Transac?o Entre Fornecedores Entre Empresas

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FORNECEDOR | NUMBER | N | Codigo do Fornecedor |
| 2 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da Empresa que recebeu o lancamento |
| 3 | TP_TRANSACAO | VARCHAR2 | N | Tipo de Transac?o Entre Fornecedores entre Empresas |
| 4 | CD_REDUZIDO | NUMBER | N | Codigo Reduzido Transitoria do Desconto/Acrescimo |
| 5 | CD_MULTI_EMPRESA_ORIGEM | NUMBER | N | Codigo da Empresa que Originou o lancamento |

---

## DBAMV.FORNECEDOR_LOGRADOURO
> Tabela para cadastrar os enderecos dos fornecedores

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FORNECEDOR_LOGRADOURO | NUMBER | N | Codigo do endereco |
| 2 | CD_FORNECEDOR | NUMBER | N | Codigo do fornecedor |
| 3 | DS_ENDERECO | VARCHAR2 | N | Endereco do fornecedor |
| 4 | NR_ENDERECO | VARCHAR2 | Y | Numero do endereco do fornecedor |
| 5 | DS_BAIRRO | VARCHAR2 | Y | Bairro do fornecedor |
| 6 | CD_CIDADE | NUMBER | N | Codigo da cidade do fornecedor |
| 7 | NR_CEP | VARCHAR2 | Y | CEP do fornecedor |
| 8 | SN_ENVIO_EMAIL | VARCHAR2 | Y | Envio de cobranca por E-mail |
| 9 | SN_ATIVO | VARCHAR2 | Y | Situacao do cadastro |
| 10 | CD_ENDERECO_POSTAL | VARCHAR2 | Y | Campo para registrar o CEP internacional |
| 11 | CD_ESTADO_FORNECEDOR_LOG | VARCHAR2 | Y | CAMPO PARA REGISTRAR O ESTADO |

---

## DBAMV.FORNECEDOR_MSG_BOLETO
> Tipos de Mensagens de Boleto

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FORN_MSG_BOLETO | NUMBER | N | Chave Primaria |
| 2 | CD_FORNECEDOR | NUMBER | Y | Chave Secundaria - Codigo do Fornecedor |
| 3 | DS_MSG_BOLETO_ATRASO | VARCHAR2 | Y | Mensagem de Atraso no boleto |
| 4 | DS_MSG_BOLETO_SERVICOS | VARCHAR2 | Y | Mensagem de Servicos no boleto |
| 5 | DS_MSG_BOLETO_REAJUSTE | VARCHAR2 | Y | Mensagem de Reajuste no boleto |
| 6 | DS_MSG_BOLETO_SACADO | VARCHAR2 | Y | Mensagem de Sacado no boleto |
| 7 | DS_MSG_BOLETO | VARCHAR2 | Y | Mensagem do  boleto |

---

## DBAMV.FORNECEDOR_NR_DOCUMENTO
> Tabela de Sequencial do Número do Documento por Fornecedor

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MULTI_EMPRESA | NUMBER | N | Código da multi empresa. |
| 2 | CD_FORNECEDOR | NUMBER | N | Código da Nota de Crédito proveniente suprimentos. |
| 3 | NR_DOCUMENTO_SEQ | NUMBER | N | Código da Nota de Crédito/Débito Emitida pelo Faturamento. |

---

## DBAMV.FORNECEDOR_RELATORIO_SCCOM
> Importac?o de dados para consolidac?o de relatorios de Fornecedor

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FORNECEDOR | NUMBER | N | codigo do fornecedor |
| 2 | CD_HOSPITAL | VARCHAR2 | N | codigo do hospital que originou a exportac?o do registro |
| 3 | NM_FORNECEDOR | VARCHAR2 | Y | Nome/Raz?o social do fornecedor |
| 4 | NM_FANTASIA | VARCHAR2 | Y | Nome fantasia |
| 5 | TP_FORNECEDOR | VARCHAR2 | Y | Tipo de fornecedor |
| 6 | DS_ENDERECO | VARCHAR2 | Y | Endereco do forncedor |
| 7 | NR_ENDERECO | VARCHAR2 | Y | numero do endereco |
| 8 | DS_COMPLEMENTO | VARCHAR2 | Y | complemento do endereco |
| 9 | NR_CEP | VARCHAR2 | Y | CEP do fornecedor |
| 10 | CD_CIDADE | NUMBER | Y | Codigo da cidade onde se localiza o fornecedor |
| 11 | NR_CGC_CPF | NUMBER | Y | CPF/CNPJ do fornecedor |
| 12 | NR_INSC_EST | VARCHAR2 | Y | Inscric?o Estadual |
| 13 | SN_ATIVO | VARCHAR2 | Y | Indicador de ativo/inativo |
| 14 | CD_BANCO | NUMBER | Y | Codigo do banco da conta do fornecedor |
| 15 | DS_AGENCIA | VARCHAR2 | Y | Agencia da conta do fornecedor |
| 16 | NR_CONTA | VARCHAR2 | Y | Conta do fornecedor |

---

## DBAMV.FORNECEDOR_SER_SOL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FORNECEDOR | NUMBER | N |  |
| 2 | CD_SER_SOL | NUMBER | N |  |

---

## DBAMV.FORNECEDOR_UNIFICADO
> fornecedores que ter?o seus dados unificados na Central de Compras

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_HOSPITAL | NUMBER | N | Codigo do Hospital no qual o fornecedor esta cadastrado |
| 2 | CD_FORNECEDOR_CENTRAL | NUMBER | N | Codigo do fornecedor no cadastro da Central de Compras |
| 3 | CD_FORNECEDOR_HOSPITAL | NUMBER | N | Codigo do fornecedor no cadastro do Hospital |

---

## DBAMV.FORNEC_CONTA_ORCA
> Contas orçamentárias por fornecedor.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FORNECEDOR | NUMBER | N | Código do fornecedor. |
| 2 | CD_ORCA_CONTA | NUMBER | N | Código da conta orçamentária. |

---

## DBAMV.FORNEC_COTACAO_PROCES_CPR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SOL_COM | NUMBER | N | Código da solicitacao |
| 2 | CD_FORNECEDOR | NUMBER | N | Código do fornecedor |
| 3 | CD_ANEXOS_CENTRAL | VARCHAR2 | Y | Armazena uma lista com os codigos dos anexos enviados para cotação |

---

## DBAMV.FORNEC_COTACAO_PROCES_CPR_PROD

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SOL_COM | NUMBER | N | código da solicitacao |
| 2 | CD_FORNECEDOR | NUMBER | N | codigo do fornecedor |
| 3 | CD_PRODUTO | NUMBER | Y | codigo dos produtos da solicitacao |
| 4 | DS_PRODUTO | VARCHAR2 | N | descricao dos produtos da solicitacao |
| 5 | CD_UNI_PRO | NUMBER | Y | codigo da unidade dos produtos da solicitacao |
| 6 | QT_SOLIC | NUMBER | Y |  |
| 7 | SN_COTADO | VARCHAR2 | N | informa se o produto será cotado |

---

## DBAMV.FORNEC_DOC_COMPRAS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FORNEC_DOC_COMPRAS | NUMBER | N |  |
| 2 | CD_FORNECEDOR | NUMBER | N |  |
| 3 | CD_DOC_COMPRAS | NUMBER | N |  |
| 4 | DT_EFETIVACAO | DATE | N |  |
| 5 | DT_VALIDADE | DATE | Y |  |
| 6 | STATUS_DOC_FORN | VARCHAR2 | N | "A"guardando Doc., "N"ão Enviado, "V"álido", A Vence"r" e Ven"c"ido |
| 7 | DS_OBSERVACAO | VARCHAR2 | Y | Observação para registrar as mudanças de status do documento. Cada linha terá o formato: "data - ... |
| 8 | NR_DIAS_AVISO_VENCIMENTO | NUMBER | Y | quantidade de dias antes do vencimento do documento quando deve começar a emissão de alerta nas t... |
| 9 | DS_DOCUMENTO | VARCHAR2 | Y | Nome do documento a ser validado |
| 10 | DS_ANEXO_DOCUMENTO | LONG RAW | Y | Documento a ser anexado |

---

## DBAMV.FORN_CC_CHAVE_PIX
> TABELA DE VINCULO ENTRE FORNECEDOR E PIX

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FORN_CC_CHAVE_PIX | NUMBER | N | CHAVE PRIMARIA DA TABELA |
| 2 | CD_FORN_CONTA_CORRENTE | NUMBER | N | CODIGO DA CONTA CORRENTE DO FORNECEDOR |
| 3 | TP_CHAVE_PIX | VARCHAR2 | N | TIPO DA CHAVE PIX |
| 4 | DS_CHAVE_PIX | VARCHAR2 | N | CHAVE PIX |
| 5 | SN_CHAVE_PADRAO | VARCHAR2 | N | DEFINE SE A CHAVE E OU N?O UMA CHAVE PADR?O |
| 6 | DT_ATIVACAO | DATE | N | DATA DE ATIVAC?O |
| 7 | SN_ATIVA | VARCHAR2 | N | A CHAVE SE ENCONTRA ATIVA ? |

---

## DBAMV.FORN_CONTA_CORRENTE
> Fornecedor Conta Corrente

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FORNECEDOR | NUMBER | N | Codigo do Fornecedor |
| 2 | CD_FORN_CONTA_CORRENTE | NUMBER | N |  |
| 3 | NR_CONTA | VARCHAR2 | Y | Numero da Conta Corrente |
| 4 | CD_BANCO | NUMBER | Y | Codigo do Banco |
| 5 | CD_AGENCIA | VARCHAR2 | Y | Codigo da Agencia |
| 6 | DS_AGENCIA | VARCHAR2 | Y | Nome da Agencia |
| 7 | SN_ATIVO | VARCHAR2 | N | Informa se a Conta Corrente esta ativa |
| 8 | DV_AGENCIA | VARCHAR2 | Y | Digito verificador da agencia |
| 9 | DV_CONTA_CORRENTE | VARCHAR2 | Y | Digito Verificador da Conta Corrente |
| 10 | NR_IBAN | VARCHAR2 | Y | Numero Internacional de Conta Bancaria |
| 11 | SN_PADRAO | VARCHAR2 | Y | Define se e a conta corrente padr?o do fornecedor |
| 12 | TP_CONTA | VARCHAR2 | Y | Tipo de conta do fornecedor. |
| 13 | NR_CGC_CPF | VARCHAR2 | Y | Numero do CPF ou CNPJ |
| 14 | NM_RESPONSAVEL_CC | VARCHAR2 | Y | Descricao do nome do responsavel por conta corrente |

---

## DBAMV.FORN_GRUPO
> Tabela para armazenar vinculos de fornecedores com CNPJ diferentes e validação na tela prestação de contas

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FORN_GRUPO | NUMBER | Y | Código para vinculo dos fornecedores |
| 2 | CD_FORNECEDOR | NUMBER | Y | Código do fornecedor pai |
| 3 | CD_FORNECEDOR_GRUPO | NUMBER | Y | Código do fornecedor filho |
| 4 | CD_MULTI_EMPRESA | NUMBER | Y | Código da empresa |
| 5 | SN_PREST_CONT | VARCHAR2 | Y | Chave para verificar se na tela de prestação de contas vai consumir dados dessa tabela |
| 6 | DS_CPFCNPJ | VARCHAR2 | Y | CNPJ/CPF |
| 7 | DS_RAZAO_SOCIAL | VARCHAR2 | Y | Nome do fornecedor |
| 8 | NM_FANTASIA | VARCHAR2 | Y | Nome fantasia do fornecedor |

---

## DBAMV.FORN_SETOR
> Setor do Fornecedor por empresa

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FORNECEDOR | NUMBER | N | Fornecedor |
| 2 | CD_SETOR | NUMBER | N | Setor |
| 3 | CD_MULTI_EMPRESA | NUMBER | N | Empresa |

---

## DBAMV.GCTO_APONTAMENTO
> Apontamentos por Item (*M*)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_APONTAMENTO | NUMBER | N | Código do apontamento |
| 2 | CD_OCORRENCIA | NUMBER | N | Código da ocorrência do apontamento |
| 3 | CD_CONTRATO_ITEM | NUMBER | N | Código do item de contrato |
| 4 | CD_ITEM | NUMBER | N | Código do item |
| 5 | CD_FORNECEDOR | NUMBER | Y | Código do fornecedor |
| 6 | CD_ORD_COM | NUMBER | Y | Código da ordem de compras |
| 7 | CD_ANO_COMPETENCIA | NUMBER | Y |  |
| 8 | CD_MES_COMPETENCIA | NUMBER | Y |  |
| 9 | SN_EXCEDENTE | VARCHAR2 | N | Item excedente (S/N)? |
| 10 | SN_GERA_PEDIDO | VARCHAR2 | N | Gera pedido de compras (S/N)? |
| 11 | QT_APONTADA | NUMBER | N | Quantidade apontada |
| 12 | VL_UNITARIO | NUMBER | N | Valor unitário apontado |
| 13 | CD_UMED_APONTAMENTO | NUMBER | N | Unidade de medida do apontamento |

---

## DBAMV.GCTO_APONTA_PROD
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

---

## DBAMV.GCTO_ARQUIVO
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

## DBAMV.GCTO_AUDITORIA
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

## DBAMV.GCTO_AUDITORIA_ITEM

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

## DBAMV.GCTO_CONTRATO
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
| 39 | TP_AREA | VARCHAR2 | N | Tipo da área |
| 40 | DS_MENS_ASSUNTO | VARCHAR2 | Y | Título da mensagem automática |
| 41 | DS_MENS_MENSAGEM | VARCHAR2 | Y | Texto da Mensagem Automática |
| 42 | QT_DIAS_ALERTA_VCTO | NUMBER | Y | Quantidade de dias para alerta de vencimento. |
| 43 | TX_CONTRATO | VARCHAR2 | Y |  |
| 44 | SN_MULTA | VARCHAR2 | N | Indicacor de multa. S-'SIM' e N-'NÃO' |
| 45 | QT_DIAS_MULTA | NUMBER | Y | Dias de carência. |
| 46 | QT_ADITIVOS | NUMBER | Y | Quantidade de Aditivação |
| 47 | SN_RENOVADO | VARCHAR2 | Y | Indicador de renovado |
| 48 | SN_GERA_FINANCEIRO | VARCHAR2 | N | Indicacor de gerar financeiro. S-'SIM' e N-'NÃO'. |
| 49 | SN_VINCULO | VARCHAR2 | N | Indicacor se gera vínculo. S-'SIM' e N-'NÃO'. |

---

## DBAMV.GCTO_CONTRATO_ARQU
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

## DBAMV.GCTO_CONTRATO_EVEN
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

## DBAMV.GCTO_CONTRATO_FORM
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

## DBAMV.GCTO_CONTRATO_ITEM
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
| 26 | VL_MARGEM_EXCED | NUMBER | Y |  |
| 27 | CD_PROJETO_ETAPA | NUMBER | Y | Etapa do projeto |
| 28 | CD_ESPECIE | NUMBER | Y |  |
| 29 | CD_CLASSE | NUMBER | Y |  |
| 30 | CD_SUB_CLA | NUMBER | Y |  |

---

## DBAMV.GCTO_CONTRATO_NOTA
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

## DBAMV.GCTO_CONTRATO_PARC
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

---

## DBAMV.GCTO_CONTRATO_PERI
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

## DBAMV.GCTO_CONTRATO_PROJ
> Tabela de associação do projeto ao contrato.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONTRATO_PROJ | NUMBER | N | Sequencial da tabela. |
| 2 | CD_CONTRATO | NUMBER | N | Código do contrato. |
| 3 | CD_PROJETO | NUMBER | N | Código do projeto. |
| 4 | VL_RATEIO | NUMBER | Y | Valor do rateio em percentual. |

---

## DBAMV.GCTO_CONTRATO_RATE
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

---

## DBAMV.GCTO_CONTRATO_SLA
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

## DBAMV.GCTO_CONTRATO_STAT
> eventos de Contrato (*M*)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONTRATO | NUMBER | N | Código do contrato |
| 2 | DH_STATUS | DATE | N | Data e hora do início do status |
| 3 | CD_STATUS | VARCHAR2 | N | Código do status |
| 4 | CD_USUARIO | VARCHAR2 | N | Código do usuário do status |

---

## DBAMV.GCTO_CONTRATO_SUPR
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

## DBAMV.GCTO_CONTRATO_TEXT
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

## DBAMV.GCTO_CONTRATO_UNEG
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

## DBAMV.GCTO_CONTRATO_USUA
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

## DBAMV.GCTO_CONTRATO_VINC
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

## DBAMV.GCTO_COTACAO

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

## DBAMV.GCTO_DATA
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

## DBAMV.GCTO_DATA_EMPR
> datas por Empresa (*M*)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DATA | VARCHAR2 | N | Código do data |
| 2 | SN_ATIVO | VARCHAR2 | N | Disposição do data na empresa |
| 3 | CD_MULTI_EMPRESA | NUMBER | N | Código da empresa |

---

## DBAMV.GCTO_EVENTO
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

## DBAMV.GCTO_FORNECEDOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FORNECEDOR | NUMBER | N | Código do fornecedor |
| 2 | DS_FORNECEDOR | VARCHAR2 | Y | Descrição do fornecedor |
| 3 | NM_CONTATO | VARCHAR2 | Y | Nome do contato |
| 4 | NR_FONE | VARCHAR2 | N | Número para contato |
| 5 | DS_EMAIL | VARCHAR2 | Y | E-Mail para contato |
| 6 | NR_CPF | VARCHAR2 | Y | CPF do forncedor |
| 7 | NR_CNPJ | VARCHAR2 | Y | CNPJ do fornecedor |
| 8 | CD_FORNECEDOR_MV | NUMBER | Y | Código do fornecedor da mv ref dbamv.FORNECEDOR |
| 9 | DH_INSERT | DATE | N | Data e hora do insert do registro |
| 10 | CD_USUARIO_INSERT | VARCHAR2 | N | Usuário do insert do registro |

---

## DBAMV.GCTO_FORUM
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

## DBAMV.GCTO_FORUM_USUA
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

## DBAMV.GCTO_GESTAO
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
| 11 | SN_FINALIZA_DISCUSSAO | VARCHAR2 | Y | Permite Finalizar discussao Contrato |
| 12 | SN_PERMITE_INCL | VARCHAR2 | N | Permite Incluir novo contrato |
| 13 | SN_PERMITE_SUSP | VARCHAR2 | N | Permite Suspender Contrato |
| 14 | SN_PERMITE_CANC | VARCHAR2 | N | Permite cancelar contrato |
| 15 | SN_PERMITE_APON | VARCHAR2 | N | Permite Apontamento |
| 16 | SN_PERMITE_APRV | VARCHAR2 | N | Permite Aprovar Contrato |
| 17 | CD_SETOR | NUMBER | Y | Setor da gestão |
| 18 | SN_PERMITE_ADIT | VARCHAR2 | N | Permite Aditivar Contrato |
| 19 | SN_PERMITE_RENV | VARCHAR2 | N | Permite Renovar Contrato |
| 20 | SN_PERMITE_ATIV | VARCHAR2 | N | Permite Ativacao Contrato |

---

## DBAMV.GCTO_INDICADOR
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

## DBAMV.GCTO_INDICADOR_VAL
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

## DBAMV.GCTO_ITCOTACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IT_COTACAO | NUMBER | N | Código do item da cotação |
| 2 | CD_COTACAO | NUMBER | N | Código da cotação |
| 3 | CD_FORNECEDOR | NUMBER | N | Código do fornecedor ref. dbamv.gcto_fornecedor |
| 4 | DH_REGISTRO | DATE | N | Data do registro da cotação |
| 5 | NR_VALOR | NUMBER | N | Valor cotado |
| 6 | DH_INSERT | DATE | N | Data de criação do item |
| 7 | CD_USUARIO_INSERT | VARCHAR2 | N | Usuário do insert do registro |
| 8 | SN_SELECIONADO | VARCHAR2 | N | Usu?rio do insert do registro |

---

## DBAMV.GCTO_ITLOTE_APONTAMENTO
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

---

## DBAMV.GCTO_LOG
> Ocorrência de Contrato (*M*)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOG | NUMBER | N | Código do log |
| 2 | CD_MODULO | VARCHAR2 | N |  |
| 3 | CD_TABELA | VARCHAR2 | N | Código da tabela rastreada |
| 4 | CD_CHAVE | VARCHAR2 | N | Código do registro da tabela rastreada |
| 5 | TP_LOG | VARCHAR2 | N | Tipo de log |
| 6 | DH_LOG | DATE | N | Data e hora do log |
| 7 | CD_USUARIO | VARCHAR2 | N | Código do usuário do log |
| 8 | HA | VARCHAR2 | N |  |
| 9 | HB | VARCHAR2 | N |  |

---

## DBAMV.GCTO_LOTE
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

---

## DBAMV.GCTO_LOTE_APONTAMENTO
> Nova tabela de lote de apontamentos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOTE | NUMBER | N | Código do Lote |
| 2 | DS_LOTE | VARCHAR2 | N | Descrição do Lote |
| 3 | TP_STATUS | VARCHAR2 | N | Status: Aberto, Fechado, Liberado |
| 4 | CD_EVENTO | NUMBER | Y | Evento ligado ao lote de apontamento |
| 5 | DH_LIBERACAO | DATE | Y | Data e hora da liberação |
| 6 | CD_USUARIO_LIBEROU | VARCHAR2 | Y | Usuário que liberou |

---

## DBAMV.GCTO_MENSAGEM
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

---

## DBAMV.GCTO_MENSAGEM_LIDA
> Tabela de mensagens lidas por usuário (*M*)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MENSAGEM | NUMBER | N | Código da mensagem |
| 2 | CD_USUARIO | VARCHAR2 | N | Usuário que leu a mensagem |
| 3 | DH_LIDO | DATE | N | Data e hora da leitura da mensagem pelo usuário |

---

## DBAMV.GCTO_MENSAGERIA
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

## DBAMV.GCTO_MENSAGERIA_ANEX
> Anexo da mensagem

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MENSAGERIA_ANEX | NUMBER | N | Código do anexo da mensagem |
| 2 | CD_MENSAGERIA | NUMBER | N | Código da mensagem |
| 3 | CD_ANEXO | VARCHAR2 | N | Código do anexo |
| 4 | DS_MENSAGERIA_ANEX | VARCHAR2 | Y | Descrição do anexo |
| 5 | FI_DIGITALIZADO | BLOB | Y | Campo de imagem do anexo |

---

## DBAMV.GCTO_MENSAGERIA_DEST
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

## DBAMV.GCTO_MODELO_EMPR
> Tabela de associação do modelo a empresa

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MODELO_EMPR | NUMBER | N |  |
| 2 | CD_CONTRATO | NUMBER | N | Código do contrato |
| 3 | CD_MULTI_EMPRESA | NUMBER | N | Código da empresa |
| 4 | CD_SETOR | NUMBER | Y | Código do setor |
| 5 | SN_ATIVO | VARCHAR2 | N | Se está ativo ou não |

---

## DBAMV.GCTO_MODULO_NOTA
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

## DBAMV.GCTO_MOTIVO
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

## DBAMV.GCTO_MOTIVO_EMPR
> motivos por Empresa (*M*)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MOTIVO | NUMBER | N | Código do motivo |
| 2 | SN_ATIVO | VARCHAR2 | N | Disposição do motivo na empresa |
| 3 | CD_MULTI_EMPRESA | NUMBER | N | Código da empresa |

---

## DBAMV.GCTO_OCORRENCIA
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

## DBAMV.GCTO_ORD_COM_SERV
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

## DBAMV.GCTO_PARADA
> Tabela de Parada Obrigatoria do GCTO (*M*)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GCTO_PARADA | NUMBER | N | Código da Parada Obrigatória |
| 2 | DH_PARADA_INICIO | DATE | N | Data/Hora de inicio da parada |
| 3 | DH_PARADA_FINAL | DATE | N | Data/Hora de fim da parada |
| 4 | SN_PARADA_ATIVO | VARCHAR2 | N | se parada ativa |
| 5 | TXT_PARADA_AVISO | VARCHAR2 | N | texto da parada obrigatoria |

---

## DBAMV.GCTO_STATUS
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

## DBAMV.GCTO_STATUS_EMPR
> statuss por Empresa (*M*)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_STATUS | VARCHAR2 | N | Código do status |
| 2 | QT_DIAS_ATRASO | NUMBER | Y | Quantidade de dias de atraso |
| 3 | SN_ATIVO | VARCHAR2 | N | Disposição do status na empresa |
| 4 | CD_MULTI_EMPRESA | NUMBER | N | Código da empresa |

---

## DBAMV.GCTO_TAGS
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

## DBAMV.GCTO_TEXTO
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

## DBAMV.GCTO_TIPO
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
| 11 | TP_FINANCEIRO | VARCHAR2 | N | Tipo financeiro referente |
| 12 | SN_PERMITE_APONTA | VARCHAR2 | N | Permite apontamento |
| 13 | SN_GERA_FINANCEIRO | VARCHAR2 | N | Gera Financeiro |
| 14 | CD_TIPO_DOCUMENTO | NUMBER | Y | Tipo da documento |
| 15 | CD_SETOR | NUMBER | Y | Setor |
| 16 | CD_PROCESSO | NUMBER | Y | Código do Processo |
| 17 | TP_AREA | VARCHAR2 | N | Tipo da área |
| 18 | SN_GERA_OCOMPRA | VARCHAR2 | N | Gera Ordem de Compra ? |
| 19 | QT_DIAS_ALERTA_VCTO | NUMBER | Y | Quantidade de dias para alerta de vencimento. |
| 20 | QT_DIAS_REAJUSTE | NUMBER | Y |  |

---

## DBAMV.GCTO_TIPO_DOCUMENTO
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

## DBAMV.GCTO_TIPO_EMPR
> Empresas/Setores do Tipo (*M*)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIPO | VARCHAR2 | N | Tipo de Contrato |
| 2 | SN_ATIVO | VARCHAR2 | N | Ativo S/N |
| 3 | CD_MULTI_EMPRESA | NUMBER | N | Empresa |
| 4 | CD_TIPO_EMPR | NUMBER | N | Código |
| 5 | CD_SETOR | NUMBER | Y | Setor |

---

## DBAMV.GCTO_TIPO_EVENTO
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

## DBAMV.HOSPITAL_UNIFICADO
> Hospitais que ter?o seus dados unificados na Central de Compras

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_HOSPITAL | NUMBER | N | Codigo no cadastro da MV do Hospital que participa da consolidac?o de dados |
| 2 | DS_HOSPITAL | VARCHAR2 | N | Descric?o do Hospital que participa da consolidac?o de dados |

---

## DBAMV.IND_PRES
> Tabela de identificação da presença do comprador

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IND_PRES | NUMBER | N | Código da indicação da presença |
| 2 | DS_IND_PRES | VARCHAR2 | N | Descrição da indicação da presença |
| 3 | SN_ATIVO | CHAR | N | Situação de uso do registro (S = Ativo, N = Inativo) |

---

## DBAMV.INFLACAO_MENSAL_ORDEM_COMPRA
> Cadastro de inflacao para formacao de ordem de compra

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIGEST | NUMBER | N | Codigo da configuracao referencia da tabela CONFIGEST |
| 2 | VL_INFLACAO | NUMBER | N | Valor percentual da inflacao |
| 3 | DT_CADASTRO | DATE | N | Data do cadastro |
| 4 | DT_VALIDADE | DATE | Y | Data de validade |
| 5 | NM_USUARIO | VARCHAR2 | N | Nome do usuario responsavel pelo cadastro |

---

## DBAMV.ITNOTIFICACAO_FORNECEDOR
> Tabela que registra dados do item da notificação de fornecedor

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITNOTIFICA_FORNECEDOR | NUMBER | N | Código do item da notificação de fornecedor |
| 2 | CD_NOTIFICA_FORNECEDOR | NUMBER | N | Código da notificação de fornecedor |
| 3 | CD_PRODUTO | NUMBER | Y | Código do produto |
| 4 | CD_UNI_PRO | NUMBER | Y | Código da unidade |
| 5 | CD_ITLOT_ENT | NUMBER | Y | Código do lote |
| 6 | QT_NOTIFICADA | NUMBER | Y | Quantidade notificada |
| 7 | VL_TOTAL | NUMBER | Y | Valor total da entrada |
| 8 | VL_UNITARIO | NUMBER | Y | Valor unitário |
| 9 | CD_SERVICO | NUMBER | Y | Código do serviço |

---

## DBAMV.ITSOLICITACAO_SAME
> Tabela para armazenar os itens da Solicitação de Documentos ao SAME

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITSOLICITACAO | NUMBER | N | Código Seqüencial do item da solicitação ao Same |
| 2 | CD_SOLICITACAO | NUMBER | N | Código da solicitação ao Same |
| 3 | CD_CAD_SAME | NUMBER | N | Código Seqüencial do Same |
| 4 | NR_MATRICULA_SAME | NUMBER | N | Número de matricula do paciente no SAME. |
| 5 | NR_VOLUME | NUMBER | N | Número do Volume correspondente ao conjunto de pastas do Paciente. |
| 6 | CD_ATENDIMENTO | NUMBER | Y | Número do atendimento |
| 7 | TP_SITUACAO | VARCHAR2 | N | P-Pendente; A-Atendido; F-Finalizado; C-Cancelado |
| 8 | CD_PROTOCOLO | NUMBER | Y | Número do protocolo associado |

---

## DBAMV.JUSTIFICATIVA_COMPRA_PUBLICO
> Justificativa da Compras

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_JUSTIFICATIVA_COMPRA_PUBLIC | NUMBER | N | Codigo da Justificativa da Compra |
| 2 | DS_JUSTIFICATIVA_COMPRA_PUBLIC | VARCHAR2 | N | Descric?o da Justificativa da Compra |
| 3 | TP_JUSTIFICATIVA_COMPRA_PUBLIC | VARCHAR2 | N | Tipo da Justificativa da Compra: (A)crescimo/Decrescimo, (C)oleta de Precos, (D)esclassificac?es,... |

---

## DBAMV.JUSTIFICA_CANCELAMENTO_ORD_CPR
> Justificativa de cancelamentos de ordens de compras

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_JUSTIFICA_CANCEL_ORD_CPR | NUMBER | N | Codigo da justificativa do cancelamento da ordem de compra |
| 2 | CD_ORD_COM | NUMBER | N | Codigo da ordem de compra cancelada |
| 3 | CD_JUSTIFICATIVA_COMPRA_PUBLIC | NUMBER | N | Codigo da justificativa utilizada para cancelar a ordem de compra |
| 4 | DS_OBSERVACOES | VARCHAR2 | Y | Observac?es livre |
| 5 | DT_CANCELAMENTO | DATE | N | Data do cancelamento |
| 6 | HR_CANCELAMENTO | DATE | N | Hora do cancelamento |
| 7 | CD_USUARIO | VARCHAR2 | N | Codigo do usuario responsavel pelo cancelamento |

---

## DBAMV.JUSTIFICA_CANCEL_ORD_CPR_PRO
> Justificativa de cancelamentos de produto de ordens de compras

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_JUSTIFICA_CANC_ORD_CPR_PRO | NUMBER | N | Codigo da justificativa do cancelamento de produto da ordem de compra |
| 2 | CD_ORD_COM | NUMBER | N | Codigo da ordem de compra |
| 3 | CD_PRODUTO | NUMBER | N | Codigo do produto cancelado |
| 4 | CD_JUSTIFICATIVA_COMPRA_PUBLIC | NUMBER | N | Codigo da justificativa utilizada para cancelar o produto da ordem de compra |
| 5 | DS_OBSERVACOES | VARCHAR2 | Y | Observac?es livre |
| 6 | DT_CANCELAMENTO | DATE | N | Data do cancelamento |
| 7 | HR_CANCELAMENTO | DATE | N | Hora do cancelamento |
| 8 | CD_USUARIO | VARCHAR2 | N | Codigo do usuario responsavel pelo cancelamento |

---

## DBAMV.JUSTIFICA_CANCEL_ORD_CPR_SRV
> Justificativa de cancelamentos de servico de ordens de compras

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_JUSTIFICA_CANC_ORD_CPR_SRV | NUMBER | N | Codigo da justificativa do cancelamento de servico da ordem de compra |
| 2 | CD_ORD_COM | NUMBER | N | Codigo da ordem de compra |
| 3 | CD_SERVICO | NUMBER | N | Codigo do servico cancelado |
| 4 | CD_JUSTIFICATIVA_COMPRA_PUBLIC | NUMBER | N | Codigo da justificativa utilizada para cancelar o servico da ordem de compra |
| 5 | DS_OBSERVACOES | VARCHAR2 | Y | Observac?es livre |
| 6 | DT_CANCELAMENTO | DATE | N | Data do cancelamento |
| 7 | HR_CANCELAMENTO | DATE | N | Hora do cancelamento |
| 8 | CD_USUARIO | VARCHAR2 | N | Codigo do usuario responsavel pelo cancelamento |

---

## DBAMV.LICITACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LICITACAO | NUMBER | N |  |
| 2 | CD_SOL_COM | NUMBER | N |  |
| 3 | CD_TIP_EMP | NUMBER | N |  |
| 4 | CD_TIP_ATIV | NUMBER | N |  |
| 5 | DS_DETALHES | VARCHAR2 | N |  |
| 6 | DT_LICITACAO | DATE | Y |  |
| 7 | DT_ABERTURA | DATE | N |  |
| 8 | HR_ABERTURA | DATE | N |  |
| 9 | TP_LICITACAO | VARCHAR2 | N |  |
| 10 | TP_MODALIDADE | VARCHAR2 | N |  |
| 11 | NR_PROCESSO | NUMBER | Y |  |
| 12 | VL_ESTIMADO_COMPRA | NUMBER | Y |  |
| 13 | NR_LICITACAO | NUMBER | Y |  |
| 14 | SN_MARCA_LICITACAO | VARCHAR2 | N |  |
| 15 | HR_LICITACAO | DATE | Y |  |
| 16 | CD_TIPO_MODALIDADE | NUMBER | Y | Codigo da modalidade do processo |
| 17 | CD_DOCUMENTO | NUMBER | Y | Codigo do documento |
| 18 | TP_ORIGEM | VARCHAR2 | Y | Tipo da Origem |
| 19 | TP_PROCESSO | VARCHAR2 | Y | Tipo do Processo |
| 20 | SN_CONSIGNADO | VARCHAR2 | Y | Informa se e consignado |
| 21 | CD_LOCAL_LICITACAO | NUMBER | Y |  |
| 22 | NR_LICITACAO_LICITANTE | VARCHAR2 | Y | Numero da Licitac?o Licitante |
| 23 | NM_ORGAO_LICITANTE | VARCHAR2 | Y | Nome do Org?o Licitante |
| 24 | CD_UASG_LICITANTE | VARCHAR2 | Y | Codigo da Unidade Gestora |
| 25 | TP_CALCULO_ESTIMATIVA | VARCHAR2 | Y | Indica o tipo de calculo usado no valor estimado, com base nas estimativas geradas para o process... |
| 26 | TP_SITUACAO | VARCHAR2 | Y | Tipo da Situac?o da Licitac?o: (A)berta, (M)arcada, (C)ancelada, (F)echada, (S)uspensa |
| 27 | DS_PROCESSO | VARCHAR2 | Y | Descric?o do processo. |
| 28 | DS_LICITACAO | VARCHAR2 | Y | Descric?o da licitac?o |
| 29 | DS_CONTRATO | VARCHAR2 | Y | Descric?o do contrato |

---

## DBAMV.LICITACAO_FORNECEDOR_DESCLASS
> Desclassificac?o do Fornecedor no Processo Licitatorio

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LICITACAO_FORNECEDOR_DSCL | NUMBER | N | Codigo da Desclassificac?o |
| 2 | CD_SOL_COM | NUMBER | N | Codigo da Solicitac?o Desclassificada |
| 3 | CD_FORNECEDOR | NUMBER | N | Codigo do Fornecedor Desclassificado |
| 4 | CD_JUSTIFICATIVA_COMPRA_PUBLIC | NUMBER | N | Codigo da Justificativa da Desclassificac?o |
| 5 | DS_OBSERVACOES | VARCHAR2 | Y | Descric?o da Observac?o da Desclassificac?o |
| 6 | SN_DESCLASSIFICADO | VARCHAR2 | N | Fornecedor Desclassificado? (S)im ou (N)?o |
| 7 | DT_DESCLASSIFICACAO | DATE | Y | Data da Desclassificac?o |
| 8 | HR_DESCLASSIFICACAO | DATE | Y | Hora da Desclassificac?o |
| 9 | CD_USUARIO | VARCHAR2 | Y | Nome do Usuario |

---

## DBAMV.NIVEL_AUTORIZADOR
> Armazena os niveis hierarquicos para autorizac?o de ordem de compras

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_NIVEL_AUTORIZADOR | NUMBER | N | Codigo do nivel autorizador |
| 2 | DS_NIVEL_AUTORIZADOR | VARCHAR2 | N | Descric?o do nivel autorizador |
| 3 | NR_SEQUENCIA_HIERARQUIA | NUMBER | N | Numero sequencial que identificara a autorizac?o em serie |
| 4 | VL_LIMITE_AUTORIZADOR | NUMBER | N | Valor limite maximo para autorizac?o |
| 5 | VL_LIMITE_AUT_AUTOMATICO | NUMBER | N | Valor limite maximo para autorizac?o automatica |
| 6 | TP_SITUACAO | VARCHAR2 | N | Status do nivel hierarquivo, (A)tivo ou (I)nativo |
| 7 | DT_VIGENCIA | DATE | N | Data para marcar inicio das atividades para o nivel hierarquico |
| 8 | CD_MULTI_EMPRESA | NUMBER | N | Codigo identificador para processos de multi-empresa |
| 9 | SN_AUTORIZA_SOL_COM | VARCHAR2 | N | Informar se o nivel podera autorizar solicitacao de compras para hospital publico |
| 10 | SN_PRIMEIRA_COMPRA | VARCHAR2 | N | Indica se o nivel de autorizac?o pode aprovar produtos em Primeira Compra |
| 11 | TP_APROVA_SC_OC | VARCHAR2 | N | Indica se o nivel de autorizac?o pode aprovar O/compra, Sol/Compra ou ambos (substitui ao campo S... |
| 12 | SN_EMAIL_AUT_OC_SERIE | VARCHAR2 | N | Indica se o nivel recebera email automatico de notificacao das ordens de compras para autorizacao |
| 13 | SN_OBRIGATORIO | VARCHAR2 | N | Indica se o nível é obrigatório ou não |

---

## DBAMV.OBRIGA_OC_ESPECIE
> TABELA DE OBRIGATORIEDADE DE ORDEM DE COMPRA POR ESPECIE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ESPECIE | NUMBER | N | CÓDIGO DA ESPÉCIE |
| 2 | CD_USUARIO | VARCHAR2 | N | CÓDIGO DO USUÁRIO |
| 3 | DT_ATIVACAO | DATE | N | DATA DA ATIVAÇÃO |
| 4 | SN_ATIVO | VARCHAR2 | N | INFORMA SE A OBRIGATORIEDADE ESTÁ ATIVA. S - SIM, N - NÃO |
| 5 | CD_MULTI_EMPRESA | NUMBER | N | CÓDIGO DA EMPRESA |

---

## DBAMV.PARCELA_ITORD_PRO
> Programac?o para entrega para ordem de compra

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRODUTO | NUMBER | N | Codigo do produto |
| 2 | CD_ORD_COM | NUMBER | N | Codigo da ordem de compras |
| 3 | DT_PARCELA | DATE | N | Data da previs?o para entrega da parcela para a ordem de compras |
| 4 | NR_PARCELA | NUMBER | N | Sequencial que identifica a parcela |
| 5 | QT_COMPRADA_PARCELA | NUMBER | N | Quantidade comprada para a parcela de ordem de compra |
| 6 | QT_RECEBIDA_PARCELA | NUMBER | Y | Quantidade recebida para a parcela de ordem de compra no momento da entrada de produtos |
| 7 | QT_CANCEL_PARCELA | NUMBER | Y | Quantidade cancelada para a parcela de ordem de compra |
| 8 | DT_CANCEL_PARCELA | DATE | Y | Data do cancelamento para a parcela de ordem de compra |
| 9 | CD_MOT_CANCEL | NUMBER | Y | Codigo do motivo para cancelamento da quantidade na parcela da ordem de compras |
| 10 | DT_PARCELA_INTERVALO | DATE | N | Data minima do intervalo de entrega da parcela do item. |

---

## DBAMV.PARCELA_ITSOL_COM
> Programac?o de entrega entre parcelas para as solicitac?es de compra

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SOL_COM | NUMBER | N | Codigo da solicitac?o de compras |
| 2 | CD_PRODUTO | NUMBER | N | Codigo do produto |
| 3 | DT_PARCELA | DATE | N | Data da parcela para programac?o de entrega |
| 4 | NR_PARCELA | NUMBER | N | Sequencial que identifica a parcela |
| 5 | QT_SOLIC_PARCELA | NUMBER | N | Quantidade solicitada para a parcela mencionada |
| 6 | QT_ATENDIDA_PARCELA | NUMBER | Y | Quantidade atendida no momento da entrada de produtos |
| 7 | DT_CANCEL_PARCELA | DATE | Y | Data do cancelamento de quantidades para a programac?o de entrega |
| 8 | QT_CANCEL_PARCELA | NUMBER | Y | Quantidade do cancelamento na programac?o de entrega |
| 9 | CD_MOT_CANCEL | NUMBER | Y | Motivo do cancelamento na programac?o de entrega |
| 10 | DT_PARCELA_INTERVALO | DATE | N | Data minima do intervalo de entrega da parcela do item. |
| 11 | QT_PARCELAS | NUMBER | Y | Quantidade de Parcelas utilizada na geracao da programacao |
| 12 | QT_DIAS_INTERVALO | NUMBER | Y | Intervalo em dias entre uma parcela e outra de programacao |
| 13 | CD_SEQ_INTEGRA | NUMBER | Y | Codigo da integrac?o |
| 14 | CD_ITSOL_COM_INTEGRA | VARCHAR2 | Y | Coluna que contem o codigo De-Para do registro |
| 15 | DT_INTEGRA | DATE | Y | Data da Integrac?o |

---

## DBAMV.PREGAO
> Preg?o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PREGAO | NUMBER | N | Codigo do Preg?o |
| 2 | DS_NUMPREGAO | VARCHAR2 | N | Numero do Preg?o |
| 3 | DS_OBJETOPREGAO | VARCHAR2 | N | Descric?o Objeto do Preg?o |
| 4 | DS_NUMPROCESSO | VARCHAR2 | N | Numero do Processo |
| 5 | DT_PREGAO | DATE | N | Data do Preg?o |
| 6 | VL_ESTIMADO | NUMBER | N | Valor Estimado |
| 7 | SN_VALOR_ESTIMADO | VARCHAR2 | N | Valor Estimado Sim ou N?o |
| 8 | DS_PORTARIA | VARCHAR2 | Y | Descric?o Portaria |
| 9 | DS_RESP_TECNICO | VARCHAR2 | Y | Descric?o do Responsavel Tecnico |
| 10 | DS_MAT_RESP | VARCHAR2 | Y | Descric?o do Material do Responsavel |
| 11 | DS_FUNCAO_RESP | VARCHAR2 | Y | Descric?o da Func?o do Responsavel |
| 12 | SN_LOTE | VARCHAR2 | N | Lote Sim ou N?o |
| 13 | DT_REABERTURA | DATE | Y | Data de Reabertura |
| 14 | CD_USUARIO_REABRIU | VARCHAR2 | Y | Codigo do Usuario da Reabertura |
| 15 | SN_REVOGADO | VARCHAR2 | N | Revogado Sim ou N?o |

---

## DBAMV.PROTOCOLO_PACOTE
> Tabelas de itens contratados no pacote conforme contrato de cobranca, o protocolo do pacote.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PACOTE | NUMBER | N | Codigo do pacote referente ao protocolo, segundo contrato |
| 2 | CD_PRO_FAT | VARCHAR2 | N | Codigo do procedimento, item do pacote. Estes s?o os procedimentos que comp?em o pacote. Os quais... |
| 3 | QT_CONTRATADA | NUMBER | N | Quantidade liberada para o item no pacote. Esta sera a quantidade base para analise comparativa e... |
| 4 | CD_SETOR | NUMBER | Y | Codigo do setor de realizac?o item do pacote. |
| 5 | CD_PROTOCOLO_PACOTE | NUMBER | N | Codigo de identificac?o do protocolo pacote |
| 6 | TP_DISPERCAO | VARCHAR2 | N | Indica o tipo de dispercao que tera o pacote |
| 7 | QT_FREQUENCIA | NUMBER | Y | Indica a frequencia do item do protocolo do pacote |
| 8 | VL_UNITARIO | NUMBER | Y | Indica o valor unitario do item do protocolo do pacote |

---

## DBAMV.RATEIO_SERVICO
> Rateio entre setores de servicos nas solicitacoes de compras

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SOL_COM | NUMBER | N | Codigo da solicitacao de compra |
| 2 | CD_SER_SOL | NUMBER | N | Codigo do servico da solicitacao de compra |
| 3 | CD_SETOR | NUMBER | N | Codigo do setor para ratear a quantidade solicitada |
| 4 | QT_PERCENTUAL_RATEIO | NUMBER | N | Quantidade percentual a ser rateada |

---

## DBAMV.RATEIO_SOL_COM
> Rateio entre setores de produtos nas solicitacoes de compras

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SOL_COM | NUMBER | N | Codigo da solicitacao de compra |
| 2 | CD_PRODUTO | NUMBER | N | Codigo do produto da solicitacao de compra |
| 3 | CD_SETOR | NUMBER | N | Codigo do setor para ratear a quantidade solicitada |
| 4 | QT_RATEIO | NUMBER | N | Quantidade a ser rateada |

---

## DBAMV.RESERVA_FORNECEDOR
> Tabela para cadastrar as reservas dos sequencias da tabela fornecedor.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FORNECEDOR | NUMBER | N | Codigo do sequencial corporativo do fornecedor |
| 2 | CD_HOSPITAL | NUMBER | N | Hospital que solicitou o codigo do sequencial corporativo do fornecedor |
| 3 | SITUACAO | VARCHAR2 | N | Situac?o da reserva S = SOlicitada, U = Utilizada e C = Cancelada |
| 4 | NR_CNPJ | NUMBER | Y | Indica o codigo o CNPJ reservado para o cadastro. |

---

## DBAMV.SET_ESP
> ConfiguraÃ§Ã£o de autorizaÃ§Ã£o de SolicitaÃ§Ã£o de Compra a nÃ­vel de Setor e EspÃ©cie

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SETOR | NUMBER | Y | CÃ³digo da setor que o usuÃ¡rio pode autorizar caso tenha o nÃ­vel de autorizador |
| 2 | CD_ESPECIE | NUMBER | Y | CÃ³digo da espÃ©cie que o usuÃ¡rio pode autorizar caso tenha o nÃ­vel de autorizador |
| 3 | CD_ID_USU_SOLIC | VARCHAR2 | N |  |
| 4 | CD_MULTI_EMPRESA | NUMBER | N | CÃ³digo da multi_empresa. |

---

## DBAMV.SITUACAO_REGULACAO
> Tabela de situações da solicitação na regulação

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SITUACAO_REGULACAO | VARCHAR2 | N | Código da situação |
| 2 | DS_SITUACAO_REGULACAO | VARCHAR2 | N | Descrição da Situação |
| 3 | TP_SITUACAO | VARCHAR2 | N | Tipos de Situação: 0 - EM DIGITAÇÃO / 1 - AGUARDANDO REGULAÇÃO / 2 - AGUARDANDO ESCLARECIMENTOS /... |

---

## DBAMV.SLA_MODELO_TPCTRA
> Modelos de SLA por tipo de contrato (*M*)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SLAMODELO | NUMBER | N | Código do modelo de SLA |
| 2 | CD_TIPO | VARCHAR2 | N | Código do tipo de contratos |
| 3 | DH_INSERT | DATE | N | Data e hora do insert do registro |
| 4 | CD_USUARIO_INS | VARCHAR2 | N | Usuário do insert do registro |

---

## DBAMV.SOLICITACAO_AMBULANCIA_ACOMPAN
> Tabela para armazenar os acompanhantes da solicitação de ambulância.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SOLICITACAO_AMBULANCIA_ACOM | NUMBER | N | Código único que identifica o acompanhante do solicitacao da ambulância. |
| 2 | CD_SOLICITACAO_AMBULANCIA | NUMBER | Y | Código da solitação de ambulância |
| 3 | NR_CARTEIRA | VARCHAR2 | Y | Número da carteira do paciente |
| 4 | CD_CONVENIO | NUMBER | Y | Código do convênio |
| 5 | CD_PACIENTE | NUMBER | Y | Código do paciente |
| 6 | CD_CON_PLA | NUMBER | Y | Código do plano do convênio |
| 7 | NR_IDENTIFICAO_ACOMPANHANTE | VARCHAR2 | Y |  |
| 8 | NM_ACOMPANHANTE | VARCHAR2 | Y | Nome do acompanhante |

---

## DBAMV.SOLICITACAO_AMBULANCIA_PROFISS
> Tabela para armazenar os acompanhantes da solicitação de ambulância.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SOLICITACAO_AMBULAN_PROFISS | NUMBER | N | Código único que identifica o profissional da solicitacao de ambulância. |
| 2 | CD_SOLICITACAO_AMBULANCIA | NUMBER | Y | Código da solitação de ambulância |
| 3 | CD_PROFISSIONAL_AMBULANCIA | NUMBER | Y | Código do profissional da ambulância |

---

## DBAMV.SOLICITACAO_CARDAPIO
> SOLICITACAO DE PLANEJAMENTO DO CARDAPIO.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SOLICITACAO_CARDAPIO | NUMBER | N | Codigo da Solicitac?o do Cardapio. |
| 2 | DT_SOLICITACAO_CARDAPIO | DATE | N | Data da Solicitac?o do Cardapio. |
| 3 | CD_SETOR | NUMBER | N | Codigo do Setor. |
| 4 | CD_ESTOQUE | NUMBER | N | Codigo do Estoque. |
| 5 | CD_SOLSAI_PRO | NUMBER | Y | Codigo da Solicitac?o de Estoque. |
| 6 | CD_USUARIO | VARCHAR2 | N | Usuario que gerou a solicitac?o. |

---

## DBAMV.SOLICITACAO_CARDAPIO_OPCAO
> SOLICITACAO DE CARDAPIO OPC?O.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SOLICITACAO_CARDAPIO_OPCAO | NUMBER | N |  |
| 2 | CD_OPCAO | NUMBER | N | Codigo da Opc?o de Cardapio. |
| 3 | CD_SOLICITACAO_CARDAPIO | NUMBER | N | Codigo da Solicitac?o de Cardapio. |
| 4 | CD_SOLICITACAO_CRDP_PL_CRDP | NUMBER | N | Codigo da Solicitac?o de Cardapio por Planejamento de Cardapio. |

---

## DBAMV.SOLICITACAO_CARDAPIO_PLAN_CRDP
> SOLICITACAO DE CARDAPIO E PLANO DE CARDAPIO.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SOLICITACAO_CRDP_PL_CRDP | NUMBER | N | Codigo da Solicitac?o de Cardapio por Planejamento de Cardapio. |
| 2 | CD_PLANO_CARDAPIO | NUMBER | N | Codigo do Plano do Cardapio |
| 3 | CD_SOLICITACAO_CARDAPIO | NUMBER | N | Codigo da Solicitacao do Cardapio. |

---

## DBAMV.SOLICITACAO_CARDAPIO_PRATO
> SOLICITACAO DE CARDAPIO PRATO.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SOLICITACAO_CARDAPIO_PRATO | NUMBER | N | Codigo da Solicitac?o de Cardapio de Prato. |
| 2 | CD_SOLICITACAO_CARDAPIO_OPCAO | NUMBER | N | Codigo da Solicitac?o de Cardapio de Opc?o. |
| 3 | CD_PRATO | NUMBER | N | Codigo Prato. |
| 4 | QT_PRATO | NUMBER | N | Quantidade Prato. |

---

## DBAMV.SOLICITACAO_CARDAPIO_PRODUTO
> SOLICITACAO DE CARDAPIO PRODUTOS.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SOLICITACAO_CARDAPIO_PRODT | NUMBER | N | Codigo da Solicitac?o de Cardapio de Produto. |
| 2 | QT_PADRAO | NUMBER | N | Quantidade Padr?o |
| 3 | QT_SOLICITADA | NUMBER | N | Quantidade Solicitada. |
| 4 | CD_SOLICITACAO_CARDAPIO_PRATO | NUMBER | N | Codigo da Solicitac?o de Cardapio Prato. |
| 5 | CD_PRODUTO | NUMBER | N | Codigo do Produto. |
| 6 | CD_UNI_PRO | NUMBER | N | Codigo Unidade Produto. |
| 7 | CD_ITSOLSAI_PRO | NUMBER | Y | Codigo do Item de Solicitac?o Saida Produto. |

---

## DBAMV.SOLICITACAO_CME
> [MGCE] Tabela de cadastro de Solicitação de Esterilização.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SOLICITACAO_CME | NUMBER | N | Código sequencial único da Solicitação de Esterilização. |
| 2 | CD_SETOR_PRINCIPAL | NUMBER | N | Código do Setor Principal. |
| 3 | CD_MULTI_EMPRESA | NUMBER | N | Código da multi-empresa |
| 4 | TP_SITUACAO | NUMBER | N | Situação em que se encontra a solicitação de esterilização. 0 = Solicitada, 1 = Recebida Para Exp... |
| 5 | CD_LOCALIDADE | NUMBER | Y | Código da localidade da solicitação de esterilização. |
| 6 | DH_CADASTRO | DATE | N | Data e hora do cadastro da Solicitação. |
| 7 | CD_USUARIO_ENTREGA | VARCHAR2 | N | Código do usuário de entrega. |
| 8 | CD_SETOR_ENTREGA | NUMBER | N | Código do Setor de entrega da Solicitação. |
| 9 | CD_SETOR_RESPONSAVEL_ENTRADA | NUMBER | N | Código do Setor responsável pela entrada da solicitação. |
| 10 | CD_USUARIO_ENTRADA | VARCHAR2 | N | Código do Usuário de entrada. |
| 11 | TP_SOLICITACAO_CME | NUMBER | N | Tipo da solicitação CME. 1 = Não usa os items do kit/caixa cirurgica 2 = Usa os items do kit/caix... |
| 12 | SN_RETORNA_SETOR_ORIGEM | VARCHAR2 | N | Indica se pode retornar ao setor de origem. |
| 13 | CD_ATENDIMENTO | NUMBER | Y | Código do Atendimento. |
| 14 | CD_AVISO_CIRURGIA | NUMBER | Y | Código do Aviso de Cirurgia. |
| 15 | DS_OBSERVACAO | VARCHAR2 | Y | Descrição de observação. |
| 16 | CD_CANCELAMENTO | NUMBER | Y | Código do cancelamento da solicitação. |
| 17 | CD_USUARIO_CADASTRO | VARCHAR2 | N | Código do Usuário que cadastrou a Solicitação de Esterilização. |
| 18 | CD_ESTOQUE_ROUPARIA | NUMBER | Y | Código do estoque de rouparia solicitante da esterilização. |
| 19 | TP_TESTE_MAQ_ESTERILIZADORA | VARCHAR2 | Y | GUARDA O INDICADOR DO TESTE("BOWIE E DICK" - OU - "ESTANQUEIDADE") DA SOLICITAÇÃO CME. |
| 20 | SN_ENTRADA_EXPURGO | VARCHAR2 | N | INDICA SE A SOLICITAÇÃO REALIZA ENTRADA PARA EXPURGO. |
| 21 | DT_ENTRADA_EXPURGO | DATE | Y | INDICA A DATA DE ENTRADA PARA O EXPURGO, NA SOLICITAÇÃO QUE ESTIVER SENDO FINALIZADA. |
| 22 | CD_SOLICITACAO_CME_ENT_EXP | NUMBER | Y | INDICA NOVA SOLICITAÇÃO GERADA PELA ENTRADA PARA O EXPURGO, NA SOLICITAÇÃO QUE ESTIVER SENDO FINA... |
| 23 | TP_ATENDIMENTO | VARCHAR2 | N | Indica se o atendimento ja chegou ao arsenal N - NÃ£o T - total P - Parcial |
| 24 | SN_URGENTE | VARCHAR2 | N | Indica se s solicitação de saida do arsenal é urgente |

---

## DBAMV.SOLICITACAO_DILIGENCIA_DIAGN
> Cadastros da Solicitação de Diligenciamento.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SOLICITACAO_DILIGENCIA | NUMBER | N | Sequence da tabela. |
| 2 | CD_DILIGENCIAMENTO | NUMBER | N | Código do Diligenciamento. |
| 3 | CD_PED_LAB | NUMBER | N | Código do Pedido. |
| 4 | CD_AMOSTRA | NUMBER | Y | Código da amostra que foi utilizada para criar a solicitação. |
| 5 | CD_COLETA_MATERIAL | NUMBER | Y | Código utilizado para a FK da amostra |
| 6 | DT_SOLICITACAO | DATE | N | Data da Solicitaçao do Diligenciamento. |
| 7 | CD_USUARIO | VARCHAR2 | N | Usuário responsavel por criar o diligenciamento |
| 8 | TP_STATUS | VARCHAR2 | N | Status em que encontra-se o diligenciamento (A) Acompanhamento, (P) Acompanhamento Pendente,(R) R... |
| 9 | DS_OBSERVACAO | VARCHAR2 | N | Observação do diligenciamento solicitado. |
| 10 | DT_CONCLUSAO_DILIGENCIAMENTO | DATE | Y | Data da conclusão. |
| 11 | CD_USUARIO_CONCLUSAO_DILIGEN | VARCHAR2 | Y | Usuário que concluiu o diligenciamento. |
| 12 | SN_CONCLUSAO_ROTINA_CANCELA | VARCHAR2 | N | Indica se o cancelamento foi realizado pela rotina de cancelamento automático de exames |
