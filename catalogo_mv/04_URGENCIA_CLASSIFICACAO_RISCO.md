# 04 - Urgencia e Classificacao de Risco

> Pronto-socorro, triagem, classificacao Manchester (SACR)

## Resumo

- **Tabelas**: 73
- **Owners**: DBAMV

---

## DBAMV.CLASSRISCO_LOGS
> Tabela para armazenar os logs dos Sistemas de Classificação de Risco

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CLASSRISCO_LOGS | NUMBER | N | Código único de identificação |
| 2 | NM_USUARIO | VARCHAR2 | N | Nome do usuário |
| 3 | SISTEMA | VARCHAR2 | N | Sistema logado |
| 4 | DH_LOGIN | DATE | Y | Data e hora que foi realizado o login |
| 5 | DH_LOGOUT | DATE | Y | Data e hora que foi realizado o logout |
| 6 | CD_MULTI_EMPRESA | NUMBER | N | Código multiempresa |

---

## DBAMV.SACR_AUDITOR
> Tabela que identifica um Auditor

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AUDITOR | NUMBER | N | Campo PK da tabela |
| 2 | TP_AUDITOR | VARCHAR2 | Y | Tipo de Auditor |
| 3 | CD_USUARIO | VARCHAR2 | Y | Codigo do Usuario |
| 4 | CD_MULTI_EMPRESA | NUMBER | Y | Indentificador da empresa |
| 5 | SN_ATIVO | VARCHAR2 | Y | Situação do Auditor, ativo ou inativo |

---

## DBAMV.SACR_AUDITORIA
> Tabela para registrar as auditorias

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AUDITORIA | NUMBER | N | Codigo da auditoria |
| 2 | DH_AUDITORIA_INICIO | DATE | N | Data/hora do inicio da auditoria |
| 3 | DH_AUDITORIA_FIM | DATE | N | Data/hora do final da auditoria |
| 4 | DH_AUDITORIA_REGISTRO | DATE | N | Data/hora em que a auditoria foi registrada |
| 5 | NR_EPISODIOS_AUDITADOS | NUMBER | N | Quantidade de episodios (triagens) auditados |
| 6 | DS_OBSERVACAO | VARCHAR2 | Y | Observac?es referentes a auditoria |
| 7 | NR_EPISODIOS_CONFORMES | NUMBER | N | Numero de episodios conformes |
| 8 | NR_EPISODIOS_NAO_CONFORMES | NUMBER | N | Numero de episodios n?o-conformes |
| 9 | SN_FINALIZADO | VARCHAR2 | Y | Campo para identificar se foi finalizada |
| 10 | DS_PROBLEMA | VARCHAR2 | Y | Campo para incluir problemas encontrados |
| 11 | DS_SUGESTAO | VARCHAR2 | Y | Campo para incluir sugest?es |
| 12 | TP_AUDITORIA | VARCHAR2 | Y | I = INTERNA  \|  E = EXTERNA |
| 13 | CD_MULTI_EMPRESA | NUMBER | Y |  |
| 14 | DS_CONSTATACOES | VARCHAR2 | Y | Descric?o das constatac?es realizadas na auditoria |
| 15 | SN_SIMULTANEA | VARCHAR2 | Y | Indica se auditoria é simutância ou não S=Sim N=Não |

---

## DBAMV.SACR_AUDITORIA_EQUIPE
> Tabela que armazena a equipe de auditores de uma auditoria

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EQUIPE_AUDITORIA | NUMBER | N | Identificador da Equipe de Auditores de uma Auditoria Interna ou Externa |
| 2 | CD_AUDITORIA | NUMBER | N | Codigo da auditoria |
| 3 | CD_AUDITOR | NUMBER | N | Identificador do Auditor |

---

## DBAMV.SACR_AUDITORIA_TRIAG_ATENDIME
> Tabela associativa entre SACR_AUDITORIA e TRIAGEM_ATENDIMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AUDITORIA_TRIAGEM_ATENDIME | NUMBER | N | Codigo de SACR_AUDITORIA_TRIAGEM_ATENDIME (pk) |
| 2 | CD_AUDITORIA | NUMBER | N | Codigo da auditoria |
| 3 | CD_TRIAGEM_ATENDIMENTO | NUMBER | N | Codigo da triagem |
| 4 | SN_CONFORME | VARCHAR2 | N | Se o episodio esta conforme |
| 5 | DS_MOTIVO | VARCHAR2 | Y | Motivo da n?o-conformidade |
| 6 | CD_AUDITOR | NUMBER | Y | Codigo do Auditor |
| 7 | SN_CONSENSO | VARCHAR2 | Y | Campo que define se ha ou n?o consenso. |

---

## DBAMV.SACR_AVALIACAO_COMPLEMENTAR
> Tabela de cadastro da avaliacao complementar

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AVALIACAO_COMPLEMENTAR | NUMBER | N | Codigo da SACR_AVALIACAO_COMPLEMENTAR |
| 2 | CD_FORMULA | NUMBER | N | Codigo formula associada |
| 3 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da empresa associada |
| 4 | NR_ORDEM | NUMBER | Y | Numero de ordem |
| 5 | SN_ATIVO | VARCHAR2 | N | Validacao de registro ativo |

---

## DBAMV.SACR_AVALIACAO_GESTACAO
> Tabela de avaliação da gestação MV SACR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AVALIACAO_GESTACAO | NUMBER | N | Código da avaliação da gestação |
| 2 | DS_GESTACAO | VARCHAR2 | Y | Tipo de gestação |
| 3 | SN_CALCULA_DUM | VARCHAR2 | Y | Se "S" a data da última menstruação foi informada, se "N" a data da última menstruação não foi in... |
| 4 | DT_DUM | DATE | Y | Data da última menstruação |
| 5 | NR_IG | NUMBER | Y | Idade gestacional, calculada em semanas( DUM - data atual) |
| 6 | NR_DIAS | NUMBER | Y | Dias\| DUM - data atual\| restantes da sobra do calculo do IG\|semanas\| que não completam 1 semana |
| 7 | DT_DPP | DATE | Y | Data prevista para o parto, calculo ( DUM + 280 dias) |
| 8 | DS_INTERCORRENCIA1 | VARCHAR2 | Y | Intercorrência1 da gestação |
| 9 | DS_INTERCORRENCIA2 | VARCHAR2 | Y | Intercorrência2 da gestação |
| 10 | DS_OBSERVACAO_INTERCORRENCIA1 | VARCHAR2 | Y | Observação da Intercorrência1 da gestação |
| 11 | DS_OBSERVACAO_INTERCORRENCIA2 | VARCHAR2 | Y | Observação da Intercorrência1 da gestação |
| 12 | DS_OBSERVACAO | VARCHAR2 | Y | Observação geral da gestação |
| 13 | NR_GESTACAO | NUMBER | Y | Número de gestações |
| 14 | NR_PARTO | NUMBER | Y | Número de partos |
| 15 | NR_ABORTO | NUMBER | Y | Número de abortos |

---

## DBAMV.SACR_AVALIACAO_PRESSAO_ARTER
> Tabela mapeando as relac?es da avaliac?o PRESS?O ARTERIAL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AVALIACAO_PRESSAO_ARTERIAL | NUMBER | N | Identifica o codigo da Avaliac?o Press?o Arterial |
| 2 | CD_PRESSAO_ARTERIAL | NUMBER | N | Identifica a Press?o Arterial |
| 3 | CD_PRESSAO_ARTERIAL_DIASTOLICA | NUMBER | N | Identifica a Press?o Arterial Diastolica |
| 4 | CD_PRESSAO_ARTERIAL_SISTOLICA | NUMBER | N | Identifica a Press?o Arterial Sistolica |
| 5 | CD_MULTI_EMPRESA | NUMBER | Y | Identifica a MultiEmpresa |
| 6 | CD_PROTOCOLO | NUMBER | Y | Indica o código do protocolo |

---

## DBAMV.SACR_AVALIACAO_TELA
> Associac?o de uma Formula com uma Tela

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FORMULA | NUMBER | N | Codigo de Formula |
| 2 | NR_TELA | NUMBER | N | Numero da tela |
| 3 | CD_PROTOCOLO | NUMBER | Y | Código do protocolo |

---

## DBAMV.SACR_AVALIACAO_TRTS
> Tabela mapeando as relac?es da avaliac?o TRTS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AVALIACAO_TRTS | NUMBER | N |  |
| 2 | CD_TRTS | NUMBER | N | Codigo de pagu formula - para TRTS |
| 3 | CD_GLASGOW | NUMBER | N | Codigo de pagu formula - para GLASGOW |
| 4 | CD_FREQUENCIA_RESPIRATORIA | NUMBER | N | Codigo de sinal vital - para FREQUENCIA_RESPIRATORIA |
| 5 | CD_PRESSAO_SISTOLICA | NUMBER | N | Codigo de sinal vital - para PRESSAO_SISTOLICA |
| 6 | CD_MULTI_EMPRESA | NUMBER | Y | Codigo da empresa  - para MULTI_EMPRESA |
| 7 | CD_PROTOCOLO | NUMBER | Y | Indica o código do protocolo |

---

