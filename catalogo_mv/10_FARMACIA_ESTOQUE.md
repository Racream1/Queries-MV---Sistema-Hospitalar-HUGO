# 10 - Farmacia e Estoque

> Produtos, movimentacao, almoxarifado, solicitacoes

## Resumo

- **Tabelas**: 182
- **Owners**: DBAMV

---

## DBAMV.ARSENAL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ARSENAL | NUMBER | N |  |
| 2 | DS_CORREDOR | VARCHAR2 | N |  |
| 3 | DS_ARMARIO | VARCHAR2 | N |  |
| 4 | DS_PRATELEIRA | VARCHAR2 | N |  |
| 5 | SN_ATIVO | VARCHAR2 | N |  |
| 6 | CD_USUARIO_INC | VARCHAR2 | N |  |
| 7 | DT_INC_USUARIO | DATE | N |  |
| 8 | CD_USUARIO_ALT | VARCHAR2 | Y |  |
| 9 | DT_ALT_USUARIO | DATE | Y |  |
| 10 | CD_SETOR_PRINCIPAL | NUMBER | Y |  |

---

## DBAMV.CONFERE_CONTAGEM
> Tabela para realizar a contagem dos produtos que est?o no estoque configurados com a Conferencia de Contagem

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONFERE_CONTAGEM | NUMBER | N | Codigo sequencial gerado para cada contagem. |
| 2 | CD_CONTAGEM | NUMBER | N | Codigo que indica a contagem. |
| 3 | DH_CONFERE_CONTAGEM | DATE | N | Data que foi realizada a contagem. |
| 4 | CD_USUARIO | VARCHAR2 | Y | Informa o usuario que realizaou a contagem. |
| 5 | SN_FECHADA | VARCHAR2 | N | Indica se a contagem do usuario esta aberta ou fechada. |

---

## DBAMV.CONF_ESTOQUE_POR_ESPECIE
> Tabela para configuração da conferência produtos por espécie/estoque/empresa

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EMPRESA | NUMBER | N | Código multi empresa para vínculo da empresa a regra de conferência por espécie |
| 2 | CD_ESTOQUE | NUMBER | N | Código do estoque para vínculo a regra de conferência por espécie |
| 3 | CD_ESPECIE | NUMBER | N | Código da espécie que fará parte da regra de conferêcia |

---

## DBAMV.CONSUMO
> Tabela que guarda os consumos devidos de todos os tipos de unidades consumidoras controladas

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONSUMO | NUMBER | N | Guarda o código do consumo. É alimentada pela sequence SEQ_CONSUMO |
| 2 | CD_UNIDADE_CONSUMIDORA | NUMBER | N | Guarda o código da unidade consumidora (medidor) a qual o consumo devido se refere |
| 3 | DT_REFERENCIA | DATE | N | Guarda o mês e ano ao qual o consumo se refere |
| 4 | DT_MEDICAO | DATE | N | Guarda a data em que foi feita a medição do consumo |
| 5 | QT_DIAS_MEDICAO | NUMBER | N | Guarda a quantidade de dias transcorridos entre a medição anterior e a corrente |
| 6 | VL_TOTAL | NUMBER | N | Guarda o valor total do consumo |
| 7 | QT_CONSUMO | NUMBER | Y | Guarda a quantidade medida do consumo. Apenas para consumo de água e gás |
| 8 | VL_CONSUMO | NUMBER | Y | Guarda o valor referente ao consumo. Apenas para consumo de água e gás |
| 9 | VL_ESGOTO | NUMBER | Y | Guarda o valor referente ao esgoto. Apenas para consumo de água |
| 10 | VL_DEMAIS_VALORES | NUMBER | Y | Guarda o valor referente aos demais valores presentes no consumo. Apenas para consumo de água e gás |

---

## DBAMV.DIVERGENCIA_QUANT_PROD
> Tabela que ira armazenar os itens que est?o com divergencia de saldo entre a consolidacao e a ficha de estoque

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DIVERGENCIA_QUANT_PROD | NUMBER | N | Chave Primaria da tabela |
| 2 | CD_ESTOQUE | NUMBER | Y | Codigo do estoque |
| 3 | CD_PRODUTO | NUMBER | Y | Codigo do produto |
| 4 | QT_SALDO_FICHA | NUMBER | Y | Quantidade de Saldo que existe na ficha de estoque |
| 5 | QT_SALDO_CONSOLIDA | NUMBER | Y | Quantidade de Saldo que existe na consolidac?o |
| 6 | QT_DIVERGENCIA_QUANT | NUMBER | Y | Quantidade de Saldo Divergente da ficha de estoque e da consolidacao |

---

## DBAMV.ENDERECAMENTO
> Tabela para cadastrar os Enderecamento de Produtos.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ENDERECAMENTO | NUMBER | N | Codigo do Enderecamento. |
| 2 | CD_ENT_PRO | NUMBER | Y | Codigo da Entrada de Produto. |
| 3 | CD_SOLSAI_PRO | NUMBER | Y | Codigo da  Solicitac?o (de produtos, ou devoluc?o). |
| 4 | TP_STATUS | VARCHAR2 | N | Status do Enderecamento. |
| 5 | CD_USUARIO | VARCHAR2 | N | Usuario que cadastra o Enderecamento. |
| 6 | DT_ENDERECAMENTO | DATE | N | Data do cadastro de Enderecamento. |

---

## DBAMV.ENT_PRO_ACERTO
> Tabela que guarda as entradas de acerto de estoque

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ENT_PRO_ACERTO | NUMBER | N | Guarda o código do acerto de estoque. É alimentada pela sequence SEQ_ENT_PRO_ACERTO |
| 2 | CD_TIP_DOC | NUMBER | N |  |
| 3 | CD_ESTOQUE | NUMBER | N |  |
| 4 | CD_CFOP | NUMBER | N |  |
| 5 | CD_MOTIVO_ACERTO_ESTOQUE | NUMBER | N |  |
| 6 | DH_ENTRADA | DATE | N | Guarda a data e a hora da entrada do acerto de estoque |
| 7 | DH_CONCLUSAO | DATE | Y | Guarda a data e a hora da conclusão do acerto de estoque |
| 8 | TP_DOCUMENTO_ENTRADA | VARCHAR2 | N | Guarda o tipo de docmento de entrada do acerto de estoque |
| 9 | CD_ENT_PRO | NUMBER | Y | Guarda o código da da entrada de produto |

---

## DBAMV.ESTOQUE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ESTOQUE | NUMBER | N | Codigo do estoque |
| 2 | DS_ESTOQUE | VARCHAR2 | N | Descric?o do estoque |
| 3 | SN_CODIGO_DE_BARRAS | VARCHAR2 | N |  |
| 4 | SN_IMPRIME_DIRETO | VARCHAR2 | N |  |
| 5 | DS_CAMINHO_IMPRESSORA | VARCHAR2 | Y |  |
| 6 | DS_ETIQUETA_ENTRADA | VARCHAR2 | Y |  |
| 7 | DS_ETIQUETA_SAIDA | VARCHAR2 | Y |  |
| 8 | CD_MULTI_EMPRESA | NUMBER | N | Codigo multi empresa do estoque |
| 9 | CD_REDUZIDO_DEBITO | NUMBER | Y |  |
| 10 | CD_REDUZIDO_CREDITO | NUMBER | Y |  |
| 11 | CD_SETOR | NUMBER | N |  |
| 12 | TP_ESTOQUE | VARCHAR2 | N |  |
| 13 | CD_OS | NUMBER | Y |  |
| 14 | DS_COMPRO_SAIDA_PACIENTE | VARCHAR2 | Y |  |
| 15 | DS_COMPRO_SAIDA_SETOR | VARCHAR2 | Y |  |
| 16 | DS_COMPRO_DEVOLUCAO_PACIENTE | VARCHAR2 | Y |  |
| 17 | DS_COMPRO_DEVOLUCAO_SETOR | VARCHAR2 | Y |  |
| 18 | DS_TRANSFERENCIA_ESTOQUE | VARCHAR2 | Y |  |
| 19 | SN_ESTOQUE_CUSTO_MEDIO | VARCHAR2 | Y |  |
| 20 | SN_PERMITIR_DIGITAR_PRODUTO | VARCHAR2 | N |  |
| 21 | TP_REPOSICAO_ESTOQUE | VARCHAR2 | Y |  |
| 22 | NR_COPIA_ETIQUETA_SAIDA | NUMBER | Y |  |
| 23 | DS_RELATORIO_ETIQUETA_SAIDA | VARCHAR2 | Y |  |
| 24 | SN_LIM_TRANS_COTA | VARCHAR2 | N |  |
| 25 | SN_LOGON | VARCHAR2 | Y |  |
| 26 | SN_CHECA_SALDO_EST | VARCHAR2 | N |  |
| 27 | SN_CALC_DEMANDA_EMP | VARCHAR2 | Y |  |
| 28 | TP_IMPRESSAO_ESTOQUE | VARCHAR2 | Y |  |
| 29 | NR_HORAS_BAIXA_AUTOMATICA | NUMBER | Y | Tempo maximo em horas de atraso permitido, antes que seja feito a baixa automatica |
| 30 | SN_IMPRIME_ZEBRA | VARCHAR2 | Y | Flag que identifica se a etiqueta de paciente utilizara impress?o zebra |
| 31 | CD_ETIQUETA | NUMBER | Y | Codigo da etiqueta selecionada para impress?o zebra |
| 32 | SN_KIT_PRODUZIDO | VARCHAR2 | Y |  |
| 33 | SN_APENAS_URGENTE | VARCHAR2 | Y | O tipo de solicitac?o que deve ser impresso no palm |
| 34 | TP_FORMA_ENVIO | VARCHAR2 | Y | identificar qual o tipo de envio na solicitac?o de compras |
| 35 | DS_FORMA_ENVIO | VARCHAR2 | Y | Descric?o da forma de envio |
| 36 | CD_ESTOQUE_ORIGEM | NUMBER | Y | Identificar o estoque de origem quando for database link |
| 37 | SN_GERA_SUGESTAO_COMPRA | VARCHAR2 | Y | Indica se na digitac?o do produto na solicitac?o de compra ira gerar ou n?o a sugest?o de compra |
| 38 | SN_VINCULA_PROD_ATEND | VARCHAR2 | Y | Identifica se o sistema fara o vinculo entre os produtos solicitados e atendidos |
| 39 | SN_IMPRIME_PRESCRICAO | VARCHAR2 | N | Parametro condicional para a impress?o da solicitac?o ao estoque na prescric?o. |
| 40 | CD_ESTOQUE_DEVOLUCAO | NUMBER | Y | Devoluc?o de produtos com transferencia automatica para o estoque. |
| 41 | SN_PERMITE_LOTE_VAL_NULO | VARCHAR2 | Y | Indica se o lote e validade podem ficar em branco na devoluc?o de produtos. |
| 42 | NR_FECHAMENTO_AUTOMATICO | NUMBER | Y | Tempo em horas para bloqueio das solicitacoes |
| 43 | SN_IMP_SOL_PAC | VARCHAR2 | Y | Permite ou bloqueia a impress?o de solicitac?es para pacientes |
| 44 | SN_IMP_SOL_SET | VARCHAR2 | Y | Permite ou bloqueia a impress?o de solicitac?es para  setor |
| 45 | SN_IMP_SOL_EST | VARCHAR2 | Y | Permite ou bloqueia a impress?o de solicitac?es para estoque |
| 46 | SN_IMP_DEV_PAC | VARCHAR2 | Y | Permite ou bloqueia a impress?o de devoluc?es para paciente |
| 47 | SN_IMP_DEV_SET | VARCHAR2 | Y | Permite ou bloqueia a impress?o de devoluc?es para estoque |
| 48 | CD_SETOR_MOV_PADRAO | NUMBER | Y | Indicar qual setor padaro para as movimentac?es de saida e devoluc?o de paciente. |
| 49 | DS_CAMINHO_IMPRESSORA_URGENTE | VARCHAR2 | Y | Recebe o nome da impressora pra solicitac?es definidas como urgentes. |
| 50 | SN_SOLIC_DEV_FATURAMENTO | VARCHAR2 | Y | Gerar solicitac?o dev. aut. no Fatu. e Baixa aut. no estoque. |
| 51 | CD_MOTIVO_BAIXA_PADRAO | NUMBER | Y | Motivo de Baixa padrao para as baixas na mov. de devolucao. |
| 52 | CD_ESTOQUE_INTEGRA | VARCHAR2 | Y | Codigo do estoque (de-para) |
| 53 | CD_SEQ_INTEGRA | NUMBER | Y | Codigo sequencial da integrac?o |
| 54 | DT_INTEGRA | DATE | Y | Data em que o registro foi integrado |
| 55 | TP_SOLICITACAO | VARCHAR2 | Y | Tipo de Solicitac?o a ser visualiza pelo Palm |
| 56 | SN_ATENDER_SOL_PAC | VARCHAR2 | Y | Se o Estoque atende solicitac?es do Tipo Paciente |
| 57 | SN_ATENDER_SOL_SETOR | VARCHAR2 | Y | Se o Estoque atende solicitac?es do Tipo Setor |
| 58 | SN_ATENDER_SOL_TRANS_EST | VARCHAR2 | Y | Se o Estoque atende solicitac?es do Tipo Transferencia entre Estoques |
| 59 | NR_HORAS_ANTECEDENCIA_ATD | NUMBER | Y | Numero de Horas para atendimento de Solicitac?es dentro do Turno |
| 60 | SN_FILTRO_USUARIO | VARCHAR2 | Y | Se sera necessario informar o usuario a cada Solicitac?o Finalizada |
| 61 | SN_OUTROS_FILTROS | VARCHAR2 | Y | Se sera necessario informar os demais filtros de entrada a cada Solicitac?o Finalizada |
| 62 | SN_URGENCIA_TURNO | VARCHAR2 | Y | Se as solicitac?es definidas como Urgentes ser visualizadas junto com as Solicitac?es de Turno |
| 63 | SN_FECHAR_AUTOMATICO | VARCHAR2 | Y | Se o Sistema vai fechar automaticamente a Solicitac?o apos ser informado todos os itens |
| 64 | SN_ATENDER_PARCIAL | VARCHAR2 | Y | Se o Sistema permite atender parcialmente as solicitac?es. |
| 65 | SN_UTILIZAR_TURNOS | VARCHAR2 | Y | Se o Sistema utiliza Turnos na dispensac?o |
| 66 | SN_CONTAGEM | VARCHAR2 | N | Indica se o Estoque ira fazer utilizar a Conferencia Automatica ou n?o. |
| 67 | CD_ETIQUETA_CONTROLE_IMPRESSAO | NUMBER | Y | Etiqueta de codigo de barras que tera quantidade de impress?o controlada para este estoque |
| 68 | NR_HORAS_INCL_MOV_DEV_APO_ALTA | NUMBER | Y | Numero de horas permitido para inclus?o de movimentac?es de devoluc?o no periodo do atendimento a... |
| 69 | TP_COTA_ESTOQUE | VARCHAR2 | N | Tipo de reposic?o de produto com base na cota |
| 70 | SN_CONFIRMA_CONS | VARCHAR2 | N | Indica se deseja aguardar as confirmac?es das movimentac?es de devoluc?o |
| 71 | SN_MOV_CONSUMO_TRANSF | VARCHAR2 | N | Indica se deseja contabilizar o consumo da tranferencia |
| 72 | CD_REDUZIDO_CREDITO_CONSIGNADO | NUMBER | Y | Codigo reduzido trans p/ entrada de consignado |
| 73 | CD_REDUZIDO_DEBITO_CONSIGNADO | NUMBER | Y | Codigo reduzido trans p/ consumo de consignado |
| 74 | SN_ENDERECAMENTO_PRODUTO | VARCHAR2 | Y | Indica se o estoque trabalha com Enderecamento de Produtos. |
| 75 | TP_MOTIVO_DIVERGENCIA_ATENDIME | VARCHAR2 | N | Motivo de divergencia no atendimento : [S]-total, [N]-N?o obriga informar o motivo |
| 76 | SN_IMPRI_COMPRO_DEVOL_PACIENTE | VARCHAR2 | Y | Indica se o estoque vai permitir a impress?o de comprovante no atendimento de solicitac?o de devo... |
| 77 | DS_EMAIL_RECEBIMENTO | VARCHAR2 | Y | EMAIL RESPONSAVEL PELO RECEBIMENTO DAS ENTRADAS DE NOTA FISCAL |
| 78 | DS_EMAIL_ENVIO | VARCHAR2 | Y | EMAIL DE ENVIO |
| 79 | DS_CONTEUDO_EMAIL | VARCHAR2 | Y | CONTEUDO DO EMAIL |
| 80 | SN_ESTOQUE_PRINCIPAL | VARCHAR2 | N | INDICA SE O EMAIL SERA ENVIADO PARA O ESTOQUE PRINCIPAL OU TODOS ESTOQUES. |
| 81 | SN_ENVIO_EMAIL_NOTA | VARCHAR2 | N | HABILITA O ENVIO DE EMAIL COM O AVISO DE CHEGADA DE PRODUTO NO ESTOQUE. |
| 82 | DS_TRANSFERENCIA_EMPRESA | VARCHAR2 | Y | Define qual o comprovante que sera impresso no momento de uma transferencia entre empresa. |
| 83 | DS_SOLICITACAO_AVULSA | VARCHAR2 | Y | Define qual o comprovante que sera impresso no momento de uma solicitac?o de produtos. |
| 84 | SN_PERMITIR_ITENS_DEVOLVER_KIT | VARCHAR2 | N | Permite Devoluc?o de Kits por itens a devolver - a ser utilizado na tela de confirmac?o de consum... |
| 85 | SN_PERMITIR_ITENS_CONSUMO_KIT | VARCHAR2 | N | Permite Devoluc?o de Kits por itens consumidos - a ser utilizado na tela de confirmac?o de consum... |
| 86 | SN_PERMITIR_DEVOL_KIT_FECHADO | VARCHAR2 | N | Permite Devoluc?o de Kits por Kit Completo\Fechado - a ser utilizado na tela de confirmac?o de co... |
| 87 | TP_CONSUMO_KIT_INICIAL | VARCHAR2 | N | Opc?o inicial para devoluc?o de kits - a ser utilizado na tela de confirmac?o de consumo kits, "K... |
| 88 | SN_PERMITIR_PRODUTO_PROD_KIT | VARCHAR2 | N | Permite digitar produtos sem codigo de barras na produc?o de kits, "Sim" ou "N?o" |
| 89 | SN_PERMITIR_CARREGAR_PROD_KIT | VARCHAR2 | N | Permite carregar automaticamente os itens de kits, "Sim" ou "N?o" |
| 90 | SN_ATENDER_MAIOR_PALM | VARCHAR2 | N | Permite atender solicitac?o a maior no palm |
| 91 | SN_CONTROLA_BARRAS_DEVOLKIT | VARCHAR2 | N | Controla Codigo de barras de produto item informado na produc?o na devoluc?o do Kit, "Sim" ou "N?o" |
| 92 | SN_IMPRESSAO_TERMICA | VARCHAR2 | N | Indica se o estoque ira imprimir as solicitac?es na impressora termica. |
| 93 | DS_COMPRO_SOL_TERMICO | VARCHAR2 | Y | Caminho da impressora termica. |
| 94 | SN_TERMICA_CENTRALIZADOR | VARCHAR2 | N | Indica se o estoque irá imprimir as solicitações no centralizador impressora térmica. |
| 95 | DS_URG_SOL_TERMICO | VARCHAR2 | Y | Caminho da impressora térmica Urgente. |
| 96 | DS_PRESC_SOL_TERMICO | VARCHAR2 | Y | Caminho da impressora térmica Presc. |
| 97 | SN_EXIGE_CHANCELA | VARCHAR2 | Y | Indica chancela para liberar o medicamento para o paciente quando a solicitac?o for para produto ... |
| 98 | SN_CONSIDERA_TRANSF_CONSUMO | VARCHAR2 | N | Considera Transferencia entre estoques do tipo Distribuic?o no calculo do consumo. |
| 99 | SN_RESTINGE_QTD_ITEM | VARCHAR2 | N | Indica se ao solicitar produtos informando o codigo da prescric?o, restrigira a quantidade para a... |
| 100 | CD_FORMULA | NUMBER | Y | Codigo da avaliac?o por estoque |
| 101 | SN_INFORMA_ULTIMA_DISPERSAO | VARCHAR2 | N | INFORMA A ULTIMA DISPERSAO DO PRODUTO PARA PACIENTE (M_SAIPAC) |
| 102 | SN_USA_CONFERENCIA_ENTRADA | VARCHAR2 | N | Guarda o indicador de uso da conferência na entrada dos produtos. |
| 103 | SN_DISPENSARIO_ELETRONICO | VARCHAR2 | N | A flag de Dispensário Eletrônico identificará se o Sub-estoque é um dispensário. |
| 104 | SN_MANIPULA_PRODUTO | VARCHAR2 | Y | Guarda o indicador da chave REALIZA MANIPULACAO DE PRODUTOS, essa configuração habilita a opção d... |
| 105 | DS_CAMINHO_IMPRESSORA_MANIPULA | VARCHAR2 | Y | Guarda o indicador da chave NOME DA IMP. DA SOLIC. DE PRODUTOS P/IMP. AUTOMATICA NO ESTOQUE MANIP... |
| 106 | SN_CONTROLAR_ROUPARIA | VARCHAR2 | N | Guarda o indicador se o estoque será utilizado para controle de rouparia |
| 107 | SN_FRACIONAR_PRODUTO | VARCHAR2 | N | Indica se o produto vai ou não ser fracionado |
| 108 | TP_ESTOQUE_SUBSTITUTO | VARCHAR2 | N | TIPO DO ESTOQUE SUBSTITUTO - NUNCA \| SEM_COTA \| SEM_SALDO. |
| 109 | SN_IDENTIFICADOR_UNI_PRD_EST | VARCHAR2 | N | Define a regra de utilização do estoque substituto no momento de geração das solicitações dos pro... |
| 110 | SN_CONTROLA_LOTE_PRODUCAO | VARCHAR2 | Y | HABILITA A EDIÇÃO DO CAMPO CD_LOTE DO ITEM PRINCIPAL NA TELA DE ENTRADA DE PRODUÇÃO, CASO ESTEJA ... |
| 111 | SN_ALTERA_FRETE | VARCHAR2 | N | INDICA SE O ESTOQUE PERMITE ALTERAÇÃO DO FRETE NA ENTRADA DE PRODUTOS QUANDO HOUVER ORDEM DE COMP... |
| 112 | NM_REPORT_ETIQUETA | VARCHAR2 | Y | Nome do Modulo da etiqueta criada no MVReport |
| 113 | SN_PRODUTO_PROD_SO_FORMULA | VARCHAR2 | N | CONFIGURAÇÃO PARA SINALIZAR PRODUTOS PRODUZIDOS SOMENTE POR FORMULA. O DEFAULT É N |
| 114 | SN_CONTR_VAL_COMP_VAL_FORMULA | VARCHAR2 | N | CONFIGURAÇÃO PARA SINALIZAR O CONTROLE DA VALIDADE DOS COMPONENTES COM A VALIDADE DA FORMULA. O D... |
| 115 | SN_SAIDA_DIRE_SETOR_PROD_PRODU | VARCHAR2 | N | CONFIGURAÇÃO PARA SINALIZAR O CONTROLE DA SAIDA DIRETA PARA O SETOR DOS PRODUTOS PRODUZIDOS. O DE... |
| 116 | SN_SAIDA_DIRE_PACI_PROD_PRODU | VARCHAR2 | N | CONFIGURAÇÃO PARA SINALIZAR O CONTROLE DA SAIDA DIRETA PARA O PACIENTE DOS PRODUTOS PRODUZIDOS. O... |
| 117 | SN_CENTRAL_KIT | VARCHAR2 | N | Informa que o estoque se trata de uma central de kit's |
| 118 | SN_HAB_ESTDEST_QTDDIAS_SOL_PRD | VARCHAR2 | N | Habilitar Estoque de Destino e Quantidade de Dias na "Busca de Cota" na Solicitação de Produtos |
| 119 | SN_HAB_SET_DEST_COT_RESSUP_EMP | VARCHAR2 | N | Permitir informar Setor de Destino no cadastro de Cota de Ressuprimento por Empresa |
| 120 | SN_COD_BARRAS_AUTO | VARCHAR2 | Y | Define se utiliza código de barras automático |
| 121 | SN_EXCECAO_CANCELA_SOL_ALTA | VARCHAR2 | N | Indica se o estoque será exceção a regra de cancelamento das solicitações ao estoque para pacient... |
| 122 | CD_ETIQUETA_PESAGEM_MAT_PRIMA | NUMBER | Y | INDICA O CÓDIGO DA ETIQUETA QUE SERÁ IMPRESSA NA PESAGEM DA MATERIA PRIMA. |
| 123 | CD_ETIQ_PAC_ORDEM_PRODUCAO | NUMBER | Y | INDICA O CÓDIGO DA ETIQUETA QUE SERÁ IMPRESSA AO REALIZAR AO PRODUZIR DA ORDEM DE PRODUÇÃO. |
| 124 | SN_CONSIDERA_TRANSF_EMP_CNSU | VARCHAR2 | N | Indica se a transferência entre empresas será considerada no cálculo do consumo dos produtos. Val... |

---

## DBAMV.ESTOQUE_PL_CONTAS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REDUZIDO | NUMBER | N |  |
| 2 | CD_REDUZIDO_DESPESA | NUMBER | N |  |
| 3 | CD_ESTOQUE | NUMBER | N |  |
| 4 | CD_ESPECIE | NUMBER | N |  |
| 5 | CD_REDUZIDO_RECEITA | NUMBER | Y |  |
| 6 | CD_SETOR | NUMBER | Y |  |
| 7 | CD_RED_EMP_RECEBIDO | NUMBER | Y | Codigo Reduzido de Emprestimos Recebidos |
| 8 | CD_RED_EMP_CONCEDIDO | NUMBER | Y | Codigo Reduzido de Emprestimos Concedidos |
| 9 | CD_RED_PAG_EMP_RECEBIDO | NUMBER | Y | Codigo Reduzido de Pagamentos de Emprestimos Recebidos |
| 10 | CD_RED_PAG_EMP_CONCEDIDO | NUMBER | Y | Codigo Reduzido de Pagamentos de Emprestimos Concedidos |
| 11 | CD_REDUZIDO_DEBITO_BAIXA | NUMBER | Y | Cod. reduzido de Despesa para as Baixas de Produtos |
| 12 | CD_RED_MANIPULACAO_DEBITO | NUMBER | Y | Conta Manipulacao de produtos debito |
| 13 | CD_RED_MANIPULACAO_CREDITO | NUMBER | Y | Conta Manipulacao de produtos credito |
| 14 | CD_RED_AJUSTE_DEBITO | NUMBER | Y | Conta ajuste de produtos debito |
| 15 | CD_RED_AJUSTE_CREDITO | NUMBER | Y | Conta ajuste de produtos credito |
| 16 | CD_SEQ_INTEGRA | NUMBER | Y |  |
| 17 | DT_INTEGRA | DATE | Y |  |
| 18 | CD_RED_INVENT_DEBITO | NUMBER | Y | Campo para informar o código reduzido de debito do inventário. |
| 19 | CD_RED_INVENT_CREDITO | NUMBER | Y | Campo para informar o código reduzido de credito do inventário. |
| 20 | CD_ID_ITEM_PRESUPOSTARIO | NUMBER | Y | Código Único do Item Presupostário. |
| 21 | CD_ITEM_PRESUPOSTARIO | NUMBER | Y | Código do Item Presupostário. |
| 22 | CD_REDUZIDO_BONIFICACAO | NUMBER | Y | Código reduzido da bonificação |
| 23 | CD_REDUZIDO_CONSIGNADO | NUMBER | Y | Codigo reduzido consignado |
| 24 | CD_REDUZIDO_OVERFILL | NUMBER | Y | Código Overffil |

---

## DBAMV.ESTOQUE_PRODUTO
> TABELA PARA GUADAR OS PRODUTOS QUE PODE SER PRODUZIDOS SEM FORMULA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ESTOQUE_PRODUTO | NUMBER | N | Código do estoque produto |
| 2 | CD_ESTOQUE | NUMBER | N | Código do Estoque |
| 3 | CD_PRODUTO | NUMBER | N | Código do Produto |
| 4 | SN_PRODUZIDO_SEM_FORMULA | VARCHAR2 | N | Sinaliza se o produto selecionado pode ser produzido sem formula |

---

## DBAMV.ESTOQUE_PRODUTO_FORMULA_EXC
> Tabela que grava os produtos que podem ser produzidos sem fórmula vinculada

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ESTOQUE | NUMBER | N | Código de estoque |
| 2 | CD_PRODUTO | NUMBER | N | Código do produto |

---

## DBAMV.ESTOQUE_RELATORIO_SCCOM
> Importac?o de dados para consolidac?o de relatorios de Estoque

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ESTOQUE | NUMBER | N | Codigo do Estoque |
| 2 | CD_HOSPITAL | VARCHAR2 | N | Codigo do hospital que exportou o regsitro |
| 3 | DS_ESTOQUE | VARCHAR2 | Y | Descric?o do Estoque |

---

## DBAMV.ESTOQUE_TRANSFERENCIA
> Tabela que armazena os estoques autorizados para receber transferencias do estoque selecionado

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ESTOQUE | NUMBER | N | Codigo de Estoque |
| 2 | CD_ESTOQUE_TRANSFERENCIA | NUMBER | N | Codigo de Estoque autorizado para receber transferencias do estoque selecionado |

---

## DBAMV.EST_ESP_OC
> Configuração de autorização de Ordem de Compra a nível de Estoque e Espécie

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ESTOQUE | NUMBER | Y | Código do estoque que o usuário pode autorizar caso tenha o nível de autorizador |
| 2 | CD_ESPECIE | NUMBER | Y | Código da espécie que o usuário pode autorizar caso tenha o nível de autorizador |
| 3 | CD_ID_USUARIO | VARCHAR2 | N | Código do usuário autorizador. |
| 4 | CD_MULTI_EMPRESA | NUMBER | N | Código da multi_empresa. |
| 5 | CD_NIVEL_AUTORIZADOR | NUMBER | Y | Código do nível autorizador |

---

## DBAMV.EST_PL_CON_TRANSACAO_EMPRESA
> Tabela Transac?o Estoque x Especie Entre Empresas

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ESTOQUE | NUMBER | N | Codigo do Estoque |
| 2 | CD_ESPECIE | NUMBER | N | Codigo da Especie |
| 3 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da Empresa que recebeu o lancamento |
| 4 | TP_TRANSACAO | VARCHAR2 | N | Tipo de Transac?o Estoque x Especie entre Empresas |
| 5 | CD_REDUZIDO | NUMBER | N | Codigo Reduzido Transitoria do Estoque x Especie |

---

## DBAMV.EST_PRO_RELATORIO_SCCOM
> Posic?o de Estoque dos produtos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ESTOQUE | NUMBER | N | Codigo do estoque |
| 2 | CD_PRODUTO | NUMBER | N | codigo do produto |
| 3 | CD_HOSPITAL | VARCHAR2 | N | Codigo do hospital que exportou o regsitro |
| 4 | QT_ESTOQUE_ATUAL | NUMBER | Y | Saldo do produto no estoque |
| 5 | QT_ESTOQUE_MAXIMO | NUMBER | Y | quantidade de estoque maximo |
| 6 | QT_ESTOQUE_MINIMO | NUMBER | Y | quantidade de estoque minimo |
| 7 | QT_ESTOQUE_VIRTUAL | NUMBER | Y | quantidade de estoque virtual |
| 8 | QT_PONTO_DE_PEDIDO | NUMBER | Y | quantidade de ponto de pedido do estoque |
| 9 | QT_CONSUMO_MES | NUMBER | Y | quantidade de consumo mes |
| 10 | QT_SOLICITACAO_DE_COMPRA | NUMBER | Y | quantidade na solicitac?o de compras |
| 11 | QT_ORDEM_DE_COMPRA | NUMBER | Y | quantidade na ordem de compra |
| 12 | DT_ULTIMA_MOVIMENTACAO | DATE | Y | data da ultima movimentac?o do produto no estoque |
| 13 | TP_CLASSIFICACAO_ABC | VARCHAR2 | Y | classificac?o ABC |
| 14 | QT_ESTOQUE_DOADO | NUMBER | Y | quantidade de estoque doado |
| 15 | QT_ESTOQUE_RESERVADO | NUMBER | Y | quantidade de reserva no estoque |
| 16 | QT_CONSUMO_ATUAL | NUMBER | Y | quantidade de consumo atual |

