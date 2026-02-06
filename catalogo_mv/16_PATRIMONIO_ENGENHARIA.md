# 16 - Patrimonio e Engenharia Clinica

> Bens, equipamentos, manutencao, calibracao

## Resumo

- **Tabelas**: 42
- **Owners**: DBAMV

---

## DBAMV.BEM_PATRIMONIAL_DOC
> Tabela onde ser?o salvos todos os Documentos vinculados ha um Bem Patrimonial.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_BEM | NUMBER | N | Codigo do Bem (Tabela DBAMV.BENS) que os arquivos est?o vinculados |
| 2 | CD_BEM_DOC | NUMBER | N | Codigo da Sequence da tabela que faz parte da Chava Primaria |
| 3 | DS_BEM_DOC | VARCHAR2 | Y | Descric?o do documento |
| 4 | LO_ANEXO_BEM | BLOB | Y | Documento Anexo |
| 5 | TP_EXTENSAO | VARCHAR2 | N | Guardar tipo de extensao dos documentos anexados |

---

## DBAMV.BEM_PATRIMONIAL_PLACA
> Tabela onde ser?o salvas todas as placas vinculadas ha um Bem Patrimonial.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_BEM | NUMBER | N | Codigo do Bem (Tabela DBAMV.BENS) que os arquivos est?o vinculados |
| 2 | CD_BEM_PLACA | VARCHAR2 | N | Codigo da Nova Plaqueta. |
| 3 | DT_VIGENCIA | DATE | Y | Data da vigencia da placa |
| 4 | CD_USUARIO | VARCHAR2 | Y | Codigo do usuario que fez a alterac?o da placa |

---

## DBAMV.BEM_TERCEIRO_CME
> [MGCE] Tabela de Bens de Terceiros.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_BEM_TERCEIRO | NUMBER | N | Código sequencial único do bem de terceiro. |
| 2 | DS_BEM_TERCEIRO | VARCHAR2 | N | Descrição do bem de terceiro. |
| 3 | SN_ATIVO | VARCHAR2 | N | Indica se o bem de terceiro está ativo ou não. S = Sim N=Não |
| 4 | QT_DIAS_VALID_ESTERILIZACAO | NUMBER | Y | Quantidade de dias de validade da esterilização. |
| 5 | DS_CD_BARRAS | VARCHAR2 | Y | Indica código de barras do bem de terceiro. |
| 6 | SN_EXPURGO | VARCHAR2 | N | INDICA SE É EXPURGO |
| 7 | SN_LAVAGEM | VARCHAR2 | N | INDICA SE VAI PARA LAVAGEM |
| 8 | SN_DESINFECCAO | VARCHAR2 | N | INDICA SE VAI É DESINFECÇÃO |
| 9 | SN_PREPARO | VARCHAR2 | N | INDICA SE VAI É PREPARADO |
| 10 | SN_ESTERILIZACAO | VARCHAR2 | N | INDICA SE VAI PARA ESTERILIZAÇÃO |
| 11 | SN_ARSENAL | VARCHAR2 | N | INDICA SE VAI SER ARSENA |
| 12 | CD_ARSENAL | NUMBER | Y | Códido do Arsenal |
| 13 | CD_MULTI_EMPRESA | NUMBER | Y | Código da Empresa responsável pelo cadastro do bem de terceiro. |

---

## DBAMV.BENS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_BEM | NUMBER | N |  |
| 2 | SN_NATUREZA_PERMANENTE | VARCHAR2 | N |  |
| 3 | DT_ULT_DEPRE | DATE | Y | Tem finalidade de armazenar a data de referencia para inicio das depreciac?es do bem, para os ben... |
| 4 | CD_ESPECIE | NUMBER | N |  |
| 5 | CD_CLASSE | NUMBER | N |  |
| 6 | DS_BEM | VARCHAR2 | N |  |
| 7 | DS_ESPECIFICACOES | VARCHAR2 | Y |  |
| 8 | DS_MARCA | VARCHAR2 | Y |  |
| 9 | DS_MODELO | VARCHAR2 | Y |  |
| 10 | NR_SERIE | VARCHAR2 | Y |  |
| 11 | NR_ANOS_UTIL | NUMBER | N |  |
| 12 | DS_PLAQUETA | VARCHAR2 | Y |  |
| 13 | DT_BAIXA | DATE | Y |  |
| 14 | DT_COMPRA | DATE | N |  |
| 15 | DT_ULTIMA_PREVENTIVA | DATE | Y |  |
| 16 | DT_VCTO_GARANTIA | DATE | Y |  |
| 17 | NR_NOTAFISCAL | VARCHAR2 | Y |  |
| 18 | DT_TOMBAMENTO | DATE | Y |  |
| 19 | VL_HISTORICO | NUMBER | N |  |
| 20 | VL_REFERENCIA | NUMBER | Y | Valor residual a ser depreciado do bem, para bens novos este valor deve ser igual a vl_compra cas... |
| 21 | VL_INDEXADO | NUMBER | Y |  |
| 22 | NR_DIAS_PREVENTIVA | NUMBER | Y |  |
| 23 | VL_COMPRA | NUMBER | N |  |
| 24 | HR_BAIXA | DATE | Y |  |
| 25 | CD_MOTIVO | NUMBER | Y |  |
| 26 | CD_FORNECEDOR | NUMBER | Y |  |
| 27 | CD_LOCALIDADE | NUMBER | Y |  |
| 28 | CD_SETOR | NUMBER | N |  |
| 29 | CD_SUB_CLA | NUMBER | N |  |
| 30 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 31 | CD_ENT_PRO | NUMBER | Y |  |
| 32 | BENS_CD_MOV_BEM | NUMBER | Y |  |
| 33 | CD_CAPITULO | NUMBER | N |  |
| 34 | CD_SUB_CAP | NUMBER | N |  |
| 35 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 36 | CD_CHECK_LIST | NUMBER | Y |  |
| 37 | CD_ITENTPRO | NUMBER | Y | Codigo do item da nota fiscal de origem. |
| 38 | TP_DEPRECIACAO | VARCHAR2 | Y | Campo seleciona a Forma de depreciac?o especifica parametrizada para o Bem --> (M) Depreciac?o Me... |
| 39 | NR_MESANO_DEPREC_ANUAL | NUMBER | Y | Mes que deve ser calculada a depreciac?o anual de um determinado bem. |
| 40 | DS_OBSERVACAO_AGREGADOR | VARCHAR2 | Y | Descric?o detalhada sobre os bens agregadores. |
| 41 | TP_DEPREC_AGREGADOS | VARCHAR2 | Y | Tem finalidade de parametrizar qual forma de depreciac?o para bens agregados "Se preenchido sera ... |
| 42 | SN_BEM_AGREGADOR | VARCHAR2 | Y | (S) Informa que o bem e agregador - (N) Bem que n?o e agragador. |
| 43 | VL_DEPRECIACAO_HISTORICA | NUMBER | Y | Valor da Depreciac?o Historica do Bem no Ato de sua Importac?o para o Sistema de Patrimonio. |
| 44 | TX_DEPRE | NUMBER | N | Taxa de Depreciac?o Especifica do Bem. |
| 45 | CD_TIPO_AQUISICAO | NUMBER | Y | Codigo do Tipo de Aquisic?o do Bem |
| 46 | SN_IMOB_AND_BEM | VARCHAR2 | N | Indica se o Bem Patrimonial foi originado de Imobilizac?o em Andamento |
| 47 | SN_DESP_OPERACIONAL | VARCHAR2 | N | Indica se o Bem Patrimonial devera ser Contabilizado como Despesa Operacional |
| 48 | NR_DIAS_PERIODO_CALIBRAGEM | NUMBER | Y | Informa a periodicidade em dias para calibragem do bem patrimonial |
| 49 | CD_MULTI_EMPRESA_ORIGEM | NUMBER | Y | Codigo da empresa que o bem foi tombado. Caracteriza a primeira empresa que um bem esteve alocado. |
| 50 | CD_REDUZIDO_ATIVO | NUMBER | Y | Codigo da conta contabil do ativo, equivalente a classificac?o que o bem esta configurado. |
| 51 | SN_GARANTIA_PENHORA | VARCHAR2 | Y | Indica se o Bem esta em Garantia/Penhora |
| 52 | DS_GARANTIA_PENHORA | VARCHAR2 | Y | Descric?o do Bem em Garantia/Penhora |
| 53 | CD_FUNC | NUMBER | Y | Indica o funcionario responsavel pelo bem |
| 54 | DT_CANCELAMENTO_BAIXA | DATE | Y | Data de cancelamento da baixa |
| 55 | CD_BEM_INTEGRA | VARCHAR2 | Y | Codigo do bem (de-para) |
| 56 | CD_SEQ_INTEGRA | NUMBER | Y | Sequencia o registro integrado |
| 57 | DT_INTEGRA | DATE | Y | Data de integrac?o do registro |
| 58 | NR_CODIGO_BARRA | VARCHAR2 | Y | NUMERO DO CODIGO DE BARRA DO BEM |
| 59 | SOFRE_DEPRECIACAO | VARCHAR2 | Y | Informa se o bem ira sofrer ou n?o depreciac?o |
| 60 | SN_CODIGO_BARRA | VARCHAR2 | N | Informa se o bem permitira a rastreabilidade, onde N = N?o, B = Codigo de Barras e D = Codigo Dat... |
| 61 | CD_ANVISA | VARCHAR2 | Y | Codigo Anvisa do Bem. |
| 62 | DS_ACESSORIOS | VARCHAR2 | Y | Descric?o dos acessorios que pertencem ao bem patrimonial |
| 63 | TP_VIDA_UTIL | VARCHAR2 | Y | Tipo de vida útil (M para meses ou A para anos) |
| 64 | NR_MES_UTIL | NUMBER | Y | Valor para número de meses util. |
| 65 | TX_DEPRE_MES | NUMBER | Y | Taxa de Depreciação Especifica do Bem em Meses. |
| 66 | TP_ORIGEM | VARCHAR2 | Y | Origem do cadastro do bem: [E] estoque, [M] manual, [I] importacao. |
| 67 | VL_RESIDUAL_POS_DEPREC | NUMBER | Y |  |
| 68 | TX_APLICADA | NUMBER | N |  |
| 69 | VL_RECUPERAVEL | NUMBER | N |  |
| 70 | NR_VIDA_UTIL_APLIC | NUMBER | N |  |
| 71 | SN_BEM_LAUDADO | CHAR | Y |  |
| 72 | VL_RESIDUAL_LAUDO | NUMBER | Y |  |
| 73 | VL_DEPREC_ACUM_FISCAL | NUMBER | Y |  |
| 74 | VL_DEPREC_ACUM_ECO | NUMBER | Y |  |
| 75 | CD_BEM_PAI | NUMBER | Y | Código do bem pai que replicou o bem. |
| 76 | VL_RESIDUAL_POR_DEPREC | NUMBER | Y |  |
| 77 | NR_RFID | VARCHAR2 | Y |  |

---