## DBAMV.SACR_AVAL_MULTI_MANCHESTER
> Tabela de avaliação múltipla no manchester - MV SACR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AVAL_MULTI_MANCHESTER | NUMBER | N | Código da avaliação mútipla manchester |
| 2 | CD_MULTI_EMPRESA | NUMBER | Y | Código da multi empresa |
| 3 | CD_FOR_AVAL_MULTI_MANC | NUMBER | N | Código da pagu fórmula da avaliação múltipla manchester |
| 4 | CD_GLASGOW | NUMBER | N | Código da pagu formula para avaliação de glasgow |
| 5 | CD_FREQUENCIA_RESPIRATORIA | NUMBER | N | Código do sinal vital - Frequência respiratória |
| 6 | CD_PRESSAO_SISTOLICA | NUMBER | N | Código do sinal vital - Pressão sistólica |
| 7 | CD_TEMP_TIMPANICA | NUMBER | N | Código do sinal vital - Temperatura timpânica |
| 8 | CD_FREQUENCIA_CARDIACA | NUMBER | N | Código do sinal vital - Frequência cardiáca |
| 9 | CD_PERFUSAO_CAPILAR | NUMBER | N | Código do sinal vital - Perfusão capilar |
| 10 | CD_PROTOCOLO | NUMBER | Y | Indica o código do protocolo |
| 11 | CD_PADRAO_ATIVIDADE | NUMBER | N | Código do sinal vital do padrão de atividade |

---

## DBAMV.SACR_BALANCEADOR_CHAMADA
> Aramzena a quantidade de chamadas prioritarias e não prioritaris

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NR_SENHA_OCTOGENARIO | NUMBER | N | Quantidade de senhas de octagenarios a serem chamadas |
| 2 | NR_SENHA_PREFERENCIAL | NUMBER | N | Quantidade de senhas de preferenciais a serem chamadas |
| 3 | NR_SENHA_NAO_PREFERENCIAL | NUMBER | N | Quantidade de senhas não preferenciais a serem chamadas. |
| 4 | NR_SENHA_OCTOGENARIO_CHAMADA | NUMBER | N | Controle da quantidade de senhas nr_senha_octagenario chamadas |
| 5 | NR_SENHA_PREFERENCIAL_CHAMADA | NUMBER | N | Controle da quantidade de senhas preferenciais chamadas |
| 6 | NR_SENHA_NAO_PREFERENC_CHAMADA | NUMBER | N | Controle da quantidade de senhas não preferenciais chamadas |
| 7 | CD_FILA_SENHA | NUMBER | N | Fila configurada |

---

## DBAMV.SACR_BLOCO_FLUXOGRAMA
> Fluxogramas de perguntas de um Sintoma de Avaliac?o (Protocolo Manchester)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_BLOCO_FLUXOGRAMA | NUMBER | N | Codigo primario de Fluxograma |
| 2 | NR_ORDEM | NUMBER | N | Ordem do Fluxograma no fluxo do sintoma |
| 3 | CD_SINTOMA_AVALIACAO | NUMBER | N | Codigo de Sintoma Avaliac?o |
| 4 | CD_CLASSIFICACAO_SIM | NUMBER | Y | Classificac?o para o fluxo SIM. Se nulo, o SIM aponta para o proximo Fluxograma (Ordem) |
| 5 | CD_CLASSIFICACAO_NAO | NUMBER | Y | Classificac?o para o fluxo N?O. Se nulo, o N?O aponta para o proximo Fluxograma (Ordem) |
| 6 | TP_SITUACAO_FLUXO | VARCHAR2 | Y | Indica o tipo de situac?o que o fluxo pode assumir em determinada situac?o. Exemplo: Triagem Secu... |

---

## DBAMV.SACR_CATEGORIA_PROCESSO
> Tabela contendo as categorias dos processos do fluxo de classificac?o de risco

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CATEGORIA_PROCESSO | NUMBER | N | Codigo de Categoria de Processo |
| 2 | DS_CATEGORIA_PROCESSO | VARCHAR2 | N | Descric?o de Categoria de Processo |
| 3 | DS_PROCESSO | VARCHAR2 | Y | Respresenta a descric?o da categoria em quest?o |

---

## DBAMV.SACR_CLASSIFICACAO
> Tabela que armazena um protocolo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CLASSIFICACAO | NUMBER | N | codigo da classificac?o |
| 2 | DS_TIPO_RISCO | VARCHAR2 | N | descric?o do tipo de risco |
| 3 | CD_PROTOCOLO | NUMBER | N | codigo do tipo de protocolo |
| 4 | CD_COR_REFERENCIA | NUMBER | Y | codigo da cor de referencia |
| 5 | SN_ENCAMINHAMENTO_EXTERNO | VARCHAR2 | Y | Sim/N?o para Encaminhamento Externo |
| 6 | QT_MINUTO_ATENDIMENTO | NUMBER | Y | Indica a quantidade de minutos para atendimento. |
| 7 | VL_ESCORE_MINIMO | NUMBER | Y | Valor do Escore Minimo |
| 8 | VL_ESCORE_MAXIMO | NUMBER | Y | Valor do Escore Maximo |
| 9 | DS_SIGLA | VARCHAR2 | Y | Sigla da classificac?o |
| 10 | CD_PERGUNTA_AVALIACAO_GRUPO | NUMBER | Y | Codigo do Grupo de Pergunta de Avaliac?o |
| 11 | SN_SITUACAO_INCOMPATIVEL | VARCHAR2 | Y | Se SIM, a classificac?o n?o estara ligada a sintomas (Branco em Manchester) |
| 12 | DS_RECOMENDACAO | VARCHAR2 | Y | Descric?o da Recomendac?o |
| 13 | SN_COMPLETA | VARCHAR2 | Y | Condic?o da classificac?o para ter a prioridade sem classificac?o completa (N) ou com classificac... |
| 14 | QT_MINUTO_RECLASSIFICACAO | NUMBER | Y | Indica o tempo em que o paciente deve ser reclassificado |

---

## DBAMV.SACR_CLASSIFICACAO_RISCO
> Tabela que armazena a classificac?o de risco

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CLASSIFICACAO_RISCO | NUMBER | N | codigo da classificac?o |
| 2 | CD_COR_REFERENCIA | NUMBER | Y | codigo da cor de referencia |
| 3 | CD_SINTOMA_AVALIACAO | NUMBER | Y | codigo do sintoma da avaliac?o |
| 4 | CD_CLASSIFICACAO | NUMBER | Y | codigo do protocolo |
| 5 | DS_OBSERVACAO | VARCHAR2 | Y | observac?o da classificac?o |
| 6 | CD_TRIAGEM_ATENDIMENTO | NUMBER | N | codigo de triagem atendimento |
| 7 | DH_CLASSIFICACAO_RISCO | DATE | Y | Data/Hora de Classificac?o de Risco |
| 8 | VL_ESCORE | NUMBER | Y | Valor do Escore |

---

## DBAMV.SACR_COLETA_SIN_VIT_FATOR_AF
> TABELA DE REFERÊNCIA DA CLASRISCO PARA COLETA SINAL VITAL COM FATOR AFERIÇÃO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_COLETA_SINAL_VITAL | NUMBER | N | CÓDIGO DA COLETA SINAL VITAL |
| 2 | CD_SINAL_VITAL | NUMBER | N | CÓDIGO SINAL VITAL |
| 3 | CD_FATOR_AFERICAO | NUMBER | Y | CÓDIGO FATOR AFERIÇÃO - SACR_FATOR_AFERICAO |
| 4 | SN_ESTADO_PREVIO | VARCHAR2 | Y | SN CONSIDERA O ESTADO PRÉVIO DO PACIENTE |

---

## DBAMV.SACR_COLETA_SIN_VIT_FTR_AFERI
> Tabela 1 para 1 com coleta sinal vital para armazenar fatores de aferic?o de discriminadores

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PERGUNTA_FATOR_AFERICAO | NUMBER | N | Referencia para SACR_PERGUNTA_FATOR_AFERICAO |
| 2 | CD_COLETA_SINAL_VITAL | NUMBER | N | Referencia para ITCOLETA_SINAL_VITAL a partir de CD_COLETA_SINAL_VITAL |
| 3 | CD_SINAL_VITAL | NUMBER | N | Referencia para ITCOLETA_SINAL_VITAL a partir de CD_SINAL_VITAL |
| 4 | CD_PERGUNTA_AVALIACAO | NUMBER | Y | Chave estrangeira de SACR_PERGUNTA_AVALIACAO |

---

## DBAMV.SACR_CONFIGURACAO_MVTOTEM
> Tabela para armazenar configurações do MVTOTEMSENHA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SACR_CONFIGURACAO_MVTOTEM | NUMBER | N | Código único que identifica a configuração |
| 2 | MAQUINA | VARCHAR2 | N | Nome da máquina |
| 3 | DS_BOTAO_PREFERENCIAL | VARCHAR2 | N | Texto explicativo do Botão de senha Preferencial |
| 4 | CD_MULTI_EMPRESA | NUMBER | N | Código da Multi Empresa |

---

## DBAMV.SACR_COR_REFERENCIA
> Tabela que armazena as cores de referencia

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_COR_REFERENCIA | NUMBER | N | codigo da cor |
| 2 | NM_COR | VARCHAR2 | N | nome da cor |
| 3 | DS_RGB_DECIMAL | VARCHAR2 | Y | rgb decimal da cor |
| 4 | DS_RGB_HEXADECIMAL | VARCHAR2 | N | rgb hexadecimal da cor |

