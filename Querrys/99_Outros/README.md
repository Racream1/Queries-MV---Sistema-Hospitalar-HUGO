# QUERYS-MV

Repositório de queries SQL para Portlets do sistema MV, desenvolvido como banco de dados de consultas para elaboração, organização de dados e geração de indicadores hospitalares.

## 📋 Sobre o Projeto

Este repositório contém uma coleção de queries SQL desenvolvidas especificamente para uso em Portlets MV, sistema de gestão hospitalar. As queries foram criadas para facilitar a análise de dados, geração de indicadores e suporte à tomada de decisões em ambiente hospitalar.

## 🎯 Objetivo

Servir como repositório centralizado de queries SQL reutilizáveis para:
- Elaboração de novos indicadores hospitalares
- Organização e análise de dados clínicos e administrativos
- Suporte à gestão e controle de processos hospitalares
- Padronização de consultas SQL para o sistema MV
- Facilitar o desenvolvimento de novas portlets SQL

## 📂 Estrutura das Queries

As queries estão organizadas por área de atuação e tipo de indicador:

### 🦠 Infectologia e Controle de Infecção
- Ambulatório de infectologia (atendimentos, médias, CIDs prevalentes)
- Pareceres e avaliações de infectologia
- Antibioticoprofilaxia cirúrgica
- Auditoria de antimicrobianos
- Descolonização com mupirocina
- Painéis de controle infectológico

### ⏱️ Indicadores de Tempo e Fluxo
- Tempo médio de permanência (TMP)
- Tempo de resposta de pareceres
- Tempo entre alta médica e alta hospitalar
- Tempo de desocupação e alta administrativa
- Tempo de reserva e acomodação de leito
- Tempo de triagem até alocação em leito definitivo

### 🏥 Gestão Assistencial
- Atendimentos de emergência
- Resumo de pacientes internados
- Perfil assistencial
- Coleta de dados de pacientes crônicos
- Paciente-dia por CID
- Média de internação por CID (coluna, quadril, fêmur)

### 📊 Análise de Desempenho
- Taxa de absenteísmo ambulatorial
- Pareceres por especialidade e prestador
- Distribuição por dias da semana
- Gráficos e análises temporais

## 🚀 Como Utilizar

### Pré-requisitos
- Acesso ao sistema MV Soul
- Permissões para criação/edição de Portlets SQL
- Acesso à fonte de dados configurada no MV

### Passos para Implementação

1. **Acesse o módulo de Portlets SQL** no sistema MV
2. **Crie uma nova portlet** ou edite uma existente
3. **Selecione a fonte de dados** apropriada
4. **Copie a query** desejada deste repositório
5. **Cole no campo Query** da portlet
6. **Valide a query** usando o botão "Validar Query"
7. **Configure os parâmetros** necessários na aba "Parâmetros"
8. **Ajuste a formatação** conforme necessário na aba "Formatação"
9. **Configure gráficos** se aplicável (aba "Config. Gráfico")
10. **Teste e publique** a portlet

### Adaptações Necessárias

Ao utilizar as queries, você pode precisar ajustar:

```sql
-- Código da multi-empresa (padrão 40 nas queries)
WHERE A.CD_MULTI_EMPRESA = 40

-- Datas de referência
WHERE PM.DT_SOLICITACAO >= TO_DATE('01/01/2025', 'DD/MM/YYYY')

-- Filtros específicos de especialidade, setor, unidade, etc.
AND UPPER(ESP.DS_ESPECIALID) LIKE '%INFECT%'
```

## 📖 Documentação de Referência

O arquivo `PORTLETMV - ORIENTAÇÕES` contém informações detalhadas sobre:
- Cadastro de portlets SQL
- Configuração de parâmetros
- Formatação e visualização
- Links e drill-downs
- Configuração de gráficos
- Segurança e permissões

## 🔍 Exemplo de Query

Exemplo de query para pareceres de infectologia:

```sql
SELECT
    A.CD_ATENDIMENTO AS CodAtendimento,
    P.NM_PACIENTE AS NomePaciente,
    TO_CHAR(PM.DT_SOLICITACAO, 'DD/MM/YYYY HH24:MI') AS DataSolicitacao,
    PM.DS_SITUACAO AS StatusParecer
FROM PAR_MED PM
INNER JOIN ATENDIME A ON PM.CD_ATENDIMENTO = A.CD_ATENDIMENTO
INNER JOIN PACIENTE P ON A.CD_PACIENTE = P.CD_PACIENTE
WHERE A.CD_MULTI_EMPRESA = 40
ORDER BY PM.DT_SOLICITACAO DESC
```

## 🛠️ Variáveis do Sistema MV

As queries podem utilizar variáveis do sistema MV, como:
- Período de datas
- Unidade de internação
- Setor
- Prestador
- Especialidade
- Entre outras disponíveis na interface de portlets

## 📊 Tipos de Visualização

As queries podem ser apresentadas como:
- **Planilhas** (tabelas)
- **Gráficos** (barras, linhas, pizza, gauge, etc.)
- **Visualização mista** (planilha + gráfico)

## 🔐 Segurança

- Configure os papéis de acesso apropriados para cada portlet
- Defina permissões de leitura ou leitura/alteração conforme necessário
- Verifique os dados sensíveis antes de publicar portlets

## 🤝 Contribuindo

Para adicionar novas queries ao repositório:

1. Crie um arquivo com nomenclatura clara: `HOSPITAL - CATEGORIA. DESCRIÇÃO`
2. Inclua comentários explicativos no SQL
3. Documente os parâmetros necessários
4. Teste a query antes de adicionar ao repositório
5. Indique quais tabelas do MV são utilizadas

## 📝 Nomenclatura de Arquivos

Padrão adotado:
```
HOSPITAL - CATEGORIA. DESCRIÇÃO ESPECÍFICA
```

Exemplo:
```
HUGO - PARECERES. INFECTO
HUGO - TEMPO MÉDIO RESPOSTA PARECER (CIDS)
```

## ⚠️ Observações Importantes

- As queries são específicas para o ambiente MV Soul
- Ajuste os códigos de multi-empresa conforme seu ambiente
- Valide sempre as queries antes de usar em produção
- Considere o impacto de performance em consultas complexas
- Mantenha backup das portlets antes de alterações

## 📞 Suporte

Para questões relacionadas ao sistema MV:
- Consulte a documentação oficial do MV
- Entre em contato com o suporte técnico do MV
- Verifique as orientações no arquivo `PORTLETMV - ORIENTAÇÕES`

## 📄 Licença

Este repositório é mantido para fins de organização interna e compartilhamento de conhecimento sobre queries MV.

---

**Última atualização:** Outubro 2025