## DBAMV.BENS_OBSERVACOES
> Campos de Observac?es do bem patrimonial

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_BEM | NUMBER | N | Codigo do bem |
| 2 | DS_OBSERVACAO_MANUTENCAO | LONG | Y | Observac?o das manutenc?es |
| 3 | DS_OBSERVACAO_2 | VARCHAR2 | Y | Observac?es do bem |
| 4 | DS_OBSERVACAO_3 | VARCHAR2 | Y | Observac?es do bem |

---

## DBAMV.CONTAGEM_PATRIMONIO
> TABELA DAS CONTAGENS DO PATRIMONIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONTAGEM_PATRIMONIO | NUMBER | N | CÓDIGO DA CONTAGEM |
| 2 | CD_LOCALIDADE | NUMBER | N | CÓDIGO DA LOCALIDADE |
| 3 | CD_SETOR | NUMBER | N | CÓDIGO DO SETOR |
| 4 | CD_USUARIO | VARCHAR2 | N | USUÁRIO QUE REALIZOU A CONTAGEM |
| 5 | DT_INI_CONTAGEM | DATE | N | DATA INICIAL DA CONTAGEM |
| 6 | DT_FIM_CONTAGEM | DATE | Y | DATA FIM DA CONTAGEM |
| 7 | CD_INVENTARIO | NUMBER | Y | CÓDIGO DO INVENTÁRIO RELACIONADA A CONTAGEM |

---

## DBAMV.DEPRECIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DT_DEPRECIA | DATE | N |  |
| 2 | CD_DEPRECIA | NUMBER | N |  |
| 3 | NM_SOLICITANTE | VARCHAR2 | N |  |
| 4 | CD_MULTI_EMPRESA | NUMBER | Y | Codigo da empresa |
| 5 | TP_DEPRECIACAO | VARCHAR2 | Y | (M) Informa que este e um lote de depreciac?o mensal - (A) Informa que este e um lote de deprecia... |
| 6 | TP_DEPRECIACAO_PENDENTES | VARCHAR2 | Y | (C) Informa que as depreciac?es atrasadas foram geradas no mes de competencia - (G) Informa que a... |
| 7 | TP_FORMULA | VARCHAR2 | Y | (L) Informa que a formula de depreciac?o dos bens e Linear - (G) Informa que a formula de depreci... |
| 8 | CD_SEQ_INTEGRA | NUMBER | Y | Sequencia o registro integrado |
| 9 | DT_INTEGRA | DATE | Y | Data de integrac?o do registro |

---

## DBAMV.EQUIP_PRESTADOR
> Tabela que relaciona a equipe(dbamv.equipe) ao prestador(dbamv.prestador).

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EQUIP_PRESTADOR | NUMBER | N | Chave primária da tabela. |
| 2 | CD_EQUIPE | NUMBER | N | Código da equipe. |
| 3 | CD_PRESTADOR | NUMBER | N | Código do prestador vinculado a equipe. |
| 4 | DH_INICIO | DATE | N | Data de início do prestador na equipe. |
| 5 | DH_FINAL | DATE | Y | Data final do prestador na equipe. |
| 6 | DH_CADASTRO | DATE | N | Data de cadastro da Equipe. |
| 7 | CD_USUARIO_CADASTRO | VARCHAR2 | N | Usuário que realizou o Cadastro da Equipe. |
| 8 | DH_MODIFICACAO | DATE | Y | Data de modificação da Equipe. |
| 9 | CD_USUARIO_MODIFICACAO | VARCHAR2 | Y | Usuário que modificou o registro da Equipe. |

---

## DBAMV.EQUIP_PRESTADOR_ANEXO
> Tabela onde são guardados os anexos de um Prestador de uma Equipe(dbamv.EQUIP_PRESTADOR_ANEXO).

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EQUIP_PRESTADOR_ANEXO | NUMBER | N | Código da anexo. |
| 2 | DS_ANEXO | VARCHAR2 | Y | Descrição do anexo. |
| 3 | LO_ANEXO | BLOB | Y | Blob do anexo. |
| 4 | CD_EQUIP_PRESTADOR | NUMBER | N | Código do Prestador da Equipe que o anexo está relacionado. |
| 5 | NM_ARQUIVO | VARCHAR2 | Y |  |
| 6 | DH_CADASTRO | DATE | N | Data de cadastro do Anexo |
| 7 | CD_USUARIO_CADASTRO | VARCHAR2 | N | Usuário que realizou o cadastro do documento. |

---

## DBAMV.IMOB_AND_BEM
> Imobilizac?es em Andamento do Bem Patrimonial

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_BEM | NUMBER | N | Codigo do Bem Patrimonial |
| 2 | CD_REDUZIDO | NUMBER | N | Codigo da Conta Contabil de Imobilizac?o em Andamento do Bem Patrimonial |
| 3 | VL_LANCADO | NUMBER | N | Valor Lancado na Conta de Imobilizac?o em Andamento do Bem Patrimonial |

---

## DBAMV.OFICINA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_OFICINA | NUMBER | N |  |
| 2 | DS_OFICINA | VARCHAR2 | N |  |
| 3 | DS_CAMINHO_IMPRESSORA | VARCHAR2 | Y |  |
| 4 | CD_SETOR | NUMBER | Y |  |
| 5 | CD_MULTI_EMPRESA | NUMBER | N | Identifica o codigo da empresa |
| 6 | CD_OFICINA_INTEGRA | VARCHAR2 | Y | C??digo da Oficina (de-para) |
| 7 | CD_SEQ_INTEGRA | NUMBER | Y | C??digo sequencial da integra???#o |
| 8 | DT_INTEGRA | DATE | Y | Data em que o registro foi integrado |
| 9 | DS_EMAIL | VARCHAR2 | Y | Indica o e-mail da oficina |
| 10 | SN_EMAIL | VARCHAR2 | N | Informa se a Oficina ira utilizar as Rotinas de envio/recebimento de Emails! |
| 11 | SN_AVALIACAO | VARCHAR2 | N | Informa se a Oficina ira realizar avaliac?o sobre servicos realizados. |
| 12 | SN_TERCEIRIZADA | VARCHAR2 | N | Informa se a Oficina e Terceirizada |

---