---

## DBAMV.SACR_ENCAMINHAMENTO_EXTERNO
> Encaminhamento Externo de Pacientes

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ENCAMINHAMENTO_EXTERNO | NUMBER | N | Codigo do Encaminhamento Externo |
| 2 | CD_LOC_TRANS | NUMBER | Y | Codigo do Local de Encaminhamento Externo |
| 3 | NM_USUARIO_ENCAMINHAMENTO_EXTN | VARCHAR2 | N | Nome do Usuario que encaminhou o paciente |
| 4 | DH_INICIO | DATE | N | Data/Hora final do processo de encaminhamento externo |
| 5 | DH_FIM | DATE | N |  |
| 6 | DS_OBSERVACAO | VARCHAR2 | Y | Observac?o |

---

## DBAMV.SACR_EPIS_AUDIT_FILTRO
> Tabela para armazenar a seleção de episódios para auditoria

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EPIS_AUDIT_FILTRO | NUMBER | N |  |
| 2 | CD_TRIAGEM_ATENDIMENTO | NUMBER | Y | Código único de identificação da triagem |
| 3 | CD_USUARIO | VARCHAR2 | Y | Código do usuário que classificou |
| 4 | DH_PRE_ATENDIMENTO | DATE | Y | Data e Hora de Pré Atendimento |
| 5 | DS_SENHA | VARCHAR2 | Y | Senha atribuida ao paciente |
| 6 | CD_PACIENTE | NUMBER | Y | Código do Paciente |
| 7 | NM_PACIENTE | VARCHAR2 | Y | Nome do Paciente |
| 8 | NM_USUARIO_TRIAGEM | VARCHAR2 | Y | Nome do Usuário que triou o Paciente |
| 9 | CD_MULTI_EMPRESA | NUMBER | Y |  |
| 10 | CD_AUDITORIA | NUMBER | Y |  |

---

## DBAMV.SACR_ESPECIALIDADE
> Especialidades utilizadas pelo SACR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ESPECIALIDADE | NUMBER | N | Codigo de SACR Especialidade |
| 2 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da Multi Empresa |

---

## DBAMV.SACR_FATOR_AFERICAO
> TABELA PARA ARMAZENAR FATORES DE AFERIC?O COMO: ARRITMIA CARDIACA, SUPRIMENTO DE O2, ETC.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FATOR_AFERICAO | NUMBER | N | CODIGO DE FATOR DE AFERIC?O |
| 2 | DS_FATOR_AFERICAO | VARCHAR2 | N | DESCRIC?O DE FATOR DE AFERIC?O |
| 3 | CD_PROTOCOLO | NUMBER | Y | Indica o código do protocolo para o fator aferição associado |

---

## DBAMV.SACR_FLUXOGRAMA_PERGUNTA_AVAL
> Perguntas de Avaliac?o de um Fluxograma

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FLUXOGRAMA_PERGUNTA_AVAL | NUMBER | N | Codigo de Fluxograma Pergunta Avaliac?o |
| 2 | NR_ORDEM | NUMBER | N | Ordem da pergunta no Fluxograma |
| 3 | CD_FLUXOGRAMA | NUMBER | N | Codigo do Fluxograma |
| 4 | CD_PERGUNTA_AVALIACAO | NUMBER | N | Codigo de Pergunta de Avaliac?o |

---

## DBAMV.SACR_FORMULA_LIMITE_RISCO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FORMULA | NUMBER | N |  |
| 2 | CD_LIMITE_RISCO | NUMBER | N |  |

---

## DBAMV.SACR_GRUPO_INTERVNC_SLV_VID
> Tabela que armazena os grupos de intervac?es para salvamento de vida usados para o protocolo americano(ESI)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GRUPO_INTERVNC_SLV_VID | NUMBER | N | Codigo do grupo de intervac?o para salvamento de vida - chave primaria |
| 2 | DS_GRUPO_INTERVNC_SLV_VID | VARCHAR2 | N | Descric?o do grupo de intervac?o para salvamento de vida |

---

## DBAMV.SACR_GRUPO_SITUACAO_ALTO_RISCO
> Tabela que armazena os grupos de situac?es de alto risco usados para o protocolo americano(ESI)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GRUPO_SITUACAO_ALTO_RISCO | NUMBER | N | Codigo do grupo de situac?es de alto risco - chave primaria |
| 2 | DS_GRUPO_SITUACAO_ALTO_RISCO | VARCHAR2 | N | Descric?o do grupo de situac?es de alto risco |

---

## DBAMV.SACR_INFO_ALERGIA_PAC
> Tabela que grava informação Nega/Desconhece alergia no MVSACR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SACR_ALERGIA_PAC | NUMBER | N | Código da sacr_info_alergia_pac |
| 2 | CD_TRIAGEM_ATENDIMENTO | NUMBER | N | Código da triagem atendimento |
| 3 | SN_ATIVO | VARCHAR2 | N | Validação de registro ativo |
| 4 | TP_ALERGIA | VARCHAR2 | N | Tipo da alergia. Tipos: Nega = N, Desconhece = D. |

---

## DBAMV.SACR_INTERVENCAO_SALVA_VIDA
> Tabela que armazena intervenc?es para salvamento de vida usados para o protocolo americano(ESI)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INTERVENCAO_SALVA_VIDA | NUMBER | N | Codigo da intervac?o para salvamento de vida - chave primaria |
| 2 | DS_INTERVENCAO_SALVA_VIDA | VARCHAR2 | N | Descric?o da intervac?o para salvamento de vida |
| 3 | CD_GRUPO_INTERVNC_SLV_VID | NUMBER | N |  |

---

## DBAMV.SACR_INTERVENCAO_SLV_VID_TRIA
> Tabela que armazena o historico das intervencoes salva vidas nas triagens

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INTERVENCAO_SLV_VID_TRIA | NUMBER | N | Chave primaria de SACR_INTERVENCAO_SLV_VID_TRIA |
| 2 | CD_TRIAGEM_ATENDIMENTO_HIST | NUMBER | N | Chave estrangeira de TRIAGEM_ATENDIMENTO_HISTORICO |
| 3 | CD_INTERVENCAO_SALVA_VIDA | NUMBER | N | Chave estrangeira de SACR_INTERVENCAO_SALVA_VIDA |
| 4 | DH_REGISTRO | DATE | Y | DATA E HORA DE GRAVACAO DO REGISTRO |

---

## DBAMV.SACR_LIMITE_RISCO
> Tabela que indica limite de risco

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LIMITE_RISCO | NUMBER | N | codigo do limite do risco |
| 2 | DS_LIMITE_RISCO | VARCHAR2 | Y | descric?o do limite do risco |
| 3 | NR_LIMITE_INFERIOR | NUMBER | Y | numero do limite inferior |
| 4 | NR_LIMITE_SUPERIOR | NUMBER | Y | numero do limite superior |
| 5 | CD_UNIDADE | NUMBER | Y | codigo da unidade |
| 6 | TP_LIMITE_RISCO | NUMBER | Y | tipo do limite de risco (1=Sinal Vital, 2=Escala) |

---

## DBAMV.SACR_MAQUINA_FILA
> Tabela para armazenar as filas de cada maquina

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MAQUINA_FILA | NUMBER | N | Campo PK da tabela |
| 2 | CD_FILA_SENHA | NUMBER | N | Codigo da Fila |
| 3 | DS_MAQUINA | VARCHAR2 | N | Maquina para qual a fila esta configurada |
| 4 | CD_SISTEMA | VARCHAR2 | N | Indentificador de para qual sistema a fila esta configurada |
| 5 | SN_FILA_PRINCIPAL | VARCHAR2 | Y | No MVSACR identificara para qual fila sera gerada senha |
| 6 | CD_MULTI_EMPRESA | NUMBER | Y | Codigo da MultiEmpresa |

---