---

## DBAMV.EST_QUIMIO_MANIPULACAO
> Vínculo entre estoque de quimioterapia e estoques de manipulação

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ESTOQUE | NUMBER | N | Código do estoque de quimioterapia |
| 2 | CD_ESTOQUE_MANIPULACAO | NUMBER | N | Código do estoque de manipulação |

---

## DBAMV.ETIQUETA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ETIQUETA | NUMBER | N |  |
| 2 | DS_ETIQUETA | VARCHAR2 | N |  |
| 3 | TP_DRIVER | VARCHAR2 | N |  |
| 4 | QT_COLUNA | NUMBER | N |  |
| 5 | LARGURA | NUMBER | N |  |
| 6 | ALTURA | NUMBER | N |  |
| 7 | MARGEM_ESQUERDA | NUMBER | N |  |
| 8 | MARGEM_SUPERIOR | NUMBER | N |  |

---

## DBAMV.ETIQUETA_AMAP
> Tabela de Configurac?o da Etiqueta AMAP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ETIQUETA | NUMBER | N | Codigo da Etiqueta |
| 2 | DS_ETIQUETA | VARCHAR2 | N | Descric?o da Etiqueta |
| 3 | TP_DRIVER | VARCHAR2 | N | Tipo do Driver |
| 4 | QT_COLUNA | NUMBER | N | Quantidade de Colunas |
| 5 | LARGURA | NUMBER | N | Largura |
| 6 | ALTURA | NUMBER | N | Altura |
| 7 | MARGEM_ESQUERDA | NUMBER | N | Margem esquerda |
| 8 | MARGEM_SUPERIOR | NUMBER | N | Margem superior |

---

## DBAMV.ETIQUETA_AMDC

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ETIQUETA | NUMBER | N |  |
| 2 | DS_ETIQUETA | VARCHAR2 | N |  |
| 3 | TP_DRIVER | VARCHAR2 | N |  |
| 4 | QT_COLUNA | NUMBER | N |  |
| 5 | LARGURA | NUMBER | N |  |
| 6 | ALTURA | NUMBER | N |  |
| 7 | MARGEM_ESQUERDA | NUMBER | N |  |
| 8 | MARGEM_SUPERIOR | NUMBER | N |  |

---

## DBAMV.ETIQUETA_AMOSTRA_LAB_APOIO
> Etiqueta da amostra do laboratorio de apoio

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ETIQUETA_AMOSTRA_LAB_APOIO | NUMBER | N |  |
| 2 | CD_AMOSTRA | NUMBER | N | Código da amostra. |
| 3 | DS_COMANDO_IMPRESSAO | VARCHAR2 | Y | Comandos de impressão de etiqueta. |

---

## DBAMV.ETIQUETA_BARRA
> Tabela em que ser?o armazenadas as definic?es de etiquetas de codigo de barra

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GRUPO_BARRA | VARCHAR2 | N | Codigo do grupo de codigo de barra (FK que referencia a coluna cd_grupo_barra da tabela grupo_barra) |
| 2 | CD_ETIQUETA_BARRA | NUMBER | N | Sequencia da etiqueta de codigo de barra (PK) |
| 3 | CD_TIPO_RFERENCIA | VARCHAR2 | N | Codigo de referencia para a impress?o da etiqueta, esse codigo vem de outras tabelas do sistema d... |
| 4 | DS_ETIQUETA_BARRA | VARCHAR2 | Y | Descric?o detalhada da etiqueta (n?o sera impressa na etiqueta) |
| 5 | DS_ETIQUETA_ABREVIADA | VARCHAR2 | N | Descric?o abreviada da etiqueta (sera impressa na etiqueta) |

---

## DBAMV.ETIQUETA_CME

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ETIQUETA | NUMBER | N |  |
| 2 | DS_ETIQUETA | VARCHAR2 | N |  |
| 3 | TP_DRIVER | VARCHAR2 | N |  |
| 4 | QT_COLUNA | NUMBER | N |  |
| 5 | LARGURA | NUMBER | N |  |
| 6 | ALTURA | NUMBER | N |  |
| 7 | MARGEM_ESQUERDA | NUMBER | N |  |
| 8 | MARGEM_SUPERIOR | NUMBER | N |  |

---

## DBAMV.ETIQUETA_ESTOQUE
> Lista as etiquetas que serao impressas apos confirmacao da solicitacao

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ESTOQUE | NUMBER | Y | Codigo do estoque relacionado |
| 2 | CD_ETIQUETA | NUMBER | Y | Codigo do layout da etiqueta zebra utilizada |
| 3 | SN_IMPRIME_ZEBRA | VARCHAR2 | Y | Flag qu eidentifica se utilizaremos etiqueta zebra |
| 4 | DS_ETIQUETA_SAIDA | VARCHAR2 | Y | descricao da impressora de saida |
| 5 | NR_COPIA_ETIQUETA_SAIDA | NUMBER | Y | Numero de copias desejado |
| 6 | DS_RELATORIO_ETIQUETA_SAIDA | VARCHAR2 | Y | Nome do report quando nao for utilizada o tipo zebra |
| 7 | TP_ETIQUETA | VARCHAR2 | Y | Tipo da etiqueta P = Paciente, R = Rotulo |
| 8 | TP_ETIQUETA_CONFIG | VARCHAR2 | Y | Tipo C = Consignados ou S = Solicitac?o |
| 9 | CD_ETIQUETA_ESTOQUE | NUMBER | N | Codigo sequencial gerado pelo sistema. |

---

## DBAMV.ETIQUETA_ITEM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ETIQUETA | NUMBER | N |  |
| 2 | NM_OBJETO | VARCHAR2 | N |  |
| 3 | TP_OBJETO | VARCHAR2 | N |  |
| 4 | POSX | NUMBER | N |  |
| 5 | POSY | NUMBER | N |  |
| 6 | LARGURA | NUMBER | N |  |
| 7 | ALTURA | NUMBER | N |  |
| 8 | QT_CARACTER | NUMBER | Y |  |
| 9 | DS_TEXTO | VARCHAR2 | Y |  |
| 10 | POSICAO_TEXTO | VARCHAR2 | N |  |
| 11 | SN_IMPRIME_ITEM | VARCHAR2 | N |  |
| 12 | TP_FONTE | VARCHAR2 | N |  |
| 13 | ALTURA_FONTE | NUMBER | N |  |
| 14 | LARGURA_FONTE | NUMBER | N |  |
| 15 | CD_ETIQUETA_ITEM | NUMBER | N |  |

---

## DBAMV.ETIQUETA_ITEM_AMAP
> Tabela de Itens da Etiqueta Configurarel

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ETIQUETA | NUMBER | N | Codigo da Etiqueta Configurarel |
| 2 | CD_ETIQUETA_ITEM | NUMBER | N | Codigo do Item da Etiqueta |
| 3 | NM_OBJETO | VARCHAR2 | N | Nome do Objeto |
| 4 | TP_OBJETO | VARCHAR2 | N | Tipo do objeto |
| 5 | POSX | NUMBER | N | Posic?o "X" do campo na etiqueta |
| 6 | POSY | NUMBER | N | Posic?o "Y" do campo na etiqueta |
| 7 | LARGURA | NUMBER | N | Largura |
| 8 | ALTURA | NUMBER | N | Altura |
| 9 | QT_CARACTER | NUMBER | Y | Quantidade de Caracter |
| 10 | DS_TEXTO | VARCHAR2 | Y | Descric?o do Texto |
| 11 | POSICAO_TEXTO | VARCHAR2 | N | Posic?o do Texto |
| 12 | SN_IMPRIME_ITEM | VARCHAR2 | N | Se o Item sera Impresso |
| 13 | TP_FONTE | VARCHAR2 | N | Tipo da Fonte |
| 14 | ALTURA_FONTE | NUMBER | N | Altura da Fonte |
| 15 | LARGURA_FONTE | NUMBER | N | Largura da fonte |

---

## DBAMV.ETIQUETA_ITEM_AMDC

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ETIQUETA | NUMBER | N |  |
| 2 | CD_ETIQUETA_ITEM | NUMBER | N |  |
| 3 | NM_OBJETO | VARCHAR2 | N |  |
| 4 | TP_OBJETO | VARCHAR2 | N |  |
| 5 | POSX | NUMBER | N |  |
| 6 | POSY | NUMBER | N |  |
| 7 | LARGURA | NUMBER | N |  |
| 8 | ALTURA | NUMBER | N |  |
| 9 | QT_CARACTER | NUMBER | Y |  |
| 10 | DS_TEXTO | VARCHAR2 | Y |  |
| 11 | POSICAO_TEXTO | VARCHAR2 | N |  |
| 12 | SN_IMPRIME_ITEM | VARCHAR2 | N |  |
| 13 | TP_FONTE | VARCHAR2 | N |  |
| 14 | ALTURA_FONTE | NUMBER | N |  |
| 15 | LARGURA_FONTE | NUMBER | N |  |

---

## DBAMV.ETIQUETA_ITEM_CME

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ETIQUETA | NUMBER | N |  |
| 2 | CD_ETIQUETA_ITEM | NUMBER | N |  |
| 3 | NM_OBJETO | VARCHAR2 | N |  |
| 4 | TP_OBJETO | VARCHAR2 | N |  |
| 5 | POSX | NUMBER | N |  |
| 6 | POSY | NUMBER | N |  |
| 7 | LARGURA | NUMBER | N |  |
| 8 | ALTURA | NUMBER | N |  |
| 9 | QT_CARACTER | NUMBER | Y |  |
| 10 | DS_TEXTO | VARCHAR2 | Y |  |
| 11 | POSICAO_TEXTO | VARCHAR2 | N |  |
| 12 | SN_IMPRIME_ITEM | VARCHAR2 | N |  |
| 13 | TP_FONTE | VARCHAR2 | N |  |
| 14 | ALTURA_FONTE | NUMBER | N |  |
| 15 | LARGURA_FONTE | NUMBER | N |  |

---

## DBAMV.ETIQUETA_ITEM_LAPROD
> Tabela de Itens da Etiqueta Configurarel

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ETIQUETA | NUMBER | N | Codigo da Etiqueta Configurarel |
| 2 | CD_ETIQUETA_ITEM | NUMBER | N | Codigo do Item da Etiqueta |
| 3 | NM_OBJETO | VARCHAR2 | N | Nome do Objeto |
| 4 | TP_OBJETO | VARCHAR2 | N | Tipo do objeto |
| 5 | POSX | NUMBER | N | Posic?o "X" do campo na etiqueta |
| 6 | POSY | NUMBER | N | Posic?o "Y" do campo na etiqueta |
| 7 | LARGURA | NUMBER | N | Largura |
| 8 | ALTURA | NUMBER | N |  |
| 9 | QT_CARACTER | NUMBER | Y | Quantidade de Caracter |
| 10 | DS_TEXTO | VARCHAR2 | Y | Descric?o do Texto |
| 11 | POSICAO_TEXTO | VARCHAR2 | N | Posic?o do Texto |
| 12 | SN_IMPRIME_ITEM | VARCHAR2 | N | Se o Item sera Impresso |
| 13 | TP_FONTE | VARCHAR2 | N | Tipo da Fonte |
| 14 | ALTURA_FONTE | NUMBER | N | Altura da Fonte |
| 15 | LARGURA_FONTE | NUMBER | N | Largura da fonte |

---

## DBAMV.ETIQUETA_ITEM_MOVDOC
> Configurac?o dos Campos das Etiquetas do MOVDOC

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ETIQUETA | NUMBER | N |  |
| 2 | CD_ETIQUETA_ITEM | NUMBER | N | Codigo do Item da Etiqueta |
| 3 | NM_OBJETO | VARCHAR2 | N | Identificac?o do campo |
| 4 | TP_OBJETO | VARCHAR2 | N | Tipo do campo |
| 5 | POSX | NUMBER | N | Configurac?o da Posic?o "X" do campo na etiqueta |
| 6 | POSY | NUMBER | N | Configurac?o da Posic?o "Y" do campo na etiqueta |
| 7 | LARGURA | NUMBER | N | Largura do campo |
| 8 | ALTURA | NUMBER | N | Altura do campo |
| 9 | QT_CARACTER | NUMBER | Y | Quantidade de caracteres |
| 10 | DS_TEXTO | VARCHAR2 | Y | Descric?o do Texto |
| 11 | POSICAO_TEXTO | VARCHAR2 | N | Posic?o do Texto |
| 12 | SN_IMPRIME_ITEM | VARCHAR2 | N | Se o item sera Impresso |
| 13 | TP_FONTE | VARCHAR2 | N | Tipo da Fonte |
| 14 | ALTURA_FONTE | NUMBER | N | Altura da Fonte |
| 15 | LARGURA_FONTE | NUMBER | N | Largura da fonte |

---

## DBAMV.ETIQUETA_ITEM_PARI

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ETIQUETA | NUMBER | N |  |
| 2 | CD_ETIQUETA_ITEM | NUMBER | N |  |
| 3 | NM_OBJETO | VARCHAR2 | N |  |
| 4 | TP_OBJETO | VARCHAR2 | N |  |
| 5 | POSX | NUMBER | N |  |
| 6 | POSY | NUMBER | N |  |
| 7 | LARGURA | NUMBER | N |  |
| 8 | ALTURA | NUMBER | N |  |
| 9 | QT_CARACTER | NUMBER | Y |  |
| 10 | DS_TEXTO | VARCHAR2 | Y |  |
| 11 | POSICAO_TEXTO | VARCHAR2 | N |  |
| 12 | SN_IMPRIME_ITEM | VARCHAR2 | N |  |
| 13 | TP_FONTE | VARCHAR2 | N |  |
| 14 | ALTURA_FONTE | NUMBER | N |  |
| 15 | LARGURA_FONTE | NUMBER | N |  |

---

## DBAMV.ETIQUETA_ITEM_PSSD

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ETIQUETA | NUMBER | N |  |
| 2 | CD_ETIQUETA_ITEM | NUMBER | N |  |
| 3 | NM_OBJETO | VARCHAR2 | N |  |
| 4 | TP_OBJETO | VARCHAR2 | N |  |
| 5 | POSX | NUMBER | N |  |
| 6 | POSY | NUMBER | N |  |
| 7 | LARGURA | NUMBER | N |  |
| 8 | ALTURA | NUMBER | N |  |
| 9 | QT_CARACTER | NUMBER | Y |  |
| 10 | DS_TEXTO | VARCHAR2 | Y |  |
| 11 | POSICAO_TEXTO | VARCHAR2 | N |  |
| 12 | SN_IMPRIME_ITEM | VARCHAR2 | N |  |
| 13 | TP_FONTE | VARCHAR2 | N |  |
| 14 | ALTURA_FONTE | NUMBER | N |  |
| 15 | LARGURA_FONTE | NUMBER | N |  |
| 16 | CD_ROTACAO | NUMBER | N | Rotação do texto na etiqueta 0,90º,180º,270º |
| 17 | SN_GB | VARCHAR2 | N | Indica o uso do ^GB Graphic Box para inverter o backgroud do texto |
| 18 | SN_CAIXA_TEXTO | VARCHAR2 | N | Ativa ou não o uso da caixa de texto |
| 19 | NR_LARGURA_CAIXA | NUMBER | N | Largura utilizada pela caixa de texto |
| 20 | NR_LINHA_CAIXA | NUMBER | N | Numero de linhas utilizados pela caixa de texto |
| 21 | NR_LARGURA_BARRAS | NUMBER | Y | Número da largurado codigo de barras |

---

## DBAMV.ETIQUETA_LACTARIO_EMPRESA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRODUTO | NUMBER | N |  |
| 2 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 3 | DS_DENSIDADE_CALORICA | VARCHAR2 | Y |  |
| 4 | DS_DISTRIBUICAO_CALORICA | VARCHAR2 | Y |  |
| 5 | DS_CARBOIDRATO | VARCHAR2 | Y |  |
| 6 | DS_LIPIDIO | VARCHAR2 | Y |  |
| 7 | DS_PROTEINA | VARCHAR2 | Y |  |
| 8 | DS_OSMOLARIDADE | VARCHAR2 | Y |  |

---

## DBAMV.ETIQUETA_LAPROD
> Tabela de Configurac?o da Etiqueta LAPROD

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ETIQUETA | NUMBER | N | Codigo da Etiqueta |
| 2 | DS_ETIQUETA | VARCHAR2 | N | Descric?o da Etiqueta |
| 3 | TP_DRIVER | VARCHAR2 | N | Tipo do Driver |
| 4 | QT_COLUNA | NUMBER | N | Quantidade de Colunas |
| 5 | LARGURA | NUMBER | N | Largura |
| 6 | ALTURA | NUMBER | N | Altura |
| 7 | MARGEM_ESQUERDA | NUMBER | N | Margem esquerda |
| 8 | MARGEM_SUPERIOR | NUMBER | N | Margem superior |

---

## DBAMV.ETIQUETA_MOVDOC
> Configurac?o de Etiquetas do MOVDOC

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ETIQUETA | NUMBER | N | Codigo da Etiqueta |
| 2 | DS_ETIQUETA | VARCHAR2 | N | Descric?o da Etiqueta |
| 3 | TP_DRIVER | VARCHAR2 | N | Tipo do Driver utilizado para impress?o |
| 4 | QT_COLUNA | NUMBER | N | Quantidade de Colunas da etiqueta |
| 5 | LARGURA | NUMBER | N | Largura da etiqueta |
| 6 | ALTURA | NUMBER | N | Altura da etiqueta |
| 7 | MARGEM_ESQUERDA | NUMBER | N | Configurac?o da Margem esquerda da etiqueta |
| 8 | MARGEM_SUPERIOR | NUMBER | N | Configurac?o da Margem superior da etiqueta |

---

## DBAMV.ETIQUETA_PARAMETRO
> Tabela de Parametros para Etiqueta

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ETIQUETA_PARAMETRO | NUMBER | N | Codigo do Parametro para Etiqueta |
| 2 | DS_ETIQUETA_PARAMETRO | VARCHAR2 | N | Descric?o do Parametro para Etiqueta |
| 3 | TP_OBJETO | VARCHAR2 | N | Tipo Objeto (N)ormal ou (I)dentificador |

---

## DBAMV.ETIQUETA_PARI

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ETIQUETA | NUMBER | N |  |
| 2 | DS_ETIQUETA | VARCHAR2 | N |  |
| 3 | TP_DRIVER | VARCHAR2 | N |  |
| 4 | QT_COLUNA | NUMBER | N |  |
| 5 | LARGURA | NUMBER | N |  |
| 6 | ALTURA | NUMBER | N |  |
| 7 | MARGEM_ESQUERDA | NUMBER | N |  |
| 8 | MARGEM_SUPERIOR | NUMBER | N |  |

---

## DBAMV.ETIQUETA_PSSD

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ETIQUETA | NUMBER | N |  |
| 2 | DS_ETIQUETA | VARCHAR2 | N |  |
| 3 | TP_DRIVER | VARCHAR2 | N |  |
| 4 | QT_COLUNA | NUMBER | N |  |
| 5 | LARGURA | NUMBER | N |  |
| 6 | ALTURA | NUMBER | N |  |
| 7 | MARGEM_ESQUERDA | NUMBER | N |  |
| 8 | MARGEM_SUPERIOR | NUMBER | N |  |

---

## DBAMV.ETIQUETA_UNITARIZACAO
> Cadastro de modelos de etiquetas pra equipamentos de unitarizac?o de doses de medicamentos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ETIQUETA_UNITARIZACAO | NUMBER | N | Codigo do Modelo de etiqueta |
| 2 | DS_ETIQUETA_UNITARIZACAO | VARCHAR2 | N | Descric?o do identificador do Modelo de etiqueta |
| 3 | TP_EQUIPAMENTO | VARCHAR2 | N | Tipo de Equipamento suportado para rotular a embalagem |
| 4 | DS_MENSAGEM_PADRAO | VARCHAR2 | Y | Mensagem exibida ao usuario quando seleciona um Modelo de etiqueta |

---

## DBAMV.ETIQUETA_UNITARIZACAO_CAMPO
> Cadastro de campos do modelo de etiquetas pra equipamentos de unitarizac?o de doses de medicamentos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ETIQUETA_UNITARIZACAO | NUMBER | N | Codigo do Modelo de etiqueta |
| 2 | TP_CAMPO | VARCHAR2 | N | Tipos de campo suportados na etiqueta (pre-definidos) |
| 3 | DS_CAMPO | VARCHAR2 | N | Nome do campo adotado no layout do equipamento |
| 4 | NR_ORDEM | NUMBER | Y | Guarda a ordem em que os campos aparecem no arquivo da unitarização. Atualmente limitado a unitar... |

---

## DBAMV.ETIQUETA_UNITARIZA_EMPRESA
> Empresa associada a um modelo de etiqueta pra equipamentos de unitarização de doses

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ETIQUETA_UNITARIZACAO | NUMBER | N | Código do Modelo de etiqueta |
| 2 | CD_MULTI_EMPRESA | NUMBER | N | Código da empresa |

---

## DBAMV.ETIQUETA_UNITARIZA_PRODUTO
> Medicamento associado a um modelo de etiqueta pra equipamentos de unitarizac?o de doses

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ETIQUETA_UNITARIZACAO | NUMBER | N | Codigo do Modelo de etiqueta |
| 2 | CD_PRODUTO | NUMBER | N | Codigo do produto associado ao modelo |

---

## DBAMV.FRACIONAMENTO
> Tabela de controle das sobras do Fracionamento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ATENDIMENTO | NUMBER | N | Codigo do Atendimento |
| 2 | CD_TIP_PRESC | NUMBER | N | Codigo do Item de Prescric?o |
| 3 | QT_SOBRA | NUMBER | N | Quantidade restante do Item |
| 4 | DH_ABERTURA | DATE | N | Data de abertura do Item |
| 5 | CD_ITSOLSAI_PRO | NUMBER | Y | Codigo do item da solicitac?o. |

---

## DBAMV.IMVAPP_TP_MVTO_ESTOQUE
> Tabela de DE-PARA TP_MVTO_ESTOQUE com Oracle Application

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da Multi Empresa |
| 2 | TP_MVTO_ESTOQUE | VARCHAR2 | N | Tipo de Movimentac?o do Estoque |
| 3 | TRANSACTION_TYPE_ID | NUMBER | N | Tipo de Transac?o no Estoque |
| 4 | REASON_ID | NUMBER | N | Motivo de Realizac?o da Operac?o |
| 5 | SIGN | VARCHAR2 | Y |  |

---

## DBAMV.INVENTARIO
> Tabela onde serão inseridos todos os Inventários realizados

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INVENTARIO | NUMBER | N | Código Primário da Tabela, proveniente da Sequence |
| 2 | CD_ESTOQUE | NUMBER | N | Código do Estoque que será realizado o Inventário |
| 3 | DT_INVENTARIO | DATE | Y | Data do Início do Inventário |
| 4 | HR_INVENTARIO | DATE | Y | Hora do Início do Inventário |
| 5 | TP_INVENTARIO | VARCHAR2 | N | Tipo de Inventário, podendo ser "Geral do Estoque" ou "Apenas Alguns Produtos" |
| 6 | DT_GERACAO | DATE | Y | Data de Geração/Finalização do Inventário |
| 7 | HR_GERACAO | DATE | Y | Hora de Geração/Finalização do Inventário |
| 8 | SN_ABERTO | VARCHAR2 | N | Informa se o Inventário está ou não Aberto |
| 9 | CD_USUARIO_ABERTURA | VARCHAR2 | Y | Código do Usuário que realiza a abertura do Inventário |
| 10 | CD_USUARIO_FECHAMENTO | VARCHAR2 | Y | Código do Usuário que realiza o fechamento do Inventário |
| 11 | TP_CONTAGEM | VARCHAR2 | N | Tipo de Contagem do Inventário, podendo ser C-Conferência ou B-Balanço |
| 12 | TP_LOTE_CONTAGEM | VARCHAR2 | N | Tipo de lotes permitidos no Inventário, podendo ser N-Não Exibe, L-Lotes com Saldo ou T-Todos os ... |
| 13 | TP_SITUACAO_LOTE | VARCHAR2 | Y | A situação dos lotes que NÃO serão permitidos no Inventário, podendo ser B-Bloqueados, V-Vencidos... |
| 14 | TP_ROTATIVIDADE | VARCHAR2 | N | Tipo de Rotatividade de um mesmo usuário nos lançamentos do Inventário, podendo ser U-Unica, A-Al... |
| 15 | TP_KIT_CONTAGEM | VARCHAR2 | N | Controle de Kit no Inventário, podendo ser M-Manter sem Inventariar Kits, G-Gerar Inventário de K... |

---

## DBAMV.INVENTARIO_ACPR
> TABELA DE CONTROLE DO INVENTARIO VIA PALM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INVENTARIO | NUMBER | N | CODIGO DO INVENTARIO |
| 2 | DT_INVENTARIO | DATE | N | DATA DE CRIACAO DO INVENTARIO |
| 3 | HR_INVENTARIO | DATE | N | DATA HORA DE CRIACAO DO INVENTARIO |
| 4 | SN_ABERTO | VARCHAR2 | N | INVENTARIO ABERTO, SIM OU NAO |
| 5 | TP_INVENTARIO | VARCHAR2 | N | INVENTARIO PARCIAL OU TOTAL |
| 6 | DT_FECHAMENTO | DATE | Y | DATA DE FECHAMENTO DO INVENTARIO |
| 7 | HR_FECHAMENTO | DATE | Y | HORA DO FECHAMENTO DO INVENTARIO |

---

## DBAMV.INVENTARIO_PATRIMONIO
> TABELA DE INVENTÁRIOS PATRIMONIAIS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INVENTARIO_PATRIMONIO | NUMBER | N | CÓDIGO DO INVENTÁRIO |
| 2 | DS_INVENTARIO | VARCHAR2 | N | DESCRICAO DO INVENTÁRIO |
| 3 | CD_USUARIO_RESPONSAVEL | VARCHAR2 | N | USUÁRIO RESPONSÁVEL PELO INVENTÁRIO |
| 4 | DT_INICIO | DATE | N | DATA DE INICIO |
| 5 | DT_FIM | DATE | N | DATA FIM DO INVENTÁRIO |
| 6 | DT_FECHAMENTO | DATE | Y | DATA QUE O INVENTÁRIO FOI FECHADO. |
| 7 | DT_CANCELAMENTO | DATE | Y | DATA QUE FOI REALIZADO O CANCELAMENTO. |
| 8 | CD_USUARIO_CANCELAMENTO | VARCHAR2 | Y | USUÁRIO QUE REALIZOU O CANCELAMENTO. |
| 9 | DT_ABERTURA | DATE | Y | Data de Abertura |

---

## DBAMV.ITENT_PRO_ACERTO
> Tabela que guarda os produtos de acerto de estoque

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITENT_PRO_ACERTO | NUMBER | N | Guarda o código da conferência. É alimentada pela sequence SEQ_ITENT_PRO_ACERTO |
| 2 | CD_ENT_PRO_ACERTO | NUMBER | N |  |
| 3 | CD_PRODUTO | NUMBER | N |  |
| 4 | CD_UNI_PRO | NUMBER | N |  |
| 5 | QT_ENTRADA | NUMBER | N | Guarda o quantidade de entrada do produto |
| 6 | CD_LOTE | VARCHAR2 | Y | Guarda o código do lote do produto |
| 7 | DT_VALIDADE | DATE | Y | Guarda a validade do lote do produto |
| 8 | DSP_CODIGO_DE_BARRAS | VARCHAR2 | Y | Guarda o código de barras do produto |
| 9 | CD_CFOP_SUGERIDO | NUMBER | Y | CÓDIGO DO CFOP SUGERIDO PELO CLIENTE |
| 10 | CD_CFOP | NUMBER | Y | CÓDIGO DO CFOP INFORMADO PELO CLIENTE |
| 11 | CD_ORIGEM_MERCADORIA_SUGERIDO | NUMBER | Y | CÓDIGO DA ORIGEM DA MERCADORIA SUGERIDO |
| 12 | CD_ORIGEM_MERCADORIA | NUMBER | Y | CÓDIGO DA ORIGEM DA MERCADORIA INFORMADO PELO CLIENTE |

---

## DBAMV.ITMVTO_ENT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITENT_PRO | NUMBER | N |  |
| 2 | CD_ITMVTO_ESTOQUE | NUMBER | N |  |
| 3 | TP_EMPRESTIMO | VARCHAR2 | Y | Tipos de Emprestimos que podem ser realizados |
| 4 | DT_FECHAMENTO_EMPRESTIMO | DATE | Y | coluna que identifica a data de fechamento do emprestimo quando este for encerrado pelo usuario |

---

## DBAMV.ITMVTO_ESTOQUE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MVTO_ESTOQUE | NUMBER | N |  |
| 2 | CD_ITMVTO_ESTOQUE | NUMBER | N |  |
| 3 | DSP_CODIGO_DE_BARRAS | VARCHAR2 | Y |  |
| 4 | CD_PRODUTO | NUMBER | N |  |
| 5 | CD_UNI_PRO | NUMBER | N |  |
| 6 | QT_MOVIMENTACAO | NUMBER | N |  |
| 7 | CD_LOTE | VARCHAR2 | Y |  |
| 8 | DT_VALIDADE | DATE | Y |  |
| 9 | QT_PERDA | NUMBER | Y |  |
| 10 | DH_MVTO_ESTOQUE | DATE | N |  |
| 11 | CD_IMPORTA_REG_FAT | NUMBER | Y |  |
| 12 | CD_ITSOLSAI_PRO | NUMBER | Y |  |
| 13 | CD_IMPORTA_REG_AMB | NUMBER | Y |  |
| 14 | VL_UNITARIO_EMPRESTIMO | NUMBER | Y |  |
| 15 | VL_TOTAL_EMPRESTIMO | NUMBER | Y |  |
| 16 | CD_ITENT_PRO | NUMBER | Y |  |
| 17 | TP_USO_PRODUTO | VARCHAR2 | Y |  |
| 18 | CD_FORNECEDOR | NUMBER | Y |  |
| 19 | CD_PRODUTO_KIT | NUMBER | Y |  |
| 20 | TP_ESTOQUE | VARCHAR2 | Y |  |
| 21 | CD_FORMULA_KIT | NUMBER | Y |  |
| 22 | QT_KIT | NUMBER | Y |  |
| 23 | TP_ORCAMENTO | VARCHAR2 | Y |  |
| 24 | SN_FATURA | VARCHAR2 | Y |  |
| 25 | VL_ICMS | NUMBER | Y |  |
| 26 | VL_UNITARIO | NUMBER | Y |  |
| 27 | DT_GRAVACAO | DATE | Y |  |
| 28 | CD_SEQ_INTEGRA | VARCHAR2 | Y |  |
| 29 | DT_INTEGRA | DATE | Y |  |
| 30 | SN_PENDENCIA | VARCHAR2 | Y | Identifica se ainda existe pendencia ou n?o para a movimentac?o/entrada |
| 31 | CD_ITMVTO_ESTOQUE_INTEGRA | VARCHAR2 | Y | Codigo de identificac?o da movimentac?o do item (de-para) |
| 32 | CD_ATENDIMENTO_INTEGRA | VARCHAR2 | Y | Codigo de atendimento (DE-PARA) |
| 33 | DS_ENDERECO | VARCHAR2 | Y | Indica qual o endereco que o lote se encontra no estoque. |
| 34 | SN_PROD_RECEBIDO_SOLICITACAO | VARCHAR2 | Y | IDENTIFICA SE O PRODUTO FOI CONFIRMADO NO RECEBIMENTO DA SOLICITAÃ¿Ã¿O DE PRODUTO. |
| 35 | CD_CODIGO_NATUREZA_DESPESA | VARCHAR2 | Y |  |
| 36 | QT_RECEBIDO | NUMBER | Y | Qtde Recebida na confirmação da solicitação |
| 37 | CD_EXP_CONTABILIDADE | NUMBER | Y | Código exportação da contabilidade |
| 38 | CD_LCTO_MOVIMENTO | NUMBER | Y | Código do movimento do lançamento contábil |
| 39 | CD_CFOP_SUGERIDO | NUMBER | Y | CÓDIGO DO CFOP SUGERIDO PELO CLIENTE |
| 40 | CD_CFOP | NUMBER | Y | CÓDIGO DO CFOP INFORMADO PELO CLIENTE |
| 41 | CD_ORIGEM_MERCADORIA_SUGERIDO | NUMBER | Y | CÓDIGO DA ORIGEM DA MERCADORIA SUGERIDO |
| 42 | CD_ORIGEM_MERCADORIA | NUMBER | Y | CÓDIGO DA ORIGEM DA MERCADORIA INFORMADO PELO CLIENTE |
| 43 | CD_ITPRE_MED | NUMBER | Y | CODIGO DO ITEM DA PRESCRICAO |
| 44 | QT_RETORNADA_DOADO | NUMBER | Y | Guardar, se houver, quantidade doada de uma transação única de devolução de estoque |
| 45 | CD_TIP_DEV_FISCAL | NUMBER | Y | CÓDIGO DA DEVOLUÇÃO FISCAL |
| 46 | VL_UNITARIO_VENDA | NUMBER | Y | RECEBE O VALOR UNITÁRIO DO PRODUTO REFERNTE A VENDA |
| 47 | DSP_CODIGO_DE_BARRAS_PRO | VARCHAR2 | Y | Código de barras do produto que pertence ao KIT |