## DBAMV.OSV_ATENDIME

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ATENDIMENTO | NUMBER | N |  |
| 2 | CD_ORI_ATE | NUMBER | N |  |
| 3 | CD_PACIENTE | NUMBER | N |  |
| 4 | CD_CONVENIO | NUMBER | N |  |
| 5 | CD_PRO_INT | VARCHAR2 | Y |  |
| 6 | CD_PRO_INT_PROCEDIMENTO_ENTRAD | VARCHAR2 | Y |  |
| 7 | DT_ATENDIMENTO | DATE | N |  |
| 8 | HR_ATENDIMENTO | DATE | N |  |
| 9 | TP_ATENDIMENTO | VARCHAR2 | N |  |
| 10 | CD_PRESTADOR | NUMBER | Y |  |
| 11 | CD_LEITO | NUMBER | Y |  |
| 12 | CD_LOC_TRANS | NUMBER | Y |  |
| 13 | CD_MOT_ALT | NUMBER | Y |  |
| 14 | CD_CID | VARCHAR2 | Y |  |
| 15 | CD_SERVICO | NUMBER | Y |  |
| 16 | DS_ATENDIMENTO | VARCHAR2 | Y |  |
| 17 | DT_DIAG | DATE | Y |  |
| 18 | DT_ALTA | DATE | Y |  |
| 19 | DS_OBS_ALTA | VARCHAR2 | Y |  |
| 20 | DT_ENTRADA_SAME | DATE | Y |  |
| 21 | DT_PREVISTA_ALTA | DATE | Y |  |
| 22 | CD_TIP_RES | NUMBER | Y |  |
| 23 | CD_TIP_ACOM | NUMBER | Y |  |
| 24 | DT_VAL_GUIA | DATE | Y |  |
| 25 | NR_GUIA | VARCHAR2 | Y |  |
| 26 | HR_ALTA | DATE | Y |  |
| 27 | CD_SER_DIS | NUMBER | Y |  |
| 28 | CD_DES_ATE | NUMBER | Y |  |
| 29 | DS_ATE_OCO | VARCHAR2 | Y |  |
| 30 | CD_ULTIMO_MOV_INT | NUMBER | Y |  |
| 31 | CD_CASOS_ATD | NUMBER | Y |  |
| 32 | DS_DESTINO_TRANSFERENCIA | VARCHAR2 | Y |  |
| 33 | NM_USUARIO | VARCHAR2 | Y |  |
| 34 | CD_CON_PLA | NUMBER | Y |  |
| 35 | NM_USUARIO_ALTA | VARCHAR2 | Y |  |
| 36 | CD_TIPO_INTERNACAO | NUMBER | Y |  |
| 37 | CD_LOG_EXPORT_ATENDIME | NUMBER | Y |  |
| 38 | CD_LOC_PROCED | NUMBER | Y |  |
| 39 | CD_LOG_EXPORT_ALTA | NUMBER | Y |  |
| 40 | SN_ACOMPANHANTE | VARCHAR2 | Y |  |
| 41 | SN_INFECCAO | VARCHAR2 | Y |  |
| 42 | SN_RETORNO | VARCHAR2 | Y |  |
| 43 | CD_SSM_CIH | VARCHAR2 | Y |  |
| 44 | CD_CONVENIO_SECUNDARIO | NUMBER | Y |  |
| 45 | CD_CON_PLA_SECUNDARIO | NUMBER | Y |  |
| 46 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 47 | CD_ESPECIALID | NUMBER | Y |  |
| 48 | CD_TIP_MAR | NUMBER | Y |  |
| 49 | DT_REVISAO | DATE | Y |  |
| 50 | DT_RETORNO | DATE | Y |  |
| 51 | CD_ATENDIMENTO_PAI | NUMBER | Y |  |
| 52 | QT_SESSOES | NUMBER | Y |  |
| 53 | DT_ALTA_MEDICA | DATE | Y |  |
| 54 | NM_USUARIO_ALTA_MEDICA | VARCHAR2 | Y |  |
| 55 | HR_ALTA_MEDICA | DATE | Y |  |
| 56 | CD_SERVICO_SAIDA | NUMBER | Y |  |
| 57 | CD_ESPECIALID_SAIDA | NUMBER | Y |  |
| 58 | CD_LOC_TRANS_SAIDA | NUMBER | Y |  |
| 59 | CD_MOT_TRANS_SAIDA | NUMBER | Y |  |
| 60 | DS_OBS_PSIH | VARCHAR2 | Y |  |
| 61 | DT_AVISO_MEDICO | DATE | Y |  |
| 62 | HR_AVISO_MEDICO | DATE | Y |  |
| 63 | DS_AVISO_TP_CONTATO | VARCHAR2 | Y |  |
| 64 | DS_AVISO_OBS | VARCHAR2 | Y |  |
| 65 | NM_AVISO_USUARIO | VARCHAR2 | Y |  |
| 66 | TP_PROGRAMA_ALTA_UNIDADE | VARCHAR2 | Y |  |
| 67 | DS_PROGRAMA_ALTA | VARCHAR2 | Y |  |
| 68 | DT_PROGRAMA_ALTA | DATE | Y |  |
| 69 | NM_USUARIO_PROG_ALTA | VARCHAR2 | Y |  |
| 70 | DT_LIBERACAO | DATE | Y |  |
| 71 | SN_IMPORTA_AUTO | VARCHAR2 | N |  |
| 72 | CD_SUB_PLANO | VARCHAR2 | Y |  |
| 73 | SN_BUSCA_ATIVA | VARCHAR2 | N |  |
| 74 | TP_BUSCA_ATIVA | VARCHAR2 | Y |  |
| 75 | SN_OBITO | VARCHAR2 | Y |  |
| 76 | SN_EM_ATENDIMENTO | VARCHAR2 | N |  |
| 77 | CD_TIP_SITUACAO | NUMBER | Y |  |
| 78 | TP_PRIORIDADE | VARCHAR2 | N |  |
| 79 | CD_SSM_SIA | VARCHAR2 | Y |  |
| 80 | CD_GRU_ATE | NUMBER | Y |  |
| 81 | SN_CONSULTA_SIASUS | VARCHAR2 | Y |  |
| 82 | NM_USUARIO_RETORNO | VARCHAR2 | Y |  |
| 83 | DT_USUARIO_RETORNO | DATE | Y |  |
| 84 | SN_RECEBE_VISITA | VARCHAR2 | N |  |
| 85 | NR_CHAMADA_PAINEL | VARCHAR2 | Y |  |
| 86 | NR_LAUDO | NUMBER | Y |  |
| 87 | NR_LAUDO_ALTO_CUSTO | NUMBER | Y |  |
| 88 | CD_USUARIO_DIAG | VARCHAR2 | Y |  |
| 89 | CD_USUARIO_UPD_DIAG | VARCHAR2 | Y |  |
| 90 | DT_ULTIMA_UPD_DIAG | DATE | Y |  |
| 91 | NR_PEDIDO_LAUDO | NUMBER | Y |  |
| 92 | CD_ESCALA_DIA | NUMBER | Y |  |
| 93 | HR_AGENDA | DATE | Y |  |
| 94 | CD_TIP_ACOM_COBERTURA | NUMBER | Y |  |
| 95 | CD_SETOR_OBITO | NUMBER | Y |  |
| 96 | DT_SOLIC_MEDICA | DATE | Y |  |
| 97 | NR_SEQ_PREIMPRE | NUMBER | Y |  |
| 98 | SN_ATENDIMENTO_APAC | VARCHAR2 | Y |  |
| 99 | SN_OBITO_INFEC | VARCHAR2 | Y |  |
| 100 | DT_CHEGADA_PACIENTE | DATE | Y |  |
| 101 | NR_CARTEIRA | VARCHAR2 | Y |  |
| 102 | DT_VALIDADE | DATE | Y |  |
| 103 | NM_EMPRESA | VARCHAR2 | Y |  |
| 104 | NR_CARTEIRA_ACOPLAMENTO | VARCHAR2 | Y |  |
| 105 | DT_VALIDADE_ACOPLAMENTO | DATE | Y |  |
| 106 | NM_EMPRESA_ACOPLAMENTO | VARCHAR2 | Y |  |
| 107 | NR_DECLARACAO_OBITO | VARCHAR2 | Y |  |
| 108 | SENHA_SUS | VARCHAR2 | Y |  |
| 109 | HR_ATENDIMENTO_MEDICO | DATE | Y |  |
| 110 | CD_SEQ_INTEGRA | VARCHAR2 | Y |  |
| 111 | DT_INTEGRA | DATE | Y |  |
| 112 | SN_PACIENTE_PAGA_DIF_DIARIA | VARCHAR2 | Y |  |
| 113 | CD_GUIA | NUMBER | Y |  |
| 114 | CD_LAUDO_APAC | NUMBER | Y |  |
| 115 | TP_DOENCA | VARCHAR2 | Y |  |
| 116 | NR_TEMPO_DOENCA | NUMBER | Y |  |
| 117 | TP_TEMPO_DOENCA | VARCHAR2 | Y |  |
| 118 | TP_CARATER_INTERNACAO | VARCHAR2 | Y |  |
| 119 | TP_OBITO_MULHER | NUMBER | Y |  |
| 120 | TP_ACIDENTE_TISS | NUMBER | Y |  |
| 121 | CD_ATENDIMENTO_SUS_VINCULADO | NUMBER | Y |  |
| 122 | TP_ATENDIMENTO_TISS | NUMBER | Y |  |
| 123 | SN_GESTACAO_TISS | VARCHAR2 | Y |  |
| 124 | SN_ABORTO_TISS | VARCHAR2 | Y |  |
| 125 | SN_TRANSTORNO_TISS | VARCHAR2 | Y |  |
| 126 | SN_COMPLICACAO_TISS | VARCHAR2 | Y |  |
| 127 | SN_ATEND_NEO_TISS | VARCHAR2 | Y |  |
| 128 | SN_COMPLICACAO_NEO_TISS | VARCHAR2 | Y |  |
| 129 | SN_BAIXO_PESO_TISS | VARCHAR2 | Y |  |
| 130 | SN_CESARIO_TISS | VARCHAR2 | Y |  |
| 131 | SN_RECEM_NATO | VARCHAR2 | Y |  |
| 132 | SN_NOTIFICAR_POLICIA | VARCHAR2 | Y |  |
| 133 | SN_CUSTODIA_POLICIAL | VARCHAR2 | Y |  |
| 134 | CD_CID_OBITO | VARCHAR2 | Y |  |
| 135 | SN_NORMAL_TISS | VARCHAR2 | Y |  |
| 136 | SN_PAGA_ACOMPANHANTE | VARCHAR2 | Y |  |
| 137 | CD_SETOR_LOCAL_FSCC | NUMBER | Y |  |
| 138 | SN_PACOTE | VARCHAR2 | Y |  |
| 139 | SN_PACOTE_DAY_CLINIC | VARCHAR2 | Y |  |
| 140 | NR_GUIA_ENVIO_PRINCIPAL | VARCHAR2 | Y |  |
| 141 | CD_PROCEDIMENTO | VARCHAR2 | Y |  |
| 142 | CD_CBO_PRESTADOR | VARCHAR2 | Y |  |
| 143 | CD_CARATER_ATENDIMENTO | NUMBER | Y |  |
| 144 | CD_ATENDIMENTO_INTEGRA | VARCHAR2 | Y |  |
| 145 | CD_PROCEDIMENTO_ALTA | VARCHAR2 | Y |  |
| 146 | CD_PRESTADOR_EM_ATENDIMENTO | VARCHAR2 | Y |  |
| 147 | SN_RELACAO_TRABALHO | VARCHAR2 | N |  |
| 148 | SN_SUSPEITA_EPIDEMIA | VARCHAR2 | N |  |
| 149 | SN_REAVALIACAO | VARCHAR2 | Y |  |
| 150 | NR_TAG_ATENDIMENTO | VARCHAR2 | Y |  |
| 151 | SN_INTERNADO | VARCHAR2 | N |  |
| 152 | NR_PRE_NATAL | VARCHAR2 | Y |  |
| 153 | NR_AUTORIZACAO_GESTOR | VARCHAR2 | Y |  |
| 154 | TP_ENCAMINHAMENTO_OBITO | VARCHAR2 | Y |  |
| 155 | CD_PROTOCOLO | NUMBER | Y |  |
| 156 | CD_SINTOMA_AVALIACAO | NUMBER | Y |  |
| 157 | VL_ESCORE | NUMBER | Y |  |
| 158 | CD_COR_REFERENCIA | NUMBER | Y |  |
| 159 | CD_RES_LEI_REGULACAO | NUMBER | Y |  |
| 160 | CD_MEIO_TRANSPORTE | NUMBER | Y |  |
| 161 | DH_ALTA_MEDICA_LANCADA | DATE | Y |  |
| 162 | DH_ALTA_LANCADA | DATE | Y |  |
| 163 | NM_USUARIO_AUTORIZADOR | VARCHAR2 | Y |  |
| 164 | CD_ATENDIMENTO_ORIGINAL | NUMBER | Y |  |
| 165 | SN_SEGURO_COMPLEMENTAR | VARCHAR2 | Y |  |
| 166 | SN_RETENCAO_JUDICIAL | VARCHAR2 | Y |  |
| 167 | CD_SISTEMA | VARCHAR2 | Y |  |
| 168 | CD_PRESTADOR_INDICACAO | NUMBER | Y |  |
| 169 | CD_SENHA_AUTORIZACAO | NUMBER | Y |  |

---

## DBAMV.OSV_EDITOR_CAMPO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CAMPO | NUMBER | N |  |
| 2 | DS_CAMPO | VARCHAR2 | N |  |
| 3 | CD_TIPO_ITEM | NUMBER | N |  |
| 4 | CD_TIPO_VISUALIZACAO | NUMBER | Y |  |
| 5 | DS_IDENTIFICADOR | VARCHAR2 | N |  |
| 6 | SN_ATIVO | VARCHAR2 | Y |  |
| 7 | CD_METADADO | NUMBER | Y |  |

---

## DBAMV.OSV_EDITOR_REGISTRO_CAMPO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REGISTRO | NUMBER | N |  |
| 2 | CD_CAMPO | NUMBER | N |  |
| 3 | DS_VALOR | VARCHAR2 | Y |  |
| 4 | NM_IMAGEM | VARCHAR2 | Y |  |
| 5 | LO_VALOR | CLOB | Y |  |

---

## DBAMV.OSV_ENTRADAS_IMPORT_FIN

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DT_EMISSAO | DATE | Y |  |
| 2 | DT_VENCIMENTO | DATE | Y |  |
| 3 | NR_DOCUMENTO | VARCHAR2 | Y |  |
| 4 | NR_SERIE | VARCHAR2 | Y |  |
| 5 | CD_FORNECEDOR | NUMBER | Y |  |
| 6 | NM_FANTASIA | VARCHAR2 | Y |  |
| 7 | VL_TOTAL | NUMBER | Y |  |
| 8 | VL_SALDO_DOCUMENTO | NUMBER | Y |  |
| 9 | CD_ENT_PRO | NUMBER | Y |  |
| 10 | TP_DOCUMENTO_ENTRADA | VARCHAR2 | Y |  |
| 11 | TP_NFENTRADA | VARCHAR2 | Y |  |
| 12 | NM_FORNECEDOR | VARCHAR2 | Y |  |
| 13 | DT_ENTRADA | DATE | Y |  |

---

## DBAMV.OSV_ESPECIALID

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ESPECIALID | NUMBER | N |  |
| 2 | DS_ESPECIALID | VARCHAR2 | N |  |
| 3 | SN_ATIVO | VARCHAR2 | N |  |
| 4 | VL_CUSTO_VARIAVEL | NUMBER | Y |  |
| 5 | CD_CBOS | VARCHAR2 | Y |  |
| 6 | CD_ESPECIALID_INTEGRA | VARCHAR2 | Y |  |
| 7 | DT_INTEGRA | DATE | Y |  |
| 8 | CD_SEQ_INTEGRA | NUMBER | Y |  |
| 9 | SN_CLASSIFICACAO_RISCO | VARCHAR2 | Y |  |
| 10 | SN_ATIVO_ENCAMINHAMENTO | VARCHAR2 | N |  |
| 11 | CD_ESPECIALID_MEDICO_EXT | VARCHAR2 | Y |  |
| 12 | CD_ESPECIALID_RESIDENTE_EXT | VARCHAR2 | Y |  |
| 13 | TP_ESPECIALID | VARCHAR2 | N |  |
| 14 | NR_DIAS_CONSULT_ANS | NUMBER | Y |  |