## DBAMV.SACR_PARAMETRO_GERAL
> Tabela para registrar os parametros gerais

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da multiempresa |
| 2 | DS_IMPRESSORA_CODIGO_BARRAS | VARCHAR2 | Y | codigo de barras impressora |
| 3 | DS_IMPRESSORA_RELATORIO | VARCHAR2 | Y | impressora relatorio |
| 4 | SN_ORDENAR_SINTOMAS_GRUPO | VARCHAR2 | Y | para ordenar por sintomas sim ou n?o |
| 5 | SN_ALTERA_ESPECIALID_ATENDIME | VARCHAR2 | Y | O SACR ira permitir a troca de Especialidade do Atendimento |
| 6 | SN_IMPRIMIR_RESUMO_AUTOMATICO | VARCHAR2 | Y | Condic?o para imprimir resumo automatico |
| 7 | SN_PESQUISAR_CODIGO_PACIENTE | VARCHAR2 | Y | Identifica se a pesquisa do paciente sera realizada pelo codigo do paciente ou pelo nome do pacie... |
| 8 | SN_UTILIZA_FILA | VARCHAR2 | Y | Identifica se a MultiEmapresa ira utilizar a gerac?o de de senhas por Filas(S) ou por Setor(N). |
| 9 | SN_UTILIZA_PALAVRA_CHAVE | VARCHAR2 | Y | Identifica se a Mutlti Empresa em quest?o ira utilizar pesquisa de alergias por Palavra Chave. |
| 10 | SN_ATD_SOCIAL_DIRETO | VARCHAR2 | Y | Identifica se a MultiEmapresa ira direto para Atendimento Social sem exibir caixa de dialogo, qua... |
| 11 | DS_IMPRESSORA_SENHA | VARCHAR2 | Y | NOME DA IMPRESSORA PARA IMPRESSAO DA SENHA |
| 12 | NR_LINHAS_AVANCO_PAPEL | NUMBER | Y | NUMERO DE LINHAS PARA AVANCAR O PAPEL DA IMPRESSAO DA SENHA |
| 13 | DS_MODELO_IMPRESSORA | VARCHAR2 | Y | NOME DO MODELO DA IMPRESSORA PARA IMPRESSAO DA SENHA |
| 14 | SN_REIMPRIME_SENHA | VARCHAR2 | Y | Reimprime automaticamente a senha retirada no Totem ao finalizar a classificação do paciente |
| 15 | SN_EXIBE_PRESTADOR | VARCHAR2 | Y | Campo para exibir o prestador |
| 16 | SN_EXIBE_RISCO | VARCHAR2 | Y | Se for SIM, EXIBE OS RISCOS DO PACIENTE |
| 17 | OBRIGA_DATA_NASCIMENTO | VARCHAR2 | Y | Se for SIM, EXIBE OBRIGA O PREENCHIMENTO DA DATA DE NASCIMENTO NO CADASTRO DO PACIENTE |
| 18 | SN_LIMITE_TRIAGEM_DIA | VARCHAR2 | N | Limita triagem por dia |
| 19 | NR_TRI_AUDIT_TRIADOR | NUMBER | Y | Número máximo de triagens por triador na auditoria |
| 20 | SN_HABILITAR_ASSIN_DIGITAL | VARCHAR2 | Y | Campo de habilitação da assinatura digital |
| 21 | SN_HABILITAR_PERG_ABORD | VARCHAR2 | Y | Habilita a utilização da pergunta abordagem na abordagem inicial |
| 22 | SN_OBRIGA_ALERGIA | VARCHAR2 | Y | CAMPO QUE INDICA OBRIGATORIEDADE DO PREENCHIMENTO DA ALERGIA |
| 23 | CD_TIPO_REPOSITORIO | NUMBER | Y | Tipo de repositorio digital a ser utilizado quando a assinatura digital estiver ativa. |
| 24 | SN_HABILITA_AVAL_COMP | VARCHAR2 | Y | Habilita a utilizacao da avaliacao complementar no final da classificacao |
| 25 | TP_DESC_CHAMADA_PREFE_PRIORID | VARCHAR2 | N | Expressao da chamada que denotara prioridade - [P  - Preferencial] ou [T - Prioritário]. |
| 26 | SN_ASSIN_AUTOMATICAMENTE | VARCHAR2 | Y | Habilita a assinatura automatica no final da classificacao |
| 27 | SN_HABILITA_AFERIC_ABORD_INI | VARCHAR2 | Y | Habilita exibir afericoes e avaliacoes na abordagem inicial |
| 28 | SN_HABILITA_AFERIC_FLOW_STEP | VARCHAR2 | Y | Habilita exibir aba de afericoes e avaliacoes individual |

---

## DBAMV.SACR_PARAMETRO_GERAL_GF
> Tabela para armazenar parametro geral

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PARAMETRO_GERAL_GF | NUMBER | N | Codigo do parametro |
| 2 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da MultiEmpresa |
| 3 | SN_SALVAR_TEMPO_AUTOMATICO | VARCHAR2 | Y | checkbox para salvar tempo automatico |
| 4 | DS_LINK_EXTERNO | VARCHAR2 | Y | Armazena o link que será acessado |

---

## DBAMV.SACR_PENDENCIA_ORIGEM
> Tabela de associac?o da pendencia com sua origem

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PENDENCIA_ORIGEM | NUMBER | N | Codigo da pendencia origem |
| 2 | CD_PENDENCIA_SALA | NUMBER | N | Codigo da pendencia |
| 3 | CD_ITPRE_MED | NUMBER | N | Codigo do item prescrito |
| 4 | DH_MEDICACAO | DATE | Y | Data e hora do item prescrito |

---

## DBAMV.SACR_PENDENCIA_SALA
> Tabela de pendencias de salas

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PENDENCIA_SALA | NUMBER | N | Codigo da pendencia |
| 2 | DS_PENDENCIA_SALA | VARCHAR2 | Y | Texto que deve aparecer no painel. Cada integrac?o deve gerar um texto para este objeto |
| 3 | CD_SALA | NUMBER | N | Codigo da sala para qual foi gerada a pendencia |
| 4 | TP_SITUACAO | VARCHAR2 | Y | Situac?o da pendencia gerada |
| 5 | CD_ATENDIMENTO | NUMBER | Y | A lista de pendencia pode ser vinculado a um paciente em atendimento |
| 6 | CD_TRIAGEM_ATENDIMENTO | NUMBER | Y | A lista de pendencia pode ser vinculado a um paciente com triagem atendmento |
| 7 | TP_PEDIDO | VARCHAR2 | Y | Tipo da situac?o gerada |

---

## DBAMV.SACR_PERGUNTA_ABORDAGEM
> Tabela das perguntas da abordagem inicial

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PERGUNTA_ABORDAGEM | NUMBER | N | Código da pergunta abordagem |
| 2 | DS_PERGUNTA_ABORDAGEM | VARCHAR2 | N | Descrição da pergunta abordagem |
| 3 | NR_ORDEM | NUMBER | Y | Ordem de exibição da pergunta abordagem |
| 4 | SN_OBRIGATORIO | VARCHAR2 | Y | Obrigatoriedade da pergunta abordagem |
| 5 | SN_ATIVO | VARCHAR2 | Y | Status da pergunta abordagem |
| 6 | CD_MULTI_EMPRESA | NUMBER | N | Código da multi empresa vinculada a pergunta abordagem |

---

## DBAMV.SACR_PERGUNTA_AVALIACAO
> Tabela que armazena pergunta avaliac?o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PERGUNTA_AVALIACAO | NUMBER | N | codigo da pergunta avaliac?o |
| 2 | CD_SINTOMA_AVALIACAO | NUMBER | Y | codigo do sintoma avaliac?o |
| 3 | NR_ORDEM_PERGUNTA | NUMBER | Y | numero da ordem da pergunta |
| 4 | VL_ESCORE_VERDADE | NUMBER | Y | valor escore verdade |
| 5 | CD_CLASSIFICACAO | NUMBER | Y | codigo do protocolo |
| 6 | CD_PERGUNTA_AVALIACAO_GRUPO | NUMBER | Y | Codigo do Grupo de Pergunta de Avaliac?o |
| 7 | CD_PERGUNTA_TRIAGEM | NUMBER | Y | Codigo de Pergunta Triagem |
| 8 | CD_BLOCO_FLUXOGRAMA | NUMBER | Y | Codigo de Bloco Fluxograma |
| 9 | SN_ATIVO | VARCHAR2 | N | Define se o registro esta ativo |
| 10 | SN_SELECAO_AUTOMATICA | VARCHAR2 | Y |  |

---

## DBAMV.SACR_PERGUNTA_AVALIACAO_GRUPO
> Grupo de Perguntas de Avaliac?o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PERGUNTA_AVALIACAO_GRUPO | NUMBER | N | Codigo do Pergunta Avaliac?o Grupo |
| 2 | DS_PERGUNTA_AVALIACAO_GRUPO | VARCHAR2 | Y | Descric?o da Pergunta Avaliac?o Grupo |
| 3 | CD_PROTOCOLO | NUMBER | Y | Codigo do Protocolo |

---

## DBAMV.SACR_PERGUNTA_FATOR_AFERICAO
> Tabela para resolver um n para n entre sacr_pergunta_triagem e sacr_fator_afericao

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PERGUNTA_FATOR_AFERICAO | NUMBER | N | Chave primaria de SACR_PERGUNTA_FATOR_AFERICAO |
| 2 | CD_PERGUNTA | NUMBER | Y | Chave estrangeira para SACR_PERGUNTA_TRIAGEM |
| 3 | CD_FATOR_AFERICAO | NUMBER | Y | Chave estrangeira para SACR_FATOR_AFERICAO |
| 4 | VL_FAIXA_INICIO | NUMBER | Y | Valor inicial para aferic?o/avaliac?o |
| 5 | VL_FAIXA_FIM | NUMBER | Y | Valor final para aferic?o/avaliac?o |
| 6 | CD_SINAL_VITAL | NUMBER | Y | Indica o código do sinal vital |
| 7 | DS_IDADE_INICIAL | VARCHAR2 | Y | Indica a idade inicial do paciente no formato 0A 0M 0D |
| 8 | DS_IDADE_FINAL | VARCHAR2 | Y | Indica a idade final do paciente no formato 0A 0M 0D |

---

