# 19 - Portal e Painel

> Portais, dashboards, portlets (DBACP)

## Resumo

- **Tabelas**: 741
- **Owners**: DBACP, DBAMV, DBAPORTAL, FAROL, SESGO, VIVACE_SESGO_CRER, VIVACE_SESGO_HUGOL

---

## DBACP.ACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ACAO | NUMBER | N |  |
| 2 | DS_ACAO | VARCHAR2 | N |  |

---

## DBACP.ACESSO_PORTLET_UNIVERSAL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ACESSO | NUMBER | N |  |
| 2 | NM_CLIENTE | VARCHAR2 | N |  |
| 3 | DS_DOMINIO | VARCHAR2 | Y |  |
| 4 | DS_IP | VARCHAR2 | Y |  |
| 5 | CD_CLIENTE | VARCHAR2 | Y |  |
| 6 | TP_SITUACAO_ACESSO | NUMBER | N |  |
| 7 | DS_IP_SERVIDOR_ORIGEM | VARCHAR2 | Y |  |
| 8 | DS_IP_SERVIDOR_DESTINO | VARCHAR2 | Y |  |

---

## DBACP.AUCTIONITEM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | CONDITION | NUMBER | Y |  |
| 3 | DESCRIPTION | VARCHAR2 | Y |  |
| 4 | ENDS | DATE | Y |  |
| 5 | SELLER | NUMBER | N |  |
| 6 | SUCCESSFULBID | NUMBER | Y |  |

---

## DBACP.AUTH_CHAVE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_CHAVE | VARCHAR2 | N |  |
| 2 | DT_VALIDADE | DATE | Y |  |

---

## DBACP.CABECALHO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CABECALHO | NUMBER | N |  |
| 2 | DS_CABECALHO | VARCHAR2 | N |  |
| 3 | AREA_ESQUERDA | BLOB | Y |  |
| 4 | AREA_CENTRAL | BLOB | Y |  |

---

## DBACP.CABECALHO_LINKS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CABECALHO | NUMBER | N |  |
| 2 | CD_LINKS | NUMBER | N |  |

---

## DBACP.CLOB_TABLE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | Y |  |
| 2 | CLOB_COLUMN | CLOB | Y |  |

---

## DBACP.COLUNA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_COLUNA | NUMBER | N |  |
| 2 | DS_LARGURA | VARCHAR2 | Y |  |
| 3 | CD_PASTA | NUMBER | N |  |
| 4 | NR_POSICAO | NUMBER | N |  |

---

## DBACP.COLUNA_SQL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_POSICAO | NUMBER | N |  |
| 2 | CD_PORTLET | NUMBER | N |  |
| 3 | CD_FONTE | VARCHAR2 | Y |  |
| 4 | CD_MASCARA | VARCHAR2 | Y |  |
| 5 | CD_ALINHAMENTO | VARCHAR2 | Y |  |
| 6 | DS_COR_FONTE | VARCHAR2 | Y |  |
| 7 | DS_COR_FUNDO | VARCHAR2 | Y |  |
| 8 | SN_SUM | CHAR | Y |  |
| 9 | NM_COLUNA | VARCHAR2 | N |  |
| 10 | DS_LABEL | VARCHAR2 | Y |  |
| 11 | SN_HIDDEN | CHAR | N |  |
| 12 | SQL_TYPE | NUMBER | N |  |
| 13 | TP_SUMARIO | VARCHAR2 | Y |  |
| 14 | SN_PESQUISA | CHAR | Y |  |
| 15 | NR_LARGURA | NUMBER | Y |  |
| 16 | NR_TAMANHO_FONTE | NUMBER | Y |  |

---

## DBACP.COMENTARIO_PORTLET_UNIVERSAL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_COMENTARIO_UNIVERSAL | NUMBER | N |  |
| 2 | DS_COMENTARIO_UNIVERSAL | CLOB | N |  |
| 3 | TP_VOTACAO | NUMBER | Y |  |
| 4 | DT_COMENTARIO | DATE | Y |  |
| 5 | CD_PORTLET_UNIVERSAL | NUMBER | N |  |
| 6 | CD_ACESSO | NUMBER | Y |  |
| 7 | CD_USUARIO | VARCHAR2 | Y |  |
| 8 | SN_COMENTARIO_MV | VARCHAR2 | Y |  |
| 9 | LO_IMG_USUARIO | BLOB | Y |  |

---

## DBACP.CONFIGURACAO_AD

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIGURACAO_AD | NUMBER | N |  |
| 2 | NM_URL | VARCHAR2 | Y |  |
| 3 | NM_PASTA | VARCHAR2 | Y |  |
| 4 | NM_DOMINIO | VARCHAR2 | Y |  |

---

## DBACP.CONFIGURACAO_GRAFICO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIGURACAO_GRAFICO | NUMBER | N |  |
| 2 | CD_PORTLET | NUMBER | Y |  |
| 3 | TP_TIPO | VARCHAR2 | N |  |
| 4 | SN_LEGENDA | VARCHAR2 | Y |  |
| 5 | DS_POS_LEGENDA | VARCHAR2 | Y |  |
| 6 | SN_EXIBE_ROTULO_HOR | VARCHAR2 | Y |  |
| 7 | SN_EXIBE_ROTULO_VER | VARCHAR2 | Y |  |
| 8 | TP_INCLINACAO_ROTULO_HOR | VARCHAR2 | Y |  |
| 9 | TP_INCLINACAO_ROTULO_VER | VARCHAR2 | Y |  |
| 10 | SN_EXIBE_VALOR | VARCHAR2 | Y |  |
| 11 | SN_EXIBE_TITULO | VARCHAR2 | Y |  |
| 12 | CD_TIPO_GRAFICO | VARCHAR2 | N |  |
| 13 | TP_MARCADOR | VARCHAR2 | Y |  |
| 14 | NR_MARCADOR | NUMBER | Y |  |
| 15 | CD_FONTE | VARCHAR2 | Y |  |
| 16 | CD_COR_FONTE | VARCHAR2 | Y |  |
| 17 | NR_FONTE | NUMBER | Y |  |
| 18 | NR_RAIO | NUMBER | Y |  |
| 19 | NR_EXPLOSAO | NUMBER | Y |  |
| 20 | NR_ALTURA_LARGURA | NUMBER | Y |  |
| 21 | NR_TRANSPARENCIA | NUMBER | Y |  |
| 22 | NR_TENSAO | NUMBER | Y |  |
| 23 | NR_ANGULO | NUMBER | Y |  |
| 24 | NR_PROFUNDIDADE | NUMBER | Y |  |
| 25 | NR_ZOOM | NUMBER | Y |  |
| 26 | NR_ROTACAO_X | NUMBER | Y |  |
| 27 | NR_ROTACAO_Y | NUMBER | Y |  |
| 28 | NR_ROTACAO_Z | NUMBER | Y |  |
| 29 | TP_MODELO_BAR_3D | VARCHAR2 | Y |  |
| 30 | SN_ACUMULATIVO | VARCHAR2 | Y |  |
| 31 | SN_PERCENTUAL | VARCHAR2 | Y |  |
| 32 | NR_PRECISAO_DECIMAL | NUMBER | Y |  |
| 33 | CD_GRADE_COR | VARCHAR2 | Y |  |
| 34 | TP_THEME_GAUGE | VARCHAR2 | Y |  |
| 35 | SN_GAUGE_QUERY | VARCHAR2 | Y |  |
| 36 | DS_FORMATACAO_VALOR_GAUGE | VARCHAR2 | Y |  |

---

## DBACP.CONFIGURACAO_PARAMETROS_SQL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_POSICAO | NUMBER | N |  |
| 2 | CD_PORTLET_CONFIGURACAO | NUMBER | N |  |
| 3 | DS_VALOR | VARCHAR2 | Y |  |
| 4 | CD_PORTLET | NUMBER | N |  |
| 5 | NOME_PARAMETRO | VARCHAR2 | N |  |
| 6 | CD_TIPO | VARCHAR2 | Y |  |
| 7 | CD_USUARIO_PORTAL | VARCHAR2 | N |  |

---

## DBACP.CONFIGURACAO_PARAMETRO_GLOBAL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIGURACAO_PARAM_GLOBAL | NUMBER | N |  |
| 2 | CD_PORTLET_CONFIGURACAO | NUMBER | N |  |
| 3 | CD_PARAMETRO_GLOBAL | NUMBER | N |  |
| 4 | VALOR_PARAMETRO | VARCHAR2 | Y |  |
| 5 | CD_USUARIO_PORTAL | VARCHAR2 | N |  |

---

## DBACP.CONFIGURACAO_PARAMETRO_JSP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NM_PARAMJSP | VARCHAR2 | N |  |
| 2 | CD_PORTLET | NUMBER | N |  |
| 3 | CD_PORTLET_CONFIGURACAO | NUMBER | N |  |
| 4 | VALOR | CLOB | Y |  |

---

## DBACP.CONFIG_GRAFICO_INDICADORES

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_GRAFICO | NUMBER | N |  |
| 2 | CD_INDICADOR | CHAR | N |  |

---

## DBACP.CONFIG_GRAFICO_LINHAS_REF

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_GRAFICO | NUMBER | N |  |
| 2 | VL_REFERENCIA | VARCHAR2 | N |  |
| 3 | DS_TITULO | VARCHAR2 | N |  |

---

## DBACP.CONFIG_GRAFICO_PORTLET_SQL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PORTLET | NUMBER | N |  |
| 2 | COL_SERIE | NUMBER | Y |  |
| 3 | COL_VALOR | NUMBER | Y |  |
| 4 | COL_CATEGORIA | NUMBER | Y |  |
| 5 | TP_GRAFICO | VARCHAR2 | Y |  |
| 6 | LARGURA | NUMBER | Y |  |
| 7 | ALTURA | NUMBER | Y |  |
| 8 | SN_LEGENDA | VARCHAR2 | Y |  |
| 9 | DS_POS_LEGENDA | VARCHAR2 | Y |  |
| 10 | TP_APRESENTACAO_DEFAULT | VARCHAR2 | N |  |
| 11 | TP_APRESENTACAO | VARCHAR2 | N |  |
| 12 | SN_TITULO | VARCHAR2 | Y |  |
| 13 | SN_EXIBE_ROTULO_HOR | VARCHAR2 | Y |  |
| 14 | SN_EXIBE_ROTULO_VER | VARCHAR2 | Y |  |
| 15 | TP_INCLINACAO_ROT_HOR | VARCHAR2 | Y |  |
| 16 | TP_INCLINACAO_ROT_VER | VARCHAR2 | Y |  |

---

## DBACP.CONFIG_GRAFICO_SERIES

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_GRAFICO_SERIES | NUMBER | N |  |
| 2 | CD_CONFIGURACAO_GRAFICO | NUMBER | N |  |
| 3 | TP_SERIE | VARCHAR2 | N |  |
| 4 | NR_ESCALA | NUMBER | Y |  |
| 5 | NR_FAIXA_INICIAL | FLOAT | Y |  |
| 6 | NR_FAIXA_FINAL | FLOAT | Y |  |
| 7 | DS_COR | VARCHAR2 | Y |  |
| 8 | NM_COLUNA | VARCHAR2 | Y |  |

---

## DBACP.CONFIG_LOGIN_UNICO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SERVICO_EXTERNO | NUMBER | N |  |
| 2 | CD_USUARIO_PORTAL | VARCHAR2 | N |  |
| 3 | CD_USUARIO_SERVICO | VARCHAR2 | N |  |
| 4 | SENHA_SERVICO | VARCHAR2 | N |  |

---

## DBACP.CONFIG_PARAM_SMARTPHONE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_PARAM_SMARTPHONE | NUMBER | N |  |
| 2 | CD_USUARIO_PORTAL | VARCHAR2 | N |  |
| 3 | CD_PORTLET | NUMBER | N |  |
| 4 | DS_VALOR | VARCHAR2 | Y |  |
| 5 | NOME_PARAMETRO | VARCHAR2 | N |  |

---

## DBACP.CONTROLE_CHAVE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONTROLE_CHAVE | NUMBER | N |  |
| 2 | CD_CHAVE | VARCHAR2 | N |  |

---

## DBACP.CONTROLE_VERSAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONTROLE_VERSAO | NUMBER | N |  |
| 2 | DS_MAJOR | NUMBER | Y |  |
| 3 | DS_MAJOR_REVISION | NUMBER | Y |  |
| 4 | DS_MINOR | NUMBER | Y |  |
| 5 | DT_EXECUCAO | DATE | Y |  |
| 6 | DS_SISTEMA | VARCHAR2 | Y |  |

---

## DBACP.CONTROLE_VERSAO_HISTORICO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONTROLE_VERSAO_HIST | NUMBER | N |  |
| 2 | DS_MAJOR | NUMBER | Y |  |
| 3 | DS_MAJOR_REVISION | NUMBER | Y |  |
| 4 | DS_MINOR | NUMBER | Y |  |
| 5 | DT_EXECUCAO | DATE | Y |  |
| 6 | DS_SISTEMA | VARCHAR2 | Y |  |
| 7 | METADADOS | VARCHAR2 | Y |  |

---

## DBACP.DASH_RESPOSTA_PARAMETRO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PAGINA | NUMBER | N |  |
| 2 | CD_PASTA | NUMBER | N |  |
| 3 | ID_USUARIO | NUMBER | N |  |
| 4 | VL_RESPOSTA | VARCHAR2 | Y |  |

---

## DBACP.DATABASECHANGELOG

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

---

## DBACP.DATABASECHANGELOGLOCK

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | LOCKED | NUMBER | N |  |
| 3 | LOCKGRANTED | TIMESTAMP(6) | Y |  |
| 4 | LOCKEDBY | VARCHAR2 | Y |  |

---

## DBACP.DATA_SOURCE_SQL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DATA_SOURCE_SQL | NUMBER | N |  |
| 2 | DS_DATA_SOURCE | VARCHAR2 | Y |  |
| 3 | TP_DATA_SOURCE | NUMBER | N | 1 = ORACLE; 2 = ODBC |
| 4 | HOST | VARCHAR2 | Y |  |
| 5 | PORTA | VARCHAR2 | Y |  |
| 6 | NM_BANCO | VARCHAR2 | Y | SERVER / SID |
| 7 | USUARIO | VARCHAR2 | Y |  |
| 8 | SENHA | VARCHAR2 | Y |  |
| 9 | CONF_IDIOMA | VARCHAR2 | Y |  |
| 10 | TP_DRIVER | VARCHAR2 | Y | DRIVER USADO PARA CONFIGURAR O ODBC |
| 11 | SERVICE_NAME | VARCHAR2 | Y |  |
| 12 | TP_CONEXAO | NUMBER | Y | 1 = SID / DATABASE; 2  SERVICE NAME; 3 = TNS |
| 13 | VL_CONEXAO | VARCHAR2 | Y |  |

---

## DBACP.DEBUG_KPI

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | SEQ | NUMBER | Y |  |
| 2 | DS | LONG | Y |  |

---

## DBACP.DETALHE_FILTRO_DINAMICO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DETALHE_FILTRO_DINAMICO | NUMBER | N |  |
| 2 | NR_SEQUENCIA | NUMBER | Y |  |
| 3 | SN_PAR_ESQUERDA | VARCHAR2 | Y |  |
| 4 | SN_PAR_DIREITA | VARCHAR2 | Y |  |
| 5 | DS_OPERADOR | VARCHAR2 | Y |  |
| 6 | DS_OPERADOR_LOGICO | VARCHAR2 | Y |  |
| 7 | DS_VALOR | VARCHAR2 | Y |  |
| 8 | CD_FILTRO_DINAMICO | NUMBER | N |  |
| 9 | CD_MAPA_OBJETO | NUMBER | N |  |
| 10 | CD_MV | NUMBER | Y |  |

---

## DBACP.DETALHE_PORTLET_UNIVERSAL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | LO_DETALHE_PORTLET | LONG RAW | Y |  |

---

## DBACP.DI_PS_PLANO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_PLANO | NUMBER | N |  |
| 2 | CD_PLANO | NUMBER | N |  |
| 3 | DS_PLANO | VARCHAR2 | N |  |
| 4 | TP_PLANO | VARCHAR2 | N |  |
| 5 | SN_REGULAMENTADO | VARCHAR2 | N |  |

---

## DBACP.FILTRO_DINAMICO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FILTRO_DINAMICO | NUMBER | N |  |
| 2 | NM_FILTRO_DINAMICO | VARCHAR2 | Y |  |
| 3 | SN_PUBLICO | VARCHAR2 | Y |  |
| 4 | DS_SQL | CLOB | Y |  |
| 5 | CD_REGISTRANTE | NUMBER | N |  |
| 6 | CD_MV | NUMBER | Y |  |

---

## DBACP.FILTRO_METRICA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FILTRO_METRICA | NUMBER | N |  |
| 2 | CD_MAPA_OBJETO | NUMBER | N |  |
| 3 | CD_OBJETO_OLAP | NUMBER | N |  |

---

## DBACP.FORMATACAO_CONDICIONAL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FORMATACAO_CONDICIONAL | NUMBER | N |  |
| 2 | CD_POSICAO | NUMBER | Y |  |
| 3 | CD_PORTLET | NUMBER | Y |  |
| 4 | DS_FORMULA | VARCHAR2 | N |  |
| 5 | CD_FONTE | VARCHAR2 | Y |  |
| 6 | DS_COR_FONTE | VARCHAR2 | Y |  |
| 7 | DS_COR_FUNDO | VARCHAR2 | Y |  |
| 8 | BL_IMAGEM | BLOB | Y |  |
| 9 | CD_MONTAGEM_OBJETO | NUMBER | Y |  |
| 10 | CD_PLANILHA | NUMBER | Y |  |
| 11 | CD_CAMPO | NUMBER | Y |  |
| 12 | CD_DATAMART | NUMBER | Y |  |

---

## DBACP.FORMATACAO_CRITERIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FORMATACAO_CRITERIO | NUMBER | N |  |
| 2 | CD_FORMATACAO_CONDICIONAL | NUMBER | N |  |
| 3 | DS_CAMPO | VARCHAR2 | N |  |
| 4 | DS_OPERADOR_RELACIONAL | VARCHAR2 | N |  |
| 5 | DS_VALOR | VARCHAR2 | N |  |
| 6 | DS_OPERADOR_LOGICO | VARCHAR2 | Y |  |

---

## DBACP.FUNCAO_MODULO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FUNCAO | NUMBER | N |  |
| 2 | DS_FUNCAO | VARCHAR2 | N |  |
| 3 | CD_MODULO | NUMBER | N |  |

---

## DBACP.FUNCAO_PERMISSAO_PAPEL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FUNCAO_MODULO | NUMBER | N |  |
| 2 | CD_PAPEL | NUMBER | N |  |
| 3 | SN_PERMISSAO | VARCHAR2 | Y |  |

---

## DBACP.FUNCAO_PERMISSAO_USUARIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FUNCAO | NUMBER | N |  |
| 2 | CD_USUARIO_PORTAL | VARCHAR2 | N |  |
| 3 | SN_PERMISSAO | VARCHAR2 | Y |  |

---

## DBACP.FUNCIONALIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FUNCIONALIDADE | NUMBER | N |  |
| 2 | DS_FUNCIONALIDADE | VARCHAR2 | N |  |
| 3 | CD_GRUPO_FUNCIONALIDADE | NUMBER | N |  |
| 4 | ID_FUNCIONALIDADE | VARCHAR2 | Y |  |

---

## DBACP.FUNCIONALIDADE_PAPEL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FUNCIONALIDADE | NUMBER | N |  |
| 2 | CD_PAPEL | NUMBER | N |  |

---

## DBACP.FUNCIONALIDADE_SISTEMA_LICENCA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FUNCIONALIDADE | NUMBER | N |  |
| 2 | CD_SISTEMA | NUMBER | N |  |
| 3 | CD_TIPO_LICENCA | NUMBER | N |  |

---

## DBACP.GRUPO_FUNCIONALIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GRUPO_FUNCIONALIDADE | NUMBER | N |  |
| 2 | DS_GRUPO_FUNCIONALIDADE | VARCHAR2 | N |  |
| 3 | ID_GRUPO_FUNCIONALIDADE | VARCHAR2 | Y |  |

---

## DBACP.GRUPO_PORTLET

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GRUPO_PORTLET | NUMBER | N |  |
| 2 | DS_GRUPO_PORTLET | VARCHAR2 | N |  |
| 3 | CD_MV | NUMBER | Y |  |

---

## DBACP.GSTMOB_ATALHO_FAVR
> Atalhos dos favoritos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ATALHO_FAVR | NUMBER | N | Código do atalho do favorito |
| 2 | CD_USUARIO_PORTAL | VARCHAR2 | N | Usuário do portal |
| 3 | CD_PORTLET | NUMBER | Y | Código do portlet |
| 4 | DS_ATALHO | VARCHAR2 | Y | Descrição do atalho |
| 5 | NR_ORDEM | NUMBER | N | Ordenação do atalho |

---

## DBACP.GSTMOB_LOG_ACESSO
> Logs de Acesso

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOG_ACESSO | NUMBER | N | Código do log de acesso |
| 2 | CD_USUARIO_PORTAL | VARCHAR2 | N | Usuário do portal |
| 3 | DT_ACESSO | DATE | N | Data e hora de acesso |
| 4 | TP_EQUIPAMENTO | VARCHAR2 | N | Tipo/Modelo de equipamento |
| 5 | TP_SISTEMA | VARCHAR2 | N | Nome do sistema operacional |
| 6 | VS_SISTEMA | VARCHAR2 | N | Versão do sistema operacional |
| 7 | TP_BROWSER | VARCHAR2 | N | Nome do navegador (browser) |
| 8 | VS_BROWSER | VARCHAR2 | N | Versão do navegador (browser) |
| 9 | US_AGENT | VARCHAR2 | N | User Agent donavegador (browser) |

---

## DBACP.GSTMOB_MODULO
> Módulos do Gestor Mobile

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MODULO_GESTOR | NUMBER | N | Código do módulo |
| 2 | DS_MODULO_GESTOR | VARCHAR2 | N | Descrição do módulo |
| 3 | CD_PORTLET | NUMBER | Y | Código do portlet |
| 4 | TP_MODULO | VARCHAR2 | N | Tipo do módulo. FLX: Fluxo Assistencial, PNL: Painel, KPI: KPI, etc. |
| 5 | SN_ATIVO | VARCHAR2 | N | Ativo ou desativa o módulo para uso. |
| 6 | NR_ORDEM | NUMBER | Y | Ordem de exibição do módulo. |
| 7 | SN_PORTLET | VARCHAR2 | N | Indica se o módulo possui relação com um portlet. |

---

## DBACP.GSTMOB_PAPEL_MODULO
> Acesso ao módulos do Gestor Mobile por papel do usuário

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PAPEL_MODULO_GESTOR | NUMBER | N | Código papel módulo |
| 2 | CD_PAPEL | NUMBER | N | Código do papel |
| 3 | CD_MODULO_GESTOR | NUMBER | N | Código do módulo |

---

## DBACP.GSTMOB_USUARIO_ACESSO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_USUARIO_ACESSO | NUMBER | N |  |
| 2 | CD_USUARIO_PORTAL | VARCHAR2 | N |  |
| 3 | HASH_USUARIO | VARCHAR2 | N |  |
| 4 | SN_ATIVO | CHAR | N |  |
| 5 | TP_SISTEMA | VARCHAR2 | N |  |
| 6 | VS_SISTEMA | VARCHAR2 | N |  |
| 7 | DT_ACESSO | DATE | N |  |
| 8 | FCM_TOKEN | VARCHAR2 | Y |  |

---

## DBACP.ICONE_PORTLET_UNIVERSAL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | LO_ICONE_PORTLET | LONG RAW | Y |  |

---

## DBACP.IMAGEM_LINK

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LINKS | NUMBER | N |  |
| 2 | IMAGEM | BLOB | N |  |

---

## DBACP.LINKS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LINKS | NUMBER | N |  |
| 2 | DS_LABEL | VARCHAR2 | N |  |
| 3 | DS_VALUE | VARCHAR2 | N |  |
| 4 | TP_LINKS | VARCHAR2 | N |  |

---

## DBACP.LISTA_VALORES

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LISTA_VALORES | NUMBER | N |  |
| 2 | DS_LISTA_VALORES | VARCHAR2 | N |  |
| 3 | DS_SQL | VARCHAR2 | N |  |
| 4 | NR_CAMPO_RETORNO | NUMBER | N |  |
| 5 | CAMPOS_EXIBICAO | VARCHAR2 | Y |  |
| 6 | CD_DATA_SOURCE_SQL | NUMBER | N |  |
| 7 | CD_TIPO_RETORNO | NUMBER | Y | 1=NUM¿RICO, 2=TEXTO, 3=DATA |
| 8 | CD_MV | NUMBER | Y |  |
| 9 | NR_CAMPO_FILTRO | NUMBER | Y |  |
| 10 | CD_PARAMETRO_GLOBAL | NUMBER | Y |  |

---

## DBACP.LOGS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOGS | NUMBER | N |  |
| 2 | DS_LOGS | VARCHAR2 | Y |  |
| 3 | DT_LOGS | DATE | Y |  |
| 4 | DS_OPERACAO | VARCHAR2 | Y |  |
| 5 | IP_MAQUINA | VARCHAR2 | Y |  |
| 6 | NOME_MAQUINA | VARCHAR2 | Y |  |
| 7 | ID_SESSAO | VARCHAR2 | Y |  |
| 8 | ID_USUARIO | VARCHAR2 | Y |  |
| 9 | TP_LOG | VARCHAR2 | Y |  |

---

## DBACP.LOGS_EDICAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOGS | NUMBER | N |  |
| 2 | DS_LOGS | VARCHAR2 | Y |  |
| 3 | DT_LOGS | DATE | Y |  |
| 4 | DS_OPERACAO | VARCHAR2 | Y |  |
| 5 | IP_MAQUINA | VARCHAR2 | Y |  |
| 6 | NOME_MAQUINA | VARCHAR2 | Y |  |
| 7 | ID_SESSAO | VARCHAR2 | Y |  |
| 8 | ID_USUARIO | VARCHAR2 | Y |  |
| 9 | TP_LOG | VARCHAR2 | Y |  |

---

## DBACP.LOG_ACESSO_PORTLET_UNIVERSAL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOG_ACESSO | NUMBER | N |  |
| 2 | CD_ACESSO | NUMBER | N |  |
| 3 | DT_ACESSO | DATE | N |  |
| 4 | CD_PORTLET_UNIVERSAL | NUMBER | Y |  |
| 5 | CD_USUARIO | VARCHAR2 | Y |  |
| 6 | TP_LOG_ACESSO | VARCHAR2 | Y |  |
| 7 | DT_VERSAO | DATE | Y |  |
| 8 | DS_VERSAO | VARCHAR2 | Y |  |

---

## DBACP.MAPA_OBJETO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MAPA_OBJETO | NUMBER | N |  |
| 2 | SN_FILTRO_ID | VARCHAR2 | Y |  |
| 3 | DS_FORMULA | VARCHAR2 | Y |  |
| 4 | NM_ITEM | VARCHAR2 | Y |  |
| 5 | NM_TABELA | VARCHAR2 | Y |  |
| 6 | NM_COLUNA_ID | VARCHAR2 | Y |  |
| 7 | NM_COLUNA_VAL | VARCHAR2 | Y |  |
| 8 | TP_FORMATACAO | CHAR | Y |  |
| 9 | TP_ITEM | CHAR | Y |  |
| 10 | CD_MAPA_OBJETO_PAI | NUMBER | Y |  |
| 11 | SN_DESTINO_FIXO | VARCHAR2 | Y |  |
| 12 | NM_TABELA_DESTINO | VARCHAR2 | Y |  |
| 13 | NM_COLUNA_DESTINO | VARCHAR2 | Y |  |
| 14 | SN_CUSTOMIZADA | VARCHAR2 | Y |  |
| 15 | DS_CUSTOMIZADA | VARCHAR2 | Y |  |
| 16 | CD_MV | NUMBER | Y |  |
| 17 | TP_TOTALIZACAO | CHAR | Y |  |
| 18 | TP_CAMPO | CHAR | Y |  |
| 19 | DS_EXPRESSION | VARCHAR2 | Y | USADO APENAS PARA CAMPOS CUSTOMIZADOS |
| 20 | SN_TOTAIS_DIMENSAO | VARCHAR2 | Y |  |

---

## DBACP.MAPA_OBJETO_HIERARQUIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MAPA_OBJETO_HIERARQUIA | NUMBER | N |  |
| 2 | CD_MAPA_OBJETO_FILHO | NUMBER | N |  |
| 3 | CD_MAPA_OBJETO_PAI | NUMBER | N |  |

---

## DBACP.MASCARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MASCARA | VARCHAR2 | N |  |
| 2 | DS_MASCARA | VARCHAR2 | Y |  |
| 3 | TIPO_MASCARA | VARCHAR2 | Y |  |
| 4 | CD_MV | NUMBER | Y |  |

---

## DBACP.MICROSTRATEGY_DATA_SOURCE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DATA_SOURCE | NUMBER | N |  |
| 2 | SERVER_NAME | VARCHAR2 | Y |  |
| 3 | PORT_NUMBER | NUMBER | Y |  |
| 4 | PROJECT_NAME | VARCHAR2 | Y |  |
| 5 | DATA_SOURCE_NAME | VARCHAR2 | Y |  |
| 6 | ADM_MICROSTRATEGY | VARCHAR2 | N |  |
| 7 | SENHA_ADM_MICROSTRATEGY | VARCHAR2 | Y |  |

---

## DBACP.MODULO_PERMISSAO_PAPEL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MODULO_SISTEMA | NUMBER | N |  |
| 2 | CD_PAPEL | NUMBER | N |  |
| 3 | SN_PERMISSAO | VARCHAR2 | Y |  |

---

## DBACP.MODULO_PERMISSAO_USUARIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MODULO_SISTEMA | NUMBER | N |  |
| 2 | CD_USUARIO_PORTAL | VARCHAR2 | N |  |
| 3 | SN_PERMISSAO | VARCHAR2 | Y |  |

---

## DBACP.MODULO_SISTEMA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MODULO | NUMBER | N |  |
| 2 | DS_MODULO | VARCHAR2 | N |  |
| 3 | CD_SISTEMA | NUMBER | N |  |

---

## DBACP.MODULO_SISTEMA_BKP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MODULO | NUMBER | Y |  |
| 2 | DS_MODULO | VARCHAR2 | Y |  |
| 3 | CD_SISTEMA | NUMBER | Y |  |

---

## DBACP.MONTAGEM_OBJETO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MONTAGEM_OBJETO | NUMBER | N |  |
| 2 | NR_ORDENACAO | NUMBER | Y |  |
| 3 | TP_MONTAGEM_OBJETO | VARCHAR2 | Y |  |
| 4 | CD_OBJETO_OLAP | NUMBER | N |  |
| 5 | CD_PLANILHA_DINAMICA | NUMBER | N |  |
| 6 | DS_FORMULA | VARCHAR2 | Y |  |
| 7 | VL_EXPRESSION_FILTRO | VARCHAR2 | Y |  |
| 8 | DS_EXPRESSION | VARCHAR2 | Y | SE FOR PREENCHIDA, SOBRESCREVERÁ A EXPRESSÃO DO CAMPO, CASO EXISTA |
| 9 | DS_SUM_OPCOES | VARCHAR2 | Y | OPÇÕES DE SUMÁRIO MÚLTIPLO |
| 10 | VL_SUM_FILTRO_INI | NUMBER | Y | VALOR INICIAL DE FILTRO DA MÉTRICA |
| 11 | VL_SUM_FILTRO_FIM | NUMBER | Y | VALOR FINAL DE FILTRO DA MÉTRICA |
| 12 | DS_SUM_FILTRO_LINHA | VARCHAR2 | Y | LINHA ESPECÍFICA DO FILTRO DA MÉTRICA |
| 13 | DS_SUM_FILTRO_COLUNA | VARCHAR2 | Y | COLUNA ESPECÍFICA DO FILTRO DA MÉTRICA |
| 14 | CD_MAPA_OBJETO | NUMBER | Y |  |
| 15 | TP_TOTALIZACAO | CHAR | Y |  |

---

## DBACP.NI_CONSOLIDADORA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_NOTIFICACAO_INTELIGENTE | NUMBER | N |  |
| 2 | DS_CONTEUDO_EMAIL | CLOB | N |  |
| 3 | DS_LISTA_EMAIL | VARCHAR2 | N |  |
| 4 | NR_TEMPO_EXECUCAO | NUMBER | Y |  |
| 5 | DT_EXECUCAO | DATE | N |  |
| 6 | VL_ENTRADA | NUMBER | N |  |
| 7 | DS_RELATORIO_MOBILE | CLOB | N |  |

---

## DBACP.NI_HISTORICO_EXECUCAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_HISTORICO_EXECUCAO | NUMBER | N |  |
| 2 | CD_NOTIFICACAO_INTELIGENTE | NUMBER | N |  |
| 3 | DT_EXECUCAO | DATE | N |  |
| 4 | VL_ENTRADA | NUMBER | N |  |

---

## DBACP.NI_NOTIFICACAO_INTELIGENTE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_NOTIFICACAO_INTELIGENTE | NUMBER | N | CD_NOTIFICACAO_INTELIGENTE -  Campo PK da Tabela |
| 2 | CD_USUARIO_CRIADOR | VARCHAR2 | N | CD_USUARIO_CRIADOR -  Usu¿rio que criou o registro. |
| 3 | CD_PORTLET_ENT | NUMBER | N | CD_PORTLET_ENT -  Portlet escolhida para entrada, quando executar vai ter valor unico. |
| 4 | CD_PORTLET_SAI | NUMBER | N | CD_PORTLET_SAI -  Portlet escolhida de Saida, quando executada vai trazer uma lista de dados. |
| 5 | NM_NOTIFICACAO_INTELIGENTE | VARCHAR2 | N | NM_NOTIFICACAO_INTELIGENTE -  Nome da notifica¿¿o, vai no e-mail. |
| 6 | DS_NOTIFICACAO_INTELIGENTE | CLOB | Y | DS_NOTIFICACAO_INTELIGENTE - Descri¿¿o da Notifica¿ao que pode ir pelo Email. |
| 7 | TP_ARQUIVAMENTO | VARCHAR2 | N | TP_ARQUIVAMENTO -  0-Sempre, 1-1 Semana, 2-15 Dias, 3-30 Dias,4- 60 Dias,5- 90 Dias, 6-6 Meses, 7... |
| 8 | TP_REGRA_ATUALIZACAO | VARCHAR2 | N | TP_REGRA_ATUALIZACAO -  1 -  Cada Hora, 2 - 12Horas, 3 - 24 Horas,4 1Semana,5 15Dias,6 30Dias. |
| 9 | HR_PADRAO_CARGA | DATE | N | HR_PADRAO_CARGA -  Informa a Hora que deve iniciar a carga. |
| 10 | SN_ATIVO | VARCHAR2 | N | SN_ATIVO -  Ativar ou desativar a carga. |
| 11 | DT_CRIACAO | DATE | N | DT_CRIACAO -  Data em que a Notifica¿ao foi criada. |
| 12 | DT_ATUALIZACAO | DATE | Y | DT_ATUALIZACAO -  Data da ultima atuliza¿¿o da notifica¿ao.. |
| 13 | DT_ULTIMA_EXEC | DATE | Y |  |
| 14 | DT_ENVIO | DATE | Y |  |
| 15 | TP_CONFIG_ENVIO | VARCHAR2 | N |  |

---

## DBACP.NI_NOTIFICACAO_RESPOSTA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_NOTIFICACAO_RESPOSTA | NUMBER | N | CD_NOTIFICACAO_RESPOSTA -  PK da tabela que vai guardar a respota do paramentro da portlet. |
| 2 | CD_PARAMETRO_GLOBAL | NUMBER | Y | CD_PARAMETRO_GLOBAL -  FK da tabela com Parametro global. |
| 3 | TP_PORTLET | VARCHAR2 | N | TP_PORTLET -  Especifica se a portlet ¿ de Entrada ou de Saida |
| 4 | VL_RESPOSTA | VARCHAR2 | N | VL_RESPOSTA - Guarda o valor da resposta da porlet. |
| 5 | CD_NOTIFICACAO_INTELIGENTE | NUMBER | N | CD_NOTIFICACAO_INTELIGENTE -  FK |
| 6 | NOME_PARAMETRO | VARCHAR2 | Y |  |
| 7 | CD_PORTLET | NUMBER | Y |  |

---

## DBACP.NI_REGRA_ENVIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REGRA_ENVIO | NUMBER | N | CD_REGRA_ENVIO -  Pk da tabela. |
| 2 | CD_NOTIFICACAO_INTELIGENTE | NUMBER | N | CD_NOTIFICACAO_INTELIGENTE - Fk da Tabela, notifica¿ao em que criou a regra. |
| 3 | NM_REGRA_ENVIO | VARCHAR2 | N | NM_REGRA_ENVIO -  Nome da regra de envio. |
| 4 | SN_CONSTANTE | VARCHAR2 | Y | SN_CONSTANTE - Utilizado quando uma regra n¿o vai ter faixas de valores para compara¿¿. |
| 5 | NR_FAIXA_INICIAL | NUMBER | Y | NR_FAIXA_INICIAL- Faixa Inicial de valor  para ser comparado com o resultado e envio de e-mail. |
| 6 | NR_FAIXA_FINAL | NUMBER | Y | NR_FAIXA_FINAL- Faixa final  de valor  para ser comparado com o resultado e envio de e-mail. |
| 7 | DS_EMAILS | CLOB | Y | DS_EMAILS -  Campo onde vai ser poss¿vel enviar email para v¿rios usu¿rios, separado por v¿rgula. |
| 8 | SN_ATIVO | VARCHAR2 | Y |  |
| 9 | DS_WHATSAPP | CLOB | Y |  |

---

## DBACP.NI_REG_ENVIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REG_NOTIFICACAO | NUMBER | N | CD_REG_NOTIFICACAO - PK composta que informar o registro notificado. |
| 2 | ID_USUARIO_ENVIO | NUMBER | N | ID_USUARIO_ENVIO - PK composta que informa o usuario notificado. |
| 3 | SN_LIDO | VARCHAR2 | Y | SN_LIDO - Informa se o usu¿rio leu a notifica¿¿o  S -  lido, N - N¿o lido |
| 4 | TP_LOCAL | VARCHAR2 | Y | TP_LOCAL -  Informa onde esta essa notifica¿¿o. 1 caixa de entrada, 2 Encaminhado, 3 Caixa de sai... |
| 5 | DS_EMAILS | CLOB | Y |  |
| 6 | SN_ENVIADO | VARCHAR2 | Y |  |

---

## DBACP.NI_REG_NOTIFICACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REG_NOTIFICACAO | NUMBER | N | CD_REG_NOTIFICACAO -  PK da tabela que registra a notifica¿¿o que de ser enviada, com o valor do ... |
| 2 | CD_NOTIFICACAO_INTELIGENTE | NUMBER | N | CD_NOTIFICACAO_INTELIGENTE - FK da tabela com os dados da notifica¿¿o executada. |
| 3 | DT_REG_NOTIFICACAO | DATE | Y | DT_REG_NOTIFICACAO -  Data em que executou a notifica¿¿o. |
| 4 | DS_REG_NOTIFICACAO | CLOB | Y | DS_REG_NOTIFICACAO -  Descri¿¿o enviada na notifica¿¿o. |
| 5 | DS_RELATORIO_XML | CLOB | Y | DS_RELATORIO_XML - resultado da execu¿¿o da portlet de saida relat¿rio. |
| 6 | VL_IND_ENCONTRADO | NUMBER | N | VL_IND_ENCONTRADO -  Valor do resultado encontrado na execu¿¿o da portlet de entrada. |

---

## DBACP.NI_USUARIO_ENVIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_USUARIO_ENVIO | NUMBER | N | CD_USUARIO_ENVIO -  PK da tabela que guarda os usuario que o e-mail foi disparado |
| 2 | CD_REGRA_ENVIO | NUMBER | N | CD_REGRA_ENVIO -  FK da tabela com a regra |
| 3 | ID_USUARIO_PORTAL | NUMBER | N | ID_USUARIO_PORTAL -  Usu¿rio que recebeu a notifica¿¿o por e-mail e celular. |
| 4 | SN_ATIVO | VARCHAR2 | Y |  |

---

## DBACP.OBJETO_OLAP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_OBJETO_OLAP | NUMBER | N |  |
| 2 | SN_OCULTO | VARCHAR2 | Y |  |
| 3 | NM_ITEM | VARCHAR2 | Y |  |
| 4 | CD_MAPA_OBJETO | NUMBER | Y |  |
| 5 | CD_OBJETO_OLAP_PAI | NUMBER | Y |  |
| 6 | CD_FILTRO_DINAMICO | NUMBER | Y |  |
| 7 | CD_MV | NUMBER | Y |  |
| 8 | CD_GRUPO | NUMBER | Y |  |

---

## DBACP.PAGINA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PAGINA | NUMBER | N |  |
| 2 | DS_TITULO | VARCHAR2 | N |  |
| 3 | DT_CRIACAO | DATE | N |  |
| 4 | CD_CABECALHO | NUMBER | Y |  |
| 5 | DT_ULTIMA_ALTERACAO | DATE | Y |  |
| 6 | SN_REFERENCIADA | CHAR | N |  |
| 7 | SN_ALTERNAR_TAB | CHAR | N |  |
| 8 | NR_TEMPO_ALTER_TAB | NUMBER | Y |  |
| 9 | CD_MV | NUMBER | Y |  |
| 10 | SN_DASHBOARD | CHAR | Y |  |

---

## DBACP.PAGINA_CONFIGURACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PAGINA_CONFIGURACAO | NUMBER | N |  |
| 2 | CD_PAGINA | NUMBER | N |  |
| 3 | CD_USUARIO_PORTAL | VARCHAR2 | Y |  |
| 4 | DS_COR_FONTE | VARCHAR2 | Y |  |
| 5 | CD_FONTE | VARCHAR2 | Y |  |
| 6 | CD_ESTILO_FONTE | VARCHAR2 | Y |  |
| 7 | NR_TAMANHO_FONTE | NUMBER | Y |  |

---

## DBACP.PAINEL_FILTROS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FILTRO | NUMBER | N |  |
| 2 | DS_FILTRO | VARCHAR2 | N |  |
| 3 | DS_EXPRESSION | VARCHAR2 | N | EXPRESSÃO GERADA PELO DEVEXPRESS |
| 4 | SN_PROMPT | CHAR | Y |  |
| 5 | CD_TEMA | NUMBER | Y |  |

---

## DBACP.PAINEL_PREFERENCIAS_USUARIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_USUARIO | NUMBER | N |  |
| 2 | TP_VS_PIVOT | VARCHAR2 | Y |  |
| 3 | TP_TEMA_DEVEXPRESS | VARCHAR2 | Y |  |
| 4 | SN_MODO_TV | CHAR | Y |  |
| 5 | TP_IDIOMA | CHAR | Y |  |

---

## DBACP.PAINEL_TEMA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TEMA | NUMBER | N |  |
| 2 | NM_TEMA | VARCHAR2 | N |  |
| 3 | CD_TEMA_PAI | NUMBER | Y |  |
| 4 | CD_MV | NUMBER | Y |  |

---

## DBACP.PAPEL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PAPEL | NUMBER | N |  |
| 2 | NM_PAPEL | VARCHAR2 | N |  |

---

## DBACP.PARAMETROS_SQL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_POSICAO | NUMBER | N |  |
| 2 | CD_PORTLET | NUMBER | N |  |
| 3 | DS_PERGUNTA | VARCHAR2 | Y |  |
| 4 | CD_TIPO | VARCHAR2 | N |  |
| 5 | CD_MODO_EXIBICAO | VARCHAR2 | Y |  |
| 6 | DS_DAFAULT | VARCHAR2 | Y |  |
| 7 | CD_MASCARA | VARCHAR2 | Y |  |
| 8 | CD_LISTA_VALORES | NUMBER | Y |  |
| 9 | NM_PARAMETROS | VARCHAR2 | Y |  |
| 10 | NOME_PARAMETRO | VARCHAR2 | N |  |

---

## DBACP.PARAMETRO_GLOBAL
> TABELA DE PARÂMETROS GLOBAIS DO MV PORTAL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PARAMETRO_GLOBAL | NUMBER | N |  |
| 2 | DS_PARAMETRO_GLOBAL | VARCHAR2 | N |  |
| 3 | DS_PERGUNTA_PARAMETRO_GLOBAL | VARCHAR2 | N |  |
| 4 | TP_PARAMETRO_GLOBAL | VARCHAR2 | N |  |
| 5 | CD_LISTA_VALORES | NUMBER | Y |  |
| 6 | DS_MODO_EXIBICAO | VARCHAR2 | Y |  |
| 7 | VL_PADRAO | VARCHAR2 | Y |  |
| 8 | CD_MASCARA | VARCHAR2 | Y |  |
| 9 | CD_MV | NUMBER | Y |  |

---

## DBACP.PARAMETRO_GLOBAL_PORTLET

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PORTLET | NUMBER | N |  |
| 2 | CD_PARAMETRO_GLOBAL | NUMBER | N |  |
| 3 | CD_PARAMETRO_GLOBAL_PORTLET | NUMBER | N |  |

---

## DBACP.PARAMETRO_JSP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NM_PARAMJSP | VARCHAR2 | N |  |
| 2 | CD_PORTLET | NUMBER | N |  |
| 3 | DS_PERGUNTA | VARCHAR2 | Y |  |
| 4 | TP_PARAMJSP | VARCHAR2 | Y |  |
| 5 | VALOR_DEFAULT | VARCHAR2 | Y |  |

---

## DBACP.PARAMETRO_ORDENACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORDENACAO | NUMBER | N |  |
| 2 | CD_PASTA | NUMBER | N |  |
| 3 | CD_PARAMETRO_GLOBAL | NUMBER | N |  |
| 4 | NR_POSICAO | NUMBER | Y |  |

---

## DBACP.PARAM_LINK_PASTA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PORTLET | NUMBER | N |  |
| 2 | CD_COLUNA | NUMBER | N |  |
| 3 | CD_PARAMETRO_GLOBAL | NUMBER | N |  |

---

## DBACP.PARAM_LINK_PORTLET_SQL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PORTLET | NUMBER | N |  |
| 2 | CD_COLUNA | NUMBER | N |  |
| 3 | CD_PORTLET_LINK | NUMBER | N |  |
| 4 | POSICAO_PARAMETRO | NUMBER | Y |  |
| 5 | NOME_PARAMETRO | VARCHAR2 | Y |  |

---

## DBACP.PASTA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PASTA | NUMBER | N |  |
| 2 | CD_USUARIO_PORTAL_PAGINA | NUMBER | N |  |
| 3 | DS_TITULO | VARCHAR2 | N |  |
| 4 | NR_POSICAO | NUMBER | Y |  |
| 5 | CLASSE_FORMATACAO | VARCHAR2 | Y |  |
| 6 | TEMPLATE | CHAR | N |  |
| 7 | LAYOUT | CLOB | Y |  |
| 8 | ORIENTACAO | CHAR | N |  |
| 9 | NR_TEMPO_ATUALIZACAO | NUMBER | Y |  |
| 10 | DS_COR_FONTE | VARCHAR2 | Y |  |
| 11 | DS_COR_FUNDO | VARCHAR2 | Y |  |

---

## DBACP.PASTA_CONFIGURACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PASTA | NUMBER | N |  |
| 2 | DS_LAYOUT_DASH | CLOB | Y |  |
| 3 | DS_LAYOUT_PORTLET | CLOB | Y |  |

---

## DBACP.PLAN_CAMPO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CAMPO | NUMBER | N |  |
| 2 | NM_CAMPO | VARCHAR2 | Y | nao preenchido quando for do tipo métrica calculada |
| 3 | DS_CAMPO | VARCHAR2 | N |  |
| 4 | TP_FORMATACAO | CHAR | N | I = INDEFINIDO, M = MOEDA, P = PERCENTUAL, N=NUMERICA |
| 5 | TP_CAMPO | CHAR | N | AN = ATR, AC = ATRI CUSTO, MN = MÉT, MC = MÉT CUSTO, AH = ATR HIERAR |
| 6 | DS_EXPRESSION | VARCHAR2 | Y | USADO APENAS PARA CAMPOS CUSTOMIZADOS |
| 7 | TP_TOTALIZACAO | VARCHAR2 | Y |  |
| 8 | CD_DATAMART | NUMBER | N |  |

---

## DBACP.PLAN_CAMPO_PLANILHA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PLANILHA | NUMBER | N |  |
| 2 | CD_CAMPO | NUMBER | N |  |
| 3 | CD_DATAMART | NUMBER | N |  |
| 4 | TP_TOTALIZACAO | CHAR | Y |  |
| 5 | DS_EXPRESSION | VARCHAR2 | Y | SE FOR PREENCHIDA, SOBRESCREVERÁ A EXPRESSÃO DO CAMPO, CASO EXISTA |
| 6 | DS_SUM_OPCOES | VARCHAR2 | Y | OPÇÕES DE SUMÁRIO MÚLTIPLO |
| 7 | VL_SUM_FILTRO_INI | NUMBER | Y | VALOR INICIAL DE FILTRO DA MÉTRICA |
| 8 | VL_SUM_FILTRO_FIM | NUMBER | Y | VALOR FINAL DE FILTRO DA MÉTRICA |
| 9 | DS_SUM_FILTRO_LINHA | VARCHAR2 | Y | LINHA ESPECÍFICA DO FILTRO DA MÉTRICA |
| 10 | DS_SUM_FILTRO_COLUNA | VARCHAR2 | Y | COLUNA ESPECÍFICA DO FILTRO DA MÉTRICA |

---

## DBACP.PLAN_CONFIGURACOES

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PLANILHA | NUMBER | N |  |
| 2 | DS_LAYOUT | CLOB | Y |  |
| 3 | TOP_CAMPO | VARCHAR2 | Y |  |
| 4 | TOP_VALOR | NUMBER | Y |  |
| 5 | TOP_SN_OUTROS | CHAR | Y |  |
| 6 | TOP_NM_METRICA | VARCHAR2 | Y |  |
| 7 | TOP_TIPO | CHAR | Y |  |
| 8 | SN_TOTAL_LINHAS | CHAR | N |  |
| 9 | SN_TOTAL_COLUNA | CHAR | N |  |
| 10 | TP_VISUALIZACAO_PADRAO | CHAR | N |  |
| 11 | CD_TEMA_CUSTOMIZADO | NUMBER | Y | REFERE-SE AO CADASTRO DE QUERIES |
| 12 | VL_SUBSTITUTO_NULL | CHAR | Y |  |
| 13 | NR_LINHAS_PAGINA | NUMBER | Y |  |
| 14 | DS_SQL | CLOB | Y |  |
| 15 | SN_EXIBIR_CAMPOS_CABECALHO | CHAR | Y |  |
| 16 | SN_SUMARIO_CAMPO_CUSTOMIZADO | CHAR | Y | QUANDO HABILITADO, USA A FUNÇÃO DataFieldUnboundExpressionMode="UseSummaryValues" |
| 17 | TP_ALIN_VERTICAL | CHAR | Y |  |
| 18 | SN_GRAND_TOTAL_LINHA | CHAR | Y |  |
| 19 | SN_GRAND_TOTAL_COLUNA | CHAR | Y |  |

---

## DBACP.PLAN_DATAMART

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DATAMART | NUMBER | N |  |
| 2 | NM_DATAMART | VARCHAR2 | N |  |
| 3 | DS_QUERY | CLOB | N |  |
| 4 | CD_DATA_SOURCE | NUMBER | N |  |

---

## DBACP.PLAN_DATAMART_PAPEL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DATAMART | NUMBER | N |  |
| 2 | CD_PAPEL | NUMBER | N |  |

---

## DBACP.PLAN_FILTROS_PLANILHA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PLANILHA | NUMBER | N |  |
| 2 | CD_FILTRO | NUMBER | N |  |

---

## DBACP.PLAN_GRUPO_PERSONALIZADO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GRUPO | NUMBER | N |  |
| 2 | CD_MAPA_OBJETO | NUMBER | N |  |
| 3 | NM_GRUPO | VARCHAR2 | Y |  |
| 4 | DS_DESCRICAO | VARCHAR2 | Y |  |

---

## DBACP.PLAN_HISTORICO_ALTERACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_HISTORICO | NUMBER | N |  |
| 2 | CD_PLANILHA | NUMBER | N |  |
| 3 | ID_USUARIO_PORTAL | NUMBER | N |  |
| 4 | DT_ALTERACAO | TIMESTAMP(6) | N |  |

---

## DBACP.PLAN_ITEM_PERSONALIZADO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITEM | NUMBER | N |  |
| 2 | CD_SUBGRUPO | NUMBER | N |  |
| 3 | DS_VALOR | VARCHAR2 | Y |  |

---

## DBACP.PLAN_OBJETO_OLAP_PAPEL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_OBJETO_OLAP | NUMBER | N |  |
| 2 | CD_PAPEL | NUMBER | N |  |

---

## DBACP.PLAN_PARAMETROS_QUERY

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PLANILHA | NUMBER | N |  |
| 2 | CD_PARAMETRO | NUMBER | N |  |
| 3 | NM_CAMPO | VARCHAR2 | N |  |
| 4 | TP_OPERADOR | VARCHAR2 | N | =, <, >, <=, >=, <>, LIKE |
| 5 | VL_FILTRO | VARCHAR2 | Y |  |
| 6 | TP_PARAMETRO | CHAR | Y | P - Parametro por portlet G - Parametro Global V - Variável de Sistema |
| 7 | CD_PARAMETRO_GLOBAL | NUMBER | Y |  |
| 8 | DS_PERGUNTA | VARCHAR2 | Y |  |
| 9 | CD_VARIAVEL_SISTEMA | VARCHAR2 | Y |  |

---

## DBACP.PLAN_PARAMETRO_MAPEADA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PARAMETRO_MAPEADA | NUMBER | N |  |
| 2 | CD_MONTAGEM_OBJETO | NUMBER | N |  |
| 3 | CD_PARAMETRO_GLOBAL | NUMBER | N |  |
| 4 | TP_OPERADOR | VARCHAR2 | N |  |

---

## DBACP.PLAN_PLANILHA_DINAMICA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PLANILHA | NUMBER | N |  |
| 2 | CD_PLANILHA_PAI | NUMBER | Y |  |
| 3 | NM_PLANILHA | VARCHAR2 | N |  |
| 4 | SN_DIRETORIO | CHAR | N |  |
| 5 | TP_PLANILHA | CHAR | Y | M = MAPEADA, Q = QUERY |
| 6 | CD_MV | NUMBER | Y |  |
| 7 | CD_CONFIG_GRAFICO | NUMBER | Y |  |
| 8 | CD_TEMA | NUMBER | Y |  |
| 9 | DS_PLANILHA | CLOB | Y |  |

---

## DBACP.PLAN_PLANILHA_PAPEL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PLANILHA | NUMBER | N |  |
| 2 | CD_PAPEL | NUMBER | N |  |
| 3 | SN_ACESSO | CHAR | N |  |
| 4 | SN_CUSTOMIZAR | CHAR | N |  |

---

## DBACP.PLAN_PROMPT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_USUARIO | NUMBER | N |  |
| 2 | CD_PLANILHA | NUMBER | N |  |
| 3 | CD_PROMPT | NUMBER | N |  |
| 4 | NM_TABELA | VARCHAR2 | Y |  |
| 5 | NM_CAMPO | VARCHAR2 | Y |  |
| 6 | VL_FILTROS | CLOB | Y | 'FILTRO1','FILTRO2' |
| 7 | SN_OBRIGATORIO | CHAR | Y |  |
| 8 | SN_MEMORIZADO | CHAR | Y | tabela inadequada. depois reestruturar este campo |

---

## DBACP.PLAN_PROMPT_PLANILHA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PLANILHA | NUMBER | N |  |
| 2 | CD_PROMPT_PLANILHA | NUMBER | N |  |
| 3 | NM_CAMPO | VARCHAR2 | N |  |
| 4 | VL_PRE_FILTRO | CLOB | Y |  |
| 5 | SN_OBRIGATORIO | CHAR | N |  |

---

## DBACP.PLAN_PROMPT_USUARIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PLANILHA | NUMBER | N |  |
| 2 | CD_PROMPT_PLANILHA | NUMBER | N |  |
| 3 | CD_USUARIO | NUMBER | N |  |
| 4 | VL_FILTRO | CLOB | Y |  |
| 5 | SN_MEMORIZADO | CHAR | N |  |

---

## DBACP.PLAN_SUBGRUPO_PERSONALIZADO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SUBGRUPO | NUMBER | N |  |
| 2 | CD_GRUPO | NUMBER | N |  |
| 3 | NM_SUBGRUPO | VARCHAR2 | Y |  |

---

## DBACP.PORTLET

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PORTLET | NUMBER | N |  |
| 2 | DS_PORTLET | CLOB | N |  |
| 3 | CD_GRUPO_PORTLET | NUMBER | N |  |
| 4 | DS_TITULO | VARCHAR2 | N |  |
| 5 | DT_CRIACAO | DATE | N |  |
| 6 | DT_ULTIMATE_ALTERACAO | DATE | Y |  |
| 7 | CD_USUARIO_CRIADOR | VARCHAR2 | N |  |
| 8 | SN_PUBLICADO | CHAR | N |  |
| 9 | CD_TIPO_PORTLET | VARCHAR2 | N |  |
| 10 | DT_ULTIMA_ALTERACAO | DATE | Y |  |
| 11 | CD_PORTLET_PADRAO | NUMBER | Y |  |
| 12 | DS_CRIADOR_PORTELT_PADRAO | NVARCHAR2 | Y |  |
| 13 | DT_VERSAO | DATE | Y |  |
| 14 | DS_VERSAO | VARCHAR2 | Y |  |
| 15 | SN_PORTLET_UNIVERSAL | VARCHAR2 | N |  |
| 16 | SN_SMARTPHONE | VARCHAR2 | N |  |
| 17 | CD_MV | NUMBER | Y |  |
| 18 | CD_TEMA | NUMBER | Y |  |
| 19 | TP_STATUS_EXCHANGE | VARCHAR2 | Y | NP - Não participa do exchange AA - Aguardando autorização NA - Não autorizado PB - Publicado AN ... |
| 20 | CD_EXCHANGE | NUMBER | Y |  |
| 21 | DT_ULTIMA_SINCRONIZACAO | DATE | Y |  |
| 22 | DT_INSTALACAO | DATE | Y |  |
| 23 | CD_USUARIO_INSTALACAO | VARCHAR2 | Y |  |
| 24 | DT_PUBLICACAO | DATE | Y |  |
| 25 | CD_USUARIO_PUBLICADOR | VARCHAR2 | Y |  |
| 26 | DS_DETALHAMENTO | CLOB | Y |  |

---

## DBACP.PORTLET_CONFIGURACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PORTLET_CONFIGURACAO | NUMBER | N |  |
| 2 | DS_TITULO | VARCHAR2 | Y |  |
| 3 | CD_PORTLET | NUMBER | N |  |
| 4 | CD_COLUNA | NUMBER | N |  |
| 5 | NR_POSICAO | NUMBER | N |  |
| 6 | CLASSE_FORMATACAO | VARCHAR2 | Y |  |
| 7 | CD_USUARIO_PORTAL | VARCHAR2 | Y |  |
| 8 | TP_VISUALIZACAO | VARCHAR2 | Y |  |
| 9 | DS_ALTURA | VARCHAR2 | Y |  |
| 10 | NR_TOP | NUMBER | Y |  |
| 11 | NR_LEFT | NUMBER | Y |  |
| 12 | NR_ALTURA | NUMBER | Y |  |
| 13 | NR_LARGURA | NUMBER | Y |  |
| 14 | NR_TEMPO_EXECUCAO | NUMBER | Y |  |
| 15 | ZONEID | CHAR | Y |  |
| 16 | TP_THEME | VARCHAR2 | Y |  |
| 17 | DS_COR_FONTE | VARCHAR2 | Y |  |
| 18 | CD_FONTE | VARCHAR2 | Y |  |
| 19 | CD_ESTILO_FONTE | VARCHAR2 | Y |  |
| 20 | NR_TAMANHO_FONTE | NUMBER | Y |  |
| 21 | NR_LINHAS | NUMBER | Y |  |
| 22 | SN_EXIBIR_CAMPOS_CABECALHO | CHAR | Y |  |
| 23 | NR_TAMANHO_PAGINA | NUMBER | Y |  |
| 24 | SN_PAGINACAO_AUTOMATICA | CHAR | Y |  |
| 25 | NR_TEMPO_PAGINACAO | NUMBER | Y |  |
| 26 | SN_BANDAS_PERSONALIZADAS | CHAR | Y |  |
| 27 | NM_SERIE_HINT | VARCHAR2 | Y |  |

---

## DBACP.PORTLET_FORUM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PORTLET_PADRAO | NUMBER | N |  |
| 2 | CD_PORTLET_FORUM | NUMBER | N |  |
| 3 | CD_USUARIO_PORTAL | VARCHAR2 | Y |  |
| 4 | CD_CLIENTE | VARCHAR2 | Y |  |
| 5 | VL_NOTA | NUMBER | Y |  |
| 6 | DS_COMENTARIO | VARCHAR2 | Y |  |

---

## DBACP.PORTLET_HTML

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PORTLET | NUMBER | N |  |
| 2 | DS_HTML | CLOB | Y |  |

---

## DBACP.PORTLET_IMAGEM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PORTLET | NUMBER | N |  |
| 2 | CD_IMAGEM | VARCHAR2 | N |  |
| 3 | DS_IMAGEM | BLOB | N |  |

---

## DBACP.PORTLET_JSP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PORTLET | NUMBER | N |  |
| 2 | NM_TEMPLATE_JSP | VARCHAR2 | Y |  |
| 3 | NM_PARAM_PAGE | VARCHAR2 | Y |  |
| 4 | NM_PORTLET_JSP | VARCHAR2 | Y |  |
| 5 | ALTURA | VARCHAR2 | Y |  |
| 6 | LARGURA | VARCHAR2 | Y |  |

---

## DBACP.PORTLET_LINK

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PORTLET | NUMBER | N |  |
| 2 | CD_PORTLET_LINK | NUMBER | N |  |

---

## DBACP.PORTLET_LINK_PARAM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PORTLET | NUMBER | N |  |
| 2 | CD_PORTLET_LINK | NUMBER | N |  |
| 3 | CD_POSICAO | NUMBER | N |  |
| 4 | POS_PARAMETRO | NUMBER | Y |  |
| 5 | NM_PARAMETRO | VARCHAR2 | Y |  |

---

## DBACP.PORTLET_LOG

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PORTLET | NUMBER | N |  |
| 2 | CD_PORTLET_PADRAO | NUMBER | N |  |
| 3 | DS_LOG | VARCHAR2 | Y |  |
| 4 | DT_CRIACAO | DATE | Y |  |
| 5 | CD_USUARIO_PORTAL | NUMBER | Y |  |
| 6 | DT_ULTIMA_ATUALIZACAO | DATE | Y |  |
| 7 | NM_EMPRESA_RESPONSAVEL | VARCHAR2 | Y |  |
| 8 | DS_TAMANHO | VARCHAR2 | Y |  |
| 9 | TP_ACAO | VARCHAR2 | Y |  |

---

## DBACP.PORTLET_MICROSTRATEGY

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PORTLET | NUMBER | N |  |
| 2 | ID_MICROSTRATEGY | VARCHAR2 | Y |  |
| 3 | TP_VISUALIZACAO | VARCHAR2 | Y |  |
| 4 | CD_DATA_SOURCE | NUMBER | Y |  |
| 5 | WIDTH | VARCHAR2 | Y |  |
| 6 | HEIGHT | VARCHAR2 | Y |  |

---

## DBACP.PORTLET_PAPEL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PORTLET | NUMBER | N |  |
| 2 | CD_PAPEL | NUMBER | N |  |
| 3 | SN_ACESSO | CHAR | N |  |
| 4 | SN_CUSTOMIZAR | CHAR | N |  |

---

## DBACP.PORTLET_PARAM_PLANILHA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PLANILHA | NUMBER | N |  |
| 2 | CD_PORTLET_CONFIGURACAO | NUMBER | N |  |
| 3 | CD_PARAMETRO | NUMBER | N |  |
| 4 | VL_FILTRO | VARCHAR2 | Y |  |
| 5 | CD_USUARIO_PORTAL | VARCHAR2 | N |  |

---

## DBACP.PORTLET_PARAM_PLANILHA_MAPEADA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PARAMETRO_MAPEADA | NUMBER | N |  |
| 2 | CD_PORTLET_CONFIGURACAO | NUMBER | N |  |
| 3 | CD_USUARIO_PORTAL | VARCHAR2 | N |  |
| 4 | VL_FILTRO | VARCHAR2 | Y |  |
| 5 | CD_PARAMETRO_GLOBAL | NUMBER | N |  |
| 6 | CD_MONTAGEM_OBJETO | NUMBER | N |  |

---

## DBACP.PORTLET_PLANILHA_DINAMICA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PORTLET | NUMBER | N |  |
| 2 | ID_PLANILHA_DINAMICA | NUMBER | N |  |
| 3 | TP_EXIBICAO | VARCHAR2 | Y |  |
| 4 | TP_GRAFICO | VARCHAR2 | Y |  |
| 5 | WIDTH | VARCHAR2 | Y |  |
| 6 | HEIGHT | VARCHAR2 | Y |  |
| 7 | NM_PLANILHA_DINAMICA | VARCHAR2 | Y |  |

---

## DBACP.PORTLET_SELO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PORTLET_PADRAO | NUMBER | N |  |
| 2 | CD_PORTLET_SELO | NUMBER | N |  |
| 3 | CD_SELO | NUMBER | N |  |
| 4 | CD_USUARIO_HOMOLOGADOR | NUMBER | Y |  |
| 5 | DS_COMENTARIO | VARCHAR2 | Y |  |

---

## DBACP.PORTLET_SQL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PORTLET | NUMBER | N |  |
| 2 | DS_SQL | CLOB | N |  |
| 3 | NR_CAMPO_DS_LINK | VARCHAR2 | Y |  |
| 4 | NR_CAMPO_DS_HINT | VARCHAR2 | Y |  |
| 5 | CD_DATA_SOURCE_SQL | NUMBER | N |  |
| 6 | TIPO_LINK | VARCHAR2 | Y |  |
| 7 | NR_CAMPO_DS_PESQUISA | VARCHAR2 | Y |  |
| 8 | SN_EXIBIR_BORDA | VARCHAR2 | Y |  |
| 9 | CD_FONTE_CABECALHO | VARCHAR2 | Y |  |
| 10 | NR_TAMANHO_FONTE_CABECALHO | NUMBER | Y |  |
| 11 | DS_COR_FONTE_CABECALHO | VARCHAR2 | Y |  |
| 12 | DS_COR_FUNDO_CABECALHO | VARCHAR2 | Y |  |
| 13 | CD_FONTE_RODAPE | VARCHAR2 | Y |  |
| 14 | NR_TAMANHO_FONTE_RODAPE | NUMBER | Y |  |
| 15 | DS_COR_FONTE_RODAPE | VARCHAR2 | Y |  |
| 16 | DS_COR_FUNDO_RODAPE | VARCHAR2 | Y |  |
| 17 | SN_EXIBIR_CABECALHO | VARCHAR2 | Y |  |
| 18 | CD_PASTA_LINK | NUMBER | Y |  |
| 19 | SN_ABRIR_LINK_POPUP | VARCHAR2 | Y |  |
| 20 | SN_NEGRITO_CABECALHO | VARCHAR2 | Y |  |
| 21 | SN_NEGRITO_RODAPE | VARCHAR2 | Y |  |

---

## DBACP.PORTLET_UNIVERSAL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PORTLET_UNIVERSAL | NUMBER | N |  |
| 2 | CD_PORTLET | NUMBER | N |  |
| 3 | DT_VERSAO | DATE | N |  |
| 4 | DS_VERSAO | VARCHAR2 | N |  |
| 5 | LO_VISAO_PORTLET | BLOB | Y |  |
| 6 | DT_CRIACAO | DATE | Y |  |
| 7 | LO_ICONE_PORTLET | BLOB | Y |  |
| 8 | LO_DETALHE_PORTLET | BLOB | Y |  |
| 9 | QT_DOWNLOAD | NUMBER | Y |  |
| 10 | VL_RANKING | NUMBER | Y |  |

---

## DBACP.PORTLET_UNIV_SIST_HOMOLG

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PORTLET_UNIV_SIST_HOMOLOG | NUMBER | N |  |
| 2 | CD_PORTLET_UNIVERSAL | NUMBER | N |  |
| 3 | CD_SISTEMA_HOMOLOGADO | NUMBER | N |  |

---

## DBACP.QUEST_SX_PLAN1

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | TIMESTAMP | DATE | N |  |
| 2 | STATEMENT_ID | VARCHAR2 | N |  |
| 3 | BYTES | NUMBER | Y |  |
| 4 | CARDINALITY | NUMBER | Y |  |
| 5 | COST | NUMBER | Y |  |
| 6 | ID | NUMBER | Y |  |
| 7 | OBJECT_INSTANCE | NUMBER | Y |  |
| 8 | OBJECT_NAME | VARCHAR2 | Y |  |
| 9 | OBJECT_NODE | VARCHAR2 | Y |  |
| 10 | OBJECT_OWNER | VARCHAR2 | Y |  |
| 11 | OBJECT_TYPE | VARCHAR2 | Y |  |
| 12 | OPERATION | VARCHAR2 | Y |  |
| 13 | OPTIMIZER | VARCHAR2 | Y |  |
| 14 | OPTIONS | VARCHAR2 | Y |  |
| 15 | OTHER | CLOB | Y |  |
| 16 | OTHER_TAG | VARCHAR2 | Y |  |
| 17 | PARENT_ID | NUMBER | Y |  |
| 18 | PARTITION_ID | NUMBER | Y |  |
| 19 | PARTITION_START | VARCHAR2 | Y |  |
| 20 | PARTITION_STOP | VARCHAR2 | Y |  |
| 21 | POSITION | NUMBER | Y |  |
| 22 | REMARKS | VARCHAR2 | Y |  |
| 23 | SEARCH_COLUMNS | NUMBER | Y |  |

---

## DBACP.SD_APL_LOGS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOGS | NUMBER | N |  |
| 2 | DS_LOGS | VARCHAR2 | Y |  |
| 3 | DT_LOGS | DATE | Y |  |
| 4 | DS_ACAO | VARCHAR2 | Y |  |
| 5 | CD_CENARIO | VARCHAR2 | Y |  |
| 6 | IP_MAQUINA | VARCHAR2 | Y |  |
| 7 | NOME_MAQUINA | VARCHAR2 | Y |  |
| 8 | ID_USUARIO | VARCHAR2 | Y |  |

---

## DBACP.SD_CAMPOS_ARGUMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CAMPOS_ARGUMENTO | NUMBER | N |  |
| 2 | DS_CAMPOS_ARGUMENTO | VARCHAR2 | Y |  |
| 3 | DS_OWNER | VARCHAR2 | Y |  |
| 4 | DS_TABELA | VARCHAR2 | Y |  |
| 5 | DS_CAMPO_ID | VARCHAR2 | Y |  |
| 6 | DS_CAMPO_LOV | VARCHAR2 | Y |  |
| 7 | TP_CAMPO | VARCHAR2 | Y |  |
| 8 | CD_ORIGEM | NUMBER | N | Onde o parametro pode ser utilizado: 1-MV2000 e DW; 2-MV2000; 3-DW |

---

## DBACP.SD_CARGA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CARGA | NUMBER | N |  |
| 2 | DS_CARGA | VARCHAR2 | N |  |
| 3 | NM_ROTINA | VARCHAR2 | N |  |

---

## DBACP.SD_CARGA_TP_ATENDIME

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CARGA | NUMBER | Y |  |
| 2 | TP_ATENDIMENTO | VARCHAR2 | Y |  |

---

## DBACP.SD_CENARIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CENARIO | NUMBER | N |  |
| 2 | DS_CENARIO | VARCHAR2 | Y |  |
| 3 | DT_INICIO | DATE | Y | E obrigatoria para o objetivo analise de ganho, para simulac?o de receita esta nos argumentos |
| 4 | DT_FIM | DATE | Y | E obrigatoria para o objetivo analise de ganho, para simulac?o de receita esta nos argumentos |
| 5 | DT_ATUALIZACAO | DATE | Y |  |
| 6 | CD_STATUS | NUMBER | N |  |
| 7 | CD_OBJETIVO_CENARIO | NUMBER | N |  |
| 8 | QT_REGISTRO | NUMBER | Y |  |
| 9 | VL_IMPOSTO | NUMBER | Y |  |
| 10 | VL_GLOSA | NUMBER | Y |  |
| 11 | VL_INVESTIMENTO | NUMBER | Y |  |
| 12 | VL_REC_NAO_OPER | NUMBER | Y |  |
| 13 | VL_DESP_NAO_OPER | NUMBER | Y |  |
| 14 | SN_MV_CUSTO | CHAR | Y |  |
| 15 | SN_ATIVADO_CENARIO | VARCHAR2 | N |  |
| 16 | SN_CARREGARPACOTE | VARCHAR2 | Y |  |

---

## DBACP.SD_CENARIO_PAPEL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CENARIO | NUMBER | N |  |
| 2 | CD_PAPEL | NUMBER | N |  |

---

## DBACP.SD_CENARIO_PARAMETRO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CENARIO_PARAMETRO | NUMBER | N |  |
| 2 | DS_SINAL_INICIAL | VARCHAR2 | Y |  |
| 3 | DS_CRITERIO | VARCHAR2 | Y |  |
| 4 | CD_CAMPOS_ARGUMENTO | NUMBER | Y |  |
| 5 | DS_SINAL_FINAL | VARCHAR2 | Y |  |
| 6 | DS_OPERADOR | VARCHAR2 | Y |  |
| 7 | CD_CENARIO | NUMBER | N |  |
| 8 | DS_RESPOSTA | CLOB | Y |  |

---

## DBACP.SD_CONFIGURACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIGURACAO | NUMBER | N |  |
| 2 | CD_PAGINA_PAINEL | NUMBER | Y |  |
| 3 | CD_PASTA_CONSULTA | NUMBER | Y |  |
| 4 | CD_PAGINA_RESUMO | NUMBER | Y |  |
| 5 | CD_VERSAO | VARCHAR2 | Y |  |
| 6 | CD_RELEASE | VARCHAR2 | Y |  |
| 7 | SN_LDAP | VARCHAR2 | Y |  |
| 8 | SN_LDAP_USUARIO | VARCHAR2 | Y |  |

---

## DBACP.SD_CONFIGURACAO_AD

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIGURACAO_AD | NUMBER | N |  |
| 2 | NM_URL | VARCHAR2 | Y |  |
| 3 | NM_PASTA | VARCHAR2 | Y |  |
| 4 | NM_DOMINIO | VARCHAR2 | Y |  |

---

## DBACP.SD_CONVERSAO_PROCEDIMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONVERSAO_PROCEDIMENTO | VARCHAR2 | N |  |
| 2 | CD_CONVERSAO_TAB_PRECO | NUMBER | N |  |
| 3 | CD_PROCEDIMENTO_DE | VARCHAR2 | Y |  |
| 4 | CD_PROCEDIMENTO_PARA | VARCHAR2 | Y |  |
| 5 | VL_FATOR_DE | VARCHAR2 | Y |  |
| 6 | VL_FATOR_PARA | VARCHAR2 | Y |  |
| 7 | SN_PACOTE | VARCHAR2 | Y |  |
| 8 | DT_VIGENCIA | DATE | N |  |
| 9 | SN_VALOR_ORIGINAL | VARCHAR2 | Y |  |
| 10 | CD_GRUPO | NUMBER | Y |  |
| 11 | VL_ACRESCIMO | NUMBER | Y |  |

---

## DBACP.SD_CONVERSAO_PROCEDIMENTO_PCT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONVERSAO_PROCEDIMENTO_PCT | NUMBER | N |  |
| 2 | CD_PROCEDIMENTO_PARA | VARCHAR2 | Y |  |
| 3 | VL_FATOR_PARA | NUMBER | Y |  |
| 4 | CD_CONVERSAO_PROCEDIMENTO | VARCHAR2 | N |  |
| 5 | SN_PACOTE | VARCHAR2 | Y |  |

---

## DBACP.SD_CONVERSAO_TAB_PRECO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONVERSAO_TAB_PRECO | NUMBER | N |  |
| 2 | CD_CONVENIO_DE | NUMBER | Y |  |
| 3 | CD_CONVENIO_PARA | NUMBER | Y |  |
| 4 | CD_PLANO_DE | NUMBER | Y |  |
| 5 | CD_PLANO_PARA | NUMBER | Y |  |
| 6 | CD_EMPRESA_DE | NUMBER | Y |  |
| 7 | CD_EMPRESA_PARA | NUMBER | Y |  |

---

## DBACP.SD_FILA_JOB

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FILA_JOB | NUMBER | N |  |
| 2 | CD_FILA_JOB_PAI | NUMBER | Y |  |
| 3 | DS_SIMULACAO | VARCHAR2 | Y |  |
| 4 | TP_SIMULACAO | VARCHAR2 | Y |  |
| 5 | VL_SEQUENCIA | NUMBER | N |  |
| 6 | NM_JOB | CLOB | Y |  |
| 7 | CD_STATUS | VARCHAR2 | N |  |
| 8 | NR_JOB | NUMBER | Y |  |
| 9 | CD_SIMULACAO | NUMBER | Y |  |
| 10 | CD_USUARIO_PORTAL | VARCHAR2 | Y |  |
| 11 | IP_MAQUINA | VARCHAR2 | Y |  |
| 12 | NM_MAQUINA | VARCHAR2 | Y |  |

---

## DBACP.SD_INCONSISTENCIA_TT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INCONSISTENCIA_TT | NUMBER | N |  |
| 2 | CD_PROCEDIMENTO_DE | VARCHAR2 | Y |  |
| 3 | CD_PROCEDIMENTO_PARA | VARCHAR2 | Y |  |
| 4 | VL_FATOR_DE | NUMBER | Y |  |
| 5 | VL_FATOR_PARA | NUMBER | Y |  |
| 6 | CD_STATUS | NUMBER | Y |  |
| 7 | CD_SIMULACAO | NUMBER | N |  |
| 8 | DS_INCONSISTENCIA_TT | VARCHAR2 | Y |  |
| 9 | SN_PACOTE | VARCHAR2 | Y |  |
| 10 | DT_VIGENCIA | DATE | N |  |

---

## DBACP.SD_INCONSISTENCIA_TT_PCT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INCONSISTENCIA_TT_PCT | NUMBER | N |  |
| 2 | CD_PROCEDIMENTO_PARA | VARCHAR2 | Y |  |
| 3 | VL_FATOR_PARA | NUMBER | Y |  |
| 4 | CD_INCONSISTENCIA_TT | NUMBER | N |  |
| 5 | SN_PACOTE | VARCHAR2 | Y |  |

---

## DBACP.SD_LOGS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOGS | NUMBER | Y |  |
| 2 | DS_LOGS | VARCHAR2 | Y |  |
| 3 | DT_LOGS | DATE | Y |  |
| 4 | DS_OPERACAO | VARCHAR2 | Y |  |
| 5 | DS_TABELA | VARCHAR2 | Y |  |
| 6 | IP_MAQUINA | VARCHAR2 | Y |  |
| 7 | NOME_MAQUINA | VARCHAR2 | Y |  |
| 8 | ID_SESSAO | VARCHAR2 | Y |  |
| 9 | ID_USUARIO | VARCHAR2 | Y |  |

---

## DBACP.SD_OBJETIVO_CENARIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_OBJETIVO_CENARIO | NUMBER | N |  |
| 2 | DS_OBJETIVO_CENARIO | VARCHAR2 | Y |  |

---

## DBACP.SD_OBJ_CEN_TIP_SIM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_OBJETIVO_CENARIO | NUMBER | N |  |
| 2 | CD_TIPO_SIMULACAO | NUMBER | N |  |

---

## DBACP.SD_PARAMETRO_CARGA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PARAMETRO_CARGA | NUMBER | N |  |
| 2 | CD_CARGA | NUMBER | N |  |
| 3 | NM_HASHTAG | VARCHAR2 | Y |  |
| 4 | NM_PERGUNTA | VARCHAR2 | Y |  |
| 5 | VL_SEQUENCIA | NUMBER | Y |  |

---

## DBACP.SD_PARAM_RESPOSTA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PARAMETRO_CARGA | NUMBER | N |  |
| 2 | CD_SETOR_UNIDADE | NUMBER | N |  |
| 3 | DS_VALOR | VARCHAR2 | Y |  |
| 4 | TP_ORIGEM | NUMBER | Y |  |

---

## DBACP.SD_REGRA_CONVENIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REGRA_CONVENIO | NUMBER | N |  |
| 2 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 3 | CD_CONVENIO | NUMBER | N |  |
| 4 | CD_PLANO | NUMBER | N |  |
| 5 | CD_REGRA | NUMBER | N |  |
| 6 | CD_INDICE | NUMBER | N |  |
| 7 | DT_INICIAL | DATE | N |  |
| 8 | DT_FINAL | DATE | N |  |

---

## DBACP.SD_SETOR_UNIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SETOR_UNIDADE | NUMBER | N |  |
| 2 | CD_UNIDADE_PRODUCAO | NUMBER | N |  |
| 3 | CD_SETOR | NUMBER | Y |  |
| 4 | CD_EMPRESA | NUMBER | Y |  |
| 5 | VL_CAPACIDADE | NUMBER | Y |  |
| 6 | NM_SETOR | VARCHAR2 | Y |  |
| 7 | DS_MULTI_EMPRESA | VARCHAR2 | Y |  |
| 8 | DS_WHERE | CLOB | Y |  |
| 9 | SN_ATIVO | CHAR | Y |  |

---

## DBACP.SD_SIMULACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SIMULACAO | NUMBER | N |  |
| 2 | DS_SIMULACAO | VARCHAR2 | Y |  |
| 3 | QT_REGISTRO | NUMBER | Y |  |
| 4 | CD_ORDEM | NUMBER | Y |  |
| 5 | VL_REAL | NUMBER | Y |  |
| 6 | VL_SIMULADO | NUMBER | Y |  |
| 7 | VL_RESULTADO | NUMBER | Y |  |
| 8 | CD_CENARIO | NUMBER | N |  |
| 9 | CD_TIPO_SIMULACAO | NUMBER | N |  |
| 10 | CD_STATUS | NUMBER | N |  |
| 11 | DT_REFERENCIA | DATE | Y |  |
| 12 | DT_EXECUCAO | DATE | Y |  |
| 13 | TP_DATA_CONFIG_CARGA | VARCHAR2 | Y | 0-Data da Alta; 1-Data do Lancamento |

---

## DBACP.SD_SIMULACAO_CONVERSAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SIMULACAO_CONVERSAO | NUMBER | N |  |
| 2 | CD_CONVENIO_DE | NUMBER | N |  |
| 3 | CD_CONVENIO_PARA | NUMBER | N |  |
| 4 | CD_PLANO_DE | NUMBER | N |  |
| 5 | CD_PLANO_PARA | NUMBER | N |  |
| 6 | CD_SIMULACAO | NUMBER | N |  |
| 7 | CD_EMPRESA_DE | NUMBER | Y |  |
| 8 | CD_EMPRESA_PARA | NUMBER | Y |  |

---

## DBACP.SD_STATUS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_STATUS | NUMBER | N |  |
| 2 | DS_STATUS | VARCHAR2 | Y |  |

---

## DBACP.SD_TIPO_SIMULACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIPO_SIMULACAO | NUMBER | N |  |
| 2 | DS_TIPO_SIMULACAO | VARCHAR2 | Y |  |

---

## DBACP.SD_TROCA_TABELA_PARAMETRO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TROCA_TABELA_PARAMETRO | NUMBER | N |  |
| 2 | DS_SINAL_INICIAL | VARCHAR2 | Y |  |
| 3 | DS_CRITERIO | VARCHAR2 | Y |  |
| 4 | DS_SINAL_FINAL | VARCHAR2 | Y |  |
| 5 | DS_OPERADOR | VARCHAR2 | Y |  |
| 6 | CD_SIMULACAO | NUMBER | N |  |
| 7 | CD_CAMPOS_ARGUMENTO | NUMBER | Y |  |
| 8 | DS_RESPOSTA | CLOB | Y |  |

---

## DBACP.SD_UNIDADE_PRODUCAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_UNIDADE_PRODUCAO | NUMBER | N |  |
| 2 | CD_CARGA | NUMBER | N |  |
| 3 | DS_UNIDADE_PRODUCAO | VARCHAR2 | Y |  |
| 4 | NM_UNIDADE | VARCHAR2 | Y |  |
| 5 | VL_CAPACIDADE | NUMBER | Y |  |
| 6 | SN_ATIVO | CHAR | Y |  |

---

## DBACP.SD_USUARIO_LOGADO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_USUARIO_PORTAL | VARCHAR2 | N |  |
| 2 | NM_IP | VARCHAR2 | N |  |
| 3 | DT_LOGIN | DATE | N |  |

---

## DBACP.SELO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SELO | NUMBER | N |  |
| 2 | TP_SELO | VARCHAR2 | Y |  |
| 3 | DS_IMAGEM_SELO | VARCHAR2 | Y |  |
| 4 | TP_PRODUTO | VARCHAR2 | Y |  |
| 5 | DS_VERSAO | VARCHAR2 | Y |  |
| 6 | DS_COMENTARIO | VARCHAR2 | Y |  |

---

## DBACP.SERVICO_EXTERNO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SERVICO_EXTERNO | NUMBER | N |  |
| 2 | DS_SERVICO | VARCHAR2 | N |  |
| 3 | URL_SERVICO | VARCHAR2 | Y |  |
| 4 | NM_PARAMETRO_LOGIN | VARCHAR2 | Y |  |
| 5 | NM_PARAMETRO_SENHA | VARCHAR2 | Y |  |
| 6 | PARAMETROS_EXTRAS | VARCHAR2 | Y |  |

---

## DBACP.SISTEMA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SISTEMA | NUMBER | N |  |
| 2 | DS_SISTEMA | VARCHAR2 | N |  |

---

## DBACP.SISTEMA_BKP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SISTEMA | NUMBER | Y |  |
| 2 | DS_SISTEMA | VARCHAR2 | Y |  |

---

## DBACP.SISTEMA_HOMOLOG_PORTLET_UNIV

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SISTEMA_HOMOLOGADO | NUMBER | N |  |
| 2 | DS_SISTEMA_HOMOLOGADO | VARCHAR2 | Y |  |
| 3 | DS_VERSAO_HOMOLOGADO | VARCHAR2 | Y |  |

---

## DBACP.SISTEMA_LICENCA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SISTEMA | NUMBER | N |  |
| 2 | CD_TIPO_LICENCA | NUMBER | N |  |

---

## DBACP.SISTEMA_PERMISSAO_PAPEL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SISTEMA | NUMBER | N |  |
| 2 | CD_PAPEL | NUMBER | N |  |
| 3 | SN_PERMISSAO | VARCHAR2 | Y |  |

---

## DBACP.SISTEMA_PERMISSAO_USUARIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_USUARIO_PORTAL | VARCHAR2 | N |  |
| 2 | CD_SISTEMA | NUMBER | N |  |
| 3 | SN_PERMISSAO | VARCHAR2 | Y |  |

---

## DBACP.TEMP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | VAL | CHAR | Y |  |

---

## DBACP.TEMP_CAT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | VARCHAR2 | N |  |
| 2 | NAME | VARCHAR2 | Y |  |
| 3 | SEX | VARCHAR2 | Y |  |
| 4 | WEIGHT | NUMBER | Y |  |

---

## DBACP.TESTE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DUMMY | VARCHAR2 | Y |  |

---

## DBACP.TIPO_LICENCA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIPO_LICENCA | NUMBER | N |  |
| 2 | DS_TIPO_LICENCA | VARCHAR2 | N |  |

---

## DBACP.TIPO_PORTLET

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIPO_PORTLET | VARCHAR2 | N |  |
| 2 | DS_TIPO_PORTLET | VARCHAR2 | N |  |
| 3 | GERENCIADOR_EXECUCAO | VARCHAR2 | N |  |
| 4 | GERENCIADOR_DESENVOLVIMENTO | VARCHAR2 | N |  |
| 5 | GERENCIADOR_CUSTOMIZACAO | VARCHAR2 | Y |  |
| 6 | CONTROLADOR_ACTIONS | VARCHAR2 | Y |  |

---

## DBACP.TIPO_USUARIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIPO_USUARIO | NUMBER | N |  |
| 2 | DS_TIPO_USUARIO | VARCHAR2 | Y |  |

---

## DBACP.USUARIO_LOGADO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_USUARIO_PORTAL | VARCHAR2 | N |  |
| 2 | NM_IP | VARCHAR2 | N |  |
| 3 | DT_LOGIN | DATE | N |  |

---

## DBACP.USUARIO_PERMISSAO_ATIVIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_USUARIO_PORTAL | VARCHAR2 | N |  |
| 2 | CD_USUARIO_PORTAL_SECUNDARIO | VARCHAR2 | N |  |
| 3 | SN_CONTROLE_TOTAL | CHAR | Y |  |
| 4 | SN_VISUALIZAR | CHAR | Y |  |
| 5 | SN_INCLUIR | CHAR | Y |  |
| 6 | SN_ALTERAR | CHAR | Y |  |
| 7 | SN_NEGAR | CHAR | Y |  |

---

## DBACP.USUARIO_PORTAL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_USUARIO_PORTAL | VARCHAR2 | N |  |
| 2 | XML_CONFIGURACAO_USUARIO | CLOB | Y |  |
| 3 | XML_CONFIGURACAO_PORTLET | CLOB | Y |  |
| 4 | DS_EMAIL | VARCHAR2 | Y |  |
| 5 | SN_ATIVO | CHAR | Y |  |
| 6 | NM_USUARIO | VARCHAR2 | N |  |
| 7 | DT_ULTIMO_ACESSO | DATE | Y |  |
| 8 | DT_ULTIMA_TROCA_SENHA | DATE | Y |  |
| 9 | CD_TIPO_USUARIO | NUMBER | N |  |
| 10 | CD_PAGINA_PRINCIPAL | NUMBER | Y |  |
| 11 | DS_SENHA | VARCHAR2 | N |  |
| 12 | SN_USUARIO_MICROSTRATEGY | VARCHAR2 | Y |  |
| 13 | CD_MICROSTRATEGY_DATA_SOURCE | NUMBER | Y |  |
| 14 | CD_TIPO_LICENCA | NUMBER | Y |  |
| 15 | SN_BSC | CHAR | N |  |
| 16 | SN_BACKOFFICE | CHAR | N |  |
| 17 | ID_USUARIO_PORTAL | NUMBER | N |  |
| 18 | CD_ENDERECO | NUMBER | Y |  |
| 19 | SN_PRIMEIRO_ACESSO | CHAR | N |  |
| 20 | XML_FAVORITOS | CLOB | Y |  |
| 21 | CD_CARGO | NUMBER | Y |  |
| 22 | CD_SENIORIDADE | NUMBER | Y |  |
| 23 | CD_TEMA | VARCHAR2 | Y |  |
| 24 | SN_EXCHANGE | CHAR | N |  |
| 25 | DS_CHAVE_EX | VARCHAR2 | Y |  |
| 26 | SN_MUDAR_SENHA_PROX_LOGIN | VARCHAR2 | Y |  |
| 27 | SN_EMAIL_BLACKLIST | VARCHAR2 | Y |  |
| 28 | CD_CONTA_CLOUD | NUMBER | Y |  |
| 29 | NR_CPF | VARCHAR2 | Y |  |
| 30 | DS_CELULAR_WHATSAPP | VARCHAR2 | Y |  |
| 31 | DS_DDI | VARCHAR2 | Y |  |
| 32 | SN_CREDENCIADO_ONEPASS | CHAR | N |  |

---

## DBACP.USUARIO_PORTAL_ACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ACAO | NUMBER | N |  |
| 2 | CD_USUARIO_PORTAL | VARCHAR2 | N |  |
| 3 | SN_PERMISSAO | VARCHAR2 | N |  |

---

## DBACP.USUARIO_PORTAL_PAGINA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_USUARIO_PORTAL_PAGINA | NUMBER | N |  |
| 2 | CD_PAGINA | NUMBER | N |  |
| 3 | CD_USUARIO_PORTAL | VARCHAR2 | Y |  |
| 4 | SN_CUSTOMIZAR_REFERENCIADA | CHAR | N |  |

---

## DBACP.USUARIO_PORTAL_PAPEL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_USUARIO_PORTAL | VARCHAR2 | N |  |
| 2 | CD_PAPEL | NUMBER | N |  |

---

## DBACP.USUARIO_SISTEMA_LICENCA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_USUARIO_PORTAL | VARCHAR2 | N |  |
| 2 | CD_SISTEMA | NUMBER | N |  |
| 3 | CD_TIPO_LICENCA | NUMBER | N |  |

---

## DBACP.VISAO_PORTLET_UNIVERSAL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | LO_VISAO_PORTLET | LONG RAW | Y |  |

---

## DBAMV.FSCC_CONFIG_FUNCIONALIDADE
> Funcionalidades do painel de workflow

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | TP_FUNCIONALIDADE | VARCHAR2 | N | Codigo da funcionalidade de tabela do workflow |
| 2 | DS_FUNCIONALIDADE | VARCHAR2 | N | Codigo do usuario com permiss?o para a fase |

---

## DBAMV.MVPAINEL_CFG_VOZ
> Tabela para armazenar as configurações de voz do painel

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MVPAINEL_CFG_VOZ | NUMBER | N | Código único que identifica a configuração |
| 2 | MAQUINA | VARCHAR2 | N | Nome da máquina |
| 3 | CHAMADA | VARCHAR2 | N | Texto de chamada do painel |
| 4 | ORDEM | NUMBER | N | Ordem de leitura |
| 5 | TP_VOZ | VARCHAR2 | N | Voz que fará a leitura |
| 6 | TP_QUALIDADE | VARCHAR2 | N | Qualidade da Voz que fará a leitura |
| 7 | CD_MULTI_EMPRESA | NUMBER | N | Código da Multi Empresa |

---

## DBAMV.PAINEL_ATENDIMENTO
> Painel de atendimento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ATENDIMENTO | NUMBER | N | Codigo do atendimento |
| 2 | NR_DIA | NUMBER | Y | Numero de dias |
| 3 | DT_CONFIRMADO | DATE | Y | Data da confirmac?o do paciente |
| 4 | DT_DISPENSADO | DATE | Y | Data da dispensa do paciente |
| 5 | DT_APRAZADO | DATE | Y | Data do aprazamento do paciente |
| 6 | DT_ALTA | DATE | Y | Data da alta do paciente |

---

## DBAMV.PAINEL_CLINICO
> Tabela para manter as configurações de apresentação dos dados do painel clínico no MVPEP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PAINEL_CLINICO | NUMBER | N | Indica o código do painel clínico (Pk). |
| 2 | DS_PAINEL_CLINICO | VARCHAR2 | Y | Indica a descrição do painel clínico. |
| 3 | CD_SETOR | NUMBER | Y | Indica o código do setor configurado o painel clínico (Fk). |
| 4 | CD_TIP_PRESTA | NUMBER | Y | Indica o código do tipo de prestador configurado o painel clínico (Fk). |
| 5 | CD_PRESTADOR | NUMBER | Y | Indica o código do prestador configurado o painel clínico(Fk). |
| 6 | DH_INICIAL | DATE | Y | Indica o horário inicial da apresentação do painel clínico (Fk). |
| 7 | DH_FINAL | DATE | Y | Indica o horário final da apresentação do painel clínico (Fk). |
| 8 | NR_FREQUENCIA | NUMBER | Y | Indica a frequencia (intervalo) dos horários apresentados no painel Clínico (Fk). |
| 9 | TP_FREQUENCIA | VARCHAR2 | Y | Indica o tipo de frequencia (intervalo) dos horários apresentados no painel Clínico. |
| 10 | NR_TEMPO_REFRESH | NUMBER | Y | Indica o tempo de atualização (refresh) para verificação das informações. |

---

## DBAMV.PAINEL_CLINICO_GRUPO
> Tabela para manter as configurações de apresentação dos grupos do painel clínico no MVPEP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PAINEL_CLINICO_GRUPO | NUMBER | N | Indica o código do grupo do painel clínico (Pk). |
| 2 | CD_PAINEL_CLINICO | NUMBER | N | Indica o código do painel clínico associado ao grupo (Fk). |
| 3 | CD_TIPO_DOCUMENTO | NUMBER | Y | Indica o código do tipo de documento clínico associado ao grupo do painel clínico (Fk). |
| 4 | CD_TIPO_GRUPO | NUMBER | N | Indica o código do tipo de grupo associado ao grupo do painel clínico (Fk). |
| 5 | DS_NOME_GRUPO | VARCHAR2 | Y | Descrição do grupo do painel clínico. |
| 6 | SN_ATIVO | VARCHAR2 | N | Indica se o grupo está ativo ou inativo. |
| 7 | NR_ORDEM | NUMBER | Y | Indica a ordem para exibição do grupo na tela do MVPEP. |

---

## DBAMV.PAINEL_CLINICO_PARAMETRO
> Tabela para manter as configurações de apresentação dos grupos do painel clínico no MVPEP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PAINEL_CLINICO_PARAMETRO | NUMBER | N | Indica o código do grupo do painel clínico (Pk). |
| 2 | DS_PAINEL_CLINICO_PARAMETRO | VARCHAR2 | Y | Descrição do parâmetro do painel clínico. |
| 3 | CD_PAINEL_CLINICO_GRUPO | NUMBER | Y | Indica o código do grupo do painel clínico associado ao grupo (Fk). |
| 4 | CD_TIP_ESQ | VARCHAR2 | Y | Indica o código do tipo de esquema associado ao parametro (Fk). |
| 5 | CD_TIP_PRESC | NUMBER | Y | Indica o código do item de prescrição associado ao parametro (Fk). |
| 6 | CD_FORMULA | NUMBER | Y | Indica o código da avaliação associado ao parametro (Fk). |
| 7 | CD_SINAL_VITAL | NUMBER | Y | Indica o código so sinal vital associado ao parametro (Fk). |
| 8 | SN_ATIVO | VARCHAR2 | N | Indica se o grupo está ativo ou inativo. |
| 9 | NR_ORDEM | NUMBER | Y | Indica a ordem para exibição do parametro na tela do MVPEP. |
| 10 | SN_IMPORTANTE | VARCHAR2 | N | Indica se item é importante ou não. |
| 11 | CD_CONFIG_ITENS_GRUPO_BALANCO | NUMBER | Y | Configuração do item pré-definido como parâmetro na tela de painel clínico. |
| 12 | TP_ITEM_BH | VARCHAR2 | Y | Tipo do item de balanço hídrico |

---

## DBAMV.PAINEL_CLINICO_TIPO_GRUPO
> Tabela para manter as descrições dos tipos e grupos do painel clínico no MVPEP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIPO_GRUPO | NUMBER | N | Indica o código dO tipo do grupo do painel clínico. |
| 2 | DS_TIPO_GRUPO | VARCHAR2 | Y | Indica a descrição do tipo do Grupo que será apresentada em tela no painel clínico. |
| 3 | DS_IDENTIFICADOR | VARCHAR2 | Y | Indica a descrição do identificador do Grupo do painel clínico. |
| 4 | DS_DETALHAMENTO | VARCHAR2 | Y | Indica o detalhamento do nome do Grupo do painel clínico. |
| 5 | SN_ATIVO | VARCHAR2 | N | Indica se a descrição o grupo está ativa ou inativa. |

---

## DBAMV.PAINEL_DIG_ATENDIME

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PAINEL | NUMBER | N | Codigo de identificac?o do registro |
| 2 | DS_PAINEL | VARCHAR2 | N | Descric?o do painel |
| 3 | DS_VALOR | VARCHAR2 | N | utilizado para dar ao painel uma identificac?o interna (IP) no sistema |
| 4 | SN_ATIVO | VARCHAR2 | N | Indica se o painel esta ativo para o sistema |
| 5 | CD_SETOR | NUMBER | N | Codigo do Setor |

---

## DBAMV.PLAN_TABLE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | STATEMENT_ID | VARCHAR2 | Y |  |
| 2 | PLAN_ID | NUMBER | Y |  |
| 3 | TIMESTAMP | DATE | Y |  |
| 4 | REMARKS | VARCHAR2 | Y |  |
| 5 | OPERATION | VARCHAR2 | Y |  |
| 6 | OPTIONS | VARCHAR2 | Y |  |
| 7 | OBJECT_NODE | VARCHAR2 | Y |  |
| 8 | OBJECT_OWNER | VARCHAR2 | Y |  |
| 9 | OBJECT_NAME | VARCHAR2 | Y |  |
| 10 | OBJECT_ALIAS | VARCHAR2 | Y |  |
| 11 | OBJECT_INSTANCE | NUMBER | Y |  |
| 12 | OBJECT_TYPE | VARCHAR2 | Y |  |
| 13 | OPTIMIZER | VARCHAR2 | Y |  |
| 14 | SEARCH_COLUMNS | NUMBER | Y |  |
| 15 | ID | NUMBER | Y |  |
| 16 | PARENT_ID | NUMBER | Y |  |
| 17 | DEPTH | NUMBER | Y |  |
| 18 | POSITION | NUMBER | Y |  |
| 19 | COST | NUMBER | Y |  |
| 20 | CARDINALITY | NUMBER | Y |  |
| 21 | BYTES | NUMBER | Y |  |
| 22 | OTHER_TAG | VARCHAR2 | Y |  |
| 23 | PARTITION_START | VARCHAR2 | Y |  |
| 24 | PARTITION_STOP | VARCHAR2 | Y |  |
| 25 | PARTITION_ID | NUMBER | Y |  |
| 26 | OTHER | LONG | Y |  |
| 27 | DISTRIBUTION | VARCHAR2 | Y |  |
| 28 | CPU_COST | NUMBER | Y |  |
| 29 | IO_COST | NUMBER | Y |  |
| 30 | TEMP_SPACE | NUMBER | Y |  |
| 31 | ACCESS_PREDICATES | VARCHAR2 | Y |  |
| 32 | FILTER_PREDICATES | VARCHAR2 | Y |  |
| 33 | PROJECTION | VARCHAR2 | Y |  |
| 34 | TIME | NUMBER | Y |  |
| 35 | QBLOCK_NAME | VARCHAR2 | Y |  |
| 36 | OTHER_XML | CLOB | Y |  |

---

## DBAPORTAL.ACAO_IMEDIATA_OCORRENCIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ACAO_IMEDIATA_OCORRENCIA | NUMBER | N |  |
| 2 | DS_CODIGO | VARCHAR2 | Y |  |
| 3 | DS_ACAO_IMEDIATA | VARCHAR2 | Y |  |
| 4 | SN_ATIVO | VARCHAR2 | Y |  |

---

## DBAPORTAL.ACHADO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ACHADO | NUMBER | N |  |
| 2 | DS_ACHADO | VARCHAR2 | Y |  |

---

## DBAPORTAL.ACHADO_CAUSA_RAIZ

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ACHADO_CAUSA_RAIZ | NUMBER | N |  |
| 2 | CD_ACHADO_IT_QUESTIONARIO | NUMBER | N |  |
| 3 | CD_CAUSA_RAIZ | NUMBER | N |  |

---

## DBAPORTAL.ACHADO_IT_QUESTIONARIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ACHADO_IT_QUESTIONARIO | NUMBER | N |  |
| 2 | SN_CAUSA_RAIZ | VARCHAR2 | Y |  |
| 3 | SN_INICIATIVA_ACAO | VARCHAR2 | Y |  |
| 4 | DS_PORQUE | VARCHAR2 | Y |  |
| 5 | CD_ITEM_QUESTIONARIO_ANALISE | NUMBER | N |  |
| 6 | CD_REGISTRO_OCORRENCIA | NUMBER | Y |  |
| 7 | CD_ACHADO | NUMBER | Y |  |
| 8 | CD_FLUXO_QUADRO_OCORRENCIA | NUMBER | Y |  |

---

## DBAPORTAL.ANALISE_5W2H

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ANALISE_5W2H | NUMBER | N |  |
| 2 | DS_O_QUE | VARCHAR2 | Y |  |
| 3 | DS_PORQUE | VARCHAR2 | Y |  |
| 4 | DS_QUANDO | VARCHAR2 | Y |  |
| 5 | DS_ONDE | VARCHAR2 | Y |  |
| 6 | VL_QUANTO | NUMBER | Y |  |
| 7 | DS_COMO | VARCHAR2 | Y |  |
| 8 | CD_INICIATIVA_ACAO | NUMBER | N |  |

---

## DBAPORTAL.ANALISE_5W2H_QUEM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ANALISE_5W2H | NUMBER | N |  |
| 2 | CD_USUARIO_PORTAL | VARCHAR2 | N |  |

---

## DBAPORTAL.ANALISE_COMENTARIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ANA_COMENTARIO | NUMBER | N |  |
| 2 | DT_ANA_COMENTARIO | DATE | N |  |
| 3 | CD_PESSOA | NUMBER | N |  |
| 4 | CD_OBJETIVO_INDICADOR | NUMBER | N |  |
| 5 | DS_ANA_COMENTARIO | VARCHAR2 | N |  |

---

## DBAPORTAL.ANALISE_CRITICA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ANALISE_CRITICA | NUMBER | N |  |
| 2 | DT_CRIACAO | DATE | Y |  |
| 3 | CD_REUNIAO | NUMBER | N |  |
| 4 | CD_REGISTRANTE | NUMBER | N |  |
| 5 | CD_RESPONSAVEL | NUMBER | N |  |
| 6 | CD_ORGANIZACAO | NUMBER | N |  |
| 7 | TP_SITUACAO | VARCHAR2 | Y |  |
| 8 | DS_ATA | CLOB | Y |  |

---

## DBAPORTAL.ANALISE_ISHIKAWA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ANALISE_ISHIKAWA | NUMBER | N |  |
| 2 | DS_EFEITO | VARCHAR2 | Y |  |
| 3 | DS_MEDICAO | VARCHAR2 | Y |  |
| 4 | DS_MEIO_AMBIENTE | VARCHAR2 | Y |  |
| 5 | DS_MATERIA_PRIMA | VARCHAR2 | Y |  |
| 6 | DS_MAQUINA | VARCHAR2 | Y |  |
| 7 | DS_METODO | VARCHAR2 | Y |  |
| 8 | DS_MAO_DE_OBRA | VARCHAR2 | Y |  |
| 9 | CD_INICIATIVA_ACAO | NUMBER | N |  |

---

## DBAPORTAL.ANALISE_PDCA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ANALISE_PDCA | VARCHAR2 | N |  |
| 2 | DS_PLANEJAR | VARCHAR2 | Y |  |
| 3 | DS_EXECUTAR | VARCHAR2 | Y |  |
| 4 | DS_VERIFICAR | VARCHAR2 | Y |  |
| 5 | DS_AGIR | VARCHAR2 | Y |  |
| 6 | CD_INICIATIVA_ACAO | NUMBER | N |  |

---

## DBAPORTAL.ANEXO_MENSAGEM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ANEXO_MENSAGEM | NUMBER | N |  |
| 2 | CD_MENSAGEM | NUMBER | N |  |
| 3 | DS_ANEXO | VARCHAR2 | N |  |
| 4 | TP_ARQUIVO | VARCHAR2 | Y |  |

---

## DBAPORTAL.ARQUIVO_VERSAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ARQUIVO_VERSAO | NUMBER | N |  |
| 2 | CD_DOCUMENTO | NUMBER | N |  |
| 3 | CD_USUARIO_RESPONSAVEL | VARCHAR2 | Y |  |
| 4 | DS_VERSAO | VARCHAR2 | Y |  |
| 5 | DT_VERSAO | DATE | N |  |
| 6 | DS_CAMINHO | VARCHAR2 | N |  |
| 7 | TP_ARQUIVO | NUMBER | Y |  |
| 8 | TP_VERSAO | NUMBER | N |  |

---

## DBAPORTAL.ARQ_ANEXOS_INIC_ACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ARQ_ANEXOS_INIC_ACAO | NUMBER | N |  |
| 2 | CD_INICIATIVA_ACAO | NUMBER | N |  |
| 3 | DS_NOME_ARQUIVO | VARCHAR2 | N |  |

---

## DBAPORTAL.AUDITORIA
> Tabela de auditorias

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AUDITORIA | NUMBER | N | Identificador da auditoria |
| 2 | NM_AUDITORIA | VARCHAR2 | N | Nome da auditoria |
| 3 | CD_MAPA_RISCO | NUMBER | N | Identificador do mapa de risco associado |
| 4 | DT_AUDITORIA_INI | DATE | N | Data de inicio da auditoria |
| 5 | DT_AUDITORIA_FIM | DATE | N | Data de termino da auditoria |
| 6 | ST_AUDITORIA | NUMBER | N | Situacao da auditoria |
| 7 | DS_AUDITORIA | CLOB | Y | Descricao da auditoria |
| 8 | CD_AUDITOR_RESPONSA | VARCHAR2 | Y | Identificador do auditor responsavel pela auditoria |
| 9 | DT_FECHAMENTO | DATE | Y | Data do fechamento da autditoria |
| 10 | NR_AUDITORIA | VARCHAR2 | Y | Numeracao da auditoria |
| 11 | DS_FECHAMENTO | CLOB | Y | Sumario da execucao da auditoria, indicado no fechamento desta |
| 12 | CD_CATEGORIA_AUDITORIA | NUMBER | Y | Codigo da categoria da auditoria |
| 13 | SN_ATIVO | CHAR | Y |  |

---

## DBAPORTAL.AUDITORIA_RESPONSAVEL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AUDITORIA_RESPONSAVEL | NUMBER | N |  |
| 2 | CD_AUDITORIA | NUMBER | N |  |
| 3 | TP_RESPONSAVEL | VARCHAR2 | N |  |
| 4 | CD_USUARIO_PORTAL | VARCHAR2 | Y |  |
| 5 | CD_PAPEL | NUMBER | Y |  |

---

## DBAPORTAL.AUTOMATION

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AUTOMATION | NUMBER | N |  |
| 2 | SN_VALIDADO | VARCHAR2 | Y |  |
| 3 | TP_AUTOMATION | NUMBER | Y |  |
| 4 | NM_AUTOMATION | VARCHAR2 | Y |  |
| 5 | VL_GK | CHAR | Y |  |
| 6 | CD_CONFIG_CONEXAO | NUMBER | Y |  |
| 7 | DS_SQL | CLOB | Y |  |

---

## DBAPORTAL.AUTOMATION_HISTORICO_CONEXAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AUTOMATION_DC | NUMBER | N |  |
| 2 | CD_AUTOMATION_CASA | NUMBER | Y |  |
| 3 | CD_CONFIG_CONEXAO_ATUAL | NUMBER | Y |  |

---

## DBAPORTAL.BASELINE_PROJETO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_BASELINE_PROJETO | NUMBER | N |  |
| 2 | DS_TITULO | VARCHAR2 | Y |  |
| 3 | DS_VERSAO | VARCHAR2 | Y |  |
| 4 | DT_CRIACAO | DATE | Y |  |
| 5 | CD_INICIATIVA_ACAO | NUMBER | N |  |
| 6 | DS_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 7 | ID_USUARIO_PORTAL | NUMBER | Y |  |

---

## DBAPORTAL.CADEIA_VALOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CADEIA_VALOR | NUMBER | N |  |
| 2 | DS_CADEIA_VALOR | VARCHAR2 | N |  |
| 3 | CD_PERSPECTIVA | NUMBER | Y |  |

---

## DBAPORTAL.CALENDARIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CALENDARIO | NUMBER | N |  |
| 2 | DS_CALENDARIO | VARCHAR2 | Y |  |
| 3 | DT_VIGENCIA | DATE | Y |  |
| 4 | SN_ATIVO | VARCHAR2 | Y |  |

---

## DBAPORTAL.CAMINHO_CRITICO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CAMINHO_CRITICO | NUMBER | N |  |
| 2 | DT_COMPETENCIA | DATE | Y |  |
| 3 | CD_OBJETIVO | NUMBER | N |  |
| 4 | CD_ESTRATEGIA | NUMBER | Y |  |

---

## DBAPORTAL.CAMPOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CAMPO | VARCHAR2 | N |  |
| 2 | DS_CAMPO | VARCHAR2 | N |  |
| 3 | TP_CAMPO | VARCHAR2 | N |  |
| 4 | CD_INDICADOR_PRIMARIO | VARCHAR2 | N |  |
| 5 | SN_QUEBRA_PLANILHA | VARCHAR2 | Y |  |
| 6 | DS_TABELA | VARCHAR2 | Y |  |
| 7 | DS_COL_LOV | VARCHAR2 | Y |  |
| 8 | DS_COL_ORIGEM | VARCHAR2 | Y |  |

---

## DBAPORTAL.CARGA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CARGA | NUMBER | N |  |
| 2 | NM_CARGA | VARCHAR2 | N |  |
| 3 | DS_CARGA | VARCHAR2 | Y |  |
| 4 | DT_ATUALIZACAO | DATE | N |  |
| 5 | DT_PERIODICIDADE_EXEC | DATE | Y |  |
| 6 | TP_PERIODICIDADE | VARCHAR2 | N |  |
| 7 | DS_REGRA | VARCHAR2 | Y |  |
| 8 | ID_REGISTRANTE | NUMBER | N |  |
| 9 | VL_GK | CHAR | Y |  |

---

## DBAPORTAL.CARGA_AUTOMATION

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CARGA_AUTOMATION | NUMBER | N |  |
| 2 | CD_CARGA | NUMBER | N |  |
| 3 | CD_AUTOMATION | NUMBER | N |  |

---

## DBAPORTAL.CARGO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CARGO | NUMBER | N |  |
| 2 | DS_CARGO | VARCHAR2 | Y |  |
| 3 | DS_CBO | VARCHAR2 | Y |  |

---

## DBAPORTAL.CATEGORIA_AUDITORIA
> Tabela de categoria da auditoria

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CATEGORIA_AUDITORIA | NUMBER | N | Codigo da categoria da auditoria |
| 2 | NM_CATEGORIA_AUDITORIA | VARCHAR2 | N | Nome da categoria da auditoria |

---

## DBAPORTAL.CATEGORIA_DOCTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CATEGORIA_DOCTO | NUMBER | N |  |
| 2 | DS_NUMERACAO | VARCHAR2 | N |  |
| 3 | DS_VALOR_INICIAL | VARCHAR2 | Y |  |
| 4 | NM_CATEGORIA | VARCHAR2 | N |  |
| 5 | CD_TIPO_CATEGORIA_DOCTO | NUMBER | Y |  |
| 6 | CD_REPOSITORIO_DOCTO | NUMBER | N |  |
| 7 | CD_CATEGORIA_DOCTO_PAI | NUMBER | Y |  |
| 8 | SN_NUMERACAO_AUTO | VARCHAR2 | N |  |
| 9 | DS_CATEGORIA | CLOB | Y |  |
| 10 | SN_ATIVO | VARCHAR2 | N |  |

---

## DBAPORTAL.CATEGORIA_OCORRENCIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CATEGORIA_OCORRENCIA | NUMBER | N |  |
| 2 | DS_CODIGO | VARCHAR2 | Y |  |
| 3 | DS_CATEGORIA_OCORRENCIA | VARCHAR2 | Y |  |
| 4 | NM_CATEGORIA_OCORRENCIA | VARCHAR2 | N |  |
| 5 | SN_ATIVO | VARCHAR2 | Y |  |
| 6 | SN_NEA | VARCHAR2 | Y |  |

---

## DBAPORTAL.CATEGORIA_RISCO
> Tabela de categorias de risco

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CATEGORIA_RISCO | NUMBER | N | Identificador da categoria do risco |
| 2 | NM_CATEGORIA_RISCO | VARCHAR2 | N | Nome da categoria do risco |

---

## DBAPORTAL.CAUSA_RAIZ

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CAUSA_RAIZ | NUMBER | N |  |
| 2 | NM_CAUSA_RAIZ | VARCHAR2 | Y |  |
| 3 | SN_ATIVO | VARCHAR2 | Y |  |
| 4 | CD_TIPO_CAUSA_RAIZ | NUMBER | Y |  |

---

## DBAPORTAL.CENTRO_CUSTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CENTRO_CUSTO | NUMBER | N |  |
| 2 | DS_CENTRO_CUSTO | VARCHAR2 | N |  |
| 3 | CD_ORGANIZACAO | NUMBER | N |  |
| 4 | CD_SETOR_MV2000 | NUMBER | Y |  |
| 5 | CD_SUBDIVISAO_SETOR | NUMBER | Y |  |
| 6 | CD_GRUPO_ANALISE | NUMBER | Y |  |
| 7 | CD_CENTRO_RESP | NUMBER | Y |  |
| 8 | CD_SITE | NUMBER | Y |  |
| 9 | CD_CENTRO_CUSTO_PAI | NUMBER | Y |  |
| 10 | DS_SIGLA | VARCHAR2 | Y |  |

---

## DBAPORTAL.CENTRO_RESP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CENTRO_RESP | NUMBER | N |  |
| 2 | DS_CENTRO_RESP | VARCHAR2 | N |  |
| 3 | CD_PESSOA_RESP | NUMBER | Y |  |
| 4 | CD_SITE | NUMBER | Y |  |

---

## DBAPORTAL.CLASSIFICACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CLASSIFICACAO | NUMBER | N |  |
| 2 | DS_CLASSIFICACAO | VARCHAR2 | Y |  |
| 3 | SN_PUBLICO | VARCHAR2 | Y |  |
| 4 | CD_USUARIO_PORTAL | VARCHAR2 | Y |  |

---

## DBAPORTAL.CLASSIFICACAO_HORA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | TP_CLASSIFICACAO_HORA | CHAR | N |  |
| 2 | DS_CLASSIFICACAO_HORA | VARCHAR2 | Y |  |

---

## DBAPORTAL.CLASSIFICACAO_IMPACTO
> Tabelas de classificacoes de impacto

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CLASSIFICACAO_IMPACTO | NUMBER | N | Identificador da classificacao de impacto |
| 2 | NM_CLASSIFICACAO_IMPACTO | VARCHAR2 | N | Nome da classificacao de impacto |

---

## DBAPORTAL.CLASSIFICACAO_PROBABILIDADE
> Tabela de classificacoes de probabilidade

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CLASSIFICACAO_PROBABILIDADE | NUMBER | N | Identificador da classicacao de probabilidade |
| 2 | NM_CLASSIFICACAO_PROBABILIDADE | VARCHAR2 | N | Nome da classificacao de probabilidade |

---

## DBAPORTAL.CONFIGURACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIGURACAO | NUMBER | N |  |
| 2 | DS_CONFIGURACAO | VARCHAR2 | Y |  |

---

## DBAPORTAL.CONFIGURACAO_LDAP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIGURACAO_LDAP | NUMBER | N |  |
| 2 | NM_URL | VARCHAR2 | Y |  |
| 3 | NM_PASTA | VARCHAR2 | Y |  |
| 4 | NM_DOMINIO | VARCHAR2 | Y |  |

---

## DBAPORTAL.CONFIGURACAO_PARAMETRO_GLOBAL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIGURACAO_PARAM_GLOBAL | NUMBER | N |  |
| 2 | CD_PORTLET_CONFIGURACAO | NUMBER | N |  |
| 3 | CD_PARAMETRO_GLOBAL | NUMBER | N |  |
| 4 | VALOR_PARAMETRO | VARCHAR2 | N |  |
| 5 | CD_USUARIO_PORTAL | VARCHAR2 | N |  |

---

## DBAPORTAL.CONFIG_AUTENTICACAO_CONNECT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_AUTENTICACAO | NUMBER | N |  |
| 2 | NM_CONFIG_AUTENTICACAO | VARCHAR2 | Y |  |
| 3 | NM_SERVIDOR | VARCHAR2 | Y |  |
| 4 | TP_PERIODICIDADE | NUMBER | N |  |
| 5 | DT_A_PARTIR_DE | DATE | N |  |
| 6 | DS_CHAVE_CONTA | VARCHAR2 | Y |  |
| 7 | CD_ORGANIZACAO | NUMBER | N |  |
| 8 | DT_ATUALIZACAO | DATE | Y |  |

---

## DBAPORTAL.CONFIG_CONEXAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_CONEXAO | NUMBER | N |  |
| 2 | NM_CONFIG_CONEXAO | VARCHAR2 | Y |  |
| 3 | TP_DRIVER_DSN | VARCHAR2 | N |  |
| 4 | DS_DRIVER_DSN | VARCHAR2 | Y |  |
| 5 | DS_UID | VARCHAR2 | Y |  |
| 6 | DS_PWD | VARCHAR2 | Y |  |
| 7 | DS_SERVER | VARCHAR2 | Y |  |
| 8 | DS_PORT | VARCHAR2 | Y |  |
| 9 | DS_DATABASE | VARCHAR2 | Y |  |

---

## DBAPORTAL.CONFIG_CONTA_CONNECT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_CONTA_CONNECT | NUMBER | N |  |
| 2 | SN_ATIVO | VARCHAR2 | N |  |
| 3 | NM_CONTA | VARCHAR2 | N |  |
| 4 | IP_RESTRICAO | VARCHAR2 | Y |  |
| 5 | CD_USUARIO_PORTAL | VARCHAR2 | Y |  |
| 6 | CD_CONFIG_AUTENTICACAO | NUMBER | Y |  |
| 7 | DS_CHAVE_CONTA | VARCHAR2 | N |  |

---

## DBAPORTAL.CONFIG_CON_PLA_PRECO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_CON_PLA_PRECO | VARCHAR2 | N |  |
| 2 | CD_CONVENIO | NUMBER | N |  |
| 3 | CD_CON_PLA | NUMBER | N |  |
| 4 | SN_ATIVADO_CARGA | VARCHAR2 | N |  |
| 5 | CD_MULTI_EMPRESA | NUMBER | Y |  |

---

## DBAPORTAL.CONFIG_PORTAL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG | NUMBER | N |  |
| 2 | CD_PERGUNTA_DOC_PESO | NUMBER | Y |  |
| 3 | CD_PERGUNTA_DOC_ALTURA | NUMBER | Y |  |
| 4 | CD_ESPECIALIDADE | NUMBER | Y |  |
| 5 | DS_DIRETORIO_IMAGEM | VARCHAR2 | Y |  |
| 6 | SN_FAT_SUS | VARCHAR2 | N |  |
| 7 | DS_MAILHOST | VARCHAR2 | Y |  |
| 8 | DS_PORTA | NUMBER | Y |  |
| 9 | DS_DIRETORIO_TEXTO | VARCHAR2 | Y |  |
| 10 | SN_ATIVA_EMAIL | VARCHAR2 | N |  |
| 11 | DS_HOSPITAL | VARCHAR2 | Y |  |
| 12 | DS_EMAIL | VARCHAR2 | Y |  |
| 13 | SN_FA_IND_TODOS_MESES | VARCHAR2 | N |  |
| 14 | DS_USUARIO_AUT_EMAIL | VARCHAR2 | Y |  |
| 15 | DS_SENHA_AUT_EMAIL | VARCHAR2 | Y |  |
| 16 | SN_AUTENTICA_EMAIL | VARCHAR2 | Y |  |
| 17 | VL_CHAVE_LICENCA | VARCHAR2 | Y |  |
| 18 | CD_VERSAO | VARCHAR2 | Y |  |
| 19 | CD_RELEASE | VARCHAR2 | Y |  |
| 20 | SN_LDAP | VARCHAR2 | Y |  |
| 21 | SN_LDAP_USUARIO | VARCHAR2 | Y |  |
| 22 | CD_USUARIO_PEP | VARCHAR2 | Y |  |
| 23 | CD_PAPEL_PEP | NUMBER | Y |  |
| 24 | DS_URL_EXCHANGE | VARCHAR2 | Y |  |
| 25 | TP_FORCA_SENHA | VARCHAR2 | Y |  |
| 26 | NR_TAMANHO_MINIMO_SENHA | NUMBER | Y |  |
| 27 | DS_SENHA_PADRAO | VARCHAR2 | Y |  |
| 28 | NR_TEMPO_EXPIRACAO_SENHA | NUMBER | Y |  |
| 29 | SN_FORCAR_SENHA_DIFERENTE | VARCHAR2 | Y |  |
| 30 | DS_URL_PAINEL | VARCHAR2 | Y |  |
| 31 | DS_URL_SE | VARCHAR2 | Y |  |
| 32 | SN_REQUERAUTENT | VARCHAR2 | Y |  |
| 33 | SN_SSL | VARCHAR2 | Y |  |
| 34 | DS_HASH_INTEGRACAO | VARCHAR2 | Y |  |
| 35 | CD_USUARIO_FINANCEIRO | VARCHAR2 | Y |  |
| 36 | NM_USUARIO_LDAP | VARCHAR2 | Y |  |
| 37 | DS_SENHA_LDAP | VARCHAR2 | Y |  |
| 38 | NR_TAMANHO_PAGINA_PORTLET | NUMBER | Y |  |
| 39 | SN_LIMITAR_LINHAS_EXPORT_PO | VARCHAR2 | Y |  |
| 40 | DS_USUARIO_AUT_LOGIN | VARCHAR2 | Y |  |
| 41 | SN_TLS | VARCHAR2 | Y |  |
| 42 | SN_NI_EMAIL | VARCHAR2 | N |  |
| 43 | SN_NI_WHATSAPP | VARCHAR2 | N |  |
| 44 | SN_UTILIZA_MV_LICENSE | VARCHAR2 | N |  |
| 45 | NR_CNPJ | VARCHAR2 | Y |  |
| 46 | DS_API_WHATSAPP | VARCHAR2 | Y |  |
| 47 | DS_NUMERO_BOT | VARCHAR2 | Y |  |
| 48 | SN_BOT_CONFIGURADO | VARCHAR2 | N |  |
| 49 | SN_MV_PASSAPORT | VARCHAR2 | N |  |

---

## DBAPORTAL.CONFIG_PORTAL_CEN_CIR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG | NUMBER | N |  |
| 2 | CD_CEN_CIR | NUMBER | N |  |

---

## DBAPORTAL.CONFIG_USUARIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_USUARIO | NUMBER | N |  |
| 2 | NR_ORDEM_APRESENTACAO | NUMBER | N |  |
| 3 | TP_CONFIGURACAO | VARCHAR2 | N |  |
| 4 | DS_IVM | VARCHAR2 | N |  |
| 5 | CD_USUARIO | VARCHAR2 | Y | Codigo do Usuario |
| 6 | CD_IVM | VARCHAR2 | Y |  |
| 7 | CD_GRUPO_INDICADOR | NUMBER | Y |  |
| 8 | CD_PAPEL | NUMBER | Y |  |
| 9 | TP_NIVEL | VARCHAR2 | Y |  |
| 10 | CD_CONFIG_PAI | NUMBER | Y |  |
| 11 | SN_SEG | VARCHAR2 | Y |  |
| 12 | SN_TER | VARCHAR2 | Y |  |
| 13 | SN_QUA | VARCHAR2 | Y |  |
| 14 | SN_QUI | VARCHAR2 | Y |  |
| 15 | SN_SEX | VARCHAR2 | Y |  |
| 16 | SN_SAB | VARCHAR2 | Y |  |
| 17 | SN_DOM | VARCHAR2 | Y |  |
| 18 | TP_NOTIFICACAO | VARCHAR2 | Y |  |
| 19 | SN_ALERTA | VARCHAR2 | Y |  |
| 20 | SN_SUCESSO | VARCHAR2 | Y |  |
| 21 | DT_RECEBE | NUMBER | Y |  |
| 22 | HR_RECEBE | NUMBER | Y |  |
| 23 | SN_ENVIO_EMAIL | VARCHAR2 | N |  |

---

## DBAPORTAL.CONFIG_VERIFICACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG_VERIFICACAO | NUMBER | N |  |
| 2 | ID_CONFIG_VERIFICACAO | VARCHAR2 | N |  |
| 3 | CD_USUARIO_PORTAL | VARCHAR2 | N |  |

---

## DBAPORTAL.CONTATO
> Tabela de contatos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONTATO | NUMBER | N | Identificador do contato |
| 2 | NM_CONTATO | VARCHAR2 | N | Nome do contato |
| 3 | DS_EMAIL | VARCHAR2 | Y | Endereco eletronico do contato |

---

## DBAPORTAL.CONTATO_TELEFONE
> Tabela de relacionamento dos telefones de um contato

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONTATO_TELEFONE | NUMBER | N |  |
| 2 | CD_CONTATO | NUMBER | N | Identificador do contato relacionado |
| 3 | CD_TELEFONE | NUMBER | N | Identificador do telefone relacionado |

---

## DBAPORTAL.COPIA_CONTROLADA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_COPIA_CONTROLADA | NUMBER | N |  |
| 2 | CD_USUARIO_PORTAL | VARCHAR2 | N |  |
| 3 | CD_DOCUMENTO | NUMBER | N |  |
| 4 | CD_CENTRO_CUSTO | NUMBER | Y |  |
| 5 | DT_CRIACAO_COPIA | DATE | N |  |
| 6 | SN_ATIVO | VARCHAR2 | Y |  |
| 7 | DS_VERSAO | VARCHAR2 | Y |  |

---

## DBAPORTAL.COPIA_CONTROLADA_NOTA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_COPIA_CONTROLADA_NOTA | NUMBER | N |  |
| 2 | DT_COPIA_CONTROLADA_NOTA | DATE | Y |  |
| 3 | DS_COPIA_CONTROLADA_NOTA | VARCHAR2 | N |  |
| 4 | CD_DOCUMENTO | NUMBER | N |  |
| 5 | DS_VERSAO | VARCHAR2 | Y |  |
| 6 | CD_USUARIO_PORTAL | VARCHAR2 | N |  |
| 7 | CD_COPIA_CONTROLADA | NUMBER | N |  |
| 8 | CD_CENTRO_CUSTO | NUMBER | Y |  |
| 9 | SN_ATIVO | VARCHAR2 | Y |  |

---

## DBAPORTAL.COR_MATRIZ
> Tabela de cores da matriz

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | TP_COR_MATRIZ | NUMBER | N | Tipo de cor da matriz (geralmente uma regiao da matriz) |
| 2 | CD_NIVEL_IMPACTO | NUMBER | N | Identificador do nivel de probabilidade associado |
| 3 | CD_NIVEL_PROBABILIDADE | NUMBER | N | Identificador do nivel de impacto associado |
| 4 | NM_COR_MATRIZ | VARCHAR2 | N | Nome da cor de um determinado bloco impacto x probabilidade da matriz |

---

## DBAPORTAL.DADOS_INTEGRACAO_TEMP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | TP_DADO | VARCHAR2 | Y |  |
| 2 | CD_CLIENTE | NUMBER | Y |  |
| 3 | CD_SERVIDOR | NUMBER | Y |  |

---

## DBAPORTAL.DATABASECHANGELOG

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

---

## DBAPORTAL.DATABASECHANGELOGLOCK

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | LOCKED | NUMBER | N |  |
| 3 | LOCKGRANTED | TIMESTAMP(6) | Y |  |
| 4 | LOCKEDBY | VARCHAR2 | Y |  |

---

## DBAPORTAL.DEBUG_FORM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | SEQ | NUMBER | Y |  |
| 2 | DS | VARCHAR2 | Y |  |

---

## DBAPORTAL.DEBUG_IVM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | SEQ | NUMBER | Y |  |
| 2 | DS | VARCHAR2 | Y |  |

---

## DBAPORTAL.DEBUG_KPI

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | SEQ | NUMBER | Y |  |
| 2 | DS | LONG | Y |  |

---

## DBAPORTAL.DEBUG_TM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | SEQ | NUMBER | Y |  |
| 2 | DS | CLOB | Y |  |

---

## DBAPORTAL.DETALHE_FILTRO_INI_ACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DETALHE_FILTRO_INI_ACAO | NUMBER | N |  |
| 2 | CD_FILTRO_INICIATIVA_ACAO | NUMBER | N |  |
| 3 | DS_COLUNA_ESQ | VARCHAR2 | Y |  |
| 4 | DS_COLUNA_DIR | VARCHAR2 | Y |  |
| 5 | DS_OPERADOR | VARCHAR2 | Y |  |
| 6 | DS_ALIAS_COL_ESQ | VARCHAR2 | Y |  |
| 7 | DS_ALIAS_COL_DIR | VARCHAR2 | Y |  |
| 8 | CD_SEQUENCIA | NUMBER | Y |  |
| 9 | DS_OPERADOR_LOGICO | VARCHAR2 | Y |  |
| 10 | SN_PAR_ESQUERDA | VARCHAR2 | Y |  |
| 11 | SN_PAR_DIREITA | VARCHAR2 | Y |  |

---

## DBAPORTAL.DETALHE_FILTRO_OCORRENCIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DETALHE_FILTRO_OCORRENCIA | NUMBER | N |  |
| 2 | DS_COLUNA_ESQ | VARCHAR2 | Y |  |
| 3 | DS_COLUNA_DIR | VARCHAR2 | Y |  |
| 4 | DS_OPERADOR | VARCHAR2 | Y |  |
| 5 | DS_ALIAS_COL_ESQ | VARCHAR2 | Y |  |
| 6 | DS_ALIAS_COL_DIR | VARCHAR2 | Y |  |
| 7 | NR_ORDENACAO | NUMBER | Y |  |
| 8 | DS_OPERADOR_LOGICO | VARCHAR2 | Y |  |
| 9 | SN_PAR_ESQUERDA | VARCHAR2 | Y |  |
| 10 | SN_PAR_DIREITA | VARCHAR2 | Y |  |
| 11 | CD_FILTRO_OCORRENCIA | NUMBER | N |  |

---

## DBAPORTAL.DIAS_CALENDARIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DIAS_CALENDARIO | NUMBER | N |  |
| 2 | TP_DIA_SEMANA | NUMBER | Y |  |
| 3 | HR_INICIO_MAT | DATE | Y |  |
| 4 | HR_FIM_MAT | DATE | Y |  |
| 5 | HR_INICIO_VES | DATE | Y |  |
| 6 | HR_FIM_VES | DATE | Y |  |
| 7 | CD_CALENDARIO | NUMBER | N |  |

---

## DBAPORTAL.DIMENSAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DIMENSAO | NUMBER | N |  |
| 2 | DS_DIMENSAO | VARCHAR2 | N |  |
| 3 | TP_DIMENSAO | VARCHAR2 | Y |  |
| 4 | DS_SUMARIO_DIMENSAO | VARCHAR2 | Y |  |

---

## DBAPORTAL.DIMENSAO_IND_PRIMARIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INDICADOR_PRIMARIO | VARCHAR2 | N |  |
| 2 | CD_DIMENSAO | VARCHAR2 | N |  |

---

## DBAPORTAL.DIMENSIONALIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DIMENSIONALIDADE | NUMBER | N |  |
| 2 | NM_DIMENSIONALIDADE | VARCHAR2 | N |  |
| 3 | DS_DIMENSIONALIDADE | VARCHAR2 | N |  |
| 4 | NM_TABELA | VARCHAR2 | N |  |
| 5 | ID_ATRIBUTO_MSTR | VARCHAR2 | Y |  |
| 6 | SN_DIMENSIONALIDADE_PADRAO | VARCHAR2 | N |  |

---

## DBAPORTAL.DIVISAO_SETOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DIVISAO_SETOR | NUMBER | N |  |
| 2 | DS_DIVISAO_SETOR | VARCHAR2 | N |  |
| 3 | CD_SITE | NUMBER | Y |  |

---

## DBAPORTAL.DI_INDICE_TEMP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_INDICE | NUMBER | N |  |
| 2 | CD_INDICE | VARCHAR2 | Y |  |
| 3 | DS_INDICE | VARCHAR2 | Y |  |
| 4 | CD_GRUPO_INDICE | VARCHAR2 | Y |  |
| 5 | DS_GRUPO_INDICE | VARCHAR2 | Y |  |
| 6 | TP_UNIDADE | VARCHAR2 | Y |  |
| 7 | TP_PERIODICIDADE | VARCHAR2 | Y |  |
| 8 | CD_MV | NUMBER | Y |  |
| 9 | DS_UTILIZACAO | CLOB | Y |  |

---

## DBAPORTAL.DOCUMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DOCUMENTO | NUMBER | N |  |
| 2 | NM_DOCUMENTO | VARCHAR2 | N |  |
| 3 | DT_ULTIMA_REVISAO | DATE | Y |  |
| 4 | DT_PROXIMA_REVISAO | DATE | Y |  |
| 5 | DS_CAMINHO_DOC_INST | VARCHAR2 | Y |  |
| 6 | DS_ULTIMO_DOCUMENTO_VALIDO | VARCHAR2 | Y |  |
| 7 | DS_CAMINHO_DOC_ARQ | VARCHAR2 | Y |  |
| 8 | CD_CATEGORIA_DOCTO | NUMBER | N |  |
| 9 | TP_SITUACAO | NUMBER | N |  |
| 10 | TP_DOCUMENTO | NUMBER | N |  |
| 11 | CD_DOCUMENTO_EXTERNO | NUMBER | Y |  |
| 12 | CD_USUARIO_PROPRIETARIO | VARCHAR2 | Y |  |
| 13 | CD_USUARIO_APROVADOR | VARCHAR2 | Y |  |
| 14 | CD_USUARIO_VERIFICADOR | VARCHAR2 | Y |  |
| 15 | CD_USUARIO_REVISOR | VARCHAR2 | Y |  |
| 16 | DS_DOCUMENTOINTERNO | VARCHAR2 | Y |  |
| 17 | DT_CRIACAO | DATE | Y |  |
| 18 | SN_CHECK | VARCHAR2 | Y |  |
| 19 | DS_VERSAO | VARCHAR2 | N |  |
| 20 | DS_CODIGO | VARCHAR2 | Y |  |
| 21 | SN_LIBERADO | VARCHAR2 | Y |  |
| 22 | DS_PALAVRA_CHAVE | VARCHAR2 | Y |  |
| 23 | CD_PAPEL_VERIFICADOR | NUMBER | Y |  |
| 24 | CD_PAPEL_APROVADOR | NUMBER | Y |  |
| 25 | DS_DOCUMENTO | CLOB | Y |  |
| 26 | DT_RESPOSTA | DATE | Y |  |
| 27 | DT_ULTIMO_DOCUMENTO_VALIDO | DATE | Y |  |
| 28 | CD_PAPEL_PUBLICADOR | NUMBER | Y |  |
| 29 | CD_USUARIO_PUBLICADOR | VARCHAR2 | Y |  |
| 30 | DS_CAMINHO_DOC_ARQ_FONTE | VARCHAR2 | Y |  |
| 31 | SN_COPIA_CONTROLADA | VARCHAR2 | Y |  |
| 32 | SN_VOLTA_FASE_INI | VARCHAR2 | Y |  |
| 33 | SN_ATIVO | VARCHAR2 | N |  |
| 34 | SN_PERM_FLUX_COMPL | VARCHAR2 | Y |  |
| 35 | CD_TIPO_DOCTO | NUMBER | Y |  |
| 36 | QTD_TEMPO_REVISAO | NUMBER | Y |  |
| 37 | DT_ULTIMA_PUBLICACAO | DATE | Y |  |
| 38 | QTD_DIAS_ALERTA | NUMBER | Y |  |
| 39 | SN_USAR_TAGS_DOCUMENTO | VARCHAR2 | N |  |
| 40 | SN_DOCUMENTO_NOTA | VARCHAR2 | Y |  |
| 41 | TP_PUBLICACAO | NUMBER | N | 1- TIPO DE PUBLICAC?O DIAS, 2- TIPO DE PUBLICAC?O DATA |
| 42 | SN_GERAR_PDF | VARCHAR2 | Y |  |
| 43 | CD_PAPEL_PROPRIETARIO | NUMBER | Y |  |

---

## DBAPORTAL.DOCUMENTO_ACESSO_PUBLICACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DOCUMENTO_ACESSO_PUBLICACAO | NUMBER | N |  |
| 2 | SN_BAIXAR_DOCUMENTO | VARCHAR2 | N |  |
| 3 | SN_IMPRIMIR_DOCUMENTO | VARCHAR2 | N |  |
| 4 | CD_DOCUMENTO | NUMBER | N |  |
| 5 | CD_USUARIO_ACESSO | VARCHAR2 | Y |  |
| 6 | CD_PAPEL_ACESSO | NUMBER | Y |  |
| 7 | SN_NEGAR | VARCHAR2 | N |  |
| 8 | SN_VISUALIZAR | VARCHAR2 | Y |  |
| 9 | TP_REGRA | VARCHAR2 | Y |  |
| 10 | SN_COPIA_CONTROLADA_USUARIO | VARCHAR2 | Y |  |
| 11 | QTD_COPIA_USUARIO | NUMBER | Y |  |

---

## DBAPORTAL.DOCUMENTO_ANEXO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DOCUMENTO_ANEXO | NUMBER | N |  |
| 2 | DS_TITULO | VARCHAR2 | N |  |
| 3 | DS_VERSAO | VARCHAR2 | Y |  |
| 4 | NM_ARQUIVO | VARCHAR2 | N |  |
| 5 | DT_VALIDADE | DATE | Y |  |
| 6 | SN_ATIVO | VARCHAR2 | Y |  |
| 7 | CD_USUARIO_PORTAL | VARCHAR2 | N |  |
| 8 | CD_DOCUMENTO | NUMBER | N |  |

---

## DBAPORTAL.DOCUMENTO_EXTERNO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DOCUMENTO_EXTERNO | NUMBER | N |  |
| 2 | TP_DOCUMENTO_EXTERNO | NUMBER | N |  |
| 3 | CD_SETOR | NUMBER | Y |  |
| 4 | DS_GUARDA | VARCHAR2 | Y |  |
| 5 | DS_DISPOSICAO | VARCHAR2 | Y |  |
| 6 | DT_PUBLICACAO | DATE | Y |  |

---

## DBAPORTAL.DOCUMENTO_EXTERNO_VERSAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DOCUM_EXT_VERSAO | NUMBER | N |  |
| 2 | CD_DOCUMENTO | NUMBER | N |  |
| 3 | CD_USUARIO_RESPONSAVEL | VARCHAR2 | N |  |
| 4 | DS_VERSAO | VARCHAR2 | Y |  |
| 5 | DT_VERSAO | DATE | Y |  |
| 6 | TP_DOCUMENTO_EXTERNO | NUMBER | N |  |
| 7 | CD_SETOR | NUMBER | Y |  |
| 8 | DS_GUARDA | VARCHAR2 | Y |  |
| 9 | DS_DISPOSICAO | VARCHAR2 | Y |  |
| 10 | DT_PUBLICACAO | DATE | Y |  |
| 11 | TP_VERSAO | NUMBER | N |  |

---

## DBAPORTAL.DOCUMENTO_HISTORICO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DOCUMENTO_HISTORICO | NUMBER | N |  |
| 2 | DT_PROXIMA_VERSAO | DATE | Y |  |
| 3 | CD_DOCUMENTO | NUMBER | N |  |
| 4 | TP_SITUACAO | NUMBER | N |  |
| 5 | CD_USUARIO_APROVADOR | VARCHAR2 | Y |  |
| 6 | CD_USUARIO_VERIFICADOR | VARCHAR2 | Y |  |
| 7 | CD_USUARIO_REVISOR | VARCHAR2 | Y |  |
| 8 | DS_VERSAO | VARCHAR2 | N |  |
| 9 | DS_COMENTARIO | VARCHAR2 | Y |  |
| 10 | DT_SITUACAO | DATE | Y |  |
| 11 | DS_ULTIMO_DOCUMENTO_INTERNO | VARCHAR2 | Y |  |
| 12 | DS_CAMINHO_ULTIMO_DOC_ARQ | VARCHAR2 | Y |  |
| 13 | DS_CAMINHO_ULTIMO_DOC_INST | VARCHAR2 | Y |  |
| 14 | DS_DOCUMENTO_HISTORICO | VARCHAR2 | Y |  |
| 15 | CD_PAPEL_VERIFICADOR | NUMBER | Y |  |
| 16 | CD_PAPEL_APROVADOR | NUMBER | Y |  |
| 17 | CD_DOCUMENTO_EXTERNO | NUMBER | Y |  |
| 18 | TP_HISTORICO | NUMBER | Y |  |

---

## DBAPORTAL.DOCUMENTO_INDICADOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DOC_INDICADOR | NUMBER | N |  |
| 2 | CD_INDICADOR | NUMBER | N |  |
| 3 | CD_DOCUMENTO | NUMBER | N |  |
| 4 | CD_METRICA | VARCHAR2 | Y |  |

---

## DBAPORTAL.DOCUMENTO_INDICADOR_REUNIAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DOCUMENTO_INDICADOR_REUNIAO | NUMBER | N |  |
| 2 | DS_TITULO | VARCHAR2 | Y |  |
| 3 | NM_ARQUIVO | VARCHAR2 | Y |  |
| 4 | CD_INDICADOR_ANALISE_CRITICA | NUMBER | Y |  |
| 5 | NR_SEQUENCIA | NUMBER | Y |  |
| 6 | SN_SLIDE | VARCHAR2 | Y |  |
| 7 | CD_ANALISE_CRITICA | NUMBER | Y |  |

---

## DBAPORTAL.DOCUMENTO_INICIATIVA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DOCUMENTO_INICIATIVA | NUMBER | N |  |
| 2 | DS_TITULO | VARCHAR2 | Y |  |
| 3 | DS_ORIGEM_DOCUMENTO | VARCHAR2 | Y |  |
| 4 | DS_VERSAO_DOCUMENTO | VARCHAR2 | Y |  |
| 5 | NM_ARQUIVO | VARCHAR2 | Y |  |
| 6 | CD_USUARIO_PORTAL | VARCHAR2 | N |  |
| 7 | CD_INICIATIVA_ACAO | NUMBER | Y |  |
| 8 | CD_GRUPO_PROJETO | NUMBER | Y |  |

---

## DBAPORTAL.DOCUMENTO_INTERNO_VERSAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DOCUM_INTERNO_VERSAO | NUMBER | N |  |
| 2 | CD_DOCUMENTO | NUMBER | N |  |
| 3 | CD_USUARIO_RESPONSAVEL | VARCHAR2 | Y |  |
| 4 | DS_VERSAO | VARCHAR2 | Y |  |
| 5 | DT_VERSAO | DATE | N |  |
| 6 | DS_DOCUMENTO | CLOB | N |  |
| 7 | TP_VERSAO | NUMBER | N |  |

---

## DBAPORTAL.DOCUMENTO_LINK

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DOCUMENTO_LINK | NUMBER | N |  |
| 2 | CD_DOCUMENTO | NUMBER | N |  |
| 3 | DS_TAG | VARCHAR2 | N |  |
| 4 | CD_DOCUMENTO_TAG | NUMBER | N |  |

---

## DBAPORTAL.DOCUMENTO_NOTA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DOCUMENTO_NOTA | NUMBER | N |  |
| 2 | DS_TITULO | VARCHAR2 | Y |  |
| 3 | DT_DOCUMENTO_NOTA | DATE | Y |  |
| 4 | CD_DOCUMENTO | NUMBER | N |  |
| 5 | SN_EMAIL | VARCHAR2 | N |  |
| 6 | CD_USUARIO_PORTAL | VARCHAR2 | N |  |
| 7 | DS_DOCUMENTO_NOTA | CLOB | Y |  |
| 8 | DS_DOCUMENTO_NOTA_HTML | CLOB | Y |  |

---

## DBAPORTAL.DUMMY_SEQ

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | SEQ_VALOR | NUMBER | N |  |

---

## DBAPORTAL.DURACAO_ATIVIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DURACAO_ATIVIDADE | NUMBER | N |  |
| 2 | DT_LANCAMENTO | DATE | Y |  |
| 3 | CD_INICIATIVA_ACAO | NUMBER | N |  |
| 4 | DT_ALTERADO | DATE | Y |  |
| 5 | VL_DURACAO | NUMBER | Y |  |
| 6 | VL_DURACAO_MINUTOS | NUMBER | Y |  |

---

## DBAPORTAL.DW_DATAMART

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DATAMART | NUMBER | N |  |
| 2 | DS_DATAMART | VARCHAR2 | N |  |
| 3 | SN_CDC_HABILITADO | CHAR | N | SE O CDC FOI HABILITADO PARA ESTE DATAMART |
| 4 | SN_CDC_ATIVO | CHAR | N | SE O CDC JA ESTA ATIVO E COM TODAS AS FASES FINALIZADAS |
| 5 | SN_FASE1_CHANGETABLE | CHAR | N |  |
| 6 | SN_FASE1_SUBSCRICAO | CHAR | N |  |
| 7 | SN_FASE1_PONTOCORTE | CHAR | N |  |
| 8 | SN_FASE2_AGENDA | CHAR | N |  |
| 9 | SN_FASE2_RODA | CHAR | N |  |
| 10 | SN_FASE2_MATA | CHAR | N |  |

---

## DBAPORTAL.DW_DATAMART_TABELA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DATAMART | NUMBER | N |  |
| 2 | CD_TABELA | NUMBER | N |  |

---

## DBAPORTAL.DW_IVM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DW_IVM_ID | NUMBER | N |  |
| 2 | CD_SETOR | VARCHAR2 | Y |  |
| 3 | NM_SETOR | VARCHAR2 | Y |  |
| 4 | DT_IVM | DATE | N |  |
| 5 | VL_IVM | NUMBER | N |  |
| 6 | CD_IVM | VARCHAR2 | N |  |

---

## DBAPORTAL.DW_TABELA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TABELA | NUMBER | N |  |
| 2 | DS_TABELA | VARCHAR2 | N |  |
| 3 | TP_TABELA | CHAR | N | F=FATO/D=DIMENS?O |

---

## DBAPORTAL.ENDERECO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ENDERECO | NUMBER | N | Identificador do endereco |
| 2 | DS_LOGRADOURO | VARCHAR2 | N | Logradouro do endereco |
| 3 | NR_NUMERO | VARCHAR2 | Y | Numero do endereco |
| 4 | DS_COMPLEMENTO | VARCHAR2 | Y | Complemento do endereco |
| 5 | ID_BAIRRO | NUMBER | Y | Identificador do bairro relacionado |
| 6 | NR_CEP | VARCHAR2 | Y |  |
| 7 | ID_CIDADE | NUMBER | Y |  |

---

## DBAPORTAL.ESTAT_CON_MULT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DT_CON | DATE | N |  |
| 2 | QT_CON | NUMBER | N |  |

---

## DBAPORTAL.ESTAT_CON_MV

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | MAQUINA | VARCHAR2 | N |  |
| 2 | DT_ACESSO | DATE | N |  |
| 3 | USERNAME | VARCHAR2 | Y |  |
| 4 | OSUSER | VARCHAR2 | Y |  |
| 5 | PROGRAMA | VARCHAR2 | Y |  |

---

## DBAPORTAL.ESTQ_CONS_TEMP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DT | DATE | Y |  |
| 2 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 3 | CD_SETOR | NUMBER | Y |  |
| 4 | CD_ESTOQUE | NUMBER | N |  |
| 5 | CD_PRODUTO | NUMBER | N |  |
| 6 | CD_PRO_FAT | VARCHAR2 | Y |  |
| 7 | CD_CONVENIO | NUMBER | Y |  |
| 8 | CD_CON_PLA | NUMBER | Y |  |
| 9 | CD_ATENDIMENTO | NUMBER | Y |  |
| 10 | CD_PRESTADOR | NUMBER | Y |  |
| 11 | QT_SETOR | NUMBER | Y |  |
| 12 | VL_SETOR | NUMBER | Y |  |
| 13 | QT_PACIENTE | NUMBER | Y |  |
| 14 | VL_PACIENTE | NUMBER | Y |  |

---

## DBAPORTAL.ESTRATEGIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ESTRATEGIA | NUMBER | N |  |
| 2 | DS_ESTRATEGIA | CLOB | N |  |
| 3 | DS_MISSAO | VARCHAR2 | Y |  |
| 4 | DS_VALORES | VARCHAR2 | Y |  |
| 5 | DS_VISAO | VARCHAR2 | Y |  |
| 6 | DT_INICIO | DATE | Y |  |
| 7 | DT_FIM | DATE | Y |  |
| 8 | DS_PONTOS_FRACOS | VARCHAR2 | Y |  |
| 9 | DS_PONTOS_FORTES | VARCHAR2 | Y |  |
| 10 | DS_OPORTUNIDADES | VARCHAR2 | Y |  |
| 11 | DS_AMEACAS | VARCHAR2 | Y |  |
| 12 | SN_MODELO | VARCHAR2 | N |  |
| 13 | DS_MODELO | VARCHAR2 | Y |  |
| 14 | CD_ORGANIZACAO | NUMBER | Y |  |
| 15 | CD_CENTRO_CUSTO | NUMBER | Y |  |
| 16 | CD_ADM_OPERACIONAL | VARCHAR2 | Y |  |
| 17 | TP_MAPA_ESTRATEGICO | VARCHAR2 | Y |  |
| 18 | TP_PERIODICIDADE | VARCHAR2 | Y |  |

---

## DBAPORTAL.ESTRATEGIA_MAPA_DIAGRAMA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ESTRATEGIA | NUMBER | Y |  |
| 2 | DS_XML_MAPA | CLOB | Y |  |

---

## DBAPORTAL.ESTRATEGIA_OBJETIVO_INDICADOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ESTRATEGIA_OBJETIVO_IND | VARCHAR2 | N |  |
| 2 | CD_ESTRATEGIA | NUMBER | Y |  |
| 3 | CD_OBJETIVO | NUMBER | Y |  |
| 4 | CD_IVM | VARCHAR2 | Y |  |
| 5 | NR_ORDEM_MAPA | NUMBER | Y |  |
| 6 | NR_LINHA_MAPA | NUMBER | Y |  |

---

## DBAPORTAL.ESTRATEGIA_TEMA_ESTRATEGICO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TEMA_ESTRATEGICO | NUMBER | N |  |
| 2 | CD_ESTRATEGIA | NUMBER | N |  |

---

## DBAPORTAL.EVENTO_SENTINELA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EVENTO_SENTINELA | NUMBER | N |  |
| 2 | DS_TITULO_INDICADOR | VARCHAR2 | Y |  |
| 3 | TP_FORMATO_INDICADOR | VARCHAR2 | Y |  |
| 4 | DS_EVENTO_SENTINELA | VARCHAR2 | N |  |
| 5 | DS_DEFINICAO_CONCEITUAL | VARCHAR2 | Y |  |
| 6 | CD_FUNCAO_EVE_SENT | NUMBER | Y |  |
| 7 | TP_EVENTO_SENTINELA | VARCHAR2 | N |  |
| 8 | TP_REGRA_ATUALIZACAO | VARCHAR2 | Y |  |
| 9 | CD_GRUPO_INDICADOR | NUMBER | N |  |
| 10 | TP_ARQUIVAMENTO | VARCHAR2 | N |  |
| 11 | DT_PADRAO_CARGA | DATE | Y |  |
| 12 | SN_ATIVO | VARCHAR2 | N |  |

---

## DBAPORTAL.EXCECAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EXCECAO | NUMBER | N |  |
| 2 | DT_EXCECAO | DATE | Y |  |
| 3 | VL_HORAS_PRODUTIVAS | NUMBER | Y |  |
| 4 | DS_EXCECAO | VARCHAR2 | Y |  |
| 5 | TP_DIA_SEMANA | NUMBER | Y |  |
| 6 | DT_FIM_EXCECAO | DATE | Y |  |
| 7 | CD_CALENDARIO | NUMBER | N |  |
| 8 | ID_USUARIO_PORTAL | NUMBER | Y |  |

---

## DBAPORTAL.FATOR_RISCO
> Tabela de fatores de risco

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FATOR_RISCO | NUMBER | N | Identificador do fator de risco |
| 2 | NM_FATOR_RISCO | VARCHAR2 | N | Nome do fator de risco |
| 3 | DS_FATOR_RISCO | CLOB | Y | Descricao do fator de risco |
| 4 | NR_FATOR_RISCO | VARCHAR2 | Y | Codigo ou numeracao do fator de risco |

---

## DBAPORTAL.FA_EST_CONS_TEMP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DT | DATE | Y |  |
| 2 | CD_MULTI_EMPRESA | NUMBER | Y |  |
| 3 | CD_SETOR | NUMBER | Y |  |
| 4 | CD_ESTOQUE | NUMBER | Y |  |
| 5 | CD_PRODUTO | NUMBER | Y |  |
| 6 | CD_CONVENIO | NUMBER | Y |  |
| 7 | CD_CON_PLA | NUMBER | Y |  |
| 8 | CD_PRO_FAT | VARCHAR2 | Y |  |
| 9 | CD_PRESTADOR | NUMBER | Y |  |
| 10 | CD_ATENDIMENTO | NUMBER | Y |  |
| 11 | QT_SETOR | NUMBER | Y |  |
| 12 | VL_SETOR | NUMBER | Y |  |
| 13 | QT_PACIENTE | NUMBER | Y |  |
| 14 | VL_PACIENTE | NUMBER | Y |  |
| 15 | QT_BAIXA | NUMBER | Y |  |
| 16 | VL_BAIXA | NUMBER | Y |  |

---

## DBAPORTAL.FA_FAT_TEMP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DT | DATE | Y |  |
| 2 | CD_SETOR | NUMBER | Y |  |
| 3 | CD_SETOR_PRODUZIU | NUMBER | Y |  |
| 4 | CD_PRO_FAT | VARCHAR2 | Y |  |
| 5 | CD_ATENDIMENTO | NUMBER | Y |  |
| 6 | CD_CONVENIO | NUMBER | Y |  |
| 7 | CD_CON_PLA | NUMBER | Y |  |
| 8 | CD_MULTI_EMPRESA | NUMBER | Y |  |
| 9 | DT_NASCIMENTO | DATE | Y |  |
| 10 | CD_GRU_FAT | NUMBER | Y |  |
| 11 | CD_PRESTADOR | NUMBER | Y |  |
| 12 | TP_CONTA | VARCHAR2 | Y |  |
| 13 | TP_GRU_PRO | VARCHAR2 | Y |  |
| 14 | TP_CONVENIO | VARCHAR2 | Y |  |
| 15 | CD_REMESSA | NUMBER | Y |  |
| 16 | SN_FECHADA | VARCHAR2 | Y |  |
| 17 | DT_FINAL | DATE | Y |  |
| 18 | SN_FECHADA_REME | VARCHAR2 | Y |  |
| 19 | SN_IMPRESSA | VARCHAR2 | Y |  |
| 20 | TP_PAGAMENTO | VARCHAR2 | Y |  |
| 21 | QT_FATURADO_LANC | NUMBER | Y |  |
| 22 | QT_FATURADO_ENTR | NUMBER | Y |  |
| 23 | QT_FATURADO_COMP | NUMBER | Y |  |
| 24 | VL_FATURADO_LANC | NUMBER | Y |  |
| 25 | VL_FATURADO_ENTR | NUMBER | Y |  |
| 26 | VL_FATURADO_COMP | NUMBER | Y |  |
| 27 | VL_DESCONTO_LANC | NUMBER | Y |  |
| 28 | VL_DESCONTO_ENTR | NUMBER | Y |  |
| 29 | VL_DESCONTO_COMP | NUMBER | Y |  |
| 30 | VL_FILME_UNITARIO_LANC | NUMBER | Y |  |
| 31 | VL_FILME_UNITARIO_ENTR | NUMBER | Y |  |
| 32 | VL_FILME_UNITARIO_COMP | NUMBER | Y |  |
| 33 | VL_ACRESCIMO_LANC | NUMBER | Y |  |
| 34 | VL_ACRESCIMO_ENTR | NUMBER | Y |  |
| 35 | VL_ACRESCIMO_COMP | NUMBER | Y |  |
| 36 | QT_FATURADO_COMP_PCT | NUMBER | Y |  |
| 37 | VL_FATURADO_COMP_PCT | NUMBER | Y |  |
| 38 | CD_CONTA_MEDICA | NUMBER | Y |  |
| 39 | CD_TIPO_REMESSA | VARCHAR2 | Y |  |
| 40 | QT_FATURADO_FECH | NUMBER | Y |  |
| 41 | VL_FATURADO_FECH | NUMBER | Y |  |
| 42 | VL_DESCONTO_FECH | NUMBER | Y |  |
| 43 | VL_FILME_UNITARIO_FECH | NUMBER | Y |  |
| 44 | VL_ACRESCIMO_FECH | NUMBER | Y |  |
| 45 | CD_TIP_ACOM | NUMBER | Y |  |

---

## DBAPORTAL.FA_SD_TRATAMENTO_VALOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_TRATAMENTO | NUMBER | Y |  |
| 2 | VALOR | NUMBER | Y |  |
| 3 | TIPO | VARCHAR2 | Y |  |
| 4 | ID_MULTI_EMPRESA | NUMBER | Y |  |

---

## DBAPORTAL.FA_SD_TRAT_REC_TEMP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | QT_CONSUMIDA | NUMBER | Y |  |
| 2 | ID_TIPO_CENARIO | NUMBER | Y |  |
| 3 | ID_PRO_FAT | NUMBER | Y |  |
| 4 | ID_CONVENIO | NUMBER | Y |  |
| 5 | ID_TRATAMENTO | NUMBER | Y |  |
| 6 | ID_CENARIO | NUMBER | Y |  |
| 7 | ID_ESPECIALID | NUMBER | Y |  |
| 8 | ID_TP_ATENDIMENTO | NUMBER | Y |  |
| 9 | ID_SERVICO | NUMBER | Y |  |
| 10 | ID_MULTI_EMPRESA | NUMBER | Y |  |
| 11 | ID_UNIDADE_PRODUCAO | NUMBER | Y |  |
| 12 | ID_ATENDIMENTO | NUMBER | Y |  |

---

## DBAPORTAL.FICHA_INDICADOR_DOCUMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FICHA_INDICADOR_DOCUMENTO | NUMBER | N |  |
| 2 | CD_FICHA_IVM | NUMBER | N |  |
| 3 | CD_USUARIO_PORTAL | VARCHAR2 | N |  |
| 4 | DS_TITULO | VARCHAR2 | Y |  |
| 5 | DS_VERSAO_DOCUMENTO | VARCHAR2 | Y |  |
| 6 | DS_ORIGEM_DOCUMENTO | VARCHAR2 | Y |  |
| 7 | NM_ARQUIVO | VARCHAR2 | Y |  |
| 8 | SN_ATIVO | VARCHAR2 | N |  |

---

## DBAPORTAL.FICHA_IVM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FICHA_IVM | NUMBER | N |  |
| 2 | DT_PREENCHIMENTO | DATE | N |  |
| 3 | TP_TENDENCIA | VARCHAR2 | N |  |
| 4 | TP_RESULTADO_PERIODO | VARCHAR2 | N |  |
| 5 | CD_PESSOA | NUMBER | N |  |
| 6 | CD_IVM | VARCHAR2 | N |  |
| 7 | CD_OBJETIVO | NUMBER | Y |  |
| 8 | DT_COMPETENCIA | DATE | N |  |
| 9 | CD_ORGANIZACAO | NUMBER | Y |  |
| 10 | CD_CENTRO_CUSTO | NUMBER | Y |  |
| 11 | DS_COMENTARIO_TENDENCIA | CLOB | Y |  |
| 12 | DS_COMENTARIO_RESULTADO | CLOB | Y |  |
| 13 | DS_JUSTIFICATIVA | CLOB | Y |  |
| 14 | DS_RESULTADO_ACAO | CLOB | Y |  |
| 15 | SN_NAO_MENSURADO | CHAR | Y |  |

---

## DBAPORTAL.FICHA_IVM_BACKUP_01_08_2008

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FICHA_IVM | NUMBER | N |  |
| 2 | DT_PREENCHIMENTO | DATE | N |  |
| 3 | TP_TENDENCIA | VARCHAR2 | N |  |
| 4 | DS_COMENTARIO_TENDENCIA | VARCHAR2 | Y |  |
| 5 | TP_RESULTADO_PERIODO | VARCHAR2 | N |  |
| 6 | DS_COMENTARIO_RESULTADO | VARCHAR2 | Y |  |
| 7 | DS_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 8 | CD_PESSOA | NUMBER | N |  |
| 9 | CD_IVM | VARCHAR2 | N |  |
| 10 | CD_OBJETIVO | NUMBER | Y |  |
| 11 | DS_RESULTADO_ACAO | VARCHAR2 | Y |  |
| 12 | DT_COMPETENCIA | DATE | N |  |
| 13 | CD_ORGANIZACAO | NUMBER | Y |  |
| 14 | CD_CENTRO_CUSTO | NUMBER | Y |  |

---

## DBAPORTAL.FICHA_IVM_FAVORITOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FICHA_IVM_FAVORITOS | NUMBER | N |  |
| 2 | NR_ORDENACAO | NUMBER | Y |  |
| 3 | ID_USUARIO_PORTAL | NUMBER | N |  |
| 4 | CD_IVM | VARCHAR2 | N |  |
| 5 | CD_ORGANIZACAO | NUMBER | N |  |
| 6 | CD_CENTRO_CUSTO | NUMBER | Y |  |

---

## DBAPORTAL.FICHA_IVM_TEMP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FICHA_IVM | NUMBER | N |  |
| 2 | DS_COMENTARIO_TENDENCIA | VARCHAR2 | Y |  |
| 3 | DS_COMENTARIO_RESULTADO | VARCHAR2 | Y |  |
| 4 | DS_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 5 | DS_RESULTADO_ACAO | VARCHAR2 | Y |  |

---

## DBAPORTAL.FICHA_OBJETIVO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FICHA_OBJETIVO | NUMBER | N |  |
| 2 | CD_OBJETIVO | NUMBER | N |  |
| 3 | DT_ULTIMA_MODIFICACAO | DATE | Y |  |
| 4 | DT_ANALISE | DATE | Y |  |
| 5 | CD_PESSOA | NUMBER | Y |  |
| 6 | DS_ANALISE_DESEMPENHO | CLOB | Y |  |
| 7 | DS_RECOMENDACAO | CLOB | Y |  |
| 8 | DS_ANALISE_TENDENCIA | CLOB | Y |  |

---

## DBAPORTAL.FICHA_OBJ_TEMP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FICHA_OBJETIVO | NUMBER | N |  |
| 2 | DS_ANALISE_DESEMPENHO | CLOB | Y |  |
| 3 | DS_RECOMENDACAO | VARCHAR2 | Y |  |
| 4 | DS_ANALISE_TENDENCIA | VARCHAR2 | Y |  |

---

## DBAPORTAL.FICHA_PESSOA_ANALISE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FICHA_PES_ANA | NUMBER | N |  |
| 2 | CD_FICHA_IVM | NUMBER | N |  |
| 3 | CD_PESSOA | NUMBER | N |  |

---

## DBAPORTAL.FICHA_RISCO
> Tabela de ficha de risco

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FICHA_RISCO | NUMBER | N | Identificador da ficha do risco |
| 2 | CD_MAPA_RISCO | NUMBER | N | Identificador do mapa risco referente a um risco |
| 3 | DT_PREENCHIMENTO | DATE | N | Data de referencia do registro |
| 4 | DS_COMENTARIO | CLOB | N | Comentario para o registro |
| 5 | DS_JUSTIFICATIVA | CLOB | Y | Justificativa para os resultados do periodo |

---

## DBAPORTAL.FILTRO_AUTOMATION

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FILTRO_AUTOMATION | NUMBER | N |  |
| 2 | DS_TAG_FILTRO | VARCHAR2 | N |  |
| 3 | CD_AUTOMATION | NUMBER | Y |  |
| 4 | CD_PERGUNTA | NUMBER | Y |  |

---

## DBAPORTAL.FILTRO_CLASSIFICACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FILTRO_CLASSIFICACAO | NUMBER | N |  |
| 2 | CD_GRUPO_CLASSIFICACAO | NUMBER | N |  |
| 3 | CD_PERGUNTA | NUMBER | N |  |
| 4 | DS_OPERADOR | VARCHAR2 | Y |  |
| 5 | CD_RESPOSTA | NUMBER | N |  |
| 6 | CD_SEQUENCIA | NUMBER | Y |  |
| 7 | DS_OPERADOR_LOGICO | VARCHAR2 | Y |  |
| 8 | SN_PAR_ESQUERDA | VARCHAR2 | Y |  |
| 9 | SN_PAR_DIREITA | VARCHAR2 | Y |  |

---

## DBAPORTAL.FILTRO_DINAMICO_DOCUMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FILTRO_DINAMICO_DOCUMENTO | NUMBER | N |  |
| 2 | CD_FILTRO_DOCUMENTO | NUMBER | N |  |
| 3 | DS_COLUNA | VARCHAR2 | Y |  |
| 4 | TP_VALOR | NUMBER | Y |  |
| 5 | DS_OPERADOR | VARCHAR2 | Y |  |
| 6 | DS_VALOR_INI | VARCHAR2 | Y |  |
| 7 | DS_VALOR_FIM | VARCHAR2 | Y |  |
| 8 | NR_ORDEM | NUMBER | Y |  |
| 9 | DS_OPERADOR_LOGICO | VARCHAR2 | Y |  |
| 10 | SN_PARENTESE_DIREITA | VARCHAR2 | Y |  |
| 11 | SN_PARENTESE_ESQUERDA | VARCHAR2 | Y |  |

---

## DBAPORTAL.FILTRO_DOCUMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FILTRO_DOCUMENTO | NUMBER | N |  |
| 2 | NM_FILTRO | VARCHAR2 | N |  |
| 3 | TP_FILTRO | NUMBER | N |  |
| 4 | SN_PUBLICO | VARCHAR2 | N |  |
| 5 | CD_USUARIO_PORTAL | VARCHAR2 | N |  |

---

## DBAPORTAL.FILTRO_INICIATIVA_ACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FILTRO_INICIATIVA_ACAO | NUMBER | N |  |
| 2 | DS_FILTRO_INICIATIVA_ACAO | VARCHAR2 | Y |  |
| 3 | SN_PUBLICO | VARCHAR2 | Y |  |
| 4 | CD_USUARIO_PORTAL | VARCHAR2 | Y |  |
| 5 | DS_FILTRO_SQL | VARCHAR2 | Y |  |

---

## DBAPORTAL.FILTRO_OCORRENCIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FILTRO_OCORRENCIA | NUMBER | N |  |
| 2 | DS_FILTRO_OCORRENCIA | VARCHAR2 | Y |  |
| 3 | SN_PUBLICO | VARCHAR2 | Y |  |
| 4 | ID_USUARIO_PORTAL | NUMBER | N |  |
| 5 | DS_SQL | VARCHAR2 | Y |  |

---

## DBAPORTAL.FILTRO_PADRAO_DOCUMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FILTRO_PADRAO_DOCUMENTO | NUMBER | N |  |
| 2 | CD_FILTRO_DOCUMENTO | NUMBER | N |  |
| 3 | NM_DOCUMENTO | VARCHAR2 | Y |  |
| 4 | DS_CODIGO | VARCHAR2 | Y |  |
| 5 | DS_VERSAO | VARCHAR2 | Y |  |
| 6 | CD_REPOSITORIO | VARCHAR2 | Y |  |
| 7 | CD_CATEGORIA_DOCTO | VARCHAR2 | Y |  |
| 8 | CD_PASTA_DOCTO | VARCHAR2 | Y |  |
| 9 | CD_TIPO_DOCTO | NUMBER | Y |  |
| 10 | SN_COPIA_CONTROLADA | VARCHAR2 | Y |  |
| 11 | DT_PROXIMA_REVISAO_INI | DATE | Y |  |
| 12 | DT_PROXIMA_REVISAO_FIM | DATE | Y |  |
| 13 | DT_ULTIMA_PUBLICACAO_INI | DATE | Y |  |
| 14 | DT_ULTIMA_PUBLICACAO_FIM | DATE | Y |  |
| 15 | DT_ULTIMA_REVISAO_INI | DATE | Y |  |
| 16 | DT_ULTIMA_REVISAO_FIM | DATE | Y |  |
| 17 | TP_SITUACAO | NUMBER | Y |  |
| 18 | DS_PALAVRA_CHAVE | VARCHAR2 | Y |  |

---

## DBAPORTAL.FILTRO_PADRAO_PROJETO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FILTRO_PADRAO_PROJETO | NUMBER | N |  |
| 2 | DS_TITULO_FILTRO | VARCHAR2 | Y |  |
| 3 | CD_ORGANIZACAO | NUMBER | Y |  |
| 4 | CD_CENTRO_CUSTO | NUMBER | Y |  |
| 5 | CD_IVM | NUMBER | Y |  |
| 6 | DS_SITUACAO | VARCHAR2 | Y |  |
| 7 | CD_PATROCINADOR | NUMBER | Y |  |
| 8 | CD_RESPONSAVEL | NUMBER | Y |  |
| 9 | DT_INICIO_PREVISTA | DATE | Y |  |
| 10 | DT_TERMINO_PREVISTA | DATE | Y |  |
| 11 | TP_ATIVIDADE | VARCHAR2 | Y |  |
| 12 | SN_ARQUIVADO | VARCHAR2 | Y |  |
| 13 | CD_INICIATIVA_ACAO | NUMBER | Y |  |
| 14 | SN_PUBLICO | VARCHAR2 | Y |  |
| 15 | CD_USUARIO_PORTAL | VARCHAR2 | N |  |
| 16 | CD_GRUPO_PROJETO | NUMBER | Y |  |
| 17 | CD_ESTRATEGIA | NUMBER | Y |  |
| 18 | CD_OBJETIVO | NUMBER | Y |  |
| 19 | SN_OBJETIVO | VARCHAR2 | Y |  |
| 20 | DS_CD_INICIATIVA_ACAO | VARCHAR2 | Y |  |
| 21 | SN_PLANO_ACAO_OCORRENCIA | VARCHAR2 | Y |  |
| 22 | SN_PROJETOS_RISCOS | CHAR | Y |  |

---

## DBAPORTAL.FLUXO_CAIXA
> Cadastro de Fluxos de Caixa.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FLUXO_CAIXA | NUMBER | N | Codigo do Fluxo de Caixa. |
| 2 | DS_FLUXO_CAIXA | VARCHAR2 | N | Descric?o do Fluxo de Caixa. |
| 3 | DT_INICIO | DATE | N | Data Inicial. |
| 4 | DT_TERMINO | DATE | N | Data Final. |
| 5 | SN_ATIVO | VARCHAR2 | N | Indica se o Fluxo de Caixa esta Ativo. |
| 6 | TP_SALDO_INICIO | VARCHAR2 | N | Indica se o Saldo Inicial sera Zero ou Dia Anterior a Data Inicial. |
| 7 | VL_SALDO_INICIAL | NUMBER | Y |  |
| 8 | ID_MULTI_EMPRESA | NUMBER | Y |  |

---

## DBAPORTAL.FLUXO_CAIXA_CONTAS
> Contas que Comp?em o Saldo Inicial do Fluxo de Caixa

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FLUXO_CAIXA | NUMBER | N | Fluxo de caixa |
| 2 | ID_CONTA_CORRENTE | NUMBER | N | ID da conta corrente |
| 3 | SN_COMPOE_SALDO_INICIAL | VARCHAR2 | N | Indica se o saldo da conta comp?e o saldo incial |

---

## DBAPORTAL.FLUXO_DOC_USUARIO_PAPEL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FLUXO_DOC_USUARIO_PAPEL | NUMBER | N |  |
| 2 | CD_DOCUMENTO | NUMBER | N |  |
| 3 | CD_USUARIO_FLUXO | VARCHAR2 | Y |  |
| 4 | CD_PAPEL_FLUXO | NUMBER | Y |  |
| 5 | TP_OPERADOR | VARCHAR2 | Y | o Operador E e OU e utilizado para definir se no fluxo vai ou n?o ser sequencial. |
| 6 | NR_SEQUENCIA | NUMBER | N |  |
| 7 | TP_FLUXO | VARCHAR2 | N | A- Aprovador e V - Verificador |
| 8 | CD_REVISOR_USUARIO | VARCHAR2 | Y |  |
| 9 | SLA_DIAS | NUMBER | Y |  |

---

## DBAPORTAL.FLUXO_OCORRENCIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FLUXO_OCORRENCIA | NUMBER | N |  |
| 2 | NM_FLUXO_OCORRENCIA | VARCHAR2 | N |  |

---

## DBAPORTAL.FLUXO_QUADRO_OCORRENCIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FLUXO_QUADRO_OCORRENCIA | NUMBER | N |  |
| 2 | CD_REGISTRO_OCORRENCIA | NUMBER | N |  |
| 3 | CD_FLUXO_OCORRENCIA | NUMBER | N |  |
| 4 | CD_FLUXO_QUADRO_OCOR_ANDAMENTO | NUMBER | Y |  |
| 5 | TP_SITUACAO | VARCHAR2 | Y |  |
| 6 | ID_USUARIO_PORTAL_RESP | NUMBER | Y |  |
| 7 | CD_PAPEL_RESP | NUMBER | Y |  |
| 8 | CD_CENTRO_CUSTO_RESP | NUMBER | Y |  |
| 9 | TP_RESPONSAVEL_FLUXO | VARCHAR2 | Y |  |
| 10 | ID_USUARIO_EXECUTOR | NUMBER | Y |  |
| 11 | DT_CONCLUSAO | DATE | Y |  |
| 12 | DS_COMENTARIO | VARCHAR2 | Y |  |
| 13 | TP_ANALISE | VARCHAR2 | Y |  |
| 14 | CD_QUESTIONARIO_ANALISE | NUMBER | Y |  |
| 15 | DT_ACEITACAO | DATE | Y |  |
| 16 | QT_SLA | NUMBER | Y |  |
| 17 | SN_EMAIL | VARCHAR2 | Y |  |
| 18 | NR_ORDENACAO | NUMBER | Y |  |
| 19 | SN_PERSONALIZADO | VARCHAR2 | Y |  |
| 20 | ID_USUARIO_PORTAL_LOGADO | NUMBER | Y |  |
| 21 | SN_ATIVO | VARCHAR2 | Y |  |

---

## DBAPORTAL.FORMULA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | TP_SINAL | VARCHAR2 | Y |  |
| 2 | VL_SINAL_INI | VARCHAR2 | Y |  |
| 3 | VL_SINAL_FIM | VARCHAR2 | Y |  |
| 4 | CD_IVM | VARCHAR2 | N |  |
| 5 | CD_FORMULA | NUMBER | N |  |
| 6 | CD_INDICADOR_PRIMARIO | VARCHAR2 | N |  |
| 7 | CD_SEQ_EXECUTA | NUMBER | N |  |

---

## DBAPORTAL.FORMULARIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FORMULARIO | NUMBER | N |  |
| 2 | NM_FORMULARIO | VARCHAR2 | Y |  |
| 3 | SN_ATIVO | VARCHAR2 | Y |  |
| 4 | TP_SISTEMA | VARCHAR2 | Y |  |

---

## DBAPORTAL.FORMULA_TESTE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | TP_SINAL | VARCHAR2 | Y |  |
| 2 | VL_SINAL_INI | VARCHAR2 | Y |  |
| 3 | VL_SINAL_FIM | VARCHAR2 | Y |  |
| 4 | CD_IVM | VARCHAR2 | N |  |
| 5 | CD_FORMULA | NUMBER | N |  |
| 6 | CD_INDICADOR_PRIMARIO | VARCHAR2 | N |  |
| 7 | CD_SEQ_EXECUTA | NUMBER | N |  |

---

## DBAPORTAL.FUNCAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FUNCAO | NUMBER | N |  |
| 2 | DS_FUNCAO | VARCHAR2 | N |  |
| 3 | NM_FUNCAO | VARCHAR2 | N |  |

---

## DBAPORTAL.FUNCAO_MODULO_SISTEMA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SISTEMA | NUMBER | N | Codigo do sistema |
| 2 | CD_MODULO_SISTEMA | NUMBER | N | Codigo modulo do sistema |
| 3 | DS_MODULO_SISTEMA | VARCHAR2 | N | Descric?o do modulo do sistema |

---

## DBAPORTAL.GESTAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GESTAO | NUMBER | N |  |
| 2 | DS_GESTAO | VARCHAR2 | N |  |

---

## DBAPORTAL.GESTAO_COMPETENCIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GESTAO_COMPETENCIA | NUMBER | N |  |
| 2 | SN_ATIVO | VARCHAR2 | Y |  |
| 3 | SN_EXECUTADO | VARCHAR2 | Y |  |
| 4 | SN_FECHA_ANALISE | VARCHAR2 | Y |  |
| 5 | SN_FECHA_VALOR | VARCHAR2 | Y |  |
| 6 | DT_COMPETENCIA | DATE | N |  |
| 7 | CD_IVM | VARCHAR2 | Y |  |
| 8 | CD_ORGANIZACAO | NUMBER | N |  |
| 9 | CD_CENTRO_CUSTO | NUMBER | Y |  |
| 10 | DT_ULT_EXEC_CARGA | DATE | Y |  |
| 11 | TP_INSERCAO | NUMBER | Y |  |
| 12 | CD_PENDENCIA_IVM | NUMBER | Y |  |

---

## DBAPORTAL.GRUPO_ANALISE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GRUPO_ANALISE | NUMBER | N |  |
| 2 | DS_GRUPO_ANALISE | VARCHAR2 | N |  |
| 3 | CD_SITE | NUMBER | Y |  |

---

## DBAPORTAL.GRUPO_CLASSIFICACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GRUPO_CLASSIFICACAO | NUMBER | N |  |
| 2 | CD_CLASSIFICACAO | NUMBER | N |  |
| 3 | DT_ALTERADO | DATE | Y |  |
| 4 | DS_GRUPO_CLASSIFICACAO | VARCHAR2 | Y |  |
| 5 | CD_USUARIO_MODIFICADOR | VARCHAR2 | Y |  |
| 6 | CD_SEQUENCIA | NUMBER | Y |  |

---

## DBAPORTAL.GRUPO_CONTABIL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GRUPO_CONTABIL | NUMBER | N |  |
| 2 | DS_GRUPO_CONTABIL | VARCHAR2 | N |  |
| 3 | CD_DESCRITIVO | VARCHAR2 | Y |  |

---

## DBAPORTAL.GRUPO_INDICADOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GRUPO_INDICADOR | NUMBER | N |  |
| 2 | DS_GRUPO_INDICADOR | VARCHAR2 | N |  |
| 3 | CD_GRUPO_INDICADOR_PAI | NUMBER | Y |  |

---

## DBAPORTAL.GRUPO_PROJETO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GRUPO_PROJETO | NUMBER | N |  |
| 2 | DS_TITULO | VARCHAR2 | Y |  |
| 3 | DS_GRUPO_PROJETO | CLOB | Y |  |
| 4 | DT_INICIO_PROJETADO | DATE | Y |  |
| 5 | DT_FIM_PROJETADO | DATE | Y |  |
| 6 | VL_DURACAO_PROJETADO | NUMBER | Y |  |
| 7 | TP_DURACAO_PROJETADO | NUMBER | Y |  |
| 8 | VL_DIA_ANTECEDENCIA | NUMBER | Y |  |
| 9 | VL_ORCAMENTO | NUMBER | Y |  |
| 10 | DT_FIM_REAL | DATE | Y |  |
| 11 | DT_INICIO_REAL | DATE | Y |  |
| 12 | TP_DURACAO_REAL | NUMBER | Y |  |
| 13 | VL_PERC_REAL | NUMBER | Y |  |
| 14 | TP_SITUACAO | NUMBER | Y |  |
| 15 | VL_CUSTO | NUMBER | Y |  |
| 16 | DS_CATEGORIA | VARCHAR2 | Y |  |
| 17 | DS_GRUPO | VARCHAR2 | Y |  |
| 18 | DS_RESULTADOS | CLOB | Y |  |
| 19 | DS_PROBLEMAS | CLOB | Y |  |
| 20 | DS_ACOES | CLOB | Y |  |
| 21 | CD_RESPONSAVEL | NUMBER | N |  |
| 22 | CD_PATROCINADOR | NUMBER | N |  |
| 23 | CD_REGISTRANTE | NUMBER | N |  |
| 24 | CD_ORGANIZACAO | NUMBER | Y |  |
| 25 | CD_IVM | VARCHAR2 | Y |  |
| 26 | CD_CALENDARIO | NUMBER | Y |  |
| 27 | TP_PRIORIDADE | NUMBER | Y |  |
| 28 | VL_DURACAO_REAL | VARCHAR2 | Y |  |
| 29 | DT_ALTERADO | DATE | Y |  |
| 30 | TIPO | VARCHAR2 | Y |  |

---

## DBAPORTAL.GUT_ITEM_ISHIKAWA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GUT_ITEM_ISHIKAWA | NUMBER | N |  |
| 2 | VL_GRAVIDADE | NUMBER | Y |  |
| 3 | VL_URGENCIA | NUMBER | Y |  |
| 4 | VL_TENDENCIA | NUMBER | Y |  |
| 5 | VL_TOTAL | VARCHAR2 | Y |  |
| 6 | CD_ITEM_CAUSA_RAIZ_ISHIKAW | NUMBER | N |  |

---

## DBAPORTAL.HISTORICO_REG_OCORRENCIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_HISTORICO_REG_OCORRENCIA | NUMBER | N |  |
| 2 | DS_COMENTARIO | VARCHAR2 | Y |  |
| 3 | DT_MUDANCA_FLUXO | DATE | Y |  |
| 4 | ID_RESPONSAVEL_FLUXO | NUMBER | Y |  |
| 5 | CD_FLUXO_OCORRENCIA | NUMBER | N |  |
| 6 | CD_REGISTRO_OCORRENCIA | NUMBER | N |  |
| 7 | DT_ACEITACAO | DATE | Y |  |
| 8 | TP_ACAO | VARCHAR2 | Y | 0 Salvar 1 Avancar 2 Aceitar 3 Recusar |
| 9 | CD_FLUXO_QUADRO_OCORRENCIA | NUMBER | Y |  |
| 10 | TP_ANALISE | VARCHAR2 | Y |  |
| 11 | CD_QUESTIONARIO_ANALISE | NUMBER | Y |  |
| 12 | DS_ACAO | VARCHAR2 | Y |  |

---

## DBAPORTAL.HIST_GEST_COMPETENCIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_HIST_GEST_COMPETENCIA | NUMBER | N |  |
| 2 | TP_ACAO_HISTORICO | NUMBER | Y |  |
| 3 | DS_ACAO_HISTORICO | VARCHAR2 | Y |  |
| 4 | DT_ALTERACAO | DATE | N |  |
| 5 | CD_GESTAO_COMPETENCIA | NUMBER | N |  |
| 6 | ID_REGISTRANTE | NUMBER | N |  |

---

## DBAPORTAL.INDICADOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INDICADOR | NUMBER | N |  |
| 2 | DS_INDICADOR | VARCHAR2 | N |  |
| 3 | TP_SITUACAO | VARCHAR2 | N |  |
| 4 | TP_FORMA_AGRUPAMENTO | VARCHAR2 | N |  |

---

## DBAPORTAL.INDICADOR_ANALISE_CRITICA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INDICADOR_ANALISE_CRITICA | NUMBER | N |  |
| 2 | CD_ANALISE_CRITICA | NUMBER | N |  |
| 3 | CD_CENTRO_CUSTO | NUMBER | Y |  |
| 4 | CD_IVM | VARCHAR2 | Y |  |
| 5 | NR_ORDEM_CC | NUMBER | Y |  |
| 6 | TP_ESCOLHA | VARCHAR2 | Y |  |
| 7 | DS_ANALISE_CRITICA | CLOB | Y |  |
| 8 | DT_ULT_ALTERACAO | DATE | Y |  |
| 9 | SN_CONCLUIDO | VARCHAR2 | Y |  |
| 10 | SN_ARQUIVADO | VARCHAR2 | Y |  |
| 11 | SN_APRESENTADO | VARCHAR2 | Y |  |
| 12 | SN_DESCRICAO_CONCLUIDO | VARCHAR2 | Y |  |
| 13 | SN_GRAFICO_CONCLUIDO | VARCHAR2 | Y |  |
| 14 | SN_DOCUMENTO_CONCLUIDO | VARCHAR2 | Y |  |
| 15 | SN_PLANOACAO_CONCLUIDO | VARCHAR2 | Y |  |
| 16 | SN_RESUMOVALORES_CONCLUIDO | VARCHAR2 | Y |  |
| 17 | CD_INICIATIVA_ACAO | NUMBER | Y |  |

---

## DBAPORTAL.INDICADOR_OCORRENCIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INDICADOR_OCORRENCIA | NUMBER | N |  |
| 2 | CD_IVM | VARCHAR2 | N |  |
| 3 | CD_OCORRENCIA | NUMBER | Y |  |

---

## DBAPORTAL.INDICADOR_PRIMARIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | TP_INDICADOR | VARCHAR2 | N |  |
| 2 | DS_INDICADOR | VARCHAR2 | Y |  |
| 3 | DS_OBJETIVO | VARCHAR2 | Y |  |
| 4 | DS_FORMULA | VARCHAR2 | Y |  |
| 5 | SN_DATAWAREHOUSE | VARCHAR2 | Y |  |
| 6 | DS_SCRIPT_ETT | VARCHAR2 | Y |  |
| 7 | CD_INDICADOR_PRIMARIO | VARCHAR2 | N |  |
| 8 | DS_FATO | VARCHAR2 | Y |  |
| 9 | TP_REGRA_ATUALIZACAO | VARCHAR2 | Y |  |
| 10 | DT_ULTIMA_CARGA | DATE | Y |  |
| 11 | DS_RESUMO | VARCHAR2 | Y |  |
| 12 | SN_CLAUSULA_WHERE | VARCHAR2 | N |  |
| 13 | SN_COMPETENCIA | VARCHAR2 | N |  |
| 14 | DT_PADRAO_CARGA | DATE | Y |  |
| 15 | SN_UTILIZADO_FUNCAO_MAT | VARCHAR2 | N |  |
| 16 | TP_ETL | VARCHAR2 | N |  |

---

## DBAPORTAL.INDICADOR_REUNIAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INDICADOR_REUNIAO | NUMBER | N |  |
| 2 | DS_ANALISE_CRITICA | CLOB | Y |  |
| 3 | DT_ULT_ALTERACAO | DATE | Y |  |
| 4 | CD_INDICADOR_ANALISE_CRITICA | NUMBER | Y |  |
| 5 | SN_CONCLUIDO | VARCHAR2 | Y |  |
| 6 | SN_ARQUIVADO | VARCHAR2 | Y |  |
| 7 | SN_APRESENTADO | VARCHAR2 | Y |  |
| 8 | SN_DESCRICAO_CONCLUIDO | VARCHAR2 | Y |  |
| 9 | SN_GRAFICO_CONCLUIDO | VARCHAR2 | Y |  |
| 10 | SN_DOCUMENTO_CONCLUIDO | VARCHAR2 | Y |  |
| 11 | SN_PLANOACAO_CONCLUIDO | VARCHAR2 | Y |  |

---

## DBAPORTAL.IND_CAUSA_EFEITO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IND_CAUSA_EFEITO | NUMBER | N |  |
| 2 | CD_IVM_PRINCIPAL | VARCHAR2 | N |  |
| 3 | CD_IVM_SECUNDARIO | VARCHAR2 | N |  |

---

## DBAPORTAL.IND_VISUALIZACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IND_VISUALIZACAO | NUMBER | N |  |
| 2 | DS_IND_VISUALIZACAO | VARCHAR2 | N |  |
| 3 | TP_IND_VISUALIZACAO | VARCHAR2 | Y |  |
| 4 | CD_TP_IND_VISUALIZACAO | VARCHAR2 | Y |  |
| 5 | CD_IVM | VARCHAR2 | N |  |
| 6 | NR_ORDENACAO | NUMBER | Y |  |

---

## DBAPORTAL.IND_VISUALIZACAO_IND_REUNIAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IND_VISUALIZACAO_IND_REUNIA | NUMBER | N |  |
| 2 | CD_IND_VISUALIZACAO | NUMBER | N |  |
| 3 | CD_INDICADOR_ANALISE_CRITICA | NUMBER | Y |  |

---

## DBAPORTAL.IND_VISUALIZACAO_TEMP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IND_VISUALIZACAO | NUMBER | N |  |
| 2 | DS_IND_VISUALIZACAO | VARCHAR2 | N |  |
| 3 | TP_IND_VISUALIZACAO | VARCHAR2 | Y |  |
| 4 | CD_TP_IND_VISUALIZACAO | VARCHAR2 | Y |  |
| 5 | CD_IVM | VARCHAR2 | N |  |
| 6 | NR_ORDENACAO | NUMBER | Y |  |

---

## DBAPORTAL.INICIATIVA_ACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INICIATIVA_ACAO | NUMBER | N |  |
| 2 | DS_TITULO | VARCHAR2 | N |  |
| 3 | TP_INICIATIVA_ACAO | VARCHAR2 | Y |  |
| 4 | DT_CRIACAO | DATE | N |  |
| 5 | DT_INICIO | DATE | Y |  |
| 6 | DT_TERMINO | DATE | Y |  |
| 7 | DT_INICIO_PREVISTA | DATE | Y |  |
| 8 | DT_TERMINO_PREVISTA | DATE | Y |  |
| 9 | TP_SITUACAO | VARCHAR2 | Y |  |
| 10 | VL_PERC_PROGRESSO | VARCHAR2 | Y |  |
| 11 | DS_DURACAO | VARCHAR2 | Y |  |
| 12 | VL_ORCAMENTO | NUMBER | Y |  |
| 13 | VL_CUSTO | NUMBER | Y |  |
| 14 | CD_INICIATIVA_ACAO_PAI | NUMBER | Y |  |
| 15 | CD_PESSOA | NUMBER | N |  |
| 16 | TP_PUBLICACAO | NUMBER | Y |  |
| 17 | DS_COMPETENCIA | VARCHAR2 | Y |  |
| 18 | CD_FICHA_IVM | NUMBER | Y |  |
| 19 | CD_IVM | VARCHAR2 | Y |  |
| 20 | CD_SOLICITANTE | NUMBER | Y |  |
| 21 | CD_REG_EVENTO_SENT | NUMBER | Y |  |
| 22 | TP_DURACAO | NUMBER | Y |  |
| 23 | VL_DIA_ANTECEDENCIA | NUMBER | Y |  |
| 24 | CD_CENTRO_CUSTO | NUMBER | Y |  |
| 25 | CD_DIVISAO_SETOR | NUMBER | Y |  |
| 26 | CD_SUBDIVISAO_SETOR | NUMBER | Y |  |
| 27 | CD_GRUPO_ANALISE | NUMBER | Y |  |
| 28 | CD_CENTRO_RESP | NUMBER | Y |  |
| 29 | CD_ORGANIZACAO | NUMBER | Y |  |
| 30 | CD_GESTAO | NUMBER | Y |  |
| 31 | DS_CD_INICIATIVA_ACAO | VARCHAR2 | Y |  |
| 32 | CD_RESPONSAVEL | NUMBER | Y |  |
| 33 | TP_ATIVIDADE | VARCHAR2 | Y |  |
| 34 | NR_SEQUENCIA | VARCHAR2 | Y |  |
| 35 | NR_IMPORTANCIA | NUMBER | Y |  |
| 36 | DT_ENVIO_EMAIL | DATE | Y |  |
| 37 | DS_INICIATIVA_ACAO | CLOB | Y |  |
| 38 | SN_ARQUIVADO | CHAR | Y |  |
| 39 | DS_CATEGORIA | VARCHAR2 | Y |  |
| 40 | DS_GRUPO | VARCHAR2 | Y |  |
| 41 | DS_RESULTADOS | CLOB | Y |  |
| 42 | DT_ALTERADO | DATE | Y |  |
| 43 | CD_AUDITORIA | NUMBER | Y |  |
| 44 | CD_MAPA_RISCO | NUMBER | Y |  |
| 45 | DS_PROBLEMAS | CLOB | Y |  |
| 46 | DS_ACOES | CLOB | Y |  |
| 47 | CD_INI_ACAO_PRIMEIRO_PAI | NUMBER | Y |  |
| 48 | DS_MEDIDA_EFETIVIDADE | VARCHAR2 | Y |  |
| 49 | CD_REGISTRO_OCORRENCIA | NUMBER | Y |  |
| 50 | DS_CAMPO_INTEGRACAO | VARCHAR2 | Y |  |
| 51 | TP_CLASSIFICACAO_HORA | CHAR | Y |  |
| 52 | TP_DURACAO_REAL | NUMBER | Y |  |
| 53 | CD_CALENDARIO | NUMBER | Y |  |
| 54 | TP_PRIORIDADE | NUMBER | Y |  |
| 55 | CD_GRUPO_PROJETO | NUMBER | Y |  |
| 56 | CD_FORMULARIO | NUMBER | Y |  |
| 57 | NR_DURACAO_REAL | VARCHAR2 | Y |  |
| 58 | QT_DOCUMENTOS | NUMBER | Y |  |
| 59 | QT_NOTAS | NUMBER | Y |  |
| 60 | QT_FILHOS | NUMBER | Y |  |
| 61 | CD_BASELINE | NUMBER | Y |  |
| 62 | CD_MAPA_RISCO_AUDITORIA | NUMBER | Y |  |
| 63 | SN_JUSTIFICA_BASELINE | CHAR | Y |  |

---

## DBAPORTAL.INICIATIVA_ACAO_ACHADO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INICIATIVA_ACAO_ACHADO | VARCHAR2 | N |  |
| 2 | CD_ACHADO_IT_QUESTIONARIO | NUMBER | N |  |
| 3 | CD_INICIATIVA_ACAO | NUMBER | N |  |
| 4 | DS_MEDIDA_EFETIVIDADE | VARCHAR2 | Y |  |

---

## DBAPORTAL.INICIATIVA_ACAO_INDICADOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INICIATIVA_ACAO_INDICADOR | NUMBER | N |  |
| 2 | CD_INICIATIVA_ACAO | NUMBER | N |  |
| 3 | CD_IVM | VARCHAR2 | N |  |

---

## DBAPORTAL.INICIATIVA_ACAO_OBJETIVO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INICIATIVA_ACAO | NUMBER | N |  |
| 2 | CD_OBJETIVO | NUMBER | N |  |

---

## DBAPORTAL.INICIATIVA_ACAO_REG_OCO_CR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INICIATIVA_ACAO_REG_OCO_CR | NUMBER | N |  |
| 2 | CD_REG_OCORRENCIA_CAUSA_RAIZ | NUMBER | N |  |
| 3 | CD_INICIATIVA_ACAO | NUMBER | N |  |

---

## DBAPORTAL.INICIATIVA_ACAO_SINC

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INICIATIVA_ACAO | NUMBER | N |  |
| 2 | CD_INICIATIVA_ACAO_PAI | NUMBER | Y |  |
| 3 | DS_TITULO | VARCHAR2 | Y |  |
| 4 | DT_INICIO_PREVISTA | DATE | Y |  |
| 5 | DT_TERMINO_PREVISTA | DATE | Y |  |
| 6 | DS_DURACAO | VARCHAR2 | Y |  |
| 7 | TP_DURACAO | VARCHAR2 | Y |  |
| 8 | TP_ATIVIDADE | VARCHAR2 | Y |  |
| 9 | CD_RESPONSAVEL | NUMBER | N |  |
| 10 | CD_PATROCINADOR | NUMBER | Y |  |
| 11 | CD_REGISTRANTE | NUMBER | Y |  |
| 12 | CD_ORGANIZACAO | NUMBER | Y |  |
| 13 | VL_PERC_PROGRESSO | VARCHAR2 | Y |  |
| 14 | DT_ULT_ATUALIZACAO | DATE | Y |  |
| 15 | DS_CAMPO_INTEGRACAO | VARCHAR2 | Y |  |
| 16 | SN_DELETADO | VARCHAR2 | Y |  |
| 17 | CD_CENTRO_CUSTO | NUMBER | Y |  |

---

## DBAPORTAL.INICIATIVA_CR_ISHIKAWA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INICIATIVA_CR_ISHIKAWA | NUMBER | N |  |
| 2 | CD_ITEM_CAUSA_RAIZ_ISHIKAWA | NUMBER | N |  |
| 3 | CD_INICIATIVA_ACAO | NUMBER | N |  |

---

## DBAPORTAL.INICIATIVA_INDICADOR_REUNIAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INICIATIVA_IND_REUNIAO | NUMBER | N |  |
| 2 | CD_INICIATIVA_ACAO | NUMBER | N |  |
| 3 | CD_INDICADOR_ANALISE_CRITICA | NUMBER | Y |  |

---

## DBAPORTAL.INI_ACAO_DELETADOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INI_ACAO_DELETADOS | NUMBER | N |  |
| 2 | CD_INICIATIVA_ACAO | NUMBER | Y |  |
| 3 | DT_DELETADO | DATE | Y |  |

---

## DBAPORTAL.INTEGRACAO_PESSOA
> Tabela de Integrac?o da Pessoa com outros Sistemas

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INTEGRACAO_PESSOA | NUMBER | N | Codigo da Integrac?o-Pessoa. |
| 2 | CD_PESSOA | NUMBER | N | Codigo da Pessoa no BSC. |
| 3 | DS_ORIGEM | VARCHAR2 | N | Sistema integrado com pessoa |
| 4 | DS_CODIGO_ORIGEM | VARCHAR2 | N | Codigo relacionado a pessoa no sistema integrado. |

---

## DBAPORTAL.ISHIKAWA_OCORRENCIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ISHIKAWA_OCORRENCIA | NUMBER | N |  |
| 2 | TP_ITEM_ISHIKAWA1 | VARCHAR2 | Y |  |
| 3 | TP_ITEM_ISHIKAWA2 | VARCHAR2 | Y |  |
| 4 | TP_ITEM_ISHIKAWA3 | VARCHAR2 | Y |  |
| 5 | TP_ITEM_ISHIKAWA4 | VARCHAR2 | Y |  |
| 6 | TP_ITEM_ISHIKAWA5 | VARCHAR2 | Y |  |
| 7 | TP_ITEM_ISHIKAWA6 | VARCHAR2 | Y |  |
| 8 | CD_REGISTRO_OCORRENCIA | NUMBER | Y |  |
| 9 | DS_EFEITO_ISHIKAWA | VARCHAR2 | Y |  |
| 10 | CD_FLUXO_QUADRO_OCORRENCIA | NUMBER | Y |  |

---

## DBAPORTAL.ITEM_CAUSA_RAIZ_ISHIKAWA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITEM_CAUSA_RAIZ_ISHIKAWA | NUMBER | N |  |
| 2 | TP_ITEM | VARCHAR2 | Y |  |
| 3 | SN_CAUSA_RAIZ | VARCHAR2 | Y |  |
| 4 | CD_ISHIKAWA_OCORRENCIA | NUMBER | N |  |
| 5 | CD_CAUSA_RAIZ | NUMBER | N |  |

---

## DBAPORTAL.ITEM_QUESTIONARIO_ANALISE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITEM_QUESTIONARIO_ANALISE | NUMBER | N |  |
| 2 | NM_NIVEL_ANALISE | VARCHAR2 | Y |  |
| 3 | NM_ITEM_ANALISE | VARCHAR2 | Y |  |
| 4 | DS_QUESTAO | VARCHAR2 | Y |  |
| 5 | CD_QUESTIONARIO_ANALISE | NUMBER | N |  |
| 6 | NR_ORDENACAO | NUMBER | Y |  |
| 7 | SN_REGISTRO_OBRIGATORIO | VARCHAR2 | Y |  |

---

## DBAPORTAL.ITEM_TEMPLATE_IND_REUNIAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITEM_TEMPLATE_IND_REUNIAO | NUMBER | N |  |
| 2 | TP_ELEMENTO | VARCHAR2 | Y |  |
| 3 | NR_ORDENACAO | NUMBER | Y |  |
| 4 | CD_TEMPLATE_INDICADOR_REUNIAO | NUMBER | N |  |

---

## DBAPORTAL.ITLAN_MED_TEMP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REG_FAT | NUMBER | Y |  |
| 2 | CD_LANCAMENTO | NUMBER | Y |  |
| 3 | TP_PAGAMENTO | VARCHAR2 | Y |  |
| 4 | VL_LIQUIDO | NUMBER | Y |  |
| 5 | VL_ATO | NUMBER | Y |  |
| 6 | CD_PRESTADOR | NUMBER | Y |  |
| 7 | CD_ATI_MED | NUMBER | Y |  |
| 8 | CD_SIMULACAO | NUMBER | Y |  |

---

## DBAPORTAL.ITREG_FAT_TEMP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REG_FAT | NUMBER | Y |  |
| 2 | CD_LANCAMENTO | NUMBER | Y |  |
| 3 | SN_PERTENCE_PACOTE | VARCHAR2 | Y |  |
| 4 | TP_PAGAMENTO | VARCHAR2 | Y |  |
| 5 | VL_TOTAL_CONTA | NUMBER | Y |  |
| 6 | VL_UNITARIO | NUMBER | Y |  |
| 7 | VL_FILME_UNITARIO | NUMBER | Y |  |
| 8 | VL_ACRESCIMO | NUMBER | Y |  |
| 9 | VL_DESCONTO | NUMBER | Y |  |
| 10 | VL_HONORARIO_UNITARIO | NUMBER | Y |  |
| 11 | VL_OPERACIONAL_UNITARIO | NUMBER | Y |  |
| 12 | QT_CH_UNITARIO | NUMBER | Y |  |
| 13 | CD_SIMULACAO | NUMBER | Y |  |
| 14 | DT_LANCAMENTO | DATE | Y |  |
| 15 | QT_LANCAMENTO | NUMBER | Y |  |
| 16 | CD_PRO_FAT | VARCHAR2 | Y |  |

---

## DBAPORTAL.IT_CONFIGURACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IT_CONFIGURACAO | NUMBER | N |  |
| 2 | DS_IT_CONFIGURACAO | VARCHAR2 | Y |  |

---

## DBAPORTAL.IVM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IVM | VARCHAR2 | N |  |
| 2 | DS_IVM | VARCHAR2 | N |  |
| 3 | CD_GRUPO_INDICADOR | NUMBER | Y |  |
| 4 | DS_META | VARCHAR2 | Y |  |
| 5 | VL_IVM | NUMBER | Y |  |
| 6 | DS_LINK | VARCHAR2 | Y |  |
| 7 | TP_REGRA_ATUALIZACAO | VARCHAR2 | Y |  |
| 8 | DT_ULTIMA_CARGA | DATE | Y |  |
| 9 | TP_UNIDADE | VARCHAR2 | Y |  |
| 10 | DT_PADRAO_CARGA | DATE | Y |  |
| 11 | TP_IVM | VARCHAR2 | N |  |
| 12 | TP_PERIODICIDADE | VARCHAR2 | Y |  |
| 13 | TP_INDICADOR | VARCHAR2 | Y |  |
| 14 | CD_PERSPECTIVA | NUMBER | Y |  |
| 15 | TP_PROPORCAO_FAIXA | VARCHAR2 | N |  |
| 16 | TP_CALCULO | VARCHAR2 | Y |  |
| 17 | DS_SIMBOLO | VARCHAR2 | Y |  |
| 18 | VL_CASA_DECIMAL | NUMBER | Y |  |
| 19 | DS_APRESENTACAO | VARCHAR2 | Y |  |
| 20 | DS_METRICA | VARCHAR2 | Y |  |
| 21 | NR_PESO | NUMBER | Y | Peso do Indicador perante os demais na estrategia |
| 22 | VL_MAXIMO_DIGITACAO | NUMBER | Y |  |
| 23 | VL_MINIMO_DIGITACAO | NUMBER | Y |  |
| 24 | CD_REFERENCIA | VARCHAR2 | Y |  |
| 25 | NR_MV | NUMBER | Y |  |
| 26 | TP_ANALISE | VARCHAR2 | Y |  |
| 27 | VL_GK | CHAR | Y |  |
| 28 | DS_UTILIZACAO | CLOB | Y |  |
| 29 | DS_FORMULA | CLOB | Y |  |
| 30 | DS_COLETADADOS | CLOB | Y |  |
| 31 | DT_ATUALIZACAO | DATE | Y |  |
| 32 | SN_ATIVO | VARCHAR2 | Y |  |
| 33 | SN_CARGA_ATIVA | VARCHAR2 | N |  |
| 34 | DS_UTILIZACAO_IVM | VARCHAR2 | Y |  |
| 35 | TP_DESDOBRAMENTO | CHAR | Y |  |
| 36 | SN_CORPORATIVO | VARCHAR2 | Y |  |

---

## DBAPORTAL.IVM_DIMENSIONALIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IVM_DIM | NUMBER | N |  |
| 2 | CD_IVM | VARCHAR2 | N |  |
| 3 | NR_ORD_DIGITACAO | NUMBER | N |  |
| 4 | CD_DIMENSIONALIDADE | NUMBER | Y |  |

---

## DBAPORTAL.IVM_FAIXA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IVM_FAIXA | NUMBER | N |  |
| 2 | CD_IVM | VARCHAR2 | N |  |
| 3 | VL_FAIXA_INICIAL | NUMBER | Y |  |
| 4 | VL_FAIXA_FINAL | NUMBER | Y |  |
| 5 | DS_SITUACAO | VARCHAR2 | Y |  |
| 6 | DS_COR | VARCHAR2 | Y |  |
| 7 | TP_SITUACAO | VARCHAR2 | Y |  |

---

## DBAPORTAL.IVM_FONTE_FORMULA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IVM_FONTE_FORMULA | NUMBER | N |  |
| 2 | CD_IVM_FONTE_INDICADOR | NUMBER | N |  |
| 3 | CD_IVM | VARCHAR2 | N |  |
| 4 | CD_ORGANIZACAO | NUMBER | Y |  |
| 5 | CD_CENTRO_CUSTO | NUMBER | Y |  |

---

## DBAPORTAL.IVM_FONTE_INDICADOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IVM_FONTE_INDICADOR | NUMBER | N |  |
| 2 | DS_FONTE_INDICADOR | LONG | Y |  |
| 3 | TP_FONTE_INDICADOR | VARCHAR2 | Y |  |
| 4 | CD_IVM | VARCHAR2 | Y |  |
| 5 | CD_ORGANIZACAO | NUMBER | Y |  |
| 6 | CD_CARGA | NUMBER | Y |  |
| 7 | CD_CENTRO_CUSTO | NUMBER | Y |  |

---

## DBAPORTAL.IVM_FONTE_INDICADOR_BKP1

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IVM_FONTE_INDICADOR | NUMBER | N |  |
| 2 | DS_FONTE_INDICADOR | VARCHAR2 | Y |  |
| 3 | TP_FONTE_INDICADOR | VARCHAR2 | Y |  |
| 4 | CD_IVM | VARCHAR2 | Y |  |
| 5 | CD_ORGANIZACAO | NUMBER | Y |  |
| 6 | CD_CARGA | NUMBER | Y |  |
| 7 | CD_CENTRO_CUSTO | NUMBER | Y |  |

---

## DBAPORTAL.IVM_GRUPO_INDICADOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IVM | VARCHAR2 | N |  |
| 2 | CD_GRUPO_INDICADOR | NUMBER | N |  |

---

## DBAPORTAL.IVM_LINK

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LINK | NUMBER | N |  |
| 2 | DS_LINK | VARCHAR2 | N |  |
| 3 | CD_IVM | VARCHAR2 | N |  |

---

## DBAPORTAL.IVM_REFERENCIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IVM | VARCHAR2 | N |  |
| 2 | CD_REFERENCIA | VARCHAR2 | Y |  |

---

## DBAPORTAL.IVM_USUARIO_EMAIL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IVM_USU_EMAIL | NUMBER | N |  |
| 2 | CD_IVM | VARCHAR2 | N |  |
| 3 | CD_USUARIO_PORTAL | VARCHAR2 | N |  |
| 4 | SN_FAVORAVEL | VARCHAR2 | Y |  |
| 5 | SN_ESTAVEL | VARCHAR2 | Y |  |
| 6 | SN_DESFAVORAVEL | VARCHAR2 | Y |  |
| 7 | SN_AUXILIAR | VARCHAR2 | Y |  |

---

## DBAPORTAL.JAVA$CLASS$MD5$TABLE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NAME | VARCHAR2 | Y |  |
| 2 | MD5 | RAW | Y |  |

---

## DBAPORTAL.LINK

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIG | NUMBER | N |  |
| 2 | DS_NOME_DO_DOMINIO | VARCHAR2 | Y |  |
| 3 | DS_ENDERECO_IP | VARCHAR2 | Y |  |
| 4 | DS_BANCO_URL_DISCO | VARCHAR2 | Y |  |
| 5 | DS_CAMINHO_PLANILHA_HTML | VARCHAR2 | Y |  |
| 6 | DS_LOGO | BLOB | Y |  |

---

## DBAPORTAL.LISTA_FIXA_DIMENSAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LISTA_FIXA_DIMENSAO | NUMBER | N |  |
| 2 | CD_GRUPO_PERGUNTA | NUMBER | N |  |
| 3 | CD_DIMENSAO | NUMBER | N |  |
| 4 | CD_VL_DIMENSAO | VARCHAR2 | N |  |
| 5 | CD_LISTA_FIXA | NUMBER | N |  |

---

## DBAPORTAL.LOG_ACESSO_BSC
> Tabela para armazenamentos de logs gerados pelo sistema bsc

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOG_ACESSO | NUMBER | N | Chave primaria identificadora |
| 2 | CD_USUARIO_PORTAL | VARCHAR2 | N | Usuario que gerou o evento de log |
| 3 | DH_ACESSO | DATE | N | Data e hora da ocorrencia de log |
| 4 | DS_IP | VARCHAR2 | Y | IP da maquina que gerou o log |
| 5 | DS_BROWSER | VARCHAR2 | Y | Descricao do browser que estava conectado ao sistema na geracao do log |
| 6 | DS_TELA | VARCHAR2 | Y | Descricao da tela em uso que gerou o log |
| 7 | TP_LOG | NUMBER | Y | Tipo de log gerado |

---

## DBAPORTAL.LOG_EXECUCAO_CARGA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOG_EXECUCAO_CARGA | NUMBER | N |  |
| 2 | CD_ORGANIZACAO | NUMBER | N |  |
| 3 | CD_IVM | VARCHAR2 | N |  |
| 4 | DT_EXECUCAO | DATE | N |  |
| 5 | DS_ERRO | CLOB | Y |  |

---

## DBAPORTAL.LOG_KPI_CONNECTION

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOG_KPI_CONNECTIO | NUMBER | N |  |
| 2 | DS_TITULO | VARCHAR2 | Y |  |
| 3 | TP_LOG | NUMBER | N |  |
| 4 | TP_FONTE_LOG | NUMBER | N |  |
| 5 | TP_TABELA | NUMBER | Y |  |
| 6 | CD_TP_TABELA | VARCHAR2 | Y |  |
| 7 | DT_LOG | DATE | Y |  |
| 8 | CD_CONFIG_CONNECT | NUMBER | Y |  |
| 9 | CD_USUARIO_PORTAL | VARCHAR2 | Y |  |
| 10 | DS_SQL_ERRO | CLOB | Y |  |

---

## DBAPORTAL.LOG_PORTAL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_LOG_PORTAL | NUMBER | N |  |
| 2 | DS_LOG_PORTAL | VARCHAR2 | N |  |
| 3 | DT_INI_LOG_PORTAL | DATE | N |  |
| 4 | TP_LOG_PORTAL | VARCHAR2 | N |  |
| 5 | DS_ROTINA_PROCESSAMENTO | VARCHAR2 | Y |  |
| 6 | TABELA | VARCHAR2 | Y |  |
| 7 | NR_REG_ANTERIOR | NUMBER | Y |  |
| 8 | NR_REG_POSTERIOR | NUMBER | Y |  |
| 9 | DT_FIM_LOG_PORTAL | DATE | Y |  |
| 10 | DS_ERRO | VARCHAR2 | Y |  |
| 11 | COD_USUARIO | VARCHAR2 | Y |  |
| 12 | ST_LOG_PORTAL | VARCHAR2 | Y | P = Processando, E = Erro, C = Concluído |
| 13 | DT_INICIO_CARGA | DATE | Y |  |
| 14 | DT_FINAL_CARGA | DATE | Y |  |

---

## DBAPORTAL.LOG_SISTEMA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOG_SISTEMA | NUMBER | N |  |
| 2 | DS_LOG_SISTEMA | VARCHAR2 | N |  |
| 3 | ID_USUARIO_PORTAL | NUMBER | Y |  |
| 4 | DT_LOG_SISTEMA | DATE | Y |  |

---

## DBAPORTAL.MAPA
> Tabela de mapas de riscos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NM_MAPA | VARCHAR2 | N | Nome do mapa de risco |
| 2 | CD_MAPA | NUMBER | N | Identificador do mapa de risco |
| 3 | DS_MAPA | CLOB | Y | Descricao do mapa de risco |
| 4 | SN_ATIVO | CHAR | Y |  |

---

## DBAPORTAL.MAPA_RISCO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MAPA_RISCO | NUMBER | N | Identificador do mapa de risco |
| 2 | CD_MAPA_RISCO_PAI | NUMBER | Y | Identificador do mapa de risco pai |
| 3 | CD_MAPA | NUMBER | Y | Identificador do mapa relacionado |
| 4 | CD_PROCESSO | NUMBER | Y | Identificador do processo relacionado |
| 5 | CD_ORGANIZACAO | NUMBER | Y | Identificador da organizacao relacionada |
| 6 | CD_CENTRO_CUSTO | NUMBER | Y | Identificador do centro de custo (setor) relacionado |
| 7 | CD_INICIATIVA_ACAO | NUMBER | Y | Identificador da iniciativa acao (projeto, plano de acao ou atividade) relacionada |
| 8 | CD_IVM | VARCHAR2 | Y | Identificacao do indicador relacionado |
| 9 | CD_FATOR_RISCO | NUMBER | Y | Identificador do fator de risco relacionado |
| 10 | CD_RISCO | NUMBER | Y | Identificador do risco relacionado |
| 11 | VL_PESO_PRATICA_CONTROLE | NUMBER | Y | Valor do peso da pratica de controle relacionada |
| 12 | CD_AUDITOR_PRATICA_CONTR | VARCHAR2 | Y | Identificador da relacao auditoria pratica de controle relacionada |
| 13 | CD_PRATICA_CONTROLE | NUMBER | Y | Identificador da pratica de controle relacionada |
| 14 | CD_RESPONSAVEL_RISCO | VARCHAR2 | Y | Identificador do responsavel pelo risco associado |
| 15 | CD_CATEGORIA_RISCO | NUMBER | Y | Identificador da categoria do risco associado |
| 16 | CD_NIVEL_IMPACTO | NUMBER | Y | Identificador do nivel de impacto do risco associado |
| 17 | DT_PREVISTA_EXECUCAO | DATE | Y | Data estimada para execuc?o da pratica de controle |
| 18 | TP_PERIODICIDADE | VARCHAR2 | Y | Identifica o periodo  de execucao da pratica de controle |
| 19 | TP_IVM | VARCHAR2 | Y | Quando o Inidcador e preenchido o tipo de ivm deve ser preenchido tambem como E- Estrategico e O-... |
| 20 | SN_ATIVO | CHAR | Y |  |

---

## DBAPORTAL.MAPA_RISCO_AUDITORIA
> Relacionamento entre auditoria e mapa de risco

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AUDITOR_RESPONSAVEL | VARCHAR2 | Y | Identificador do auditor responsavel por realizar a pratica de controle |
| 2 | VL_PESO_PRATICA_CONTROLE | NUMBER | Y | Valor do peso da pratica de controle |
| 3 | VL_RESULTADO_PRATICA_CONTR | NUMBER | Y | Valor da auditoria para a pratica de controle |
| 4 | DT_EXECUCAO_PRATICA_CONTR | DATE | Y | Data da execucao da auditoria para a pratica de controle |
| 5 | VL_RESULTADO_AUDITORIA | NUMBER | Y | Valor do resultado do ciclo de auditoria para o risco |
| 6 | CD_AUDITORIA | NUMBER | N | Identificador da auditoria relacionada |
| 7 | CD_MAPA_RISCO | NUMBER | N | Identificador do mapa de risco relacionado |
| 8 | DS_RESULTADO_AUDITORIA | CLOB | Y | Detalhes do resultado da auditoria |
| 9 | DT_PREVISTA_EXECUCAO | DATE | Y | Data para execucao da pratica de controle |
| 10 | CD_MAPA_RISCO_AUDITORIA | NUMBER | N |  |
| 11 | SN_ATIVO | CHAR | Y |  |

---

## DBAPORTAL.MAPA_RISCO_AUDITORIA_DOC_ANEXO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MP_RSC_ADT_DOC_ANEXO | NUMBER | N |  |
| 2 | CD_MAPA_RISCO_AUDITORIA | NUMBER | N |  |
| 3 | CD_USUARIO_PORTAL | VARCHAR2 | N |  |
| 4 | DS_TITULO | VARCHAR2 | N |  |
| 5 | DT_VALIDADE | DATE | Y |  |
| 6 | NM_ARQUIVO | VARCHAR2 | N |  |
| 7 | SN_ATIVO | VARCHAR2 | Y |  |
| 8 | DS_VERSAO | VARCHAR2 | Y |  |

---

## DBAPORTAL.MATRIZ_RISCO
> Tabela de matriz de risco

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MATRIZ_RISCO | NUMBER | N | Identificador da matriz de risco |
| 2 | NM_MATRIZ_RISCO | VARCHAR2 | N | Nome da matriz de risco |
| 3 | DS_MATRIZ_RISCO | CLOB | Y | Descricao da matriz de risco |
| 4 | CD_CLASSIFICACAO_IMPACTO | NUMBER | N | Identificador da classificacao de impacto associada |
| 5 | CD_CLASSIFICACAO_PROBABILIDADE | NUMBER | N | Identificador da classificacao de probabilidade associada |

---

## DBAPORTAL.MD_APPLICATIONFILES
> Holds a tuple for each file that is being processed whether it is changed or not.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | APPLICATIONS_ID_FK | NUMBER | N |  |
| 3 | NAME | VARCHAR2 | N | file name  //OBJECTNAME |
| 4 | URI | VARCHAR2 | N | The uri is the part of the file url after the base dir has been removed.  See MD_APPLICATION for ... |
| 5 | TYPE | VARCHAR2 | N | This will denote the type of file we have, including DIR, FILE (text), BINARY, IGNORE (where we c... |
| 6 | STATE | VARCHAR2 | N | State will be how this file is operated on.  For example. it will be OPEN, NEW, FIXED, IGNORED, R... |
| 7 | LANGUAGE | VARCHAR2 | Y | Language of the file that has been processed. |
| 8 | LOC | NUMBER | Y |  |
| 9 | SECURITY_GROUP_ID | NUMBER | N | APEX |
| 10 | CREATED_ON | DATE | N | APEX |
| 11 | CREATED_BY | VARCHAR2 | Y | APEX |
| 12 | UPDATED_ON | DATE | Y | APEX |
| 13 | UPDATED_BY | VARCHAR2 | Y | APEX |

---

## DBAPORTAL.MD_APPLICATIONS
> This is the base table for application projects.  It holds the base information for applications associated with a database

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Primary Key |
| 2 | NAME | VARCHAR2 | Y | Name of the application suite  //OBJECTNAME |
| 3 | DESCRIPTION | VARCHAR2 | Y | Overview of what the application does. |
| 4 | BASE_DIR | VARCHAR2 | Y | This is the base src directory for the application.  It could be an svn checkout, a clearcase vie... |
| 5 | OUTPUT_DIR | VARCHAR2 | Y | This is the output directory where the scanner will present the converted files, if there are con... |
| 6 | BACKUP_DIR | VARCHAR2 | Y | This is the directory in which the application files are backed up if a backp is chosen |
| 7 | INPLACE | NUMBER | Y | Designates whether the changes have been made inplace, in the source directory or not |
| 8 | PROJECT_ID_FK | NUMBER | N | project of the database(s) this application relates to |
| 9 | SECURITY_GROUP_ID | NUMBER | N |  |
| 10 | CREATED_ON | DATE | N |  |
| 11 | CREATED_BY | VARCHAR2 | Y |  |
| 12 | LAST_UPDATED_ON | DATE | Y |  |
| 13 | LAST_UPDATED_BY | VARCHAR2 | Y |  |

---

## DBAPORTAL.MD_FILE_ARTIFACTS
> Holds a tuple for each interesting thing the scanner finds in a file

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | APPLICATIONFILES_ID | NUMBER | N |  |
| 3 | PATTERN | VARCHAR2 | Y | Pattern used to search source file for interesting artifiacts |
| 4 | STRING_FOUND | VARCHAR2 | Y | String found in source from the pattern supplied |
| 5 | STRING_REPLACED | VARCHAR2 | Y | This is the string which replace the string found if it was replaced. |
| 6 | TYPE | VARCHAR2 | Y | This is the type of the replacement.  It could be a straight replace from a replacement pattern, ... |
| 7 | STATUS | VARCHAR2 | Y | Pattern used to search source file for interesting artifiacts |
| 8 | LINE | NUMBER | Y |  |
| 9 | PATTERN_START | NUMBER | Y |  |
| 10 | PATTERN_END | NUMBER | Y |  |
| 11 | DUE_DATE | DATE | Y | Due date is used by the TODO mechanism to manage the validation and work to complete this change |
| 12 | DB_TYPE | VARCHAR2 | Y | Source database calls type |
| 13 | CODE_TYPE | VARCHAR2 | Y | Source code db api, like dblib, jdbc |
| 14 | DESCRIPTION | VARCHAR2 | Y | This is a description of the artifact which will have a default generated by the scanner and then... |
| 15 | PRIORITY | NUMBER | Y | The priority is set for the TODOs so they can be managed by the user |
| 16 | SECURITY_GROUP_ID | VARCHAR2 | N |  |
| 17 | CREATED_ON | DATE | N |  |
| 18 | CREATED_BY | VARCHAR2 | Y |  |
| 19 | LAST_UPDATED | DATE | Y |  |
| 20 | LAST_UPDATED_BY | VARCHAR2 | Y |  |

---

## DBAPORTAL.MD_REPOVERSIONS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | REVISION | NUMBER | N |  |

---

## DBAPORTAL.MD_TABLESPACES
> For storing information about tablespaces.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Primary Key |
| 2 | SCHEMA_ID_FK | NUMBER | N | Schema to which this tablespace belongs //PARENTFIELD |
| 3 | TABLESPACE_NAME | VARCHAR2 | Y | Name of the table space //OBJECTNAME |
| 4 | NATIVE_SQL | CLOB | Y | The SQL used to create this tablespace |
| 5 | NATIVE_KEY | VARCHAR2 | Y | A unique identifier for this object at source |
| 6 | COMMENTS | VARCHAR2 | Y |  |
| 7 | SECURITY_GROUP_ID | NUMBER | N |  |
| 8 | CREATED_ON | DATE | N |  |
| 9 | CREATED_BY | VARCHAR2 | Y |  |
| 10 | LAST_UPDATED_ON | DATE | Y |  |
| 11 | LAST_UPDATED_BY | VARCHAR2 | Y |  |

---

## DBAPORTAL.MD_USER_PRIVILEGES
> This table stores privileges granted to individual users

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Primary Key |
| 2 | USER_ID_FK | NUMBER | N | User |
| 3 | PRIVILEGE_ID_FK | NUMBER | Y | Privilege |
| 4 | SECURITY_GROUP_ID | NUMBER | N |  |
| 5 | CREATED_ON | DATE | N |  |
| 6 | CREATED_BY | VARCHAR2 | Y |  |
| 7 | LAST_UPDATED_ON | DATE | Y |  |
| 8 | LAST_UDPATED_BY | VARCHAR2 | Y |  |

---

## DBAPORTAL.MENSAGEM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MENSAGEM | NUMBER | N |  |
| 2 | DS_ASSUNTO | VARCHAR2 | N |  |
| 3 | DS_MENSAGEM | VARCHAR2 | Y |  |
| 4 | DT_MENSAGEM | DATE | N |  |
| 5 | HR_MENSAGEM | DATE | N |  |
| 6 | SN_EXCLUIDO | VARCHAR2 | Y |  |
| 7 | TP_PRIORIDADE | VARCHAR2 | Y |  |
| 8 | CD_USUARIO | VARCHAR2 | N | Codigo do Usuario |
| 9 | SN_LIDO | VARCHAR2 | Y |  |
| 10 | CD_USUARIO_ORIGEM | VARCHAR2 | N |  |
| 11 | SN_NOTIFICADA | VARCHAR2 | Y |  |
| 12 | TP_SITUACAO_ENVIO_EMAIL | VARCHAR2 | N |  |

---

## DBAPORTAL.MENSAGEM_NOTICIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MENSAGEM_NOTICIA | NUMBER | N |  |
| 2 | DS_TITULO | VARCHAR2 | Y |  |
| 3 | DS_MENSAGEM_NOTICIA | CLOB | Y |  |
| 4 | TP_MENSAGEM | VARCHAR2 | Y |  |
| 5 | DH_CRIACAO_MENSAGEM | DATE | Y |  |

---

## DBAPORTAL.MENSAGEM_PORTAL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIPO_MENSAGEM | VARCHAR2 | N |  |
| 2 | CD_MENSAGEM_PORTAL | NUMBER | N |  |
| 3 | DS_MENSAGEM | VARCHAR2 | N |  |

---

## DBAPORTAL.MENU_CONFIG

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MENU_CONFIG | NUMBER | N |  |
| 2 | NR_ORDEM | NUMBER | N |  |
| 3 | TP_NIVEL | VARCHAR2 | N |  |
| 4 | DS_OPCAO | VARCHAR2 | N |  |
| 5 | CD_MODULO | VARCHAR2 | Y |  |
| 6 | CD_USUARIO | VARCHAR2 | Y | Codigo do Usuario |
| 7 | CD_PAPEL | NUMBER | Y |  |
| 8 | CD_MENU_CONFIG_PAI | NUMBER | Y |  |

---

## DBAPORTAL.META_INDICADOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_META_INDICADOR | NUMBER | N |  |
| 2 | DS_META_INDICADOR | VARCHAR2 | Y |  |
| 3 | TP_PERIODICIDADE | VARCHAR2 | N |  |
| 4 | VL_META_INDICADOR | NUMBER | N |  |
| 5 | DT_CRIACAO | DATE | N |  |
| 6 | DT_INICIO | DATE | Y |  |
| 7 | DT_FIM | DATE | Y |  |
| 8 | CD_IVM | VARCHAR2 | Y |  |
| 9 | CD_ORGANIZACAO | NUMBER | N |  |
| 10 | CD_CENTRO_CUSTO | NUMBER | Y |  |
| 11 | CD_GESTAO | NUMBER | Y |  |
| 12 | VL_FAIXA_INICIAL_FAVORAVEL | NUMBER | Y |  |
| 13 | VL_FAIXA_INICIAL_DESFAVORAVEL | NUMBER | Y |  |
| 14 | VL_FAIXA_FINAL_DESFAVORAVEL | NUMBER | Y |  |
| 15 | VL_FAIXA_FINAL_FAVORAVEL | NUMBER | Y |  |
| 16 | VL_FAIXA_INICIAL_ESTAVEL | NUMBER | Y |  |
| 17 | VL_FAIXA_FINAL_ESTAVEL | NUMBER | Y |  |
| 18 | SN_INDICADOR_CHAVE | VARCHAR2 | Y |  |
| 19 | VL_FAIXA_INICIAL_FAVORAVEL_N2 | NUMBER | Y |  |
| 20 | VL_FAIXA_INICIAL_ESTAVEL_N2 | NUMBER | Y |  |
| 21 | VL_FAIXA_INICIAL_DESFAVOR_N2 | NUMBER | Y |  |
| 22 | VL_FAIXA_FINAL_DESFAVOR_N2 | NUMBER | Y |  |
| 23 | VL_FAIXA_FINAL_FAVORAVEL_N2 | NUMBER | Y |  |
| 24 | VL_FAIXA_FINAL_ESTAVEL_N2 | NUMBER | Y |  |
| 25 | CD_RESPONSAVEL | NUMBER | Y |  |
| 26 | TP_ANALISE | VARCHAR2 | Y |  |
| 27 | SN_SAZONAL | VARCHAR2 | Y |  |
| 28 | TP_FAIXA_ANALISE | VARCHAR2 | Y |  |
| 29 | VL_DESVIO_PADRAO | NUMBER | Y |  |

---

## DBAPORTAL.META_MENSAL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INDICADOR_PRIMARIO | VARCHAR2 | N |  |
| 2 | DT_META | DATE | N |  |
| 3 | VL_ANO | NUMBER | N |  |
| 4 | VL_MES | VARCHAR2 | N |  |
| 5 | VL_META | NUMBER | N |  |

---

## DBAPORTAL.METODO_DETECCAO_OCORRENCIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_METODO_DETECCAO_OCORRENCIA | NUMBER | N |  |
| 2 | DS_CODIGO | VARCHAR2 | Y |  |
| 3 | DS_METODO_DETECCAO | VARCHAR2 | Y |  |
| 4 | SN_ATIVO | VARCHAR2 | Y |  |

---

## DBAPORTAL.MODULO_PERM_USUARIO_TEMP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MODULO_SISTEMA | NUMBER | N |  |
| 2 | CD_USUARIO_PORTAL | VARCHAR2 | N |  |
| 3 | SN_PERMISSAO | VARCHAR2 | Y |  |

---

## DBAPORTAL.MODULO_SISTEMA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SISTEMA | NUMBER | N | Codigo identificador do sistema. |
| 2 | DS_SISTEMA | VARCHAR2 | N | Descric?o do sistema. |

---

## DBAPORTAL.MUDANCA_SETOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MUDANCA_SETOR | NUMBER | N |  |
| 2 | ID_USUARIO_PORTAL | NUMBER | N |  |
| 3 | CD_CENTRO_CUSTO | NUMBER | Y |  |
| 4 | DT_VIGENCIA | DATE | N |  |
| 5 | DT_SAIDA | DATE | Y |  |

---

## DBAPORTAL.NIVEL_IMPACTO
> Tabelas de niveis de impacto

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_NIVEL_IMPACTO | NUMBER | N | Identificador do nivel de impacto |
| 2 | NM_NIVEL_IMPACTO | VARCHAR2 | N | Nome do nivel de impacto |
| 3 | DS_NIVEL_IMPACTO | CLOB | Y | Descricao do nivel de impacto |
| 4 | VL_NIVEL_IMPACTO | NUMBER | N | Valor do nivel de impacto |
| 5 | CD_CLASSIFICACAO_IMPACTO | NUMBER | N | Identificador da classificacao de impacto associada |

---

## DBAPORTAL.NIVEL_PROBABILIDADE
> Tabela de niveis de probabilidade

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_NIVEL_PROBABILIDADE | NUMBER | N | Identificador do nivel de probabilidade |
| 2 | NM_NIVEL_PROBABILIDADE | VARCHAR2 | N | Nome do nivel de probabilidade |
| 3 | DS_NIVEL_PROBABILIDADE | CLOB | Y | Descricao do nivel de probabilidade |
| 4 | VL_NIVEL_PROBABILIDADE | NUMBER | N | Valor do nivel de probabilidade |
| 5 | VL_PONTOS_MAIOR_QUE | NUMBER | N | Valor pontuacao minima |
| 6 | VL_PONTOS_MENOR_QUE | NUMBER | N | Valor da pontuacao maxima |
| 7 | CD_CLASSIFICACAO_PROBABILIDADE | NUMBER | N | Identificador da classificacao de probabilidade associada |

---

## DBAPORTAL.NOTA_INICIATIVA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_NOTA_INICIATIVA | NUMBER | N |  |
| 2 | DS_TITULO | VARCHAR2 | Y |  |
| 3 | DT_NOTA_INICIATIVA | DATE | Y |  |
| 4 | SN_EMAIL | VARCHAR2 | Y |  |
| 5 | CD_INICIATIVA_ACAO | NUMBER | Y |  |
| 6 | CD_USUARIO_PORTAL | VARCHAR2 | N |  |
| 7 | CD_GRUPO_PROJETO | NUMBER | Y |  |
| 8 | DS_NOTA_INICIATIVA | CLOB | Y |  |
| 9 | DS_NOTA_INICIATIVA_HTML | CLOB | Y |  |

---

## DBAPORTAL.NOTA_REG_OCORRENCIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_NOTA_REG_OCORRENCIA | NUMBER | N |  |
| 2 | DS_NOTA_REG_OCORRENCIA | VARCHAR2 | Y |  |
| 3 | DS_TITULO | VARCHAR2 | Y |  |
| 4 | DT_NOTA_REG_OCORRENCIA | DATE | Y |  |
| 5 | CD_REGISTRO_OCORRENCIA | NUMBER | N |  |
| 6 | ID_USUARIO_PORTAL | NUMBER | N |  |
| 7 | DS_NOTA_REG_OCORRENCIA_HTML | VARCHAR2 | Y |  |

---

## DBAPORTAL.NOTIFICACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_NOTIFICACAO | NUMBER | N |  |
| 2 | DS_TITULO | VARCHAR2 | Y |  |
| 3 | TP_NOTIFICACAO | VARCHAR2 | Y |  |
| 4 | DT_NOTIFICACAO | DATE | Y |  |
| 5 | ID_USUARIO_PORTAL | NUMBER | Y |  |
| 6 | CD_INICIATIVA_ACAO | NUMBER | Y |  |
| 7 | CD_NOTA_INICIATIVA | NUMBER | Y |  |
| 8 | CD_DOCUMENTO_HISTORICO | NUMBER | Y |  |
| 9 | CD_MAPA_RISCO | NUMBER | Y |  |
| 10 | CD_REUNIAO | NUMBER | Y |  |
| 11 | CD_FICHA_IVM | NUMBER | Y |  |
| 12 | CD_IVM | VARCHAR2 | Y |  |
| 13 | CD_META_INDICADOR | NUMBER | Y |  |
| 14 | CD_FICHA_OBJETIVO | NUMBER | Y |  |
| 15 | CD_CAMINHO_CRITICO | NUMBER | Y |  |
| 16 | CD_HISTORICO_REG_OCORRENCIA | NUMBER | Y |  |
| 17 | CD_NOTA_REG_OCORRENCIA | NUMBER | Y |  |
| 18 | CD_AUDITORIA | NUMBER | Y |  |
| 19 | TP_FONTE_NOTIFICACAO | VARCHAR2 | Y |  |
| 20 | CD_DOCUMENTO_NOTA | NUMBER | Y |  |

---

## DBAPORTAL.OBJETIVO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_OBJETIVO | NUMBER | N |  |
| 2 | DS_OBJETIVO | VARCHAR2 | N |  |
| 3 | DS_CODIGO_OBJETIVO | VARCHAR2 | Y |  |
| 4 | CD_PERSPECTIVA | NUMBER | N |  |
| 5 | CD_CADEIA_VALOR | NUMBER | Y |  |
| 6 | CD_PESSOA | NUMBER | N |  |
| 7 | NR_PESO | NUMBER | Y | Peso do Objetivo perante os demais na estrategia |

---

## DBAPORTAL.OBJETIVO_CAUSA_EFEITO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_OBJETIVO_CAUSA_EFEITO | NUMBER | N |  |
| 2 | CD_OBJETIVO_PAI | NUMBER | N |  |
| 3 | CD_OBJETIVO_FILHO | NUMBER | N |  |
| 4 | TP_CAUSA_EFEITO | CHAR | Y |  |
| 5 | CD_ESTRATEGIA | NUMBER | Y |  |

---

## DBAPORTAL.OBJETIVO_CONTRIBUICAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_OBJETIVO_CONTRIBUICAO | NUMBER | N |  |
| 2 | CD_OBJETIVO | NUMBER | N |  |
| 3 | CD_OBJETIVO_CONTRIBUI | NUMBER | N |  |
| 4 | CD_ESTRATEGIA | NUMBER | N |  |
| 5 | CD_ESTRATEGIA_CONTRIBUI | NUMBER | N |  |
| 6 | NR_ORDEM_EST_CONTRIBUI | NUMBER | Y |  |

---

## DBAPORTAL.OBJETO_DE_PARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_OBJETO_DE_PARA | NUMBER | N |  |
| 2 | TP_OBJETO_DE_PARA | NUMBER | N |  |
| 3 | CD_CONFIG_CONTA_CONNECT | NUMBER | N |  |
| 4 | CD_OBJETO_CLIENTE | VARCHAR2 | Y |  |
| 5 | CD_OBJETO_SERVIDOR | VARCHAR2 | N |  |
| 6 | DT_ATUALIZACAO | DATE | Y |  |

---

## DBAPORTAL.OCORRENCIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_OCORRENCIA | NUMBER | N |  |
| 2 | DS_OCORRENCIA | VARCHAR2 | Y |  |
| 3 | NM_OCORRENCIA | VARCHAR2 | Y |  |
| 4 | DS_CODIGO | VARCHAR2 | Y |  |
| 5 | SN_ATIVO | VARCHAR2 | Y |  |
| 6 | CD_TIPO_OCORRENCIA | NUMBER | Y |  |
| 7 | SN_NEA | VARCHAR2 | Y |  |
| 8 | TP_ANALISE | VARCHAR2 | Y |  |
| 9 | CD_QUESTIONARIO_ANALISE | NUMBER | Y |  |
| 10 | CD_WORKFLOW_OCORRENCIA | NUMBER | Y |  |
| 11 | CD_FORMULARIO | NUMBER | Y |  |
| 12 | SN_BLOQUEAR_TIPO_ANALISE | VARCHAR2 | Y |  |

---

## DBAPORTAL.OCORRENCIA_DOCUMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_OCORRENCIA_DOCUMENTO | NUMBER | N |  |
| 2 | CD_REGISTRO_OCORRENCIA | NUMBER | N |  |
| 3 | CD_USUARIO_PORTAL | VARCHAR2 | Y |  |
| 4 | DS_TITULO | VARCHAR2 | Y |  |
| 5 | DS_VERSAO_DOCUMENTO | VARCHAR2 | Y |  |
| 6 | DS_ORIGEM_DOCUMENTO | VARCHAR2 | Y |  |
| 7 | NM_ARQUIVO | VARCHAR2 | Y |  |
| 8 | SN_ATIVO | VARCHAR2 | N |  |

---

## DBAPORTAL.ORDEM_ESTRATEGIA_PERSPECTIVA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORDEM_EST_PERSP | NUMBER | N |  |
| 2 | CD_ESTRATEGIA | NUMBER | N |  |
| 3 | CD_PERSPECTIVA | NUMBER | N |  |
| 4 | NR_ORDEM_EST_PERSP | NUMBER | N |  |
| 5 | NR_PESO | NUMBER | Y | Peso da perspectiva perante as outras na estrategia |
| 6 | NR_ORDEM_MAPA | NUMBER | Y |  |

---

## DBAPORTAL.ORDENACAO_PREFERENCIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORDENACAO_PREFERENCIA | NUMBER | N |  |
| 2 | NR_ORDENACAO | NUMBER | Y |  |
| 3 | DS_COLUNA_ORDEM | VARCHAR2 | Y |  |
| 4 | DS_ALIAS_COLUNA_ORDEM | VARCHAR2 | Y |  |
| 5 | ID_USUARIO_PORTAL | NUMBER | Y |  |

---

## DBAPORTAL.ORGANIZACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORGANIZACAO | NUMBER | N |  |
| 2 | DS_ORGANIZACAO | VARCHAR2 | N |  |
| 3 | DS_NEGOCIO | VARCHAR2 | Y |  |
| 4 | DS_MISSAO | VARCHAR2 | Y |  |
| 5 | DS_VALORES | VARCHAR2 | Y |  |
| 6 | DS_VISAO | VARCHAR2 | Y |  |
| 7 | CD_MULTI_EMPRESA_MV2000 | NUMBER | Y |  |
| 8 | CD_SITE | NUMBER | Y |  |
| 9 | DT_CADASTRO | DATE | Y |  |
| 10 | CD_ENDERECO | NUMBER | Y |  |
| 11 | CD_CONTATO | NUMBER | Y |  |
| 12 | NM_ABREVIADO | VARCHAR2 | Y |  |
| 13 | NM_FANTASIA | VARCHAR2 | Y |  |
| 14 | NR_CNPJ | VARCHAR2 | Y |  |
| 15 | DS_CAMINHO_LOGO | VARCHAR2 | Y |  |

---

## DBAPORTAL.ORGANIZACAO_TELEFONE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORGANIZACAO_TELEFONE | NUMBER | N |  |
| 2 | CD_TELEFONE | NUMBER | N |  |
| 3 | CD_ORGANIZACAO | NUMBER | N |  |

---

## DBAPORTAL.PAPEL_EVENTO_SENT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PAPEL_EVENTO_SENT | NUMBER | N |  |
| 2 | CD_EVENTO_SENTINELA | NUMBER | N |  |
| 3 | CD_PAPEL | NUMBER | N |  |

---

## DBAPORTAL.PARAMETROS_IVM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PARAMETRO_IVM | NUMBER | N |  |
| 2 | TP_ARGUMENTO | VARCHAR2 | Y |  |
| 3 | VL_VALOR | VARCHAR2 | Y |  |
| 4 | CD_FORMULA | NUMBER | N |  |
| 5 | CD_CAMPO | VARCHAR2 | N |  |
| 6 | TP_SENTENCA | VARCHAR2 | Y |  |
| 7 | CD_INDICADOR_PRIMARIO | VARCHAR2 | N |  |
| 8 | CD_SEQ_EXECUTA | NUMBER | N |  |
| 9 | VL_SINAL_INI | VARCHAR2 | Y |  |
| 10 | VL_SINAL_FIM | VARCHAR2 | Y |  |
| 11 | DS_TABELA_DIMENSAO | VARCHAR2 | Y |  |

---

## DBAPORTAL.PARAMETROS_IVM_TESTE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PARAMETRO_IVM | NUMBER | N |  |
| 2 | TP_ARGUMENTO | VARCHAR2 | Y |  |
| 3 | VL_VALOR | VARCHAR2 | Y |  |
| 4 | CD_FORMULA | NUMBER | N |  |
| 5 | CD_CAMPO | VARCHAR2 | N |  |
| 6 | TP_SENTENCA | VARCHAR2 | Y |  |
| 7 | CD_INDICADOR_PRIMARIO | VARCHAR2 | N |  |
| 8 | CD_SEQ_EXECUTA | NUMBER | N |  |
| 9 | CD_COMPARA | VARCHAR2 | Y |  |

---

## DBAPORTAL.PARAMETRO_GLOBAL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PARAMETRO_GLOBAL | NUMBER | N |  |
| 2 | DS_PARAMETRO_GLOBAL | VARCHAR2 | N |  |
| 3 | DS_PERGUNTA_PARAMETRO_GLOBAL | VARCHAR2 | N |  |
| 4 | TP_PARAMETRO_GLOBAL | VARCHAR2 | N |  |
| 5 | CD_LISTA_VALORES | NUMBER | Y |  |
| 6 | DS_MODO_EXIBICAO | VARCHAR2 | Y |  |
| 7 | VL_PADRAO | VARCHAR2 | N |  |
| 8 | CD_MASCARA | VARCHAR2 | Y |  |

---

## DBAPORTAL.PARAMETRO_GLOBAL_PORTLET

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PORTLET | NUMBER | N |  |
| 2 | CD_PARAMETRO_GLOBAL | NUMBER | N |  |
| 3 | CD_PARAMETRO_GLOBAL_PORTLET | NUMBER | N |  |

---

## DBAPORTAL.PARAM_EVE_SENT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PARAM_EVE_SENT | NUMBER | N |  |
| 2 | DS_PARAM_EVE_SENT | VARCHAR2 | N |  |
| 3 | TP_PARAMETRO | VARCHAR2 | N |  |
| 4 | NM_ESQUEMA_LOV | VARCHAR2 | Y |  |
| 5 | NM_TABELA_LOV | VARCHAR2 | Y |  |
| 6 | NM_CAMPO_RET_LOV | VARCHAR2 | Y |  |
| 7 | NM_CAMPO_DS_LOV | VARCHAR2 | Y |  |
| 8 | NM_CAMPO_EXT_LOV | VARCHAR2 | Y |  |

---

## DBAPORTAL.PARAM_FUNCAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PARAM_FUNCAO | NUMBER | N |  |
| 2 | CD_PARAM_EVE_SENT | NUMBER | Y |  |
| 3 | CD_FUNCAO | NUMBER | Y |  |
| 4 | SN_ACEITA_TODOS | VARCHAR2 | N |  |

---

## DBAPORTAL.PARA_MENSAGEM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | TP_PARA | VARCHAR2 | N |  |
| 2 | CD_MENSAGEM | NUMBER | N |  |
| 3 | CD_USUARIO | VARCHAR2 | N | Codigo do Usuario |

---

## DBAPORTAL.PENDENCIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PENDENCIA | NUMBER | N |  |
| 2 | DS_TITULO | VARCHAR2 | Y |  |
| 3 | TP_CATEGORIA | VARCHAR2 | Y |  |
| 4 | DT_INICIO | DATE | Y |  |
| 5 | DT_FIM | DATE | Y |  |
| 6 | TP_PRIORIDADE | VARCHAR2 | Y |  |
| 7 | NR_PERCENTUAL | NUMBER | Y |  |
| 8 | DS_PENDENCIA | VARCHAR2 | Y |  |
| 9 | ID_USUARIO_RESPONSAVEL | NUMBER | N |  |
| 10 | ID_USUARIO_REGISTRANTE | NUMBER | N |  |
| 11 | SN_EXECUTADA | VARCHAR2 | Y |  |

---

## DBAPORTAL.PENDENCIA_IVM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PENDENCIA_IVM | NUMBER | N |  |
| 2 | DT_PENDENCIA_IVM | DATE | N |  |
| 3 | SN_ANALISE | VARCHAR2 | Y |  |
| 4 | SN_TENDENCIA | VARCHAR2 | Y |  |
| 5 | SN_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 6 | SN_FAVORAVEL | VARCHAR2 | Y |  |
| 7 | SN_ESTAVEL | VARCHAR2 | Y |  |
| 8 | SN_DESFAVORAVEL | VARCHAR2 | Y |  |
| 9 | DT_ULTIMO_ENVIO | DATE | Y |  |

---

## DBAPORTAL.PERFIL_INICIATIVA_ACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PERFIL_INICIATIVA_ACAO | NUMBER | N |  |
| 2 | TP_PERFIL | VARCHAR2 | Y |  |
| 3 | CD_INICIATIVA_ACAO | NUMBER | N |  |
| 4 | SN_EMAIL_ATIVIDADE | VARCHAR2 | Y |  |
| 5 | SN_EMAIL_NOTAS | VARCHAR2 | Y |  |
| 6 | CD_PAPEL | NUMBER | Y |  |
| 7 | ID_USUARIO_PORTAL | NUMBER | Y |  |

---

## DBAPORTAL.PERFIL_KPI

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PERFIL_KPI | NUMBER | N |  |
| 2 | SN_VISUALIZAR | VARCHAR2 | Y |  |
| 3 | SN_NEGAR | VARCHAR2 | Y |  |
| 4 | CD_ORGANIZACAO | NUMBER | N |  |
| 5 | CD_IVM | VARCHAR2 | Y |  |
| 6 | CD_CENTRO_CUSTO | NUMBER | Y |  |
| 7 | ID_USUARIO_PORTAL | NUMBER | Y |  |
| 8 | CD_PAPEL | NUMBER | Y |  |
| 9 | SN_LANCAMENTO | VARCHAR2 | Y |  |
| 10 | SN_ANALISE | VARCHAR2 | Y |  |
| 11 | SN_PENDENCIA | VARCHAR2 | Y |  |
| 12 | SN_NOTIFICACAO | VARCHAR2 | Y |  |

---

## DBAPORTAL.PERFIL_MAPA
> Tabela de associacao de perfis (de papel ou usuarios) a um mapa

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PERFIL_MAPA | NUMBER | N | Identificador da da relacao perfil mapa |
| 2 | CD_PAPEL | NUMBER | Y | Papel ao qual o perfil esta associado |
| 3 | CD_USUARIO_PORTAL | VARCHAR2 | Y | Usuario do portal ao qual o perfil esta associado |
| 4 | CD_MAPA | NUMBER | N | Mapa ao qual esta se associando o perfil (de um papel ou usuario) |
| 5 | TP_PERFIL_RISCO | VARCHAR2 | N | Tipo de peril associado (AD - ADMINISTRADOR, AU - AUDITOR, CO - CONTRIBUINTE, GR - GERENTE DE RIS... |

---

## DBAPORTAL.PERFIL_REUNIAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PERFIL_REUNIAO | NUMBER | N |  |
| 2 | TP_PERFIL | VARCHAR2 | Y |  |
| 3 | CD_REUNIAO | NUMBER | N |  |
| 4 | ID_USUARIO_PORTAL | NUMBER | N |  |

---

## DBAPORTAL.PERFIL_SETOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PERFIL_SETOR | NUMBER | N |  |
| 2 | TP_PERFIL | VARCHAR2 | Y |  |
| 3 | CD_CENTRO_CUSTO | NUMBER | N |  |
| 4 | ID_USUARIO_PORTAL | NUMBER | N |  |

---

## DBAPORTAL.PERFIL_TIPO_OCORRENCIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PERFIL_TIPO_OCORRENCIA | NUMBER | N |  |
| 2 | TP_PERFIL | VARCHAR2 | Y |  |
| 3 | CD_TIPO_OCORRENCIA | NUMBER | N |  |
| 4 | CD_PAPEL | NUMBER | Y |  |
| 5 | ID_USUARIO_PORTAL | NUMBER | Y |  |
| 6 | SN_EMAIL_NOTA | VARCHAR2 | Y |  |

---

## DBAPORTAL.PERGUNTA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PERGUNTA | NUMBER | N |  |
| 2 | NR_ORDENACAO | NUMBER | Y |  |
| 3 | SN_REGISTRO_OBRIGATORIO | VARCHAR2 | Y |  |
| 4 | SN_REGISTRO_DISPONIVEL | VARCHAR2 | Y |  |
| 5 | SN_SIGILOSO | VARCHAR2 | Y |  |
| 6 | DS_ORIENTACAO_TOOLTIP | VARCHAR2 | Y |  |
| 7 | CD_TABELA_PERGUNTA | NUMBER | Y |  |
| 8 | TP_RESPOSTA | VARCHAR2 | Y |  |
| 9 | TP_TIPO_RESPOSTA | VARCHAR2 | Y |  |
| 10 | CD_FORMULARIO | NUMBER | Y |  |
| 11 | DS_PERGUNTA | VARCHAR2 | Y |  |
| 12 | SN_ATIVO | VARCHAR2 | Y |  |
| 13 | DT_CRIACAO_PERGUNTA | DATE | Y |  |
| 14 | SN_PADRAO | VARCHAR2 | Y |  |

---

## DBAPORTAL.PERGUNTA_DOC_INDICADOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PERGUNTA_DOC_INDICADOR | NUMBER | N |  |
| 2 | CD_DOC_INDICADOR | NUMBER | N |  |
| 3 | CD_DIMENSAO | NUMBER | N |  |
| 4 | CD_REGISTRO_DIMENSAO | NUMBER | Y |  |
| 5 | SN_AGRUPAMENTO | VARCHAR2 | Y |  |
| 6 | CD_PERGUNTA_DOC | NUMBER | N |  |
| 7 | CD_GRUPO_PERGUNTA | NUMBER | N |  |
| 8 | SN_AGRUPA_GRUPO_DIMENSAO | VARCHAR2 | Y |  |

---

## DBAPORTAL.PERGUNTA_ORGANIZACAO
> Tabela de perguntas para o cadastro de organizacoes

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PERGUNTA | NUMBER | N | Identificador da pergunta |
| 2 | DS_PERGUNTA | VARCHAR2 | N | Descricao da pergunta |
| 3 | TP_PERGUNTA | NUMBER | N | Tipo de pergunta |

---

## DBAPORTAL.PERGUNTA_ORGANIZACAO_TEMP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PERGUNTA | NUMBER | N |  |
| 2 | DS_PERGUNTA | VARCHAR2 | N |  |
| 3 | TP_PERGUNTA | NUMBER | N |  |

---

## DBAPORTAL.PERSPECTIVA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PERSPECTIVA | NUMBER | N |  |
| 2 | DS_TITULO_PERSPECTIVA | VARCHAR2 | N |  |
| 3 | DS_PERSPECTIVA | CLOB | Y |  |
| 4 | NR_ORDEM_PADRAO | NUMBER | N |  |

---

## DBAPORTAL.PESSOA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PESSOA | NUMBER | N |  |
| 2 | DS_PESSOA | VARCHAR2 | N |  |
| 3 | DS_EMAIL | VARCHAR2 | Y |  |
| 4 | CD_USUARIO_PORTAL | VARCHAR2 | N |  |

---

## DBAPORTAL.PESSOAS_REUNIAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PESSOAS_REUNIAO | NUMBER | N |  |
| 2 | CD_REUNIAO | NUMBER | N |  |
| 3 | CD_PESSOA | NUMBER | N |  |

---

## DBAPORTAL.PESSOA_EVENTO_SENT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PESSOA_EVENTO | NUMBER | N |  |
| 2 | CD_PESSOA | NUMBER | N |  |
| 3 | CD_EVENTO_SENTINELA | NUMBER | N |  |
| 4 | SN_RESPONSAVEL | VARCHAR2 | N |  |
| 5 | CD_PAPEL_EVENTO_SENT | NUMBER | N |  |
| 6 | DS_COR | VARCHAR2 | Y |  |
| 7 | SN_ATIVO | VARCHAR2 | N |  |

---

## DBAPORTAL.PESSOA_INTEGRACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PESSOA_INTEGRACAO | NUMBER | Y |  |
| 2 | CD_RESPONSAVEL | NUMBER | Y |  |
| 3 | DS_PESSOA_SISTEMA | VARCHAR2 | Y |  |
| 4 | CD_SISTEMA_INTEGRACAO | NUMBER | Y |  |

---

## DBAPORTAL.PESSOA_OUT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PESSOA | NUMBER | N |  |
| 2 | DS_PESSOA | VARCHAR2 | N |  |
| 3 | CD_CENTRO_CUSTO | NUMBER | N |  |
| 4 | DS_EMAIL | VARCHAR2 | Y |  |
| 5 | CD_USUARIO_PORTAL | VARCHAR2 | Y |  |

---

## DBAPORTAL.PESSOA_PAPEL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PESSOA | NUMBER | N |  |
| 2 | CD_PAPEL | NUMBER | N |  |

---

## DBAPORTAL.PLANILHA_DECISAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SEQUENCIA | NUMBER | N |  |
| 2 | CD_PASTA | VARCHAR2 | N |  |
| 3 | CD_IVM | VARCHAR2 | N |  |
| 4 | CD_IVM_INDICADOR | VARCHAR2 | N |  |

---

## DBAPORTAL.PLAN_TABLE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | STATEMENT_ID | VARCHAR2 | Y |  |
| 2 | TIMESTAMP | DATE | Y |  |
| 3 | REMARKS | VARCHAR2 | Y |  |
| 4 | OPERATION | VARCHAR2 | Y |  |
| 5 | OPTIONS | VARCHAR2 | Y |  |
| 6 | OBJECT_NODE | VARCHAR2 | Y |  |
| 7 | OBJECT_OWNER | VARCHAR2 | Y |  |
| 8 | OBJECT_NAME | VARCHAR2 | Y |  |
| 9 | OBJECT_INSTANCE | NUMBER | Y |  |
| 10 | OBJECT_TYPE | VARCHAR2 | Y |  |
| 11 | OPTIMIZER | VARCHAR2 | Y |  |
| 12 | SEARCH_COLUMNS | NUMBER | Y |  |
| 13 | ID | NUMBER | Y |  |
| 14 | PARENT_ID | NUMBER | Y |  |
| 15 | POSITION | NUMBER | Y |  |
| 16 | COST | NUMBER | Y |  |
| 17 | CARDINALITY | NUMBER | Y |  |
| 18 | BYTES | NUMBER | Y |  |
| 19 | OTHER_TAG | VARCHAR2 | Y |  |
| 20 | PARTITION_START | VARCHAR2 | Y |  |
| 21 | PARTITION_STOP | VARCHAR2 | Y |  |
| 22 | PARTITION_ID | NUMBER | Y |  |
| 23 | OTHER | LONG | Y |  |
| 24 | DISTRIBUTION | VARCHAR2 | Y |  |

---

## DBAPORTAL.PLSQL_PROFILER_DATA
> Accumulated data from all profiler runs

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | RUNID | NUMBER | N |  |
| 2 | UNIT_NUMBER | NUMBER | N |  |
| 3 | LINE# | NUMBER | N |  |
| 4 | TOTAL_OCCUR | NUMBER | Y |  |
| 5 | TOTAL_TIME | NUMBER | Y |  |
| 6 | MIN_TIME | NUMBER | Y |  |
| 7 | MAX_TIME | NUMBER | Y |  |
| 8 | SPARE1 | NUMBER | Y |  |
| 9 | SPARE2 | NUMBER | Y |  |
| 10 | SPARE3 | NUMBER | Y |  |
| 11 | SPARE4 | NUMBER | Y |  |

---

## DBAPORTAL.PLSQL_PROFILER_RUNS
> Run-specific information for the PL/SQL profiler

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | RUNID | NUMBER | N |  |
| 2 | RELATED_RUN | NUMBER | Y |  |
| 3 | RUN_OWNER | VARCHAR2 | Y |  |
| 4 | RUN_DATE | DATE | Y |  |
| 5 | RUN_COMMENT | VARCHAR2 | Y |  |
| 6 | RUN_TOTAL_TIME | NUMBER | Y |  |
| 7 | RUN_SYSTEM_INFO | VARCHAR2 | Y |  |
| 8 | RUN_COMMENT1 | VARCHAR2 | Y |  |
| 9 | SPARE1 | VARCHAR2 | Y |  |

---

## DBAPORTAL.PLSQL_PROFILER_UNITS
> Information about each library unit in a run

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | RUNID | NUMBER | N |  |
| 2 | UNIT_NUMBER | NUMBER | N |  |
| 3 | UNIT_TYPE | VARCHAR2 | Y |  |
| 4 | UNIT_OWNER | VARCHAR2 | Y |  |
| 5 | UNIT_NAME | VARCHAR2 | Y |  |
| 6 | UNIT_TIMESTAMP | DATE | Y |  |
| 7 | TOTAL_TIME | NUMBER | Y |  |
| 8 | SPARE1 | NUMBER | Y |  |
| 9 | SPARE2 | NUMBER | Y |  |

---

## DBAPORTAL.PRATICA_CONTROLE
> Tabela de praticas de controle

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRATICA_CONTROLE | NUMBER | N | Identificador da pratica de controle |
| 2 | NM_PRATICA_CONTROLE | VARCHAR2 | N | Nome da pratica de controle |
| 3 | DS_PRATICA_CONTROLE | CLOB | Y | Descricao da pratica de controle |
| 4 | DS_DETALHE_AUDITORIA | CLOB | Y | Detalhes da auditoria realizada para a pratica de controle |
| 5 | NR_PRATICA_CONTROLE | VARCHAR2 | N | Codigo ou numeracao da pratica de controle |

---

## DBAPORTAL.PRATICA_CONTROLE_DOCUMENTO
> Relacionamento de praticas de controle e documentos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRATICA_CONTROLE_DOC | NUMBER | N | Chave primaria do relacionamento |
| 2 | CD_PRATICA_CONTROLE | NUMBER | N | Pratica de controle relacionada |
| 3 | CD_DOCUMENTO | NUMBER | N | Documento relacionado |

---

## DBAPORTAL.PRATICA_CONTROLE_DOC_ANEXO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRATICA_CONTROLE | NUMBER | N |  |
| 2 | CD_USUARIO_PORTAL | VARCHAR2 | N |  |
| 3 | CD_PRATICA_CONTROLE_DOC_ANEXO | NUMBER | N |  |
| 4 | DS_TITULO | VARCHAR2 | N |  |
| 5 | DT_VALIDADE | DATE | Y |  |
| 6 | NM_ARQUIVO | VARCHAR2 | N |  |
| 7 | SN_ATIVO | VARCHAR2 | Y |  |
| 8 | DS_VERSAO | VARCHAR2 | Y |  |

---

## DBAPORTAL.PREFERENCIA_GRAFICO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PREFERENCIA_GRAFICO | NUMBER | N |  |
| 2 | SN_LINHA_HORIZONTAL | VARCHAR2 | Y |  |
| 3 | SN_LINHA_VERTICAL | VARCHAR2 | Y |  |
| 4 | SN_EXIBE_FAIXA | VARCHAR2 | Y |  |
| 5 | VL_TRANSPARENCIA_FAIXA | NUMBER | Y |  |
| 6 | VL_MIN_Y_ESQ | NUMBER | Y |  |
| 7 | VL_MAX_Y_ESQ | NUMBER | Y |  |
| 8 | VL_MIN_Y_DIR | NUMBER | Y |  |
| 9 | VL_MAX_Y_DIR | NUMBER | Y |  |
| 10 | VL_INTERVALO_ESQ | NUMBER | Y |  |
| 11 | VL_INTERVALO_DIR | NUMBER | Y |  |
| 12 | SN_EXIBE_IVM | VARCHAR2 | Y |  |
| 13 | SN_DATATIP_VISIVEL | VARCHAR2 | Y |  |
| 14 | SN_DATATIP_BARRA | VARCHAR2 | Y |  |
| 15 | TP_GRAFICO_VISUALIZACAO | VARCHAR2 | Y |  |
| 16 | TP_GRAFICO_CONFIGURACAO | VARCHAR2 | Y |  |
| 17 | SN_ATIVO | VARCHAR2 | Y |  |
| 18 | SN_GRAFICO_EXTENDIDO | VARCHAR2 | Y |  |

---

## DBAPORTAL.PREFERENCIA_IND_VISUALIZACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GRAFICO_IND_VISUALIZACAO | NUMBER | N |  |
| 2 | SN_HORIZONTAL | VARCHAR2 | Y |  |
| 3 | SN_VERTICAL | VARCHAR2 | Y |  |
| 4 | SN_EXIBE_FAIXA | VARCHAR2 | Y |  |
| 5 | VL_TRANSPARENCIA_FAIXA | NUMBER | Y |  |
| 6 | CD_IND_VISUALIZACAO | NUMBER | N |  |
| 7 | CD_ORGANIZACAO | NUMBER | N |  |
| 8 | CD_CENTRO_CUSTO | NUMBER | Y |  |
| 9 | VL_MIN_Y_ESQ | NUMBER | Y |  |
| 10 | VL_MAX_Y_ESQ | NUMBER | Y |  |
| 11 | VL_MIN_Y_DIR | NUMBER | Y |  |
| 12 | VL_MAX_Y_DIR | NUMBER | Y |  |
| 13 | VL_INTERVALO_ESQ | NUMBER | Y |  |
| 14 | VL_INTERVALO_DIR | NUMBER | Y |  |
| 15 | SN_EXIBE_IVM | VARCHAR2 | Y |  |
| 16 | TP_GRAFICO_VISUALIZACAO | VARCHAR2 | Y |  |
| 17 | SN_GRAFICO_EXTENDIDO | VARCHAR2 | Y |  |
| 18 | SN_DATATIP_BARRA | VARCHAR2 | Y |  |

---

## DBAPORTAL.PREFERENCIA_OCORRENCIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PREFERENCIA_OCORRENCIA | NUMBER | N |  |
| 2 | ID_USUARIO_PORTAL | NUMBER | Y |  |
| 3 | SN_COL_CATEGORIA | CHAR | N |  |
| 4 | SN_COL_REGISTRO | CHAR | N |  |
| 5 | SN_COL_TIPO | CHAR | N |  |
| 6 | SN_COL_RESUMO | CHAR | N |  |
| 7 | SN_COL_DT_REGISTRO | CHAR | N |  |
| 8 | SN_COL_DH_OCORRENCIA | CHAR | N |  |
| 9 | SN_COL_ACEITA | CHAR | N |  |
| 10 | SN_COL_FLUXO | CHAR | N |  |
| 11 | SN_COL_STATUS | CHAR | N |  |
| 12 | SN_COL_ORG_REG | CHAR | N |  |
| 13 | SN_COL_CC_REG | CHAR | N |  |
| 14 | SN_COL_USER_REG | CHAR | N |  |
| 15 | SN_COL_ORG_ORI | CHAR | N |  |
| 16 | SN_COL_CC_ORI | CHAR | N |  |
| 17 | SN_COL_TP_CRITICCOLADE | CHAR | N |  |
| 18 | SN_COL_USER_ORI | CHAR | N |  |
| 19 | SN_COL_NM_OCORRENCIA | CHAR | N |  |
| 20 | SN_COL_METODO_DETECCAO | CHAR | N |  |
| 21 | SN_COL_ACAO_IMEDIATA | CHAR | N |  |
| 22 | SN_COL_GRAU_NEA | CHAR | N |  |
| 23 | SN_COL_SN_PROCEDE | CHAR | N |  |
| 24 | SN_COL_SN_NC | CHAR | N |  |
| 25 | SN_COL_CRCOLENT | CHAR | N |  |
| 26 | SN_COL_SN_ACAO_REAL | CHAR | N |  |
| 27 | SN_COL_SN_PA_LANCADO | CHAR | N |  |
| 28 | SN_COL_SN_EFICACIA | CHAR | N |  |
| 29 | SN_COL_SN_PRAZO_CUMPRCOLO | CHAR | N |  |

---

## DBAPORTAL.PREFERENCIA_PROJETOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PREFERENCIA_PROJETOS | NUMBER | N |  |
| 2 | ID_USUARIO_PORTAL | NUMBER | Y |  |
| 3 | SN_COL_ALERTA | CHAR | N |  |
| 4 | SN_COL_CD_INICIATIVA_ACAO_PAI | CHAR | N |  |
| 5 | SN_COL_DOCUMENTOS | CHAR | N |  |
| 6 | SN_COL_FIM_PROJETADO | CHAR | N |  |
| 7 | SN_COL_INICIATIVA | CHAR | N |  |
| 8 | SN_COL_NOTAS | CHAR | N |  |
| 9 | SN_COL_REGISTRANTES | CHAR | N |  |
| 10 | SN_COL_SITUACAO | CHAR | N |  |
| 11 | SN_COL_TITULO | CHAR | N |  |
| 12 | SN_COL_PERC_PROJETO | CHAR | N |  |
| 13 | SN_COL_ATIVIDADE | CHAR | N |  |
| 14 | SN_COL_CD_RESP | CHAR | N |  |
| 15 | SN_COL_DURACAO_PROJETO | CHAR | N |  |
| 16 | SN_COL_FIM_REAL | CHAR | N |  |
| 17 | SN_COL_INI_PROJETADO | CHAR | N |  |
| 18 | SN_COL_ORCAMENTO | CHAR | N |  |
| 19 | SN_COL_RESPONSAVEL | CHAR | N |  |
| 20 | SN_COL_STATUS_GRAFICO | CHAR | N |  |
| 21 | SN_COL_TITULO_ATIVIDADE_PAI | CHAR | N |  |
| 22 | SN_COL_PERC_REAL | CHAR | N |  |
| 23 | SN_COL_INICIATIVA_ACAO | CHAR | N |  |
| 24 | SN_COL_CUSTO | CHAR | N |  |
| 25 | SN_COL_DURACAO_REAL | CHAR | N |  |
| 26 | SN_COL_INDICADOR | CHAR | N |  |
| 27 | SN_COL_INI_REAL | CHAR | N |  |
| 28 | SN_COL_PATROCINADOR | CHAR | N |  |
| 29 | SN_COL_SEQUENCIA | CHAR | N |  |
| 30 | SN_COL_STATUS | CHAR | N |  |
| 31 | SN_COL_PERC_ORCADO | CHAR | N |  |
| 32 | SN_COL_DS_CD_INICIATIVA_ACAO | CHAR | N |  |

---

## DBAPORTAL.PRE_PROJETO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRE_PROJETO | NUMBER | N |  |
| 2 | NM_TITULO | VARCHAR2 | N |  |
| 3 | TP_PRIORIDADE | NUMBER | Y |  |
| 4 | DT_CRIACAO | DATE | N |  |
| 5 | DS_OBJETIVO | VARCHAR2 | N |  |
| 6 | DS_PRODUTO | VARCHAR2 | Y |  |
| 7 | DS_MARCOS | VARCHAR2 | Y |  |
| 8 | DS_RESULTADO_APROVACAO | VARCHAR2 | Y |  |
| 9 | SN_COBRADO | VARCHAR2 | N |  |
| 10 | NR_HORA_ESTIMADA | NUMBER | Y |  |
| 11 | TP_SITUACAO | NUMBER | N |  |
| 12 | DT_INICIO | DATE | Y |  |
| 13 | DT_FIM | DATE | Y |  |
| 14 | CD_ORGANIZACAO | NUMBER | N |  |
| 15 | CD_CENTRO_CUSTO | NUMBER | Y |  |
| 16 | CD_REGISTRANTE | NUMBER | N |  |
| 17 | CD_RESPONSAVEL | NUMBER | Y |  |
| 18 | CD_SOLICITANTE | NUMBER | N |  |
| 19 | CD_APROVADOR | NUMBER | Y |  |
| 20 | CD_INICIATIVA_ACAO | NUMBER | Y |  |
| 21 | DT_APROVACAO | DATE | Y |  |
| 22 | TP_IMPORTANCIA | NUMBER | Y |  |
| 23 | CD_FORMULARIO | NUMBER | Y |  |
| 24 | CD_GRUPO_PROJETO | NUMBER | Y |  |
| 25 | DS_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 26 | DS_REQUISITOS | VARCHAR2 | Y |  |
| 27 | DS_EXCLUSOES | VARCHAR2 | Y |  |
| 28 | DS_RISCOS | VARCHAR2 | Y |  |

---

## DBAPORTAL.PRE_PROJETO_MATERIAL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRE_PROJETO_MATERIAL | NUMBER | N |  |
| 2 | NM_MATERIAL | VARCHAR2 | N |  |
| 3 | SN_AQUISICAO | VARCHAR2 | N |  |
| 4 | NR_QUANTIDADE | NUMBER | N |  |
| 5 | CD_PRE_PROJETO | NUMBER | N |  |
| 6 | VL_CUSTO_MATERIAL | NUMBER | Y |  |

---

## DBAPORTAL.PRE_PROJETO_RECURSO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRE_PROJETO_RECURSO | NUMBER | N |  |
| 2 | NR_HORA_ESTIMADA | NUMBER | Y |  |
| 3 | NR_QUANTIDADE | NUMBER | Y |  |
| 4 | CD_SENIORIDADE | NUMBER | N |  |
| 5 | CD_PRE_PROJETO | NUMBER | N |  |
| 6 | VL_CUSTO_RECURSO | NUMBER | Y |  |

---

## DBAPORTAL.PROCESSO
> Tabela de processos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROCESSO | NUMBER | N | Identificador do processo |
| 2 | NM_PROCESSO | VARCHAR2 | N | Nome do processo |
| 3 | DS_PROCESSO | CLOB | Y | Descricao do processo |
| 4 | NR_PROCESSO | VARCHAR2 | Y | Codigo ou numeracao do processo |
| 5 | CD_PROCESSO_PAI | NUMBER | Y | Identificador do processo pai |
| 6 | CD_RESP_EXEC_PROC | VARCHAR2 | N | Codigo do usuario responsavel pela execucao do processo |

---

## DBAPORTAL.PROCESSO_DOCUMENTO
> Relacionamento de processos e documentos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROCESSO_DOCUMENTO | NUMBER | N | Chave primaria da relacao |
| 2 | CD_PROCESSO | NUMBER | N | Codigo do processo relacionado |
| 3 | CD_DOCUMENTO | NUMBER | N | Codigo do documento relacionado |

---

## DBAPORTAL.PROCESSO_DOC_ANEXO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROCESSO_DOC_ANEXO | NUMBER | N |  |
| 2 | DS_TITULO | VARCHAR2 | N |  |
| 3 | DS_VERSAO | VARCHAR2 | Y |  |
| 4 | NM_ARQUIVO | VARCHAR2 | N |  |
| 5 | DT_VALIDADE | DATE | Y |  |
| 6 | SN_ATIVO | VARCHAR2 | Y |  |
| 7 | CD_PROCESSO | NUMBER | N |  |
| 8 | CD_USUARIO_PORTAL | VARCHAR2 | N |  |

---

## DBAPORTAL.PROGRAMA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROGRAMA | NUMBER | N |  |
| 2 | DS_PROGRAMA | VARCHAR2 | Y |  |
| 3 | DS_DESCRICAO_PROGRAMA | VARCHAR2 | Y |  |

---

## DBAPORTAL.PROGRAMA_INDICADOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROGRAMA_INDICADOR | NUMBER | N |  |
| 2 | NR_ORDEM | NUMBER | Y |  |
| 3 | CD_PROGRAMA | NUMBER | N |  |
| 4 | CD_IVM | VARCHAR2 | N |  |

---

## DBAPORTAL.PUBLIC_USU_INIC_ACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INICIATIVA_ACAO | NUMBER | N |  |
| 2 | CD_PAPEL | NUMBER | N |  |

---

## DBAPORTAL.QUESTIONARIO_ANALISE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_QUESTIONARIO_ANALISE | NUMBER | N |  |
| 2 | NM_QUESTIONARIO | VARCHAR2 | Y |  |
| 3 | DS_QUESTIONARIO | VARCHAR2 | Y |  |
| 4 | SN_ATIVO | VARCHAR2 | Y |  |

---

## DBAPORTAL.QUEST_SL_TEMP_EXPLAIN1

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | STATEMENT_ID | VARCHAR2 | Y |  |
| 2 | PLAN_ID | NUMBER | Y |  |
| 3 | TIMESTAMP | DATE | Y |  |
| 4 | REMARKS | VARCHAR2 | Y |  |
| 5 | OPERATION | VARCHAR2 | Y |  |
| 6 | OPTIONS | VARCHAR2 | Y |  |
| 7 | OBJECT_NODE | VARCHAR2 | Y |  |
| 8 | OBJECT_OWNER | VARCHAR2 | Y |  |
| 9 | OBJECT_NAME | VARCHAR2 | Y |  |
| 10 | OBJECT_ALIAS | VARCHAR2 | Y |  |
| 11 | OBJECT_INSTANCE | NUMBER | Y |  |
| 12 | OBJECT_TYPE | VARCHAR2 | Y |  |
| 13 | OPTIMIZER | VARCHAR2 | Y |  |
| 14 | SEARCH_COLUMNS | NUMBER | Y |  |
| 15 | ID | NUMBER | Y |  |
| 16 | PARENT_ID | NUMBER | Y |  |
| 17 | DEPTH | NUMBER | Y |  |
| 18 | POSITION | NUMBER | Y |  |
| 19 | COST | NUMBER | Y |  |
| 20 | CARDINALITY | NUMBER | Y |  |
| 21 | BYTES | NUMBER | Y |  |
| 22 | OTHER_TAG | VARCHAR2 | Y |  |
| 23 | PARTITION_START | VARCHAR2 | Y |  |
| 24 | PARTITION_STOP | VARCHAR2 | Y |  |
| 25 | PARTITION_ID | NUMBER | Y |  |
| 26 | OTHER | LONG | Y |  |
| 27 | DISTRIBUTION | VARCHAR2 | Y |  |
| 28 | CPU_COST | NUMBER | Y |  |
| 29 | IO_COST | NUMBER | Y |  |
| 30 | TEMP_SPACE | NUMBER | Y |  |
| 31 | ACCESS_PREDICATES | VARCHAR2 | Y |  |
| 32 | FILTER_PREDICATES | VARCHAR2 | Y |  |

---

## DBAPORTAL.REFERENCIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REFERENCIA | NUMBER | N |  |
| 2 | DS_REFERENCIA | VARCHAR2 | Y |  |
| 3 | CD_REFERENCIA_MV | NUMBER | Y |  |
| 4 | DS_COR | VARCHAR2 | Y |  |

---

## DBAPORTAL.REFERENCIA_MV

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REFERENCIA_MV | NUMBER | N |  |
| 2 | DS_REFERENCIA_MV | VARCHAR2 | N |  |

---

## DBAPORTAL.REGISTRO_OCORRENCIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REGISTRO_OCORRENCIA | NUMBER | N |  |
| 2 | DT_REGISTRO | DATE | Y |  |
| 3 | DH_OCORRIDO | DATE | N |  |
| 4 | DS_RESUMO | VARCHAR2 | Y |  |
| 5 | DS_REGISTRO | VARCHAR2 | N |  |
| 6 | CD_ORGANIZACAO_REGISTRANTE | NUMBER | Y |  |
| 7 | CD_CENTRO_CUSTO_REGISTRANTE | NUMBER | Y |  |
| 8 | ID_USUARIO_REGISTRANTE | NUMBER | Y |  |
| 9 | CD_ORGANIZACAO_RELATOR | NUMBER | N |  |
| 10 | CD_CENTRO_CUSTO_RELATOR | NUMBER | Y |  |
| 11 | ID_USUARIO_RELATOR | NUMBER | Y |  |
| 12 | CD_CODIGO | NUMBER | Y |  |
| 13 | CD_OCORRENCIA | NUMBER | Y |  |
| 14 | CD_METODO_DETECCAO_OCORRENCIA | NUMBER | Y |  |
| 15 | CD_ACAO_IMEDIATA_OCORRENCIA | NUMBER | Y |  |
| 16 | TP_GRAU_NEA | VARCHAR2 | Y |  |
| 17 | TP_CRITICIDADE | VARCHAR2 | Y |  |
| 18 | SN_PROCEDE | VARCHAR2 | Y |  |
| 19 | SN_NAO_CONFORMIDADE | VARCHAR2 | Y |  |
| 20 | SN_CAUSA_RAIZ_IDENTIFICADA | VARCHAR2 | Y |  |
| 21 | SN_ACAO_CORRETIVA_REALIZADA | VARCHAR2 | Y |  |
| 22 | SN_PA_LANCADO | VARCHAR2 | Y |  |
| 23 | SN_EFICACIA_ACAO_COMPROVADA | VARCHAR2 | Y |  |
| 24 | SN_PRAZO_CUMPRIDO | VARCHAR2 | Y |  |
| 25 | HR_OCORRIDO | VARCHAR2 | Y |  |
| 26 | CD_WORKFLOW_OCORRENCIA | NUMBER | Y |  |
| 27 | CD_CATEGORIA_OCORRENCIA | NUMBER | Y |  |
| 28 | TP_FLUXO | NUMBER | N | 1- PADR?O  2- CUSTOMIZADO, 3- PERSONALIZADO |

---

## DBAPORTAL.REGRA_GP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REGRA_GP | NUMBER | N |  |
| 2 | NM_REGRA | VARCHAR2 | N |  |
| 3 | TP_PERFIL | VARCHAR2 | N |  |
| 4 | SN_EMAIL_NOTA | VARCHAR2 | N |  |
| 5 | SN_EMAIL_ATIVIDADE | VARCHAR2 | N |  |
| 6 | ID_USUARIO_PORTAL | NUMBER | Y |  |
| 7 | CD_PAPEL | NUMBER | Y |  |
| 8 | CD_ORGANIZACAO | NUMBER | Y |  |
| 9 | CD_CENTRO_CUSTO | NUMBER | Y |  |
| 10 | SN_HIERARQUIA_CC | VARCHAR2 | N |  |
| 11 | CD_OBJETIVO | NUMBER | Y |  |
| 12 | CD_IVM | VARCHAR2 | Y |  |
| 13 | CD_RESPONSAVEL | NUMBER | Y |  |
| 14 | CD_PATROCINADOR | NUMBER | Y |  |
| 15 | SN_GERENCIAMENTO_OCORRENCIA | CHAR | Y |  |

---

## DBAPORTAL.REG_EVENTO_SENT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REG_EVENTO_SENT | NUMBER | N |  |
| 2 | CD_EVENTO_SENTINELA | NUMBER | Y |  |
| 3 | DT_REG_EVENTO_SENT | DATE | N |  |
| 4 | DS_REG_EVENTO_SENT | VARCHAR2 | Y |  |
| 5 | DS_RELATORIO_XML | CLOB | Y |  |
| 6 | VL_INDICADOR | VARCHAR2 | N |  |
| 7 | DS_JUSTIF_NAO_PLANO_ACAO | VARCHAR2 | Y |  |
| 8 | DS_MOTIVO_EVENTO | VARCHAR2 | Y |  |

---

## DBAPORTAL.REG_OCORRENCIA_CAUSA_RAIZ

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REG_OCORRENCIA_CAUSA_RAIZ | NUMBER | N |  |
| 2 | CD_CAUSA_RAIZ | NUMBER | N |  |
| 3 | CD_REGISTRO_OCORRENCIA | NUMBER | Y |  |
| 4 | CD_FLUXO_QUADRO_OCORRENCIA | NUMBER | Y |  |

---

## DBAPORTAL.REG_OCORRENCIA_RELACIONADO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REG_OCORRENCIA_RELACIONADO | NUMBER | N |  |
| 2 | CD_REGISTRO_PRINCIPAL | NUMBER | N |  |
| 3 | CD_REGISTRO_RELACIONADO | NUMBER | N |  |
| 4 | DT_RELACIONADO | DATE | N |  |
| 5 | CD_USUARIO_PORTAL_LOGADO | NUMBER | N |  |

---

## DBAPORTAL.REG_PESSOA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REG_PESSOA | NUMBER | N |  |
| 2 | CD_REG_EVENTO_SENT | NUMBER | N |  |
| 3 | SN_LIDO | VARCHAR2 | N |  |
| 4 | CD_PESSOA_EVENTO | NUMBER | N |  |
| 5 | TP_LOCAL | VARCHAR2 | N |  |

---

## DBAPORTAL.REPOSITORIO_DOCTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REPOSITORIO_DOCTO | NUMBER | N |  |
| 2 | SN_PUBLICACAO | VARCHAR2 | N |  |
| 3 | NM_REPOSITORIO | VARCHAR2 | N |  |
| 4 | DS_REPOSITORIO | CLOB | Y |  |
| 5 | SN_ATIVO | VARCHAR2 | N |  |

---

## DBAPORTAL.REPOSITORIO_DOCUMENTO_PAPEL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REPOSITORIO_DOCTO_PAPEL | NUMBER | N |  |
| 2 | CD_REPOSITORIO_DOCTO | NUMBER | N |  |
| 3 | SN_ACESSO_EMAIL | VARCHAR2 | N |  |
| 4 | SN_ACESSO_LEITURA | VARCHAR2 | N |  |
| 5 | SN_ACESSO_TOTAL | VARCHAR2 | N |  |
| 6 | CD_PAPEL | NUMBER | Y |  |
| 7 | CD_USUARIO_PORTAL | VARCHAR2 | Y |  |
| 8 | SN_PUBLICACAO | VARCHAR2 | N |  |
| 9 | SN_LIBERACAO | VARCHAR2 | N |  |

---

## DBAPORTAL.RESPOSTA_ESCOLHIDA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_RESPOSTA_ESCOLHIDA | NUMBER | N |  |
| 2 | CD_REGISTRO_OCORRENCIA | NUMBER | Y |  |
| 3 | CD_RESPOSTA_PERGUNTA | NUMBER | Y |  |
| 4 | CD_PERGUNTA | NUMBER | Y |  |
| 5 | DS_RESULTADO | VARCHAR2 | Y |  |
| 6 | VL_RESULTADO | VARCHAR2 | Y |  |
| 7 | CD_INICIATIVA_ACAO | NUMBER | Y |  |
| 8 | CD_IVM_FONTE_INDICADOR | NUMBER | Y |  |
| 9 | CD_DOCUMENTO | NUMBER | Y |  |
| 10 | DS_TAG | VARCHAR2 | Y |  |
| 11 | CD_PRE_PROJETO | NUMBER | Y |  |

---

## DBAPORTAL.RESPOSTA_ORGANIZACAO
> Tabela que armazena as respostas de uma organizacao

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_RESPOSTA_ORGANIZACAO | NUMBER | N |  |
| 2 | CD_ORGANIZACAO | NUMBER | N | Identificador da organizacao |
| 3 | CD_RESPOSTA_PERGUN_ORGAN | NUMBER | N | Identificador da resposta assinalada |

---

## DBAPORTAL.RESPOSTA_ORGANIZACAO_TEMP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_RESPOSTA_PERGUN_ORGAN | NUMBER | N |  |
| 2 | CD_ORGANIZACAO | NUMBER | N |  |

---

## DBAPORTAL.RESPOSTA_PARAM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_RESP_PARAM | NUMBER | N |  |
| 2 | CD_PARAM_FUNCAO | NUMBER | Y |  |
| 3 | CD_EVENTO_SENTINELA | NUMBER | Y |  |
| 4 | DS_RESP_PARAM | VARCHAR2 | Y |  |
| 5 | TP_ARGUMENTO | VARCHAR2 | Y |  |

---

## DBAPORTAL.RESPOSTA_PERGUNTA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_RESPOSTA_PERGUNTA | NUMBER | N |  |
| 2 | DS_RESPOSTA | VARCHAR2 | Y |  |
| 3 | VL_RESPOSTA | VARCHAR2 | Y |  |
| 4 | NR_ORDENACAO | NUMBER | Y |  |
| 5 | CD_PERGUNTA | NUMBER | N |  |

---

## DBAPORTAL.RESPOSTA_PERGUNTA_ORGANIZACAO
> Tabela de opcoes de respostas para as perguntas do cadastro de organizacoes

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_RESPOSTA_PERGUN_ORGAN | NUMBER | N | Identificador da resposta |
| 2 | DS_RESPOSTA | VARCHAR2 | N | Descricao da resposta |
| 3 | VL_RESPOSTA | NUMBER | N | Valor equivalente para a resposta |
| 4 | CD_PERGUNTA | NUMBER | N | Identificador da pergunta relacionada |

---

## DBAPORTAL.RESP_PERGUNTA_ORGANIZACAO_TEMP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_RESPOSTA_PERGUN_ORGAN | NUMBER | N |  |
| 2 | DS_RESPOSTA | VARCHAR2 | N |  |
| 3 | VL_RESPOSTA | NUMBER | N |  |
| 4 | CD_PERGUNTA | NUMBER | N |  |

---

## DBAPORTAL.RESULTADO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | IVM | NUMBER | Y |  |
| 2 | DS_CALCULA | VARCHAR2 | Y |  |

---

## DBAPORTAL.RES_FAT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | TP_FATURAMENTO | CHAR | Y |  |
| 2 | DT_INICIO | DATE | Y |  |
| 3 | DT_FINAL | DATE | Y |  |
| 4 | CD_REG_FAT | NUMBER | Y |  |
| 5 | CD_ATENDIMENTO | NUMBER | Y |  |
| 6 | DT_ATENDIMENTO | DATE | Y |  |
| 7 | DT_ALTA | DATE | Y |  |
| 8 | CD_PACIENTE | NUMBER | Y |  |
| 9 | NM_PACIENTE | VARCHAR2 | Y |  |
| 10 | VALOR | NUMBER | Y |  |
| 11 | REG_CONTROLE | NUMBER | Y |  |
| 12 | CD_CONVENIO | NUMBER | Y |  |
| 13 | NM_CONVENIO | VARCHAR2 | Y |  |
| 14 | CD_REMESSA | NUMBER | Y |  |

---

## DBAPORTAL.REUNIAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REUNIAO | NUMBER | N |  |
| 2 | DS_TITULO_REUNIAO | VARCHAR2 | Y |  |
| 3 | DT_INICIO_COMPETENCIA | DATE | Y |  |
| 4 | DT_FIM_COMPETENCIA | DATE | Y |  |
| 5 | DT_ABERTURA | DATE | Y |  |
| 6 | DT_FECHAMENTO | DATE | Y |  |
| 7 | DT_CRIACAO | DATE | Y |  |
| 8 | DT_REUNIAO | DATE | Y |  |
| 9 | TP_SITUACAO | VARCHAR2 | Y |  |
| 10 | DS_REUNIAO_PARTICIPANTES | CLOB | Y |  |
| 11 | CD_REGISTRANTE | NUMBER | N |  |
| 12 | CD_RESPONSAVEL | NUMBER | N |  |
| 13 | DS_ATA | CLOB | Y |  |
| 14 | CD_JOB_DT_FECHAMENTO | NUMBER | Y |  |
| 15 | CD_JOB_DT_REUNIAO_INICIO | NUMBER | Y |  |
| 16 | CD_JOB_DT_REUNIAO_FIM | NUMBER | Y |  |

---

## DBAPORTAL.RISCO
> Tabela de riscos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_RISCO | NUMBER | N | Identificador do risco |
| 2 | NM_RISCO | VARCHAR2 | N | Nome do risco |
| 3 | DS_RISCO | CLOB | Y | Descricao do risco |
| 4 | NR_RISCO | VARCHAR2 | N | Codigo ou numeracao do risco |
| 5 | CD_CATEGORIA_RISCO | NUMBER | N | Identificador da categoria de risco associada |
| 6 | CD_MATRIZ_RISCO | NUMBER | N | Identificador do mapa de risco associado |
| 7 | CD_NIVEL_IMPACTO | NUMBER | Y | Identificador do nive de impacto associado |
| 8 | DS_RISCO_DANOS | CLOB | Y | Descricao das consequencias e danos associados ao risco |
| 9 | CD_RESPONSAVEL_RISCO | VARCHAR2 | Y | Identificador do responsavel pelo risco |

---

## DBAPORTAL.RISCO_DOCUMENTO
> Tabela de associac?o de documentos a riscos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_RISCO_DOCUMENTO | NUMBER | N | Chave primaria da relac?o risco documento |
| 2 | CD_RISCO | NUMBER | N | Risco relacionado |
| 3 | CD_DOCUMENTO | NUMBER | N | Documento relacionado |

---

## DBAPORTAL.RISCO_DOCUMENTO_ANEXO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_RISCO_DOCUMENTO_ANEXO | NUMBER | N |  |
| 2 | DS_TITULO | VARCHAR2 | N |  |
| 3 | DS_VERSAO | VARCHAR2 | Y |  |
| 4 | NM_ARQUIVO | VARCHAR2 | N |  |
| 5 | DT_VALIDADE | DATE | Y |  |
| 6 | SN_ATIVO | VARCHAR2 | Y |  |
| 7 | CD_USUARIO_PORTAL | VARCHAR2 | N |  |
| 8 | CD_RISCO | NUMBER | N |  |

---

## DBAPORTAL.SCR_TIPO_PROTOCOLO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIPO_PROTOCOLO | NUMBER | N |  |
| 2 | DS_TIPO_PROTOCOLO | VARCHAR2 | Y |  |

---

## DBAPORTAL.SEGURANCA_AUTOMATION

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SEGURANCA_AUTOMATION | NUMBER | N |  |
| 2 | CD_PAPEL | NUMBER | Y |  |
| 3 | ID_USUARIO_PORTAL | NUMBER | Y |  |
| 4 | CD_AUTOMATION | NUMBER | N |  |

---

## DBAPORTAL.SEGURANCA_CARGA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SEGURANCA_CARGA | NUMBER | N |  |
| 2 | CD_PAPEL | NUMBER | Y |  |
| 3 | ID_USUARIO_PORTAL | NUMBER | Y |  |
| 4 | CD_CARGA | NUMBER | N |  |

---

## DBAPORTAL.SEGURANCA_ESTRATEGIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SEGURANCA_ESTRATEGIA | NUMBER | N |  |
| 2 | CD_ESTRATEGIA | NUMBER | N |  |
| 3 | CD_PAPEL | NUMBER | Y |  |
| 4 | ID_USUARIO_PORTAL | NUMBER | Y |  |

---

## DBAPORTAL.SEGURANCA_IVM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SEGURANCA_IVM | NUMBER | N |  |
| 2 | CD_IVM | VARCHAR2 | N |  |
| 3 | CD_PAPEL | NUMBER | Y |  |
| 4 | ID_USUARIO_PORTAL | NUMBER | Y |  |
| 5 | SN_SOLICITANTE | VARCHAR2 | Y |  |

---

## DBAPORTAL.SEGURANCA_IVM_CORP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SEGURANCA_IVM_CORP | NUMBER | N |  |
| 2 | CD_PAPEL | NUMBER | Y |  |
| 3 | ID_USUARIO_PORTAL | NUMBER | Y |  |

---

## DBAPORTAL.SENIORIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SENIORIDADE | NUMBER | N |  |
| 2 | DS_SENIORIDADE | VARCHAR2 | Y |  |
| 3 | CD_CARGO | NUMBER | N |  |

---

## DBAPORTAL.SE_CONFIGURACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SE_CONFIGURACAO | NUMBER | N |  |
| 2 | NM_ESQUEMA | VARCHAR2 | Y |  |
| 3 | NM_SERV_MICROSTRATEGY | VARCHAR2 | Y |  |
| 4 | NM_SERV_PORTAL | VARCHAR2 | Y |  |
| 5 | NM_INTELLIGENCE_SERVER | VARCHAR2 | Y |  |
| 6 | NM_USR_MICROSTRATEGY | VARCHAR2 | Y |  |
| 7 | NM_PSW_MICROSTRATEGY | VARCHAR2 | Y |  |
| 8 | SN_EXIBE_DS_CODIGO_PROJ | CHAR | Y |  |
| 9 | NM_ID_PASTA_RELATORIOS | VARCHAR2 | Y |  |
| 10 | NM_ID_PROJETO | VARCHAR2 | Y |  |
| 11 | SN_HABILITA_MICROTRTEGY_PAINEL | CHAR | Y |  |
| 12 | SN_DEBUG_LOG | CHAR | Y |  |
| 13 | NM_CAMINHO_UPLOAD_DOC | VARCHAR2 | Y |  |
| 14 | NM_CAMINHO_SWF | VARCHAR2 | Y |  |
| 15 | SN_USAR_MV2000 | CHAR | Y |  |
| 16 | NM_EMAIL_HOST | VARCHAR2 | Y |  |
| 17 | NM_EMAIL_USUARIO | VARCHAR2 | Y |  |
| 18 | NM_EMAIL_SENHA | VARCHAR2 | Y |  |
| 19 | DS_SQUEMA_PORTAL | VARCHAR2 | Y |  |
| 20 | DS_SQUEMA_SE | VARCHAR2 | Y |  |
| 21 | DS_SQUEMA_DW | VARCHAR2 | Y |  |
| 22 | DS_SQUEMA_SGU | VARCHAR2 | Y |  |
| 23 | SN_SEGURANCA_SENHA | VARCHAR2 | Y |  |
| 24 | DS_IDIOMA | VARCHAR2 | Y |  |
| 25 | NM_EMAIL_PORTA | VARCHAR2 | Y |  |
| 26 | SN_EMAIL_AUTENTICACAO | CHAR | Y |  |
| 27 | SN_EMAIL_SSL | CHAR | Y |  |
| 28 | SN_EMAIL_LOGIN_COMPLETO | CHAR | Y |  |
| 29 | DS_URL_LOGOFF | VARCHAR2 | Y |  |
| 30 | SN_LDAP | VARCHAR2 | Y |  |
| 31 | SN_LDAP_USUARIO | VARCHAR2 | Y |  |
| 32 | VL_FAIXA_INICIAL_FAVORAVEL | NUMBER | Y |  |
| 33 | VL_FAIXA_INICIAL_DESFAVORAVEL | NUMBER | Y |  |
| 34 | VL_FAIXA_FINAL_DESFAVORAVEL | NUMBER | Y |  |
| 35 | VL_FAIXA_FINAL_FAVORAVEL | NUMBER | Y |  |
| 36 | VL_FAIXA_INICIAL_ESTAVEL | NUMBER | Y |  |
| 37 | VL_FAIXA_FINAL_ESTAVEL | NUMBER | Y |  |
| 38 | VL_FAIXA_INICIAL_FAVORAVEL_N2 | NUMBER | Y |  |
| 39 | VL_FAIXA_INICIAL_ESTAVEL_N2 | NUMBER | Y |  |
| 40 | VL_FAIXA_INICIAL_DESFAVOR_N2 | NUMBER | Y |  |
| 41 | VL_FAIXA_FINAL_DESFAVOR_N2 | NUMBER | Y |  |
| 42 | VL_FAIXA_FINAL_FAVORAVEL_N2 | NUMBER | Y |  |
| 43 | VL_FAIXA_FINAL_ESTAVEL_N2 | NUMBER | Y |  |
| 44 | NM_SERV_PAINEL_INDICADOR | VARCHAR2 | Y |  |
| 45 | TP_FORCA_SENHA | VARCHAR2 | Y |  |
| 46 | SN_PERC_IND_CALC_META_PADRAO | CHAR | Y |  |
| 47 | SN_DOC_BAIXAR | VARCHAR2 | Y |  |
| 48 | SN_DOC_IMPRIMIR | VARCHAR2 | Y |  |
| 49 | SN_ARQUIVAMENTO_OCORRENCIAS | VARCHAR2 | Y |  |
| 50 | SN_BLOQ_USU_IND_ORG | VARCHAR2 | Y |  |
| 51 | SN_ENVIAR_EMAIL_DIARIAMENTE | VARCHAR2 | Y |  |
| 52 | SN_APROVACAO_OCORRENCIAS | VARCHAR2 | Y |  |
| 53 | SN_EXIBE_HR_DT_DOC_TAG | VARCHAR2 | Y |  |
| 54 | SN_EXIBE_PDF_WORKFLOW | VARCHAR2 | Y |  |
| 55 | DS_CHAVE_LICENCA | VARCHAR2 | Y |  |
| 56 | MASCARA_PROCESSO | VARCHAR2 | Y |  |
| 57 | SN_COD_AUTOM_RISCO | VARCHAR2 | Y |  |
| 58 | MASCARA_RISCO | VARCHAR2 | Y |  |
| 59 | SN_COD_AUTOM_PRATICA | VARCHAR2 | Y |  |
| 60 | MASCARA_PRATICA | VARCHAR2 | Y |  |
| 61 | SN_COD_AUTOM_FATOR | VARCHAR2 | Y |  |
| 62 | MASCARA_FATOR | VARCHAR2 | Y |  |
| 63 | SN_COD_AUTOM_PROCESSO | VARCHAR2 | Y |  |
| 64 | SN_EMAIL_DOC_ELABORACAO | CHAR | Y |  |
| 65 | SN_EMAIL_DOC_VERIFICACAO | CHAR | Y |  |
| 66 | SN_EMAIL_DOC_APROVACAO | CHAR | Y |  |
| 67 | SN_EMAIL_DOC_PUBLICACAO | CHAR | Y |  |
| 68 | SN_APROVACAO_PLANO_PENDENTE | CHAR | Y |  |
| 69 | SN_EXIBIR_DOC_CARGO_TAGS | VARCHAR2 | Y |  |

---

## DBAPORTAL.SISTEMA_INTEGRACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SISTEMA_INTEGRACAO | NUMBER | N |  |
| 2 | DS_SISTEMA_INTEGRACAO | VARCHAR2 | Y |  |
| 3 | DS_IDENTIFICADOR_INTEGRACAO | VARCHAR2 | Y |  |

---

## DBAPORTAL.SITE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SITE | NUMBER | N |  |
| 2 | DS_SITE | VARCHAR2 | Y |  |
| 3 | DS_LICENCA_KEY | VARCHAR2 | Y |  |
| 4 | DT_INICIO_USO | DATE | Y |  |
| 5 | DT_FIM_USO | DATE | Y |  |
| 6 | SN_MVPORTAL | VARCHAR2 | Y |  |
| 7 | SN_MVBSC | VARCHAR2 | Y |  |

---

## DBAPORTAL.SQLN_EXPLAIN_PLAN

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | STATEMENT_ID | VARCHAR2 | Y |  |
| 2 | TIMESTAMP | DATE | Y |  |
| 3 | REMARKS | VARCHAR2 | Y |  |
| 4 | OPERATION | VARCHAR2 | Y |  |
| 5 | OPTIONS | VARCHAR2 | Y |  |
| 6 | OBJECT_NODE | VARCHAR2 | Y |  |
| 7 | OBJECT_OWNER | VARCHAR2 | Y |  |
| 8 | OBJECT_NAME | VARCHAR2 | Y |  |
| 9 | OBJECT_INSTANCE | NUMBER | Y |  |
| 10 | OBJECT_TYPE | VARCHAR2 | Y |  |
| 11 | OPTIMIZER | VARCHAR2 | Y |  |
| 12 | SEARCH_COLUMNS | NUMBER | Y |  |
| 13 | ID | NUMBER | Y |  |
| 14 | PARENT_ID | NUMBER | Y |  |
| 15 | POSITION | NUMBER | Y |  |
| 16 | COST | NUMBER | Y |  |
| 17 | CARDINALITY | NUMBER | Y |  |
| 18 | BYTES | NUMBER | Y |  |
| 19 | OTHER_TAG | VARCHAR2 | Y |  |
| 20 | PARTITION_START | VARCHAR2 | Y |  |
| 21 | PARTITION_STOP | VARCHAR2 | Y |  |
| 22 | PARTITION_ID | NUMBER | Y |  |
| 23 | OTHER | LONG | Y |  |
| 24 | DISTRIBUTION | VARCHAR2 | Y |  |

---

## DBAPORTAL.SQLN_PROF_ANB
> Annonymous block source

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | RUNID | NUMBER | N | PLSQL_PROFILER_RUNS |
| 2 | UNIT_NUMBER | NUMBER | N | PLSQL_PROFILER_UNITS |
| 3 | LINE# | NUMBER | N |  |
| 4 | TEXT | VARCHAR2 | Y |  |

---

## DBAPORTAL.SQLN_PROF_PROFILES

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | PROJ_ID | NUMBER | N |  |
| 2 | PROJ_NAME | VARCHAR2 | Y |  |
| 3 | PROJ_COMMENT | VARCHAR2 | Y |  |

---

## DBAPORTAL.SQLN_PROF_RUNS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | PROJ_ID | NUMBER | N |  |
| 2 | RUNID | NUMBER | N |  |

---

## DBAPORTAL.SQLN_PROF_SESS
> Session Statistics Info For a Run

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | RUNID | NUMBER | N | PLSQL_PROFILER_RUNS |
| 2 | STAT_ID | NUMBER | N | STATISTIC# from V$STATNAME |
| 3 | VALUE | NUMBER | Y | VALUE from V$SESSTAT for a session SID and STATISTIC# |

---

## DBAPORTAL.SQLN_PROF_UNITS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | PROJ_ID | NUMBER | N |  |
| 2 | UNIT_NAME | VARCHAR2 | N |  |

---

## DBAPORTAL.SQLN_PROF_UNIT_HASH
> Hash of unit source code (1:1 with PLSQL_PROFILER_UNITS)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | RUNID | NUMBER | N |  |
| 2 | UNIT_NUMBER | NUMBER | N |  |
| 3 | HASH | VARCHAR2 | Y |  |

---

## DBAPORTAL.ST_AGE_CIR

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
| 12 | SN_IMPRESSO | VARCHAR2 | Y |  |
| 13 | COMMIT_TIMESTAMP | DATE | Y |  |
| 14 | OPERATION | CHAR | Y |  |

---

## DBAPORTAL.ST_ATENDIME

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
| 61 | SN_OBITO | VARCHAR2 | Y |  |
| 62 | DT_AVISO_MEDICO | DATE | Y |  |
| 63 | HR_AVISO_MEDICO | DATE | Y |  |
| 64 | DS_AVISO_TP_CONTATO | VARCHAR2 | Y |  |
| 65 | DS_AVISO_OBS | VARCHAR2 | Y |  |
| 66 | NM_AVISO_USUARIO | VARCHAR2 | Y |  |
| 67 | TP_PROGRAMA_ALTA_UNIDADE | VARCHAR2 | Y |  |
| 68 | DS_PROGRAMA_ALTA | VARCHAR2 | Y |  |
| 69 | DT_PROGRAMA_ALTA | DATE | Y |  |
| 70 | NM_USUARIO_PROG_ALTA | VARCHAR2 | Y |  |
| 71 | DT_LIBERACAO | DATE | Y |  |
| 72 | SN_IMPORTA_AUTO | VARCHAR2 | N |  |
| 73 | CD_SUB_PLANO | VARCHAR2 | Y |  |
| 74 | SN_BUSCA_ATIVA | VARCHAR2 | N |  |
| 75 | TP_BUSCA_ATIVA | VARCHAR2 | Y |  |
| 76 | SN_EM_ATENDIMENTO | VARCHAR2 | N |  |
| 77 | CD_TIP_SITUACAO | NUMBER | Y |  |
| 78 | TP_PRIORIDADE | VARCHAR2 | N |  |
| 79 | CD_SSM_SIA | VARCHAR2 | Y |  |
| 80 | CD_GRU_ATE | NUMBER | Y |  |
| 81 | SN_CONSULTA_SIASUS | VARCHAR2 | Y |  |
| 82 | NM_USUARIO_RETORNO | VARCHAR2 | Y |  |
| 83 | DT_USUARIO_RETORNO | DATE | Y |  |
| 84 | SN_RECEBE_VISITA | VARCHAR2 | Y |  |
| 85 | CD_TIP_ACOM_COBERTURA | NUMBER | Y |  |
| 86 | NR_CHAMADA_PAINEL | VARCHAR2 | Y |  |
| 87 | NR_LAUDO | NUMBER | Y |  |
| 88 | NR_LAUDO_ALTO_CUSTO | NUMBER | Y |  |
| 89 | CD_USUARIO_DIAG | VARCHAR2 | Y |  |
| 90 | CD_USUARIO_UPD_DIAG | VARCHAR2 | Y |  |
| 91 | DT_ULTIMA_UPD_DIAG | DATE | Y |  |
| 92 | NR_PEDIDO_LAUDO | NUMBER | Y |  |
| 93 | CD_ESCALA_DIA | NUMBER | Y |  |
| 94 | HR_AGENDA | DATE | Y |  |
| 95 | CD_SETOR_OBITO | NUMBER | Y |  |
| 96 | NR_DECLARACAO_OBITO | VARCHAR2 | Y |  |
| 97 | DT_SOLIC_MEDICA | DATE | Y |  |
| 98 | NR_SEQ_PREIMPRE | NUMBER | Y |  |
| 99 | SN_ATENDIMENTO_APAC | VARCHAR2 | Y |  |
| 100 | SN_OBITO_INFEC | VARCHAR2 | Y |  |
| 101 | DT_CHEGADA_PACIENTE | DATE | Y |  |
| 102 | NR_CARTEIRA | VARCHAR2 | Y |  |
| 103 | DT_VALIDADE | DATE | Y |  |
| 104 | NM_EMPRESA | VARCHAR2 | Y |  |
| 105 | NR_CARTEIRA_ACOPLAMENTO | VARCHAR2 | Y |  |
| 106 | DT_VALIDADE_ACOPLAMENTO | DATE | Y |  |
| 107 | NM_EMPRESA_ACOPLAMENTO | VARCHAR2 | Y |  |
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
| 136 | NR_GUIA_ENVIO_PRINCIPAL | VARCHAR2 | Y |  |
| 137 | SN_PAGA_ACOMPANHANTE | VARCHAR2 | Y |  |
| 138 | CD_SETOR_LOCAL_FSCC | NUMBER | Y |  |
| 139 | SN_PACOTE | VARCHAR2 | Y |  |
| 140 | SN_PACOTE_DAY_CLINIC | VARCHAR2 | Y |  |
| 141 | CD_PROCEDIMENTO | VARCHAR2 | Y |  |
| 142 | CD_CBO_PRESTADOR | VARCHAR2 | Y |  |
| 143 | CD_CARATER_ATENDIMENTO | NUMBER | Y |  |
| 144 | CD_ATENDIMENTO_INTEGRA | VARCHAR2 | Y |  |
| 145 | CD_PROCEDIMENTO_ALTA | VARCHAR2 | Y |  |
| 146 | TP_ENCAMINHAMENTO_OBITO | VARCHAR2 | Y |  |
| 147 | CD_PRESTADOR_EM_ATENDIMENTO | VARCHAR2 | Y |  |
| 148 | SN_RELACAO_TRABALHO | VARCHAR2 | N |  |
| 149 | SN_SUSPEITA_EPIDEMIA | VARCHAR2 | N |  |
| 150 | NR_TAG_ATENDIMENTO | VARCHAR2 | Y |  |
| 151 | SN_REAVALIACAO | VARCHAR2 | Y |  |
| 152 | CD_RES_LEI_REGULACAO | NUMBER | Y |  |
| 153 | COMMIT_TIMESTAMP | DATE | Y |  |
| 154 | OPERATION$ | CHAR | Y |  |

---

## DBAPORTAL.ST_AVISO_CIRURGIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AVISO_CIRURGIA | NUMBER | N |  |
| 2 | DT_AVISO_CIRURGIA | DATE | N |  |
| 3 | TP_SANGUINEO | VARCHAR2 | Y |  |
| 4 | TP_NATUREZA | VARCHAR2 | N |  |
| 5 | TP_SITUACAO | VARCHAR2 | N |  |
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
| 43 | DT_PREV_INTER | DATE | Y |  |
| 44 | SN_ALTERADO | VARCHAR2 | N |  |
| 45 | CD_USUARIO_CANCEL | VARCHAR2 | Y |  |
| 46 | CD_USUARIO_CONFIRMA | VARCHAR2 | Y |  |
| 47 | DS_A_SEGUIR | VARCHAR2 | Y |  |
| 48 | DT_AGENDAMENTO | DATE | Y |  |
| 49 | DS_ORTESE_PROTESE | VARCHAR2 | Y |  |
| 50 | VL_PESO | NUMBER | Y |  |
| 51 | SN_CEC | VARCHAR2 | N |  |
| 52 | SN_ROBOTICA | VARCHAR2 | N |  |
| 53 | CD_ASA | VARCHAR2 | Y |  |
| 54 | DT_PREV_ALTA | DATE | Y |  |
| 55 | DT_PREV_ALTA_UTI | DATE | Y |  |
| 56 | TP_TECNICA_UTILIZADA | VARCHAR2 | Y |  |
| 57 | CD_UNID_INT_AGE | NUMBER | Y |  |
| 58 | DT_SAIDA_SAL_CIR | DATE | Y |  |
| 59 | SN_CONFIRMADO | VARCHAR2 | Y |  |
| 60 | SN_AMBULATORIAL | VARCHAR2 | Y |  |
| 61 | CD_PRESTADOR_PEDIATRA | NUMBER | Y |  |
| 62 | TP_CIRURGIAS | VARCHAR2 | Y |  |
| 63 | SN_REVISADO | VARCHAR2 | Y |  |
| 64 | NM_REVISADO | VARCHAR2 | Y |  |
| 65 | DT_REVISADO | DATE | Y |  |
| 66 | SN_LIBERA_AVISO | VARCHAR2 | N |  |
| 67 | CD_USUARIO_LIBERA | VARCHAR2 | Y |  |
| 68 | SN_EMAIL_ENVIADO | VARCHAR2 | Y |  |
| 69 | COMMIT_TIMESTAMP | DATE | Y |  |
| 70 | OPERATION | CHAR | Y |  |

---

## DBAPORTAL.ST_CIRURGIA_AVISO

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
| 15 | CD_CIRURGIA_AVISO | NUMBER | Y |  |
| 16 | SN_PRINCIPAL | VARCHAR2 | N |  |
| 17 | VL_PERCENTUAL_ACRESC | NUMBER | Y |  |
| 18 | CD_CBOS | VARCHAR2 | Y |  |
| 19 | TP_NATUREZA | VARCHAR2 | N |  |
| 20 | DS_LATERALIDADE | VARCHAR2 | Y |  |
| 21 | COMMIT_TIMESTAMP | DATE | Y |  |
| 22 | OPERATION | CHAR | Y |  |

---

## DBAPORTAL.ST_EVE_SIASUS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EVENTOS | NUMBER | N |  |
| 2 | DS_LOCAL_EXPORTACAO | VARCHAR2 | Y |  |
| 3 | QT_LANCADA | NUMBER | N |  |
| 4 | CD_SSM | VARCHAR2 | N |  |
| 5 | CD_ESPECIALID | NUMBER | Y |  |
| 6 | CD_GRU_ATE | NUMBER | Y |  |
| 7 | CD_TIP_ATE | NUMBER | Y |  |
| 8 | CD_FAT_SIA | NUMBER | N |  |
| 9 | CD_PACIENTE | NUMBER | Y |  |
| 10 | CD_PRESTADOR | NUMBER | Y |  |
| 11 | CD_PRESTADOR_PODE_TER | NUMBER | Y |  |
| 12 | CD_CONVENIO | NUMBER | N |  |
| 13 | CD_ORI_ATE | NUMBER | Y |  |
| 14 | DT_EVE_SIASUS | DATE | N |  |
| 15 | CD_IMP_FAT | NUMBER | Y |  |
| 16 | CD_IT_MARCACAO | NUMBER | Y |  |
| 17 | NM_USUARIO | VARCHAR2 | Y |  |
| 18 | CD_FAIXA_ETARIA | NUMBER | Y |  |
| 19 | NM_PACIENTE | VARCHAR2 | Y |  |
| 20 | VL_BASE_REPASSADO | NUMBER | Y |  |
| 21 | CD_ATENDIMENTO | NUMBER | Y |  |
| 22 | CD_APAC | NUMBER | Y |  |
| 23 | SN_APAC_PRINCIPAL | VARCHAR2 | Y |  |
| 24 | VL_BASE_REPASSADO_ANEST | NUMBER | Y |  |
| 25 | NR_CNPJ | NUMBER | Y |  |
| 26 | NR_NOTA | NUMBER | Y |  |
| 27 | CD_SERVICO | NUMBER | Y |  |
| 28 | CD_CIDADE | NUMBER | Y |  |
| 29 | CD_ITPED_RX | NUMBER | Y |  |
| 30 | CD_ITPED_LAB | NUMBER | Y |  |
| 31 | CD_SISCO_CITO | NUMBER | Y |  |
| 32 | CD_SISCO_HISTO | NUMBER | Y |  |
| 33 | CD_SMS | NUMBER | Y |  |
| 34 | CD_SETOR | NUMBER | Y |  |
| 35 | CD_SETOR_PRODUZIU | NUMBER | Y |  |
| 36 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 37 | CD_CIRURGIA_AVISO | NUMBER | Y |  |
| 38 | CD_PRESTADOR_EXECUTANTE | NUMBER | Y |  |
| 39 | CD_DECENDIO | NUMBER | Y |  |
| 40 | SN_SOBRA | VARCHAR2 | Y |  |
| 41 | CD_UNIDADE_REGIONAL | VARCHAR2 | Y |  |
| 42 | VL_REPASSE_PREVISAO | NUMBER | Y |  |
| 43 | VL_REPASSE_PREVISAO_ANEST | NUMBER | Y |  |
| 44 | CD_CID_PRINCIPAL | VARCHAR2 | Y |  |
| 45 | CD_CID_SECUNDARIO | VARCHAR2 | Y |  |
| 46 | CD_FAT_SIA_REAPRESENT | NUMBER | Y |  |
| 47 | DT_DECENDIO | DATE | Y |  |
| 48 | CD_UPS | NUMBER | Y |  |
| 49 | CD_CBO_PRESTADOR | VARCHAR2 | Y |  |
| 50 | CD_PROCEDIMENTO | VARCHAR2 | Y |  |
| 51 | VL_SERVICO_AMBULATORIAL | NUMBER | Y |  |
| 52 | VL_SERVICO_PROFISSIONAL | NUMBER | Y |  |
| 53 | VL_SERVICO_ANESTESIA | NUMBER | Y |  |
| 54 | VL_TOTAL_AMBULATORIAL | NUMBER | Y |  |
| 55 | NR_IDADE | NUMBER | Y |  |
| 56 | NR_AUTORIZACAO_GESTOR | NUMBER | Y |  |
| 57 | CD_CARATER_ATENDIMENTO | NUMBER | Y |  |
| 58 | CD_LOC_PROCED | NUMBER | Y |  |
| 59 | CD_LAUDO_CITOPATOLOGICO | NUMBER | Y |  |
| 60 | CD_LAUDO_HISTOPATOLOGICO | NUMBER | Y |  |
| 61 | CD_LAUDO_MAMOGRAFIA | NUMBER | Y |  |
| 62 | CD_REMESSA | NUMBER | Y |  |
| 63 | SN_PACOTE | VARCHAR2 | N |  |
| 64 | CD_IT_SOLIC_SANGUE | NUMBER | Y |  |
| 65 | DT_INTEGRA | DATE | Y |  |
| 66 | CD_SEQ_INTEGRA | VARCHAR2 | Y |  |
| 67 | CD_EVE_SIASUS_INTEGRA | VARCHAR2 | Y |  |
| 68 | COMMIT_TIMESTAMP | DATE | Y |  |
| 69 | OPERATION | CHAR | Y |  |

---

## DBAPORTAL.ST_ITREG_AMB

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
| 52 | CD_ITMVTO | NUMBER | Y |  |
| 53 | CD_USUARIO | VARCHAR2 | Y |  |
| 54 | CD_MVTO | NUMBER | Y |  |
| 55 | TP_MVTO | VARCHAR2 | Y |  |
| 56 | HR_LANCAMENTO_FINAL | DATE | Y |  |
| 57 | SN_REPASSOU_VIRTUAL | VARCHAR2 | N |  |
| 58 | SN_PRONTA | VARCHAR2 | N |  |
| 59 | VL_DESCONTO_CONTA | NUMBER | Y |  |
| 60 | DT_SESSAO | DATE | Y |  |
| 61 | TP_MVTO_DESCONTO | VARCHAR2 | Y |  |
| 62 | TP_DESCONTO | VARCHAR2 | Y |  |
| 63 | VL_NOTA | NUMBER | Y |  |
| 64 | SN_REPASSADO | VARCHAR2 | Y |  |
| 65 | FATOR_RELACIONADO | NUMBER | Y |  |
| 66 | SN_LIBERADO | CHAR | Y |  |
| 67 | NR_SEQ_PREIMPRE | NUMBER | Y |  |
| 68 | VL_REPASSE_PREVISAO | NUMBER | Y |  |
| 69 | CD_CONTA_KIT | NUMBER | Y |  |
| 70 | DS_OBSERVACAO_FRANQUIA | VARCHAR2 | Y |  |
| 71 | NR_GUIA_ENVIO | VARCHAR2 | Y |  |
| 72 | CD_LANCAMENTO_REG_LANC | NUMBER | Y |  |
| 73 | CD_REGRA_LANCAMENTO | NUMBER | Y |  |
| 74 | CD_CONTA_PACOTE | NUMBER | Y |  |
| 75 | SN_REGRA_LANCAMENTO | VARCHAR2 | N |  |
| 76 | NR_DIFEP | VARCHAR2 | Y |  |
| 77 | CD_IT_AGENDA_CENTRAL | NUMBER | Y |  |
| 78 | ID_IT_ENVIO | NUMBER | Y |  |
| 79 | COMMIT_TIMESTAMP | DATE | Y |  |
| 80 | OPERATION | CHAR | Y |  |

---

## DBAPORTAL.ST_ITREG_FAT

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
| 68 | VL_REPASSE_PREVISAO | NUMBER | Y |  |
| 69 | CD_CONTA_PAI | NUMBER | Y |  |
| 70 | CD_MULTI_EMPRESA | NUMBER | Y |  |
| 71 | CD_CONTA_KIT | NUMBER | Y |  |
| 72 | TP_RESULTADO_EXAME_ACH | VARCHAR2 | Y |  |
| 73 | TP_SITUACAO_ACH | VARCHAR2 | Y |  |
| 74 | CD_GERACAO_ACH_AUTORIZADO | NUMBER | Y |  |
| 75 | NR_GUIA_ENVIO | VARCHAR2 | Y |  |
| 76 | CD_LANCAMENTO_REG_LANC | NUMBER | Y |  |
| 77 | CD_REGRA_LANCAMENTO | NUMBER | Y |  |
| 78 | CD_CONTA_PACOTE | NUMBER | Y |  |
| 79 | SN_CALC_DIFERENCA_ACOMODACAO | VARCHAR2 | Y |  |
| 80 | NR_DIFEP | VARCHAR2 | Y |  |
| 81 | CD_CBO_PRESTADOR | VARCHAR2 | Y |  |
| 82 | CD_PROCEDIMENTO | VARCHAR2 | Y |  |
| 83 | TP_APURAR_VALOR | NUMBER | Y |  |
| 84 | TP_APURAR_VALOR_ORIGEM | VARCHAR2 | Y |  |
| 85 | ID_IT_ENVIO | NUMBER | Y |  |
| 86 | CD_PRIORIDADE_AIH | VARCHAR2 | Y |  |
| 87 | CD_SEQ_INTEGRA | NUMBER | Y |  |
| 88 | DT_INTEGRA | DATE | Y |  |
| 89 | COMMIT_TIMESTAMP | DATE | Y |  |
| 90 | OPERATION | CHAR | Y |  |

---

## DBAPORTAL.ST_REG_AMB

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REG_AMB | NUMBER | N |  |
| 2 | DT_LANCAMENTO | DATE | N |  |
| 3 | CD_REMESSA | NUMBER | Y |  |
| 4 | CD_CONVENIO | NUMBER | N |  |
| 5 | SN_FATURA_IMPRESSA | VARCHAR2 | N |  |
| 6 | SN_FECHADA | VARCHAR2 | N |  |
| 7 | VL_ACRESCIMO_CONTA | NUMBER | Y |  |
| 8 | VL_DESCONTO_CONTA | NUMBER | Y |  |
| 9 | VL_FILME_CONTA | NUMBER | Y |  |
| 10 | VL_TOTAL_CONTA | NUMBER | Y |  |
| 11 | DT_LANCAMENTO_FINAL | DATE | N |  |
| 12 | CD_GUIA | NUMBER | Y |  |
| 13 | SN_DIAGNO | VARCHAR2 | Y |  |
| 14 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 15 | CD_REGRA | NUMBER | Y |  |
| 16 | CD_LOTE_TRABALHO | NUMBER | Y |  |
| 17 | CD_REG_AMB_INTEGRA | VARCHAR2 | Y |  |
| 18 | CD_SEQ_INTEGRA | NUMBER | Y |  |
| 19 | DT_INTEGRA | DATE | Y |  |
| 20 | DT_REMESSA | DATE | Y |  |
| 21 | CD_ORDEM_TRANSFERENCIA_REMESSA | NUMBER | N |  |
| 22 | COMMIT_TIMESTAMP | DATE | Y |  |
| 23 | OPERATION | CHAR | Y |  |

---

## DBAPORTAL.ST_REG_FAT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REG_FAT | NUMBER | N |  |
| 2 | SN_FECHADA | VARCHAR2 | N |  |
| 3 | DT_GUIA | DATE | Y |  |
| 4 | NR_GUIA | VARCHAR2 | Y |  |
| 5 | VL_ACRESCIMO_CONTA | NUMBER | Y |  |
| 6 | VL_DESCONTO_CONTA | NUMBER | Y |  |
| 7 | VL_ACRESCIMO_EXTRA | NUMBER | Y |  |
| 8 | VL_DESCONTO_EXTRA | NUMBER | Y |  |
| 9 | VL_TOTAL_CONTA | NUMBER | Y |  |
| 10 | VL_TOTAL_EXTRAS | NUMBER | Y |  |
| 11 | CD_REMESSA | NUMBER | Y |  |
| 12 | CD_ATENDIMENTO | NUMBER | N |  |
| 13 | CD_TIP_ACOM | NUMBER | N |  |
| 14 | CD_CONTA_PAC | NUMBER | Y |  |
| 15 | DT_INICIO | DATE | Y |  |
| 16 | DT_FINAL | DATE | Y |  |
| 17 | CD_CON_PLA | NUMBER | N |  |
| 18 | CD_CONVENIO | NUMBER | N |  |
| 19 | VL_FILME_CONTA | NUMBER | Y |  |
| 20 | SN_FATURA_IMPRESSA | VARCHAR2 | N |  |
| 21 | SN_CONTA_CALCULADA | VARCHAR2 | N |  |
| 22 | CD_GUIA | NUMBER | Y |  |
| 23 | SN_DIAGNO | VARCHAR2 | Y |  |
| 24 | DT_FECHAMENTO | DATE | Y |  |
| 25 | NM_USUARIO_FECHOU | VARCHAR2 | Y |  |
| 26 | VL_DESCONTO_FECHAMENTO | NUMBER | Y |  |
| 27 | VL_ACRESCIMO_FECHAMENTO | NUMBER | Y |  |
| 28 | VL_CONTA_NO_FECHAMENTO | NUMBER | Y |  |
| 29 | CD_MOTIVO_GLOSA | NUMBER | Y |  |
| 30 | SN_IMPORTA_AUTO | VARCHAR2 | Y |  |
| 31 | NR_IDENTIFICACAO | VARCHAR2 | Y |  |
| 32 | CD_CARATER_INTERNACAO | NUMBER | Y |  |
| 33 | DT_EMISSAO_LAUDO | DATE | Y |  |
| 34 | NR_UTI_INICIAL | NUMBER | Y |  |
| 35 | NR_UTI_ANTERIOR | NUMBER | Y |  |
| 36 | NR_UTI_ALTA | NUMBER | Y |  |
| 37 | NR_DIARIA_ACOMPANHANTE | NUMBER | Y |  |
| 38 | CD_PRO_FAT_SOLICITADO | VARCHAR2 | Y |  |
| 39 | CD_PRO_FAT_REALIZADO | VARCHAR2 | Y |  |
| 40 | CD_PRESTADOR_RESPONSAVEL | NUMBER | Y |  |
| 41 | CD_PRESTADOR_DIRETOR | NUMBER | Y |  |
| 42 | NR_CPF_GESTOR | NUMBER | Y |  |
| 43 | CD_GESTOR_AUTORIZOU | VARCHAR2 | Y |  |
| 44 | CD_MOT_ALT | NUMBER | Y |  |
| 45 | CD_CID_PRINCIPAL | VARCHAR2 | Y |  |
| 46 | CD_CID_SECUNDARIO | VARCHAR2 | Y |  |
| 47 | NM_USUARIO | VARCHAR2 | Y |  |
| 48 | CD_DCIH | NUMBER | Y |  |
| 49 | CD_ESPEC_SUS | VARCHAR2 | Y |  |
| 50 | NR_AIH_ANTERIOR | VARCHAR2 | Y |  |
| 51 | NR_AIH_POSTERIOR | VARCHAR2 | Y |  |
| 52 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 53 | CD_REGRA | NUMBER | N |  |
| 54 | NR_PRE_NATAL | VARCHAR2 | Y |  |
| 55 | NR_SEQAIH5 | NUMBER | Y |  |
| 56 | CD_FRANQUIA_VALOR_TOTAL | NUMBER | Y |  |
| 57 | CD_PRESTADOR_AUDITOR | NUMBER | Y |  |
| 58 | VL_FRANQUIA_TOTAL | NUMBER | Y |  |
| 59 | CD_REG_FAT_GLOSA | NUMBER | Y |  |
| 60 | VL_COPARTICIPACAO | NUMBER | Y |  |
| 61 | SN_PRONTA | VARCHAR2 | N |  |
| 62 | CD_REG_FAT_PAI | NUMBER | Y |  |
| 63 | TP_MVTO | VARCHAR2 | Y |  |
| 64 | TP_DESCONTO | VARCHAR2 | Y |  |
| 65 | SN_LAUDO_EXPORTADO | VARCHAR2 | Y |  |
| 66 | CD_PROT_LAUDO_SUS | NUMBER | Y |  |
| 67 | DT_PROT_LAUDO_SUS | DATE | Y |  |
| 68 | SN_LAUDO_ALTERADO | NUMBER | Y |  |
| 69 | VL_PONTO_PROF_AIH | NUMBER | Y |  |
| 70 | NR_SEQ_PREIMPRE | NUMBER | Y |  |
| 71 | SN_LIBERADO | CHAR | Y |  |
| 72 | DT_AUT_HOMONIMO | DATE | Y |  |
| 73 | CD_CONTA_PAI | NUMBER | Y |  |
| 74 | DS_OBSERVACAO_FRANQUIA | VARCHAR2 | Y |  |
| 75 | NR_LAUDO_ACH | NUMBER | Y |  |
| 76 | CD_GERACAO_ACH | NUMBER | Y |  |
| 77 | NR_GUIA_ENVIO_PRINCIPAL | VARCHAR2 | Y |  |
| 78 | SN_REGRA_LANCAMENTO | VARCHAR2 | N |  |
| 79 | CD_LOTE_TRABALHO | NUMBER | Y |  |
| 80 | TP_CLASSIFICACAO_CONTA | VARCHAR2 | N |  |
| 81 | CD_PROCEDIMENTO_REALIZADO | VARCHAR2 | Y |  |
| 82 | CD_PROCEDIMENTO_SOLICITADO | VARCHAR2 | Y |  |
| 83 | TP_MODALIDADE_ATENDIMENTO | VARCHAR2 | Y |  |
| 84 | CD_CARATER_ATENDIMENTO | NUMBER | Y |  |
| 85 | CD_REG_FAT_INTEGRA | VARCHAR2 | Y |  |
| 86 | CD_SEQ_INTEGRA | NUMBER | Y |  |
| 87 | DT_INTEGRA | DATE | Y |  |
| 88 | DT_REMESSA | DATE | Y |  |
| 89 | NM_USUARIO_REMESSA | VARCHAR2 | Y |  |
| 90 | NR_CERIH | NUMBER | Y |  |
| 91 | NR_CMCE | VARCHAR2 | Y |  |
| 92 | NR_CNRAC | VARCHAR2 | Y |  |
| 93 | COMMIT_TIMESTAMP | DATE | Y |  |
| 94 | OPERATION | CHAR | Y |  |

---

## DBAPORTAL.ST_TRANSFERENCIA_CIRURGIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TRANSFERENCIA_CIRURGIA | NUMBER | N |  |
| 2 | DT_ANTERIOR | DATE | N |  |
| 3 | CD_SALA_ANTERIOR | NUMBER | N |  |
| 4 | CD_AVISO_CIRURGIA | NUMBER | N |  |
| 5 | CD_MOT_TRANSFERENCIA | NUMBER | N |  |
| 6 | DT_TRANSFERENCIA | DATE | N |  |
| 7 | NM_SOLICITANTE | VARCHAR2 | Y |  |
| 8 | NM_USUARIO | VARCHAR2 | Y |  |
| 9 | DT_ANTERIOR_AGENDAMENTO | DATE | Y |  |
| 10 | COMMIT_TIMESTAMP | DATE | Y |  |
| 11 | OPERATION | CHAR | Y |  |

---

## DBAPORTAL.SUBDIVISAO_SETOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SUBDIVISAO_SETOR | NUMBER | N |  |
| 2 | DS_SUBDIVISAO_SETOR | VARCHAR2 | N |  |
| 3 | CD_DIVISAO_SETOR | NUMBER | N |  |
| 4 | CD_SITE | NUMBER | Y |  |

---

## DBAPORTAL.TABELA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | A | NUMBER | Y |  |
| 2 | B | CHAR | Y |  |
| 3 | C | CHAR | Y |  |

---

## DBAPORTAL.TABELA_PERGUNTA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TABELA_PERGUNTA | NUMBER | N |  |
| 2 | NM_TABELA | VARCHAR2 | N |  |
| 3 | DS_SQL | VARCHAR2 | N |  |
| 4 | DS_COLUNA_CODIGO | VARCHAR2 | Y |  |
| 5 | DS_COLUNA_DESCRICAO | VARCHAR2 | Y |  |
| 6 | SN_ATIVO | VARCHAR2 | Y |  |
| 7 | SN_VALIDO | VARCHAR2 | Y |  |

---

## DBAPORTAL.TB_RESUMO_INDICADORES

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | SUBSTR(TIPO,3) | VARCHAR2 | Y |  |
| 2 | MES_ANT | NUMBER | Y |  |
| 3 | MES_ATU | NUMBER | Y |  |
| 4 | VAR | NUMBER | Y |  |

---

## DBAPORTAL.TELEFONE
> Tabela de telefones

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TELEFONE | NUMBER | N | Identificador do telefone |
| 2 | NR_DDD | NUMBER | N | Codigo de area do teledone |
| 3 | NR_TELEFONE | NUMBER | N | Numero do telefone |
| 4 | DS_OBSERVACAO | VARCHAR2 | Y |  |

---

## DBAPORTAL.TEMA_ESTRATEGICO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TEMA_ESTRATEGICO | NUMBER | N |  |
| 2 | DS_TITULO_TEMA_ESTRATEGICO | VARCHAR2 | N |  |
| 3 | DS_TEMA_ESTRATEGICO | VARCHAR2 | N |  |
| 4 | CD_ESTRATEGIA | NUMBER | N |  |

---

## DBAPORTAL.TEMA_OBJETIVO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TEMA_OBJETIVO | NUMBER | N |  |
| 2 | CD_TEMA_ESTRATEGICO | NUMBER | N |  |
| 3 | CD_OBJETIVO | NUMBER | N |  |

---

## DBAPORTAL.TEMP2_DURACAO_ATIVIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DURACAO_ATIVIDADE | NUMBER | N |  |
| 2 | VL_DURACAO | VARCHAR2 | Y |  |

---

## DBAPORTAL.TEMP2_GRUPO_PROJETO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GRUPO_PROJETO | NUMBER | N |  |
| 2 | VL_DURACAO_REAL | NUMBER | Y |  |
| 3 | TP_DURACAO_REAL | NUMBER | Y |  |

---

## DBAPORTAL.TEMP2_INICIATIVA_ACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INICIATIVA_ACAO | NUMBER | N |  |
| 2 | NR_DURACAO_REAL | NUMBER | Y |  |
| 3 | TP_DURACAO_REAL | NUMBER | Y |  |

---

## DBAPORTAL.TEMP2_NOTA_INICIATIVA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_NOTA_INICIATIVA | NUMBER | N |  |
| 2 | DS_NOTA_INICIATIVA | VARCHAR2 | Y |  |
| 3 | DS_NOTA_INICIATIVA_HTML | VARCHAR2 | Y |  |

---

## DBAPORTAL.TEMPLATE_INDICADOR_REUNIAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TEMPLATE_INDICADOR_REUNIAO | NUMBER | N |  |
| 2 | TP_FORMA_APRESENTACAO | VARCHAR2 | Y |  |
| 3 | CD_ANALISE_CRITICA | NUMBER | Y |  |

---

## DBAPORTAL.TEMP_DI_INDICE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_INDICE | NUMBER | N |  |
| 2 | DS_UTILIZACAO | VARCHAR2 | Y |  |

---

## DBAPORTAL.TEMP_ESTRATEGIA_OBJETIVO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ESTRATEGIA | NUMBER | N |  |
| 2 | CD_OBJETIVO | NUMBER | N |  |

---

## DBAPORTAL.TEMP_ESTR_OBJ_INDICADOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ESTRATEGIA | NUMBER | N |  |
| 2 | CD_OBJETIVO | NUMBER | N |  |
| 3 | CD_IVM | VARCHAR2 | Y |  |

---

## DBAPORTAL.TEMP_INICIATIVA_ACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INICIATIVA_ACAO | NUMBER | N |  |
| 2 | NR_SEQUENCIA | VARCHAR2 | Y |  |

---

## DBAPORTAL.TEMP_IVM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IVM | VARCHAR2 | N |  |
| 2 | DS_UTILIZACAO | VARCHAR2 | Y |  |
| 3 | DS_FORMULA | CLOB | Y |  |
| 4 | DS_COLETADADOS | CLOB | Y |  |

---

## DBAPORTAL.TEMP_OBJETIVO_INDICADOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_OBJETIVO_INDICADOR | NUMBER | N |  |
| 2 | CD_OBJETIVO | NUMBER | N |  |
| 3 | CD_IVM | VARCHAR2 | N |  |

---

## DBAPORTAL.TEMP_REFERENCIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REFERENCIA | NUMBER | N |  |
| 2 | DS_REFERENCIA | VARCHAR2 | Y |  |
| 3 | CD_IVM | VARCHAR2 | Y |  |
| 4 | DS_COR | VARCHAR2 | Y |  |
| 5 | CD_REFERENCIA_MV | NUMBER | Y |  |

---

## DBAPORTAL.TEMP_REFERENCIA_MV

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REFERENCIA_MV | NUMBER | N |  |
| 2 | DS_REFERENCIA_MV | VARCHAR2 | Y |  |

---

## DBAPORTAL.TEMP_SENIORIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SENIORIDADE | NUMBER | N |  |
| 2 | DS_SENIORIDADE | VARCHAR2 | Y |  |

---

## DBAPORTAL.TEMP_USER

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_USUARIO_PORTAL | VARCHAR2 | N |  |
| 2 | XML_CONFIGURACAO_USUARIO | CLOB | Y |  |
| 3 | XML_CONFIGURACAO_PORTLET | CLOB | Y |  |
| 4 | DS_EMAIL | VARCHAR2 | Y |  |
| 5 | SN_ATIVO | VARCHAR2 | Y |  |
| 6 | NM_USUARIO | VARCHAR2 | Y |  |
| 7 | DT_ULTIMO_ACESSO | DATE | Y |  |
| 8 | DT_ULTIMA_TROCA_SENHA | DATE | Y |  |
| 9 | CD_TIPO_USUARIO | NUMBER | Y |  |
| 10 | CD_PAGINA_PRINCIPAL | NUMBER | Y |  |
| 11 | DS_SENHA | VARCHAR2 | Y |  |
| 12 | SN_USUARIO_MICROSTRATEGY | VARCHAR2 | Y |  |
| 13 | CD_MICROSTRATEGY_DATA_SOURCE | NUMBER | Y |  |
| 14 | CD_TIPO_LICENCA | NUMBER | Y |  |
| 15 | SN_BSC | VARCHAR2 | Y |  |
| 16 | SN_BACKOFFICE | VARCHAR2 | Y |  |
| 17 | ID_USUARIO_PORTAL | NUMBER | Y |  |

---

## DBAPORTAL.TEMP_USER_PAGINA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_USUARIO_PORTAL_PAGINA | NUMBER | N |  |
| 2 | CD_PAGINA | NUMBER | N |  |
| 3 | CD_USUARIO_PORTAL | VARCHAR2 | Y |  |
| 4 | SN_CUSTOMIZAR_REFERENCIADA | VARCHAR2 | N |  |

---

## DBAPORTAL.TEMP_USER_PAPEL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_USUARIO_PORTAL | VARCHAR2 | N |  |
| 2 | CD_PAPEL | NUMBER | N |  |

---

## DBAPORTAL.TEMP_VALORES_REFERENCIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REFERENCIA | NUMBER | N |  |
| 2 | DT_REFERENCIA | DATE | N |  |
| 3 | CD_IVM | NUMBER | N |  |
| 4 | VL_REFERENCIA | NUMBER | Y |  |
| 5 | CD_ORGANIZACAO | NUMBER | Y |  |
| 6 | CD_CENTRO_CUSTO | NUMBER | Y |  |
| 7 | SN_MOSTRAR_TODOS_SETORES | VARCHAR2 | Y |  |

---

## DBAPORTAL.TESTE_SOCRATES_EOI

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ESTRATEGIA_OBJETIVO_IND | NUMBER | Y |  |
| 2 | CD_ESTRATEGIA | NUMBER | Y |  |
| 3 | CD_OBJETIVO | NUMBER | Y |  |
| 4 | CD_IVM | NUMBER | Y |  |

---

## DBAPORTAL.TIPO_CATEGORIA_DOCTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIPO_CATEGORIA_DOCTO | NUMBER | N |  |
| 2 | DS_TIPO_CATEGORIA_DOCTO | VARCHAR2 | Y |  |
| 3 | SN_INSTRUCAO | VARCHAR2 | Y |  |
| 4 | SN_DOCUMENTO | VARCHAR2 | Y |  |

---

## DBAPORTAL.TIPO_DOCTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIPO_DOCTO | NUMBER | N |  |
| 2 | DS_TIPO_DOCTO | VARCHAR2 | N |  |
| 3 | SN_INSTRUCAO | VARCHAR2 | N |  |
| 4 | SN_DOCUMENTO | VARCHAR2 | N |  |
| 5 | CD_FORMULARIO | NUMBER | Y |  |
| 6 | SN_MODIFICAR_DOC_WORK | VARCHAR2 | N |  |
| 7 | QTD_TEMPO_REVISAO | NUMBER | Y |  |
| 8 | SN_ATIVO | VARCHAR2 | N |  |

---

## DBAPORTAL.TIPO_FLUXO_OCORRENCIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIPO_FLUXO_OCORRENCIA | NUMBER | N |  |
| 2 | SN_EMAIL | VARCHAR2 | Y |  |
| 3 | NR_ORDENACAO | NUMBER | Y |  |
| 4 | CD_FLUXO_OCORRENCIA | NUMBER | N |  |
| 5 | ID_USUARIO_RESPONSAVEL | NUMBER | Y |  |
| 6 | CD_PAPEL_RESPONSAVEL | NUMBER | Y |  |
| 7 | TP_SETOR_RESPONSAVEL | VARCHAR2 | Y |  |
| 8 | QT_SLA | NUMBER | Y |  |
| 9 | CD_WORKFLOW_OCORRENCIA | NUMBER | Y |  |
| 10 | CD_REGISTRO_OCORRENCIA | NUMBER | Y |  |
| 11 | SN_PERSONALIZADO | VARCHAR2 | Y |  |

---

## DBAPORTAL.TIPO_LICENCA_SE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIPO_LICENCA | NUMBER | N |  |
| 2 | DS_TIPO_LICENCA | VARCHAR2 | N |  |

---

## DBAPORTAL.TIPO_MENSAGEM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIPO_MENSAGEM | VARCHAR2 | N |  |
| 2 | DS_TIPO_MENSAGEM | VARCHAR2 | N |  |
| 3 | SN_ENVIA_EMAIL | VARCHAR2 | N |  |
| 4 | SN_GUARDA_LOG | VARCHAR2 | N |  |
| 5 | DS_ENDERECO_EMAIL | VARCHAR2 | Y |  |

---

## DBAPORTAL.TIPO_OCORRENCIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIPO_OCORRENCIA | NUMBER | N |  |
| 2 | DS_CODIGO | VARCHAR2 | Y |  |
| 3 | DS_TIPO_OCORRENCIA | VARCHAR2 | Y |  |
| 4 | NM_TIPO_OCORRENCIA | VARCHAR2 | N |  |
| 5 | CD_CATEGORIA_OCORRENCIA | NUMBER | N |  |
| 6 | NR_MASCARA | VARCHAR2 | Y |  |
| 7 | DS_MSG_EMAIL | VARCHAR2 | Y |  |

---

## DBAPORTAL.TMPMVDS_INICIATIVA_ACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INICIATIVA_ACAO | NUMBER | N |  |
| 2 | DS_PROBLEMAS | VARCHAR2 | Y |  |
| 3 | DS_ACOES | VARCHAR2 | Y |  |

---

## DBAPORTAL.TMPMV_CATEGORIA_DOCTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CATEGORIA_DOCTO | NUMBER | N |  |
| 2 | DS_CATEGORIA | VARCHAR2 | Y |  |

---

## DBAPORTAL.TMPMV_DOCUMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DOCUMENTO | NUMBER | N |  |
| 2 | DS_DOCUMENTO | VARCHAR2 | Y |  |

---

## DBAPORTAL.TMPMV_INICIATIVA_ACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INICIATIVA_ACAO | NUMBER | N |  |
| 2 | DS_RESULTADOS | VARCHAR2 | Y |  |

---

## DBAPORTAL.TMPMV_REPOSITORIO_DOCTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REPOSITORIO_DOCTO | NUMBER | N |  |
| 2 | DS_REPOSITORIO | VARCHAR2 | Y |  |

---

## DBAPORTAL.ULTIMA_AUTENTICAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ULTIMA_AUTENTICAO | NUMBER | N |  |
| 2 | CD_ORGANIZACAO | NUMBER | N |  |
| 3 | TP_IMPORTACAO | NUMBER | N |  |
| 4 | DT_ATUALIZACAO | DATE | N |  |
| 5 | DS_ERRO | CLOB | Y |  |

---

## DBAPORTAL.USUARIO_CALENDARIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_USUARIO_CALENDARIO | NUMBER | N |  |
| 2 | DT_VIGENCIA | DATE | Y |  |
| 3 | CD_CALENDARIO | NUMBER | N |  |
| 4 | ID_USUARIO_PORTAL | NUMBER | N |  |
| 5 | CD_REGISTRANTE | NUMBER | N |  |

---

## DBAPORTAL.USUARIO_PERMISSAO_INDICADOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_USUARIO_PORTAL | VARCHAR2 | Y |  |
| 2 | CD_IVM | VARCHAR2 | Y |  |
| 3 | SN_CONTROLE_TOTAL | VARCHAR2 | Y |  |
| 4 | SN_VISUALIZAR | VARCHAR2 | Y |  |
| 5 | SN_INCLUIR | VARCHAR2 | Y |  |
| 6 | SN_ALTERAR | VARCHAR2 | Y |  |
| 7 | SN_NEGAR | VARCHAR2 | Y |  |
| 8 | CD_PAPEL | NUMBER | Y |  |
| 9 | CD_ORGANIZACAO | NUMBER | Y |  |
| 10 | CD_CENTRO_CUSTO | NUMBER | Y |  |
| 11 | CD_GESTAO | NUMBER | Y |  |
| 12 | CD_DIVISAO_SETOR | NUMBER | Y |  |
| 13 | CD_META_INDICADOR | NUMBER | Y |  |
| 14 | CD_ESTRATEGIA | NUMBER | Y |  |
| 15 | CD_SITE | NUMBER | Y |  |
| 16 | CD_USUARIO_PERMISSAO_IND | NUMBER | N |  |

---

## DBAPORTAL.USUARIO_PORTAL_MSG_NOTICIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_USUARIO_PORTAL_MSG_NOTICIA | NUMBER | N |  |
| 2 | ID_USUARIO_PORTAL | NUMBER | N |  |
| 3 | CD_MENSAGEM_NOTICIA | NUMBER | N |  |

---

## DBAPORTAL.USUARIO_PORTAL_TELEFONE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_USUARIO_PORTAL_TELEFONE | NUMBER | N |  |
| 2 | CD_USUARIO_PORTAL | VARCHAR2 | N |  |
| 3 | CD_TELEFONE | NUMBER | N |  |

---

## DBAPORTAL.USUARIO_SISTEMA_LICENCA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIPO_LICENCA | NUMBER | N |  |
| 2 | CD_USUARIO_PORTAL | NUMBER | N |  |

---

## DBAPORTAL.VALORES_REFERENCIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_VALOR_REFERENCIA | NUMBER | N |  |
| 2 | CD_REFERENCIA | NUMBER | N |  |
| 3 | CD_IVM | VARCHAR2 | N |  |
| 4 | DT_REFERENCIA | DATE | N |  |
| 5 | CD_ORGANIZACAO | NUMBER | Y |  |
| 6 | CD_CENTRO_CUSTO | NUMBER | Y |  |
| 7 | VL_REFERENCIA | NUMBER | Y |  |
| 8 | SN_MOSTRA_TODOS_SETORES | VARCHAR2 | Y |  |

---

## DBAPORTAL.VCONTAS_FAT_CARGA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | TP_CONTA | VARCHAR2 | Y |  |
| 2 | CD_CONTA | VARCHAR2 | Y |  |
| 3 | CD_ATENDIMENTO | NUMBER | Y |  |
| 4 | DT_LANCAMENTO | DATE | Y |  |

---

## DBAPORTAL.VDW_AMBULATORIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | COD_CONVENIO | NUMBER | Y |  |
| 2 | DESC_CONVENIO | VARCHAR2 | Y |  |
| 3 | COD_EMPRESA | NUMBER | Y |  |
| 4 | DESC_EMPRESA | VARCHAR2 | Y |  |
| 5 | DT_ATENDIMENTO | DATE | Y |  |
| 6 | COD_ESPECIALID | NUMBER | Y |  |
| 7 | DESC_ESPECIALID | VARCHAR2 | Y |  |
| 8 | HOJE | NUMBER | Y |  |
| 9 | ONTEM | NUMBER | Y |  |
| 10 | ULT7DIAS | NUMBER | Y |  |
| 11 | ULT30DIAS | NUMBER | Y |  |
| 12 | MED30DIAS | NUMBER | Y |  |

---

## DBAPORTAL.VDW_ATENDIMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CID | VARCHAR2 | Y |  |
| 2 | DS_CID | VARCHAR2 | Y |  |
| 3 | CD_SERVICO | NUMBER | Y |  |
| 4 | DS_SERVICO | VARCHAR2 | Y |  |
| 5 | TP_ATENDIMENTO | VARCHAR2 | Y |  |
| 6 | DS_ATENDIMENTO | VARCHAR2 | Y |  |
| 7 | CONVENIO | VARCHAR2 | Y |  |
| 8 | COD_EMPRESA | NUMBER | Y |  |
| 9 | DESC_EMPRESA | VARCHAR2 | Y |  |
| 10 | QT_HOJE | NUMBER | Y |  |
| 11 | QT_ONTEM | NUMBER | Y |  |
| 12 | QT_7DIAS | NUMBER | Y |  |
| 13 | QT_30DIAS | NUMBER | Y |  |
| 14 | QT_MED30DIAS | NUMBER | Y |  |

---

## DBAPORTAL.VDW_ATN_AMBULATORIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | COD_CONVENIO | NUMBER | Y |  |
| 2 | DESC_CONVENIO | VARCHAR2 | Y |  |
| 3 | COD_EMPRESA | NUMBER | Y |  |
| 4 | DESC_EMPRESA | VARCHAR2 | Y |  |
| 5 | DT_ATENDIMENTO | DATE | Y |  |
| 6 | COD_ESPECIALID | NUMBER | Y |  |
| 7 | DESC_ESPECIALID | VARCHAR2 | Y |  |
| 8 | CD_PRESTADOR | NUMBER | Y |  |
| 9 | NM_PRESTADOR | VARCHAR2 | Y |  |
| 10 | QT_HOJE | NUMBER | Y |  |
| 11 | QT_ONTEM | NUMBER | Y |  |
| 12 | QT_7DIAS | NUMBER | Y |  |
| 13 | QT_30DIAS | NUMBER | Y |  |
| 14 | QT_MED30DIAS | NUMBER | Y |  |

---

## DBAPORTAL.VDW_ATN_QT_ATENDIM_SEM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DATA | DATE | Y |  |
| 2 | DIA | VARCHAR2 | Y |  |
| 3 | ATENDIMENTOS | NUMBER | Y |  |
| 4 | ALTAS | NUMBER | Y |  |
| 5 | REINTERNACAO_72HRS | NUMBER | Y |  |
| 6 | REINTERNACAO_MENOS_30D | NUMBER | Y |  |
| 7 | TEMPO | VARCHAR2 | Y |  |

---

## DBAPORTAL.VDW_EXA_QT_EXAMES

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MULTI_EMPRESA | NUMBER | Y |  |
| 2 | ID_MULTI_EMPRESA | NUMBER | Y |  |
| 3 | DS_MULTI_EMPRESA | VARCHAR2 | Y |  |
| 4 | ANO | NUMBER | Y |  |
| 5 | MES | VARCHAR2 | Y |  |
| 6 | ID_PRESTADOR | NUMBER | Y |  |
| 7 | NM_PRESTADOR | VARCHAR2 | Y |  |
| 8 | ID_SETOR | NUMBER | Y |  |
| 9 | NM_SETOR | VARCHAR2 | Y |  |
| 10 | ID_PLANO_CONVENIO | NUMBER | Y |  |
| 11 | NM_CONVENIO | VARCHAR2 | Y |  |
| 12 | TP_CONVENIO | VARCHAR2 | Y |  |
| 13 | ID_EXAME | NUMBER | Y |  |
| 14 | DS_EXAME | VARCHAR2 | Y |  |
| 15 | TP_EXAME | VARCHAR2 | Y |  |
| 16 | DS_TP_EXAME | VARCHAR2 | Y |  |
| 17 | DS_ATENDIMENTO | VARCHAR2 | Y |  |
| 18 | ER_TOTAL | NUMBER | Y |  |
| 19 | ES_TOTAL | NUMBER | Y |  |
| 20 | ER_HOJE | NUMBER | Y |  |
| 21 | ER_ONTEM | NUMBER | Y |  |
| 22 | ER_ULT7DIAS | NUMBER | Y |  |
| 23 | ER_ULT30DIAS | NUMBER | Y |  |
| 24 | ER_MED30DIAS | NUMBER | Y |  |
| 25 | ES_HOJE | NUMBER | Y |  |
| 26 | ES_ONTEM | NUMBER | Y |  |
| 27 | ES_ULT7DIAS | NUMBER | Y |  |
| 28 | ES_ULT30DIAS | NUMBER | Y |  |
| 29 | ES_MED30DIAS | NUMBER | Y |  |

---

## DBAPORTAL.VDW_LOG_CARGA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CARGA | VARCHAR2 | N |  |
| 2 | DT_INICIO | DATE | N |  |
| 3 | DT_FINAL | DATE | N |  |
| 4 | SN_CARGA | VARCHAR2 | N |  |
| 5 | SN_EXECUTANDO_CARGA | VARCHAR2 | N |  |
| 6 | SN_ATIVA_CARGA | VARCHAR2 | N |  |

---

## DBAPORTAL.VGRU_DOC_PERG

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GRUPO_PERGUNTA | NUMBER | N |  |
| 2 | DS_GRUPO_PERGUNTA | VARCHAR2 | Y |  |
| 3 | CD_DOCUMENTO | NUMBER | N |  |
| 4 | DS_DOCUMENTO | VARCHAR2 | N |  |
| 5 | CD_PERGUNTA_DOC | NUMBER | N |  |
| 6 | DS_PERGUNTA | VARCHAR2 | N |  |
| 7 | TP_VISUALIZACAO | VARCHAR2 | N |  |
| 8 | TP_RESPOSTA | VARCHAR2 | Y |  |

---

## DBAPORTAL.VLISTA_FIXA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_RESPOSTA | NUMBER | N |  |
| 2 | NR_ORDEM | NUMBER | N |  |
| 3 | VL_DS_RESPOSTA | VARCHAR2 | Y |  |
| 4 | DS_RESPOSTA | VARCHAR2 | N |  |
| 5 | CD_GRUPO_PERGUNTA | NUMBER | Y |  |
| 6 | VL_RESPOSTA | NUMBER | Y |  |
| 7 | FX_INICIAL | NUMBER | Y |  |
| 8 | FX_FINAL | NUMBER | Y |  |

---

## DBAPORTAL.VL_CONFIGURACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIGURACAO | NUMBER | N |  |
| 2 | CD_IT_CONFIGURACAO | NUMBER | N |  |
| 3 | CD_USUARIO_PORTAL | VARCHAR2 | N |  |
| 4 | DS_VALOR | VARCHAR2 | Y |  |

---

## DBAPORTAL.VM_PENDENCIAS
> snapshot table for snapshot DBAPORTAL.VM_PENDENCIAS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ATENDIMENTO | NUMBER | N |  |
| 2 | PACIENTE | VARCHAR2 | Y |  |
| 3 | UNIDADE | VARCHAR2 | N |  |
| 4 | CODIGO_UNIDADE | NUMBER | N |  |
| 5 | LEITO | VARCHAR2 | Y |  |
| 6 | MEDICO | VARCHAR2 | Y |  |
| 7 | ESPECIALID | VARCHAR2 | Y |  |
| 8 | ALTA_MEDICA | VARCHAR2 | Y |  |
| 9 | DATA_ALTA_MEDICA | DATE | Y |  |
| 10 | NR_PENDENCIAS | NUMBER | Y |  |

---

## DBAPORTAL.VPERGUNTA_LISTA_FIXA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PERGUNTA_DOC | NUMBER | N |  |
| 2 | DS_PERGUNTA | VARCHAR2 | N |  |
| 3 | CD_GRUPO_PERGUNTA | NUMBER | N |  |
| 4 | CD_DOCUMENTO | NUMBER | N |  |
| 5 | DS_DOCUMENTO | VARCHAR2 | N |  |

---

## DBAPORTAL.VW_ALTAS_MOTIVO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | MOTIVO_ALTA | VARCHAR2 | Y |  |
| 2 | COD_EMPRESA | NUMBER | Y |  |
| 3 | DESC_EMPRESA | VARCHAR2 | Y |  |
| 4 | HOJE | NUMBER | Y |  |
| 5 | ONTEM | NUMBER | Y |  |
| 6 | ULT7DIAS | NUMBER | Y |  |
| 7 | ULT30DIAS | NUMBER | Y |  |
| 8 | MED30DIAS | NUMBER | Y |  |

---

## DBAPORTAL.VW_ATENDIMENTO_CONVENIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CONVENIO | VARCHAR2 | Y |  |
| 2 | COD_EMPRESA | NUMBER | Y |  |
| 3 | DESC_EMPRESA | VARCHAR2 | Y |  |
| 4 | HOJE | NUMBER | Y |  |
| 5 | ONTEM | NUMBER | Y |  |
| 6 | ULT7DIAS | NUMBER | Y |  |
| 7 | ULT30DIAS | NUMBER | Y |  |
| 8 | MED30DIAS | NUMBER | Y |  |

---

## DBAPORTAL.VW_AUT_MOD

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_USUARIO | VARCHAR2 | N |  |
| 2 | CD_MODULO | VARCHAR2 | N |  |

---

## DBAPORTAL.VW_AUT_TABLE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TABELA | VARCHAR2 | N |  |
| 2 | CD_USUARIO | VARCHAR2 | N |  |
| 3 | SN_INCLUSAO | VARCHAR2 | N |  |
| 4 | SN_ALTERACAO | VARCHAR2 | N |  |
| 5 | SN_CONSULTA | VARCHAR2 | N |  |
| 6 | SN_EXCLUSAO | VARCHAR2 | N |  |

---

## DBAPORTAL.VW_CENTRO_CIRURGICO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NM_CONVENIO | VARCHAR2 | Y |  |
| 2 | CD_CEN_CIR | NUMBER | N |  |
| 3 | DS_CEN_CIR | VARCHAR2 | N |  |
| 4 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 5 | DS_MULTI_EMPRESA | VARCHAR2 | N |  |
| 6 | QT_AGENDADA | NUMBER | Y |  |
| 7 | QT_REALIZADA | NUMBER | Y |  |
| 8 | QT_CANCELADA | NUMBER | Y |  |
| 9 | DATA | DATE | Y |  |

---

## DBAPORTAL.VW_CLIENTE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CLIENTE | NUMBER | N |  |
| 2 | NM_CLIENTE | VARCHAR2 | N |  |

---

## DBAPORTAL.VW_COLUNAS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TABELA | VARCHAR2 | N |  |
| 2 | COLUNA | VARCHAR2 | N |  |
| 3 | TP_DADO | VARCHAR2 | N |  |
| 4 | SN_DELETE | VARCHAR2 | N |  |
| 5 | SN_INSERT | VARCHAR2 | N |  |
| 6 | SN_UPDATE | VARCHAR2 | N |  |
| 7 | SN_PK | VARCHAR2 | N |  |
| 8 | SN_FK | VARCHAR2 | N |  |

---

## DBAPORTAL.VW_FILAS_CC_HEANA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ATENDIMENTO | NUMBER | Y |  |
| 2 | CD_AVISO_CIRURGIA | NUMBER | N |  |
| 3 | DATA_REALIZACAO | DATE | Y |  |
| 4 | NOME_COMPLETO | VARCHAR2 | Y |  |
| 5 | SEXO | VARCHAR2 | Y |  |
| 6 | DATA_NASCIMENTO | VARCHAR2 | Y |  |
| 7 | IDADE | VARCHAR2 | Y |  |
| 8 | CLASSIFICACAO_CIRURGICA | VARCHAR2 | Y |  |
| 9 | DS_SAL_CIR | VARCHAR2 | Y |  |
| 10 | ASA | VARCHAR2 | Y |  |
| 11 | HORARIO_ENTRADA | VARCHAR2 | Y |  |
| 12 | INICIO_ANESTESIA | VARCHAR2 | Y |  |
| 13 | INICIO_CIRURGIA | VARCHAR2 | Y |  |
| 14 | FIM_CIRURGIA | VARCHAR2 | Y |  |
| 15 | FIM_ANESTESIA | VARCHAR2 | Y |  |
| 16 | INICIO_LIMPEZA | VARCHAR2 | Y |  |
| 17 | FIM_LIMPEZA | VARCHAR2 | Y |  |
| 18 | TEMPO_ENTRADA_ANESTESIA | VARCHAR2 | Y |  |
| 19 | TEMPO_ANESTESIA_CIRURGIA | VARCHAR2 | Y |  |
| 20 | TEMPO_CIRURGIA | VARCHAR2 | Y |  |
| 21 | TEMPO_POS_CIRURGIA | VARCHAR2 | Y |  |
| 22 | TEMPO_ESPERA_LIMPEZA | VARCHAR2 | Y |  |
| 23 | TEMPO_LIMPEZA | VARCHAR2 | Y |  |
| 24 | MEDICOS | VARCHAR2 | Y |  |

---

## DBAPORTAL.VW_HOSPITAL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | HOSPITAL_ID | NUMBER | N |  |
| 2 | DS_RAZAO | VARCHAR2 | Y |  |
| 3 | DS_ENDERECO | VARCHAR2 | Y |  |
| 4 | DS_JUNTA | VARCHAR2 | Y |  |
| 5 | CD_CGC | NUMBER | Y |  |
| 6 | CD_IEST | VARCHAR2 | Y |  |
| 7 | DS_TITULAR | VARCHAR2 | Y |  |
| 8 | CD_CPF_TITULAR | NUMBER | Y |  |
| 9 | DS_NOME_CONTADOR | VARCHAR2 | Y |  |
| 10 | CD_CPF_CONTADOR | NUMBER | Y |  |
| 11 | CD_MES_EM_USO | NUMBER | Y |  |
| 12 | CD_ANO_EM_USO | NUMBER | Y |  |
| 13 | CD_HOSPITAL | VARCHAR2 | Y |  |
| 14 | CD_CIDADE | NUMBER | N |  |
| 15 | DS_RODAPE_REPORTS | VARCHAR2 | Y |  |
| 16 | SN_CD_CIDADANIA | VARCHAR2 | N |  |
| 17 | SN_CD_CIDADE | VARCHAR2 | N |  |
| 18 | SN_CD_CLA_ECO | VARCHAR2 | N |  |
| 19 | SN_CD_DIS_SAN | VARCHAR2 | N |  |
| 20 | SN_CD_GRAU_INS | VARCHAR2 | N |  |
| 21 | SN_CD_PROFISSAO | VARCHAR2 | N |  |
| 22 | SN_CD_RELIGIAO | VARCHAR2 | N |  |
| 23 | SN_DS_TRABALHO | VARCHAR2 | N |  |
| 24 | SN_NM_MNEMONICO | VARCHAR2 | N |  |
| 25 | SN_TP_COR | VARCHAR2 | N |  |
| 26 | CD_NIVEL_HOSPITAL | VARCHAR2 | Y |  |
| 27 | CD_UNIDADE | VARCHAR2 | Y |  |
| 28 | DS_ORGAO_DESTINO | VARCHAR2 | Y |  |
| 29 | DS_TIPO_ORGAO | VARCHAR2 | Y |  |
| 30 | SN_CD_TIP_MOR | VARCHAR2 | Y |  |
| 31 | DS_ORGAO_MUNICIPAL | VARCHAR2 | Y |  |
| 32 | DS_ORGAO_ESTADUAL | VARCHAR2 | Y |  |
| 33 | DS_FANTASIA | VARCHAR2 | Y |  |
| 34 | NR_TELEFONE_FFCV | VARCHAR2 | Y |  |
| 35 | CD_UF | VARCHAR2 | Y |  |
| 36 | TP_DEFAULT_SAIDA_REPORTS | VARCHAR2 | Y |  |
| 37 | TP_DEFAULT_IMPRESSAO_REPORTS | VARCHAR2 | Y |  |
| 38 | NM_PRODUTO_MV | VARCHAR2 | Y |  |
| 39 | NR_FONE_FAX | VARCHAR2 | Y |  |
| 40 | SN_NM_PACIENTE_FFAS | VARCHAR2 | Y |  |
| 41 | SN_CD_PRO_INT | VARCHAR2 | N |  |
| 42 | SN_TIPO_INTERNACAO | VARCHAR2 | Y |  |
| 43 | CD_TIP_RES | NUMBER | Y |  |
| 44 | SN_CHEGA_PENDENCIA | VARCHAR2 | N |  |
| 45 | DS_CAMINHO_LOG_EXPORT_ATENDIME | VARCHAR2 | Y |  |
| 46 | SN_CD_RES_LEI | VARCHAR2 | N |  |
| 47 | ORGAO_LOCAL_AIH | NUMBER | Y |  |
| 48 | SN_CD_EMPRESA_CARTEIRA | VARCHAR2 | N |  |
| 49 | LOGOTIPO | LONG RAW | Y |  |
| 50 | SN_IMPRIME_LOGOTIPO | VARCHAR2 | Y |  |
| 51 | SN_CID_INTERNACAO | VARCHAR2 | N |  |
| 52 | SN_ENCAIXE_HORARIO_AUT | VARCHAR2 | N |  |
| 53 | SN_PRIMEIRO_ATEND | VARCHAR2 | N |  |
| 54 | SN_DATA_HORA_ATEND | VARCHAR2 | N |  |
| 55 | SN_CHECA_PAC_SUS | VARCHAR2 | N |  |
| 56 | SN_UTILIZA_INTERNET | VARCHAR2 | N |  |
| 57 | DS_NOMECLATURA_DA_PRESCRICAO | VARCHAR2 | N |  |
| 58 | SN_EMAIL_ORDEM_SO_DEPOIS_AUTOR | VARCHAR2 | N |  |
| 59 | NR_DIAS_MENOR | NUMBER | Y |  |
| 60 | NR_DIAS_MAIOR | NUMBER | Y |  |
| 61 | NR_INICIO_POSICAO | NUMBER | Y |  |
| 62 | NR_QUANT_CARACTER | NUMBER | Y |  |
| 63 | SISTEMA_OPERACIONAL | VARCHAR2 | Y |  |
| 64 | SN_TIPO_LIVRE | VARCHAR2 | N |  |
| 65 | SN_PREENCHE_RESPONSAVEL | VARCHAR2 | N |  |
| 66 | CD_CONVENIO_PROPRIO | NUMBER | Y |  |
| 67 | CD_TIPO_GUIA_PARA | NUMBER | Y |  |
| 68 | CD_TIPO_GUIA_PAEU | NUMBER | Y |  |
| 69 | CD_TIPO_GUIA_PARI | NUMBER | Y |  |
| 70 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 71 | SN_TOTALIZA_DADOS_MULTIEMPRESA | VARCHAR2 | N |  |
| 72 | DT_TEMPO_LIMPEZA_LEITO | DATE | Y |  |
| 73 | SN_IMPRIME_LAUDO_REEMITIDO | VARCHAR2 | Y |  |
| 74 | SN_BOTAO_ESCOLHE_LEITO | VARCHAR2 | N |  |
| 75 | NR_PAGINAS_LAUDO_PSSD | VARCHAR2 | Y |  |
| 76 | DS_DIR_DOCS_PSDI | VARCHAR2 | Y |  |
| 77 | SN_ABRE_MODAL | VARCHAR2 | N |  |
| 78 | DS_DIR_IMP_ZELADORIA | VARCHAR2 | Y |  |
| 79 | SN_IMP_SOLIC_EXAME | VARCHAR2 | N |  |
| 80 | SN_IMP_SOLIC_SANGUE | VARCHAR2 | N |  |
| 81 | SN_IMP_SOLIC_ZELADORIA | VARCHAR2 | N |  |
| 82 | SN_IMP_AVISO_ALTA | VARCHAR2 | N |  |
| 83 | SN_IMP_AVISO_ALTA_MEDICA | VARCHAR2 | N |  |
| 84 | SN_IMP_AVISO_TRANSF | VARCHAR2 | N |  |
| 85 | SN_IMP_AVISO_CIRURGIA | VARCHAR2 | N |  |
| 86 | SN_IMP_AVISO_ISOLAMENTO | VARCHAR2 | N |  |

---

## DBAPORTAL.VW_INICIATIVA_ACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INICIATIVA_ACAO | NUMBER | N |  |
| 2 | DS_TITULO | VARCHAR2 | N |  |
| 3 | DS_INICIATIVA_ACAO | CLOB | Y |  |
| 4 | TP_INICIATIVA_ACAO | VARCHAR2 | Y |  |
| 5 | DT_CRIACAO | DATE | N |  |
| 6 | DT_INICIO | DATE | Y |  |
| 7 | DT_TERMINO | DATE | Y |  |
| 8 | DT_INICIO_PREVISTA | DATE | Y |  |
| 9 | DT_TERMINO_PREVISTA | DATE | Y |  |
| 10 | TP_SITUACAO | VARCHAR2 | Y |  |
| 11 | VL_PERC_PROGRESSO | VARCHAR2 | Y |  |
| 12 | DS_DURACAO | VARCHAR2 | Y |  |
| 13 | VL_ORCAMENTO | NUMBER | Y |  |
| 14 | VL_CUSTO | NUMBER | Y |  |
| 15 | CD_INICIATIVA_ACAO_PAI | NUMBER | Y |  |
| 16 | CD_PESSOA | NUMBER | N |  |
| 17 | TP_PUBLICACAO | NUMBER | Y |  |
| 18 | DS_COMPETENCIA | VARCHAR2 | Y |  |
| 19 | CD_FICHA_IVM | NUMBER | Y |  |
| 20 | CD_IVM | VARCHAR2 | Y |  |
| 21 | CD_SOLICITANTE | NUMBER | Y |  |
| 22 | CD_REG_EVENTO_SENT | NUMBER | Y |  |
| 23 | TP_DURACAO | NUMBER | Y |  |
| 24 | VL_DIA_ANTECEDENCIA | NUMBER | Y |  |
| 25 | DS_RESULTADOS | CLOB | Y |  |
| 26 | DS_PROBLEMAS | CLOB | Y |  |
| 27 | DS_ACOES | CLOB | Y |  |
| 28 | CD_CENTRO_CUSTO | NUMBER | Y |  |
| 29 | CD_DIVISAO_SETOR | NUMBER | Y |  |
| 30 | CD_SUBDIVISAO_SETOR | NUMBER | Y |  |
| 31 | CD_GRUPO_ANALISE | NUMBER | Y |  |
| 32 | CD_CENTRO_RESP | NUMBER | Y |  |
| 33 | CD_ORGANIZACAO | NUMBER | Y |  |
| 34 | CD_GESTAO | NUMBER | Y |  |
| 35 | DS_CD_INICIATIVA_ACAO | VARCHAR2 | Y |  |
| 36 | CD_RESPONSAVEL | NUMBER | Y |  |
| 37 | TP_ATIVIDADE | VARCHAR2 | Y |  |
| 38 | NR_SEQUENCIA | VARCHAR2 | Y |  |
| 39 | NR_IMPORTANCIA | NUMBER | Y |  |

---

## DBAPORTAL.VW_JOBS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | PROCESSO | NUMBER | N |  |
| 2 | ULTIMA_DATA | VARCHAR2 | Y |  |
| 3 | PROXIMA_DATA | VARCHAR2 | Y |  |
| 4 | BLOQUEIO | VARCHAR2 | Y |  |
| 5 | INTERVALO | VARCHAR2 | Y |  |
| 6 | FALHA | NUMBER | Y |  |
| 7 | CODIGO_SQL | VARCHAR2 | Y |  |

---

## DBAPORTAL.VW_MENSAGEM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DS_ASSUNTO | VARCHAR2 | N |  |
| 2 | DT_MENSAGEM | DATE | N |  |
| 3 | CD_USUARIO | VARCHAR2 | N | Codigo do Usuario |
| 4 | CD_MENSAGEM | NUMBER | N |  |

---

## DBAPORTAL.VW_MODULOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MODULO | VARCHAR2 | N |  |
| 2 | NM_MODULO | VARCHAR2 | N |  |
| 3 | TP_MODULO | VARCHAR2 | N |  |
| 4 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 5 | CD_CLIENTE | NUMBER | Y |  |
| 6 | CD_HELP | NUMBER | Y |  |
| 7 | DT_CRIACAO | DATE | N |  |
| 8 | CD_SISTEMA_DONO | VARCHAR2 | Y |  |

---

## DBAPORTAL.VW_MODULOS_IMPRESSORA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MODULO | VARCHAR2 | N |  |
| 2 | DS_IMPRESSORA | VARCHAR2 | N |  |
| 3 | NR_COPIAS | NUMBER | N |  |
| 4 | TP_IMPRESSAO | VARCHAR2 | N |  |

---

## DBAPORTAL.VW_MOD_SIS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SISTEMA | VARCHAR2 | N |  |
| 2 | CD_MODULO | VARCHAR2 | N |  |
| 3 | CD_HELP | NUMBER | Y |  |

---

## DBAPORTAL.VW_MULTI_EMPRESA

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
| 21 | NM_BAIRRO | VARCHAR2 | Y |  |
| 22 | NR_CEP | VARCHAR2 | Y |  |
| 23 | CD_PRESTADOR_AIH | NUMBER | Y |  |
| 24 | SN_NR_AIH | VARCHAR2 | Y |  |
| 25 | SN_PERMANENCIA_IDADE | VARCHAR2 | Y |  |
| 26 | SN_PSICO_AUTO_VIRADA_MES | VARCHAR2 | Y |  |
| 27 | CD_NATUREZA_HOSPITALAR | NUMBER | Y |  |
| 28 | CD_PRESTADOR_DIR_CLINICO | NUMBER | Y |  |
| 29 | AIH_INICIAL | NUMBER | Y |  |
| 30 | AIH_FINAL | NUMBER | Y |  |
| 31 | DT_ATUALIZACAO_DATASUS | DATE | Y |  |
| 32 | VERSAO_ATUALIZACAO | VARCHAR2 | Y |  |
| 33 | VERSAO_TABELAS | VARCHAR2 | Y |  |
| 34 | SN_INTERCORRENCIA_IGUAL | VARCHAR2 | N |  |
| 35 | CD_PRESTADOR_DIR_ADMIN | NUMBER | Y |  |
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

---

## DBAPORTAL.VW_PAPEL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PAPEL | NUMBER | N |  |
| 2 | DS_PAPEL | VARCHAR2 | N |  |

---

## DBAPORTAL.VW_PAPEL_MOD

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PAPEL | NUMBER | N |  |
| 2 | CD_MODULO | VARCHAR2 | N |  |

---

## DBAPORTAL.VW_PAPEL_TAB

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PAPEL | NUMBER | N |  |
| 2 | CD_TABELA | VARCHAR2 | N |  |
| 3 | SN_INCLUSAO | VARCHAR2 | N |  |
| 4 | SN_ALTERACAO | VARCHAR2 | N |  |
| 5 | SN_CONSULTA | VARCHAR2 | N |  |
| 6 | SN_EXCLUSAO | VARCHAR2 | N |  |

---

## DBAPORTAL.VW_PRESTADOR

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

---

## DBAPORTAL.VW_QT_EXAMES_ULTIMOANO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 2 | DS_MULTI_EMPRESA | VARCHAR2 | N |  |
| 3 | ANO | NUMBER | N |  |
| 4 | MES | VARCHAR2 | N |  |
| 5 | DS_EXAME | VARCHAR2 | Y |  |
| 6 | TP_EXAME | VARCHAR2 | Y |  |
| 7 | DS_TP_EXAME | VARCHAR2 | Y |  |
| 8 | QT_EXAME | NUMBER | Y |  |

---

## DBAPORTAL.VW_QT_EXAMES_ULTIMOMES

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MULTI_EMPRESA | NUMBER | Y |  |
| 2 | DS_MULTI_EMPRESA | VARCHAR2 | Y |  |
| 3 | ANO | NUMBER | Y |  |
| 4 | MES | VARCHAR2 | Y |  |
| 5 | ID_EXAME | NUMBER | Y |  |
| 6 | DS_EXAME | VARCHAR2 | Y |  |
| 7 | TP_EXAME | VARCHAR2 | Y |  |
| 8 | DS_TP_EXAME | VARCHAR2 | Y |  |
| 9 | ER_HOJE | NUMBER | Y |  |
| 10 | ER_ONTEM | NUMBER | Y |  |
| 11 | ER_ULT7DIAS | NUMBER | Y |  |
| 12 | ER_ULT30DIAS | NUMBER | Y |  |
| 13 | ER_MED30DIAS | NUMBER | Y |  |
| 14 | ES_HOJE | NUMBER | Y |  |
| 15 | ES_ONTEM | NUMBER | Y |  |
| 16 | ES_ULT7DIAS | NUMBER | Y |  |
| 17 | ES_ULT30DIAS | NUMBER | Y |  |
| 18 | ES_MED30DIAS | NUMBER | Y |  |

---

## DBAPORTAL.VW_SISTEMA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SISTEMA | VARCHAR2 | N |  |
| 2 | NM_SISTEMA | VARCHAR2 | N |  |
| 3 | TP_PLATAFORMA | VARCHAR2 | Y |  |

---

## DBAPORTAL.VW_TABELAS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TABELA | VARCHAR2 | N |  |
| 2 | DS_TABELA | VARCHAR2 | N |  |
| 3 | TP_CLASSE | VARCHAR2 | Y |  |
| 4 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 5 | OWNER | VARCHAR2 | N |  |
| 6 | NM_TRIGGER_AUDITORIA | VARCHAR2 | Y |  |
| 7 | SN_AUDITORIA | VARCHAR2 | Y |  |

---

## DBAPORTAL.VW_USUARIOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_USUARIO | VARCHAR2 | N |  |
| 2 | NM_USUARIO | VARCHAR2 | N |  |
| 3 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 4 | RAMAL | VARCHAR2 | Y |  |
| 5 | TP_PRIVILEGIO | VARCHAR2 | N |  |
| 6 | NR_ID_USUARIO | NUMBER | Y |  |
| 7 | CD_SENHA | VARCHAR2 | N |  |
| 8 | CD_PAPEL | NUMBER | Y |  |
| 9 | TP_STATUS | VARCHAR2 | Y |  |
| 10 | CD_PRESTADOR | NUMBER | Y |  |
| 11 | USER_ID_ORA_APP | NUMBER | Y |  |
| 12 | SN_ATIVO | VARCHAR2 | N |  |

---

## DBAPORTAL.V_ATENDIMENTOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DS_ESPECIALID | VARCHAR2 | Y |  |
| 2 | DS_TIP_MAR | VARCHAR2 | Y |  |
| 3 | DS_UNID_INT | VARCHAR2 | Y |  |
| 4 | MESES | VARCHAR2 | Y |  |
| 5 | QTD_ATENDIMENTOS | NUMBER | Y |  |
| 6 | ANO | VARCHAR2 | Y |  |
| 7 | TIPO_ATENDIMENTO | VARCHAR2 | Y |  |
| 8 | TP_ATENDIMENTO | VARCHAR2 | N |  |
| 9 | STATUS_INTERNACAO | VARCHAR2 | Y |  |

---

## DBAPORTAL.V_HEANA_PREST_CONV_ESPECI

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | TP_ATENDIMENTO | VARCHAR2 | Y |  |
| 2 | SEXO | VARCHAR2 | Y |  |
| 3 | DT_ATENDIMENTO | VARCHAR2 | Y |  |
| 4 | DIA | VARCHAR2 | Y |  |
| 5 | MES | VARCHAR2 | Y |  |
| 6 | ANO | VARCHAR2 | Y |  |
| 7 | COD_EMPRESA | NUMBER | N |  |
| 8 | CD_PACIENTE | NUMBER | N |  |
| 9 | NM_PACIENTE | VARCHAR2 | N |  |
| 10 | CD_ESPECIALID | NUMBER | N |  |
| 11 | DS_ESPECIALID | VARCHAR2 | N |  |
| 12 | CD_CONVENIO | NUMBER | N |  |
| 13 | NM_CONVENIO | VARCHAR2 | N |  |
| 14 | CD_PRESTADOR | NUMBER | N |  |
| 15 | NM_PRESTADOR | VARCHAR2 | N |  |
| 16 | QTD_ATENDIMENTO | NUMBER | Y |  |

---

## DBAPORTAL.WORKFLOW_OCORRENCIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_WORKFLOW_OCORRENCIA | NUMBER | N |  |
| 2 | SN_ATIVO | VARCHAR2 | Y |  |
| 3 | NM_WORKFLOW_OCORRENCIA | VARCHAR2 | Y |  |

---

## FAROL.FR_ROTATE_CONTROL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DT_LAST_ROTATE | DATE | Y |  |
| 2 | QTD_BYTES | NUMBER | Y |  |

---

## FAROL.TK_DB_AREA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | TIMESTAMP | DATE | N |  |
| 2 | AREA_ALLOCATED_BYTES | NUMBER | N |  |
| 3 | DB_NAME | VARCHAR2 | N |  |

---

## FAROL.TK_DB_PARAMETER_AUDIT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | INST_ID | NUMBER | N |  |
| 2 | INSTANCE_NAME | VARCHAR2 | N |  |
| 3 | NAME | VARCHAR2 | N |  |
| 4 | PREVIOUS_VALUE | VARCHAR2 | Y |  |
| 5 | VALUE | VARCHAR2 | Y |  |
| 6 | ISDEFAULT | VARCHAR2 | Y |  |
| 7 | TIMESTAMP | DATE | N |  |
| 8 | ISMODIFIED | VARCHAR2 | Y |  |
| 9 | STATUS | VARCHAR2 | N |  |
| 10 | ISHIDDEN | NUMBER | N |  |
| 11 | DB_NAME | VARCHAR2 | N |  |

---

## FAROL.TK_DB_PHYSICAL_AREA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | TIMESTAMP | DATE | Y |  |
| 2 | AREA_ALLOCATED_BYTES | NUMBER | Y |  |
| 3 | DB_NAME | VARCHAR2 | N |  |

---

## FAROL.TK_FAROLINSTALLER_LOCK

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | SESSION_ID | NUMBER | Y |  |

---

## FAROL.TK_GATHER_STATS_PARAMETERS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | OWNER | VARCHAR2 | N |  |
| 2 | TABLE_NAME | VARCHAR2 | Y |  |
| 3 | INDEX_NAME | VARCHAR2 | Y |  |
| 4 | TYPE_REGISTER | VARCHAR2 | N | Indica se o registro inserido nesta tabela foi manual ou autom¿ticamente via a procedure TK_GATHE... |
| 5 | DB9I_TAB_MONITOR | VARCHAR2 | N | Monitora opera¿¿es na tabela - TAB_MODIFICATION (Aplicado apenas para banco 9i ou inferior). |
| 6 | DB9I_IDX_MONITOR | VARCHAR2 | N | Monitora utiliza¿¿o dos ¿ndices (Aplicado apenas para banco 9i ou inferior). |
| 7 | ESTIMATE_PERCENT | NUMBER | Y | Percentual de Coleta (Este valor ¿ desconsiderado quando o campo 9I_STS_METHOD ¿ definido com o v... |
| 8 | BLOCK_SAMPLE | VARCHAR2 | N | Amostras |
| 9 | METHOD_OPT | VARCHAR2 | N | Define o n¿mero de buckets (histograma) o valor defaul ¿ SEM HISTOGRAMA. |
| 10 | DEGREE | NUMBER | Y | Define o n¿vel de paralelismo que ser¿ utilizado para coleta das estatisticas) |
| 11 | GRANULARITY | VARCHAR2 | N | Coleta tabelas, pati¿¿es e subparti¿¿es |
| 12 | CASCADE | VARCHAR2 | N | Todos os indices da tabela |
| 13 | STATOWN | VARCHAR2 | Y | Owner onde a tabela STATTAB foi criada. |
| 14 | STATTAB | VARCHAR2 | Y | Tabela utilizada para Salvar as estatisticas antes de fazer nova coleta.Por default n¿o faz! |
| 15 | STATID | VARCHAR2 | Y | Cria um Id de identifica¿¿o na tabela STATTAB para identificar cada coleta |
| 16 | OPTIONS | VARCHAR2 | N | A op¿¿o GATHER forca a coleta da estatistica a cada execu¿¿o. A op¿¿o GATHER STALE, faz a coleta ... |
| 17 | NO_INVALIDATE | VARCHAR2 | N | Nao invalida cursor em mem¿ria |
| 18 | GATHER_TEMP | VARCHAR2 | N | Gera estatisticas para tabelas temporarias com preserve on commit |
| 19 | GATHER_FIXED | VARCHAR2 | N | Nao gera estatisticas de tabelas do dicionario (Default) |
| 20 | STATTYPE | VARCHAR2 | N | Indica qual o n¿vel de dados que teram a coleta de estatisticas (all,cache e data) |
| 21 | BLOCKED | VARCHAR2 | Y | Usado para Bloquear a coleta de estatistica.(S ou N) |
| 22 | LAST_BEGIN_COLLECTION | DATE | Y | Data de inicio da ¿ltima coleta de estatistica. |
| 23 | LAST_END_COLLECTION | DATE | Y | Data de termino da ¿ltima coleta de estatistica. |
| 24 | STATUS_COLLECTION | VARCHAR2 | Y | Status da ¿ltima coleta de estatistica. |

---

## FAROL.TK_INFO_DATABASE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DB_NAME | VARCHAR2 | N |  |
| 2 | CREATED | DATE | N |  |
| 3 | ISCLUSTER | VARCHAR2 | Y |  |
| 4 | LOG_MODE | VARCHAR2 | Y |  |
| 5 | HOSTNAME | VARCHAR2 | Y |  |
| 6 | INSTANCE_NUMBER | NUMBER | Y |  |
| 7 | INSTANCE_NAME | VARCHAR2 | Y |  |
| 8 | VERSION | VARCHAR2 | Y |  |
| 9 | VERSION_EDITION | VARCHAR2 | Y |  |
| 10 | TIMESTAMP | DATE | N |  |

---

## FAROL.TK_INFO_FAROL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | VERSAO | VARCHAR2 | N |  |
| 2 | DATA_ATUALIZACAO | DATE | N |  |

---

## FAROL.TK_LOCK_HOLD_COLLECTION

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | LOCK_ID | NUMBER | Y |  |
| 2 | INSTANCE_NUMBER | NUMBER | Y |  |
| 3 | INSTANCE_NAME | VARCHAR2 | Y |  |
| 4 | SID | NUMBER | Y |  |
| 5 | SERIAL# | NUMBER | Y |  |
| 6 | USERNAME | VARCHAR2 | Y |  |
| 7 | OSUSER | VARCHAR2 | Y |  |
| 8 | SPID | VARCHAR2 | Y |  |
| 9 | MACHINE | VARCHAR2 | Y |  |
| 10 | PROGRAM | VARCHAR2 | Y |  |
| 11 | MODULE | VARCHAR2 | Y |  |
| 12 | ACTION | VARCHAR2 | Y |  |
| 13 | STATUS | VARCHAR2 | Y |  |
| 14 | EVENT | VARCHAR2 | Y |  |
| 15 | LMODE | NUMBER | Y |  |
| 16 | TYPE | VARCHAR2 | Y |  |
| 17 | LOGON_TIME | DATE | Y |  |
| 18 | TIMESTAMP | DATE | Y |  |
| 19 | LH_DATE | DATE | Y |  |
| 20 | IS_ACTIVE | NUMBER | N |  |
| 21 | DB_NAME | VARCHAR2 | N |  |

---

## FAROL.TK_LOCK_WAIT_COLLECTION

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | LOCK_ID | NUMBER | Y |  |
| 2 | INSTANCE_NUMBER | NUMBER | Y |  |
| 3 | INSTANCE_NAME | VARCHAR2 | Y |  |
| 4 | SID | NUMBER | Y |  |
| 5 | SERIAL# | NUMBER | Y |  |
| 6 | USERNAME | VARCHAR2 | Y |  |
| 7 | OSUSER | VARCHAR2 | Y |  |
| 8 | SPID | VARCHAR2 | Y |  |
| 9 | MACHINE | VARCHAR2 | Y |  |
| 10 | PROGRAM | VARCHAR2 | Y |  |
| 11 | MODULE | VARCHAR2 | Y |  |
| 12 | ACTION | VARCHAR2 | Y |  |
| 13 | STATUS | VARCHAR2 | Y |  |
| 14 | EVENT | VARCHAR2 | Y |  |
| 15 | SQL_ADDRESS | RAW | Y |  |
| 16 | SQL_HASH_VALUE | NUMBER | Y |  |
| 17 | TABLE_OWNER | VARCHAR2 | Y |  |
| 18 | TABLE_NAME | VARCHAR2 | Y |  |
| 19 | REQUEST | NUMBER | Y |  |
| 20 | TYPE | VARCHAR2 | Y |  |
| 21 | LOGON_TIME | DATE | Y |  |
| 22 | SECONDS_IN_WAIT | NUMBER | Y |  |
| 23 | TIMESTAMP | DATE | Y |  |
| 24 | LW_DATE | DATE | Y |  |
| 25 | OBJECT_ID | NUMBER | Y |  |
| 26 | WAIT_ID | NUMBER | N |  |
| 27 | DB_NAME | VARCHAR2 | N |  |
| 28 | IS_EXCLUDE_COLLECTION | NUMBER | N |  |

---

## FAROL.TK_LOGON_TMP_COLLECTION

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | INSTANCE_NUMBER | NUMBER | Y |  |
| 2 | INSTANCE_NAME | VARCHAR2 | Y |  |
| 3 | USERNAME | VARCHAR2 | Y |  |
| 4 | OSUSER | VARCHAR2 | Y |  |
| 5 | MODULE | VARCHAR2 | Y |  |
| 6 | PROGRAM | VARCHAR2 | Y |  |
| 7 | TIMESTAMP | DATE | Y |  |
| 8 | MACHINE | VARCHAR2 | Y |  |
| 9 | DB_NAME | VARCHAR2 | N |  |
| 10 | SID | NUMBER | Y |  |
| 11 | SERIAL# | NUMBER | Y |  |
| 12 | LOGON_TIME | DATE | Y |  |

---

## FAROL.TK_PROGRAM_LOCK

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NM_PROGRAM | VARCHAR2 | N |  |
| 2 | NM_DATABASE | VARCHAR2 | N |  |
| 3 | LAST_EXECUTION | DATE | Y |  |
| 4 | SESSION_ID | NUMBER | Y |  |

---

## FAROL.TK_RMAN_BACKUP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | STAMP | NUMBER | N |  |
| 2 | RECID | NUMBER | N |  |
| 3 | OUTPUT_STAMP | NUMBER | Y |  |
| 4 | OUTPUT_RECID | NUMBER | Y |  |

---

## FAROL.TK_SEGTYPE_GROWTH_M_HIST

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | OWNER | VARCHAR2 | Y |  |
| 2 | TABLE_NAME | VARCHAR2 | Y |  |
| 3 | INDEX_NAME | VARCHAR2 | Y |  |
| 4 | PARTITION_NAME | VARCHAR2 | Y |  |
| 5 | SEGMENT_NAME | VARCHAR2 | Y |  |
| 6 | SEGMENT_TYPE | VARCHAR2 | Y |  |
| 7 | TABLESPACE_NAME | VARCHAR2 | Y |  |
| 8 | NR_ROWS | NUMBER | Y |  |
| 9 | BYTES | NUMBER | Y |  |
| 10 | EXTENTS | NUMBER | Y |  |
| 11 | LAST_ANALYZED | DATE | Y |  |
| 12 | TIMESTAMP | DATE | Y |  |
| 13 | IS_END_COLLECT | NUMBER | Y |  |
| 14 | DB_NAME | VARCHAR2 | N |  |

---

## FAROL.TK_SEGTYPE_RANK_SUM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DATA | VARCHAR2 | Y |  |
| 2 | OWNER | VARCHAR2 | Y |  |
| 3 | TABLE_NAME | VARCHAR2 | Y |  |
| 4 | INDEX_NAME | VARCHAR2 | Y |  |
| 5 | SEGMENT_NAME | VARCHAR2 | Y |  |
| 6 | SEGMENT_TYPE | VARCHAR2 | Y |  |
| 7 | TABLESPACE_NAME | VARCHAR2 | Y |  |
| 8 | NR_ROWS | NUMBER | Y |  |
| 9 | BYTES | NUMBER | Y |  |
| 10 | NR_EXTENTS | NUMBER | Y |  |
| 11 | GROWTH_MONTH_ROWS | NUMBER | Y |  |
| 12 | GROWTH_MONTH_ROWS_PCT | NUMBER | Y |  |
| 13 | GROWTH_MONTH_BYTES | NUMBER | Y |  |
| 14 | GROWTH_MONTH_BYTES_PCT | NUMBER | Y |  |
| 15 | REF_DB_BYTES_PCT | NUMBER | Y |  |
| 16 | REF_DB_NR_ROWS_PCT | NUMBER | Y |  |
| 17 | DB_NAME | VARCHAR2 | N |  |

---

## FAROL.TK_SEGTYPE_RANK_TMP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DATA | VARCHAR2 | Y |  |
| 2 | OWNER | VARCHAR2 | Y |  |
| 3 | TABLE_NAME | VARCHAR2 | Y |  |
| 4 | INDEX_NAME | VARCHAR2 | Y |  |
| 5 | SEGMENT_NAME | VARCHAR2 | Y |  |
| 6 | SEGMENT_TYPE | VARCHAR2 | Y |  |
| 7 | TABLESPACE_NAME | VARCHAR2 | Y |  |
| 8 | TYPE_INFO | NUMBER | Y |  |
| 9 | NR_ROWS | NUMBER | Y |  |
| 10 | BYTES | NUMBER | Y |  |
| 11 | NR_EXTENTS | NUMBER | Y |  |
| 12 | GROWTH_MONTH_ROWS | NUMBER | Y |  |
| 13 | GROWTH_MONTH_ROWS_PCT | NUMBER | Y |  |
| 14 | GROWTH_MONTH_BYTES | NUMBER | Y |  |
| 15 | GROWTH_MONTH_BYTES_PCT | NUMBER | Y |  |
| 16 | REF_DB_BYTES_PCT | NUMBER | Y |  |
| 17 | REF_DB_NR_ROWS_PCT | NUMBER | Y |  |

---

## FAROL.TK_TOP_SESSIONS_COLLECTION

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | INSTANCE_NUMBER | NUMBER | N |  |
| 2 | INSTANCE_NAME | VARCHAR2 | N |  |
| 3 | SID | NUMBER | N |  |
| 4 | SERIAL# | NUMBER | N |  |
| 5 | USERNAME | VARCHAR2 | Y |  |
| 6 | OSUSER | VARCHAR2 | Y |  |
| 7 | MACHINE | VARCHAR2 | Y |  |
| 8 | MODULE | VARCHAR2 | N |  |
| 9 | LAST_CALL_ET | NUMBER | Y |  |
| 10 | SQL_ADDRESS | RAW | N |  |
| 11 | SQL_HASH_VALUE | NUMBER | N |  |
| 12 | TIMESTAMP | DATE | Y |  |
| 13 | PROGRAM | VARCHAR2 | Y |  |
| 14 | TIME_COMMAND | NUMBER | Y |  |
| 15 | IS_ACTIVE | NUMBER | N |  |
| 16 | SQL_ID | VARCHAR2 | Y |  |
| 17 | SQL_TEXT | CLOB | Y |  |
| 18 | DB_NAME | VARCHAR2 | N |  |
| 19 | IS_EXCLUDE_COLLECTION | NUMBER | N |  |

---

## FAROL.TK_WAITEVENTS_COLLECTION

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | INSTANCE_NUMBER | NUMBER | Y |  |
| 2 | INSTANCE_NAME | VARCHAR2 | Y |  |
| 3 | SID | NUMBER | Y |  |
| 4 | SERIAL# | NUMBER | Y |  |
| 5 | USERNAME | VARCHAR2 | Y |  |
| 6 | OSUSER | VARCHAR2 | Y |  |
| 7 | MODULE | VARCHAR2 | Y |  |
| 8 | PROGRAM | VARCHAR2 | Y |  |
| 9 | EVENT | VARCHAR2 | Y |  |
| 10 | OPTIMIZER_MODE | VARCHAR2 | Y |  |
| 11 | SQL_ADDRESS | RAW | Y |  |
| 12 | SQL_HASH_VALUE | NUMBER | Y |  |
| 13 | LAST_CALL_ET | NUMBER | Y |  |
| 14 | TIMESTAMP | DATE | Y |  |
| 15 | IS_ACTIVE | NUMBER | N |  |
| 16 | DB_NAME | VARCHAR2 | N |  |
| 17 | SQL_ID | VARCHAR2 | Y |  |
| 18 | SQL_TEXT | CLOB | Y |  |
| 19 | MACHINE | VARCHAR2 | Y |  |

---

## SESGO.BACKUP_TIP_PRESC_FLASHBACK

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIP_PRESC | NUMBER | N |  |
| 2 | CD_TIP_ESQ | VARCHAR2 | N |  |
| 3 | DS_TIP_PRESC | VARCHAR2 | N |  |
| 4 | CD_EXA_LAB | NUMBER | Y |  |
| 5 | CD_EXA_RX | NUMBER | Y |  |
| 6 | CD_PRODUTO | NUMBER | Y |  |
| 7 | CD_UNI_PRO | NUMBER | Y |  |
| 8 | SN_SOLICITACAO | VARCHAR2 | Y |  |
| 9 | CD_FOR_APL | VARCHAR2 | Y |  |
| 10 | CD_ESTOQUE | NUMBER | Y |  |
| 11 | CD_UNIDADE | VARCHAR2 | Y |  |
| 12 | CD_PRO_FAT | VARCHAR2 | Y |  |
| 13 | SN_FATURA | VARCHAR2 | Y |  |
| 14 | SN_ATIVO | VARCHAR2 | N |  |
| 15 | CD_TIP_FRE | NUMBER | Y |  |
| 16 | CD_TIPO_DIETA | VARCHAR2 | Y |  |
| 17 | SN_PADRONIZADO | VARCHAR2 | N |  |
| 18 | TP_PRE_MED | VARCHAR2 | N |  |
| 19 | CD_UNI_PRO_CONS | NUMBER | Y |  |
| 20 | NR_DIAS_ABERTO | NUMBER | Y |  |
| 21 | NR_HORAS_ABERTO | NUMBER | Y |  |
| 22 | CD_SANGUE_DERIVADOS | NUMBER | Y |  |
| 23 | SN_LIGA_DESLIGAR | VARCHAR2 | Y |  |
| 24 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 25 | NR_ORDEM_IMPRESSAO | NUMBER | Y |  |
| 26 | QT_MAXIMA_APLICACAO | NUMBER | Y |  |
| 27 | QT_PADRAO | NUMBER | Y |  |
| 28 | CD_PRESTADOR | NUMBER | Y |  |
| 29 | SN_ENTUBADO | VARCHAR2 | Y |  |
| 30 | SN_USO_SIMULTANEO | VARCHAR2 | Y |  |
| 31 | TP_TIP_PRESC | VARCHAR2 | N |  |
| 32 | TP_MODO_VERIFICA | VARCHAR2 | Y |  |
| 33 | SN_USO_CONTINUO | VARCHAR2 | N |  |
| 34 | TP_BALANCO | VARCHAR2 | Y |  |
| 35 | SN_IMPRIME_HORARIO | VARCHAR2 | N |  |
| 36 | SN_JUSTIFICATIVA | VARCHAR2 | N |  |
| 37 | SN_DIA_APLICACAO | VARCHAR2 | N |  |
| 38 | SN_ALERTA_DUPLICIDADE | VARCHAR2 | N |  |
| 39 | DS_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 40 | CD_UNI_PRO_INF | NUMBER | Y |  |
| 41 | TP_TEMPO | VARCHAR2 | N |  |
| 42 | CD_SUS | VARCHAR2 | Y |  |
| 43 | CD_SSM | VARCHAR2 | Y |  |
| 44 | SN_COPIA_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 45 | QT_TEMPO_ASSISTENCIA | NUMBER | Y |  |
| 46 | HR_EXAME | DATE | Y |  |
| 47 | CD_ITEM_AGENDAMENTO | NUMBER | Y |  |
| 48 | DS_OBS_ADICIONAL | VARCHAR2 | Y |  |
| 49 | CD_UNI_PRESC_INF | NUMBER | Y |  |
| 50 | HR_DURACAO | DATE | Y |  |
| 51 | DS_BLOQUEIO_PRESCRICAO | VARCHAR2 | Y |  |
| 52 | CD_UNI_PRESC | NUMBER | Y |  |
| 53 | CD_UNI_FAT | NUMBER | Y |  |
| 54 | CD_PROCEDIMENTO_SIA | VARCHAR2 | Y |  |
| 55 | CD_PROCEDIMENTO_SIH | VARCHAR2 | Y |  |
| 56 | SN_SOLIC_COMP_MESMO_ESTOQUE | VARCHAR2 | N |  |
| 57 | SN_BLOQUEIO_PRESCRICAO | VARCHAR2 | Y |  |
| 58 | CD_UNI_PRESC_MAXIMA | NUMBER | Y |  |
| 59 | CD_UNI_PRO_MAXIMA | NUMBER | Y |  |
| 60 | SN_JUSTIFICATIVA_CADASTRADA | VARCHAR2 | N |  |
| 61 | SN_FRACIONAR | VARCHAR2 | N |  |
| 62 | SN_LANCA_CONTA_CHECAGEM | VARCHAR2 | N |  |
| 63 | SN_OBRIGA_MATERIAL | VARCHAR2 | Y |  |
| 64 | CD_MATERIAL | NUMBER | Y |  |
| 65 | NR_DIAS_PADRAO | NUMBER | Y |  |
| 66 | QT_DOSE_PADRAO | NUMBER | Y |  |
| 67 | CD_PADRAO_FORMULA | NUMBER | Y |  |
| 68 | SN_DUPLA_CHECAGEM_DADO | VARCHAR2 | N |  |
| 69 | SN_DUPLA_CHECAGEM_NAO_DADO | VARCHAR2 | N |  |
| 70 | TP_PERMISSAO_INCLUSAO_COMPON | VARCHAR2 | N |  |
| 71 | SN_EXIGE_DILUENTE | VARCHAR2 | N |  |
| 72 | SN_DILUENTE | VARCHAR2 | N |  |
| 73 | SN_RECONSTITUINTE | VARCHAR2 | N |  |
| 74 | CD_OBSERVACAO_PREDEFINIDA | NUMBER | Y |  |
| 75 | SN_QTD_EDITAVEL | VARCHAR2 | N |  |
| 76 | CD_DISPOSITIVO | NUMBER | Y |  |
| 77 | CD_LOCAL_ANATOMICO_COLETA | NUMBER | Y |  |
| 78 | TP_VALIDA_CHECAGEM_DUPLICIDADE | VARCHAR2 | Y |  |
| 79 | NR_DIAS_CHECAGEM_DUPLICIDADE | NUMBER | Y |  |
| 80 | NR_HORAS_CHECAGEM_DUPLICIDADE | NUMBER | Y |  |
| 81 | QT_INFUSAO | NUMBER | Y |  |
| 82 | SN_SOMA_TOTAL_BALANCO | VARCHAR2 | Y |  |
| 83 | SN_HAB_LANC_UNIDADE | VARCHAR2 | Y |  |
| 84 | SN_TRAZER_COMPONENTE_RECOLHIDO | VARCHAR2 | Y |  |
| 85 | CD_CONFIG_EXIBICAO_ITEM_PRESC | NUMBER | Y |  |
| 86 | CD_NOME_EXIBICAO_COMPONENTES | NUMBER | Y |  |
| 87 | QTD_VOLUME_TOTAL | NUMBER | Y |  |
| 88 | CD_UNID_VOL_TOTAL | NUMBER | Y |  |
| 89 | TP_ISOLAMENTO_PACIENTE | VARCHAR2 | Y |  |
| 90 | CD_UNID_PRESC_VOL_TOTAL | NUMBER | Y |  |
| 91 | SN_CRONICO | VARCHAR2 | N |  |
| 92 | NR_DIAS_DURACAO | NUMBER | Y |  |
| 93 | NR_HORAS_DURACAO | NUMBER | Y |  |
| 94 | NR_MINUTOS_DURACAO | NUMBER | Y |  |
| 95 | CD_MULTI_EMPRESA | NUMBER | Y |  |
| 96 | SN_ITEM_AVULSO | VARCHAR2 | N |  |
| 97 | CD_CIRURGIA | NUMBER | Y |  |
| 98 | TP_VISUALIZACAO | VARCHAR2 | N |  |
| 99 | SN_PESQUISA_CIENTIFICA | VARCHAR2 | N |  |

---

## SESGO.DOCUMENTO_OBRIGATORIO_BKP_709

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DOCUMENTO | NUMBER | N |  |
| 2 | CD_MULTI_EMPRESA | NUMBER | Y |  |
| 3 | CD_SETOR | NUMBER | Y |  |
| 4 | CD_CONVENIO | NUMBER | Y |  |
| 5 | CD_TIP_ESQ | VARCHAR2 | Y |  |
| 6 | CD_TIP_PRESC | NUMBER | Y |  |
| 7 | CD_PROCESSO | VARCHAR2 | Y |  |
| 8 | CD_DET_PROCESSO | VARCHAR2 | Y |  |
| 9 | TP_FORMA_PREENCHIMENTO | VARCHAR2 | Y |  |
| 10 | SN_OBRIGATORIO | VARCHAR2 | N |  |
| 11 | CD_OBJETO | NUMBER | Y |  |
| 12 | TP_EDITOR | VARCHAR2 | Y |  |
| 13 | CD_MOT_ALT | NUMBER | Y |  |
| 14 | CD_TIP_RES | NUMBER | Y |  |
| 15 | QT_INTERVALO_DIAS | NUMBER | Y |  |
| 16 | CD_ESPECIALID | NUMBER | Y |  |
| 17 | SN_VALIDA_COMPONENTE | VARCHAR2 | Y |  |
| 18 | TP_SEXO | VARCHAR2 | Y |  |
| 19 | TP_ATENDIMENTO | VARCHAR2 | Y |  |
| 20 | NR_DIAS_DOCUMENTO_OBRIGATORIO | NUMBER | Y |  |
| 21 | NR_HORAS_DOCUMENTO_OBRIGATORIO | NUMBER | Y |  |
| 22 | NR_MINUTOS_DOCUMENTO_OBRIG | NUMBER | Y |  |
| 23 | CD_TIP_PRESTA | NUMBER | Y |  |
| 24 | SN_LIMITE_CONSULTA | VARCHAR2 | N |  |
| 25 | NR_VERSAO_EDITOR | NUMBER | Y |  |

---

## SESGO.EST_PRO_JEF

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRODUTO | NUMBER | Y |  |
| 2 | CD_ESTOQUE | NUMBER | Y |  |
| 3 | QT_ESTOQUE_MINIMO | NUMBER | Y |  |
| 4 | QT_ESTOQUE_MAXIMO | NUMBER | Y |  |
| 5 | QT_PONTO_DE_PEDIDO | NUMBER | Y |  |

---

## SESGO.FABRICANTE_CORA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRODUTO_MV | NUMBER | Y |  |
| 2 | MARCA | VARCHAR2 | Y |  |
| 3 | DE_PARA_MV | VARCHAR2 | Y |  |

---

## SESGO.FABRICANTE_CORAM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRODUTO_MV | NUMBER | Y |  |
| 2 | MARCA | VARCHAR2 | Y |  |
| 3 | DE_PARA_MV | VARCHAR2 | Y |  |

---

## SESGO.FABRICANTE_CORAMA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRODUTO_MV | NUMBER | Y |  |
| 2 | MARCA | VARCHAR2 | Y |  |
| 3 | DE_PARA_MV | VARCHAR2 | Y |  |

---

## SESGO.ITEM_PRESC

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CODIGO | NUMBER | Y |  |
| 2 | DESCRICAO | VARCHAR2 | Y |  |

---

## SESGO.LISTA_PAPEL_JEF

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SISTEMA | VARCHAR2 | Y |  |
| 2 | CD_MODULO | VARCHAR2 | Y |  |

---

## SESGO.LOG_INDICADORES_HOSPITALARES
> Log de execução de indicadores hospitalares (parâmetros, tempo, usuário, data/hora).

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Chave primária (povoada por SEQ_LOG_INDICADORES.NEXTVAL) |
| 2 | NOME_INDICADOR | VARCHAR2 | N | Nome do indicador executado |
| 3 | PARAMETROS | CLOB | Y | Parâmetros de entrada (JSON, texto, etc.) |
| 4 | LINHAS_RETORNADAS | NUMBER | Y | Qtde de linhas retornadas pela consulta do indicador |
| 5 | TEMPO_EXECUCAO | NUMBER | Y | Tempo de execução (ex.: ms). Ajuste a unidade conforme uso |
| 6 | USUARIO_EXECUCAO | VARCHAR2 | N | Usuário (DEFAULT USER) |
| 7 | DATA_EXECUCAO | DATE | N | Data/hora de execução (DEFAULT SYSDATE) |

---

## SESGO.LOG_REGULACAO_LEITO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_LOG | NUMBER | N |  |
| 2 | DATA_EXECUCAO | TIMESTAMP(6) | Y |  |
| 3 | USUARIO_ORACLE | VARCHAR2 | Y |  |
| 4 | STATUS_APLICADO | CHAR | Y |  |
| 5 | EMPRESAS_AFETADAS | VARCHAR2 | Y |  |
| 6 | ORIGEM_EXECUCAO | VARCHAR2 | Y |  |

---

## SESGO.PAPEL_MOD_BKP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PAPEL | NUMBER | N |  |
| 2 | CD_MODULO | VARCHAR2 | N |  |

---

## SESGO.PRESTADOR_VIG

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRESTADOR | NUMBER | N |  |
| 2 | DT_INICIO_CONTRATO | DATE | Y |  |
| 3 | DT_FINAL_CONTRATO | DATE | Y |  |

---

## SESGO.PRODUTOSES

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DS_ESPECIFICACAO | VARCHAR2 | Y |  |
| 2 | DS_PRODUTO | VARCHAR2 | Y |  |
| 3 | DS_PRODUTO_RESUMIDO | VARCHAR2 | Y |  |
| 4 | NR_REGISTRO_FABRICANTE | VARCHAR2 | Y |  |
| 5 | CD_REGISTRO | NUMBER | Y |  |
| 6 | CD_LABORATOR | VARCHAR2 | Y |  |

---

## SESGO.PRODUTOS_CORA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRODUTO_MV | NUMBER | Y |  |
| 2 | ANÁLISE_PIO_XII | VARCHAR2 | Y |  |
| 3 | DESCRIÇÃO_PIO_XII | VARCHAR2 | Y |  |
| 4 | ESPECIFICAÇÃO_PIO_XII | VARCHAR2 | Y |  |
| 5 | FABRICANTE_PIO_XII | VARCHAR2 | Y |  |

---

## SESGO.PRODUTOS_SESGO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRODUTO | NUMBER | Y |  |
| 2 | DS_PRODUTO | VARCHAR2 | Y |  |
| 3 | DS_PRODUTO_RESUMIDO | VARCHAR2 | Y |  |

---

## SESGO.PRODUTO_CORA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRODUTO | VARCHAR2 | Y |  |
| 2 | CD_TASY | NUMBER | Y |  |
| 3 | DS_TASY | VARCHAR2 | Y |  |

---

## SESGO.TEX_EVO_BACKUP_20241021_45422

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TEX_EVO | NUMBER | N |  |
| 2 | DS_TEXTO | VARCHAR2 | Y |  |
| 3 | DS_TEX_EVO | CLOB | Y |  |
| 4 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 5 | DS_MULTI_EMPRESA | VARCHAR2 | N |  |

---

## SESGO.TIP_PRESC_SETOR_BKP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIP_PRESC | NUMBER | N |  |
| 2 | CD_SETOR | NUMBER | Y |  |
| 3 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 4 | SN_PADRONIZADO | VARCHAR2 | N |  |
| 5 | SN_PARTICULAR | VARCHAR2 | N |  |
| 6 | SN_CONVENIO | VARCHAR2 | N |  |
| 7 | SN_PROCEDIMENTO_INTERNACAO | VARCHAR2 | N |  |
| 8 | SN_PROCEDIMENTO_AMBULATORIAL | VARCHAR2 | N |  |

---

## SESGO.TIP_PRES_ROB

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIP_PRESC | NUMBER | N |  |
| 2 | SN_ALERTA_DUPLICIDADE | VARCHAR2 | N |  |
| 3 | SN_JUSTIFICATIVA | VARCHAR2 | N |  |

---

## SESGO.TMP_AJUSTE_ITEM_HDT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | COD_EXAME | NUMBER | Y |  |
| 2 | EXAME | VARCHAR2 | Y |  |
| 3 | TUBO | NUMBER | Y |  |
| 4 | TUBO_COLETA | VARCHAR2 | Y |  |
| 5 | MATERIAL | NUMBER | Y |  |
| 6 | DESCRICAO_MATERIAL | VARCHAR2 | Y |  |

---

## SESGO.TMP_EXAME_JEF

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | COD_EXA | NUMBER | Y |  |
| 2 | DESC_EXA | VARCHAR2 | Y |  |
| 3 | COD_TUBO | NUMBER | Y |  |
| 4 | DESC_TUBO | VARCHAR2 | Y |  |
| 5 | COD_MATERIAL | NUMBER | Y |  |
| 6 | DESC_MATERIAL | VARCHAR2 | Y |  |
| 7 | VOLUME | CHAR | Y |  |

---

## SESGO.TMP_PRESC

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EXA_LAB | NUMBER | Y |  |
| 2 | DESCRIACAO | VARCHAR2 | Y |  |

---

## SESGO.USER_INAT_SESGO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_USUARIO_INATIVO | VARCHAR2 | N |  |
| 2 | CD_EMPRESA_INATIVO | VARCHAR2 | Y |  |
| 3 | REG_AUDIT_INATIVO | DATE | Y |  |
| 4 | REG_AUDIT_DT_REMOCAO | DATE | Y |  |

---

## SESGO.USUARIOS_INATIVOS_40_DIAS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_USUARIO | VARCHAR2 | Y |  |
| 2 | NM_USUARIO | VARCHAR2 | Y |  |
| 3 | CD_MULTI_EMPRESA | NUMBER | Y |  |
| 4 | DS_MULTI_EMPRESA | VARCHAR2 | Y |  |
| 5 | ULTIMO_ACESSO | VARCHAR2 | Y |  |
| 6 | OS | VARCHAR2 | Y |  |
| 7 | DATA_INSERCAO | DATE | Y |  |
| 8 | STATUS_ACESSO | VARCHAR2 | Y |  |

---

## SESGO.USU_ORIGEM_RESULTADO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORI_ATE | NUMBER | Y |  |
| 2 | CD_USUARIO | VARCHAR2 | Y |  |
| 3 | DT_INSERCAO | DATE | Y |  |

---

## SESGO.VDIC_BI_CONS_MEDICAS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | INDICADOR | CHAR | Y |  |
| 2 | DS_MULTI_EMPRESA | VARCHAR2 | N |  |
| 3 | DATA_MES | VARCHAR2 | Y |  |
| 4 | QTDE_REALIZADA | NUMBER | Y |  |

---

## SESGO.VDIC_BI_RES_EXA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PED_LAB | NUMBER | N |  |
| 2 | CD_EXA_LAB | NUMBER | N |  |
| 3 | CD_VERSAO | NUMBER | N |  |
| 4 | NM_CAMPO | VARCHAR2 | N |  |
| 5 | DS_RESULTADO | VARCHAR2 | Y |  |
| 6 | CD_ITPED_LAB | NUMBER | N |  |

---

## SESGO.VDIC_HEMU_ATENDIMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CODIGO_DO_ATENDIMENTO | NUMBER | N |  |
| 2 | CODIGO_DA_ORIGEM_ATENDIMENTO | NUMBER | N |  |
| 3 | CODIGO_DO_PACIENTE | NUMBER | N |  |
| 4 | CODIGO_DO_CONVENIO | NUMBER | N |  |
| 5 | DATA_DO_ATENDIMENTO | DATE | N |  |
| 6 | HORARIO_DO_ATENDIMENTO | DATE | N |  |
| 7 | NOME_USUARIO | VARCHAR2 | Y |  |
| 8 | CODIGO_MULTI_EMPRESA | NUMBER | N |  |
| 9 | DESCRICAO_ORIGEM_ATENDIMENTO | VARCHAR2 | N |  |

---

## SESGO.VDIC_REFEICAO_NUTRI

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MULTI_EMPRESA | NUMBER | Y |  |
| 2 | CD_UNID_INT | NUMBER | Y |  |
| 3 | DS_UNID_INT | VARCHAR2 | Y |  |
| 4 | CD_SETOR | NUMBER | Y |  |
| 5 | NM_SETOR | VARCHAR2 | Y |  |
| 6 | CD_LEITO | NUMBER | Y |  |
| 7 | DS_RESUMO | VARCHAR2 | Y |  |
| 8 | DS_UNIDADE_LEITO | VARCHAR2 | Y |  |
| 9 | CD_ATENDIMENTO | NUMBER | Y |  |
| 10 | SN_ACOMPANHANTE | VARCHAR2 | Y |  |
| 11 | CD_PACIENTE | NUMBER | Y |  |
| 12 | NM_PACIENTE | VARCHAR2 | Y |  |
| 13 | NM_SOCIAL_PACIENTE | VARCHAR2 | Y |  |
| 14 | DT_NASCIMENTO | DATE | Y |  |
| 15 | CD_TIP_PRESTA | NUMBER | Y |  |
| 16 | DT_PRE_MED | DATE | Y |  |
| 17 | CD_PRE_MED | NUMBER | Y |  |
| 18 | CD_SETOR_PRE_MED | NUMBER | Y |  |
| 19 | CD_GRU_ESQ | NUMBER | Y |  |
| 20 | CD_PRODUTO | NUMBER | Y |  |
| 21 | CD_TIP_ESQ | VARCHAR2 | Y |  |
| 22 | DS_TIP_ESQ | VARCHAR2 | Y |  |
| 23 | CD_TIP_PRESC | NUMBER | Y |  |
| 24 | DS_TIP_PRESC | VARCHAR2 | Y |  |
| 25 | DS_FOR_APL | VARCHAR2 | Y |  |
| 26 | VALIDADE | VARCHAR2 | Y |  |
| 27 | DS_ITPRE_MED | VARCHAR2 | Y |  |
| 28 | QT_ITPRE_MED | NUMBER | Y |  |
| 29 | DS_UNIDADE | VARCHAR2 | Y |  |
| 30 | CD_TIP_PRESCC | NUMBER | Y |  |
| 31 | DS_TIP_PRESCC | VARCHAR2 | Y |  |
| 32 | DS_CITPRE_MED | VARCHAR2 | Y |  |
| 33 | HH_MEDICACAO | VARCHAR2 | Y |  |
| 34 | HR_MEDICACAO | VARCHAR2 | Y |  |
| 35 | CD_TURNO | NUMBER | Y |  |
| 36 | DS_TURNO | VARCHAR2 | Y |  |
| 37 | DH_MEDICACAO | DATE | Y |  |
| 38 | HR_GERACAO | VARCHAR2 | Y |  |
| 39 | DT_VALIDADE | DATE | Y |  |

---

## SESGO.VDIC_SESGO_ACOM_SIGPAT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ATENDIMENTO_ID | NUMBER | Y |  |
| 2 | DATA_ENTRADA | DATE | Y |  |
| 3 | DATA_ALTA | DATE | Y |  |
| 4 | DIFERENCA_ENTRE_ENTRADA_ALTA | VARCHAR2 | Y |  |
| 5 | CID | VARCHAR2 | Y |  |
| 6 | SIGPAT | VARCHAR2 | Y |  |
| 7 | TEMPO_PERMANENCIA_MIN | NUMBER | Y |  |
| 8 | TEMPO_PERMANENCIA_DIAS | NUMBER | Y |  |
| 9 | UNIDADE_HOSPITALAR | VARCHAR2 | Y |  |
| 10 | OBS_ALTA | VARCHAR2 | Y |  |
| 11 | CONTRARREFERENCIA | CHAR | Y |  |
| 12 | CLASSIFICACAO_RISCO | VARCHAR2 | Y |  |

---

## SESGO.VDIC_SESGO_ETIQUE_PACIENTE_SAA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PACIENTE | NUMBER | N |  |
| 2 | NM_PACIENTE | VARCHAR2 | Y |  |
| 3 | DT_NASCIMENTO | DATE | Y |  |
| 4 | TP_SEXO | VARCHAR2 | N |  |
| 5 | CD_ATENDIMENTO | NUMBER | N |  |
| 6 | DS_MULTI_EMPRESA | VARCHAR2 | N |  |
| 7 | DT_ATENDIMENTO | VARCHAR2 | Y |  |
| 8 | NM_PRESTADOR | VARCHAR2 | N |  |
| 9 | NM_MNEMONICO | VARCHAR2 | Y |  |
| 10 | NM_MAE | VARCHAR2 | Y |  |
| 11 | NM_CONVENIO | VARCHAR2 | N |  |

---

## SESGO.VDIC_SESGO_EXA_ANALISE_CLINICA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | INDICADOR | CHAR | Y |  |
| 2 | STATUS | VARCHAR2 | Y |  |
| 3 | DT_MES_REAL | DATE | Y |  |
| 4 | DT_PEDIDO | DATE | N |  |
| 5 | TIPO_ATENDIMENTO | VARCHAR2 | Y |  |
| 6 | NM_EXA | VARCHAR2 | N |  |
| 7 | DS_SERVICO | VARCHAR2 | N |  |
| 8 | QTDE_CONFORME | NUMBER | Y |  |
| 9 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 10 | DS_MULTI_EMPRESA | VARCHAR2 | N |  |
| 11 | NR_CNES | NUMBER | Y |  |
| 12 | NM_CIDADE | VARCHAR2 | N |  |

---

## SESGO.VDIC_SESGO_INSUF_RENAL_CRONICA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | EMPRESA | VARCHAR2 | Y |  |
| 2 | CODIGO_ATENDIMENTO | NUMBER | N |  |
| 3 | TIPO_ATENDIMENTO | VARCHAR2 | Y |  |
| 4 | SEXO | VARCHAR2 | Y |  |
| 5 | IDADE | DATE | Y |  |
| 6 | CIDADE | VARCHAR2 | Y |  |
| 7 | CEP | VARCHAR2 | Y |  |
| 8 | ENDEREÇO | VARCHAR2 | Y |  |
| 9 | NUMERO | NUMBER | Y |  |
| 10 | COMPLEMENTO | VARCHAR2 | Y |  |
| 11 | BAIRRO | VARCHAR2 | Y |  |
| 12 | DATA_EXAME | DATE | N |  |
| 13 | NOME_EXAME | VARCHAR2 | Y |  |
| 14 | CAMPO_RESULTADO | VARCHAR2 | Y |  |
| 15 | RESULTADO | VARCHAR2 | Y |  |
| 16 | TP_TIPO_CAMPO | VARCHAR2 | Y |  |

---

## SESGO.VDIC_SESGO_LAN_EFETUADOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CON_PAG | NUMBER | Y |  |
| 2 | CD_TIP_DOC | NUMBER | Y |  |
| 3 | CD_FORNECEDOR | NUMBER | Y |  |
| 4 | NM_FORNECEDOR | VARCHAR2 | Y |  |
| 5 | NR_DOCUMENTO | VARCHAR2 | Y |  |
| 6 | NR_SERIE | VARCHAR2 | Y |  |
| 7 | DT_EMISSAO | DATE | Y |  |
| 8 | DT_LANCAMENTO | DATE | Y |  |
| 9 | CD_PORTADOR | NUMBER | Y |  |
| 10 | DS_PORTADOR | VARCHAR2 | Y |  |
| 11 | TP_VENCIMENTO | VARCHAR2 | Y |  |
| 12 | CD_REDUZIDO | NUMBER | Y |  |
| 13 | DS_CONTA | VARCHAR2 | Y |  |
| 14 | DS_CON_PAG | VARCHAR2 | Y |  |
| 15 | CD_ITCON_PAG | NUMBER | Y |  |
| 16 | DT_VENCIMENTO | DATE | Y |  |
| 17 | DT_PREVISTA_PAG | DATE | Y |  |
| 18 | VL_DUPLICATA | NUMBER | Y |  |
| 19 | VL_SOMA_PAGO | NUMBER | Y |  |
| 20 | TP_QUITACAO | VARCHAR2 | Y |  |
| 21 | TP_ADIANTAMENTO | VARCHAR2 | Y |  |
| 22 | SN_PRESTACAO_REALIZADA | VARCHAR2 | Y |  |
| 23 | VL_DEVIDO | NUMBER | Y |  |
| 24 | PAGAMENTO_LOTE | CHAR | Y |  |
| 25 | CD_LOTE_PGTO | NUMBER | Y |  |
| 26 | CD_MULTI_EMPRESA | NUMBER | Y |  |
| 27 | TIPO_CLIENTE | VARCHAR2 | Y |  |
| 28 | CD_BANCO | NUMBER | Y |  |
| 29 | TP_DOCUMENTO | NUMBER | Y |  |
| 30 | NR_CGC_CPF | NUMBER | Y |  |
| 31 | TP_FORNECEDOR | VARCHAR2 | Y |  |
| 32 | NR_CODIGO_BARRA | VARCHAR2 | Y |  |
| 33 | TP_CODIGO_BARRA | VARCHAR2 | Y |  |
| 34 | TP_ENTRADA_CODIGO_BARRA | VARCHAR2 | Y |  |
| 35 | VL_CAMBIO | NUMBER | Y |  |
| 36 | SN_CAMBIO_SUGERIDO | VARCHAR2 | Y |  |
| 37 | CD_MOEDA_CONTA | VARCHAR2 | Y |  |
| 38 | VL_MOEDA_PARCELA | NUMBER | Y |  |
| 39 | DS_ENDERECO_EMAIL | VARCHAR2 | Y |  |
| 40 | CD_ESTRUTURAL | VARCHAR2 | Y |  |
| 41 | DS_PROCESSO | VARCHAR2 | Y |  |
| 42 | NR_PARCELA | NUMBER | Y |  |
| 43 | CD_CON_PAG_PAI | NUMBER | Y |  |
| 44 | DT_PAGAMENTO | DATE | Y |  |
| 45 | VL_PAGO | NUMBER | Y |  |
| 46 | TP_PAGAMENTO | VARCHAR2 | Y |  |
| 47 | PROCESSO_PAGCON_PAG | VARCHAR2 | Y |  |
| 48 | DS_PAGCON_PAG | VARCHAR2 | Y |  |
| 49 | CD_CON_COR | NUMBER | Y |  |

---

## SESGO.VDIC_SESGO_NOTA_PROD_SERV

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_NOTA_PROD_SERV | VARCHAR2 | Y |  |
| 2 | COD_ENTRADA | NUMBER | Y |  |
| 3 | CD_ENTRADA | NUMBER | Y |  |
| 4 | ENTRADA | VARCHAR2 | Y |  |
| 5 | NR_DOCUMENTO | VARCHAR2 | Y |  |
| 6 | NR_SERIE | VARCHAR2 | Y |  |
| 7 | NR_CHAVE_ACESSO | VARCHAR2 | Y |  |
| 8 | CD_CON_PAG | NUMBER | Y |  |
| 9 | CD_JUSTIFICA | NUMBER | Y |  |
| 10 | DS_JUSTIFICA | VARCHAR2 | Y |  |
| 11 | CD_USUARIO | VARCHAR2 | Y |  |
| 12 | TP_DOCUMENTO_ENTRADA | VARCHAR2 | Y |  |
| 13 | CD_FORNECEDOR | NUMBER | Y |  |
| 14 | NM_FORNECEDOR | VARCHAR2 | Y |  |
| 15 | NM_FANTASIA | VARCHAR2 | Y |  |
| 16 | TP_CLIENTE_FORN | VARCHAR2 | Y |  |
| 17 | NR_CGC_CPF | NUMBER | Y |  |
| 18 | NM_CIDADE | VARCHAR2 | Y |  |
| 19 | CD_UF | VARCHAR2 | Y |  |
| 20 | CD_ORD_COM | NUMBER | Y |  |
| 21 | CD_ESTOQUE | NUMBER | Y |  |
| 22 | DT_ORD_COM | DATE | Y |  |
| 23 | DT_PREV_ENTREGA_ORD_COM | DATE | Y |  |
| 24 | VL_TOTAL_ORD_COM | NUMBER | Y |  |
| 25 | CD_SOL_COM | NUMBER | Y |  |
| 26 | QT_PARCELA | NUMBER | Y |  |
| 27 | CD_PARCELA | NUMBER | Y |  |
| 28 | CD_CONDICAO_PAGAMENTO | NUMBER | Y |  |
| 29 | DS_CONDICAO_PAGAMENTO | VARCHAR2 | Y |  |
| 30 | DT_ENTRADA | DATE | Y |  |
| 31 | HR_ENTRADA | DATE | Y |  |
| 32 | CD_TIP_ENTRADA | NUMBER | Y |  |
| 33 | DT_EMISSAO | DATE | Y |  |
| 34 | CD_ATENDIMENTO | NUMBER | Y |  |
| 35 | TP_FRETE | VARCHAR2 | Y |  |
| 36 | SN_INCLUSAO_NOTA | VARCHAR2 | Y |  |
| 37 | CD_FORNECEDOR_FRETE | NUMBER | Y |  |
| 38 | VL_PERC_FRETE | NUMBER | Y |  |
| 39 | VL_FRETE | NUMBER | Y |  |
| 40 | NR_CONHECIMENTO_FRETE | VARCHAR2 | Y |  |
| 41 | DT_VENCIMENTO_FRETE | DATE | Y |  |
| 42 | VL_PERCENTUAL_ICMS | NUMBER | Y |  |
| 43 | VL_IMPOSTO_ICMS | NUMBER | Y |  |
| 44 | VL_PERCENTUAL_DESCONTO | NUMBER | Y |  |
| 45 | VL_PERCENTUAL_ISS | NUMBER | Y |  |
| 46 | VL_IMPOSTO_ISS | NUMBER | Y |  |
| 47 | VL_DESCONTO | NUMBER | Y |  |
| 48 | VL_OUTROS | NUMBER | Y |  |
| 49 | VL_TOTAL | NUMBER | Y |  |
| 50 | SN_CONSIGNADO | VARCHAR2 | Y |  |
| 51 | CD_MULTI_EMPRESA | NUMBER | Y |  |
| 52 | TP_QUITACAO | VARCHAR2 | Y |  |
| 53 | CD_PAGCON_PAG | NUMBER | Y |  |
| 54 | CD_ITCON_PAG | NUMBER | Y |  |
| 55 | DT_VENCIMENTO | DATE | Y |  |
| 56 | DT_PAGAMENTO_PAG | DATE | Y |  |
| 57 | VL_PARCELA | NUMBER | Y |  |
| 58 | VL_PAGO_PAG | NUMBER | Y |  |
| 59 | VL_ACRESCIMO_PAG | NUMBER | Y |  |
| 60 | VL_DESCONTO_PAG | NUMBER | Y |  |
| 61 | CD_BORDERO_PAG | NUMBER | Y |  |
| 62 | CD_SAI_CAI_PAG | NUMBER | Y |  |
| 63 | CD_DESCONTO_PAG | NUMBER | Y |  |
| 64 | CD_ACRESCIMO_PAG | NUMBER | Y |  |
| 65 | TP_PAGAMENTO | VARCHAR2 | Y |  |
| 66 | CD_BANCO_FORN_PAG | NUMBER | Y |  |
| 67 | CD_AGENCIA_FORN_PAG | VARCHAR2 | Y |  |
| 68 | NR_CONTA_FORN_PAG | VARCHAR2 | Y |  |
| 69 | DS_NOMINAL_PAG | VARCHAR2 | Y |  |
| 70 | CD_CON_COR_PAG | NUMBER | Y |  |
| 71 | CD_EXP_CONTABILIDADE_PAG | NUMBER | Y |  |
| 72 | SN_ESTORNO_PAG | VARCHAR2 | Y |  |
| 73 | DT_ESTORNO_PAG | DATE | Y |  |
| 74 | VL_ESTORNO_PAG | NUMBER | Y |  |
| 75 | CD_MOTIVO_CANC_PAG | NUMBER | Y |  |
| 76 | DT_BAIXA_PAG | DATE | Y |  |
| 77 | CD_ITCON_PAG_DEV_PAG | NUMBER | Y |  |
| 78 | CD_PAGCON_PAG_AGRUP_PAG | NUMBER | Y |  |
| 79 | VL_MOEDA_PAG | NUMBER | Y |  |
| 80 | VL_MOEDA_DESC_PAG | NUMBER | Y |  |
| 81 | VL_MOEDA_ACRES_PAG | NUMBER | Y |  |
| 82 | CD_MOEDA_PAG | VARCHAR2 | Y |  |
| 83 | CD_RECCON_REC_PAG | NUMBER | Y |  |
| 84 | DS_PAGCON_PAG_PAG | VARCHAR2 | Y |  |
| 85 | CD_REDUZIDO_PAG | NUMBER | Y |  |
| 86 | CD_PROCESSO_PAG | NUMBER | Y |  |
| 87 | DS_PROCESSO_PAG | VARCHAR2 | Y |  |
| 88 | CD_PROCESSO_SEC_PAG | NUMBER | Y |  |
| 89 | DS_ESTORNO_PAG | VARCHAR2 | Y |  |
| 90 | CD_MOV_PAGAMENTO_AGRUP_PAG | NUMBER | Y |  |
| 91 | VL_ESTORNO_IMPOSTO_PAG | NUMBER | Y |  |
| 92 | VL_IMPOSTO_PAG | NUMBER | Y |  |
| 93 | CD_MOV_CONCOR | NUMBER | Y |  |
| 94 | DS_MOVIMENTACAO_PADRAO | VARCHAR2 | Y |  |
| 95 | DS_MOVIMENTACAO_PROCESSO | VARCHAR2 | Y |  |
| 96 | SN_CONCILIADO | VARCHAR2 | Y |  |
| 97 | CD_EXP_CONTABILIDADE_MOV | NUMBER | Y |  |
| 98 | DT_MOVIMENTACAO | DATE | Y |  |
| 99 | CD_LAN_CONCOR | NUMBER | Y |  |
| 100 | DS_LAN_CONCOR | VARCHAR2 | Y |  |
| 101 | CD_REDUZIDO_MOV | NUMBER | Y |  |
| 102 | NR_DOCUMENTO_IDENTIFICACAO | VARCHAR2 | Y |  |
| 103 | DS_MOVIMENTACAO | VARCHAR2 | Y |  |
| 104 | VL_MOEDA_MOV | NUMBER | Y |  |
| 105 | VL_MOVIMENTACAO_MOV | NUMBER | Y |  |
| 106 | VL_ACRESCIMO_REC_MOV | NUMBER | Y |  |
| 107 | VL_DESCONTO_REC_MOV | NUMBER | Y |  |
| 108 | VL_DESCONTO_RECMOV | NUMBER | Y |  |
| 109 | VL_BRUTO_MOVMOV | NUMBER | Y |  |
| 110 | VL_ACORDO_MOV | NUMBER | Y |  |
| 111 | CD_CON_CORV_MOV | NUMBER | Y |  |
| 112 | CD_MOV_CONCOR_TRANSFERENCIA | NUMBER | Y |  |
| 113 | MOT_CANC_CONC | VARCHAR2 | Y |  |

---

## SESGO.VDIC_SESGO_NOTA_PROD_SERV_NEW

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_NOTA_PROD_SERV | VARCHAR2 | Y |  |
| 2 | COD_ENTRADA | NUMBER | Y |  |
| 3 | CD_ENTRADA | NUMBER | Y |  |
| 4 | ENTRADA | VARCHAR2 | Y |  |
| 5 | NR_DOCUMENTO | VARCHAR2 | Y |  |
| 6 | NR_SERIE | VARCHAR2 | Y |  |
| 7 | NR_CHAVE_ACESSO | VARCHAR2 | Y |  |
| 8 | CD_CON_PAG | NUMBER | Y |  |
| 9 | CD_JUSTIFICA | NUMBER | Y |  |
| 10 | DS_JUSTIFICA | VARCHAR2 | Y |  |
| 11 | CD_USUARIO | VARCHAR2 | Y |  |
| 12 | TP_DOCUMENTO_ENTRADA | VARCHAR2 | Y |  |
| 13 | CD_FORNECEDOR | NUMBER | Y |  |
| 14 | NM_FORNECEDOR | VARCHAR2 | Y |  |
| 15 | NM_FANTASIA | VARCHAR2 | Y |  |
| 16 | TP_CLIENTE_FORN | VARCHAR2 | Y |  |
| 17 | NR_CGC_CPF | NUMBER | Y |  |
| 18 | NM_CIDADE | VARCHAR2 | Y |  |
| 19 | CD_UF | VARCHAR2 | Y |  |
| 20 | CD_ORD_COM | NUMBER | Y |  |
| 21 | CD_ESTOQUE | NUMBER | Y |  |
| 22 | DT_ORD_COM | DATE | Y |  |
| 23 | DT_PREV_ENTREGA_ORD_COM | DATE | Y |  |
| 24 | VL_TOTAL_ORD_COM | NUMBER | Y |  |
| 25 | CD_SOL_COM | NUMBER | Y |  |
| 26 | QT_PARCELA | NUMBER | Y |  |
| 27 | CD_PARCELA | NUMBER | Y |  |
| 28 | CD_CONDICAO_PAGAMENTO | NUMBER | Y |  |
| 29 | DS_CONDICAO_PAGAMENTO | VARCHAR2 | Y |  |
| 30 | DT_ENTRADA | DATE | Y |  |
| 31 | HR_ENTRADA | DATE | Y |  |
| 32 | CD_TIP_ENTRADA | NUMBER | Y |  |
| 33 | DT_EMISSAO | DATE | Y |  |
| 34 | CD_ATENDIMENTO | NUMBER | Y |  |
| 35 | TP_FRETE | VARCHAR2 | Y |  |
| 36 | SN_INCLUSAO_NOTA | VARCHAR2 | Y |  |
| 37 | CD_FORNECEDOR_FRETE | NUMBER | Y |  |
| 38 | VL_PERC_FRETE | NUMBER | Y |  |
| 39 | VL_FRETE | NUMBER | Y |  |
| 40 | NR_CONHECIMENTO_FRETE | VARCHAR2 | Y |  |
| 41 | DT_VENCIMENTO_FRETE | DATE | Y |  |
| 42 | VL_PERCENTUAL_ICMS | NUMBER | Y |  |
| 43 | VL_IMPOSTO_ICMS | NUMBER | Y |  |
| 44 | VL_PERCENTUAL_DESCONTO | NUMBER | Y |  |
| 45 | VL_PERCENTUAL_ISS | NUMBER | Y |  |
| 46 | VL_IMPOSTO_ISS | NUMBER | Y |  |
| 47 | VL_DESCONTO | NUMBER | Y |  |
| 48 | VL_OUTROS | NUMBER | Y |  |
| 49 | VL_TOTAL | NUMBER | Y |  |
| 50 | SN_CONSIGNADO | VARCHAR2 | Y |  |
| 51 | CD_MULTI_EMPRESA | NUMBER | Y |  |
| 52 | TP_QUITACAO | VARCHAR2 | Y |  |
| 53 | CD_PAGCON_PAG | NUMBER | Y |  |
| 54 | CD_ITCON_PAG | NUMBER | Y |  |
| 55 | DT_VENCIMENTO | DATE | Y |  |
| 56 | DT_PAGAMENTO_PAG | DATE | Y |  |
| 57 | VL_PARCELA | NUMBER | Y |  |
| 58 | VL_PAGO_PAG | NUMBER | Y |  |
| 59 | VL_ACRESCIMO_PAG | NUMBER | Y |  |
| 60 | VL_DESCONTO_PAG | NUMBER | Y |  |
| 61 | CD_BORDERO_PAG | NUMBER | Y |  |
| 62 | CD_SAI_CAI_PAG | NUMBER | Y |  |
| 63 | CD_DESCONTO_PAG | NUMBER | Y |  |
| 64 | CD_ACRESCIMO_PAG | NUMBER | Y |  |
| 65 | TP_PAGAMENTO | VARCHAR2 | Y |  |
| 66 | CD_BANCO_FORN_PAG | NUMBER | Y |  |
| 67 | CD_AGENCIA_FORN_PAG | VARCHAR2 | Y |  |
| 68 | NR_CONTA_FORN_PAG | VARCHAR2 | Y |  |
| 69 | DS_NOMINAL_PAG | VARCHAR2 | Y |  |
| 70 | CD_CON_COR_PAG | NUMBER | Y |  |
| 71 | CD_EXP_CONTABILIDADE_PAG | NUMBER | Y |  |
| 72 | SN_ESTORNO_PAG | VARCHAR2 | Y |  |
| 73 | DT_ESTORNO_PAG | DATE | Y |  |
| 74 | VL_ESTORNO_PAG | NUMBER | Y |  |
| 75 | CD_MOTIVO_CANC_PAG | NUMBER | Y |  |
| 76 | DT_BAIXA_PAG | DATE | Y |  |
| 77 | CD_ITCON_PAG_DEV_PAG | NUMBER | Y |  |
| 78 | CD_PAGCON_PAG_AGRUP_PAG | NUMBER | Y |  |
| 79 | VL_MOEDA_PAG | NUMBER | Y |  |
| 80 | VL_MOEDA_DESC_PAG | NUMBER | Y |  |
| 81 | VL_MOEDA_ACRES_PAG | NUMBER | Y |  |
| 82 | CD_MOEDA_PAG | VARCHAR2 | Y |  |
| 83 | CD_RECCON_REC_PAG | NUMBER | Y |  |
| 84 | DS_PAGCON_PAG_PAG | VARCHAR2 | Y |  |
| 85 | CD_REDUZIDO_PAG | NUMBER | Y |  |
| 86 | CD_PROCESSO_PAG | NUMBER | Y |  |
| 87 | CD_PROCESSO_SEC_PAG | NUMBER | Y |  |
| 88 | DS_ESTORNO_PAG | VARCHAR2 | Y |  |
| 89 | CD_MOV_PAGAMENTO_AGRUP_PAG | NUMBER | Y |  |
| 90 | VL_ESTORNO_IMPOSTO_PAG | NUMBER | Y |  |
| 91 | VL_IMPOSTO_PAG | NUMBER | Y |  |
| 92 | VL_IRRF_RETIDO_NF | NUMBER | Y |  |
| 93 | VL_PCC_RETIDO_NF | NUMBER | Y |  |
| 94 | VL_ISSQN_RETIDO_NF | NUMBER | Y |  |
| 95 | VL_INSS_RETIDO_NF | NUMBER | Y |  |
| 96 | CD_MOV_CONCOR | NUMBER | Y |  |
| 97 | DS_MOVIMENTACAO_PADRAO | VARCHAR2 | Y |  |
| 98 | DS_MOVIMENTACAO_PROCESSO | VARCHAR2 | Y |  |
| 99 | SN_CONCILIADO | VARCHAR2 | Y |  |
| 100 | CD_EXP_CONTABILIDADE_MOV | NUMBER | Y |  |
| 101 | DT_MOVIMENTACAO | DATE | Y |  |
| 102 | CD_LAN_CONCOR | NUMBER | Y |  |
| 103 | DS_LAN_CONCOR | VARCHAR2 | Y |  |
| 104 | CD_REDUZIDO_MOV | NUMBER | Y |  |
| 105 | NR_DOCUMENTO_IDENTIFICACAO | VARCHAR2 | Y |  |
| 106 | DS_MOVIMENTACAO | VARCHAR2 | Y |  |
| 107 | VL_MOEDA_MOV | NUMBER | Y |  |
| 108 | VL_MOVIMENTACAO_MOV | NUMBER | Y |  |
| 109 | VL_ACRESCIMO_REC_MOV | NUMBER | Y |  |
| 110 | VL_DESCONTO_REC_MOV | NUMBER | Y |  |
| 111 | VL_DESCONTO_RECMOV | NUMBER | Y |  |
| 112 | VL_BRUTO_MOVMOV | NUMBER | Y |  |
| 113 | VL_ACORDO_MOV | NUMBER | Y |  |
| 114 | CD_CON_CORV_MOV | NUMBER | Y |  |
| 115 | CD_MOV_CONCOR_TRANSFERENCIA | NUMBER | Y |  |
| 116 | MOT_CANC_CONC | VARCHAR2 | Y |  |

---

## SESGO.VDIC_SESGO_PAG_EFETUADOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CON_PAG | NUMBER | N |  |
| 2 | CD_TIP_DOC | NUMBER | N |  |
| 3 | CD_FORNECEDOR | NUMBER | Y |  |
| 4 | NM_FORNECEDOR | VARCHAR2 | Y |  |
| 5 | NR_DOCUMENTO | VARCHAR2 | Y |  |
| 6 | NR_SERIE | VARCHAR2 | Y |  |
| 7 | DT_EMISSAO | DATE | Y |  |
| 8 | DT_LANCAMENTO | DATE | Y |  |
| 9 | CD_PORTADOR | NUMBER | Y |  |
| 10 | DS_PORTADOR | VARCHAR2 | Y |  |
| 11 | TP_VENCIMENTO | VARCHAR2 | Y |  |
| 12 | CD_REDUZIDO | NUMBER | Y |  |
| 13 | DS_CONTA | VARCHAR2 | Y |  |
| 14 | DS_CON_PAG | VARCHAR2 | Y |  |
| 15 | CD_ITCON_PAG | NUMBER | N |  |
| 16 | DT_VENCIMENTO | DATE | Y |  |
| 17 | DT_PREVISTA_PAG | DATE | Y |  |
| 18 | VL_DUPLICATA | NUMBER | N |  |
| 19 | VL_SOMA_PAGO | NUMBER | Y |  |
| 20 | TP_QUITACAO | VARCHAR2 | Y |  |
| 21 | TP_ADIANTAMENTO | VARCHAR2 | Y |  |
| 22 | SN_PRESTACAO_REALIZADA | VARCHAR2 | Y |  |
| 23 | VL_DEVIDO | NUMBER | Y |  |
| 24 | PAGAMENTO_LOTE | CHAR | Y |  |
| 25 | CD_LOTE_PGTO | NUMBER | Y |  |
| 26 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 27 | TIPO_CLIENTE | VARCHAR2 | Y |  |
| 28 | CD_BANCO | NUMBER | Y |  |
| 29 | TP_DOCUMENTO | NUMBER | N |  |
| 30 | NR_CGC_CPF | NUMBER | Y |  |
| 31 | TP_FORNECEDOR | VARCHAR2 | Y |  |
| 32 | NR_CODIGO_BARRA | VARCHAR2 | Y |  |
| 33 | TP_CODIGO_BARRA | VARCHAR2 | Y |  |
| 34 | TP_ENTRADA_CODIGO_BARRA | VARCHAR2 | Y |  |
| 35 | VL_CAMBIO | NUMBER | Y |  |
| 36 | SN_CAMBIO_SUGERIDO | VARCHAR2 | Y |  |
| 37 | CD_MOEDA_CONTA | VARCHAR2 | N |  |
| 38 | VL_MOEDA_PARCELA | NUMBER | N |  |
| 39 | DS_ENDERECO_EMAIL | VARCHAR2 | Y |  |
| 40 | CD_ESTRUTURAL | VARCHAR2 | N |  |
| 41 | DS_PROCESSO | VARCHAR2 | N |  |
| 42 | NR_PARCELA | NUMBER | N |  |
| 43 | CD_CON_PAG_PAI | NUMBER | Y |  |
| 44 | DT_PAGAMENTO | DATE | Y |  |
| 45 | VL_PAGO | NUMBER | Y |  |
| 46 | TP_PAGAMENTO | VARCHAR2 | Y |  |
| 47 | PROCESSO_PAGCON_PAG | VARCHAR2 | N |  |
| 48 | DS_PAGCON_PAG | VARCHAR2 | Y |  |
| 49 | CD_CON_COR | NUMBER | Y |  |

---

## SESGO.VDIC_SESGO_RESER_LEI

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | TP_SOLICITACAO | CHAR | Y |  |
| 2 | CD_ATENDIMENTO | NUMBER | Y |  |
| 3 | CD_PACIENTE | NUMBER | Y |  |
| 4 | NM_PACIENTE | VARCHAR2 | Y |  |
| 5 | NM_SOCIAL_PACIENTE | VARCHAR2 | Y |  |
| 6 | DS_LOCAL | VARCHAR2 | Y |  |
| 7 | DT_SOLIC | DATE | Y |  |
| 8 | HR_SOLIC | DATE | Y |  |
| 9 | CD_UNID_INT_SUGERIDO | NUMBER | Y |  |
| 10 | CD_LEITO_SUGERIDO | NUMBER | Y |  |
| 11 | CD_UNID_INT | NUMBER | Y |  |
| 12 | CD_PRESTADOR | NUMBER | Y |  |
| 13 | CD_AVISO_CIRURGIA | NUMBER | Y |  |
| 14 | CD_CID | VARCHAR2 | Y |  |
| 15 | DS_CID | VARCHAR2 | Y |  |
| 16 | CD_SERVICO | NUMBER | Y |  |
| 17 | DS_SERVICOS | VARCHAR2 | Y |  |
| 18 | CD_SOLIC_TRANSFERENCIA_LEITO | NUMBER | Y |  |
| 19 | CD_RES_LEI | NUMBER | Y |  |
| 20 | CD_MULTI_EMPRESA | NUMBER | Y |  |

---

## SESGO.VDIC_SESGO_SALDOS_CONT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CON_COR | NUMBER | N |  |
| 2 | DT_COMPETENCIA | VARCHAR2 | Y |  |
| 3 | SALDO_ANTERIOR | NUMBER | Y |  |

---

## SESGO.VDIC_SESGO_SOLIC_HEMO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 2 | EMPRESA | VARCHAR2 | N |  |
| 3 | SERVICOS | CHAR | Y |  |
| 4 | CD_PROCEDIMENTO | VARCHAR2 | Y |  |
| 5 | DESCRICAO | VARCHAR2 | N |  |
| 6 | DETALHAMENTO | VARCHAR2 | Y |  |
| 7 | DT_SOLIC_SANGUE | DATE | Y |  |
| 8 | QUANTIDADE | NUMBER | Y |  |
| 9 | HORAS_PREVISTAS | VARCHAR2 | Y |  |
| 10 | HORAS_EXECUTADAS | VARCHAR2 | Y |  |

---

## SESGO.VERSAO_EXAME_PADRAO_SETOR_JEF

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SET_EXA | NUMBER | N |  |
| 2 | CD_EXA_LAB | NUMBER | N |  |
| 3 | CD_VERSAO | NUMBER | N |  |

---

## SESGO.VW_2488_INTERNACAO_EPIMED

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DH_CRIACAO | DATE | Y |  |
| 2 | CD_EDITOR_REGISTRO | NUMBER | N |  |
| 3 | CD_ATENDIMENTO | NUMBER | Y |  |
| 4 | CD_PACIENTE | NUMBER | Y |  |
| 5 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 6 | DATA_ADMISSAO | VARCHAR2 | Y |  |
| 7 | PROCEDENCIA | VARCHAR2 | Y |  |
| 8 | DATA_READMISSAOUTI | VARCHAR2 | Y |  |
| 9 | DATA_ADMISSAO_SERV_ORIG | VARCHAR2 | Y |  |
| 10 | INTERNACAO_PREVIA | VARCHAR2 | Y |  |
| 11 | MOTIVO_INTERNACAO | VARCHAR2 | Y |  |
| 12 | DIAG_PRINCIPAL | VARCHAR2 | Y |  |
| 13 | DIAG_SECUNDARIO | VARCHAR2 | Y |  |
| 14 | CAPAC_FUNC_ANTERIOR_INTENACAO | VARCHAR2 | Y |  |
| 15 | COMORB_NAO_INFORMADO | VARCHAR2 | Y |  |
| 16 | COMORB_SEM_COMORBIDADE | VARCHAR2 | Y |  |
| 17 | COMORB_ASMA | VARCHAR2 | Y |  |
| 18 | COMORV_ANGINA | VARCHAR2 | Y |  |
| 19 | COMORB_ALCOOLISMO | VARCHAR2 | Y |  |
| 20 | COMORB_AVC_SEQUELA | VARCHAR2 | Y |  |
| 21 | COMORB_CIRROSE_CHILD_AB | VARCHAR2 | Y |  |
| 22 | COMORB_CIRROSE_CHILD_C | VARCHAR2 | Y |  |
| 23 | COMORB_DPOC_GRAVE | VARCHAR2 | Y |  |
| 24 | COMORB_DEMENCIA | VARCHAR2 | Y |  |
| 25 | COMORB_DOENCA_PSIQUIATRA | VARCHAR2 | Y |  |
| 26 | COMORB_DESNUTRICAO | VARCHAR2 | Y |  |
| 27 | COMORB_DOENCA_REUMATICA | VARCHAR2 | Y |  |
| 28 | COMORB_DIABETE_COM_COMPLIC | VARCHAR2 | Y |  |
| 29 | COMORB_DIABETE_SEM_COMPLIC | VARCHAR2 | Y |  |
| 30 | COMORB_DISLEPIDEMIAS | VARCHAR2 | Y |  |
| 31 | COMORB_DOEN_ARTERIAL | VARCHAR2 | Y |  |
| 32 | COMORB_ULCERA_PEPTICA | VARCHAR2 | Y |  |
| 33 | COMORB_FIBRIL_ATRIAL_CRONICA | VARCHAR2 | Y |  |
| 34 | COMORB_HIPOTIREOIDISMO | VARCHAR2 | Y |  |
| 35 | COMORB_HIPERTIREOIDISMO | VARCHAR2 | Y |  |
| 36 | COMORB_IAM_PREVIO | VARCHAR2 | Y |  |
| 37 | COMORB_INSUF_CARD_23 | VARCHAR2 | Y |  |
| 38 | COMORB_INSUF_CARD_4 | VARCHAR2 | Y |  |
| 39 | COMORB_IRC_SEM_DIALISE | VARCHAR2 | Y |  |
| 40 | COMORB_IRC_EM_DIALISE | VARCHAR2 | Y |  |
| 41 | COMORB_INSUF_HEPATICA | VARCHAR2 | Y |  |
| 42 | COMORB_IMUNO_CORTICO | VARCHAR2 | Y |  |
| 43 | COMORB_IMUNO_TRANSPL | VARCHAR2 | Y |  |
| 44 | COMORB_IMUNO_SIDA | VARCHAR2 | Y |  |
| 45 | COMORB_IMUNO_TMO_AUTO | VARCHAR2 | Y |  |
| 46 | COMORB_IMUNO_TMO_ALO | VARCHAR2 | Y |  |
| 47 | COMORB_IMUNO_QUIMIO | VARCHAR2 | Y |  |
| 48 | COMORB_IMUNO_RADIO | VARCHAR2 | Y |  |
| 49 | COMORB_NEOP_LINFOMA | VARCHAR2 | Y |  |
| 50 | COMORB_NEOP_LEUCEMIA | VARCHAR2 | Y |  |
| 51 | COMORB_NEOP_MIELOMA | VARCHAR2 | Y |  |
| 52 | COMORB_NEOP_OUTRAS | VARCHAR2 | Y |  |
| 53 | COMORB_OBESIDADE_MORB | VARCHAR2 | Y |  |
| 54 | COMORB_ARRITMIAS_CARD | VARCHAR2 | Y |  |
| 55 | COMORB_PNEUMONIA_PREV | VARCHAR2 | Y |  |
| 56 | COMORB_TROMBOSE | VARCHAR2 | Y |  |
| 57 | COMORB_TUMOR_LOCO | VARCHAR2 | Y |  |
| 58 | COMORB_TUMOR_METAST | VARCHAR2 | Y |  |
| 59 | HIST_DOEN_ATUAL | VARCHAR2 | Y |  |
| 60 | ESCALA_PPS | VARCHAR2 | Y |  |
| 61 | SPICT_BR | VARCHAR2 | Y |  |
| 62 | ALERGIAS | VARCHAR2 | Y |  |
| 63 | ALERGIAS_QUAIS | VARCHAR2 | Y |  |
| 64 | MEDIC_PREVIOS | VARCHAR2 | Y |  |
| 65 | TUBO_ENDOTRAQ | VARCHAR2 | Y |  |
| 66 | DATA_INS_TUBO | VARCHAR2 | Y |  |
| 67 | TRAQUEOSTOMIA | VARCHAR2 | Y |  |
| 68 | DATA_INS_TRAQUEO | VARCHAR2 | Y |  |
| 69 | CATETER_VENOSO | VARCHAR2 | Y |  |
| 70 | DATA_INS_CATETER | VARCHAR2 | Y |  |
| 71 | SITIO_CATETER | VARCHAR2 | Y |  |
| 72 | JUSTIF_CATETER | VARCHAR2 | Y |  |
| 73 | PRESSAO_ART | VARCHAR2 | Y |  |
| 74 | DATA_INS_PRESSAO | VARCHAR2 | Y |  |
| 75 | SITIO_PRESSAO | VARCHAR2 | Y |  |
| 76 | JUSTIF_PRESSAO | VARCHAR2 | Y |  |
| 77 | CATETER_HEMO | VARCHAR2 | Y |  |
| 78 | DATA_INS_HEMO | VARCHAR2 | Y |  |
| 79 | SITIO_HEMO | VARCHAR2 | Y |  |
| 80 | JUSTIF_HEMO | VARCHAR2 | Y |  |
| 81 | CATETER_VESICAL | VARCHAR2 | Y |  |
| 82 | DATA_INS_VESICAL_CAT | VARCHAR2 | Y |  |
| 83 | JUSTIF_VESICAL | VARCHAR2 | Y |  |
| 84 | OUTROS_DISPOSITIVOS | VARCHAR2 | Y |  |
| 85 | ANTIBIOTICO_PREV | VARCHAR2 | Y |  |
| 86 | ANTIBIOTICO_QUAL | VARCHAR2 | Y |  |
| 87 | ANTIBIOTICO_ATUAL | VARCHAR2 | Y |  |
| 88 | ANTIBIOTICO_ATUAL_TEXTO | VARCHAR2 | Y |  |
| 89 | EXAME_FISICO_GERAL | VARCHAR2 | Y |  |
| 90 | DATA_INS_VESICAL | VARCHAR2 | Y |  |
| 91 | EXAME_FISICO_NEUROLOGICO | VARCHAR2 | Y |  |
| 92 | ALTERACAO_NEURO | VARCHAR2 | Y |  |
| 93 | NEURO_PUPILAS | VARCHAR2 | Y |  |
| 94 | NEURO_RASS | VARCHAR2 | Y |  |
| 95 | NEURO_GLASGOW | VARCHAR2 | Y |  |
| 96 | SEDACAO | VARCHAR2 | Y |  |
| 97 | DROGA_SEDACAO | VARCHAR2 | Y |  |
| 98 | EXAME_CARDIOVASCULAR | VARCHAR2 | Y |  |
| 99 | FC | VARCHAR2 | Y |  |
| 100 | PAS | VARCHAR2 | Y |  |
| 101 | PAD | VARCHAR2 | Y |  |
| 102 | EXAME_RESPIRATORIO | VARCHAR2 | Y |  |
| 103 | FR | VARCHAR2 | Y |  |
| 104 | SATO2 | VARCHAR2 | Y |  |
| 105 | OXIGENIO | VARCHAR2 | Y |  |
| 106 | FIO2 | VARCHAR2 | Y |  |
| 107 | LITROS_O2 | VARCHAR2 | Y |  |
| 108 | EXAME_ABDOMINAL | VARCHAR2 | Y |  |
| 109 | DIETA | VARCHAR2 | Y |  |
| 110 | VIA_DIETA | VARCHAR2 | Y |  |
| 111 | EXAME_MEMBROS | VARCHAR2 | Y |  |
| 112 | EDEMA_MMSS | VARCHAR2 | Y |  |
| 113 | GRAU_MMSS | VARCHAR2 | Y |  |
| 114 | SINAIS_TVP | VARCHAR2 | Y |  |
| 115 | EDEMA_MMII | VARCHAR2 | Y |  |
| 116 | GRAU_MMII | VARCHAR2 | Y |  |
| 117 | SINAIS_TVP_MMII | VARCHAR2 | Y |  |
| 118 | PERFUSAO | VARCHAR2 | Y |  |
| 119 | COMPLICA_NAO_APLICA | VARCHAR2 | Y |  |
| 120 | NEURO_CONSCIENCIA | VARCHAR2 | Y |  |
| 121 | NEURO_CONVULSOES | VARCHAR2 | Y |  |
| 122 | NEURO_DEFICIT | VARCHAR2 | Y |  |
| 123 | NEURO_EFEITO_MASSA | VARCHAR2 | Y |  |
| 124 | CARDIO_CHOQUE_HEMO | VARCHAR2 | Y |  |
| 125 | CARDIO_CHOQUE_SEPTICO | VARCHAR2 | Y |  |
| 126 | CARDIO_ARRITMIAS | VARCHAR2 | Y |  |
| 127 | CARDIO_CHOQUE_MISTO | VARCHAR2 | Y |  |
| 128 | DIGEST_ABDOME_AGUDO | VARCHAR2 | Y |  |
| 129 | DIGEST_PANCREATITE | VARCHAR2 | Y |  |
| 130 | HEPATICO_INSUF | VARCHAR2 | Y |  |
| 131 | CIRURGIA_TRANSPLANTE | VARCHAR2 | Y |  |
| 132 | CIRURGIA_POLITRAUMA | VARCHAR2 | Y |  |
| 133 | CIRURGIA_CARDIACO | VARCHAR2 | Y |  |
| 134 | CIRURGIA_NEURO | VARCHAR2 | Y |  |
| 135 | INFECCAO_NOSOCOMIAL | VARCHAR2 | Y |  |
| 136 | INFECCAO_PNEUMONIA | VARCHAR2 | Y |  |
| 137 | SUPORTE_AMINAS_GT_1H | VARCHAR2 | Y |  |
| 138 | VENTILA_MECANICA | VARCHAR2 | Y |  |
| 139 | VENTILACAO_N_INVASIVA | VARCHAR2 | Y |  |
| 140 | SUPORTE_RENAL | VARCHAR2 | Y |  |
| 141 | SUPORTE_ARRITMIA_INSUFIC | VARCHAR2 | Y |  |
| 142 | ARRITMIA_CARDIACA | VARCHAR2 | Y |  |
| 143 | ISUF_RENAL_AGUDA | VARCHAR2 | Y |  |
| 144 | EFEITO_RENAL_INTRACRAN | VARCHAR2 | Y |  |
| 145 | NEUTROPENIA | VARCHAR2 | Y |  |
| 146 | PARADA_CARDIORESP | VARCHAR2 | Y |  |
| 147 | HEMORRAGIA_DIGESTIVA | VARCHAR2 | Y |  |
| 148 | TIPO_ARRITMIA_PCR | VARCHAR2 | Y |  |
| 149 | TIPO | VARCHAR2 | Y |  |
| 150 | CUIDADOS_PALIAT_UTI | VARCHAR2 | Y |  |
| 151 | DATA_DECISAO_PALIAT | VARCHAR2 | Y |  |
| 152 | PARECERES_PREVIOS | VARCHAR2 | Y |  |
| 153 | LAUDOS_EXAMES | VARCHAR2 | Y |  |
| 154 | FAMILIARES_PRESENTES_ADMISSAO | VARCHAR2 | Y |  |
| 155 | VISITA_FLEXIVEL | VARCHAR2 | Y |  |
| 156 | ORIENTADOS | VARCHAR2 | Y |  |
| 157 | OBSERVACOES | VARCHAR2 | Y |  |
| 158 | CONDUTA | VARCHAR2 | Y |  |

---

## SESGO.VW_CALCULO_INDICADORES_SIGUS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NR_CNES | NUMBER | Y |  |
| 2 | CD_PRODUTO | NUMBER | N |  |
| 3 | DT_MVTO_ESTOQUE | DATE | N |  |
| 4 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 5 | QNTD_ESTOQUE | NUMBER | Y |  |

---

## SESGO.VW_DADOS_PRESCRICAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIP_PRESC | NUMBER | Y |  |
| 2 | CD_PRODUTO | NUMBER | Y |  |
| 3 | NM_TIP_PRESTA | VARCHAR2 | Y |  |
| 4 | QT_ITPRE_MED | NUMBER | Y |  |
| 5 | TP_SITUACAO | VARCHAR2 | Y |  |
| 6 | CD_FOR_APL | VARCHAR2 | Y |  |
| 7 | DH_INICIAL | DATE | Y |  |
| 8 | DS_ITPRE_MED | VARCHAR2 | Y |  |
| 9 | DS_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 10 | CD_ITPRE_MED | NUMBER | Y |  |
| 11 | CD_UNI_PRO | NUMBER | Y |  |
| 12 | CD_UNIDADE | VARCHAR2 | Y |  |
| 13 | CD_UNI_PRESC | NUMBER | Y |  |
| 14 | DH_CANCELADO | DATE | Y |  |
| 15 | CD_ITPRE_MED_CANC | NUMBER | Y |  |
| 16 | QT_DIAS | NUMBER | Y |  |
| 17 | NR_DIA | NUMBER | Y |  |
| 18 | CD_PRE_MED | NUMBER | N |  |
| 19 | DT_PRE_MED | DATE | N |  |
| 20 | HR_PRE_MED | DATE | N |  |
| 21 | DH_CRIACAO | DATE | Y |  |
| 22 | DT_REFERENCIA | DATE | N |  |
| 23 | DH_FINAL | DATE | Y |  |
| 24 | CD_ATENDIMENTO | NUMBER | N |  |
| 25 | SN_RN | VARCHAR2 | N |  |
| 26 | NM_USUARIO | VARCHAR2 | Y |  |
| 27 | TIT_PRESCRICAO | VARCHAR2 | Y |  |
| 28 | TP_PRE_MED | VARCHAR2 | N |  |
| 29 | NM_PRESTADOR | VARCHAR2 | N |  |
| 30 | CD_PRESTADOR | NUMBER | N |  |
| 31 | DS_CODIGO_CONSELHO | VARCHAR2 | Y |  |
| 32 | NR_CPF_CGC | VARCHAR2 | Y |  |
| 33 | DS_CONSELHO | VARCHAR2 | N |  |
| 34 | CD_PACIENTE | NUMBER | N |  |
| 35 | NM_PACIENTE | VARCHAR2 | Y |  |
| 36 | DT_NASCIMENTO | DATE | Y |  |
| 37 | NR_IDADE | VARCHAR2 | Y |  |
| 38 | NM_CONVENIO | VARCHAR2 | Y |  |
| 39 | DS_SERVICO | VARCHAR2 | Y |  |
| 40 | DS_UNID_INT | VARCHAR2 | Y |  |
| 41 | CD_UNID_INT | NUMBER | Y |  |
| 42 | DS_ENFERMARIA | VARCHAR2 | Y |  |
| 43 | DS_LEITO | VARCHAR2 | Y |  |
| 44 | ACOMODACAO | VARCHAR2 | Y |  |
| 45 | DS_TIP_PRESC | VARCHAR2 | Y |  |
| 46 | DS_TIP_FRE | VARCHAR2 | N |  |
| 47 | NR_ORDEM_ITEM | NUMBER | Y |  |
| 48 | SN_IMPRIME_HORARIO | VARCHAR2 | N |  |
| 49 | SN_NR_DIA | VARCHAR2 | Y |  |
| 50 | SN_DIAS_APLICACAO | VARCHAR2 | N |  |
| 51 | CANCELADO | VARCHAR2 | Y |  |
| 52 | DS_TIP_ESQ | VARCHAR2 | Y |  |
| 53 | CD_TIP_ESQ | VARCHAR2 | Y |  |
| 54 | NR_ORDEM_ESQ | NUMBER | N |  |
| 55 | SN_CONTROLA_VOLUME | VARCHAR2 | N |  |
| 56 | CD_CID | VARCHAR2 | Y |  |
| 57 | DS_CID | VARCHAR2 | N |  |
| 58 | CD_TIP_FRE | NUMBER | N |  |
| 59 | DT_INTERNACAO | DATE | N |  |
| 60 | CD_PRE_PAD | NUMBER | Y |  |
| 61 | DS_PRE_PAD | VARCHAR2 | Y |  |
| 62 | TP_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 63 | TP_DET_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 64 | CD_SETOR | NUMBER | Y |  |
| 65 | SN_URGENTE | VARCHAR2 | Y |  |
| 66 | CD_NPADRONIZADO | NUMBER | Y |  |
| 67 | DS_NPADRONIZADO | VARCHAR2 | Y |  |
| 68 | TP_CONTROLE | VARCHAR2 | N |  |
| 69 | SN_TRANSCRICAO | VARCHAR2 | N |  |
| 70 | DS_OBS_ADICIONAL | VARCHAR2 | Y |  |
| 71 | NR_CONSELHO | VARCHAR2 | Y |  |
| 72 | NM_PRESTADOR_RESPONSAVEL | VARCHAR2 | N |  |
| 73 | CD_MULTI_EMPRESA | NUMBER | N |  |

---

## SESGO.VW_ESTOQUE_PERDAS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NR_CNES | NUMBER | Y |  |
| 2 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 3 | CD_ESTOQUE | NUMBER | N |  |
| 4 | DS_ESTOQUE | VARCHAR2 | N |  |
| 5 | DT_MVTO_ESTOQUE | DATE | N |  |
| 6 | CD_MOT_BAI | NUMBER | Y |  |
| 7 | CD_MVTO_ESTOQUE | NUMBER | N |  |
| 8 | DS_MOT_BAI | VARCHAR2 | N |  |
| 9 | CD_PRODUTO | NUMBER | N |  |
| 10 | CD_LOTE | VARCHAR2 | Y |  |
| 11 | DT_VALIDADE | DATE | Y |  |
| 12 | QT_MOVIMENTACAO | NUMBER | N |  |
| 13 | DS_UNIDADE | VARCHAR2 | N |  |
| 14 | DS_PRODUTO | VARCHAR2 | N |  |
| 15 | DS_ESPECIE | VARCHAR2 | Y |  |
| 16 | CD_SETOR | NUMBER | Y |  |
| 17 | NM_SETOR | VARCHAR2 | Y |  |
| 18 | CD_ESPECIE | NUMBER | N |  |
| 19 | VL_UNITARIO | NUMBER | Y |  |
| 20 | VL_FATOR | NUMBER | N |  |
| 21 | CUSTO_MEDIO | NUMBER | Y |  |

---

## SESGO.VW_EXAMES_LAB_IMA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | TIPO_EXAME | VARCHAR2 | Y |  |
| 2 | DS_SUB_GRUPO_PROCEDIMENTO | VARCHAR2 | Y |  |
| 3 | CD_SETOR | NUMBER | Y |  |
| 4 | NM_SETOR | VARCHAR2 | Y |  |
| 5 | DT_PEDIDO | DATE | Y |  |
| 6 | CD_ORI_ATE | NUMBER | Y |  |
| 7 | DS_ORI_ATE | VARCHAR2 | Y |  |
| 8 | CD_PEDIDO | NUMBER | Y |  |
| 9 | CD_ATENDIMENTO | NUMBER | Y |  |
| 10 | CD_EXAME | NUMBER | Y |  |
| 11 | CD_ITPEDIDO | NUMBER | Y |  |
| 12 | NM_EXAME | VARCHAR2 | Y |  |
| 13 | DT_PRE_MED | VARCHAR2 | Y |  |
| 14 | HR_PRE_MED | VARCHAR2 | Y |  |
| 15 | DT_LAUDO | VARCHAR2 | Y |  |
| 16 | HR_LAUDO | VARCHAR2 | Y |  |
| 17 | DT_EMITIDO | VARCHAR2 | Y |  |
| 18 | DT_ASSINADO | VARCHAR2 | Y |  |

---

## SESGO.VW_POSICAO_ESTOQUE

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
| 11 | QT_ESTOQUE_MAXIMO | NUMBER | Y |  |
| 12 | QT_ESTOQUE_MINIMO | NUMBER | Y |  |
| 13 | QT_PONTO_DE_PEDIDO | NUMBER | Y |  |
| 14 | VL_CUSTO_MEDIO | NUMBER | Y |  |
| 15 | QT_ESTOQUE | NUMBER | Y |  |
| 16 | DS_UNIDADE | VARCHAR2 | Y |  |
| 17 | CD_MULTI_EMPRESA | NUMBER | N |  |

---

## SESGO.VW_SESGO_CIRURGIA_AGENDADA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AVISO_CIRURGIA | NUMBER | N |  |
| 2 | CD_ATENDIMENTO | NUMBER | Y |  |
| 3 | CD_PACIENTE | NUMBER | Y |  |
| 4 | CD_CIRURGIA_AVISO | NUMBER | N |  |
| 5 | CD_PROCEDIMENTO | VARCHAR2 | N |  |
| 6 | DS_PROCEDIMENTO | VARCHAR2 | N |  |
| 7 | DS_GRUPO_PROCEDIMENTO | VARCHAR2 | N |  |
| 8 | DS_SUB_GRUPO_PROCEDIMENTO | VARCHAR2 | N |  |
| 9 | TIPO_CIRURGIA | VARCHAR2 | Y |  |
| 10 | DS_LATERALIDADE | VARCHAR2 | Y |  |
| 11 | TP_NATUREZA | VARCHAR2 | Y |  |
| 12 | TP_SITUACAO | VARCHAR2 | Y |  |
| 13 | NM_PACIENTE | VARCHAR2 | Y |  |
| 14 | NM_SOCIAL_PACIENTE | VARCHAR2 | Y |  |
| 15 | DT_REALIZACAO | DATE | Y |  |
| 16 | HR_INICIO | VARCHAR2 | Y |  |
| 17 | HR_FIM | VARCHAR2 | Y |  |
| 18 | CD_CIRURGIAO | NUMBER | Y |  |
| 19 | CD_ANESTESISTA | VARCHAR2 | Y |  |
| 20 | DS_TIP_ANEST | VARCHAR2 | Y |  |
| 21 | CD_CEN_CIR | NUMBER | N |  |
| 22 | DS_CEN_CIR | VARCHAR2 | N |  |
| 23 | DS_SAL_CIR | VARCHAR2 | N |  |
| 24 | DS_RESUMO | VARCHAR2 | Y |  |
| 25 | CD_CIRURGIA | NUMBER | N |  |
| 26 | DS_CIRURGIA | VARCHAR2 | Y |  |
| 27 | NM_CONVENIO | VARCHAR2 | N |  |
| 28 | TP_CIRURGIA | VARCHAR2 | N |  |
| 29 | CD_MULTI_EMPRESA | NUMBER | N |  |

---

## VIVACE_SESGO_CRER.ALERT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | VARCHAR2 | N |  |
| 2 | NAME | VARCHAR2 | N |  |
| 3 | ALERT | CLOB | N |  |

---

## VIVACE_SESGO_CRER.CHANNEL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | CHAR | N |  |
| 2 | NAME | VARCHAR2 | N |  |
| 3 | REVISION | NUMBER | Y |  |
| 4 | CHANNEL | CLOB | Y |  |

---

## VIVACE_SESGO_CRER.CHANNEL_GROUP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | VARCHAR2 | N |  |
| 2 | NAME | VARCHAR2 | N |  |
| 3 | REVISION | NUMBER | Y |  |
| 4 | CHANNEL_GROUP | CLOB | Y |  |

---

## VIVACE_SESGO_CRER.CODE_TEMPLATE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | VARCHAR2 | N |  |
| 2 | NAME | VARCHAR2 | N |  |
| 3 | REVISION | NUMBER | Y |  |
| 4 | CODE_TEMPLATE | CLOB | Y |  |

---

## VIVACE_SESGO_CRER.CODE_TEMPLATE_LIBRARY

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | VARCHAR2 | N |  |
| 2 | NAME | VARCHAR2 | N |  |
| 3 | REVISION | NUMBER | Y |  |
| 4 | LIBRARY | CLOB | Y |  |

---

## VIVACE_SESGO_CRER.CONFIGURATION

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CATEGORY | VARCHAR2 | N |  |
| 2 | NAME | VARCHAR2 | N |  |
| 3 | VALUE | CLOB | Y |  |

---

## VIVACE_SESGO_CRER.D_CHANNELS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | LOCAL_CHANNEL_ID | NUMBER | N |  |
| 2 | CHANNEL_ID | NVARCHAR2 | N |  |

---

## VIVACE_SESGO_CRER.D_M2

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | SERVER_ID | NVARCHAR2 | N |  |
| 3 | RECEIVED_DATE | TIMESTAMP(6) WITH LOCAL TIME ZONE | Y |  |
| 4 | PROCESSED | CHAR | N |  |
| 5 | ORIGINAL_ID | NUMBER | Y |  |
| 6 | IMPORT_ID | NUMBER | Y |  |
| 7 | IMPORT_CHANNEL_ID | NVARCHAR2 | Y |  |

---

## VIVACE_SESGO_CRER.D_M3

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | SERVER_ID | NVARCHAR2 | N |  |
| 3 | RECEIVED_DATE | TIMESTAMP(6) WITH LOCAL TIME ZONE | Y |  |
| 4 | PROCESSED | CHAR | N |  |
| 5 | ORIGINAL_ID | NUMBER | Y |  |
| 6 | IMPORT_ID | NUMBER | Y |  |
| 7 | IMPORT_CHANNEL_ID | NVARCHAR2 | Y |  |

---

## VIVACE_SESGO_CRER.D_M5

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | SERVER_ID | NVARCHAR2 | N |  |
| 3 | RECEIVED_DATE | TIMESTAMP(6) WITH LOCAL TIME ZONE | Y |  |
| 4 | PROCESSED | CHAR | N |  |
| 5 | ORIGINAL_ID | NUMBER | Y |  |
| 6 | IMPORT_ID | NUMBER | Y |  |
| 7 | IMPORT_CHANNEL_ID | NVARCHAR2 | Y |  |

---

## VIVACE_SESGO_CRER.D_M6

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | SERVER_ID | NVARCHAR2 | N |  |
| 3 | RECEIVED_DATE | TIMESTAMP(6) WITH LOCAL TIME ZONE | Y |  |
| 4 | PROCESSED | CHAR | N |  |
| 5 | ORIGINAL_ID | NUMBER | Y |  |
| 6 | IMPORT_ID | NUMBER | Y |  |
| 7 | IMPORT_CHANNEL_ID | NVARCHAR2 | Y |  |

---

## VIVACE_SESGO_CRER.D_MA2

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NVARCHAR2 | N |  |
| 2 | MESSAGE_ID | NUMBER | N |  |
| 3 | TYPE | NVARCHAR2 | Y |  |
| 4 | SEGMENT_ID | NUMBER | N |  |
| 5 | ATTACHMENT_SIZE | NUMBER | N |  |
| 6 | CONTENT | BLOB | Y |  |

---

## VIVACE_SESGO_CRER.D_MA3

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NVARCHAR2 | N |  |
| 2 | MESSAGE_ID | NUMBER | N |  |
| 3 | TYPE | NVARCHAR2 | Y |  |
| 4 | SEGMENT_ID | NUMBER | N |  |
| 5 | ATTACHMENT_SIZE | NUMBER | N |  |
| 6 | CONTENT | BLOB | Y |  |

---

## VIVACE_SESGO_CRER.D_MA5

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NVARCHAR2 | N |  |
| 2 | MESSAGE_ID | NUMBER | N |  |
| 3 | TYPE | NVARCHAR2 | Y |  |
| 4 | SEGMENT_ID | NUMBER | N |  |
| 5 | ATTACHMENT_SIZE | NUMBER | N |  |
| 6 | CONTENT | BLOB | Y |  |

---

## VIVACE_SESGO_CRER.D_MA6

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NVARCHAR2 | N |  |
| 2 | MESSAGE_ID | NUMBER | N |  |
| 3 | TYPE | NVARCHAR2 | Y |  |
| 4 | SEGMENT_ID | NUMBER | N |  |
| 5 | ATTACHMENT_SIZE | NUMBER | N |  |
| 6 | CONTENT | BLOB | Y |  |

---

## VIVACE_SESGO_CRER.D_MC2

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | METADATA_ID | NUMBER | N |  |
| 2 | MESSAGE_ID | NUMBER | N |  |
| 3 | CONTENT_TYPE | NUMBER | N |  |
| 4 | CONTENT | NCLOB | Y |  |
| 5 | IS_ENCRYPTED | CHAR | N |  |
| 6 | DATA_TYPE | NVARCHAR2 | Y |  |

---

## VIVACE_SESGO_CRER.D_MC3

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | METADATA_ID | NUMBER | N |  |
| 2 | MESSAGE_ID | NUMBER | N |  |
| 3 | CONTENT_TYPE | NUMBER | N |  |
| 4 | CONTENT | NCLOB | Y |  |
| 5 | IS_ENCRYPTED | CHAR | N |  |
| 6 | DATA_TYPE | NVARCHAR2 | Y |  |

---

## VIVACE_SESGO_CRER.D_MC5

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | METADATA_ID | NUMBER | N |  |
| 2 | MESSAGE_ID | NUMBER | N |  |
| 3 | CONTENT_TYPE | NUMBER | N |  |
| 4 | CONTENT | NCLOB | Y |  |
| 5 | IS_ENCRYPTED | CHAR | N |  |
| 6 | DATA_TYPE | NVARCHAR2 | Y |  |

---

## VIVACE_SESGO_CRER.D_MC6

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | METADATA_ID | NUMBER | N |  |
| 2 | MESSAGE_ID | NUMBER | N |  |
| 3 | CONTENT_TYPE | NUMBER | N |  |
| 4 | CONTENT | NCLOB | Y |  |
| 5 | IS_ENCRYPTED | CHAR | N |  |
| 6 | DATA_TYPE | NVARCHAR2 | Y |  |

---

## VIVACE_SESGO_CRER.D_MCM2

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | METADATA_ID | NUMBER | N |  |
| 2 | MESSAGE_ID | NUMBER | N |  |
| 3 | SOURCE | VARCHAR2 | Y |  |
| 4 | TYPE | VARCHAR2 | Y |  |

---

## VIVACE_SESGO_CRER.D_MCM3

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | METADATA_ID | NUMBER | N |  |
| 2 | MESSAGE_ID | NUMBER | N |  |

---

## VIVACE_SESGO_CRER.D_MCM5

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | METADATA_ID | NUMBER | N |  |
| 2 | MESSAGE_ID | NUMBER | N |  |
| 3 | SOURCE | VARCHAR2 | Y |  |
| 4 | TYPE | VARCHAR2 | Y |  |

---

## VIVACE_SESGO_CRER.D_MCM6

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | METADATA_ID | NUMBER | N |  |
| 2 | MESSAGE_ID | NUMBER | N |  |
| 3 | SOURCE | VARCHAR2 | Y |  |
| 4 | TYPE | VARCHAR2 | Y |  |

---

## VIVACE_SESGO_CRER.D_MM2

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | MESSAGE_ID | NUMBER | N |  |
| 3 | SERVER_ID | NVARCHAR2 | N |  |
| 4 | RECEIVED_DATE | TIMESTAMP(6) WITH LOCAL TIME ZONE | Y |  |
| 5 | STATUS | CHAR | N |  |
| 6 | CONNECTOR_NAME | NCLOB | Y |  |
| 7 | SEND_ATTEMPTS | NUMBER | N |  |
| 8 | SEND_DATE | TIMESTAMP(6) WITH LOCAL TIME ZONE | Y |  |
| 9 | RESPONSE_DATE | TIMESTAMP(6) WITH LOCAL TIME ZONE | Y |  |
| 10 | ERROR_CODE | NUMBER | N |  |
| 11 | CHAIN_ID | NUMBER | N |  |
| 12 | ORDER_ID | NUMBER | N |  |

---

## VIVACE_SESGO_CRER.D_MM3

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | MESSAGE_ID | NUMBER | N |  |
| 3 | SERVER_ID | NVARCHAR2 | N |  |
| 4 | RECEIVED_DATE | TIMESTAMP(6) WITH LOCAL TIME ZONE | Y |  |
| 5 | STATUS | CHAR | N |  |
| 6 | CONNECTOR_NAME | NCLOB | Y |  |
| 7 | SEND_ATTEMPTS | NUMBER | N |  |
| 8 | SEND_DATE | TIMESTAMP(6) WITH LOCAL TIME ZONE | Y |  |
| 9 | RESPONSE_DATE | TIMESTAMP(6) WITH LOCAL TIME ZONE | Y |  |
| 10 | ERROR_CODE | NUMBER | N |  |
| 11 | CHAIN_ID | NUMBER | N |  |
| 12 | ORDER_ID | NUMBER | N |  |

---

## VIVACE_SESGO_CRER.D_MM5

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | MESSAGE_ID | NUMBER | N |  |
| 3 | SERVER_ID | NVARCHAR2 | N |  |
| 4 | RECEIVED_DATE | TIMESTAMP(6) WITH LOCAL TIME ZONE | Y |  |
| 5 | STATUS | CHAR | N |  |
| 6 | CONNECTOR_NAME | NCLOB | Y |  |
| 7 | SEND_ATTEMPTS | NUMBER | N |  |
| 8 | SEND_DATE | TIMESTAMP(6) WITH LOCAL TIME ZONE | Y |  |
| 9 | RESPONSE_DATE | TIMESTAMP(6) WITH LOCAL TIME ZONE | Y |  |
| 10 | ERROR_CODE | NUMBER | N |  |
| 11 | CHAIN_ID | NUMBER | N |  |
| 12 | ORDER_ID | NUMBER | N |  |

---

## VIVACE_SESGO_CRER.D_MM6

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | MESSAGE_ID | NUMBER | N |  |
| 3 | SERVER_ID | NVARCHAR2 | N |  |
| 4 | RECEIVED_DATE | TIMESTAMP(6) WITH LOCAL TIME ZONE | Y |  |
| 5 | STATUS | CHAR | N |  |
| 6 | CONNECTOR_NAME | NCLOB | Y |  |
| 7 | SEND_ATTEMPTS | NUMBER | N |  |
| 8 | SEND_DATE | TIMESTAMP(6) WITH LOCAL TIME ZONE | Y |  |
| 9 | RESPONSE_DATE | TIMESTAMP(6) WITH LOCAL TIME ZONE | Y |  |
| 10 | ERROR_CODE | NUMBER | N |  |
| 11 | CHAIN_ID | NUMBER | N |  |
| 12 | ORDER_ID | NUMBER | N |  |

---

## VIVACE_SESGO_CRER.D_MS2

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | METADATA_ID | NUMBER | Y |  |
| 2 | SERVER_ID | NVARCHAR2 | N |  |
| 3 | RECEIVED | NUMBER | N |  |
| 4 | RECEIVED_LIFETIME | NUMBER | N |  |
| 5 | FILTERED | NUMBER | N |  |
| 6 | FILTERED_LIFETIME | NUMBER | N |  |
| 7 | SENT | NUMBER | N |  |
| 8 | SENT_LIFETIME | NUMBER | N |  |
| 9 | ERROR | NUMBER | N |  |
| 10 | ERROR_LIFETIME | NUMBER | N |  |

---

## VIVACE_SESGO_CRER.D_MS3

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | METADATA_ID | NUMBER | Y |  |
| 2 | SERVER_ID | NVARCHAR2 | N |  |
| 3 | RECEIVED | NUMBER | N |  |
| 4 | RECEIVED_LIFETIME | NUMBER | N |  |
| 5 | FILTERED | NUMBER | N |  |
| 6 | FILTERED_LIFETIME | NUMBER | N |  |
| 7 | SENT | NUMBER | N |  |
| 8 | SENT_LIFETIME | NUMBER | N |  |
| 9 | ERROR | NUMBER | N |  |
| 10 | ERROR_LIFETIME | NUMBER | N |  |

---

## VIVACE_SESGO_CRER.D_MS5

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | METADATA_ID | NUMBER | Y |  |
| 2 | SERVER_ID | NVARCHAR2 | N |  |
| 3 | RECEIVED | NUMBER | N |  |
| 4 | RECEIVED_LIFETIME | NUMBER | N |  |
| 5 | FILTERED | NUMBER | N |  |
| 6 | FILTERED_LIFETIME | NUMBER | N |  |
| 7 | SENT | NUMBER | N |  |
| 8 | SENT_LIFETIME | NUMBER | N |  |
| 9 | ERROR | NUMBER | N |  |
| 10 | ERROR_LIFETIME | NUMBER | N |  |

---

## VIVACE_SESGO_CRER.D_MS6

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | METADATA_ID | NUMBER | Y |  |
| 2 | SERVER_ID | NVARCHAR2 | N |  |
| 3 | RECEIVED | NUMBER | N |  |
| 4 | RECEIVED_LIFETIME | NUMBER | N |  |
| 5 | FILTERED | NUMBER | N |  |
| 6 | FILTERED_LIFETIME | NUMBER | N |  |
| 7 | SENT | NUMBER | N |  |
| 8 | SENT_LIFETIME | NUMBER | N |  |
| 9 | ERROR | NUMBER | N |  |
| 10 | ERROR_LIFETIME | NUMBER | N |  |

---

## VIVACE_SESGO_CRER.EVENT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | DATE_CREATED | TIMESTAMP(6) WITH LOCAL TIME ZONE | Y |  |
| 3 | NAME | CLOB | N |  |
| 4 | EVENT_LEVEL | VARCHAR2 | N |  |
| 5 | OUTCOME | VARCHAR2 | N |  |
| 6 | ATTRIBUTES | CLOB | Y |  |
| 7 | USER_ID | NUMBER | N |  |
| 8 | IP_ADDRESS | VARCHAR2 | Y |  |
| 9 | SERVER_ID | NVARCHAR2 | Y |  |

---

## VIVACE_SESGO_CRER.PERSON

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | USERNAME | VARCHAR2 | N |  |
| 3 | FIRSTNAME | VARCHAR2 | Y |  |
| 4 | LASTNAME | VARCHAR2 | Y |  |
| 5 | ORGANIZATION | VARCHAR2 | Y |  |
| 6 | INDUSTRY | VARCHAR2 | Y |  |
| 7 | EMAIL | VARCHAR2 | Y |  |
| 8 | PHONENUMBER | VARCHAR2 | Y |  |
| 9 | DESCRIPTION | VARCHAR2 | Y |  |
| 10 | LAST_LOGIN | TIMESTAMP(6) WITH LOCAL TIME ZONE | Y |  |
| 11 | GRACE_PERIOD_START | TIMESTAMP(6) WITH LOCAL TIME ZONE | Y |  |
| 12 | STRIKE_COUNT | NUMBER | Y |  |
| 13 | LAST_STRIKE_TIME | TIMESTAMP(6) WITH LOCAL TIME ZONE | Y |  |
| 14 | LOGGED_IN | CHAR | N |  |

---

## VIVACE_SESGO_CRER.PERSON_PASSWORD

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | PERSON_ID | NUMBER | N |  |
| 2 | PASSWORD | VARCHAR2 | N |  |
| 3 | PASSWORD_DATE | TIMESTAMP(6) WITH LOCAL TIME ZONE | Y |  |

---

## VIVACE_SESGO_CRER.PERSON_PREFERENCE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | PERSON_ID | NUMBER | N |  |
| 2 | NAME | VARCHAR2 | N |  |
| 3 | VALUE | CLOB | Y |  |

---

## VIVACE_SESGO_CRER.RS_CONFIGURACAO_SESGO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_CONFIGURACAO_SESGO | NUMBER | N | Identificador da tabela de configuracao |
| 2 | ID_UNIDADE | NUMBER | Y | Identificador da unidade |
| 3 | DS_SIGLA_UNIDADE | VARCHAR2 | Y | Sigla da unidade |
| 4 | NM_HOSPITAL | VARCHAR2 | Y | Nome da Hospital/Instituicao |
| 5 | DT_INICIO_LEGADO | DATE | Y | Data Inicial do envio de laudo legado |
| 6 | DT_FIM_LEGADO | DATE | Y | Data final envio de laudo legado |

---

## VIVACE_SESGO_CRER.RS_HL7_SESGO_OUT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_HL7_SESGO_OUT | NUMBER | N | Identificador de registro |
| 2 | TP_INTEGRATION | CHAR | N | Tipo de integracao 'I' = Importacao registro via trigger 'P' = Pendente Imagem 'A' = Aguardando '... |
| 3 | DS_ERROR | VARCHAR2 | Y | Descricao do erro |
| 4 | DT_INTEGRATION | DATE | N | Data da insercao do registro na tabela de saida |
| 5 | DT_PROCESSED | DATE | Y | Data do envio do registro para terceiro |
| 6 | TP_MOVIMENT | CHAR | N | Tipo de movimento 'I' Inclusao |
| 7 | ID_UNIT | NUMBER | Y | Identificador da unidade |
| 8 | MSH_SEGMENT | VARCHAR2 | Y | Seguimento da mensagem |
| 9 | MSH_FIELD_SEPARATOR | VARCHAR2 | Y | Caracter separador dos campos |
| 10 | MSH_ENCODING_CHARACTERS | VARCHAR2 | Y | Caracteres da codificacao |
| 11 | MSH_SENDING_APPLICATION | VARCHAR2 | Y | Nome do sistema de origem |
| 12 | MSH_SENDING_FACILITY | VARCHAR2 | Y | Nome fornecedor de origem |
| 13 | MSH_RECEIVING_APPLICATION | VARCHAR2 | Y | Nome sistema de destino |
| 14 | MSH_RECEIVING_FACILITY | VARCHAR2 | Y | Nome fornecedor de destino |
| 15 | MSH_DATETIME_MESSAGE | VARCHAR2 | Y | Data da mensagem AAAAMMDDHH24mmss |
| 16 | MSH_MESSAGE_TYPE | VARCHAR2 | Y | Tipo da mensagem enviada |
| 17 | MSH_MESSAGE_CONTROL_ID | VARCHAR2 | Y | Identificador de controle |
| 18 | MSH_PROCESSING_ID | CHAR | Y | Identificador de processamento |
| 19 | MSH_VERSION_ID | VARCHAR2 | Y | versao do hl7 |
| 20 | PID_PATIENT_ID | NUMBER | Y | Identificador do paciente |
| 21 | PID_ALTERNATIVE_PATIENT_ID | NUMBER | Y | CPF do paciente |
| 22 | PID_PATIENT_FIRTNAME | VARCHAR2 | Y | Primeiro nome do paciente |
| 23 | PID_PATIENT_LASTNAME | VARCHAR2 | Y | Sobrenome do paciente |
| 24 | PID_DATE_OF_BIRTH | VARCHAR2 | Y | Data nascimento paciente AAAAMMDDHH24mmss |
| 25 | PID_ADMINISTRATIVE_SEX | CHAR | Y | Sexo do paciente F/ M/ O |
| 26 | PV1_CRM_DOCTOR_REQ | VARCHAR2 | Y | CRM medico solicitante |
| 27 | PV1_FIRSTNAME_DOCTOR_REQ | VARCHAR2 | Y | Primeiro Nome do medico solicitante |
| 28 | PV1_LASTNAME_DOCTOR_REQ | VARCHAR2 | Y | Sobrenome do medico solicitante |
| 29 | OBR_PLACER_ORDER_NUMBER | VARCHAR2 | Y | Accession Number |
| 30 | OBR_SERVICE_IDENT_MODALITY | VARCHAR2 | Y | Identificador da Modalidade do exame |
| 31 | OBR_SERVICE_IDENT_EXAM | VARCHAR2 | Y | Nome do exame |
| 32 | OBR_REQUESTED_DATETIME | VARCHAR2 | Y | Data do exame AAAAMMDDHH24mmss |
| 33 | OBR_SERV_SECTION_INITIAL | VARCHAR2 | Y | Sigla da unidade |
| 34 | OBR_SERV_SECTION_NAME_UNIT | VARCHAR2 | Y | Nome da unidade |
| 35 | OBX_VALUE_TYPE | VARCHAR2 | Y | Tipo de Valor fornecido |
| 36 | OBX_OBSERVATION_IDENTIFIER | NUMBER | Y | Identificador do laudo |
| 37 | OBX_RESULT_STATUS | CHAR | Y | Status do resultado |
| 38 | OBX_DATETIME_RESULT | VARCHAR2 | Y | Data do laudo AAAAAMMDDHH24mmss |
| 39 | OBX_PROD_CRM_DOCTOR_EXE | VARCHAR2 | Y | CRM do medico executante |
| 40 | OBX_PROD_FIRSTNAME_DOCTOR_EXE | VARCHAR2 | Y | Primeiro nome do medico executante |
| 41 | OBX_PROD_LASTNAME_DOCTOR_EXE | VARCHAR2 | Y | Sobrenome do medico executante |
| 42 | OBX_OBSER_CRM_DOCTOR_REV | VARCHAR2 | Y | CRM do medico revisor |
| 43 | OBX_OBSER_FIRSTNAME_DOCTOR_REV | VARCHAR2 | Y | Primeiro nome do medico revisor |
| 44 | OBX_OBSER_LASTNAME_DOCTOR_REV | VARCHAR2 | Y | Sobrenome do medico revisor |
| 45 | DT_STUDYTIME | DATE | Y | Data e hora do estudo |
| 46 | STUDY_UID | VARCHAR2 | Y | Study uid |
| 47 | SN_LEGADO | CHAR | Y | Indica Laudo Legado |
| 48 | DT_LAST_SEND_IMAGE | DATE | Y | Data da ultima imagem enviada |
| 49 | ID_PEDIDO_EXAME | NUMBER | Y | Identificador da  tabela de pedidos de exames |
| 50 | ID_EXAME_UNIDADE | NUMBER | Y | Codigo do exame na unidade |
| 51 | ID_MEDICO_EXECUTANTE | NUMBER | Y | Codigo do medico executante na unidade |
| 52 | ID_MEDICO_REVISOR | NUMBER | Y | Codigo do medico revisor |

---

## VIVACE_SESGO_CRER.RS_IMAGE_SESGO_OUT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_IMAGE_SESGO_OUT | NUMBER | N | Identificador de registro da tabela |
| 2 | TP_INTEGRATION | CHAR | N | Status da Integracao A = aguardando T = Transportado E = Erro |
| 3 | DS_ERROR | VARCHAR2 | Y | Descricao de erro |
| 4 | DT_INTEGRATION | DATE | N | Data que foi inserido na tabela |
| 5 | DT_PROCESSED | DATE | Y | Data envio do estudo para pacs terceiro |
| 6 | TP_MOVIMENT | CHAR | N | Tipo do movimento |
| 7 | ID_UNIT | NUMBER | N | Codigo da unidade |
| 8 | ACNUMBER | VARCHAR2 | Y | Accession Number |
| 9 | DT_STUDY | DATE | Y | Data do estudo |
| 10 | STUDY_UID | VARCHAR2 | Y | Identificador do estudo |
| 11 | FILENAME | VARCHAR2 | Y | Caminho fisico da imagem |
| 12 | MODALITY | VARCHAR2 | Y | Modalidade do estudo |
| 13 | INSTANCEUID | VARCHAR2 | Y | Sop UID da imagem |
| 14 | SN_LEGADO | CHAR | Y | Indica se estudo do legado |

---

## VIVACE_SESGO_CRER.RS_ITEM_IMPORTADO_SESGO
> TABELA COM OS REGISTROS INSERIDOS NA SAIDA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_UNIDADE | NUMBER | Y |  |
| 2 | ACNUMBER | VARCHAR2 | Y |  |

---

## VIVACE_SESGO_CRER.SCHEMA_INFO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | VERSION | VARCHAR2 | Y |  |

---

## VIVACE_SESGO_CRER.SCRIPT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | GROUP_ID | VARCHAR2 | N |  |
| 2 | ID | VARCHAR2 | N |  |
| 3 | SCRIPT | CLOB | Y |  |

---

## VIVACE_SESGO_CRER.VW_HL7_SES_GO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | PATIENT_ID | NUMBER | Y |  |
| 2 | PATIENT_FIRST_NAME | VARCHAR2 | Y |  |
| 3 | PATIENT_LAST_NAME | VARCHAR2 | Y |  |
| 4 | PATIENT_SEX | CHAR | Y |  |
| 5 | PATIENT_DATE_OF_BIRTH | VARCHAR2 | Y |  |
| 6 | PATIENT_DOCUMENT | NUMBER | Y |  |
| 7 | INSTITUTION_NAME | VARCHAR2 | Y |  |
| 8 | INSTITUTION_ISSUER | VARCHAR2 | Y |  |
| 9 | ACCESSION_NUMBER | VARCHAR2 | Y |  |
| 10 | STUDY_INSTANCE_UID | VARCHAR2 | Y |  |
| 11 | STUDY_DATE | VARCHAR2 | Y |  |
| 12 | MODALITY | VARCHAR2 | Y |  |
| 13 | EXAM | VARCHAR2 | Y |  |
| 14 | REFERRING_PHYSICIAN_ID | VARCHAR2 | Y |  |
| 15 | REFERRING_PHYSICIAN_NAME | VARCHAR2 | Y |  |
| 16 | REPORT_ID | NUMBER | Y |  |
| 17 | REPORT_DATE | VARCHAR2 | Y |  |
| 18 | REPORT_STATUS | CHAR | Y |  |
| 19 | CONTROL_REP_DT_TIME_LAST_MOD | VARCHAR2 | Y |  |
| 20 | REPORT_FILE_TYPE | CHAR | Y |  |
| 21 | REP_WRITER_NAME | VARCHAR2 | Y |  |
| 22 | REP_WRITE_CRM | VARCHAR2 | Y |  |
| 23 | REP_RELEASER_NAME | VARCHAR2 | Y |  |
| 24 | REP_RELEASER_CRM | VARCHAR2 | Y |  |
| 25 | CONTROL_REPORT_PDF_FILE_PATH | CHAR | Y |  |
| 26 | CONTROL_REPORT_PDF_DT_TIME | VARCHAR2 | Y |  |
| 27 | DT_PROCESSED | DATE | Y |  |

---

## VIVACE_SESGO_CRER.VW_IMAGEM_STATUS_ENVIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | STUDY_UID | VARCHAR2 | Y |  |
| 2 | SERIES | NUMBER | Y |  |
| 3 | ID_UNIT | NUMBER | N |  |
| 4 | SUCESSO | NUMBER | Y |  |
| 5 | ERRO | NUMBER | Y |  |
| 6 | PENDENTE | NUMBER | Y |  |
| 7 | INICIO_ENVIO | DATE | Y |  |
| 8 | FIM_ENVIO | DATE | Y |  |

---

## VIVACE_SESGO_CRER.VW_IMAGE_SES_GO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | PATIENT_ID | VARCHAR2 | N |  |
| 2 | PATIENT_FIRST_NAME | VARCHAR2 | Y |  |
| 3 | PATIENT_LAST_NAME | VARCHAR2 | Y |  |
| 4 | PATIENT_SEX | VARCHAR2 | Y |  |
| 5 | PATIENT_DATE_OF_BIRTH | VARCHAR2 | Y |  |
| 6 | INSTITUTION_NAME | VARCHAR2 | Y |  |
| 7 | INSTITUTION_ISSUER | VARCHAR2 | Y |  |
| 8 | ACCESSION_NUMBER | VARCHAR2 | Y |  |
| 9 | STUDY_INSTANCE_UID | VARCHAR2 | N |  |
| 10 | STUDY_DATE | VARCHAR2 | Y |  |
| 11 | EXAM | VARCHAR2 | Y |  |
| 12 | ID_UNIDADE | NUMBER | N |  |
| 13 | REFERRING_PHYSICIAN_ID | VARCHAR2 | Y |  |
| 14 | REFERRING_PHYSICIAN_NAME | VARCHAR2 | Y |  |
| 15 | PATIENT_DOCUMENT | VARCHAR2 | Y |  |
| 16 | MODALITY | VARCHAR2 | Y |  |
| 17 | JOB_SEND_STATUS | VARCHAR2 | Y |  |
| 18 | CONTROL_SOURCE_SERIES | NUMBER | Y |  |
| 19 | CONTROL_SOURCE_IMAGES | NUMBER | Y |  |
| 20 | JOB_SEND_START_DT_TIME | VARCHAR2 | Y |  |
| 21 | JOB_SEND_FINISH_DT_TIME | VARCHAR2 | Y |  |
| 22 | DT_PROCESSED | DATE | Y |  |

---

## VIVACE_SESGO_HUGOL.ALERT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | VARCHAR2 | N |  |
| 2 | NAME | VARCHAR2 | N |  |
| 3 | ALERT | CLOB | N |  |

---

## VIVACE_SESGO_HUGOL.CHANNEL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | CHAR | N |  |
| 2 | NAME | VARCHAR2 | N |  |
| 3 | REVISION | NUMBER | Y |  |
| 4 | CHANNEL | CLOB | Y |  |

---

## VIVACE_SESGO_HUGOL.CHANNEL_GROUP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | VARCHAR2 | N |  |
| 2 | NAME | VARCHAR2 | N |  |
| 3 | REVISION | NUMBER | Y |  |
| 4 | CHANNEL_GROUP | CLOB | Y |  |

---

## VIVACE_SESGO_HUGOL.CODE_TEMPLATE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | VARCHAR2 | N |  |
| 2 | NAME | VARCHAR2 | N |  |
| 3 | REVISION | NUMBER | Y |  |
| 4 | CODE_TEMPLATE | CLOB | Y |  |

---

## VIVACE_SESGO_HUGOL.CODE_TEMPLATE_LIBRARY

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | VARCHAR2 | N |  |
| 2 | NAME | VARCHAR2 | N |  |
| 3 | REVISION | NUMBER | Y |  |
| 4 | LIBRARY | CLOB | Y |  |

---

## VIVACE_SESGO_HUGOL.CONFIGURATION

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CATEGORY | VARCHAR2 | N |  |
| 2 | NAME | VARCHAR2 | N |  |
| 3 | VALUE | CLOB | Y |  |

---

## VIVACE_SESGO_HUGOL.D_CHANNELS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | LOCAL_CHANNEL_ID | NUMBER | N |  |
| 2 | CHANNEL_ID | NVARCHAR2 | N |  |

---

## VIVACE_SESGO_HUGOL.D_M1

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | SERVER_ID | NVARCHAR2 | N |  |
| 3 | RECEIVED_DATE | TIMESTAMP(6) WITH LOCAL TIME ZONE | Y |  |
| 4 | PROCESSED | CHAR | N |  |
| 5 | ORIGINAL_ID | NUMBER | Y |  |
| 6 | IMPORT_ID | NUMBER | Y |  |
| 7 | IMPORT_CHANNEL_ID | NVARCHAR2 | Y |  |

---

## VIVACE_SESGO_HUGOL.D_M3

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | SERVER_ID | NVARCHAR2 | N |  |
| 3 | RECEIVED_DATE | TIMESTAMP(6) WITH LOCAL TIME ZONE | Y |  |
| 4 | PROCESSED | CHAR | N |  |
| 5 | ORIGINAL_ID | NUMBER | Y |  |
| 6 | IMPORT_ID | NUMBER | Y |  |
| 7 | IMPORT_CHANNEL_ID | NVARCHAR2 | Y |  |

---

## VIVACE_SESGO_HUGOL.D_M5

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | SERVER_ID | NVARCHAR2 | N |  |
| 3 | RECEIVED_DATE | TIMESTAMP(6) WITH LOCAL TIME ZONE | Y |  |
| 4 | PROCESSED | CHAR | N |  |
| 5 | ORIGINAL_ID | NUMBER | Y |  |
| 6 | IMPORT_ID | NUMBER | Y |  |
| 7 | IMPORT_CHANNEL_ID | NVARCHAR2 | Y |  |

---

## VIVACE_SESGO_HUGOL.D_M6

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | SERVER_ID | NVARCHAR2 | N |  |
| 3 | RECEIVED_DATE | TIMESTAMP(6) WITH LOCAL TIME ZONE | Y |  |
| 4 | PROCESSED | CHAR | N |  |
| 5 | ORIGINAL_ID | NUMBER | Y |  |
| 6 | IMPORT_ID | NUMBER | Y |  |
| 7 | IMPORT_CHANNEL_ID | NVARCHAR2 | Y |  |

---

## VIVACE_SESGO_HUGOL.D_MA1

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NVARCHAR2 | N |  |
| 2 | MESSAGE_ID | NUMBER | N |  |
| 3 | TYPE | NVARCHAR2 | Y |  |
| 4 | SEGMENT_ID | NUMBER | N |  |
| 5 | ATTACHMENT_SIZE | NUMBER | N |  |
| 6 | CONTENT | BLOB | Y |  |

---

## VIVACE_SESGO_HUGOL.D_MA3

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NVARCHAR2 | N |  |
| 2 | MESSAGE_ID | NUMBER | N |  |
| 3 | TYPE | NVARCHAR2 | Y |  |
| 4 | SEGMENT_ID | NUMBER | N |  |
| 5 | ATTACHMENT_SIZE | NUMBER | N |  |
| 6 | CONTENT | BLOB | Y |  |

---

## VIVACE_SESGO_HUGOL.D_MA5

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NVARCHAR2 | N |  |
| 2 | MESSAGE_ID | NUMBER | N |  |
| 3 | TYPE | NVARCHAR2 | Y |  |
| 4 | SEGMENT_ID | NUMBER | N |  |
| 5 | ATTACHMENT_SIZE | NUMBER | N |  |
| 6 | CONTENT | BLOB | Y |  |

---

## VIVACE_SESGO_HUGOL.D_MA6

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NVARCHAR2 | N |  |
| 2 | MESSAGE_ID | NUMBER | N |  |
| 3 | TYPE | NVARCHAR2 | Y |  |
| 4 | SEGMENT_ID | NUMBER | N |  |
| 5 | ATTACHMENT_SIZE | NUMBER | N |  |
| 6 | CONTENT | BLOB | Y |  |

---

## VIVACE_SESGO_HUGOL.D_MC1

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | METADATA_ID | NUMBER | N |  |
| 2 | MESSAGE_ID | NUMBER | N |  |
| 3 | CONTENT_TYPE | NUMBER | N |  |
| 4 | CONTENT | NCLOB | Y |  |
| 5 | IS_ENCRYPTED | CHAR | N |  |
| 6 | DATA_TYPE | NVARCHAR2 | Y |  |

---

## VIVACE_SESGO_HUGOL.D_MC3

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | METADATA_ID | NUMBER | N |  |
| 2 | MESSAGE_ID | NUMBER | N |  |
| 3 | CONTENT_TYPE | NUMBER | N |  |
| 4 | CONTENT | NCLOB | Y |  |
| 5 | IS_ENCRYPTED | CHAR | N |  |
| 6 | DATA_TYPE | NVARCHAR2 | Y |  |

---

## VIVACE_SESGO_HUGOL.D_MC5

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | METADATA_ID | NUMBER | N |  |
| 2 | MESSAGE_ID | NUMBER | N |  |
| 3 | CONTENT_TYPE | NUMBER | N |  |
| 4 | CONTENT | NCLOB | Y |  |
| 5 | IS_ENCRYPTED | CHAR | N |  |
| 6 | DATA_TYPE | NVARCHAR2 | Y |  |

---

## VIVACE_SESGO_HUGOL.D_MC6

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | METADATA_ID | NUMBER | N |  |
| 2 | MESSAGE_ID | NUMBER | N |  |
| 3 | CONTENT_TYPE | NUMBER | N |  |
| 4 | CONTENT | NCLOB | Y |  |
| 5 | IS_ENCRYPTED | CHAR | N |  |
| 6 | DATA_TYPE | NVARCHAR2 | Y |  |

---

## VIVACE_SESGO_HUGOL.D_MCM1

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | METADATA_ID | NUMBER | N |  |
| 2 | MESSAGE_ID | NUMBER | N |  |
| 3 | SOURCE | VARCHAR2 | Y |  |
| 4 | TYPE | VARCHAR2 | Y |  |

---

## VIVACE_SESGO_HUGOL.D_MCM3

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | METADATA_ID | NUMBER | N |  |
| 2 | MESSAGE_ID | NUMBER | N |  |
| 3 | SOURCE | VARCHAR2 | Y |  |
| 4 | TYPE | VARCHAR2 | Y |  |

---

## VIVACE_SESGO_HUGOL.D_MCM5

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | METADATA_ID | NUMBER | N |  |
| 2 | MESSAGE_ID | NUMBER | N |  |
| 3 | SOURCE | VARCHAR2 | Y |  |
| 4 | TYPE | VARCHAR2 | Y |  |

---

## VIVACE_SESGO_HUGOL.D_MCM6

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | METADATA_ID | NUMBER | N |  |
| 2 | MESSAGE_ID | NUMBER | N |  |
| 3 | SOURCE | VARCHAR2 | Y |  |
| 4 | TYPE | VARCHAR2 | Y |  |

---

## VIVACE_SESGO_HUGOL.D_MM1

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | MESSAGE_ID | NUMBER | N |  |
| 3 | SERVER_ID | NVARCHAR2 | N |  |
| 4 | RECEIVED_DATE | TIMESTAMP(6) WITH LOCAL TIME ZONE | Y |  |
| 5 | STATUS | CHAR | N |  |
| 6 | CONNECTOR_NAME | NCLOB | Y |  |
| 7 | SEND_ATTEMPTS | NUMBER | N |  |
| 8 | SEND_DATE | TIMESTAMP(6) WITH LOCAL TIME ZONE | Y |  |
| 9 | RESPONSE_DATE | TIMESTAMP(6) WITH LOCAL TIME ZONE | Y |  |
| 10 | ERROR_CODE | NUMBER | N |  |
| 11 | CHAIN_ID | NUMBER | N |  |
| 12 | ORDER_ID | NUMBER | N |  |

---

## VIVACE_SESGO_HUGOL.D_MM3

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | MESSAGE_ID | NUMBER | N |  |
| 3 | SERVER_ID | NVARCHAR2 | N |  |
| 4 | RECEIVED_DATE | TIMESTAMP(6) WITH LOCAL TIME ZONE | Y |  |
| 5 | STATUS | CHAR | N |  |
| 6 | CONNECTOR_NAME | NCLOB | Y |  |
| 7 | SEND_ATTEMPTS | NUMBER | N |  |
| 8 | SEND_DATE | TIMESTAMP(6) WITH LOCAL TIME ZONE | Y |  |
| 9 | RESPONSE_DATE | TIMESTAMP(6) WITH LOCAL TIME ZONE | Y |  |
| 10 | ERROR_CODE | NUMBER | N |  |
| 11 | CHAIN_ID | NUMBER | N |  |
| 12 | ORDER_ID | NUMBER | N |  |

---

## VIVACE_SESGO_HUGOL.D_MM5

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | MESSAGE_ID | NUMBER | N |  |
| 3 | SERVER_ID | NVARCHAR2 | N |  |
| 4 | RECEIVED_DATE | TIMESTAMP(6) WITH LOCAL TIME ZONE | Y |  |
| 5 | STATUS | CHAR | N |  |
| 6 | CONNECTOR_NAME | NCLOB | Y |  |
| 7 | SEND_ATTEMPTS | NUMBER | N |  |
| 8 | SEND_DATE | TIMESTAMP(6) WITH LOCAL TIME ZONE | Y |  |
| 9 | RESPONSE_DATE | TIMESTAMP(6) WITH LOCAL TIME ZONE | Y |  |
| 10 | ERROR_CODE | NUMBER | N |  |
| 11 | CHAIN_ID | NUMBER | N |  |
| 12 | ORDER_ID | NUMBER | N |  |

---

## VIVACE_SESGO_HUGOL.D_MM6

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | MESSAGE_ID | NUMBER | N |  |
| 3 | SERVER_ID | NVARCHAR2 | N |  |
| 4 | RECEIVED_DATE | TIMESTAMP(6) WITH LOCAL TIME ZONE | Y |  |
| 5 | STATUS | CHAR | N |  |
| 6 | CONNECTOR_NAME | NCLOB | Y |  |
| 7 | SEND_ATTEMPTS | NUMBER | N |  |
| 8 | SEND_DATE | TIMESTAMP(6) WITH LOCAL TIME ZONE | Y |  |
| 9 | RESPONSE_DATE | TIMESTAMP(6) WITH LOCAL TIME ZONE | Y |  |
| 10 | ERROR_CODE | NUMBER | N |  |
| 11 | CHAIN_ID | NUMBER | N |  |
| 12 | ORDER_ID | NUMBER | N |  |

---

## VIVACE_SESGO_HUGOL.D_MS1

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | METADATA_ID | NUMBER | Y |  |
| 2 | SERVER_ID | NVARCHAR2 | N |  |
| 3 | RECEIVED | NUMBER | N |  |
| 4 | RECEIVED_LIFETIME | NUMBER | N |  |
| 5 | FILTERED | NUMBER | N |  |
| 6 | FILTERED_LIFETIME | NUMBER | N |  |
| 7 | SENT | NUMBER | N |  |
| 8 | SENT_LIFETIME | NUMBER | N |  |
| 9 | ERROR | NUMBER | N |  |
| 10 | ERROR_LIFETIME | NUMBER | N |  |

---

## VIVACE_SESGO_HUGOL.D_MS3

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | METADATA_ID | NUMBER | Y |  |
| 2 | SERVER_ID | NVARCHAR2 | N |  |
| 3 | RECEIVED | NUMBER | N |  |
| 4 | RECEIVED_LIFETIME | NUMBER | N |  |
| 5 | FILTERED | NUMBER | N |  |
| 6 | FILTERED_LIFETIME | NUMBER | N |  |
| 7 | SENT | NUMBER | N |  |
| 8 | SENT_LIFETIME | NUMBER | N |  |
| 9 | ERROR | NUMBER | N |  |
| 10 | ERROR_LIFETIME | NUMBER | N |  |

---

## VIVACE_SESGO_HUGOL.D_MS5

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | METADATA_ID | NUMBER | Y |  |
| 2 | SERVER_ID | NVARCHAR2 | N |  |
| 3 | RECEIVED | NUMBER | N |  |
| 4 | RECEIVED_LIFETIME | NUMBER | N |  |
| 5 | FILTERED | NUMBER | N |  |
| 6 | FILTERED_LIFETIME | NUMBER | N |  |
| 7 | SENT | NUMBER | N |  |
| 8 | SENT_LIFETIME | NUMBER | N |  |
| 9 | ERROR | NUMBER | N |  |
| 10 | ERROR_LIFETIME | NUMBER | N |  |

---

## VIVACE_SESGO_HUGOL.D_MS6

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | METADATA_ID | NUMBER | Y |  |
| 2 | SERVER_ID | NVARCHAR2 | N |  |
| 3 | RECEIVED | NUMBER | N |  |
| 4 | RECEIVED_LIFETIME | NUMBER | N |  |
| 5 | FILTERED | NUMBER | N |  |
| 6 | FILTERED_LIFETIME | NUMBER | N |  |
| 7 | SENT | NUMBER | N |  |
| 8 | SENT_LIFETIME | NUMBER | N |  |
| 9 | ERROR | NUMBER | N |  |
| 10 | ERROR_LIFETIME | NUMBER | N |  |

---

## VIVACE_SESGO_HUGOL.EVENT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | DATE_CREATED | TIMESTAMP(6) WITH LOCAL TIME ZONE | Y |  |
| 3 | NAME | CLOB | N |  |
| 4 | EVENT_LEVEL | VARCHAR2 | N |  |
| 5 | OUTCOME | VARCHAR2 | N |  |
| 6 | ATTRIBUTES | CLOB | Y |  |
| 7 | USER_ID | NUMBER | N |  |
| 8 | IP_ADDRESS | VARCHAR2 | Y |  |
| 9 | SERVER_ID | NVARCHAR2 | Y |  |

---

## VIVACE_SESGO_HUGOL.PERSON

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | USERNAME | VARCHAR2 | N |  |
| 3 | FIRSTNAME | VARCHAR2 | Y |  |
| 4 | LASTNAME | VARCHAR2 | Y |  |
| 5 | ORGANIZATION | VARCHAR2 | Y |  |
| 6 | INDUSTRY | VARCHAR2 | Y |  |
| 7 | EMAIL | VARCHAR2 | Y |  |
| 8 | PHONENUMBER | VARCHAR2 | Y |  |
| 9 | DESCRIPTION | VARCHAR2 | Y |  |
| 10 | LAST_LOGIN | TIMESTAMP(6) WITH LOCAL TIME ZONE | Y |  |
| 11 | GRACE_PERIOD_START | TIMESTAMP(6) WITH LOCAL TIME ZONE | Y |  |
| 12 | STRIKE_COUNT | NUMBER | Y |  |
| 13 | LAST_STRIKE_TIME | TIMESTAMP(6) WITH LOCAL TIME ZONE | Y |  |
| 14 | LOGGED_IN | CHAR | N |  |

---

## VIVACE_SESGO_HUGOL.PERSON_PASSWORD

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | PERSON_ID | NUMBER | N |  |
| 2 | PASSWORD | VARCHAR2 | N |  |
| 3 | PASSWORD_DATE | TIMESTAMP(6) WITH LOCAL TIME ZONE | Y |  |

---

## VIVACE_SESGO_HUGOL.PERSON_PREFERENCE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | PERSON_ID | NUMBER | N |  |
| 2 | NAME | VARCHAR2 | N |  |
| 3 | VALUE | CLOB | Y |  |

---

## VIVACE_SESGO_HUGOL.RS_CONFIGURACAO_SESGO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_CONFIGURACAO_SESGO | NUMBER | N | Identificador da tabela de configuracao |
| 2 | ID_UNIDADE | NUMBER | Y | Identificador da unidade |
| 3 | DS_SIGLA_UNIDADE | VARCHAR2 | Y | Sigla da unidade |
| 4 | NM_HOSPITAL | VARCHAR2 | Y | Nome da Hospital/Instituicao |
| 5 | DT_INICIO_LEGADO | DATE | Y | Data Inicial do envio de laudo legado |
| 6 | DT_FIM_LEGADO | DATE | Y | Data final envio de laudo legado |

---

## VIVACE_SESGO_HUGOL.RS_HL7_SESGO_OUT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_HL7_SESGO_OUT | NUMBER | N | Identificador de registro |
| 2 | TP_INTEGRATION | CHAR | N | Tipo de integracao 'I' = Importacao registro via trigger 'P' = Pendente Imagem 'A' = Aguardando '... |
| 3 | DS_ERROR | VARCHAR2 | Y | Descricao do erro |
| 4 | DT_INTEGRATION | DATE | N | Data da insercao do registro na tabela de saida |
| 5 | DT_PROCESSED | DATE | Y | Data do envio do registro para terceiro |
| 6 | TP_MOVIMENT | CHAR | N | Tipo de movimento 'I' Inclusao |
| 7 | ID_UNIT | NUMBER | Y | Identificador da unidade |
| 8 | MSH_SEGMENT | VARCHAR2 | Y | Seguimento da mensagem |
| 9 | MSH_FIELD_SEPARATOR | VARCHAR2 | Y | Caracter separador dos campos |
| 10 | MSH_ENCODING_CHARACTERS | VARCHAR2 | Y | Caracteres da codificacao |
| 11 | MSH_SENDING_APPLICATION | VARCHAR2 | Y | Nome do sistema de origem |
| 12 | MSH_SENDING_FACILITY | VARCHAR2 | Y | Nome fornecedor de origem |
| 13 | MSH_RECEIVING_APPLICATION | VARCHAR2 | Y | Nome sistema de destino |
| 14 | MSH_RECEIVING_FACILITY | VARCHAR2 | Y | Nome fornecedor de destino |
| 15 | MSH_DATETIME_MESSAGE | VARCHAR2 | Y | Data da mensagem AAAAMMDDHH24mmss |
| 16 | MSH_MESSAGE_TYPE | VARCHAR2 | Y | Tipo da mensagem enviada |
| 17 | MSH_MESSAGE_CONTROL_ID | VARCHAR2 | Y | Identificador de controle |
| 18 | MSH_PROCESSING_ID | CHAR | Y | Identificador de processamento |
| 19 | MSH_VERSION_ID | VARCHAR2 | Y | versao do hl7 |
| 20 | PID_PATIENT_ID | NUMBER | Y | Identificador do paciente |
| 21 | PID_ALTERNATIVE_PATIENT_ID | NUMBER | Y | CPF do paciente |
| 22 | PID_PATIENT_FIRTNAME | VARCHAR2 | Y | Primeiro nome do paciente |
| 23 | PID_PATIENT_LASTNAME | VARCHAR2 | Y | Sobrenome do paciente |
| 24 | PID_DATE_OF_BIRTH | VARCHAR2 | Y | Data nascimento paciente AAAAMMDDHH24mmss |
| 25 | PID_ADMINISTRATIVE_SEX | CHAR | Y | Sexo do paciente F/ M/ O |
| 26 | PV1_CRM_DOCTOR_REQ | VARCHAR2 | Y | CRM medico solicitante |
| 27 | PV1_FIRSTNAME_DOCTOR_REQ | VARCHAR2 | Y | Primeiro Nome do medico solicitante |
| 28 | PV1_LASTNAME_DOCTOR_REQ | VARCHAR2 | Y | Sobrenome do medico solicitante |
| 29 | OBR_PLACER_ORDER_NUMBER | VARCHAR2 | Y | Accession Number |
| 30 | OBR_SERVICE_IDENT_MODALITY | VARCHAR2 | Y | Identificador da Modalidade do exame |
| 31 | OBR_SERVICE_IDENT_EXAM | VARCHAR2 | Y | Nome do exame |
| 32 | OBR_REQUESTED_DATETIME | VARCHAR2 | Y | Data do exame AAAAMMDDHH24mmss |
| 33 | OBR_SERV_SECTION_INITIAL | VARCHAR2 | Y | Sigla da unidade |
| 34 | OBR_SERV_SECTION_NAME_UNIT | VARCHAR2 | Y | Nome da unidade |
| 35 | OBX_VALUE_TYPE | VARCHAR2 | Y | Tipo de Valor fornecido |
| 36 | OBX_OBSERVATION_IDENTIFIER | NUMBER | Y | Identificador do laudo |
| 37 | OBX_RESULT_STATUS | CHAR | Y | Status do resultado |
| 38 | OBX_DATETIME_RESULT | VARCHAR2 | Y | Data do laudo AAAAAMMDDHH24mmss |
| 39 | OBX_PROD_CRM_DOCTOR_EXE | VARCHAR2 | Y | CRM do medico executante |
| 40 | OBX_PROD_FIRSTNAME_DOCTOR_EXE | VARCHAR2 | Y | Primeiro nome do medico executante |
| 41 | OBX_PROD_LASTNAME_DOCTOR_EXE | VARCHAR2 | Y | Sobrenome do medico executante |
| 42 | OBX_OBSER_CRM_DOCTOR_REV | VARCHAR2 | Y | CRM do medico revisor |
| 43 | OBX_OBSER_FIRSTNAME_DOCTOR_REV | VARCHAR2 | Y | Primeiro nome do medico revisor |
| 44 | OBX_OBSER_LASTNAME_DOCTOR_REV | VARCHAR2 | Y | Sobrenome do medico revisor |
| 45 | DT_STUDYTIME | DATE | Y | Data e hora do estudo |
| 46 | STUDY_UID | VARCHAR2 | Y | Study uid |
| 47 | SN_LEGADO | CHAR | Y | Indica Laudo Legado |
| 48 | DT_LAST_SEND_IMAGE | DATE | Y | Data da ultima imagem enviada |
| 49 | ID_PEDIDO_EXAME | NUMBER | Y | Identificador da  tabela de pedidos de exames |
| 50 | ID_EXAME_UNIDADE | NUMBER | Y | Codigo do exame na unidade |
| 51 | ID_MEDICO_EXECUTANTE | NUMBER | Y | Codigo do medico executante na unidade |
| 52 | ID_MEDICO_REVISOR | NUMBER | Y | Codigo do medico revisor |

---

## VIVACE_SESGO_HUGOL.RS_IMAGE_SESGO_OUT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_IMAGE_SESGO_OUT | NUMBER | N | Identificador de registro da tabela |
| 2 | TP_INTEGRATION | CHAR | N | Status da Integracao A = aguardando T = Transportado E = Erro |
| 3 | DS_ERROR | VARCHAR2 | Y | Descricao de erro |
| 4 | DT_INTEGRATION | DATE | N | Data que foi inserido na tabela |
| 5 | DT_PROCESSED | DATE | Y | Data envio do estudo para pacs terceiro |
| 6 | TP_MOVIMENT | CHAR | N | Tipo do movimento |
| 7 | ID_UNIT | NUMBER | N | Codigo da unidade |
| 8 | ACNUMBER | VARCHAR2 | Y | Accession Number |
| 9 | DT_STUDY | DATE | Y | Data do estudo |
| 10 | STUDY_UID | VARCHAR2 | Y | Identificador do estudo |
| 11 | FILENAME | VARCHAR2 | Y | Caminho fisico da imagem |
| 12 | MODALITY | VARCHAR2 | Y | Modalidade do estudo |
| 13 | INSTANCEUID | VARCHAR2 | Y | Sop UID da imagem |
| 14 | SN_LEGADO | CHAR | Y | Indica se estudo do legado |

---

## VIVACE_SESGO_HUGOL.RS_ITEM_IMPORTADO_SESGO
> TABELA COM OS REGISTROS INSERIDOS NA SAIDA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID_UNIDADE | NUMBER | Y |  |
| 2 | ACNUMBER | VARCHAR2 | Y |  |

---

## VIVACE_SESGO_HUGOL.SCHEMA_INFO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | VERSION | VARCHAR2 | Y |  |

---

## VIVACE_SESGO_HUGOL.SCRIPT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | GROUP_ID | VARCHAR2 | N |  |
| 2 | ID | VARCHAR2 | N |  |
| 3 | SCRIPT | CLOB | Y |  |

---

## VIVACE_SESGO_HUGOL.VW_HL7_SES_GO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | PATIENT_ID | NUMBER | Y |  |
| 2 | PATIENT_FIRST_NAME | VARCHAR2 | Y |  |
| 3 | PATIENT_LAST_NAME | VARCHAR2 | Y |  |
| 4 | PATIENT_SEX | CHAR | Y |  |
| 5 | PATIENT_DATE_OF_BIRTH | VARCHAR2 | Y |  |
| 6 | PATIENT_DOCUMENT | NUMBER | Y |  |
| 7 | INSTITUTION_NAME | VARCHAR2 | Y |  |
| 8 | INSTITUTION_ISSUER | VARCHAR2 | Y |  |
| 9 | ACCESSION_NUMBER | VARCHAR2 | Y |  |
| 10 | STUDY_INSTANCE_UID | VARCHAR2 | Y |  |
| 11 | STUDY_DATE | VARCHAR2 | Y |  |
| 12 | MODALITY | VARCHAR2 | Y |  |
| 13 | EXAM | VARCHAR2 | Y |  |
| 14 | REFERRING_PHYSICIAN_ID | VARCHAR2 | Y |  |
| 15 | REFERRING_PHYSICIAN_NAME | VARCHAR2 | Y |  |
| 16 | REPORT_ID | NUMBER | Y |  |
| 17 | REPORT_DATE | VARCHAR2 | Y |  |
| 18 | REPORT_STATUS | CHAR | Y |  |
| 19 | CONTROL_REP_DT_TIME_LAST_MOD | VARCHAR2 | Y |  |
| 20 | REPORT_FILE_TYPE | CHAR | Y |  |
| 21 | REP_WRITER_NAME | VARCHAR2 | Y |  |
| 22 | REP_WRITE_CRM | VARCHAR2 | Y |  |
| 23 | REP_RELEASER_NAME | VARCHAR2 | Y |  |
| 24 | REP_RELEASER_CRM | VARCHAR2 | Y |  |
| 25 | CONTROL_REPORT_PDF_FILE_PATH | CHAR | Y |  |
| 26 | CONTROL_REPORT_PDF_DT_TIME | VARCHAR2 | Y |  |
| 27 | DT_PROCESSED | DATE | Y |  |

---

## VIVACE_SESGO_HUGOL.VW_IMAGEM_STATUS_ENVIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | STUDY_UID | VARCHAR2 | Y |  |
| 2 | SERIES | NUMBER | Y |  |
| 3 | ID_UNIT | NUMBER | N |  |
| 4 | SUCESSO | NUMBER | Y |  |
| 5 | ERRO | NUMBER | Y |  |
| 6 | PENDENTE | NUMBER | Y |  |
| 7 | INICIO_ENVIO | DATE | Y |  |
| 8 | FIM_ENVIO | DATE | Y |  |

---

## VIVACE_SESGO_HUGOL.VW_IMAGE_SES_GO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | PATIENT_ID | VARCHAR2 | Y |  |
| 2 | PATIENT_FIRST_NAME | VARCHAR2 | Y |  |
| 3 | PATIENT_LAST_NAME | VARCHAR2 | Y |  |
| 4 | PATIENT_SEX | VARCHAR2 | Y |  |
| 5 | PATIENT_DATE_OF_BIRTH | VARCHAR2 | Y |  |
| 6 | INSTITUTION_NAME | VARCHAR2 | Y |  |
| 7 | INSTITUTION_ISSUER | VARCHAR2 | Y |  |
| 8 | ACCESSION_NUMBER | VARCHAR2 | Y |  |
| 9 | STUDY_INSTANCE_UID | VARCHAR2 | N |  |
| 10 | STUDY_DATE | VARCHAR2 | Y |  |
| 11 | EXAM | VARCHAR2 | Y |  |
| 12 | ID_UNIDADE | NUMBER | N |  |
| 13 | REFERRING_PHYSICIAN_ID | VARCHAR2 | Y |  |
| 14 | REFERRING_PHYSICIAN_NAME | VARCHAR2 | Y |  |
| 15 | PATIENT_DOCUMENT | VARCHAR2 | Y |  |
| 16 | MODALITY | VARCHAR2 | Y |  |
| 17 | JOB_SEND_STATUS | VARCHAR2 | Y |  |
| 18 | CONTROL_SOURCE_SERIES | NUMBER | Y |  |
| 19 | CONTROL_SOURCE_IMAGES | NUMBER | Y |  |
| 20 | JOB_SEND_START_DT_TIME | VARCHAR2 | Y |  |
| 21 | JOB_SEND_FINISH_DT_TIME | VARCHAR2 | Y |  |
| 22 | DT_PROCESSED | DATE | Y |  |