---

## DBAMV.OSV_ESP_MED

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ESPECIALID | NUMBER | N |  |
| 2 | CD_PRESTADOR | NUMBER | N |  |
| 3 | SN_ESPECIAL_PRINCIPAL | VARCHAR2 | N |  |
| 4 | CD_ESP_MED_INTEGRA | VARCHAR2 | Y |  |
| 5 | DT_INTEGRA | DATE | Y |  |
| 6 | CD_SEQ_INTEGRA | NUMBER | Y |  |
| 7 | NR_CARGA_HORARIA | NUMBER | Y |  |
| 8 | CD_RNE | VARCHAR2 | Y |  |
| 9 | DT_CERTIFICACAO | DATE | Y |  |
| 10 | CD_REGISTRO_ESP | VARCHAR2 | Y |  |
| 11 | DT_EXPIRACAO | DATE | Y |  |

---

## DBAMV.OSV_EXPORT_SIPEF

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CONTACONTABIL | VARCHAR2 | Y |  |
| 2 | DESCRICAO_CONTA_FINANCEIRA | VARCHAR2 | N |  |
| 3 | CODIGO_BANCO | NUMBER | N |  |
| 4 | BANCONOME | VARCHAR2 | N |  |
| 5 | BANCOAGENCIA | VARCHAR2 | N |  |
| 6 | BANCOAGENCIACONTA | VARCHAR2 | N |  |
| 7 | NDOCFIN | VARCHAR2 | Y |  |
| 8 | DATAPAG | DATE | Y |  |
| 9 | VALOR | NUMBER | N |  |
| 10 | NFDOC | VARCHAR2 | Y |  |
| 11 | DATANFDOC | DATE | N |  |
| 12 | VENCIMENTONOTA | DATE | N |  |
| 13 | CNPJCPFPARTICIPANTE | VARCHAR2 | Y |  |
| 14 | FORNEC | VARCHAR2 | N |  |
| 15 | VALORDOC | NUMBER | N |  |
| 16 | MULTAJUROS | NUMBER | Y |  |
| 17 | DESCONTO | NUMBER | Y |  |
| 18 | HISTORICO | VARCHAR2 | Y |  |
| 19 | CD_MULTI_EMPRESA | NUMBER | N |  |

---

## DBAMV.OSV_INVENTARIO_BENS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | BEM | NUMBER | N |  |
| 2 | SN_NATUREZA_PERMANENTE | VARCHAR2 | N |  |
| 3 | DATA_ULTIMA_DEPRECIACAO | DATE | Y |  |
| 4 | DESCRICAO_ACESSORIOS | VARCHAR2 | Y |  |
| 5 | DESCRICAO_BEM | VARCHAR2 | N |  |
| 6 | ESPECIFICACAO_BEM | VARCHAR2 | Y |  |
| 7 | MARCA | VARCHAR2 | Y |  |
| 8 | MODELO | VARCHAR2 | Y |  |
| 9 | SERIE | VARCHAR2 | Y |  |
| 10 | NUMERO_ANOS_UTIL | NUMBER | N |  |
| 11 | PLAQUETA | VARCHAR2 | Y |  |
| 12 | DATA_DA_BAIXA | DATE | Y |  |
| 13 | DATA_DA_COMPRA | DATE | N |  |
| 14 | DATA_ULTIMA_PREVENTIVA | DATE | Y |  |
| 15 | DATA_VECIMENTO_GARANTIA | DATE | Y |  |
| 16 | NR_NOTA_FISCAL | VARCHAR2 | Y |  |
| 17 | DATA_TOMBAMENTO | DATE | Y |  |
| 18 | VALOR_HISTORICO | NUMBER | N |  |
| 19 | VALOR_REFERENCIA | NUMBER | Y |  |
| 20 | VALOR_INDEXADO | NUMBER | Y |  |
| 21 | NR_DIAS_PREVENTIVA | NUMBER | Y |  |
| 22 | VALOR_COMPRA | NUMBER | N |  |
| 23 | VALOR_DEPRECIADO | NUMBER | Y |  |
| 24 | HORA_DA_BAIXA | DATE | Y |  |
| 25 | MOTIVO | NUMBER | Y |  |
| 26 | DESCRICAO_MOTIVO | VARCHAR2 | Y |  |
| 27 | FORNECEDOR | NUMBER | Y |  |
| 28 | NOME_FORNECEDOR | VARCHAR2 | Y |  |
| 29 | LOCALIDADE | NUMBER | Y |  |
| 30 | DESCRICAO_LOCALIDADE | VARCHAR2 | Y |  |
| 31 | SETOR | NUMBER | N |  |
| 32 | NOME_DO_SETOR | VARCHAR2 | Y |  |
| 33 | OBSERVACAO | VARCHAR2 | Y |  |
| 34 | CHECK_LIST | NUMBER | Y |  |
| 35 | DESCRICAO_CHECK_LIST | VARCHAR2 | Y |  |
| 36 | DEPRECIACAO | VARCHAR2 | Y |  |
| 37 | DESCRICAO_DEPRECIACAO | VARCHAR2 | Y |  |
| 38 | OBSERVACAO_AGREGADA | VARCHAR2 | Y |  |
| 39 | SN_BEM_AGREGADOR | VARCHAR2 | Y |  |
| 40 | VALOR_DEPRECIACAO_HISTORICA | NUMBER | Y |  |
| 41 | CLASSIFICACAO_IOB | NUMBER | N |  |
| 42 | DESCRICAO_CLASSIFICACAO_IOB | VARCHAR2 | Y |  |
| 43 | SUBCLASSIFICACAO_IOB | NUMBER | N |  |
| 44 | DESCRICAO_SUBCLASSIFICACAO_IOB | VARCHAR2 | Y |  |
| 45 | ESPECIE | NUMBER | N |  |
| 46 | DESCRICAO_ESPECIE | VARCHAR2 | Y |  |
| 47 | CLASSE | NUMBER | N |  |
| 48 | DESCRICAO_CLASSE | VARCHAR2 | Y |  |
| 49 | SUB_CLASSE | NUMBER | N |  |
| 50 | DESCRICAO_SUB_CLASSE | VARCHAR2 | Y |  |
| 51 | TIPO_AQUISICAO | NUMBER | Y |  |
| 52 | DESCRICAO_TIPO_AQUISICAO | VARCHAR2 | Y |  |

---

## DBAMV.OSV_IT_MARCACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MARCACAO | NUMBER | N |  |
| 2 | CD_PACIENTE | NUMBER | Y |  |
| 3 | HR_AGENDADO | DATE | N |  |
| 4 | DT_AGENDADO | DATE | Y |  |
| 5 | SN_ATENDIDO | VARCHAR2 | Y |  |
| 6 | CD_ATENDIMENTO | NUMBER | Y |  |
| 7 | SN_ENCAIXE | VARCHAR2 | Y |  |
| 8 | NM_PACIENTE | VARCHAR2 | Y |  |
| 9 | CD_IT_MARCACAO | NUMBER | N |  |
| 10 | NR_TELEFONE | VARCHAR2 | Y |  |
| 11 | CD_GRU_ATE | NUMBER | Y |  |
| 12 | CD_TIP_MAR | NUMBER | Y |  |
| 13 | NM_USUARIO | VARCHAR2 | Y |  |
| 14 | CD_UNICIDADE | NUMBER | Y |  |
| 15 | TP_SITUACAO | VARCHAR2 | Y |  |
| 16 | CD_CONVENIO | NUMBER | Y |  |
| 17 | CD_SER_DIS | NUMBER | Y |  |
| 18 | CD_CON_PLA | NUMBER | Y |  |
| 19 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 20 | SN_REFERENCIADO | VARCHAR2 | Y |  |
| 21 | NM_CIDADE | VARCHAR2 | Y |  |
| 22 | DT_NASCIMENTO | DATE | Y |  |
| 23 | DS_REFERENCIADO | VARCHAR2 | Y |  |
| 24 | CD_PACIENTE_ANTIGO | VARCHAR2 | Y |  |
| 25 | CD_LOC_TRANS | NUMBER | Y |  |
| 26 | NR_GUIA | NUMBER | Y |  |
| 27 | DT_VAL_GUIA | DATE | Y |  |
| 28 | NM_USUARIO_CONFIRMOU | VARCHAR2 | Y |  |
| 29 | NR_CARTEIRA | VARCHAR2 | Y |  |
| 30 | CD_UNIDADE_REGIONAL | VARCHAR2 | Y |  |
| 31 | NR_SENHA | NUMBER | Y |  |
| 32 | DS_CONSULTORIO | VARCHAR2 | Y |  |
| 33 | NM_MAE | VARCHAR2 | Y |  |
| 34 | CD_SSM_SIA | VARCHAR2 | Y |  |
| 35 | SN_BLOQUEAR | VARCHAR2 | N |  |
| 36 | SN_ATRASADO | VARCHAR2 | N |  |
| 37 | NR_TEMPO_ATRASO | DATE | Y |  |
| 38 | HR_CHEGADA | DATE | Y |  |
| 39 | HR_ATENDIDO | DATE | Y |  |
| 40 | CD_PRO_FAT | VARCHAR2 | Y |  |
| 41 | DT_SOLIC_MEDICA | DATE | Y |  |
| 42 | SN_LOCA_REGISTRO | VARCHAR2 | N |  |
| 43 | SN_IMPRIME_AVISO | VARCHAR2 | Y |  |
| 44 | CD_CIDADE | NUMBER | Y |  |
| 45 | CD_PROCEDIMENTO_SIA | VARCHAR2 | Y |  |
| 46 | SN_LIBERA_VAGA_UBS | VARCHAR2 | Y |  |
| 47 | CD_UNIDADE_REGIONAL_UBS | VARCHAR2 | Y |  |
| 48 | CD_DIVISAO_UNIDADE_REGIONAL | NUMBER | Y |  |
| 49 | CD_IT_MARCACAO_PAI | NUMBER | Y |  |
| 50 | CD_SEQ_INTEGRA | NUMBER | Y |  |
| 51 | DT_INTEGRA | DATE | Y |  |
| 52 | CD_IT_MARCACAO_INTEGRA | VARCHAR2 | Y |  |

---

## DBAMV.OSV_LEITO

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

---