## DBAMV.SACR_PERGUNTA_TRIAGEM
> Perguntas para serem utilizadas no processo de Classificac?o de Risco

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PERGUNTA | NUMBER | N | Codigo de Pergunta |
| 2 | CD_SINAL_VITAL | NUMBER | Y | Codigo de Sinal Vital |
| 3 | CD_FORMULA | NUMBER | Y | Codigo de Formula |
| 4 | VL_FAIXA_INICIO | NUMBER | Y | Valor inicial de abrangencia do discriminador |
| 5 | VL_FAIXA_FIM | NUMBER | Y | Valor final de abrangencia do discriminador |
| 6 | SN_AVALIAR_AFERIR | VARCHAR2 | N | Define se afericao/avaliac?o deste item e obrigatorio |
| 7 | VL_FAIXA_ETARIA_INICIO | NUMBER | Y | Valor inicial para faixa etaria |
| 8 | VL_FAIXA_ETARIA_FINAL | NUMBER | Y | Valor final para faixa etaria |
| 9 | SN_MULTIPLAS_FAIXAS | VARCHAR2 | Y | Associac?o de sexo ao sintoma para filtro em classificac?o de risco |
| 10 | SN_JUSTIFICATIVA | VARCHAR2 | Y | Identifica se o campo permite justificativa e n?o avaliac?o |
| 11 | SN_FREQUENCIA | VARCHAR2 | Y | Campo SN Frequencia |
| 12 | VL_FAIXA_ETARIA_DIAS_INICIO | NUMBER | Y | Indica a faixa inicial em dias |
| 13 | VL_FAIXA_ETARIA_DIAS_FINAL | NUMBER | Y | Indica a faixa final em dias |
| 14 | VL_FAIXA_ETARIA_MESES_INICIO | NUMBER | Y | Indica a faixa inicial em meses |
| 15 | VL_FAIXA_ETARIA_MESES_FINAL | NUMBER | Y | Indica a faixa final em meses |
| 16 | SN_ESTADO_PREVIO | VARCHAR2 | Y | Indica se deve ser considerado o estado prévio do paciente durante a classificação |

---

## DBAMV.SACR_PERG_RESP_ABORDAGEM
> Grava a resposta selecionada para pergunta na abordagem inicial

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PERG_RESP_ABORDAGEM | NUMBER | N | Identificador único da tabela |
| 2 | CD_PERGUNTA_ABORDAGEM | NUMBER | N | Código da pergunta abordagem |
| 3 | CD_RESPOSTA_ABORDAGEM | NUMBER | N | Código da resposta abordagem |
| 4 | CD_TRIAGEM_ATENDIMENTO | NUMBER | N | Código da triagem atendimento |

---

## DBAMV.SACR_PROTOCOLO
> Tabela que armazena protocolo de classificac?o de riscoa

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROTOCOLO | NUMBER | N | codigo do protocolo |
| 2 | DS_PROTOCOLO | VARCHAR2 | N | descric?o do protocolo |
| 3 | SN_ENCAMINHAR_DIRETO | VARCHAR2 | N | Sim ou N?o para encaminhamento direto de pacientes |
| 4 | SN_PERGUNTA_CHAVE | VARCHAR2 | Y | Se for SIM, uma pergunta identifica uma classificac?o dentro de um sintoma |
| 5 | SN_UTILIZA_ESCORE | VARCHAR2 | Y | Se for SIM, o protocolo trabalha com escore para calcular classificac?es |
| 6 | QT_MINUTO_CLASSIFICACAO | NUMBER | N | Qtde. de Minutos previsto para classificac?o do paciente |
| 7 | SN_FLUXOGRAMA | VARCHAR2 | Y | Sim/N?o para Fluxograma |
| 8 | SN_RECURSO | VARCHAR2 | Y | Se for SIM, o protocolo trabalha baseado em recurso (modelo ESI) |
| 9 | SN_PRE_CLASSIFICACAO | VARCHAR2 | Y | PERMITIR OU NAO PRE-CLASSIFICACAO |
| 10 | NR_VERSAO | NUMBER | Y | Armazena/Guarda/Identifica a vers?o do Protocolo, atualmente sendo utilizado apenas para o Protoc... |

---

## DBAMV.SACR_PROTOCOLO_MULTI_EMPRESA
> Tabela que armazena protocolo multi empresa

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROTOCOLO | NUMBER | N | codigo do tipo protocolo |
| 2 | CD_MULTI_EMPRESA | NUMBER | N | codigo da multi empresa |
| 3 | CD_PROTOCOLO_MULTI_EMPRESA | NUMBER | N | Identificador da Tabela SACR_PROTOCOLO_MULTI_EMPRESA |
| 4 | VL_IDADE_PRIORIDADE | NUMBER | Y | Idade minima prioritaria para atendimento medico |
| 5 | DS_SEQUENCIA_PROCESSO | VARCHAR2 | Y | Sequencia de codigos concatenados da tabela SACR_CATEGORIA_PROCESSO indicando o processo seguido ... |
| 6 | HR_CLASSIFICACAO_INICIO | DATE | Y | Hora de inicio da Classificac?o |
| 7 | HR_CLASSIFICACAO_FIM | DATE | Y | Hora final da Classificac?o |

---

## DBAMV.SACR_PROTOCOLO_MULT_EMPRE_HIST
> Tabela que armazena o historico das associac?es previas entre (Multi)Empresa e Protocolo.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SACR_PROTOCOLO_MULT_EMP_HIS | NUMBER | N | Codigo identificador do Historico do Protocolo Multi-Empresa. |
| 2 | CD_PROTOCOLO_MULTI_EMPRESA | NUMBER | N | Codigo identificador do Protocolo Multi-Empresa. |
| 3 | CD_USUARIO | VARCHAR2 | N | Codigo do Usuario que efetuou a alterac?o. |
| 4 | CD_PROTOCOLO_ANTERIOR | NUMBER | Y | Codigo identificador do Protocolo anterior a alterac?o, sendo nulo na primeira alterac?o. |
| 5 | DH_ALTERACAO | DATE | N | Data e hora da alterac?o. |

---

## DBAMV.SACR_RECOMENDACAO_RISCO
> Tabela que armazena recomendac?o risco

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_RECOMENDACAO_RISCO | NUMBER | N | codigo da recomendac?o de riscoa |
| 2 | DS_RECOMENDACAO | VARCHAR2 | N | descric?o da recomendac?o |
| 3 | CD_CLASSIFICACAO | NUMBER | N | codigo da classificac?o |

---

## DBAMV.SACR_RECURSO_URGENCIA
> Tabela que armazena os recursos usados para o protocolo americano(ESI)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_RECURSO_URGENCIA | NUMBER | N | Codigo do recurso - chave primaria |
| 2 | DS_RECURSO_URGENCIA | VARCHAR2 | N | Descric?o do recurso |

---

## DBAMV.SACR_RECURSO_URGENCIA_TRIAGEM
> Tabela que armazena o historico dos recursos de urgencia utilizados nas triagens

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_RECURSO_URGENCIA_TRIAGEM | NUMBER | N | SACR_RECURSO_URGENCIA_TRIAGEM - PRIMARY KEY |
| 2 | CD_TRIAGEM_ATENDIMENTO_HIST | NUMBER | N | TRIAGEM_ATENDIMENTO_HISTORICO - FOREIGN KEY |
| 3 | CD_RECURSO_URGENCIA | NUMBER | N | SACR_RECURSO_URGENCIA - FOREIGN KEY |
| 4 | DH_REGISTRO | DATE | Y | DATA E HORA DE GRAVACAO DO REGISTRO |

---

## DBAMV.SACR_RELACIONA_AUDITORIA
> Tabela que relaciona uma auditoria externa com auditorias internas

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_RELACIONA_AUDITORIA | NUMBER | N | Campo PK da tabela |
| 2 | CD_AUDITORIA_EXTERNA | NUMBER | Y | Codigo da auditoria externa |
| 3 | CD_AUDITORIA_INTERNA | NUMBER | Y | Codigo da auditoria interna |
| 4 | CD_AUDITOR | NUMBER | Y | Codigo identificador do Auditor |
| 5 | DS_MOTIVO | VARCHAR2 | Y | SE N?O CONFORME, E NECESSARIO O MOTIVO DA N?O CONFORMIDADE |
| 6 | SN_CONFORME | VARCHAR2 | Y | S = CONFORME  \|  N = N?O CONFORME |

---

## DBAMV.SACR_RESPOSTA_ABORDAGEM
> Respostas cadastradas para perguntas da abordagem inicial

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_RESPOSTA_ABORDAGEM | NUMBER | N | Código da resposta abordagem |
| 2 | DS_RESPOSTA_ABORDAGEM | VARCHAR2 | N | Descrição da resposta abordagem |
| 3 | NR_ORDEM | NUMBER | Y | Ordem de exibição da resposta abordagem |
| 4 | SN_ATIVO | VARCHAR2 | Y | Status da resposta abordagem |
| 5 | CD_PERGUNTA_ABORDAGEM | NUMBER | N | Código da pergunta abordagem vinculada a resposta |

---