---

## DBAMV.ITMVTO_ESTOQUE_CUSTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITMVTO_ESTOQUE | NUMBER | N |  |
| 2 | CD_MVTO_ESTOQUE | NUMBER | N |  |
| 3 | CD_PRODUTO | NUMBER | N |  |
| 4 | QT_MOVIMENTO | NUMBER | N |  |
| 5 | DH_MVTO_ESTOQUE | DATE | N |  |
| 6 | CD_ESTOQUE | NUMBER | Y | Codigo do Estoque da Movimentac?o |

---

## DBAMV.ITMVTO_ESTOQUE_IMPOSTO
> TABELA DE VALORES DOS IMPOSTOS DOS ITENS DA TRANSFERENCIA DE PRODUTOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITMVTO_ESTOQUE_IMPOSTO | NUMBER | N | CÓDIGO SEQUENCIAL DA TRANSFERENCIA DO ITEM |
| 2 | CD_ITMVTO_ESTOQUE | NUMBER | N | CÓDIGO DO ITEM DA MOVIMENTAÇÃO VINCULADA AOS IMPOSTOS |
| 3 | CD_PRODUTO | NUMBER | N | CÓDIGO DA DO PRODUTO DA TRANSFERENCIA ENTRE EMPRESAS |
| 4 | CD_DETALHAMENTO_SUGERIDO | NUMBER | Y | CÓDIGO DO IMPOSTO SUGERIDO PELO SISTEMA PREVIAMENTE CADASTRADO NA TABELA DE PRODUTOS |
| 5 | CD_DETALHAMENTO | NUMBER | Y | CÓDIGO DO IMPOSTO INFORMADO PELO USUÁRIO |
| 6 | CD_CST_ENTRADA_SUGERIDO | VARCHAR2 | Y | CÓDIGO DO CST DE ENTRADA SUGERIDO PELO SISTEMA PREVIAMENTE CADASTRADO NA TABELA DE PRODUTOS |
| 7 | CD_CST_ENTRADA | VARCHAR2 | Y | CÓDIGO DO CST DE ENTRADA INFORMADO PELO USUÁRIO |
| 8 | CD_CST_SAIDA_SUGERIDO | VARCHAR2 | Y | CÓDIGO DO CST DE SAÍDA SUGERIDO PELO SISTEMA PREVIAMENTE CADASTRADO NA TABELA DE PRODUTOS |
| 9 | CD_CST_SAIDA | VARCHAR2 | Y | CÓDIGO DO CST DE SAÍDA INFORMADO PELO USUÁRIO |
| 10 | VL_BASE_CALCULO | NUMBER | Y | VALOR DA BASE DE CÁLCULO DO IMPOSTO |
| 11 | VL_PERCENTUAL_ALIQUOTA | NUMBER | Y | PERCENTUAL DA DA ALIQUOTA PARA CALCULO DO IMPOSTO |
| 12 | VL_TOTAL_IMPOSTO | NUMBER | Y | TOTAL DO IMPOSTO PARA O ITEM DA ENTRADA |

---

## DBAMV.ITMVTO_ESTOQUE_NFE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MVTO_ESTOQUE | NUMBER | N | CÓDIGO DA MOVIMENTAÇÃO. |
| 2 | CD_ITMVTO_ESTOQUE | NUMBER | N | CÓDIGO DO ITEM DA  MOVIMENTAÇÃO. |
| 3 | DSP_CODIGO_DE_BARRAS | VARCHAR2 | Y |  |
| 4 | CD_PRODUTO | NUMBER | N | CÓDIGO DO PRODUTO |
| 5 | CD_UNI_PRO | NUMBER | N | CÓDIGO DA UNIDADE |
| 6 | QT_MOVIMENTACAO | NUMBER | N |  |
| 7 | CD_LOTE | VARCHAR2 | Y |  |
| 8 | DT_VALIDADE | DATE | Y |  |
| 9 | QT_PERDA | NUMBER | Y |  |
| 10 | DH_MVTO_ESTOQUE | DATE | N |  |
| 11 | CD_IMPORTA_REG_FAT | NUMBER | Y |  |
| 12 | CD_ITSOLSAI_PRO | NUMBER | Y |  |
| 13 | CD_IMPORTA_REG_AMB | NUMBER | Y |  |
| 14 | VL_UNITARIO_EMPRESTIMO | NUMBER | Y |  |
| 15 | VL_TOTAL_EMPRESTIMO | NUMBER | Y |  |
| 16 | CD_ITENT_PRO | NUMBER | Y |  |
| 17 | TP_USO_PRODUTO | VARCHAR2 | Y |  |
| 18 | CD_FORNECEDOR | NUMBER | Y |  |
| 19 | CD_PRODUTO_KIT | NUMBER | Y |  |
| 20 | TP_ESTOQUE | VARCHAR2 | Y |  |
| 21 | CD_FORMULA_KIT | NUMBER | Y |  |
| 22 | QT_KIT | NUMBER | Y |  |
| 23 | TP_ORCAMENTO | VARCHAR2 | Y |  |
| 24 | SN_FATURA | VARCHAR2 | Y |  |
| 25 | VL_ICMS | NUMBER | Y |  |
| 26 | VL_UNITARIO | NUMBER | Y |  |
| 27 | DT_GRAVACAO | DATE | Y |  |
| 28 | CD_SEQ_INTEGRA | VARCHAR2 | Y |  |
| 29 | DT_INTEGRA | DATE | Y |  |
| 30 | SN_PENDENCIA | VARCHAR2 | Y | IDENTIFICA SE AINDA EXISTE PENDENCIA OU NÃO PARA A MOVIMENTAÇÃO/ENTRADA |
| 31 | CD_ITMVTO_ESTOQUE_INTEGRA | VARCHAR2 | Y |  |
| 32 | QT_RETORNADA_DOADO | NUMBER | Y | GUARDAR, SE HOUVER, QUANTIDADE DOADA DE UMA TRANSAÇÃO ÚNICA DE DEVOLUÇÃO DE ESTOQUE |
| 33 | CD_ATENDIMENTO_INTEGRA | VARCHAR2 | Y | CÓDIGO DE ATENDIMENTO (DE-PARA) |
| 34 | DS_ENDERECO | VARCHAR2 | Y | INDICA QUAL O ENDEREÇO QUE O LOTE SE ENCONTRA NO ESTOQUE. |
| 35 | DS_OBSERVACAO | VARCHAR2 | Y | OBSERVAÇÃO PARA BAIXA DO PRODUTO. |

---

## DBAMV.ITMVTO_ESTOQUE_SOMA_SAIDA
> Tabela Itmvto_Estoque_Custo com colunas da mvto_estoque e estoque para agilizar a movimentac?o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITMVTO_ESTOQUE | NUMBER | N | Codigo do Item da Movimentac?o |
| 2 | CD_MVTO_ESTOQUE | NUMBER | N | Codigo da Movimentac?o |
| 3 | CD_PRODUTO | NUMBER | N | Codigo do Produto da Movimentac?o |
| 4 | QT_MOVIMENTO | NUMBER | N | Quantidade da Movimentacao |
| 5 | DH_MVTO_ESTOQUE | DATE | N | Data e Hora da Movimentac?o |
| 6 | CD_ESTOQUE | NUMBER | Y | Codigo do Estoque da Movimentac?o |
| 7 | CD_ESTOQUE_DESTINO | NUMBER | Y | Codigo do Estoque Destino da Movimentac?o |
| 8 | TP_MVTO_ESTOQUE | VARCHAR2 | Y | Tipo da Movimentac?o |
| 9 | CD_MULTI_EMPRESA | NUMBER | Y | Indica qual Empresa Realizou a Movimentac?o |

---

## DBAMV.ITMVTO_ESTOQUE_TMP
> TABELA QUE GUARDARÁ OS ITENS DAS MOVIMENTACOES DE ESTOQUE TEMPORARIAS.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MVTO_ESTOQUE | NUMBER | N | CODIGO DA MOVIMENTACAO DO ESTOQUE |
| 2 | CD_ITMVTO_ESTOQUE | NUMBER | N | CODIGO DO ITEM DE MOVIMENTACAO DO ESTOQUE |
| 3 | DH_MVTO_ESTOQUE | DATE | N | DATA E HORA DA MOVIMENTACAO DO ESTOQUE |
| 4 | CD_IMPORTA_REG_FAT | NUMBER | Y | CODIGO DE IMPORTACAO REG_FAT |
| 5 | CD_FORMULA_KIT | NUMBER | Y | CODIGO DO KIT |
| 6 | QT_KIT | NUMBER | Y | QUANTIDADE DO KIT |
| 7 | DSP_CODIGO_DE_BARRAS | VARCHAR2 | Y | CODIGO DE BARRAS |
| 8 | CD_PRODUTO | NUMBER | N | CODIGO DO PRODUTO |
| 9 | CD_PRODUTO_KIT | NUMBER | Y | CODIGO DO PRODUTO KIT |
| 10 | CD_FORNECEDOR | NUMBER | Y | CODIGO DO FORNECEDOR |
| 11 | CD_LOTE | VARCHAR2 | Y | LOTE DO PRODUTO |
| 12 | DT_VALIDADE | DATE | Y | DATA DE VALIDADE DO PRODUTO |
| 13 | CD_UNI_PRO | NUMBER | N | UNIDADE DE MEDIDA DO PRODUTO |
| 14 | QT_MOVIMENTACAO | NUMBER | N | QUANTIDADE MOVIMENTADA DO PRODUTO |
| 15 | TP_ESTOQUE | VARCHAR2 | N | TIPO DO ESTOQUE |
| 16 | SN_FATURA | VARCHAR2 | N | FATURA SIM OU NAO |
| 17 | DSP_SN_COMPOSICAO_KIT | VARCHAR2 | N | PRODUTO COMPOE KIT |
| 18 | TP_ESTOQUE_AUX | VARCHAR2 | N | TIPO DO ESTOQUE AUXILIAR |
| 19 | TP_ORCAMENTO | VARCHAR2 | N | TIPO DO ORCAMENTO |
| 20 | CD_CODIGO_NATUREZA_DESPESA | VARCHAR2 | Y | CODIGO DA NATUREZA DE DESPESA |
| 21 | DSP_CODIGO_DE_BARRAS_PRO | VARCHAR2 | Y | Código de barras do produto que pertence ao KIT |

---

## DBAMV.ITMVTO_ESTOQUE_TRANSF

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MVTO_ESTOQUE | NUMBER | N |  |
| 2 | CD_ITMVTO_ESTOQUE | NUMBER | N |  |
| 3 | DSP_CODIGO_DE_BARRAS | VARCHAR2 | Y |  |
| 4 | CD_PRODUTO | NUMBER | N |  |
| 5 | CD_UNI_PRO | NUMBER | N |  |
| 6 | QT_MOVIMENTACAO | NUMBER | N |  |
| 7 | CD_LOTE | VARCHAR2 | Y |  |
| 8 | DT_VALIDADE | DATE | Y |  |
| 9 | QT_PERDA | NUMBER | Y |  |
| 10 | DH_MVTO_ESTOQUE | DATE | N |  |
| 11 | CD_IMPORTA_REG_FAT | NUMBER | Y |  |
| 12 | CD_ITSOLSAI_PRO | NUMBER | Y |  |
| 13 | CD_IMPORTA_REG_AMB | NUMBER | Y |  |
| 14 | VL_UNITARIO_EMPRESTIMO | NUMBER | Y |  |
| 15 | VL_TOTAL_EMPRESTIMO | NUMBER | Y |  |
| 16 | CD_ITENT_PRO | NUMBER | Y |  |
| 17 | TP_USO_PRODUTO | VARCHAR2 | Y |  |
| 18 | CD_FORNECEDOR | NUMBER | Y |  |
| 19 | CD_PRODUTO_KIT | NUMBER | Y |  |
| 20 | TP_ESTOQUE | VARCHAR2 | Y |  |
| 21 | CD_FORMULA_KIT | NUMBER | Y |  |
| 22 | QT_KIT | NUMBER | Y |  |
| 23 | TP_ORCAMENTO | VARCHAR2 | Y |  |
| 24 | SN_FATURA | VARCHAR2 | Y |  |
| 25 | VL_ICMS | NUMBER | Y |  |
| 26 | VL_UNITARIO | NUMBER | Y |  |
| 27 | DT_GRAVACAO | DATE | Y |  |
| 28 | CD_SEQ_INTEGRA | VARCHAR2 | Y |  |
| 29 | DT_INTEGRA | DATE | Y |  |
| 30 | SN_PENDENCIA | VARCHAR2 | Y |  |
| 31 | DS_MARCA | VARCHAR2 | Y |  |
| 32 | DS_ENDERECO | VARCHAR2 | Y |  |
| 33 | VL_PRECO_CONTRAVAL | NUMBER | Y |  |
| 34 | VL_UNITARIO_CONTRAVAL | NUMBER | Y |  |
| 35 | VL_UNITARIO_EMP_CONTRAVAL | NUMBER | Y |  |
| 36 | VL_TOTAL_EMP_CONTRAVAL | NUMBER | Y |  |
| 37 | VL_ICMS_CONTRAVAL | NUMBER | Y |  |
| 38 | VL_PRECO | NUMBER | Y |  |
| 39 | QT_MOVIMENTACAO_ATENDIDA | NUMBER | Y |  |

---

## DBAMV.ITSOLSAI_PRO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITSOLSAI_PRO | NUMBER | N |  |
| 2 | CD_SOLSAI_PRO | NUMBER | N |  |
| 3 | CD_PRODUTO | NUMBER | Y |  |
| 4 | CD_UNI_PRO | NUMBER | Y |  |
| 5 | QT_SOLICITADO | NUMBER | N |  |
| 6 | CD_TIP_PRESC | NUMBER | Y |  |
| 7 | CD_TIP_FRE | NUMBER | Y |  |
| 8 | SN_ATENDIDO | VARCHAR2 | Y |  |
| 9 | CD_UNIDADE | VARCHAR2 | Y |  |
| 10 | CD_KIT_ESTOQUE | VARCHAR2 | Y |  |
| 11 | CD_TIP_PRESC_KIT | NUMBER | Y |  |
| 12 | CD_LOTE | VARCHAR2 | Y |  |
| 13 | DT_VALIDADE | DATE | Y |  |
| 14 | QT_PRESCRITA | NUMBER | Y |  |
| 15 | NR_DIAS | NUMBER | Y |  |
| 16 | TP_USO_PRODUTO | VARCHAR2 | Y |  |
| 17 | CD_PRODUTO_KIT | NUMBER | Y |  |
| 18 | CD_FORMULA_KIT | NUMBER | Y |  |
| 19 | QT_KIT | NUMBER | Y |  |
| 20 | CD_MOT_DEV | NUMBER | Y |  |
| 21 | SN_FATURA | VARCHAR2 | Y |  |
| 22 | CD_ITPRE_MED | NUMBER | Y |  |
| 23 | QT_ATENDIDA | NUMBER | Y |  |
| 24 | DS_NPADRONIZADO | VARCHAR2 | Y |  |
| 25 | CD_ITDEV_PRE | NUMBER | Y |  |
| 26 | DS_OBS_ITPRE_MED | VARCHAR2 | Y |  |
| 27 | SN_CONF_DETERM_USU | VARCHAR2 | N |  |
| 28 | DT_GRAVACAO | DATE | Y |  |
| 29 | DSP_CODIGO_DE_BARRAS | VARCHAR2 | Y | Codigo de barras do produto |
| 30 | DS_ALERTA_AUTOMATICO | VARCHAR2 | Y | Descric?o do alerta automatico. |
| 31 | CD_ITSOLSAI_PRO_INTEGRA | VARCHAR2 | Y | Codigo do item solicitado (de-para) |
| 32 | CD_SEQ_INTEGRA | NUMBER | Y | Codigo sequencial da integrac?o |
| 33 | DT_INTEGRA | DATE | Y | Data em que o registros foi integrado |
| 34 | DT_ESTORNO_FFCV | DATE | Y | Inidica a data em que foi feito o estorno de um item solicitado para devoluc?o, se a configurac?o... |
| 35 | CD_ITENT_PRO | NUMBER | Y | Item de entrada de produtos gerador do item da solicitac?o. |
| 36 | CD_MOTIVO_DIVERG_ATEND | NUMBER | Y | FK da tabela MOTIVO_DIVERG_ATEND |
| 37 | SN_IMPRIME_ETQ_DOSE | CHAR | Y |  |
| 38 | SN_COMPONENTE | VARCHAR2 | N |  |
| 39 | SN_CONF_REC_SEM_ATENDIMENTO | VARCHAR2 | Y | Campo que indica se foi realizado recebimento de um produto Sem atendimento. |
| 40 | CD_ITENT_PRO_PRODUCAO | NUMBER | Y | Chave do item de entrada do produto |
| 41 | CD_ORDEM_PRODUCAO | NUMBER | Y | Ordem de produção criada para o item da solicitação |

---

## DBAMV.ITSOLSAI_PRO_ATENDIDO
> Tabela que de vinculo dos produtos solicitados com os produtos atendidos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITSOLSAI_PRO_ATENDIDO | NUMBER | N | Codigo sequencial da tabela itsolsai_pro_atendido |
| 2 | CD_ITSOLSAI_PRO | NUMBER | N | Codigo sequencial dos itens da solicitac?o dos produtos |
| 3 | CD_PRODUTO_ATENDIDO | NUMBER | Y | Identifica o produto atendido |
| 4 | CD_UNI_PRO | NUMBER | Y | Codigo da unidade do produto atendido |
| 5 | QTD_ATENDIDA | NUMBER | Y | Identifica a quantidade do produto que foi atendida |
| 6 | CD_ITMVTO_ESTOQUE | NUMBER | Y | Codigo do Item de Movimentac?o |

---

## DBAMV.ITSOLSAI_PRO_FECHAMENTO
> Tabela de itens de solicitac?o associados a codigos de fechamento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITSOLSAI_PRO | NUMBER | N | Codigo do item de solicitac?o |
| 2 | CD_FECHAMENTO | NUMBER | N | Codigo do fechamento |
| 3 | QT_SOLICITADO | NUMBER | N | Quantidade na solicitac?o |

---

## DBAMV.ITSOLSAI_PRO_PRODUCAO
> TABELA PARA ARMAZENAR O LOG DA ITSOLSAI_PRO NO MOMENTO DA PRODICAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITSOLSAI_PRO_PRODUCAO | NUMBER | N | SEQUENCE DA TABELA |
| 2 | CD_ITSOLSAI_PRO | NUMBER | N | CDIGO DO ITEM SOLICITAO DE SADA DO PRODUTO |
| 3 | CD_SOLSAI_PRO | NUMBER | N | CDIGO DA SOLICITAO DE SADA DO PRODUTO |
| 4 | CD_PRODUTO | NUMBER | N | CDIGO DO PRODUTO |
| 5 | CD_UNI_PRO | NUMBER | N | CDIGO DA UNIDADE DO PRODUTO |
| 6 | QT_SOLICITADO | NUMBER | N | QUANTIDADE SOLICITADA |
| 7 | CD_TIP_PRESC | NUMBER | Y | CDIGO DO TIPO DE PRESCRIO |
| 8 | CD_TIP_FRE | NUMBER | Y | CDIGO DO TIPO DE FREQUNCIA |
| 9 | CD_TIP_PRESC_KIT | NUMBER | Y | CDIGO DO TIPO DE PRESCRIO KIT |
| 10 | CD_ITPRE_MED | NUMBER | Y | CDIGO DA ITPRE_MED |
| 11 | DS_NPADRONIZADO | VARCHAR2 | Y | DESCRIO DO PRODUTO NO PADRONIZADO |
| 12 | DS_OBS_ITPRE_MED | VARCHAR2 | Y | DESCRIO DA OBSERVAO DA ITPRE_MED |
| 13 | DT_GRAVACAO | DATE | Y | DATA DA GRAVAO |
| 14 | CD_USUARIO | VARCHAR2 | N | CDIGO DO USURIO |
| 15 | CD_ENT_PRO | NUMBER | N | CDIGO DA ENTRADA |
| 16 | CD_ITENT_PRO | NUMBER | N | CDIGO DA ENTRADA DO ITRM |
| 17 | CD_PRODUTO_PRODUZIDO | NUMBER | N | CDIGO DO PRODUTO PRODUZIDO |

---

## DBAMV.ITSOLSAI_PRO_SEM_SALDO
> Tabela de itens da solicitac?o de saida de produto sem saldo para atender a cota.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SOLSAI_PRO | NUMBER | N | Codigo da solicitac?o |
| 2 | CD_PRODUTO | NUMBER | N | Codigo do produto da solicitac?o |
| 3 | CD_UNI_PRO | NUMBER | N | Codigo da unidade do produto |
| 4 | QT_ESTOQUE | NUMBER | Y | Quantidade do produto em estoque no momento da criac?o da solicitac?o |
| 5 | QT_COTA | NUMBER | Y | Quantidade da cota |
| 6 | CD_USUARIO | VARCHAR2 | Y | Usuario que gerou a solicitac?o |

---

## DBAMV.ITSOLSAI_PRO_STATUS
> Status dos produtos solicitados

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITSOLSAI_PRO_STATUS | NUMBER | N | Codigo do status dos produtos solicitados |
| 2 | CD_ITSOLSAI_PRO | NUMBER | N | Codigo da linha do produto solicitado |
| 3 | DT_OPERACAO | DATE | N | Data da operac?o |
| 4 | HR_OPERACAO | DATE | N | Hora da operac?o |
| 5 | TP_STATUS | VARCHAR2 | N | Tipo de Status: ANA=Em Analise  AUT=Em Autorizac?o  BLQ=Bloqueado  LIB=Liberado  PEN=Pendente |
| 6 | CD_USUARIO | VARCHAR2 | N | Codigo do usuario |
| 7 | DS_JUSTIFICATIVA | VARCHAR2 | N | Justificativa |

---

## DBAMV.ITSOL_COM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SOL_COM | NUMBER | N |  |
| 2 | CD_PRODUTO | NUMBER | N |  |
| 3 | CD_UNI_PRO | NUMBER | N |  |
| 4 | QT_SOLIC | NUMBER | N |  |
| 5 | DS_DICA_DA_COMPRA | VARCHAR2 | Y |  |
| 6 | SN_COMPRADO | VARCHAR2 | Y |  |
| 7 | QT_COMPRADA | NUMBER | Y |  |
| 8 | QT_ATENDIDA | NUMBER | Y |  |
| 9 | CD_COTA | NUMBER | Y |  |
| 10 | VL_MENOR_LEILAO | NUMBER | Y |  |
| 11 | CD_MOT_CANCEL | NUMBER | Y |  |
| 12 | DT_CANCEL | DATE | Y |  |
| 13 | SEQUENCIA_MVSC | NUMBER | Y |  |
| 14 | CD_COTADOR | NUMBER | Y |  |
| 15 | CD_ITSOL_COM_INTEGRA | VARCHAR2 | Y |  |
| 16 | DT_INTEGRA | DATE | Y |  |
| 17 | CD_SEQ_INTEGRA | NUMBER | Y |  |
| 18 | CD_SEQUENCIAL | NUMBER | Y | Coluna que vai informar a sequencia que os produtos foram digitados na solicitac?o. |
| 19 | CD_IT_GUIA | NUMBER | Y | Codigo de Guia associada a solicitac?o tipo OPME |
| 20 | QT_AUTORIZA_OPME | NUMBER | Y | Quantidade autorizada para compra pelo OPMENEXO |
| 21 | NR_LOTE | NUMBER | Y | Numero do Processo |
| 22 | QT_CONSUMO_MEDIO_MENSAL_PLANEJ | NUMBER | Y | Quantidade de consumo mensal planejado |
| 23 | QT_CMM_PLANEJAMENTO | NUMBER | Y | Quantidade Planejada |
| 24 | CD_USUARIO_CANCELAMENTO | VARCHAR2 | Y | Codigo do Usuario de Cancelamento |
| 25 | NR_ITEM_PROCESSO_LICITATORIO | NUMBER | Y | Coluna que vai informar a ordem dos itens no processo licitatorio (licitac?o/edital). |
| 26 | DS_INFORMA_ISO | VARCHAR2 | Y | Iso 9000/14000. |
| 27 | QT_AGRUPADA | NUMBER | Y | Quantidade que foi agrupada em uma unica solicitação |

---

## DBAMV.ITSOL_COM_OPMENEXO
> Tabela que armazena os itens das cotac?es recebidas do OPMENEXO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SOL_COM | NUMBER | N | Codigo da Solicitac?o tipo OPME |
| 2 | CD_PRODUTO | NUMBER | N | Codigo de produto |
| 3 | CD_FORNECEDOR | NUMBER | N | Codigo de fornecedor |
| 4 | QT_PRODUTO | NUMBER | Y | Quantidade do produto solicitado |
| 5 | CD_ARTIGO | VARCHAR2 | Y | Codigo OPMENEXO do produto |
| 6 | CD_MARCA | VARCHAR2 | Y | codigo da marca do produto |
| 7 | DS_MARCA | VARCHAR2 | Y | Descric?o da marca do produto |
| 8 | NR_CNPJ | VARCHAR2 | Y | Numero CNPJ do Fornecedor |
| 9 | NM_FABRICANTE | VARCHAR2 | Y | Nome do fabricante do produto |
| 10 | DS_EMBALAGEM | VARCHAR2 | Y | Tipo de embalagem (unidade) cotado pelo fornecedor |
| 11 | VL_PRECO_UNITARIO | NUMBER | Y | Preco unitario do produto |
| 12 | VL_PRECO_TOTAL | NUMBER | Y | Valor total do produto |
| 13 | DS_COMENTARIO | VARCHAR2 | Y | Comentario |
| 14 | QT_PRAZO_ENTREGA | NUMBER | Y | Quantidade do prazo de entrega |
| 15 | DT_VALIDADE_PROPOSTA | DATE | Y | Data validade da proposta |
| 16 | SN_COMPRA | VARCHAR2 | Y | Indica se o produto foi enviado para confirmac?o de compras, ao OPMENEXO |
| 17 | SN_ENVIADO | VARCHAR2 | Y | Indica se o produto foi enviado para confirmac?o de compras, ao OPMENEXO |
| 18 | TP_FRETE | VARCHAR2 | Y | Tipo de frete do fornecedor |
| 19 | CD_CONDICAO_PAGAMENTO | NUMBER | Y | Condic?o de pagamento do fornecedor |
| 20 | CD_ANVISA | VARCHAR2 | Y | Registro no Ministério da Saúde RMS - ANVISA |
| 21 | DT_ANVISA | DATE | Y | Data de validade do ANVISA - RMS |

---

## DBAMV.ITSOL_COM_RELATORIO_SCCOM
> Importac?o de dados para consolidac?o de relatorios de Itens da Solicitac?o de Compra

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SOL_COM | NUMBER | N | Codigo da solicitac?o |
| 2 | CD_HOSPITAL | VARCHAR2 | N | Codigo do hospital que exportou o regsitro |
| 3 | CD_PRODUTO | NUMBER | N | Codigo do produto solicitado |
| 4 | QT_SOLIC | NUMBER | Y | Quantidade do produto solicitada |
| 5 | QT_ATENDIDA | NUMBER | Y | Quantidade do produto atendida pela ordem de compra |

---

## DBAMV.KIT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_COMP_KIT | NUMBER | N |  |
| 2 | DS_KIT | VARCHAR2 | N |  |
| 3 | SN_ATIVO | VARCHAR2 | N |  |
| 4 | CD_USUARIO_INC | VARCHAR2 | N |  |
| 5 | DT_INC_USUARIO | DATE | N |  |
| 6 | CD_USUARIO_ALT | VARCHAR2 | Y |  |
| 7 | DT_ALT_USUARIO | DATE | Y |  |
| 8 | CD_PADRAO | NUMBER | Y | Codigo de Padr?o de Cobranca - Kit do Faturamento |

---

## DBAMV.KIT_EQUIP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FORMULA | NUMBER | N |  |
| 2 | CD_APARELHO_EQUIPAMENTO | NUMBER | N |  |
| 3 | QT_PADRAO | NUMBER | N |  |

---

## DBAMV.KIT_ESTOQUE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_KIT_ESTOQUE | VARCHAR2 | N |  |
| 2 | DS_KIT_ESTOQUE | VARCHAR2 | N |  |

---

## DBAMV.KIT_PRO_FAT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FORMULA | NUMBER | N |  |
| 2 | CD_PRO_FAT | VARCHAR2 | N |  |
| 3 | QT_PADRAO | NUMBER | N |  |

---

## DBAMV.KIT_SANGUE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FORMULA | NUMBER | N |  |
| 2 | CD_SANGUE_DERIVADOS | NUMBER | N |  |
| 3 | QT_PADRAO | NUMBER | N |  |

---

## DBAMV.LOTE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOTE | NUMBER | N |  |
| 2 | DS_LOTE | VARCHAR2 | N |  |
| 3 | DT_INICIAL_LCTO | DATE | N |  |
| 4 | DT_FINAL_LCTO | DATE | N |  |
| 5 | VL_LOTE | NUMBER | Y |  |
| 6 | DT_LIBERADO | DATE | Y |  |
| 7 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 8 | DT_CRIACAO | DATE | N |  |
| 9 | CD_MULTI_EMPRESA_ORIGEM | NUMBER | Y | Indica a empresa responsavel pelo lancamento do lote |
| 10 | CD_LOTE_PAI | NUMBER | Y | Indica o lote principal cujo este lote esta vinculado |
| 11 | SN_LOTE_APURACAO_RESULTADO | VARCHAR2 | Y | Indica se o lote e de apurac?o de resultados |
| 12 | CD_LOTE_INTEGRA | VARCHAR2 | Y | Codigo do lote (de-para) |
| 13 | DT_INTEGRA | DATE | Y | Data em que o registro foi integrado |
| 14 | CD_SEQ_INTEGRA | NUMBER | Y | Codigo sequencial da integrac?o |
| 15 | TP_ORIGEM_LOTE | VARCHAR2 | Y | tipo da origem do LOTE, D:Diaria, M:Manual ou A:Automatico |
| 16 | SN_LOTE_VARIACAO_CAMBIAL | VARCHAR2 | Y | Informa se o lote e de variac?o cambial. |
| 17 | SN_IMPORTADO | VARCHAR2 | Y | Indica se o lote foi importado ou manual - S Importado N Nao Importado |
| 18 | CD_TELA | VARCHAR2 | Y | Código da tela de origem |
| 19 | TP_LANCAMENTO | VARCHAR2 | N | Indica o Tipo dos Lançamentos que o Lote pode conter. Valores possíveis: N-Lançamentos Normais, E... |
| 20 | CD_LOTE_EXT | NUMBER | Y | Código do lote Extemporâneos |
| 21 | CD_LCTO_MOV_EXT | NUMBER | Y | Código do movimento Extemporâneos |
| 22 | DT_LCTO_EXT | DATE | Y | Data do lançamento Extemporâneos |
| 23 | DS_NOTA_EXPLICATIVA | VARCHAR2 | Y | DESCRIÇÃO DE NOTA EXPLICATIVA |