## DBAMV.OSV_MARCACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SER_DIS | NUMBER | Y |  |
| 2 | CD_TIP_MAR | NUMBER | Y |  |
| 3 | CD_PRESTADOR | NUMBER | N |  |
| 4 | CD_MARCACAO | NUMBER | N |  |
| 5 | DT_MARCACAO | DATE | N |  |
| 6 | NR_CONSULTAS | NUMBER | N |  |
| 7 | HR_INICIAL | DATE | N |  |
| 8 | HR_FINAL | DATE | N |  |
| 9 | SN_SIA | VARCHAR2 | N |  |
| 10 | NR_MARCADOS | NUMBER | Y |  |
| 11 | NR_TEMPO_MEDIO | NUMBER | Y |  |
| 12 | CD_ORI_ATE | NUMBER | Y |  |
| 13 | ATIVO | VARCHAR2 | Y |  |
| 14 | SN_ATIVO | VARCHAR2 | Y |  |
| 15 | NM_USUARIO | VARCHAR2 | Y |  |
| 16 | SN_QTD_TIPO | VARCHAR2 | N |  |
| 17 | DS_CONSULTORIO | VARCHAR2 | Y |  |
| 18 | NR_ENCAIXES | NUMBER | Y |  |
| 19 | TP_PRODUCAO | VARCHAR2 | N |  |
| 20 | CD_UNICO | VARCHAR2 | Y |  |
| 21 | SN_BLOQUEAR | VARCHAR2 | Y |  |
| 22 | SN_FALTA | VARCHAR2 | N |  |
| 23 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 24 | NR_ENCAIXE_PERMITIDO | NUMBER | Y |  |
| 25 | SN_SERVICO_LIVRE | VARCHAR2 | N |  |
| 26 | DT_LIB_AGD | DATE | N |  |
| 27 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 28 | CD_UNIDADE_REGIONAL | VARCHAR2 | Y |  |
| 29 | CD_P_ESCALA | VARCHAR2 | Y |  |
| 30 | DT_LIMITE_VISUALIZACAO_UBS | DATE | Y |  |
| 31 | CD_MARCACAO_INTEGRA | NUMBER | Y |  |
| 32 | DT_INTEGRA | DATE | Y |  |
| 33 | CD_SEQ_INTEGRA | NUMBER | Y |  |

---

## DBAMV.OSV_MOV_INT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ATENDIMENTO | NUMBER | Y |  |
| 2 | CD_MOV_INT | NUMBER | N |  |
| 3 | CD_CONVENIO | NUMBER | Y |  |
| 4 | CD_PRESTADOR | NUMBER | Y |  |
| 5 | CD_LEITO | NUMBER | Y |  |
| 6 | DT_MOV_INT | DATE | N |  |
| 7 | HR_MOV_INT | DATE | N |  |
| 8 | DS_MOTIVO | VARCHAR2 | Y |  |
| 9 | SN_RESERVA | VARCHAR2 | Y |  |
| 10 | CD_LEITO_ANTERIOR | NUMBER | Y |  |
| 11 | CD_TIP_ACOM | NUMBER | Y |  |
| 12 | TP_MOV | VARCHAR2 | N |  |
| 13 | NM_USUARIO | VARCHAR2 | Y |  |
| 14 | DT_LIB_MOV | DATE | Y |  |
| 15 | HR_LIB_MOV | DATE | Y |  |
| 16 | CD_MOTIVO_TRANSF_LEITO | NUMBER | Y |  |
| 17 | CD_MOV_INT_INTEGRA | VARCHAR2 | Y |  |
| 18 | CD_SEQ_INTEGRA | NUMBER | Y |  |
| 19 | DT_INTEGRA | DATE | Y |  |
| 20 | DS_LOCAL | VARCHAR2 | Y |  |
| 21 | NR_NUMERACAO_ACESSO | VARCHAR2 | Y |  |

---