## DBAMV.SACR_RESPOSTA_PACIENTE
> Tabela que armazena a resposta da pergunta da avaliac?o do paciente

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CLASSIFICACAO_RISCO | NUMBER | N | codigo da classificac?o |
| 2 | CD_PERGUNTA_AVALIACAO | NUMBER | N | Codigo de Pergunta Avaliac?o |
| 3 | DH_AVALIACAO | DATE | Y | Data/Hora de Resposta |
| 4 | CD_FLUXOGRAMA_PERGUN_AVALIA | NUMBER | Y | Codigo de Fluxograma Pergunta Avaliac?o |
| 5 | CD_PERGUNTA_FATOR_AFERICAO | NUMBER | Y | Referencia para SACR_PERGUNTA_FATOR_AFERICAO |

---

## DBAMV.SACR_SENHA_TRIAGEM
> Tabela para armazenar senhas do SACR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SENHA | NUMBER | Y | Codigo primario de SACR_SENHA_TRIAGEM |
| 2 | TP_SENHA | VARCHAR2 | Y | Tipo da Senha (S ou N) |
| 3 | DH_SENHA | DATE | Y | Data/Hora Triagem |
| 4 | CD_SETOR | NUMBER | Y | Chave estrangeira de SETOR, servira para controlar a gerac?o sequencial de senhas por setor |
| 5 | CD_MULTI_EMPRESA | NUMBER | Y | Codigo da Multi Empresa para gerac?o da senha sequencial |
| 6 | CD_SENHA_TRIAGEM | NUMBER | N | Chave primaria para SACR_SENHA_TRIAGEM |
| 7 | CD_FILA_SENHA | NUMBER | Y | ARMAZENA O CODIGO DA FILA EM QUE A SENHA FOI GERADA |
| 8 | QT_REINICIALIZACAO | NUMBER | Y | Campo que identificara quantas vezes a ja ouve reinicializac?o de senha para a fila |

---

## DBAMV.SACR_SINAL_VITAL_LIMITE_RISCO
> Tabela que armazena os limites de risco do sinal vital

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SINAL_VITAL | NUMBER | N | codigo do tipo do sinal vital |
| 2 | CD_LIMITE_RISCO | NUMBER | N | codigo do limite de risco |

---

## DBAMV.SACR_SINTOMA_AVALIACAO
> Tabela que armazena um sintoma de avaliac?o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SINTOMA_AVALIACAO | NUMBER | N | codigo do sintoma de uma avaliac?o |
| 2 | DS_SINTOMA | VARCHAR2 | N | descric?o do sintoma |
| 3 | DS_RECOMENDACAO | VARCHAR2 | Y |  |
| 4 | NR_ORDEM | NUMBER | Y |  |
| 5 | CD_SINTOMA_AVALIACAO_GRUPO | NUMBER | Y | Codigo de sintoma avaliac?o grupo - chave estrangeira |
| 6 | SN_ATIVO | VARCHAR2 | Y |  |
| 7 | TP_SEXO | VARCHAR2 | Y | Associac?o de sexo ao sintoma para filtro em classificac?o de risco |

---

## DBAMV.SACR_SINTOMA_AVALIACAO_GRUPO
> Tabela que armazena os grupos de sintoma avaliac?o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SINTOMA_AVALIACAO_GRUPO | NUMBER | N | Codigo de sintoma avaliac?o grupo - chave primaria |
| 2 | DS_SINTOMA_GRUPO | VARCHAR2 | N | Descric?o do grupo de sintoma avaliac?o |
| 3 | NR_ORDEM | NUMBER | Y | Numero para ordenac?o ao mostrar na tela |
| 4 | SN_ATIVO | VARCHAR2 | N | Indica se o grupo esta ativo ou n?o |
| 5 | CD_PROTOCOLO | NUMBER | Y | Codigo do Protocolo ao qual o Grupo pertence |

---

## DBAMV.SACR_SINTOMA_ESPECIALIDADE
> Especialidades de um Sintoma

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ESPECIALIDADE | NUMBER | N |  |
| 2 | CD_SINTOMA_AVALIACAO | NUMBER | N |  |
| 3 | CD_MULTI_EMPRESA | NUMBER | Y | CODIGO DA EMPRESA |
| 4 | CD_SINTOMA_ESPECIALIDADE | NUMBER | N | CÃ¿DIGO DO SINTOMA ESPECIALIDADE |

---

## DBAMV.SACR_SINT_AVAL_SINT_AVAL_GRP
> Tabela associativa, associa Sintoma a Grupo.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SINTOMA_AVALIACAO | NUMBER | N | Identifica o Sintoma na associac?o |
| 2 | CD_SINTOMA_AVALIACAO_GRUPO | NUMBER | N | Identifica o Grupo do Sintoma na associac?o |

---

## DBAMV.SACR_SITUACAO_ALTO_RISCO
> Tabela que armazena situac?es de alto risco usadas para o protocolo americano(ESI)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SITUACAO_ALTO_RISCO | NUMBER | N | Codigo da situac?o de alto risco - chave primaria |
| 2 | DS_SITUACAO_ALTO_RISCO | VARCHAR2 | N | Descric?o da situac?o de alto risco |
| 3 | CD_GRUPO_SITUACAO_ALTO_RISCO | NUMBER | N |  |

---

## DBAMV.SACR_SITUACAO_ALTO_RISCO_TRIA
> Tabela que armazena o historico das situacoes de alto risco das triagens

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SITUACAO_ALTO_RISCO_TRIA | NUMBER | N | SACR_SITUACAO_ALTO_RISCO_TRIA - PRIMARY KEY |
| 2 | CD_TRIAGEM_ATENDIMENTO_HIST | NUMBER | N | TRIAGEM_ATENDIMENTO_HISTORICO - FOREIGN KEY |
| 3 | CD_SITUACAO_ALTO_RISCO | NUMBER | N | SACR_SITUACAO_ALTO_RISCO - FOREIGN KEY |
| 4 | DH_REGISTRO | DATE | Y | DATA E HORA DE GRAVACAO DO REGISTRO |

---

## DBAMV.SACR_TEMPO_PROCESSO
> Armazena os tempos do processo de atendimento do paciente

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TEMPO_PROCESSO | NUMBER | N | Codigo do Tempo de Processo |
| 2 | CD_TIPO_TEMPO_PROCESSO | NUMBER | N | Codigo do Tipo Tempo Processo |
| 3 | CD_TRIAGEM_ATENDIMENTO | NUMBER | Y | Codigo de Triagem Atendimento |
| 4 | CD_ATENDIMENTO | NUMBER | Y | Codigo de Atendimento |
| 5 | DH_PROCESSO | DATE | Y | Data/Hora do Processo |
| 6 | NM_LOCAL_ESTACAO | VARCHAR2 | Y | Local da Estac?o |
| 7 | NM_MAQUINA | VARCHAR2 | Y | Nome da Maquina |
| 8 | NM_USUARIO | VARCHAR2 | Y | Nome do Usuario logado no momento do processo |
| 9 | DS_SEQUENCIA_PROCESSO | VARCHAR2 | Y | Sequencia de codigos concatenados da tabela SACR_CATEGORIA_PROCESSO indicando o processo seguido ... |
| 10 | CD_MOTIVO_CANCELAMENTO | NUMBER | Y | Codigo do motivo de cancelamento |
| 11 | CD_SEQ_INTEGRA | VARCHAR2 | Y | Codigo sequencial da integrac?o |
| 12 | DT_INTEGRA | DATE | Y | Data em que o registro foi integrado |
| 13 | DS_ORIGEM | VARCHAR2 | Y | Origem da chamada |
| 14 | DH_CHAMADA_PROC | DATE | Y | Data hora chamada procedure |

---

## DBAMV.SACR_TEMPO_PROCESSO_HISTORICO
> Armazena o historico dos tempos do processo de atendimento do paciente

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TEMPO_PROCESSO | NUMBER | N | Codigo do Tempo de Processo |
| 2 | CD_TIPO_TEMPO_PROCESSO | NUMBER | N | Codigo do Tipo Tempo Processo |
| 3 | CD_TRIAGEM_ATENDIMENTO | NUMBER | Y | Codigo de Triagem Atendimento |
| 4 | CD_ATENDIMENTO | NUMBER | Y | Codigo de Atendimento |
| 5 | DH_PROCESSO | DATE | Y | Data/Hora do Processo |
| 6 | NM_LOCAL_ESTACAO | VARCHAR2 | Y | Local da Estac?o |
| 7 | NM_MAQUINA | VARCHAR2 | Y | Nome da Maquina |
| 8 | NM_USUARIO | VARCHAR2 | Y | Nome do Usuario logado no momento do processo |
| 9 | DS_SEQUENCIA_PROCESSO | VARCHAR2 | Y | Sequencia de codigos concatenados da tabela SACR_CATEGORIA_PROCESSO indicando o processo seguido ... |
| 10 | DH_EXCLUIDO | DATE | Y | Data/Hora em que o registro foi removido da SACR_TEMPO_PROCESSO |
| 11 | CD_MOTIVO_CANCELAMENTO | NUMBER | Y | Codigo do motivo de cancelamento |
| 12 | CD_SEQ_INTEGRA | VARCHAR2 | Y | Codigo identificador do registro na tabela de integrac?o |
| 13 | DT_INTEGRA | DATE | Y | Data que o registro foi enviado para integrac?o |

---

