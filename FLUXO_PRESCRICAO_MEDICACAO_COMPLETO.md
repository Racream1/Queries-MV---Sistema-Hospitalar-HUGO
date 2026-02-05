# Fluxo Completo de Prescrição de Medicação - Sistema MV

## Sumário
1. [Visão Geral](#1-visão-geral)
2. [Arquitetura de Tabelas](#2-arquitetura-de-tabelas)
3. [Etapa 1 - Prescrição Médica](#3-etapa-1---prescrição-médica)
4. [Etapa 2 - Aprazamento](#4-etapa-2---aprazamento)
5. [Etapa 3 - Solicitação à Farmácia](#5-etapa-3---solicitação-à-farmácia)
6. [Etapa 4 - Dispensação](#6-etapa-4---dispensação)
7. [Etapa 5 - Recebimento](#7-etapa-5---recebimento)
8. [Etapa 6 - Checagem/Administração](#8-etapa-6---checagemadministração)
9. [Etapa 7 - Dupla Checagem (MAV)](#9-etapa-7---dupla-checagem-mav)
10. [Tabelas de Cadastro Base](#10-tabelas-de-cadastro-base)
11. [Domínios e Valores](#11-domínios-e-valores)
12. [Queries de Referência](#12-queries-de-referência)

---

## 1. Visão Geral

### Fluxo Macro
```
MÉDICO              ENFERMAGEM           FARMÁCIA            ENFERMAGEM           ENFERMAGEM
   │                    │                    │                    │                    │
   ▼                    ▼                    ▼                    ▼                    ▼
┌────────┐        ┌──────────┐        ┌────────────┐        ┌──────────┐        ┌──────────┐
│PRESCREVE│───────►│ APRAZA   │───────►│ DISPENSA   │───────►│ RECEBE   │───────►│ CHECA    │
│         │        │ HORÁRIOS │        │            │        │          │        │(ADMINIST)│
└────────┘        └──────────┘        └────────────┘        └──────────┘        └──────────┘
                                                                                      │
                                                                                      ▼ (se MAV)
                                                                               ┌──────────────┐
                                                                               │DUPLA CHECAGEM│
                                                                               └──────────────┘
```

### Schemas Envolvidos
| Schema | Módulo | Descrição |
|--------|--------|-----------|
| `mvcpoe` | Prescrição Eletrônica | Prescrição, itens, aprazamento, checagem |
| `dbamv` | Backoffice | Farmácia, estoque, cadastros gerais |
| `dbasgu` | Segurança | Usuários e permissões |

---

## 2. Arquitetura de Tabelas

### Diagrama de Relacionamento Completo

```
                                    ┌─────────────────┐
                                    │    ATENDIME     │
                                    │  (Atendimento)  │
                                    └────────┬────────┘
                                             │ cd_atendimento
                                             │
┌─────────────────────────────────────────────────────────────────────────────────────────┐
│                              SCHEMA: MVCPOE                                             │
├─────────────────────────────────────────────────────────────────────────────────────────┤
│                                             │                                           │
│                                    ┌────────▼────────┐                                  │
│                                    │   PRESCRICAO    │                                  │
│                                    │  (Cabeçalho)    │                                  │
│                                    └────────┬────────┘                                  │
│                                             │ cd_prescricao                             │
│                                             │                                           │
│                                    ┌────────▼────────┐                                  │
│                                    │ITEM_PRESCRICAO  │◄─────────┐                       │
│                                    │ (Medicamentos)  │          │                       │
│                                    └────────┬────────┘          │                       │
│                                             │                   │                       │
│                        ┌────────────────────┼────────────────┐  │                       │
│                        │                    │                │  │                       │
│               ┌────────▼────────┐  ┌────────▼────────┐       │  │                       │
│               │    HORARIO_     │  │HORARIO_CONSUMO_ │       │  │                       │
│               │ITEM_PRESCRICAO  │  │ ITEM_PRESCRIC   │       │  │                       │
│               │  (Aprazamento)  │  │   (Checagem)    │       │  │                       │
│               └─────────────────┘  └─────────────────┘       │  │                       │
│                                                              │  │                       │
└──────────────────────────────────────────────────────────────┼──┼───────────────────────┘
                                                               │  │
┌──────────────────────────────────────────────────────────────┼──┼───────────────────────┐
│                              SCHEMA: DBAMV                   │  │                       │
├──────────────────────────────────────────────────────────────┼──┼───────────────────────┤
│                                                              │  │                       │
│    ┌─────────────┐      ┌─────────────┐                      │  │                       │
│    │   PRODUTO   │      │   TIP_FRE   │                      │  │                       │
│    │(Medicamento)│      │(Frequência) │                      │  │                       │
│    └──────┬──────┘      └──────┬──────┘                      │  │                       │
│           │ cd_produto         │ cd_tip_fre                  │  │                       │
│           │                    │                             │  │                       │
│           └────────────────────┴─────────────────────────────┘  │                       │
│                                                                 │                       │
│                                                    ┌────────────▼────────┐              │
│                                                    │    ITSOLSAI_PRO     │              │
│                                                    │(Item Solicitação)   │              │
│                                                    └────────────┬────────┘              │
│                                                                 │ cd_solsai_pro         │
│                                                    ┌────────────▼────────┐              │
│                                                    │     SOLSAI_PRO      │              │
│                                                    │ (Solicitação Saída) │              │
│                                                    └────────────┬────────┘              │
│                                                                 │                       │
│                                                    ┌────────────▼────────┐              │
│                                                    │   ITMVTO_ESTOQUE    │              │
│                                                    │ (Item Movimento)    │              │
│                                                    └────────────┬────────┘              │
│                                                                 │ cd_mvto_estoque       │
│                                                    ┌────────────▼────────┐              │
│                                                    │    MVTO_ESTOQUE     │              │
│                                                    │(Movimentação Estoque│              │
│                                                    └─────────────────────┘              │
│                                                                                         │
│    ┌─────────────────────────┐                                                          │
│    │HRITPRE_CONS_DUPLA_      │                                                          │
│    │      CHECAGEM           │◄── Vínculo com item_prescricao via cd_itpre_med          │
│    │  (Dupla Checagem MAV)   │                                                          │
│    └─────────────────────────┘                                                          │
│                                                                                         │
└─────────────────────────────────────────────────────────────────────────────────────────┘
```

---

## 3. Etapa 1 - Prescrição Médica

### Tabela: `mvcpoe.prescricao`
Cabeçalho da prescrição médica.

| Coluna | Tipo | Descrição |
|--------|------|-----------|
| `cd_prescricao` | NUMBER | **PK** - Código da prescrição |
| `cd_atendimento` | NUMBER | **FK** - Código do atendimento |
| `dh_prescricao` | DATE | Data/hora da prescrição |
| `tp_prescricao` | NUMBER | Tipo: 1=Medicamentos, 2=Cuidados, etc |
| `sn_fechado` | NUMBER | 0=Aberta, 1=Fechada |
| `cd_prestador` | NUMBER | **FK** - Médico prescritor |
| `cd_setor` | NUMBER | **FK** - Setor de origem |
| `dh_validade_ini` | DATE | Início da validade |
| `dh_validade_fim` | DATE | Fim da validade |
| `sn_vigente` | NUMBER | 0=Não vigente, 1=Vigente |

### Tabela: `mvcpoe.item_prescricao`
Itens (medicamentos) prescritos.

| Coluna | Tipo | Descrição |
|--------|------|-----------|
| `cd_item_prescricao` | NUMBER | **PK** - Código do item |
| `cd_prescricao` | NUMBER | **FK** - Código da prescrição |
| `cd_produto` | NUMBER | **FK** - Código do medicamento |
| `cd_frequencia` | NUMBER | **FK** - Código da frequência (tip_fre) |
| `qt_dose` | NUMBER | Quantidade por dose |
| `cd_unidade` | VARCHAR2 | Unidade de medida |
| `tp_situacao` | NUMBER | 1=SN, 2=Normal, 3=ACM, 4=Urgente |
| `sn_urgente` | NUMBER | 0=Não, 1=Sim |
| `sn_suspenso` | NUMBER | 0=Ativo, 1=Suspenso |
| `dh_suspensao` | DATE | Data/hora da suspensão |
| `cd_usuario_suspensao` | VARCHAR2 | Usuário que suspendeu |
| `ds_observacao` | VARCHAR2 | Observações do médico |
| `cd_via_aplicacao` | NUMBER | **FK** - Via de aplicação |
| `qt_velocidade_infusao` | NUMBER | Velocidade de infusão (ml/h) |
| `sn_se_necessario` | NUMBER | Administrar se necessário |
| `sn_acm` | NUMBER | A critério médico |
| `cd_motivo_suspensao` | NUMBER | **FK** - Motivo da suspensão |
| `nr_sequencia` | NUMBER | Sequência na prescrição |
| `dh_inicio_administracao` | DATE | Início da administração |
| `dh_fim_administracao` | DATE | Fim da administração |

### Regras de Negócio - Prescrição
1. Uma prescrição só pode ser editada enquanto `sn_fechado = 0`
2. Itens suspensos (`sn_suspenso = 1`) não geram solicitação
3. `tp_prescricao = 1` identifica prescrição de medicamentos
4. Prescrição vigente (`sn_vigente = 1`) é a ativa para o paciente

---

## 4. Etapa 2 - Aprazamento

### Tabela: `mvcpoe.horario_item_prescricao`
Horários programados para administração.

| Coluna | Tipo | Descrição |
|--------|------|-----------|
| `cd_item_prescricao` | NUMBER | **PK/FK** - Código do item |
| `dh_medicacao` | DATE | **PK** - Data/hora programada |
| `cd_usuario` | VARCHAR2 | **FK** - Usuário que aprazou |
| `dh_aprazamento` | DATE | Data/hora do aprazamento |
| `sn_cancelado` | NUMBER | 0=Ativo, 1=Cancelado |
| `cd_motivo_cancelamento` | NUMBER | **FK** - Motivo do cancelamento |
| `nr_sequencia` | NUMBER | Sequência do horário |

### Regras de Negócio - Aprazamento
1. Gerado automaticamente com base na frequência (`tip_fre`)
2. Pode ser ajustado manualmente pela enfermagem
3. Horários cancelados não geram cobrança/checagem
4. Cada horário representa uma administração planejada

### Exemplo de Frequências Comuns
| Código | Descrição | Intervalo |
|--------|-----------|-----------|
| 1 | 1x ao dia | 24h |
| 2 | 2x ao dia (12/12h) | 12h |
| 3 | 3x ao dia (8/8h) | 8h |
| 4 | 4x ao dia (6/6h) | 6h |
| 6 | 6x ao dia (4/4h) | 4h |
| 12 | Contínuo | - |

---

## 5. Etapa 3 - Solicitação à Farmácia

### Tabela: `dbamv.solsai_pro`
Cabeçalho da solicitação de saída.

| Coluna | Tipo | Descrição |
|--------|------|-----------|
| `cd_solsai_pro` | NUMBER | **PK** - Código da solicitação |
| `cd_atendimento` | NUMBER | **FK** - Código do atendimento |
| `cd_setor_solicitante` | NUMBER | **FK** - Setor que solicitou |
| `cd_setor_destino` | NUMBER | **FK** - Setor destino (farmácia) |
| `hr_solsai_pro` | DATE | Data/hora da solicitação |
| `tp_situacao` | VARCHAR2(1) | A/P/S/C (ver domínios) |
| `cd_usuario` | VARCHAR2 | **FK** - Usuário solicitante |
| `tp_solsai_pro` | VARCHAR2(1) | Tipo de solicitação |
| `cd_prescricao` | NUMBER | **FK** - Prescrição de origem |
| `sn_urgente` | VARCHAR2(1) | S=Urgente, N=Normal |

### Tabela: `dbamv.itsolsai_pro`
Itens da solicitação.

| Coluna | Tipo | Descrição |
|--------|------|-----------|
| `cd_itsolsai_pro` | NUMBER | **PK** - Código do item |
| `cd_solsai_pro` | NUMBER | **FK** - Código da solicitação |
| `cd_produto` | NUMBER | **FK** - Código do medicamento |
| `cd_itpre_med` | NUMBER | **FK** - Item da prescrição (item_prescricao) |
| `qt_solicitado` | NUMBER | Quantidade solicitada |
| `qt_atendida` | NUMBER | Quantidade atendida |
| `qt_devolvida` | NUMBER | Quantidade devolvida |
| `cd_uni_pro` | VARCHAR2 | Unidade do produto |
| `vl_unitario` | NUMBER | Valor unitário |

### Regras de Negócio - Solicitação
1. Gerada automaticamente ao fechar prescrição ou por rotina batch
2. Agrupa itens por farmácia de destino
3. `cd_itpre_med` vincula ao item original da prescrição
4. Quantidade pode ser fracionada em múltiplas dispensações

### Status da Solicitação (`tp_situacao`)
| Valor | Descrição | Significado |
|-------|-----------|-------------|
| P | Pendente | Aguardando atendimento da farmácia |
| S | Separada | Farmácia separou, aguarda conferência |
| A | Atendida | Totalmente atendida/dispensada |
| C | Cancelada | Solicitação cancelada |

---

## 6. Etapa 4 - Dispensação

### Tabela: `dbamv.mvto_estoque`
Cabeçalho da movimentação de estoque.

| Coluna | Tipo | Descrição |
|--------|------|-----------|
| `cd_mvto_estoque` | NUMBER | **PK** - Código do movimento |
| `cd_estoque` | NUMBER | **FK** - Estoque de origem (farmácia) |
| `cd_atendimento` | NUMBER | **FK** - Código do atendimento |
| `hr_mvto_estoque` | DATE | Data/hora da movimentação |
| `tp_mvto_estoque` | VARCHAR2(1) | Tipo: P=Prescrição |
| `cd_usuario` | VARCHAR2 | **FK** - Usuário que dispensou |
| `dt_entrega` | DATE | Data da entrega |
| `hr_entrega` | DATE | Hora da entrega |
| `nm_recebido` | VARCHAR2 | Nome de quem recebeu (texto livre) |
| `nm_usuario_recebe` | VARCHAR2 | **FK** - Usuário que recebeu |
| `cd_setor_destino` | NUMBER | **FK** - Setor de destino |
| `sn_conferido` | VARCHAR2(1) | S=Conferido, N=Não |

### Tabela: `dbamv.itmvto_estoque`
Itens da movimentação.

| Coluna | Tipo | Descrição |
|--------|------|-----------|
| `cd_itmvto_estoque` | NUMBER | **PK** - Código do item |
| `cd_mvto_estoque` | NUMBER | **FK** - Código da movimentação |
| `cd_produto` | NUMBER | **FK** - Código do medicamento |
| `cd_itsolsai_pro` | NUMBER | **FK** - Item da solicitação |
| `qt_movimentacao` | NUMBER | Quantidade movimentada |
| `vl_unitario` | NUMBER | Valor unitário |
| `cd_lote` | VARCHAR2 | Lote do medicamento |
| `dt_validade` | DATE | Validade do lote |
| `cd_uni_pro` | VARCHAR2 | Unidade de medida |

### Regras de Negócio - Dispensação
1. `tp_mvto_estoque = 'P'` identifica dispensação para prescrição
2. Baixa o estoque da farmácia
3. Vinculada à solicitação via `cd_itsolsai_pro`
4. Registra lote e validade para rastreabilidade
5. Pode haver múltiplas movimentações para uma solicitação (fracionamento)

---

## 7. Etapa 5 - Recebimento

### Campos na Tabela: `dbamv.mvto_estoque`
O recebimento é registrado na mesma tabela de movimentação.

| Coluna | Tipo | Descrição |
|--------|------|-----------|
| `dt_entrega` | DATE | Data em que foi entregue |
| `hr_entrega` | DATE | Hora da entrega |
| `nm_recebido` | VARCHAR2 | Nome de quem recebeu (digitado) |
| `nm_usuario_recebe` | VARCHAR2 | **FK** - Login do usuário que recebeu |
| `sn_conferido` | VARCHAR2(1) | S=Conferido, N=Não conferido |

### Regras de Negócio - Recebimento
1. Enfermagem confirma recebimento no setor
2. Obrigatório antes da checagem em alguns fluxos
3. Pode ser por usuário logado ou nome digitado
4. Permite rastreabilidade de quem recebeu o medicamento

---

## 8. Etapa 6 - Checagem/Administração

### Tabela: `mvcpoe.horario_consumo_item_prescric`
Registro de administração do medicamento.

| Coluna | Tipo | Descrição |
|--------|------|-----------|
| `cd_item_prescricao` | NUMBER | **PK/FK** - Código do item |
| `dh_medicacao` | DATE | **PK** - Data/hora aprazada |
| `dh_checagem` | DATE | Data/hora real da checagem |
| `cd_usuario` | VARCHAR2 | **FK** - Usuário que checou |
| `tp_checagem` | VARCHAR2(1) | A=Administrado, N=Não admin |
| `cd_motivo_nao_checagem` | NUMBER | **FK** - Motivo não administração |
| `ds_observacao` | VARCHAR2 | Observações da checagem |
| `sn_checado` | NUMBER | 0=Não, 1=Sim |
| `qt_administrada` | NUMBER | Quantidade efetivamente administrada |
| `cd_via_aplicacao` | NUMBER | **FK** - Via utilizada |

### Regras de Negócio - Checagem
1. Vincula horário aprazado com administração real
2. Registra diferença entre horário planejado x realizado
3. Permite registrar não-administração com motivo
4. Gera cobrança/consumo do medicamento
5. Base para indicadores de pontualidade

### Tipos de Checagem
| Valor | Descrição |
|-------|-----------|
| A | Administrado normalmente |
| N | Não administrado |
| P | Parcialmente administrado |
| S | Suspenso |

---

## 9. Etapa 7 - Dupla Checagem (MAV)

### Tabela: `dbamv.hritpre_cons_dupla_checagem`
Segunda conferência para medicamentos de alta vigilância.

| Coluna | Tipo | Descrição |
|--------|------|-----------|
| `cd_itpre_med` | NUMBER | **PK/FK** - Código do item prescrição |
| `dh_medicacao` | DATE | **PK** - Data/hora da medicação |
| `dh_checagem` | DATE | Data/hora da dupla checagem |
| `cd_usuario` | VARCHAR2 | **FK** - Segundo conferente |
| `cd_usuario_checagem` | VARCHAR2 | **FK** - Primeiro conferente |
| `sn_confere` | VARCHAR2(1) | S=Confere, N=Divergência |
| `ds_observacao` | VARCHAR2 | Observações |

### Identificação de Medicamentos de Alta Vigilância

**Tabela:** `dbamv.empresa_produto`

| Coluna | Tipo | Descrição |
|--------|------|-----------|
| `cd_produto` | NUMBER | **PK/FK** - Código do medicamento |
| `cd_multi_empresa` | NUMBER | **PK/FK** - Código da empresa |
| `sn_alta_vigilancia` | VARCHAR2(1) | S=Alta vigilância, N=Normal |

### Regras de Negócio - Dupla Checagem
1. Obrigatória para medicamentos com `sn_alta_vigilancia = 'S'`
2. Segundo profissional diferente do primeiro
3. Verifica: medicamento, dose, via, paciente, horário
4. Registro obrigatório antes da administração
5. Não pode ser a mesma pessoa da checagem principal

### Lista Típica de MAV (Exemplos)
- Insulinas
- Heparinas
- Opioides (morfina, fentanil)
- Quimioterápicos
- Eletrólitos concentrados (KCl, NaCl 20%)
- Sedativos (midazolam, propofol)
- Bloqueadores neuromusculares

---

## 10. Tabelas de Cadastro Base

### `dbamv.produto`
Cadastro de medicamentos.

| Coluna | Tipo | Descrição |
|--------|------|-----------|
| `cd_produto` | NUMBER | **PK** - Código do produto |
| `ds_produto` | VARCHAR2 | Nome/descrição do medicamento |
| `cd_especie` | NUMBER | **FK** - Espécie (medicamento, mat, etc) |
| `cd_classe` | VARCHAR2 | **FK** - Classe terapêutica |
| `sn_ativo` | VARCHAR2(1) | S=Ativo, N=Inativo |
| `cd_pro_fat` | NUMBER | Código de faturamento |
| `tp_produto` | VARCHAR2(1) | Tipo do produto |

### `dbamv.tip_fre`
Tipos de frequência/posologia.

| Coluna | Tipo | Descrição |
|--------|------|-----------|
| `cd_tip_fre` | NUMBER | **PK** - Código da frequência |
| `ds_tip_fre` | VARCHAR2 | Descrição (ex: "8/8 horas") |
| `qt_horas` | NUMBER | Intervalo em horas |
| `qt_vezes_dia` | NUMBER | Vezes por dia |
| `sn_ativo` | VARCHAR2(1) | S=Ativo, N=Inativo |

### `dbamv.via_aplicacao`
Vias de administração.

| Coluna | Tipo | Descrição |
|--------|------|-----------|
| `cd_via_aplicacao` | NUMBER | **PK** - Código da via |
| `ds_via_aplicacao` | VARCHAR2 | Descrição |
| `ds_sigla` | VARCHAR2 | Sigla (VO, EV, IM, SC, etc) |

### `dbasgu.usuarios`
Cadastro de usuários.

| Coluna | Tipo | Descrição |
|--------|------|-----------|
| `cd_usuario` | VARCHAR2 | **PK** - Login do usuário |
| `nm_usuario` | VARCHAR2 | Nome completo |
| `cd_prestador` | NUMBER | **FK** - Vínculo com prestador |
| `sn_ativo` | VARCHAR2(1) | S=Ativo, N=Inativo |

---

## 11. Domínios e Valores

### Status da Prescrição
| Campo | Valor | Descrição |
|-------|-------|-----------|
| `prescricao.sn_fechado` | 0 | Aberta (editável) |
| `prescricao.sn_fechado` | 1 | Fechada (não editável) |
| `prescricao.tp_prescricao` | 1 | Medicamentos |
| `prescricao.tp_prescricao` | 2 | Cuidados de enfermagem |
| `prescricao.tp_prescricao` | 3 | Dietas |

### Tipo de Situação do Item
| Campo | Valor | Descrição |
|-------|-------|-----------|
| `item_prescricao.tp_situacao` | 1 | Se Necessário (SN) |
| `item_prescricao.tp_situacao` | 2 | Normal |
| `item_prescricao.tp_situacao` | 3 | A Critério Médico (ACM) |
| `item_prescricao.tp_situacao` | 4 | Urgente |

### Status da Solicitação
| Campo | Valor | Descrição |
|-------|-------|-----------|
| `solsai_pro.tp_situacao` | P | Pendente |
| `solsai_pro.tp_situacao` | S | Separada |
| `solsai_pro.tp_situacao` | A | Atendida |
| `solsai_pro.tp_situacao` | C | Cancelada |

### Tipo de Movimento de Estoque
| Campo | Valor | Descrição |
|-------|-------|-----------|
| `mvto_estoque.tp_mvto_estoque` | P | Prescrição (dispensação) |
| `mvto_estoque.tp_mvto_estoque` | D | Devolução |
| `mvto_estoque.tp_mvto_estoque` | T | Transferência |
| `mvto_estoque.tp_mvto_estoque` | E | Entrada |
| `mvto_estoque.tp_mvto_estoque` | S | Saída direta |

### Flags Booleanos
| Campo | Valor 0/N | Valor 1/S |
|-------|-----------|-----------|
| `item_prescricao.sn_suspenso` | Ativo | Suspenso |
| `item_prescricao.sn_urgente` | Normal | Urgente |
| `empresa_produto.sn_alta_vigilancia` | Normal | Alta Vigilância |
| `mvto_estoque.sn_conferido` | Não conferido | Conferido |

---

## 12. Queries de Referência

### Query Master - Visão Geral das Prescrições
```sql
SELECT
    presc.cd_prescricao,
    a.cd_atendimento,
    pac.nm_paciente,
    lei.ds_resumo AS leito,
    ui.ds_unid_int AS unidade,
    presc.dh_prescricao,
    COUNT(DISTINCT it.cd_item_prescricao) AS total_itens,
    SUM(CASE WHEN itsol.qt_atendida > 0 THEN 1 ELSE 0 END) AS itens_atendidos,
    SUM(CASE WHEN sol.tp_situacao = 'P' THEN 1 ELSE 0 END) AS itens_pendentes
FROM mvcpoe.prescricao presc
INNER JOIN dbamv.atendime a ON presc.cd_atendimento = a.cd_atendimento
INNER JOIN dbamv.paciente pac ON a.cd_paciente = pac.cd_paciente
LEFT JOIN dbamv.leito lei ON a.cd_leito = lei.cd_leito
LEFT JOIN dbamv.unid_int ui ON lei.cd_unid_int = ui.cd_unid_int
INNER JOIN mvcpoe.item_prescricao it ON presc.cd_prescricao = it.cd_prescricao
LEFT JOIN dbamv.itsolsai_pro itsol ON itsol.cd_itpre_med = it.cd_item_prescricao
LEFT JOIN dbamv.solsai_pro sol ON sol.cd_solsai_pro = itsol.cd_solsai_pro
WHERE presc.tp_prescricao = 1
  AND NVL(it.sn_suspenso, 0) = 0
GROUP BY presc.cd_prescricao, a.cd_atendimento, pac.nm_paciente,
         lei.ds_resumo, ui.ds_unid_int, presc.dh_prescricao;
```

### Query Detalhe - Fluxo Completo do Item
```sql
SELECT
    -- Prescrição
    presc.cd_prescricao,
    it.cd_item_prescricao,
    prod.ds_produto AS medicamento,

    -- Aprazamento
    hr.dh_medicacao AS horario_aprazado,

    -- Solicitação
    sol.cd_solsai_pro,
    sol.hr_solsai_pro AS dh_solicitacao,
    sol.tp_situacao AS status_solicitacao,
    itsol.qt_solicitado,
    itsol.qt_atendida,

    -- Dispensação
    mv.hr_mvto_estoque AS dh_dispensacao,

    -- Recebimento
    mv.dt_entrega,
    mv.hr_entrega,
    mv.nm_recebido AS recebido_por,

    -- Checagem
    chk.dh_checagem,
    usu_chk.nm_usuario AS checado_por,

    -- Dupla Checagem
    dc.dh_checagem AS dh_dupla_checagem,
    usu_dc.nm_usuario AS dupla_checagem_por

FROM mvcpoe.prescricao presc
INNER JOIN mvcpoe.item_prescricao it ON presc.cd_prescricao = it.cd_prescricao
INNER JOIN dbamv.produto prod ON it.cd_produto = prod.cd_produto
LEFT JOIN mvcpoe.horario_item_prescricao hr ON hr.cd_item_prescricao = it.cd_item_prescricao
LEFT JOIN dbamv.itsolsai_pro itsol ON itsol.cd_itpre_med = it.cd_item_prescricao
LEFT JOIN dbamv.solsai_pro sol ON sol.cd_solsai_pro = itsol.cd_solsai_pro
LEFT JOIN dbamv.itmvto_estoque itmv ON itmv.cd_itsolsai_pro = itsol.cd_itsolsai_pro
LEFT JOIN dbamv.mvto_estoque mv ON mv.cd_mvto_estoque = itmv.cd_mvto_estoque AND mv.tp_mvto_estoque = 'P'
LEFT JOIN mvcpoe.horario_consumo_item_prescric chk
    ON chk.cd_item_prescricao = it.cd_item_prescricao
    AND chk.dh_medicacao = hr.dh_medicacao
LEFT JOIN dbasgu.usuarios usu_chk ON usu_chk.cd_usuario = chk.cd_usuario
LEFT JOIN dbamv.hritpre_cons_dupla_checagem dc
    ON dc.cd_itpre_med = it.cd_item_prescricao
    AND dc.dh_medicacao = hr.dh_medicacao
LEFT JOIN dbasgu.usuarios usu_dc ON usu_dc.cd_usuario = dc.cd_usuario
WHERE presc.cd_prescricao = :CD_PRESCRICAO;
```

### Query - Identificar Medicamentos de Alta Vigilância
```sql
SELECT
    it.cd_item_prescricao,
    prod.ds_produto,
    CASE WHEN ep.sn_alta_vigilancia = 'S' THEN 'SIM' ELSE 'NAO' END AS mav
FROM mvcpoe.item_prescricao it
INNER JOIN dbamv.produto prod ON it.cd_produto = prod.cd_produto
LEFT JOIN dbamv.empresa_produto ep
    ON ep.cd_produto = it.cd_produto
    AND ep.cd_multi_empresa = :CD_EMPRESA
WHERE it.cd_prescricao = :CD_PRESCRICAO
  AND NVL(it.sn_suspenso, 0) = 0;
```

### Query - Indicador de Checagens Pendentes
```sql
SELECT
    ui.ds_unid_int AS unidade,
    COUNT(*) AS total_aprazados,
    SUM(CASE WHEN chk.dh_checagem IS NOT NULL THEN 1 ELSE 0 END) AS checados,
    SUM(CASE WHEN chk.dh_checagem IS NULL AND hr.dh_medicacao < SYSDATE THEN 1 ELSE 0 END) AS atrasados
FROM mvcpoe.prescricao presc
INNER JOIN dbamv.atendime a ON presc.cd_atendimento = a.cd_atendimento
INNER JOIN dbamv.leito lei ON a.cd_leito = lei.cd_leito
INNER JOIN dbamv.unid_int ui ON lei.cd_unid_int = ui.cd_unid_int
INNER JOIN mvcpoe.item_prescricao it ON presc.cd_prescricao = it.cd_prescricao
INNER JOIN mvcpoe.horario_item_prescricao hr ON hr.cd_item_prescricao = it.cd_item_prescricao
LEFT JOIN mvcpoe.horario_consumo_item_prescric chk
    ON chk.cd_item_prescricao = hr.cd_item_prescricao
    AND chk.dh_medicacao = hr.dh_medicacao
WHERE presc.sn_fechado = 1
  AND presc.sn_vigente = 1
  AND NVL(it.sn_suspenso, 0) = 0
  AND TRUNC(hr.dh_medicacao) = TRUNC(SYSDATE)
GROUP BY ui.ds_unid_int;
```

---

## Anexo - Diagrama de Estados

```
┌─────────────────────────────────────────────────────────────────────────────────────────┐
│                           CICLO DE VIDA DO ITEM PRESCRITO                               │
└─────────────────────────────────────────────────────────────────────────────────────────┘

    ┌──────────┐
    │ PRESCRITO│ ──────────────────────────────────────────┐
    └────┬─────┘                                           │
         │                                                 │ (suspensão)
         ▼                                                 ▼
    ┌──────────┐                                    ┌──────────┐
    │ APRAZADO │                                    │ SUSPENSO │
    └────┬─────┘                                    └──────────┘
         │
         ▼
    ┌──────────┐
    │SOLICITADO│ ◄─────── tp_situacao = 'P' (Pendente)
    └────┬─────┘
         │
         ├────────────────────────────────────────────────┐
         │                                                │
         ▼                                                ▼
    ┌──────────┐                                    ┌──────────┐
    │ SEPARADO │ ◄── tp_situacao = 'S'              │CANCELADO │ ◄── tp_situacao = 'C'
    └────┬─────┘                                    └──────────┘
         │
         ▼
    ┌──────────┐
    │DISPENSADO│ ◄─── tp_situacao = 'A' + mvto_estoque criado
    └────┬─────┘
         │
         ▼
    ┌──────────┐
    │ RECEBIDO │ ◄─── dt_entrega + nm_recebido preenchidos
    └────┬─────┘
         │
         ▼
    ┌──────────┐
    │ CHECADO  │ ◄─── horario_consumo_item_prescric criado
    └────┬─────┘
         │
         ▼ (se MAV)
    ┌────────────────┐
    │DUPLA CHECAGEM  │ ◄─── hritpre_cons_dupla_checagem criado
    │   REALIZADA    │
    └────────────────┘
```

---

*Documento gerado para mapeamento do fluxo de prescrição de medicação - Sistema MV/Soul*
