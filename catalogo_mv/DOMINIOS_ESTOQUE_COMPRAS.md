# Domínios - Estoque, Compras e Movimentações

## mvto_estoque
**Descrição:** Movimentações consolidadas do estoque (Saídas, devoluções, manipulação, empréstimo, tombamento, etc)

| Campo | Valor | Significado |
|-------|-------|-------------|
| tp_mvto_estoque | X | Baixa De Produtos |
| | S | Se nulo é saída pra setor, se não paciente |
| | P | Saída Paciente (cd_aviso_cirurgia nulo é saída direta, se não gasto de sala) |
| | D | Devol. De Setor |
| | C | Devol. De Paciente |
| | T | Transf. De Estoque |
| | M | Manipul. Produtos |
| | O | Doação Produtos |
| | E | Saída De Empréstimo |
| | R | Transf. Empresa |
| | V | Venda De Produtos |
| | N | Devolução De Vendas |
| | B | Tombamento |

## itmvto_estoque
**Descrição:** Item da movimentação de estoque

| Campo | Valor | Significado |
|-------|-------|-------------|
| tp_estoque | A | |
| | D | |
| | O | |
| tp_orcamento | E | |

## tip_doc
**Descrição:** Tipo de documento (Que aparece nas telas de entradas de serviço e produto)

| Campo | Valor | Significado |
|-------|-------|-------------|
| tp_entrada | D | Doação |
| | P | Produção |
| | N | Nota Fiscal |
| | V | Vale |
| | E | Empréstimo |
| | L | Devolução |
| | C | Consignado |
| | F | Nota Fiscal de Frete |
| | T | Nota Fiscal de Transferência |
| | S | Nota Fiscal de Transferência |
| | O | Nota Fiscal Não Cobrada |
| | G | Serviços Gráficos |
| | A | |
| tp_documento | A | Ambos |
| | P | A Pagar |
| | R | A Receber |

## solsai_pro
**Descrição:** Solicitação de produtos

| Campo | Valor | Significado |
|-------|-------|-------------|
| tp_situacao | A | Cancelado |
| | C | Atendido Parcial |
| | P | Pedido |
| | | Confirmado |

## iso_avaliacao
**Descrição:** Avaliação do fornecedor MGCO/M_AVALIACAO

## iso_resposta
**Descrição:** Resposta da pergunta da avaliação do fornecedor

## iso_pergunta
**Descrição:** Cadastro das perguntas da avaliação MGCO/M_PERGUNTA_MGCO

## iso_itpergunta
**Descrição:** Cadastro das respostas das perguntas

## ent_pro
**Descrição:** Entrada de produtos

## itent_pro
**Descrição:** Item da entrada de produtos

## documento_entrada_duplicata

## log_erro_ent_pro
**Descrição:** Alguns erros de entrada de produtos

## ent_pro_conclusao
**Descrição:** Conclusão da entrada de produtos

## ent_serv
**Descrição:** Entrada de serviços

## itent_serv
**Descrição:** Item da entrada de serviços (não documentado)

## kit
**Descrição:** Cadastro de kits

## mvto_kit_produzido
**Descrição:** Movimentações de kits

## contagem
**Descrição:** Inventário

| Campo | Valor | Significado |
|-------|-------|-------------|
| tp_contagem | G | Geral do estoque |
| | S | Somente alguns produtos |
| | K | Somente alguns produtos Kits |
| | T | Geral do estoque dos Kits |

## itcontagem
**Descrição:** Itens do inventário

## ord_com
**Descrição:** Ordens de compra

| Campo | Valor | Significado |
|-------|-------|-------------|
| tp_situacao | A | Aberta |
| | U | Autorizada |
| | N | Não Autorizada |
| | P | |
| | L | Parcialmente Atendida |
| | T | Atendida |
| | C | Cancelada |
| | D | |
| tp_ord_com | P | Produtos |
| | S | Serviços |
| | C | |

## sol_com
**Descrição:** Solicitações de compra

| Campo | Valor | Significado |
|-------|-------|-------------|
| tp_situacao | A | Aberta |
| | N | Lançamento |
| | S | Solicitada |
| | F | Fechada |
| | C | Cancelada |
| | L | Licitação |
| | P | Parcialmente Atendida |
| tp_sol_com | P | Produtos |
| | S | Serviços |
| | C | |

## usu_estoque
**Descrição:** Permissões dos usuários nos estoques

| Campo | Valor | Significado |
|-------|-------|-------------|
| tp_usuario | T | Solicitar e Atender os produtos |
| | A | Atender os produtos |
| | S | Solicitar os produtos |
| tp_unid_transf | G | Relatório Gerencial |
| | E | Entrada |
| | C | Consumo |
| | B | Código de Barra |
| | R | Referencial |
| | V | Vendas |
| | 1 | Auxiliar 1 |
| | 2 | Auxiliar 2 |
| | 3 | Auxiliar 3 |
| | 4 | Auxiliar 4 |

## solsai_pro (Solicitação de saída de produtos)
**Descrição:** Solicitação de saída de produtos

| Campo | Valor | Significado |
|-------|-------|-------------|
| tp_situacao | P | Pedido |
| | S | Confirmado |
| | C | Parc. Atendido |
| | A | Cancelado |
| tp_solsai_pro | P | Pedido/Paciente |
| | S | Pedido/Setores |
| | E | Pedido/Estoque |
| | T | Pedido/Empresa |
| | C | Devolução/Pac |
| | D | Devolução/Setores |

## itord_pro
**Descrição:** Itens da ordem de compra de produto

## itord_ser
**Descrição:** Itens da ordem de compra de serviço