---

## DBAMV.LOTE_AMPOLA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOTE_AMPOLA | NUMBER | N |  |
| 2 | CD_ESTERILIZA | NUMBER | N |  |
| 3 | DS_LOTE_BIOLOGICO | VARCHAR2 | Y |  |
| 4 | DS_LOTE_QUIMICO | VARCHAR2 | Y |  |
| 5 | DS_OBSERVACAO_BIOLOGICO | VARCHAR2 | Y |  |
| 6 | DS_OBSERVACAO_QUIMICO | VARCHAR2 | Y |  |

---

## DBAMV.LOTE_AMPOLA_DESINFECCAO
> Tabela para armazenar os lotes químicos de desinfecção.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOTE_AMPOLA_DESINFECCAO | NUMBER | N | Código identificador do lote ampola. |
| 2 | CD_DESINFECCAO | NUMBER | N | Código da desinfecção. |
| 3 | DS_LOTE_QUIMICO | VARCHAR2 | Y | Descrição do lote químico da desinfecção. |
| 4 | DS_OBSERVACAO_QUIMICO | VARCHAR2 | Y | Observação do lote químico da desinfecção. |

---

## DBAMV.LOTE_ANALISE_CONTAS
> Tabela de lote de análise de conta (lote de trabalho)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOTE_ANALISE_CONTA | NUMBER | N | Código do lote de análise de conta. |
| 2 | DS_LOTE_ANALISE_CONTA | VARCHAR2 | Y | Descrição do lote. |
| 3 | TP_LOTE | VARCHAR2 | N | Tipo do lote: P-Pós (quando CONVENIO.TP_FORMA_GERAR_CON_REC = P) ou R-Pré (quando CONVENIO.TP_FOR... |
| 4 | TP_STATUS | VARCHAR2 | Y | Status do lote: C-Criado, P-Pendente, F-Finalizado, A-Cancelado e E-Estornado. |
| 5 | CD_CONVENIO | NUMBER | N | Código do convênio do lote. Obs.: Este lote só poderá conter contas deste convênio. |
| 6 | CD_NOTA_FISCAL | NUMBER | Y | Código da Nota Fiscal |
| 7 | DT_CRIACAO | DATE | Y | Data da criação do lote |
| 8 | DT_ENCERRAMENTO | DATE | Y | Data de encerramento do lote |
| 9 | CD_USUARIO | VARCHAR2 | Y | Código do usuário que criou o lote |

---

## DBAMV.LOTE_BANCADA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOTE_BANCADA | NUMBER | N |  |
| 2 | CD_SET_EXA | NUMBER | N |  |
| 3 | CD_BANCADA | NUMBER | N |  |
| 4 | DT_ABERTURA | DATE | N |  |
| 5 | CD_USUARIO_ABRE | VARCHAR2 | N |  |
| 6 | DT_FECHAMENTO | DATE | Y |  |
| 7 | CD_USUARIO_FECHA | VARCHAR2 | Y |  |
| 8 | TP_SITUACAO | VARCHAR2 | N | Situac?o do Lote: (F)echado / (A)berto |
| 9 | CD_SETOR | NUMBER | Y | Codigo de identificac?o do Setor Solicitante associado ao Lote de Trabalho |
| 10 | CD_EXA_LAB | NUMBER | Y | Codigo de identificac?o do Exame Laboratorial associado ao Lote de Trabalho |
| 11 | DT_IMPRESSAO | DATE | Y | Data da impress?o do relatorio de Mapa de Trabalho associado ao Lote |
| 12 | CD_MODELO_MAPA_TRABALHO | NUMBER | Y | Codigo do modelo automatico de mapa de trabalho |

---

## DBAMV.LOTE_CAIXA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOTE_CAIXA | NUMBER | N |  |
| 2 | CD_USUARIO | VARCHAR2 | N |  |
| 3 | CD_CAIXA | NUMBER | N |  |
| 4 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 5 | DT_ABERTURA | DATE | N |  |
| 6 | DT_FECHAMENTO | DATE | Y |  |
| 7 | DT_BLOQUEIO | DATE | Y |  |
| 8 | VL_SALDO_INICIAL | NUMBER | N |  |
| 9 | VL_SALDO_FINAL | NUMBER | Y |  |
| 10 | VL_SALDO_DINHEIRO | NUMBER | N |  |
| 11 | CD_USUARIO_FECHAMENTO | VARCHAR2 | Y |  |
| 12 | CD_SEQ_INTEGRA | NUMBER | Y | Codigo do de-para. |
| 13 | DT_INTEGRA | DATE | Y | Data de integrac?o do registro. |
| 14 | CD_LOTE_CAIXA_INTEGRA | VARCHAR2 | Y |  |
| 15 | CD_USU_ULTIMA_ABERTURA | VARCHAR2 | Y | Usuario que realizou a abertura de origem do lote |
| 16 | CD_USU_ULTIMO_FECHAMENTO | VARCHAR2 | Y | Usuario que realizou o fechamento de origem do lote |
| 17 | DS_OBSERVACAO | VARCHAR2 | Y | Observações do lote de caixa |

---

## DBAMV.LOTE_ETIQUETA_EXTERNA
> Tabela de Lotes de Etiquetas de Coleta para Setores Solicitantes Externos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOTE | NUMBER | N | Codigo Sequencial do Lote |
| 2 | CD_SETOR | NUMBER | N | Codigo do Setor Solicitante para quem sera gerado o Lote |
| 3 | CD_USUARIO | VARCHAR2 | N | Codigo do Usuario que gerou o Lote |
| 4 | DT_GERACAO | DATE | N | Data em que foi gerado o Lote |
| 5 | NR_ETIQUETAS | NUMBER | N | Quantidade de etiquetas a serem geradas |
| 6 | NR_ETIQUETA_INICIAL | NUMBER | N | Numero da etiqueta inicial do Lote |
| 7 | NR_ETIQUETA_FINAL | NUMBER | N | Numero da etiqueta final do Lote |

---

## DBAMV.LOTE_FINANCEIRO
> Tabela de Lotes Financeiros

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOTE_FINANCEIRO | NUMBER | N | código do lote financeiro |
| 2 | CD_MULTI_EMPRESA | NUMBER | N | código da empresa |
| 3 | CD_USUARIO_ABER | VARCHAR2 | N | código do usuário de abertura do lote |
| 4 | CD_USUARIO_PROC | VARCHAR2 | Y | código do usuário que processou o lote |
| 5 | CD_USUARIO_CANC | VARCHAR2 | Y | código do usuário que cancelou o lote |
| 6 | CD_CAMARA_FINA | VARCHAR2 | Y | código da camara fina |
| 7 | CD_FORNECEDOR | NUMBER | Y | código do fornecedor |
| 8 | CD_CON_REC | NUMBER | Y | código do contas a receber |
| 9 | CD_CON_PAG | NUMBER | Y | código do contas a apagar |
| 10 | CD_PROCESSO | VARCHAR2 | Y | código do processo |
| 11 | CD_CON_COR | NUMBER | Y | código da conta corrente |
| 12 | CD_CAIXA | NUMBER | Y | código do caixa |
| 13 | CD_DOCUMENTO | VARCHAR2 | Y | código do documento |
| 14 | CD_FIN_CAR | NUMBER | Y |  |
| 15 | CD_MOEDA | VARCHAR2 | N | código da moeda |
| 16 | TP_PERIODO | VARCHAR2 | N | LCTO=Lançamento, EMIS=Emissão, VCTO=Vencimento |
| 17 | TP_LOTE | VARCHAR2 | N | CMRA=Câmara Compensação, ECNT=Encontro Conta, PGTO=Pagamento, RECB=Recebimento |
| 18 | DS_LOTE | VARCHAR2 | Y | descrição do lote |
| 19 | VL_RECEBER | NUMBER | Y | valor areceber |
| 20 | VL_PAGAR | NUMBER | Y | valor apagar |
| 21 | DT_PERIODO_INI | DATE | N | data inicio do periodo do lote |
| 22 | DT_PERIODO_FIN | DATE | N | data final do periodo do lote |
| 23 | DT_MOVIMENTO | DATE | N | data do mocimento do lote |
| 24 | DT_ABERTURA | DATE | N | data de abertura do lote |
| 25 | DT_PROCESSADO | DATE | Y | data do processamento do lote |
| 26 | DT_CANCELADO | DATE | Y | data do cancelamento do lote |
| 27 | TP_STATUS | VARCHAR2 | N | AB=Aberto, PR=Processado, CA=Cancelado |

---

## DBAMV.LOTE_FINANCEIRO_ITEM
> Tabela de Itens de Lote Financeiro

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOTE_FINANCEIRO_ITEM | NUMBER | N | código do lote item |
| 2 | CD_LOTE_FINANCEIRO | NUMBER | N | código do lote financeiro |
| 3 | CD_PROCESSO | NUMBER | Y | código do processo |
| 4 | CD_CON_REC | NUMBER | Y | código do contas areceber |
| 5 | CD_CON_PAG | NUMBER | Y | código do contas apagar |
| 6 | CD_ITCON_REC | NUMBER | Y | código do item de recebimento |
| 7 | CD_ITCON_PAG | NUMBER | Y | código do item de pagamento |
| 8 | CD_RECCON_REC | NUMBER | Y | código do recebimento |
| 9 | CD_PAGCON_PAG | NUMBER | Y | código do pagamento |
| 10 | CD_CAUCAO | NUMBER | Y | códigoda caução |
| 11 | CD_MOEDA | VARCHAR2 | N | código da moeda |
| 12 | TP_FINANCEIRO | VARCHAR2 | N | P=Pagar, R=Receber |
| 13 | VL_CAMBIO | NUMBER | N | valor do cambio |
| 14 | VL_TITULO | NUMBER | Y | valor do titulo |
| 15 | VL_DESCONTO | NUMBER | Y | valor do desconto |
| 16 | VL_ACRESCIMO | NUMBER | Y | valor do acrescimo |
| 17 | VL_IMPOSTO | NUMBER | Y | valor do imposto |
| 18 | VL_PROCESSO | NUMBER | Y | valor do processo |

---

## DBAMV.LOTE_GERENCIAL
> Lote gerencial agrupa todos os lancamentos das empresas controladas

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOTE | NUMBER | N | Codigo do lote |
| 2 | DS_LOTE | VARCHAR2 | N | Descric?o do lote |
| 3 | DT_INICIAL_LCTO | DATE | N | Data de abertura do lote |
| 4 | DT_FINAL_LCTO | DATE | N | Data de fechamento do lote |
| 5 | VL_LOTE | NUMBER | Y | Valor total de todos os lancamentos do lote |
| 6 | DT_LIBERADO | DATE | Y | Data de liberac?o do lote |
| 7 | CD_MULTI_EMPRESA | NUMBER | N | Indica o codigo da empresa que o lote pertence |
| 8 | DT_CRIACAO | DATE | N | Data de criac?o do lote |
| 9 | CD_MULTI_EMPRESA_ORIGEM | NUMBER | Y | Indica empresa responsavel pelo lancamento do lote |
| 10 | CD_LOTE_PAI | NUMBER | Y | Indica o lote principal cujo este lote esta vinculado |
| 11 | SN_LOTE_APURACAO_RESULTADO | VARCHAR2 | Y | Indica se o lote e de apurac?o de resultados |

---

## DBAMV.LOTE_IMPORTACAO_CON_REC
> Tabela para os lotes de importac?o das contas a receber.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOTE_IMPORTACAO | NUMBER | N | Codigo do lote |
| 2 | DS_LOTE_IMPORTACAO | VARCHAR2 | N | Descric?o do lote |
| 3 | DT_IMPORTACAO | DATE | N | Data da Importacao do lote |
| 4 | DS_USUARIO | VARCHAR2 | N | Usuario que realizou a importac?o |
| 5 | DS_ARQUIVO | VARCHAR2 | N | Descric?o do arquivo importado |

---

## DBAMV.LOTE_ITEM_MAPA_PREPARO
> Tabela que armazenará os lotes usados na preparação das doses

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOTE_ITEM_MAPA_PREPARO | NUMBER | N | Código identificador do lote da preparação da dose. Alimentado pela sequence SEQ_LOTE_ITEM_MAPA_P... |
| 2 | CD_ITEM_MAPA_PREPARO | NUMBER | N | Código identificador do item da preparação da dose |
| 3 | CD_LOTE_ATENDIMENTO | VARCHAR2 | Y | Código do lote usado na preparação da dose |
| 4 | DH_VALIDADE_ATENDIMENTO | DATE | Y | Data de validade do lote usado na preparação da dose |
| 5 | QT_LOTE_ATENDIMENTO | NUMBER | Y | Quantidade do lote usado na preparação da dose |
| 6 | DS_MARCA_ATENDIMENTO | VARCHAR2 | Y | Marca do lote usado na preparação da dose |
| 7 | CD_LOTE | VARCHAR2 | Y | Código do lote usado na preparação da dose |
| 8 | DH_VALIDADE | DATE | Y | Data de validade do lote usado na preparação da dose |
| 9 | QT_LOTE | NUMBER | Y | Quantidade do lote usado na preparação da dose |
| 10 | DS_MARCA | VARCHAR2 | Y | Marca do lote usado na preparação da dose |
| 11 | QT_OVERFILL | NUMBER | Y | Quantidade de overfill observada durante a preparação da dose |
| 12 | QT_SOBRA | NUMBER | Y | Quantidade de sobra observada durante a preparação da dose |
| 13 | TP_ACAO | VARCHAR2 | N | Ação tomada para tratar a sobra. Valores possíveis: A - Aproveitamento \| D - Descarte \| M - Man... |
| 14 | CD_MOT_BAI | NUMBER | Y | Guarda o código do motivo da baixa quando houver descarte |

---

## DBAMV.LOTE_LAUDOS_SIH
> Tabela de lotes para o controle de laudos do SUS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NR_LOTE | NUMBER | N | Número do lote controle de laudos SUS |
| 2 | TP_LOTE | VARCHAR2 | N |  |
| 3 | CD_USUARIO | VARCHAR2 | N | Identificação do usuário que criou o lote |
| 4 | DH_GERACAO | DATE | N | Data e hora de geração do lote |
| 5 | CD_USUARIO_EXPORTACAO | VARCHAR2 | Y | Identificação do usuário que exportou o lote |
| 6 | DH_EXPORTACAO | DATE | Y | Data e hora da exportação do lote |
| 7 | CD_MULTI_EMPRESA | NUMBER | Y | Codigo da empresa |

---

## DBAMV.LOTE_OBSERVACAO
> TABELA QUE ARMAZENARA AS OBSERVAÇOES REFERENTE AO CAIXA/LOTE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOTE_OBSERVACAO | NUMBER | N | CODIGO DA OBSERVAÇAO |
| 2 | CD_LOTE_CAIXA | NUMBER | N | CODIGO DO LOTE DO CAIXA |
| 3 | CD_CAIXA | NUMBER | N | CODIGO DO CAIXA |
| 4 | DT_OBSERVACAO | DATE | N | DATA DA INSERÇAO DA OBSERVAÇAO |
| 5 | USU_OBSERVACAO | VARCHAR2 | N | USUARIO DA INSERÇAO DA OBSERVAÇAO |
| 6 | DS_OBSERVACAO | VARCHAR2 | Y | DESCRITIVO DA OBSERVAÇAO |

---

## DBAMV.LOTE_ORCAMENTARIO
> Tabela de Lotes Orcamentarios

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOTE_ORCAMENTARIO | NUMBER | N | Codigo do Lote Orcamentario |
| 2 | DS_LOTE_ORCAMENTARIO | VARCHAR2 | Y | Descric?o do Lote Orcamentario |
| 3 | CD_ORCAMENTO_HOSPITALAR | NUMBER | Y | Codigo do Orcamento |
| 4 | CD_PLANO_ORCAMENTARIO | NUMBER | Y | Codigo do Plano Orcamentario |
| 5 | DT_COMPETENCIA | DATE | Y | Competencia do Lote Orcamentario |
| 6 | CD_USUARIO | VARCHAR2 | Y | Usuario que gerou o Lote Orcamentario |
| 7 | DT_IMPORTACAO | DATE | Y | Data de Importac?o do Lote Orcamentario |
| 8 | CD_GRUPO_USUARIO_ORCAMENTO | NUMBER | Y | Codigo do Grupo Usuario Orcamentario |
| 9 | CD_USUARIO_ORCAMENTO | NUMBER | N |  |

---

## DBAMV.LOTE_ORCAMENTARIO_SETOR
> Setores da Importac?o dos Lotes Orcamentarios

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOTE_ORCAMENTARIO_SETOR | NUMBER | N | Codigo sequencial do Lote Orcamentario Setor |
| 2 | CD_LOTE_ORCAMENTARIO | NUMBER | N | Codigo do Lote Orcamentario |
| 3 | CD_SETOR | NUMBER | N | Codigo do Setor - Centro de Custo |

---

## DBAMV.LOTE_PECA_ORCAMENTARIA
> Tabela de Lotes de Pei??as Ori??amenti??rias

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOTE_PECA_ORCAMENTARIA | NUMBER | N | Ci??digo do Lote de Pei??a Ori??amenti??ria |
| 2 | DS_LOTE_PECA_ORCAMENTARIA | VARCHAR2 | Y | Descrii??i??o do Lote Ori??amenti??rio |
| 3 | CD_ORCAMENTO_HOSPITALAR | NUMBER | Y | Ci??digo do Ori??amento |
| 4 | CD_ORCAMENTO_HOSPITALAR_ORIGEM | NUMBER | Y | Ci??digo do Ori??amento Origem |
| 5 | CD_PLANO_ORCAMENTARIO_ORIGEM | NUMBER | Y | Ci??digo do Plano Ori??amenti??rio Origem |
| 6 | CD_USUARIO | VARCHAR2 | Y | Usui??rio que Gerou o Lote de Pei??a Ori??amenti??ria |
| 7 | DT_IMPORTACAO | DATE | Y | Data de Importai??i??o do Lote de Pei??a Ori??amenti??ria |
| 8 | CD_GRUPO_USUARIO_ORCAMENTO | NUMBER | Y | Ci??digo do Grupo de Usui??rio do Ori??amento |
| 9 | CD_USUARIO_ORCAMENTO | NUMBER | N |  |

---

## DBAMV.LOTE_PGTO
> Tabela de Lotes de Pagamentos.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOTE_PGTO | NUMBER | N | Codigo do Lote de Pagamento. |
| 2 | DS_LOTE_PGTO | VARCHAR2 | Y | Descric?o do Lote de Pagamento. |
| 3 | DT_LOTE_PGTO | DATE | Y | Data da Ultima Alterac?o no Lote de Pagamento. |
| 4 | CD_USUARIO | VARCHAR2 | N | Usuario Autorizador da Ultima Alterac?o no Lote de Pagamento. |
| 5 | NR_NIVEL_AUTORIZACAO | VARCHAR2 | Y | Nivel de Autorizac?o Atual do Lote de Pagamento. |
| 6 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da Multi-Empresa. |

---

## DBAMV.LOTE_PGTO_ITCON_PAG
> Tabela de Item de Contas a Pagar do Lote.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOTE_PGTO | NUMBER | N | Codigo do Lote de Pagamento. |
| 2 | CD_ITCON_PAG | NUMBER | N | Codigo do Item da Conta a Pagar. |
| 3 | SN_REJEITADA_REM | VARCHAR2 | N | INDICA SE CONTA FOI REJEITADA NO LOTE DE REMESSA |
| 4 | DT_VINCULO | DATE | N | INFORMA DATA EM QUE A CONTA FOI VINCULADA AO LOTE |

---

## DBAMV.LOTE_PGTO_LOG
> Tabela de Historico do Lote de Pagamento.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOTE_PGTO_LOG | NUMBER | N | Codigo do Historico do Lote de Pagamento. |
| 2 | DT_LOTE_PGTO_LOG | DATE | N | Data do Historico do Lote de Pagamento. |
| 3 | CD_LOTE_PGTO | NUMBER | N | Codigo do Lote de Pagamento. |
| 4 | CD_USUARIO | VARCHAR2 | N | Codigo do Usuario do Historico do Lote de Pagamento. |
| 5 | NR_NIVEL_AUTORIZACAO | VARCHAR2 | N | Nivel de Autorizac?o Historico. |

---

## DBAMV.LOTE_REC_COBRANCA
> Tabela de Lotes de Cobranca Bancaria

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOTE_REC_COBRANCA | NUMBER | N | Codigo do Lote de Cobranca de Recebimento |
| 2 | DS_LOTE_REC_COBRANCA | VARCHAR2 | Y | Descric?o do Lote de Cobranca de Recebimento |
| 3 | DT_LOTE_REC_COBRANCA | DATE | Y | Data de criac?o Lote de Cobranca de Recebimento |
| 4 | NR_NIVEL_AUTORIZACAO | VARCHAR2 | Y | Nivel de autorizac?o do Lote |
| 5 | CD_USUARIO | VARCHAR2 | N | Usuario do Lote de Cobranca de Recebimento |
| 6 | CD_MULTI_EMPRESA | NUMBER | N | Codigo do Lote de Cobranca de Recebimento |
| 7 | CD_CONVENIO_BANCARIO | NUMBER | N | Codigo do Convenio Bancario associado ao Lote de Cobranca de Recebimento |

---

## DBAMV.LOTE_REC_COBRANCA_LOG
> Tabela de LOG dos lotes de cobranca

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOTE_REC_COBRANCA | NUMBER | N | Codigo do Lote de Cobranca |
| 2 | CD_LOTE_REC_COBRANCA_LOG | NUMBER | N | Codigo de log do Lote de Cobranca |
| 3 | CD_USUARIO | VARCHAR2 | N | Usuario associado a mudanca de nivel de autorizac?o do lote de cobranca |
| 4 | NR_NIVEL_AUTORIZACAO | VARCHAR2 | Y | Nivel de autorizac?o do lote de cobranca |
| 5 | DT_LOTE_REC_COBRANCA_LOG | DATE | Y | Data de log do lote de cobranca |

---

## DBAMV.LOTE_REC_ITCON_REC
> Tabela associada a criac?o de Lotes de Cobranca e Emiss?o de Boletos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOTE_REC_COBRANCA | NUMBER | N | Lote de Cobranca de Recebimento |
| 2 | CD_ITCON_REC | NUMBER | N | Codigo da parcela do Lote de Cobranca de Recebimento |
| 3 | SN_BOLETO_IMPRESSO | VARCHAR2 | N | Indica se o Contas a Receber ja foi impresso em Boleto |
| 4 | DT_EMISSAO_BOLETO | DATE | Y | Data de gerac?o do Boleto |
| 5 | DT_CANCELAMENTO_BOLETO | DATE | Y | Data de cancelamento do Boleto |
| 6 | CD_USUARIO_CANC_BOLETO | NUMBER | Y | Usuario responsavel pelo cancelamento do Boleto |
| 7 | DT_VENCIMENTO_BOLETO | DATE | Y | Data de Vencimento do Boleto de Cobranca |
| 8 | VL_BOLETO | NUMBER | Y | Valor do Boleto de Cobranca |
| 9 | NR_NOSSO_NUMERO_BOLETO | NUMBER | Y | Nosso Numero de Identificac?o do Boleto de Cobranca |
| 10 | SN_ENTREGUE | VARCHAR2 | N | Indica se o boleto emitido foi entregue ou n?o ao cliente |

---

## DBAMV.LOTE_REC_ITCON_REC_ACDE
> Descontos e Acrescimos por Lote de recebimento.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOTE_REC_ITCON_REC_ACDE | NUMBER | N | Codigo do Desconto ou Acrescimo no item do Lote de recebimento. |
| 2 | CD_LOTE_REC_COBRANCA | NUMBER | N |  |
| 3 | CD_LOTE_REC_ITCON_REC | NUMBER | N | Codigo do item de Conta a Receber do Lote de recebimento. |
| 4 | CD_DESC_ACRES | NUMBER | N | Codigo do Desconto ou Acrescimo. |
| 5 | VL_LOTE_REC_ITCON_REC_ACDE | NUMBER | N | Valor do Desconto ou Acrescimo. |

---

## DBAMV.LOTE_REC_LOG
> Tabela de Histórico do Lote de Recebimento.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOTE_REC_LOG | NUMBER | N | Código do Histórico do Lote de Recebimento. |
| 2 | DT_LOTE_REC_LOG | DATE | N | Data do Histórico do Lote de Recebimento. |
| 3 | CD_LOTE_REC_COBRANCA | NUMBER | N | Código do Lote de Recebimento. |
| 4 | CD_USUARIO | VARCHAR2 | N | Código do Usuário do Histórico do Lote de Recebimento. |
| 5 | NR_NIVEL_AUTORIZACAO | VARCHAR2 | N | Nível de Autorização Histórico. |

---

## DBAMV.LOTE_REMESSA
> Tabela de Lotes de Remessa.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOTE_REMESSA | NUMBER | N | Codigo do Lote de Remessa. |
| 2 | DS_LOTE_REMESSA | VARCHAR2 | N | Descric?o do Lote de Remessa. |
| 3 | CD_PROCESSO | NUMBER | N | Codigo do Processo. |
| 4 | TP_SITUACAO | VARCHAR2 | N | Situac?o do Lote de Remessa. |
| 5 | NR_NIVEL_AUTORIZACAO | VARCHAR2 | N | Nivel de Autorizac?o do Lote de Remessa. |
| 6 | CD_EXP_ARQUIVO_REMESSA | NUMBER | Y | Codigo da Remessa de Pagamento. |
| 7 | DS_MENSAGEM | VARCHAR2 | Y | Mensagem para Ser Utilizada nos Arquivos de Remessa. |
| 8 | CD_MULTI_EMPRESA | NUMBER | Y | Codigo da Multi-Empresa. |
| 9 | CD_FORMA_PGTO_REMESSA | NUMBER | Y | Codigo da Forma de Pagamento da Remessa do Arquivo Eletronico. |
| 10 | DT_PAGAMENTO | DATE | Y | Data de Pagamento que Todas as Contas a Pagar Associadas ao Lote Ir?o Assumir |
| 11 | CD_CONVENIO_BANCARIO | NUMBER | Y | Codigo do Convenio Bancario associado ao Lote de Remessa |
| 12 | TP_COD_BARRA | VARCHAR2 | Y | Tipo codigo de barra cobranca ou concessionaria |
| 13 | TP_REMESSA | VARCHAR2 | Y | Tipo do lote da remessa, se e pagamento ou recebimento. |
| 14 | TP_COD_COBRANCA | VARCHAR2 | Y | Tipo de cobranca do lote quando for de contas a receber |
| 15 | SN_AGRUPA_BOLETO | VARCHAR2 | N | Indica se o lote é de agrupamento de boletos |
| 16 | TP_PIX | VARCHAR2 | Y | TIPO DE TRANSFERENCIA PIX |

---

## DBAMV.LOTE_REMESSA_LOG
> Tabela de Historicos do Lote de Remessa.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOTE_REMESSA_LOG | NUMBER | N | Codigo do Historico do Lote de Remessa. |
| 2 | DT_LOTE_REMESSA_LOG | DATE | N | Data do Historico do Lote de Remesa. |
| 3 | CD_LOTE_REMESSA | NUMBER | N | Codigo do Lote de Remessa. |
| 4 | CD_USUARIO | VARCHAR2 | N | Codigo do Usuario. |
| 5 | TP_SITUACAO | VARCHAR2 | N | Situac?o Historica do Lote de Remessa. |
| 6 | NR_NIVEL_AUTORIZACAO | VARCHAR2 | N | Nivel de Autorizac?o Historico do Lote de Remessa. |

---

## DBAMV.LOTE_REM_ITCON_PAG
> Tabela de Contas a Pagar Associadas ao Lote de Remessa.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOTE_REM_ITCON_PAG | NUMBER | N | Codigo da Associac?o de Contas a Pagar ao Lote de Remessa. |
| 2 | CD_LOTE_REMESSA | NUMBER | N | Codigo do Lote de Remessa. |
| 3 | CD_ITCON_PAG | NUMBER | N | Codigo da Parcela do Contas a Pagar. |
| 4 | DS_MENSAGEM | VARCHAR2 | Y | Mensagem para Ser Utilizada nos Arquivos de Remessa. |
| 5 | SN_REJEITADA | VARCHAR2 | N | Indica se Houve Rejeic?o da Conta a Pagar do Lote. |
| 6 | VL_TOTAL_DESCONTO | NUMBER | N | Valor Total dos Descontos Lancados. |
| 7 | VL_TOTAL_ACRESCIMO | NUMBER | N | Valor Total dos Acrescimos Lancados. |
| 8 | CD_ARQUIVO_RETORNO_PGTO | NUMBER | Y | Codigo do Arquivo de Retorno de Pagamento. |
| 9 | CD_BANCO | NUMBER | Y | Codigo do Banco associado ao Pagamento do Fornecedor |
| 10 | CD_AGENCIA | VARCHAR2 | Y | Codigo da Agencia bancaria associada ao Pagamento do Fornecedor |
| 11 | DS_AGENCIA | VARCHAR2 | Y | Descric?o da Agencia bancaria associada ao Pagamento do Fornecedor |
| 12 | NR_CONTA | VARCHAR2 | Y | Numero da Conta Corrente associada ao Pagamento do Fornecedor |
| 13 | DS_CHAVE_PIX_FORN | VARCHAR2 | Y |  |

---

## DBAMV.LOTE_REM_ITCON_REC
> Tabela de lotes de remessa de cobranca

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOTE_REM_ITCON_REC | NUMBER | N | Codigo da Associac?o de Contas a Receber ao Lote de Remessa |
| 2 | CD_LOTE_REMESSA | NUMBER | N | Codigo do Lote de Remessa |
| 3 | CD_ITCON_REC | NUMBER | N | Codigo da Parcela do Contas a Receber |
| 4 | DS_MENSAGEM | VARCHAR2 | Y | Mensagem para Ser Utilizada nos Arquivos de Remessa |
| 5 | SN_REJEITADA | VARCHAR2 | N | Indica se Houve Rejeic?o da Conta a Receber do Lote. |
| 6 | VL_TOTAL_DESCONTO | NUMBER | Y | Valor Total dos Descontos Lancados |
| 7 | VL_TOTAL_ACRESCIMO | NUMBER | Y | Valor Total dos Acrescimos Lancados. |
| 8 | CD_ARQUIVO_RETORNO_PGTO | NUMBER | Y | Codigo do Arquivo de Retorno de Recebimento |
| 9 | CD_BANCO | NUMBER | Y | Codigo do Banco associado ao Recebimento do Cliente |
| 10 | CD_AGENCIA | VARCHAR2 | Y | Codigo da Agencia bancaria associada ao Recebimento do Cliente |
| 11 | DS_AGENCIA | VARCHAR2 | Y | Descric?o da Agencia bancaria associada ao Recebimento do Cliente |
| 12 | NR_CONTA | VARCHAR2 | Y | Numero da Conta Corrente associada ao Recebimento do Cliente |
| 13 | VL_TOTAL_RECEBIDO | NUMBER | Y | Valor Recebido da parcela no Arquivo de Retorno |
| 14 | VL_TARIFA_BANCARIA | NUMBER | Y | Valor cobrado referente a tarifa bancaria da parcela no Arquivo de Retorno |

---

## DBAMV.LOTE_TRABALHO
> Tabela de Lote de Trabalho

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOTE_TRABALHO | NUMBER | N | Codigo do lote de trabalho |
| 2 | CD_USUARIO | VARCHAR2 | N | Codigo do usuario criador do lote |
| 3 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da multi empresa |

---

## DBAMV.MOV_MVTO_ESTOQUE
> tabela para movimentação de estoque

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MOV_MVTO_ESTOQUE | NUMBER | N | Chave primaria da tabela |
| 2 | CD_MVTO_ESTOQUE | NUMBER | N | Codigo do movimento de estoque |
| 3 | CD_ESTOQUE | NUMBER | N | Codigo do estoque |
| 4 | CD_SETOR | NUMBER | Y | Codigo do setor |
| 5 | DT_HR_MVTO_ESTOQUE | DATE | N | Data e Hora do movimento de estoque |
| 6 | TP_MVTO_ESTOQUE | VARCHAR2 | N | Tipo do movimento de estoque |
| 7 | CD_PRODUTO | NUMBER | N | Codigo do produto |
| 8 | TP_CREDITO_DEBITO | VARCHAR2 | N | Tipo de movimento C=Credito, D=Debito |
| 9 | QT_MOVIMENTACAO | NUMBER | N | Quantidade movimentada do produto |

---

## DBAMV.MVTO_AJUSTE_CONTABIL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MVTO_AJUSTE_CONTABIL | NUMBER | N |  |
| 2 | CD_ESTOQUE | NUMBER | N |  |
| 3 | DH_MVTO_AJUSTE_CONTABIL | DATE | Y |  |
| 4 | CD_USUARIO | VARCHAR2 | Y |  |
| 5 | TP_AJUSTE | VARCHAR2 | Y | Informa o tipo do ajuste se esta relacionado a uma entrada que foi digitado o valro errado ou aju... |

---

## DBAMV.MVTO_CME

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MVTO_CME | NUMBER | N |  |
| 2 | CD_USUARIO_INC | VARCHAR2 | N |  |
| 3 | DT_INC_USUARIO | DATE | Y |  |
| 4 | CD_SETOR_PRINCIPAL | NUMBER | Y |  |
| 5 | DS_OBSERVACAO | VARCHAR2 | Y | Observac?o adicional a movimentac?o no CME |
| 6 | DS_BARRAS_COLABORADOR | VARCHAR2 | Y | Codigo do usuario ou identificac?o do prestador que esta executando a movimentac?o. |
| 7 | CD_SETOR_ORIGEM | NUMBER | Y | Setor de Origem da entrada no Arsenal |
| 8 | CD_FORNECEDOR | NUMBER | Y | Fornecedor da entrada no Arsenal |
| 9 | DS_BARRAS_COLABORADOR_RET | VARCHAR2 | Y | Nome do usuario ou identificac?o do prestador que retirou do arsenal |
| 10 | CD_ATENDIMENTO | NUMBER | Y | Codigo do atendimento para onde esta sendo efetuada a saida do arsenal. |
| 11 | CD_AVISO_CIRURGIA | NUMBER | Y | Codigo do aviso cirurgia para o qual esta sendo efetuada a saida do arsenal. |
| 12 | CD_SETOR_RSP_ENT | NUMBER | Y | Setor responsável pela entrega do material |
| 13 | CD_COLABORADOR_RSP_ENT | VARCHAR2 | Y | Colaborador responsável pela entrega do material |
| 14 | CD_SOLICITACAO_CME | NUMBER | Y | Código da solicitação de esterilização. |
| 15 | TP_MVTO_CME | VARCHAR2 | Y | Identifica o tipo da movimentação do CME: "E" = Entrada, "S" = Saida, "D" = Devolução, "T" = Tran... |

---

## DBAMV.MVTO_CONTA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MVTO_CONTA | NUMBER | N |  |
| 2 | DT_ENTRADA | DATE | N |  |
| 3 | CD_SETOR_ORIGEM | NUMBER | N |  |
| 4 | CD_SETOR_DESTINO | NUMBER | N |  |
| 5 | CD_USUARIO | VARCHAR2 | N |  |
| 6 | SN_IMPRESSO | VARCHAR2 | Y |  |

---

## DBAMV.MVTO_ESTOQUE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MVTO_ESTOQUE | NUMBER | N |  |
| 2 | TP_MVTO_ESTOQUE | VARCHAR2 | N |  |
| 3 | CD_ESTOQUE | NUMBER | N |  |
| 4 | DT_MVTO_ESTOQUE | DATE | N |  |
| 5 | HR_MVTO_ESTOQUE | DATE | N |  |
| 6 | CD_ATENDIMENTO | NUMBER | Y |  |
| 7 | CD_UNID_INT | NUMBER | Y |  |
| 8 | CD_SETOR | NUMBER | Y |  |
| 9 | CD_DES_SAIDA | NUMBER | Y |  |
| 10 | CD_PRODUTO_MANIPULADO | NUMBER | Y |  |
| 11 | CD_UNI_PRO | NUMBER | Y |  |
| 12 | QT_PRODUZIDA | NUMBER | Y |  |
| 13 | DT_VALIDADE | DATE | Y |  |
| 14 | VL_ADICIONAL | NUMBER | Y |  |
| 15 | VL_TOTAL | NUMBER | Y |  |
| 16 | QT_PERDA | NUMBER | Y |  |
| 17 | CD_PRESTADOR | NUMBER | Y |  |
| 18 | CD_ESTOQUE_DESTINO | NUMBER | Y |  |
| 19 | TP_VENDA | VARCHAR2 | Y |  |
| 20 | CD_MOT_DEV | NUMBER | Y |  |
| 21 | CD_CUSTO_MEDIO_MESTRE | NUMBER | Y |  |
| 22 | SN_CODIGO_DE_BARRAS | VARCHAR2 | N |  |
| 23 | CD_CUSTO_MEDIO | NUMBER | Y |  |
| 24 | CD_MOT_BAI | NUMBER | Y |  |
| 25 | NR_DOCUMENTO | VARCHAR2 | Y |  |
| 26 | CD_SOLSAI_PRO | NUMBER | Y |  |
| 27 | SN_APLICACAO_DIRETA | VARCHAR2 | Y |  |
| 28 | CD_AVISO_CIRURGIA | NUMBER | Y |  |
| 29 | CD_ENT_PRO | NUMBER | Y |  |
| 30 | CD_USUARIO | VARCHAR2 | N |  |
| 31 | SN_CONSOLIDADA | VARCHAR2 | N |  |
| 32 | DT_PREVISTA_RECEBIMENTO | DATE | Y |  |
| 33 | CD_FORNECEDOR | NUMBER | Y |  |
| 34 | TP_CONVENIO_DA_CIRURGIA | VARCHAR2 | Y |  |
| 35 | DS_OBS_EMPRESTIMO | VARCHAR2 | Y |  |
| 36 | DT_IMPRESSAO | DATE | Y |  |
| 37 | DT_MVTO_ALT_DADOS_ORA_APP | DATE | Y |  |
| 38 | CD_ITPED_RX | NUMBER | Y |  |
| 39 | CD_OS | NUMBER | Y |  |
| 40 | CD_OPERADOR | NUMBER | Y |  |
| 41 | VL_PERCENTUAL_DESCONTO | NUMBER | Y |  |
| 42 | VL_DESCONTO | NUMBER | Y |  |
| 43 | CD_CON_REC | NUMBER | Y |  |
| 44 | CD_MVTO_ESTOQUE_DEV | NUMBER | Y |  |
| 45 | CD_CON_PAG | NUMBER | Y |  |
| 46 | DT_CONSUMO_INICIAL | DATE | Y |  |
| 47 | DT_CONSUMO_FINAL | DATE | Y |  |
| 48 | CD_KIT | NUMBER | Y |  |
| 49 | DSP_CD_BARRAS | VARCHAR2 | Y |  |
| 50 | CD_SEQ_INTEGRA | NUMBER | Y |  |
| 51 | DT_INTEGRA | DATE | Y |  |
| 52 | CD_TIP_DOC | NUMBER | Y | Tipo de Documento para realizar a transferencia entre empresas |
| 53 | CD_MULTI_EMPRESA | NUMBER | Y | Informac?o da empresa que esta sendo realizada a transferencia entre empresas |
| 54 | NR_SERIE | VARCHAR2 | Y | Numero de serie para realizar a transferencia entre empresas |
| 55 | CD_CFOP | NUMBER | Y | Codigo fiscal da operac?o |
| 56 | TP_RECEBIDO | VARCHAR2 | Y | Indica o tipo de mov. foi confirmanda. E - Empresa . M - Movimentacao |
| 57 | NM_RECEBIDO | VARCHAR2 | Y | Nome do usuario que comfirmou o recebimento da solicitac?o. |
| 58 | TP_RETROATIVO | VARCHAR2 | Y | Coluna para informar se a movimentac?o realizada foi retroativa ou n?o |
| 59 | DT_FATURAMENTO | DATE | Y | Coluna para informar a data do faturamento para colocar na conta do paciente |
| 60 | CD_BEM_TOMBAMENTO | NUMBER | Y | Codigo do bem equivalente ao produto. Relacionamento utilizado nos movimentos de tombamento de be... |
| 61 | CD_USUARIO_ENTREGA | VARCHAR2 | Y | Indicar o usuario responsavel que recebeu os produtos da farmacia ao setor solicitante |
| 62 | DT_ENTREGA | DATE | Y | Indicar a data que o usuario responsavel recebeu os produtos da farmacia ao setor solicitante |
| 63 | HR_ENTREGA | DATE | Y | Indicar a hora que o usuario responsavel recebeu os produtos da farmacia ao setor solicitante |
| 64 | CD_MVTO_FILHA | NUMBER | Y | Coluna para controle de transferencia automatica |
| 65 | CD_MVTO_CME | NUMBER | Y | Coluna referente ao movimento do CME |
| 66 | CD_MVTO_ESTOQUE_INTEGRA | NUMBER | Y | Codigo da movoimentac?o de estoque (de-para) |
| 67 | CD_MOVIMENTACAO | NUMBER | Y | Codigo da mavimentac?o de estoque vinculada a transferencia entre empresas. |
| 68 | NM_USUARIO_RECEBE | VARCHAR2 | Y | Nome do responsavel pelo recebimento. |
| 69 | DS_OBSERVACAO_RECEBE | VARCHAR2 | Y | Observac?es do recebimento. |
| 70 | TP_STATUS_CONFIRMACAO | VARCHAR2 | Y | Indica o status da confirmac?o da transferencia. |
| 71 | CD_MOT_SAISET_FORN | NUMBER | Y | Código do Motivo de Saída para Fornecedor |
| 72 | CD_PRESTADOR_RECEB | VARCHAR2 | Y |  |
| 73 | CD_LAVANDERIA | NUMBER | Y |  |
| 74 | CD_USU_CONTA_ROUPA | VARCHAR2 | Y |  |
| 75 | VL_PESO_TOTAL_ROUPA | NUMBER | Y |  |
| 76 | CD_SAIDA_DEVOLUCAO | NUMBER | Y | Código referente à movimentação criada ao realizar a saída dos produtos para setor. TP_MVTO_ESTOQ... |
| 77 | CD_ORDEM_PRODUCAO | NUMBER | Y | Código da ordem de produção |
| 78 | TP_STATUS_SPED_TERCEIROS | VARCHAR2 | Y | INDICA O STATUS DA ENTRADA DE PRODUTO PARA INTEGRAÇÃO COM O SISTEMA DE SPED DE TERCEIROS - E = EM... |
| 79 | DATA_STATUS_SPED_TERC | DATE | Y | DATA DA INSERÇÃO/MODIFICAÇÃO DO STATUS DA ENTRADA |
| 80 | HORA_STATUS_SPED_TERC | DATE | Y | HORA DA INSERÇÃO/MODIFICAÇÃO DO STATUS DA ENTRADA |
| 81 | CD_PRE_MED | NUMBER | Y | CODIGO DA PRESCRICAO |
| 82 | CD_PREPARACAO_LOTE | NUMBER | Y | CODIGO DA PREPARACAO DO LOTE |
| 83 | TP_FRETE | VARCHAR2 | Y | TIPO DO FRETE C = "CIF" OU F = "FOB". |
| 84 | VL_OUTROS | NUMBER | Y | Valor de outras despesas |
| 85 | VL_FRETE | NUMBER | Y | Valor de frete da venda |
| 86 | VL_SEGURO | NUMBER | Y | Valor do seguro da venda |
| 87 | CD_MVTO_ESTOQUE_MV2000 | NUMBER | Y | COLUNA PARA IDENTIFICAR QUE A MOVIMENTAÇÃO FOI ORIUNDA DO MV2000 VIA INTEGRAÇÃO |
| 88 | PROTOCOLO_NFE | VARCHAR2 | Y | Número de protocolo gerado pela SEFAZ quando emitir a NF-e de Simples Remessa |
| 89 | CHAVE_NFE | VARCHAR2 | Y | Chave gerada na MV para envio a SEFAZ |
| 90 | DT_AUTORIZACAO_NFE | DATE | Y | Data de autorização da NF-e de Simples Remessa gerada pela SEFAZ |
| 91 | CD_USUARIO_AUTORIZACAO_NFE | VARCHAR2 | Y | Usuário que gera a NF-e |
| 92 | CD_NUMERO_FORMULARIO_NFE | NUMBER | Y | Número atual do formulario utilizado para gerar a NF-e |
| 93 | CD_FORMULARIO_NFE | NUMBER | Y | Sequence do formulario utilizado para gerar a NF-e |
| 94 | DS_STATUS_NFE_CANCELAMENTO | VARCHAR2 | Y | Mensagem de retorno da Sefaz quando cancelar uma NF-e |
| 95 | DT_NFE_CANCELAMENTO | DATE | Y | Data de cancelamento da NF-e |
| 96 | CD_USUARIO_NFE_CANCELAMENTO | VARCHAR2 | Y | Usuário que gera a NF-e |
| 97 | PROTOCOLO_NFE_CANCELAMENTO | VARCHAR2 | Y | número de protocolo gerado pela SEFAZ quando cancelar a NF-e. |
| 98 | DS_STATUS_NFE | VARCHAR2 | Y | Mensagem de retorno da SEFAZ |
| 99 | TP_STATUS_NFE | VARCHAR2 | Y | Status da integração da NF-e Simples Remessa. "A"-aguardando , "E"-emitida , "C"-cancelada , "R"-... |
| 100 | CD_CANCELA_EMISSAO_BLOQUEADO | VARCHAR2 | Y |  |
| 101 | CD_SESSIONID_CANCELA_BLOQUEADO | NUMBER | Y |  |
| 102 | CD_SESSIONID_EMISSAO_BLOQUEADO | NUMBER | Y | Código da sessão do usuário que bloqueia a transferência no processo de cancelamento de NF-e |
| 103 | CD_USUARIO_EMISSAO_BLOQUEADO | VARCHAR2 | Y | Usuário que executou o bloqueio da transferência para a cancelamento de NF-e |
| 104 | DT_EMISSAO_BLOQUEADO | DATE | Y | Data de bloqueio da transferência no processo de cancelamento de NF-e |
| 105 | SN_EMISSAO_BLOQUEADO | VARCHAR2 | N | Indica se a movimentação de transferência esta bloqueada no processo de cancelamento da NF-e |
| 106 | CD_DECLARACAO_IMPORTACAO | NUMBER | Y | CÓDIGO REFERENTE A DECLARACAO DE IMPORTAÇÃO DA ENTRADA DE PRODUTOS |
| 107 | CD_TIP_DEV_FISCAL | NUMBER | Y | CÓDIGO DA DEVOLUÇÃO FISCAL |
| 108 | CD_MODELO_ENTRADA | VARCHAR2 | Y | código do modelo de documento fiscal |
| 109 | SN_FILA_ESPERA | VARCHAR2 | N | Verifica se a movimentação está ou não na fila de espera da geração da nfe de simples remessa |
| 110 | CD_CONT_NF_SIMPLES_REMESSA | NUMBER | Y | Código da contingencia |
| 111 | CD_MAPA_PREPARO | NUMBER | Y | Código identificador do preparo. Usado no novo processo de preparo de doses |

---

## DBAMV.MVTO_ESTOQUE_CONCLUSAO
> TABELA DE INFORMATIVO DE CONCLUSÃO DAS MOVIMENTAÇÕES DE ESTOQUE, DEVOLUÇÃO E SAIDAS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MVTO_ESTOQUE | NUMBER | N | CÓDIGO DA MOVIMENTAÇÃO |
| 2 | DT_CONCLUSAO_ENTRADA | DATE | Y | DATA DA CONCLUSÃO DA MOVIMENTAÇÃO |
| 3 | CD_USUARIO | VARCHAR2 | Y | CÓDIGO DO USUÁRIO RESPONSÁVEL PELO FECHAMENTO |
| 4 | CD_SEQ_INTEGRA | NUMBER | Y | CÓDIGO SEQUENCIA DA INTEGRAÇÃO |
| 5 | DT_INTEGRA | DATE | Y | DATA QUE O REGISTRO FOI INTEGRADO |

---

## DBAMV.MVTO_ESTOQUE_NFE
> TABELA DE MOVIMENTAÇÃO DE ESTOQUE COM DADOS DA NF-E

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MVTO_ESTOQUE | NUMBER | N |  |
| 2 | TP_MVTO_ESTOQUE | VARCHAR2 | N |  |
| 3 | CD_ESTOQUE | NUMBER | N |  |
| 4 | DT_MVTO_ESTOQUE | DATE | N |  |
| 5 | HR_MVTO_ESTOQUE | DATE | N |  |
| 6 | CD_ATENDIMENTO | NUMBER | Y |  |
| 7 | CD_UNID_INT | NUMBER | Y |  |
| 8 | CD_SETOR | NUMBER | Y |  |
| 9 | CD_DES_SAIDA | NUMBER | Y |  |
| 10 | CD_PRODUTO_MANIPULADO | NUMBER | Y |  |
| 11 | CD_UNI_PRO | NUMBER | Y |  |
| 12 | QT_PRODUZIDA | NUMBER | Y |  |
| 13 | DT_VALIDADE | DATE | Y |  |
| 14 | VL_ADICIONAL | NUMBER | Y |  |
| 15 | VL_TOTAL | NUMBER | Y |  |
| 16 | QT_PERDA | NUMBER | Y |  |
| 17 | CD_PRESTADOR | NUMBER | Y |  |
| 18 | CD_ESTOQUE_DESTINO | NUMBER | Y |  |
| 19 | TP_VENDA | VARCHAR2 | Y |  |
| 20 | CD_MOT_DEV | NUMBER | Y |  |
| 21 | CD_CUSTO_MEDIO_MESTRE | NUMBER | Y |  |
| 22 | SN_CODIGO_DE_BARRAS | VARCHAR2 | N |  |
| 23 | CD_CUSTO_MEDIO | NUMBER | Y |  |
| 24 | CD_MOT_BAI | NUMBER | Y |  |
| 25 | NR_DOCUMENTO | VARCHAR2 | Y |  |
| 26 | CD_SOLSAI_PRO | NUMBER | Y |  |
| 27 | SN_APLICACAO_DIRETA | VARCHAR2 | Y |  |
| 28 | CD_AVISO_CIRURGIA | NUMBER | Y |  |
| 29 | CD_ENT_PRO | NUMBER | Y |  |
| 30 | CD_USUARIO | VARCHAR2 | N |  |
| 31 | SN_CONSOLIDADA | VARCHAR2 | N |  |
| 32 | DT_PREVISTA_RECEBIMENTO | DATE | Y |  |
| 33 | CD_FORNECEDOR | NUMBER | Y |  |
| 34 | TP_CONVENIO_DA_CIRURGIA | VARCHAR2 | Y |  |
| 35 | DS_OBS_EMPRESTIMO | VARCHAR2 | Y |  |
| 36 | DT_IMPRESSAO | DATE | Y |  |
| 37 | DT_MVTO_ALT_DADOS_ORA_APP | DATE | Y |  |
| 38 | CD_ITPED_RX | NUMBER | Y |  |
| 39 | CD_OS | NUMBER | Y |  |
| 40 | CD_OPERADOR | NUMBER | Y |  |
| 41 | VL_PERCENTUAL_DESCONTO | NUMBER | Y |  |
| 42 | VL_DESCONTO | NUMBER | Y |  |
| 43 | CD_CON_REC | NUMBER | Y |  |
| 44 | CD_MVTO_ESTOQUE_DEV | NUMBER | Y |  |
| 45 | CD_CON_PAG | NUMBER | Y |  |
| 46 | DT_CONSUMO_INICIAL | DATE | Y |  |
| 47 | DT_CONSUMO_FINAL | DATE | Y |  |
| 48 | CD_KIT | NUMBER | Y |  |
| 49 | DSP_CD_BARRAS | VARCHAR2 | Y |  |
| 50 | CD_SEQ_INTEGRA | NUMBER | Y |  |
| 51 | DT_INTEGRA | DATE | Y |  |
| 52 | CD_TIP_DOC | NUMBER | Y | TIPO DE DOCUMENTO PARA REALIZAR A TRANSFERENCIA ENTRE EMPRESAS |
| 53 | CD_MULTI_EMPRESA | NUMBER | Y | INFORMAÇÃO DA EMPRESA QUE ESTÁ SENDO REALIZADA A TRANSFERENCIA ENTRE EMPRESAS |
| 54 | NR_SERIE | VARCHAR2 | Y | NUMERO DE SERIE PARA REALIZAR A TRANSFERENCIA ENTRE EMPRESAS |
| 55 | CD_CFOP | NUMBER | Y | CÓDIGO FISCAL DA OPERAÇÃO |
| 56 | NM_RECEBIDO | VARCHAR2 | Y | NOME DO USUÁRIO QUE COMFIRMOU O RECEBIMENTO DA SOLICITAÇÃO. |
| 57 | TP_RECEBIDO | VARCHAR2 | Y | INDICA O TIPO DE MOV. FOI CONFIRMANDA. E - EMPRESA . M - MOVIMENTACAO |
| 58 | TP_RETROATIVO | VARCHAR2 | Y | COLUNA PARA INFORMAR SE A MOVIMENTAÇÃO REALIZADA FOI RETROATIVA OU NÃO |
| 59 | DT_FATURAMENTO | DATE | Y | COLUNA PARA INFORMAR A DATA DO FATURAMENTO PARA COLOCAR NA CONTA DO PACIENTE |
| 60 | CD_BEM_TOMBAMENTO | NUMBER | Y | CÓDIGO DO BEM EQUIVALENTE AO PRODUTO. RELACIONAMENTO UTILIZADO NOS MOVIMENTOS DE TOMBAMENTO DE BE... |
| 61 | CD_MVTO_FILHA | NUMBER | Y | COLUNA PARA CONTROLE DE TRANSFERÊNCIA AUTOMÁTICA |
| 62 | CD_USUARIO_ENTREGA | VARCHAR2 | Y | INDICAR O USUARIO RESPONSAVEL QUE RECEBEU OS PRODUTOS DA FARMACIA AO SETOR SOLICITANTE |
| 63 | DT_ENTREGA | DATE | Y | INDICAR A DATA QUE O USUARIO RESPONSAVEL RECEBEU OS PRODUTOS DA FARMACIA AO SETOR SOLICITANTE |
| 64 | HR_ENTREGA | DATE | Y | INDICAR A HORA QUE O USUARIO RESPONSAVEL RECEBEU OS PRODUTOS DA FARMACIA AO SETOR SOLICITANTE |
| 65 | CD_MVTO_CME | NUMBER | Y | COLUNA REFERENTE AO MOVIMENTO DO CME |
| 66 | CD_MVTO_ESTOQUE_INTEGRA | VARCHAR2 | Y | CÓDIGO DA MOVOIMENTAÇÃO DE ESTOQUE (DE-PARA) |
| 67 | CD_MOVIMENTACAO | NUMBER | Y | CÓDIGO DA MAVIMENTAÇÃO DE ESTOQUE VINCULADA A TRANSFERÊNCIA ENTRE EMPRESAS. |
| 68 | NM_USUARIO_RECEBE | VARCHAR2 | Y | NOME DO RESPONSÁVEL PELO RECEBIMENTO. |
| 69 | DS_OBSERVACAO_RECEBE | VARCHAR2 | Y | OBSERVAÇÕES DO RECEBIMENTO. |
| 70 | TP_STATUS_CONFIRMACAO | VARCHAR2 | Y | INDICA O STATUS DA CONFIRMACÃO DA TRANSFERENCIA. |
| 71 | CD_PRE_MED | NUMBER | Y | CÓDIGO DA PRESCRIÇÃO SE OS ITENS FORAM ATENDIDOS PELA PRESCRIÇÃO. |
| 72 | PROTOCOLO_NFE | VARCHAR2 | Y | NÚMERO DE PROTOCOLO GERADO PELA SEFAZ QUANDO EMITIR A NF-E DE SIMPLES REMESSA |
| 73 | DT_AUTORIZACAO_NFE | DATE | Y | DATA DE AUTORIZAÇÃO DA NF-E DE SIMPLES REMESSA GERADA PELA SEFAZ |
| 74 | CHAVE_NFE | VARCHAR2 | Y | CHAVE GERADA NA MV PARA ENVIO A SEFAZ |
| 75 | TP_STATUS_NFE | VARCHAR2 | Y | STATUS DA INTEGRAÇÃO DA NF-E SIMPLES REMESSA. "A"-AGUARDANDO , "E"-EMITIDA , "C"-CANCELADA , "R"-... |
| 76 | DS_STATUS_NFE | VARCHAR2 | Y | MENSAGEM DE RETORNO DA SEFAZ |
| 77 | PROTOCOLO_NFE_CANCELAMENTO | VARCHAR2 | Y | NÚMERO DE PROTOCOLO GERADO PELA SEFAZ QUANDO CANCELAR A NF-E. |
| 78 | DS_STATUS_NFE_CANCELAMENTO | VARCHAR2 | Y | MENSAGEM DE RETORNO DA SEFAZ QUANDO CANCELAR UMA NF-E |
| 79 | CD_USUARIO_AUTORIZACAO_NFE | VARCHAR2 | Y | USUÁRIO QUE GERA A NF-E |
| 80 | DT_NFE_CANCELAMENTO | DATE | Y | DATA DE CANCELAMENTO DA NF-E |
| 81 | CD_USUARIO_NFE_CANCELAMENTO | VARCHAR2 | Y | USUÁRIO QUE GERA A NF-E |
| 82 | CD_FORMULARIO_NFE | NUMBER | Y | SEQUENCE DO FORMULARIO UTILIZADO PARA GERAR A NF-E |
| 83 | CD_NUMERO_FORMULARIO_NFE | NUMBER | Y | NÚMERO ATUAL DO FORMULARIO UTILIZADO PARA GERAR A NF-E |
| 84 | CD_MVTO_DUPLICADO_NFE | NUMBER | Y | CÓDIGO NA MOVIMENTAÇÃO DE ESTOQUE GERADA A PARTIR DA DUPLICAÇÃO DE UMA MOVIMENTAÇÃO COM NF-E CANC... |
| 85 | CD_MOTIVO_CANCELA_NFSR | NUMBER | Y | CÓDIGO DO MOTIVO DE CANCELAMENTO DA NF-E SIMPLES REMESSA |
| 86 | TP_RETORNO_SAPIENS_EMISSAO | VARCHAR2 | Y | TIPO DE RETORNO NA INTEGRAÇÃO DA EMISSÃO DE NF-E COM SAPIENS |
| 87 | MSG_RETORNO_SAPIENS_EMISSAO | VARCHAR2 | Y | MENSAGEM DE RETORNO NA INTEGRAÇÃO DA EMISSÃO DE NF-E COM SAPIENS |
| 88 | DT_RETORNO_SAPIENS_EMISSAO | DATE | Y | DATA DA INTEGRAÇÃO DA EMISSÃO DE NF-E COM SAPIENS |
| 89 | CD_USUARIO_SAPIENS_EMISSAO | VARCHAR2 | Y | USUÁRIO DA INTEGRAÇÃO DA EMISSÃO DE NF-E COM SAPIENS |
| 90 | TP_RETORNO_SAPIENS_CANCELA | VARCHAR2 | Y | TIPO DE RETORNO NA INTEGRAÇÃO DO CANCELAMENTO DE NF-E COM SAPIENS |
| 91 | MSG_RETORNO_SAPIENS_CANCELA | VARCHAR2 | Y | MENSAGEM DE RETORNO NA INTEGRAÇÃO DO CANCELAMENTO DE NF-E COM SAPIENS |
| 92 | DT_RETORNO_SAPIENS_CANCELA | DATE | Y | DATA DA INTEGRAÇÃO DO CANCELAMENTO DE NF-E COM SAPIENS |
| 93 | CD_USUARIO_SAPIENS_CANCELA | VARCHAR2 | Y | USUÁRIO DA INTEGRAÇÃO DO CANCELAMENTO DE NF-E COM SAPIENS |
| 94 | CD_CONT_NF_SIMPLES_REMESSA | NUMBER | Y | Código da contingencia |

---

## DBAMV.MVTO_ESTOQUE_ONC

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MVTO_ONC | NUMBER | N | CHAVE DA TABELA |
| 2 | CD_PRE_MED | NUMBER | N | CODIGO DA PRESCRICAO |
| 3 | CD_ESTOQUE | NUMBER | N | CODIGO DO ESTOQUE MOVIMENTADO |
| 4 | DT_MVTO_ESTOQUE | DATE | N | DATA DA MOVIMENTACAO DO PREPARO |
| 5 | HR_MVTO_ESTOQUE | DATE | N | HORA DA MOVIMENTACAO DO PREPARO |
| 6 | CD_ATENDIMENTO | NUMBER | Y | CODIGO DE ATENDIMENTO |
| 7 | CD_UNID_INT | NUMBER | Y | CODIGO DA UNIDADE DE INTERNACAO |
| 8 | CD_SETOR | NUMBER | Y | CODIGO DO SETOR |
| 9 | CD_USUARIO | VARCHAR2 | Y | CODIGO DO USUARIO QUE LANCOU |
| 10 | CD_MULTI_EMPRESA | NUMBER | Y | CODIGO DA EMPRESA |
| 11 | CD_ITPRE_MED | NUMBER | N | ITEM DA PRESCRICAO |
| 12 | CD_PRODUTO | NUMBER | N | CODIGO DO PRODUTO |
| 13 | CD_UNI_PRO | NUMBER | Y | CODIGO DA UNIDADE DE MEDIDA DO PRODUTO |
| 14 | QT_MOVIMENTACAO | NUMBER | Y | QUANTIDADE MOVIMENTADA PARA A DOSE |
| 15 | CD_LOTE | VARCHAR2 | Y | LOTE DO PRODUTO |
| 16 | DT_VALIDADE | DATE | Y | DATA DE VALIDADE DO PRODUTO |
| 17 | CD_TIP_PRESC | NUMBER | Y | TIPO DE PRESCRICAO |
| 18 | DT_CONCLUSAO | DATE | Y | DATA DE CONCLUSAO DA DOSE |

---

## DBAMV.MVTO_ESTOQUE_TMP
> TABELA QUE GUARDARÁ MOVIMENTACOES DE ESTOQUE TEMPORARIAS.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MVTO_ESTOQUE | NUMBER | N | CODIGO DA MOVIMENTACAO DO ESTOQUE |
| 2 | TP_MVTO_ESTOQUE | VARCHAR2 | N | TIPO DA MOVIMENTACAO DO ESTOQUE |
| 3 | SN_CODIGO_DE_BARRAS | VARCHAR2 | N | CODIGO DE BARRAS |
| 4 | CD_SOLSAI_PRO | NUMBER | Y | CODIGO DA SOLICITACAO DO ESTOQUE |
| 5 | CD_USUARIO | VARCHAR2 | N | CODIGO DO USUARIO |
| 6 | CD_ENT_PRO | NUMBER | Y | CODIGO DA ENTRADA DO PRODUTO |
| 7 | DT_MVTO_ALT_DADOS_ORA_APP | DATE | Y | DATA DA MOVIMENTACAO DE ALTERACAO DOS DADOS |
| 8 | CD_AVISO_CIRURGIA | NUMBER | Y | CODIGO DO AVISO DE CIRURGIA |
| 9 | TP_CONVENIO_DA_CIRURGIA | VARCHAR2 | N | CONVENIO DA CIRURGIA |
| 10 | CD_ESTOQUE | NUMBER | N | CODIGO DO ESTOQUE |
| 11 | CD_ATENDIMENTO | NUMBER | Y | CODIGO DO ATENDIMENTO |
| 12 | CD_UNID_INT | NUMBER | Y | CODIGO DA UNIDADE DE INTERNACAO |
| 13 | CD_SETOR | NUMBER | Y | CODIGO DO SETOR |
| 14 | CD_MOT_DEV | NUMBER | Y | CODIGO DA MOVIMENTACAO DE DEVOLUCAO |
| 15 | NR_DOCUMENTO | VARCHAR2 | Y | NUMERO DO DOCUMENTO |
| 16 | TP_RETROATIVO | VARCHAR2 | N | INDICA SE A MOVIMENTACAO FOI RETROATIVA OU NAO |
| 17 | DT_MVTO_ESTOQUE | DATE | N | DATA DA MOVIMENTACAO DO ESTOQUE |
| 18 | HR_MVTO_ESTOQUE | DATE | N | HORA DA MOVIMENTACAO DO ESTOQUE |
| 19 | CD_PRESTADOR | NUMBER | Y | CODIGO DO PRESTADOR |
| 20 | CD_ESTOQUE_AUT | NUMBER | Y | CODIGO DO ESTOQUE AUTOMATICO |

---

## DBAMV.MVTO_FINANCEIRO
> Movimento Financeiro Centralizado

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MVTO_FINANC | NUMBER | N | Codigo Sequencial do Movimento |
| 2 | TP_REGISTRO | VARCHAR2 | N | Tipo de Registro |
| 3 | TP_MOVIMENTO | VARCHAR2 | N | Tipo de Movimento |
| 4 | TP_LANCAMENTO | VARCHAR2 | N | Tipo de Lancamento |
| 5 | CD_EMPRESA | NUMBER | N | Codigo da Empresa |
| 6 | CD_EXERCICIO | VARCHAR2 | N | Codigo do Exercicio Contabil |
| 7 | CD_PROCESSO | VARCHAR2 | N | Codigo do Processo |
| 8 | CD_CONTA | NUMBER | Y | Codigo da Conta Financeira |
| 9 | CD_PARCELA | NUMBER | Y | Codigo da Parcela da Conta Financeira |
| 10 | CD_BAIXA | NUMBER | Y | cd_baixa |
| 11 | CD_PESSOA | NUMBER | Y | cd_pessoa |
| 12 | NM_PESSOA | VARCHAR2 | Y | nm_pessoa |
| 13 | TP_PORTADOR | VARCHAR2 | Y | tp_portador |
| 14 | CD_PORTADOR | VARCHAR2 | Y | cd_portador |
| 15 | CD_MOVIMENTO | VARCHAR2 | Y | cd_movimento |
| 16 | DS_MOVIMENTO | VARCHAR2 | Y | ds_movimento |
| 17 | DT_MOVIMENTO | DATE | N | dt_movimento |
| 18 | VL_MOVIMENTO | NUMBER | N | vl_movimento |
| 19 | VL_DESCONTO | NUMBER | Y | vl_desconto |
| 20 | VL_ACRESCIMO | NUMBER | Y | vl_acrescimo |
| 21 | VL_IMPOSTO | NUMBER | Y | vl_imposto |
| 22 | VL_VARIACAO | NUMBER | Y | vl_variacao |
| 23 | CD_MOEDA | VARCHAR2 | N | cd_moeda |
| 24 | QT_MOEDA | NUMBER | N | qt_moeda |
| 25 | VL_CAMBIO | NUMBER | N | vl_cambio |
| 26 | TP_ADIANTAMENTO | VARCHAR2 | Y | tp_adiantamento |
| 27 | CD_DEVOLUCAO | VARCHAR2 | Y | cd_devolucao |
| 28 | CD_FECHAMENTO | NUMBER | N | Codigo do Fechamentio |
| 29 | CD_REDUZIDO | NUMBER | Y | Codigo Reduzido da Conta Contabil |

---

## DBAMV.MVTO_GASES

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MVTO_GASES | NUMBER | N |  |
| 2 | CD_ATENDIMENTO | NUMBER | N |  |
| 3 | CD_PRO_FAT | VARCHAR2 | N |  |
| 4 | CD_SETOR | NUMBER | N |  |
| 5 | DT_LIGA | DATE | Y |  |
| 6 | HR_LIGA | DATE | Y |  |
| 7 | DT_DESLIGA | DATE | Y |  |
| 8 | HR_DESLIGA | DATE | Y |  |
| 9 | SN_FATURADO | VARCHAR2 | Y |  |
| 10 | QT_HORAS | NUMBER | Y |  |
| 11 | SN_ALTERADO | VARCHAR2 | Y |  |
| 12 | CD_MVTO_GASES_PAI | NUMBER | Y |  |
| 13 | CD_TIP_PRESC | NUMBER | Y | Codigo do item de prescricao |

---

## DBAMV.MVTO_KIT_PRODUZIDO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MVTO_ESTOQUE | NUMBER | N |  |
| 2 | TP_MVTO_ESTOQUE | VARCHAR2 | N |  |
| 3 | CD_ESTOQUE | NUMBER | N |  |
| 4 | DT_MVTO_ESTOQUE | DATE | N |  |
| 5 | HR_MVTO_ESTOQUE | DATE | N |  |
| 6 | CD_ATENDIMENTO | NUMBER | Y |  |
| 7 | CD_UNID_INT | NUMBER | Y |  |
| 8 | CD_SETOR | NUMBER | Y |  |
| 9 | CD_DES_SAIDA | NUMBER | Y |  |
| 10 | CD_PRODUTO_MANIPULADO | NUMBER | Y |  |
| 11 | CD_UNI_PRO | NUMBER | Y |  |
| 12 | QT_PRODUZIDA | NUMBER | Y |  |
| 13 | DT_VALIDADE | DATE | Y |  |
| 14 | VL_ADICIONAL | NUMBER | Y |  |
| 15 | VL_TOTAL | NUMBER | Y |  |
| 16 | QT_PERDA | NUMBER | Y |  |
| 17 | CD_PRESTADOR | NUMBER | Y |  |
| 18 | CD_ESTOQUE_DESTINO | NUMBER | Y |  |
| 19 | TP_VENDA | VARCHAR2 | Y |  |
| 20 | CD_MOT_DEV | NUMBER | Y |  |
| 21 | CD_CUSTO_MEDIO_MESTRE | NUMBER | Y |  |
| 22 | SN_CODIGO_DE_BARRAS | VARCHAR2 | N |  |
| 23 | CD_CUSTO_MEDIO | NUMBER | Y |  |
| 24 | CD_MOT_BAI | NUMBER | Y |  |
| 25 | NR_DOCUMENTO | VARCHAR2 | Y |  |
| 26 | CD_SOLSAI_PRO | NUMBER | Y |  |
| 27 | SN_APLICACAO_DIRETA | VARCHAR2 | Y |  |
| 28 | CD_AVISO_CIRURGIA | NUMBER | Y |  |
| 29 | CD_ENT_PRO | NUMBER | Y |  |
| 30 | CD_USUARIO | VARCHAR2 | N |  |
| 31 | SN_CONSOLIDADA | VARCHAR2 | Y |  |
| 32 | DT_PREVISTA_RECEBIMENTO | DATE | Y |  |
| 33 | CD_FORNECEDOR | NUMBER | Y |  |
| 34 | TP_CONVENIO_DA_CIRURGIA | VARCHAR2 | Y |  |
| 35 | DS_OBS_EMPRESTIMO | VARCHAR2 | Y |  |
| 36 | DT_IMPRESSAO | DATE | Y |  |
| 37 | SN_CONFIRMADO_AUTORIZACAO | VARCHAR2 | Y |  |
| 38 | CD_OS | NUMBER | Y |  |
| 39 | DT_MVTO_ALT_DADOS_ORA_APP | DATE | Y |  |
| 40 | CD_ITPED_RX | NUMBER | Y |  |
| 41 | DT_GRAVACAO | DATE | Y |  |
| 42 | CD_OPERADOR | NUMBER | Y |  |
| 43 | VL_PERCENTUAL_DESCONTO | NUMBER | Y |  |
| 44 | VL_DESCONTO | NUMBER | Y |  |
| 45 | CD_CON_REC | NUMBER | Y |  |
| 46 | CD_CON_PAG | NUMBER | Y |  |
| 47 | DT_CONSUMO_INICIAL | DATE | Y |  |
| 48 | DT_CONSUMO_FINAL | DATE | Y |  |
| 49 | CD_KIT | NUMBER | Y |  |
| 50 | CD_MVTO_ESTOQUE_DEV | NUMBER | Y |  |
| 51 | DSP_CD_BARRAS | VARCHAR2 | Y |  |
| 52 | CD_MVTO_ESTOQUE_TEM | NUMBER | Y | Codigo da Movimentac?o que originou a copia. |
| 53 | SN_KIT_ARMAZENADO | VARCHAR2 | N | Indica se o Kit Produzido esta Armazenado no estoque "Sim" ou "N?o" |
| 54 | CD_SEQ_INTEGRA | NUMBER | Y | Codigo do registro na tabela de integrac?o |
| 55 | DT_INTEGRA | DATE | Y | Data do registro na tabela de integrac?o |
| 56 | CD_FORMULA | NUMBER | Y |  |
| 57 | CD_BARRAS_DEV | VARCHAR2 | Y | Coluna para armazenar o código de barras do reaproveitamento |

---

## DBAMV.MVTO_PACIENTE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MVTO_ESTOQUE | NUMBER | N |  |
| 2 | CD_PRESTADOR | NUMBER | Y |  |
| 3 | NM_PACIENTE | VARCHAR2 | N |  |
| 4 | NM_MAE | VARCHAR2 | Y |  |
| 5 | DT_NASCIMENTO | DATE | Y |  |
| 6 | CD_CAD_SAME | NUMBER | Y | Codigo do SAME referente a matricula do Paciente |
| 7 | NR_MATRICULA_SAME | NUMBER | Y | Matricula do SAME referente a matricula do Paciente |

---

## DBAMV.MVTO_VISITA_ACOM
> Tabela de registro das movimentacoes de entrada e saida dos visitantes e acompanhantes do Portaria

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ID_VISITA_ACOM | NUMBER | N | chave primaria da movimentacao |
| 2 | CD_CARTAO_CRACHA | NUMBER | N | codigo do cracha quando configurado pra usar cracha ou sequencia quando configurado pra usar etiq... |
| 3 | ID_ACOM_VISIT | VARCHAR2 | N | (V) para registro de visitante e (A) para registro de acompanhante |
| 4 | CD_ATENDIMENTO | NUMBER | Y | codigo do atendimento do paciente que recebe a visita |
| 5 | DT_ENTRADA | DATE | Y | data de entrada do visitante ou acompanhante |
| 6 | HR_ENTRADA | DATE | Y | hora de entrada do visitante ou acompanhante |
| 7 | CD_USUARIO_ENTRA | VARCHAR2 | N | codigo do usuario logado que registrou a entrada |
| 8 | DT_SAIDA | DATE | Y | data de saida do visitante ou acompanhante |
| 9 | HR_SAIDA | VARCHAR2 | Y | hora de saida do visitante ou acompanhante |
| 10 | CD_USUARIO_SAIDA | VARCHAR2 | Y | codigo do usuario logado que registrou a saida |
| 11 | CD_TIP_PAREN | NUMBER | Y | codigo (chave estrangeira da tabela tip_paren) do grau de parentesdo do visitante ou acompanhante |
| 12 | NM_AUTORI | VARCHAR2 | Y | nome do autorizador da entrada do visitante ou acompanhante |
| 13 | NR_RAMAL | NUMBER | Y | numero do ramal do autorizador da entrada do visitante ou acompanhante |
| 14 | CD_PESSOA | NUMBER | Y | codigo (chave estrangeira da tabela pt_pessoa) do visitante ou acompanhante |
| 15 | CD_PORTARIA_ENTRADA | NUMBER | Y | codigo da portaria de entrada |
| 16 | CD_PORTARIA_SAIDA | NUMBER | Y | codigo da portaria de saida |
| 17 | CD_TP_IDENTIFICACAO | CHAR | Y | como o visitante acompanhante vai ser identificado (E) etiqueta (C) cracha |
| 18 | CD_MULTI_EMPRESA | NUMBER | N | codigo da empresa onde foi registrado a movimentacao de entrada |
| 19 | DS_OBSERVACOES | VARCHAR2 | Y | campo para reigistrar oboservacoes referente a entrada |
| 20 | TEMPO_PERMANENCIA | VARCHAR2 | Y | tempo de permanencia da entrada |
| 21 | CD_IT_AGENDA_CENTRAL | NUMBER | Y | Coluna para armazenar o código da item da agenda central |
| 22 | CD_IT_MARCACAO | NUMBER | Y | Coluna para armazenar o código da item de marcação |

---

## DBAMV.PRAZO_DISPONIBILIDADE_ESTOQUE
> tabela para armazenar o prazo em hora para disponibilidade de produtos no estoque

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRAZO_DISPONIBILIDADE_EST | NUMBER | N | codigo referente a chave primaria da tabela |
| 2 | DT_VIGENCIA | DATE | N | data de vigencia do prazo cadastrado |
| 3 | NR_PRAZO_HORA | NUMBER | N | prazo de disponibilidade de produto no estoque |

---

## DBAMV.PRODUTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRODUTO | NUMBER | N | Codigo do produto |
| 2 | CD_SUB_CLA | NUMBER | N |  |
| 3 | CD_CLASSE | NUMBER | N |  |
| 4 | CD_ESPECIE | NUMBER | N |  |
| 5 | CD_PRODUTO_TEM | NUMBER | Y |  |
| 6 | DS_PRODUTO | VARCHAR2 | N | Descric?o do produto |
| 7 | DT_CADASTRO | DATE | N |  |
| 8 | TP_ATIVO | VARCHAR2 | N |  |
| 9 | QT_ESTOQUE_ATUAL | NUMBER | Y |  |
| 10 | DT_ULTIMA_ENTRADA | DATE | Y |  |
| 11 | SN_CONTROLE_VALIDADE | VARCHAR2 | Y |  |
| 12 | SN_PADRONIZADO | VARCHAR2 | N |  |
| 13 | SN_PSCOTROPICO | VARCHAR2 | Y |  |
| 14 | VL_CUSTO_MEDIO | NUMBER | Y |  |
| 15 | VL_MARGEM_LUCRO | NUMBER | Y |  |
| 16 | VL_PRECO_DE_VENDA | NUMBER | Y |  |
| 17 | VL_TEMPO_DE_REPOSICAO | NUMBER | Y |  |
| 18 | SN_MESTRE | VARCHAR2 | Y |  |
| 19 | SN_MOVIMENTACAO | VARCHAR2 | Y |  |
| 20 | HR_ULTIMA_ENTRADA | DATE | Y |  |
| 21 | SN_MEDICAMENTO | VARCHAR2 | N |  |
| 22 | TP_CLASSIFICACAO_XYZ | VARCHAR2 | Y |  |
| 23 | SN_BLOQUEIO_DE_COMPRA | VARCHAR2 | N |  |
| 24 | SN_FRACIONADO | VARCHAR2 | Y |  |
| 25 | CD_TIP_ATIV | NUMBER | Y |  |
| 26 | SN_IMPRIME_ETIQUETA | VARCHAR2 | Y |  |
| 27 | SN_LOTE | VARCHAR2 | N |  |
| 28 | CD_PRO_FAT | VARCHAR2 | Y |  |
| 29 | NR_ORDEM_PREFERENCIA | NUMBER | Y |  |
| 30 | VL_FATOR_PRO_FAT | NUMBER | Y |  |
| 31 | CD_DCB | VARCHAR2 | Y |  |
| 32 | CD_LISTA_CODIGO_MEDICAMENTO | VARCHAR2 | Y |  |
| 33 | VL_ULTIMA_ENTRADA | NUMBER | Y |  |
| 34 | CD_ULTIMO_FORNECEDOR | NUMBER | Y |  |
| 35 | TP_SEXO | VARCHAR2 | N |  |
| 36 | QT_ULTIMA_ENTRADA | NUMBER | Y |  |
| 37 | DS_PRODUTO_RESUMIDO | VARCHAR2 | Y | DESCRIÇÃO RESUMIDA DO PRODUTO |
| 38 | CD_SICAN | VARCHAR2 | Y |  |
| 39 | SN_KIT | VARCHAR2 | Y |  |
| 40 | VL_ULTIMA_CUSTO_REAL | NUMBER | Y |  |
| 41 | SN_CONSIGNADO | VARCHAR2 | N |  |
| 42 | CD_ITEM_RES | NUMBER | Y |  |
| 43 | SN_INVASIVO | VARCHAR2 | Y |  |
| 44 | CD_PRO_FAT_SUS | VARCHAR2 | Y |  |
| 45 | DS_ATRIBUTO1 | NUMBER | Y |  |
| 46 | CD_FORNECEDOR_PRINCIPAL | NUMBER | Y |  |
| 47 | TP_ATUALIZACAO_PRECO | VARCHAR2 | Y |  |
| 48 | VL_PERCENTUAL_VARIACAO | NUMBER | Y |  |
| 49 | VL_ULTIMA_COMPRA_IPI | NUMBER | Y |  |
| 50 | SN_ADMITIDO | VARCHAR2 | Y |  |
| 51 | TP_HORAS_ESTERELIZAR | NUMBER | Y |  |
| 52 | QT_CAIXA_CIRURGICA | NUMBER | Y |  |
| 53 | QT_INATIVA | NUMBER | Y |  |
| 54 | TP_CLASSIFICACAO_TRIBUTARIA | VARCHAR2 | Y |  |
| 55 | NR_ORDEM_IMPRESSAO | NUMBER | Y |  |
| 56 | CD_USUARIO_INC | VARCHAR2 | Y |  |
| 57 | DT_INC_USUARIO | DATE | Y |  |
| 58 | CD_USUARIO_ALT | VARCHAR2 | Y |  |
| 59 | DT_ALT_USUARIO | DATE | Y |  |
| 60 | TP_CX_CIRURGICA | VARCHAR2 | Y | Tipo da caixa cirurgica |
| 61 | NR_CRF_LABORATORIO | VARCHAR2 | Y | Codigo do conselho regional de farmacia do responsavel pelo produto no fabricante |
| 62 | TP_MENSAGEM_SUS | VARCHAR2 | Y | Trata o tipo de mensagem a exibir ao usuario no ato do atendimento da solicitac?o, especifico par... |
| 63 | CD_PRODUTO_INTEGRA | VARCHAR2 | Y |  |
| 64 | DT_INTEGRA | DATE | Y |  |
| 65 | CD_SEQ_INTEGRA | NUMBER | Y |  |
| 66 | TP_CARATER | VARCHAR2 | Y | Carater da droga(I-Irrigante ou V-Vesicante) |
| 67 | QT_CONCENTRACAO | NUMBER | Y | Concentrac?o (Dosagem) maxima da droga |
| 68 | CD_PRODUTO_TEM_INTEGRA | VARCHAR2 | Y | Codigo do produto mestre (de-para) |
| 69 | DT_VALIDADE_REGISTRO | DATE | Y | Informa a data do registro do produto no Org?o Regulador |
| 70 | CD_PROCEDIMENTO_SUS | VARCHAR2 | Y | Coluna para guardar o novo Codigo do Procedimento SUS |
| 71 | SN_OPME | VARCHAR2 | N | Indica se o produto e do tipo OPME (Orteses , Proteses , Medicamentos Especiais) |
| 72 | TP_CALCULO_MEDIA_PONDERADA | VARCHAR2 | N | Tipo de calculo do Custo Medio (Diario ou Mensal) |
| 73 | DS_COMERCIAL | VARCHAR2 | Y | Campo de descric?o comercial referente ao produto |
| 74 | DS_ESPECIFICACAO_DETALHADA | CLOB | Y | A especificac?o detalhada do produto. |
| 75 | SN_BLOQUEIO_SOL_ORD_COMPRA | VARCHAR2 | N | Indica se o produto estara bloqueado ou n?o para fazer solicitac?o e ordem de compras. |
| 76 | DS_ESPECIFICACAO | CLOB | Y | Especificac?o do produto |
| 77 | VL_PERCENTUAL_LUCRO | NUMBER | Y | Percentual de lucro para farmacia externa |
| 78 | SN_MARCA_OBRIGATORIA | VARCHAR2 | N | Indica se o produto requer a digitac?o de marca homologada na entrada de nota fiscal |
| 79 | TP_STATUS_UNIFICADO | VARCHAR2 | N | Indica o status do produto unificado. N=Novo, M=Modificado, D=Disponível, P=Pendente, U=Unificado... |
| 80 | TP_DESCRICAO | VARCHAR2 | Y | Indica o tipo da descric?o. P = Principio Ativo, C = Comercial |
| 81 | CD_PRODUTO_NOVO | NUMBER | Y | Indica o codigo produto novo do produto quando e unificado. |
| 82 | DS_RESTRICAO | VARCHAR2 | Y | Coluna que e utilizada para guardar informac?es sobre alguma restric?o ou orientac?o do produto q... |
| 83 | SN_CONTROLA_SERIE | VARCHAR2 | N | Habilita o controle de serie do produto |
| 84 | SN_ACONDICIONADO | VARCHAR2 | Y | Indica se o produto é acondicionado em Geladeira. |
| 85 | SN_REGISTRO_ANVISA | VARCHAR2 | N | Afim de atender as exigencias da rdc-23 2012/2015, o cadastro de produtos passa a conteplar a pos... |
| 86 | CD_IMG_PRODUTO | NUMBER | Y |  |
| 87 | SN_PRODUTO_ROUPARIA | VARCHAR2 | N | Guarda o indicador do uso de um produto se é uma peça de rouparia. |
| 88 | SN_INTEGRA_FARMACIA_AMB | VARCHAR2 | N | Indica se o produto integra com a farmacia ambulatorial (HOSP CLINICAS USP) |
| 89 | CD_PRODUTO_SANTOS | VARCHAR2 | Y | Código Especial apenas para o municipio de santos em integração com a CONSULFARMA |
| 90 | CD_NCM | VARCHAR2 | Y |  |
| 91 | DS_COMPLEMENTO | VARCHAR2 | Y | Indica o Complemento da descrição do produto. |
| 92 | NR_REFERENCIA | VARCHAR2 | Y | Indica a referência do produto. |
| 93 | QT_DIAS_VALID_ESTERILIZACAO | NUMBER | Y | Quantidade de Dias de validade da esterilização |
| 94 | CD_SUBSTANCIA_PRINCIPAL | NUMBER | Y | CODIGO DA SUSBTANCIA PRINCIPAL |
| 95 | SN_BLOQUEIA_MOVIMENTACAO | VARCHAR2 | Y | INDICA SE O PRODUTO SERÃ BLOQUEADO PARA MOVIMENTAÃ¿Ã¿O, COMPRA E PESQUISA NA TELA DE CADASTRO DE... |
| 96 | SN_ONCOLOGIA | VARCHAR2 | Y | Indica se o produto é do tipo oncologia |
| 97 | CD_ORIGEM_MERCADORIA | NUMBER | Y | CÓDIGO DA ORIGEM DA MERCADORIA |
| 98 | CD_CFOP | NUMBER | Y | CÓDIGO DO CFOP DO PRODUTO |
| 99 | SN_AVALIA_ISO_OSMA | VARCHAR2 | N | Indica que esse produto utiliza o padrao de avalicao de fornecedor ISO OSMA na conclusao das entr... |
| 100 | SN_AVALIA_ISO_IAMC | VARCHAR2 | N | Indica que esse produto utiliza o padrao de avalicao de fornecedor ISO IAMC na conclusao das entr... |
| 101 | SN_AVALIA_ISO_POP | VARCHAR2 | N | Indica que esse produto utiliza o padrao de avalicao de fornecedor ISO POP na conclusao das entra... |
| 102 | SN_AVALIA_ISO_NAO_APLICA | VARCHAR2 | N | Indica que para esse produto nao se aplica avaliacao ISO |
| 103 | SN_ALTO_RISCO | VARCHAR2 | N | Indica se o produto Ã© de Alto Risco |
| 104 | SN_PERMITE_VENDER | VARCHAR2 | N | Permite utilizar ou nao Venda de Medicamentos |
| 105 | CD_ARSENAL | NUMBER | Y | Códido do Arsenal |
| 106 | SN_IMPRIME_DOSE | VARCHAR2 | N | INDICA SE O PRODUTO IRÁ IMPRIMIR A ETIQUETA DE DOSE NO ATENDIMENTO DA SOLICITAÇÃO |
| 107 | DT_VIGENCIA_NCM | DATE | Y | INDICA A DATA DE VIGENCIA DE CADASTRO NCM DO PRODUTO |
| 108 | CD_GTIN | VARCHAR2 | Y | Indica o código GTIN do produto |

---

## DBAMV.PRODUTO_ANALISE
> Tabela de Cadastro de Produtos encaminhados para Analise

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRODUTO_ANALISE | NUMBER | N | Codigo do Produto utilizado na Analise |
| 2 | DS_PRODUTO_ANALISE | VARCHAR2 | N | Descric?o do Produto utilizado na Analise |
| 3 | DS_DOSAGEM | VARCHAR2 | Y | Descric?o da dosagem |
| 4 | TP_ORIGEM | VARCHAR2 | N | Origem do Produto (Nacional, Importado ou Ambos). |
| 5 | TP_PRODUTO | VARCHAR2 | N | Tipo do Produto: De marca, Generico ou N?o se aplica. |
| 6 | TP_APLICACAO | VARCHAR2 | N | Tipo de Aplicac?o do Produto: Humano, Veterinario, N?o se aplica. |
| 7 | SN_MEDICAMENTO | VARCHAR2 | N | Identifica se o produto e um medicamento. |
| 8 | CD_VIA_ADMINISTRACAO | NUMBER | Y | Codigo da Via de Administrac?o do Produto. |
| 9 | CD_FORMA_FARMACEUTICA | NUMBER | Y | Codigo da Forma Farmaceutica do Produto |
| 10 | CD_PRODUTO_GENERICO | NUMBER | Y | Codigo do Produto que representa a forma generica. |
| 11 | DS_OBSERVACAO | VARCHAR2 | Y | Descric?o das Observac?es do Produto |
| 12 | DS_ESPECIFICACAO | VARCHAR2 | Y | Descric?o das Especificac?es do Produto. |
| 13 | SN_ATIVO | VARCHAR2 | Y | Identifica se o produto esta ou n?o ativo. |

---

## DBAMV.PRODUTO_ANALISE_EMPRESA
> Tabela de Cadastro de Produtos X Empresas Fabricantes.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRODUTO_ANALISE | NUMBER | N | Codigo do Produto Analisado. |
| 2 | CD_EMPRESA | NUMBER | N | Empresa Fabricante do Produto. |

---

## DBAMV.PRODUTO_ANALISE_MARCA
> Tabela de Cadastro de Produtos X Marcas.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRODUTO_ANALISE | NUMBER | N | Codigo do Produto de Analise |
| 2 | CD_MARCA_PRODUTO | NUMBER | N | Codigo da Marca associada ao Produto. |

---

## DBAMV.PRODUTO_ANALISE_PROGRAMA
> Tabela de Cadastro de Produtos X Marcas.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRODUTO_ANALISE | NUMBER | N | Codigo do Produto de Analise. |
| 2 | CD_PROGRAMA_ANALISE | NUMBER | N | Codigo do Programa associado ao Produto. |

---

## DBAMV.PRODUTO_ANTIGO_NOVO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRODUTO_ANTIGO | NUMBER | N | Código do produto antigo. |
| 2 | CD_PRODUTO_NOVO | NUMBER | N | Código do produto mv ao qual faz referência ao produto antigo. |
| 3 | DS_PRODUTO_ANTIGO | VARCHAR2 | N | Descrição do produto Antigo |
| 4 | DS_UNIDADE_REFERENCIA_ANTIGO | VARCHAR2 | N | Unidade referência do produto antigo |
| 5 | CD_ESPECIE_ANTIGO | NUMBER | N | Código da espécia antiga |
| 6 | DS_ESPECIE_ANTIGO | VARCHAR2 | N | Descrição da espécia antiga |
| 7 | CD_CLASSE_ANTIGO | NUMBER | N | Código da classe antiga |
| 8 | DS_CLASSE_ANTIGO | VARCHAR2 | N | Descrição da classe antiga |
| 9 | CD_SUB_CLA_ANTIGO | NUMBER | N | Código da Subclasse antigo |
| 10 | DS_SUB_CLA_ANTIGO | VARCHAR2 | N | Descrição da subclasse antigo |
| 11 | CD_MULTI_EMPRESA | NUMBER | N | Código da Empresa a qual pertence o produto |

---

## DBAMV.PRODUTO_ATIVIDADE_IMP
> TABELA PARA VINCULO ATIVIDADE DE-PARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORIGEM | NUMBER | N | Código da origem do DE-PARA |
| 2 | CD_TIP_ATIV | NUMBER | N | Código da atividade |
| 3 | CD_EXT_ATIVIDADE | VARCHAR2 | N | Código externo relativo ao código da atividade |

---

## DBAMV.PRODUTO_CLASSE_IMP
> TABELA PARA CLASSE DO DE-PARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORIGEM | NUMBER | N | Código da origem do DE-PARA |
| 2 | CD_ESPECIE | NUMBER | N | Código da espécie |
| 3 | CD_CLASSE | NUMBER | N | Código da classe |
| 4 | CD_EXT_ESPECIE | VARCHAR2 | N |  |
| 5 | CD_EXT_CLASSE | VARCHAR2 | N | Código externo relativo à classe |

---

## DBAMV.PRODUTO_DIRETO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRODUTO_DIRETO | NUMBER | N |  |
| 2 | DT_COMPETENCIA | DATE | N |  |
| 3 | CD_SETOR | NUMBER | N |  |
| 4 | CD_ITEM_RES | NUMBER | Y |  |
| 5 | VL_CUSTO | NUMBER | Y |  |
| 6 | CD_CONVENIO | NUMBER | Y |  |
| 7 | CD_MULTI_EMPRESA | NUMBER | N |  |

---

## DBAMV.PRODUTO_ESP_IMP
> TABELA PRODUTO PARA ESPECIE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORIGEM | NUMBER | N | Código da origem do DE-PARA |
| 2 | CD_ESPECIE | NUMBER | N | Código da espécie |
| 3 | CD_EXT_ESPECIE | VARCHAR2 | N | Código externo relativo à espécie |

---

## DBAMV.PRODUTO_ESTABILIDADE
> Tabela que guarda estabilidade do produto

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRODUTO_ESTABILIDADE | NUMBER | N | Guarda o código do Produto  da tabela pai usada como chave estrangeira. |
| 2 | CD_PRODUTO | NUMBER | N | Guarda o código do Produto  da tabela pai usada como chave estrangeira. |
| 3 | SN_TEMPO_FIXO | VARCHAR2 | Y |  |
| 4 | SN_PERCENTUAL_ESTABILIDADE | VARCHAR2 | Y |  |
| 5 | TP_TEMPO_INFUSAO | VARCHAR2 | Y | Determina se o tempo de infusao é em hora(s) H, ou dia(s) D |
| 6 | TP_TEMPO_VALIDADE | VARCHAR2 | Y | Valor do tempo de validade em hora(s) H, ou dia(s) D |
| 7 | VL_TEMPO_INFUSAO | NUMBER | Y | Valor do tempo de infusao em hora(s) H, ou dia(s) D |
| 8 | VL_TEMPO_VALIDADE | NUMBER | Y |  |
| 9 | VL_PERCENTUAL_ESTABILIDADE | NUMBER | Y | Percentual de tempo reduzido de acordo com a data da manipulação em relação a data de Validado do... |
| 10 | SN_ESTABILIDADE_VARIAVEL | VARCHAR2 | Y | Indica se o produto controla estabilidade variavel |
| 11 | VL_PERCENTUAL_LACRE_ROMPIDO | NUMBER | Y | Percentual de tempo reduzido de acordo com a rumptura do lacre da embalagem do produto |
| 12 | QT_HORAS_ESTABILIDADE | NUMBER | Y | Indica o prazo em horas para que o produto continue disponível para utilização |
| 13 | QT_HORAS_RECONSTITUIDO | NUMBER | Y | Indica o prazo em horas que o produto foi reconstituido |
| 14 | VL_PERCENTUAL_PERDA_REEMBAL | NUMBER | Y | Percentual de perda da reembalagem |
| 15 | VL_PERCENTUAL_LIMITE_OVERFILL | NUMBER | Y | Guarda o percentual que limita o máximo de overfill que pode ser informado |

---

## DBAMV.PRODUTO_FASES_CME
> Tabela que irá registrar quais as fases que o produto passará pelo CME, apenas produtos Reprocessados

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRODUTO | NUMBER | N |  |
| 2 | SN_EXPURGO | VARCHAR2 | N | Indica se o bem de terceiro passa pelo processo de Entrada no Expurgo |
| 3 | SN_LAVAGEM | VARCHAR2 | N | Indica se o bem de terceiro passa pelo processo de Lavagem |
| 4 | SN_DESINFECCAO | VARCHAR2 | N | Indica se o bem de terceiro passa pelo processo de Desinfecção |
| 5 | SN_PREPARO | VARCHAR2 | N | Indica se o bem de terceiro passa pelo processo de Preparo |
| 6 | SN_ESTERILIZACAO | VARCHAR2 | N | Indica se o bem de terceiro passa pelo processo de Esterilização |
| 7 | SN_ARSENAL | VARCHAR2 | N | Indica se o bem de terceiro passa pelo processo de entrada no Arsenal |

---

## DBAMV.PRODUTO_FORNECEDOR
> Cadastro dos codigos dos produtos no fornecedor

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRODUTO | NUMBER | N | Codigo do Produto referencia da tabela Produto |
| 2 | CD_FORNECEDOR | NUMBER | N | Codigo do Fornecedor referencia da tabela Fornecedor |
| 3 | CD_PROD_FORN | VARCHAR2 | N | Codigo do produto no fornecedor |
| 4 | DS_PRODUTO_FORNECEDOR | VARCHAR2 | Y | Descric?o do produto - fornecedor |
| 5 | CD_UNI_PRO | NUMBER | Y | Codigo da unidade de entrada do produto utilizado pelo fornecedor na NFe. |

---

## DBAMV.PRODUTO_FRACIONADO
> TABELA QUE IRÁ ARMAZENAR O PRODUTO, LOTE E SEQUENCIAL QUANDO ESTE PRODUTO FOR FRACIONADO.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRODUTO | NUMBER | N | CÓDIGO DO PRODUTO FRACIONADO. |
| 2 | CD_LOTE_ORIGINAL | VARCHAR2 | N | CÓDIGO DO LOTE DO PRODUTO FRACIONADO. |
| 3 | CD_ESTOQUE | NUMBER | N | CÓDIGO DO ESTOQUE DO PRODUTO FRACIONADO. |
| 4 | CD_SEQUENCIAL_FRACIONAMENTO | NUMBER | N | CÓDIGO SEQUENCIAL DO FRACIONAMENTO. SERÁ INCREMENTADO SEMPRE QUE HOUVER UM NOVO FRACIONAMENTO DO ... |

---

## DBAMV.PRODUTO_FRACIONAMENTO
> TABELA QUE GUARDA ESTABILIDADE DO PRODUTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRODUTO_FRACIONAMENTO | NUMBER | N | GUARDA O CÓDIGO DO FRACIONAMENTO DO PRODUTO. É ALIMENTADA PELA SEQUENCE SEQ_PRODUTO_FRACIONAMENTO. |
| 2 | CD_PRODUTO | NUMBER | N | GUARDA O CÓDIGO DO PRODUTO DA TABELA PAI. |
| 3 | CD_ESTOQUE | NUMBER | N | GUARDA O CÓDIGO DO ESTOQUE |
| 4 | CD_LOTE | VARCHAR2 | N | GUARDA O CÓDIGO DO LOTE DO PRODUTO A SER FRACIONADO. |
| 5 | DT_FRACIONAMENTO | DATE | Y | GUARDA A DATA EM QUE FOI REALIZADO O FRACIONAMENTO. |
| 6 | DT_VALIDADE | DATE | Y | GUARDA A DATA DO PRODUTO APÓS FRACIONADO. |
| 7 | QT_PRODUTO | NUMBER | Y | GUARDA A QUANTIDADE DO PRODUTO A SER FRACIONADO. |
| 8 | CD_UNI_PRO | NUMBER | Y | GUARDA A UNIDADE DE MEDIDA DOS PRODUTOS  RESULTANTES DO FRACIONAMENTO. |
| 9 | CD_LOTE_FRACIONADO | VARCHAR2 | Y | GUARDA O CÓDIGO DO LOTE DOS PRODUTOS RESULTANTES DO FRACIONAMENTO.. |
| 10 | DT_VALIDADE_FRACIONADO | DATE | Y | GUARDA A DATA DE VALIDADE DOS NOVOS  PRODUTOS RESULTANTE DO FRACIONAMENTO. |
| 11 | CD_UNI_PRO_FRACIONADO | NUMBER | Y | GUARDA A UNIDADE DE MEDIDA DOS PRODUTOS RESULTANTE DO FRACIONAMENTO. |
| 12 | QT_PROD_FRACIONADO | NUMBER | Y | GUARDA A QUANTIDADE DE PRODUTOS RESULTANTES DO FRACIONAMENTO. |
| 13 | CD_USUARIO | VARCHAR2 | Y | GUARDA O CÓDIGO DO USUÁRIO QUE REALIZOU O FRACIONAMENTO. |
| 14 | CD_USUARIO_AUTORIZADOR | VARCHAR2 | Y | GUARDA O CÓDIGO DO USU¿RIO QUE AUTORIZOU O FRACIONAMENTO. |
| 15 | QT_DESCARTE_PROD_FRACIONADO | NUMBER | Y | GUARDA A QUANTIDADE DE PRODUTOS DESCARTADOS RESULTANTES DO FRACIONAMENTO. |
| 16 | CD_MOT_BAI | NUMBER | Y | GUARDA O CÓDIGO DO MOTIVO DO DESCARTE. |
| 17 | CD_MVTO_ESTOQUE | NUMBER | Y | Código da baixa de produtos |
| 18 | CD_FORNECEDOR | NUMBER | Y | Código do fornecedor baixa de produtos |
| 19 | TP_SITUACAO | VARCHAR2 | Y | Guarda o indicador da situação do fracionamento, F - FRACIONAMENTO, A - AUTORIZADA, N - NÃO AUTOR... |
| 20 | DS_OBS_APROVADOR | VARCHAR2 | Y | Guarda a observação do usuário aprovador. |
| 21 | DT_AUTORIZACAO | DATE | Y | Guarda a DATA da autorização do usuário aprovador. |
| 22 | VL_PERCENTUAL_ESTABILIDADE | NUMBER | Y | Indica o valor do percentual de estabilidade |
| 23 | SN_RUPTURA_LACRE | VARCHAR2 | N | Informa se no produto fracionado houve ruptura do lacre |
| 24 | CD_MAPA_PREPARO | NUMBER | Y | Código identificador do preparo. Usado no novo processo de preparo de doses |

---

## DBAMV.PRODUTO_IMPOSTO
> TABELA PARA CADASTRO DE IMPOSTOS VINCULADOS AO PRODUTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MULTI_EMPRESA | NUMBER | N | CÓDIGO DA EMPRESA |
| 2 | CD_PRODUTO | NUMBER | N | CÓDIGO DO PRODUTO |
| 3 | CD_CST_ENTRADA | VARCHAR2 | Y | CÓDIGO DO CST DA ENTRADA |
| 4 | CD_CST_SAIDA | VARCHAR2 | Y | CÓDIGO DO CST DE SAÍDA |
| 5 | CD_DETALHAMENTO | NUMBER | N | CÓDIGO DO DETALHAMENTO DO IMPOSTO DO PRODUTO |
| 6 | SN_ATIVO | VARCHAR2 | N | SE O CADASTRO ESTA ATIVO OU NÃO |
| 7 | CD_CLAS_TRIB | VARCHAR2 | Y | Código da classificação tributária CST |
| 8 | SN_RETEM | VARCHAR2 | Y | INDICA SE RETÉM O VALOR DO IMPOSTO |

---

## DBAMV.PRODUTO_INCIDENCIA_IPI
> Tabela de Relacionamento entre as tabelas Produto e Incidencia_Ipi

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRODUTO_INCIDENCIA_IPI | NUMBER | N | Codigo da Tabela PRODUTO_INCIDENCIA_IPI |
| 2 | CD_INCIDENCIA_IPI | VARCHAR2 | N | Codigo da Tabela Incidencia_ipi - TIPI Imposto sobre Produtos Industrializados |
| 3 | CD_PRODUTO | NUMBER | N | Codigo da Tabela Produto |
| 4 | VL_ALIQUOTA | NUMBER | N | Valor da aliquota por periodo |
| 5 | DT_VIGENCIA | DATE | N | Data de virgencia do relacionamento |
| 6 | SN_ATIVO | VARCHAR2 | N | Status do registro. Se esta ativo ou desativo |
| 7 | DT_INC_USUARIO | DATE | Y | Data da Inserc?o |
| 8 | CD_USUARIO_INC | VARCHAR2 | Y | Codigo do usuario que fez a inserc?o |
| 9 | DT_ALT_USUARIO | DATE | Y | Data da alterac?o |
| 10 | CD_USUARIO_ALT | VARCHAR2 | Y | Codigo do usuario que fez a alterac?o |

---

## DBAMV.PRODUTO_ITSOLICITACAO_CADASTRO
> Tabela para fazer o relacionamento dos produtos cadastrados pela solicitac?o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRODUTO_ITSOLICITACAO_CAD | NUMBER | N | Codigo do cadastro do item da solicitac?o |
| 2 | CD_PRODUTO | NUMBER | N | Codigo do produto cadastrado |
| 3 | CD_ITSOLICITACAO_CADASTRO_PRO | NUMBER | N | Codigo do item da solicitac?o |

---

## DBAMV.PRODUTO_MVSC
> Tabela que faz relacionamento "de para" dos produtos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRODUTO | NUMBER | N | Codigo do produto do mv2000 |
| 2 | CD_MVSC | NUMBER | N | Codigo do produto do que faz o relacionamento |
| 3 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da empresa |
| 4 | TP_FORMA_ENVIO | VARCHAR2 | N | identificar a forma de envio |

---

## DBAMV.PRODUTO_NCM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_NCM | VARCHAR2 | N | Código do Tipo da NCM |
| 2 | DS_NCM | VARCHAR2 | N | Descrição do Tipo da NCM |
| 3 | DT_INC_USUARIO | DATE | Y | Data da inclusão da NCM |
| 4 | CD_USUARIO_INC | VARCHAR2 | Y | Usuário que incluiu a NCM |
| 5 | DT_ALT_USUARIO | DATE | Y | Data da alteração da NCM |
| 6 | CD_USUARIO_ALT | VARCHAR2 | Y | Usuário que alterou a NCM |

---

## DBAMV.PRODUTO_PATOLOGIA_GES
> Tabela que listas as consultas medicas e os prazos de realização que devem ser cumpridos para uma etapa do protocolo.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRODUTO_PATOLOGIA_GES | NUMBER | N | Código identificador. |
| 2 | CD_TIP_PRESC | NUMBER | N | Item de prescrição relacionado. |
| 3 | CD_ETAPAS_ALERTA_PROTOCOLO | NUMBER | N | Código da etapa do protocolo relacionada. |
| 4 | TP_FAIXA_ETARIA | VARCHAR2 | N | Faixa etária A(D)ulto, (P)ediátrico, (A)mbos. |
| 5 | NR_DIAS_CONSULTA | NUMBER | Y | Número maximo de dias para realizar a consulta |
| 6 | DS_PERIODICIDADE | VARCHAR2 | Y | Periodicidade de realização da consulta. |
| 7 | DS_UNIDADE | VARCHAR2 | Y | Unidade de medida a ser solicitada |
| 8 | QT_QUANTIDADE | NUMBER | Y | Quantidade a ser solicitada |
| 9 | DS_OBSERVACAO | VARCHAR2 | Y | Observação |

---

## DBAMV.PRODUTO_REGISTRO_ANVISA
> Tabela ser?o lancados os Registros Anvisa e suas validades para os produtos no momento da Gerac?o da Ordem de Compras

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRODUTO | NUMBER | N | Codigo do produto da ordem de compra. |
| 2 | CD_ORD_COM | NUMBER | N | Codigo da ordem de compra. |
| 3 | NR_REGISTRO_ANVISA | VARCHAR2 | N | Numero do registro da ordem de compra. |
| 4 | DT_VALIDADE_REGISTRO_ANVISA | DATE | N | Data do registro da ordem de compra. |

---

## DBAMV.PRODUTO_RELATORIO_SCCOM
> Importac?o de dados para consolidac?o de relatorios de Produtos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRODUTO | NUMBER | N | codigo do produto |
| 2 | CD_SUB_CLA | NUMBER | Y | subclasse do produto |
| 3 | CD_CLASSE | NUMBER | Y | classe do produto |
| 4 | CD_ESPECIE | NUMBER | Y | especie do produto |
| 5 | CD_PRODUTO_TEM | NUMBER | Y | codigo do produto mestre |
| 6 | DS_PRODUTO | VARCHAR2 | Y | descric?o do produto |
| 7 | QT_ESTOQUE_ATUAL | NUMBER | Y | saldo do produto no estoque |
| 8 | DS_ESPECIFICACAO | VARCHAR2 | Y | especificac?o do produto |
| 9 | DT_ULTIMA_ENTRADA | DATE | Y | data da ultima entrada do produto |
| 10 | TP_ATIVO | VARCHAR2 | Y | indicador de produto ativo |
| 11 | SN_CONTROLE_VALIDADE | VARCHAR2 | Y | informa se produto controla validade |
| 12 | SN_PADRONIZADO | VARCHAR2 | Y | indicado de produto padronizado |
| 13 | SN_PSCOTROPICO | VARCHAR2 | Y | indicador de psicotropico |
| 14 | VL_CUSTO_MEDIO | NUMBER | Y | valor do customedio do produto |
| 15 | VL_TEMPO_DE_REPOSICAO | NUMBER | Y | tempo de reposic?o do produto |
| 16 | SN_MESTRE | VARCHAR2 | Y | indicador de produto mestre |
| 17 | SN_MOVIMENTACAO | VARCHAR2 | Y | indicador de movimentac?o do produto |
| 18 | HR_ULTIMA_ENTRADA | DATE | Y | hora da ultima entrada |
| 19 | SN_MEDICAMENTO | VARCHAR2 | Y | indicador se o produto e medicamento |
| 20 | TP_CLASSIFICACAO_XYZ | VARCHAR2 | Y | tipo da classificac?o XYZ do produto |
| 21 | SN_BLOQUEIO_DE_COMPRA | VARCHAR2 | Y | indicado de bloqueio de compra |
| 22 | SN_LOTE | VARCHAR2 | Y | informa se produto controla lote |
| 23 | NR_ORDEM_PREFERENCIA | NUMBER | Y | Ordem de preferencia |
| 24 | VL_FATOR_PRO_FAT | NUMBER | Y | Valor do produto no faturamento |
| 25 | VL_ULTIMA_CUSTO_REAL | NUMBER | Y | ultimo custo |
| 26 | VL_ULTIMA_ENTRADA | NUMBER | Y | valor na ultima entrada |
| 27 | QT_ULTIMA_ENTRADA | NUMBER | Y | quantidade na ultima entrada |
| 28 | DS_PRODUTO_RESUMIDO | VARCHAR2 | Y | descric?o resumida do produto |
| 29 | SN_KIT | VARCHAR2 | Y | indicador se o produto e kit |
| 30 | SN_CONSIGNADO | VARCHAR2 | Y | indicador se o produto e consignado |
| 31 | TP_ATUALIZACAO_PRECO | VARCHAR2 | Y | tipo de atualizac?o do preco |
| 32 | DT_VALIDADE_REGISTRO | DATE | Y | data de validade do registro |
| 33 | CD_HOSPITAL | VARCHAR2 | N | codigo do hospital que originou a exportac?o do registro |

---

## DBAMV.PRODUTO_RENTABILIDADE
> Produto Rentabilidade

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRODUTO_RENTABILIDADE | NUMBER | N | Chave Primaria |
| 2 | CD_PRODUTO | NUMBER | N | Codigo do produto meste |
| 3 | CD_PRODUTO_FILHO | NUMBER | Y | Codigo do produto_filho |
| 4 | CD_CONVENIO | NUMBER | N | Codigo do convenio |
| 5 | CD_CON_PLA | VARCHAR2 | Y | Codigo do plano |
| 6 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da mult_empresa |
| 7 | CD_USUARIO_INC | VARCHAR2 | Y | Codigo do usuario inclusao |
| 8 | DT_USUARIO_INC | DATE | Y | Codigo do data inclusao |

---

## DBAMV.PRODUTO_SUB_CLASSE_IMP
> TABELA PARA SUBCLASSE DO DE-PARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORIGEM | NUMBER | N | Código da origem do DE-PARA |
| 2 | CD_ESPECIE | NUMBER | N | Código da espécie |
| 3 | CD_CLASSE | NUMBER | N | Código da classe |
| 4 | CD_SUB_CLA | NUMBER | N | Código da subclasse |
| 5 | CD_EXT_ESPECIE | VARCHAR2 | N |  |
| 6 | CD_EXT_CLASSE | VARCHAR2 | N |  |
| 7 | CD_EXT_SUBCLASSE | VARCHAR2 | N | Código externo relativo à subclasse |

---

## DBAMV.PRODUTO_ULTIMAS_COMPRAS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SEQUENCIA | NUMBER | N |  |
| 2 | CD_PRODUTO | NUMBER | N |  |
| 3 | CD_FORNECEDOR | NUMBER | N |  |
| 4 | DT_ENTRADA | DATE | N |  |
| 5 | HR_ENTRADA | DATE | N |  |
| 6 | QT_ENTRADA | NUMBER | N |  |
| 7 | VL_UNITARIO | NUMBER | N |  |
| 8 | VL_CUSTO_REAL | NUMBER | N |  |
| 9 | CD_MULTI_EMPRESA | NUMBER | Y |  |
| 10 | CD_ITENT_PRO | NUMBER | Y |  |
| 11 | CD_PRODUTO_ENTRADA_CONJUGADA | NUMBER | Y | Chave do produto da entrada conjugada |

---

## DBAMV.PRODUTO_UNIDADE_EXPORT_IMPORT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRODUTO | NUMBER | N | Codigo do produto |
| 2 | CD_UNI_PRO | NUMBER | N | Unidade do produto que a integrac?o utilizara |

---

## DBAMV.PRODUTO_UNIDADE_IMP
> TABELA PARA VINCULO DA UNIDADE DE-PARA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORIGEM | NUMBER | N | Código da origem do DE-PARA |
| 2 | CD_UNIDADE | VARCHAR2 | N | Código da unidade |
| 3 | CD_EXT_UNIDADE | VARCHAR2 | N | Código externo relativo ao código da atividade |

---

## DBAMV.PRODUTO_UNIFICADO
> Produtos que ter?o seus dados unificados na Central de Compras

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_HOSPITAL | NUMBER | N | Codigo do Hospital no qual o produto esta cadastrado |
| 2 | CD_PRODUTO_CENTRAL | NUMBER | N | Codigo do Produto no cadastro da Central de Compras |
| 3 | CD_PRODUTO_HOSPITAL | NUMBER | N | Codigo do Produto no cadastro do Hospital |

---

## DBAMV.PRODUTO_UNIFICADO_MGES
> Produtos unificados

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRODUTO_UNIFICADO | NUMBER | N | Código do produto pai unificado |
| 2 | CD_PRODUTO_LISTA | NUMBER | N | Código do produto filho unificado |
| 3 | CD_MULTI_EMPRESA | NUMBER | N | Código da multi-empresa que fez a unificação |

---

## DBAMV.REQUISICAO_CONFIGURACAO_ESTOQ
> Tabela para cafigurac?o de relac?o de estoque x empresa.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REQUISICAO_CONFIG_EST | NUMBER | N | Codigo do item da requisic?o configurac?o estoque. |
| 2 | CD_EMPRESA_DESTINO | NUMBER | N | Codigo da empresa destino. |
| 3 | CD_ESTOQUE_DESTINO | NUMBER | N | Codigo do subestoque destino |
| 4 | SN_ATIVO | VARCHAR2 | N | Indica se o item esta ativo. |

---

## DBAMV.ROMANEIO
> Tabela que guarda os Romaneios Realizados com seus devidos dados e status

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ROMANEIO | NUMBER | N | Guarda o código do Romaneio. Alimentado pela sequence SEQ_ROMANEIO. |
| 2 | DS_ROMANEIO | VARCHAR2 | Y |  |
| 3 | DT_CRIACAO | DATE | N | Data/Hora de Criação do Romaneio |
| 4 | TP_SITUACAO | VARCHAR2 | N | Situação do Romaneio A-Aberto, C-Cancelado, P-Parcialmente Entregue, L - Liberado e F-Finalizado |
| 5 | CD_MOTORISTA | NUMBER | Y | Guarda o código do motorista. Alimentado pela sequence SEQ_MOTORISTA_ROMANEIO. |
| 6 | CD_TRANSPORTADORA | NUMBER | Y | Guarda o código da Transportadora. Alimentado pela sequence SEQ_TRANSPORTADORA_ROMANEIO. |
| 7 | CD_VEICULO | NUMBER | Y | Guarda o código da Veículo. Alimentado pela sequence SEQ_VEICULO_ROMANEIO. |
| 8 | CD_USUARIO | VARCHAR2 | Y | Còdigo do Usuário que realizou a Criação do Romaneio |
| 9 | CD_USUARIO_LIBERACAO | VARCHAR2 | Y | Còdigo do Usuário que realizou a Liberação do Romaneio para Entrega |
| 10 | DT_LIBERACAO | DATE | Y | Data de Liberação do Romaneio |
| 11 | DS_OBSERVACAO | VARCHAR2 | Y | Observações vinculadas ao Romaneio |

---

## DBAMV.ROMANEIO_SOLICITACAO
> Tabela que guarda as Solicitações que serão transportadas no Romaneios

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ROMANEIO | NUMBER | N | Guarda o código do Romaneio. |
| 2 | CD_SOLSAI_PRO | NUMBER | N | Código da Solicitação que fará parte do Romaneio |
| 3 | CD_DESTINO | NUMBER | Y | Guarda o código do Destino ao qual será entregue a Solicitação do Romaneio |
| 4 | TP_SITUACAO_SOLSAIPRO | VARCHAR2 | Y | Guarda a situação Liberado/Finalizado da solicitação vinculado ao romaneio |

---

## DBAMV.SALDO_CONTABIL
> Tabela de Composic?o dos Saldos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SALDO_CONTABIL | NUMBER | N |  |
| 2 | DT_SALDO_MES | DATE | N | Competencia do Fechamento Contabil |
| 3 | CD_REDUZIDO | NUMBER | N | Codigo Reduzido da Composic?o |
| 4 | CD_MULTI_EMPRESA | NUMBER | N | Empresa Origem da Composic?o |
| 5 | CD_SETOR | NUMBER | Y | Setor Origem da Composic?o |
| 6 | VL_SALDO_ANTERIOR | NUMBER | N | Saldo anterior da Composic?o |
| 7 | VL_CREDITO | NUMBER | N | Valor Credito da Composic?o |
| 8 | VL_DEBITO | NUMBER | N | Valor Debito da Composic?o |
| 9 | VL_SALDO_MES | NUMBER | Y | Saldo da Composic?o |
| 10 | VL_CREDITO_SEM_APUR | NUMBER | Y | Valor Credito da Composic?o sem apurac?o |
| 11 | VL_DEBITO_SEM_APUR | NUMBER | Y | Valor Debito da Composic?o sem apurac?o |
| 12 | VL_SALDO_MES_SEM_APUR | NUMBER | Y | Saldo da Composic?o sem apurac?o |
| 13 | IND_MODO_GERACAO | VARCHAR2 | N | Como o saldo foi gerado, C - CARGA \| G - GERADO |

---

## DBAMV.SALDO_DIA_DETALHE
> Tabela de saldos e movimentos financeiro por dia.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SALDO_DIA_DETALHE | NUMBER | N | Sequencial da tabela de saldos Fluxo de Caixa. |
| 2 | DT_SALDO_DIA | DATE | N | Data do saldo |
| 3 | CD_CONTA_FINANC | NUMBER | N | Código da conta financeira. |
| 4 | CD_FORNECEDOR | NUMBER | Y | Código do fornecedor. |
| 5 | CD_SETOR | NUMBER | Y | Código do setor. |
| 6 | CD_PROJETO | NUMBER | Y | Código do projeto. |
| 7 | CD_IMPOSTO | NUMBER | Y | Código do imposto. |
| 8 | CD_CAIXA | NUMBER | Y | Código do caixa. |
| 9 | CD_CON_COR | NUMBER | Y | Código do banco. |
| 10 | CD_LAN_CONCOR | NUMBER | Y | Código do lançamento bancário. |
| 11 | CD_APLICACAO | NUMBER | Y | Código da conta de aplicação financeira. |
| 12 | CD_ESTRUTURAL_PROCESSO | VARCHAR2 | Y | Código do processo da contas a pagar ou a receber. |
| 13 | CD_CONTRATO | NUMBER | Y | Código do contrato. |
| 14 | VL_PREVISTO | NUMBER | N | Valor previsto |
| 15 | VL_PREVISTO_REALIZADO | NUMBER | N | Valor previsto realizado |
| 16 | VL_REALIZADO_CONCILIADO | NUMBER | N | Valor realizado conciliado. |
| 17 | VL_REALIZADO | NUMBER | N | Valor realizado. |
| 18 | CD_MULTI_EMPRESA | NUMBER | Y | Código da empresa. |
| 19 | CD_CLASSIFICACAO | NUMBER | Y | CÓDIGO DO CLASSIFICAÇÃO |
| 20 | VL_PREVISAO | NUMBER | N | VALOR DE PREVISÃO DO FLUXO DE CAIXA |

---

## DBAMV.SALDO_FINANCEIRO
> Saldos de Portadores/Clientes/Fornecedores Centralizado

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EMPRESA | NUMBER | N | Codigo do Empresa |
| 2 | CD_EXERCICIO | VARCHAR2 | N | Codigo do Exercicio |
| 3 | TP_REFERENCIA | VARCHAR2 | N | Tipo de Referencia |
| 4 | CD_REFERENCIA | VARCHAR2 | N | Codigo de Referencia |
| 5 | VL_SALDO_INICIAL | NUMBER | N | Valor Saldo Inicial |
| 6 | VL_DEBITO | NUMBER | N | Valor do Debito |
| 7 | VL_CREDITO | NUMBER | N | Valor do Credito |
| 8 | CD_FECHAMENTO | NUMBER | N | Codigo do Fechamento |
| 9 | CD_REDUZIDO | NUMBER | Y | Codigo Reduzido da Conta Contabil |
| 10 | CD_MOEDA | VARCHAR2 | Y | Codigo da Moeda |

---

## DBAMV.SALDO_MENSAL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DT_SALDO_MES | DATE | N |  |
| 2 | CD_REDUZIDO | NUMBER | N |  |
| 3 | VL_CREDITO | NUMBER | Y |  |
| 4 | VL_DEBITO | NUMBER | Y |  |
| 5 | CD_SETOR | NUMBER | Y |  |
| 6 | VL_SALDO_MES | NUMBER | N |  |

---

## DBAMV.SALDO_MENSAL_EMP
> Tabela de Composic?o do Saldo Mensal

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DT_SALDO_MES | DATE | N | Competencia do Fechamento Contabil |
| 2 | CD_REDUZIDO | NUMBER | N | Codigo Reduzido da Composic?o |
| 3 | CD_MULTI_EMPRESA_ORIGEM | NUMBER | N | Empresa Origem da Composic?o |
| 4 | VL_CREDITO | NUMBER | Y | Valor Credito da Composic?o |
| 5 | VL_DEBITO | NUMBER | Y | Valor Debito da Composic?o |
| 6 | VL_SALDO_MES | NUMBER | N | Saldo da Composic?o |
| 7 | VL_SALDO_ANTERIOR | NUMBER | N |  |
| 8 | VL_CREDITO_SEM_APUR | NUMBER | Y |  |
| 9 | VL_DEBITO_SEM_APUR | NUMBER | Y |  |
| 10 | VL_SALDO_MES_SEM_APUR | NUMBER | Y |  |

---

## DBAMV.SALDO_MENSAL_EMP_15_06_2021

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DT_SALDO_MES | DATE | N |  |
| 2 | CD_REDUZIDO | NUMBER | N |  |
| 3 | CD_MULTI_EMPRESA_ORIGEM | NUMBER | N |  |
| 4 | VL_CREDITO | NUMBER | Y |  |
| 5 | VL_DEBITO | NUMBER | Y |  |
| 6 | VL_SALDO_MES | NUMBER | N |  |
| 7 | VL_SALDO_ANTERIOR | NUMBER | N |  |
| 8 | VL_CREDITO_SEM_APUR | NUMBER | Y |  |
| 9 | VL_DEBITO_SEM_APUR | NUMBER | Y |  |
| 10 | VL_SALDO_MES_SEM_APUR | NUMBER | Y |  |

---

## DBAMV.SALDO_MENSAL_EMP_AUX
> Tabela de Composição do Saldo Mensal

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DT_SALDO_MES | DATE | N | Competência do Fechamento Contábil |
| 2 | CD_REDUZIDO | NUMBER | N | Código Reduzido da Composição |
| 3 | CD_MULTI_EMPRESA | NUMBER | N | Empresa Origem da Composição |
| 4 | CD_AUXILIAR | NUMBER | N | Código Auxiliar referente ao código reduzido de crédito/débito do lançamento contabil |
| 5 | VL_SALDO_ANTERIOR | NUMBER | N |  |
| 6 | VL_CREDITO | NUMBER | Y | Valor Crédito da Composição |
| 7 | VL_DEBITO | NUMBER | Y | Valor Débito da Composição |
| 8 | VL_SALDO_MES | NUMBER | N | Saldo da Composição |
| 9 | VL_CREDITO_SEM_APUR | NUMBER | Y |  |
| 10 | VL_DEBITO_SEM_APUR | NUMBER | Y |  |
| 11 | VL_SALDO_MES_SEM_APUR | NUMBER | Y |  |

---

## DBAMV.SALDO_MENSAL_EMP_HP
> Tabela de Composicao do Saldo Mensal

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DT_SALDO_MES | DATE | N | Competencia do Fechamento Contabil |
| 2 | CD_REDUZIDO | NUMBER | N | Codigo Reduzido da Composicao |
| 3 | CD_MULTI_EMPRESA | NUMBER | N | Empresa Origem da Composicao |
| 4 | CD_HISTORICO_PADRAO | NUMBER | N | Codigo do histórico padrão do lancamento contabil |
| 5 | VL_SALDO_ANTERIOR | NUMBER | N | Valor Saldo anterior |
| 6 | VL_CREDITO | NUMBER | Y | Valor Credito da Composicao |
| 7 | VL_DEBITO | NUMBER | Y | Valor Debito da Composicao |
| 8 | VL_SALDO_MES | NUMBER | N | Saldo da Composicao |

---

## DBAMV.SALDO_MENSAL_GERENCIAL
> Saldo mensal gerencial

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DT_SALDO_MES | DATE | N | Indica o mes do saldo |
| 2 | CD_REDUZIDO | NUMBER | N | Indica o codigo reduzido |
| 3 | DT_ANO | DATE | N | Indica o exercicio |
| 4 | CD_MULTI_EMPRESA | NUMBER | N | Indica a empresa |
| 5 | VL_CREDITO | NUMBER | Y | Valor creditado |
| 6 | VL_DEBITO | NUMBER | Y | Valor debitado |
| 7 | VL_SALDO_MES | NUMBER | N | Indica o saldo |

---

## DBAMV.SALDO_MENSAL_GEREN_EMP
> Saldo Mensal Gerencial segregado por empresas controladas

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DT_SALDO_MES | DATE | N | Indica o mes do saldo |
| 2 | CD_REDUZIDO | NUMBER | N | Indica o codigo reduzido |
| 3 | DT_ANO | DATE | N | Indica o exercicio |
| 4 | CD_MULTI_EMPRESA | NUMBER | N | Indica a empresa Controladora |
| 5 | CD_MULTI_EMPRESA_ORIGEM | NUMBER | N | Indica a empresa controlada |
| 6 | VL_CREDITO | NUMBER | Y | Valor creditado |
| 7 | VL_DEBITO | NUMBER | Y | Valor debitado |
| 8 | VL_SALDO_MES | NUMBER | N | Indica o saldo |

---

## DBAMV.SALDO_MENSAL_SBS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DT_SALDO_MES | DATE | Y |  |
| 2 | CD_REDUZIDO | NUMBER | Y |  |
| 3 | CD_CONTABIL | VARCHAR2 | Y |  |
| 4 | DS_CONTA | VARCHAR2 | Y |  |
| 5 | VL_SALDO_ANTERIOR | NUMBER | Y |  |
| 6 | VL_VALOR_DEBITO | NUMBER | Y |  |
| 7 | VL_VALOR_CREDITO | NUMBER | Y |  |
| 8 | VL_SALDO_ATUAL | NUMBER | Y |  |
| 9 | CD_MULTI_EMPRESA | NUMBER | Y |  |
| 10 | DT_PERIODO | VARCHAR2 | Y |  |
| 11 | TP_NATUREZA | VARCHAR2 | Y |  |
| 12 | CD_GRAU_DA_CONTA | NUMBER | Y |  |
| 13 | TP_CONTA | VARCHAR2 | Y |  |
| 14 | SN_IMPRIME | VARCHAR2 | Y |  |
| 15 | VL_SALDO_MOVIMENTO | NUMBER | Y |  |

---

## DBAMV.SALDO_MENSAL_SETOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DT_SALDO_MES | DATE | N |  |
| 2 | CD_REDUZIDO | NUMBER | N |  |
| 3 | CD_SETOR | NUMBER | N |  |
| 4 | VL_CREDITO | NUMBER | Y |  |
| 5 | VL_DEBITO | NUMBER | Y |  |
| 6 | VL_SALDO_MES | NUMBER | N |  |

---

## DBAMV.SALDO_MENSAL_SETOR_EMP
> Tabela de Composic?o do Saldo Mensal Setor

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DT_SALDO_MES | DATE | N | Competencia do Fechamento Contabil |
| 2 | CD_REDUZIDO | NUMBER | N | Codigo Reduzido da Composic?o |
| 3 | CD_SETOR | NUMBER | N | Setor Origem da Composic?o |
| 4 | CD_MULTI_EMPRESA_ORIGEM | NUMBER | N | Empresa Origem da Composic?o |
| 5 | VL_CREDITO | NUMBER | Y | Valor Credito da Composic?o |
| 6 | VL_DEBITO | NUMBER | Y | Valor Debito da Composic?o |
| 7 | VL_SALDO_MES | NUMBER | N | Saldo da Composic?o |
| 8 | VL_SALDO_ANTERIOR | NUMBER | Y | Saldo da competencia anterior |
| 9 | VL_CREDITO_SEM_APUR | NUMBER | Y | Valor de credito sem apuracao |
| 10 | VL_DEBITO_SEM_APUR | NUMBER | Y | Valor de debito sem apuracao |
| 11 | VL_SALDO_MES_SEM_APUR | NUMBER | Y | Valor do saldo mes sem apuracao |

---

## DBAMV.SALDO_MENSAL_SETOR_GERENCIAL
> Saldo mensal dos centros de custo gerencial

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DT_SALDO_MES | DATE | N | Indica o mes do saldo |
| 2 | CD_REDUZIDO | NUMBER | N | Indica o codigo reduzido da conta gerencial |
| 3 | CD_SETOR | NUMBER | N | Indica o codigo do setor gerencial |
| 4 | VL_CREDITO | NUMBER | Y | Valor de credito |
| 5 | VL_DEBITO | NUMBER | Y | Valor de debito |
| 6 | VL_SALDO_MES | NUMBER | N | Valor do saldo |
| 7 | DT_ANO | DATE | N | Indica o exercicio |
| 8 | CD_MULTI_EMPRESA | NUMBER | N | Indica o codigo da empresa |

---

## DBAMV.SALDO_MENSAL_SETOR_GEREN_EMP
> Saldo mensal dos centros de custo gerencial segregados por empresa controlada

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DT_SALDO_MES | DATE | N | Indica o mes do saldo |
| 2 | CD_REDUZIDO | NUMBER | N | Indica o codigo reduzido da conta gerencial |
| 3 | CD_SETOR | NUMBER | N | Indica o codigo do setor gerencial |
| 4 | VL_CREDITO | NUMBER | Y | Valor de credito |
| 5 | VL_DEBITO | NUMBER | Y | Valor de debito |
| 6 | VL_SALDO_MES | NUMBER | N | Valor do saldo |
| 7 | DT_ANO | DATE | N | Indica o exercicio |
| 8 | CD_MULTI_EMPRESA | NUMBER | N | Indica o codigo da empresa |
| 9 | CD_MULTI_EMPRESA_ORIGEM | NUMBER | N | Indica o codigo da empresa de origem |

---

## DBAMV.SALDO_MES_EMPRESA_SEM_APURACAO
> Tabela Complementar do Saldo Contabil por Empresa sem considerar a Apurac?o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DT_SALDO_MES | DATE | N | Competencia do Fechamento Contabil por Empresa |
| 2 | CD_REDUZIDO | NUMBER | N | Codigo Reduzido da Composic?o |
| 3 | CD_MULTI_EMPRESA_ORIGEM | NUMBER | N | Empresa Origem da Composic?o |
| 4 | VL_CREDITO | NUMBER | Y | Valor Credito por Empresa sem considerar a Apurac?o |
| 5 | VL_DEBITO | NUMBER | Y | Valor Debito por Empresa sem considerar a Apurac?o |
| 6 | VL_SALDO_MES | NUMBER | N | Saldo por Empresa sem considerar a Apurac?o |

---

## DBAMV.SALDO_MES_GERENCIAL_SEM_APURAC
> Saldo mensal gerencial sem considerar a Apurac?o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DT_SALDO_MES | DATE | N | Indica o mes do saldo sem considerar a Apurac?o |
| 2 | CD_REDUZIDO | NUMBER | N | Indica o codigo reduzido |
| 3 | DT_ANO | DATE | N | Indica o exercicio |
| 4 | CD_MULTI_EMPRESA | NUMBER | N | Indica a empresa |
| 5 | VL_CREDITO | NUMBER | Y | Valor creditado sem considerar a Apurac?o |
| 6 | VL_DEBITO | NUMBER | Y | Valor debitado sem considerar a Apurac?o |
| 7 | VL_SALDO_MES | NUMBER | N | Indica o saldo sem considerar a Apurac?o |

---

## DBAMV.SALDO_MES_GERENC_EMP_SEM_APUR
> Saldo Mensal Gerencial segregado por empresas controladas sem considerar a Apurac?o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DT_SALDO_MES | DATE | N | Indica o mes do saldo |
| 2 | CD_REDUZIDO | NUMBER | N | Indica o codigo reduzido |
| 3 | DT_ANO | DATE | N | Indica o exercicio |
| 4 | CD_MULTI_EMPRESA | NUMBER | N | Indica a empresa Controladora |
| 5 | CD_MULTI_EMPRESA_ORIGEM | NUMBER | N | Indica a empresa controlada |
| 6 | VL_CREDITO | NUMBER | Y | Valor creditado sem considerar a Apurac?o |
| 7 | VL_DEBITO | NUMBER | Y | Valor debitado sem considerar a Apurac?o |
| 8 | VL_SALDO_MES | NUMBER | N | Indica o saldo sem considerar a Apurac?o |

---

## DBAMV.SALDO_MES_SEM_APURACAO
> Tabela Complementar do Saldo Contabil sem considerar a Apurac?o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DT_SALDO_MES | DATE | N | Competencia da Apurac?o Contabil |
| 2 | CD_REDUZIDO | NUMBER | N | Codigo Reduzido da Apurac?o |
| 3 | VL_CREDITO | NUMBER | Y | Valor Credito sem considerar a Apurac?o |
| 4 | VL_DEBITO | NUMBER | Y | Valor Debito sem considerar a Apurac?o |
| 5 | VL_SALDO_MES | NUMBER | N | Saldo sem considerar a Apurac?o |

---

## DBAMV.SALDO_MES_SETOR_EMPRE_SEM_APUR
> Tabela Complementar do Saldo Contabil por Empresa/Setor sem considerar a Apurac?o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DT_SALDO_MES | DATE | N | Competencia do Fechamento Contabil por Empresa/Setor |
| 2 | CD_REDUZIDO | NUMBER | N | Codigo Reduzido da Composic?o |
| 3 | CD_SETOR | NUMBER | N | Setor Origem da Composic?o |
| 4 | CD_MULTI_EMPRESA_ORIGEM | NUMBER | N | Empresa Origem da Composic?o |
| 5 | VL_CREDITO | NUMBER | Y | Valor Credito por Empresa/Setor sem considerar a Apurac?o |
| 6 | VL_DEBITO | NUMBER | Y | Valor Debito por Empresa/Setor sem considerar a Apurac?o |
| 7 | VL_SALDO_MES | NUMBER | N | Saldo por Empresa/Setor sem considerar a Apurac?o |

---

## DBAMV.SALDO_MES_SETOR_GEREN_SEM_APUR
> Saldo mensal dos centros de custo gerencial sem considerar a Apurac?o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DT_SALDO_MES | DATE | N | Indica o mes do saldo |
| 2 | CD_REDUZIDO | NUMBER | N | Indica o codigo reduzido da conta gerencial |
| 3 | CD_SETOR | NUMBER | N | Indica o codigo do setor gerencial |
| 4 | VL_CREDITO | NUMBER | Y | Valor de credito sem considerar a Apurac?o |
| 5 | VL_DEBITO | NUMBER | Y | Valor de debito sem considerar a Apurac?o |
| 6 | VL_SALDO_MES | NUMBER | N | Valor do saldo sem considerar a Apurac?o |
| 7 | DT_ANO | DATE | N | Indica o exercicio |
| 8 | CD_MULTI_EMPRESA | NUMBER | N | Indica o codigo da empresa |

---

## DBAMV.SALDO_MES_SETOR_SEM_APURACAO
> Tabela Complementar do Saldo Contabil por Setor sem considerar a Apurac?o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DT_SALDO_MES | DATE | N | Competencia da Apurac?o Contabil |
| 2 | CD_REDUZIDO | NUMBER | N | Codigo Reduzido da Apurac?o |
| 3 | CD_SETOR | NUMBER | N | Setor Origem da Apurac?o |
| 4 | VL_CREDITO | NUMBER | Y | Valor Credito por setor sem considerar a Apurac?o |
| 5 | VL_DEBITO | NUMBER | Y | Valor Debito por setor sem considerar a Apurac?o |
| 6 | VL_SALDO_MES | NUMBER | N | Saldo por setor sem considerar a Apurac?o |

---

## DBAMV.SALDO_MES_ST_GER_EMP_SEM_APUR
> Tabela Complementar do Saldo Contabil Gerencial por Empresa/Setor sem considerar a Apurac?o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DT_SALDO_MES | DATE | N | Indica o mes do saldo |
| 2 | CD_REDUZIDO | NUMBER | N | Indica o codigo reduzido da conta gerencial |
| 3 | CD_SETOR | NUMBER | N | Indica o codigo do setor gerencial |
| 4 | VL_CREDITO | NUMBER | Y | Valor de credito sem considerar a Apurac?o |
| 5 | VL_DEBITO | NUMBER | Y | Valor de debito sem considerar a Apurac?o |
| 6 | VL_SALDO_MES | NUMBER | N | Valor do saldo sem considerar a Apurac?o |
| 7 | DT_ANO | DATE | N | Indica o exercicio |
| 8 | CD_MULTI_EMPRESA | NUMBER | N | Indica o codigo da empresa |
| 9 | CD_MULTI_EMPRESA_ORIGEM | NUMBER | N | Indica o codigo da empresa de origem |

---

## DBAMV.SALDO_ORCAMENTARIO_PLANILHA
> Tabela para importações dos valores orçados - MV ORÇAMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ANO | NUMBER | N | Ano da importação dos saldos orçamentários |
| 2 | CD_SETOR | NUMBER | N | Centro de custo da importação dos saldos orçamentários |
| 3 | CD_ITEM_RES | NUMBER | Y | Código do cd_item_res da tabela item_res para importação dos saldos |
| 4 | VL_ORCADO_01 | NUMBER | Y | Valor orçado à ser importado referente a competência de janeiro |
| 5 | VL_ORCADO_02 | NUMBER | Y | Valor orçado à ser importado referente a competência de fevereiro |
| 6 | VL_ORCADO_03 | NUMBER | Y | Valor orçado à ser importado referente a competência de março |
| 7 | VL_ORCADO_04 | NUMBER | Y | Valor orçado à ser importado referente a competência de abril |
| 8 | VL_ORCADO_05 | NUMBER | Y | Valor orçado à ser importado referente a competência de maio |
| 9 | VL_ORCADO_06 | NUMBER | Y | Valor orçado à ser importado referente a competência de junho |
| 10 | VL_ORCADO_07 | NUMBER | Y | Valor orçado à ser importado referente a competência de julho |
| 11 | VL_ORCADO_08 | NUMBER | Y | Valor orçado à ser importado referente a competência de agosto |
| 12 | VL_ORCADO_09 | NUMBER | Y | Valor orçado à ser importado referente a competência de setembro |
| 13 | VL_ORCADO_10 | NUMBER | Y | Valor orçado à ser importado referente a competência de outubro |
| 14 | VL_ORCADO_11 | NUMBER | Y | Valor orçado à ser importado referente a competência de novembro |
| 15 | VL_ORCADO_12 | NUMBER | Y | Valor orçado à ser importado referente a competência de dezembro |
| 16 | VL_REALIZADO_01 | NUMBER | Y | Valor realizado à ser importado referente a competência de janeiro |
| 17 | VL_REALIZADO_02 | NUMBER | Y | Valor realizado à ser importado referente a competência de fevereiro |
| 18 | VL_REALIZADO_03 | NUMBER | Y | Valor realizado à ser importado referente a competência de março |
| 19 | VL_REALIZADO_04 | NUMBER | Y | Valor realizado à ser importado referente a competência de abril |
| 20 | VL_REALIZADO_05 | NUMBER | Y | Valor realizado à ser importado referente a competência de maio |
| 21 | VL_REALIZADO_06 | NUMBER | Y | Valor realizado à ser importado referente a competência de junho |
| 22 | VL_REALIZADO_07 | NUMBER | Y | Valor realizado à ser importado referente a competência de julho |
| 23 | VL_REALIZADO_08 | NUMBER | Y | Valor realizado à ser importado referente a competência de agosto |
| 24 | VL_REALIZADO_09 | NUMBER | Y | Valor realizado à ser importado referente a competência de setembro |
| 25 | VL_REALIZADO_10 | NUMBER | Y | Valor realizado à ser importado referente a competência de outubro |
| 26 | VL_REALIZADO_11 | NUMBER | Y | Valor realizado à ser importado referente a competência de novembro |
| 27 | VL_REALIZADO_12 | NUMBER | Y | Valor realizado à ser importado referente a competência de dezembro |
| 28 | CD_REDUZIDO | NUMBER | Y | Código do CD_REDUZIDO da tabela PLANO_CONTAS para importação dos saldos |
| 29 | CD_SALDO_ORCAMENTARIO_PLANILHA | NUMBER | N | Código da tabela para importações dos valores orçados |

---

## DBAMV.SALDO_TIPO_BENEFICIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SALDO_TIPO_BENEFICIO | NUMBER | N | CODIGO DO TIPO DE BENEFICIO. |
| 2 | DT_SALDO | DATE | N | DATA DO SALDO. |
| 3 | QT_SALDO | NUMBER | Y | QUANTIDADE DE SALDO. |
| 4 | CD_SETOR | NUMBER | N | CODIGO DO SETOR. |
| 5 | CD_TIPO_BENEFICIO | NUMBER | N | CODIGO DO TIPO DE BENEFICIO |
| 6 | DH_ULTIMO_MOVIMENTO | DATE | Y | Data e hora do ultimo movimento no mes, n?o poder?o ser lancadas movimentac?es abaixo dessa data ... |

---

## DBAMV.SEPARACAO
> Tabela para cadastrar de Separac?o de Produtos.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SEPARACAO | NUMBER | N | Codigo da Separac?o. |
| 2 | TP_STATUS | VARCHAR2 | N | Status da Separac?o. |
| 3 | CD_USUARIO | VARCHAR2 | N | Usuario que cadastra a Separac?o. |
| 4 | DT_SEPARACAO | DATE | N | Data da Separac?o. |
| 5 | CD_USUARIO_VALIDACAO | VARCHAR2 | Y | Usuario que cadastra a Validac?o. |
| 6 | DT_SEPARACAO_VALIDACAO | DATE | Y | Data do cadastro de Validac?o. |
| 7 | CD_SOLSAI_PRO | NUMBER | N | Codigo da Solicitac?o. |

---

## DBAMV.SOLSAI_PRO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SOLSAI_PRO | NUMBER | N |  |
| 2 | TP_SOLSAI_PRO | VARCHAR2 | N |  |
| 3 | CD_SETOR | NUMBER | Y |  |
| 4 | CD_ESTOQUE | NUMBER | N |  |
| 5 | TP_SITUACAO | VARCHAR2 | N |  |
| 6 | CD_ATENDIMENTO | NUMBER | Y |  |
| 7 | CD_PRESTADOR | NUMBER | Y |  |
| 8 | DT_SOLSAI_PRO | DATE | Y |  |
| 9 | SN_EMITIDO | VARCHAR2 | Y |  |
| 10 | CD_UNID_INT | NUMBER | Y |  |
| 11 | HR_SOLSAI_PRO | DATE | Y |  |
| 12 | CD_PRE_MED | NUMBER | Y |  |
| 13 | CD_ESTOQUE_SOLICITANTE | NUMBER | Y |  |
| 14 | CD_USUARIO | VARCHAR2 | Y |  |
| 15 | CD_SOLICITACAO_PRODUTO | NUMBER | Y |  |
| 16 | DS_OBS | VARCHAR2 | Y |  |
| 17 | CD_TP_SOLICITACAO | NUMBER | Y |  |
| 18 | CD_MOT_DEV | NUMBER | Y |  |
| 19 | DT_IMPRESSAO | DATE | Y |  |
| 20 | CD_AGRUPAMENTO | NUMBER | Y |  |
| 21 | CD_OS | NUMBER | Y |  |
| 22 | CD_DEV_PRE | NUMBER | Y |  |
| 23 | CD_AVISO_CIRURGIA | NUMBER | Y |  |
| 24 | DT_GRAVACAO | DATE | Y |  |
| 25 | CD_TURNO | NUMBER | Y |  |
| 26 | DT_IMPRESSAO_AGRUP | DATE | Y |  |
| 27 | DT_CONSUMO_INICIAL | DATE | Y |  |
| 28 | DT_CONSUMO_FINAL | DATE | Y |  |
| 29 | SN_URGENTE | VARCHAR2 | N | Indica se a solicitac?o e ou n?o urgente e podera ser priorizada |
| 30 | CD_FECHAMENTO | NUMBER | Y | Codigo do Fechamento |
| 31 | TP_ORIGEM_SOLICITACAO | VARCHAR2 | Y | Indica a origem por onde foi realizada a solicitac?o |
| 32 | CD_SOLSAI_PRO_INTEGRA | VARCHAR2 | Y | Codigo da solicitac?o (de-para) |
| 33 | CD_SEQ_INTEGRA | NUMBER | Y | Codigo sequencial do registro integrado |
| 34 | DT_INTEGRA | DATE | Y | Data em que o registro foi integrado |
| 35 | CD_PACIENTE_INTEGRA | VARCHAR2 | Y | Descric?o do campo do codigo do paciente integra. |
| 36 | NM_PACIENTE_INTEGRA | VARCHAR2 | Y | Descric?o do campo nome do paciente integra. |
| 37 | SN_CONTROLA_ATEND_DEVOL | VARCHAR2 | Y | Valor da configurac?o com mesmo nome na CONFIGEST, controla se uma quantidade maior que a informa... |
| 38 | CD_ENT_PRO | NUMBER | Y | Item de entrada de produtos gerador do item da solicitac?o. |
| 39 | CD_ATENDIMENTO_INTEGRA | VARCHAR2 | Y | Codigo de atendimento |
| 40 | CD_REQUISICAO | NUMBER | Y | Codigo da requisic?o. |
| 41 | CD_MUNICIPIO | NUMBER | Y | Codigo municipio - MVSISS |
| 42 | DS_MUNICIPIO | VARCHAR2 | Y | Descric?o do Municipio - MVSISS |
| 43 | CD_MUNICIPIO_INTEGRA | VARCHAR2 | Y | Codigo do municipio (de-para) - MVSISS |
| 44 | CD_CLINICA | NUMBER | Y | Codigo da clinica - MVSISS |
| 45 | DS_CLINICA | VARCHAR2 | Y | Descric?o da Clinica - MVSISS |
| 46 | CD_CLINICA_INTEGRA | NUMBER | Y | Codigo da clinica (de-para) - MVSISS |
| 47 | CD_MOTIVO_CANC | NUMBER | Y | O codigo do cancelamento da solicitac?o. |
| 48 | DT_CANCELAMENTO | DATE | Y | A data do cancelamento da solicitac?o. |
| 49 | DS_JUSTIFICATIVA_CANCELAMENTO | VARCHAR2 | Y | A justificativa do cancelamento da solicitac?o. |
| 50 | SN_SOLIC_PADRAO | VARCHAR2 | N | Indica se a solicitac?o e um modelo para copia/importac?o ou n?o. |
| 51 | SN_ATIVO_SOLIC_PADRAO | VARCHAR2 | N | Indica se a solicitac?o padr?o esta ativa para o processo de copia e de importac?o. |
| 52 | DS_SOLIC_PADRAO | VARCHAR2 | Y | A descric?o da solicitac?o padr?o. |
| 53 | CD_EMPRESA_DESTINO | NUMBER | Y | Código da empresa destino da Solicitação de Transferência entre Empresas. |
| 54 | CD_MOVIMENTACAO_EST_RCBM_PARCI | NUMBER | Y | Guarda o código da movimentação que foi recebida parcialmente e deu origem a solicitação em questão. |
| 55 | TP_STATUS_ROMANEIO | VARCHAR2 | Y |  |
| 56 | CD_AVISO_CIRURGIA_PROD_ROUPA | NUMBER | Y | Código de aviso de cirurgia que originou a solicitação de produtos de rouparia. |
| 57 | TP_SOLICITACAO_PEP | VARCHAR2 | Y | Indica o tipo de solicitação do PEP. C - Controlado / AV - Alta Vigilância / N - Normal |
| 58 | CD_ENT_PRO_PRODUCAO | NUMBER | Y | Chave da entrada do produto(produção) |

---

## DBAMV.SOLSAI_PRO_CANCEL
> TABELA QUE GUARDA AS SOLICITACOES A SEREM CANCELADAS JOB CANCELA SOLICITACAO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SOLSAI_PRO_CANCEL | NUMBER | N | CODIGO DA SOLICITACAO, SOLSAI_PRO, A SER CANCELADA |
| 2 | CD_ATENDIMENTO | NUMBER | N |  |
| 3 | SN_CANCELADO | VARCHAR2 | Y | SE A SOLICITACAO JA FOI CANCELADA |
| 4 | DT_INSERCAO | DATE | Y | DATA EM QUE O REGISTRO FOI INSERIDO NA TABELA |
| 5 | DT_CANCELAMENTO | DATE | Y | DATA EM QUE O JOB EXECUTOU E CANCELOU A SOLICITACAO |
| 6 | NM_USUARIO_ALTA | VARCHAR2 | Y |  |
| 7 | NM_USUARIO_ALTA_MEDICA | VARCHAR2 | Y |  |
| 8 | TP_CANCELAMENTO | VARCHAR2 | Y | Origem do pedido de cancelamento. |
| 9 | DS_OBSERVACAO | VARCHAR2 | Y | Observação do processo de cancelamento. |

---

## DBAMV.SOLSAI_PRO_KARDEX
> TABELA DE SOLICITAÇÕES DO KARDEX

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SOLSAI_PRO | NUMBER | N | CÓDIGO DA SOLICITAÇÃO |
| 2 | CD_USUARIO | VARCHAR2 | N | USUÁRIO QUE ENVIOU A SOLICITAÇÃO AO KARDEX |
| 3 | DH_ENVIO_SOLICITACAO | DATE | N | DATA E HORA DO ENVIO DA SOLICITAÇÃO AO KARDEX |
| 4 | NR_ETIQUETA | NUMBER | Y | NÚMERO DE ETIQUETAS IMPRESSAS DESSA SOLICITAÇÃO |

---

## DBAMV.SOL_COM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SOL_COM | NUMBER | N |  |
| 2 | CD_COTADOR | NUMBER | Y |  |
| 3 | CD_MOT_PED | NUMBER | N |  |
| 4 | CD_SETOR | NUMBER | N |  |
| 5 | CD_ESTOQUE | NUMBER | N |  |
| 6 | NM_SOLICITANTE | VARCHAR2 | N |  |
| 7 | TP_SITUACAO | VARCHAR2 | N | Situação em que se encontra a solicitação de compras. A = Aberta, N = Lançamento, S = Solicitada,... |
| 8 | DT_SOL_COM | DATE | N |  |
| 9 | DT_MAXIMA | DATE | N |  |
| 10 | DS_OBSERVACAO | VARCHAR2 | Y |  |
| 11 | DS_MOT_N_ATEND | VARCHAR2 | Y |  |
| 12 | CD_PSOL_COM | NUMBER | Y |  |
| 13 | DT_IMPRESSAO | DATE | Y |  |
| 14 | CD_USUARIO | VARCHAR2 | Y |  |
| 15 | CD_SOL_COM_TEM | NUMBER | Y |  |
| 16 | DS_OBS_COTACAO | VARCHAR2 | Y |  |
| 17 | CD_MOT_CANCEL | NUMBER | Y |  |
| 18 | DT_CANCELAMENTO | DATE | Y |  |
| 19 | DT_MAX_RESPOSTA_COTACAO | DATE | Y |  |
| 20 | DT_MAX_RESPOSTA_ORD_COMPRA | DATE | Y |  |
| 21 | CD_SOL_COM_GERADA | NUMBER | Y |  |
| 22 | TP_SOL_COM | VARCHAR2 | N |  |
| 23 | IDENTIFICADOR | VARCHAR2 | Y |  |
| 24 | LOTE_MVSC | NUMBER | Y |  |
| 25 | CD_SOL_COM_INTEGRA | VARCHAR2 | Y |  |
| 26 | DT_INTEGRA | DATE | Y |  |
| 27 | CD_SEQ_INTEGRA | NUMBER | Y |  |
| 28 | SN_URGENTE | VARCHAR2 | N | Flag que identifica as solicitac?es urgentes |
| 29 | CD_ESTOQUE_CENTRAL | NUMBER | Y | identificar o estoque da empresa centralizadora |
| 30 | DS_ARQUIVO_TEXTO | VARCHAR2 | Y | descric?o do arquivo de importac?o |
| 31 | SN_ENVIO_ORDCOM | VARCHAR2 | Y | Identifica se a ordem de compras sera enviada para empresa origem ou n?o |
| 32 | CD_CONTA | NUMBER | Y | Coluna referente a conta principal do processo de compras para hospital publico |
| 33 | CD_RUBRICA | NUMBER | Y | Coluna referente ao elemento ( rubrica ) do processo de compras para hospital publico |
| 34 | CD_FONTE_RECURSO | NUMBER | Y | Coluna referente a fonte de recurso do processo de compras para hospital publico |
| 35 | SN_APROVADA | VARCHAR2 | Y | Identifica se a solicitac?o foi aprovada pelo usuario |
| 36 | CD_SOL_COM_ORIGEM | NUMBER | Y | Informa o codigo da solicitac?o que originou a solicitac?o consultada. |
| 37 | SN_OPME | VARCHAR2 | N | Indica se a Solicitac?o e do tipo OPME (Orteses , Proteses , Medicamentos Especiais) |
| 38 | CD_ATENDIME | NUMBER | Y | Codigo de atendimento que gerou a solicitac?o tipo OPME |
| 39 | CD_RES_LEI | NUMBER | Y | Codigo de pre-internac?o associada a solicitac?o tipo OPME |
| 40 | CD_AVISO_CIRURGIA | NUMBER | Y | Codigo de Aviso de Cirurgia associada a solicitac?o tipo OPME |
| 41 | CD_GUIA | NUMBER | Y | Codigo de Guia associada a solicitac?o tipo OPME |
| 42 | TP_STATUS_OPME | VARCHAR2 | Y | Indica a Situac?o (status atual) da Solicitac?o tipo OPME |
| 43 | NR_INSTITUICAO | NUMBER | Y | Numero de Sequencia da Instituic?o |
| 44 | VL_TOTAL | NUMBER | Y | Valor total da Solicitac?o baseado na ultima compra de cada produto |
| 45 | DT_MAXIMA_BIONEXO | DATE | Y | Data Maxima para cadastro de cotac?es no site Bionexo |
| 46 | DS_OBSERVACAO_COMPRADOR | VARCHAR2 | Y | Observac?es cadastradas pelo comprador para ajudar no processo de compras |
| 47 | SN_INT_MERCADO_ELETRONICO | VARCHAR2 | N | Indica se a solicitac?o foi integrada ao mercado eletronico |
| 48 | SN_LANC_EST_AUT | VARCHAR2 | N | Indicar se houve lancamento do estoque automatico pelo sistema(S) ou pelo Usuario(N) |
| 49 | SN_RENEGOCIACAO | VARCHAR2 | N | INDICA SE A SOLICITAÇÃO FOI GERADA PELA RENEGOCIAÇÃO DE UM PROCEDIMENTO |
| 50 | VL_LIM_RENEGOCIACAO | NUMBER | Y | Indica o valor limite utilizado para a renegociação |
| 51 | SN_COMPRAS | VARCHAR2 | Y | INDICA SE A SOLICITAÇÃO FOI CRIADA DO MENU MGCO OU NO MENU MGES |
| 52 | CD_USER_MODIFICA_SITUACAO | VARCHAR2 | Y |  |

---

## DBAMV.SOL_COM_FORNECEDOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SOL_COM | NUMBER | N |  |
| 2 | CD_FORNECEDOR | NUMBER | N |  |
| 3 | TP_COMUNICACAO | VARCHAR2 | Y |  |

---

## DBAMV.SOL_COM_FORNECEDOR_PROD

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SOL_COM | NUMBER | N | código da solicitacao |
| 2 | CD_FORNECEDOR | NUMBER | N | codigo do fornecedor |
| 3 | CD_PRODUTO | NUMBER | N | codigo dos produtos da solicitacao |
| 4 | CD_UNI_PRO | NUMBER | N | codigo da unidade dos produtos da solicitacao |
| 5 | SN_COTADO | VARCHAR2 | N | informa o produto que será cotado |

---

## DBAMV.SOL_COM_OPMENEXO
> Tabela que armazena as cotac?es recebidas do OPMENEXO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SOL_COM | NUMBER | N | Codigo da Solicitac?o tipo OPME |
| 2 | DT_VENCIMENTO | DATE | Y | Data de vencimento da Solicitac?o tipo OPME |
| 3 | DT_PROCEDIMENTO | DATE | Y | Data de Procedimento associado a Solicitac?o tipo OPME |
| 4 | NM_PACIENTE | VARCHAR2 | Y | Nome do paciente do Procedimento |
| 5 | CD_MATRICULA | VARCHAR2 | Y | Matricula |
| 6 | NM_MEDICO | VARCHAR2 | Y | Nome do medico associado ao Procedimento |
| 7 | NR_CMR | NUMBER | Y | Numero do CMR associado ao Procedimento |
| 8 | NR_CNPJ_CONVENIO | VARCHAR2 | Y | Numero CNPJ do convenio associado ao Procedimento |

---

## DBAMV.SOL_COM_RELATORIO_SCCOM
> Importac?o de dados para consolidac?o de relatorios de Solicitac?es de Compra

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SOL_COM | NUMBER | N |  |
| 2 | CD_HOSPITAL | VARCHAR2 | N | Codigo do hospital que exportou o regsitro |
| 3 | CD_ESTOQUE | NUMBER | Y | Codigo do Estoque |
| 4 | SN_URGENTE | VARCHAR2 | Y | Indica se a solicitac?o e urgente |
| 5 | DT_SOL_COM | DATE | Y | Data da solicitac?o |
| 6 | DT_MAXIMA | DATE | Y | Data maxima para a solicitac?o |
| 7 | CD_SETOR | NUMBER | Y | Setor solicitante |
| 8 | NM_SOLICITANTE | VARCHAR2 | Y | Nome do solicitante |
| 9 | CD_MOT_PED | NUMBER | Y | Motivo do pedido |
| 10 | CD_COTADOR | NUMBER | Y | Codigo do Cotador |
