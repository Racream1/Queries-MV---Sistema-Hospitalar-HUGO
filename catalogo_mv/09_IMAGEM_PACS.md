# 09 - Imagens Medicas e PACS

> DICOM, PACS, radiologia (ORDDCM_, MPACS)

## Resumo

- **Tabelas**: 874
- **Owners**: DBAMV, IDCE, IDCECRER, MPACS, MPACSCRER

---

## DBAMV.TEX_RX
> Tabela de Texto Padr?o do Diagnostico por Imagem

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TEX_RX | NUMBER | N | Codigo do Texto Padr?o |
| 2 | DS_TEX_RX | VARCHAR2 | N | Descric?o de Identificac?o do Texto  Padr?o |
| 3 | DS_TEXTO | LONG | Y | Conteudo do Texto Padr?o |
| 4 | CD_PRESTADOR | NUMBER | Y | Codigo do Prestador |
| 5 | CD_SET_EXA | NUMBER | Y | Codigo do Setor Executante |
| 6 | CD_GED_DOCUMENTO | NUMBER | Y |  |
| 7 | IDENTIFICADOR | VARCHAR2 | Y | Cria um identificador para uso no Editor de Laudos do PSDI, possibilitando usa-lo como uma tecla ... |
| 8 | CD_EXA_RX | NUMBER | Y |  |

---

## IDCE.CAPTURA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CAP_ID | NUMBER | N |  |
| 2 | PAC_ID | NUMBER | N |  |
| 3 | PACIENTENOME | VARCHAR2 | Y |  |
| 4 | EXA_ID | NUMBER | Y |  |
| 5 | EXAMENOME | VARCHAR2 | Y |  |
| 6 | PRC_ID | NUMBER | Y |  |
| 7 | PRC_NOME | VARCHAR2 | Y |  |
| 8 | PASTA | VARCHAR2 | N |  |
| 9 | LAUDO | VARCHAR2 | N |  |
| 10 | TERMINAL | NUMBER | N |  |
| 11 | DATACAD | DATE | N |  |

---

## IDCE.CK_VW_ALERGIAS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PACIENTE | NUMBER | N |  |
| 2 | DS_SUBSTANCIA | VARCHAR2 | N |  |
| 3 | DS_AVISO | VARCHAR2 | N |  |

---

## IDCE.CK_VW_ALERGIAS_1

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PACIENTE | NUMBER | N |  |
| 2 | DS_SUBSTANCIA | VARCHAR2 | N |  |
| 3 | DS_AVISO | VARCHAR2 | N |  |

---

## IDCE.CK_VW_ANTIBIOGRAMA_CULTURA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PED_LAB | NUMBER | N |  |
| 2 | CD_ITPED_LAB | NUMBER | N |  |
| 3 | CD_GERMES | NUMBER | N |  |
| 4 | DS_GERME | VARCHAR2 | N |  |
| 5 | DS_COLONIA | VARCHAR2 | Y |  |
| 6 | CD_AGRUPAMENTO | NUMBER | Y |  |
| 7 | DS_OBSERVACAO_GERME | VARCHAR2 | Y |  |
| 8 | CD_ANTIMICROB | VARCHAR2 | N |  |
| 9 | NM_ANTIMICROB | VARCHAR2 | Y |  |
| 10 | TP_RESULTADO | VARCHAR2 | Y |  |
| 11 | NR_MIC | VARCHAR2 | Y |  |

---

## IDCE.CK_VW_CIRURGIAS_PREVIAS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PACIENTE | NUMBER | N |  |
| 2 | DT_REALIZACAO | DATE | Y |  |
| 3 | DS_CIRURGIA | VARCHAR2 | N |  |

---

## IDCE.CK_VW_CLASSIFICACAO_RISCO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ATENDIMENTO | NUMBER | Y |  |
| 2 | DH_PRE_ATENDIMENTO | DATE | N |  |
| 3 | CD_TRIAGEM_ATENDIMENTO | NUMBER | Y |  |
| 4 | CD_PACIENTE | NUMBER | Y |  |
| 5 | NM_PACIENTE | VARCHAR2 | Y |  |
| 6 | NM_COR | VARCHAR2 | N |  |
| 7 | CD_COR_REFERENCIA | NUMBER | N |  |
| 8 | LINHA_CUIDADO_CLAS_RISCO | VARCHAR2 | Y |  |
| 9 | DS_RGB_DECIMAL | VARCHAR2 | Y |  |

---

## IDCE.CK_VW_DOC_ELET_MV

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PACIENTE | NUMBER | Y |  |
| 2 | DH_FECHAMENTO | DATE | Y |  |
| 3 | NM_DOCUMENTO | VARCHAR2 | Y |  |
| 4 | LO_DOCUMENTO | BLOB | Y |  |
| 5 | CD_ATENDIMENTO | NUMBER | Y |  |

---

## IDCE.CK_VW_EVOLUCAO_MED

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PACIENTE | NUMBER | N |  |
| 2 | DT_PRE_MED | DATE | N |  |
| 3 | NM_PRESTADOR | VARCHAR2 | N |  |
| 4 | DS_EVOLUCAO | LONG | Y |  |

---

## IDCE.CK_VW_EXAMES_LABORATORIAIS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PACIENTE | NUMBER | N |  |
| 2 | DT_PEDIDO | DATE | N |  |
| 3 | NM_EXA_LAB | VARCHAR2 | N |  |

---

## IDCE.CK_VW_JUSTIFICATIVA_PRESCRICAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | PRESCRICAO | NUMBER | N |  |
| 2 | ATENDIMENTO | NUMBER | N |  |
| 3 | PEDIDO | NUMBER | N |  |
| 4 | DT_PEDIDO | DATE | N |  |
| 5 | ACC_NUMBER | NUMBER | N |  |
| 6 | EXAME | VARCHAR2 | N |  |
| 7 | JUSTIFICATIVA_DA_PRESCRICAO | VARCHAR2 | Y |  |

---

## IDCE.CK_VW_OBSERVACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 2 | CD_PACIENTE | NUMBER | Y |  |
| 3 | DT_PEDIDO | DATE | Y |  |
| 4 | CD_ATENDIMENTO | NUMBER | Y |  |
| 5 | DS_EXAME | VARCHAR2 | Y |  |

---

## IDCE.CK_VW_PROD_DIA_TP_ATEND

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DT_PEDIDO_COM_HORA | VARCHAR2 | Y |  |
| 2 | DT_PEDIDO | DATE | Y |  |
| 3 | QT_EXTERNO | NUMBER | Y |  |
| 4 | QT_AMBULATORIAL | NUMBER | Y |  |
| 5 | QT_PRONTO_SOCORRO | NUMBER | Y |  |
| 6 | QT_INTERNADO | NUMBER | Y |  |

---

## IDCE.CK_VW_RESULT_EXAMES_CULTURA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 2 | CD_ATENDIMENTO | NUMBER | N |  |
| 3 | CD_PED_LAB | NUMBER | N |  |
| 4 | CD_ITPED_LAB | NUMBER | N |  |
| 5 | CD_PACIENTE | VARCHAR2 | N |  |
| 6 | NM_PACIENTE | NUMBER | N |  |
| 7 | CD_EXA_LAB | VARCHAR2 | N |  |
| 8 | NM_EXA_LAB | NUMBER | N |  |
| 9 | DH_LAUDO | VARCHAR2 | Y |  |
| 10 | CD_VERSAO | VARCHAR2 | Y |  |
| 11 | NM_CAMPO | CHAR | Y |  |
| 12 | DS_RESULTADO | VARCHAR2 | N |  |
| 13 | DS_OBSERVACAO | VARCHAR2 | Y |  |

---

## IDCE.CK_VW_RESULT_EXAMES_FORMATADO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 2 | CD_ATENDIMENTO | NUMBER | N |  |
| 3 | CD_PED_LAB | NUMBER | N |  |
| 4 | CD_PACIENTE | NUMBER | N |  |
| 5 | NM_PACIENTE | VARCHAR2 | N |  |
| 6 | DT_NASCIMENTO | DATE | Y |  |
| 7 | TP_SEXO | VARCHAR2 | N |  |
| 8 | CD_EXA_LAB | NUMBER | N |  |
| 9 | NM_EXA_LAB | VARCHAR2 | N |  |
| 10 | CD_ITPED_LAB | NUMBER | N |  |
| 11 | DH_LAUDO | VARCHAR2 | Y |  |
| 12 | NM_CAMPO | VARCHAR2 | N |  |
| 13 | DS_RESULTADO | VARCHAR2 | Y |  |

---

## IDCE.CK_VW_UREIA_CREATININA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 2 | CD_ATENDIMENTO | NUMBER | N |  |
| 3 | CD_PED_LAB | NUMBER | N |  |
| 4 | CD_PACIENTE | NUMBER | N |  |
| 5 | NM_PACIENTE | VARCHAR2 | N |  |
| 6 | DT_NASCIMENTO | DATE | Y |  |
| 7 | TP_SEXO | VARCHAR2 | N |  |
| 8 | CD_EXA_LAB | NUMBER | N |  |
| 9 | NM_EXA_LAB | VARCHAR2 | N |  |
| 10 | CD_ITPED_LAB | NUMBER | N |  |
| 11 | DH_LAUDO | VARCHAR2 | Y |  |
| 12 | NM_CAMPO | VARCHAR2 | N |  |
| 13 | DS_RESULTADO | VARCHAR2 | Y |  |

---

## IDCE.CL_CLIENTE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_CLIENTE | NUMBER | N |  |
| 2 | DS_NOME | VARCHAR2 | N |  |
| 3 | DS_DESCRICAO | VARCHAR2 | N |  |
| 4 | DS_ENDERECO | VARCHAR2 | Y |  |
| 5 | DS_EMAIL | VARCHAR2 | Y |  |
| 6 | DS_CONTATO | VARCHAR2 | Y |  |
| 7 | DS_TELEFONE_1 | VARCHAR2 | Y |  |
| 8 | DS_TELEFONE_2 | VARCHAR2 | Y |  |
| 9 | DS_FAX | VARCHAR2 | Y |  |
| 10 | DS_CNPJ | NUMBER | N |  |
| 11 | NR_ENDERECO | VARCHAR2 | Y |  |
| 12 | DS_BAIRRO | VARCHAR2 | Y |  |
| 13 | DS_CEP | VARCHAR2 | Y |  |
| 14 | DS_CIDADE | VARCHAR2 | Y |  |
| 15 | DS_UF | VARCHAR2 | Y |  |

---

## IDCE.CL_CLIENTE_UNIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_CLIENTE_UNIDADE | NUMBER | N |  |
| 2 | ID_CLIENTE | NUMBER | N |  |
| 3 | ID_UNIDADE | NUMBER | N |  |

---

## IDCE.CL_CLIENTE_USUARIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_CLIENTE_USUARIO | NUMBER | N |  |
| 2 | ID_CLIENTE | NUMBER | N |  |
| 3 | ID_USUARIO | NUMBER | N |  |

---

## IDCE.CL_ESTADO_PACOTE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_ESTADO_PACOTE | NUMBER | N |  |
| 2 | DESCRICAO | VARCHAR2 | Y |  |

---

## IDCE.CL_LOG_ENVIOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_LOG_ENVIOS | NUMBER | N |  |
| 2 | ID_CL_ESTADO_PACOTE | NUMBER | N |  |
| 3 | PROTOCOLO | VARCHAR2 | Y |  |
| 4 | REMOTEFOLDER | VARCHAR2 | Y |  |
| 5 | FILENAME | VARCHAR2 | Y |  |
| 6 | PEDIDO_IDCE | VARCHAR2 | Y |  |
| 7 | UNIDADE | VARCHAR2 | Y |  |
| 8 | INICIOENVIO | DATE | Y |  |
| 9 | FIMENVIO | DATE | Y |  |
| 10 | ESTUDOPACS | VARCHAR2 | Y |  |
| 11 | EXCESSAO | VARCHAR2 | Y |  |

---

## IDCE.CL_USUARIO_MONITOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_USUARIO_MONITOR | NUMBER | N |  |
| 2 | USUARIO | VARCHAR2 | Y |  |
| 3 | SENHA | VARCHAR2 | Y |  |

---

## IDCE.CONFIGURACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | REMOTE_AETITLE | CHAR | Y |  |
| 2 | REMOTE_PORTA | CHAR | Y |  |
| 3 | REMOTE_ADDRESS | CHAR | Y |  |
| 4 | PATH_DICOMSERVER | VARCHAR2 | Y |  |
| 5 | USER_DICOMSERVER | VARCHAR2 | Y |  |
| 6 | PASSWORD_DICOMSERVER | VARCHAR2 | Y |  |
| 7 | RAZAOSOC | VARCHAR2 | Y |  |
| 8 | ENDERECO | VARCHAR2 | Y |  |
| 9 | BAIRRO | VARCHAR2 | Y |  |
| 10 | CIDADE | VARCHAR2 | Y |  |
| 11 | UF | VARCHAR2 | Y |  |
| 12 | CEP | VARCHAR2 | Y |  |
| 13 | TELEFONE | VARCHAR2 | Y |  |
| 14 | FAX | VARCHAR2 | Y |  |
| 15 | CGC | VARCHAR2 | Y |  |
| 16 | INSCEST | CHAR | Y |  |
| 17 | MAIL | VARCHAR2 | Y |  |
| 18 | LOGIN | CHAR | Y |  |
| 19 | SMTP | CHAR | Y |  |
| 20 | URL | CHAR | Y |  |
| 21 | WEB_IMG_URL | CHAR | Y |  |
| 22 | PATH_WORKLIST | CHAR | Y |  |
| 23 | USER_WORKLIST | CHAR | Y |  |
| 24 | PASSWORD_WORKLIST | CHAR | Y |  |
| 25 | LOGOMARCA | VARCHAR2 | Y |  |
| 26 | AUDITAR | CHAR | Y |  |
| 27 | INTERVALOAUDITORIA | NUMBER | Y |  |
| 28 | VALORFILME | NUMBER | Y |  |
| 29 | VISUALIZAR | CHAR | Y |  |
| 30 | CABECALHO | CHAR | Y |  |
| 31 | CARACTER | CHAR | Y |  |
| 32 | RODAPE | CHAR | Y |  |
| 33 | CD_UNIDADE | NUMBER | N |  |

---

## IDCE.CONVENIOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CON_ID | NUMBER | N |  |
| 2 | NOME | VARCHAR2 | Y |  |

---

## IDCE.DB_HISTORY

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_HISTORY | NUMBER | N |  |
| 2 | NR_VERSAO | VARCHAR2 | N |  |
| 3 | NR_SEQUENCIA | NUMBER | N |  |
| 4 | NM_ARQUIVO | VARCHAR2 | N |  |
| 5 | DS_SQL | CLOB | N |  |
| 6 | DT_EXECUCAO | DATE | N |  |
| 7 | DS_STATUS | VARCHAR2 | N |  |
| 8 | DS_MENSAGEM | VARCHAR2 | Y |  |
| 9 | DS_RESPONSAVEL | VARCHAR2 | N |  |

---

## IDCE.DR$IDX_EP_LAUDO_TXT$I

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | TOKEN_TEXT | VARCHAR2 | N |  |
| 2 | TOKEN_TYPE | NUMBER | N |  |
| 3 | TOKEN_FIRST | NUMBER | N |  |
| 4 | TOKEN_LAST | NUMBER | N |  |
| 5 | TOKEN_COUNT | NUMBER | N |  |
| 6 | TOKEN_INFO | BLOB | Y |  |

---

## IDCE.DR$IDX_EP_LAUDO_TXT$K

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DOCID | NUMBER | Y |  |
| 2 | TEXTKEY | ROWID | N |  |

---

## IDCE.DR$IDX_EP_LAUDO_TXT$N

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NLT_DOCID | NUMBER | N |  |
| 2 | NLT_MARK | CHAR | N |  |

---

## IDCE.DR$IDX_EP_LAUDO_TXT$R

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ROW_NO | NUMBER | N |  |
| 2 | DATA | BLOB | Y |  |

---

## IDCE.EXAMES

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | EXA_ID | NUMBER | Y |  |
| 2 | TIPO | NUMBER | Y |  |

---

## IDCE.EXAME_PEDIDO_MULTI_LOGIN

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NM_UNIDADE | VARCHAR2 | Y |  |
| 2 | CD_UNIDADE_HIS | VARCHAR2 | Y |  |
| 3 | ID_MEDICO_EXECUTANTE_PADRAO | NUMBER | Y |  |
| 4 | DS_CERTIFICACAO_DIGITAL | VARCHAR2 | Y |  |
| 5 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 6 | ID_PEDIDO_EXAME | NUMBER | N |  |
| 7 | ID_MEDICO_SOLICITANTE | NUMBER | Y |  |
| 8 | NM_MEDICO_SOLICITANTE | VARCHAR2 | Y |  |
| 9 | DS_CRM_SOLICITANTE | VARCHAR2 | Y |  |
| 10 | DS_TELEFONE_SOLICITANTE | VARCHAR2 | Y |  |
| 11 | DS_EMAIL_SOLICITANTE | VARCHAR2 | Y |  |
| 12 | ID_PACIENTE | NUMBER | Y |  |
| 13 | ID_PACIENTE_CONSOLIDADO | NUMBER | Y |  |
| 14 | NM_PACIENTE | VARCHAR2 | Y |  |
| 15 | TP_SEXO | CHAR | Y |  |
| 16 | DS_TELEFONE | VARCHAR2 | Y |  |
| 17 | DT_NASCIMENTO | DATE | Y |  |
| 18 | DS_EMAIL | VARCHAR2 | Y |  |
| 19 | DS_MATRICULA | VARCHAR2 | Y |  |
| 20 | IDADE | NUMBER | Y |  |
| 21 | NR_PRONTUARIO_HOSPITALAR | VARCHAR2 | Y |  |
| 22 | CD_PACIENTE_HIS | VARCHAR2 | Y |  |
| 23 | DS_ENDERECO | VARCHAR2 | Y |  |
| 24 | DS_BAIRRO | VARCHAR2 | Y |  |
| 25 | DS_CIDADE | VARCHAR2 | Y |  |
| 26 | DS_UF | VARCHAR2 | Y |  |
| 27 | DS_CEP | VARCHAR2 | Y |  |
| 28 | DS_FAX | VARCHAR2 | Y |  |
| 29 | SN_EMAIL | CHAR | Y |  |
| 30 | SN_SMS | CHAR | Y |  |
| 31 | ID_CONVENIO | NUMBER | Y |  |
| 32 | ID_UNIDADE | NUMBER | Y |  |
| 33 | ID_UNIDADE_ORIGEM | NUMBER | Y |  |
| 34 | NR_GUIA_HIS | VARCHAR2 | Y |  |
| 35 | NM_CONVENIO_UNIDADE | VARCHAR2 | Y |  |
| 36 | SN_PARCEIRO | CHAR | Y |  |
| 37 | ID_MEDICO_EXECUTANTE | NUMBER | Y |  |
| 38 | NM_MEDICO_EXECUTANTE | VARCHAR2 | Y |  |
| 39 | DS_CRM_EXECUTANTE | VARCHAR2 | Y |  |
| 40 | CD_HIS_EXECUTANTE | VARCHAR2 | Y |  |
| 41 | ID_MEDICO_REVISOR | NUMBER | Y |  |
| 42 | NM_MEDICO_REVISOR | VARCHAR2 | Y |  |
| 43 | DS_CRM_REVISOR | VARCHAR2 | Y |  |
| 44 | CD_HIS_REVISOR | VARCHAR2 | Y |  |
| 45 | ID_MEDICO_REVISOR_FINAL | NUMBER | Y |  |
| 46 | NM_MEDICO_REVISOR_FINAL | VARCHAR2 | Y |  |
| 47 | DS_CRM_REVISOR_FINAL | VARCHAR2 | Y |  |
| 48 | CD_HIS_REVISOR_FINAL | VARCHAR2 | Y |  |
| 49 | ID_DIAGNOSTICO_RADIO | NUMBER | Y |  |
| 50 | NM_DIAGNOSTICO_RADIO | CHAR | Y |  |
| 51 | ID_DIAGNOSTICO_CLINICO | NUMBER | Y |  |
| 52 | NM_DIAGNOSTICO_CLINICO | CHAR | Y |  |
| 53 | ID_DIAGNOSTICO_CIRURGICO | NUMBER | Y |  |
| 54 | NM_DIAGNOSTICO_CIRURGICO | CHAR | Y |  |
| 55 | ID_SALA | NUMBER | Y |  |
| 56 | NM_SALA | VARCHAR2 | Y |  |
| 57 | DT_CADASTRO | DATE | Y |  |
| 58 | DT_ALTERACAO | DATE | Y |  |
| 59 | DT_STUDY | DATE | Y |  |
| 60 | ID_EXAME_UNIDADE | NUMBER | Y |  |
| 61 | NM_EXAME_UNIDADE | VARCHAR2 | Y |  |
| 62 | ID_EXAME | NUMBER | N |  |
| 63 | NM_EXAME | VARCHAR2 | Y |  |
| 64 | CD_CBHPM | VARCHAR2 | Y |  |
| 65 | ID_USUARIO_INCLUSAO | NUMBER | Y |  |
| 66 | NM_USUARIO_INCLUSAO | VARCHAR2 | Y |  |
| 67 | ID_USUARIO_ALTERACAO | NUMBER | Y |  |
| 68 | NM_USUARIO_ALTERACAO | VARCHAR2 | Y |  |
| 69 | DT_DUM | DATE | Y |  |
| 70 | CD_ATENDIMENTO_HIS | VARCHAR2 | Y |  |
| 71 | CD_PEDIDO_HIS | VARCHAR2 | Y |  |
| 72 | CD_ITEM_PEDIDO_HIS | VARCHAR2 | Y |  |
| 73 | ID_ORIGEM_ATENDIMENTO | NUMBER | Y |  |
| 74 | CD_STATUS | CHAR | Y |  |
| 75 | DS_STATUS | VARCHAR2 | Y |  |
| 76 | ID_SETOR | NUMBER | Y |  |
| 77 | NM_SETOR | VARCHAR2 | Y |  |
| 78 | ID_USUARIO_ENTRADA_EXAME | NUMBER | Y |  |
| 79 | NM_USUARIO_ENTRADA_EXAME | VARCHAR2 | Y |  |
| 80 | ID_USUARIO_SAIDA_EXAME | NUMBER | Y |  |
| 81 | NM_USUARIO_SAIDA_EXAME | VARCHAR2 | Y |  |
| 82 | DT_ENTRADA_EXAME | DATE | Y |  |
| 83 | DT_SAIDA_EXAME | DATE | Y |  |
| 84 | NR_ALTURA | NUMBER | Y |  |
| 85 | NR_PESO | NUMBER | Y |  |
| 86 | SN_PENDENTE | CHAR | Y |  |
| 87 | DT_FINALIZACAO | DATE | Y |  |
| 88 | DT_LAUDADO | DATE | Y |  |
| 89 | DT_PEDIDO | DATE | Y |  |
| 90 | DT_IMPRESSO | DATE | Y |  |
| 91 | DT_ASSINADO | DATE | Y |  |
| 92 | DT_DIGITADO | DATE | Y |  |
| 93 | DT_DITADO | DATE | Y |  |
| 94 | DT_REVISADO | DATE | Y |  |
| 95 | DT_REVISADO_FINAL | DATE | Y |  |
| 96 | DT_ENTREGA | DATE | Y |  |
| 97 | DT_PREVISAO_ENTREGA | DATE | Y |  |
| 98 | NM_ACOMODACAO_HIS | VARCHAR2 | Y |  |
| 99 | NM_LOCAL_ENTREGA_HIS | VARCHAR2 | Y |  |
| 100 | NM_INDICACAO_HIS | VARCHAR2 | Y |  |
| 101 | SN_MIDIA_RESULTADO | CHAR | Y |  |
| 102 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 103 | ID_USUARIO_LIBERACAO | NUMBER | Y |  |
| 104 | NM_USUARIO_LIBERACAO | VARCHAR2 | Y |  |
| 105 | ID_USUARIO_ONLINE | NUMBER | Y |  |
| 106 | NM_USUARIO_ONLINE | VARCHAR2 | Y |  |
| 107 | DS_OPERACAO_ONLINE | VARCHAR2 | Y |  |
| 108 | SN_SMS_ENVIADO | CHAR | Y |  |
| 109 | DS_LAUDO_RTF | CLOB | Y |  |
| 110 | DS_LAUDO_TXT | CLOB | Y |  |
| 111 | DS_LAUDO_HTML | CLOB | Y |  |
| 112 | SN_NORMAL | CHAR | Y |  |
| 113 | ID_JUSTIFICATIVA | NUMBER | Y |  |
| 114 | DT_JUSTIFICATIVA | DATE | Y |  |
| 115 | DS_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 116 | ID_USUARIO_JUSTIFICATIVA | NUMBER | Y |  |
| 117 | NM_USUARIO_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 118 | DS_LEITO_HIS | VARCHAR2 | Y |  |
| 119 | DS_REGIAO_EXAMINADA | VARCHAR2 | Y |  |
| 120 | SN_AGRUPAR_IMAGEM | CHAR | Y |  |
| 121 | SN_AGRUPAR_LAUDO | CHAR | Y |  |
| 122 | ID_TIPO_EXAME | NUMBER | Y |  |
| 123 | NM_TIPO_EXAME | VARCHAR2 | Y |  |
| 124 | NM_PROCEDIMENTO | VARCHAR2 | Y |  |
| 125 | ID_PROCEDIMENTO_UNIDADE | NUMBER | N |  |
| 126 | ID_PROCEDIMENTO | NUMBER | N |  |
| 127 | NR_PRAZO_ENTREGA | NUMBER | Y |  |
| 128 | CD_PROCEDIMENTO_HIS | VARCHAR2 | Y |  |
| 129 | DS_LAYOUT_IMPRESSAO | VARCHAR2 | Y |  |
| 130 | ID_MEDICO_PADRAO | NUMBER | Y |  |
| 131 | ID_SALA_PADRAO | NUMBER | Y |  |
| 132 | SN_REVISAO_AUTOMATICA | CHAR | Y |  |
| 133 | SN_DICOM | CHAR | Y |  |
| 134 | SN_EXECUTANTE_REVISOR | CHAR | Y |  |
| 135 | SN_LAUDO_LOTE_PENDENTE | CHAR | Y |  |
| 136 | SN_ENTREGA_LAUDO_CD | CHAR | Y |  |
| 137 | SN_IMPRESSAO_LAUDO_ENTREGA | CHAR | Y |  |
| 138 | SN_LIBERAR_LOTE_LAUDO_REV_PEND | CHAR | Y |  |
| 139 | SN_TEXTO_PADRAO_AUTOMATICO | CHAR | Y |  |
| 140 | SN_JUSTIFICATIVA_LAUDO | CHAR | Y |  |
| 141 | SN_ENDOSCOPIA | CHAR | Y |  |
| 142 | CD_MODALIDADE | VARCHAR2 | Y |  |
| 143 | NR_DIAS | NUMBER | Y |  |
| 144 | SN_ATRASADO | CHAR | Y |  |
| 145 | TP_SEXO_REVISOR | VARCHAR2 | Y |  |
| 146 | TP_SEXO_EXECUTANTE | VARCHAR2 | Y |  |
| 147 | ID_SISTEMA | NUMBER | Y |  |
| 148 | CD_EXAME_HIS | VARCHAR2 | Y |  |
| 149 | ID_MEDICO_DITADO | NUMBER | Y |  |
| 150 | NM_MEDICO_DITADO | VARCHAR2 | Y |  |
| 151 | DS_CRM_DITADO | VARCHAR2 | Y |  |
| 152 | CD_HIS_DITADO | VARCHAR2 | Y |  |
| 153 | ID_CLASSIFICACAO_RISCO | NUMBER | Y |  |
| 154 | ID_SETOR_EXECUTANTE | NUMBER | Y |  |
| 155 | ID_SETOR_SOLICITANTE | NUMBER | Y |  |
| 156 | ID_ETAPA_ATUAL | NUMBER | Y |  |
| 157 | NM_ETAPA | VARCHAR2 | Y |  |
| 158 | DS_ALERTA_ACORDO | VARCHAR2 | Y |  |
| 159 | POSSUICOMENTARIO | CHAR | Y |  |
| 160 | ID_TIPO_PRIORIDADE | NUMBER | Y |  |
| 161 | SN_PRESCRICAO_URGENTE | CHAR | Y |  |
| 162 | SN_EXAME_CONCLUIDO | CHAR | Y |  |
| 163 | CD_STUDY_UID | VARCHAR2 | Y |  |
| 164 | CD_TIPO_VIEWER | NUMBER | Y |  |
| 165 | DT_ANAMNESE | DATE | Y |  |
| 166 | ID_CONVENIO_UNIDADE | NUMBER | Y |  |
| 167 | PACIENTE_IDADE_EXTENSO | VARCHAR2 | Y |  |
| 168 | SN_STUDY_PED | CHAR | N |  |
| 169 | TP_INSUMO | NUMBER | Y |  |
| 170 | DS_PATH_RELATORIO_FORMULA | VARCHAR2 | Y |  |
| 171 | DS_LAUDO_PDF_MARCADAGUA | BLOB | Y |  |

---

## IDCE.FIDI_USER

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NOME_COMPLETO | VARCHAR2 | Y |  |
| 2 | CARGO | VARCHAR2 | Y |  |
| 3 | CPF | VARCHAR2 | Y |  |
| 4 | DATA_DE_NASCIMENTO | DATE | Y |  |
| 5 | EMAIL | VARCHAR2 | Y |  |
| 6 | LOGIN | VARCHAR2 | Y |  |

---

## IDCE.HOSPITAL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | HOSPITAL_ID | NUMBER | N |  |
| 2 | DS_RAZAO | VARCHAR2 | Y |  |
| 3 | DS_ENDERECO | VARCHAR2 | Y |  |
| 4 | DS_JUNTA | VARCHAR2 | Y |  |
| 5 | CD_CGC | NUMBER | Y |  |

---

## IDCE.IDCE_LOG

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_LOG | NUMBER | N |  |
| 2 | LOGDATE | VARCHAR2 | Y |  |
| 3 | LOGTHREAD | VARCHAR2 | Y |  |
| 4 | LOGLEVEL | VARCHAR2 | Y |  |
| 5 | LOGMESSAGE | VARCHAR2 | Y |  |
| 6 | LOGEXCEPTION | VARCHAR2 | Y |  |
| 7 | LOGSTACK | VARCHAR2 | Y |  |

---

## IDCE.LAUDOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | AC_NUMBER | VARCHAR2 | Y |  |
| 2 | PACIENTE | NUMBER | Y |  |
| 3 | PACIENTENOME | VARCHAR2 | Y |  |
| 4 | SEXO | CHAR | Y |  |
| 5 | NASCIMENTO | DATE | Y |  |
| 6 | LAUDADO | CHAR | Y |  |
| 7 | REVISADO | CHAR | Y |  |
| 8 | ASSINATURA | CHAR | Y |  |
| 9 | IMPRESSO | CHAR | Y |  |
| 10 | CONVENIONOME | VARCHAR2 | Y |  |
| 11 | CD_PED_RX | NUMBER | Y |  |
| 12 | CD_ATENDIMENTO | NUMBER | Y |  |
| 13 | STATUS | CHAR | Y |  |
| 14 | SOLICITANTE | NUMBER | Y |  |
| 15 | SOLICITANTENOME | VARCHAR2 | Y |  |
| 16 | DATALAUDADO | DATE | Y |  |
| 17 | DT_LAUDADO | DATE | Y |  |
| 18 | EXECUTANTE | NUMBER | Y |  |
| 19 | EXECUTANTENOME | VARCHAR2 | Y |  |
| 20 | DATAREVISAO | DATE | Y |  |
| 21 | DT_REVISADO | DATE | Y |  |
| 22 | REVISORNOME | VARCHAR2 | Y |  |
| 23 | DATAASSINATURA | DATE | Y |  |
| 24 | DT_ASSINADO | DATE | Y |  |
| 25 | DATACAD | DATE | Y |  |
| 26 | HORA | DATE | Y |  |
| 27 | USUARIOINC | VARCHAR2 | Y |  |
| 28 | DATAALT | DATE | Y |  |
| 29 | USUARIOALT | VARCHAR2 | Y |  |
| 30 | DIRETORIO | CHAR | Y |  |
| 31 | LAU_ID | NUMBER | N |  |
| 32 | REGISTRO | VARCHAR2 | Y |  |
| 33 | PRONTUARIO | VARCHAR2 | Y |  |
| 34 | DIGITADO | CHAR | Y |  |
| 35 | PRC_ID | NUMBER | Y |  |
| 36 | REVISOR | NUMBER | Y |  |
| 37 | CONVENIO | NUMBER | Y |  |
| 38 | DUM | DATE | Y |  |
| 39 | TEXTO | CLOB | Y |  |
| 40 | EXAME | NUMBER | Y |  |
| 41 | EXAMENOME | VARCHAR2 | Y |  |
| 42 | OBS | VARCHAR2 | Y |  |
| 43 | CRMSOLICITANTE | VARCHAR2 | Y |  |
| 44 | CRMEXECUTANTE | VARCHAR2 | Y |  |
| 45 | CRMREVISOR | VARCHAR2 | Y |  |
| 46 | ARQUIVADO | CHAR | Y |  |
| 47 | TIPO | NUMBER | Y |  |
| 48 | TIPONOME | VARCHAR2 | Y |  |
| 49 | LEITO | VARCHAR2 | Y |  |
| 50 | CD_UNIDADE | NUMBER | Y |  |
| 51 | CD_MULTI_EMPRESA | VARCHAR2 | Y |  |
| 52 | DT_LIBERADO | DATE | Y |  |
| 53 | DT_STUDY | DATE | Y |  |

---

## IDCE.MEDICOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | MED_ID | NUMBER | N |  |
| 2 | NOME | VARCHAR2 | Y |  |
| 3 | CRM | VARCHAR2 | Y |  |
| 4 | EMAIL | VARCHAR2 | Y |  |
| 5 | CGC_CPF | VARCHAR2 | Y |  |
| 6 | STATUS | VARCHAR2 | Y |  |

---

## IDCE.MEDICO_TEMP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_MEDICO | NUMBER | Y |  |

---

## IDCE.MEDICO_UNIDADE_TEMP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_MEDICO_UNIDADE | NUMBER | Y |  |

---

## IDCE.MRB_CONF_PROCEDIMENTO
> Tabela que guarda as configurações os id_tipo_exame para cada procedimento para uso no MRB (Microdata Report Builder

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_RAIO_X | NUMBER | Y | id_tipo_exame referente ao procedimento de Raio X |
| 2 | ID_ECOGRAFIA | NUMBER | Y | id_tipo_exame referente ao procedimento de Ecografia |
| 3 | ID_TOMOGRAFIA | NUMBER | Y | id_tipo_exame referente ao procedimento de Tomografia |
| 4 | ID_ULTRASSONOGRAFIA | NUMBER | Y | id_tipo_exame referente ao procedimento de Ultrassonografia |
| 5 | ID_ENDOSCOPIA | NUMBER | Y | id_tipo_exame referente ao procedimento de Endoscopia |
| 6 | ID_COLONOSCOPIA | NUMBER | Y | id_tipo_exame referente ao procedimento de Colonoscopia |
| 7 | ID_MAMOGRAFIA | NUMBER | Y | id_tipo_exame referente ao procedimento de Mamografia |
| 8 | ID_RESSONANCIA_MAGNETICA | NUMBER | Y | id_tipo_exame referente ao procedimento de Ressonância Magnética |
| 9 | ID_DENSITOMETRIA | NUMBER | Y | id_tipo_exame referente ao procedimento de Densitometria |

---

## IDCE.MRB_GRUPOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_GRUPO | VARCHAR2 | N |  |
| 2 | NM_NOME | VARCHAR2 | N |  |
| 3 | DS_DESCRICAO | VARCHAR2 | Y |  |
| 4 | ID_UNIDADE | NUMBER | N |  |

---

## IDCE.MRB_LAYOUTS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_LAYOUT | VARCHAR2 | N |  |
| 2 | ID_GRUPO | VARCHAR2 | N |  |
| 3 | NM_NOME | VARCHAR2 | N |  |
| 4 | DS_DESCRICAO | VARCHAR2 | Y |  |
| 5 | DS_LAYOUT | CLOB | Y | RTM |
| 6 | ID_UNIDADE | NUMBER | N |  |
| 7 | SN_ATIVO | CHAR | Y |  |
| 8 | ID_USUARIO_CRIACAO | NUMBER | Y |  |
| 9 | DT_CRIACAO | DATE | Y |  |
| 10 | ID_USUARIO_ALTERACAO | NUMBER | Y |  |
| 11 | DT_ALTERACAO | DATE | Y |  |
| 12 | SN_PUBLICO | CHAR | N |  |

---

## IDCE.MRB_LAYOUTS_LOG

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_UNIDADE | NUMBER | Y |  |
| 2 | ID_GRUPO | VARCHAR2 | Y |  |
| 3 | ID_LAYOUT | VARCHAR2 | Y |  |
| 4 | DS_MOTIVO | VARCHAR2 | Y |  |
| 5 | DS_ACAO | VARCHAR2 | Y |  |
| 6 | DS_CONTEUDO | CLOB | Y |  |
| 7 | ID_USUARIO | NUMBER | Y |  |
| 8 | DT_DATA | DATE | Y |  |
| 9 | NM_NOME | VARCHAR2 | Y |  |
| 10 | SN_ATIVO | CHAR | N |  |
| 11 | ID_LAYOUTS_LOG | NUMBER | N |  |
| 12 | DS_DESCRICAO | VARCHAR2 | Y |  |

---

## IDCE.MRB_PARAMETROS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_LAYOUT | VARCHAR2 | N | Id do layout |
| 2 | NM_NOME | VARCHAR2 | N | Nome do layout |
| 3 | ID_UNIDADE | NUMBER | N | Id da unidade |
| 4 | ID_GRUPO | VARCHAR2 | N | Id do grupo |
| 5 | TP_DATA_TYPE | NUMBER | Y | Tipo de dado: 0 = dtBoolean 1 = dtDate 2 = dtTime 3 = dtDateTime 4 = dtInteger 5 = dtSingle 6 = d... |
| 6 | SN_MANDATORY | CHAR | Y | Obrigatório: S = Sim N = Não |
| 7 | TP_SEARCH_OPERATOR | NUMBER | Y | Operador da pesquisa: 0 = soEqual 1 = soNotEqual 2 = soLessThan 3 = soLessThanOrEqualTo 4 = soGre... |
| 8 | SN_SHOW_ALL_VALUES | CHAR | Y | Exibir todos os valores: S = Sim N = Não |
| 9 | DS_LOOKUP_LIST | CLOB | Y | Lookup em forma de combobox e itens fixos |
| 10 | NM_LOOKUP_DATA_PIPELINE | VARCHAR2 | Y | Nome do pipeline para fazer lookup |
| 11 | DS_LOOKUP_DATA_PIPELINE_SQL | CLOB | Y | SQL do pipeline para fazer lookup |
| 12 | TP_LOOKUP_DISPLAY_TYPE | NUMBER | Y | Informação para display: 0 = dtNameOnly 1 = dtValueAndName 2 = dtNameAndValue |
| 13 | NM_LOOKUP_NAME_FIELD | VARCHAR2 | Y | Campo para exibir nomes |
| 14 | TP_LOOKUP_SORT_ORDER | NUMBER | Y | Informações para ordem: 0 = soName 1 = soValue 2 = soNone |
| 15 | NM_LOOKUP_VALUE_FIELD | VARCHAR2 | Y | Campo para exibir valores |
| 16 | NR_ORDEM | NUMBER | Y |  |
| 17 | TP_MICRODATA_TEMPLATE | NUMBER | Y | Flag indicativo para interface dos sistemas Microdata |

---

## IDCE.MRB_PERMISSAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_UNIDADE | NUMBER | N |  |
| 2 | ID_GRUPO | VARCHAR2 | N |  |
| 3 | ID_LAYOUT | VARCHAR2 | N |  |
| 4 | ID_USUARIO | NUMBER | N |  |

---

## IDCE.MRB_VW_BALAC_ANALIT_MED_EXEC

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DT_LAUDADO | DATE | Y |  |
| 2 | LAUDO | NUMBER | N |  |
| 3 | PACIENTE | VARCHAR2 | Y |  |
| 4 | EXAME | VARCHAR2 | Y |  |
| 5 | HORA | VARCHAR2 | Y |  |
| 6 | NM_MEDICO | VARCHAR2 | Y |  |
| 7 | NM_PROCEDIMENTO | VARCHAR2 | Y |  |
| 8 | REG_PACIENTE | VARCHAR2 | Y |  |
| 9 | TP_PACIENTE | CHAR | Y |  |
| 10 | DT_EXAME | DATE | Y |  |

---

## IDCE.MRB_VW_REL_DIF_PRONT_RIS_PACS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITEM_PEDIDO_HIS | VARCHAR2 | Y |  |
| 2 | ACCESSIONNUMBER | VARCHAR2 | Y |  |
| 3 | TP_SEXO_PACS | VARCHAR2 | Y |  |
| 4 | TP_SEXO_IDCE | CHAR | N |  |
| 5 | NM_PACIENTE_PACS | VARCHAR2 | Y |  |
| 6 | NM_PACIENTE_IDCE | VARCHAR2 | Y |  |
| 7 | DT_NASCIMENTO_PACS | DATE | Y |  |
| 8 | DT_NASCIEMNTO_IDCE | DATE | Y |  |
| 9 | PRONTUARIO_PACS | VARCHAR2 | Y |  |
| 10 | PRONTUARIO_IDCE | VARCHAR2 | Y |  |
| 11 | DT_CADASTRO | DATE | N |  |

---

## IDCE.MRB_VW_REL_GERENCIAL_PRAZO_ASS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_MEDICO_EXECUTANTE | NUMBER | Y |  |
| 2 | NM_MEDICO_EXECUTANTE | VARCHAR2 | Y |  |
| 3 | DS_CRM_EXECUTANTE | VARCHAR2 | Y |  |
| 4 | ID_PROCEDIMENTO | NUMBER | Y |  |
| 5 | NM_PROCEDIMENTO | VARCHAR2 | Y |  |
| 6 | NM_PACIENTE | VARCHAR2 | Y |  |
| 7 | CD_PEDIDO_HIS | VARCHAR2 | Y |  |
| 8 | DT_ASSINADO | DATE | Y |  |
| 9 | DT_STUDY | DATE | Y |  |
| 10 | DT_LAUDADO | DATE | Y |  |
| 11 | DT_PEDIDO | DATE | Y |  |
| 12 | DT_CADASTRO | DATE | Y |  |
| 13 | ID_UNIDADE | NUMBER | Y |  |
| 14 | NM_UNIDADE | VARCHAR2 | Y |  |
| 15 | DT_PRAZO | DATE | Y |  |
| 16 | HR_PRAZO | DATE | Y |  |
| 17 | INTERVALO_HR_EXAME | NUMBER | Y |  |
| 18 | INTERVALO_HR_LAUDAR | NUMBER | Y |  |
| 19 | HR_TOTAL | NUMBER | Y |  |

---

## IDCE.MRB_VW_REL_PENDENCIAS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_MEDICO_EXECUTANTE | NUMBER | Y |  |
| 2 | NM_MEDICO_EXECUTANTE | VARCHAR2 | Y |  |
| 3 | DS_CRM_EXECUTANTE | VARCHAR2 | Y |  |
| 4 | ID_PROCEDIMENTO | NUMBER | Y |  |
| 5 | NM_PROCEDIMENTO | VARCHAR2 | Y |  |
| 6 | NM_PACIENTE | VARCHAR2 | Y |  |
| 7 | CD_PEDIDO_HIS | VARCHAR2 | Y |  |
| 8 | DT_ASSINADO | DATE | Y |  |
| 9 | DT_STUDY | DATE | Y |  |
| 10 | DT_REVISADO | DATE | Y |  |
| 11 | DT_LAUDADO | DATE | Y |  |
| 12 | DT_PEDIDO | DATE | Y |  |
| 13 | DT_CADASTRO | DATE | Y |  |
| 14 | ID_UNIDADE | NUMBER | Y |  |
| 15 | NM_UNIDADE | VARCHAR2 | Y |  |
| 16 | NR_PRAZO_ENTREGA | NUMBER | Y |  |

---

## IDCE.MRB_VW_REL_PRODUTIVIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | MEDICO | VARCHAR2 | Y |  |
| 2 | ID_MEDICO_EXECUTANTE | NUMBER | Y |  |
| 3 | ID_UNIDADE | NUMBER | Y |  |
| 4 | NM_UNIDADE | VARCHAR2 | Y |  |
| 5 | RAIO_X | NUMBER | Y |  |
| 6 | ECOGRAFIA | NUMBER | Y |  |
| 7 | TOMOGRAFIA | NUMBER | Y |  |
| 8 | ULTRASSONOGRAFIA | NUMBER | Y |  |
| 9 | ENDOSCOPIA | NUMBER | Y |  |
| 10 | COLONOSCOPIA | NUMBER | Y |  |
| 11 | MAMOGRAFIA | NUMBER | Y |  |
| 12 | RESSONANCIA_MAGNETICA | NUMBER | Y |  |
| 13 | DENSITOMETRIA | NUMBER | Y |  |
| 14 | PERIODO | DATE | Y |  |

---

## IDCE.MRB_VW_REL_TEMPO_LAUDO_ANALITI

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_MEDICO_EXECUTANTE | NUMBER | Y |  |
| 2 | NM_MEDICO_EXECUTANTE | VARCHAR2 | Y |  |
| 3 | DS_CRM_EXECUTANTE | VARCHAR2 | Y |  |
| 4 | ID_PROCEDIMENTO | NUMBER | N |  |
| 5 | NM_PROCEDIMENTO | VARCHAR2 | Y |  |
| 6 | NM_PACIENTE | VARCHAR2 | Y |  |
| 7 | CD_PEDIDO_HIS | VARCHAR2 | Y |  |
| 8 | DT_ASSINADO | DATE | Y |  |
| 9 | DT_STUDY | DATE | Y |  |
| 10 | DT_LAUDADO | DATE | Y |  |
| 11 | DT_CADASTRO | DATE | Y |  |
| 12 | ID_UNIDADE | NUMBER | Y |  |
| 13 | NM_UNIDADE | VARCHAR2 | Y |  |
| 14 | DT_PRAZO | DATE | Y |  |
| 15 | HR_PRAZO | DATE | Y |  |
| 16 | INTERVALO_HR_EXAME | NUMBER | Y |  |
| 17 | INTERVALO_HR_LAUDAR | NUMBER | Y |  |
| 18 | HR_TOTAL | NUMBER | Y |  |
| 19 | SN_DENTRO_PRAZO | CHAR | Y |  |
| 20 | NR_PRAZO_ENTREGA | NUMBER | Y |  |

---

## IDCE.MRB_VW_REL_TEMPO_LAUDO_SINTETI

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_MEDICO_EXECUTANTE | NUMBER | Y |  |
| 2 | NM_MEDICO_EXECUTANTE | VARCHAR2 | Y |  |
| 3 | DS_CRM_EXECUTANTE | VARCHAR2 | Y |  |
| 4 | ID_PROCEDIMENTO | NUMBER | N |  |
| 5 | NM_PROCEDIMENTO | VARCHAR2 | Y |  |
| 6 | NM_PACIENTE | VARCHAR2 | Y |  |
| 7 | CD_PEDIDO_HIS | VARCHAR2 | Y |  |
| 8 | DT_ASSINADO | DATE | Y |  |
| 9 | DT_STUDY | DATE | Y |  |
| 10 | DT_LAUDADO | DATE | Y |  |
| 11 | DT_CADASTRO | DATE | Y |  |
| 12 | ID_UNIDADE | NUMBER | Y |  |
| 13 | NM_UNIDADE | VARCHAR2 | Y |  |
| 14 | DT_PRAZO | DATE | Y |  |
| 15 | HR_PRAZO | DATE | Y |  |
| 16 | HR_TOTAL | NUMBER | Y |  |

---

## IDCE.MRB_VW_TP_DIAGNOSTICO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_TIPO_DIAGNOSTICO | NUMBER | N |  |
| 2 | NM_TIPO_DIAGNOSTICO | VARCHAR2 | Y |  |
| 3 | DS_TIPO_DIAGNOSTICO | VARCHAR2 | Y |  |
| 4 | DT_CADASTRO | DATE | N |  |
| 5 | DT_ALTERACAO | DATE | Y |  |
| 6 | ID_USUARIO | NUMBER | Y |  |

---

## IDCE.MRB_VW_USUARIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_USUARIO | NUMBER | N |  |
| 2 | NM_USUARIO | VARCHAR2 | Y |  |
| 3 | CD_SENHA | VARCHAR2 | Y |  |
| 4 | SN_ACESSO_MRB | CHAR | N |  |

---

## IDCE.MRB_VW_USUARIO_UNIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_USUARIO | NUMBER | Y |  |
| 2 | ID_UNIDADE | NUMBER | Y |  |
| 3 | NM_UNIDADE | VARCHAR2 | Y |  |

---

## IDCE.MV_ADM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DS_LICENCA | VARCHAR2 | N |  |
| 2 | NR_SERIE | VARCHAR2 | N |  |
| 3 | CD_ACESSO | VARCHAR2 | N |  |
| 4 | NR_LICENCA | VARCHAR2 | Y |  |
| 5 | CTRL_ACESSO | VARCHAR2 | Y |  |

---

## IDCE.PACIENTES

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | PAC_ID | NUMBER | N |  |
| 2 | NOME | VARCHAR2 | Y |  |
| 3 | PRONTUARIO | VARCHAR2 | Y |  |
| 4 | DATANASCTO | DATE | Y |  |
| 5 | CONVENIO | NUMBER | Y |  |
| 6 | SEXO | CHAR | N |  |
| 7 | EMAIL | VARCHAR2 | Y |  |
| 8 | DT_TERMO_ACEITE | DATE | Y |  |

---

## IDCE.PACIENTES_PORTAL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | PRONTUARIO | VARCHAR2 | Y |  |
| 2 | NOME | VARCHAR2 | Y |  |
| 3 | DATANASCTO | DATE | Y |  |
| 4 | SEXO | CHAR | N |  |
| 5 | REGISTRO | VARCHAR2 | Y |  |
| 6 | DT_EXAME | DATE | Y |  |
| 7 | CD_UNIDADE | NUMBER | Y |  |

---

## IDCE.PEDIDOS_SADT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITEM_PEDIDO | NUMBER | Y |  |

---

## IDCE.PORTAL_AUDITORIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_AUDITORIA | NUMBER | N |  |
| 2 | DATA | TIMESTAMP(4) | N |  |
| 3 | ID_USUARIO | NUMBER | N |  |
| 4 | DESCRICAO | NVARCHAR2 | N |  |
| 5 | TIPO_USUARIO | NUMBER | Y |  |
| 6 | TIPO_ACAO | NUMBER | Y |  |

---

## IDCE.PORTAL_CONFIGURACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_CONFIGURACAO | NUMBER | N |  |
| 2 | ID_SISTEMA | NVARCHAR2 | N |  |
| 3 | ID_CATEGORIA | NUMBER | N |  |
| 4 | NM_CONFIGURACAO | NVARCHAR2 | N |  |
| 5 | DS_VALOR | CLOB | Y |  |

---

## IDCE.PORTAL_LAUDOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | AC_NUMBER | VARCHAR2 | Y |  |
| 2 | PACIENTE | NUMBER | Y |  |
| 3 | ID_PACIENTE_CONSOLIDADO | NUMBER | N |  |
| 4 | PACIENTENOME | VARCHAR2 | Y |  |
| 5 | NOMESOCIALPACIENTE | VARCHAR2 | Y |  |
| 6 | SEXO | CHAR | N |  |
| 7 | NASCIMENTO | DATE | Y |  |
| 8 | CPF | VARCHAR2 | Y |  |
| 9 | LAUDADO | CHAR | Y |  |
| 10 | REVISADO | CHAR | Y |  |
| 11 | ASSINATURA | CHAR | Y |  |
| 12 | IMPRESSO | CHAR | Y |  |
| 13 | CONVENIONOME | VARCHAR2 | Y |  |
| 14 | CD_PED_RX | VARCHAR2 | Y |  |
| 15 | CD_ATENDIMENTO | VARCHAR2 | Y |  |
| 16 | STATUS | CHAR | Y |  |
| 17 | SOLICITANTE | NUMBER | Y |  |
| 18 | SOLICITANTENOME | VARCHAR2 | Y |  |
| 19 | DATALAUDADO | DATE | Y |  |
| 20 | DT_LAUDADO | DATE | Y |  |
| 21 | EXECUTANTE | NUMBER | Y |  |
| 22 | EXECUTANTENOME | VARCHAR2 | Y |  |
| 23 | DATAREVISAO | DATE | Y |  |
| 24 | DT_REVISADO | DATE | Y |  |
| 25 | REVISORNOME | VARCHAR2 | Y |  |
| 26 | DATAASSINATURA | DATE | Y |  |
| 27 | DT_ASSINADO | DATE | Y |  |
| 28 | DATACAD | DATE | Y |  |
| 29 | HORA | DATE | Y |  |
| 30 | USUARIOINC | VARCHAR2 | Y |  |
| 31 | DATAALT | DATE | Y |  |
| 32 | USUARIOALT | VARCHAR2 | Y |  |
| 33 | DIRETORIO | CHAR | Y |  |
| 34 | LAU_ID | NUMBER | N |  |
| 35 | REGISTRO | VARCHAR2 | Y |  |
| 36 | PRONTUARIO | VARCHAR2 | Y |  |
| 37 | DIGITADO | CHAR | Y |  |
| 38 | PRC_ID | NUMBER | N |  |
| 39 | REVISOR | NUMBER | Y |  |
| 40 | CONVENIO | NUMBER | Y |  |
| 41 | TEXTO | CLOB | Y |  |
| 42 | EXAME | NUMBER | Y |  |
| 43 | EXAMENOME | VARCHAR2 | Y |  |
| 44 | OBS | VARCHAR2 | Y |  |
| 45 | CRMSOLICITANTE | VARCHAR2 | Y |  |
| 46 | CRMEXECUTANTE | VARCHAR2 | Y |  |
| 47 | CRMREVISOR | VARCHAR2 | Y |  |
| 48 | ARQUIVADO | CHAR | Y |  |
| 49 | TIPO | NUMBER | N |  |
| 50 | TIPONOME | VARCHAR2 | Y |  |
| 51 | LEITO | VARCHAR2 | Y |  |
| 52 | CD_UNIDADE | NUMBER | Y |  |
| 53 | CD_MULTI_EMPRESA | VARCHAR2 | Y |  |
| 54 | DT_LIBERADO | DATE | Y |  |
| 55 | DT_STUDY | DATE | Y |  |
| 56 | PROVISORIO | CHAR | N |  |
| 57 | CNES | VARCHAR2 | Y |  |
| 58 | ID_SETOR_EXECUTANTE | NUMBER | Y |  |
| 59 | ID_MODALIDADE | NUMBER | Y |  |
| 60 | SOLICITANTEHIS | VARCHAR2 | Y |  |

---

## IDCE.PORTAL_USUARIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_USUARIO | NUMBER | N |  |
| 2 | NM_USUARIO | NVARCHAR2 | N |  |
| 3 | DS_EMAIL | NVARCHAR2 | Y |  |
| 4 | NR_CPF | NVARCHAR2 | Y |  |
| 5 | NR_PRONTUARIO | NVARCHAR2 | Y |  |
| 6 | NR_CRM | NVARCHAR2 | Y |  |
| 7 | CD_SENHA_FORTE | NVARCHAR2 | N |  |
| 8 | TP_USUARIO | NVARCHAR2 | N |  |
| 9 | SN_ACEITE | NVARCHAR2 | N |  |
| 10 | DT_CADASTRO | DATE | N |  |
| 11 | SN_ATIVO | VARCHAR2 | Y |  |
| 12 | DS_PERMISSOES | CLOB | Y |  |
| 13 | DS_TELEFONE | NVARCHAR2 | Y |  |
| 14 | NM_SOCIAL_USUARIO | NVARCHAR2 | Y |  |

---

## IDCE.PORTAL_VW_LAUDOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | AC_NUMBER | VARCHAR2 | Y |  |
| 2 | PACIENTE | NUMBER | Y |  |
| 3 | ID_PACIENTE_CONSOLIDADO | NUMBER | Y |  |
| 4 | PACIENTENOME | VARCHAR2 | Y |  |
| 5 | SEXO | CHAR | Y |  |
| 6 | NASCIMENTO | DATE | Y |  |
| 7 | CPF | VARCHAR2 | Y |  |
| 8 | LAUDADO | CHAR | Y |  |
| 9 | REVISADO | CHAR | Y |  |
| 10 | ASSINATURA | CHAR | Y |  |
| 11 | IMPRESSO | CHAR | Y |  |
| 12 | CONVENIONOME | VARCHAR2 | Y |  |
| 13 | CD_PED_RX | NUMBER | Y |  |
| 14 | CD_ATENDIMENTO | NUMBER | Y |  |
| 15 | STATUS | CHAR | Y |  |
| 16 | SOLICITANTE | NUMBER | Y |  |
| 17 | SOLICITANTENOME | VARCHAR2 | Y |  |
| 18 | DATALAUDADO | DATE | Y |  |
| 19 | DT_LAUDADO | DATE | Y |  |
| 20 | EXECUTANTE | NUMBER | Y |  |
| 21 | EXECUTANTENOME | VARCHAR2 | Y |  |
| 22 | DATAREVISAO | DATE | Y |  |
| 23 | DT_REVISADO | DATE | Y |  |
| 24 | REVISORNOME | VARCHAR2 | Y |  |
| 25 | DATAASSINATURA | DATE | Y |  |
| 26 | DT_ASSINADO | DATE | Y |  |
| 27 | DATACAD | DATE | Y |  |
| 28 | HORA | DATE | Y |  |
| 29 | USUARIOINC | VARCHAR2 | Y |  |
| 30 | DATAALT | DATE | Y |  |
| 31 | USUARIOALT | VARCHAR2 | Y |  |
| 32 | DIRETORIO | CHAR | Y |  |
| 33 | LAU_ID | NUMBER | N |  |
| 34 | REGISTRO | VARCHAR2 | Y |  |
| 35 | PRONTUARIO | VARCHAR2 | Y |  |
| 36 | DIGITADO | CHAR | Y |  |
| 37 | PRC_ID | NUMBER | Y |  |
| 38 | REVISOR | NUMBER | Y |  |
| 39 | CONVENIO | NUMBER | Y |  |
| 40 | DUM | DATE | Y |  |
| 41 | TEXTO | CLOB | Y |  |
| 42 | EXAME | NUMBER | Y |  |
| 43 | EXAMENOME | VARCHAR2 | Y |  |
| 44 | OBS | VARCHAR2 | Y |  |
| 45 | CRMSOLICITANTE | VARCHAR2 | Y |  |
| 46 | CRMEXECUTANTE | VARCHAR2 | Y |  |
| 47 | CRMREVISOR | VARCHAR2 | Y |  |
| 48 | ARQUIVADO | CHAR | Y |  |
| 49 | TIPO | NUMBER | Y |  |
| 50 | TIPONOME | VARCHAR2 | Y |  |
| 51 | LEITO | VARCHAR2 | Y |  |
| 52 | CD_UNIDADE | NUMBER | Y |  |
| 53 | CD_MULTI_EMPRESA | VARCHAR2 | Y |  |
| 54 | DT_LIBERADO | DATE | Y |  |
| 55 | DT_STUDY | DATE | Y |  |
| 56 | PROVISORIO | CHAR | N |  |
| 57 | CNES | VARCHAR2 | Y |  |
| 58 | ID_SETOR_EXECUTANTE | NUMBER | Y |  |

---

## IDCE.PROCEDIMENTOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | PRC_ID | NUMBER | N |  |
| 2 | NOME | VARCHAR2 | Y |  |
| 3 | NR_LINHAS | NUMBER | Y |  |
| 4 | NR_COLUNAS | NUMBER | Y |  |
| 5 | MODALIDADE | VARCHAR2 | Y |  |

---

## IDCE.REPORT_REL_CATEGORIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_REPORT_REL_CATEGORIA | NUMBER | N |  |
| 2 | DS_NOME_EXIBICAO | VARCHAR2 | N |  |
| 3 | ID_CATEGORIA_PARENT | NUMBER | N |  |
| 4 | DS_SISTEMA | VARCHAR2 | N |  |

---

## IDCE.REPORT_REL_RELATORIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_REPORT_REL_RELATORIO | NUMBER | N |  |
| 2 | DS_NOME_EXIBICAO | VARCHAR2 | N |  |
| 3 | ID_CATEGORIA_PARENT | NUMBER | N |  |
| 4 | NR_ID_MV_REPORT | NUMBER | N |  |

---

## IDCE.RS_ANA_ABA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_ABA | NUMBER | N |  |
| 2 | NM_ABA | VARCHAR2 | Y |  |
| 3 | DS_FILTRO_ABA | VARCHAR2 | Y |  |
| 4 | ID_PAGE_STR | VARCHAR2 | Y |  |
| 5 | SN_OBRIGATORIO | CHAR | Y |  |
| 6 | SN_ATIVO | CHAR | Y |  |
| 7 | DT_CADASTRO | DATE | N |  |
| 8 | DT_ALTERACAO | DATE | Y |  |
| 9 | ID_ABA_SUPERIOR | NUMBER | Y |  |

---

## IDCE.RS_ANA_ABA_EXAME_UNIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_ABA_EXAME_UNIDADE | NUMBER | N |  |
| 2 | ID_ABA | NUMBER | N |  |
| 3 | ID_PROCEDIMENTO_UNIDADE | NUMBER | Y |  |
| 4 | ID_EXAME_UNIDADE | NUMBER | Y |  |
| 5 | NR_ORDEM | NUMBER | N |  |
| 6 | SN_VISIVEL | CHAR | Y |  |
| 7 | SN_ATIVO | CHAR | Y |  |
| 8 | DT_CADASTRO | DATE | N |  |
| 9 | DT_ALTERACAO | DATE | Y |  |

---

## IDCE.RS_ANA_ANAMNESE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_ANAMNESE | NUMBER | N |  |
| 2 | ID_USUARIO_UNIDADE | NUMBER | N |  |
| 3 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 4 | DS_MOTIVO_EXAME | VARCHAR2 | Y |  |
| 5 | DS_EVOLUCAO_ASSISTENCIAL | VARCHAR2 | Y |  |
| 6 | VL_AMBULATOTIAL_IODETO_DOSE | NUMBER | Y |  |
| 7 | DT_AMBULATORIAL_IODETO | DATE | Y |  |
| 8 | ID_CINTILOGRAFIA | NUMBER | Y |  |
| 9 | ID_CONDUTA_MEDICA | NUMBER | Y |  |
| 10 | ID_DECLUTICAO | NUMBER | Y |  |
| 11 | ID_ENEMA | NUMBER | Y |  |
| 12 | ID_HISTERO | NUMBER | Y |  |
| 13 | ID_HISTORICO_ALERGIA | NUMBER | Y |  |
| 14 | ID_MAMAI | NUMBER | Y |  |
| 15 | ID_MAMAII | NUMBER | Y |  |
| 16 | ID_ONCO_PETCTI | NUMBER | Y |  |
| 17 | ID_ONCO_PETCTII | NUMBER | Y |  |
| 18 | ID_ONCO_PETCTIII | NUMBER | Y |  |
| 19 | ID_PETCTI | NUMBER | Y |  |
| 20 | ID_PETCTII | NUMBER | Y |  |
| 21 | ID_REED | NUMBER | Y |  |
| 22 | ID_RESSONANCIA | NUMBER | Y |  |
| 23 | ID_SOLICITACAO | NUMBER | Y |  |
| 24 | ID_TC_RM_ABDOMEN | NUMBER | Y |  |
| 25 | ID_TC_RM_TORAX | NUMBER | Y |  |
| 26 | ID_CINTILOGRAFIA_OSSEA | NUMBER | Y |  |
| 27 | ID_ESPECTRO_PROSTATAI | NUMBER | Y |  |
| 28 | ID_ESPECTRO_PROSTATAII | NUMBER | Y |  |
| 29 | ID_PROCEDIMENTO | NUMBER | Y |  |
| 30 | DT_CADASTRO | DATE | N |  |
| 31 | DT_ALTERACAO | DATE | Y |  |
| 32 | SN_ATIVO | CHAR | Y |  |
| 33 | NR_PESO_PACIENTE | NUMBER | Y |  |
| 34 | NR_ALTURA_PACIENTE | NUMBER | Y |  |
| 35 | ID_PACIENTE_UNIDADE | NUMBER | Y |  |
| 36 | ID_PROCEDIMENTO_UNIDADE | NUMBER | Y |  |
| 37 | DS_TELEFONE_CONTATO | VARCHAR2 | Y |  |

---

## IDCE.RS_ANA_CINTILOGRAFIA_OSSEA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_CINTILOGRAFIA_OSSEA | NUMBER | N |  |
| 2 | SN_EXAMES_ANTERIORES | CHAR | Y |  |
| 3 | SN_SENTE_DOR | CHAR | Y |  |
| 4 | DS_LOCAL_DOR | VARCHAR2 | Y |  |
| 5 | DS_QUANTO_TEMPO | VARCHAR2 | Y |  |
| 6 | DS_FRATURAS_LESOES | VARCHAR2 | Y |  |
| 7 | DS_LOCAL_FRATURA_LESOES | VARCHAR2 | Y |  |
| 8 | DS_QUANDO | VARCHAR2 | Y |  |
| 9 | DS_CANCER | VARCHAR2 | Y |  |
| 10 | DS_ONDE_CANCER | VARCHAR2 | Y |  |
| 11 | DS_QUANDO_CANCER | VARCHAR2 | Y |  |
| 12 | DS_TEMPO_QUIMIOTERAPIA | VARCHAR2 | Y |  |
| 13 | DS_TEMPO_RADIOTERAPIA | VARCHAR2 | Y |  |
| 14 | DS_ENTREVISTADOR | VARCHAR2 | Y |  |
| 15 | SN_ATIVO | CHAR | Y |  |
| 16 | DT_CADASTRO | DATE | N |  |
| 17 | DT_ALTERACAO | DATE | Y |  |

---

## IDCE.RS_ANA_CIN_MIOCARDICA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_CINTILOGRAFIA | NUMBER | N |  |
| 2 | TP_PROTOCOLO | CHAR | Y |  |
| 3 | DT_REPOUSO | DATE | Y |  |
| 4 | DT_ESTERESSE | DATE | Y |  |
| 5 | SN_ASSINTOMATICO | CHAR | Y |  |
| 6 | SN_DOR_TORACICA_TIPICA | CHAR | Y |  |
| 7 | SN_CANSACO | CHAR | Y |  |
| 8 | SN_HAS | CHAR | Y |  |
| 9 | SN_DISLIPIDEMIA | CHAR | Y |  |
| 10 | SN_DISPINEIA | CHAR | Y |  |
| 11 | SN_H_FAMILIAR | CHAR | Y |  |
| 12 | SN_BOMBINHA | CHAR | Y |  |
| 13 | SN_BRE | CHAR | Y |  |
| 14 | SN_OBESO | CHAR | Y |  |
| 15 | DS_QUANTO_TEMPO | VARCHAR2 | Y |  |
| 16 | SN_DIFICULDADE_SUBIR_LADEIRA | CHAR | Y |  |
| 17 | DS_DIFICULDADE_SUBIR_LADEIRA | CHAR | Y |  |
| 18 | SN_IAM_PREVIO | CHAR | Y |  |
| 19 | DT_IAM_PREVIO | DATE | Y |  |
| 20 | DS_CATETERISMO | VARCHAR2 | Y |  |
| 21 | SN_MARCA_PASSO | CHAR | Y |  |
| 22 | DT_COLOCACAO_MARCA_PASSO | DATE | Y |  |
| 23 | SN_ATIVO | CHAR | Y |  |
| 24 | DT_CADASTRO | DATE | N |  |
| 25 | DT_ALTERACAO | DATE | Y |  |

---

## IDCE.RS_ANA_CONDUTA_MEDICA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_CONDUTA_MEDICA | NUMBER | N |  |
| 2 | TP_CONTRASTE_UTILIZADO | CHAR | Y |  |
| 3 | SN_REACAO_ADVERSA | CHAR | Y |  |
| 4 | TP_REACAO_ADVERSA | CHAR | Y |  |
| 5 | DS_REACAO_TRATAMENTO | VARCHAR2 | Y |  |
| 6 | DS_PUNCAO_VENOSA | VARCHAR2 | Y |  |
| 7 | TP_INJECAO_CONTRASTE | CHAR | Y |  |
| 8 | DS_REDE_VENOSA | VARCHAR2 | Y |  |
| 9 | NR_PUNCAO | NUMBER | Y |  |
| 10 | SN_EXTRAVAZAMENTO | CHAR | Y |  |
| 11 | DS_EXTR_TRATAMENTO | VARCHAR2 | Y |  |
| 12 | SN_PREPARO_ANT_ALERGICO | CHAR | Y |  |
| 13 | DS_MOTIVO_PREPARO | VARCHAR2 | Y |  |
| 14 | SN_CONTRASTE_NAO_IONICO | CHAR | Y |  |
| 15 | DS_CONTRASTE | VARCHAR2 | Y |  |
| 16 | SN_ACO_ANESTESICO | CHAR | Y |  |
| 17 | DS_ANESTESICO | VARCHAR2 | Y |  |
| 18 | DT_RECONSULTA | DATE | Y |  |
| 19 | DS_RECONSULTA | VARCHAR2 | Y |  |
| 20 | SN_ATIVO | CHAR | Y |  |
| 21 | DT_CADASTRO | DATE | N |  |
| 22 | DT_ALTERACAO | DATE | Y |  |
| 23 | DS_MOTIVO_TIPO_CONTRASTE | VARCHAR2 | Y |  |

---

## IDCE.RS_ANA_DECLUTICAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_DECLUTICAO | NUMBER | N |  |
| 2 | DS_QUEIXA_PACIENTE | VARCHAR2 | Y |  |
| 3 | SN_CANCER | CHAR | Y |  |
| 4 | DS_LOCAL_CANCER | VARCHAR2 | Y |  |
| 5 | SN_AVC | CHAR | Y |  |
| 6 | SN_TCE | CHAR | Y |  |
| 7 | SN_RGE | CHAR | Y |  |
| 8 | SN_INTUBACAO_RECENTE | CHAR | Y |  |
| 9 | QT_DIAS_INTUBACAO | NUMBER | Y |  |
| 10 | SN_PNEUMONIA | CHAR | Y |  |
| 11 | SN_GRIPES_PROLONGADAS | CHAR | Y |  |
| 12 | SN_TRAQUEOSTOMIA | CHAR | Y |  |
| 13 | SN_CIRURGIAS | CHAR | Y |  |
| 14 | DS_CIRURGIAS | VARCHAR2 | Y |  |
| 15 | SN_SONDA | CHAR | Y |  |
| 16 | SN_GASTROTOMIA | CHAR | Y |  |
| 17 | SN_JEJUNOSTOMIA | CHAR | Y |  |
| 18 | DS_OUTROS | VARCHAR2 | Y |  |
| 19 | SN_ALIMENTACAO_VIA_ORAL | CHAR | Y |  |
| 20 | TP_CONSISTENCIA | CHAR | Y |  |
| 21 | SN_FONOAUDIOLOGO | CHAR | Y |  |
| 22 | SN_DECLUTICAO_ANTERIORES | CHAR | Y |  |
| 23 | DS_NOME | VARCHAR2 | Y |  |
| 24 | DS_PARENTESCO | VARCHAR2 | Y |  |
| 25 | SN_ATIVO | CHAR | Y |  |
| 26 | DT_CADASTRO | DATE | N |  |
| 27 | DT_ALTERACAO | DATE | Y |  |

---

## IDCE.RS_ANA_ENEMA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_ENEMA | NUMBER | N |  |
| 2 | SN_SANGRAMENTO_ANAL | CHAR | Y |  |
| 3 | SN_FEZES_PRETAS | CHAR | Y |  |
| 4 | SN_HEMORROIDAS | CHAR | Y |  |
| 5 | SN_CONSTIPACAO | CHAR | Y |  |
| 6 | SN_DIARREIA | CHAR | Y |  |
| 7 | SN_FEZES_AMOLECIDAS | CHAR | Y |  |
| 8 | SN_PERDA_FEZES | CHAR | Y |  |
| 9 | SN_DOR_ABDOMINAL | CHAR | Y |  |
| 10 | DS_DOR_ABDOMINAL | VARCHAR2 | Y |  |
| 11 | SN_CIRURGIAS_PREVIAS | CHAR | Y |  |
| 12 | DS_CIRURGIAS_PREVIAS | VARCHAR2 | Y |  |
| 13 | SN_COLONOSCOPIA | CHAR | Y |  |
| 14 | SN_EXAMES_ANTERIORES | CHAR | Y |  |
| 15 | SN_PIOPSIA_INTESTINO | CHAR | Y |  |
| 16 | SN_ATIVO | CHAR | Y |  |
| 17 | DT_CADASTRO | DATE | N |  |
| 18 | DT_ALTERACAO | DATE | Y |  |

---

## IDCE.RS_ANA_ESPEC_PROSTATAI

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_ESPECTRO_PROSTATAI | NUMBER | N |  |
| 2 | SN_PSA | CHAR | Y |  |
| 3 | DT_PSA_0 | DATE | Y |  |
| 4 | VL_PSATOT_0 | NUMBER | Y |  |
| 5 | VL_PSA_LIV_0 | NUMBER | Y |  |
| 6 | VL_RELACAO_0 | NUMBER | Y |  |
| 7 | DT_PSA_1 | DATE | Y |  |
| 8 | VL_PSATOT_1 | NUMBER | Y |  |
| 9 | VL_PSA_LIV_1 | NUMBER | Y |  |
| 10 | VL_RELACAO_1 | NUMBER | Y |  |
| 11 | DT_PSA_2 | DATE | Y |  |
| 12 | VL_PSATOT_2 | NUMBER | Y |  |
| 13 | VL_PSA_LIV_2 | NUMBER | Y |  |
| 14 | VL_RELACAO_2 | NUMBER | Y |  |
| 15 | SN_BIOPSIA_PROSTATA | CHAR | Y |  |
| 16 | DT_BIOPSIA_0 | DATE | Y |  |
| 17 | DS_RESULTADO_0 | VARCHAR2 | Y |  |
| 18 | DT_BIOPSIA_1 | DATE | Y |  |
| 19 | DS_RESULTADO_1 | VARCHAR2 | Y |  |
| 20 | DT_BIOPSIA_2 | DATE | Y |  |
| 21 | DS_RESULTADO_2 | VARCHAR2 | Y |  |
| 22 | SN_ECOGRAFIA | CHAR | Y |  |
| 23 | SN_ESPECTROSCOPIA | CHAR | Y |  |
| 24 | SN_CIRURGIA_PROSTATA | CHAR | Y |  |
| 25 | TP_CIRURGIA_PROSTATA | CHAR | Y |  |
| 26 | SN_ATIVO | CHAR | Y |  |
| 27 | DT_CADASTRO | DATE | N |  |
| 28 | DT_ALTERACAO | DATE | Y |  |

---

## IDCE.RS_ANA_ESPEC_PROSTATAII

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_ESPECTRO_PROSTATAII | NUMBER | N |  |
| 2 | SN_DOENCA_PROSTATA | CHAR | Y |  |
| 3 | DS_DOENCA_PROSTATA | VARCHAR2 | Y |  |
| 4 | TP_TRATAMENTO | CHAR | Y |  |
| 5 | SN_CANCER_PROSTATA | CHAR | Y |  |
| 6 | DS_CANCER_PROSTATA | VARCHAR2 | Y |  |
| 7 | DS_IMAGEM_ANATOMICA | VARCHAR2 | Y |  |
| 8 | TP_IMAGEM_ANATOMICA | CHAR | Y |  |
| 9 | DS_PROSE_IMAGEM | VARCHAR2 | Y |  |
| 10 | DS_RESULTADO_BIOPSIA | VARCHAR2 | Y |  |
| 11 | SN_ATIVO | CHAR | Y |  |
| 12 | DT_CADASTRO | DATE | N |  |
| 13 | DT_ALTERACAO | DATE | Y |  |

---

## IDCE.RS_ANA_HISTEROSSALPINGOGRAFIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_HISTERO | NUMBER | N |  |
| 2 | DT_ULTIMA_MENSTRUACAO_INI | DATE | Y |  |
| 3 | DT_ULTIMA_MENSTRUACAO_FIN | DATE | Y |  |
| 4 | SN_ANTICONSEPCIONAL_ORAL | CHAR | Y |  |
| 5 | TP_GRAVIDEZ_ANTERIOR | CHAR | Y |  |
| 6 | SN_ABORTO | CHAR | Y |  |
| 7 | TP_ABORTO | CHAR | Y |  |
| 8 | SN_DIU | CHAR | Y |  |
| 9 | SN_CURETAGEM_PREVIA | CHAR | Y |  |
| 10 | DS_CURETAGEM_PREVIA | VARCHAR2 | Y |  |
| 11 | SN_LIGADURA_TROMPAS | CHAR | Y |  |
| 12 | SN_CIRURGIA_PREVIA | CHAR | Y |  |
| 13 | SN_GRAVIDEZ_ECTOPICA | CHAR | Y |  |
| 14 | SN_INFECCAO_GINECOLOGICA | CHAR | Y |  |
| 15 | SN_COLICAS_MENSTRUACAO | CHAR | Y |  |
| 16 | SN_PARTO_CESARIA | CHAR | Y |  |
| 17 | SN_ATIVO | CHAR | Y |  |
| 18 | DT_CADASTRO | DATE | N |  |
| 19 | DT_ALTERACAO | DATE | Y |  |
| 20 | VL_CURETAGEM_PREVIA | NUMBER | Y |  |

---

## IDCE.RS_ANA_HISTORICO_ALERGIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_HISTORICO_ALERGIA | NUMBER | N |  |
| 2 | SN_CONTRASTE_ISOLADO | CHAR | Y |  |
| 3 | DS_CONTRASTE_ISOLADO | VARCHAR2 | Y |  |
| 4 | SN_REACAO_ALERGICA | CHAR | Y |  |
| 5 | DS_REACAO_ALERGICA | VARCHAR2 | Y |  |
| 6 | SN_TIPO_ALERGIA | CHAR | Y |  |
| 7 | DS_TIPO_ALERGIA | VARCHAR2 | Y |  |
| 8 | SN_ASMA_BRONQUICA | CHAR | Y |  |
| 9 | DS_ASMABROQUICA | VARCHAR2 | Y |  |
| 10 | SN_BOMBINHA | CHAR | Y |  |
| 11 | DS_BOMBINHA | VARCHAR2 | Y |  |
| 12 | SN_CARDIOPATIA | CHAR | Y |  |
| 13 | SN_DIABETE | CHAR | Y |  |
| 14 | SN_INF_RENAL | CHAR | Y |  |
| 15 | SN_TIREODE | CHAR | Y |  |
| 16 | SN_HAS | CHAR | Y |  |
| 17 | SN_MIELOMA | CHAR | Y |  |
| 18 | SN_REUMATISMO | CHAR | Y |  |
| 19 | SN_HEPATITE | CHAR | Y |  |
| 20 | SN_MEDICAMENTO | CHAR | Y |  |
| 21 | DS_MEDICAMENTO | VARCHAR2 | Y |  |
| 22 | SN_MEDICACAO_NOVA | CHAR | Y |  |
| 23 | DS_MEDICACAO_NOVA | VARCHAR2 | Y |  |
| 24 | SN_GESTACAO | CHAR | Y |  |
| 25 | SN_ATIVO | CHAR | Y |  |
| 26 | DT_CADASTRO | DATE | N |  |
| 27 | DT_ALTERACAO | DATE | Y |  |
| 28 | TP_CONTRASTE | CHAR | Y |  |
| 29 | NR_DCE | NUMBER | Y |  |
| 30 | NR_CREATININA | NUMBER | Y |  |
| 31 | SN_HAS_DIALISE | CHAR | Y |  |
| 32 | SN_HAS_TRANSPLANTE_RENAL | CHAR | Y |  |
| 33 | SN_HAS_RIM_UNICO | CHAR | Y |  |
| 34 | SN_HAS_CANCER_RENAL | CHAR | Y |  |
| 35 | SN_HAS_CIRURGIA_RENAL | CHAR | Y |  |
| 36 | DS_DIABETES_MEDICAMENTO | VARCHAR2 | Y |  |
| 37 | DS_HAS_MEDICAMENTO | VARCHAR2 | Y |  |
| 38 | DS_OBSERVACAO_DOENCAS_CRONICAS | VARCHAR2 | Y |  |
| 39 | SN_DOENCA_RENAL | CHAR | Y |  |

---

## IDCE.RS_ANA_MAMAI

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_MAMAI | NUMBER | N |  |
| 2 | DS_PROFISSAO | VARCHAR2 | Y |  |
| 3 | SN_MAMOGRAFIA | CHAR | Y |  |
| 4 | TP_QUANTO_TEMPO | CHAR | Y |  |
| 5 | SN_EXAME_FISICO_MAMA | CHAR | Y |  |
| 6 | SN_MAE | CHAR | Y |  |
| 7 | SN_DIAGNOSTICO_MAE | CHAR | Y |  |
| 8 | SN_IRMA | CHAR | Y |  |
| 9 | SN_DIAGNOSTICO_IRMA | CHAR | Y |  |
| 10 | SN_FILHA | CHAR | Y |  |
| 11 | SN_DIAGNOSTICO_FILHA | CHAR | Y |  |
| 12 | SN_OUTROS_PARENTES | CHAR | Y |  |
| 13 | NR_IDADE_PRIMEIRA_MENSTRUACAO | NUMBER | Y |  |
| 14 | TP_MENSTRUA | CHAR | Y |  |
| 15 | NR_IDADE_PAROU_MENSTRUAR | NUMBER | Y |  |
| 16 | DT_ULTIMA_MENSTRUACAO | DATE | Y |  |
| 17 | SN_FILHOS | CHAR | Y |  |
| 18 | SN_AMAMENTOU | CHAR | Y |  |
| 19 | NR_MESES_AMAMENTACAO | NUMBER | Y |  |
| 20 | NR_IDADE_QUANDO_PRIMEIRO_FILHO | NUMBER | Y |  |
| 21 | SN_REPOSICAO_HORMONAL | CHAR | Y |  |
| 22 | TP_MEDICAMENTO | CHAR | Y |  |
| 23 | SN_ATIVO | CHAR | Y |  |
| 24 | DT_CADASTRO | DATE | N |  |
| 25 | DT_ALTERACAO | DATE | Y |  |
| 26 | SN_DIAGNOSTICO_OUTROS_PARENTES | CHAR | Y |  |

---

## IDCE.RS_ANA_MAMAII

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_MAMAII | NUMBER | N |  |
| 2 | SN_NODULO_DIR | CHAR | Y |  |
| 3 | SN_NODULO_ESQ | CHAR | Y |  |
| 4 | SN_SECRECAO_DIR | CHAR | Y |  |
| 5 | SN_SECRECAO_ESQ | CHAR | Y |  |
| 6 | SN_DOR_DIR | CHAR | Y |  |
| 7 | SN_DOR_ESQ | CHAR | Y |  |
| 8 | SN_OUTRO_DIR | CHAR | Y |  |
| 9 | SN_OUTRO_ESQ | CHAR | Y |  |
| 10 | DS_DECRICAO | VARCHAR2 | Y |  |
| 11 | IMG_MAMA | BLOB | Y |  |
| 12 | SN_PUNCAO_DIR | CHAR | Y |  |
| 13 | SN_PUNCAO_ESQ | CHAR | Y |  |
| 14 | DT_PUNCAO | DATE | Y |  |
| 15 | SN_CORE_BIOPSIA_DIR | CHAR | Y |  |
| 16 | SN_CORE_BIOPSIA_ESQ | CHAR | Y |  |
| 17 | DT_CORE_BIOPSIA | DATE | Y |  |
| 18 | SN_BIOPSIA_CIRURGICA_DIR | CHAR | Y |  |
| 19 | SN_BIOPSIA_CIRURGICA_ESQ | CHAR | Y |  |
| 20 | DT_BIOPSIA_CIRURGICA | DATE | Y |  |
| 21 | SN_RETIRADA_CANCER_DIR | CHAR | Y |  |
| 22 | SN_RETIRADA_CANCER_ESQ | CHAR | Y |  |
| 23 | DT_RETIRADA_CANCER | DATE | Y |  |
| 24 | SN_MESTECTOMIA_DIR | CHAR | Y |  |
| 25 | SN_MESTECTOMIA_ESQ | CHAR | Y |  |
| 26 | DT_MESTECTOMIA | DATE | Y |  |
| 27 | SN_RADIOTERAPIA_DIR | CHAR | Y |  |
| 28 | SN_RADIOTERAPIA_ESQ | CHAR | Y |  |
| 29 | DT_RADIOTERAPIA | DATE | Y |  |
| 30 | SN_RECONTRUCAO_MAMARIA_DIR | CHAR | Y |  |
| 31 | SN_RECONTRUCAO_MAMARIA_ESQ | CHAR | Y |  |
| 32 | DT_RECONTRUCAO_MAMARIA | DATE | Y |  |
| 33 | SN_MAMOPLASTIA_DIR | CHAR | Y |  |
| 34 | SN_MAMOPLASTIA_ESQ | CHAR | Y |  |
| 35 | DT_MAMOPLASTIA | DATE | Y |  |
| 36 | SN_SILICONE_DIR | CHAR | Y |  |
| 37 | SN_SILICONE_ESQ | CHAR | Y |  |
| 38 | DT_SILICONE | DATE | Y |  |
| 39 | DS_BIRADS | VARCHAR2 | Y |  |
| 40 | SN_BIRADS_0 | CHAR | Y |  |
| 41 | SN_BIRADS_1 | CHAR | Y |  |
| 42 | SN_BIRADS_2 | CHAR | Y |  |
| 43 | SN_BIRADS_3 | CHAR | Y |  |
| 44 | SN_BIRADS_4A | CHAR | Y |  |
| 45 | SN_BIRADS_4B | CHAR | Y |  |
| 46 | SN_BIRADS_4C | CHAR | Y |  |
| 47 | SN_BIRADS_5 | CHAR | Y |  |
| 48 | SN_BIRADS_6 | CHAR | Y |  |
| 49 | SN_DESNSIDADE_BIRADS_1 | CHAR | Y |  |
| 50 | SN_DESNSIDADE_BIRADS_2 | CHAR | Y |  |
| 51 | SN_DESNSIDADE_BIRADS_3 | CHAR | Y |  |
| 52 | SN_DESNSIDADE_BIRADS_4 | CHAR | Y |  |
| 53 | SN_DESNSIDADE_TABAR_1 | CHAR | Y |  |
| 54 | SN_DESNSIDADE_TABAR_2 | CHAR | Y |  |
| 55 | SN_DESNSIDADE_TABAR_3 | CHAR | Y |  |
| 56 | SN_DESNSIDADE_TABAR_4 | CHAR | Y |  |
| 57 | SN_DESNSIDADE_TABAR_5 | CHAR | Y |  |
| 58 | SN_ATIVO | CHAR | Y |  |
| 59 | DT_CADASTRO | DATE | N |  |
| 60 | DT_ALTERACAO | DATE | Y |  |
| 61 | DS_ALTERACAO_MAMA | VARCHAR2 | Y |  |

---

## IDCE.RS_ANA_ONCO_PETCTI

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_ONCO_PETCTI | NUMBER | N |  |
| 2 | NR_PET_CT_NUMERO | NUMBER | Y |  |
| 3 | DS_TECNOLOGO | VARCHAR2 | Y |  |
| 4 | TP_PREPARO_ADEQUADO_EXAME | CHAR | Y |  |
| 5 | TP_ORIENTACAO_EXAME | CHAR | Y |  |
| 6 | TP_JEJUM | CHAR | Y |  |
| 7 | TP_HIPERTENSAO | CHAR | Y |  |
| 8 | TP_DIABETES | CHAR | Y |  |
| 9 | TP_ALERGIA | CHAR | Y |  |
| 10 | TP_ALERGIA_CONTRASTE | CHAR | Y |  |
| 11 | TP_GRAVIDEZ | CHAR | Y |  |
| 12 | TP_AMAMENTACAO | CHAR | Y |  |
| 13 | TP_BRONQUITE_ASMA | CHAR | Y |  |
| 14 | TP_CANCER_TIREOIDE | CHAR | Y |  |
| 15 | DS_MEDICACOES_USO | VARCHAR2 | Y |  |
| 16 | SN_VERBALIZA_NOME | CHAR | Y |  |
| 17 | SN_NOME_DATA_NASCIMENTO | CHAR | Y |  |
| 18 | SN_PULSEIRA | CHAR | Y |  |
| 19 | SN_ATIVO | CHAR | Y |  |
| 20 | DT_CADASTRO | DATE | N |  |
| 21 | DT_ALTERACAO | DATE | Y |  |

---

## IDCE.RS_ANA_ONCO_PETCTII

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_ONCO_PETCTII | NUMBER | N |  |
| 2 | TP_SALA_REPOUSO | CHAR | Y |  |
| 3 | VL_GLICEMIA | NUMBER | Y |  |
| 4 | VL_PESO | NUMBER | Y |  |
| 5 | VL_ALTURA | NUMBER | Y |  |
| 6 | DT_INJECAO_F_FDG | DATE | Y |  |
| 7 | VL_ATIVIDADE_INJETADA | NUMBER | Y |  |
| 8 | DT_INICIO_REPOUSO | DATE | Y |  |
| 9 | DT_INICIO_IMAGEM | DATE | Y |  |
| 10 | DS_LOCAL_PUNCAO_VENOSA | VARCHAR2 | Y |  |
| 11 | SN_REACAO | CHAR | Y |  |
| 12 | DS_REACAO | VARCHAR2 | Y |  |
| 13 | DS_CONDUTA | VARCHAR2 | Y |  |
| 14 | SN_INSTALADOSF | CHAR | Y |  |
| 15 | VL_CONTRASTE_VIA_ORAL | NUMBER | Y |  |
| 16 | VL_COPOS_CONTRASTE | NUMBER | Y |  |
| 17 | VL_H2O | NUMBER | Y |  |
| 18 | VL_COPOS_H2O | NUMBER | Y |  |
| 19 | VL_DIAPAZAN | NUMBER | Y |  |
| 20 | VL_DIURETICONUMERIC | NUMBER | Y |  |
| 21 | DT_HORARIO_DIURETICO | DATE | Y |  |
| 22 | SN_CIRURGIA | CHAR | Y |  |
| 23 | DS_CIRURGIA | VARCHAR2 | Y |  |
| 24 | DT_CIRURGIA | DATE | Y |  |
| 25 | SN_QUIMIOTERAPIA | CHAR | Y |  |
| 26 | DT_INICIO_QUIMIOTERAPIA | DATE | Y |  |
| 27 | DT_FIM_QUIMIOTERAPIA | DATE | Y |  |
| 28 | SN_RADIOTERAPIA | CHAR | Y |  |
| 29 | DT_INICIO_RADIOTERAPIA | DATE | Y |  |
| 30 | DT_FIM_RADIOTERAPIA | DATE | Y |  |
| 31 | DS_DIAGNOSTICO | VARCHAR2 | Y |  |
| 32 | DS_AREA_AVALIADA | VARCHAR2 | Y |  |
| 33 | SN_ATIVO | CHAR | Y |  |
| 34 | DT_CADASTRO | DATE | N |  |
| 35 | DT_ALTERACAO | DATE | Y |  |
| 36 | DS_BIOPSIA_CIRURGIA | VARCHAR2 | Y |  |

---

## IDCE.RS_ANA_ONCO_PETCTIII

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_ONCO_PETCTIII | NUMBER | N |  |
| 2 | SN_DIAGNOSTICO | CHAR | Y |  |
| 3 | SN_ESTADIAMENTO | CHAR | Y |  |
| 4 | SN_SEGUIMENTO | CHAR | Y |  |
| 5 | SN_TRATAMENTO | CHAR | Y |  |
| 6 | DT_CONSULTA_ONCOLOGICA | DATE | Y |  |
| 7 | DT_HORARIO_CONSULTA | DATE | Y |  |
| 8 | SN_CABECA_PESCOCO | CHAR | Y |  |
| 9 | SN_TIREOIDE | CHAR | Y |  |
| 10 | SN_MELANOMA | CHAR | Y |  |
| 11 | SN_LINFOMA | CHAR | Y |  |
| 12 | SN_PULMAO | CHAR | Y |  |
| 13 | SN_ESOFAGO | CHAR | Y |  |
| 14 | SN_COLATERAL | CHAR | Y |  |
| 15 | SN_ESTOMAGO | CHAR | Y |  |
| 16 | SN_PANCREAS | CHAR | Y |  |
| 17 | SN_SARCOMAS | CHAR | Y |  |
| 18 | SN_MAMAS | CHAR | Y |  |
| 19 | SN_GINOCOLOGICO | CHAR | Y |  |
| 20 | DS_REVISADO_POR | VARCHAR2 | Y |  |
| 21 | DS_OUTROS_EXAMES | VARCHAR2 | Y |  |
| 22 | SN_ATIVO | CHAR | Y |  |
| 23 | DT_CADASTRO | DATE | N |  |
| 24 | DT_ALTERACAO | DATE | Y |  |

---

## IDCE.RS_ANA_PETCTI

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_PETCTI | NUMBER | N |  |
| 2 | DS_DIAGNOSTICO_MEDICO | VARCHAR2 | Y |  |
| 3 | DS_CONHECIMENTO_DOENCA | VARCHAR2 | Y |  |
| 4 | DS_DOENCAS_PASSADAS | VARCHAR2 | Y |  |
| 5 | DS_HISTORICO_FAMILIAR | VARCHAR2 | Y |  |
| 6 | DS_MEDICACOES_USO | VARCHAR2 | Y |  |
| 7 | DS_CONCIENCIA | VARCHAR2 | Y |  |
| 8 | DS_ORIENTACAO | VARCHAR2 | Y |  |
| 9 | DS_COMPORTAMENTO | VARCHAR2 | Y |  |
| 10 | SN_DIFICULDADE_COMUNICACAO | CHAR | Y |  |
| 11 | DS_DIFICULDADE_COMUNICACAO | VARCHAR2 | Y |  |
| 12 | TP_NIVEL_CONCIENCIA | CHAR | Y |  |
| 13 | TP_COMPORTAMENTO | CHAR | Y |  |
| 14 | TP_COMUNICACAO | CHAR | Y |  |
| 15 | TP_ALIMENTACAO | CHAR | Y |  |
| 16 | SN_VISAO | CHAR | Y |  |
| 17 | SN_AUDICAO | CHAR | Y |  |
| 18 | SN_ALFATO | CHAR | Y |  |
| 19 | SN_TATO | CHAR | Y |  |
| 20 | DS_DOR | VARCHAR2 | Y |  |
| 21 | DS_LOCAL | VARCHAR2 | Y |  |
| 22 | DS_TEMPO | VARCHAR2 | Y |  |
| 23 | TP_OXIGENACAO | CHAR | Y |  |
| 24 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 25 | SN_ACEITACAO_ALIMENTAR | CHAR | Y |  |
| 26 | DS_PERDA_GANHO_PESO | VARCHAR2 | Y |  |
| 27 | SN_ATIVO | CHAR | Y |  |
| 28 | DT_CADASTRO | DATE | N |  |
| 29 | DT_ALTERACAO | DATE | Y |  |

---

## IDCE.RS_ANA_PETCTII

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_PETCTII | NUMBER | N |  |
| 2 | TP_ELIMINACAO_URINARIA | CHAR | Y |  |
| 3 | TP_ELIMINACAO_INTESTINAIS | CHAR | Y |  |
| 4 | DS_FREQUENCIA_ELIMINACAO | VARCHAR2 | Y |  |
| 5 | SN_INTEGRIDADE_PELE | CHAR | Y |  |
| 6 | DS_INTEGRIDADE_PELE | VARCHAR2 | Y |  |
| 7 | SN_MUCOSAS | CHAR | Y |  |
| 8 | DS_MUCOSAS | VARCHAR2 | Y |  |
| 9 | TP_SONO | CHAR | Y |  |
| 10 | DS_SONO | VARCHAR2 | Y |  |
| 11 | DS_OBSERVACAOES | VARCHAR2 | Y |  |
| 12 | SN_ALCOOLISMO | CHAR | Y |  |
| 13 | QT_TEMPO | NUMBER | Y |  |
| 14 | SN_FUMANTE | CHAR | Y |  |
| 15 | QT_CIGARROS | NUMBER | Y |  |
| 16 | VL_FR | NUMBER | Y |  |
| 17 | VL_TA | NUMBER | Y |  |
| 18 | VL_HGT | NUMBER | Y |  |
| 19 | VL_FC | NUMBER | Y |  |
| 20 | VL_TAX | NUMBER | Y |  |
| 21 | VL_STURACAO_PULSO | NUMBER | Y |  |
| 22 | SN_NECESSIDADE_ANESTESIA | CHAR | Y |  |
| 23 | DS_MOTIVO | VARCHAR2 | Y |  |
| 24 | DS_ALTERACOES_IMPRESSOES | VARCHAR2 | Y |  |
| 25 | SN_ATIVO | CHAR | Y |  |
| 26 | DT_CADASTRO | DATE | N |  |
| 27 | DT_ALTERACAO | DATE | Y |  |

---

## IDCE.RS_ANA_PROCEDIMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_PROCEDIMENTO | NUMBER | N |  |
| 2 | ID_SALA | NUMBER | Y |  |
| 3 | ID_TIPO_EXAME_COPIA | NUMBER | Y |  |
| 4 | ID_ANAMNESE | NUMBER | Y |  |
| 5 | SN_PEDIDO_MEDICO | CHAR | Y |  |
| 6 | SN_GRAVIDA | CHAR | Y |  |
| 7 | DS_ANALISE_CRITICA | VARCHAR2 | Y |  |
| 8 | DS_URGENCIA | VARCHAR2 | Y |  |
| 9 | SN_ANTECIPACAO_LAUDO | CHAR | Y |  |
| 10 | DS_DATA_HORA_MEDICO | VARCHAR2 | Y |  |
| 11 | SN_COPIA_EXAMES | CHAR | Y |  |
| 12 | NR_COPIA_EXAME | NUMBER | Y |  |
| 13 | DS_RELATORIO_MEDICO_ESPECIFICO | VARCHAR2 | Y |  |
| 14 | SN_MEDICINA_NUCLEAR | CHAR | Y |  |
| 15 | DS_MEDICINA_NUCLEAR | VARCHAR2 | Y |  |
| 16 | SN_RADIOLOGIA | CHAR | Y |  |
| 17 | DS_RADIOLOGIA | VARCHAR2 | Y |  |
| 18 | SN_RESSONANCIA | CHAR | Y |  |
| 19 | DS_RESSONANCIA | VARCHAR2 | Y |  |
| 20 | SN_TOMOGRAFIA | CHAR | Y |  |
| 21 | DS_TOMOGRAFIA | VARCHAR2 | Y |  |
| 22 | SN_ULTRASSONAGRAFIA | CHAR | Y |  |
| 23 | DS_ULTRASSONOGRAFIA | VARCHAR2 | Y |  |
| 24 | SN_OUTROS | CHAR | Y |  |
| 25 | DS_OUTROS | VARCHAR2 | Y |  |
| 26 | DS_COMPLEMENTACAO_EXAME | VARCHAR2 | Y |  |
| 27 | DT_CADASTRO | DATE | N |  |
| 28 | DT_ALTERACAO | DATE | Y |  |
| 29 | SN_ATIVO | CHAR | Y |  |

---

## IDCE.RS_ANA_REED

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_REED | NUMBER | N |  |
| 2 | TP_MOTIVO | CHAR | Y |  |
| 3 | TP_REGURGITACAO | CHAR | Y |  |
| 4 | TP_FEZES | CHAR | Y |  |
| 5 | DS_OUTROS_MOTIVOS | VARCHAR2 | Y |  |
| 6 | SN_DIFICULDADE_ENGOLIR | CHAR | Y |  |
| 7 | DS_DIFICULDADE_ENGOLIR | VARCHAR2 | Y |  |
| 8 | SN_ALIMENTO_TRANCAR | CHAR | Y |  |
| 9 | DS_ALIMENTO_TRANCAR | VARCHAR2 | Y |  |
| 10 | SN_DOR | CHAR | Y |  |
| 11 | DS_DOR | VARCHAR2 | Y |  |
| 12 | TP_CIRURGIA | CHAR | Y |  |
| 13 | SN_ENDOSCOPIA | CHAR | Y |  |
| 14 | TP_CIRURGIAII | CHAR | Y |  |
| 15 | DS_CIRURGIAII | VARCHAR2 | Y |  |
| 16 | SN_FEZ_CIRURGIA | CHAR | Y |  |
| 17 | TP_INTENSIDADE_CIRURGIA | CHAR | Y |  |
| 18 | SN_ATIVO | CHAR | Y |  |
| 19 | DT_CADASTRO | DATE | N |  |
| 20 | DT_ALTERACAO | DATE | Y |  |

---

## IDCE.RS_ANA_RESSONANCIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_RESSONANCIA | NUMBER | N |  |
| 2 | SN_MANIPULA_METAIS | CHAR | Y |  |
| 3 | DS_ATIVIDADE | VARCHAR2 | Y |  |
| 4 | SN_PROBLEMAS_RENAIS | CHAR | Y |  |
| 5 | SN_MARCA_PASSO | CHAR | Y |  |
| 6 | SN_CLIPS_CIRURGICO | CHAR | Y |  |
| 7 | SN_PLA_PAR_HAS_METALICAS | CHAR | Y |  |
| 8 | SN_VALVULA_CARDIACA | CHAR | Y |  |
| 9 | SN_DIU | CHAR | Y |  |
| 10 | SN_GESTANTE | CHAR | Y |  |
| 11 | SN_APARELHO_AUDITIVO | CHAR | Y |  |
| 12 | SN_PONTE_DENTARIA_MOVEL | CHAR | Y |  |
| 13 | SN_CLAUSTROFOBIA | CHAR | Y |  |
| 14 | SN_BRONQUITE_ASMA | CHAR | Y |  |
| 15 | SN_ALERGIA | CHAR | Y |  |
| 16 | DS_ALERGIA | VARCHAR2 | Y |  |
| 17 | SN_ALIMENTACAO | CHAR | Y |  |
| 18 | DS_ALIMENTACAO | VARCHAR2 | Y |  |
| 19 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 20 | SN_ATIVO | CHAR | Y |  |
| 21 | DT_CADASTRO | DATE | N |  |
| 22 | DT_ALTERACAO | DATE | Y |  |
| 23 | NR_DCE | NUMBER | Y |  |
| 24 | NR_CREATININA | NUMBER | Y |  |
| 25 | SN_DESFIBRILADOR | CHAR | Y |  |
| 26 | SN_IMPLANTE_COCLEAR | CHAR | Y |  |
| 27 | SN_TATUAGEM_RECENTE | CHAR | Y |  |
| 28 | SN_DIALISE | CHAR | Y |  |
| 29 | SN_TRANSPLANTE_RENAL | CHAR | Y |  |
| 30 | SN_RIM_UNICO | CHAR | Y |  |
| 31 | SN_CANCER_RENAL | CHAR | Y |  |
| 32 | SN_CIRURGIA_RENAL | CHAR | Y |  |
| 33 | SN_HAS | CHAR | Y |  |
| 34 | SN_DM | CHAR | Y |  |
| 35 | SN_EXAMES_ANTERIORES | CHAR | Y |  |
| 36 | DS_EXAMES_ANTERIORES | VARCHAR2 | Y |  |

---

## IDCE.RS_ANA_SOLICITACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_SOLICITACAO | NUMBER | N |  |
| 2 | DS_INFORMACAO_PASSAGEM | VARCHAR2 | Y |  |
| 3 | SN_ATIVO | CHAR | Y |  |
| 4 | DT_CADASTRO | DATE | N |  |
| 5 | DT_ALTERACAO | DATE | Y |  |

---

## IDCE.RS_ANA_TC_RM_ABDOMEN

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_TC_RM_ABDOMEN | NUMBER | N |  |
| 2 | DS_CIRURGIAS_PREVIAS | VARCHAR2 | Y |  |
| 3 | SN_MENSTRUA | CHAR | Y |  |
| 4 | SN_METODO_CONTRACEPTIVO | CHAR | Y |  |
| 5 | DS_METODO_CONTRACEPTIVO | VARCHAR2 | Y |  |
| 6 | SN_HORMONIO | CHAR | Y |  |
| 7 | DS_HORMONIO | VARCHAR2 | Y |  |
| 8 | SN_DOR_COLICA_MENSTRUAL | CHAR | Y |  |
| 9 | SN_SANGRAMENTO_AUMENTADO | CHAR | Y |  |
| 10 | SN_QUIMIOTERAPIA | CHAR | Y |  |
| 11 | SN_RADIOTERAPIA | CHAR | Y |  |
| 12 | SN_FUMA_JA_FUMOU | CHAR | Y |  |
| 13 | DS_FUMA_JA_FUMOU | VARCHAR2 | Y |  |
| 14 | SN_BEBIDA_ALCOOLICA | CHAR | Y |  |
| 15 | DS_BEBIDA_ALCOOLICA | VARCHAR2 | Y |  |
| 16 | SN_HEPATITE | CHAR | Y |  |
| 17 | DS_HEPATITE | VARCHAR2 | Y |  |
| 18 | SN_TRANSFUSAO_SANGUINEA | CHAR | Y |  |
| 19 | DS_TRANSFUSAO_SANGUINEA | VARCHAR2 | Y |  |
| 20 | SN_ATIVO | CHAR | Y |  |
| 21 | DT_CADASTRO | DATE | N |  |
| 22 | DT_ALTERACAO | DATE | Y |  |

---

## IDCE.RS_ANA_TC_RM_TORAX

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_TC_RM_TORAX | NUMBER | N |  |
| 2 | SN_TOMOGRAFIA_TORAX | CHAR | Y |  |
| 3 | DS_TOMOGRAFIA_TORAX | VARCHAR2 | Y |  |
| 4 | SN_FUMANTE | CHAR | Y |  |
| 5 | DS_FUMANTE | VARCHAR2 | Y |  |
| 6 | SN_JA_FUMOU | CHAR | Y |  |
| 7 | SN_MEDICACAO_CONTINUA | CHAR | Y |  |
| 8 | DS_MEDICACAO_CONTINUA | VARCHAR2 | Y |  |
| 9 | SN_ANTICONCEPCIONAL_ORAL | CHAR | Y |  |
| 10 | SN_CANCER_CONHECIDO | CHAR | Y |  |
| 11 | SN_CIRURGIA_PULMAO | CHAR | Y |  |
| 12 | SN_LINFOMA_LEUCEMIA | CHAR | Y |  |
| 13 | SN_TUBERCULOSE | CHAR | Y |  |
| 14 | SN_AIDS | CHAR | Y |  |
| 15 | SN_ASMATICO | CHAR | Y |  |
| 16 | SN_RINITE_ALERGICA | CHAR | Y |  |
| 17 | SN_FALTA_AR | CHAR | Y |  |
| 18 | SN_TOSSE | CHAR | Y |  |
| 19 | SN_TOSSE_SECRECAO | CHAR | Y |  |
| 20 | SN_SECRECAO_SANGUE | CHAR | Y |  |
| 21 | SN_FEBRE | CHAR | Y |  |
| 22 | SN_RADIOTERAPIA | CHAR | Y |  |
| 23 | SN_QUIMIOTERAPIA | CHAR | Y |  |
| 24 | SN_CHIADO_PEITO | CHAR | Y |  |
| 25 | SN_DOR_PEITO | CHAR | Y |  |
| 26 | DS_DOR_PEITO | VARCHAR2 | Y |  |
| 27 | SN_PERDA_PESO | CHAR | Y |  |
| 28 | SN_DERRAME_PLEURAL | CHAR | Y |  |
| 29 | DS_DERRAME_PLEURAL | VARCHAR2 | Y |  |
| 30 | SN_CRIACAO_GALINHAS | CHAR | Y |  |
| 31 | SN_MORCEGOS | CHAR | Y |  |
| 32 | SN_TROMBOSE_PERNAS | CHAR | Y |  |
| 33 | SN_ATIVO | CHAR | Y |  |
| 34 | DT_CADASTRO | DATE | N |  |
| 35 | DT_ALTERACAO | DATE | Y |  |
| 36 | SN_VIAGEM_EXTERIOR | CHAR | Y |  |

---

## IDCE.RS_ANA_TERMO_PROCEDIMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_TERMO_PROCEDIMENTO | NUMBER | N |  |
| 2 | ID_PROCEDIMENTO_UNIDADE | NUMBER | N |  |
| 3 | DS_LAYOUT_TERMO | VARCHAR2 | N |  |

---

## IDCE.RS_BI_CADASTRO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_BI_CADASTRO | NUMBER | N |  |
| 2 | NM_CADASTRO | VARCHAR2 | N |  |
| 3 | DS_DESCRICAO | VARCHAR2 | Y |  |
| 4 | ID_USUARIO | NUMBER | Y |  |
| 5 | DT_CADASTRO | DATE | N |  |
| 6 | DT_ALTERACAO | DATE | Y |  |
| 7 | NM_VIEW | VARCHAR2 | Y |  |
| 8 | DS_LAYOUT_GRID | CLOB | Y |  |

---

## IDCE.RS_BI_CADASTRO_CAMPOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_BI_CADASTRO_CAMPOS | NUMBER | N |  |
| 2 | ID_BI_CADASTRO | NUMBER | N |  |
| 3 | NM_CAMPO | VARCHAR2 | N |  |
| 4 | NM_TEMPLATE | VARCHAR2 | Y |  |
| 5 | TP_BROWSER | VARCHAR2 | N |  |

---

## IDCE.RS_BI_CADASTRO_FILTRO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_BI_CADASTRO_FILTRO | NUMBER | N |  |
| 2 | ID_BI_CADASTRO | NUMBER | Y |  |
| 3 | NM_CAMPO | VARCHAR2 | Y |  |
| 4 | NM_CRITERIO | VARCHAR2 | Y |  |

---

## IDCE.RS_BI_CADASTRO_ORDEM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_BI_CADASTRO_ORDEM | NUMBER | N |  |
| 2 | ID_BI_CADASTRO | NUMBER | Y |  |
| 3 | NM_CAMPO | VARCHAR2 | Y |  |
| 4 | TP_ORDEM | CHAR | Y | A = Ascendente, D = Descendente |

---

## IDCE.RS_BI_LINK_HIS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_LINK | NUMBER | N |  |
| 2 | NM_LINK | VARCHAR2 | N |  |
| 3 | TP_BROWSER | VARCHAR2 | N |  |
| 4 | DS_TEMPLATE | VARCHAR2 | N |  |
| 5 | ID_USUARIO_CADASTRO | NUMBER | N |  |
| 6 | DT_CADASTRO | DATE | N |  |
| 7 | ID_USUARIO_ALTERACAO | NUMBER | Y |  |
| 8 | DT_ALTERACAO | DATE | Y |  |
| 9 | SN_ATIVO | CHAR | N |  |

---

## IDCE.RS_CEN_CENARIO
> Tabela de cenários

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_CENARIO | NUMBER | N | Id do cenário |
| 2 | ID_USUARIO_DONO | NUMBER | N | Id do usuario que criou o cenário |
| 3 | NM_CENARIO | VARCHAR2 | N | Nome do cenário |
| 4 | SN_PUBLICO | VARCHAR2 | Y | (S/N) Se o cenário é publico |
| 5 | SN_AVANCO_AUTOMATICO | VARCHAR2 | Y | (S/N) Se o cenário tem avanço automatico ativo |

---

## IDCE.RS_CEN_COLUNA
> Tabela coluna do cenario

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_CENARIO | NUMBER | N | Id do cenario |
| 2 | ID_COLUNA | NUMBER | N | Id da coluna |
| 3 | NM_IDENTIFICACAO | VARCHAR2 | N | Nome da coluna |
| 4 | TP_POSICAO | VARCHAR2 | N | Posicao da coluna |
| 5 | NM_TAMANHO | VARCHAR2 | N | Tamanho da coluna |

---

## IDCE.RS_CEN_COMPARTILHAR
> Tabela de compartilhamento de cenario

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_COMPARTILHAR | NUMBER | N | Id da tabela de compartilhamento de cenario |
| 2 | ID_CENARIO | NUMBER | N | Id do cenario compartilhado |
| 3 | ID_GRUPO | NUMBER | N | Id do grupo de usuario |
| 4 | DS_PERMISSAO | NUMBER | Y | permissao para editar o cenario compartilhado |

---

## IDCE.RS_CEN_FILTRO
> Tabela filtro do cenario

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_FILTRO | NUMBER | N | Id do filtro |
| 2 | ID_COLUNA | NUMBER | N | Id da coluna |
| 3 | ID_CENARIO | NUMBER | N | Id do Cenario |
| 4 | NM_CHAVE | VARCHAR2 | N | Nome do filtro |
| 5 | DS_VALOR | VARCHAR2 | N | Conteudo do filtro |

---

## IDCE.RS_COCKPIT_LAYOUT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_LAYOUT | NUMBER | N | Identificador do sistema |
| 2 | NM_LAYOUT | VARCHAR2 | N | Nome do layout |
| 3 | DS_LAYOUT | CLOB | Y | Json layout |
| 4 | SN_ATIVO | VARCHAR2 | N |  |

---

## IDCE.RS_COLUNA_CONFIG

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_COLUNM_SETTINGS | NUMBER | N |  |
| 2 | ID_CONF_GRID_USUARIO | NUMBER | N |  |
| 3 | SN_DISPLAY | CHAR | Y |  |
| 4 | NR_ORDER_INDEX | NUMBER | Y |  |
| 5 | DS_UNIQUE_NAME | VARCHAR2 | Y |  |
| 6 | SN_VISIBLE | CHAR | Y |  |
| 7 | NR_WIDTH | NUMBER | Y |  |
| 8 | SN_OBRIGATORIO | CHAR | Y |  |

---

## IDCE.RS_CONFIG_AUTO_CORRECAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DS_TEXTO | VARCHAR2 | Y |  |
| 2 | DS_TEXTO_SUGERIDO | VARCHAR2 | Y |  |
| 3 | ID_AUTO_CORRECAO | NUMBER | N |  |
| 4 | ID_USUARIO | NUMBER | Y |  |

---

## IDCE.RS_CONFIG_CONFIGURACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_SISTEMA | VARCHAR2 | N | Indicativo de sistema. Serve como chave primaria composta também pelo campo NOME_CONFIGURACAO\nEX... |
| 2 | NM_CONFIGURACAO | VARCHAR2 | N | Chave primaria da configuracao que é composta pelo campo SISTEMA. |
| 3 | DS_VALOR | CLOB | Y | Valor da configuração. |

---

## IDCE.RS_CONFIG_CRITICA
> Configurações gerais da critica de digitação

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CHAVE | VARCHAR2 | N | Chave da configuração |
| 2 | DS_VALOR | VARCHAR2 | Y | Valor da configuração |

---

## IDCE.RS_CONFIG_CRITICA_TEXTO
> Cadastro de trechos para criticas

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_CRITICA | NUMBER | N | Id da critica |
| 2 | TP_CRITICA | CHAR | N | Tipo de critica A - Trechos que exigem atenção S - Trechos oposto devido ao sexo O - Trechoss opo... |
| 3 | DS_TRECHO | VARCHAR2 | N | Trecho para análise da critica |
| 4 | TP_SEXO | CHAR | Y | Sexo: M - masculino F - feminino O - outros |
| 5 | DS_OPOSTO | VARCHAR2 | Y | Trecho para análise de opsição com outro trecho |

---

## IDCE.RS_CONFIG_DICIONARIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_DICIONARIO | NUMBER | N |  |
| 2 | ID_USUARIO | NUMBER | N |  |
| 3 | DS_CULTURA | VARCHAR2 | N |  |
| 4 | DS_TEXTO | VARCHAR2 | N |  |

---

## IDCE.RS_CONFIG_PREFERENCIAS_COCKPIT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_CONFIG_PREFERENCIA_COCKPIT | NUMBER | N |  |
| 2 | ID_USUARIO | NUMBER | Y |  |
| 3 | NM_COMPUTADOR | VARCHAR2 | Y |  |
| 4 | DS_IP_COMPUTADOR | VARCHAR2 | Y |  |
| 5 | DS_RESOLUCAO_MONITOR | VARCHAR2 | Y |  |
| 6 | DS_XML_PREFERENCIAS | BLOB | Y |  |

---

## IDCE.RS_CONFIG_REPORT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_REPORT | NUMBER | N |  |
| 2 | ID_USUARIO | NUMBER | N |  |
| 3 | DT_CADASTRO | DATE | Y |  |
| 4 | DT_ALTERACAO | DATE | Y |  |
| 5 | SN_ATIVO | CHAR | N |  |
| 6 | REPORT | BLOB | Y |  |
| 7 | REPORT_DEFAULT | BLOB | Y |  |
| 8 | ID_PROCEDIMENTO_UNIDADE | NUMBER | Y |  |
| 9 | NOME_RELATORIO | VARCHAR2 | Y |  |
| 10 | MARGIN_BOTTOM | NUMBER | Y |  |
| 11 | MARGIN_TOP | NUMBER | Y |  |
| 12 | MARGIN_RIGHT | NUMBER | Y |  |
| 13 | MARGIN_LEFT | NUMBER | Y |  |

---

## IDCE.RS_CONFIG_REPORT_BKP_08022021

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_REPORT | NUMBER | N |  |
| 2 | ID_USUARIO | NUMBER | N |  |
| 3 | DT_CADASTRO | DATE | Y |  |
| 4 | DT_ALTERACAO | DATE | Y |  |
| 5 | SN_ATIVO | CHAR | N |  |
| 6 | REPORT | BLOB | Y |  |
| 7 | REPORT_DEFAULT | BLOB | Y |  |
| 8 | ID_PROCEDIMENTO_UNIDADE | NUMBER | Y |  |
| 9 | NOME_RELATORIO | VARCHAR2 | Y |  |

---

## IDCE.RS_CONF_ABA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_CONF_ABA | NUMBER | N |  |
| 2 | ID_CONF_ABA_USUARIO | NUMBER | Y |  |
| 3 | NM_ABA | VARCHAR2 | Y |  |
| 4 | ID_PAGE_STR | VARCHAR2 | Y |  |
| 5 | NR_ORDEM | NUMBER | Y |  |
| 6 | SN_OBRIGATORIO | CHAR | Y |  |
| 7 | SN_VISIVEL | CHAR | Y |  |

---

## IDCE.RS_CONF_ABA_USUARIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_CONF_ABA_USUARIO | NUMBER | N |  |
| 2 | ID_USUARIO_UNIDADE | NUMBER | N |  |
| 3 | ID_ABA_STR | VARCHAR2 | N |  |

---

## IDCE.RS_CONF_GRID_USUARIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_CONF_GRID_USUARIO | NUMBER | N |  |
| 2 | ID_USUARIO_UNIDADE | NUMBER | N |  |
| 3 | ID_GRID_STR | VARCHAR2 | N |  |

---

## IDCE.RS_CV_CONVENIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_CONVENIO | NUMBER | N |  |
| 2 | NM_CONVENIO | VARCHAR2 | Y |  |
| 3 | NM_REDUZIDO_CONVENIO | VARCHAR2 | Y |  |
| 4 | DS_ENDERECO | VARCHAR2 | Y |  |
| 5 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 6 | DS_BAIRRO | VARCHAR2 | Y |  |
| 7 | DS_CIDADE | VARCHAR2 | Y |  |
| 8 | DS_UF | VARCHAR2 | Y |  |
| 9 | DS_CEP | VARCHAR2 | Y |  |
| 10 | DS_CPF_CNPJ | VARCHAR2 | Y |  |
| 11 | DS_CONTATO | VARCHAR2 | Y |  |
| 12 | DS_TELEFONE | VARCHAR2 | Y |  |
| 13 | DS_FAX | VARCHAR2 | Y |  |
| 14 | DS_EMAIL | VARCHAR2 | Y |  |
| 15 | SN_ATIVO | CHAR | Y |  |
| 16 | DT_CADASTRO | DATE | Y |  |
| 17 | ID_USUARIO | NUMBER | Y |  |
| 18 | DT_ALTERACAO | DATE | Y |  |

---

## IDCE.RS_CV_CONVENIO_

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_CONVENIO | NUMBER | N |  |
| 2 | NM_CONVENIO | VARCHAR2 | Y |  |
| 3 | NM_REDUZIDO_CONVENIO | VARCHAR2 | Y |  |
| 4 | DS_ENDERECO | VARCHAR2 | Y |  |
| 5 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 6 | DS_BAIRRO | VARCHAR2 | Y |  |
| 7 | DS_CIDADE | VARCHAR2 | Y |  |
| 8 | DS_UF | VARCHAR2 | Y |  |
| 9 | DS_CEP | VARCHAR2 | Y |  |
| 10 | DS_CPF_CNPJ | VARCHAR2 | Y |  |
| 11 | DS_CONTATO | VARCHAR2 | Y |  |
| 12 | DS_TELEFONE | VARCHAR2 | Y |  |
| 13 | DS_FAX | VARCHAR2 | Y |  |
| 14 | DS_EMAIL | VARCHAR2 | Y |  |
| 15 | SN_ATIVO | CHAR | Y |  |
| 16 | DT_CADASTRO | DATE | Y |  |
| 17 | ID_USUARIO | NUMBER | Y |  |
| 18 | DT_ALTERACAO | DATE | Y |  |

---

## IDCE.RS_CV_CONVENIO_UNIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_CONVENIO_UNIDADE | NUMBER | N |  |
| 2 | ID_CONVENIO | NUMBER | Y |  |
| 3 | ID_UNIDADE | NUMBER | Y |  |
| 4 | NM_CONVENIO_UNIDADE | VARCHAR2 | Y |  |
| 5 | NM_REDUZIDO_CONVENIO | VARCHAR2 | Y |  |
| 6 | DS_ENDERECO | VARCHAR2 | Y |  |
| 7 | DS_BAIRRO | VARCHAR2 | Y |  |
| 8 | DS_CIDADE | VARCHAR2 | Y |  |
| 9 | DS_UF | VARCHAR2 | Y |  |
| 10 | DS_CEP | VARCHAR2 | Y |  |
| 11 | DS_CPF_CNPJ | VARCHAR2 | Y |  |
| 12 | DS_CONTATO | VARCHAR2 | Y |  |
| 13 | DS_TELEFONE | VARCHAR2 | Y |  |
| 14 | DS_FAX | VARCHAR2 | Y |  |
| 15 | DS_EMAIL | VARCHAR2 | Y |  |
| 16 | CD_CONVENIO_HIS | VARCHAR2 | Y |  |
| 17 | ID_USUARIO | NUMBER | Y |  |
| 18 | DT_CADASTRO | DATE | Y |  |
| 19 | DT_ALTERACAO | DATE | Y |  |
| 20 | ID_INTERBASE | NUMBER | Y |  |
| 21 | SN_PARCEIRO | CHAR | Y |  |
| 22 | SN_ATIVO | CHAR | N | (S/N) ATIVO |

---

## IDCE.RS_CV_CON_UNIDADE_01192020

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_CONVENIO_UNIDADE | NUMBER | N |  |
| 2 | ID_CONVENIO | NUMBER | Y |  |
| 3 | ID_UNIDADE | NUMBER | Y |  |
| 4 | NM_CONVENIO_UNIDADE | VARCHAR2 | Y |  |
| 5 | NM_REDUZIDO_CONVENIO | VARCHAR2 | Y |  |
| 6 | DS_ENDERECO | VARCHAR2 | Y |  |
| 7 | DS_BAIRRO | VARCHAR2 | Y |  |
| 8 | DS_CIDADE | VARCHAR2 | Y |  |
| 9 | DS_UF | VARCHAR2 | Y |  |
| 10 | DS_CEP | VARCHAR2 | Y |  |
| 11 | DS_CPF_CNPJ | VARCHAR2 | Y |  |
| 12 | DS_CONTATO | VARCHAR2 | Y |  |
| 13 | DS_TELEFONE | VARCHAR2 | Y |  |
| 14 | DS_FAX | VARCHAR2 | Y |  |
| 15 | DS_EMAIL | VARCHAR2 | Y |  |
| 16 | CD_CONVENIO_HIS | VARCHAR2 | Y |  |
| 17 | ID_USUARIO | NUMBER | Y |  |
| 18 | DT_CADASTRO | DATE | Y |  |
| 19 | DT_ALTERACAO | DATE | Y |  |
| 20 | ID_INTERBASE | NUMBER | Y |  |
| 21 | SN_PARCEIRO | CHAR | Y |  |

---

## IDCE.RS_DG_DIAGNOSTICO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_DIAGNOSTICO | NUMBER | N |  |
| 2 | NM_DIAGNOSTICO | VARCHAR2 | Y |  |
| 3 | DS_DIAGNOSTICO | VARCHAR2 | Y |  |
| 4 | CD_CID | VARCHAR2 | Y |  |
| 5 | SN_ATIVO | CHAR | Y |  |
| 6 | DT_CADASTRO | DATE | N |  |
| 7 | DT_ALTERACAO | DATE | Y |  |
| 8 | ID_USUARIO | NUMBER | Y |  |
| 9 | ID_INTERBASE | NUMBER | Y |  |

---

## IDCE.RS_DG_TIPO_DIAGNOSTICO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_TIPO_DIAGNOSTICO | NUMBER | N |  |
| 2 | NM_TIPO_DIAGNOSTICO | VARCHAR2 | Y |  |
| 3 | DS_TIPO_DIAGNOSTICO | VARCHAR2 | Y |  |
| 4 | DT_CADASTRO | DATE | N |  |
| 5 | DT_ALTERACAO | DATE | Y |  |
| 6 | ID_USUARIO | NUMBER | Y |  |
| 7 | SN_ATIVO | CHAR | N | (S/N) ATIVO |

---

## IDCE.RS_EMAIL_ACHADOS_CRITICOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EMAIL_ACRITICO | NUMBER | N |  |
| 2 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 3 | DT_CADASTRO | DATE | N |  |
| 4 | TP_STATUS | CHAR | N | Tipo Status A = Aguardando, T = Tranferido, E = Erro |
| 5 | DS_STATUS | VARCHAR2 | Y |  |
| 6 | DT_STATUS | DATE | Y |  |
| 7 | ID_PROCEDIMENTO_UN | NUMBER | N |  |

---

## IDCE.RS_EXA_ACORDO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_ACORDO | NUMBER | N |  |
| 2 | NM_ACORDO | VARCHAR2 | Y |  |
| 3 | DS_TEXTO | CLOB | Y |  |
| 4 | ID_EXAME_UNIDADE | NUMBER | Y |  |
| 5 | ID_SETOR_SOLICITANTE | NUMBER | Y |  |
| 6 | ID_SETOR_EXECUTANTE | NUMBER | Y |  |
| 7 | SN_CONTAGEM | CHAR | Y |  |
| 8 | DT_CADASTRO | DATE | Y |  |
| 9 | DT_ALTERACAO | DATE | Y |  |

---

## IDCE.RS_EXA_ACORDO_ALERTA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_ACORDO_ALERTA | NUMBER | N |  |
| 2 | ID_ACORDO | NUMBER | Y |  |
| 3 | CD_CLASSIFICACAO | NUMBER | Y |  |
| 4 | CD_ALERTA | NUMBER | Y |  |
| 5 | SN_TEMPO_MAXIMO | CHAR | Y |  |
| 6 | DT_CADASTRO | DATE | Y |  |
| 7 | DT_ALTERACAO | DATE | Y |  |
| 8 | SN_ATIVO | CHAR | Y |  |
| 9 | NM_ALERTA | VARCHAR2 | Y |  |
| 10 | CD_RISCO | NUMBER | Y |  |
| 11 | CD_RISCO_ANT | NUMBER | Y | Codigo Do Risco anterior a correção do sistema |

---

## IDCE.RS_EXA_EQUIPAMENTOS
> Tabela de cadastro de equipamentos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EQUIPAMENTO | NUMBER | N | Identificador do equipamento |
| 2 | ID_UNIDADE | NUMBER | N | Identificador da unidade do equipamento |
| 3 | NM_EQUIPAMENTO | VARCHAR2 | N | Nome do equipamento |
| 4 | DT_CALIBRAGEM | DATE | N | Última data em que o equipamento foi calibrado |
| 5 | SN_ATIVO | CHAR | N | Status ativo do equipamento. S-Sim, N-Não |
| 6 | ID_USUARIO_CADASTRO | NUMBER | N | Identificador do usuário que cadastrou o equipamento |
| 7 | DT_CADASTRO | DATE | N | Data de inserção do equipamento na tabela |
| 8 | ID_USUARIO_ALTERACAO | NUMBER | Y | Identificador do último usuário a alterar o cadastro do equipamento |
| 9 | DT_ALTERACAO | DATE | Y | Data da última alteração do equipamento na tabela |

---

## IDCE.RS_EXA_EXAME

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME | NUMBER | N |  |
| 2 | NM_EXAME | VARCHAR2 | Y |  |
| 3 | CD_CBHPM | VARCHAR2 | Y |  |
| 4 | NM_CBHPM | VARCHAR2 | Y |  |
| 5 | ID_TIPO_EXAME | NUMBER | Y |  |
| 6 | NR_TEMPO_MEDIO | NUMBER | Y |  |
| 7 | DS_TEXTO_LAUDO_PADRAO | CLOB | Y |  |
| 8 | DS_PREPARO | VARCHAR2 | Y |  |
| 9 | NR_PRAZO_ENTREGA | NUMBER | Y |  |
| 10 | SN_AGRUPAR_LAUDO | CHAR | Y |  |
| 11 | SN_AGRUPAR_IMAGEM | CHAR | Y |  |
| 12 | DS_RESTRICAO | VARCHAR2 | Y |  |
| 13 | DT_CADASTRO | DATE | N |  |
| 14 | DT_ALTERACAO | DATE | Y |  |
| 15 | ID_USUARIO | NUMBER | Y |  |
| 16 | ID_SISTEMA | NUMBER | Y |  |
| 17 | DS_PROTOCOLO_MEDICO | CLOB | Y |  |
| 18 | DS_PROTOCOLO_TECNICO | CLOB | Y |  |
| 19 | DS_TEXTO_EXAME_2 | CLOB | Y |  |
| 20 | SISMED | NUMBER | Y |  |
| 21 | CORPORATIVO | VARCHAR2 | Y |  |
| 22 | SN_CALC_GESTACIONAL | CHAR | Y |  |
| 23 | SN_ATIVO | CHAR | N | (S/N) ATIVO |

---

## IDCE.RS_EXA_EXAME_ORIGEM_ATEND

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME_UNIDADE | NUMBER | N |  |
| 2 | ID_ORIGEM_ATENDIMENTO | NUMBER | N |  |
| 3 | NR_PRAZO_ENTREGA | NUMBER | Y |  |
| 4 | ID_USUARIO | NUMBER | Y |  |
| 5 | DT_CADASTRO | DATE | Y |  |
| 6 | DT_ALTERACAO | DATE | Y |  |
| 7 | TP_FIM_SEMANA | CHAR | Y | TIPOS PARA CALCULAR PRAZO ENTREGA (S = SIM, N = NÃO, P = PADRAO) |

---

## IDCE.RS_EXA_EXAME_SISMED

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME | NUMBER | N |  |
| 2 | NM_EXAME | VARCHAR2 | Y |  |
| 3 | CD_CBHPM | VARCHAR2 | Y |  |
| 4 | NM_CBHPM | VARCHAR2 | Y |  |
| 5 | ID_TIPO_EXAME | NUMBER | Y |  |
| 6 | NR_TEMPO_MEDIO | NUMBER | Y |  |
| 7 | DS_TEXTO_LAUDO_PADRAO | CLOB | Y |  |
| 8 | DS_PREPARO | VARCHAR2 | Y |  |
| 9 | NR_PRAZO_ENTREGA | NUMBER | Y |  |
| 10 | SN_AGRUPAR_LAUDO | CHAR | Y |  |
| 11 | SN_AGRUPAR_IMAGEM | CHAR | Y |  |
| 12 | DS_RESTRICAO | VARCHAR2 | Y |  |
| 13 | DT_CADASTRO | DATE | N |  |
| 14 | DT_ALTERACAO | DATE | Y |  |
| 15 | ID_USUARIO | NUMBER | Y |  |
| 16 | ID_SISTEMA | NUMBER | Y |  |
| 17 | DS_TEXTO_EXAME_2 | CLOB | Y |  |
| 18 | DS_PROTOCOLO_MEDICO | CLOB | Y |  |
| 19 | DS_PROTOCOLO_TECNICO | CLOB | Y |  |
| 20 | SISMED | NUMBER | Y |  |

---

## IDCE.RS_EXA_EXAME_TEXTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EXAME_TEXTO | VARCHAR2 | N |  |
| 2 | ID_EXAME_TEXTO_EXAME | NUMBER | N |  |
| 3 | DT_CADASTRO | DATE | Y |  |
| 4 | DT_ALTERACAO | DATE | Y |  |
| 5 | ID_USUARIO | NUMBER | Y |  |
| 6 | ID_TEXTO_EXAME | NUMBER | Y |  |
| 7 | ID_GRUPO_EXAME | NUMBER | Y |  |
| 8 | ID_EXAME_UNIDADE | NUMBER | Y |  |

---

## IDCE.RS_EXA_EXAME_UNIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME_UNIDADE | NUMBER | N |  |
| 2 | ID_EXAME | NUMBER | Y |  |
| 3 | NM_EXAME_UNIDADE | VARCHAR2 | Y |  |
| 4 | CD_EXAME_HIS | VARCHAR2 | Y |  |
| 5 | NM_EXAME_HIS | VARCHAR2 | Y |  |
| 6 | DT_CADASTRO | DATE | Y |  |
| 7 | ID_UNIDADE | NUMBER | Y |  |
| 8 | NM_CBHPM | VARCHAR2 | Y |  |
| 9 | CD_CBHPM | VARCHAR2 | Y |  |
| 10 | NR_TEMPO_MEDIO | NUMBER | Y |  |
| 11 | DS_TEXTO_LAUDO_PADRAO | CLOB | Y |  |
| 12 | DS_PREPARO | VARCHAR2 | Y |  |
| 13 | DS_RESTRICAO | VARCHAR2 | Y |  |
| 14 | NR_PRAZO_ENTREGA | NUMBER | Y |  |
| 15 | SN_AGRUPAR_LAUDO | CHAR | Y |  |
| 16 | SN_AGRUPAR_IMAGEM | CHAR | Y |  |
| 17 | ID_USUARIO | NUMBER | Y |  |
| 18 | DT_ALTERACAO | DATE | Y |  |
| 19 | ID_INTERBASE | NUMBER | Y |  |
| 20 | DS_PROTOCOLO_MEDICO | CLOB | Y |  |
| 21 | DS_PROTOCOLO_TECNICO | CLOB | Y |  |
| 22 | DS_TEXTO_EXAME_2 | CLOB | Y |  |
| 23 | DS_PATH_RELATORIO_ANAMNESE | VARCHAR2 | Y |  |
| 24 | NR_DIAS_EXPIRAR_ACAO_LAUDAR | NUMBER | N | Quantidade de dias para expirar a ação de laudar do exame |
| 25 | VL_EXAME | NUMBER | Y |  |
| 26 | VL_EXAME_PLANTAO | NUMBER | Y |  |
| 27 | VL_EXAME_TELE | NUMBER | Y |  |
| 28 | SN_ATIVO | CHAR | N | (S/N) ATIVO |
| 29 | CD_EXAME_LAUDO_ESTRUTURADO | VARCHAR2 | Y | Codigo Do Exame No Laudo Estruturado |
| 30 | SN_EXIGIR_PIRADS | CHAR | Y | (S/N) EXIGIR PREENCHIMENTO DO PIRADS |
| 31 | SN_EXIGIR_BIRADS | CHAR | Y | (S/N) EXIGIR PREENCHIMENTO DO BIRADS |
| 32 | SN_EXIGIR_PREENCHIMENTO_BIRADS | CHAR | Y | (S/N) EXIGIR PREENCHIMENTO DO BIRADS SOMENTE NA CONCLUSÃO DO EXAME |
| 33 | SN_EXIGIR_LIRADS | CHAR | Y | (S/N) EXIGIR PREENCHIMENTO DO LIRADS |
| 34 | SN_EXIGIR_TIRADS | CHAR | Y | (S/N) EXIGIR PREENCHIMENTO DO TIRADS |

---

## IDCE.RS_EXA_EXAME_UNIDADE_ENDOSCOP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME_UNIDADE_ENDOSCOP | NUMBER | N |  |
| 2 | ID_EXAME_UNIDADE | NUMBER | N |  |
| 3 | NM_SEGMENTO | VARCHAR2 | N |  |

---

## IDCE.RS_EXA_EXAME_UNIDADE_FORMULA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_FORMULA | NUMBER | N |  |
| 2 | NR_ORDENACAO | NUMBER | N |  |
| 3 | DS_TEXTO_FORMULA | VARCHAR2 | Y |  |
| 4 | DS_VALOR_REFERENCIA | VARCHAR2 | Y |  |
| 5 | DS_VALOR_REFERENCIA_INICIAL | NUMBER | Y |  |
| 6 | DS_VALOR_REFERENCIA_FINAL | NUMBER | Y |  |
| 7 | CD_UNIDADE_MEDIDA | VARCHAR2 | Y |  |
| 8 | CD_TIPO_CAMPO_FORMULA | VARCHAR2 | Y |  |
| 9 | CD_FORMULA | VARCHAR2 | Y |  |
| 10 | DS_FORMULA | VARCHAR2 | Y |  |
| 11 | ID_USUARIO | NUMBER | N |  |
| 12 | DT_CADASTRO | DATE | N |  |
| 13 | DT_ALTERACAO | DATE | Y |  |
| 14 | ID_EXAME_UNIDADE | NUMBER | N |  |
| 15 | SN_IMPRESSAO | CHAR | N |  |
| 16 | ID_EXAME_UNIDADE_TEMPLATE | NUMBER | Y |  |

---

## IDCE.RS_EXA_EXAME_UNIDADE_TEMPLATE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME_UNIDADE_TEMPLATE | NUMBER | N |  |
| 2 | ID_EXAME_UNIDADE | NUMBER | Y |  |
| 3 | NM_TEMPLATE | VARCHAR2 | Y |  |

---

## IDCE.RS_EXA_GRUPO_EXAME

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_GRUPO_EXAME | NUMBER | N |  |
| 2 | NM_GRUPO_EXAME | VARCHAR2 | Y |  |
| 3 | DS_GRUPO_EXAME | VARCHAR2 | Y |  |
| 4 | SN_ATIVO | CHAR | Y |  |
| 5 | DT_CADASTRO | DATE | Y |  |
| 6 | DT_ALTERACAO | DATE | Y |  |
| 7 | ID_USUARIO | NUMBER | Y |  |
| 8 | ID_INTERBASE | NUMBER | Y |  |

---

## IDCE.RS_EXA_MEDICO_ESPECIALIDADES

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_MEDICO_ESPECIALIDADE | NUMBER | N |  |
| 2 | ID_MEDICO | NUMBER | N |  |
| 3 | ID_SISTEMA | NUMBER | N |  |

---

## IDCE.RS_EXA_MODALIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_MODALIDADE | NUMBER | N |  |
| 2 | NM_MODALIDADE | VARCHAR2 | Y |  |
| 3 | CD_MODALIDADE | VARCHAR2 | Y |  |
| 4 | DS_MODALIDADE | VARCHAR2 | Y |  |
| 5 | DT_ALTERACAO | DATE | Y |  |
| 6 | ID_USUARIO | NUMBER | Y |  |
| 7 | DT_CADASTRO | DATE | N |  |
| 8 | SN_ATIVO | CHAR | N | (S/N) ATIVO |

---

## IDCE.RS_EXA_PROCEDIMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_PROCEDIMENTO | NUMBER | N |  |
| 2 | NM_PROCEDIMENTO | VARCHAR2 | Y |  |
| 3 | ID_MODALIDADE | NUMBER | Y |  |
| 4 | DS_PROCEDIMENTO | VARCHAR2 | Y |  |
| 5 | SN_REVISAO_AUTOMATICA | CHAR | Y |  |
| 6 | SN_DICOM | CHAR | Y |  |
| 7 | DS_LAYOUT_IMPRESSAO | VARCHAR2 | Y |  |
| 8 | SN_EXECUTANTE_REVISOR | CHAR | Y |  |
| 9 | SN_LAUDO_LOTE_PENDENTE | CHAR | Y |  |
| 10 | SN_ENTREGA_LAUDO_CD | CHAR | Y |  |
| 11 | SN_IMPRESSAO_LAUDO_ENTREGA | CHAR | Y |  |
| 12 | SN_LIBERAR_LOTE_LAUDO_REV_PEND | CHAR | Y |  |
| 13 | SN_TEXTO_PADRAO_AUTOMATICO | CHAR | Y |  |
| 14 | SN_JUSTIFICATIVA_LAUDO | CHAR | Y |  |
| 15 | SN_ENDOSCOPIA | CHAR | Y |  |
| 16 | ID_USUARIO | NUMBER | Y |  |
| 17 | DT_CADASTRO | DATE | N |  |
| 18 | DT_ALTERACAO | DATE | Y |  |
| 19 | ID_LIBERAR_IMPRESSAO | NUMBER | Y |  |
| 20 | NR_LINHAS | NUMBER | Y |  |
| 21 | NR_COLUNAS | NUMBER | Y |  |
| 22 | SN_EXIGIR_JUST_LAU_SEM_IMG | CHAR | N |  |
| 23 | SN_REGRA_DISTRIBUICAO | CHAR | Y |  |
| 24 | SN_EXIGIR_PARECER | CHAR | Y | (S/N) EXIGIR PARECER |
| 25 | SN_ATIVO | CHAR | N | (S/N) ATIVO |

---

## IDCE.RS_EXA_PROCEDIMENTO_UNIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_PROCEDIMENTO_UNIDADE | NUMBER | N |  |
| 2 | ID_UNIDADE | NUMBER | Y |  |
| 3 | ID_PROCEDIMENTO | NUMBER | Y |  |
| 4 | CD_PROCEDIMENTO_HIS | VARCHAR2 | Y |  |
| 5 | DS_LAYOUT_IMPRESSAO | VARCHAR2 | Y |  |
| 6 | ID_MEDICO_PADRAO | NUMBER | Y |  |
| 7 | ID_SALA | NUMBER | Y |  |
| 8 | SN_REVISAO_AUTOMATICA | CHAR | Y |  |
| 9 | SN_DICOM | CHAR | Y |  |
| 10 | SN_EXECUTANTE_REVISOR | CHAR | Y |  |
| 11 | SN_LAUDO_LOTE_PENDENTE | CHAR | Y |  |
| 12 | SN_ENTREGA_LAUDO_CD | CHAR | Y |  |
| 13 | SN_IMPRESSAO_LAUDO_ENTREGA | CHAR | Y |  |
| 14 | SN_LIBERAR_LOTE_LAUDO_REV_PEND | CHAR | Y |  |
| 15 | SN_TEXTO_PADRAO_AUTOMATICO | CHAR | Y |  |
| 16 | SN_JUSTIFICATIVA_LAUDO | CHAR | Y |  |
| 17 | SN_ENDOSCOPIA | CHAR | Y |  |
| 18 | ID_USUARIO | NUMBER | Y |  |
| 19 | DT_CADASTRO | DATE | N |  |
| 20 | DT_ALTERACAO | DATE | Y |  |
| 21 | ID_INTERBASE | NUMBER | Y |  |
| 22 | SN_INTEGRA | CHAR | Y |  |
| 23 | ID_LIBERAR_IMPRESSAO | NUMBER | Y |  |
| 24 | DS_PATH_RELATORIO_ANAMNESE | VARCHAR2 | Y |  |
| 25 | ID_REPORT | NUMBER | Y |  |
| 26 | CD_TIPO_VIEWER | NUMBER | Y |  |
| 27 | DS_PATH_RELATORIO_FORMULA | VARCHAR2 | Y |  |
| 28 | SN_EXIGIR_JUST_LAU_SEM_IMG | CHAR | N |  |
| 29 | SN_REGRA_DISTRIBUICAO | CHAR | N |  |
| 30 | VL_PROCEDIMENTO | NUMBER | Y |  |
| 31 | SN_EXIGIR_JUSTIF_SECUNDARIA | CHAR | N |  |
| 32 | SN_EXIGIR_PIRADS | CHAR | N |  |
| 33 | SN_EXIGIR_BIRADS | CHAR | Y |  |
| 34 | SN_EXIGIR_TIRADS | CHAR | Y |  |
| 35 | SN_EXIGIR_FINALIZACAO_EXAME | CHAR | N |  |
| 36 | DS_LAYOUT_ETIQUETA | VARCHAR2 | Y |  |
| 37 | SN_EXIGIR_LIRADS | CHAR | Y | (S/N) Exigir Preenchimento do LIRADS |
| 38 | SN_EXIGIR_PREENCHIMENTO_BIRADS | CHAR | Y | (S/N) Exigir preenchimento do BIRADS apenas na ação Laudar/Revisar |
| 39 | SN_ENTREGA_IMG_S_L_ASSINADO | CHAR | Y | (S/N) Permite entragar imagem sem laudo assinado |
| 40 | DS_EMAILS_ACHADOS_CRITICOS | VARCHAR2 | Y | Lista de emails para envio dos achados críticos |
| 41 | DS_ASSUNTO_EMAIL | VARCHAR2 | Y | Assunto email automático achados críticos |
| 42 | DS_MENSAGEM_EMAIL | CLOB | Y | Corpo do email automático achados críticos |
| 43 | SN_COMENTARIO | VARCHAR2 | Y | Descrição do comentário realizado no exame |
| 44 | SN_EXIGIR_SEG_JUS_EXA_SEC_PAR | CHAR | N | (S/N) Exigir segunda justificativa do exame secundário no parecer |
| 45 | SN_EXIGIR_SEG_JUS_EXA_SEC_LAU | CHAR | N | (S/N) Exigir segunda justificativa do exame secundário ao Laudar |
| 46 | SN_EXIGIR_SEG_JUS_EXA_SEC_LR | CHAR | N | (S/N) Exigir segunda justificativa do exame secundário ao Laudar/Revisar |
| 47 | SN_BLOQUEAR_LAUDO_EXAME_PAC | CHAR | N | Bloquear ações no laudo para exames de paciente com alta |
| 48 | SN_ATIVO | CHAR | N | (S/N) ATIVO |
| 49 | SN_IMPRES_ENTREG_IMG_SEM_LAUDO | CHAR | N | Permitir a impressão e entrega da imagem sem laudo assinado |
| 50 | SN_EXIGIR_AUDIOMETRIA | CHAR | N |  |
| 51 | SN_EXIGIR_IMITANCIOMETRIA | CHAR | N |  |
| 52 | SN_USAR_LAUDO_OIT | VARCHAR2 | Y | Especifica se o procedimento usará o formulário de radiologia padrão OIT |
| 53 | SN_EXIGIR_FLEBOGRAMA | VARCHAR2 | Y | Especifica se o procedimento exigira o preenchimento do flebograma |

---

## IDCE.RS_EXA_PROCEDIMENTO_UN_ACHADOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_ACHADO | NUMBER | N |  |
| 2 | ID_PROCEDIMENTO_UNIDADE | NUMBER | N |  |
| 3 | NM_ACHADO | VARCHAR2 | N |  |
| 4 | DT_CADASTRO | DATE | N |  |
| 5 | DT_ALTERACAO | DATE | Y |  |
| 6 | ID_USUARIO | NUMBER | N |  |

---

## IDCE.RS_EXA_PROCED_ORIGEM_ATEND

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_PROCEDIMENTO_UNIDADE | NUMBER | N |  |
| 2 | ID_ORIGEM_ATENDIMENTO | NUMBER | N |  |
| 3 | NR_PRAZO_ENTREGA | NUMBER | Y |  |
| 4 | ID_USUARIO | NUMBER | Y |  |
| 5 | DT_CADASTRO | DATE | Y |  |
| 6 | DT_ALTERACAO | DATE | Y |  |
| 7 | TP_FIM_SEMANA | CHAR | Y | TIPOS PARA CALCULAR PRAZO ENTREGA (S = SIM, N = NÃO, P = PADRAO) |

---

## IDCE.RS_EXA_PROCED_UNI_BLOQUEIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_PROCEDIMENTO_UNI_BLOQUEIO | NUMBER | N | Id do procedimento unidade bloqueio |
| 2 | ID_PROCEDIMENTO_UNIDADE | NUMBER | N | Id do procedimento na unidade |
| 3 | ID_ORIGEM_ATENDIMENTO | NUMBER | N | Id da origem de atendimento |

---

## IDCE.RS_EXA_PROCED_UNI_JUST_REV

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_PROCED_UNI_JUST_REV | NUMBER | N |  |
| 2 | ID_PROCEDIMENTO_UNIDADE | NUMBER | N |  |
| 3 | ID_ORIGEM_ATENDIMENTO | NUMBER | N |  |

---

## IDCE.RS_EXA_SISTEMAS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_SISTEMA | NUMBER | N |  |
| 2 | NM_SISTEMA | VARCHAR2 | Y |  |
| 3 | DS_SISTEMA | VARCHAR2 | Y |  |
| 4 | SN_ATIVO | CHAR | Y |  |
| 5 | ID_USUARIO | NUMBER | Y |  |
| 6 | DT_CADASTRO | DATE | Y |  |
| 7 | DT_ALTERACAO | DATE | Y |  |
| 8 | ID_INTERBASE | NUMBER | Y |  |

---

## IDCE.RS_EXA_TEXTOS_EXAME

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_TEXTO_EXAME | NUMBER | N |  |
| 2 | NM_TEXTO_EXAME | VARCHAR2 | Y |  |
| 3 | DS_TEXTO_EXAME | CLOB | Y |  |
| 4 | DT_CADASTRO | DATE | Y |  |
| 5 | DT_ALTERACAO | DATE | Y |  |
| 6 | ID_USUARIO | NUMBER | Y |  |
| 7 | ID_INTERBASE | NUMBER | Y |  |
| 8 | DS_TEXTO_EXAME_2 | CLOB | Y |  |
| 9 | ID_USUARIO_PROP | NUMBER | Y |  |
| 10 | SN_TEXTO_EXAME_VINCULADO | CHAR | N | S/N Possui autotexto vinculado |
| 11 | TP_MODO_INSERCAO | VARCHAR2 | Y | Tipo do modo de inserção do autotexto no editor |
| 12 | DS_POSICAO_INSERCAO | VARCHAR2 | Y | Descrição da palavra ou frase a ser localizada no editor para inserir o autotexto |
| 13 | DS_TEXTO_EXAME_TXT | CLOB | Y | Descricao do texto exame em texto plano |

---

## IDCE.RS_EXA_TEXTOS_EXAME2

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_TEXTO_EXAME | NUMBER | Y |  |
| 2 | NM_TEXTO_EXAME | VARCHAR2 | Y |  |
| 3 | PARTE1 | VARCHAR2 | Y |  |
| 4 | PARTE2 | VARCHAR2 | Y |  |
| 5 | PARTE3 | VARCHAR2 | Y |  |

---

## IDCE.RS_EXA_TEXTOS_EXAME_DMP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_TEXTO_EXAME | NUMBER | N |  |
| 2 | NM_TEXTO_EXAME | VARCHAR2 | Y |  |
| 3 | DS_TEXTO_EXAME | CLOB | Y |  |
| 4 | DT_CADASTRO | DATE | Y |  |
| 5 | DT_ALTERACAO | DATE | Y |  |
| 6 | ID_USUARIO | NUMBER | Y |  |
| 7 | ID_INTERBASE | NUMBER | Y |  |
| 8 | DS_TEXTO_EXAME_2 | CLOB | Y |  |

---

## IDCE.RS_EXA_TEXTOS_EXAME_PP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_TEXTO_EXAME | NUMBER | Y |  |
| 2 | NM_TEXTO_EXAME | VARCHAR2 | Y |  |
| 3 | DS_TEXTO_EXAME | CLOB | Y |  |
| 4 | DT_CADASTRO | DATE | Y |  |
| 5 | DT_ALTERACAO | DATE | Y |  |
| 6 | ID_USUARIO | NUMBER | Y |  |
| 7 | ID_INTERBASE | NUMBER | Y |  |
| 8 | DS_TEXTO_EXAME_2 | CLOB | Y |  |

---

## IDCE.RS_EXA_TEXTOS_EXAME_VINCULADO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_TEXTO_EXAME_VINCULADO | NUMBER | N | Indicador do texto exame vinculado |
| 2 | ID_TEXTO_EXAME | NUMBER | N | Indicador do texto |
| 3 | ID_TEXTO_VINCULADO | NUMBER | N | Indicador do texto vinculado |
| 4 | NR_ORDENACAO | NUMBER | N | Ordenacao do texto vinculado |

---

## IDCE.RS_EXA_TIPO_CAMPO_FORMULA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_TIPO_CAMPO_FORMULA | NUMBER | N |  |
| 2 | CD_TIPO_CAMPO_FORMULA | VARCHAR2 | Y |  |
| 3 | DS_TIPO_CAMPO_FORMULA | VARCHAR2 | Y |  |

---

## IDCE.RS_EXA_TIPO_EXAME

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_TIPO_EXAME | NUMBER | N |  |
| 2 | NM_TIPO_EXAME | VARCHAR2 | Y |  |
| 3 | DS_TIPO_EXAME | VARCHAR2 | Y |  |
| 4 | DT_CADASTRO | DATE | N |  |
| 5 | DT_ALTERACAO | DATE | Y |  |
| 6 | ID_USUARIO | NUMBER | Y |  |
| 7 | ID_PROCEDIMENTO | NUMBER | Y |  |
| 8 | ID_INTERBASE | NUMBER | Y |  |
| 9 | SN_ATIVO | CHAR | N | (S/N) ATIVO |

---

## IDCE.RS_INTEGRACAO_IDCE_PORTAL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GUID_CHAVE | VARCHAR2 | N |  |
| 2 | DT_EXPIRACAO | DATE | Y |  |

---

## IDCE.RS_INTEGRACAO_SLINE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_INTEGRACAO_SLINE | NUMBER | N |  |
| 2 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 3 | DT_ENVIO | DATE | N |  |
| 4 | DS_XML_ENVIADO | CLOB | N |  |

---

## IDCE.RS_INTEGRA_CONEXAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_INTEGRA_CONEXAO | NUMBER | N |  |
| 2 | NM_CONEXAO | VARCHAR2 | N |  |
| 3 | CD_CONEXAO | VARCHAR2 | N |  |
| 4 | DS_HASHMAC | VARCHAR2 | Y |  |
| 5 | ID_FORNECEDOR | NUMBER | N |  |
| 6 | ID_USUARIO | NUMBER | N |  |
| 7 | DT_CADASTRO | DATE | N |  |
| 8 | DT_ALTERACAO | DATE | Y |  |

---

## IDCE.RS_INTEGRA_ENTRADA_CV_CONVENIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_INTEGRA_ENTRADA_CV_CONVENIO | NUMBER | N |  |
| 2 | DT_CADASTRO | DATE | Y |  |
| 3 | TP_MOVIMENTO | VARCHAR2 | N |  |
| 4 | TP_REGISTRO | VARCHAR2 | N |  |
| 5 | TP_INTEGRACAO | VARCHAR2 | N |  |
| 6 | DT_INTEGRACAO | DATE | Y |  |
| 7 | DS_ERRO | VARCHAR2 | Y |  |
| 8 | CD_UNIDADE | VARCHAR2 | N |  |
| 9 | CD_CONVENIO | VARCHAR2 | N |  |
| 10 | NM_CONVENIO | VARCHAR2 | N |  |
| 11 | DS_ENDERECO | VARCHAR2 | Y |  |
| 12 | DS_BAIRRO | VARCHAR2 | Y |  |
| 13 | DS_CIDADE | VARCHAR2 | Y |  |
| 14 | DS_UF | VARCHAR2 | Y |  |
| 15 | DS_CEP | VARCHAR2 | Y |  |
| 16 | DS_TELEFONE | VARCHAR2 | Y |  |
| 17 | DS_FAX | VARCHAR2 | Y |  |
| 18 | DS_CPF_CNPJ | VARCHAR2 | Y |  |
| 19 | DS_EMAIL | VARCHAR2 | Y |  |
| 20 | ID_FORNECEDOR | NUMBER | N |  |

---

## IDCE.RS_INTEGRA_ENTRADA_EXA_EXAME

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_INTEGRA_ENTRADA_EXA_EXAME | NUMBER | N |  |
| 2 | DT_CADASTRO | DATE | Y |  |
| 3 | TP_MOVIMENTO | VARCHAR2 | N |  |
| 4 | TP_REGISTRO | VARCHAR2 | N |  |
| 5 | TP_INTEGRACAO | VARCHAR2 | N |  |
| 6 | DT_INTEGRACAO | DATE | Y |  |
| 7 | DS_ERRO | VARCHAR2 | Y |  |
| 8 | CD_UNIDADE | VARCHAR2 | N |  |
| 9 | CD_EXAME | VARCHAR2 | N |  |
| 10 | NM_EXAME | VARCHAR2 | N |  |
| 11 | NM_CBHPM | VARCHAR2 | Y |  |
| 12 | CD_CBHPM | VARCHAR2 | Y |  |
| 13 | ID_FORNECEDOR | NUMBER | N |  |

---

## IDCE.RS_INTEGRA_ENTRADA_MD_MEDICO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_INTEGRA_ENTRADA_MD_MEDICO | NUMBER | N |  |
| 2 | DT_CADASTRO | DATE | N |  |
| 3 | TP_MOVIMENTO | VARCHAR2 | N |  |
| 4 | TP_REGISTRO | VARCHAR2 | N |  |
| 5 | TP_INTEGRACAO | VARCHAR2 | N |  |
| 6 | DT_INTEGRACAO | DATE | Y |  |
| 7 | DS_ERRO | VARCHAR2 | Y |  |
| 8 | CD_UNIDADE | VARCHAR2 | N |  |
| 9 | CD_MEDICO | VARCHAR2 | N |  |
| 10 | NM_MEDICO | VARCHAR2 | N |  |
| 11 | TP_MEDICO | VARCHAR2 | N |  |
| 12 | DT_NASCIMENTO | DATE | Y |  |
| 13 | DS_CPF_CNPJ | VARCHAR2 | Y |  |
| 14 | DS_ENDERECO | VARCHAR2 | Y |  |
| 15 | DS_BAIRRO | VARCHAR2 | Y |  |
| 16 | DS_CIDADE | VARCHAR2 | Y |  |
| 17 | DS_UF | VARCHAR2 | Y |  |
| 18 | CD_CEP | VARCHAR2 | Y |  |
| 19 | DS_TELEFONE | VARCHAR2 | Y |  |
| 20 | DS_FAX | VARCHAR2 | Y |  |
| 21 | DS_EMAIL | VARCHAR2 | Y |  |
| 22 | DS_CRM | VARCHAR2 | Y |  |
| 23 | DS_UF_CRM | VARCHAR2 | Y |  |
| 24 | ID_FORNECEDOR | NUMBER | N |  |

---

## IDCE.RS_INTEGRA_ENTRADA_PC_PACIENTE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_INTEGRA_ENTRADA_PC_PACIENTE | NUMBER | N |  |
| 2 | DT_CADASTRO | DATE | N |  |
| 3 | TP_MOVIMENTO | VARCHAR2 | N |  |
| 4 | TP_REGISTRO | VARCHAR2 | N |  |
| 5 | TP_INTEGRACAO | VARCHAR2 | N |  |
| 6 | DT_INTEGRACAO | DATE | Y |  |
| 7 | DS_ERRO | VARCHAR2 | Y |  |
| 8 | CD_UNIDADE | VARCHAR2 | N |  |
| 9 | CD_PACIENTE | VARCHAR2 | Y |  |
| 10 | CD_PRONTUARIO | VARCHAR2 | N |  |
| 11 | NM_PACIENTE | VARCHAR2 | N |  |
| 12 | DT_NASCIMENTO | DATE | Y |  |
| 13 | NR_ALTURA | NUMBER | Y |  |
| 14 | NR_PESO | NUMBER | Y |  |
| 15 | TP_SEXO | CHAR | Y |  |
| 16 | DS_MATRICULA | VARCHAR2 | Y |  |
| 17 | DS_CPF_CNPJ | VARCHAR2 | Y |  |
| 18 | DS_IDENTIFICACAO | VARCHAR2 | Y |  |
| 19 | DS_ENDERECO | VARCHAR2 | Y |  |
| 20 | DS_BAIRRO | VARCHAR2 | Y |  |
| 21 | DS_UF | VARCHAR2 | Y |  |
| 22 | DS_CEP | VARCHAR2 | Y |  |
| 23 | DS_TELEFONE | VARCHAR2 | Y |  |
| 24 | DS_FAX | VARCHAR2 | Y |  |
| 25 | DS_CELULAR | VARCHAR2 | Y |  |
| 26 | DS_EMAIL | VARCHAR2 | Y |  |
| 27 | SN_EMAIL | CHAR | Y |  |
| 28 | SN_SMS | CHAR | Y |  |
| 29 | CD_CONVENIO | VARCHAR2 | Y |  |
| 30 | NM_CONVENIO | VARCHAR2 | Y |  |
| 31 | ID_FORNECEDOR | NUMBER | N |  |

---

## IDCE.RS_INTEGRA_ENTRADA_SP_SADT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_INTEGRA_ENTRADA_LAU_SADT | NUMBER | N |  |
| 2 | DT_CADASTRO | DATE | Y |  |
| 3 | TP_MOVIMENTO | VARCHAR2 | N |  |
| 4 | TP_REGISTRO | VARCHAR2 | N |  |
| 5 | TP_INTEGRACAO | VARCHAR2 | N |  |
| 6 | DT_INTEGRACAO | DATE | Y |  |
| 7 | DS_ERRO | VARCHAR2 | Y |  |
| 8 | CD_UNIDADE | VARCHAR2 | N |  |
| 9 | DT_MOVIMENTO | DATE | N |  |
| 10 | SN_URGENTE | CHAR | Y |  |
| 11 | DS_REGIAO | VARCHAR2 | Y |  |
| 12 | DS_LEITO | VARCHAR2 | Y |  |
| 13 | DS_SET_ORI | VARCHAR2 | Y |  |
| 14 | CD_ACCESS_NUMBER | VARCHAR2 | N |  |
| 15 | CD_SALA | VARCHAR2 | Y |  |
| 16 | DS_INDICACAO | VARCHAR2 | Y |  |
| 17 | DS_OBS | VARCHAR2 | Y |  |
| 18 | TP_PACIENTE | CHAR | N |  |
| 19 | CD_PACIENTE | VARCHAR2 | N |  |
| 20 | CD_PRONTUARIO | VARCHAR2 | N |  |
| 21 | NM_PACIENTE | VARCHAR2 | N |  |
| 22 | DT_NASCIMENTO_PACIENTE | DATE | Y |  |
| 23 | NR_ALTURA_PACIENTE | NUMBER | Y |  |
| 24 | NR_PESO_PACIENTE | NUMBER | Y |  |
| 25 | TP_SEXO_PACIENTE | CHAR | Y |  |
| 26 | DS_MATRICULA_PACIENTE | VARCHAR2 | Y |  |
| 27 | DS_CPF_CNPJ_PACIENTE | VARCHAR2 | Y |  |
| 28 | DS_IDENTIFICACAO_PACIENTE | VARCHAR2 | Y |  |
| 29 | DS_ENDERECO_PACIENTE | VARCHAR2 | Y |  |
| 30 | DS_BAIRRO_PACIENTE | VARCHAR2 | Y |  |
| 31 | DS_UF_PACIENTE | VARCHAR2 | Y |  |
| 32 | DS_CEP_PACIENTE | VARCHAR2 | Y |  |
| 33 | DS_TELEFONE_PACIENTE | VARCHAR2 | Y |  |
| 34 | DS_FAX_PACIENTE | VARCHAR2 | Y |  |
| 35 | DS_CELULAR_PACIENTE | VARCHAR2 | Y |  |
| 36 | DS_EMAIL_PACIENTE | VARCHAR2 | Y |  |
| 37 | SN_EMAIL_PACIENTE | CHAR | Y |  |
| 38 | SN_SMS_PACIENTE | CHAR | Y |  |
| 39 | CD_CONVENIO | VARCHAR2 | Y |  |
| 40 | NM_CONVENIO | VARCHAR2 | Y |  |
| 41 | DS_ENDERECO_CONVENIO | VARCHAR2 | Y |  |
| 42 | DS_BAIRRO_CONVENIO | VARCHAR2 | Y |  |
| 43 | DS_CIDADE_CONVENIO | VARCHAR2 | Y |  |
| 44 | DS_UF_CONVENIO | VARCHAR2 | Y |  |
| 45 | DS_CEP_CONVENIO | VARCHAR2 | Y |  |
| 46 | DS_TELEFONE_CONVENIO | VARCHAR2 | Y |  |
| 47 | DS_FAX_CONVENIO | VARCHAR2 | Y |  |
| 48 | DS_CPF_CNPJ_CONVENIO | VARCHAR2 | Y |  |
| 49 | DS_EMAIL_CONVENIO | VARCHAR2 | Y |  |
| 50 | CD_MEDICO_SOLICITANTE | VARCHAR2 | N |  |
| 51 | NM_MEDICO_SOLICITANTE | VARCHAR2 | N |  |
| 52 | DT_NASCIMENTO_SOLICITANTE | DATE | Y |  |
| 53 | DS_CPF_CNPJ_SOLICITANTE | VARCHAR2 | Y |  |
| 54 | DS_ENDERECO_SOLICITANTE | VARCHAR2 | Y |  |
| 55 | DS_BAIRRO_SOLICITANTE | VARCHAR2 | Y |  |
| 56 | DS_CIDADE_SOLICITANTE | VARCHAR2 | Y |  |
| 57 | DS_UF_SOLICITANTE | VARCHAR2 | Y |  |
| 58 | CD_CEP_SOLICITANTE | VARCHAR2 | Y |  |
| 59 | DS_TELEFONE_SOLICITANTE | VARCHAR2 | Y |  |
| 60 | DS_FAX_SOLICITANTE | VARCHAR2 | Y |  |
| 61 | DS_EMAIL_SOLICITANTE | VARCHAR2 | Y |  |
| 62 | DS_CRM_SOLICITANTE | VARCHAR2 | Y |  |
| 63 | DS_UF_CRM_SOLICITANTE | VARCHAR2 | Y |  |
| 64 | CD_MEDICO_EXECUTANTE | VARCHAR2 | N |  |
| 65 | NM_MEDICO_EXECUTANTE | VARCHAR2 | N |  |
| 66 | DT_NASCIMENTO_EXECUTANTE | DATE | Y |  |
| 67 | DS_CPF_CNPJ_EXECUTANTE | VARCHAR2 | Y |  |
| 68 | DS_ENDERECO_EXECUTANTE | VARCHAR2 | Y |  |
| 69 | DS_BAIRRO_EXECUTANTE | VARCHAR2 | Y |  |
| 70 | DS_CIDADE_EXECUTANTE | VARCHAR2 | Y |  |
| 71 | DS_UF_EXECUTANTE | VARCHAR2 | Y |  |
| 72 | CD_CEP_EXECUTANTE | VARCHAR2 | Y |  |
| 73 | DS_TELEFONE_EXECUTANTE | VARCHAR2 | Y |  |
| 74 | DS_FAX_EXECUTANTE | VARCHAR2 | Y |  |
| 75 | DS_EMAIL_EXECUTANTE | VARCHAR2 | Y |  |
| 76 | DS_CRM_EXECUTANTE | VARCHAR2 | Y |  |
| 77 | DS_UF_CRM_EXECUTANTE | VARCHAR2 | Y |  |
| 78 | CD_EXAME | VARCHAR2 | N |  |
| 79 | NM_EXAME | VARCHAR2 | N |  |
| 80 | ID_FORNECEDOR | NUMBER | N |  |
| 81 | DS_RG_PACIENTE | VARCHAR2 | Y |  |
| 82 | CD_ATENDIMENTO | VARCHAR2 | Y |  |
| 83 | NR_SEQUENCIA | VARCHAR2 | Y |  |
| 84 | NR_SEQ_INTERNO | VARCHAR2 | Y |  |
| 85 | CD_SETOR_PACIENTE | VARCHAR2 | Y |  |
| 86 | DT_LIBERACAO | DATE | Y |  |
| 87 | CD_SETOR_EXECUCAO | VARCHAR2 | Y |  |
| 88 | NM_SOCIAL | VARCHAR2 | Y |  |

---

## IDCE.RS_INTEGRA_FORNECEDOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_INTEGRA_FORNECEDOR | NUMBER | N |  |
| 2 | NM_FORNECEDOR | VARCHAR2 | Y |  |
| 3 | SN_ATIVO | CHAR | Y |  |
| 4 | DT_CADASTRO | DATE | Y |  |
| 5 | ID_USUARIO | NUMBER | Y |  |
| 6 | DT_ALTERACAO | DATE | Y |  |

---

## IDCE.RS_INTEGRA_GREEN_SAIDA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME_PEDIDO | NUMBER | N | Identificador do laudo |
| 2 | TP_STATUS | CHAR | N | Identifica o status da integração: A - aguardando, T - transportado e E - erro |
| 3 | DS_STATUS | VARCHAR2 | Y | Descrição do status da integração |
| 4 | DT_ENVIO | DATE | N | Data do envio |

---

## IDCE.RS_INTEGRA_LAUDO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_INTEGRA | NUMBER | Y |  |
| 2 | TP_INTEGRACAO | CHAR | Y |  |
| 3 | DT_INTEGRACAO | DATE | Y |  |
| 4 | DT_CADASTRO | DATE | Y |  |
| 5 | TP_MOVIMENTO | CHAR | Y |  |
| 6 | MESSAGE_ID | VARCHAR2 | Y |  |
| 7 | ID_UNIDADE | VARCHAR2 | Y |  |
| 8 | DT_PEDIDO | VARCHAR2 | Y |  |
| 9 | NM_PROCEDIMENTO | VARCHAR2 | Y |  |
| 10 | ID_EXAME | VARCHAR2 | Y |  |
| 11 | NM_EXAME | VARCHAR2 | Y |  |
| 12 | CD_PRONTUARIO | VARCHAR2 | Y |  |
| 13 | CD_CONVENIO | VARCHAR2 | Y |  |
| 14 | NM_PACIENTE | VARCHAR2 | Y |  |
| 15 | DT_NASCIMENTO | VARCHAR2 | Y |  |
| 16 | TP_SEXO | VARCHAR2 | Y |  |
| 17 | NM_SOLICITANTE | VARCHAR2 | Y |  |
| 18 | DS_CRM_SOLICITANTE | VARCHAR2 | Y |  |
| 19 | CD_ITEM_PEDIDO_HIS | VARCHAR2 | Y |  |
| 20 | NM_EXECUTANTE | VARCHAR2 | Y |  |
| 21 | DS_CRM | VARCHAR2 | Y |  |
| 22 | DS_LAUDO | CLOB | Y |  |
| 23 | DS_LAUDO_TXT | CLOB | Y |  |
| 24 | DT_LAUDO | VARCHAR2 | Y |  |
| 25 | NM_LAUDO | VARCHAR2 | Y |  |
| 26 | DS_ERRO | VARCHAR2 | Y |  |

---

## IDCE.RS_INTEGRA_SAIDA_SP_SADT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_INTEGRA_SAIDA_LAU_SADT | NUMBER | N |  |
| 2 | DT_CADASTRO | DATE | Y |  |
| 3 | TP_MOVIMENTO | VARCHAR2 | N |  |
| 4 | TP_REGISTRO | VARCHAR2 | N |  |
| 5 | TP_INTEGRACAO | VARCHAR2 | N |  |
| 6 | DT_INTEGRACAO | DATE | Y |  |
| 7 | DS_ERRO | VARCHAR2 | Y |  |
| 8 | CD_UNIDADE | VARCHAR2 | N |  |
| 9 | NM_UNIDADE | VARCHAR2 | N |  |
| 10 | CD_ACCESS_NUMBER | VARCHAR2 | N |  |
| 11 | ID_LAUDO | NUMBER | Y |  |
| 12 | CD_PACIENTE | VARCHAR2 | Y |  |
| 13 | CD_PRONTUARIO | VARCHAR2 | Y |  |
| 14 | NM_PACIENTE | VARCHAR2 | Y |  |
| 15 | CD_MEDICO_EXECUTANTE | VARCHAR2 | Y |  |
| 16 | NM_MEDICO_EXECUTANTE | VARCHAR2 | Y |  |
| 17 | DS_CRM_EXECUTANTE | VARCHAR2 | Y |  |
| 18 | DS_UF_CRM_EXECUTANTE | VARCHAR2 | Y |  |
| 19 | CD_MEDICO_REVISOR | VARCHAR2 | Y |  |
| 20 | NM_MEDICO_REVISOR | VARCHAR2 | Y |  |
| 21 | DS_CRM_REVISOR | VARCHAR2 | Y |  |
| 22 | DS_UF_CRM_REVISOR | VARCHAR2 | Y |  |
| 23 | DT_LAUDADO | DATE | Y |  |
| 24 | DT_REVISADO | DATE | Y |  |
| 25 | DT_ASSINADO | DATE | Y |  |
| 26 | DT_IMAGEM_DISPONIVEL | DATE | Y |  |
| 27 | DS_LAUDO_RTF | CLOB | Y |  |
| 28 | URL_VISUALIZACAO | VARCHAR2 | Y |  |
| 29 | CD_UNIDADE_BASE_HIS | VARCHAR2 | Y |  |
| 30 | ID_FORNECEDOR | NUMBER | Y |  |

---

## IDCE.RS_LAU_ANEXO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_ANEXO | NUMBER | N |  |
| 2 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 3 | NM_ANEXO | VARCHAR2 | N |  |
| 4 | DS_ANEXO | VARCHAR2 | Y |  |
| 5 | ID_USUARIO | NUMBER | Y |  |
| 6 | DT_CADASTRO | DATE | Y |  |
| 7 | TP_ARQUIVO | VARCHAR2 | N |  |
| 8 | NM_ARQUIVO | VARCHAR2 | N |  |
| 9 | TP_ANEXO | CHAR | N |  |
| 10 | DT_ALTERACAO | DATE | Y |  |
| 11 | ID_USUARIO_ALTERACAO | NUMBER | Y |  |

---

## IDCE.RS_LAU_ANEXO_INFO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_ANEXO_INFO | NUMBER | N |  |
| 2 | NM_ANEXO_INFO | VARCHAR2 | N |  |

---

## IDCE.RS_LAU_CD

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_CD | NUMBER | N |  |
| 2 | ID_USUARIO | NUMBER | Y |  |
| 3 | DT_CADASTRO | DATE | Y |  |
| 4 | DT_GRAVACAO | DATE | Y |  |
| 5 | ID_USUARIO_GRAVACAO | NUMBER | Y |  |
| 6 | ID_UNIDADE | NUMBER | Y |  |
| 7 | ID_USUARIO_ALTERACAO | NUMBER | Y |  |
| 8 | SN_ATIVO | CHAR | Y |  |
| 9 | DT_ALTERACAO | DATE | Y |  |

---

## IDCE.RS_LAU_CLASSIFICACAO_RISCO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_RISCO | NUMBER | N |  |
| 2 | DS_DESCRICAO | VARCHAR2 | N |  |
| 3 | SG_SIGLA | VARCHAR2 | Y |  |
| 4 | DT_CADASTRO | DATE | Y |  |
| 5 | DT_ALTERACAO | DATE | Y |  |
| 6 | SN_ATIVO | CHAR | Y |  |
| 7 | DS_COR | VARCHAR2 | Y |  |

---

## IDCE.RS_LAU_CLASSIFICACAO_RISCO_BKP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_RISCO | NUMBER | N |  |
| 2 | DS_DESCRICAO | VARCHAR2 | N |  |
| 3 | SG_SIGLA | VARCHAR2 | Y |  |
| 4 | DT_CADASTRO | DATE | Y |  |
| 5 | DT_ALTERACAO | DATE | Y |  |
| 6 | SN_ATIVO | CHAR | Y |  |
| 7 | DS_COR | VARCHAR2 | Y |  |

---

## IDCE.RS_LAU_COLUNA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_COLUNA | NUMBER | N |  |
| 2 | NM_COLUNA | VARCHAR2 | N |  |
| 3 | SN_ATIVO | CHAR | Y |  |
| 4 | DT_CADASTRO | DATE | Y |  |
| 5 | DT_ALTERACAO | DATE | Y |  |
| 6 | SN_OBRIGATORIO | CHAR | Y |  |

---

## IDCE.RS_LAU_COLUNA_UNIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_LAU_COLUNA_UNIDADE | NUMBER | N |  |
| 2 | ID_UNIDADE | NUMBER | N |  |
| 3 | ID_COLUNA | NUMBER | N |  |
| 4 | NR_ORDEM | NUMBER | N |  |
| 5 | SN_VISIVEL | CHAR | Y |  |
| 6 | SN_ATIVO | CHAR | Y |  |
| 7 | DT_CADASTRO | DATE | N |  |
| 8 | DT_ALTERACAO | DATE | Y |  |

---

## IDCE.RS_LAU_COMENTARIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_COMENTARIO | NUMBER | N |  |
| 2 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 3 | DS_COMENTARIO | VARCHAR2 | Y |  |
| 4 | DT_CADASTRO | DATE | N |  |
| 5 | DT_ALTERACAO | DATE | Y |  |
| 6 | ID_USUARIO | NUMBER | N |  |

---

## IDCE.RS_LAU_DADOS_AUDIOMETRIA
> Tabela auxiliar de cadastro dos dados de Audiometria

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME_PEDIDO | NUMBER | N | Identificador do laudo |
| 2 | ID_EQUIPAMENTO | NUMBER | N | Identificador do equipamento utilizado no exame |
| 3 | ID_USUARIO_CADASTRO | NUMBER | N | Identificador do usuário que cadastrou este exame |
| 4 | DT_CADASTRO | DATE | N | Data de cadastro este exame |
| 5 | ID_USUARIO_ALTERACAO | NUMBER | Y | Identificador do usuário que realizou a última alteração neste exame |
| 6 | DT_ALTERACAO | DATE | Y | Data da última alteração neste exame |
| 7 | DS_OD_VA_50 | VARCHAR2 | Y | Medição da audição de via aérea na frequência .50 do ouvido direito |
| 8 | DS_OD_VA_25 | VARCHAR2 | Y | Medição da audição de via aérea na frequência .25 do ouvido direito |
| 9 | DS_OD_VA1 | VARCHAR2 | Y | Medição da audição de via aérea na frequência 1 do ouvido direito |
| 10 | DS_OD_VA2 | VARCHAR2 | Y | Medição da audição de via aérea na frequência 2 do ouvido direito |
| 11 | DS_OD_VA3 | VARCHAR2 | Y | Medição da audição de via aérea na frequência 3 do ouvido direito |
| 12 | DS_OD_VA4 | VARCHAR2 | Y | Medição da audição de via aérea na frequência 4 do ouvido direito |
| 13 | DS_OD_VA6 | VARCHAR2 | Y | Medição da audição de via aérea na frequência 6 do ouvido direito |
| 14 | DS_OD_VA8 | VARCHAR2 | Y | Medição da audição de via aérea na frequência 8 do ouvido direito |
| 15 | DS_OD_VO_50 | VARCHAR2 | Y | Medição da audição de via óssea na frequência .50 do ouvido direito |
| 16 | DS_OD_VO_25 | VARCHAR2 | Y | Medição da audição de via óssea na frequência .25 do ouvido direito |
| 17 | DS_OD_VO1 | VARCHAR2 | Y | Medição da audição de via óssea na frequência 1 do ouvido direito |
| 18 | DS_OD_VO2 | VARCHAR2 | Y | Medição da audição de via óssea na frequência 2 do ouvido direito |
| 19 | DS_OD_VO3 | VARCHAR2 | Y | Medição da audição de via óssea na frequência 3 do ouvido direito |
| 20 | DS_OD_VO4 | VARCHAR2 | Y | Medição da audição de via óssea na frequência 4 do ouvido direito |
| 21 | DS_OD_VO6 | VARCHAR2 | Y | Medição da audição de via óssea na frequência 6 do ouvido direito |
| 22 | DS_OD_VO8 | VARCHAR2 | Y | Medição da audição de via óssea na frequência 8 do ouvido direito |
| 23 | DS_OE_VA_50 | VARCHAR2 | Y | Medição da audição de via aérea na frequência .50 do ouvido esquerdo |
| 24 | DS_OE_VA_25 | VARCHAR2 | Y | Medição da audição de via aérea na frequência .25 do ouvido esquerdo |
| 25 | DS_OE_VA1 | VARCHAR2 | Y | Medição da audição de via aérea na frequência 1 do ouvido esquerdo |
| 26 | DS_OE_VA2 | VARCHAR2 | Y | Medição da audição de via aérea na frequência 2 do ouvido esquerdo |
| 27 | DS_OE_VA3 | VARCHAR2 | Y | Medição da audição de via aérea na frequência 3 do ouvido esquerdo |
| 28 | DS_OE_VA4 | VARCHAR2 | Y | Medição da audição de via aérea na frequência 4 do ouvido esquerdo |
| 29 | DS_OE_VA6 | VARCHAR2 | Y | Medição da audição de via aérea na frequência 6 do ouvido esquerdo |
| 30 | DS_OE_VA8 | VARCHAR2 | Y | Medição da audição de via aérea na frequência 8 do ouvido esquerdo |
| 31 | DS_OE_VO_50 | VARCHAR2 | Y | Medição da audição de via óssea na frequência .50 do ouvido esquerdo |
| 32 | DS_OE_VO_25 | VARCHAR2 | Y | Medição da audição de via óssea na frequência .25 do ouvido esquerdo |
| 33 | DS_OE_VO1 | VARCHAR2 | Y | Medição da audição de via óssea na frequência 1 do ouvido esquerdo |
| 34 | DS_OE_VO2 | VARCHAR2 | Y | Medição da audição de via óssea na frequência 2 do ouvido esquerdo |
| 35 | DS_OE_VO3 | VARCHAR2 | Y | Medição da audição de via óssea na frequência 3 do ouvido esquerdo |
| 36 | DS_OE_VO4 | VARCHAR2 | Y | Medição da audição de via óssea na frequência 4 do ouvido esquerdo |
| 37 | DS_OE_VO6 | VARCHAR2 | Y | Medição da audição de via óssea na frequência 6 do ouvido esquerdo |
| 38 | DS_OE_VO8 | VARCHAR2 | Y | Medição da audição de via óssea na frequência 8 do ouvido esquerdo |
| 39 | DS_OD_VA_MASC | VARCHAR2 | Y | Texto descritivo de mascaramento da via aérea do ouvido direito |
| 40 | DS_OD_VO_MASC | VARCHAR2 | Y | Texto descritivo de mascaramento da via óssea do ouvido direito |
| 41 | DS_OE_VA_MASC | VARCHAR2 | Y | Texto descritivo de mascaramento da via aérea do ouvido esquerdo |
| 42 | DS_OE_VO_MASC | VARCHAR2 | Y | Texto descritivo de mascaramento da via óssea do ouvido esquerdo |
| 43 | DS_OD_LRF | VARCHAR2 | Y | Medição da LRF do ouvido direito |
| 44 | DS_OE_LRF | VARCHAR2 | Y | Medição da LRF do ouvido esquerdo |
| 45 | DS_OD_LAF | VARCHAR2 | Y | Medição da LAF do ouvido direito |
| 46 | DS_OE_LAF | VARCHAR2 | Y | Medição da LAF do ouvido esquerdo |
| 47 | DS_WEBER_500 | VARCHAR2 | Y | Medição WEBER da frequência 500 |
| 48 | DS_WEBER_1000 | VARCHAR2 | Y | Medição WEBER da frequência 1000 |
| 49 | DS_WEBER_2000 | VARCHAR2 | Y | Medição WEBER da frequência 2000 |
| 50 | DS_WEBER_4000 | VARCHAR2 | Y | Medição WEBER da frequência 4000 |
| 51 | DS_OD_IRF | VARCHAR2 | Y | Medição IRF do ouvido direito |
| 52 | DS_OE_IRF | VARCHAR2 | Y | Medição IRF do ouvido esquerdo |
| 53 | DS_OD_IRF_MONO | VARCHAR2 | Y | Medição IRF-MONO do ouvido direito |
| 54 | DS_OE_IRF_MONO | VARCHAR2 | Y | Medição IRF-MONO do ouvido esquerdo |
| 55 | DS_OD_IRF_DISSIL | VARCHAR2 | Y | Medição IRF-DISSIL do ouvido direito |
| 56 | DS_OE_IRF_DISSIL | VARCHAR2 | Y | Medição IRF-DISSIL do ouvido esquerdo |
| 57 | DS_PARECER | CLOB | Y | Laudo/parecer do médico sobre os dados do exame |

---

## IDCE.RS_LAU_DADOS_FLEBOGRAMA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_FLEBOGRAMA_ITEM | NUMBER | N | Identificador único do flebograma |
| 2 | ID_EXAME_PEDIDO | NUMBER | N | Identificador único do laudo |
| 3 | ID_USUARIO_CADASTRO | NUMBER | N | Identificador do usuário que criou o registro |
| 4 | DT_CADASTRO | DATE | N | Data de criação do registro |
| 5 | ID_USUARIO_ALTERACAO | NUMBER | Y | Identificador do último usuário a alterar o registro |
| 6 | DT_ALTERACAO | DATE | Y | Data da última alteração do registro |
| 7 | SN_RESULTADO_CLINICO | CHAR | Y | Identificador se possui resultado clinico |
| 8 | SN_TEXT_EDIT | CHAR | Y | Identificador se texto é editavel |
| 9 | DS_OBSERVACAO | VARCHAR2 | Y | Observação sobre o exame |
| 10 | DS_DESCRICAO | VARCHAR2 | Y | Descrição sobre as marcações do exame |
| 11 | VL_LAYOUT | NUMBER | N | Identificador do layout utilizado |
| 12 | VL_RX | NUMBER | Y | Valor do eixo X da marcação |
| 13 | VL_RY | NUMBER | Y | Valor do eixo Y da marcação |
| 14 | VL_RADIUS | NUMBER | Y | Valor do raio da marcação |
| 15 | VL_FILL | VARCHAR2 | Y | Valor do preenchimento da marcação |
| 16 | DS_TOOL | VARCHAR2 | Y | Descrição da ferramenta utilizada na marcação |
| 17 | VL_STROKE_WIDTH | NUMBER | Y | Valor da largura do traçado da marcação |
| 18 | VL_STROKE | VARCHAR2 | Y | Valor do traçado da marcação |
| 19 | VL_TEXT | VARCHAR2 | Y | Valor da marcação de texto |
| 20 | VL_FONT_SIZE | NUMBER | Y |  |
| 21 | ID_FORM | VARCHAR2 | Y | Identificador da marcação na ferramenta |
| 22 | VL_ALIGN | VARCHAR2 | Y | Valor do alinhamento da fonte na marcação |
| 23 | VL_FONT_FAMILY | VARCHAR2 | Y | Nome da fonte utilizada na marcação |
| 24 | VL_WIDTH | NUMBER | Y | Valor da largura utilizada na marcação |
| 25 | VL_HEIGHT | NUMBER | Y | Valor da altura utilizada na marcação |
| 26 | VL_SCALEX | NUMBER | Y | Valor da escala de X utilizada na marcação |
| 27 | VL_SCALEY | NUMBER | Y | Valor da escala de Y utilizada na marcação |
| 28 | VL_NAME | VARCHAR2 | Y | Valor do campo de nome utilizado pela ferramenta na marcação |

---

## IDCE.RS_LAU_DADOS_FLEBOGRAMA_ITM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_FLEBOGRAMA_ITEM | NUMBER | N | Identificador único do flebograma |
| 2 | ID_EXAME_PEDIDO | NUMBER | N | Identificador único do laudo |
| 3 | VL_POINTS | NUMBER | Y | Valor dos pontos utilizados nas marcações |
| 4 | VL_DASH | NUMBER | Y | Valor dos traços utilizados nas marcações |

---

## IDCE.RS_LAU_DADOS_IMITANCIOMETRIA
> Tabela auxiliar de cadastro dos dados de Imitânciometria

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME_PEDIDO | NUMBER | N | Identificador do laudo/exame |
| 2 | ID_EQUIPAMENTO | NUMBER | N | Identificador do equipamento utilizado |
| 3 | ID_USUARIO_CADASTRO | NUMBER | N | Identificador do usuário que cadastrou os dados do exame |
| 4 | DT_CADASTRO | DATE | N | Data do cadastro dos dados do exame |
| 5 | ID_USUARIO_ALTERACAO | NUMBER | Y | Identificador do usuário que fez a última alteração nos dados do exame |
| 6 | DT_ALTERACAO | DATE | Y | Data da última alteração nos dados do exame |
| 7 | DS_OD_400_N | VARCHAR2 | Y | Medição do ouvido direito na frequência de -400 |
| 8 | DS_OD_350_N | VARCHAR2 | Y | Medição do ouvido direito na frequência de -350 |
| 9 | DS_OD_300_N | VARCHAR2 | Y | Medição do ouvido direito na frequência de -300 |
| 10 | DS_OD_250_N | VARCHAR2 | Y | Medição do ouvido direito na frequência de -250 |
| 11 | DS_OD_200_N | VARCHAR2 | Y | Medição do ouvido direito na frequência de -200 |
| 12 | DS_OD_150_N | VARCHAR2 | Y | Medição do ouvido direito na frequência de -150 |
| 13 | DS_OD_100_N | VARCHAR2 | Y | Medição do ouvido direito na frequência de -100 |
| 14 | DS_OD_50_N | VARCHAR2 | Y | Medição do ouvido direito na frequência de -50 |
| 15 | DS_OD_0 | VARCHAR2 | Y | Medição do ouvido direito na frequência de 0 |
| 16 | DS_OD_50_P | VARCHAR2 | Y | Medição do ouvido direito na frequência de 50 |
| 17 | DS_OD_100_P | VARCHAR2 | Y | Medição do ouvido direito na frequência de 100 |
| 18 | DS_OD_150_P | VARCHAR2 | Y | Medição do ouvido direito na frequência de 150 |
| 19 | DS_OD_200_P | VARCHAR2 | Y | Medição do ouvido direito na frequência de 200 |
| 20 | DS_OE_400_N | VARCHAR2 | Y | Medição do ouvido esquerdo na frequência de -400 |
| 21 | DS_OE_350_N | VARCHAR2 | Y | Medição do ouvido esquerdo na frequência de -350 |
| 22 | DS_OE_300_N | VARCHAR2 | Y | Medição do ouvido esquerdo na frequência de -300 |
| 23 | DS_OE_250_N | VARCHAR2 | Y | Medição do ouvido esquerdo na frequência de -250 |
| 24 | DS_OE_200_N | VARCHAR2 | Y | Medição do ouvido esquerdo na frequência de -200 |
| 25 | DS_OE_150_N | VARCHAR2 | Y | Medição do ouvido esquerdo na frequência de -150 |
| 26 | DS_OE_100_N | VARCHAR2 | Y | Medição do ouvido esquerdo na frequência de -100 |
| 27 | DS_OE_50_N | VARCHAR2 | Y | Medição do ouvido esquerdo na frequência de -50 |
| 28 | DS_OE_0 | VARCHAR2 | Y | Medição do ouvido esquerdo na frequência de 0 |
| 29 | DS_OE_50_P | VARCHAR2 | Y | Medição do ouvido esquerdo na frequência de 50 |
| 30 | DS_OE_100_P | VARCHAR2 | Y | Medição do ouvido esquerdo na frequência de 100 |
| 31 | DS_OE_150_P | VARCHAR2 | Y | Medição do ouvido esquerdo na frequência de 150 |
| 32 | DS_OE_200_P | VARCHAR2 | Y | Medição do ouvido esquerdo na frequência de 200 |
| 33 | DS_OE_SONDA_OD_L_500 | VARCHAR2 | Y | Medição do ouvido esquerdo através de sonda no ouvido direito na frequência de 500 |
| 34 | DS_OE_SONDA_OD_L_1000 | VARCHAR2 | Y | Medição do ouvido esquerdo através de sonda no ouvido direito na frequência de 1000 |
| 35 | DS_OE_SONDA_OD_L_2000 | VARCHAR2 | Y | Medição do ouvido esquerdo através de sonda no ouvido direito na frequência de 2000 |
| 36 | DS_OE_SONDA_OD_L_4000 | VARCHAR2 | Y | Medição do ouvido esquerdo através de sonda no ouvido direito na frequência de 4000 |
| 37 | DS_OE_SONDA_OD_C_500 | VARCHAR2 | Y | Medição do ouvido esquerdo através de sonda no ouvido direito na frequência de 500 (contra) |
| 38 | DS_OE_SONDA_OD_C_1000 | VARCHAR2 | Y | Medição do ouvido esquerdo através de sonda no ouvido direito na frequência de 1000 (contra) |
| 39 | DS_OE_SONDA_OD_C_2000 | VARCHAR2 | Y | Medição do ouvido esquerdo através de sonda no ouvido direito na frequência de 2000 (contra) |
| 40 | DS_OE_SONDA_OD_C_4000 | VARCHAR2 | Y | Medição do ouvido esquerdo através de sonda no ouvido direito na frequência de 4000 (contra) |
| 41 | DS_OD_SONDA_OE_L_500 | VARCHAR2 | Y | Medição do ouvido direito através de sonda no ouvido esquerdo na frequência de 500 |
| 42 | DS_OD_SONDA_OE_L_1000 | VARCHAR2 | Y | Medição do ouvido direito através de sonda no ouvido esquerdo na frequência de 1000 |
| 43 | DS_OD_SONDA_OE_L_2000 | VARCHAR2 | Y | Medição do ouvido direito através de sonda no ouvido esquerdo na frequência de 2000 |
| 44 | DS_OD_SONDA_OE_L_4000 | VARCHAR2 | Y | Medição do ouvido direito através de sonda no ouvido esquerdo na frequência de 4000 |
| 45 | DS_OD_SONDA_OE_C_500 | VARCHAR2 | Y | Medição do ouvido direito através de sonda no ouvido esquerdo na frequência de 500 (contra) |
| 46 | DS_OD_SONDA_OE_C_1000 | VARCHAR2 | Y | Medição do ouvido direito através de sonda no ouvido esquerdo na frequência de 1000 (contra) |
| 47 | DS_OD_SONDA_OE_C_2000 | VARCHAR2 | Y | Medição do ouvido direito através de sonda no ouvido esquerdo na frequência de 2000 (contra) |
| 48 | DS_OD_SONDA_OE_C_4000 | VARCHAR2 | Y | Medição do ouvido direito através de sonda no ouvido esquerdo na frequência de 4000 (contra) |
| 49 | DS_IPSI_OD_500 | VARCHAR2 | Y | Medição IPSI do ouvido direito na frequência 500 |
| 50 | DS_IPSI_OD_1000 | VARCHAR2 | Y | Medição IPSI do ouvido direito na frequência 1000 |
| 51 | DS_IPSI_OD_2000 | VARCHAR2 | Y | Medição IPSI do ouvido direito na frequência 2000 |
| 52 | DS_IPSI_OD_4000 | VARCHAR2 | Y | Medição IPSI do ouvido direito na frequência 4000 |
| 53 | DS_IPSI_OE_500 | VARCHAR2 | Y | Medição IPSI do ouvido esquerdo na frequência 500 |
| 54 | DS_IPSI_OE_1000 | VARCHAR2 | Y | Medição IPSI do ouvido esquerdo na frequência 1000 |
| 55 | DS_IPSI_OE_2000 | VARCHAR2 | Y | Medição IPSI do ouvido esquerdo na frequência 2000 |
| 56 | DS_IPSI_OE_4000 | VARCHAR2 | Y | Medição IPSI do ouvido esquerdo na frequência 4000 |
| 57 | DS_PARECER | CLOB | Y | Parecer/laudo médico sobre o exame |

---

## IDCE.RS_LAU_DADOS_OIT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME_PEDIDO | NUMBER | N | Identificador único do laudo |
| 2 | ID_USUARIO_CADASTRO | NUMBER | N | Identificador do usuário que criou o registro |
| 3 | DT_CADASTRO | DATE | N | Data de criação do registro |
| 4 | ID_USUARIO_ALTERACAO | NUMBER | Y | Identificador do último usuário a alterar o registro |
| 5 | DT_ALTERACAO | DATE | Y | Data da última alteração do registro |
| 6 | DS_LEITOR_INICIAIS | VARCHAR2 | Y | Iniciais do Leitor conforme consta no formulário |
| 7 | SN_RX_DIGITAL | CHAR | Y | Informa se o RX feito foi digital ou não |
| 8 | DS_1A_QUALIDADE_TECNICA | CHAR | Y | Informa sobre a qualidade técnica da leitura |
| 9 | DS_1A_COMENTARIO | VARCHAR2 | Y | Comentário complementar sobre a qualidade ténica da leitura |
| 10 | SN_1B_NORMAL | CHAR | Y | Informa se radiografia é normal, indicando a necessidade de preenchimento de outras seções |
| 11 | SN_2A_ANORM_PARENQ | CHAR | Y | Informa se existe alguma anormalidade de parênquima consistente com pneumoconiose |
| 12 | DS_2B_FORMA_PRIMARIA | CHAR | Y | Indica a forma primária da anomalia |
| 13 | DS_2B_FORMA_SECUNDARIA | CHAR | Y | Indica a forma secundária da anomalia |
| 14 | DS_2B_ZONAS_LINHA_1 | CHAR | Y | Primeira linha da indicação de zonas da anomalia |
| 15 | DS_2B_ZONAS_LINHA_2 | CHAR | Y | Segunda linha da indicação de zonas da anomalia |
| 16 | DS_2B_ZONAS_LINHA_3 | CHAR | Y | Terceira linha da indicação de zonas da anomalia |
| 17 | DS_2B_PROFUSAO | VARCHAR2 | Y | Indica o tipo de profusão da anomalia |
| 18 | DS_2C_GRANDES_OPACIDADES | CHAR | Y | Indica se houveram grandes opacidades na detecção da anomalia |
| 19 | SN_3A_ANORM_PLEURAL | CHAR | Y | Informa se existe alguma anormalidade pleural consistente com pneumoconiose |
| 20 | SN_3B_PLACAS_PLEURAIS | CHAR | Y | Informa se foram encontradas placas pleurais |
| 21 | DS_3B_LOCAL_PAREDE | CHAR | Y | Informa o local da anormalia vendo a Parede em perfil |
| 22 | DS_3B_LOCAL_FRONTAL | CHAR | Y | Informa o local da anormalia vendo a visão frontal |
| 23 | DS_3B_LOCAL_DIAFRAGMA | CHAR | Y | Informa o local da anormalia vendo a partir do diafragma |
| 24 | DS_3B_LOCAL_OUTROS | CHAR | Y | Informa o local da anormalia vendo em outros locais |
| 25 | DS_3B_CALCIFIC_PAREDE | CHAR | Y | Informa sobre a calcificação da anormalia vendo a Parede em perfil |
| 26 | DS_3B_CALCIFIC_FRONTAL | CHAR | Y | Informa sobre a calcificação da anormalia vendo a visão frontal |
| 27 | DS_3B_CALCIFIC_DIAFRAGMA | CHAR | Y | Informa sobre a calcificação da anormalia vendo a partir do diafragma |
| 28 | DS_3B_CALCIFIC_OUTROS | CHAR | Y | Informa sobre a calcificação da anormalia vendo em outros locais |
| 29 | DS_3B_EXT_PAREDE_CAMPO_1 | CHAR | Y | Informa sobre a extensão na parede combinando em perfil e frontal, campo 1 |
| 30 | DS_3B_EXT_PAREDE_CAMPO_2 | CHAR | Y | Informa sobre a extensão na parede combinando em perfil e frontal, campo 2 |
| 31 | DS_3B_EXT_FRONTAL_CAMPO_1 | CHAR | Y | Informa sobre a extensão na parede combinando frontal, campo 1 |
| 32 | DS_3B_EXT_FRONTAL_CAMPO_2 | CHAR | Y | Informa sobre a extensão na parede combinando frontal, campo 2 |
| 33 | DS_3B_LARG_PAREDE_CAMPO_1 | CHAR | Y | Informa sobre a largura na parede combinando em perfil e frontal, campo 1 |
| 34 | DS_3B_LARG_PAREDE_CAMPO_2 | CHAR | Y | Informa sobre a largura na parede combinando em perfil e frontal, campo 2 |
| 35 | DS_3B_LARG_FRONTAL_CAMPO_1 | CHAR | Y | Informa sobre a largura na parede combinando frontal, campo 1 |
| 36 | DS_3B_LARG_FRONTAL_CAMPO_2 | CHAR | Y | Informa sobre a largura na parede combinando frontal, campo 2 |
| 37 | DS_3C_OBLIT_SEIO_COST | CHAR | Y | Informa se houve obliteração do seio costofrênico |
| 38 | SN_3D_ESPESSAMENTO_PLEURAL | CHAR | Y | Informa se houve espessamento pleural difuso |
| 39 | DS_3D_LOCAL_PAREDE | CHAR | Y | Informa o local do espessamento pleural vendo a Parede em perfil |
| 40 | DS_3D_LOCAL_FRONTAL | CHAR | Y | Informa o local do espessamento pleural vendo a visão frontal |
| 41 | DS_3D_CALCIFIC_PAREDE | CHAR | Y | Informa a calcificação do espessamento pleural vendo a Parede em perfil |
| 42 | DS_3D_CALCIFIC_FRONTAL | CHAR | Y | Informa a calcificação do espessamento pleural vendo a visão frontal |
| 43 | DS_3D_EXT_PAREDE_CAMPO_1 | CHAR | Y | Informa sobre a extensão na parede combinando em perfil e frontal, campo 1 |
| 44 | DS_3D_EXT_PAREDE_CAMPO_2 | CHAR | Y | Informa sobre a extensão na parede combinando em perfil e frontal, campo 2 |
| 45 | DS_3D_EXT_FRONTAL_CAMPO_1 | CHAR | Y | Informa sobre a extensão na parede combinando frontal, campo 1 |
| 46 | DS_3D_EXT_FRONTAL_CAMPO_2 | CHAR | Y | Informa sobre a extensão na parede combinando frontal, campo 2 |
| 47 | DS_3D_LARG_PAREDE_CAMPO_1 | CHAR | Y | Informa sobre a largura na parede combinando em perfil e frontal, campo 1 |
| 48 | DS_3D_LARG_PAREDE_CAMPO_2 | CHAR | Y | Informa sobre a largura na parede combinando em perfil e frontal, campo 2 |
| 49 | DS_3D_LARG_FRONTAL_CAMPO_1 | CHAR | Y | Informa sobre a largura na parede combinando frontal, campo 1 |
| 50 | DS_3D_LARG_FRONTAL_CAMPO_2 | CHAR | Y | Informa sobre a largura na parede combinando frontal, campo 2 |
| 51 | SN_4A_OUTRAS_ANORMALIDADES | CHAR | Y | Informa se houveram outras normalidades |
| 52 | SN_4B_AA | CHAR | Y | Informa a ocorrência de anomalia na aorta aterosclerótica |
| 53 | SN_4B_AT | CHAR | Y | Informa a ocorrência de espessamento pleural apical significativo |
| 54 | SN_4B_AX | CHAR | Y | Informa a ocorrência de coalescência de pequenas opacidades |
| 55 | SN_4B_BU | CHAR | Y | Informa a ocorrência de bolhas |
| 56 | SN_4B_CA | CHAR | Y | Informa a ocorrência de câncer |
| 57 | SN_4B_CG | CHAR | Y | Informa a ocorrência de nódulos não pneumoconióticos calcificados |
| 58 | SN_4B_CN | CHAR | Y | Informa a ocorrência de calcificação de pequenas opacidades pneumoconióticas |
| 59 | SN_4B_CO | CHAR | Y | Informa a ocorrência de anormalidade de forma e tamanho do coração |
| 60 | SN_4B_CP | CHAR | Y | Informa a ocorrência de cor pulmonale |
| 61 | SN_4B_CV | CHAR | Y | Informa a ocorrência de cavidade |
| 62 | SN_4B_DI | CHAR | Y | Informa a ocorrência de distorção significativa de estrutura intratorácica |
| 63 | SN_4B_EF | CHAR | Y | Informa a ocorrência de derrame pleural |
| 64 | SN_4B_EM | CHAR | Y | Informa a ocorrência de enfisema |
| 65 | SN_4B_ES | CHAR | Y | Informa a ocorrência de calcificações em casca de ovo |
| 66 | SN_4B_FR | CHAR | Y | Informa a ocorrência de fratura(s) de costela(s) recente(s) ou consolidada(s) |
| 67 | SN_4B_HI | CHAR | Y | Informa a ocorrência de aumento de gânglios hilares e/ou mediastinais |
| 68 | SN_4B_HO | CHAR | Y | Informa a ocorrência de faveolamento |
| 69 | SN_4B_ID | CHAR | Y | Informa a ocorrência de borda diafragmática mal definida |
| 70 | SN_4B_IH | CHAR | Y | Informa a ocorrência de borda cardíaca mal definida |
| 71 | SN_4B_KL | CHAR | Y | Informa a ocorrência de linhas septais (Kerley) |
| 72 | SN_4B_ME | CHAR | Y | Informa a ocorrência de mesotelioma |
| 73 | SN_4B_PA | CHAR | Y | Informa a ocorrência de atelectasia laminar |
| 74 | SN_4B_PB | CHAR | Y | Informa a ocorrência de banda(s) parenquimatosa(s) |
| 75 | SN_4B_PI | CHAR | Y | Informa a ocorrência de espessamento pleural de cisura(s) interlobar(es) |
| 76 | SN_4B_PX | CHAR | Y | Informa a ocorrência de pneumotórax |
| 77 | SN_4B_RA | CHAR | Y | Informa a ocorrência de atelectasia redonda |
| 78 | SN_4B_RP | CHAR | Y | Informa a ocorrência de tuberculose |
| 79 | SN_4B_TB | CHAR | Y |  |
| 80 | SN_4B_OD | CHAR | Y | Informa a ocorrência de outras doenças |
| 81 | DS_4C_COMENTARIOS | VARCHAR2 | Y | Comentários a respeito das marcações em 4b |

---

## IDCE.RS_LAU_DIAGNOSTICO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_LAU_DIAGNOSTICO | NUMBER | N |  |
| 2 | ID_EXAME_PEDIDO | NUMBER | Y |  |
| 3 | ID_TIPO_DIAGNOSTICO | NUMBER | Y |  |
| 4 | ID_DIAGNOSTICO | NUMBER | Y |  |
| 5 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 6 | DT_CADASTRO | DATE | N |  |
| 7 | DT_ALTERACAO | DATE | Y |  |
| 8 | ID_USUARIO | NUMBER | Y |  |

---

## IDCE.RS_LAU_ERRO_INICIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 2 | DT_ENTRADA_EXAME | DATE | Y |  |
| 3 | DT_SAIDA_EXAME | DATE | Y |  |

---

## IDCE.RS_LAU_ETAPA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_ETAPA | NUMBER | N |  |
| 2 | NM_ETAPA | VARCHAR2 | N |  |
| 3 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 4 | DT_CADASTRO | DATE | N |  |
| 5 | DT_ALTERACAO | DATE | Y |  |
| 6 | ID_USUARIO | NUMBER | Y |  |
| 7 | SN_ATIVO | CHAR | Y |  |

---

## IDCE.RS_LAU_ETAPA_EXAME

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_ETAPA_EXAME | NUMBER | N |  |
| 2 | ID_ETAPA | NUMBER | N |  |
| 3 | ID_EXAME_UNIDADE | NUMBER | N |  |
| 4 | NR_ORDEM | NUMBER | Y |  |
| 5 | DT_CADASTRO | DATE | N |  |
| 6 | DT_ALTERACAO | DATE | Y |  |
| 7 | ID_USUARIO | NUMBER | Y |  |
| 8 | SN_ATIVO | CHAR | Y |  |
| 9 | SN_OBRIGATORIO | CHAR | Y |  |

---

## IDCE.RS_LAU_ETAPA_EXAME_WORKFLOW

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_ETAPA_EXAME_ORIGEM | NUMBER | N |  |
| 2 | ID_ETAPA_EXAME_DESTINO | NUMBER | N |  |
| 3 | DT_CADASTRO | DATE | N |  |
| 4 | DT_ALTERACAO | DATE | Y |  |
| 5 | ID_USUARIO | NUMBER | Y |  |

---

## IDCE.RS_LAU_ETAPA_PROCEDIMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_ETAPA_PROCEDIMENTO | NUMBER | N |  |
| 2 | ID_ETAPA | NUMBER | N |  |
| 3 | ID_PROCEDIMENTO_UNIDADE | NUMBER | N |  |
| 4 | NR_ORDEM | NUMBER | Y |  |
| 5 | DT_CADASTRO | DATE | N |  |
| 6 | DT_ALTERACAO | DATE | Y |  |
| 7 | ID_USUARIO | NUMBER | Y |  |
| 8 | SN_ATIVO | CHAR | Y |  |
| 9 | SN_OBRIGATORIO | CHAR | Y |  |

---

## IDCE.RS_LAU_ETAPA_SETOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_ETAPA_EXAME | NUMBER | N |  |
| 2 | ID_ETAPA | NUMBER | N |  |
| 3 | ID_SETOR_EXECUTANTE | NUMBER | N |  |
| 4 | NR_ORDEM | NUMBER | Y |  |
| 5 | DT_CADASTRO | DATE | N |  |
| 6 | DT_ALTERACAO | DATE | Y |  |
| 7 | ID_USUARIO | NUMBER | Y |  |

---

## IDCE.RS_LAU_ETAPA_SETOR_WORKFLOW

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_ETAPA_SETOR_ORIGEM | NUMBER | N |  |
| 2 | ID_ETAPA_SETOR_DESTINO | NUMBER | N |  |
| 3 | DT_CADASTRO | DATE | N |  |
| 4 | DT_ALTERACAO | DATE | Y |  |
| 5 | ID_USUARIO | NUMBER | Y |  |

---

## IDCE.RS_LAU_EXAME_PEDIDO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 2 | ID_PEDIDO_EXAME | NUMBER | N |  |
| 3 | ID_MEDICO_EXECUTANTE | NUMBER | Y |  |
| 4 | ID_MEDICO_REVISOR | NUMBER | Y |  |
| 5 | ID_MEDICO_REVISOR_FINAL | NUMBER | Y |  |
| 6 | ID_SALA | NUMBER | Y |  |
| 7 | DT_CADASTRO | DATE | N |  |
| 8 | DT_ALTERACAO | DATE | Y |  |
| 9 | ID_EXAME_UNIDADE | NUMBER | Y |  |
| 10 | ID_USUARIO_INCLUSAO | NUMBER | Y |  |
| 11 | ID_USUARIO_ALTERACAO | NUMBER | Y |  |
| 12 | DT_DUM | DATE | Y |  |
| 13 | CD_ITEM_PEDIDO_HIS | VARCHAR2 | Y |  |
| 14 | ID_ORIGEM_ATENDIMENTO | NUMBER | Y |  |
| 15 | ID_SETOR | NUMBER | Y |  |
| 16 | ID_USUARIO_ENTRADA_EXAME | NUMBER | Y |  |
| 17 | ID_USUARIO_SAIDA_EXAME | NUMBER | Y |  |
| 18 | DT_ENTRADA_EXAME | DATE | Y |  |
| 19 | DT_SAIDA_EXAME | DATE | Y |  |
| 20 | NR_ALTURA | NUMBER | Y |  |
| 21 | NR_PESO | NUMBER | Y |  |
| 22 | SN_PENDENTE | CHAR | Y |  |
| 23 | DT_FINALIZACAO | DATE | Y |  |
| 24 | DT_LAUDADO | DATE | Y |  |
| 25 | DT_PEDIDO | DATE | Y |  |
| 26 | DT_IMPRESSO | DATE | Y |  |
| 27 | DT_ASSINADO | DATE | Y |  |
| 28 | DT_DIGITADO | DATE | Y |  |
| 29 | DT_REVISADO | DATE | Y |  |
| 30 | DT_REVISADO_FINAL | DATE | Y |  |
| 31 | DT_ENTREGA | DATE | Y |  |
| 32 | NM_ACOMODACAO_HIS | VARCHAR2 | Y |  |
| 33 | NM_LOCAL_ENTREGA_HIS | VARCHAR2 | Y |  |
| 34 | NM_INDICACAO_HIS | VARCHAR2 | Y |  |
| 35 | SN_MIDIA_RESULTADO | CHAR | Y |  |
| 36 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 37 | ID_USUARIO_LIBERACAO | NUMBER | Y |  |
| 38 | ID_USUARIO_ONLINE | NUMBER | Y |  |
| 39 | DS_OPERACAO_ONLINE | VARCHAR2 | Y |  |
| 40 | SN_SMS_ENVIADO | CHAR | Y |  |
| 41 | DS_LAUDO_RTF | CLOB | Y |  |
| 42 | DS_LAUDO_TXT | CLOB | Y |  |
| 43 | DS_LAUDO_HTML | CLOB | Y |  |
| 44 | SN_NORMAL | CHAR | Y |  |
| 45 | ID_JUSTIFICATIVA | NUMBER | Y |  |
| 46 | ID_USUARIO_JUSTIFICATIVA | NUMBER | Y |  |
| 47 | DS_LEITO_HIS | VARCHAR2 | Y |  |
| 48 | DS_REGIAO_EXAMINADA | VARCHAR2 | Y |  |
| 49 | SN_AGRUPAR_IMAGEM | CHAR | Y |  |
| 50 | SN_AGRUPAR_LAUDO | CHAR | Y |  |
| 51 | ID_DIAGNOSTICO_RADIO | NUMBER | Y |  |
| 52 | ID_DIAGNOSTICO_CLINICO | NUMBER | Y |  |
| 53 | ID_DIAGNOSTICO_CIRURGICO | NUMBER | Y |  |
| 54 | DS_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 55 | DT_JUSTIFICATIVA | DATE | Y |  |
| 56 | DS_LAUDO_SEM_IMAGEM | VARCHAR2 | Y |  |
| 57 | DT_DS_LAUDO_SEM_IMAGEM | DATE | Y |  |
| 58 | ID_USUARIO_LAUDO_SEM_IMAGEM | NUMBER | Y |  |
| 59 | DS_LAUDO_PDF | BLOB | Y |  |
| 60 | DS_CERTIFICACAO_DIGITAL | VARCHAR2 | Y |  |
| 61 | SN_ATIVO | CHAR | Y |  |
| 62 | DT_STUDY | DATE | Y |  |
| 63 | DT_ENTREGA_PREVISTA | DATE | Y |  |
| 64 | DT_DITADO | DATE | Y |  |
| 65 | ID_MEDICO_DITADO | NUMBER | Y |  |
| 66 | ID_SETOR_EXECUTANTE | NUMBER | Y |  |
| 67 | LAU_ID | NUMBER | Y |  |
| 68 | ID_ETAPA_ATUAL | NUMBER | Y |  |
| 69 | DS_PRESCRICAO | CHAR | Y |  |
| 70 | SN_PRESCRICAO_URGENTE | CHAR | Y |  |
| 71 | SN_EXAME_CONCLUIDO | CHAR | Y |  |
| 72 | LAYOUT_NOVO_EDITOR | BLOB | Y |  |
| 73 | ID_MEDICO_UNIDADE_ONLINE | NUMBER | Y |  |
| 74 | CD_STUDY_UID | VARCHAR2 | Y |  |
| 75 | DS_LAUDO_XML_CERTIFICADO | CLOB | Y |  |
| 76 | DT_ANAMNESE | DATE | Y |  |
| 77 | SN_SMS_MEDICO_EXEC_ENVIADO | CHAR | Y |  |
| 78 | SN_EMAIL_MEDCICO_EXEC_ENVIADO | CHAR | Y |  |
| 79 | SN_EMAIL_ENVIADO | CHAR | Y |  |
| 80 | ID_JUSTIFICATIVA_CANCELAMENTO | NUMBER | Y |  |
| 81 | SN_STUDY_PED | CHAR | N |  |
| 82 | DS_LAUDO_PDF_MARCADAGUA | BLOB | Y |  |
| 83 | DS_LAUDO_RTF_ANSI | CLOB | Y |  |
| 84 | DS_RTF_BKP | CLOB | Y |  |
| 85 | MESSAGE_ID | NUMBER | Y |  |
| 86 | TP_INTEGRACAO_LAUDO | CHAR | N | Descrição de alguma observação em caso de erro da integração IDCE X MV |
| 87 | DS_INTEGRACAO_LAUDO | VARCHAR2 | Y |  |
| 88 | ID_TIPO_PRIORIDADE | NUMBER | Y |  |
| 89 | ID_JUSTIFICATIVA_IMAGEM | NUMBER | Y |  |
| 90 | DS_JUSTIFICATIVA_IMAGEM | VARCHAR2 | Y |  |
| 91 | DT_JUSTIFICATIVA_IMAGEM | DATE | Y |  |
| 92 | SN_TERCEIRA_OPINIAO | CHAR | Y |  |
| 93 | ID_EXAME_PEDIDO_PAI | NUMBER | Y | ATENÇÃO: ESTE ID É PARA DEFINIR UM VINCULO, NÃO REPRESENTA MAIS O ID_EXAME_PEDIDO DESTA TABELA |
| 94 | SN_PANICO | CHAR | N |  |
| 95 | DT_CERTIFICADO | DATE | Y |  |
| 96 | ID_USUARIO_MARCAR_CERTIFICADO | NUMBER | Y |  |
| 97 | SN_PROVISORIO | CHAR | N |  |
| 98 | DT_DISTRIBUICAO_EXECUTANTE | DATE | Y |  |
| 99 | DT_DISTRIBUICAO_REVISOR | DATE | Y |  |
| 100 | ID_USU_DISTRIBUICAO_EXECUTANTE | NUMBER | Y |  |
| 101 | ID_USU_DISTRIBUICAO_REVISOR | NUMBER | Y |  |
| 102 | SN_DISTRIBUICAO_EXECUTANTE | CHAR | N |  |
| 103 | SN_DISTRIBUICAO_REVISOR | CHAR | N |  |
| 104 | SN_VISUALIZADO_PORTAL | CHAR | N |  |
| 105 | QT_IMAGEM_PACS | NUMBER | Y |  |
| 106 | DT_NAO_CONFORMIDADE | DATE | Y |  |
| 107 | DS_NAO_CONFORMIDADE | VARCHAR2 | Y |  |
| 108 | ID_USU_NAO_CONFORMIDADE | NUMBER | Y |  |
| 109 | DS_NAO_CONFORMIDADE_CANCEL | VARCHAR2 | Y |  |
| 110 | DS_OPER_REGANS | VARCHAR2 | Y | Registro da Operadora de Saúde na ANS |
| 111 | DS_OPER_NUMCARTEIRA | VARCHAR2 | Y | Número do Cartão do Beneficiário na Operadora |
| 112 | DS_OPER_NUMGUIA | VARCHAR2 | Y | Número da Autorização da Guia TISS |
| 113 | DS_OPER_EXAME | VARCHAR2 | Y | Código de cada exame contido na Guia |
| 114 | DT_ATUALIZACAO_ERRATA | DATE | Y |  |
| 115 | ID_DOCUMENTO_CARTORIO | NUMBER | Y |  |
| 116 | NM_CERT_DIGITAL | VARCHAR2 | Y |  |
| 117 | NM_FORNECEDOR_CERT_DIGITAL | VARCHAR2 | Y |  |
| 118 | DT_FORNECEDOR_CERT_DIGITAL | DATE | Y |  |
| 119 | NR_CPF_CERT_DIGITAL | VARCHAR2 | Y |  |
| 120 | DT_NAO_CONFORMIDADE_RESOLVIDA | DATE | Y |  |
| 121 | DS_INCONFORMIDADE | VARCHAR2 | Y |  |
| 122 | CD_STATUS_IA | NUMBER | Y | Enumerador com status da Inteligência Artificial (IA) |
| 123 | DS_PANICO | VARCHAR2 | Y |  |
| 124 | NM_TECNICO_RESPONSAVEL | VARCHAR2 | Y |  |
| 125 | DS_EMAIL_ENVIADO | VARCHAR2 | Y |  |
| 126 | DS_IG | VARCHAR2 | Y |  |
| 127 | DT_ULTIMA_US | DATE | Y |  |
| 128 | DS_IG_ULTIMA_US | VARCHAR2 | Y |  |
| 129 | DS_IG_CORRIGIDA | VARCHAR2 | Y |  |
| 130 | ID_MEDICO_ORIENTADOR | NUMBER | Y |  |
| 131 | DT_MEDICO_ORIENTADOR | DATE | Y |  |
| 132 | ID_USU_ENTREGA | NUMBER | Y |  |
| 133 | SN_CANCELADO | CHAR | Y |  |
| 134 | DT_CADASTRO_PANICO | DATE | Y |  |
| 135 | NM_CONTATO_PANICO | VARCHAR2 | Y |  |
| 136 | DT_REFAZER | DATE | Y |  |
| 137 | DS_LAUDO_RTF_REFEITO | CLOB | Y |  |
| 138 | DS_LAUDO_RTF_ANTERIOR | CLOB | Y |  |
| 139 | ID_JUSTIFICATIVA_REFAZER | NUMBER | Y |  |
| 140 | DS_JUSTIFICATIVA_REFAZER | VARCHAR2 | Y |  |
| 141 | ID_EXECUTANTE_ANTERIOR | NUMBER | Y |  |
| 142 | ID_REVISOR_ANTERIOR | NUMBER | Y |  |
| 143 | DS_JUST_ERRATA | VARCHAR2 | Y |  |
| 144 | DT_JUST_ERRATA | DATE | Y |  |
| 145 | ID_USUARIO_JUST_ERRATA | NUMBER | Y |  |
| 146 | ID_JUST_ERRATA | NUMBER | Y |  |
| 147 | ID_USUARIO_PARECER | NUMBER | Y |  |
| 148 | DS_PARECER | VARCHAR2 | Y |  |
| 149 | DT_CADASTRO_PARECER | DATE | Y |  |
| 150 | DT_ALTERACAO_PARECER | DATE | Y | Data Da Alteracao Do Parecer |
| 151 | TP_ACEITE_PARECER | CHAR | Y |  |
| 152 | DT_ACEITE_PARECER | DATE | Y |  |
| 153 | ID_USUARIO_ACEITE_PARECER | NUMBER | Y | Indicador Do UsuarioAceite Do Parecer |
| 154 | ID_JUSTIFICATIVA_PARECER | NUMBER | Y | Indicador Da Justificativa Do Parecer |
| 155 | DS_JUSTIFICATIVA_PARECER | VARCHAR2 | Y | Descricao Da Justificativa Do Parecer |
| 156 | DT_JUSTIFICATIVA_PARECER | DATE | Y | Data Da Justificativa Do Parecer |
| 157 | ID_USUARIO_JUST_PARECER | NUMBER | Y | Indicador Do Usuario Da Justificativa Do Parecer |
| 158 | DT_ULT_SECUNDARIO | DATE | Y | Data do ultimo exame secundario |
| 159 | TP_ACEITE_LAUDO | CHAR | Y | TIPO DE ACEITE DO LAUDO |
| 160 | DT_ACEITE_LAUDO | DATE | Y | DATA DO ACEITE DO LAUDO |
| 161 | ID_USUARIO_ACEITE_LAUDO | NUMBER | Y | INDICADOR DO USUARIOACEITE DO LAUDO |
| 162 | ID_JUSTIFICATIVA_LAUDO | NUMBER | Y | INDICADOR DA JUSTIFICATIVA DO LAUDO |
| 163 | DS_JUSTIFICATIVA_LAUDO | VARCHAR2 | Y | DESCRICAO DA JUSTIFICATIVA DO LAUDO |
| 164 | DT_JUSTIFICATIVA_LAUDO | DATE | Y | DATA DA JUSTIFICATIVA DO LAUDO |
| 165 | ID_USUARIO_JUST_LAUDO | NUMBER | Y | INDICADOR DO USUARIO DA JUSTIFICATIVA DO LAUDO |
| 166 | SN_EMAIL_ENVIADO_SOLICITANTE | CHAR | Y |  |
| 167 | SN_URGENTE_HIS | CHAR | Y | (S/N) URGÊNCIA HIS |
| 168 | DT_COLETA_HIS | DATE | Y | Data da coleta do pedido caso esteja null, deve ser colocada a informação da data do pedido |
| 169 | DS_DPP | VARCHAR2 | Y | Data Provável do Parto |
| 170 | ID_JUSTIFICATIVA_SECUNDARIO | NUMBER | Y | ID da justificativa do exame secundário |
| 171 | DT_JUSTIFICATIVA_SECUNDARIO | DATE | Y | Data da justificativa do exame secundário |
| 172 | DS_JUSTIFICATIVA_SECUNDARIO | VARCHAR2 | Y | Descrição da justificativa do exame secundário |
| 173 | ID_USUARIO_ALTERACAO_PARECER | NUMBER | Y | Indicador Do Usuario Alteração Parecer |
| 174 | NR_COMENTARIO | NUMBER | Y | Número de comentários associados ao laudo |
| 175 | NR_ANEXOS | NUMBER | Y | Número de pedidos medicos associados ao laudo |
| 176 | DS_ULTIMO_COMENTARIO | VARCHAR2 | Y | Texto do ultimo comentário |
| 177 | ID_USUARIO_JUST_DESBLOQ_LAUDO | NUMBER | Y | Indicador do usuario da justificativa de desbloqueio das acoes no laudo |
| 178 | DT_STUDY_FAT | DATE | Y | Data do estudo usada na nova rotina de Pedido com Flag Azul |
| 179 | TP_CRITICIDADE | VARCHAR2 | N | Criticidade do laudo. A-Alto (Crítico), M-Médio, B-Baixo |
| 180 | DT_NAO_CONFORMIDADE_CANC | DATE | Y | Data de cancelamento da não conformidade |
| 181 | ID_JUST_SLA | NUMBER | Y | Identificador da justificativa de laudo dentro do SLA |
| 182 | DS_JUST_SLA | VARCHAR2 | Y | Descricao da justificativa de laudo dentro do SLA |
| 183 | DT_JUST_SLA | DATE | Y | Data da justificativca de SLA |
| 184 | ID_USUARIO_JUST_SLA | NUMBER | Y | Identificador do usuario que inseriu a justificativa de SLA |
| 185 | DT_LAST_IMAGE | DATE | Y | Data da ultima imagem |
| 186 | DT_BLOQUEIO_LAUDO_PORTAL_PAC | DATE | Y | Data de bloqueio da visualização do laudo pelo paciente no portal de exames |

---

## IDCE.RS_LAU_EXAME_PEDIDO_BIRADS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 2 | TP_CLASSIFICACAO | VARCHAR2 | N |  |
| 3 | SN_CRITICO | CHAR | N |  |
| 4 | DS_DESCRICAO | VARCHAR2 | Y |  |
| 5 | ID_USUARIO_CADASTRO | NUMBER | N |  |
| 6 | DT_CADASTRO | DATE | N |  |
| 7 | ID_USUARIO_ALTERACAO | NUMBER | Y |  |
| 8 | DT_ALTERACAO | DATE | Y |  |

---

## IDCE.RS_LAU_EXAME_PEDIDO_BKP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 2 | DT_CADASTRO | DATE | N |  |
| 3 | DT_PEDIDO | DATE | Y |  |

---

## IDCE.RS_LAU_EXAME_PEDIDO_BKP230222

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 2 | ID_PEDIDO_EXAME | NUMBER | N |  |
| 3 | ID_MEDICO_EXECUTANTE | NUMBER | Y |  |
| 4 | ID_MEDICO_REVISOR | NUMBER | Y |  |
| 5 | ID_MEDICO_REVISOR_FINAL | NUMBER | Y |  |
| 6 | ID_SALA | NUMBER | Y |  |
| 7 | DT_CADASTRO | DATE | N |  |
| 8 | DT_ALTERACAO | DATE | Y |  |
| 9 | ID_EXAME_UNIDADE | NUMBER | Y |  |
| 10 | ID_USUARIO_INCLUSAO | NUMBER | Y |  |
| 11 | ID_USUARIO_ALTERACAO | NUMBER | Y |  |
| 12 | DT_DUM | DATE | Y |  |
| 13 | CD_ITEM_PEDIDO_HIS | VARCHAR2 | Y |  |
| 14 | ID_ORIGEM_ATENDIMENTO | NUMBER | Y |  |
| 15 | ID_SETOR | NUMBER | Y |  |
| 16 | ID_USUARIO_ENTRADA_EXAME | NUMBER | Y |  |
| 17 | ID_USUARIO_SAIDA_EXAME | NUMBER | Y |  |
| 18 | DT_ENTRADA_EXAME | DATE | Y |  |
| 19 | DT_SAIDA_EXAME | DATE | Y |  |
| 20 | NR_ALTURA | NUMBER | Y |  |
| 21 | NR_PESO | NUMBER | Y |  |
| 22 | SN_PENDENTE | CHAR | Y |  |
| 23 | DT_FINALIZACAO | DATE | Y |  |
| 24 | DT_LAUDADO | DATE | Y |  |
| 25 | DT_PEDIDO | DATE | Y |  |
| 26 | DT_IMPRESSO | DATE | Y |  |
| 27 | DT_ASSINADO | DATE | Y |  |
| 28 | DT_DIGITADO | DATE | Y |  |
| 29 | DT_REVISADO | DATE | Y |  |
| 30 | DT_REVISADO_FINAL | DATE | Y |  |
| 31 | DT_ENTREGA | DATE | Y |  |
| 32 | NM_ACOMODACAO_HIS | VARCHAR2 | Y |  |
| 33 | NM_LOCAL_ENTREGA_HIS | VARCHAR2 | Y |  |
| 34 | NM_INDICACAO_HIS | VARCHAR2 | Y |  |
| 35 | SN_MIDIA_RESULTADO | CHAR | Y |  |
| 36 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 37 | ID_USUARIO_LIBERACAO | NUMBER | Y |  |
| 38 | ID_USUARIO_ONLINE | NUMBER | Y |  |
| 39 | DS_OPERACAO_ONLINE | VARCHAR2 | Y |  |
| 40 | SN_SMS_ENVIADO | CHAR | Y |  |
| 41 | DS_LAUDO_RTF | CLOB | Y |  |
| 42 | DS_LAUDO_TXT | CLOB | Y |  |
| 43 | DS_LAUDO_HTML | CLOB | Y |  |
| 44 | SN_NORMAL | CHAR | Y |  |
| 45 | ID_JUSTIFICATIVA | NUMBER | Y |  |
| 46 | ID_USUARIO_JUSTIFICATIVA | NUMBER | Y |  |
| 47 | DS_LEITO_HIS | VARCHAR2 | Y |  |
| 48 | DS_REGIAO_EXAMINADA | VARCHAR2 | Y |  |
| 49 | SN_AGRUPAR_IMAGEM | CHAR | Y |  |
| 50 | SN_AGRUPAR_LAUDO | CHAR | Y |  |
| 51 | ID_DIAGNOSTICO_RADIO | NUMBER | Y |  |
| 52 | ID_DIAGNOSTICO_CLINICO | NUMBER | Y |  |
| 53 | ID_DIAGNOSTICO_CIRURGICO | NUMBER | Y |  |
| 54 | DS_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 55 | DT_JUSTIFICATIVA | DATE | Y |  |
| 56 | DS_LAUDO_SEM_IMAGEM | VARCHAR2 | Y |  |
| 57 | DT_DS_LAUDO_SEM_IMAGEM | DATE | Y |  |
| 58 | ID_USUARIO_LAUDO_SEM_IMAGEM | NUMBER | Y |  |
| 59 | DS_LAUDO_PDF | BLOB | Y |  |
| 60 | DS_CERTIFICACAO_DIGITAL | VARCHAR2 | Y |  |
| 61 | SN_ATIVO | CHAR | Y |  |
| 62 | DT_STUDY | DATE | Y |  |
| 63 | DT_ENTREGA_PREVISTA | DATE | Y |  |
| 64 | DT_DITADO | DATE | Y |  |
| 65 | ID_MEDICO_DITADO | NUMBER | Y |  |
| 66 | ID_SETOR_EXECUTANTE | NUMBER | Y |  |
| 67 | LAU_ID | NUMBER | Y |  |
| 68 | ID_ETAPA_ATUAL | NUMBER | Y |  |
| 69 | DS_PRESCRICAO | CHAR | Y |  |
| 70 | SN_PRESCRICAO_URGENTE | CHAR | Y |  |
| 71 | SN_EXAME_CONCLUIDO | CHAR | Y |  |
| 72 | LAYOUT_NOVO_EDITOR | BLOB | Y |  |
| 73 | ID_MEDICO_UNIDADE_ONLINE | NUMBER | Y |  |
| 74 | CD_STUDY_UID | VARCHAR2 | Y |  |
| 75 | DS_LAUDO_XML_CERTIFICADO | CLOB | Y |  |
| 76 | DT_ANAMNESE | DATE | Y |  |
| 77 | SN_SMS_MEDICO_EXEC_ENVIADO | CHAR | Y |  |
| 78 | SN_EMAIL_MEDCICO_EXEC_ENVIADO | CHAR | Y |  |
| 79 | SN_EMAIL_ENVIADO | CHAR | Y |  |
| 80 | ID_JUSTIFICATIVA_CANCELAMENTO | NUMBER | Y |  |
| 81 | SN_STUDY_PED | CHAR | N |  |
| 82 | DS_LAUDO_PDF_MARCADAGUA | BLOB | Y |  |
| 83 | DS_LAUDO_RTF_ANSI | CLOB | Y |  |
| 84 | DS_RTF_BKP | CLOB | Y |  |
| 85 | MESSAGE_ID | NUMBER | Y |  |
| 86 | TP_INTEGRACAO_LAUDO | CHAR | N |  |
| 87 | DS_INTEGRACAO_LAUDO | VARCHAR2 | Y |  |
| 88 | ID_TIPO_PRIORIDADE | NUMBER | Y |  |
| 89 | ID_JUSTIFICATIVA_IMAGEM | NUMBER | Y |  |
| 90 | DS_JUSTIFICATIVA_IMAGEM | VARCHAR2 | Y |  |
| 91 | DT_JUSTIFICATIVA_IMAGEM | DATE | Y |  |
| 92 | SN_TERCEIRA_OPINIAO | CHAR | Y |  |
| 93 | ID_EXAME_PEDIDO_PAI | NUMBER | Y |  |
| 94 | SN_PANICO | CHAR | N |  |
| 95 | DT_CERTIFICADO | DATE | Y |  |
| 96 | ID_USUARIO_MARCAR_CERTIFICADO | NUMBER | Y |  |
| 97 | SN_PROVISORIO | CHAR | N |  |
| 98 | DT_DISTRIBUICAO_EXECUTANTE | DATE | Y |  |
| 99 | DT_DISTRIBUICAO_REVISOR | DATE | Y |  |
| 100 | ID_USU_DISTRIBUICAO_EXECUTANTE | NUMBER | Y |  |
| 101 | ID_USU_DISTRIBUICAO_REVISOR | NUMBER | Y |  |
| 102 | SN_DISTRIBUICAO_EXECUTANTE | CHAR | N |  |
| 103 | SN_DISTRIBUICAO_REVISOR | CHAR | N |  |
| 104 | SN_VISUALIZADO_PORTAL | CHAR | N |  |
| 105 | QT_IMAGEM_PACS | NUMBER | Y |  |
| 106 | DT_NAO_CONFORMIDADE | DATE | Y |  |
| 107 | DS_NAO_CONFORMIDADE | VARCHAR2 | Y |  |
| 108 | ID_USU_NAO_CONFORMIDADE | NUMBER | Y |  |
| 109 | DS_NAO_CONFORMIDADE_CANCEL | VARCHAR2 | Y |  |
| 110 | DS_OPER_REGANS | VARCHAR2 | Y |  |
| 111 | DS_OPER_NUMCARTEIRA | VARCHAR2 | Y |  |
| 112 | DS_OPER_NUMGUIA | VARCHAR2 | Y |  |
| 113 | DS_OPER_EXAME | VARCHAR2 | Y |  |
| 114 | DT_ATUALIZACAO_ERRATA | DATE | Y |  |
| 115 | ID_DOCUMENTO_CARTORIO | NUMBER | Y |  |
| 116 | NM_CERT_DIGITAL | VARCHAR2 | Y |  |
| 117 | NM_FORNECEDOR_CERT_DIGITAL | VARCHAR2 | Y |  |
| 118 | DT_FORNECEDOR_CERT_DIGITAL | DATE | Y |  |
| 119 | NR_CPF_CERT_DIGITAL | VARCHAR2 | Y |  |
| 120 | DT_NAO_CONFORMIDADE_RESOLVIDA | DATE | Y |  |
| 121 | DS_INCONFORMIDADE | VARCHAR2 | Y |  |
| 122 | CD_STATUS_IA | NUMBER | Y |  |
| 123 | DS_PANICO | VARCHAR2 | Y |  |
| 124 | NM_TECNICO_RESPONSAVEL | VARCHAR2 | Y |  |
| 125 | DS_EMAIL_ENVIADO | VARCHAR2 | Y |  |
| 126 | DS_IG | VARCHAR2 | Y |  |
| 127 | DT_ULTIMA_US | DATE | Y |  |
| 128 | DS_IG_ULTIMA_US | VARCHAR2 | Y |  |
| 129 | DS_IG_CORRIGIDA | VARCHAR2 | Y |  |
| 130 | ID_MEDICO_ORIENTADOR | NUMBER | Y |  |
| 131 | DT_MEDICO_ORIENTADOR | DATE | Y |  |

---

## IDCE.RS_LAU_EXAME_PEDIDO_BKP240621

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 2 | ID_PEDIDO_EXAME | NUMBER | N |  |
| 3 | ID_MEDICO_EXECUTANTE | NUMBER | Y |  |
| 4 | ID_MEDICO_REVISOR | NUMBER | Y |  |
| 5 | ID_MEDICO_REVISOR_FINAL | NUMBER | Y |  |
| 6 | ID_SALA | NUMBER | Y |  |
| 7 | DT_CADASTRO | DATE | N |  |
| 8 | DT_ALTERACAO | DATE | Y |  |
| 9 | ID_EXAME_UNIDADE | NUMBER | Y |  |
| 10 | ID_USUARIO_INCLUSAO | NUMBER | Y |  |
| 11 | ID_USUARIO_ALTERACAO | NUMBER | Y |  |
| 12 | DT_DUM | DATE | Y |  |
| 13 | CD_ITEM_PEDIDO_HIS | VARCHAR2 | Y |  |
| 14 | ID_ORIGEM_ATENDIMENTO | NUMBER | Y |  |
| 15 | ID_SETOR | NUMBER | Y |  |
| 16 | ID_USUARIO_ENTRADA_EXAME | NUMBER | Y |  |
| 17 | ID_USUARIO_SAIDA_EXAME | NUMBER | Y |  |
| 18 | DT_ENTRADA_EXAME | DATE | Y |  |
| 19 | DT_SAIDA_EXAME | DATE | Y |  |
| 20 | NR_ALTURA | NUMBER | Y |  |
| 21 | NR_PESO | NUMBER | Y |  |
| 22 | SN_PENDENTE | CHAR | Y |  |
| 23 | DT_FINALIZACAO | DATE | Y |  |
| 24 | DT_LAUDADO | DATE | Y |  |
| 25 | DT_PEDIDO | DATE | Y |  |
| 26 | DT_IMPRESSO | DATE | Y |  |
| 27 | DT_ASSINADO | DATE | Y |  |
| 28 | DT_DIGITADO | DATE | Y |  |
| 29 | DT_REVISADO | DATE | Y |  |
| 30 | DT_REVISADO_FINAL | DATE | Y |  |
| 31 | DT_ENTREGA | DATE | Y |  |
| 32 | NM_ACOMODACAO_HIS | VARCHAR2 | Y |  |
| 33 | NM_LOCAL_ENTREGA_HIS | VARCHAR2 | Y |  |
| 34 | NM_INDICACAO_HIS | VARCHAR2 | Y |  |
| 35 | SN_MIDIA_RESULTADO | CHAR | Y |  |
| 36 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 37 | ID_USUARIO_LIBERACAO | NUMBER | Y |  |
| 38 | ID_USUARIO_ONLINE | NUMBER | Y |  |
| 39 | DS_OPERACAO_ONLINE | VARCHAR2 | Y |  |
| 40 | SN_SMS_ENVIADO | CHAR | Y |  |
| 41 | DS_LAUDO_RTF | CLOB | Y |  |
| 42 | DS_LAUDO_TXT | CLOB | Y |  |
| 43 | DS_LAUDO_HTML | CLOB | Y |  |
| 44 | SN_NORMAL | CHAR | Y |  |
| 45 | ID_JUSTIFICATIVA | NUMBER | Y |  |
| 46 | ID_USUARIO_JUSTIFICATIVA | NUMBER | Y |  |
| 47 | DS_LEITO_HIS | VARCHAR2 | Y |  |
| 48 | DS_REGIAO_EXAMINADA | VARCHAR2 | Y |  |
| 49 | SN_AGRUPAR_IMAGEM | CHAR | Y |  |
| 50 | SN_AGRUPAR_LAUDO | CHAR | Y |  |
| 51 | ID_DIAGNOSTICO_RADIO | NUMBER | Y |  |
| 52 | ID_DIAGNOSTICO_CLINICO | NUMBER | Y |  |
| 53 | ID_DIAGNOSTICO_CIRURGICO | NUMBER | Y |  |
| 54 | DS_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 55 | DT_JUSTIFICATIVA | DATE | Y |  |
| 56 | DS_LAUDO_SEM_IMAGEM | VARCHAR2 | Y |  |
| 57 | DT_DS_LAUDO_SEM_IMAGEM | DATE | Y |  |
| 58 | ID_USUARIO_LAUDO_SEM_IMAGEM | NUMBER | Y |  |
| 59 | DS_LAUDO_PDF | BLOB | Y |  |
| 60 | DS_CERTIFICACAO_DIGITAL | VARCHAR2 | Y |  |
| 61 | SN_ATIVO | CHAR | Y |  |
| 62 | DT_STUDY | DATE | Y |  |
| 63 | DT_ENTREGA_PREVISTA | DATE | Y |  |
| 64 | DT_DITADO | DATE | Y |  |
| 65 | ID_MEDICO_DITADO | NUMBER | Y |  |
| 66 | ID_SETOR_EXECUTANTE | NUMBER | Y |  |
| 67 | LAU_ID | NUMBER | Y |  |
| 68 | ID_ETAPA_ATUAL | NUMBER | Y |  |
| 69 | DS_PRESCRICAO | CHAR | Y |  |
| 70 | SN_PRESCRICAO_URGENTE | CHAR | Y |  |
| 71 | SN_EXAME_CONCLUIDO | CHAR | Y |  |
| 72 | LAYOUT_NOVO_EDITOR | BLOB | Y |  |
| 73 | ID_MEDICO_UNIDADE_ONLINE | NUMBER | Y |  |
| 74 | CD_STUDY_UID | VARCHAR2 | Y |  |
| 75 | DS_LAUDO_XML_CERTIFICADO | CLOB | Y |  |
| 76 | DT_ANAMNESE | DATE | Y |  |
| 77 | SN_SMS_MEDICO_EXEC_ENVIADO | CHAR | Y |  |
| 78 | SN_EMAIL_MEDCICO_EXEC_ENVIADO | CHAR | Y |  |
| 79 | SN_EMAIL_ENVIADO | CHAR | Y |  |
| 80 | ID_JUSTIFICATIVA_CANCELAMENTO | NUMBER | Y |  |
| 81 | SN_STUDY_PED | CHAR | N |  |
| 82 | DS_LAUDO_PDF_MARCADAGUA | BLOB | Y |  |
| 83 | DS_LAUDO_RTF_ANSI | CLOB | Y |  |
| 84 | DS_RTF_BKP | CLOB | Y |  |
| 85 | MESSAGE_ID | NUMBER | Y |  |
| 86 | TP_INTEGRACAO_LAUDO | CHAR | N |  |
| 87 | DS_INTEGRACAO_LAUDO | VARCHAR2 | Y |  |
| 88 | ID_TIPO_PRIORIDADE | NUMBER | Y |  |
| 89 | ID_JUSTIFICATIVA_IMAGEM | NUMBER | Y |  |
| 90 | DS_JUSTIFICATIVA_IMAGEM | VARCHAR2 | Y |  |
| 91 | DT_JUSTIFICATIVA_IMAGEM | DATE | Y |  |
| 92 | SN_TERCEIRA_OPINIAO | CHAR | Y |  |
| 93 | ID_EXAME_PEDIDO_PAI | NUMBER | Y |  |
| 94 | SN_PANICO | CHAR | N |  |
| 95 | DT_CERTIFICADO | DATE | Y |  |
| 96 | ID_USUARIO_MARCAR_CERTIFICADO | NUMBER | Y |  |
| 97 | SN_PROVISORIO | CHAR | N |  |
| 98 | DT_DISTRIBUICAO_EXECUTANTE | DATE | Y |  |
| 99 | DT_DISTRIBUICAO_REVISOR | DATE | Y |  |
| 100 | ID_USU_DISTRIBUICAO_EXECUTANTE | NUMBER | Y |  |
| 101 | ID_USU_DISTRIBUICAO_REVISOR | NUMBER | Y |  |
| 102 | SN_DISTRIBUICAO_EXECUTANTE | CHAR | N |  |
| 103 | SN_DISTRIBUICAO_REVISOR | CHAR | N |  |
| 104 | SN_VISUALIZADO_PORTAL | CHAR | N |  |
| 105 | QT_IMAGEM_PACS | NUMBER | Y |  |
| 106 | DT_NAO_CONFORMIDADE | DATE | Y |  |
| 107 | DS_NAO_CONFORMIDADE | VARCHAR2 | Y |  |
| 108 | ID_USU_NAO_CONFORMIDADE | NUMBER | Y |  |
| 109 | DS_NAO_CONFORMIDADE_CANCEL | VARCHAR2 | Y |  |
| 110 | DS_OPER_REGANS | VARCHAR2 | Y |  |
| 111 | DS_OPER_NUMCARTEIRA | VARCHAR2 | Y |  |
| 112 | DS_OPER_NUMGUIA | VARCHAR2 | Y |  |
| 113 | DS_OPER_EXAME | VARCHAR2 | Y |  |
| 114 | DT_ATUALIZACAO_ERRATA | DATE | Y |  |
| 115 | ID_DOCUMENTO_CARTORIO | NUMBER | Y |  |
| 116 | NM_CERT_DIGITAL | VARCHAR2 | Y |  |
| 117 | NM_FORNECEDOR_CERT_DIGITAL | VARCHAR2 | Y |  |
| 118 | DT_FORNECEDOR_CERT_DIGITAL | DATE | Y |  |
| 119 | NR_CPF_CERT_DIGITAL | VARCHAR2 | Y |  |
| 120 | DT_NAO_CONFORMIDADE_RESOLVIDA | DATE | Y |  |
| 121 | DS_INCONFORMIDADE | VARCHAR2 | Y |  |
| 122 | CD_STATUS_IA | NUMBER | Y |  |
| 123 | DS_PANICO | VARCHAR2 | Y |  |
| 124 | NM_TECNICO_RESPONSAVEL | VARCHAR2 | Y |  |
| 125 | DS_EMAIL_ENVIADO | VARCHAR2 | Y |  |
| 126 | DS_IG | VARCHAR2 | Y |  |
| 127 | DT_ULTIMA_US | DATE | Y |  |
| 128 | DS_IG_ULTIMA_US | VARCHAR2 | Y |  |
| 129 | DS_IG_CORRIGIDA | VARCHAR2 | Y |  |

---

## IDCE.RS_LAU_EXAME_PEDIDO_CARTORIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME_PEDIDO_CARTORIO | NUMBER | N |  |
| 2 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 3 | DS_LAUDO_RTF | CLOB | N |  |
| 4 | DT_ENVIO | DATE | N |  |
| 5 | DT_RESPOSTA | DATE | Y |  |
| 6 | ID_DOCUMENTO_CARTORIO | NUMBER | Y |  |
| 7 | CD_STATUS | NUMBER | Y |  |
| 8 | DS_STATUS | VARCHAR2 | Y |  |
| 9 | ID_USUARIO_ENVIO | NUMBER | N |  |
| 10 | DT_CONCLUSAO | DATE | Y |  |
| 11 | ID_EXAME_PEDIDO_ERRATA | NUMBER | Y |  |
| 12 | DS_LAUDO_PDF | BLOB | Y |  |

---

## IDCE.RS_LAU_EXAME_PEDIDO_CD

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_CD | NUMBER | N |  |
| 2 | ID_EXAME_PEDIDO | NUMBER | N |  |

---

## IDCE.RS_LAU_EXAME_PEDIDO_COMENTARIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_COMENTARIO | NUMBER | N |  |
| 2 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 3 | DS_COMENTARIO | VARCHAR2 | Y |  |
| 4 | DT_CADASTRO | DATE | N |  |
| 5 | DT_ALTERACAO | DATE | Y |  |
| 6 | ID_USUARIO | NUMBER | N |  |
| 7 | ID_TIPO_PRIORIDADE | NUMBER | Y |  |

---

## IDCE.RS_LAU_EXAME_PEDIDO_ERRATA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME_PEDIDO_ERRATA | NUMBER | N |  |
| 2 | ID_EXAME_PEDIDO | NUMBER | Y |  |
| 3 | DT_ERRATA | DATE | Y |  |
| 4 | ID_MEDICO_UNIDADE | NUMBER | Y |  |
| 5 | DS_ERRATA | CLOB | Y |  |
| 6 | ID_USUARIO | NUMBER | Y |  |
| 7 | SN_TEXTO_ORIGINAL | CHAR | N |  |
| 8 | SN_PENDENTE | CHAR | N |  |
| 9 | TP_REGISTRO | CHAR | Y |  |
| 10 | SN_ATIVO | CHAR | Y |  |

---

## IDCE.RS_LAU_EXAME_PEDIDO_EXT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 2 | DS_PDF | BLOB | N |  |
| 3 | DT_PDF | DATE | N |  |

---

## IDCE.RS_LAU_EXAME_PEDIDO_INATIVO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 2 | ID_PEDIDO_EXAME | NUMBER | N |  |
| 3 | ID_MEDICO_EXECUTANTE | NUMBER | Y |  |
| 4 | ID_MEDICO_REVISOR | NUMBER | Y |  |
| 5 | ID_MEDICO_REVISOR_FINAL | NUMBER | Y |  |
| 6 | ID_SALA | NUMBER | Y |  |
| 7 | DT_CADASTRO | DATE | N |  |
| 8 | DT_ALTERACAO | DATE | Y |  |
| 9 | ID_EXAME_UNIDADE | NUMBER | Y |  |
| 10 | ID_USUARIO_INCLUSAO | NUMBER | Y |  |
| 11 | ID_USUARIO_ALTERACAO | NUMBER | Y |  |
| 12 | DT_DUM | DATE | Y |  |
| 13 | CD_ITEM_PEDIDO_HIS | VARCHAR2 | Y |  |
| 14 | ID_ORIGEM_ATENDIMENTO | NUMBER | Y |  |
| 15 | ID_SETOR | NUMBER | Y |  |
| 16 | ID_USUARIO_ENTRADA_EXAME | NUMBER | Y |  |
| 17 | ID_USUARIO_SAIDA_EXAME | NUMBER | Y |  |
| 18 | DT_ENTRADA_EXAME | DATE | Y |  |
| 19 | DT_SAIDA_EXAME | DATE | Y |  |
| 20 | NR_ALTURA | NUMBER | Y |  |
| 21 | NR_PESO | NUMBER | Y |  |
| 22 | SN_PENDENTE | CHAR | Y |  |
| 23 | DT_FINALIZACAO | DATE | Y |  |
| 24 | DT_LAUDADO | DATE | Y |  |
| 25 | DT_PEDIDO | DATE | Y |  |
| 26 | DT_IMPRESSO | DATE | Y |  |
| 27 | DT_ASSINADO | DATE | Y |  |
| 28 | DT_DIGITADO | DATE | Y |  |
| 29 | DT_REVISADO | DATE | Y |  |
| 30 | DT_REVISADO_FINAL | DATE | Y |  |
| 31 | DT_ENTREGA | DATE | Y |  |
| 32 | NM_ACOMODACAO_HIS | VARCHAR2 | Y |  |
| 33 | NM_LOCAL_ENTREGA_HIS | VARCHAR2 | Y |  |
| 34 | NM_INDICACAO_HIS | VARCHAR2 | Y |  |
| 35 | SN_MIDIA_RESULTADO | CHAR | Y |  |
| 36 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 37 | ID_USUARIO_LIBERACAO | NUMBER | Y |  |
| 38 | ID_USUARIO_ONLINE | NUMBER | Y |  |
| 39 | DS_OPERACAO_ONLINE | VARCHAR2 | Y |  |
| 40 | SN_SMS_ENVIADO | CHAR | Y |  |
| 41 | DS_LAUDO_RTF | CLOB | Y |  |
| 42 | DS_LAUDO_TXT | CLOB | Y |  |
| 43 | DS_LAUDO_HTML | CLOB | Y |  |
| 44 | SN_NORMAL | CHAR | Y |  |
| 45 | ID_JUSTIFICATIVA | NUMBER | Y |  |
| 46 | ID_USUARIO_JUSTIFICATIVA | NUMBER | Y |  |
| 47 | DS_LEITO_HIS | VARCHAR2 | Y |  |
| 48 | DS_REGIAO_EXAMINADA | VARCHAR2 | Y |  |
| 49 | SN_AGRUPAR_IMAGEM | CHAR | Y |  |
| 50 | SN_AGRUPAR_LAUDO | CHAR | Y |  |
| 51 | ID_DIAGNOSTICO_RADIO | NUMBER | Y |  |
| 52 | ID_DIAGNOSTICO_CLINICO | NUMBER | Y |  |
| 53 | ID_DIAGNOSTICO_CIRURGICO | NUMBER | Y |  |
| 54 | DS_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 55 | DT_JUSTIFICATIVA | DATE | Y |  |
| 56 | DS_LAUDO_SEM_IMAGEM | VARCHAR2 | Y |  |
| 57 | DT_DS_LAUDO_SEM_IMAGEM | DATE | Y |  |
| 58 | ID_USUARIO_LAUDO_SEM_IMAGEM | NUMBER | Y |  |
| 59 | DS_LAUDO_PDF | BLOB | Y |  |
| 60 | DS_CERTIFICACAO_DIGITAL | VARCHAR2 | Y |  |
| 61 | SN_ATIVO | CHAR | Y |  |
| 62 | DT_STUDY | DATE | Y |  |
| 63 | DT_ENTREGA_PREVISTA | DATE | Y |  |
| 64 | DT_DITADO | DATE | Y |  |
| 65 | ID_MEDICO_DITADO | NUMBER | Y |  |
| 66 | ID_SETOR_EXECUTANTE | NUMBER | Y |  |
| 67 | LAU_ID | NUMBER | Y |  |
| 68 | ID_ETAPA_ATUAL | NUMBER | Y |  |
| 69 | DS_PRESCRICAO | CHAR | Y |  |
| 70 | SN_PRESCRICAO_URGENTE | CHAR | Y |  |
| 71 | SN_EXAME_CONCLUIDO | CHAR | Y |  |
| 72 | LAYOUT_NOVO_EDITOR | BLOB | Y |  |
| 73 | ID_MEDICO_UNIDADE_ONLINE | NUMBER | Y |  |
| 74 | CD_STUDY_UID | VARCHAR2 | Y |  |
| 75 | DS_LAUDO_XML_CERTIFICADO | CLOB | Y |  |
| 76 | DT_ANAMNESE | DATE | Y |  |
| 77 | SN_SMS_MEDICO_EXEC_ENVIADO | CHAR | Y |  |
| 78 | SN_EMAIL_MEDCICO_EXEC_ENVIADO | CHAR | Y |  |
| 79 | SN_EMAIL_ENVIADO | CHAR | Y |  |
| 80 | ID_JUSTIFICATIVA_CANCELAMENTO | NUMBER | Y |  |
| 81 | SN_STUDY_PED | CHAR | N |  |
| 82 | DS_LAUDO_PDF_MARCADAGUA | BLOB | Y |  |
| 83 | DS_LAUDO_RTF_ANSI | CLOB | Y |  |
| 84 | DS_RTF_BKP | CLOB | Y |  |
| 85 | MESSAGE_ID | NUMBER | Y |  |
| 86 | TP_INTEGRACAO_LAUDO | CHAR | N |  |
| 87 | DS_INTEGRACAO_LAUDO | VARCHAR2 | Y |  |
| 88 | ID_TIPO_PRIORIDADE | NUMBER | Y |  |
| 89 | ID_JUSTIFICATIVA_IMAGEM | NUMBER | Y |  |
| 90 | DS_JUSTIFICATIVA_IMAGEM | VARCHAR2 | Y |  |
| 91 | DT_JUSTIFICATIVA_IMAGEM | DATE | Y |  |
| 92 | SN_TERCEIRA_OPINIAO | CHAR | Y |  |
| 93 | ID_EXAME_PEDIDO_PAI | NUMBER | Y |  |
| 94 | SN_PANICO | CHAR | N |  |
| 95 | DT_CERTIFICADO | DATE | Y |  |
| 96 | ID_USUARIO_MARCAR_CERTIFICADO | NUMBER | Y |  |
| 97 | SN_PROVISORIO | CHAR | N |  |
| 98 | DT_DISTRIBUICAO_EXECUTANTE | DATE | Y |  |
| 99 | DT_DISTRIBUICAO_REVISOR | DATE | Y |  |
| 100 | ID_USU_DISTRIBUICAO_EXECUTANTE | NUMBER | Y |  |
| 101 | ID_USU_DISTRIBUICAO_REVISOR | NUMBER | Y |  |
| 102 | SN_DISTRIBUICAO_EXECUTANTE | CHAR | N |  |
| 103 | SN_DISTRIBUICAO_REVISOR | CHAR | N |  |
| 104 | SN_VISUALIZADO_PORTAL | CHAR | N |  |
| 105 | QT_IMAGEM_PACS | NUMBER | Y |  |
| 106 | DT_NAO_CONFORMIDADE | DATE | Y |  |
| 107 | DS_NAO_CONFORMIDADE | VARCHAR2 | Y |  |
| 108 | ID_USU_NAO_CONFORMIDADE | NUMBER | Y |  |
| 109 | DS_NAO_CONFORMIDADE_CANCEL | VARCHAR2 | Y |  |
| 110 | DS_OPER_REGANS | VARCHAR2 | Y |  |
| 111 | DS_OPER_NUMCARTEIRA | VARCHAR2 | Y |  |
| 112 | DS_OPER_NUMGUIA | VARCHAR2 | Y |  |
| 113 | DS_OPER_EXAME | VARCHAR2 | Y |  |
| 114 | DT_ATUALIZACAO_ERRATA | DATE | Y |  |
| 115 | ID_DOCUMENTO_CARTORIO | NUMBER | Y |  |
| 116 | NM_CERT_DIGITAL | VARCHAR2 | Y |  |
| 117 | NM_FORNECEDOR_CERT_DIGITAL | VARCHAR2 | Y |  |
| 118 | DT_FORNECEDOR_CERT_DIGITAL | DATE | Y |  |
| 119 | NR_CPF_CERT_DIGITAL | VARCHAR2 | Y |  |
| 120 | DT_NAO_CONFORMIDADE_RESOLVIDA | DATE | Y |  |
| 121 | DS_INCONFORMIDADE | VARCHAR2 | Y |  |
| 122 | CD_STATUS_IA | NUMBER | Y |  |
| 123 | DS_PANICO | VARCHAR2 | Y |  |
| 124 | NM_TECNICO_RESPONSAVEL | VARCHAR2 | Y |  |
| 125 | DS_EMAIL_ENVIADO | VARCHAR2 | Y |  |
| 126 | DS_IG | VARCHAR2 | Y |  |
| 127 | DT_ULTIMA_US | DATE | Y |  |
| 128 | DS_IG_ULTIMA_US | VARCHAR2 | Y |  |
| 129 | DS_IG_CORRIGIDA | VARCHAR2 | Y |  |

---

## IDCE.RS_LAU_EXAME_PEDIDO_INSUMO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME_PEDIDO_INSUMO | NUMBER | N | Sequencial |
| 2 | ID_EXAME_PEDIDO | NUMBER | N | Item do Pedido RIS |
| 3 | ID_PRODUTO_UNIDADE | NUMBER | N | Produto |
| 4 | CD_UNIDADE_MEDIDA | VARCHAR2 | N | Unidade de medida para o item |
| 5 | QT_PEDIDA | NUMBER | N | Quantidade requisitada pelo HIS |
| 6 | QT_ATENDIDA | NUMBER | Y | Quantidade confirmada |
| 7 | CD_STATUS | CHAR | N | Status do item - P (Pedido), A (Atendido), E (Excluido) |
| 8 | TP_TRANSPORTADO | CHAR | N | Status de integração - A (aguardando), T (Transportado) |

---

## IDCE.RS_LAU_EXAME_PEDIDO_JUST

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME_PEDIDO_JUSTIFICATIVA | NUMBER | N | Indicador do exame pedido justificativa |
| 2 | ID_EXAME_PEDIDO | NUMBER | N | Indicador do exame pedido |
| 3 | ID_JUSTIFICATIVA | NUMBER | Y | Indicador da justificativa |
| 4 | ID_USUARIO | NUMBER | N | Indicador do usuario da justificativa |
| 5 | DS_JUSTIFICATIVA | VARCHAR2 | Y | Descrição da justificativa |
| 6 | CD_JUSTIFICATIVA | CHAR | Y | Codigo Do Justificativa |
| 7 | DT_JUSTIFICATIVA | DATE | N | Data da inclusão da justificativa |

---

## IDCE.RS_LAU_EXAME_PEDIDO_LIRADS
> Tabela de LIRADS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME_PEDIDO | NUMBER | N | Id do laudo |
| 2 | TP_CLASSIFICACAO | VARCHAR2 | N | classificação que pode ser: 1, 2, 3, 4, 5, M, TIV ou NC |
| 3 | SN_CRITICO | CHAR | N | Resultado critico |
| 4 | DS_DESCRICAO | VARCHAR2 | Y | Descrição do resultado critico |
| 5 | ID_USUARIO_CADASTRO | NUMBER | N | Id do usuário que cadastrou |
| 6 | DT_CADASTRO | DATE | N | Data de cadastro |
| 7 | ID_USUARIO_ALTERACAO | NUMBER | Y | Id do usuário que alterou |
| 8 | DT_ALTERACAO | DATE | Y | Data de alteração |

---

## IDCE.RS_LAU_EXAME_PEDIDO_OBSERVACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_OBSERVACAO | NUMBER | N |  |
| 2 | ID_EXAME_PEDIDO | NUMBER | Y |  |
| 3 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 4 | DT_CADASTRO | DATE | N |  |
| 5 | DT_ALTERACAO | DATE | Y |  |
| 6 | ID_USUARIO | NUMBER | N |  |

---

## IDCE.RS_LAU_EXAME_PEDIDO_PDF

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 2 | DS_LAUDO_PDF | BLOB | Y |  |
| 3 | DS_LAUDO_PDF_MARCADAGUA | BLOB | Y |  |
| 4 | LAYOUT_NOVO_EDITOR | BLOB | Y |  |

---

## IDCE.RS_LAU_EXAME_PEDIDO_PIRADS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 2 | TP_CLASSIFICACAO | CHAR | N |  |
| 3 | SN_CRITICO | CHAR | N |  |
| 4 | DS_DESCRICAO | VARCHAR2 | Y |  |
| 5 | ID_USUARIO_CADASTRO | NUMBER | N |  |
| 6 | DT_CADASTRO | DATE | N |  |
| 7 | ID_USUARIO_ALTERACAO | NUMBER | Y |  |
| 8 | DT_ALTERACAO | DATE | Y |  |

---

## IDCE.RS_LAU_EXAME_PEDIDO_PIRADS_ITM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_PIRADS_ITEM | NUMBER | N |  |
| 2 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 3 | VL_RX | NUMBER | N |  |
| 4 | VL_RY | NUMBER | N |  |
| 5 | VL_TRANSLATE_X | NUMBER | N |  |
| 6 | VL_TRANSLATE_Y | NUMBER | N |  |
| 7 | VL_ANGLE | NUMBER | Y |  |
| 8 | VL_SCALE_X | NUMBER | Y |  |
| 9 | VL_SCALE_Y | NUMBER | Y |  |
| 10 | VL_FILL | VARCHAR2 | Y |  |
| 11 | VL_STROKE | VARCHAR2 | Y |  |
| 12 | VL_STROKE_DASHARRAY | VARCHAR2 | Y |  |
| 13 | ID_USUARIO_CADASTRO | NUMBER | N |  |
| 14 | DT_CADASTRO | DATE | N |  |
| 15 | ID_USUARIO_ALTERACAO | NUMBER | Y |  |
| 16 | DT_ALTERACAO | DATE | Y |  |
| 17 | SN_ATIVO | CHAR | N |  |

---

## IDCE.RS_LAU_EXAME_PEDIDO_SECUNDARIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME_PEDIDO_SECUNDARIO | NUMBER | N |  |
| 2 | ID_EXAME_PEDIDO | NUMBER | Y |  |
| 3 | ID_EXAME_UNIDADE | NUMBER | Y |  |
| 4 | DS_JUSTIFICATIVA_INCLUSAO | VARCHAR2 | Y |  |
| 5 | DS_JUSTIFICATIVA_CANCELAMENTO | VARCHAR2 | Y |  |
| 6 | DT_RETORNO | DATE | Y |  |
| 7 | DT_CADASTRO | DATE | Y |  |

---

## IDCE.RS_LAU_EXAME_PEDIDO_SEGMENTOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 2 | NR_SEGMENTO_1 | NUMBER | N |  |
| 3 | NR_SEGMENTO_2 | NUMBER | N |  |
| 4 | NR_SEGMENTO_3 | NUMBER | N |  |
| 5 | NR_SEGMENTO_4 | NUMBER | N |  |
| 6 | NR_SEGMENTO_5 | NUMBER | N |  |
| 7 | NR_SEGMENTO_6 | NUMBER | N |  |
| 8 | NR_SEGMENTO_7 | NUMBER | N |  |
| 9 | NR_SEGMENTO_8 | NUMBER | N |  |
| 10 | NR_SEGMENTO_9 | NUMBER | N |  |
| 11 | NR_SEGMENTO_10 | NUMBER | N |  |
| 12 | NR_SEGMENTO_11 | NUMBER | N |  |
| 13 | NR_SEGMENTO_12 | NUMBER | N |  |
| 14 | NR_SEGMENTO_13 | NUMBER | N |  |
| 15 | NR_SEGMENTO_14 | NUMBER | N |  |
| 16 | NR_SEGMENTO_15 | NUMBER | N |  |
| 17 | NR_SEGMENTO_16 | NUMBER | N |  |
| 18 | NR_SEGMENTO_17 | NUMBER | N |  |
| 19 | NR_SCORE | NUMBER | N |  |
| 20 | DS_TEXTO | CLOB | N |  |
| 21 | DT_CADASTRO | DATE | N |  |
| 22 | ID_USU_CADASTRO | NUMBER | N |  |
| 23 | DT_ALTERACAO | DATE | Y |  |
| 24 | ID_USU_ALTERACAO | NUMBER | Y |  |
| 25 | NR_VIABILIDADE_1 | NUMBER | N |  |
| 26 | NR_VIABILIDADE_2 | NUMBER | N |  |
| 27 | NR_VIABILIDADE_3 | NUMBER | N |  |
| 28 | NR_VIABILIDADE_4 | NUMBER | N |  |
| 29 | NR_VIABILIDADE_5 | NUMBER | N |  |
| 30 | NR_VIABILIDADE_6 | NUMBER | N |  |
| 31 | NR_VIABILIDADE_7 | NUMBER | N |  |
| 32 | NR_VIABILIDADE_8 | NUMBER | N |  |
| 33 | NR_VIABILIDADE_9 | NUMBER | N |  |
| 34 | NR_VIABILIDADE_10 | NUMBER | N |  |
| 35 | NR_VIABILIDADE_11 | NUMBER | N |  |
| 36 | NR_VIABILIDADE_12 | NUMBER | N |  |
| 37 | NR_VIABILIDADE_13 | NUMBER | N |  |
| 38 | NR_VIABILIDADE_14 | NUMBER | N |  |
| 39 | NR_VIABILIDADE_15 | NUMBER | N |  |
| 40 | NR_VIABILIDADE_16 | NUMBER | N |  |
| 41 | NR_VIABILIDADE_17 | NUMBER | N |  |

---

## IDCE.RS_LAU_EXAME_PEDIDO_TIRADS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 2 | TP_CLASSIFICACAO | VARCHAR2 | N |  |
| 3 | SN_CRITICO | CHAR | N |  |
| 4 | DS_DESCRICAO | VARCHAR2 | Y |  |
| 5 | ID_USUARIO_CADASTRO | NUMBER | N |  |
| 6 | DT_CADASTRO | DATE | N |  |
| 7 | ID_USUARIO_ALTERACAO | NUMBER | Y |  |
| 8 | DT_ALTERACAO | DATE | Y |  |

---

## IDCE.RS_LAU_EXAME_PEDIDO_TVP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_TVP | NUMBER | N |  |
| 2 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 3 | DT_CADASTRO | DATE | N |  |
| 4 | ID_USUARIO_CADASTRO | NUMBER | N |  |
| 5 | DT_ALTERACAO | DATE | Y |  |
| 6 | ID_USUARIO_ALTERACAO | NUMBER | Y |  |

---

## IDCE.RS_LAU_EXAME_PEDIDO_TVP_GRUPO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_TVP_GRUPO | NUMBER | N |  |
| 2 | ID_TVP | NUMBER | N |  |
| 3 | TP_GRUPO | VARCHAR2 | N |  |
| 4 | DS_AVULSA | VARCHAR2 | Y |  |
| 5 | TP_TROMBOSE | CHAR | Y |  |
| 6 | TP_RECANALIZACAO_PRESENTE | CHAR | Y |  |
| 7 | SN_TROMBO_MOVEL | CHAR | Y |  |
| 8 | TP_REFLUXO_SECUNDARIO | CHAR | Y |  |

---

## IDCE.RS_LAU_EXAME_PED_BKP050721

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 2 | ID_PEDIDO_EXAME | NUMBER | N |  |
| 3 | ID_MEDICO_EXECUTANTE | NUMBER | Y |  |
| 4 | ID_MEDICO_REVISOR | NUMBER | Y |  |
| 5 | ID_MEDICO_REVISOR_FINAL | NUMBER | Y |  |
| 6 | ID_SALA | NUMBER | Y |  |
| 7 | DT_CADASTRO | DATE | N |  |
| 8 | DT_ALTERACAO | DATE | Y |  |
| 9 | ID_EXAME_UNIDADE | NUMBER | Y |  |
| 10 | ID_USUARIO_INCLUSAO | NUMBER | Y |  |
| 11 | ID_USUARIO_ALTERACAO | NUMBER | Y |  |
| 12 | DT_DUM | DATE | Y |  |
| 13 | CD_ITEM_PEDIDO_HIS | VARCHAR2 | Y |  |
| 14 | ID_ORIGEM_ATENDIMENTO | NUMBER | Y |  |
| 15 | ID_SETOR | NUMBER | Y |  |
| 16 | ID_USUARIO_ENTRADA_EXAME | NUMBER | Y |  |
| 17 | ID_USUARIO_SAIDA_EXAME | NUMBER | Y |  |
| 18 | DT_ENTRADA_EXAME | DATE | Y |  |
| 19 | DT_SAIDA_EXAME | DATE | Y |  |
| 20 | NR_ALTURA | NUMBER | Y |  |
| 21 | NR_PESO | NUMBER | Y |  |
| 22 | SN_PENDENTE | CHAR | Y |  |
| 23 | DT_FINALIZACAO | DATE | Y |  |
| 24 | DT_LAUDADO | DATE | Y |  |
| 25 | DT_PEDIDO | DATE | Y |  |
| 26 | DT_IMPRESSO | DATE | Y |  |
| 27 | DT_ASSINADO | DATE | Y |  |
| 28 | DT_DIGITADO | DATE | Y |  |
| 29 | DT_REVISADO | DATE | Y |  |
| 30 | DT_REVISADO_FINAL | DATE | Y |  |
| 31 | DT_ENTREGA | DATE | Y |  |
| 32 | NM_ACOMODACAO_HIS | VARCHAR2 | Y |  |
| 33 | NM_LOCAL_ENTREGA_HIS | VARCHAR2 | Y |  |
| 34 | NM_INDICACAO_HIS | VARCHAR2 | Y |  |
| 35 | SN_MIDIA_RESULTADO | CHAR | Y |  |
| 36 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 37 | ID_USUARIO_LIBERACAO | NUMBER | Y |  |
| 38 | ID_USUARIO_ONLINE | NUMBER | Y |  |
| 39 | DS_OPERACAO_ONLINE | VARCHAR2 | Y |  |
| 40 | SN_SMS_ENVIADO | CHAR | Y |  |
| 41 | DS_LAUDO_RTF | CLOB | Y |  |
| 42 | DS_LAUDO_TXT | CLOB | Y |  |
| 43 | DS_LAUDO_HTML | CLOB | Y |  |
| 44 | SN_NORMAL | CHAR | Y |  |
| 45 | ID_JUSTIFICATIVA | NUMBER | Y |  |
| 46 | ID_USUARIO_JUSTIFICATIVA | NUMBER | Y |  |
| 47 | DS_LEITO_HIS | VARCHAR2 | Y |  |
| 48 | DS_REGIAO_EXAMINADA | VARCHAR2 | Y |  |
| 49 | SN_AGRUPAR_IMAGEM | CHAR | Y |  |
| 50 | SN_AGRUPAR_LAUDO | CHAR | Y |  |
| 51 | ID_DIAGNOSTICO_RADIO | NUMBER | Y |  |
| 52 | ID_DIAGNOSTICO_CLINICO | NUMBER | Y |  |
| 53 | ID_DIAGNOSTICO_CIRURGICO | NUMBER | Y |  |
| 54 | DS_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 55 | DT_JUSTIFICATIVA | DATE | Y |  |
| 56 | DS_LAUDO_SEM_IMAGEM | VARCHAR2 | Y |  |
| 57 | DT_DS_LAUDO_SEM_IMAGEM | DATE | Y |  |
| 58 | ID_USUARIO_LAUDO_SEM_IMAGEM | NUMBER | Y |  |
| 59 | DS_LAUDO_PDF | BLOB | Y |  |
| 60 | DS_CERTIFICACAO_DIGITAL | VARCHAR2 | Y |  |
| 61 | SN_ATIVO | CHAR | Y |  |
| 62 | DT_STUDY | DATE | Y |  |
| 63 | DT_ENTREGA_PREVISTA | DATE | Y |  |
| 64 | DT_DITADO | DATE | Y |  |
| 65 | ID_MEDICO_DITADO | NUMBER | Y |  |
| 66 | ID_SETOR_EXECUTANTE | NUMBER | Y |  |
| 67 | LAU_ID | NUMBER | Y |  |
| 68 | ID_ETAPA_ATUAL | NUMBER | Y |  |
| 69 | DS_PRESCRICAO | CHAR | Y |  |
| 70 | SN_PRESCRICAO_URGENTE | CHAR | Y |  |
| 71 | SN_EXAME_CONCLUIDO | CHAR | Y |  |
| 72 | LAYOUT_NOVO_EDITOR | BLOB | Y |  |
| 73 | ID_MEDICO_UNIDADE_ONLINE | NUMBER | Y |  |
| 74 | CD_STUDY_UID | VARCHAR2 | Y |  |
| 75 | DS_LAUDO_XML_CERTIFICADO | CLOB | Y |  |
| 76 | DT_ANAMNESE | DATE | Y |  |
| 77 | SN_SMS_MEDICO_EXEC_ENVIADO | CHAR | Y |  |
| 78 | SN_EMAIL_MEDCICO_EXEC_ENVIADO | CHAR | Y |  |
| 79 | SN_EMAIL_ENVIADO | CHAR | Y |  |
| 80 | ID_JUSTIFICATIVA_CANCELAMENTO | NUMBER | Y |  |
| 81 | SN_STUDY_PED | CHAR | N |  |
| 82 | DS_LAUDO_PDF_MARCADAGUA | BLOB | Y |  |
| 83 | DS_LAUDO_RTF_ANSI | CLOB | Y |  |
| 84 | DS_RTF_BKP | CLOB | Y |  |
| 85 | MESSAGE_ID | NUMBER | Y |  |
| 86 | TP_INTEGRACAO_LAUDO | CHAR | N |  |
| 87 | DS_INTEGRACAO_LAUDO | VARCHAR2 | Y |  |
| 88 | ID_TIPO_PRIORIDADE | NUMBER | Y |  |
| 89 | ID_JUSTIFICATIVA_IMAGEM | NUMBER | Y |  |
| 90 | DS_JUSTIFICATIVA_IMAGEM | VARCHAR2 | Y |  |
| 91 | DT_JUSTIFICATIVA_IMAGEM | DATE | Y |  |
| 92 | SN_TERCEIRA_OPINIAO | CHAR | Y |  |
| 93 | ID_EXAME_PEDIDO_PAI | NUMBER | Y |  |
| 94 | SN_PANICO | CHAR | N |  |
| 95 | DT_CERTIFICADO | DATE | Y |  |
| 96 | ID_USUARIO_MARCAR_CERTIFICADO | NUMBER | Y |  |
| 97 | SN_PROVISORIO | CHAR | N |  |
| 98 | DT_DISTRIBUICAO_EXECUTANTE | DATE | Y |  |
| 99 | DT_DISTRIBUICAO_REVISOR | DATE | Y |  |
| 100 | ID_USU_DISTRIBUICAO_EXECUTANTE | NUMBER | Y |  |
| 101 | ID_USU_DISTRIBUICAO_REVISOR | NUMBER | Y |  |
| 102 | SN_DISTRIBUICAO_EXECUTANTE | CHAR | N |  |
| 103 | SN_DISTRIBUICAO_REVISOR | CHAR | N |  |
| 104 | SN_VISUALIZADO_PORTAL | CHAR | N |  |
| 105 | QT_IMAGEM_PACS | NUMBER | Y |  |
| 106 | DT_NAO_CONFORMIDADE | DATE | Y |  |
| 107 | DS_NAO_CONFORMIDADE | VARCHAR2 | Y |  |
| 108 | ID_USU_NAO_CONFORMIDADE | NUMBER | Y |  |
| 109 | DS_NAO_CONFORMIDADE_CANCEL | VARCHAR2 | Y |  |
| 110 | DS_OPER_REGANS | VARCHAR2 | Y |  |
| 111 | DS_OPER_NUMCARTEIRA | VARCHAR2 | Y |  |
| 112 | DS_OPER_NUMGUIA | VARCHAR2 | Y |  |
| 113 | DS_OPER_EXAME | VARCHAR2 | Y |  |
| 114 | DT_ATUALIZACAO_ERRATA | DATE | Y |  |
| 115 | ID_DOCUMENTO_CARTORIO | NUMBER | Y |  |
| 116 | NM_CERT_DIGITAL | VARCHAR2 | Y |  |
| 117 | NM_FORNECEDOR_CERT_DIGITAL | VARCHAR2 | Y |  |
| 118 | DT_FORNECEDOR_CERT_DIGITAL | DATE | Y |  |
| 119 | NR_CPF_CERT_DIGITAL | VARCHAR2 | Y |  |
| 120 | DT_NAO_CONFORMIDADE_RESOLVIDA | DATE | Y |  |
| 121 | DS_INCONFORMIDADE | VARCHAR2 | Y |  |
| 122 | CD_STATUS_IA | NUMBER | Y |  |
| 123 | DS_PANICO | VARCHAR2 | Y |  |
| 124 | NM_TECNICO_RESPONSAVEL | VARCHAR2 | Y |  |
| 125 | DS_EMAIL_ENVIADO | VARCHAR2 | Y |  |
| 126 | DS_IG | VARCHAR2 | Y |  |
| 127 | DT_ULTIMA_US | DATE | Y |  |
| 128 | DS_IG_ULTIMA_US | VARCHAR2 | Y |  |
| 129 | DS_IG_CORRIGIDA | VARCHAR2 | Y |  |

---

## IDCE.RS_LAU_FILTRO_ABA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_FILTRO_ABA | NUMBER | N |  |
| 2 | NM_FILTRO_ABA | VARCHAR2 | N |  |
| 3 | SN_ATIVO | CHAR | Y |  |
| 4 | DT_CADASTRO | DATE | Y |  |
| 5 | DT_ALTERACAO | DATE | Y |  |
| 6 | SN_OBRIGATORIO | CHAR | Y |  |
| 7 | DS_FILTRO_ABA | VARCHAR2 | Y |  |
| 8 | ID_PAGE_STR | VARCHAR2 | Y |  |

---

## IDCE.RS_LAU_FILTRO_ABA_UNIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_FILTRO_ABA_UNIDADE | NUMBER | N |  |
| 2 | ID_UNIDADE | NUMBER | N |  |
| 3 | ID_FILTRO_ABA | NUMBER | N |  |
| 4 | NR_ORDEM | NUMBER | N |  |
| 5 | SN_VISIVEL | CHAR | Y |  |
| 6 | SN_ATIVO | CHAR | Y |  |
| 7 | DT_CADASTRO | DATE | N |  |
| 8 | DT_ALTERACAO | DATE | Y |  |

---

## IDCE.RS_LAU_FORMULA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_FORMULA | NUMBER | N |  |
| 2 | NR_ORDENACAO | NUMBER | Y |  |
| 3 | DS_TEXTO_FORMULA | VARCHAR2 | Y |  |
| 4 | DS_VALOR_REFERENCIA | VARCHAR2 | Y |  |
| 5 | DS_VALOR_REFERENCIA_INICIAL | NUMBER | Y |  |
| 6 | DS_VALOR_REFERENCIA_FINAL | NUMBER | Y |  |
| 7 | CD_UNIDADE_MEDIDA | VARCHAR2 | Y |  |
| 8 | CD_TIPO_CAMPO_FORMULA | VARCHAR2 | Y |  |
| 9 | CD_FORMULA | VARCHAR2 | Y |  |
| 10 | DS_FORMULA | VARCHAR2 | Y |  |
| 11 | ID_USUARIO | NUMBER | Y |  |
| 12 | DT_CADASTRO | DATE | Y |  |
| 13 | DT_ALTERACAO | DATE | Y |  |
| 14 | ID_EXAME_PEDIDO | NUMBER | Y |  |
| 15 | VL_FORMULA | NUMBER | Y |  |
| 16 | SN_IMPRESSAO | CHAR | Y |  |

---

## IDCE.RS_LAU_HISTORICO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_HISTORICO | NUMBER | N |  |
| 2 | DS_TIPO_HISTORICO | VARCHAR2 | Y |  |
| 3 | ID_EXAME_PEDIDO | NUMBER | Y |  |
| 4 | ID_MEDICO_EXECUTANTE | NUMBER | Y |  |
| 5 | ID_MEDICO_REVISOR | NUMBER | Y |  |
| 6 | ID_MEDICO_REVISOR_FINAL | NUMBER | Y |  |
| 7 | DT_FINALIZACAO | DATE | Y |  |
| 8 | DT_LAUDADO | DATE | Y |  |
| 9 | DT_PEDIDO | DATE | Y |  |
| 10 | DT_IMPRESSO | DATE | Y |  |
| 11 | DT_ASSINADO | DATE | Y |  |
| 12 | DT_DIGITADO | DATE | Y |  |
| 13 | DT_REVISADO | DATE | Y |  |
| 14 | DT_REVISADO_FINAL | DATE | Y |  |
| 15 | DT_ENTREGA | DATE | Y |  |
| 16 | DS_LAUDO_TXT | CLOB | Y |  |
| 17 | ID_USUARIO | NUMBER | Y |  |
| 18 | DT_CADASTRO | DATE | N |  |
| 19 | DT_ALTERACAO | DATE | Y |  |
| 20 | ID_PACIENTE | NUMBER | Y |  |
| 21 | ID_UNIDADE | NUMBER | Y |  |
| 22 | NM_PACIENTE | VARCHAR2 | Y |  |
| 23 | DS_ENDERECO | VARCHAR2 | Y |  |
| 24 | DS_BAIRRO | VARCHAR2 | Y |  |
| 25 | DS_CIDADE | VARCHAR2 | Y |  |
| 26 | DS_UF | VARCHAR2 | Y |  |
| 27 | DS_CEP | VARCHAR2 | Y |  |
| 28 | DS_TELEFONE | VARCHAR2 | Y |  |
| 29 | DS_EMAIL | VARCHAR2 | Y |  |
| 30 | NM_MEDICO_EXECUTANTE | VARCHAR2 | Y |  |
| 31 | NM_MEDICO_REVISOR | VARCHAR2 | Y |  |
| 32 | NM_MEDICO_REVISOR_FINAL | VARCHAR2 | Y |  |
| 33 | DS_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 34 | DS_IP_MAQUINA | VARCHAR2 | Y |  |
| 35 | NM_MAQUINA | VARCHAR2 | Y |  |
| 36 | DS_LAUDO_PDF | BLOB | Y |  |
| 37 | TP_ORIGEM_APLICACAO | NUMBER | Y |  |
| 38 | DT_PANICO | DATE | Y |  |
| 39 | SN_IMPRESSAO | DATE | Y |  |
| 40 | ID_UNIDADE_EXECUTANTE | NUMBER | Y |  |
| 41 | DS_INCONFORMIDADE | VARCHAR2 | Y |  |
| 42 | DS_PANICO | VARCHAR2 | Y |  |
| 43 | DS_COMENTARIO | VARCHAR2 | Y |  |
| 44 | DT_CADASTRO_PANICO | DATE | Y |  |
| 45 | NM_CONTATO_PANICO | VARCHAR2 | Y |  |
| 46 | DS_LAUDO_TXT_ANTERIOR | CLOB | Y | Laudo em text antes de revisar ou outras ações |
| 47 | NR_EXCLUSAO | NUMBER | Y | Percentual de exclusões do text antes de revisar ou outras ações |
| 48 | NR_INCLUSAO | NUMBER | Y | Percentual de inclusão do text após de revisar ou outras ações |

---

## IDCE.RS_LAU_HISTORICO_ETAPA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_LAUDO_HISTORICO_ETAPA | NUMBER | N |  |
| 2 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 3 | ID_ETAPA | NUMBER | N |  |
| 4 | ID_USUARIO | NUMBER | N |  |
| 5 | DT_CADASTRO | DATE | N |  |
| 6 | DT_ALTERACAO | DATE | Y |  |
| 7 | DS_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 8 | SN_CANCELADO | CHAR | Y |  |

---

## IDCE.RS_LAU_HISTORICO_INSUMO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_LAUDO_HISTORICO_INSUMO | NUMBER | N |  |
| 2 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 3 | ID_USUARIO | NUMBER | N |  |
| 4 | DT_CADASTRO | DATE | N |  |
| 5 | QT_ORIGINAL | NUMBER | N |  |
| 6 | QT_ALTERADA | NUMBER | N |  |
| 7 | ID_EXAME_PEDIDO_INSUMO | NUMBER | N |  |
| 8 | TP_OPERACAO | CHAR | N | 'A' -> Alterado, 'E' -> Excluído e 'I' -> Inserido |

---

## IDCE.RS_LAU_HISTORICO_LISTA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | TEXTO | VARCHAR2 | Y |  |
| 2 | ID_EXAME_PEDIDO | NUMBER | Y |  |
| 3 | NM_UNIDADE | VARCHAR2 | Y |  |

---

## IDCE.RS_LAU_HISTORICO_PDF

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_HISTORICO | NUMBER | N |  |
| 2 | DS_LAUDO_PDF | BLOB | Y |  |

---

## IDCE.RS_LAU_HISTORICO_VIEWER

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_HISTORICO_VIEWER | NUMBER | N |  |
| 2 | ID_MEDICO | NUMBER | N |  |
| 3 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 4 | DS_VIEWER_ID | VARCHAR2 | N | Identificação do Visualizador |
| 5 | DT_VISUALIZACAO | DATE | N |  |

---

## IDCE.RS_LAU_JUSTIFICATIVA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_JUSTIFICATIVA | NUMBER | N |  |
| 2 | NM_JUSTIFICATIVA | VARCHAR2 | N |  |
| 3 | DS_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 4 | SN_ATIVO | CHAR | Y |  |
| 5 | DT_CADASTRO | DATE | N |  |
| 6 | DT_ALTERACAO | DATE | Y |  |
| 7 | ID_USUARIO | NUMBER | Y |  |
| 8 | ID_INTERBASE | NUMBER | Y |  |
| 9 | CD_JUSTIFICATIVA | CHAR | Y | 'C' cancelamento, 'I' imagem e 'A' atraso |

---

## IDCE.RS_LAU_LEGADO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ACCESSIONNUMBER | VARCHAR2 | Y |  |
| 2 | STUDY_UID | VARCHAR2 | N |  |
| 3 | STUDYTIME | DATE | N |  |
| 4 | PATIENTID | VARCHAR2 | N |  |
| 5 | PATIENTNAME_DICOM | VARCHAR2 | Y |  |
| 6 | DATEOFBIRTH | DATE | Y |  |
| 7 | SEX | VARCHAR2 | Y |  |
| 8 | STUDYDESCRIPTION | VARCHAR2 | Y |  |
| 9 | DT_REVISADO | DATE | Y |  |
| 10 | NM_REVISOR | VARCHAR2 | Y |  |
| 11 | ID_LAUDO | NUMBER | N |  |
| 12 | DS_LAUDO | CLOB | Y |  |

---

## IDCE.RS_LAU_MAPA_CALOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_MAPA_CALOR | NUMBER | N |  |
| 2 | ID_HISTORICO | NUMBER | N |  |
| 3 | DS_TAG_NAME | VARCHAR2 | N |  |

---

## IDCE.RS_LAU_NCONFORMIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_NCONFORMIDADE | NUMBER | N |  |
| 2 | DS_NCONFORMIDADE | VARCHAR2 | N |  |

---

## IDCE.RS_LAU_ORIGEM_ATENDIMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_ORIGEM_ATENDIMENTO | NUMBER | N |  |
| 2 | CD_STATUS | CHAR | N |  |
| 3 | DS_STATUS | VARCHAR2 | Y |  |
| 4 | ID_USUARIO | NUMBER | Y |  |
| 5 | DT_CADASTRO | DATE | Y |  |
| 6 | DT_ALTERACAO | DATE | Y |  |
| 7 | DS_COR | VARCHAR2 | Y |  |
| 8 | SN_CENTRAL | CHAR | Y |  |
| 9 | SN_ATIVO | CHAR | N | (S/N) ATIVO |

---

## IDCE.RS_LAU_PEDIDO_EXAME

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_PEDIDO_EXAME | NUMBER | N |  |
| 2 | ID_MEDICO_SOLICITANTE | NUMBER | Y |  |
| 3 | ID_UNIDADE | NUMBER | Y |  |
| 4 | ID_PACIENTE | NUMBER | Y |  |
| 5 | ID_CONVENIO | NUMBER | Y |  |
| 6 | ID_USUARIO | NUMBER | Y |  |
| 7 | DT_PEDIDO_HIS | DATE | Y |  |
| 8 | SN_ATIVO | CHAR | Y |  |
| 9 | DT_CADASTRO | DATE | N |  |
| 10 | CD_ATENDIMENTO_HIS | VARCHAR2 | Y |  |
| 11 | CD_PEDIDO_HIS | VARCHAR2 | Y |  |
| 12 | DT_ALTERACAO | DATE | Y |  |
| 13 | NR_GUIA_HIS | VARCHAR2 | Y |  |
| 14 | ID_UNIDADE_ORIGEM | NUMBER | Y |  |
| 15 | ID_CLASSIFICACAO_RISCO | NUMBER | Y |  |
| 16 | ID_SETOR_SOLICITANTE | NUMBER | Y |  |
| 17 | ID_UNIDADE_EXECUTANTE | NUMBER | Y |  |
| 18 | ID_JUST_CANC_TRANSF_UND | NUMBER | Y |  |
| 19 | DS_JUST_CANC_TRANSF_UND | VARCHAR2 | Y |  |
| 20 | DT_TRANSFERENCIA_UNIDADE | DATE | Y |  |

---

## IDCE.RS_LAU_PROTOCOLO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_PROTOCOLO | NUMBER | N |  |
| 2 | ID_EXAME_PEDIDO | NUMBER | Y |  |
| 3 | DS_RESPONSAVEL | VARCHAR2 | Y |  |
| 4 | DT_ENTREGA | DATE | Y |  |
| 5 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 6 | DT_CADASTRO | DATE | N |  |
| 7 | DT_ALTERACAO | DATE | Y |  |
| 8 | ID_USUARIO | NUMBER | Y |  |
| 9 | ID_INTERBASE | NUMBER | Y |  |

---

## IDCE.RS_LAU_SETOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_SETOR | NUMBER | N |  |
| 2 | NM_SETOR | VARCHAR2 | N |  |
| 3 | DS_SETOR | VARCHAR2 | Y |  |
| 4 | CD_SETOR_HIS | VARCHAR2 | Y |  |
| 5 | ID_USUARIO | NUMBER | N |  |
| 6 | DT_CADASTRO | DATE | N |  |
| 7 | DT_ALTERACAO | DATE | Y |  |
| 8 | ID_INTERBASE | NUMBER | Y |  |
| 9 | SN_ATIVO | CHAR | N |  |
| 10 | SN_BLOQUEAR_LAUDO_EXAME_SETOR | CHAR | N | Bloquear ações no laudo para exames associados a este setor solicitante |

---

## IDCE.RS_LAU_SETOR_EXECUTANTE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_SETOR_EXECUTANTE | NUMBER | N |  |
| 2 | NM_SETOR_EXECUTANTE | VARCHAR2 | N |  |
| 3 | DS_SETOR_EXECUTANTE | VARCHAR2 | Y |  |
| 4 | ID_PROCEDIMENTO | NUMBER | Y |  |
| 5 | CD_SETOR_EXECUTANTE_HIS | VARCHAR2 | Y |  |
| 6 | ID_USUARIO | NUMBER | N |  |
| 7 | DT_CADASTRO | DATE | N |  |
| 8 | DT_ALTERACAO | DATE | Y |  |
| 9 | SN_INTEGRA | CHAR | Y |  |
| 10 | ID_UNIDADE | NUMBER | Y |  |
| 11 | SN_ENVIO_AUTOMATICO_SMS | CHAR | N |  |
| 12 | TEMPO_ENVIO_SMS_ASSINADO | NUMBER | Y |  |
| 13 | SN_BLOQUEIO_CANCELAMENTO | CHAR | N |  |
| 14 | TEMPO_BLOQUEIO_CANCELAMENTO | NUMBER | Y |  |
| 15 | SN_ATIVO | CHAR | N | (S/N) ATIVO |
| 16 | SN_JUST_LAUDAR_DENTRO_SLA | CHAR | Y | (S/N) EXIGIR JUSTIFICATIVA AO LAUDAR DENTRO DO PRAZO DO SLA |
| 17 | SN_SLA | CHAR | N | (S/N) SETOR USA SLA NOS EXAMES |

---

## IDCE.RS_LAU_TEXTO_BLOB

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_TEXTO_BLOB | NUMBER | N |  |
| 2 | DS_TEXTO | BLOB | Y |  |
| 3 | CD_UNIDADE_HIS | NUMBER | Y |  |

---

## IDCE.RS_LAU_TIPO_PRIORIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_TIPO_PRIORIDADE | NUMBER | N |  |
| 2 | DS_STATUS | VARCHAR2 | Y |  |
| 3 | ID_USUARIO | NUMBER | N |  |
| 4 | DT_CADASTRO | DATE | N |  |
| 5 | DT_ALTERACAO | DATE | Y |  |

---

## IDCE.RS_LAU_TMP_GRAFICO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DT_CADASTRO | DATE | Y |  |
| 2 | DT_LAUDADO | DATE | Y |  |
| 3 | DT_REVISADO | DATE | Y |  |
| 4 | DT_ASSINADO | DATE | Y |  |
| 5 | DT_IMPRESSO | DATE | Y |  |
| 6 | DT_DIGITADO | DATE | Y |  |
| 7 | SN_PENDENTE | CHAR | Y |  |
| 8 | ID_PROCEDIMENTO_UNIDADE | NUMBER | Y |  |

---

## IDCE.RS_LAU_TMP_MONITOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | PRCNOME | VARCHAR2 | Y |  |
| 2 | LAUDADO | NUMBER | Y |  |
| 3 | NLAUDADO | NUMBER | Y |  |
| 4 | PENDENTE | NUMBER | Y |  |
| 5 | ORDEM | NUMBER | Y |  |

---

## IDCE.RS_LOGIN_AUDITORIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NM_USUARIO | NVARCHAR2 | N |  |
| 3 | DS_SISTEMA | NVARCHAR2 | N |  |
| 4 | DS_OCORRENCIA | NVARCHAR2 | N |  |
| 5 | DT_CADASTRO | TIMESTAMP(4) | N |  |
| 6 | DS_STATUS | NVARCHAR2 | N |  |

---

## IDCE.RS_MD_CONSELHO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_CONSELHO | NUMBER | N |  |
| 2 | NM_CONSELHO | VARCHAR2 | Y |  |
| 3 | DS_UF | VARCHAR2 | Y |  |
| 4 | DS_CONSELHO | VARCHAR2 | Y |  |
| 5 | DT_CADASTRO | DATE | N |  |
| 6 | DT_ALTERACAO | DATE | Y |  |
| 7 | ID_USUARIO | NUMBER | Y |  |

---

## IDCE.RS_MD_FILTRO_PROCEDIMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_MEDICO_UNIDADE_FILTRO | NUMBER | N |  |
| 2 | ID_USUARIO | NUMBER | N |  |
| 3 | DT_CADASTRO | DATE | N |  |
| 4 | DT_ALTERACAO | DATE | Y |  |
| 5 | ID_PROCEDIMENTO | NUMBER | N |  |

---

## IDCE.RS_MD_FILTRO_SETOR_EXEC

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_MEDICO_UNIDADE_FILTRO | NUMBER | N |  |
| 2 | ID_USUARIO | NUMBER | N |  |
| 3 | DT_CADASTRO | DATE | N |  |
| 4 | DT_ALTERACAO | DATE | Y |  |
| 5 | ID_SETOR_EXEC | NUMBER | N |  |

---

## IDCE.RS_MD_FILTRO_SISTEMA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_MEDICO_UNIDADE_FILTRO | NUMBER | N |  |
| 2 | ID_USUARIO | NUMBER | N |  |
| 3 | DT_CADASTRO | DATE | N |  |
| 4 | DT_ALTERACAO | DATE | Y |  |
| 5 | ID_SISTEMA | NUMBER | N |  |

---

## IDCE.RS_MD_MEDICO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_MEDICO | NUMBER | N |  |
| 2 | NM_MEDICO | VARCHAR2 | Y |  |
| 3 | NM_REDUZIDO_MEDICO | VARCHAR2 | Y |  |
| 4 | DT_NASCIMENTO | DATE | Y |  |
| 5 | TP_SEXO | VARCHAR2 | Y |  |
| 6 | DS_ENDERECO | VARCHAR2 | Y |  |
| 7 | DS_CPF_CNPJ | VARCHAR2 | Y |  |
| 8 | DS_CRM | VARCHAR2 | Y |  |
| 9 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 10 | DS_BAIRRO | VARCHAR2 | Y |  |
| 11 | DS_CIDADE | VARCHAR2 | Y |  |
| 12 | DS_UF | VARCHAR2 | Y |  |
| 13 | DS_CEP | VARCHAR2 | Y |  |
| 14 | DS_TELEFONE | VARCHAR2 | Y |  |
| 15 | DS_FAX | VARCHAR2 | Y |  |
| 16 | DS_EMAIL | VARCHAR2 | Y |  |
| 17 | SN_ASSINATURA_DIGITALIZADA | CHAR | Y |  |
| 18 | SN_ASSINATURA_DIGITAL | CHAR | Y |  |
| 19 | SN_REVISAO_AUTOMATICA | CHAR | Y |  |
| 20 | SN_MEDICO_REVISOR | CHAR | Y |  |
| 21 | SN_SENHA_ADMINISTRADOR | CHAR | Y |  |
| 22 | SN_FILME | CHAR | Y |  |
| 23 | DS_ESPECIALIDADES | VARCHAR2 | Y |  |
| 24 | DT_CADASTRO | DATE | N |  |
| 25 | DT_ALTERACAO | DATE | Y |  |
| 26 | ID_USUARIO | NUMBER | Y |  |
| 27 | ID_CONSELHO | NUMBER | Y |  |
| 28 | CD_PRESTADOR_HIS | NUMBER | Y |  |
| 29 | SN_EMAIL | CHAR | Y |  |
| 30 | SN_SMS | CHAR | Y |  |
| 31 | DS_CELULAR | VARCHAR2 | Y |  |
| 32 | SN_RESTRICAO_HORARIO | CHAR | Y |  |
| 33 | SN_ASSINATURA_PERSONALIZADA | CHAR | Y |  |
| 34 | NR_ALTURA_ASSINATURA | NUMBER | Y |  |
| 35 | NR_LARGURA_ASSINATURA | NUMBER | Y |  |
| 36 | DS_RQE | NUMBER | Y | Registro de Qualificação de Especialidade |
| 37 | SN_ATIVO | CHAR | N | (S/N) ATIVO |

---

## IDCE.RS_MD_MEDICO_ASSINATURA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_MEDICO | NUMBER | N |  |
| 2 | IM_ASSINATURA | BLOB | N |  |

---

## IDCE.RS_MD_MEDICO_EXCECAO_HR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXCECAO_HR | NUMBER | N |  |
| 2 | ID_HORARIO | NUMBER | N |  |
| 3 | HR_INICIO | DATE | N |  |
| 4 | HR_FIM | DATE | N |  |
| 5 | SN_EXCLUSAO | CHAR | N |  |
| 6 | DT_CADASTRO | DATE | N |  |
| 7 | ID_USUARIO | NUMBER | N | id do usuário responsável pelo cadastro |
| 8 | ID_USUARIO_ALTERACAO | NUMBER | Y |  |
| 9 | DT_EXCLUSAO | DATE | Y |  |
| 10 | DT_ALTERACAO | DATE | Y |  |
| 11 | NR_INDICE | NUMBER | N | Indice relativo a correncia do agendamento |
| 12 | ID_USUARIO_EXCLUSAO | NUMBER | Y |  |

---

## IDCE.RS_MD_MEDICO_HORARIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_HORARIO | NUMBER | N |  |
| 2 | ID_MEDICO_UNIDADE | NUMBER | N |  |
| 3 | ID_PROCEDIMENTO_UNIDADE | NUMBER | N |  |
| 4 | DT_INICIO | DATE | N |  |
| 5 | DT_FIM | DATE | N |  |
| 6 | SN_REPETIR | CHAR | N |  |
| 7 | SN_DOM | CHAR | N |  |
| 8 | SN_SEG | CHAR | N |  |
| 9 | SN_TER | CHAR | N |  |
| 10 | SN_QUA | CHAR | N |  |
| 11 | SN_QUI | CHAR | N |  |
| 12 | SN_SEX | CHAR | N |  |
| 13 | SN_SAB | CHAR | N |  |
| 14 | DT_INICO_REPETICAO | DATE | Y |  |
| 15 | DT_FIM_REPETICAO | DATE | Y |  |
| 16 | DT_CADASTRO | DATE | N |  |
| 17 | ID_USUARIO | NUMBER | N |  |
| 18 | ID_USUARIO_ALTERACAO | NUMBER | Y |  |
| 19 | DT_EXCLUSAO | DATE | Y |  |
| 20 | DT_ALTERACAO | DATE | Y |  |
| 21 | NR_FLAG | CHAR | Y | Flag do agendamento 0 - Normal\| 1 - Hora Extra |
| 22 | ID_USUARIO_EXCLUSAO | NUMBER | Y |  |
| 23 | ID_SETOR_EXECUTANTE | NUMBER | Y |  |

---

## IDCE.RS_MD_MEDICO_PROCEDIMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_PROCEDIMENTO | NUMBER | N |  |
| 2 | ID_MEDICO_UNIDADE | NUMBER | N |  |
| 3 | DT_CADASTRO | DATE | N |  |
| 4 | DT_ALTERACAO | DATE | Y |  |
| 5 | ID_USUARIO | NUMBER | Y |  |

---

## IDCE.RS_MD_MEDICO_UNIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_MEDICO_UNIDADE | NUMBER | N |  |
| 2 | CD_MEDICO_HIS | VARCHAR2 | Y |  |
| 3 | ID_STATUS_ORIGEM | NUMBER | Y |  |
| 4 | ID_UNIDADE | NUMBER | Y |  |
| 5 | ID_CONSELHO | NUMBER | Y |  |
| 6 | ID_MEDICO | NUMBER | Y |  |
| 7 | DS_CRM | VARCHAR2 | Y |  |
| 8 | ID_USUARIO_MEDICO | NUMBER | Y |  |
| 9 | SN_ASSINATURA_DIGITALIZADA | CHAR | Y |  |
| 10 | SN_ASSINATURA_DIGITAL | CHAR | Y |  |
| 11 | SN_REVISAO_AUTOMATICA | CHAR | Y |  |
| 12 | SN_MEDICO_REVISOR | CHAR | Y |  |
| 13 | SN_SENHA_ADMINISTRADOR | CHAR | Y |  |
| 14 | SN_FILME | CHAR | Y |  |
| 15 | ID_USUARIO | NUMBER | Y |  |
| 16 | DT_CADASTRO | DATE | N |  |
| 17 | DT_ALTERACAO | DATE | Y |  |
| 18 | ID_INTERBASE | NUMBER | Y |  |
| 19 | ID_PROCEDIMENTO | NUMBER | Y |  |
| 20 | ID_SISTEMA | NUMBER | Y |  |
| 21 | SN_RASTREAR_LAUDO | CHAR | Y |  |
| 22 | SN_EXECUTANTE | CHAR | Y |  |
| 23 | SN_REVISOR | CHAR | Y |  |
| 24 | SN_DIGITADO | CHAR | Y |  |
| 25 | SN_LAUDADO | CHAR | Y |  |
| 26 | SN_REVISADO | CHAR | Y |  |
| 27 | SN_ASSINADO | CHAR | Y |  |
| 28 | SN_IMPRESSO | CHAR | Y |  |
| 29 | SN_MONITOR | CHAR | Y |  |
| 30 | NR_TEMPO_RETROCEDER | NUMBER | Y |  |
| 31 | ID_SETOR | NUMBER | Y |  |
| 32 | SN_ASSINATURA_AUT | CHAR | Y |  |
| 33 | ID_FILTRO_DEFAULT | NUMBER | Y |  |
| 34 | SN_ULTIMOS_EXAMES_AUT | CHAR | Y |  |
| 35 | SN_PRINT_REVISAO_AUT | CHAR | Y |  |
| 36 | SN_EXIGE_CERTIFICACAO_LAUDO | CHAR | Y |  |
| 37 | SN_MARCAR_CERTIFICACAO_AUT | CHAR | N |  |
| 38 | SN_ATIVO | CHAR | N | (S/N) ATIVO |

---

## IDCE.RS_MD_MEDICO_UNIDADE_FILTRO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_MEDICO_UNIDADE_FILTRO | NUMBER | N |  |
| 2 | ID_MEDICO_UNIDADE | NUMBER | N |  |
| 3 | ID_USUARIO | NUMBER | N |  |
| 4 | DT_CADASTRO | DATE | N |  |
| 5 | DT_ALTERACAO | DATE | Y |  |
| 6 | ID_PROCEDIMENTO | NUMBER | Y |  |
| 7 | ID_SISTEMA | NUMBER | Y |  |
| 8 | ID_SETOR | NUMBER | Y |  |
| 9 | SN_EXECUTANTE | CHAR | Y |  |
| 10 | SN_REVISOR | CHAR | Y |  |
| 11 | SN_DIGITADO | CHAR | Y |  |
| 12 | SN_LAUDADO | CHAR | Y |  |
| 13 | SN_REVISADO | CHAR | Y |  |
| 14 | SN_ASSINADO | CHAR | Y |  |
| 15 | SN_IMPRESSO | CHAR | Y |  |
| 16 | SN_LIBERADO | CHAR | Y |  |
| 17 | SN_ENTREGUE | CHAR | Y |  |
| 18 | SN_NORMAL | CHAR | Y |  |
| 19 | SN_IMAGEM | CHAR | Y |  |
| 20 | NR_TEMPO_RETROCEDER | NUMBER | Y |  |
| 21 | DS_FILTRO | VARCHAR2 | N |  |
| 22 | SN_DITADO | CHAR | Y |  |

---

## IDCE.RS_MD_STATUS_ORIGEM_MEDICO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_STATUS_ORIGEM | NUMBER | N |  |
| 2 | NM_STATUS_ORIGEM | VARCHAR2 | Y |  |
| 3 | DS_STATUS_ORIGEM | VARCHAR2 | Y |  |

---

## IDCE.RS_PAC_BKP_161220

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_PACIENTE | NUMBER | N |  |
| 2 | NM_PACIENTE | VARCHAR2 | Y |  |
| 3 | DT_NASCIMENTO | DATE | Y |  |
| 4 | TP_SEXO | CHAR | N |  |
| 5 | DS_ENDERECO | VARCHAR2 | Y |  |
| 6 | DS_BAIRRO | VARCHAR2 | Y |  |
| 7 | DS_CIDADE | VARCHAR2 | Y |  |
| 8 | DS_UF | VARCHAR2 | Y |  |
| 9 | DS_CEP | VARCHAR2 | Y |  |
| 10 | DS_TELEFONE | VARCHAR2 | Y |  |
| 11 | DS_FAX | VARCHAR2 | Y |  |
| 12 | DS_CPF | VARCHAR2 | Y |  |
| 13 | DS_EMAIL | VARCHAR2 | Y |  |
| 14 | DS_RG | VARCHAR2 | Y |  |
| 15 | DS_PACIENTE | VARCHAR2 | Y |  |
| 16 | DS_MATRICULA | VARCHAR2 | Y |  |
| 17 | NR_ALTURA | NUMBER | Y |  |
| 18 | NR_PESO | NUMBER | Y |  |
| 19 | SN_SMS | CHAR | Y |  |
| 20 | SN_EMAIL | CHAR | Y |  |
| 21 | DT_CADASTRO | DATE | Y |  |
| 22 | ID_USUARIO | NUMBER | Y |  |
| 23 | DT_ALTERACAO | DATE | Y |  |
| 24 | ID_PACIENTE_CONSOLIDADO | NUMBER | Y |  |
| 25 | DS_ORGAO | VARCHAR2 | Y |  |
| 26 | DS_CELULAR | VARCHAR2 | Y |  |
| 27 | NR_CNS | VARCHAR2 | Y |  |
| 28 | NM_MAE | VARCHAR2 | Y |  |
| 29 | NR_MATRICULA_SAME | NUMBER | Y |  |
| 30 | NM_SOCIAL_PACIENTE | VARCHAR2 | Y |  |

---

## IDCE.RS_PAC_PACIENTE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_PACIENTE | NUMBER | N |  |
| 2 | NM_PACIENTE | VARCHAR2 | Y |  |
| 3 | DT_NASCIMENTO | DATE | Y |  |
| 4 | TP_SEXO | CHAR | N |  |
| 5 | DS_ENDERECO | VARCHAR2 | Y |  |
| 6 | DS_BAIRRO | VARCHAR2 | Y |  |
| 7 | DS_CIDADE | VARCHAR2 | Y |  |
| 8 | DS_UF | VARCHAR2 | Y |  |
| 9 | DS_CEP | VARCHAR2 | Y |  |
| 10 | DS_TELEFONE | VARCHAR2 | Y |  |
| 11 | DS_FAX | VARCHAR2 | Y |  |
| 12 | DS_CPF | VARCHAR2 | Y |  |
| 13 | DS_EMAIL | VARCHAR2 | Y |  |
| 14 | DS_RG | VARCHAR2 | Y |  |
| 15 | DS_PACIENTE | VARCHAR2 | Y |  |
| 16 | DS_MATRICULA | VARCHAR2 | Y |  |
| 17 | NR_ALTURA | NUMBER | Y |  |
| 18 | NR_PESO | NUMBER | Y |  |
| 19 | SN_SMS | CHAR | Y |  |
| 20 | SN_EMAIL | CHAR | Y |  |
| 21 | DT_CADASTRO | DATE | Y |  |
| 22 | ID_USUARIO | NUMBER | Y |  |
| 23 | DT_ALTERACAO | DATE | Y |  |
| 24 | ID_PACIENTE_CONSOLIDADO | NUMBER | Y |  |
| 25 | DS_ORGAO | VARCHAR2 | Y |  |
| 26 | DS_CELULAR | VARCHAR2 | Y |  |
| 27 | NR_CNS | VARCHAR2 | Y |  |
| 28 | NM_MAE | VARCHAR2 | Y |  |
| 29 | NR_MATRICULA_SAME | NUMBER | Y |  |
| 30 | NM_SOCIAL_PACIENTE | VARCHAR2 | Y |  |
| 31 | NM_PAI | VARCHAR2 | Y |  |
| 32 | SN_ATIVO | CHAR | N | Ativo/Inativo |

---

## IDCE.RS_PAC_PACIENTE_BKP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_PACIENTE | NUMBER | N |  |
| 2 | NM_PACIENTE | VARCHAR2 | Y |  |
| 3 | DT_NASCIMENTO | DATE | Y |  |
| 4 | TP_SEXO | CHAR | N |  |
| 5 | DS_ENDERECO | VARCHAR2 | Y |  |
| 6 | DS_BAIRRO | VARCHAR2 | Y |  |
| 7 | DS_CIDADE | VARCHAR2 | Y |  |
| 8 | DS_UF | VARCHAR2 | Y |  |
| 9 | DS_CEP | VARCHAR2 | Y |  |
| 10 | DS_TELEFONE | VARCHAR2 | Y |  |
| 11 | DS_FAX | VARCHAR2 | Y |  |
| 12 | DS_CPF | VARCHAR2 | Y |  |
| 13 | DS_EMAIL | VARCHAR2 | Y |  |
| 14 | DS_RG | VARCHAR2 | Y |  |
| 15 | DS_PACIENTE | VARCHAR2 | Y |  |
| 16 | DS_MATRICULA | VARCHAR2 | Y |  |
| 17 | NR_ALTURA | NUMBER | Y |  |
| 18 | NR_PESO | NUMBER | Y |  |
| 19 | SN_SMS | CHAR | Y |  |
| 20 | SN_EMAIL | CHAR | Y |  |
| 21 | DT_CADASTRO | DATE | Y |  |
| 22 | ID_USUARIO | NUMBER | Y |  |
| 23 | DT_ALTERACAO | DATE | Y |  |
| 24 | ID_PACIENTE_CONSOLIDADO | NUMBER | Y |  |
| 25 | DS_ORGAO | VARCHAR2 | Y |  |
| 26 | DS_CELULAR | VARCHAR2 | Y |  |
| 27 | NR_CNS | VARCHAR2 | Y |  |
| 28 | NM_MAE | VARCHAR2 | Y |  |
| 29 | NR_MATRICULA_SAME | NUMBER | Y |  |
| 30 | NM_SOCIAL_PACIENTE | VARCHAR2 | Y |  |

---

## IDCE.RS_PAC_PACIENTE_BKP1812

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_PACIENTE | NUMBER | N |  |
| 2 | NM_PACIENTE | VARCHAR2 | Y |  |
| 3 | DT_NASCIMENTO | DATE | Y |  |
| 4 | TP_SEXO | CHAR | N |  |
| 5 | DS_ENDERECO | VARCHAR2 | Y |  |
| 6 | DS_BAIRRO | VARCHAR2 | Y |  |
| 7 | DS_CIDADE | VARCHAR2 | Y |  |
| 8 | DS_UF | VARCHAR2 | Y |  |
| 9 | DS_CEP | VARCHAR2 | Y |  |
| 10 | DS_TELEFONE | VARCHAR2 | Y |  |
| 11 | DS_FAX | VARCHAR2 | Y |  |
| 12 | DS_CPF | VARCHAR2 | Y |  |
| 13 | DS_EMAIL | VARCHAR2 | Y |  |
| 14 | DS_RG | VARCHAR2 | Y |  |
| 15 | DS_PACIENTE | VARCHAR2 | Y |  |
| 16 | DS_MATRICULA | VARCHAR2 | Y |  |
| 17 | NR_ALTURA | NUMBER | Y |  |
| 18 | NR_PESO | NUMBER | Y |  |
| 19 | SN_SMS | CHAR | Y |  |
| 20 | SN_EMAIL | CHAR | Y |  |
| 21 | DT_CADASTRO | DATE | Y |  |
| 22 | ID_USUARIO | NUMBER | Y |  |
| 23 | DT_ALTERACAO | DATE | Y |  |
| 24 | ID_PACIENTE_CONSOLIDADO | NUMBER | Y |  |
| 25 | DS_ORGAO | VARCHAR2 | Y |  |
| 26 | DS_CELULAR | VARCHAR2 | Y |  |
| 27 | NR_CNS | VARCHAR2 | Y |  |
| 28 | NM_MAE | VARCHAR2 | Y |  |
| 29 | NR_MATRICULA_SAME | NUMBER | Y |  |
| 30 | NM_SOCIAL_PACIENTE | VARCHAR2 | Y |  |

---

## IDCE.RS_PAC_PACIENTE_UNIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_PACIENTE_UNIDADE | NUMBER | N |  |
| 2 | ID_CONVENIO_PADRAO | NUMBER | Y |  |
| 3 | ID_PACIENTE | NUMBER | Y |  |
| 4 | ID_UNIDADE | NUMBER | Y |  |
| 5 | NR_PRONTUARIO_HOSPITALAR | VARCHAR2 | Y |  |
| 6 | CD_PACIENTE_HIS | VARCHAR2 | Y |  |
| 7 | DT_CADASTRO | DATE | Y |  |
| 8 | DT_ALTERACAO | DATE | Y |  |
| 9 | ID_USUARIO | NUMBER | Y |  |
| 10 | ID_INTERBASE | NUMBER | Y |  |
| 11 | DT_TERMO_ACEITE | DATE | Y |  |
| 12 | SN_ATIVO | CHAR | N | (S/N) ATIVO |

---

## IDCE.RS_PAC_PACIENTE_UNI_BKP1812

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_PACIENTE_UNIDADE | NUMBER | N |  |
| 2 | ID_CONVENIO_PADRAO | NUMBER | Y |  |
| 3 | ID_PACIENTE | NUMBER | Y |  |
| 4 | ID_UNIDADE | NUMBER | Y |  |
| 5 | NR_PRONTUARIO_HOSPITALAR | VARCHAR2 | Y |  |
| 6 | CD_PACIENTE_HIS | VARCHAR2 | Y |  |
| 7 | DT_CADASTRO | DATE | Y |  |
| 8 | DT_ALTERACAO | DATE | Y |  |
| 9 | ID_USUARIO | NUMBER | Y |  |
| 10 | ID_INTERBASE | NUMBER | Y |  |
| 11 | DT_TERMO_ACEITE | DATE | Y |  |

---

## IDCE.RS_PRD_PRODUTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_PRODUTO | NUMBER | N | Sequencial |
| 2 | DS_PRODUTO | VARCHAR2 | N | Descrição do produto |
| 3 | DS_ESPECIFICACAO | VARCHAR2 | Y | Observação sobre o produto |
| 4 | DS_PRODUTO_RESUMIDO | VARCHAR2 | N | Descrição resumida para consultas |
| 5 | ID_USUARIO | NUMBER | N | Usuário do cadstro e/ou Alteração |
| 6 | DT_CADASTRO | DATE | N | Data do Cadastro |
| 7 | DT_ALTERACAO | DATE | N | Data da alteração |
| 8 | SN_MEDICAMENTO | CHAR | N |  |
| 9 | SN_ATIVO | CHAR | N |  |

---

## IDCE.RS_PRD_PRODUTO_UNIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_PRODUTO_UNIDADE | NUMBER | N | Sequencial |
| 2 | ID_UNIDADE | NUMBER | N | Unidade configurada |
| 3 | ID_PRODUTO | NUMBER | N | Identificador do Produto |
| 4 | CD_PRODUTO_HIS | VARCHAR2 | Y | Código do produto no HIS |
| 5 | ID_USUARIO | NUMBER | N | Usuario de cadastro e/ou Alteração |
| 6 | DT_CADASTRO | DATE | N | Data do Cadastro |
| 7 | DT_ALTERACAO | DATE | N | Data de Alteração |

---

## IDCE.RS_PREF_CENARIO
> Tabela de preferencias do cenários

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_PREF_CEN | NUMBER | N | Id de preferencias do cenário |
| 2 | ID_USUARIO | NUMBER | N | Id do usuario |
| 3 | ID_CENARIO | NUMBER | Y | Id do cenário |
| 4 | CD_COR | VARCHAR2 | Y | Codigo da cor |
| 5 | NM_DESTAQUE | VARCHAR2 | Y | Nome do destaque do cenario |
| 6 | TP_POSICAO_DESTAQUE | VARCHAR2 | N | Possicao do destaque |

---

## IDCE.RS_PREF_PREFERENCIAS
> Tabela de preferencias do usuario

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_PREF | NUMBER | N | Id de preferencias do usuario |
| 2 | ID_USUARIO | NUMBER | N | Id do usuario |
| 3 | TP_TEMA | VARCHAR2 | Y | Identificador do tema utilizado pelo usuario |
| 4 | TP_IDIOMA | VARCHAR2 | Y | Identificador do idioma utilizado pelo usuario |
| 5 | TP_VISUALIZADOR | VARCHAR2 | Y | Identificador do visualizador utilizado pelo usuario |
| 6 | ID_CEN_FAVORITO | NUMBER | Y | Id do cenario favorito do usuario |
| 7 | DS_PREFERENCIAS_GERAIS | CLOB | Y | Descrição das preferencias gerias do usuário |

---

## IDCE.RS_SEG_APLICACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_APLICACAO | VARCHAR2 | N |  |
| 2 | NM_APLICACAO | VARCHAR2 | Y |  |
| 3 | DS_APLICACAOURI | VARCHAR2 | Y |  |
| 4 | DS_LOGOURI | VARCHAR2 | Y |  |
| 5 | DS_URISREDIRECIONAMENTO | VARCHAR2 | Y |  |
| 6 | DS_URISREDIRECIONAAPOSLOGOUT | VARCHAR2 | Y |  |
| 7 | SN_PERMITIRTOKENSVIABROWSER | CHAR | N |  |
| 8 | DS_ORIGENSCORSPERMITIDAS | VARCHAR2 | Y |  |
| 9 | DS_SEGREDOSDAAPLICACAO | VARCHAR2 | Y |  |
| 10 | DS_ESCOPOSDAAPLICACAO | VARCHAR2 | Y |  |
| 11 | SN_REQUERCONSENTIMENTO | CHAR | N |  |
| 12 | SN_HABILITADO | CHAR | N |  |
| 13 | DS_CONCESSOESPERMITIDAS | VARCHAR2 | Y |  |

---

## IDCE.RS_SEG_AUDITORIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_AUDITORIA | NUMBER | N |  |
| 2 | ID_USUARIO | NUMBER | N |  |
| 3 | DT_OPERACAO | DATE | Y |  |
| 4 | DS_OPERACAO | VARCHAR2 | Y |  |
| 5 | ID_UNIDADE | NUMBER | Y |  |

---

## IDCE.RS_SEG_AUTORIZACAOAUTENTICACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_CHAVE | VARCHAR2 | N |  |
| 2 | DS_TIPO | VARCHAR2 | Y |  |
| 3 | ID_USUARIO | NUMBER | Y |  |
| 4 | ID_APLICACAO | VARCHAR2 | Y |  |
| 5 | DT_CRIACAO | DATE | Y |  |
| 6 | DT_EXPIRACAO | DATE | Y |  |
| 7 | DS_TOKEN | CLOB | Y |  |

---

## IDCE.RS_SEG_BREAK

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TAG | VARCHAR2 | N | TAG DA BREAK CHANGE |
| 2 | DT_TAG | DATE | N | DATA DE INCLUSÃO DA BREAK CHANGE |
| 3 | CD_STATUS | CHAR | N | STATUS DA BREAK CHANGE |
| 4 | DT_STATUS | DATE | N | DATA DO STATUS DA BREAK CHANGE |
| 5 | NM_STATUS | VARCHAR2 | Y | NOME DO USUÁRIO DO STATUS DA BREAK CHANGE |
| 6 | DS_STATUS | VARCHAR2 | Y | DESCRIÇÃO DA JUSTIFICATIVA DA BREAKCHANGE |
| 7 | NR_VERSAO | VARCHAR2 | N | NÚMERO DA VERSÃO DO SISTEMA |
| 8 | DT_IGNORE | DATE | Y | DATA QUE A BREAK CHANGE FOI IGNORADA |

---

## IDCE.RS_SEG_CATALOGO_OPERACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_CATALOGO | NUMBER | N |  |
| 2 | NM_CATALOGO | VARCHAR2 | Y |  |
| 3 | DS_CATALOGO | VARCHAR2 | Y |  |
| 4 | NM_CATALOGO_ESP_PA | VARCHAR2 | Y |  |
| 5 | NM_CATALOGO_ESP_CL | VARCHAR2 | Y |  |
| 6 | NM_CATALOGO_ESP_PE | VARCHAR2 | Y |  |
| 7 | NM_CATALOGO_ESP_UY | VARCHAR2 | Y |  |

---

## IDCE.RS_SEG_CPT_DADOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_DADOS | NUMBER | N |  |
| 2 | DS_NOME_DADOS | VARCHAR2 | N |  |

---

## IDCE.RS_SEG_CPT_DADOS_ITENS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_DADOS_ITENS | NUMBER | N |  |
| 2 | ID_DADOS | NUMBER | N |  |
| 3 | TP_CAMPO | VARCHAR2 | N |  |
| 4 | DS_VALOR | VARCHAR2 | Y |  |

---

## IDCE.RS_SEG_CPT_GRID

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_GRID | NUMBER | N |  |
| 2 | DS_NOME_GRID | VARCHAR2 | N |  |

---

## IDCE.RS_SEG_CPT_GRID_COLUNA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_GRID_COLUNA | NUMBER | N |  |
| 2 | ID_GRID | NUMBER | N |  |
| 3 | DS_NOME_COLUNA | VARCHAR2 | N |  |
| 4 | NR_POSICAO | NUMBER | Y |  |
| 5 | NR_TAMANHO | NUMBER | Y |  |
| 6 | SN_VISIVEL | CHAR | N |  |

---

## IDCE.RS_SEG_CPT_USUARIO_CENARIO
> Tabela com cenários por usuário para o cockpit

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_CPT_CENARIO | NUMBER | N |  |
| 2 | ID_USUARIO | NUMBER | N |  |
| 3 | NM_CENARIO | VARCHAR2 | N |  |
| 4 | ID_GRID_PRINCIPAL | NUMBER | Y |  |
| 5 | ID_DADOS | NUMBER | Y |  |
| 6 | SN_AVANCO_AUTOMATICO | CHAR | N | Cenário permite avanço automátivo após ação de laudar |
| 7 | NM_USUARIO | VARCHAR2 | Y |  |
| 8 | SN_REPOSICIONAR_LAUDO | CHAR | Y |  |
| 9 | SN_EVITAR_VISITADOS | CHAR | Y |  |
| 10 | SN_CIRCULAR | CHAR | Y |  |

---

## IDCE.RS_SEG_CPT_USUARIO_CENARIO_BKP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_CPT_CENARIO | NUMBER | N |  |
| 2 | ID_USUARIO | NUMBER | N |  |
| 3 | NM_CENARIO | VARCHAR2 | N |  |
| 4 | ID_GRID_PRINCIPAL | NUMBER | Y |  |
| 5 | ID_DADOS | NUMBER | Y |  |
| 6 | SN_AVANCO_AUTOMATICO | CHAR | N |  |
| 7 | NM_USUARIO | VARCHAR2 | Y |  |
| 8 | SN_REPOSICIONAR_LAUDO | CHAR | Y |  |
| 9 | SN_EVITAR_VISITADOS | CHAR | Y |  |
| 10 | SN_CIRCULAR | CHAR | Y |  |

---

## IDCE.RS_SEG_CPT_VINCULO_CENARIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_CPT_CENARIO | NUMBER | N |  |
| 2 | ID_USUARIO | NUMBER | N |  |

---

## IDCE.RS_SEG_FERIADO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DT_FERIADO | DATE | Y |  |
| 2 | DS_FERIADO | VARCHAR2 | N | Descric?o |
| 3 | NR_DIA | NUMBER | N | Dia |
| 4 | NR_MES | NUMBER | N | Mes |
| 5 | NR_ANO | NUMBER | Y | Ano |
| 6 | CD_FERIADO | NUMBER | N | Código do Feriado |

---

## IDCE.RS_SEG_FILTRO_PROCEDIMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_USUARIO_UNIDADE_FILTRO | NUMBER | N |  |
| 2 | ID_USUARIO | NUMBER | N |  |
| 3 | ID_UNIDADE | NUMBER | N |  |
| 4 | DT_CADASTRO | DATE | N |  |
| 5 | DT_ALTERACAO | DATE | Y |  |
| 6 | ID_PROCEDIMENTO | NUMBER | N |  |

---

## IDCE.RS_SEG_FILTRO_SETOR_EXEC

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_USUARIO_UNIDADE_FILTRO | NUMBER | N |  |
| 2 | ID_USUARIO | NUMBER | N |  |
| 3 | ID_UNIDADE | NUMBER | N |  |
| 4 | DT_CADASTRO | DATE | N |  |
| 5 | DT_ALTERACAO | DATE | Y |  |
| 6 | ID_SETOR_EXEC | NUMBER | N |  |

---

## IDCE.RS_SEG_FILTRO_SISTEMA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_USUARIO_UNIDADE_FILTRO | NUMBER | N |  |
| 2 | ID_USUARIO | NUMBER | N |  |
| 3 | ID_UNIDADE | NUMBER | N |  |
| 4 | DT_CADASTRO | DATE | N |  |
| 5 | DT_ALTERACAO | DATE | Y |  |
| 6 | ID_SISTEMA | NUMBER | N |  |

---

## IDCE.RS_SEG_FILTRO_UNIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_USUARIO_UNIDADE_FILTRO | NUMBER | N |  |
| 2 | ID_USUARIO | NUMBER | Y |  |
| 3 | DT_CADASTRO | DATE | Y |  |
| 4 | DT_ALTERACAO | DATE | Y |  |
| 5 | ID_UNIDADE | NUMBER | N |  |

---

## IDCE.RS_SEG_GRUPO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_GRUPO | NUMBER | N |  |
| 2 | NM_GRUPO | VARCHAR2 | Y |  |
| 3 | DS_GRUPO | VARCHAR2 | Y |  |
| 4 | DT_CADASTRO | DATE | Y |  |
| 5 | DT_ALTERACAO | DATE | Y |  |
| 6 | ID_USUARIO | NUMBER | Y |  |
| 7 | ID_INTERBASE | NUMBER | Y |  |
| 8 | SN_ATIVO | CHAR | N | (S/N) ATIVO |

---

## IDCE.RS_SEG_GRUPO_OPERACAO_SISTEMA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_OPERACAO | NUMBER | N |  |
| 2 | ID_GRUPO | NUMBER | N |  |
| 3 | ID_USUARIO | NUMBER | Y |  |
| 4 | DT_CADASTRO | DATE | N |  |
| 5 | DT_ALTERACAO | DATE | Y |  |

---

## IDCE.RS_SEG_HISTORICO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_HISTORICO | NUMBER | N |  |
| 2 | DS_TIPO_HISTORICO | VARCHAR2 | Y |  |
| 3 | ID_EXAME_PEDIDO | NUMBER | Y |  |
| 4 | ID_MEDICO_EXECUTANTE | NUMBER | Y |  |
| 5 | ID_MEDICO_REVISOR | NUMBER | Y |  |
| 6 | ID_MEDICO_REVISOR_FINAL | NUMBER | Y |  |
| 7 | DT_FINALIZACAO | DATE | Y |  |
| 8 | DT_LAUDADO | DATE | Y |  |
| 9 | DT_PEDIDO | DATE | Y |  |
| 10 | DT_IMPRESSO | DATE | Y |  |
| 11 | DT_ASSINADO | DATE | Y |  |
| 12 | DT_DIGITADO | DATE | Y |  |
| 13 | DT_REVISADO | DATE | Y |  |
| 14 | DT_REVISADO_FINAL | DATE | Y |  |
| 15 | DT_ENTREGA | DATE | Y |  |
| 16 | DS_LAUDO_TXT | CLOB | Y |  |
| 17 | ID_USUARIO | NUMBER | Y |  |
| 18 | DT_CADASTRO | DATE | N |  |
| 19 | DT_ALTERACAO | DATE | Y |  |
| 20 | ID_PACIENTE | NUMBER | Y |  |
| 21 | ID_UNIDADE | NUMBER | Y |  |
| 22 | NM_PACIENTE | VARCHAR2 | Y |  |
| 23 | DS_ENDERECO | VARCHAR2 | Y |  |
| 24 | DS_BAIRRO | VARCHAR2 | Y |  |
| 25 | DS_CIDADE | VARCHAR2 | Y |  |
| 26 | DS_UF | VARCHAR2 | Y |  |
| 27 | DS_CEP | VARCHAR2 | Y |  |
| 28 | DS_TELEFONE | VARCHAR2 | Y |  |
| 29 | DS_EMAIL | VARCHAR2 | Y |  |
| 30 | NM_MEDICO_EXECUTANTE | VARCHAR2 | Y |  |
| 31 | NM_MEDICO_REVISOR | VARCHAR2 | Y |  |
| 32 | NM_MEDICO_REVISOR_FINAL | VARCHAR2 | Y |  |
| 33 | DS_JUSTIFICATIVA | VARCHAR2 | Y |  |

---

## IDCE.RS_SEG_OPERACAO_SISTEMA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_OPERACAO | NUMBER | N |  |
| 2 | NM_OPERACAO | VARCHAR2 | Y |  |
| 3 | DS_OPERACAO | VARCHAR2 | Y |  |
| 4 | ID_CATALOGO | NUMBER | Y |  |
| 5 | ID_INTERBASE | NUMBER | Y |  |
| 6 | ID_USUARIO | NUMBER | Y |  |
| 7 | DS_OPERACAO_ESP_PA | VARCHAR2 | Y |  |
| 8 | DS_OPERACAO_ESP_CL | VARCHAR2 | Y |  |
| 9 | DS_OPERACAO_ESP_PE | VARCHAR2 | Y |  |
| 10 | DS_OPERACAO_ESP_UY | VARCHAR2 | Y |  |

---

## IDCE.RS_SEG_USUARIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_USUARIO | NUMBER | N |  |
| 2 | ID_USUARIO_PAI | NUMBER | Y |  |
| 3 | NM_USUARIO | VARCHAR2 | Y |  |
| 4 | DT_NASCIMENTO | DATE | Y |  |
| 5 | TP_SEXO | VARCHAR2 | N |  |
| 6 | DS_CARGO | VARCHAR2 | Y |  |
| 7 | NM_IDENTIFICACAO | VARCHAR2 | Y |  |
| 8 | DS_ENDERECO | VARCHAR2 | Y |  |
| 9 | DS_BAIRRO | VARCHAR2 | Y |  |
| 10 | DS_CIDADE | VARCHAR2 | Y |  |
| 11 | DS_UF | VARCHAR2 | Y |  |
| 12 | DS_CEP | VARCHAR2 | Y |  |
| 13 | DS_CPF | VARCHAR2 | Y |  |
| 14 | DS_RG | VARCHAR2 | Y |  |
| 15 | DS_TELEFONE | VARCHAR2 | Y |  |
| 16 | DS_FAX | VARCHAR2 | Y |  |
| 17 | CD_SENHA | VARCHAR2 | Y |  |
| 18 | DS_EMAIL | VARCHAR2 | Y |  |
| 19 | SN_ACESSO_IRRESTRITO | CHAR | Y |  |
| 20 | SN_TROCA_SENHA | CHAR | Y |  |
| 21 | SN_ATIVO | CHAR | Y |  |
| 22 | DT_CADASTRO | DATE | Y |  |
| 23 | DT_ALTERACAO | DATE | Y |  |
| 24 | IM_BIOMETRIA | BLOB | Y |  |
| 25 | DS_USUARIO_VIEWER | VARCHAR2 | Y |  |
| 26 | DS_SENHA_VIEWER | VARCHAR2 | Y |  |
| 27 | DS_ULTIMA_IMPRESSORA | VARCHAR2 | Y |  |
| 28 | SN_IMPRESSAO_LOCAL | CHAR | Y |  |
| 29 | SN_PRINT_REVISAO_AUT | CHAR | N |  |
| 30 | SN_ACESSO_MRB | CHAR | N |  |
| 31 | TP_PRIORIDADE_EVOLUCAO_PACIENT | CHAR | N | P = PDF e T = TXT |
| 32 | SN_VISAO_AUTO_TEXTO_GERAL_USU | CHAR | N | Visualizar por padrão o auto texto geral do usuário |
| 33 | SN_VISAO_AUTO_TEXTO_VINC_USU | CHAR | N | Visualizar por padrão o auto texto vinculado do usuário |
| 34 | DS_CELULAR | VARCHAR2 | Y |  |
| 35 | NM_SKIN | VARCHAR2 | Y |  |
| 36 | ID_CPT_CENARIO | NUMBER | Y | identificador de cenário do COCKPIT - vínculo com o campo rs_seg_cpt_usuario_cenario.id_cpt_cenar... |
| 37 | QT_REG_PAGINA_BS_CONHEC | NUMBER | Y | Quantidade de registros na grid da BASE DO CONHECIMENTO do Cockpit |
| 38 | QT_REG_PAGINA_COCKPIT | NUMBER | Y |  |
| 39 | TP_ORDEM_AUTO_TEXTO_COCKPIT | NUMBER | Y | Tipo de ordenação na visualização de auto-textos no Cockpit |
| 40 | DS_USUARIO_SPEECHANYWHERE | VARCHAR2 | Y |  |
| 41 | DS_SENHA_SPEECHANYWHERE | VARCHAR2 | Y |  |
| 42 | CD_SENHA_FORTE | VARCHAR2 | Y |  |
| 43 | DS_USUARIO_RESMD | VARCHAR2 | Y |  |
| 44 | DS_SENHA_RESMD | VARCHAR2 | Y |  |
| 45 | SN_SPEECH_MAGIC | CHAR | N |  |
| 46 | TP_RECONHECIMENTO_VOZ | CHAR | Y |  |
| 47 | SN_CHAT | CHAR | Y |  |
| 48 | SN_IP | CHAR | Y |  |
| 49 | DS_SENHA_SPEECH_IARA | VARCHAR2 | Y |  |
| 50 | DS_USUARIO_SPEECH_IARA | VARCHAR2 | Y |  |
| 51 | DS_USUARIO_SPEECH_INVOX | VARCHAR2 | Y |  |
| 52 | DS_SENHA_SPEECH_INVOX | VARCHAR2 | Y |  |
| 53 | SN_SINCRONIZACAOPACS | CHAR | N | (S/N) SINCRONIZAÇÃO COM PACS SEMPRE ATIVA NO MCOCKPIT |
| 54 | SN_SINCRONIZACAO_VIEWER | CHAR | N | Verificação de exames abertos no Viewer |
| 55 | DS_USUARIO_LAUDO_ESTRURURADO | VARCHAR2 | Y | Descricao Do Usuario Do Laudo Estruturado |
| 56 | DS_SENHA_LAUDO_ESTRURURADO | VARCHAR2 | Y | Descricao Da Senha Do Laudo Estruturado |
| 57 | SN_LOGIN_ONEPASS | CHAR | N | Usuario Habilitado Login Federacao MV ONEPASS |
| 58 | DS_TOKEN_SPEECH_GOOGLE_CLOUD | VARCHAR2 | Y | Chave para autenticação da api do google |
| 59 | DS_VIDA_PORTA | VARCHAR2 | Y |  |
| 60 | DS_URL_VIDA | VARCHAR2 | Y |  |

---

## IDCE.RS_SEG_USUARIO_CHAT_MENSAGEM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_USUARIO_CHAT_MSG | NUMBER | N |  |
| 2 | ID_USUARIO_PAI | NUMBER | N |  |
| 3 | ID_USUARIO_DESTINO | NUMBER | N |  |
| 4 | DT_DATA_MSG | DATE | N |  |
| 5 | DS_MENSAGEM | CLOB | Y |  |
| 6 | TP_MENSAGEM | NUMBER | N |  |
| 7 | ID_USUARIO_ORIGEM | NUMBER | N |  |
| 8 | SN_MENSAGEM_PENDENTE | CHAR | N |  |

---

## IDCE.RS_SEG_USUARIO_FOTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_USUARIO | NUMBER | N |  |
| 2 | IM_USUARIO | BLOB | N |  |

---

## IDCE.RS_SEG_USUARIO_OPERACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_USUARIO | NUMBER | N |  |
| 2 | ID_USUARIO_CADASTRO | NUMBER | Y |  |
| 3 | ID_GRUPO | NUMBER | N |  |
| 4 | DT_CADASTRO | DATE | Y |  |
| 5 | DT_ALTERACAO | DATE | Y |  |
| 6 | ID_UNIDADE | NUMBER | N |  |

---

## IDCE.RS_SEG_USUARIO_TEXTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_USUARIO_TEXTO | NUMBER | N |  |
| 2 | ID_TEXTO_EXAME | NUMBER | N |  |
| 3 | ID_USUARIO | NUMBER | N |  |
| 4 | DT_CADASTRO | DATE | N |  |
| 5 | DT_ALTERACAO | DATE | Y |  |
| 6 | ID_USUARIO_CADASTRO | NUMBER | N |  |
| 7 | ID_USUARIO_ALTERACAO | NUMBER | Y |  |

---

## IDCE.RS_SEG_USUARIO_UNIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_USUARIO | NUMBER | N |  |
| 2 | ID_USUARIO_CADASTRO | NUMBER | Y |  |
| 3 | SN_ATIVO | VARCHAR2 | Y |  |
| 4 | ID_UNIDADE | NUMBER | N |  |
| 5 | DT_CADASTRO | DATE | Y |  |
| 6 | DT_ALTERACAO | DATE | Y |  |
| 7 | ID_INTERBASE | NUMBER | Y |  |
| 8 | ID_FILTRO_DEFAULT | NUMBER | Y |  |

---

## IDCE.RS_SEG_USUARIO_UNIDADE_FILTRO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_USUARIO_UNIDADE_FILTRO | NUMBER | N |  |
| 2 | ID_USUARIO | NUMBER | N |  |
| 3 | ID_UNIDADE | NUMBER | N |  |
| 4 | DT_CADASTRO | DATE | N |  |
| 5 | DT_ALTERACAO | DATE | Y |  |
| 6 | ID_PROCEDIMENTO | NUMBER | Y |  |
| 7 | ID_SISTEMA | NUMBER | Y |  |
| 8 | ID_SETOR | NUMBER | Y |  |
| 9 | SN_EXECUTANTE | CHAR | Y |  |
| 10 | SN_REVISOR | CHAR | Y |  |
| 11 | SN_DIGITADO | CHAR | Y |  |
| 12 | SN_LAUDADO | CHAR | Y |  |
| 13 | SN_REVISADO | CHAR | Y |  |
| 14 | SN_ASSINADO | CHAR | Y |  |
| 15 | SN_IMPRESSO | CHAR | Y |  |
| 16 | SN_LIBERADO | CHAR | Y |  |
| 17 | SN_ENTREGUE | CHAR | Y |  |
| 18 | SN_NORMAL | CHAR | Y |  |
| 19 | SN_IMAGEM | CHAR | Y |  |
| 20 | NR_TEMPO_RETROCEDER | NUMBER | Y |  |
| 21 | DS_FILTRO | VARCHAR2 | N |  |
| 22 | SN_DITADO | CHAR | Y |  |
| 23 | DS_ORIGEM_ATENDIMENTO | VARCHAR2 | Y |  |
| 24 | ID_TIPO_PRIORIDADE | NUMBER | Y |  |
| 25 | SN_ATRASADO | CHAR | N | S -> Sim, N -> Não e T -> Todos |
| 26 | TP_DATA_FILTRO | VARCHAR2 | N |  |
| 27 | TP_PACIENTE_SEXO_FILTRO | CHAR | N | T = Todos, M = Masculino e F = Feminino |

---

## IDCE.RS_SEG_USUARIO_UNIDADE_SETOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_USUARIO | NUMBER | Y |  |
| 2 | ID_UNIDADE | NUMBER | Y |  |
| 3 | ID_SETOR_EXECUTANTE | NUMBER | Y |  |
| 4 | DT_CADASTRO | DATE | Y |  |
| 5 | DT_ALTERACAO | DATE | Y |  |
| 6 | ID_USUARIO_CADASTRO | NUMBER | Y |  |
| 7 | SN_ATIVO | VARCHAR2 | Y |  |
| 8 | ID_USUARIO_UNIDADE_SETOR | NUMBER | N |  |

---

## IDCE.RS_SEG_VERSOES
> Tabela de registros das versões desktop que estão em uso

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_VERSAO | NUMBER | N | Id |
| 2 | NM_SISTEMA | VARCHAR2 | N | Nome do sistema |
| 3 | DS_IP | VARCHAR2 | N | Endereço ip v4 ou v6 |
| 4 | NR_VERSAO | VARCHAR2 | N | Número da versão em uso |
| 5 | DT_OCORRENCIA | DATE | Y | Date em que o registro foi atualizado pela ultima vez |

---

## IDCE.RS_SL_SALA_EXAME

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_SALA | NUMBER | N |  |
| 2 | NM_SALA | VARCHAR2 | Y |  |
| 3 | CD_SALA_HIS | VARCHAR2 | Y |  |
| 4 | DS_AE_TITLE | VARCHAR2 | Y |  |
| 5 | DS_PORTA | VARCHAR2 | Y |  |
| 6 | ID_MODALIDADE | NUMBER | Y |  |
| 7 | NR_TEMPO_MEDIO_ATENDIMENTO | VARCHAR2 | Y |  |
| 8 | NM_EQUIPAMENTO | VARCHAR2 | Y |  |
| 9 | NM_FABRICANTE | VARCHAR2 | Y |  |
| 10 | ID_UNIDADE | NUMBER | Y |  |
| 11 | DT_CADASTRO | DATE | Y |  |
| 12 | DT_ALTERACAO | DATE | Y |  |
| 13 | ID_USUARIO | NUMBER | Y |  |
| 14 | ID_INTERBASE | NUMBER | Y |  |
| 15 | SN_ATIVO | CHAR | N | (S/N) ATIVO |

---

## IDCE.RS_UNI_FEDERACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_FEDERACAO | NUMBER | N |  |
| 2 | NM_FEDERACAO | VARCHAR2 | Y |  |
| 3 | DS_FEDERACAO | VARCHAR2 | Y |  |
| 4 | SN_ATIVO | CHAR | Y |  |
| 5 | DT_CADASTRO | DATE | Y |  |
| 6 | DT_ALTERACAO | DATE | Y |  |
| 7 | ID_USUARIO | NUMBER | Y |  |
| 8 | DS_BANCO_DADOS_IP | VARCHAR2 | Y |  |
| 9 | DS_BANCO_PORTA | VARCHAR2 | Y |  |
| 10 | DS_BANCO_SERVER_NAME | VARCHAR2 | Y |  |
| 11 | DS_BANCO_LOGIN | VARCHAR2 | Y |  |
| 12 | DS_BANCO_SENHA | VARCHAR2 | Y |  |

---

## IDCE.RS_UNI_IMPORTA_PACIENTE
> Cadastro da importação de dados de pacientes (via sistema)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_IMPORTACAO | NUMBER | N | Id da da importacação |
| 2 | ID_UNIDADE | NUMBER | N | id da unidade |
| 3 | DS_ORIGEM | VARCHAR2 | N | Campo de destino da tabela de pacientes do vivace |
| 4 | DS_DESTINO | VARCHAR2 | N | Campo de origem no json origem |
| 5 | SN_FORMULA | CHAR | N | Campo é procesado por formula (s/n) |
| 6 | DS_FORMULA | CLOB | Y | Formula de prcessamento da importação do campo |

---

## IDCE.RS_UNI_REGIAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_REGIAO | NUMBER | N |  |
| 2 | NM_REGIAO | VARCHAR2 | Y |  |
| 3 | CD_REGIAO_HIS | VARCHAR2 | Y |  |
| 4 | DS_REGIAO | VARCHAR2 | Y |  |
| 5 | SN_ATIVO | CHAR | Y |  |
| 6 | DT_CADASTRO | DATE | Y |  |
| 7 | DT_ALTERACAO | DATE | Y |  |
| 8 | ID_USUARIO | NUMBER | Y |  |
| 9 | ID_FEDERACAO | NUMBER | Y |  |

---

## IDCE.RS_UNI_ROTAS
> Table de rotemento de url por unidade

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_UNIDADE | NUMBER | N | Id da unidade |
| 2 | DS_CIDR | VARCHAR2 | N | CIDR (Classless Inter-Domain Routing) para validação de ip externo |
| 3 | DS_URL_VIDA | VARCHAR2 | Y | URL para acesso ao VIDA |
| 4 | DS_VIDA_PORTA | VARCHAR2 | Y | Porta para acesso ao VIDA |
| 5 | NR_ORDEM | NUMBER | Y | Ordem de prioridade de validação |

---

## IDCE.RS_UNI_TRANSFERENCIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_TRANSFERENCIA | NUMBER | N |  |
| 2 | ID_UNIDADE_ORIGEM | NUMBER | N |  |
| 3 | ID_UNIDADE_DESTINO | NUMBER | N |  |
| 4 | DT_CADASTRO | DATE | N |  |
| 5 | DT_ALTERACAO | DATE | Y |  |
| 6 | ID_USUARIO | NUMBER | N |  |

---

## IDCE.RS_UNI_TRANSFERENCIA_EXAME

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_TRANSFERENCIA_EXAME | NUMBER | N |  |
| 2 | ID_TRANSFERENCIA | NUMBER | N |  |
| 3 | ID_EXAME_UNIDADE | NUMBER | N |  |
| 4 | DT_CADASTRO | DATE | N |  |
| 5 | ID_USUARIO | NUMBER | N |  |

---

## IDCE.RS_UNI_UNIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_UNIDADE | NUMBER | N |  |
| 2 | NM_UNIDADE | VARCHAR2 | Y |  |
| 3 | DS_ENDERECO | VARCHAR2 | Y |  |
| 4 | DS_BAIRRO | VARCHAR2 | Y |  |
| 5 | DS_CIDADE | VARCHAR2 | Y |  |
| 6 | DS_UF | VARCHAR2 | Y |  |
| 7 | DS_CEP | VARCHAR2 | Y |  |
| 8 | DS_TELEFONE1 | VARCHAR2 | Y |  |
| 9 | DS_TELEFONE2 | VARCHAR2 | Y |  |
| 10 | DS_FAX | VARCHAR2 | Y |  |
| 11 | DS_CNPJ | VARCHAR2 | Y |  |
| 12 | DS_EMAIL | VARCHAR2 | Y |  |
| 13 | DS_CONTATO | VARCHAR2 | Y |  |
| 14 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 15 | CD_UNIDADE_HIS | VARCHAR2 | Y |  |
| 16 | SN_ATIVO | CHAR | Y |  |
| 17 | DT_CADASTRO | DATE | Y |  |
| 18 | DT_ALTERACAO | DATE | Y |  |
| 19 | ID_USUARIO | NUMBER | Y |  |
| 20 | ID_REGIAO | NUMBER | Y |  |
| 21 | DS_INTEGRA_IP | VARCHAR2 | Y |  |
| 22 | DS_INTEGRA_SERVER_NAME | VARCHAR2 | Y |  |
| 23 | DS_INTEGRA_PORTA | VARCHAR2 | Y |  |
| 24 | DS_INTEGRA_LOGIN | VARCHAR2 | Y |  |
| 25 | DS_INTEGRA_SENHA | VARCHAR2 | Y |  |
| 26 | DS_DICOM_SEVER_IP | VARCHAR2 | Y |  |
| 27 | NR_DICOM_SERVER_PORTA | VARCHAR2 | Y |  |
| 28 | DS_DICOM_SERVER_AE_TITLE | VARCHAR2 | Y |  |
| 29 | DS_BANCO_DICOM_SERVER_IPPATH | VARCHAR2 | Y |  |
| 30 | NR_BANCO_DICOM_SERVER_PORTA | VARCHAR2 | Y |  |
| 31 | DS_BANCO_DICOM_SERVER_NAME | VARCHAR2 | Y |  |
| 32 | DS_BANCO_DICOM_SERVER_LOGIN | VARCHAR2 | Y |  |
| 33 | DS_BANCO_DICOM_SERVER_SENHA | VARCHAR2 | Y |  |
| 34 | DS_WORKLIST_IPPATH | VARCHAR2 | Y |  |
| 35 | NR_WORKLIST_PORTA | VARCHAR2 | Y |  |
| 36 | DS_WORKLIST_SERVER_NAME | VARCHAR2 | Y |  |
| 37 | DS_WORKLIST_LOGIN | VARCHAR2 | Y |  |
| 38 | DS_WORKLIST_SENHA | VARCHAR2 | Y |  |
| 39 | DS_SMS_LINK | VARCHAR2 | Y |  |
| 40 | DS_SMS_MSG | VARCHAR2 | Y |  |
| 41 | DS_SMS_REMETENTE | VARCHAR2 | Y |  |
| 42 | DS_WEB_VIEWER | VARCHAR2 | Y |  |
| 43 | DS_STUDYUID | VARCHAR2 | Y |  |
| 44 | ID_CONVENIO_PADRAO | NUMBER | Y |  |
| 45 | ID_MEDICO_SOLICITANTE_PADRAO | NUMBER | Y |  |
| 46 | ID_MEDICO_EXECUTANTE_PADRAO | NUMBER | Y |  |
| 47 | CD_UNIDADE_BASE_HIS | VARCHAR2 | Y |  |
| 48 | ID_RASTREAR_LAUDO | NUMBER | Y |  |
| 49 | DS_PATH_EXPORTA_LAUDO | VARCHAR2 | Y |  |
| 50 | SN_PRINT_PDF | CHAR | Y |  |
| 51 | DS_3D_TERARECON_APP_NAME | VARCHAR2 | Y |  |
| 52 | DS_3D_TERARECON_USER | VARCHAR2 | Y |  |
| 53 | DS_3D_TERARECON_PASSWORD | VARCHAR2 | Y |  |
| 54 | DS_3D_TERARECON_HOST | VARCHAR2 | Y |  |
| 55 | DS_3D_TERARECON_PORT | VARCHAR2 | Y |  |
| 56 | SN_VISUALIZE_PDF | CHAR | Y |  |
| 57 | SN_TAG_PDF | CHAR | Y |  |
| 58 | SN_INTEGRA | CHAR | Y |  |
| 59 | ID_BANCO | NUMBER | Y |  |
| 60 | SN_LOGIN_TROCA_ETAPA | CHAR | Y |  |
| 61 | SN_EXIGE_CERTIFICACAO_LAUDO | CHAR | Y |  |
| 62 | TP_DATA_PADRAO | CHAR | Y |  |
| 63 | DS_LINK_SPEECHANYWHERE | VARCHAR2 | Y |  |
| 64 | DS_LINK_WADO | VARCHAR2 | Y |  |
| 65 | CD_CNES | VARCHAR2 | Y |  |
| 66 | SN_SEM_INTEGRACAO_HIS | CHAR | Y |  |
| 67 | SN_SUPRIMIR_MSG_PENDENTE | CHAR | N |  |
| 68 | SN_SUPRIMIR_MSG_3OPNIAO | CHAR | N |  |
| 69 | DS_URL_RESMD | VARCHAR2 | Y |  |
| 70 | ID_ORIGEM_ATENDIMENTO | NUMBER | Y |  |
| 71 | SN_BLOQUEIO_CONTA_FECHADA | CHAR | N |  |
| 72 | DS_URL_VITREA | VARCHAR2 | Y |  |
| 73 | DS_OSIRIX_SERVER_NAME | VARCHAR2 | Y |  |
| 74 | DS_URL_CONNECTWEB | CLOB | Y | Url para o visualizador Connect web |
| 75 | SN_ABRIR_ESTUDO_MESMA_ABA | CHAR | N |  |
| 76 | SN_SEGURO_RESMD | CHAR | N |  |
| 77 | DS_USERNAME_RESMD | VARCHAR2 | Y |  |
| 78 | DS_SECRET_RESMD | VARCHAR2 | Y |  |
| 79 | SN_EXIGIR_JUST_ERRATA | CHAR | N |  |
| 80 | SN_LAUDAR_SOMENTE_DISTRIBUIDOS | VARCHAR2 | Y |  |
| 81 | NR_MINUTOS_INICIO_EXAME | NUMBER | Y | Tempo para Início de Exame em minutos de acordo com configurações de OLA |
| 82 | NR_MINUTOS_PRIMEIRO_LAUDO | NUMBER | Y | Tempo para a realização do Primeiro Laudo em minutos de acordo com configurações de OLA |
| 83 | NR_MINUTOS_PRIMEIRO_PARECER | NUMBER | Y | Tempo para realizar o primeiro parecer em minutos de acordo com configurações de OLA |
| 84 | NR_MINUTOS_REVISAO | NUMBER | Y | Tempo para realizar a revisão do laudo em minutos de acordo com configurações de OLA |
| 85 | SN_INT_PACIENTE | CHAR | Y | (S/N) integração para o cadastro de pacientes |
| 86 | DS_URL_INT_PACIENTE | VARCHAR2 | Y | Url de integração para o cadastro de pacientes |
| 87 | SN_SUPR_MSG_ESTUDO_ASSOCIADO | CHAR | N |  |
| 88 | ID_UNIDADE_PACS | NUMBER | Y | ID DA UNIDADE NO PACS, CASO SEJA DIFERENTE DA UNIDADE RIS |
| 89 | DS_VIEWER_CLIENTID | VARCHAR2 | Y | ClientID para acesso ao Viewer |
| 90 | DS_VIEWER_CLIENTSECRET | VARCHAR2 | Y | ClientSecret para acesso ao Viewer |
| 91 | DS_URL_VIDA | VARCHAR2 | Y | Url Do visualizador Vida |
| 92 | DS_VIDA_PORTA | VARCHAR2 | Y | Porta Do visualizador Vida |
| 93 | DS_PARAMETROS_ABERTURA_VIDA | CLOB | Y | Parâmentros de abertura do visualizador VIDA |
| 94 | DS_URL_LAUDO_ESTRUTURADO | VARCHAR2 | Y | Url Do Laudo Estruturado |
| 95 | SN_SUPRIMIR_LOGO_IMPRESS_LAUDO | CHAR | N | Suprimir Logomarca Na Impressão do Laudo |

---

## IDCE.RS_VW_BI_ESTATISTICA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 2 | ID_UNIDADE | NUMBER | Y |  |
| 3 | NM_UNIDADE | VARCHAR2 | Y |  |
| 4 | ID_MODALIDADE | NUMBER | N |  |
| 5 | NM_MODALIDADE | VARCHAR2 | Y |  |
| 6 | ID_PROCEDIMENTO | NUMBER | N |  |
| 7 | NM_PROCEDIMENTO | VARCHAR2 | Y |  |
| 8 | ID_EXAME_UNIDADE | NUMBER | N |  |
| 9 | NM_EXAME_UNIDADE | VARCHAR2 | Y |  |
| 10 | ID_MEDICO_EXECUTANTE | NUMBER | Y |  |
| 11 | NM_MEDICO_EXECUTANTE | VARCHAR2 | Y |  |
| 12 | ID_CONVENIO_UNIDADE | NUMBER | Y |  |
| 13 | NM_CONVENIO_UNIDADE | VARCHAR2 | Y |  |
| 14 | DS_CRM_EXECUTANTE | VARCHAR2 | Y |  |
| 15 | ID_PACIENTE_UNIDADE | NUMBER | N |  |
| 16 | CD_PEDIDO_HIS | VARCHAR2 | Y |  |
| 17 | DT_ASSINADO | DATE | Y |  |
| 18 | DT_STUDY | DATE | Y |  |
| 19 | DT_LAUDADO | DATE | Y |  |
| 20 | DT_REVISADO | DATE | Y |  |
| 21 | DT_PEDIDO_HIS | DATE | Y |  |
| 22 | DT_CADASTRO | DATE | N |  |
| 23 | DS_STATUS | VARCHAR2 | Y |  |
| 24 | CD_STATUS | CHAR | Y |  |
| 25 | TEMPO_HR_LAUDAR | VARCHAR2 | Y |  |
| 26 | TEMPO_HR_REVISAR | VARCHAR2 | Y |  |
| 27 | TEMPO_HR_ASSINAR | VARCHAR2 | Y |  |
| 28 | FORA_PRAZO | NUMBER | Y |  |
| 29 | DENTRO_PRAZO | NUMBER | Y |  |
| 30 | SEM_IMAGEM | NUMBER | Y |  |
| 31 | COM_IMAGEM | NUMBER | Y |  |
| 32 | PEDIDO_IMPRESSO | NUMBER | Y |  |
| 33 | PEDIDO_COM_CD | NUMBER | Y |  |
| 34 | ID_MEDICO_SOLICITANTE | NUMBER | Y |  |

---

## IDCE.RS_VW_COCKPIT_LISTA_TRABALHO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NM_UNIDADE | VARCHAR2 | Y |  |
| 2 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 3 | DS_CERTIFICACAO_DIGITAL | VARCHAR2 | Y |  |
| 4 | ID_EXAME_PEDIDO_PAI | NUMBER | Y |  |
| 5 | ID_PEDIDO_EXAME | NUMBER | N |  |
| 6 | ID_PACIENTE | NUMBER | N |  |
| 7 | ID_PACIENTE_CONSOLIDADO | NUMBER | N |  |
| 8 | NM_PACIENTE | VARCHAR2 | Y |  |
| 9 | DT_NASCIMENTO | DATE | Y |  |
| 10 | DS_TELEFONE | VARCHAR2 | Y |  |
| 11 | NR_PRONTUARIO_HOSPITALAR | VARCHAR2 | Y |  |
| 12 | CD_PACIENTE_HIS | VARCHAR2 | Y |  |
| 13 | ID_UNIDADE | NUMBER | N |  |
| 14 | ID_CONVENIO | NUMBER | Y |  |
| 15 | NM_SOCIAL_PACIENTE | VARCHAR2 | Y |  |
| 16 | NM_CONVENIO_UNIDADE | VARCHAR2 | Y |  |
| 17 | ID_MEDICO_SOLICITANTE | NUMBER | Y |  |
| 18 | NM_MEDICO_SOLICITANTE | VARCHAR2 | Y |  |
| 19 | DS_CRM_SOLICITANTE | VARCHAR2 | Y |  |
| 20 | ID_MEDICO_EXECUTANTE | NUMBER | Y |  |
| 21 | NM_MEDICO_EXECUTANTE | VARCHAR2 | Y |  |
| 22 | DS_CRM_EXECUTANTE | VARCHAR2 | Y |  |
| 23 | ID_MEDICO_REVISOR | NUMBER | Y |  |
| 24 | NM_MEDICO_REVISOR | VARCHAR2 | Y |  |
| 25 | DS_CRM_REVISOR | VARCHAR2 | Y |  |
| 26 | ID_MEDICO_REVISOR_FINAL | VARCHAR2 | Y |  |
| 27 | NM_MEDICO_REVISOR_FINAL | VARCHAR2 | Y |  |
| 28 | DS_CRM_REVISOR_FINAL | VARCHAR2 | Y |  |
| 29 | ID_DIAGNOSTICO_RADIO | VARCHAR2 | Y |  |
| 30 | NM_DIAGNOSTICO_RADIO | VARCHAR2 | Y |  |
| 31 | ID_DIAGNOSTICO_CLINICO | VARCHAR2 | Y |  |
| 32 | NM_DIAGNOSTICO_CLINICO | VARCHAR2 | Y |  |
| 33 | ID_DIAGNOSTICO_CIRURGICO | VARCHAR2 | Y |  |
| 34 | NM_DIAGNOSTICO_CIRURGICO | VARCHAR2 | Y |  |
| 35 | ID_SALA | NUMBER | Y |  |
| 36 | NM_SALA | VARCHAR2 | Y |  |
| 37 | DT_CADASTRO | DATE | N |  |
| 38 | DT_ALTERACAO | DATE | Y |  |
| 39 | ID_EXAME_UNIDADE | NUMBER | N |  |
| 40 | NM_EXAME_UNIDADE | VARCHAR2 | Y |  |
| 41 | ID_EXAME | NUMBER | N |  |
| 42 | NR_PRAZO_ENTREGA | VARCHAR2 | Y |  |
| 43 | ID_USUARIO_INCLUSAO | VARCHAR2 | Y |  |
| 44 | NM_USUARIO_INCLUSAO | VARCHAR2 | Y |  |
| 45 | ID_USUARIO_ALTERACAO | VARCHAR2 | Y |  |
| 46 | NM_USUARIO_ALTERACAO | VARCHAR2 | Y |  |
| 47 | DT_DUM | DATE | Y |  |
| 48 | CD_ATENDIMENTO_HIS | VARCHAR2 | Y |  |
| 49 | CD_PEDIDO_HIS | VARCHAR2 | Y |  |
| 50 | CD_ITEM_PEDIDO_HIS | VARCHAR2 | Y |  |
| 51 | ID_ORIGEM_ATENDIMENTO | NUMBER | Y |  |
| 52 | CD_STATUS | VARCHAR2 | Y |  |
| 53 | CD_STATUS_IA | NUMBER | Y |  |
| 54 | DS_STATUS | VARCHAR2 | Y |  |
| 55 | ID_SETOR | NUMBER | Y |  |
| 56 | NM_SETOR | VARCHAR2 | Y |  |
| 57 | ID_USUARIO_ENTRADA_EXAME | VARCHAR2 | Y |  |
| 58 | NM_USUARIO_ENTRADA_EXAME | VARCHAR2 | Y |  |
| 59 | ID_USUARIO_SAIDA_EXAME | VARCHAR2 | Y |  |
| 60 | NM_USUARIO_SAIDA_EXAME | VARCHAR2 | Y |  |
| 61 | DT_ENTRADA_EXAME | DATE | Y |  |
| 62 | DT_SAIDA_EXAME | DATE | Y |  |
| 63 | NR_ALTURA | NUMBER | Y |  |
| 64 | NR_PESO | NUMBER | Y |  |
| 65 | SN_PENDENTE | CHAR | Y |  |
| 66 | SN_PROVISORIO | CHAR | N |  |
| 67 | SN_TERCEIRA_OPINIAO | CHAR | Y |  |
| 68 | DT_FINALIZACAO | DATE | Y |  |
| 69 | DT_LAUDADO | DATE | Y |  |
| 70 | DT_PEDIDO | DATE | Y |  |
| 71 | DT_IMPRESSO | DATE | Y |  |
| 72 | DT_ASSINADO | DATE | Y |  |
| 73 | DT_DIGITADO | DATE | Y |  |
| 74 | DT_DITADO | DATE | Y |  |
| 75 | ID_MEDICO_DITADO | VARCHAR2 | Y |  |
| 76 | NM_MEDICO_DITADO | VARCHAR2 | Y |  |
| 77 | DT_REVISADO | DATE | Y |  |
| 78 | DT_REVISADO_FINAL | VARCHAR2 | Y |  |
| 79 | DT_ENTREGA | DATE | Y |  |
| 80 | SN_VISUALIZADO_PORTAL | CHAR | N |  |
| 81 | QT_IMAGEM_PACS | VARCHAR2 | Y |  |
| 82 | NM_ACOMODACAO_HIS | VARCHAR2 | Y |  |
| 83 | NM_LOCAL_ENTREGA_HIS | VARCHAR2 | Y |  |
| 84 | NM_INDICACAO_HIS | VARCHAR2 | Y |  |
| 85 | SN_MIDIA_RESULTADO | VARCHAR2 | Y |  |
| 86 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 87 | ID_USUARIO_LIBERACAO | VARCHAR2 | Y |  |
| 88 | NM_USUARIO_LIBERACAO | VARCHAR2 | Y |  |
| 89 | ID_USUARIO_ONLINE | NUMBER | Y |  |
| 90 | NM_USUARIO_ONLINE | VARCHAR2 | Y |  |
| 91 | DS_OPERACAO_ONLINE | VARCHAR2 | Y |  |
| 92 | SN_SMS_ENVIADO | VARCHAR2 | Y |  |
| 93 | SN_NORMAL | VARCHAR2 | Y |  |
| 94 | ID_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 95 | DT_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 96 | DS_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 97 | ID_USUARIO_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 98 | NM_USUARIO_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 99 | DS_LEITO_HIS | VARCHAR2 | Y |  |
| 100 | DS_REGIAO_EXAMINADA | VARCHAR2 | Y |  |
| 101 | SN_AGRUPAR_IMAGEM | VARCHAR2 | Y |  |
| 102 | SN_AGRUPAR_LAUDO | VARCHAR2 | Y |  |
| 103 | ID_TIPO_EXAME | VARCHAR2 | Y |  |
| 104 | NM_TIPO_EXAME | VARCHAR2 | Y |  |
| 105 | ID_PROCEDIMENTO_UNIDADE | NUMBER | N |  |
| 106 | ID_PROCEDIMENTO | NUMBER | N |  |
| 107 | ACORDO | VARCHAR2 | Y |  |
| 108 | DT_REFAZER | DATE | Y |  |
| 109 | DT_ULT_SECUNDARIO | DATE | Y |  |
| 110 | NM_PROCEDIMENTO | VARCHAR2 | Y |  |
| 111 | DT_STUDY | DATE | Y |  |
| 112 | DT_PREVISAO_ENTREGA | DATE | Y |  |
| 113 | NR_DIAS | VARCHAR2 | Y |  |
| 114 | SN_ATRASADO | VARCHAR2 | Y |  |
| 115 | SN_JUSTIFICATIVA_LAUDO | CHAR | Y |  |
| 116 | ID_CLASSIFICACAO_RISCO | NUMBER | Y |  |
| 117 | ID_SETOR_EXECUTANTE | NUMBER | Y |  |
| 118 | NM_SETOR_EXECUTANTE | VARCHAR2 | Y |  |
| 119 | IDADE | NUMBER | Y |  |
| 120 | CD_TIPO_VIEWER | NUMBER | Y |  |
| 121 | CD_STUDY_UID | VARCHAR2 | Y |  |
| 122 | DT_ANAMNESE | VARCHAR2 | Y |  |
| 123 | SN_STUDY_PED | CHAR | N |  |
| 124 | SN_EXIGIR_JUST_LAU_SEM_IMG | VARCHAR2 | Y |  |
| 125 | ID_REPORT | NUMBER | Y |  |
| 126 | TP_SEXO | CHAR | N |  |
| 127 | ID_TIPO_PRIORIDADE | NUMBER | Y |  |
| 128 | CD_MODALIDADE | VARCHAR2 | Y |  |
| 129 | ID_USUARIO_MARCAR_CERTIFICADO | NUMBER | Y |  |
| 130 | DT_CERTIFICADO | DATE | Y |  |
| 131 | NM_USUARIO_MARCAR_CERTIFICADO | VARCHAR2 | Y |  |
| 132 | NM_SISTEMA | VARCHAR2 | Y |  |
| 133 | DT_DISTRIBUICAO_EXECUTANTE | VARCHAR2 | Y |  |
| 134 | DT_DISTRIBUICAO_REVISOR | VARCHAR2 | Y |  |
| 135 | ID_USU_DISTRIBUICAO_EXECUTANTE | VARCHAR2 | Y |  |
| 136 | ID_USU_DISTRIBUICAO_REVISOR | VARCHAR2 | Y |  |
| 137 | SN_DISTRIBUICAO_EXECUTANTE | CHAR | N |  |
| 138 | SN_DISTRIBUICAO_REVISOR | CHAR | N |  |
| 139 | NM_TECNICO_RESPONSAVEL | VARCHAR2 | Y |  |
| 140 | DT_NAO_CONFORMIDADE | DATE | Y |  |
| 141 | DS_NAO_CONFORMIDADE | VARCHAR2 | Y |  |
| 142 | ID_USU_NAO_CONFORMIDADE | VARCHAR2 | Y |  |
| 143 | DT_ATUALIZACAO_ERRATA | DATE | Y |  |
| 144 | ID_DOCUMENTO_CARTORIO | NUMBER | Y |  |
| 145 | NM_UNIDADE_ORIGEM | VARCHAR2 | Y |  |
| 146 | ID_UNIDADE_EXECUTANTE | NUMBER | N |  |
| 147 | DT_TRANSFERENCIA_UNIDADE | VARCHAR2 | Y |  |
| 148 | DT_NAO_CONFORMIDADE_RESOLVIDA | DATE | Y |  |
| 149 | DS_INCONFORMIDADE | VARCHAR2 | Y |  |
| 150 | DT_COLETA_HIS | DATE | Y |  |
| 151 | CD_CLASSIFICACAO | VARCHAR2 | Y |  |
| 152 | DS_COMENTARIO | VARCHAR2 | Y |  |
| 153 | DS_CPF | VARCHAR2 | Y |  |
| 154 | ID_SISTEMA | NUMBER | Y |  |
| 155 | DS_RG | VARCHAR2 | Y |  |
| 156 | TP_CRITICIDADE | VARCHAR2 | N |  |

---

## IDCE.RS_VW_CONVENIO_UNIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_CONVENIO_UNIDADE | NUMBER | N |  |
| 2 | ID_CONVENIO | NUMBER | Y |  |
| 3 | ID_UNIDADE | NUMBER | Y |  |
| 4 | NM_CONVENIO_UNIDADE | VARCHAR2 | Y |  |
| 5 | NM_REDUZIDO_CONVENIO | VARCHAR2 | Y |  |
| 6 | DS_ENDERECO | VARCHAR2 | Y |  |
| 7 | DS_BAIRRO | VARCHAR2 | Y |  |
| 8 | DS_CIDADE | VARCHAR2 | Y |  |
| 9 | DS_UF | VARCHAR2 | Y |  |
| 10 | DS_CEP | VARCHAR2 | Y |  |
| 11 | DS_CPF_CNPJ | VARCHAR2 | Y |  |
| 12 | DS_CONTATO | VARCHAR2 | Y |  |
| 13 | DS_TELEFONE | VARCHAR2 | Y |  |
| 14 | DS_FAX | VARCHAR2 | Y |  |
| 15 | DS_EMAIL | VARCHAR2 | Y |  |
| 16 | CD_CONVENIO_HIS | VARCHAR2 | Y |  |
| 17 | ID_USUARIO | NUMBER | Y |  |
| 18 | DT_CADASTRO | DATE | Y |  |
| 19 | DT_ALTERACAO | DATE | Y |  |
| 20 | ID_INTERBASE | NUMBER | Y |  |
| 21 | NM_UNIDADE | VARCHAR2 | Y |  |
| 22 | CD_UNIDADE_HIS | VARCHAR2 | Y |  |

---

## IDCE.RS_VW_EMAIL_ACHADOS_CRITICOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 2 | CD_ITEM_PEDIDO_HIS | VARCHAR2 | Y |  |
| 3 | DT_REVISADO | DATE | Y |  |
| 4 | NM_EXAME_UNIDADE | VARCHAR2 | Y |  |

---

## IDCE.RS_VW_ENVIO_SMS_EMAIL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CELULARMEDICOEXECUTANTE | VARCHAR2 | Y |  |
| 2 | CELULARPACIENTE | VARCHAR2 | Y |  |
| 3 | DATACADASTRO | DATE | Y |  |
| 4 | EMAILMEDICOEXECUTANTE | VARCHAR2 | Y |  |
| 5 | EMAILPACIENTE | VARCHAR2 | Y |  |
| 6 | LAUDOID | NUMBER | N |  |
| 7 | MSGSMS | VARCHAR2 | Y |  |
| 8 | NOMEEXAME | VARCHAR2 | Y |  |
| 9 | NOMEMEDICOEXECUTANTE | VARCHAR2 | Y |  |
| 10 | NOMEPACIENTE | VARCHAR2 | Y |  |
| 11 | PRAZO | NUMBER | Y |  |
| 12 | PRONTUARIO | VARCHAR2 | Y |  |
| 13 | REMETENTESMS | VARCHAR2 | Y |  |
| 14 | ID_UNIDADE | NUMBER | N |  |
| 15 | URLSMS | VARCHAR2 | Y |  |
| 16 | ENVIOSMSPACIENTE | CHAR | Y |  |
| 17 | ENVIOEMAILPACIENTE | CHAR | Y |  |
| 18 | ENVIOEMAILMEDEXEC | CHAR | Y |  |
| 19 | ENVIOSMSMEDEXEC | CHAR | Y |  |
| 20 | SNSMSMEDICO | CHAR | Y |  |
| 21 | SNEMAILMEDICO | CHAR | Y |  |
| 22 | SNSMSPACIENTE | CHAR | Y |  |
| 23 | SNEMAILPACIENTE | CHAR | Y |  |
| 24 | SNURGENTE | CHAR | Y |  |
| 25 | DSURGENTE | CHAR | Y |  |

---

## IDCE.RS_VW_EXAMES_NORMAIS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DT_CADASTRO | DATE | N |  |
| 2 | ID_MEDICO_SOLICITANTE | NUMBER | Y |  |
| 3 | NM_MEDICO_SOLICITANTE | VARCHAR2 | Y |  |
| 4 | ID_PROCEDIMENTO_UNIDADE | NUMBER | N |  |
| 5 | NM_PROCEDIMENTO | VARCHAR2 | Y |  |
| 6 | SN_NORMAL | CHAR | Y |  |
| 7 | QTDE_NORMAL | NUMBER | Y |  |
| 8 | QTDE_ALTERADO | NUMBER | Y |  |

---

## IDCE.RS_VW_EXAME_PEDIDO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NM_UNIDADE | VARCHAR2 | Y |  |
| 2 | CD_UNIDADE_HIS | VARCHAR2 | Y |  |
| 3 | ID_MEDICO_EXECUTANTE_PADRAO | NUMBER | Y |  |
| 4 | SN_BLOQUEIO_CONTA_FECHADA | CHAR | N |  |
| 5 | DS_CERTIFICACAO_DIGITAL | VARCHAR2 | Y |  |
| 6 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 7 | ID_PEDIDO_EXAME | NUMBER | N |  |
| 8 | ID_MEDICO_SOLICITANTE | NUMBER | Y |  |
| 9 | NM_MEDICO_SOLICITANTE | VARCHAR2 | Y |  |
| 10 | DS_CRM_SOLICITANTE | VARCHAR2 | Y |  |
| 11 | DS_TELEFONE_SOLICITANTE | VARCHAR2 | Y |  |
| 12 | DS_EMAIL_SOLICITANTE | VARCHAR2 | Y |  |
| 13 | ID_PACIENTE | NUMBER | Y |  |
| 14 | ID_PACIENTE_CONSOLIDADO | NUMBER | Y |  |
| 15 | NM_PACIENTE | VARCHAR2 | Y |  |
| 16 | TP_SEXO | CHAR | Y |  |
| 17 | DS_TELEFONE | VARCHAR2 | Y |  |
| 18 | DT_NASCIMENTO | DATE | Y |  |
| 19 | DS_EMAIL | VARCHAR2 | Y |  |
| 20 | DS_MATRICULA | VARCHAR2 | Y |  |
| 21 | IDADE | NUMBER | Y |  |
| 22 | NR_PRONTUARIO_HOSPITALAR | VARCHAR2 | Y |  |
| 23 | CD_PACIENTE_HIS | VARCHAR2 | Y |  |
| 24 | DS_ENDERECO | VARCHAR2 | Y |  |
| 25 | DS_BAIRRO | VARCHAR2 | Y |  |
| 26 | DS_CIDADE | VARCHAR2 | Y |  |
| 27 | DS_UF | VARCHAR2 | Y |  |
| 28 | DS_CEP | VARCHAR2 | Y |  |
| 29 | DS_FAX | VARCHAR2 | Y |  |
| 30 | SN_EMAIL | CHAR | Y |  |
| 31 | SN_SMS | CHAR | Y |  |
| 32 | NM_MAE | VARCHAR2 | Y |  |
| 33 | NM_PAI | VARCHAR2 | Y |  |
| 34 | ID_CONVENIO | NUMBER | Y |  |
| 35 | ID_UNIDADE | NUMBER | Y |  |
| 36 | ID_UNIDADE_ORIGEM | NUMBER | Y |  |
| 37 | NR_GUIA_HIS | VARCHAR2 | Y |  |
| 38 | NM_CONVENIO_UNIDADE | VARCHAR2 | Y |  |
| 39 | SN_PARCEIRO | CHAR | Y |  |
| 40 | ID_MEDICO_EXECUTANTE | NUMBER | Y |  |
| 41 | NM_MEDICO_EXECUTANTE | VARCHAR2 | Y |  |
| 42 | DS_CRM_EXECUTANTE | VARCHAR2 | Y |  |
| 43 | CD_HIS_EXECUTANTE | VARCHAR2 | Y |  |
| 44 | ID_MEDICO_REVISOR | NUMBER | Y |  |
| 45 | NM_MEDICO_REVISOR | VARCHAR2 | Y |  |
| 46 | DS_CRM_REVISOR | VARCHAR2 | Y |  |
| 47 | CD_HIS_REVISOR | VARCHAR2 | Y |  |
| 48 | ID_MEDICO_REVISOR_FINAL | NUMBER | Y |  |
| 49 | NM_MEDICO_REVISOR_FINAL | VARCHAR2 | Y |  |
| 50 | DS_CRM_REVISOR_FINAL | VARCHAR2 | Y |  |
| 51 | CD_HIS_REVISOR_FINAL | VARCHAR2 | Y |  |
| 52 | ID_DIAGNOSTICO_RADIO | NUMBER | Y |  |
| 53 | NM_DIAGNOSTICO_RADIO | CHAR | Y |  |
| 54 | ID_DIAGNOSTICO_CLINICO | NUMBER | Y |  |
| 55 | NM_DIAGNOSTICO_CLINICO | CHAR | Y |  |
| 56 | ID_DIAGNOSTICO_CIRURGICO | NUMBER | Y |  |
| 57 | NM_DIAGNOSTICO_CIRURGICO | CHAR | Y |  |
| 58 | ID_SALA | NUMBER | Y |  |
| 59 | NM_SALA | VARCHAR2 | Y |  |
| 60 | DT_CADASTRO | DATE | N |  |
| 61 | DT_ALTERACAO | DATE | Y |  |
| 62 | DT_STUDY | DATE | Y |  |
| 63 | ID_EXAME_UNIDADE | NUMBER | Y |  |
| 64 | NM_EXAME_UNIDADE | VARCHAR2 | Y |  |
| 65 | ID_EXAME | NUMBER | N |  |
| 66 | NM_EXAME | VARCHAR2 | Y |  |
| 67 | CD_CBHPM | VARCHAR2 | Y |  |
| 68 | ID_USUARIO_INCLUSAO | NUMBER | Y |  |
| 69 | NM_USUARIO_INCLUSAO | VARCHAR2 | Y |  |
| 70 | ID_USUARIO_ALTERACAO | NUMBER | Y |  |
| 71 | NM_USUARIO_ALTERACAO | VARCHAR2 | Y |  |
| 72 | DT_DUM | DATE | Y |  |
| 73 | CD_ATENDIMENTO_HIS | VARCHAR2 | Y |  |
| 74 | CD_PEDIDO_HIS | VARCHAR2 | Y |  |
| 75 | CD_ITEM_PEDIDO_HIS | VARCHAR2 | Y |  |
| 76 | ID_ORIGEM_ATENDIMENTO | NUMBER | Y |  |
| 77 | CD_STATUS | CHAR | Y |  |
| 78 | DS_STATUS | VARCHAR2 | Y |  |
| 79 | ID_SETOR | NUMBER | Y |  |
| 80 | NM_SETOR | VARCHAR2 | Y |  |
| 81 | ID_USUARIO_ENTRADA_EXAME | NUMBER | Y |  |
| 82 | NM_USUARIO_ENTRADA_EXAME | VARCHAR2 | Y |  |
| 83 | ID_USUARIO_SAIDA_EXAME | NUMBER | Y |  |
| 84 | NM_USUARIO_SAIDA_EXAME | VARCHAR2 | Y |  |
| 85 | DT_ENTRADA_EXAME | DATE | Y |  |
| 86 | DT_SAIDA_EXAME | DATE | Y |  |
| 87 | NR_ALTURA | NUMBER | Y |  |
| 88 | NR_PESO | NUMBER | Y |  |
| 89 | SN_PENDENTE | CHAR | Y |  |
| 90 | DT_FINALIZACAO | DATE | Y |  |
| 91 | DT_LAUDADO | DATE | Y |  |
| 92 | DT_JUST_ERRATA | DATE | Y |  |
| 93 | DT_PEDIDO | DATE | Y |  |
| 94 | DT_IMPRESSO | DATE | Y |  |
| 95 | DT_ASSINADO | DATE | Y |  |
| 96 | DT_DIGITADO | DATE | Y |  |
| 97 | DT_DITADO | DATE | Y |  |
| 98 | DT_REVISADO | DATE | Y |  |
| 99 | DT_REVISADO_FINAL | DATE | Y |  |
| 100 | DT_ENTREGA | DATE | Y |  |
| 101 | DT_PREVISAO_ENTREGA | DATE | Y |  |
| 102 | NM_ACOMODACAO_HIS | VARCHAR2 | Y |  |
| 103 | NM_LOCAL_ENTREGA_HIS | VARCHAR2 | Y |  |
| 104 | NM_INDICACAO_HIS | VARCHAR2 | Y |  |
| 105 | SN_MIDIA_RESULTADO | CHAR | Y |  |
| 106 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 107 | ID_USUARIO_LIBERACAO | NUMBER | Y |  |
| 108 | NM_USUARIO_LIBERACAO | VARCHAR2 | Y |  |
| 109 | ID_USUARIO_ONLINE | NUMBER | Y |  |
| 110 | NM_USUARIO_ONLINE | VARCHAR2 | Y |  |
| 111 | DS_OPERACAO_ONLINE | VARCHAR2 | Y |  |
| 112 | SN_SMS_ENVIADO | CHAR | Y |  |
| 113 | DS_LAUDO_RTF | CLOB | Y |  |
| 114 | DS_LAUDO_TXT | CLOB | Y |  |
| 115 | DS_LAUDO_HTML | CLOB | Y |  |
| 116 | SN_NORMAL | CHAR | Y |  |
| 117 | ID_JUSTIFICATIVA | NUMBER | Y |  |
| 118 | DT_JUSTIFICATIVA | DATE | Y |  |
| 119 | DS_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 120 | ID_USUARIO_JUSTIFICATIVA | NUMBER | Y |  |
| 121 | NM_USUARIO_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 122 | DS_LEITO_HIS | VARCHAR2 | Y |  |
| 123 | DS_REGIAO_EXAMINADA | VARCHAR2 | Y |  |
| 124 | SN_AGRUPAR_IMAGEM | CHAR | Y |  |
| 125 | SN_AGRUPAR_LAUDO | CHAR | Y |  |
| 126 | ID_TIPO_EXAME | NUMBER | Y |  |
| 127 | NM_TIPO_EXAME | VARCHAR2 | Y |  |
| 128 | NM_PROCEDIMENTO | VARCHAR2 | Y |  |
| 129 | ID_PROCEDIMENTO_UNIDADE | NUMBER | N |  |
| 130 | ID_PROCEDIMENTO | NUMBER | N |  |
| 131 | NR_PRAZO_ENTREGA | NUMBER | Y |  |
| 132 | CD_PROCEDIMENTO_HIS | VARCHAR2 | Y |  |
| 133 | DS_LAYOUT_IMPRESSAO | VARCHAR2 | Y |  |
| 134 | ID_MEDICO_PADRAO | NUMBER | Y |  |
| 135 | ID_SALA_PADRAO | NUMBER | Y |  |
| 136 | SN_REVISAO_AUTOMATICA | CHAR | Y |  |
| 137 | SN_DICOM | CHAR | Y |  |
| 138 | SN_EXECUTANTE_REVISOR | CHAR | Y |  |
| 139 | SN_LAUDO_LOTE_PENDENTE | CHAR | Y |  |
| 140 | SN_ENTREGA_LAUDO_CD | CHAR | Y |  |
| 141 | SN_IMPRESSAO_LAUDO_ENTREGA | CHAR | Y |  |
| 142 | SN_LIBERAR_LOTE_LAUDO_REV_PEND | CHAR | Y |  |
| 143 | SN_TEXTO_PADRAO_AUTOMATICO | CHAR | Y |  |
| 144 | SN_JUSTIFICATIVA_LAUDO | CHAR | Y |  |
| 145 | SN_ENDOSCOPIA | CHAR | Y |  |
| 146 | CD_MODALIDADE | VARCHAR2 | Y |  |
| 147 | NR_DIAS | NUMBER | Y |  |
| 148 | SN_ATRASADO | CHAR | Y |  |
| 149 | TP_SEXO_REVISOR | VARCHAR2 | Y |  |
| 150 | TP_SEXO_EXECUTANTE | VARCHAR2 | Y |  |
| 151 | ID_SISTEMA | NUMBER | Y |  |
| 152 | CD_EXAME_HIS | VARCHAR2 | Y |  |
| 153 | ID_MEDICO_DITADO | NUMBER | Y |  |
| 154 | NM_MEDICO_DITADO | VARCHAR2 | Y |  |
| 155 | DS_CRM_DITADO | VARCHAR2 | Y |  |
| 156 | CD_HIS_DITADO | VARCHAR2 | Y |  |
| 157 | ID_CLASSIFICACAO_RISCO | NUMBER | Y |  |
| 158 | ID_SETOR_EXECUTANTE | NUMBER | Y |  |
| 159 | ID_SETOR_SOLICITANTE | NUMBER | Y |  |
| 160 | ID_ETAPA_ATUAL | NUMBER | Y |  |
| 161 | NM_ETAPA | VARCHAR2 | Y |  |
| 162 | DS_ALERTA_ACORDO | VARCHAR2 | Y |  |
| 163 | POSSUICOMENTARIO | CHAR | Y |  |
| 164 | ID_TIPO_PRIORIDADE | NUMBER | Y |  |
| 165 | SN_PRESCRICAO_URGENTE | CHAR | Y |  |
| 166 | SN_EXAME_CONCLUIDO | CHAR | Y |  |
| 167 | CD_STUDY_UID | VARCHAR2 | Y |  |
| 168 | CD_TIPO_VIEWER | NUMBER | Y |  |
| 169 | DT_ANAMNESE | DATE | Y |  |
| 170 | ID_CONVENIO_UNIDADE | NUMBER | Y |  |
| 171 | PACIENTE_IDADE_EXTENSO | VARCHAR2 | Y |  |
| 172 | SN_STUDY_PED | CHAR | N |  |
| 173 | TP_INSUMO | NUMBER | Y |  |
| 174 | DS_PATH_RELATORIO_FORMULA | VARCHAR2 | Y |  |
| 175 | DS_LAUDO_PDF_MARCADAGUA | VARCHAR2 | Y |  |
| 176 | NM_SETOR_EXECUTANTE | VARCHAR2 | Y |  |
| 177 | SN_EXIGIR_JUST_LAU_SEM_IMG | CHAR | Y |  |
| 178 | SN_TERCEIRA_OPINIAO | CHAR | Y |  |
| 179 | ID_EXAME_PEDIDO_PAI | NUMBER | Y |  |
| 180 | SN_PANICO | CHAR | N |  |
| 181 | ID_JUSTIFICATIVA_IMAGEM | NUMBER | Y |  |
| 182 | DT_JUSTIFICATIVA_IMAGEM | DATE | Y |  |
| 183 | DS_JUSTIFICATIVA_IMAGEM | VARCHAR2 | Y |  |
| 184 | SN_PROVISORIO | CHAR | N |  |
| 185 | DT_CERTIFICADO | DATE | Y |  |
| 186 | ID_USUARIO_MARCAR_CERTIFICADO | NUMBER | Y |  |
| 187 | NM_USUARIO_MARCAR_CERTIFICADO | VARCHAR2 | Y |  |
| 188 | NM_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 189 | DT_DISTRIBUICAO_EXECUTANTE | DATE | Y |  |
| 190 | DT_DISTRIBUICAO_REVISOR | DATE | Y |  |
| 191 | ID_USU_DISTRIBUICAO_EXECUTANTE | NUMBER | Y |  |
| 192 | ID_USU_DISTRIBUICAO_REVISOR | NUMBER | Y |  |
| 193 | SN_DISTRIBUICAO_EXECUTANTE | CHAR | N |  |
| 194 | SN_DISTRIBUICAO_REVISOR | CHAR | N |  |
| 195 | NR_DIAS_EXPIRAR_ACAO_LAUDAR | NUMBER | N |  |
| 196 | SN_VISUALIZADO_PORTAL | CHAR | N |  |
| 197 | NM_TECNICO_RESPONSAVEL | VARCHAR2 | Y |  |
| 198 | QT_IMAGEM_PACS | VARCHAR2 | Y |  |
| 199 | DT_NAO_CONFORMIDADE | DATE | Y |  |
| 200 | DS_NAO_CONFORMIDADE | VARCHAR2 | Y |  |
| 201 | ID_USU_NAO_CONFORMIDADE | NUMBER | Y |  |
| 202 | DT_ATUALIZACAO_ERRATA | DATE | Y |  |
| 203 | ID_DOCUMENTO_CARTORIO | NUMBER | Y |  |
| 204 | NM_UNIDADE_ORIGEM | VARCHAR2 | Y |  |
| 205 | ID_UNIDADE_EXECUTANTE | NUMBER | Y |  |
| 206 | DT_TRANSFERENCIA_UNIDADE | DATE | Y |  |
| 207 | NR_CPF_CERT_DIGITAL | VARCHAR2 | Y |  |
| 208 | NM_CERT_DIGITAL | VARCHAR2 | Y |  |
| 209 | NM_FORNECEDOR_CERT_DIGITAL | VARCHAR2 | Y |  |
| 210 | DT_FORNECEDOR_CERT_DIGITAL | DATE | Y |  |
| 211 | DT_NAO_CONFORMIDADE_RESOLVIDA | DATE | Y |  |
| 212 | DS_INCONFORMIDADE | VARCHAR2 | Y |  |
| 213 | NR_CNS | VARCHAR2 | Y |  |
| 214 | DS_CPF | VARCHAR2 | Y |  |
| 215 | DS_RG | VARCHAR2 | Y |  |
| 216 | DS_ORGAO | VARCHAR2 | Y |  |
| 217 | NM_SOCIAL_PACIENTE | VARCHAR2 | Y |  |
| 218 | CD_STATUS_IA | NUMBER | Y |  |
| 219 | DS_PANICO | VARCHAR2 | Y |  |
| 220 | ID_MEDICO_ORIENTADOR | NUMBER | Y |  |
| 221 | NM_MEDICO_ORIENTADOR | VARCHAR2 | Y |  |
| 222 | DT_MEDICO_ORIENTADOR | DATE | Y |  |
| 223 | SN_EXIGIR_FINALIZACAO_EXAME | CHAR | N |  |
| 224 | DS_ESPECIALIDADE_EXECUTANTE | VARCHAR2 | Y |  |
| 225 | RQE_MSOLICITANTE | NUMBER | Y |  |
| 226 | RQE_MEXECUTANTE | NUMBER | Y |  |
| 227 | RQE_MREVISOR | NUMBER | Y |  |
| 228 | DS_ESPECIALIDADE_REVISOR | VARCHAR2 | Y |  |
| 229 | DT_REFAZER | DATE | Y |  |
| 230 | DS_LAUDO_RTF_ANTERIOR | CLOB | Y |  |
| 231 | DS_LAUDO_RTF_REFEITO | CLOB | Y |  |
| 232 | ID_EXECUTANTE_ANTERIOR | NUMBER | Y |  |
| 233 | ID_REVISOR_ANTERIOR | NUMBER | Y |  |
| 234 | NM_MEDICO_EXECUTANTE_ANT | VARCHAR2 | Y |  |
| 235 | DS_CRM_EXECUTANTE_ANT | VARCHAR2 | Y |  |
| 236 | TP_SEXO_EXECUTANTE_ANT | VARCHAR2 | Y |  |
| 237 | DS_ESPECIALIDADE_EXEC_ANT | VARCHAR2 | Y |  |
| 238 | NM_MEDICO_REVISOR_ANT | VARCHAR2 | Y |  |
| 239 | DS_CRM_REVISOR_ANT | VARCHAR2 | Y |  |
| 240 | TP_SEXO_REVISOR_ANT | VARCHAR2 | Y |  |
| 241 | DS_ESPECIALIDADE_REVISOR_ANT | VARCHAR2 | Y |  |
| 242 | DT_CADASTRO_PANICO | DATE | Y |  |
| 243 | NM_CONTATO_PANICO | VARCHAR2 | Y |  |
| 244 | DT_COLETA_HIS | DATE | Y |  |
| 245 | SN_REGRA_DISTRIBUICAO | CHAR | N |  |
| 246 | SN_COMENTARIO | VARCHAR2 | Y |  |
| 247 | SN_EXIGIR_PARECER | CHAR | Y |  |
| 248 | SN_BLOQUEIO_CANCELAMENTO | CHAR | Y |  |
| 249 | TEMPO_BLOQUEIO_CANCELAMENTO | NUMBER | Y |  |
| 250 | DS_TELEFONE1 | VARCHAR2 | Y |  |
| 251 | NR_ANEXOS | NUMBER | Y |  |
| 252 | SN_ATIVO | CHAR | Y |  |
| 253 | CD_SETOR_HIS | VARCHAR2 | Y |  |
| 254 | SN_EXIGIR_PIRADS | CHAR | Y |  |
| 255 | SN_EXIGIR_BIRADS | CHAR | Y |  |
| 256 | SN_EXIGIR_PREENCHIMENTO_BIRADS | CHAR | Y |  |
| 257 | SN_EXIGIR_LIRADS | CHAR | Y |  |
| 258 | SN_EXIGIR_TIRADS | CHAR | Y |  |

---

## IDCE.RS_VW_EXAME_PEDIDO_04_15

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NM_UNIDADE | VARCHAR2 | Y |  |
| 2 | CD_UNIDADE_HIS | VARCHAR2 | Y |  |
| 3 | ID_MEDICO_EXECUTANTE_PADRAO | NUMBER | Y |  |
| 4 | DS_CERTIFICACAO_DIGITAL | VARCHAR2 | Y |  |
| 5 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 6 | ID_PEDIDO_EXAME | NUMBER | N |  |
| 7 | ID_MEDICO_SOLICITANTE | NUMBER | Y |  |
| 8 | NM_MEDICO_SOLICITANTE | VARCHAR2 | Y |  |
| 9 | DS_CRM_SOLICITANTE | VARCHAR2 | Y |  |
| 10 | DS_TELEFONE_SOLICITANTE | VARCHAR2 | Y |  |
| 11 | DS_EMAIL_SOLICITANTE | VARCHAR2 | Y |  |
| 12 | ID_PACIENTE | NUMBER | Y |  |
| 13 | ID_PACIENTE_CONSOLIDADO | NUMBER | Y |  |
| 14 | NM_PACIENTE | VARCHAR2 | Y |  |
| 15 | TP_SEXO | CHAR | Y |  |
| 16 | DS_TELEFONE | VARCHAR2 | Y |  |
| 17 | DT_NASCIMENTO | DATE | Y |  |
| 18 | DS_EMAIL | VARCHAR2 | Y |  |
| 19 | DS_MATRICULA | VARCHAR2 | Y |  |
| 20 | IDADE | NUMBER | Y |  |
| 21 | NR_PRONTUARIO_HOSPITALAR | VARCHAR2 | Y |  |
| 22 | CD_PACIENTE_HIS | VARCHAR2 | Y |  |
| 23 | DS_ENDERECO | VARCHAR2 | Y |  |
| 24 | DS_BAIRRO | VARCHAR2 | Y |  |
| 25 | DS_CIDADE | VARCHAR2 | Y |  |
| 26 | DS_UF | VARCHAR2 | Y |  |
| 27 | DS_CEP | VARCHAR2 | Y |  |
| 28 | DS_FAX | VARCHAR2 | Y |  |
| 29 | SN_EMAIL | CHAR | Y |  |
| 30 | SN_SMS | CHAR | Y |  |
| 31 | ID_CONVENIO | NUMBER | Y |  |
| 32 | ID_UNIDADE | NUMBER | Y |  |
| 33 | ID_UNIDADE_ORIGEM | NUMBER | Y |  |
| 34 | NR_GUIA_HIS | VARCHAR2 | Y |  |
| 35 | NM_CONVENIO_UNIDADE | VARCHAR2 | Y |  |
| 36 | SN_PARCEIRO | CHAR | Y |  |
| 37 | ID_MEDICO_EXECUTANTE | NUMBER | Y |  |
| 38 | NM_MEDICO_EXECUTANTE | VARCHAR2 | Y |  |
| 39 | DS_CRM_EXECUTANTE | VARCHAR2 | Y |  |
| 40 | CD_HIS_EXECUTANTE | VARCHAR2 | Y |  |
| 41 | ID_MEDICO_REVISOR | NUMBER | Y |  |
| 42 | NM_MEDICO_REVISOR | VARCHAR2 | Y |  |
| 43 | DS_CRM_REVISOR | VARCHAR2 | Y |  |
| 44 | CD_HIS_REVISOR | VARCHAR2 | Y |  |
| 45 | ID_MEDICO_REVISOR_FINAL | NUMBER | Y |  |
| 46 | NM_MEDICO_REVISOR_FINAL | VARCHAR2 | Y |  |
| 47 | DS_CRM_REVISOR_FINAL | VARCHAR2 | Y |  |
| 48 | CD_HIS_REVISOR_FINAL | VARCHAR2 | Y |  |
| 49 | ID_DIAGNOSTICO_RADIO | NUMBER | Y |  |
| 50 | NM_DIAGNOSTICO_RADIO | CHAR | Y |  |
| 51 | ID_DIAGNOSTICO_CLINICO | NUMBER | Y |  |
| 52 | NM_DIAGNOSTICO_CLINICO | CHAR | Y |  |
| 53 | ID_DIAGNOSTICO_CIRURGICO | NUMBER | Y |  |
| 54 | NM_DIAGNOSTICO_CIRURGICO | CHAR | Y |  |
| 55 | ID_SALA | NUMBER | Y |  |
| 56 | NM_SALA | VARCHAR2 | Y |  |
| 57 | DT_CADASTRO | DATE | N |  |
| 58 | DT_ALTERACAO | DATE | Y |  |
| 59 | DT_STUDY | DATE | Y |  |
| 60 | ID_EXAME_UNIDADE | NUMBER | Y |  |
| 61 | NM_EXAME_UNIDADE | VARCHAR2 | Y |  |
| 62 | ID_EXAME | NUMBER | N |  |
| 63 | NM_EXAME | VARCHAR2 | Y |  |
| 64 | CD_CBHPM | VARCHAR2 | Y |  |
| 65 | ID_USUARIO_INCLUSAO | NUMBER | Y |  |
| 66 | NM_USUARIO_INCLUSAO | VARCHAR2 | Y |  |
| 67 | ID_USUARIO_ALTERACAO | NUMBER | Y |  |
| 68 | NM_USUARIO_ALTERACAO | VARCHAR2 | Y |  |
| 69 | DT_DUM | DATE | Y |  |
| 70 | CD_ATENDIMENTO_HIS | VARCHAR2 | Y |  |
| 71 | CD_PEDIDO_HIS | VARCHAR2 | Y |  |
| 72 | CD_ITEM_PEDIDO_HIS | VARCHAR2 | Y |  |
| 73 | ID_ORIGEM_ATENDIMENTO | NUMBER | Y |  |
| 74 | CD_STATUS | CHAR | Y |  |
| 75 | DS_STATUS | VARCHAR2 | Y |  |
| 76 | ID_SETOR | NUMBER | Y |  |
| 77 | NM_SETOR | VARCHAR2 | Y |  |
| 78 | ID_USUARIO_ENTRADA_EXAME | NUMBER | Y |  |
| 79 | NM_USUARIO_ENTRADA_EXAME | VARCHAR2 | Y |  |
| 80 | ID_USUARIO_SAIDA_EXAME | NUMBER | Y |  |
| 81 | NM_USUARIO_SAIDA_EXAME | VARCHAR2 | Y |  |
| 82 | DT_ENTRADA_EXAME | DATE | Y |  |
| 83 | DT_SAIDA_EXAME | DATE | Y |  |
| 84 | NR_ALTURA | NUMBER | Y |  |
| 85 | NR_PESO | NUMBER | Y |  |
| 86 | SN_PENDENTE | CHAR | Y |  |
| 87 | DT_FINALIZACAO | DATE | Y |  |
| 88 | DT_LAUDADO | DATE | Y |  |
| 89 | DT_PEDIDO | DATE | Y |  |
| 90 | DT_IMPRESSO | DATE | Y |  |
| 91 | DT_ASSINADO | DATE | Y |  |
| 92 | DT_DIGITADO | DATE | Y |  |
| 93 | DT_DITADO | DATE | Y |  |
| 94 | DT_REVISADO | DATE | Y |  |
| 95 | DT_REVISADO_FINAL | DATE | Y |  |
| 96 | DT_ENTREGA | DATE | Y |  |
| 97 | DT_PREVISAO_ENTREGA | DATE | Y |  |
| 98 | NM_ACOMODACAO_HIS | VARCHAR2 | Y |  |
| 99 | NM_LOCAL_ENTREGA_HIS | VARCHAR2 | Y |  |
| 100 | NM_INDICACAO_HIS | VARCHAR2 | Y |  |
| 101 | SN_MIDIA_RESULTADO | CHAR | Y |  |
| 102 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 103 | ID_USUARIO_LIBERACAO | NUMBER | Y |  |
| 104 | NM_USUARIO_LIBERACAO | VARCHAR2 | Y |  |
| 105 | ID_USUARIO_ONLINE | NUMBER | Y |  |
| 106 | NM_USUARIO_ONLINE | VARCHAR2 | Y |  |
| 107 | DS_OPERACAO_ONLINE | VARCHAR2 | Y |  |
| 108 | SN_SMS_ENVIADO | CHAR | Y |  |
| 109 | DS_LAUDO_RTF | CLOB | Y |  |
| 110 | DS_LAUDO_TXT | CLOB | Y |  |
| 111 | DS_LAUDO_HTML | CLOB | Y |  |
| 112 | SN_NORMAL | CHAR | Y |  |
| 113 | ID_JUSTIFICATIVA | NUMBER | Y |  |
| 114 | DT_JUSTIFICATIVA | DATE | Y |  |
| 115 | DS_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 116 | ID_USUARIO_JUSTIFICATIVA | NUMBER | Y |  |
| 117 | NM_USUARIO_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 118 | DS_LEITO_HIS | VARCHAR2 | Y |  |
| 119 | DS_REGIAO_EXAMINADA | VARCHAR2 | Y |  |
| 120 | SN_AGRUPAR_IMAGEM | CHAR | Y |  |
| 121 | SN_AGRUPAR_LAUDO | CHAR | Y |  |
| 122 | ID_TIPO_EXAME | NUMBER | Y |  |
| 123 | NM_TIPO_EXAME | VARCHAR2 | Y |  |
| 124 | NM_PROCEDIMENTO | VARCHAR2 | Y |  |
| 125 | ID_PROCEDIMENTO_UNIDADE | NUMBER | N |  |
| 126 | ID_PROCEDIMENTO | NUMBER | N |  |
| 127 | NR_PRAZO_ENTREGA | NUMBER | Y |  |
| 128 | CD_PROCEDIMENTO_HIS | VARCHAR2 | Y |  |
| 129 | DS_LAYOUT_IMPRESSAO | VARCHAR2 | Y |  |
| 130 | ID_MEDICO_PADRAO | NUMBER | Y |  |
| 131 | ID_SALA_PADRAO | NUMBER | Y |  |
| 132 | SN_REVISAO_AUTOMATICA | CHAR | Y |  |
| 133 | SN_DICOM | CHAR | Y |  |
| 134 | SN_EXECUTANTE_REVISOR | CHAR | Y |  |
| 135 | SN_LAUDO_LOTE_PENDENTE | CHAR | Y |  |
| 136 | SN_ENTREGA_LAUDO_CD | CHAR | Y |  |
| 137 | SN_IMPRESSAO_LAUDO_ENTREGA | CHAR | Y |  |
| 138 | SN_LIBERAR_LOTE_LAUDO_REV_PEND | CHAR | Y |  |
| 139 | SN_TEXTO_PADRAO_AUTOMATICO | CHAR | Y |  |
| 140 | SN_JUSTIFICATIVA_LAUDO | CHAR | Y |  |
| 141 | SN_ENDOSCOPIA | CHAR | Y |  |
| 142 | CD_MODALIDADE | VARCHAR2 | Y |  |
| 143 | NR_DIAS | NUMBER | Y |  |
| 144 | SN_ATRASADO | CHAR | Y |  |
| 145 | TP_SEXO_REVISOR | VARCHAR2 | Y |  |
| 146 | TP_SEXO_EXECUTANTE | VARCHAR2 | Y |  |
| 147 | ID_SISTEMA | NUMBER | Y |  |
| 148 | CD_EXAME_HIS | VARCHAR2 | Y |  |
| 149 | ID_MEDICO_DITADO | NUMBER | Y |  |
| 150 | NM_MEDICO_DITADO | VARCHAR2 | Y |  |
| 151 | DS_CRM_DITADO | VARCHAR2 | Y |  |
| 152 | CD_HIS_DITADO | VARCHAR2 | Y |  |
| 153 | ID_CLASSIFICACAO_RISCO | NUMBER | Y |  |
| 154 | ID_SETOR_EXECUTANTE | NUMBER | Y |  |
| 155 | ID_SETOR_SOLICITANTE | NUMBER | Y |  |
| 156 | ID_ETAPA_ATUAL | NUMBER | Y |  |
| 157 | NM_ETAPA | VARCHAR2 | Y |  |
| 158 | DS_ALERTA_ACORDO | VARCHAR2 | Y |  |
| 159 | POSSUICOMENTARIO | CHAR | Y |  |
| 160 | ID_TIPO_PRIORIDADE | NUMBER | Y |  |
| 161 | SN_PRESCRICAO_URGENTE | CHAR | Y |  |
| 162 | SN_EXAME_CONCLUIDO | CHAR | Y |  |
| 163 | CD_STUDY_UID | VARCHAR2 | Y |  |
| 164 | CD_TIPO_VIEWER | NUMBER | Y |  |
| 165 | DT_ANAMNESE | DATE | Y |  |
| 166 | ID_CONVENIO_UNIDADE | NUMBER | Y |  |
| 167 | PACIENTE_IDADE_EXTENSO | VARCHAR2 | Y |  |
| 168 | SN_STUDY_PED | CHAR | N |  |
| 169 | TP_INSUMO | NUMBER | Y |  |
| 170 | DS_PATH_RELATORIO_FORMULA | VARCHAR2 | Y |  |
| 171 | SN_EXIGIR_JUST_LAU_SEM_IMG | CHAR | Y |  |
| 172 | ID_REPORT | NUMBER | Y |  |
| 173 | SN_TERCEIRA_OPINIAO | CHAR | Y |  |
| 174 | NM_SETOR_EXECUTANTE | VARCHAR2 | Y |  |
| 175 | ID_EXAME_PEDIDO_PAI | NUMBER | Y |  |
| 176 | SN_PANICO | CHAR | N |  |
| 177 | DT_CERTIFICADO | DATE | Y |  |
| 178 | ID_USUARIO_MARCAR_CERTIFICADO | NUMBER | Y |  |
| 179 | NM_USUARIO_MARCAR_CERTIFICADO | VARCHAR2 | Y |  |
| 180 | NM_SISTEMA | VARCHAR2 | Y |  |
| 181 | SN_PROVISORIO | CHAR | N |  |
| 182 | NM_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 183 | DT_DISTRIBUICAO_EXECUTANTE | DATE | Y |  |
| 184 | DT_DISTRIBUICAO_REVISOR | DATE | Y |  |
| 185 | ID_USU_DISTRIBUICAO_EXECUTANTE | NUMBER | Y |  |
| 186 | ID_USU_DISTRIBUICAO_REVISOR | NUMBER | Y |  |
| 187 | SN_DISTRIBUICAO_EXECUTANTE | CHAR | N |  |
| 188 | SN_DISTRIBUICAO_REVISOR | CHAR | N |  |
| 189 | SN_VISUALIZADO_PORTAL | CHAR | N |  |
| 190 | NM_TECNICO_RESPONSAVEL | CHAR | Y |  |

---

## IDCE.RS_VW_EXAME_PEDIDO_COMENTARIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_COMENTARIO | NUMBER | N |  |
| 2 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 3 | DS_COMENTARIO | VARCHAR2 | Y |  |
| 4 | DT_CADASTRO | DATE | N |  |
| 5 | DT_ALTERACAO | DATE | Y |  |
| 6 | ID_USUARIO | NUMBER | N |  |
| 7 | ID_TIPO_PRIORIDADE | NUMBER | Y |  |

---

## IDCE.RS_VW_EXAME_PEDIDO_MULTIQUE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NM_UNIDADE | VARCHAR2 | Y |  |
| 2 | CD_UNIDADE_HIS | VARCHAR2 | Y |  |
| 3 | ID_MEDICO_EXECUTANTE_PADRAO | NUMBER | Y |  |
| 4 | SN_BLOQUEIO_CONTA_FECHADA | CHAR | N |  |
| 5 | DS_CERTIFICACAO_DIGITAL | VARCHAR2 | Y |  |
| 6 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 7 | ID_PEDIDO_EXAME | NUMBER | N |  |
| 8 | ID_MEDICO_SOLICITANTE | NUMBER | Y |  |
| 9 | NM_MEDICO_SOLICITANTE | VARCHAR2 | Y |  |
| 10 | DS_CRM_SOLICITANTE | VARCHAR2 | Y |  |
| 11 | DS_TELEFONE_SOLICITANTE | VARCHAR2 | Y |  |
| 12 | DS_EMAIL_SOLICITANTE | VARCHAR2 | Y |  |
| 13 | ID_PACIENTE | NUMBER | Y |  |
| 14 | ID_PACIENTE_CONSOLIDADO | NUMBER | Y |  |
| 15 | NM_PACIENTE | VARCHAR2 | Y |  |
| 16 | TP_SEXO | CHAR | Y |  |
| 17 | DS_TELEFONE | VARCHAR2 | Y |  |
| 18 | DT_NASCIMENTO | DATE | Y |  |
| 19 | DS_EMAIL | VARCHAR2 | Y |  |
| 20 | DS_MATRICULA | VARCHAR2 | Y |  |
| 21 | IDADE | NUMBER | Y |  |
| 22 | NR_PRONTUARIO_HOSPITALAR | VARCHAR2 | Y |  |
| 23 | CD_PACIENTE_HIS | VARCHAR2 | Y |  |
| 24 | DS_ENDERECO | VARCHAR2 | Y |  |
| 25 | DS_BAIRRO | VARCHAR2 | Y |  |
| 26 | DS_CIDADE | VARCHAR2 | Y |  |
| 27 | DS_UF | VARCHAR2 | Y |  |
| 28 | DS_CEP | VARCHAR2 | Y |  |
| 29 | DS_FAX | VARCHAR2 | Y |  |
| 30 | SN_EMAIL | CHAR | Y |  |
| 31 | SN_SMS | CHAR | Y |  |
| 32 | ID_CONVENIO | NUMBER | Y |  |
| 33 | ID_UNIDADE | NUMBER | Y |  |
| 34 | ID_UNIDADE_ORIGEM | NUMBER | Y |  |
| 35 | NR_GUIA_HIS | VARCHAR2 | Y |  |
| 36 | NM_CONVENIO_UNIDADE | VARCHAR2 | Y |  |
| 37 | SN_PARCEIRO | CHAR | Y |  |
| 38 | ID_MEDICO_EXECUTANTE | NUMBER | Y |  |
| 39 | NM_MEDICO_EXECUTANTE | VARCHAR2 | Y |  |
| 40 | DS_CRM_EXECUTANTE | VARCHAR2 | Y |  |
| 41 | CD_HIS_EXECUTANTE | VARCHAR2 | Y |  |
| 42 | ID_MEDICO_REVISOR | NUMBER | Y |  |
| 43 | NM_MEDICO_REVISOR | VARCHAR2 | Y |  |
| 44 | DS_CRM_REVISOR | VARCHAR2 | Y |  |
| 45 | CD_HIS_REVISOR | VARCHAR2 | Y |  |
| 46 | ID_MEDICO_REVISOR_FINAL | NUMBER | Y |  |
| 47 | NM_MEDICO_REVISOR_FINAL | VARCHAR2 | Y |  |
| 48 | DS_CRM_REVISOR_FINAL | VARCHAR2 | Y |  |
| 49 | CD_HIS_REVISOR_FINAL | VARCHAR2 | Y |  |
| 50 | ID_DIAGNOSTICO_RADIO | NUMBER | Y |  |
| 51 | NM_DIAGNOSTICO_RADIO | CHAR | Y |  |
| 52 | ID_DIAGNOSTICO_CLINICO | NUMBER | Y |  |
| 53 | NM_DIAGNOSTICO_CLINICO | CHAR | Y |  |
| 54 | ID_DIAGNOSTICO_CIRURGICO | NUMBER | Y |  |
| 55 | NM_DIAGNOSTICO_CIRURGICO | CHAR | Y |  |
| 56 | ID_SALA | NUMBER | Y |  |
| 57 | NM_SALA | VARCHAR2 | Y |  |
| 58 | DT_CADASTRO | DATE | N |  |
| 59 | DT_ALTERACAO | DATE | Y |  |
| 60 | DT_STUDY | DATE | Y |  |
| 61 | ID_EXAME_UNIDADE | NUMBER | Y |  |
| 62 | NM_EXAME_UNIDADE | VARCHAR2 | Y |  |
| 63 | ID_EXAME | NUMBER | N |  |
| 64 | NM_EXAME | VARCHAR2 | Y |  |
| 65 | CD_CBHPM | VARCHAR2 | Y |  |
| 66 | ID_USUARIO_INCLUSAO | NUMBER | Y |  |
| 67 | NM_USUARIO_INCLUSAO | VARCHAR2 | Y |  |
| 68 | ID_USUARIO_ALTERACAO | NUMBER | Y |  |
| 69 | NM_USUARIO_ALTERACAO | VARCHAR2 | Y |  |
| 70 | DT_DUM | DATE | Y |  |
| 71 | CD_ATENDIMENTO_HIS | VARCHAR2 | Y |  |
| 72 | CD_PEDIDO_HIS | VARCHAR2 | Y |  |
| 73 | CD_ITEM_PEDIDO_HIS | VARCHAR2 | Y |  |
| 74 | ID_ORIGEM_ATENDIMENTO | NUMBER | Y |  |
| 75 | CD_STATUS | CHAR | Y |  |
| 76 | DS_STATUS | VARCHAR2 | Y |  |
| 77 | ID_SETOR | NUMBER | Y |  |
| 78 | NM_SETOR | VARCHAR2 | Y |  |
| 79 | ID_USUARIO_ENTRADA_EXAME | NUMBER | Y |  |
| 80 | NM_USUARIO_ENTRADA_EXAME | VARCHAR2 | Y |  |
| 81 | ID_USUARIO_SAIDA_EXAME | NUMBER | Y |  |
| 82 | NM_USUARIO_SAIDA_EXAME | VARCHAR2 | Y |  |
| 83 | DT_ENTRADA_EXAME | DATE | Y |  |
| 84 | DT_SAIDA_EXAME | DATE | Y |  |
| 85 | NR_ALTURA | NUMBER | Y |  |
| 86 | NR_PESO | NUMBER | Y |  |
| 87 | SN_PENDENTE | CHAR | Y |  |
| 88 | DT_FINALIZACAO | DATE | Y |  |
| 89 | DT_LAUDADO | DATE | Y |  |
| 90 | DT_PEDIDO | DATE | Y |  |
| 91 | DT_IMPRESSO | DATE | Y |  |
| 92 | DT_ASSINADO | DATE | Y |  |
| 93 | DT_DIGITADO | DATE | Y |  |
| 94 | DT_DITADO | DATE | Y |  |
| 95 | DT_REVISADO | DATE | Y |  |
| 96 | DT_REVISADO_FINAL | DATE | Y |  |
| 97 | DT_ENTREGA | DATE | Y |  |
| 98 | DT_PREVISAO_ENTREGA | DATE | Y |  |
| 99 | NM_ACOMODACAO_HIS | VARCHAR2 | Y |  |
| 100 | NM_LOCAL_ENTREGA_HIS | VARCHAR2 | Y |  |
| 101 | NM_INDICACAO_HIS | VARCHAR2 | Y |  |
| 102 | SN_MIDIA_RESULTADO | CHAR | Y |  |
| 103 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 104 | ID_USUARIO_LIBERACAO | NUMBER | Y |  |
| 105 | NM_USUARIO_LIBERACAO | VARCHAR2 | Y |  |
| 106 | ID_USUARIO_ONLINE | NUMBER | Y |  |
| 107 | NM_USUARIO_ONLINE | VARCHAR2 | Y |  |
| 108 | DS_OPERACAO_ONLINE | VARCHAR2 | Y |  |
| 109 | SN_SMS_ENVIADO | CHAR | Y |  |
| 110 | DS_LAUDO_RTF | CLOB | Y |  |
| 111 | DS_LAUDO_TXT | CLOB | Y |  |
| 112 | DS_LAUDO_HTML | CLOB | Y |  |
| 113 | SN_NORMAL | CHAR | Y |  |
| 114 | ID_JUSTIFICATIVA | NUMBER | Y |  |
| 115 | DT_JUSTIFICATIVA | DATE | Y |  |
| 116 | DS_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 117 | ID_USUARIO_JUSTIFICATIVA | NUMBER | Y |  |
| 118 | NM_USUARIO_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 119 | DS_LEITO_HIS | VARCHAR2 | Y |  |
| 120 | DS_REGIAO_EXAMINADA | VARCHAR2 | Y |  |
| 121 | SN_AGRUPAR_IMAGEM | CHAR | Y |  |
| 122 | SN_AGRUPAR_LAUDO | CHAR | Y |  |
| 123 | ID_TIPO_EXAME | NUMBER | Y |  |
| 124 | NM_TIPO_EXAME | VARCHAR2 | Y |  |
| 125 | NM_PROCEDIMENTO | VARCHAR2 | Y |  |
| 126 | ID_PROCEDIMENTO_UNIDADE | NUMBER | N |  |
| 127 | ID_PROCEDIMENTO | NUMBER | N |  |
| 128 | NR_PRAZO_ENTREGA | NUMBER | Y |  |
| 129 | CD_PROCEDIMENTO_HIS | VARCHAR2 | Y |  |
| 130 | DS_LAYOUT_IMPRESSAO | VARCHAR2 | Y |  |
| 131 | ID_MEDICO_PADRAO | NUMBER | Y |  |
| 132 | ID_SALA_PADRAO | NUMBER | Y |  |
| 133 | SN_REVISAO_AUTOMATICA | CHAR | Y |  |
| 134 | SN_DICOM | CHAR | Y |  |
| 135 | SN_EXECUTANTE_REVISOR | CHAR | Y |  |
| 136 | SN_LAUDO_LOTE_PENDENTE | CHAR | Y |  |
| 137 | SN_ENTREGA_LAUDO_CD | CHAR | Y |  |
| 138 | SN_IMPRESSAO_LAUDO_ENTREGA | CHAR | Y |  |
| 139 | SN_LIBERAR_LOTE_LAUDO_REV_PEND | CHAR | Y |  |
| 140 | SN_TEXTO_PADRAO_AUTOMATICO | CHAR | Y |  |
| 141 | SN_JUSTIFICATIVA_LAUDO | CHAR | Y |  |
| 142 | SN_ENDOSCOPIA | CHAR | Y |  |
| 143 | CD_MODALIDADE | VARCHAR2 | Y |  |
| 144 | NR_DIAS | NUMBER | Y |  |
| 145 | SN_ATRASADO | CHAR | Y |  |
| 146 | TP_SEXO_REVISOR | VARCHAR2 | Y |  |
| 147 | TP_SEXO_EXECUTANTE | VARCHAR2 | Y |  |
| 148 | ID_SISTEMA | NUMBER | Y |  |
| 149 | CD_EXAME_HIS | VARCHAR2 | Y |  |
| 150 | ID_MEDICO_DITADO | NUMBER | Y |  |
| 151 | NM_MEDICO_DITADO | VARCHAR2 | Y |  |
| 152 | DS_CRM_DITADO | VARCHAR2 | Y |  |
| 153 | CD_HIS_DITADO | VARCHAR2 | Y |  |
| 154 | ID_CLASSIFICACAO_RISCO | NUMBER | Y |  |
| 155 | ID_SETOR_EXECUTANTE | NUMBER | Y |  |
| 156 | ID_SETOR_SOLICITANTE | NUMBER | Y |  |
| 157 | ID_ETAPA_ATUAL | NUMBER | Y |  |
| 158 | NM_ETAPA | VARCHAR2 | Y |  |
| 159 | DS_ALERTA_ACORDO | VARCHAR2 | Y |  |
| 160 | POSSUICOMENTARIO | CHAR | Y |  |
| 161 | ID_TIPO_PRIORIDADE | NUMBER | Y |  |
| 162 | SN_PRESCRICAO_URGENTE | CHAR | Y |  |
| 163 | SN_EXAME_CONCLUIDO | CHAR | Y |  |
| 164 | CD_STUDY_UID | VARCHAR2 | Y |  |
| 165 | CD_TIPO_VIEWER | NUMBER | Y |  |
| 166 | DT_ANAMNESE | DATE | Y |  |
| 167 | ID_CONVENIO_UNIDADE | NUMBER | Y |  |
| 168 | PACIENTE_IDADE_EXTENSO | VARCHAR2 | Y |  |
| 169 | SN_STUDY_PED | CHAR | N |  |
| 170 | TP_INSUMO | NUMBER | Y |  |
| 171 | DS_PATH_RELATORIO_FORMULA | VARCHAR2 | Y |  |
| 172 | SN_EXIGIR_JUST_LAU_SEM_IMG | CHAR | Y |  |
| 173 | ID_REPORT | NUMBER | Y |  |
| 174 | SN_TERCEIRA_OPINIAO | CHAR | Y |  |
| 175 | NM_SETOR_EXECUTANTE | VARCHAR2 | Y |  |
| 176 | ID_EXAME_PEDIDO_PAI | NUMBER | Y |  |
| 177 | SN_PANICO | CHAR | N |  |
| 178 | DT_CERTIFICADO | DATE | Y |  |
| 179 | ID_USUARIO_MARCAR_CERTIFICADO | NUMBER | Y |  |
| 180 | NM_USUARIO_MARCAR_CERTIFICADO | VARCHAR2 | Y |  |
| 181 | NM_SISTEMA | VARCHAR2 | Y |  |
| 182 | SN_PROVISORIO | CHAR | N |  |
| 183 | NM_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 184 | DT_DISTRIBUICAO_EXECUTANTE | DATE | Y |  |
| 185 | DT_DISTRIBUICAO_REVISOR | DATE | Y |  |
| 186 | ID_USU_DISTRIBUICAO_EXECUTANTE | NUMBER | Y |  |
| 187 | ID_USU_DISTRIBUICAO_REVISOR | NUMBER | Y |  |
| 188 | SN_DISTRIBUICAO_EXECUTANTE | CHAR | N |  |
| 189 | SN_DISTRIBUICAO_REVISOR | CHAR | N |  |
| 190 | SN_VISUALIZADO_PORTAL | CHAR | N |  |
| 191 | NM_TECNICO_RESPONSAVEL | VARCHAR2 | Y |  |
| 192 | QT_IMAGEM_PACS | NUMBER | Y |  |
| 193 | DT_NAO_CONFORMIDADE | DATE | Y |  |
| 194 | DS_NAO_CONFORMIDADE | VARCHAR2 | Y |  |
| 195 | ID_USU_NAO_CONFORMIDADE | NUMBER | Y |  |
| 196 | DT_ATUALIZACAO_ERRATA | DATE | Y |  |
| 197 | ID_DOCUMENTO_CARTORIO | NUMBER | Y |  |
| 198 | NM_UNIDADE_ORIGEM | VARCHAR2 | Y |  |
| 199 | ID_UNIDADE_EXECUTANTE | NUMBER | Y |  |
| 200 | DT_TRANSFERENCIA_UNIDADE | DATE | Y |  |
| 201 | NR_CPF_CERT_DIGITAL | VARCHAR2 | Y |  |
| 202 | NM_CERT_DIGITAL | VARCHAR2 | Y |  |
| 203 | NM_FORNECEDOR_CERT_DIGITAL | VARCHAR2 | Y |  |
| 204 | DT_FORNECEDOR_CERT_DIGITAL | DATE | Y |  |
| 205 | DT_NAO_CONFORMIDADE_RESOLVIDA | DATE | Y |  |
| 206 | DS_INCONFORMIDADE | VARCHAR2 | Y |  |
| 207 | NM_SOCIAL_PACIENTE | VARCHAR2 | Y |  |
| 208 | CD_STATUS_IA | NUMBER | Y |  |
| 209 | ACORDO | VARCHAR2 | Y |  |
| 210 | DS_PANICO | VARCHAR2 | Y |  |
| 211 | DS_CPF | VARCHAR2 | Y |  |

---

## IDCE.RS_VW_EXAME_PEDIDO_MULTI_LOGIN

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NM_UNIDADE | VARCHAR2 | Y |  |
| 2 | CD_UNIDADE_HIS | VARCHAR2 | Y |  |
| 3 | ID_MEDICO_EXECUTANTE_PADRAO | NUMBER | Y |  |
| 4 | SN_BLOQUEIO_CONTA_FECHADA | CHAR | N |  |
| 5 | DS_CERTIFICACAO_DIGITAL | VARCHAR2 | Y |  |
| 6 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 7 | ID_PEDIDO_EXAME | NUMBER | N |  |
| 8 | ID_MEDICO_SOLICITANTE | NUMBER | Y |  |
| 9 | NM_MEDICO_SOLICITANTE | VARCHAR2 | Y |  |
| 10 | DS_CRM_SOLICITANTE | VARCHAR2 | Y |  |
| 11 | DS_TELEFONE_SOLICITANTE | VARCHAR2 | Y |  |
| 12 | DS_EMAIL_SOLICITANTE | VARCHAR2 | Y |  |
| 13 | ID_PACIENTE | NUMBER | Y |  |
| 14 | ID_PACIENTE_CONSOLIDADO | NUMBER | Y |  |
| 15 | NM_PACIENTE | VARCHAR2 | Y |  |
| 16 | TP_SEXO | CHAR | Y |  |
| 17 | DS_TELEFONE | VARCHAR2 | Y |  |
| 18 | DT_NASCIMENTO | DATE | Y |  |
| 19 | DS_EMAIL | VARCHAR2 | Y |  |
| 20 | DS_MATRICULA | VARCHAR2 | Y |  |
| 21 | IDADE | NUMBER | Y |  |
| 22 | NR_PRONTUARIO_HOSPITALAR | VARCHAR2 | Y |  |
| 23 | CD_PACIENTE_HIS | VARCHAR2 | Y |  |
| 24 | DS_ENDERECO | VARCHAR2 | Y |  |
| 25 | DS_BAIRRO | VARCHAR2 | Y |  |
| 26 | DS_CIDADE | VARCHAR2 | Y |  |
| 27 | DS_UF | VARCHAR2 | Y |  |
| 28 | DS_CEP | VARCHAR2 | Y |  |
| 29 | DS_FAX | VARCHAR2 | Y |  |
| 30 | SN_EMAIL | CHAR | Y |  |
| 31 | SN_SMS | CHAR | Y |  |
| 32 | ID_CONVENIO | NUMBER | Y |  |
| 33 | ID_UNIDADE | NUMBER | Y |  |
| 34 | ID_UNIDADE_ORIGEM | NUMBER | Y |  |
| 35 | NR_GUIA_HIS | VARCHAR2 | Y |  |
| 36 | NM_CONVENIO_UNIDADE | VARCHAR2 | Y |  |
| 37 | SN_PARCEIRO | CHAR | Y |  |
| 38 | ID_MEDICO_EXECUTANTE | NUMBER | Y |  |
| 39 | NM_MEDICO_EXECUTANTE | VARCHAR2 | Y |  |
| 40 | DS_CRM_EXECUTANTE | VARCHAR2 | Y |  |
| 41 | CD_HIS_EXECUTANTE | VARCHAR2 | Y |  |
| 42 | ID_MEDICO_REVISOR | NUMBER | Y |  |
| 43 | NM_MEDICO_REVISOR | VARCHAR2 | Y |  |
| 44 | DS_CRM_REVISOR | VARCHAR2 | Y |  |
| 45 | CD_HIS_REVISOR | VARCHAR2 | Y |  |
| 46 | ID_MEDICO_REVISOR_FINAL | NUMBER | Y |  |
| 47 | NM_MEDICO_REVISOR_FINAL | VARCHAR2 | Y |  |
| 48 | DS_CRM_REVISOR_FINAL | VARCHAR2 | Y |  |
| 49 | CD_HIS_REVISOR_FINAL | VARCHAR2 | Y |  |
| 50 | ID_DIAGNOSTICO_RADIO | NUMBER | Y |  |
| 51 | NM_DIAGNOSTICO_RADIO | CHAR | Y |  |
| 52 | ID_DIAGNOSTICO_CLINICO | NUMBER | Y |  |
| 53 | NM_DIAGNOSTICO_CLINICO | CHAR | Y |  |
| 54 | ID_DIAGNOSTICO_CIRURGICO | NUMBER | Y |  |
| 55 | NM_DIAGNOSTICO_CIRURGICO | CHAR | Y |  |
| 56 | ID_SALA | NUMBER | Y |  |
| 57 | NM_SALA | VARCHAR2 | Y |  |
| 58 | DT_CADASTRO | DATE | N |  |
| 59 | DT_ALTERACAO | DATE | Y |  |
| 60 | DT_STUDY | DATE | Y |  |
| 61 | ID_EXAME_UNIDADE | NUMBER | Y |  |
| 62 | NM_EXAME_UNIDADE | VARCHAR2 | Y |  |
| 63 | ID_EXAME | NUMBER | N |  |
| 64 | NM_EXAME | VARCHAR2 | Y |  |
| 65 | CD_CBHPM | VARCHAR2 | Y |  |
| 66 | ID_USUARIO_INCLUSAO | NUMBER | Y |  |
| 67 | NM_USUARIO_INCLUSAO | VARCHAR2 | Y |  |
| 68 | ID_USUARIO_ALTERACAO | NUMBER | Y |  |
| 69 | NM_USUARIO_ALTERACAO | VARCHAR2 | Y |  |
| 70 | DT_DUM | DATE | Y |  |
| 71 | CD_ATENDIMENTO_HIS | VARCHAR2 | Y |  |
| 72 | CD_PEDIDO_HIS | VARCHAR2 | Y |  |
| 73 | CD_ITEM_PEDIDO_HIS | VARCHAR2 | Y |  |
| 74 | ID_ORIGEM_ATENDIMENTO | NUMBER | Y |  |
| 75 | CD_STATUS | CHAR | Y |  |
| 76 | DS_STATUS | VARCHAR2 | Y |  |
| 77 | ID_SETOR | NUMBER | Y |  |
| 78 | NM_SETOR | VARCHAR2 | Y |  |
| 79 | ID_USUARIO_ENTRADA_EXAME | NUMBER | Y |  |
| 80 | NM_USUARIO_ENTRADA_EXAME | VARCHAR2 | Y |  |
| 81 | ID_USUARIO_SAIDA_EXAME | NUMBER | Y |  |
| 82 | NM_USUARIO_SAIDA_EXAME | VARCHAR2 | Y |  |
| 83 | DT_ENTRADA_EXAME | DATE | Y |  |
| 84 | DT_SAIDA_EXAME | DATE | Y |  |
| 85 | NR_ALTURA | NUMBER | Y |  |
| 86 | NR_PESO | NUMBER | Y |  |
| 87 | SN_PENDENTE | CHAR | Y |  |
| 88 | DT_FINALIZACAO | DATE | Y |  |
| 89 | DT_LAUDADO | DATE | Y |  |
| 90 | DT_PEDIDO | DATE | Y |  |
| 91 | DT_IMPRESSO | DATE | Y |  |
| 92 | DT_ASSINADO | DATE | Y |  |
| 93 | DT_DIGITADO | DATE | Y |  |
| 94 | DT_DITADO | DATE | Y |  |
| 95 | DT_REVISADO | DATE | Y |  |
| 96 | DT_REVISADO_FINAL | DATE | Y |  |
| 97 | DT_ENTREGA | DATE | Y |  |
| 98 | DT_PREVISAO_ENTREGA | DATE | Y |  |
| 99 | NM_ACOMODACAO_HIS | VARCHAR2 | Y |  |
| 100 | NM_LOCAL_ENTREGA_HIS | VARCHAR2 | Y |  |
| 101 | NM_INDICACAO_HIS | VARCHAR2 | Y |  |
| 102 | SN_MIDIA_RESULTADO | CHAR | Y |  |
| 103 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 104 | ID_USUARIO_LIBERACAO | NUMBER | Y |  |
| 105 | NM_USUARIO_LIBERACAO | VARCHAR2 | Y |  |
| 106 | ID_USUARIO_ONLINE | NUMBER | Y |  |
| 107 | NM_USUARIO_ONLINE | VARCHAR2 | Y |  |
| 108 | DS_OPERACAO_ONLINE | VARCHAR2 | Y |  |
| 109 | SN_SMS_ENVIADO | CHAR | Y |  |
| 110 | DS_LAUDO_RTF | CLOB | Y |  |
| 111 | DS_LAUDO_TXT | CLOB | Y |  |
| 112 | DS_LAUDO_HTML | CLOB | Y |  |
| 113 | SN_NORMAL | CHAR | Y |  |
| 114 | ID_JUSTIFICATIVA | NUMBER | Y |  |
| 115 | DT_JUSTIFICATIVA | DATE | Y |  |
| 116 | DS_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 117 | ID_USUARIO_JUSTIFICATIVA | NUMBER | Y |  |
| 118 | NM_USUARIO_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 119 | DS_LEITO_HIS | VARCHAR2 | Y |  |
| 120 | DS_REGIAO_EXAMINADA | VARCHAR2 | Y |  |
| 121 | SN_AGRUPAR_IMAGEM | CHAR | Y |  |
| 122 | SN_AGRUPAR_LAUDO | CHAR | Y |  |
| 123 | ID_TIPO_EXAME | NUMBER | Y |  |
| 124 | NM_TIPO_EXAME | VARCHAR2 | Y |  |
| 125 | NM_PROCEDIMENTO | VARCHAR2 | Y |  |
| 126 | ID_PROCEDIMENTO_UNIDADE | NUMBER | N |  |
| 127 | ID_PROCEDIMENTO | NUMBER | N |  |
| 128 | NR_PRAZO_ENTREGA | NUMBER | Y |  |
| 129 | CD_PROCEDIMENTO_HIS | VARCHAR2 | Y |  |
| 130 | DS_LAYOUT_IMPRESSAO | VARCHAR2 | Y |  |
| 131 | ID_MEDICO_PADRAO | NUMBER | Y |  |
| 132 | ID_SALA_PADRAO | NUMBER | Y |  |
| 133 | SN_REVISAO_AUTOMATICA | CHAR | Y |  |
| 134 | SN_DICOM | CHAR | Y |  |
| 135 | SN_EXECUTANTE_REVISOR | CHAR | Y |  |
| 136 | SN_LAUDO_LOTE_PENDENTE | CHAR | Y |  |
| 137 | SN_ENTREGA_LAUDO_CD | CHAR | Y |  |
| 138 | SN_IMPRESSAO_LAUDO_ENTREGA | CHAR | Y |  |
| 139 | SN_LIBERAR_LOTE_LAUDO_REV_PEND | CHAR | Y |  |
| 140 | SN_TEXTO_PADRAO_AUTOMATICO | CHAR | Y |  |
| 141 | SN_JUSTIFICATIVA_LAUDO | CHAR | Y |  |
| 142 | SN_ENDOSCOPIA | CHAR | Y |  |
| 143 | CD_MODALIDADE | VARCHAR2 | Y |  |
| 144 | NR_DIAS | NUMBER | Y |  |
| 145 | SN_ATRASADO | CHAR | Y |  |
| 146 | TP_SEXO_REVISOR | VARCHAR2 | Y |  |
| 147 | TP_SEXO_EXECUTANTE | VARCHAR2 | Y |  |
| 148 | ID_SISTEMA | NUMBER | Y |  |
| 149 | CD_EXAME_HIS | VARCHAR2 | Y |  |
| 150 | ID_MEDICO_DITADO | NUMBER | Y |  |
| 151 | NM_MEDICO_DITADO | VARCHAR2 | Y |  |
| 152 | DS_CRM_DITADO | VARCHAR2 | Y |  |
| 153 | CD_HIS_DITADO | VARCHAR2 | Y |  |
| 154 | ID_CLASSIFICACAO_RISCO | NUMBER | Y |  |
| 155 | ID_SETOR_EXECUTANTE | NUMBER | Y |  |
| 156 | ID_SETOR_SOLICITANTE | NUMBER | Y |  |
| 157 | ID_ETAPA_ATUAL | NUMBER | Y |  |
| 158 | NM_ETAPA | VARCHAR2 | Y |  |
| 159 | DS_ALERTA_ACORDO | VARCHAR2 | Y |  |
| 160 | POSSUICOMENTARIO | CHAR | Y |  |
| 161 | ID_TIPO_PRIORIDADE | NUMBER | Y |  |
| 162 | SN_PRESCRICAO_URGENTE | CHAR | Y |  |
| 163 | SN_EXAME_CONCLUIDO | CHAR | Y |  |
| 164 | CD_STUDY_UID | VARCHAR2 | Y |  |
| 165 | CD_TIPO_VIEWER | NUMBER | Y |  |
| 166 | DT_ANAMNESE | DATE | Y |  |
| 167 | ID_CONVENIO_UNIDADE | NUMBER | Y |  |
| 168 | PACIENTE_IDADE_EXTENSO | VARCHAR2 | Y |  |
| 169 | SN_STUDY_PED | CHAR | N |  |
| 170 | TP_INSUMO | VARCHAR2 | Y |  |
| 171 | DS_PATH_RELATORIO_FORMULA | VARCHAR2 | Y |  |
| 172 | SN_EXIGIR_JUST_LAU_SEM_IMG | CHAR | Y |  |
| 173 | ID_REPORT | NUMBER | Y |  |
| 174 | SN_TERCEIRA_OPINIAO | CHAR | Y |  |
| 175 | NM_SETOR_EXECUTANTE | VARCHAR2 | Y |  |
| 176 | ID_EXAME_PEDIDO_PAI | NUMBER | Y |  |
| 177 | SN_PANICO | CHAR | N |  |
| 178 | DT_CERTIFICADO | DATE | Y |  |
| 179 | ID_USUARIO_MARCAR_CERTIFICADO | NUMBER | Y |  |
| 180 | NM_USUARIO_MARCAR_CERTIFICADO | VARCHAR2 | Y |  |
| 181 | NM_SISTEMA | VARCHAR2 | Y |  |
| 182 | SN_PROVISORIO | CHAR | N |  |
| 183 | NM_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 184 | DT_DISTRIBUICAO_EXECUTANTE | DATE | Y |  |
| 185 | DT_DISTRIBUICAO_REVISOR | DATE | Y |  |
| 186 | ID_USU_DISTRIBUICAO_EXECUTANTE | NUMBER | Y |  |
| 187 | ID_USU_DISTRIBUICAO_REVISOR | NUMBER | Y |  |
| 188 | SN_DISTRIBUICAO_EXECUTANTE | CHAR | N |  |
| 189 | SN_DISTRIBUICAO_REVISOR | CHAR | N |  |
| 190 | SN_VISUALIZADO_PORTAL | CHAR | N |  |
| 191 | NM_TECNICO_RESPONSAVEL | VARCHAR2 | Y |  |
| 192 | QT_IMAGEM_PACS | VARCHAR2 | Y |  |
| 193 | DT_NAO_CONFORMIDADE | DATE | Y |  |
| 194 | DS_NAO_CONFORMIDADE | VARCHAR2 | Y |  |
| 195 | ID_USU_NAO_CONFORMIDADE | NUMBER | Y |  |
| 196 | DT_ATUALIZACAO_ERRATA | DATE | Y |  |
| 197 | ID_DOCUMENTO_CARTORIO | NUMBER | Y |  |
| 198 | NM_UNIDADE_ORIGEM | VARCHAR2 | Y |  |
| 199 | ID_UNIDADE_EXECUTANTE | NUMBER | Y |  |
| 200 | DT_TRANSFERENCIA_UNIDADE | DATE | Y |  |
| 201 | NR_CPF_CERT_DIGITAL | VARCHAR2 | Y |  |
| 202 | NM_CERT_DIGITAL | VARCHAR2 | Y |  |
| 203 | NM_FORNECEDOR_CERT_DIGITAL | VARCHAR2 | Y |  |
| 204 | DT_FORNECEDOR_CERT_DIGITAL | DATE | Y |  |
| 205 | DT_NAO_CONFORMIDADE_RESOLVIDA | DATE | Y |  |
| 206 | DS_INCONFORMIDADE | VARCHAR2 | Y |  |
| 207 | NM_SOCIAL_PACIENTE | VARCHAR2 | Y |  |
| 208 | DS_ORGAO | VARCHAR2 | Y |  |
| 209 | CD_STATUS_IA | NUMBER | Y |  |
| 210 | ACORDO | VARCHAR2 | Y |  |
| 211 | DS_PANICO | VARCHAR2 | Y |  |
| 212 | DT_CADASTRO_PANICO | DATE | Y |  |
| 213 | NM_CONTATO_PANICO | VARCHAR2 | Y |  |
| 214 | NM_ALERTA | VARCHAR2 | Y |  |
| 215 | CD_CLASSIFICACAO | VARCHAR2 | Y |  |
| 216 | DS_CPF | VARCHAR2 | Y |  |
| 217 | DS_RG | VARCHAR2 | Y |  |
| 218 | SN_CANCELADO | CHAR | Y |  |
| 219 | SN_EXIGIR_FINALIZACAO_EXAME | CHAR | N |  |
| 220 | DT_REFAZER | DATE | Y |  |
| 221 | DT_ULT_SECUNDARIO | DATE | Y |  |
| 222 | DT_COLETA_HIS | DATE | Y |  |
| 223 | SN_REGRA_DISTRIBUICAO | CHAR | N |  |
| 224 | SN_COMENTARIO | VARCHAR2 | Y |  |
| 225 | SN_EXIGIR_PARECER | CHAR | Y |  |
| 226 | DS_JUSTIFICATIVA_IMAGEM | VARCHAR2 | Y |  |
| 227 | SN_BLOQUEIO_CANCELAMENTO | CHAR | Y |  |
| 228 | TEMPO_BLOQUEIO_CANCELAMENTO | NUMBER | Y |  |
| 229 | DS_COMENTARIO | VARCHAR2 | Y |  |
| 230 | TP_CRITICIDADE | VARCHAR2 | N |  |
| 231 | SN_ATIVO | CHAR | Y |  |

---

## IDCE.RS_VW_EXAME_PEDIDO_QUE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NM_UNIDADE | VARCHAR2 | Y |  |
| 2 | CD_UNIDADE_HIS | VARCHAR2 | Y |  |
| 3 | ID_MEDICO_EXECUTANTE_PADRAO | NUMBER | Y |  |
| 4 | SN_BLOQUEIO_CONTA_FECHADA | CHAR | N |  |
| 5 | DS_CERTIFICACAO_DIGITAL | VARCHAR2 | Y |  |
| 6 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 7 | ID_PEDIDO_EXAME | NUMBER | N |  |
| 8 | ID_MEDICO_SOLICITANTE | NUMBER | Y |  |
| 9 | NM_MEDICO_SOLICITANTE | VARCHAR2 | Y |  |
| 10 | DS_CRM_SOLICITANTE | VARCHAR2 | Y |  |
| 11 | DS_TELEFONE_SOLICITANTE | VARCHAR2 | Y |  |
| 12 | DS_EMAIL_SOLICITANTE | VARCHAR2 | Y |  |
| 13 | ID_PACIENTE | NUMBER | Y |  |
| 14 | ID_PACIENTE_CONSOLIDADO | NUMBER | Y |  |
| 15 | NM_PACIENTE | VARCHAR2 | Y |  |
| 16 | NM_MAE | VARCHAR2 | Y |  |
| 17 | TP_SEXO | CHAR | Y |  |
| 18 | DS_TELEFONE | VARCHAR2 | Y |  |
| 19 | DT_NASCIMENTO | DATE | Y |  |
| 20 | DS_EMAIL | VARCHAR2 | Y |  |
| 21 | DS_MATRICULA | VARCHAR2 | Y |  |
| 22 | IDADE | NUMBER | Y |  |
| 23 | NR_PRONTUARIO_HOSPITALAR | VARCHAR2 | Y |  |
| 24 | CD_PACIENTE_HIS | VARCHAR2 | Y |  |
| 25 | DS_ENDERECO | VARCHAR2 | Y |  |
| 26 | DS_BAIRRO | VARCHAR2 | Y |  |
| 27 | DS_CIDADE | VARCHAR2 | Y |  |
| 28 | DS_UF | VARCHAR2 | Y |  |
| 29 | DS_CEP | VARCHAR2 | Y |  |
| 30 | DS_FAX | VARCHAR2 | Y |  |
| 31 | SN_EMAIL | CHAR | Y |  |
| 32 | SN_SMS | CHAR | Y |  |
| 33 | ID_CONVENIO | NUMBER | Y |  |
| 34 | ID_UNIDADE | NUMBER | Y |  |
| 35 | ID_UNIDADE_ORIGEM | NUMBER | Y |  |
| 36 | NR_GUIA_HIS | VARCHAR2 | Y |  |
| 37 | NM_CONVENIO_UNIDADE | VARCHAR2 | Y |  |
| 38 | SN_PARCEIRO | CHAR | Y |  |
| 39 | ID_MEDICO_EXECUTANTE | NUMBER | Y |  |
| 40 | NM_MEDICO_EXECUTANTE | VARCHAR2 | Y |  |
| 41 | DS_CRM_EXECUTANTE | VARCHAR2 | Y |  |
| 42 | CD_HIS_EXECUTANTE | VARCHAR2 | Y |  |
| 43 | ID_MEDICO_REVISOR | NUMBER | Y |  |
| 44 | NM_MEDICO_REVISOR | VARCHAR2 | Y |  |
| 45 | DS_CRM_REVISOR | VARCHAR2 | Y |  |
| 46 | CD_HIS_REVISOR | VARCHAR2 | Y |  |
| 47 | ID_MEDICO_REVISOR_FINAL | NUMBER | Y |  |
| 48 | NM_MEDICO_REVISOR_FINAL | VARCHAR2 | Y |  |
| 49 | DS_CRM_REVISOR_FINAL | VARCHAR2 | Y |  |
| 50 | CD_HIS_REVISOR_FINAL | VARCHAR2 | Y |  |
| 51 | DT_NASCIMENTO_S_HORA | VARCHAR2 | Y |  |
| 52 | ID_DIAGNOSTICO_RADIO | NUMBER | Y |  |
| 53 | NM_DIAGNOSTICO_RADIO | CHAR | Y |  |
| 54 | ID_DIAGNOSTICO_CLINICO | NUMBER | Y |  |
| 55 | NM_DIAGNOSTICO_CLINICO | CHAR | Y |  |
| 56 | ID_DIAGNOSTICO_CIRURGICO | NUMBER | Y |  |
| 57 | NM_DIAGNOSTICO_CIRURGICO | CHAR | Y |  |
| 58 | ID_SALA | NUMBER | Y |  |
| 59 | NM_SALA | VARCHAR2 | Y |  |
| 60 | DT_CADASTRO | DATE | N |  |
| 61 | DT_ALTERACAO | DATE | Y |  |
| 62 | DT_STUDY | DATE | Y |  |
| 63 | ID_EXAME_UNIDADE | NUMBER | Y |  |
| 64 | NM_EXAME_UNIDADE | VARCHAR2 | Y |  |
| 65 | ID_EXAME | NUMBER | N |  |
| 66 | NM_EXAME | VARCHAR2 | Y |  |
| 67 | CD_CBHPM | VARCHAR2 | Y |  |
| 68 | ID_USUARIO_INCLUSAO | NUMBER | Y |  |
| 69 | NM_USUARIO_INCLUSAO | VARCHAR2 | Y |  |
| 70 | ID_USUARIO_ALTERACAO | NUMBER | Y |  |
| 71 | NM_USUARIO_ALTERACAO | VARCHAR2 | Y |  |
| 72 | DT_DUM | DATE | Y |  |
| 73 | CD_ATENDIMENTO_HIS | VARCHAR2 | Y |  |
| 74 | CD_PEDIDO_HIS | VARCHAR2 | Y |  |
| 75 | CD_ITEM_PEDIDO_HIS | VARCHAR2 | Y |  |
| 76 | ID_ORIGEM_ATENDIMENTO | NUMBER | Y |  |
| 77 | CD_STATUS | CHAR | Y |  |
| 78 | DS_STATUS | VARCHAR2 | Y |  |
| 79 | ID_SETOR | NUMBER | Y |  |
| 80 | NM_SETOR | VARCHAR2 | Y |  |
| 81 | ID_USUARIO_ENTRADA_EXAME | NUMBER | Y |  |
| 82 | NM_USUARIO_ENTRADA_EXAME | VARCHAR2 | Y |  |
| 83 | ID_USUARIO_SAIDA_EXAME | NUMBER | Y |  |
| 84 | NM_USUARIO_SAIDA_EXAME | VARCHAR2 | Y |  |
| 85 | DT_ENTRADA_EXAME | DATE | Y |  |
| 86 | DT_SAIDA_EXAME | DATE | Y |  |
| 87 | NR_ALTURA | NUMBER | Y |  |
| 88 | NR_PESO | NUMBER | Y |  |
| 89 | SN_PENDENTE | CHAR | Y |  |
| 90 | DT_FINALIZACAO | DATE | Y |  |
| 91 | DT_LAUDADO | DATE | Y |  |
| 92 | DT_PEDIDO | DATE | Y |  |
| 93 | DT_IMPRESSO | DATE | Y |  |
| 94 | DT_ASSINADO | DATE | Y |  |
| 95 | DT_DIGITADO | DATE | Y |  |
| 96 | DT_DITADO | DATE | Y |  |
| 97 | DT_REVISADO | DATE | Y |  |
| 98 | DT_REVISADO_FINAL | DATE | Y |  |
| 99 | DT_ENTREGA | DATE | Y |  |
| 100 | DT_PREVISAO_ENTREGA | DATE | Y |  |
| 101 | NM_ACOMODACAO_HIS | VARCHAR2 | Y |  |
| 102 | NM_LOCAL_ENTREGA_HIS | VARCHAR2 | Y |  |
| 103 | NM_INDICACAO_HIS | VARCHAR2 | Y |  |
| 104 | SN_MIDIA_RESULTADO | CHAR | Y |  |
| 105 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 106 | ID_USUARIO_LIBERACAO | NUMBER | Y |  |
| 107 | NM_USUARIO_LIBERACAO | VARCHAR2 | Y |  |
| 108 | ID_USUARIO_ONLINE | NUMBER | Y |  |
| 109 | NM_USUARIO_ONLINE | VARCHAR2 | Y |  |
| 110 | DS_OPERACAO_ONLINE | VARCHAR2 | Y |  |
| 111 | SN_SMS_ENVIADO | CHAR | Y |  |
| 112 | DS_LAUDO_RTF | CLOB | Y |  |
| 113 | DS_LAUDO_TXT | CLOB | Y |  |
| 114 | DS_LAUDO_HTML | CLOB | Y |  |
| 115 | SN_NORMAL | CHAR | Y |  |
| 116 | ID_JUSTIFICATIVA | NUMBER | Y |  |
| 117 | DT_JUSTIFICATIVA | DATE | Y |  |
| 118 | DS_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 119 | ID_USUARIO_JUSTIFICATIVA | NUMBER | Y |  |
| 120 | NM_USUARIO_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 121 | DS_LEITO_HIS | VARCHAR2 | Y |  |
| 122 | DS_REGIAO_EXAMINADA | VARCHAR2 | Y |  |
| 123 | SN_AGRUPAR_IMAGEM | CHAR | Y |  |
| 124 | SN_AGRUPAR_LAUDO | CHAR | Y |  |
| 125 | ID_TIPO_EXAME | NUMBER | Y |  |
| 126 | NM_TIPO_EXAME | VARCHAR2 | Y |  |
| 127 | NM_PROCEDIMENTO | VARCHAR2 | Y |  |
| 128 | ID_PROCEDIMENTO_UNIDADE | NUMBER | N |  |
| 129 | ID_PROCEDIMENTO | NUMBER | N |  |
| 130 | NR_PRAZO_ENTREGA | NUMBER | Y |  |
| 131 | CD_PROCEDIMENTO_HIS | VARCHAR2 | Y |  |
| 132 | DS_LAYOUT_IMPRESSAO | VARCHAR2 | Y |  |
| 133 | ID_MEDICO_PADRAO | NUMBER | Y |  |
| 134 | ID_SALA_PADRAO | NUMBER | Y |  |
| 135 | SN_REVISAO_AUTOMATICA | CHAR | Y |  |
| 136 | SN_DICOM | CHAR | Y |  |
| 137 | SN_EXECUTANTE_REVISOR | CHAR | Y |  |
| 138 | SN_LAUDO_LOTE_PENDENTE | CHAR | Y |  |
| 139 | SN_ENTREGA_LAUDO_CD | CHAR | Y |  |
| 140 | SN_IMPRESSAO_LAUDO_ENTREGA | CHAR | Y |  |
| 141 | SN_LIBERAR_LOTE_LAUDO_REV_PEND | CHAR | Y |  |
| 142 | SN_TEXTO_PADRAO_AUTOMATICO | CHAR | Y |  |
| 143 | SN_JUSTIFICATIVA_LAUDO | CHAR | Y |  |
| 144 | SN_ENDOSCOPIA | CHAR | Y |  |
| 145 | CD_MODALIDADE | VARCHAR2 | Y |  |
| 146 | NR_DIAS | NUMBER | Y |  |
| 147 | SN_ATRASADO | CHAR | Y |  |
| 148 | TP_SEXO_REVISOR | VARCHAR2 | Y |  |
| 149 | TP_SEXO_EXECUTANTE | VARCHAR2 | Y |  |
| 150 | ID_SISTEMA | NUMBER | Y |  |
| 151 | CD_EXAME_HIS | VARCHAR2 | Y |  |
| 152 | ID_MEDICO_DITADO | NUMBER | Y |  |
| 153 | NM_MEDICO_DITADO | VARCHAR2 | Y |  |
| 154 | DS_CRM_DITADO | VARCHAR2 | Y |  |
| 155 | CD_HIS_DITADO | VARCHAR2 | Y |  |
| 156 | ID_CLASSIFICACAO_RISCO | NUMBER | Y |  |
| 157 | ID_SETOR_EXECUTANTE | NUMBER | Y |  |
| 158 | ID_SETOR_SOLICITANTE | NUMBER | Y |  |
| 159 | ID_ETAPA_ATUAL | NUMBER | Y |  |
| 160 | NM_ETAPA | VARCHAR2 | Y |  |
| 161 | DS_ALERTA_ACORDO | VARCHAR2 | Y |  |
| 162 | POSSUICOMENTARIO | CHAR | Y |  |
| 163 | ID_TIPO_PRIORIDADE | NUMBER | Y |  |
| 164 | SN_PRESCRICAO_URGENTE | CHAR | Y |  |
| 165 | SN_EXAME_CONCLUIDO | CHAR | Y |  |
| 166 | CD_STUDY_UID | VARCHAR2 | Y |  |
| 167 | CD_TIPO_VIEWER | NUMBER | Y |  |
| 168 | DT_ANAMNESE | DATE | Y |  |
| 169 | ID_CONVENIO_UNIDADE | NUMBER | Y |  |
| 170 | PACIENTE_IDADE_EXTENSO | VARCHAR2 | Y |  |
| 171 | SN_STUDY_PED | CHAR | N |  |
| 172 | TP_INSUMO | NUMBER | Y |  |
| 173 | DS_PATH_RELATORIO_FORMULA | VARCHAR2 | Y |  |
| 174 | DS_LAUDO_PDF_MARCADAGUA | BLOB | Y |  |
| 175 | NM_SETOR_EXECUTANTE | VARCHAR2 | Y |  |
| 176 | SN_EXIGIR_JUST_LAU_SEM_IMG | CHAR | Y |  |
| 177 | SN_TERCEIRA_OPINIAO | CHAR | Y |  |
| 178 | ID_EXAME_PEDIDO_PAI | NUMBER | Y |  |
| 179 | SN_PANICO | CHAR | N |  |
| 180 | ID_JUSTIFICATIVA_IMAGEM | NUMBER | Y |  |
| 181 | DT_JUSTIFICATIVA_IMAGEM | DATE | Y |  |
| 182 | DS_JUSTIFICATIVA_IMAGEM | VARCHAR2 | Y |  |
| 183 | SN_PROVISORIO | CHAR | N |  |
| 184 | DT_CERTIFICADO | DATE | Y |  |
| 185 | ID_USUARIO_MARCAR_CERTIFICADO | NUMBER | Y |  |
| 186 | NM_USUARIO_MARCAR_CERTIFICADO | VARCHAR2 | Y |  |
| 187 | NM_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 188 | DT_DISTRIBUICAO_EXECUTANTE | DATE | Y |  |
| 189 | DT_DISTRIBUICAO_REVISOR | DATE | Y |  |
| 190 | ID_USU_DISTRIBUICAO_EXECUTANTE | NUMBER | Y |  |
| 191 | ID_USU_DISTRIBUICAO_REVISOR | NUMBER | Y |  |
| 192 | SN_DISTRIBUICAO_EXECUTANTE | CHAR | N |  |
| 193 | SN_DISTRIBUICAO_REVISOR | CHAR | N |  |
| 194 | NR_DIAS_EXPIRAR_ACAO_LAUDAR | NUMBER | N |  |
| 195 | SN_VISUALIZADO_PORTAL | CHAR | N |  |
| 196 | NM_TECNICO_RESPONSAVEL | VARCHAR2 | Y |  |
| 197 | QT_IMAGEM_PACS | NUMBER | Y |  |
| 198 | DT_NAO_CONFORMIDADE | DATE | Y |  |
| 199 | DS_NAO_CONFORMIDADE | VARCHAR2 | Y |  |
| 200 | ID_USU_NAO_CONFORMIDADE | NUMBER | Y |  |
| 201 | DT_ATUALIZACAO_ERRATA | DATE | Y |  |
| 202 | ID_DOCUMENTO_CARTORIO | NUMBER | Y |  |
| 203 | NM_UNIDADE_ORIGEM | VARCHAR2 | Y |  |
| 204 | ID_UNIDADE_EXECUTANTE | NUMBER | Y |  |
| 205 | DT_TRANSFERENCIA_UNIDADE | DATE | Y |  |
| 206 | NR_CPF_CERT_DIGITAL | VARCHAR2 | Y |  |
| 207 | NM_CERT_DIGITAL | VARCHAR2 | Y |  |
| 208 | NM_FORNECEDOR_CERT_DIGITAL | VARCHAR2 | Y |  |
| 209 | DT_FORNECEDOR_CERT_DIGITAL | DATE | Y |  |
| 210 | DT_NAO_CONFORMIDADE_RESOLVIDA | DATE | Y |  |
| 211 | DS_INCONFORMIDADE | VARCHAR2 | Y |  |
| 212 | NR_CNS | VARCHAR2 | Y |  |
| 213 | DS_CPF | VARCHAR2 | Y |  |
| 214 | NM_SOCIAL_PACIENTE | VARCHAR2 | Y |  |
| 215 | CD_STATUS_IA | NUMBER | Y |  |
| 216 | DS_PANICO | VARCHAR2 | Y |  |

---

## IDCE.RS_VW_EXAME_PEDIDO_SECUNDARIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME_PEDIDO_SECUNDARIO | NUMBER | N |  |
| 2 | ID_EXAME_PEDIDO | NUMBER | Y |  |
| 3 | ID_EXAME_UNIDADE | NUMBER | Y |  |
| 4 | DS_JUSTIFICATIVA_INCLUSAO | VARCHAR2 | Y |  |
| 5 | DS_JUSTIFICATIVA_CANCELAMENTO | VARCHAR2 | Y |  |
| 6 | DT_RETORNO | DATE | Y |  |
| 7 | DT_CADASTRO | DATE | Y |  |
| 8 | CD_ITEM_PEDIDO_HIS | VARCHAR2 | Y |  |
| 9 | CD_UNIDADE_HIS | VARCHAR2 | Y |  |
| 10 | NM_UNIDADE | VARCHAR2 | Y |  |
| 11 | CD_EXAME_HIS | VARCHAR2 | Y |  |
| 12 | NM_EXAME | VARCHAR2 | Y |  |
| 13 | NR_PRONTUARIO_HOSPITALAR | VARCHAR2 | Y |  |
| 14 | NM_PACIENTE | VARCHAR2 | Y |  |

---

## IDCE.RS_VW_EXAME_PEDIDO_SLINE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 2 | ID_UNIDADE | NUMBER | Y |  |
| 3 | CD_ITEM_PEDIDO_HIS | VARCHAR2 | Y |  |
| 4 | DT_ASSINADO | DATE | Y |  |
| 5 | TIPO_DOCUMENTO | CHAR | Y |  |
| 6 | TITULO | VARCHAR2 | Y |  |
| 7 | DESTINO | CHAR | Y |  |
| 8 | CHAVE_ACESSO | CHAR | Y |  |
| 9 | SENHA_ACESSO | CHAR | Y |  |
| 10 | COD_DOC | NUMBER | N |  |
| 11 | DT_REALIZACAO | DATE | Y |  |
| 12 | LAUDO_PDF | BLOB | Y |  |
| 13 | OPER_REGANS | VARCHAR2 | Y |  |
| 14 | OPER_CARTEIRA | VARCHAR2 | Y |  |
| 15 | COD_GUIA | VARCHAR2 | Y |  |
| 16 | OPER_EXAME | VARCHAR2 | Y |  |
| 17 | ID_MEDICO_EXECUTANTE | NUMBER | Y |  |
| 18 | DS_CRM_MEDICO_EXECUTANTE | VARCHAR2 | Y |  |
| 19 | ID_MEDICO_REVISOR | NUMBER | Y |  |
| 20 | DS_CRM_MEDICO_REVISOR | VARCHAR2 | Y |  |
| 21 | ID_MEDICO_REVISOR_FINAL | NUMBER | Y |  |
| 22 | DS_CRM_MEDICO_REVISOR_FINAL | VARCHAR2 | Y |  |
| 23 | ID_MEDICO_SOLICITANTE | NUMBER | Y |  |
| 24 | DS_CRM_MEDICO_SOLICITANTE | VARCHAR2 | Y |  |

---

## IDCE.RS_VW_EXAME_UNIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME | NUMBER | N |  |
| 2 | NM_EXAME | VARCHAR2 | Y |  |
| 3 | ID_TIPO_EXAME | NUMBER | Y |  |
| 4 | NM_TIPO_EXAME | VARCHAR2 | Y |  |
| 5 | ID_SISTEMA | NUMBER | Y |  |
| 6 | NM_SISTEMA | VARCHAR2 | Y |  |
| 7 | ID_EXAME_UNIDADE | NUMBER | N |  |
| 8 | NM_EXAME_UNIDADE | VARCHAR2 | Y |  |
| 9 | CD_EXAME_HIS | VARCHAR2 | Y |  |
| 10 | NM_EXAME_HIS | VARCHAR2 | Y |  |
| 11 | DT_CADASTRO | DATE | Y |  |
| 12 | ID_UNIDADE | NUMBER | Y |  |
| 13 | NM_CBHPM | VARCHAR2 | Y |  |
| 14 | CD_CBHPM | VARCHAR2 | Y |  |
| 15 | NR_TEMPO_MEDIO | NUMBER | Y |  |
| 16 | DS_TEXTO_LAUDO_PADRAO | CLOB | Y |  |
| 17 | DS_PREPARO | VARCHAR2 | Y |  |
| 18 | DS_RESTRICAO | VARCHAR2 | Y |  |
| 19 | NR_PRAZO_ENTREGA | NUMBER | Y |  |
| 20 | SN_AGRUPAR_LAUDO | CHAR | Y |  |
| 21 | SN_AGRUPAR_IMAGEM | CHAR | Y |  |
| 22 | DS_PROTOCOLO_MEDICO | CLOB | Y |  |
| 23 | DS_PROTOCOLO_TECNICO | CLOB | Y |  |
| 24 | ID_USUARIO | NUMBER | Y |  |
| 25 | VL_EXAME_PLANTAO | NUMBER | Y |  |
| 26 | VL_EXAME_TELE | NUMBER | Y |  |
| 27 | DT_ALTERACAO | DATE | Y |  |
| 28 | NM_PROCEDIMENTO | VARCHAR2 | Y |  |
| 29 | ID_PROCEDIMENTO_UNIDADE | NUMBER | N |  |
| 30 | ID_PROCEDIMENTO | NUMBER | N |  |
| 31 | CD_PROCEDIMENTO_HIS | VARCHAR2 | Y |  |
| 32 | DS_LAYOUT_IMPRESSAO | VARCHAR2 | Y |  |
| 33 | ID_MEDICO_PADRAO | NUMBER | Y |  |
| 34 | ID_SALA | NUMBER | Y |  |
| 35 | SN_REVISAO_AUTOMATICA | CHAR | Y |  |
| 36 | SN_DICOM | CHAR | Y |  |
| 37 | SN_EXECUTANTE_REVISOR | CHAR | Y |  |
| 38 | SN_LAUDO_LOTE_PENDENTE | CHAR | Y |  |
| 39 | SN_ENTREGA_LAUDO_CD | CHAR | Y |  |
| 40 | SN_IMPRESSAO_LAUDO_ENTREGA | CHAR | Y |  |
| 41 | SN_LIBERAR_LOTE_LAUDO_REV_PEND | CHAR | Y |  |
| 42 | SN_TEXTO_PADRAO_AUTOMATICO | CHAR | Y |  |
| 43 | SN_JUSTIFICATIVA_LAUDO | CHAR | Y |  |
| 44 | SN_ENDOSCOPIA | CHAR | Y |  |
| 45 | CD_MODALIDADE | VARCHAR2 | Y |  |
| 46 | CD_UNIDADE_HIS | VARCHAR2 | Y |  |
| 47 | VL_EXAME | NUMBER | Y |  |

---

## IDCE.RS_VW_EXA_ANTERIORES_LAU_WEB

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 2 | DT_CADASTRO | DATE | N |  |
| 3 | DT_REVISADO | DATE | Y |  |
| 4 | CD_ITEM_PEDIDO_HIS | VARCHAR2 | Y |  |
| 5 | NM_EXAME_UNIDADE | VARCHAR2 | Y |  |
| 6 | NR_PRONTUARIO_HOSPITALAR | VARCHAR2 | Y |  |
| 7 | ID_PROCEDIMENTO_UNIDADE | NUMBER | N |  |
| 8 | DS_LAUDO_RTF | CLOB | Y |  |

---

## IDCE.RS_VW_EXA_ATRASADOS_PROC

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 2 | CD_ITEM_PEDIDO_HIS | VARCHAR2 | Y |  |
| 3 | CD_PEDIDO_HIS | VARCHAR2 | Y |  |
| 4 | SN_DICOM | CHAR | Y |  |
| 5 | ID_PROCEDIMENTO | NUMBER | N |  |
| 6 | NM_PROCEDIMENTO | VARCHAR2 | Y |  |
| 7 | DT_CADASTRO | DATE | N |  |
| 8 | DT_STUDY | DATE | Y |  |
| 9 | DT_LAUDADO | DATE | Y |  |
| 10 | DT_ENTRADA_EXAME | DATE | Y |  |
| 11 | DT_SAIDA_EXAME | DATE | Y |  |
| 12 | NR_PRAZO_ENTREGA_ORIG_ATEND | NUMBER | Y |  |
| 13 | NR_PRAZO_ENTREGA_LEGADO | NUMBER | Y |  |
| 14 | DT_PREVISAO_ENTREGA | DATE | Y |  |
| 15 | SN_ATRASADO_METD_ORIG | CHAR | Y |  |
| 16 | SN_ATRASADO_METD_ATUAL | CHAR | Y |  |

---

## IDCE.RS_VW_GRAF_ANA_PROC

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_PEDIDO_EXAME | NUMBER | N |  |
| 2 | ID_UNIDADE | NUMBER | Y |  |
| 3 | DT_PEDIDO_HIS | DATE | Y |  |
| 4 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 5 | ID_EXAME_UNIDADE | NUMBER | Y |  |
| 6 | NM_PROCEDIMENTO | VARCHAR2 | Y |  |
| 7 | ID_PROCEDIMENTO_UNIDADE | NUMBER | Y |  |
| 8 | ID_PROCEDIMENTO | NUMBER | Y |  |
| 9 | DT_LAUDADO | DATE | Y |  |

---

## IDCE.RS_VW_GRAF_ANA_PROC_N

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_PEDIDO_EXAME | NUMBER | N |  |
| 2 | ID_UNIDADE | NUMBER | Y |  |
| 3 | DT_PEDIDO_HIS | DATE | Y |  |
| 4 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 5 | ID_EXAME_UNIDADE | NUMBER | N |  |
| 6 | NM_PROCEDIMENTO | VARCHAR2 | Y |  |
| 7 | ID_PROCEDIMENTO_UNIDADE | NUMBER | N |  |
| 8 | ID_PROCEDIMENTO | NUMBER | N |  |

---

## IDCE.RS_VW_HISTORICO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_HISTORICO | NUMBER | N |  |
| 2 | ID_UNIDADE | NUMBER | Y |  |
| 3 | DS_TIPO_HISTORICO | VARCHAR2 | Y |  |
| 4 | ID_EXAME_PEDIDO | NUMBER | Y |  |
| 5 | ID_MEDICO_EXECUTANTE | NUMBER | Y |  |
| 6 | ID_MEDICO_REVISOR | NUMBER | Y |  |
| 7 | ID_MEDICO_REVISOR_FINAL | NUMBER | Y |  |
| 8 | DT_FINALIZACAO | DATE | Y |  |
| 9 | DT_LAUDADO | DATE | N |  |
| 10 | DT_PEDIDO | DATE | Y |  |
| 11 | DT_IMPRESSO | DATE | Y |  |
| 12 | DT_ASSINADO | DATE | N |  |
| 13 | DT_DIGITADO | DATE | Y |  |
| 14 | DT_REVISADO | DATE | N |  |
| 15 | DT_REVISADO_FINAL | DATE | Y |  |
| 16 | DT_ENTREGA | DATE | Y |  |
| 17 | DS_LAUDO_TXT | CLOB | Y |  |
| 18 | DS_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 19 | ID_USUARIO | NUMBER | Y |  |
| 20 | NM_USUARIO | VARCHAR2 | Y |  |
| 21 | DT_CADASTRO | DATE | N |  |
| 22 | DT_ALTERACAO | DATE | Y |  |
| 23 | NM_PACIENTE | VARCHAR2 | Y |  |
| 24 | NM_CONVENIO_UNIDADE | VARCHAR2 | Y |  |
| 25 | NM_PROCEDIMENTO | VARCHAR2 | Y |  |
| 26 | NM_MEDICO_SOLICITANTE | VARCHAR2 | Y |  |
| 27 | NM_TIPO_EXAME | VARCHAR2 | Y |  |
| 28 | ID_EXAME_UNIDADE | NUMBER | Y |  |
| 29 | NM_EXAME_UNIDADE | VARCHAR2 | Y |  |
| 30 | ID_PROCEDIMENTO_UNIDADE | NUMBER | N |  |
| 31 | ID_PROCEDIMENTO | NUMBER | N |  |
| 32 | QTDE_INC | NUMBER | Y |  |
| 33 | QTDE_ALT | NUMBER | Y |  |
| 34 | QTDE_LAU | NUMBER | Y |  |
| 35 | QTDE_REV | NUMBER | Y |  |
| 36 | QTDE_LAU_PROV | NUMBER | Y |  |
| 37 | QTDE_PARECER | NUMBER | Y |  |
| 38 | NM_MEDICO_EXECUTANTE | VARCHAR2 | Y |  |
| 39 | NM_MEDICO_REVISOR | VARCHAR2 | Y |  |
| 40 | NM_MEDICO_REVISOR_FINAL | VARCHAR2 | Y |  |
| 41 | DS_IP_MAQUINA | VARCHAR2 | Y |  |
| 42 | NM_MAQUINA | VARCHAR2 | Y |  |
| 43 | DS_LAUDO_PDF | BLOB | Y |  |
| 44 | ID_UNIDADE_EXECUTANTE | NUMBER | Y |  |
| 45 | NM_UNIDADE_EXECUTANTE | VARCHAR2 | Y |  |
| 46 | NM_UNIDADE_ORIGEM | VARCHAR2 | Y |  |
| 47 | DS_PANICO | VARCHAR2 | Y |  |
| 48 | DT_CADASTRO_PANICO | DATE | Y |  |
| 49 | NM_CONTATO_PANICO | VARCHAR2 | Y |  |
| 50 | DS_COMENTARIO | VARCHAR2 | Y |  |
| 51 | NM_DIAGNOSTICO | VARCHAR2 | Y |  |

---

## IDCE.RS_VW_INTEGRA_MONITOR_PEDIDOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DS_ENTIDADE | VARCHAR2 | Y |  |
| 2 | ENTRADASAIDA | VARCHAR2 | Y |  |
| 3 | ID_INTEGRACAO | NUMBER | Y |  |
| 4 | DT_CADASTRO | DATE | Y |  |
| 5 | TP_MOVIMENTO | VARCHAR2 | Y |  |
| 6 | TP_REGISTRO | VARCHAR2 | Y |  |
| 7 | TP_INTEGRACAO | VARCHAR2 | Y |  |
| 8 | DT_INTEGRACAO | DATE | Y |  |
| 9 | DS_ERRO | VARCHAR2 | Y |  |
| 10 | CD_UNIDADE | VARCHAR2 | Y |  |
| 11 | CD_CHAVE | VARCHAR2 | Y |  |
| 12 | DS_CHAVE | VARCHAR2 | Y |  |
| 13 | ID_FORNECEDOR | NUMBER | Y |  |
| 14 | DS_FORNECEDOR | VARCHAR2 | Y |  |

---

## IDCE.RS_VW_INTEGRA_SP_SADT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_UNIDADE | VARCHAR2 | Y |  |
| 2 | NM_UNIDADE | VARCHAR2 | Y |  |
| 3 | CD_ACCESS_NUMBER | VARCHAR2 | Y |  |
| 4 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 5 | CD_PRONTUARIO | VARCHAR2 | Y |  |
| 6 | NM_PACIENTE | VARCHAR2 | Y |  |
| 7 | CD_MEDICO_EXECUTANTE | VARCHAR2 | Y |  |
| 8 | NM_MEDICO_EXECUTANTE | VARCHAR2 | Y |  |
| 9 | CD_MEDICO_REVISOR | VARCHAR2 | Y |  |
| 10 | NM_MEDICO_REVISOR | VARCHAR2 | Y |  |
| 11 | DT_LAUDADO | DATE | Y |  |
| 12 | DT_REVISADO | DATE | Y |  |
| 13 | DT_ASSINADO | DATE | Y |  |
| 14 | DT_IMAGEM_DISPONIVEL | DATE | Y |  |
| 15 | DS_LAUDO_RTF | CLOB | Y |  |
| 16 | URL_VISUALIZACAO | VARCHAR2 | Y |  |

---

## IDCE.RS_VW_LAYOUT_CUSTOMIZADO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME_PEDIDO | NUMBER | N |  |

---

## IDCE.RS_VW_LAYOUT_PADRAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 2 | NM_UNIDADE | VARCHAR2 | Y |  |
| 3 | NM_MEDICO_SOLICITANTE | VARCHAR2 | Y |  |
| 4 | DS_CRM_SOLICITANTE | VARCHAR2 | Y |  |
| 5 | NM_PACIENTE | VARCHAR2 | Y |  |
| 6 | TP_SEXO | CHAR | N |  |
| 7 | DT_NASCIMENTO | DATE | Y |  |
| 8 | DS_MATRICULA | VARCHAR2 | Y |  |
| 9 | IDADE | NUMBER | Y |  |
| 10 | NR_PRONTUARIO_HOSPITALAR | VARCHAR2 | Y |  |
| 11 | CD_PACIENTE_HIS | VARCHAR2 | Y |  |
| 12 | NM_MAE | VARCHAR2 | Y |  |
| 13 | NM_PAI | VARCHAR2 | Y |  |
| 14 | NR_GUIA_HIS | VARCHAR2 | Y |  |
| 15 | NM_CONVENIO_UNIDADE | VARCHAR2 | Y |  |
| 16 | ID_MEDICO_EXECUTANTE | NUMBER | Y |  |
| 17 | NM_MEDICO_EXECUTANTE | VARCHAR2 | Y |  |
| 18 | DS_CRM_EXECUTANTE | VARCHAR2 | Y |  |
| 19 | ID_MEDICO_REVISOR | NUMBER | Y |  |
| 20 | NM_MEDICO_REVISOR | VARCHAR2 | Y |  |
| 21 | DS_CRM_REVISOR | VARCHAR2 | Y |  |
| 22 | NM_SALA | VARCHAR2 | Y |  |
| 23 | DT_CADASTRO | DATE | N |  |
| 24 | NM_EXAME | VARCHAR2 | Y |  |
| 25 | CD_CBHPM | VARCHAR2 | Y |  |
| 26 | DT_DUM | DATE | Y |  |
| 27 | CD_ATENDIMENTO_HIS | VARCHAR2 | Y |  |
| 28 | CD_PEDIDO_HIS | VARCHAR2 | Y |  |
| 29 | CD_ITEM_PEDIDO_HIS | VARCHAR2 | Y |  |
| 30 | CD_STATUS | CHAR | Y |  |
| 31 | DS_STATUS | VARCHAR2 | Y |  |
| 32 | NM_SETOR | VARCHAR2 | Y |  |
| 33 | NR_ALTURA | NUMBER | Y |  |
| 34 | NR_PESO | NUMBER | Y |  |
| 35 | DT_PEDIDO | DATE | Y |  |
| 36 | DT_IMPRESSO | DATE | Y |  |
| 37 | DT_ASSINADO | DATE | Y |  |
| 38 | DT_REVISADO | DATE | Y |  |
| 39 | DT_ENTREGA | DATE | Y |  |
| 40 | XT_IMAGEM | VARCHAR2 | Y |  |
| 41 | NM_ACOMODACAO_HIS | VARCHAR2 | Y |  |
| 42 | NM_LOCAL_ENTREGA_HIS | VARCHAR2 | Y |  |
| 43 | NM_INDICACAO_HIS | VARCHAR2 | Y |  |
| 44 | DS_LEITO_HIS | VARCHAR2 | Y |  |
| 45 | CD_MODALIDADE | VARCHAR2 | Y |  |
| 46 | PACIENTE_IDADE_EXTENSO | VARCHAR2 | Y |  |
| 47 | NM_SETOR_EXECUTANTE | VARCHAR2 | Y |  |
| 48 | DT_CERTIFICADO | DATE | Y |  |
| 49 | NR_CPF_CERT_DIGITAL | VARCHAR2 | Y |  |
| 50 | NM_CERT_DIGITAL | VARCHAR2 | Y |  |
| 51 | NM_FORNECEDOR_CERT_DIGITAL | VARCHAR2 | Y |  |
| 52 | NR_CNS | VARCHAR2 | Y |  |
| 53 | DS_CPF | VARCHAR2 | Y |  |
| 54 | DS_RG | VARCHAR2 | Y |  |
| 55 | DS_ORGAO | VARCHAR2 | Y |  |
| 56 | NM_SOCIAL_PACIENTE | VARCHAR2 | Y |  |
| 57 | DS_ESPECIALIDADE_EXECUTANTE | VARCHAR2 | Y |  |
| 58 | RQE_MSOLICITANTE | NUMBER | Y |  |
| 59 | RQE_MEXECUTANTE | NUMBER | Y |  |
| 60 | RQE_MREVISOR | NUMBER | Y |  |
| 61 | DS_ESPECIALIDADE_REVISOR | VARCHAR2 | Y |  |
| 62 | DT_COLETA_HIS | DATE | Y |  |
| 63 | DT_FORNECEDOR_CERT_DIGITAL | DATE | Y |  |
| 64 | ID_EXECUTANTE_ANTERIOR | NUMBER | Y |  |
| 65 | NM_MEDICO_EXECUTANTE_ANT | VARCHAR2 | Y |  |
| 66 | DS_CRM_EXECUTANTE_ANT | VARCHAR2 | Y |  |
| 67 | TP_SEXO_EXECUTANTE_ANT | VARCHAR2 | Y |  |
| 68 | DS_ESPECIALIDADE_EXEC_ANT | VARCHAR2 | Y |  |
| 69 | ID_REVISOR_ANTERIOR | NUMBER | Y |  |
| 70 | NM_MEDICO_REVISOR_ANT | VARCHAR2 | Y |  |
| 71 | DS_CRM_REVISOR_ANT | VARCHAR2 | Y |  |
| 72 | TP_SEXO_REVISOR_ANT | VARCHAR2 | Y |  |
| 73 | DS_ESPECIALIDADE_REVISOR_ANT | VARCHAR2 | Y |  |

---

## IDCE.RS_VW_LEGADO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ACCESSIONNUMBER | VARCHAR2 | Y |  |
| 2 | STUDY_UID | VARCHAR2 | N |  |
| 3 | STUDYTIME | DATE | N |  |
| 4 | PATIENTID | VARCHAR2 | N |  |
| 5 | PATIENTNAME_DICOM | VARCHAR2 | Y |  |
| 6 | DATEOFBIRTH | DATE | Y |  |
| 7 | SEX | VARCHAR2 | Y |  |
| 8 | STUDYDESCRIPTION | VARCHAR2 | Y |  |
| 9 | DT_REVISADO | DATE | Y |  |
| 10 | NM_REVISOR | VARCHAR2 | Y |  |
| 11 | ID_LAUDO | NUMBER | N |  |
| 12 | DS_LAUDO | CLOB | Y |  |

---

## IDCE.RS_VW_MAPA_CALOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DS_TAG_NAME | VARCHAR2 | N |  |
| 2 | DS_TIPO_HISTORICO | VARCHAR2 | Y |  |
| 3 | ID_EXAME_PEDIDO | NUMBER | Y |  |
| 4 | CD_PEDIDO_HIS | VARCHAR2 | Y |  |
| 5 | CD_ITEM_PEDIDO_HIS | VARCHAR2 | Y |  |
| 6 | DT_PEDIDO | DATE | Y |  |
| 7 | NM_MEDICO_EXECUTANTE | VARCHAR2 | Y |  |
| 8 | NM_MEDICO_REVISOR | VARCHAR2 | Y |  |
| 9 | NR_PRONTUARIO_HOSPITALAR | VARCHAR2 | Y |  |
| 10 | NM_PACIENTE | VARCHAR2 | Y |  |
| 11 | NM_PROCEDIMENTO | VARCHAR2 | Y |  |
| 12 | NM_EXAME_UNIDADE | VARCHAR2 | Y |  |

---

## IDCE.RS_VW_MEDICO_UNIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_MEDICO_UNIDADE | NUMBER | N |  |
| 2 | CD_MEDICO_HIS | VARCHAR2 | Y |  |
| 3 | ID_STATUS_ORIGEM | NUMBER | Y |  |
| 4 | ID_UNIDADE | NUMBER | Y |  |
| 5 | ID_CONSELHO | NUMBER | Y |  |
| 6 | DS_CRM | VARCHAR2 | Y |  |
| 7 | ID_USUARIO_MEDICO | NUMBER | Y |  |
| 8 | SN_ASSINATURA_DIGITALIZADA | CHAR | Y |  |
| 9 | SN_ASSINATURA_DIGITAL | CHAR | Y |  |
| 10 | SN_REVISAO_AUTOMATICA | CHAR | Y |  |
| 11 | SN_MEDICO_REVISOR | CHAR | Y |  |
| 12 | SN_SENHA_ADMINISTRADOR | CHAR | Y |  |
| 13 | SN_FILME | CHAR | Y |  |
| 14 | ID_USUARIO | NUMBER | Y |  |
| 15 | DT_CADASTRO | DATE | N |  |
| 16 | DT_ALTERACAO | DATE | Y |  |
| 17 | NM_MEDICO | VARCHAR2 | Y |  |
| 18 | NM_REDUZIDO_MEDICO | VARCHAR2 | Y |  |
| 19 | DT_NASCIMENTO | DATE | Y |  |
| 20 | TP_SEXO | VARCHAR2 | Y |  |
| 21 | DS_ENDERECO | VARCHAR2 | Y |  |
| 22 | DS_CPF_CNPJ | VARCHAR2 | Y |  |
| 23 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 24 | DS_BAIRRO | VARCHAR2 | Y |  |
| 25 | DS_CIDADE | VARCHAR2 | Y |  |
| 26 | DS_UF | VARCHAR2 | Y |  |
| 27 | DS_CEP | VARCHAR2 | Y |  |
| 28 | DS_TELEFONE | VARCHAR2 | Y |  |
| 29 | DS_FAX | VARCHAR2 | Y |  |
| 30 | DS_EMAIL | VARCHAR2 | Y |  |
| 31 | DS_ESPECIALIDADES | VARCHAR2 | Y |  |
| 32 | NM_CONSELHO | VARCHAR2 | Y |  |
| 33 | STATUS | VARCHAR2 | Y |  |
| 34 | CD_UNIDADE_HIS | VARCHAR2 | Y |  |

---

## IDCE.RS_VW_MONITOR_ATIVIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DT_CADASTRO | DATE | N |  |
| 2 | DT_LAUDADO | DATE | Y |  |
| 3 | DT_REVISADO | DATE | Y |  |
| 4 | DT_ASSINADO | DATE | Y |  |
| 5 | DT_IMPRESSO | DATE | Y |  |
| 6 | DT_DIGITADO | DATE | Y |  |
| 7 | SN_PENDENTE | CHAR | Y |  |
| 8 | ID_PROCEDIMENTO_UNIDADE | NUMBER | N |  |

---

## IDCE.RS_VW_NUMERO_CDR_ANO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | LAU_ID | NUMBER | N |  |
| 2 | ANO | NUMBER | Y |  |
| 3 | MES | NUMBER | Y |  |

---

## IDCE.RS_VW_PACIENTE_UNIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_PACIENTE | NUMBER | N |  |
| 2 | ID_PACIENTE_CONSOLIDADO | NUMBER | Y |  |
| 3 | NM_PACIENTE | VARCHAR2 | Y |  |
| 4 | DT_NASCIMENTO | DATE | Y |  |
| 5 | TP_SEXO | CHAR | N |  |
| 6 | DS_ENDERECO | VARCHAR2 | Y |  |
| 7 | DS_BAIRRO | VARCHAR2 | Y |  |
| 8 | DS_CIDADE | VARCHAR2 | Y |  |
| 9 | DS_UF | VARCHAR2 | Y |  |
| 10 | DS_CEP | VARCHAR2 | Y |  |
| 11 | DS_TELEFONE | VARCHAR2 | Y |  |
| 12 | DS_FAX | VARCHAR2 | Y |  |
| 13 | DS_CPF | VARCHAR2 | Y |  |
| 14 | DS_EMAIL | VARCHAR2 | Y |  |
| 15 | DS_RG | VARCHAR2 | Y |  |
| 16 | DS_PACIENTE | VARCHAR2 | Y |  |
| 17 | MATRICULA | VARCHAR2 | Y |  |
| 18 | ALTURA | NUMBER | Y |  |
| 19 | PESO | NUMBER | Y |  |
| 20 | SN_SMS | CHAR | Y |  |
| 21 | SN_EMAIL | CHAR | Y |  |
| 22 | ID_PACIENTE_UNIDADE | NUMBER | N |  |
| 23 | ID_CONVENIO_PADRAO | NUMBER | Y |  |
| 24 | ID_UNIDADE | NUMBER | Y |  |
| 25 | NR_PRONTUARIO_HOSPITALAR | VARCHAR2 | Y |  |
| 26 | CD_PACIENTE_HIS | VARCHAR2 | Y |  |
| 27 | DT_CADASTRO | DATE | Y |  |
| 28 | DT_ALTERACAO | DATE | Y |  |
| 29 | ID_USUARIO | NUMBER | Y |  |
| 30 | NM_CONVENIO_UNIDADE | VARCHAR2 | Y |  |
| 31 | CD_UNIDADE_HIS | VARCHAR2 | Y |  |
| 32 | DT_TERMO_ACEITE | DATE | Y |  |

---

## IDCE.RS_VW_PAINEL_INFO_LAUDO_REMOTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 2 | DT_PEDIDO | DATE | Y |  |
| 3 | CD_ITEM_PEDIDO_HIS | VARCHAR2 | Y |  |
| 4 | DT_DUM | DATE | Y |  |
| 5 | DT_CERTIFICADO | DATE | Y |  |
| 6 | NM_UNIDADE | VARCHAR2 | Y |  |
| 7 | NM_PACIENTE | VARCHAR2 | Y |  |
| 8 | DT_NASCIMENTO | DATE | Y |  |
| 9 | NM_SOCIAL_PACIENTE | VARCHAR2 | Y |  |
| 10 | TP_SEXO | CHAR | N |  |
| 11 | NR_PRONTUARIO_HOSPITALAR | VARCHAR2 | Y |  |
| 12 | NM_MEDICO_SOLICITANTE | VARCHAR2 | Y |  |
| 13 | NM_EXAME_UNIDADE | VARCHAR2 | Y |  |
| 14 | ID_RISCO | NUMBER | Y |  |
| 15 | TP_STATUS | VARCHAR2 | Y |  |
| 16 | DT_PREVISAO_ENTREGA | DATE | Y |  |
| 17 | CD_ATENDIMENTO_HIS | VARCHAR2 | Y |  |
| 18 | CD_PEDIDO_HIS | VARCHAR2 | Y |  |
| 19 | DS_STATUS_CARTORIO | VARCHAR2 | Y |  |
| 20 | DT_STUDY | DATE | Y |  |
| 21 | ID_PACIENTE_CONSOLIDADO | NUMBER | N |  |
| 22 | IMAGEM | CHAR | Y |  |
| 23 | ID_UNIDADE | NUMBER | N |  |
| 24 | ID_MEDICO_REVISOR | NUMBER | Y |  |
| 25 | ID_MEDICO_EXECUTANTE | NUMBER | Y |  |

---

## IDCE.RS_VW_PEDIDO_EXAME_CD

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NM_PACIENTE | VARCHAR2 | Y |  |
| 2 | NM_MEDICO_SOLICITANTE | VARCHAR2 | Y |  |
| 3 | NM_CONVENIO_UNIDADE | VARCHAR2 | Y |  |
| 4 | NM_SETOR | VARCHAR2 | Y |  |
| 5 | NR_PRONTUARIO_HOSPITALAR | VARCHAR2 | Y |  |
| 6 | DT_NASCIMENTO | DATE | Y |  |
| 7 | ID_UNIDADE | NUMBER | Y |  |
| 8 | CD_ITEM_PEDIDO_HIS | VARCHAR2 | Y |  |
| 9 | CD_ATENDIMENTO_HIS | VARCHAR2 | Y |  |
| 10 | CD_PEDIDO_HIS | VARCHAR2 | Y |  |
| 11 | ID_CD | NUMBER | Y |  |
| 12 | DT_CADASTRO | DATE | Y |  |
| 13 | DT_GRAVACAO | DATE | Y |  |
| 14 | ID_PACIENTE_UNIDADE | NUMBER | Y |  |
| 15 | ID_ORIGEM_ATENDIMENTO | NUMBER | Y |  |
| 16 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 17 | DT_PEDIDO | DATE | N |  |
| 18 | DT_ASSINADO | DATE | Y |  |
| 19 | DT_IMPRESSO | DATE | Y |  |
| 20 | DT_LAUDADO | DATE | Y |  |
| 21 | DT_REVISADO | DATE | Y |  |
| 22 | DT_STUDY | DATE | Y |  |
| 23 | NM_EXAME_UNIDADE | VARCHAR2 | Y |  |
| 24 | NM_PROCEDIMENTO | VARCHAR2 | Y |  |
| 25 | NM_UNIDADE | VARCHAR2 | Y |  |
| 26 | SN_PENDENTE | CHAR | Y |  |
| 27 | DT_DIGITADO | DATE | Y |  |
| 28 | SN_STUDY_PED | CHAR | N |  |
| 29 | DT_ENTREGA | DATE | Y |  |
| 30 | DT_FINALIZACAO | DATE | Y |  |
| 31 | DS_CRM_SOLICITANTE | VARCHAR2 | Y |  |
| 32 | NM_MEDICO_EXECUTANTE | VARCHAR2 | Y |  |
| 33 | DS_CRM_EXECUTANTE | VARCHAR2 | Y |  |
| 34 | NM_MEDICO_REVISOR | VARCHAR2 | Y |  |
| 35 | DS_CRM_REVISOR | VARCHAR2 | Y |  |
| 36 | ID_PROCEDIMENTO_UNIDADE | NUMBER | N |  |
| 37 | CD_MODALIDADE | VARCHAR2 | Y |  |
| 38 | ID_PROCEDIMENTO | NUMBER | N |  |
| 39 | ID_PACIENTE | NUMBER | Y |  |
| 40 | NM_SOCIAL_PACIENTE | VARCHAR2 | Y |  |
| 41 | SN_ENTREGA_IMG_S_L_ASSINADO | CHAR | Y |  |
| 42 | ID_UNIDADE_PACS | NUMBER | Y |  |

---

## IDCE.RS_VW_PRAZO_ENTREGA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME_UNIDADE | NUMBER | N |  |
| 2 | ID_ORIGEM_ATENDIMENTO | NUMBER | N |  |
| 3 | NR_PRAZO_PROC | NUMBER | Y |  |
| 4 | NR_PRAZO_EXA | NUMBER | Y |  |
| 5 | PROC_TP_FIM_SEMANA | CHAR | Y |  |
| 6 | EXA_TP_FIM_SEMANA | CHAR | Y |  |
| 7 | NR_PRAZO | NUMBER | Y |  |
| 8 | TP_FIM_SEMANA | CHAR | Y |  |

---

## IDCE.RS_VW_PRODUTIVIDADE_MEDICO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME_PEDIDO | NUMBER | Y |  |
| 2 | DT_CADASTRO | DATE | Y |  |
| 3 | ID_UNIDADE | NUMBER | Y |  |
| 4 | ID_PROCEDIMENTO | NUMBER | Y |  |
| 5 | NM_PROCEDIMENTO | VARCHAR2 | Y |  |
| 6 | ID_MEDICO_UNIDADE | NUMBER | Y |  |
| 7 | NM_MEDICO | VARCHAR2 | Y |  |
| 8 | ID_USUARIO | NUMBER | Y |  |
| 9 | NM_USUARIO | VARCHAR2 | Y |  |
| 10 | QT_LAUDADO | NUMBER | Y |  |
| 11 | QT_REVISADO | NUMBER | Y |  |
| 12 | ID_PROCEDIMENTO_UNIDADE | NUMBER | Y |  |

---

## IDCE.RS_VW_PRODUTO_UNIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_PRODUTO | NUMBER | N |  |
| 2 | DS_PRODUTO | VARCHAR2 | N |  |
| 3 | DS_ESPECIFICACAO | VARCHAR2 | Y |  |
| 4 | DS_PRODUTO_RESUMIDO | VARCHAR2 | N |  |
| 5 | SN_MEDICAMENTO | CHAR | N |  |
| 6 | ID_PRODUTO_UNIDADE | NUMBER | N |  |
| 7 | ID_UNIDADE | NUMBER | N |  |
| 8 | CD_PRODUTO_HIS | VARCHAR2 | Y |  |
| 9 | ID_USUARIO | NUMBER | N |  |
| 10 | DT_CADASTRO | DATE | N |  |
| 11 | DT_ALTERACAO | DATE | N |  |

---

## IDCE.RS_VW_PROTOCOLO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_PROTOCOLO | NUMBER | N |  |
| 2 | ID_EXAME_PEDIDO | NUMBER | Y |  |
| 3 | DS_RESPONSAVEL | VARCHAR2 | Y |  |
| 4 | DT_ENTREGA | DATE | Y |  |
| 5 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 6 | DT_CADASTRO | DATE | N |  |
| 7 | DT_ALTERACAO | DATE | Y |  |
| 8 | ID_USUARIO | NUMBER | Y |  |
| 9 | NM_USUARIO | VARCHAR2 | Y |  |
| 10 | NM_PACIENTE | VARCHAR2 | Y |  |
| 11 | NM_EXAME_UNIDADE | VARCHAR2 | Y |  |
| 12 | CD_ATENDIMENTO_HIS | VARCHAR2 | Y |  |
| 13 | NM_UNIDADE | VARCHAR2 | Y |  |
| 14 | ID_UNIDADE | NUMBER | Y |  |

---

## IDCE.RS_VW_REMOTE_CONTROLE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 2 | ID_EXAME_PEDIDO_PAI | NUMBER | Y |  |
| 3 | ID_PEDIDO_EXAME | NUMBER | N |  |
| 4 | ID_PACIENTE | NUMBER | N |  |
| 5 | ID_PACIENTE_CONSOLIDADO | NUMBER | N |  |
| 6 | DT_NASCIMENTO | DATE | Y |  |
| 7 | NR_PRONTUARIO_HOSPITALAR | VARCHAR2 | Y |  |
| 8 | CD_PACIENTE_HIS | VARCHAR2 | Y |  |
| 9 | ID_UNIDADE | NUMBER | N |  |
| 10 | ID_CONVENIO | NUMBER | Y |  |
| 11 | ID_MEDICO_SOLICITANTE | NUMBER | Y |  |
| 12 | DS_CRM_SOLICITANTE | VARCHAR2 | Y |  |
| 13 | ID_MEDICO_EXECUTANTE | NUMBER | Y |  |
| 14 | DS_CRM_EXECUTANTE | VARCHAR2 | Y |  |
| 15 | ID_MEDICO_REVISOR | NUMBER | Y |  |
| 16 | DS_CRM_REVISOR | VARCHAR2 | Y |  |
| 17 | ID_SALA | NUMBER | Y |  |
| 18 | DT_CADASTRO | DATE | N |  |
| 19 | DT_ALTERACAO | DATE | Y |  |
| 20 | ID_EXAME_UNIDADE | NUMBER | N |  |
| 21 | ID_EXAME | NUMBER | N |  |
| 22 | DT_DUM | DATE | Y |  |
| 23 | CD_ATENDIMENTO_HIS | VARCHAR2 | Y |  |
| 24 | CD_PEDIDO_HIS | VARCHAR2 | Y |  |
| 25 | CD_ITEM_PEDIDO_HIS | VARCHAR2 | Y |  |
| 26 | CD_STATUS_IA | NUMBER | Y |  |
| 27 | DS_STATUS | VARCHAR2 | Y |  |
| 28 | DT_ENTRADA_EXAME | DATE | Y |  |
| 29 | DT_SAIDA_EXAME | DATE | Y |  |
| 30 | SN_PENDENTE | CHAR | Y |  |
| 31 | SN_PROVISORIO | CHAR | N |  |
| 32 | SN_TERCEIRA_OPINIAO | CHAR | Y |  |
| 33 | DT_FINALIZACAO | DATE | Y |  |
| 34 | DT_LAUDADO | DATE | Y |  |
| 35 | DT_PEDIDO | DATE | Y |  |
| 36 | DT_IMPRESSO | DATE | Y |  |
| 37 | DT_ASSINADO | DATE | Y |  |
| 38 | DT_DIGITADO | DATE | Y |  |
| 39 | DT_DITADO | DATE | Y |  |
| 40 | DT_REVISADO | DATE | Y |  |
| 41 | DT_ENTREGA | DATE | Y |  |
| 42 | SN_VISUALIZADO_PORTAL | CHAR | N |  |
| 43 | ID_PROCEDIMENTO_UNIDADE | NUMBER | N |  |
| 44 | ID_PROCEDIMENTO | NUMBER | N |  |
| 45 | DT_REFAZER | DATE | Y |  |
| 46 | DT_ULT_SECUNDARIO | DATE | Y |  |
| 47 | DT_STUDY | DATE | Y |  |
| 48 | SN_JUSTIFICATIVA_LAUDO | CHAR | Y |  |
| 49 | ID_CLASSIFICACAO_RISCO | NUMBER | Y |  |
| 50 | ID_SETOR_EXECUTANTE | NUMBER | Y |  |
| 51 | CD_TIPO_VIEWER | NUMBER | Y |  |
| 52 | CD_STUDY_UID | VARCHAR2 | Y |  |
| 53 | SN_STUDY_PED | CHAR | N |  |
| 54 | ID_REPORT | NUMBER | Y |  |
| 55 | ID_TIPO_PRIORIDADE | NUMBER | Y |  |
| 56 | CD_MODALIDADE | VARCHAR2 | Y |  |
| 57 | ID_USUARIO_MARCAR_CERTIFICADO | NUMBER | Y |  |
| 58 | DT_CERTIFICADO | DATE | Y |  |
| 59 | SN_DISTRIBUICAO_EXECUTANTE | CHAR | N |  |
| 60 | SN_DISTRIBUICAO_REVISOR | CHAR | N |  |
| 61 | DT_NAO_CONFORMIDADE | DATE | Y |  |
| 62 | DT_ATUALIZACAO_ERRATA | DATE | Y |  |
| 63 | ID_DOCUMENTO_CARTORIO | NUMBER | Y |  |
| 64 | ID_UNIDADE_EXECUTANTE | NUMBER | N |  |
| 65 | DT_NAO_CONFORMIDADE_RESOLVIDA | DATE | Y |  |
| 66 | DT_COLETA_HIS | DATE | Y |  |
| 67 | SN_EXIGIR_FINALIZACAO_EXAME | CHAR | N |  |
| 68 | DT_TRANSFERENCIA_UNIDADE | DATE | Y |  |
| 69 | NR_DIAS_EXPIRAR_ACAO_LAUDAR | NUMBER | N |  |
| 70 | SN_EXECUTANTE_REVISOR | CHAR | Y |  |
| 71 | ID_ORIGEM_ATENDIMENTO | NUMBER | Y |  |
| 72 | NR_PRAZO | NUMBER | Y |  |
| 73 | DT_PREVISAO_ENTREGA | DATE | Y |  |
| 74 | SN_REGRA_DISTRIBUICAO | CHAR | N |  |
| 75 | ID_USUARIO_ONLINE | NUMBER | Y |  |
| 76 | NM_USUARIO_ONLINE | VARCHAR2 | Y |  |
| 77 | ID_JUSTIFICATIVA_IMAGEM | NUMBER | Y |  |
| 78 | DS_JUSTIFICATIVA_IMAGEM | VARCHAR2 | Y |  |
| 79 | ID_USU_NAO_CONFORMIDADE | NUMBER | Y |  |
| 80 | DS_NAO_CONFORMIDADE | VARCHAR2 | Y |  |
| 81 | ID_JUSTIFICATIVA | NUMBER | Y |  |
| 82 | DS_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 83 | ID_USUARIO_PARECER | NUMBER | Y |  |
| 84 | ID_USUARIO_ALTERACAO_PARECER | NUMBER | Y |  |
| 85 | DT_CADASTRO_PARECER | DATE | Y |  |
| 86 | DT_ACEITE_PARECER | DATE | Y |  |
| 87 | DT_ACEITE_LAUDO | DATE | Y |  |
| 88 | SN_EXIGIR_JUST_LAU_SEM_IMG | CHAR | N |  |
| 89 | SN_EXIGIR_PARECER | CHAR | Y |  |
| 90 | SN_EXIGIR_PREENCHIMENTO_BIRADS | CHAR | Y |  |
| 91 | SN_REVISAO_AUTOMATICA | CHAR | Y |  |
| 92 | SN_EXIGIR_BIRADS | CHAR | Y |  |
| 93 | SN_EXIGIR_LIRADS | CHAR | Y |  |
| 94 | SN_EXIGIR_PIRADS | CHAR | N |  |
| 95 | SN_EXIGIR_TIRADS | CHAR | Y |  |
| 96 | SN_BLOQUEIO_CANCELAMENTO | CHAR | Y |  |
| 97 | TEMPO_BLOQUEIO_CANCELAMENTO | NUMBER | Y |  |
| 98 | SN_EXIGIR_AUDIOMETRIA | CHAR | N |  |
| 99 | SN_EXIGIR_IMITANCIOMETRIA | CHAR | N |  |
| 100 | SN_JUST_LAUDAR_DENTRO_SLA | CHAR | Y |  |
| 101 | DT_JUST_SLA | DATE | Y |  |
| 102 | SN_EXIGIR_PIRADS_EX | CHAR | Y |  |
| 103 | SN_EXIGIR_BIRADS_EX | CHAR | Y |  |
| 104 | SN_EXIGIR_PREENC_BIRADS_EX | CHAR | Y |  |
| 105 | SN_EXIGIR_LIRADS_EX | CHAR | Y |  |
| 106 | SN_EXIGIR_TIRADS_EX | CHAR | Y |  |
| 107 | SN_BLOQUEIO_CONTA_FECHADA | CHAR | N |  |
| 108 | SN_USAR_LAUDO_OIT | VARCHAR2 | Y |  |
| 109 | SN_EXIGIR_FLEBOGRAMA | VARCHAR2 | Y |  |

---

## IDCE.RS_VW_TIPO_EXAME_UNIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_TIPO_EXAME | NUMBER | N |  |
| 2 | NM_TIPO_EXAME | VARCHAR2 | Y |  |
| 3 | DS_TIPO_EXAME | VARCHAR2 | Y |  |
| 4 | ID_PROCEDIMENTO_UNIDADE | NUMBER | N |  |
| 5 | ID_PROCEDIMENTO | NUMBER | N |  |
| 6 | DT_CADASTRO | DATE | N |  |
| 7 | DT_ALTERACAO | DATE | Y |  |
| 8 | ID_USUARIO | NUMBER | Y |  |
| 9 | NM_PROCEDIMENTO | VARCHAR2 | Y |  |
| 10 | DS_PROCEDIMENTO | VARCHAR2 | Y |  |
| 11 | CD_PROCEDIMENTO_HIS | VARCHAR2 | Y |  |
| 12 | DS_LAYOUT_IMPRESSAO | VARCHAR2 | Y |  |
| 13 | ID_MEDICO_PADRAO | NUMBER | Y |  |
| 14 | ID_SALA | NUMBER | Y |  |
| 15 | SN_REVISAO_AUTOMATICA | CHAR | Y |  |
| 16 | SN_DICOM | CHAR | Y |  |
| 17 | SN_EXECUTANTE_REVISOR | CHAR | Y |  |
| 18 | SN_LAUDO_LOTE_PENDENTE | CHAR | Y |  |
| 19 | SN_ENTREGA_LAUDO_CD | CHAR | Y |  |
| 20 | SN_IMPRESSAO_LAUDO_ENTREGA | CHAR | Y |  |
| 21 | SN_LIBERAR_LOTE_LAUDO_REV_PEND | CHAR | Y |  |
| 22 | SN_TEXTO_PADRAO_AUTOMATICO | CHAR | Y |  |
| 23 | SN_JUSTIFICATIVA_LAUDO | CHAR | Y |  |
| 24 | SN_ENDOSCOPIA | CHAR | Y |  |
| 25 | ID_UNIDADE | NUMBER | Y |  |
| 26 | CD_MODALIDADE | VARCHAR2 | Y |  |
| 27 | VL_PROCEDIMENTO | NUMBER | Y |  |

---

## IDCE.RS_VW_ULTIMOS_LAUDOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 2 | DT_CADASTRO | DATE | N |  |
| 3 | NM_EXAME_UNIDADE | VARCHAR2 | Y |  |
| 4 | ID_PACIENTE | NUMBER | N |  |
| 5 | ID_PACIENTE_UNIDADE | NUMBER | N |  |
| 6 | NM_PACIENTE | VARCHAR2 | Y |  |
| 7 | DT_REVISADO | DATE | Y |  |
| 8 | DS_LAUDO_RTF | CLOB | Y |  |
| 9 | DS_LAUDO_HTML | CLOB | Y |  |
| 10 | CD_ATENDIMENTO_HIS | VARCHAR2 | Y |  |
| 11 | CD_PEDIDO_HIS | VARCHAR2 | Y |  |
| 12 | NM_UNIDADE | VARCHAR2 | Y |  |
| 13 | NM_PROCEDIMENTO | VARCHAR2 | Y |  |
| 14 | NM_MEDICO_SOLICITANTE | VARCHAR2 | Y |  |
| 15 | NM_MEDICO_EXECUTANTE | VARCHAR2 | Y |  |
| 16 | NM_MEDICO_REVISOR | VARCHAR2 | Y |  |
| 17 | ID_PROCEDIMENTO | NUMBER | N |  |
| 18 | DT_DITADO | DATE | Y |  |
| 19 | DT_DIGITADO | DATE | Y |  |
| 20 | DT_LAUDADO | DATE | Y |  |
| 21 | DT_ASSINADO | DATE | Y |  |
| 22 | DT_IMPRESSO | DATE | Y |  |
| 23 | DT_FINALIZACAO | DATE | Y |  |
| 24 | DT_ENTREGA | DATE | Y |  |
| 25 | CD_ITEM_PEDIDO_HIS | VARCHAR2 | Y |  |
| 26 | DT_NASCIMENTO | DATE | Y |  |
| 27 | NR_PRONTUARIO_HOSPITALAR | VARCHAR2 | Y |  |
| 28 | SN_DISPONIVEL | CHAR | Y |  |
| 29 | CD_STUDY_UID | CHAR | Y |  |
| 30 | CD_TIPO_VIEWER | NUMBER | Y |  |
| 31 | ID_UNIDADE | NUMBER | Y |  |
| 32 | ID_PACIENTE_CONSOLIDADO | NUMBER | N |  |
| 33 | ID_PROCEDIMENTO_UNIDADE | NUMBER | N |  |
| 34 | DT_STUDY | DATE | Y |  |
| 35 | SN_STUDY_PED | CHAR | N |  |

---

## IDCE.RS_VW_WORKLAUWEB

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PEDIDO_HIS | VARCHAR2 | Y |  |
| 2 | CD_ITEM_PEDIDO_HIS | VARCHAR2 | Y |  |
| 3 | NR_PRONTUARIO_HOSPITALAR | VARCHAR2 | Y |  |
| 4 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 5 | NM_EXAME | VARCHAR2 | Y |  |
| 6 | NM_SETOR_EXECUTANTE | VARCHAR2 | N |  |
| 7 | DT_PEDIDO | DATE | Y |  |
| 8 | NM_PACIENTE | VARCHAR2 | Y |  |
| 9 | TP_SEXO | CHAR | N |  |
| 10 | DT_CADASTRO | DATE | N |  |
| 11 | CD_MODALIDADE | VARCHAR2 | Y |  |
| 12 | DT_STUDY | DATE | Y |  |
| 13 | IMAGEM | CHAR | Y |  |
| 14 | SLA | DATE | Y |  |
| 15 | ID_UNIDADE | NUMBER | N |  |
| 16 | TP_STATUS | VARCHAR2 | Y |  |
| 17 | DT_IMPRESSO | DATE | Y |  |
| 18 | DT_DITADO | DATE | Y |  |
| 19 | DT_CERTIFICADO | DATE | Y |  |
| 20 | NR_ANEXOS | NUMBER | Y |  |
| 21 | NR_COMENTARIO | NUMBER | Y |  |
| 22 | NM_UNIDADE | VARCHAR2 | Y |  |
| 23 | DT_LAUDADO | DATE | Y |  |
| 24 | DT_ASSINADO | DATE | Y |  |
| 25 | SN_ATRASADO | CHAR | Y |  |
| 26 | DS_STATUS_CARTORIO | VARCHAR2 | Y |  |
| 27 | NM_EXAME_UNIDADE | VARCHAR2 | Y |  |
| 28 | TP_CRITICIDADE | VARCHAR2 | N |  |
| 29 | NM_SOCIAL_PACIENTE | VARCHAR2 | Y |  |
| 30 | CD_ATENDIMENTO_HIS | VARCHAR2 | Y |  |
| 31 | ID_PACIENTE_CONSOLIDADO | NUMBER | N |  |
| 32 | DT_NAO_CONFORMIDADE | DATE | Y |  |
| 33 | DT_NAO_CONFORMIDADE_RESOLVIDA | DATE | Y |  |
| 34 | SN_PROVISORIO | CHAR | N |  |
| 35 | DT_DIGITADO | DATE | Y |  |
| 36 | DT_ENTREGA | DATE | Y |  |
| 37 | DT_REVISADO | DATE | Y |  |
| 38 | SN_PENDENTE | CHAR | Y |  |
| 39 | DS_LAUDO_TXT | CLOB | Y |  |
| 40 | DT_FINALIZACAO | DATE | Y |  |
| 41 | SN_TERCEIRA_OPINIAO | CHAR | Y |  |
| 42 | DS_NAO_CONFORMIDADE | VARCHAR2 | Y |  |
| 43 | DS_INCONFORMIDADE | VARCHAR2 | Y |  |
| 44 | NM_MEDICO_EXECUTANTE | VARCHAR2 | Y |  |
| 45 | NM_MEDICO_REVISOR | VARCHAR2 | Y |  |
| 46 | NM_MEDICO_SOLICITANTE | VARCHAR2 | Y |  |
| 47 | REVISADO | VARCHAR2 | Y |  |
| 48 | LAUDADO | VARCHAR2 | Y |  |
| 49 | INCONFORMIDADE | VARCHAR2 | Y |  |
| 50 | SN_STUDY_PED | CHAR | N |  |
| 51 | ID_SETOR_EXECUTANTE | NUMBER | Y |  |
| 52 | ID_ORIGEM_ATENDIMENTO | NUMBER | Y |  |
| 53 | DS_STATUS | VARCHAR2 | Y |  |
| 54 | ID_MEDICO_EXECUTANTE | NUMBER | Y |  |
| 55 | ID_MEDICO_REVISOR | NUMBER | Y |  |
| 56 | ID_MEDICO_SOLICITANTE | NUMBER | Y |  |
| 57 | ID_PROCEDIMENTO | NUMBER | N |  |
| 58 | NM_PROCEDIMENTO | VARCHAR2 | Y |  |
| 59 | NM_CONVENIO_UNIDADE | VARCHAR2 | Y |  |
| 60 | ID_CONVENIO | NUMBER | Y |  |
| 61 | ID_SETOR_SOLICITANTE | NUMBER | Y |  |
| 62 | NM_SETOR_SOLICITANTE | VARCHAR2 | Y |  |
| 63 | ID_EXAME | NUMBER | N |  |

---

## IDCE.RS_WPD_PEDIDOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_PEDIDO | NUMBER | N |  |
| 2 | TP_INTEGRACAO | VARCHAR2 | Y |  |
| 3 | DS_ERRO | VARCHAR2 | Y |  |
| 4 | DT_INTEGRACAO | DATE | Y |  |
| 5 | COD_UNI | VARCHAR2 | Y |  |
| 6 | COD_PAC | VARCHAR2 | Y |  |
| 7 | COD_PRT | VARCHAR2 | Y |  |
| 8 | NOME_PAC | VARCHAR2 | Y |  |
| 9 | DATANASCTO_PAC | DATE | Y |  |
| 10 | ALTURA_PAC | NUMBER | Y |  |
| 11 | PESO_PAC | NUMBER | Y |  |
| 12 | SEXO_PAC | CHAR | Y |  |
| 13 | MATRICULA_PAC | VARCHAR2 | Y |  |
| 14 | CGC_CPF_PAC | VARCHAR2 | Y |  |
| 15 | RG_PAC | VARCHAR2 | Y |  |
| 16 | ENDERECO_PAC | VARCHAR2 | Y |  |
| 17 | BAIRRO_PAC | VARCHAR2 | Y |  |
| 18 | CIDADE_PAC | VARCHAR2 | Y |  |
| 19 | UF_PAC | VARCHAR2 | Y |  |
| 20 | CEP_PAC | VARCHAR2 | Y |  |
| 21 | TELEFONE_PAC | VARCHAR2 | Y |  |
| 22 | FAX_PAC | VARCHAR2 | Y |  |
| 23 | NR_CELULAR_PAC | VARCHAR2 | Y |  |
| 24 | EMAIL_PAC | VARCHAR2 | Y |  |
| 25 | SN_EMAIL_PAC | CHAR | Y |  |
| 26 | SN_SMS_PAC | CHAR | Y |  |
| 27 | DATA_MOV | DATE | Y |  |
| 28 | HORA_MOV | DATE | Y |  |
| 29 | COD_CON | VARCHAR2 | Y |  |
| 30 | NOME_CON | VARCHAR2 | Y |  |
| 31 | ENDERECO_CON | VARCHAR2 | Y |  |
| 32 | BAIRRO_CON | VARCHAR2 | Y |  |
| 33 | CIDADE_CON | VARCHAR2 | Y |  |
| 34 | UF_CON | VARCHAR2 | Y |  |
| 35 | CEP_CON | VARCHAR2 | Y |  |
| 36 | TELEFONE_CON | VARCHAR2 | Y |  |
| 37 | FAX_CON | VARCHAR2 | Y |  |
| 38 | CGC_CPF_CON | VARCHAR2 | Y |  |
| 39 | EMAIL_CON | VARCHAR2 | Y |  |
| 40 | CONTATO_CON | VARCHAR2 | Y |  |
| 41 | COD_PRO_SOLIC | VARCHAR2 | Y |  |
| 42 | NOME_PRO_SOLIC | VARCHAR2 | Y |  |
| 43 | DATANASCTO | DATE | Y |  |
| 44 | CGC_CPF_PRO_SOLIC | VARCHAR2 | Y |  |
| 45 | ENDERECO_PRO_SOLIC | VARCHAR2 | Y |  |
| 46 | BAIRRO_PRO_SOLIC | VARCHAR2 | Y |  |
| 47 | CIDADE_PRO_SOLIC | VARCHAR2 | Y |  |
| 48 | UF_PRO_SOLIC | VARCHAR2 | Y |  |
| 49 | CEP_PRO_SOLIC | VARCHAR2 | Y |  |
| 50 | TELEFONE_PRO_SOLIC | VARCHAR2 | Y |  |
| 51 | FAX_PRO_SOLIC | VARCHAR2 | Y |  |
| 52 | EMAIL_PRO_SOLIC | VARCHAR2 | Y |  |
| 53 | CRM_PRO_SOLIC | VARCHAR2 | Y |  |
| 54 | COD_PRO | VARCHAR2 | Y |  |
| 55 | NOME_PRO | VARCHAR2 | Y |  |
| 56 | DATANASCTO_PRO | DATE | Y |  |
| 57 | CGC_CPF_PRO | VARCHAR2 | Y |  |
| 58 | ENDERECO_PRO | VARCHAR2 | Y |  |
| 59 | BAIRRO_PRO | VARCHAR2 | Y |  |
| 60 | CIDADE_PRO | VARCHAR2 | Y |  |
| 61 | UF_PRO | VARCHAR2 | Y |  |
| 62 | CEP_PRO | VARCHAR2 | Y |  |
| 63 | TELEFONE_PRO | VARCHAR2 | Y |  |
| 64 | FAX_PRO | VARCHAR2 | Y |  |
| 65 | EMAIL_PRO | VARCHAR2 | Y |  |
| 66 | CRM_PRO | VARCHAR2 | Y |  |
| 67 | COD_PRD | VARCHAR2 | Y |  |
| 68 | NOME_PRD | VARCHAR2 | Y |  |
| 69 | TIPO_PAC | CHAR | Y |  |
| 70 | URGENTE | CHAR | Y |  |
| 71 | REGIAO | VARCHAR2 | Y |  |
| 72 | LEITO | VARCHAR2 | Y |  |
| 73 | SET_ORI | VARCHAR2 | Y |  |
| 74 | COD_AMB | VARCHAR2 | Y |  |
| 75 | IMPORTADO | CHAR | Y |  |
| 76 | LAU_ID | NUMBER | Y |  |
| 77 | USU_ID | NUMBER | Y |  |
| 78 | MARCADO | CHAR | Y |  |
| 79 | COD_ACCESS_NUMBER | VARCHAR2 | Y |  |
| 80 | COD_SALA | VARCHAR2 | Y |  |
| 81 | INDICACAO | VARCHAR2 | Y |  |
| 82 | DT_AGENDAMENTO | DATE | Y |  |
| 83 | HR_AGENDAMENTO | DATE | Y |  |
| 84 | OBS | VARCHAR2 | Y |  |

---

## IDCE.RS_WPD_PEDIDOS_LAB

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_PEDIDO_LAB | NUMBER | N |  |
| 2 | TP_INTEGRACAO | VARCHAR2 | Y |  |
| 3 | DS_ERRO | VARCHAR2 | Y |  |
| 4 | DT_INTEGRACAO | DATE | Y |  |
| 5 | COD_PAC | VARCHAR2 | Y |  |
| 6 | NOME_PAC | VARCHAR2 | Y |  |
| 7 | DATANASCTO_PAC | DATE | Y |  |
| 8 | ALTURA_PAC | NUMBER | Y |  |
| 9 | PESO_PAC | NUMBER | Y |  |
| 10 | SEXO_PAC | CHAR | Y |  |
| 11 | MATRICULA_PAC | VARCHAR2 | Y |  |
| 12 | CGC_CPF_PAC | VARCHAR2 | Y |  |
| 13 | RG_PAC | VARCHAR2 | Y |  |
| 14 | ENDERECO_PAC | VARCHAR2 | Y |  |
| 15 | BAIRRO_PAC | VARCHAR2 | Y |  |
| 16 | CIDADE_PAC | VARCHAR2 | Y |  |
| 17 | UF_PAC | VARCHAR2 | Y |  |
| 18 | CEP_PAC | VARCHAR2 | Y |  |
| 19 | TELEFONE_PAC | VARCHAR2 | Y |  |
| 20 | FAX_PAC | VARCHAR2 | Y |  |
| 21 | NR_CELULAR_PAC | VARCHAR2 | Y |  |
| 22 | EMAIL_PAC | VARCHAR2 | Y |  |
| 23 | SN_EMAIL_PAC | CHAR | Y |  |
| 24 | SN_SMS_PAC | CHAR | Y |  |
| 25 | DATA_MOV | DATE | Y |  |
| 26 | HORA_MOV | DATE | Y |  |
| 27 | REGISTRO | VARCHAR2 | Y |  |

---

## IDCE.SALAS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | SAL_ID | NUMBER | N |  |
| 2 | NOME | VARCHAR2 | Y |  |
| 3 | NUMERO | VARCHAR2 | Y |  |
| 4 | AE_TITLE | VARCHAR2 | Y |  |
| 5 | PORTA | VARCHAR2 | Y |  |
| 6 | MODALIDADE | VARCHAR2 | Y |  |
| 7 | NM_FABRICANTE | VARCHAR2 | Y |  |
| 8 | NM_EQUIPAMENTO | VARCHAR2 | Y |  |

---

## IDCE.SEGUSU

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | SEGUSU_ID | NUMBER | N |  |
| 2 | NOME | VARCHAR2 | Y |  |
| 3 | ACSGERAL | CHAR | Y |  |
| 4 | SENHA1 | VARCHAR2 | Y |  |
| 5 | SENHA2 | VARCHAR2 | Y |  |
| 6 | SENHA3 | VARCHAR2 | Y |  |
| 7 | CPF | VARCHAR2 | Y |  |
| 8 | NOMEID | VARCHAR2 | Y |  |

---

## IDCE.TAB_TEMP_USU_ALT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_USUARIO | NUMBER | Y |  |

---

## IDCE.TOKENSTORAGE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_TOKEN | NVARCHAR2 | N |  |
| 2 | DATA_TOKEN | CLOB | N |  |
| 3 | DT_CADASTRO | DATE | N |  |

---

## IDCE.UNIDADES

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_UNIDADE | NUMBER | N |  |
| 2 | NM_UNIDADE | VARCHAR2 | Y |  |

---

## IDCE.USUFIDI

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NOME | VARCHAR2 | Y |  |
| 2 | LOGIN | VARCHAR2 | Y |  |
| 3 | CPF | VARCHAR2 | Y |  |

---

## IDCE.VDIC_PRODUTIVIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | MEDICO | VARCHAR2 | Y |  |
| 2 | ID_MEDICO_EXECUTANTE | NUMBER | Y |  |
| 3 | ID_UNIDADE | NUMBER | Y |  |
| 4 | NM_UNIDADE | VARCHAR2 | Y |  |
| 5 | RAIO_X | NUMBER | Y |  |
| 6 | ECOGRAFIA | NUMBER | Y |  |
| 7 | TOMOGRAFIA | NUMBER | Y |  |
| 8 | ULTRASSONOGRAFIA | NUMBER | Y |  |
| 9 | ENDOSCOPIA | NUMBER | Y |  |
| 10 | COLONOSCOPIA | NUMBER | Y |  |
| 11 | MAMOGRAFIA | NUMBER | Y |  |
| 12 | RESSONANCIA_MAGNETICA | NUMBER | Y |  |
| 13 | DENSITOMETRIA | NUMBER | Y |  |
| 14 | PERIODO | DATE | Y |  |

---

## IDCE.VERSIONINFO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | VERSION | NUMBER | N |  |
| 2 | APPLIEDON | TIMESTAMP(4) | Y |  |
| 3 | DESCRIPTION | NVARCHAR2 | Y |  |

---

## IDCE.VW_ACORDO_ATENDIMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME_UNIDADE | NUMBER | Y |  |
| 2 | ID_SETOR_SOLICITANTE | NUMBER | Y |  |
| 3 | ID_SETOR_EXECUTANTE | NUMBER | Y |  |
| 4 | CD_RISCO | NUMBER | Y |  |
| 5 | ID_ACORDO_ALERTA_VERDE | NUMBER | Y |  |
| 6 | HR_ALERTA_VERDE | NUMBER | Y |  |
| 7 | NM_ALERTA_VERDE | VARCHAR2 | Y |  |
| 8 | ID_ACORDO_ALERTA_2 | NUMBER | Y |  |
| 9 | HR_ALERTA_AMARELO | NUMBER | Y |  |
| 10 | NM_ALERTA_AMARELO | VARCHAR2 | Y |  |
| 11 | ID_ACORDO_ALERTA_VERMELHO | NUMBER | Y |  |
| 12 | HR_ALERTA_VERMELHO | NUMBER | Y |  |
| 13 | NM_ALERTA_VERMELHO | VARCHAR2 | Y |  |

---

## IDCE.VW_ENVIO_SMS_EMAIL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CELULARMEDICOEXECUTANTE | VARCHAR2 | Y |  |
| 2 | CELULARPACIENTE | VARCHAR2 | Y |  |
| 3 | DATACADASTRO | DATE | Y |  |
| 4 | EMAILMEDICOEXECUTANTE | VARCHAR2 | Y |  |
| 5 | EMAILPACIENTE | VARCHAR2 | Y |  |
| 6 | LAUDOID | NUMBER | N |  |
| 7 | MSGSMS | VARCHAR2 | Y |  |
| 8 | NOMEEXAME | VARCHAR2 | Y |  |
| 9 | NOMEMEDICOEXECUTANTE | VARCHAR2 | Y |  |
| 10 | NOMEPACIENTE | VARCHAR2 | Y |  |
| 11 | PRAZO | NUMBER | Y |  |
| 12 | PRONTUARIO | VARCHAR2 | Y |  |
| 13 | REMETENTESMS | VARCHAR2 | Y |  |
| 14 | ID_UNIDADE | NUMBER | N |  |
| 15 | URLSMS | VARCHAR2 | Y |  |
| 16 | ENVIOSMSPACIENTE | CHAR | Y |  |
| 17 | ENVIOEMAILPACIENTE | CHAR | Y |  |
| 18 | ENVIOEMAILMEDEXEC | CHAR | Y |  |
| 19 | ENVIOSMSMEDEXEC | CHAR | Y |  |
| 20 | SNSMSMEDICO | CHAR | Y |  |
| 21 | SNEMAILMEDICO | CHAR | Y |  |
| 22 | SNSMSPACIENTE | CHAR | Y |  |
| 23 | SNEMAILPACIENTE | CHAR | Y |  |

---

## IDCE.VW_SMS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | PRONTUARIO | VARCHAR2 | Y |  |
| 2 | PACIENTENOME | VARCHAR2 | Y |  |
| 3 | EMAIL | VARCHAR2 | Y |  |
| 4 | EXAMENOME | VARCHAR2 | Y |  |
| 5 | REGISTRO | VARCHAR2 | Y |  |
| 6 | ACCESSIONNUMBER | VARCHAR2 | Y |  |
| 7 | DATACAD | DATE | N |  |
| 8 | PROCEDIMENTONOME | VARCHAR2 | Y |  |
| 9 | DT_LAUDADO | DATE | Y |  |
| 10 | DT_REVISADO | DATE | Y |  |
| 11 | DATA_FINAL | DATE | Y |  |
| 12 | DT_ASSINADO | DATE | Y |  |
| 13 | NASCIMENTO | DATE | Y |  |
| 14 | SN_NORMAL | CHAR | Y |  |
| 15 | SN_SMS_ENVIADO | CHAR | Y |  |
| 16 | ENDERECO | VARCHAR2 | Y |  |
| 17 | BAIRRO | VARCHAR2 | Y |  |
| 18 | CIDADE | VARCHAR2 | Y |  |
| 19 | UF | VARCHAR2 | Y |  |
| 20 | CEP | VARCHAR2 | Y |  |
| 21 | TELEFONE | VARCHAR2 | Y |  |
| 22 | FAX | VARCHAR2 | Y |  |
| 23 | NR_CELULAR | VARCHAR2 | Y |  |
| 24 | SEXO | CHAR | Y |  |
| 25 | SN_EMAIL | CHAR | Y |  |
| 26 | SN_SMS | CHAR | Y |  |
| 27 | DS_SMS_REMETENTE | VARCHAR2 | Y |  |
| 28 | DS_SMS_MSG | VARCHAR2 | Y |  |
| 29 | DS_SMS_URL | VARCHAR2 | Y |  |
| 30 | LAU_ID | NUMBER | N |  |
| 31 | MED_SOL_NOME | VARCHAR2 | Y |  |
| 32 | MED_SOL_EMAIL | VARCHAR2 | Y |  |
| 33 | MED_SOL_NR_CELULAR | VARCHAR2 | Y |  |
| 34 | ID_UNIDADE | NUMBER | Y |  |

---

## IDCE.V_PW_LISTA_PRONTUARIO_PAC_MV

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DOCUMENTO_CLINICO | NUMBER | Y |  |
| 2 | CD_TIPO_DOCUMENTO | NUMBER | Y |  |
| 3 | DS_TIPO_DOCUMENTO | VARCHAR2 | Y |  |
| 4 | NM_OBJETO | VARCHAR2 | Y |  |
| 5 | CD_PACIENTE | NUMBER | Y |  |
| 6 | NM_PACIENTE | VARCHAR2 | Y |  |
| 7 | CD_USUARIO | VARCHAR2 | Y |  |
| 8 | DH_CRIACAO | DATE | Y |  |
| 9 | DH_DOCUMENTO | DATE | Y |  |
| 10 | DH_FECHAMENTO | DATE | Y |  |
| 11 | DH_IMPRESSO | DATE | Y |  |
| 12 | CD_OBJETO | NUMBER | Y |  |
| 13 | TP_STATUS | VARCHAR2 | Y |  |
| 14 | NM_MAE | VARCHAR2 | Y |  |
| 15 | NR_IDENTIDADE | VARCHAR2 | Y |  |
| 16 | DT_NASCIMENTO | DATE | Y |  |
| 17 | CD_PRESTADOR | NUMBER | Y |  |
| 18 | NM_PRESTADOR | VARCHAR2 | Y |  |
| 19 | CD_ATENDIMENTO | NUMBER | Y |  |
| 20 | TP_ATENDIMENTO | VARCHAR2 | Y |  |
| 21 | DT_ATENDIMENTO | DATE | Y |  |
| 22 | CD_CONVENIO | NUMBER | Y |  |
| 23 | CD_CID | VARCHAR2 | Y |  |
| 24 | TP_URL | VARCHAR2 | Y |  |

---

## IDCE.WL_IMP_EXAMSSCHEDULED

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_PEDIDO | NUMBER | Y |  |
| 2 | ACCESSIONNUMBER | VARCHAR2 | Y |  |
| 3 | PATIENTID | VARCHAR2 | Y |  |
| 4 | SURNAME | VARCHAR2 | Y |  |
| 5 | FORENAME | VARCHAR2 | Y |  |
| 6 | TITLE | VARCHAR2 | Y |  |
| 7 | SEX | VARCHAR2 | Y |  |
| 8 | DATEOFBIRTH | DATE | Y |  |
| 9 | REFERRINGPHYSICIAN | VARCHAR2 | Y |  |
| 10 | PERFORMINGPHYSICIAN | VARCHAR2 | Y |  |
| 11 | MODALITY | VARCHAR2 | Y |  |
| 12 | EXAMDATEANDTIME | DATE | Y |  |
| 13 | EXAMROOM | VARCHAR2 | Y |  |
| 14 | EXAMDESCRIPTION | VARCHAR2 | Y |  |
| 15 | STUDYUID | VARCHAR2 | Y |  |
| 16 | PROCEDUREID | VARCHAR2 | Y |  |
| 17 | PROCEDURESTEPID | VARCHAR2 | Y |  |
| 18 | HOSPITALNAME | VARCHAR2 | Y |  |
| 19 | SCHEDULEDAET | VARCHAR2 | Y |  |
| 20 | DONE | VARCHAR2 | Y |  |
| 21 | DATEDONE | DATE | Y |  |
| 22 | MANUALINPUT | VARCHAR2 | Y |  |
| 23 | ATIVO | VARCHAR2 | Y |  |
| 24 | DICOMSERVER_AET | VARCHAR2 | Y |  |
| 25 | LAUDO_ID | NUMBER | Y |  |
| 26 | STATUS | VARCHAR2 | Y |  |
| 27 | DATAINPUT | DATE | Y |  |
| 28 | USERINPUTMANUAL | VARCHAR2 | Y |  |
| 29 | EXAMID | VARCHAR2 | Y |  |
| 30 | LOCATION | VARCHAR2 | Y |  |
| 31 | CD_PEDIDO | NUMBER | Y |  |
| 32 | CD_ATENDIMENTO | NUMBER | Y |  |
| 33 | UND | NUMBER | Y |  |

---

## IDCECRER.CAPTURA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CAP_ID | NUMBER | N |  |
| 2 | PAC_ID | NUMBER | N |  |
| 3 | PACIENTENOME | VARCHAR2 | Y |  |
| 4 | EXA_ID | NUMBER | Y |  |
| 5 | EXAMENOME | VARCHAR2 | Y |  |
| 6 | PRC_ID | NUMBER | Y |  |
| 7 | PRC_NOME | VARCHAR2 | Y |  |
| 8 | PASTA | VARCHAR2 | N |  |
| 9 | LAUDO | VARCHAR2 | N |  |
| 10 | TERMINAL | NUMBER | N |  |
| 11 | DATACAD | DATE | N |  |

---

## IDCECRER.CK_VW_ALERGIAS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PACIENTE | NUMBER | N |  |
| 2 | DS_SUBSTANCIA | VARCHAR2 | N |  |
| 3 | DS_AVISO | VARCHAR2 | N |  |

---

## IDCECRER.CK_VW_ANTIBIOGRAMA_CULTURA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PED_LAB | NUMBER | N |  |
| 2 | CD_ITPED_LAB | NUMBER | N |  |
| 3 | CD_GERMES | NUMBER | N |  |
| 4 | DS_GERME | VARCHAR2 | N |  |
| 5 | DS_COLONIA | VARCHAR2 | Y |  |
| 6 | CD_AGRUPAMENTO | NUMBER | Y |  |
| 7 | DS_OBSERVACAO_GERME | VARCHAR2 | Y |  |
| 8 | CD_ANTIMICROB | VARCHAR2 | N |  |
| 9 | NM_ANTIMICROB | VARCHAR2 | Y |  |
| 10 | TP_RESULTADO | VARCHAR2 | Y |  |
| 11 | NR_MIC | VARCHAR2 | Y |  |

---

## IDCECRER.CK_VW_CIRURGIAS_PREVIAS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PACIENTE | NUMBER | N |  |
| 2 | DT_REALIZACAO | DATE | Y |  |
| 3 | DS_CIRURGIA | VARCHAR2 | N |  |

---

## IDCECRER.CK_VW_DOC_ELET_MV

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ATENDIMENTO | NUMBER | Y |  |
| 2 | LO_DOCUMENTO | BLOB | Y |  |

---

## IDCECRER.CK_VW_EVOLUCAO_MED

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PACIENTE | NUMBER | N |  |
| 2 | DT_PRE_MED | DATE | N |  |
| 3 | NM_PRESTADOR | VARCHAR2 | N |  |
| 4 | DS_EVOLUCAO | LONG | Y |  |

---

## IDCECRER.CK_VW_EXAMES_LABORATORIAIS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PACIENTE | NUMBER | N |  |
| 2 | DT_PEDIDO | DATE | N |  |
| 3 | NM_EXA_LAB | VARCHAR2 | N |  |

---

## IDCECRER.CK_VW_JUSTIFICATIVA_PRESCRICAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | PRESCRICAO | NUMBER | N |  |
| 2 | ATENDIMENTO | NUMBER | N |  |
| 3 | PEDIDO | NUMBER | N |  |
| 4 | DT_PEDIDO | DATE | N |  |
| 5 | ACC_NUMBER | NUMBER | N |  |
| 6 | EXAME | VARCHAR2 | N |  |
| 7 | JUSTIFICATIVA_DA_PRESCRICAO | VARCHAR2 | Y |  |

---

## IDCECRER.CK_VW_PRESCRICAO_MEDICA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NM_PACIENTE | VARCHAR2 | N |  |
| 2 | CD_PACIENTE | NUMBER | N |  |
| 3 | CD_ATENDIMENTO | NUMBER | N |  |
| 4 | DT_PRE_MED | DATE | N |  |
| 5 | DS_TIP_PRESC | VARCHAR2 | N |  |
| 6 | CD_ITPRE_MED | NUMBER | N |  |

---

## IDCECRER.CK_VW_PROD_DIA_TP_ATEND

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DT_PEDIDO_COM_HORA | VARCHAR2 | Y |  |
| 2 | DT_PEDIDO | DATE | Y |  |
| 3 | QT_EXTERNO | NUMBER | Y |  |
| 4 | QT_AMBULATORIAL | NUMBER | Y |  |
| 5 | QT_PRONTO_SOCORRO | NUMBER | Y |  |
| 6 | QT_INTERNADO | NUMBER | Y |  |

---

## IDCECRER.CK_VW_RESULT_EXAMES_FORMATADO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 2 | CD_ATENDIMENTO | NUMBER | N |  |
| 3 | CD_PED_LAB | NUMBER | N |  |
| 4 | CD_PACIENTE | NUMBER | N |  |
| 5 | NM_PACIENTE | VARCHAR2 | N |  |
| 6 | DT_NASCIMENTO | DATE | Y |  |
| 7 | TP_SEXO | VARCHAR2 | N |  |
| 8 | CD_EXA_LAB | NUMBER | N |  |
| 9 | NM_EXA_LAB | VARCHAR2 | N |  |
| 10 | CD_ITPED_LAB | NUMBER | N |  |
| 11 | DH_LAUDO | VARCHAR2 | Y |  |
| 12 | NM_CAMPO | VARCHAR2 | N |  |
| 13 | DS_RESULTADO | VARCHAR2 | Y |  |

---

## IDCECRER.CL_CLIENTE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_CLIENTE | NUMBER | N |  |
| 2 | DS_NOME | VARCHAR2 | N |  |
| 3 | DS_DESCRICAO | VARCHAR2 | N |  |
| 4 | DS_ENDERECO | VARCHAR2 | Y |  |
| 5 | DS_EMAIL | VARCHAR2 | Y |  |
| 6 | DS_CONTATO | VARCHAR2 | Y |  |
| 7 | DS_TELEFONE_1 | VARCHAR2 | Y |  |
| 8 | DS_TELEFONE_2 | VARCHAR2 | Y |  |
| 9 | DS_FAX | VARCHAR2 | Y |  |
| 10 | DS_CNPJ | NUMBER | N |  |
| 11 | NR_ENDERECO | VARCHAR2 | Y |  |
| 12 | DS_BAIRRO | VARCHAR2 | Y |  |
| 13 | DS_CEP | VARCHAR2 | Y |  |
| 14 | DS_CIDADE | VARCHAR2 | Y |  |
| 15 | DS_UF | VARCHAR2 | Y |  |

---

## IDCECRER.CL_CLIENTE_UNIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_CLIENTE_UNIDADE | NUMBER | N |  |
| 2 | ID_CLIENTE | NUMBER | N |  |
| 3 | ID_UNIDADE | NUMBER | N |  |

---

## IDCECRER.CL_CLIENTE_USUARIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_CLIENTE_USUARIO | NUMBER | N |  |
| 2 | ID_CLIENTE | NUMBER | N |  |
| 3 | ID_USUARIO | NUMBER | N |  |

---

## IDCECRER.CL_ESTADO_PACOTE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_ESTADO_PACOTE | NUMBER | N |  |
| 2 | DESCRICAO | VARCHAR2 | Y |  |

---

## IDCECRER.CL_LOG_ENVIOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_LOG_ENVIOS | NUMBER | N |  |
| 2 | ID_CL_ESTADO_PACOTE | NUMBER | N |  |
| 3 | PROTOCOLO | VARCHAR2 | Y |  |
| 4 | REMOTEFOLDER | VARCHAR2 | Y |  |
| 5 | FILENAME | VARCHAR2 | Y |  |
| 6 | PEDIDO_IDCECRER | VARCHAR2 | Y |  |
| 7 | UNIDADE | VARCHAR2 | Y |  |
| 8 | INICIOENVIO | DATE | Y |  |
| 9 | FIMENVIO | DATE | Y |  |
| 10 | ESTUDOPACS | VARCHAR2 | Y |  |
| 11 | EXCESSAO | VARCHAR2 | Y |  |

---

## IDCECRER.CL_USUARIO_MONITOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_USUARIO_MONITOR | NUMBER | N |  |
| 2 | USUARIO | VARCHAR2 | Y |  |
| 3 | SENHA | VARCHAR2 | Y |  |

---

## IDCECRER.CONFIGURACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | REMOTE_AETITLE | CHAR | Y |  |
| 2 | REMOTE_PORTA | CHAR | Y |  |
| 3 | REMOTE_ADDRESS | CHAR | Y |  |
| 4 | PATH_DICOMSERVER | VARCHAR2 | Y |  |
| 5 | USER_DICOMSERVER | VARCHAR2 | Y |  |
| 6 | PASSWORD_DICOMSERVER | VARCHAR2 | Y |  |
| 7 | RAZAOSOC | VARCHAR2 | Y |  |
| 8 | ENDERECO | VARCHAR2 | Y |  |
| 9 | BAIRRO | VARCHAR2 | Y |  |
| 10 | CIDADE | VARCHAR2 | Y |  |
| 11 | UF | VARCHAR2 | Y |  |
| 12 | CEP | VARCHAR2 | Y |  |
| 13 | TELEFONE | VARCHAR2 | Y |  |
| 14 | FAX | VARCHAR2 | Y |  |
| 15 | CGC | VARCHAR2 | Y |  |
| 16 | INSCEST | CHAR | Y |  |
| 17 | MAIL | VARCHAR2 | Y |  |
| 18 | LOGIN | CHAR | Y |  |
| 19 | SMTP | CHAR | Y |  |
| 20 | URL | CHAR | Y |  |
| 21 | WEB_IMG_URL | CHAR | Y |  |
| 22 | PATH_WORKLIST | CHAR | Y |  |
| 23 | USER_WORKLIST | CHAR | Y |  |
| 24 | PASSWORD_WORKLIST | CHAR | Y |  |
| 25 | LOGOMARCA | VARCHAR2 | Y |  |
| 26 | AUDITAR | CHAR | Y |  |
| 27 | INTERVALOAUDITORIA | NUMBER | Y |  |
| 28 | VALORFILME | NUMBER | Y |  |
| 29 | VISUALIZAR | CHAR | Y |  |
| 30 | CABECALHO | CHAR | Y |  |
| 31 | CARACTER | CHAR | Y |  |
| 32 | RODAPE | CHAR | Y |  |
| 33 | CD_UNIDADE | NUMBER | N |  |

---

## IDCECRER.CONVENIOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CON_ID | NUMBER | N |  |
| 2 | NOME | VARCHAR2 | Y |  |

---

## IDCECRER.DB_HISTORY

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_HISTORY | NUMBER | N |  |
| 2 | NR_VERSAO | VARCHAR2 | N |  |
| 3 | NR_SEQUENCIA | NUMBER | N |  |
| 4 | NM_ARQUIVO | VARCHAR2 | N |  |
| 5 | DS_SQL | CLOB | N |  |
| 6 | DT_EXECUCAO | DATE | N |  |
| 7 | DS_STATUS | VARCHAR2 | N |  |
| 8 | DS_MENSAGEM | VARCHAR2 | Y |  |
| 9 | DS_RESPONSAVEL | VARCHAR2 | N |  |

---

## IDCECRER.DR$IDX_EP_LAUDO_TXT$I

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | TOKEN_TEXT | VARCHAR2 | N |  |
| 2 | TOKEN_TYPE | NUMBER | N |  |
| 3 | TOKEN_FIRST | NUMBER | N |  |
| 4 | TOKEN_LAST | NUMBER | N |  |
| 5 | TOKEN_COUNT | NUMBER | N |  |
| 6 | TOKEN_INFO | BLOB | Y |  |

---

## IDCECRER.DR$IDX_EP_LAUDO_TXT$K

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DOCID | NUMBER | Y |  |
| 2 | TEXTKEY | ROWID | N |  |

---

## IDCECRER.DR$IDX_EP_LAUDO_TXT$N

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NLT_DOCID | NUMBER | N |  |
| 2 | NLT_MARK | CHAR | N |  |

---

## IDCECRER.DR$IDX_EP_LAUDO_TXT$R

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ROW_NO | NUMBER | N |  |
| 2 | DATA | BLOB | Y |  |

---

## IDCECRER.EXAMES

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | EXA_ID | NUMBER | Y |  |
| 2 | TIPO | NUMBER | Y |  |

---

## IDCECRER.EXAME_PEDIDO_MULTI_LOGIN

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NM_UNIDADE | VARCHAR2 | Y |  |
| 2 | CD_UNIDADE_HIS | VARCHAR2 | Y |  |
| 3 | ID_MEDICO_EXECUTANTE_PADRAO | NUMBER | Y |  |
| 4 | DS_CERTIFICACAO_DIGITAL | VARCHAR2 | Y |  |
| 5 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 6 | ID_PEDIDO_EXAME | NUMBER | N |  |
| 7 | ID_MEDICO_SOLICITANTE | NUMBER | Y |  |
| 8 | NM_MEDICO_SOLICITANTE | VARCHAR2 | Y |  |
| 9 | DS_CRM_SOLICITANTE | VARCHAR2 | Y |  |
| 10 | DS_TELEFONE_SOLICITANTE | VARCHAR2 | Y |  |
| 11 | DS_EMAIL_SOLICITANTE | VARCHAR2 | Y |  |
| 12 | ID_PACIENTE | NUMBER | Y |  |
| 13 | ID_PACIENTE_CONSOLIDADO | NUMBER | Y |  |
| 14 | NM_PACIENTE | VARCHAR2 | Y |  |
| 15 | TP_SEXO | CHAR | Y |  |
| 16 | DS_TELEFONE | VARCHAR2 | Y |  |
| 17 | DT_NASCIMENTO | DATE | Y |  |
| 18 | DS_EMAIL | VARCHAR2 | Y |  |
| 19 | DS_MATRICULA | VARCHAR2 | Y |  |
| 20 | IDADE | NUMBER | Y |  |
| 21 | NR_PRONTUARIO_HOSPITALAR | VARCHAR2 | Y |  |
| 22 | CD_PACIENTE_HIS | VARCHAR2 | Y |  |
| 23 | DS_ENDERECO | VARCHAR2 | Y |  |
| 24 | DS_BAIRRO | VARCHAR2 | Y |  |
| 25 | DS_CIDADE | VARCHAR2 | Y |  |
| 26 | DS_UF | VARCHAR2 | Y |  |
| 27 | DS_CEP | VARCHAR2 | Y |  |
| 28 | DS_FAX | VARCHAR2 | Y |  |
| 29 | SN_EMAIL | CHAR | Y |  |
| 30 | SN_SMS | CHAR | Y |  |
| 31 | ID_CONVENIO | NUMBER | Y |  |
| 32 | ID_UNIDADE | NUMBER | Y |  |
| 33 | ID_UNIDADE_ORIGEM | NUMBER | Y |  |
| 34 | NR_GUIA_HIS | VARCHAR2 | Y |  |
| 35 | NM_CONVENIO_UNIDADE | VARCHAR2 | Y |  |
| 36 | SN_PARCEIRO | CHAR | Y |  |
| 37 | ID_MEDICO_EXECUTANTE | NUMBER | Y |  |
| 38 | NM_MEDICO_EXECUTANTE | VARCHAR2 | Y |  |
| 39 | DS_CRM_EXECUTANTE | VARCHAR2 | Y |  |
| 40 | CD_HIS_EXECUTANTE | VARCHAR2 | Y |  |
| 41 | ID_MEDICO_REVISOR | NUMBER | Y |  |
| 42 | NM_MEDICO_REVISOR | VARCHAR2 | Y |  |
| 43 | DS_CRM_REVISOR | VARCHAR2 | Y |  |
| 44 | CD_HIS_REVISOR | VARCHAR2 | Y |  |
| 45 | ID_MEDICO_REVISOR_FINAL | NUMBER | Y |  |
| 46 | NM_MEDICO_REVISOR_FINAL | VARCHAR2 | Y |  |
| 47 | DS_CRM_REVISOR_FINAL | VARCHAR2 | Y |  |
| 48 | CD_HIS_REVISOR_FINAL | VARCHAR2 | Y |  |
| 49 | ID_DIAGNOSTICO_RADIO | NUMBER | Y |  |
| 50 | NM_DIAGNOSTICO_RADIO | CHAR | Y |  |
| 51 | ID_DIAGNOSTICO_CLINICO | NUMBER | Y |  |
| 52 | NM_DIAGNOSTICO_CLINICO | CHAR | Y |  |
| 53 | ID_DIAGNOSTICO_CIRURGICO | NUMBER | Y |  |
| 54 | NM_DIAGNOSTICO_CIRURGICO | CHAR | Y |  |
| 55 | ID_SALA | NUMBER | Y |  |
| 56 | NM_SALA | VARCHAR2 | Y |  |
| 57 | DT_CADASTRO | DATE | Y |  |
| 58 | DT_ALTERACAO | DATE | Y |  |
| 59 | DT_STUDY | DATE | Y |  |
| 60 | ID_EXAME_UNIDADE | NUMBER | Y |  |
| 61 | NM_EXAME_UNIDADE | VARCHAR2 | Y |  |
| 62 | ID_EXAME | NUMBER | N |  |
| 63 | NM_EXAME | VARCHAR2 | Y |  |
| 64 | CD_CBHPM | VARCHAR2 | Y |  |
| 65 | ID_USUARIO_INCLUSAO | NUMBER | Y |  |
| 66 | NM_USUARIO_INCLUSAO | VARCHAR2 | Y |  |
| 67 | ID_USUARIO_ALTERACAO | NUMBER | Y |  |
| 68 | NM_USUARIO_ALTERACAO | VARCHAR2 | Y |  |
| 69 | DT_DUM | DATE | Y |  |
| 70 | CD_ATENDIMENTO_HIS | VARCHAR2 | Y |  |
| 71 | CD_PEDIDO_HIS | VARCHAR2 | Y |  |
| 72 | CD_ITEM_PEDIDO_HIS | VARCHAR2 | Y |  |
| 73 | ID_ORIGEM_ATENDIMENTO | NUMBER | Y |  |
| 74 | CD_STATUS | CHAR | Y |  |
| 75 | DS_STATUS | VARCHAR2 | Y |  |
| 76 | ID_SETOR | NUMBER | Y |  |
| 77 | NM_SETOR | VARCHAR2 | Y |  |
| 78 | ID_USUARIO_ENTRADA_EXAME | NUMBER | Y |  |
| 79 | NM_USUARIO_ENTRADA_EXAME | VARCHAR2 | Y |  |
| 80 | ID_USUARIO_SAIDA_EXAME | NUMBER | Y |  |
| 81 | NM_USUARIO_SAIDA_EXAME | VARCHAR2 | Y |  |
| 82 | DT_ENTRADA_EXAME | DATE | Y |  |
| 83 | DT_SAIDA_EXAME | DATE | Y |  |
| 84 | NR_ALTURA | NUMBER | Y |  |
| 85 | NR_PESO | NUMBER | Y |  |
| 86 | SN_PENDENTE | CHAR | Y |  |
| 87 | DT_FINALIZACAO | DATE | Y |  |
| 88 | DT_LAUDADO | DATE | Y |  |
| 89 | DT_PEDIDO | DATE | Y |  |
| 90 | DT_IMPRESSO | DATE | Y |  |
| 91 | DT_ASSINADO | DATE | Y |  |
| 92 | DT_DIGITADO | DATE | Y |  |
| 93 | DT_DITADO | DATE | Y |  |
| 94 | DT_REVISADO | DATE | Y |  |
| 95 | DT_REVISADO_FINAL | DATE | Y |  |
| 96 | DT_ENTREGA | DATE | Y |  |
| 97 | DT_PREVISAO_ENTREGA | DATE | Y |  |
| 98 | NM_ACOMODACAO_HIS | VARCHAR2 | Y |  |
| 99 | NM_LOCAL_ENTREGA_HIS | VARCHAR2 | Y |  |
| 100 | NM_INDICACAO_HIS | VARCHAR2 | Y |  |
| 101 | SN_MIDIA_RESULTADO | CHAR | Y |  |
| 102 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 103 | ID_USUARIO_LIBERACAO | NUMBER | Y |  |
| 104 | NM_USUARIO_LIBERACAO | VARCHAR2 | Y |  |
| 105 | ID_USUARIO_ONLINE | NUMBER | Y |  |
| 106 | NM_USUARIO_ONLINE | VARCHAR2 | Y |  |
| 107 | DS_OPERACAO_ONLINE | VARCHAR2 | Y |  |
| 108 | SN_SMS_ENVIADO | CHAR | Y |  |
| 109 | DS_LAUDO_RTF | CLOB | Y |  |
| 110 | DS_LAUDO_TXT | CLOB | Y |  |
| 111 | DS_LAUDO_HTML | CLOB | Y |  |
| 112 | SN_NORMAL | CHAR | Y |  |
| 113 | ID_JUSTIFICATIVA | NUMBER | Y |  |
| 114 | DT_JUSTIFICATIVA | DATE | Y |  |
| 115 | DS_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 116 | ID_USUARIO_JUSTIFICATIVA | NUMBER | Y |  |
| 117 | NM_USUARIO_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 118 | DS_LEITO_HIS | VARCHAR2 | Y |  |
| 119 | DS_REGIAO_EXAMINADA | VARCHAR2 | Y |  |
| 120 | SN_AGRUPAR_IMAGEM | CHAR | Y |  |
| 121 | SN_AGRUPAR_LAUDO | CHAR | Y |  |
| 122 | ID_TIPO_EXAME | NUMBER | Y |  |
| 123 | NM_TIPO_EXAME | VARCHAR2 | Y |  |
| 124 | NM_PROCEDIMENTO | VARCHAR2 | Y |  |
| 125 | ID_PROCEDIMENTO_UNIDADE | NUMBER | N |  |
| 126 | ID_PROCEDIMENTO | NUMBER | N |  |
| 127 | NR_PRAZO_ENTREGA | NUMBER | Y |  |
| 128 | CD_PROCEDIMENTO_HIS | VARCHAR2 | Y |  |
| 129 | DS_LAYOUT_IMPRESSAO | VARCHAR2 | Y |  |
| 130 | ID_MEDICO_PADRAO | NUMBER | Y |  |
| 131 | ID_SALA_PADRAO | NUMBER | Y |  |
| 132 | SN_REVISAO_AUTOMATICA | CHAR | Y |  |
| 133 | SN_DICOM | CHAR | Y |  |
| 134 | SN_EXECUTANTE_REVISOR | CHAR | Y |  |
| 135 | SN_LAUDO_LOTE_PENDENTE | CHAR | Y |  |
| 136 | SN_ENTREGA_LAUDO_CD | CHAR | Y |  |
| 137 | SN_IMPRESSAO_LAUDO_ENTREGA | CHAR | Y |  |
| 138 | SN_LIBERAR_LOTE_LAUDO_REV_PEND | CHAR | Y |  |
| 139 | SN_TEXTO_PADRAO_AUTOMATICO | CHAR | Y |  |
| 140 | SN_JUSTIFICATIVA_LAUDO | CHAR | Y |  |
| 141 | SN_ENDOSCOPIA | CHAR | Y |  |
| 142 | CD_MODALIDADE | VARCHAR2 | Y |  |
| 143 | NR_DIAS | NUMBER | Y |  |
| 144 | SN_ATRASADO | CHAR | Y |  |
| 145 | TP_SEXO_REVISOR | VARCHAR2 | Y |  |
| 146 | TP_SEXO_EXECUTANTE | VARCHAR2 | Y |  |
| 147 | ID_SISTEMA | NUMBER | Y |  |
| 148 | CD_EXAME_HIS | VARCHAR2 | Y |  |
| 149 | ID_MEDICO_DITADO | NUMBER | Y |  |
| 150 | NM_MEDICO_DITADO | VARCHAR2 | Y |  |
| 151 | DS_CRM_DITADO | VARCHAR2 | Y |  |
| 152 | CD_HIS_DITADO | VARCHAR2 | Y |  |
| 153 | ID_CLASSIFICACAO_RISCO | NUMBER | Y |  |
| 154 | ID_SETOR_EXECUTANTE | NUMBER | Y |  |
| 155 | ID_SETOR_SOLICITANTE | NUMBER | Y |  |
| 156 | ID_ETAPA_ATUAL | NUMBER | Y |  |
| 157 | NM_ETAPA | VARCHAR2 | Y |  |
| 158 | DS_ALERTA_ACORDO | VARCHAR2 | Y |  |
| 159 | POSSUICOMENTARIO | CHAR | Y |  |
| 160 | ID_TIPO_PRIORIDADE | NUMBER | Y |  |
| 161 | SN_PRESCRICAO_URGENTE | CHAR | Y |  |
| 162 | SN_EXAME_CONCLUIDO | CHAR | Y |  |
| 163 | CD_STUDY_UID | VARCHAR2 | Y |  |
| 164 | CD_TIPO_VIEWER | NUMBER | Y |  |
| 165 | DT_ANAMNESE | DATE | Y |  |
| 166 | ID_CONVENIO_UNIDADE | NUMBER | Y |  |
| 167 | PACIENTE_IDADE_EXTENSO | VARCHAR2 | Y |  |
| 168 | SN_STUDY_PED | CHAR | N |  |
| 169 | TP_INSUMO | NUMBER | Y |  |
| 170 | DS_PATH_RELATORIO_FORMULA | VARCHAR2 | Y |  |
| 171 | DS_LAUDO_PDF_MARCADAGUA | BLOB | Y |  |

---

## IDCECRER.HOSPITAL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | HOSPITAL_ID | NUMBER | N |  |
| 2 | DS_RAZAO | VARCHAR2 | Y |  |
| 3 | DS_ENDERECO | VARCHAR2 | Y |  |
| 4 | DS_JUNTA | VARCHAR2 | Y |  |
| 5 | CD_CGC | NUMBER | Y |  |

---

## IDCECRER.IDCECRER_LOG

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_LOG | NUMBER | N |  |
| 2 | LOGDATE | VARCHAR2 | Y |  |
| 3 | LOGTHREAD | VARCHAR2 | Y |  |
| 4 | LOGLEVEL | VARCHAR2 | Y |  |
| 5 | LOGMESSAGE | VARCHAR2 | Y |  |
| 6 | LOGEXCEPTION | VARCHAR2 | Y |  |
| 7 | LOGSTACK | VARCHAR2 | Y |  |

---

## IDCECRER.LAUDOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | AC_NUMBER | VARCHAR2 | Y |  |
| 2 | PACIENTE | NUMBER | Y |  |
| 3 | PACIENTENOME | VARCHAR2 | Y |  |
| 4 | SEXO | CHAR | Y |  |
| 5 | NASCIMENTO | DATE | Y |  |
| 6 | LAUDADO | CHAR | Y |  |
| 7 | REVISADO | CHAR | Y |  |
| 8 | ASSINATURA | CHAR | Y |  |
| 9 | IMPRESSO | CHAR | Y |  |
| 10 | CONVENIONOME | VARCHAR2 | Y |  |
| 11 | CD_PED_RX | NUMBER | Y |  |
| 12 | CD_ATENDIMENTO | NUMBER | Y |  |
| 13 | STATUS | CHAR | Y |  |
| 14 | SOLICITANTE | NUMBER | Y |  |
| 15 | SOLICITANTENOME | VARCHAR2 | Y |  |
| 16 | DATALAUDADO | DATE | Y |  |
| 17 | DT_LAUDADO | DATE | Y |  |
| 18 | EXECUTANTE | NUMBER | Y |  |
| 19 | EXECUTANTENOME | VARCHAR2 | Y |  |
| 20 | DATAREVISAO | DATE | Y |  |
| 21 | DT_REVISADO | DATE | Y |  |
| 22 | REVISORNOME | VARCHAR2 | Y |  |
| 23 | DATAASSINATURA | DATE | Y |  |
| 24 | DT_ASSINADO | DATE | Y |  |
| 25 | DATACAD | DATE | Y |  |
| 26 | HORA | DATE | Y |  |
| 27 | USUARIOINC | VARCHAR2 | Y |  |
| 28 | DATAALT | DATE | Y |  |
| 29 | USUARIOALT | VARCHAR2 | Y |  |
| 30 | DIRETORIO | CHAR | Y |  |
| 31 | LAU_ID | NUMBER | N |  |
| 32 | REGISTRO | VARCHAR2 | Y |  |
| 33 | PRONTUARIO | VARCHAR2 | Y |  |
| 34 | DIGITADO | CHAR | Y |  |
| 35 | PRC_ID | NUMBER | Y |  |
| 36 | REVISOR | NUMBER | Y |  |
| 37 | CONVENIO | NUMBER | Y |  |
| 38 | DUM | DATE | Y |  |
| 39 | TEXTO | CLOB | Y |  |
| 40 | EXAME | NUMBER | Y |  |
| 41 | EXAMENOME | VARCHAR2 | Y |  |
| 42 | OBS | VARCHAR2 | Y |  |
| 43 | CRMSOLICITANTE | VARCHAR2 | Y |  |
| 44 | CRMEXECUTANTE | VARCHAR2 | Y |  |
| 45 | CRMREVISOR | VARCHAR2 | Y |  |
| 46 | ARQUIVADO | CHAR | Y |  |
| 47 | TIPO | NUMBER | Y |  |
| 48 | TIPONOME | VARCHAR2 | Y |  |
| 49 | LEITO | VARCHAR2 | Y |  |
| 50 | CD_UNIDADE | NUMBER | Y |  |
| 51 | CD_MULTI_EMPRESA | VARCHAR2 | Y |  |
| 52 | DT_LIBERADO | DATE | Y |  |
| 53 | DT_STUDY | DATE | Y |  |

---

## IDCECRER.LAYOUTSCRER

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_REPORT | NUMBER | N |  |
| 2 | ID_USUARIO | NUMBER | N |  |
| 3 | DT_CADASTRO | DATE | N |  |
| 4 | DT_ALTERACAO | DATE | Y |  |
| 5 | SN_ATIVO | CHAR | Y |  |
| 6 | REPORT | BLOB | Y |  |
| 7 | REPORT_DEFAULT | BLOB | Y |  |
| 8 | ID_PROCEDIMENTO_UNIDADE | NUMBER | Y |  |
| 9 | NOME_RELATORIO | VARCHAR2 | Y |  |

---

## IDCECRER.MEDICOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | MED_ID | NUMBER | N |  |
| 2 | NOME | VARCHAR2 | Y |  |
| 3 | CRM | VARCHAR2 | Y |  |
| 4 | EMAIL | VARCHAR2 | Y |  |
| 5 | CGC_CPF | VARCHAR2 | Y |  |
| 6 | STATUS | VARCHAR2 | Y |  |

---

## IDCECRER.MEDICO_TEMP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_MEDICO | NUMBER | Y |  |

---

## IDCECRER.MEDICO_UNIDADE_TEMP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_MEDICO_UNIDADE | NUMBER | Y |  |

---

## IDCECRER.MRB_CONF_PROCEDIMENTO
> Tabela que guarda as configurações os id_tipo_exame para cada procedimento para uso no MRB (Microdata Report Builder

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_RAIO_X | NUMBER | Y | id_tipo_exame referente ao procedimento de Raio X |
| 2 | ID_ECOGRAFIA | NUMBER | Y | id_tipo_exame referente ao procedimento de Ecografia |
| 3 | ID_TOMOGRAFIA | NUMBER | Y | id_tipo_exame referente ao procedimento de Tomografia |
| 4 | ID_ULTRASSONOGRAFIA | NUMBER | Y | id_tipo_exame referente ao procedimento de Ultrassonografia |
| 5 | ID_ENDOSCOPIA | NUMBER | Y | id_tipo_exame referente ao procedimento de Endoscopia |
| 6 | ID_COLONOSCOPIA | NUMBER | Y | id_tipo_exame referente ao procedimento de Colonoscopia |
| 7 | ID_MAMOGRAFIA | NUMBER | Y | id_tipo_exame referente ao procedimento de Mamografia |
| 8 | ID_RESSONANCIA_MAGNETICA | NUMBER | Y | id_tipo_exame referente ao procedimento de Ressonância Magnética |
| 9 | ID_DENSITOMETRIA | NUMBER | Y | id_tipo_exame referente ao procedimento de Densitometria |

---

## IDCECRER.MRB_GRUPOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_GRUPO | VARCHAR2 | N |  |
| 2 | NM_NOME | VARCHAR2 | N |  |
| 3 | DS_DESCRICAO | VARCHAR2 | Y |  |
| 4 | ID_UNIDADE | NUMBER | N |  |

---

## IDCECRER.MRB_LAYOUTS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_LAYOUT | VARCHAR2 | N |  |
| 2 | ID_GRUPO | VARCHAR2 | N |  |
| 3 | NM_NOME | VARCHAR2 | N |  |
| 4 | DS_DESCRICAO | VARCHAR2 | Y |  |
| 5 | DS_LAYOUT | CLOB | Y | RTM |
| 6 | ID_UNIDADE | NUMBER | N |  |
| 7 | SN_ATIVO | CHAR | Y |  |
| 8 | ID_USUARIO_CRIACAO | NUMBER | Y |  |
| 9 | DT_CRIACAO | DATE | Y |  |
| 10 | ID_USUARIO_ALTERACAO | NUMBER | Y |  |
| 11 | DT_ALTERACAO | DATE | Y |  |
| 12 | SN_PUBLICO | CHAR | N |  |

---

## IDCECRER.MRB_LAYOUTS_LOG

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_UNIDADE | NUMBER | Y |  |
| 2 | ID_GRUPO | VARCHAR2 | Y |  |
| 3 | ID_LAYOUT | VARCHAR2 | Y |  |
| 4 | DS_MOTIVO | VARCHAR2 | Y |  |
| 5 | DS_ACAO | VARCHAR2 | Y |  |
| 6 | DS_CONTEUDO | CLOB | Y |  |
| 7 | ID_USUARIO | NUMBER | Y |  |
| 8 | DT_DATA | DATE | Y |  |
| 9 | NM_NOME | VARCHAR2 | Y |  |
| 10 | SN_ATIVO | CHAR | N |  |
| 11 | ID_LAYOUTS_LOG | NUMBER | N |  |
| 12 | DS_DESCRICAO | VARCHAR2 | Y |  |

---

## IDCECRER.MRB_PARAMETROS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_LAYOUT | VARCHAR2 | N | Id do layout |
| 2 | NM_NOME | VARCHAR2 | N | Nome do layout |
| 3 | ID_UNIDADE | NUMBER | N | Id da unidade |
| 4 | ID_GRUPO | VARCHAR2 | N | Id do grupo |
| 5 | TP_DATA_TYPE | NUMBER | Y | Tipo de dado: 0 = dtBoolean 1 = dtDate 2 = dtTime 3 = dtDateTime 4 = dtInteger 5 = dtSingle 6 = d... |
| 6 | SN_MANDATORY | CHAR | Y | Obrigatório: S = Sim N = Não |
| 7 | TP_SEARCH_OPERATOR | NUMBER | Y | Operador da pesquisa: 0 = soEqual 1 = soNotEqual 2 = soLessThan 3 = soLessThanOrEqualTo 4 = soGre... |
| 8 | SN_SHOW_ALL_VALUES | CHAR | Y | Exibir todos os valores: S = Sim N = Não |
| 9 | DS_LOOKUP_LIST | CLOB | Y | Lookup em forma de combobox e itens fixos |
| 10 | NM_LOOKUP_DATA_PIPELINE | VARCHAR2 | Y | Nome do pipeline para fazer lookup |
| 11 | DS_LOOKUP_DATA_PIPELINE_SQL | CLOB | Y | SQL do pipeline para fazer lookup |
| 12 | TP_LOOKUP_DISPLAY_TYPE | NUMBER | Y | Informação para display: 0 = dtNameOnly 1 = dtValueAndName 2 = dtNameAndValue |
| 13 | NM_LOOKUP_NAME_FIELD | VARCHAR2 | Y | Campo para exibir nomes |
| 14 | TP_LOOKUP_SORT_ORDER | NUMBER | Y | Informações para ordem: 0 = soName 1 = soValue 2 = soNone |
| 15 | NM_LOOKUP_VALUE_FIELD | VARCHAR2 | Y | Campo para exibir valores |
| 16 | NR_ORDEM | NUMBER | Y |  |
| 17 | TP_MICRODATA_TEMPLATE | NUMBER | Y | Flag indicativo para interface dos sistemas Microdata |

---

## IDCECRER.MRB_PERMISSAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_UNIDADE | NUMBER | N |  |
| 2 | ID_GRUPO | VARCHAR2 | N |  |
| 3 | ID_LAYOUT | VARCHAR2 | N |  |
| 4 | ID_USUARIO | NUMBER | N |  |

---

## IDCECRER.MRB_VW_BALAC_ANALIT_MED_EXEC

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DT_LAUDADO | DATE | Y |  |
| 2 | LAUDO | NUMBER | N |  |
| 3 | PACIENTE | VARCHAR2 | Y |  |
| 4 | EXAME | VARCHAR2 | Y |  |
| 5 | HORA | VARCHAR2 | Y |  |
| 6 | NM_MEDICO | VARCHAR2 | Y |  |
| 7 | NM_PROCEDIMENTO | VARCHAR2 | Y |  |
| 8 | REG_PACIENTE | VARCHAR2 | Y |  |
| 9 | TP_PACIENTE | CHAR | Y |  |
| 10 | DT_EXAME | DATE | Y |  |

---

## IDCECRER.MRB_VW_REL_GERENCIAL_PRAZO_ASS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_MEDICO_EXECUTANTE | NUMBER | Y |  |
| 2 | NM_MEDICO_EXECUTANTE | VARCHAR2 | Y |  |
| 3 | DS_CRM_EXECUTANTE | VARCHAR2 | Y |  |
| 4 | ID_PROCEDIMENTO | NUMBER | Y |  |
| 5 | NM_PROCEDIMENTO | VARCHAR2 | Y |  |
| 6 | NM_PACIENTE | VARCHAR2 | Y |  |
| 7 | CD_PEDIDO_HIS | VARCHAR2 | Y |  |
| 8 | DT_ASSINADO | DATE | Y |  |
| 9 | DT_STUDY | DATE | Y |  |
| 10 | DT_LAUDADO | DATE | Y |  |
| 11 | DT_PEDIDO | DATE | Y |  |
| 12 | DT_CADASTRO | DATE | Y |  |
| 13 | ID_UNIDADE | NUMBER | Y |  |
| 14 | NM_UNIDADE | VARCHAR2 | Y |  |
| 15 | DT_PRAZO | DATE | Y |  |
| 16 | HR_PRAZO | DATE | Y |  |
| 17 | INTERVALO_HR_EXAME | NUMBER | Y |  |
| 18 | INTERVALO_HR_LAUDAR | NUMBER | Y |  |
| 19 | HR_TOTAL | NUMBER | Y |  |

---

## IDCECRER.MRB_VW_REL_PENDENCIAS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_MEDICO_EXECUTANTE | NUMBER | Y |  |
| 2 | NM_MEDICO_EXECUTANTE | VARCHAR2 | Y |  |
| 3 | DS_CRM_EXECUTANTE | VARCHAR2 | Y |  |
| 4 | ID_PROCEDIMENTO | NUMBER | Y |  |
| 5 | NM_PROCEDIMENTO | VARCHAR2 | Y |  |
| 6 | NM_PACIENTE | VARCHAR2 | Y |  |
| 7 | CD_PEDIDO_HIS | VARCHAR2 | Y |  |
| 8 | DT_ASSINADO | DATE | Y |  |
| 9 | DT_STUDY | DATE | Y |  |
| 10 | DT_REVISADO | DATE | Y |  |
| 11 | DT_LAUDADO | DATE | Y |  |
| 12 | DT_PEDIDO | DATE | Y |  |
| 13 | DT_CADASTRO | DATE | Y |  |
| 14 | ID_UNIDADE | NUMBER | Y |  |
| 15 | NM_UNIDADE | VARCHAR2 | Y |  |
| 16 | NR_PRAZO_ENTREGA | NUMBER | Y |  |

---

## IDCECRER.MRB_VW_REL_PRODUTIVIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | MEDICO | VARCHAR2 | Y |  |
| 2 | ID_MEDICO_EXECUTANTE | NUMBER | Y |  |
| 3 | ID_UNIDADE | NUMBER | Y |  |
| 4 | NM_UNIDADE | VARCHAR2 | Y |  |
| 5 | RAIO_X | NUMBER | Y |  |
| 6 | ECOGRAFIA | NUMBER | Y |  |
| 7 | TOMOGRAFIA | NUMBER | Y |  |
| 8 | ULTRASSONOGRAFIA | NUMBER | Y |  |
| 9 | ENDOSCOPIA | NUMBER | Y |  |
| 10 | COLONOSCOPIA | NUMBER | Y |  |
| 11 | MAMOGRAFIA | NUMBER | Y |  |
| 12 | RESSONANCIA_MAGNETICA | NUMBER | Y |  |
| 13 | DENSITOMETRIA | NUMBER | Y |  |
| 14 | PERIODO | DATE | Y |  |

---

## IDCECRER.MRB_VW_REL_TEMPO_LAUDO_ANALITI

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_MEDICO_EXECUTANTE | NUMBER | Y |  |
| 2 | NM_MEDICO_EXECUTANTE | VARCHAR2 | Y |  |
| 3 | DS_CRM_EXECUTANTE | VARCHAR2 | Y |  |
| 4 | ID_PROCEDIMENTO | NUMBER | N |  |
| 5 | NM_PROCEDIMENTO | VARCHAR2 | Y |  |
| 6 | NM_PACIENTE | VARCHAR2 | Y |  |
| 7 | CD_PEDIDO_HIS | VARCHAR2 | Y |  |
| 8 | DT_ASSINADO | DATE | Y |  |
| 9 | DT_STUDY | DATE | Y |  |
| 10 | DT_LAUDADO | DATE | Y |  |
| 11 | DT_CADASTRO | DATE | Y |  |
| 12 | ID_UNIDADE | NUMBER | Y |  |
| 13 | NM_UNIDADE | VARCHAR2 | Y |  |
| 14 | DT_PRAZO | DATE | Y |  |
| 15 | HR_PRAZO | DATE | Y |  |
| 16 | INTERVALO_HR_EXAME | NUMBER | Y |  |
| 17 | INTERVALO_HR_LAUDAR | NUMBER | Y |  |
| 18 | HR_TOTAL | NUMBER | Y |  |
| 19 | SN_DENTRO_PRAZO | CHAR | Y |  |
| 20 | NR_PRAZO_ENTREGA | NUMBER | Y |  |

---

## IDCECRER.MRB_VW_REL_TEMPO_LAUDO_SINTETI

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_MEDICO_EXECUTANTE | NUMBER | Y |  |
| 2 | NM_MEDICO_EXECUTANTE | VARCHAR2 | Y |  |
| 3 | DS_CRM_EXECUTANTE | VARCHAR2 | Y |  |
| 4 | ID_PROCEDIMENTO | NUMBER | N |  |
| 5 | NM_PROCEDIMENTO | VARCHAR2 | Y |  |
| 6 | NM_PACIENTE | VARCHAR2 | Y |  |
| 7 | CD_PEDIDO_HIS | VARCHAR2 | Y |  |
| 8 | DT_ASSINADO | DATE | Y |  |
| 9 | DT_STUDY | DATE | Y |  |
| 10 | DT_LAUDADO | DATE | Y |  |
| 11 | DT_CADASTRO | DATE | Y |  |
| 12 | ID_UNIDADE | NUMBER | Y |  |
| 13 | NM_UNIDADE | VARCHAR2 | Y |  |
| 14 | DT_PRAZO | DATE | Y |  |
| 15 | HR_PRAZO | DATE | Y |  |
| 16 | HR_TOTAL | NUMBER | Y |  |

---

## IDCECRER.MRB_VW_TP_DIAGNOSTICO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_TIPO_DIAGNOSTICO | NUMBER | N |  |
| 2 | NM_TIPO_DIAGNOSTICO | VARCHAR2 | Y |  |
| 3 | DS_TIPO_DIAGNOSTICO | VARCHAR2 | Y |  |
| 4 | DT_CADASTRO | DATE | N |  |
| 5 | DT_ALTERACAO | DATE | Y |  |
| 6 | ID_USUARIO | NUMBER | Y |  |

---

## IDCECRER.MRB_VW_USUARIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_USUARIO | NUMBER | N |  |
| 2 | NM_USUARIO | VARCHAR2 | Y |  |
| 3 | CD_SENHA | VARCHAR2 | Y |  |
| 4 | SN_ACESSO_MRB | CHAR | N |  |

---

## IDCECRER.MRB_VW_USUARIO_UNIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_USUARIO | NUMBER | Y |  |
| 2 | ID_UNIDADE | NUMBER | Y |  |
| 3 | NM_UNIDADE | VARCHAR2 | Y |  |

---

## IDCECRER.MV_ADM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DS_LICENCA | VARCHAR2 | N |  |
| 2 | NR_SERIE | VARCHAR2 | N |  |
| 3 | CD_ACESSO | VARCHAR2 | N |  |
| 4 | NR_LICENCA | VARCHAR2 | Y |  |
| 5 | CTRL_ACESSO | VARCHAR2 | Y |  |

---

## IDCECRER.PACIENTES

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | PAC_ID | NUMBER | N |  |
| 2 | NOME | VARCHAR2 | Y |  |
| 3 | PRONTUARIO | VARCHAR2 | Y |  |
| 4 | DATANASCTO | DATE | Y |  |
| 5 | CONVENIO | NUMBER | Y |  |
| 6 | SEXO | CHAR | N |  |
| 7 | EMAIL | VARCHAR2 | Y |  |
| 8 | DT_TERMO_ACEITE | DATE | Y |  |

---

## IDCECRER.PACIENTES_PORTAL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | PRONTUARIO | VARCHAR2 | Y |  |
| 2 | NOME | VARCHAR2 | Y |  |
| 3 | DATANASCTO | DATE | Y |  |
| 4 | SEXO | CHAR | N |  |
| 5 | REGISTRO | VARCHAR2 | Y |  |
| 6 | DT_EXAME | DATE | Y |  |
| 7 | CD_UNIDADE | NUMBER | Y |  |

---

## IDCECRER.PEDIDOS_SADT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITEM_PEDIDO | NUMBER | Y |  |

---

## IDCECRER.PORTAL_VW_LAUDOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | AC_NUMBER | VARCHAR2 | Y |  |
| 2 | PACIENTE | NUMBER | Y |  |
| 3 | ID_PACIENTE_CONSOLIDADO | NUMBER | Y |  |
| 4 | PACIENTENOME | VARCHAR2 | Y |  |
| 5 | SEXO | CHAR | Y |  |
| 6 | NASCIMENTO | DATE | Y |  |
| 7 | CPF | VARCHAR2 | Y |  |
| 8 | LAUDADO | CHAR | Y |  |
| 9 | REVISADO | CHAR | Y |  |
| 10 | ASSINATURA | CHAR | Y |  |
| 11 | IMPRESSO | CHAR | Y |  |
| 12 | CONVENIONOME | VARCHAR2 | Y |  |
| 13 | CD_PED_RX | NUMBER | Y |  |
| 14 | CD_ATENDIMENTO | NUMBER | Y |  |
| 15 | STATUS | CHAR | Y |  |
| 16 | SOLICITANTE | NUMBER | Y |  |
| 17 | SOLICITANTENOME | VARCHAR2 | Y |  |
| 18 | DATALAUDADO | DATE | Y |  |
| 19 | DT_LAUDADO | DATE | Y |  |
| 20 | EXECUTANTE | NUMBER | Y |  |
| 21 | EXECUTANTENOME | VARCHAR2 | Y |  |
| 22 | DATAREVISAO | DATE | Y |  |
| 23 | DT_REVISADO | DATE | Y |  |
| 24 | REVISORNOME | VARCHAR2 | Y |  |
| 25 | DATAASSINATURA | DATE | Y |  |
| 26 | DT_ASSINADO | DATE | Y |  |
| 27 | DATACAD | DATE | Y |  |
| 28 | HORA | DATE | Y |  |
| 29 | USUARIOINC | VARCHAR2 | Y |  |
| 30 | DATAALT | DATE | Y |  |
| 31 | USUARIOALT | VARCHAR2 | Y |  |
| 32 | DIRETORIO | CHAR | Y |  |
| 33 | LAU_ID | NUMBER | N |  |
| 34 | REGISTRO | VARCHAR2 | Y |  |
| 35 | PRONTUARIO | VARCHAR2 | Y |  |
| 36 | DIGITADO | CHAR | Y |  |
| 37 | PRC_ID | NUMBER | Y |  |
| 38 | REVISOR | NUMBER | Y |  |
| 39 | CONVENIO | NUMBER | Y |  |
| 40 | DUM | DATE | Y |  |
| 41 | TEXTO | CLOB | Y |  |
| 42 | EXAME | NUMBER | Y |  |
| 43 | EXAMENOME | VARCHAR2 | Y |  |
| 44 | OBS | VARCHAR2 | Y |  |
| 45 | CRMSOLICITANTE | VARCHAR2 | Y |  |
| 46 | CRMEXECUTANTE | VARCHAR2 | Y |  |
| 47 | CRMREVISOR | VARCHAR2 | Y |  |
| 48 | ARQUIVADO | CHAR | Y |  |
| 49 | TIPO | NUMBER | Y |  |
| 50 | TIPONOME | VARCHAR2 | Y |  |
| 51 | LEITO | VARCHAR2 | Y |  |
| 52 | CD_UNIDADE | NUMBER | Y |  |
| 53 | CD_MULTI_EMPRESA | VARCHAR2 | Y |  |
| 54 | DT_LIBERADO | DATE | Y |  |
| 55 | DT_STUDY | DATE | Y |  |
| 56 | PROVISORIO | CHAR | N |  |
| 57 | CNES | VARCHAR2 | Y |  |
| 58 | ID_SETOR_EXECUTANTE | NUMBER | Y |  |

---

## IDCECRER.PROCEDIMENTOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | PRC_ID | NUMBER | N |  |
| 2 | NOME | VARCHAR2 | Y |  |
| 3 | NR_LINHAS | NUMBER | Y |  |
| 4 | NR_COLUNAS | NUMBER | Y |  |
| 5 | MODALIDADE | VARCHAR2 | Y |  |

---

## IDCECRER.RS_ANA_ABA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_ABA | NUMBER | N |  |
| 2 | NM_ABA | VARCHAR2 | Y |  |
| 3 | DS_FILTRO_ABA | VARCHAR2 | Y |  |
| 4 | ID_PAGE_STR | VARCHAR2 | Y |  |
| 5 | SN_OBRIGATORIO | CHAR | Y |  |
| 6 | SN_ATIVO | CHAR | Y |  |
| 7 | DT_CADASTRO | DATE | N |  |
| 8 | DT_ALTERACAO | DATE | Y |  |
| 9 | ID_ABA_SUPERIOR | NUMBER | Y |  |

---

## IDCECRER.RS_ANA_ABA_EXAME_UNIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_ABA_EXAME_UNIDADE | NUMBER | N |  |
| 2 | ID_ABA | NUMBER | N |  |
| 3 | ID_PROCEDIMENTO_UNIDADE | NUMBER | Y |  |
| 4 | ID_EXAME_UNIDADE | NUMBER | Y |  |
| 5 | NR_ORDEM | NUMBER | N |  |
| 6 | SN_VISIVEL | CHAR | Y |  |
| 7 | SN_ATIVO | CHAR | Y |  |
| 8 | DT_CADASTRO | DATE | N |  |
| 9 | DT_ALTERACAO | DATE | Y |  |

---

## IDCECRER.RS_ANA_ANAMNESE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_ANAMNESE | NUMBER | N |  |
| 2 | ID_USUARIO_UNIDADE | NUMBER | N |  |
| 3 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 4 | DS_MOTIVO_EXAME | VARCHAR2 | Y |  |
| 5 | DS_EVOLUCAO_ASSISTENCIAL | VARCHAR2 | Y |  |
| 6 | VL_AMBULATOTIAL_IODETO_DOSE | NUMBER | Y |  |
| 7 | DT_AMBULATORIAL_IODETO | DATE | Y |  |
| 8 | ID_CINTILOGRAFIA | NUMBER | Y |  |
| 9 | ID_CONDUTA_MEDICA | NUMBER | Y |  |
| 10 | ID_DECLUTICAO | NUMBER | Y |  |
| 11 | ID_ENEMA | NUMBER | Y |  |
| 12 | ID_HISTERO | NUMBER | Y |  |
| 13 | ID_HISTORICO_ALERGIA | NUMBER | Y |  |
| 14 | ID_MAMAI | NUMBER | Y |  |
| 15 | ID_MAMAII | NUMBER | Y |  |
| 16 | ID_ONCO_PETCTI | NUMBER | Y |  |
| 17 | ID_ONCO_PETCTII | NUMBER | Y |  |
| 18 | ID_ONCO_PETCTIII | NUMBER | Y |  |
| 19 | ID_PETCTI | NUMBER | Y |  |
| 20 | ID_PETCTII | NUMBER | Y |  |
| 21 | ID_REED | NUMBER | Y |  |
| 22 | ID_RESSONANCIA | NUMBER | Y |  |
| 23 | ID_SOLICITACAO | NUMBER | Y |  |
| 24 | ID_TC_RM_ABDOMEN | NUMBER | Y |  |
| 25 | ID_TC_RM_TORAX | NUMBER | Y |  |
| 26 | ID_CINTILOGRAFIA_OSSEA | NUMBER | Y |  |
| 27 | ID_ESPECTRO_PROSTATAI | NUMBER | Y |  |
| 28 | ID_ESPECTRO_PROSTATAII | NUMBER | Y |  |
| 29 | ID_PROCEDIMENTO | NUMBER | Y |  |
| 30 | DT_CADASTRO | DATE | N |  |
| 31 | DT_ALTERACAO | DATE | Y |  |
| 32 | SN_ATIVO | CHAR | Y |  |
| 33 | NR_PESO_PACIENTE | NUMBER | Y |  |
| 34 | NR_ALTURA_PACIENTE | NUMBER | Y |  |
| 35 | ID_PACIENTE_UNIDADE | NUMBER | Y |  |
| 36 | ID_PROCEDIMENTO_UNIDADE | NUMBER | Y |  |
| 37 | DS_TELEFONE_CONTATO | VARCHAR2 | Y |  |

---

## IDCECRER.RS_ANA_CINTILOGRAFIA_OSSEA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_CINTILOGRAFIA_OSSEA | NUMBER | N |  |
| 2 | SN_EXAMES_ANTERIORES | CHAR | Y |  |
| 3 | SN_SENTE_DOR | CHAR | Y |  |
| 4 | DS_LOCAL_DOR | VARCHAR2 | Y |  |
| 5 | DS_QUANTO_TEMPO | VARCHAR2 | Y |  |
| 6 | DS_FRATURAS_LESOES | VARCHAR2 | Y |  |
| 7 | DS_LOCAL_FRATURA_LESOES | VARCHAR2 | Y |  |
| 8 | DS_QUANDO | VARCHAR2 | Y |  |
| 9 | DS_CANCER | VARCHAR2 | Y |  |
| 10 | DS_ONDE_CANCER | VARCHAR2 | Y |  |
| 11 | DS_QUANDO_CANCER | VARCHAR2 | Y |  |
| 12 | DS_TEMPO_QUIMIOTERAPIA | VARCHAR2 | Y |  |
| 13 | DS_TEMPO_RADIOTERAPIA | VARCHAR2 | Y |  |
| 14 | DS_ENTREVISTADOR | VARCHAR2 | Y |  |
| 15 | SN_ATIVO | CHAR | Y |  |
| 16 | DT_CADASTRO | DATE | N |  |
| 17 | DT_ALTERACAO | DATE | Y |  |

---

## IDCECRER.RS_ANA_CIN_MIOCARDICA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_CINTILOGRAFIA | NUMBER | N |  |
| 2 | TP_PROTOCOLO | CHAR | Y |  |
| 3 | DT_REPOUSO | DATE | Y |  |
| 4 | DT_ESTERESSE | DATE | Y |  |
| 5 | SN_ASSINTOMATICO | CHAR | Y |  |
| 6 | SN_DOR_TORACICA_TIPICA | CHAR | Y |  |
| 7 | SN_CANSACO | CHAR | Y |  |
| 8 | SN_HAS | CHAR | Y |  |
| 9 | SN_DISLIPIDEMIA | CHAR | Y |  |
| 10 | SN_DISPINEIA | CHAR | Y |  |
| 11 | SN_H_FAMILIAR | CHAR | Y |  |
| 12 | SN_BOMBINHA | CHAR | Y |  |
| 13 | SN_BRE | CHAR | Y |  |
| 14 | SN_OBESO | CHAR | Y |  |
| 15 | DS_QUANTO_TEMPO | VARCHAR2 | Y |  |
| 16 | SN_DIFICULDADE_SUBIR_LADEIRA | CHAR | Y |  |
| 17 | DS_DIFICULDADE_SUBIR_LADEIRA | CHAR | Y |  |
| 18 | SN_IAM_PREVIO | CHAR | Y |  |
| 19 | DT_IAM_PREVIO | DATE | Y |  |
| 20 | DS_CATETERISMO | VARCHAR2 | Y |  |
| 21 | SN_MARCA_PASSO | CHAR | Y |  |
| 22 | DT_COLOCACAO_MARCA_PASSO | DATE | Y |  |
| 23 | SN_ATIVO | CHAR | Y |  |
| 24 | DT_CADASTRO | DATE | N |  |
| 25 | DT_ALTERACAO | DATE | Y |  |

---

## IDCECRER.RS_ANA_CONDUTA_MEDICA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_CONDUTA_MEDICA | NUMBER | N |  |
| 2 | TP_CONTRASTE_UTILIZADO | CHAR | Y |  |
| 3 | SN_REACAO_ADVERSA | CHAR | Y |  |
| 4 | TP_REACAO_ADVERSA | CHAR | Y |  |
| 5 | DS_REACAO_TRATAMENTO | VARCHAR2 | Y |  |
| 6 | DS_PUNCAO_VENOSA | VARCHAR2 | Y |  |
| 7 | TP_INJECAO_CONTRASTE | CHAR | Y |  |
| 8 | DS_REDE_VENOSA | VARCHAR2 | Y |  |
| 9 | NR_PUNCAO | NUMBER | Y |  |
| 10 | SN_EXTRAVAZAMENTO | CHAR | Y |  |
| 11 | DS_EXTR_TRATAMENTO | VARCHAR2 | Y |  |
| 12 | SN_PREPARO_ANT_ALERGICO | CHAR | Y |  |
| 13 | DS_MOTIVO_PREPARO | VARCHAR2 | Y |  |
| 14 | SN_CONTRASTE_NAO_IONICO | CHAR | Y |  |
| 15 | DS_CONTRASTE | VARCHAR2 | Y |  |
| 16 | SN_ACO_ANESTESICO | CHAR | Y |  |
| 17 | DS_ANESTESICO | VARCHAR2 | Y |  |
| 18 | DT_RECONSULTA | DATE | Y |  |
| 19 | DS_RECONSULTA | VARCHAR2 | Y |  |
| 20 | SN_ATIVO | CHAR | Y |  |
| 21 | DT_CADASTRO | DATE | N |  |
| 22 | DT_ALTERACAO | DATE | Y |  |
| 23 | DS_MOTIVO_TIPO_CONTRASTE | VARCHAR2 | Y |  |

---

## IDCECRER.RS_ANA_DECLUTICAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_DECLUTICAO | NUMBER | N |  |
| 2 | DS_QUEIXA_PACIENTE | VARCHAR2 | Y |  |
| 3 | SN_CANCER | CHAR | Y |  |
| 4 | DS_LOCAL_CANCER | VARCHAR2 | Y |  |
| 5 | SN_AVC | CHAR | Y |  |
| 6 | SN_TCE | CHAR | Y |  |
| 7 | SN_RGE | CHAR | Y |  |
| 8 | SN_INTUBACAO_RECENTE | CHAR | Y |  |
| 9 | QT_DIAS_INTUBACAO | NUMBER | Y |  |
| 10 | SN_PNEUMONIA | CHAR | Y |  |
| 11 | SN_GRIPES_PROLONGADAS | CHAR | Y |  |
| 12 | SN_TRAQUEOSTOMIA | CHAR | Y |  |
| 13 | SN_CIRURGIAS | CHAR | Y |  |
| 14 | DS_CIRURGIAS | VARCHAR2 | Y |  |
| 15 | SN_SONDA | CHAR | Y |  |
| 16 | SN_GASTROTOMIA | CHAR | Y |  |
| 17 | SN_JEJUNOSTOMIA | CHAR | Y |  |
| 18 | DS_OUTROS | VARCHAR2 | Y |  |
| 19 | SN_ALIMENTACAO_VIA_ORAL | CHAR | Y |  |
| 20 | TP_CONSISTENCIA | CHAR | Y |  |
| 21 | SN_FONOAUDIOLOGO | CHAR | Y |  |
| 22 | SN_DECLUTICAO_ANTERIORES | CHAR | Y |  |
| 23 | DS_NOME | VARCHAR2 | Y |  |
| 24 | DS_PARENTESCO | VARCHAR2 | Y |  |
| 25 | SN_ATIVO | CHAR | Y |  |
| 26 | DT_CADASTRO | DATE | N |  |
| 27 | DT_ALTERACAO | DATE | Y |  |

---

## IDCECRER.RS_ANA_ENEMA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_ENEMA | NUMBER | N |  |
| 2 | SN_SANGRAMENTO_ANAL | CHAR | Y |  |
| 3 | SN_FEZES_PRETAS | CHAR | Y |  |
| 4 | SN_HEMORROIDAS | CHAR | Y |  |
| 5 | SN_CONSTIPACAO | CHAR | Y |  |
| 6 | SN_DIARREIA | CHAR | Y |  |
| 7 | SN_FEZES_AMOLECIDAS | CHAR | Y |  |
| 8 | SN_PERDA_FEZES | CHAR | Y |  |
| 9 | SN_DOR_ABDOMINAL | CHAR | Y |  |
| 10 | DS_DOR_ABDOMINAL | VARCHAR2 | Y |  |
| 11 | SN_CIRURGIAS_PREVIAS | CHAR | Y |  |
| 12 | DS_CIRURGIAS_PREVIAS | VARCHAR2 | Y |  |
| 13 | SN_COLONOSCOPIA | CHAR | Y |  |
| 14 | SN_EXAMES_ANTERIORES | CHAR | Y |  |
| 15 | SN_PIOPSIA_INTESTINO | CHAR | Y |  |
| 16 | SN_ATIVO | CHAR | Y |  |
| 17 | DT_CADASTRO | DATE | N |  |
| 18 | DT_ALTERACAO | DATE | Y |  |

---

## IDCECRER.RS_ANA_ESPEC_PROSTATAI

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_ESPECTRO_PROSTATAI | NUMBER | N |  |
| 2 | SN_PSA | CHAR | Y |  |
| 3 | DT_PSA_0 | DATE | Y |  |
| 4 | VL_PSATOT_0 | NUMBER | Y |  |
| 5 | VL_PSA_LIV_0 | NUMBER | Y |  |
| 6 | VL_RELACAO_0 | NUMBER | Y |  |
| 7 | DT_PSA_1 | DATE | Y |  |
| 8 | VL_PSATOT_1 | NUMBER | Y |  |
| 9 | VL_PSA_LIV_1 | NUMBER | Y |  |
| 10 | VL_RELACAO_1 | NUMBER | Y |  |
| 11 | DT_PSA_2 | DATE | Y |  |
| 12 | VL_PSATOT_2 | NUMBER | Y |  |
| 13 | VL_PSA_LIV_2 | NUMBER | Y |  |
| 14 | VL_RELACAO_2 | NUMBER | Y |  |
| 15 | SN_BIOPSIA_PROSTATA | CHAR | Y |  |
| 16 | DT_BIOPSIA_0 | DATE | Y |  |
| 17 | DS_RESULTADO_0 | VARCHAR2 | Y |  |
| 18 | DT_BIOPSIA_1 | DATE | Y |  |
| 19 | DS_RESULTADO_1 | VARCHAR2 | Y |  |
| 20 | DT_BIOPSIA_2 | DATE | Y |  |
| 21 | DS_RESULTADO_2 | VARCHAR2 | Y |  |
| 22 | SN_ECOGRAFIA | CHAR | Y |  |
| 23 | SN_ESPECTROSCOPIA | CHAR | Y |  |
| 24 | SN_CIRURGIA_PROSTATA | CHAR | Y |  |
| 25 | TP_CIRURGIA_PROSTATA | CHAR | Y |  |
| 26 | SN_ATIVO | CHAR | Y |  |
| 27 | DT_CADASTRO | DATE | N |  |
| 28 | DT_ALTERACAO | DATE | Y |  |

---

## IDCECRER.RS_ANA_ESPEC_PROSTATAII

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_ESPECTRO_PROSTATAII | NUMBER | N |  |
| 2 | SN_DOENCA_PROSTATA | CHAR | Y |  |
| 3 | DS_DOENCA_PROSTATA | VARCHAR2 | Y |  |
| 4 | TP_TRATAMENTO | CHAR | Y |  |
| 5 | SN_CANCER_PROSTATA | CHAR | Y |  |
| 6 | DS_CANCER_PROSTATA | VARCHAR2 | Y |  |
| 7 | DS_IMAGEM_ANATOMICA | VARCHAR2 | Y |  |
| 8 | TP_IMAGEM_ANATOMICA | CHAR | Y |  |
| 9 | DS_PROSE_IMAGEM | VARCHAR2 | Y |  |
| 10 | DS_RESULTADO_BIOPSIA | VARCHAR2 | Y |  |
| 11 | SN_ATIVO | CHAR | Y |  |
| 12 | DT_CADASTRO | DATE | N |  |
| 13 | DT_ALTERACAO | DATE | Y |  |

---

## IDCECRER.RS_ANA_HISTEROSSALPINGOGRAFIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_HISTERO | NUMBER | N |  |
| 2 | DT_ULTIMA_MENSTRUACAO_INI | DATE | Y |  |
| 3 | DT_ULTIMA_MENSTRUACAO_FIN | DATE | Y |  |
| 4 | SN_ANTICONSEPCIONAL_ORAL | CHAR | Y |  |
| 5 | TP_GRAVIDEZ_ANTERIOR | CHAR | Y |  |
| 6 | SN_ABORTO | CHAR | Y |  |
| 7 | TP_ABORTO | CHAR | Y |  |
| 8 | SN_DIU | CHAR | Y |  |
| 9 | SN_CURETAGEM_PREVIA | CHAR | Y |  |
| 10 | DS_CURETAGEM_PREVIA | VARCHAR2 | Y |  |
| 11 | SN_LIGADURA_TROMPAS | CHAR | Y |  |
| 12 | SN_CIRURGIA_PREVIA | CHAR | Y |  |
| 13 | SN_GRAVIDEZ_ECTOPICA | CHAR | Y |  |
| 14 | SN_INFECCAO_GINECOLOGICA | CHAR | Y |  |
| 15 | SN_COLICAS_MENSTRUACAO | CHAR | Y |  |
| 16 | SN_PARTO_CESARIA | CHAR | Y |  |
| 17 | SN_ATIVO | CHAR | Y |  |
| 18 | DT_CADASTRO | DATE | N |  |
| 19 | DT_ALTERACAO | DATE | Y |  |
| 20 | VL_CURETAGEM_PREVIA | NUMBER | Y |  |

---

## IDCECRER.RS_ANA_HISTORICO_ALERGIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_HISTORICO_ALERGIA | NUMBER | N |  |
| 2 | SN_CONTRASTE_ISOLADO | CHAR | Y |  |
| 3 | DS_CONTRASTE_ISOLADO | VARCHAR2 | Y |  |
| 4 | SN_REACAO_ALERGICA | CHAR | Y |  |
| 5 | DS_REACAO_ALERGICA | VARCHAR2 | Y |  |
| 6 | SN_TIPO_ALERGIA | CHAR | Y |  |
| 7 | DS_TIPO_ALERGIA | VARCHAR2 | Y |  |
| 8 | SN_ASMA_BRONQUICA | CHAR | Y |  |
| 9 | DS_ASMABROQUICA | VARCHAR2 | Y |  |
| 10 | SN_BOMBINHA | CHAR | Y |  |
| 11 | DS_BOMBINHA | VARCHAR2 | Y |  |
| 12 | SN_CARDIOPATIA | CHAR | Y |  |
| 13 | SN_DIABETE | CHAR | Y |  |
| 14 | SN_INF_RENAL | CHAR | Y |  |
| 15 | SN_TIREODE | CHAR | Y |  |
| 16 | SN_HAS | CHAR | Y |  |
| 17 | SN_MIELOMA | CHAR | Y |  |
| 18 | SN_REUMATISMO | CHAR | Y |  |
| 19 | SN_HEPATITE | CHAR | Y |  |
| 20 | SN_MEDICAMENTO | CHAR | Y |  |
| 21 | DS_MEDICAMENTO | VARCHAR2 | Y |  |
| 22 | SN_MEDICACAO_NOVA | CHAR | Y |  |
| 23 | DS_MEDICACAO_NOVA | VARCHAR2 | Y |  |
| 24 | SN_GESTACAO | CHAR | Y |  |
| 25 | SN_ATIVO | CHAR | Y |  |
| 26 | DT_CADASTRO | DATE | N |  |
| 27 | DT_ALTERACAO | DATE | Y |  |
| 28 | TP_CONTRASTE | CHAR | Y |  |
| 29 | NR_DCE | NUMBER | Y |  |
| 30 | NR_CREATININA | NUMBER | Y |  |
| 31 | SN_HAS_DIALISE | CHAR | Y |  |
| 32 | SN_HAS_TRANSPLANTE_RENAL | CHAR | Y |  |
| 33 | SN_HAS_RIM_UNICO | CHAR | Y |  |
| 34 | SN_HAS_CANCER_RENAL | CHAR | Y |  |
| 35 | SN_HAS_CIRURGIA_RENAL | CHAR | Y |  |
| 36 | DS_DIABETES_MEDICAMENTO | VARCHAR2 | Y |  |
| 37 | DS_HAS_MEDICAMENTO | VARCHAR2 | Y |  |
| 38 | DS_OBSERVACAO_DOENCAS_CRONICAS | VARCHAR2 | Y |  |
| 39 | SN_DOENCA_RENAL | CHAR | Y |  |

---

## IDCECRER.RS_ANA_MAMAI

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_MAMAI | NUMBER | N |  |
| 2 | DS_PROFISSAO | VARCHAR2 | Y |  |
| 3 | SN_MAMOGRAFIA | CHAR | Y |  |
| 4 | TP_QUANTO_TEMPO | CHAR | Y |  |
| 5 | SN_EXAME_FISICO_MAMA | CHAR | Y |  |
| 6 | SN_MAE | CHAR | Y |  |
| 7 | SN_DIAGNOSTICO_MAE | CHAR | Y |  |
| 8 | SN_IRMA | CHAR | Y |  |
| 9 | SN_DIAGNOSTICO_IRMA | CHAR | Y |  |
| 10 | SN_FILHA | CHAR | Y |  |
| 11 | SN_DIAGNOSTICO_FILHA | CHAR | Y |  |
| 12 | SN_OUTROS_PARENTES | CHAR | Y |  |
| 13 | NR_IDADE_PRIMEIRA_MENSTRUACAO | NUMBER | Y |  |
| 14 | TP_MENSTRUA | CHAR | Y |  |
| 15 | NR_IDADE_PAROU_MENSTRUAR | NUMBER | Y |  |
| 16 | DT_ULTIMA_MENSTRUACAO | DATE | Y |  |
| 17 | SN_FILHOS | CHAR | Y |  |
| 18 | SN_AMAMENTOU | CHAR | Y |  |
| 19 | NR_MESES_AMAMENTACAO | NUMBER | Y |  |
| 20 | NR_IDADE_QUANDO_PRIMEIRO_FILHO | NUMBER | Y |  |
| 21 | SN_REPOSICAO_HORMONAL | CHAR | Y |  |
| 22 | TP_MEDICAMENTO | CHAR | Y |  |
| 23 | SN_ATIVO | CHAR | Y |  |
| 24 | DT_CADASTRO | DATE | N |  |
| 25 | DT_ALTERACAO | DATE | Y |  |
| 26 | SN_DIAGNOSTICO_OUTROS_PARENTES | CHAR | Y |  |

---

## IDCECRER.RS_ANA_MAMAII

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_MAMAII | NUMBER | N |  |
| 2 | SN_NODULO_DIR | CHAR | Y |  |
| 3 | SN_NODULO_ESQ | CHAR | Y |  |
| 4 | SN_SECRECAO_DIR | CHAR | Y |  |
| 5 | SN_SECRECAO_ESQ | CHAR | Y |  |
| 6 | SN_DOR_DIR | CHAR | Y |  |
| 7 | SN_DOR_ESQ | CHAR | Y |  |
| 8 | SN_OUTRO_DIR | CHAR | Y |  |
| 9 | SN_OUTRO_ESQ | CHAR | Y |  |
| 10 | DS_DECRICAO | VARCHAR2 | Y |  |
| 11 | IMG_MAMA | BLOB | Y |  |
| 12 | SN_PUNCAO_DIR | CHAR | Y |  |
| 13 | SN_PUNCAO_ESQ | CHAR | Y |  |
| 14 | DT_PUNCAO | DATE | Y |  |
| 15 | SN_CORE_BIOPSIA_DIR | CHAR | Y |  |
| 16 | SN_CORE_BIOPSIA_ESQ | CHAR | Y |  |
| 17 | DT_CORE_BIOPSIA | DATE | Y |  |
| 18 | SN_BIOPSIA_CIRURGICA_DIR | CHAR | Y |  |
| 19 | SN_BIOPSIA_CIRURGICA_ESQ | CHAR | Y |  |
| 20 | DT_BIOPSIA_CIRURGICA | DATE | Y |  |
| 21 | SN_RETIRADA_CANCER_DIR | CHAR | Y |  |
| 22 | SN_RETIRADA_CANCER_ESQ | CHAR | Y |  |
| 23 | DT_RETIRADA_CANCER | DATE | Y |  |
| 24 | SN_MESTECTOMIA_DIR | CHAR | Y |  |
| 25 | SN_MESTECTOMIA_ESQ | CHAR | Y |  |
| 26 | DT_MESTECTOMIA | DATE | Y |  |
| 27 | SN_RADIOTERAPIA_DIR | CHAR | Y |  |
| 28 | SN_RADIOTERAPIA_ESQ | CHAR | Y |  |
| 29 | DT_RADIOTERAPIA | DATE | Y |  |
| 30 | SN_RECONTRUCAO_MAMARIA_DIR | CHAR | Y |  |
| 31 | SN_RECONTRUCAO_MAMARIA_ESQ | CHAR | Y |  |
| 32 | DT_RECONTRUCAO_MAMARIA | DATE | Y |  |
| 33 | SN_MAMOPLASTIA_DIR | CHAR | Y |  |
| 34 | SN_MAMOPLASTIA_ESQ | CHAR | Y |  |
| 35 | DT_MAMOPLASTIA | DATE | Y |  |
| 36 | SN_SILICONE_DIR | CHAR | Y |  |
| 37 | SN_SILICONE_ESQ | CHAR | Y |  |
| 38 | DT_SILICONE | DATE | Y |  |
| 39 | DS_BIRADS | VARCHAR2 | Y |  |
| 40 | SN_BIRADS_0 | CHAR | Y |  |
| 41 | SN_BIRADS_1 | CHAR | Y |  |
| 42 | SN_BIRADS_2 | CHAR | Y |  |
| 43 | SN_BIRADS_3 | CHAR | Y |  |
| 44 | SN_BIRADS_4A | CHAR | Y |  |
| 45 | SN_BIRADS_4B | CHAR | Y |  |
| 46 | SN_BIRADS_4C | CHAR | Y |  |
| 47 | SN_BIRADS_5 | CHAR | Y |  |
| 48 | SN_BIRADS_6 | CHAR | Y |  |
| 49 | SN_DESNSIDADE_BIRADS_1 | CHAR | Y |  |
| 50 | SN_DESNSIDADE_BIRADS_2 | CHAR | Y |  |
| 51 | SN_DESNSIDADE_BIRADS_3 | CHAR | Y |  |
| 52 | SN_DESNSIDADE_BIRADS_4 | CHAR | Y |  |
| 53 | SN_DESNSIDADE_TABAR_1 | CHAR | Y |  |
| 54 | SN_DESNSIDADE_TABAR_2 | CHAR | Y |  |
| 55 | SN_DESNSIDADE_TABAR_3 | CHAR | Y |  |
| 56 | SN_DESNSIDADE_TABAR_4 | CHAR | Y |  |
| 57 | SN_DESNSIDADE_TABAR_5 | CHAR | Y |  |
| 58 | SN_ATIVO | CHAR | Y |  |
| 59 | DT_CADASTRO | DATE | N |  |
| 60 | DT_ALTERACAO | DATE | Y |  |
| 61 | DS_ALTERACAO_MAMA | VARCHAR2 | Y |  |

---

## IDCECRER.RS_ANA_ONCO_PETCTI

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_ONCO_PETCTI | NUMBER | N |  |
| 2 | NR_PET_CT_NUMERO | NUMBER | Y |  |
| 3 | DS_TECNOLOGO | VARCHAR2 | Y |  |
| 4 | TP_PREPARO_ADEQUADO_EXAME | CHAR | Y |  |
| 5 | TP_ORIENTACAO_EXAME | CHAR | Y |  |
| 6 | TP_JEJUM | CHAR | Y |  |
| 7 | TP_HIPERTENSAO | CHAR | Y |  |
| 8 | TP_DIABETES | CHAR | Y |  |
| 9 | TP_ALERGIA | CHAR | Y |  |
| 10 | TP_ALERGIA_CONTRASTE | CHAR | Y |  |
| 11 | TP_GRAVIDEZ | CHAR | Y |  |
| 12 | TP_AMAMENTACAO | CHAR | Y |  |
| 13 | TP_BRONQUITE_ASMA | CHAR | Y |  |
| 14 | TP_CANCER_TIREOIDE | CHAR | Y |  |
| 15 | DS_MEDICACOES_USO | VARCHAR2 | Y |  |
| 16 | SN_VERBALIZA_NOME | CHAR | Y |  |
| 17 | SN_NOME_DATA_NASCIMENTO | CHAR | Y |  |
| 18 | SN_PULSEIRA | CHAR | Y |  |
| 19 | SN_ATIVO | CHAR | Y |  |
| 20 | DT_CADASTRO | DATE | N |  |
| 21 | DT_ALTERACAO | DATE | Y |  |

---

## IDCECRER.RS_ANA_ONCO_PETCTII

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_ONCO_PETCTII | NUMBER | N |  |
| 2 | TP_SALA_REPOUSO | CHAR | Y |  |
| 3 | VL_GLICEMIA | NUMBER | Y |  |
| 4 | VL_PESO | NUMBER | Y |  |
| 5 | VL_ALTURA | NUMBER | Y |  |
| 6 | DT_INJECAO_F_FDG | DATE | Y |  |
| 7 | VL_ATIVIDADE_INJETADA | NUMBER | Y |  |
| 8 | DT_INICIO_REPOUSO | DATE | Y |  |
| 9 | DT_INICIO_IMAGEM | DATE | Y |  |
| 10 | DS_LOCAL_PUNCAO_VENOSA | VARCHAR2 | Y |  |
| 11 | SN_REACAO | CHAR | Y |  |
| 12 | DS_REACAO | VARCHAR2 | Y |  |
| 13 | DS_CONDUTA | VARCHAR2 | Y |  |
| 14 | SN_INSTALADOSF | CHAR | Y |  |
| 15 | VL_CONTRASTE_VIA_ORAL | NUMBER | Y |  |
| 16 | VL_COPOS_CONTRASTE | NUMBER | Y |  |
| 17 | VL_H2O | NUMBER | Y |  |
| 18 | VL_COPOS_H2O | NUMBER | Y |  |
| 19 | VL_DIAPAZAN | NUMBER | Y |  |
| 20 | VL_DIURETICONUMERIC | NUMBER | Y |  |
| 21 | DT_HORARIO_DIURETICO | DATE | Y |  |
| 22 | SN_CIRURGIA | CHAR | Y |  |
| 23 | DS_CIRURGIA | VARCHAR2 | Y |  |
| 24 | DT_CIRURGIA | DATE | Y |  |
| 25 | SN_QUIMIOTERAPIA | CHAR | Y |  |
| 26 | DT_INICIO_QUIMIOTERAPIA | DATE | Y |  |
| 27 | DT_FIM_QUIMIOTERAPIA | DATE | Y |  |
| 28 | SN_RADIOTERAPIA | CHAR | Y |  |
| 29 | DT_INICIO_RADIOTERAPIA | DATE | Y |  |
| 30 | DT_FIM_RADIOTERAPIA | DATE | Y |  |
| 31 | DS_DIAGNOSTICO | VARCHAR2 | Y |  |
| 32 | DS_AREA_AVALIADA | VARCHAR2 | Y |  |
| 33 | SN_ATIVO | CHAR | Y |  |
| 34 | DT_CADASTRO | DATE | N |  |
| 35 | DT_ALTERACAO | DATE | Y |  |
| 36 | DS_BIOPSIA_CIRURGIA | VARCHAR2 | Y |  |

---

## IDCECRER.RS_ANA_ONCO_PETCTIII

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_ONCO_PETCTIII | NUMBER | N |  |
| 2 | SN_DIAGNOSTICO | CHAR | Y |  |
| 3 | SN_ESTADIAMENTO | CHAR | Y |  |
| 4 | SN_SEGUIMENTO | CHAR | Y |  |
| 5 | SN_TRATAMENTO | CHAR | Y |  |
| 6 | DT_CONSULTA_ONCOLOGICA | DATE | Y |  |
| 7 | DT_HORARIO_CONSULTA | DATE | Y |  |
| 8 | SN_CABECA_PESCOCO | CHAR | Y |  |
| 9 | SN_TIREOIDE | CHAR | Y |  |
| 10 | SN_MELANOMA | CHAR | Y |  |
| 11 | SN_LINFOMA | CHAR | Y |  |
| 12 | SN_PULMAO | CHAR | Y |  |
| 13 | SN_ESOFAGO | CHAR | Y |  |
| 14 | SN_COLATERAL | CHAR | Y |  |
| 15 | SN_ESTOMAGO | CHAR | Y |  |
| 16 | SN_PANCREAS | CHAR | Y |  |
| 17 | SN_SARCOMAS | CHAR | Y |  |
| 18 | SN_MAMAS | CHAR | Y |  |
| 19 | SN_GINOCOLOGICO | CHAR | Y |  |
| 20 | DS_REVISADO_POR | VARCHAR2 | Y |  |
| 21 | DS_OUTROS_EXAMES | VARCHAR2 | Y |  |
| 22 | SN_ATIVO | CHAR | Y |  |
| 23 | DT_CADASTRO | DATE | N |  |
| 24 | DT_ALTERACAO | DATE | Y |  |

---

## IDCECRER.RS_ANA_PETCTI

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_PETCTI | NUMBER | N |  |
| 2 | DS_DIAGNOSTICO_MEDICO | VARCHAR2 | Y |  |
| 3 | DS_CONHECIMENTO_DOENCA | VARCHAR2 | Y |  |
| 4 | DS_DOENCAS_PASSADAS | VARCHAR2 | Y |  |
| 5 | DS_HISTORICO_FAMILIAR | VARCHAR2 | Y |  |
| 6 | DS_MEDICACOES_USO | VARCHAR2 | Y |  |
| 7 | DS_CONCIENCIA | VARCHAR2 | Y |  |
| 8 | DS_ORIENTACAO | VARCHAR2 | Y |  |
| 9 | DS_COMPORTAMENTO | VARCHAR2 | Y |  |
| 10 | SN_DIFICULDADE_COMUNICACAO | CHAR | Y |  |
| 11 | DS_DIFICULDADE_COMUNICACAO | VARCHAR2 | Y |  |
| 12 | TP_NIVEL_CONCIENCIA | CHAR | Y |  |
| 13 | TP_COMPORTAMENTO | CHAR | Y |  |
| 14 | TP_COMUNICACAO | CHAR | Y |  |
| 15 | TP_ALIMENTACAO | CHAR | Y |  |
| 16 | SN_VISAO | CHAR | Y |  |
| 17 | SN_AUDICAO | CHAR | Y |  |
| 18 | SN_ALFATO | CHAR | Y |  |
| 19 | SN_TATO | CHAR | Y |  |
| 20 | DS_DOR | VARCHAR2 | Y |  |
| 21 | DS_LOCAL | VARCHAR2 | Y |  |
| 22 | DS_TEMPO | VARCHAR2 | Y |  |
| 23 | TP_OXIGENACAO | CHAR | Y |  |
| 24 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 25 | SN_ACEITACAO_ALIMENTAR | CHAR | Y |  |
| 26 | DS_PERDA_GANHO_PESO | VARCHAR2 | Y |  |
| 27 | SN_ATIVO | CHAR | Y |  |
| 28 | DT_CADASTRO | DATE | N |  |
| 29 | DT_ALTERACAO | DATE | Y |  |

---

## IDCECRER.RS_ANA_PETCTII

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_PETCTII | NUMBER | N |  |
| 2 | TP_ELIMINACAO_URINARIA | CHAR | Y |  |
| 3 | TP_ELIMINACAO_INTESTINAIS | CHAR | Y |  |
| 4 | DS_FREQUENCIA_ELIMINACAO | VARCHAR2 | Y |  |
| 5 | SN_INTEGRIDADE_PELE | CHAR | Y |  |
| 6 | DS_INTEGRIDADE_PELE | VARCHAR2 | Y |  |
| 7 | SN_MUCOSAS | CHAR | Y |  |
| 8 | DS_MUCOSAS | VARCHAR2 | Y |  |
| 9 | TP_SONO | CHAR | Y |  |
| 10 | DS_SONO | VARCHAR2 | Y |  |
| 11 | DS_OBSERVACAOES | VARCHAR2 | Y |  |
| 12 | SN_ALCOOLISMO | CHAR | Y |  |
| 13 | QT_TEMPO | NUMBER | Y |  |
| 14 | SN_FUMANTE | CHAR | Y |  |
| 15 | QT_CIGARROS | NUMBER | Y |  |
| 16 | VL_FR | NUMBER | Y |  |
| 17 | VL_TA | NUMBER | Y |  |
| 18 | VL_HGT | NUMBER | Y |  |
| 19 | VL_FC | NUMBER | Y |  |
| 20 | VL_TAX | NUMBER | Y |  |
| 21 | VL_STURACAO_PULSO | NUMBER | Y |  |
| 22 | SN_NECESSIDADE_ANESTESIA | CHAR | Y |  |
| 23 | DS_MOTIVO | VARCHAR2 | Y |  |
| 24 | DS_ALTERACOES_IMPRESSOES | VARCHAR2 | Y |  |
| 25 | SN_ATIVO | CHAR | Y |  |
| 26 | DT_CADASTRO | DATE | N |  |
| 27 | DT_ALTERACAO | DATE | Y |  |

---

## IDCECRER.RS_ANA_PROCEDIMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_PROCEDIMENTO | NUMBER | N |  |
| 2 | ID_SALA | NUMBER | Y |  |
| 3 | ID_TIPO_EXAME_COPIA | NUMBER | Y |  |
| 4 | ID_ANAMNESE | NUMBER | Y |  |
| 5 | SN_PEDIDO_MEDICO | CHAR | Y |  |
| 6 | SN_GRAVIDA | CHAR | Y |  |
| 7 | DS_ANALISE_CRITICA | VARCHAR2 | Y |  |
| 8 | DS_URGENCIA | VARCHAR2 | Y |  |
| 9 | SN_ANTECIPACAO_LAUDO | CHAR | Y |  |
| 10 | DS_DATA_HORA_MEDICO | VARCHAR2 | Y |  |
| 11 | SN_COPIA_EXAMES | CHAR | Y |  |
| 12 | NR_COPIA_EXAME | NUMBER | Y |  |
| 13 | DS_RELATORIO_MEDICO_ESPECIFICO | VARCHAR2 | Y |  |
| 14 | SN_MEDICINA_NUCLEAR | CHAR | Y |  |
| 15 | DS_MEDICINA_NUCLEAR | VARCHAR2 | Y |  |
| 16 | SN_RADIOLOGIA | CHAR | Y |  |
| 17 | DS_RADIOLOGIA | VARCHAR2 | Y |  |
| 18 | SN_RESSONANCIA | CHAR | Y |  |
| 19 | DS_RESSONANCIA | VARCHAR2 | Y |  |
| 20 | SN_TOMOGRAFIA | CHAR | Y |  |
| 21 | DS_TOMOGRAFIA | VARCHAR2 | Y |  |
| 22 | SN_ULTRASSONAGRAFIA | CHAR | Y |  |
| 23 | DS_ULTRASSONOGRAFIA | VARCHAR2 | Y |  |
| 24 | SN_OUTROS | CHAR | Y |  |
| 25 | DS_OUTROS | VARCHAR2 | Y |  |
| 26 | DS_COMPLEMENTACAO_EXAME | VARCHAR2 | Y |  |
| 27 | DT_CADASTRO | DATE | N |  |
| 28 | DT_ALTERACAO | DATE | Y |  |
| 29 | SN_ATIVO | CHAR | Y |  |

---

## IDCECRER.RS_ANA_REED

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_REED | NUMBER | N |  |
| 2 | TP_MOTIVO | CHAR | Y |  |
| 3 | TP_REGURGITACAO | CHAR | Y |  |
| 4 | TP_FEZES | CHAR | Y |  |
| 5 | DS_OUTROS_MOTIVOS | VARCHAR2 | Y |  |
| 6 | SN_DIFICULDADE_ENGOLIR | CHAR | Y |  |
| 7 | DS_DIFICULDADE_ENGOLIR | VARCHAR2 | Y |  |
| 8 | SN_ALIMENTO_TRANCAR | CHAR | Y |  |
| 9 | DS_ALIMENTO_TRANCAR | VARCHAR2 | Y |  |
| 10 | SN_DOR | CHAR | Y |  |
| 11 | DS_DOR | VARCHAR2 | Y |  |
| 12 | TP_CIRURGIA | CHAR | Y |  |
| 13 | SN_ENDOSCOPIA | CHAR | Y |  |
| 14 | TP_CIRURGIAII | CHAR | Y |  |
| 15 | DS_CIRURGIAII | VARCHAR2 | Y |  |
| 16 | SN_FEZ_CIRURGIA | CHAR | Y |  |
| 17 | TP_INTENSIDADE_CIRURGIA | CHAR | Y |  |
| 18 | SN_ATIVO | CHAR | Y |  |
| 19 | DT_CADASTRO | DATE | N |  |
| 20 | DT_ALTERACAO | DATE | Y |  |

---

## IDCECRER.RS_ANA_RESSONANCIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_RESSONANCIA | NUMBER | N |  |
| 2 | SN_MANIPULA_METAIS | CHAR | Y |  |
| 3 | DS_ATIVIDADE | VARCHAR2 | Y |  |
| 4 | SN_PROBLEMAS_RENAIS | CHAR | Y |  |
| 5 | SN_MARCA_PASSO | CHAR | Y |  |
| 6 | SN_CLIPS_CIRURGICO | CHAR | Y |  |
| 7 | SN_PLA_PAR_HAS_METALICAS | CHAR | Y |  |
| 8 | SN_VALVULA_CARDIACA | CHAR | Y |  |
| 9 | SN_DIU | CHAR | Y |  |
| 10 | SN_GESTANTE | CHAR | Y |  |
| 11 | SN_APARELHO_AUDITIVO | CHAR | Y |  |
| 12 | SN_PONTE_DENTARIA_MOVEL | CHAR | Y |  |
| 13 | SN_CLAUSTROFOBIA | CHAR | Y |  |
| 14 | SN_BRONQUITE_ASMA | CHAR | Y |  |
| 15 | SN_ALERGIA | CHAR | Y |  |
| 16 | DS_ALERGIA | VARCHAR2 | Y |  |
| 17 | SN_ALIMENTACAO | CHAR | Y |  |
| 18 | DS_ALIMENTACAO | VARCHAR2 | Y |  |
| 19 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 20 | SN_ATIVO | CHAR | Y |  |
| 21 | DT_CADASTRO | DATE | N |  |
| 22 | DT_ALTERACAO | DATE | Y |  |
| 23 | NR_DCE | NUMBER | Y |  |
| 24 | NR_CREATININA | NUMBER | Y |  |
| 25 | SN_DESFIBRILADOR | CHAR | Y |  |
| 26 | SN_IMPLANTE_COCLEAR | CHAR | Y |  |
| 27 | SN_TATUAGEM_RECENTE | CHAR | Y |  |
| 28 | SN_DIALISE | CHAR | Y |  |
| 29 | SN_TRANSPLANTE_RENAL | CHAR | Y |  |
| 30 | SN_RIM_UNICO | CHAR | Y |  |
| 31 | SN_CANCER_RENAL | CHAR | Y |  |
| 32 | SN_CIRURGIA_RENAL | CHAR | Y |  |
| 33 | SN_HAS | CHAR | Y |  |
| 34 | SN_DM | CHAR | Y |  |
| 35 | SN_EXAMES_ANTERIORES | CHAR | Y |  |
| 36 | DS_EXAMES_ANTERIORES | VARCHAR2 | Y |  |

---

## IDCECRER.RS_ANA_SOLICITACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_SOLICITACAO | NUMBER | N |  |
| 2 | DS_INFORMACAO_PASSAGEM | VARCHAR2 | Y |  |
| 3 | SN_ATIVO | CHAR | Y |  |
| 4 | DT_CADASTRO | DATE | N |  |
| 5 | DT_ALTERACAO | DATE | Y |  |

---

## IDCECRER.RS_ANA_TC_RM_ABDOMEN

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_TC_RM_ABDOMEN | NUMBER | N |  |
| 2 | DS_CIRURGIAS_PREVIAS | VARCHAR2 | Y |  |
| 3 | SN_MENSTRUA | CHAR | Y |  |
| 4 | SN_METODO_CONTRACEPTIVO | CHAR | Y |  |
| 5 | DS_METODO_CONTRACEPTIVO | VARCHAR2 | Y |  |
| 6 | SN_HORMONIO | CHAR | Y |  |
| 7 | DS_HORMONIO | VARCHAR2 | Y |  |
| 8 | SN_DOR_COLICA_MENSTRUAL | CHAR | Y |  |
| 9 | SN_SANGRAMENTO_AUMENTADO | CHAR | Y |  |
| 10 | SN_QUIMIOTERAPIA | CHAR | Y |  |
| 11 | SN_RADIOTERAPIA | CHAR | Y |  |
| 12 | SN_FUMA_JA_FUMOU | CHAR | Y |  |
| 13 | DS_FUMA_JA_FUMOU | VARCHAR2 | Y |  |
| 14 | SN_BEBIDA_ALCOOLICA | CHAR | Y |  |
| 15 | DS_BEBIDA_ALCOOLICA | VARCHAR2 | Y |  |
| 16 | SN_HEPATITE | CHAR | Y |  |
| 17 | DS_HEPATITE | VARCHAR2 | Y |  |
| 18 | SN_TRANSFUSAO_SANGUINEA | CHAR | Y |  |
| 19 | DS_TRANSFUSAO_SANGUINEA | VARCHAR2 | Y |  |
| 20 | SN_ATIVO | CHAR | Y |  |
| 21 | DT_CADASTRO | DATE | N |  |
| 22 | DT_ALTERACAO | DATE | Y |  |

---

## IDCECRER.RS_ANA_TC_RM_TORAX

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_TC_RM_TORAX | NUMBER | N |  |
| 2 | SN_TOMOGRAFIA_TORAX | CHAR | Y |  |
| 3 | DS_TOMOGRAFIA_TORAX | VARCHAR2 | Y |  |
| 4 | SN_FUMANTE | CHAR | Y |  |
| 5 | DS_FUMANTE | VARCHAR2 | Y |  |
| 6 | SN_JA_FUMOU | CHAR | Y |  |
| 7 | SN_MEDICACAO_CONTINUA | CHAR | Y |  |
| 8 | DS_MEDICACAO_CONTINUA | VARCHAR2 | Y |  |
| 9 | SN_ANTICONCEPCIONAL_ORAL | CHAR | Y |  |
| 10 | SN_CANCER_CONHECIDO | CHAR | Y |  |
| 11 | SN_CIRURGIA_PULMAO | CHAR | Y |  |
| 12 | SN_LINFOMA_LEUCEMIA | CHAR | Y |  |
| 13 | SN_TUBERCULOSE | CHAR | Y |  |
| 14 | SN_AIDS | CHAR | Y |  |
| 15 | SN_ASMATICO | CHAR | Y |  |
| 16 | SN_RINITE_ALERGICA | CHAR | Y |  |
| 17 | SN_FALTA_AR | CHAR | Y |  |
| 18 | SN_TOSSE | CHAR | Y |  |
| 19 | SN_TOSSE_SECRECAO | CHAR | Y |  |
| 20 | SN_SECRECAO_SANGUE | CHAR | Y |  |
| 21 | SN_FEBRE | CHAR | Y |  |
| 22 | SN_RADIOTERAPIA | CHAR | Y |  |
| 23 | SN_QUIMIOTERAPIA | CHAR | Y |  |
| 24 | SN_CHIADO_PEITO | CHAR | Y |  |
| 25 | SN_DOR_PEITO | CHAR | Y |  |
| 26 | DS_DOR_PEITO | VARCHAR2 | Y |  |
| 27 | SN_PERDA_PESO | CHAR | Y |  |
| 28 | SN_DERRAME_PLEURAL | CHAR | Y |  |
| 29 | DS_DERRAME_PLEURAL | VARCHAR2 | Y |  |
| 30 | SN_CRIACAO_GALINHAS | CHAR | Y |  |
| 31 | SN_MORCEGOS | CHAR | Y |  |
| 32 | SN_TROMBOSE_PERNAS | CHAR | Y |  |
| 33 | SN_ATIVO | CHAR | Y |  |
| 34 | DT_CADASTRO | DATE | N |  |
| 35 | DT_ALTERACAO | DATE | Y |  |
| 36 | SN_VIAGEM_EXTERIOR | CHAR | Y |  |

---

## IDCECRER.RS_ANA_TERMO_PROCEDIMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_TERMO_PROCEDIMENTO | NUMBER | N |  |
| 2 | ID_PROCEDIMENTO_UNIDADE | NUMBER | N |  |
| 3 | DS_LAYOUT_TERMO | VARCHAR2 | N |  |

---

## IDCECRER.RS_BI_CADASTRO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_BI_CADASTRO | NUMBER | N |  |
| 2 | NM_CADASTRO | VARCHAR2 | N |  |
| 3 | DS_DESCRICAO | VARCHAR2 | Y |  |
| 4 | ID_USUARIO | NUMBER | Y |  |
| 5 | DT_CADASTRO | DATE | N |  |
| 6 | DT_ALTERACAO | DATE | Y |  |
| 7 | NM_VIEW | VARCHAR2 | Y |  |
| 8 | DS_LAYOUT_GRID | CLOB | Y |  |

---

## IDCECRER.RS_BI_CADASTRO_CAMPOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_BI_CADASTRO_CAMPOS | NUMBER | N |  |
| 2 | ID_BI_CADASTRO | NUMBER | N |  |
| 3 | NM_CAMPO | VARCHAR2 | N |  |
| 4 | NM_TEMPLATE | VARCHAR2 | Y |  |
| 5 | TP_BROWSER | VARCHAR2 | N |  |

---

## IDCECRER.RS_BI_CADASTRO_FILTRO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_BI_CADASTRO_FILTRO | NUMBER | N |  |
| 2 | ID_BI_CADASTRO | NUMBER | Y |  |
| 3 | NM_CAMPO | VARCHAR2 | Y |  |
| 4 | NM_CRITERIO | VARCHAR2 | Y |  |

---

## IDCECRER.RS_BI_CADASTRO_ORDEM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_BI_CADASTRO_ORDEM | NUMBER | N |  |
| 2 | ID_BI_CADASTRO | NUMBER | Y |  |
| 3 | NM_CAMPO | VARCHAR2 | Y |  |
| 4 | TP_ORDEM | CHAR | Y | A = Ascendente, D = Descendente |

---

## IDCECRER.RS_BI_LINK_HIS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_LINK | NUMBER | N |  |
| 2 | NM_LINK | VARCHAR2 | N |  |
| 3 | TP_BROWSER | VARCHAR2 | N |  |
| 4 | DS_TEMPLATE | VARCHAR2 | N |  |
| 5 | ID_USUARIO_CADASTRO | NUMBER | N |  |
| 6 | DT_CADASTRO | DATE | N |  |
| 7 | ID_USUARIO_ALTERACAO | NUMBER | Y |  |
| 8 | DT_ALTERACAO | DATE | Y |  |
| 9 | SN_ATIVO | CHAR | N |  |

---

## IDCECRER.RS_CEN_CENARIO
> Tabela de cenários

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_CENARIO | NUMBER | N | Id do cenário |
| 2 | ID_USUARIO_DONO | NUMBER | N | Id do usuario que criou o cenário |
| 3 | NM_CENARIO | VARCHAR2 | N | Nome do cenário |
| 4 | SN_PUBLICO | VARCHAR2 | Y | (S/N) Se o cenário é publico |
| 5 | SN_AVANCO_AUTOMATICO | VARCHAR2 | Y | (S/N) Se o cenário tem avanço automatico ativo |

---

## IDCECRER.RS_CEN_COLUNA
> Tabela coluna do cenario

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_CENARIO | NUMBER | N | Id do cenario |
| 2 | ID_COLUNA | NUMBER | N | Id da coluna |
| 3 | NM_IDENTIFICACAO | VARCHAR2 | N | Nome da coluna |
| 4 | TP_POSICAO | VARCHAR2 | N | Posicao da coluna |
| 5 | NM_TAMANHO | VARCHAR2 | N | Tamanho da coluna |

---

## IDCECRER.RS_CEN_COMPARTILHAR
> Tabela de compartilhamento de cenario

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_COMPARTILHAR | NUMBER | N | Id da tabela de compartilhamento de cenario |
| 2 | ID_CENARIO | NUMBER | N | Id do cenario compartilhado |
| 3 | ID_GRUPO | NUMBER | N | Id do grupo de usuario |
| 4 | DS_PERMISSAO | NUMBER | Y | permissao para editar o cenario compartilhado |

---

## IDCECRER.RS_CEN_FILTRO
> Tabela filtro do cenario

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_FILTRO | NUMBER | N | Id do filtro |
| 2 | ID_COLUNA | NUMBER | N | Id da coluna |
| 3 | ID_CENARIO | NUMBER | N | Id do Cenario |
| 4 | NM_CHAVE | VARCHAR2 | N | Nome do filtro |
| 5 | DS_VALOR | VARCHAR2 | N | Conteudo do filtro |

---

## IDCECRER.RS_COCKPIT_LAYOUT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_LAYOUT | NUMBER | N | Identificador do sistema |
| 2 | NM_LAYOUT | VARCHAR2 | N | Nome do layout |
| 3 | DS_LAYOUT | CLOB | Y | Json layout |
| 4 | SN_ATIVO | VARCHAR2 | N |  |

---

## IDCECRER.RS_COLUNA_CONFIG

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_COLUNM_SETTINGS | NUMBER | N |  |
| 2 | ID_CONF_GRID_USUARIO | NUMBER | N |  |
| 3 | SN_DISPLAY | CHAR | Y |  |
| 4 | NR_ORDER_INDEX | NUMBER | Y |  |
| 5 | DS_UNIQUE_NAME | VARCHAR2 | Y |  |
| 6 | SN_VISIBLE | CHAR | Y |  |
| 7 | NR_WIDTH | NUMBER | Y |  |
| 8 | SN_OBRIGATORIO | CHAR | Y |  |

---

## IDCECRER.RS_CONFIG_AUTO_CORRECAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DS_TEXTO | VARCHAR2 | Y |  |
| 2 | DS_TEXTO_SUGERIDO | VARCHAR2 | Y |  |
| 3 | ID_AUTO_CORRECAO | NUMBER | N |  |
| 4 | ID_USUARIO | NUMBER | Y |  |

---

## IDCECRER.RS_CONFIG_CONFIGURACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_SISTEMA | VARCHAR2 | N | Indicativo de sistema. Serve como chave primaria composta também pelo campo NOME_CONFIGURACAO\nEX... |
| 2 | NM_CONFIGURACAO | VARCHAR2 | N | Chave primaria da configuracao que é composta pelo campo SISTEMA. |
| 3 | DS_VALOR | CLOB | Y | Valor da configuração. |

---

## IDCECRER.RS_CONFIG_DICIONARIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_DICIONARIO | NUMBER | N |  |
| 2 | ID_USUARIO | NUMBER | N |  |
| 3 | DS_CULTURA | VARCHAR2 | N |  |
| 4 | DS_TEXTO | VARCHAR2 | N |  |

---

## IDCECRER.RS_CONFIG_PREFERENCIAS_COCKPIT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_CONFIG_PREFERENCIA_COCKPIT | NUMBER | N |  |
| 2 | ID_USUARIO | NUMBER | Y |  |
| 3 | NM_COMPUTADOR | VARCHAR2 | Y |  |
| 4 | DS_IP_COMPUTADOR | VARCHAR2 | Y |  |
| 5 | DS_RESOLUCAO_MONITOR | VARCHAR2 | Y |  |
| 6 | DS_XML_PREFERENCIAS | BLOB | Y |  |

---

## IDCECRER.RS_CONFIG_REPORT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_REPORT | NUMBER | N |  |
| 2 | ID_USUARIO | NUMBER | N |  |
| 3 | DT_CADASTRO | DATE | Y |  |
| 4 | DT_ALTERACAO | DATE | Y |  |
| 5 | SN_ATIVO | CHAR | N |  |
| 6 | REPORT | BLOB | Y |  |
| 7 | REPORT_DEFAULT | BLOB | Y |  |
| 8 | ID_PROCEDIMENTO_UNIDADE | NUMBER | Y |  |
| 9 | NOME_RELATORIO | VARCHAR2 | Y |  |

---

## IDCECRER.RS_CONF_ABA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_CONF_ABA | NUMBER | N |  |
| 2 | ID_CONF_ABA_USUARIO | NUMBER | Y |  |
| 3 | NM_ABA | VARCHAR2 | Y |  |
| 4 | ID_PAGE_STR | VARCHAR2 | Y |  |
| 5 | NR_ORDEM | NUMBER | Y |  |
| 6 | SN_OBRIGATORIO | CHAR | Y |  |
| 7 | SN_VISIVEL | CHAR | Y |  |

---

## IDCECRER.RS_CONF_ABA_USUARIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_CONF_ABA_USUARIO | NUMBER | N |  |
| 2 | ID_USUARIO_UNIDADE | NUMBER | N |  |
| 3 | ID_ABA_STR | VARCHAR2 | N |  |

---

## IDCECRER.RS_CONF_GRID_USUARIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_CONF_GRID_USUARIO | NUMBER | N |  |
| 2 | ID_USUARIO_UNIDADE | NUMBER | N |  |
| 3 | ID_GRID_STR | VARCHAR2 | N |  |

---

## IDCECRER.RS_CV_CONVENIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_CONVENIO | NUMBER | N |  |
| 2 | NM_CONVENIO | VARCHAR2 | Y |  |
| 3 | NM_REDUZIDO_CONVENIO | VARCHAR2 | Y |  |
| 4 | DS_ENDERECO | VARCHAR2 | Y |  |
| 5 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 6 | DS_BAIRRO | VARCHAR2 | Y |  |
| 7 | DS_CIDADE | VARCHAR2 | Y |  |
| 8 | DS_UF | VARCHAR2 | Y |  |
| 9 | DS_CEP | VARCHAR2 | Y |  |
| 10 | DS_CPF_CNPJ | VARCHAR2 | Y |  |
| 11 | DS_CONTATO | VARCHAR2 | Y |  |
| 12 | DS_TELEFONE | VARCHAR2 | Y |  |
| 13 | DS_FAX | VARCHAR2 | Y |  |
| 14 | DS_EMAIL | VARCHAR2 | Y |  |
| 15 | SN_ATIVO | CHAR | Y |  |
| 16 | DT_CADASTRO | DATE | Y |  |
| 17 | ID_USUARIO | NUMBER | Y |  |
| 18 | DT_ALTERACAO | DATE | Y |  |

---

## IDCECRER.RS_CV_CONVENIO_UNIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_CONVENIO_UNIDADE | NUMBER | N |  |
| 2 | ID_CONVENIO | NUMBER | Y |  |
| 3 | ID_UNIDADE | NUMBER | Y |  |
| 4 | NM_CONVENIO_UNIDADE | VARCHAR2 | Y |  |
| 5 | NM_REDUZIDO_CONVENIO | VARCHAR2 | Y |  |
| 6 | DS_ENDERECO | VARCHAR2 | Y |  |
| 7 | DS_BAIRRO | VARCHAR2 | Y |  |
| 8 | DS_CIDADE | VARCHAR2 | Y |  |
| 9 | DS_UF | VARCHAR2 | Y |  |
| 10 | DS_CEP | VARCHAR2 | Y |  |
| 11 | DS_CPF_CNPJ | VARCHAR2 | Y |  |
| 12 | DS_CONTATO | VARCHAR2 | Y |  |
| 13 | DS_TELEFONE | VARCHAR2 | Y |  |
| 14 | DS_FAX | VARCHAR2 | Y |  |
| 15 | DS_EMAIL | VARCHAR2 | Y |  |
| 16 | CD_CONVENIO_HIS | VARCHAR2 | Y |  |
| 17 | ID_USUARIO | NUMBER | Y |  |
| 18 | DT_CADASTRO | DATE | Y |  |
| 19 | DT_ALTERACAO | DATE | Y |  |
| 20 | ID_INTERBASE | NUMBER | Y |  |
| 21 | SN_PARCEIRO | CHAR | Y |  |
| 22 | SN_ATIVO | CHAR | N | (S/N) ATIVO |

---

## IDCECRER.RS_DG_DIAGNOSTICO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_DIAGNOSTICO | NUMBER | N |  |
| 2 | NM_DIAGNOSTICO | VARCHAR2 | Y |  |
| 3 | DS_DIAGNOSTICO | VARCHAR2 | Y |  |
| 4 | CD_CID | VARCHAR2 | Y |  |
| 5 | SN_ATIVO | CHAR | Y |  |
| 6 | DT_CADASTRO | DATE | N |  |
| 7 | DT_ALTERACAO | DATE | Y |  |
| 8 | ID_USUARIO | NUMBER | Y |  |
| 9 | ID_INTERBASE | NUMBER | Y |  |

---

## IDCECRER.RS_DG_TIPO_DIAGNOSTICO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_TIPO_DIAGNOSTICO | NUMBER | N |  |
| 2 | NM_TIPO_DIAGNOSTICO | VARCHAR2 | Y |  |
| 3 | DS_TIPO_DIAGNOSTICO | VARCHAR2 | Y |  |
| 4 | DT_CADASTRO | DATE | N |  |
| 5 | DT_ALTERACAO | DATE | Y |  |
| 6 | ID_USUARIO | NUMBER | Y |  |
| 7 | SN_ATIVO | CHAR | N | (S/N) ATIVO |

---

## IDCECRER.RS_EMAIL_ACHADOS_CRITICOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EMAIL_ACRITICO | NUMBER | N |  |
| 2 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 3 | DT_CADASTRO | DATE | N |  |
| 4 | TP_STATUS | CHAR | N | Tipo Status A = Aguardando, T = Tranferido, E = Erro |
| 5 | DS_STATUS | VARCHAR2 | Y |  |
| 6 | DT_STATUS | DATE | Y |  |
| 7 | ID_PROCEDIMENTO_UN | NUMBER | N |  |

---

## IDCECRER.RS_EXA_ACORDO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_ACORDO | NUMBER | N |  |
| 2 | NM_ACORDO | VARCHAR2 | Y |  |
| 3 | DS_TEXTO | CLOB | Y |  |
| 4 | ID_EXAME_UNIDADE | NUMBER | Y |  |
| 5 | ID_SETOR_SOLICITANTE | NUMBER | Y |  |
| 6 | ID_SETOR_EXECUTANTE | NUMBER | Y |  |
| 7 | SN_CONTAGEM | CHAR | Y |  |
| 8 | DT_CADASTRO | DATE | Y |  |
| 9 | DT_ALTERACAO | DATE | Y |  |

---

## IDCECRER.RS_EXA_ACORDO_ALERTA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_ACORDO_ALERTA | NUMBER | N |  |
| 2 | ID_ACORDO | NUMBER | Y |  |
| 3 | CD_CLASSIFICACAO | NUMBER | Y |  |
| 4 | CD_ALERTA | NUMBER | Y |  |
| 5 | SN_TEMPO_MAXIMO | CHAR | Y |  |
| 6 | DT_CADASTRO | DATE | Y |  |
| 7 | DT_ALTERACAO | DATE | Y |  |
| 8 | SN_ATIVO | CHAR | Y |  |
| 9 | NM_ALERTA | VARCHAR2 | Y |  |
| 10 | CD_RISCO | NUMBER | Y |  |
| 11 | CD_RISCO_ANT | NUMBER | Y | Codigo Do Risco anterior a correção do sistema |

---

## IDCECRER.RS_EXA_EXAME

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME | NUMBER | N |  |
| 2 | NM_EXAME | VARCHAR2 | Y |  |
| 3 | CD_CBHPM | VARCHAR2 | Y |  |
| 4 | NM_CBHPM | VARCHAR2 | Y |  |
| 5 | ID_TIPO_EXAME | NUMBER | Y |  |
| 6 | NR_TEMPO_MEDIO | NUMBER | Y |  |
| 7 | DS_TEXTO_LAUDO_PADRAO | CLOB | Y |  |
| 8 | DS_PREPARO | VARCHAR2 | Y |  |
| 9 | NR_PRAZO_ENTREGA | NUMBER | Y |  |
| 10 | SN_AGRUPAR_LAUDO | CHAR | Y |  |
| 11 | SN_AGRUPAR_IMAGEM | CHAR | Y |  |
| 12 | DS_RESTRICAO | VARCHAR2 | Y |  |
| 13 | DT_CADASTRO | DATE | N |  |
| 14 | DT_ALTERACAO | DATE | Y |  |
| 15 | ID_USUARIO | NUMBER | Y |  |
| 16 | ID_SISTEMA | NUMBER | Y |  |
| 17 | DS_PROTOCOLO_MEDICO | CLOB | Y |  |
| 18 | DS_PROTOCOLO_TECNICO | CLOB | Y |  |
| 19 | DS_TEXTO_EXAME_2 | CLOB | Y |  |
| 20 | SISMED | NUMBER | Y |  |
| 21 | CORPORATIVO | VARCHAR2 | Y |  |
| 22 | SN_CALC_GESTACIONAL | CHAR | Y |  |

---

## IDCECRER.RS_EXA_EXAME_ORIGEM_ATEND

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME_UNIDADE | NUMBER | N |  |
| 2 | ID_ORIGEM_ATENDIMENTO | NUMBER | N |  |
| 3 | NR_PRAZO_ENTREGA | NUMBER | Y |  |
| 4 | ID_USUARIO | NUMBER | Y |  |
| 5 | DT_CADASTRO | DATE | Y |  |
| 6 | DT_ALTERACAO | DATE | Y |  |

---

## IDCECRER.RS_EXA_EXAME_SISMED

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME | NUMBER | N |  |
| 2 | NM_EXAME | VARCHAR2 | Y |  |
| 3 | CD_CBHPM | VARCHAR2 | Y |  |
| 4 | NM_CBHPM | VARCHAR2 | Y |  |
| 5 | ID_TIPO_EXAME | NUMBER | Y |  |
| 6 | NR_TEMPO_MEDIO | NUMBER | Y |  |
| 7 | DS_TEXTO_LAUDO_PADRAO | CLOB | Y |  |
| 8 | DS_PREPARO | VARCHAR2 | Y |  |
| 9 | NR_PRAZO_ENTREGA | NUMBER | Y |  |
| 10 | SN_AGRUPAR_LAUDO | CHAR | Y |  |
| 11 | SN_AGRUPAR_IMAGEM | CHAR | Y |  |
| 12 | DS_RESTRICAO | VARCHAR2 | Y |  |
| 13 | DT_CADASTRO | DATE | N |  |
| 14 | DT_ALTERACAO | DATE | Y |  |
| 15 | ID_USUARIO | NUMBER | Y |  |
| 16 | ID_SISTEMA | NUMBER | Y |  |
| 17 | DS_TEXTO_EXAME_2 | CLOB | Y |  |
| 18 | DS_PROTOCOLO_MEDICO | CLOB | Y |  |
| 19 | DS_PROTOCOLO_TECNICO | CLOB | Y |  |
| 20 | SISMED | NUMBER | Y |  |

---

## IDCECRER.RS_EXA_EXAME_TEXTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EXAME_TEXTO | VARCHAR2 | N |  |
| 2 | ID_EXAME_TEXTO_EXAME | NUMBER | N |  |
| 3 | DT_CADASTRO | DATE | Y |  |
| 4 | DT_ALTERACAO | DATE | Y |  |
| 5 | ID_USUARIO | NUMBER | Y |  |
| 6 | ID_TEXTO_EXAME | NUMBER | Y |  |
| 7 | ID_GRUPO_EXAME | NUMBER | Y |  |
| 8 | ID_EXAME_UNIDADE | NUMBER | Y |  |

---

## IDCECRER.RS_EXA_EXAME_TEXTO_DMP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EXAME_TEXTO | VARCHAR2 | N |  |
| 2 | ID_EXAME_TEXTO_EXAME | NUMBER | N |  |
| 3 | DT_CADASTRO | DATE | Y |  |
| 4 | DT_ALTERACAO | DATE | Y |  |
| 5 | ID_USUARIO | NUMBER | Y |  |
| 6 | ID_TEXTO_EXAME | NUMBER | Y |  |
| 7 | ID_GRUPO_EXAME | NUMBER | Y |  |
| 8 | ID_EXAME_UNIDADE | NUMBER | Y |  |
| 9 | NM_EXAME_UNIDADE | VARCHAR2 | Y |  |
| 10 | CD_EXAME_HIS | VARCHAR2 | Y |  |
| 11 | CD_CBHPM | VARCHAR2 | Y |  |

---

## IDCECRER.RS_EXA_EXAME_UNIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME_UNIDADE | NUMBER | N |  |
| 2 | ID_EXAME | NUMBER | Y |  |
| 3 | NM_EXAME_UNIDADE | VARCHAR2 | Y |  |
| 4 | CD_EXAME_HIS | VARCHAR2 | Y |  |
| 5 | NM_EXAME_HIS | VARCHAR2 | Y |  |
| 6 | DT_CADASTRO | DATE | Y |  |
| 7 | ID_UNIDADE | NUMBER | Y |  |
| 8 | NM_CBHPM | VARCHAR2 | Y |  |
| 9 | CD_CBHPM | VARCHAR2 | Y |  |
| 10 | NR_TEMPO_MEDIO | NUMBER | Y |  |
| 11 | DS_TEXTO_LAUDO_PADRAO | CLOB | Y |  |
| 12 | DS_PREPARO | VARCHAR2 | Y |  |
| 13 | DS_RESTRICAO | VARCHAR2 | Y |  |
| 14 | NR_PRAZO_ENTREGA | NUMBER | Y |  |
| 15 | SN_AGRUPAR_LAUDO | CHAR | Y |  |
| 16 | SN_AGRUPAR_IMAGEM | CHAR | Y |  |
| 17 | ID_USUARIO | NUMBER | Y |  |
| 18 | DT_ALTERACAO | DATE | Y |  |
| 19 | ID_INTERBASE | NUMBER | Y |  |
| 20 | DS_PROTOCOLO_MEDICO | CLOB | Y |  |
| 21 | DS_PROTOCOLO_TECNICO | CLOB | Y |  |
| 22 | DS_TEXTO_EXAME_2 | CLOB | Y |  |
| 23 | DS_PATH_RELATORIO_ANAMNESE | VARCHAR2 | Y |  |
| 24 | NR_DIAS_EXPIRAR_ACAO_LAUDAR | NUMBER | N | Quantidade de dias para expirar a ação de laudar do exame |
| 25 | VL_EXAME | NUMBER | Y |  |
| 26 | VL_EXAME_PLANTAO | NUMBER | Y |  |
| 27 | VL_EXAME_TELE | NUMBER | Y |  |

---

## IDCECRER.RS_EXA_EXAME_UNIDADE_ENDOSCOP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME_UNIDADE_ENDOSCOP | NUMBER | N |  |
| 2 | ID_EXAME_UNIDADE | NUMBER | N |  |
| 3 | NM_SEGMENTO | VARCHAR2 | N |  |

---

## IDCECRER.RS_EXA_EXAME_UNIDADE_FORMULA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_FORMULA | NUMBER | N |  |
| 2 | NR_ORDENACAO | NUMBER | N |  |
| 3 | DS_TEXTO_FORMULA | VARCHAR2 | Y |  |
| 4 | DS_VALOR_REFERENCIA | VARCHAR2 | Y |  |
| 5 | DS_VALOR_REFERENCIA_INICIAL | NUMBER | Y |  |
| 6 | DS_VALOR_REFERENCIA_FINAL | NUMBER | Y |  |
| 7 | CD_UNIDADE_MEDIDA | VARCHAR2 | Y |  |
| 8 | CD_TIPO_CAMPO_FORMULA | VARCHAR2 | Y |  |
| 9 | CD_FORMULA | VARCHAR2 | Y |  |
| 10 | DS_FORMULA | VARCHAR2 | Y |  |
| 11 | ID_USUARIO | NUMBER | N |  |
| 12 | DT_CADASTRO | DATE | N |  |
| 13 | DT_ALTERACAO | DATE | Y |  |
| 14 | ID_EXAME_UNIDADE | NUMBER | N |  |
| 15 | SN_IMPRESSAO | CHAR | N |  |
| 16 | ID_EXAME_UNIDADE_TEMPLATE | NUMBER | Y |  |

---

## IDCECRER.RS_EXA_EXAME_UNIDADE_TEMPLATE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME_UNIDADE_TEMPLATE | NUMBER | N |  |
| 2 | ID_EXAME_UNIDADE | NUMBER | Y |  |
| 3 | NM_TEMPLATE | VARCHAR2 | Y |  |

---

## IDCECRER.RS_EXA_GRUPO_EXAME

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_GRUPO_EXAME | NUMBER | N |  |
| 2 | NM_GRUPO_EXAME | VARCHAR2 | Y |  |
| 3 | DS_GRUPO_EXAME | VARCHAR2 | Y |  |
| 4 | SN_ATIVO | CHAR | Y |  |
| 5 | DT_CADASTRO | DATE | Y |  |
| 6 | DT_ALTERACAO | DATE | Y |  |
| 7 | ID_USUARIO | NUMBER | Y |  |
| 8 | ID_INTERBASE | NUMBER | Y |  |

---

## IDCECRER.RS_EXA_MEDICO_ESPECIALIDADES

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_MEDICO_ESPECIALIDADE | NUMBER | N |  |
| 2 | ID_MEDICO | NUMBER | N |  |
| 3 | ID_SISTEMA | NUMBER | N |  |

---

## IDCECRER.RS_EXA_MODALIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_MODALIDADE | NUMBER | N |  |
| 2 | NM_MODALIDADE | VARCHAR2 | Y |  |
| 3 | CD_MODALIDADE | VARCHAR2 | Y |  |
| 4 | DS_MODALIDADE | VARCHAR2 | Y |  |
| 5 | DT_ALTERACAO | DATE | Y |  |
| 6 | ID_USUARIO | NUMBER | Y |  |
| 7 | DT_CADASTRO | DATE | N |  |

---

## IDCECRER.RS_EXA_PROCEDIMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_PROCEDIMENTO | NUMBER | N |  |
| 2 | NM_PROCEDIMENTO | VARCHAR2 | Y |  |
| 3 | ID_MODALIDADE | NUMBER | Y |  |
| 4 | DS_PROCEDIMENTO | VARCHAR2 | Y |  |
| 5 | SN_REVISAO_AUTOMATICA | CHAR | Y |  |
| 6 | SN_DICOM | CHAR | Y |  |
| 7 | DS_LAYOUT_IMPRESSAO | VARCHAR2 | Y |  |
| 8 | SN_EXECUTANTE_REVISOR | CHAR | Y |  |
| 9 | SN_LAUDO_LOTE_PENDENTE | CHAR | Y |  |
| 10 | SN_ENTREGA_LAUDO_CD | CHAR | Y |  |
| 11 | SN_IMPRESSAO_LAUDO_ENTREGA | CHAR | Y |  |
| 12 | SN_LIBERAR_LOTE_LAUDO_REV_PEND | CHAR | Y |  |
| 13 | SN_TEXTO_PADRAO_AUTOMATICO | CHAR | Y |  |
| 14 | SN_JUSTIFICATIVA_LAUDO | CHAR | Y |  |
| 15 | SN_ENDOSCOPIA | CHAR | Y |  |
| 16 | ID_USUARIO | NUMBER | Y |  |
| 17 | DT_CADASTRO | DATE | N |  |
| 18 | DT_ALTERACAO | DATE | Y |  |
| 19 | ID_LIBERAR_IMPRESSAO | NUMBER | Y |  |
| 20 | NR_LINHAS | NUMBER | Y |  |
| 21 | NR_COLUNAS | NUMBER | Y |  |
| 22 | SN_EXIGIR_JUST_LAU_SEM_IMG | CHAR | N |  |
| 23 | SN_REGRA_DISTRIBUICAO | CHAR | Y |  |
| 24 | SN_EXIGIR_PARECER | CHAR | Y | (S/N) EXIGIR PARECER |

---

## IDCECRER.RS_EXA_PROCEDIMENTO_BKP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_PROCEDIMENTO | NUMBER | N |  |
| 2 | NM_PROCEDIMENTO | VARCHAR2 | Y |  |
| 3 | ID_MODALIDADE | NUMBER | Y |  |
| 4 | DS_PROCEDIMENTO | VARCHAR2 | Y |  |
| 5 | SN_REVISAO_AUTOMATICA | CHAR | Y |  |
| 6 | SN_DICOM | CHAR | Y |  |
| 7 | DS_LAYOUT_IMPRESSAO | VARCHAR2 | Y |  |
| 8 | SN_EXECUTANTE_REVISOR | CHAR | Y |  |
| 9 | SN_LAUDO_LOTE_PENDENTE | CHAR | Y |  |
| 10 | SN_ENTREGA_LAUDO_CD | CHAR | Y |  |
| 11 | SN_IMPRESSAO_LAUDO_ENTREGA | CHAR | Y |  |
| 12 | SN_LIBERAR_LOTE_LAUDO_REV_PEND | CHAR | Y |  |
| 13 | SN_TEXTO_PADRAO_AUTOMATICO | CHAR | Y |  |
| 14 | SN_JUSTIFICATIVA_LAUDO | CHAR | Y |  |
| 15 | SN_ENDOSCOPIA | CHAR | Y |  |
| 16 | ID_USUARIO | NUMBER | Y |  |
| 17 | DT_CADASTRO | DATE | N |  |
| 18 | DT_ALTERACAO | DATE | Y |  |
| 19 | ID_LIBERAR_IMPRESSAO | NUMBER | Y |  |
| 20 | NR_LINHAS | NUMBER | Y |  |
| 21 | NR_COLUNAS | NUMBER | Y |  |
| 22 | SN_EXIGIR_JUST_LAU_SEM_IMG | CHAR | N |  |
| 23 | SN_REGRA_DISTRIBUICAO | CHAR | Y |  |

---

## IDCECRER.RS_EXA_PROCEDIMENTO_UNIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_PROCEDIMENTO_UNIDADE | NUMBER | N |  |
| 2 | ID_UNIDADE | NUMBER | Y |  |
| 3 | ID_PROCEDIMENTO | NUMBER | Y |  |
| 4 | CD_PROCEDIMENTO_HIS | VARCHAR2 | Y |  |
| 5 | DS_LAYOUT_IMPRESSAO | VARCHAR2 | Y |  |
| 6 | ID_MEDICO_PADRAO | NUMBER | Y |  |
| 7 | ID_SALA | NUMBER | Y |  |
| 8 | SN_REVISAO_AUTOMATICA | CHAR | Y |  |
| 9 | SN_DICOM | CHAR | Y |  |
| 10 | SN_EXECUTANTE_REVISOR | CHAR | Y |  |
| 11 | SN_LAUDO_LOTE_PENDENTE | CHAR | Y |  |
| 12 | SN_ENTREGA_LAUDO_CD | CHAR | Y |  |
| 13 | SN_IMPRESSAO_LAUDO_ENTREGA | CHAR | Y |  |
| 14 | SN_LIBERAR_LOTE_LAUDO_REV_PEND | CHAR | Y |  |
| 15 | SN_TEXTO_PADRAO_AUTOMATICO | CHAR | Y |  |
| 16 | SN_JUSTIFICATIVA_LAUDO | CHAR | Y |  |
| 17 | SN_ENDOSCOPIA | CHAR | Y |  |
| 18 | ID_USUARIO | NUMBER | Y |  |
| 19 | DT_CADASTRO | DATE | N |  |
| 20 | DT_ALTERACAO | DATE | Y |  |
| 21 | ID_INTERBASE | NUMBER | Y |  |
| 22 | SN_INTEGRA | CHAR | Y |  |
| 23 | ID_LIBERAR_IMPRESSAO | NUMBER | Y |  |
| 24 | DS_PATH_RELATORIO_ANAMNESE | VARCHAR2 | Y |  |
| 25 | ID_REPORT | NUMBER | Y |  |
| 26 | CD_TIPO_VIEWER | NUMBER | Y |  |
| 27 | DS_PATH_RELATORIO_FORMULA | VARCHAR2 | Y |  |
| 28 | SN_EXIGIR_JUST_LAU_SEM_IMG | CHAR | N |  |
| 29 | SN_REGRA_DISTRIBUICAO | CHAR | N |  |
| 30 | VL_PROCEDIMENTO | NUMBER | Y |  |
| 31 | SN_EXIGIR_JUSTIF_SECUNDARIA | CHAR | N |  |
| 32 | SN_EXIGIR_PIRADS | CHAR | N |  |
| 33 | SN_EXIGIR_BIRADS | CHAR | Y |  |
| 34 | SN_EXIGIR_TIRADS | CHAR | Y |  |
| 35 | SN_EXIGIR_FINALIZACAO_EXAME | CHAR | N |  |
| 36 | DS_LAYOUT_ETIQUETA | VARCHAR2 | Y |  |
| 37 | SN_EXIGIR_LIRADS | CHAR | Y | (S/N) Exigir Preenchimento do LIRADS |
| 38 | SN_EXIGIR_PREENCHIMENTO_BIRADS | CHAR | Y | (S/N) Exigir preenchimento do BIRADS apenas na ação Laudar/Revisar |
| 39 | SN_ENTREGA_IMG_S_L_ASSINADO | CHAR | Y | (S/N) Permite entragar imagem sem laudo assinado |
| 40 | DS_EMAILS_ACHADOS_CRITICOS | VARCHAR2 | Y | Lista de emails para envio dos achados críticos |
| 41 | DS_ASSUNTO_EMAIL | VARCHAR2 | Y | Assunto email automático achados críticos |
| 42 | DS_MENSAGEM_EMAIL | CLOB | Y | Corpo do email automático achados críticos |
| 43 | SN_COMENTARIO | VARCHAR2 | Y | Descrição do comentário realizado no exame |
| 44 | SN_EXIGIR_SEG_JUS_EXA_SEC_PAR | CHAR | N | (S/N) Exigir segunda justificativa do exame secundário no parecer |
| 45 | SN_EXIGIR_SEG_JUS_EXA_SEC_LAU | CHAR | N | (S/N) Exigir segunda justificativa do exame secundário ao Laudar |
| 46 | SN_EXIGIR_SEG_JUS_EXA_SEC_LR | CHAR | N | (S/N) Exigir segunda justificativa do exame secundário ao Laudar/Revisar |
| 47 | SN_BLOQUEAR_LAUDO_EXAME_PAC | CHAR | N | Bloquear ações no laudo para exames de paciente com alta |

---

## IDCECRER.RS_EXA_PROCEDIMENTO_UN_ACHADOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_ACHADO | NUMBER | N |  |
| 2 | ID_PROCEDIMENTO_UNIDADE | NUMBER | N |  |
| 3 | NM_ACHADO | VARCHAR2 | N |  |
| 4 | DT_CADASTRO | DATE | N |  |
| 5 | DT_ALTERACAO | DATE | Y |  |
| 6 | ID_USUARIO | NUMBER | N |  |

---

## IDCECRER.RS_EXA_PROCED_ORIGEM_ATEND

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_PROCEDIMENTO_UNIDADE | NUMBER | N |  |
| 2 | ID_ORIGEM_ATENDIMENTO | NUMBER | N |  |
| 3 | NR_PRAZO_ENTREGA | NUMBER | Y |  |
| 4 | ID_USUARIO | NUMBER | Y |  |
| 5 | DT_CADASTRO | DATE | Y |  |
| 6 | DT_ALTERACAO | DATE | Y |  |

---

## IDCECRER.RS_EXA_PROCED_UNI_BLOQUEIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_PROCEDIMENTO_UNI_BLOQUEIO | NUMBER | N | Id do procedimento unidade bloqueio |
| 2 | ID_PROCEDIMENTO_UNIDADE | NUMBER | N | Id do procedimento na unidade |
| 3 | ID_ORIGEM_ATENDIMENTO | NUMBER | N | Id da origem de atendimento |

---

## IDCECRER.RS_EXA_PROCED_UNI_JUST_REV

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_PROCED_UNI_JUST_REV | NUMBER | N |  |
| 2 | ID_PROCEDIMENTO_UNIDADE | NUMBER | N |  |
| 3 | ID_ORIGEM_ATENDIMENTO | NUMBER | N |  |

---

## IDCECRER.RS_EXA_SISTEMAS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_SISTEMA | NUMBER | N |  |
| 2 | NM_SISTEMA | VARCHAR2 | Y |  |
| 3 | DS_SISTEMA | VARCHAR2 | Y |  |
| 4 | SN_ATIVO | CHAR | Y |  |
| 5 | ID_USUARIO | NUMBER | Y |  |
| 6 | DT_CADASTRO | DATE | Y |  |
| 7 | DT_ALTERACAO | DATE | Y |  |
| 8 | ID_INTERBASE | NUMBER | Y |  |

---

## IDCECRER.RS_EXA_TEXTOS_EXAME

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_TEXTO_EXAME | NUMBER | N |  |
| 2 | NM_TEXTO_EXAME | VARCHAR2 | Y |  |
| 3 | DS_TEXTO_EXAME | CLOB | Y |  |
| 4 | DT_CADASTRO | DATE | Y |  |
| 5 | DT_ALTERACAO | DATE | Y |  |
| 6 | ID_USUARIO | NUMBER | Y |  |
| 7 | ID_INTERBASE | NUMBER | Y |  |
| 8 | DS_TEXTO_EXAME_2 | CLOB | Y |  |
| 9 | ID_USUARIO_PROP | NUMBER | Y |  |

---

## IDCECRER.RS_EXA_TEXTOS_EXAME2

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_TEXTO_EXAME | NUMBER | Y |  |
| 2 | NM_TEXTO_EXAME | VARCHAR2 | Y |  |
| 3 | PARTE1 | VARCHAR2 | Y |  |
| 4 | PARTE2 | VARCHAR2 | Y |  |
| 5 | PARTE3 | VARCHAR2 | Y |  |

---

## IDCECRER.RS_EXA_TEXTOS_EXAME_PP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_TEXTO_EXAME | NUMBER | Y |  |
| 2 | NM_TEXTO_EXAME | VARCHAR2 | Y |  |
| 3 | DS_TEXTO_EXAME | CLOB | Y |  |
| 4 | DT_CADASTRO | DATE | Y |  |
| 5 | DT_ALTERACAO | DATE | Y |  |
| 6 | ID_USUARIO | NUMBER | Y |  |
| 7 | ID_INTERBASE | NUMBER | Y |  |
| 8 | DS_TEXTO_EXAME_2 | CLOB | Y |  |

---

## IDCECRER.RS_EXA_TIPO_CAMPO_FORMULA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_TIPO_CAMPO_FORMULA | NUMBER | N |  |
| 2 | CD_TIPO_CAMPO_FORMULA | VARCHAR2 | Y |  |
| 3 | DS_TIPO_CAMPO_FORMULA | VARCHAR2 | Y |  |

---

## IDCECRER.RS_EXA_TIPO_EXAME

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_TIPO_EXAME | NUMBER | N |  |
| 2 | NM_TIPO_EXAME | VARCHAR2 | Y |  |
| 3 | DS_TIPO_EXAME | VARCHAR2 | Y |  |
| 4 | DT_CADASTRO | DATE | N |  |
| 5 | DT_ALTERACAO | DATE | Y |  |
| 6 | ID_USUARIO | NUMBER | Y |  |
| 7 | ID_PROCEDIMENTO | NUMBER | Y |  |
| 8 | ID_INTERBASE | NUMBER | Y |  |

---

## IDCECRER.RS_INTEGRACAO_IDCECRER_PORTAL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GUID_CHAVE | VARCHAR2 | N |  |
| 2 | DT_EXPIRACAO | DATE | Y |  |

---

## IDCECRER.RS_INTEGRACAO_SLINE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_INTEGRACAO_SLINE | NUMBER | N |  |
| 2 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 3 | DT_ENVIO | DATE | N |  |
| 4 | DS_XML_ENVIADO | CLOB | N |  |

---

## IDCECRER.RS_INTEGRA_CONEXAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_INTEGRA_CONEXAO | NUMBER | N |  |
| 2 | NM_CONEXAO | VARCHAR2 | N |  |
| 3 | CD_CONEXAO | VARCHAR2 | N |  |
| 4 | DS_HASHMAC | VARCHAR2 | Y |  |
| 5 | ID_FORNECEDOR | NUMBER | N |  |
| 6 | ID_USUARIO | NUMBER | N |  |
| 7 | DT_CADASTRO | DATE | N |  |
| 8 | DT_ALTERACAO | DATE | Y |  |

---

## IDCECRER.RS_INTEGRA_ENTRADA_CV_CONVENIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_INTEGRA_ENTRADA_CV_CONVENIO | NUMBER | N |  |
| 2 | DT_CADASTRO | DATE | Y |  |
| 3 | TP_MOVIMENTO | VARCHAR2 | N |  |
| 4 | TP_REGISTRO | VARCHAR2 | N |  |
| 5 | TP_INTEGRACAO | VARCHAR2 | N |  |
| 6 | DT_INTEGRACAO | DATE | Y |  |
| 7 | DS_ERRO | VARCHAR2 | Y |  |
| 8 | CD_UNIDADE | VARCHAR2 | N |  |
| 9 | CD_CONVENIO | VARCHAR2 | N |  |
| 10 | NM_CONVENIO | VARCHAR2 | N |  |
| 11 | DS_ENDERECO | VARCHAR2 | Y |  |
| 12 | DS_BAIRRO | VARCHAR2 | Y |  |
| 13 | DS_CIDADE | VARCHAR2 | Y |  |
| 14 | DS_UF | VARCHAR2 | Y |  |
| 15 | DS_CEP | VARCHAR2 | Y |  |
| 16 | DS_TELEFONE | VARCHAR2 | Y |  |
| 17 | DS_FAX | VARCHAR2 | Y |  |
| 18 | DS_CPF_CNPJ | VARCHAR2 | Y |  |
| 19 | DS_EMAIL | VARCHAR2 | Y |  |
| 20 | ID_FORNECEDOR | NUMBER | N |  |

---

## IDCECRER.RS_INTEGRA_ENTRADA_EXA_EXAME

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_INTEGRA_ENTRADA_EXA_EXAME | NUMBER | N |  |
| 2 | DT_CADASTRO | DATE | Y |  |
| 3 | TP_MOVIMENTO | VARCHAR2 | N |  |
| 4 | TP_REGISTRO | VARCHAR2 | N |  |
| 5 | TP_INTEGRACAO | VARCHAR2 | N |  |
| 6 | DT_INTEGRACAO | DATE | Y |  |
| 7 | DS_ERRO | VARCHAR2 | Y |  |
| 8 | CD_UNIDADE | VARCHAR2 | N |  |
| 9 | CD_EXAME | VARCHAR2 | N |  |
| 10 | NM_EXAME | VARCHAR2 | N |  |
| 11 | NM_CBHPM | VARCHAR2 | Y |  |
| 12 | CD_CBHPM | VARCHAR2 | Y |  |
| 13 | ID_FORNECEDOR | NUMBER | N |  |

---

## IDCECRER.RS_INTEGRA_ENTRADA_MD_MEDICO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_INTEGRA_ENTRADA_MD_MEDICO | NUMBER | N |  |
| 2 | DT_CADASTRO | DATE | N |  |
| 3 | TP_MOVIMENTO | VARCHAR2 | N |  |
| 4 | TP_REGISTRO | VARCHAR2 | N |  |
| 5 | TP_INTEGRACAO | VARCHAR2 | N |  |
| 6 | DT_INTEGRACAO | DATE | Y |  |
| 7 | DS_ERRO | VARCHAR2 | Y |  |
| 8 | CD_UNIDADE | VARCHAR2 | N |  |
| 9 | CD_MEDICO | VARCHAR2 | N |  |
| 10 | NM_MEDICO | VARCHAR2 | N |  |
| 11 | TP_MEDICO | VARCHAR2 | N |  |
| 12 | DT_NASCIMENTO | DATE | Y |  |
| 13 | DS_CPF_CNPJ | VARCHAR2 | Y |  |
| 14 | DS_ENDERECO | VARCHAR2 | Y |  |
| 15 | DS_BAIRRO | VARCHAR2 | Y |  |
| 16 | DS_CIDADE | VARCHAR2 | Y |  |
| 17 | DS_UF | VARCHAR2 | Y |  |
| 18 | CD_CEP | VARCHAR2 | Y |  |
| 19 | DS_TELEFONE | VARCHAR2 | Y |  |
| 20 | DS_FAX | VARCHAR2 | Y |  |
| 21 | DS_EMAIL | VARCHAR2 | Y |  |
| 22 | DS_CRM | VARCHAR2 | Y |  |
| 23 | DS_UF_CRM | VARCHAR2 | Y |  |
| 24 | ID_FORNECEDOR | NUMBER | N |  |

---

## IDCECRER.RS_INTEGRA_ENTRADA_PC_PACIENTE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_INTEGRA_ENTRADA_PC_PACIENTE | NUMBER | N |  |
| 2 | DT_CADASTRO | DATE | N |  |
| 3 | TP_MOVIMENTO | VARCHAR2 | N |  |
| 4 | TP_REGISTRO | VARCHAR2 | N |  |
| 5 | TP_INTEGRACAO | VARCHAR2 | N |  |
| 6 | DT_INTEGRACAO | DATE | Y |  |
| 7 | DS_ERRO | VARCHAR2 | Y |  |
| 8 | CD_UNIDADE | VARCHAR2 | N |  |
| 9 | CD_PACIENTE | VARCHAR2 | Y |  |
| 10 | CD_PRONTUARIO | VARCHAR2 | N |  |
| 11 | NM_PACIENTE | VARCHAR2 | N |  |
| 12 | DT_NASCIMENTO | DATE | Y |  |
| 13 | NR_ALTURA | NUMBER | Y |  |
| 14 | NR_PESO | NUMBER | Y |  |
| 15 | TP_SEXO | CHAR | Y |  |
| 16 | DS_MATRICULA | VARCHAR2 | Y |  |
| 17 | DS_CPF_CNPJ | VARCHAR2 | Y |  |
| 18 | DS_IDENTIFICACAO | VARCHAR2 | Y |  |
| 19 | DS_ENDERECO | VARCHAR2 | Y |  |
| 20 | DS_BAIRRO | VARCHAR2 | Y |  |
| 21 | DS_UF | VARCHAR2 | Y |  |
| 22 | DS_CEP | VARCHAR2 | Y |  |
| 23 | DS_TELEFONE | VARCHAR2 | Y |  |
| 24 | DS_FAX | VARCHAR2 | Y |  |
| 25 | DS_CELULAR | VARCHAR2 | Y |  |
| 26 | DS_EMAIL | VARCHAR2 | Y |  |
| 27 | SN_EMAIL | CHAR | Y |  |
| 28 | SN_SMS | CHAR | Y |  |
| 29 | CD_CONVENIO | VARCHAR2 | Y |  |
| 30 | NM_CONVENIO | VARCHAR2 | Y |  |
| 31 | ID_FORNECEDOR | NUMBER | N |  |

---

## IDCECRER.RS_INTEGRA_ENTRADA_SP_SADT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_INTEGRA_ENTRADA_LAU_SADT | NUMBER | N |  |
| 2 | DT_CADASTRO | DATE | Y |  |
| 3 | TP_MOVIMENTO | VARCHAR2 | N |  |
| 4 | TP_REGISTRO | VARCHAR2 | N |  |
| 5 | TP_INTEGRACAO | VARCHAR2 | N |  |
| 6 | DT_INTEGRACAO | DATE | Y |  |
| 7 | DS_ERRO | VARCHAR2 | Y |  |
| 8 | CD_UNIDADE | VARCHAR2 | N |  |
| 9 | DT_MOVIMENTO | DATE | N |  |
| 10 | SN_URGENTE | CHAR | Y |  |
| 11 | DS_REGIAO | VARCHAR2 | Y |  |
| 12 | DS_LEITO | VARCHAR2 | Y |  |
| 13 | DS_SET_ORI | VARCHAR2 | Y |  |
| 14 | CD_ACCESS_NUMBER | VARCHAR2 | N |  |
| 15 | CD_SALA | VARCHAR2 | Y |  |
| 16 | DS_INDICACAO | VARCHAR2 | Y |  |
| 17 | DS_OBS | VARCHAR2 | Y |  |
| 18 | TP_PACIENTE | CHAR | N |  |
| 19 | CD_PACIENTE | VARCHAR2 | N |  |
| 20 | CD_PRONTUARIO | VARCHAR2 | N |  |
| 21 | NM_PACIENTE | VARCHAR2 | N |  |
| 22 | DT_NASCIMENTO_PACIENTE | DATE | Y |  |
| 23 | NR_ALTURA_PACIENTE | NUMBER | Y |  |
| 24 | NR_PESO_PACIENTE | NUMBER | Y |  |
| 25 | TP_SEXO_PACIENTE | CHAR | Y |  |
| 26 | DS_MATRICULA_PACIENTE | VARCHAR2 | Y |  |
| 27 | DS_CPF_CNPJ_PACIENTE | VARCHAR2 | Y |  |
| 28 | DS_IDENTIFICACAO_PACIENTE | VARCHAR2 | Y |  |
| 29 | DS_ENDERECO_PACIENTE | VARCHAR2 | Y |  |
| 30 | DS_BAIRRO_PACIENTE | VARCHAR2 | Y |  |
| 31 | DS_UF_PACIENTE | VARCHAR2 | Y |  |
| 32 | DS_CEP_PACIENTE | VARCHAR2 | Y |  |
| 33 | DS_TELEFONE_PACIENTE | VARCHAR2 | Y |  |
| 34 | DS_FAX_PACIENTE | VARCHAR2 | Y |  |
| 35 | DS_CELULAR_PACIENTE | VARCHAR2 | Y |  |
| 36 | DS_EMAIL_PACIENTE | VARCHAR2 | Y |  |
| 37 | SN_EMAIL_PACIENTE | CHAR | Y |  |
| 38 | SN_SMS_PACIENTE | CHAR | Y |  |
| 39 | CD_CONVENIO | VARCHAR2 | Y |  |
| 40 | NM_CONVENIO | VARCHAR2 | Y |  |
| 41 | DS_ENDERECO_CONVENIO | VARCHAR2 | Y |  |
| 42 | DS_BAIRRO_CONVENIO | VARCHAR2 | Y |  |
| 43 | DS_CIDADE_CONVENIO | VARCHAR2 | Y |  |
| 44 | DS_UF_CONVENIO | VARCHAR2 | Y |  |
| 45 | DS_CEP_CONVENIO | VARCHAR2 | Y |  |
| 46 | DS_TELEFONE_CONVENIO | VARCHAR2 | Y |  |
| 47 | DS_FAX_CONVENIO | VARCHAR2 | Y |  |
| 48 | DS_CPF_CNPJ_CONVENIO | VARCHAR2 | Y |  |
| 49 | DS_EMAIL_CONVENIO | VARCHAR2 | Y |  |
| 50 | CD_MEDICO_SOLICITANTE | VARCHAR2 | N |  |
| 51 | NM_MEDICO_SOLICITANTE | VARCHAR2 | N |  |
| 52 | DT_NASCIMENTO_SOLICITANTE | DATE | Y |  |
| 53 | DS_CPF_CNPJ_SOLICITANTE | VARCHAR2 | Y |  |
| 54 | DS_ENDERECO_SOLICITANTE | VARCHAR2 | Y |  |
| 55 | DS_BAIRRO_SOLICITANTE | VARCHAR2 | Y |  |
| 56 | DS_CIDADE_SOLICITANTE | VARCHAR2 | Y |  |
| 57 | DS_UF_SOLICITANTE | VARCHAR2 | Y |  |
| 58 | CD_CEP_SOLICITANTE | VARCHAR2 | Y |  |
| 59 | DS_TELEFONE_SOLICITANTE | VARCHAR2 | Y |  |
| 60 | DS_FAX_SOLICITANTE | VARCHAR2 | Y |  |
| 61 | DS_EMAIL_SOLICITANTE | VARCHAR2 | Y |  |
| 62 | DS_CRM_SOLICITANTE | VARCHAR2 | Y |  |
| 63 | DS_UF_CRM_SOLICITANTE | VARCHAR2 | Y |  |
| 64 | CD_MEDICO_EXECUTANTE | VARCHAR2 | N |  |
| 65 | NM_MEDICO_EXECUTANTE | VARCHAR2 | N |  |
| 66 | DT_NASCIMENTO_EXECUTANTE | DATE | Y |  |
| 67 | DS_CPF_CNPJ_EXECUTANTE | VARCHAR2 | Y |  |
| 68 | DS_ENDERECO_EXECUTANTE | VARCHAR2 | Y |  |
| 69 | DS_BAIRRO_EXECUTANTE | VARCHAR2 | Y |  |
| 70 | DS_CIDADE_EXECUTANTE | VARCHAR2 | Y |  |
| 71 | DS_UF_EXECUTANTE | VARCHAR2 | Y |  |
| 72 | CD_CEP_EXECUTANTE | VARCHAR2 | Y |  |
| 73 | DS_TELEFONE_EXECUTANTE | VARCHAR2 | Y |  |
| 74 | DS_FAX_EXECUTANTE | VARCHAR2 | Y |  |
| 75 | DS_EMAIL_EXECUTANTE | VARCHAR2 | Y |  |
| 76 | DS_CRM_EXECUTANTE | VARCHAR2 | Y |  |
| 77 | DS_UF_CRM_EXECUTANTE | VARCHAR2 | Y |  |
| 78 | CD_EXAME | VARCHAR2 | N |  |
| 79 | NM_EXAME | VARCHAR2 | N |  |
| 80 | ID_FORNECEDOR | NUMBER | N |  |
| 81 | DS_RG_PACIENTE | VARCHAR2 | Y |  |
| 82 | CD_ATENDIMENTO | VARCHAR2 | Y |  |
| 83 | NR_SEQUENCIA | VARCHAR2 | Y |  |
| 84 | NR_SEQ_INTERNO | VARCHAR2 | Y |  |
| 85 | CD_SETOR_PACIENTE | VARCHAR2 | Y |  |
| 86 | DT_LIBERACAO | DATE | Y |  |
| 87 | CD_SETOR_EXECUCAO | VARCHAR2 | Y |  |
| 88 | CD_PEDIDO | VARCHAR2 | Y |  |
| 89 | NM_SOCIAL | VARCHAR2 | Y |  |

---

## IDCECRER.RS_INTEGRA_FORNECEDOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_INTEGRA_FORNECEDOR | NUMBER | N |  |
| 2 | NM_FORNECEDOR | VARCHAR2 | Y |  |
| 3 | SN_ATIVO | CHAR | Y |  |
| 4 | DT_CADASTRO | DATE | Y |  |
| 5 | ID_USUARIO | NUMBER | Y |  |
| 6 | DT_ALTERACAO | DATE | Y |  |

---

## IDCECRER.RS_INTEGRA_LAUDO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_INTEGRA | NUMBER | Y |  |
| 2 | TP_INTEGRACAO | CHAR | Y |  |
| 3 | DT_INTEGRACAO | DATE | Y |  |
| 4 | DT_CADASTRO | DATE | Y |  |
| 5 | TP_MOVIMENTO | CHAR | Y |  |
| 6 | MESSAGE_ID | VARCHAR2 | Y |  |
| 7 | ID_UNIDADE | VARCHAR2 | Y |  |
| 8 | DT_PEDIDO | VARCHAR2 | Y |  |
| 9 | NM_PROCEDIMENTO | VARCHAR2 | Y |  |
| 10 | ID_EXAME | VARCHAR2 | Y |  |
| 11 | NM_EXAME | VARCHAR2 | Y |  |
| 12 | CD_PRONTUARIO | VARCHAR2 | Y |  |
| 13 | CD_CONVENIO | VARCHAR2 | Y |  |
| 14 | NM_PACIENTE | VARCHAR2 | Y |  |
| 15 | DT_NASCIMENTO | VARCHAR2 | Y |  |
| 16 | TP_SEXO | VARCHAR2 | Y |  |
| 17 | NM_SOLICITANTE | VARCHAR2 | Y |  |
| 18 | DS_CRM_SOLICITANTE | VARCHAR2 | Y |  |
| 19 | CD_ITEM_PEDIDO_HIS | VARCHAR2 | Y |  |
| 20 | NM_EXECUTANTE | VARCHAR2 | Y |  |
| 21 | DS_CRM | VARCHAR2 | Y |  |
| 22 | DS_LAUDO | CLOB | Y |  |
| 23 | DS_LAUDO_TXT | CLOB | Y |  |
| 24 | DT_LAUDO | VARCHAR2 | Y |  |
| 25 | NM_LAUDO | VARCHAR2 | Y |  |
| 26 | DS_ERRO | VARCHAR2 | Y |  |

---

## IDCECRER.RS_INTEGRA_SAIDA_SP_SADT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_INTEGRA_SAIDA_LAU_SADT | NUMBER | N |  |
| 2 | DT_CADASTRO | DATE | Y |  |
| 3 | TP_MOVIMENTO | VARCHAR2 | N |  |
| 4 | TP_REGISTRO | VARCHAR2 | N |  |
| 5 | TP_INTEGRACAO | VARCHAR2 | N |  |
| 6 | DT_INTEGRACAO | DATE | Y |  |
| 7 | DS_ERRO | VARCHAR2 | Y |  |
| 8 | CD_UNIDADE | VARCHAR2 | N |  |
| 9 | NM_UNIDADE | VARCHAR2 | N |  |
| 10 | CD_ACCESS_NUMBER | VARCHAR2 | N |  |
| 11 | ID_LAUDO | NUMBER | Y |  |
| 12 | CD_PACIENTE | VARCHAR2 | Y |  |
| 13 | CD_PRONTUARIO | VARCHAR2 | Y |  |
| 14 | NM_PACIENTE | VARCHAR2 | Y |  |
| 15 | CD_MEDICO_EXECUTANTE | VARCHAR2 | Y |  |
| 16 | NM_MEDICO_EXECUTANTE | VARCHAR2 | Y |  |
| 17 | DS_CRM_EXECUTANTE | VARCHAR2 | Y |  |
| 18 | DS_UF_CRM_EXECUTANTE | VARCHAR2 | Y |  |
| 19 | CD_MEDICO_REVISOR | VARCHAR2 | Y |  |
| 20 | NM_MEDICO_REVISOR | VARCHAR2 | Y |  |
| 21 | DS_CRM_REVISOR | VARCHAR2 | Y |  |
| 22 | DS_UF_CRM_REVISOR | VARCHAR2 | Y |  |
| 23 | DT_LAUDADO | DATE | Y |  |
| 24 | DT_REVISADO | DATE | Y |  |
| 25 | DT_ASSINADO | DATE | Y |  |
| 26 | DT_IMAGEM_DISPONIVEL | DATE | Y |  |
| 27 | DS_LAUDO_RTF | CLOB | Y |  |
| 28 | URL_VISUALIZACAO | VARCHAR2 | Y |  |
| 29 | NM_MODALIDADE | VARCHAR2 | Y |  |
| 30 | CD_UNIDADE_BASE_HIS | VARCHAR2 | Y |  |
| 31 | ID_FORNECEDOR | NUMBER | Y |  |

---

## IDCECRER.RS_LAU_ANEXO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_ANEXO | NUMBER | N |  |
| 2 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 3 | NM_ANEXO | VARCHAR2 | N |  |
| 4 | DS_ANEXO | VARCHAR2 | Y |  |
| 5 | ID_USUARIO | NUMBER | Y |  |
| 6 | DT_CADASTRO | DATE | Y |  |
| 7 | TP_ARQUIVO | VARCHAR2 | N |  |
| 8 | NM_ARQUIVO | VARCHAR2 | N |  |
| 9 | TP_ANEXO | CHAR | N |  |
| 10 | DT_ALTERACAO | DATE | Y |  |
| 11 | ID_USUARIO_ALTERACAO | NUMBER | Y |  |

---

## IDCECRER.RS_LAU_ANEXO_INFO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_ANEXO_INFO | NUMBER | N |  |
| 2 | NM_ANEXO_INFO | VARCHAR2 | N |  |

---

## IDCECRER.RS_LAU_CD

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_CD | NUMBER | N |  |
| 2 | ID_USUARIO | NUMBER | Y |  |
| 3 | DT_CADASTRO | DATE | Y |  |
| 4 | DT_GRAVACAO | DATE | Y |  |
| 5 | ID_USUARIO_GRAVACAO | NUMBER | Y |  |
| 6 | ID_UNIDADE | NUMBER | Y |  |
| 7 | ID_USUARIO_ALTERACAO | NUMBER | Y |  |
| 8 | SN_ATIVO | CHAR | Y |  |
| 9 | DT_ALTERACAO | DATE | Y |  |

---

## IDCECRER.RS_LAU_CLASSIFICACAO_RISCO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_RISCO | NUMBER | N |  |
| 2 | DS_DESCRICAO | VARCHAR2 | N |  |
| 3 | SG_SIGLA | VARCHAR2 | Y |  |
| 4 | DT_CADASTRO | DATE | Y |  |
| 5 | DT_ALTERACAO | DATE | Y |  |
| 6 | SN_ATIVO | CHAR | Y |  |
| 7 | DS_COR | VARCHAR2 | Y |  |

---

## IDCECRER.RS_LAU_COLUNA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_COLUNA | NUMBER | N |  |
| 2 | NM_COLUNA | VARCHAR2 | N |  |
| 3 | SN_ATIVO | CHAR | Y |  |
| 4 | DT_CADASTRO | DATE | Y |  |
| 5 | DT_ALTERACAO | DATE | Y |  |
| 6 | SN_OBRIGATORIO | CHAR | Y |  |

---

## IDCECRER.RS_LAU_COLUNA_UNIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_LAU_COLUNA_UNIDADE | NUMBER | N |  |
| 2 | ID_UNIDADE | NUMBER | N |  |
| 3 | ID_COLUNA | NUMBER | N |  |
| 4 | NR_ORDEM | NUMBER | N |  |
| 5 | SN_VISIVEL | CHAR | Y |  |
| 6 | SN_ATIVO | CHAR | Y |  |
| 7 | DT_CADASTRO | DATE | N |  |
| 8 | DT_ALTERACAO | DATE | Y |  |

---

## IDCECRER.RS_LAU_COMENTARIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_COMENTARIO | NUMBER | N |  |
| 2 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 3 | DS_COMENTARIO | VARCHAR2 | Y |  |
| 4 | DT_CADASTRO | DATE | N |  |
| 5 | DT_ALTERACAO | DATE | Y |  |
| 6 | ID_USUARIO | NUMBER | N |  |

---

## IDCECRER.RS_LAU_DIAGNOSTICO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_LAU_DIAGNOSTICO | NUMBER | N |  |
| 2 | ID_EXAME_PEDIDO | NUMBER | Y |  |
| 3 | ID_TIPO_DIAGNOSTICO | NUMBER | Y |  |
| 4 | ID_DIAGNOSTICO | NUMBER | Y |  |
| 5 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 6 | DT_CADASTRO | DATE | N |  |
| 7 | DT_ALTERACAO | DATE | Y |  |
| 8 | ID_USUARIO | NUMBER | Y |  |

---

## IDCECRER.RS_LAU_ETAPA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_ETAPA | NUMBER | N |  |
| 2 | NM_ETAPA | VARCHAR2 | N |  |
| 3 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 4 | DT_CADASTRO | DATE | N |  |
| 5 | DT_ALTERACAO | DATE | Y |  |
| 6 | ID_USUARIO | NUMBER | Y |  |
| 7 | SN_ATIVO | CHAR | Y |  |

---

## IDCECRER.RS_LAU_ETAPA_EXAME

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_ETAPA_EXAME | NUMBER | N |  |
| 2 | ID_ETAPA | NUMBER | N |  |
| 3 | ID_EXAME_UNIDADE | NUMBER | N |  |
| 4 | NR_ORDEM | NUMBER | Y |  |
| 5 | DT_CADASTRO | DATE | N |  |
| 6 | DT_ALTERACAO | DATE | Y |  |
| 7 | ID_USUARIO | NUMBER | Y |  |
| 8 | SN_ATIVO | CHAR | Y |  |
| 9 | SN_OBRIGATORIO | CHAR | Y |  |

---

## IDCECRER.RS_LAU_ETAPA_EXAME_WORKFLOW

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_ETAPA_EXAME_ORIGEM | NUMBER | N |  |
| 2 | ID_ETAPA_EXAME_DESTINO | NUMBER | N |  |
| 3 | DT_CADASTRO | DATE | N |  |
| 4 | DT_ALTERACAO | DATE | Y |  |
| 5 | ID_USUARIO | NUMBER | Y |  |

---

## IDCECRER.RS_LAU_ETAPA_PROCEDIMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_ETAPA_PROCEDIMENTO | NUMBER | N |  |
| 2 | ID_ETAPA | NUMBER | N |  |
| 3 | ID_PROCEDIMENTO_UNIDADE | NUMBER | N |  |
| 4 | NR_ORDEM | NUMBER | Y |  |
| 5 | DT_CADASTRO | DATE | N |  |
| 6 | DT_ALTERACAO | DATE | Y |  |
| 7 | ID_USUARIO | NUMBER | Y |  |
| 8 | SN_ATIVO | CHAR | Y |  |
| 9 | SN_OBRIGATORIO | CHAR | Y |  |

---

## IDCECRER.RS_LAU_ETAPA_SETOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_ETAPA_EXAME | NUMBER | N |  |
| 2 | ID_ETAPA | NUMBER | N |  |
| 3 | ID_SETOR_EXECUTANTE | NUMBER | N |  |
| 4 | NR_ORDEM | NUMBER | Y |  |
| 5 | DT_CADASTRO | DATE | N |  |
| 6 | DT_ALTERACAO | DATE | Y |  |
| 7 | ID_USUARIO | NUMBER | Y |  |

---

## IDCECRER.RS_LAU_ETAPA_SETOR_WORKFLOW

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_ETAPA_SETOR_ORIGEM | NUMBER | N |  |
| 2 | ID_ETAPA_SETOR_DESTINO | NUMBER | N |  |
| 3 | DT_CADASTRO | DATE | N |  |
| 4 | DT_ALTERACAO | DATE | Y |  |
| 5 | ID_USUARIO | NUMBER | Y |  |

---

## IDCECRER.RS_LAU_EXAME_PEDIDO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 2 | ID_PEDIDO_EXAME | NUMBER | N |  |
| 3 | ID_MEDICO_EXECUTANTE | NUMBER | Y |  |
| 4 | ID_MEDICO_REVISOR | NUMBER | Y |  |
| 5 | ID_MEDICO_REVISOR_FINAL | NUMBER | Y |  |
| 6 | ID_SALA | NUMBER | Y |  |
| 7 | DT_CADASTRO | DATE | N |  |
| 8 | DT_ALTERACAO | DATE | Y |  |
| 9 | ID_EXAME_UNIDADE | NUMBER | Y |  |
| 10 | ID_USUARIO_INCLUSAO | NUMBER | Y |  |
| 11 | ID_USUARIO_ALTERACAO | NUMBER | Y |  |
| 12 | DT_DUM | DATE | Y |  |
| 13 | CD_ITEM_PEDIDO_HIS | VARCHAR2 | Y |  |
| 14 | ID_ORIGEM_ATENDIMENTO | NUMBER | Y |  |
| 15 | ID_SETOR | NUMBER | Y |  |
| 16 | ID_USUARIO_ENTRADA_EXAME | NUMBER | Y |  |
| 17 | ID_USUARIO_SAIDA_EXAME | NUMBER | Y |  |
| 18 | DT_ENTRADA_EXAME | DATE | Y |  |
| 19 | DT_SAIDA_EXAME | DATE | Y |  |
| 20 | NR_ALTURA | NUMBER | Y |  |
| 21 | NR_PESO | NUMBER | Y |  |
| 22 | SN_PENDENTE | CHAR | Y |  |
| 23 | DT_FINALIZACAO | DATE | Y |  |
| 24 | DT_LAUDADO | DATE | Y |  |
| 25 | DT_PEDIDO | DATE | Y |  |
| 26 | DT_IMPRESSO | DATE | Y |  |
| 27 | DT_ASSINADO | DATE | Y |  |
| 28 | DT_DIGITADO | DATE | Y |  |
| 29 | DT_REVISADO | DATE | Y |  |
| 30 | DT_REVISADO_FINAL | DATE | Y |  |
| 31 | DT_ENTREGA | DATE | Y |  |
| 32 | NM_ACOMODACAO_HIS | VARCHAR2 | Y |  |
| 33 | NM_LOCAL_ENTREGA_HIS | VARCHAR2 | Y |  |
| 34 | NM_INDICACAO_HIS | VARCHAR2 | Y |  |
| 35 | SN_MIDIA_RESULTADO | CHAR | Y |  |
| 36 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 37 | ID_USUARIO_LIBERACAO | NUMBER | Y |  |
| 38 | ID_USUARIO_ONLINE | NUMBER | Y |  |
| 39 | DS_OPERACAO_ONLINE | VARCHAR2 | Y |  |
| 40 | SN_SMS_ENVIADO | CHAR | Y |  |
| 41 | DS_LAUDO_RTF | CLOB | Y |  |
| 42 | DS_LAUDO_TXT | CLOB | Y |  |
| 43 | DS_LAUDO_HTML | CLOB | Y |  |
| 44 | SN_NORMAL | CHAR | Y |  |
| 45 | ID_JUSTIFICATIVA | NUMBER | Y |  |
| 46 | ID_USUARIO_JUSTIFICATIVA | NUMBER | Y |  |
| 47 | DS_LEITO_HIS | VARCHAR2 | Y |  |
| 48 | DS_REGIAO_EXAMINADA | VARCHAR2 | Y |  |
| 49 | SN_AGRUPAR_IMAGEM | CHAR | Y |  |
| 50 | SN_AGRUPAR_LAUDO | CHAR | Y |  |
| 51 | ID_DIAGNOSTICO_RADIO | NUMBER | Y |  |
| 52 | ID_DIAGNOSTICO_CLINICO | NUMBER | Y |  |
| 53 | ID_DIAGNOSTICO_CIRURGICO | NUMBER | Y |  |
| 54 | DS_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 55 | DT_JUSTIFICATIVA | DATE | Y |  |
| 56 | DS_LAUDO_SEM_IMAGEM | VARCHAR2 | Y |  |
| 57 | DT_DS_LAUDO_SEM_IMAGEM | DATE | Y |  |
| 58 | ID_USUARIO_LAUDO_SEM_IMAGEM | NUMBER | Y |  |
| 59 | DS_LAUDO_PDF | BLOB | Y |  |
| 60 | DS_CERTIFICACAO_DIGITAL | VARCHAR2 | Y |  |
| 61 | SN_ATIVO | CHAR | Y |  |
| 62 | DT_STUDY | DATE | Y |  |
| 63 | DT_ENTREGA_PREVISTA | DATE | Y |  |
| 64 | DT_DITADO | DATE | Y |  |
| 65 | ID_MEDICO_DITADO | NUMBER | Y |  |
| 66 | ID_SETOR_EXECUTANTE | NUMBER | Y |  |
| 67 | LAU_ID | NUMBER | Y |  |
| 68 | ID_ETAPA_ATUAL | NUMBER | Y |  |
| 69 | DS_PRESCRICAO | CHAR | Y |  |
| 70 | SN_PRESCRICAO_URGENTE | CHAR | Y |  |
| 71 | SN_EXAME_CONCLUIDO | CHAR | Y |  |
| 72 | LAYOUT_NOVO_EDITOR | BLOB | Y |  |
| 73 | ID_MEDICO_UNIDADE_ONLINE | NUMBER | Y |  |
| 74 | CD_STUDY_UID | VARCHAR2 | Y |  |
| 75 | DS_LAUDO_XML_CERTIFICADO | CLOB | Y |  |
| 76 | DT_ANAMNESE | DATE | Y |  |
| 77 | SN_SMS_MEDICO_EXEC_ENVIADO | CHAR | Y |  |
| 78 | SN_EMAIL_MEDCICO_EXEC_ENVIADO | CHAR | Y |  |
| 79 | SN_EMAIL_ENVIADO | CHAR | Y |  |
| 80 | ID_JUSTIFICATIVA_CANCELAMENTO | NUMBER | Y |  |
| 81 | SN_STUDY_PED | CHAR | N |  |
| 82 | DS_LAUDO_PDF_MARCADAGUA | BLOB | Y |  |
| 83 | DS_LAUDO_RTF_ANSI | CLOB | Y |  |
| 84 | DS_RTF_BKP | CLOB | Y |  |
| 85 | MESSAGE_ID | NUMBER | Y |  |
| 86 | TP_INTEGRACAO_LAUDO | CHAR | N | Descrição de alguma observação em caso de erro da integração idcecrer X MV |
| 87 | DS_INTEGRACAO_LAUDO | VARCHAR2 | Y |  |
| 88 | ID_TIPO_PRIORIDADE | NUMBER | Y |  |
| 89 | ID_JUSTIFICATIVA_IMAGEM | NUMBER | Y |  |
| 90 | DS_JUSTIFICATIVA_IMAGEM | VARCHAR2 | Y |  |
| 91 | DT_JUSTIFICATIVA_IMAGEM | DATE | Y |  |
| 92 | SN_TERCEIRA_OPINIAO | CHAR | Y |  |
| 93 | ID_EXAME_PEDIDO_PAI | NUMBER | Y | ATENÇÃO: ESTE ID É PARA DEFINIR UM VINCULO, NÃO REPRESENTA MAIS O ID_EXAME_PEDIDO DESTA TABELA |
| 94 | SN_PANICO | CHAR | N |  |
| 95 | DT_CERTIFICADO | DATE | Y |  |
| 96 | ID_USUARIO_MARCAR_CERTIFICADO | NUMBER | Y |  |
| 97 | SN_PROVISORIO | CHAR | N |  |
| 98 | DT_DISTRIBUICAO_EXECUTANTE | DATE | Y |  |
| 99 | DT_DISTRIBUICAO_REVISOR | DATE | Y |  |
| 100 | ID_USU_DISTRIBUICAO_EXECUTANTE | NUMBER | Y |  |
| 101 | ID_USU_DISTRIBUICAO_REVISOR | NUMBER | Y |  |
| 102 | SN_DISTRIBUICAO_EXECUTANTE | CHAR | N |  |
| 103 | SN_DISTRIBUICAO_REVISOR | CHAR | N |  |
| 104 | SN_VISUALIZADO_PORTAL | CHAR | N |  |
| 105 | QT_IMAGEM_PACS | NUMBER | Y |  |
| 106 | DT_NAO_CONFORMIDADE | DATE | Y |  |
| 107 | DS_NAO_CONFORMIDADE | VARCHAR2 | Y |  |
| 108 | ID_USU_NAO_CONFORMIDADE | NUMBER | Y |  |
| 109 | DS_NAO_CONFORMIDADE_CANCEL | VARCHAR2 | Y |  |
| 110 | DS_OPER_REGANS | VARCHAR2 | Y | Registro da Operadora de Saúde na ANS |
| 111 | DS_OPER_NUMCARTEIRA | VARCHAR2 | Y | Número do Cartão do Beneficiário na Operadora |
| 112 | DS_OPER_NUMGUIA | VARCHAR2 | Y | Número da Autorização da Guia TISS |
| 113 | DS_OPER_EXAME | VARCHAR2 | Y | Código de cada exame contido na Guia |
| 114 | DT_ATUALIZACAO_ERRATA | DATE | Y |  |
| 115 | ID_DOCUMENTO_CARTORIO | NUMBER | Y |  |
| 116 | NM_CERT_DIGITAL | VARCHAR2 | Y |  |
| 117 | NM_FORNECEDOR_CERT_DIGITAL | VARCHAR2 | Y |  |
| 118 | DT_FORNECEDOR_CERT_DIGITAL | DATE | Y |  |
| 119 | NR_CPF_CERT_DIGITAL | VARCHAR2 | Y |  |
| 120 | DT_NAO_CONFORMIDADE_RESOLVIDA | DATE | Y |  |
| 121 | DS_INCONFORMIDADE | VARCHAR2 | Y |  |
| 122 | CD_STATUS_IA | NUMBER | Y | Enumerador com status da Inteligência Artificial (IA) |
| 123 | DS_PANICO | VARCHAR2 | Y |  |
| 124 | NM_TECNICO_RESPONSAVEL | VARCHAR2 | Y |  |
| 125 | DS_EMAIL_ENVIADO | VARCHAR2 | Y |  |
| 126 | DS_IG | VARCHAR2 | Y |  |
| 127 | DT_ULTIMA_US | DATE | Y |  |
| 128 | DS_IG_ULTIMA_US | VARCHAR2 | Y |  |
| 129 | DS_IG_CORRIGIDA | VARCHAR2 | Y |  |
| 130 | ID_MEDICO_ORIENTADOR | NUMBER | Y |  |
| 131 | DT_MEDICO_ORIENTADOR | DATE | Y |  |
| 132 | ID_USU_ENTREGA | NUMBER | Y |  |
| 133 | SN_CANCELADO | CHAR | Y |  |
| 134 | DT_CADASTRO_PANICO | DATE | Y |  |
| 135 | NM_CONTATO_PANICO | VARCHAR2 | Y |  |
| 136 | DT_REFAZER | DATE | Y |  |
| 137 | DS_LAUDO_RTF_REFEITO | CLOB | Y |  |
| 138 | DS_LAUDO_RTF_ANTERIOR | CLOB | Y |  |
| 139 | ID_JUSTIFICATIVA_REFAZER | NUMBER | Y |  |
| 140 | DS_JUSTIFICATIVA_REFAZER | VARCHAR2 | Y |  |
| 141 | ID_EXECUTANTE_ANTERIOR | NUMBER | Y |  |
| 142 | ID_REVISOR_ANTERIOR | NUMBER | Y |  |
| 143 | DS_JUST_ERRATA | VARCHAR2 | Y |  |
| 144 | DT_JUST_ERRATA | DATE | Y |  |
| 145 | ID_USUARIO_JUST_ERRATA | NUMBER | Y |  |
| 146 | ID_JUST_ERRATA | NUMBER | Y |  |
| 147 | ID_USUARIO_PARECER | NUMBER | Y |  |
| 148 | DS_PARECER | VARCHAR2 | Y |  |
| 149 | DT_CADASTRO_PARECER | DATE | Y |  |
| 150 | DT_ALTERACAO_PARECER | DATE | Y | Data Da Alteracao Do Parecer |
| 151 | TP_ACEITE_PARECER | CHAR | Y |  |
| 152 | DT_ACEITE_PARECER | DATE | Y |  |
| 153 | ID_USUARIO_ACEITE_PARECER | NUMBER | Y | Indicador Do UsuarioAceite Do Parecer |
| 154 | ID_JUSTIFICATIVA_PARECER | NUMBER | Y | Indicador Da Justificativa Do Parecer |
| 155 | DS_JUSTIFICATIVA_PARECER | VARCHAR2 | Y | Descricao Da Justificativa Do Parecer |
| 156 | DT_JUSTIFICATIVA_PARECER | DATE | Y | Data Da Justificativa Do Parecer |
| 157 | ID_USUARIO_JUST_PARECER | NUMBER | Y | Indicador Do Usuario Da Justificativa Do Parecer |
| 158 | DT_ULT_SECUNDARIO | DATE | Y | Data do ultimo exame secundario |
| 159 | TP_ACEITE_LAUDO | CHAR | Y | TIPO DE ACEITE DO LAUDO |
| 160 | DT_ACEITE_LAUDO | DATE | Y | DATA DO ACEITE DO LAUDO |
| 161 | ID_USUARIO_ACEITE_LAUDO | NUMBER | Y | INDICADOR DO USUARIOACEITE DO LAUDO |
| 162 | ID_JUSTIFICATIVA_LAUDO | NUMBER | Y | INDICADOR DA JUSTIFICATIVA DO LAUDO |
| 163 | DS_JUSTIFICATIVA_LAUDO | VARCHAR2 | Y | DESCRICAO DA JUSTIFICATIVA DO LAUDO |
| 164 | DT_JUSTIFICATIVA_LAUDO | DATE | Y | DATA DA JUSTIFICATIVA DO LAUDO |
| 165 | ID_USUARIO_JUST_LAUDO | NUMBER | Y | INDICADOR DO USUARIO DA JUSTIFICATIVA DO LAUDO |
| 166 | DT_COLETA_HIS | DATE | Y | Data da coleta do pedido caso esteja null, deve ser colocada a informação da data do pedido |
| 167 | SN_EMAIL_ENVIADO_SOLICITANTE | CHAR | Y |  |
| 168 | SN_URGENTE_HIS | CHAR | Y | (S/N) URGÊNCIA HIS |
| 169 | DS_DPP | VARCHAR2 | Y | Data Provável do Parto |
| 170 | ID_JUSTIFICATIVA_SECUNDARIO | NUMBER | Y | ID da justificativa do exame secundário |
| 171 | DT_JUSTIFICATIVA_SECUNDARIO | DATE | Y | Data da justificativa do exame secundário |
| 172 | DS_JUSTIFICATIVA_SECUNDARIO | VARCHAR2 | Y | Descrição da justificativa do exame secundário |
| 173 | ID_USUARIO_ALTERACAO_PARECER | NUMBER | Y | Indicador Do Usuario Alteração Parecer |
| 174 | NR_COMENTARIO | NUMBER | Y | Número de comentários associados ao laudo |
| 175 | NR_ANEXOS | NUMBER | Y | Número de pedidos medicos associados ao laudo |
| 176 | DS_ULTIMO_COMENTARIO | VARCHAR2 | Y | Texto do ultimo comentário |
| 177 | ID_USUARIO_JUST_DESBLOQ_LAUDO | NUMBER | Y | Indicador do usuario da justificativa de desbloqueio das acoes no laudo |

---

## IDCECRER.RS_LAU_EXAME_PEDIDO_BIRADS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 2 | TP_CLASSIFICACAO | VARCHAR2 | N |  |
| 3 | SN_CRITICO | CHAR | N |  |
| 4 | DS_DESCRICAO | VARCHAR2 | Y |  |
| 5 | ID_USUARIO_CADASTRO | NUMBER | N |  |
| 6 | DT_CADASTRO | DATE | N |  |
| 7 | ID_USUARIO_ALTERACAO | NUMBER | Y |  |
| 8 | DT_ALTERACAO | DATE | Y |  |

---

## IDCECRER.RS_LAU_EXAME_PEDIDO_CARTORIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME_PEDIDO_CARTORIO | NUMBER | N |  |
| 2 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 3 | DS_LAUDO_RTF | CLOB | N |  |
| 4 | DT_ENVIO | DATE | N |  |
| 5 | DT_RESPOSTA | DATE | Y |  |
| 6 | ID_DOCUMENTO_CARTORIO | NUMBER | Y |  |
| 7 | CD_STATUS | NUMBER | Y |  |
| 8 | DS_STATUS | VARCHAR2 | Y |  |
| 9 | ID_USUARIO_ENVIO | NUMBER | N |  |
| 10 | DT_CONCLUSAO | DATE | Y |  |
| 11 | ID_EXAME_PEDIDO_ERRATA | NUMBER | Y |  |
| 12 | DS_LAUDO_PDF | BLOB | Y |  |

---

## IDCECRER.RS_LAU_EXAME_PEDIDO_CD

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_CD | NUMBER | N |  |
| 2 | ID_EXAME_PEDIDO | NUMBER | N |  |

---

## IDCECRER.RS_LAU_EXAME_PEDIDO_COMENTARIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_COMENTARIO | NUMBER | N |  |
| 2 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 3 | DS_COMENTARIO | VARCHAR2 | Y |  |
| 4 | DT_CADASTRO | DATE | N |  |
| 5 | DT_ALTERACAO | DATE | Y |  |
| 6 | ID_USUARIO | NUMBER | N |  |
| 7 | ID_TIPO_PRIORIDADE | NUMBER | Y |  |

---

## IDCECRER.RS_LAU_EXAME_PEDIDO_ERRATA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME_PEDIDO_ERRATA | NUMBER | N |  |
| 2 | ID_EXAME_PEDIDO | NUMBER | Y |  |
| 3 | DT_ERRATA | DATE | Y |  |
| 4 | ID_MEDICO_UNIDADE | NUMBER | Y |  |
| 5 | DS_ERRATA | CLOB | Y |  |
| 6 | ID_USUARIO | NUMBER | Y |  |
| 7 | SN_TEXTO_ORIGINAL | CHAR | N |  |
| 8 | SN_PENDENTE | CHAR | N |  |
| 9 | TP_REGISTRO | CHAR | Y |  |
| 10 | SN_ATIVO | CHAR | Y |  |

---

## IDCECRER.RS_LAU_EXAME_PEDIDO_EXT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 2 | DS_PDF | BLOB | N |  |
| 3 | DT_PDF | DATE | N |  |

---

## IDCECRER.RS_LAU_EXAME_PEDIDO_INSUMO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME_PEDIDO_INSUMO | NUMBER | N | Sequencial |
| 2 | ID_EXAME_PEDIDO | NUMBER | N | Item do Pedido RIS |
| 3 | ID_PRODUTO_UNIDADE | NUMBER | N | Produto |
| 4 | CD_UNIDADE_MEDIDA | VARCHAR2 | N | Unidade de medida para o item |
| 5 | QT_PEDIDA | NUMBER | N | Quantidade requisitada pelo HIS |
| 6 | QT_ATENDIDA | NUMBER | Y | Quantidade confirmada |
| 7 | CD_STATUS | CHAR | N | Status do item - P (Pedido), A (Atendido), E (Excluido) |
| 8 | TP_TRANSPORTADO | CHAR | N | Status de integração - A (aguardando), T (Transportado) |

---

## IDCECRER.RS_LAU_EXAME_PEDIDO_JUST

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME_PEDIDO_JUSTIFICATIVA | NUMBER | N | Indicador do exame pedido justificativa |
| 2 | ID_EXAME_PEDIDO | NUMBER | N | Indicador do exame pedido |
| 3 | ID_JUSTIFICATIVA | NUMBER | Y | Indicador da justificativa |
| 4 | ID_USUARIO | NUMBER | N | Indicador do usuario da justificativa |
| 5 | DS_JUSTIFICATIVA | VARCHAR2 | Y | Descrição da justificativa |
| 6 | CD_JUSTIFICATIVA | CHAR | Y | Codigo Do Justificativa |
| 7 | DT_JUSTIFICATIVA | DATE | N | Data da inclusão da justificativa |

---

## IDCECRER.RS_LAU_EXAME_PEDIDO_LIRADS
> Tabela de LIRADS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME_PEDIDO | NUMBER | N | Id do laudo |
| 2 | TP_CLASSIFICACAO | VARCHAR2 | N | classificação que pode ser: 1, 2, 3, 4, 5, M, TIV ou NC |
| 3 | SN_CRITICO | CHAR | N | Resultado critico |
| 4 | DS_DESCRICAO | VARCHAR2 | Y | Descrição do resultado critico |
| 5 | ID_USUARIO_CADASTRO | NUMBER | N | Id do usuário que cadastrou |
| 6 | DT_CADASTRO | DATE | N | Data de cadastro |
| 7 | ID_USUARIO_ALTERACAO | NUMBER | Y | Id do usuário que alterou |
| 8 | DT_ALTERACAO | DATE | Y | Data de alteração |

---

## IDCECRER.RS_LAU_EXAME_PEDIDO_OBSERVACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_OBSERVACAO | NUMBER | N |  |
| 2 | ID_EXAME_PEDIDO | NUMBER | Y |  |
| 3 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 4 | DT_CADASTRO | DATE | N |  |
| 5 | DT_ALTERACAO | DATE | Y |  |
| 6 | ID_USUARIO | NUMBER | N |  |

---

## IDCECRER.RS_LAU_EXAME_PEDIDO_PDF

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 2 | DS_LAUDO_PDF | BLOB | Y |  |
| 3 | DS_LAUDO_PDF_MARCADAGUA | BLOB | Y |  |
| 4 | LAYOUT_NOVO_EDITOR | BLOB | Y |  |

---

## IDCECRER.RS_LAU_EXAME_PEDIDO_PIRADS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 2 | TP_CLASSIFICACAO | CHAR | N |  |
| 3 | SN_CRITICO | CHAR | N |  |
| 4 | DS_DESCRICAO | VARCHAR2 | Y |  |
| 5 | ID_USUARIO_CADASTRO | NUMBER | N |  |
| 6 | DT_CADASTRO | DATE | N |  |
| 7 | ID_USUARIO_ALTERACAO | NUMBER | Y |  |
| 8 | DT_ALTERACAO | DATE | Y |  |

---

## IDCECRER.RS_LAU_EXAME_PEDIDO_PIRADS_ITM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_PIRADS_ITEM | NUMBER | N |  |
| 2 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 3 | VL_RX | NUMBER | N |  |
| 4 | VL_RY | NUMBER | N |  |
| 5 | VL_TRANSLATE_X | NUMBER | N |  |
| 6 | VL_TRANSLATE_Y | NUMBER | N |  |
| 7 | VL_ANGLE | NUMBER | Y |  |
| 8 | VL_SCALE_X | NUMBER | Y |  |
| 9 | VL_SCALE_Y | NUMBER | Y |  |
| 10 | VL_FILL | VARCHAR2 | Y |  |
| 11 | VL_STROKE | VARCHAR2 | Y |  |
| 12 | VL_STROKE_DASHARRAY | VARCHAR2 | Y |  |
| 13 | ID_USUARIO_CADASTRO | NUMBER | N |  |
| 14 | DT_CADASTRO | DATE | N |  |
| 15 | ID_USUARIO_ALTERACAO | NUMBER | Y |  |
| 16 | DT_ALTERACAO | DATE | Y |  |
| 17 | SN_ATIVO | CHAR | N |  |

---

## IDCECRER.RS_LAU_EXAME_PEDIDO_SECUNDARIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME_PEDIDO_SECUNDARIO | NUMBER | N |  |
| 2 | ID_EXAME_PEDIDO | NUMBER | Y |  |
| 3 | ID_EXAME_UNIDADE | NUMBER | Y |  |
| 4 | DS_JUSTIFICATIVA_INCLUSAO | VARCHAR2 | Y |  |
| 5 | DS_JUSTIFICATIVA_CANCELAMENTO | VARCHAR2 | Y |  |
| 6 | DT_RETORNO | DATE | Y |  |
| 7 | DT_CADASTRO | DATE | Y |  |

---

## IDCECRER.RS_LAU_EXAME_PEDIDO_SEGMENTOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 2 | NR_SEGMENTO_1 | NUMBER | N |  |
| 3 | NR_SEGMENTO_2 | NUMBER | N |  |
| 4 | NR_SEGMENTO_3 | NUMBER | N |  |
| 5 | NR_SEGMENTO_4 | NUMBER | N |  |
| 6 | NR_SEGMENTO_5 | NUMBER | N |  |
| 7 | NR_SEGMENTO_6 | NUMBER | N |  |
| 8 | NR_SEGMENTO_7 | NUMBER | N |  |
| 9 | NR_SEGMENTO_8 | NUMBER | N |  |
| 10 | NR_SEGMENTO_9 | NUMBER | N |  |
| 11 | NR_SEGMENTO_10 | NUMBER | N |  |
| 12 | NR_SEGMENTO_11 | NUMBER | N |  |
| 13 | NR_SEGMENTO_12 | NUMBER | N |  |
| 14 | NR_SEGMENTO_13 | NUMBER | N |  |
| 15 | NR_SEGMENTO_14 | NUMBER | N |  |
| 16 | NR_SEGMENTO_15 | NUMBER | N |  |
| 17 | NR_SEGMENTO_16 | NUMBER | N |  |
| 18 | NR_SEGMENTO_17 | NUMBER | N |  |
| 19 | NR_SCORE | NUMBER | N |  |
| 20 | DS_TEXTO | CLOB | N |  |
| 21 | DT_CADASTRO | DATE | N |  |
| 22 | ID_USU_CADASTRO | NUMBER | N |  |
| 23 | DT_ALTERACAO | DATE | Y |  |
| 24 | ID_USU_ALTERACAO | NUMBER | Y |  |
| 25 | NR_VIABILIDADE_1 | NUMBER | N |  |
| 26 | NR_VIABILIDADE_2 | NUMBER | N |  |
| 27 | NR_VIABILIDADE_3 | NUMBER | N |  |
| 28 | NR_VIABILIDADE_4 | NUMBER | N |  |
| 29 | NR_VIABILIDADE_5 | NUMBER | N |  |
| 30 | NR_VIABILIDADE_6 | NUMBER | N |  |
| 31 | NR_VIABILIDADE_7 | NUMBER | N |  |
| 32 | NR_VIABILIDADE_8 | NUMBER | N |  |
| 33 | NR_VIABILIDADE_9 | NUMBER | N |  |
| 34 | NR_VIABILIDADE_10 | NUMBER | N |  |
| 35 | NR_VIABILIDADE_11 | NUMBER | N |  |
| 36 | NR_VIABILIDADE_12 | NUMBER | N |  |
| 37 | NR_VIABILIDADE_13 | NUMBER | N |  |
| 38 | NR_VIABILIDADE_14 | NUMBER | N |  |
| 39 | NR_VIABILIDADE_15 | NUMBER | N |  |
| 40 | NR_VIABILIDADE_16 | NUMBER | N |  |
| 41 | NR_VIABILIDADE_17 | NUMBER | N |  |

---

## IDCECRER.RS_LAU_EXAME_PEDIDO_TIRADS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 2 | TP_CLASSIFICACAO | VARCHAR2 | N |  |
| 3 | SN_CRITICO | CHAR | N |  |
| 4 | DS_DESCRICAO | VARCHAR2 | Y |  |
| 5 | ID_USUARIO_CADASTRO | NUMBER | N |  |
| 6 | DT_CADASTRO | DATE | N |  |
| 7 | ID_USUARIO_ALTERACAO | NUMBER | Y |  |
| 8 | DT_ALTERACAO | DATE | Y |  |

---

## IDCECRER.RS_LAU_EXAME_PEDIDO_TVP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_TVP | NUMBER | N |  |
| 2 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 3 | DT_CADASTRO | DATE | N |  |
| 4 | ID_USUARIO_CADASTRO | NUMBER | N |  |
| 5 | DT_ALTERACAO | DATE | Y |  |
| 6 | ID_USUARIO_ALTERACAO | NUMBER | Y |  |

---

## IDCECRER.RS_LAU_EXAME_PEDIDO_TVP_GRUPO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_TVP_GRUPO | NUMBER | N |  |
| 2 | ID_TVP | NUMBER | N |  |
| 3 | TP_GRUPO | VARCHAR2 | N |  |
| 4 | DS_AVULSA | VARCHAR2 | Y |  |
| 5 | TP_TROMBOSE | CHAR | Y |  |
| 6 | TP_RECANALIZACAO_PRESENTE | CHAR | Y |  |
| 7 | SN_TROMBO_MOVEL | CHAR | Y |  |
| 8 | TP_REFLUXO_SECUNDARIO | CHAR | Y |  |

---

## IDCECRER.RS_LAU_FILTRO_ABA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_FILTRO_ABA | NUMBER | N |  |
| 2 | NM_FILTRO_ABA | VARCHAR2 | N |  |
| 3 | SN_ATIVO | CHAR | Y |  |
| 4 | DT_CADASTRO | DATE | Y |  |
| 5 | DT_ALTERACAO | DATE | Y |  |
| 6 | SN_OBRIGATORIO | CHAR | Y |  |
| 7 | DS_FILTRO_ABA | VARCHAR2 | Y |  |
| 8 | ID_PAGE_STR | VARCHAR2 | Y |  |

---

## IDCECRER.RS_LAU_FILTRO_ABA_UNIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_FILTRO_ABA_UNIDADE | NUMBER | N |  |
| 2 | ID_UNIDADE | NUMBER | N |  |
| 3 | ID_FILTRO_ABA | NUMBER | N |  |
| 4 | NR_ORDEM | NUMBER | N |  |
| 5 | SN_VISIVEL | CHAR | Y |  |
| 6 | SN_ATIVO | CHAR | Y |  |
| 7 | DT_CADASTRO | DATE | N |  |
| 8 | DT_ALTERACAO | DATE | Y |  |

---

## IDCECRER.RS_LAU_FORMULA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_FORMULA | NUMBER | N |  |
| 2 | NR_ORDENACAO | NUMBER | Y |  |
| 3 | DS_TEXTO_FORMULA | VARCHAR2 | Y |  |
| 4 | DS_VALOR_REFERENCIA | VARCHAR2 | Y |  |
| 5 | DS_VALOR_REFERENCIA_INICIAL | NUMBER | Y |  |
| 6 | DS_VALOR_REFERENCIA_FINAL | NUMBER | Y |  |
| 7 | CD_UNIDADE_MEDIDA | VARCHAR2 | Y |  |
| 8 | CD_TIPO_CAMPO_FORMULA | VARCHAR2 | Y |  |
| 9 | CD_FORMULA | VARCHAR2 | Y |  |
| 10 | DS_FORMULA | VARCHAR2 | Y |  |
| 11 | ID_USUARIO | NUMBER | Y |  |
| 12 | DT_CADASTRO | DATE | Y |  |
| 13 | DT_ALTERACAO | DATE | Y |  |
| 14 | ID_EXAME_PEDIDO | NUMBER | Y |  |
| 15 | VL_FORMULA | NUMBER | Y |  |
| 16 | SN_IMPRESSAO | CHAR | Y |  |

---

## IDCECRER.RS_LAU_HISTORICO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_HISTORICO | NUMBER | N |  |
| 2 | DS_TIPO_HISTORICO | VARCHAR2 | Y |  |
| 3 | ID_EXAME_PEDIDO | NUMBER | Y |  |
| 4 | ID_MEDICO_EXECUTANTE | NUMBER | Y |  |
| 5 | ID_MEDICO_REVISOR | NUMBER | Y |  |
| 6 | ID_MEDICO_REVISOR_FINAL | NUMBER | Y |  |
| 7 | DT_FINALIZACAO | DATE | Y |  |
| 8 | DT_LAUDADO | DATE | Y |  |
| 9 | DT_PEDIDO | DATE | Y |  |
| 10 | DT_IMPRESSO | DATE | Y |  |
| 11 | DT_ASSINADO | DATE | Y |  |
| 12 | DT_DIGITADO | DATE | Y |  |
| 13 | DT_REVISADO | DATE | Y |  |
| 14 | DT_REVISADO_FINAL | DATE | Y |  |
| 15 | DT_ENTREGA | DATE | Y |  |
| 16 | DS_LAUDO_TXT | CLOB | Y |  |
| 17 | ID_USUARIO | NUMBER | Y |  |
| 18 | DT_CADASTRO | DATE | N |  |
| 19 | DT_ALTERACAO | DATE | Y |  |
| 20 | ID_PACIENTE | NUMBER | Y |  |
| 21 | ID_UNIDADE | NUMBER | Y |  |
| 22 | NM_PACIENTE | VARCHAR2 | Y |  |
| 23 | DS_ENDERECO | VARCHAR2 | Y |  |
| 24 | DS_BAIRRO | VARCHAR2 | Y |  |
| 25 | DS_CIDADE | VARCHAR2 | Y |  |
| 26 | DS_UF | VARCHAR2 | Y |  |
| 27 | DS_CEP | VARCHAR2 | Y |  |
| 28 | DS_TELEFONE | VARCHAR2 | Y |  |
| 29 | DS_EMAIL | VARCHAR2 | Y |  |
| 30 | NM_MEDICO_EXECUTANTE | VARCHAR2 | Y |  |
| 31 | NM_MEDICO_REVISOR | VARCHAR2 | Y |  |
| 32 | NM_MEDICO_REVISOR_FINAL | VARCHAR2 | Y |  |
| 33 | DS_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 34 | DS_IP_MAQUINA | VARCHAR2 | Y |  |
| 35 | NM_MAQUINA | VARCHAR2 | Y |  |
| 36 | DS_LAUDO_PDF | BLOB | Y |  |
| 37 | TP_ORIGEM_APLICACAO | NUMBER | Y |  |
| 38 | DT_PANICO | DATE | Y |  |
| 39 | SN_IMPRESSAO | DATE | Y |  |
| 40 | ID_UNIDADE_EXECUTANTE | NUMBER | Y |  |
| 41 | DS_INCONFORMIDADE | VARCHAR2 | Y |  |
| 42 | DS_PANICO | VARCHAR2 | Y |  |
| 43 | DS_COMENTARIO | VARCHAR2 | Y |  |
| 44 | DT_CADASTRO_PANICO | DATE | Y |  |
| 45 | NM_CONTATO_PANICO | VARCHAR2 | Y |  |

---

## IDCECRER.RS_LAU_HISTORICO_ETAPA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_LAUDO_HISTORICO_ETAPA | NUMBER | N |  |
| 2 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 3 | ID_ETAPA | NUMBER | N |  |
| 4 | ID_USUARIO | NUMBER | N |  |
| 5 | DT_CADASTRO | DATE | N |  |
| 6 | DT_ALTERACAO | DATE | Y |  |
| 7 | DS_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 8 | SN_CANCELADO | CHAR | Y |  |

---

## IDCECRER.RS_LAU_HISTORICO_INSUMO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_LAUDO_HISTORICO_INSUMO | NUMBER | N |  |
| 2 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 3 | ID_USUARIO | NUMBER | N |  |
| 4 | DT_CADASTRO | DATE | N |  |
| 5 | QT_ORIGINAL | NUMBER | N |  |
| 6 | QT_ALTERADA | NUMBER | N |  |
| 7 | ID_EXAME_PEDIDO_INSUMO | NUMBER | N |  |
| 8 | TP_OPERACAO | CHAR | N | 'A' -> Alterado, 'E' -> Excluído e 'I' -> Inserido |

---

## IDCECRER.RS_LAU_HISTORICO_LISTA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | TEXTO | VARCHAR2 | Y |  |
| 2 | ID_EXAME_PEDIDO | NUMBER | Y |  |
| 3 | NM_UNIDADE | VARCHAR2 | Y |  |

---

## IDCECRER.RS_LAU_HISTORICO_PDF

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_HISTORICO | NUMBER | N |  |
| 2 | DS_LAUDO_PDF | BLOB | Y |  |

---

## IDCECRER.RS_LAU_JUSTIFICATIVA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_JUSTIFICATIVA | NUMBER | N |  |
| 2 | NM_JUSTIFICATIVA | VARCHAR2 | N |  |
| 3 | DS_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 4 | SN_ATIVO | CHAR | Y |  |
| 5 | DT_CADASTRO | DATE | N |  |
| 6 | DT_ALTERACAO | DATE | Y |  |
| 7 | ID_USUARIO | NUMBER | Y |  |
| 8 | ID_INTERBASE | NUMBER | Y |  |
| 9 | CD_JUSTIFICATIVA | CHAR | Y | 'C' cancelamento, 'I' imagem e 'A' atraso |

---

## IDCECRER.RS_LAU_LEGADO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ACCESSIONNUMBER | VARCHAR2 | Y |  |
| 2 | STUDY_UID | VARCHAR2 | N |  |
| 3 | STUDYTIME | DATE | N |  |
| 4 | PATIENTID | VARCHAR2 | N |  |
| 5 | PATIENTNAME_DICOM | VARCHAR2 | Y |  |
| 6 | DATEOFBIRTH | DATE | Y |  |
| 7 | SEX | VARCHAR2 | Y |  |
| 8 | STUDYDESCRIPTION | VARCHAR2 | Y |  |
| 9 | DT_REVISADO | DATE | Y |  |
| 10 | NM_REVISOR | VARCHAR2 | Y |  |
| 11 | ID_LAUDO | NUMBER | N |  |
| 12 | DS_LAUDO | CLOB | Y |  |

---

## IDCECRER.RS_LAU_NCONFORMIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_NCONFORMIDADE | NUMBER | N |  |
| 2 | DS_NCONFORMIDADE | VARCHAR2 | N |  |

---

## IDCECRER.RS_LAU_ORIGEM_ATENDIMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_ORIGEM_ATENDIMENTO | NUMBER | N |  |
| 2 | CD_STATUS | CHAR | N |  |
| 3 | DS_STATUS | VARCHAR2 | Y |  |
| 4 | ID_USUARIO | NUMBER | Y |  |
| 5 | DT_CADASTRO | DATE | Y |  |
| 6 | DT_ALTERACAO | DATE | Y |  |
| 7 | DS_COR | VARCHAR2 | Y |  |
| 8 | SN_CENTRAL | CHAR | Y |  |

---

## IDCECRER.RS_LAU_PEDIDO_EXAME

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_PEDIDO_EXAME | NUMBER | N |  |
| 2 | ID_MEDICO_SOLICITANTE | NUMBER | Y |  |
| 3 | ID_UNIDADE | NUMBER | Y |  |
| 4 | ID_PACIENTE | NUMBER | Y |  |
| 5 | ID_CONVENIO | NUMBER | Y |  |
| 6 | ID_USUARIO | NUMBER | Y |  |
| 7 | DT_PEDIDO_HIS | DATE | Y |  |
| 8 | SN_ATIVO | CHAR | Y |  |
| 9 | DT_CADASTRO | DATE | N |  |
| 10 | CD_ATENDIMENTO_HIS | VARCHAR2 | Y |  |
| 11 | CD_PEDIDO_HIS | VARCHAR2 | Y |  |
| 12 | DT_ALTERACAO | DATE | Y |  |
| 13 | NR_GUIA_HIS | VARCHAR2 | Y |  |
| 14 | ID_UNIDADE_ORIGEM | NUMBER | Y |  |
| 15 | ID_CLASSIFICACAO_RISCO | NUMBER | Y |  |
| 16 | ID_SETOR_SOLICITANTE | NUMBER | Y |  |
| 17 | ID_UNIDADE_EXECUTANTE | NUMBER | Y |  |
| 18 | ID_JUST_CANC_TRANSF_UND | NUMBER | Y |  |
| 19 | DS_JUST_CANC_TRANSF_UND | VARCHAR2 | Y |  |
| 20 | DT_TRANSFERENCIA_UNIDADE | DATE | Y |  |

---

## IDCECRER.RS_LAU_PROTOCOLO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_PROTOCOLO | NUMBER | N |  |
| 2 | ID_EXAME_PEDIDO | NUMBER | Y |  |
| 3 | DS_RESPONSAVEL | VARCHAR2 | Y |  |
| 4 | DT_ENTREGA | DATE | Y |  |
| 5 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 6 | DT_CADASTRO | DATE | N |  |
| 7 | DT_ALTERACAO | DATE | Y |  |
| 8 | ID_USUARIO | NUMBER | Y |  |
| 9 | ID_INTERBASE | NUMBER | Y |  |

---

## IDCECRER.RS_LAU_SETOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_SETOR | NUMBER | N |  |
| 2 | NM_SETOR | VARCHAR2 | N |  |
| 3 | DS_SETOR | VARCHAR2 | Y |  |
| 4 | CD_SETOR_HIS | VARCHAR2 | Y |  |
| 5 | ID_USUARIO | NUMBER | N |  |
| 6 | DT_CADASTRO | DATE | N |  |
| 7 | DT_ALTERACAO | DATE | Y |  |
| 8 | ID_INTERBASE | NUMBER | Y |  |
| 9 | SN_ATIVO | CHAR | N |  |
| 10 | SN_BLOQUEAR_LAUDO_EXAME_SETOR | CHAR | N | Bloquear ações no laudo para exames associados a este setor solicitante |

---

## IDCECRER.RS_LAU_SETOR_EXECUTANTE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_SETOR_EXECUTANTE | NUMBER | N |  |
| 2 | NM_SETOR_EXECUTANTE | VARCHAR2 | N |  |
| 3 | DS_SETOR_EXECUTANTE | VARCHAR2 | Y |  |
| 4 | ID_PROCEDIMENTO | NUMBER | Y |  |
| 5 | CD_SETOR_EXECUTANTE_HIS | VARCHAR2 | Y |  |
| 6 | ID_USUARIO | NUMBER | N |  |
| 7 | DT_CADASTRO | DATE | N |  |
| 8 | DT_ALTERACAO | DATE | Y |  |
| 9 | SN_INTEGRA | CHAR | Y |  |
| 10 | ID_UNIDADE | NUMBER | Y |  |
| 11 | SN_ENVIO_AUTOMATICO_SMS | CHAR | N |  |
| 12 | TEMPO_ENVIO_SMS_ASSINADO | NUMBER | Y |  |
| 13 | SN_BLOQUEIO_CANCELAMENTO | CHAR | N |  |
| 14 | TEMPO_BLOQUEIO_CANCELAMENTO | NUMBER | Y |  |

---

## IDCECRER.RS_LAU_TEXTO_BLOB

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_TEXTO_BLOB | NUMBER | N |  |
| 2 | DS_TEXTO | BLOB | Y |  |
| 3 | CD_UNIDADE_HIS | NUMBER | Y |  |

---

## IDCECRER.RS_LAU_TIPO_PRIORIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_TIPO_PRIORIDADE | NUMBER | N |  |
| 2 | DS_STATUS | VARCHAR2 | Y |  |
| 3 | ID_USUARIO | NUMBER | N |  |
| 4 | DT_CADASTRO | DATE | N |  |
| 5 | DT_ALTERACAO | DATE | Y |  |

---

## IDCECRER.RS_LAU_TMP_GRAFICO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DT_CADASTRO | DATE | Y |  |
| 2 | DT_LAUDADO | DATE | Y |  |
| 3 | DT_REVISADO | DATE | Y |  |
| 4 | DT_ASSINADO | DATE | Y |  |
| 5 | DT_IMPRESSO | DATE | Y |  |
| 6 | DT_DIGITADO | DATE | Y |  |
| 7 | SN_PENDENTE | CHAR | Y |  |
| 8 | ID_PROCEDIMENTO_UNIDADE | NUMBER | Y |  |

---

## IDCECRER.RS_LAU_TMP_MONITOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | PRCNOME | VARCHAR2 | Y |  |
| 2 | LAUDADO | NUMBER | Y |  |
| 3 | NLAUDADO | NUMBER | Y |  |
| 4 | PENDENTE | NUMBER | Y |  |
| 5 | ORDEM | NUMBER | Y |  |

---

## IDCECRER.RS_MD_CONSELHO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_CONSELHO | NUMBER | N |  |
| 2 | NM_CONSELHO | VARCHAR2 | Y |  |
| 3 | DS_UF | VARCHAR2 | Y |  |
| 4 | DS_CONSELHO | VARCHAR2 | Y |  |
| 5 | DT_CADASTRO | DATE | N |  |
| 6 | DT_ALTERACAO | DATE | Y |  |
| 7 | ID_USUARIO | NUMBER | Y |  |

---

## IDCECRER.RS_MD_FILTRO_PROCEDIMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_MEDICO_UNIDADE_FILTRO | NUMBER | N |  |
| 2 | ID_USUARIO | NUMBER | N |  |
| 3 | DT_CADASTRO | DATE | N |  |
| 4 | DT_ALTERACAO | DATE | Y |  |
| 5 | ID_PROCEDIMENTO | NUMBER | N |  |

---

## IDCECRER.RS_MD_FILTRO_SETOR_EXEC

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_MEDICO_UNIDADE_FILTRO | NUMBER | N |  |
| 2 | ID_USUARIO | NUMBER | N |  |
| 3 | DT_CADASTRO | DATE | N |  |
| 4 | DT_ALTERACAO | DATE | Y |  |
| 5 | ID_SETOR_EXEC | NUMBER | N |  |

---

## IDCECRER.RS_MD_FILTRO_SISTEMA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_MEDICO_UNIDADE_FILTRO | NUMBER | N |  |
| 2 | ID_USUARIO | NUMBER | N |  |
| 3 | DT_CADASTRO | DATE | N |  |
| 4 | DT_ALTERACAO | DATE | Y |  |
| 5 | ID_SISTEMA | NUMBER | N |  |

---

## IDCECRER.RS_MD_MEDICO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_MEDICO | NUMBER | N |  |
| 2 | NM_MEDICO | VARCHAR2 | Y |  |
| 3 | NM_REDUZIDO_MEDICO | VARCHAR2 | Y |  |
| 4 | DT_NASCIMENTO | DATE | Y |  |
| 5 | TP_SEXO | VARCHAR2 | Y |  |
| 6 | DS_ENDERECO | VARCHAR2 | Y |  |
| 7 | DS_CPF_CNPJ | VARCHAR2 | Y |  |
| 8 | DS_CRM | VARCHAR2 | Y |  |
| 9 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 10 | DS_BAIRRO | VARCHAR2 | Y |  |
| 11 | DS_CIDADE | VARCHAR2 | Y |  |
| 12 | DS_UF | VARCHAR2 | Y |  |
| 13 | DS_CEP | VARCHAR2 | Y |  |
| 14 | DS_TELEFONE | VARCHAR2 | Y |  |
| 15 | DS_FAX | VARCHAR2 | Y |  |
| 16 | DS_EMAIL | VARCHAR2 | Y |  |
| 17 | SN_ASSINATURA_DIGITALIZADA | CHAR | Y |  |
| 18 | SN_ASSINATURA_DIGITAL | CHAR | Y |  |
| 19 | SN_REVISAO_AUTOMATICA | CHAR | Y |  |
| 20 | SN_MEDICO_REVISOR | CHAR | Y |  |
| 21 | SN_SENHA_ADMINISTRADOR | CHAR | Y |  |
| 22 | SN_FILME | CHAR | Y |  |
| 23 | DS_ESPECIALIDADES | VARCHAR2 | Y |  |
| 24 | DT_CADASTRO | DATE | N |  |
| 25 | DT_ALTERACAO | DATE | Y |  |
| 26 | ID_USUARIO | NUMBER | Y |  |
| 27 | ID_CONSELHO | NUMBER | Y |  |
| 28 | CD_PRESTADOR_HIS | NUMBER | Y |  |
| 29 | SN_EMAIL | CHAR | Y |  |
| 30 | SN_SMS | CHAR | Y |  |
| 31 | DS_CELULAR | VARCHAR2 | Y |  |
| 32 | SN_RESTRICAO_HORARIO | CHAR | Y |  |
| 33 | SN_ASSINATURA_PERSONALIZADA | CHAR | Y |  |
| 34 | NR_ALTURA_ASSINATURA | NUMBER | Y |  |
| 35 | NR_LARGURA_ASSINATURA | NUMBER | Y |  |
| 36 | DS_RQE | NUMBER | Y | Registro de Qualificação de Especialidade |

---

## IDCECRER.RS_MD_MEDICO_ASSINATURA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_MEDICO | NUMBER | N |  |
| 2 | IM_ASSINATURA | BLOB | N |  |

---

## IDCECRER.RS_MD_MEDICO_EXCECAO_HR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXCECAO_HR | NUMBER | N |  |
| 2 | ID_HORARIO | NUMBER | N |  |
| 3 | HR_INICIO | DATE | N |  |
| 4 | HR_FIM | DATE | N |  |
| 5 | SN_EXCLUSAO | CHAR | N |  |
| 6 | DT_CADASTRO | DATE | N |  |
| 7 | ID_USUARIO | NUMBER | N | id do usuário responsável pelo cadastro |
| 8 | ID_USUARIO_ALTERACAO | NUMBER | Y |  |
| 9 | DT_EXCLUSAO | DATE | Y |  |
| 10 | DT_ALTERACAO | DATE | Y |  |
| 11 | NR_INDICE | NUMBER | N | Indice relativo a correncia do agendamento |
| 12 | ID_USUARIO_EXCLUSAO | NUMBER | Y |  |

---

## IDCECRER.RS_MD_MEDICO_HORARIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_HORARIO | NUMBER | N |  |
| 2 | ID_MEDICO_UNIDADE | NUMBER | N |  |
| 3 | ID_PROCEDIMENTO_UNIDADE | NUMBER | N |  |
| 4 | DT_INICIO | DATE | N |  |
| 5 | DT_FIM | DATE | N |  |
| 6 | SN_REPETIR | CHAR | N |  |
| 7 | SN_DOM | CHAR | N |  |
| 8 | SN_SEG | CHAR | N |  |
| 9 | SN_TER | CHAR | N |  |
| 10 | SN_QUA | CHAR | N |  |
| 11 | SN_QUI | CHAR | N |  |
| 12 | SN_SEX | CHAR | N |  |
| 13 | SN_SAB | CHAR | N |  |
| 14 | DT_INICO_REPETICAO | DATE | Y |  |
| 15 | DT_FIM_REPETICAO | DATE | Y |  |
| 16 | DT_CADASTRO | DATE | N |  |
| 17 | ID_USUARIO | NUMBER | N |  |
| 18 | ID_USUARIO_ALTERACAO | NUMBER | Y |  |
| 19 | DT_EXCLUSAO | DATE | Y |  |
| 20 | DT_ALTERACAO | DATE | Y |  |
| 21 | NR_FLAG | CHAR | Y | Flag do agendamento 0 - Normal\| 1 - Hora Extra |
| 22 | ID_USUARIO_EXCLUSAO | NUMBER | Y |  |
| 23 | ID_SETOR_EXECUTANTE | NUMBER | Y |  |

---

## IDCECRER.RS_MD_MEDICO_PROCEDIMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_PROCEDIMENTO | NUMBER | N |  |
| 2 | ID_MEDICO_UNIDADE | NUMBER | N |  |
| 3 | DT_CADASTRO | DATE | N |  |
| 4 | DT_ALTERACAO | DATE | Y |  |
| 5 | ID_USUARIO | NUMBER | Y |  |

---

## IDCECRER.RS_MD_MEDICO_UNIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_MEDICO_UNIDADE | NUMBER | N |  |
| 2 | CD_MEDICO_HIS | VARCHAR2 | Y |  |
| 3 | ID_STATUS_ORIGEM | NUMBER | Y |  |
| 4 | ID_UNIDADE | NUMBER | Y |  |
| 5 | ID_CONSELHO | NUMBER | Y |  |
| 6 | ID_MEDICO | NUMBER | Y |  |
| 7 | DS_CRM | VARCHAR2 | Y |  |
| 8 | ID_USUARIO_MEDICO | NUMBER | Y |  |
| 9 | SN_ASSINATURA_DIGITALIZADA | CHAR | Y |  |
| 10 | SN_ASSINATURA_DIGITAL | CHAR | Y |  |
| 11 | SN_REVISAO_AUTOMATICA | CHAR | Y |  |
| 12 | SN_MEDICO_REVISOR | CHAR | Y |  |
| 13 | SN_SENHA_ADMINISTRADOR | CHAR | Y |  |
| 14 | SN_FILME | CHAR | Y |  |
| 15 | ID_USUARIO | NUMBER | Y |  |
| 16 | DT_CADASTRO | DATE | N |  |
| 17 | DT_ALTERACAO | DATE | Y |  |
| 18 | ID_INTERBASE | NUMBER | Y |  |
| 19 | ID_PROCEDIMENTO | NUMBER | Y |  |
| 20 | ID_SISTEMA | NUMBER | Y |  |
| 21 | SN_RASTREAR_LAUDO | CHAR | Y |  |
| 22 | SN_EXECUTANTE | CHAR | Y |  |
| 23 | SN_REVISOR | CHAR | Y |  |
| 24 | SN_DIGITADO | CHAR | Y |  |
| 25 | SN_LAUDADO | CHAR | Y |  |
| 26 | SN_REVISADO | CHAR | Y |  |
| 27 | SN_ASSINADO | CHAR | Y |  |
| 28 | SN_IMPRESSO | CHAR | Y |  |
| 29 | SN_MONITOR | CHAR | Y |  |
| 30 | NR_TEMPO_RETROCEDER | NUMBER | Y |  |
| 31 | ID_SETOR | NUMBER | Y |  |
| 32 | SN_ASSINATURA_AUT | CHAR | Y |  |
| 33 | ID_FILTRO_DEFAULT | NUMBER | Y |  |
| 34 | SN_ULTIMOS_EXAMES_AUT | CHAR | Y |  |
| 35 | SN_PRINT_REVISAO_AUT | CHAR | Y |  |
| 36 | SN_EXIGE_CERTIFICACAO_LAUDO | CHAR | Y |  |
| 37 | SN_MARCAR_CERTIFICACAO_AUT | CHAR | N |  |

---

## IDCECRER.RS_MD_MEDICO_UNIDADE_FILTRO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_MEDICO_UNIDADE_FILTRO | NUMBER | N |  |
| 2 | ID_MEDICO_UNIDADE | NUMBER | N |  |
| 3 | ID_USUARIO | NUMBER | N |  |
| 4 | DT_CADASTRO | DATE | N |  |
| 5 | DT_ALTERACAO | DATE | Y |  |
| 6 | ID_PROCEDIMENTO | NUMBER | Y |  |
| 7 | ID_SISTEMA | NUMBER | Y |  |
| 8 | ID_SETOR | NUMBER | Y |  |
| 9 | SN_EXECUTANTE | CHAR | Y |  |
| 10 | SN_REVISOR | CHAR | Y |  |
| 11 | SN_DIGITADO | CHAR | Y |  |
| 12 | SN_LAUDADO | CHAR | Y |  |
| 13 | SN_REVISADO | CHAR | Y |  |
| 14 | SN_ASSINADO | CHAR | Y |  |
| 15 | SN_IMPRESSO | CHAR | Y |  |
| 16 | SN_LIBERADO | CHAR | Y |  |
| 17 | SN_ENTREGUE | CHAR | Y |  |
| 18 | SN_NORMAL | CHAR | Y |  |
| 19 | SN_IMAGEM | CHAR | Y |  |
| 20 | NR_TEMPO_RETROCEDER | NUMBER | Y |  |
| 21 | DS_FILTRO | VARCHAR2 | N |  |
| 22 | SN_DITADO | CHAR | Y |  |

---

## IDCECRER.RS_MD_STATUS_ORIGEM_MEDICO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_STATUS_ORIGEM | NUMBER | N |  |
| 2 | NM_STATUS_ORIGEM | VARCHAR2 | Y |  |
| 3 | DS_STATUS_ORIGEM | VARCHAR2 | Y |  |

---

## IDCECRER.RS_PAC_PACIENTE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_PACIENTE | NUMBER | N |  |
| 2 | NM_PACIENTE | VARCHAR2 | Y |  |
| 3 | DT_NASCIMENTO | DATE | Y |  |
| 4 | TP_SEXO | CHAR | N |  |
| 5 | DS_ENDERECO | VARCHAR2 | Y |  |
| 6 | DS_BAIRRO | VARCHAR2 | Y |  |
| 7 | DS_CIDADE | VARCHAR2 | Y |  |
| 8 | DS_UF | VARCHAR2 | Y |  |
| 9 | DS_CEP | VARCHAR2 | Y |  |
| 10 | DS_TELEFONE | VARCHAR2 | Y |  |
| 11 | DS_FAX | VARCHAR2 | Y |  |
| 12 | DS_CPF | VARCHAR2 | Y |  |
| 13 | DS_EMAIL | VARCHAR2 | Y |  |
| 14 | DS_RG | VARCHAR2 | Y |  |
| 15 | DS_PACIENTE | VARCHAR2 | Y |  |
| 16 | DS_MATRICULA | VARCHAR2 | Y |  |
| 17 | NR_ALTURA | NUMBER | Y |  |
| 18 | NR_PESO | NUMBER | Y |  |
| 19 | SN_SMS | CHAR | Y |  |
| 20 | SN_EMAIL | CHAR | Y |  |
| 21 | DT_CADASTRO | DATE | Y |  |
| 22 | ID_USUARIO | NUMBER | Y |  |
| 23 | DT_ALTERACAO | DATE | Y |  |
| 24 | ID_PACIENTE_CONSOLIDADO | NUMBER | Y |  |
| 25 | DS_ORGAO | VARCHAR2 | Y |  |
| 26 | DS_CELULAR | VARCHAR2 | Y |  |
| 27 | NR_CNS | VARCHAR2 | Y |  |
| 28 | NM_MAE | VARCHAR2 | Y |  |
| 29 | NR_MATRICULA_SAME | NUMBER | Y |  |
| 30 | NM_SOCIAL_PACIENTE | VARCHAR2 | Y |  |
| 31 | NM_PAI | VARCHAR2 | Y |  |
| 32 | SN_ATIVO | CHAR | N | Ativo/Inativo |

---

## IDCECRER.RS_PAC_PACIENTE_UNIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_PACIENTE_UNIDADE | NUMBER | N |  |
| 2 | ID_CONVENIO_PADRAO | NUMBER | Y |  |
| 3 | ID_PACIENTE | NUMBER | Y |  |
| 4 | ID_UNIDADE | NUMBER | Y |  |
| 5 | NR_PRONTUARIO_HOSPITALAR | VARCHAR2 | Y |  |
| 6 | CD_PACIENTE_HIS | VARCHAR2 | Y |  |
| 7 | DT_CADASTRO | DATE | Y |  |
| 8 | DT_ALTERACAO | DATE | Y |  |
| 9 | ID_USUARIO | NUMBER | Y |  |
| 10 | ID_INTERBASE | NUMBER | Y |  |
| 11 | DT_TERMO_ACEITE | DATE | Y |  |

---

## IDCECRER.RS_PRD_PRODUTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_PRODUTO | NUMBER | N | Sequencial |
| 2 | DS_PRODUTO | VARCHAR2 | N | Descrição do produto |
| 3 | DS_ESPECIFICACAO | VARCHAR2 | Y | Observação sobre o produto |
| 4 | DS_PRODUTO_RESUMIDO | VARCHAR2 | N | Descrição resumida para consultas |
| 5 | ID_USUARIO | NUMBER | N | Usuário do cadstro e/ou Alteração |
| 6 | DT_CADASTRO | DATE | N | Data do Cadastro |
| 7 | DT_ALTERACAO | DATE | N | Data da alteração |
| 8 | SN_MEDICAMENTO | CHAR | N |  |
| 9 | SN_ATIVO | CHAR | N |  |

---

## IDCECRER.RS_PRD_PRODUTO_UNIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_PRODUTO_UNIDADE | NUMBER | N | Sequencial |
| 2 | ID_UNIDADE | NUMBER | N | Unidade configurada |
| 3 | ID_PRODUTO | NUMBER | N | Identificador do Produto |
| 4 | CD_PRODUTO_HIS | VARCHAR2 | Y | Código do produto no HIS |
| 5 | ID_USUARIO | NUMBER | N | Usuario de cadastro e/ou Alteração |
| 6 | DT_CADASTRO | DATE | N | Data do Cadastro |
| 7 | DT_ALTERACAO | DATE | N | Data de Alteração |

---

## IDCECRER.RS_PREF_CENARIO
> Tabela de preferencias do cenários

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_PREF_CEN | NUMBER | N | Id de preferencias do cenário |
| 2 | ID_USUARIO | NUMBER | N | Id do usuario |
| 3 | ID_CENARIO | NUMBER | Y | Id do cenário |
| 4 | CD_COR | VARCHAR2 | Y | Codigo da cor |
| 5 | NM_DESTAQUE | VARCHAR2 | Y | Nome do destaque do cenario |
| 6 | TP_POSICAO_DESTAQUE | VARCHAR2 | N | Possicao do destaque |

---

## IDCECRER.RS_PREF_PREFERENCIAS
> Tabela de preferencias do usuario

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_PREF | NUMBER | N | Id de preferencias do usuario |
| 2 | ID_USUARIO | NUMBER | N | Id do usuario |
| 3 | TP_TEMA | VARCHAR2 | Y | Identificador do tema utilizado pelo usuario |
| 4 | TP_IDIOMA | VARCHAR2 | Y | Identificador do idioma utilizado pelo usuario |
| 5 | TP_VISUALIZADOR | VARCHAR2 | Y | Identificador do visualizador utilizado pelo usuario |
| 6 | ID_CEN_FAVORITO | NUMBER | Y | Id do cenario favorito do usuario |

---

## IDCECRER.RS_SEG_APLICACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_APLICACAO | VARCHAR2 | N |  |
| 2 | NM_APLICACAO | VARCHAR2 | Y |  |
| 3 | DS_APLICACAOURI | VARCHAR2 | Y |  |
| 4 | DS_LOGOURI | VARCHAR2 | Y |  |
| 5 | DS_URISREDIRECIONAMENTO | VARCHAR2 | Y |  |
| 6 | DS_URISREDIRECIONAAPOSLOGOUT | VARCHAR2 | Y |  |
| 7 | SN_PERMITIRTOKENSVIABROWSER | CHAR | N |  |
| 8 | DS_ORIGENSCORSPERMITIDAS | VARCHAR2 | Y |  |
| 9 | DS_SEGREDOSDAAPLICACAO | VARCHAR2 | Y |  |
| 10 | DS_ESCOPOSDAAPLICACAO | VARCHAR2 | Y |  |
| 11 | SN_REQUERCONSENTIMENTO | CHAR | N |  |
| 12 | SN_HABILITADO | CHAR | N |  |
| 13 | DS_CONCESSOESPERMITIDAS | VARCHAR2 | Y |  |

---

## IDCECRER.RS_SEG_AUDITORIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_AUDITORIA | NUMBER | N |  |
| 2 | ID_USUARIO | NUMBER | N |  |
| 3 | DT_OPERACAO | DATE | Y |  |
| 4 | DS_OPERACAO | VARCHAR2 | Y |  |
| 5 | ID_UNIDADE | NUMBER | Y |  |

---

## IDCECRER.RS_SEG_AUTORIZACAOAUTENTICACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_CHAVE | VARCHAR2 | N |  |
| 2 | DS_TIPO | VARCHAR2 | Y |  |
| 3 | ID_USUARIO | NUMBER | Y |  |
| 4 | ID_APLICACAO | VARCHAR2 | Y |  |
| 5 | DT_CRIACAO | DATE | Y |  |
| 6 | DT_EXPIRACAO | DATE | Y |  |
| 7 | DS_TOKEN | CLOB | Y |  |

---

## IDCECRER.RS_SEG_BREAK

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TAG | VARCHAR2 | N | TAG DA BREAK CHANGE |
| 2 | DT_TAG | DATE | N | DATA DE INCLUSÃO DA BREAK CHANGE |
| 3 | CD_STATUS | CHAR | N | STATUS DA BREAK CHANGE |
| 4 | DT_STATUS | DATE | N | DATA DO STATUS DA BREAK CHANGE |
| 5 | NM_STATUS | VARCHAR2 | Y | NOME DO USUÁRIO DO STATUS DA BREAK CHANGE |
| 6 | DS_STATUS | VARCHAR2 | Y | DESCRIÇÃO DA JUSTIFICATIVA DA BREAKCHANGE |
| 7 | NR_VERSAO | VARCHAR2 | N | NÚMERO DA VERSÃO DO SISTEMA |
| 8 | DT_IGNORE | DATE | Y | DATA QUE A BREAK CHANGE FOI IGNORADA |

---

## IDCECRER.RS_SEG_CATALOGO_OPERACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_CATALOGO | NUMBER | N |  |
| 2 | NM_CATALOGO | VARCHAR2 | Y |  |
| 3 | DS_CATALOGO | VARCHAR2 | Y |  |
| 4 | NM_CATALOGO_ESP_PA | VARCHAR2 | Y |  |
| 5 | NM_CATALOGO_ESP_CL | VARCHAR2 | Y |  |
| 6 | NM_CATALOGO_ESP_PE | VARCHAR2 | Y |  |
| 7 | NM_CATALOGO_ESP_UY | VARCHAR2 | Y |  |

---

## IDCECRER.RS_SEG_CPT_DADOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_DADOS | NUMBER | N |  |
| 2 | DS_NOME_DADOS | VARCHAR2 | N |  |

---

## IDCECRER.RS_SEG_CPT_DADOS_ITENS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_DADOS_ITENS | NUMBER | N |  |
| 2 | ID_DADOS | NUMBER | N |  |
| 3 | TP_CAMPO | VARCHAR2 | N |  |
| 4 | DS_VALOR | VARCHAR2 | Y |  |

---

## IDCECRER.RS_SEG_CPT_GRID

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_GRID | NUMBER | N |  |
| 2 | DS_NOME_GRID | VARCHAR2 | N |  |

---

## IDCECRER.RS_SEG_CPT_GRID_COLUNA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_GRID_COLUNA | NUMBER | N |  |
| 2 | ID_GRID | NUMBER | N |  |
| 3 | DS_NOME_COLUNA | VARCHAR2 | N |  |
| 4 | NR_POSICAO | NUMBER | Y |  |
| 5 | NR_TAMANHO | NUMBER | Y |  |
| 6 | SN_VISIVEL | CHAR | N |  |

---

## IDCECRER.RS_SEG_CPT_USUARIO_CENARIO
> Tabela com cenários por usuário para o cockpit

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_CPT_CENARIO | NUMBER | N |  |
| 2 | ID_USUARIO | NUMBER | N |  |
| 3 | NM_CENARIO | VARCHAR2 | N |  |
| 4 | ID_GRID_PRINCIPAL | NUMBER | Y |  |
| 5 | ID_DADOS | NUMBER | Y |  |
| 6 | SN_AVANCO_AUTOMATICO | CHAR | N | Cenário permite avanço automátivo após ação de laudar |
| 7 | SN_REPOSICIONAR_LAUDO | CHAR | Y |  |
| 8 | SN_EVITAR_VISITADOS | CHAR | Y |  |
| 9 | SN_CIRCULAR | CHAR | Y |  |

---

## IDCECRER.RS_SEG_CPT_VINCULO_CENARIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_CPT_CENARIO | NUMBER | N |  |
| 2 | ID_USUARIO | NUMBER | N |  |

---

## IDCECRER.RS_SEG_FERIADO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DT_FERIADO | DATE | Y |  |
| 2 | DS_FERIADO | VARCHAR2 | N | Descric?o |
| 3 | NR_DIA | NUMBER | N | Dia |
| 4 | NR_MES | NUMBER | N | Mes |
| 5 | NR_ANO | NUMBER | Y | Ano |
| 6 | CD_FERIADO | NUMBER | N | Código do Feriado |

---

## IDCECRER.RS_SEG_FILTRO_PROCEDIMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_USUARIO_UNIDADE_FILTRO | NUMBER | N |  |
| 2 | ID_USUARIO | NUMBER | N |  |
| 3 | ID_UNIDADE | NUMBER | N |  |
| 4 | DT_CADASTRO | DATE | N |  |
| 5 | DT_ALTERACAO | DATE | Y |  |
| 6 | ID_PROCEDIMENTO | NUMBER | N |  |

---

## IDCECRER.RS_SEG_FILTRO_SETOR_EXEC

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_USUARIO_UNIDADE_FILTRO | NUMBER | N |  |
| 2 | ID_USUARIO | NUMBER | N |  |
| 3 | ID_UNIDADE | NUMBER | N |  |
| 4 | DT_CADASTRO | DATE | N |  |
| 5 | DT_ALTERACAO | DATE | Y |  |
| 6 | ID_SETOR_EXEC | NUMBER | N |  |

---

## IDCECRER.RS_SEG_FILTRO_SISTEMA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_USUARIO_UNIDADE_FILTRO | NUMBER | N |  |
| 2 | ID_USUARIO | NUMBER | N |  |
| 3 | ID_UNIDADE | NUMBER | N |  |
| 4 | DT_CADASTRO | DATE | N |  |
| 5 | DT_ALTERACAO | DATE | Y |  |
| 6 | ID_SISTEMA | NUMBER | N |  |

---

## IDCECRER.RS_SEG_FILTRO_UNIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_USUARIO_UNIDADE_FILTRO | NUMBER | N |  |
| 2 | ID_USUARIO | NUMBER | Y |  |
| 3 | DT_CADASTRO | DATE | Y |  |
| 4 | DT_ALTERACAO | DATE | Y |  |
| 5 | ID_UNIDADE | NUMBER | N |  |

---

## IDCECRER.RS_SEG_GRUPO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_GRUPO | NUMBER | N |  |
| 2 | NM_GRUPO | VARCHAR2 | Y |  |
| 3 | DS_GRUPO | VARCHAR2 | Y |  |
| 4 | DT_CADASTRO | DATE | Y |  |
| 5 | DT_ALTERACAO | DATE | Y |  |
| 6 | ID_USUARIO | NUMBER | Y |  |
| 7 | ID_INTERBASE | NUMBER | Y |  |

---

## IDCECRER.RS_SEG_GRUPO_OPERACAO_SISTEMA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_OPERACAO | NUMBER | N |  |
| 2 | ID_GRUPO | NUMBER | N |  |
| 3 | ID_USUARIO | NUMBER | Y |  |
| 4 | DT_CADASTRO | DATE | N |  |
| 5 | DT_ALTERACAO | DATE | Y |  |

---

## IDCECRER.RS_SEG_GRUPO_OPERACAO_SISTEMA3

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_OPERACAO | NUMBER | N |  |
| 2 | ID_GRUPO | NUMBER | N |  |
| 3 | ID_USUARIO | NUMBER | Y |  |
| 4 | DT_CADASTRO | DATE | N |  |
| 5 | DT_ALTERACAO | DATE | Y |  |

---

## IDCECRER.RS_SEG_GRUPO_OPER_SIST_2021

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_OPERACAO | NUMBER | N |  |
| 2 | ID_GRUPO | NUMBER | N |  |
| 3 | ID_USUARIO | NUMBER | Y |  |
| 4 | DT_CADASTRO | DATE | N |  |
| 5 | DT_ALTERACAO | DATE | Y |  |

---

## IDCECRER.RS_SEG_HISTORICO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_HISTORICO | NUMBER | N |  |
| 2 | DS_TIPO_HISTORICO | VARCHAR2 | Y |  |
| 3 | ID_EXAME_PEDIDO | NUMBER | Y |  |
| 4 | ID_MEDICO_EXECUTANTE | NUMBER | Y |  |
| 5 | ID_MEDICO_REVISOR | NUMBER | Y |  |
| 6 | ID_MEDICO_REVISOR_FINAL | NUMBER | Y |  |
| 7 | DT_FINALIZACAO | DATE | Y |  |
| 8 | DT_LAUDADO | DATE | Y |  |
| 9 | DT_PEDIDO | DATE | Y |  |
| 10 | DT_IMPRESSO | DATE | Y |  |
| 11 | DT_ASSINADO | DATE | Y |  |
| 12 | DT_DIGITADO | DATE | Y |  |
| 13 | DT_REVISADO | DATE | Y |  |
| 14 | DT_REVISADO_FINAL | DATE | Y |  |
| 15 | DT_ENTREGA | DATE | Y |  |
| 16 | DS_LAUDO_TXT | CLOB | Y |  |
| 17 | ID_USUARIO | NUMBER | Y |  |
| 18 | DT_CADASTRO | DATE | N |  |
| 19 | DT_ALTERACAO | DATE | Y |  |
| 20 | ID_PACIENTE | NUMBER | Y |  |
| 21 | ID_UNIDADE | NUMBER | Y |  |
| 22 | NM_PACIENTE | VARCHAR2 | Y |  |
| 23 | DS_ENDERECO | VARCHAR2 | Y |  |
| 24 | DS_BAIRRO | VARCHAR2 | Y |  |
| 25 | DS_CIDADE | VARCHAR2 | Y |  |
| 26 | DS_UF | VARCHAR2 | Y |  |
| 27 | DS_CEP | VARCHAR2 | Y |  |
| 28 | DS_TELEFONE | VARCHAR2 | Y |  |
| 29 | DS_EMAIL | VARCHAR2 | Y |  |
| 30 | NM_MEDICO_EXECUTANTE | VARCHAR2 | Y |  |
| 31 | NM_MEDICO_REVISOR | VARCHAR2 | Y |  |
| 32 | NM_MEDICO_REVISOR_FINAL | VARCHAR2 | Y |  |
| 33 | DS_JUSTIFICATIVA | VARCHAR2 | Y |  |

---

## IDCECRER.RS_SEG_MIGRA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NM_GRUPO | VARCHAR2 | Y |  |
| 2 | NM_OPERACAO | VARCHAR2 | Y |  |

---

## IDCECRER.RS_SEG_OPERACAO_SISTEMA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_OPERACAO | NUMBER | N |  |
| 2 | NM_OPERACAO | VARCHAR2 | Y |  |
| 3 | DS_OPERACAO | VARCHAR2 | Y |  |
| 4 | ID_CATALOGO | NUMBER | Y |  |
| 5 | ID_INTERBASE | NUMBER | Y |  |
| 6 | ID_USUARIO | NUMBER | Y |  |
| 7 | DS_OPERACAO_ESP_PA | VARCHAR2 | Y |  |
| 8 | DS_OPERACAO_ESP_CL | VARCHAR2 | Y |  |
| 9 | DS_OPERACAO_ESP_PE | VARCHAR2 | Y |  |
| 10 | DS_OPERACAO_ESP_UY | VARCHAR2 | Y |  |

---

## IDCECRER.RS_SEG_USUARIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_USUARIO | NUMBER | N |  |
| 2 | ID_USUARIO_PAI | NUMBER | Y |  |
| 3 | NM_USUARIO | VARCHAR2 | Y |  |
| 4 | DT_NASCIMENTO | DATE | Y |  |
| 5 | TP_SEXO | VARCHAR2 | N |  |
| 6 | DS_CARGO | VARCHAR2 | Y |  |
| 7 | NM_IDENTIFICACAO | VARCHAR2 | Y |  |
| 8 | DS_ENDERECO | VARCHAR2 | Y |  |
| 9 | DS_BAIRRO | VARCHAR2 | Y |  |
| 10 | DS_CIDADE | VARCHAR2 | Y |  |
| 11 | DS_UF | VARCHAR2 | Y |  |
| 12 | DS_CEP | VARCHAR2 | Y |  |
| 13 | DS_CPF | VARCHAR2 | Y |  |
| 14 | DS_RG | VARCHAR2 | Y |  |
| 15 | DS_TELEFONE | VARCHAR2 | Y |  |
| 16 | DS_FAX | VARCHAR2 | Y |  |
| 17 | CD_SENHA | VARCHAR2 | Y |  |
| 18 | DS_EMAIL | VARCHAR2 | Y |  |
| 19 | SN_ACESSO_IRRESTRITO | CHAR | Y |  |
| 20 | SN_TROCA_SENHA | CHAR | Y |  |
| 21 | SN_ATIVO | CHAR | Y |  |
| 22 | DT_CADASTRO | DATE | Y |  |
| 23 | DT_ALTERACAO | DATE | Y |  |
| 24 | IM_BIOMETRIA | BLOB | Y |  |
| 25 | DS_USUARIO_VIEWER | VARCHAR2 | Y |  |
| 26 | DS_SENHA_VIEWER | VARCHAR2 | Y |  |
| 27 | DS_ULTIMA_IMPRESSORA | VARCHAR2 | Y |  |
| 28 | SN_IMPRESSAO_LOCAL | CHAR | Y |  |
| 29 | SN_PRINT_REVISAO_AUT | CHAR | N |  |
| 30 | SN_ACESSO_MRB | CHAR | N |  |
| 31 | TP_PRIORIDADE_EVOLUCAO_PACIENT | CHAR | N | P = PDF e T = TXT |
| 32 | SN_VISAO_AUTO_TEXTO_GERAL_USU | CHAR | N | Visualizar por padrão o auto texto geral do usuário |
| 33 | SN_VISAO_AUTO_TEXTO_VINC_USU | CHAR | N | Visualizar por padrão o auto texto vinculado do usuário |
| 34 | DS_CELULAR | VARCHAR2 | Y |  |
| 35 | NM_SKIN | VARCHAR2 | Y |  |
| 36 | ID_CPT_CENARIO | NUMBER | Y | identificador de cenário do COCKPIT - vínculo com o campo rs_seg_cpt_usuario_cenario.id_cpt_cenar... |
| 37 | QT_REG_PAGINA_BS_CONHEC | NUMBER | Y | Quantidade de registros na grid da BASE DO CONHECIMENTO do Cockpit |
| 38 | QT_REG_PAGINA_COCKPIT | NUMBER | Y |  |
| 39 | TP_ORDEM_AUTO_TEXTO_COCKPIT | NUMBER | Y | Tipo de ordenação na visualização de auto-textos no Cockpit |
| 40 | DS_USUARIO_SPEECHANYWHERE | VARCHAR2 | Y |  |
| 41 | DS_SENHA_SPEECHANYWHERE | VARCHAR2 | Y |  |
| 42 | CD_SENHA_FORTE | VARCHAR2 | Y |  |
| 43 | DS_USUARIO_RESMD | VARCHAR2 | Y |  |
| 44 | DS_SENHA_RESMD | VARCHAR2 | Y |  |
| 45 | SN_SPEECH_MAGIC | CHAR | N |  |
| 46 | TP_RECONHECIMENTO_VOZ | CHAR | Y |  |
| 47 | SN_CHAT | CHAR | Y |  |
| 48 | SN_IP | CHAR | Y |  |
| 49 | DS_SENHA_SPEECH_IARA | VARCHAR2 | Y |  |
| 50 | DS_USUARIO_SPEECH_IARA | VARCHAR2 | Y |  |
| 51 | DS_USUARIO_SPEECH_INVOX | VARCHAR2 | Y |  |
| 52 | DS_SENHA_SPEECH_INVOX | VARCHAR2 | Y |  |
| 53 | SN_SINCRONIZACAOPACS | CHAR | N | (S/N) SINCRONIZAÇÃO COM PACS SEMPRE ATIVA NO MCOCKPIT |
| 54 | SN_SINCRONIZACAO_VIEWER | CHAR | N | Verificação de exames abertos no Viewer |

---

## IDCECRER.RS_SEG_USUARIO_CHAT_MENSAGEM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_USUARIO_CHAT_MSG | NUMBER | N |  |
| 2 | ID_USUARIO_PAI | NUMBER | N |  |
| 3 | ID_USUARIO_DESTINO | NUMBER | N |  |
| 4 | DT_DATA_MSG | DATE | N |  |
| 5 | DS_MENSAGEM | CLOB | Y |  |
| 6 | TP_MENSAGEM | NUMBER | N |  |
| 7 | ID_USUARIO_ORIGEM | NUMBER | N |  |
| 8 | SN_MENSAGEM_PENDENTE | CHAR | N |  |

---

## IDCECRER.RS_SEG_USUARIO_FOTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_USUARIO | NUMBER | N |  |
| 2 | IM_USUARIO | BLOB | N |  |

---

## IDCECRER.RS_SEG_USUARIO_OPERACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_USUARIO | NUMBER | N |  |
| 2 | ID_USUARIO_CADASTRO | NUMBER | Y |  |
| 3 | ID_GRUPO | NUMBER | N |  |
| 4 | DT_CADASTRO | DATE | Y |  |
| 5 | DT_ALTERACAO | DATE | Y |  |
| 6 | ID_UNIDADE | NUMBER | N |  |

---

## IDCECRER.RS_SEG_USUARIO_TEXTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_USUARIO_TEXTO | NUMBER | N |  |
| 2 | ID_TEXTO_EXAME | NUMBER | N |  |
| 3 | ID_USUARIO | NUMBER | N |  |
| 4 | DT_CADASTRO | DATE | N |  |
| 5 | DT_ALTERACAO | DATE | Y |  |
| 6 | ID_USUARIO_CADASTRO | NUMBER | N |  |
| 7 | ID_USUARIO_ALTERACAO | NUMBER | Y |  |

---

## IDCECRER.RS_SEG_USUARIO_UNIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_USUARIO | NUMBER | N |  |
| 2 | ID_USUARIO_CADASTRO | NUMBER | Y |  |
| 3 | SN_ATIVO | VARCHAR2 | Y |  |
| 4 | ID_UNIDADE | NUMBER | N |  |
| 5 | DT_CADASTRO | DATE | Y |  |
| 6 | DT_ALTERACAO | DATE | Y |  |
| 7 | ID_INTERBASE | NUMBER | Y |  |
| 8 | ID_FILTRO_DEFAULT | NUMBER | Y |  |

---

## IDCECRER.RS_SEG_USUARIO_UNIDADE_FILTRO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_USUARIO_UNIDADE_FILTRO | NUMBER | N |  |
| 2 | ID_USUARIO | NUMBER | N |  |
| 3 | ID_UNIDADE | NUMBER | N |  |
| 4 | DT_CADASTRO | DATE | N |  |
| 5 | DT_ALTERACAO | DATE | Y |  |
| 6 | ID_PROCEDIMENTO | NUMBER | Y |  |
| 7 | ID_SISTEMA | NUMBER | Y |  |
| 8 | ID_SETOR | NUMBER | Y |  |
| 9 | SN_EXECUTANTE | CHAR | Y |  |
| 10 | SN_REVISOR | CHAR | Y |  |
| 11 | SN_DIGITADO | CHAR | Y |  |
| 12 | SN_LAUDADO | CHAR | Y |  |
| 13 | SN_REVISADO | CHAR | Y |  |
| 14 | SN_ASSINADO | CHAR | Y |  |
| 15 | SN_IMPRESSO | CHAR | Y |  |
| 16 | SN_LIBERADO | CHAR | Y |  |
| 17 | SN_ENTREGUE | CHAR | Y |  |
| 18 | SN_NORMAL | CHAR | Y |  |
| 19 | SN_IMAGEM | CHAR | Y |  |
| 20 | NR_TEMPO_RETROCEDER | NUMBER | Y |  |
| 21 | DS_FILTRO | VARCHAR2 | N |  |
| 22 | SN_DITADO | CHAR | Y |  |
| 23 | DS_ORIGEM_ATENDIMENTO | VARCHAR2 | Y |  |
| 24 | ID_TIPO_PRIORIDADE | NUMBER | Y |  |
| 25 | SN_ATRASADO | CHAR | N | S -> Sim, N -> Não e T -> Todos |
| 26 | TP_DATA_FILTRO | VARCHAR2 | N |  |
| 27 | TP_PACIENTE_SEXO_FILTRO | CHAR | N | T = Todos, M = Masculino e F = Feminino |

---

## IDCECRER.RS_SEG_USUARIO_UNIDADE_SETOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_USUARIO | NUMBER | Y |  |
| 2 | ID_UNIDADE | NUMBER | Y |  |
| 3 | ID_SETOR_EXECUTANTE | NUMBER | Y |  |
| 4 | DT_CADASTRO | DATE | Y |  |
| 5 | DT_ALTERACAO | DATE | Y |  |
| 6 | ID_USUARIO_CADASTRO | NUMBER | Y |  |
| 7 | SN_ATIVO | VARCHAR2 | Y |  |
| 8 | ID_USUARIO_UNIDADE_SETOR | NUMBER | N |  |

---

## IDCECRER.RS_SEG_VERSOES
> Tabela de registros das versões desktop que estão em uso

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_VERSAO | NUMBER | N | Id |
| 2 | NM_SISTEMA | VARCHAR2 | N | Nome do sistema |
| 3 | DS_IP | VARCHAR2 | N | Endereço ip v4 ou v6 |
| 4 | NR_VERSAO | VARCHAR2 | N | Número da versão em uso |
| 5 | DT_OCORRENCIA | DATE | Y | Date em que o registro foi atualizado pela ultima vez |

---

## IDCECRER.RS_SL_SALA_EXAME

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_SALA | NUMBER | N |  |
| 2 | NM_SALA | VARCHAR2 | Y |  |
| 3 | CD_SALA_HIS | VARCHAR2 | Y |  |
| 4 | DS_AE_TITLE | VARCHAR2 | Y |  |
| 5 | DS_PORTA | VARCHAR2 | Y |  |
| 6 | ID_MODALIDADE | NUMBER | Y |  |
| 7 | NR_TEMPO_MEDIO_ATENDIMENTO | VARCHAR2 | Y |  |
| 8 | NM_EQUIPAMENTO | VARCHAR2 | Y |  |
| 9 | NM_FABRICANTE | VARCHAR2 | Y |  |
| 10 | ID_UNIDADE | NUMBER | Y |  |
| 11 | DT_CADASTRO | DATE | Y |  |
| 12 | DT_ALTERACAO | DATE | Y |  |
| 13 | ID_USUARIO | NUMBER | Y |  |
| 14 | ID_INTERBASE | NUMBER | Y |  |
| 15 | SN_ATIVO | CHAR | N | (S/N) ATIVO |

---

## IDCECRER.RS_UNI_FEDERACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_FEDERACAO | NUMBER | N |  |
| 2 | NM_FEDERACAO | VARCHAR2 | Y |  |
| 3 | DS_FEDERACAO | VARCHAR2 | Y |  |
| 4 | SN_ATIVO | CHAR | Y |  |
| 5 | DT_CADASTRO | DATE | Y |  |
| 6 | DT_ALTERACAO | DATE | Y |  |
| 7 | ID_USUARIO | NUMBER | Y |  |
| 8 | DS_BANCO_DADOS_IP | VARCHAR2 | Y |  |
| 9 | DS_BANCO_PORTA | VARCHAR2 | Y |  |
| 10 | DS_BANCO_SERVER_NAME | VARCHAR2 | Y |  |
| 11 | DS_BANCO_LOGIN | VARCHAR2 | Y |  |
| 12 | DS_BANCO_SENHA | VARCHAR2 | Y |  |

---

## IDCECRER.RS_UNI_IMPORTA_PACIENTE
> Cadastro da importação de dados de pacientes (via sistema)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_IMPORTACAO | NUMBER | N | Id da da importacação |
| 2 | ID_UNIDADE | NUMBER | N | id da unidade |
| 3 | DS_ORIGEM | VARCHAR2 | N | Campo de destino da tabela de pacientes do vivace |
| 4 | DS_DESTINO | VARCHAR2 | N | Campo de origem no json origem |
| 5 | SN_FORMULA | CHAR | N | Campo é procesado por formula (s/n) |
| 6 | DS_FORMULA | CLOB | Y | Formula de prcessamento da importação do campo |

---

## IDCECRER.RS_UNI_REGIAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_REGIAO | NUMBER | N |  |
| 2 | NM_REGIAO | VARCHAR2 | Y |  |
| 3 | CD_REGIAO_HIS | VARCHAR2 | Y |  |
| 4 | DS_REGIAO | VARCHAR2 | Y |  |
| 5 | SN_ATIVO | CHAR | Y |  |
| 6 | DT_CADASTRO | DATE | Y |  |
| 7 | DT_ALTERACAO | DATE | Y |  |
| 8 | ID_USUARIO | NUMBER | Y |  |
| 9 | ID_FEDERACAO | NUMBER | Y |  |

---

## IDCECRER.RS_UNI_TRANSFERENCIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_TRANSFERENCIA | NUMBER | N |  |
| 2 | ID_UNIDADE_ORIGEM | NUMBER | N |  |
| 3 | ID_UNIDADE_DESTINO | NUMBER | N |  |
| 4 | DT_CADASTRO | DATE | N |  |
| 5 | DT_ALTERACAO | DATE | Y |  |
| 6 | ID_USUARIO | NUMBER | N |  |

---

## IDCECRER.RS_UNI_TRANSFERENCIA_EXAME

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_TRANSFERENCIA_EXAME | NUMBER | N |  |
| 2 | ID_TRANSFERENCIA | NUMBER | N |  |
| 3 | ID_EXAME_UNIDADE | NUMBER | N |  |
| 4 | DT_CADASTRO | DATE | N |  |
| 5 | ID_USUARIO | NUMBER | N |  |

---

## IDCECRER.RS_UNI_UNIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_UNIDADE | NUMBER | N |  |
| 2 | NM_UNIDADE | VARCHAR2 | Y |  |
| 3 | DS_ENDERECO | VARCHAR2 | Y |  |
| 4 | DS_BAIRRO | VARCHAR2 | Y |  |
| 5 | DS_CIDADE | VARCHAR2 | Y |  |
| 6 | DS_UF | VARCHAR2 | Y |  |
| 7 | DS_CEP | VARCHAR2 | Y |  |
| 8 | DS_TELEFONE1 | VARCHAR2 | Y |  |
| 9 | DS_TELEFONE2 | VARCHAR2 | Y |  |
| 10 | DS_FAX | VARCHAR2 | Y |  |
| 11 | DS_CNPJ | VARCHAR2 | Y |  |
| 12 | DS_EMAIL | VARCHAR2 | Y |  |
| 13 | DS_CONTATO | VARCHAR2 | Y |  |
| 14 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 15 | CD_UNIDADE_HIS | VARCHAR2 | Y |  |
| 16 | SN_ATIVO | CHAR | Y |  |
| 17 | DT_CADASTRO | DATE | Y |  |
| 18 | DT_ALTERACAO | DATE | Y |  |
| 19 | ID_USUARIO | NUMBER | Y |  |
| 20 | ID_REGIAO | NUMBER | Y |  |
| 21 | DS_INTEGRA_IP | VARCHAR2 | Y |  |
| 22 | DS_INTEGRA_SERVER_NAME | VARCHAR2 | Y |  |
| 23 | DS_INTEGRA_PORTA | VARCHAR2 | Y |  |
| 24 | DS_INTEGRA_LOGIN | VARCHAR2 | Y |  |
| 25 | DS_INTEGRA_SENHA | VARCHAR2 | Y |  |
| 26 | DS_DICOM_SEVER_IP | VARCHAR2 | Y |  |
| 27 | NR_DICOM_SERVER_PORTA | VARCHAR2 | Y |  |
| 28 | DS_DICOM_SERVER_AE_TITLE | VARCHAR2 | Y |  |
| 29 | DS_BANCO_DICOM_SERVER_IPPATH | VARCHAR2 | Y |  |
| 30 | NR_BANCO_DICOM_SERVER_PORTA | VARCHAR2 | Y |  |
| 31 | DS_BANCO_DICOM_SERVER_NAME | VARCHAR2 | Y |  |
| 32 | DS_BANCO_DICOM_SERVER_LOGIN | VARCHAR2 | Y |  |
| 33 | DS_BANCO_DICOM_SERVER_SENHA | VARCHAR2 | Y |  |
| 34 | DS_WORKLIST_IPPATH | VARCHAR2 | Y |  |
| 35 | NR_WORKLIST_PORTA | VARCHAR2 | Y |  |
| 36 | DS_WORKLIST_SERVER_NAME | VARCHAR2 | Y |  |
| 37 | DS_WORKLIST_LOGIN | VARCHAR2 | Y |  |
| 38 | DS_WORKLIST_SENHA | VARCHAR2 | Y |  |
| 39 | DS_SMS_LINK | VARCHAR2 | Y |  |
| 40 | DS_SMS_MSG | VARCHAR2 | Y |  |
| 41 | DS_SMS_REMETENTE | VARCHAR2 | Y |  |
| 42 | DS_WEB_VIEWER | VARCHAR2 | Y |  |
| 43 | DS_STUDYUID | VARCHAR2 | Y |  |
| 44 | ID_CONVENIO_PADRAO | NUMBER | Y |  |
| 45 | ID_MEDICO_SOLICITANTE_PADRAO | NUMBER | Y |  |
| 46 | ID_MEDICO_EXECUTANTE_PADRAO | NUMBER | Y |  |
| 47 | CD_UNIDADE_BASE_HIS | VARCHAR2 | Y |  |
| 48 | ID_RASTREAR_LAUDO | NUMBER | Y |  |
| 49 | DS_PATH_EXPORTA_LAUDO | VARCHAR2 | Y |  |
| 50 | SN_PRINT_PDF | CHAR | Y |  |
| 51 | DS_3D_TERARECON_APP_NAME | VARCHAR2 | Y |  |
| 52 | DS_3D_TERARECON_USER | VARCHAR2 | Y |  |
| 53 | DS_3D_TERARECON_PASSWORD | VARCHAR2 | Y |  |
| 54 | DS_3D_TERARECON_HOST | VARCHAR2 | Y |  |
| 55 | DS_3D_TERARECON_PORT | VARCHAR2 | Y |  |
| 56 | SN_VISUALIZE_PDF | CHAR | Y |  |
| 57 | SN_TAG_PDF | CHAR | Y |  |
| 58 | SN_INTEGRA | CHAR | Y |  |
| 59 | ID_BANCO | NUMBER | Y |  |
| 60 | SN_LOGIN_TROCA_ETAPA | CHAR | Y |  |
| 61 | SN_EXIGE_CERTIFICACAO_LAUDO | CHAR | Y |  |
| 62 | TP_DATA_PADRAO | CHAR | Y |  |
| 63 | DS_LINK_SPEECHANYWHERE | VARCHAR2 | Y |  |
| 64 | DS_LINK_WADO | VARCHAR2 | Y |  |
| 65 | CD_CNES | VARCHAR2 | Y |  |
| 66 | SN_SEM_INTEGRACAO_HIS | CHAR | Y |  |
| 67 | SN_SUPRIMIR_MSG_PENDENTE | CHAR | N |  |
| 68 | SN_SUPRIMIR_MSG_3OPNIAO | CHAR | N |  |
| 69 | DS_URL_RESMD | VARCHAR2 | Y |  |
| 70 | ID_ORIGEM_ATENDIMENTO | NUMBER | Y |  |
| 71 | SN_BLOQUEIO_CONTA_FECHADA | CHAR | N |  |
| 72 | DS_URL_VITREA | VARCHAR2 | Y |  |
| 73 | DS_OSIRIX_SERVER_NAME | VARCHAR2 | Y |  |
| 74 | DS_URL_CONNECTWEB | CLOB | Y | Url para o visualizador Connect web |
| 75 | SN_ABRIR_ESTUDO_MESMA_ABA | CHAR | N |  |
| 76 | SN_SEGURO_RESMD | CHAR | N |  |
| 77 | DS_USERNAME_RESMD | VARCHAR2 | Y |  |
| 78 | DS_SECRET_RESMD | VARCHAR2 | Y |  |
| 79 | SN_EXIGIR_JUST_ERRATA | CHAR | N |  |
| 80 | SN_LAUDAR_SOMENTE_DISTRIBUIDOS | VARCHAR2 | Y |  |
| 81 | NR_MINUTOS_INICIO_EXAME | NUMBER | Y | Tempo para Início de Exame em minutos de acordo com configurações de OLA |
| 82 | NR_MINUTOS_PRIMEIRO_LAUDO | NUMBER | Y | Tempo para a realização do Primeiro Laudo em minutos de acordo com configurações de OLA |
| 83 | NR_MINUTOS_PRIMEIRO_PARECER | NUMBER | Y | Tempo para realizar o primeiro parecer em minutos de acordo com configurações de OLA |
| 84 | NR_MINUTOS_REVISAO | NUMBER | Y | Tempo para realizar a revisão do laudo em minutos de acordo com configurações de OLA |
| 85 | SN_INT_PACIENTE | CHAR | Y | (S/N) integração para o cadastro de pacientes |
| 86 | DS_URL_INT_PACIENTE | VARCHAR2 | Y | Url de integração para o cadastro de pacientes |
| 87 | SN_SUPR_MSG_ESTUDO_ASSOCIADO | CHAR | N |  |
| 88 | ID_UNIDADE_PACS | NUMBER | Y | ID DA UNIDADE NO PACS, CASO SEJA DIFERENTE DA UNIDADE RIS |
| 89 | DS_VIEWER_CLIENTID | VARCHAR2 | Y | ClientID para acesso ao Viewer |
| 90 | DS_VIEWER_CLIENTSECRET | VARCHAR2 | Y | ClientSecret para acesso ao Viewer |
| 91 | DS_URL_VIDA | VARCHAR2 | Y | Url Do visualizador Vida |
| 92 | DS_VIDA_PORTA | VARCHAR2 | Y | Porta Do visualizador Vida |
| 93 | DS_PARAMETROS_ABERTURA_VIDA | CLOB | Y | Parâmentros de abertura do visualizador VIDA |

---

## IDCECRER.RS_VW_BI_ESTATISTICA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 2 | ID_UNIDADE | NUMBER | Y |  |
| 3 | NM_UNIDADE | VARCHAR2 | Y |  |
| 4 | ID_MODALIDADE | NUMBER | N |  |
| 5 | NM_MODALIDADE | VARCHAR2 | Y |  |
| 6 | ID_PROCEDIMENTO | NUMBER | N |  |
| 7 | NM_PROCEDIMENTO | VARCHAR2 | Y |  |
| 8 | ID_EXAME_UNIDADE | NUMBER | N |  |
| 9 | NM_EXAME_UNIDADE | VARCHAR2 | Y |  |
| 10 | ID_MEDICO_EXECUTANTE | NUMBER | Y |  |
| 11 | NM_MEDICO_EXECUTANTE | VARCHAR2 | Y |  |
| 12 | ID_CONVENIO_UNIDADE | NUMBER | Y |  |
| 13 | NM_CONVENIO_UNIDADE | VARCHAR2 | Y |  |
| 14 | DS_CRM_EXECUTANTE | VARCHAR2 | Y |  |
| 15 | ID_PACIENTE_UNIDADE | NUMBER | N |  |
| 16 | CD_PEDIDO_HIS | VARCHAR2 | Y |  |
| 17 | DT_ASSINADO | DATE | Y |  |
| 18 | DT_STUDY | DATE | Y |  |
| 19 | DT_LAUDADO | DATE | Y |  |
| 20 | DT_REVISADO | DATE | Y |  |
| 21 | DT_CADASTRO | DATE | Y |  |
| 22 | DS_STATUS | VARCHAR2 | Y |  |
| 23 | CD_STATUS | CHAR | Y |  |
| 24 | TEMPO_HR_LAUDAR | VARCHAR2 | Y |  |
| 25 | TEMPO_HR_REVISAR | VARCHAR2 | Y |  |
| 26 | TEMPO_HR_ASSINAR | VARCHAR2 | Y |  |
| 27 | FORA_PRAZO | NUMBER | Y |  |
| 28 | DENTRO_PRAZO | NUMBER | Y |  |
| 29 | SEM_IMAGEM | NUMBER | Y |  |
| 30 | COM_IMAGEM | NUMBER | Y |  |
| 31 | PEDIDO_IMPRESSO | NUMBER | Y |  |
| 32 | PEDIDO_COM_CD | NUMBER | Y |  |
| 33 | ID_MEDICO_SOLICITANTE | NUMBER | Y |  |

---

## IDCECRER.RS_VW_COCKPIT_LISTA_TRABALHO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NM_UNIDADE | VARCHAR2 | Y |  |
| 2 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 3 | DS_CERTIFICACAO_DIGITAL | VARCHAR2 | Y |  |
| 4 | ID_EXAME_PEDIDO_PAI | NUMBER | Y |  |
| 5 | ID_PEDIDO_EXAME | NUMBER | N |  |
| 6 | ID_PACIENTE | NUMBER | N |  |
| 7 | ID_PACIENTE_CONSOLIDADO | NUMBER | N |  |
| 8 | NM_PACIENTE | VARCHAR2 | Y |  |
| 9 | DT_NASCIMENTO | DATE | Y |  |
| 10 | DS_TELEFONE | VARCHAR2 | Y |  |
| 11 | NR_PRONTUARIO_HOSPITALAR | VARCHAR2 | Y |  |
| 12 | CD_PACIENTE_HIS | VARCHAR2 | Y |  |
| 13 | ID_UNIDADE | NUMBER | N |  |
| 14 | ID_CONVENIO | NUMBER | Y |  |
| 15 | NM_SOCIAL_PACIENTE | VARCHAR2 | Y |  |
| 16 | NM_CONVENIO_UNIDADE | VARCHAR2 | Y |  |
| 17 | ID_MEDICO_SOLICITANTE | NUMBER | Y |  |
| 18 | NM_MEDICO_SOLICITANTE | VARCHAR2 | Y |  |
| 19 | DS_CRM_SOLICITANTE | VARCHAR2 | Y |  |
| 20 | ID_MEDICO_EXECUTANTE | NUMBER | Y |  |
| 21 | NM_MEDICO_EXECUTANTE | VARCHAR2 | Y |  |
| 22 | DS_CRM_EXECUTANTE | VARCHAR2 | Y |  |
| 23 | ID_MEDICO_REVISOR | NUMBER | Y |  |
| 24 | NM_MEDICO_REVISOR | VARCHAR2 | Y |  |
| 25 | DS_CRM_REVISOR | VARCHAR2 | Y |  |
| 26 | ID_MEDICO_REVISOR_FINAL | VARCHAR2 | Y |  |
| 27 | NM_MEDICO_REVISOR_FINAL | VARCHAR2 | Y |  |
| 28 | DS_CRM_REVISOR_FINAL | VARCHAR2 | Y |  |
| 29 | ID_DIAGNOSTICO_RADIO | VARCHAR2 | Y |  |
| 30 | NM_DIAGNOSTICO_RADIO | VARCHAR2 | Y |  |
| 31 | ID_DIAGNOSTICO_CLINICO | VARCHAR2 | Y |  |
| 32 | NM_DIAGNOSTICO_CLINICO | VARCHAR2 | Y |  |
| 33 | ID_DIAGNOSTICO_CIRURGICO | VARCHAR2 | Y |  |
| 34 | NM_DIAGNOSTICO_CIRURGICO | VARCHAR2 | Y |  |
| 35 | ID_SALA | NUMBER | Y |  |
| 36 | NM_SALA | VARCHAR2 | Y |  |
| 37 | DT_CADASTRO | DATE | N |  |
| 38 | DT_ALTERACAO | DATE | Y |  |
| 39 | ID_EXAME_UNIDADE | NUMBER | N |  |
| 40 | NM_EXAME_UNIDADE | VARCHAR2 | Y |  |
| 41 | ID_EXAME | NUMBER | N |  |
| 42 | NR_PRAZO_ENTREGA | VARCHAR2 | Y |  |
| 43 | ID_USUARIO_INCLUSAO | VARCHAR2 | Y |  |
| 44 | NM_USUARIO_INCLUSAO | VARCHAR2 | Y |  |
| 45 | ID_USUARIO_ALTERACAO | VARCHAR2 | Y |  |
| 46 | NM_USUARIO_ALTERACAO | VARCHAR2 | Y |  |
| 47 | DT_DUM | DATE | Y |  |
| 48 | CD_ATENDIMENTO_HIS | VARCHAR2 | Y |  |
| 49 | CD_PEDIDO_HIS | VARCHAR2 | Y |  |
| 50 | CD_ITEM_PEDIDO_HIS | VARCHAR2 | Y |  |
| 51 | ID_ORIGEM_ATENDIMENTO | NUMBER | Y |  |
| 52 | CD_STATUS | VARCHAR2 | Y |  |
| 53 | CD_STATUS_IA | NUMBER | Y |  |
| 54 | DS_STATUS | VARCHAR2 | Y |  |
| 55 | ID_SETOR | NUMBER | Y |  |
| 56 | NM_SETOR | VARCHAR2 | Y |  |
| 57 | ID_USUARIO_ENTRADA_EXAME | VARCHAR2 | Y |  |
| 58 | NM_USUARIO_ENTRADA_EXAME | VARCHAR2 | Y |  |
| 59 | ID_USUARIO_SAIDA_EXAME | VARCHAR2 | Y |  |
| 60 | NM_USUARIO_SAIDA_EXAME | VARCHAR2 | Y |  |
| 61 | DT_ENTRADA_EXAME | DATE | Y |  |
| 62 | DT_SAIDA_EXAME | DATE | Y |  |
| 63 | NR_ALTURA | NUMBER | Y |  |
| 64 | NR_PESO | NUMBER | Y |  |
| 65 | SN_PENDENTE | CHAR | Y |  |
| 66 | SN_PROVISORIO | CHAR | N |  |
| 67 | SN_TERCEIRA_OPINIAO | CHAR | Y |  |
| 68 | DT_FINALIZACAO | DATE | Y |  |
| 69 | DT_LAUDADO | DATE | Y |  |
| 70 | DT_PEDIDO | DATE | Y |  |
| 71 | DT_IMPRESSO | DATE | Y |  |
| 72 | DT_ASSINADO | DATE | Y |  |
| 73 | DT_DIGITADO | DATE | Y |  |
| 74 | DT_DITADO | DATE | Y |  |
| 75 | ID_MEDICO_DITADO | VARCHAR2 | Y |  |
| 76 | NM_MEDICO_DITADO | VARCHAR2 | Y |  |
| 77 | DT_REVISADO | DATE | Y |  |
| 78 | DT_REVISADO_FINAL | VARCHAR2 | Y |  |
| 79 | DT_ENTREGA | DATE | Y |  |
| 80 | SN_VISUALIZADO_PORTAL | CHAR | N |  |
| 81 | QT_IMAGEM_PACS | VARCHAR2 | Y |  |
| 82 | NM_ACOMODACAO_HIS | VARCHAR2 | Y |  |
| 83 | NM_LOCAL_ENTREGA_HIS | VARCHAR2 | Y |  |
| 84 | NM_INDICACAO_HIS | VARCHAR2 | Y |  |
| 85 | SN_MIDIA_RESULTADO | VARCHAR2 | Y |  |
| 86 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 87 | ID_USUARIO_LIBERACAO | VARCHAR2 | Y |  |
| 88 | NM_USUARIO_LIBERACAO | VARCHAR2 | Y |  |
| 89 | ID_USUARIO_ONLINE | NUMBER | Y |  |
| 90 | NM_USUARIO_ONLINE | VARCHAR2 | Y |  |
| 91 | DS_OPERACAO_ONLINE | VARCHAR2 | Y |  |
| 92 | SN_SMS_ENVIADO | VARCHAR2 | Y |  |
| 93 | SN_NORMAL | VARCHAR2 | Y |  |
| 94 | ID_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 95 | DT_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 96 | DS_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 97 | ID_USUARIO_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 98 | NM_USUARIO_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 99 | DS_LEITO_HIS | VARCHAR2 | Y |  |
| 100 | DS_REGIAO_EXAMINADA | VARCHAR2 | Y |  |
| 101 | SN_AGRUPAR_IMAGEM | VARCHAR2 | Y |  |
| 102 | SN_AGRUPAR_LAUDO | VARCHAR2 | Y |  |
| 103 | ID_TIPO_EXAME | VARCHAR2 | Y |  |
| 104 | NM_TIPO_EXAME | VARCHAR2 | Y |  |
| 105 | ID_PROCEDIMENTO_UNIDADE | NUMBER | N |  |
| 106 | ID_PROCEDIMENTO | NUMBER | N |  |
| 107 | ACORDO | VARCHAR2 | Y |  |
| 108 | DT_REFAZER | DATE | Y |  |
| 109 | DT_ULT_SECUNDARIO | DATE | Y |  |
| 110 | NM_PROCEDIMENTO | VARCHAR2 | Y |  |
| 111 | DT_STUDY | DATE | Y |  |
| 112 | DT_PREVISAO_ENTREGA | DATE | Y |  |
| 113 | NR_DIAS | VARCHAR2 | Y |  |
| 114 | SN_ATRASADO | VARCHAR2 | Y |  |
| 115 | SN_JUSTIFICATIVA_LAUDO | CHAR | Y |  |
| 116 | ID_CLASSIFICACAO_RISCO | NUMBER | Y |  |
| 117 | ID_SETOR_EXECUTANTE | NUMBER | Y |  |
| 118 | NM_SETOR_EXECUTANTE | VARCHAR2 | Y |  |
| 119 | IDADE | NUMBER | Y |  |
| 120 | CD_TIPO_VIEWER | NUMBER | Y |  |
| 121 | CD_STUDY_UID | VARCHAR2 | Y |  |
| 122 | DT_ANAMNESE | VARCHAR2 | Y |  |
| 123 | SN_STUDY_PED | CHAR | N |  |
| 124 | SN_EXIGIR_JUST_LAU_SEM_IMG | VARCHAR2 | Y |  |
| 125 | ID_REPORT | NUMBER | Y |  |
| 126 | TP_SEXO | CHAR | N |  |
| 127 | ID_TIPO_PRIORIDADE | NUMBER | Y |  |
| 128 | CD_MODALIDADE | VARCHAR2 | Y |  |
| 129 | ID_USUARIO_MARCAR_CERTIFICADO | NUMBER | Y |  |
| 130 | DT_CERTIFICADO | DATE | Y |  |
| 131 | NM_USUARIO_MARCAR_CERTIFICADO | VARCHAR2 | Y |  |
| 132 | NM_SISTEMA | VARCHAR2 | Y |  |
| 133 | DT_DISTRIBUICAO_EXECUTANTE | VARCHAR2 | Y |  |
| 134 | DT_DISTRIBUICAO_REVISOR | VARCHAR2 | Y |  |
| 135 | ID_USU_DISTRIBUICAO_EXECUTANTE | VARCHAR2 | Y |  |
| 136 | ID_USU_DISTRIBUICAO_REVISOR | VARCHAR2 | Y |  |
| 137 | SN_DISTRIBUICAO_EXECUTANTE | CHAR | N |  |
| 138 | SN_DISTRIBUICAO_REVISOR | CHAR | N |  |
| 139 | NM_TECNICO_RESPONSAVEL | VARCHAR2 | Y |  |
| 140 | DT_NAO_CONFORMIDADE | DATE | Y |  |
| 141 | DS_NAO_CONFORMIDADE | VARCHAR2 | Y |  |
| 142 | ID_USU_NAO_CONFORMIDADE | VARCHAR2 | Y |  |
| 143 | DT_ATUALIZACAO_ERRATA | DATE | Y |  |
| 144 | ID_DOCUMENTO_CARTORIO | NUMBER | Y |  |
| 145 | NM_UNIDADE_ORIGEM | VARCHAR2 | Y |  |
| 146 | ID_UNIDADE_EXECUTANTE | NUMBER | N |  |
| 147 | DT_TRANSFERENCIA_UNIDADE | VARCHAR2 | Y |  |
| 148 | DT_NAO_CONFORMIDADE_RESOLVIDA | DATE | Y |  |
| 149 | DS_INCONFORMIDADE | VARCHAR2 | Y |  |
| 150 | DT_COLETA_HIS | DATE | Y |  |
| 151 | CD_CLASSIFICACAO | VARCHAR2 | Y |  |
| 152 | DS_COMENTARIO | VARCHAR2 | Y |  |
| 153 | DS_CPF | VARCHAR2 | Y |  |
| 154 | ID_SISTEMA | NUMBER | Y |  |
| 155 | DS_RG | VARCHAR2 | Y |  |

---

## IDCECRER.RS_VW_CONVENIO_UNIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_CONVENIO_UNIDADE | NUMBER | N |  |
| 2 | ID_CONVENIO | NUMBER | Y |  |
| 3 | ID_UNIDADE | NUMBER | Y |  |
| 4 | NM_CONVENIO_UNIDADE | VARCHAR2 | Y |  |
| 5 | NM_REDUZIDO_CONVENIO | VARCHAR2 | Y |  |
| 6 | DS_ENDERECO | VARCHAR2 | Y |  |
| 7 | DS_BAIRRO | VARCHAR2 | Y |  |
| 8 | DS_CIDADE | VARCHAR2 | Y |  |
| 9 | DS_UF | VARCHAR2 | Y |  |
| 10 | DS_CEP | VARCHAR2 | Y |  |
| 11 | DS_CPF_CNPJ | VARCHAR2 | Y |  |
| 12 | DS_CONTATO | VARCHAR2 | Y |  |
| 13 | DS_TELEFONE | VARCHAR2 | Y |  |
| 14 | DS_FAX | VARCHAR2 | Y |  |
| 15 | DS_EMAIL | VARCHAR2 | Y |  |
| 16 | CD_CONVENIO_HIS | VARCHAR2 | Y |  |
| 17 | ID_USUARIO | NUMBER | Y |  |
| 18 | DT_CADASTRO | DATE | Y |  |
| 19 | DT_ALTERACAO | DATE | Y |  |
| 20 | ID_INTERBASE | NUMBER | Y |  |
| 21 | NM_UNIDADE | VARCHAR2 | Y |  |
| 22 | CD_UNIDADE_HIS | VARCHAR2 | Y |  |

---

## IDCECRER.RS_VW_EMAIL_ACHADOS_CRITICOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 2 | CD_ITEM_PEDIDO_HIS | VARCHAR2 | Y |  |
| 3 | DT_REVISADO | DATE | Y |  |
| 4 | NM_EXAME_UNIDADE | VARCHAR2 | Y |  |

---

## IDCECRER.RS_VW_ENVIO_SMS_EMAIL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CELULARMEDICOEXECUTANTE | VARCHAR2 | Y |  |
| 2 | CELULARPACIENTE | VARCHAR2 | Y |  |
| 3 | DATACADASTRO | DATE | Y |  |
| 4 | EMAILMEDICOEXECUTANTE | VARCHAR2 | Y |  |
| 5 | EMAILPACIENTE | VARCHAR2 | Y |  |
| 6 | LAUDOID | NUMBER | N |  |
| 7 | MSGSMS | VARCHAR2 | Y |  |
| 8 | NOMEEXAME | VARCHAR2 | Y |  |
| 9 | NOMEMEDICOEXECUTANTE | VARCHAR2 | Y |  |
| 10 | NOMEPACIENTE | VARCHAR2 | Y |  |
| 11 | PRAZO | NUMBER | Y |  |
| 12 | PRONTUARIO | VARCHAR2 | Y |  |
| 13 | REMETENTESMS | VARCHAR2 | Y |  |
| 14 | ID_UNIDADE | NUMBER | N |  |
| 15 | URLSMS | VARCHAR2 | Y |  |
| 16 | ENVIOSMSPACIENTE | CHAR | Y |  |
| 17 | ENVIOEMAILPACIENTE | CHAR | Y |  |
| 18 | ENVIOEMAILMEDEXEC | CHAR | Y |  |
| 19 | ENVIOSMSMEDEXEC | CHAR | Y |  |
| 20 | SNSMSMEDICO | CHAR | Y |  |
| 21 | SNEMAILMEDICO | CHAR | Y |  |
| 22 | SNSMSPACIENTE | CHAR | Y |  |
| 23 | SNEMAILPACIENTE | CHAR | Y |  |
| 24 | SNURGENTE | CHAR | Y |  |
| 25 | DSURGENTE | CHAR | Y |  |

---

## IDCECRER.RS_VW_EXAME_PEDIDO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NM_UNIDADE | VARCHAR2 | Y |  |
| 2 | CD_UNIDADE_HIS | VARCHAR2 | Y |  |
| 3 | ID_MEDICO_EXECUTANTE_PADRAO | NUMBER | Y |  |
| 4 | SN_BLOQUEIO_CONTA_FECHADA | CHAR | N |  |
| 5 | DS_CERTIFICACAO_DIGITAL | VARCHAR2 | Y |  |
| 6 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 7 | ID_PEDIDO_EXAME | NUMBER | N |  |
| 8 | ID_MEDICO_SOLICITANTE | NUMBER | Y |  |
| 9 | NM_MEDICO_SOLICITANTE | VARCHAR2 | Y |  |
| 10 | DS_CRM_SOLICITANTE | VARCHAR2 | Y |  |
| 11 | DS_TELEFONE_SOLICITANTE | VARCHAR2 | Y |  |
| 12 | DS_EMAIL_SOLICITANTE | VARCHAR2 | Y |  |
| 13 | ID_PACIENTE | NUMBER | Y |  |
| 14 | ID_PACIENTE_CONSOLIDADO | NUMBER | Y |  |
| 15 | NM_PACIENTE | VARCHAR2 | Y |  |
| 16 | TP_SEXO | CHAR | Y |  |
| 17 | DS_TELEFONE | VARCHAR2 | Y |  |
| 18 | DT_NASCIMENTO | DATE | Y |  |
| 19 | DS_EMAIL | VARCHAR2 | Y |  |
| 20 | DS_MATRICULA | VARCHAR2 | Y |  |
| 21 | IDADE | NUMBER | Y |  |
| 22 | NR_PRONTUARIO_HOSPITALAR | VARCHAR2 | Y |  |
| 23 | CD_PACIENTE_HIS | VARCHAR2 | Y |  |
| 24 | DS_ENDERECO | VARCHAR2 | Y |  |
| 25 | DS_BAIRRO | VARCHAR2 | Y |  |
| 26 | DS_CIDADE | VARCHAR2 | Y |  |
| 27 | DS_UF | VARCHAR2 | Y |  |
| 28 | DS_CEP | VARCHAR2 | Y |  |
| 29 | DS_FAX | VARCHAR2 | Y |  |
| 30 | SN_EMAIL | CHAR | Y |  |
| 31 | SN_SMS | CHAR | Y |  |
| 32 | NM_MAE | VARCHAR2 | Y |  |
| 33 | NM_PAI | VARCHAR2 | Y |  |
| 34 | ID_CONVENIO | NUMBER | Y |  |
| 35 | ID_UNIDADE | NUMBER | Y |  |
| 36 | ID_UNIDADE_ORIGEM | NUMBER | Y |  |
| 37 | NR_GUIA_HIS | VARCHAR2 | Y |  |
| 38 | NM_CONVENIO_UNIDADE | VARCHAR2 | Y |  |
| 39 | SN_PARCEIRO | CHAR | Y |  |
| 40 | ID_MEDICO_EXECUTANTE | NUMBER | Y |  |
| 41 | NM_MEDICO_EXECUTANTE | VARCHAR2 | Y |  |
| 42 | DS_CRM_EXECUTANTE | VARCHAR2 | Y |  |
| 43 | CD_HIS_EXECUTANTE | VARCHAR2 | Y |  |
| 44 | ID_MEDICO_REVISOR | NUMBER | Y |  |
| 45 | NM_MEDICO_REVISOR | VARCHAR2 | Y |  |
| 46 | DS_CRM_REVISOR | VARCHAR2 | Y |  |
| 47 | CD_HIS_REVISOR | VARCHAR2 | Y |  |
| 48 | ID_MEDICO_REVISOR_FINAL | NUMBER | Y |  |
| 49 | NM_MEDICO_REVISOR_FINAL | VARCHAR2 | Y |  |
| 50 | DS_CRM_REVISOR_FINAL | VARCHAR2 | Y |  |
| 51 | CD_HIS_REVISOR_FINAL | VARCHAR2 | Y |  |
| 52 | ID_DIAGNOSTICO_RADIO | NUMBER | Y |  |
| 53 | NM_DIAGNOSTICO_RADIO | CHAR | Y |  |
| 54 | ID_DIAGNOSTICO_CLINICO | NUMBER | Y |  |
| 55 | NM_DIAGNOSTICO_CLINICO | CHAR | Y |  |
| 56 | ID_DIAGNOSTICO_CIRURGICO | NUMBER | Y |  |
| 57 | NM_DIAGNOSTICO_CIRURGICO | CHAR | Y |  |
| 58 | ID_SALA | NUMBER | Y |  |
| 59 | NM_SALA | VARCHAR2 | Y |  |
| 60 | DT_CADASTRO | DATE | N |  |
| 61 | DT_ALTERACAO | DATE | Y |  |
| 62 | DT_STUDY | DATE | Y |  |
| 63 | ID_EXAME_UNIDADE | NUMBER | Y |  |
| 64 | NM_EXAME_UNIDADE | VARCHAR2 | Y |  |
| 65 | ID_EXAME | NUMBER | N |  |
| 66 | NM_EXAME | VARCHAR2 | Y |  |
| 67 | CD_CBHPM | VARCHAR2 | Y |  |
| 68 | ID_USUARIO_INCLUSAO | NUMBER | Y |  |
| 69 | NM_USUARIO_INCLUSAO | VARCHAR2 | Y |  |
| 70 | ID_USUARIO_ALTERACAO | NUMBER | Y |  |
| 71 | NM_USUARIO_ALTERACAO | VARCHAR2 | Y |  |
| 72 | DT_DUM | DATE | Y |  |
| 73 | CD_ATENDIMENTO_HIS | VARCHAR2 | Y |  |
| 74 | CD_PEDIDO_HIS | VARCHAR2 | Y |  |
| 75 | CD_ITEM_PEDIDO_HIS | VARCHAR2 | Y |  |
| 76 | ID_ORIGEM_ATENDIMENTO | NUMBER | Y |  |
| 77 | CD_STATUS | CHAR | Y |  |
| 78 | DS_STATUS | VARCHAR2 | Y |  |
| 79 | ID_SETOR | NUMBER | Y |  |
| 80 | NM_SETOR | VARCHAR2 | Y |  |
| 81 | ID_USUARIO_ENTRADA_EXAME | NUMBER | Y |  |
| 82 | NM_USUARIO_ENTRADA_EXAME | VARCHAR2 | Y |  |
| 83 | ID_USUARIO_SAIDA_EXAME | NUMBER | Y |  |
| 84 | NM_USUARIO_SAIDA_EXAME | VARCHAR2 | Y |  |
| 85 | DT_ENTRADA_EXAME | DATE | Y |  |
| 86 | DT_SAIDA_EXAME | DATE | Y |  |
| 87 | NR_ALTURA | NUMBER | Y |  |
| 88 | NR_PESO | NUMBER | Y |  |
| 89 | SN_PENDENTE | CHAR | Y |  |
| 90 | DT_FINALIZACAO | DATE | Y |  |
| 91 | DT_LAUDADO | DATE | Y |  |
| 92 | DT_JUST_ERRATA | DATE | Y |  |
| 93 | DT_PEDIDO | DATE | Y |  |
| 94 | DT_IMPRESSO | DATE | Y |  |
| 95 | DT_ASSINADO | DATE | Y |  |
| 96 | DT_DIGITADO | DATE | Y |  |
| 97 | DT_DITADO | DATE | Y |  |
| 98 | DT_REVISADO | DATE | Y |  |
| 99 | DT_REVISADO_FINAL | DATE | Y |  |
| 100 | DT_ENTREGA | DATE | Y |  |
| 101 | DT_PREVISAO_ENTREGA | DATE | Y |  |
| 102 | NM_ACOMODACAO_HIS | VARCHAR2 | Y |  |
| 103 | NM_LOCAL_ENTREGA_HIS | VARCHAR2 | Y |  |
| 104 | NM_INDICACAO_HIS | VARCHAR2 | Y |  |
| 105 | SN_MIDIA_RESULTADO | CHAR | Y |  |
| 106 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 107 | ID_USUARIO_LIBERACAO | NUMBER | Y |  |
| 108 | NM_USUARIO_LIBERACAO | VARCHAR2 | Y |  |
| 109 | ID_USUARIO_ONLINE | NUMBER | Y |  |
| 110 | NM_USUARIO_ONLINE | VARCHAR2 | Y |  |
| 111 | DS_OPERACAO_ONLINE | VARCHAR2 | Y |  |
| 112 | SN_SMS_ENVIADO | CHAR | Y |  |
| 113 | DS_LAUDO_RTF | CLOB | Y |  |
| 114 | DS_LAUDO_TXT | CLOB | Y |  |
| 115 | DS_LAUDO_HTML | CLOB | Y |  |
| 116 | SN_NORMAL | CHAR | Y |  |
| 117 | ID_JUSTIFICATIVA | NUMBER | Y |  |
| 118 | DT_JUSTIFICATIVA | DATE | Y |  |
| 119 | DS_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 120 | ID_USUARIO_JUSTIFICATIVA | NUMBER | Y |  |
| 121 | NM_USUARIO_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 122 | DS_LEITO_HIS | VARCHAR2 | Y |  |
| 123 | DS_REGIAO_EXAMINADA | VARCHAR2 | Y |  |
| 124 | SN_AGRUPAR_IMAGEM | CHAR | Y |  |
| 125 | SN_AGRUPAR_LAUDO | CHAR | Y |  |
| 126 | ID_TIPO_EXAME | NUMBER | Y |  |
| 127 | NM_TIPO_EXAME | VARCHAR2 | Y |  |
| 128 | NM_PROCEDIMENTO | VARCHAR2 | Y |  |
| 129 | ID_PROCEDIMENTO_UNIDADE | NUMBER | N |  |
| 130 | ID_PROCEDIMENTO | NUMBER | N |  |
| 131 | NR_PRAZO_ENTREGA | NUMBER | Y |  |
| 132 | CD_PROCEDIMENTO_HIS | VARCHAR2 | Y |  |
| 133 | DS_LAYOUT_IMPRESSAO | VARCHAR2 | Y |  |
| 134 | ID_MEDICO_PADRAO | NUMBER | Y |  |
| 135 | ID_SALA_PADRAO | NUMBER | Y |  |
| 136 | SN_REVISAO_AUTOMATICA | CHAR | Y |  |
| 137 | SN_DICOM | CHAR | Y |  |
| 138 | SN_EXECUTANTE_REVISOR | CHAR | Y |  |
| 139 | SN_LAUDO_LOTE_PENDENTE | CHAR | Y |  |
| 140 | SN_ENTREGA_LAUDO_CD | CHAR | Y |  |
| 141 | SN_IMPRESSAO_LAUDO_ENTREGA | CHAR | Y |  |
| 142 | SN_LIBERAR_LOTE_LAUDO_REV_PEND | CHAR | Y |  |
| 143 | SN_TEXTO_PADRAO_AUTOMATICO | CHAR | Y |  |
| 144 | SN_JUSTIFICATIVA_LAUDO | CHAR | Y |  |
| 145 | SN_ENDOSCOPIA | CHAR | Y |  |
| 146 | CD_MODALIDADE | VARCHAR2 | Y |  |
| 147 | NR_DIAS | NUMBER | Y |  |
| 148 | SN_ATRASADO | CHAR | Y |  |
| 149 | TP_SEXO_REVISOR | VARCHAR2 | Y |  |
| 150 | TP_SEXO_EXECUTANTE | VARCHAR2 | Y |  |
| 151 | ID_SISTEMA | NUMBER | Y |  |
| 152 | CD_EXAME_HIS | VARCHAR2 | Y |  |
| 153 | ID_MEDICO_DITADO | NUMBER | Y |  |
| 154 | NM_MEDICO_DITADO | VARCHAR2 | Y |  |
| 155 | DS_CRM_DITADO | VARCHAR2 | Y |  |
| 156 | CD_HIS_DITADO | VARCHAR2 | Y |  |
| 157 | ID_CLASSIFICACAO_RISCO | NUMBER | Y |  |
| 158 | ID_SETOR_EXECUTANTE | NUMBER | Y |  |
| 159 | ID_SETOR_SOLICITANTE | NUMBER | Y |  |
| 160 | ID_ETAPA_ATUAL | NUMBER | Y |  |
| 161 | NM_ETAPA | VARCHAR2 | Y |  |
| 162 | DS_ALERTA_ACORDO | VARCHAR2 | Y |  |
| 163 | POSSUICOMENTARIO | CHAR | Y |  |
| 164 | ID_TIPO_PRIORIDADE | NUMBER | Y |  |
| 165 | SN_PRESCRICAO_URGENTE | CHAR | Y |  |
| 166 | SN_EXAME_CONCLUIDO | CHAR | Y |  |
| 167 | CD_STUDY_UID | VARCHAR2 | Y |  |
| 168 | CD_TIPO_VIEWER | NUMBER | Y |  |
| 169 | DT_ANAMNESE | DATE | Y |  |
| 170 | ID_CONVENIO_UNIDADE | NUMBER | Y |  |
| 171 | PACIENTE_IDADE_EXTENSO | VARCHAR2 | Y |  |
| 172 | SN_STUDY_PED | CHAR | N |  |
| 173 | TP_INSUMO | NUMBER | Y |  |
| 174 | DS_PATH_RELATORIO_FORMULA | VARCHAR2 | Y |  |
| 175 | DS_LAUDO_PDF_MARCADAGUA | BLOB | Y |  |
| 176 | NM_SETOR_EXECUTANTE | VARCHAR2 | Y |  |
| 177 | SN_EXIGIR_JUST_LAU_SEM_IMG | CHAR | Y |  |
| 178 | SN_TERCEIRA_OPINIAO | CHAR | Y |  |
| 179 | ID_EXAME_PEDIDO_PAI | NUMBER | Y |  |
| 180 | SN_PANICO | CHAR | N |  |
| 181 | ID_JUSTIFICATIVA_IMAGEM | NUMBER | Y |  |
| 182 | DT_JUSTIFICATIVA_IMAGEM | DATE | Y |  |
| 183 | DS_JUSTIFICATIVA_IMAGEM | VARCHAR2 | Y |  |
| 184 | SN_PROVISORIO | CHAR | N |  |
| 185 | DT_CERTIFICADO | DATE | Y |  |
| 186 | ID_USUARIO_MARCAR_CERTIFICADO | NUMBER | Y |  |
| 187 | NM_USUARIO_MARCAR_CERTIFICADO | VARCHAR2 | Y |  |
| 188 | NM_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 189 | DT_DISTRIBUICAO_EXECUTANTE | DATE | Y |  |
| 190 | DT_DISTRIBUICAO_REVISOR | DATE | Y |  |
| 191 | ID_USU_DISTRIBUICAO_EXECUTANTE | NUMBER | Y |  |
| 192 | ID_USU_DISTRIBUICAO_REVISOR | NUMBER | Y |  |
| 193 | SN_DISTRIBUICAO_EXECUTANTE | CHAR | N |  |
| 194 | SN_DISTRIBUICAO_REVISOR | CHAR | N |  |
| 195 | NR_DIAS_EXPIRAR_ACAO_LAUDAR | NUMBER | N |  |
| 196 | SN_VISUALIZADO_PORTAL | CHAR | N |  |
| 197 | NM_TECNICO_RESPONSAVEL | VARCHAR2 | Y |  |
| 198 | QT_IMAGEM_PACS | VARCHAR2 | Y |  |
| 199 | DT_NAO_CONFORMIDADE | DATE | Y |  |
| 200 | DS_NAO_CONFORMIDADE | VARCHAR2 | Y |  |
| 201 | ID_USU_NAO_CONFORMIDADE | NUMBER | Y |  |
| 202 | DT_ATUALIZACAO_ERRATA | DATE | Y |  |
| 203 | ID_DOCUMENTO_CARTORIO | NUMBER | Y |  |
| 204 | NM_UNIDADE_ORIGEM | VARCHAR2 | Y |  |
| 205 | ID_UNIDADE_EXECUTANTE | NUMBER | Y |  |
| 206 | DT_TRANSFERENCIA_UNIDADE | DATE | Y |  |
| 207 | NR_CPF_CERT_DIGITAL | VARCHAR2 | Y |  |
| 208 | NM_CERT_DIGITAL | VARCHAR2 | Y |  |
| 209 | NM_FORNECEDOR_CERT_DIGITAL | VARCHAR2 | Y |  |
| 210 | DT_FORNECEDOR_CERT_DIGITAL | DATE | Y |  |
| 211 | DT_NAO_CONFORMIDADE_RESOLVIDA | DATE | Y |  |
| 212 | DS_INCONFORMIDADE | VARCHAR2 | Y |  |
| 213 | NR_CNS | VARCHAR2 | Y |  |
| 214 | DS_CPF | VARCHAR2 | Y |  |
| 215 | DS_RG | VARCHAR2 | Y |  |
| 216 | DS_ORGAO | VARCHAR2 | Y |  |
| 217 | NM_SOCIAL_PACIENTE | VARCHAR2 | Y |  |
| 218 | CD_STATUS_IA | NUMBER | Y |  |
| 219 | DS_PANICO | VARCHAR2 | Y |  |
| 220 | ID_MEDICO_ORIENTADOR | NUMBER | Y |  |
| 221 | NM_MEDICO_ORIENTADOR | VARCHAR2 | Y |  |
| 222 | DT_MEDICO_ORIENTADOR | DATE | Y |  |
| 223 | SN_EXIGIR_FINALIZACAO_EXAME | CHAR | N |  |
| 224 | DS_ESPECIALIDADE_EXECUTANTE | VARCHAR2 | Y |  |
| 225 | RQE_MSOLICITANTE | NUMBER | Y |  |
| 226 | RQE_MEXECUTANTE | NUMBER | Y |  |
| 227 | RQE_MREVISOR | NUMBER | Y |  |
| 228 | DS_ESPECIALIDADE_REVISOR | VARCHAR2 | Y |  |
| 229 | DT_REFAZER | DATE | Y |  |
| 230 | DS_LAUDO_RTF_ANTERIOR | CLOB | Y |  |
| 231 | DS_LAUDO_RTF_REFEITO | CLOB | Y |  |
| 232 | ID_EXECUTANTE_ANTERIOR | NUMBER | Y |  |
| 233 | ID_REVISOR_ANTERIOR | NUMBER | Y |  |
| 234 | NM_MEDICO_EXECUTANTE_ANT | VARCHAR2 | Y |  |
| 235 | DS_CRM_EXECUTANTE_ANT | VARCHAR2 | Y |  |
| 236 | TP_SEXO_EXECUTANTE_ANT | VARCHAR2 | Y |  |
| 237 | DS_ESPECIALIDADE_EXEC_ANT | VARCHAR2 | Y |  |
| 238 | NM_MEDICO_REVISOR_ANT | VARCHAR2 | Y |  |
| 239 | DS_CRM_REVISOR_ANT | VARCHAR2 | Y |  |
| 240 | TP_SEXO_REVISOR_ANT | VARCHAR2 | Y |  |
| 241 | DS_ESPECIALIDADE_REVISOR_ANT | VARCHAR2 | Y |  |
| 242 | DT_CADASTRO_PANICO | DATE | Y |  |
| 243 | NM_CONTATO_PANICO | VARCHAR2 | Y |  |
| 244 | DT_COLETA_HIS | DATE | Y |  |
| 245 | SN_REGRA_DISTRIBUICAO | CHAR | N |  |
| 246 | SN_COMENTARIO | VARCHAR2 | Y |  |
| 247 | SN_EXIGIR_PARECER | CHAR | Y |  |
| 248 | SN_BLOQUEIO_CANCELAMENTO | CHAR | Y |  |
| 249 | TEMPO_BLOQUEIO_CANCELAMENTO | NUMBER | Y |  |
| 250 | DS_TELEFONE1 | VARCHAR2 | Y |  |
| 251 | DT_LAUDADO_BR | VARCHAR2 | Y |  |
| 252 | DT_PEDIDO_BR | VARCHAR2 | Y |  |

---

## IDCECRER.RS_VW_EXAME_PEDIDO_COMENTARIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_COMENTARIO | NUMBER | N |  |
| 2 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 3 | DS_COMENTARIO | VARCHAR2 | Y |  |
| 4 | DT_CADASTRO | DATE | N |  |
| 5 | DT_ALTERACAO | DATE | Y |  |
| 6 | ID_USUARIO | NUMBER | N |  |
| 7 | ID_TIPO_PRIORIDADE | NUMBER | Y |  |

---

## IDCECRER.RS_VW_EXAME_PEDIDO_MULTI_LOGIN

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NM_UNIDADE | VARCHAR2 | Y |  |
| 2 | CD_UNIDADE_HIS | VARCHAR2 | Y |  |
| 3 | ID_MEDICO_EXECUTANTE_PADRAO | NUMBER | Y |  |
| 4 | SN_BLOQUEIO_CONTA_FECHADA | CHAR | N |  |
| 5 | DS_CERTIFICACAO_DIGITAL | VARCHAR2 | Y |  |
| 6 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 7 | ID_PEDIDO_EXAME | NUMBER | N |  |
| 8 | ID_MEDICO_SOLICITANTE | NUMBER | Y |  |
| 9 | NM_MEDICO_SOLICITANTE | VARCHAR2 | Y |  |
| 10 | DS_CRM_SOLICITANTE | VARCHAR2 | Y |  |
| 11 | DS_TELEFONE_SOLICITANTE | VARCHAR2 | Y |  |
| 12 | DS_EMAIL_SOLICITANTE | VARCHAR2 | Y |  |
| 13 | ID_PACIENTE | NUMBER | Y |  |
| 14 | ID_PACIENTE_CONSOLIDADO | NUMBER | Y |  |
| 15 | NM_PACIENTE | VARCHAR2 | Y |  |
| 16 | TP_SEXO | CHAR | Y |  |
| 17 | DS_TELEFONE | VARCHAR2 | Y |  |
| 18 | DT_NASCIMENTO | DATE | Y |  |
| 19 | DS_EMAIL | VARCHAR2 | Y |  |
| 20 | DS_MATRICULA | VARCHAR2 | Y |  |
| 21 | IDADE | NUMBER | Y |  |
| 22 | NR_PRONTUARIO_HOSPITALAR | VARCHAR2 | Y |  |
| 23 | CD_PACIENTE_HIS | VARCHAR2 | Y |  |
| 24 | DS_ENDERECO | VARCHAR2 | Y |  |
| 25 | DS_BAIRRO | VARCHAR2 | Y |  |
| 26 | DS_CIDADE | VARCHAR2 | Y |  |
| 27 | DS_UF | VARCHAR2 | Y |  |
| 28 | DS_CEP | VARCHAR2 | Y |  |
| 29 | DS_FAX | VARCHAR2 | Y |  |
| 30 | SN_EMAIL | CHAR | Y |  |
| 31 | SN_SMS | CHAR | Y |  |
| 32 | ID_CONVENIO | NUMBER | Y |  |
| 33 | ID_UNIDADE | NUMBER | Y |  |
| 34 | ID_UNIDADE_ORIGEM | NUMBER | Y |  |
| 35 | NR_GUIA_HIS | VARCHAR2 | Y |  |
| 36 | NM_CONVENIO_UNIDADE | VARCHAR2 | Y |  |
| 37 | SN_PARCEIRO | CHAR | Y |  |
| 38 | ID_MEDICO_EXECUTANTE | NUMBER | Y |  |
| 39 | NM_MEDICO_EXECUTANTE | VARCHAR2 | Y |  |
| 40 | DS_CRM_EXECUTANTE | VARCHAR2 | Y |  |
| 41 | CD_HIS_EXECUTANTE | VARCHAR2 | Y |  |
| 42 | ID_MEDICO_REVISOR | NUMBER | Y |  |
| 43 | NM_MEDICO_REVISOR | VARCHAR2 | Y |  |
| 44 | DS_CRM_REVISOR | VARCHAR2 | Y |  |
| 45 | CD_HIS_REVISOR | VARCHAR2 | Y |  |
| 46 | ID_MEDICO_REVISOR_FINAL | NUMBER | Y |  |
| 47 | NM_MEDICO_REVISOR_FINAL | VARCHAR2 | Y |  |
| 48 | DS_CRM_REVISOR_FINAL | VARCHAR2 | Y |  |
| 49 | CD_HIS_REVISOR_FINAL | VARCHAR2 | Y |  |
| 50 | ID_DIAGNOSTICO_RADIO | NUMBER | Y |  |
| 51 | NM_DIAGNOSTICO_RADIO | CHAR | Y |  |
| 52 | ID_DIAGNOSTICO_CLINICO | NUMBER | Y |  |
| 53 | NM_DIAGNOSTICO_CLINICO | CHAR | Y |  |
| 54 | ID_DIAGNOSTICO_CIRURGICO | NUMBER | Y |  |
| 55 | NM_DIAGNOSTICO_CIRURGICO | CHAR | Y |  |
| 56 | ID_SALA | NUMBER | Y |  |
| 57 | NM_SALA | VARCHAR2 | Y |  |
| 58 | DT_CADASTRO | DATE | N |  |
| 59 | DT_ALTERACAO | DATE | Y |  |
| 60 | DT_STUDY | DATE | Y |  |
| 61 | ID_EXAME_UNIDADE | NUMBER | Y |  |
| 62 | NM_EXAME_UNIDADE | VARCHAR2 | Y |  |
| 63 | ID_EXAME | NUMBER | N |  |
| 64 | NM_EXAME | VARCHAR2 | Y |  |
| 65 | CD_CBHPM | VARCHAR2 | Y |  |
| 66 | ID_USUARIO_INCLUSAO | NUMBER | Y |  |
| 67 | NM_USUARIO_INCLUSAO | VARCHAR2 | Y |  |
| 68 | ID_USUARIO_ALTERACAO | NUMBER | Y |  |
| 69 | NM_USUARIO_ALTERACAO | VARCHAR2 | Y |  |
| 70 | DT_DUM | DATE | Y |  |
| 71 | CD_ATENDIMENTO_HIS | VARCHAR2 | Y |  |
| 72 | CD_PEDIDO_HIS | VARCHAR2 | Y |  |
| 73 | CD_ITEM_PEDIDO_HIS | VARCHAR2 | Y |  |
| 74 | ID_ORIGEM_ATENDIMENTO | NUMBER | Y |  |
| 75 | CD_STATUS | CHAR | Y |  |
| 76 | DS_STATUS | VARCHAR2 | Y |  |
| 77 | ID_SETOR | NUMBER | Y |  |
| 78 | NM_SETOR | VARCHAR2 | Y |  |
| 79 | ID_USUARIO_ENTRADA_EXAME | NUMBER | Y |  |
| 80 | NM_USUARIO_ENTRADA_EXAME | VARCHAR2 | Y |  |
| 81 | ID_USUARIO_SAIDA_EXAME | NUMBER | Y |  |
| 82 | NM_USUARIO_SAIDA_EXAME | VARCHAR2 | Y |  |
| 83 | DT_ENTRADA_EXAME | DATE | Y |  |
| 84 | DT_SAIDA_EXAME | DATE | Y |  |
| 85 | NR_ALTURA | NUMBER | Y |  |
| 86 | NR_PESO | NUMBER | Y |  |
| 87 | SN_PENDENTE | CHAR | Y |  |
| 88 | DT_FINALIZACAO | DATE | Y |  |
| 89 | DT_LAUDADO | DATE | Y |  |
| 90 | DT_PEDIDO | DATE | Y |  |
| 91 | DT_IMPRESSO | DATE | Y |  |
| 92 | DT_ASSINADO | DATE | Y |  |
| 93 | DT_DIGITADO | DATE | Y |  |
| 94 | DT_DITADO | DATE | Y |  |
| 95 | DT_REVISADO | DATE | Y |  |
| 96 | DT_REVISADO_FINAL | DATE | Y |  |
| 97 | DT_ENTREGA | DATE | Y |  |
| 98 | DT_PREVISAO_ENTREGA | DATE | Y |  |
| 99 | NM_ACOMODACAO_HIS | VARCHAR2 | Y |  |
| 100 | NM_LOCAL_ENTREGA_HIS | VARCHAR2 | Y |  |
| 101 | NM_INDICACAO_HIS | VARCHAR2 | Y |  |
| 102 | SN_MIDIA_RESULTADO | CHAR | Y |  |
| 103 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 104 | ID_USUARIO_LIBERACAO | NUMBER | Y |  |
| 105 | NM_USUARIO_LIBERACAO | VARCHAR2 | Y |  |
| 106 | ID_USUARIO_ONLINE | NUMBER | Y |  |
| 107 | NM_USUARIO_ONLINE | VARCHAR2 | Y |  |
| 108 | DS_OPERACAO_ONLINE | VARCHAR2 | Y |  |
| 109 | SN_SMS_ENVIADO | CHAR | Y |  |
| 110 | DS_LAUDO_RTF | CLOB | Y |  |
| 111 | DS_LAUDO_TXT | CLOB | Y |  |
| 112 | DS_LAUDO_HTML | CLOB | Y |  |
| 113 | SN_NORMAL | CHAR | Y |  |
| 114 | ID_JUSTIFICATIVA | NUMBER | Y |  |
| 115 | DT_JUSTIFICATIVA | DATE | Y |  |
| 116 | DS_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 117 | ID_USUARIO_JUSTIFICATIVA | NUMBER | Y |  |
| 118 | NM_USUARIO_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 119 | DS_LEITO_HIS | VARCHAR2 | Y |  |
| 120 | DS_REGIAO_EXAMINADA | VARCHAR2 | Y |  |
| 121 | SN_AGRUPAR_IMAGEM | CHAR | Y |  |
| 122 | SN_AGRUPAR_LAUDO | CHAR | Y |  |
| 123 | ID_TIPO_EXAME | NUMBER | Y |  |
| 124 | NM_TIPO_EXAME | VARCHAR2 | Y |  |
| 125 | NM_PROCEDIMENTO | VARCHAR2 | Y |  |
| 126 | ID_PROCEDIMENTO_UNIDADE | NUMBER | N |  |
| 127 | ID_PROCEDIMENTO | NUMBER | N |  |
| 128 | NR_PRAZO_ENTREGA | NUMBER | Y |  |
| 129 | CD_PROCEDIMENTO_HIS | VARCHAR2 | Y |  |
| 130 | DS_LAYOUT_IMPRESSAO | VARCHAR2 | Y |  |
| 131 | ID_MEDICO_PADRAO | NUMBER | Y |  |
| 132 | ID_SALA_PADRAO | NUMBER | Y |  |
| 133 | SN_REVISAO_AUTOMATICA | CHAR | Y |  |
| 134 | SN_DICOM | CHAR | Y |  |
| 135 | SN_EXECUTANTE_REVISOR | CHAR | Y |  |
| 136 | SN_LAUDO_LOTE_PENDENTE | CHAR | Y |  |
| 137 | SN_ENTREGA_LAUDO_CD | CHAR | Y |  |
| 138 | SN_IMPRESSAO_LAUDO_ENTREGA | CHAR | Y |  |
| 139 | SN_LIBERAR_LOTE_LAUDO_REV_PEND | CHAR | Y |  |
| 140 | SN_TEXTO_PADRAO_AUTOMATICO | CHAR | Y |  |
| 141 | SN_JUSTIFICATIVA_LAUDO | CHAR | Y |  |
| 142 | SN_ENDOSCOPIA | CHAR | Y |  |
| 143 | CD_MODALIDADE | VARCHAR2 | Y |  |
| 144 | NR_DIAS | NUMBER | Y |  |
| 145 | SN_ATRASADO | CHAR | Y |  |
| 146 | TP_SEXO_REVISOR | VARCHAR2 | Y |  |
| 147 | TP_SEXO_EXECUTANTE | VARCHAR2 | Y |  |
| 148 | ID_SISTEMA | NUMBER | Y |  |
| 149 | CD_EXAME_HIS | VARCHAR2 | Y |  |
| 150 | ID_MEDICO_DITADO | NUMBER | Y |  |
| 151 | NM_MEDICO_DITADO | VARCHAR2 | Y |  |
| 152 | DS_CRM_DITADO | VARCHAR2 | Y |  |
| 153 | CD_HIS_DITADO | VARCHAR2 | Y |  |
| 154 | ID_CLASSIFICACAO_RISCO | NUMBER | Y |  |
| 155 | ID_SETOR_EXECUTANTE | NUMBER | Y |  |
| 156 | ID_SETOR_SOLICITANTE | NUMBER | Y |  |
| 157 | ID_ETAPA_ATUAL | NUMBER | Y |  |
| 158 | NM_ETAPA | VARCHAR2 | Y |  |
| 159 | DS_ALERTA_ACORDO | VARCHAR2 | Y |  |
| 160 | POSSUICOMENTARIO | CHAR | Y |  |
| 161 | ID_TIPO_PRIORIDADE | NUMBER | Y |  |
| 162 | SN_PRESCRICAO_URGENTE | CHAR | Y |  |
| 163 | SN_EXAME_CONCLUIDO | CHAR | Y |  |
| 164 | CD_STUDY_UID | VARCHAR2 | Y |  |
| 165 | CD_TIPO_VIEWER | NUMBER | Y |  |
| 166 | DT_ANAMNESE | DATE | Y |  |
| 167 | ID_CONVENIO_UNIDADE | NUMBER | Y |  |
| 168 | PACIENTE_IDADE_EXTENSO | VARCHAR2 | Y |  |
| 169 | SN_STUDY_PED | CHAR | N |  |
| 170 | TP_INSUMO | NUMBER | Y |  |
| 171 | DS_PATH_RELATORIO_FORMULA | VARCHAR2 | Y |  |
| 172 | SN_EXIGIR_JUST_LAU_SEM_IMG | CHAR | Y |  |
| 173 | ID_REPORT | NUMBER | Y |  |
| 174 | SN_TERCEIRA_OPINIAO | CHAR | Y |  |
| 175 | NM_SETOR_EXECUTANTE | VARCHAR2 | Y |  |
| 176 | ID_EXAME_PEDIDO_PAI | NUMBER | Y |  |
| 177 | SN_PANICO | CHAR | N |  |
| 178 | DT_CERTIFICADO | DATE | Y |  |
| 179 | ID_USUARIO_MARCAR_CERTIFICADO | NUMBER | Y |  |
| 180 | NM_USUARIO_MARCAR_CERTIFICADO | VARCHAR2 | Y |  |
| 181 | NM_SISTEMA | VARCHAR2 | Y |  |
| 182 | SN_PROVISORIO | CHAR | N |  |
| 183 | NM_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 184 | DT_DISTRIBUICAO_EXECUTANTE | DATE | Y |  |
| 185 | DT_DISTRIBUICAO_REVISOR | DATE | Y |  |
| 186 | ID_USU_DISTRIBUICAO_EXECUTANTE | NUMBER | Y |  |
| 187 | ID_USU_DISTRIBUICAO_REVISOR | NUMBER | Y |  |
| 188 | SN_DISTRIBUICAO_EXECUTANTE | CHAR | N |  |
| 189 | SN_DISTRIBUICAO_REVISOR | CHAR | N |  |
| 190 | SN_VISUALIZADO_PORTAL | CHAR | N |  |
| 191 | NM_TECNICO_RESPONSAVEL | VARCHAR2 | Y |  |
| 192 | QT_IMAGEM_PACS | VARCHAR2 | Y |  |
| 193 | DT_NAO_CONFORMIDADE | DATE | Y |  |
| 194 | DS_NAO_CONFORMIDADE | VARCHAR2 | Y |  |
| 195 | ID_USU_NAO_CONFORMIDADE | NUMBER | Y |  |
| 196 | DT_ATUALIZACAO_ERRATA | DATE | Y |  |
| 197 | ID_DOCUMENTO_CARTORIO | NUMBER | Y |  |
| 198 | NM_UNIDADE_ORIGEM | VARCHAR2 | Y |  |
| 199 | ID_UNIDADE_EXECUTANTE | NUMBER | Y |  |
| 200 | DT_TRANSFERENCIA_UNIDADE | DATE | Y |  |
| 201 | NR_CPF_CERT_DIGITAL | VARCHAR2 | Y |  |
| 202 | NM_CERT_DIGITAL | VARCHAR2 | Y |  |
| 203 | NM_FORNECEDOR_CERT_DIGITAL | VARCHAR2 | Y |  |
| 204 | DT_FORNECEDOR_CERT_DIGITAL | DATE | Y |  |
| 205 | DT_NAO_CONFORMIDADE_RESOLVIDA | DATE | Y |  |
| 206 | DS_INCONFORMIDADE | VARCHAR2 | Y |  |
| 207 | NM_SOCIAL_PACIENTE | VARCHAR2 | Y |  |
| 208 | DS_ORGAO | VARCHAR2 | Y |  |
| 209 | CD_STATUS_IA | NUMBER | Y |  |
| 210 | ACORDO | VARCHAR2 | Y |  |
| 211 | DS_PANICO | VARCHAR2 | Y |  |
| 212 | DT_CADASTRO_PANICO | DATE | Y |  |
| 213 | NM_CONTATO_PANICO | VARCHAR2 | Y |  |
| 214 | NM_ALERTA | VARCHAR2 | Y |  |
| 215 | CD_CLASSIFICACAO | VARCHAR2 | Y |  |
| 216 | DS_CPF | VARCHAR2 | Y |  |
| 217 | DS_RG | VARCHAR2 | Y |  |
| 218 | SN_CANCELADO | CHAR | Y |  |
| 219 | SN_EXIGIR_FINALIZACAO_EXAME | CHAR | N |  |
| 220 | DT_REFAZER | DATE | Y |  |
| 221 | DT_ULT_SECUNDARIO | DATE | Y |  |
| 222 | DT_COLETA_HIS | DATE | Y |  |
| 223 | SN_REGRA_DISTRIBUICAO | CHAR | N |  |
| 224 | SN_COMENTARIO | VARCHAR2 | Y |  |
| 225 | SN_EXIGIR_PARECER | CHAR | Y |  |
| 226 | DS_JUSTIFICATIVA_IMAGEM | VARCHAR2 | Y |  |
| 227 | SN_BLOQUEIO_CANCELAMENTO | CHAR | Y |  |
| 228 | TEMPO_BLOQUEIO_CANCELAMENTO | NUMBER | Y |  |
| 229 | DS_COMENTARIO | VARCHAR2 | Y |  |

---

## IDCECRER.RS_VW_EXAME_PEDIDO_MULTI_QUE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NM_UNIDADE | VARCHAR2 | Y |  |
| 2 | CD_UNIDADE_HIS | VARCHAR2 | Y |  |
| 3 | ID_MEDICO_EXECUTANTE_PADRAO | NUMBER | Y |  |
| 4 | SN_BLOQUEIO_CONTA_FECHADA | CHAR | N |  |
| 5 | DS_CERTIFICACAO_DIGITAL | VARCHAR2 | Y |  |
| 6 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 7 | ID_PEDIDO_EXAME | NUMBER | N |  |
| 8 | ID_MEDICO_SOLICITANTE | NUMBER | Y |  |
| 9 | NM_MEDICO_SOLICITANTE | VARCHAR2 | Y |  |
| 10 | DS_CRM_SOLICITANTE | VARCHAR2 | Y |  |
| 11 | DS_TELEFONE_SOLICITANTE | VARCHAR2 | Y |  |
| 12 | DS_EMAIL_SOLICITANTE | VARCHAR2 | Y |  |
| 13 | ID_PACIENTE | NUMBER | Y |  |
| 14 | ID_PACIENTE_CONSOLIDADO | NUMBER | Y |  |
| 15 | NM_PACIENTE | VARCHAR2 | Y |  |
| 16 | TP_SEXO | CHAR | Y |  |
| 17 | DS_TELEFONE | VARCHAR2 | Y |  |
| 18 | DT_NASCIMENTO | DATE | Y |  |
| 19 | DS_EMAIL | VARCHAR2 | Y |  |
| 20 | DS_MATRICULA | VARCHAR2 | Y |  |
| 21 | IDADE | NUMBER | Y |  |
| 22 | NR_PRONTUARIO_HOSPITALAR | VARCHAR2 | Y |  |
| 23 | CD_PACIENTE_HIS | VARCHAR2 | Y |  |
| 24 | DS_ENDERECO | VARCHAR2 | Y |  |
| 25 | DS_BAIRRO | VARCHAR2 | Y |  |
| 26 | DS_CIDADE | VARCHAR2 | Y |  |
| 27 | DS_UF | VARCHAR2 | Y |  |
| 28 | DS_CEP | VARCHAR2 | Y |  |
| 29 | DS_FAX | VARCHAR2 | Y |  |
| 30 | SN_EMAIL | CHAR | Y |  |
| 31 | SN_SMS | CHAR | Y |  |
| 32 | ID_CONVENIO | NUMBER | Y |  |
| 33 | ID_UNIDADE | NUMBER | Y |  |
| 34 | ID_UNIDADE_ORIGEM | NUMBER | Y |  |
| 35 | NR_GUIA_HIS | VARCHAR2 | Y |  |
| 36 | NM_CONVENIO_UNIDADE | VARCHAR2 | Y |  |
| 37 | SN_PARCEIRO | CHAR | Y |  |
| 38 | ID_MEDICO_EXECUTANTE | NUMBER | Y |  |
| 39 | NM_MEDICO_EXECUTANTE | VARCHAR2 | Y |  |
| 40 | DS_CRM_EXECUTANTE | VARCHAR2 | Y |  |
| 41 | CD_HIS_EXECUTANTE | VARCHAR2 | Y |  |
| 42 | ID_MEDICO_REVISOR | NUMBER | Y |  |
| 43 | NM_MEDICO_REVISOR | VARCHAR2 | Y |  |
| 44 | DS_CRM_REVISOR | VARCHAR2 | Y |  |
| 45 | CD_HIS_REVISOR | VARCHAR2 | Y |  |
| 46 | ID_MEDICO_REVISOR_FINAL | NUMBER | Y |  |
| 47 | NM_MEDICO_REVISOR_FINAL | VARCHAR2 | Y |  |
| 48 | DS_CRM_REVISOR_FINAL | VARCHAR2 | Y |  |
| 49 | CD_HIS_REVISOR_FINAL | VARCHAR2 | Y |  |
| 50 | ID_DIAGNOSTICO_RADIO | NUMBER | Y |  |
| 51 | NM_DIAGNOSTICO_RADIO | CHAR | Y |  |
| 52 | ID_DIAGNOSTICO_CLINICO | NUMBER | Y |  |
| 53 | NM_DIAGNOSTICO_CLINICO | CHAR | Y |  |
| 54 | ID_DIAGNOSTICO_CIRURGICO | NUMBER | Y |  |
| 55 | NM_DIAGNOSTICO_CIRURGICO | CHAR | Y |  |
| 56 | ID_SALA | NUMBER | Y |  |
| 57 | NM_SALA | VARCHAR2 | Y |  |
| 58 | DT_CADASTRO | DATE | N |  |
| 59 | DT_ALTERACAO | DATE | Y |  |
| 60 | DT_STUDY | DATE | Y |  |
| 61 | ID_EXAME_UNIDADE | NUMBER | Y |  |
| 62 | NM_EXAME_UNIDADE | VARCHAR2 | Y |  |
| 63 | ID_EXAME | NUMBER | N |  |
| 64 | NM_EXAME | VARCHAR2 | Y |  |
| 65 | CD_CBHPM | VARCHAR2 | Y |  |
| 66 | ID_USUARIO_INCLUSAO | NUMBER | Y |  |
| 67 | NM_USUARIO_INCLUSAO | VARCHAR2 | Y |  |
| 68 | ID_USUARIO_ALTERACAO | NUMBER | Y |  |
| 69 | NM_USUARIO_ALTERACAO | VARCHAR2 | Y |  |
| 70 | DT_DUM | DATE | Y |  |
| 71 | CD_ATENDIMENTO_HIS | VARCHAR2 | Y |  |
| 72 | CD_PEDIDO_HIS | VARCHAR2 | Y |  |
| 73 | CD_ITEM_PEDIDO_HIS | VARCHAR2 | Y |  |
| 74 | ID_ORIGEM_ATENDIMENTO | NUMBER | Y |  |
| 75 | CD_STATUS | CHAR | Y |  |
| 76 | DS_STATUS | VARCHAR2 | Y |  |
| 77 | ID_SETOR | NUMBER | Y |  |
| 78 | NM_SETOR | VARCHAR2 | Y |  |
| 79 | ID_USUARIO_ENTRADA_EXAME | NUMBER | Y |  |
| 80 | NM_USUARIO_ENTRADA_EXAME | VARCHAR2 | Y |  |
| 81 | ID_USUARIO_SAIDA_EXAME | NUMBER | Y |  |
| 82 | NM_USUARIO_SAIDA_EXAME | VARCHAR2 | Y |  |
| 83 | DT_ENTRADA_EXAME | DATE | Y |  |
| 84 | DT_SAIDA_EXAME | DATE | Y |  |
| 85 | NR_ALTURA | NUMBER | Y |  |
| 86 | NR_PESO | NUMBER | Y |  |
| 87 | SN_PENDENTE | CHAR | Y |  |
| 88 | DT_FINALIZACAO | DATE | Y |  |
| 89 | DT_LAUDADO | DATE | Y |  |
| 90 | DT_PEDIDO | DATE | Y |  |
| 91 | DT_IMPRESSO | DATE | Y |  |
| 92 | DT_ASSINADO | DATE | Y |  |
| 93 | DT_DIGITADO | DATE | Y |  |
| 94 | DT_DITADO | DATE | Y |  |
| 95 | DT_REVISADO | DATE | Y |  |
| 96 | DT_REVISADO_FINAL | DATE | Y |  |
| 97 | DT_ENTREGA | DATE | Y |  |
| 98 | DT_PREVISAO_ENTREGA | DATE | Y |  |
| 99 | NM_ACOMODACAO_HIS | VARCHAR2 | Y |  |
| 100 | NM_LOCAL_ENTREGA_HIS | VARCHAR2 | Y |  |
| 101 | NM_INDICACAO_HIS | VARCHAR2 | Y |  |
| 102 | SN_MIDIA_RESULTADO | CHAR | Y |  |
| 103 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 104 | ID_USUARIO_LIBERACAO | NUMBER | Y |  |
| 105 | NM_USUARIO_LIBERACAO | VARCHAR2 | Y |  |
| 106 | ID_USUARIO_ONLINE | NUMBER | Y |  |
| 107 | NM_USUARIO_ONLINE | VARCHAR2 | Y |  |
| 108 | DS_OPERACAO_ONLINE | VARCHAR2 | Y |  |
| 109 | SN_SMS_ENVIADO | CHAR | Y |  |
| 110 | DS_LAUDO_RTF | CLOB | Y |  |
| 111 | DS_LAUDO_TXT | CLOB | Y |  |
| 112 | DS_LAUDO_HTML | CLOB | Y |  |
| 113 | SN_NORMAL | CHAR | Y |  |
| 114 | ID_JUSTIFICATIVA | NUMBER | Y |  |
| 115 | DT_JUSTIFICATIVA | DATE | Y |  |
| 116 | DS_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 117 | ID_USUARIO_JUSTIFICATIVA | NUMBER | Y |  |
| 118 | NM_USUARIO_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 119 | DS_LEITO_HIS | VARCHAR2 | Y |  |
| 120 | DS_REGIAO_EXAMINADA | VARCHAR2 | Y |  |
| 121 | SN_AGRUPAR_IMAGEM | CHAR | Y |  |
| 122 | SN_AGRUPAR_LAUDO | CHAR | Y |  |
| 123 | ID_TIPO_EXAME | NUMBER | Y |  |
| 124 | NM_TIPO_EXAME | VARCHAR2 | Y |  |
| 125 | NM_PROCEDIMENTO | VARCHAR2 | Y |  |
| 126 | ID_PROCEDIMENTO_UNIDADE | NUMBER | N |  |
| 127 | ID_PROCEDIMENTO | NUMBER | N |  |
| 128 | NR_PRAZO_ENTREGA | NUMBER | Y |  |
| 129 | CD_PROCEDIMENTO_HIS | VARCHAR2 | Y |  |
| 130 | DS_LAYOUT_IMPRESSAO | VARCHAR2 | Y |  |
| 131 | ID_MEDICO_PADRAO | NUMBER | Y |  |
| 132 | ID_SALA_PADRAO | NUMBER | Y |  |
| 133 | SN_REVISAO_AUTOMATICA | CHAR | Y |  |
| 134 | SN_DICOM | CHAR | Y |  |
| 135 | SN_EXECUTANTE_REVISOR | CHAR | Y |  |
| 136 | SN_LAUDO_LOTE_PENDENTE | CHAR | Y |  |
| 137 | SN_ENTREGA_LAUDO_CD | CHAR | Y |  |
| 138 | SN_IMPRESSAO_LAUDO_ENTREGA | CHAR | Y |  |
| 139 | SN_LIBERAR_LOTE_LAUDO_REV_PEND | CHAR | Y |  |
| 140 | SN_TEXTO_PADRAO_AUTOMATICO | CHAR | Y |  |
| 141 | SN_JUSTIFICATIVA_LAUDO | CHAR | Y |  |
| 142 | SN_ENDOSCOPIA | CHAR | Y |  |
| 143 | CD_MODALIDADE | VARCHAR2 | Y |  |
| 144 | NR_DIAS | NUMBER | Y |  |
| 145 | SN_ATRASADO | CHAR | Y |  |
| 146 | TP_SEXO_REVISOR | VARCHAR2 | Y |  |
| 147 | TP_SEXO_EXECUTANTE | VARCHAR2 | Y |  |
| 148 | ID_SISTEMA | NUMBER | Y |  |
| 149 | CD_EXAME_HIS | VARCHAR2 | Y |  |
| 150 | ID_MEDICO_DITADO | NUMBER | Y |  |
| 151 | NM_MEDICO_DITADO | VARCHAR2 | Y |  |
| 152 | DS_CRM_DITADO | VARCHAR2 | Y |  |
| 153 | CD_HIS_DITADO | VARCHAR2 | Y |  |
| 154 | ID_CLASSIFICACAO_RISCO | NUMBER | Y |  |
| 155 | ID_SETOR_EXECUTANTE | NUMBER | Y |  |
| 156 | ID_SETOR_SOLICITANTE | NUMBER | Y |  |
| 157 | ID_ETAPA_ATUAL | NUMBER | Y |  |
| 158 | NM_ETAPA | VARCHAR2 | Y |  |
| 159 | DS_ALERTA_ACORDO | VARCHAR2 | Y |  |
| 160 | POSSUICOMENTARIO | CHAR | Y |  |
| 161 | ID_TIPO_PRIORIDADE | NUMBER | Y |  |
| 162 | SN_PRESCRICAO_URGENTE | CHAR | Y |  |
| 163 | SN_EXAME_CONCLUIDO | CHAR | Y |  |
| 164 | CD_STUDY_UID | VARCHAR2 | Y |  |
| 165 | CD_TIPO_VIEWER | NUMBER | Y |  |
| 166 | DT_ANAMNESE | DATE | Y |  |
| 167 | ID_CONVENIO_UNIDADE | NUMBER | Y |  |
| 168 | PACIENTE_IDADE_EXTENSO | VARCHAR2 | Y |  |
| 169 | SN_STUDY_PED | CHAR | N |  |
| 170 | TP_INSUMO | NUMBER | Y |  |
| 171 | DS_PATH_RELATORIO_FORMULA | VARCHAR2 | Y |  |
| 172 | SN_EXIGIR_JUST_LAU_SEM_IMG | CHAR | Y |  |
| 173 | ID_REPORT | NUMBER | Y |  |
| 174 | SN_TERCEIRA_OPINIAO | CHAR | Y |  |
| 175 | NM_SETOR_EXECUTANTE | VARCHAR2 | Y |  |
| 176 | ID_EXAME_PEDIDO_PAI | NUMBER | Y |  |
| 177 | SN_PANICO | CHAR | N |  |
| 178 | DT_CERTIFICADO | DATE | Y |  |
| 179 | ID_USUARIO_MARCAR_CERTIFICADO | NUMBER | Y |  |
| 180 | NM_USUARIO_MARCAR_CERTIFICADO | VARCHAR2 | Y |  |
| 181 | NM_SISTEMA | VARCHAR2 | Y |  |
| 182 | SN_PROVISORIO | CHAR | N |  |
| 183 | NM_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 184 | DT_DISTRIBUICAO_EXECUTANTE | DATE | Y |  |
| 185 | DT_DISTRIBUICAO_REVISOR | DATE | Y |  |
| 186 | ID_USU_DISTRIBUICAO_EXECUTANTE | NUMBER | Y |  |
| 187 | ID_USU_DISTRIBUICAO_REVISOR | NUMBER | Y |  |
| 188 | SN_DISTRIBUICAO_EXECUTANTE | CHAR | N |  |
| 189 | SN_DISTRIBUICAO_REVISOR | CHAR | N |  |
| 190 | SN_VISUALIZADO_PORTAL | CHAR | N |  |
| 191 | NM_TECNICO_RESPONSAVEL | VARCHAR2 | Y |  |
| 192 | QT_IMAGEM_PACS | NUMBER | Y |  |
| 193 | DT_NAO_CONFORMIDADE | DATE | Y |  |
| 194 | DS_NAO_CONFORMIDADE | VARCHAR2 | Y |  |
| 195 | ID_USU_NAO_CONFORMIDADE | NUMBER | Y |  |
| 196 | DT_ATUALIZACAO_ERRATA | DATE | Y |  |
| 197 | ID_DOCUMENTO_CARTORIO | NUMBER | Y |  |
| 198 | NM_UNIDADE_ORIGEM | VARCHAR2 | Y |  |
| 199 | ID_UNIDADE_EXECUTANTE | NUMBER | Y |  |
| 200 | DT_TRANSFERENCIA_UNIDADE | DATE | Y |  |
| 201 | NR_CPF_CERT_DIGITAL | VARCHAR2 | Y |  |
| 202 | NM_CERT_DIGITAL | VARCHAR2 | Y |  |
| 203 | NM_FORNECEDOR_CERT_DIGITAL | VARCHAR2 | Y |  |
| 204 | DT_FORNECEDOR_CERT_DIGITAL | DATE | Y |  |
| 205 | DT_NAO_CONFORMIDADE_RESOLVIDA | DATE | Y |  |
| 206 | DS_INCONFORMIDADE | VARCHAR2 | Y |  |
| 207 | NM_SOCIAL_PACIENTE | VARCHAR2 | Y |  |
| 208 | CD_STATUS_IA | NUMBER | Y |  |
| 209 | ACORDO | VARCHAR2 | Y |  |
| 210 | DS_PANICO | VARCHAR2 | Y |  |
| 211 | DS_CPF | VARCHAR2 | Y |  |

---

## IDCECRER.RS_VW_EXAME_PEDIDO_QUE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NM_UNIDADE | VARCHAR2 | Y |  |
| 2 | CD_UNIDADE_HIS | VARCHAR2 | Y |  |
| 3 | ID_MEDICO_EXECUTANTE_PADRAO | NUMBER | Y |  |
| 4 | SN_BLOQUEIO_CONTA_FECHADA | CHAR | N |  |
| 5 | DS_CERTIFICACAO_DIGITAL | VARCHAR2 | Y |  |
| 6 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 7 | ID_PEDIDO_EXAME | NUMBER | N |  |
| 8 | ID_MEDICO_SOLICITANTE | NUMBER | Y |  |
| 9 | NM_MEDICO_SOLICITANTE | VARCHAR2 | Y |  |
| 10 | DS_CRM_SOLICITANTE | VARCHAR2 | Y |  |
| 11 | DS_TELEFONE_SOLICITANTE | VARCHAR2 | Y |  |
| 12 | DS_EMAIL_SOLICITANTE | VARCHAR2 | Y |  |
| 13 | ID_PACIENTE | NUMBER | Y |  |
| 14 | ID_PACIENTE_CONSOLIDADO | NUMBER | Y |  |
| 15 | NM_PACIENTE | VARCHAR2 | Y |  |
| 16 | TP_SEXO | CHAR | Y |  |
| 17 | DS_TELEFONE | VARCHAR2 | Y |  |
| 18 | DT_NASCIMENTO | DATE | Y |  |
| 19 | DS_EMAIL | VARCHAR2 | Y |  |
| 20 | DS_MATRICULA | VARCHAR2 | Y |  |
| 21 | IDADE | NUMBER | Y |  |
| 22 | NR_PRONTUARIO_HOSPITALAR | VARCHAR2 | Y |  |
| 23 | CD_PACIENTE_HIS | VARCHAR2 | Y |  |
| 24 | DS_ENDERECO | VARCHAR2 | Y |  |
| 25 | DS_BAIRRO | VARCHAR2 | Y |  |
| 26 | DS_CIDADE | VARCHAR2 | Y |  |
| 27 | DS_UF | VARCHAR2 | Y |  |
| 28 | DS_CEP | VARCHAR2 | Y |  |
| 29 | DS_FAX | VARCHAR2 | Y |  |
| 30 | SN_EMAIL | CHAR | Y |  |
| 31 | SN_SMS | CHAR | Y |  |
| 32 | NM_MAE | VARCHAR2 | Y |  |
| 33 | NM_PAI | VARCHAR2 | Y |  |
| 34 | ID_CONVENIO | NUMBER | Y |  |
| 35 | ID_UNIDADE | NUMBER | Y |  |
| 36 | ID_UNIDADE_ORIGEM | NUMBER | Y |  |
| 37 | NR_GUIA_HIS | VARCHAR2 | Y |  |
| 38 | NM_CONVENIO_UNIDADE | VARCHAR2 | Y |  |
| 39 | SN_PARCEIRO | CHAR | Y |  |
| 40 | ID_MEDICO_EXECUTANTE | NUMBER | Y |  |
| 41 | NM_MEDICO_EXECUTANTE | VARCHAR2 | Y |  |
| 42 | DS_CRM_EXECUTANTE | VARCHAR2 | Y |  |
| 43 | CD_HIS_EXECUTANTE | VARCHAR2 | Y |  |
| 44 | ID_MEDICO_REVISOR | NUMBER | Y |  |
| 45 | NM_MEDICO_REVISOR | VARCHAR2 | Y |  |
| 46 | DS_CRM_REVISOR | VARCHAR2 | Y |  |
| 47 | CD_HIS_REVISOR | VARCHAR2 | Y |  |
| 48 | ID_MEDICO_REVISOR_FINAL | NUMBER | Y |  |
| 49 | NM_MEDICO_REVISOR_FINAL | VARCHAR2 | Y |  |
| 50 | DS_CRM_REVISOR_FINAL | VARCHAR2 | Y |  |
| 51 | CD_HIS_REVISOR_FINAL | VARCHAR2 | Y |  |
| 52 | ID_DIAGNOSTICO_RADIO | NUMBER | Y |  |
| 53 | NM_DIAGNOSTICO_RADIO | CHAR | Y |  |
| 54 | ID_DIAGNOSTICO_CLINICO | NUMBER | Y |  |
| 55 | NM_DIAGNOSTICO_CLINICO | CHAR | Y |  |
| 56 | ID_DIAGNOSTICO_CIRURGICO | NUMBER | Y |  |
| 57 | NM_DIAGNOSTICO_CIRURGICO | CHAR | Y |  |
| 58 | ID_SALA | NUMBER | Y |  |
| 59 | NM_SALA | VARCHAR2 | Y |  |
| 60 | DT_CADASTRO | DATE | N |  |
| 61 | DT_ALTERACAO | DATE | Y |  |
| 62 | DT_STUDY | DATE | Y |  |
| 63 | ID_EXAME_UNIDADE | NUMBER | Y |  |
| 64 | NM_EXAME_UNIDADE | VARCHAR2 | Y |  |
| 65 | ID_EXAME | NUMBER | N |  |
| 66 | NM_EXAME | VARCHAR2 | Y |  |
| 67 | CD_CBHPM | VARCHAR2 | Y |  |
| 68 | ID_USUARIO_INCLUSAO | NUMBER | Y |  |
| 69 | NM_USUARIO_INCLUSAO | VARCHAR2 | Y |  |
| 70 | ID_USUARIO_ALTERACAO | NUMBER | Y |  |
| 71 | NM_USUARIO_ALTERACAO | VARCHAR2 | Y |  |
| 72 | DT_DUM | DATE | Y |  |
| 73 | CD_ATENDIMENTO_HIS | VARCHAR2 | Y |  |
| 74 | CD_PEDIDO_HIS | VARCHAR2 | Y |  |
| 75 | CD_ITEM_PEDIDO_HIS | VARCHAR2 | Y |  |
| 76 | ID_ORIGEM_ATENDIMENTO | NUMBER | Y |  |
| 77 | CD_STATUS | CHAR | Y |  |
| 78 | DS_STATUS | VARCHAR2 | Y |  |
| 79 | ID_SETOR | NUMBER | Y |  |
| 80 | NM_SETOR | VARCHAR2 | Y |  |
| 81 | ID_USUARIO_ENTRADA_EXAME | NUMBER | Y |  |
| 82 | NM_USUARIO_ENTRADA_EXAME | VARCHAR2 | Y |  |
| 83 | ID_USUARIO_SAIDA_EXAME | NUMBER | Y |  |
| 84 | NM_USUARIO_SAIDA_EXAME | VARCHAR2 | Y |  |
| 85 | DT_ENTRADA_EXAME | DATE | Y |  |
| 86 | DT_SAIDA_EXAME | DATE | Y |  |
| 87 | NR_ALTURA | NUMBER | Y |  |
| 88 | NR_PESO | NUMBER | Y |  |
| 89 | SN_PENDENTE | CHAR | Y |  |
| 90 | DT_FINALIZACAO | DATE | Y |  |
| 91 | DT_LAUDADO | DATE | Y |  |
| 92 | DT_PEDIDO | DATE | Y |  |
| 93 | DT_IMPRESSO | DATE | Y |  |
| 94 | DT_ASSINADO | DATE | Y |  |
| 95 | DT_DIGITADO | DATE | Y |  |
| 96 | DT_DITADO | DATE | Y |  |
| 97 | DT_REVISADO | DATE | Y |  |
| 98 | DT_REVISADO_FINAL | DATE | Y |  |
| 99 | DT_ENTREGA | DATE | Y |  |
| 100 | DT_PREVISAO_ENTREGA | DATE | Y |  |
| 101 | NM_ACOMODACAO_HIS | VARCHAR2 | Y |  |
| 102 | NM_LOCAL_ENTREGA_HIS | VARCHAR2 | Y |  |
| 103 | NM_INDICACAO_HIS | VARCHAR2 | Y |  |
| 104 | SN_MIDIA_RESULTADO | CHAR | Y |  |
| 105 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 106 | ID_USUARIO_LIBERACAO | NUMBER | Y |  |
| 107 | NM_USUARIO_LIBERACAO | VARCHAR2 | Y |  |
| 108 | ID_USUARIO_ONLINE | NUMBER | Y |  |
| 109 | NM_USUARIO_ONLINE | VARCHAR2 | Y |  |
| 110 | DS_OPERACAO_ONLINE | VARCHAR2 | Y |  |
| 111 | SN_SMS_ENVIADO | CHAR | Y |  |
| 112 | DS_LAUDO_RTF | CLOB | Y |  |
| 113 | DS_LAUDO_TXT | CLOB | Y |  |
| 114 | DS_LAUDO_HTML | CLOB | Y |  |
| 115 | SN_NORMAL | CHAR | Y |  |
| 116 | ID_JUSTIFICATIVA | NUMBER | Y |  |
| 117 | DT_JUSTIFICATIVA | DATE | Y |  |
| 118 | DS_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 119 | ID_USUARIO_JUSTIFICATIVA | NUMBER | Y |  |
| 120 | NM_USUARIO_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 121 | DS_LEITO_HIS | VARCHAR2 | Y |  |
| 122 | DS_REGIAO_EXAMINADA | VARCHAR2 | Y |  |
| 123 | SN_AGRUPAR_IMAGEM | CHAR | Y |  |
| 124 | SN_AGRUPAR_LAUDO | CHAR | Y |  |
| 125 | ID_TIPO_EXAME | NUMBER | Y |  |
| 126 | NM_TIPO_EXAME | VARCHAR2 | Y |  |
| 127 | NM_PROCEDIMENTO | VARCHAR2 | Y |  |
| 128 | ID_PROCEDIMENTO_UNIDADE | NUMBER | N |  |
| 129 | ID_PROCEDIMENTO | NUMBER | N |  |
| 130 | NR_PRAZO_ENTREGA | NUMBER | Y |  |
| 131 | CD_PROCEDIMENTO_HIS | VARCHAR2 | Y |  |
| 132 | DS_LAYOUT_IMPRESSAO | VARCHAR2 | Y |  |
| 133 | ID_MEDICO_PADRAO | NUMBER | Y |  |
| 134 | ID_SALA_PADRAO | NUMBER | Y |  |
| 135 | SN_REVISAO_AUTOMATICA | CHAR | Y |  |
| 136 | SN_DICOM | CHAR | Y |  |
| 137 | SN_EXECUTANTE_REVISOR | CHAR | Y |  |
| 138 | SN_LAUDO_LOTE_PENDENTE | CHAR | Y |  |
| 139 | SN_ENTREGA_LAUDO_CD | CHAR | Y |  |
| 140 | SN_IMPRESSAO_LAUDO_ENTREGA | CHAR | Y |  |
| 141 | SN_LIBERAR_LOTE_LAUDO_REV_PEND | CHAR | Y |  |
| 142 | SN_TEXTO_PADRAO_AUTOMATICO | CHAR | Y |  |
| 143 | SN_JUSTIFICATIVA_LAUDO | CHAR | Y |  |
| 144 | SN_ENDOSCOPIA | CHAR | Y |  |
| 145 | CD_MODALIDADE | VARCHAR2 | Y |  |
| 146 | NR_DIAS | NUMBER | Y |  |
| 147 | SN_ATRASADO | CHAR | Y |  |
| 148 | TP_SEXO_REVISOR | VARCHAR2 | Y |  |
| 149 | TP_SEXO_EXECUTANTE | VARCHAR2 | Y |  |
| 150 | ID_SISTEMA | NUMBER | Y |  |
| 151 | CD_EXAME_HIS | VARCHAR2 | Y |  |
| 152 | ID_MEDICO_DITADO | NUMBER | Y |  |
| 153 | NM_MEDICO_DITADO | VARCHAR2 | Y |  |
| 154 | DS_CRM_DITADO | VARCHAR2 | Y |  |
| 155 | CD_HIS_DITADO | VARCHAR2 | Y |  |
| 156 | ID_CLASSIFICACAO_RISCO | NUMBER | Y |  |
| 157 | ID_SETOR_EXECUTANTE | NUMBER | Y |  |
| 158 | ID_SETOR_SOLICITANTE | NUMBER | Y |  |
| 159 | ID_ETAPA_ATUAL | NUMBER | Y |  |
| 160 | NM_ETAPA | VARCHAR2 | Y |  |
| 161 | DS_ALERTA_ACORDO | VARCHAR2 | Y |  |
| 162 | POSSUICOMENTARIO | CHAR | Y |  |
| 163 | ID_TIPO_PRIORIDADE | NUMBER | Y |  |
| 164 | SN_PRESCRICAO_URGENTE | CHAR | Y |  |
| 165 | SN_EXAME_CONCLUIDO | CHAR | Y |  |
| 166 | CD_STUDY_UID | VARCHAR2 | Y |  |
| 167 | CD_TIPO_VIEWER | NUMBER | Y |  |
| 168 | DT_ANAMNESE | DATE | Y |  |
| 169 | ID_CONVENIO_UNIDADE | NUMBER | Y |  |
| 170 | PACIENTE_IDADE_EXTENSO | VARCHAR2 | Y |  |
| 171 | SN_STUDY_PED | CHAR | N |  |
| 172 | TP_INSUMO | NUMBER | Y |  |
| 173 | DS_PATH_RELATORIO_FORMULA | VARCHAR2 | Y |  |
| 174 | DS_LAUDO_PDF_MARCADAGUA | BLOB | Y |  |
| 175 | NM_SETOR_EXECUTANTE | VARCHAR2 | Y |  |
| 176 | SN_EXIGIR_JUST_LAU_SEM_IMG | CHAR | Y |  |
| 177 | SN_TERCEIRA_OPINIAO | CHAR | Y |  |
| 178 | ID_EXAME_PEDIDO_PAI | NUMBER | Y |  |
| 179 | SN_PANICO | CHAR | N |  |
| 180 | ID_JUSTIFICATIVA_IMAGEM | NUMBER | Y |  |
| 181 | DT_JUSTIFICATIVA_IMAGEM | DATE | Y |  |
| 182 | DS_JUSTIFICATIVA_IMAGEM | VARCHAR2 | Y |  |
| 183 | SN_PROVISORIO | CHAR | N |  |
| 184 | DT_CERTIFICADO | DATE | Y |  |
| 185 | ID_USUARIO_MARCAR_CERTIFICADO | NUMBER | Y |  |
| 186 | NM_USUARIO_MARCAR_CERTIFICADO | VARCHAR2 | Y |  |
| 187 | NM_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 188 | DT_DISTRIBUICAO_EXECUTANTE | DATE | Y |  |
| 189 | DT_DISTRIBUICAO_REVISOR | DATE | Y |  |
| 190 | ID_USU_DISTRIBUICAO_EXECUTANTE | NUMBER | Y |  |
| 191 | ID_USU_DISTRIBUICAO_REVISOR | NUMBER | Y |  |
| 192 | SN_DISTRIBUICAO_EXECUTANTE | CHAR | N |  |
| 193 | SN_DISTRIBUICAO_REVISOR | CHAR | N |  |
| 194 | NR_DIAS_EXPIRAR_ACAO_LAUDAR | NUMBER | N |  |
| 195 | SN_VISUALIZADO_PORTAL | CHAR | N |  |
| 196 | NM_TECNICO_RESPONSAVEL | VARCHAR2 | Y |  |
| 197 | QT_IMAGEM_PACS | NUMBER | Y |  |
| 198 | DT_NAO_CONFORMIDADE | DATE | Y |  |
| 199 | DS_NAO_CONFORMIDADE | VARCHAR2 | Y |  |
| 200 | ID_USU_NAO_CONFORMIDADE | NUMBER | Y |  |
| 201 | DT_ATUALIZACAO_ERRATA | DATE | Y |  |
| 202 | ID_DOCUMENTO_CARTORIO | NUMBER | Y |  |
| 203 | NM_UNIDADE_ORIGEM | VARCHAR2 | Y |  |
| 204 | ID_UNIDADE_EXECUTANTE | NUMBER | Y |  |
| 205 | DT_TRANSFERENCIA_UNIDADE | DATE | Y |  |
| 206 | NR_CPF_CERT_DIGITAL | VARCHAR2 | Y |  |
| 207 | NM_CERT_DIGITAL | VARCHAR2 | Y |  |
| 208 | NM_FORNECEDOR_CERT_DIGITAL | VARCHAR2 | Y |  |
| 209 | DT_FORNECEDOR_CERT_DIGITAL | DATE | Y |  |
| 210 | DT_NAO_CONFORMIDADE_RESOLVIDA | DATE | Y |  |
| 211 | DS_INCONFORMIDADE | VARCHAR2 | Y |  |
| 212 | NR_CNS | VARCHAR2 | Y |  |
| 213 | DS_CPF | VARCHAR2 | Y |  |
| 214 | DS_RG | VARCHAR2 | Y |  |
| 215 | NM_SOCIAL_PACIENTE | VARCHAR2 | Y |  |
| 216 | CD_STATUS_IA | NUMBER | Y |  |
| 217 | DS_PANICO | VARCHAR2 | Y |  |
| 218 | ID_MEDICO_ORIENTADOR | NUMBER | Y |  |
| 219 | NM_MEDICO_ORIENTADOR | VARCHAR2 | Y |  |
| 220 | DT_MEDICO_ORIENTADOR | DATE | Y |  |
| 221 | DT_LAUDADO_BR | VARCHAR2 | Y |  |
| 222 | DT_PEDIDO_BR | VARCHAR2 | Y |  |

---

## IDCECRER.RS_VW_EXAME_PEDIDO_SECUNDARIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME_PEDIDO_SECUNDARIO | NUMBER | N |  |
| 2 | ID_EXAME_PEDIDO | NUMBER | Y |  |
| 3 | ID_EXAME_UNIDADE | NUMBER | Y |  |
| 4 | DS_JUSTIFICATIVA_INCLUSAO | VARCHAR2 | Y |  |
| 5 | DS_JUSTIFICATIVA_CANCELAMENTO | VARCHAR2 | Y |  |
| 6 | DT_RETORNO | DATE | Y |  |
| 7 | DT_CADASTRO | DATE | Y |  |
| 8 | CD_ITEM_PEDIDO_HIS | VARCHAR2 | Y |  |
| 9 | CD_UNIDADE_HIS | VARCHAR2 | Y |  |
| 10 | NM_UNIDADE | VARCHAR2 | Y |  |
| 11 | CD_EXAME_HIS | VARCHAR2 | Y |  |
| 12 | NM_EXAME | VARCHAR2 | Y |  |
| 13 | NR_PRONTUARIO_HOSPITALAR | VARCHAR2 | Y |  |
| 14 | NM_PACIENTE | VARCHAR2 | Y |  |

---

## IDCECRER.RS_VW_EXAME_PEDIDO_SLINE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 2 | ID_UNIDADE | NUMBER | Y |  |
| 3 | CD_ITEM_PEDIDO_HIS | VARCHAR2 | Y |  |
| 4 | DT_ASSINADO | DATE | Y |  |
| 5 | TIPO_DOCUMENTO | CHAR | Y |  |
| 6 | TITULO | VARCHAR2 | Y |  |
| 7 | DESTINO | CHAR | Y |  |
| 8 | CHAVE_ACESSO | CHAR | Y |  |
| 9 | SENHA_ACESSO | CHAR | Y |  |
| 10 | COD_DOC | NUMBER | N |  |
| 11 | DT_REALIZACAO | DATE | Y |  |
| 12 | LAUDO_PDF | BLOB | Y |  |
| 13 | OPER_REGANS | VARCHAR2 | Y |  |
| 14 | OPER_CARTEIRA | VARCHAR2 | Y |  |
| 15 | COD_GUIA | VARCHAR2 | Y |  |
| 16 | OPER_EXAME | VARCHAR2 | Y |  |
| 17 | ID_MEDICO_EXECUTANTE | NUMBER | Y |  |
| 18 | DS_CRM_MEDICO_EXECUTANTE | VARCHAR2 | Y |  |
| 19 | ID_MEDICO_REVISOR | NUMBER | Y |  |
| 20 | DS_CRM_MEDICO_REVISOR | VARCHAR2 | Y |  |
| 21 | ID_MEDICO_REVISOR_FINAL | NUMBER | Y |  |
| 22 | DS_CRM_MEDICO_REVISOR_FINAL | VARCHAR2 | Y |  |
| 23 | ID_MEDICO_SOLICITANTE | NUMBER | Y |  |
| 24 | DS_CRM_MEDICO_SOLICITANTE | VARCHAR2 | Y |  |

---

## IDCECRER.RS_VW_EXAME_UNIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME | NUMBER | N |  |
| 2 | NM_EXAME | VARCHAR2 | Y |  |
| 3 | ID_TIPO_EXAME | NUMBER | Y |  |
| 4 | NM_TIPO_EXAME | VARCHAR2 | Y |  |
| 5 | ID_SISTEMA | NUMBER | Y |  |
| 6 | NM_SISTEMA | VARCHAR2 | Y |  |
| 7 | ID_EXAME_UNIDADE | NUMBER | N |  |
| 8 | NM_EXAME_UNIDADE | VARCHAR2 | Y |  |
| 9 | CD_EXAME_HIS | VARCHAR2 | Y |  |
| 10 | NM_EXAME_HIS | VARCHAR2 | Y |  |
| 11 | DT_CADASTRO | DATE | Y |  |
| 12 | ID_UNIDADE | NUMBER | Y |  |
| 13 | NM_CBHPM | VARCHAR2 | Y |  |
| 14 | CD_CBHPM | VARCHAR2 | Y |  |
| 15 | NR_TEMPO_MEDIO | NUMBER | Y |  |
| 16 | DS_TEXTO_LAUDO_PADRAO | CLOB | Y |  |
| 17 | DS_PREPARO | VARCHAR2 | Y |  |
| 18 | DS_RESTRICAO | VARCHAR2 | Y |  |
| 19 | NR_PRAZO_ENTREGA | NUMBER | Y |  |
| 20 | SN_AGRUPAR_LAUDO | CHAR | Y |  |
| 21 | SN_AGRUPAR_IMAGEM | CHAR | Y |  |
| 22 | DS_PROTOCOLO_MEDICO | CLOB | Y |  |
| 23 | DS_PROTOCOLO_TECNICO | CLOB | Y |  |
| 24 | ID_USUARIO | NUMBER | Y |  |
| 25 | VL_EXAME_PLANTAO | NUMBER | Y |  |
| 26 | VL_EXAME_TELE | NUMBER | Y |  |
| 27 | DT_ALTERACAO | DATE | Y |  |
| 28 | NM_PROCEDIMENTO | VARCHAR2 | Y |  |
| 29 | ID_PROCEDIMENTO_UNIDADE | NUMBER | N |  |
| 30 | ID_PROCEDIMENTO | NUMBER | N |  |
| 31 | CD_PROCEDIMENTO_HIS | VARCHAR2 | Y |  |
| 32 | DS_LAYOUT_IMPRESSAO | VARCHAR2 | Y |  |
| 33 | ID_MEDICO_PADRAO | NUMBER | Y |  |
| 34 | ID_SALA | NUMBER | Y |  |
| 35 | SN_REVISAO_AUTOMATICA | CHAR | Y |  |
| 36 | SN_DICOM | CHAR | Y |  |
| 37 | SN_EXECUTANTE_REVISOR | CHAR | Y |  |
| 38 | SN_LAUDO_LOTE_PENDENTE | CHAR | Y |  |
| 39 | SN_ENTREGA_LAUDO_CD | CHAR | Y |  |
| 40 | SN_IMPRESSAO_LAUDO_ENTREGA | CHAR | Y |  |
| 41 | SN_LIBERAR_LOTE_LAUDO_REV_PEND | CHAR | Y |  |
| 42 | SN_TEXTO_PADRAO_AUTOMATICO | CHAR | Y |  |
| 43 | SN_JUSTIFICATIVA_LAUDO | CHAR | Y |  |
| 44 | SN_ENDOSCOPIA | CHAR | Y |  |
| 45 | CD_MODALIDADE | VARCHAR2 | Y |  |
| 46 | CD_UNIDADE_HIS | VARCHAR2 | Y |  |
| 47 | VL_EXAME | NUMBER | Y |  |

---

## IDCECRER.RS_VW_EXA_ANTERIORES_LAU_WEB

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 2 | DT_CADASTRO | DATE | N |  |
| 3 | DT_REVISADO | DATE | Y |  |
| 4 | CD_ITEM_PEDIDO_HIS | VARCHAR2 | Y |  |
| 5 | NM_EXAME_UNIDADE | VARCHAR2 | Y |  |
| 6 | NR_PRONTUARIO_HOSPITALAR | VARCHAR2 | Y |  |
| 7 | ID_PROCEDIMENTO_UNIDADE | NUMBER | N |  |

---

## IDCECRER.RS_VW_EXA_ATRASADOS_PROC

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 2 | CD_ITEM_PEDIDO_HIS | VARCHAR2 | Y |  |
| 3 | CD_PEDIDO_HIS | VARCHAR2 | Y |  |
| 4 | SN_DICOM | CHAR | Y |  |
| 5 | ID_PROCEDIMENTO | NUMBER | N |  |
| 6 | NM_PROCEDIMENTO | VARCHAR2 | Y |  |
| 7 | DT_CADASTRO | DATE | N |  |
| 8 | DT_STUDY | DATE | Y |  |
| 9 | DT_LAUDADO | DATE | Y |  |
| 10 | DT_ENTRADA_EXAME | DATE | Y |  |
| 11 | DT_SAIDA_EXAME | DATE | Y |  |
| 12 | NR_PRAZO_ENTREGA_ORIG_ATEND | NUMBER | Y |  |
| 13 | NR_PRAZO_ENTREGA_LEGADO | NUMBER | Y |  |
| 14 | DT_PREVISAO_ENTREGA | DATE | Y |  |
| 15 | SN_ATRASADO_METD_ORIG | CHAR | Y |  |
| 16 | SN_ATRASADO_METD_ATUAL | CHAR | Y |  |

---

## IDCECRER.RS_VW_GRAF_ANA_PROC

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_PEDIDO_EXAME | NUMBER | N |  |
| 2 | ID_UNIDADE | NUMBER | Y |  |
| 3 | DT_PEDIDO_HIS | DATE | Y |  |
| 4 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 5 | ID_EXAME_UNIDADE | NUMBER | Y |  |
| 6 | NM_PROCEDIMENTO | VARCHAR2 | Y |  |
| 7 | ID_PROCEDIMENTO_UNIDADE | NUMBER | Y |  |
| 8 | ID_PROCEDIMENTO | NUMBER | Y |  |
| 9 | DT_LAUDADO | DATE | Y |  |

---

## IDCECRER.RS_VW_GRAF_ANA_PROC_N

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_PEDIDO_EXAME | NUMBER | N |  |
| 2 | ID_UNIDADE | NUMBER | Y |  |
| 3 | DT_PEDIDO_HIS | DATE | Y |  |
| 4 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 5 | ID_EXAME_UNIDADE | NUMBER | N |  |
| 6 | NM_PROCEDIMENTO | VARCHAR2 | Y |  |
| 7 | ID_PROCEDIMENTO_UNIDADE | NUMBER | N |  |
| 8 | ID_PROCEDIMENTO | NUMBER | N |  |

---

## IDCECRER.RS_VW_HISTORICO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_HISTORICO | NUMBER | N |  |
| 2 | ID_UNIDADE | NUMBER | Y |  |
| 3 | DS_TIPO_HISTORICO | VARCHAR2 | Y |  |
| 4 | ID_EXAME_PEDIDO | NUMBER | Y |  |
| 5 | ID_MEDICO_EXECUTANTE | NUMBER | Y |  |
| 6 | ID_MEDICO_REVISOR | NUMBER | Y |  |
| 7 | ID_MEDICO_REVISOR_FINAL | NUMBER | Y |  |
| 8 | DT_FINALIZACAO | DATE | Y |  |
| 9 | DT_LAUDADO | DATE | N |  |
| 10 | DT_PEDIDO | DATE | Y |  |
| 11 | DT_IMPRESSO | DATE | Y |  |
| 12 | DT_ASSINADO | DATE | N |  |
| 13 | DT_DIGITADO | DATE | Y |  |
| 14 | DT_REVISADO | DATE | N |  |
| 15 | DT_REVISADO_FINAL | DATE | Y |  |
| 16 | DT_ENTREGA | DATE | Y |  |
| 17 | DS_LAUDO_TXT | CLOB | Y |  |
| 18 | DS_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 19 | ID_USUARIO | NUMBER | Y |  |
| 20 | NM_USUARIO | VARCHAR2 | Y |  |
| 21 | DT_CADASTRO | DATE | N |  |
| 22 | DT_ALTERACAO | DATE | Y |  |
| 23 | NM_PACIENTE | VARCHAR2 | Y |  |
| 24 | NM_CONVENIO_UNIDADE | VARCHAR2 | Y |  |
| 25 | NM_PROCEDIMENTO | VARCHAR2 | Y |  |
| 26 | NM_MEDICO_SOLICITANTE | VARCHAR2 | Y |  |
| 27 | NM_TIPO_EXAME | VARCHAR2 | Y |  |
| 28 | ID_EXAME_UNIDADE | NUMBER | Y |  |
| 29 | NM_EXAME_UNIDADE | VARCHAR2 | Y |  |
| 30 | ID_PROCEDIMENTO_UNIDADE | NUMBER | N |  |
| 31 | ID_PROCEDIMENTO | NUMBER | N |  |
| 32 | QTDE_INC | NUMBER | Y |  |
| 33 | QTDE_ALT | NUMBER | Y |  |
| 34 | QTDE_LAU | NUMBER | Y |  |
| 35 | QTDE_REV | NUMBER | Y |  |
| 36 | NM_MEDICO_EXECUTANTE | VARCHAR2 | Y |  |
| 37 | NM_MEDICO_REVISOR | VARCHAR2 | Y |  |
| 38 | NM_MEDICO_REVISOR_FINAL | VARCHAR2 | Y |  |
| 39 | DS_IP_MAQUINA | VARCHAR2 | Y |  |
| 40 | NM_MAQUINA | VARCHAR2 | Y |  |
| 41 | DS_LAUDO_PDF | BLOB | Y |  |
| 42 | ID_UNIDADE_EXECUTANTE | NUMBER | Y |  |
| 43 | NM_UNIDADE_EXECUTANTE | VARCHAR2 | Y |  |
| 44 | NM_UNIDADE_ORIGEM | VARCHAR2 | Y |  |
| 45 | DS_PANICO | VARCHAR2 | Y |  |
| 46 | DT_CADASTRO_PANICO | DATE | Y |  |
| 47 | NM_CONTATO_PANICO | VARCHAR2 | Y |  |
| 48 | DS_COMENTARIO | VARCHAR2 | Y |  |

---

## IDCECRER.RS_VW_INTEGRA_MONITOR_PEDIDOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DS_ENTIDADE | VARCHAR2 | Y |  |
| 2 | ENTRADASAIDA | VARCHAR2 | Y |  |
| 3 | ID_INTEGRACAO | NUMBER | Y |  |
| 4 | DT_CADASTRO | DATE | Y |  |
| 5 | TP_MOVIMENTO | VARCHAR2 | Y |  |
| 6 | TP_REGISTRO | VARCHAR2 | Y |  |
| 7 | TP_INTEGRACAO | VARCHAR2 | Y |  |
| 8 | DT_INTEGRACAO | DATE | Y |  |
| 9 | DS_ERRO | VARCHAR2 | Y |  |
| 10 | CD_UNIDADE | VARCHAR2 | Y |  |
| 11 | CD_CHAVE | VARCHAR2 | Y |  |
| 12 | DS_CHAVE | VARCHAR2 | Y |  |
| 13 | ID_FORNECEDOR | NUMBER | Y |  |
| 14 | DS_FORNECEDOR | VARCHAR2 | Y |  |

---

## IDCECRER.RS_VW_LAYOUT_CUSTOMIZADO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 2 | DT_LAUDADO_BR | VARCHAR2 | Y |  |
| 3 | DT_PEDIDO_BR | VARCHAR2 | Y |  |
| 4 | DT_LAUDADO | DATE | Y |  |

---

## IDCECRER.RS_VW_LAYOUT_PADRAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 2 | NM_UNIDADE | VARCHAR2 | Y |  |
| 3 | NM_MEDICO_SOLICITANTE | VARCHAR2 | Y |  |
| 4 | DS_CRM_SOLICITANTE | VARCHAR2 | Y |  |
| 5 | NM_PACIENTE | VARCHAR2 | Y |  |
| 6 | TP_SEXO | CHAR | N |  |
| 7 | DT_NASCIMENTO | DATE | Y |  |
| 8 | DS_MATRICULA | VARCHAR2 | Y |  |
| 9 | IDADE | NUMBER | Y |  |
| 10 | NR_PRONTUARIO_HOSPITALAR | VARCHAR2 | Y |  |
| 11 | CD_PACIENTE_HIS | VARCHAR2 | Y |  |
| 12 | NM_MAE | VARCHAR2 | Y |  |
| 13 | NM_PAI | VARCHAR2 | Y |  |
| 14 | NR_GUIA_HIS | VARCHAR2 | Y |  |
| 15 | NM_CONVENIO_UNIDADE | VARCHAR2 | Y |  |
| 16 | ID_MEDICO_EXECUTANTE | NUMBER | Y |  |
| 17 | NM_MEDICO_EXECUTANTE | VARCHAR2 | Y |  |
| 18 | DS_CRM_EXECUTANTE | VARCHAR2 | Y |  |
| 19 | ID_MEDICO_REVISOR | NUMBER | Y |  |
| 20 | NM_MEDICO_REVISOR | VARCHAR2 | Y |  |
| 21 | DS_CRM_REVISOR | VARCHAR2 | Y |  |
| 22 | NM_SALA | VARCHAR2 | Y |  |
| 23 | DT_CADASTRO | DATE | N |  |
| 24 | NM_EXAME | VARCHAR2 | Y |  |
| 25 | CD_CBHPM | VARCHAR2 | Y |  |
| 26 | DT_DUM | DATE | Y |  |
| 27 | CD_ATENDIMENTO_HIS | VARCHAR2 | Y |  |
| 28 | CD_PEDIDO_HIS | VARCHAR2 | Y |  |
| 29 | CD_ITEM_PEDIDO_HIS | VARCHAR2 | Y |  |
| 30 | CD_STATUS | CHAR | Y |  |
| 31 | DS_STATUS | VARCHAR2 | Y |  |
| 32 | NM_SETOR | VARCHAR2 | Y |  |
| 33 | NR_ALTURA | NUMBER | Y |  |
| 34 | NR_PESO | NUMBER | Y |  |
| 35 | DT_PEDIDO | DATE | Y |  |
| 36 | DT_IMPRESSO | DATE | Y |  |
| 37 | DT_ASSINADO | DATE | Y |  |
| 38 | DT_REVISADO | DATE | Y |  |
| 39 | DT_ENTREGA | DATE | Y |  |
| 40 | NM_ACOMODACAO_HIS | VARCHAR2 | Y |  |
| 41 | NM_LOCAL_ENTREGA_HIS | VARCHAR2 | Y |  |
| 42 | NM_INDICACAO_HIS | VARCHAR2 | Y |  |
| 43 | DS_LEITO_HIS | VARCHAR2 | Y |  |
| 44 | CD_MODALIDADE | VARCHAR2 | Y |  |
| 45 | PACIENTE_IDADE_EXTENSO | VARCHAR2 | Y |  |
| 46 | NM_SETOR_EXECUTANTE | VARCHAR2 | Y |  |
| 47 | DT_CERTIFICADO | DATE | Y |  |
| 48 | NR_CPF_CERT_DIGITAL | VARCHAR2 | Y |  |
| 49 | NM_CERT_DIGITAL | VARCHAR2 | Y |  |
| 50 | NM_FORNECEDOR_CERT_DIGITAL | VARCHAR2 | Y |  |
| 51 | NR_CNS | VARCHAR2 | Y |  |
| 52 | DS_CPF | VARCHAR2 | Y |  |
| 53 | DS_RG | VARCHAR2 | Y |  |
| 54 | DS_ORGAO | VARCHAR2 | Y |  |
| 55 | NM_SOCIAL_PACIENTE | VARCHAR2 | Y |  |
| 56 | DS_ESPECIALIDADE_EXECUTANTE | VARCHAR2 | Y |  |
| 57 | RQE_MSOLICITANTE | NUMBER | Y |  |
| 58 | RQE_MEXECUTANTE | NUMBER | Y |  |
| 59 | RQE_MREVISOR | NUMBER | Y |  |
| 60 | DS_ESPECIALIDADE_REVISOR | VARCHAR2 | Y |  |
| 61 | DT_COLETA_HIS | DATE | Y |  |
| 62 | DT_FORNECEDOR_CERT_DIGITAL | DATE | Y |  |
| 63 | ID_EXECUTANTE_ANTERIOR | NUMBER | Y |  |
| 64 | NM_MEDICO_EXECUTANTE_ANT | VARCHAR2 | Y |  |
| 65 | DS_CRM_EXECUTANTE_ANT | VARCHAR2 | Y |  |
| 66 | TP_SEXO_EXECUTANTE_ANT | VARCHAR2 | Y |  |
| 67 | DS_ESPECIALIDADE_EXEC_ANT | VARCHAR2 | Y |  |
| 68 | ID_REVISOR_ANTERIOR | NUMBER | Y |  |
| 69 | NM_MEDICO_REVISOR_ANT | VARCHAR2 | Y |  |
| 70 | DS_CRM_REVISOR_ANT | VARCHAR2 | Y |  |
| 71 | TP_SEXO_REVISOR_ANT | VARCHAR2 | Y |  |
| 72 | DS_ESPECIALIDADE_REVISOR_ANT | VARCHAR2 | Y |  |

---

## IDCECRER.RS_VW_LEGADO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ACCESSIONNUMBER | VARCHAR2 | Y |  |
| 2 | STUDY_UID | VARCHAR2 | N |  |
| 3 | STUDYTIME | DATE | N |  |
| 4 | PATIENTID | VARCHAR2 | N |  |
| 5 | PATIENTNAME_DICOM | VARCHAR2 | Y |  |
| 6 | DATEOFBIRTH | DATE | Y |  |
| 7 | SEX | VARCHAR2 | Y |  |
| 8 | STUDYDESCRIPTION | VARCHAR2 | Y |  |
| 9 | DT_REVISADO | DATE | Y |  |
| 10 | NM_REVISOR | VARCHAR2 | Y |  |
| 11 | ID_LAUDO | NUMBER | N |  |
| 12 | DS_LAUDO | CLOB | Y |  |

---

## IDCECRER.RS_VW_MEDICO_UNIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_MEDICO_UNIDADE | NUMBER | N |  |
| 2 | CD_MEDICO_HIS | VARCHAR2 | Y |  |
| 3 | ID_STATUS_ORIGEM | NUMBER | Y |  |
| 4 | ID_UNIDADE | NUMBER | Y |  |
| 5 | ID_CONSELHO | NUMBER | Y |  |
| 6 | DS_CRM | VARCHAR2 | Y |  |
| 7 | ID_USUARIO_MEDICO | NUMBER | Y |  |
| 8 | SN_ASSINATURA_DIGITALIZADA | CHAR | Y |  |
| 9 | SN_ASSINATURA_DIGITAL | CHAR | Y |  |
| 10 | SN_REVISAO_AUTOMATICA | CHAR | Y |  |
| 11 | SN_MEDICO_REVISOR | CHAR | Y |  |
| 12 | SN_SENHA_ADMINISTRADOR | CHAR | Y |  |
| 13 | SN_FILME | CHAR | Y |  |
| 14 | ID_USUARIO | NUMBER | Y |  |
| 15 | DT_CADASTRO | DATE | N |  |
| 16 | DT_ALTERACAO | DATE | Y |  |
| 17 | NM_MEDICO | VARCHAR2 | Y |  |
| 18 | NM_REDUZIDO_MEDICO | VARCHAR2 | Y |  |
| 19 | DT_NASCIMENTO | DATE | Y |  |
| 20 | TP_SEXO | VARCHAR2 | Y |  |
| 21 | DS_ENDERECO | VARCHAR2 | Y |  |
| 22 | DS_CPF_CNPJ | VARCHAR2 | Y |  |
| 23 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 24 | DS_BAIRRO | VARCHAR2 | Y |  |
| 25 | DS_CIDADE | VARCHAR2 | Y |  |
| 26 | DS_UF | VARCHAR2 | Y |  |
| 27 | DS_CEP | VARCHAR2 | Y |  |
| 28 | DS_TELEFONE | VARCHAR2 | Y |  |
| 29 | DS_FAX | VARCHAR2 | Y |  |
| 30 | DS_EMAIL | VARCHAR2 | Y |  |
| 31 | DS_ESPECIALIDADES | VARCHAR2 | Y |  |
| 32 | NM_CONSELHO | VARCHAR2 | Y |  |
| 33 | STATUS | VARCHAR2 | Y |  |
| 34 | CD_UNIDADE_HIS | VARCHAR2 | Y |  |

---

## IDCECRER.RS_VW_MONITOR_ATIVIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DT_CADASTRO | DATE | N |  |
| 2 | DT_LAUDADO | DATE | Y |  |
| 3 | DT_REVISADO | DATE | Y |  |
| 4 | DT_ASSINADO | DATE | Y |  |
| 5 | DT_IMPRESSO | DATE | Y |  |
| 6 | DT_DIGITADO | DATE | Y |  |
| 7 | SN_PENDENTE | CHAR | Y |  |
| 8 | ID_PROCEDIMENTO_UNIDADE | NUMBER | N |  |

---

## IDCECRER.RS_VW_NUMERO_CDR_ANO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | LAU_ID | NUMBER | N |  |
| 2 | ANO | NUMBER | Y |  |
| 3 | MES | NUMBER | Y |  |

---

## IDCECRER.RS_VW_PACIENTE_UNIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_PACIENTE | NUMBER | N |  |
| 2 | ID_PACIENTE_CONSOLIDADO | NUMBER | Y |  |
| 3 | NM_PACIENTE | VARCHAR2 | Y |  |
| 4 | DT_NASCIMENTO | DATE | Y |  |
| 5 | TP_SEXO | CHAR | N |  |
| 6 | DS_ENDERECO | VARCHAR2 | Y |  |
| 7 | DS_BAIRRO | VARCHAR2 | Y |  |
| 8 | DS_CIDADE | VARCHAR2 | Y |  |
| 9 | DS_UF | VARCHAR2 | Y |  |
| 10 | DS_CEP | VARCHAR2 | Y |  |
| 11 | DS_TELEFONE | VARCHAR2 | Y |  |
| 12 | DS_FAX | VARCHAR2 | Y |  |
| 13 | DS_CPF | VARCHAR2 | Y |  |
| 14 | DS_EMAIL | VARCHAR2 | Y |  |
| 15 | DS_RG | VARCHAR2 | Y |  |
| 16 | DS_PACIENTE | VARCHAR2 | Y |  |
| 17 | MATRICULA | VARCHAR2 | Y |  |
| 18 | ALTURA | NUMBER | Y |  |
| 19 | PESO | NUMBER | Y |  |
| 20 | SN_SMS | CHAR | Y |  |
| 21 | SN_EMAIL | CHAR | Y |  |
| 22 | ID_PACIENTE_UNIDADE | NUMBER | N |  |
| 23 | ID_CONVENIO_PADRAO | NUMBER | Y |  |
| 24 | ID_UNIDADE | NUMBER | Y |  |
| 25 | NR_PRONTUARIO_HOSPITALAR | VARCHAR2 | Y |  |
| 26 | CD_PACIENTE_HIS | VARCHAR2 | Y |  |
| 27 | DT_CADASTRO | DATE | Y |  |
| 28 | DT_ALTERACAO | DATE | Y |  |
| 29 | ID_USUARIO | NUMBER | Y |  |
| 30 | NM_CONVENIO_UNIDADE | VARCHAR2 | Y |  |
| 31 | CD_UNIDADE_HIS | VARCHAR2 | Y |  |
| 32 | DT_TERMO_ACEITE | DATE | Y |  |

---

## IDCECRER.RS_VW_PAINEL_INFO_LAUDO_REMOTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 2 | DT_PEDIDO | DATE | Y |  |
| 3 | CD_ITEM_PEDIDO_HIS | VARCHAR2 | Y |  |
| 4 | DT_DUM | DATE | Y |  |
| 5 | DT_CERTIFICADO | DATE | Y |  |
| 6 | NM_UNIDADE | VARCHAR2 | Y |  |
| 7 | NM_PACIENTE | VARCHAR2 | Y |  |
| 8 | DT_NASCIMENTO | DATE | Y |  |
| 9 | NM_SOCIAL_PACIENTE | VARCHAR2 | Y |  |
| 10 | TP_SEXO | CHAR | N |  |
| 11 | NR_PRONTUARIO_HOSPITALAR | VARCHAR2 | Y |  |
| 12 | NM_MEDICO_SOLICITANTE | VARCHAR2 | Y |  |
| 13 | NM_EXAME_UNIDADE | VARCHAR2 | Y |  |
| 14 | ID_RISCO | NUMBER | Y |  |
| 15 | TP_STATUS | VARCHAR2 | Y |  |
| 16 | DT_PREVISAO_ENTREGA | DATE | Y |  |
| 17 | CD_ATENDIMENTO_HIS | VARCHAR2 | Y |  |
| 18 | CD_PEDIDO_HIS | VARCHAR2 | Y |  |
| 19 | DS_STATUS_CARTORIO | VARCHAR2 | Y |  |
| 20 | DT_STUDY | DATE | Y |  |
| 21 | ID_PACIENTE_CONSOLIDADO | NUMBER | N |  |
| 22 | ID_UNIDADE | NUMBER | N |  |
| 23 | IMAGEM | CHAR | Y |  |
| 24 | ID_MEDICO_REVISOR | NUMBER | Y |  |
| 25 | ID_MEDICO_EXECUTANTE | NUMBER | Y |  |

---

## IDCECRER.RS_VW_PEDIDO_EXAME_CD

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NM_PACIENTE | VARCHAR2 | Y |  |
| 2 | NM_MEDICO_SOLICITANTE | VARCHAR2 | Y |  |
| 3 | NM_CONVENIO_UNIDADE | VARCHAR2 | Y |  |
| 4 | NM_SETOR | VARCHAR2 | Y |  |
| 5 | NR_PRONTUARIO_HOSPITALAR | VARCHAR2 | Y |  |
| 6 | DT_NASCIMENTO | DATE | Y |  |
| 7 | ID_UNIDADE | NUMBER | Y |  |
| 8 | CD_ITEM_PEDIDO_HIS | VARCHAR2 | Y |  |
| 9 | CD_ATENDIMENTO_HIS | VARCHAR2 | Y |  |
| 10 | CD_PEDIDO_HIS | VARCHAR2 | Y |  |
| 11 | ID_CD | NUMBER | Y |  |
| 12 | DT_CADASTRO | DATE | Y |  |
| 13 | DT_GRAVACAO | DATE | Y |  |
| 14 | ID_PACIENTE_UNIDADE | NUMBER | Y |  |
| 15 | ID_ORIGEM_ATENDIMENTO | NUMBER | Y |  |
| 16 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 17 | DT_PEDIDO | DATE | N |  |
| 18 | DT_ASSINADO | DATE | Y |  |
| 19 | DT_IMPRESSO | DATE | Y |  |
| 20 | DT_LAUDADO | DATE | Y |  |
| 21 | DT_REVISADO | DATE | Y |  |
| 22 | DT_STUDY | DATE | Y |  |
| 23 | NM_EXAME_UNIDADE | VARCHAR2 | Y |  |
| 24 | NM_PROCEDIMENTO | VARCHAR2 | Y |  |
| 25 | NM_UNIDADE | VARCHAR2 | Y |  |
| 26 | SN_PENDENTE | CHAR | Y |  |
| 27 | DT_DIGITADO | DATE | Y |  |
| 28 | SN_STUDY_PED | CHAR | N |  |
| 29 | DT_ENTREGA | DATE | Y |  |
| 30 | DT_FINALIZACAO | DATE | Y |  |
| 31 | DS_CRM_SOLICITANTE | VARCHAR2 | Y |  |
| 32 | NM_MEDICO_EXECUTANTE | VARCHAR2 | Y |  |
| 33 | DS_CRM_EXECUTANTE | VARCHAR2 | Y |  |
| 34 | NM_MEDICO_REVISOR | VARCHAR2 | Y |  |
| 35 | DS_CRM_REVISOR | VARCHAR2 | Y |  |
| 36 | ID_PROCEDIMENTO_UNIDADE | NUMBER | N |  |
| 37 | CD_MODALIDADE | VARCHAR2 | Y |  |
| 38 | ID_PROCEDIMENTO | NUMBER | N |  |
| 39 | ID_PACIENTE | NUMBER | Y |  |
| 40 | NM_SOCIAL_PACIENTE | VARCHAR2 | Y |  |
| 41 | SN_ENTREGA_IMG_S_L_ASSINADO | CHAR | Y |  |
| 42 | ID_UNIDADE_PACS | NUMBER | Y |  |

---

## IDCECRER.RS_VW_PRAZO_ENTREGA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME_UNIDADE | NUMBER | N |  |
| 2 | ID_ORIGEM_ATENDIMENTO | NUMBER | N |  |
| 3 | NR_PRAZO_PROC | NUMBER | Y |  |
| 4 | NR_PRAZO_EXA | NUMBER | Y |  |
| 5 | NR_PRAZO | NUMBER | Y |  |

---

## IDCECRER.RS_VW_PRODUTIVIDADE_MEDICO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME_PEDIDO | NUMBER | Y |  |
| 2 | DT_CADASTRO | DATE | Y |  |
| 3 | ID_UNIDADE | NUMBER | Y |  |
| 4 | ID_PROCEDIMENTO | NUMBER | Y |  |
| 5 | NM_PROCEDIMENTO | VARCHAR2 | Y |  |
| 6 | ID_MEDICO_UNIDADE | NUMBER | Y |  |
| 7 | NM_MEDICO | VARCHAR2 | Y |  |
| 8 | ID_USUARIO | NUMBER | Y |  |
| 9 | NM_USUARIO | VARCHAR2 | Y |  |
| 10 | QT_LAUDADO | NUMBER | Y |  |
| 11 | QT_REVISADO | NUMBER | Y |  |
| 12 | ID_PROCEDIMENTO_UNIDADE | NUMBER | Y |  |

---

## IDCECRER.RS_VW_PRODUTO_UNIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_PRODUTO | NUMBER | N |  |
| 2 | DS_PRODUTO | VARCHAR2 | N |  |
| 3 | DS_ESPECIFICACAO | VARCHAR2 | Y |  |
| 4 | DS_PRODUTO_RESUMIDO | VARCHAR2 | N |  |
| 5 | SN_MEDICAMENTO | CHAR | N |  |
| 6 | ID_PRODUTO_UNIDADE | NUMBER | N |  |
| 7 | ID_UNIDADE | NUMBER | N |  |
| 8 | CD_PRODUTO_HIS | VARCHAR2 | Y |  |
| 9 | ID_USUARIO | NUMBER | N |  |
| 10 | DT_CADASTRO | DATE | N |  |
| 11 | DT_ALTERACAO | DATE | N |  |

---

## IDCECRER.RS_VW_REMOTE_CONTROLE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 2 | ID_EXAME_PEDIDO_PAI | NUMBER | Y |  |
| 3 | ID_PEDIDO_EXAME | NUMBER | N |  |
| 4 | ID_PACIENTE | NUMBER | N |  |
| 5 | ID_PACIENTE_CONSOLIDADO | NUMBER | N |  |
| 6 | DT_NASCIMENTO | DATE | Y |  |
| 7 | NR_PRONTUARIO_HOSPITALAR | VARCHAR2 | Y |  |
| 8 | CD_PACIENTE_HIS | VARCHAR2 | Y |  |
| 9 | ID_UNIDADE | NUMBER | N |  |
| 10 | ID_CONVENIO | NUMBER | Y |  |
| 11 | ID_MEDICO_SOLICITANTE | NUMBER | Y |  |
| 12 | DS_CRM_SOLICITANTE | VARCHAR2 | Y |  |
| 13 | ID_MEDICO_EXECUTANTE | NUMBER | Y |  |
| 14 | DS_CRM_EXECUTANTE | VARCHAR2 | Y |  |
| 15 | ID_MEDICO_REVISOR | NUMBER | Y |  |
| 16 | DS_CRM_REVISOR | VARCHAR2 | Y |  |
| 17 | ID_SALA | NUMBER | Y |  |
| 18 | DT_CADASTRO | DATE | N |  |
| 19 | DT_ALTERACAO | DATE | Y |  |
| 20 | ID_EXAME_UNIDADE | NUMBER | N |  |
| 21 | ID_EXAME | NUMBER | N |  |
| 22 | DT_DUM | DATE | Y |  |
| 23 | CD_ATENDIMENTO_HIS | VARCHAR2 | Y |  |
| 24 | CD_PEDIDO_HIS | VARCHAR2 | Y |  |
| 25 | CD_ITEM_PEDIDO_HIS | VARCHAR2 | Y |  |
| 26 | CD_STATUS_IA | NUMBER | Y |  |
| 27 | DS_STATUS | VARCHAR2 | Y |  |
| 28 | DT_ENTRADA_EXAME | DATE | Y |  |
| 29 | DT_SAIDA_EXAME | DATE | Y |  |
| 30 | SN_PENDENTE | CHAR | Y |  |
| 31 | SN_PROVISORIO | CHAR | N |  |
| 32 | SN_TERCEIRA_OPINIAO | CHAR | Y |  |
| 33 | DT_FINALIZACAO | DATE | Y |  |
| 34 | DT_LAUDADO | DATE | Y |  |
| 35 | DT_PEDIDO | DATE | Y |  |
| 36 | DT_IMPRESSO | DATE | Y |  |
| 37 | DT_ASSINADO | DATE | Y |  |
| 38 | DT_DIGITADO | DATE | Y |  |
| 39 | DT_DITADO | DATE | Y |  |
| 40 | DT_REVISADO | DATE | Y |  |
| 41 | DT_ENTREGA | DATE | Y |  |
| 42 | SN_VISUALIZADO_PORTAL | CHAR | N |  |
| 43 | ID_PROCEDIMENTO_UNIDADE | NUMBER | N |  |
| 44 | ID_PROCEDIMENTO | NUMBER | N |  |
| 45 | DT_REFAZER | DATE | Y |  |
| 46 | DT_ULT_SECUNDARIO | DATE | Y |  |
| 47 | DT_STUDY | DATE | Y |  |
| 48 | SN_JUSTIFICATIVA_LAUDO | CHAR | Y |  |
| 49 | ID_CLASSIFICACAO_RISCO | NUMBER | Y |  |
| 50 | ID_SETOR_EXECUTANTE | NUMBER | Y |  |
| 51 | CD_TIPO_VIEWER | NUMBER | Y |  |
| 52 | CD_STUDY_UID | VARCHAR2 | Y |  |
| 53 | SN_STUDY_PED | CHAR | N |  |
| 54 | ID_REPORT | NUMBER | Y |  |
| 55 | ID_TIPO_PRIORIDADE | NUMBER | Y |  |
| 56 | CD_MODALIDADE | VARCHAR2 | Y |  |
| 57 | ID_USUARIO_MARCAR_CERTIFICADO | NUMBER | Y |  |
| 58 | DT_CERTIFICADO | DATE | Y |  |
| 59 | SN_DISTRIBUICAO_EXECUTANTE | CHAR | N |  |
| 60 | SN_DISTRIBUICAO_REVISOR | CHAR | N |  |
| 61 | DT_NAO_CONFORMIDADE | DATE | Y |  |
| 62 | DT_ATUALIZACAO_ERRATA | DATE | Y |  |
| 63 | ID_DOCUMENTO_CARTORIO | NUMBER | Y |  |
| 64 | ID_UNIDADE_EXECUTANTE | NUMBER | N |  |
| 65 | DT_NAO_CONFORMIDADE_RESOLVIDA | DATE | Y |  |
| 66 | DT_COLETA_HIS | DATE | Y |  |
| 67 | SN_EXIGIR_FINALIZACAO_EXAME | CHAR | N |  |
| 68 | DT_TRANSFERENCIA_UNIDADE | DATE | Y |  |
| 69 | NR_DIAS_EXPIRAR_ACAO_LAUDAR | NUMBER | N |  |
| 70 | SN_EXECUTANTE_REVISOR | CHAR | Y |  |
| 71 | ID_ORIGEM_ATENDIMENTO | NUMBER | Y |  |
| 72 | NR_PRAZO | NUMBER | Y |  |
| 73 | DT_PREVISAO_ENTREGA | DATE | Y |  |
| 74 | SN_REGRA_DISTRIBUICAO | CHAR | N |  |
| 75 | ID_USUARIO_ONLINE | NUMBER | Y |  |
| 76 | NM_USUARIO_ONLINE | VARCHAR2 | Y |  |
| 77 | ID_JUSTIFICATIVA_IMAGEM | NUMBER | Y |  |
| 78 | DS_JUSTIFICATIVA_IMAGEM | VARCHAR2 | Y |  |
| 79 | ID_USU_NAO_CONFORMIDADE | NUMBER | Y |  |
| 80 | DS_NAO_CONFORMIDADE | VARCHAR2 | Y |  |
| 81 | ID_JUSTIFICATIVA | NUMBER | Y |  |
| 82 | DS_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 83 | ID_USUARIO_PARECER | NUMBER | Y |  |
| 84 | ID_USUARIO_ALTERACAO_PARECER | NUMBER | Y |  |
| 85 | DT_CADASTRO_PARECER | DATE | Y |  |
| 86 | DT_ACEITE_PARECER | DATE | Y |  |
| 87 | DT_ACEITE_LAUDO | DATE | Y |  |
| 88 | SN_EXIGIR_JUST_LAU_SEM_IMG | CHAR | N |  |
| 89 | SN_EXIGIR_PARECER | CHAR | Y |  |
| 90 | SN_EXIGIR_PREENCHIMENTO_BIRADS | CHAR | Y |  |
| 91 | SN_REVISAO_AUTOMATICA | CHAR | Y |  |
| 92 | SN_EXIGIR_BIRADS | CHAR | Y |  |
| 93 | SN_EXIGIR_LIRADS | CHAR | Y |  |
| 94 | SN_EXIGIR_PIRADS | CHAR | N |  |
| 95 | SN_EXIGIR_TIRADS | CHAR | Y |  |
| 96 | SN_BLOQUEIO_CANCELAMENTO | CHAR | Y |  |
| 97 | TEMPO_BLOQUEIO_CANCELAMENTO | NUMBER | Y |  |

---

## IDCECRER.RS_VW_TIPO_EXAME_UNIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_TIPO_EXAME | NUMBER | N |  |
| 2 | NM_TIPO_EXAME | VARCHAR2 | Y |  |
| 3 | DS_TIPO_EXAME | VARCHAR2 | Y |  |
| 4 | ID_PROCEDIMENTO_UNIDADE | NUMBER | N |  |
| 5 | ID_PROCEDIMENTO | NUMBER | N |  |
| 6 | DT_CADASTRO | DATE | N |  |
| 7 | DT_ALTERACAO | DATE | Y |  |
| 8 | ID_USUARIO | NUMBER | Y |  |
| 9 | NM_PROCEDIMENTO | VARCHAR2 | Y |  |
| 10 | DS_PROCEDIMENTO | VARCHAR2 | Y |  |
| 11 | CD_PROCEDIMENTO_HIS | VARCHAR2 | Y |  |
| 12 | DS_LAYOUT_IMPRESSAO | VARCHAR2 | Y |  |
| 13 | ID_MEDICO_PADRAO | NUMBER | Y |  |
| 14 | ID_SALA | NUMBER | Y |  |
| 15 | SN_REVISAO_AUTOMATICA | CHAR | Y |  |
| 16 | SN_DICOM | CHAR | Y |  |
| 17 | SN_EXECUTANTE_REVISOR | CHAR | Y |  |
| 18 | SN_LAUDO_LOTE_PENDENTE | CHAR | Y |  |
| 19 | SN_ENTREGA_LAUDO_CD | CHAR | Y |  |
| 20 | SN_IMPRESSAO_LAUDO_ENTREGA | CHAR | Y |  |
| 21 | SN_LIBERAR_LOTE_LAUDO_REV_PEND | CHAR | Y |  |
| 22 | SN_TEXTO_PADRAO_AUTOMATICO | CHAR | Y |  |
| 23 | SN_JUSTIFICATIVA_LAUDO | CHAR | Y |  |
| 24 | SN_ENDOSCOPIA | CHAR | Y |  |
| 25 | ID_UNIDADE | NUMBER | Y |  |
| 26 | CD_MODALIDADE | VARCHAR2 | Y |  |
| 27 | VL_PROCEDIMENTO | NUMBER | Y |  |

---

## IDCECRER.RS_VW_ULTIMOS_LAUDOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 2 | DT_CADASTRO | DATE | N |  |
| 3 | NM_EXAME_UNIDADE | VARCHAR2 | Y |  |
| 4 | ID_PACIENTE | NUMBER | N |  |
| 5 | ID_PACIENTE_UNIDADE | NUMBER | N |  |
| 6 | NM_PACIENTE | VARCHAR2 | Y |  |
| 7 | DT_REVISADO | DATE | Y |  |
| 8 | DS_LAUDO_RTF | CLOB | Y |  |
| 9 | DS_LAUDO_HTML | CLOB | Y |  |
| 10 | CD_ATENDIMENTO_HIS | VARCHAR2 | Y |  |
| 11 | CD_PEDIDO_HIS | VARCHAR2 | Y |  |
| 12 | NM_UNIDADE | VARCHAR2 | Y |  |
| 13 | NM_PROCEDIMENTO | VARCHAR2 | Y |  |
| 14 | NM_MEDICO_SOLICITANTE | VARCHAR2 | Y |  |
| 15 | NM_MEDICO_EXECUTANTE | VARCHAR2 | Y |  |
| 16 | NM_MEDICO_REVISOR | VARCHAR2 | Y |  |
| 17 | ID_PROCEDIMENTO | NUMBER | N |  |
| 18 | DT_DITADO | DATE | Y |  |
| 19 | DT_DIGITADO | DATE | Y |  |
| 20 | DT_LAUDADO | DATE | Y |  |
| 21 | DT_ASSINADO | DATE | Y |  |
| 22 | DT_IMPRESSO | DATE | Y |  |
| 23 | DT_FINALIZACAO | DATE | Y |  |
| 24 | DT_ENTREGA | DATE | Y |  |
| 25 | CD_ITEM_PEDIDO_HIS | VARCHAR2 | Y |  |
| 26 | DT_NASCIMENTO | DATE | Y |  |
| 27 | NR_PRONTUARIO_HOSPITALAR | VARCHAR2 | Y |  |
| 28 | SN_DISPONIVEL | CHAR | Y |  |
| 29 | CD_STUDY_UID | CHAR | Y |  |
| 30 | CD_TIPO_VIEWER | NUMBER | Y |  |
| 31 | ID_UNIDADE | NUMBER | Y |  |
| 32 | ID_PACIENTE_CONSOLIDADO | NUMBER | N |  |
| 33 | ID_PROCEDIMENTO_UNIDADE | NUMBER | N |  |
| 34 | DT_STUDY | DATE | Y |  |
| 35 | SN_STUDY_PED | CHAR | N |  |

---

## IDCECRER.RS_VW_WORKLAUWEB

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PEDIDO_HIS | VARCHAR2 | Y |  |
| 2 | CD_ITEM_PEDIDO_HIS | VARCHAR2 | Y |  |
| 3 | NR_PRONTUARIO_HOSPITALAR | VARCHAR2 | Y |  |
| 4 | ID_EXAME_PEDIDO | NUMBER | N |  |
| 5 | NM_EXAME | VARCHAR2 | Y |  |
| 6 | NM_SETOR_EXECUTANTE | VARCHAR2 | N |  |
| 7 | DT_PEDIDO | DATE | Y |  |
| 8 | NM_PACIENTE | VARCHAR2 | Y |  |
| 9 | TP_SEXO | CHAR | N |  |
| 10 | DT_CADASTRO | DATE | N |  |
| 11 | CD_MODALIDADE | VARCHAR2 | Y |  |
| 12 | DT_STUDY | DATE | Y |  |
| 13 | IMAGEM | CHAR | Y |  |
| 14 | SLA | DATE | Y |  |
| 15 | ID_UNIDADE | NUMBER | Y |  |
| 16 | TP_STATUS | VARCHAR2 | Y |  |
| 17 | DT_IMPRESSO | DATE | Y |  |
| 18 | DT_DITADO | DATE | Y |  |
| 19 | DT_CERTIFICADO | DATE | Y |  |
| 20 | NR_ANEXOS | NUMBER | Y |  |
| 21 | NR_COMENTARIO | NUMBER | Y |  |
| 22 | NM_UNIDADE | VARCHAR2 | Y |  |
| 23 | DT_LAUDADO | DATE | Y |  |
| 24 | DT_ASSINADO | DATE | Y |  |
| 25 | SN_ATRASADO | CHAR | Y |  |
| 26 | DS_STATUS_CARTORIO | VARCHAR2 | Y |  |
| 27 | NM_EXAME_UNIDADE | VARCHAR2 | Y |  |
| 28 | CD_ATENDIMENTO_HIS | VARCHAR2 | Y |  |
| 29 | ID_PACIENTE_CONSOLIDADO | NUMBER | N |  |

---

## IDCECRER.RS_WPD_PEDIDOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_PEDIDO | NUMBER | N |  |
| 2 | TP_INTEGRACAO | VARCHAR2 | Y |  |
| 3 | DS_ERRO | VARCHAR2 | Y |  |
| 4 | DT_INTEGRACAO | DATE | Y |  |
| 5 | COD_UNI | VARCHAR2 | Y |  |
| 6 | COD_PAC | VARCHAR2 | Y |  |
| 7 | COD_PRT | VARCHAR2 | Y |  |
| 8 | NOME_PAC | VARCHAR2 | Y |  |
| 9 | DATANASCTO_PAC | DATE | Y |  |
| 10 | ALTURA_PAC | NUMBER | Y |  |
| 11 | PESO_PAC | NUMBER | Y |  |
| 12 | SEXO_PAC | CHAR | Y |  |
| 13 | MATRICULA_PAC | VARCHAR2 | Y |  |
| 14 | CGC_CPF_PAC | VARCHAR2 | Y |  |
| 15 | RG_PAC | VARCHAR2 | Y |  |
| 16 | ENDERECO_PAC | VARCHAR2 | Y |  |
| 17 | BAIRRO_PAC | VARCHAR2 | Y |  |
| 18 | CIDADE_PAC | VARCHAR2 | Y |  |
| 19 | UF_PAC | VARCHAR2 | Y |  |
| 20 | CEP_PAC | VARCHAR2 | Y |  |
| 21 | TELEFONE_PAC | VARCHAR2 | Y |  |
| 22 | FAX_PAC | VARCHAR2 | Y |  |
| 23 | NR_CELULAR_PAC | VARCHAR2 | Y |  |
| 24 | EMAIL_PAC | VARCHAR2 | Y |  |
| 25 | SN_EMAIL_PAC | CHAR | Y |  |
| 26 | SN_SMS_PAC | CHAR | Y |  |
| 27 | DATA_MOV | DATE | Y |  |
| 28 | HORA_MOV | DATE | Y |  |
| 29 | COD_CON | VARCHAR2 | Y |  |
| 30 | NOME_CON | VARCHAR2 | Y |  |
| 31 | ENDERECO_CON | VARCHAR2 | Y |  |
| 32 | BAIRRO_CON | VARCHAR2 | Y |  |
| 33 | CIDADE_CON | VARCHAR2 | Y |  |
| 34 | UF_CON | VARCHAR2 | Y |  |
| 35 | CEP_CON | VARCHAR2 | Y |  |
| 36 | TELEFONE_CON | VARCHAR2 | Y |  |
| 37 | FAX_CON | VARCHAR2 | Y |  |
| 38 | CGC_CPF_CON | VARCHAR2 | Y |  |
| 39 | EMAIL_CON | VARCHAR2 | Y |  |
| 40 | CONTATO_CON | VARCHAR2 | Y |  |
| 41 | COD_PRO_SOLIC | VARCHAR2 | Y |  |
| 42 | NOME_PRO_SOLIC | VARCHAR2 | Y |  |
| 43 | DATANASCTO | DATE | Y |  |
| 44 | CGC_CPF_PRO_SOLIC | VARCHAR2 | Y |  |
| 45 | ENDERECO_PRO_SOLIC | VARCHAR2 | Y |  |
| 46 | BAIRRO_PRO_SOLIC | VARCHAR2 | Y |  |
| 47 | CIDADE_PRO_SOLIC | VARCHAR2 | Y |  |
| 48 | UF_PRO_SOLIC | VARCHAR2 | Y |  |
| 49 | CEP_PRO_SOLIC | VARCHAR2 | Y |  |
| 50 | TELEFONE_PRO_SOLIC | VARCHAR2 | Y |  |
| 51 | FAX_PRO_SOLIC | VARCHAR2 | Y |  |
| 52 | EMAIL_PRO_SOLIC | VARCHAR2 | Y |  |
| 53 | CRM_PRO_SOLIC | VARCHAR2 | Y |  |
| 54 | COD_PRO | VARCHAR2 | Y |  |
| 55 | NOME_PRO | VARCHAR2 | Y |  |
| 56 | DATANASCTO_PRO | DATE | Y |  |
| 57 | CGC_CPF_PRO | VARCHAR2 | Y |  |
| 58 | ENDERECO_PRO | VARCHAR2 | Y |  |
| 59 | BAIRRO_PRO | VARCHAR2 | Y |  |
| 60 | CIDADE_PRO | VARCHAR2 | Y |  |
| 61 | UF_PRO | VARCHAR2 | Y |  |
| 62 | CEP_PRO | VARCHAR2 | Y |  |
| 63 | TELEFONE_PRO | VARCHAR2 | Y |  |
| 64 | FAX_PRO | VARCHAR2 | Y |  |
| 65 | EMAIL_PRO | VARCHAR2 | Y |  |
| 66 | CRM_PRO | VARCHAR2 | Y |  |
| 67 | COD_PRD | VARCHAR2 | Y |  |
| 68 | NOME_PRD | VARCHAR2 | Y |  |
| 69 | TIPO_PAC | CHAR | Y |  |
| 70 | URGENTE | CHAR | Y |  |
| 71 | REGIAO | VARCHAR2 | Y |  |
| 72 | LEITO | VARCHAR2 | Y |  |
| 73 | SET_ORI | VARCHAR2 | Y |  |
| 74 | COD_AMB | VARCHAR2 | Y |  |
| 75 | IMPORTADO | CHAR | Y |  |
| 76 | LAU_ID | NUMBER | Y |  |
| 77 | USU_ID | NUMBER | Y |  |
| 78 | MARCADO | CHAR | Y |  |
| 79 | COD_ACCESS_NUMBER | VARCHAR2 | Y |  |
| 80 | COD_SALA | VARCHAR2 | Y |  |
| 81 | INDICACAO | VARCHAR2 | Y |  |
| 82 | DT_AGENDAMENTO | DATE | Y |  |
| 83 | HR_AGENDAMENTO | DATE | Y |  |
| 84 | OBS | VARCHAR2 | Y |  |

---

## IDCECRER.RS_WPD_PEDIDOS_LAB

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_PEDIDO_LAB | NUMBER | N |  |
| 2 | TP_INTEGRACAO | VARCHAR2 | Y |  |
| 3 | DS_ERRO | VARCHAR2 | Y |  |
| 4 | DT_INTEGRACAO | DATE | Y |  |
| 5 | COD_PAC | VARCHAR2 | Y |  |
| 6 | NOME_PAC | VARCHAR2 | Y |  |
| 7 | DATANASCTO_PAC | DATE | Y |  |
| 8 | ALTURA_PAC | NUMBER | Y |  |
| 9 | PESO_PAC | NUMBER | Y |  |
| 10 | SEXO_PAC | CHAR | Y |  |
| 11 | MATRICULA_PAC | VARCHAR2 | Y |  |
| 12 | CGC_CPF_PAC | VARCHAR2 | Y |  |
| 13 | RG_PAC | VARCHAR2 | Y |  |
| 14 | ENDERECO_PAC | VARCHAR2 | Y |  |
| 15 | BAIRRO_PAC | VARCHAR2 | Y |  |
| 16 | CIDADE_PAC | VARCHAR2 | Y |  |
| 17 | UF_PAC | VARCHAR2 | Y |  |
| 18 | CEP_PAC | VARCHAR2 | Y |  |
| 19 | TELEFONE_PAC | VARCHAR2 | Y |  |
| 20 | FAX_PAC | VARCHAR2 | Y |  |
| 21 | NR_CELULAR_PAC | VARCHAR2 | Y |  |
| 22 | EMAIL_PAC | VARCHAR2 | Y |  |
| 23 | SN_EMAIL_PAC | CHAR | Y |  |
| 24 | SN_SMS_PAC | CHAR | Y |  |
| 25 | DATA_MOV | DATE | Y |  |
| 26 | HORA_MOV | DATE | Y |  |
| 27 | REGISTRO | VARCHAR2 | Y |  |

---

## IDCECRER.SALAS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | SAL_ID | NUMBER | N |  |
| 2 | NOME | VARCHAR2 | Y |  |
| 3 | NUMERO | VARCHAR2 | Y |  |
| 4 | AE_TITLE | VARCHAR2 | Y |  |
| 5 | PORTA | VARCHAR2 | Y |  |
| 6 | MODALIDADE | VARCHAR2 | Y |  |
| 7 | NM_FABRICANTE | VARCHAR2 | Y |  |
| 8 | NM_EQUIPAMENTO | VARCHAR2 | Y |  |

---

## IDCECRER.SEGUSU

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | SEGUSU_ID | NUMBER | N |  |
| 2 | NOME | VARCHAR2 | Y |  |
| 3 | ACSGERAL | CHAR | Y |  |
| 4 | SENHA1 | VARCHAR2 | Y |  |
| 5 | SENHA2 | VARCHAR2 | Y |  |
| 6 | SENHA3 | VARCHAR2 | Y |  |
| 7 | CPF | VARCHAR2 | Y |  |
| 8 | NOMEID | VARCHAR2 | Y |  |

---

## IDCECRER.TABELA_DE_PARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | EXA_RX_OLD | NUMBER | Y |  |
| 2 | EXA_RX_NEW | NUMBER | Y |  |

---

## IDCECRER.TAB_TEMP_USU_ALT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_USUARIO | NUMBER | Y |  |

---

## IDCECRER.UNIDADES

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_UNIDADE | NUMBER | N |  |
| 2 | NM_UNIDADE | VARCHAR2 | Y |  |

---

## IDCECRER.USUARIOS_VIVACE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_USUARIO | NUMBER | N |  |
| 2 | ID_USUARIO_PAI | NUMBER | Y |  |
| 3 | NM_USUARIO | VARCHAR2 | Y |  |
| 4 | DT_NASCIMENTO | DATE | Y |  |
| 5 | TP_SEXO | VARCHAR2 | N |  |
| 6 | DS_CARGO | VARCHAR2 | Y |  |
| 7 | NM_IDENTIFICACAO | VARCHAR2 | Y |  |
| 8 | DS_ENDERECO | VARCHAR2 | Y |  |
| 9 | DS_BAIRRO | VARCHAR2 | Y |  |
| 10 | DS_CIDADE | VARCHAR2 | Y |  |
| 11 | DS_UF | VARCHAR2 | Y |  |
| 12 | DS_CEP | VARCHAR2 | Y |  |
| 13 | DS_CPF | VARCHAR2 | Y |  |
| 14 | DS_RG | VARCHAR2 | Y |  |
| 15 | DS_TELEFONE | VARCHAR2 | Y |  |
| 16 | DS_FAX | VARCHAR2 | Y |  |
| 17 | CD_SENHA | VARCHAR2 | Y |  |
| 18 | DS_EMAIL | VARCHAR2 | Y |  |
| 19 | SN_ACESSO_IRRESTRITO | CHAR | Y |  |
| 20 | SN_TROCA_SENHA | CHAR | Y |  |
| 21 | SN_ATIVO | CHAR | Y |  |
| 22 | DT_CADASTRO | DATE | Y |  |
| 23 | DT_ALTERACAO | DATE | Y |  |
| 24 | IM_BIOMETRIA | BLOB | Y |  |
| 25 | DS_USUARIO_VIEWER | VARCHAR2 | Y |  |
| 26 | DS_SENHA_VIEWER | VARCHAR2 | Y |  |
| 27 | DS_ULTIMA_IMPRESSORA | VARCHAR2 | Y |  |
| 28 | SN_IMPRESSAO_LOCAL | CHAR | Y |  |
| 29 | SN_PRINT_REVISAO_AUT | CHAR | N |  |
| 30 | SN_ACESSO_MRB | CHAR | N |  |
| 31 | TP_PRIORIDADE_EVOLUCAO_PACIENT | CHAR | N |  |
| 32 | SN_VISAO_AUTO_TEXTO_GERAL_USU | CHAR | N |  |
| 33 | SN_VISAO_AUTO_TEXTO_VINC_USU | CHAR | N |  |
| 34 | DS_CELULAR | VARCHAR2 | Y |  |
| 35 | NM_SKIN | VARCHAR2 | Y |  |
| 36 | ID_CPT_CENARIO | NUMBER | Y |  |
| 37 | QT_REG_PAGINA_COCKPIT | NUMBER | Y |  |
| 38 | QT_REG_PAGINA_BS_CONHEC | NUMBER | Y |  |
| 39 | TP_ORDEM_AUTO_TEXTO_COCKPIT | NUMBER | Y |  |
| 40 | DS_USUARIO_SPEECHANYWHERE | VARCHAR2 | Y |  |
| 41 | DS_SENHA_SPEECHANYWHERE | VARCHAR2 | Y |  |

---

## IDCECRER.VIVACEASSINATURA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_MEDICO | NUMBER | N |  |
| 2 | IM_ASSINATURA | BLOB | N |  |
| 3 | NM_MEDICO | VARCHAR2 | Y |  |

---

## IDCECRER.VIVACE_ASSINATURA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_MEDICO | NUMBER | N |  |
| 2 | IM_ASSINATURA | BLOB | N |  |

---

## IDCECRER.VW_ACORDO_ATENDIMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_EXAME_UNIDADE | NUMBER | Y |  |
| 2 | ID_SETOR_SOLICITANTE | NUMBER | Y |  |
| 3 | ID_SETOR_EXECUTANTE | NUMBER | Y |  |
| 4 | CD_RISCO | NUMBER | Y |  |
| 5 | ID_ACORDO_ALERTA_VERDE | NUMBER | Y |  |
| 6 | HR_ALERTA_VERDE | NUMBER | Y |  |
| 7 | NM_ALERTA_VERDE | VARCHAR2 | Y |  |
| 8 | ID_ACORDO_ALERTA_2 | NUMBER | Y |  |
| 9 | HR_ALERTA_AMARELO | NUMBER | Y |  |
| 10 | NM_ALERTA_AMARELO | VARCHAR2 | Y |  |
| 11 | ID_ACORDO_ALERTA_VERMELHO | NUMBER | Y |  |
| 12 | HR_ALERTA_VERMELHO | NUMBER | Y |  |
| 13 | NM_ALERTA_VERMELHO | VARCHAR2 | Y |  |

---

## IDCECRER.VW_ENVIO_SMS_EMAIL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CELULARMEDICOEXECUTANTE | VARCHAR2 | Y |  |
| 2 | CELULARPACIENTE | VARCHAR2 | Y |  |
| 3 | DATACADASTRO | DATE | Y |  |
| 4 | EMAILMEDICOEXECUTANTE | VARCHAR2 | Y |  |
| 5 | EMAILPACIENTE | VARCHAR2 | Y |  |
| 6 | LAUDOID | NUMBER | N |  |
| 7 | MSGSMS | VARCHAR2 | Y |  |
| 8 | NOMEEXAME | VARCHAR2 | Y |  |
| 9 | NOMEMEDICOEXECUTANTE | VARCHAR2 | Y |  |
| 10 | NOMEPACIENTE | VARCHAR2 | Y |  |
| 11 | PRAZO | NUMBER | Y |  |
| 12 | PRONTUARIO | VARCHAR2 | Y |  |
| 13 | REMETENTESMS | VARCHAR2 | Y |  |
| 14 | ID_UNIDADE | NUMBER | N |  |
| 15 | URLSMS | VARCHAR2 | Y |  |
| 16 | ENVIOSMSPACIENTE | CHAR | Y |  |
| 17 | ENVIOEMAILPACIENTE | CHAR | Y |  |
| 18 | ENVIOEMAILMEDEXEC | CHAR | Y |  |
| 19 | ENVIOSMSMEDEXEC | CHAR | Y |  |
| 20 | SNSMSMEDICO | CHAR | Y |  |
| 21 | SNEMAILMEDICO | CHAR | Y |  |
| 22 | SNSMSPACIENTE | CHAR | Y |  |
| 23 | SNEMAILPACIENTE | CHAR | Y |  |

---

## IDCECRER.WL_IMP_EXAMSSCHEDULED

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_PEDIDO | NUMBER | Y |  |
| 2 | ACCESSIONNUMBER | VARCHAR2 | Y |  |
| 3 | PATIENTID | VARCHAR2 | Y |  |
| 4 | SURNAME | VARCHAR2 | Y |  |
| 5 | FORENAME | VARCHAR2 | Y |  |
| 6 | TITLE | VARCHAR2 | Y |  |
| 7 | SEX | VARCHAR2 | Y |  |
| 8 | DATEOFBIRTH | DATE | Y |  |
| 9 | REFERRINGPHYSICIAN | VARCHAR2 | Y |  |
| 10 | PERFORMINGPHYSICIAN | VARCHAR2 | Y |  |
| 11 | MODALITY | VARCHAR2 | Y |  |
| 12 | EXAMDATEANDTIME | DATE | Y |  |
| 13 | EXAMROOM | VARCHAR2 | Y |  |
| 14 | EXAMDESCRIPTION | VARCHAR2 | Y |  |
| 15 | STUDYUID | VARCHAR2 | Y |  |
| 16 | PROCEDUREID | VARCHAR2 | Y |  |
| 17 | PROCEDURESTEPID | VARCHAR2 | Y |  |
| 18 | HOSPITALNAME | VARCHAR2 | Y |  |
| 19 | SCHEDULEDAET | VARCHAR2 | Y |  |
| 20 | DONE | VARCHAR2 | Y |  |
| 21 | DATEDONE | DATE | Y |  |
| 22 | MANUALINPUT | VARCHAR2 | Y |  |
| 23 | ATIVO | VARCHAR2 | Y |  |
| 24 | DICOMSERVER_AET | VARCHAR2 | Y |  |
| 25 | LAUDO_ID | NUMBER | Y |  |
| 26 | STATUS | VARCHAR2 | Y |  |
| 27 | DATAINPUT | DATE | Y |  |
| 28 | USERINPUTMANUAL | VARCHAR2 | Y |  |
| 29 | EXAMID | VARCHAR2 | Y |  |
| 30 | LOCATION | VARCHAR2 | Y |  |
| 31 | CD_PEDIDO | NUMBER | Y |  |
| 32 | CD_ATENDIMENTO | NUMBER | Y |  |
| 33 | UND | NUMBER | Y |  |

---

## MPACS.APPLICATIONLOG

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | GUID | NUMBER | N |  |
| 2 | HOST | VARCHAR2 | N |  |
| 3 | TIMESTAMP | DATE | N |  |
| 4 | LOGLEVEL | VARCHAR2 | N |  |
| 5 | THREAD | VARCHAR2 | Y |  |
| 6 | MESSAGE | VARCHAR2 | N |  |
| 7 | EXCEPTION | VARCHAR2 | Y |  |

---

## MPACS.DB_HISTORY

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_HISTORY | NUMBER | N |  |
| 2 | NR_VERSAO | VARCHAR2 | N |  |
| 3 | NR_SEQUENCIA | NUMBER | N |  |
| 4 | NM_ARQUIVO | VARCHAR2 | N |  |
| 5 | DS_SQL | CLOB | N |  |
| 6 | DT_EXECUCAO | DATE | N |  |
| 7 | DS_STATUS | VARCHAR2 | N |  |
| 8 | DS_MENSAGEM | VARCHAR2 | Y |  |
| 9 | DS_RESPONSAVEL | VARCHAR2 | N |  |

---

## MPACS.DS_ACCEPTEDSOPCLASSUIDS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_UNIDADE | NUMBER | N |  |
| 2 | REMOTEAET | VARCHAR2 | N |  |
| 3 | SOPCLASSUID | VARCHAR2 | N |  |
| 4 | SOPDESCRIPTION | VARCHAR2 | Y |  |

---

## MPACS.DS_ACCEPTEDSTRANSFERSYNTAX

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_UNIDADE | NUMBER | N |  |
| 2 | REMOTEAET | VARCHAR2 | N |  |
| 3 | TRANSFERSYNTAXUID | VARCHAR2 | N |  |
| 4 | DSTRANSFERSYNTAXUID | VARCHAR2 | N |  |

---

## MPACS.DS_BACKUPERRORS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | BACKUPSESSIONID | NUMBER | N |  |
| 3 | FILENAME | VARCHAR2 | N |  |
| 4 | ERROR | CLOB | N |  |
| 5 | TIMESTAMP | TIMESTAMP(6) | N |  |

---

## MPACS.DS_BACKUPSESSIONS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | STARTTIME | TIMESTAMP(6) | Y |  |
| 3 | ENDTIME | TIMESTAMP(6) | Y |  |
| 4 | TOTALFILES | NUMBER | Y |  |
| 5 | TOTALSIZE | NUMBER | Y |  |
| 6 | SUCCESSFULFILES | NUMBER | Y |  |
| 7 | FAILEDFILES | NUMBER | Y |  |
| 8 | ISRUNNING | NUMBER | Y |  |

---

## MPACS.DS_CONFIGNAMES

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_UNIDADE | NUMBER | N |  |
| 2 | CONFIG_NAME | VARCHAR2 | N | The name of the DICOM Service Instance |

---

## MPACS.DS_CONFIG_VIVACE_CONNECT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_CONFIG_VIVACE_CONNECT | NUMBER | N |  |
| 2 | TP_AUTHENTICATION | NUMBER | N |  |
| 3 | TP_STORAGE_PREFERENTIAL | NUMBER | N |  |
| 4 | TP_PATH_PREFERENTIAL | NUMBER | N |  |
| 5 | SN_REGISTER_LOG | CHAR | N |  |
| 6 | SN_VIEW_STUDY_WITHOUT_ACNUMBER | CHAR | N |  |
| 7 | SN_ALLOW_DOWNLOAD_MOBILE | CHAR | N |  |
| 8 | SN_RESTRICT_SECTOR | CHAR | N |  |

---

## MPACS.DS_FEDERATION

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_FEDERATION | NUMBER | N |  |
| 2 | ID_UNIDADE | NUMBER | N |  |
| 3 | URL_FEDERATION | VARCHAR2 | N |  |
| 4 | TYPE_FEDERATION | NUMBER | N |  |
| 5 | CLIENT_SECRET | VARCHAR2 | Y |  |
| 6 | CLIENT_ID | VARCHAR2 | Y |  |
| 7 | ACTIVE | NUMBER | N |  |

---

## MPACS.DS_FIELDS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | FIELDID | NUMBER | N | Row ID |
| 2 | GROUPID | NUMBER | N | DICOM Group Number |
| 3 | ELEMENTID | NUMBER | N | DICOM Element Number |
| 4 | FIELDNAME | VARCHAR2 | N | Name of the DICOM Attribute |
| 5 | FIELDSOURCE | VARCHAR2 | N | Source of the DICOM Attribute - Where we get it from |
| 6 | FIELDMATCH | VARCHAR2 | Y | Whether the Attribute is used for Matching in C-FIND |
| 7 | FORMATCHING | NUMBER | N | Whether the Attribute is used for Matching in C-FIND |
| 8 | FORSTORING | NUMBER | N | Whether the Attribute is stored in the Database when image arrives |
| 9 | ISNAME | NUMBER | N | Whether the attributes VR is PN |
| 10 | ISDATE | NUMBER | N | Whether the Attributes VR is DT/DA |
| 11 | ISTIME | NUMBER | N | Whether the Attributes VR is TM |
| 12 | FILENAME | NUMBER | N | Full path to the stored images |
| 13 | SORTORDER | NUMBER | N | Sort order |
| 14 | RETRIEVESORT | NUMBER | Y | Whether the attribute is used for sorting when being retrieved |
| 15 | PATIENTLEVEL | NUMBER | N | Whether the Attribute is Patient Level Attribute |
| 16 | STUDYLEVEL | NUMBER | N | Whether the Attribute is Study Level Attribute |
| 17 | SERIESLEVEL | NUMBER | N | Whether the Attribute is Series Level Attribute |
| 18 | IMAGELEVEL | NUMBER | N | Whether the Attribute is Image/Instance Level Attribute |

---

## MPACS.DS_FTP_BOX

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_FTP_BOX | NUMBER | N |  |
| 2 | DS_DESCRIPTION | VARCHAR2 | Y |  |
| 3 | DS_FTP_URL | VARCHAR2 | Y |  |
| 4 | NM_USER_NAME | VARCHAR2 | Y |  |
| 5 | DS_PASSWORD | VARCHAR2 | Y |  |
| 6 | NR_PORT | NUMBER | Y |  |
| 7 | DS_FOLDER | VARCHAR2 | Y |  |
| 8 | ID_UNIDADE | NUMBER | Y |  |
| 9 | TRANSFERSYNTAXUID | VARCHAR2 | Y |  |
| 10 | DS_PROVIDER | VARCHAR2 | Y |  |
| 11 | DS_USERID | VARCHAR2 | Y |  |
| 12 | DS_EMAIL | VARCHAR2 | Y |  |
| 13 | DS_TOKEN | VARCHAR2 | Y |  |
| 14 | TP_ENABLESSL | NUMBER | Y |  |

---

## MPACS.DS_FULLVIEW

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_UNIDADE | NUMBER | N |  |
| 2 | STUDY_UID | VARCHAR2 | N |  |
| 3 | SERIES_UID | VARCHAR2 | N |  |
| 4 | INSTANCEUID | VARCHAR2 | N |  |
| 5 | SOPCLASSUID | VARCHAR2 | Y |  |
| 6 | INSTANCENUMBER | NUMBER | Y |  |
| 7 | IMAGETYPE | VARCHAR2 | Y |  |
| 8 | ECHONUMBERS | VARCHAR2 | Y |  |
| 9 | ACQUISITIONNUMBER | VARCHAR2 | Y |  |
| 10 | SLICELOCATION | VARCHAR2 | Y |  |
| 11 | SLICETHICKNESS | VARCHAR2 | Y |  |
| 12 | IMAGEORIENTATIONPATIENT | VARCHAR2 | Y |  |
| 13 | IMAGEPOSITIONPATIENT | VARCHAR2 | Y |  |
| 14 | IMAGEROWS | NUMBER | Y |  |
| 15 | IMAGECOLUMNS | NUMBER | Y |  |
| 16 | NUMBEROFFRAMES | NUMBER | Y |  |
| 17 | STUDYTIME | DATE | N |  |
| 18 | ALIAS_PATH_NAME | VARCHAR2 | Y |  |
| 19 | ALIAS_PATH_CENTER | VARCHAR2 | Y |  |
| 20 | FULLFILENAME | VARCHAR2 | Y |  |
| 21 | FILENAME | VARCHAR2 | N |  |
| 22 | ACCESSIONNUMBER | VARCHAR2 | Y |  |
| 23 | SERIESDESCRIPTION | VARCHAR2 | Y |  |
| 24 | STUDYDESCRIPTION | VARCHAR2 | Y |  |
| 25 | REFERRINGPHYSICIANSNAME | VARCHAR2 | Y |  |
| 26 | MODALITY | VARCHAR2 | N |  |
| 27 | PATIENTID_FKEY | VARCHAR2 | Y |  |
| 28 | SERIESDATE | DATE | Y |  |
| 29 | SERIESTIME | DATE | Y |  |
| 30 | OPERATORSNAME | VARCHAR2 | Y |  |
| 31 | REFERRINGPHYSICIAN_DICOM | VARCHAR2 | Y |  |
| 32 | REMOTEAET | VARCHAR2 | Y |  |
| 33 | STUDYID | VARCHAR2 | Y |  |
| 34 | SPECIFICCHARACTERSET | VARCHAR2 | Y |  |
| 35 | PATIENTSNAME | VARCHAR2 | Y |  |
| 36 | PATIENTID | VARCHAR2 | Y |  |
| 37 | PATIENTSBIRTHDATE | DATE | Y |  |
| 38 | PATIENTSSEX | VARCHAR2 | Y |  |
| 39 | STUDYDATE | DATE | N |  |
| 40 | SERIESNUMBER | NUMBER | Y |  |
| 41 | IMAGEKEY | NUMBER | Y |  |
| 42 | NUMBEROFSERIESRELATEDINSTANCES | NUMBER | Y |  |
| 43 | NUMBEROFSTUDYRELATEDSERIES | NUMBER | Y |  |
| 44 | NUMBEROFSTUDYRELATEDINSTANCES | NUMBER | Y |  |
| 45 | MODALITIESINSTUDY | VARCHAR2 | N |  |
| 46 | SIZEONDISK | NUMBER | Y |  |

---

## MPACS.DS_GENERALCONFIGURATION

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_UNIDADE | NUMBER | N |  |
| 2 | CONFIG_NAME | VARCHAR2 | N | The name of the Server "Instance" |
| 3 | IMPLEMENTATIONNAME | CHAR | N | The Implementation Name of the DICOM Server Instance |
| 4 | IMPLEMENTATIONUID | CHAR | N | The Implementation UID of the DICOM Server Instance |
| 5 | LOCALAET | VARCHAR2 | N | DICOM AET of this DICOM Server Instance |
| 6 | STORAGECOMMIT_INTERVAL | VARCHAR2 | N | The interval in Minutes between thread checking StorageCommitRequests |
| 7 | STORAGECOMMIT_LIFETIME | VARCHAR2 | N | Number of Days for StorageCommitment Request - after 4 days of re-trying will send Failure status... |
| 8 | ALLOWNULLACCESSIONNUMBER | NUMBER | N |  |
| 9 | ID_PATH_NAME | NUMBER | N |  |
| 10 | TRANSFERSYNTAXUID | VARCHAR2 | Y |  |
| 11 | REPLACETRANSFERSYNTAXUID | NUMBER | N |  |
| 12 | ORDERINSTANCEUID | NUMBER | N |  |
| 13 | CHECKINTEGRITY | NUMBER | N |  |
| 14 | MAXNUMBEROFRECORDSPERRESPONSE | NUMBER | Y |  |
| 15 | ALLOWMULTISTORAGE | NUMBER | Y |  |
| 16 | REPLACESIZEONDISK | NUMBER | Y |  |
| 17 | ALLOWAUTOROUTER | NUMBER | Y |  |
| 18 | ROUTERREQUEST_INTERVAL | NUMBER | Y |  |
| 19 | ALLOWDICOMXML | NUMBER | Y |  |
| 20 | AUTOROUTERSTART | DATE | Y |  |
| 21 | AUTOROUTEREND | DATE | Y |  |
| 22 | ALLOWPOSTPROCESSOR | NUMBER | Y |  |
| 23 | POSTPROCESSORFILE | VARCHAR2 | Y |  |
| 24 | POSTPROCESSOR_INTERVAL | NUMBER | Y |  |

---

## MPACS.DS_GENERATION_TOKEN

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_GENERATION_TOKEN | NUMBER | N |  |
| 2 | ID_CONFIG_VIVACE_CONNECT | NUMBER | N |  |
| 3 | NM_REGISTER_TOKEN | VARCHAR2 | Y |  |
| 4 | DS_CLIENT_ID | VARCHAR2 | Y |  |
| 5 | DS_CLIENT_SECRET | VARCHAR2 | Y |  |
| 6 | ID_USER_GENERATION | NUMBER | Y |  |

---

## MPACS.DS_IMAGEJOBS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_IMAGEJOBS | NUMBER | N |  |
| 2 | ID_JOBCREATIONUSER | NUMBER | Y |  |
| 3 | DT_JOBCREATION | DATE | N |  |
| 4 | DT_JOBEXECUTION | DATE | Y |  |
| 5 | TP_JOBSTATUS | NUMBER | N |  |
| 6 | TP_JOBTYPE | CHAR | N | D -> Delete, E -> Edit, S -> Send |
| 7 | DS_SERIESUID | VARCHAR2 | Y |  |
| 8 | DS_STUDYUID | VARCHAR2 | Y |  |
| 9 | DS_MODALITY | VARCHAR2 | Y |  |
| 10 | DS_JOBERRORDESCRIPTION | CLOB | Y |  |
| 11 | QT_NUMBEROFIMAGES | NUMBER | Y |  |
| 12 | QT_SIZEONDISK | NUMBER | Y |  |
| 13 | ID_UNIDADE | NUMBER | Y |  |
| 14 | ID_RULE | NUMBER | Y |  |
| 15 | ID_PATH_NAME | NUMBER | Y |  |
| 16 | ID_FTP_BOX | NUMBER | Y |  |
| 17 | DT_INITIAL | DATE | Y |  |
| 18 | DT_FINAL | DATE | Y |  |
| 19 | VL_SEND_PERCENTUAL | NUMBER | Y |  |
| 20 | CONFIG_NAME | VARCHAR2 | Y |  |
| 21 | REMOTE_AET | VARCHAR2 | Y |  |

---

## MPACS.DS_IMAGEJOBS_DATA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_IMAGEJOBS_DATA | NUMBER | N |  |
| 2 | ID_IMAGEJOBS | NUMBER | Y |  |
| 3 | DS_STUDY_DESCRIPTION | VARCHAR2 | Y |  |
| 4 | ID_PATIENT | VARCHAR2 | Y |  |
| 5 | DS_PATIENTNAME_DICOM | VARCHAR2 | Y |  |
| 6 | DT_BIRTH | DATE | Y |  |
| 7 | TP_SEX | CHAR | N |  |
| 8 | DS_ACCESSIONNUMBER | VARCHAR2 | Y |  |
| 9 | DT_STUDY | DATE | Y |  |

---

## MPACS.DS_IMAGERETRIEVALVIEW

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | PATIENT_ID | VARCHAR2 | Y |  |
| 2 | STUDY_UID | VARCHAR2 | N |  |
| 3 | ID_PATH_NAME | NUMBER | N |  |
| 4 | ID_PATH_CENTER | NUMBER | Y |  |
| 5 | SERIES_UID | VARCHAR2 | N |  |
| 6 | INSTANCEUID | VARCHAR2 | N |  |
| 7 | FILENAME | VARCHAR2 | Y |  |
| 8 | FILENAMEDESTINO | VARCHAR2 | Y |  |
| 9 | STUDYDATE | DATE | N |  |
| 10 | SERIESNUMBER | NUMBER | Y |  |
| 11 | INSTANCENUMBER | NUMBER | Y |  |
| 12 | STUDYTIME | DATE | N |  |
| 13 | SOPCLASSUID | VARCHAR2 | Y |  |
| 14 | ID_UNIDADE | NUMBER | N |  |
| 15 | MODALITY | VARCHAR2 | N |  |
| 16 | ACCESSIONNUMBER | VARCHAR2 | Y |  |
| 17 | SERIESDESCRIPTION | VARCHAR2 | Y |  |
| 18 | STUDYDESCRIPTION | VARCHAR2 | Y |  |
| 19 | IMAGEKEY | NUMBER | Y |  |
| 20 | DISK_CLIENTID | VARCHAR2 | Y |  |
| 21 | DISK_REGION | VARCHAR2 | Y |  |
| 22 | DISK_BUCKET | VARCHAR2 | Y |  |
| 23 | DISK_SECRET | VARCHAR2 | Y |  |
| 24 | DISK_ENDPOINT | VARCHAR2 | Y |  |
| 25 | PATH_TYPE | NUMBER | N |  |

---

## MPACS.DS_IMAGERETRIEVALVIEW_AC

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | PATIENT_ID | VARCHAR2 | Y |  |
| 2 | STUDY_UID | VARCHAR2 | N |  |
| 3 | SERIES_UID | VARCHAR2 | N |  |
| 4 | INSTANCEUID | VARCHAR2 | N |  |
| 5 | FILENAME | VARCHAR2 | Y |  |
| 6 | STUDYDATE | DATE | N |  |
| 7 | SERIESNUMBER | NUMBER | Y |  |
| 8 | INSTANCENUMBER | NUMBER | Y |  |
| 9 | STUDYTIME | DATE | N |  |
| 10 | SOPCLASSUID | VARCHAR2 | Y |  |
| 11 | ID_UNIDADE | NUMBER | N |  |

---

## MPACS.DS_IMAGERETRIEVALVIEW_CONNECT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_UNIDADE | NUMBER | N |  |
| 2 | STUDYUID_FKEY | VARCHAR2 | N |  |
| 3 | SERIESUID_FKEY | VARCHAR2 | N |  |
| 4 | INSTANCEUID | VARCHAR2 | N |  |
| 5 | SOPCLASSUID | VARCHAR2 | Y |  |
| 6 | INSTANCENUMBER | NUMBER | Y |  |
| 7 | IMAGETYPE | VARCHAR2 | Y |  |
| 8 | ECHONUMBERS | VARCHAR2 | Y |  |
| 9 | ACQUISITIONNUMBER | VARCHAR2 | Y |  |
| 10 | SLICELOCATION | VARCHAR2 | Y |  |
| 11 | SLICETHICKNESS | VARCHAR2 | Y |  |
| 12 | IMAGEORIENTATIONPATIENT | VARCHAR2 | Y |  |
| 13 | IMAGEPOSITIONPATIENT | VARCHAR2 | Y |  |
| 14 | IMAGEROWS | NUMBER | Y |  |
| 15 | IMAGECOLUMNS | NUMBER | Y |  |
| 16 | NUMBEROFFRAMES | NUMBER | Y |  |
| 17 | STUDYTIME | DATE | N |  |
| 18 | ALIAS_PATH_NAME | VARCHAR2 | Y |  |
| 19 | ALIAS_PATH_CENTER | VARCHAR2 | Y |  |
| 20 | FILENAME | VARCHAR2 | N |  |
| 21 | ACCESSIONNUMBER | VARCHAR2 | Y |  |
| 22 | SERIESDESCRIPTION | VARCHAR2 | Y |  |
| 23 | STUDYDESCRIPTION | VARCHAR2 | Y |  |
| 24 | MODALITY | VARCHAR2 | N |  |
| 25 | PATIENTID_FKEY | VARCHAR2 | Y |  |
| 26 | SERIESDATE | DATE | Y |  |
| 27 | SERIESTIME | DATE | Y |  |
| 28 | OPERATORSNAME | VARCHAR2 | Y |  |
| 29 | REFERRINGPHYSICIAN_DICOM | VARCHAR2 | Y |  |
| 30 | REMOTEAET | VARCHAR2 | Y |  |
| 31 | STUDYID | VARCHAR2 | Y |  |
| 32 | PATIENTNAME_DICOM | VARCHAR2 | Y |  |
| 33 | DATEOFBIRTH | DATE | Y |  |
| 34 | SEX | VARCHAR2 | Y |  |
| 35 | STUDYDATE | DATE | N |  |
| 36 | SERIESNUMBER | NUMBER | Y |  |
| 37 | IMAGEKEY | NUMBER | Y |  |
| 38 | SIZEONDISK | NUMBER | Y |  |

---

## MPACS.DS_IMAGERETRIEVALVIEW_IDX

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | PATIENT_ID | VARCHAR2 | Y |  |
| 2 | STUDY_UID | VARCHAR2 | N |  |
| 3 | SERIES_UID | VARCHAR2 | N |  |
| 4 | INSTANCEUID | VARCHAR2 | N |  |
| 5 | FILENAME | VARCHAR2 | Y |  |
| 6 | FILENAMEDESTINO | VARCHAR2 | Y |  |
| 7 | STUDYDATE | DATE | N |  |
| 8 | SERIESNUMBER | NUMBER | Y |  |
| 9 | INSTANCENUMBER | NUMBER | Y |  |
| 10 | STUDYTIME | DATE | N |  |
| 11 | SOPCLASSUID | VARCHAR2 | Y |  |
| 12 | ID_UNIDADE | NUMBER | N |  |
| 13 | MODALITY | VARCHAR2 | N |  |

---

## MPACS.DS_IMAGERETRIEVALVIEW_IDX_DC

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | PATIENT_ID | VARCHAR2 | Y |  |
| 2 | STUDY_UID | VARCHAR2 | N |  |
| 3 | SERIES_UID | VARCHAR2 | N |  |
| 4 | INSTANCEUID | VARCHAR2 | N |  |
| 5 | FILENAME | VARCHAR2 | Y |  |
| 6 | FILENAMEDESTINO | VARCHAR2 | Y |  |
| 7 | STUDYDATE | DATE | N |  |
| 8 | SERIESNUMBER | NUMBER | Y |  |
| 9 | INSTANCENUMBER | NUMBER | Y |  |
| 10 | STUDYTIME | DATE | N |  |
| 11 | SOPCLASSUID | VARCHAR2 | Y |  |
| 12 | ID_UNIDADE | NUMBER | N |  |
| 13 | MODALITY | VARCHAR2 | N |  |

---

## MPACS.DS_IMAGERETRIEVALVIEW_VIEWER

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_UNIDADE | NUMBER | N |  |
| 2 | STUDYUID_FKEY | VARCHAR2 | N |  |
| 3 | SERIESUID_FKEY | VARCHAR2 | N |  |
| 4 | INSTANCEUID | VARCHAR2 | N |  |
| 5 | SOPCLASSUID | VARCHAR2 | Y |  |
| 6 | INSTANCENUMBER | NUMBER | Y |  |
| 7 | IMAGETYPE | VARCHAR2 | Y |  |
| 8 | ECHONUMBERS | VARCHAR2 | Y |  |
| 9 | ACQUISITIONNUMBER | VARCHAR2 | Y |  |
| 10 | SLICELOCATION | VARCHAR2 | Y |  |
| 11 | SLICETHICKNESS | VARCHAR2 | Y |  |
| 12 | IMAGEORIENTATIONPATIENT | VARCHAR2 | Y |  |
| 13 | IMAGEPOSITIONPATIENT | VARCHAR2 | Y |  |
| 14 | IMAGEROWS | NUMBER | Y |  |
| 15 | IMAGECOLUMNS | NUMBER | Y |  |
| 16 | NUMBEROFFRAMES | NUMBER | Y |  |
| 17 | STUDYTIME | DATE | N |  |
| 18 | STUDYDATE | DATE | N |  |
| 19 | ALIAS_PATH_NAME | VARCHAR2 | Y |  |
| 20 | ALIAS_PATH_CENTER | VARCHAR2 | Y |  |
| 21 | FILENAME | VARCHAR2 | N |  |
| 22 | ACCESSIONNUMBER | VARCHAR2 | Y |  |
| 23 | SERIESDESCRIPTION | VARCHAR2 | Y |  |
| 24 | STUDYDESCRIPTION | VARCHAR2 | Y |  |
| 25 | MODALITY | VARCHAR2 | N |  |
| 26 | PATIENTID_FKEY | VARCHAR2 | Y |  |
| 27 | SERIESDATE | DATE | Y |  |
| 28 | SERIESTIME | DATE | Y |  |
| 29 | OPERATORSNAME | VARCHAR2 | Y |  |
| 30 | REFERRINGPHYSICIAN_DICOM | VARCHAR2 | Y |  |
| 31 | REMOTEAET | VARCHAR2 | Y |  |
| 32 | STUDYID | VARCHAR2 | Y |  |
| 33 | PATIENTNAME_DICOM | VARCHAR2 | Y |  |
| 34 | DATEOFBIRTH | DATE | Y |  |
| 35 | SEX | VARCHAR2 | Y |  |
| 36 | IMAGEKEY | NUMBER | Y |  |
| 37 | SERIESNUMBER | NUMBER | Y |  |
| 38 | SIZEONDISK | NUMBER | Y |  |
| 39 | ID_PATH_NAME | NUMBER | N |  |
| 40 | ID_PATH_CENTER | NUMBER | Y |  |
| 41 | PATH_TYPE | NUMBER | N |  |
| 42 | DISK_CLIENTID | VARCHAR2 | Y |  |
| 43 | DISK_SECRET | VARCHAR2 | Y |  |
| 44 | DISK_REGION | VARCHAR2 | Y |  |
| 45 | DISK_BUCKET | VARCHAR2 | Y |  |

---

## MPACS.DS_IMAGETABLE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_UNIDADE | NUMBER | N |  |
| 2 | INSTANCEUID | VARCHAR2 | N | SOP Instance UID of the Image |
| 3 | SERIESUID_FKEY | VARCHAR2 | N | Series UID, Foreign Key to the SeriesTable |
| 4 | INSTANCENUMBER | NUMBER | Y | Image/Instance Number of the Image |
| 5 | ID_PATH_NAME | NUMBER | N |  |
| 6 | FILENAME | VARCHAR2 | N | Full file path to the image received/stored |
| 7 | SOPCLASSUID | VARCHAR2 | Y | DICOM SOP Class UID of the Image |
| 8 | RECEIVED | NUMBER | N | Indicates whether the image has been successfully Received/Stored |
| 9 | SAFE | NUMBER | N | Indicate whether StorageCommitment has been successful on the image |
| 10 | SIZEONDISK | NUMBER | Y |  |
| 11 | STUDYUID_FKEY | VARCHAR2 | N |  |
| 12 | POS_OFF | VARCHAR2 | Y |  |
| 13 | IMAGEKEY | NUMBER | Y |  |
| 14 | ARQUIVADO | NUMBER | Y |  |
| 15 | IMAGETYPE | VARCHAR2 | Y |  |
| 16 | ECHONUMBERS | VARCHAR2 | Y |  |
| 17 | ACQUISITIONNUMBER | VARCHAR2 | Y |  |
| 18 | SLICELOCATION | VARCHAR2 | Y |  |
| 19 | SLICETHICKNESS | VARCHAR2 | Y |  |
| 20 | IMAGEORIENTATIONPATIENT | VARCHAR2 | Y |  |
| 21 | IMAGEPOSITIONPATIENT | VARCHAR2 | Y |  |
| 22 | IMAGEROWS | NUMBER | Y |  |
| 23 | IMAGECOLUMNS | NUMBER | Y |  |
| 24 | NUMBEROFFRAMES | NUMBER | Y |  |
| 25 | INSTANCECREATIONTIME | DATE | Y |  |
| 26 | ID_PATH_CENTER | NUMBER | Y |  |
| 27 | TRANSFERSYNTAXUID | VARCHAR2 | Y | identificador da transfer syntax |
| 28 | IMAGEDATE | DATE | Y | Armazena a data de inserção da imagem no banco de dados |
| 29 | REPORT_SR | CLOB | Y | Armazena json com o SR do estudo |

---

## MPACS.DS_IMAGEVIEW

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | INSTANCEUID | VARCHAR2 | N |  |
| 2 | SERIESUID_FKEY | VARCHAR2 | N |  |
| 3 | INSTANCENUMBER | NUMBER | Y |  |
| 4 | FILENAME | VARCHAR2 | Y |  |
| 5 | SOPCLASSUID | VARCHAR2 | Y |  |
| 6 | SERIES_UID | VARCHAR2 | N |  |
| 7 | STUDYUID_FKEY | VARCHAR2 | N |  |
| 8 | CHARSET_SERIES | VARCHAR2 | Y |  |
| 9 | MODALITY | VARCHAR2 | N |  |
| 10 | SERIESNUMBER | NUMBER | Y |  |
| 11 | SERIESDESCRIPTION | VARCHAR2 | Y |  |
| 12 | PATIENTID | VARCHAR2 | Y |  |
| 13 | DATEOFBIRTH | DATE | Y |  |
| 14 | SEX | VARCHAR2 | Y |  |
| 15 | STUDY_UID | VARCHAR2 | N |  |
| 16 | PATIENTID_FKEY | VARCHAR2 | Y |  |
| 17 | STUDYDATE | DATE | N |  |
| 18 | ACCESSIONNUMBER | VARCHAR2 | Y |  |
| 19 | STUDYID | VARCHAR2 | Y |  |
| 20 | REFERRINGPHYSICIAN_DICOM | VARCHAR2 | Y |  |
| 21 | STUDYDESCRIPTION | VARCHAR2 | Y |  |
| 22 | NAME_DICOM | VARCHAR2 | Y |  |
| 23 | STUDYTIME | DATE | N |  |
| 24 | CHARACTERSET | VARCHAR2 | Y |  |
| 25 | ID_UNIDADE | NUMBER | N |  |
| 26 | SIZEONDISK | NUMBER | Y |  |
| 27 | ID_PATH_NAME | NUMBER | N |  |
| 28 | IMAGEROWS | NUMBER | Y |  |
| 29 | IMAGECOLUMNS | NUMBER | Y |  |
| 30 | SLICETHICKNESS | VARCHAR2 | Y |  |
| 31 | ACQUISITIONNUMBER | VARCHAR2 | Y |  |
| 32 | SLICELOCATION | VARCHAR2 | Y |  |
| 33 | IMAGETYPE | VARCHAR2 | Y |  |
| 34 | NUMBEROFFRAMES | NUMBER | Y |  |
| 35 | IMAGEORIENTATIONPATIENT | VARCHAR2 | Y |  |

---

## MPACS.DS_IMG_BIOCOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_UNIDADE | NUMBER | N |  |
| 2 | INSTANCEUID | VARCHAR2 | N |  |
| 3 | SERIESUID_FKEY | VARCHAR2 | N |  |
| 4 | INSTANCENUMBER | NUMBER | Y |  |
| 5 | ID_PATH_NAME | NUMBER | N |  |
| 6 | FILENAME | VARCHAR2 | N |  |
| 7 | SOPCLASSUID | VARCHAR2 | Y |  |
| 8 | RECEIVED | NUMBER | N |  |
| 9 | SAFE | NUMBER | N |  |
| 10 | SIZEONDISK | NUMBER | Y |  |
| 11 | STUDYUID_FKEY | VARCHAR2 | N |  |
| 12 | POS_OFF | VARCHAR2 | Y |  |
| 13 | IMAGEKEY | NUMBER | Y |  |
| 14 | ARQUIVADO | NUMBER | Y |  |
| 15 | IMAGETYPE | VARCHAR2 | Y |  |
| 16 | ECHONUMBERS | VARCHAR2 | Y |  |
| 17 | ACQUISITIONNUMBER | VARCHAR2 | Y |  |
| 18 | SLICELOCATION | VARCHAR2 | Y |  |
| 19 | SLICETHICKNESS | VARCHAR2 | Y |  |
| 20 | IMAGEORIENTATIONPATIENT | VARCHAR2 | Y |  |
| 21 | IMAGEPOSITIONPATIENT | VARCHAR2 | Y |  |
| 22 | IMAGEROWS | NUMBER | Y |  |
| 23 | IMAGECOLUMNS | NUMBER | Y |  |
| 24 | NUMBEROFFRAMES | NUMBER | Y |  |
| 25 | INSTANCECREATIONTIME | DATE | Y |  |
| 26 | ID_PATH_CENTER | NUMBER | Y |  |

---

## MPACS.DS_LOCALPORTS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_UNIDADE | NUMBER | N |  |
| 2 | CONFIG_NAME | VARCHAR2 | N | Name of the Server Instance |
| 3 | PORTNUMBER | NUMBER | N | TCP port number for the DICOM Service to Listen on |

---

## MPACS.DS_LOGS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_UNIDADE | NUMBER | N |  |
| 2 | CONFIG_NAME | VARCHAR2 | N | Name of the DICOM Service Instance |
| 3 | PATIENT_NAME | VARCHAR2 | Y | Name of the Patient |
| 4 | ACCESSION_NO | VARCHAR2 | Y | Accession Number |
| 5 | DATETIME | DATE | N | Date/Time of the Logging Entry |
| 6 | REMOTE_AET | VARCHAR2 | Y | AET of the Client involved |
| 7 | REMOTE_IP | VARCHAR2 | Y | AET of the Remote Node  Involved |
| 8 | OPERATION | VARCHAR2 | N | Action/Operation being Logged |
| 9 | PATIENT_ID | VARCHAR2 | Y | Patient ID if Available |
| 10 | STUDY_UID | VARCHAR2 | Y | Study UID if Available |
| 11 | SERIES_UID | VARCHAR2 | Y | Series UID if Available |
| 12 | RESULT | VARCHAR2 | N | Indicating the Result of the Operation. Failure or Success |

---

## MPACS.DS_MONITOR_ROUTER_ANAL_RDX

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | STUDYDATE | DATE | N |  |
| 2 | MODALITY | VARCHAR2 | N |  |
| 3 | PATIENTID_FKEY | VARCHAR2 | Y |  |
| 4 | PATIENTNAME_DICOM | VARCHAR2 | Y |  |
| 5 | ACCESSIONNUMBER | VARCHAR2 | Y |  |
| 6 | QTD_ESTUDOS | NUMBER | Y |  |
| 7 | QTD_IMAGENS | NUMBER | Y |  |

---

## MPACS.DS_MONITOR_ROUTER_ESTUDOS_RDX

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | STUDYDATE | DATE | N |  |
| 2 | MODALITY | VARCHAR2 | N |  |
| 3 | QTD_ESTUDOS | NUMBER | Y |  |
| 4 | QTD_IMAGENS | NUMBER | Y |  |

---

## MPACS.DS_MONITOR_ROUTER_HUGOL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | STUDYDATE | DATE | N |  |
| 2 | QTD_IMAGENS | NUMBER | Y |  |

---

## MPACS.DS_MONITOR_ROUTER_HUGOL_EX

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | STUDYDATE | DATE | N |  |
| 2 | QTD_IMAGENS | NUMBER | Y |  |

---

## MPACS.DS_MONITOR_ROUTER_RDX

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | STUDYDATE | DATE | N |  |
| 2 | QTD_IMAGENS | NUMBER | Y |  |

---

## MPACS.DS_MONITOR_ROUTER_STD_HUGOL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | STUDYDATE | DATE | N |  |
| 2 | MODALITY | VARCHAR2 | N |  |
| 3 | QTD_ESTUDOS | NUMBER | Y |  |
| 4 | QTD_IMAGENS | NUMBER | Y |  |

---

## MPACS.DS_MPPSREQUESTS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | REQUEST_ID | NUMBER | N | Auto-Incremented Unique ID |
| 2 | NCREATE | BLOB | Y | The N-Create Request Blob Data |
| 3 | NSET | BLOB | Y | The N-SET Request Blob Data |
| 4 | CONFIG_NAME | VARCHAR2 | N | The DICOM Service Instance Name |
| 5 | MESSAGE_ID | VARCHAR2 | N | The Affected SOP Instance UID of the MPPS Message |
| 6 | ID_UNIDADE | NUMBER | N |  |

---

## MPACS.DS_MPRPREVIEW

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | STUDYINSTANCEUID | VARCHAR2 | N |  |
| 2 | SERIESINSTANCEUID | VARCHAR2 | N |  |
| 3 | LASTTOUCHED | VARCHAR2 | Y |  |
| 4 | CHANNEL3DFILENAME | VARCHAR2 | Y |  |
| 5 | CHANNELSAGITTALFILENAME | VARCHAR2 | Y |  |
| 6 | CHANNELCORONALFILENAME | VARCHAR2 | Y |  |

---

## MPACS.DS_MPRPREVIEWBUILDER

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | STUDYINSTANCEUID | VARCHAR2 | N |  |
| 2 | SERIESINSTANCEUID | VARCHAR2 | N |  |
| 3 | INSERTEDWHEN | DATE | Y |  |
| 4 | BEINGPROCESSED | NUMBER | Y |  |

---

## MPACS.DS_PATHNAMES

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_PATH_NAME | NUMBER | N |  |
| 2 | PATH_NAME | VARCHAR2 | Y |  |
| 3 | ALIAS_PATH_NAME | VARCHAR2 | Y |  |
| 4 | DESCRIPTION | VARCHAR2 | Y |  |
| 5 | ATIVO | NUMBER | Y |  |
| 6 | ID_UNIDADE | NUMBER | Y |  |
| 7 | MODALITY | VARCHAR2 | Y |  |
| 8 | DS_FTP_URL | VARCHAR2 | Y |  |
| 9 | NM_USER_NAME | VARCHAR2 | Y |  |
| 10 | DS_PASSWORD | VARCHAR2 | Y |  |
| 11 | NR_PORT | VARCHAR2 | Y |  |
| 12 | DS_FOLDER | VARCHAR2 | Y |  |
| 13 | TP_ENABLESSL | NUMBER | Y |  |
| 14 | PATH_TYPE | NUMBER | N | Inseri campo para validação de tipo de storage, Local(0), Cloud(1) |
| 15 | DISK_SECRET | VARCHAR2 | Y | Client Secret do disco AWS S3 |
| 16 | DISK_BUCKET | VARCHAR2 | Y | Bucket do disco AWS S3 |
| 17 | DISK_REGION | VARCHAR2 | Y | Regiao do disco AWS S3 |
| 18 | DISK_CLIENTID | VARCHAR2 | Y | ClientId do disco AWS S3 |
| 19 | DISK_SECRECT | VARCHAR2 | Y |  |
| 20 | DISK_ENDPOINT | VARCHAR2 | Y |  |

---

## MPACS.DS_PATIENTTABLE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_UNIDADE | NUMBER | N |  |
| 2 | PATIENT_ID | VARCHAR2 | Y |  |
| 3 | DATEOFBIRTH | DATE | Y |  |
| 4 | SEX | VARCHAR2 | Y |  |
| 5 | PATIENT_CHARSET | VARCHAR2 | Y |  |
| 6 | PATIENTNAME_DICOM | VARCHAR2 | Y |  |
| 7 | ISPRIMARY | NUMBER | Y |  |
| 8 | NAME_FIRST | CHAR | Y |  |
| 9 | NAME_MIDDLE | CHAR | Y |  |
| 10 | NAME_LAST | CHAR | Y |  |
| 11 | NAME_TITLE | CHAR | Y |  |

---

## MPACS.DS_PATIENTTABLE_

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_UNIDADE | NUMBER | N |  |
| 2 | PATIENT_ID | VARCHAR2 | N | Patient ID |
| 3 | DATEOFBIRTH | DATE | Y | Date of Birth |
| 4 | SEX | VARCHAR2 | Y | Gender |
| 5 | PATIENT_CHARSET | VARCHAR2 | Y | Character Set for the Name |
| 6 | PATIENTNAME_DICOM | VARCHAR2 | N | DICOM Patient Name |
| 7 | ISPRIMARY | NUMBER | N |  |
| 8 | NAME_FIRST | VARCHAR2 | Y |  |
| 9 | NAME_MIDDLE | VARCHAR2 | Y |  |
| 10 | NAME_LAST | VARCHAR2 | Y |  |
| 11 | NAME_TITLE | VARCHAR2 | Y |  |

---

## MPACS.DS_PATIENTVIEW

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | PATIENT_ID | VARCHAR2 | Y |  |
| 2 | DATEOFBIRTH | DATE | Y |  |
| 3 | SEX | VARCHAR2 | Y |  |
| 4 | CHARACTERSET | VARCHAR2 | Y |  |
| 5 | NAME_DICOM | VARCHAR2 | Y |  |
| 6 | ID_UNIDADE | NUMBER | N |  |

---

## MPACS.DS_REGISTRY

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | REGNAME | VARCHAR2 | Y | Name of the Registry Key |
| 2 | VALUE | VARCHAR2 | Y | Value of the Registry Key |
| 3 | STRING | NUMBER | Y | Whether its a String or Number Key |
| 4 | CONFIG_NAME | VARCHAR2 | N | The Name of the DICOM Service Instance |
| 5 | ID_UNIDADE | NUMBER | N |  |

---

## MPACS.DS_RELATION_PACS_RIS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_RELATION_PACS_RIS | NUMBER | N |  |
| 2 | ID_CONFIG_VIVACE_CONNECT | NUMBER | N |  |
| 3 | ID_UNIT_PACS | NUMBER | Y |  |
| 4 | ID_UNIT_RIS | NUMBER | Y |  |

---

## MPACS.DS_REMOTEAETS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_UNIDADE | NUMBER | N |  |
| 2 | REMOTEAET | VARCHAR2 | N | AET of the Remote Note |
| 3 | IPADDRESS | CHAR | N | IP Address |
| 4 | PORT | NUMBER | N | TCP Port Number |
| 5 | CONFIG_NAME | VARCHAR2 | N | The Name of the DICOM Service Instance |
| 6 | SORTBY | VARCHAR2 | Y | Used for Ordering of C-FIND Results by AET |
| 7 | TRANSFERSYNTAXUID_OUT | VARCHAR2 | Y |  |
| 8 | TRANSFERSYNTAXUID_IN | VARCHAR2 | Y |  |
| 9 | RECEIVEDALLSTUDY | NUMBER | Y |  |
| 10 | RECEIVEDPREFIX | VARCHAR2 | Y |  |
| 11 | FILTERUND | NUMBER | Y |  |
| 12 | DSREMOTEAET | VARCHAR2 | Y |  |
| 13 | ACTIVE | NUMBER | Y |  |
| 14 | STORAGE_ASYNC | NUMBER | Y |  |
| 15 | RECEIVESECONDARYIMAGE | NUMBER | N | Valida se o remoto vai receber pdf encapsulado com imagem secundária ou não |
| 16 | RECOVERYSTORAGEONDISK | NUMBER | N | Valida se o pacs vai permitir receber estudos já existentes no banco de dados |

---

## MPACS.DS_REPORT_CATEGORIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_REPORT_CATEGORIA | NUMBER | N |  |
| 2 | DS_NOME_EXIBICAO | VARCHAR2 | Y |  |
| 3 | ID_CATEGORIA_PARENT | NUMBER | Y |  |
| 4 | DS_SISTEMA | VARCHAR2 | Y |  |

---

## MPACS.DS_REPORT_CATEGORIA_GRUPO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | ID_CATEGORIA | NUMBER | N |  |
| 3 | ID_GRUPO | NUMBER | Y |  |

---

## MPACS.DS_REPORT_RELATORIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_REPORT_RELATORIO | NUMBER | N |  |
| 2 | DS_NOME_EXIBICAO | VARCHAR2 | Y |  |
| 3 | NR_ID_MV_REPORT | NUMBER | N |  |
| 4 | ID_CATEGORIA_PARENT | NUMBER | Y |  |

---

## MPACS.DS_ROUTINGJOBS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | JOBID | NUMBER | N |  |
| 2 | FILENAME | VARCHAR2 | N |  |
| 3 | REMOTEAET | VARCHAR2 | N |  |
| 4 | LOCALAET | VARCHAR2 | N |  |
| 5 | IP | VARCHAR2 | N |  |
| 6 | PORT | NUMBER | N |  |
| 7 | LASTATTEMPT | DATE | Y |  |
| 8 | RETRYINTERVAL | NUMBER | N |  |
| 9 | MAXNUMBEROFTRIES | NUMBER | N |  |
| 10 | NUMBEROFTRIES | NUMBER | Y |  |
| 11 | LASTERROR | VARCHAR2 | Y |  |
| 12 | ID_PATH_NAME | NUMBER | Y |  |
| 13 | STATUS | NUMBER | Y |  |

---

## MPACS.DS_ROUTINGRULES

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | RULEID | NUMBER | N | Primary Key. The Rule ID |
| 2 | MODALITY | VARCHAR2 | Y | DICOM Modality |
| 3 | SOPCLASSUID | VARCHAR2 | Y | DICOM SOP CLASS UID |
| 4 | STARTTIME | DATE | Y | Start time of the rule |
| 5 | ENDTIME | DATE | Y | End time of the rule |
| 6 | DAYSOFWEEK | VARCHAR2 | Y | On which day the rule applies |
| 7 | PRIORITY | NUMBER | N | Used for Sorting the rules. Top rule gets processed first |
| 8 | DESTINATIONAET | VARCHAR2 | N | The mapped Remote AET according to the rule |
| 9 | STOPFURTHERRULESPROCESSING | NUMBER | Y | Whether to stop processing further rules with lower priority |
| 10 | RETRYINTERVAL | NUMBER | N | Number of Minutes before re-sending the failed images |
| 11 | MAXIMUMNUMBEROFTRIES | NUMBER | N |  |
| 12 | CLIENTAET | VARCHAR2 | Y | The Client AET this rule applies to |
| 13 | CONFIG_NAME | VARCHAR2 | N | Name of the Current DICOM Server Instance |

---

## MPACS.DS_RULES

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_RULES | NUMBER | N |  |
| 2 | NR_HOURINTERVAL | NUMBER | Y |  |
| 3 | NR_MINUTEINTERVAL | NUMBER | Y |  |
| 4 | NR_SCHEDHOUR | NUMBER | Y |  |
| 5 | ID_PATH_NAME | NUMBER | Y |  |
| 6 | SN_ACTIVE | CHAR | N |  |
| 7 | DT_STARTDATE | DATE | Y |  |
| 8 | NR_DAYSOFWEEK | NUMBER | Y |  |
| 9 | ID_UNIDADE | NUMBER | Y |  |
| 10 | TP_RULETYPE | CHAR | N |  |
| 11 | NR_PURGE_LIMIT | NUMBER | Y |  |
| 12 | NR_ENDHOUR | NUMBER | Y | Determina a hora em que a rotina de roteamento ou expurgo vão ser paradas |
| 13 | NR_ENDMINUTE | NUMBER | Y | Determina os minutos em que a rotina de roteamento ou expurgo vão ser paradas |
| 14 | SN_IGNORE_INTERVAL | NUMBER | Y | Aplicacao Ignora horario de execucao definido 0= Nao 1= Sim |
| 15 | RETENTIONDAYS | NUMBER | N |  |
| 16 | INTEGRATIONDAYS | NUMBER | N |  |

---

## MPACS.DS_RULES_MODALITY

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_RULES_MODALITY | NUMBER | N |  |
| 2 | ID_RULES | NUMBER | Y |  |
| 3 | MODALITY | VARCHAR2 | Y |  |

---

## MPACS.DS_SERIESTABLE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_UNIDADE | NUMBER | N |  |
| 2 | SERIES_UID | VARCHAR2 | N | Series UID |
| 3 | STUDYUID_FKEY | VARCHAR2 | N | Study UID Foreign Key to the StudyTable |
| 4 | CHARSET_SERIES | VARCHAR2 | Y | Character Set |
| 5 | MODALITY | VARCHAR2 | N | Modality |
| 6 | SERIESNUMBER | NUMBER | Y | Series Number |
| 7 | SERIESDESCRIPTION | VARCHAR2 | Y | Series Description |
| 8 | SERIESDATE | DATE | Y |  |
| 9 | SERIESTIME | DATE | Y |  |
| 10 | DTCREATED | DATE | Y | Armazena a data de inserção da série no banco de dados |

---

## MPACS.DS_SERIESTABLE_ANNOTATIONS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_UNIDADE | NUMBER | N |  |
| 2 | STUDYUID_FKEY | VARCHAR2 | N |  |
| 3 | SERIES_UID | VARCHAR2 | N |  |
| 4 | GUID | VARCHAR2 | N |  |
| 5 | DESCRIPTION | VARCHAR2 | N |  |
| 6 | ANNOTATION | CLOB | Y |  |
| 7 | LASTTOUCHED | VARCHAR2 | Y |  |
| 8 | VALUE | CLOB | Y |  |
| 9 | ID_PATH_NAME | NUMBER | N |  |

---

## MPACS.DS_SERIESTABLE_IA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_UNIDADE | NUMBER | N |  |
| 2 | SERIES_UID_IA | VARCHAR2 | N |  |
| 3 | SERIES_UID | VARCHAR2 | N |  |
| 4 | STUDYUID_FKEY | VARCHAR2 | N |  |
| 5 | DT_RESULT | DATE | Y |  |
| 6 | CD_STATUS_IA | NUMBER | Y |  |
| 7 | DS_RESULT_IA | CLOB | Y |  |
| 8 | COVID_SCORE | VARCHAR2 | Y |  |

---

## MPACS.DS_SERIESVIEW

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | SERIESDATE | DATE | Y |  |
| 2 | SERIESTIME | DATE | Y |  |
| 3 | SERIES_UID | VARCHAR2 | N |  |
| 4 | STUDYUID_FKEY | VARCHAR2 | N |  |
| 5 | CHARSET_SERIES | VARCHAR2 | Y |  |
| 6 | MODALITY | VARCHAR2 | N |  |
| 7 | SERIESNUMBER | NUMBER | Y |  |
| 8 | SERIESDESCRIPTION | VARCHAR2 | Y |  |
| 9 | PATIENTID | VARCHAR2 | Y |  |
| 10 | DATEOFBIRTH | DATE | Y |  |
| 11 | SEX | VARCHAR2 | Y |  |
| 12 | STUDY_UID | VARCHAR2 | N |  |
| 13 | PATIENTID_FKEY | VARCHAR2 | Y |  |
| 14 | STUDYDATE | DATE | N |  |
| 15 | ACCESSIONNUMBER | VARCHAR2 | Y |  |
| 16 | STUDYID | VARCHAR2 | Y |  |
| 17 | REFERRINGPHYSICIAN_DICOM | VARCHAR2 | Y |  |
| 18 | STUDYDESCRIPTION | VARCHAR2 | Y |  |
| 19 | NAME_DICOM | VARCHAR2 | Y |  |
| 20 | STUDYTIME | DATE | N |  |
| 21 | CHARACTERSET | VARCHAR2 | Y |  |
| 22 | ID_UNIDADE | NUMBER | N |  |

---

## MPACS.DS_SOPCLASSUIDS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | SOPCLASSUID | VARCHAR2 | N | SOP CLASS UID To Support |
| 2 | SOPDESCRIPTION | VARCHAR2 | Y | Description of the SOP CLASS UID |

---

## MPACS.DS_STORAGECOMMITREQUESTS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CONFIG_NAME | VARCHAR2 | N | Name of the Server Instance |
| 2 | REMOTEAET | VARCHAR2 | N | StorageCommitment SCUs AET, used for IP/Port Lookup |
| 3 | REQUEST | BLOB | Y | Blob data of the Storage Commitment Request |
| 4 | DATERECEIVED | DATE | N | Date the Request is Received, keep it for a number of days before deleting from Database |
| 5 | PROCESSED | NUMBER | N | True is the request has been processed and appropriate response has been sent back to SCU |
| 6 | REQUESTID | NUMBER | N | Primary Key |
| 7 | ID_UNIDADE | NUMBER | N |  |

---

## MPACS.DS_STUDYTABLE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_UNIDADE | NUMBER | N |  |
| 2 | STUDY_UID | VARCHAR2 | N | Study UID |
| 3 | CHARSET_STUDY | VARCHAR2 | Y | Character Set |
| 4 | PATIENTID_FKEY | VARCHAR2 | Y | Patient ID Foreign Key to PatientTable |
| 5 | STUDYDATE | DATE | N | Study Date |
| 6 | STUDYTIME | DATE | N | Study Time |
| 7 | ACCESSIONNUMBER | VARCHAR2 | Y | Accession Number |
| 8 | STUDYID | VARCHAR2 | Y | Study ID |
| 9 | REFERRINGPHYSICIAN_DICOM | VARCHAR2 | Y | Referring Physician Name |
| 10 | STUDYDESCRIPTION | VARCHAR2 | Y | Study Description |
| 11 | REFERRINGPHYSICIAN_FIRST | VARCHAR2 | Y |  |
| 12 | REFERRINGPHYSICIAN_MIDDLE | VARCHAR2 | Y |  |
| 13 | REFERRINGPHYSICIAN_LAST | VARCHAR2 | Y |  |
| 14 | REFERRINGPHYSICIAN_TITLE | VARCHAR2 | Y |  |
| 15 | REMOTEAET | VARCHAR2 | Y |  |
| 16 | OPERATORSNAME | VARCHAR2 | Y |  |
| 17 | PATIENTCOMMENTS | VARCHAR2 | Y |  |
| 18 | DATEOFBIRTH | DATE | Y |  |
| 19 | SEX | VARCHAR2 | Y |  |
| 20 | PATIENTNAME_DICOM | VARCHAR2 | Y |  |
| 21 | PERFORMINGPHYSICIANNAME | VARCHAR2 | Y |  |
| 22 | NAMEOFPHYSICIANSREADINGSTUDY | VARCHAR2 | Y |  |
| 23 | DTCREATED | DATE | Y | Armazena a data de inserção do estudo no banco de dados |

---

## MPACS.DS_STUDYTABLE_NOTIFY

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_UNIDADE | NUMBER | N |  |
| 2 | STUDYUID_FKEY | VARCHAR2 | N |  |
| 3 | DT_NOTIFY | DATE | Y |  |
| 4 | ID_USER_NOTIFY | NUMBER | Y |  |
| 5 | DS_NOTIFY | CLOB | Y |  |

---

## MPACS.DS_STUDYTABLE_SESSIONS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_UNIDADE | NUMBER | N |  |
| 2 | STUDYUID_FKEY | VARCHAR2 | N |  |
| 3 | GUID | VARCHAR2 | N |  |
| 4 | DESCRIPTION | VARCHAR2 | N |  |
| 5 | ANNOTATION | CLOB | Y |  |
| 6 | LASTTOUCHED | VARCHAR2 | Y |  |
| 7 | DONE | NUMBER | Y |  |
| 8 | ID_PATH_NAME | NUMBER | N |  |

---

## MPACS.DS_STUDYTABLE_SNAPSHOT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_UNIDADE | NUMBER | N |  |
| 2 | STUDYUID_FKEY | VARCHAR2 | N |  |
| 3 | GUID | VARCHAR2 | N |  |
| 4 | FILENAME | CLOB | Y |  |
| 5 | LASTTOUCHED | VARCHAR2 | Y |  |
| 6 | ID_PATH_NAME | NUMBER | N |  |

---

## MPACS.DS_STUDYTABLE_WEB

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_UNIDADE | NUMBER | N |  |
| 2 | STUDY_UID | VARCHAR2 | N |  |
| 3 | CHARSET_STUDY | VARCHAR2 | Y |  |
| 4 | PATIENTID_FKEY | VARCHAR2 | Y |  |
| 5 | STUDYDATE | DATE | N |  |
| 6 | STUDYTIME | DATE | N |  |
| 7 | ACCESSIONNUMBER | VARCHAR2 | Y |  |
| 8 | STUDYID | VARCHAR2 | Y |  |
| 9 | REFERRINGPHYSICIAN_DICOM | VARCHAR2 | Y |  |
| 10 | STUDYDESCRIPTION | VARCHAR2 | Y |  |
| 11 | REFERRINGPHYSICIAN_FIRST | VARCHAR2 | Y |  |
| 12 | REFERRINGPHYSICIAN_MIDDLE | VARCHAR2 | Y |  |
| 13 | REFERRINGPHYSICIAN_LAST | VARCHAR2 | Y |  |
| 14 | REFERRINGPHYSICIAN_TITLE | VARCHAR2 | Y |  |
| 15 | REMOTEAET | VARCHAR2 | Y |  |
| 16 | OPERATORSNAME | VARCHAR2 | Y |  |
| 17 | PATIENTCOMMENTS | VARCHAR2 | Y |  |
| 18 | DATEOFBIRTH | DATE | Y |  |
| 19 | SEX | VARCHAR2 | Y |  |
| 20 | PATIENTNAME_DICOM | VARCHAR2 | Y |  |

---

## MPACS.DS_STUDYVIEW

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NAME_DICOM | VARCHAR2 | Y |  |
| 2 | CHARACTERSET | VARCHAR2 | Y |  |
| 3 | PATIENT_ID | VARCHAR2 | Y |  |
| 4 | DATEOFBIRTH | DATE | Y |  |
| 5 | SEX | VARCHAR2 | Y |  |
| 6 | STUDY_UID | VARCHAR2 | N |  |
| 7 | CHARSET_STUDY | VARCHAR2 | Y |  |
| 8 | PATIENTID_FKEY | VARCHAR2 | Y |  |
| 9 | STUDYDATE | DATE | N |  |
| 10 | STUDYTIME | DATE | N |  |
| 11 | ACCESSIONNUMBER | VARCHAR2 | Y |  |
| 12 | STUDYID | VARCHAR2 | Y |  |
| 13 | REFERRINGPHYSICIAN_DICOM | VARCHAR2 | Y |  |
| 14 | STUDYDESCRIPTION | VARCHAR2 | Y |  |
| 15 | REMOTEAET | VARCHAR2 | Y |  |
| 16 | ID_UNIDADE | NUMBER | N |  |
| 17 | PATIENTCOMMENTS | VARCHAR2 | Y |  |
| 18 | NAMEOFPHYSICIANSREADINGSTUDY | VARCHAR2 | Y |  |
| 19 | PERFORMINGPHYSICIANNAME | VARCHAR2 | Y |  |

---

## MPACS.DS_TRANSFERSYNTAX

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | TRANSFERSYNTAXUID | VARCHAR2 | N |  |
| 2 | DSTRANSFERSYNTAXUID | VARCHAR2 | N |  |

---

## MPACS.DS_UNICODENAMES

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NAMEDICOM | VARCHAR2 | N |  |
| 2 | CHARSET | VARCHAR2 | Y |  |
| 3 | COMPNT | NUMBER | N |  |
| 4 | NAME_FIRST_UC | VARCHAR2 | Y |  |
| 5 | NAME_MIDDLE_UC | VARCHAR2 | Y |  |
| 6 | NAME_LAST_UC | VARCHAR2 | Y |  |
| 7 | NAME_TITLE_UC | VARCHAR2 | Y |  |

---

## MPACS.DS_VW_DIAGNEXT_IMAGES

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_UNIDADE | NUMBER | N |  |
| 2 | STUDYDATE | DATE | N |  |
| 3 | INSTANCEUID | VARCHAR2 | N |  |
| 4 | STUDY_UID | VARCHAR2 | N |  |
| 5 | ACCESSIONNUMBER | VARCHAR2 | Y |  |
| 6 | STUDYDESCRIPTION | VARCHAR2 | Y |  |
| 7 | PATIENTNAME_DICOM | VARCHAR2 | Y |  |
| 8 | SERIES_UID | VARCHAR2 | N |  |
| 9 | MODALITY | VARCHAR2 | N |  |
| 10 | SIZEONDISK | NUMBER | Y |  |

---

## MPACS.IMAGERETRIEVALVIEW

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | PATIENTID | VARCHAR2 | Y |  |
| 2 | NAME_FIRST | VARCHAR2 | Y |  |
| 3 | NAME_LAST | CHAR | Y |  |
| 4 | STUDYUID | VARCHAR2 | N |  |
| 5 | ACCESSIONNUMBER | VARCHAR2 | Y |  |
| 6 | SERIESUID | VARCHAR2 | N |  |
| 7 | INSTANCEUID | VARCHAR2 | N |  |
| 8 | FILENAME | VARCHAR2 | Y |  |
| 9 | ID_FILENAME_PATH | NUMBER | N |  |
| 10 | ARQUIVADO | NUMBER | Y |  |
| 11 | NAODICOM | NUMBER | Y |  |
| 12 | IMAGEPROTECT | NUMBER | Y |  |
| 13 | LOCAL | VARCHAR2 | Y |  |
| 14 | ID_FILENAME_PATH_LOCAL | NUMBER | N |  |
| 15 | LABEL_TIPO | CHAR | Y |  |
| 16 | LABEL_TITULO | CHAR | Y |  |
| 17 | TEMPORARIO | NUMBER | Y |  |
| 18 | IMAGEKEY | NUMBER | Y |  |
| 19 | IMAGESECRET | NUMBER | Y |  |
| 20 | PERDIDO | NUMBER | Y |  |
| 21 | STUDYDATE | DATE | N |  |
| 22 | STUDYTIME | DATE | N |  |
| 23 | SERIESNUMBER | NUMBER | Y |  |
| 24 | INSTANCENUMBER | NUMBER | Y |  |
| 25 | FRAMES | NUMBER | Y |  |
| 26 | UNIDADE | VARCHAR2 | Y |  |
| 27 | UNIDADEFINAL | VARCHAR2 | Y |  |

---

## MPACS.IMAGERETRIEVALVIEWSTUDY

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | PATIENT_ID | VARCHAR2 | Y |  |
| 2 | PATIENTNAME_DICOM | VARCHAR2 | Y |  |
| 3 | ID_UNIDADE | NUMBER | N |  |
| 4 | STUDY_UID | VARCHAR2 | N |  |
| 5 | STUDYTIME | DATE | N |  |
| 6 | STUDYDATE | DATE | N |  |
| 7 | ACCESSIONNUMBER | VARCHAR2 | Y |  |
| 8 | SERIES_UID | VARCHAR2 | N |  |
| 9 | SERIESNUMBER | NUMBER | Y |  |
| 10 | SOPCLASSUID | VARCHAR2 | Y |  |
| 11 | INSTANCENUMBER | NUMBER | Y |  |
| 12 | INSTANCEUID | VARCHAR2 | N |  |
| 13 | FILENAME | VARCHAR2 | Y |  |

---

## MPACS.IMAGETABLE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_UNIDADE | NUMBER | N |  |
| 2 | INSTANCEUID | VARCHAR2 | N |  |
| 3 | SERIESUID_FKEY | VARCHAR2 | N |  |
| 4 | INSTANCENUMBER | NUMBER | Y |  |
| 5 | ID_PATH_NAME | NUMBER | N |  |
| 6 | FILENAME | VARCHAR2 | N |  |
| 7 | SOPCLASSUID | VARCHAR2 | Y |  |
| 8 | RECEIVED | NUMBER | N |  |
| 9 | SAFE | NUMBER | N |  |
| 10 | SIZEONDISK | NUMBER | Y |  |
| 11 | POS_OFF | VARCHAR2 | Y |  |
| 12 | IMAGEKEY | NUMBER | Y |  |
| 13 | ARQUIVADO | NUMBER | Y |  |

---

## MPACS.IMAGEVIEWFULLPATH

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | PATIENTID | VARCHAR2 | Y |  |
| 2 | STUDYUID | VARCHAR2 | N |  |
| 3 | ACCESSIONNUMBER | VARCHAR2 | Y |  |
| 4 | SERIESUID | VARCHAR2 | N |  |
| 5 | INSTANCEUID | VARCHAR2 | N |  |
| 6 | IMAGEFILENAME | VARCHAR2 | Y |  |
| 7 | STUDYDATE | DATE | N |  |
| 8 | SERIESNUMBER | NUMBER | Y |  |
| 9 | INSTANCENUMBER | NUMBER | Y |  |
| 10 | STUDYTIME | DATE | N |  |
| 11 | SOPCLASSUID | VARCHAR2 | Y |  |
| 12 | ID_UNIDADE | NUMBER | N |  |
| 13 | FRAMES | NUMBER | Y |  |
| 14 | IMAGEKEY | NUMBER | Y |  |

---

## MPACS.MODALITY_MAPPING

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CODE | VARCHAR2 | Y |  |
| 2 | DESCRIPTION | VARCHAR2 | Y |  |

---

## MPACS.MPACS_LOGIN_AUDITORIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NM_USUARIO | VARCHAR2 | N |  |
| 3 | DS_SISTEMA | VARCHAR2 | Y |  |
| 4 | DS_OCORRENCIA | VARCHAR2 | Y |  |
| 5 | DT_CADASTRO | DATE | Y |  |
| 6 | DS_STATUS | VARCHAR2 | Y |  |

---

## MPACS.MPACS_SEG_AUDITORIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_AUDITORIA | NUMBER | N |  |
| 2 | ID_USUARIO | NUMBER | N |  |
| 3 | DT_OPERACAO | DATE | Y |  |
| 4 | DS_OPERACAO | CLOB | Y |  |
| 5 | ID_UNIDADE | NUMBER | Y |  |

---

## MPACS.MPACS_SEG_CATALOGO_OPERACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_CATALOGO | NUMBER | N |  |
| 2 | NM_CATALOGO | VARCHAR2 | Y |  |
| 3 | DS_CATALOGO | VARCHAR2 | Y |  |

---

## MPACS.MPACS_SEG_GRUPO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_GRUPO | NUMBER | N |  |
| 2 | NM_GRUPO | VARCHAR2 | Y |  |
| 3 | DS_GRUPO | VARCHAR2 | Y |  |
| 4 | DT_CADASTRO | DATE | Y |  |
| 5 | DT_ALTERACAO | DATE | Y |  |
| 6 | ID_USUARIO | NUMBER | Y |  |

---

## MPACS.MPACS_SEG_GRUPO_OPERACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_OPERACAO | NUMBER | N |  |
| 2 | ID_GRUPO | NUMBER | N |  |
| 3 | ID_USUARIO | NUMBER | Y |  |
| 4 | DT_CADASTRO | DATE | N |  |
| 5 | DT_ALTERACAO | DATE | Y |  |

---

## MPACS.MPACS_SEG_OPERACAO_SISTEMA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_OPERACAO | NUMBER | N |  |
| 2 | NM_OPERACAO | VARCHAR2 | Y |  |
| 3 | DS_OPERACAO | VARCHAR2 | Y |  |
| 4 | ID_CATALOGO | NUMBER | Y |  |
| 5 | ID_USUARIO | NUMBER | Y |  |

---

## MPACS.MPACS_SEG_USUARIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_USUARIO | NUMBER | N |  |
| 2 | ID_USUARIO_PAI | NUMBER | Y |  |
| 3 | NM_USUARIO | VARCHAR2 | Y |  |
| 4 | DT_NASCIMENTO | DATE | Y |  |
| 5 | TP_SEXO | VARCHAR2 | N |  |
| 6 | DS_CARGO | VARCHAR2 | Y |  |
| 7 | NM_IDENTIFICACAO | VARCHAR2 | Y |  |
| 8 | DS_ENDERECO | VARCHAR2 | Y |  |
| 9 | DS_BAIRRO | VARCHAR2 | Y |  |
| 10 | DS_CIDADE | VARCHAR2 | Y |  |
| 11 | DS_UF | VARCHAR2 | Y |  |
| 12 | DS_CEP | VARCHAR2 | Y |  |
| 13 | DS_CPF | VARCHAR2 | Y |  |
| 14 | DS_RG | VARCHAR2 | Y |  |
| 15 | DS_TELEFONE | VARCHAR2 | Y |  |
| 16 | DS_FAX | VARCHAR2 | Y |  |
| 17 | CD_SENHA | VARCHAR2 | Y |  |
| 18 | DS_EMAIL | VARCHAR2 | Y |  |
| 19 | SN_ACESSO_IRRESTRITO | CHAR | Y |  |
| 20 | SN_TROCA_SENHA | CHAR | Y |  |
| 21 | SN_ATIVO | CHAR | Y |  |
| 22 | DT_CADASTRO | DATE | Y |  |
| 23 | DT_ALTERACAO | DATE | Y |  |
| 24 | IM_BIOMETRIA | BLOB | Y |  |
| 25 | DS_USUARIO_VIEWER | VARCHAR2 | Y |  |
| 26 | DS_SENHA_VIEWER | VARCHAR2 | Y |  |
| 27 | DS_ULTIMA_IMPRESSORA | VARCHAR2 | Y |  |
| 28 | SN_IMPRESSAO_LOCAL | CHAR | Y |  |
| 29 | SN_LOGIN_ONEPASS | CHAR | Y | Define se o usuário vai logar diretamente via mv one pass |

---

## MPACS.MPACS_SEG_USUARIO_OPERACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_USUARIO | NUMBER | Y |  |
| 2 | ID_USUARIO_CADASTRO | NUMBER | Y |  |
| 3 | ID_GRUPO | NUMBER | Y |  |
| 4 | DT_CADASTRO | DATE | Y |  |
| 5 | DT_ALTERACAO | DATE | Y |  |
| 6 | ID_UNIDADE | NUMBER | Y |  |

---

## MPACS.MPACS_SEG_USUARIO_UNIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_USUARIO | NUMBER | N |  |
| 2 | ID_USUARIO_CADASTRO | NUMBER | Y |  |
| 3 | SN_ATIVO | VARCHAR2 | Y |  |
| 4 | ID_UNIDADE | NUMBER | N |  |
| 5 | DT_CADASTRO | DATE | Y |  |
| 6 | DT_ALTERACAO | DATE | Y |  |

---

## MPACS.MPACS_UNI_UNIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_UNIDADE | NUMBER | N |  |
| 2 | NM_UNIDADE | VARCHAR2 | Y |  |
| 3 | DS_ENDERECO | VARCHAR2 | Y |  |
| 4 | DS_BAIRRO | VARCHAR2 | Y |  |
| 5 | DS_CIDADE | VARCHAR2 | Y |  |
| 6 | DS_UF | VARCHAR2 | Y |  |
| 7 | DS_CEP | VARCHAR2 | Y |  |
| 8 | DS_TELEFONE1 | VARCHAR2 | Y |  |
| 9 | DS_TELEFONE2 | VARCHAR2 | Y |  |
| 10 | DS_FAX | VARCHAR2 | Y |  |
| 11 | DS_CNPJ | VARCHAR2 | Y |  |
| 12 | DS_EMAIL | VARCHAR2 | Y |  |
| 13 | DS_CONTATO | VARCHAR2 | Y |  |
| 14 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 15 | CD_UNIDADE_HIS | VARCHAR2 | Y |  |
| 16 | SN_ATIVO | CHAR | Y |  |
| 17 | DT_CADASTRO | DATE | Y |  |
| 18 | DT_ALTERACAO | DATE | Y |  |
| 19 | ID_USUARIO | NUMBER | Y |  |
| 20 | ID_REGIAO | NUMBER | Y |  |
| 21 | DS_INTEGRA_IP | VARCHAR2 | Y |  |
| 22 | DS_INTEGRA_SERVER_NAME | VARCHAR2 | Y |  |
| 23 | DS_INTEGRA_PORTA | VARCHAR2 | Y |  |
| 24 | DS_INTEGRA_LOGIN | VARCHAR2 | Y |  |
| 25 | DS_INTEGRA_SENHA | VARCHAR2 | Y |  |
| 26 | DS_DICOM_SEVER_IP | VARCHAR2 | Y |  |
| 27 | NR_DICOM_SERVER_PORTA | VARCHAR2 | Y |  |
| 28 | DS_DICOM_SERVER_AE_TITLE | VARCHAR2 | Y |  |
| 29 | DS_BANCO_DICOM_SERVER_IPPATH | VARCHAR2 | Y |  |
| 30 | NR_BANCO_DICOM_SERVER_PORTA | VARCHAR2 | Y |  |
| 31 | DS_BANCO_DICOM_SERVER_NAME | VARCHAR2 | Y |  |
| 32 | DS_BANCO_DICOM_SERVER_LOGIN | VARCHAR2 | Y |  |
| 33 | DS_BANCO_DICOM_SERVER_SENHA | VARCHAR2 | Y |  |
| 34 | DS_WORKLIST_IPPATH | VARCHAR2 | Y |  |
| 35 | NR_WORKLIST_PORTA | VARCHAR2 | Y |  |
| 36 | DS_WORKLIST_SERVER_NAME | VARCHAR2 | Y |  |
| 37 | DS_WORKLIST_LOGIN | VARCHAR2 | Y |  |
| 38 | DS_WORKLIST_SENHA | VARCHAR2 | Y |  |
| 39 | DS_SMS_LINK | VARCHAR2 | Y |  |
| 40 | DS_SMS_MSG | VARCHAR2 | Y |  |
| 41 | DS_SMS_REMETENTE | VARCHAR2 | Y |  |
| 42 | DS_WEB_VIEWER | VARCHAR2 | Y |  |
| 43 | DS_STUDYUID | VARCHAR2 | Y |  |
| 44 | ID_CONVENIO_PADRAO | NUMBER | Y |  |
| 45 | ID_MEDICO_SOLICITANTE_PADRAO | NUMBER | Y |  |
| 46 | ID_MEDICO_EXECUTANTE_PADRAO | NUMBER | Y |  |
| 47 | CD_UNIDADE_BASE_HIS | VARCHAR2 | Y |  |
| 48 | ID_RASTREAR_LAUDO | NUMBER | Y |  |
| 49 | DS_PATH_EXPORTA_LAUDO | VARCHAR2 | Y |  |
| 50 | SN_PRINT_PDF | CHAR | Y |  |
| 51 | DS_3D_TERARECON_APP_NAME | VARCHAR2 | Y |  |
| 52 | DS_3D_TERARECON_USER | VARCHAR2 | Y |  |
| 53 | DS_3D_TERARECON_PASSWORD | VARCHAR2 | Y |  |
| 54 | DS_3D_TERARECON_HOST | VARCHAR2 | Y |  |
| 55 | DS_3D_TERARECON_PORT | VARCHAR2 | Y |  |
| 56 | SN_VISUALIZE_PDF | CHAR | Y |  |
| 57 | SN_TAG_PDF | CHAR | Y |  |
| 58 | SN_INTEGRA | CHAR | Y |  |
| 59 | ID_BANCO | NUMBER | Y |  |
| 60 | SN_LOGIN_TROCA_ETAPA | CHAR | Y |  |
| 61 | SN_EXIGE_CERTIFICACAO_LAUDO | CHAR | Y |  |
| 62 | TP_DATA_PADRAO | CHAR | Y |  |
| 63 | SN_CLOUD | CHAR | Y | Define se a unidade é cloud 0 - NÃO, 1 - SIM |
| 64 | URL_QIDORS | VARCHAR2 | Y | Armazena a url do qidors para redirect |
| 65 | URL_WADORS | VARCHAR2 | Y | Armazena a url do wadors para redirect |
| 66 | URL_STOWRS | VARCHAR2 | Y |  |

---

## MPACS.MWL_CONFIG

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_UNIDADE | NUMBER | N |  |
| 2 | APPLICATIONAET | VARCHAR2 | N | AET Of This MWL Server |
| 3 | PORTNUMBER | NUMBER | N | TCP Port Number To Listen On |
| 4 | CHARACTERSET | VARCHAR2 | N | Character Set for Response |
| 5 | LOG | NUMBER | N | Switch for Logging. 1 To Enable and 0 to Disable Logging |
| 6 | LOGLEVEL | NUMBER | Y | Log Level - 63 is the default value |
| 7 | LOGLOCATION | VARCHAR2 | Y | Directory Where the Logs Are Kept |
| 8 | MAXNUMBEROFRECORDSPERRESPONSE | NUMBER | Y | Maximum Number of Records Per Response |
| 9 | DISABLEDATETIMEMATCHING | NUMBER | Y |  |
| 10 | CONFIG_NAME | VARCHAR2 | Y |  |
| 11 | IMPLEMENTATIONUID | VARCHAR2 | Y |  |
| 12 | INSTITUTIONNAME | VARCHAR2 | Y |  |
| 13 | FILTERUND | NUMBER | Y |  |
| 14 | REVERSENAME | NUMBER | Y |  |
| 15 | GENERATESTUDYUID | NUMBER | Y |  |
| 16 | ALLOWFILEWATCH | NUMBER | Y |  |
| 17 | FOLDERWATCH | VARCHAR2 | Y |  |
| 18 | FOLDERGETFILE | VARCHAR2 | Y |  |
| 19 | STUDYUID | VARCHAR2 | Y |  |

---

## MPACS.MWL_DATA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Column ID |
| 2 | SCHEDSTATIONAETITLE | VARCHAR2 | Y | Scheduled Station AE Title (0040,0001) |
| 3 | SCHEDPROCSTARTDATE | DATE | Y | Scheduled Procedure Step Start Date (0040,0002) |
| 4 | SCHEDPROCSTARTTIME | DATE | Y | Scheduled Procedure Step Start Time (0040,0003) |
| 5 | MODALITY | VARCHAR2 | Y | Modality (0008,0060) |
| 6 | REQUESTEDPROCEDUREID | VARCHAR2 | Y | Requested Procedure ID (0040,1001) |
| 7 | REQPROCDESCRIPTION | VARCHAR2 | Y | Requested Procedure Description (0032,1060) |
| 8 | STUDYDICOMINSTANCEUID | VARCHAR2 | Y | Study Instance UID (0020,000D) |
| 9 | SCHEDPATIENTNAME | VARCHAR2 | Y | Patients Name (0010,0010) |
| 10 | SCHEDPATIENTID | VARCHAR2 | Y | Patient ID (0010,0020) |
| 11 | SCHEDPATIENTBIRTHDAY | DATE | Y | Patients Birth Date (0010,0030) |
| 12 | SCHEDSEX | VARCHAR2 | Y | Patients Sex (0010,0040) |
| 13 | PATIENTWEIGHT | VARCHAR2 | Y | Patients Weight (0010,1030) |
| 14 | CONFICONSTRAINTONPATIENTDATA | VARCHAR2 | Y | Confidentiality constraint on patient data (0040,3001) |
| 15 | PATIENTSTATE | VARCHAR2 | Y | Patient State (0038,0500) |
| 16 | PREGNANCYSTATUS | NUMBER | Y | Pregnancy Status (0010,21C0) |
| 17 | MEDICALALERTS | VARCHAR2 | Y | Medical Alerts (0010,2000) |
| 18 | ALERGIES | VARCHAR2 | Y | Allergies (0010,2110) |
| 19 | SPECIALNEEDS | VARCHAR2 | Y | Special Needs (0038,0050) |
| 20 | SCHEDPROCPERFORMINGPHY | VARCHAR2 | Y | Scheduled Performing Physicians Name (0040,0006) |
| 21 | SCHEDPROCSTEPDESC | VARCHAR2 | Y | Scheduled Procedure Step Description (0040,0007) |
| 22 | SCHEDSTATIONNAME | VARCHAR2 | Y | Scheduled Station Name (0040,0010) |
| 23 | SCHEDPROCSTEPLOCATION | VARCHAR2 | Y | >Scheduled Procedure Step Location (0040,0011) |
| 24 | SCHEDULEDPROTOCOLCODESQCV | VARCHAR2 | Y | Scheduled Protocol Code Sequence Code Value (0008,0100) |
| 25 | SCHEDULEDPROTOCOLCODESQCSV | VARCHAR2 | Y | Scheduled Protocol Code Sequence Coding Scheme Version (0008,0103) |
| 26 | SCHEDULEDPROTOCOLCODESQSCSD | VARCHAR2 | Y | Scheduled Protocol Code Sequence Coding Scheme Designator (0008,0102) |
| 27 | SCHEDULEDPROTOCOLCODESQCM | VARCHAR2 | Y | Scheduled Protocol Code Sequence Code Meaning (0008,0104) |
| 28 | PREMEDICATION | VARCHAR2 | Y | Pre-Medication (0040,0012) |
| 29 | REQUESTEDCONTRASTAGENT | VARCHAR2 | Y | Requested Contrast Agent (0032,1070) |
| 30 | SCHEDPROCSTEPSTATUS | VARCHAR2 | Y | Scheduled Procedure Step Status (0040,0020) |
| 31 | REQUESTEDPROCEDURECODESQCV | VARCHAR2 | Y | Requested Protocol Code Sequence Code Value (0008,0100) |
| 32 | REQUESTEDPROCEDURECODESQCSD | VARCHAR2 | Y | Requested Protocol Code Sequence Coding Scheme Designator (0008,0102) |
| 33 | REQUESTEDPROCEDURECODESQCSV | VARCHAR2 | Y | Requested Protocol Code Sequence Coding Scheme Version (0008,0103) |
| 34 | REQUESTEDPROCEDURECOEDSQCM | VARCHAR2 | Y | Requested Protocol Code Sequence Code Meaning (0008,0104) |
| 35 | REFERENCEDSOPCLASSUID | VARCHAR2 | Y | Referenced SOP Class UID (0008,1150) |
| 36 | REFERENCEDSOPINSTANCEUID | VARCHAR2 | Y | Referenced SOP Instance UID (0008,1155) |
| 37 | REQUESTEDPROCEDUREPRIORITY | VARCHAR2 | Y | Requested Procedure Priority (0040,1003) |
| 38 | PATIENTTRANSPORTARRANGEMENTS | VARCHAR2 | Y | Patient Transport Arrangements (0040,1004) |
| 39 | ACCESSIONNUMBER | VARCHAR2 | Y | Accession Number (0008,0050) |
| 40 | REQUESTINGPHYSICIAN | VARCHAR2 | Y | Requesting Physician (0032,1032) |
| 41 | REFFERINGPHYSICIAN | VARCHAR2 | Y | Referring Physicians Name (0008,0090) |
| 42 | ADMISSIONID | VARCHAR2 | Y | Admission ID (0038,0010) |
| 43 | CURRENTPATIENTLOCATION | VARCHAR2 | Y | Current Patient Location (0038,0300) |
| 44 | RFPATIENTSQRFSOPCLASSUID | VARCHAR2 | Y | Referenced Patient Sequence -> Referenced SOP Class UID (0008,1150) |
| 45 | RFPATIENTSQRFINSTANCEUID | VARCHAR2 | Y | Referenced Patient Sequence -> Referenced SOP Instance UID (0008,1155) |
| 46 | SCHEDPROCSTEPID | VARCHAR2 | Y | Scheduled Procedure Step ID (0040, 0009) |
| 47 | ID_UNIDADE | NUMBER | Y |  |
| 48 | DONE | CHAR | Y |  |
| 49 | ATIVO | CHAR | Y |  |
| 50 | INSTITUTIONNAME | VARCHAR2 | Y |  |
| 51 | OPERATOR | VARCHAR2 | Y |  |
| 52 | CD_PEDIDO_HIS | NUMBER | Y |  |
| 53 | CD_ATENDIMENTO_HIS | NUMBER | Y |  |
| 54 | ID_SETOR | NUMBER | Y |  |
| 55 | SCHEDULEDPROTOCOLCODESEQUENCE | VARCHAR2 | Y |  |
| 56 | SCHEDULEDPROCEDURESTEPSEQUENCE | VARCHAR2 | Y |  |
| 57 | REQUESTEDPROCEDURECODESEQUENCE | VARCHAR2 | Y |  |
| 58 | REFERENCEDSTUDYSEQUENCE | VARCHAR2 | Y |  |
| 59 | REFERENCEDPATIENTSEQUENCE | VARCHAR2 | Y |  |

---

## MPACS.MWL_EXAMDESCRIPTION

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_UNIDADE | NUMBER | Y |  |
| 2 | DESCRIPTION | VARCHAR2 | Y |  |
| 3 | MODALITY | VARCHAR2 | Y |  |
| 4 | EXAMROOMDESC | VARCHAR2 | Y |  |
| 5 | AETDESCRIPTION | VARCHAR2 | Y |  |
| 6 | ATIVO | VARCHAR2 | Y |  |

---

## MPACS.MWL_EXAMROOM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_UNIDADE | NUMBER | N |  |
| 2 | NUMBERROOM | VARCHAR2 | N |  |
| 3 | DESCRIPTION | VARCHAR2 | N |  |
| 4 | LOCAL | VARCHAR2 | Y |  |

---

## MPACS.MWL_FIELDS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | AET | VARCHAR2 | Y | Client AET, Used for Filtering Results |
| 3 | GROUPNUMBER | VARCHAR2 | N | DICOM Attribute Group Number in Hex |
| 4 | ELEMENTNUMBER | VARCHAR2 | N | DICOM Attribute Element Number in Hex |
| 5 | FIELDNAME | VARCHAR2 | N | Name of the Field in Value Table |
| 6 | PARENTFIELD | NUMBER | N | ID of the Parent DataSet |
| 7 | VR | VARCHAR2 | N | DICOM VR |
| 8 | MATCHINGKEYTYPE | CHAR | N | If the Attribute is used for Matching |
| 9 | RETURNKEYTYPE | VARCHAR2 | N | If The Attribute Must be Returned if Requested |
| 10 | NOTUSEDINSELECT | NUMBER | N | If Included in the Select Statement |
| 11 | NOTUSEDINWHERE | NUMBER | N | If Included in the Where Statement |
| 12 | RELATEDFIELD | NUMBER | Y | Related Field ID |
| 13 | DESCRIPTION | VARCHAR2 | Y |  |

---

## MPACS.MWL_MODALITY

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | MODALITY | VARCHAR2 | N |  |
| 2 | DESCRIPTION | VARCHAR2 | N |  |
| 3 | ID_UNIDADE | NUMBER | N |  |
| 4 | ID_MODALIDADE_INTEGRA | NUMBER | Y |  |
| 5 | ID_MODALITY | NUMBER | Y |  |

---

## MPACS.MWL_REMOTEAETS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_UNIDADE | NUMBER | N |  |
| 2 | REMOTEAET | VARCHAR2 | N |  |
| 3 | IPADDRESS | VARCHAR2 | N |  |
| 4 | PORT | NUMBER | N |  |
| 5 | EQUIPMENT | VARCHAR2 | Y |  |
| 6 | MANUFACTURER | VARCHAR2 | Y |  |
| 7 | MODALITY | VARCHAR2 | N |  |
| 8 | GENERATESTUDYUID | NUMBER | Y |  |
| 9 | FILTERSETOR | NUMBER | Y |  |
| 10 | ALLOWREVERSENAME | NUMBER | N | Ativa a opção para mudar a ordem do nome no retorno da worklist |
| 11 | ID_SETOR | VARCHAR2 | Y |  |

---

## MPACS.MWL_REMOTEAETSFIELDS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_UNIDADE | NUMBER | N |  |
| 2 | REMOTEAET | VARCHAR2 | N |  |
| 3 | ID_FIELD | NUMBER | N |  |

---

## MPACS.PRINTSERVER_ACTION

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | DESCRIPTION | VARCHAR2 | Y |  |
| 3 | UNIDADE_ID | NUMBER | Y |  |

---

## MPACS.PRINTSERVER_CONFIG

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | MANUFACTURER | VARCHAR2 | N | (0008, 0070) Manufacturer |
| 2 | MANUFACTURERMODELNAME | VARCHAR2 | N | (0008, 1090) Manufacturers Model Name |
| 3 | PRINTERSTATUS | VARCHAR2 | N | (2110, 0010) Printer Status |
| 4 | PRINTERSTATUSINFO | VARCHAR2 | N | (2110, 0020) Printer Status Info |
| 5 | DEVICESERIALNUMBER | VARCHAR2 | N | (0018, 1000) Device Serial Number |
| 6 | PORTNUMBER | NUMBER | N | TCP Port Number To Listen |
| 7 | IMAGESTORAGELOCATION | VARCHAR2 | N | Where "Images To Print" are saved |
| 8 | LIFETIMEFORPRINTEDIMAGE | NUMBER | Y | Number of Days we keep the printed image before deleting them |
| 9 | LIFETIMEFORFAILEDIMAGE | NUMBER | Y | Number of Days we keep the failed image before deleting them |
| 10 | LOG | NUMBER | Y | 1 to Turn on the Logging |
| 11 | LOGLEVEL | NUMBER | Y | Level of Logging |
| 12 | LOGLOCATION | VARCHAR2 | Y | Location of the Log Files |
| 13 | LOGO | BLOB | Y |  |
| 14 | REQUESTJOB_TIMER | NUMBER | Y |  |
| 15 | WINDOWSPRINTERNAME | VARCHAR2 | Y |  |
| 16 | WINDOWSPAPERSIZE | NUMBER | Y |  |
| 17 | USERADMIN | VARCHAR2 | Y |  |
| 18 | PASSWORDADMIN | VARCHAR2 | Y |  |
| 19 | UNIDADE_ID | NUMBER | Y |  |
| 20 | IPADDRESS | VARCHAR2 | Y |  |
| 21 | ID | NUMBER | N |  |
| 22 | CONFIGID | VARCHAR2 | Y | Guid Id |
| 23 | VERSAO_DB | VARCHAR2 | Y |  |
| 24 | EQPTOLISTPRINTPAGE | VARCHAR2 | Y |  |
| 25 | EQPTOLISTPRINTPAGETIMEOUT | NUMBER | Y |  |
| 26 | HEADER | VARCHAR2 | Y |  |
| 27 | FOOTER | VARCHAR2 | Y |  |

---

## MPACS.PRINTSERVER_JOBS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | JOBID | VARCHAR2 | N | The Print Session UID, we group Images by Session UID |
| 2 | JOBDATETIME | DATE | N | Date and Time the Print Request is Received |
| 3 | COMPLETED | NUMBER | N | Indicated Whether Print Job has completed |
| 4 | REMOTEAET | VARCHAR2 | N |  |
| 5 | REMOTEIPADRESS | VARCHAR2 | N |  |
| 6 | REMOTEPORT | NUMBER | N |  |
| 7 | TOTALIMAGES | NUMBER | Y |  |
| 8 | COPIES | NUMBER | Y |  |
| 9 | PRIORITY | VARCHAR2 | Y |  |
| 10 | MEDIATYPE | VARCHAR2 | Y |  |
| 11 | DESTINATION | VARCHAR2 | Y |  |
| 12 | MAGNIFICATION | VARCHAR2 | Y |  |
| 13 | SMOOTHING | VARCHAR2 | Y |  |
| 14 | MAXDENSITY | NUMBER | Y |  |
| 15 | MINDENSITY | NUMBER | Y |  |
| 16 | BORDERDENSITY | VARCHAR2 | Y |  |
| 17 | TRIMPAPER | VARCHAR2 | Y |  |
| 18 | FILMSIZEID | VARCHAR2 | Y |  |
| 19 | ORIENTATION | VARCHAR2 | Y |  |
| 20 | LAYOUT | VARCHAR2 | Y |  |
| 21 | WPDEFAULT | VARCHAR2 | Y |  |
| 22 | WPSIZEDEFAULT | NUMBER | Y |  |
| 23 | WPFORMAT | VARCHAR2 | Y |  |
| 24 | WPORIENTATION | VARCHAR2 | Y |  |
| 25 | ACNUMBER | VARCHAR2 | Y |  |
| 26 | PATIENTNAME | VARCHAR2 | Y |  |
| 27 | PROCEDURENAME | VARCHAR2 | Y |  |
| 28 | ASSOCIATIONNUMBER | NUMBER | Y |  |
| 29 | UNIDADE_ID | NUMBER | Y |  |
| 30 | MODALITYNAME | VARCHAR2 | Y |  |
| 31 | PATIENTID | VARCHAR2 | Y |  |
| 32 | DESCRIPTIONEXAM | VARCHAR2 | Y | Nome do exame |

---

## MPACS.PRINTSERVER_JOBS_DETAIL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | JOBID | VARCHAR2 | N | The Print Session UID, we group Images by Session UID |
| 2 | FILENAME | VARCHAR2 | N | The Full Path to the Images Saved on Disk |
| 3 | COMPLETED | NUMBER | N | Indicated Whether Print Job has completed |
| 4 | IMAGENUMBER | NUMBER | Y | Sequential Number of the Image on Film |
| 5 | SOPCLASSUID | VARCHAR2 | Y |  |
| 6 | PAGENUMBER | NUMBER | Y |  |

---

## MPACS.PRINTSERVER_OCR_MAP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | OCR_ID | NUMBER | N |  |
| 2 | LINHA | NUMBER | Y |  |
| 3 | SALTO | NUMBER | Y |  |
| 4 | TAMANHO | NUMBER | Y |  |
| 5 | REGIAO | CHAR | Y |  |
| 6 | REMOTEAET | VARCHAR2 | Y |  |
| 7 | UNIDADE_ID | NUMBER | Y |  |
| 8 | INVERTER | NUMBER | Y |  |
| 9 | NUMERICO | NUMBER | Y |  |
| 10 | PREFIX_DICIONARIO | VARCHAR2 | Y |  |
| 11 | WHITE_LIST | VARCHAR2 | Y |  |
| 12 | RETANGLE_X | NUMBER | Y |  |
| 13 | RETANGLE_Y | NUMBER | Y |  |
| 14 | RETANGLE_WIDTH | NUMBER | Y |  |
| 15 | RETANGLE_HEIGHT | NUMBER | Y |  |
| 16 | ORIENTATION | VARCHAR2 | Y |  |
| 17 | LAYOUT | VARCHAR2 | Y |  |
| 18 | FILMSIZEID | VARCHAR2 | Y |  |
| 19 | PERCENT_BRIGHTNESS | NUMBER | N |  |

---

## MPACS.PRINTSERVER_PACS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | REMOTEAET | VARCHAR2 | N |  |
| 2 | IPADDRESS | CHAR | N |  |
| 3 | PORT | NUMBER | N |  |
| 4 | CALLINGAET | VARCHAR2 | N |  |
| 5 | UNIDADE_ID | NUMBER | Y |  |

---

## MPACS.PRINTSERVER_PRINTERDICOM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | REMOTEAET | VARCHAR2 | N |  |
| 2 | IPADDRESS | CHAR | N |  |
| 3 | PORT | NUMBER | N |  |
| 4 | CALLINGAET | VARCHAR2 | N |  |
| 5 | TIMEOUTSEC | NUMBER | N |  |
| 6 | DESCRIPTION | VARCHAR2 | Y |  |
| 7 | UNIDADE_ID | NUMBER | Y |  |

---

## MPACS.PRINTSERVER_PRINTERWINDOWS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NOME | VARCHAR2 | N |  |
| 2 | MARGEM_ESQUERDA | NUMBER | Y |  |
| 3 | MARGEM_DIREITA | NUMBER | Y |  |
| 4 | MARGEM_TOPO | NUMBER | Y |  |
| 5 | MARGEM_BASE | NUMBER | Y |  |
| 6 | MARGEM_LOGO | NUMBER | Y |  |

---

## MPACS.PRINTSERVER_QUALIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NM_IMPRESSORA | NVARCHAR2 | N |  |
| 3 | QTDE_BRILHO | NUMBER | Y |  |
| 4 | QTDE_CONTRASTE | NUMBER | Y |  |
| 5 | UNIDADE_ID | NUMBER | Y |  |
| 6 | REMOTEAET | NVARCHAR2 | Y |  |

---

## MPACS.PRINTSERVER_RULES

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | REMOTEAET | VARCHAR2 | N |  |
| 2 | REMOTEIPADRESS | VARCHAR2 | N |  |
| 3 | REMOTEPORT | NUMBER | N |  |
| 4 | COPIES | NUMBER | Y |  |
| 5 | PRIORITY | VARCHAR2 | Y |  |
| 6 | MEDIATYPE | VARCHAR2 | Y |  |
| 7 | DESTINATION | VARCHAR2 | Y |  |
| 8 | MAGNIFICATION | VARCHAR2 | Y |  |
| 9 | SMOOTHING | VARCHAR2 | Y |  |
| 10 | MAXDENSITY | NUMBER | Y |  |
| 11 | MINDENSITY | NUMBER | Y |  |
| 12 | BORDERDENSITY | VARCHAR2 | Y |  |
| 13 | TRIMPAPER | VARCHAR2 | Y |  |
| 14 | FILMSIZEID | VARCHAR2 | Y |  |
| 15 | ORIENTATION | VARCHAR2 | Y |  |
| 16 | LAYOUT | VARCHAR2 | Y |  |
| 17 | PRINTDICOM | VARCHAR2 | Y |  |
| 18 | WINDOWSPRINTERNAME | VARCHAR2 | Y |  |
| 19 | WINDOWSPAPERSIZE | VARCHAR2 | Y |  |
| 20 | ACTION | NUMBER | Y |  |
| 21 | UNIDADE_ID | NUMBER | Y |  |
| 22 | WINDOWSPAPERMARGIN | VARCHAR2 | Y |  |

---

## MPACS.PRINTSERVER_SOAP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | SOAP | VARCHAR2 | Y |  |
| 3 | DESCRICAO | VARCHAR2 | Y |  |

---

## MPACS.PRINTSERVER_UNIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | UNIDADE_ID | NUMBER | N |  |
| 2 | NM_UNIDADE | VARCHAR2 | Y |  |
| 3 | DS_UNIDADE | VARCHAR2 | Y |  |
| 4 | URL_UNIDADE | VARCHAR2 | Y |  |
| 5 | URL_LOGO | VARCHAR2 | Y |  |
| 6 | PATH_LOGO | VARCHAR2 | Y |  |

---

## MPACS.PRINTSERVER_USERS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | VARCHAR2 | Y |  |
| 3 | USUARIO | VARCHAR2 | Y |  |
| 4 | SENHA | VARCHAR2 | Y |  |
| 5 | UNIDADE_IDS | VARCHAR2 | Y |  |
| 6 | IS_ADMIN | CHAR | Y |  |
| 7 | CPF | VARCHAR2 | Y | CPF do usuario |
| 8 | SN_LOGIN_ONEPASS | CHAR | Y | N = Cliente ainda nao realizou acesso via MVONEPASS, S = Cliente ja realizou acesso via MVONEPASS |

---

## MPACS.PRINTSERVER_WORKLIST

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | REMOTEAET | VARCHAR2 | N |  |
| 2 | IPADDRESS | CHAR | N |  |
| 3 | PORT | NUMBER | N |  |
| 4 | CALLINGAET | VARCHAR2 | N |  |
| 5 | UNIDADE_ID | NUMBER | Y |  |

---

## MPACS.RS_INTEGRA_LAUDO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_INTEGRA | NUMBER | Y |  |
| 2 | TP_INTEGRACAO | CHAR | Y |  |
| 3 | DT_INTEGRACAO | DATE | Y |  |
| 4 | DT_CADASTRO | DATE | Y |  |
| 5 | TP_MOVIMENTO | CHAR | Y |  |
| 6 | MESSAGE_ID | VARCHAR2 | Y |  |
| 7 | ID_UNIDADE | VARCHAR2 | Y |  |
| 8 | DT_PEDIDO | VARCHAR2 | Y |  |
| 9 | NM_PROCEDIMENTO | VARCHAR2 | Y |  |
| 10 | ID_EXAME | VARCHAR2 | Y |  |
| 11 | NM_EXAME | VARCHAR2 | Y |  |
| 12 | CD_PRONTUARIO | VARCHAR2 | Y |  |
| 13 | CD_CONVENIO | VARCHAR2 | Y |  |
| 14 | NM_PACIENTE | VARCHAR2 | Y |  |
| 15 | DT_NASCIMENTO | DATE | Y |  |
| 16 | TP_SEXO | CHAR | Y |  |
| 17 | NM_SOLICITANTE | VARCHAR2 | Y |  |
| 18 | DS_CRM_SOLICITANTE | VARCHAR2 | Y |  |
| 19 | CD_ITEM_PEDIDO_HIS | VARCHAR2 | Y |  |
| 20 | NM_EXECUTANTE | VARCHAR2 | Y |  |
| 21 | DS_CRM | VARCHAR2 | Y |  |
| 22 | DS_LAUDO | CLOB | Y |  |
| 23 | DS_LAUDO_TXT | CLOB | Y |  |
| 24 | DT_LAUDO | DATE | Y |  |
| 25 | NM_LAUDO | VARCHAR2 | Y |  |

---

## MPACS.RS_VW_SETOR_EXECUTANTE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_SETOR_EXECUTANTE | NUMBER | Y |  |
| 2 | NM_SETOR_EXECUTANTE | CHAR | Y |  |

---

## MPACS.SERIESVIEW

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | SERIESUID | VARCHAR2 | N |  |
| 2 | STUDYUID_FKEY | VARCHAR2 | N |  |
| 3 | MODALITY | VARCHAR2 | N |  |
| 4 | SERIESNUMBER | NUMBER | Y |  |
| 5 | SERIESDESCRIPTION | VARCHAR2 | Y |  |
| 6 | LAUDADO | NUMBER | Y |  |
| 7 | LAUDO_ID | NUMBER | Y |  |
| 8 | ASSINADO | NUMBER | Y |  |
| 9 | WEBDICOM_AUTORIZADO | NUMBER | Y |  |
| 10 | WEBDICOM_DISPONIVEL | NUMBER | Y |  |
| 11 | ARQUIVADO | NUMBER | Y |  |
| 12 | TEMPORARIO | NUMBER | Y |  |
| 13 | POS_OFF | CHAR | Y |  |
| 14 | PATIENTID_FKEY | VARCHAR2 | Y |  |

---

## MPACS.STUDYSTUDYVIEW

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | PATIENTID | VARCHAR2 | Y |  |
| 2 | NAME_FIRST | VARCHAR2 | Y |  |
| 3 | NAME_MIDDLE | CHAR | Y |  |
| 4 | NAME_LAST | CHAR | Y |  |
| 5 | NAME_TITLE | CHAR | Y |  |
| 6 | DATEOFBIRTH | DATE | Y |  |
| 7 | SEX | VARCHAR2 | Y |  |
| 8 | OBITO | NUMBER | Y |  |
| 9 | INTERNADO | NUMBER | Y |  |
| 10 | STUDYUID | VARCHAR2 | N |  |
| 11 | PATIENTID_FKEY | VARCHAR2 | Y |  |
| 12 | STUDYDATE | DATE | N |  |
| 13 | STUDYTIME | DATE | N |  |
| 14 | ACCESSIONNUMBER | VARCHAR2 | Y |  |
| 15 | STUDYID | VARCHAR2 | Y |  |
| 16 | REFERRINGPHYSICIAN_FIRST | VARCHAR2 | Y |  |
| 17 | REFERRINGPHYSICIAN_MIDDLE | CHAR | Y |  |
| 18 | REFERRINGPHYSICIAN_LAST | CHAR | Y |  |
| 19 | REFERRINGPHYSICIAN_TITLE | CHAR | Y |  |
| 20 | STUDYDESCRIPTION | VARCHAR2 | Y |  |
| 21 | LAUDADO | NUMBER | Y |  |
| 22 | LAUDO_ID | NUMBER | Y |  |
| 23 | ASSINADO | NUMBER | Y |  |
| 24 | WEBDICOM_AUTORIZADO | NUMBER | Y |  |
| 25 | WEBDICOM_DISPONIVEL | NUMBER | Y |  |
| 26 | ARQUIVADO | NUMBER | Y |  |
| 27 | TEMPORARIO | NUMBER | Y |  |
| 28 | POS_OFF | CHAR | Y |  |
| 29 | SERVIDOR | CHAR | Y |  |
| 30 | SERVICO_ID_FKEY | NUMBER | Y |  |
| 31 | POS_OFFCONTROL | VARCHAR2 | Y |  |
| 32 | UNIDADE | VARCHAR2 | Y |  |
| 33 | UNIDADEFINAL | VARCHAR2 | Y |  |

---

## MPACS.VW_EXAMESTODAY

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | EXAMDATEANDTIME | DATE | Y |  |
| 2 | EXAMEDATAHORA | DATE | Y |  |
| 3 | EXAMID | VARCHAR2 | Y |  |
| 4 | EXAMDESCRIPTION | VARCHAR2 | Y |  |
| 5 | SCHEDULEDAET | VARCHAR2 | Y |  |
| 6 | ACCESSIONNUMBER | VARCHAR2 | Y |  |
| 7 | PATIENTID | VARCHAR2 | Y |  |
| 8 | FORENAME | VARCHAR2 | Y |  |
| 9 | SURNAME | CHAR | Y |  |
| 10 | TITLE | CHAR | Y |  |
| 11 | SEX | VARCHAR2 | Y |  |
| 12 | DATEOFBIRTH | DATE | Y |  |
| 13 | REFERRINGPHYSICIAN | CHAR | Y |  |
| 14 | PERFORMINGPHYSICIAN | CHAR | Y |  |
| 15 | MODALITY | VARCHAR2 | Y |  |
| 16 | EXAMROOM | CHAR | Y |  |
| 17 | STUDYUID | VARCHAR2 | Y |  |
| 18 | PROCEDUREID | VARCHAR2 | Y |  |
| 19 | PROCEDURESTEPID | VARCHAR2 | Y |  |
| 20 | PACIENTENOME | VARCHAR2 | Y |  |
| 21 | HOSPITALNAME | VARCHAR2 | Y |  |
| 22 | DONE | CHAR | Y |  |
| 23 | DATEDONE | VARCHAR2 | Y |  |
| 24 | CD_PEDIDO | NUMBER | Y |  |
| 25 | CD_ATENDIMENTO | NUMBER | Y |  |
| 26 | UND | NUMBER | Y |  |

---

## MPACS.VW_IMAGES

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | PATIENTID | VARCHAR2 | Y |  |
| 2 | ID_UNIDADE | NUMBER | N |  |
| 3 | STUDYUID | VARCHAR2 | N |  |
| 4 | STUDYTIME | DATE | N |  |
| 5 | STUDYDATE | DATE | N |  |
| 6 | SERIESUID | VARCHAR2 | N |  |
| 7 | SERIESNUMBER | NUMBER | Y |  |
| 8 | MODALITY | VARCHAR2 | N |  |
| 9 | SOPCLASSUID | VARCHAR2 | Y |  |
| 10 | INSTANCENUMBER | NUMBER | Y |  |
| 11 | INSTANCEUID | VARCHAR2 | N |  |
| 12 | FILENAME | VARCHAR2 | Y |  |

---

## MPACS.VW_SERIES

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | SERIESUID | VARCHAR2 | N |  |
| 2 | STUDYUID | VARCHAR2 | N |  |
| 3 | MODALITY | VARCHAR2 | N |  |
| 4 | SERIESNUMBER | NUMBER | Y |  |
| 5 | SERIESDESCRIPTION | VARCHAR2 | Y |  |

---

## MPACS.VW_SERIES_LIST_VIEWER

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | MODALITY | VARCHAR2 | Y |  |
| 2 | STUDYINSTANCEUID | VARCHAR2 | N |  |
| 3 | SERIES_UID | VARCHAR2 | N |  |
| 4 | PATIENTSNAME | VARCHAR2 | Y |  |
| 5 | PATIENTID | VARCHAR2 | Y |  |
| 6 | ISSUEROFPATIENTID | VARCHAR2 | Y |  |
| 7 | PATIENTSBIRTHDATE | DATE | Y |  |
| 8 | PATIENTSAGE | CHAR | Y |  |
| 9 | PATIENTSSEX | VARCHAR2 | Y |  |
| 10 | STUDYDATE | DATE | N |  |
| 11 | STUDYTIME | VARCHAR2 | Y |  |
| 12 | ACCESSIONNUMBER | VARCHAR2 | Y |  |
| 13 | STUDYID | VARCHAR2 | Y |  |
| 14 | STUDYDESCRIPTION | VARCHAR2 | Y |  |
| 15 | REFERRINGPHYSICIANSNAME | VARCHAR2 | Y |  |
| 16 | NUMBEROFSERIESRELATEDINSTANCES | NUMBER | Y |  |
| 17 | UNIDADE | NUMBER | N |  |
| 18 | SERIESNUMBER | NUMBER | Y |  |
| 19 | SERIESDESCRIPTION | VARCHAR2 | Y |  |

---

## MPACS.VW_STUDY

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | STUDYUID | VARCHAR2 | N |  |
| 2 | PATIENTID | VARCHAR2 | Y |  |
| 3 | PATIENTNAME | VARCHAR2 | Y |  |
| 4 | DATEOFBIRTH | DATE | Y |  |
| 5 | SEX | VARCHAR2 | Y |  |
| 6 | STUDYID | VARCHAR2 | Y |  |
| 7 | STUDYDESCRIPTION | VARCHAR2 | Y |  |
| 8 | STUDYDATE | DATE | N |  |
| 9 | STUDYTIME | DATE | N |  |
| 10 | ACCESSIONNUMBER | VARCHAR2 | Y |  |
| 11 | REFERRINGPHYSICIANNAME | VARCHAR2 | Y |  |
| 12 | MODALITY | VARCHAR2 | N |  |
| 13 | ID_UNIDADE | NUMBER | N |  |

---

## MPACS.VW_STUDY_LIST_SERIES_MAMMO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | MODALITY | VARCHAR2 | N |  |
| 2 | STUDYINSTANCEUID | VARCHAR2 | N |  |
| 3 | SERIESINSTANCEUID | VARCHAR2 | N |  |
| 4 | SERIESNUMBER | NUMBER | Y |  |
| 5 | SERIESDATE | DATE | Y |  |
| 6 | SERIESTIME | DATE | Y |  |
| 7 | SERIESDESCRIPTION | VARCHAR2 | Y |  |
| 8 | NUMBEROFSTUDYRELATEDINSTANCES | NUMBER | Y |  |
| 9 | ID_UNIDADE | NUMBER | N |  |

---

## MPACS.VW_STUDY_LIST_VIEWER

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | MODALITY | VARCHAR2 | Y |  |
| 2 | STUDYINSTANCEUID | VARCHAR2 | N |  |
| 3 | PATIENTSNAME | VARCHAR2 | Y |  |
| 4 | PATIENTID | VARCHAR2 | Y |  |
| 5 | ISSUEROFPATIENTID | VARCHAR2 | Y |  |
| 6 | PATIENTSBIRTHDATE | DATE | Y |  |
| 7 | PATIENTSAGE | CHAR | Y |  |
| 8 | PATIENTSSEX | VARCHAR2 | Y |  |
| 9 | STUDYDATE | DATE | N |  |
| 10 | STUDYTIME | VARCHAR2 | Y |  |
| 11 | ACCESSIONNUMBER | VARCHAR2 | Y |  |
| 12 | STUDYID | VARCHAR2 | Y |  |
| 13 | STUDYDESCRIPTION | VARCHAR2 | Y |  |
| 14 | REFERRINGPHYSICIANSNAME | VARCHAR2 | Y |  |
| 15 | NUMBEROFSTUDYRELATEDSERIES | NUMBER | Y |  |
| 16 | NUMBEROFSTUDYRELATEDINSTANCES | NUMBER | Y |  |
| 17 | STUDYSIZEINKB | NUMBER | Y |  |
| 18 | PATHABSOLUTE | CHAR | Y |  |
| 19 | PATHABSOLUTECOUNT | NUMBER | Y |  |
| 20 | ISLAUDO | NUMBER | Y |  |
| 21 | UNIDADE | NUMBER | N |  |

---

## MPACS.VW_STUDY_LIST_VIEWER_MAMMO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | MODALITY | VARCHAR2 | Y |  |
| 2 | STUDYINSTANCEUID | VARCHAR2 | N |  |
| 3 | PATIENTSNAME | VARCHAR2 | Y |  |
| 4 | PATIENTID | VARCHAR2 | Y |  |
| 5 | PATIENTSBIRTHDATE | DATE | Y |  |
| 6 | PATIENTSSEX | VARCHAR2 | Y |  |
| 7 | STUDYDATE | DATE | N |  |
| 8 | ACCESSIONNUMBER | VARCHAR2 | Y |  |
| 9 | STUDYID | VARCHAR2 | Y |  |
| 10 | STUDYDESCRIPTION | VARCHAR2 | Y |  |
| 11 | REFERRINGPHYSICIANSNAME | VARCHAR2 | Y |  |
| 12 | NUMBEROFSTUDYRELATEDSERIES | NUMBER | Y |  |
| 13 | NUMBEROFSTUDYRELATEDINSTANCES | NUMBER | Y |  |
| 14 | ISLAUDO | NUMBER | Y |  |
| 15 | ID_UNIDADE | NUMBER | N |  |

---

## MPACS.VW_STUDY_VIEWER

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | GUID | CHAR | Y |  |
| 2 | SERVERPARTITIONGUID | CHAR | Y |  |
| 3 | STUDYSTORAGEGUID | CHAR | Y |  |
| 4 | PATIENTGUID | CHAR | Y |  |
| 5 | SPECIFICCHARACTERSET | CHAR | Y |  |
| 6 | STUDYINSTANCEUID | VARCHAR2 | N |  |
| 7 | PATIENTSNAME | VARCHAR2 | Y |  |
| 8 | PATIENTID | VARCHAR2 | Y |  |
| 9 | ISSUEROFPATIENTID | VARCHAR2 | Y |  |
| 10 | PATIENTSBIRTHDATE | VARCHAR2 | Y |  |
| 11 | PATIENTSAGE | CHAR | Y |  |
| 12 | PATIENTSSEX | VARCHAR2 | Y |  |
| 13 | STUDYDATE | VARCHAR2 | Y |  |
| 14 | STUDYTIME | VARCHAR2 | Y |  |
| 15 | ACCESSIONNUMBER | VARCHAR2 | Y |  |
| 16 | STUDYID | VARCHAR2 | Y |  |
| 17 | STUDYDESCRIPTION | VARCHAR2 | Y |  |
| 18 | REFERRINGPHYSICIANSNAME | VARCHAR2 | Y |  |
| 19 | UNIDADE | VARCHAR2 | Y |  |
| 20 | PEDIDO | VARCHAR2 | Y |  |
| 21 | NUMBEROFSTUDYRELATEDSERIES | NUMBER | Y |  |
| 22 | NUMBEROFSTUDYRELATEDINSTANCES | NUMBER | Y |  |
| 23 | STUDYSIZEINKB | NUMBER | Y |  |
| 24 | PATHABSOLUTE | VARCHAR2 | Y |  |
| 25 | PATHABSOLUTECOUNT | NUMBER | Y |  |

---

## MPACSCRER.APPLICATIONLOG

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | GUID | NUMBER | N |  |
| 2 | HOST | VARCHAR2 | N |  |
| 3 | TIMESTAMP | DATE | N |  |
| 4 | LOGLEVEL | VARCHAR2 | N |  |
| 5 | THREAD | VARCHAR2 | Y |  |
| 6 | MESSAGE | VARCHAR2 | N |  |
| 7 | EXCEPTION | VARCHAR2 | Y |  |

---

## MPACSCRER.DB_HISTORY

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_HISTORY | NUMBER | N |  |
| 2 | NR_VERSAO | VARCHAR2 | N |  |
| 3 | NR_SEQUENCIA | NUMBER | N |  |
| 4 | NM_ARQUIVO | VARCHAR2 | N |  |
| 5 | DS_SQL | CLOB | N |  |
| 6 | DT_EXECUCAO | DATE | N |  |
| 7 | DS_STATUS | VARCHAR2 | N |  |
| 8 | DS_MENSAGEM | VARCHAR2 | Y |  |
| 9 | DS_RESPONSAVEL | VARCHAR2 | N |  |

---

## MPACSCRER.DS_ACCEPTEDSOPCLASSUIDS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_UNIDADE | NUMBER | N |  |
| 2 | REMOTEAET | VARCHAR2 | N |  |
| 3 | SOPCLASSUID | VARCHAR2 | N |  |
| 4 | SOPDESCRIPTION | VARCHAR2 | Y |  |

---

## MPACSCRER.DS_ACCEPTEDSTRANSFERSYNTAX

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_UNIDADE | NUMBER | N |  |
| 2 | REMOTEAET | VARCHAR2 | N |  |
| 3 | TRANSFERSYNTAXUID | VARCHAR2 | N |  |
| 4 | DSTRANSFERSYNTAXUID | VARCHAR2 | N |  |

---

## MPACSCRER.DS_BACKUPERRORS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | BACKUPSESSIONID | NUMBER | N |  |
| 3 | FILENAME | VARCHAR2 | N |  |
| 4 | ERROR | CLOB | N |  |
| 5 | TIMESTAMP | TIMESTAMP(6) | N |  |

---

## MPACSCRER.DS_BACKUPSESSIONS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | STARTTIME | TIMESTAMP(6) | Y |  |
| 3 | ENDTIME | TIMESTAMP(6) | Y |  |
| 4 | TOTALFILES | NUMBER | Y |  |
| 5 | TOTALSIZE | NUMBER | Y |  |
| 6 | SUCCESSFULFILES | NUMBER | Y |  |
| 7 | FAILEDFILES | NUMBER | Y |  |
| 8 | ISRUNNING | NUMBER | Y |  |

---

## MPACSCRER.DS_CONFIGNAMES

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_UNIDADE | NUMBER | N |  |
| 2 | CONFIG_NAME | VARCHAR2 | N | The name of the DICOM Service Instance |

---

## MPACSCRER.DS_CONFIG_VIVACE_CONNECT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_CONFIG_VIVACE_CONNECT | NUMBER | N |  |
| 2 | TP_AUTHENTICATION | NUMBER | N |  |
| 3 | TP_STORAGE_PREFERENTIAL | NUMBER | N |  |
| 4 | TP_PATH_PREFERENTIAL | NUMBER | N |  |
| 5 | SN_REGISTER_LOG | CHAR | N |  |
| 6 | SN_VIEW_STUDY_WITHOUT_ACNUMBER | CHAR | N |  |
| 7 | SN_ALLOW_DOWNLOAD_MOBILE | CHAR | N |  |
| 8 | SN_RESTRICT_SECTOR | CHAR | N |  |

---

## MPACSCRER.DS_FEDERATION

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_FEDERATION | NUMBER | N |  |
| 2 | ID_UNIDADE | NUMBER | N |  |
| 3 | URL_FEDERATION | VARCHAR2 | N |  |
| 4 | TYPE_FEDERATION | NUMBER | N |  |
| 5 | CLIENT_SECRET | VARCHAR2 | Y |  |
| 6 | CLIENT_ID | VARCHAR2 | Y |  |
| 7 | ACTIVE | NUMBER | N |  |

---

## MPACSCRER.DS_FIELDS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | FIELDID | NUMBER | N | Row ID |
| 2 | GROUPID | NUMBER | N | DICOM Group Number |
| 3 | ELEMENTID | NUMBER | N | DICOM Element Number |
| 4 | FIELDNAME | VARCHAR2 | N | Name of the DICOM Attribute |
| 5 | FIELDSOURCE | VARCHAR2 | N | Source of the DICOM Attribute - Where we get it from |
| 6 | FIELDMATCH | VARCHAR2 | Y | Whether the Attribute is used for Matching in C-FIND |
| 7 | FORMATCHING | NUMBER | N | Whether the Attribute is used for Matching in C-FIND |
| 8 | FORSTORING | NUMBER | N | Whether the Attribute is stored in the Database when image arrives |
| 9 | ISNAME | NUMBER | N | Whether the attributes VR is PN |
| 10 | ISDATE | NUMBER | N | Whether the Attributes VR is DT/DA |
| 11 | ISTIME | NUMBER | N | Whether the Attributes VR is TM |
| 12 | FILENAME | NUMBER | N | Full path to the stored images |
| 13 | SORTORDER | NUMBER | N | Sort order |
| 14 | RETRIEVESORT | NUMBER | Y | Whether the attribute is used for sorting when being retrieved |
| 15 | PATIENTLEVEL | NUMBER | N | Whether the Attribute is Patient Level Attribute |
| 16 | STUDYLEVEL | NUMBER | N | Whether the Attribute is Study Level Attribute |
| 17 | SERIESLEVEL | NUMBER | N | Whether the Attribute is Series Level Attribute |
| 18 | IMAGELEVEL | NUMBER | N | Whether the Attribute is Image/Instance Level Attribute |

---

## MPACSCRER.DS_FTP_BOX

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_FTP_BOX | NUMBER | N |  |
| 2 | DS_DESCRIPTION | VARCHAR2 | Y |  |
| 3 | DS_FTP_URL | VARCHAR2 | Y |  |
| 4 | NM_USER_NAME | VARCHAR2 | Y |  |
| 5 | DS_PASSWORD | VARCHAR2 | Y |  |
| 6 | NR_PORT | NUMBER | Y |  |
| 7 | DS_FOLDER | VARCHAR2 | Y |  |
| 8 | ID_UNIDADE | NUMBER | Y |  |
| 9 | TRANSFERSYNTAXUID | VARCHAR2 | Y |  |
| 10 | DS_PROVIDER | VARCHAR2 | Y |  |
| 11 | DS_USERID | VARCHAR2 | Y |  |
| 12 | DS_EMAIL | VARCHAR2 | Y |  |
| 13 | DS_TOKEN | VARCHAR2 | Y |  |
| 14 | TP_ENABLESSL | NUMBER | Y |  |

---

## MPACSCRER.DS_FULLVIEW

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_UNIDADE | NUMBER | N |  |
| 2 | STUDY_UID | VARCHAR2 | N |  |
| 3 | SERIES_UID | VARCHAR2 | N |  |
| 4 | INSTANCEUID | VARCHAR2 | N |  |
| 5 | SOPCLASSUID | VARCHAR2 | Y |  |
| 6 | INSTANCENUMBER | NUMBER | Y |  |
| 7 | IMAGETYPE | VARCHAR2 | Y |  |
| 8 | ECHONUMBERS | VARCHAR2 | Y |  |
| 9 | ACQUISITIONNUMBER | VARCHAR2 | Y |  |
| 10 | SLICELOCATION | VARCHAR2 | Y |  |
| 11 | SLICETHICKNESS | VARCHAR2 | Y |  |
| 12 | IMAGEORIENTATIONPATIENT | VARCHAR2 | Y |  |
| 13 | IMAGEPOSITIONPATIENT | VARCHAR2 | Y |  |
| 14 | IMAGEROWS | NUMBER | Y |  |
| 15 | IMAGECOLUMNS | NUMBER | Y |  |
| 16 | NUMBEROFFRAMES | NUMBER | Y |  |
| 17 | STUDYTIME | DATE | N |  |
| 18 | ALIAS_PATH_NAME | VARCHAR2 | Y |  |
| 19 | ALIAS_PATH_CENTER | VARCHAR2 | Y |  |
| 20 | FULLFILENAME | VARCHAR2 | Y |  |
| 21 | FILENAME | VARCHAR2 | N |  |
| 22 | ACCESSIONNUMBER | VARCHAR2 | Y |  |
| 23 | SERIESDESCRIPTION | VARCHAR2 | Y |  |
| 24 | STUDYDESCRIPTION | VARCHAR2 | Y |  |
| 25 | REFERRINGPHYSICIANSNAME | VARCHAR2 | Y |  |
| 26 | MODALITY | VARCHAR2 | N |  |
| 27 | PATIENTID_FKEY | VARCHAR2 | N |  |
| 28 | SERIESDATE | DATE | Y |  |
| 29 | SERIESTIME | DATE | Y |  |
| 30 | OPERATORSNAME | VARCHAR2 | Y |  |
| 31 | REFERRINGPHYSICIAN_DICOM | VARCHAR2 | Y |  |
| 32 | REMOTEAET | VARCHAR2 | Y |  |
| 33 | STUDYID | VARCHAR2 | Y |  |
| 34 | SPECIFICCHARACTERSET | VARCHAR2 | Y |  |
| 35 | PATIENTSNAME | VARCHAR2 | Y |  |
| 36 | PATIENTID | VARCHAR2 | N |  |
| 37 | PATIENTSBIRTHDATE | DATE | Y |  |
| 38 | PATIENTSSEX | VARCHAR2 | Y |  |
| 39 | STUDYDATE | DATE | N |  |
| 40 | SERIESNUMBER | NUMBER | Y |  |
| 41 | IMAGEKEY | NUMBER | Y |  |
| 42 | NUMBEROFSERIESRELATEDINSTANCES | NUMBER | Y |  |
| 43 | NUMBEROFSTUDYRELATEDSERIES | NUMBER | Y |  |
| 44 | NUMBEROFSTUDYRELATEDINSTANCES | NUMBER | Y |  |
| 45 | MODALITIESINSTUDY | VARCHAR2 | N |  |
| 46 | SIZEONDISK | NUMBER | Y |  |

---

## MPACSCRER.DS_FULLVIEW_PD

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_UNIDADE | NUMBER | N |  |
| 2 | STUDY_UID | VARCHAR2 | N |  |
| 3 | SERIES_UID | VARCHAR2 | N |  |
| 4 | INSTANCEUID | VARCHAR2 | N |  |
| 5 | SOPCLASSUID | VARCHAR2 | Y |  |
| 6 | INSTANCENUMBER | NUMBER | Y |  |
| 7 | IMAGETYPE | VARCHAR2 | Y |  |
| 8 | ECHONUMBERS | VARCHAR2 | Y |  |
| 9 | ACQUISITIONNUMBER | VARCHAR2 | Y |  |
| 10 | SLICELOCATION | VARCHAR2 | Y |  |
| 11 | SLICETHICKNESS | VARCHAR2 | Y |  |
| 12 | IMAGEORIENTATIONPATIENT | VARCHAR2 | Y |  |
| 13 | IMAGEPOSITIONPATIENT | VARCHAR2 | Y |  |
| 14 | IMAGEROWS | NUMBER | Y |  |
| 15 | IMAGECOLUMNS | NUMBER | Y |  |
| 16 | NUMBEROFFRAMES | NUMBER | Y |  |
| 17 | STUDYTIME | DATE | N |  |
| 18 | ALIAS_PATH_NAME | VARCHAR2 | Y |  |
| 19 | ALIAS_PATH_CENTER | VARCHAR2 | Y |  |
| 20 | FULLFILENAME | VARCHAR2 | Y |  |
| 21 | FILENAME | VARCHAR2 | N |  |
| 22 | ACCESSIONNUMBER | VARCHAR2 | Y |  |
| 23 | SERIESDESCRIPTION | VARCHAR2 | Y |  |
| 24 | STUDYDESCRIPTION | VARCHAR2 | Y |  |
| 25 | REFERRINGPHYSICIANSNAME | VARCHAR2 | Y |  |
| 26 | MODALITY | VARCHAR2 | N |  |
| 27 | PATIENTID_FKEY | VARCHAR2 | N |  |
| 28 | SERIESDATE | DATE | Y |  |
| 29 | SERIESTIME | DATE | Y |  |
| 30 | OPERATORSNAME | VARCHAR2 | Y |  |
| 31 | REFERRINGPHYSICIAN_DICOM | VARCHAR2 | Y |  |
| 32 | REMOTEAET | VARCHAR2 | Y |  |
| 33 | STUDYID | VARCHAR2 | Y |  |
| 34 | SPECIFICCHARACTERSET | VARCHAR2 | Y |  |
| 35 | PATIENTSNAME | VARCHAR2 | Y |  |
| 36 | PATIENTID | VARCHAR2 | N |  |
| 37 | PATIENTSBIRTHDATE | DATE | Y |  |
| 38 | PATIENTSSEX | VARCHAR2 | Y |  |
| 39 | STUDYDATE | DATE | N |  |
| 40 | SERIESNUMBER | NUMBER | Y |  |
| 41 | IMAGEKEY | NUMBER | Y |  |
| 42 | NUMBEROFSERIESRELATEDINSTANCES | NUMBER | Y |  |
| 43 | NUMBEROFSTUDYRELATEDSERIES | NUMBER | Y |  |
| 44 | NUMBEROFSTUDYRELATEDINSTANCES | NUMBER | Y |  |
| 45 | MODALITIESINSTUDY | VARCHAR2 | N |  |
| 46 | SIZEONDISK | NUMBER | Y |  |

---

## MPACSCRER.DS_GENERALCONFIGURATION

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_UNIDADE | NUMBER | N |  |
| 2 | CONFIG_NAME | VARCHAR2 | N | The name of the Server "Instance" |
| 3 | IMPLEMENTATIONNAME | CHAR | N | The Implementation Name of the DICOM Server Instance |
| 4 | IMPLEMENTATIONUID | CHAR | N | The Implementation UID of the DICOM Server Instance |
| 5 | LOCALAET | VARCHAR2 | N | DICOM AET of this DICOM Server Instance |
| 6 | STORAGECOMMIT_INTERVAL | VARCHAR2 | N | The interval in Minutes between thread checking StorageCommitRequests |
| 7 | STORAGECOMMIT_LIFETIME | VARCHAR2 | N | Number of Days for StorageCommitment Request - after 4 days of re-trying will send Failure status... |
| 8 | ALLOWNULLACCESSIONNUMBER | NUMBER | N |  |
| 9 | ID_PATH_NAME | NUMBER | N |  |
| 10 | TRANSFERSYNTAXUID | VARCHAR2 | Y |  |
| 11 | REPLACETRANSFERSYNTAXUID | NUMBER | N |  |
| 12 | ORDERINSTANCEUID | NUMBER | N |  |
| 13 | CHECKINTEGRITY | NUMBER | N |  |
| 14 | MAXNUMBEROFRECORDSPERRESPONSE | NUMBER | Y |  |
| 15 | ALLOWMULTISTORAGE | NUMBER | N |  |
| 16 | REPLACESIZEONDISK | NUMBER | N |  |
| 17 | ALLOWAUTOROUTER | NUMBER | N |  |
| 18 | ROUTERREQUEST_INTERVAL | NUMBER | N |  |
| 19 | ALLOWDICOMXML | NUMBER | Y |  |
| 20 | AUTOROUTERSTART | DATE | Y |  |
| 21 | AUTOROUTEREND | DATE | Y |  |
| 22 | ALLOWPOSTPROCESSOR | NUMBER | Y |  |
| 23 | POSTPROCESSORFILE | VARCHAR2 | Y |  |
| 24 | POSTPROCESSOR_INTERVAL | NUMBER | Y |  |

---

## MPACSCRER.DS_GENERATION_TOKEN

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_GENERATION_TOKEN | NUMBER | N |  |
| 2 | ID_CONFIG_VIVACE_CONNECT | NUMBER | N |  |
| 3 | NM_REGISTER_TOKEN | VARCHAR2 | Y |  |
| 4 | DS_CLIENT_ID | VARCHAR2 | Y |  |
| 5 | DS_CLIENT_SECRET | VARCHAR2 | Y |  |
| 6 | ID_USER_GENERATION | NUMBER | Y |  |

---

## MPACSCRER.DS_IMAGEJOBS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_IMAGEJOBS | NUMBER | N |  |
| 2 | ID_JOBCREATIONUSER | NUMBER | Y |  |
| 3 | DT_JOBCREATION | DATE | N |  |
| 4 | DT_JOBEXECUTION | DATE | Y |  |
| 5 | TP_JOBSTATUS | NUMBER | N |  |
| 6 | TP_JOBTYPE | CHAR | N | D -> Delete, E -> Edit, S -> Send |
| 7 | DS_SERIESUID | VARCHAR2 | Y |  |
| 8 | DS_STUDYUID | VARCHAR2 | Y |  |
| 9 | DS_MODALITY | VARCHAR2 | Y |  |
| 10 | DS_JOBERRORDESCRIPTION | CLOB | Y |  |
| 11 | QT_NUMBEROFIMAGES | NUMBER | Y |  |
| 12 | QT_SIZEONDISK | NUMBER | Y |  |
| 13 | ID_UNIDADE | NUMBER | Y |  |
| 14 | ID_RULE | NUMBER | Y |  |
| 15 | ID_PATH_NAME | NUMBER | Y |  |
| 16 | ID_FTP_BOX | NUMBER | Y |  |
| 17 | DT_INITIAL | DATE | Y |  |
| 18 | DT_FINAL | DATE | Y |  |
| 19 | VL_SEND_PERCENTUAL | NUMBER | Y |  |
| 20 | CONFIG_NAME | VARCHAR2 | Y |  |
| 21 | REMOTE_AET | VARCHAR2 | Y |  |

---

## MPACSCRER.DS_IMAGEJOBS_DATA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_IMAGEJOBS_DATA | NUMBER | N |  |
| 2 | ID_IMAGEJOBS | NUMBER | Y |  |
| 3 | DS_STUDY_DESCRIPTION | VARCHAR2 | Y |  |
| 4 | ID_PATIENT | VARCHAR2 | Y |  |
| 5 | DS_PATIENTNAME_DICOM | VARCHAR2 | Y |  |
| 6 | DT_BIRTH | DATE | Y |  |
| 7 | TP_SEX | CHAR | N |  |
| 8 | DS_ACCESSIONNUMBER | VARCHAR2 | Y |  |
| 9 | DT_STUDY | DATE | Y |  |

---

## MPACSCRER.DS_IMAGERETRIEVALVIEW

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | PATIENT_ID | VARCHAR2 | N |  |
| 2 | STUDY_UID | VARCHAR2 | N |  |
| 3 | ID_PATH_NAME | NUMBER | N |  |
| 4 | ID_PATH_CENTER | NUMBER | Y |  |
| 5 | SERIES_UID | VARCHAR2 | N |  |
| 6 | INSTANCEUID | VARCHAR2 | N |  |
| 7 | FILENAME | VARCHAR2 | Y |  |
| 8 | FILENAMEDESTINO | VARCHAR2 | Y |  |
| 9 | STUDYDATE | DATE | N |  |
| 10 | SERIESNUMBER | NUMBER | Y |  |
| 11 | INSTANCENUMBER | NUMBER | Y |  |
| 12 | STUDYTIME | DATE | N |  |
| 13 | SOPCLASSUID | VARCHAR2 | Y |  |
| 14 | ID_UNIDADE | NUMBER | N |  |
| 15 | MODALITY | VARCHAR2 | N |  |
| 16 | ACCESSIONNUMBER | VARCHAR2 | Y |  |
| 17 | SERIESDESCRIPTION | VARCHAR2 | Y |  |
| 18 | STUDYDESCRIPTION | VARCHAR2 | Y |  |
| 19 | IMAGEKEY | NUMBER | Y |  |
| 20 | DISK_CLIENTID | VARCHAR2 | Y |  |
| 21 | DISK_REGION | VARCHAR2 | Y |  |
| 22 | DISK_BUCKET | VARCHAR2 | Y |  |
| 23 | DISK_SECRET | VARCHAR2 | Y |  |
| 24 | PATH_TYPE | NUMBER | N |  |

---

## MPACSCRER.DS_IMAGERETRIEVALVIEW_AC

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | PATIENT_ID | VARCHAR2 | N |  |
| 2 | STUDY_UID | VARCHAR2 | N |  |
| 3 | SERIES_UID | VARCHAR2 | N |  |
| 4 | INSTANCEUID | VARCHAR2 | N |  |
| 5 | FILENAME | VARCHAR2 | Y |  |
| 6 | STUDYDATE | DATE | N |  |
| 7 | SERIESNUMBER | NUMBER | Y |  |
| 8 | INSTANCENUMBER | NUMBER | Y |  |
| 9 | STUDYTIME | DATE | N |  |
| 10 | SOPCLASSUID | VARCHAR2 | Y |  |
| 11 | ID_UNIDADE | NUMBER | N |  |

---

## MPACSCRER.DS_IMAGERETRIEVALVIEW_BKP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | PATIENT_ID | VARCHAR2 | N |  |
| 2 | STUDY_UID | VARCHAR2 | N |  |
| 3 | SERIES_UID | VARCHAR2 | N |  |
| 4 | INSTANCEUID | VARCHAR2 | N |  |
| 5 | FILENAME | VARCHAR2 | Y |  |
| 6 | FILENAMEDESTINO | VARCHAR2 | Y |  |
| 7 | STUDYDATE | DATE | N |  |
| 8 | SERIESNUMBER | NUMBER | Y |  |
| 9 | INSTANCENUMBER | NUMBER | Y |  |
| 10 | STUDYTIME | DATE | N |  |
| 11 | SOPCLASSUID | VARCHAR2 | Y |  |
| 12 | ID_UNIDADE | NUMBER | N |  |
| 13 | MODALITY | VARCHAR2 | N |  |
| 14 | ACCESSIONNUMBER | VARCHAR2 | Y |  |
| 15 | SERIESDESCRIPTION | VARCHAR2 | Y |  |
| 16 | STUDYDESCRIPTION | VARCHAR2 | Y |  |

---

## MPACSCRER.DS_IMAGERETRIEVALVIEW_IDX

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | PATIENT_ID | VARCHAR2 | N |  |
| 2 | STUDY_UID | VARCHAR2 | N |  |
| 3 | SERIES_UID | VARCHAR2 | N |  |
| 4 | INSTANCEUID | VARCHAR2 | N |  |
| 5 | FILENAME | VARCHAR2 | Y |  |
| 6 | FILENAMEDESTINO | VARCHAR2 | Y |  |
| 7 | STUDYDATE | DATE | N |  |
| 8 | SERIESNUMBER | NUMBER | Y |  |
| 9 | INSTANCENUMBER | NUMBER | Y |  |
| 10 | STUDYTIME | DATE | N |  |
| 11 | SOPCLASSUID | VARCHAR2 | Y |  |
| 12 | ID_UNIDADE | NUMBER | N |  |
| 13 | MODALITY | VARCHAR2 | N |  |

---

## MPACSCRER.DS_IMAGERETRIEVALVIEW_IDX_DC

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | PATIENT_ID | VARCHAR2 | N |  |
| 2 | STUDY_UID | VARCHAR2 | N |  |
| 3 | SERIES_UID | VARCHAR2 | N |  |
| 4 | INSTANCEUID | VARCHAR2 | N |  |
| 5 | FILENAME | VARCHAR2 | Y |  |
| 6 | FILENAMEDESTINO | VARCHAR2 | Y |  |
| 7 | STUDYDATE | DATE | N |  |
| 8 | SERIESNUMBER | NUMBER | Y |  |
| 9 | INSTANCENUMBER | NUMBER | Y |  |
| 10 | STUDYTIME | DATE | N |  |
| 11 | SOPCLASSUID | VARCHAR2 | Y |  |
| 12 | ID_UNIDADE | NUMBER | N |  |
| 13 | MODALITY | VARCHAR2 | N |  |

---

## MPACSCRER.DS_IMAGERETRIEVALVIEW_PD

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | PATIENT_ID | VARCHAR2 | N |  |
| 2 | STUDY_UID | VARCHAR2 | N |  |
| 3 | ID_PATH_NAME | NUMBER | N |  |
| 4 | ID_PATH_CENTER | NUMBER | Y |  |
| 5 | SERIES_UID | VARCHAR2 | N |  |
| 6 | INSTANCEUID | VARCHAR2 | N |  |
| 7 | FILENAME | VARCHAR2 | Y |  |
| 8 | FILENAMEDESTINO | VARCHAR2 | Y |  |
| 9 | STUDYDATE | DATE | N |  |
| 10 | SERIESNUMBER | NUMBER | Y |  |
| 11 | INSTANCENUMBER | NUMBER | Y |  |
| 12 | STUDYTIME | DATE | N |  |
| 13 | SOPCLASSUID | VARCHAR2 | Y |  |
| 14 | ID_UNIDADE | NUMBER | N |  |
| 15 | MODALITY | VARCHAR2 | N |  |
| 16 | ACCESSIONNUMBER | VARCHAR2 | Y |  |
| 17 | SERIESDESCRIPTION | VARCHAR2 | Y |  |
| 18 | STUDYDESCRIPTION | VARCHAR2 | Y |  |
| 19 | IMAGEKEY | NUMBER | Y |  |
| 20 | DISK_CLIENTID | VARCHAR2 | Y |  |
| 21 | DISK_REGION | VARCHAR2 | Y |  |
| 22 | DISK_BUCKET | VARCHAR2 | Y |  |
| 23 | DISK_SECRET | VARCHAR2 | Y |  |
| 24 | DISK_ENDPOINT | VARCHAR2 | Y |  |
| 25 | PATH_TYPE | NUMBER | N |  |

---

## MPACSCRER.DS_IMAGERETRIEVALVIEW_VIEWER

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_UNIDADE | NUMBER | N |  |
| 2 | STUDYUID_FKEY | VARCHAR2 | N |  |
| 3 | SERIESUID_FKEY | VARCHAR2 | N |  |
| 4 | INSTANCEUID | VARCHAR2 | N |  |
| 5 | SOPCLASSUID | VARCHAR2 | Y |  |
| 6 | INSTANCENUMBER | NUMBER | Y |  |
| 7 | IMAGETYPE | VARCHAR2 | Y |  |
| 8 | ECHONUMBERS | VARCHAR2 | Y |  |
| 9 | ACQUISITIONNUMBER | VARCHAR2 | Y |  |
| 10 | SLICELOCATION | VARCHAR2 | Y |  |
| 11 | SLICETHICKNESS | VARCHAR2 | Y |  |
| 12 | IMAGEORIENTATIONPATIENT | VARCHAR2 | Y |  |
| 13 | IMAGEPOSITIONPATIENT | VARCHAR2 | Y |  |
| 14 | IMAGEROWS | NUMBER | Y |  |
| 15 | IMAGECOLUMNS | NUMBER | Y |  |
| 16 | NUMBEROFFRAMES | NUMBER | Y |  |
| 17 | STUDYTIME | DATE | N |  |
| 18 | ALIAS_PATH_NAME | VARCHAR2 | Y |  |
| 19 | ALIAS_PATH_CENTER | VARCHAR2 | Y |  |
| 20 | FILENAME | VARCHAR2 | N |  |
| 21 | ACCESSIONNUMBER | VARCHAR2 | Y |  |
| 22 | SERIESDESCRIPTION | VARCHAR2 | Y |  |
| 23 | STUDYDESCRIPTION | VARCHAR2 | Y |  |
| 24 | MODALITY | VARCHAR2 | N |  |
| 25 | PATIENTID_FKEY | VARCHAR2 | N |  |
| 26 | SERIESDATE | DATE | Y |  |
| 27 | SERIESTIME | DATE | Y |  |
| 28 | OPERATORSNAME | VARCHAR2 | Y |  |
| 29 | REFERRINGPHYSICIAN_DICOM | VARCHAR2 | Y |  |
| 30 | REMOTEAET | VARCHAR2 | Y |  |
| 31 | STUDYID | VARCHAR2 | Y |  |
| 32 | PATIENTNAME_DICOM | VARCHAR2 | Y |  |
| 33 | DATEOFBIRTH | DATE | Y |  |
| 34 | SEX | VARCHAR2 | Y |  |
| 35 | STUDYDATE | DATE | N |  |
| 36 | SERIESNUMBER | NUMBER | Y |  |
| 37 | IMAGEKEY | NUMBER | Y |  |
| 38 | SIZEONDISK | NUMBER | Y |  |
| 39 | ID_PATH_NAME | NUMBER | N |  |
| 40 | ID_PATH_CENTER | NUMBER | N |  |

---

## MPACSCRER.DS_IMAGERETRIEVALVIEW_VIEWER_PD

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_UNIDADE | NUMBER | N |  |
| 2 | STUDYUID_FKEY | VARCHAR2 | N |  |
| 3 | SERIESUID_FKEY | VARCHAR2 | N |  |
| 4 | INSTANCEUID | VARCHAR2 | N |  |
| 5 | SOPCLASSUID | VARCHAR2 | Y |  |
| 6 | INSTANCENUMBER | NUMBER | Y |  |
| 7 | IMAGETYPE | VARCHAR2 | Y |  |
| 8 | ECHONUMBERS | VARCHAR2 | Y |  |
| 9 | ACQUISITIONNUMBER | VARCHAR2 | Y |  |
| 10 | SLICELOCATION | VARCHAR2 | Y |  |
| 11 | SLICETHICKNESS | VARCHAR2 | Y |  |
| 12 | IMAGEORIENTATIONPATIENT | VARCHAR2 | Y |  |
| 13 | IMAGEPOSITIONPATIENT | VARCHAR2 | Y |  |
| 14 | IMAGEROWS | NUMBER | Y |  |
| 15 | IMAGECOLUMNS | NUMBER | Y |  |
| 16 | NUMBEROFFRAMES | NUMBER | Y |  |
| 17 | STUDYTIME | DATE | N |  |
| 18 | STUDYDATE | DATE | N |  |
| 19 | ALIAS_PATH_NAME | VARCHAR2 | Y |  |
| 20 | ALIAS_PATH_CENTER | VARCHAR2 | Y |  |
| 21 | FILENAME | VARCHAR2 | N |  |
| 22 | ACCESSIONNUMBER | VARCHAR2 | Y |  |
| 23 | SERIESDESCRIPTION | VARCHAR2 | Y |  |
| 24 | STUDYDESCRIPTION | VARCHAR2 | Y |  |
| 25 | MODALITY | VARCHAR2 | N |  |
| 26 | PATIENTID_FKEY | VARCHAR2 | N |  |
| 27 | SERIESDATE | DATE | Y |  |
| 28 | SERIESTIME | DATE | Y |  |
| 29 | OPERATORSNAME | VARCHAR2 | Y |  |
| 30 | REFERRINGPHYSICIAN_DICOM | VARCHAR2 | Y |  |
| 31 | REMOTEAET | VARCHAR2 | Y |  |
| 32 | STUDYID | VARCHAR2 | Y |  |
| 33 | PATIENTNAME_DICOM | VARCHAR2 | Y |  |
| 34 | DATEOFBIRTH | DATE | Y |  |
| 35 | SEX | VARCHAR2 | Y |  |
| 36 | IMAGEKEY | NUMBER | Y |  |
| 37 | SERIESNUMBER | NUMBER | Y |  |
| 38 | SIZEONDISK | NUMBER | Y |  |
| 39 | ID_PATH_NAME | NUMBER | N |  |
| 40 | ID_PATH_CENTER | NUMBER | Y |  |
| 41 | PATH_TYPE | NUMBER | N |  |
| 42 | DISK_CLIENTID | VARCHAR2 | Y |  |
| 43 | DISK_SECRET | VARCHAR2 | Y |  |
| 44 | DISK_REGION | VARCHAR2 | Y |  |
| 45 | DISK_BUCKET | VARCHAR2 | Y |  |
| 46 | DISK_ENDPOINT | VARCHAR2 | Y |  |

---

## MPACSCRER.DS_IMAGETABLE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_UNIDADE | NUMBER | N |  |
| 2 | INSTANCEUID | VARCHAR2 | N | SOP Instance UID of the Image |
| 3 | SERIESUID_FKEY | VARCHAR2 | N | Series UID, Foreign Key to the SeriesTable |
| 4 | INSTANCENUMBER | NUMBER | Y | Image/Instance Number of the Image |
| 5 | ID_PATH_NAME | NUMBER | N |  |
| 6 | FILENAME | VARCHAR2 | N | Full file path to the image received/stored |
| 7 | SOPCLASSUID | VARCHAR2 | Y | DICOM SOP Class UID of the Image |
| 8 | RECEIVED | NUMBER | N | Indicates whether the image has been successfully Received/Stored |
| 9 | SAFE | NUMBER | N | Indicate whether StorageCommitment has been successful on the image |
| 10 | SIZEONDISK | NUMBER | Y |  |
| 11 | STUDYUID_FKEY | VARCHAR2 | N |  |
| 12 | POS_OFF | VARCHAR2 | Y |  |
| 13 | IMAGEKEY | NUMBER | Y |  |
| 14 | ARQUIVADO | NUMBER | Y |  |
| 15 | IMAGETYPE | VARCHAR2 | Y |  |
| 16 | ECHONUMBERS | VARCHAR2 | Y |  |
| 17 | ACQUISITIONNUMBER | VARCHAR2 | Y |  |
| 18 | SLICELOCATION | VARCHAR2 | Y |  |
| 19 | SLICETHICKNESS | VARCHAR2 | Y |  |
| 20 | IMAGEORIENTATIONPATIENT | VARCHAR2 | Y |  |
| 21 | IMAGEPOSITIONPATIENT | VARCHAR2 | Y |  |
| 22 | IMAGEROWS | NUMBER | Y |  |
| 23 | IMAGECOLUMNS | NUMBER | Y |  |
| 24 | NUMBEROFFRAMES | NUMBER | Y |  |
| 25 | INSTANCECREATIONTIME | DATE | Y |  |
| 26 | ID_PATH_CENTER | NUMBER | Y |  |
| 27 | IMAGEDATE | DATE | Y | Armazena a data de inserção da imagem no banco de dados |
| 28 | REPORT_SR | CLOB | Y | Armazena json com o SR do estudo |
| 29 | TRANSFERSYNTAXUID | VARCHAR2 | Y | identificador da transfer syntax |

---

## MPACSCRER.DS_IMAGEVIEW

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | INSTANCEUID | VARCHAR2 | N |  |
| 2 | SERIESUID_FKEY | VARCHAR2 | N |  |
| 3 | INSTANCENUMBER | NUMBER | Y |  |
| 4 | FILENAME | VARCHAR2 | Y |  |
| 5 | SOPCLASSUID | VARCHAR2 | Y |  |
| 6 | SERIES_UID | VARCHAR2 | N |  |
| 7 | STUDYUID_FKEY | VARCHAR2 | N |  |
| 8 | CHARSET_SERIES | VARCHAR2 | Y |  |
| 9 | MODALITY | VARCHAR2 | N |  |
| 10 | SERIESNUMBER | NUMBER | Y |  |
| 11 | SERIESDESCRIPTION | VARCHAR2 | Y |  |
| 12 | PATIENTID | VARCHAR2 | N |  |
| 13 | DATEOFBIRTH | DATE | Y |  |
| 14 | SEX | VARCHAR2 | Y |  |
| 15 | STUDY_UID | VARCHAR2 | N |  |
| 16 | PATIENTID_FKEY | VARCHAR2 | N |  |
| 17 | STUDYDATE | DATE | N |  |
| 18 | ACCESSIONNUMBER | VARCHAR2 | Y |  |
| 19 | STUDYID | VARCHAR2 | Y |  |
| 20 | REFERRINGPHYSICIAN_DICOM | VARCHAR2 | Y |  |
| 21 | STUDYDESCRIPTION | VARCHAR2 | Y |  |
| 22 | NAME_DICOM | VARCHAR2 | Y |  |
| 23 | STUDYTIME | DATE | N |  |
| 24 | CHARACTERSET | VARCHAR2 | Y |  |
| 25 | ID_UNIDADE | NUMBER | N |  |
| 26 | SIZEONDISK | NUMBER | Y |  |
| 27 | ID_PATH_NAME | NUMBER | N |  |
| 28 | IMAGEROWS | NUMBER | Y |  |
| 29 | IMAGECOLUMNS | NUMBER | Y |  |
| 30 | SLICETHICKNESS | VARCHAR2 | Y |  |
| 31 | ACQUISITIONNUMBER | VARCHAR2 | Y |  |
| 32 | SLICELOCATION | VARCHAR2 | Y |  |
| 33 | IMAGETYPE | VARCHAR2 | Y |  |
| 34 | NUMBEROFFRAMES | NUMBER | Y |  |
| 35 | IMAGEORIENTATIONPATIENT | VARCHAR2 | Y |  |

---

## MPACSCRER.DS_IMG_BIOCOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_UNIDADE | NUMBER | N |  |
| 2 | INSTANCEUID | VARCHAR2 | N |  |
| 3 | SERIESUID_FKEY | VARCHAR2 | N |  |
| 4 | INSTANCENUMBER | NUMBER | Y |  |
| 5 | ID_PATH_NAME | NUMBER | N |  |
| 6 | FILENAME | VARCHAR2 | N |  |
| 7 | SOPCLASSUID | VARCHAR2 | Y |  |
| 8 | RECEIVED | NUMBER | N |  |
| 9 | SAFE | NUMBER | N |  |
| 10 | SIZEONDISK | NUMBER | Y |  |
| 11 | STUDYUID_FKEY | VARCHAR2 | N |  |
| 12 | POS_OFF | VARCHAR2 | Y |  |
| 13 | IMAGEKEY | NUMBER | Y |  |
| 14 | ARQUIVADO | NUMBER | Y |  |
| 15 | IMAGETYPE | VARCHAR2 | Y |  |
| 16 | ECHONUMBERS | VARCHAR2 | Y |  |
| 17 | ACQUISITIONNUMBER | VARCHAR2 | Y |  |
| 18 | SLICELOCATION | VARCHAR2 | Y |  |
| 19 | SLICETHICKNESS | VARCHAR2 | Y |  |
| 20 | IMAGEORIENTATIONPATIENT | VARCHAR2 | Y |  |
| 21 | IMAGEPOSITIONPATIENT | VARCHAR2 | Y |  |
| 22 | IMAGEROWS | NUMBER | Y |  |
| 23 | IMAGECOLUMNS | NUMBER | Y |  |
| 24 | NUMBEROFFRAMES | NUMBER | Y |  |
| 25 | INSTANCECREATIONTIME | DATE | Y |  |
| 26 | ID_PATH_CENTER | NUMBER | Y |  |

---

## MPACSCRER.DS_IMG_DATA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_IMAGEJOBS_DATA | NUMBER | N |  |
| 2 | ID_IMAGEJOBS | NUMBER | Y |  |
| 3 | DS_STUDY_DESCRIPTION | VARCHAR2 | Y |  |
| 4 | ID_PATIENT | VARCHAR2 | Y |  |
| 5 | DS_PATIENTNAME_DICOM | VARCHAR2 | Y |  |
| 6 | DT_BIRTH | DATE | Y |  |
| 7 | TP_SEX | CHAR | N |  |
| 8 | DS_ACCESSIONNUMBER | VARCHAR2 | Y |  |
| 9 | DT_STUDY | DATE | Y |  |

---

## MPACSCRER.DS_IMG__BKP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_IMAGEJOBS | NUMBER | N |  |
| 2 | ID_JOBCREATIONUSER | NUMBER | Y |  |
| 3 | DT_JOBCREATION | DATE | N |  |
| 4 | DT_JOBEXECUTION | DATE | Y |  |
| 5 | TP_JOBSTATUS | NUMBER | N |  |
| 6 | TP_JOBTYPE | CHAR | N |  |
| 7 | DS_SERIESUID | VARCHAR2 | Y |  |
| 8 | DS_STUDYUID | VARCHAR2 | Y |  |
| 9 | DS_MODALITY | VARCHAR2 | Y |  |
| 10 | DS_JOBERRORDESCRIPTION | CLOB | Y |  |
| 11 | QT_NUMBEROFIMAGES | NUMBER | Y |  |
| 12 | QT_SIZEONDISK | NUMBER | Y |  |
| 13 | ID_UNIDADE | NUMBER | Y |  |
| 14 | ID_RULE | NUMBER | Y |  |
| 15 | ID_PATH_NAME | NUMBER | Y |  |
| 16 | ID_FTP_BOX | NUMBER | Y |  |
| 17 | DT_INITIAL | DATE | Y |  |
| 18 | DT_FINAL | DATE | Y |  |
| 19 | VL_SEND_PERCENTUAL | NUMBER | Y |  |
| 20 | CONFIG_NAME | VARCHAR2 | Y |  |
| 21 | REMOTE_AET | VARCHAR2 | Y |  |

---

## MPACSCRER.DS_LOCALPORTS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_UNIDADE | NUMBER | N |  |
| 2 | CONFIG_NAME | VARCHAR2 | N | Name of the Server Instance |
| 3 | PORTNUMBER | NUMBER | N | TCP port number for the DICOM Service to Listen on |

---

## MPACSCRER.DS_LOGS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_UNIDADE | NUMBER | N |  |
| 2 | CONFIG_NAME | VARCHAR2 | N | Name of the DICOM Service Instance |
| 3 | PATIENT_NAME | VARCHAR2 | Y | Name of the Patient |
| 4 | ACCESSION_NO | VARCHAR2 | Y | Accession Number |
| 5 | DATETIME | DATE | N | Date/Time of the Logging Entry |
| 6 | REMOTE_AET | VARCHAR2 | Y | AET of the Client involved |
| 7 | REMOTE_IP | VARCHAR2 | Y | AET of the Remote Node  Involved |
| 8 | OPERATION | VARCHAR2 | N | Action/Operation being Logged |
| 9 | PATIENT_ID | VARCHAR2 | Y | Patient ID if Available |
| 10 | STUDY_UID | VARCHAR2 | Y | Study UID if Available |
| 11 | SERIES_UID | VARCHAR2 | Y | Series UID if Available |
| 12 | RESULT | VARCHAR2 | N | Indicating the Result of the Operation. Failure or Success |

---

## MPACSCRER.DS_MONITOR_ROUTER_CRER

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | STUDYDATE | DATE | N |  |
| 2 | QTD_IMAGENS | NUMBER | Y |  |

---

## MPACSCRER.DS_MPPSREQUESTS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | REQUEST_ID | NUMBER | N | Auto-Incremented Unique ID |
| 2 | NCREATE | BLOB | Y | The N-Create Request Blob Data |
| 3 | NSET | BLOB | Y | The N-SET Request Blob Data |
| 4 | CONFIG_NAME | VARCHAR2 | N | The DICOM Service Instance Name |
| 5 | MESSAGE_ID | VARCHAR2 | N | The Affected SOP Instance UID of the MPPS Message |
| 6 | ID_UNIDADE | NUMBER | N |  |

---

## MPACSCRER.DS_MPRPREVIEW

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | STUDYINSTANCEUID | VARCHAR2 | N |  |
| 2 | SERIESINSTANCEUID | VARCHAR2 | N |  |
| 3 | LASTTOUCHED | VARCHAR2 | Y |  |
| 4 | CHANNEL3DFILENAME | VARCHAR2 | Y |  |
| 5 | CHANNELSAGITTALFILENAME | VARCHAR2 | Y |  |
| 6 | CHANNELCORONALFILENAME | VARCHAR2 | Y |  |

---

## MPACSCRER.DS_MPRPREVIEWBUILDER

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | STUDYINSTANCEUID | VARCHAR2 | N |  |
| 2 | SERIESINSTANCEUID | VARCHAR2 | N |  |
| 3 | INSERTEDWHEN | DATE | Y |  |
| 4 | BEINGPROCESSED | NUMBER | Y |  |

---

## MPACSCRER.DS_PATHNAMES

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_PATH_NAME | NUMBER | N |  |
| 2 | PATH_NAME | VARCHAR2 | Y |  |
| 3 | ALIAS_PATH_NAME | VARCHAR2 | Y |  |
| 4 | DESCRIPTION | VARCHAR2 | Y |  |
| 5 | ATIVO | NUMBER | Y |  |
| 6 | ID_UNIDADE | NUMBER | Y |  |
| 7 | MODALITY | VARCHAR2 | Y |  |
| 8 | DS_FTP_URL | VARCHAR2 | Y |  |
| 9 | NM_USER_NAME | VARCHAR2 | Y |  |
| 10 | DS_PASSWORD | VARCHAR2 | Y |  |
| 11 | NR_PORT | VARCHAR2 | Y |  |
| 12 | DS_FOLDER | VARCHAR2 | Y |  |
| 13 | TP_ENABLESSL | NUMBER | Y |  |
| 14 | PATH_TYPE | NUMBER | N | Inseri campo para validação de tipo de storage, Local(0), Cloud(1) |
| 15 | DISK_SECRET | VARCHAR2 | Y | Client Secret do disco AWS S3 |
| 16 | DISK_BUCKET | VARCHAR2 | Y | Bucket do disco AWS S3 |
| 17 | DISK_REGION | VARCHAR2 | Y | Regiao do disco AWS S3 |
| 18 | DISK_CLIENTID | VARCHAR2 | Y | ClientId do disco AWS S3 |
| 19 | DISK_SECRECT | VARCHAR2 | Y |  |
| 20 | DISK_ENDPOINT | VARCHAR2 | Y |  |

---

## MPACSCRER.DS_PATIENTTABLE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_UNIDADE | NUMBER | N |  |
| 2 | PATIENT_ID | VARCHAR2 | N |  |
| 3 | DATEOFBIRTH | DATE | Y |  |
| 4 | SEX | VARCHAR2 | Y |  |
| 5 | PATIENT_CHARSET | VARCHAR2 | Y |  |
| 6 | PATIENTNAME_DICOM | VARCHAR2 | Y |  |
| 7 | ISPRIMARY | NUMBER | Y |  |
| 8 | NAME_FIRST | CHAR | Y |  |
| 9 | NAME_MIDDLE | CHAR | Y |  |
| 10 | NAME_LAST | CHAR | Y |  |
| 11 | NAME_TITLE | CHAR | Y |  |

---

## MPACSCRER.DS_PATIENTTABLE_

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_UNIDADE | NUMBER | N |  |
| 2 | PATIENT_ID | VARCHAR2 | N | Patient ID |
| 3 | DATEOFBIRTH | DATE | Y | Date of Birth |
| 4 | SEX | VARCHAR2 | Y | Gender |
| 5 | PATIENT_CHARSET | VARCHAR2 | Y | Character Set for the Name |
| 6 | PATIENTNAME_DICOM | VARCHAR2 | N | DICOM Patient Name |
| 7 | ISPRIMARY | NUMBER | N |  |
| 8 | NAME_FIRST | VARCHAR2 | Y |  |
| 9 | NAME_MIDDLE | VARCHAR2 | Y |  |
| 10 | NAME_LAST | VARCHAR2 | Y |  |
| 11 | NAME_TITLE | VARCHAR2 | Y |  |

---

## MPACSCRER.DS_PATIENTVIEW

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | PATIENT_ID | VARCHAR2 | N |  |
| 2 | DATEOFBIRTH | DATE | Y |  |
| 3 | SEX | VARCHAR2 | Y |  |
| 4 | CHARACTERSET | VARCHAR2 | Y |  |
| 5 | NAME_DICOM | VARCHAR2 | Y |  |
| 6 | ID_UNIDADE | NUMBER | N |  |

---

## MPACSCRER.DS_REGISTRY

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | REGNAME | VARCHAR2 | Y | Name of the Registry Key |
| 2 | VALUE | VARCHAR2 | Y | Value of the Registry Key |
| 3 | STRING | NUMBER | Y | Whether its a String or Number Key |
| 4 | CONFIG_NAME | VARCHAR2 | N | The Name of the DICOM Service Instance |
| 5 | ID_UNIDADE | NUMBER | N |  |

---

## MPACSCRER.DS_RELATION_PACS_RIS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_RELATION_PACS_RIS | NUMBER | N |  |
| 2 | ID_CONFIG_VIVACE_CONNECT | NUMBER | N |  |
| 3 | ID_UNIT_PACS | NUMBER | Y |  |
| 4 | ID_UNIT_RIS | NUMBER | Y |  |

---

## MPACSCRER.DS_REMOTEAETS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_UNIDADE | NUMBER | N |  |
| 2 | REMOTEAET | VARCHAR2 | N | AET of the Remote Note |
| 3 | IPADDRESS | CHAR | N | IP Address |
| 4 | PORT | NUMBER | N | TCP Port Number |
| 5 | CONFIG_NAME | VARCHAR2 | N | The Name of the DICOM Service Instance |
| 6 | SORTBY | VARCHAR2 | Y | Used for Ordering of C-FIND Results by AET |
| 7 | TRANSFERSYNTAXUID_OUT | VARCHAR2 | Y |  |
| 8 | TRANSFERSYNTAXUID_IN | VARCHAR2 | Y |  |
| 9 | RECEIVEDALLSTUDY | NUMBER | Y |  |
| 10 | RECEIVEDPREFIX | VARCHAR2 | Y |  |
| 11 | FILTERUND | NUMBER | Y |  |
| 12 | DSREMOTEAET | VARCHAR2 | Y |  |
| 13 | ACTIVE | NUMBER | Y |  |
| 14 | STORAGE_ASYNC | NUMBER | Y |  |
| 15 | RECEIVESECONDARYIMAGE | NUMBER | N | Valida se o remoto vai receber pdf encapsulado com imagem secundária ou não |
| 16 | RECOVERYSTORAGEONDISK | NUMBER | N | Valida se o pacs vai permitir receber estudos já existentes no banco de dados |

---

## MPACSCRER.DS_REPORT_CATEGORIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_REPORT_CATEGORIA | NUMBER | N |  |
| 2 | DS_NOME_EXIBICAO | VARCHAR2 | Y |  |
| 3 | ID_CATEGORIA_PARENT | NUMBER | Y |  |
| 4 | DS_SISTEMA | VARCHAR2 | Y |  |

---

## MPACSCRER.DS_REPORT_CATEGORIA_GRUPO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | ID_CATEGORIA | NUMBER | N |  |
| 3 | ID_GRUPO | NUMBER | Y |  |

---

## MPACSCRER.DS_REPORT_RELATORIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_REPORT_RELATORIO | NUMBER | N |  |
| 2 | DS_NOME_EXIBICAO | VARCHAR2 | Y |  |
| 3 | NR_ID_MV_REPORT | NUMBER | N |  |
| 4 | ID_CATEGORIA_PARENT | NUMBER | Y |  |

---

## MPACSCRER.DS_ROUTINGJOBS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | JOBID | NUMBER | N |  |
| 2 | FILENAME | VARCHAR2 | N |  |
| 3 | REMOTEAET | VARCHAR2 | N |  |
| 4 | LOCALAET | VARCHAR2 | N |  |
| 5 | IP | VARCHAR2 | N |  |
| 6 | PORT | NUMBER | N |  |
| 7 | LASTATTEMPT | DATE | Y |  |
| 8 | RETRYINTERVAL | NUMBER | N |  |
| 9 | MAXNUMBEROFTRIES | NUMBER | N |  |
| 10 | NUMBEROFTRIES | NUMBER | Y |  |
| 11 | LASTERROR | VARCHAR2 | Y |  |
| 12 | ID_PATH_NAME | NUMBER | Y |  |
| 13 | STATUS | NUMBER | Y |  |

---

## MPACSCRER.DS_ROUTINGRULES

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | RULEID | NUMBER | N | Primary Key. The Rule ID |
| 2 | MODALITY | VARCHAR2 | Y | DICOM Modality |
| 3 | SOPCLASSUID | VARCHAR2 | Y | DICOM SOP CLASS UID |
| 4 | STARTTIME | DATE | Y | Start time of the rule |
| 5 | ENDTIME | DATE | Y | End time of the rule |
| 6 | DAYSOFWEEK | VARCHAR2 | Y | On which day the rule applies |
| 7 | PRIORITY | NUMBER | N | Used for Sorting the rules. Top rule gets processed first |
| 8 | DESTINATIONAET | VARCHAR2 | N | The mapped Remote AET according to the rule |
| 9 | STOPFURTHERRULESPROCESSING | NUMBER | Y | Whether to stop processing further rules with lower priority |
| 10 | RETRYINTERVAL | NUMBER | N | Number of Minutes before re-sending the failed images |
| 11 | MAXIMUMNUMBEROFTRIES | NUMBER | N |  |
| 12 | CLIENTAET | VARCHAR2 | Y | The Client AET this rule applies to |
| 13 | CONFIG_NAME | VARCHAR2 | N | Name of the Current DICOM Server Instance |

---

## MPACSCRER.DS_RULES

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_RULES | NUMBER | N |  |
| 2 | NR_HOURINTERVAL | NUMBER | Y |  |
| 3 | NR_MINUTEINTERVAL | NUMBER | Y |  |
| 4 | NR_SCHEDHOUR | NUMBER | Y |  |
| 5 | ID_PATH_NAME | NUMBER | Y |  |
| 6 | SN_ACTIVE | CHAR | N |  |
| 7 | DT_STARTDATE | DATE | Y |  |
| 8 | NR_DAYSOFWEEK | NUMBER | Y |  |
| 9 | ID_UNIDADE | NUMBER | Y |  |
| 10 | TP_RULETYPE | CHAR | N |  |
| 11 | NR_PURGE_LIMIT | NUMBER | Y |  |
| 12 | NR_ENDHOUR | NUMBER | Y | Determina a hora em que a rotina de roteamento ou expurgo vão ser paradas |
| 13 | NR_ENDMINUTE | NUMBER | Y | Determina os minutos em que a rotina de roteamento ou expurgo vão ser paradas |
| 14 | SN_IGNORE_INTERVAL | NUMBER | Y | Aplicacao Ignora horario de execucao definido 0= Nao 1= Sim |
| 15 | RETENTIONDAYS | NUMBER | N |  |
| 16 | INTEGRATIONDAYS | NUMBER | N |  |

---

## MPACSCRER.DS_RULES_MODALITY

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_RULES_MODALITY | NUMBER | N |  |
| 2 | ID_RULES | NUMBER | Y |  |
| 3 | MODALITY | VARCHAR2 | Y |  |

---

## MPACSCRER.DS_SERIESTABLE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_UNIDADE | NUMBER | N |  |
| 2 | SERIES_UID | VARCHAR2 | N | Series UID |
| 3 | STUDYUID_FKEY | VARCHAR2 | N | Study UID Foreign Key to the StudyTable |
| 4 | CHARSET_SERIES | VARCHAR2 | Y | Character Set |
| 5 | MODALITY | VARCHAR2 | N | Modality |
| 6 | SERIESNUMBER | NUMBER | Y | Series Number |
| 7 | SERIESDESCRIPTION | VARCHAR2 | Y | Series Description |
| 8 | SERIESDATE | DATE | Y |  |
| 9 | SERIESTIME | DATE | Y |  |
| 10 | DTCREATED | DATE | Y | Armazena a data de inserção da série no banco de dados |

---

## MPACSCRER.DS_SERIESTABLE_ANNOTATIONS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_UNIDADE | NUMBER | N |  |
| 2 | STUDYUID_FKEY | VARCHAR2 | N |  |
| 3 | SERIES_UID | VARCHAR2 | N |  |
| 4 | GUID | VARCHAR2 | N |  |
| 5 | DESCRIPTION | VARCHAR2 | N |  |
| 6 | ANNOTATION | CLOB | Y |  |
| 7 | LASTTOUCHED | VARCHAR2 | Y |  |
| 8 | VALUE | CLOB | Y |  |
| 9 | ID_PATH_NAME | NUMBER | N |  |

---

## MPACSCRER.DS_SERIESTABLE_IA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_UNIDADE | NUMBER | N |  |
| 2 | SERIES_UID_IA | VARCHAR2 | N |  |
| 3 | SERIES_UID | VARCHAR2 | N |  |
| 4 | STUDYUID_FKEY | VARCHAR2 | N |  |
| 5 | DT_RESULT | DATE | Y |  |
| 6 | CD_STATUS_IA | NUMBER | Y |  |
| 7 | DS_RESULT_IA | CLOB | Y |  |
| 8 | COVID_SCORE | VARCHAR2 | Y |  |

---

## MPACSCRER.DS_SERIESVIEW

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | SERIESDATE | DATE | Y |  |
| 2 | SERIESTIME | DATE | Y |  |
| 3 | SERIES_UID | VARCHAR2 | N |  |
| 4 | STUDYUID_FKEY | VARCHAR2 | N |  |
| 5 | CHARSET_SERIES | VARCHAR2 | Y |  |
| 6 | MODALITY | VARCHAR2 | N |  |
| 7 | SERIESNUMBER | NUMBER | Y |  |
| 8 | SERIESDESCRIPTION | VARCHAR2 | Y |  |
| 9 | PATIENTID | VARCHAR2 | N |  |
| 10 | DATEOFBIRTH | DATE | Y |  |
| 11 | SEX | VARCHAR2 | Y |  |
| 12 | STUDY_UID | VARCHAR2 | N |  |
| 13 | PATIENTID_FKEY | VARCHAR2 | N |  |
| 14 | STUDYDATE | DATE | N |  |
| 15 | ACCESSIONNUMBER | VARCHAR2 | Y |  |
| 16 | STUDYID | VARCHAR2 | Y |  |
| 17 | REFERRINGPHYSICIAN_DICOM | VARCHAR2 | Y |  |
| 18 | STUDYDESCRIPTION | VARCHAR2 | Y |  |
| 19 | NAME_DICOM | VARCHAR2 | Y |  |
| 20 | STUDYTIME | DATE | N |  |
| 21 | CHARACTERSET | VARCHAR2 | Y |  |
| 22 | ID_UNIDADE | NUMBER | N |  |

---

## MPACSCRER.DS_SERIES_WEB_PD

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | SERIESDATE | DATE | Y |  |
| 2 | SERIESTIME | DATE | Y |  |
| 3 | SERIES_UID | VARCHAR2 | N |  |
| 4 | STUDYUID_FKEY | VARCHAR2 | N |  |
| 5 | CHARSET_SERIES | VARCHAR2 | Y |  |
| 6 | MODALITY | VARCHAR2 | N |  |
| 7 | SERIESNUMBER | NUMBER | Y |  |
| 8 | SERIESDESCRIPTION | VARCHAR2 | Y |  |
| 9 | PATIENTID | VARCHAR2 | N |  |
| 10 | DATEOFBIRTH | DATE | Y |  |
| 11 | SEX | VARCHAR2 | Y |  |
| 12 | STUDY_UID | VARCHAR2 | N |  |
| 13 | PATIENTID_FKEY | VARCHAR2 | N |  |
| 14 | STUDYDATE | DATE | N |  |
| 15 | ACCESSIONNUMBER | VARCHAR2 | Y |  |
| 16 | STUDYID | VARCHAR2 | Y |  |
| 17 | REFERRINGPHYSICIAN_DICOM | VARCHAR2 | Y |  |
| 18 | STUDYDESCRIPTION | VARCHAR2 | Y |  |
| 19 | NAME_DICOM | VARCHAR2 | Y |  |
| 20 | STUDYTIME | DATE | N |  |
| 21 | CHARACTERSET | VARCHAR2 | Y |  |
| 22 | ID_UNIDADE | NUMBER | N |  |

---

## MPACSCRER.DS_SOPCLASSUIDS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | SOPCLASSUID | VARCHAR2 | N | SOP CLASS UID To Support |
| 2 | SOPDESCRIPTION | VARCHAR2 | Y | Description of the SOP CLASS UID |

---

## MPACSCRER.DS_STORAGECOMMITREQUESTS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CONFIG_NAME | VARCHAR2 | N | Name of the Server Instance |
| 2 | REMOTEAET | VARCHAR2 | N | StorageCommitment SCUs AET, used for IP/Port Lookup |
| 3 | REQUEST | BLOB | Y | Blob data of the Storage Commitment Request |
| 4 | DATERECEIVED | DATE | N | Date the Request is Received, keep it for a number of days before deleting from Database |
| 5 | PROCESSED | NUMBER | N | True is the request has been processed and appropriate response has been sent back to SCU |
| 6 | REQUESTID | NUMBER | N | Primary Key |
| 7 | ID_UNIDADE | NUMBER | N |  |

---

## MPACSCRER.DS_STUDYTABLE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_UNIDADE | NUMBER | N |  |
| 2 | STUDY_UID | VARCHAR2 | N | Study UID |
| 3 | CHARSET_STUDY | VARCHAR2 | Y | Character Set |
| 4 | PATIENTID_FKEY | VARCHAR2 | N | Patient ID Foreign Key to PatientTable |
| 5 | STUDYDATE | DATE | N | Study Date |
| 6 | STUDYTIME | DATE | N | Study Time |
| 7 | ACCESSIONNUMBER | VARCHAR2 | Y | Accession Number |
| 8 | STUDYID | VARCHAR2 | Y | Study ID |
| 9 | REFERRINGPHYSICIAN_DICOM | VARCHAR2 | Y | Referring Physician Name |
| 10 | STUDYDESCRIPTION | VARCHAR2 | Y | Study Description |
| 11 | REFERRINGPHYSICIAN_FIRST | VARCHAR2 | Y |  |
| 12 | REFERRINGPHYSICIAN_MIDDLE | VARCHAR2 | Y |  |
| 13 | REFERRINGPHYSICIAN_LAST | VARCHAR2 | Y |  |
| 14 | REFERRINGPHYSICIAN_TITLE | VARCHAR2 | Y |  |
| 15 | REMOTEAET | VARCHAR2 | Y |  |
| 16 | OPERATORSNAME | VARCHAR2 | Y |  |
| 17 | PATIENTCOMMENTS | VARCHAR2 | Y |  |
| 18 | DATEOFBIRTH | DATE | Y |  |
| 19 | SEX | VARCHAR2 | Y |  |
| 20 | PATIENTNAME_DICOM | VARCHAR2 | Y |  |
| 21 | DTCREATED | DATE | Y | Armazena a data de inserção do estudo no banco de dados |

---

## MPACSCRER.DS_STUDYTABLE_NOTIFY

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_UNIDADE | NUMBER | N |  |
| 2 | STUDYUID_FKEY | VARCHAR2 | N |  |
| 3 | DT_NOTIFY | DATE | Y |  |
| 4 | ID_USER_NOTIFY | NUMBER | Y |  |
| 5 | DS_NOTIFY | CLOB | Y |  |

---

## MPACSCRER.DS_STUDYTABLE_SESSIONS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_UNIDADE | NUMBER | N |  |
| 2 | STUDYUID_FKEY | VARCHAR2 | N |  |
| 3 | GUID | VARCHAR2 | N |  |
| 4 | DESCRIPTION | VARCHAR2 | N |  |
| 5 | ANNOTATION | CLOB | Y |  |
| 6 | LASTTOUCHED | VARCHAR2 | Y |  |
| 7 | DONE | NUMBER | Y |  |
| 8 | ID_PATH_NAME | NUMBER | N |  |

---

## MPACSCRER.DS_STUDYTABLE_SNAPSHOT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_UNIDADE | NUMBER | N |  |
| 2 | STUDYUID_FKEY | VARCHAR2 | N |  |
| 3 | GUID | VARCHAR2 | N |  |
| 4 | FILENAME | CLOB | Y |  |
| 5 | LASTTOUCHED | VARCHAR2 | Y |  |
| 6 | ID_PATH_NAME | NUMBER | N |  |

---

## MPACSCRER.DS_STUDYTABLE_WEB

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_UNIDADE | NUMBER | N |  |
| 2 | STUDY_UID | VARCHAR2 | N |  |
| 3 | CHARSET_STUDY | VARCHAR2 | Y |  |
| 4 | PATIENTID_FKEY | VARCHAR2 | N |  |
| 5 | STUDYDATE | DATE | N |  |
| 6 | STUDYTIME | DATE | N |  |
| 7 | ACCESSIONNUMBER | VARCHAR2 | Y |  |
| 8 | STUDYID | VARCHAR2 | Y |  |
| 9 | REFERRINGPHYSICIAN_DICOM | VARCHAR2 | Y |  |
| 10 | STUDYDESCRIPTION | VARCHAR2 | Y |  |
| 11 | REFERRINGPHYSICIAN_FIRST | VARCHAR2 | Y |  |
| 12 | REFERRINGPHYSICIAN_MIDDLE | VARCHAR2 | Y |  |
| 13 | REFERRINGPHYSICIAN_LAST | VARCHAR2 | Y |  |
| 14 | REFERRINGPHYSICIAN_TITLE | VARCHAR2 | Y |  |
| 15 | REMOTEAET | VARCHAR2 | Y |  |
| 16 | OPERATORSNAME | VARCHAR2 | Y |  |
| 17 | PATIENTCOMMENTS | VARCHAR2 | Y |  |
| 18 | DATEOFBIRTH | DATE | Y |  |
| 19 | SEX | VARCHAR2 | Y |  |
| 20 | PATIENTNAME_DICOM | VARCHAR2 | Y |  |

---

## MPACSCRER.DS_STUDYTABLE_WEB_PD

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_UNIDADE | NUMBER | N |  |
| 2 | STUDY_UID | VARCHAR2 | N |  |
| 3 | CHARSET_STUDY | VARCHAR2 | Y |  |
| 4 | PATIENTID_FKEY | VARCHAR2 | N |  |
| 5 | STUDYDATE | DATE | N |  |
| 6 | STUDYTIME | DATE | N |  |
| 7 | ACCESSIONNUMBER | VARCHAR2 | Y |  |
| 8 | STUDYID | VARCHAR2 | Y |  |
| 9 | REFERRINGPHYSICIAN_DICOM | VARCHAR2 | Y |  |
| 10 | STUDYDESCRIPTION | VARCHAR2 | Y |  |
| 11 | REFERRINGPHYSICIAN_FIRST | VARCHAR2 | Y |  |
| 12 | REFERRINGPHYSICIAN_MIDDLE | VARCHAR2 | Y |  |
| 13 | REFERRINGPHYSICIAN_LAST | VARCHAR2 | Y |  |
| 14 | REFERRINGPHYSICIAN_TITLE | VARCHAR2 | Y |  |
| 15 | REMOTEAET | VARCHAR2 | Y |  |
| 16 | OPERATORSNAME | VARCHAR2 | Y |  |
| 17 | PATIENTCOMMENTS | VARCHAR2 | Y |  |
| 18 | DATEOFBIRTH | DATE | Y |  |
| 19 | SEX | VARCHAR2 | Y |  |
| 20 | PATIENTNAME_DICOM | VARCHAR2 | Y |  |

---

## MPACSCRER.DS_STUDYVIEW

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NAME_DICOM | VARCHAR2 | Y |  |
| 2 | CHARACTERSET | VARCHAR2 | Y |  |
| 3 | PATIENT_ID | VARCHAR2 | N |  |
| 4 | DATEOFBIRTH | DATE | Y |  |
| 5 | SEX | VARCHAR2 | Y |  |
| 6 | STUDY_UID | VARCHAR2 | N |  |
| 7 | CHARSET_STUDY | VARCHAR2 | Y |  |
| 8 | PATIENTID_FKEY | VARCHAR2 | N |  |
| 9 | STUDYDATE | DATE | N |  |
| 10 | STUDYTIME | DATE | N |  |
| 11 | ACCESSIONNUMBER | VARCHAR2 | Y |  |
| 12 | STUDYID | VARCHAR2 | Y |  |
| 13 | REFERRINGPHYSICIAN_DICOM | VARCHAR2 | Y |  |
| 14 | STUDYDESCRIPTION | VARCHAR2 | Y |  |
| 15 | REMOTEAET | VARCHAR2 | Y |  |
| 16 | ID_UNIDADE | NUMBER | N |  |

---

## MPACSCRER.DS_TRANSFERSYNTAX

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | TRANSFERSYNTAXUID | VARCHAR2 | N |  |
| 2 | DSTRANSFERSYNTAXUID | VARCHAR2 | N |  |

---

## MPACSCRER.DS_UNICODENAMES

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NAMEDICOM | VARCHAR2 | N |  |
| 2 | CHARSET | VARCHAR2 | Y |  |
| 3 | COMPNT | NUMBER | N |  |
| 4 | NAME_FIRST_UC | VARCHAR2 | Y |  |
| 5 | NAME_MIDDLE_UC | VARCHAR2 | Y |  |
| 6 | NAME_LAST_UC | VARCHAR2 | Y |  |
| 7 | NAME_TITLE_UC | VARCHAR2 | Y |  |

---

## MPACSCRER.DS_VW_DIAGNEXT_IMAGES

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_UNIDADE | NUMBER | N |  |
| 2 | STUDYDATE | DATE | N |  |
| 3 | INSTANCEUID | VARCHAR2 | N |  |
| 4 | STUDY_UID | VARCHAR2 | N |  |
| 5 | ACCESSIONNUMBER | VARCHAR2 | Y |  |
| 6 | STUDYDESCRIPTION | VARCHAR2 | Y |  |
| 7 | PATIENTNAME_DICOM | VARCHAR2 | Y |  |
| 8 | SERIES_UID | VARCHAR2 | N |  |
| 9 | MODALITY | VARCHAR2 | N |  |
| 10 | SIZEONDISK | NUMBER | Y |  |

---

## MPACSCRER.IMAGERETRIEVALVIEW

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | PATIENTID | VARCHAR2 | N |  |
| 2 | NAME_FIRST | VARCHAR2 | Y |  |
| 3 | NAME_LAST | CHAR | Y |  |
| 4 | STUDYUID | VARCHAR2 | N |  |
| 5 | ACCESSIONNUMBER | VARCHAR2 | Y |  |
| 6 | SERIESUID | VARCHAR2 | N |  |
| 7 | INSTANCEUID | VARCHAR2 | N |  |
| 8 | FILENAME | VARCHAR2 | Y |  |
| 9 | ID_FILENAME_PATH | NUMBER | N |  |
| 10 | ARQUIVADO | NUMBER | Y |  |
| 11 | NAODICOM | NUMBER | Y |  |
| 12 | IMAGEPROTECT | NUMBER | Y |  |
| 13 | LOCAL | VARCHAR2 | Y |  |
| 14 | ID_FILENAME_PATH_LOCAL | NUMBER | N |  |
| 15 | LABEL_TIPO | CHAR | Y |  |
| 16 | LABEL_TITULO | CHAR | Y |  |
| 17 | TEMPORARIO | NUMBER | Y |  |
| 18 | IMAGEKEY | NUMBER | Y |  |
| 19 | IMAGESECRET | NUMBER | Y |  |
| 20 | PERDIDO | NUMBER | Y |  |
| 21 | STUDYDATE | DATE | N |  |
| 22 | STUDYTIME | DATE | N |  |
| 23 | SERIESNUMBER | NUMBER | Y |  |
| 24 | INSTANCENUMBER | NUMBER | Y |  |
| 25 | FRAMES | NUMBER | Y |  |
| 26 | UNIDADE | VARCHAR2 | Y |  |
| 27 | UNIDADEFINAL | VARCHAR2 | Y |  |

---

## MPACSCRER.IMAGERETRIEVALVIEWSTUDY

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | PATIENT_ID | VARCHAR2 | N |  |
| 2 | PATIENTNAME_DICOM | VARCHAR2 | Y |  |
| 3 | ID_UNIDADE | NUMBER | N |  |
| 4 | STUDY_UID | VARCHAR2 | N |  |
| 5 | STUDYTIME | DATE | N |  |
| 6 | STUDYDATE | DATE | N |  |
| 7 | ACCESSIONNUMBER | VARCHAR2 | Y |  |
| 8 | SERIES_UID | VARCHAR2 | N |  |
| 9 | SERIESNUMBER | NUMBER | Y |  |
| 10 | SOPCLASSUID | VARCHAR2 | Y |  |
| 11 | INSTANCENUMBER | NUMBER | Y |  |
| 12 | INSTANCEUID | VARCHAR2 | N |  |
| 13 | FILENAME | VARCHAR2 | Y |  |

---

## MPACSCRER.IMAGETABLE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_UNIDADE | NUMBER | N |  |
| 2 | INSTANCEUID | VARCHAR2 | N |  |
| 3 | SERIESUID_FKEY | VARCHAR2 | N |  |
| 4 | INSTANCENUMBER | NUMBER | Y |  |
| 5 | ID_PATH_NAME | NUMBER | N |  |
| 6 | FILENAME | VARCHAR2 | N |  |
| 7 | SOPCLASSUID | VARCHAR2 | Y |  |
| 8 | RECEIVED | NUMBER | N |  |
| 9 | SAFE | NUMBER | N |  |
| 10 | SIZEONDISK | NUMBER | Y |  |
| 11 | POS_OFF | VARCHAR2 | Y |  |
| 12 | IMAGEKEY | NUMBER | Y |  |
| 13 | ARQUIVADO | NUMBER | Y |  |

---

## MPACSCRER.IMAGEVIEWFULLPATH

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | PATIENTID | VARCHAR2 | N |  |
| 2 | STUDYUID | VARCHAR2 | N |  |
| 3 | ACCESSIONNUMBER | VARCHAR2 | Y |  |
| 4 | SERIESUID | VARCHAR2 | N |  |
| 5 | INSTANCEUID | VARCHAR2 | N |  |
| 6 | IMAGEFILENAME | VARCHAR2 | Y |  |
| 7 | STUDYDATE | DATE | N |  |
| 8 | SERIESNUMBER | NUMBER | Y |  |
| 9 | INSTANCENUMBER | NUMBER | Y |  |
| 10 | STUDYTIME | DATE | N |  |
| 11 | SOPCLASSUID | VARCHAR2 | Y |  |
| 12 | ID_UNIDADE | NUMBER | N |  |
| 13 | FRAMES | NUMBER | Y |  |
| 14 | IMAGEKEY | NUMBER | Y |  |

---

## MPACSCRER.MPACS_LOGIN_AUDITORIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NMUSUARIO | VARCHAR2 | N |  |
| 3 | DS_SISTEMA | VARCHAR2 | Y |  |
| 4 | DS_OCORRENCIA | VARCHAR2 | Y |  |
| 5 | DT_CADASTRO | DATE | Y |  |
| 6 | DS_STATUS | VARCHAR2 | Y |  |

---

## MPACSCRER.MPACS_SEG_AUDITORIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_AUDITORIA | NUMBER | N |  |
| 2 | ID_USUARIO | NUMBER | N |  |
| 3 | DT_OPERACAO | DATE | Y |  |
| 4 | DS_OPERACAO | CLOB | Y |  |
| 5 | ID_UNIDADE | NUMBER | Y |  |

---

## MPACSCRER.MPACS_SEG_CATALOGO_OPERACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_CATALOGO | NUMBER | N |  |
| 2 | NM_CATALOGO | VARCHAR2 | Y |  |
| 3 | DS_CATALOGO | VARCHAR2 | Y |  |

---

## MPACSCRER.MPACS_SEG_GRUPO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_GRUPO | NUMBER | N |  |
| 2 | NM_GRUPO | VARCHAR2 | Y |  |
| 3 | DS_GRUPO | VARCHAR2 | Y |  |
| 4 | DT_CADASTRO | DATE | Y |  |
| 5 | DT_ALTERACAO | DATE | Y |  |
| 6 | ID_USUARIO | NUMBER | Y |  |

---

## MPACSCRER.MPACS_SEG_GRUPO_OPERACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_OPERACAO | NUMBER | N |  |
| 2 | ID_GRUPO | NUMBER | N |  |
| 3 | ID_USUARIO | NUMBER | Y |  |
| 4 | DT_CADASTRO | DATE | N |  |
| 5 | DT_ALTERACAO | DATE | Y |  |

---

## MPACSCRER.MPACS_SEG_OPERACAO_SISTEMA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_OPERACAO | NUMBER | N |  |
| 2 | NM_OPERACAO | VARCHAR2 | Y |  |
| 3 | DS_OPERACAO | VARCHAR2 | Y |  |
| 4 | ID_CATALOGO | NUMBER | Y |  |
| 5 | ID_USUARIO | NUMBER | Y |  |

---

## MPACSCRER.MPACS_SEG_USUARIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_USUARIO | NUMBER | N |  |
| 2 | ID_USUARIO_PAI | NUMBER | Y |  |
| 3 | NM_USUARIO | VARCHAR2 | Y |  |
| 4 | DT_NASCIMENTO | DATE | Y |  |
| 5 | TP_SEXO | VARCHAR2 | N |  |
| 6 | DS_CARGO | VARCHAR2 | Y |  |
| 7 | NM_IDENTIFICACAO | VARCHAR2 | Y |  |
| 8 | DS_ENDERECO | VARCHAR2 | Y |  |
| 9 | DS_BAIRRO | VARCHAR2 | Y |  |
| 10 | DS_CIDADE | VARCHAR2 | Y |  |
| 11 | DS_UF | VARCHAR2 | Y |  |
| 12 | DS_CEP | VARCHAR2 | Y |  |
| 13 | DS_CPF | VARCHAR2 | Y |  |
| 14 | DS_RG | VARCHAR2 | Y |  |
| 15 | DS_TELEFONE | VARCHAR2 | Y |  |
| 16 | DS_FAX | VARCHAR2 | Y |  |
| 17 | CD_SENHA | VARCHAR2 | Y |  |
| 18 | DS_EMAIL | VARCHAR2 | Y |  |
| 19 | SN_ACESSO_IRRESTRITO | CHAR | Y |  |
| 20 | SN_TROCA_SENHA | CHAR | Y |  |
| 21 | SN_ATIVO | CHAR | Y |  |
| 22 | DT_CADASTRO | DATE | Y |  |
| 23 | DT_ALTERACAO | DATE | Y |  |
| 24 | IM_BIOMETRIA | BLOB | Y |  |
| 25 | DS_USUARIO_VIEWER | VARCHAR2 | Y |  |
| 26 | DS_SENHA_VIEWER | VARCHAR2 | Y |  |
| 27 | DS_ULTIMA_IMPRESSORA | VARCHAR2 | Y |  |
| 28 | SN_IMPRESSAO_LOCAL | CHAR | Y |  |
| 29 | SN_LOGIN_ONEPASS | CHAR | Y | Define se o usuário vai logar diretamente via mv one pass |

---

## MPACSCRER.MPACS_SEG_USUARIO_OPERACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_USUARIO | NUMBER | Y |  |
| 2 | ID_USUARIO_CADASTRO | NUMBER | Y |  |
| 3 | ID_GRUPO | NUMBER | Y |  |
| 4 | DT_CADASTRO | DATE | Y |  |
| 5 | DT_ALTERACAO | DATE | Y |  |
| 6 | ID_UNIDADE | NUMBER | Y |  |

---

## MPACSCRER.MPACS_SEG_USUARIO_UNIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_USUARIO | NUMBER | N |  |
| 2 | ID_USUARIO_CADASTRO | NUMBER | Y |  |
| 3 | SN_ATIVO | VARCHAR2 | Y |  |
| 4 | ID_UNIDADE | NUMBER | N |  |
| 5 | DT_CADASTRO | DATE | Y |  |
| 6 | DT_ALTERACAO | DATE | Y |  |

---

## MPACSCRER.MPACS_UNI_UNIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_UNIDADE | NUMBER | N |  |
| 2 | NM_UNIDADE | VARCHAR2 | Y |  |
| 3 | DS_ENDERECO | VARCHAR2 | Y |  |
| 4 | DS_BAIRRO | VARCHAR2 | Y |  |
| 5 | DS_CIDADE | VARCHAR2 | Y |  |
| 6 | DS_UF | VARCHAR2 | Y |  |
| 7 | DS_CEP | VARCHAR2 | Y |  |
| 8 | DS_TELEFONE1 | VARCHAR2 | Y |  |
| 9 | DS_TELEFONE2 | VARCHAR2 | Y |  |
| 10 | DS_FAX | VARCHAR2 | Y |  |
| 11 | DS_CNPJ | VARCHAR2 | Y |  |
| 12 | DS_EMAIL | VARCHAR2 | Y |  |
| 13 | DS_CONTATO | VARCHAR2 | Y |  |
| 14 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 15 | CD_UNIDADE_HIS | VARCHAR2 | Y |  |
| 16 | SN_ATIVO | CHAR | Y |  |
| 17 | DT_CADASTRO | DATE | Y |  |
| 18 | DT_ALTERACAO | DATE | Y |  |
| 19 | ID_USUARIO | NUMBER | Y |  |
| 20 | ID_REGIAO | NUMBER | Y |  |
| 21 | DS_INTEGRA_IP | VARCHAR2 | Y |  |
| 22 | DS_INTEGRA_SERVER_NAME | VARCHAR2 | Y |  |
| 23 | DS_INTEGRA_PORTA | VARCHAR2 | Y |  |
| 24 | DS_INTEGRA_LOGIN | VARCHAR2 | Y |  |
| 25 | DS_INTEGRA_SENHA | VARCHAR2 | Y |  |
| 26 | DS_DICOM_SEVER_IP | VARCHAR2 | Y |  |
| 27 | NR_DICOM_SERVER_PORTA | VARCHAR2 | Y |  |
| 28 | DS_DICOM_SERVER_AE_TITLE | VARCHAR2 | Y |  |
| 29 | DS_BANCO_DICOM_SERVER_IPPATH | VARCHAR2 | Y |  |
| 30 | NR_BANCO_DICOM_SERVER_PORTA | VARCHAR2 | Y |  |
| 31 | DS_BANCO_DICOM_SERVER_NAME | VARCHAR2 | Y |  |
| 32 | DS_BANCO_DICOM_SERVER_LOGIN | VARCHAR2 | Y |  |
| 33 | DS_BANCO_DICOM_SERVER_SENHA | VARCHAR2 | Y |  |
| 34 | DS_WORKLIST_IPPATH | VARCHAR2 | Y |  |
| 35 | NR_WORKLIST_PORTA | VARCHAR2 | Y |  |
| 36 | DS_WORKLIST_SERVER_NAME | VARCHAR2 | Y |  |
| 37 | DS_WORKLIST_LOGIN | VARCHAR2 | Y |  |
| 38 | DS_WORKLIST_SENHA | VARCHAR2 | Y |  |
| 39 | DS_SMS_LINK | VARCHAR2 | Y |  |
| 40 | DS_SMS_MSG | VARCHAR2 | Y |  |
| 41 | DS_SMS_REMETENTE | VARCHAR2 | Y |  |
| 42 | DS_WEB_VIEWER | VARCHAR2 | Y |  |
| 43 | DS_STUDYUID | VARCHAR2 | Y |  |
| 44 | ID_CONVENIO_PADRAO | NUMBER | Y |  |
| 45 | ID_MEDICO_SOLICITANTE_PADRAO | NUMBER | Y |  |
| 46 | ID_MEDICO_EXECUTANTE_PADRAO | NUMBER | Y |  |
| 47 | CD_UNIDADE_BASE_HIS | VARCHAR2 | Y |  |
| 48 | ID_RASTREAR_LAUDO | NUMBER | Y |  |
| 49 | DS_PATH_EXPORTA_LAUDO | VARCHAR2 | Y |  |
| 50 | SN_PRINT_PDF | CHAR | Y |  |
| 51 | DS_3D_TERARECON_APP_NAME | VARCHAR2 | Y |  |
| 52 | DS_3D_TERARECON_USER | VARCHAR2 | Y |  |
| 53 | DS_3D_TERARECON_PASSWORD | VARCHAR2 | Y |  |
| 54 | DS_3D_TERARECON_HOST | VARCHAR2 | Y |  |
| 55 | DS_3D_TERARECON_PORT | VARCHAR2 | Y |  |
| 56 | SN_VISUALIZE_PDF | CHAR | Y |  |
| 57 | SN_TAG_PDF | CHAR | Y |  |
| 58 | SN_INTEGRA | CHAR | Y |  |
| 59 | ID_BANCO | NUMBER | Y |  |
| 60 | SN_LOGIN_TROCA_ETAPA | CHAR | Y |  |
| 61 | SN_EXIGE_CERTIFICACAO_LAUDO | CHAR | Y |  |
| 62 | TP_DATA_PADRAO | CHAR | Y |  |
| 63 | SN_CLOUD | CHAR | Y | Define se a unidade é cloud 0 - NÃO, 1 - SIM |
| 64 | URL_QIDORS | VARCHAR2 | Y | Armazena a url do qidors para redirect |
| 65 | URL_WADORS | VARCHAR2 | Y | Armazena a url do wadors para redirect |
| 66 | URL_STOWRS | VARCHAR2 | Y |  |

---

## MPACSCRER.MWL_CONFIG

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_UNIDADE | NUMBER | N |  |
| 2 | APPLICATIONAET | VARCHAR2 | N | AET Of This MWL Server |
| 3 | PORTNUMBER | NUMBER | N | TCP Port Number To Listen On |
| 4 | CHARACTERSET | VARCHAR2 | N | Character Set for Response |
| 5 | LOG | NUMBER | N | Switch for Logging. 1 To Enable and 0 to Disable Logging |
| 6 | LOGLEVEL | NUMBER | Y | Log Level - 63 is the default value |
| 7 | LOGLOCATION | VARCHAR2 | Y | Directory Where the Logs Are Kept |
| 8 | MAXNUMBEROFRECORDSPERRESPONSE | NUMBER | Y | Maximum Number of Records Per Response |
| 9 | DISABLEDATETIMEMATCHING | NUMBER | Y |  |
| 10 | CONFIG_NAME | VARCHAR2 | Y |  |
| 11 | IMPLEMENTATIONUID | VARCHAR2 | Y |  |
| 12 | INSTITUTIONNAME | VARCHAR2 | Y |  |
| 13 | FILTERUND | NUMBER | Y |  |
| 14 | REVERSENAME | NUMBER | Y |  |
| 15 | GENERATESTUDYUID | NUMBER | Y |  |
| 16 | ALLOWFILEWATCH | NUMBER | Y |  |
| 17 | FOLDERWATCH | VARCHAR2 | Y |  |
| 18 | FOLDERGETFILE | VARCHAR2 | Y |  |
| 19 | STUDYUID | VARCHAR2 | Y |  |

---

## MPACSCRER.MWL_DATA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Column ID |
| 2 | SCHEDSTATIONAETITLE | VARCHAR2 | Y | Scheduled Station AE Title (0040,0001) |
| 3 | SCHEDPROCSTARTDATE | DATE | Y | Scheduled Procedure Step Start Date (0040,0002) |
| 4 | SCHEDPROCSTARTTIME | DATE | Y | Scheduled Procedure Step Start Time (0040,0003) |
| 5 | MODALITY | VARCHAR2 | Y | Modality (0008,0060) |
| 6 | REQUESTEDPROCEDUREID | VARCHAR2 | Y | Requested Procedure ID (0040,1001) |
| 7 | REQPROCDESCRIPTION | VARCHAR2 | Y | Requested Procedure Description (0032,1060) |
| 8 | STUDYDICOMINSTANCEUID | VARCHAR2 | Y | Study Instance UID (0020,000D) |
| 9 | SCHEDPATIENTNAME | VARCHAR2 | Y | Patients Name (0010,0010) |
| 10 | SCHEDPATIENTID | VARCHAR2 | Y | Patient ID (0010,0020) |
| 11 | SCHEDPATIENTBIRTHDAY | DATE | Y | Patients Birth Date (0010,0030) |
| 12 | SCHEDSEX | VARCHAR2 | Y | Patients Sex (0010,0040) |
| 13 | PATIENTWEIGHT | VARCHAR2 | Y | Patients Weight (0010,1030) |
| 14 | CONFICONSTRAINTONPATIENTDATA | VARCHAR2 | Y | Confidentiality constraint on patient data (0040,3001) |
| 15 | PATIENTSTATE | VARCHAR2 | Y | Patient State (0038,0500) |
| 16 | PREGNANCYSTATUS | NUMBER | Y | Pregnancy Status (0010,21C0) |
| 17 | MEDICALALERTS | VARCHAR2 | Y | Medical Alerts (0010,2000) |
| 18 | ALERGIES | VARCHAR2 | Y | Allergies (0010,2110) |
| 19 | SPECIALNEEDS | VARCHAR2 | Y | Special Needs (0038,0050) |
| 20 | SCHEDPROCPERFORMINGPHY | VARCHAR2 | Y | Scheduled Performing Physicians Name (0040,0006) |
| 21 | SCHEDPROCSTEPDESC | VARCHAR2 | Y | Scheduled Procedure Step Description (0040,0007) |
| 22 | SCHEDSTATIONNAME | VARCHAR2 | Y | Scheduled Station Name (0040,0010) |
| 23 | SCHEDPROCSTEPLOCATION | VARCHAR2 | Y | >Scheduled Procedure Step Location (0040,0011) |
| 24 | SCHEDULEDPROTOCOLCODESQCV | VARCHAR2 | Y | Scheduled Protocol Code Sequence Code Value (0008,0100) |
| 25 | SCHEDULEDPROTOCOLCODESQCSV | VARCHAR2 | Y | Scheduled Protocol Code Sequence Coding Scheme Version (0008,0103) |
| 26 | SCHEDULEDPROTOCOLCODESQSCSD | VARCHAR2 | Y | Scheduled Protocol Code Sequence Coding Scheme Designator (0008,0102) |
| 27 | SCHEDULEDPROTOCOLCODESQCM | VARCHAR2 | Y | Scheduled Protocol Code Sequence Code Meaning (0008,0104) |
| 28 | PREMEDICATION | VARCHAR2 | Y | Pre-Medication (0040,0012) |
| 29 | REQUESTEDCONTRASTAGENT | VARCHAR2 | Y | Requested Contrast Agent (0032,1070) |
| 30 | SCHEDPROCSTEPSTATUS | VARCHAR2 | Y | Scheduled Procedure Step Status (0040,0020) |
| 31 | REQUESTEDPROCEDURECODESQCV | VARCHAR2 | Y | Requested Protocol Code Sequence Code Value (0008,0100) |
| 32 | REQUESTEDPROCEDURECODESQCSD | VARCHAR2 | Y | Requested Protocol Code Sequence Coding Scheme Designator (0008,0102) |
| 33 | REQUESTEDPROCEDURECODESQCSV | VARCHAR2 | Y | Requested Protocol Code Sequence Coding Scheme Version (0008,0103) |
| 34 | REQUESTEDPROCEDURECOEDSQCM | VARCHAR2 | Y | Requested Protocol Code Sequence Code Meaning (0008,0104) |
| 35 | REFERENCEDSOPCLASSUID | VARCHAR2 | Y | Referenced SOP Class UID (0008,1150) |
| 36 | REFERENCEDSOPINSTANCEUID | VARCHAR2 | Y | Referenced SOP Instance UID (0008,1155) |
| 37 | REQUESTEDPROCEDUREPRIORITY | VARCHAR2 | Y | Requested Procedure Priority (0040,1003) |
| 38 | PATIENTTRANSPORTARRANGEMENTS | VARCHAR2 | Y | Patient Transport Arrangements (0040,1004) |
| 39 | ACCESSIONNUMBER | VARCHAR2 | Y | Accession Number (0008,0050) |
| 40 | REQUESTINGPHYSICIAN | VARCHAR2 | Y | Requesting Physician (0032,1032) |
| 41 | REFFERINGPHYSICIAN | VARCHAR2 | Y | Referring Physicians Name (0008,0090) |
| 42 | ADMISSIONID | VARCHAR2 | Y | Admission ID (0038,0010) |
| 43 | CURRENTPATIENTLOCATION | VARCHAR2 | Y | Current Patient Location (0038,0300) |
| 44 | RFPATIENTSQRFSOPCLASSUID | VARCHAR2 | Y | Referenced Patient Sequence -> Referenced SOP Class UID (0008,1150) |
| 45 | RFPATIENTSQRFINSTANCEUID | VARCHAR2 | Y | Referenced Patient Sequence -> Referenced SOP Instance UID (0008,1155) |
| 46 | SCHEDPROCSTEPID | VARCHAR2 | Y | Scheduled Procedure Step ID (0040, 0009) |
| 47 | ID_UNIDADE | NUMBER | Y |  |
| 48 | DONE | CHAR | Y |  |
| 49 | ATIVO | CHAR | Y |  |
| 50 | INSTITUTIONNAME | VARCHAR2 | Y |  |
| 51 | OPERATOR | VARCHAR2 | Y |  |
| 52 | CD_PEDIDO_HIS | NUMBER | Y |  |
| 53 | CD_ATENDIMENTO_HIS | NUMBER | Y |  |
| 54 | ID_SETOR | NUMBER | Y |  |
| 55 | SCHEDULEDPROTOCOLCODESEQUENCE | VARCHAR2 | Y |  |
| 56 | SCHEDULEDPROCEDURESTEPSEQUENCE | VARCHAR2 | Y |  |
| 57 | REQUESTEDPROCEDURECODESEQUENCE | VARCHAR2 | Y |  |

---

## MPACSCRER.MWL_EXAMDESCRIPTION

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_UNIDADE | NUMBER | Y |  |
| 2 | DESCRIPTION | VARCHAR2 | Y |  |
| 3 | MODALITY | VARCHAR2 | Y |  |
| 4 | EXAMROOMDESC | VARCHAR2 | Y |  |
| 5 | AETDESCRIPTION | VARCHAR2 | Y |  |
| 6 | ATIVO | VARCHAR2 | Y |  |

---

## MPACSCRER.MWL_EXAMROOM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_UNIDADE | NUMBER | N |  |
| 2 | NUMBERROOM | VARCHAR2 | N |  |
| 3 | DESCRIPTION | VARCHAR2 | N |  |
| 4 | LOCAL | VARCHAR2 | Y |  |

---

## MPACSCRER.MWL_FIELDS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | AET | VARCHAR2 | Y | Client AET, Used for Filtering Results |
| 3 | GROUPNUMBER | VARCHAR2 | N | DICOM Attribute Group Number in Hex |
| 4 | ELEMENTNUMBER | VARCHAR2 | N | DICOM Attribute Element Number in Hex |
| 5 | FIELDNAME | VARCHAR2 | N | Name of the Field in Value Table |
| 6 | PARENTFIELD | NUMBER | N | ID of the Parent DataSet |
| 7 | VR | VARCHAR2 | N | DICOM VR |
| 8 | MATCHINGKEYTYPE | CHAR | N | If the Attribute is used for Matching |
| 9 | RETURNKEYTYPE | VARCHAR2 | N | If The Attribute Must be Returned if Requested |
| 10 | NOTUSEDINSELECT | NUMBER | N | If Included in the Select Statement |
| 11 | NOTUSEDINWHERE | NUMBER | N | If Included in the Where Statement |
| 12 | RELATEDFIELD | NUMBER | Y | Related Field ID |
| 13 | DESCRIPTION | VARCHAR2 | Y |  |

---

## MPACSCRER.MWL_MODALITY

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | MODALITY | VARCHAR2 | N |  |
| 2 | DESCRIPTION | VARCHAR2 | N |  |
| 3 | ID_UNIDADE | NUMBER | N |  |
| 4 | ID_MODALIDADE_INTEGRA | NUMBER | Y |  |
| 5 | ID_MODALITY | NUMBER | Y |  |

---

## MPACSCRER.MWL_REMOTEAETS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_UNIDADE | NUMBER | N |  |
| 2 | REMOTEAET | VARCHAR2 | N |  |
| 3 | IPADDRESS | VARCHAR2 | N |  |
| 4 | PORT | NUMBER | N |  |
| 5 | EQUIPMENT | VARCHAR2 | Y |  |
| 6 | MANUFACTURER | VARCHAR2 | Y |  |
| 7 | MODALITY | VARCHAR2 | N |  |
| 8 | GENERATESTUDYUID | NUMBER | Y |  |
| 9 | FILTERSETOR | NUMBER | Y |  |
| 10 | ALLOWREVERSENAME | NUMBER | N | Ativa a opção para mudar a ordem do nome no retorno da worklist |
| 11 | ID_SETOR | VARCHAR2 | Y |  |

---

## MPACSCRER.MWL_REMOTEAETSFIELDS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_UNIDADE | NUMBER | N |  |
| 2 | REMOTEAET | VARCHAR2 | N |  |
| 3 | ID_FIELD | NUMBER | N |  |

---

## MPACSCRER.PRINTSERVER_ACTION

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | DESCRIPTION | VARCHAR2 | Y |  |
| 3 | UNIDADE_ID | NUMBER | Y |  |

---

## MPACSCRER.PRINTSERVER_CONFIG

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | MANUFACTURER | VARCHAR2 | N | (0008, 0070) Manufacturer |
| 2 | MANUFACTURERMODELNAME | VARCHAR2 | N | (0008, 1090) Manufacturers Model Name |
| 3 | PRINTERSTATUS | VARCHAR2 | N | (2110, 0010) Printer Status |
| 4 | PRINTERSTATUSINFO | VARCHAR2 | N | (2110, 0020) Printer Status Info |
| 5 | DEVICESERIALNUMBER | VARCHAR2 | N | (0018, 1000) Device Serial Number |
| 6 | PORTNUMBER | NUMBER | N | TCP Port Number To Listen |
| 7 | IMAGESTORAGELOCATION | VARCHAR2 | N | Where "Images To Print" are saved |
| 8 | LIFETIMEFORPRINTEDIMAGE | NUMBER | Y | Number of Days we keep the printed image before deleting them |
| 9 | LIFETIMEFORFAILEDIMAGE | NUMBER | Y | Number of Days we keep the failed image before deleting them |
| 10 | LOG | NUMBER | Y | 1 to Turn on the Logging |
| 11 | LOGLEVEL | NUMBER | Y | Level of Logging |
| 12 | LOGLOCATION | VARCHAR2 | Y | Location of the Log Files |
| 13 | LOGO | BLOB | Y |  |
| 14 | REQUESTJOB_TIMER | NUMBER | Y |  |
| 15 | WINDOWSPRINTERNAME | VARCHAR2 | Y |  |
| 16 | WINDOWSPAPERSIZE | NUMBER | Y |  |
| 17 | USERADMIN | VARCHAR2 | Y |  |
| 18 | PASSWORDADMIN | VARCHAR2 | Y |  |
| 19 | UNIDADE_ID | NUMBER | Y |  |
| 20 | IPADDRESS | VARCHAR2 | Y |  |
| 21 | ID | NUMBER | N |  |
| 22 | CONFIGID | VARCHAR2 | Y | Guid Id |
| 23 | VERSAO_DB | VARCHAR2 | Y |  |
| 24 | EQPTOLISTPRINTPAGE | VARCHAR2 | Y |  |
| 25 | EQPTOLISTPRINTPAGETIMEOUT | NUMBER | Y |  |
| 26 | HEADER | VARCHAR2 | Y |  |
| 27 | FOOTER | VARCHAR2 | Y |  |

---

## MPACSCRER.PRINTSERVER_JOBS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | JOBID | VARCHAR2 | N | The Print Session UID, we group Images by Session UID |
| 2 | JOBDATETIME | DATE | N | Date and Time the Print Request is Received |
| 3 | COMPLETED | NUMBER | N | Indicated Whether Print Job has completed |
| 4 | REMOTEAET | VARCHAR2 | N |  |
| 5 | REMOTEIPADRESS | VARCHAR2 | N |  |
| 6 | REMOTEPORT | NUMBER | N |  |
| 7 | TOTALIMAGES | NUMBER | Y |  |
| 8 | COPIES | NUMBER | Y |  |
| 9 | PRIORITY | VARCHAR2 | Y |  |
| 10 | MEDIATYPE | VARCHAR2 | Y |  |
| 11 | DESTINATION | VARCHAR2 | Y |  |
| 12 | MAGNIFICATION | VARCHAR2 | Y |  |
| 13 | SMOOTHING | VARCHAR2 | Y |  |
| 14 | MAXDENSITY | NUMBER | Y |  |
| 15 | MINDENSITY | NUMBER | Y |  |
| 16 | BORDERDENSITY | VARCHAR2 | Y |  |
| 17 | TRIMPAPER | VARCHAR2 | Y |  |
| 18 | FILMSIZEID | VARCHAR2 | Y |  |
| 19 | ORIENTATION | VARCHAR2 | Y |  |
| 20 | LAYOUT | VARCHAR2 | Y |  |
| 21 | WPDEFAULT | VARCHAR2 | Y |  |
| 22 | WPSIZEDEFAULT | NUMBER | Y |  |
| 23 | WPFORMAT | VARCHAR2 | Y |  |
| 24 | WPORIENTATION | VARCHAR2 | Y |  |
| 25 | ACNUMBER | VARCHAR2 | Y |  |
| 26 | PATIENTNAME | VARCHAR2 | Y |  |
| 27 | PROCEDURENAME | VARCHAR2 | Y |  |
| 28 | ASSOCIATIONNUMBER | NUMBER | Y |  |
| 29 | UNIDADE_ID | NUMBER | Y |  |
| 30 | MODALITYNAME | VARCHAR2 | Y |  |
| 31 | PATIENTID | VARCHAR2 | Y |  |
| 32 | DESCRIPTIONEXAM | VARCHAR2 | Y | Nome do exame |

---

## MPACSCRER.PRINTSERVER_JOBS_BKP_2

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | JOBID | VARCHAR2 | N |  |
| 2 | JOBDATETIME | DATE | N |  |
| 3 | COMPLETED | NUMBER | N |  |
| 4 | REMOTEAET | VARCHAR2 | N |  |
| 5 | REMOTEIPADRESS | VARCHAR2 | N |  |
| 6 | REMOTEPORT | NUMBER | N |  |
| 7 | TOTALIMAGES | NUMBER | Y |  |
| 8 | COPIES | NUMBER | Y |  |
| 9 | PRIORITY | VARCHAR2 | Y |  |
| 10 | MEDIATYPE | VARCHAR2 | Y |  |
| 11 | DESTINATION | VARCHAR2 | Y |  |
| 12 | MAGNIFICATION | VARCHAR2 | Y |  |
| 13 | SMOOTHING | VARCHAR2 | Y |  |
| 14 | MAXDENSITY | NUMBER | Y |  |
| 15 | MINDENSITY | NUMBER | Y |  |
| 16 | BORDERDENSITY | VARCHAR2 | Y |  |
| 17 | TRIMPAPER | VARCHAR2 | Y |  |
| 18 | FILMSIZEID | VARCHAR2 | Y |  |
| 19 | ORIENTATION | VARCHAR2 | Y |  |
| 20 | LAYOUT | VARCHAR2 | Y |  |
| 21 | WPDEFAULT | VARCHAR2 | Y |  |
| 22 | WPSIZEDEFAULT | NUMBER | Y |  |
| 23 | WPFORMAT | VARCHAR2 | Y |  |
| 24 | WPORIENTATION | VARCHAR2 | Y |  |
| 25 | ACNUMBER | VARCHAR2 | Y |  |
| 26 | PATIENTNAME | VARCHAR2 | Y |  |
| 27 | PROCEDURENAME | VARCHAR2 | Y |  |
| 28 | ASSOCIATIONNUMBER | NUMBER | Y |  |
| 29 | UNIDADE_ID | NUMBER | Y |  |
| 30 | MODALITYNAME | VARCHAR2 | Y |  |
| 31 | PATIENTID | VARCHAR2 | Y |  |

---

## MPACSCRER.PRINTSERVER_JOBS_DETAIL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | JOBID | VARCHAR2 | N | The Print Session UID, we group Images by Session UID |
| 2 | FILENAME | VARCHAR2 | N | The Full Path to the Images Saved on Disk |
| 3 | COMPLETED | NUMBER | N | Indicated Whether Print Job has completed |
| 4 | IMAGENUMBER | NUMBER | Y | Sequential Number of the Image on Film |
| 5 | SOPCLASSUID | VARCHAR2 | Y |  |
| 6 | PAGENUMBER | NUMBER | Y |  |

---

## MPACSCRER.PRINTSERVER_OCR_MAP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | OCR_ID | NUMBER | N |  |
| 2 | LINHA | NUMBER | Y |  |
| 3 | SALTO | NUMBER | Y |  |
| 4 | TAMANHO | NUMBER | Y |  |
| 5 | REGIAO | CHAR | Y |  |
| 6 | REMOTEAET | VARCHAR2 | Y |  |
| 7 | UNIDADE_ID | NUMBER | Y |  |
| 8 | INVERTER | NUMBER | Y |  |
| 9 | NUMERICO | NUMBER | Y |  |
| 10 | PREFIX_DICIONARIO | VARCHAR2 | Y |  |
| 11 | WHITE_LIST | VARCHAR2 | Y |  |
| 12 | RETANGLE_X | NUMBER | Y |  |
| 13 | RETANGLE_Y | NUMBER | Y |  |
| 14 | RETANGLE_WIDTH | NUMBER | Y |  |
| 15 | RETANGLE_HEIGHT | NUMBER | Y |  |
| 16 | ORIENTATION | VARCHAR2 | Y |  |
| 17 | LAYOUT | VARCHAR2 | Y |  |
| 18 | PERCENT_BRIGHTNESS | NUMBER | N |  |
| 19 | FILMSIZEID | VARCHAR2 | Y |  |

---

## MPACSCRER.PRINTSERVER_PACS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | REMOTEAET | VARCHAR2 | N |  |
| 2 | IPADDRESS | CHAR | N |  |
| 3 | PORT | NUMBER | N |  |
| 4 | CALLINGAET | VARCHAR2 | N |  |
| 5 | UNIDADE_ID | NUMBER | Y |  |

---

## MPACSCRER.PRINTSERVER_PRINTERDICOM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | REMOTEAET | VARCHAR2 | N |  |
| 2 | IPADDRESS | CHAR | N |  |
| 3 | PORT | NUMBER | N |  |
| 4 | CALLINGAET | VARCHAR2 | N |  |
| 5 | TIMEOUTSEC | NUMBER | N |  |
| 6 | DESCRIPTION | VARCHAR2 | Y |  |
| 7 | UNIDADE_ID | NUMBER | Y |  |

---

## MPACSCRER.PRINTSERVER_PRINTERWINDOWS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NOME | VARCHAR2 | N |  |
| 2 | MARGEM_ESQUERDA | NUMBER | Y |  |
| 3 | MARGEM_DIREITA | NUMBER | Y |  |
| 4 | MARGEM_TOPO | NUMBER | Y |  |
| 5 | MARGEM_BASE | NUMBER | Y |  |
| 6 | MARGEM_LOGO | NUMBER | Y |  |

---

## MPACSCRER.PRINTSERVER_QUALIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NM_IMPRESSORA | NVARCHAR2 | N |  |
| 3 | QTDE_BRILHO | NUMBER | Y |  |
| 4 | QTDE_CONTRASTE | NUMBER | Y |  |
| 5 | UNIDADE_ID | NUMBER | Y |  |
| 6 | REMOTEAET | NVARCHAR2 | Y |  |

---

## MPACSCRER.PRINTSERVER_RULES

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | REMOTEAET | VARCHAR2 | N |  |
| 2 | REMOTEIPADRESS | VARCHAR2 | N |  |
| 3 | REMOTEPORT | NUMBER | N |  |
| 4 | COPIES | NUMBER | Y |  |
| 5 | PRIORITY | VARCHAR2 | Y |  |
| 6 | MEDIATYPE | VARCHAR2 | Y |  |
| 7 | DESTINATION | VARCHAR2 | Y |  |
| 8 | MAGNIFICATION | VARCHAR2 | Y |  |
| 9 | SMOOTHING | VARCHAR2 | Y |  |
| 10 | MAXDENSITY | NUMBER | Y |  |
| 11 | MINDENSITY | NUMBER | Y |  |
| 12 | BORDERDENSITY | VARCHAR2 | Y |  |
| 13 | TRIMPAPER | VARCHAR2 | Y |  |
| 14 | FILMSIZEID | VARCHAR2 | Y |  |
| 15 | ORIENTATION | VARCHAR2 | Y |  |
| 16 | LAYOUT | VARCHAR2 | Y |  |
| 17 | PRINTDICOM | VARCHAR2 | Y |  |
| 18 | WINDOWSPRINTERNAME | VARCHAR2 | Y |  |
| 19 | WINDOWSPAPERSIZE | VARCHAR2 | Y |  |
| 20 | ACTION | NUMBER | Y |  |
| 21 | UNIDADE_ID | NUMBER | Y |  |
| 22 | WINDOWSPAPERMARGIN | VARCHAR2 | Y |  |

---

## MPACSCRER.PRINTSERVER_SOAP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | SOAP | VARCHAR2 | Y |  |
| 3 | DESCRICAO | VARCHAR2 | Y |  |

---

## MPACSCRER.PRINTSERVER_UNIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | UNIDADE_ID | NUMBER | N |  |
| 2 | NM_UNIDADE | VARCHAR2 | Y |  |
| 3 | DS_UNIDADE | VARCHAR2 | Y |  |
| 4 | URL_UNIDADE | VARCHAR2 | Y |  |
| 5 | URL_LOGO | VARCHAR2 | Y |  |
| 6 | PATH_LOGO | VARCHAR2 | Y |  |

---

## MPACSCRER.PRINTSERVER_USERS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | NOME | VARCHAR2 | Y |  |
| 3 | USUARIO | VARCHAR2 | Y |  |
| 4 | SENHA | VARCHAR2 | Y |  |
| 5 | UNIDADE_IDS | VARCHAR2 | Y |  |
| 6 | IS_ADMIN | CHAR | Y |  |
| 7 | CPF | VARCHAR2 | Y | CPF do usuario |
| 8 | SN_LOGIN_ONEPASS | CHAR | Y | N = Cliente ainda nao realizou acesso via MVONEPASS, S = Cliente ja realizou acesso via MVONEPASS |

---

## MPACSCRER.PRINTSERVER_WORKLIST

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | REMOTEAET | VARCHAR2 | N |  |
| 2 | IPADDRESS | CHAR | N |  |
| 3 | PORT | NUMBER | N |  |
| 4 | CALLINGAET | VARCHAR2 | N |  |
| 5 | UNIDADE_ID | NUMBER | Y |  |

---

## MPACSCRER.RS_INTEGRA_LAUDO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_INTEGRA | NUMBER | Y |  |
| 2 | TP_INTEGRACAO | CHAR | Y |  |
| 3 | DT_INTEGRACAO | DATE | Y |  |
| 4 | DT_CADASTRO | DATE | Y |  |
| 5 | TP_MOVIMENTO | CHAR | Y |  |
| 6 | MESSAGE_ID | VARCHAR2 | Y |  |
| 7 | ID_UNIDADE | VARCHAR2 | Y |  |
| 8 | DT_PEDIDO | VARCHAR2 | Y |  |
| 9 | NM_PROCEDIMENTO | VARCHAR2 | Y |  |
| 10 | ID_EXAME | VARCHAR2 | Y |  |
| 11 | NM_EXAME | VARCHAR2 | Y |  |
| 12 | CD_PRONTUARIO | VARCHAR2 | Y |  |
| 13 | CD_CONVENIO | VARCHAR2 | Y |  |
| 14 | NM_PACIENTE | VARCHAR2 | Y |  |
| 15 | DT_NASCIMENTO | DATE | Y |  |
| 16 | TP_SEXO | CHAR | Y |  |
| 17 | NM_SOLICITANTE | VARCHAR2 | Y |  |
| 18 | DS_CRM_SOLICITANTE | VARCHAR2 | Y |  |
| 19 | CD_ITEM_PEDIDO_HIS | VARCHAR2 | Y |  |
| 20 | NM_EXECUTANTE | VARCHAR2 | Y |  |
| 21 | DS_CRM | VARCHAR2 | Y |  |
| 22 | DS_LAUDO | CLOB | Y |  |
| 23 | DS_LAUDO_TXT | CLOB | Y |  |
| 24 | DT_LAUDO | DATE | Y |  |
| 25 | NM_LAUDO | VARCHAR2 | Y |  |

---

## MPACSCRER.RS_VW_SETOR_EXECUTANTE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_SETOR_EXECUTANTE | NUMBER | Y |  |
| 2 | NM_SETOR_EXECUTANTE | CHAR | Y |  |

---

## MPACSCRER.SERIESVIEW

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | SERIESUID | VARCHAR2 | N |  |
| 2 | STUDYUID_FKEY | VARCHAR2 | N |  |
| 3 | MODALITY | VARCHAR2 | N |  |
| 4 | SERIESNUMBER | NUMBER | Y |  |
| 5 | SERIESDESCRIPTION | VARCHAR2 | Y |  |
| 6 | LAUDADO | NUMBER | Y |  |
| 7 | LAUDO_ID | NUMBER | Y |  |
| 8 | ASSINADO | NUMBER | Y |  |
| 9 | WEBDICOM_AUTORIZADO | NUMBER | Y |  |
| 10 | WEBDICOM_DISPONIVEL | NUMBER | Y |  |
| 11 | ARQUIVADO | NUMBER | Y |  |
| 12 | TEMPORARIO | NUMBER | Y |  |
| 13 | POS_OFF | CHAR | Y |  |
| 14 | PATIENTID_FKEY | VARCHAR2 | N |  |

---

## MPACSCRER.STUDYSTUDYVIEW

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | PATIENTID | VARCHAR2 | N |  |
| 2 | NAME_FIRST | VARCHAR2 | Y |  |
| 3 | NAME_MIDDLE | CHAR | Y |  |
| 4 | NAME_LAST | CHAR | Y |  |
| 5 | NAME_TITLE | CHAR | Y |  |
| 6 | DATEOFBIRTH | DATE | Y |  |
| 7 | SEX | VARCHAR2 | Y |  |
| 8 | OBITO | NUMBER | Y |  |
| 9 | INTERNADO | NUMBER | Y |  |
| 10 | STUDYUID | VARCHAR2 | N |  |
| 11 | PATIENTID_FKEY | VARCHAR2 | N |  |
| 12 | STUDYDATE | DATE | N |  |
| 13 | STUDYTIME | DATE | N |  |
| 14 | ACCESSIONNUMBER | VARCHAR2 | Y |  |
| 15 | STUDYID | VARCHAR2 | Y |  |
| 16 | REFERRINGPHYSICIAN_FIRST | VARCHAR2 | Y |  |
| 17 | REFERRINGPHYSICIAN_MIDDLE | CHAR | Y |  |
| 18 | REFERRINGPHYSICIAN_LAST | CHAR | Y |  |
| 19 | REFERRINGPHYSICIAN_TITLE | CHAR | Y |  |
| 20 | STUDYDESCRIPTION | VARCHAR2 | Y |  |
| 21 | LAUDADO | NUMBER | Y |  |
| 22 | LAUDO_ID | NUMBER | Y |  |
| 23 | ASSINADO | NUMBER | Y |  |
| 24 | WEBDICOM_AUTORIZADO | NUMBER | Y |  |
| 25 | WEBDICOM_DISPONIVEL | NUMBER | Y |  |
| 26 | ARQUIVADO | NUMBER | Y |  |
| 27 | TEMPORARIO | NUMBER | Y |  |
| 28 | POS_OFF | CHAR | Y |  |
| 29 | SERVIDOR | CHAR | Y |  |
| 30 | SERVICO_ID_FKEY | NUMBER | Y |  |
| 31 | POS_OFFCONTROL | VARCHAR2 | Y |  |
| 32 | UNIDADE | VARCHAR2 | Y |  |
| 33 | UNIDADEFINAL | VARCHAR2 | Y |  |

---

## MPACSCRER.VW_EXAMESTODAY

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | EXAMDATEANDTIME | DATE | Y |  |
| 2 | EXAMEDATAHORA | DATE | Y |  |
| 3 | EXAMID | VARCHAR2 | Y |  |
| 4 | EXAMDESCRIPTION | VARCHAR2 | Y |  |
| 5 | SCHEDULEDAET | VARCHAR2 | Y |  |
| 6 | ACCESSIONNUMBER | VARCHAR2 | Y |  |
| 7 | PATIENTID | VARCHAR2 | Y |  |
| 8 | FORENAME | VARCHAR2 | Y |  |
| 9 | SURNAME | CHAR | Y |  |
| 10 | TITLE | CHAR | Y |  |
| 11 | SEX | VARCHAR2 | Y |  |
| 12 | DATEOFBIRTH | DATE | Y |  |
| 13 | REFERRINGPHYSICIAN | CHAR | Y |  |
| 14 | PERFORMINGPHYSICIAN | CHAR | Y |  |
| 15 | MODALITY | VARCHAR2 | Y |  |
| 16 | EXAMROOM | CHAR | Y |  |
| 17 | STUDYUID | VARCHAR2 | Y |  |
| 18 | PROCEDUREID | VARCHAR2 | Y |  |
| 19 | PROCEDURESTEPID | VARCHAR2 | Y |  |
| 20 | PACIENTENOME | VARCHAR2 | Y |  |
| 21 | HOSPITALNAME | VARCHAR2 | Y |  |
| 22 | DONE | CHAR | Y |  |
| 23 | DATEDONE | VARCHAR2 | Y |  |
| 24 | CD_PEDIDO | NUMBER | Y |  |
| 25 | CD_ATENDIMENTO | NUMBER | Y |  |
| 26 | UND | NUMBER | Y |  |

---

## MPACSCRER.VW_IMAGES

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | PATIENTID | VARCHAR2 | N |  |
| 2 | ID_UNIDADE | NUMBER | N |  |
| 3 | STUDYUID | VARCHAR2 | N |  |
| 4 | STUDYTIME | DATE | N |  |
| 5 | STUDYDATE | DATE | N |  |
| 6 | SERIESUID | VARCHAR2 | N |  |
| 7 | SERIESNUMBER | NUMBER | Y |  |
| 8 | MODALITY | VARCHAR2 | N |  |
| 9 | SOPCLASSUID | VARCHAR2 | Y |  |
| 10 | INSTANCENUMBER | NUMBER | Y |  |
| 11 | INSTANCEUID | VARCHAR2 | N |  |
| 12 | FILENAME | VARCHAR2 | Y |  |

---

## MPACSCRER.VW_SERIES

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | SERIESUID | VARCHAR2 | N |  |
| 2 | STUDYUID | VARCHAR2 | N |  |
| 3 | MODALITY | VARCHAR2 | N |  |
| 4 | SERIESNUMBER | NUMBER | Y |  |
| 5 | SERIESDESCRIPTION | VARCHAR2 | Y |  |

---

## MPACSCRER.VW_SERIES_LIST_VIEWER

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | MODALITY | VARCHAR2 | Y |  |
| 2 | STUDYINSTANCEUID | VARCHAR2 | N |  |
| 3 | SERIES_UID | VARCHAR2 | N |  |
| 4 | PATIENTSNAME | VARCHAR2 | Y |  |
| 5 | PATIENTID | VARCHAR2 | N |  |
| 6 | ISSUEROFPATIENTID | VARCHAR2 | Y |  |
| 7 | PATIENTSBIRTHDATE | DATE | Y |  |
| 8 | PATIENTSAGE | CHAR | Y |  |
| 9 | PATIENTSSEX | VARCHAR2 | Y |  |
| 10 | STUDYDATE | DATE | N |  |
| 11 | STUDYTIME | VARCHAR2 | Y |  |
| 12 | ACCESSIONNUMBER | VARCHAR2 | Y |  |
| 13 | STUDYID | VARCHAR2 | Y |  |
| 14 | STUDYDESCRIPTION | VARCHAR2 | Y |  |
| 15 | REFERRINGPHYSICIANSNAME | VARCHAR2 | Y |  |
| 16 | NUMBEROFSERIESRELATEDINSTANCES | NUMBER | Y |  |
| 17 | UNIDADE | NUMBER | N |  |
| 18 | SERIESNUMBER | NUMBER | Y |  |
| 19 | SERIESDESCRIPTION | VARCHAR2 | Y |  |

---

## MPACSCRER.VW_STUDY

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | STUDYUID | VARCHAR2 | N |  |
| 2 | PATIENTID | VARCHAR2 | N |  |
| 3 | PATIENTNAME | VARCHAR2 | Y |  |
| 4 | DATEOFBIRTH | DATE | Y |  |
| 5 | SEX | VARCHAR2 | Y |  |
| 6 | STUDYID | VARCHAR2 | Y |  |
| 7 | STUDYDESCRIPTION | VARCHAR2 | Y |  |
| 8 | STUDYDATE | DATE | N |  |
| 9 | STUDYTIME | DATE | N |  |
| 10 | ACCESSIONNUMBER | VARCHAR2 | Y |  |
| 11 | REFERRINGPHYSICIANNAME | VARCHAR2 | Y |  |
| 12 | MODALITY | VARCHAR2 | N |  |
| 13 | ID_UNIDADE | NUMBER | N |  |

---

## MPACSCRER.VW_STUDY_LIST_SERIES_MAMMO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | MODALITY | VARCHAR2 | N |  |
| 2 | STUDYINSTANCEUID | VARCHAR2 | N |  |
| 3 | SERIESINSTANCEUID | VARCHAR2 | N |  |
| 4 | SERIESNUMBER | NUMBER | Y |  |
| 5 | SERIESDATE | DATE | Y |  |
| 6 | SERIESTIME | DATE | Y |  |
| 7 | SERIESDESCRIPTION | VARCHAR2 | Y |  |
| 8 | NUMBEROFSTUDYRELATEDINSTANCES | NUMBER | Y |  |
| 9 | ID_UNIDADE | NUMBER | N |  |

---

## MPACSCRER.VW_STUDY_LIST_VIEWER_MAMMO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | MODALITY | VARCHAR2 | Y |  |
| 2 | STUDYINSTANCEUID | VARCHAR2 | N |  |
| 3 | PATIENTSNAME | VARCHAR2 | Y |  |
| 4 | PATIENTID | VARCHAR2 | N |  |
| 5 | PATIENTSBIRTHDATE | DATE | Y |  |
| 6 | PATIENTSSEX | VARCHAR2 | Y |  |
| 7 | STUDYDATE | DATE | N |  |
| 8 | ACCESSIONNUMBER | VARCHAR2 | Y |  |
| 9 | STUDYID | VARCHAR2 | Y |  |
| 10 | STUDYDESCRIPTION | VARCHAR2 | Y |  |
| 11 | REFERRINGPHYSICIANSNAME | VARCHAR2 | Y |  |
| 12 | NUMBEROFSTUDYRELATEDSERIES | NUMBER | Y |  |
| 13 | NUMBEROFSTUDYRELATEDINSTANCES | NUMBER | Y |  |
| 14 | ISLAUDO | NUMBER | Y |  |
| 15 | ID_UNIDADE | NUMBER | N |  |