## DBAMV.SACR_TIPO_TEMPO_PROCESSO
> Armazena os tipos de tempos do processo de atendimento do paciente

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIPO_TEMPO_PROCESSO | NUMBER | N | Codigo do Tipo Tempo Processo |
| 2 | DS_TIPO_TEMPO_PROCESSO | VARCHAR2 | N | Descric?o do Tipo Tempo Processo |
| 3 | CD_CATEGORIA_PROCESSO | NUMBER | Y | Codigo da Categoria do Processo |
| 4 | DS_EXPLICACAO | VARCHAR2 | Y | Informa um descic?o detalhada no GF Configurac?o-Tempo Processo |

---

## DBAMV.SACR_TRIAGEM
> Tabela que armazena uma triagem

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TRIAGEM | NUMBER | N | codigo da triagem |
| 2 | DS_HDA | VARCHAR2 | Y | descric?o do historico |
| 3 | DS_OBSERVACAO | VARCHAR2 | Y | descric?o da observac?o |
| 4 | DS_REAVALIACAO | VARCHAR2 | Y | descric?o da reavaliac?o |
| 5 | DS_MEDICAMENTO | VARCHAR2 | Y | descric?o do medicamento |
| 6 | DS_QUEIXAPRINCIPAL | VARCHAR2 | Y | descric?o da queixa principal |
| 7 | DS_ALERGIA | VARCHAR2 | Y | descric?o da alergia |
| 8 | CD_SINTOMA_AVALIACAO | NUMBER | N | codigo do sintoma avaliac?o |
| 9 | DT_INICIO_TRIAGEM | DATE | N | data de inicio da triagem |
| 10 | DT_FIM_TRIAGEM | DATE | Y | data de fim da triagem |
| 11 | CD_TRIAGEM_ATENDIMENTO | NUMBER | N | codigo de triagem de atendimento |

---

## DBAMV.SACR_TRIAGEM_ATENDIME_HIST_TIP
> Tabela que armazena o historico de tipos de triagens

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TRIAGEM_ATENDIME_HIST_TIP | NUMBER | N | Codigo do tipo de triagem atendimento para o historico - chave primaria |
| 2 | DS_TRIAGEM_ATENDIME_HIST_TIP | VARCHAR2 | N | Descric?o do tipo de triagem atendimento para o historico |

---

## DBAMV.SACR_TRIAGEM_ATND_RECS_URG
> Tabela que armazena recursos selecionados para a triagem_atendimento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TRIAGEM_ATND_RECUR_URG | NUMBER | N | Codigo da associac?o entre recurso e triagem - chave primaria |
| 2 | CD_TRIAGEM_ATENDIMENTO | NUMBER | N | Codigo da triagem_atendimento |
| 3 | CD_RECURSO_URGENCIA | NUMBER | N | Codigo do recurso |
| 4 | DH_REGISTRO | DATE | Y | Data e hora da inserc?o do registro |

---

## DBAMV.SACR_TRIAGEM_HIST_COL_SIN_VIT
> Tabela 1 para 1 com coleta sinal vital e triagem atendimento historico para armazenar fatores de aferic?o de discriminadores

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TRIAGEM_ATENDIMENTO_HIST | NUMBER | N |  |
| 2 | CD_COLETA_SINAL_VITAL | NUMBER | N | Referencia para ITCOLETA_SINAL_VITAL a partir de CD_COLETA_SINAL_VITAL |
| 3 | CD_SINAL_VITAL | NUMBER | N | Referencia para ITCOLETA_SINAL_VITAL a partir de CD_SINAL_VITAL |
| 4 | CD_PERGUNTA_FATOR_AFERICAO | NUMBER | N | Referencia para SACR_PERGUNTA_AVALIACAO |
| 5 | CD_PERGUNTA_AVALIACAO | NUMBER | N | Referencia para ITCOLETA_SINAL_VITAL a partir de CD_SINAL_VITAL |

---

## DBAMV.SACR_TRIAG_ATND_INTVNC_SLV_VID
> Tabela que armazena intervenc?es de salvamento de vida selecionados para a triagem_atendimento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TRIAG_ATND_INTVNC_SLV_VID | NUMBER | N | Codigo da associac?o entre intervenc?o de salvamento de vida e triagem - chave primaria |
| 2 | CD_TRIAGEM_ATENDIMENTO | NUMBER | N | Codigo da triagem_atendimento |
| 3 | CD_INTERVENCAO_SALVA_VIDA | NUMBER | N | Codigo da intervenc?o de salvamento de vida |
| 4 | DH_REGISTRO | DATE | Y | Data e hora da inserc?o do registro |

---

## DBAMV.SACR_TRIAG_ATND_SITUA_ALT_RIS
> Tabela que armazena situac?es de alto risco selecionados para a triagem_atendimento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TRIAG_ATND_SIT_ALT_RIS | NUMBER | N | Codigo da associac?o entre situac?o de alto risco e triagem - chave primaria |
| 2 | CD_TRIAGEM_ATENDIMENTO | NUMBER | N | Codigo da triagem_atendimento |
| 3 | CD_SITUACAO_ALTO_RISCO | NUMBER | N | Codigo da situac?o de alto risco |
| 4 | DH_REGISTRO | DATE | Y | Data e hora da inserc?o do registro |

---

## DBAMV.TRIAGEM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TRIAGEM | NUMBER | N |  |
| 2 | CD_ATENDIMENTO | NUMBER | N |  |
| 3 | DT_TRIAGEM | DATE | N |  |
| 4 | HR_TRIAGEM | DATE | N |  |
| 5 | NM_USUARIO | VARCHAR2 | N |  |
| 6 | SN_PRIMEIRO_ATENDE | VARCHAR2 | N |  |
| 7 | SN_RETORNO_QUEIXA | VARCHAR2 | N |  |
| 8 | DS_QUEIXA_PRINCIPAL | VARCHAR2 | Y |  |
| 9 | DS_DIABETES | VARCHAR2 | Y |  |
| 10 | DS_ULCERA | VARCHAR2 | Y |  |
| 11 | DS_HIPERTENSAO | VARCHAR2 | Y |  |
| 12 | DS_ASMA | VARCHAR2 | Y |  |
| 13 | DS_OUTROS | VARCHAR2 | Y |  |
| 14 | DS_ALERGIA | VARCHAR2 | Y |  |
| 15 | NR_PA_INI | NUMBER | Y |  |
| 16 | NR_PA_FIM | NUMBER | Y |  |
| 17 | NR_PULSO | NUMBER | Y |  |
| 18 | NR_TEMPERATURA | NUMBER | Y |  |
| 19 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 20 | TP_NASCIMENTO | VARCHAR2 | Y |  |
| 21 | NR_MENARCA | VARCHAR2 | Y |  |
| 22 | NR_ULT_MENSTRUACAO | VARCHAR2 | Y |  |
| 23 | NR_PARTOS | VARCHAR2 | Y |  |
| 24 | NR_PRI_RELACAO_SEXUAL | VARCHAR2 | Y |  |
| 25 | TP_HIGIENE_BUCAL | VARCHAR2 | Y |  |
| 26 | SN_PROTESE_DENTARIA | VARCHAR2 | N |  |
| 27 | SN_BEBE_ALCOOL | VARCHAR2 | N |  |
| 28 | NR_ANOS_BEBE_ALCOOL | VARCHAR2 | Y |  |
| 29 | NR_MESES_BEBE_ALCOOL | VARCHAR2 | Y |  |
| 30 | SN_FUMANTE | VARCHAR2 | N |  |
| 31 | NR_ANOS_FUMANTE | VARCHAR2 | Y |  |
| 32 | NR_MESES_FUMANTE | VARCHAR2 | Y |  |
| 33 | SN_DOR | VARCHAR2 | N |  |
| 34 | NR_ANOS_DOR | VARCHAR2 | Y |  |
| 35 | NR_MESES_DOR | VARCHAR2 | Y |  |
| 36 | SN_CANCER_FAMILIA | VARCHAR2 | N |  |
| 37 | CD_TIP_PAREN | NUMBER | Y |  |
| 38 | SN_CONSULTOU_MEDICO | VARCHAR2 | N |  |
| 39 | NR_ANOS_CONSULTA | VARCHAR2 | Y |  |
| 40 | NR_MESES_CONSULTA | VARCHAR2 | Y |  |
| 41 | CD_CIDADE | NUMBER | Y |  |
| 42 | DS_HOSPITAL | VARCHAR2 | Y |  |
| 43 | SN_TRATAMENTO | VARCHAR2 | N |  |
| 44 | DS_TRATAMENTO | VARCHAR2 | Y |  |
| 45 | DS_MEDICAMENTOS | VARCHAR2 | Y |  |
| 46 | DS_ANTECEDENTES | VARCHAR2 | Y |  |
| 47 | DS_HISTORICO_DOENCA | VARCHAR2 | Y |  |

---