## DBAMV.OSV_MULTI_EMPRESAS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 2 | DS_MULTI_EMPRESA | VARCHAR2 | N |  |
| 3 | DS_NOME_CONTADOR | VARCHAR2 | Y |  |
| 4 | CD_CPF_CONTADOR | NUMBER | Y |  |
| 5 | CD_ATIVO | NUMBER | Y |  |
| 6 | CD_PASSIVO | NUMBER | Y |  |
| 7 | CD_RECEITA | NUMBER | Y |  |
| 8 | CD_DESPESA | NUMBER | Y |  |
| 9 | SN_ATIVO | VARCHAR2 | N |  |
| 10 | SN_UTILIZA_CUSTOS | VARCHAR2 | N |  |
| 11 | CD_CGC | NUMBER | Y |  |
| 12 | CD_IEST | VARCHAR2 | Y |  |
| 13 | CD_IMUN | VARCHAR2 | Y |  |
| 14 | CD_IJUNTA | VARCHAR2 | Y |  |
| 15 | DS_ENDERECO | VARCHAR2 | Y |  |
| 16 | CD_UF | VARCHAR2 | Y |  |
| 17 | CD_CIDADE | NUMBER | Y |  |
| 18 | CD_CRC_CONTADOR | VARCHAR2 | Y |  |
| 19 | DS_TERMO_ABERTURA | VARCHAR2 | Y |  |
| 20 | DS_TERMO_FECHAMENTO | VARCHAR2 | Y |  |
| 21 | NR_CEP | VARCHAR2 | Y |  |
| 22 | NM_BAIRRO | VARCHAR2 | Y |  |
| 23 | AIH_INICIAL | NUMBER | Y |  |
| 24 | AIH_FINAL | NUMBER | Y |  |
| 25 | DT_ATUALIZACAO_DATASUS | DATE | Y |  |
| 26 | VERSAO_ATUALIZACAO | VARCHAR2 | Y |  |
| 27 | VERSAO_TABELAS | VARCHAR2 | Y |  |
| 28 | SN_INTERCORRENCIA_IGUAL | VARCHAR2 | N |  |
| 29 | CD_PRESTADOR_DIR_ADMIN | NUMBER | Y |  |
| 30 | CD_PRESTADOR_AIH | NUMBER | Y |  |
| 31 | SN_NR_AIH | VARCHAR2 | Y |  |
| 32 | SN_PERMANENCIA_IDADE | VARCHAR2 | Y |  |
| 33 | SN_PSICO_AUTO_VIRADA_MES | VARCHAR2 | Y |  |
| 34 | CD_NATUREZA_HOSPITALAR | NUMBER | Y |  |
| 35 | CD_PRESTADOR_DIR_CLINICO | NUMBER | Y |  |
| 36 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 37 | CD_ORGAO_LOCAL | VARCHAR2 | Y |  |
| 38 | QT_UTI | NUMBER | Y |  |
| 39 | QT_UTI_2_ADULTA | NUMBER | Y |  |
| 40 | QT_UTI_2_NEO | NUMBER | Y |  |
| 41 | QT_UTI_2_PEDIATRICA | NUMBER | Y |  |
| 42 | QT_UTI_3_ADULTA | NUMBER | Y |  |
| 43 | QT_UTI_3_NEO | NUMBER | Y |  |
| 44 | QT_UTI_3_PEDIATRICA | NUMBER | Y |  |
| 45 | VL_FIDEPS | NUMBER | Y |  |
| 46 | VL_IVHE | NUMBER | Y |  |
| 47 | VL_URGENCIA | NUMBER | Y |  |
| 48 | VL_FIXO_FIDEPS | NUMBER | Y |  |
| 49 | VL_FIXO_IAPI | NUMBER | Y |  |
| 50 | SN_AUDITOR_DIR_CLINICO | VARCHAR2 | Y |  |
| 51 | DS_RAZAO_SOCIAL | VARCHAR2 | Y |  |
| 52 | SN_COTAS | VARCHAR2 | N |  |
| 53 | SN_CONTABILIDADE_CUSTOS | VARCHAR2 | N |  |
| 54 | IP_SERVER_JAVA | VARCHAR2 | Y |  |
| 55 | NM_TESOUREIRO | VARCHAR2 | Y |  |
| 56 | NM_DIRETOR_GERAL | VARCHAR2 | Y |  |
| 57 | SN_IMPORTA_EXA_RX | VARCHAR2 | Y |  |
| 58 | SN_IMPORTA_EXA_LAB | VARCHAR2 | Y |  |
| 59 | SN_IMPORTA_INFECCAO | VARCHAR2 | N |  |
| 60 | SN_IMPORTA_ATEND | VARCHAR2 | N |  |
| 61 | NR_TELEFONE_FNFI | VARCHAR2 | Y |  |
| 62 | SN_IMPORTA_ESTOQUE | VARCHAR2 | N |  |
| 63 | SN_IMPORTA_PRESCRICAO | VARCHAR2 | N |  |
| 64 | SN_CI_AUTO | VARCHAR2 | N |  |
| 65 | CD_FORMULARIO_NF | NUMBER | Y |  |
| 66 | TP_IMPORTA_EXA_LAB | VARCHAR2 | Y |  |
| 67 | TP_IMPORTA_EXA_RX | VARCHAR2 | Y |  |
| 68 | SN_IMPORTA_FINANCEIRO | VARCHAR2 | Y |  |
| 69 | DS_EMAIL_RESPONSAVEL | VARCHAR2 | Y |  |
| 70 | DS_EMAIL_CONTATO | VARCHAR2 | Y |  |
| 71 | NR_DDD_FNFI | VARCHAR2 | Y |  |
| 72 | NR_FAX | VARCHAR2 | Y |  |
| 73 | NR_DDD_FAX | VARCHAR2 | Y |  |
| 74 | NR_DDD_EMPRESA | VARCHAR2 | Y |  |
| 75 | NR_TELEFONE_EMPRESA | VARCHAR2 | Y |  |
| 76 | CD_MOEDA | VARCHAR2 | N |  |
| 77 | SN_UTILIZA_MOEDA | VARCHAR2 | Y |  |
| 78 | TP_SET_PRES_PSDI | VARCHAR2 | Y |  |
| 79 | TP_SET_PRES_PSSD | VARCHAR2 | Y |  |
| 80 | CD_EMPRESA_ANS | VARCHAR2 | Y |  |
| 81 | CD_IMPOSTOS | NUMBER | Y |  |
| 82 | NR_TELEFONE_FCCT | VARCHAR2 | Y |  |
| 83 | NM_GESTOR | VARCHAR2 | Y |  |
| 84 | NR_TELEFONE_GESTOR | VARCHAR2 | Y |  |
| 85 | SN_REMESSA_OBRIGATORIA | VARCHAR2 | Y |  |
| 86 | VL_UTI | NUMBER | Y |  |
| 87 | VL_ENFERMARIA | NUMBER | Y |  |
| 88 | VL_PCT_ANALISE_SUS | NUMBER | Y |  |
| 89 | CD_EMPRESA_SMS | VARCHAR2 | Y |  |
| 90 | SN_OBRIGA_COMPAT | VARCHAR2 | Y |  |
| 91 | NR_ENDERECO | NUMBER | Y |  |
| 92 | NR_CNES | NUMBER | Y |  |
| 93 | NR_CGC_MANTENEDORA | NUMBER | Y |  |
| 94 | NR_CGC_TRABALHO_FFIS | NUMBER | Y |  |
| 95 | NR_AIH_INICIAL_CNRAC | NUMBER | Y |  |
| 96 | NR_AIH_FINAL_CNRAC | NUMBER | Y |  |
| 97 | TP_FORM_IMPRESSAO_FFIS | VARCHAR2 | N |  |
| 98 | SN_INTEGRA_MV_SAUDE | VARCHAR2 | Y |  |
| 99 | TP_PRES_PSDI_FFIS | VARCHAR2 | N |  |
| 100 | SN_UTILIZA_PROCESSO_ME | VARCHAR2 | N |  |
| 101 | SN_IMPORTA_CENTRO_CIRURGICO | VARCHAR2 | N |  |
| 102 | CD_CNAE | VARCHAR2 | Y |  |
| 103 | SN_LAUDOS_SUS | VARCHAR2 | Y |  |
| 104 | TP_LAUDO_AIH | VARCHAR2 | Y |  |
| 105 | DS_MENSAGEM_NOTA_FISCAL | VARCHAR2 | Y |  |
| 106 | SN_RELACIONA_USUARIOS_ATENDIME | VARCHAR2 | N |  |
| 107 | SN_COMPAT_CID_INTERNACAO | VARCHAR2 | Y |  |
| 108 | CD_ORGAO_EMISSOR_AIH | VARCHAR2 | Y |  |
| 109 | NR_INICIAL_AIH_ESPECIFICA | NUMBER | Y |  |
| 110 | NR_FINAL_AIH_ESPECIFICA | NUMBER | Y |  |
| 111 | NR_APAC_INICIAL | NUMBER | Y |  |
| 112 | NR_APAC_FINAL | NUMBER | Y |  |
| 113 | NR_APAC_INICIAL_CNRAC | NUMBER | Y |  |
| 114 | NR_APAC_FINAL_CNRAC | NUMBER | Y |  |
| 115 | DS_IP_EMAIL_AUTOMATICO | VARCHAR2 | Y |  |
| 116 | DS_REMETENTE_EMAIL_AUTOMATICO | VARCHAR2 | Y |  |
| 117 | SN_GERA_DISQUETE_PERIODO | VARCHAR2 | Y |  |
| 118 | CD_FORNECEDOR | NUMBER | Y |  |
| 119 | SN_EMPRESA_RELACIONADA | VARCHAR2 | N |  |
| 120 | SN_CRM_MV | VARCHAR2 | Y |  |
| 121 | SN_CRM_MV_NEWS | VARCHAR2 | Y |  |
| 122 | SN_CRM_MV_PROMOCAO | VARCHAR2 | Y |  |
| 123 | SN_CENTRAL_COMPRAS | VARCHAR2 | Y |  |
| 124 | CD_ESTOQUE | NUMBER | Y |  |
| 125 | CD_TIPO_LOGRADOURO | NUMBER | Y |  |
| 126 | CD_UNIDADE_ACH | NUMBER | Y |  |
| 127 | SN_GERA_ACH | VARCHAR2 | Y |  |
| 128 | CD_TIPO_EMPRESA | NUMBER | Y |  |
| 129 | SN_EMPRESA_CONSOL | VARCHAR2 | Y |  |
| 130 | CD_MULTI_EMPRESA_CONSOL | NUMBER | Y |  |
| 131 | SN_PL_CONTAS_EMP_CONSOL | VARCHAR2 | Y |  |
| 132 | CD_REDUZIDO_PG_EMP_TRANS | NUMBER | Y |  |
| 133 | CD_REDUZIDO_RC_EMP_TRANS | NUMBER | Y |  |
| 134 | SN_UTILIZA_CT_TRANSITORIA | VARCHAR2 | Y |  |
| 135 | SN_GERAR_NR_PROCESSO | VARCHAR2 | Y |  |
| 136 | CD_REDUZIDO_PG_EMP_TRANS_BXCTB | NUMBER | Y |  |
| 137 | CD_REDUZIDO_RC_EMP_TRANS_BXCTB | NUMBER | Y |  |
| 138 | CD_REDUZIDO_PG_TREMP_BXCTB_DES | NUMBER | Y |  |
| 139 | CD_REDUZIDO_PG_TREMP_BXCTB_ASC | NUMBER | Y |  |
| 140 | CD_REDUZIDO_RC_TREMP_BXCTB_DES | NUMBER | Y |  |
| 141 | CD_REDUZIDO_RC_TREMP_BXCTB_ASC | NUMBER | Y |  |
| 142 | CD_REDUZIDO_PG_TREMP_BXCTB_IMP | NUMBER | Y |  |
| 143 | CD_REDUZIDO_RC_TREMP_BXCTB_IMP | NUMBER | Y |  |
| 144 | CD_TIPO_PREST_SIA | VARCHAR2 | Y |  |
| 145 | CD_MULTI_EMPRESA_INTEGRA | VARCHAR2 | Y |  |
| 146 | CD_SEQ_INTEGRA | NUMBER | Y |  |
| 147 | DT_INTEGRA | DATE | Y |  |
| 148 | CD_NIRE | VARCHAR2 | Y |  |
| 149 | NR_APAC_INICIAL_C_ELETIVA | NUMBER | Y |  |
| 150 | NR_APAC_FINAL_C_ELETIVA | NUMBER | Y |  |
| 151 | SN_CALC_AIH_INCREMENTO | VARCHAR2 | N |  |
| 152 | NR_NIRE | VARCHAR2 | Y |  |
| 153 | NR_SUFRAMA | VARCHAR2 | Y |  |
| 154 | NR_ESCRITURACAO | VARCHAR2 | Y |  |
| 155 | DS_NAT_LIVRO | VARCHAR2 | Y |  |
| 156 | DT_ATOS_CONSTITUTIVOS | DATE | Y |  |
| 157 | DT_ATO_CONVERSAO | DATE | Y |  |
| 158 | NR_TIPO_RELACIONAMENTO | VARCHAR2 | Y |  |
| 159 | DT_INICIO_RELACIONAMENTO | DATE | Y |  |
| 160 | DT_TERMINO_RELACIONAMENTO | DATE | Y |  |
| 161 | NR_PLANO_CONTAS | VARCHAR2 | Y |  |
| 162 | NR_SIT_ESPECIAL | VARCHAR2 | Y |  |
| 163 | SN_CENTRALIZADORA | NUMBER | Y |  |
| 164 | NR_CNPJCPF_REPRES_LEGAL | NUMBER | Y |  |
| 165 | DS_REPRES_LEGAL | VARCHAR2 | Y |  |
| 166 | CD_QUALIFICACAO_ASSIN | NUMBER | Y |  |
| 167 | SN_INCENTIVADOR_CULTURAL | VARCHAR2 | N |  |
| 168 | SN_OPTANTE_PELO_SIMPLES | VARCHAR2 | N |  |
| 169 | TP_NATUREZA_OPERACAO | VARCHAR2 | N |  |
| 170 | TP_REGIME_ESPECIAL_TRIBUTACAO | VARCHAR2 | Y |  |
| 171 | TP_GERACAO | VARCHAR2 | Y |  |
| 172 | TP_PADRAO_UTILIZADO | VARCHAR2 | Y |  |
| 173 | DS_ITEM_LISTA_SERVICO | VARCHAR2 | Y |  |
| 174 | CD_TRIBUTACAO_MUNICIPAL | VARCHAR2 | Y |  |
| 175 | CD_IDENTIFICADOR_PESSOA | VARCHAR2 | Y |  |
| 176 | CD_IDENTIFICADOR_EMPRESA | VARCHAR2 | Y |  |
| 177 | TP_IMPORTA_CUSTOS | VARCHAR2 | Y |  |
| 178 | DS_OBS_ORDCOM | VARCHAR2 | Y |  |
| 179 | CD_INSTITUICAO_EXTERNO | VARCHAR2 | Y |  |
| 180 | CD_DIS_SAN | NUMBER | Y |  |
| 181 | SN_CONS_EST_CORP | VARCHAR2 | N |  |
| 182 | SN_CENTRAL_DISTRIBUICAO | VARCHAR2 | N |  |
| 183 | CD_CPF_CNPJ_TECNICO | NUMBER | Y |  |
| 184 | DS_NOME_TECNICO | VARCHAR2 | Y |  |
| 185 | DS_EMAIL_TECNICO | VARCHAR2 | Y |  |
| 186 | NR_FAX_TECNICO | VARCHAR2 | Y |  |
| 187 | NR_TELEFONE_TECNICO | VARCHAR2 | Y |  |
| 188 | CD_NAT_JURIDICA_SPED_REINF | VARCHAR2 | Y |  |
| 189 | SN_UTILIZA_SPED | VARCHAR2 | N |  |
| 190 | DS_EMAIL_CONTADOR | VARCHAR2 | Y |  |
| 191 | CD_SEGMENTO_MERCADO | NUMBER | Y |  |
| 192 | CD_MULTI_EMPRESA_PL_CONTAS | NUMBER | Y |  |

---

## DBAMV.OSV_ORI_ATE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORI_ATE | NUMBER | N |  |
| 2 | DS_ORI_ATE | VARCHAR2 | N |  |
| 3 | TP_ORIGEM | VARCHAR2 | N |  |
| 4 | CD_SETOR | NUMBER | Y |  |
| 5 | SN_ATIVO | VARCHAR2 | N |  |
| 6 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 7 | CD_COPA | NUMBER | Y |  |
| 8 | CD_ORI_ATE_INTEGRA | VARCHAR2 | Y |  |
| 9 | CD_SEQ_INTEGRA | NUMBER | Y |  |
| 10 | DT_INTEGRA | DATE | Y |  |
| 11 | SN_PADRAO | VARCHAR2 | N |  |

---

## DBAMV.OSV_PACIENTE

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

## DBAMV.OSV_PAGU_AVALIACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AVALIACAO | NUMBER | N |  |
| 2 | CD_FORMULA | NUMBER | N |  |
| 3 | DH_AVALIACAO | DATE | N |  |
| 4 | NM_USUARIO | VARCHAR2 | N |  |
| 5 | VL_RESULTADO | NUMBER | Y |  |
| 6 | CD_ATENDIMENTO | NUMBER | Y |  |
| 7 | DS_INTERPRETACAO_RESULTADO | VARCHAR2 | Y |  |
| 8 | CD_TRIAGEM_ATENDIMENTO | NUMBER | Y |  |
| 9 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 10 | CD_REGISTRO_CLINICO | NUMBER | Y |  |
| 11 | CD_DOCUMENTO_CLINICO | NUMBER | Y |  |
| 12 | CD_COLETA_SINAL_VITAL | NUMBER | Y |  |
| 13 | CD_AVALIACAO_GESTACAO | NUMBER | Y |  |
| 14 | SN_EXIBIR_RESULTADO | VARCHAR2 | N |  |
| 15 | SN_ESTADO_PREVIO | VARCHAR2 | Y |  |

---

## DBAMV.OSV_PAGU_FORMULA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FORMULA | NUMBER | N |  |
| 2 | DS_FORMULA | VARCHAR2 | N |  |
| 3 | TP_FORMULA | VARCHAR2 | N |  |
| 4 | CD_ACAO | NUMBER | Y |  |
| 5 | NR_PERIOCIDADE_AVALIACAO | NUMBER | Y |  |
| 6 | NR_INICIO_AVALIACAO | NUMBER | Y |  |
| 7 | SN_AVALIACAO_ALTA | VARCHAR2 | Y |  |
| 8 | SN_ATIVAR_REGRAS | VARCHAR2 | N |  |
| 9 | CD_UNIDADE_FORMULA | NUMBER | Y |  |

---

