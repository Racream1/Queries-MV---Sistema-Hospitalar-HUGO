# 08 - Exames e Laboratorio

> Pedidos, resultados, laudos, SADT

## Resumo

- **Tabelas**: 275
- **Owners**: DBAMV, EPIMED, HEPIC

---

## DBAMV.ACAO_ANALISE_CULTURA_RESP
> Tabela para armazenar as resposta das acões de análise resultado de exames do tipo cultura

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ACAO_ANALISE_CULTURA_RESP | NUMBER | N | Código único das resposta da análise de resultado de exames do tipo cultura |
| 2 | CD_ACAO_ANALISE_CULTURA | NUMBER | N | Código da ação de análise de cultura |
| 3 | DS_ACAO_ANALISE_CULTURA_RESP | VARCHAR2 | N | Descrição da resposta da ação de análise do resultado de exames do tipo cultura |

---

## DBAMV.AMOSTRA
> Tabela de Amostras Geradas para Coleta de Materiais.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_COLETA_MATERIAL | NUMBER | N | Codigo da Solicitac?o de Coleta. |
| 2 | CD_AMOSTRA | NUMBER | N | Codigo Sequencial da Amostra. |
| 3 | CD_ITPED_LAB | NUMBER | Y | Codigo do Item de Exame solicitado no pedido. |
| 4 | CD_BANCADA | NUMBER | Y | Codigo da Bancada. |
| 5 | TP_SITUACAO | VARCHAR2 | N | Situacao da Amostra. A = Ativa - C = Cancelada - D = Distribuida - R = Recoleta - B = Backup |
| 6 | DS_MOTIVO | VARCHAR2 | Y | Motivo de Cancelamento da amostra. |
| 7 | SN_COLETA | VARCHAR2 | N | Flag que identifica se o material da amostra ja foi coletada. |
| 8 | DT_COLETA | DATE | Y | Data de realizac?o da coleta. |
| 9 | CD_USUARIO_COLETA | VARCHAR2 | Y | Usuario responsavel pela coleta. |
| 10 | NR_ORDEM_COLETA | NUMBER | Y | Numero de ordem da amostra. |
| 11 | CD_AMOSTRA_PAI | NUMBER | Y | Codigo da Amostra pai, para tubos coletivos. |
| 12 | CD_MAPA_TRABALHO | NUMBER | Y | Codigo do Lote de Mapa de Trabalho. |
| 13 | CD_TUBO_COLETA | NUMBER | N | Codigo do Tubo de Coleta. |
| 14 | CD_MATERIAL | NUMBER | N | Codigo do Material colhido. |
| 15 | DT_INTERFACEAMENTO | DATE | Y | Data em que foi realizado o interfaceamento da Amostra com o equipamento do Laboratorio |
| 16 | CD_MOTIVO_RECOLETA | NUMBER | Y | Codigo de identificac?o do Motivo que gerou a recoleta da Amostra |
| 17 | DT_RECOLETA | DATE | Y | Data em que foi solicitada a recoleta da amostra |
| 18 | CD_USUARIO_RECOLETA | VARCHAR2 | Y | Usuario que solicitou a recoleta da amostra ? |
| 19 | NR_ETIQUETA_EXTERNA | VARCHAR2 | Y | Numero da Etiqueta de Coleta Externa |
| 20 | SN_COLETA_SETOR | VARCHAR2 | N | Flag que indica se a coleta foi colhida no Setor Solicitante. |
| 21 | DT_COLETA_SETOR | DATE | Y | Data em que a amostra teve sua coleta confirmada no setor solicitante. |
| 22 | HR_COLETA_SETOR | DATE | Y | Hora em que a amostra teve sua coleta confirmada no setor solicitante. |
| 23 | CD_USUARIO_SETOR | VARCHAR2 | Y | Usuario responsavel pela confirmac?o da coleta da amostra no setor solicitante. |
| 24 | DT_CONFIRMA_LAB | DATE | Y | Data em que a amostra foi recepcionada ou teve sua coleta confirmada pelo laboratorio. |
| 25 | HR_CONFIRMA_LAB | DATE | Y | Hora em que a amostra foi recepcionada ou teve sua coleta confirmada pelo laboratorio. |
| 26 | CD_USUARIO_CONFIRMA_LAB | VARCHAR2 | Y | Codigo do usuario que recepcionou ou confirmou a coleta no Laboratorio. |
| 27 | CD_LOTE_BANCADA | NUMBER | Y | Codigo do Mapa de Trabalho cuja amostra foi associada pelo Setor de Triagem. |
| 28 | NR_SEQUENCIA_LOTE_BANCADA | NUMBER | Y | Identifica a ordem em que a Amostra foi associada ao Mapa de Trabalho |
| 29 | CD_SEQ_INTEGRA | VARCHAR2 | Y | Codigo de controle de integrac?o |
| 30 | DT_INTEGRA | DATE | Y | Data de controle de integrac?o |
| 31 | CD_AMOSTRA_INTEGRA | VARCHAR2 | Y | Codigo da amotra (de-para) |
| 32 | DT_ENTREGA_AMOSTRA | DATE | Y | Data em que a amostra foi entregue ao laboratorio |
| 33 | HR_ENTREGA_AMOSTRA | DATE | Y | Hora em que a amostra foi entregue ao laboratorio |
| 34 | CD_USUARIO_ENTREGA_AMOSTRA | VARCHAR2 | Y | Codigo do usuario que entregou a amostra no Laboratorio. |
| 35 | CD_ENTREGA | NUMBER | Y | Sequence para controle de entrega das amostras ao laboratorio |
| 36 | CD_SOROTECA | VARCHAR2 | Y | Codigo da Soroteca enviado por sistema terceiro. |
| 37 | DT_IMPRESSAO_AMOSTRA | DATE | Y | Data que a etiqueta da amostra foi impressa. |
| 38 | CD_USUARIO_IMPRESSAO_AMOSTRA | VARCHAR2 | Y | Código do usuário que imprimiu da etiqueta da amostra. |
| 39 | SN_DESCARTE | VARCHAR2 | N | Flag que indica que a amostra foi descartada. |
| 40 | DT_DESCARTE | DATE | Y | Data em que a amostra foi descartada. |
| 41 | CD_USUARIO_DESCARTE | VARCHAR2 | Y | Usuario que descartou a amostra. |
| 42 | CD_AMOSTRA_PRIMARIA | NUMBER | Y | Código da amostra primaria que gerou a sub-amostra |
| 43 | DT_CRIACAO | DATE | Y | Data da criação da amostra |
| 44 | DS_OBS_SUB_AMOSTRA | VARCHAR2 | Y | Campo onde o Usuário irá digitar a bactéria que será  trabalhada. Ex: Reisi 2BGN (significa que i... |
| 45 | CD_RECEPCAO_AMOSTRA | NUMBER | Y | Código da Recepção que recebeu a amostra. |
| 46 | NR_VOLUME | NUMBER | Y | Indica o volume da amostra. |
| 47 | NR_TEMPO | NUMBER | Y | Indica o tempo da amostra. |
| 48 | TP_STATUS_CDA | VARCHAR2 | Y | N- Não recepcionada A- Aguardando transf. para o CDA de Destino T - Transf. para outro CDA R - Re... |
| 49 | CD_USUARIO_CDA | VARCHAR2 | Y | Usuário que recepcionou a amostra no cda |
| 50 | DH_RECEPCAO_CDA | DATE | Y | Data que o Cda recepcionou a amostra |
| 51 | CD_CENTRO_DIST_AMOSTRA | NUMBER | Y | Centro de distribuição de amostras |
| 52 | CD_PONTO_CURVA_ITPED_LAB | NUMBER | Y | Chave estrangeira para a coluna ponto_curva_itped_lab. |
| 53 | DT_CHECAGEM_COLETA_SETOR | DATE | Y | Informa a data que a amostra foi checada pelo colaborador |
| 54 | NM_MAQUINA_ENTREGA | VARCHAR2 | Y | Máquina responsável por registrar a entrega |
| 55 | CD_ETIQUETA_AMOSTRA_LAB_APOIO | NUMBER | Y | Chave estrangeira para a coluna etiqueta amostra lab apoio. |
| 56 | SN_COLETA_MOBILE | VARCHAR2 | N | Indicar se a amostra foi coletada via app de coleta mobile |
| 57 | SN_COLETA_HOSPITAL | VARCHAR2 | Y | Indica se a amostra foi coletada no próprio hospital. |
| 58 | DT_PRESENCA_RECOLETA | DATE | Y | Data de confirmação de presença do paciente para a recoleta |
| 59 | SN_REPETICAO | VARCHAR2 | Y | Indica se a amostra e repetida ou nao. S para repetida, N para nao repetida. |

---

## DBAMV.AMOSTRA_ANALISE
> Tabelas de Amostras de Analise.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AMOSTRA_ANALISE | NUMBER | N | Codigo Sequencial de identificac?o da Amostra. |
| 2 | NR_SEQ_AMOSTRA_ANO | NUMBER | N | Campo sequencial por ano. |
| 3 | NR_AMOSTRA_ANO | VARCHAR2 | N | Numero identificador da Amostra. |
| 4 | TP_SITUACAO | VARCHAR2 | N | Situac?o da Amostra: C - Cancelado; X - Exigencia; A - Em Analise ou O - Concluido. |
| 5 | CD_AMOSTRA | NUMBER | N | Codigo Sequancial da Amostra em Conjunto com o Sistema de Gerencial Laboratorial (PSSD). |
| 6 | DT_CADASTRO | DATE | N | Data em que a amostra foi cadastrada. |
| 7 | CD_USUARIO_CADASTRO | VARCHAR2 | N | Usuario responsavel pelo cadastro da amostra. |
| 8 | DT_RECEBIMENTO | DATE | N | Data de recebimento da amostra pela Instituic?o. |
| 9 | NR_PROTOCOLO | VARCHAR2 | Y | Numero do Protocolo |
| 10 | CD_EMPRESA_REQUERENTE | NUMBER | N | Empresa Requerente da analise. |
| 11 | NR_DOCUMENTO | VARCHAR2 | Y | Numero do documento da analise. |
| 12 | DS_LOCAL_COLETA | VARCHAR2 | N | Local em que foi realizada a coleta ou apreens?o do material (produto). |
| 13 | NR_CNPJ | VARCHAR2 | Y | CNPJ da empresa da coleta. |
| 14 | DS_ENDERECO_COLETA | VARCHAR2 | N | Endereco da empresa da coleta. |
| 15 | NR_ENDERECO_COLETA | VARCHAR2 | Y | Numero do Endereco da coleta. |
| 16 | DS_COMPLEMENTO_COLETA | VARCHAR2 | Y | Complemento do Endereco da coleta. |
| 17 | DS_BAIRRO_COLETA | VARCHAR2 | Y | Bairro do endereco da coleta. |
| 18 | CD_CIDADE_COLETA | NUMBER | Y | Codigo da cidade do endereco da coleta. |
| 19 | CD_UF_COLETA | VARCHAR2 | Y | Codigo da UF do endereco de coleta. |
| 20 | NR_CEP_COLETA | VARCHAR2 | Y | CEP do endereco de coleta da coleta. |
| 21 | NR_TELEFONE | VARCHAR2 | Y | Telefone do local de coleta. |
| 22 | NM_RESPONSAVEL | VARCHAR2 | Y | Nome do responsavel pelo local da coleta. |
| 23 | DS_CARGO_RESPONSAVEL | VARCHAR2 | Y | Cargo do responsavel. |
| 24 | NR_CPF | VARCHAR2 | Y | CPF do responsavel pelo local da coleta. |
| 25 | NR_IDENTIDADE | VARCHAR2 | Y | RG do responsavel pelo local da coleta. |
| 26 | CD_MODALIDADE_ANALISE | NUMBER | N | Codigo da Modalidade de Analise. |
| 27 | DS_LACRE_PROVA | VARCHAR2 | Y | Descric?o ou numero do lacre da Amostra da Prova. |
| 28 | DS_LACRE_CONTRAPROVA | VARCHAR2 | Y | Descric?o ou numero do lacre da Amostra de Contraprova. |
| 29 | DS_LACRE_TESTEMUNHO | VARCHAR2 | Y | Descric?o ou numero do lacre da Amostra de Testemunho. |
| 30 | DS_AMOSTRA_ANALISE | VARCHAR2 | Y | Descric?o da amostra. |
| 31 | DS_OBS_AMOSTRA_ANALISE | VARCHAR2 | Y | Observac?o referente a amostra. |
| 32 | TP_CLASSIFICACAO | VARCHAR2 | N | Tipo de classificac?o: S - Suficiente; E - Insuficiente para Ensaio; R - Insuficiente para Refere... |
| 33 | NR_PROTOCOLO_APREENSAO | VARCHAR2 | Y | Numero do protocolo de Apreens?o. |
| 34 | DS_OBS_CLASSIFICACAO | VARCHAR2 | Y | Observac?o sobre a classificac?o da Amostra. |
| 35 | DS_MOTIVO_APREENSAO | VARCHAR2 | Y | Descric?o dos Motivos que levaram a apreens?o. |
| 36 | DS_CONDICOES_AMOSTRA | VARCHAR2 | Y | Descric?o das Condic?es da amostra observadas no seu recebimento. |
| 37 | DS_INSTRUCAO_ESPECIAL | VARCHAR2 | Y | Instruc?es especiais sobre a amostra. |
| 38 | CD_PROGRAMA_ANALISE | NUMBER | N | Codigo do Programa de Analise. |
| 39 | CD_MARCA_PRODUTO | NUMBER | N | Codigo da Marca do Produto apreendido. |
| 40 | DS_REGISTRO_PRODUTO | VARCHAR2 | Y | Descric?o ou numero do registro do produto. |
| 41 | CD_PRODUTO_ANALISE | NUMBER | N | Codigo do Produto a ser analisado. |
| 42 | CD_TIPO_EMBALAGEM | NUMBER | Y | Codigo do Tipo da Embalagem utilizada pelo Produto. |
| 43 | DS_CONTEUDO_EMBALAGEM | VARCHAR2 | Y | Descric?o do existente na embalagem do Produto. |
| 44 | NR_LOTE_PRODUTO | VARCHAR2 | Y | Numero do Lote do Produto apreendido. |
| 45 | DS_TAMANHO_LOTE | VARCHAR2 | Y | Descric?o referente ao tamanho do Lote do produto. |
| 46 | DS_QUANTIDADE_RECEBIDA | VARCHAR2 | Y | Quantidade recebida ou apreendida do produto. |
| 47 | DS_TEMPERATURA | VARCHAR2 | Y | Temperatura do Produto no seu recebimento. |
| 48 | DT_FABRICACAO | DATE | Y | Data de Fabricac?o do Produto. |
| 49 | DT_VENCIMENTO | DATE | Y | Data de Vencimento do Produto. |
| 50 | CD_TIPO_ADVERTENCIA | NUMBER | Y | Codigo do Tipo de Advertencia do Produto. |
| 51 | CD_DETENTOR | NUMBER | Y | Codigo da Empresa Detendora do Produto. |
| 52 | CD_CAT_DETENTOR | NUMBER | Y | Codigo da Categoria do Detentor. |
| 53 | CD_DETENTOR_ADICIONAL | NUMBER | Y | Codigo do Segundo Detentor do Produto. |
| 54 | CD_CAT_DETENTOR_ADICIONAL | NUMBER | Y | Codigo da Categoria do Segundo Detentor do Produto. |
| 55 | DT_CANCELAMENTO | DATE | Y | Data do Cancelamento da Amostra. |
| 56 | CD_USUARIO_CANCELAMENTO | VARCHAR2 | Y | Codigo do Usuario responsavel pelo cadastramento da Amostra. |
| 57 | CD_MOTIVO_CANCELAMENTO | NUMBER | Y | Codigo do Motivo pelo qual foi cancelada a Amostra. |
| 58 | DS_MOTIVO_CANCELAMENTO | VARCHAR2 | Y | Descric?o detalhada sobre o Cancelamento da Amostra. |
| 59 | DT_ENTRADA_EXIGENCIA | DATE | Y | Data em que a Amostra passou a ficar em exigencia. |
| 60 | CD_USUARIO_EXIGENCIA | VARCHAR2 | Y | Usuario responsavel por colocar a Amostra em exigencia. |
| 61 | CD_MOTIVO_EXIGENCIA | NUMBER | Y | Codigo do Motivo da Exigencia. |
| 62 | DS_NOTA_EXIGENCIA | VARCHAR2 | Y | Descric?o das Observac?es referentes a Exigencia. |
| 63 | DT_RETIRADA_EXIGENCIA | DATE | Y | Data em que a Amostra foi retirada da situac?o de exigencia. |
| 64 | CD_USUARIO_RETIRA_EXIGENCIA | VARCHAR2 | Y | Usuario responsavel por retirar a amostra da situac?o de exigencia. |
| 65 | DS_NOTA_RETIRA_EXIGENCIA | VARCHAR2 | Y | Descric?o das Observac?es referentes a retirada da amostra da exigencia. |
| 66 | CD_RESULTADO_PADRAO | NUMBER | Y | Codigo do Resultado Padr?o da Analise da Amostra. |
| 67 | DS_CONCLUSAO_FINAL | VARCHAR2 | Y | Descric?o das observac?es sobre a Conclus?o Final do resultado da Amostra. |
| 68 | DT_CONCLUSAO | DATE | Y | Data de Conclus?o da Amostra. |
| 69 | CD_USUARIO_CONCLUSAO | VARCHAR2 | Y | Usuario responsavel pela Conclus?o da Amostra. |
| 70 | DS_OBS_CONCLUSAO | VARCHAR2 | Y | Observac?es referente a conclus?o do resultado da amostra. |
| 71 | DS_MENSAGEM_PADRAO | VARCHAR2 | Y | Mensagem Padr?o que devera aparecer no Laudo. |
| 72 | SN_LAUDO_IMPRESSO | VARCHAR2 | Y | Identifica que o laudo ja foi impresso. |
| 73 | CD_PRESTADOR1_ASSINATURA | NUMBER | Y | Codigo do Prestador responsavel pela assinatura do laudo |
| 74 | CD_PRESTADOR2_ASSINATURA | NUMBER | Y | Codigo do Prestador responsavel pela assinatura do laudo |

---

## DBAMV.AMOSTRA_EXA_LAB

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AMOSTRA | NUMBER | N |  |
| 2 | CD_ITPED_LAB | NUMBER | N |  |
| 3 | CD_BANCADA | NUMBER | N |  |
| 4 | CD_LOCAL_ANATOMICO_COLETA | NUMBER | Y | CDIGO DO LOCAL ANATMICO DA COLETA |
| 5 | DS_OBS_LOCAL_ANATOMICO | VARCHAR2 | Y | OBSERVAO DA ALTERAO DO LOCAL ANATMICO DA COLETA |
| 6 | CD_USUARIO_LOC_ANATOM_ALT | VARCHAR2 | Y | USURIO QUE REALIZOU A ALTERAO DO LOCAL ANATMICO DA COLETA |
| 7 | DH_LOCAL_ANATOMICO_ALT | DATE | Y | DATA E HORA DA ALTERAO DO LOCAL ANATMICO DA COLETA |
| 8 | SN_LOCAL_ANAT_ALTERADO | VARCHAR2 | N | Chave que grava se o local anatmico de coleta foi alterado ou no. |

---

## DBAMV.AMOSTRA_INTERFACE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AMOSTRA | NUMBER | Y |  |
| 2 | DATA | DATE | Y |  |
| 3 | TXT | VARCHAR2 | Y |  |

---

## DBAMV.AMOSTRA_LOTE_AUTOMATICO
> Tabela de Cadastro das amostras a serem lidas pelo JOB

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AMOSTRA_LOTE_AUTOMATICO | NUMBER | N | Sequence |
| 2 | CD_AMOSTRA | NUMBER | N | C??digo da amostra |
| 3 | CD_ITPED_LAB | NUMBER | N | C??digo da item do pedido utilizado na amostra com PK |
| 4 | CD_PED_LAB | NUMBER | N | C??digo do pedido utilizado no gerenciamento da fila de processamento. |
| 5 | DT_PROCESSAMENTO_RACK | DATE | Y | Data em que a amostra foi processada pelo job |
| 6 | DT_PROCESSAMENTO_MAPA | DATE | Y | Data em que a amostra foi processada pelo job |
| 7 | TP_LOCAL_SEQ_RACK | VARCHAR2 | Y | Determinar o momento em que ser?! gerada a sequencia para os exames da amostra no rack. No moment... |
| 8 | TP_LOCAL_SEQ_MAPA | VARCHAR2 | Y | Determinar o momento em que ser?! gerada a sequencia para os exames da amostra no mapa. No moment... |
| 9 | SN_CONFIRMACAO_LOCAL_RACK | VARCHAR2 | N | Determina se a amostra foi confirmada pelo Setor, laborat??rio ou passagem da amostra. |
| 10 | SN_CONFIRMACAO_LOCAL_MAPA | VARCHAR2 | N | Determina se a amostra foi confirmada pelo Setor, laborat??rio ou passagem da amostra. |

---

## DBAMV.AMOSTRA_VOLUME_TEMPO
> Tabela que guardará os registros dos frascos associados a amostra.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AMOSTRA_VOLUME_TEMPO | NUMBER | N | Sequence que será a PK da tabela. |
| 2 | CD_COLETA_MATERIAL | NUMBER | N |  |
| 3 | CD_AMOSTRA | NUMBER | N | Código da amostra que estará associado aos frascos. |
| 4 | NR_ORDEM_FRASCO | NUMBER | Y | Coluna que identificará a ordem dos frascos. |
| 5 | CD_FRASCO | NUMBER | Y | Coluna que identificará o frasco utilizado no controle do volume x tempo. |
| 6 | NR_VOLUME_FRASCO | NUMBER | Y | Coluna que guardará o volume de cada frasco em ml. |
| 7 | DT_COLETA_FRASCO | DATE | Y | Coluna que identificará a data que iniciou a coleta do material no frasco. |
| 8 | SN_ANALISE | VARCHAR2 | N | Coluna que identificará de qual frasco será extraído um conteúdo do material para ser associado a... |

---

## DBAMV.ANTIMICROB

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ANTIMICROB | VARCHAR2 | N |  |
| 2 | NM_ANTIMICROB | VARCHAR2 | N |  |
| 3 | SN_REL_SUSP_INFEC | VARCHAR2 | N |  |
| 4 | NR_DIAS_LIBERADO | NUMBER | Y | Numero de dias padr?o liberado para uso do antimicrobiano |
| 5 | NR_DDD | NUMBER | Y | Dose diaria definida |
| 6 | SN_RESTRITO | VARCHAR2 | N | Indica se o antimicrobiano e de uso restrito |
| 7 | SN_VIGILANCIA | VARCHAR2 | N | Flag para controle de vigilancia sobre antimicrobiano. |

---

## DBAMV.ANTIMICROB_MIC

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ANTIMICROB | VARCHAR2 | N |  |
| 2 | CD_ANTIMICROB_MIC | NUMBER | N |  |
| 3 | NR_MIC | VARCHAR2 | N |  |

---

## DBAMV.ASSINATURA_DIGITAL_DIAGN
> Armazena e versiona os resultados de exames assinados digitalmente.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ASSINATURA_DIGITAL_DIAGN | NUMBER | N | Sequence da tabela. |
| 2 | CD_PED_LAB | NUMBER | N | Código do pedido. |
| 3 | CD_ITPED_LAB | NUMBER | N | Código do Item do pedido. |
| 4 | NR_VERSAO | NUMBER | N | Versão da Assinatura Digital |
| 5 | CD_CARTORIO_DIGITAL | NUMBER | N | Código do Cartório Digital. |
| 6 | DT_ASSINATURA | DATE | N | Data da Assinatura. |
| 7 | DT_SOLICITACAO | DATE | N | Data que foi solicitada a Assinatura. |

---

## DBAMV.ATIVIDADE_SUB_AMOSTRA
> Tabela para armazenar as atividades que irão compor as regras de geração de sub-amostras

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ATIVIDADE_SUB_AMOSTRA | NUMBER | N | Sequence da ATIVIDADE_SUB_AMOSTRA. |
| 2 | DS_ATIVIDADE_SUB_AMOSTRA | VARCHAR2 | N | Descrição da atividade |
| 3 | SN_GERA_SUB_AMOSTRA | VARCHAR2 | N | Flag que indica que será gerada subamostra. |

---

## DBAMV.AUX_CONVENIO_NOTA
> TABELA PARA ARMAZENAR DADOS DOS LEGADOS DE GLOSA. ESTA TABELA APENAS SERÁ ALIMENTADA NA SUA CRIAÇÃO COM O RESULTADO SO SELECT.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EMPRESA | NUMBER | N |  |
| 2 | CD_CONTA | NUMBER | N |  |
| 3 | CD_PARCELA | NUMBER | N |  |
| 4 | CD_NOTA | NUMBER | Y |  |
| 5 | CD_REMESSA | NUMBER | Y |  |
| 6 | NR_DOCUMENTO | VARCHAR2 | N |  |
| 7 | CD_FORNECEDOR | NUMBER | Y |  |
| 8 | CD_CONVENIO | NUMBER | Y |  |
| 9 | NM_CLIENTE | VARCHAR2 | N |  |
| 10 | DT_EMISSAO | DATE | Y |  |
| 11 | DT_VENCIMENTO | DATE | N |  |
| 12 | TP_QUITACAO | VARCHAR2 | N |  |
| 13 | VL_FATURADO | NUMBER | N |  |
| 14 | VL_RECEBIDO_TOT | NUMBER | Y |  |
| 15 | VL_RECEBIDO_FAT | NUMBER | Y |  |
| 16 | VL_RECEBIDO_REC | NUMBER | Y |  |
| 17 | VL_RECEBIDO_ITEM | NUMBER | Y |  |
| 18 | VL_GLOSA_FINA | NUMBER | Y |  |
| 19 | VL_GLOSA_TRAB | NUMBER | Y |  |
| 20 | VL_RECURSO | NUMBER | Y |  |
| 21 | VL_RECEBIDO_RECR | NUMBER | Y |  |
| 22 | VL_ACEITE | NUMBER | Y |  |
| 23 | VL_RECEBIDO_BAIXA | NUMBER | Y |  |
| 24 | VL_ACEITE_NOVO | NUMBER | Y |  |
| 25 | TP_FILTRO | CHAR | Y |  |
| 26 | NR_ETAPA | CHAR | Y |  |
| 27 | DT_PROCESSAMENTO | DATE | Y | Data do processamento do legado. |
| 28 | DS_MARCACAO | CHAR | Y | Marcação USUARIOYYYYMMDDHHMMSS para agrupar os processamentos realizados. |
| 29 | CD_MOV_GLOSAS | NUMBER | Y | Movimentação de glosa gerado no processamento do legado. |

---

## DBAMV.BANCADA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SET_EXA | NUMBER | N |  |
| 2 | CD_BANCADA | NUMBER | N |  |
| 3 | DS_BANCADA | VARCHAR2 | N |  |
| 4 | SN_ATIVO | VARCHAR2 | N |  |
| 5 | DT_CADASTRO | DATE | N |  |
| 6 | CD_USUARIO_CADASTRO | VARCHAR2 | N |  |
| 7 | SN_INTEGRA_EQUIPAMENTO | VARCHAR2 | N | Habilitar a Bancada para gerar o interfaceamento de suas Amostras com os Equipamentos do Laboratorio |
| 8 | CD_RECEPCAO_AMOSTRA | NUMBER | Y | Informa a Recepc?o de Amostra da Bancada, restringindo o local de recepc?o. |
| 9 | TP_ARMAZENAMENTO_AMOSTRA | VARCHAR2 | Y | Tipo de Armazenamento de Amostras na soroteca: R - Com resultado, L - Com liberação ou S - Sem re... |

---

## DBAMV.BLOQUEIO_EXAME
> Tabela para armazenar as configurações de bloqueio de exames

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_BLOQUEIO_EXAME | NUMBER | N | Código único de identificação do bloqueio |
| 2 | CD_SET_EXA | NUMBER | Y | Código do setor de exame |
| 3 | CD_EXA_LAB | NUMBER | Y | Código do exame de laboratório |
| 4 | CD_EXA_RX | NUMBER | Y | Código do exame de imagem |
| 5 | CD_MATERIAL | NUMBER | Y | Código do material de coleta |
| 6 | CD_SETOR | NUMBER | Y | Código do setor |
| 7 | NM_SOLICITANTE | VARCHAR2 | Y | Nome do responsável pela solicitação do bloqueio |
| 8 | DATA_INICIO_BLOQUEIO | DATE | Y | Data do ínicio do bloqueio |
| 9 | DATA_FINAL_BLOQUEIO | DATE | Y | Data do término do bloqueio |
| 10 | DATA_CRIACAO | DATE | Y | Data de criação do bloqueio |
| 11 | CD_USUARIO_CRIACAO | VARCHAR2 | Y | Usuário do sistema que criou o bloqueio |
| 12 | CD_USUARIO_ULTIMA_ALTERACAO | VARCHAR2 | Y | Usuário do sistema que realizou a última alteração na configuraçãoo do bloqueio |
| 13 | DATA_ULTIMA_ALTERACAO | DATE | Y | Data da última alteração realziada no bloqueio |
| 14 | SN_ATIVO | VARCHAR2 | Y | Serve para identificar se o bloqueio esta ativo ou inativo S="SIM" N="Não" |
| 15 | TP_BLOQUEIO | VARCHAR2 | Y | Identificar o tipo de bloqueio. C = Bloqueio na solicitação do exame. R = Bloqueio de resultado |
| 16 | DS_MOTIVO | VARCHAR2 | Y | Descritivo do motivo para criação do bloqueio do exame |
| 17 | DS_MENSAGEM | VARCHAR2 | Y | Descritivo da mensagem que será apresentada em algumas telas caso o exame seja solicitado |
| 18 | CD_VERSAO | NUMBER | Y | Versão do bloqueio pelo ultimo resultado. |
| 19 | SN_PERMITE_EXCECAO | VARCHAR2 | Y | Possibilitará a exceção no cadastro de solicitação de exame bloqueado S="SIM" N="NÃO". |
| 20 | NR_DIAS_BLOQUEIO | NUMBER | Y | Quantidade de dias em que o exame não poderá ser solicitado em duplicidade. |
| 21 | CD_OBSERVACAO_BLOQUEIO_EXAME | NUMBER | Y | Define mensagem de observação de bloqueio |

---

## DBAMV.BLOQUEIO_EXAME_CONVENIO
> Tabela para armazenar as configurações de excessões do bloqueio de exames por convênio

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_BLOQUEIO_EXAME_CONVENIO | NUMBER | N | Código único de identificação da excessão de bloqueio de exame por convênio |
| 2 | CD_BLOQUEIO_EXAME | NUMBER | Y | Código do bloqueio de exame |
| 3 | CD_CONVENIO | NUMBER | Y | Código do convênio |

---

## DBAMV.BLOQUEIO_EXAME_EMPRESA
> TABELA PARA ARMAZENAR AS CONFIGURAÇÕES DE EXCESSÕES DO BLOQUEIO DE EXAMES POR EMPRESAS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_BLOQUEIO_EXAME_EMPRESA | NUMBER | N | CÓDIGO ÚNICO DE IDENTIFICAÇÃO DA EXCESSÃO DE BLOQUEIO DE EXAME POR EMPRESA |
| 2 | CD_BLOQUEIO_EXAME | NUMBER | Y | CÓDIGO DO BLOQUEIO DE EXAME |
| 3 | CD_MULTI_EMPRESA | NUMBER | Y | CÓDIGO DO EMPRESA |

---

## DBAMV.BLOQUEIO_EXAME_SETOR
> TABELA PARA ARMAZENAR AS CONFIGURAÇÕES DE EXCESSÕES DO BLOQUEIO DE EXAMES POR SETOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_BLOQUEIO_EXAME_SETOR | NUMBER | N | CÓDIGO ÚNICO DE IDENTIFICAÇÃO DA EXCESSÃO DE BLOQUEIO DE EXAME POR SETOR |
| 2 | CD_BLOQUEIO_EXAME | NUMBER | Y | CÓDIGO DO BLOQUEIO DE EXAME |
| 3 | CD_SETOR | NUMBER | Y | CÓDIGO DO SETOR |

---

## DBAMV.BLOQUEIO_EXAME_ULT_RESULT
> Regra com os valores que irão bloquear o exame

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_BLOQUEIO_EXAME_ULT_RESULT | NUMBER | N | Sequence da tabela. |
| 2 | CD_BLOQUEIO_EXAME | NUMBER | N | Sequence do Bloqueio. |
| 3 | CD_VERSAO | NUMBER | N | Código da versão do exame. |
| 4 | NM_CAMPO | VARCHAR2 | N | Campo da versão |
| 5 | TP_ACAO | VARCHAR2 | N | Ação igual(I), Diferente(D),maior(P),maior ou igual(A),menor(S), menor ou igual(B) |
| 6 | DS_RESULTADO | VARCHAR2 | Y | Resultado |

---

## DBAMV.COLETA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_COLETA | NUMBER | N |  |
| 2 | CD_SOL_COM | NUMBER | N |  |
| 3 | CD_FORNECEDOR | NUMBER | N |  |
| 4 | DT_COLETA | DATE | N |  |
| 5 | DT_VALIDADE | DATE | Y |  |
| 6 | TP_FRETE | VARCHAR2 | N |  |
| 7 | NR_DIAS_ENTREGA | NUMBER | Y |  |
| 8 | CD_CONDICAO_PAGAMENTO | NUMBER | Y |  |
| 9 | VL_FRETE | NUMBER | Y |  |
| 10 | VL_DESCONTO | NUMBER | Y |  |
| 11 | VL_TOTAL_COLETA | NUMBER | Y |  |
| 12 | VL_PERC_DESCONTO | NUMBER | Y |  |
| 13 | VL_PERC_ICMS | NUMBER | Y |  |
| 14 | VL_ICMS | NUMBER | Y |  |
| 15 | DS_OBSERVACAO_FORNECEDOR | VARCHAR2 | Y |  |
| 16 | SN_RESPONDIDA | VARCHAR2 | N |  |
| 17 | DT_RESPOSTA_DO_FORNECEDOR | DATE | Y |  |
| 18 | DT_ENVIO_PARA_FORNECEDOR | DATE | Y |  |
| 19 | DS_UPLOAD_DOCUMENTO_WORD | LONG RAW | Y |  |
| 20 | CD_SEQUENCIA_PROCESSO | NUMBER | Y |  |
| 21 | SN_INCLUSAO_NOTA | VARCHAR2 | N |  |
| 22 | VL_OUTROS | NUMBER | Y |  |
| 23 | TP_COMUNICACAO | VARCHAR2 | Y |  |
| 24 | CD_COLETA_INTEGRA | VARCHAR2 | Y | Campo que identifica a chave da tabela de integrac?o do MV2000i com outro sistema. |
| 25 | NR_DIAS_ENTREGA_INTERVALO | NUMBER | Y | Intervalo de Dias de Tolerancia para Entrega |
| 26 | SN_ESTIMATIVA | VARCHAR2 | N | Verifica se a coleta sera uma estimativa de preco ou uma coleta de preco |
| 27 | NR_PROPOSTA | NUMBER | Y |  |
| 28 | CD_COLETA_TEM | NUMBER | Y | Armazena o codigo da estimativa associada a coleta |
| 29 | SN_EMAIL | VARCHAR2 | N | E-mail? Sim ou N?o |
| 30 | DT_ENTREGA_ATA_FORNEC | DATE | Y | Data de Entrega da Ata do Fornecedor |
| 31 | CD_USUARIO_ENTREGA_ATA | VARCHAR2 | Y | Codigo do Usuario de Entrega da Ata |
| 32 | DS_RESPONS_ENTREGA_FORN | VARCHAR2 | Y | Descric?o do Responsavel pela Entrega do Fornecedor |
| 33 | DT_DEVOLUCAO_ATA_FORNEC | DATE | Y | Data de Devoluc?o da Ata do Fornecedor |
| 34 | CD_USUARIO_DEVOLUC_ATA | VARCHAR2 | Y | Codigo do Usuario da Devoluc?o da Ata |
| 35 | DS_RESPONS_DEVOLUC_FORN | VARCHAR2 | Y | Descric?o do Responsavel da Devoluc?o do Fornecedor |
| 36 | LO_ANEXO_COTACAO_XLS | BLOB | Y | Pedido de cotação anexado a coleta |
| 37 | CD_ANEXOS_CENTRAL | VARCHAR2 | Y | Armazena uma lista com os codigos dos anexos enviados para cotação |
| 38 | DS_OBSERVACAO_COLETA | VARCHAR2 | Y | Descrição de observação e justificativa da solicitação de compra |
| 39 | SN_INTEGRACAO_BIONEXO | VARCHAR2 | N | Indica se a COLETA foi gerada pela integração com Bionexo. Caso contrario "N" ou NULL. |

---

## DBAMV.COLETA_ESTIMATIVA
> Coleta Estimativa

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_COLETA | NUMBER | N | Codigo da Coleta Estimativa |
| 2 | CD_SOL_COM | NUMBER | Y | Codigo da Solicitac?o de Compras da Coleta |
| 3 | CD_FORNECEDOR | NUMBER | Y | Codigo do Fornecedor da Coleta |
| 4 | DT_COLETA | DATE | Y | Data da Coleta Estimativa |
| 5 | DT_VALIDADE | DATE | Y | Data de Validade |
| 6 | TP_FRETE | VARCHAR2 | Y | Tipo do Frete |
| 7 | NR_DIAS_ENTREGA | NUMBER | Y | Numero de Dias para Entrega |
| 8 | CD_CONDICAO_PAGAMENTO | NUMBER | Y | Codigo da Condic?o de Pagamento |
| 9 | VL_FRETE | NUMBER | Y | Valor do Frete |
| 10 | VL_DESCONTO | NUMBER | Y | Valor do Desconto |
| 11 | VL_TOTAL_COLETA | NUMBER | Y | Valor Total da Coleta |
| 12 | VL_PERC_DESCONTO | NUMBER | Y | Valor Percentual do Desconto |
| 13 | VL_PERC_ICMS | NUMBER | Y | Valor do Percentual do ICMS |
| 14 | VL_ICMS | NUMBER | Y | Valor do ICMS |
| 15 | DS_OBSERVACAO_FORNECEDOR | VARCHAR2 | Y | Descric?o da Observac?o do Fornecedor |
| 16 | SN_RESPONDIDA | VARCHAR2 | Y | Respondida: Sim ou N?o |
| 17 | DT_RESPOSTA_FORNECEDOR | DATE | Y | Data da Resposta do Fornecedor |
| 18 | DT_ENVIO_FORNECEDOR | DATE | Y | Data do Envio para Fornecedor |
| 19 | DS_UPLOAD_DOCUMENTO_WORD | LONG RAW | Y | Descric?o do Upload do Documento |
| 20 | CD_SEQUENCIA_PROCESSO | NUMBER | Y | Codigo da Sequencia do Processo |
| 21 | SN_INCLUSAO_NOTA | VARCHAR2 | Y | Inclus?o na Nota: Sim ou N?o |
| 22 | VL_OUTROS | NUMBER | Y | Valor Outros |
| 23 | TP_COMUNICACAO | VARCHAR2 | Y | Tipo de Comunicac?o |
| 24 | CD_USUARIO_PESQ | VARCHAR2 | Y | Codigo do Usuario |
| 25 | NR_PROPOSTA | NUMBER | Y | Numero da Proposta |
| 26 | TP_SITUACAO | VARCHAR2 | Y | Tipo da Situac?o |

---

## DBAMV.COLETA_LICITACAO
> Coleta Licitac?o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_COLETA | NUMBER | N | Codigo da Coleta Licitac?o |
| 2 | CD_SOL_COM | NUMBER | N | Codigo da Solicitac?o de Compras da Coleta |
| 3 | CD_FORNECEDOR | NUMBER | N | Codigo do Fornecedor da Coleta |
| 4 | DT_COLETA | DATE | N | Data da Coleta Estimativa |
| 5 | DT_VALIDADE | DATE | Y | Data de Validade |
| 6 | TP_FRETE | VARCHAR2 | N | Tipo do Frete |
| 7 | NR_DIAS_ENTREGA | NUMBER | Y | Numero de Dias para Entrega |
| 8 | CD_CONDICAO_PAGAMENTO | NUMBER | Y | Codigo da Condic?o de Pagamento |
| 9 | VL_FRETE | NUMBER | Y | Valor do Frete |
| 10 | VL_DESCONTO | NUMBER | Y | Valor do Desconto |
| 11 | VL_TOTAL_COLETA | NUMBER | Y | Valor Total da Coleta |
| 12 | VL_PERC_DESCONTO | NUMBER | Y | Valor Percentual do Desconto |
| 13 | VL_PERC_ICMS | NUMBER | Y | Valor do Percentual do ICMS |
| 14 | VL_ICMS | NUMBER | Y | Valor do ICMS |
| 15 | DS_OBSERVACAO_FORNECEDOR | VARCHAR2 | Y | Descric?o da Observac?o do Fornecedor |
| 16 | SN_RESPONDIDA | VARCHAR2 | N | Respondida: Sim ou N?o |
| 17 | DT_RESPOSTA_FORNECEDOR | DATE | Y | Data da Resposta do Fornecedor |
| 18 | DT_ENVIO_PARA_FORNECEDOR | DATE | Y | Data do Envio para Fornecedor |
| 19 | DS_UPLOAD_DOCUMENTO_WORD | LONG RAW | Y | Descric?o do Upload do Documento |
| 20 | CD_SEQUENCIA_PROCESSO | NUMBER | Y | Codigo da Sequencia do Processo |
| 21 | SN_INCLUSAO_NOTA | VARCHAR2 | N | Inclus?o na Nota: Sim ou N?o |
| 22 | VL_OUTROS | NUMBER | Y | Valor Outros |
| 23 | TP_COMUNICACAO | VARCHAR2 | Y | Tipo de Comunicac?o |
| 24 | CD_COLETA_INTEGRA | VARCHAR2 | Y | Campo que identifica a chave da tabela de integrac?o do MV2000i com outro sistema. |
| 25 | NR_DIAS_ENTREGA_INTERVALO | NUMBER | Y | Intervalo de Dias de Tolerancia para Entrega |
| 26 | SN_ESTIMATIVA | VARCHAR2 | N | Verifica se a coleta sera uma estimativa de preco ou uma coleta de preco |
| 27 | NR_PROPOSTA | NUMBER | Y | Numero da Proposta |
| 28 | CD_COLETA_TEM | NUMBER | Y | Armazena o codigo da estimativa associada a coleta |
| 29 | SN_EMAIL | VARCHAR2 | N | E-mail? Sim ou N?o |
| 30 | DT_ENTREGA_ATA_FORNEC | DATE | Y | Data de Entrega da Ata do Fornecedor |
| 31 | CD_USUARIO_ENTREGA_ATA | VARCHAR2 | Y | Codigo do Usuario de Entrega da Ata |
| 32 | DS_RESPONS_ENTREGA_FORN | VARCHAR2 | Y | Descric?o do Responsavel pela Entrega do Fornecedor |
| 33 | DT_DEVOLUCAO_ATA_FORNEC | DATE | Y | Data de Devoluc?o da Ata do Fornecedor |
| 34 | CD_USUARIO_DEVOLUC_ATA | VARCHAR2 | Y | Codigo do Usuario da Devoluc?o da Ata |
| 35 | DS_RESPONS_DEVOLUC_FORN | VARCHAR2 | Y | Descric?o do Responsavel da Devoluc?o do Fornecedor |

---

## DBAMV.COLETA_MATERIAL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_COLETA_MATERIAL | NUMBER | N |  |
| 2 | DT_SOLICITACAO | DATE | N |  |
| 3 | HR_SOLICITACAO | DATE | N |  |
| 4 | CD_PED_LAB | NUMBER | N |  |
| 5 | CD_UNID_INT | NUMBER | Y |  |
| 6 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 7 | NM_USUARIO | VARCHAR2 | Y |  |
| 8 | CD_LOCAL_COLETA | NUMBER | Y |  |
| 9 | DT_COLETA | DATE | Y | data da coleta a ser realizada |
| 10 | HR_COLETA | DATE | Y | horario da coleta a ser realizada |

---

## DBAMV.COLETA_MOEDA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_COLETA_MOEDA | NUMBER | N | Sequencia da tabela |
| 2 | CD_COLETA | NUMBER | N | Codigo da coleta |
| 3 | CD_MOEDA_INDICE | VARCHAR2 | N | Codigo da moeda |
| 4 | DS_MOEDA_INDICE | VARCHAR2 | N | Descricao da moeda |
| 5 | CD_MOEDA_PADRAO | VARCHAR2 | N | Moeda padrao da tabela multi empresa |
| 6 | VL_INDICE_COLETA | NUMBER | N | Valor do cambio da coleta para o multimoeda |
| 7 | VL_TOTAL_MOEDA | NUMBER | Y | Valor total da coleta para o multimoeda |
| 8 | VL_FRETE_MOEDA | NUMBER | Y | Valor do frete da coleta para o multimoeda |
| 9 | VL_DESCONTO_MOEDA | NUMBER | Y | Valor desconto da coleta para o multimoeda |
| 10 | VL_ICMS_MOEDA | NUMBER | Y | Valor do icms da coleta para o multimoeda |
| 11 | VL_OUTROS_MOEDA | NUMBER | Y | Valor do acrescimo da coleta para o multimoeda |
| 12 | DT_INDICE_MOEDA | DATE | N | Data do indice da coleta para o multimoeda |
| 13 | CD_MOEDA_BASE | VARCHAR2 | N | Moeda base do indice |
| 14 | CD_INDICE_MOEDA | NUMBER | N | Codigo do indice da coleta para o multimoeda |
| 15 | VL_INDICE_MOEDA | NUMBER | N | Valor do indice da coleta para o multimoeda |
| 16 | SN_CAMBIO_SUGERIDO | VARCHAR2 | N | Valor do indice da coleta para o multimoeda |

---

## DBAMV.COLETA_SINAL_VITAL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_COLETA_SINAL_VITAL | NUMBER | N |  |
| 2 | NM_USUARIO | VARCHAR2 | Y |  |
| 3 | DATA_COLETA | DATE | Y |  |
| 4 | CD_ATENDIMENTO | NUMBER | Y |  |
| 5 | CD_FECHAMENTO | NUMBER | Y | Codigo do Fechamento. |
| 6 | CD_PRESTADOR | NUMBER | Y | Grava o prestador responsavel pela aferic?o |
| 7 | SN_FINALIZADO | VARCHAR2 | N | Indica se a aferic?o foi finalizada. |
| 8 | DS_OBSERVACAO | VARCHAR2 | Y | observac?o da aferic?o |
| 9 | CD_TRIAGEM_ATENDIMENTO | NUMBER | Y | codigo da triagem atendimento |
| 10 | DT_REFERENCIA | DATE | Y | data da referencia |
| 11 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da multi-empresa |
| 12 | CD_REGISTRO_CLINICO | NUMBER | Y | Especifica o RegistroClinico que foi realizado no atendimento |
| 13 | CD_DOCUMENTO_CLINICO | NUMBER | Y | O codigo do documento clinico, setado via trigger (fk) |
| 14 | CD_COLETA_SINAL_VITAL_INTEGRA | VARCHAR2 | Y | Codigo de-para do sinal vital |
| 15 | DT_INTEGRA | DATE | Y | Data em que o registro foi integrado |
| 16 | CD_SEQ_INTEGRA | NUMBER | Y | Codigo sequencial da integrac?o |
| 17 | SN_RELEVANTE | VARCHAR2 | Y |  |
| 18 | CD_COLETA_SINAL_VITAL_AGRP | NUMBER | Y |  |

---

## DBAMV.COLETA_SINAL_VITAL_AGRUPADA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_COLETA_SINAL_VITAL | NUMBER | N |  |
| 2 | NM_USUARIO | VARCHAR2 | Y |  |
| 3 | DATA_COLETA | DATE | Y |  |
| 4 | CD_ATENDIMENTO | NUMBER | Y |  |
| 5 | CD_FECHAMENTO | NUMBER | Y | Código do Fechamento. |
| 6 | CD_PRESTADOR | NUMBER | Y | Grava o prestador responsável pela aferição |
| 7 | SN_FINALIZADO | VARCHAR2 | N | Indica se a aferição foi finalizada. |
| 8 | DS_OBSERVACAO | VARCHAR2 | Y | observação da aferição |
| 9 | CD_TRIAGEM_ATENDIMENTO | NUMBER | Y | código da triagem atendimento |
| 10 | DT_REFERENCIA | DATE | Y | data da referência |
| 11 | CD_MULTI_EMPRESA | NUMBER | N | Código da multi-empresa |
| 12 | CD_REGISTRO_CLINICO | NUMBER | Y | Especifica o RegistroClinico que foi realizado no atendimento |
| 13 | CD_DOCUMENTO_CLINICO | NUMBER | Y | O código do documento clínico, setado via trigger (fk) |
| 14 | CD_COLETA_SINAL_VIT_AGRP_INTG | VARCHAR2 | Y | Código de-para do sinal vital |
| 15 | DT_INTEGRA | DATE | Y | Data em que o registro foi integrado |
| 16 | CD_SEQ_INTEGRA | NUMBER | Y | Código sequencial da integração |
| 17 | SN_RELEVANTE | VARCHAR2 | Y |  |

---

## DBAMV.COMENTARIO_CODIFICADO
> Tabela de Comentario Padr?o Codificado do Laboratorio

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_COMENTARIO_CODIFICADO | NUMBER | N | Codigo do Comentario Padr?o codificado |
| 2 | CD_CODIFICACAO | VARCHAR2 | N | Codido que representara a TAG do Comentario |
| 3 | DS_DESCRICAO | VARCHAR2 | N | Descric?o do Comentario |
| 4 | DS_COMENTARIO | VARCHAR2 | N | Texto do Comentario Padr?o |

---

## DBAMV.COMPON

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIP_PRESC | NUMBER | N |  |
| 2 | CD_TIP_PRESC_COMPONENTE | NUMBER | N |  |
| 3 | QT_COMPON | NUMBER | N |  |
| 4 | CD_FOR_APL | VARCHAR2 | Y |  |
| 5 | CD_PRODUTO | NUMBER | Y |  |
| 6 | CD_UNI_PRO | NUMBER | Y |  |
| 7 | TP_COMPONENTE | VARCHAR2 | N |  |
| 8 | SN_FATURA | VARCHAR2 | Y |  |
| 9 | TP_KIT | VARCHAR2 | Y |  |
| 10 | CD_UNI_PRESC | NUMBER | Y | Codigo da unidade de medida |
| 11 | CD_COMPON | NUMBER | N | Codigo sequencial para a tabela componente. |
| 12 | DS_OBSERVACAO_COMPON | VARCHAR2 | Y | Observac?o do componente |
| 13 | SN_DILUENTE_PADRAO | VARCHAR2 | N | Indica se o componente é o diluente padrão |
| 14 | SN_RECONSTITUINTE_PADRAO | VARCHAR2 | N | Indica se o componente é o reconstituinte padrão |
| 15 | SN_EXIBE_RELATORIO | VARCHAR2 | N | CONFIGURAÃ¿Ã¿O PARA PERMITIR EXIBIR O COMPONENTE DO ITEM DE PRESCRIÃ¿Ã¿O |
| 16 | SN_EXIBE_AVAFAR | VARCHAR2 | N |  |
| 17 | SN_EXIBE_CHECAGEM | VARCHAR2 | Y | Informa se deverá exibir o componente na checagem |

---

## DBAMV.COMPONENTE_NNISS
> Sumariza a tabela DBAMV.MOV_INV atraves da carga automatica ou e usada para carga manual

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_COMPONENTE_NNISS | NUMBER | N | Codigo identificador do componente NNISS |
| 2 | CD_MULTI_EMPRESA | NUMBER | N | Codigo identificador da multi-empresa |
| 3 | DT_MES | NUMBER | N | Mes do registro |
| 4 | DT_ANO | DATE | N | Ano do registro |
| 5 | CD_MOV_INV | NUMBER | Y | Codigo identificador do registro de procedimentos invasivo |
| 6 | CD_PRO_INVASIVO | NUMBER | N | Codigo identificado do procedimento invasivo |
| 7 | CD_UNID_INT | NUMBER | N | Codigo da Unidade de Internac?o |
| 8 | QT_MANUAL | NUMBER | Y | Quantidade informada no processo de levantamento manual |
| 9 | NM_USUARIO | VARCHAR2 | N | Nome do usuario |
| 10 | DT_LANCAMENTO | DATE | N | Data do registro |
| 11 | NR_PESO_GRAMA | VARCHAR2 | Y | Peso em gramas do pacientes em bercario de alto risco |

---

## DBAMV.COMPON_COMPATIVEL
> Tabela para armazenar os componentes compatíveis para o item

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_COMPON_COMPATIVEL | NUMBER | N | Código sequêncial para a tabela |
| 2 | CD_TIP_PRESC | NUMBER | N | Código do tipo de prescrição pai |
| 3 | CD_TIP_PRESC_COMPONENTE | NUMBER | N | Código do tipo de prescrição filho |

---

## DBAMV.COMPON_FILTRO
> Tabela que guarda os fíltros possíveis para um componente ser lançado no item de prescrição

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_COMPON_FILTRO | NUMBER | N | Código sequencial identificador do registro |
| 2 | CD_COMPON | NUMBER | N | Coluna com o código sequencial do componente (FK) |
| 3 | CD_SETOR | NUMBER | Y | Coluna com o código do setor para filtrar (FK) |
| 4 | CD_MULTI_EMPRESA | NUMBER | Y | Coluna com o código da multi empresa para filtrar (FK) |
| 5 | QT_DOSE_MINIMA | NUMBER | Y | Define para qual a quantidade minima da dose o item de prescrição pai em sua unidade de referênci... |
| 6 | QT_DOSE_MAXIMA | NUMBER | Y | Define para qual a quantidade maxima da dose o item de prescrição pai em sua unidade de referênci... |
| 7 | CD_FOR_APL | VARCHAR2 | Y | Coluna com o código da forma de aplicação para filtrar (FK) |
| 8 | NR_ANO_INICIAL | NUMBER | Y | Ano inicial a ser levado em contra no filtro por faixa etária |
| 9 | NR_MES_INICIAL | NUMBER | Y | Mês inicial a ser levado em contra no filtro por faixa etária |
| 10 | NR_DIA_INICIAL | NUMBER | Y | Dia inicial a ser levado em contra no filtro por faixa etária |
| 11 | NR_ANO_FINAL | NUMBER | Y | Ano final a ser levado em contra no filtro por faixa etária |
| 12 | NR_MES_FINAL | NUMBER | Y | Mês final a ser levado em contra no filtro por faixa etária |
| 13 | NR_DIA_FINAL | NUMBER | Y | Dia final a ser levado em contra no filtro por faixa etária |

---

## DBAMV.CONDICAO_CONTROLE_RESULTADO
> CONDICAO da Regra de resultado

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONDICAO_CONTROLE_RESULTADO | NUMBER | N | Sequence da tabela. |
| 2 | CD_REGRA_CONTROLE_RESULTADO | NUMBER | N | FK da regra de resultado |
| 3 | CD_VERSAO | NUMBER | N | Fk da val_exa |
| 4 | NM_CAMPO | VARCHAR2 | N | Fk da val_exa |
| 5 | TP_OPERACAO | VARCHAR2 | N | Tipo da Operação |
| 6 | DS_RESULTADO | VARCHAR2 | N | Resultado a ser comparado |
| 7 | CD_EXA_LAB | NUMBER | N | Exame |

---

## DBAMV.CULTURA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PED_LAB | NUMBER | N |  |
| 2 | CD_EXA_LAB | NUMBER | N |  |
| 3 | DT_EXAME | DATE | N |  |
| 4 | DS_COLONIAS | VARCHAR2 | Y |  |
| 5 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 6 | CD_MATERIAL | NUMBER | N |  |
| 7 | TP_RESULTADO | VARCHAR2 | Y |  |
| 8 | CD_ITPED_LAB | NUMBER | N |  |
| 9 | CD_REG_INF | NUMBER | Y |  |
| 10 | CD_TIPO_RESULTADO_CULTURA | NUMBER | Y | Código do tipo de resultado de cultura. |
| 11 | CD_AMOSTRA | NUMBER | Y | Código da amostra que foi utilizada para o laudo na tela de microbiologia. |
| 12 | CD_COLETA_MATERIAL | NUMBER | Y | Código utilizado para a PK da amostra |
| 13 | CD_SEQ_ANDAMENTO | NUMBER | Y | Sequencia da analise |
| 14 | DS_OBSERVACAO_EXAME | VARCHAR2 | Y | Descricao da Observacao |
| 15 | DS_METODO_CULTURA | VARCHAR2 | Y | Descricao do metodo de cultura associado ao resultado do exame |
| 16 | DS_VALOR_REFERENCIA_CULTURA | VARCHAR2 | Y | Valor de referencia de cultura associado ao resultado do exame |

---

## DBAMV.CULTURAS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DT_EXAME | DATE | Y | Data do Exame |
| 2 | TP_RESISTENCIA | VARCHAR2 | Y | Tipo da Resistencia |
| 3 | GERMES_CD_GERMES | NUMBER | N |  |
| 4 | ANTIMICROB_CD_ANTIMICROB | VARCHAR2 | N |  |

---

## DBAMV.CULTURA_MANUAL
> Registro do cadastro manual dos exames de culturas

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CULTURA_MANUAL | NUMBER | N | Codigo de Identificac?o da Cultura Manual |
| 2 | DT_EXAME | DATE | N | Data da execuc?o do exame |
| 3 | DS_COLONIAS | VARCHAR2 | Y | Descric?o da colonia de germes |
| 4 | DS_OBSERVACAO | VARCHAR2 | Y | Observac?es gerais da cultura manual |
| 5 | TP_RESULTADO | VARCHAR2 | Y | Resultado da Cultura: P - Positivo, N - Negativo, A - Positivo em Andamento e B - Negativo em And... |
| 6 | CD_EXA_LAB | NUMBER | N |  |
| 7 | CD_MATERIAL | NUMBER | N |  |
| 8 | CD_ATENDIMENTO | NUMBER | N |  |
| 9 | CD_REG_INF | NUMBER | Y |  |
| 10 | SN_LIBERA_VIGILANCIA | VARCHAR2 | Y |  |

---

## DBAMV.DEVOLUCAO_AUTORIZACAO_AIH
> Controla a devoluc?o de lista de laudos para autorizac?o por problemas na emiss?o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONTROLE_AUTORIZACAO_AIH | NUMBER | N | Codigo do controle de autorizac?es AIH |
| 2 | NR_SEQUENCIAL | NUMBER | N |  |
| 3 | CD_USUARIO | VARCHAR2 | N | Usuario que devolveu o item selecionado |
| 4 | DT_DEVOLUCAO | DATE | N | Data e hora que o item foi selecionado para devoluc?o |

---

## DBAMV.DRE_GERENCIAL
> Demostrativo de Resultado Gerencial

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DRE | NUMBER | N | Codigo do DRE |
| 2 | DS_DRE | VARCHAR2 | N | Descric?o do DRE |
| 3 | CD_MULTI_EMPRESA | NUMBER | N | Indica a empresa |
| 4 | CD_MULTI_EMPRESA_ORIGEM | NUMBER | Y | Indica qual empresa realizou o cadastro |
| 5 | DT_ANO | DATE | N | Indica o exercicio contabil |

---

## DBAMV.DRE_SEQ_NIVEL_GERENCIAL_TEMP
> Tabela temporaria para impress?o do demonstrativo de resultado gerencial

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SEQUENCIA | NUMBER | Y | Codigo da Sequencia |
| 2 | CD_NIVEL | NUMBER | Y | Codigo do Nivel |
| 3 | CD_SEQ_NIVEL | NUMBER | Y | Codigo da Sequencia do Nivel |
| 4 | VL_VALOR | NUMBER | Y | Indica o valor da conta |

---

## DBAMV.ENDER_COLETA_ENTREGA
> Cadastro de enderecos para coleta de amostras ou entrega de laudos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PED_LAB_ENDER | NUMBER | N |  |
| 2 | CD_PED_LAB | NUMBER | Y | Codigo identificador do pedido de exames |
| 3 | TP_SERVICO | VARCHAR2 | N | Identifica se o endereco corresponde a Coleta de Material ou Entrega do Laudo |
| 4 | DT_SERVICO | DATE | N | Data da entrega do laudo |
| 5 | VL_SERVICO | NUMBER | N |  |
| 6 | DS_LOGRADOURO | VARCHAR2 | Y | Logradouro do local padr?o para entrega de resultados de exames |
| 7 | NR_LOGRADOURO | VARCHAR2 | Y | Numero no logradouro |
| 8 | DS_COMPLEMENTO | VARCHAR2 | Y | Complemento do endereco |
| 9 | NM_BAIRRO | VARCHAR2 | Y | Nome do bairro |
| 10 | NR_CEP | VARCHAR2 | Y | Codigo de enderecamento postal |
| 11 | NR_TELEFONE | VARCHAR2 | Y | Telefones de contato |
| 12 | NR_CELULAR | VARCHAR2 | Y | Telefones celular de contato |
| 13 | NR_FAX | VARCHAR2 | Y | Numero do tele-fax |
| 14 | DS_EMAIL | VARCHAR2 | Y | Endereco eletronico |
| 15 | CD_CIDADE | NUMBER | Y |  |
| 16 | SN_COBRAR_TAXA | VARCHAR2 | Y | Identifica se a taxa de coleta de material sera cobrada |
| 17 | QT_COLETA | NUMBER | N | Quantidade de materiais coletados |
| 18 | CD_AREA_COLETA | NUMBER | Y |  |
| 19 | CD_TIPO_ENTREGA | NUMBER | Y |  |
| 20 | CD_LOCAL_PADRAO | NUMBER | Y |  |
| 21 | CD_PED_RX | NUMBER | Y |  |
| 22 | DT_INTEGRA | DATE | Y | Data em que o registro foi integrado |
| 23 | CD_SEQ_INTEGRA | VARCHAR2 | Y | Codigo do registro na tabela de integrac?o |

---

## DBAMV.ENSAIO_AMOSTRA_ANALISE
> Tabela de Cadastro dos Ensaios da Analise de Amostra.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ENSAIO_AMOSTRA_ANALISE | NUMBER | N | Codigo do Ensaio Amostra Analise (PK). |
| 2 | CD_AMOSTRA_ANALISE | NUMBER | N | Codigo da Amostra. |
| 3 | CD_ENSAIO | NUMBER | N | Codigo do Ensaio. |
| 4 | CD_UNIDADE_ANALITICA | NUMBER | N | Codigo da Unidade Analitica. |
| 5 | TP_SITUACAO | VARCHAR2 | N | Tipo da situac?o do Ensaio.A - Em Analise; C - Cancelada; X - Exigencia; O - Concluida |
| 6 | CD_USUARIO_ENSAIO_AMOSTRA | VARCHAR2 | N | Codigo do Usuario que Cadastrou o Ensaio. |
| 7 | DT_CADASTRO_ENSAIO_AMOSTRA | DATE | N | Data de Cadastro do Ensaio. |
| 8 | CD_REFERENCIA_ANALISE | NUMBER | Y | Codigo da Referencia para Analise do Ensaio. |
| 9 | CD_VAL_REF_ANALISE | NUMBER | Y | Valor de Referencia no Ensaio. |
| 10 | DS_RESULTADO | VARCHAR2 | Y | Resultado do Ensaio. |
| 11 | CD_RESULTADO_PADRAO | NUMBER | Y | Codigo do Resultado Padr?o do Ensaio. |
| 12 | DT_CONCLUSAO | DATE | Y | Data de Conclus?o do Ensaio (Resultado). |
| 13 | CD_USUARIO_CONCLUSAO | VARCHAR2 | Y | Usuario Responsavel pela Conclus?o do Ensaio. |
| 14 | DT_CANCELAMENTO | DATE | Y | Data e hora do cancelamento da Amostra. |
| 15 | CD_USUARIO_CANCELAMENTO | VARCHAR2 | Y | Usuario responsavel pelo Cancelamento da Amostra. |
| 16 | DT_ENTRADA_EXIGENCIA | DATE | Y | Data e hora em que a Amostra entrou em situac?o de exigencia. |
| 17 | CD_USUARIO_EXIGENCIA | VARCHAR2 | Y | Codigo do Usuario responsavel por colocar a Amostra em exigencia. |
| 18 | CD_MOTIVO_CANCELAMENTO | NUMBER | Y | Codigo do Motivo de Cancelamento. |

---

## DBAMV.ENTREGA_EXAME_SADT
> Tabela de Entregas de Exames Laboratoriais.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ENTREGA_EXAME | NUMBER | N |  |
| 2 | NM_RESPONSAVEL | VARCHAR2 | N |  |
| 3 | DT_ENTREGA_EXAME | DATE | N |  |
| 4 | HR_ENTREGA_EXAME | DATE | N |  |
| 5 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 6 | CD_TIP_PAREN | NUMBER | Y | Identifica o grau de parentesco do responsavel pela retirada do exame |
| 7 | NR_FONE | VARCHAR2 | Y | Numero do Telefone |
| 8 | CD_USUARIO | VARCHAR2 | Y | Usuario Autorizador da Ultima Alterac?o no Lote de Pagamento. |
| 9 | DS_DOCUMENTO | VARCHAR2 | Y | Numero do Documento de RG |
| 10 | NR_CPF | VARCHAR2 | Y | Numero do CPF |
| 11 | DT_PROTOCOLO | DATE | Y | Data e hora de gerac?o do protocolo |

---

## DBAMV.EXAME_ACAO_EXCLUIR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EXAME_ACAO_EXCLUIR | NUMBER | N | Codigo da chave primaria. |
| 2 | CD_COMPARACAO_ACAO_VAL_EXA | NUMBER | N | Codigo do registro de comparac?o. |
| 3 | CD_EXA_LAB | NUMBER | N | Codigo da exame a ser confirmado. |

---

## DBAMV.EXAME_DILIGENCIA_DIAGN
> Exames diligenciados.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EXAME_DILIGENCIA_DIAGN | NUMBER | N | Sequence da tabela. |
| 2 | CD_SOLICITACAO_DILIGENCIA | NUMBER | N | Código da Solicitação. |
| 3 | CD_ITPED_LAB | NUMBER | N | Código do Item do exame. |
| 4 | DT_FIM_SUSPENSAO | DATE | Y | Data do fim da suspensão |
| 5 | CD_USUARIO_FIM_SUSPENSAO | VARCHAR2 | Y | Usuário que removeu a suspensão |
| 6 | SN_SUSPENSO | VARCHAR2 | Y | Suspenso S- Sim N - Não |
| 7 | TP_STATUS_EXAME | VARCHAR2 | N | Status do exame na abertura do diligenciamento (S)solicitado,(L)recepcionado,(C)coletado,(R)Reali... |

---

## DBAMV.EXAME_FISICO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EXAME_FISICO | NUMBER | N |  |
| 2 | CD_TIPO_PACIENTE | NUMBER | N |  |
| 3 | CD_ATENDIMENTO | NUMBER | N |  |
| 4 | CD_ENFER_SUPER | NUMBER | N |  |
| 5 | DT_EXAME_FISICO | DATE | N |  |
| 6 | HR_EXAME_FISICO | DATE | N |  |

---

## DBAMV.EXAME_INTERESSE_MODELO_MAPA
> Tabela Cadastro exames dos modelos de mapa de trabalho

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MODELO_MAPA_TRABALHO | NUMBER | N | CÃ³digo do modelo do mapa de trabalho |
| 2 | CD_EXA_LAB | NUMBER | N | CÃ³digo do exame. |

---

## DBAMV.EXAME_MAMA
> Tabela de Exames especificos para diagnostico de doencas na mama

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EXAME_MAMA | NUMBER | N | Codigo sequencial identificador do registro. |
| 2 | TP_EXAME | VARCHAR2 | N | Indica o tipo do exame (I - Imagem, L - Laboratorio). |
| 3 | CD_EXA_LAB | NUMBER | Y | Codigo do exame laboratorial. |
| 4 | CD_EXA_RX | NUMBER | Y | Codigo do exame de imagem. |
| 5 | TP_EXAME_MAMA | VARCHAR2 | N | Indica o tipo do exame de mama (M - Mamografia, C - Citopatologico, H - Histopatologico). |

---

## DBAMV.EXAME_PATOLOGIA_GES
> Tabela que listas as consultas medicas e os prazos de realização que devem ser cumpridos para uma etapa do protocolo.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EXAME_PATOLOGIA_GES | NUMBER | N | Código identificador. |
| 2 | CD_ITEM_AGENDAMENTO | NUMBER | N | Item de agendamento do tipo exame relacionado. |
| 3 | CD_ETAPAS_ALERTA_PROTOCOLO | NUMBER | N | Código da etapa do protocolo relacionada. |
| 4 | TP_FAIXA_ETARIA | VARCHAR2 | N | Faixa etária A(D)ulto, (P)ediátrico, (A)mbos. |
| 5 | NR_DIAS_CONSULTA | NUMBER | Y | Número maximo de dias para realizar a consulta |
| 6 | DS_PERIODICIDADE | VARCHAR2 | Y | Periodicidade de realização da consulta. |
| 7 | DS_UNIDADE | VARCHAR2 | Y | Unidade de medida a ser solicitada |
| 8 | QT_QUANTIDADE | NUMBER | Y | Quantidade a ser solicitada |
| 9 | DS_OBSERVACAO | VARCHAR2 | Y | Observação |

---

## DBAMV.EXAME_PROTOCOLO
> Tabela responsável por armazenar os exames a serem verificados por portocolo, podendo informar uma sigla para o exame

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EXAME_PROTOCOLO | NUMBER | N | Código sequencial da tabela |
| 2 | CD_PROTOCOLO | NUMBER | N | Código do protocolo (FK) |
| 3 | CD_EXA_LAB | NUMBER | N | Código do exame laboratorial (FK) |
| 4 | NM_SIGLA | VARCHAR2 | N | Sigla para o exame, para ser exibido na tela de prescrição |
| 5 | SN_ATIVO | VARCHAR2 | N | registro ativo sim ou não |

---

## DBAMV.EXA_ITSESC

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ESCALA_DIA | NUMBER | N | Codigo |
| 2 | CD_EXA_LAB | NUMBER | N |  |
| 3 | CD_LABORATORIO | NUMBER | N |  |
| 4 | HR_AGENDA | DATE | N |  |

---

## DBAMV.EXA_LAB
> Tabela de Exames Laboratoriais.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EXA_LAB | NUMBER | N | Codigo Sequencial do Exame. |
| 2 | NM_EXA_LAB | VARCHAR2 | N | Descric?o de Identificac?o do Exame. |
| 3 | SN_CULTURA | VARCHAR2 | N | Identifica se o exame e uma Cultura. |
| 4 | SN_CONTAGIOSO | VARCHAR2 | N | Identifica se o exame e contagioso. |
| 5 | TP_SEXO | VARCHAR2 | N | Tipo de Sexo para qual o Exame e realizado. |
| 6 | VL_CUSTO | NUMBER | Y | Valor de Custo do Exame. |
| 7 | CD_VERSAO_ATUAL | NUMBER | Y | Vers?o do Desenho do Laudo Padr?o do Exame. |
| 8 | DS_ORIENTACAO | VARCHAR2 | Y | Descric?o da Orientac?es Necessarias para realizac?o do  Exame. |
| 9 | NR_DIAS_PERIODO | NUMBER | Y | Numero de Dias necessarios para entrega do Exame. |
| 10 | NR_ORDEM_DE_IMPRESAO | NUMBER | Y | Ordem de Impress?o. |
| 11 | NR_SOLICITACOES_PERIODO | NUMBER | Y | Numero de Dias de Intervalo para realizac?o de um novo exame. |
| 12 | NR_ORDEM_DE_IMPRESSAO | NUMBER | N | Ordem de Impress?o. |
| 13 | DS_ESPELHO | VARCHAR2 | Y | Texto referente ao Espelho do Exame (Alterado de 1000 para 4000 caracteres pelo pda 95930). |
| 14 | VL_TEMPO_MEDIO | DATE | Y | Tempo medio para realizac?o do exame. |
| 15 | CD_SIH_SUS | VARCHAR2 | Y | Codigo do Procedimento Hospitalar SUS associado ao mesmo. (N?o utilizado apos 31/12/2007 portaria... |
| 16 | CD_SSM | VARCHAR2 | Y | Codigo do Procedimento Ambulatorial SUS associado ao mesmo. (N?o utilizado apos 31/12/2007 portar... |
| 17 | CD_PRO_FAT | VARCHAR2 | Y | Codigo do Procedimento AMB associado ao Exame. |
| 18 | CD_PRO_FAT_SUS | VARCHAR2 | Y | Codigo do Procedimento Hospitalar SUS associado ao mesmo. (N?o utilizado apos 31/12/2007 portaria... |
| 19 | PAG_UNIC_EXAME | VARCHAR2 | Y | Identifica se o exame devera ser impresso numa unica folha. |
| 20 | NM_MNEMONICO | VARCHAR2 | Y | Descric?o do Mnemonico de identificac?o do Exame. |
| 21 | TP_RESULTADO | VARCHAR2 | N | Tipo de Resultado do Exame (Sem Resultado, Cultura, Resultado Unico, Formatado e Campo Livre). |
| 22 | CD_TEX_PAD | NUMBER | Y | Codigo do Texto Padr?o default do exame. |
| 23 | SN_IMP_ULT_RESULTADO | VARCHAR2 | N | Identifica se devera ser impresso o ultimo resultado. |
| 24 | SN_CONSULTA_RESULTADO | VARCHAR2 | N | Identifica se o exame permite a consulta de seus resultados nos modulos de consulta |
| 25 | NR_ETIQUETA | NUMBER | N | Numero de Etiquetas de Amostra do Exame |
| 26 | SN_ANTIBIOGRAMA | VARCHAR2 | N | Identifica se o exame e um Antibiograma |
| 27 | SN_ASSOCIA_LOTE_BANCADA | VARCHAR2 | N | Identificador - Habilitar a associac?o do exame a Lotes de Trabalho por Bancada ? |
| 28 | SN_LANCA_EXAME_PRINCIPAL | VARCHAR2 | N | Identificador - Lancar o exame principal junto com os seus secundarios ? |
| 29 | SN_REALIZA_DOMINGO | VARCHAR2 | N | Identificador - Exame e realizado especificamente nos dias de Domingo ? |
| 30 | SN_REALIZA_SEGUNDA | VARCHAR2 | N | Identificador - Exame e realizado especificamente nos dias de segundas-feiras ? |
| 31 | SN_REALIZA_TERCA | VARCHAR2 | N | Identificador - Exame e realizado especificamente nos dias de tercas-feiras ? |
| 32 | SN_REALIZA_QUARTA | VARCHAR2 | N | Identificador - Exame e realizado especificamente nos dias de quartas-feiras ? |
| 33 | SN_REALIZA_QUINTA | VARCHAR2 | N | Identificador - Exame e realizado especificamente nos dias de quintas-feiras ? |
| 34 | SN_REALIZA_SEXTA | VARCHAR2 | N | Identificador - Exame e realizado especificamente nos dias de sextas-feiras ? |
| 35 | SN_REALIZA_SABADO | VARCHAR2 | N | Identificador - Exame e realizado especificamente nos dias de sabados ? |
| 36 | SN_ATIVO | VARCHAR2 | N | Flag que indica se o Exame esta ativo ou n?o. |
| 37 | CD_USUARIO_DESATIVACAO | VARCHAR2 | Y | Usuario que desativou o exame |
| 38 | DT_DESATIVACAO | DATE | Y | Data em que se desativou o exame |
| 39 | CD_EXA_LAB_INTEGRA | VARCHAR2 | Y | Codigo sequencial do exame (de-para) |
| 40 | CD_SEQ_INTEGRA | NUMBER | Y | Codigo sequencial da integrac?o |
| 41 | DT_INTEGRA | DATE | Y | Data de integrac?o do registro |
| 42 | CD_CODIGO_EXTERNO | VARCHAR2 | Y | Indica o codigo externo para integrac?o do exame a sistemas de terceiros |
| 43 | CD_PROCEDIMENTO_SIA | VARCHAR2 | Y | Procedimento Ambulatorial SUS |
| 44 | CD_PROCEDIMENTO_SIH | VARCHAR2 | Y | Procedimento de Internac?o SUS |
| 45 | NR_PCE | NUMBER | Y | Periodo critico de entrega (Monitor de urgencia). |
| 46 | SN_PERMITE_VARIOS_TUBOS | VARCHAR2 | Y | Indica se o sistema ira permitir o cadastro de mais de um tubo como padr?o |
| 47 | SN_PRIORIDADE | VARCHAR2 | Y | Indica se o exame sera caracterizado como urgente pelo laboratorio. |
| 48 | SN_RESTRITO | VARCHAR2 | N | Indica se o exame e de uso restrito do laboratorio. |
| 49 | SN_OBRIGA_PESO_ALTURA_COLETA | VARCHAR2 | Y | Obriga o cadastro do peso e altura na coleta. |
| 50 | SN_OBRIGA_LOCAL_ANATOMICO_COL | VARCHAR2 | Y | Obriga o local anatomico no pedido de exames |
| 51 | SN_CAMPOS_VERSAO_ESPELHO | VARCHAR2 | Y | Indica que utiliza campos da versão padrão no espelho do exame. |
| 52 | SN_CURVA_DINAMICA | VARCHAR2 | Y | Indica a utilização do processo de curva dinamica |
| 53 | SN_EXAME_EXCLUSIVO_SECUNDARIO | VARCHAR2 | N | Indica se o exame deve ser lancado apenas como secundario |

---

## DBAMV.EXA_LAB_CORRELACIONADOS
> Tabela que armazenara os exames correlacionados.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EXA_LAB_PRINCIPAL | NUMBER | N | Codigo do Exame principal. |
| 2 | CD_EXA_LAB_CORRELACIONADO | NUMBER | N | Codigo do Exame correlacionado. |
| 3 | CD_VERSAO_EXA_LAB_PRINCIPAL | NUMBER | Y | Vers?o dos exames correlacionados. OBS: Esta e a vers?o do exame principal. |

---

## DBAMV.EXA_LAB_GERACAO_SUB_AMOSTRA
> Tabela para armazenar os exames com vinculo a regras de geração de sub-amostras.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EXA_LAB_GERACAO_SUB_AMOSTRA | NUMBER | N | Sequence do exame da geração da sub-amostra. |
| 2 | CD_EXA_LAB | NUMBER | N | Código do exame utilizado na regra de geração da sub-amostra. |
| 3 | CD_SET_EXA | NUMBER | N | Código do Setor Executante. |
| 4 | CD_MATERIAL | NUMBER | Y | Código do Material cadastrados para o exame. |

---

## DBAMV.EXA_LAB_LABORATORIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EXA_LAB | NUMBER | N |  |
| 2 | CD_LABORATORIO | NUMBER | N |  |
| 3 | SN_INTEGRACAO | VARCHAR2 | Y | Campo utilizado para selecionar o laboratorio automatico pelo Sistema de Integrac?o. |
| 4 | SN_PADRAO | VARCHAR2 | Y | Indica qual o laboratorio padr?o a ser utilizado pelo exame |

---

## DBAMV.EXA_LAB_LOCAL_ANATOMICO_COLETA
> Armazena os locais anatomicos de coleta vinculados a um exame

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EXA_LAB_LOCAL_ANATOMICO_COL | NUMBER | N | Sequence da tabela |
| 2 | CD_EXA_LAB | NUMBER | N | Cod do exame. |
| 3 | CD_LOCAL_ANATOMICO_COLETA | NUMBER | N | Cod do local anatomico |
| 4 | SN_PADRAO | VARCHAR2 | N | Indica que o local deve ser carregado como padrão. |
| 5 | CD_MATERIAL | NUMBER | Y | Indica o material determinado para o local de coleta |

---

## DBAMV.EXA_LAB_MANUAL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EXA_LAB_MANUAL | NUMBER | N |  |
| 2 | CD_ATENDIMENTO | NUMBER | N |  |
| 3 | DT_EMITIDO | DATE | N |  |
| 4 | CD_EXA_LAB | NUMBER | N |  |
| 5 | CD_MATERIAL | NUMBER | N |  |
| 6 | DS_RESULTADO | VARCHAR2 | Y |  |

---

## DBAMV.EXA_LAB_MATERIAL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EXA_LAB | NUMBER | N |  |
| 2 | CD_MATERIAL | NUMBER | N |  |
| 3 | NR_VOLUME_COLETA | NUMBER | Y | Volume do material a ser coletado (em ml) |
| 4 | SN_PADRAO | VARCHAR2 | N |  |
| 5 | SN_ESPERA | VARCHAR2 | N |  |
| 6 | CD_TUBO_COLETA | NUMBER | N |  |
| 7 | NR_ORDEM_NA_CURVA | NUMBER | Y | Ordem da amostra no Exame de Curva |
| 8 | NM_MEIO_TRANSPORTE | VARCHAR2 | Y | Indica o meio em que a amostra deve ser transportada |
| 9 | SN_DT_COLETA_EXTERNA | VARCHAR2 | Y | Informa se o material poderá ter a data de coleta externa informada manualmente. |
| 10 | SN_MATERIAL_COMPLEMENTAR | VARCHAR2 | Y | Indica que o campo material complementar deverá ser exibido no pep. |
| 11 | SN_OBRIGA_MATERIAL_COMP | VARCHAR2 | N | Indica se obrigará o preenchimento do campo material complementar no pep. |
| 12 | NR_AMOSTRA_BACKUP | NUMBER | Y | Indica a quantidade de amostras backup que devem ser geradas para cada amostra principal |
| 13 | TP_AGRUPAMENTO_AMOSTRA | VARCHAR2 | Y | Indica como os exames serão grupados na amostra com o mesmo material. V - Volume do Tubo(setor e ... |
| 14 | SN_ATIVO | VARCHAR2 | N | Indica se a configuração tubo x material está ativa |
| 15 | DT_INATIVACAO_MATERIAL | DATE | Y | Indica a data de inativação do material |

---

## DBAMV.EXA_LAB_MATERIAL_ORI

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EXA_LAB | NUMBER | N |  |
| 2 | CD_MATERIAL | NUMBER | N |  |
| 3 | DS_ORIENTACAO_MATERIAL | VARCHAR2 | Y | Orientacao do material. |
| 4 | CD_ORIENTACAO_EXAME | NUMBER | Y | CÓDIGO SEQUENCIAL DA ORIENTAÇÃO. |
| 5 | CD_SET_EXA | NUMBER | Y | CÓDIGO SEQUENCIAL DO SETOR EXECUTANTE. |

---

## DBAMV.EXA_LAB_OBSERVACAO_CULTURA
> Tabela para armazenar as observações dos exames de cultura

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EXA_LAB_OBSERVACAO_CULTURA | NUMBER | N | Código único do tipo de resultado de cultura |
| 2 | CD_EXA_LAB | NUMBER | Y | Código do exame |
| 3 | CD_MATERIAL | NUMBER | Y | Código material |
| 4 | DS_OBSERVACAO | VARCHAR2 | Y | Descrição da Observação |
| 5 | DS_METODO_CULTURA | VARCHAR2 | Y | Descrição do método de cultura associado ao exame e material |
| 6 | DS_VALOR_REFERENCIA_CULTURA | VARCHAR2 | Y | Valor de referência de cultura associado ao exame e material |

---

## DBAMV.EXA_LAB_ORI_SET
> TABELA DE ENTRE ENTRE EXAMES, SETORES EXECUTANTES E ORIENTAÇÕES.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EXA_LAB_ORI_SET | NUMBER | N | CÓDIGO SEQUENCIAL DA TABELA. |
| 2 | CD_EXA_LAB | NUMBER | N | CÓDIGO SEQUENCIAL DO EXAME. |
| 3 | CD_ORIENTACAO_EXAME | NUMBER | N | CÓDIGO SEQUENCIAL DA ORIENTAÇÃO. |
| 4 | CD_SET_EXA | NUMBER | Y | CÓDIGO SEQUENCIAL DO SETOR EXECUTANTE. |

---

## DBAMV.EXA_LAB_SECUNDARIO
> Tabela de Exames Laboratoriais Secundarios ao Exame Principal

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EXA_LAB | NUMBER | N | Codigo do Exame Laboratorial |
| 2 | CD_EXA_LAB_SECUNDARIO | NUMBER | N | Codigo de Exame Laboratorial secundario ao Exame Principal |
| 3 | CD_EXA_SECUNDARIO | NUMBER | N | Sequence do exame secundario |
| 4 | CD_MATERIAL | NUMBER | Y | Indica que o exame é secundario para esse material |
| 5 | CD_SET_EXA | NUMBER | Y | Vinculo do secundario com setor |
| 6 | NR_ORDEM_IMPRESSAO | NUMBER | Y | Ordenação da Impressao |

---

## DBAMV.EXA_LAB_SET_EXA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EXA_LAB | NUMBER | N |  |
| 2 | CD_SET_EXA | NUMBER | N |  |
| 3 | CD_BANCADA | NUMBER | Y |  |
| 4 | SN_INTEGRACAO | VARCHAR2 | Y | Campo utilizado para selecionar o laboratorio automatico pelo Sistema de Integrac?o. |
| 5 | SN_ATIVO | VARCHAR2 | N | Identifica se o setor executante associado ao exame atualmente realiza ou n?o o exame selecionado. |
| 6 | DS_RESTRICAO_HORARIO | VARCHAR2 | Y | Mensagem instituicional de orientacao ao usuario  quando houver restricao de horarios |
| 7 | SN_ATENDE_FERIADO | VARCHAR2 | N | Informa se o setor atende solicitacoes do exame em feriados |
| 8 | SN_AMOSTRA_BACKUP | VARCHAR2 | Y | Indica se o setor poderá gerar amostra backup |
| 9 | SN_AGRUPAMENTO | VARCHAR2 | Y | Indica que o setor possui agrupamento |
| 10 | SN_OBRIGA_LOCAL_ANATOMICO_COL | VARCHAR2 | N | Indica se o local anatomico sera obrigatorio para para o setor do exame |

---

## DBAMV.EXA_LAB_SET_EXA_MAT_PADRAO
> TABELA PARA ARMAZENAR EXAME, SETOR EXECUTANTE, TUBO E MATERIAL CRIANDO UMA CONFIGURAÇÃO DE EXAME POR EMPRESA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EXA_LAB | NUMBER | N | CÓDIGO SEQUENCIAL DO EXAME |
| 2 | CD_SET_EXA | NUMBER | N | CÓDIGO SEQUENCIAL DO SETOR EXECUTANTE |
| 3 | CD_TUBO | NUMBER | N | CÓDIGO SEQUENCIAL DO TUBO DE COLETA |
| 4 | CD_MATERIAL | NUMBER | N | CÓDIGO SEQUENCIAL DO MATERIAL A SER COLETADO |
| 5 | SN_ATIVO | VARCHAR2 | N | INDICA SE A CONFIGURAÇÃO ESTÁ ATIVA |

---

## DBAMV.EXA_LAB_SET_EXA_PERG
> Tabela p ara cadastrar perguntas por setor executante.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EXA_LAB | NUMBER | N | Cdigo sequencial do exame. |
| 2 | CD_PERGUNTA | NUMBER | N | Cdigo sequencial da pergunta. |
| 3 | CD_SET_EXA | NUMBER | N | Cdigo sequencial do setor executante. |
| 4 | TP_GRAVA_PERGUNTA | VARCHAR2 | N | Onde gravar a pergunta? G - Agendamento, A - Agendamento e Pedido, P - Pedido, C - Coleta. |

---

## DBAMV.EXA_LAB_SET_EXA_PERG_RESP
> Tabela para cadastrar respostas para perguntas por setor executante.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EXA_LAB | NUMBER | N | Cdigo sequencial do exame. |
| 2 | CD_PERGUNTA | NUMBER | N | Cdigo sequencial da pergunta. |
| 3 | CD_SET_EXA | NUMBER | N | Cdigo sequencial do setor executante. |
| 4 | CD_RESPOSTA | NUMBER | N | Cdigo sequencial da resposta. |
| 5 | DS_MENSAGEM | VARCHAR2 | Y | Mensagem de ao a resposta. |
| 6 | SN_MENSAGEM_ATIVA | VARCHAR2 | N | Chave que ativa ou desativa a mensagem de ao. |
| 7 | SN_IMPEDE_REALIZACAO | VARCHAR2 | N | Chave que diz se a resposta impede ou no a realizao do exame. |

---

## DBAMV.EXA_LAB_TEXTOS_PAD

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EXA_LAB | NUMBER | N |  |
| 2 | CD_TEXTO | NUMBER | N |  |

---

## DBAMV.EXA_LAB_TUBO_COLETA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EXA_LAB | NUMBER | N |  |
| 2 | CD_TUBO_COLETA | NUMBER | N |  |
| 3 | SN_PADRAO | VARCHAR2 | N |  |

---

## DBAMV.EXA_PROIBIDO_WEB
> Tabela para guarda os exames que n?o v?o poder ser impresso nos laudos web.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EXA_PROIBIDO_WEB | NUMBER | N | Identificador |
| 2 | CD_EXA_LAB | NUMBER | N | Codigo do Exame |
| 3 | SN_ATIVO | VARCHAR2 | N | Registro Ativo |
| 4 | CD_USUARIO_CRIACAO | VARCHAR2 | Y | Usuario que criou |
| 5 | CD_USUARIO_ALTERACAO | VARCHAR2 | Y | Usuario que alterou |
| 6 | DH_CRIACAO | DATE | Y | Data da Criac?o |
| 7 | DH_ALTERACAO | DATE | Y | Data da Alterac?o |

---

## DBAMV.EXA_RX

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EXA_RX | NUMBER | N |  |
| 2 | DS_EXA_RX | VARCHAR2 | N |  |
| 3 | TP_SEXO | VARCHAR2 | N |  |
| 4 | DS_ORIENTACAO | VARCHAR2 | Y |  |
| 5 | VL_TEMPO_MEDIO | DATE | Y |  |
| 6 | EXA_RX_CD_SSM | VARCHAR2 | Y | Codigo do Procedimento Ambulatorial SUS associado ao mesmo. (N?o utilizado apos 31/12/2007 portar... |
| 7 | EXA_RX_CD_PRO_FAT | VARCHAR2 | Y |  |
| 8 | EXA_RX_CD_SIH_SUS | VARCHAR2 | Y | Codigo do Procedimento Hospitalar SUS associado ao mesmo. (N?o utilizado apos 31/12/2007 portaria... |
| 9 | NR_DIAS_ENTREGA | NUMBER | Y |  |
| 10 | CD_TEX_RX | NUMBER | Y |  |
| 11 | CD_PRO_FAT_SUS | VARCHAR2 | Y | Codigo do Procedimento Hospitalar SUS associado ao mesmo. (N?o utilizado apos 31/12/2007 portaria... |
| 12 | NM_MNEMONICO | VARCHAR2 | Y |  |
| 13 | CD_TIPO_MICRODATA | NUMBER | Y |  |
| 14 | SN_LANCA_EXAME_PRINCIPAL | VARCHAR2 | N | Identificador - Lancar o exame principal junto com os seus secundarios ? |
| 15 | CD_GED_DOCUMENTO | NUMBER | Y |  |
| 16 | CD_MODALIDADE_EXAME | NUMBER | Y | Codigo de Identificac?o da Modalidade do Exame |
| 17 | DS_ESTACAO_DICOM | VARCHAR2 | Y | Identificac?o da Estac?o DICOM |
| 18 | SN_ATIVO | VARCHAR2 | N | Flag que indica se o Exame esta ativo ou n?o. |
| 19 | CD_USUARIO_DESATIVACAO | VARCHAR2 | Y | Usuario que desativou o exame |
| 20 | DT_DESATIVACAO | DATE | Y | Data em que se desativou o exame |
| 21 | SN_INCLUIR_ACRESC | VARCHAR2 | N | Indica se o exame tem inclus?o de acrescimo especifico na regra de cobranca do faturamento. |
| 22 | SN_ECOCARDIOGRAMA | VARCHAR2 | Y | Indica se o exame e um ecocardiograma pois o laudo desse exame possui caracteristicas especificas... |
| 23 | SN_PAG_UNIC_EXAME | VARCHAR2 | Y | Identifica se o exame devera ser impresso numa unica folha. |
| 24 | CD_PROCEDIMENTO_SIA | VARCHAR2 | Y | Procedimento Ambulatorial SUS |
| 25 | CD_PROCEDIMENTO_SIH | VARCHAR2 | Y | Procedimento de Internac?o SUS |
| 26 | SN_REALIZA_SEGUNDA | VARCHAR2 | N | Identificador - Exame e realizado especificamente nos dias de Segundas-feiras ? |
| 27 | SN_REALIZA_TERCA | VARCHAR2 | N | Identificador - Exame e realizado especificamente nos dias de Tercas-feiras ? |
| 28 | SN_REALIZA_QUARTA | VARCHAR2 | N | Identificador - Exame e realizado especificamente nos dias de Quartas-feiras ? |
| 29 | SN_REALIZA_QUINTA | VARCHAR2 | N | Identificador - Exame e realizado especificamente nos dias de Quintas-feiras ? |
| 30 | SN_REALIZA_SEXTA | VARCHAR2 | N | Identificador - Exame e realizado especificamente nos dias de Sextas-feiras ? |
| 31 | SN_REALIZA_SABADO | VARCHAR2 | N | Identificador - Exame e realizado especificamente nos dias de Sabado ? |
| 32 | SN_REALIZA_DOMINGO | VARCHAR2 | N | Identificador - Exame e realizado especificamente nos dias de Domingo ? |
| 33 | QT_DIAS_VAL_EXA_AGENDA | NUMBER | Y | Quantidade de dias de validade do exame para agendamento |
| 34 | SN_PRE_CONSULTA_EXAMES | VARCHAR2 | N | Indica se o exame estará habilitado para criar pedido de exames de pré-consulta? |

---

## DBAMV.EXA_RX_FORMULA
> Tabela agregadora dos kits de produtos para o exame

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | SN_ATIVO | VARCHAR2 | N | Indica se o kit esta ativo para o exame |
| 2 | QT_FORMULA | NUMBER | N | Indica a quantidade do kit para realizac?o do exame |
| 3 | CD_EXA_RX | NUMBER | N | Codigo do exame na tabela EXA_RX |
| 4 | CD_FORMULA | NUMBER | N | Codigo do kit na tabela FORMULA |

---

## DBAMV.EXA_RX_ITEM_AGENDAMENTO
> Tabela de registro dos vinculos de exames de imagem com itens de agendamento para gerar fila de espera.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EXA_RX | NUMBER | N | Código do exame de imagem. |
| 2 | CD_ITEM_AGENDAMENTO | NUMBER | N | Código do item de agendamento do scma. |
| 3 | CD_SER_DIS | NUMBER | Y | Codigo do serviço do scma. |
| 4 | CD_TIP_MAR | NUMBER | Y | Codigo do tipo de atendimento do scma. |

---

## DBAMV.EXA_RX_IT_ESCALA_DIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ESCALA_DIA | NUMBER | N |  |
| 2 | HR_AGENDA | DATE | N |  |
| 3 | CD_EXA_RX | NUMBER | N |  |
| 4 | DS_REGIAO | VARCHAR2 | Y |  |
| 5 | CD_EXA_RX_IT_ESCALA_DIA | NUMBER | N |  |
| 6 | CD_EMPRESA_FATURAR | NUMBER | Y |  |
| 7 | CD_SEQ_INTEGRA | NUMBER | Y | Codigo sequencial do registro integrado |
| 8 | DT_INTEGRA | DATE | Y | Data de integrac?o com registro |

---

## DBAMV.EXA_RX_LABORATORIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LABORATORIO | NUMBER | N |  |
| 2 | CD_EXA_RX | NUMBER | N |  |

---

## DBAMV.EXA_RX_LATERALIDADE
> Vinculo dos exames com a lateralidade

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EXA_RX | NUMBER | N | Codigo do exame de imagem |
| 2 | CD_LATERALIDADE | NUMBER | N | Codigo da lateralidade |
| 3 | SN_ATIVO | VARCHAR2 | N | Ativo ou não |

---

## DBAMV.EXA_RX_MANUAL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EXA_RX_MANUAL | NUMBER | N |  |
| 2 | CD_ATENDIMENTO | NUMBER | N |  |
| 3 | DT_EMITIDO | DATE | N |  |
| 4 | CD_EXA_RX | NUMBER | N |  |
| 5 | DS_RESULTADO | VARCHAR2 | Y |  |

---

## DBAMV.EXA_RX_PRE_CONSULTA
> Tabela que guardará os exames de pré-consultas para geração do pedido automatico na criação doa atendimento.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EXA_RX_PRE_CONSULTA | NUMBER | N | Sequence que será a PK da tabela. |
| 2 | CD_EXA_RX_PRINCIPAL | NUMBER | N | Código do exame principal que será associado aos exames de pré-consultas. |
| 3 | CD_EXA_RX | NUMBER | N | Código do exame de pré-consulta. |
| 4 | CD_SET_EXA | NUMBER | N | Código do setor executante de pré-consulta. |
| 5 | CD_PRO_FAT | VARCHAR2 | Y | Código do procedimento AMB do exame de pré-consulta. |
| 6 | TP_ATENDIMENTO | VARCHAR2 | N | Coluna que identificará se será possível criar pedido de exame de pré-consulta para os Tipos de a... |
| 7 | TP_CONVENIO | VARCHAR2 | N | Coluna que identificará se será possível criar pedido de exame de pré-consulta para os Tipos de c... |
| 8 | SN_ATIVO | VARCHAR2 | N | Coluna que identificará se o exame de pré-consulta e seu respectivo setor  está ativo. |

---

## DBAMV.EXA_RX_PROIB_MESMO_DIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EXA_RX | NUMBER | N |  |
| 2 | CD_EXA_RX_PROIB | NUMBER | N |  |

---

## DBAMV.EXA_RX_SECUNDARIO
> Tabela de Exames de Imagem Secundarios ao Exame Principal

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EXA_RX | NUMBER | N | Codigo do Exame de Imagem Principal |
| 2 | CD_EXA_RX_SECUNDARIO | NUMBER | N | Codigo de Exame de Imagem secundario ao Exame Principal |

---

## DBAMV.EXA_RX_SET_EXA_PERG

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EXA_RX | NUMBER | N |  |
| 2 | CD_PERGUNTA | NUMBER | N |  |
| 3 | CD_SET_EXA | NUMBER | N |  |
| 4 | TP_OBRIGATORIO | VARCHAR2 | N |  |
| 5 | TP_SEXO | VARCHAR2 | N |  |

---

## DBAMV.EXA_RX_SET_EXA_PERG_RESP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EXA_RX | NUMBER | N |  |
| 2 | CD_PERGUNTA | NUMBER | N |  |
| 3 | CD_RESPOSTA | NUMBER | N |  |
| 4 | CD_SET_EXA | NUMBER | N |  |
| 5 | DS_MENSAGEM | VARCHAR2 | Y |  |
| 6 | SN_MENSAGEM_ATIVA | VARCHAR2 | N |  |
| 7 | SN_IMPEDE_REALIZACAO | VARCHAR2 | N |  |

---

## DBAMV.EXA_SET

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EXA_RX | NUMBER | N |  |
| 2 | CD_SET_EXA | NUMBER | N |  |
| 3 | SN_ATIVO | VARCHAR2 | N | Ativa ou desativa a permissão do setor executar um exame. |

---

## DBAMV.EXCECAO_PEDIDO_EXAME
> Tabela de regra de Excec?o para gerac?o automatica de pedidos de exames.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EXCECAO_PEDIDO_EXAME | NUMBER | N | Codigo da regra de excec?o. |
| 2 | CD_EXA_RX | NUMBER | Y | Codigo do exame de imagem. |
| 3 | CD_EXA_LAB | NUMBER | Y | Codigo do exame laboratorial. |
| 4 | TP_ATENDIMENTO | VARCHAR2 | Y | Tipo do Atendimento. |
| 5 | CD_CONVENIO | NUMBER | Y | Codigo do convenio. |
| 6 | CD_SETOR | NUMBER | Y | Codigo do Setor. |

---

## DBAMV.EXCECAO_SOLICITACAO_EXA_LAB
> Registras as excessões cadastradas para as restrições de exames

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EXCECAO_SOLICITACAO_EXA | NUMBER | N | Sequence da tabela. |
| 2 | DT_EXCECAO | DATE | N | Data em que foir criada a excessão. |
| 3 | CD_ITPED_LAB | NUMBER | Y | Código do item do pedido. |
| 4 | CD_PACIENTE | NUMBER | N | Código do Paciente. |
| 5 | CD_USUARIO_EXCECAO | VARCHAR2 | N | Código do usuário que registrou a excessão |
| 6 | DS_JUSTIFICATIVA | VARCHAR2 | N | Justifiativa da excessão |
| 7 | CD_EXA_LAB | NUMBER | Y | Exame que receberá excessão |
| 8 | CD_RESTRICAO_EXAME_PSSD | NUMBER | Y |  |
| 9 | CD_BLOQUEIO_EXAME | NUMBER | Y |  |
| 10 | SN_ATIVO | VARCHAR2 | N |  |

---

## DBAMV.FFCH_ITEM_RES_CCSS
> Tabela de configurac?o item de resultado para quadros CCSS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITEM_RES | NUMBER | N | Codigo do item de resultado |
| 2 | TP_CONFIG_Q1 | VARCHAR2 | Y | tipo da config para quadro I |
| 3 | TP_CONFIG_Q4 | VARCHAR2 | Y | tipo da config para quadro IV |
| 4 | CD_CCSS | NUMBER | N | Codigo do Plano |

---

## DBAMV.FILA_CARTORIO_DIGITAL
> Lista de Exames pendentes de Assinatura digital

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FILA_CARTORIO_DIGITAL | NUMBER | N | Sequence da tabela. |
| 2 | CD_PED_LAB | NUMBER | N | Código do Pedido de exmes. |
| 3 | CD_ITPED_LAB | NUMBER | N | Código do Item do pedido. |
| 4 | NR_CPF_CGC | VARCHAR2 | Y | CPF OU CGC do Médico que assinou |
| 5 | NR_VERSAO | NUMBER | N | Código da versão da assinatura |
| 6 | DT_SOLICITACAO | DATE | N | Código da versão da assinatura |
| 7 | CD_CARTORIO_DIGITAL | NUMBER | Y | Código retornado pelo cartorio digital. |
| 8 | TP_STATUS | VARCHAR2 | N | Status da assinatura: A - Aguradando, P - Processado e F- Falha. |
| 9 | DS_MENSAGEM | VARCHAR2 | Y | Descrição do status do pendencia de assinatura. |
| 10 | DT_PROCESSAMENTO | DATE | Y | Data em que foi processado e falhou. |

---

## DBAMV.FORMULA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRODUTO | NUMBER | N |  |
| 2 | CD_UNI_PRO | NUMBER | N |  |
| 3 | QT_PADRAO | NUMBER | N |  |
| 4 | NR_DIAS_VALIDO | NUMBER | N |  |
| 5 | VL_ADMINISTRATIVO | NUMBER | Y |  |
| 6 | DS_INDICACAO | VARCHAR2 | Y |  |
| 7 | VL_ICMS | NUMBER | Y |  |
| 8 | VL_MARGEM | NUMBER | Y |  |
| 9 | CD_FORMULA | NUMBER | N |  |
| 10 | TP_FORMULA | VARCHAR2 | N |  |
| 11 | CD_CIRURGIA | NUMBER | Y |  |
| 12 | CD_PRESTADOR | NUMBER | Y |  |
| 13 | OBSERVACAO | VARCHAR2 | Y |  |
| 14 | DS_CAIXA_CIRURGICA | VARCHAR2 | Y |  |
| 15 | DS_ROUPARIA | VARCHAR2 | Y |  |
| 16 | SN_PRODUCAO | VARCHAR2 | Y |  |
| 17 | CD_PADRAO | NUMBER | Y | Codigo de Padr?o de Cobranca - Kit do Faturamento |
| 18 | TP_ACONDICIONAMENTO | VARCHAR2 | Y | Tipo de acondicionamento "TA" Temperatura Ambiente e "RS" Resfriado |
| 19 | VL_VOLUME_FINAL | NUMBER | Y | volume final em ML do produto manipulado |
| 20 | SN_ATIVO | VARCHAR2 | N | Informa se a formula esta ativa Sim ou N?o |
| 21 | SN_PERMITE_SIMILAR | VARCHAR2 | N | Informa se sera possivel utilizar produto similar para o kit cadastrado na produc?o de kits |
| 22 | DS_ETAPA_PREPARACAO | VARCHAR2 | Y | indica as etapas de preparação e instruções adicionais referente a fórmula. |
| 23 | HR_FORMULA_VALIDADE | DATE | Y | SALVA HORA PARA CALCULAR A VALIDADE DA FORMULA |
| 24 | NR_HORAS_VALIDO | NUMBER | Y |  |

---

## DBAMV.FORMULA_CUSTO_FIXO_PRODUCAO
> Tabela de relacionamento da formula com os custos fixos da produc?o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FORMULA | NUMBER | N | Codigo da formula (Tabela FORMULA) - PK, FK |
| 2 | CD_CUSTO_FIXO_PRODUCAO | NUMBER | N | Codigo de custos fixos da produc?o (Tabela CUSTO_FIXO_PRODUCAO) - PK, FK |
| 3 | QT_FOR_CUSTO_FIXO_PRD | NUMBER | N | Quantidade do custos fixos da produc?o usada na producao da formula |

---

## DBAMV.FORMULA_EMPRESA
> Empresa associada a uma formula

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FORMULA | NUMBER | N | Código da fórmula |
| 2 | CD_MULTI_EMPRESA | NUMBER | N | Código da empresa |

---

## DBAMV.FORMULA_EXAME_IMAGEM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FORMULA | NUMBER | N | Código da formula a qual o exame está associado. |
| 2 | CD_EXAME | NUMBER | N | Código do exame de imagem associado à formula. |
| 3 | CD_SETOR | NUMBER | N | Código do setor executante. |
| 4 | QT_PADRAO | NUMBER | N | Quantidade padrão de exames no kit. |

---

## DBAMV.FORMULA_EXAME_LABORATORIAL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FORMULA | NUMBER | N | Código da formula a qual o exame está associado. |
| 2 | CD_EXAME | NUMBER | N | Código do exame laboratorial associado à formula. |
| 3 | CD_SETOR | NUMBER | N | Código do setor executante. |
| 4 | QT_PADRAO | NUMBER | N | Quantidade padrão de exames no kit. |

---

## DBAMV.FORMULA_TIP_ANEST

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FORMULA | NUMBER | N |  |
| 2 | CD_TIP_ANEST | NUMBER | N |  |

---

## DBAMV.FORMULA_VOLUME_TEMPO
> Tabela que guardará as formulas utilizadas para calculo do volume X tempo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FORMULA_VOLUME_TEMPO | NUMBER | N |  |
| 2 | CD_VERSAO | NUMBER | N | Código da versão que estará associado a formula. |
| 3 | CD_MATERIAL | NUMBER | N | Código do material que estará associado a formula. |
| 4 | DS_FORMULA | VARCHAR2 | N | Formula que será utilizada para calculo do volume X tempo |
| 5 | DS_LABEL | VARCHAR2 | Y | Label que retornava no laudo, antes do calculo da formula |

---

## DBAMV.GERMES

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GERMES | NUMBER | N |  |
| 2 | DS_GERME | VARCHAR2 | N |  |
| 3 | NM_MNEMONICO | VARCHAR2 | Y |  |
| 4 | CD_AGRUPAMENTO | NUMBER | Y |  |
| 5 | SN_VIGILANCIA | VARCHAR2 | N | Flag para controle de vigilancia sobre agente infeccioso. |
| 6 | TP_PERFIL_GERME_ATB | VARCHAR2 | N | Determina o tipo de perfil de resistencia do germe "Qualquer Antimicrobiano("OR")" ou "Todos Anti... |

---

## DBAMV.IMPORTACAO_LAUDOS_ACH
> Tabela de importação dos laudos SUS ACH de Porto Alegre.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NM_ARQUIVO | VARCHAR2 | N | Nome do arquivo importado. |
| 2 | DH_IMPORTACAO | DATE | N | Data e hora da importacao. |
| 3 | NM_USUARIO | VARCHAR2 | N | Nome do usuario que importou. |
| 4 | NR_LINHA | NUMBER | N | Numero da linha no arquivo. |
| 5 | NR_LAUDO | NUMBER | N | Numero do laudo. |
| 6 | TP_LAUDO | NUMBER | N | Tipo do laudo, 0-Principal, 2-Med. Auditor, 4- Proced.Especial, 5-Opme. |
| 7 | CD_PROCEDIMENTO | VARCHAR2 | N | Cod procedimento. |
| 8 | QT_AUTORIZADA | NUMBER | N | Qtd autorizada. |
| 9 | DS_LINHA | VARCHAR2 | N | Linha importada. |
| 10 | DS_VALIDACAO | VARCHAR2 | Y | Descrição da validacao. |

---

## DBAMV.IMPORTACAO_LAUDOS_SIH
> Tabela para exportação dos laudos SUS para o SA04z de BH.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IMPORTACAO | NUMBER | N | Código único da importacao. |
| 2 | NM_ARQUIVO | VARCHAR2 | N | Nome do arquivo importado. |
| 3 | DH_IMPORTACAO | DATE | N | Data e hora da importacao do arquivo. |
| 4 | NM_USUARIO | VARCHAR2 | N | Nome do usuario que importou o arquivo. |

---

## DBAMV.INFECCAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INFECCAO | NUMBER | N |  |
| 2 | DT_INFECCAO | DATE | N |  |
| 3 | TP_INFECCAO | VARCHAR2 | N |  |
| 4 | TP_SITUACAO | VARCHAR2 | N |  |
| 5 | CD_TOPOGRAFIA | NUMBER | Y |  |

---

## DBAMV.INFECCAO_TOPOGRAFIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | INFECCAO_CD_INFECCAO | NUMBER | N |  |
| 2 | TOPOGRAFIA_CD_TOPOGRAFIA | NUMBER | N | Codigo |

---

## DBAMV.INVASIVOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INVASIVO | NUMBER | N | Codigo |
| 2 | DT_INVASIVO | DATE | N | Data |
| 3 | NR_OCORRENCIA | NUMBER | Y | Ocorrencia |
| 4 | PRO_INV_CD_PRO_INVASIVO | NUMBER | N | Codigo |

---

## DBAMV.ITEM_COLETA_PROCESSO_COMPRA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITEM_COLETA_PROCESSO_COMPRA | NUMBER | N | Código sequencial |
| 2 | CD_COLETA | NUMBER | N | Código da coleta |
| 3 | CD_PRODUTO | NUMBER | Y | Código do produto |
| 4 | DS_PRODUTO | VARCHAR2 | N | Descrição do produto |
| 5 | CD_UNI_PRO | NUMBER | Y | Código da unidade do produto |
| 6 | QT_COTADA | NUMBER | N | Quantidade cotada |
| 7 | VL_UNITARIO | NUMBER | Y | Valor unitario da coleta |
| 8 | VL_REAL | NUMBER | Y |  |
| 9 | VL_TOTAL | NUMBER | Y | Valor total dos itens de produtos da coleta |
| 10 | VL_DESCONTO | NUMBER | Y | Valor do desconto dos itens de produtos da coleta |
| 11 | VL_IMPOSTO | NUMBER | Y | Valor do imposto dos itens de produtos da coleta |
| 12 | VL_PERC_DESCONTO | NUMBER | Y | Valor do percentual do desconto da coleta |
| 13 | VL_PERC_IMPOSTO | NUMBER | Y | Valor do percentual do imposto da coleta |
| 14 | QT_SOLIC | NUMBER | Y | Quantidade solicitada |
| 15 | NR_REGISTRO_OPERADORA_ANS | VARCHAR2 | Y | Guarda o número de registro da operadora na ANS |

---

## DBAMV.ITEM_COLETA_PRODUTO_ESTIMATIVA
> Itens da Coleta de Produto da Estimativa

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_COLETA | NUMBER | N | Codigo da Coleta |
| 2 | CD_PRODUTO | NUMBER | N | Codigo do Produto |
| 3 | CD_UNI_PRO | NUMBER | Y | Codigo da Unidade do Produto |
| 4 | QT_COTADA | NUMBER | Y | Quantidade Cotada |
| 5 | VL_UNITARIO | NUMBER | Y | Valor Unitario |
| 6 | VL_TOTAL | NUMBER | Y | Valor Total |
| 7 | VL_DESCONTO | NUMBER | Y | Valor do Desconto |
| 8 | VL_IMPOSTO | NUMBER | Y | Valor do Imposto |
| 9 | VL_REAL | NUMBER | Y | Valor Real |
| 10 | VL_PERC_DESCONTO | NUMBER | Y | Valor do Percentual do Desconto |
| 11 | VL_PERC_IMPOSTO | NUMBER | Y | Valor do Percentual do Imposto |
| 12 | DS_MARCA | VARCHAR2 | Y | Descric?o da Marca |
| 13 | QT_SOLIC | NUMBER | Y | Quantidade Solicitada |
| 14 | DS_DICA_DA_COMPRA | VARCHAR2 | Y | Descric?o sobre a Dica da Compra |
| 15 | CD_PRODUTO_MARCA | NUMBER | Y | Codigo do Produto da Marca |
| 16 | DS_PROCEDENCIA | VARCHAR2 | Y | Descric?o da Procedencia |
| 17 | DS_ESPECIFICACAO | CHAR | Y | Descric?o da Especificac?o |
| 18 | QT_ESTIMADO | NUMBER | Y | Quantidade Estimada |

---

## DBAMV.ITEM_COLETA_PRODUTO_LICITACAO
> Itens da Coleta de Produto da Licitacao

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_COLETA | NUMBER | N | Codigo da Coleta |
| 2 | CD_PRODUTO | NUMBER | N | Codigo do Produto |
| 3 | CD_UNI_PRO | NUMBER | N | Codigo da Unidade do Produto |
| 4 | QT_COTADA | NUMBER | N | Quantidade Cotada |
| 5 | VL_UNITARIO | NUMBER | N | Valor Unitario |
| 6 | VL_TOTAL | NUMBER | N | Valor Total |
| 7 | VL_DESCONTO | NUMBER | Y | Valor do Desconto |
| 8 | VL_IMPOSTO | NUMBER | Y | Valor do Imposto |
| 9 | VL_REAL | NUMBER | Y | Valor Real |
| 10 | VL_PERC_DESCONTO | NUMBER | Y | Valor do Percentual do Desconto |
| 11 | VL_PERC_IMPOSTO | NUMBER | Y | Valor do Percentual do Imposto |
| 12 | DS_MARCA | VARCHAR2 | Y | Descric?o da Marca |
| 13 | QT_SOLIC | NUMBER | Y | Quantidade Solicitada |
| 14 | DS_DICA_DA_COMPRA | VARCHAR2 | Y | Descric?o sobre a Dica da Compra |
| 15 | CD_PRODUTO_MARCA | NUMBER | Y | Codigo do Produto da Marca |
| 16 | DS_JUST_QTD_ALT | VARCHAR2 | Y | Para informar a justificativa pelo qual foi alterada a quantidade |
| 17 | VL_TOTAL_HOMOLOGACAO | NUMBER | Y | Valor Total da Homologac?o |
| 18 | DS_PROCEDENCIA | VARCHAR2 | Y | Descric?o da Procedencia |
| 19 | QT_PERCENTUAL | NUMBER | Y | Quantidade do Percentual |
| 20 | TP_PERCENTUAL | VARCHAR2 | Y | Tipo do Percentual |
| 21 | VL_PERCENTUAL | NUMBER | Y | Valor do Percentual |
| 22 | DT_FINALIZACAO | DATE | Y | Data da Finalizac?o |
| 23 | CD_USUARIO_FINALIZACAO | VARCHAR2 | Y | Codigo do Usuario da Finalizac?o |
| 24 | SN_ADJUDICADO | VARCHAR2 | N | Adjudicado? Sim ou N?o |
| 25 | SN_HOMOLOGACAO | VARCHAR2 | N | Indica se e homologado |
| 26 | QT_HOMOLOGACAO | NUMBER | Y | Quantidade homologado |
| 27 | VL_HOMOLOGACAO | NUMBER | Y | Valor homologado |
| 28 | CD_JUSTIFICATIVA_COMPRA_PUBLIC | NUMBER | Y | Codigo da Justificativa da Compra |

---

## DBAMV.ITEM_COLETA_PRODUTO_PERCENTUAL
> Item da Coleta do Produto Percentual

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_COLETA | NUMBER | Y | Codigo da Coleta |
| 2 | CD_PERCENTUAL | NUMBER | N | Codigo do Percentual da Coleta |
| 3 | DT_PERCENTUAL | DATE | Y | Data do Percentual da Coleta |
| 4 | CD_USUARIO | VARCHAR2 | Y | Usuario da Coleta |
| 5 | CD_SOL_COM | NUMBER | Y | Codigo da Solicitac?o de Compra |
| 6 | CD_PRODUTO | NUMBER | Y | Codigo do Produto da Coleta |
| 7 | NR_ITEM | NUMBER | Y | Numero do Item |
| 8 | QT_PERCENTUAL | NUMBER | Y | Quantidade do Percentual da Coleta |
| 9 | TP_PERCENTUAL | VARCHAR2 | Y | Tipo do Percentual |
| 10 | VL_PERCENTUAL | NUMBER | Y | Valor do Percentual |
| 11 | DS_MOTIVO | VARCHAR2 | Y | Descric?o do Motivo |
| 12 | CD_DOCUMENTO | NUMBER | Y | Codigo do Documento |
| 13 | NR_EMPENHO | VARCHAR2 | Y | Numero do Empenho |

---

## DBAMV.ITEM_COLETA_SERVICO_ESTIMATIVA
> Itens da Coleta de Servico da Estimativa

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_COLETA | NUMBER | N | Codigo da Coleta |
| 2 | CD_SER_SOL | NUMBER | N | Codigo do Servico Solicitado |
| 3 | VL_TOTAL | NUMBER | Y | Valor Total |
| 4 | DS_SERVICO | VARCHAR2 | Y | Descric?o do Servico |
| 5 | NR_PRAZO | NUMBER | Y | Numero de Prazo |

---

## DBAMV.ITEM_COLETA_SERVICO_LICITACAO
> Itens da Coleta de Servico da Licitac?o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_COLETA | NUMBER | N | Codigo da Coleta |
| 2 | CD_SER_SOL | NUMBER | N | Codigo do Servico Solicitado |
| 3 | VL_TOTAL | NUMBER | N | Valor Total |
| 4 | DS_SERVICO | VARCHAR2 | Y | Descric?o do Servico |
| 5 | SN_ADJUDICADO | VARCHAR2 | N | Adjudicado? Sim ou N?o |
| 6 | CD_JUSTIFICATIVA_COMPRA_PUBLIC | NUMBER | Y | Codigo da Justificativa da Compra |
| 7 | SN_HOMOLOGACAO | VARCHAR2 | N | Homologado? (S)im ou (N)?o |
| 8 | VL_TOTAL_HOMOLOGACAO | NUMBER | Y | Valor Total da Homologac?o |

---

## DBAMV.ITEM_COLETA_SERVICO_PERCENTUAL
> Item da Coleta do servico Percentual

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_COLETA | NUMBER | Y | Codigo da Coleta |
| 2 | CD_PERCENTUAL | NUMBER | N | Codigo do Percentual da Coleta |
| 3 | DT_PERCENTUAL | DATE | Y | Data do Percentual da Coleta |
| 4 | CD_USUARIO | VARCHAR2 | Y | Usuario da Coleta |
| 5 | CD_SOL_COM | NUMBER | Y | Codigo da Solicitac?o de Compra |
| 6 | CD_SER_SOL | NUMBER | Y | Codigo do servico da Coleta |
| 7 | NR_ITEM | NUMBER | Y | Numero do Item |
| 8 | QT_PERCENTUAL | NUMBER | Y | Quantidade do Percentual da Coleta |
| 9 | TP_PERCENTUAL | VARCHAR2 | Y | Tipo do Percentual |
| 10 | VL_PERCENTUAL | NUMBER | Y | Valor do Percentual |
| 11 | DS_MOTIVO | VARCHAR2 | Y | Descric?o do Motivo |
| 12 | CD_DOCUMENTO | NUMBER | Y | Codigo do Documento |
| 13 | NR_EMPENHO | VARCHAR2 | Y | Numero do Empenho |

---

## DBAMV.ITFORMULA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRODUTO | NUMBER | N |  |
| 2 | CD_PRODUTO_TEM | NUMBER | N |  |
| 3 | CD_UNI_PRO | NUMBER | N |  |
| 4 | QT_PADRAO | NUMBER | N |  |
| 5 | CD_FORMULA | NUMBER | N |  |

---

## DBAMV.ITMANIPULA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MANIPULA | NUMBER | N |  |
| 2 | CD_PRODUTO | NUMBER | N |  |
| 3 | CD_UNI_PRO | NUMBER | N |  |
| 4 | QT_UTILIZADO | NUMBER | N |  |
| 5 | VL_CUSTO_UNITARIO | NUMBER | N |  |
| 6 | QT_PERDA | NUMBER | Y |  |
| 7 | VL_TOTAL | NUMBER | Y |  |

---

## DBAMV.ITPED_LAB
> Tabela de Exames Solicitados nos Pedidos de Exames Laboratoriais.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PED_LAB | NUMBER | N | Codigo do Pedido de Exame. |
| 2 | CD_EXA_LAB | NUMBER | N | Codigo do Exame solicitado por este item |
| 3 | DT_LAUDO | DATE | Y | Data de realizac?o do exame. |
| 4 | SN_DOENCA_POSITIVA | VARCHAR2 | Y | Identificador - Constatac?o da Doenca ? |
| 5 | SN_EMITIDO | VARCHAR2 | Y | Identificador - Laudo ja foi impresso ? |
| 6 | SN_COBRADO | VARCHAR2 | Y | Identificador - O Exame deve ser cobrado ? |
| 7 | CD_VERSAO | NUMBER | Y | Codigo da vers?o do Desenho do Laudo a ser impresso. |
| 8 | CD_LABORATORIO | NUMBER | N | Codigo do Laboratorio. |
| 9 | HR_LAUDO | DATE | Y | Hora de realizac?o do laudo. |
| 10 | SN_LAUDO_CADASTRADO | VARCHAR2 | Y | Identificador - O exame possui laudo cadastrado ? |
| 11 | CD_ITPED_LAB | NUMBER | N | Codigo Sequencial do Item de Pedido de Exame (Chave da Tabela). |
| 12 | DS_RESULTADO | VARCHAR2 | Y | Resultado do Exame, para exames cujo resultado sejam do tipo Resultado Unico. |
| 13 | DS_CAMPO_LIVRE | LONG | Y | Descric?o do conteudo do Campo Livre. |
| 14 | SN_IMPORT_AIH | VARCHAR2 | Y | Identificador - Importar AIH ? |
| 15 | VL_DESCONTO | NUMBER | Y | Valor de desconto do exame. |
| 16 | SN_LIBERA_CONSULTA | VARCHAR2 | Y | Identificador - Libera a consulta de resultados do exame ? |
| 17 | NR_SMS | NUMBER | Y | Numero da Carteira SMS. |
| 18 | CD_SET_EXA | NUMBER | N | Codigo do Setor Executante. |
| 19 | CD_MEDICO_EXEC | NUMBER | Y | Codigo do Prestador associado ao Medico que assinou o exame |
| 20 | DT_ENTREGA | DATE | Y | Data da Entrega do Exame. |
| 21 | CD_MATERIAL | NUMBER | Y | Codigo do Material colhido para realizac?o do exame. |
| 22 | SN_REALIZADO | VARCHAR2 | Y | Identificador - O Exame ja foi realizado ? |
| 23 | CD_USUARIO_REALIZADO | VARCHAR2 | Y | Codigo do Usuario que cadastrou o resultado ? |
| 24 | SN_REVISADO | VARCHAR2 | Y | Identificador - O Exame ja foi revisado ? |
| 25 | DT_REVISADO | DATE | Y | Data da Revis?o do Exame |
| 26 | CD_USUARIO_REVISADO | VARCHAR2 | Y | Codigo do Usuario que revisou o resultado ? |
| 27 | SN_ASSINADO | VARCHAR2 | Y | Identificador - O Laudo do Exame ja foi assinado eletronicamente ? |
| 28 | DT_ASSINADO | DATE | Y | Data da Assinatura |
| 29 | CD_USUARIO_ASSINADO | VARCHAR2 | Y | Codigo do Usuario que assinou o laudo do exame ? |
| 30 | DT_EMITIDO | DATE | Y | Data da Impress?o do Laudo |
| 31 | CD_USUARIO_EMITIDO | VARCHAR2 | Y | Codigo do Usuario que imprimiu  o laudo do exame ? |
| 32 | CD_TECNICO_EXEC | NUMBER | Y | Codigo do Prestador associado ao Tecnico que realizou o exame |
| 33 | CD_LOTE_BANCADA | NUMBER | Y | Codigo do Lote de Trabalho, onde esta inserido o exame. |
| 34 | DS_CAMPO_LIVRE_CLOB | CLOB | Y | Conteudo do Resultado de Campo Livre do Exame. |
| 35 | TP_RESULTADO | VARCHAR2 | Y |  |
| 36 | CD_TUBO_COLETA | NUMBER | Y |  |
| 37 | CD_GED_DOCUMENTO | NUMBER | Y |  |
| 38 | TP_RESULTADO_EXA_LAB | VARCHAR2 | Y |  |
| 39 | DS_METODO | VARCHAR2 | Y | Descric?o do Metodo utilizado na realizac?o do exame |
| 40 | CD_GUIA | NUMBER | Y | Codigo da Guia Especifica do exame laboratorial. |
| 41 | SN_REFAZIMENTO | VARCHAR2 | N | Indica se o exame e um refazimento com isso o mesmo n?o sera cobrado do faturamento |
| 42 | CD_SEQ_INTEGRA | VARCHAR2 | Y |  |
| 43 | DT_INTEGRA | DATE | Y |  |
| 44 | DS_RESTRICAO | VARCHAR2 | Y | Descric?o de restric?es para realizac?o do exame, em relac?o a uma condic?o do paciente |
| 45 | SN_IMPORTA_REGISTRO | VARCHAR2 | N | Identifica se o registro de Item de Pedido podera ser importado pela Importac?o Padr?o da MV se a... |
| 46 | CD_ENTREGA_EXAME | NUMBER | Y | Codigo do Protocolo de entrega gerado associado ao exame |
| 47 | SN_COLETA_PENDENTE | VARCHAR2 | Y | Identifica os exames que ficaram pendentes de coleta |
| 48 | SN_ENTREGA_LAUDO | VARCHAR2 | Y | Indica se o laudo do exame sera entregue no endereco indicado em PED_LAB_ENDER_COLETA_ENTREGA |
| 49 | CD_USU_AUTORIZA_EXA_PAC | VARCHAR2 | Y | Usuario que Autorizou o Exame do Paciente |
| 50 | SN_AUTORIZA_EXA_PAC | VARCHAR2 | Y | Informa se o Exame foi autorizado pelo Paciente |
| 51 | DT_AUTORIZA_EXA_PAC | DATE | Y | Data em que o Exame foi autorizado pelo Paciente |
| 52 | CD_GED_DOC_CULTURA | NUMBER | Y | Codigo do documento de cultura na hora da impress?o |
| 53 | CD_GED_VERSAO_DOC_CULTURA | NUMBER | Y | Codigo da vers?o do documento de cultura na hora da impress?o |
| 54 | CD_ITPRE_MED | NUMBER | Y | Codigo do item de prescric?o medica. |
| 55 | CD_ITPED_LAB_INTEGRA | VARCHAR2 | Y | Codigo do item do pedido laboratorial (de-para) |
| 56 | DS_CAMINHO_ARQUIVO_RESULTADO | VARCHAR2 | Y | Caminho absoluto para o arquivo de resultado |
| 57 | SN_LIBERA_VIGILANCIA | VARCHAR2 | N | Flag de liberacao do controle de vigilancia. |
| 58 | DS_MOTIVO_REVISAO_CANCELADA | VARCHAR2 | Y | Descric?o do Motivo do cancelamento da Revisao |
| 59 | CD_USUARIO_REVISAO_CANCELADA | VARCHAR2 | Y | Usuario que Cancelou a revis?o |
| 60 | DT_REVISAO_CANCELADA | DATE | Y | Data que o Usuario que Cancelou a revis?o |
| 61 | DS_MOTIVO_ASSINATURA_CANCELADA | VARCHAR2 | Y | Descric?o do Motivo do cancelamento da assinatura |
| 62 | CD_USU_ASSINATURA_CANCELADA | VARCHAR2 | Y | Usuario que Cancelou a assinatura |
| 63 | DT_ASSINATURA_CANCELADA | DATE | Y | Data que o Usuario que Cancelou a assinatura |
| 64 | SN_PENDENCIA_CONTAGEM | VARCHAR2 | Y | Indica se o exame esta com pendencia de contagem de celulas. |
| 65 | CD_USUARIO_DIGITADOR | VARCHAR2 | Y | Codigo do Usuario que digitou o exame |
| 66 | DS_MOTIVO_PENDENCIA | VARCHAR2 | Y | Informar motivo de pendencia de coleta para o exame. |
| 67 | SN_LAUDO_RETIFICADO | VARCHAR2 | Y | Identifica se o laudo foi retificado |
| 68 | DT_VALIDADE | DATE | Y | Data de validade do Item |
| 69 | SENHA | VARCHAR2 | Y | Senha |
| 70 | CD_BLOQUEIO_EXAME | NUMBER | Y | Código do bloqueio de exame aplicado no item. |
| 71 | CD_MOTIVO_CANCELAMENTO_EXAME | NUMBER | Y | Código do motivo de cancelamento do exame lançado no pedido. |
| 72 | DT_LAUDO_LIBERADO_PARCIAL | DATE | Y | Data da liberação parcial do laudo |
| 73 | CD_USUARIO_LAUDO_LIBERADO_PARC | VARCHAR2 | Y | Código do usuário que liberou parcialmente o laudo |
| 74 | SN_LAUDO_LIBERADO_PARCIAL | VARCHAR2 | Y | Identifica se o laudo foi liberado parcialmente |
| 75 | SN_SECUNDARIO | VARCHAR2 | Y | Indica que o exame é secundario ou não. |
| 76 | SN_ASSINATURA_DIGITAL | VARCHAR2 | Y | Indica que o exame foi assinado digitalmente |
| 77 | CD_LOCAL_ANATOMICO_COLETA | NUMBER | Y | Local onde verá ser realizado a coleta. |
| 78 | TP_STATUS_EXAME_IMV | VARCHAR2 | Y | Indica o status do exame pelo gerencimaneto de terceiros a ser visualizado no PEP. |
| 79 | DT_RETIFICACAO | DATE | Y | Data da Retificação do Exame. |
| 80 | CD_CONFIGURACAO_CURVA | NUMBER | Y | Chave estrangeira da configuração da curva que foi lançada |
| 81 | NR_PONTO_CURVA_REALIZADO | NUMBER | Y | Total de Pontos realizados na curva |
| 82 | CD_CID | VARCHAR2 | Y | Codigo do CID no Item de Pedido de Exame. |
| 83 | DS_OBSERVACAO_LOCAL_ANAT_COL | VARCHAR2 | Y | Observação do local anatômico de coleta. |
| 84 | DT_ENTREGA_ANTERIOR | DATE | Y | Data de entrega anterior à data atualizada |
| 85 | CD_MOTIVO_RESTRICAO_EXA_LAB | NUMBER | Y |  |
| 86 | DS_JUSTIFICATIVA_LIB_ABSURDO | VARCHAR2 | Y | JUSTIFICATIVA DA LIBERAO DE VALOR ABSURDO |
| 87 | DS_MATERIAL_COMPLEMENTAR | VARCHAR2 | Y | Descrição do material complementar para o exame laboratorial |
| 88 | SN_MAPA_IMPRESSO | VARCHAR2 | Y | Informa se o exame já foi impresso no mapa de trabalho |
| 89 | CD_JUSTIFICATIVA_LIB_ABSURDO | NUMBER | Y | Código da justificativa de liberação |
| 90 | CD_MOTIVO_RETIFICACAO_EXAME | NUMBER | Y | Indica o motivo de retificação do exame |
| 91 | NR_FRASCO | NUMBER | Y | Indica a quantidade de frascos entregue pelo paciente para exame do tipo urina 24h. |
| 92 | CD_FRASCO_COLETA | NUMBER | Y | Indica qual frasco será utilizado no controle de volume x tempo. |
| 93 | DS_DROGA_CURVA | VARCHAR2 | Y | Descrição da droga testada na análise dos pontos das curvas dinâmica do exame. |

---

## DBAMV.ITPED_LAB_LAUDO_APOIO
> Tabela que guarda os identificadores e informaes de laudos armazenados na GREEN, incluindo dados de auditoria.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITPED_LAB_LAUDO_APOIO | NUMBER | N | Sequence que ser a PK da tabela. |
| 2 | CD_ITPED_LAB | NUMBER | N | Cdigo do item do pedido no HIS. |
| 3 | CD_ID_GREEN | VARCHAR2 | N | Id da GREEN vinculado ao laudo. |
| 4 | CD_VERSAO | NUMBER | N | Verso numrica do laudo integrado. Inicia em 1 e  incrementada quando h nova integrao. |
| 5 | DS_MENSAGEM_GREEN | VARCHAR2 | Y | Mensagem de retorno da GREEN. Sucesso ou exceo. |
| 6 | CD_USUARIO_LAUDO | VARCHAR2 | Y | Cdigo do usurio responsvel pela criao do registro (usurio da integrao). |
| 7 | DT_REGISTRO_LAUDO | DATE | Y | Data e hora que o laudo foi registrado no sistema. |

---

## DBAMV.ITPED_LAB_LAUDO_BACKUP
> Tabela que guarda os identificadores e informaes de laudos armazenados na GREEN, incluindo dados de auditoria.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITPED_LAB_LAUDO_BACKUP | NUMBER | N | Sequence que ser a PK da tabela. |
| 2 | CD_ITPED_LAB | NUMBER | N | Cdigo do item do pedido no HIS. |
| 3 | CD_VERSAO | NUMBER | N | Verso numrica do laudo integrado. |
| 4 | CD_USUARIO_LAUDO | VARCHAR2 | Y | Cdigo do usurio responsvel pela criao do registro (usurio da integrao). |
| 5 | CD_STATUS | NUMBER | N | Cdigo do Http Status retornado pela Green. |
| 6 | LO_LAUDO_BACKUP | BLOB | N | Data e hora que o laudo foi registrado no sistema. |

---

## DBAMV.ITPED_PREST_SETOR_SOLIC
> Vínculo de Item do pedido Prestador e Setor Solicitante

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITPED_PREST_SETOR_SOLIC | NUMBER | N | Sequence da tabela |
| 2 | CD_ITPED_LAB | NUMBER | N | Item do pedido |
| 3 | CD_PRESTADOR | NUMBER | Y | Prestador Solicitante do Corpo Clinico |
| 4 | CD_PRES_EXT | NUMBER | Y | Prestador Solicitante Externo |
| 5 | CD_SETOR | NUMBER | N | Setor Solicitante |
| 6 | CD_PRE_MED | NUMBER | Y | Código do receituário do ítem |

---

## DBAMV.ITPED_RX

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PED_RX | NUMBER | N |  |
| 2 | CD_EXA_RX | NUMBER | N |  |
| 3 | CD_LAUDO | NUMBER | Y |  |
| 4 | SN_COBRADO | VARCHAR2 | Y |  |
| 5 | DT_ENTREGA | DATE | Y |  |
| 6 | SN_REALIZADO | VARCHAR2 | Y |  |
| 7 | DT_REALIZADO | DATE | Y |  |
| 8 | NR_INCIDENCIAS | NUMBER | Y |  |
| 9 | DS_REGIAO | VARCHAR2 | Y |  |
| 10 | CD_ITPED_RX | NUMBER | N |  |
| 11 | NR_FATURADO | NUMBER | Y |  |
| 12 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 13 | CD_ITPRE_MED | NUMBER | Y |  |
| 14 | VL_PERC_FATUR_EXA | NUMBER | Y |  |
| 15 | CD_PRESTADOR | NUMBER | Y |  |
| 16 | CD_LABORATORIO | NUMBER | Y |  |
| 17 | VL_DESCONTO | NUMBER | Y |  |
| 18 | SN_IMPORT_AIH | VARCHAR2 | Y |  |
| 19 | CD_USUARIO_DIGITADOR | VARCHAR2 | Y |  |
| 20 | CD_GUIA | NUMBER | Y | Codigo da Guia Especifica do exame de imagem. |
| 21 | CD_SEQ_INTEGRA | VARCHAR2 | Y |  |
| 22 | DT_INTEGRA | DATE | Y |  |
| 23 | NR_SMS | NUMBER | Y | Numero da Carteira SMS. |
| 24 | CD_ACC_NUMBER_AGFA | VARCHAR2 | Y | Codigo do Acc Number gerado pela integrac?o da AGFA na tabela de integrac?o DFT (MVINTEGRA) |
| 25 | CD_RECURSO | NUMBER | Y | Identifica o recurso associado ao item do pedido |
| 26 | SN_IMAGEM_LIBERADA | VARCHAR2 | N | Indica se Existe imagens liberadas para o exame, podendo ser visualizadas atraves da prescric?o |
| 27 | CD_ENT_PSDI | NUMBER | Y | Codigo do protocolo de entrega assoaciado ao exame |
| 28 | SN_ENTREGA_LAUDO | VARCHAR2 | Y | Indica se o laudo do exame sera entregue no endereco indicado em ENDER_COLETA_ENTREGA.PED_RX |
| 29 | CD_ITPED_RX_INTEGRA | VARCHAR2 | Y | Codigo do item do pedido de imagem (de-para) |
| 30 | CD_ACCESSION_NUMBER_INTEGRA | VARCHAR2 | Y | Coluna que contera o Accession Number recebido pela integrac?o. Esta coluna sera vista pelo PEP p... |
| 31 | SN_LAUDO_RETIFICADO | VARCHAR2 | Y |  |
| 32 | DT_VALIDADE | DATE | Y | Data de validade do Item |
| 33 | SENHA | VARCHAR2 | Y | Senha |
| 34 | DT_SOLICITACAO_GUIA | DATE | Y | Data de solicitação da Guia do Item do pedido de rx. |
| 35 | DT_AUTORIZACAO_GUIA | DATE | Y | Data de autorização da Guia do Item do pedido de rx. |
| 36 | CD_CID | VARCHAR2 | Y | Codigo do CID no Item de Pedido de Exame por imagem. |
| 37 | CD_TOPOGRAFIA | NUMBER | Y | Chave estrangeira da topografia do exame. |
| 38 | CD_LATERALIDADE | NUMBER | Y | Chave estrangeira da Lateralidade do exame. |
| 39 | NR_FRASCO | NUMBER | Y | Quantidade de frascos do exame |

---

## DBAMV.ITPED_RX_EQUIPE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITPED_RX | NUMBER | N |  |
| 2 | CD_PRESTADOR | NUMBER | N |  |
| 3 | CD_ATI_MED | VARCHAR2 | N |  |
| 4 | TP_PAGAMENTO | VARCHAR2 | N |  |

---

## DBAMV.ITPED_RX_KIT
> Kits associados ao exame do pedido

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | QT_KIT | NUMBER | N | Quantidade do kit aplicado ao exame |
| 2 | CD_ITPED_RX | NUMBER | N | Codigo do item do pedido de exame |
| 3 | CD_FORMULA | NUMBER | N | Codigo do kit na tabela FORMULA |
| 4 | CD_EXA_RX | NUMBER | N | Codigo do exame |

---

## DBAMV.ITPED_RX_MICRODATA_SITUACAO
> Tabela para armazenar as situações dos laudos integrados com a microdata

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITPED_RX_MICRODATA_SITUACAO | NUMBER | N |  |
| 2 | CD_ITPED_RX | NUMBER | N | Código que identifica o item do exame no pedido |
| 3 | DS_SITUACAO | VARCHAR2 | Y | Situação do exame |
| 4 | DT_SITUACAO | DATE | Y | Data da situação do exame |
| 5 | SN_PERMITE_EXCLUIR | VARCHAR2 | Y | Permite Excluir |

---

## DBAMV.ITPED_RX_PRODUTO
> Tabela dos produtos consumidos na realizac?o do exame

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITPED_RX_PRODUTO | NUMBER | N | Codigo identificador do registro |
| 2 | QT_PRODUTO | NUMBER | N | Indica a quantidade do produto utilizado no exame |
| 3 | CD_ITPED_RX | NUMBER | N | Codigo o item do pedido de exame |
| 4 | CD_PRODUTO | NUMBER | N | Codigo de identificac?o do produto |

---

## DBAMV.ITPED_USUARIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITPED_RX | NUMBER | N |  |
| 2 | NM_USUARIO | VARCHAR2 | N |  |
| 3 | DATA | DATE | N |  |
| 4 | STATUS | VARCHAR2 | N | P: Exame Solicitado, D: Laudo digitado, I: Laudo impresso, E: Laudo entregue, C: Laudo Cancelado,... |
| 5 | CD_LAUDO | NUMBER | Y |  |
| 6 | SN_NOTIFICAR | VARCHAR2 | N | S = significa que o laudo foi alterada/excluido apos liberac?o/impress?o ou entrega e o paciente ... |
| 7 | CD_DOCUMENTO | NUMBER | Y | Codigo do documento que foi gerado para o laudo (tabela DBAMV.GED_CONTEUDO). |
| 8 | TP_SITUACAO_CONTATO | VARCHAR2 | N | E = Em Contato, P = Pendente (ainda n?o realizou contato), C = Concluido (contato feito, paciente... |
| 9 | CD_VERSAO | NUMBER | Y | Codigo da vers?o do documento que foi gerado/alterado para o laudo (tabela DBAMV.GED_CONTEUDO). |

---

## DBAMV.JUSTIFICATIVA_LIB_ABSURDO
> Justificativas de liberação de resultados absurdos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_JUSTIFICATIVA_LIB_ABSURDO | NUMBER | N | Sequence da tabela. |
| 2 | DS_JUSTIFICATIVA_LIB_ABSURDO | VARCHAR2 | N | Descricao da justificativa de liberação |
| 3 | SN_ATIVO | VARCHAR2 | N | Indica se a justificativa está ativa ou não |

---

## DBAMV.LABORATOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LABORATOR | VARCHAR2 | N | Codigo do fabricante |
| 2 | NM_LABORATOR | VARCHAR2 | N | Descric?o do fabricante |
| 3 | CD_FORNECEDOR | NUMBER | Y |  |
| 4 | TP_ORIGEM | VARCHAR2 | Y | Tipo da Origem do Fornecedor - Nacional ou Importado |
| 5 | DS_PAIS_ORIGEM | VARCHAR2 | Y | Pais de Origem do Fornecedor |
| 6 | CD_LABORATOR_INTEGRA | VARCHAR2 | Y | Codigo do Laboratorio no sistema externo |
| 7 | DT_INTEGRA | DATE | Y | Data em que o registro foi integrado |
| 8 | CD_SEQ_INTEGRA | NUMBER | Y | Codigo do registro na tabela de integrac?o |
| 9 | CD_CORPORATIVO_ME | VARCHAR2 | Y | Codigo corporativo do mercado eletronico |
| 10 | SN_ATIVO | VARCHAR2 | Y | Indica se o Fabricante esta ou não ativo. |
| 11 | DT_ALTERACAO | DATE | Y | Indica em que data o Fabricante foi inativado. |
| 12 | DS_MOTIVO | VARCHAR2 | Y | Indica o motivo no qual o Fabricante foi inativado. |
| 13 | NR_CNPJ | NUMBER | Y | Indica o CNPJ do fabricante. |
| 14 | NR_LABORATOR | NUMBER | Y | Indica o Sequencial do Laboratorio. |

---

## DBAMV.LABORATORIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LABORATORIO | NUMBER | N |  |
| 2 | DS_LABORATORIO | VARCHAR2 | N |  |

---

## DBAMV.LABORATOR_FORNECEDOR
> Tabela que identificara os forneedoes credenciado a marca

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FORNECEDOR | NUMBER | N | Codigo do fornecedor associando a um laboratorio/fabricante |
| 2 | CD_LABORATOR | VARCHAR2 | N | Codigo do laboratorio/fabricante |

---

## DBAMV.LABORATOR_TEMP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LABORATOR | VARCHAR2 | Y |  |
| 2 | NM_LABORATOR | VARCHAR2 | Y |  |
| 3 | CD_FORNECEDOR | NUMBER | Y |  |

---

## DBAMV.LAB_PRO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRODUTO | NUMBER | N |  |
| 2 | CD_LABORATOR | VARCHAR2 | N |  |
| 3 | PC_DESC | NUMBER | Y |  |
| 4 | DT_VALIDADE_REGISTRO | DATE | Y | Informa a data do registro do produto no Org?o Regulador |
| 5 | CD_REGISTRO | VARCHAR2 | Y | Informa o registro do produto no Org?o Regulador |
| 6 | CD_LAB_PRO_INTEGRA | VARCHAR2 | Y | Codigo do fabricante no sistema terceiro |
| 7 | CD_SEQ_INTEGRA | NUMBER | Y | Valor da chave primaria da tabela de integrac?o |
| 8 | DT_INTEGRA | DATE | Y | Data da integrac?o do registro |
| 9 | SN_MERCADO_ELETRONICO | VARCHAR2 | N | Indica se o produto fabricante e usado no mercado eletronico |
| 10 | NR_REGISTRO_FABRICANTE | VARCHAR2 | Y | Coluna que irá irá guardar o registro do produto no Fabricante. |
| 11 | SN_VIGENTE | VARCHAR2 | N | INDICANDO SE O PRODUTO RELACIONADO AO FABRICANTE ESTÁ VIGÊNTE. S =VIGÊNTE/ N= NÃO VIGÊNTE. DEFAUL... |
| 12 | QT_HORAS_ESTABILIDADE | NUMBER | Y | Guarda a quantidade de horas de estabilidade após abertura da embalagem |
| 13 | QT_HORAS_RECONSTITUIDO | NUMBER | Y | Guarda a quantidade de horas de estabilidade após a reconstituição da droga |

---

## DBAMV.LAB_PRO_TEMP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRODUTO | NUMBER | N |  |
| 2 | CD_LABORATOR | VARCHAR2 | N |  |
| 3 | PC_DESC | NUMBER | Y |  |

---

## DBAMV.LATERALIDADE_EXAME
> Cadastron da lateralidade dos exames

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LATERALIDADE | NUMBER | N | Codigo da lateralidade |
| 2 | DS_LATERALIDADE | VARCHAR2 | N | Descrição da lateralidade |
| 3 | SN_ATIVO | VARCHAR2 | N | Ativo ou não |

---

## DBAMV.LAUDO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LAUDO | NUMBER | N |  |
| 2 | NR_LAUDO | VARCHAR2 | N |  |
| 3 | CD_FORNECEDOR | NUMBER | N |  |
| 4 | NR_CGC_CPF | NUMBER | N |  |
| 5 | NM_FORNECEDOR | VARCHAR2 | N |  |
| 6 | NM_FANTASIA | VARCHAR2 | N |  |
| 7 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 8 | DT_INICIO | DATE | N |  |
| 9 | DT_FIM | DATE | N |  |
| 10 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 11 | CD_USUARIO | VARCHAR2 | N |  |
| 12 | SN_REGISTRA_GANHO_PERDA | VARCHAR2 | N | S-REGISTRA, N-NÃO REGISTRA |

---

## DBAMV.LAUDOS_SIH
> Tabela de Laudos do SIH

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LAUDOS_SIH | NUMBER | N | Codigo do Laudo SIH |
| 2 | CD_ATENDIMENTO | NUMBER | N | Codigo do Atendimento |
| 3 | CD_REG_FAT | NUMBER | N | Codigo da Conta Hospitalar |
| 4 | NR_LAUDO | VARCHAR2 | Y | Numero do Laudo |
| 5 | NR_LAUDO_ALT_CUS | VARCHAR2 | Y | Numero do Laudo de Alto Custo |
| 6 | TP_LAUDO | VARCHAR2 | N | Tipo do Laudo |
| 7 | TP_MOTIVO_LAUDO | VARCHAR2 | Y | Tipo do Motivo do Laudo |
| 8 | CD_GRU_LAUDO | NUMBER | Y | Codigo do Grupo de Laudos |
| 9 | CD_PRO_FAT | VARCHAR2 | Y | Codigo do Procedimento SUS |
| 10 | CD_PRO_FAT_ANT | VARCHAR2 | Y | Codigo do Procedimento SUS Anterior |
| 11 | DS_JUSTIFICATIVA | VARCHAR2 | Y | Descricao da Justificativa do Laudo |
| 12 | NR_GUIA | VARCHAR2 | Y | Numero da Guia (AIH) |
| 13 | NR_IDENTIFICACAO | VARCHAR2 | Y | Numero da Identificacao da Guia (AIH) |
| 14 | DT_LAUDO | DATE | N | Data do Laudo |
| 15 | SN_IMPRESSO | VARCHAR2 | N | Identifica se Laudo foi impresso ou nao |
| 16 | SN_EXPORTADO | VARCHAR2 | N | Identiica se Laudo foi exportado ou nao |
| 17 | CD_IDENT_PRAZO | NUMBER | Y | Codigo da Identificacao no Prazo |
| 18 | DT_COMPETENCIA | DATE | Y | Data da competencia do laudo |
| 19 | SIT_GUIA | VARCHAR2 | Y | Situacao do laudo |
| 20 | DT_ATU_CANCELA | DATE | Y | Data do cancelamento do laudo |
| 21 | CD_MOT_CANCELA | NUMBER | Y | Codigo do Motivo do cancelamento |
| 22 | CD_PRESTADOR_CANCELA | VARCHAR2 | Y | Codigo do Prestador do cancelamento |
| 23 | DT_CANCELA | DATE | Y | Data do cancelamento |
| 24 | TP_CATG_PRE_CANCELA | NUMBER | Y | Tipo da Categoria do prestador do cancelamento |
| 25 | NUM_CATG_PRE_CANCELA | VARCHAR2 | Y | Numero da Categoria do prestador do cancelamento |
| 26 | NUM_LAUDO_SUPL_PRE | NUMBER | Y | Numero do laudo Suplementar do Prestador |
| 27 | CD_PROCEDIMENTO | VARCHAR2 | Y | Codigo do Procedimento SUS - PT 321 |
| 28 | CD_PROCEDIMENTO_ANT | VARCHAR2 | Y | Codigo do Procedimento SUS Anterior - PT 321 |
| 29 | DS_SITU_LAUDO_SUPLEMENTAR | VARCHAR2 | Y | Situação do laudo suplementar, se houver. |
| 30 | NR_LOTE | NUMBER | Y | Número do lote |
| 31 | NM_PACIENTE | VARCHAR2 | Y | Nome do paciente |
| 32 | NM_USUARIO | VARCHAR2 | Y | Nome do usuario que fechou laudo suplementar |
| 33 | NR_LOTE_IMPORTACAO | NUMBER | Y | Número do lote que consta no arquivo de autorizacao |
| 34 | DT_STATUS | DATE | Y | Data e hora do status |
| 35 | NM_ARQUIVO_STATUS | VARCHAR2 | Y | Nome do arquivo onde o laudo foi exportado ou autorizado |
| 36 | TP_STATUS | VARCHAR2 | Y | Status do laudo: R-RECEBIDO, D-DIGITADO, E-ENVIADO, A-APROVADO |

---

## DBAMV.LAUDO_AIH
> Tabela de Laudos de AIH.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ATENDIMENTO | NUMBER | Y | Codigo do Atendimento. |
| 2 | DT_EMISSAO | DATE | N | Data de Emiss?o do Laudo. |
| 3 | CD_PRESTADOR_SOL | NUMBER | N | Codigo do Prestador Solicitante. |
| 4 | CD_PRESTADOR | NUMBER | Y | Codigo do Prestador. |
| 5 | DS_SINAIS_SINT_CLINICOS | VARCHAR2 | Y | Descric?o dos Sinais e Sintomas Criticos. |
| 6 | DS_COND_JUST_INTERNACAO | VARCHAR2 | Y | Descric?o da Justificativa de Internac?o. |
| 7 | DS_RESULT_PROV_DIAG | VARCHAR2 | Y | Descric?o do provavel Diagnostico. |
| 8 | DS_DIAGNOSTICO | VARCHAR2 | Y | Descric?o do Diagnostico. |
| 9 | CD_CARATER_INTERNACAO | NUMBER | Y | Codigo do carater de Internac?o. |
| 10 | CD_PRO_FAT | VARCHAR2 | N | Codigo do Procedimento de Faturamento |
| 11 | CD_CID_PRINCIPAL | VARCHAR2 | Y | Armazena o CID principal a ser emitido no laudo AIH |
| 12 | CD_CID_SECUNDARIO | VARCHAR2 | Y | Armazena o CID secundario a ser emitido no laudo AIH |
| 13 | CD_CARATER_ATENDIMENTO | NUMBER | Y | Carater atendimento criado na PT321 que subistiui o carater de interncao |
| 14 | CD_ESPEC_SUS | VARCHAR2 | Y | Codigo da especialidade |
| 15 | CD_PROCEDIMENTO | VARCHAR2 | Y | Codigo do procedimento, portaria 321. |
| 16 | CD_ESTABELECIMENTO | NUMBER | Y | Codigo do Estabelecimento solicitante. |
| 17 | CD_LAUDO_AIH_INTEGRA | VARCHAR2 | Y | Codigo sequencial do laudo (de-para) |
| 18 | CD_SEQ_INTEGRA | NUMBER | Y | Codigo sequencial da integrac?o |
| 19 | DT_INTEGRA | DATE | Y | Data da integrac?o |
| 20 | SN_IMPRESSO | VARCHAR2 | N | Data da impress?o do laudo. |
| 21 | DT_IMPRESSAO | DATE | Y |  |
| 22 | CD_CID_CAUSAS_ASSOCIADAS | VARCHAR2 | Y | CID-10 de Causas Associadas, ou seja, o(s) que corresponde(m) ao(s) de outra(s) doencas concomita... |
| 23 | CD_LAUDO | NUMBER | N | Codigo do Laudo |
| 24 | CD_PACIENTE | NUMBER | Y | Código do paciente do laudo. |
| 25 | NR_AIH | NUMBER | Y | Número da AIH. |
| 26 | DT_SETOR | DATE | Y | Data do setor. |
| 27 | DT_SECRETARIA | DATE | Y | Data da secretaria. |
| 28 | DT_ENVIO | DATE | Y | Data do envio do laudo. |
| 29 | TP_SITUACAO | VARCHAR2 | Y | Situação do laudo. |
| 30 | NR_PEDIDO_LAUDO | NUMBER | Y | Número do pedido de laudo usado pelo sist SA04Z de BH. |
| 31 | NR_LAUDO | NUMBER | Y | Número do laudo usado pelo sist SA04Z de BH. |

---

## DBAMV.LAUDO_AIH_ESPECIAL
> Armazena informac?es de Laudo de AIH Especial

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LAUDO | NUMBER | N | Codigo do Laudo |
| 2 | CD_PROCEDIMENTO_ANTERIOR | VARCHAR2 | Y | Codigo do Procedimento solicitado anterior |
| 3 | CD_PROCEDIMENTO_MUDANCA | VARCHAR2 | Y | Codigo do Procedimento alterado |
| 4 | CD_PRESTADOR_SOL | NUMBER | Y | Código do Prestador Solicitante. |
| 5 | DS_JUSTIFICATIVA | VARCHAR2 | Y | Justificativa da mudança de procedimento e/ou solicitação de procedimento especial. |
| 6 | CD_CID_PRINCIPAL_MUDANCA | VARCHAR2 | Y | CID principal da mudança de procedimento e/ou de procedimento especial. |
| 7 | CD_CID_SECUNDARIO_MUDANCA | VARCHAR2 | Y | CID secundario da mudança de procedimento e/ou de procedimento especial. |
| 8 | CD_CID_ASSOCIADAS_MUDANCA | VARCHAR2 | Y | CID causas associadas da mudança de procedimento e/ou de procedimento especial. |

---

## DBAMV.LAUDO_APAC
> Tabela de Laudos APAC

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LAUDO | NUMBER | N |  |
| 2 | DT_LAUDO | DATE | N |  |
| 3 | CD_TIP_ATE | NUMBER | N |  |
| 4 | NR_APAC | NUMBER | Y |  |
| 5 | CD_PACIENTE | NUMBER | N |  |
| 6 | CD_PRESTADOR | NUMBER | N |  |
| 7 | CD_CONVENIO | NUMBER | Y |  |
| 8 | CD_SSM_PRINCIPAL | VARCHAR2 | Y |  |
| 9 | CD_SSM_SECUNDARIO1 | VARCHAR2 | Y |  |
| 10 | CD_SSM_SECUNDARIO2 | VARCHAR2 | Y |  |
| 11 | CD_SSM_SECUNDARIO3 | VARCHAR2 | Y |  |
| 12 | CD_SSM_SECUNDARIO4 | VARCHAR2 | Y |  |
| 13 | CD_SSM_SECUNDARIO5 | VARCHAR2 | Y |  |
| 14 | CD_SSM_SECUNDARIO6 | VARCHAR2 | Y |  |
| 15 | CD_CID | VARCHAR2 | Y |  |
| 16 | CD_CID_M | VARCHAR2 | Y |  |
| 17 | DS_JUSTIFICA_SSM | VARCHAR2 | Y |  |
| 18 | DS_EXA_RESUMO | VARCHAR2 | Y |  |
| 19 | DS_EXA_REALIZADO | VARCHAR2 | Y |  |
| 20 | DS_RESULTADO_DIAG | VARCHAR2 | Y |  |
| 21 | DS_DIAG_CITO | VARCHAR2 | Y |  |
| 22 | DS_TUMOR_LOC | VARCHAR2 | Y |  |
| 23 | SN_LINFONODOS | VARCHAR2 | Y |  |
| 24 | DS_METASTESE | VARCHAR2 | Y |  |
| 25 | SN_ESTADIO | VARCHAR2 | Y |  |
| 26 | SN_OPCAO | VARCHAR2 | Y |  |
| 27 | DS_GRAU | VARCHAR2 | Y |  |
| 28 | DT_DIAG_CITO | DATE | Y |  |
| 29 | SN_TRAT_ANT | VARCHAR2 | Y |  |
| 30 | DS_TRAT_ANT | VARCHAR2 | Y |  |
| 31 | DT_INICIO_TRAT_ANT1 | DATE | Y |  |
| 32 | DT_INICIO_TRAT_ANT2 | DATE | Y |  |
| 33 | DT_INICIO_TRAT_ANT3 | DATE | Y |  |
| 34 | SN_CONTINUIDADE | VARCHAR2 | Y |  |
| 35 | SN_TIPO | VARCHAR2 | Y |  |
| 36 | SN_ASSOCIACAO | VARCHAR2 | Y |  |
| 37 | SN_FINALIDADE | VARCHAR2 | Y |  |
| 38 | DT_INICIO_TRAT_AUT | DATE | Y |  |
| 39 | SN_VIA | VARCHAR2 | Y |  |
| 40 | DT_TRANSPLANTE1 | DATE | Y |  |
| 41 | DT_TRANSPLANTE2 | DATE | Y |  |
| 42 | DT_TRANSPLANTE3 | DATE | Y |  |
| 43 | DS_SINAIS | VARCHAR2 | Y |  |
| 44 | SN_MOD_INDICADA | VARCHAR2 | Y |  |
| 45 | SN_REL_TRABALHO | VARCHAR2 | Y |  |
| 46 | DS_CLA_ATIV | VARCHAR2 | Y |  |
| 47 | DS_CLA_CBO | VARCHAR2 | Y |  |
| 48 | DS_OBS | VARCHAR2 | Y |  |
| 49 | CD_CID_TOP1 | VARCHAR2 | Y |  |
| 50 | CD_CID_TOP2 | VARCHAR2 | Y |  |
| 51 | CD_CID_TOP3 | VARCHAR2 | Y |  |
| 52 | DS_APARELHO | VARCHAR2 | Y |  |
| 53 | NR_DOSE_AREA | NUMBER | Y |  |
| 54 | NR_CAMPOS | NUMBER | Y |  |
| 55 | NR_TOTAL_AREA | NUMBER | Y |  |
| 56 | NR_CHECK | NUMBER | Y |  |
| 57 | NR_INSERCAO | NUMBER | Y |  |
| 58 | DT_INICIO_IRRADIADA | DATE | Y |  |
| 59 | DT_FINAL_IRRADIADA | DATE | Y |  |
| 60 | SN_MASCARA | VARCHAR2 | Y |  |
| 61 | NR_BLOCO_PERS | NUMBER | Y |  |
| 62 | NR_CAMPO_PREV | NUMBER | Y |  |
| 63 | NR_CAMPO_PAGO | NUMBER | Y |  |
| 64 | DS_ESQUEMA | VARCHAR2 | Y |  |
| 65 | NR_MESES | NUMBER | Y |  |
| 66 | NR_MESES_AUT | NUMBER | Y |  |
| 67 | TP_LAUDO | VARCHAR2 | N |  |
| 68 | NR_APAC_RENOVACAO | NUMBER | Y |  |
| 69 | DS_SISTEMA | VARCHAR2 | Y |  |
| 70 | SN_INTRA_VENOSA | VARCHAR2 | N |  |
| 71 | SN_SUBCUTANEA | VARCHAR2 | N |  |
| 72 | SN_INTRA_MUSCULAR | VARCHAR2 | N |  |
| 73 | SN_VIA_ORAL | VARCHAR2 | N |  |
| 74 | SN_INTRA_TECAL | VARCHAR2 | N |  |
| 75 | SN_INTRA_VESICAL | VARCHAR2 | N |  |
| 76 | DS_LINFONODOS | VARCHAR2 | Y |  |
| 77 | DT_EMISSAO_LAUDO | DATE | Y |  |
| 78 | CD_CLASSIFICACAO_TU | VARCHAR2 | Y |  |
| 79 | DT_INICIO_TRAT_SOL | DATE | Y |  |
| 80 | DT_CONSULTA | DATE | Y |  |
| 81 | NR_CALCULOS_LITOTRIPSIA | NUMBER | Y | Numero de Calculo Renais |
| 82 | SN_OPACO | VARCHAR2 | N | Informar se o Calculo Renal e Opaco ou N?o |
| 83 | SN_TRANSPARENTE | VARCHAR2 | N | Informar se o calculo Renal e Transparente ou N?o |
| 84 | SN_RADIOGRAFIA | VARCHAR2 | N | Informar se Existiu Radiografia ou n?o para o Calculo Renal |
| 85 | SN_UROGRAFIA_EXCRETORA | VARCHAR2 | N | Informar se Existiu o Exame de Urografia-Excretora ou N?o |
| 86 | SN_ULTRASONOGRAFIA | VARCHAR2 | N | Informar se Existiu o Exame de Ultra-sonogrfia ou N?o |
| 87 | SN_CATETER_DUPLO_J | VARCHAR2 | N | Informar se foi Necessario o Implante do Cateter Duplo J ou N?o |
| 88 | SN_NECES_TRAT_SUB | VARCHAR2 | N | Informar se foi necessario um Tratamento Subsequente para o Paciente ou N?o |
| 89 | DS_CATETER_DUPLO_J | VARCHAR2 | Y | Texto para justificativa do uso do Cateter Duplo J para o Paciente |
| 90 | DS_NECES_TRAT_SUB | VARCHAR2 | Y | Texto para justificativa do uso do Tratamento Subsequente para o Paciente |
| 91 | NR_APAC_SECUNDARIA1 | NUMBER | Y | Armazena o numero da primeira APAC de Reabilitac?o fisica. |
| 92 | NR_APAC_SECUNDARIA2 | NUMBER | Y | Armazena o numero da segunda APAC de Reabilitac?o fisica. |
| 93 | NR_APAC_SECUNDARIA3 | NUMBER | Y | Armazena o numero da terceira APAC de Reabilitac?o fisica. |
| 94 | NR_APAC_SECUNDARIA4 | NUMBER | Y | Armazena o numero da quarta APAC de Reabilitac?o fisica. |
| 95 | SN_PRE_OPERATORIO | VARCHAR2 | N | Habilita a configurac?o para associac?o Pre-Operatorio |
| 96 | SN_POS_OPERATORIO | VARCHAR2 | N | Habilita a configurac?o para associac?o Pos-Operatorio |
| 97 | SN_PER_OPERATORIO | VARCHAR2 | N | Habilita a configurac?o para associac?o Per-Operatorio |
| 98 | SN_PRE_RT_INTERNA | VARCHAR2 | N | Habilita a configurac?o para associac?o Pre-RT-Interna |
| 99 | SN_POS_RT_INTERNA | VARCHAR2 | N | Habilita a configurac?o para associac?o Pos-RT-Interna |
| 100 | SN_PRE_QT | VARCHAR2 | N | Habilita a configurac?o para associac?o Pre-QT |
| 101 | SN_POS_QT | VARCHAR2 | N | Habilita a configurac?o para associac?o Pos-QT |
| 102 | SN_PER_QT | VARCHAR2 | N | Habilita a configurac?o para associac?o Per-QT |
| 103 | SN_EXCLUSIVA | VARCHAR2 | N | Habilita a configurac?o para associac?o Exclusiva |
| 104 | CD_GRAU_HISTOPATOLOGICO | VARCHAR2 | Y | Codigo identificador do grau histopatologico |
| 105 | CD_APARELHO_ONCOLOGIA | VARCHAR2 | Y | Codigo identificador do tipo de aparelho utilizado durante tratamento na oncologia |
| 106 | SN_PLANEJAMENTO | VARCHAR2 | Y | Flag identificador de planejamento com simulador |
| 107 | CD_REGIAO_ANATOMICA | NUMBER | Y | Codigo da regiao anatomica |
| 108 | NR_PESO_PACIENTE | NUMBER | Y |  |
| 109 | NR_ALTURA_PACIENTE | NUMBER | Y |  |
| 110 | SN_TRANSPLANTADO | VARCHAR2 | Y |  |
| 111 | QT_TRANSPLANTE | NUMBER | Y |  |
| 112 | SN_GESTANTE | VARCHAR2 | Y |  |
| 113 | SN_EXTERNA_RT | VARCHAR2 | N | Tipo de ratioterapia externa. |
| 114 | SN_INTRA_CAVITARIA_RT | VARCHAR2 | N | Tipo de radioterapia intra-cavitaria. |
| 115 | SN_INTERSTICIAL_RT | VARCHAR2 | N | Tipo de radioterapia intersticial. |
| 116 | SN_BRAQUITERAPIA_RT | VARCHAR2 | N | Tipo de radioterapia braquiterapia. |
| 117 | DT_INICIO_VALIDADE_APAC | DATE | Y | Data de inicio de validade da APAC. |
| 118 | DT_FINAL_VALIDADE_APAC | DATE | Y | Data de termino de validade da APAC. |

---

## DBAMV.LAUDO_APAC_AUDIOLOGIA
> Laudo APAC Audiologia

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LAUDO | NUMBER | N | Codigo do laudo |
| 2 | CD_CID_CAUSA_BASICA | VARCHAR2 | Y | CID Causa basica |
| 3 | CD_CID_CAUSA_ASSOCIADA | VARCHAR2 | Y | CID Causa Associada |
| 4 | SN_DIFICULDADE_AUDITIVA | VARCHAR2 | N | Sinais e Sintomas Clinicos - Dificuldade Auditiva |
| 5 | SN_OUVIDO_DIREITO | VARCHAR2 | N | Sinais e Sintomas Clinicos - Ouvido Direito |
| 6 | SN_OUVIDO_ESQUERDO | VARCHAR2 | N | Sinais e Sintomas Clinicos - Ouvido Esquerdo |
| 7 | SN_FLUTUANTE | VARCHAR2 | N | Sinais e Sintomas Clinicos - Flutuante |
| 8 | SN_ESTAVEL | VARCHAR2 | N | Sinais e Sintomas Clinicos - Estavel |
| 9 | SN_PROGRESSIVA | VARCHAR2 | N | Sinais e Sintomas Clinicos - Progressiva |
| 10 | SN_ZUMBIDO | VARCHAR2 | N | Sinais e Sintomas Clinicos - Zumbido |
| 11 | SN_TONTURA | VARCHAR2 | N | Sinais e Sintomas Clinicos - Tontura |
| 12 | SN_DESCONHECIDA | VARCHAR2 | N | Provavel Etiologia - Desconhecida |
| 13 | SN_GENETICA | VARCHAR2 | N | Provavel Etiologia - Genetica |
| 14 | SN_SURDEZ_SUBITA | VARCHAR2 | N | Provavel Etiologia - Surdez Subita |
| 15 | SN_MALFORMACAO_CONGENITA | VARCHAR2 | N | Provavel Etiologia - Malformac?o Congenita |
| 16 | SN_PRESBICUSIA | VARCHAR2 | N | Provavel Etiologia - Presbicusia |
| 17 | SN_OTITE_MEDIA_CRONICA | VARCHAR2 | N | Provavel Etiologia - Otite Media Cronica |
| 18 | SN_POS_OPERATORIO | VARCHAR2 | N | Provavel Etiologia - Pos Operatorio |
| 19 | SN_TCE | VARCHAR2 | N | Provavel Etiologia - TCE |
| 20 | SN_IDIOPATICA | VARCHAR2 | N | Provavel Etiologia - Idiopatica |
| 21 | SN_OTO_TOXICO | VARCHAR2 | N | Provavel Etiologia - Oto Toxicos |
| 22 | SN_FRATURA_OSSO_TEMPORAL | VARCHAR2 | N | Provavel Etiologia - Fratura do Osso Temporal |
| 23 | SN_ANOXIA | VARCHAR2 | N | Provavel Etiologia - Causas Perinatais - Anoxia |
| 24 | SN_BAIXO_PESO | VARCHAR2 | N | Provavel Etiologia - Causas Perinatais - Baixo Peso |
| 25 | SN_TRAB_PARTO_PROLONGADO | VARCHAR2 | N | Provavel Etiologia - Causas Perinatais - Trabalho de Parto Prolongado |
| 26 | SN_PREMATURIDADE | VARCHAR2 | N | Provavel Etiologia - Causas Perinatais - Prematuridade |
| 27 | SN_HIPERBILIRRUBINEMIA | VARCHAR2 | N | Provavel Etiologia - Causas Perinatais - Hiperbilirrubinemia |
| 28 | SN_MENINGITE | VARCHAR2 | N | Provavel Etiologia - Doencas Infecciosas - Meningite |
| 29 | SN_SARAMPO | VARCHAR2 | N | Provavel Etiologia - Doencas Infecciosas - Sarampo |
| 30 | SN_TOXOPLASMOSE | VARCHAR2 | N | Provavel Etiologia -  Doencas Infecciosas - Toxoplasmose |
| 31 | SN_CAXUMBA | VARCHAR2 | N | Provavel Etiologia - Doencas Infecciosas - Caxumba |
| 32 | SN_RUBEOLA_CONGENITA | VARCHAR2 | N | Provavel Etiologia - Doencas Infecciosas - Rubeola Congenita |
| 33 | SN_OUTRAS_DOENCAS_INFEC | VARCHAR2 | N | Provavel Etiologia - Doencas Infecciosas - Outras Doencas Infeciosas |
| 34 | SN_MOTIVO_ROUBO | VARCHAR2 | N | Motivo de reposic?o da AASI - Roubo |
| 35 | SN_MOTIVO_PERDA_AUDITIVA | VARCHAR2 | N | Motivo de reposic?o da AASI - Perda Auditiva Progressiva |
| 36 | SN_MOTIVO_FALHA | VARCHAR2 | N | Motivo de reposic?o da AASI - Falha tecnica do AASI |
| 37 | SN_TP_PERDA_NEUROSSENSORIAL_OE | VARCHAR2 | N | Caracterizac?o de perda do tipo neurossensorial do olho esquerdo |
| 38 | SN_TP_PERDA_NEUROSSENSORIAL_OD | VARCHAR2 | N | Caracterizac?o de perda do tipo neurossensorial do olho direito |
| 39 | SN_TP_PERDA_CONDUTIVA_OE | VARCHAR2 | N | Caracterizac?o de perda do tipo condutiva do olho esquerdo |
| 40 | SN_TP_PERDA_CONDUTIVA_OD | VARCHAR2 | N | Caracterizac?o de perda do tipo condutiva do olho direito |
| 41 | SN_TP_PERDA_MISTA_OE | VARCHAR2 | N | Caracterizac?o de perda do tipo mista do olho esquerdo |
| 42 | SN_TP_PERDA_MISTA_OD | VARCHAR2 | N | Caracterizac?o de perda do tipo mista do olho direito |
| 43 | SN_TP_PERDA_CENTRAL_OE | VARCHAR2 | N | Caracterizac?o de perda do tipo central do olho esquerdo |
| 44 | SN_TP_PERDA_CENTRAL_OD | VARCHAR2 | N | Caracterizac?o de perda do tipo central do olho direito |
| 45 | SN_GRAU_PERDA_NORMAL_OE | VARCHAR2 | N | Caracterizac?o de perda de grau normal do olho esquerdo |
| 46 | SN_GRAU_PERDA_NORMAL_OD | VARCHAR2 | N | Caracterizac?o de perda de grau normal do olho direito |
| 47 | SN_GRAU_PERDA_LEVE_OE | VARCHAR2 | N | Caracterizac?o de perda de grau leve do olho esquerdo |
| 48 | SN_GRAU_PERDA_LEVE_OD | VARCHAR2 | N | Caracterizac?o de perda de grau leve do olho direito |
| 49 | SN_GRAU_PERDA_MODERADO_OE | VARCHAR2 | N | Caracterizac?o de perda de grau moderado do olho esquerdo |
| 50 | SN_GRAU_PERDA_MODERADO_OD | VARCHAR2 | N | Caracterizac?o de perda de grau moderado do olho direito |
| 51 | SN_GRAU_PERDA_SEVERO_OE | VARCHAR2 | N | Caracterizac?o de perda de grau severo do olho esquerdo |
| 52 | SN_GRAU_PERDA_SEVERO_OD | VARCHAR2 | N | Caracterizac?o de perda de grau severo do olho direito |
| 53 | SN_GRAU_PERDA_PROFUNDO_OE | VARCHAR2 | N | Caracterizac?o de perda de grau profundo do olho esquerdo |
| 54 | SN_GRAU_PERDA_PROFUNDO_OD | VARCHAR2 | N | Caracterizac?o de perda de grau profundo do olho direito |
| 55 | SN_TP_PROTESE_RETROAURICULA_OE | VARCHAR2 | N | Protese auditiva do tipo retro auricular do olho esquerdo |
| 56 | SN_TP_PROTESE_RETROAURICULA_OD | VARCHAR2 | N | Protese auditiva do tipo retro auricular do olho direito |
| 57 | SN_TP_PROTESE_INTRAAURICULA_OE | VARCHAR2 | N | Protese auditiva do tipo intra auricular do olho esquerdo |
| 58 | SN_TP_PROTESE_INTRAAURICULA_OD | VARCHAR2 | N | Protese auditiva do tipo intra auricular do olho direito |
| 59 | SN_TP_PROTESE_MICROCANAL_OE | VARCHAR2 | N | Protese auditiva do tipo microcanal do olho esquerdo |
| 60 | SN_TP_PROTESE_MICROCANAL_OD | VARCHAR2 | N | Protese auditiva do tipo microcanal do olho direito |
| 61 | SN_TP_PROTESE_INTRACANAL_OE | VARCHAR2 | N | Protese auditiva do tipo intra canal do olho esquerdo |
| 62 | SN_TP_PROTESE_INTRACANAL_OD | VARCHAR2 | N | Protese auditiva do intra canal do olho direito |
| 63 | SN_TECNO_PROTESE_TIPO_A_OE | VARCHAR2 | N | Protese auditiva tecnologia do tipo A do olho esquerdo |
| 64 | SN_TECNO_PROTESE_TIPO_A_OD | VARCHAR2 | N | Protese auditiva tecnologia tipo A do olho direito |
| 65 | SN_TECNO_PROTESE_TIPO_B_OE | VARCHAR2 | N | Protese auditiva tecnologia tipo B do olho esquerdo |
| 66 | SN_TECNO_PROTESE_TIPO_B_OD | VARCHAR2 | N | Protese auditiva tecnologia tipo B do olho direito |
| 67 | SN_TECNO_PROTESE_TIPO_C_OE | VARCHAR2 | N | Protese auditiva tecnologia tipo C do olho esquerdo |
| 68 | SN_TECNO_PROTESE_TIPO_C_OD | VARCHAR2 | N | Protese auditiva tecnologia tipo C do olho direito |
| 69 | SN_TECNO_PROTESE_VIAOSSEA_OE | VARCHAR2 | N | Protese auditiva tecnologia do tipo via ossea do olho esquerdo |
| 70 | SN_TECNO_PROTESE_VIAOSSEA_OD | VARCHAR2 | N | Protese auditiva tecnologia do tipo via ossea do olho direito |

---

## DBAMV.LAUDO_APAC_ESQUEMA
> Drogras utilizadas em cada laudo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LAUDO | NUMBER | N | Codigo do laudo APAC |
| 2 | CD_ESQUEMA | NUMBER | N | Codigo da droga utilizada |

---

## DBAMV.LAUDO_APAC_MEDICAMENTO
> Laudo APAC de Medicamentos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LAUDO | NUMBER | N | Codigo do laudo |
| 2 | CD_SSM | VARCHAR2 | N | Medicamento solicitado |
| 3 | CD_CID_PRINCIPAL | VARCHAR2 | Y | CID-10 que autoriza a dispensac?o do medicamento |
| 4 | CD_CID_SECUNDARIO | VARCHAR2 | Y | CID-10 que complementa a informac?o do quadro clinico |
| 5 | QT_MES_1 | NUMBER | Y | Quantidade do medicamento a ser administrado no primeiro mes |
| 6 | QT_MES_2 | NUMBER | Y | Quantidade do medicamento a ser administrado no segundo mes |
| 7 | QT_MES_3 | NUMBER | Y | Quantidade do medicamento a ser administrado no terceiro mes |

---

## DBAMV.LAUDO_APAC_METASTASE
> Localizac?o de metastase de cada laudo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LAUDO | NUMBER | N | Codigo do laudo APAC |
| 2 | CD_METASTASE | NUMBER | N | Codigo do localizac?o da metastase |

---

## DBAMV.LAUDO_APAC_ODONTOLOGIA
> Laudo APAC de Odontologia

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LAUDO | NUMBER | N | Codigo do laudo |
| 2 | SN_ANOMALIA_CRANIO_FACIAL | VARCHAR2 | N | Anomalia Cranio facial |
| 3 | DS_ANOMALIA | VARCHAR2 | Y | Descricao da Anomalia |
| 4 | SN_MORDIDA_CRUZADA_TOTAL | VARCHAR2 | N | Area Ortodontica - Mordida Cruzada Total |
| 5 | SN_MORDIDA_CRUZADA_ANTERIOR | VARCHAR2 | N | Area Ortodontica - Mordida Cruzada Anterior |
| 6 | SN_MORDIDA_CRUZADA_UNILATERAL | VARCHAR2 | N | Area Ortodontica - Mordida Cruzada Unilateral |
| 7 | SN_MORDIDA_CRUZADA_BILATERAL | VARCHAR2 | N | Area Ortodontica - Mordida Cruzada Bilateral |
| 8 | SN_DESARMONIA_MAXILO_MANDIBULA | VARCHAR2 | N | Desarmonia Maxilo-Mandibular |
| 9 | SN_INST_AP_ORTODONT_FIXO | VARCHAR2 | N | Instalacao de aparelho ortodontico fixo |
| 10 | SN_INST_AP_ORTODONT_MOVEL | VARCHAR2 | N | Instalacao de aparelho ortodontico movel |
| 11 | SN_MANUTENCAO_AP_ORTODONTICO | VARCHAR2 | N | Manutenc?o de aparelho ortodontico |
| 12 | SN_TROCA_AP_ORTODONTICO | VARCHAR2 | N | Troca de aparelho ortodontico |
| 13 | DS_JUST_TROCA_APARELHO | VARCHAR2 | Y | Justificativa da troca do aparelho ortodontico |
| 14 | SN_DENTE_INCLUSO | VARCHAR2 | N | Area Cirurgica - Dente incluso |
| 15 | SN_DENTE_IMPACTADO | VARCHAR2 | N | Area Cirurgica - Dente impactado |
| 16 | DS_ESPECIFICACAO_DENTES | VARCHAR2 | Y | Especificacao dos dentes envolvidos |
| 17 | SN_REMOCAO_CIRURGICA | VARCHAR2 | N | Indicacao de tratamento - Remocao cirurgica |
| 18 | SN_COM_OSTEOTOMIA | VARCHAR2 | N | Remocao com osteotomia |
| 19 | SN_SEM_OSTEOTOMIA | VARCHAR2 | N | Remocao sem osteotomia |
| 20 | SN_AIO_DESDENTADO_TOTAL | VARCHAR2 | N | Area de Implante Osteointegrado - Desdentado total |
| 21 | SN_AIO_DESDENTADO_PARCIAL | VARCHAR2 | N | Area de Implante Osteointegrado - Desdentado parcial |
| 22 | SN_IMPLANTE_METALICO | VARCHAR2 | N | Indicacao de tratamento - Implamte metalico |
| 23 | SN_UMA_UNIDADE | VARCHAR2 | N | Implante metalico  com uma unidade |
| 24 | SN_DUAS_UNIDADES | VARCHAR2 | N | Implante metalico  com duas unidades |
| 25 | SN_TRES_UNIDADES | VARCHAR2 | N | Implante metalico  com tres unidades |
| 26 | SN_QUATRO_A_SEIS_UNIDADES | VARCHAR2 | N | Implante metalico  de quatro a seis unidades |
| 27 | SN_SETE_OU_MAIS_UNIDADES | VARCHAR2 | N | Implante metalico  com sete ou mais unidades |
| 28 | SN_ATP_DESDENTADO_TOTAL | VARCHAR2 | N | Area de Tratamento Protetico - Desdentado Total |
| 29 | SN_ATP_DESDENTATO_PARCIAL | VARCHAR2 | N | Area de Tratamento Protetico - Desdentado Parcial |
| 30 | SN_ARCADA_SUPERIOR | VARCHAR2 | N | Indicacao de tratamento - Arcada superior |
| 31 | SN_ARCADA_INFERIOR | VARCHAR2 | N | Indicacao de tratamento - Arcada inferior |
| 32 | SN_PROTESE_TOTAL | VARCHAR2 | N | Indicacao de tratamento - Protese total |
| 33 | SN_PROTESE_PARCIAL_REMOVIVEL | VARCHAR2 | N | Indicacao de tratamento - Protese parcial removivel |
| 34 | SN_PROTESE_FIXA | VARCHAR2 | N | Indicacao de tratamento - Protese fixa |
| 35 | DS_JUST_PROTESE_FIXA | VARCHAR2 | Y | Justificativa da protese fixa |

---

## DBAMV.LAUDO_APAC_QUIMIO_MEDICAMENTOS
> Relação de medicamentos por laudo apac

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LAUDO | NUMBER | N |  |
| 2 | CD_MEDICAMENTO | NUMBER | N | Código do medicamento |

---

## DBAMV.LAUDO_APAC_TRATAMENTO
> Tratamentos realizados de cada laudo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LAUDO | NUMBER | N | Codigo do laudo APAC |
| 2 | CD_TRATAMENTO_REALIZADO | VARCHAR2 | N | Codigo do Tratamento realizado |
| 3 | DT_TRATAMENTO_ANTERIORES | DATE | N | Armazena datas de tratamentos anteriores. |

---

## DBAMV.LAUDO_APAC_VIA
> Vias de tratamento em cada laudo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LAUDO | NUMBER | N | Codigo do laudo APAC |
| 2 | CD_VIA_TRATAMENTO | VARCHAR2 | N | Codigo da via de tratamento utilizada |

---

## DBAMV.LAUDO_AREA_IRRADIADA
> Tabela de relacionamento de Laudos APAC X Areas Irradiadas

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LAUDO_AREA_IRRADIADA | NUMBER | N |  |
| 2 | CD_LAUDO | NUMBER | Y | Codido do laudo apac |
| 3 | CD_CID_TOP1 | VARCHAR2 | Y | Codido do CID Topografico 1 |
| 4 | CD_CID_TOP2 | VARCHAR2 | Y | Codido do CID Topografico 2 |
| 5 | CD_CID_TOP3 | VARCHAR2 | Y | Codido do CID Topografico 3 |
| 6 | CD_AREA_IRRADIADA | NUMBER | Y | Codigo da Area Irradiada |

---

## DBAMV.LAUDO_ARQ

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LAUDO | NUMBER | N |  |
| 2 | NR_LINHA | NUMBER | N |  |
| 3 | DS_LINHA | VARCHAR2 | Y |  |

---

## DBAMV.LAUDO_BPAI
> Tabela de Laudo BPAI SIA/SUS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LAUDO | NUMBER | N | Codigo sequencial do laudo |
| 2 | DT_COMPETENCIA | DATE | N | Mes e Ano que o laudo foi cadastrado. |
| 3 | TP_LAUDO | VARCHAR2 | N | Identificador para o laudo ( N-ovo). |
| 4 | CD_ATENDIMENTO | NUMBER | Y | Codigo de atendimento do paciente. |
| 5 | CD_PACIENTE | NUMBER | N | Codigo do paciente. |
| 6 | CD_AUTORIZADOR | NUMBER | Y | Codigo do Autorizador do Laudo |
| 7 | DT_EMISSAO_LAUDO | DATE | N | Data de emiss?o do laudo. |
| 8 | CD_PRESTADOR | NUMBER | N | Codigo do prestador do laudo. |
| 9 | CD_PROCEDIMENTO | VARCHAR2 | Y | Numero Procedimento BPAI |
| 10 | QT_PROCEDIMENTO | NUMBER | Y | Quantidade do Procedimento Principal. |
| 11 | NM_USUARIO | VARCHAR2 | Y | Nome do Usuario que digitou o laudo. |
| 12 | DS_DIAGNOSTICO | VARCHAR2 | Y | Descric?o do diagnostico para o paciente. |
| 13 | CD_CID_PRINCIPAL | VARCHAR2 | N | CID-10 Principal que corresponde a doenca/les?o de base que motivou, em especial, o atendimento a... |
| 14 | CD_CID_SECUNDARIO | VARCHAR2 | Y | CID-10 Secundario, ou seja que corresponde a doenca/les?o que iniciou a cadeia de acontecimentos ... |
| 15 | CD_CID_CAUSAS_ASSOCIADAS | VARCHAR2 | Y | CID-10 de Causas Associadas, ou seja, o(s) que corresponde(m) ao(s) de outra(s) deoncas concomita... |
| 16 | DS_OBSERVACAO | VARCHAR2 | Y | Principais sinais e sintomas clinicos apresentados pelo paciente. |
| 17 | DS_JUSTIFICATIVA | VARCHAR2 | Y | Principais justificativas |
| 18 | DS_NR_AUTORIZACAO | VARCHAR2 | Y | Numero da Autorizac?o |
| 19 | SN_IMPRESSO | VARCHAR2 | Y | Indica se o laudo foi impresso. |
| 20 | SN_RETORNO_SECRETARIA | VARCHAR2 | Y | Indica se o laudo retornou da Secretaria de Saude. |
| 21 | CD_MULTI_EMPRESA | NUMBER | Y | Codigo da empresa. |
| 22 | SN_GERADO | VARCHAR2 | Y | Indica que o laudo foi gerado e enviado para autorizac?o. |
| 23 | CD_ESTABELECIMENTO | NUMBER | Y | Codigo do Estabelecimento solicitante. |
| 24 | DT_AUTORIZACAO | DATE | Y |  |
| 25 | CD_PRESTADOR_SOLICITANTE | NUMBER | Y | Identifica o prestador solicitante pelo laudo. |
| 26 | DS_CNS_PRESTADOR_SOLICITANTE | VARCHAR2 | Y | Identifica o cns do prestador solicitante pelo laudo. |
| 27 | CD_ORGAO_EMISSOR_SOLICITANTE | VARCHAR2 | Y | Identifica o org?o emissor do prestador solicitante pelo laudo. |
| 28 | DS_CONSELHO_SOLICITANTE | VARCHAR2 | Y | Identifica o conselho do prestador solicitante pelo laudo. |
| 29 | DT_SOLICITACAO_SOLICITANTE | DATE | Y | Descric?o da solicitac?o prestador solicitante pelo laudo. |
| 30 | DS_NOME_PRESTADOR_SOLICITANTE | VARCHAR2 | Y | Nome do prestador solicitante do laudo. |
| 31 | CD_PRES_EXT | NUMBER | Y | Codigo do prestador externo. |
| 32 | CD_ORI_ATE | NUMBER | Y | Codgo de origem do atendimento. |
| 33 | DT_REALIZACAO | DATE | Y |  |

---

## DBAMV.LAUDO_CITOPATOLOGICO
> Cadastro de laudo do exame citopatologico.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ATENDIMENTO | NUMBER | Y | Codigo do atendimento realizado ao paciente. |
| 2 | CD_FAT_SIA | NUMBER | N | Codigo da fatura ambulatorial. |
| 3 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da multi-empresa. |
| 4 | CD_PACIENTE | NUMBER | N | Codigo do(a) paciente. |
| 5 | CD_PED_LAB | NUMBER | Y | Codigo do pedido laboratorial. |
| 6 | CD_PRESTADOR | NUMBER | Y | Codigo do prestador. |
| 7 | CD_LAUDO_CITOPATOLOGICO | NUMBER | N | Codigo sequencial do laudo citopatologico. |
| 8 | CD_EXAME | VARCHAR2 | N | Codigo  do exame citopatologico. |
| 9 | CD_UNI_SER | NUMBER | N | Codigo da unidade prestadora de servico. |
| 10 | NM_USUARIO | VARCHAR2 | N | Nome do(a) usuario(a) que realizou o cadastro do laudo. |
| 11 | SN_ANM_ACHOU | VARCHAR2 | Y | Indica se foi achado nodulo ou caroco na mama. |
| 12 | SN_ANM_ACHOU_MD | VARCHAR2 | Y | Indica se foi achado nodulo ou caroco na mama direita. |
| 13 | SN_ANM_ACHOU_ME | VARCHAR2 | Y | Indica se foi achado nodulo ou caroco na mama esquerda. |
| 14 | TP_ANM_GRAV | VARCHAR2 | Y | Indica se a paciente esta gravida ou amamentando. |
| 15 | TP_ANM_TCANC | VARCHAR2 | Y | Indica se a paciente apresenta risco de cancer de mama. |
| 16 | SN_CLI_DESC | VARCHAR2 | Y | Descarga papilar espontanea. |
| 17 | TP_CLI_NODU | VARCHAR2 | Y | Indica o estado do nodulo (tumor). |
| 18 | TP_CLI_LOCAL | VARCHAR2 | Y | Localizac?o: para descric?o dos achados de localizac?o para os campos de Nodulo, Microcalcificac?... |
| 19 | SN_CLI_TTUM | VARCHAR2 | Y | Indica se tem tumor residual apos punc?o. |
| 20 | SN_CLI_TSOL | VARCHAR2 | Y | Indica se o tumor solido puncionado e tumor residual. |
| 21 | TP_CLI_MATMAM | VARCHAR2 | Y | Indica se o material enviado e da mama direita ou mama esquerda. |
| 22 | TP_CLI_MATDPC | VARCHAR2 | Y | Indica o material enviado: Descarga papilar, Punc?o aspirativa, Conteudo cistico. |
| 23 | NR_CLI_NLAM | VARCHAR2 | Y | Numero de Laminas enviadas. |
| 24 | TP_RES_LOC | VARCHAR2 | Y | Localizac?o: Mama Direita / Mama Esquerda. |
| 25 | NR_RES_NUML | VARCHAR2 | Y | Material recebido-Numero de Laminas/ml. |
| 26 | TP_RES_ADEQ | VARCHAR2 | Y | Indica a condic?o do material recebido para analise: Satisfatorio / Insatisfatorio. |
| 27 | DS_RES_INSAP | VARCHAR2 | Y | Descric?o do por que o material foi insatisfatorio. |
| 28 | TP_RES_BENIG | VARCHAR2 | Y | Indica os processos benignos, negativos para malignidade compativel. |
| 29 | DS_RES_BEM_OUT | VARCHAR2 | Y | Descrever exclusivamente para benignos. |
| 30 | TP_RES_MALI_IND | VARCHAR2 | Y | Indica o Padr?o Citopatologico de malignidade indeterminada compativel. |
| 31 | DS_RES_MALI_IND_OUT | VARCHAR2 | Y | Indica o Padr?o Citopatologico de malignidade indeterminada compativel com:outros. |
| 32 | TP_RES_POS_MALI | VARCHAR2 | Y | Indica o Padr?o citopatologico positivo para malignidade compativel. |
| 33 | DS_RES_MALI_OUT | VARCHAR2 | Y | Descrever exclusivamente malignos. |
| 34 | TP_RES_SUS_MALI | VARCHAR2 | Y | Indica o Padr?o Citopatologico suspeito para malignidade. |
| 35 | DS_RES_SUS_OUT | VARCHAR2 | Y | Descrever outros padr?es. |
| 36 | TP_RES_DER_PAPI | VARCHAR2 | Y | Identifica o Padr?o Citopatologico da amostra. |
| 37 | DS_OBSERVACAO | VARCHAR2 | Y | Descrever observac?o gerais. |
| 38 | DT_COLETA_UNIDADE_SAUDE | DATE | Y | Data da coleta do exame na unidade de saude. |
| 39 | DT_RECEBIMENTO_EXAME_LABOTARIO | DATE | Y | Data do recebimento do exame no laboratorio. |
| 40 | DT_LIBERACAO_EXAME | DATE | Y | Data da liberac?o do resultado do exame. |
| 41 | TP_SITUACAO | VARCHAR2 | Y | Indica o estado que encontra-se o registro(D-Digitado, C-Consistido, E-Consistido com Erro e X-Ex... |
| 42 | CD_SETOR | NUMBER | Y | Codigo do Setor no Laudo Citopatologico |
| 43 | CD_SETOR_PRODUZIU | NUMBER | Y | Codigo do Setor que Produziu no Laudo Citopatologico |
| 44 | CD_PRESTADOR_REQUISICAO | NUMBER | Y | Codigo do prestador requisitante. |

---

## DBAMV.LAUDO_HISTOPATOLOGICO
> Cadastro de laudos do exame histopatologico.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ATENDIMENTO | NUMBER | Y | Codigo do atendimento realizado ao paciente. |
| 2 | CD_FAT_SIA | NUMBER | N | Codigo da fatura ambulatorial. |
| 3 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da multi-empresa. |
| 4 | CD_PACIENTE | NUMBER | N | Codigo do(a) paciente. |
| 5 | CD_PED_LAB | NUMBER | Y | Codigo do pedido laboratorial. |
| 6 | CD_PRESTADOR | NUMBER | Y | Codigo do prestador. |
| 7 | CD_LAUDO_HISTOPATOLOGICO | NUMBER | N | Codigo sequencial do laudo histopatologico. |
| 8 | CD_EXAME | VARCHAR2 | N | Codigo do exame histopatologico. |
| 9 | CD_UNI_SER | NUMBER | N | Codigo da unidade prestadora de servico. |
| 10 | NM_USUARIO | VARCHAR2 | N | Nome do(a) usuario(a) que realizou o cadastro do laudo. |
| 11 | TP_CLI_TIPEXE | VARCHAR2 | Y | Indica o tipo do exame Revis?o de lamina Imunohistoquimica. |
| 12 | TP_CLI_TCANC | VARCHAR2 | Y | Indica o tipo de risco de cancer de mama. |
| 13 | TP_CLI_GRAV | VARCHAR2 | Y | Indica se a paciente esta gravida ou amamentando. |
| 14 | SN_CLI_TANT | VARCHAR2 | Y | Indica se existiu tratamento anterior para cancer. |
| 15 | SN_CLI_TQUIM | VARCHAR2 | Y | Indica qual o tipo de tratamento realizado Exemplo: Quimioterapia. |
| 16 | SN_CLI_TRADIO | VARCHAR2 | Y | Indica qual o tipo de tratamento realizado :Radioterapia. |
| 17 | SN_CLI_TRADIOOM | VARCHAR2 | Y | Indica o tipo de tratamento :Radioterapia outra mama. |
| 18 | SN_CLI_TCIRUR | VARCHAR2 | Y | Indica o tipo de tratamento: Cirurgia mesma mama. |
| 19 | SN_CLI_TCIRUROM | VARCHAR2 | Y | Indica o tipo de tratamento: Cirurgia outra mama. |
| 20 | SN_CLI_THORM | VARCHAR2 | Y | Indica o tipo de tratamento hormonio. |
| 21 | TP_CLI_DETEC | VARCHAR2 | Y | Indica detecc?o de les?o. |
| 22 | TP_CLI_DIAG_IM | VARCHAR2 | Y | Indica o tipo de diagnostico de imagem. |
| 23 | TP_CLI_MAMA | VARCHAR2 | Y | Indica a caracteristica da les?o. |
| 24 | TP_CLI_LOCA | VARCHAR2 | Y | Indica a localizac?o da les?o. |
| 25 | TP_CLI_TAM | VARCHAR2 | Y | Indica o tamanho da les?o. |
| 26 | SN_CLI_LINFO | VARCHAR2 | Y | Linfonodo axiliar palpavel. |
| 27 | TP_CLI_MAT_PROC | VARCHAR2 | Y | Procedencia do Material enviado. |
| 28 | SN_EXAMIN | VARCHAR2 | Y |  |
| 29 | TP_RES_PROCIR | VARCHAR2 | Y | Indica o procedimento cirurgico. |
| 30 | TP_RES_ADEQ | VARCHAR2 | Y | Indica a adequabilidade do material. |
| 31 | DS_RES_INS_POR | VARCHAR2 | Y | Descric?o do motivo da adequabilidade insatisfatoria. |
| 32 | TP_TAM_TUMDOM | VARCHAR2 | Y | Dimens?o maxima do tumor dominante. |
| 33 | TP_DIM_TUMSEC | VARCHAR2 | Y | Dimens?o maxima do tumor secundario. |
| 34 | SN_MIC_MICRCALC | VARCHAR2 | Y | Indica se Microcalcificac?o. |
| 35 | SN_BEN_HIPSATI | VARCHAR2 | Y | Indica Hiperplasia ductal sem atipias. |
| 36 | SN_BEN_HIPCATI | VARCHAR2 | Y | Indica Hiperplasia ductal com atipias. |
| 37 | SN_BEN_LOBCATI | VARCHAR2 | Y | Indica Hiperplasia lobular com atipias. |
| 38 | SN_BEN_ADENOS | VARCHAR2 | Y | Indica Adenose SOE. |
| 39 | SN_BEN_ESDERO | VARCHAR2 | Y | Indica les?o esclerosante radical. |
| 40 | SN_BEN_FIBROC | VARCHAR2 | Y | Indica considerac?o fibrocistica. |
| 41 | SN_BEN_FIBROA | VARCHAR2 | Y | Indica fibroadenoma. |
| 42 | SN_BEN_SOLITA | VARCHAR2 | Y | Indica papiloma solitario. |
| 43 | SN_BEN_MULTI | VARCHAR2 | Y | Indica papiloma multiplo. |
| 44 | SN_BEN_FLORID | VARCHAR2 | Y | Indica papilomatose florida do mamilo. |
| 45 | SN_BEN_MASTIT | VARCHAR2 | Y | Indica mastite. |
| 46 | SN_BEN_OUTROS | VARCHAR2 | Y | Outras indicac?es. |
| 47 | DS_BEN_OUTDES | VARCHAR2 | Y | Descric?o da les?o carater benigno. |
| 48 | TP_NEO_MALIG | VARCHAR2 | Y | Indica les?o de carater neoplasico maligno (tipo predominante). |
| 49 | DS_NEO_OUTDES | VARCHAR2 | Y | Descric?o da les?o carater neoplasico maligno. |
| 50 | SN_HIS_ASSSEC | VARCHAR2 | Y | Indica tipo histopatologico associado secundario. |
| 51 | DS_HIS_ASSSESP | VARCHAR2 | Y | Especificac?o caso o campo tipo histopatologico associado secundario. |
| 52 | SN_HIS_FOCA | VARCHAR2 | Y | Indica multifocalidade do tumor. |
| 53 | SN_HIS_CENT | VARCHAR2 | Y | Indica multicentricidade do tumor. |
| 54 | TP_HIS_GRAU | VARCHAR2 | Y | Indica o grau histopatologico. |
| 55 | TP_HIS_VASC | VARCHAR2 | Y | Indica invas?o vascular. |
| 56 | TP_HIS_PERIN | VARCHAR2 | Y | Indica inflitrac?o perineural. |
| 57 | TP_HIS_EMBO | VARCHAR2 | Y | Indica embolizac?o linfatica. |
| 58 | TP_HIS_PELE | VARCHAR2 | Y | Indica extens?o do tumor. |
| 59 | TP_HIS_MAM | VARCHAR2 | Y | Indica se houve avalic?o do mamilo. |
| 60 | TP_HIS_MUSC | VARCHAR2 | Y | Indica se houve avalic?o do musculo peitoral. |
| 61 | TP_HIS_FASC | VARCHAR2 | Y | Indica se houve avalizac?o fascia do peitoral. |
| 62 | TP_HIS_GRAD | VARCHAR2 | Y | Indica se houve avalic?o do gradil costal. |
| 63 | TP_HIS_MARG | VARCHAR2 | Y | Indica margens cirurgicas. |
| 64 | TP_HIS_LINFO | VARCHAR2 | Y | Indica o tipo de linfonodos. |
| 65 | NR_HIS_LINFAV | VARCHAR2 | Y | Indica o numero de linfonodos avaliaveis. |
| 66 | TP_HIS_LINFCO | NUMBER | Y | Indica o numero de linfonodos comprometidos. |
| 67 | TP_HIS_COAL | VARCHAR2 | Y | Indica a presenca de coalescencia linfonodal. |
| 68 | TP_HIS_EXTR | VARCHAR2 | Y | Indica extravazamento da capsula linfonodal. |
| 69 | TP_HIS_RECES | VARCHAR2 | Y | Indica receptor de estrogeno. |
| 70 | TP_HIS_RECPR | VARCHAR2 | Y | Indica receptor de progesterona. |
| 71 | SN_HIS_OUTHIS | VARCHAR2 | Y | Indica se outros estudos imuno histoquimicos. |
| 72 | DS_HIS_OUTDES | VARCHAR2 | Y | Descric?o dos estudos imuno histoquimicos. |
| 73 | DS_HIS_OBS | VARCHAR2 | Y | Outras observac?es. |
| 74 | DT_COLETA_UNIDADE_SAUDE | DATE | Y | Data da coleta do exame na unidade de saude. |
| 75 | DT_RECEBIMENTO_EXAME | DATE | Y | Data de recebimento do exame. |
| 76 | DT_LIBERACAO_EXAME | DATE | Y | Data de liberac?o do resultado do exame. |
| 77 | TP_SITUACAO | VARCHAR2 | Y | Indica o estado que encontra-se o registro(D-Digitado, C-Consistido, E-Consistido com Erro e X-Ex... |
| 78 | CD_SETOR | NUMBER | Y | Codigo do Setor no Laudo Histopatologico |
| 79 | CD_SETOR_PRODUZIU | NUMBER | Y | Codigo do Setor que Produziu no Laudo Histopatologico |
| 80 | CD_PRESTADOR_REQUISICAO | NUMBER | Y | Codigo do prestador requisitante. |
| 81 | TP_MIC_LESAO | VARCHAR2 | Y | Tipo da les?o para microscopico: 01 - Carater benigno; 02 - Core Biopsy indeterminada; 03 - Core ... |
| 82 | DS_MIC_CORE_BIOP_POR | VARCHAR2 | Y | Tipo da les?o core biopsy indeterminada por |

---

## DBAMV.LAUDO_MAMOGRAFIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ATENDIMENTO | NUMBER | Y | Codigo do atendimento realizado ao paciente. |
| 2 | CD_FAT_SIA | NUMBER | Y | Codigo da fatura ambulatorial. |
| 3 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da multi-empresa. |
| 4 | CD_PACIENTE | NUMBER | N | Codigo do(a) paciente. |
| 5 | CD_PED_RX | NUMBER | Y | Codigo do pedido diagnostico por imagem. |
| 6 | CD_PRESTADOR | NUMBER | Y | Codigo do prestador. |
| 7 | CD_LAUDO_MAMOGRAFIA | NUMBER | N | Codigo sequencial do laudo mamografia. |
| 8 | CD_EXAME | VARCHAR2 | Y | Codigo do exame mamografia. |
| 9 | CD_UNI_SER | NUMBER | Y | Codigo da unidade prestadora de servico. |
| 10 | NM_USUARIO | VARCHAR2 | N | Nome do(a) usuario(a) que realizou o cadastro do laudo. |
| 11 | SN_ANM_NOD | VARCHAR2 | Y | Indica se apresenta nodulo ou caroco na mama. |
| 12 | SN_ANM_NOD_MD | VARCHAR2 | Y | Indica se existe nodulo na mama direita. |
| 13 | SN_ANM_NOD_ME | VARCHAR2 | Y | Indica se existe nodulo na mama esquerda. |
| 14 | SN_ANM_PARENTE_CANCER | VARCHAR2 | Y | Indica se apresenta risco elevado para cancer de mama. |
| 15 | SN_ANM_EXA_PROF | VARCHAR2 | Y | Indica se antes da consulta, teve suas mamas examinadas por um profissional de saude. |
| 16 | TP_ANM_MAMOGRAF | VARCHAR2 | Y | Indica se fez mamografia. |
| 17 | DT_ANM_MANO_ANO | DATE | Y | Ano da mamografia. |
| 18 | TP_CLI_DIAG | VARCHAR2 | Y | Indica o campo mamografia diagnostica. |
| 19 | TP_CLI_LES_PALPA | VARCHAR2 | Y | Indica o campo mamografia diagnostica (Direita/Esquerda). |
| 20 | SN_CLI_PAPIL_DIR | VARCHAR2 | Y | Indica les?o papilar na mama direita. |
| 21 | TP_CLI_DESC_DIR | VARCHAR2 | Y | Indica descarga papilar mama direita. |
| 22 | SN_CLI_NOD_QSE_DIR | VARCHAR2 | Y | Indica nodulo localizado QSE na mama direita. |
| 23 | SN_CLI_NOD_QIE_DIR | VARCHAR2 | Y | Indica nodulo localizado QIE mama direita. |
| 24 | SN_CLI_NOD_QSI_DIR | VARCHAR2 | Y | Indica nodulo localizado QSI mama direita. |
| 25 | SN_CLI_NOD_QII_DIR | VARCHAR2 | Y | Indica nodulo localizado QII mama direita. |
| 26 | SN_CLI_NOD_UQEXT_DIR | VARCHAR2 | Y | Indica nodulo localizado UQEXT mama direita. |
| 27 | SN_CLI_NOD_UQSUP_DIR | VARCHAR2 | Y | Indica nodulo localizado UQSUP mama direita. |
| 28 | SN_CLI_NOD_UQINT_DIR | VARCHAR2 | Y | Indica nodulo localizado UQINT mama direita. |
| 29 | SN_CLI_NOD_UQINF_DIR | VARCHAR2 | Y | Indica nodulo localizado UQINF mama direita. |
| 30 | SN_CLI_NOD_RRA_DIR | VARCHAR2 | Y | Indica nodulo localizado RRA mama direita. |
| 31 | SN_CLI_NOD_PA_DIR | VARCHAR2 | Y | Indica nodulo localizado PA mama direita. |
| 32 | SN_CLI_ESP_QSE_DIR | VARCHAR2 | Y | Indica espessamento localizado QSE mama direita. |
| 33 | SN_CLI_ESP_QIE_DIR | VARCHAR2 | Y | Indica espessamento localizado QIE mama direita. |
| 34 | SN_CLI_ESP_QSI_DIR | VARCHAR2 | Y | Indica espessamento localizado QSI mama direita. |
| 35 | SN_CLI_ESP_QII_DIR | VARCHAR2 | Y | Indica espessamento localizado QII mama direita. |
| 36 | SN_CLI_ESP_UQEXT_DIR | VARCHAR2 | Y | Indica espassamento localizado UQEXT mama direita. |
| 37 | SN_CLI_ESP_UQSUP_DIR | VARCHAR2 | Y | Indica espassamento localizado UQSUP mama direita. |
| 38 | SN_CLI_ESP_UQINT_DIR | VARCHAR2 | Y | Indica espessamento localizado UQINT mama direita. |
| 39 | SN_CLI_ESP_UQINF_DIR | VARCHAR2 | Y | Indica espassamento localizado UQINF mama direita. |
| 40 | SN_CLI_ESP_RRA_DIR | VARCHAR2 | Y | Indica espessamento locallizado RRA mama direita. |
| 41 | SN_CLI_ESP_PA_DIR | VARCHAR2 | Y | Indica espessamento localizado PA mama direita. |
| 42 | SN_CLI_LINF_AX_DIR | VARCHAR2 | Y | Indica linfonodo palpavel auxiliar mama direita. |
| 43 | SN_CLI_LINF_SUPRA_DIR | VARCHAR2 | Y | Indica linfonodo palpavel supraclavicular mama direita. |
| 44 | SN_CLI_PAPIL_ESQ | VARCHAR2 | Y | Indica les?o papilar mama esquerda. |
| 45 | TP_CLI_DESC_ESQ | VARCHAR2 | Y | Indica descarga papilar mama esquerda. |
| 46 | SN_CLI_NOD_QSE_ESQ | VARCHAR2 | Y | Indica nodulo localizado QSE mama esquerda. |
| 47 | SN_CLI_NOD_QIE_ESQ | VARCHAR2 | Y | Indica nodulo localizado QIE mama esquerda. |
| 48 | SN_CLI_NOD_QSI_ESQ | VARCHAR2 | Y | Indica nodulo localizado QIE mama esquerda. |
| 49 | SN_CLI_NOD_QII_ESQ | VARCHAR2 | Y | Indica nodulo localizado QSI mama esquerda. |
| 50 | SN_CLI_NOD_UQEXT_ESQ | VARCHAR2 | Y | Indica nodulo localizado UQEXT mama esquerda. |
| 51 | SN_CLI_NOD_UQSUP_ESQ | VARCHAR2 | Y | Indica nodulo localizado UQSUP mama esquerda. |
| 52 | SN_CLI_NOD_UQINT_ESQ | VARCHAR2 | Y | Indica nodulo localizado UQINT mama esquerda. |
| 53 | SN_CLI_NOD_UQINF_ESQ | VARCHAR2 | Y | Indica nodulo localizado UQINF mama esquerda. |
| 54 | SN_CLI_NOD_RRA_ESQ | VARCHAR2 | Y | Indica nodulo localizado RRA mama esquerda. |
| 55 | SN_CLI_NOD_PA_ESQ | VARCHAR2 | Y | Indica nodulo localizado PA mama esquerda. |
| 56 | SN_CLI_ESP_QSE_ESQ | VARCHAR2 | Y | Indica espessamento localizado QSE mama esquerda. |
| 57 | SN_CLI_ESP_QIE_ESQ | VARCHAR2 | Y | Indica um espessamento localizado QIE mama esquerda. |
| 58 | SN_CLI_ESP_QSI_ESQ | VARCHAR2 | Y | Indica o espessamento localizado do QSI mama esquerda. |
| 59 | SN_CLI_ESP_QII_ESQ | VARCHAR2 | Y | Indica o espessamento localizado QII mama esquerda. |
| 60 | SN_CLI_ESP_UQEXT_ESQ | VARCHAR2 | Y | Indica espessamento localizado UQEXT mama esquerda. |
| 61 | SN_CLI_ESP_UQSUP_ESQ | VARCHAR2 | Y | Indica espessamento localizado UQSUP mama esquerda. |
| 62 | SN_CLI_ESP_UQINT_ESQ | VARCHAR2 | Y | Indica espessamento localizado UQINT mama esquerda. |
| 63 | SN_CLI_ESP_UQINF_ESQ | VARCHAR2 | Y | Indica espessamento localizado UQINF mama esquerda. |
| 64 | SN_CLI_ESP_RRA_ESQ | VARCHAR2 | Y | Indica espessamento localizado RRA mama esquerda. |
| 65 | SN_CLI_ESP_PA_ESQ | VARCHAR2 | Y | Indica espessamento localizado PA mama esquerda. |
| 66 | SN_CLI_LINF_AX_ESQ | VARCHAR2 | Y | Indica linfonodo palpavel auxiliar mama esquerda. |
| 67 | SN_CLI_LINF_SUPRA_ESQ | VARCHAR2 | Y | Indica linfonodo palpavel supraclavicular mama esquerda. |
| 68 | SN_CONTROLE_RADIOL | VARCHAR2 | Y | Indica se controle radiologico categoria 3. |
| 69 | SN_RAD_NODULO_DIR | VARCHAR2 | Y | Indica se controle radiologico nodulo em mama direita. |
| 70 | SN_RAD_MICROCAL_DIR | VARCHAR2 | Y | Indica microcalsificac?o na mama direita. |
| 71 | SN_RAD_ASSIM_FOC_DIR | VARCHAR2 | Y | Indica se assimetria focal mama direita. |
| 72 | SN_RAD_ASSIM_DIF_DIR | VARCHAR2 | Y | Indica se assimetria difusa mama direita. |
| 73 | SN_RAD_AREA_DENS_DIR | VARCHAR2 | Y | Indica se area densa mama direita. |
| 74 | SN_RAD_DIST_ARQ_DIR | VARCHAR2 | Y | Controle radiologico: Distorc?o arquitetural (mama direita) |
| 75 | SN_RAD_NODULO_ESQ | VARCHAR2 | Y | Controle radiologico: Nodulo mama esquerda. |
| 76 | SN_RAD_MICROCAL_ESQ | VARCHAR2 | Y | Controle radiologico: Microcalcificac?o (mama esquerda). |
| 77 | SN_RAD_ASSIM_FOC_ESQ | VARCHAR2 | Y | Controle radiologico: assimetria focal (mama esquerda). |
| 78 | SN_RAD_ASSIM_DIF_ESQ | VARCHAR2 | Y | Controle radiologico: assimetria difusa (mama esquerda). |
| 79 | SN_RAD_AREA_DENS_ESQ | VARCHAR2 | Y | Controle radiologico:area densa (mama esquerda). |
| 80 | SN_RAD_DIST_ARQ_ESQ | VARCHAR2 | Y | Controle radiologico: Distorc?o arquitetural (mama esquerda). |
| 81 | SN_LESAO_DIAG | VARCHAR2 | Y | Indica se les?o com diagnostico de cancer. |
| 82 | SN_DIAG_NODULO_DIR | VARCHAR2 | Y | Indica se les?o com diagnostico de cancer: Nodulo (mama direita). |
| 83 | SN_DIAG_MICROCAL_DIR | VARCHAR2 | Y | Indica se les?o com diagnostico de cancer: Microcalcificac?o (mama esquerda). |
| 84 | SN_DIAG_ASSIM_FOC_DIR | VARCHAR2 | Y | Indica se les?o com diagnostico de cancer: assimetria focal (mama direita). |
| 85 | SN_DIAG_ASSIM_DIF_DIR | VARCHAR2 | Y | Indica se les?o com cancer: assimetria difusa (mama direita). |
| 86 | SN_DIAG_AREA_DENS_DIR | VARCHAR2 | Y | Indica se les?o com diagnostico de cancer: area densa (mama direita). |
| 87 | SN_DIAG_DIST_ARQ_DIR | VARCHAR2 | Y | Indica se les?o com diagnostico de cancer: assimetria difusa (mama direita). |
| 88 | SN_DIAG_NODULO_ESQ | VARCHAR2 | Y | Indica se les?o com diagnostico de cancer: Nodulo (mama esquerda). |
| 89 | SN_DIAG_MICROCAL_ESQ | VARCHAR2 | Y | Indica les?o com diagnostico de cancer: Microcalcificac?o (mama esquerda). |
| 90 | SN_DIAG_ASSIM_FOC_ESQ | VARCHAR2 | Y | Indica se les?o com diagnostico de cancer: assimetria focal (mama esquerda). |
| 91 | SN_DIAG_ASSIM_DIF_ESQ | VARCHAR2 | Y | Indica se les?o com diagnostico de cancer: assimetria difusa (mama esquerda). |
| 92 | SN_DIAG_AREA_DENS_ESQ | VARCHAR2 | Y | Indica se les?o com diagnostico de cancer: area densa (mama esquerda). |
| 93 | SN_DIAG_DIST_ARQ_ESQ | VARCHAR2 | Y | Indica se les?o com diagnostico de cancer: assimetria difusa (mama esquerda). |
| 94 | SN_AVALIACAO_ADJ | VARCHAR2 | Y | Indica avaliac?o da resposta de QT neo adjuvante. |
| 95 | SN_MAMO_RASTR | VARCHAR2 | Y | Indica mamografia rastreamento. |
| 96 | DT_ANA_MESTRUAC | DATE | Y | Indica ano da ultima menstruac?o. |
| 97 | SN_ANA_MEST_NLEMB | VARCHAR2 | Y | Indica que paciente n?o lembra da ultima menstruac?o. |
| 98 | DT_ANO_MENOP_IDADE | NUMBER | Y | Indica ano da menopausa. |
| 99 | SN_ANA_MENOP_NLEMB | VARCHAR2 | Y | Indica que a paciente n?o lembra de quando comecou a menopausa. |
| 100 | SN_ANA_NUNCAMEST | VARCHAR2 | Y | Indica se a paciente numca menstruou. |
| 101 | SN_ANA_USAHORMONIO | VARCHAR2 | Y | Indica se a paciente usa hormonio/rmedio para tratar menopausa. |
| 102 | SN_ANA_GRAVIDA | VARCHAR2 | Y | Indica se a paciente esta gravida. |
| 103 | SN_ANA_RADIO | VARCHAR2 | Y | Indica se fez radioterapia de mama. |
| 104 | DT_ANA_RADIO_MDIR | DATE | Y | Indica o ano da radioterapia mama direita. |
| 105 | SN_ANA_RADIO_MDIR | VARCHAR2 | Y | Indica se a radioterapia foi da mama direita. |
| 106 | DT_ANA_ANO_DIREITA | DATE | Y | Indica o ano da radioterapia da mama direita. |
| 107 | SN_ANA_RADIO_MESQ | VARCHAR2 | Y | Indica se a radioterapia foi da mama esquerda. |
| 108 | DT_ANA_ANO_ESQUERDA | DATE | Y | Indica o ano da radioterapia da mama esquerda. |
| 109 | DT_ANA_ANO_TUMOR_D | DATE | Y | Indica ano da cirurgia da mama direita: Tumordectomia. |
| 110 | DT_ANA_ANO_TUMOR_E | DATE | Y | Indica ano da cirurgia da mama esquerda: Tumordectomia. |
| 111 | DT_ANA_ANO_SEGMEN_D | DATE | Y | Indica ano da cirurgia de mama direita: Segmentectomia. |
| 112 | DT_ANA_ANO_SEGMEN_E | DATE | Y | Indica ano da cirurgia de mama esquerda: Segmentectomia. |
| 113 | DT_ANA_ANO_DUTECT_D | DATE | Y | Indica ano da cirurgia da mama direita: Dutectomia. |
| 114 | DT_ANA_ANO_DUTECT_E | DATE | Y | Indica ano da cirurgia da mama esquerda: Dutectomia. |
| 115 | DT_ANA_ANO_MASTEC_D | DATE | Y | Indica ano da cirurgia de mama direita: Mastectomia. |
| 116 | DT_ANA_ANO_MASTEC_E | DATE | Y | Indica ano da cirurgia de mama esquerda: Mastectomia. |
| 117 | DT_ANA_ANO_M_PELE_D | DATE | Y | Indica ano da cirurgia de mama direita: Mastectomia poup.pele. |
| 118 | DT_ANA_ANO_M_PELE_E | DATE | Y | Indica ano da cirurgia de mama esquerda: Mastectomia poup.pele. |
| 119 | DT_ANA_ANO_ESVAZIA_D | DATE | Y | Indica ano da cirurgia de mama direita: Esvaziamento axilar. |
| 120 | DT_ANA_ANO_ESVAZIA_E | DATE | Y | Indica ano da cirurgia de mama esquerda: Esvaziamento axilar. |
| 121 | DT_ANA_ANO_BIOPSIA_D | DATE | Y | Indica anao da cirurgia de mama direita: Biopsia linfonodo sentinela. |
| 122 | DT_ANA_ANO_BIOPSIA_E | DATE | Y | Indica anao da cirurgia de mama esquerda: Biopsia linfonodo sentinela. |
| 123 | DT_ANA_ANO_RECON_D | DATE | Y | Indica ano da cirurgia de mama direita: Reconstruc?o mamaria. |
| 124 | DT_ANA_ANO_RECON_E | DATE | Y | Indica ano da cirurgia de mama esquerda: Reconstruc?o mamaria. |
| 125 | DT_ANA_ANO_PLAST_RED_D | DATE | Y | Indica ano da cirurgia de mama direita: Plastica redutora. |
| 126 | DT_ANA_ANO_PLAST_RED_E | DATE | Y | Indica ano da cirurgia de mama esquerda: Plastica redutora. |
| 127 | DT_ANA_ANO_PLAST_IMP_D | DATE | Y | Indica ano da cirurgia de mama direita: Plastica com implantes. |
| 128 | DT_ANA_ANO_PLAST_IMP_E | DATE | Y | Indica ano da cirurgia de mama esquerda: Plastica com implantes. |
| 129 | SN_ANA_NAOFEZCIRUR | VARCHAR2 | Y | Indica que n?o fez cirurgia. |
| 130 | DS_OBS_GERAIS | VARCHAR2 | Y | Descrever observac?es gerais. |
| 131 | DT_RECEBIMENTO_EXAME | DATE | Y | Data de recebimento do exame. |
| 132 | DT_SOLICITACAO_EXAME | DATE | Y | Data da solicitac?o do exame. |
| 133 | DT_LIBERACAO_EXAME | DATE | Y | Data da liberac?o do resultado do exame. |
| 134 | TP_SITUACAO | VARCHAR2 | Y | Indica o estado que encontra-se o registro(D-Digitado, C-Consistido, E-Consistido com Erro e X-Ex... |
| 135 | SN_CAD_COMP | VARCHAR2 | Y | Indica se o laudo esta com a primeira parte do cadastro finalizado. |
| 136 | CD_USUARIO_FECHOU | VARCHAR2 | Y | Nome do(a) usuario(a) que realizou a conclusao do laudo. |
| 137 | CD_SETOR | NUMBER | Y | Codigo do Setor no Laudo Mamografia |
| 138 | CD_SETOR_PRODUZIU | NUMBER | Y | Codigo do Setor que Produziu no Laudo Mamografia |
| 139 | DT_ANA_ANO_BIO_CIR_INC_D | DATE | Y | Indica ano da cirurgia da mama direita: Biopsia Cirurgica Incisional. |
| 140 | DT_ANA_ANO_BIO_CIR_INC_E | DATE | Y | Indica ano da cirurgia da mama esquerda: Biopsia Cirurgica Incisional. |
| 141 | DT_ANA_ANO_BIO_CIR_EXC_D | DATE | Y | Indica ano da cirurgia da mama direita: Biopsia Cirurgica Excisional. |
| 142 | DT_ANA_ANO_BIO_CIR_EXC_E | DATE | Y | Indica ano da cirurgia da mama esquerda: Biopsia Cirurgica Excisional. |
| 143 | DT_ANA_ANO_CENTRA_D | DATE | Y | Indica ano da cirurgia da mama direita: Centralectomia. |
| 144 | DT_ANA_ANO_CENTRA_E | DATE | Y | Indica ano da cirurgia da mama esquerda: Centralectomia. |
| 145 | DT_ANA_ANO_MASTEC_AREO_D | DATE | Y | Indica ano da cirurgia da mama direita: Mastectomia Poupadora de Pele e Complexo Areolo-Papilar. |
| 146 | DT_ANA_ANO_MASTEC_AREO_E | DATE | Y | Indica ano da cirurgia da mama esquerda: Mastectomia Poupadora de Pele e Complexo Areolo-Papilar. |
| 147 | DT_ANA_ANO_LINFAD_AXIL_D | DATE | Y | Indica ano da cirurgia da mama direita: Linfadenectomia Axilar. |
| 148 | DT_ANA_ANO_LINFAD_AXIL_E | DATE | Y | Indica ano da cirurgia da mama esquerda: Linfadenectomia Axilar. |
| 149 | SN_RAD_LINFO_AXILAR_DIR | VARCHAR2 | Y | Indica se controle radiologico linfonofo axilar em mama direita. |
| 150 | SN_RAD_LINFO_AXILAR_ESQ | VARCHAR2 | Y | Indica se controle radiologico linfonofo axilar em mama esquerda. |
| 151 | SN_DIAG_LINFO_AXILAR_DIR | VARCHAR2 | Y | Indica se les?o com diagnostico de cancer: linfonofo axilar (mama direita). |
| 152 | SN_DIAG_LINFO_AXILAR_ESQ | VARCHAR2 | Y | Indica se les?o com diagnostico de cancer: linfonofo axilar (mama esquerda). |
| 153 | SN_ADJ_MAMA_DIR | VARCHAR2 | Y | Indica avaliac?o da resposta de QT neo adjuvante: (mama direita). |
| 154 | SN_ADJ_MAMA_ESQ | VARCHAR2 | Y | Indica avaliac?o da resposta de QT neo adjuvante: (mama esquerda). |
| 155 | SN_LESAO_OUTRA_INST | VARCHAR2 | Y | Indica Revis?o de mamografia com les?o, realizada em outra instituic?o. |
| 156 | SN_OUTRA_INST_CAT_0_D | VARCHAR2 | Y | Indica Revis?o de mamografia com les?o, realizada em outra instituic?o: Categoria 0 (mama direita). |
| 157 | SN_OUTRA_INST_CAT_0_E | VARCHAR2 | Y | Indica Revis?o de mamografia com les?o, realizada em outra instituic?o: Categoria 0 (mama esquerda). |
| 158 | SN_OUTRA_INST_CAT_3_D | VARCHAR2 | Y | Indica Revis?o de mamografia com les?o, realizada em outra instituic?o: Categoria 3 (mama direita). |
| 159 | SN_OUTRA_INST_CAT_3_E | VARCHAR2 | Y | Indica Revis?o de mamografia com les?o, realizada em outra instituic?o: Categoria 3 (mama esquerda). |
| 160 | SN_OUTRA_INST_CAT_4_D | VARCHAR2 | Y | Indica Revis?o de mamografia com les?o, realizada em outra instituic?o: Categoria 4 (mama direita). |
| 161 | SN_OUTRA_INST_CAT_4_E | VARCHAR2 | Y | Indica Revis?o de mamografia com les?o, realizada em outra instituic?o: Categoria 4 (mama esquerda). |
| 162 | SN_OUTRA_INST_CAT_5_D | VARCHAR2 | Y | Indica Revis?o de mamografia com les?o, realizada em outra instituic?o: Categoria 5 (mama direita). |
| 163 | SN_OUTRA_INST_CAT_5_E | VARCHAR2 | Y | Indica Revis?o de mamografia com les?o, realizada em outra instituic?o: Categoria 5 (mama esquerda). |
| 164 | SN_BIOP_FRAGMEN_PAAF | VARCHAR2 | Y | Indica controle de les?o apos biopsia de fragmento ou PAAF com resultado benigno. |
| 165 | SN_PAAF_NODULO_D | VARCHAR2 | Y | Indica controle de les?o apos biopsia de fragmento ou PAAF com resultado benigno: Nodulo (mama di... |
| 166 | SN_PAAF_NODULO_E | VARCHAR2 | Y | Indica controle de les?o apos biopsia de fragmento ou PAAF com resultado benigno: Nodulo (mama es... |
| 167 | SN_PAAF_MICROCAL_D | VARCHAR2 | Y | Indica controle de les?o apos biopsia de fragmento ou PAAF com resultado benigno: Microcalcificac... |
| 168 | SN_PAAF_MICROCAL_E | VARCHAR2 | Y | Indica controle de les?o apos biopsia de fragmento ou PAAF com resultado benigno: Microcalcificac... |
| 169 | SN_PAAF_ASSIM_FOC_D | VARCHAR2 | Y | Indica controle de les?o apos biopsia de fragmento ou PAAF com resultado benigno: Assimetria Foca... |
| 170 | SN_PAAF_ASSIM_FOC_E | VARCHAR2 | Y | Indica controle de les?o apos biopsia de fragmento ou PAAF com resultado benigno: Assimetria Foca... |
| 171 | SN_PAAF_ASSIM_DIF_D | VARCHAR2 | Y | Indica controle de les?o apos biopsia de fragmento ou PAAF com resultado benigno: Assimetria Difu... |
| 172 | SN_PAAF_ASSIM_DIF_E | VARCHAR2 | Y | Indica controle de les?o apos biopsia de fragmento ou PAAF com resultado benigno: Assimetria Difu... |
| 173 | SN_PAAF_AREA_DENS_D | VARCHAR2 | Y | Indica controle de les?o apos biopsia de fragmento ou PAAF com resultado benigno: Area Densa (mam... |
| 174 | SN_PAAF_AREA_DENS_E | VARCHAR2 | Y | Indica controle de les?o apos biopsia de fragmento ou PAAF com resultado benigno: Area Densa (mam... |
| 175 | SN_PAAF_DIST_ARQ_D | VARCHAR2 | Y | Indica controle de les?o apos biopsia de fragmento ou PAAF com resultado benigno: Distorc?o Focal... |
| 176 | SN_PAAF_DIST_ARQ_E | VARCHAR2 | Y | Indica controle de les?o apos biopsia de fragmento ou PAAF com resultado benigno: Distorc?o Focal... |
| 177 | SN_PAAF_LINFO_AXILAR_D | VARCHAR2 | Y | Indica controle de les?o apos biopsia de fragmento ou PAAF com resultado benigno: Linfonodos Axil... |
| 178 | SN_PAAF_LINFO_AXILAR_E | VARCHAR2 | Y | Indica controle de les?o apos biopsia de fragmento ou PAAF com resultado benigno: Linfonodos Axil... |
| 179 | TP_MAMO_RASTR | VARCHAR2 | Y | Indica o tipo de mamografia de rastreamento: 01-Populac?o alvo, 02-Populac?o de Risco Elevado(his... |
| 180 | TP_MAMOGRAFIA | VARCHAR2 | Y | Indica o tipo de mamografia: 01 - Diagnostica ou 02 - Rastreamento; |
| 181 | CD_PRESTADOR_REQUISICAO | NUMBER | Y | Codigo do prestador requisitante. |

---

## DBAMV.LAUDO_MAMOGRAFIA_ACHADO_RAD
> Achado radiologico da mama.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LAUDO_MAMOGRAFIA | NUMBER | N | Codigo sequencial do laudo mamografia. |
| 2 | TP_CLI_DIAG | VARCHAR2 | N | Indica qual a mama (direita ou esquerda ou ambas). |
| 3 | TP_RAD_PELE | VARCHAR2 | Y | Indica o estado do tecido da mama (normal, espessada ou retraida). |
| 4 | NR_FILME_MAMA | NUMBER | Y | Indica o numero de filme da mama. |
| 5 | TP_RAD_COMPOSIC | VARCHAR2 | Y | Indica a composic?o da mama: (Densa, Adiposa Predomin.Dena ou Predomin.Adiposa). |
| 6 | TP_LINFONODOS_AUX | VARCHAR2 | Y | Indica linfonodos axilares. |
| 7 | SN_AUMENTADO | VARCHAR2 | Y | Indica linfonodos axilares aumentados. |
| 8 | SN_DENSO | VARCHAR2 | Y | Indica linfonodos axilares densos. |
| 9 | SN_CONFLUENTE | VARCHAR2 | Y | Indica linfonodos axilares confluentes. |
| 10 | SN_DILATACAO_DUCTAL | VARCHAR2 | Y | Indica dilatac?o ductal: Regi?o retroareolar. |
| 11 | SN_NOD_DEN | VARCHAR2 | Y | Indica dilatac?o ductal: Regi?o retroareolar. |
| 12 | SN_NOD_CAL | VARCHAR2 | Y | Indica nodulo calcificado. |
| 13 | SN_NOD_DEN_HET | VARCHAR2 | Y | Indica nodulo densidade heterogenea. |
| 14 | SN_CAL_VASC | VARCHAR2 | Y | Indica calcificac?o vasculares. |
| 15 | SN_CAL_ASP_BEN | VARCHAR2 | Y | Indica outras calcificac?es de aspecto benigno. |
| 16 | SN_LINF_INTRAM | VARCHAR2 | Y | Indica linfonodos intramamarios. |
| 17 | SN_DIS_ARQ_CIR | VARCHAR2 | Y | Indica distorc?o arquitetural por cirurgia. |
| 18 | SN_IMP_INTEG | VARCHAR2 | Y | Indica implante integro mama. |
| 19 | SN_IMP_SIN_RUP | VARCHAR2 | Y | Indica implante com sinais de ruptura mama. |
| 20 | SN_MAMA_DIR_NAO_RAD | VARCHAR2 | Y | Indica se a mama n?o foi radiografada: (Mama Direita) |
| 21 | SN_MAMA_ESQ_NAO_RAD | VARCHAR2 | Y | Indica se a mama n?o foi radiografada: (Mama Esquerda) |
| 22 | SN_CIS_OLEOSO | VARCHAR2 | Y | Indica controle de les?o apos biopsia de fragmento ou PAAF com resultado benigno: Area Densa (mam... |
| 23 | SN_CAL_TIP_BEN | VARCHAR2 | Y | Indica controle de les?o apos biopsia de fragmento ou PAAF com resultado benigno: Distorc?o Focal... |
| 24 | SN_GINECOMASTIA | VARCHAR2 | Y | Indica controle de les?o apos biopsia de fragmento ou PAAF com resultado benigno: Distorc?o Focal... |
| 25 | SN_ECT_DUCTAL | VARCHAR2 | Y | Indica controle de les?o apos biopsia de fragmento ou PAAF com resultado benigno: Linfonodos Axil... |
| 26 | SN_ACH_BEN_OUTROS | VARCHAR2 | Y | Indica controle de les?o apos biopsia de fragmento ou PAAF com resultado benigno: Linfonodos Axil... |
| 27 | DS_ACH_BEN_OUTROS | VARCHAR2 | Y | Indica o tipo de mamografia de rastreamento: 01-Populac?o alvo, 02-Populac?o de Risco Elevado(his... |

---

## DBAMV.LAUDO_MAMOGRAFIA_CONCLUSAO
> Conclus?o do laudo da mamografia.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LAUDO_MAMOGRAFIA | NUMBER | N | Codigo sequencial do laudo mamografia. |
| 2 | TP_CLI_DIAG | VARCHAR2 | N | Indica qual a mama (direita ou esquerda ou ambas). |
| 3 | TP_REGISTRO | VARCHAR2 | N | Indica o tipo de registro foi lancado para o resultado: Exemplo: 1-Nodulo Localizac?o. |
| 4 | CD_LANCAMENTO | NUMBER | N | Codigo sequencial do lancamento realizado por tipo de registro. |
| 5 | TP_LOCALIZACAO | VARCHAR2 | Y | Indica a localizac?o do nodulo encontrado para mama. |
| 6 | TP_NOD_TAMANHO | VARCHAR2 | Y | Indica o tamanho em milimetros do nodulo. |
| 7 | TP_NOD_CONTORNO | VARCHAR2 | Y | Indica o tipo de contorno do nodulo. |
| 8 | TP_NOD_LIMITE | VARCHAR2 | Y | Indica o limite do nodulo. |
| 9 | TP_FORMA_MICROCALCIFICACAO | VARCHAR2 | Y | Indica a forma de micocalcificac?o. |
| 10 | TP_DISTRIBUICAO_MICROCALCIFICA | VARCHAR2 | Y | Indica a distribuic?o da microcalcificac?o. |
| 11 | TP_CATEGORIA | VARCHAR2 | Y | Indica a categora de avaliac?o de achados na mama. |
| 12 | TP_RECOMENDACAO | VARCHAR2 | Y | Indica a complementac?o, mamografia, controle radiologico da mama. |
| 13 | SN_NOD_ULTRA | VARCHAR2 | Y | Indica se fez ultrassonografia no nodulo. |
| 14 | TP_NOD_ULTRA | VARCHAR2 | Y | Indica o tipo da ultrassonografia realizada no nodulo. |
| 15 | NR_NOD_TAMANHO | NUMBER | Y |  |

---

## DBAMV.LAUDO_RX

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LAUDO | NUMBER | N |  |
| 2 | CD_PRESTADOR | NUMBER | N |  |
| 3 | CD_PED_RX | NUMBER | N |  |
| 4 | DS_LAUDO | LONG | Y |  |
| 5 | DT_LAUDO | DATE | Y |  |
| 6 | SN_EMITIDO | VARCHAR2 | Y |  |
| 7 | CD_PRESTADOR2 | NUMBER | Y |  |
| 8 | CD_TECNICO | NUMBER | Y |  |
| 9 | NM_USUARIO | VARCHAR2 | Y |  |
| 10 | HR_LAUDO | DATE | Y |  |
| 11 | CD_PRESTADOR_REALIZADO_POR_TEC | NUMBER | Y |  |
| 12 | CD_MULTI_EMPRESA | NUMBER | N | Coluna Criada na vers?o v4.5 |
| 13 | CD_GED_DOCUMENTO | NUMBER | Y |  |
| 14 | TP_LAUDO | VARCHAR2 | N | Grava o tipo edic?o em que o exame foi laudado: Normal ou Editor |
| 15 | CD_ENT_PSDI | NUMBER | Y | Chave estrangeira da tabela dbamv.ent_psdi |
| 16 | CD_LAUDO_INTEGRA | VARCHAR2 | Y | Codigo do laudo (de-para) |
| 17 | CD_SEQ_INTEGRA | NUMBER | Y | Codigo sequencial da integrac?o |
| 18 | DT_INTEGRA | DATE | Y | Data em que o registro foi integrado |
| 19 | DS_TITULO_LAUDO | VARCHAR2 | Y | Descric?o do Titulo do Laudo definida pelo usuario. |
| 20 | CD_USUARIO_ASSINADO | VARCHAR2 | Y | Codigo do usuario que liberou\assinou o laudo |
| 21 | DH_ASSINADO | DATE | Y | Data e Hora que o laudo foi liberado\assinado |
| 22 | CD_USUARIO_EMITIDO | VARCHAR2 | Y | Codigo do usuario que emitiu o laudo |
| 23 | DH_EMITIDO | DATE | Y | Data e Hora que o laudo foi emitido |
| 24 | SN_ENTREGUE | VARCHAR2 | N | Identificador - O laudo ja foi entregue ? |
| 25 | SN_ASSINADO | VARCHAR2 | N | Identificador - O laudo ja foi liberado\assinado ? |
| 26 | CD_PRESTADOR_ASSINATURA | NUMBER | Y | Codigo do 1? Prestador responsavel pela assinatura do laudo |
| 27 | CD_PRESTADOR_ASSINATURA2 | NUMBER | Y | Codigo do 2? Prestador responsavel pela assinatura do laudo |
| 28 | LO_ANEXO_LAUDO | BLOB | Y | Campo para adicionar laudo. |
| 29 | TP_RESULTADO | VARCHAR2 | Y | Resultado do laudo vindo da integração, pode ser P- Positivo ou N- Negativo |
| 30 | SN_NOTIFICACAO_CRITICIDADE | VARCHAR2 | Y | Indica que o laudo foi notificado como critio pela microdata |
| 31 | DS_NOTIFICACAO_CRITICIDADE | VARCHAR2 | Y | Descrição da notificação enviada pela microdata |
| 32 | SN_RESULTADO_PANICO | VARCHAR2 | Y | Serve para marcar se o resultado é de pânico. S = Resultado com pânico N=Resultado normal. |
| 33 | CD_USUARIO_RESULTADO_PANICO | VARCHAR2 | Y | Usuário que marcou o resultado como pânico. |
| 34 | DT_HR_RESULTADO_PANICO | DATE | Y | Data e hora que o usuário marcou o resultado do exame como pânico. |
| 35 | CD_CID | VARCHAR2 | Y | Código do CID Morfológico associado ao laudo. |

---

## DBAMV.LAUDO_SIA_APAC
> Tabela de Laudo APAC do SIA/SUS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LAUDO | NUMBER | N | Codigo sequencial do laudo |
| 2 | DT_COMPETENCIA | DATE | N | Mes e Ano que o laudo foi cadastrado. |
| 3 | TP_LAUDO | VARCHAR2 | N | Identificador para o laudo ( N-ovo ou R-enovac?o ). |
| 4 | CD_ATENDIMENTO | NUMBER | Y | Codigo de atendimento do paciente. |
| 5 | CD_PACIENTE | NUMBER | N | Codigo do paciente. |
| 6 | NR_APAC_RENOVACAO | NUMBER | Y | Numero da APAC que foi renovada no laudo. |
| 7 | NR_APAC_AUTORIZADA | NUMBER | Y | Numero da APAC Autorizada. |
| 8 | CD_TIP_ATE | NUMBER | N | Codigo do tipo de tratamento APAC. |
| 9 | CD_PRESTADOR | NUMBER | N | Codigo do prestador do laudo. |
| 10 | DT_LAUDO | DATE | N | Data de solicitação do laudo |
| 11 | NM_USUARIO | VARCHAR2 | Y | Nome do Usuario que digitou o laudo. |
| 12 | DS_DIAGNOSTICO | VARCHAR2 | Y | Descric?o do diagnostico para o paciente. |
| 13 | DS_DIAG_EXAME_CITO_HISTO | VARCHAR2 | Y | Denominac?o do tumor que consta no laudo do exame cito- ou histopatologico. |
| 14 | DT_EXAME_DIAG_CITO_HISTO | DATE | Y | Data do Diagnostico dos Exames Cito/Histopatologicos. |
| 15 | CD_SSM | VARCHAR2 | N | Codigo do procedimento principal do laudo. |
| 16 | QT_PROCEDIMENTO | NUMBER | Y | Quantidade do Procedimento Principal. |
| 17 | CD_CID_PRINCIPAL | VARCHAR2 | N | CID-10 Principal que corresponde a doenca/les?o de base que motivou, em especial, o atendimento a... |
| 18 | CD_CID_SECUNDARIO | VARCHAR2 | Y | CID-10 Secundario, ou seja que corresponde a doenca/les?o que iniciou a cadeia de acontecimentos ... |
| 19 | CD_CID_CAUSAS_ASSOCIADAS | VARCHAR2 | Y | CID-10 de Causas Associadas, ou seja, o(s) que corresponde(m) ao(s) de outra(s) deoncas concomita... |
| 20 | CD_CID_TOPOGRAFIA | VARCHAR2 | Y | CID-10, codigo topografico compativel com a localizac?o primaria do tumor informada. |
| 21 | DS_OBSERVACAO | VARCHAR2 | Y | Principais sinais e sintomas clinicos apresentados pelo paciente. |
| 22 | DT_INICIO_VALIDADE_APAC | DATE | Y | Data de inicio de validade da APAC. |
| 23 | DT_FINAL_VALIDADE_APAC | DATE | Y | Data de termino de validade da APAC. |
| 24 | DS_LOCALIZACAO_TUMOR | VARCHAR2 | Y | Nome de org?o/tecido de origem do tumor primario. |
| 25 | SN_LINFONODOS | VARCHAR2 | Y | Indica se existe linfonodos acometidos pelo tumor. |
| 26 | SN_AVALIAVEIS | VARCHAR2 | Y | Indica se avaliac?o pode ser feita. |
| 27 | CD_LOCALIZACAO_METASTASE | NUMBER | Y | Codigo que indica o(s) org?o(s) acometido(s) por les?o(?es) secundarias. |
| 28 | CD_ESTADIO | NUMBER | Y | Codigo do Estadio do Sistema da Uni?o Internacional Contra o Cancer (UICC). |
| 29 | DS_OUTRO_SISTEMA | VARCHAR2 | Y | Identifica quando a classificac?o do tumor n?o consta da classificac?o pelo Sistema TNM. |
| 30 | CD_GRAU_HISTOPATOLOGICO | VARCHAR2 | Y | Codigo do Grau de diferenciac?o tumoral constante do laudo do exame cito- ou histopatologico. |
| 31 | NR_TOTAL_MESES_PLANEJADOS | NUMBER | Y | Numero de meses que o tratamento demandara, e n?o com o numero de ciclos de quimioterapia. |
| 32 | NR_TOTAL_MESES_AUTORIZADOS | NUMBER | Y | Numero de meses de tratamentos ja transcorridos. |
| 33 | SN_TRATAMENTO_ANTERIOR | VARCHAR2 | Y | Indica se houve tratamentos anteriores. |
| 34 | SN_CONTINUIDADE | VARCHAR2 | Y | Indica se o tratamento solicitado ja vem sendo feito ou se trata de inicio de tratamento. |
| 35 | DT_INICIO_TRAT_SOLICITADO | DATE | Y | Dia, mes e ano de inicito de tratamento solicitado. |
| 36 | CD_ESQUEMA | NUMBER | Y | Codigo que indica siglas do medicamento ou denominar abreviadamente o esquema quimioterapico. |
| 37 | CD_FINALIDADE_TRATAMENTO | NUMBER | Y | Indica o tipo de finalidade da radioterapia, (Curativa, Adjuvante etc). |
| 38 | DT_INSCRICAO_REALIZADA | DATE | Y | Identifica para o tratamento de Hemodialise a data da primeira inscric?o realizada pelo paciente. |
| 39 | NR_GLICOSE | NUMBER | Y | Valor do resultado do exame da Glicose. |
| 40 | NR_HB | NUMBER | Y | Valor do resultado do exame de Hemoglobina. |
| 41 | SN_ACESSO_VASCULAR | VARCHAR2 | Y | Indica se houve acesso vascular. |
| 42 | SN_ULTRASONOGRAFIA_ABDOMINAL | VARCHAR2 | Y | Indica se foi realizado o exame de Ultrasonografia-Abdominal. |
| 43 | NR_HB_SEGUIMENTO | NUMBER | Y | Valor do resultado do exame de Hemoglobina de Seguimento. |
| 44 | NR_ALBUMINA_SEGUIMENTO | NUMBER | Y | Valor do resultado do exame de Albumina de Seguimento. |
| 45 | NR_INTERVENCAO_FISTOLA | NUMBER | Y | Numero de intervenc?o de fistola. |
| 46 | SN_INSCRITO_CNCDO | VARCHAR2 | Y | Indica se o(a) paciente esta inscrito(a) na lista das Centrais de Notificac?o, Capacitac?o e Dist... |
| 47 | SN_IMPRESSO | VARCHAR2 | Y | Indica se o laudo foi impresso. |
| 48 | SN_RETORNO_SECRETARIA | VARCHAR2 | Y | Indica se o laudo retornou da Secretaria de Saude. |
| 49 | SN_POSSUI_CONTA_FATURADA | VARCHAR2 | Y | Indica se o laudo que possui uma APAC Autorizada, esta com a mesma faturada. |
| 50 | CD_CONVENIO_OUTRO | NUMBER | Y | Codigo do convenio que identifica outro convenio do paciente. |
| 51 | CD_MULTI_EMPRESA | NUMBER | Y | Codigo da empresa. |
| 52 | TP_RESULTADO_HIV | VARCHAR2 | Y | Indica o resultado do exame HIV (P-ositivo, N-egativo). |
| 53 | TP_RESULTADO_HCV | VARCHAR2 | Y | Indica o resultado do exame HCV ( P-ositvo, N-egativo). |
| 54 | TP_RESULTADO_HBSAG | VARCHAR2 | Y | Indica o resultado do HBSAG (P-ositivo, N-egativo). |
| 55 | TP_RESULTADO_HIV_SEGUIMENTO | VARCHAR2 | Y | Indica o resultado do exame HIV (P-ositivo, N-egativo) de Seguimento. |
| 56 | TP_RESULTADO_HCV_SEGUIMENTO | VARCHAR2 | Y | Indica o resultado do exame HCV ( P-ositvo, N-egativo) de Seguimento. |
| 57 | TP_RESULTADO_HBSAG_SEGUIMENTO | VARCHAR2 | Y | Indica o resultado do HBSAG (P-ositivo, N-egativo) de Seguimento. |
| 58 | SN_POSSUI_CONVENIO | VARCHAR2 | Y | Indica se o paciente possui outro convenio. |
| 59 | CD_CID_MORFOLOGICO | VARCHAR2 | Y | Codigo do cid morfologico. |
| 60 | DS_ESQUEMA | VARCHAR2 | Y | Siglas do medicamento ou denominar abreviadamente o esquema quimioterapico. |
| 61 | DT_CONSULTA | DATE | Y | Armazena a data da primeira consulta. |
| 62 | CD_PROCEDIMENTO | VARCHAR2 | Y | Procedimento SUS tabela unificada |
| 63 | CD_AUTORIZADOR | NUMBER | Y | Codigo do Autorizador do Laudo |
| 64 | SN_METASTASE | VARCHAR2 | Y | Sim/N?o Metastase |
| 65 | NR_IMC_PACIENTE | NUMBER | Y | Indice de Massa Corporea do paciente |
| 66 | NR_AIH_BAR | NUMBER | Y | Numero AIH Cirurgia Bariatrica |
| 67 | CD_PROCEDIMENTO_AIH_BAR1 | VARCHAR2 | Y | Numero Procedimento AIH Cirurgia Bariatrica 1 |
| 68 | CD_PROCEDIMENTO_AIH_BAR2 | VARCHAR2 | Y | Numero Procedimento AIH Cirurgia Bariatrica 2 |
| 69 | CD_PROCEDIMENTO_AIH_BAR3 | VARCHAR2 | Y | Numero Procedimento AIH Cirurgia Bariatrica 3 |
| 70 | DT_CIRURGIA_BAR | DATE | Y | Data Cirurgia Bariatrica Pos |
| 71 | DT_CIRURGIA_POS_BAR | DATE | Y |  |
| 72 | QT_MESES_ACOMP_BAR | NUMBER | Y | Quantidade de meses Acompanhamento |
| 73 | DT_ACOMP_BAR | DATE | Y | Ano de Acompanhamento |
| 74 | CD_PONTUACAO_BAR | NUMBER | Y | Pontuac?o de Barros |
| 75 | CD_TABELA_BAR | NUMBER | Y | Tabela de Barros |
| 76 | NR_AIH_BAR_POS | NUMBER | Y | Numero AIH Pos Cirurgia Bariatrica |
| 77 | NR_CAMPO_IRRADIACAO | NUMBER | Y | Numero de campos a serem utilizados em um dia de rradiac?o. |
| 78 | DT_INICIO_PROGRAM_DIALITICO | DATE | Y | Data inicio do programa dialitico. |
| 79 | NR_TRANSP_ANTERIOR | NUMBER | Y | Numero de Transplantes Anteriores. |
| 80 | DT_ULTIMO_TRANSPLANTE | DATE | Y | Data do Ultimo Tranplante. |
| 81 | DT_INSCRICAO_LISTA_TRANSP | DATE | Y | Data de Inscric?o na Lista de Transplantes. |
| 82 | TP_SOROLOGIA_HBSAG | VARCHAR2 | Y | Sorologia do HBSAG. |
| 83 | DT_SOROLOGIA_HBSAG | DATE | Y | Data para Sorologia do HBSAG. |
| 84 | TP_SOROLOGIA_ANTI_HBS | VARCHAR2 | Y | Sorologia do Anti-HBS. |
| 85 | DT_SOROLOGIA_ANTI_HBS | DATE | Y | Data para Sorologia do Anti-HBS. |
| 86 | TP_SOROLOGIA_HIV | VARCHAR2 | Y | Sorologia do HIV. |
| 87 | DT_SOROLOGIA_HIV | DATE | Y | Data para Sorologia do HIV. |
| 88 | TP_SOROLOGIA_ANTI_HCV | VARCHAR2 | Y | Sorologia do Anti-HCV. |
| 89 | DT_SOROLOGIA_ANTI_HCV | DATE | Y | Data para Sorologia do Anti-HCV. |
| 90 | DT_DOSE_VACINA_HEPATITE_1 | DATE | Y | Competencia da 1? Dose da Vacina Contra Hepatite B. |
| 91 | DT_DOSE_VACINA_HEPATITE_2 | DATE | Y | Competencia da 2? Dose da Vacina Contra Hepatite B. |
| 92 | DT_DOSE_VACINA_HEPATITE_3 | DATE | Y | Competencia da 3? Dose da Vacina Contra Hepatite B. |
| 93 | DT_DOSE_VACINA_HEPATITE_4 | DATE | Y | Competencia da 4? Dose da Vacina Contra Hepatite B. |
| 94 | NR_UREIA_PRE | NUMBER | Y | Ureia Pre. |
| 95 | NR_UREIA_POS | NUMBER | Y | Ureia Pos. |
| 96 | NR_CREATININA | NUMBER | Y | Creatinina |
| 97 | NR_ALBUMINA_PRIMEIRO_TRAT | NUMBER | Y | Albumina |
| 98 | NR_HCT | NUMBER | Y | HCT |
| 99 | NR_CALCIO | NUMBER | Y | Calcio. |
| 100 | NR_INTERNACAO | NUMBER | Y | Intervac?es. |
| 101 | NR_ACESSO_VASCULAR | NUMBER | Y | Acesso Vasculares. |
| 102 | NR_PERITONITE | NUMBER | Y | Peritonites. |
| 103 | DS_ERITROPOETINA_MES_ANTERIOR | VARCHAR2 | Y | Eritropoetina do Mes Anterior(Com Dose). |
| 104 | DS_ANALAGO_DA_VITAMINA | VARCHAR2 | Y | Analogo da Vitamina D (Com Dose). |
| 105 | DS_RESULTADO_PROVA_DIAGNOSTICA | VARCHAR2 | Y | Resultado de Provas Diagnosticas. |
| 106 | NR_QUANTIDADE_1_MES | NUMBER | Y | Quantidade de Sess?es do 1? Mes. |
| 107 | NR_QUANTIDADE_2_MES | NUMBER | Y | Quantidade de Sess?es do 2? Mes. |
| 108 | NR_QUANTIDADE_3_MES | NUMBER | Y | Quantidade de Sess?es do 3? Mes. |
| 109 | NR_DOSE_AREA | NUMBER | Y | Dose/Area. |
| 110 | NR_CAMPO_AREA_DIA | NUMBER | Y | Campos/Area/Dia. |
| 111 | NR_TOTAL_DIA_AREA | NUMBER | Y | total de Dias/Area. |
| 112 | NR_CHECK_FILM | NUMBER | Y | Numero de Check-Filmes. |
| 113 | NR_INSERCAO_AREA | NUMBER | Y | Numero de Inserc?es. |
| 114 | DS_MASCARA | VARCHAR2 | Y | Mascara. |
| 115 | NR_BLOCO_PRE | NUMBER | Y | Numero de Blocos Pres. |
| 116 | NR_TOTAL_CAMPO_PREVISTO | NUMBER | Y | Numero Total de Campos Previstos. |
| 117 | NR_CAMPO_JA_PAGO | NUMBER | Y | Numero de Campos Ja Pagos. |
| 118 | DT_FINAL_TRATAMENTO | DATE | Y | Data Final do Tratamento Solicitado. |
| 119 | SN_GERADO | VARCHAR2 | Y | Indica que o laudo foi gerado e enviado para autorizac?o. |
| 120 | CD_ESTABELECIMENTO | NUMBER | Y | Codigo do Estabelecimento solicitante. |
| 121 | NR_ALTURA_PACIENTE | NUMBER | Y | Altura do paciente. |
| 122 | NR_PESO_PACIENTE | NUMBER | Y | Peso do paciente. |
| 123 | NR_DIURESE | NUMBER | Y | Valor do resultado do exame de Diurese. |
| 124 | TP_MARCA_PROTESE | VARCHAR2 | Y | Marca da protese: 1-PIP 2-ROFIL |
| 125 | DT_IMPLANTACAO_PROTESE | DATE | Y | Ano de implantac?o da protese |
| 126 | NR_CNES_IMPLANTACAO_PROTESE | NUMBER | Y | CNES do executante da implantac?o da protese |
| 127 | VL_PERC_EXCESSO_PESO_PERDIDO | NUMBER | Y | Percentual de excesso de peso perdido % |
| 128 | VL_QUILOS_PERDIDOS | NUMBER | Y | Quilogramas Perdidos kg |
| 129 | SN_GASTRECTOMIA_DUODENAL | VARCHAR2 | Y | Gastrectomia com ou sem desvio duodenal S = Sim, N = N?o |
| 130 | SN_GASTRECTOMIA_VERTICA_MANGA | VARCHAR2 | Y | Gastrectomia Vertica em Manga (Sleeve) S = Sim, N = N?o |
| 131 | SN_GASTROPLASTIA_DERIV_INTEST | VARCHAR2 | Y | Gastroplastia com derivac?o intestinal S = Sim, N = N?o |
| 132 | SN_GASTRECTOMIA_VERT_BANDA | VARCHAR2 | Y | Gastroplastia vertical com banda S = Sim, N = N?o |
| 133 | SN_COMORBIDADES | VARCHAR2 | Y | Comorbidades S = Sim, N = N?o |
| 134 | SN_HIPERT_ARTERIAL_SISTEMICA | VARCHAR2 | Y | Hipert.Arterial Sistemica |
| 135 | SN_DISLIPIDEMIA | VARCHAR2 | Y | Dislipidemia |
| 136 | SN_ARTROSE | VARCHAR2 | Y | Artrose |
| 137 | SN_APNEIA | VARCHAR2 | Y | Apneia |
| 138 | CD_CID_OUTROS | VARCHAR2 | Y |  |
| 139 | SN_USO_MEDICAMENTOS | VARCHAR2 | Y | Uso de Medicamentos S = Sim, N = N?o |
| 140 | SN_PRATICA_ATIVIDADE_FISICA | VARCHAR2 | Y | Pratica Atividade Fisica S = Sim, N = N?o |
| 141 | SN_USO_POLIVITAMINICOS | VARCHAR2 | Y | Uso de Polivitaminico S = Sim, N = N?o |
| 142 | SN_REGANHO_PESO | VARCHAR2 | Y | Reganho de Peso |
| 143 | SN_ALIMEN_SAUDADEL_BALANCEADA | VARCHAR2 | Y | Houve ades?o a uma alimentac?o saudavel e balanceada S = Sim, N = N?o |
| 144 | SN_DERMOLIC_ABDOM_POS_BARIAT | VARCHAR2 | Y | Dermilopectomia abdominal pos-pariatrica S = Sim, N = N?o |
| 145 | QT_TMP_POS_CIRURGIA_BARIATRICA | NUMBER | Y | Tempo pos cirugia bariatrica (meses) |
| 146 | SN_MAMOPLASTIA_POS_BARIATRICA | VARCHAR2 | Y | Mamoplastia pos-bariatrica S = Sim, N = N?o |
| 147 | QT_TMP_MAMAPLASTICA_POS | NUMBER | Y | Tempo pos cirugia bariatrica (meses) |
| 148 | SN_DERMOLIC_BRANQ_POS_BARIAT | VARCHAR2 | Y | Dermolictomia Braquial pos-bariatrica (S = Sim, N = N?o) |
| 149 | QT_TMP_DERMOLICTOMIA_BRANQUIAL | NUMBER | Y | Tempo pos cirugia bariatrica (meses) |
| 150 | SN_DERMOLIC_CRURAL_POS_BARIAT | VARCHAR2 | Y | Dermolictomia Crural pos-bariatrica (S = Sim, N = N?o) |
| 151 | QT_TMP_DERMOLICTOMIA_CRURAL | NUMBER | Y | Tempo pos cirugia bariatrica (meses) |
| 152 | SN_DERM_ABDOM_CIRC_POS_BARIAT | VARCHAR2 | Y | Dermolictomia abdminal circunferencial pos-bariatrica (S = Sim, N = N?o) |
| 153 | QT_TMP_DERMOLICTOMIA_ABDOMINAL | NUMBER | Y | Tempo pos cirugia bariatrica (meses) |
| 154 | VL_IMC_ATUAL | NUMBER | Y | IMC ATUAL do Paciente |
| 155 | DT_AVALIACAO_ATUAL | DATE | Y | Data avaliac?o ATUAL |
| 156 | VL_PESO | NUMBER | Y | Peso (kg) |
| 157 | VL_IMC_PRIMEIRA_AVALIACAO | NUMBER | Y | IMC da Primeira Avalic?o |
| 158 | DT_PRIMEIRA_AVALIACAO | DATE | Y | Data da Primeira avaliac?o |
| 159 | SN_NUTRICIONISTA | VARCHAR2 | Y | Nutricionista (S = Sim, N = N?o) |
| 160 | SN_PSIQUIATRIA | VARCHAR2 | Y | Psiquiatra (S = Sim, N = N?o) |
| 161 | SN_CIRURGIAO_GERAL | VARCHAR2 | Y | Cirurgi?o Geral (S=Sim,N=N?o) |
| 162 | SN_PSICOLOGO | VARCHAR2 | Y | Psicologo (S = Sim, N = N?o) |
| 163 | SN_ENDOCRINO | VARCHAR2 | Y | Endocrino (S = Sim, N = N?o) |
| 164 | SN_CLINICO | VARCHAR2 | Y | Clinico (S = Sim, N = N?o) |
| 165 | SN_CIRURG_APARELHO_DIGESTIVO | VARCHAR2 | Y | Cirurgi?o do aparelho digestivo (S = Sim, N = N?o) |
| 166 | SN_REUNIOES_GRP_MULTIPROFIS | VARCHAR2 | Y | Participou de Reuni?es do grupo multiprofissionais (S = Sim, N = N?o) |
| 167 | SN_AVALIACAO_RISCO_CIRURGICO | VARCHAR2 | Y | Avaliac?o do risco cirurgico (S = Sim, N = N?o) |
| 168 | SN_EXAMES_LABORATORIAIS | VARCHAR2 | Y | Realizado Exames Laboratoriais (S = Sim, N = N?o) |
| 169 | SN_DIABETES_MELLITUS | VARCHAR2 | Y | Diabetes Mellitus |
| 170 | SN_ESOFAGOGASTRODUODENOSCOPIA | VARCHAR2 | Y | Esofagogastroduodenoscopia (S = Sim, N = N?o) |
| 171 | SN_PERDA_PONDERAL | VARCHAR2 | Y |  |
| 172 | SN_ULTRASON_ABDOMEN_TOTAL | VARCHAR2 | Y | Ultra-sonografia de abdomen total (S = Sim, N = N?o) |
| 173 | SN_ECOCARDIO_TRASTORATICA | VARCHAR2 | Y | Ecocardiografia trastoracica (S = Sim, N = N?o) |
| 174 | SN_ULTRASSO_DOPLLER_COLORIDO | VARCHAR2 | Y | Ultrassonografia dopller colorido (ate 3 vasos) (S = Sim, N = N?o) |
| 175 | SN_PRV_FUNC_PULM_COMP_BRONCO | VARCHAR2 | Y | Prova de funcc?o plumonar completa com broncodialatador (espirometria) (S = Sim, N = N?o) |
| 176 | SN_APTO_PROCEDIMENTO_CIRURGICO | VARCHAR2 | Y | Apto para procedimento cirurgiso (S = Sim, N = N?o, A = Ainda em preparo) |
| 177 | CD_ORI_ATE | NUMBER | Y | Codgo de origem do atendimento. |
| 178 | CD_SERVICO_SUS | VARCHAR2 | Y | Codigo do servico |
| 179 | CD_CLASSIFICACAO_SUS | VARCHAR2 | Y | Codigo da classificac?o |
| 180 | SN_FECHADA | VARCHAR2 | Y | Indica se o laudo está fechado e consistido. |
| 181 | NR_FOSFORO | NUMBER | Y |  |
| 182 | NR_KTV | NUMBER | Y |  |
| 183 | NR_TRU | NUMBER | Y |  |
| 184 | NR_ALBUMINA | NUMBER | Y |  |
| 185 | DT_AUTORIZACAO | DATE | Y | Data de autorização do laudo |
| 186 | SN_CIRURGIA_BARIATRICA_VIDEO | VARCHAR2 | Y | Cirurgia Bariátrica por Vídeo (S = Sim, N = Não) |

---

## DBAMV.LAUDO_SIA_APAC_ESQUEMA
> Tabela para os registros dos esquemas relacionados ao laudo.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LAUDO | NUMBER | N | Codigo do laudo vindo ta tabela laudo_sia_apac |
| 2 | CD_ESQUEMA | NUMBER | N | Codigo do esquema vindo da tabela esquema. |

---

## DBAMV.LAUDO_SIA_APAC_METASTASE
> Tabela que registras as regi?es afetadas pela metastase no registro do Laudo.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LAUDO | NUMBER | N | Codigo do laudo vindo da tabela laudo_sia_apac |
| 2 | CD_METASTASE | NUMBER | N | Codigo do campo de metastase vindo da tabela mestastase |

---

## DBAMV.LOCAL_IMPRESSAO_ETIQUETA_AMOST
> Local de impressão de etiquetas de amostras

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOCAL_IMPRESSAO | NUMBER | N | Sequence da tabela. |
| 2 | CD_MULTI_EMPRESA | NUMBER | N | Sequence da empresa |
| 3 | MAQUINA | VARCHAR2 | N | Máquina vinculada ao local de impressão |
| 4 | DS_TERMINAL | VARCHAR2 | N | Terminal de impressão configurado no GIW. |
| 5 | SN_PADRAO | VARCHAR2 | N | Indica se o local de impressão está ativo. |
| 6 | SN_PRIORIDADE | VARCHAR2 | N | Indica se o terminal de impressão possui prioridade. |

---

## DBAMV.LOCAL_PADRAO_ENTREGA
> Cadastro de locais padr?es para entrega de laudos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOCAL_PADRAO | NUMBER | N | Codigo identificador do local padr?o de entrega de resultados de exames |
| 2 | DS_LOCAL_PADRAO | VARCHAR2 | N | Descric?o do local padr?o de entrega de resultados de exames |
| 3 | DS_LOGRADOURO | VARCHAR2 | N | Logradouro do local padr?o para entrega de resultados de exames |
| 4 | NR_LOGRADOURO | VARCHAR2 | Y | Numero no logradouro |
| 5 | DS_COMPLEMENTO | VARCHAR2 | Y | Complemento do endereco |
| 6 | NM_BAIRRO | VARCHAR2 | Y | Nome do bairro |
| 7 | NR_CEP | VARCHAR2 | Y | Codigo de enderecamento postal |
| 8 | NR_TELEFONE | VARCHAR2 | Y | Telefones de contato |
| 9 | NR_CELULAR | VARCHAR2 | Y | Telefones celular de contato |
| 10 | NR_FAX | VARCHAR2 | Y | Numero do tele-fax |
| 11 | DS_EMAIL | VARCHAR2 | Y | Endereco eletronico |
| 12 | CD_CIDADE | NUMBER | N |  |

---

## DBAMV.MANIPULA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MANIPULA | NUMBER | N |  |
| 2 | CD_ESTOQUE | NUMBER | N |  |
| 3 | CD_PRODUTO | NUMBER | N |  |
| 4 | CD_UNI_PRO | NUMBER | N |  |
| 5 | DT_PRODUCAO | DATE | N |  |
| 6 | QT_PRODUZIDA | NUMBER | N |  |
| 7 | DT_VALIDADE | DATE | Y |  |
| 8 | VL_ADICIONAL | NUMBER | Y |  |
| 9 | VL_TOTAL | NUMBER | Y |  |
| 10 | QT_PERDA | NUMBER | Y |  |
| 11 | HR_PRODUCAO | DATE | N |  |
| 12 | CD_CUSTO_MEDIO | NUMBER | N |  |
| 13 | CD_CUSTO_MEDIO_MESTRE | NUMBER | Y |  |

---

## DBAMV.MANIPULADOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MANIPULADOR | NUMBER | N |  |
| 2 | DS_MANIPULADOR | VARCHAR2 | N |  |

---

## DBAMV.MOVIMENTACAO_STANDBY_EXAME
> Tabela de sinalizac?o dos Exames que est?o em Stand by na Area Tecnica do laboratorio.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MOV_STANDBY_EXAME | NUMBER | N | Codigo de identificac?o do Stand By |
| 2 | CD_ITPED_LAB | NUMBER | N | Codido do Exame que esta em stand by |
| 3 | CD_USU_INI | VARCHAR2 | N | Codido do usuario que colocou o Exame em stand by |
| 4 | DH_INICIO | DATE | N | Data que o Exame entrou em stand by |
| 5 | DS_MOTIVO_ENTRADA | VARCHAR2 | N | Motivo que o Exame entrou em stand by |
| 6 | CD_USU_FIM | VARCHAR2 | Y | Codido do usuario que tirou o Exame de stand by |
| 7 | DH_FIM | DATE | Y | Data que o Exame saiu de stand by |
| 8 | DS_MOTIVO_SAIDA | VARCHAR2 | Y | Motivo que o Exame Saiu de stand by |

---

## DBAMV.MOV_AMOSTRA
> Tabela de registro de movimentac?es de amostras laboratoriais.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MOV_AMOSTRA | NUMBER | N | Codigo Sequencial da movimentac?o o registro de movimentac?o da Amostra. |
| 2 | CD_SET_EXA | NUMBER | N | Codigo do Setor Executante do qual pertence a Bancada. |
| 3 | CD_BANCADA | NUMBER | N | Codigo da bancada onde se encontra a amostra. |
| 4 | CD_COLETA_MATERIAL | NUMBER | N | Codigo da Solicitac?o de Coleta associado a amostra. |
| 5 | CD_AMOSTRA | NUMBER | N | Codigo da Amostra que esta sendo movimentada. |
| 6 | DT_MOV_AMOSTRA | DATE | N | Data em que foi registrada a movimentac?o da amostra. |
| 7 | HR_MOV_AMOSTRA | DATE | N | Hora em que foi registrada a movimentac?o da amostra. |
| 8 | CD_USUARIO_MOV_AMOSTRA | VARCHAR2 | N | Usuario responsavel pelo registro da movimentac?o da amostra. |

---

## DBAMV.OBSERVACAO_BLOQUEIO_EXAME
> Cadastro de observações de bloqueios de exames

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_OBSERVACAO_BLOQUEIO_EXAME | NUMBER | N | Sequence da tabela. |
| 2 | DS_OBSERVACAO_BLOQUEIO_EXAME | VARCHAR2 | N | Observação de bloqueio |

---

## DBAMV.OBSERVACAO_PRE_DEFINIDA
> Observações pré definidas a serem inseridas nos laudos de cultura.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_OBSERVACAO_PRE_DEFINIDA | NUMBER | N | Código da observação do exame. |
| 2 | NM_OBSERVACAO_PRE_DEFINIDA | VARCHAR2 | N | Descrição da observação |
| 3 | DS_OBSERVACAO_PRE_DEFINIDA | VARCHAR2 | N | Texto Pré definido da Obeservação. |
| 4 | CD_EXA_LAB | NUMBER | Y | Código do exame. |
| 5 | DS_MNEMONICO | VARCHAR2 | N | Mnemonico da observação. |

---

## DBAMV.ORDEM_IMPRESSAO_LAUDO
> TABELA REFERENTE AS ORDENS DE IMPRESSAO DOS LAUDOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORDEM_IMPRESSAO_LAUDO | NUMBER | N | CODIGO DE IDENTIFICACAO DA TABELA ORDEM IMPRESSAO LAUDO \| PRIMARY KEY(PK) DA TABELA |
| 2 | DS_ORDEM_IMPRESSAO_LAUDO | VARCHAR2 | N | DESCRICAO DA ORDEM DE IMPRESSAO DOS LAUDOS |
| 3 | NR_ORDEM_IMPRESSAO | NUMBER | N | NUMERO DE ORDEM DA IMPRESSAO |
| 4 | SN_ATIVO | VARCHAR2 | N | ATIVO - (S, N) |
| 5 | CD_USUARIO_INCLUSAO | VARCHAR2 | Y | CODIGO DO USUARIO QUE INCLUIU O REGISTRO |
| 6 | DT_INCLUSAO | DATE | Y | DATA DE INCLUSAO DO REGISTRO |

---

## DBAMV.ORDEM_IMPRESSAO_LAUDO_SETOR
> TABELA REFERENTE AS ORDENS DE IMPRESSAO DOS LAUDOS POR SETOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORD_IMPRESSAO_LAUDO_SETOR | NUMBER | N | CODIGO DE IDENTIFICACAO DA TABELA ORDEM IMPRESSAO LAUDO SETOR \| PRIMARY KEY(PK) DA TABELA |
| 2 | CD_ORDEM_IMPRESSAO_LAUDO | NUMBER | N | CODIGO DE IDENTIFICACAO DA TABELA ORDEM IMPRESSAO LAUDO \| FOREIGN KEY(PK) DA TABELA |
| 3 | CD_SETOR | NUMBER | N | CODIGO DO SETOR \| FOREIGN KEY(PK) DA TABELA |
| 4 | NR_ORDEM_IMPRESSAO_SETOR | NUMBER | N | CODIGO DO SETOR \| FOREIGN KEY(PK) DA TABELA |
| 5 | SN_ATIVO | VARCHAR2 | N | ATIVO - (S, N) |

---

## DBAMV.ORIENTACAO_EXAME
> TABELA PARA AS ORIENTAÇÕES USADAS NOS EXAMES.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORIENTACAO_EXAME | NUMBER | N | CÓDIGO SEQUENCIAL DA ORIENTAÇÃO. |
| 2 | DS_ORIENTACAO_EXAME | VARCHAR2 | N | DESCRIÇÃO DO TIPO DA ORIENTAÇÃO. |
| 3 | DS_TEXTO_ORIENTACAO_EXAME | VARCHAR2 | N | TEXTO DA ORIENTAÇÃO DE EXAME. |
| 4 | CD_TIPO_ORIENTACAO_EXAME | NUMBER | Y | CÓDIGO SEQUENCIAL DO TIPO DA ORIENTAÇÃO. |
| 5 | NR_FATOR_PRIORIDADE | NUMBER | Y | NÚMERO DE PRIODADE DA ORIENTAÇÃO. |

---

## DBAMV.PACTUACAO_EXAME
> Tabela de cotas pactuadas para exames

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REFERENCIA | NUMBER | N | CÃ³digo da referÃªncia da pactuaÃ§Ã£o |
| 2 | CD_TIPO_PACTUACAO | NUMBER | N | CÃ³digo do tipo da pactuaÃ§Ã£o |
| 3 | CD_GRUPO_EXAME | NUMBER | N | CÃ³digo do grupo de exame da pactuaÃ§Ã£o |
| 4 | NR_VALOR_PACTUADO | NUMBER | Y | Valor pactuado |
| 5 | NR_VALOR_RECEBIDO | NUMBER | Y | Valor recebido referente a movimentaÃ§Ãµes de cotas |
| 6 | NR_VALOR_UTILIZADO | NUMBER | Y | Valor utilizado da cota |
| 7 | NR_VALOR_TRANSFERIDO | NUMBER | Y | Valor transferido referente a movimentaÃ§Ãµes de cotas |

---

## DBAMV.PALAVRAS_CHAVE_LAUDO
> Tabela de palavras chave do laudo.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PALAVRAS_CHAVE_LAUDO | NUMBER | N | Codigo  identificar das palavras chave. |
| 2 | CD_LAUDO_RX | NUMBER | N | Codigo do laudo do  exame. |
| 3 | DS_PALAVRAS_CHAVE_LAUDO | VARCHAR2 | Y | Palavras  chave cadastrada, separadas por virgula. |

---

## DBAMV.PEDIDO_EMPENHO
> Pedido de Empenho

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PEDIDO | NUMBER | N | Codigo do Pedido |
| 2 | DT_PEDIDO | DATE | Y | Data do Pedido |
| 3 | HR_PEDIDO | DATE | Y | Hora do Pedido |
| 4 | CD_USUARIO | VARCHAR2 | Y | Usuario do Pedido |
| 5 | CD_SETOR | NUMBER | Y | Codigo do Setor do Pedido |
| 6 | NM_RESPONSAVEL | VARCHAR2 | Y | Nome do Responsavel do Pedido |
| 7 | CD_ESTOQUE | NUMBER | Y | Codigo do Estoque do Pedido |
| 8 | DS_OBSERVACAO | VARCHAR2 | Y | Descric?o da Obeservac?o do Pedido |
| 9 | TP_FECHAMENTO | VARCHAR2 | Y | Tipo do Fechamento do Pedido |
| 10 | DT_FECHAMENTO | DATE | Y | Data do Fechamento do Pedido |
| 11 | CD_USUARIO_FECHAMENTO | VARCHAR2 | Y | Usuario que Fechou o Pedido |
| 12 | CD_USUARIO_CANCEL | VARCHAR2 | Y | Usuario do Cancelamento do Pedido |
| 13 | DT_CANCELAMENTO | DATE | Y | Data do Cancelamento do Pedido |
| 14 | CD_MOT_CANCEL | NUMBER | Y | Codigo Motivo do Cancelamento do Pedido |
| 15 | DS_MSG2 | VARCHAR2 | Y | Descric?o da Mensagem |
| 16 | DS_MSG3 | VARCHAR2 | Y | Descric?o da Mensagem |
| 17 | DS_MSG1 | VARCHAR2 | Y | Descric?o da Mensagem |
| 18 | CD_FORNECEDOR | NUMBER | Y | Codigo do Fornecedor do Pedido |
| 19 | CD_SOL_COM | NUMBER | Y | Codigo da Solicitac?o de Compra |
| 20 | DT_VALIDADE | DATE | Y | Data de Validade |
| 21 | CD_PEDIDO_PRE | NUMBER | Y | Codigo do Pedido |

---

## DBAMV.PEDIDO_EMPENHO_FORNECEDOR
> Tabela de fornecedores de pedidos de empenho

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PEDIDO | NUMBER | Y | Codigo do pedido |
| 2 | CD_FORNECEDOR | NUMBER | N | Codigo do fornecedor |
| 3 | NR_EMPENHO | VARCHAR2 | N | Numero do empenho |
| 4 | DT_ENTREGA_EMPENHO | DATE | Y | Data de entrega do empenho |
| 5 | DS_RESPONSAVEL_RECEBIMENTO | VARCHAR2 | Y | Responsavel pelo recebimento do pedido |
| 6 | CD_USUARIO | VARCHAR2 | Y | Usuario |
| 7 | DT_CADASTRO | DATE | Y | Data de cadastro |
| 8 | HR_CADASTRO | DATE | Y | Hora de cadastro |
| 9 | CD_COLETA | NUMBER | Y | Codigo da coleta |
| 10 | CD_ORD_COM | NUMBER | Y | Codigo da Ordem de Compra |
| 11 | DT_CONTRATO | DATE | Y | Data do contrato |
| 12 | NR_PRAZO | NUMBER | Y | Prazo |

---

## DBAMV.PEDIDO_EMPENHO_FORNEC_REVOG
> Tabela de revogac?o de pedidos de empenho

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REVOGACAO | NUMBER | N | Codigo da revogacao |
| 2 | DT_CADASTRO | DATE | Y | Data de cadastro |
| 3 | CD_USUARIO | VARCHAR2 | Y | Usuario |
| 4 | NR_EMPENHO | VARCHAR2 | Y | Numero do empenho |
| 5 | CD_FORNECEDOR | NUMBER | Y | Codigo do fornecedor |
| 6 | DT_REVOGACAO | DATE | Y | Data de revogacao |
| 7 | DS_RESPONSAVEL_REVOGACAO | VARCHAR2 | Y | Usuario responsavel pela revogac?o |
| 8 | DS_OBSERVACAO | VARCHAR2 | Y | Observac?o |
| 9 | NR_DIAS | NUMBER | Y | Numero de dias |

---

## DBAMV.PLAUDOS_CONFIGURACOES
> Tabela para armazenamento de configurações do Portal de Laudos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFIGURACAO | NUMBER | N | Código de identificação da configuração (compatibilidade) |
| 2 | SN_AUTORIZA_MEDICO_AUTO | VARCHAR2 | N | Indica se os novos cadastros de médico serão autorizados automaticamente |
| 3 | SN_OBRIGA_DOC_MEDICO | VARCHAR2 | N | Indica se o formulário de cadastro vai obrigar cópias dos documentos do médico |
| 4 | DS_SMTP_SERVIDOR | VARCHAR2 | Y | Endereço do servidor SMTP |
| 5 | NR_SMTP_PORTA | NUMBER | Y | Porta do servidor SMTP |
| 6 | DS_SMTP_USUARIO | VARCHAR2 | Y | Usuário de autenticação no servidor SMTP |
| 7 | DS_SMTP_SENHA | VARCHAR2 | Y | Senha de autenticação no servidor SMTP |
| 8 | DS_URL_EXTERNA | VARCHAR2 | Y | URL de acesso externo ao sistema |
| 9 | DS_REMETENTE_EMAIL | VARCHAR2 | Y | Descrição do remetente dos e-mails |
| 10 | SN_ENVIA_EMAIL_DESAUTORIZACAO | VARCHAR2 | N | Indica se será enviado um e-mail de desautorização ao usuário |
| 11 | DS_EMAIL_REMETENTE | VARCHAR2 | N | Armazena o endereço de e-mail do remetente no Portal de Laudos |
| 12 | TP_SMTP_AUTENTICACAO | VARCHAR2 | N | Armazena o tipo de autenticação para envio de e-mails no Portal de Laudos. D = Padrão, T = TLS, S... |
| 13 | SN_ATIVA_DEPENDENTE | VARCHAR2 | N | Ativa a inclusão e visualização de dependentes |
| 14 | SN_LISTA_EXAME_PROIBIDO | VARCHAR2 | N | Ativa a listagem dos exames proibidos na web. Observação: Não libera o download, apenas lista. |
| 15 | SN_LOGIN_LEGADO | VARCHAR2 | N | Ativa o login do legado. Não necessita de cadastro. |
| 16 | SN_USA_RECAPTCHA | VARCHAR2 | N | Coluna criada para verificar se o sistema usará o recaptcha ou não. |
| 17 | DS_SITE_KEY | VARCHAR2 | Y | Coluna criada para guarda a chave pública do recaptcha. |
| 18 | DS_SITE_SECRET | VARCHAR2 | Y | Coluna criada para guarda a chave pública do recaptcha. |
| 19 | SN_OCULTAR_PACIENTE_INTERNADO | VARCHAR2 | N | Ocultar os laudos enquanto o paciente estiver internado? |
| 20 | SN_LOGIN_CPF | VARCHAR2 | N | Autorizar login utilizando numero do CPF |
| 21 | SN_RESTRICAO_REUTILIZAR_SENHA | VARCHAR2 | N | Validar restricoes contra reutilizacao de senhas |
| 22 | NR_QTD_NAO_REUTILIZAR_SENHA | NUMBER | Y | Validar quantidade de senhas que nao podera ser reutilizadas |
| 23 | SN_DEP_PACIENTE_CADASTRADO | VARCHAR2 | N | Possibilidade de vincular como dependente um paciente que já possui cadastro no portal de laudos |
| 24 | SN_VISUALIZA_TODOS_EXAMES | VARCHAR2 | N | Indica se o sistema fará restrição de visualização de resultado de exames no perfil de médico. |
| 25 | QT_TEMPO_SESSAO | NUMBER | Y | Indica a quantidade de tempo para verificação de sessão inativa. |

---

## DBAMV.PONTO_CURVA_MAT_TUBO
> Pontos da curva dinâmica por material x tudo do exame

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PONTO_CURVA_MAT_TUBO | NUMBER | N | Sequence da tabela. |
| 2 | CD_CONFIG_CURVA_MAT_TUBO | NUMBER | N | FK da Configuração da curva |
| 3 | NR_TEMPO | NUMBER | Y | Tempo do ponto da curva |
| 4 | DS_PONTO | VARCHAR2 | Y | Descrição do ponto da curva |

---

## DBAMV.POP
> Tabela de POP - Procedimento oparacional padr?o para exames.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_POP | NUMBER | N | Codigo identificar do POP. |
| 2 | CD_EXA_LAB | NUMBER | N | Codigo do exame. |
| 3 | CD_SET_EXA | NUMBER | N | Codigo do setor de exame executante. |
| 4 | DS_PRESTADOR_APROVA_LIBERA | VARCHAR2 | Y | nome do prestador que aprova e libera o POP. |
| 5 | DS_PRESTADOR_REVISA_LIBERA | VARCHAR2 | Y | nome do prestador que revisa e libera o POP. |
| 6 | NR_VERSAO | NUMBER | Y | Vers?o do POP. |
| 7 | NR_DOCUMENTO | VARCHAR2 | Y | Numero do documento. |
| 8 | NR_COPIAS | NUMBER | Y | Quantidade de copias. |
| 9 | DS_DISTRIBUICAO | VARCHAR2 | Y | Descric?o da distribuic?o. |
| 10 | DS_METODOLOGIA | VARCHAR2 | Y | Descric?o da metodologia. |
| 11 | DS_PRINCIPIO_TESTE | VARCHAR2 | Y | Descric?o do principio de teste. |
| 12 | DS_PREPARO | VARCHAR2 | Y | Descric?o do preparo. |
| 13 | DS_INSTRUCOES_ESPECIAIS | VARCHAR2 | Y | Descric?o de instruc?es especiais. |
| 14 | DS_COLETA_AMOSTRA | VARCHAR2 | Y | Descric?o da coleta de amostra. |
| 15 | DS_TIPO_AMOSTRA | VARCHAR2 | Y | Descric?o do tipo da amostra. |
| 16 | DS_REAGENTES | VARCHAR2 | Y | Descric?o do reagente. |
| 17 | DS_CALIBRACAO | VARCHAR2 | Y | Descric?o sobre calibrac?es. |
| 18 | DS_FRASCOS_ADEQUADOS | VARCHAR2 | Y | Descric?o dos frascos adequados. |
| 19 | DS_ESTABILIDADE_ARMAZENAMENTO | VARCHAR2 | Y | Descric?o sobre estabilidade de armazenamento. |
| 20 | DS_ENCAMINHAMENTO | VARCHAR2 | Y | Codigo da Guia Especifica do exame de imagem. |
| 21 | DS_AMOSTRAS_INADEQUADAS | VARCHAR2 | Y | Descric?o das amostras inadequadas. |
| 22 | DS_PREPARACAO | VARCHAR2 | Y | Descric?o preparac?o. |
| 23 | DS_FREQUENCIA | VARCHAR2 | Y | Descric?o sobre a frequencia. |
| 24 | DS_CONTROLE_INTERNO | VARCHAR2 | Y | Descric?o controle interno. |
| 25 | DS_CONTROLE_EXTERNO | VARCHAR2 | Y | Descric?o controle externo. |
| 26 | DS_AUTOMACAO | VARCHAR2 | Y | Descric?o automac?o. |
| 27 | DS_CALCULOS | VARCHAR2 | Y | Descric?o calculos. |
| 28 | DS_PREPARO_CONTROLE_INTERNO | VARCHAR2 | Y | Descric?o sobre o preparo para controle interno. |
| 29 | DS_PREPARO_CONTROLE_EXTERNO | VARCHAR2 | Y | Descric?o sobre o prepara para controle externo. |
| 30 | DS_FREQUENCIA_UTILIZACAO | VARCHAR2 | Y |  |
| 31 | DS_LINEARIDADE_LIMITE_DETECCAO | VARCHAR2 | Y | Descric?o linearidade e limite de detecc?o. |
| 32 | DS_PROCEDIMENTO_TEC_DETALHADO | VARCHAR2 | Y | Codigo da Guia Especifica do exame de imagem. |
| 33 | DS_ADEQUACAO_RESULTADOS | VARCHAR2 | Y | Descric?o sobre adequac?o dos resultados. |
| 34 | DS_NOTIFICACAO_ESPECIAL | VARCHAR2 | Y | Descric?o sobre notificac?o especial. |
| 35 | DS_VALOR_REFERENCIA | VARCHAR2 | Y | Descric?o valores de referencia. |
| 36 | DS_LIMITACOES_METODO | VARCHAR2 | Y | Descric?o limitac?es de metodo. |
| 37 | DS_APLICACAO_CLINICA | VARCHAR2 | Y | Descric?o aplicac?o clinica. |
| 38 | DS_REF_BIBLIOGRAFICA | VARCHAR2 | Y | Referencias bibliograficas. |
| 39 | DS_PADROES_CONTROLES | VARCHAR2 | Y | Descric?o de padr?es, controles e reativos. |
| 40 | DS_INTERFERENTES | VARCHAR2 | Y | Descric?o de interferentes. |
| 41 | DS_INTERPRETACAO_RESULTADO | VARCHAR2 | Y | Descric?o das interpretac?es dos resultados. |
| 42 | TP_POP | VARCHAR2 | N | Tipo do POP, L = Laboratorial e I = Imagem. |

---

## DBAMV.PREST_SETOR_SOLIC_EXAME
> Lançamento de Exames por Prestador

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRESTADOR | NUMBER | Y | Prestador Solicitante do Corpo Clinico |
| 2 | CD_PRESTADOR_EXT | NUMBER | Y | Prestador Solicitante Externo |
| 3 | CD_SETOR | NUMBER | N | Setor Solicitante |
| 4 | CD_EXA_LAB | NUMBER | N | Exame |
| 5 | CD_MATERIAL | NUMBER | Y | Material do exame |
| 6 | CD_TUBO_COLETA | NUMBER | Y | Códido do tubo de coleta vinculado ao material |
| 7 | CD_PACIENTE | NUMBER | N | Códido do paciente |
| 8 | CD_LABORATORIO | NUMBER | N | Código do laboratório |
| 9 | CD_SET_EXA | NUMBER | N | Setor executante do exame |
| 10 | NR_CRM | VARCHAR2 | N | Código do CRM do prestador |
| 11 | SN_SECUNDARIO | VARCHAR2 | Y | Exame do tipo secundário |
| 12 | CD_PRE_MED | NUMBER | Y |  |

---

## DBAMV.PRIORID_PED_LAB
> Tabela de prioridade de exame

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRIORID_PED_LAB | NUMBER | N | Código da Tabela de pergunta de exame |
| 2 | CD_PED_LAB | NUMBER | N | Código do Pedido de Exames |
| 3 | CD_PRIORID_PACIENTE | NUMBER | N | Código da prioridade |

---

## DBAMV.PRODUCAO_LAUDOS_SUS
> Tabela para exportação dos laudos SUS.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRODUCAO | NUMBER | N | Código de controle da Produção. |
| 2 | NR_LINHA | NUMBER | N | Número da linha a ser exportada. |
| 3 | DT_GERACAO | DATE | N | Data da Geração. |
| 4 | CD_REG_FAT | NUMBER | N | Conta exportada. |
| 5 | DS_LINHA | VARCHAR2 | Y | Conteúdo da linha a ser exportada. |

---

## DBAMV.RACK_AMOSTRA
> Tabela de Cadastro das amostras vinculadas ao rack

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_RACK_AMOSTRA | NUMBER | N | Sequence |
| 2 | CD_RACK | NUMBER | N | C??digo do rack |
| 3 | CD_PED_LAB | NUMBER | N | C??digo do pedido de exame |
| 4 | CD_AMOSTRA | NUMBER | N | C??digo da amostra |
| 5 | CD_ITPED_LAB | NUMBER | N | C??digo da item do pedido utilizado na amostra com PK |
| 6 | CD_LOTE_BANCADA | NUMBER | Y | C??digo do lote gerado |
| 7 | NR_SEQ_RACK | NUMBER | N | Sequencia que a amostra esta ocupando no rack |
| 8 | DT_SEQUENCIA | DATE | N | Data em que a sequencia foi adicionada ao rack |
| 9 | SN_FECHADO | VARCHAR2 | N | Indicador que o lote foi gerado |

---

## DBAMV.RACK_EXA_LAB
> Tabela Cadastro exames dos Racks

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_RACK | NUMBER | N | C??digo do rack |
| 2 | CD_EXA_LAB | NUMBER | N | C??digo do exame. |

---

## DBAMV.RATEIO_SADT_SIH
> Cadastro de regras de rateio de exames

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GRUPO_PROCEDIMENTO | VARCHAR2 | Y | Grupo do Procedimento |
| 2 | CD_SUB_GRUPO_PROCEDIMENTO | VARCHAR2 | Y | Sub Grupo de Procedimento |
| 3 | CD_ORGANIZA_GRUPO_PROCEDIMENTO | VARCHAR2 | Y | Forma de Organização |
| 4 | CD_PROCEDIMENTO | VARCHAR2 | Y | Procedimento |
| 5 | VL_PERC_TETO | NUMBER | Y | Percentual de calculo do teto |

---

## DBAMV.RECEBIMENTO_AUTORIZACAO_AIH
> Controla o recebimento de lista de laudos para autotizac?o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONTROLE_AUTORIZACAO_AIH | NUMBER | N | Codigo do controle de autorizac?es AIH |
| 2 | NR_SEQUENCIAL | NUMBER | N |  |
| 3 | CD_USUARIO | VARCHAR2 | N | Usuario que recebeu a autorizac?o do item selecionado |
| 4 | DT_RECEBIMENTO | DATE | N | Data e hora que o item foi selecionado para recebimento |

---

## DBAMV.RECEPCAO_AMOSTRA
> Tabela de armazenamento das Recepc?es de Amostras.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_RECEPCAO_AMOSTRA | NUMBER | N | Codigo da Recepc?o de Amostras. |
| 2 | DS_RECEPCAO_AMOSTRA | VARCHAR2 | N | Descric?o da Recepc?o de Amostras. |
| 3 | SN_ATIVO | VARCHAR2 | N | Ativac?o/Inativac?o da Recepc?o de Amostras. S = Ativo, N = Inativo. |
| 4 | SN_INATIVA_ROTEAMENTO_AMOSTRA | VARCHAR2 | N | Inativa o roteramento de amostra |
| 5 | SN_INATIVA_ROTEAMENTO_FDS | VARCHAR2 | N | Inatividade de rot. de amostra no final de semana e feriado |
| 6 | HR_INICIO_ROTEAMENTO_INATIVO | DATE | Y | Horário inicial de inatividade do rot. de amostra. |
| 7 | HR_FINAL_ROTEAMENTO_INATIVO | DATE | Y | Horário final de inatividade de rot. de amostra |

---

## DBAMV.REFERENCIA_ANALISE
> Tabela de Referencias utilizadas para amparar o Resultado das Analises de Produtos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REFERENCIA_ANALISE | NUMBER | N | Codigo da Referencia utilizada para fornecer o resultado da Analise |
| 2 | DS_REFERENCIA_ANALISE | VARCHAR2 | N | Descric?o da Referencia utilizada para fornecer o resultado da Analise |

---

## DBAMV.REGIAO_ANATOMICA_LAUD_SIA_APAC
> Regi?es anatomicas por laudo.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LAUDO | NUMBER | N | Codigo do laudo APAC. |
| 2 | CD_REGIAO_ANATOMICA | NUMBER | N | Codigo da regi?o anatomica. |

---

## DBAMV.REMESSA_AMOSTRA
> Tabela de Cadastro das Amostras relacionadas a Remessa de Coleta.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REMESSA_COLETA | NUMBER | N | Codigo da Remessa de Coleta cuja amostra esta associada. |
| 2 | CD_AMOSTRA | NUMBER | N | Codigo da Amostra. |
| 3 | CD_COLETA_MATERIAL | NUMBER | N | Codigo da Solicitac?o de Coleta da qual faz parte a amostra. |
| 4 | DT_RECEPCAO | DATE | Y | Data de recepc?o da amostra pelo setor de destino. |
| 5 | HR_RECEPCAO | DATE | Y | Data de recepc?o da amostra pelo setor de destino. |
| 6 | CD_USUARIO_RECEPCAO | VARCHAR2 | Y | Usuario que recepcionou a amostra dentro do setor de destino. |

---

## DBAMV.REMESSA_COLETA
> Tabela de Cadastro das Remessas de Coleta a serem enviadas para o Laboratorio

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REMESSA_COLETA | NUMBER | N | Codigo de identificac?o da Remessa de Amostras |
| 2 | TP_REMESSA | VARCHAR2 | N | Identificador do Tipo da Remessa: I - Interna ou E - Externa (Laboratorios de Apoio) |
| 3 | DT_CADASTRO | DATE | N | Data em que foi cadastrada a remessa |
| 4 | HR_CADASTRO | DATE | N | Hora em que foi cadastrada a remessa |
| 5 | CD_USUARIO_CADASTRO | VARCHAR2 | N | Usuario responsavel pelo cadastro da remessa. |
| 6 | DT_ENVIO | DATE | Y | Data em que as amostras relacionadas a remessa foram enviadas ao Setor de Destino. |
| 7 | HR_ENVIO | DATE | Y | Hora em que as amostras relacionadas a remessa foram enviadas ao Setor de Destino. |
| 8 | CD_POSTO_COLETA | NUMBER | Y | Posto de Coleta onde foi gerada a remessa. |
| 9 | CD_SET_EXA | NUMBER | N | Codigo do Setor Executante de Destino para onde ser?o encaminhadas as amostras da remessa. |
| 10 | DS_OBSERVACAO | VARCHAR2 | Y | Descric?o das observac?es referentes a remessa. |
| 11 | TP_SITUACAO | VARCHAR2 | N | Situac?o atual da remessa: G - Gerada, F - Fechada ou C - Cancelada. |
| 12 | DT_FECHAMENTO | DATE | Y | Data em que a remessa foi fechada para envio. |
| 13 | HR_FECHAMENTO | DATE | Y | Hora em que a remessa foi fechada para envio. |
| 14 | CD_USUARIO_FECHAMENTO | VARCHAR2 | Y | Usuario responsavel pelo fechamento da remessa. |
| 15 | CD_MOTIVO_CANCELAMENTO | NUMBER | Y | Codigo do Motivo de Cancelamento da remessa. |
| 16 | DT_CANCELAMENTO | DATE | Y | Data em que a remessa foi cancelada. |
| 17 | HR_CANCELAMENTO | DATE | Y | Hora em que a remessa foi cancelada. |
| 18 | CD_USUARIO_CANCELA | VARCHAR2 | Y | Usuario responsavel pelo cancelamento da remessa. |
| 19 | SN_REIMPRESSO | VARCHAR2 | Y | Informa se o relatório de remessa de amostra já foi impresso. S se já foi impresso N se não foi i... |

---

## DBAMV.RESPOSTA
> Cadastro de respostas de exames laboratoriais e de imagem

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_RESPOSTA | NUMBER | N | Codigo identificador do registro |
| 2 | DS_RESPOSTA | VARCHAR2 | N | Descric?o da resposta |

---

## DBAMV.RESTRICAO_EXAME_PSSD
> Tabela para armazenar as restrições de solictação de exames

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_RESTRICAO_EXAME_PSSD | NUMBER | N | Código único da restrição |
| 2 | CD_EXA_LAB | NUMBER | Y | Código do exame |
| 3 | SN_APENAS_LIBERADO | VARCHAR2 | Y | Indica que a restrição só ira funcionar caso o exame já tenha sido liberado S=Sim N=Não |
| 4 | TP_ATENDIMENTO | VARCHAR2 | Y | Tipo de atendimentos A = Ambulatório, B = Busca Ativa, E = Externo, H = Home Care, I = Internação... |
| 5 | TP_RESTRICAO | VARCHAR2 | Y | Tipo de restrição D = Duplicação de Exame, T = Tipo de Atendimento |
| 6 | DS_OBSERVACAO | VARCHAR2 | Y | Observação da restrição. |
| 7 | DATA_INICIO | DATE | Y | Data inicio Restrição |
| 8 | DATA_FIM | DATE | Y | Data fim Restrição |
| 9 | SN_PERMITE_EXCECAO | VARCHAR2 | Y | Permitir a exceção na restrição de exame S="SIM" N="NÃO". |
| 10 | NR_DIAS_BLOQUEIO | NUMBER | Y | Quantidade de dias em que o exame não poderá ser solicitado. |

---

## DBAMV.RESTRICAO_HORARIO
> Armazena informac?es sobre restric?o de horarios de solicitac?o do exame

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_RESTRICAO_HORARIO | NUMBER | N | Chave primaria da tabela |
| 2 | CD_EXA_LAB | NUMBER | N | Codigo identificador do exame |
| 3 | CD_SET_EXA | NUMBER | N | Codigo identificador do setor de exame |
| 4 | NR_SEMANA | NUMBER | N | Dia da semana conforme formatac?o Oracle |
| 5 | HR_INICIAL | DATE | N | Horario do inicio da restric?o |
| 6 | HR_FINAL | DATE | N | Horario do final da restric?o |
| 7 | SN_ATIVO | VARCHAR2 | N | Identifica se o registro esta ativo |

---

## DBAMV.RESULTADO_EXAME_LAUDO_APAC
> Tabela de configurac?o para tratar a integrac?o do laudo APAC.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MULTI_EMPRESA | NUMBER | N | Codigo do Multi-Empresa |
| 2 | CD_TIP_ATE | NUMBER | N | Codigo do tipo de atendimento APAC |
| 3 | CD_EXA_LAB | NUMBER | N | Codigo do Exame - PSSD |
| 4 | NR_ORDEM_DE_PERGUNTA | NUMBER | N | Ordem de Pergunta (PK para o resultado do exame) |
| 5 | CD_VERSAO | NUMBER | N | Vers?o do Laudo do Exame |
| 6 | DS_CAMPO_DESTINO | VARCHAR2 | Y | Para onde sera recuperado o resultado do exame. |

---

## DBAMV.RESULTADO_PADRAO
> Tabela de Resultados Padr?es das Analises dos Ensaios realizados nos Produtos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_RESULTADO_PADRAO | NUMBER | N | Codigo de identificac?o do Resultado Padr?o |
| 2 | DS_RESULTADO_PADRAO | VARCHAR2 | N | Descric?o do Resultado Padr?o |

---

## DBAMV.RES_EXA
> Tabela de Resultados de campos dos Exames  - Laboratorio

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PED_LAB | NUMBER | N | Codigo do Pedido de Exame |
| 2 | CD_EXA_LAB | NUMBER | N | Codigo do Exame Laboratorial |
| 3 | CD_VERSAO | NUMBER | N | Codigo da Vers?o do Layout do Laudo |
| 4 | NM_CAMPO | VARCHAR2 | N | Descric?o do Campo do Exame |
| 5 | DS_RESULTADO | VARCHAR2 | Y | Descric?o do Resultado |
| 6 | CD_ORDEM_PERGUNTA | NUMBER | N | Numero de ordem da visualizac?o da pergunta |
| 7 | CD_ITPED_LAB | NUMBER | N | Codigo do Exame Solicitado no Pedido |
| 8 | DS_JUSTIFICATIVA | VARCHAR2 | Y | Descric?o da Justificativa para valores controlados |
| 9 | TP_RESULTADO | VARCHAR2 | Y | Tipo do Resultado |
| 10 | IM_GRAFICO | VARCHAR2 | Y | Imagem referente ao resultado do campo do Laudo |
| 11 | DS_RESULTADO_CODIFICADO | VARCHAR2 | Y | Resultado codificado do Exame |
| 12 | DS_NORMAL_ABSOLUTO | VARCHAR2 | Y | Descric?o do valor de referencia normal absoluto |
| 13 | VL_NORMAL_ABSO_REF_INICIO | NUMBER | Y | Valor de inicio para o valor de referencia normal absoluto |
| 14 | VL_NORMAL_ABSO_REF_FIM | NUMBER | Y | Valor fim para o valor de referencia normal absoluto |
| 15 | DS_NORMAL_PERCENTUAL | VARCHAR2 | Y | Descric?o do valor de referencia normal percentual |
| 16 | VL_NORMAL_PERC_REF_INICIO | NUMBER | Y | Valor de inicio para o valor de referencia normal percentual |
| 17 | VL_NORMAL_PERC_REF_FIM | NUMBER | Y | Valor fim para o valor de referencia normal percentual |
| 18 | DS_LIMITE_ABSOLUTO | VARCHAR2 | Y | Descric?o do valor de referencia limite absoluto |
| 19 | VL_LIMITE_ABSO_REF_INICIO | NUMBER | Y | Valor de inicio para o valor de referencia limite absoluto |
| 20 | VL_LIMITE_ABSO_REF_FIM | NUMBER | Y | Valor fim para o valor de referencia limite absoluto |
| 21 | DS_LIMITE_PERCENTUAL | VARCHAR2 | Y | Descric?o do valor de referencia limite percentual |
| 22 | VL_LIMITE_PERC_REF_INICIO | NUMBER | Y | Valor de inicio para o valor de referencia limite percentual |
| 23 | VL_LIMITE_PERC_REF_FIM | NUMBER | Y | Valor fim para o valor de referencia limite percentual |
| 24 | DS_ABSURDO_ABSOLUTO | VARCHAR2 | Y | Descric?o do valor de referencia absurdo absoluto |
| 25 | VL_ABSURDO_ABSO_REF_INICIO | NUMBER | Y | Valor de inicio para o valor de referencia absurdo absoluto |
| 26 | VL_ABSURDO_ABSO_REF_FIM | NUMBER | Y | Valor fim para o valor de referencia absurdo absoluto |
| 27 | DS_ABSURDO_PERCENTUAL | VARCHAR2 | Y | Descric?o do valor de referencia absurdo percentual |
| 28 | VL_ABSURDO_PERC_REF_INICIO | NUMBER | Y | Valor de inicio para o valor de referencia absurdo percentual |
| 29 | VL_ABSURDO_PERC_REF_FIM | NUMBER | Y | Valor fim para o valor de referencia absurdo percentual |
| 30 | DS_TEXTO_REFERENCIA_NORMAL | VARCHAR2 | Y | Texto para referencia de resultado normal |
| 31 | DS_MASCARA_VALOR_NORM_ABSO_REF | VARCHAR2 | Y | Mascara para valores de referencia absolutos normal |
| 32 | DS_TEXTO_REFERENCIA_LIMITE | VARCHAR2 | Y | Texto para referencia de resultado limite |
| 33 | DS_MASCARA_VALOR_LIMT_ABSO_REF | VARCHAR2 | Y | Mascara para valores de referencia absolutos limite |
| 34 | DS_TEXTO_REFERENCIA_ABSURDO | VARCHAR2 | Y | Texto para referencia de resultado absurdo |
| 35 | DS_MASCARA_VALOR_ABSU_ABSO_REF | VARCHAR2 | Y | Mascara para valores de referencia absolutos absurdo |
| 36 | DS_UNIDADE | VARCHAR2 | Y | Coluna que contem a unidade de medida usada no resultado do exame |
| 37 | DS_COMENTARIO | VARCHAR2 | Y | Comentario sobre o resultado do exame |
| 38 | VL_PANICO_ABSO_REF_INICIO | NUMBER | Y | Valor absoluto inicial para o valor de referencia de panico |
| 39 | VL_PANICO_ABSO_REF_FIM | NUMBER | Y | Valor absoluto final para o valor de referencia de panico |
| 40 | DS_METODOLOGIA | VARCHAR2 | Y |  |
| 41 | LO_GRAFICO | BLOB | Y | Grafico de resultado de exame |

---

## DBAMV.SESCALA_EXA_LAB
> Tabela de Configurac?es de Exames realizados na Escala

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ESCALA | NUMBER | N | Codigo de Identificac?o da Escala |
| 2 | CD_EXA_LAB | NUMBER | N | Codigo de Identificac?o do Exame Laboratorial |

---

## DBAMV.SESC_DIA_EXA_LAB
> Tabela de Exames realizados no Plant?o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ESCALA_DIA | NUMBER | N | Codigo de identificac?o do Plant?o |
| 2 | CD_EXA_LAB | NUMBER | N | Codigo do Exame habilitado para realizac?o no Plant?o |
| 3 | CD_SEQ_INTEGRA | NUMBER | Y | Codigo sequencial do registro integrado |
| 4 | DT_INTEGRA | DATE | Y | Data de integrac?o com registro |

---

## DBAMV.SET_EXA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SET_EXA | NUMBER | N |  |
| 2 | NM_SET_EXA | VARCHAR2 | N |  |
| 3 | TP_SETOR | VARCHAR2 | N |  |
| 4 | NM_ATUAL_CONTROLE | NUMBER | Y |  |
| 5 | SN_NUMERA_AUTO | VARCHAR2 | N |  |
| 6 | CD_SETOR | NUMBER | N |  |
| 7 | DS_CABECALHO | VARCHAR2 | Y |  |
| 8 | DS_RODAPE | VARCHAR2 | Y |  |
| 9 | DS_CAMINHO_IMPRESSAO_EXAME | VARCHAR2 | Y |  |
| 10 | CD_PRESTADOR | NUMBER | Y |  |
| 11 | TP_LAUDO | VARCHAR2 | Y |  |
| 12 | ORDEM_TEXTO | VARCHAR2 | N |  |
| 13 | SN_LISTA_EXAMES | VARCHAR2 | N |  |
| 14 | SN_CD_TECNICO | VARCHAR2 | N |  |
| 15 | SN_IMPRIME_TEXTO_PADRAO | VARCHAR2 | N |  |
| 16 | LOGOTIPO | LONG RAW | Y |  |
| 17 | CLOB_CABECALHO | CLOB | Y |  |
| 18 | CLOB_RODAPE | CLOB | Y |  |
| 19 | CD_CABECALHO_GED_DOCUMENTO | NUMBER | Y |  |
| 20 | CD_RODAPE_GED_DOCUMENTO | NUMBER | Y |  |
| 21 | SN_ATIVO | VARCHAR2 | N | Flag que indica se o setor esta ativo ou n?o. |
| 22 | CD_USUARIO_DESATIVACAO | VARCHAR2 | Y | Usuario que desativou o Setor de exames |
| 23 | DT_DESATIVACAO | DATE | Y | Data em que se desativou o Setor de exames |
| 24 | CD_SET_EXA_INTEGRA | VARCHAR2 | Y | Codigo do setor executante (de-para) |
| 25 | CD_SEQ_INTEGRA | NUMBER | Y | Codigo sequencial do registro integrado |
| 26 | DT_INTEGRA | DATE | Y | Data de integrac?o do registro |
| 27 | TP_ORIGEM_PREST_FAT | VARCHAR2 | N | Indica a Origem do Prestador a Faturar. |
| 28 | CD_PRESTADOR_SUS | NUMBER | Y | Prestador SUS do setor. |
| 29 | TP_NOTIFICACAO | VARCHAR2 | Y | Tipo de notificac?o que sera utilizado. N = N?o utilizar, S - SMS, E - Email, T - Todos (SMS e EM... |
| 30 | DS_REMETENTE_SMS | VARCHAR2 | Y | Descric?o do remetente da mensagem SMS |
| 31 | DS_TEXTO_SMS | VARCHAR2 | Y | Texto pre-configurado para mensagem SMS |
| 32 | DS_EMAIL_SETOR | VARCHAR2 | Y |  |
| 33 | DS_CABECALHO_EMAIL | VARCHAR2 | Y | Cabecalho pre-definido do envio de email |
| 34 | DS_CORPO_EMAIL | VARCHAR2 | Y | Cabecalho pre-definido do corpo de e-mail |
| 35 | DS_RODAPE_EMAIL | VARCHAR2 | Y | Rodape pre-definido do rodape do e-mail |
| 36 | DS_URL_SOULMV | VARCHAR2 | Y |  |
| 37 | DS_URL_PEP | VARCHAR2 | Y |  |
| 38 | SN_IMPRIME_REMESSA_AMOSTRA | VARCHAR2 | N | Imprime ou não o relatório de remessa |
| 39 | SN_AMOSTRA_LABORATORIO_APOIO | VARCHAR2 | Y | Indica se serão geradas amostras para o setor do laboratorio de apoio |
| 40 | SN_HABILITA_LAUDO_LIS_TERCEIRO | VARCHAR2 | N | Indica se ser habilitada a exibio dos laudos disponibilizados pelo LIS terceiro no HIS por setor ... |

---

## DBAMV.SET_EXA_BKP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SET_EXA | NUMBER | N |  |
| 2 | NM_SET_EXA | VARCHAR2 | N |  |
| 3 | TP_SETOR | VARCHAR2 | N |  |
| 4 | NM_ATUAL_CONTROLE | NUMBER | Y |  |
| 5 | SN_NUMERA_AUTO | VARCHAR2 | N |  |
| 6 | CD_SETOR | NUMBER | N |  |
| 7 | DS_CABECALHO | VARCHAR2 | Y |  |
| 8 | DS_RODAPE | VARCHAR2 | Y |  |
| 9 | DS_CAMINHO_IMPRESSAO_EXAME | VARCHAR2 | Y |  |
| 10 | CD_PRESTADOR | NUMBER | Y |  |
| 11 | TP_LAUDO | VARCHAR2 | Y |  |
| 12 | ORDEM_TEXTO | VARCHAR2 | N |  |
| 13 | SN_LISTA_EXAMES | VARCHAR2 | N |  |
| 14 | SN_CD_TECNICO | VARCHAR2 | N |  |
| 15 | SN_IMPRIME_TEXTO_PADRAO | VARCHAR2 | N |  |
| 16 | CD_CABECALHO_GED_DOCUMENTO | NUMBER | Y |  |
| 17 | CD_RODAPE_GED_DOCUMENTO | NUMBER | Y |  |
| 18 | SN_ATIVO | VARCHAR2 | N |  |
| 19 | CD_USUARIO_DESATIVACAO | VARCHAR2 | Y |  |
| 20 | DT_DESATIVACAO | DATE | Y |  |
| 21 | CD_SET_EXA_INTEGRA | VARCHAR2 | Y |  |
| 22 | CD_SEQ_INTEGRA | NUMBER | Y |  |
| 23 | DT_INTEGRA | DATE | Y |  |
| 24 | TP_ORIGEM_PREST_FAT | VARCHAR2 | N |  |
| 25 | CD_PRESTADOR_SUS | NUMBER | Y |  |
| 26 | TP_NOTIFICACAO | VARCHAR2 | Y |  |
| 27 | DS_REMETENTE_SMS | VARCHAR2 | Y |  |
| 28 | DS_TEXTO_SMS | VARCHAR2 | Y |  |
| 29 | DS_EMAIL_SETOR | VARCHAR2 | Y |  |
| 30 | DS_CABECALHO_EMAIL | VARCHAR2 | Y |  |
| 31 | DS_CORPO_EMAIL | VARCHAR2 | Y |  |
| 32 | DS_RODAPE_EMAIL | VARCHAR2 | Y |  |
| 33 | DS_URL_SOULMV | VARCHAR2 | Y |  |
| 34 | DS_URL_PEP | VARCHAR2 | Y |  |
| 35 | SN_IMPRIME_REMESSA_AMOSTRA | VARCHAR2 | N |  |
| 36 | SN_AMOSTRA_LABORATORIO_APOIO | VARCHAR2 | Y |  |

---

## DBAMV.SET_EXA_CARTA_COMPARECIMENTO
> Tabela para armazenar os setores que poder?o utilizar o modelo de carta de comparecimento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CARTA_COMPARECIMENTO | NUMBER | N | Codigo da Carta de comparecimento. |
| 2 | CD_SET_EXA | NUMBER | N | Codigo do Setor de Exames. |

---

## DBAMV.SET_EXA_MATERIAL
> Restricao de setores aptos a realizar o exame com o material informado

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EXA_LAB | NUMBER | N | Codigo do exame |
| 2 | CD_SET_EXA | NUMBER | N | Codigo do setor exec. que estara apto a realizar o exame com o material informado |
| 3 | CD_MATERIAL | NUMBER | N | Codigo do do material |

---

## DBAMV.SET_EXA_PADRAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SET_EXA_PAD | NUMBER | N |  |
| 2 | CD_UNID_INT | NUMBER | Y |  |
| 3 | CD_SETOR | NUMBER | N |  |
| 4 | CD_TIP_ESQ | VARCHAR2 | N |  |
| 5 | CD_SET_EXA | NUMBER | N |  |
| 6 | CD_TIP_PRESC | NUMBER | Y |  |

---

## DBAMV.SET_EXA_PADRAO_HOR_ESP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SET_EXA_PAD | NUMBER | N |  |
| 2 | DH_DIA_FERIADO | NUMBER | N |  |
| 3 | DH_INICIAL | DATE | N |  |
| 4 | DH_FINAL | DATE | N |  |
| 5 | CD_SET_EXA | NUMBER | N |  |

---

## DBAMV.SET_EXA_UNIDADE_ANALITICA
> Tabela de Cadastro das Unidades Analiticas associadas ao Setor Executante.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SET_EXA | NUMBER | N | Codigo do Setor Executante. |
| 2 | CD_UNIDADE_ANALITICA | NUMBER | N | Codigo da Unidade Analitica associada ao Setor Executante. |

---

## DBAMV.SNOMEDCT_CONFIG_SAE_RESULT_ENF
> Tabela de mapeamento SNOMECT com os resultados de enfermagem

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SNOMEDCT_CONFIG_SAE_RES_ENF | NUMBER | N | Código sequencial da tabela gerado pela sequence SEQ_SNOMEDCT_CONF_SAE_RES_ENF |
| 2 | CD_SNOMEDCT | NUMBER | N | Código do SNOMED-CT relacionado |
| 3 | CD_CONFIG_SAE_RESULTADO_ENFER | NUMBER | N | Código do Resultado  de Enfermagem relacionado |
| 4 | SN_PRINCIPAL | VARCHAR2 | N | Indica se é um mapeamento principal/preferencial. Apenas um pode ter valor S |
| 5 | SN_ATIVO | VARCHAR2 | N | Indica se o mapeamento esta ativo |

---

## DBAMV.SOROTECA_ACERVO
> Tabela responsável pelo armazenamento de amostras para a Soroteca e Laminoteca

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ACERVO | NUMBER | N | Código do registro do acervo |
| 2 | CD_AMOSTRA | NUMBER | N | Código da amostra armazenada |
| 3 | CD_COLETA_MATERIAL | NUMBER | N | Código do material da amostra |
| 4 | CD_CONGELADOR | NUMBER | N | Código do congelador onde a amostra está armazenada |
| 5 | CD_RACK | NUMBER | N | Código do rack onde a amostra está armazenada |
| 6 | NR_PRATELEIRA | NUMBER | N | Número da prateleira onde a amostra está armazenada |
| 7 | NR_LINHA | NUMBER | N | Linha da prateleira onde a amostra está armazenada |
| 8 | NR_COLUNA | NUMBER | N | Coluna da prateleira onde a amostra está armazenada |
| 9 | DH_CADASTRO | DATE | N | Data do armazenamento da amostra |
| 10 | DT_EXPURGO | DATE | Y | Data máxima do expurgo da amostra |
| 11 | SN_RETIRADA | VARCHAR2 | N | Indica se a amostra foi retirada |
| 12 | DH_RETIRADA | DATE | Y | Indica quando a amostra foi retirada |

---

## DBAMV.SOROTECA_MOTIVO
> Tabela de motivos de expurgo e retirada de amostra para a Soroteca e Laminoteca

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MOTIVO | NUMBER | N | Código do motivo |
| 2 | DS_MOTIVO | VARCHAR2 | N | Descrição do motivo |

---

## DBAMV.SOROTECA_MOVIMENTO
> Tabela responsável pela movimentação de amostras para a Soroteca e Laminoteca

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MOVIMENTO | NUMBER | N | Código do movimento da amostra |
| 2 | CD_AMOSTRA | NUMBER | N | Código da amostra movimentada |
| 3 | CD_COLETA_MATERIAL | NUMBER | N | Código do material da amostra |
| 4 | CD_CONGELADOR | NUMBER | N | Código do congelador onde a amostra foi movimentada |
| 5 | CD_RACK | NUMBER | N | Código do rack onde a amostra foi movimentada |
| 6 | CD_USUARIO | VARCHAR2 | N | Código do usuário que realizou o movimento |
| 7 | CD_MOTIVO | NUMBER | Y | Código do motivo de movimento de expurgo, retirada ou exclusão |
| 8 | NR_PRATELEIRA | NUMBER | N | Número da prateleira onde a amostra foi movimentada |
| 9 | NR_LINHA | NUMBER | N | Linha da prateleira onde a amostra foi movimentada |
| 10 | NR_COLUNA | NUMBER | N | Coluna da prateleira onde a amostra foi movimentada |
| 11 | DT_EXPURGO | DATE | Y | Data do vencimento da amostra |
| 12 | DH_MOVIMENTO | DATE | N | Data e hora do movimento da amostra |
| 13 | TP_MOVIMENTO | VARCHAR2 | N | Tipo de movimento da amostra. C - Cadastro / T - Transferência / E - Expurgo / D - Exclusão / R -... |

---

## DBAMV.SUBSTANCIA_INTERFERENCIA_RES
> Armazena as substancias que interferem no resultado do exame.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SUBSTANCIA_INTERFENCIA_RES | NUMBER | N | Sequence da tabela. |
| 2 | CD_SUBSTANCIA | NUMBER | N | Código da Substancia |
| 3 | CD_EXA_LAB | NUMBER | N | Código do Exame. |
| 4 | SN_ATIVO | VARCHAR2 | N | Ativa ou desativa. |

---

## DBAMV.TUBO_REGRA_SUB_AMOSTRA
> Tabela para armazenar os tubos e quantidades de subamostras a serem gerados pela regra de geração.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TUBO_REGRA_SUB_AMOSTRA | NUMBER | N | Sequence da regra de geração da sub-amostra. |
| 2 | CD_REGRA_GERACAO_SUB_AMOSTRA | NUMBER | N |  |
| 3 | CD_TUBO_COLETA | NUMBER | Y | Código do tubo. |
| 4 | NR_QUANTIDADE | NUMBER | N | Quantidade de Sub-Amostras que serão geradas. |
| 5 | CD_USUARIO | VARCHAR2 | N | Usuario que cadastrou |
| 6 | DT_ULT_ALTERACAO | DATE | N | Data da ultima alteração |
| 7 | SN_SELECAO_DEFAULT | VARCHAR2 | N | Indica que o tubo deve ser carregado selecionado nas telas de preparação de subamostra |

---

## DBAMV.VALIDA_CID_LAUDO_SUS
> Tabela dos procedimentos que n?o ser?o validados (Procedimento e CID) na criac?o do Laudo AIH (Hospital Santa Marcelina).

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROCEDIMENTO | VARCHAR2 | Y | Codigo do Procedimento que n?o sera validado |
| 2 | SN_ATIVO | VARCHAR2 | N | Informa se o a retirada da critica esta ou n?o ativa. |

---

## DBAMV.VIA_TRATAMENTO_LAUDO_SIA_APAC
> Cadastro de via de tratamento por laudo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LAUDO | NUMBER | N | Codigo do Laudo APAC. |
| 2 | CD_VIA_TRATAMENTO | VARCHAR2 | N | Codigo do via de tratamentos utilizadas. |

---

## DBAMV.VISUALIZACAO_ITEM_PORTAL
> Tabela que guardará os exames que já foram visualizados no portal de laudos.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITPED_LAB | NUMBER | N | PK Da tabela e identificador do item de pedido que foi visualizado. |
| 2 | CD_USUARIO | NUMBER | N | Usuário que visualizou o laudo. |
| 3 | DS_LOGIN | VARCHAR2 | Y | Login do usuário que realizou a visualização do laudo. |
| 4 | DH_VISUALIZACAO | DATE | N | Data/Hora da visualização do laudo. |

---

## EPIMED.VDIC_HIS_EPIMED

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | MEDICALRECORD | NUMBER | N |  |
| 2 | DOCUMENTTYPECODE | CHAR | Y |  |
| 3 | DOCUMENTNUMBER | VARCHAR2 | Y |  |
| 4 | PATIENTNAME | VARCHAR2 | N |  |
| 5 | RESPONSIBLENAME | VARCHAR2 | Y |  |
| 6 | RESPONSIBLEDOCUMENTTYPECODE | CHAR | Y |  |
| 7 | RESPONSIBLEDOCUMENT | VARCHAR2 | Y |  |
| 8 | GENDER | VARCHAR2 | N |  |
| 9 | BIRTHDATE | VARCHAR2 | Y |  |
| 10 | HOSPITALCODE | CHAR | Y |  |
| 11 | HOSPITALADMISSIONNUMBER | NUMBER | N |  |
| 12 | HOSPITALADMISSIONDATE | VARCHAR2 | Y |  |
| 13 | UNITCODE | NUMBER | N |  |
| 14 | UNITADMISSIONNUMBER | NUMBER | Y |  |
| 15 | HOSPITALHEALTHINSURANCECODE | NUMBER | N |  |
| 16 | UNITADMISSIONDATETIME | VARCHAR2 | Y |  |
| 17 | BEDCODE | NUMBER | Y |  |
| 18 | UNITDISCHARGEDATETIME | VARCHAR2 | Y |  |
| 19 | WEIGHT | CHAR | Y |  |
| 20 | HEIGHT | CHAR | Y |  |
| 21 | DISCHARGECAUSE | NUMBER | Y |  |
| 22 | HOSPITALDISCHARGEDATE | VARCHAR2 | Y |  |
| 23 | MEDICALDISCHARGEDATE | VARCHAR2 | Y |  |
| 24 | CREATEDATE | VARCHAR2 | Y |  |
| 25 | HOSPITALDISCHARGEDATE_DATETIME | DATE | Y |  |
| 26 | EMPRESA | NUMBER | N |  |

---

## EPIMED.VW_DADOSFISIO_MONITOR_CRER

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MULTI_EMPRESA | NUMBER | Y |  |
| 2 | PATIENTID | NUMBER | Y |  |
| 3 | VISIT_ID | NUMBER | Y |  |
| 4 | EXAM_DATE | VARCHAR2 | Y |  |
| 5 | IDEXAM | NUMBER | Y |  |
| 6 | EXAM_CODE | VARCHAR2 | Y |  |
| 7 | EXAM_VALUE | VARCHAR2 | Y |  |
| 8 | UNIT_OF_MEASURE | VARCHAR2 | Y |  |
| 9 | DS_SINAL_VITAL | VARCHAR2 | Y |  |

---

## EPIMED.VW_DADOSFISIO_MONITOR_HUGOL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MULTI_EMPRESA | NUMBER | Y |  |
| 2 | PATIENTID | NUMBER | Y |  |
| 3 | VISIT_ID | NUMBER | Y |  |
| 4 | EXAM_DATE | VARCHAR2 | Y |  |
| 5 | IDEXAM | NUMBER | Y |  |
| 6 | EXAM_CODE | VARCHAR2 | Y |  |
| 7 | EXAM_VALUE | VARCHAR2 | Y |  |
| 8 | UNIT_OF_MEASURE | VARCHAR2 | Y |  |
| 9 | DS_SINAL_VITAL | VARCHAR2 | Y |  |

---

## EPIMED.VW_LABMICRO_MONITOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | MEDICAL_RECORD | NUMBER | N |  |
| 2 | ID_REQUEST | NUMBER | N |  |
| 3 | DT_REQUEST | DATE | N |  |
| 4 | PATIENT_NAME | VARCHAR2 | N |  |
| 5 | BIRTHDATE | DATE | Y |  |
| 6 | ATTENDANCE_NUMBER | NUMBER | N |  |
| 7 | ID_EXAM | NUMBER | N |  |
| 8 | DT_EXECUTION | DATE | Y |  |
| 9 | CD_EXAM | NUMBER | N |  |
| 10 | EXAME_NAME | VARCHAR2 | N |  |
| 11 | CD_SPECIMEN | NUMBER | N |  |
| 12 | SPECIMEN_NAME | VARCHAR2 | N |  |
| 13 | DT_RESULT | DATE | Y |  |
| 14 | EXAM_RESULT | VARCHAR2 | Y |  |
| 15 | CD_PATHOGEN | NUMBER | Y |  |
| 16 | PATHOGEN_NAME | VARCHAR2 | Y |  |
| 17 | KPC | CHAR | Y |  |
| 18 | ESBL | CHAR | Y |  |
| 19 | CD_ATB | VARCHAR2 | Y |  |
| 20 | ATB_NAME | VARCHAR2 | Y |  |
| 21 | MIC | VARCHAR2 | Y |  |
| 22 | ATB_RESULT | VARCHAR2 | Y |  |
| 23 | OBS_PATHOGEN | VARCHAR2 | Y |  |
| 24 | CD_MULTI_EMPRESA | NUMBER | N |  |

---

## HEPIC.INTEG_PRESCRIPTION_DRUG

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | INTEG_PRESCRIPTION_DRUG_ID | NUMBER | N |  |
| 2 | DRUG_EXID | VARCHAR2 | Y |  |
| 3 | DRUG_EXID_NUMBER | NUMBER | Y |  |
| 4 | DRUG_DESCRIPTION | VARCHAR2 | Y |  |

---

## HEPIC.V_HEPIC_ATENDIMENTO_V4

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EMPRESA | NUMBER | N |  |
| 2 | CNPJ_EMPRESA | NUMBER | Y |  |
| 3 | CD_ATENDIMENTO | NUMBER | N |  |
| 4 | TP_ATENDIMENTO | VARCHAR2 | N |  |
| 5 | DS_TP_ATENDIMENTO | VARCHAR2 | Y |  |
| 6 | CD_PACIENTE | NUMBER | N |  |
| 7 | CD_PRONTUARIO | NUMBER | N |  |
| 8 | DT_ATENDIMENTO | DATE | N |  |
| 9 | CD_PRESTADOR | NUMBER | Y |  |
| 10 | DS_PRESTADOR | VARCHAR2 | Y |  |
| 11 | CD_ORI_PACIENTE | NUMBER | N |  |
| 12 | DS_ORI_PACIENTE | VARCHAR2 | N |  |
| 13 | CD_ESPECILIDADE | NUMBER | Y |  |
| 14 | DS_ESPECIALIDADE | VARCHAR2 | N |  |
| 15 | DT_ALTA | DATE | Y |  |
| 16 | CD_MOTIVO_ALTA | NUMBER | Y |  |
| 17 | DS_MOTIVO_ALTA | VARCHAR2 | Y |  |
| 18 | CD_LOCAL_AGENDA | VARCHAR2 | Y |  |
| 19 | DS_LOCAL_AGENDA | VARCHAR2 | Y |  |
| 20 | CD_TIPO_AGENDA | VARCHAR2 | Y |  |
| 21 | DS_TIPO_AGENDA | VARCHAR2 | Y |  |
| 22 | DT_INSERT | DATE | N |  |
| 23 | DT_UPDATE | DATE | N |  |

---

## HEPIC.V_HEPIC_CEP_LOGRADOUROS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOGRADOURO | NUMBER | N |  |
| 2 | CD_LOCALIDADE | NUMBER | N |  |
| 3 | DS_LOGRADOURO | VARCHAR2 | Y |  |
| 4 | NR_CEP | NUMBER | N |  |
| 5 | CD_UF | VARCHAR2 | Y |  |
| 6 | DS_COMPLEMENTO | VARCHAR2 | Y |  |
| 7 | CD_BAIRRO_INICIAL | NUMBER | Y |  |
| 8 | CD_BAIRRO_FINAL | NUMBER | Y |  |
| 9 | CD_CODIGO_SECRETARIA | VARCHAR2 | Y |  |
| 10 | CD_TIPO_LOGRADOURO | NUMBER | Y |  |
| 11 | DS_TITULO_PATENTE | VARCHAR2 | Y |  |
| 12 | DS_RESUMO_LOGRADOURO | VARCHAR2 | Y |  |

---

## HEPIC.V_HEPIC_CIRURGIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NUMERO_EMPRESA | NUMBER | N |  |
| 2 | NUMERO_ATENDIMENTO | NUMBER | Y |  |
| 3 | CODIGO_PRONTUARIO | NUMBER | Y |  |
| 4 | INICIO_CIRURGIA | VARCHAR2 | Y |  |
| 5 | FINAL_CIRURGIA | VARCHAR2 | Y |  |
| 6 | CODIGO_SALA_CIRURGICA | NUMBER | Y |  |
| 7 | SALA_CIRURGICA | VARCHAR2 | N |  |
| 8 | CODIGO_CIRURGIA | NUMBER | N |  |
| 9 | DESCRICAO_CIRURGIA | VARCHAR2 | Y |  |
| 10 | CODIGO_VIA_DE_ACESSO | NUMBER | Y |  |
| 11 | DESCRICAO_VIA_DE_ACESSO | VARCHAR2 | Y |  |
| 12 | TIPO_DE_ANESTESIA | NUMBER | Y |  |
| 13 | DESCRICAO_TIPO_ANESTESIA | VARCHAR2 | Y |  |
| 14 | CODIGO_CIRURGIAO_PRINCIPAL | NUMBER | N |  |
| 15 | CODIGO_SEQ_CIRURGIA | NUMBER | N |  |
| 16 | TP_ATENDIMENTO | VARCHAR2 | N |  |

---

## HEPIC.V_HEPIC_CIRURGIA_V4

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EMPRESA | NUMBER | N |  |
| 2 | CNPJ_EMPRESA | NUMBER | Y |  |
| 3 | CD_ATENDIMENTO | NUMBER | Y |  |
| 4 | TP_ATENDIMENTO | VARCHAR2 | N |  |
| 5 | DT_ATENDIMENTO | DATE | N |  |
| 6 | CD_PACIENTE | NUMBER | Y |  |
| 7 | CD_AVISO_CIRURGIA | NUMBER | N |  |
| 8 | CD_TIPO_CIRURGIA | VARCHAR2 | Y |  |
| 9 | DS_TIPO_CIRURGIA | VARCHAR2 | Y |  |
| 10 | CD_RESP_CIRURGIA | VARCHAR2 | Y |  |
| 11 | CD_SAL_CIR | NUMBER | Y |  |
| 12 | DS_SAL_CIR | VARCHAR2 | Y |  |
| 13 | CD_UNID_INT | NUMBER | Y |  |
| 14 | CD_SUBUNID_INT | VARCHAR2 | Y |  |
| 15 | CD_TIP_ANEST | NUMBER | Y |  |
| 16 | DS_TIP_ANEST | VARCHAR2 | Y |  |
| 17 | CD_VIA_DE_ACESSO | VARCHAR2 | Y |  |
| 18 | DS_VIA_DE_ACESSO | VARCHAR2 | Y |  |
| 19 | CD_ASA | VARCHAR2 | Y |  |
| 20 | DS_ASA | VARCHAR2 | Y |  |
| 21 | VERSAO_CID | CHAR | Y |  |
| 22 | CD_CID | VARCHAR2 | Y |  |
| 23 | DS_CID | VARCHAR2 | Y |  |
| 24 | DT_REALIZACAO | DATE | Y |  |
| 25 | DT_ALTA_CIR | DATE | Y |  |
| 26 | TP_DURACAO_MIN | NUMBER | Y |  |
| 27 | DT_INICIO_CIRURGIA | DATE | Y |  |
| 28 | DT_FIM_CIRURGIA | DATE | Y |  |
| 29 | SN_CIR_AMB | CHAR | Y |  |
| 30 | SN_TRAUMA | VARCHAR2 | Y |  |
| 31 | SN_IMPL_PROTESE | VARCHAR2 | Y |  |
| 32 | SN_PROFILAXIA | VARCHAR2 | Y |  |
| 33 | SN_LAPAROSCOPIA | VARCHAR2 | Y |  |
| 34 | SN_TRICOTOMIA | VARCHAR2 | Y |  |
| 35 | VL_GLICEMIA_ANTES | VARCHAR2 | Y |  |
| 36 | VL_GLICEMIA_DURANTE | VARCHAR2 | Y |  |
| 37 | VL_GLICEMIA_DEPOIS | VARCHAR2 | Y |  |
| 38 | VL_TEMPERATURA | VARCHAR2 | Y |  |
| 39 | SN_PROT_CIR_SEGURA | VARCHAR2 | Y |  |
| 40 | SN_BAN_CLOREX_ANTES | VARCHAR2 | Y |  |
| 41 | SN_BAN_CLOREX_DIA | VARCHAR2 | Y |  |
| 42 | NM_PT_ABERTA | VARCHAR2 | Y |  |
| 43 | DT_INSERT | DATE | Y |  |
| 44 | DT_UPDATE | DATE | Y |  |

---

## HEPIC.V_HEPIC_DECLARACAO_OBITO_V4

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EMPRESA | NUMBER | Y |  |
| 2 | CNPJ_EMPRESA | NUMBER | Y |  |
| 3 | CD_DECLARACAO_OBITO | NUMBER | Y |  |
| 4 | NR_DECLARACAO_OBITO | VARCHAR2 | Y |  |
| 5 | CD_ATENDIMENTO | NUMBER | Y |  |
| 6 | TP_ATENDIMENTO | VARCHAR2 | Y |  |
| 7 | DS_TP_ATENDIMENTO | VARCHAR2 | Y |  |
| 8 | CD_PACIENTE | NUMBER | Y |  |
| 9 | DT_OBITO | DATE | Y |  |
| 10 | SN_OBITO_INFEC | CHAR | Y |  |
| 11 | CD_SETOR_OBITO | NUMBER | Y |  |
| 12 | CD_CID_OBITO_CAUSA_BASICA | VARCHAR2 | Y |  |
| 13 | CD_CID_OBITO_PRI | VARCHAR2 | Y |  |
| 14 | CD_CID_OBITO_SEG | VARCHAR2 | Y |  |
| 15 | CD_CID_OBITO_TER | VARCHAR2 | Y |  |
| 16 | CD_CID_OBITO_QUA | VARCHAR2 | Y |  |
| 17 | CD_CID_OBITO_QUI | VARCHAR2 | Y |  |
| 18 | CD_CID_OBITO_SEX | VARCHAR2 | Y |  |
| 19 | DT_CADASTRO | DATE | Y |  |
| 20 | DT_UPDATE | DATE | Y |  |

---

## HEPIC.V_HEPIC_DIAG_V4

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EMPRESA | NUMBER | N |  |
| 2 | CNPJ_EMPRESA | NUMBER | Y |  |
| 3 | CD_ATENDIMENTO | NUMBER | N |  |
| 4 | DT_ATENDIMENTO | DATE | N |  |
| 5 | TP_ATENDIMENTO | VARCHAR2 | N |  |
| 6 | CD_PACIENTE | NUMBER | N |  |
| 7 | CD_LOG_CID | NUMBER | N |  |
| 8 | VERSAO_CID | CHAR | Y |  |
| 9 | CD_CID | VARCHAR2 | Y |  |
| 10 | DS_CID | VARCHAR2 | N |  |
| 11 | CD_CLASSIFICACAO | CHAR | Y |  |
| 12 | DS_CLASSIFICACAO | VARCHAR2 | Y |  |
| 13 | TP_SITUACAO | VARCHAR2 | Y |  |
| 14 | CD_TP_DIAGNOSTICO | CHAR | Y |  |
| 15 | DS_TP_DIAGNOSTICO | VARCHAR2 | Y |  |
| 16 | CD_PRESTADOR | NUMBER | Y |  |
| 17 | DT_DIAGNOSTICO | DATE | N |  |
| 18 | DT_INSERT | DATE | N |  |
| 19 | DT_UPDATE | DATE | N |  |

---

## HEPIC.V_HEPIC_DOM_ANTIMICROB_V4

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EMPRESA | NUMBER | N |  |
| 2 | CNPJ_EMPRESA | NUMBER | Y |  |
| 3 | CD_HIS_CATALOG_TYPE | CHAR | Y |  |
| 4 | CD_ANTIMICROB | VARCHAR2 | N |  |
| 5 | NM_ANTIMICROB | VARCHAR2 | N |  |
| 6 | DT_INSERT | DATE | Y |  |
| 7 | DT_UPDATE | DATE | Y |  |

---

## HEPIC.V_HEPIC_DOM_ASA_V4

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EMPRESA | NUMBER | N |  |
| 2 | CNPJ_EMPRESA | NUMBER | Y |  |
| 3 | CD_HIS_CATALOG_TYPE | CHAR | Y |  |
| 4 | CD_ASA | VARCHAR2 | N |  |
| 5 | NM_ASA | VARCHAR2 | N |  |
| 6 | DT_INSERT | DATE | Y |  |
| 7 | DT_UPDATE | DATE | Y |  |

---

## HEPIC.V_HEPIC_DOM_ATI_MED_V4

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EMPRESA | NUMBER | N |  |
| 2 | CNPJ_EMPRESA | NUMBER | Y |  |
| 3 | CD_HIS_CATALOG_TYPE | CHAR | Y |  |
| 4 | CD_ATI_MED | VARCHAR2 | N |  |
| 5 | NM_ATI_MED | VARCHAR2 | N |  |
| 6 | DT_INSERT | DATE | Y |  |
| 7 | DT_UPDATE | DATE | Y |  |

---

## HEPIC.V_HEPIC_DOM_CBO_V4

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EMPRESA | NUMBER | N |  |
| 2 | CNPJ_EMPRESA | NUMBER | Y |  |
| 3 | CD_HIS_CATALOG_TYPE | CHAR | Y |  |
| 4 | CD_CBOS | VARCHAR2 | N |  |
| 5 | NM_CBOS | VARCHAR2 | Y |  |
| 6 | DT_INSERT | DATE | Y |  |
| 7 | DT_UPDATE | DATE | Y |  |

---

## HEPIC.V_HEPIC_DOM_CIR_INTERV_V4

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EMPRESA | NUMBER | N |  |
| 2 | CNPJ_EMPRESA | NUMBER | Y |  |
| 3 | CD_HIS_CATALOG_TYPE | CHAR | Y |  |
| 4 | CD_CIRURGIA | NUMBER | N |  |
| 5 | NM_CIRURGIA | VARCHAR2 | N |  |
| 6 | DT_INSERT | DATE | Y |  |
| 7 | DT_UPDATE | DATE | Y |  |

---

## HEPIC.V_HEPIC_DOM_CONTAMINACAO_V4

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EMPRESA | NUMBER | N |  |
| 2 | CNPJ_EMPRESA | NUMBER | Y |  |
| 3 | CD_HIS_CATALOG_TYPE | CHAR | Y |  |
| 4 | CD_NATUREZA | VARCHAR2 | Y |  |
| 5 | NM_NATUREZA | VARCHAR2 | Y |  |
| 6 | DT_INSERT | DATE | Y |  |
| 7 | DT_UPDATE | DATE | Y |  |

---

## HEPIC.V_HEPIC_DOM_ESPECIALIDADE_V4

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EMPRESA | NUMBER | N |  |
| 2 | CNPJ_EMPRESA | NUMBER | Y |  |
| 3 | CD_HIS_CATALOG_TYPE | CHAR | Y |  |
| 4 | CD_ESPECIALID | VARCHAR2 | Y |  |
| 5 | NM_ESPECIALID | VARCHAR2 | N |  |
| 6 | DT_INSERT | DATE | Y |  |
| 7 | DT_UPDATE | DATE | Y |  |

---

## HEPIC.V_HEPIC_DOM_EXAME_V4

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EMPRESA | NUMBER | N |  |
| 2 | CNPJ_EMPRESA | NUMBER | Y |  |
| 3 | CD_HIS_CATALOG_TYPE | CHAR | Y |  |
| 4 | CD_EXA_LAB | NUMBER | N |  |
| 5 | NM_EXA_LAB | VARCHAR2 | N |  |
| 6 | DT_INSERT | DATE | Y |  |
| 7 | DT_UPDATE | DATE | Y |  |

---

## HEPIC.V_HEPIC_DOM_GERMES_V4

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EMPRESA | NUMBER | N |  |
| 2 | CNPJ_EMPRESA | NUMBER | Y |  |
| 3 | CD_HIS_CATALOG_TYPE | CHAR | Y |  |
| 4 | CD_GERMES | NUMBER | N |  |
| 5 | NM_GERMES | VARCHAR2 | N |  |
| 6 | DT_INSERT | DATE | Y |  |
| 7 | DT_UPDATE | DATE | Y |  |

---

## HEPIC.V_HEPIC_DOM_LEITO_V4

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EMPRESA | NUMBER | N |  |
| 2 | CNPJ_EMPRESA | NUMBER | Y |  |
| 3 | CD_HIS_CATALOG_TYPE | CHAR | Y |  |
| 4 | CD_LEITO | NUMBER | N |  |
| 5 | NM_LEITO | VARCHAR2 | N |  |
| 6 | DT_INSERT | DATE | N |  |
| 7 | DT_UPDATE | DATE | N |  |

---

## HEPIC.V_HEPIC_DOM_MATERIAL_V4

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EMPRESA | NUMBER | N |  |
| 2 | CNPJ_EMPRESA | NUMBER | Y |  |
| 3 | CD_HIS_CATALOG_TYPE | CHAR | Y |  |
| 4 | CD_MATERIAL | NUMBER | N |  |
| 5 | NM_MATERIAL | VARCHAR2 | N |  |
| 6 | DT_INSERT | DATE | Y |  |
| 7 | DT_UPDATE | DATE | Y |  |

---

## HEPIC.V_HEPIC_DOM_MEDICAMENTO_V4

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EMPRESA | NUMBER | N |  |
| 2 | CNPJ_EMPRESA | NUMBER | Y |  |
| 3 | CD_PRODUTO | NUMBER | N |  |
| 4 | CD_PROD_EXTERNO | VARCHAR2 | Y |  |
| 5 | NM_PRODUTO | VARCHAR2 | N |  |
| 6 | NOME_GENERICO | VARCHAR2 | Y |  |
| 7 | NOME_MARCA | VARCHAR2 | Y |  |
| 8 | CD_GRUPO | VARCHAR2 | Y |  |
| 9 | DS_GRUPO | VARCHAR2 | Y |  |
| 10 | CD_TP_PRODUTO | VARCHAR2 | Y |  |
| 11 | NM_TP_PRODUTO | VARCHAR2 | Y |  |
| 12 | CLA_TERAPEUTICA | VARCHAR2 | Y |  |
| 13 | CD_FORM | VARCHAR2 | Y |  |
| 14 | DS_FORM | VARCHAR2 | Y |  |
| 15 | DS_FORM_ABREV | VARCHAR2 | Y |  |
| 16 | QT_MOVIMENTACAO | VARCHAR2 | Y |  |
| 17 | CD_UNIDADE | VARCHAR2 | Y |  |
| 18 | DS_UNIDADE | VARCHAR2 | N |  |
| 19 | NR_DOSAGEM | VARCHAR2 | Y |  |
| 20 | DOSAGEM_FORM | VARCHAR2 | Y |  |
| 21 | FORCA | VARCHAR2 | Y |  |
| 22 | UNID_FORCA | VARCHAR2 | Y |  |
| 23 | VOLUME | VARCHAR2 | Y |  |
| 24 | UNID_VOLUME | VARCHAR2 | Y |  |
| 25 | DS_FOR_APL | VARCHAR2 | Y |  |
| 26 | VL_CUSTO_MEDIO | NUMBER | Y |  |
| 27 | DT_INSERT | DATE | N |  |
| 28 | DT_UPDATE | DATE | Y |  |

---

## HEPIC.V_HEPIC_DOM_MOT_ALT_V4

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EMPRESA | NUMBER | N |  |
| 2 | CNPJ_EMPRESA | NUMBER | Y |  |
| 3 | CD_HIS_CATALOG_TYPE | CHAR | Y |  |
| 4 | CD_MOT_ALT | NUMBER | N |  |
| 5 | NM_MOT_ALT | VARCHAR2 | N |  |
| 6 | DT_INSERT | DATE | Y |  |
| 7 | DT_UPDATE | DATE | Y |  |

---

## HEPIC.V_HEPIC_DOM_ORI_ATE_V4

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EMPRESA | NUMBER | N |  |
| 2 | CNPJ_EMPRESA | NUMBER | Y |  |
| 3 | CD_HIS_CATALOG_TYPE | CHAR | Y |  |
| 4 | CD_ORI_ATE | NUMBER | N |  |
| 5 | NM_ORI_ATE | VARCHAR2 | N |  |
| 6 | DT_INSERT | DATE | Y |  |
| 7 | DT_UPDATE | DATE | Y |  |

---

## HEPIC.V_HEPIC_DOM_PRODUTO_V4

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EMPRESA | NUMBER | N |  |
| 2 | CNPJ_EMPRESA | NUMBER | Y |  |
| 3 | CD_PRODUTO | NUMBER | N |  |
| 4 | NM_PRODUTO | VARCHAR2 | N |  |
| 5 | CD_UNI_PRO | NUMBER | N |  |
| 6 | NM_UNI_PRO | VARCHAR2 | N |  |
| 7 | DT_INSERT | DATE | Y |  |
| 8 | DT_UPDATE | DATE | Y |  |

---

## HEPIC.V_HEPIC_DOM_PROFISSIONAL_V4

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EMPRESA | NUMBER | Y |  |
| 2 | CNPJ_EMPRESA | NUMBER | Y |  |
| 3 | CD_PRESTADOR | NUMBER | N |  |
| 4 | NM_PRESTADOR | VARCHAR2 | N |  |
| 5 | DS_CODIGO_CONSELHO | VARCHAR2 | Y |  |
| 6 | CD_TIP_PRESTA | NUMBER | N |  |
| 7 | NM_TIP_PRESTA | VARCHAR2 | N |  |
| 8 | DT_INSERT | DATE | Y |  |
| 9 | DT_UPDATE | DATE | Y |  |

---

## HEPIC.V_HEPIC_DOM_SAL_CIR_V4

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EMPRESA | NUMBER | N |  |
| 2 | CNPJ_EMPRESA | NUMBER | Y |  |
| 3 | CD_HIS_CATALOG_TYPE | CHAR | Y |  |
| 4 | CD_SAL_CIR | NUMBER | N |  |
| 5 | NM_SAL_CIR | VARCHAR2 | N |  |
| 6 | DT_INSERT | DATE | Y |  |
| 7 | DT_UPDATE | DATE | Y |  |

---

## HEPIC.V_HEPIC_DOM_SETOR_V4

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EMPRESA | NUMBER | N |  |
| 2 | CNPJ_EMPRESA | NUMBER | Y |  |
| 3 | CD_HIS_CATALOG_TYPE | CHAR | Y |  |
| 4 | CD_SETOR | NUMBER | N |  |
| 5 | NM_SETOR | VARCHAR2 | N |  |
| 6 | DT_INSERT | DATE | Y |  |
| 7 | DT_UPDATE | DATE | Y |  |

---

## HEPIC.V_HEPIC_DOM_TIP_ANEST_V4

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EMPRESA | NUMBER | N |  |
| 2 | CNPJ_EMPRESA | NUMBER | Y |  |
| 3 | CD_HIS_CATALOG_TYPE | CHAR | Y |  |
| 4 | CD_TIP_ANEST | NUMBER | N |  |
| 5 | NM_TIP_ANEST | VARCHAR2 | N |  |
| 6 | DT_INSERT | DATE | Y |  |
| 7 | DT_UPDATE | DATE | Y |  |

---

## HEPIC.V_HEPIC_DOM_UNID_INT_V4

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EMPRESA | NUMBER | N |  |
| 2 | CNPJ_EMPRESA | NUMBER | Y |  |
| 3 | CD_HIS_CATALOG_TYPE | CHAR | Y |  |
| 4 | CD_UNID_INT | NUMBER | N |  |
| 5 | NM_UNID_INT | VARCHAR2 | N |  |
| 6 | DT_INSERT | DATE | Y |  |
| 7 | DT_UPDATE | DATE | Y |  |

---

## HEPIC.V_HEPIC_DOM_UNI_PRO_V4

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EMPRESA | NUMBER | N |  |
| 2 | CNPJ_EMPRESA | NUMBER | Y |  |
| 3 | CD_HIS_CATALOG_TYPE | CHAR | Y |  |
| 4 | CD_UNI_PRO | NUMBER | N |  |
| 5 | NM_UNI_PRO | VARCHAR2 | N |  |
| 6 | DT_INSERT | DATE | Y |  |
| 7 | DT_UPDATE | DATE | Y |  |

---

## HEPIC.V_HEPIC_DOM_VIA_ACESSO_V4

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EMPRESA | NUMBER | N |  |
| 2 | CNPJ_EMPRESA | NUMBER | Y |  |
| 3 | CD_HIS_CATALOG_TYPE | CHAR | Y |  |
| 4 | CD_VIA_DE_ACESSO | NUMBER | N |  |
| 5 | NM_VIA_DE_ACESSO | VARCHAR2 | N |  |
| 6 | DT_INSERT | DATE | Y |  |
| 7 | DT_UPDATE | DATE | Y |  |

---

## HEPIC.V_HEPIC_DOM_VIA_MEDICAMENTO_V4

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EMPRESA | NUMBER | N |  |
| 2 | CNPJ_EMPRESA | NUMBER | Y |  |
| 3 | CD_HIS_CATALOG_TYPE | CHAR | Y |  |
| 4 | CD_FOR_APL | VARCHAR2 | N |  |
| 5 | DS_FOR_APL | VARCHAR2 | N |  |
| 6 | DT_INSERT | DATE | Y |  |
| 7 | DT_UPDATE | DATE | Y |  |

---

## HEPIC.V_HEPIC_ESPECIALID

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

---

## HEPIC.V_HEPIC_ESPECIALIDADE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CODIGO_ESPECIALIDADE | NUMBER | N |  |
| 2 | DESCRICAO_ESPECIALIDADE | VARCHAR2 | N |  |

---

## HEPIC.V_HEPIC_EXA_LAB

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EXA_LAB | NUMBER | N |  |
| 2 | NM_EXA_LAB | VARCHAR2 | N |  |

---

## HEPIC.V_HEPIC_FARMACIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NUMERO_EMPRESA | NUMBER | N |  |
| 2 | MOVIMENTACAO | NUMBER | N |  |
| 3 | CODIGO_MEDICAMENTO | NUMBER | N |  |
| 4 | DESCRICAO_MEDICAMENTO | VARCHAR2 | Y |  |
| 5 | UNIDADE_MOVIMENTACAO | VARCHAR2 | N |  |
| 6 | QUANTIDADE | NUMBER | Y |  |
| 7 | TIPO_MVTO | VARCHAR2 | Y |  |
| 8 | DATA_HORA_MOVIMENTACAO | VARCHAR2 | Y |  |
| 9 | CODIGO_ATENDIMENTO | NUMBER | Y |  |
| 10 | CODIGO_UNID_INTERNACAO | NUMBER | Y |  |
| 11 | UNIDADE_INTERNACAO | VARCHAR2 | Y |  |
| 12 | CODIGO_SETOR | NUMBER | Y |  |
| 13 | SETOR | VARCHAR2 | Y |  |
| 14 | DH_MVTO_ESTOQUE | DATE | N |  |
| 15 | CD_UNIDADE | VARCHAR2 | Y |  |
| 16 | VL_FATOR | NUMBER | N |  |
| 17 | VL_CUSTO_MEDIO | NUMBER | Y |  |
| 18 | DT_MVTO_ESTOQUE | DATE | N |  |
| 19 | TP_ATENDIMENTO | VARCHAR2 | N |  |

---

## HEPIC.V_HEPIC_FORMULA_AVALIACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CODIGO_DA_FORMULA | NUMBER | N |  |
| 2 | DESCRICAO_FORMULA | VARCHAR2 | N |  |
| 3 | TIPO_FORMULA | VARCHAR2 | Y |  |

---

## HEPIC.V_HEPIC_FREQUENCIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TIP_FRE | NUMBER | N |  |
| 2 | DS_TIP_FRE | VARCHAR2 | N |  |
| 3 | NR_INTERVALO | NUMBER | Y |  |
| 4 | TP_HORARIO | VARCHAR2 | N |  |
| 5 | TP_CONTROLE | VARCHAR2 | N |  |
| 6 | QT_LIMITE_HORAS | NUMBER | Y |  |
| 7 | QT_APLIC_SOLICITADAS | NUMBER | Y |  |
| 8 | TP_ESCOPO | VARCHAR2 | N |  |
| 9 | SN_EXCETO_SETOR | VARCHAR2 | Y |  |
| 10 | SN_COPIA | VARCHAR2 | Y |  |
| 11 | SN_FIXO | VARCHAR2 | Y |  |

---

## HEPIC.V_HEPIC_GERMES

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GERMES | NUMBER | N |  |
| 2 | DS_GERME | VARCHAR2 | N |  |

---

## HEPIC.V_HEPIC_GRAU_INS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GRAU_INS | NUMBER | N |  |
| 2 | DS_GRAU_INS | VARCHAR2 | N |  |
| 3 | CD_GRAU_SUS | VARCHAR2 | Y |  |

---

## HEPIC.V_HEPIC_INTERV_CIRURGIAS_V4

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EMPRESA | NUMBER | N |  |
| 2 | CNPJ_EMPRESA | NUMBER | Y |  |
| 3 | CD_ATENDIMENTO | NUMBER | Y |  |
| 4 | DT_ATENDIMENTO | DATE | Y |  |
| 5 | TP_ATENDIMENTO | VARCHAR2 | Y |  |
| 6 | CD_PACIENTE | NUMBER | Y |  |
| 7 | CD_AVISO_CIRURGIA | NUMBER | N |  |
| 8 | CD_CIRURGIA_AVISO | NUMBER | N |  |
| 9 | CD_CIRURGIA | NUMBER | N |  |
| 10 | DS_INTER_CIRURGIA | VARCHAR2 | N |  |
| 11 | SN_CIR_PRINCIPAL | CHAR | Y |  |
| 12 | CD_VIA_DE_ACESSO | NUMBER | Y |  |
| 13 | CD_POT_CONTAMIN | VARCHAR2 | Y |  |
| 14 | DS_POT_CONTAMIN | VARCHAR2 | Y |  |
| 15 | VERSAO_CID | CHAR | Y |  |
| 16 | CD_CID | VARCHAR2 | Y |  |
| 17 | DS_CID | VARCHAR2 | Y |  |
| 18 | DT_REALIZACAO | DATE | Y |  |
| 19 | DT_INI_PROC_CIRU | VARCHAR2 | Y |  |
| 20 | DT_FIM_PROC_CIRU | VARCHAR2 | Y |  |
| 21 | VL_MIN_PROC_CIRU | VARCHAR2 | Y |  |
| 22 | DT_INSERT | DATE | Y |  |
| 23 | DT_UPDATE | DATE | Y |  |

---

## HEPIC.V_HEPIC_LAB_ANTIBIOGRAMA_V4

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 2 | CD_CGC | NUMBER | Y |  |
| 3 | DT_ATENDIMENTO | DATE | N |  |
| 4 | CD_ATENDIMENTO | NUMBER | N |  |
| 5 | CD_PACIENTE | NUMBER | N |  |
| 6 | CD_PED_LAB | NUMBER | N |  |
| 7 | CD_ITPED_LAB | NUMBER | N |  |
| 8 | CD_MATERIAL | NUMBER | Y |  |
| 9 | CD_GERMES | NUMBER | N |  |
| 10 | ID_EXTERNO | NUMBER | Y |  |
| 11 | ID_ANTIBIOGRAMA | NUMBER | Y |  |
| 12 | HR_COLETA | DATE | Y |  |
| 13 | DT_LAUDO | DATE | Y |  |
| 14 | POSICAO | VARCHAR2 | N |  |
| 15 | CD_ANTIMICROB | VARCHAR2 | N |  |
| 16 | NM_ANTIMICROB | VARCHAR2 | N |  |
| 17 | NR_MIC | VARCHAR2 | Y |  |
| 18 | TP_RESULTADO | VARCHAR2 | N |  |
| 19 | DS_RESULTADO | VARCHAR2 | Y |  |
| 20 | DT_INSERT | DATE | Y |  |
| 21 | DT_UPDATE | DATE | Y |  |

---

## HEPIC.V_HEPIC_LAB_CULTURA_V4

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 2 | CNPJ_EMPRESA | NUMBER | Y |  |
| 3 | CD_ATENDIMENTO | NUMBER | N |  |
| 4 | TP_ATENDIMENTO | VARCHAR2 | N |  |
| 5 | DS_TP_ATENDIMENTO | VARCHAR2 | Y |  |
| 6 | DT_ATENDIMENTO | DATE | N |  |
| 7 | CD_UNID_INT | NUMBER | Y |  |
| 8 | DS_UNID_INT | VARCHAR2 | Y |  |
| 9 | CD_SUBUNID_FIS | VARCHAR2 | Y |  |
| 10 | DS_SUBUNID_FIS | VARCHAR2 | Y |  |
| 11 | CD_INT_UNID | NUMBER | Y |  |
| 12 | DS_INT_UNID | VARCHAR2 | Y |  |
| 13 | CD_INTUNID_FIS | VARCHAR2 | Y |  |
| 14 | DS_INTUNID_FIS | VARCHAR2 | Y |  |
| 15 | CD_PACIENTE | NUMBER | N |  |
| 16 | PCT_PROCESSO | NUMBER | N |  |
| 17 | NM_PACIENTE | VARCHAR2 | N |  |
| 18 | CD_PED_LAB | NUMBER | N |  |
| 19 | CD_ITPED_LAB | NUMBER | N |  |
| 20 | ID_EXTERNO | NUMBER | Y |  |
| 21 | HR_COLETA | DATE | Y |  |
| 22 | CD_EXA_LAB | NUMBER | N |  |
| 23 | NM_EXA_LAB | VARCHAR2 | N |  |
| 24 | CD_MATERIAL | NUMBER | Y |  |
| 25 | DS_MATERIAL | VARCHAR2 | N |  |
| 26 | CD_FONTE_MAT | VARCHAR2 | Y |  |
| 27 | DS_FONTE_MAT | VARCHAR2 | Y |  |
| 28 | DT_LAUDO | DATE | Y |  |
| 29 | CD_GERMES | NUMBER | Y |  |
| 30 | DS_GERME | VARCHAR2 | Y |  |
| 31 | DS_RESULTADO | VARCHAR2 | Y |  |
| 32 | SN_POSITIVO | CHAR | Y |  |
| 33 | VL_UNIDADE | VARCHAR2 | Y |  |
| 34 | DS_VALOR_REFERENCIA_CULTURA | VARCHAR2 | Y |  |
| 35 | VL_QUANTIFICACAO | VARCHAR2 | Y |  |
| 36 | DS_COLONIA | VARCHAR2 | Y |  |
| 37 | VL_COLONIA | VARCHAR2 | Y |  |
| 38 | UNID_COLONIA | VARCHAR2 | Y |  |
| 39 | OBSERVACAO | VARCHAR2 | Y |  |
| 40 | STATUS_LAUDOS | CHAR | Y |  |
| 41 | DT_INSERT | DATE | Y |  |
| 42 | DT_UPDATE | DATE | Y |  |

---

## HEPIC.V_HEPIC_LAB_SOROLOGIA_V4

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 2 | CNPJ_EMPRESA | VARCHAR2 | Y |  |
| 3 | CD_ATENDIMENTO | NUMBER | N |  |
| 4 | DT_ATENDIMENTO | DATE | N |  |
| 5 | TP_ATENDIMENTO | VARCHAR2 | N |  |
| 6 | DS_TP_ATENDIMENTO | VARCHAR2 | Y |  |
| 7 | CD_UNID_INT | VARCHAR2 | Y |  |
| 8 | DS_UNID_INT | VARCHAR2 | Y |  |
| 9 | CD_SERV_FIS | VARCHAR2 | Y |  |
| 10 | CD_INT_UNID | VARCHAR2 | Y |  |
| 11 | CD_INT_UNID_FIS | VARCHAR2 | Y |  |
| 12 | CD_PACIENTE | NUMBER | N |  |
| 13 | PCT_PROCESSO | NUMBER | N |  |
| 14 | NM_PACIENTE | VARCHAR2 | N |  |
| 15 | CD_PED_LAB | NUMBER | N |  |
| 16 | UNIQUE_IDENTIFIER | ROWID | Y |  |
| 17 | CD_EXA_LAB | NUMBER | N |  |
| 18 | NM_EXA_LAB | VARCHAR2 | Y |  |
| 19 | CD_MATERIAL | NUMBER | Y |  |
| 20 | DS_MATERIAL | VARCHAR2 | Y |  |
| 21 | CD_FONTE_MAT | VARCHAR2 | Y |  |
| 22 | DS_FONTE_MAT | VARCHAR2 | Y |  |
| 23 | HR_COLETA | DATE | Y |  |
| 24 | DT_LAUDO | DATE | Y |  |
| 25 | CD_CAMPO | NUMBER | Y |  |
| 26 | NM_CAMPO | VARCHAR2 | N |  |
| 27 | CD_ORDEM_PERGUNTA | NUMBER | N |  |
| 28 | DS_RESULTADO | VARCHAR2 | Y |  |
| 29 | VL_UNIDADE | VARCHAR2 | Y |  |
| 30 | VL_REFERENCIA | VARCHAR2 | Y |  |
| 31 | COMENT_LAB | VARCHAR2 | Y |  |
| 32 | STATUS | VARCHAR2 | Y |  |
| 33 | DT_INSERT | DATE | Y |  |
| 34 | DT_UPDATE | DATE | Y |  |

---

## HEPIC.V_HEPIC_LEITO_PACIENTE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NUMERO_EMPRESA | NUMBER | N |  |
| 2 | CODIGO_LEITO | NUMBER | N |  |
| 3 | DESCRICAO_LEITO | VARCHAR2 | N |  |

---

## HEPIC.V_HEPIC_MATERIAL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MATERIAL | NUMBER | N |  |
| 2 | DS_MATERIAL | VARCHAR2 | N |  |
| 3 | SN_IMPRIME_ETIQ_LOCAL | VARCHAR2 | N |  |

---

## HEPIC.V_HEPIC_MEDICAMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NUMERO_EMPRESA | NUMBER | N |  |
| 2 | CODIGO_MEDICAMENTO | NUMBER | N |  |
| 3 | DESCRICAO_MEDICAMENTO | VARCHAR2 | N |  |
| 4 | VALOR_CUSTO_MEDIO | NUMBER | Y |  |
| 5 | DS_PRODUTO_RESUMIDO | VARCHAR2 | Y |  |
| 6 | CD_TISS | VARCHAR2 | Y |  |
| 7 | CD_BRASINDICE | NUMBER | Y |  |

---

## HEPIC.V_HEPIC_MEDICO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CODIGO_MEDICO | NUMBER | N |  |
| 2 | NOME_MEDICO | VARCHAR2 | N |  |

---

## HEPIC.V_HEPIC_MOTIVO_ALTA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CODIGO_MOTIVO_ALTA | NUMBER | N |  |
| 2 | DESCRICAO_MOTIVO_ALTA | VARCHAR2 | N |  |

---

## HEPIC.V_HEPIC_MOV_ANTIB_V4

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EMPRESA | NUMBER | Y |  |
| 2 | CNPJ_EMPRESA | NUMBER | Y |  |
| 3 | CD_ATENDIMENTO | NUMBER | Y |  |
| 4 | CD_ESPECIALID | NUMBER | Y |  |
| 5 | TP_ATENDIMENTO | VARCHAR2 | Y |  |
| 6 | DS_TP_ATENDIMENTO | VARCHAR2 | Y |  |
| 7 | CD_PACIENTE | NUMBER | Y |  |
| 8 | CD_ITMVTO_ESTOQUE | NUMBER | N |  |
| 9 | CD_PRODUTO | NUMBER | N |  |
| 10 | DS_PRODUTO | VARCHAR2 | Y |  |
| 11 | CD_UNIDADE | VARCHAR2 | Y |  |
| 12 | DS_UNIDADE | VARCHAR2 | Y |  |
| 13 | CD_UNID_INT | NUMBER | Y |  |
| 14 | DS_UNID_INT | VARCHAR2 | Y |  |
| 15 | CD_SETOR | NUMBER | Y |  |
| 16 | CD_SERVICO_FIS | NUMBER | Y |  |
| 17 | DS_SERVICO_FIS | VARCHAR2 | Y |  |
| 18 | CD_SUBUNID_INT | VARCHAR2 | Y |  |
| 19 | CD_SUBUNID_FIS | VARCHAR2 | Y |  |
| 20 | CD_CEN_CUS | VARCHAR2 | Y |  |
| 21 | SN_PROFILAXIA | VARCHAR2 | Y |  |
| 22 | MOV_MEDIC_CORANAR | VARCHAR2 | Y |  |
| 23 | QT_MOVIMENTACAO | NUMBER | N |  |
| 24 | VL_CUSTO_MEDIO | NUMBER | Y |  |
| 25 | DT_MVTO_ESTOQUE | DATE | N |  |
| 26 | DT_MVTO_ESTOQUE_REG | DATE | N |  |
| 27 | DT_INSERT | DATE | N |  |
| 28 | DT_UPDATE | DATE | N |  |

---

## HEPIC.V_HEPIC_MOV_PRODUTOS_V4

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EMPRESA | NUMBER | Y |  |
| 2 | CNPJ_EMPRESA | NUMBER | Y |  |
| 3 | CD_ATENDIMENTO | NUMBER | Y |  |
| 4 | TP_ATENDIMENTO | VARCHAR2 | Y |  |
| 5 | DS_TP_ATENDIMENTO | VARCHAR2 | Y |  |
| 6 | CD_ESPECIALID | NUMBER | Y |  |
| 7 | CD_PACIENTE | NUMBER | Y |  |
| 8 | CD_ITMVTO_ESTOQUE | NUMBER | N |  |
| 9 | CD_PRODUTO | NUMBER | N |  |
| 10 | DS_PRODUTO | VARCHAR2 | N |  |
| 11 | CD_GRUPO | NUMBER | N |  |
| 12 | DS_GRUPO | VARCHAR2 | N |  |
| 13 | CD_UNIDADE | VARCHAR2 | Y |  |
| 14 | DS_UNIDADE | VARCHAR2 | N |  |
| 15 | CD_SETOR | NUMBER | Y |  |
| 16 | CD_UNID_INT | NUMBER | Y |  |
| 17 | DS_UNID_INT | VARCHAR2 | Y |  |
| 18 | CD_SUBUNID_FIS | VARCHAR2 | Y |  |
| 19 | DS_SUBUNID_FIS | VARCHAR2 | Y |  |
| 20 | CD_INT_UNID | NUMBER | Y |  |
| 21 | DS_INT_UNID | VARCHAR2 | Y |  |
| 22 | CD_CEN_CUS | NUMBER | Y |  |
| 23 | DS_CEN_CUS | VARCHAR2 | N |  |
| 24 | QT_MOVIMENTACAO | NUMBER | N |  |
| 25 | VL_CUSTO_MEDIO | NUMBER | Y |  |
| 26 | MOV_MEDIC_CORONAR | VARCHAR2 | Y |  |
| 27 | SN_PROFILAXIA | VARCHAR2 | Y |  |
| 28 | DT_MVTO_ESTOQUE | DATE | N |  |
| 29 | DT_MVTO_ESTOQUE_REG | DATE | N |  |
| 30 | DT_INSERT | DATE | N |  |
| 31 | DT_UPDATE | DATE | N |  |

---

## HEPIC.V_HEPIC_MVTO_LEITOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NUMERO_EMPRESA | NUMBER | N |  |
| 2 | NUMERO_ATENDIMENTO | NUMBER | Y |  |
| 3 | SEQ_MVTO_LEITO | NUMBER | N |  |
| 4 | CODIGO_LEITO | NUMBER | Y |  |
| 5 | LEITO_PACIENTE | VARCHAR2 | Y |  |
| 6 | CODIGO_UNID_INTERNACAO | NUMBER | N |  |
| 7 | UNIDADE_DE_INTERNACAO | VARCHAR2 | N |  |
| 8 | CODIGO_SETOR | NUMBER | N |  |
| 9 | DATA_ENTRADA | VARCHAR2 | Y |  |
| 10 | HORA_ENTRADA | VARCHAR2 | Y |  |
| 11 | DATA_SAIDA | VARCHAR2 | Y |  |
| 12 | HORA_SAIDA | VARCHAR2 | Y |  |
| 13 | CODIGO_LEITO_ANTERIOR | NUMBER | Y |  |
| 14 | LEITO_ANTERIOR_PACIENTE | VARCHAR2 | Y |  |
| 15 | CODIGO_UNID_INTER_ANTERIOR | NUMBER | Y |  |
| 16 | UNIDADE_INTER_ANTERIOR | VARCHAR2 | Y |  |
| 17 | TIPO_DE_MVTO_LEITO | VARCHAR2 | N |  |
| 18 | DT_MOV_INT | DATE | N |  |
| 19 | DT_LIB_MOV | DATE | Y |  |
| 20 | TP_ATENDIMENTO | VARCHAR2 | N |  |

---

## HEPIC.V_HEPIC_ORIGEM_ATENDIMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NUMERO_EMPRESA | NUMBER | N |  |
| 2 | CODIGO_ORIGEM_ATENDIMENTO | NUMBER | N |  |
| 3 | DESCRICAO_ORIGEM_ATENDIMENTO | VARCHAR2 | N |  |

---

## HEPIC.V_HEPIC_PACIENTES

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NUMERO_EMPRESA | NUMBER | N |  |
| 2 | NUMERO_ATENDIMENTO | NUMBER | N |  |
| 3 | NUMERO_PRONTUARIO | NUMBER | N |  |
| 4 | NOME_PACIENTE | VARCHAR2 | Y |  |
| 5 | DATA_NASCIMENTO | VARCHAR2 | Y |  |
| 6 | SEXO_PACIENTE | VARCHAR2 | N |  |
| 7 | DATA_ATENDIMENTO | VARCHAR2 | Y |  |
| 8 | DT_ATENDIMENTO | DATE | N |  |
| 9 | HORA_ATENDIMENTO | VARCHAR2 | Y |  |
| 10 | DATA_ALTA | VARCHAR2 | Y |  |
| 11 | HORA_ALTA | VARCHAR2 | Y |  |
| 12 | CODIGO_MOTIVO_ALTA | NUMBER | Y |  |
| 13 | CODIGO_ESPECIALIDADE | NUMBER | Y |  |
| 14 | ESPECIALIDADE | VARCHAR2 | Y |  |
| 15 | CODIGO_MEDICO | NUMBER | Y |  |
| 16 | NOME_MEDICO | VARCHAR2 | Y |  |
| 17 | CODIGO_ORIGEM_ATENDIMENTO | NUMBER | N |  |
| 18 | ORIGEM_ATENDIMENTO | VARCHAR2 | Y |  |
| 19 | CODIGO_LEITO_ATUAL | NUMBER | Y |  |
| 20 | NR_CNS | VARCHAR2 | Y |  |
| 21 | NM_BAIRRO | VARCHAR2 | Y |  |
| 22 | NR_CEP | VARCHAR2 | Y |  |
| 23 | CD_PROFISSAO | NUMBER | Y |  |
| 24 | CD_GRAU_INS | NUMBER | Y |  |
| 25 | NM_MAE | VARCHAR2 | Y |  |
| 26 | TP_COR | VARCHAR2 | Y |  |
| 27 | DS_ENDERECO | VARCHAR2 | Y |  |
| 28 | NR_ENDERECO | NUMBER | Y |  |
| 29 | DS_COMPLEMENTO | VARCHAR2 | Y |  |
| 30 | TP_ESTADO_CIVIL | VARCHAR2 | Y |  |
| 31 | CD_CIDADE | NUMBER | Y |  |
| 32 | CD_PAIS | NUMBER | Y |  |
| 33 | NM_CIDADE | VARCHAR2 | Y |  |
| 34 | TP_ATENDIMENTO | VARCHAR2 | N |  |
| 35 | VL_PESO | NUMBER | Y |  |
| 36 | NR_TELEFONE | VARCHAR2 | Y |  |

---

## HEPIC.V_HEPIC_PACIENTE_V4

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 2 | CNPJ_EMPRESA | NUMBER | Y |  |
| 3 | CD_PACIENTE | NUMBER | N |  |
| 4 | PCT_PROCESSO | NUMBER | N |  |
| 5 | ID_PCT_GLOBAL | VARCHAR2 | Y |  |
| 6 | NM_PACIENTE | VARCHAR2 | N |  |
| 7 | DT_NASCIMENTO | DATE | Y |  |
| 8 | SEXO_PACIENTE | VARCHAR2 | N |  |
| 9 | TP_RACA | VARCHAR2 | Y |  |
| 10 | NM_RACA | VARCHAR2 | Y |  |
| 11 | NR_FONE | VARCHAR2 | Y |  |
| 12 | CD_ENDERECO | NUMBER | Y |  |
| 13 | NR_CEP | VARCHAR2 | Y |  |
| 14 | NM_ENDERECO | VARCHAR2 | Y |  |
| 15 | NM_COMPLEMENTO | VARCHAR2 | Y |  |
| 16 | NM_CIDADE | VARCHAR2 | Y |  |
| 17 | CD_CIDADE | NUMBER | Y |  |
| 18 | CD_UF | VARCHAR2 | Y |  |
| 19 | NM_PAIS | VARCHAR2 | Y |  |
| 20 | PESO_RN | VARCHAR2 | Y |  |
| 21 | SN_OBITO | CHAR | Y |  |
| 22 | DT_OBITO | DATE | Y |  |
| 23 | DT_CADASTRO | DATE | N |  |
| 24 | DT_UPDATE | DATE | Y |  |

---

## HEPIC.V_HEPIC_PESO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_COLETA_SINAL_VITAL | NUMBER | N |  |
| 2 | CD_SINAL_VITAL | NUMBER | N |  |
| 3 | DS_SINAL_VITAL | VARCHAR2 | Y |  |
| 4 | VALOR | NUMBER | Y |  |
| 5 | CD_ATENDIMENTO | NUMBER | Y |  |
| 6 | CD_PRESTADOR | NUMBER | Y |  |
| 7 | NM_USUARIO | VARCHAR2 | Y |  |
| 8 | DATA_COLETA | VARCHAR2 | Y |  |
| 9 | SIGLA_SINAL_VITAL | VARCHAR2 | Y |  |
| 10 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 11 | TP_ATENDIMENTO | VARCHAR2 | N |  |

---

## HEPIC.V_HEPIC_PRESCRICAO_V4

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EMPRESA | NUMBER | N |  |
| 2 | CNPJ_EMPRESA | NUMBER | Y |  |
| 3 | CD_ATENDIMENTO | NUMBER | N |  |
| 4 | TP_ATENDIMENTO | VARCHAR2 | N |  |
| 5 | DS_TP_ATENDIMENTO | VARCHAR2 | Y |  |
| 6 | CD_UNID_INT | NUMBER | Y |  |
| 7 | DS_UNID_INT | VARCHAR2 | N |  |
| 8 | CD_SETOR | NUMBER | Y |  |
| 9 | DS_SETOR | VARCHAR2 | N |  |
| 10 | CD_SUBUNID_INT | VARCHAR2 | Y |  |
| 11 | DS_SUBUNID_INT | VARCHAR2 | Y |  |
| 12 | CD_PACIENTE | NUMBER | N |  |
| 13 | CD_PRE_MED | NUMBER | N |  |
| 14 | CD_ITPRE_MED | NUMBER | N |  |
| 15 | TP_PRESCRICAO | CHAR | Y |  |
| 16 | CD_PRODUTO | NUMBER | Y |  |
| 17 | DS_PRODUTO | VARCHAR2 | N |  |
| 18 | CD_UNIDADE | VARCHAR2 | Y |  |
| 19 | DS_UNIDADE | VARCHAR2 | N |  |
| 20 | CD_TIP_FRE | NUMBER | N |  |
| 21 | DS_TIP_FRE | VARCHAR2 | N |  |
| 22 | NR_INTERVALO | NUMBER | Y |  |
| 23 | CD_FOR_APL | VARCHAR2 | N |  |
| 24 | DS_FOR_APL | VARCHAR2 | N |  |
| 25 | QT_ITPRE_MED | NUMBER | Y |  |
| 26 | VL_FATOR | NUMBER | N |  |
| 27 | VL_TOTAL | VARCHAR2 | Y |  |
| 28 | SN_URGENTE | CHAR | Y |  |
| 29 | DS_ITPRE_MED | VARCHAR2 | Y |  |
| 30 | NR_DIA | NUMBER | Y |  |
| 31 | DS_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 32 | QTD_DIAS | NUMBER | Y |  |
| 33 | CD_TIP_TRATAMENTO | VARCHAR2 | Y |  |
| 34 | DS_TIP_TRATAMENTO | VARCHAR2 | Y |  |
| 35 | CD_PRESTADOR | NUMBER | N |  |
| 36 | DS_PRESTADOR | VARCHAR2 | N |  |
| 37 | DT_PRESCRICAO | DATE | Y |  |
| 38 | DT_VALIDADE | DATE | N |  |
| 39 | VL_CUSTO_MEDIO_REF | NUMBER | Y |  |
| 40 | SN_CANCELADO | CHAR | Y |  |
| 41 | DT_INSERT | DATE | N |  |
| 42 | DT_UPDATE | DATE | N |  |

---

## HEPIC.V_HEPIC_PRESTADOR_AVISO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NUMERO_EMPRESA | NUMBER | N |  |
| 2 | CODIGO_CIRURGIA | NUMBER | N |  |
| 3 | DESCRICAO_CIRURGIA | VARCHAR2 | Y |  |
| 4 | CODIGO_VIA_DE_ACESSO | NUMBER | Y |  |
| 5 | DESCRICAO_VIA_DE_ACESSO | VARCHAR2 | Y |  |
| 6 | CODIGO_CIRURGIAO_PRINCIPAL | NUMBER | N |  |
| 7 | CODIGO_SEQ_CIRURGIA | NUMBER | N |  |
| 8 | CIRURGIA_PRINCIPAL | VARCHAR2 | N |  |
| 9 | MEDICO_PRINCIPAL | VARCHAR2 | N |  |

---

## HEPIC.V_HEPIC_PRES_DISPEN

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITPRE_MED | NUMBER | N |  |
| 2 | DT_MVTO_ESTOQUE | DATE | N |  |

---

## HEPIC.V_HEPIC_PRE_N

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRE_MED | NUMBER | N |  |
| 2 | CD_ATENDIMENTO | NUMBER | N |  |
| 3 | CD_PRESTADOR | NUMBER | N |  |
| 4 | CD_UNID_INT | NUMBER | Y |  |
| 5 | DT_PRE_MED | DATE | N |  |
| 6 | HR_PRE_MED | DATE | N |  |
| 7 | CD_ID_USUARIO | NUMBER | N |  |
| 8 | DT_VALIDADE | DATE | N |  |
| 9 | FL_IMPRESSO | VARCHAR2 | N |  |
| 10 | NM_USUARIO | VARCHAR2 | Y |  |
| 11 | CD_SETOR | NUMBER | Y |  |
| 12 | DH_CRIACAO | DATE | Y |  |
| 13 | DH_IMPRESSAO | DATE | Y |  |
| 14 | NM_USUARIO_AUTORIZADOR | VARCHAR2 | Y |  |
| 15 | CD_REGISTRO_CLINICO | NUMBER | Y |  |
| 16 | CD_ITPRE_MED | NUMBER | N |  |
| 17 | CD_TIP_ESQ | VARCHAR2 | N |  |
| 18 | CD_TIP_PRESC | NUMBER | N |  |
| 19 | CD_TIP_FRE | NUMBER | N |  |
| 20 | DS_TIP_FRE | VARCHAR2 | N |  |
| 21 | NR_INTERVALO | NUMBER | Y |  |
| 22 | TP_HORARIO | VARCHAR2 | N |  |
| 23 | CD_FOR_APL | VARCHAR2 | N |  |
| 24 | DS_FOR_APL | VARCHAR2 | N |  |
| 25 | QT_ITPRE_MED | NUMBER | Y |  |
| 26 | DS_ITPRE_MED | VARCHAR2 | Y |  |
| 27 | SN_CANCELADO | VARCHAR2 | Y |  |
| 28 | CD_UNI_PRO | NUMBER | N |  |
| 29 | CD_UNIDADE | VARCHAR2 | Y |  |
| 30 | VL_FATOR | NUMBER | N |  |
| 31 | DS_UNIDADE | VARCHAR2 | N |  |
| 32 | SN_ATIVO | VARCHAR2 | N |  |
| 33 | CD_ITUNIDADE | NUMBER | N |  |
| 34 | DS_UNIDADE_PRESC | VARCHAR2 | Y |  |
| 35 | DS_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 36 | QT_DIAS | NUMBER | Y |  |
| 37 | NR_DIA | NUMBER | Y |  |
| 38 | TP_JUSTIFICATIVA | VARCHAR2 | Y |  |
| 39 | SN_SOLICITA | VARCHAR2 | Y |  |
| 40 | SN_URGENTE | VARCHAR2 | Y |  |
| 41 | CD_PRODUTO | NUMBER | N |  |
| 42 | CD_SUB_CLA | NUMBER | N |  |
| 43 | CD_CLASSE | NUMBER | N |  |
| 44 | CD_ESPECIE | NUMBER | N |  |
| 45 | DS_PRODUTO | VARCHAR2 | N |  |
| 46 | VL_CUSTO_MEDIO | NUMBER | Y |  |
| 47 | CD_ESTOQUE | NUMBER | Y |  |
| 48 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 49 | TP_ATENDIMENTO | VARCHAR2 | N |  |

---

## HEPIC.V_HEPIC_PROC_CIRURGIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CODIGO_CIRURGIA | NUMBER | N |  |
| 2 | DESCRICAO_CIRURGIA | VARCHAR2 | N |  |
| 3 | CD_PRO_FAT | VARCHAR2 | Y |  |
| 4 | CD_PRO_FAT_SUS | VARCHAR2 | Y |  |
| 5 | CD_PROCEDIMENTO_SIH | VARCHAR2 | Y |  |
| 6 | SN_OBSTETRICA | VARCHAR2 | N |  |

---

## HEPIC.V_HEPIC_PROF_CIRURGIAS_V4

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EMPRESA | NUMBER | N |  |
| 2 | CNPJ_EMPRESA | NUMBER | Y |  |
| 3 | CD_ATENDIMENTO | NUMBER | Y |  |
| 4 | DT_ATENDIMENTO | DATE | N |  |
| 5 | TP_ATENDIMENTO | VARCHAR2 | N |  |
| 6 | CD_CIRURGIA_AVISO | NUMBER | N |  |
| 7 | CD_PRESTADOR_AVISO | NUMBER | Y |  |
| 8 | CD_AVISO_CIRURGIA | NUMBER | N |  |
| 9 | CD_CIRURGIA | NUMBER | N |  |
| 10 | CD_PRESTADOR | NUMBER | N |  |
| 11 | NM_PRESTADOR | VARCHAR2 | N |  |
| 12 | SN_PRINCIPAL | CHAR | Y |  |
| 13 | CD_ATIV_MEDICA | VARCHAR2 | N |  |
| 14 | DS_ATIV_MEDICA | VARCHAR2 | N |  |
| 15 | DT_INSERT | DATE | Y |  |
| 16 | DT_UPDATE | DATE | Y |  |

---

## HEPIC.V_HEPIC_SALA_CIRURGICA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NUMERO_EMPRESA | NUMBER | N |  |
| 2 | CODIGO_SALA_CIRURGIA | NUMBER | N |  |
| 3 | DESCRICAO_SALA_CIRURGIA | VARCHAR2 | N |  |

---

## HEPIC.V_HEPIC_SETOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NUMERO_EMPRESA | NUMBER | N |  |
| 2 | CODIGO_SETOR | NUMBER | N |  |
| 3 | DESCRICAO_SETOR | VARCHAR2 | N |  |

---

## HEPIC.V_HEPIC_SINAIS_VITAIS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_COLETA_SINAL_VITAL | NUMBER | N |  |
| 2 | CD_SINAL_VITAL | NUMBER | N |  |
| 3 | DS_SINAL_VITAL | VARCHAR2 | Y |  |
| 4 | VALOR | NUMBER | Y |  |
| 5 | CD_ATENDIMENTO | NUMBER | Y |  |
| 6 | CD_PRESTADOR | NUMBER | Y |  |
| 7 | NM_USUARIO | VARCHAR2 | Y |  |
| 8 | DATA_COLETA | VARCHAR2 | Y |  |
| 9 | SIGLA_SINAL_VITAL | VARCHAR2 | Y |  |
| 10 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 11 | TP_ATENDIMENTO | VARCHAR2 | N |  |

---

## HEPIC.V_HEPIC_SINAL_VITAL_V4

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EMPRESA | NUMBER | N |  |
| 2 | CNPJ_EMPRESA | NUMBER | Y |  |
| 3 | CD_ATENDIMENTO | NUMBER | N |  |
| 4 | DT_ATENDIMENTO | DATE | N |  |
| 5 | TP_ATENDIMENTO | VARCHAR2 | N |  |
| 6 | DS_TP_ATENDIMENTO | VARCHAR2 | Y |  |
| 7 | CD_PACIENTE | NUMBER | N |  |
| 8 | CD_COLETA_SINAL_VITAL | NUMBER | N |  |
| 9 | CD_SINAL_VITAL | NUMBER | N |  |
| 10 | DS_SINAL_VITAL | VARCHAR2 | Y |  |
| 11 | VALOR | NUMBER | Y |  |
| 12 | CD_PRESTADOR | NUMBER | Y |  |
| 13 | DT_COLETA | DATE | Y |  |
| 14 | DT_COLETA_FIM | DATE | Y |  |
| 15 | DT_INSERT | DATE | Y |  |
| 16 | DT_UPDATE | DATE | Y |  |

---

## HEPIC.V_HEPIC_TIPO_ANESTESIA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CODIGO_TIPO_ANESTESIA | NUMBER | N |  |
| 2 | DESCRICAO_TIPO_ANESTESIA | VARCHAR2 | N |  |

---

## HEPIC.V_HEPIC_TRANSFER_V4

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 2 | CNPJ_EMPRESA | NUMBER | Y |  |
| 3 | CD_ATENDIMENTO | NUMBER | Y |  |
| 4 | TP_ATENDIMENTO | VARCHAR2 | N |  |
| 5 | CD_ESPECIALIDADE | NUMBER | Y |  |
| 6 | CD_MOV_INT | NUMBER | N |  |
| 7 | CD_LEITO_ANTERIOR | NUMBER | Y |  |
| 8 | CD_UNID_INT | NUMBER | N |  |
| 9 | CD_UNID_INT_FIS | NUMBER | N |  |
| 10 | CD_SUBUNID_FIS | VARCHAR2 | Y |  |
| 11 | CD_SUBUNID | VARCHAR2 | Y |  |
| 12 | CD_SETOR | NUMBER | N |  |
| 13 | CD_SETOR_FIS | NUMBER | N |  |
| 14 | CD_QUARTO | VARCHAR2 | Y |  |
| 15 | CD_LEITO | NUMBER | N |  |
| 16 | DT_INICIO_TRANSF | DATE | N |  |
| 17 | DT_FINAL_TRANSF | DATE | Y |  |
| 18 | DT_INSERT | DATE | N |  |
| 19 | DT_UPDATE | DATE | Y |  |

---

## HEPIC.V_HEPIC_UNIDADE_INTERNACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NUMERO_EMPRESA | NUMBER | N |  |
| 2 | CODIGO_UNIDADE_INTERNACAO | NUMBER | N |  |
| 3 | DESCRICAO_UNIDADE_INTERNACAO | VARCHAR2 | N |  |

---

## HEPIC.V_HEPIC_VIA_DE_ACESSO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CODIGO_VIA_DE_ACESSO | NUMBER | N |  |
| 2 | DESCRICAO_VIA_DE_ACESSO | VARCHAR2 | N |  |