## DBAMV.TRIAGEM_ATENDIMENTO
> Cadastramento de pre-atendimento para classificacao de risco

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TRIAGEM_ATENDIMENTO | NUMBER | N | Codigo de triagem atendimento |
| 2 | DH_PRE_ATENDIMENTO | DATE | N | Data e Hora de Pre-Atendimento |
| 3 | CD_PACIENTE | NUMBER | Y | Codigo do paciente |
| 4 | NM_PACIENTE | VARCHAR2 | Y | Nome do paciente |
| 5 | DT_NASCIMENTO | DATE | Y | Data do nascimento do paciente |
| 6 | TP_SEXO | VARCHAR2 | Y | Sexo do paciente |
| 7 | CD_ATENDIMENTO | NUMBER | Y | Codigo do sintoma principal |
| 8 | CD_COR_REFERENCIA | NUMBER | Y | Cor referencia classificada |
| 9 | CD_SINTOMA_AVALIACAO | NUMBER | Y | codigo de sintoma avaliac?o |
| 10 | CD_CLASSIFICACAO | NUMBER | Y | Codigo do protocolo |
| 11 | CD_MULTI_EMPRESA | NUMBER | Y | Codigo da Multi Empresa |
| 12 | CD_PRESTADOR | NUMBER | Y | coluna para guardar codigo do prestador |
| 13 | CD_ESPECIALID | NUMBER | Y | coluna para guardar codigo da especialidade |
| 14 | CD_SERVICO | NUMBER | Y | coluna para guardar codigo do servico |
| 15 | NM_USUARIO_TRIAGEM | VARCHAR2 | Y | nome do usuario que triou o paciente |
| 16 | CD_CIDADE_PACIENTE | NUMBER | Y | codigo da cidade do paciente |
| 17 | VL_IDADE | NUMBER | Y | Idade do Paciente |
| 18 | DH_PRE_ATENDIMENTO_FIM | DATE | Y | Data e Hora final do pre-atendimento |
| 19 | CD_ENCAMINHAMENTO_EXTERNO | NUMBER | Y | Codigo de Encaminhamento Externo |
| 20 | DS_QUEIXA_PRINCIPAL | VARCHAR2 | Y | Descric?o de Queixa Principal |
| 21 | DS_ALERGIA | VARCHAR2 | Y | Descric?o de Alergias |
| 22 | DS_OBSERVACAO | VARCHAR2 | Y | Descric?o de Observac?o |
| 23 | DH_REMOVIDO | DATE | Y | Data/Hora de remoc?o do paciente da lista de pacientes |
| 24 | DH_CHAMADA_CLASSIFICACAO | DATE | Y | Data/Hora de chamada do paciente para classificac?o |
| 25 | SN_PRIORIDADE_CLASSIFICACAO | VARCHAR2 | Y | Se SIM, o Paciente tera prioridade ate o momento da classificac?o |
| 26 | SN_PRIORIDADE_ESPECIAL | VARCHAR2 | Y | Se SIM, o Paciente tera prioridade na classificac?o |
| 27 | DS_SENHA | VARCHAR2 | Y | Senha atribuida ao Paciente |
| 28 | CD_USUARIO | VARCHAR2 | Y | Codigo do usuario que classificou o paciente |
| 29 | SN_ATENDIMENTO_SOCIAL | VARCHAR2 | Y | Define se o paciente sera atendido por um Assistente Social |
| 30 | CD_USUARIO_REMOVEU | VARCHAR2 | Y | Codigo do usuario que removeu o paciente |
| 31 | SN_SENHA_ESPECIALIDADE_TOTEM | VARCHAR2 | Y | Se SIM, a senha gerada pelo totem e por especialidade |
| 32 | CD_SETOR | NUMBER | Y | Chave estrangeira de SETOR, indica qual setor foi criado a triagem |
| 33 | SN_CONFIRMA_CHAMADA | VARCHAR2 | Y | SE FOR SIM, FOI CONFIRMADA A CHAMADA DO PACIENTE) |
| 34 | VL_ESCORE | NUMBER | Y | Valor do Escore |
| 35 | TP_CLASSIFICACAO | VARCHAR2 | Y | INDENTIFICA O TIPO DA CLASSIFICAC?O |
| 36 | CD_FILA_SENHA | NUMBER | Y | ARMAZENA O CODIGO DA FILA EM QUE A SENHA FOI GERADA |
| 37 | QT_CHAMADAS | NUMBER | Y | Informa quantas vezes o paciente foi chamado no MVPainel |
| 38 | NM_PACIENTE_ABREV | VARCHAR2 | Y | Armazena o nome do paciente abreviado |
| 39 | DS_OBSERVACAO_REMOVIDO | VARCHAR2 | Y | ARMAZENA A OBSERVAC?O INSERIDA PELO USUARIO QUE NO MOMENTO DA REMOC?O DO PACIENTE. |
| 40 | TP_RASTREAMENTO | VARCHAR2 | N | ESTE CAMPO É UTILIZADO PARA ARMAZENAR A RASTREABILIDADE DA TRIAGEM DO PACIENTE AS OPÇÕES SÃO ATEN... |
| 41 | CD_FILA_PRINCIPAL | NUMBER | Y | ESTE CAMPO É UTILIZADO PARA ARMAZENAR A FILA PRINCIPAL DA DA TRIAGEM |
| 42 | NR_TAG_ATENDIMENTO | VARCHAR2 | Y | INDICA SE O PACIENTE DESTE ATENDIMENTO ESTÁ INTERNADO. |
| 43 | DS_MEDICAMENTOS | VARCHAR2 | Y | Salvar medicamentos descritos na tela de abordagem inicial no SACR |
| 44 | SN_CHECKIN | VARCHAR2 | Y | Informa se a senha foi gerada pelo processo de Checkin do Global Health |
| 45 | CD_LOCALIZADOR_CHECKIN | NUMBER | Y | Informa o codigo de localizador que foi gerado pelo Checkin do Global Health |
| 46 | SN_PRIORIDADE_OCTO | VARCHAR2 | Y | Identifica a prioridade para idoso acima de 80 anos |
| 47 | CD_ORIENTACAO_SEXUAL | NUMBER | Y | Codigo da orientacao sexual do paciente. |
| 48 | CD_IDENTIDADE_GENERO | NUMBER | Y | Codigo da identidade de genero do paciente. |
| 49 | SN_SENHA_BLOQUEADA | VARCHAR2 | Y | INDICA SE A SENHA ESTÁ BLOQUEADA. |

---

## DBAMV.TRIAGEM_ATENDIMENTO_HISTORICO
> Historico de Triagem Atendimento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TRIAGEM_ATENDIMENTO_HIST | NUMBER | N | Codigo de Triagem Atendimento Historico |
| 2 | CD_TRIAGEM_ATENDIMENTO | NUMBER | N | Codigo de Triagem Atendimento |
| 3 | CD_ESPECIALID | NUMBER | Y | Codigo da Especialidade |
| 4 | CD_CLASSIFICACAO | NUMBER | Y | Codigo da Classificac?o |
| 5 | NM_USUARIO_TRIAGEM | VARCHAR2 | Y | Nome do usuario que realizou a triagem |
| 6 | DH_TRIAGEM_ATENDIMENTO_HIST | DATE | Y | Data/Hora do Historico |
| 7 | VL_ESCORE | NUMBER | Y | Valor do Escore |
| 8 | CD_SINTOMA_AVALIACAO | NUMBER | Y | Codigo do Sintoma de Avaliac?o |
| 9 | CD_COR_REFERENCIA | NUMBER | Y | Codigo da Cor de Referencia |
| 10 | DS_QUEIXA_PRINCIPAL | VARCHAR2 | Y | Descric?o da queixa do paciente |
| 11 | DS_ALERGIA | VARCHAR2 | Y | Descric?o da alergia do paciente |
| 12 | DS_OBSERVACAO | VARCHAR2 | Y | Descricao da observacao do paciente |
| 13 | DH_INICIO | DATE | Y | Data hora do inicio da classificac?o |
| 14 | DH_FIM | DATE | Y | Data hora do fim da classificac?o |
| 15 | CD_USUARIO | VARCHAR2 | N | Codigo do usuario |
| 16 | CD_TRIAGEM_ATENDIME_HIST_TIP | NUMBER | Y | Codigo do tipo de triagem atendimento para o historico |
| 17 | TP_CLASSIFICACAO | VARCHAR2 | Y | INDENTIFICA O TIPO DA CLASSIFICAC?O |
| 18 | DS_MEDICAMENTOS | VARCHAR2 | Y | Historico de medicamentos descritos na tela de abordagem inicial no SACR |
| 19 | TP_ALERGIA | VARCHAR2 | Y | TIPO DA ALERGIA, S = (SUBSTANCIA) MEDICAMENTO, N = NEGA ALERGIA, D = DESCONHECE ALERGIA |

---

## DBAMV.TRIAGEM_ATENDIMENTO_HIST_ALERG
> Tabela designada a guardar as informac?es referentes as substancias(Alergias) que a triagemAtendimentoHistorico possui no meomento de cada classificac?o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TRIAGEM_ATENDIME_HIST_ALERG | NUMBER | N | Identificador da Tabela |
| 2 | CD_TRIAGEM_ATENDIMENTO_HIST | NUMBER | N | Armazena o codigo referente a triagemAtendimentoHistorico |
| 3 | CD_SUBSTANCIA | NUMBER | N | Armazena o codigo da substancia que o paciente possui alergia no instante da Classificac?o |
| 4 | DS_SUBSTANCIA | VARCHAR2 | N | Armazena a descric?o da substancia que o paciente possui alergia no instante da Classificac?o |
| 5 | DS_AVISO | VARCHAR2 | N | Armazena alguma observac?o referente a alergia apresentada pelo paciente |