## DBAMV.OSV_PAGU_FORMULA_INTERPRETACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PAGU_FORMULA_INTERPRETACAO | NUMBER | N |  |
| 2 | CD_FORMULA | NUMBER | N |  |
| 3 | VL_INICIAL | NUMBER | N |  |
| 4 | VL_FINAL | NUMBER | N |  |
| 5 | DS_INTERPRETACAO | VARCHAR2 | N |  |
| 6 | DS_INTERVENCAO | VARCHAR2 | Y |  |
| 7 | DS_SIGLA_INTERPRETACAO | VARCHAR2 | Y |  |
| 8 | DS_SIGLA_INTERVENCAO | VARCHAR2 | Y |  |

---

## DBAMV.OSV_PAGU_OBJETO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_OBJETO | NUMBER | N |  |
| 2 | NM_OBJETO | VARCHAR2 | N |  |
| 3 | TP_OBJETO | VARCHAR2 | N |  |
| 4 | NR_ORDEM | NUMBER | N |  |
| 5 | SN_INTERNACAO | VARCHAR2 | N |  |
| 6 | SN_AMBULATORIO | VARCHAR2 | N |  |
| 7 | SN_EXTERNO | VARCHAR2 | N |  |
| 8 | SN_URGENCIA | VARCHAR2 | N |  |
| 9 | SN_HOME_CARE | VARCHAR2 | N |  |
| 10 | SN_SUS | VARCHAR2 | N |  |
| 11 | SN_BUSCA_ATIVA | VARCHAR2 | N |  |
| 12 | SN_EXCETO_TIP_PRESC | VARCHAR2 | N |  |
| 13 | CD_TEMA_CLINICO | NUMBER | Y |  |
| 14 | DS_EXIBICAO | VARCHAR2 | Y |  |
| 15 | CD_TIPO_DOCUMENTO | NUMBER | Y |  |
| 16 | SN_ASSINATURA | VARCHAR2 | Y |  |

---

## DBAMV.OSV_PRESTADOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRESTADOR | NUMBER | N |  |
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
| 15 | DT_CADASTRO | DATE | Y |  |
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
| 71 | SN_AUDITOR_SUS | VARCHAR2 | N |  |
| 72 | DT_INICIO_ATUACAO | DATE | Y |  |
| 73 | CD_SETOR | NUMBER | Y |  |
| 74 | TP_PRESTADOR | VARCHAR2 | N |  |
| 75 | CD_TIPO_LOGRADOURO | NUMBER | Y |  |
| 76 | NR_ENDERECO | VARCHAR2 | Y |  |
| 77 | CD_TIPO_LOGRADOURO_COMERCIAL | NUMBER | Y |  |
| 78 | NR_ENDERECO_COMERCIAL | VARCHAR2 | Y |  |
| 79 | NR_CNES | VARCHAR2 | Y |  |
| 80 | CD_CBOS | VARCHAR2 | Y |  |
| 81 | TP_ACESSO_DIAGNOSTICO | VARCHAR2 | Y |  |
| 82 | DS_ORIENTACAO_AGENDAMENTO | VARCHAR2 | Y |  |
| 83 | SN_MOSTRA_ENDERECO | VARCHAR2 | N |  |
| 84 | SN_MOSTRA_ENDERECO_COM | VARCHAR2 | N |  |
| 85 | TP_REMESSA | VARCHAR2 | N |  |
| 86 | DS_SIGLA_AGENDAMENTO | VARCHAR2 | Y |  |
| 87 | DV_AGENCIA | VARCHAR2 | Y |  |
| 88 | DV_CONTA_CORRENTE | VARCHAR2 | Y |  |
| 89 | NR_PONTUACAO_OCORRENCIA | NUMBER | Y |  |
| 90 | CD_SITUACAO_FAMILIAR | NUMBER | Y |  |
| 91 | TP_SEXO | VARCHAR2 | Y |  |
| 92 | TP_COR | VARCHAR2 | Y |  |
| 93 | TP_CERTIDAO | VARCHAR2 | Y |  |
| 94 | DS_OM_IDENTIDADE | VARCHAR2 | Y |  |
| 95 | CD_CIDADANIA | NUMBER | Y |  |
| 96 | CD_GRAU_INS | NUMBER | Y |  |
| 97 | DT_CADASTRO_MANUAL | DATE | Y |  |
| 98 | CD_NATURALIDADE | NUMBER | Y |  |
| 99 | CD_UF_ORGAO_EMISSOR | VARCHAR2 | Y |  |
| 100 | DT_EXPEDICAO_ORGAO_EMISSOR | DATE | Y |  |
| 101 | DT_INICIO_CONTRATO | DATE | Y |  |
| 102 | DT_FINAL_CONTRATO | DATE | Y |  |
| 103 | CD_IDENTIFICADOR_PESSOA | VARCHAR2 | Y |  |
| 104 | CD_ENDERECO_POSTA | VARCHAR2 | Y |  |
| 105 | CD_ENDERECO_POSTA_COM | VARCHAR2 | Y |  |
| 106 | CD_INSTITUICAO_EXTERNA | VARCHAR2 | Y |  |
| 107 | CD_ATIVIDADE_PRINCIPAL | VARCHAR2 | Y |  |
| 108 | CD_AREA_ATUACAO | VARCHAR2 | Y |  |
| 109 | CD_CLUE_CONTRATO_NOMINA | VARCHAR2 | Y |  |
| 110 | CD_CLUE_CONTRATO_REAL | VARCHAR2 | Y |  |
| 111 | CD_JORNADA | NUMBER | Y |  |
| 112 | SN_RESIDENCIA_MEDICA | VARCHAR2 | Y |  |
| 113 | CD_ANO_RESIDENCIA | NUMBER | Y |  |
| 114 | CD_ESPECIALID_RESIDENTE | NUMBER | Y |  |
| 115 | TIPO_MODALIDADE_CONTRATO | NUMBER | Y |  |
| 116 | SN_FIEL | VARCHAR2 | Y |  |
| 117 | SN_VIGENCIA_FIEL | VARCHAR2 | Y |  |
| 118 | VL_SALARIO | NUMBER | Y |  |
| 119 | TP_CONTRATO_EXTERNO | NUMBER | Y |  |
| 120 | CD_ESTADO_FORMACAO | NUMBER | Y |  |
| 121 | DS_ORIENTACAO_AGENDAMENTO_WEB | VARCHAR2 | Y |  |
| 122 | NR_PONTUACAO | NUMBER | Y |  |
| 123 | SN_LIBERA_ACESSO_LISTA_PEP | VARCHAR2 | N |  |

---

## DBAMV.OSV_PRE_MED

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
| 25 | CD_OBJETO | NUMBER | Y |  |
| 26 | NM_USUARIO_AUTORIZADOR | VARCHAR2 | Y |  |
| 27 | CD_REGISTRO_CLINICO | NUMBER | Y |  |
| 28 | CD_PRE_MED_TRATMT | NUMBER | Y |  |
| 29 | SN_ALTERA_PROTOCOLO_TRATAMENTO | VARCHAR2 | Y |  |
| 30 | SN_PRESCRICAO_DIA_SEGUINTE | VARCHAR2 | N |  |
| 31 | CD_USUARIO_CONVERSAO_PRESCRIC | VARCHAR2 | Y |  |
| 32 | DH_CONVERSAO_PRESCRICAO | DATE | Y |  |
| 33 | NM_PRESCRICAO | VARCHAR2 | Y |  |
| 34 | CD_DOCUMENTO_CLINICO | NUMBER | Y |  |
| 35 | CD_TRATAMENTO | NUMBER | Y |  |
| 36 | NR_CICLO | NUMBER | Y |  |
| 37 | NR_SESSAO | NUMBER | Y |  |
| 38 | CD_PRE_MED_INTEGRA | VARCHAR2 | Y |  |
| 39 | CD_TP_SOLICITACAO | NUMBER | Y |  |
| 40 | SN_COPIADA | VARCHAR2 | Y |  |
| 41 | NR_PERCENTUAL_REDUCAO_QUANTD | NUMBER | Y |  |
| 42 | DS_JUSTIFICATIVA_REDUCAO_QTD | VARCHAR2 | Y |  |
| 43 | TP_AGENDAMENTO | VARCHAR2 | Y |  |
| 44 | SN_INTERROMPER_SESSAO | VARCHAR2 | Y |  |
| 45 | DS_JUSTIFICATIVA_INTERROMPER | VARCHAR2 | Y |  |
| 46 | SN_INTERCORRENCIA | VARCHAR2 | Y |  |
| 47 | DS_JUSTIFICATIVA_SESSAO | VARCHAR2 | Y |  |
| 48 | SN_MEDICAMENTO_ADMINISTRADO | VARCHAR2 | Y |  |
| 49 | SN_CONCO_RADIOTERAPIA | VARCHAR2 | Y |  |

---

## DBAMV.OSV_PW_DOCUMENTO_CLINICO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DOCUMENTO_CLINICO | NUMBER | N |  |
| 2 | CD_TIPO_DOCUMENTO | NUMBER | N |  |
| 3 | CD_DOCUMENTO_DIGITAL | NUMBER | Y |  |
| 4 | CD_PACIENTE | NUMBER | Y |  |
| 5 | CD_ATENDIMENTO | NUMBER | Y |  |
| 6 | CD_USUARIO | VARCHAR2 | Y |  |
| 7 | CD_PRESTADOR | NUMBER | Y |  |
| 8 | TP_STATUS | VARCHAR2 | Y |  |
| 9 | DH_REFERENCIA | DATE | Y |  |
| 10 | DH_CRIACAO | DATE | Y |  |
| 11 | DH_FECHAMENTO | DATE | Y |  |
| 12 | DH_IMPRESSO | DATE | Y |  |
| 13 | TP_EXTENSAO | VARCHAR2 | Y |  |
| 14 | CD_SETOR | NUMBER | Y |  |
| 15 | CD_OBJETO | NUMBER | Y |  |
| 16 | CD_DOCUMENTO_CANCELADO | NUMBER | Y |  |
| 17 | NM_DOCUMENTO | VARCHAR2 | Y |  |
| 18 | NM_VERSAO_DOCUMENTO | VARCHAR2 | Y |  |
| 19 | DH_DOCUMENTO | DATE | Y |  |
| 20 | CD_DOCUMENTO_CLINICO_NOVO | NUMBER | Y |  |
| 21 | CD_DOC_CLINICO_REFERENCIA | NUMBER | Y |  |
| 22 | CD_USUARIO_AUTORIZADOR | VARCHAR2 | Y |  |
| 23 | SN_INTEGRA_GREEN | VARCHAR2 | Y |  |
| 24 | CD_MULTI_EMPRESA | NUMBER | Y |  |
| 25 | SN_CONFIDENCIAL | VARCHAR2 | Y |  |
| 26 | QT_VIAS_IMPRESSAS | NUMBER | Y |  |
| 27 | CD_DOCUMENTO_CLINICO_ANTERIOR | NUMBER | Y |  |
| 28 | CD_ESPECIALIDADE_PRESTADOR | NUMBER | Y |  |

---

## DBAMV.OSV_PW_EDITOR_CLINICO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EDITOR_CLINICO | NUMBER | N |  |
| 2 | CD_EDITOR_REGISTRO | NUMBER | N |  |
| 3 | CD_DOCUMENTO_CLINICO | NUMBER | Y |  |
| 4 | CD_EDITOR_CLINICO_MODULO | NUMBER | Y |  |
| 5 | CD_DOCUMENTO | NUMBER | Y |  |
| 6 | CD_USUARIO_AUTORIZADOR | VARCHAR2 | Y |  |
| 7 | CD_VERSAO | NUMBER | Y |  |

---

## DBAMV.OSV_PW_TIPO_DOCUMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIPO_DOCUMENTO | NUMBER | N |  |
| 2 | DS_TIPO_DOCUMENTO | VARCHAR2 | N |  |
| 3 | NM_TABELA | VARCHAR2 | N |  |
| 4 | SN_ASSINATURA_DIGITAL | VARCHAR2 | N |  |
| 5 | SN_PRONTUARIO | VARCHAR2 | N |  |
| 6 | TP_DOCUMENTO | VARCHAR2 | N |  |
| 7 | SN_PENDENCIAS_ALERTAS | VARCHAR2 | N |  |
| 8 | DH_PENDENCIAS_ALERTAS | DATE | Y |  |
| 9 | SN_ATIVO | VARCHAR2 | N |  |
| 10 | TP_SUB_DOCUMENTO | VARCHAR2 | Y |  |
| 11 | SN_OBJETO | VARCHAR2 | N |  |
| 12 | SN_PENDENCIA_IMPEDITIVA_ALTA | VARCHAR2 | Y |  |
| 13 | TP_GERA_PENDENCIA_FECHAMENTO | VARCHAR2 | Y |  |
| 14 | DT_INICIO_PENDENCIA_FECHAMENTO | DATE | Y |  |

---

## DBAMV.OSV_SER_DIS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SER_DIS | NUMBER | N |  |
| 2 | DS_SER_DIS | VARCHAR2 | N |  |
| 3 | TP_ANAMNESE | VARCHAR2 | Y |  |
| 4 | SN_COD_PAC | VARCHAR2 | N |  |
| 5 | CD_ESPECIALID | NUMBER | Y |  |
| 6 | NR_IDADE_INICIAL | NUMBER | Y |  |
| 7 | NR_IDADE_FINAL | NUMBER | Y |  |
| 8 | SN_OBRIGA_ENCAMINHAMENTO | VARCHAR2 | Y |  |
| 9 | SN_AGENDA_TELEFONE | VARCHAR2 | Y |  |
| 10 | VL_CAUCAO_RETIDO | NUMBER | Y |  |
| 11 | VL_CAUCAO_DEPOSITO | NUMBER | Y |  |
| 12 | QT_DIAS | NUMBER | Y |  |
| 13 | SN_VIGILANCIA | VARCHAR2 | N |  |
| 14 | CD_SERVICO_EXTERNO | VARCHAR2 | Y |  |
| 15 | DS_ORIENTACAO_AGENDAMENTO | VARCHAR2 | Y |  |
| 16 | SN_ENVIA_PRONTUARIO | VARCHAR2 | N |  |
| 17 | NR_QTO_LIMITE_DIAS_AGENDAMENTO | NUMBER | Y |  |

---

## DBAMV.OSV_SETOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SETOR | NUMBER | N |  |
| 2 | NM_SETOR | VARCHAR2 | N |  |
| 3 | CD_CEN_CUS | VARCHAR2 | Y |  |
| 4 | SN_PODE_SOLICITAR_EXAMES | VARCHAR2 | N |  |
| 5 | CD_FATOR | NUMBER | Y |  |
| 6 | CD_GRUPO_DE_CUSTO | NUMBER | Y |  |
| 7 | CD_SETOR_CUSTO | NUMBER | Y |  |
| 8 | NR_ORDEM_RATEIO | NUMBER | Y |  |
| 9 | SN_CENTRO_DE_CUSTO | VARCHAR2 | N |  |
| 10 | CLASSIFICACAO | VARCHAR2 | Y |  |
| 11 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 12 | TP_RAT_MAT_DIRETOS | VARCHAR2 | Y |  |
| 13 | SN_ACEITA_LANCAMENTO | VARCHAR2 | N |  |
| 14 | CD_ROTINA | VARCHAR2 | Y |  |
| 15 | SN_PRODUCAO_FATURADA | VARCHAR2 | Y |  |
| 16 | SN_CALCULO_EVENTO | VARCHAR2 | N |  |
| 17 | TP_COMPOSICAO_CALCULO | VARCHAR2 | Y |  |
| 18 | CD_ROTINA_MAT_DIRETOS | VARCHAR2 | Y |  |
| 19 | CD_SEQ_RESUMO | NUMBER | Y |  |
| 20 | CD_SEQ_DETALHE | NUMBER | Y |  |
| 21 | SN_DEDUCAO_HONORARIO | VARCHAR2 | Y |  |
| 22 | SN_EXPORTA_FFIS | VARCHAR2 | Y |  |
| 23 | SN_ATIVO | VARCHAR2 | N |  |
| 24 | DS_CAMINHO_IMPRESSORA | VARCHAR2 | Y |  |
| 25 | CD_SETOR_EXPORTACAO | NUMBER | Y |  |
| 26 | TP_CALCULO_HONORARIO | VARCHAR2 | Y |  |
| 27 | SN_IMPRIME_LAUDO_LOCAL | VARCHAR2 | N |  |
| 28 | DS_IMPRESSORA_ETIQ_COLETA | VARCHAR2 | Y |  |
| 29 | TP_SETOR | VARCHAR2 | Y |  |
| 30 | CD_MULTI_EMPRESA_ORIGEM | NUMBER | Y |  |
| 31 | SN_VER_EXAME_N_LIBERADO | VARCHAR2 | N |  |
| 32 | CD_SETOR_INTEGRA | VARCHAR2 | Y |  |
| 33 | DS_SIGLA_AGENDAMENTO | VARCHAR2 | Y |  |
| 34 | TP_GRUPO_SETOR | VARCHAR2 | Y |  |
| 35 | TP_ORIPEDIDO_FFCH | VARCHAR2 | Y |  |
| 36 | CD_PRESTADOR_RESPONSAVEL | NUMBER | Y |  |
| 37 | SN_OBRIGA_PRESTADOR | VARCHAR2 | N |  |
| 38 | SN_OBRIGA_RECURSO | VARCHAR2 | N |  |
| 39 | SN_OBRIGA_UNIDADE | VARCHAR2 | N |  |
| 40 | SN_VER_EXAME_IMG_N_LIB | VARCHAR2 | N |  |
| 41 | DS_OBSERVACAO_AGENDAMENTO | VARCHAR2 | Y |  |
| 42 | SN_EXIBE_TIPO_HORARIO | VARCHAR2 | Y |  |
| 43 | NR_RAMAL | VARCHAR2 | Y |  |
| 44 | DT_INCLUSAO | DATE | Y |  |

---

## DBAMV.OSV_SINAL_VITAL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_COLETA_SINAL_VITAL | NUMBER | N |  |
| 2 | HORARIO | VARCHAR2 | Y |  |
| 3 | CD_ATENDIMENTO | NUMBER | Y |  |
| 4 | CD_PRESTADOR | NUMBER | Y |  |
| 5 | NM_PRESTADOR | VARCHAR2 | Y |  |
| 6 | CD_SINAL_VITAL | NUMBER | N |  |
| 7 | DS_SINAL_VITAL | VARCHAR2 | Y |  |
| 8 | VALOR | NUMBER | Y |  |
| 9 | NOME | VARCHAR2 | Y |  |

---

## DBAMV.OSV_TIP_MAR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIP_MAR | NUMBER | N |  |
| 2 | DS_TIP_MAR | VARCHAR2 | N |  |
| 3 | CD_TIP_ATE | NUMBER | Y |  |
| 4 | CD_CARATER_ATENDIMENTO | NUMBER | Y |  |
| 5 | CD_TIP_MAR_INTEGRA | VARCHAR2 | Y |  |
| 6 | CD_SEQ_INTEGRA | NUMBER | Y |  |
| 7 | DT_INTEGRA | DATE | Y |  |

---

## DBAMV.OSV_UNID_INT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_UNID_INT | NUMBER | N |  |
| 2 | CD_CEN_CUS | VARCHAR2 | Y |  |
| 3 | DS_UNID_INT | VARCHAR2 | N |  |
| 4 | DS_LOCALIZACAO | VARCHAR2 | Y |  |
| 5 | CD_SETOR | NUMBER | N |  |
| 6 | CD_GRU_FAT | NUMBER | Y |  |
| 7 | SN_CODIGO_DE_BARRAS | VARCHAR2 | N |  |
| 8 | SN_ATIVO | VARCHAR2 | N |  |
| 9 | SN_PROG_ALTA | VARCHAR2 | N |  |
| 10 | TP_UNID_INT | VARCHAR2 | N |  |
| 11 | SN_HOSPITAL_DIA | VARCHAR2 | N |  |
| 12 | SN_SEMI_UTI | VARCHAR2 | Y |  |
| 13 | VL_CUSTO_VARIAVEL | NUMBER | Y |  |
| 14 | VL_CUSTO_VAR_ACOMP | NUMBER | Y |  |
| 15 | CD_UNID_INT_INTEGRA | VARCHAR2 | Y |  |
| 16 | CD_SEQ_INTEGRA | NUMBER | Y |  |
| 17 | DT_INTEGRA | DATE | Y |  |
| 18 | SN_TRANSF_LEITO_VAGO | VARCHAR2 | Y |  |
| 19 | SN_PERMITE_RN_UTI | VARCHAR2 | Y |  |

---

## DBAMV.OSV_VCTO_MATMED

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ESTOQUE | NUMBER | N |  |
| 2 | DS_ESTOQUE | VARCHAR2 | N |  |
| 3 | CD_ESPECIE | NUMBER | N |  |
| 4 | DS_ESPECIE | VARCHAR2 | N |  |
| 5 | CD_CLASSE | NUMBER | N |  |
| 6 | DS_CLASSE | VARCHAR2 | N |  |
| 7 | CD_SUB_CLA | NUMBER | N |  |
| 8 | DS_SUB_CLA | VARCHAR2 | N |  |
| 9 | CD_PRODUTO | NUMBER | N |  |
| 10 | DS_PRODUTO | VARCHAR2 | N |  |
| 11 | DS_UNIDADE | VARCHAR2 | Y |  |
| 12 | DT_VALIDADE | DATE | Y |  |
| 13 | CD_LOTE | VARCHAR2 | Y |  |
| 14 | QT_ESTOQUE_ATUAL | NUMBER | Y |  |
| 15 | VL_TOTAL_PRODUTO | NUMBER | Y |  |

---

## DBAMV.RETIRO_EQUIPAMENTO_OS
> Retiro de equipamento do setor para manutenc?o.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_OS | NUMBER | N | Codigo da Ordem de Servico. |
| 2 | CD_USUARIO_ENTREGA_EQUIP | VARCHAR2 | Y | Codigo do usuario que entrega o equipamento para manutenc?o |
| 3 | DT_RETIRO_EQUIPAMENTO | DATE | Y | Data do retiro do equipamento para manutenc?o |
| 4 | CD_USUARIO_RECEBE_EQUIP | VARCHAR2 | Y | Codigo do usuario que recebe o equipamento da manutenc?o |
| 5 | DT_RETORNO_EQUIPAMENTO | DATE | Y | Data do retorno do equipamento ao setor origem |
