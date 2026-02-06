# 14 - Regulatorio TISS e SUS

> TISS, ANS, AIH, APAC, SPED, REINF, Nota Fiscal

## Resumo

- **Tabelas**: 267
- **Owners**: DBAMV

---

## DBAMV.AIH_ALTA_ADM

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ATENDIMENTO | NUMBER | N |  |
| 2 | DT_INTERNACAO | DATE | N |  |
| 3 | DT_ALTA | DATE | Y |  |
| 4 | CD_LOG_EXPORT_ATENDIME | NUMBER | Y |  |
| 5 | CD_LOG_EXPORT_ALTA | NUMBER | Y |  |

---

## DBAMV.AIH_LONGA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ATENDIMENTO | NUMBER | N |  |
| 2 | DT_GERADO | DATE | N |  |
| 3 | NR_SEQUENCIA | NUMBER | Y |  |

---

## DBAMV.APAC

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_APAC | NUMBER | N |  |
| 2 | NR_APAC | NUMBER | Y |  |
| 3 | CD_FAT_SIA | NUMBER | N |  |
| 4 | CD_CONVENIO | NUMBER | N |  |
| 5 | CD_ORI_ATE | NUMBER | N |  |
| 6 | DT_INICIAL | DATE | N |  |
| 7 | DT_FINAL | DATE | N |  |
| 8 | TP_APAC | VARCHAR2 | Y | Tipo da APAC: 1-INICIAL 2-CONTINUIDADE 3-UNICA 4-ENCERRAMENTO |
| 9 | CD_TIP_ATE | NUMBER | N |  |
| 10 | CD_PACIENTE | NUMBER | N |  |
| 11 | CD_CID_PRINCIPAL | VARCHAR2 | Y |  |
| 12 | CD_CID_SECUNDARIO | VARCHAR2 | Y |  |
| 13 | SN_INDICADO_TRANSPLANTE | VARCHAR2 | Y |  |
| 14 | SN_LISTA_ESPERA_TRANSP | VARCHAR2 | Y |  |
| 15 | DT_INSCRICAO_TRANSP | DATE | Y |  |
| 16 | NR_TRANSPLANTES | NUMBER | Y |  |
| 17 | DT_TRANSPLANTE1 | DATE | Y |  |
| 18 | DT_TRANSPLANTE2 | DATE | Y |  |
| 19 | DT_TRANSPLANTE3 | DATE | Y |  |
| 20 | QT_CREATININA | NUMBER | Y |  |
| 21 | QT_UREIA_PRE | NUMBER | Y |  |
| 22 | QT_UREIA_POS | NUMBER | Y |  |
| 23 | SN_HEPATITE | VARCHAR2 | Y |  |
| 24 | SN_IHBSAG | VARCHAR2 | Y |  |
| 25 | SN_HIV | VARCHAR2 | Y |  |
| 26 | SN_HLA | VARCHAR2 | Y |  |
| 27 | CD_PRESTADOR | NUMBER | N |  |
| 28 | DT_INICIO_TRATAMENTO | DATE | Y |  |
| 29 | SN_METASTASE | VARCHAR2 | Y |  |
| 30 | CD_FINALIDADE | NUMBER | Y |  |
| 31 | DT_DIAGNOSTICO | DATE | Y |  |
| 32 | CD_ESTADIO | NUMBER | Y |  |
| 33 | CD_CID_IRRAD1 | VARCHAR2 | Y |  |
| 34 | CD_CID_IRRAD2 | VARCHAR2 | Y |  |
| 35 | CD_CID_IRRAD3 | VARCHAR2 | Y |  |
| 36 | NR_CAMPOS_IRRADIADOS | NUMBER | Y |  |
| 37 | NR_DURACAO_TRATAMENTO | NUMBER | Y |  |
| 38 | CD_MOTIVO_COBRANCA | NUMBER | Y |  |
| 39 | DT_TRANSPLANTE | DATE | Y |  |
| 40 | NR_AIH_TRANSPLANTE | NUMBER | Y |  |
| 41 | TP_RESULTADO_EXAME | VARCHAR2 | Y |  |
| 42 | DT_OCORRENCIA | DATE | Y |  |
| 43 | NR_CNPJ | NUMBER | Y |  |
| 44 | NR_NOTA | NUMBER | Y |  |
| 45 | SN_COPIA | VARCHAR2 | N |  |
| 46 | CD_REMESSA | NUMBER | Y |  |
| 47 | CD_TRANSPLANTE | VARCHAR2 | Y |  |
| 48 | DS_MEDICAMENTOS | VARCHAR2 | Y |  |
| 49 | SN_GERADO | VARCHAR2 | Y |  |
| 50 | SN_NORMAL | VARCHAR2 | Y |  |
| 51 | SN_COMPLEMETAR | VARCHAR2 | Y |  |
| 52 | SN_TRANSFERENCIA | VARCHAR2 | Y |  |
| 53 | NR_APAC_REFERENCIA | NUMBER | Y |  |
| 54 | CD_MULTI_EMPRESA | NUMBER | N | Coluna Criada na vers?o v4.5 |
| 55 | CD_APAC_GLOSA | NUMBER | Y | Codigo APAC da Glosa |
| 56 | NR_CPF_PACIENTE | VARCHAR2 | Y | Indica o CPF do paciente para comparac?o com o cpf do mesmo na proxima APAC |
| 57 | NR_PESO_PACIENTE | NUMBER | Y | Peso do(a) paciente. |
| 58 | NR_ALTURA_PACIENTE | NUMBER | Y | Altura do(a) paciente. |
| 59 | SN_GESTANTE | VARCHAR2 | Y | Indica se a paciente esta gestante ou n?o. |
| 60 | CD_UPS | NUMBER | Y | Codigo da Unidade Prestadoras de Servico |
| 61 | SN_APAC_AUTORIZADA_ENVIADA | VARCHAR2 | Y | Indica se a APAC Autorizada foi Enviada no arquivo magnetico para o INC. |
| 62 | NR_CNS_PACIENTE | VARCHAR2 | Y | Indica o CNS do paciente para comparac?o com o CNS do mesmo na proxima APAC |
| 63 | CD_CID_CAUSAS_ASSOCIADAS | VARCHAR2 | Y | Codigo do CID da causa associada |
| 64 | CD_CID_TOPOGRAFIA | VARCHAR2 | Y | Codigo do CID da topografia |
| 65 | SN_LINFONODOS | VARCHAR2 | Y | Indica se existe linfonodos acometidos pelo tumor |
| 66 | SN_CONTINUIDADE_TRATAMENTO | VARCHAR2 | Y | Indica se o tratamento solicitado ja vem sendo feito ou se trata de inicio de tratamento |
| 67 | NR_TOTAL_MESES_PLANEJADOS | NUMBER | Y | Numero de meses que o tratamento demandara, e nao com o numero de ciclos de quimioterapia |
| 68 | DT_SOLICITACAO_AUTORIZACAO_APA | DATE | Y | Data de Solicitacao da Autorizacao da APAC |
| 69 | DT_AUTORIZACAO_APAC | DATE | Y | Data de Autorizacao da APAC Solicitada |
| 70 | CD_ORGAO_EMISSOR | VARCHAR2 | Y | Codigo do Orgao Emissor |
| 71 | NR_CNES_EXECUTANTE | NUMBER | Y | Numero do CNES executante |
| 72 | CD_CID_MORFOLOGIA | VARCHAR2 | Y | Informa CID Morfologico |
| 73 | DT_INI_CID_IRRAD1 | DATE | Y | Data de inicio do primeiro CID de irradiac?o |
| 74 | DT_INI_CID_IRRAD2 | DATE | Y | Data de inicio do segundo CID de irradiac?o |
| 75 | DT_INI_CID_IRRAD3 | DATE | Y | Data de inicio do terceiro CID de irradiac?o |
| 76 | DT_FIM_CID_IRRAD1 | DATE | Y | Data final do primeiro CID de irradiac?o |
| 77 | DT_FIM_CID_IRRAD2 | DATE | Y | Data final do segundo CID de irradiac?o |
| 78 | DT_FIM_CID_IRRAD3 | DATE | Y | Data final do terceiro CID de irradiac?o |
| 79 | NR_CAMPO_INSERCOES1 | NUMBER | Y | Numero de campos inserc?es |
| 80 | NR_CAMPO_INSERCOES2 | NUMBER | Y | Numero de campos inserc?es |
| 81 | NR_CAMPO_INSERCOES3 | NUMBER | Y | Numero de campos inserc?es |
| 82 | NR_DURACAO_TRATAMENTO_AUT | NUMBER | Y | Durac?o autorizada do tratamento |
| 83 | CD_GRAU_HISTOPATOLOGICO | VARCHAR2 | Y | Grau histopatologico |
| 84 | CD_CID_TRAT_ANT1 | VARCHAR2 | Y | CID tratamento anterior 1 |
| 85 | CD_CID_TRAT_ANT2 | VARCHAR2 | Y | CID tratamento anterior 2 |
| 86 | CD_CID_TRAT_ANT3 | VARCHAR2 | Y | CID tratamento anterior 3 |
| 87 | CD_MOTIVO_COBRANCA_P321 | NUMBER | Y | Codigo do motivo da cobranca apos portaria 321 |
| 88 | QT_DIURESE | NUMBER | Y | Quantidade diurese |
| 89 | QT_GLICOSE | NUMBER | Y | Quantidade glicose |
| 90 | QT_ALBUMINA | NUMBER | Y | Quantidade albumina |
| 91 | QT_HB | NUMBER | Y | Quantidade HB |
| 92 | SN_ACESSO_VASCULAR | VARCHAR2 | Y | Sim/N?o Acesso vascular |
| 93 | SN_HBS_AG | VARCHAR2 | Y | Positivo/Negativo HBs Ag |
| 94 | SN_ULTRA_SONOGRAFIA_ABDOMINAL | VARCHAR2 | Y | Sim/N?o Sonografia Abnominal |
| 95 | SN_HCV | VARCHAR2 | Y | Positivo/Negativo HCV |
| 96 | CD_AUTORIZADOR | NUMBER | Y |  |
| 97 | QT_INTERVENCAO_FISTOLA | NUMBER | Y | Quantidade intervenc?o de fistola |
| 98 | SN_INSCRITO_LISTA_CNCDO | VARCHAR2 | Y | Sim/N?o inscrito lista CNCDO |
| 99 | NR_IMC_PACIENTE | NUMBER | Y | Indice de Massa Corporea do paciente |
| 100 | NR_AIH_BAR | NUMBER | Y | Numero AIH Cirurgia Bariatrica |
| 101 | CD_PROCEDIMENTO_AIH_BAR1 | VARCHAR2 | Y | Numero Procedimento AIH Cirurgia Bariatrica 1 |
| 102 | CD_PROCEDIMENTO_AIH_BAR2 | VARCHAR2 | Y | Numero Procedimento AIH Cirurgia Bariatrica 2 |
| 103 | CD_PROCEDIMENTO_AIH_BAR3 | VARCHAR2 | Y | Numero Procedimento AIH Cirurgia Bariatrica 3 |
| 104 | DT_CIRURGIA_BAR | DATE | Y | Data Cirurgia Bariatrica Pos |
| 105 | DT_CIRURGIA_POS_BAR | DATE | Y |  |
| 106 | QT_MESES_ACOMP_BAR | NUMBER | Y | Quantidade de meses Acompanhamento |
| 107 | DT_ACOMP_BAR | DATE | Y | Ano de Acompanhamento |
| 108 | CD_PONTUACAO_BAR | NUMBER | Y | Pontuac?o de Barros |
| 109 | CD_TABELA_BAR | NUMBER | Y | Tabela de Barros |
| 110 | NR_AIH_BAR_POS | NUMBER | Y | Numero AIH Pos Cirurgia Bariatrica |
| 111 | TP_MARCA_PROTESE | VARCHAR2 | Y | Marca da protese: 1-PIP 2-ROFIL |
| 112 | DT_IMPLANTACAO_PROTESE | DATE | Y | Ano de implantac?o da protese |
| 113 | NR_CNES_IMPLANTACAO_PROTESE | NUMBER | Y | Numero do CNES onde a protese foi implantada |
| 114 | VL_PERC_EXCESSO_PESO_PERDIDO | NUMBER | Y | Percentual de excesso de peso perdido % |
| 115 | VL_QUILOS_PERDIDOS | NUMBER | Y | Quilogramas Perdidos kg |
| 116 | SN_GASTRECTOMIA_DUODENAL | VARCHAR2 | Y | Gastrectomia com ou sem desvio duodenal S = Sim, N = N?o |
| 117 | SN_GASTRECTOMIA_VERTICA_MANGA | VARCHAR2 | Y | Gastrectomia Vertica em Manga (Sleeve) S = Sim, N = N?o |
| 118 | SN_GASTROPLASTIA_DERIV_INTEST | VARCHAR2 | Y | Gastroplastia com derivac?o intestinal S = Sim, N = N?o |
| 119 | SN_GASTRECTOMIA_VERT_BANDA | VARCHAR2 | Y | Gastroplastia vertical com banda S = Sim, N = N?o |
| 120 | SN_COMORBIDADES | VARCHAR2 | Y | Comorbidades S = Sim, N = N?o |
| 121 | SN_HIPERT_ARTERIAL_SISTEMICA | VARCHAR2 | Y | Hipert.Arterial Sistemica |
| 122 | SN_DISLIPIDEMIA | VARCHAR2 | Y | Dislipidemia |
| 123 | SN_ARTROSE | VARCHAR2 | Y | Artrose |
| 124 | SN_APNEIA | VARCHAR2 | Y | Apneia |
| 125 | CD_CID_OUTROS | VARCHAR2 | Y |  |
| 126 | SN_USO_MEDICAMENTOS | VARCHAR2 | Y | Uso de Medicamentos S = Sim, N = N?o |
| 127 | SN_PRATICA_ATIVIDADE_FISICA | VARCHAR2 | Y | Pratica Atividade Fisica S = Sim, N = N?o |
| 128 | SN_USO_POLIVITAMINICOS | VARCHAR2 | Y | Uso de Polivitaminico S = Sim, N = N?o |
| 129 | SN_REGANHO_PESO | VARCHAR2 | Y | Reganho de Peso |
| 130 | SN_ALIMEN_SAUDADEL_BALANCEADA | VARCHAR2 | Y | Houve ades?o a uma alimentac?o saudavel e balanceada S = Sim, N = N?o |
| 131 | SN_DERMOLIC_ABDOM_POS_BARIAT | VARCHAR2 | Y | Dermilopectomia abdominal pos-pariatrica S = Sim, N = N?o |
| 132 | QT_TMP_POS_CIRURGIA_BARIATRICA | NUMBER | Y | Tempo pos cirugia bariatrica (meses) |
| 133 | SN_MAMOPLASTIA_POS_BARIATRICA | VARCHAR2 | Y | Mamoplastia pos-bariatrica S = Sim, N = N?o |
| 134 | QT_TMP_MAMAPLASTICA_POS | NUMBER | Y | Tempo pos cirugia bariatrica (meses) |
| 135 | SN_DERMOLIC_BRANQ_POS_BARIAT | VARCHAR2 | Y | Dermolictomia Braquial pos-bariatrica (S = Sim, N = N?o) |
| 136 | QT_TMP_DERMOLICTOMIA_BRANQUIAL | NUMBER | Y | Tempo pos cirugia bariatrica (meses) |
| 137 | SN_DERMOLIC_CRURAL_POS_BARIAT | VARCHAR2 | Y | Dermolictomia Crural pos-bariatrica (S = Sim, N = N?o) |
| 138 | QT_TMP_DERMOLICTOMIA_CRURAL | NUMBER | Y | Tempo pos cirugia bariatrica (meses) |
| 139 | SN_DERM_ABDOM_CIRC_POS_BARIAT | VARCHAR2 | Y | Dermolictomia abdminal circunferencial pos-bariatrica (S = Sim, N = N?o) |
| 140 | QT_TMP_DERMOLICTOMIA_ABDOMINAL | NUMBER | Y | Tempo pos cirugia bariatrica (meses) |
| 141 | VL_IMC_ATUAL | NUMBER | Y | IMC ATUAL do Paciente |
| 142 | DT_AVALIACAO_ATUAL | DATE | Y | Data avaliac?o ATUAL |
| 143 | VL_PESO | NUMBER | Y | Peso (kg) |
| 144 | VL_IMC_PRIMEIRA_AVALIACAO | NUMBER | Y | IMC da Primeira Avalic?o |
| 145 | DT_PRIMEIRA_AVALIACAO | DATE | Y | Data da Primeira avaliac?o |
| 146 | SN_NUTRICIONISTA | VARCHAR2 | Y | Nutricionista (S = Sim, N = N?o) |
| 147 | SN_PSIQUIATRIA | VARCHAR2 | Y | Psiquiatra (S = Sim, N = N?o) |
| 148 | SN_CIRURGIAO_GERAL | VARCHAR2 | Y | Cirurgi?o Geral (S=Sim,N=N?o) |
| 149 | SN_PSICOLOGO | VARCHAR2 | Y | Psicologo (S = Sim, N = N?o) |
| 150 | SN_ENDOCRINO | VARCHAR2 | Y | Endocrino (S = Sim, N = N?o) |
| 151 | SN_CLINICO | VARCHAR2 | Y | Clinico (S = Sim, N = N?o) |
| 152 | SN_CIRURG_APARELHO_DIGESTIVO | VARCHAR2 | Y | Cirurgi?o do aparelho digestivo (S = Sim, N = N?o) |
| 153 | SN_REUNIOES_GRP_MULTIPROFIS | VARCHAR2 | Y | Participou de Reuni?es do grupo multiprofissionais (S = Sim, N = N?o) |
| 154 | SN_AVALIACAO_RISCO_CIRURGICO | VARCHAR2 | Y | Avaliac?o do risco cirurgico (S = Sim, N = N?o) |
| 155 | SN_EXAMES_LABORATORIAIS | VARCHAR2 | Y | Realizado Exames Laboratoriais (S = Sim, N = N?o) |
| 156 | SN_DIABETES_MELLITUS | VARCHAR2 | Y | Diabetes Mellitus |
| 157 | SN_ESOFAGOGASTRODUODENOSCOPIA | VARCHAR2 | Y | Esofagogastroduodenoscopia (S = Sim, N = N?o) |
| 158 | SN_PERDA_PONDERAL | VARCHAR2 | Y |  |
| 159 | SN_ULTRASON_ABDOMEN_TOTAL | VARCHAR2 | Y | Ultra-sonografia de abdomen total (S = Sim, N = N?o) |
| 160 | SN_ECOCARDIO_TRASTORATICA | VARCHAR2 | Y | Ecocardiografia trastoracica (S = Sim, N = N?o) |
| 161 | SN_ULTRASSO_DOPLLER_COLORIDO | VARCHAR2 | Y | Ultrassonografia dopller colorido (ate 3 vasos) (S = Sim, N = N?o) |
| 162 | SN_PRV_FUNC_PULM_COMP_BRONCO | VARCHAR2 | Y | Prova de funcc?o plumonar completa com broncodialatador (espirometria) (S = Sim, N = N?o) |
| 163 | SN_APTO_PROCEDIMENTO_CIRURGICO | VARCHAR2 | Y | Apto para procedimento cirurgiso (S = Sim, N = N?o, A = Ainda em preparo) |
| 164 | SN_FATURA_IMPRESSA | VARCHAR2 | Y | Campo para registrar a impress?o da fatura |
| 165 | CD_LAUDO | NUMBER | Y | Codigo do Laudo na APAC |
| 166 | SN_FECHADA | VARCHAR2 | Y | INFORMA SE AS CONTAS EST?O FECHADAS |
| 167 | TP_MODALIDADE_ATENDIMENTO | VARCHAR2 | Y | Identifica o Tipo da Modalidade do Atendimento no Lancamento da APAC |
| 168 | NR_SEQAPAC | NUMBER | Y | Identifica o sequencial da guia da APAC |
| 169 | CD_ATENDIMENTO | NUMBER | Y | Código do atendimento. |
| 170 | CD_CARATER_ATENDIMENTO | NUMBER | Y | Código da carateristica do atendimento |
| 171 | CD_PROCEDIMENTO_PRINCIPAL | VARCHAR2 | Y | Código do procedimento principal da apac. |
| 172 | NR_TRU | NUMBER | Y |  |
| 173 | DT_IDENT_PATOLOGICA_CH | DATE | Y |  |
| 174 | SN_CIRURGIA_BARIATRICA_VIDEO | VARCHAR2 | Y | Cirurgia Bariátrica por Vídeo (S = Sim, N = Não) |

---

## DBAMV.APAC_ASSOCIACAO
> Lista de associacoes realizadas por APAC

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LAUDO | NUMBER | N | Codigo do laudo APAC |
| 2 | CD_ASSOCIACAO | VARCHAR2 | N | Codigo da associacao desejada |

---

## DBAMV.APAC_OUTROS
> Detalhe complementares da cobranca de APAC

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LAUDO | NUMBER | N | Codigo do Laudo de APAC |
| 2 | TP_TRATAMENTO | VARCHAR2 | N | Tipo do dado complementar |
| 3 | TP_LOCALIZACAO | VARCHAR2 | N | Detalhe: Direito/Esquerdo |
| 4 | DS_MAPEAMENTO_RETINA | VARCHAR2 | Y | Quando tipo O: Dados do mapeamento de retina |
| 5 | DS_CAUSA_CATARATA | VARCHAR2 | Y | Quando tipo O: Dados da causa de catarata |
| 6 | NR_ACUIDADE_VISUAL | NUMBER | Y | Quando tipo O: Acuidade visual |
| 7 | SN_MUTIRAO | VARCHAR2 | Y | Quando tipo O: S/N para mutir?o |
| 8 | DS_BIOMICROSCOPIA | VARCHAR2 | Y | Quando tipo O: Dados da Biomicroscopia |
| 9 | DS_COMPLEMENTO | VARCHAR2 | Y | Quando tipo O: Dados complementares |

---

## DBAMV.APAC_PENDENTE
> Tabela de APACS pendentes

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ATENDIMENTO | NUMBER | N | Codigo do atendimento |
| 2 | CD_TIP_ATE | NUMBER | N | Tipo Atendimento |
| 3 | DT_COMPETENCIA | DATE | N | Data da competencia |
| 4 | CD_PRESTADOR | NUMBER | Y | Codigo do Prestador |
| 5 | CD_SSM | VARCHAR2 | Y | Codigo ssm |
| 6 | DT_PREENCHE_APAC | DATE | Y | Data do preenchimento da APAC |

---

## DBAMV.APAC_QUIMIO_MEDICAMENTOS
> Relação de medicamentos por apac

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_APAC | NUMBER | N | Código da apac |
| 2 | CD_MEDICAMENTO | NUMBER | N | Código do medicamento |

---

## DBAMV.APAC_SAUDE_AUDITIVA
> Tabela de justificativa de tratamento da saude auditiva

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LAUDO | NUMBER | N | Codigo do Laudo |
| 2 | CD_GRUPO_JUSTIFICATIVA | NUMBER | N | Codigo do grupo |
| 3 | CD_JUSTIFICATIVA_PROCEDIMENTO | NUMBER | N | Codigo da Justificativa |

---

## DBAMV.APAC_SESSAO
> Sess?es realizadas

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LAUDO | NUMBER | N | Codigo do Laudo de APAC |
| 2 | CD_PROCEDIMENTO | VARCHAR2 | N | Codigo do Procedimento SUS |
| 3 | DT_SESSAO | DATE | N | Data de Sess?o |
| 4 | QT_SESSAO | NUMBER | Y | Quantidade de sess?o |
| 5 | CD_SETOR | NUMBER | Y | Codigo do Setor |

---

## DBAMV.AUTOMATIZA_SERVICO_SUS
> Tabela de automatizac?o de servicos SUS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_AUTOMATIZACAO | NUMBER | N | Codigo de ordem da automatizac?o |
| 2 | CD_SERVICO_SUS | VARCHAR2 | N | Codigo do servico SUS |
| 3 | CD_CLASSIFICACAO_SUS | VARCHAR2 | N | Codigo da classificac?o do servico SUS |
| 4 | CD_SER_DIS | NUMBER | Y | Codigo do servico de diagnostico |
| 5 | CD_SERVICO_URGENCIA | NUMBER | Y | Codigo do servico de urgencia |
| 6 | CD_PROCEDIMENTO | VARCHAR2 | Y | Codigo do procedimento SUS |

---

## DBAMV.CADASTRO_TRANSPLANTE_CMN
> Tabela para cadastro de Transplantes

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TRANSPLANTE_CMN | NUMBER | N | Codigo do Transplante |
| 2 | CD_PACIENTE | NUMBER | N | Codigo do Paciente |
| 3 | CD_CMN | VARCHAR2 | N | Codigo do CMN |
| 4 | DT_CADASTRO_CMN | DATE | N | Data do Cadastro |
| 5 | DT_GRAVACAO | DATE | N | Data da Gravac?o |
| 6 | CD_USUARIO_CMN | VARCHAR2 | N | Nome do Usuario da Gravac?o e Alterac?o |

---

## DBAMV.CADASTRO_TRANSPLANTE_RGCT
> Tabela para cadastro de Transplantes

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TRANSPLANTE_RGCT | NUMBER | N | Codigo do Transplante |
| 2 | CD_PACIENTE | NUMBER | Y | Codigo do Paciente |
| 3 | CD_RGCT | VARCHAR2 | Y | Codigo do RGCT |
| 4 | DT_CADASTRO_RGCT | DATE | Y | Data do Cadastro |
| 5 | DT_GRAVACAO | DATE | Y | Data da Gravac?o |
| 6 | CD_ORGAO | NUMBER | Y | Codigo do Org?o |
| 7 | SN_APTO | VARCHAR2 | Y | Informa se esta ou n?o Apto |
| 8 | CD_USUARIO_RGCT | VARCHAR2 | Y | Nome do Usuario da Gravac?o e Alterac?o |
| 9 | DT_ALTERACAO_APTO | DATE | Y | Data de Alterac?o do status do paciente |
| 10 | DS_MOTIVO_APTO | VARCHAR2 | Y | Motivo da alterac?o do status do paciente |
| 11 | TIPO_PACIENTE | CHAR | Y | Informa o tipo do paciente (D) Doador / (R) Receptor |
| 12 | SN_RETIRADO_HOSPITAL | CHAR | Y | Indica se o Org?o foi retirado ou n?o no hospital |
| 13 | CD_CADASTRO_DOADOR | NUMBER | Y | O codigo da ficha de doador que foi associado com o org?o doado (fk) |
| 14 | DT_TRANSPLANTE | DATE | Y | Data em que o transplante foi realizado |
| 15 | STATUS_DOACAO | CHAR | Y | Status Doac?o NT- NAO TRANSPLANTADO TR - TRANSPLANTADO AG - AGUARDANDO DR - DOADO REJEITADO DA - ... |

---

## DBAMV.CBO
> Cadastro de CBOS usado pelo SUS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CBOS | VARCHAR2 | N |  |
| 2 | DS_CBOS | VARCHAR2 | Y |  |

---

## DBAMV.CBOS
> Cadastro de CBOS usado pelo TISS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CBOS | VARCHAR2 | N | Codigo CBO-S |
| 2 | DS_CBOS | VARCHAR2 | N | Descricao do Codigo CBO-S |

---

## DBAMV.CEP_LOGRADOUROS_SUS
> Tabela de auxilio da CEP_LOGRADOUROS para o SUS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NR_CEP | NUMBER | N | Numero do CEP |
| 2 | DS_RESUMO_LOGRADOURO | VARCHAR2 | N | Resumo personalizado da descric?o. |
| 3 | TP_CONVENIO | VARCHAR2 | Y |  |

---

## DBAMV.CID_INDICACAO_SUS
> Tabela de CID de indicac?o SUS.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CID_INDICACAO | VARCHAR2 | N | Codigo do CID de indicac?o |
| 2 | DS_CID_INDICACAO | VARCHAR2 | N | Descric?o do CID de indicac?o |
| 3 | SN_ATIVO | VARCHAR2 | N | Identifica se o CID de indicac?o encontra-se ativo ou n?o. |

---

## DBAMV.CIHA_DE_PARA_CID
> Tabela de configurac?o do modulo CIHA-SUS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da multi-empresa |
| 2 | CD_CID_ORIGEM | VARCHAR2 | N | Codigo de CID origem |
| 3 | CD_CID_DESTINO | VARCHAR2 | N | Codigo de CID destino |
| 4 | DT_VALIDADE_INICIAL | DATE | N | Data inicial da validade do relacionameto |
| 5 | DT_VALIDADE_FINAL | DATE | Y | Data de validade final do relacionamento |
| 6 | DT_CADASTRO | DATE | N | Data e hora do relacionamento CIHA |
| 7 | NM_USUARIO | VARCHAR2 | N | Nome do usuario que efetivou o relacionamento |

---

## DBAMV.CNS_CADSUS
> Tabela para importac?o dos CNS Provisorios do sistema CADSUS.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NR_CNS | VARCHAR2 | N | Cart?o nacional de saude. |
| 2 | DT_IMPORTADO | DATE | N | Data da importac?o do arquivo. |
| 3 | SN_USADO | VARCHAR2 | N | Marca se ja foi utilizado. |
| 4 | DT_USADO | DATE | Y | Data da atribuic?o do CNS ao paciente. |
| 5 | DT_EXPORTADO | DATE | Y | Data da exportac?o do CNS. |

---

## DBAMV.COMUNICACAO_BENEFICIARIO
> Registro do TISS para Comunicac?o de Internac?o e Alta com a operadora

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ATENDIMENTO | NUMBER | N | Codigo do atendimento |
| 2 | CD_PACIENTE | NUMBER | N | Codigo do Paciente |
| 3 | DT_COMUNICACAO | DATE | N | Data da solicitac?o de comunicac?o |
| 4 | CD_CONVENIO | NUMBER | N | Codigo do convenio |
| 5 | DS_FALHA | VARCHAR2 | Y | Ocorrencia de falha |
| 6 | DT_OCORRENCIA | DATE | Y | Data do ultimo processamento |
| 7 | TP_COMUNICACAO | VARCHAR2 | N | Tipo da solicitac?o de comunicac?o |
| 8 | TP_STATUS | VARCHAR2 | Y | Estado da solicitac?o |
| 9 | ID_MENSAGEM | NUMBER | Y | Codigo da multi-empresa |
| 10 | CD_MULTI_EMPRESA | NUMBER | Y |  |
| 11 | NM_USUARIO_DESCARTE | VARCHAR2 | Y | usuario que descartou a comunicac?o |

---

## DBAMV.CONF_GERA_TISS_VAZIA
> Tabela para configurar a impressão das guias TISS vazias (Santa Joana)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONF_GERA_TISS_VAZIA | NUMBER | N | Sequence da tabela |
| 2 | CD_MULTI_EMPRESA_ORIGEM | NUMBER | N | Empresa principal |
| 3 | CD_MULTI_EMPRESA_DESTINO | NUMBER | N | Empresa vinculada |
| 4 | TP_GUIA | VARCHAR2 | N | Tipo da Guia (RI, SP, HI) |

---

## DBAMV.CONT_NF_SIMPLES_REMESSA
> TABELA PARA REGISTRO DE PERIODO DE CONTINGENCIA DE NOTA FISCAL ELETRONICA DE SIMPLES REMESSA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONT_NF_SIMPLES_REMESSA | NUMBER | N | CODIGO SEQUENCIAL DA TABELA |
| 2 | CD_MULTI_EMPRESA | NUMBER | N | CODIGO DA EMPRESA ASSOCIADO A CONTINGENCIA |
| 3 | TP_CONTINGENCIA | VARCHAR2 | N | TIPO DA CONTINGENCIA (SCV) |
| 4 | DS_JUSTIFICATIVA | VARCHAR2 | N | JUSTIFICATIVA PARA EMISSAO EM CONTINGENCIA |
| 5 | DH_INICIO | DATE | N | DATA E HORA DE INICIO DE EMISSAO EM CONTINGENCIA |
| 6 | DH_FIM | DATE | N | DATA E HORA DE TERMINO DE EMISSAO EM CONTINGENCIA |
| 7 | SN_ATIVO | VARCHAR2 | N | STATUS DO PERIODO DE CONTINGENCIA (A = ATIVO, I = INATIVO) |

---

## DBAMV.CORTE_DIARIA_UTI_SUS
> Relação do corte de diárias uti sus

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REG_FAT | NUMBER | N | Código da conta |
| 2 | CD_LANCAMENTO | NUMBER | N | Código do lançamento |
| 3 | DT_COMPETENCIA | DATE | N | Competência da diária |
| 4 | CD_PROCEDIMENTO | VARCHAR2 | N | Código do procedimento uti sus |
| 5 | QT_LANCADA_INI | NUMBER | Y | Quantidade diária inicial |
| 6 | QT_LANCADA_ATU | NUMBER | N | Quantidade diária atual |

---

## DBAMV.DCIH

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DCIH | NUMBER | N |  |
| 2 | NR_DCIH | VARCHAR2 | N |  |
| 3 | CD_ESPEC_SUS | VARCHAR2 | Y |  |
| 4 | QT_CONTAS | NUMBER | Y |  |

---

## DBAMV.DECENDIOS_FAT_SIA
> Tabela de decendios por fatura SIA-SUS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FAT_SIA | NUMBER | N | Codigo da fatura SIA-SUS |
| 2 | CD_DECENDIO | NUMBER | N | Codigo do decendio |
| 3 | DS_DECENDIO | VARCHAR2 | N | Descricao do decendio |
| 4 | DT_INICIAL | DATE | N | Data inicial do periodo do decendio |
| 5 | DT_FINAL | DATE | N | Data final do periodo do decendio |
| 6 | SN_ABERTO | VARCHAR2 | N | Define se decendio esta aberto ou fechado |

---

## DBAMV.DEDUCAO_NOTA_FISCAL
> Tabela para cadastrar as Deducoes da nota fiscal

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DEDUCAO | NUMBER | N | Campo numerico gerado pelo sistema. |
| 2 | CD_CONVENIO | NUMBER | Y | Codigo do convenio. FK |
| 3 | CD_PRO_FAT | VARCHAR2 | Y | Codigo do procedimento. FK |
| 4 | CD_GRU_PRO | NUMBER | Y | Codigo do grupo procedimento. FK |
| 5 | CD_GRU_FAT | NUMBER | Y | codigo do grupo faturamento. FK |
| 6 | TP_GRU_FAT | VARCHAR2 | Y | Tipo do grupo faturamento. aceita os seguintes valores: 'SH' , 'SP' , 'SD' , 'MD' , 'MT' , 'MM' ,... |
| 7 | SN_VALOR_TOTAL | VARCHAR2 | Y | Indica se o calculo sera sobre o valor total. |
| 8 | SN_VALOR_FILME | VARCHAR2 | Y | Indica se o calculo sera sobre o valor do filme. |
| 9 | SN_VALOR_OPERACIONAL | VARCHAR2 | Y | Indica se o calculo sera sobre o valor operacional. |
| 10 | SN_VALOR_HONORARIO | VARCHAR2 | Y | Indica se o calculo sera sobre o valor dos honorarios. |
| 11 | CD_DETALHAMENTO | NUMBER | N | Indica se a Caracteristica/Restric?o esta ativa para uso. |
| 12 | SN_APLICA_DESC_ACRESC_BS_NE | VARCHAR2 | N | Indica se o desconto ou acrescimo e aplicado. |
| 13 | VL_PERCENTUAL_BASE_CALCULO | NUMBER | Y | Quando informado, indica quantos % do valor do item, que se encaixa na regra de decuc?o, deve ser... |

---

## DBAMV.DEMONSTRATIVO_RETORNO_LOTE
> Tabela de integração com FFCV(TISS) x FNFI

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DEMON_RET_LOTE | NUMBER | N | Código do Demonstrativo de Retorno - LOTE (PK) |
| 2 | CD_CONVENIO | NUMBER | Y | Código do Convênio |
| 3 | CD_SEQ_LOTE_RETORNO | NUMBER | Y | Id retornado do Lote (caso Tiss) ou seq.linha do Lote (caso TXT) ou similar |
| 4 | DT_IMPORTACAO | DATE | Y | Data de Importação |
| 5 | DS_ORIGEM_IMPORTACAO | VARCHAR2 | Y | Origem da Importação |
| 6 | CD_NOTA_FISCAL | NUMBER | Y | Código (ID) da Nota Fiscal |
| 7 | CD_REMESSA | NUMBER | Y | Código (ID) da Remessa |
| 8 | CD_REMESSA_GLOSA | NUMBER | Y | Código (ID) da Remessa de Glosa |
| 9 | NR_LOTE | VARCHAR2 | Y | Lote |
| 10 | NR_PROTOCOLO | VARCHAR2 | Y | Protocolo |
| 11 | VL_INFORMADO | NUMBER | Y | Valor Informado |
| 12 | VL_PAGO | NUMBER | Y | Valor Pago |
| 13 | VL_ACRES | NUMBER | Y | Valor Acrescido |
| 14 | VL_DESCONTO | NUMBER | Y | Valor Desconto |
| 15 | VL_GLOSA | NUMBER | Y | Valor Glosa |
| 16 | VL_INVALIDO_APURACAO | NUMBER | Y | Valor Inválido na Apuração |
| 17 | DT_BAIXA_FINANCEIRO | DATE | Y | Data da realização da baixa no financeiro |
| 18 | CD_USUARIO_BAIXA | VARCHAR2 | Y | Usuário que realizaou a baixa no financeiro |

---

## DBAMV.DESC_ACRES_EMP_TRANSACAO
> Tabela Transac?o Descontos/Acrescimos Entre Empresas

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_DESC_ACRES | NUMBER | N | Codigo Desconto/Acrescimo |
| 2 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da Empresa que recebeu o lancamento |
| 3 | TP_TRANSACAO | VARCHAR2 | N | Tipo de Transac?o Desconto/Acrescimo entre Empresas |
| 4 | CD_REDUZIDO | NUMBER | N | Codigo Reduzido Transitoria do Desconto/Acrescimo |
| 5 | CD_MULTI_EMPRESA_ORIGEM | NUMBER | N | Codigo da Empresa que Originou o lancamento |

---

## DBAMV.DIRF

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 2 | NM_CONTADOR | VARCHAR2 | Y |  |
| 3 | DS_MULTI_EMPRESA | VARCHAR2 | N |  |
| 4 | CD_CGC | NUMBER | Y |  |
| 5 | CD_DETALHAMENTO | NUMBER | Y |  |
| 6 | DS_DETALHAMENTO | VARCHAR2 | Y |  |
| 7 | CD_ATIVIDADE | VARCHAR2 | Y |  |
| 8 | CD_FORNECEDOR | NUMBER | Y |  |
| 9 | NM_FORNECEDOR | VARCHAR2 | Y |  |
| 10 | TP_FORNEC | VARCHAR2 | N |  |
| 11 | NR_CGC_CPF | NUMBER | N |  |
| 12 | VL_RENDIMENTO | NUMBER | Y |  |
| 13 | VL_DETALHAMENTO | NUMBER | Y |  |
| 14 | VL_DEDUCAO | NUMBER | Y |  |
| 15 | DT_BASE_LANCAMENTO | DATE | Y |  |
| 16 | DT_BASE_PAGAMENTO | DATE | Y |  |

---

## DBAMV.DIRF_FORNECEDOR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MULTI_EMPR | NUMBER | N |  |
| 2 | NM_CONTADOR | VARCHAR2 | Y |  |
| 3 | DS_MULTI_EMPR | VARCHAR2 | N |  |
| 4 | CD_CGC | NUMBER | Y |  |
| 5 | CD_DETALHAMENTO | NUMBER | Y |  |
| 6 | DS_DETALHAMENTO | VARCHAR2 | Y |  |
| 7 | CD_ATIVIDADE | VARCHAR2 | Y |  |
| 8 | CD_FORNECEDOR | NUMBER | Y |  |
| 9 | NM_FORNECEDOR | VARCHAR2 | Y |  |
| 10 | TP_FORNEC | VARCHAR2 | N |  |
| 11 | NR_CGC_CPF | NUMBER | N |  |
| 12 | VL_RENDIMENTO | NUMBER | Y |  |
| 13 | VL_DETALHAMENTO | NUMBER | Y |  |

---

## DBAMV.DIRF_TOTAIS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MULTI_EMPR | NUMBER | N |  |
| 2 | NM_CONTADOR | VARCHAR2 | Y |  |
| 3 | DS_MULTI_EMPR | VARCHAR2 | N |  |
| 4 | CD_CGC | NUMBER | Y |  |
| 5 | CD_DETALHAMENTO | NUMBER | Y |  |
| 6 | DS_DETALHAMENTO | VARCHAR2 | Y |  |
| 7 | CD_ATIVIDADE | VARCHAR2 | Y |  |
| 8 | VL_RENDIMENTO | NUMBER | Y |  |
| 9 | VL_DETALHAMENTO | NUMBER | Y |  |
| 10 | DT_MES | DATE | Y |  |

---

## DBAMV.FORMULARIO_NF_CNPJ
> Tabela de formularios de Nota fiscal por CNPJ

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FORMULARIO_NF | NUMBER | N | Codigo formulario nota fiscal |
| 2 | NM_EMPRESA | VARCHAR2 | Y | Nome da empresa |
| 3 | DS_CNPJ | VARCHAR2 | N | CNPJ da empresa |
| 4 | DS_INSCRICAO_MUNICIPAL | VARCHAR2 | Y | Inscric?o municipal da empresa |

---

## DBAMV.FORMULARIO_NF_SIMPLES_REMESSA
> FORMULARIOS DE NOTA FISCAL DE SIMPLES REMESSA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FORMULARIO | NUMBER | N | CÓDIGO DO FORMULARIO |
| 2 | NM_FORMULARIO | VARCHAR2 | N | NOME DO FORMULARIO |
| 3 | CD_MULTI_EMPRESA | NUMBER | N | EMPRESA RELACIONADA AO FORMULARIO |
| 4 | SN_ATIVO | VARCHAR2 | N | INDICA SE O REGISTRO ESTA ATIVO "S" OU NÃO "N" |
| 5 | NR_SERIE | NUMBER | N | NÚMERO DE SERIE DEL FORMULARIO |
| 6 | NR_INICIAL | NUMBER | N | NÚMERO INICIAL DEL FORMULARIO |
| 7 | NR_FINAL | NUMBER | N | NÚMERO FINAL DEL FORMULARIO |
| 8 | NR_ATUAL | NUMBER | N | NÚMERO ACTUAL DEL FORMULARIO |
| 9 | DS_OBSERVACAO | VARCHAR2 | Y | OBSERVAÇÃO |
| 10 | NR_ATUAL_BLOQUEADO | NUMBER | Y | NÚMERO ATUAL DO FORMULARIO QUE ESTA SENDO UTILIZADO PARA GERAR UMA NF-E |
| 11 | DT_BLOQUEADO | DATE | Y | DATA DE BLOQUEIO DO FORMULÁRIO |
| 12 | CD_USUARIO_BLOQUEADO | VARCHAR2 | Y | USUÁRIO QUE EXECUTOU O BLOQUEIO DO FORMULÁRIO |
| 13 | CD_SESSIONID | NUMBER | Y | CÓDIGO DA SESSÃO DO USUÁRIO QUE BLOQUEIA O FORMULÁRIO |

---

## DBAMV.FPO
> Tabela da Programac?o Orcamentaria SUS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da Empresa logada |
| 2 | DT_VALIDADE_INICIAL | DATE | N |  |
| 3 | DT_VALIDADE_FINAL | DATE | Y |  |
| 4 | CD_PROCEDIMENTO | VARCHAR2 | N |  |
| 5 | TP_FINANCIAMENTO | VARCHAR2 | N |  |
| 6 | CD_NIVEL_APURACAO | VARCHAR2 | N |  |
| 7 | QT_ORCADA | NUMBER | Y |  |
| 8 | VL_UNITARIO_ORCADO | NUMBER | Y |  |
| 9 | VL_TOTAL_ORCADO | NUMBER | Y |  |
| 10 | VL_PERC_INCREMENTO | NUMBER | Y |  |
| 11 | VL_INCREMENTO | NUMBER | Y |  |
| 12 | VL_ORCADO_COM_INCREMENTO | NUMBER | Y |  |
| 13 | DT_COMPETENCIA | DATE | N |  |
| 14 | DT_PROCESSAMENTO | DATE | Y |  |

---

## DBAMV.GERA_ARQMAG_PLANSERV
> Tabela para Geração do Meio Magnético do Convênio Planserv.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REMESSA | NUMBER | N | Número da Remessa |
| 2 | CD_LINHA | NUMBER | N | Código de ordenação das linhas |
| 3 | DS_LINHA | VARCHAR2 | Y | Conteúdo da linha gerada |

---

## DBAMV.HABILITACOES_SUS
> Tabela dos codigos de habilitac?es SUS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_HABILITACAO | VARCHAR2 | N | Codigo da habilitac?o SUS |
| 2 | DS_HABILITACAO | VARCHAR2 | N | Descric?o da habilitac?o SUS |
| 3 | CD_GRU_HABILITACAO | VARCHAR2 | N | Codigo do grupo de habilitac?o SUS |

---

## DBAMV.IMPORTACAO_FPO
> Tabela da Programac?o Orcamentaria SUS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IMPORTACAO | NUMBER | N | Codigo sequencial de importacao do arquivo FPO |
| 2 | NR_LINHA | NUMBER | N | Numero da Linha de Controle do arquivo |
| 3 | DT_IMPORTACAO | DATE | N | Data da Importacao |
| 4 | DT_COMPETENCIA | DATE | N | Data da Competencia do Arquivo |
| 5 | DS_LINHA | VARCHAR2 | Y | Conteudo da linha do arquivo FPO |
| 6 | CD_STATUS | VARCHAR2 | Y | Situacao no Sistema da Linha |

---

## DBAMV.INCENTIVO_DIFERENCIADO_SUS
> Tabela dos incentivos diferenciados para o SUS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INCENTIVO | NUMBER | N | Código do incentivo |
| 2 | DS_INCENTIVO | VARCHAR2 | N | Descrição do incentivo |
| 3 | DT_VIGENCIA_INI | DATE | N | Vigência inicial do incentivo |
| 4 | DT_VIGENCIA_FIM | DATE | Y | Vigência final do incentivo |
| 5 | CD_MULTI_EMPRESA | NUMBER | N | Código da empresa para a qual o incentivo foi cadastrado |

---

## DBAMV.INCREMENTO_SUS
> Tabela dos códigos de incremento SUS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INCREMENTO | VARCHAR2 | N | Código da incremento SUS |
| 2 | DS_INCREMENTO | VARCHAR2 | N | Descrição da incremento SUS |

---

## DBAMV.INSTRUMENTO_REGISTRO_SUS
> Armazena os Instrumentos de Registro utilizados pelo SUS.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_INSTRUMENTO_REGISTRO | VARCHAR2 | N | Codigo do instrumento de registro. |
| 2 | DS_INSTRUMENTO_REGISTRO | VARCHAR2 | N | Descric?o do instrumento de registro. |
| 3 | SN_ATIVO | VARCHAR2 | N | Informa se o instrumento de registro esta ativo. |

---

## DBAMV.ITNOTA_FISCAL_TRIBUTO
> ITENS TRIBUTOS DA NOTA FISCAL.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_NOTA_FISCAL | NUMBER | N | CODIGO DA NOTA FISCAL. |
| 2 | CD_ITNOTA_FISCAL | NUMBER | N |  |
| 3 | CD_DETALHAMENTO | NUMBER | N | CODIGO DO TRIBUTO. |
| 4 | CD_CST | VARCHAR2 | N | CODIGO CST. |
| 5 | SN_RETIDO | VARCHAR2 | N | INDICA SE O TRIBUTO FOI RETIDO NA NOTA FISCAL. |
| 6 | VL_TRIBUTO | NUMBER | N | VALOR DO TRIBUTO. |
| 7 | VL_PERCENTUAL | NUMBER | N | PERCENTUAL DO IMPOSTO A SER APLICADO NO TOTAL DA NOTA FISCAL. |
| 8 | VL_TRIBUTO_TOTAL | NUMBER | Y | VALOR TOTAL DO TRIBUTO. |
| 9 | CD_SEQ_INTEGRA | NUMBER | Y | CODIGO SEQUENCIAL DA INTEGRACO |
| 10 | DT_INTEGRA | DATE | Y | DATA DE INTEGRACO DO REGISTRO |
| 11 | VL_BASE_CALCULO | NUMBER | Y | VALOR DA BASE DE CALCULO DO TRIBUTO. |
| 12 | CD_CLAS_TRIB | VARCHAR2 | Y |  |
| 13 | VL_ALIQ_PADRAO | NUMBER | Y |  |
| 14 | VL_ALIQ_REDUCAO | NUMBER | Y |  |
| 15 | VL_ALIQ_EFETIVA | NUMBER | Y |  |

---

## DBAMV.ITSERVICO_NTFS
> TABELA DE CADASTRO DE SERVIÇOS PARA GERAÇÃO DA NOTA FISCAL DE TOMADOR DE SERVIÇO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NR_ITSERVICO_NTFS | VARCHAR2 | N | NUMERO DO ITEM DO SERVICO DA NTFS |
| 2 | NR_SERVICO_NTFS | VARCHAR2 | N | NUMERO DO SERVICO DA NTFS |
| 3 | DS_ITSERVICO_NTFS | VARCHAR2 | N | DESCRIÇÃO DO SERVICO DA NTFS |

---

## DBAMV.LISTA_DDD_SUS
> Tabela de lista de DDD para uso do SUS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_UF | VARCHAR2 | N | Codigo da unidade da federac?o |
| 2 | NR_DDD | NUMBER | N | Numero do DDD |
| 3 | SN_ATIVO | VARCHAR2 | N | Indica se o DDD encontra-se ativo |
| 4 | DS_MASCARA_MOVEL | VARCHAR2 | Y | Mascara  para o numero de telefone movel |
| 5 | DS_MASCARA_FIXO | VARCHAR2 | Y | Mascara  para o numero de telefone fixo |
| 6 | QT_DIGITO_FIXO | NUMBER | Y | Quantidade de digitos para o numero de telefone fixo |
| 7 | QT_DIGITO_MOVEL | NUMBER | Y | Quantidade de digitos  para o numero de telefone movel |

---

## DBAMV.LOTES_ENTRE_EMPRESAS
> Tabela temporaria que armazena os lotes criados na transac?o entre empresas

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOTE | NUMBER | N | Codigo do lote contabil gerado |
| 2 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da Empresa |
| 3 | SN_LOTE_PRINCIPAL | VARCHAR2 | N | Indica se o lote criado e o principal da transac?o entre empresa |

---

## DBAMV.MEIO_TRANSPORTE
> Tabela de Cadastro de Tipo de Meio de Transporte

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MEIO_TRANSPORTE | NUMBER | N | Código do meio de transporte |
| 2 | DS_MEIO_TRANSPORTE | VARCHAR2 | Y | Descric?o do Meio de Transporte |

---

## DBAMV.MODALIDADE_TRANSPORTE_DI
> TABELA PARA MODALIDADE DE TRANSPORTE PARA DECLARAÇÃO DE IMPORTAÇÃO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MODALIDADE_TRANSPORTE_DI | VARCHAR2 | N | CÓDIGO PARA MODALIDADE DE TRANSPORTE PARA DECLARAÇÃO DE IMPORTAÇÃO |
| 2 | DS_MODALIDADE_TRANSPORTE_DI | VARCHAR2 | N | DESCRIÇÃO PARA MODALIDADE DE TRANSPORTE PARA DECLARAÇÃO DE IMPORTAÇÃO |

---

## DBAMV.MVS_NOTA_FISCAL_TRIBUTO
> Tributos da Nota Fiscal.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_NOTA_FISCAL_TRIBUTO | NUMBER | N | Codigo do Tributo da Nota Fiscal. |
| 2 | CD_NOTA_FISCAL | NUMBER | N | Codigo da Nota Fiscal. |
| 3 | CD_DETALHAMENTO | NUMBER | N | Codigo do Tributo. |
| 4 | SN_RETIDO | VARCHAR2 | N | Indica se o Tributo foi Retido na Nota Fiscal. |
| 5 | VL_TRIBUTO | NUMBER | N | Valor do Tributo. |
| 6 | CD_CON_REC_TIP_DET_REC | NUMBER | Y | Codigo da Conta a Receber no Detalhamento da Conta a Receber. |
| 7 | CD_DETALHAMENTO_TIP_DET_REC | NUMBER | Y | Codigo do Tributo no Detalhamento da Conta a Receber. |
| 8 | VL_PERCENTUAL | NUMBER | N | Percentual do imposto a ser aplicado no total da nota fiscal. |
| 9 | VL_TRIBUTO_TOTAL | NUMBER | Y | Valor Total do Tributo. |
| 10 | CD_SEQ_INTEGRA | NUMBER | Y | Codigo sequencial da integrac?o |
| 11 | DT_INTEGRA | DATE | Y | Data de integrac?o do registro |

---

## DBAMV.NOTA_CRE_DEB_ENTRADA_REF
> Tabela de relacionamento entre nota de crédito/débito e nota fiscal de entrada

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_NOTA_CRE_DEB_ENTRADA_REF | NUMBER | N | Código de identificação do relacionamento |
| 2 | CD_NOTA_CRE_DEB | NUMBER | N | Código de identificação da nota de crédito/débito |
| 3 | CD_FORNECEDOR | NUMBER | N | Código do fornecedor da nota de crédito/débito |
| 4 | CD_ENT_PRO | NUMBER | Y | Código de identificação da NF de produto referenciada |
| 5 | CD_ENT_SERV | NUMBER | Y | Código de identificação da NF de serviço referenciada |
| 6 | NR_DOCUMENTO_ENTRADA_REF | VARCHAR2 | N | Código do documento da NF referenciada |
| 7 | NR_SERIE_ENTRADA_REF | VARCHAR2 | Y | Código de série da NF referenciada |
| 8 | CD_CON_PAG_REF | NUMBER | N | Código do contas a pagar da NF referenciada |
| 9 | VL_TOTAL_ITEM_PADRAO | NUMBER | N | Valor total dos itens da nota, proporcional à NF referenciada - moeda padrão |
| 10 | VL_DESCONTO_PADRAO | NUMBER | N | Valor do desconto da nota, proporcional à NF referenciada - moeda padrão |
| 11 | VL_OUTROS_PADRAO | NUMBER | N | Valor de outros impostos/acréscimos da nota, proporcional à NF referenciada - moeda padrão |
| 12 | VL_IMPOSTO_PADRAO | NUMBER | N | Valor do imposto da nota, proporcional à NF referenciada - moeda padrão |
| 13 | VL_ARREDONDA_PADRAO | NUMBER | N | Valor de arredondamento da nota, proporcional à NF referenciada - moeda padrão |
| 14 | VL_TOTAL_NOTA_PADRAO | NUMBER | N | Valor total da nota, proporcional à NF referenciada - moeda padrão |
| 15 | VL_PERC_DESCONTO | NUMBER | N | Percentual de desconto da nota de crédito |
| 16 | VL_PERC_IMPOSTO | NUMBER | N | Percentual de imposto da nota de crédito |
| 17 | VL_TOTAL_ITEM_LANCAMENTO | NUMBER | N | Valor total dos itens da nota, proporcional à NF referenciada - moeda lançamento |
| 18 | VL_DESCONTO_LANCAMENTO | NUMBER | N | Valor do desconto da nota, proporcional à NF referenciada - moeda lançamento |
| 19 | VL_OUTROS_LANCAMENTO | NUMBER | N | Valor de outros impostos/acréscimos da nota, proporcional à NF referenciada - moeda lançamento |
| 20 | VL_IMPOSTO_LANCAMENTO | NUMBER | N | Valor do imposto da nota, proporcional à NF referenciada - moeda lançamento |
| 21 | VL_ARREDONDA_LANCAMENTO | NUMBER | N | Valor de arredondamento da nota, proporcional à NF referenciada - moeda lançamento |
| 22 | VL_TOTAL_NOTA_LANCAMENTO | NUMBER | N | Valor total da nota, proporcional à NF referenciada - moeda lançamento |

---

## DBAMV.NOTA_FISCAL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_NOTA_FISCAL | NUMBER | N |  |
| 2 | NR_ID_NOTA_FISCAL | NUMBER | Y |  |
| 3 | CD_ATENDIMENTO | NUMBER | Y |  |
| 4 | CD_REG_FAT | NUMBER | Y |  |
| 5 | CD_REMESSA | NUMBER | Y |  |
| 6 | NM_CLIENTE | VARCHAR2 | N |  |
| 7 | NR_CGC_CPF | VARCHAR2 | Y | Aceita nulo quando cliente e de Municipio com Nota Fiscal eletronica |
| 8 | NM_BAIRRO | VARCHAR2 | N |  |
| 9 | DS_ENDERECO | VARCHAR2 | N |  |
| 10 | NM_CIDADE | VARCHAR2 | N |  |
| 11 | NM_UF | VARCHAR2 | Y |  |
| 12 | NR_FONE | VARCHAR2 | Y |  |
| 13 | NR_CEP | VARCHAR2 | Y |  |
| 14 | NR_INSCRICAO_ESTADUAL | VARCHAR2 | Y |  |
| 15 | DT_EMISSAO | DATE | N |  |
| 16 | DT_SAIDA | DATE | N |  |
| 17 | VL_TOTAL_NOTA | NUMBER | Y |  |
| 18 | VL_ISS | NUMBER | Y |  |
| 19 | CD_SERIE | VARCHAR2 | Y |  |
| 20 | VL_IR | NUMBER | Y |  |
| 21 | CD_STATUS | VARCHAR2 | Y |  |
| 22 | CD_REG_AMB | NUMBER | Y |  |
| 23 | DS_OBSERVACOES | VARCHAR2 | Y | Observação da Nta . |
| 24 | DS_VL_ACRESCIMO | VARCHAR2 | Y |  |
| 25 | VL_ACRESCIMO_NOTA | NUMBER | Y |  |
| 26 | DS_VL_DESCONTO | VARCHAR2 | Y |  |
| 27 | VL_DESCONTO_NOTA | NUMBER | Y |  |
| 28 | CD_FORMULARIO_NF | NUMBER | N |  |
| 29 | CD_USUARIO | VARCHAR2 | Y |  |
| 30 | CD_ACRESCIMO | NUMBER | Y |  |
| 31 | CD_DESCONTO | NUMBER | Y |  |
| 32 | CD_CONVENIO | NUMBER | Y |  |
| 33 | CD_MULTI_EMPRESA | NUMBER | Y |  |
| 34 | TP_TRIBUTO_RETIDO | VARCHAR2 | Y |  |
| 35 | VL_GLOSA | NUMBER | Y |  |
| 36 | CD_USUARIO_EXCLUIU_CONTA | VARCHAR2 | Y |  |
| 37 | DT_EXCLUIU_CONTA | DATE | Y |  |
| 38 | CD_CONTA_EXCLUIDA | NUMBER | Y |  |
| 39 | TP_CONTA_EXLUIDA | VARCHAR2 | Y |  |
| 40 | CD_RESERVA_NOTA_FISCAL | NUMBER | Y |  |
| 41 | DT_CANCELAMENTO | DATE | Y |  |
| 42 | CD_NOTA_FISCAL_INTEGRA | VARCHAR2 | Y |  |
| 43 | DT_INTEGRA | DATE | Y |  |
| 44 | CD_SEQ_INTEGRA | NUMBER | Y |  |
| 45 | NR_INSCRICAO_MUNICIPAL | VARCHAR2 | Y |  |
| 46 | TP_NOTA_FISCAL | VARCHAR2 | Y |  |
| 47 | CD_FORNECEDOR | NUMBER | Y |  |
| 48 | VL_PERC_IR | NUMBER | Y |  |
| 49 | VL_PERC_ISS | NUMBER | Y |  |
| 50 | CD_NOTA_FISCAL_ORIGEM | NUMBER | Y | Indica a Nota Fiscal que deu origem a Nota Fiscal atual. |
| 51 | DT_CANCELAMENTO_EFETIVO | DATE | Y | Data Efetiva de Cancelamento da Nota Fiscal |
| 52 | CD_MOTIVO_CANC | NUMBER | Y | Motivo de Cancelamento da Nota Fiscal |
| 53 | CD_MOT_SITUACAO | NUMBER | Y | Motivo de Situac?o da Nota Fiscal |
| 54 | NR_NOTA_FISCAL_NFE | NUMBER | Y | Número da nota fiscal eletrônica |
| 55 | HR_EMISSAO_NFE | DATE | Y | Data/Hora de emissão da nota fiscal eletrônica |
| 56 | CD_VERIFICACAO_NFE | VARCHAR2 | Y | Código de verificação da nota fiscal eletrônica |
| 57 | TP_PESSOA_RPS | VARCHAR2 | Y | Tipo de pessoa do tomador de serviço |
| 58 | CD_TIPO_LOGRADOURO | NUMBER | Y | Tipo de logradouro do tomador de serviço |
| 59 | NR_ENDERECO | VARCHAR2 | Y | Número do endereço do tomador de serviço |
| 60 | EMAIL | VARCHAR2 | Y | Endereço de e-mail do Cliente da Nota Fiscal |
| 61 | DT_PAGAMENTO | DATE | Y | Data de pagamento da nota fiscal avulsa |
| 62 | CD_PAIS | NUMBER | Y | Pais de origem do Cliente |
| 63 | CD_NOTA_FISCAL_SUBSTITUIDA | NUMBER | Y | Código da nota fiscal que será substituida |
| 64 | SN_NOTA_FISCAL_ENVIADA | VARCHAR2 | N | Informa quando o sistema já enviou uma nota fiscal para a prefeitura |
| 65 | CD_CIDADE | NUMBER | Y | Relacionamento com a tabela dbamv.cidade |
| 66 | CD_ENDERECO_POSTAL | VARCHAR2 | Y | Campo para registrar o CEP internacional do convênio |
| 67 | CD_IDENTIFICADOR_PESSOA | VARCHAR2 | Y | Campo para registrar o CPF/CNPJ/RFC internacional do convênio |
| 68 | CD_ESTADO | NUMBER | Y | Campo para registrar o ESTADO internacional do convênio |
| 69 | VL_BASE_CALCULO | NUMBER | Y | Valor da base de cálculo dos impostos da nota fiscal |
| 70 | NM_INTERMEDIARIO | VARCHAR2 | Y | Intermediario do pagamento da nota |
| 71 | NR_CNPJ_INTERMEDIARIO | VARCHAR2 | Y | CNPJ do intermediario do pagamento da nota |
| 72 | NR_INSCR_MUNIC_INTERMEDIARIO | VARCHAR2 | Y | Inscrição Munipal do intermediario do pagamento da nota |
| 73 | DS_EMAIL_INTERMEDIARIO | VARCHAR2 | Y | Email do intermediario do pagamento da nota |
| 74 | DT_CANCELAMENTO_NFE | DATE | Y | Data da confirmação do cancelamento da NFe |
| 75 | SN_RPS_GERADA | VARCHAR2 | N | Se S então o rps já foi gerada em arquivo magnético |
| 76 | CD_LOCAL_IMPRESSAO | NUMBER | Y | Criacao da coluna CD_LOCAL_IMPRESSAO |
| 77 | SEQ_ITEM_LOCAL_IMP | NUMBER | Y | Criacao da coluna SEQ_ITEM_LOCAL_IMP |
| 78 | SN_APLICA_DESC_ACRESC_BS_NE | VARCHAR2 | N | Criacao da coluna SN_APLICA_DESC_ACRESC_BS_NE |
| 79 | CD_COD_SERVICO_NF | VARCHAR2 | Y | Criacao da coluna CD_COD_SERVICO_NF |
| 80 | NM_PROTOCOLO_AUTORIZACAO_USO | VARCHAR2 | Y | Protocolo de cancelamento da nota fiscal |
| 81 | NR_PROTOCOLO | VARCHAR2 | Y | Numero do protocolo da solicitação de versão de RPS para NFEs |
| 82 | DT_PROTOCOLO | DATE | Y | Data do protocolo da solicitação de versão de RPS para NFEs |
| 83 | DS_URL_ACESSO_NFES | VARCHAR2 | Y | Guarda o link da NFEs retornado pela prefeitura. Se ela realizar esse retorno |
| 84 | VER_NFE | VARCHAR2 | Y | Verifica status da nota fisal eltrônica |
| 85 | CD_PROTOCOLO_NFE | VARCHAR2 | Y | Código do protocolo da nota fiscal eletrônica |
| 86 | DS_URL_NFE | VARCHAR2 | Y | URL de acesso ao espelho da NFe |
| 87 | DS_RETORNO_NFE | VARCHAR2 | Y | Mensagem de retorno do processamento da NFe |
| 88 | CD_STATUS_NFE | VARCHAR2 | Y | Status de Geração da NFe: W - Registro recém inserido, aguardando ativação para processamento; A-... |
| 89 | NR_PROTOCOLO_CANCELAMENTO | VARCHAR2 | Y | Numero do protocolo de cancelamento da nota convertida |
| 90 | CD_TIPO_SITUACAO_NOTA_FISCAL | NUMBER | N | Código para identificar situação da nota fiscal |
| 91 | CD_CON_REC_NFA | NUMBER | Y | Código do contas a receber atrelado a nota. Uso específico APENAS quando a nota for gerada a part... |
| 92 | SN_INCENTIVADOR_CULTURAL | VARCHAR2 | N | INDICA SE A EMPRESA E INCENTIVADOR CULTURAL |
| 93 | SN_OPTANTE_PELO_SIMPLES | VARCHAR2 | Y | INDICA SE A EMPRESA E OPTANTE PELO SIMPLES NACIONAL (REGIME DE DECLARACO DE IMPOSTOS). |
| 94 | TP_NATUREZA_OPERACAO | VARCHAR2 | Y | CRIACAO DA COLUNA TP_NATUREZA_OPERACAO |
| 95 | TP_REGIME_ESPECIAL_TRIBUTACAO | VARCHAR2 | Y | REGIME ESPECIAL DE TRIBUTACO: 1 - MICROEMPRESA MUNICIPAL, 2 - ESTIMATIVA, 3 - SOCIEDADE DE PROFIS... |
| 96 | CD_CNAE | VARCHAR2 | Y | CODIGO NACIONAL DE ATIVIDADE EMPRESARIAL |
| 97 | DS_ITEM_LISTA_SERVICO | VARCHAR2 | Y | INDICA O VALOR DO ITEM SERVICO |
| 98 | CD_TRIBUTACAO_MUNICIPAL | VARCHAR2 | Y | CODIGO DE TRIBUTACAO MUNICIPAL - NOTA FISCAL ELETRONICA |
| 99 | CD_MULTI_EMPRESA_ORIGEM | NUMBER | Y | ARMAZENA O CODIGO DA EMPRESA QUE ORIGINOU A NOTA FISCAL |
| 100 | CD_MODELO_FISCAL | VARCHAR2 | Y | Cdigo do modelo fiscal |
| 101 | NR_PROTOCOLO_INUTILIZACAO | VARCHAR2 | Y |  |
| 102 | DS_RETORNO_INUTILIZACAO | VARCHAR2 | Y |  |
| 103 | NR_NCF | VARCHAR2 | Y | Numero de comprovante fiscal utilizado por clientes internacionais |
| 104 | SN_ENVIA_RPS_NFSE | VARCHAR2 | N |  |
| 105 | VL_CBS | NUMBER | Y |  |
| 106 | VL_IBS | NUMBER | Y |  |

---

## DBAMV.NOTA_FISCAL_AUXILIAR
> Tabela para auxiliar na geração de notas fiscais de recebimento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_NOTA_FISCAL_AUXILIAR | NUMBER | N | Identificador de para agrupar o código do recebimento |
| 2 | CD_RECCON_REC | NUMBER | N | Código do recebimento |
| 3 | CD_USU_RECEB | VARCHAR2 | N | Usuário do recebimento |

---

## DBAMV.NOTA_FISCAL_ELETRONICA_ASSINAT
> Tabela para armazenar o retorno da assinatura digital do XML da NFE

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Identificador do registro para o configurador XML |
| 2 | ID_PAI | NUMBER | Y | Identificador do registro pai para o configurador XML |
| 3 | DS_CANONICALIZATIONMETHODTYPE | VARCHAR2 | Y | Tipo do metodo de canonizac?o para calculo da assinatura digiral |
| 4 | DS_CONTENT_1 | VARCHAR2 | Y | Primeiro campo de conteudo da assinatura digital |
| 5 | DS_ALGORITHM_1 | VARCHAR2 | Y | Primeiro campo com o algoritimo de calculo da assinatura digital |
| 6 | DS_SIGNATUREMETHOD | VARCHAR2 | Y | Descric?o do metodo de assinatura do XML |
| 7 | DS_CONTENT_2 | VARCHAR2 | Y | Segundo campo de conteudo da assinatura digital |
| 8 | DS_ALGORITHM_2 | VARCHAR2 | Y | Segundo campo com o algoritimo de calculo da assinatura digital |
| 9 | DS_REFERENCE | VARCHAR2 | Y | Descric?o de refernencia da assinatura digital |
| 10 | DS_TRANSFORM | VARCHAR2 | Y | Descric?o da transformac?o da assinatura digital |
| 11 | DS_CONTENT_3 | VARCHAR2 | Y | Terceiro campo de conteudo da assinatura digital |
| 12 | DS_ALGORITHM_3 | VARCHAR2 | Y | Terceiro campo com o algoritimo de calculo da assinatura digital |
| 13 | DS_DIGESTMETHOD | VARCHAR2 | Y | Resumo do metodo de assinatura do XML |
| 14 | DS_CONTENT_4 | VARCHAR2 | Y | Quarto campo de conteudo da assinatura digital |
| 15 | DS_ALGORITHM_4 | VARCHAR2 | Y | Quarto campo com o algoritimo de calculo da assinatura digital |
| 16 | DS_DIGESTVALUE | VARCHAR2 | Y | Valor de resumo |
| 17 | DS_ID_1 | VARCHAR2 | Y | Primeiro campo de identificac?o do xml de assinatura digital |
| 18 | DS_URI | VARCHAR2 | Y | URL de referencia da assinatura disgital |
| 19 | DS_TYPE | VARCHAR2 | Y | Tipo de assintaura digital |
| 20 | DS_ID_2 | VARCHAR2 | Y | Segundo campo de identificac?o do xml de assinatura digital |
| 21 | DS_SIGNATUREVALUE | VARCHAR2 | Y | Valor da assintura digital |
| 22 | DS_VALUE | VARCHAR2 | Y | Valor de referencia |
| 23 | DS_ID_3 | VARCHAR2 | Y | Terceiro campo de identificac?o do xml de assinatura digital |
| 24 | DS_KEYINFO | VARCHAR2 | Y | Chave de informac?o |
| 25 | DS_CONTENT_5 | VARCHAR2 | Y | Quinto campo de conteudo da assinatura digital |
| 26 | DS_ID_4 | VARCHAR2 | Y | Quarto campo de identificac?o do xml de assinatura digital |
| 27 | DS_OBJECT | VARCHAR2 | Y | Objeto da assinatura digital |
| 28 | DS_CONTENT_6 | VARCHAR2 | Y | Sexto campo de conteudo da assinatura digital |
| 29 | DS_ID_5 | VARCHAR2 | Y | Quinto campo de identificac?o do xml de assinatura digital |
| 30 | DS_MIMETYPE | VARCHAR2 | Y | Tipo |
| 31 | DS_ENCODING | VARCHAR2 | Y | Codificac?o da assintura digital |
| 32 | DS_ID_6 | VARCHAR2 | Y | Sexto campo de identificac?o do xml de assinatura digital |

---

## DBAMV.NOTA_FISCAL_ELETRONICA_ATIVID
> Tabela de atividades - XML nota fiscal eletronica Mogi das Cruzes/SP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Campo de identificac?o do No Atual - Estrutura Java/XML |
| 2 | ID_PAI | NUMBER | N | Campo de identificac?o do No Pai em relac?o ao No Atual - Estrutura Java/XML |
| 3 | CD_CNAE | VARCHAR2 | Y | Codigo da atividade |
| 4 | DS_NOTA_FISCAL_ELETRONICA_ATIV | VARCHAR2 | Y | Descric?o da atividade |
| 5 | DS_VL_PERC_ALIQUOTA | VARCHAR2 | Y | Valor Percentual |

---

## DBAMV.NOTA_FISCAL_ELETRONICA_BASE
> Tabela Base do XML de Nota Fiscal Eletronica de Mogi das Cruzes/SP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Campo de identificac?o do No Atual - Estrutura Java/XML |
| 2 | ID_PAI | NUMBER | Y | Campo de identificac?o do No Pai em relac?o ao No Atual - Estrutura Java/XML |
| 3 | ID_MENSAGEM_ORIGEM | NUMBER | Y | Campo de referencia para o ID de identificac?o da mensagem original enviada - Estrutura Java/XML |

---

## DBAMV.NOTA_FISCAL_ELETRONICA_CANC
> Tabela com as informacoes de retorno da operac?o de cancelamento via webservice

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Identificador do registro |
| 2 | ID_PAI | NUMBER | N |  |
| 3 | DT_HORA | DATE | N | Data/hora do registro |
| 4 | DS_INSC_MUN_PREST | VARCHAR2 | Y | Inscric?o municipal do prestador |
| 5 | NR_NUMERO_NFE_CANC | VARCHAR2 | Y | Numero da nota fiscal eletronica cancelada. Esse campo so e preenchido quando ha uma confirmac?o ... |
| 6 | CD_VERIFICACAO_NFE | VARCHAR2 | Y | Codigo da verificac?o da nota fiscal eletronica |
| 7 | DS_MOTIVO_CANC | VARCHAR2 | Y | Codigo que identifica a resposta do lote enviado |
| 8 | NR_NUMERO_NFE_NAO_CANC | VARCHAR2 | Y | Numero da nota fiscal eletronica NAO cancelada. Esse campo so e preenchido quando ha um alerta/er... |
| 9 | CD_ALERTA | VARCHAR2 | Y | Codigo do Alerta |
| 10 | DS_ALERTA | VARCHAR2 | Y | Descricao do Alerta |
| 11 | CD_ERRO | VARCHAR2 | Y | Codigo do Erro |
| 12 | DS_ERRO | VARCHAR2 | Y | Descricao do Erro |

---

## DBAMV.NOTA_FISCAL_ELETRONICA_CONFIG
> Tabela de configurac?o do XML da Nota Fiscal Eletronica de Mogi das Cruzes/SP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_NOTA_FISCAL_ELETRON_CONF | NUMBER | N | Codigo da configurac?o da nota fiscal eletronica |
| 2 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da emmpresa |
| 3 | DS_DIGEST_VALUE | VARCHAR2 | Y | Valor do digito de verificac?o |
| 4 | DS_URI | VARCHAR2 | Y | Caminho de validac?o |
| 5 | DS_SIGNATURE_VALUE | VARCHAR2 | Y | Assinatura |
| 6 | DS_X509_CERTIFICATE | VARCHAR2 | Y | Certificado Digital |
| 7 | CD_ATIVIDADE_HOSPITAL | VARCHAR2 | Y | Codigo de atividade do hospital |
| 8 | DS_DIR_GRAVACAO_XML | VARCHAR2 | Y | Diretorio de gravac?o do XML |
| 9 | DS_NR_CPF_CERTF_DIGITAL | VARCHAR2 | Y | CPF do certificado digital |
| 10 | CD_SENHA | VARCHAR2 | Y | Senha do certificado digital |

---

## DBAMV.NOTA_FISCAL_ELETRONICA_ITENS
> Tabela de itens da Nota Fiscal Eletronica retornada apos a convers?o - Nota Fiscal Eletronica de Mogi das Cruzes/SP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Campo de identificac?o do No Atual - Estrutura Java/XML |
| 2 | ID_PAI | NUMBER | N | Campo de identificac?o do No Pai em relac?o ao No Atual - Estrutura Java/XML |
| 3 | DS_QT_ITENS | VARCHAR2 | Y | Quantidade de itens |
| 4 | CD_ATIVIDADE | VARCHAR2 | Y | Codigo da atividade |
| 5 | DS_SERVICO | VARCHAR2 | Y | Descric?o do servico |
| 6 | DS_VL_UNITARIO | VARCHAR2 | Y | Valor unitario do item |
| 7 | DS_VL_TOTAL | VARCHAR2 | Y | Valor total dos itens |
| 8 | SN_IMPOSTO_RETIDO | VARCHAR2 | Y | Indica se retem, ou n?o o imposto sobre o item |
| 9 | VL_PERC_ALIQUOTA | VARCHAR2 | Y | Valor percentual de imposto |
| 10 | DS_TRIBUTADO | VARCHAR2 | Y | Identifica se o item e ou n?o tributado |
| 11 | DS_VL_DESCONTO | VARCHAR2 | Y | Desconto da nota fiscal (Sefaz) |
| 12 | CD_EAN | VARCHAR2 | Y | Codigo EAN (Sefaz) |
| 13 | CD_CFOP | VARCHAR2 | Y | Codigo CFOP (Sefaz) |
| 14 | CD_SERVICO | VARCHAR2 | Y | Codigo do Servico (Sefaz) |
| 15 | CD_NCM | VARCHAR2 | Y | Codigo NCM (Sefaz) |
| 16 | DS_UCOM | VARCHAR2 | Y | UNIDADE (Sefaz) |
| 17 | DS_QUANTIDADE_COMERCIAL | VARCHAR2 | Y | Quantidade Comercial (Sefaz) |
| 18 | CD_EAN_TRIB | VARCHAR2 | Y | EAN TRIBUTARIO (Sefaz) |
| 19 | DS_QT_FRETE | VARCHAR2 | Y | Frete na nota fiscal (Sefaz) |
| 20 | DS_IND_TOTAL_NOTA | VARCHAR2 | Y | Indicador que informa se o item entra no total da nota fiscal (Sefaz) |

---

## DBAMV.NOTA_FISCAL_ELETRONICA_LOG_XML
> Tabela de LOG de Gerac?o/Envio/Retorno de XML de Nota Fiscal Eletronica de Mogi das Cruzes/SP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Campo de identificac?o do No Atual - Estrutura Java/XML |
| 2 | CD_STATUS | VARCHAR2 | Y | Codigo do Status da Mensagem XML |
| 3 | CD_MENSAGEM | VARCHAR2 | Y | Codigo da Mensagem do XML - Detalhamento |
| 4 | DS_MENSAGEM | VARCHAR2 | Y | Descric?o da Mensagem do LOG do XML |
| 5 | NM_XML_GERADO | VARCHAR2 | Y | Caminho e nome do XML gerado |
| 6 | ID_MENSAGEM_ORIGEM | NUMBER | Y | Codigo ID da mensagem de origem do Log |
| 7 | DT_LOG | DATE | N | Data de gravac?o do log |
| 8 | NM_USUARIO | VARCHAR2 | N | Usuario que gravou o Log |

---

## DBAMV.NOTA_FISCAL_ELETRONICA_LOT_ENV
> Tabela referente a informac?es do lote de nota fiscal eletronica

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Identificador do registro para o configurador XML |
| 2 | ID_PAI | NUMBER | Y | Identificador do registro pai para o configurador XML |
| 3 | DS_NUMERO_LOTE | VARCHAR2 | Y | Numero do lote de nota fiscal |
| 4 | DS_CNPJ_EMISSOR | VARCHAR2 | Y | CNPJ da empresa que esta enviando o lote de notas fiscais eletronicas |
| 5 | DS_INSCRICAO_MUNICIPAL | VARCHAR2 | Y | Inscric?o municipal da empresa que esta enviando |
| 6 | DS_QUANTIDADE_NOTA_FISCAI_ELET | VARCHAR2 | Y | Quantidade de notas fiscais enviadas para convers?o |
| 7 | DS_CD_CIDADE | VARCHAR2 | Y | codigo da Cidade do Hospital |
| 8 | DS_RAZAO_SOCIAL | VARCHAR2 | Y | Raz?o social do Hospital |
| 9 | DS_TRANSACAO | VARCHAR2 | Y | Default true,para RPS que fazem parte da mesma transac?o |
| 10 | DS_DT_INICIO | VARCHAR2 | Y | Menor data de emiss?o do XML |
| 11 | DS_DT_FINAL | VARCHAR2 | Y | Maior data de emiss?o do XML |
| 12 | DS_VL_TOTAL_SERV | VARCHAR2 | Y | Valor total do servicos do XML |
| 13 | DS_VERSAO_XML | VARCHAR2 | Y | vers?o padr?o do XML , padr?o 1 |
| 14 | DS_METODO_ENVIO | VARCHAR2 | Y | Metdo de envio padr?o WS |
| 15 | DS_VL_TOTAL_DEDUC | VARCHAR2 | Y | Valor total da deduc?o de servico do XML. |
| 16 | CD_USUARIO_LOGADO | VARCHAR2 | Y | Criacao da coluna CD_USUARIO_LOGADO |
| 17 | DS_DT_HR_TRANS | VARCHAR2 | Y | Data e hora da transac?o |
| 18 | DS_PROCESSADO | VARCHAR2 | Y | INFORMA SE O LOTE JA FOI PROCESSADO. CRIADO PARA QUANDO O CLIENTE APENAS GERA O XML, SEM TRANSMISSAO |
| 19 | DS_QTD_CONSULTAS | VARCHAR2 | Y | Armazena a quantidade de vezes que o lote e consultado |
| 20 | DS_CHAVE | VARCHAR2 | Y | Chave fica para Mairipora/SP |

---

## DBAMV.NOTA_FISCAL_ELETRONICA_LOT_RSP
> Tabela que representa a resposta da tentativa de enviar um lote de notas fiscais eletronica

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Identificador do registro para o configurador XML |
| 2 | ID_PAI | NUMBER | Y | Identificador do registro pai para o configurador XML |
| 3 | DS_NUMERO_LOTE | VARCHAR2 | Y | Numero do lote das notas fiscais |
| 4 | DS_DATA_RECEBIMENTO | VARCHAR2 | Y | Data do recebimento da resposta do envio do lote |
| 5 | DS_NUMERO_PROTOCOLO | VARCHAR2 | Y | Numero do protocolo que identifica o lote de notas fiscais |
| 6 | CD_MENSAGEM_RESPOSTA | VARCHAR2 | Y | Codigo que identifica a resposta do lote enviado |
| 7 | DS_MENSAGEM_RESPOSTA | VARCHAR2 | Y | Descric?o da mensagem de resposta |
| 8 | DS_CORRECAO_MENSAGEM_RESPOSTA | VARCHAR2 | Y | Descric?o para correc?o do lote de notas fiscais |
| 9 | DS_NUMERO | VARCHAR2 | Y | Numero do RT/RPS |
| 10 | CD_SERIE | VARCHAR2 | Y | Serie do RT/RPS |
| 11 | TP_RPS | VARCHAR2 | N | Tipo de RPS: 1 ? Recibo Provisorio de Servicos; 2 ? RPS  Nota Fiscal Conjugada (Mista); 3 ? Cupom... |
| 12 | DS_CD_CIDADE | VARCHAR2 | Y | Codigo da Cidade - Padr?o SIAFI. |
| 13 | DS_SUCESSO | VARCHAR2 | Y | "true" se processado com sucesso, "false" se ocorreram erros. |
| 14 | DS_CNPJ_EMISSOR | VARCHAR2 | Y | CPF ou CNPJ do Emissor. |
| 15 | DS_QTD_NOTA_PROC | VARCHAR2 | Y | Quantidade de Notas Processadas no Lote. |
| 16 | DS_TEMP_PROC | VARCHAR2 | Y | Tempo total de processamento. |
| 17 | DS_VL_TOTAL_SERV | VARCHAR2 | Y | Valor Total dos Servicos. |
| 18 | DS_VL_TOTAL_DEDUC | VARCHAR2 | Y | Valor Total das Deduc?es. |
| 19 | DS_VERSAO_XML | VARCHAR2 | Y | Vers?o do Schema XML. |
| 20 | NR_INSC_MUNICIPAL_PRESTADOR | VARCHAR2 | Y | Inscric?o Municipal do Contribuinte. |
| 21 | DS_DT_EMISSAO_RT | VARCHAR2 | Y | Data de Emiss?o do RPS. |
| 22 | NM_RAZAO_SOCIAL_PRESTADOR | VARCHAR2 | Y | Raz?o Social do Contribuinte. |
| 23 | DS_NUM_NFE | VARCHAR2 | Y | Numero da Nota Fiscal de Servicos. |
| 24 | CD_VERIFICACAO | VARCHAR2 | Y | Codigo de Verificac?o. |

---

## DBAMV.NOTA_FISCAL_ELETRONICA_SERVICO
> tabela pertencente a estrutura do XML N.F.Eletronica de MOGI DAS CRUZES/SP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Campo de identificac?o do No Atual - Estrutura Java/XML |
| 2 | ID_PAI | NUMBER | N | Campo de identificac?o do No Pai em relac?o ao No Atual - Estrutura Java/XML |
| 3 | DS_QT_SERVICO | VARCHAR2 | Y | campo pertencente a tabela NOTA_FISCAL_ELETRONICA_SERVICO referente a estrutura do XML N.F.Eletro... |
| 4 | DS_SERVICO | VARCHAR2 | Y | campo pertencente a tabela NOTA_FISCAL_ELETRONICA_SERVICO referente a estrutura do XML N.F.Eletro... |
| 5 | CD_ATIVIDADE | VARCHAR2 | Y | campo pertencente a tabela NOTA_FISCAL_ELETRONICA_SERVICO referente a estrutura do XML N.F.Eletro... |
| 6 | DS_VL_UNITARIO | VARCHAR2 | Y | campo pertencente a tabela NOTA_FISCAL_ELETRONICA_SERVICO referente a estrutura do XML N.F.Eletro... |
| 7 | DS_VL_PERC_ALIQUOTA | VARCHAR2 | Y | campo pertencente a tabela NOTA_FISCAL_ELETRONICA_SERVICOreferente a estrutura do XML N.F.Eletron... |
| 8 | SN_IMPOSTO_RETIDO | VARCHAR2 | Y | campo pertencente a tabela NOTA_FISCAL_ELETRONICA_SERVICO referente a estrutura do XML N.F.Eletro... |
| 9 | DS_TRIBUTADO | VARCHAR2 | Y | Identifica se o item e ou n?o tributado |
| 10 | DS_VL_DESCONTO | VARCHAR2 | Y | Valor de desconto do item |
| 11 | DS_UNIDADE_MEDIDA | VARCHAR2 | Y | Unidade do servico - UN |
| 12 | DS_VALOR_ISS | VARCHAR2 | Y | Valor do ISS |

---

## DBAMV.NOTA_FISCAL_ELETRONICA_TOTAIS
> Tabela de totais (Sefaz)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Campo de identificac?o do No Atual - Estrutura Java/XML |
| 2 | ID_PAI | NUMBER | N | Campo de identificac?o do pai No Atual - Estrutura Java/XML |
| 3 | DS_ISSQNTOT_BC | VARCHAR2 | Y | Codigo do Status da Mensagem XML |
| 4 | DS_ISSQNTOT_VISS | VARCHAR2 | Y | Codigo da Mensagem do XML - Detalhamento |
| 5 | DS_ISSQNTOT_VPIS | VARCHAR2 | Y | Criacao de coluna para atender layout sefaz versao 3.10 |
| 6 | DS_ISSQNTOT_VSERV | VARCHAR2 | Y | Caminho e nome do XML gerado |
| 7 | DS_RETTRIB_VRETPIS | VARCHAR2 | Y | Codigo ID da mensagem de origem do Log |
| 8 | DS_UCOM | VARCHAR2 | Y | UNIDADE (Sefaz) |
| 9 | DS_ICMSTOT_BC | VARCHAR2 | Y | ICMS total (Sefaz) |
| 10 | DS_ISSQNTOT_VDESC | VARCHAR2 | Y | Criacao de coluna para atender layout sefaz versao 3.10 |
| 11 | DS_ISSQNTOT_VNF | VARCHAR2 | Y | Criacao de coluna para atender layout sefaz versao 3.10 |
| 12 | DS_ISSQNTOT_VTOTTRIB | VARCHAR2 | Y | Criacao de coluna para atender layout sefaz versao 3.10 |
| 13 | DS_ISSQNTOT_DCOMPET | VARCHAR2 | Y | Criacao de coluna para atender layout sefaz versao 3.10 |
| 14 | DS_ISSQNTOT_VDEDUCAO | VARCHAR2 | Y | Criacao de coluna para atender layout sefaz versao 3.10 |
| 15 | DS_ISSQNTOT_VOUTRO | VARCHAR2 | Y | Criacao de coluna para atender layout sefaz versao 3.10 |
| 16 | DS_ISSQNTOT_VDESCINCOND | VARCHAR2 | Y | Criacao de coluna para atender layout sefaz versao 3.10 |
| 17 | DS_ISSQNTOT_VDESCCOND | VARCHAR2 | Y | Criacao de coluna para atender layout sefaz versao 3.10 |
| 18 | DS_ISSQNTOT_VISSRET | VARCHAR2 | Y | Criacao de coluna para atender layout sefaz versao 3.10 |
| 19 | DS_ISSQNTOT_CREGTRIB | VARCHAR2 | Y | Criacao de coluna para atender layout sefaz versao 3.10 |
| 20 | DS_ICMSTOT_TOTTRIB | VARCHAR2 | Y | Criacao de coluna para atender layout sefaz versao 3.10 |
| 21 | DS_ISSQNTOT_VCOFINS | VARCHAR2 | Y | Valor total da COFINS sobre serviços para o grupo Totais referentes ao ISSQN |

---

## DBAMV.NOTA_FISCAL_ELETRONICA_TRIB
> Tabela de Imposto NFSE tabela pertencente a estrutura do XML N.F.Eletronica de MAIRIPORA/SP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Campo de identificac?o do No Atual - Estrutura Java/XML |
| 2 | ID_PAI | NUMBER | N | Campo de identificac?o do No Pai em relac?o ao No Atual - Estrutura Java/XML |
| 3 | DS_IMPOSTO | VARCHAR2 | Y | Descric?o do Imposto |
| 4 | VL_IMPOSTO | VARCHAR2 | Y | Valor do Imposto |

---

## DBAMV.NOTA_FISCAL_ELETRONICA_UTIL
> Tabela de suporte da estrutura de XML da Nota Fiscal Eletronica de Mogi das Cruzes/SP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Campo de identificac?o do No Atual - Estrutura Java/XML |
| 2 | ID_PAI | NUMBER | N | Campo de identificac?o do No Pai em relac?o ao No Atual - Estrutura Java/XML |
| 3 | DS_URL_NFD | VARCHAR2 | Y | Descric?o da URL para convers?o do Recibo Temporario em Nota Fiscal Eletronica |
| 4 | DS_URL_AUTENTICIDADE | VARCHAR2 | Y | Descric?o da URL de autenticac?o para convers?o do Recibo Temporario em Nota Fiscal Eletronica |

---

## DBAMV.NOTA_FISCAL_ELETRON_ATIV_CTBT
> Tabela de atividade do COntribuinte - XML Nota Fiscal Eletronica de Mogi das Cruzes/SP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Campo de identificac?o do No Atual - Estrutura Java/XML |
| 2 | ID_PAI | NUMBER | N | Campo de identificac?o do No Pai em relac?o ao No Atual - Estrutura Java/XML |

---

## DBAMV.NOTA_FISCAL_ELET_NOT_FIS_DIGI
> Tabela de nota fiscal digital - Baseda no XML de Nota Fiscal Eletronica de Mogi das Cruzes/SP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Campo de identificac?o do No Atual - Estrutura Java/XML |
| 2 | ID_PAI | NUMBER | N | Campo de identificac?o do No Pai em relac?o ao No Atual - Estrutura Java/XML |
| 3 | DS_NR_ID_NFD | VARCHAR2 | Y | Numero ID da Nota Fiscal |
| 4 | CD_SERIE_DOCUMENTO | VARCHAR2 | Y | Serie do documento |
| 5 | CD_NATUREZA_OPERACAO | VARCHAR2 | Y | Natureza da operac?o |
| 6 | CD_CIDADE | VARCHAR2 | Y | Codigo da Cidade |
| 7 | NR_INSCRICAO_MUNICIPAL_EMISSOR | VARCHAR2 | Y | Numero da inscric?o municipal do emissor |
| 8 | DT_EMISSAO | VARCHAR2 | Y | Data de emiss?o |
| 9 | NM_RAZAO_TOMADOR | VARCHAR2 | Y | Raz?o social do tomador |
| 10 | NM_FANTASIA_TOMADOR | VARCHAR2 | Y | Nome fantasia do tomador |
| 11 | DS_ENDERECO_TOMADOR | VARCHAR2 | Y | Endereco do tomador |
| 12 | DS_CIDADE_TOMADOR | VARCHAR2 | Y | Nome da cidade do tomador |
| 13 | DS_UF_TOMADOR | VARCHAR2 | Y | Estado do tomador |
| 14 | DS_PAIS_TOMADOR | VARCHAR2 | Y | Pais do tomador |
| 15 | DS_NR_FONE_TOMADOR | VARCHAR2 | Y | Numero do telefone do tomador |
| 16 | DS_NR_FAX_TOMADOR | VARCHAR2 | Y | Numero do fax do tomador |
| 17 | DS_NR_CEP_TOMADOR | VARCHAR2 | Y | CEP do tomador |
| 18 | DS_BAIRRO_TOMADOR | VARCHAR2 | Y | Nome do bairro do tomador |
| 19 | DS_E_MAIL_TOMADOR | VARCHAR2 | Y | E-mail do tomador |
| 20 | DS_NR_CPF_CNPJ_TOMADOR | VARCHAR2 | Y | CPF ou CNPJ do tomador |
| 21 | DS_NR_INSCRICAO_ESTADUAL_TOMAD | VARCHAR2 | Y | Numero da inscric?o estadual do tomador |
| 22 | DS_NR_INSCRICAO_MUNICIPAL_TMDR | VARCHAR2 | Y | Numero da inscric?o municipal do tomador |
| 23 | NM_RAZAO_TRANSPORTADORA | VARCHAR2 | Y | Raz?o social da transportadora |
| 24 | DS_NR_CPF_CNPJ_TRANSPORTADORA | VARCHAR2 | Y | CPF ou CNPJ da transportadora |
| 25 | DS_ENDERECO_TRANSPORTADORA | VARCHAR2 | Y | Endereco da transportadora |
| 26 | TP_FRETE | VARCHAR2 | Y | Tipo de frete |
| 27 | DS_QT_FRETE | VARCHAR2 | Y | Quantidade de frete |
| 28 | DS_VL_PESO_LIQUIDO | VARCHAR2 | Y | Peso liquido dos itens da nota fiscal |
| 29 | DS_VL_PESO_BRUTO | VARCHAR2 | Y | Peso bruto dos itens da nota fiscal |
| 30 | DS_VL_PIS | VARCHAR2 | Y | Valor do PIS |
| 31 | DS_VL_COFINS | VARCHAR2 | Y | Valor do COFINS |
| 32 | DS_VL_CSLL | VARCHAR2 | Y | Valor da CSLL |
| 33 | DS_VL_IRRF | VARCHAR2 | Y | Valor IRRF |
| 34 | DS_VL_INSS | VARCHAR2 | Y | Valor INSS |
| 35 | DS_DEDUCOES_CONSTRUCAO | VARCHAR2 | Y | Indica se deduz valores de construc?o |
| 36 | DS_VL_TOTAL_DEDUCOES_CONSTRUC | VARCHAR2 | Y | Valor total das deduc?es de construc?es |
| 37 | SN_TRIBUTADO_NO_MUNICIPIO | VARCHAR2 | Y | Indica se a nota sera ou n?o tributada no municipio |
| 38 | DS_NR_RT | VARCHAR2 | Y | Numero do Recibo Temporario de Servico |
| 39 | CD_SERIE_RT | VARCHAR2 | Y | Serie do Recibo Temporario de Servico |
| 40 | DS_DT_EMISSAO_RT | VARCHAR2 | Y | Data de emiss?o do Recibo Temporario de Servico |
| 41 | DS_CODIGO_VERIFICACAO | VARCHAR2 | Y | Codigo de verificac?o da nota fiscal eletronica. |
| 42 | DS_COMPETENCIA | VARCHAR2 | Y | Mes e ano da prestac?o de servico. Formato (AAAAMM). |
| 43 | DS_NUMERO_NOTA_FISC_ELET_SUBT | VARCHAR2 | Y | Numero da NFS-e substituida. |
| 44 | TP_NATUREZA_OPERACAO | VARCHAR2 | N | Criacao da coluna TP_NATUREZA_OPERACAO |
| 45 | TP_REGIME_ESPECIAL_TRIBUTACAO | VARCHAR2 | Y | Criacao da coluna TP_REGIME_ESPECIAL_TRIBUTACAO |
| 46 | SN_OPTANTE_SIMPLES_NACIONAL | VARCHAR2 | N | Indica se a empresa e optante pelo Simples Nacional (Regime de declarac?o de impostos). |
| 47 | SN_INCENTIVADOR_CULTURAL | VARCHAR2 | N | Indica se a empresa e uma incentivadora cultural. |
| 48 | DS_OUTRAS_INFORMACOES | VARCHAR2 | Y | Outras informac?es. |
| 49 | DS_VALOR_SERVICOS | VARCHAR2 | Y | Valore dos servic?es em R$. |
| 50 | CD_CNAE | VARCHAR2 | Y | Codigo CNAE. |
| 51 | CD_TRIBUTACAO_MUNICIPIO | VARCHAR2 | Y | Codigo do servico prestado, proprio do municipio. |
| 52 | DS_VALOR_BASE_CALCULO | VARCHAR2 | Y | Valor da base de calculo: Valor dos servicos - Valor das deduc?es ? descontos incondicionados. |
| 53 | DS_VALOR_ALIQUOTA_SERVICOS | VARCHAR2 | Y | Valor da aliquota do servico prestado. |
| 54 | DS_VALOR_ISS | VARCHAR2 | Y | Valor do ISS em R$. |
| 55 | DS_VALOR_LIQUIDO_NOTA_FIS_ELET | VARCHAR2 | Y | Criacao da coluna DS_VALOR_LIQUIDO_NOTA_FIS_ELET |
| 56 | DS_VALOR_OUTRAS_RETENCOES | VARCHAR2 | Y | Outras retenc?es na Fonte. Informac?o Declaratoria. |
| 57 | DS_VALOR_CREDITO | VARCHAR2 | Y | Valor do credito gerado. |
| 58 | SN_ISS_RETIDO | VARCHAR2 | N | Indica se o ISS sera ou n?o retido |
| 59 | DS_VALOR_ISS_RETIDO | VARCHAR2 | Y | Valor do ISS a ser retido. |
| 60 | DS_VALOR_DESCONTO_INCONDIC | VARCHAR2 | Y | Valor de desconto incondicional |
| 61 | DS_VALOR_DESCONTO_CONDICIONAL | VARCHAR2 | Y | Valor de desconto condicional |
| 62 | CD_MUNICIPIO_PRESTACAO_SERVICO | VARCHAR2 | Y | Codigo do municipio onde o servico foi prestado (tabela do IBGE), se exterior colocar 9999999 |
| 63 | DS_RAZAO_SOCIAL_PRESTADOR | VARCHAR2 | Y | Raz?o social do prestador do servico |
| 64 | NM_NOME_FANTASIA_PRESTADOR | VARCHAR2 | Y | Nome fantasia do prestador do servico |
| 65 | CD_CNPJ_PRESTADOR | VARCHAR2 | Y | Numero do CNPJ do prestador de servico |
| 66 | DS_ENDERECO_PRESTADOR | VARCHAR2 | Y | Tipo de nome do logradouro do prestador de servico (Av..., Rua..., ...) |
| 67 | DS_NUMERO_ENDERECO | VARCHAR2 | Y | Numero do imovel |
| 68 | DS_COMPLEMENTO_ENDERECO | VARCHAR2 | Y | Complemento do endereco do prestador |
| 69 | DS_BAIRRO_PRESTADOR | VARCHAR2 | Y | Bairro do prestador |
| 70 | DS_NUMERO_CIDADE_PRESTADOR | VARCHAR2 | Y | Codigo do municipio do estabelecimento prestador do servico (Tabela do IBGE) |
| 71 | DS_UF_PRESTADOR | VARCHAR2 | Y | Sigla da unidade da federac?o do prestador |
| 72 | DS_CEP_PRESTADOR | VARCHAR2 | Y | Numero do CEP |
| 73 | DS_EMAIL_PRESTADOR | VARCHAR2 | Y | E-mail do prestador de servico |
| 74 | DS_NUMERO_TELEFONE_PRESTADOR | VARCHAR2 | Y | Numero do telefone do prestador |
| 75 | DS_NUMERO_ENDERECO_TOMADOR | VARCHAR2 | Y | Numero do endereco do prestador |
| 76 | DS_COMPLEMENTO_ENDERECO_TOMAD | VARCHAR2 | Y | Complemento do endereco do tomador |
| 77 | DS_RAZAO_SOCIAL_INTERMEDI_SRV | VARCHAR2 | Y | Nome ou Raz?o Social de intermediario do servico |
| 78 | DS_INSCRICAO_MUNICIP_INTC_SRV | VARCHAR2 | Y | Numero da inscric?o municipal do intermediario do servico |
| 79 | DS_CNPJ_INTERMEDIARIO_SERVICO | VARCHAR2 | Y | Numero do CNPJ do intermediario do servico |
| 80 | DS_NUMERO_INSCRICAO_PRESTADOR | VARCHAR2 | Y | Inscric?o municipal do prestador que emitiu a NFSE |
| 81 | DS_CNPJ_PRESTADOR | VARCHAR2 | Y | Numero do CNPJ do Prestador do Servico |
| 82 | CD_OBRA | VARCHAR2 | Y | Numero do CNPJ do Prestador do Servico |
| 83 | DS_NUMERO_ART | VARCHAR2 | Y | Numero da ART |
| 84 | DS_SERVICO | VARCHAR2 | Y | Discriminac?o dos servicos |
| 85 | DS_NUMERO_ENDERECO_PRESTADOR | VARCHAR2 | Y | Numero do imovel |
| 86 | DS_COMPLEMENTO_ENDERECO_PRES | VARCHAR2 | Y | Complemento do endereco do prestador |
| 87 | TP_CPF_CGC_TOMADOR | VARCHAR2 | N | Identifica o tipo de CPF/CGC do tomador: 1 - CPF  2 - CNPJ  3 - N?o Informado. |
| 88 | DS_UF_MUNICIPIO_GERADOR | VARCHAR2 | Y | Sigla da unidade da federac?o do municipio gerador da NFS-e |
| 89 | DS_MUNICIPIO_GERADOR | VARCHAR2 | Y | Codigo do IBGE do municipio gerador |
| 90 | TP_RPS | VARCHAR2 | Y | Tipo de RPS: 1 ? Recibo Provisorio de Servicos; 2 ? RPS  Nota Fiscal Conjugada (Mista); 3 ? Cupom... |
| 91 | CD_STATUS | VARCHAR2 | Y | Siturac?o do RT/RPS |
| 92 | CD_ITEM | VARCHAR2 | Y | Codigo do item |
| 93 | DS_SERIE_NOTA_FISC_ELET_SUBT | VARCHAR2 | Y | Serie da rps substituida, |
| 94 | DS_TIPO_NOTA_FISC_ELET_SUBT | VARCHAR2 | Y | Tipo da rps substituida. |
| 95 | DS_VL_ALIQUOTA_PIS | VARCHAR2 | Y | Valor da aliquota do PIS |
| 96 | DS_VL_ALIQUOTA_COFINS | VARCHAR2 | Y | Aliquota COFINS (Sefaz) |
| 97 | DS_VL_ALIQUOTA_INSS | VARCHAR2 | Y | Valor da aliquota do INSS |
| 98 | DS_VL_ALIQUOTA_IR | VARCHAR2 | Y | Valor da aliquota do IR |
| 99 | DS_VL_ALIQUOTA_CSLL | VARCHAR2 | Y | Valor da aliquota do CSLL |
| 100 | DS_NR_DDD_PRESTADOR | VARCHAR2 | Y | Numero do DDD do Hospital |
| 101 | DS_NR_TELEFONE_PRESTADOR | VARCHAR2 | Y | Telefone do Hospitalr |
| 102 | DS_NR_DDD_TOMADOR | VARCHAR2 | Y | Numero do DDD do cliente do Hospital |
| 103 | DS_NR_TELEFONE_TOMADOR | VARCHAR2 | Y | Telefone do cliente do Hospital |
| 104 | DS_TIPO_LOGRADOURO | VARCHAR2 | Y | Tipo de Logradouro. Ex. Av,R e etc... Equivale a DS_RESUMIDO da tabela DBAM.TTIPO_LOGRADOOURO |
| 105 | DS_LOGRADOURO | VARCHAR2 | Y | Nome do Logradouro. Ex. Avenida,Rua e etc... Equivale a DS_TIPO_LOGRADOURO da tabela DBAM.TTIPO_L... |
| 106 | DS_TIPO_BAIRRO | VARCHAR2 | Y | Tipo de Bairro da Cidade, Exigido pela Prefeitura de Campo Grande/MS |
| 107 | DS_NM_CIDADE_TOMADOR | VARCHAR2 | Y | Nome da cidade do tomador |
| 108 | DS_CANCELAMENTO | VARCHAR2 | Y | Descric?o do Cancelamento |
| 109 | DS_SIGNATURE_VALUE | VARCHAR2 | Y | Conteudo do campo assinatura do XML. |
| 110 | DS_NR_CNPJ_TOMADOR | VARCHAR2 | Y | Criacao da coluna DS_NR_CNPJ_TOMADOR |
| 111 | DS_MODULO | VARCHAR2 | Y | Modulo da nota fiscal |
| 112 | TP_NOTA_FISCAL | VARCHAR2 | Y | Tipo de nota fiscal |
| 113 | TP_EMISSAO_NFE | VARCHAR2 | Y | Tipo de emissao. N normal, C Contigencia |
| 114 | DS_NUMERO_NF_FIXO | VARCHAR2 | Y | NUMERO FIXO DA NOTA FISCAL |
| 115 | DS_PAIS_PRESTADOR | VARCHAR2 | Y | Criacao da coluna DS_PAIS_PRESTADOR |
| 116 | DS_COMPLEMENTO_ENDERECO_PREST | VARCHAR2 | Y | Criacao da coluna DS_COMPLEMENTO_ENDERECO_PREST |
| 117 | DS_VERSAO | VARCHAR2 | Y | Criacao da coluna DS_VERSAO |
| 118 | DS_TIPO_IMPOSTO | VARCHAR2 | Y | Criacao da coluna DS_TIPO_IMPOSTO |
| 119 | TP_DOCUMENTO | VARCHAR2 | Y | Criacao da coluna TP_DOCUMENTO |
| 120 | DS_TIPO_NF | VARCHAR2 | Y | Criacao da coluna DS_TIPO_NF |
| 121 | DS_SITUACAO_NF | VARCHAR2 | Y | Criacao da coluna DS_SITUACAO_NF |
| 122 | DS_HR_EMISSAO_RT | VARCHAR2 | Y | Hora de emiss?o da nota fiscal |
| 123 | DS_PRACA_TOMADOR | VARCHAR2 | Y | Local de tributac?o |
| 124 | CD_PAIS | VARCHAR2 | Y | Codigo do pais |
| 125 | DS_PAIS | VARCHAR2 | Y | Pais do Servico |
| 126 | CD_PAIS_TOMADOR | VARCHAR2 | Y | Codigo do pais tomador |
| 127 | CD_MUNICIPIO_TOMADOR | VARCHAR2 | Y | Codigo do municipio do tomador |
| 128 | DS_STATUS | VARCHAR2 | Y | STATUS DA NOTA FISCAL 1 EMITIDA 2 CANCELADA |
| 129 | DS_FORMA_PAGAMENTO | VARCHAR2 | Y | Forma de Paramento. (Sefaz) |
| 130 | DS_NR_INSCRICAO_ESTADUAL_PREST | VARCHAR2 | Y | Inscricao Estadual (Sefaz) |
| 131 | CD_SERVICO | VARCHAR2 | Y | Codigo do Servico (Sefaz) |
| 132 | TP_IMPRESSAO | VARCHAR2 | Y | Formato de Impress?o do DANFE 1-Retrato/ 2-Paisagem (Sefaz) |
| 133 | TP_AMBIENTE | VARCHAR2 | Y | 1-Produc?o/ 2-Homologac?o (Sefaz) |
| 134 | CD_DIGITO_VERIFICADOR | VARCHAR2 | Y | 1Digito Verificador da Chave de Acesso da NF-e (Sefaz) |
| 135 | DS_NOME_CIDADE_PRESTADOR | VARCHAR2 | Y | Nome da Cidade (Sefaz) |
| 136 | CD_EAN | VARCHAR2 | Y | Preencher com o codigo GTIN-8, GTIN-12, GTIN-13 ou GTIN-14 (antigos codigos EAN, UPC eDUN-14), n?... |
| 137 | CD_SIT_TRIBUTARIA | VARCHAR2 | Y | Informar o codigo da tributac?o do ISSQN: N ? NORMAL; R ? RETIDA; S ?SUBSTITUTA; I ? ISENTA. (v.2... |
| 138 | CD_FINALIDADE_NFE | VARCHAR2 | Y | Finalidade de emiss?o da NFe: 1- NF-e normal/ 2-NF-e complementar / 3 ? NF-e de ajuste (Sefaz) |
| 139 | CD_PROCESSO_EMISSAO_NFE | VARCHAR2 | Y | Processo de emiss?o da NF-e: Identificador do processo de emiss?o da NF-e: 0 - emiss?o de NF-e co... |
| 140 | CD_NCM | VARCHAR2 | Y | Codigo NCM com 8 digitos ou 2 digitos (genero) (Sefaz) |
| 141 | DS_CST_PIS | VARCHAR2 | Y | Codigo de Situac?o Tributaria do PIS: 01 ? Operac?o Tributavel (base de calculo = valor da operac... |
| 142 | DS_CST_COFINS | VARCHAR2 | Y | Codigo de Situac?o Tributaria do COFINS: 01 ? Operac?o Tributavel (base de calculo = valor da ope... |
| 143 | DS_INF_ADD_FISCO | VARCHAR2 | Y | Informac?es Adicionais para o Fisco (Sefaz) |
| 144 | DS_AMBIENTE | VARCHAR2 | Y | Identificac?o do Ambiente: 1 - Produc?o 2 - Homologac?o |
| 145 | DS_DT_HR_SAI_ENT | VARCHAR2 | Y | Data e Hora da saída ou de entrada da mercadoria / produto (AAAA-MM-DDTHH:mm:ssTZD) |
| 146 | DS_ID_LOCAL_DEST_OPERACAO | VARCHAR2 | Y | Identificador de Local de destino da operação (1-Interna;2-Interestadual;3-Exterior) |
| 147 | DS_FINALIDADE_EMISSAO | VARCHAR2 | Y | Finalidade da emissão da NF-e: 1 - NFe normal, 2 - NFe complementar, 3 - NFe de ajuste, 4 - Devol... |
| 148 | DS_INDICADOR_FINAL | VARCHAR2 | Y | Indica operação com consumidor final (0-Não;1-Consumidor Final) |
| 149 | DS_DT_HR_ENT_CONTINGENCIA | VARCHAR2 | Y | Informar a data e hora de entrada em contingência contingência no formato  (AAAA-MM-DDThh:mm:ssTZ... |
| 150 | DS_JUSTIFICATIVA_ENTRADA | VARCHAR2 | Y | Informar a Justificativa da entrada |
| 151 | DS_ID_INSCRICAO_ESTADUAL_DEST | VARCHAR2 | Y | Indicador da IE do destinatário: 1 ¿ Contribuinte ICMSpagamento à vista; 2 ¿ Contribuinte isento ... |
| 152 | DS_ID_ESTRANGEIRO | VARCHAR2 | Y | Indicador se paciente for estrangeiro |
| 153 | DS_CST_COFINS_ALIQ | VARCHAR2 | Y | Código de Situação Tributária da COFINS - Grupo COFINS tributado pela alíquota |
| 154 | DS_VL_BASE_CALC_PIS | VARCHAR2 | Y | Base de calculo - Grupo PIS |
| 155 | DS_VL_BASE_CALC_COFINS | VARCHAR2 | Y | Base de calculo - Grupo COFINS |
| 156 | DS_CST_PIS_ALIQ | VARCHAR2 | Y | Código de Situação Tributária da PIS - Grupo COFINS tributado pela alíquota |

---

## DBAMV.NOTA_FISCAL_ELET_SIT_LOT_ENV
> Tabela que com informac?es para consulta da situac?o do lote de notas fiscais

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Identificador do registro para o configurador XML |
| 2 | ID_PAI | NUMBER | Y | Identificador do registro pai para o configurador XML |
| 3 | DS_CNPJ_PRESTADOR | VARCHAR2 | N | numero do cnpj do prestador |
| 4 | DS_INSCRICAO_PRESTADOR | VARCHAR2 | Y | Inscric?o municipal do prestador |
| 5 | DS_NUMERO_PROTOCOLO | VARCHAR2 | Y | Numero do protocolo do lote de notas fiscais |

---

## DBAMV.NOTA_FISCAL_ELET_SIT_LOT_RSP
> Tabela contendo a resposta da consulta da situac?o do lote de notas fiscais

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Identificador do registro para o configurador XML |
| 2 | ID_PAI | NUMBER | Y | Identificador do registro pai para o configurador XML |
| 3 | DS_NUMERO_LOTE | VARCHAR2 | N | numero que identifica o lote das notas fiscais |
| 4 | CD_SITUACAO | VARCHAR2 | Y | Codigo que informa a situc?o do lote de notas |
| 5 | CD_MENSAGEM_RESPOSTA | VARCHAR2 | N | Codigo que identifica a resposta do lote enviado |
| 6 | DS_MENSAGEM_RESPOSTA | VARCHAR2 | N | Descric?o da mensagem de resposta |
| 7 | DS_CORRECAO_MENSAGEM_RESPOSTA | VARCHAR2 | Y | Descric?o para correc?o do lote de notas fiscais |

---

## DBAMV.NOTA_FISCAL_FFCV_CONVENIO_RPS
> Tabela para armazenar o codigo do convenio no filtro de gerac?o de NFe

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONTROLE_USUARIO | NUMBER | N | Codigo sequencial do usuario logado. (Controle interno) |
| 2 | CD_CONVENIO | NUMBER | N | Codigo do convenio |

---

## DBAMV.NOTA_FISCAL_FFCV_RPS
> Tabela para armazenar as notas fiscais pre-selecionadas na gerac?o e NFe em XML

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONTROLE_USUARIO | NUMBER | N | Codigo sequencial do usuario logado. (Controle interno) |
| 2 | CD_NOTA_FISCAL | NUMBER | N | Codigo da nota fiscal |
| 3 | TP_OPERADORA | VARCHAR2 | N | Indica se o tipo da nota eh N - Normal ou S - Operadora |

---

## DBAMV.NOTA_FISCAL_LOG_ARQUIVO
> Tabela criada para armazenar os arquivos e retorno do webservice

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ENVIO_ARQUIVO | NUMBER | N | Codigo sequencial da tabela (PK) |
| 2 | CD_NOTA_FISCAL | NUMBER | N | Codigo da nota fiscal (FK) |
| 3 | LO_ARQUIVO_ENVIO | CLOB | Y | Arquivo enviado ao webservice |
| 4 | DT_TRANSMISSAO | DATE | Y | Data de transmissao do arquivo |
| 5 | NM_ARQUIVO_ENVIO | VARCHAR2 | Y | Nome do arquivo a ser enviado |
| 6 | CD_ARQUIVO_RETORNO | VARCHAR2 | Y | Codigo de retorno |
| 7 | DS_ARQUIVO_RETORNO | VARCHAR2 | Y | Descricao de retorno |
| 8 | DS_VERIFICACAO_RETORNO | VARCHAR2 | Y | Codigo de verificacao |
| 9 | LO_ARQUIVO_RETORNO | CLOB | Y | Arquivo de retorno |
| 10 | LO_PDF_RETORNO | BLOB | Y | Pda da nota fiscal |
| 11 | TP_STATUS | VARCHAR2 | Y | Status do processamento. (N-nao processado) e (P-processado) |

---

## DBAMV.NOTA_FISCAL_PARAM_CANCELA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_NOTA_FISCAL_PARAM_CANCELA | NUMBER | N | Chave da tabela |
| 2 | CD_NOTA_FISCAL | NUMBER | N | Código da nota fiscal analisada |
| 3 | NM_USUARIO | VARCHAR2 | N | Usuário que solicitou o cancelamento |
| 4 | DT_TENTATIVA_CANCELAMENTO | DATE | N | data da tentativa de cancelamento |
| 5 | SN_PASSOU_VERIFICACAO | CHAR | N | Informa se a concelamento foi aprovado pelo procedimento de analise |
| 6 | DS_MOTIVO_REJEICAO | VARCHAR2 | Y | Motivo da rejeição do cancelamento |
| 7 | TP_NOTA_FISCAL | VARCHAR2 | N | Tipo da nota fiscal A=Avulsa/ C=Convenio/ P=Particular |
| 8 | SN_DELETA_CONTAS_RECEBER | CHAR | Y | Parametro para cancelamento de notas Avulsas |
| 9 | SN_PERMITE_CANC_NF_CONTAB | CHAR | N | Situação do parâmetro financeiro de cancelamento de contas contabilizadas |
| 10 | QTD_CON_REC_CONTABILIZADA | NUMBER | Y | Quantidade de contas contabilizadas |
| 11 | QTD_CON_REC_NAO_CONTABILIZADA | NUMBER | Y | Quantidade de contas não contabilizadas |
| 12 | SN_CANCELA_CON_REC_AUTO | CHAR | Y | Parametro fiscal de permissão de cancelamento da CON_REC/ CONFIG_FINANC.SN_CANC_AUT_CONTA_RECEBER |
| 13 | SN_CONVENIO_GERA_NF_PACIENTE | CHAR | Y | Parametro do convenio determinando se gera uma NF por Paciente. SN_GERA_NF_CONV_PACIENTE |
| 14 | DT_MIN_CANCELAMENTO | DATE | Y | Indica a menor data de recebimento cadastrado, o cancelamento tem que ser com data superior ao re... |
| 15 | QTD_RECEBIMENTO | NUMBER | Y | Quantidade de recebimentos associados ao documento ou caixa informado |

---

## DBAMV.NOTA_FISCAL_RECEBIMENTO
> Tabela de notas fiscais geradas a partir do recebimento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_RECCON_REC | NUMBER | N | Codigo do recebimento |
| 2 | CD_NOTA_FISCAL | NUMBER | N | Codigo da nota fiscal do recebimento |

---

## DBAMV.NOTA_FISCAL_TAB_NOT_FIS_DIGI
> Tabela de Detalhe de Fatura nas Notas Fiscais do XML de envio - Nota fiscal Eletronica de Mogi das Cruzes/SP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Campo de identificac?o do No Atual - Estrutura Java/XML |
| 2 | ID_PAI | NUMBER | N | Campo de identificac?o do No Pai em relac?o ao No Atual - Estrutura Java/XML |
| 3 | CD_RECIBO | VARCHAR2 | Y | campo pertencente a tabela TBNFD referente a estrutura do XML N.F.Eletronica de MOGI DAS CRUZES/SP |
| 4 | DS_DT_HORA | VARCHAR2 | Y | campo pertencente a tabela TBNFD referente a estrutura do XML N.F.Eletronica de MOGI DAS CRUZES/SP |
| 5 | DS_QT_NOTAS | VARCHAR2 | Y | campo pertencente a tabela TBNFD referente a estrutura do XML N.F.Eletronica de MOGI DAS CRUZES/SP |
| 6 | CD_MUNICIPIO | VARCHAR2 | Y | campo pertencente a tabela TBNFD referente a estrutura do XML N.F.Eletronica de MOGI DAS CRUZES/SP |
| 7 | DS_ALGORITHM | VARCHAR2 | Y | campo pertencente a tabela TBNFD referente a estrutura do XML N.F.Eletronica de MOGI DAS CRUZES/SP |
| 8 | DS_SIG_ALG | VARCHAR2 | Y | campo pertencente a tabela TBNFD referente a estrutura do XML N.F.Eletronica de MOGI DAS CRUZES/SP |
| 9 | DS_TRANSFORMS_SIG_ALG | VARCHAR2 | Y | campo pertencente a tabela TBNFD referente a estrutura do XML N.F.Eletronica de MOGI DAS CRUZES/SP |
| 10 | DS_REFERENCE_SIG_ALG | VARCHAR2 | Y | campo pertencente a tabela TBNFD referente a estrutura do XML N.F.Eletronica de MOGI DAS CRUZES/SP |
| 11 | DS_DIGEST_VALUE | VARCHAR2 | Y | campo pertencente a tabela TBNFD referente a estrutura do XML N.F.Eletronica de MOGI DAS CRUZES/SP |
| 12 | DS_URI | VARCHAR2 | Y | campo pertencente a tabela TBNFD referente a estrutura do XML N.F.Eletronica de MOGI DAS CRUZES/SP |
| 13 | DS_SIGNATURE_VALUE | VARCHAR2 | Y | campo pertencente a tabela TBNFD referente a estrutura do XML N.F.Eletronica de MOGI DAS CRUZES/SP |
| 14 | DS_X509_CERTIFICATE | VARCHAR2 | Y | campo pertencente a tabela TBNFD referente a estrutura do XML N.F.Eletronica de MOGI DAS CRUZES/SP |
| 15 | DS_OBS | VARCHAR2 | Y | Campo de Observac?o, retornado na havaliac?o do XML de nota fiscal |
| 16 | DS_STATUS | VARCHAR2 | Y | Campo de Status, retornado na havaliac?o do XML de nota fiscal |

---

## DBAMV.NOTA_FISCAL_TRIBUTO
> Tributos da Nota Fiscal.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_NOTA_FISCAL_TRIBUTO | NUMBER | N | Codigo do Tributo da Nota Fiscal. |
| 2 | CD_NOTA_FISCAL | NUMBER | N | Codigo da Nota Fiscal. |
| 3 | CD_DETALHAMENTO | NUMBER | N | Codigo do Tributo. |
| 4 | SN_RETIDO | VARCHAR2 | N | Indica se o Tributo foi Retido na Nota Fiscal. |
| 5 | VL_TRIBUTO | NUMBER | N | Valor do Tributo. |
| 6 | CD_CON_REC_TIP_DET_REC | NUMBER | Y | Codigo da Conta a Receber no Detalhamento da Conta a Receber. |
| 7 | CD_DETALHAMENTO_TIP_DET_REC | NUMBER | Y | Codigo do Tributo no Detalhamento da Conta a Receber. |
| 8 | VL_PERCENTUAL | NUMBER | N | Percentual do imposto a ser aplicado no total da nota fiscal. |
| 9 | VL_TRIBUTO_TOTAL | NUMBER | Y | Valor Total do Tributo. |
| 10 | CD_SEQ_INTEGRA | NUMBER | Y | Codigo sequencial da integrac?o |
| 11 | DT_INTEGRA | DATE | Y | Data de integrac?o do registro |
| 12 | VL_BASE_CALCULO | NUMBER | Y | Valor da base de calculo do tributo. |
| 13 | CD_CST | VARCHAR2 | Y |  |
| 14 | CD_CLAS_TRIB | VARCHAR2 | Y |  |
| 15 | VL_ALIQ_PADRAO | NUMBER | Y |  |
| 16 | VL_ALIQ_REDUCAO | NUMBER | Y |  |
| 17 | VL_ALIQ_EFETIVA | NUMBER | Y |  |

---

## DBAMV.NOTA_FISC_ELET_NOT_FIS_DIGI_OK
> Tabela de Nota Fiscal, retornada quando o processamento e bem sucedido - XML Nota Fiscal Eletronica de Mogi das Cruzes/SP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Campo de identificac?o do No Atual - Estrutura Java/XML |
| 2 | ID_PAI | NUMBER | N | Campo de identificac?o do No Pai em relac?o ao No Atual - Estrutura Java/XML |
| 3 | ID_MENSAGEM_ORIGEM | NUMBER | Y | Campo de referencia para o ID de identificac?o da mensagem original enviada - Estrutura Java/XML |
| 4 | CD_CAE | VARCHAR2 | Y | Codigo de Operac?o Fiscal |
| 5 | DS_DT_EMISSAO | VARCHAR2 | Y | Data de emiss?o da nota fiscal digital |
| 6 | CD_NATUREZA_OPERACAO | VARCHAR2 | Y | Natureza fiscal da operac?o |
| 7 | DS_NR_ID_NFDOK | VARCHAR2 | Y | Numero da nota fiscal digital gerada pelo site da prefeitrua de Mogi das Cruzes/SP |
| 8 | NM_RAZAO_SOCIAL_CLIENTE | VARCHAR2 | Y | Razao social do cliente |
| 9 | NM_FANTASIA_CLIENTE | VARCHAR2 | Y | Nome fantasia do cliente |
| 10 | DS_ENDERECO_CLIENTE | VARCHAR2 | Y | Endereco do cliente |
| 11 | DS_BAIRRO_CLIENTE | VARCHAR2 | Y | Bairro do cliente |
| 12 | DS_NR_LOGRADOURO_CLIENTE | VARCHAR2 | Y | Logradouro do cliente |
| 13 | DS_CIDADE_CLIENTE | VARCHAR2 | Y | Cidade do cliente |
| 14 | DS_UF_CLIENTE | VARCHAR2 | Y | Estado do cliente |
| 15 | DS_PAIS_CLIENTE | VARCHAR2 | Y | Pais do cliente |
| 16 | DS_NR_FONE_CLIENTE | VARCHAR2 | Y | Telefone do cliente |
| 17 | DS_NR_FAX_CLIENTE | VARCHAR2 | Y | Fax do cliente |
| 18 | DS_NR_INSCRICAO_MUNICIPAL_CLI | VARCHAR2 | Y | Numero da inscric?o municipal do cliente |
| 19 | DS_NR_CEP_CLIENTE | VARCHAR2 | Y | CEP do cliente |
| 20 | DS_E_MAIL_CLIENTE | VARCHAR2 | Y | E-mail do cliente |
| 21 | DS_NR_CNPJ_CPF_CLIENTE | VARCHAR2 | Y | CPF ou CNPJ do cliente |
| 22 | DS_NR_INSCRICAO_ESTADUAL_CLI | VARCHAR2 | Y | Numero da inscric?o estadual do cliente |
| 23 | DS_VL_BASE_CALCULO | VARCHAR2 | Y | Valor da base de calculo |
| 24 | DS_VL_ISSQN_CLIENTE | VARCHAR2 | Y | Valor do ISS do cliente |
| 25 | DS_VL_ISSQN_SEM_RETENCAO | VARCHAR2 | Y | Valor do ISS sem retenc?o |
| 26 | DS_VL_ISSQN_TOTAL | VARCHAR2 | Y | Valor do ISS total |
| 27 | DS_VL_TOTAL_NFDOK | VARCHAR2 | Y | Total da nota fiscal processada corretamente |
| 28 | DS_NR_CNPJ_FRETE | VARCHAR2 | Y | CNPJ da transportadora que realizou o frete |
| 29 | NM_RAZAO_SOCIAL_FRETE | VARCHAR2 | Y | Razao social da transportadora |
| 30 | DS_ENDERECO_FRETE | VARCHAR2 | Y | Endereco de entrega |
| 31 | DS_EMITENTE_FRETE | VARCHAR2 | Y | Nome do emissor do frete |
| 32 | DS_DESTINATARIO_FRETE | VARCHAR2 | Y | Nome do dsstinatario do frete |
| 33 | DS_QT_FRETE | VARCHAR2 | Y | Quantidade de frete |
| 34 | TP_FRETE | VARCHAR2 | Y | Tipo de frete |
| 35 | DS_VL_PESO_LIQUIDO_FRETE | VARCHAR2 | Y | Pesso liquido do frete |
| 36 | DS_VL_PESO_BRUTO_FRETE | VARCHAR2 | Y | Peso bruto do frete |
| 37 | DS_SERIE | VARCHAR2 | Y | Serie |
| 38 | SN_SERIE_SIMPLIFICADA | VARCHAR2 | Y | Serie simplificada |
| 39 | CD_SERIE | VARCHAR2 | Y | Codigo da serie |
| 40 | DS_LOGO_TIMBRE_CONTRIBUINTE | VARCHAR2 | Y | Criacao da coluna DS_LOGO_TIMBRE_CONTRIBUINTE |
| 41 | DS_LINHA1_TIMBRE_CONTRIBUINTE | VARCHAR2 | Y | Descric?o para o timbre do contribuinte - Linha 1 |
| 42 | DS_LINHA2_TIMBRE_CONTRIBUINTE | VARCHAR2 | Y | Descric?o para o timbre do contribuinte - Linha 2 |
| 43 | DS_LINHA3_TIMBRE_CONTRIBUINTE | VARCHAR2 | Y | Descric?o para o timbre do contribuinte - Linha 3 |
| 44 | DS_LINHA4_TIMBRE_CONTRIBUINTE | VARCHAR2 | Y | Descric?o para o timbre do contribuinte - Linha 4 |
| 45 | DS_LOGO_TIMBRE_PREFEITURA | VARCHAR2 | Y | Logomarca da Prefeitura |
| 46 | DS_LINHA1_TIMBRE_PREFEITURA | VARCHAR2 | Y | Descric?o para o timbre da Prefeitura - Linha 1 |
| 47 | DS_LINHA2_TIMBRE_PREFEITURA | VARCHAR2 | Y | Descric?o para o timbre da Prefeitura - Linha 2 |
| 48 | DS_LINHA3_TIMBRE_PREFEITURA | VARCHAR2 | Y | Descric?o para o timbre da Prefeitura - Linha 3 |
| 49 | DS_ASSINATURA | VARCHAR2 | Y | Assinatura |
| 50 | DS_NR_ID_NFD | VARCHAR2 | Y | Numero de identificac?o da nota fisal digital |
| 51 | DS_NOTA_FISCAL_OK | VARCHAR2 | Y | Armazena informac?es retornadas a tag nota fiscal eletronia/nota fiscal digital OK |
| 52 | CD_VERIFICACAO | VARCHAR2 | Y | Codigo de verificac?o do nota fiscal eletronica |
| 53 | DS_CNPJ_PRESTADOR | VARCHAR2 | Y | CNPJ do prestador do servico |
| 54 | TP_RPS | VARCHAR2 | N | Tipo de RPS |
| 55 | DT_EMISSAO_RPS | VARCHAR2 | Y | Data de emiss?o do RPS |
| 56 | TP_NATUREZA_OPERACAO | VARCHAR2 | N | Criacao da coluna TP_NATUREZA_OPERACAO |
| 57 | TP_REGIME_ESPECIAL_TRIBUTACAO | VARCHAR2 | N | Regime especial de tributac?o: 1 ? Microempresa Municipal; 2 ? Estimativa; 3 ? Sociedade de Profi... |
| 58 | SN_OPTANTE_SIMPLES_NACIONAL | VARCHAR2 | N | Indica se a empresa e optante pelo Simples Nacional (Regime de declarac?o de impostos). |
| 59 | SN_INCENTIVADOR_CULTURAL | VARCHAR2 | N | Indica se a empresa e uma incentivadora cultural. |
| 60 | DS_VALOR_PIS | VARCHAR2 | Y | Valor do PIS |
| 61 | DS_VALOR_COFINS | VARCHAR2 | Y | Valor do Cofins |
| 62 | DS_VALOR_INSS | VARCHAR2 | Y | Valor do INSS |
| 63 | DS_VALOR_IRRF | VARCHAR2 | Y | Valor do IRRF |
| 64 | DS_VALOR_CSLL | VARCHAR2 | Y | Valor do CSLL |
| 65 | DS_ALIQUOTA_ISS | VARCHAR2 | Y | Alicota de calculo do ISS |
| 66 | DS_VALOR_ISS | VARCHAR2 | Y | Valor do ISS |
| 67 | DS_VALOR_OUTRAS_RETENCOES | VARCHAR2 | Y | Valor referente a outras retenc?es |
| 68 | DS_DESCONTO_INCONDICIONADO | VARCHAR2 | Y | Desconto incondicionado |
| 69 | DS_DESCONTO_CONDICIONADO | VARCHAR2 | Y | Desconto condicionado |
| 70 | CD_CNAE | VARCHAR2 | Y | Codigo do CNAE |
| 71 | CD_TRIBUTACAO_MUNICIPIO | VARCHAR2 | Y | Codigo da tributac?o no municipio |
| 72 | DS_SERVICO | VARCHAR2 | Y | Descric?o do servico |
| 73 | CD_MUNICIPIO | VARCHAR2 | Y | Codigo do municipio |
| 74 | DS_INSCRICAO_MUNICIPAL_PRESTAD | VARCHAR2 | Y | Inscric?o municipal do prestador |
| 75 | NM_RAZAO_SOCIAL | VARCHAR2 | Y | Raz?o social do prestador |
| 76 | NM_PRESTADOR | VARCHAR2 | Y | Nome do prestador |
| 77 | DS_ENDERECO_PRESTADOR | VARCHAR2 | Y | Endereco do prestador |
| 78 | DS_NUMERO_PRESTADOR | VARCHAR2 | Y | Numero do endereco do prestador |
| 79 | DS_COMPLEMENTO_PRESTADOR | VARCHAR2 | Y | Complemento do endereco do prestador |
| 80 | DS_BAIRRO_PRESTADOR | VARCHAR2 | Y | Bairro do endereco do prestador |
| 81 | DS_UF_PRESTADOR | VARCHAR2 | Y | UF do endereco do prestador |
| 82 | DS_CEP_PRESTADOR | VARCHAR2 | Y | CEP do endereco do prestador |
| 83 | DS_TELEFONE_PRESTADOR | VARCHAR2 | Y | Telefone do prestador |
| 84 | DS_EMAIL_PRESTADOR | VARCHAR2 | Y | E-mail do prestador |
| 85 | DS_COMPLEMENTO_CLIENTE | VARCHAR2 | Y | Complemento do endereco do cliente |
| 86 | DS_NUMERO_RPS | VARCHAR2 | Y | Numero do RPS. |
| 87 | TP_RECOLIMENTO | VARCHAR2 | Y | Tipo de Recolhimento "A"- A Receber e "R" Retido na Fonte. |
| 88 | DS_VL_DEDUC | VARCHAR2 | Y | Valor a Deduzir. |
| 89 | DS_VL_NFE | VARCHAR2 | Y | Valor da Nota Fiscal de Servicos Eletronica. |
| 90 | DS_NR_CNPJ_TOMADOR | VARCHAR2 | Y | Criacao da coluna DS_NR_CNPJ_TOMADOR |
| 91 | CD_ITEM | VARCHAR2 | Y | Codigo do item |
| 92 | DS_NR_CNPJ_CLIENTE | VARCHAR2 | Y | Criacao da coluna DS_NR_CNPJ_CLIENTE |
| 93 | DS_NR_NOTA_FISCAL_SUBSTITUTA | VARCHAR2 | Y | Criacao da coluna DS_NR_NOTA_FISCAL_SUBSTITUTA |

---

## DBAMV.NOTA_FIS_ELET_NOT_FIS_DIGI_ERR
> Tabela para registrar o retorno de erro do processamento da nota fiscal eletr?nica de Mogi das Cruzes/SP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Campo de identificac?o do No Atual - Estrutura Java/XML |
| 2 | ID_PAI | NUMBER | Y | Campo de identificac?o do No Pai em relac?o ao No Atual - Estrutura Java/XML |
| 3 | ID_MENSAGEM_ORIGEM | NUMBER | Y | Campo para identificar o XML original enviado ao site da prefeitura para convers?o |
| 4 | CD_ERRO | VARCHAR2 | Y | Codigo do erro |
| 5 | DS_NR_NFD | VARCHAR2 | Y | Numero da nota fiscal |
| 6 | DS_NOTA_FISCAL_ERRO | VARCHAR2 | Y | Armazena informac?es retornadas a tag nota fiscal eletronia/nota fiscal digital erro |
| 7 | DS_FORMS | VARCHAR2 | Y | Descric?o do Forms |
| 8 | DS_BLOCO | VARCHAR2 | Y | Descric?o do Bloco |
| 9 | DT_ERRO | DATE | Y | Data do Erro |
| 10 | DS_ITEM | VARCHAR2 | Y | Descric?o do Item |

---

## DBAMV.NOTA_FIS_ELET_NOT_FIS_DIGI_FAT
> Tabela de detalhamento de Fatura no envio - XML de Nota Fiscal Eletronica de Mogi das Cruzes

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Campo de identificac?o do No Atual - Estrutura Java/XML |
| 2 | ID_PAI | NUMBER | N | Campo de identificac?o do No Pai em relac?o ao No Atual - Estrutura Java/XML |
| 3 | DS_NR_ID_NFD_FATURA | VARCHAR2 | Y | Numero da nota fiscal |
| 4 | DS_DT_VENCIMENTO | VARCHAR2 | Y | Data de vencimento |
| 5 | DS_VL_NFD_FATURA | VARCHAR2 | Y | Valor da futura |

---

## DBAMV.NOT_FIS_ELET_NOT_FIS_DIGI_RCIB
> Tabela de Recibo do XML de Nota Fiscal Eletronica de Mogi das Cruzes/SP

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Campo de identificac?o do No Atual - Estrutura Java/XML |
| 2 | ID_PAI | NUMBER | N | Campo de identificac?o do No Pai em relac?o ao No Atual - Estrutura Java/XML |
| 3 | CD_RECIBO | VARCHAR2 | Y | Codigo do recibo |
| 4 | DS_DT_HORA | VARCHAR2 | Y | Data e hora do recebimento |
| 5 | DS_QT_NOTAS | VARCHAR2 | Y | Quantidade de notas recebidas |
| 6 | CD_MUNICIPIO | VARCHAR2 | Y | Codigo do municipio |

---

## DBAMV.NUMERACAO_NOTA
> TABELA PARA GRAVAR O PROXIMO SEQUENCIAL DA ENTRADA DE NOTA FISCAL DE VENDA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MULTI_EMPRESA | NUMBER | N | CÓDIGO DA EMPRESA DA NUMERACAO DA NOTA |
| 2 | NR_SERIE | VARCHAR2 | Y | SÉRIE DA NUMERACAO DA NOTA |
| 3 | NR_DOCUMENTO | VARCHAR2 | Y | SEQUENCIAL DO DOCUMENTO DA NUMERACAO DA NOTA |
| 4 | SN_VIGENTE | VARCHAR2 | N | SE O SEQUENCIAL ESTA VIGENTE OU NÃO |

---

## DBAMV.OPERADORA_ANS
> Tabela de Operadoras ans

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_OPERADORA | VARCHAR2 | N | Codigo da Operadora |
| 2 | NM_RAZAO_SOCIAL | VARCHAR2 | N | Razao Social |
| 3 | NM_FANTASIA | VARCHAR2 | N | Nome Fantasia |
| 4 | NR_CNPJ | VARCHAR2 | N | Codigo do CNPJ da Operadora |
| 5 | SN_ATIVO | VARCHAR2 | N | Informa se a operadora esta ativa |

---

## DBAMV.ORGAO_EMISSOR_CNES
> Tabela de org?o emissor do SCNES-SUS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORGAO_EMISSOR | VARCHAR2 | N | Codigo do OE |
| 2 | DS_ORGAO_EMISSOR | VARCHAR2 | Y | Descric?o do OE |
| 3 | CD_CONSELHO_MV | NUMBER | Y | Codigo do conselho no MV |
| 4 | CD_TIPO_PRESTADOR_MV | NUMBER | Y | Descreve o tipo de prestador da MV |
| 5 | SN_IMPORTA | VARCHAR2 | Y | Sinalisa se sera tratado durante o processamento. |
| 6 | SN_ATIVO | VARCHAR2 | Y | Sinalisa se o item esta ativo. |
| 7 | CD_ORGAO_EMISSOR_MV | NUMBER | Y | Codigo do OE no MV |

---

## DBAMV.PARAMETROS_NF_SIMPLES_REMESSA
> FORMULARIOS DE NOTA FISCAL DE SIMPLES REMESSA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MULTI_EMPRESA | NUMBER | N | EMPRESA RELACIONADA AO FORMULARIO |
| 2 | CD_SITUACAO_TRIBUTARIA | VARCHAR2 | Y | CÓDIGO DE SITUAÇÃO TRIBUTARIA CST |
| 3 | CD_TIP_DOC_NFSR | NUMBER | Y | CÓDIGO DE DOCUMENTO TIPO "SIMPLES REMESSA" UTILIZADO NA TRANSFERÊNCIA ENTRE EMPRESAS |
| 4 | CD_PIS | VARCHAR2 | Y | CÓDIGO PIS/CST PARA SIMPLES REMESSA DE SAÍDA |
| 5 | CD_COFINS | VARCHAR2 | Y | CÓDIGO COFINS/CST PARA SIMPLES REMESSA DE SAÍDA |
| 6 | CD_CNAE | VARCHAR2 | Y | CÓDIGO DE CLASSIFICAÇÃO DE ATIVIDADE ECONOMICA. |
| 7 | CD_CRT | VARCHAR2 | Y | CÓDIGO DE REGIME TRIBUTÁRIO . VALOR PADRÃO "3" (REGIME NORMAL). |
| 8 | CD_CONDICAO_PAGAMENTO | NUMBER | Y | CÓDIGO DA CONDIÇÃO DE PAGAMENTO . VALOR PADRÃO "1" (A PRAZO). |
| 9 | CD_ICMS_MODALIDADE | VARCHAR2 | Y | MODALIDADE DO IMPOSTO ICMS . VALOR PADRÃO "3" (POR VALOR). |
| 10 | CD_CFOP | VARCHAR2 | Y | CÓDIGO FISCAL DE OPERAÇÕES E PRESTAÇÕES DE SERVIÇOS . VALOR PADRÃO "5152" (TRANSFERÊNCIA DE MERCA... |
| 11 | CD_ICMS_ORIGEM | VARCHAR2 | Y | CÓDIGO ICMS ORIGEM. VALOR PADRÃO "0" (NACIONAL). |
| 12 | CD_MODELO | VARCHAR2 | Y | MODELO DE DOCUMENTO FISCAL. VALOR PADRÃO "55" (NF-E) |
| 13 | CD_CFOP_ENTRADA | VARCHAR2 | Y | CÓDIGO CFOP NO CASO DA NFSR NA ENTRADA |
| 14 | CD_PIS_ENTRADA | VARCHAR2 | Y | CÓDIGO PIS/CST PARA SIMPLES REMESSA DE ENTRADA |
| 15 | CD_ANVISA_PADRAO | VARCHAR2 | Y | CÓDIGO ANVISA ENVIADO A SEFAZ (13 CARACTERES), CASO O PRODUTO NÃO TIVER CADASTRADO NO SISTEMA |
| 16 | CD_COFINS_ENTRADA | VARCHAR2 | Y | CÓDIGO COFINS/CST PARA SIMPLES REMESSA DE ENTRADA |
| 17 | DS_INFORMACAO_COMPLEMENTAR | VARCHAR2 | Y | INFORMAÇÃO COMPLEMENTAR |
| 18 | DS_OBSERVACAO | VARCHAR2 | Y | OBSERVAÇÕES |
| 19 | DS_EMAIL_EMPRESA_ORIGEM | VARCHAR2 | Y | EMAIL DO TOMADOR - EMPRESA ORIGEM DO ENVIO DA TRANSFERÊNCIA ENTRE EMPRESAS |
| 20 | DS_PROGRAMA_PDF | VARCHAR2 | Y | CAMINHO E NOME DO PROGRAMA QUE ABRE O ARQUIVO DANFE (PDF) |
| 21 | DS_PASTA_DANFE | VARCHAR2 | Y | NOME DA PASTA ONDE É GRAVADO O ARQUIVO DANFE (PDF) |
| 22 | DS_MOTIVO_CANCELAMENTO | VARCHAR2 | Y | MOTIVO DE CANCELAMENTO DA NF-E |
| 23 | DS_INFORMACAO_FISCO | VARCHAR2 | Y | CÓDIGO DE INFORMAÇÃO AO FISCO. VALOR PADRÃO "22" |
| 24 | DS_NATUREZA_OPERACAO | VARCHAR2 | Y | DESCRIÇÃO DA NATUREZA DA OPERAÇÃO. |
| 25 | DS_RAZAO_SOCIAL_TOMADOR | VARCHAR2 | Y | RAZÃO SOCIAL DA EMPRESA DESTINO. NO AMBIENTE DE HOMOLOGAÇÃO, DEVERÁ INFORMAR QUE É NF-E EMITIDA E... |
| 26 | DT_PERIODO_CANCELAMENTO_NFSR | DATE | Y | PERIODO PARA CANCELAMENTO DE NF SIMPLES REMESSA |
| 27 | DT_VENCIMENTO_CHAVE | DATE | Y | INFORMA A DATA DE VENCIMENTO DO CERTIFICADO DIGITAL PARA GERAÇÃO DE NF-E |
| 28 | VL_ALIQUOTA_PIS | NUMBER | Y | VALOR DA ALÍQUOTA PIS |
| 29 | VL_ALIQUOTA_COFINS | NUMBER | Y | VALOR DA ALÍQUOTA COFINS |
| 30 | VL_ALIQUOTA_ICMS | NUMBER | Y | VALOR DA ALÍQUOTA ICMS |
| 31 | VL_AMBIENTE | NUMBER | Y | INFORMA SE A INTEGRAÇÃO ESTA EM HOMOLOGAÇÃO (2) OU PRODUÇÃO (1) |
| 32 | VL_MAIS_MENOS | NUMBER | Y | AUMENTO DE HORAS [+] = 1 OU DIMINUIÇÃO DE HORAS [-] = -1 , NO HORARIO DE VERÃO. |
| 33 | VL_HORAS_VERAO | NUMBER | Y | NÚMERO DE HORAS DE DIFERENÇA , NO HORARIO DE VERÃO. |
| 34 | NR_DIAS_VENCIMENTO | NUMBER | Y | O SISTEMA IRÁ INFORMAR QUE O CERTIFICADO ESTA PRÓXIMA A VENCER NO NÚMERO DE DIAS INFORMADO NESTA ... |
| 35 | SN_EMITE_NFE | VARCHAR2 | N | INFORME SE A EMPRESA EMITE NF-E SIMPLES REMESSA |
| 36 | SN_OBRIGA_OBS_TRANSF | VARCHAR2 | N | INDICA SE É OBRIGATÓRIO INFORMAR O PACIENTE/OBSERVAÇÃO NA TRANSFERÊNCIA ENTRE EMPRESAS |
| 37 | SN_MARCA_DAGUA_DANFE | VARCHAR2 | N | CASO "S" IRÁ MOSTRAR A MARCA DÁGUA "SEM VALOR FISCAL" NO RELATÓRIO PERSONALIZADO DA DANFE |
| 38 | HAB_IMP_REL_PERSONAL_DANFE | VARCHAR2 | N | HABILITA A IMPRESSÃO DO RELATORIO PERSONALIZADO DA DANFE "S"- SIM OU "N"- NÃO. |
| 39 | TP_PESSOA_TOMADOR | VARCHAR2 | N | TIPO DE PESSOA DA EMPRESA DESTINO. VALOR PADRÃO "J" (JURIDICA) |
| 40 | TIP_DOC_ENTRADA | NUMBER | Y | CÓDIGO DE DOCUMENTO TIPO "SIMPLES REMESSA" UTILIZADO NA TRANSFERÊNCIA ENTRE EMPRESAS, TIPO ENTRADA |
| 41 | TP_PAGAMENTO | VARCHAR2 | N | TIPO DE PAGAMENTO. PARA SIMPLES REMESSA O VALOR PADÃO SERÁ 90=SEM PAGAMENTO. |
| 42 | VL_MAIS_MENOS_FUSO | NUMBER | Y | NÚMERO DE HORAS DE DIFERENÇA , NO FUSO HORÁRIO. |
| 43 | VL_HORAS_FUSO | NUMBER | Y | NO FUSO HORÁRIO |
| 44 | SN_EMPRESA_CENTRALIZADORA_NFE | VARCHAR2 | N | INDICA SE A EMPRESA É A EMPRESA CENTRALIZADORA PARA EMISSÃO DE NOTA FISCAL DE SIMPLES REMESSA |
| 45 | CD_EMPRESA_CENTRAL_NFE | NUMBER | Y | INDICA SE A EMPRESA É EMISSORA DE NOTA FISCAL DE SIMPLES REMESSA |
| 46 | DS_SERIE_PADRAO | VARCHAR2 | Y | Numero de serie padrao tela de transferencia empresa |

---

## DBAMV.PIX_MOVIMENTO_ENVIO
> TABELA DE REGISTRO DE TRANSAC?ES PIX (ENVIO)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PIX_MOVIMENTO_ENVIO | NUMBER | N | CODIGO SEQUENCIAL DE ENVIO MOVIMENTAC?O PIX |
| 2 | DT_MOVIMENTO_ENVIO | DATE | N | DATA DE ENVIO MOVIMENTO PIX |
| 3 | CD_MULTI_EMPRESA | NUMBER | N | CODIGO DA EMPRESA RESPONSAVEL PELA MOVIMENTAC?O PIX |
| 4 | CD_ORIGEM | VARCHAR2 | N | PROCESSO FINANCEIRO QUE ORIGINOU A MOVIMENTA??O PIX POR RECEBIMENTO - RE, PAGAMENTO - PA, TRANFER... |
| 5 | CD_MODULO | VARCHAR2 | N | MODULO QUE ORIGINOU A MOVIMENTAC?O PIX |
| 6 | CD_USUARIO | VARCHAR2 | N | USUARIO RESPONSAVEL PELA MOVIMENTAC?O PIX |
| 7 | CD_PAYER_CPF_CNPJ | VARCHAR2 | Y | CPF/CNPJ DO RESPONSAVEL PELO PIX |
| 8 | DS_PAYER_NAME | VARCHAR2 | Y | NOME DO RESPONSAVEL PELO PIX |
| 9 | VL_AMOUNT | NUMBER | N | VALOR DA MOVIMENTAC?O PIX |
| 10 | DS_DESCRIPTION | VARCHAR2 | Y | DESCRIC?O DA MOVIMENTAC?O/DEVOLUC?O PIX |
| 11 | DS_END_TO_END_ID | VARCHAR2 | Y | DEVOLUC?O PIX: ID DE IDENTIFICAC?O DA MOVIMENTAC?O A SER ESTORNADA |
| 12 | DS_RETURN_REASON_CODE | VARCHAR2 | Y | DEVOLUC?O: MOTIVO DO ESTORNO DA MOVIMENTAC?O |
| 13 | SN_ACCEPT_AFTER_EXPIRATION | VARCHAR2 | N | ACEITAR APOS EXPIRAC?O  (S/N) |
| 14 | CD_PIX_MOVIMENTO_ENVIO_ORIGEM | NUMBER | Y | Codigo pix envio de origem |
| 15 | TP_DEVOLUCAO | VARCHAR2 | N | E = Estorno, C = Cancelado, D = Devoluc?o, X = Sem ocorrencia de devolucao |

---

## DBAMV.PIX_MOVIMENTO_ENVIO_CP
> TABELA DE REGISTRO DE TRANSAC?ES PIX (ENVIO)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PIX_MOVIMENTO_ENVIO_CP | NUMBER | N | CODIGO SEQUENCIAL DE ENVIO MOVIMENTAC?O PIX |
| 2 | DT_MOVIMENTO_ENVIO | DATE | N | DATA DE ENVIO MOVIMENTO PIX |
| 3 | CD_MULTI_EMPRESA | NUMBER | N | CODIGO DA EMPRESA RESPONSAVEL PELA MOVIMENTAC?O PIX |
| 4 | CD_ORIGEM | VARCHAR2 | N | PROCESSO FINANCEIRO QUE ORIGINOU A MOVIMENTAC?O PIX POR RECEBIMENTO - RE, PAGAMENTO - PA, TRANFER... |
| 5 | CD_MODULO | VARCHAR2 | N | MODULO QUE ORIGINOU A MOVIMENTAC?O PIX |
| 6 | CD_USUARIO | VARCHAR2 | N | USUARIO RESPONSAVEL PELA MOVIMENTAC?O PIX |
| 7 | CD_PAYER_CPF_CNPJ | VARCHAR2 | Y | CPF/CNPJ DO RESPONSAVEL PELO PIX |
| 8 | DS_RECEIVER | VARCHAR2 | Y |  |
| 9 | DS_EMV_COPIA_COLA | VARCHAR2 | Y |  |
| 10 | VL_AMOUNT | NUMBER | N | VALOR DA MOVIMENTAC?O PIX |
| 11 | DS_DESCRIPTION | VARCHAR2 | Y | DESCRIC?O DA MOVIMENTAC?O/DEVOLUC?O PIX |

---

## DBAMV.PIX_MOVIMENTO_ERRO
> TABELA DE REGISTRO DE TRANSAC?ES PIX (ERROS)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PIX_MOVIMENTO_ERRO | NUMBER | N | CODIGO SEQUENCIAL DE ERROS DA MOVIMENTAC?O PIX |
| 2 | DS_CAMPO | VARCHAR2 | N | DESCRIC?O DO CAMPO PIX |
| 3 | DS_TIPO_VALIDACAO | VARCHAR2 | N | DESCRIC?O DO TIPO DE VALIDAC?O DO PIX |
| 4 | DS_ERRO | VARCHAR2 | N | DESCRIC?O DO ERRO PIX |
| 5 | CD_PIX_MOVIMENTO_RETORNO | NUMBER | Y | CODIGO SEQUENCIAL DE RETORNO MOVIMENTAC?O PIX |
| 6 | CD_PIX_MOVIMENTO_RETORNO_CP | NUMBER | Y | CODIGO SEQUENCIAL DE RETORNO MOVIMENTAC?O DE CONTAS A PAGAR E TRANSFERENCIA PIX |

---

## DBAMV.PIX_MOVIMENTO_FINAN_CP
> TABELA DE REGISTRO DE TRANSAC?ES PIX

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PIX_MOVIMENTO_FINAN_CP | NUMBER | N | CODIGO SEQUENCIAL DA MOVIMENTAC?O PIX NO FINANCEIRO |
| 2 | DT_MOVIMENTO | DATE | N | DATA DE EFETIVAC?O DA MOVIMENTAC?O PIX |
| 3 | VL_MOVIMENTO | NUMBER | N | VALOR DA MOVIMENTAC?O PIX |
| 4 | CD_CON_COR | NUMBER | Y | CORRENTE CORRENTE RESPONSAVEL PELA MOVIMENTAC?O PIX |
| 5 | CD_CON_PAG | NUMBER | Y | CODIGO DA MOVIMENTAC?O PIX |
| 6 | CD_ITCON_PAG | NUMBER | Y | CODIGO DA PARCELA ASSOCIADA A MOVIMENTAC?O PIX |
| 7 | CD_PAGCON_PAG | NUMBER | Y | CODIGO DO PAGAMENTO ASSOCIADO A MOVIMENTAC?O PIX |
| 8 | CD_MOV_CONCOR | NUMBER | Y | CODIGO DA MOVIMENTAC?O DA CONTA CORRENTE  ASSOCIADA A MOVIMENTAC?O PIX |
| 9 | CD_PIX_MOVIMENTO_RETORNO_CP | NUMBER | Y | CODIGO SEQUENCIAL DA MOVIMENTAC?O DE RETORNO PIX |
| 10 | TP_RECEBIMENTO_PIX | VARCHAR2 | N | Tipo de recebimento 1 = PIX,  2 = PIX Manual, 3 = TEF PIX |

---

## DBAMV.PIX_MOVIMENTO_RETORNO
> TABELA DE REGISTRO DE TRANSAC?ES PIX (RETORNO)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PIX_MOVIMENTO_RETORNO | NUMBER | N | CODIGO SEQUENCIAL DE RETORNO MOVIMENTAC?O PIX |
| 2 | CD_ID | VARCHAR2 | Y | CD_ID DA MOVIMENTAC?O PIX |
| 3 | DS_DESCRIPTION | VARCHAR2 | Y | DESCRIC?O DA MOVIMENTAC?O OU DEVOLUC?O PIX |
| 4 | DS_QR_CODE_LOCATION | VARCHAR2 | Y | URL GERADA PELA INSTITUIC?O RECEBEDORA, CONTENDO DADOS PARA A INSTITUIC?O PAGADORA DEMONSTRAR OS ... |
| 5 | DS_QR_CODE | CLOB | Y | DEMONSTRAR OS DADOS DO QRCODE |
| 6 | VL_AMOUNT | NUMBER | N | VALOR DA MOVIMENTAC?O PIX |
| 7 | DS_STATUS | VARCHAR2 | N | DS_STATUS DA MOVIMENTAC?O PIX |
| 8 | NR_DURATION | NUMBER | Y | INDICA O TEMPO DE DURAC?O DO QRCODE EM SEGUNDOS |
| 9 | DS_KIND | VARCHAR2 | N | TIPO DE MOVIMENTAC?O |
| 10 | DS_PAYER_NAME | VARCHAR2 | N | NOME DO RESPONSAVEL PELO PIX |
| 11 | CD_PAYER_CPF_CNPJ | VARCHAR2 | N | CPF/CNPJ DO RESPONSAVEL PELO PIX |
| 12 | DT_CREATEDAT | DATE | N | DATA DE CRIAC?O DA MOVIMENTAC?O PIX |
| 13 | DT_UPDATEDAT | DATE | N | DATA DE ALTERAC?O DA MOVIMENTAC?O PIX |
| 14 | DS_END_TO_END_ID | VARCHAR2 | Y | IDENTIFICAC?O DA MOVIMENTAC?O PIX QUE FOI REALMENTE EFETIVADA COM A CONFIRMAC?O DE ENVIO OU RECEB... |
| 15 | DT_MOVIMENTO | DATE | N | DATA DE EFETIVAC?O DA MOVIMENTAC?O PIX |
| 16 | DS_EMV_COPIA_COLA | VARCHAR2 | Y | CODIGO COPIA E COLA DO QRCODE |
| 17 | SN_ERROR_MESSAGE | VARCHAR2 | N | (TRUE OR FALSE) APRESENTOU ERRO (S/N) |
| 18 | CD_PIX_MOVIMENTO_ENVIO | NUMBER | N | CODIGO SEQUENCIAL DE ENVIO MOVIMENTAC?O PIX |
| 19 | TP_STATUS_DEVOLUCAO_MVBANC | VARCHAR2 | N | S = Sucesso, E = Erro, X = Sem ocorrencia de devolucao |
| 20 | CD_RECEIVEMENT_ID | VARCHAR2 | Y | Codigo de identificacao do estorno/devolucao do pix |

---

## DBAMV.PROCEDIMENTO_SUS
> Tabela de procedimentos SUS unificada

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GRUPO_PROCEDIMENTO | VARCHAR2 | N | Codigo do grupo de procedimentos |
| 2 | CD_SUB_GRUPO_PROCEDIMENTO | VARCHAR2 | N | Codigo do sub-grupo de procedimentos |
| 3 | CD_ORGANIZA_GRUPO_PROCEDIMENTO | VARCHAR2 | N | Codigo da forma de organizacao do procedimento |
| 4 | CD_PROCEDIMENTO | VARCHAR2 | N | Codigo do procedimento SUS |
| 5 | DS_PROCEDIMENTO | VARCHAR2 | N | Descric?o do procedimento SUS |
| 6 | TP_SEXO | VARCHAR2 | N | Tipo do sexo aceito pelo procedimento |
| 7 | NR_IDADE_MINIMA | NUMBER | Y | Idade minima para internacao |
| 8 | NR_IDADE_MAXIMA | NUMBER | Y | Idade maxima para internacao |
| 9 | QT_MAXIMA | NUMBER | Y | Quantidade maxima permitida para cobranca |
| 10 | SN_ATO_ANESTESICO | VARCHAR2 | Y | Identifica se o procedimento permite ato anestesico |
| 11 | NR_DIAS_INTERNACAO | NUMBER | Y | Numero de dias de internacao permitodo pelo procedimento |
| 12 | SN_ATIVO | VARCHAR2 | Y | Identifica se o procedimento esta ativo. |
| 13 | CD_ITEM_RES | NUMBER | Y | Codigo do Item de Resultado utilizado pelo Custos. |
| 14 | NR_IDADE_MINIMA_MES | NUMBER | Y | Idade minima permitida para o procedimento em meses |
| 15 | NR_IDADE_MAXIMA_MES | NUMBER | Y | Idade maxima permitida para o procedimento em meses |
| 16 | TP_FINANCIAMENTO | VARCHAR2 | Y | Informa o tipo de financiamento |
| 17 | CD_RUBRICA | VARCHAR2 | Y | Codigo da rubrica SUS |
| 18 | DS_DETALHADA | VARCHAR2 | Y | Descric?o detalhada do procedimento. |

---

## DBAMV.PROCEDIMENTO_SUS_ASSOCIADO
> Tabela de Relacionamento de Procedimentos Associados SUS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROCEDIMENTO | VARCHAR2 | N | Codigo do procedimento |
| 2 | CD_PROCEDIMENTO_ASSOCIADO | VARCHAR2 | N | Codigo do procedimento SUS Associado |
| 3 | SN_ATIVO | VARCHAR2 | Y | Indica se o procedimento esta Ativo ou n?o |

---

## DBAMV.PROCEDIMENTO_SUS_CARAT_ATEN
> Tabela de relacionamento do procedimento SUS x Carater de Atendimento.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROCEDIMENTO | VARCHAR2 | N | Codigo do procedimento SUS |
| 2 | CD_CARATER_ATENDIMENTO | NUMBER | N | Codigo do carater de atendimento |

---

## DBAMV.PROCEDIMENTO_SUS_CBO
> Tabela de relacionamento entre procedimentos e os CBOs permitidos para o procedimento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CBOS | VARCHAR2 | N | Codigo do Brasileiro de Ocupacao |
| 2 | CD_PROCEDIMENTO | VARCHAR2 | N | Codigo do procedimento sus |
| 3 | SN_ATIVO | VARCHAR2 | N | Identifica se o CBO esta ativo para o procedimento |

---

## DBAMV.PROCEDIMENTO_SUS_CHECK_LIST
> Tabela que checa os procedimentos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROCEDIMENTO | VARCHAR2 | Y | Codigo do procedimento SUS |
| 2 | CD_CHECK_LIST | VARCHAR2 | Y | Codigo do Check List SUS |
| 3 | CMP_INICIAL | VARCHAR2 | Y | Competencia em que se inicial a validade do check para o procedimento |
| 4 | CMP_FINAL | VARCHAR2 | Y | Competencia em que deixa de ser valido o check para o procedimento |
| 5 | SN_ATIVO | VARCHAR2 | Y | Indica se check encontra-se ativo para o procedimento (independente da validade inicial e final) |

---

## DBAMV.PROCEDIMENTO_SUS_CID
> Tabela de relacionamento entre procedimentos e cid

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROCEDIMENTO | VARCHAR2 | N | Codigo do procedimento SUS |
| 2 | CD_CID | VARCHAR2 | N | Codigo do cid compativel com procedimento |
| 3 | SN_PRINCIPAL | VARCHAR2 | Y | Identifica se o procedimento e principal para o cid |
| 4 | SN_SECUNDARIO | VARCHAR2 | Y | Identifica se o procedimento e secundario para o cid |
| 5 | SN_PADRAO | VARCHAR2 | Y | Identifica se o procedimento e padrao para o cid |
| 6 | SN_ATIVO | VARCHAR2 | Y | Identifica se o CID esta ativo para o procedimento |

---

## DBAMV.PROCEDIMENTO_SUS_COMPAT
> Cadastro dos procedimentos e suas compatibilidades

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROCEDIMENTO | VARCHAR2 | N | Codigo do procedimento |
| 2 | CD_PROCEDIMENTO_COMPATIVEL | VARCHAR2 | N | Codigo do procedimento compativel |
| 3 | DT_VIGENCIA | DATE | N | Data de vigencia da compatibilidade |
| 4 | QT_MAXIMA | NUMBER | N | Quantidade maxima da compatibilidade |
| 5 | SN_ATIVO | VARCHAR2 | Y | Identifica se a compatibilidade esta ativa para o procedimento |

---

## DBAMV.PROCEDIMENTO_SUS_COMPAT_P321
> Tabela de compatibilidade, incompatibilidade e concomitancia de procedimentos SUS.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROCEDIMENTO | VARCHAR2 | N | Codigo do procedimento principal ou secundario |
| 2 | TP_REGISTRO | VARCHAR2 | N | Tipo de registro do procedimento |
| 3 | CD_PROCEDIMENTO_COMPATIVEL | VARCHAR2 | N | Codigo do procedimento principal ou secundario compativel |
| 4 | TP_REGISTRO_COMPATIVEL | VARCHAR2 | N | Tipo de registro do procedimento compativel |
| 5 | TP_COMPATIBILIDADE | VARCHAR2 | Y | Tipo de compatibilidade. 1-Compatível, 2-Incompatível, 3-Concomitante, 4-Compat. Sequencial e 5-C... |
| 6 | QT_MAXIMA | NUMBER | Y | Quantidade maxima aplicada exclusivamente para o tipo de compatibilidade 1 |
| 7 | DT_VIGENCIA | DATE | N | Data de vigencia da compatibilidade |
| 8 | SN_ATIVO | VARCHAR2 | N | Indica se o registro encontra-se ativo. |
| 9 | DT_VALIDADE_INICIAL | DATE | Y | Data inicial da validade da compatibilidade |
| 10 | DT_VALIDADE_FINAL | DATE | Y | Data final da validade da compatibilidade |

---

## DBAMV.PROCEDIMENTO_SUS_COMPLEXIDADE
> Tabela de relacionamento entre procedimentos e o tipo de complexidade definida para o procedimento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROCEDIMENTO | VARCHAR2 | N | Codigo do procedimento |
| 2 | TP_COMPLEXIDADE_PROCEDIMENTO | VARCHAR2 | N | Tipo da complexidade para o procedimento |
| 3 | SN_ATIVO | VARCHAR2 | N | Identifica se a complexidade esta ativa para o procedimento |

---

## DBAMV.PROCEDIMENTO_SUS_DETALHE
> Tabela que contem as configurac?es detalhadas dos procedimentos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROCEDIMENTO | VARCHAR2 | N | Codigo do procedimento SUS |
| 2 | NR_AUXILIAR | NUMBER | Y | Numero de auxiliares permitidos pelo procedimento |
| 3 | SN_PERMITE_PERMANENCIA_MAIOR | VARCHAR2 | Y | Identifica se o procedimento permite cobranca de permanencia a maior |
| 4 | CD_CODIGO_REDUZIDO | NUMBER | Y | Codigo que permite o lancamento simplificado do procedimento |
| 5 | SN_PERMITE_BUSCA_ATIVA | VARCHAR2 | Y | Identifica se o procedimento permite a busca ativa de orgaos |
| 6 | SN_PERMITE_EXAMES | VARCHAR2 | Y | Identifica se o procedimento permite a cobranca de exames |
| 7 | SN_PERMITE_ALTA_UTI | VARCHAR2 | Y | Identifica se o procedimento permite alta diretamente da UTI. |
| 8 | SN_CARATER_INTERNACAO_HOSP_DIA | VARCHAR2 | Y | Identifica se o procedimento pode ser cobrado com carater de hospital dia |
| 9 | SN_APAC_PRINCIPAL | VARCHAR2 | N | Identifica se o procedimento principal APAC |
| 10 | SN_APAC_SECUNDARIO | VARCHAR2 | N | Identifica se o procedimento secundario APAC |
| 11 | SN_BPA_CONSOLIDADO | VARCHAR2 | N | Identifica se o procedimento principal BPA consolidado |
| 12 | SN_BPA_INDIVIDUALIZADO | VARCHAR2 | N | Identifica se o procedimento principal BPA individualizado |
| 13 | SN_AIH_PRINCIPAL | VARCHAR2 | N | Identifica se o procedimento principal AIH |
| 14 | SN_AIH_SECUNDARIO | VARCHAR2 | N | Identifica se o procedimento secundario AIH |
| 15 | SN_AIH_ESPECIAL | VARCHAR2 | N | Identifica se o procedimento especial AIH |
| 16 | CD_TIP_ATE | NUMBER | Y | Codigo do tipo de atendimento APAC |
| 17 | SN_EXIGE_MULTIPLO | VARCHAR2 | N | Indica se o procedimento exige lancamento de procedimento multiplo |
| 18 | SN_PERMITE_ZERADO | VARCHAR2 | N | Indica se o procedimento permite lancamento de quantidade zerada |
| 19 | SN_OBRIGA_COMPATIBILIDADE | VARCHAR2 | N | Indentifica se o procedimento exige regra de compatibilidade |
| 20 | SN_OBRIGA_FETO_VIVO | VARCHAR2 | N | Identifica se procedimento exige que feto tenha nascido vivo |
| 21 | SN_PERMITE_CONTA_SEM_DT_ALTA | VARCHAR2 | N | Identifica se o procedimento permite fechar a remessa sem a data de alta da conta informada. |
| 22 | CD_GRU_PRO | NUMBER | Y | Codigo do grupo de procedimento |
| 23 | SN_PODE_SER_AUTORIZADO | VARCHAR2 | N | Identifica se o procedimento pode ser lancado como autorizado |
| 24 | TP_APAC | VARCHAR2 | Y | Indica se o procedimento APAC e do tipo apac de continuidade C ou Unica U. |
| 25 | SN_ADMITE_MUDANCA_PROCEDIMENTO | VARCHAR2 | N | Indica que procedimento permite mudanca de procedimento. |
| 26 | SN_SOLICITADO_IGUAL_REALIZADO | VARCHAR2 | N | Indica que o procedimento solicitado deve ser igual ao procedimento realizado. |
| 27 | QT_MAXIMA_AUTORIZADO | NUMBER | Y | Identifica a quantidade maxima de procedimentos que podem ser autorizados sendo este procedimento... |
| 28 | SN_ADMITE_LONGA_PERMANENCIA | VARCHAR2 | N | Indica se procedimento permite longa permanencia de lancamento de AIH. |
| 29 | SN_PERMITE_AIH_CONTINUACAO | VARCHAR2 | N | Indica se procedimento permite continuidade de lancamento de AIH. |
| 30 | SN_SISCOLO | VARCHAR2 | N | Indica se procedimento e lancamento siscolo. |
| 31 | SN_PARTO | VARCHAR2 | N | Indica se o procedimento e de realizacao de parto. |
| 32 | SN_LAQUEADURA | VARCHAR2 | N | Informa se o Procedimento e uma Laqueadura e se entrara na validac?o da Procedure PRC_FFIS_VALIDA... |
| 33 | SN_VASECTOMIA | VARCHAR2 | N | Indica se procedimento possui vasectomia. |
| 34 | SN_VALIDA_CANCER_HIV | VARCHAR2 | N | Informa se o Procedimento trata-se de Tratamento de Cancer em menor de 16 ou AIH(ou relacionado) ... |
| 35 | SN_VALIDA_ESPEC_SUS | VARCHAR2 | N | Informa se o Procedimento entrara na validac?o da Procedure PRC_FFIS_VALIDA_ESPEC_SUS. |
| 36 | SN_CALCULA_PT_PROFISSIONAL | VARCHAR2 | N | Informa se o Procedimento trata-se de Tratamento de Cancer em menor de 16 ou AIH(ou relacionado) ... |
| 37 | SN_UTI | VARCHAR2 | N | Informa se valida uti ffis |
| 38 | TP_UTI | VARCHAR2 | N | Informa se valida tipo uti ffis |
| 39 | SN_CIRURGIA_ELETIVA | VARCHAR2 | N | Identifica se procedimento exige autorizacao especial para cirurgia eletiva |
| 40 | SN_CIRURGIA_MULTIPLA | VARCHAR2 | N | Informa se o Procedimento trata-se de uma Cirurgia Multipla e entrara na validac?o da Procedure P... |
| 41 | SN_CALCULA_AIH | VARCHAR2 | N |  |
| 42 | SN_ALTA_REOPERACAO | VARCHAR2 | N |  |
| 43 | SN_OBRIGA_CNPJ_PRESTADOR | VARCHAR2 | N | Informa se o Procedimento tem que ser cobrado para um prestador que tenha um CNPJ e entrara nas v... |
| 44 | SN_OBRIGA_PROC_COMPAT | VARCHAR2 | N | Informa se o Procedimento obriga que exista compatibilidade |
| 45 | SN_DIARIA_ACOMPANHANTE | VARCHAR2 | N | Informa se o Procedimento e uma Diaria de Acompanhante e entrara nas validac?es da procedure PRC_... |
| 46 | SN_OBRIGA_VDRL | VARCHAR2 | N | Informa se o Procedimento obriga a cobranca de um dos procedimentos 0202031110 e 0202031179 e ent... |
| 47 | SN_URGENCIA | VARCHAR2 | N | Indica se procedimento e de urgencia |
| 48 | SN_HEMOTERAPIA | VARCHAR2 | N | Informa se o Procedimento trata-se tratamento de hemoterapia. |
| 49 | SN_MODULO_TRANSFUSIONAL | VARCHAR2 | N | Se o procedimento referente a hemoterapia e a taxa de aplicac?o (Modulo Transfusional). |
| 50 | SN_DIARIA_UTI | VARCHAR2 | Y | Se o procedimento e diaria de UTI |
| 51 | SN_EXIGE_EQUIPE_MEDICA | VARCHAR2 | N | Informa se o Procedimento exige a criac?o de uma equipe medica. |
| 52 | SN_PODE_EXECEDE_QT_MAXIMA | VARCHAR2 | Y |  |
| 53 | SN_PERMANENCIA_MAIOR | VARCHAR2 | N | VIEWS - Identifica os procedimentos de Permanencia Maior |
| 54 | SN_ACOMPANHANTE | VARCHAR2 | N | VIEWS - Identifica os procedimentos de Diaria de Acompanhante |
| 55 | TP_ACOMPANHANTE | VARCHAR2 | Y | VIEWS - Identifica o Tipo de Diaria de Acompanhante GT(Gestante), AD(Adulto), IC(Idoso com Pernoi... |
| 56 | SN_UCI | VARCHAR2 | N | VIEWS - Identifica os procedimentos de UCI |
| 57 | SN_UTI_NORMAL | VARCHAR2 | N | VIEWS - Identifica os procedimentos de UTI NORMAL |
| 58 | SN_ANESTESISTA | VARCHAR2 | N | VIEWS - Identifica os procedimentos de Anestesista |
| 59 | SN_ANALG_OBSTETRICA | VARCHAR2 | N | VIEWS - Identifica os procedimentos de Analgesia |
| 60 | SN_CONSULTA_PEDIATRICA | VARCHAR2 | N | VIEWS - Identifica os procedimentos de Consulta Pediatrica |
| 61 | SN_NEONATOLOGIA | VARCHAR2 | N | VIEWS - Identifica os procedimentos de Neonatologia |
| 62 | SN_PERFUSIONISTA | VARCHAR2 | N | VIEWS - Identifica os procedimentos de Perfusionismo |
| 63 | SN_CONCENTRADO_FATOR_VIII | VARCHAR2 | N | VIEWS - Identifica os procedimentos de Concentrado |
| 64 | SN_FATORES_X_COAGULACAO | VARCHAR2 | N | VIEWS - Identifica os procedimentos de Fator de Coagulacao - VIEWS |
| 65 | SN_ALBUMINA_HUMANA | VARCHAR2 | N | VIEWS - Identifica os procedimentos de Albumina |
| 66 | SN_PLASMA_HUMANO | VARCHAR2 | N | VIEWS - Identifica os procedimentos de Plasma Humano |
| 67 | SN_LITOTRIPSIA | VARCHAR2 | N | VIEWS - Identifica os procedimentos de Litotripsia |
| 68 | SN_ANTICORPO_ANTI_RH | VARCHAR2 | N | VIEWS - Identifica os procedimentos de Anticorpos |
| 69 | SN_EXOSANGUINEO_TRANSFUSAO | VARCHAR2 | N | VIEWS - Identifica os procedimentos de EXOSANGUINEO TRANSFUSAO |
| 70 | SN_ESTREPTOQUINASE | VARCHAR2 | N | VIEWS - Identifica os procedimentos de ESTREPTOQUINASE |
| 71 | SN_ANTICORPO_MONOCLORAL | VARCHAR2 | N | VIEWS - Identifica os procedimentos de ANTICORPO MONOCLORAL |
| 72 | SN_METILPREDNISILONA | VARCHAR2 | N | VIEWS - Identifica os procedimentos de METILPREDNISILONA |
| 73 | SN_SURFACTANTE_FR_AMP | VARCHAR2 | N | VIEWS - Identifica os procedimentos de |
| 74 | SN_COMPONENTE_I | VARCHAR2 | N | VIEWS - Identifica os procedimentos de Componentes |
| 75 | SN_TESTE_HIV | VARCHAR2 | N | VIEWS - Identifica os procedimentos de Teste HIV |
| 76 | SN_REGISTRO_CIVIL | VARCHAR2 | N | VIEWS - Identifica os procedimentos de |
| 77 | SN_HEMODIALISE_PAC_RENAIS | VARCHAR2 | N | VIEWS - Identifica os procedimentos de Hemodialise Pacientes Renais |
| 78 | SN_DIALISE_PAC_RENAIS | VARCHAR2 | N | VIEWS - Identifica os procedimentos de Dialise em Pacientes Renais |
| 79 | SN_HEMOPERFUSAO | VARCHAR2 | N | VIEWS - Identifica os procedimentos de HEMOPERFUSAO |
| 80 | SN_ULTRAFILTRACAO_CONTINUA | VARCHAR2 | N | VIEWS - Identifica os procedimentos de ULTRAFILTRACAO CONTINUA |
| 81 | SN_HEMODIALISE_CONTINUA | VARCHAR2 | N | VIEWS - Identifica os procedimentos de HEMODIALISE CONTINUA |
| 82 | SN_HEMOFILTRACAO_CONTINUA | VARCHAR2 | N | VIEWS - Identifica os procedimentos de HEMOFILTRACAO CONTINUA |
| 83 | SN_HEDIAFILTRACAO_CONTINUA | VARCHAR2 | N | VIEWS - Identifica os procedimentos de HEDIAFILTRACAO CONTINUA |
| 84 | SN_HEMOFILTRACAO | VARCHAR2 | N | VIEWS - Identifica os procedimentos de HEMOFILTRACAO |
| 85 | SN_IMUNOGLOBULINA_G | VARCHAR2 | N | VIEWS - Identifica os procedimentos de IMUNOGLOBULINA |
| 86 | SN_SANGUE | VARCHAR2 | N | VIEWS - Identifica os procedimentos de SANGUE |
| 87 | SN_SANGUE_TAXA_APLICACAO | VARCHAR2 | N | VIEWS - Identifica os procedimentos de SANGUE TAXA APLICACAO |
| 88 | SN_NUTRICAO_ENTERAL | VARCHAR2 | N | VIEWS - Identifica os procedimentos de NUTRICAO ENTERAL |
| 89 | SN_TOMOGRAFIAS_NEURO | VARCHAR2 | N | VIEWS - Identifica os procedimentos de TOMOGRAFIAS NEURO |
| 90 | SN_ARTERIOR_NEURO | VARCHAR2 | N | VIEWS - Identifica os procedimentos de ARTERIOR NEURO |
| 91 | SN_CICLOSPORINA | VARCHAR2 | N | VIEWS - Identifica os procedimentos de CICLOSPORINA |
| 92 | SN_TOMOGRAFIAS | VARCHAR2 | N | VIEWS - Identifica os procedimentos de TOMOGRAFIAS |
| 93 | SN_CICLOSPORINA_CAPSULA | VARCHAR2 | N | VIEWS - Identifica os procedimentos de CICLOSPORINA CAPSULA |
| 94 | SN_CRIACAO_FAV | VARCHAR2 | N | VIEWS - Identifica os procedimentos de CRIACAO FAV |
| 95 | SN_GLOBULINA_ANTIMOCITARIA | VARCHAR2 | N | VIEWS - Identifica os procedimentos de GLOBULINA ANTIMOCITARIA |
| 96 | SN_ESTUDOS_HEMODINAMICOS | VARCHAR2 | N | VIEWS - Identifica os procedimentos de ESTUDOS HEMODINAMICOS |
| 97 | SN_NOTIFICACAO_AGRAVO | VARCHAR2 | N | VIEWS - Identifica os procedimentos de NOTIFICACAO AGRAVO |
| 98 | SN_CATETERISMO | VARCHAR2 | N | VIEWS - Identifica os procedimentos de CATETERISMO |
| 99 | SN_PACIENTE_RENAL_AGUDO | VARCHAR2 | N | VIEWS - Identifica os procedimentos de PACIENTE RENAL AGUDO |
| 100 | SN_ORTESE_PROTESE | VARCHAR2 | N | VIEWS - Identifica os procedimentos de ORTESE e PROTESE |
| 101 | SN_ENFERMARIA | VARCHAR2 | N | VIEWS - Identifica os procedimentos de ENFERMARIA |
| 102 | SN_SESSAO | VARCHAR2 | Y | Identifica se o procedimento e do tipo sess?o ou n?o. |
| 103 | SN_GERA_MATRICULA_SAME | VARCHAR2 | Y | Identifica se Procedimento esta habilitado a gerar prontuario no Same ? |
| 104 | SN_VALIDA_QT_MAXIMA | VARCHAR2 | Y | Sinaliza os procedimentos clinicos que ter?o validac?o da quantidade maxima, e n?o do periodo da ... |
| 105 | SN_EXIGE_CPF_CBO | VARCHAR2 | Y | Sinaliza se o procedimento exige ou n?o o preenchimento de CPF + CBO |
| 106 | DT_VIGENCIA | DATE | Y | Data de vigencia dos detalhes do procedimento. |
| 107 | SN_PROCEDIMENTO_FATURADO | VARCHAR2 | Y | Identifica os procedimentos que podem ser faturado. |
| 108 | SN_EXIGE_CNS_PACIENTE | VARCHAR2 | Y | Exige CNS do paciente |
| 109 | SN_PROCED_CIRURGICO | VARCHAR2 | Y | Procedimentos Cirurgicos |
| 110 | CD_GRU_PRO_AMB | NUMBER | Y | Configuracao procedimento X ambulatorio |
| 111 | SN_ANESTESIA | VARCHAR2 | N | Identifica os procedimentos de Anestesista |
| 112 | SN_GERADO_CHEKIN | VARCHAR2 | Y | Indica que o procedimento sera gerado no arquivo do CHEKIN. |
| 113 | SN_PROFISSIONAL | VARCHAR2 | Y | Indica o profissional. |
| 114 | CD_ATI_MED | VARCHAR2 | Y | Atividade medica (Preenchido quando SADT) |
| 115 | SN_PAGO_POR_DIA | VARCHAR2 | Y | Procedimentos que pagam por dia. |
| 116 | SN_PAGO_POR_DIA_UTIL | VARCHAR2 | Y | Procedimentos que pagam por dia util |
| 117 | SN_EXIGE_CNES | VARCHAR2 | Y | Procedimento que exige o preenchimento do CNES |
| 118 | SN_EXIGE_CNES_HOSP | VARCHAR2 | Y | Procedimento que exige o preenchimento do CNES do proprio Hospital. |
| 119 | SN_ADMITE_QUALQUER_CBO | VARCHAR2 | Y | Numero da Declarac?o do RN. |
| 120 | SN_GERA_ACH | VARCHAR2 | Y | Indica se o procedimento sera gerac?o na ACH. |
| 121 | SN_PERMITE_UTI | VARCHAR2 | Y | Indica se o procedimento se o procedimento principal admite lancamento de diaria de UTI. |
| 122 | SN_SISMAMA | VARCHAR2 | Y | Indica se o procedimento e do modulo SISMAMA. |
| 123 | SN_CERIH | VARCHAR2 | Y | Codigo de autorizac?o do CERIH. |
| 124 | SN_OBRIGA_BPAI | VARCHAR2 | Y | Campo de identificac?o de BPA Indentificado . |
| 125 | CD_TIPO_LAUDO_SIA | VARCHAR2 | Y | Codigo do tipo de laudo SIA compativel com o procedimento. |
| 126 | SN_PERMITE_CONTINUIDADE_APAC | VARCHAR2 | N | Verifica se procedimento permite lancamento de Apac de continuidade. |
| 127 | CD_TIP_ACOM | NUMBER | Y | Codigo do tipo de Acomodac?o - Custos |
| 128 | VL_TEMPO | NUMBER | Y | Fator de Tempo do procedimento para Custos |
| 129 | VL_FATOR_MINUTO | NUMBER | Y | Fator de Minuto do Procedimento para Custos |
| 130 | FATOR | NUMBER | Y | Fator do Procedimento para o Calc.Custos |
| 131 | SN_CNRAC | VARCHAR2 | Y | Informa se procedimento e cnrac |
| 132 | SN_CIHA | VARCHAR2 | Y | Indicac?o de procedimento CIHA portaria 134 |
| 133 | TP_INS_BPA | VARCHAR2 | Y | Identifica se o procedimento tem mais de um instrumento de registro. |
| 134 | SN_FATURA_AMOSTRA_PSSD | VARCHAR2 | Y | Sinaliza os procedimentos que serão cobrados por amostra. |

---

## DBAMV.PROCEDIMENTO_SUS_EMPRESA
> Tabela com as configurações por empresa de procedimento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROCEDIMENTO | VARCHAR2 | N | Código do procedimento SUS |
| 2 | CD_MULTI_EMPRESA | NUMBER | N | Código de empresa |
| 3 | DT_VALIDADE_INICIAL | DATE | N | Início da validade. |
| 4 | DT_VALIDADE_FINAL | DATE | Y | Fim da validade. |
| 5 | DT_ALTERACAO | DATE | N | Data de alteração. |
| 6 | CD_USUARIO | VARCHAR2 | N | Usuário que realizou alteração. |
| 7 | CD_INSTRUMENTO_REGISTRO | VARCHAR2 | N | Instrumento de registro usado na empresa. |

---

## DBAMV.PROCEDIMENTO_SUS_ESPEC_LEITO
> Tabela de procedimentos relacionados a especialidade do leito SUS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROCEDIMENTO | VARCHAR2 | N | Codigo do procedimento SUS |
| 2 | CD_ESPEC_SUS | VARCHAR2 | N | Codigo da especialidade do leito SUS |
| 3 | SN_PADRAO | VARCHAR2 | N | Identificador da especialidade padrao utilizada pelo procedimento |
| 4 | SN_ATIVO | VARCHAR2 | N | Identificados para saber se o relacionamento esta ativo |

---

## DBAMV.PROCEDIMENTO_SUS_ESQUEMA
> Tabela de relacionamento que determina o esquema para cada procedimento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROCEDIMENTO | VARCHAR2 | N | Codigo do procedimento SUS |
| 2 | CD_ESQUEMA | NUMBER | N | Codigo do esquema para o procedimento |
| 3 | SN_ATIVO | VARCHAR2 | N | Identifica se a regra esta ativa |

---

## DBAMV.PROCEDIMENTO_SUS_ESTADIO
> Tabela de relacionamento entre procedimento e estadio

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROCEDIMENTO | VARCHAR2 | N | Codigo procedimento sus |
| 2 | CD_ESTADIO | NUMBER | N | Codigo estadio |

---

## DBAMV.PROCEDIMENTO_SUS_FINALI_TRAT
> Tabela de relacionamento entre procedimento e finalidade de tratamento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROCEDIMENTO | VARCHAR2 | N | Codigo procedimento sus |
| 2 | CD_FINALIDADE | NUMBER | N | Codigo finalidade de tratamento |

---

## DBAMV.PROCEDIMENTO_SUS_HABILITACAO
> Cadastro de procedimentos e suas habilitacoes e incrementos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROCEDIMENTO | VARCHAR2 | N | Codigo do procedimento SUS |
| 2 | CD_HABILITACAO | VARCHAR2 | N | Codigo da habilitacao do procedimento |
| 3 | NR_PERCENTUAL_INCREMENTO | NUMBER | Y | Percentual do incremento para o procedimento na habilitacao |
| 4 | SN_ATIVO | VARCHAR2 | N | Identifica se a habilitacao esta ativa para o procedimento |
| 5 | SN_INCREMENTO | VARCHAR2 | Y | Define se a origem e do incremento ou habilitacao |
| 6 | DT_VALIDADE_INICIAL | DATE | N | Data incial de validade do incremento. |
| 7 | DT_VALIDADE_FINAL | DATE | Y | Data em o incremento deixa de valido. |
| 8 | VL_PERCENTUAL_SH | NUMBER | Y | Valor do Percentual de Incremento para Servico Hospitalar. |
| 9 | VL_PERCENTUAL_SP | NUMBER | Y | Valor do Percentual de Incremento para Servico Profissional. |
| 10 | VL_PERCENTUAL_SA | NUMBER | Y | Valor do Percentual de Incremento para Servico Ambulatorial. |

---

## DBAMV.PROCEDIMENTO_SUS_INCOMPAT
> Cadastro de procedimentos incompativeis

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROCEDIMENTO | VARCHAR2 | N | Codigo do procedimento |
| 2 | CD_PROCEDIMENTO_INCOMPATIVEL | VARCHAR2 | N | Codigo do procedimento incompativel |
| 3 | DT_VIGENCIA | DATE | N | Data de vigencia da incompatibilidade |
| 4 | SN_ATIVO | VARCHAR2 | N | Identifica se a incompatibilidade esta ativa para o procedimento |

---

## DBAMV.PROCEDIMENTO_SUS_INTEGRA
> Tabela de relacionamento de codigos reduzidos de modulos do MV2000 x Procedimento SUS Portaria 321.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ITEM_INTEGRACAO | NUMBER | N | Codigo sequencial que representa cada relacionamento criado de codigo resumido de modulos do MV20... |
| 2 | CD_CIRURGIA | NUMBER | Y | Codigo reduzido da cirurgia criado no modulo FSCC. |
| 3 | CD_EXA_LAB | NUMBER | Y | Codigo reduzido do exame laboratorial criado no modulo PSSD. |
| 4 | CD_EXA_RX | NUMBER | Y | Codigo reduzido do exame de diagnostico por imagem criado no modulo PSDI. |
| 5 | CD_TIP_PRESC | NUMBER | Y | Codigo reduzido do item de prescric?o medica criado no modulo PAGU. |
| 6 | CD_PRODUTO | NUMBER | Y | Codigo reduzido do produto criado no modulo MGES. |
| 7 | CD_PROCEDIMENTO | VARCHAR2 | Y | Codigo do procedimento SUS. |
| 8 | TP_PROCEDIMENTO | VARCHAR2 | Y | Identifica o tipo de procedimento antigo |
| 9 | CD_SANGUE_DERIVADOS | NUMBER | Y | Codigo reduzido do Sangue/Derivados criado no modulo PBSA. |

---

## DBAMV.PROCEDIMENTO_SUS_MODALIDADE
> Tabela de relacionamento que determina a modalidade de atendimento para cada procedimento

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROCEDIMENTO | VARCHAR2 | N | Codigo do procedimento para o tipo de modalidade de atendimento SUS |
| 2 | TP_MODALIDADE_ATENDIMENTO | VARCHAR2 | N | Tipo de modalidade de atendimento para o procedimento |
| 3 | SN_ATIVO | VARCHAR2 | N | Identifica se a modalidade esta ativa para o procedimento |

---

## DBAMV.PROCEDIMENTO_SUS_MOTIVO_COBR
> Relacionamento de procedimento X motivo de cobranca MS-DATASUS. Esta tabela serve como excec?o.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROCEDIMENTO | VARCHAR2 | N | Codigo do procedimento |
| 2 | CD_MOTIVO | NUMBER | N | Codigo do motivo sus |
| 3 | TP_COMPATIBILIDADE | VARCHAR2 | N | Indica o tipo da compatibilidade. Quando marcado com C-Compativel e I-Incompativel. |
| 4 | SN_ATIVO | VARCHAR2 | N | Identifica se o relacionamento encontra-se ativo ou n?o. |
| 5 | DT_VALIDADE_INICIAL | DATE | N | Data inicial da validade do motivo |
| 6 | DT_VALIDADE_FINAL | DATE | Y | Data final da validade do motivo |

---

## DBAMV.PROCEDIMENTO_SUS_MOT_ALTA_INC
> Tabela de listagem dos Motivos de Alta que n?o s?o permitidos por Procedimento.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROCEDIMENTO | VARCHAR2 | N | Codigo procedimento sus. |
| 2 | CD_MOT_ALT | NUMBER | N | Codigo do Motivo de Alta. |

---

## DBAMV.PROCEDIMENTO_SUS_NIVEL_HIERARQ
> Tabela de relacionamento entre procedimentos da pt321 e nivel de hierarquia

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROCEDIMENTO | VARCHAR2 | N | Codigo do procedimento |
| 2 | NR_NIVEL_HIERARQUIA | NUMBER | N | Codigo do nivel de hierarquia |
| 3 | SN_ATIVO | VARCHAR2 | N | Indica se procedimento esta ativo |

---

## DBAMV.PROCEDIMENTO_SUS_PORTARIA
> Tabela de relacionamento entre o procedimento e a portaria determinante

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROCEDIMENTO | VARCHAR2 | N | Codigo do procedimento relacionado na portaria SUS |
| 2 | CD_PORTARIA | NUMBER | N | Codigo da portaria SUS |
| 3 | DS_PORTARIA | VARCHAR2 | N | Descricao da portaria SUS |
| 4 | DT_PUBLICACAO | DATE | N | Data da publicacao da portaria SUS |
| 5 | DT_COMPETENCIA | DATE | N | Data da competencia da portaria SUS para o procedimento relacionado |

---

## DBAMV.PROCEDIMENTO_SUS_PRO_FAT
> Tabela de relacionamento entre codigo antigo e codigo novo

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROCEDIMENTO | VARCHAR2 | N | Codigo do procedimento SUS novo |
| 2 | CD_SUS | VARCHAR2 | N | Codigo do procedimento sus antigo |
| 3 | TP_PROCEDIMENTO | VARCHAR2 | N | Identifica o tipo de procedimento antigo |

---

## DBAMV.PROCEDIMENTO_SUS_REGRA
> Relacionamento de procedimento X regras MS-DATASUS.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROCEDIMENTO | VARCHAR2 | N | Codigo do procedimento |
| 2 | CD_REGRA | VARCHAR2 | N | Codigo da regra sus |
| 3 | DT_VALIDADE_INICIAL | DATE | N | Data inicial da validade do relacionamento. |
| 4 | DT_VALIDADE_FINAL | DATE | Y | Data final da validade do relacionamento. |
| 5 | CD_PORTARIA_SUS | VARCHAR2 | Y |  |
| 6 | SN_ATIVO | VARCHAR2 | N | Identifica se o relacionamento encontra-se ativo ou n?o. |

---

## DBAMV.PROCEDIMENTO_SUS_REGRA_INCRE
> Tab de complementação de valores dos procedimentos sus

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GRUPO_PROCEDIMENTO | VARCHAR2 | N | Código do grupo de procediemnto |
| 2 | CD_SUB_GRUPO_PROCEDIMENTO | VARCHAR2 | N | Código do sub grupo do procedimento |
| 3 | CD_ORGANIZA_GRUPO_PROCEDIMENTO | VARCHAR2 | N | Código da organização do grupo do procedimento |
| 4 | CD_MULTI_EMPRESA | NUMBER | N | Código da empresa |
| 5 | CD_PROCEDIMENTO | VARCHAR2 | N | Código do procedimento sus |
| 6 | VL_SH_FEDERAL | NUMBER | Y | Valor do sh federal |
| 7 | VL_SH_LOCAL | NUMBER | Y | Valor do sh local |
| 8 | VL_SP_FEDERAL | NUMBER | Y | Valor do sp federal |
| 9 | VL_SP_LOCAL | NUMBER | Y | Valor do sp local |
| 10 | VL_SA_FEDERAL | NUMBER | Y | Valor do sa federal |
| 11 | VL_SA_LOCAL | NUMBER | Y | Valor do sa local |
| 12 | VL_PERCENTUAL_SH_FEDERAL | NUMBER | Y | Percentual do sh federal |
| 13 | VL_PERCENTUAL_SH_LOCAL | NUMBER | Y | Percentual do sh local |
| 14 | VL_PERCENTUAL_SP_FEDERAL | NUMBER | Y | Percentual do sp federal |
| 15 | VL_PERCENTUAL_SP_LOCAL | NUMBER | Y | Percentual do sp local |
| 16 | VL_PERCENTUAL_SA_FEDERAL | NUMBER | Y | Percentual do sa federal |
| 17 | VL_PERCENTUAL_SA_LOCAL | NUMBER | Y | Percentual do sa local |
| 18 | DT_VALIDADE_INICIAL | DATE | N | Data de vigência inicial |
| 19 | DT_VALIDADE_FINAL | DATE | Y | Data de vigência final |
| 20 | CD_REGRA | VARCHAR2 | N | Tipo de Regra |
| 21 | TP_MODALIDADE | VARCHAR2 | N | Tipo de Modalidade |
| 22 | TP_INCREMENTO | VARCHAR2 | N | Tipo de Incremento |

---

## DBAMV.PROCEDIMENTO_SUS_SADT
> Tabela de procedimentos com pontos de SADT.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da multi-empresa |
| 2 | CD_PROCEDIMENTO | VARCHAR2 | N | Codigo do procedimento |
| 3 | DT_VIGENCIA | DATE | N | Data de vigencia dos paramentros do procedimento |
| 4 | SN_PESO | VARCHAR2 | N | Indica se o procedimento se calculado pelo PESO e n?o pelo percentual. |
| 5 | NR_PESO_PERCENTUAL | NUMBER | Y | Percentual do peso. |
| 6 | SN_SADT | VARCHAR2 | N | Indica se o procedimento tem pontos de SADT. |

---

## DBAMV.PROCEDIMENTO_SUS_SER_CLA
> Servico e Clasificac?o dos procedimentos sus

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROCEDIMENTO | VARCHAR2 | N | Codigo do procedimento SUS |
| 2 | CD_SERVICO_SUS | VARCHAR2 | N | Codigo do servico SUS |
| 3 | CD_CLASSIFICACAO_SUS | VARCHAR2 | N | Codigo da classificacao SUS |
| 4 | SN_ATIVO | VARCHAR2 | N | Identifica se o servico e classificacao esta ativo para o procedimento |

---

## DBAMV.PROCEDIMENTO_SUS_TETO_UPS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MULTI_EMPRESA | NUMBER | N | Campo do codigo da empresa associada ao Teto Fisico do procedimento. |
| 2 | CD_UPS | NUMBER | N | Campo do codigo da UPS associada ao Teto Fisico do procedimento. |
| 3 | CD_PROCEDIMENTO | VARCHAR2 | N | Campo do codigo do procedimento associada ao Teto Fisico do procedimento. |
| 4 | QT_FISICO | NUMBER | Y | Campo de Qtde. Fisica do procedimento associada ao Teto Fisico do procedimento. |
| 5 | VL_ORCAMENTARIO | NUMBER | Y | Campo de Valor Orcamentario do procedimento associada ao Teto Fisico do procedimento. |
| 6 | DT_VIGENCIA | DATE | N | Campo de Data vigente associada ao Teto Fisico do procedimento. |
| 7 | QT_FISICO_ATUAL | NUMBER | Y | Campo de Qtde. Fisica Atual do procedimento. |
| 8 | VL_ORCAMENTARIO_ATUAL | NUMBER | Y | Campo de Valor Orcamentario Atual do procedimento. |
| 9 | CD_UNI_SER | NUMBER | Y | Campo do codigo da UPS (SISCOLO) associada ao Teto Fisico do procedimento SISCOLO. |

---

## DBAMV.PROCEDIMENTO_SUS_TIPO_PREST
> Tabela de relacionamento entre procedimento e tipo de prestador SUS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROCEDIMENTO | VARCHAR2 | N | Codigo do procedimento sus |
| 2 | TIPO_PREST_SIA | VARCHAR2 | N | Codigo do tipo de prestador sus |
| 3 | SN_ATIVO | VARCHAR2 | N | Identifica se relacionamento esta ativo |

---

## DBAMV.PROCEDIMENTO_SUS_VALOR
> Cadastro de valores dos procedimentos SUS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da empresa |
| 2 | CD_PROCEDIMENTO | VARCHAR2 | N | Codigo do procedimento SUS |
| 3 | DT_VIGENCIA | DATE | N | Data de vigencia do valor. |
| 4 | VL_SERVICO_AMBULATORIAL | NUMBER | Y | Valor do servico ambulatorial |
| 5 | VL_SERVICO_HOSPITALAR | NUMBER | Y | Valor do servico hospitalar |
| 6 | VL_SERVICO_PROFISSIONAL | NUMBER | Y | Valor do servico profissional |
| 7 | VL_TOTAL_INTERNACAO | NUMBER | Y | Valor total de internacao |
| 8 | QT_PONTOS | NUMBER | Y | Quantidade de pontos pagos ao cirurgiao |
| 9 | VL_SERVICO_PROFISSIONAL_AMB | NUMBER | Y | Valor do servico do profissional de ambulatorio |
| 10 | VL_SERVICO_ANESTESIA_AMB | NUMBER | Y | Valor do servico anestesico |
| 11 | VL_TOTAL_AMBULATORIAL | NUMBER | Y | Valor total de ambulatorio |
| 12 | QT_TEMPO_PERMANENCIA | NUMBER | Y | Tempo de Permanencia |
| 13 | VL_SERVICO_AMBULATORIAL_LOCAL | NUMBER | Y | Valor local do servico ambulatorial |
| 14 | VL_SERVICO_HOSPITALAR_LOCAL | NUMBER | Y | Valor local do servico hospitalar |

---

## DBAMV.PROCEDIMENTO_SUS_VALOR_COMP
> Tab com valor complementar ao valor do sus

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROCEDIMENTO | VARCHAR2 | N | Código do procedimento sus |
| 2 | VL_COMPLEMENTAR_HOSPITALAR | NUMBER | Y | Valor complementar hospitalar |
| 3 | VL_COMPLEMENTAR_AMBULATORIAL | NUMBER | Y | Valor complementar ambulatorial |
| 4 | DT_VALIDADE_INICIAL | DATE | N | data inicial de validade |
| 5 | DT_VALIDADE_FINAL | DATE | Y | data final de validade |

---

## DBAMV.PROCEDIMENTO_SUS_VALOR_CONTRAT
> Tabela de valores de procedimentos SUS acordados com a secretaria.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MULTI_EMPRESA | NUMBER | N | Campo do codigo da empresa associada a Valorizac?o do procedimento. |
| 2 | CD_UPS | NUMBER | N | Campo do codigo da UPS associada a Valorizac?o do procedimento. |
| 3 | CD_PROCEDIMENTO | VARCHAR2 | N | Campo do codigo do procedimento associada a Valorizac?o do procedimento. |
| 4 | DT_VIGENCIA | DATE | N | Campo de Data vigente associada a Valorizac?o do procedimento. |
| 5 | VL_SERVICO_AMBULATORIAL | NUMBER | Y | Valor do servico ambulatorial. |
| 6 | VL_SERVICO_PROFISSIONAL_AMB | NUMBER | Y | Valor do servico do profissional de ambulatorio. |
| 7 | VL_SERVICO_ANESTESIA_AMB | NUMBER | Y | Valor do servico anestesico. |
| 8 | VL_TOTAL_AMBULATORIAL | NUMBER | Y | Valor total de ambulatorio. |

---

## DBAMV.PROCESSO_SUSPENSAO
> TABELA PARA PROCESSOS DE SUSPENSÃO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | DT_DECISAO | DATE | N | DATA DECISÃO JUDICIAL |
| 2 | CD_SUSPENSAO | VARCHAR2 | Y | CÓDIGO DE SUSPENSÃO |
| 3 | SN_DEPOSITO | VARCHAR2 | Y | DEPOSITADO? S - SIM, N - NÃO |
| 4 | CD_PROCESSO_JUDICIAL | VARCHAR2 | N | NÚMERO DO PROCESSO JUDICIAL |
| 5 | CD_IND_SUSPENSAO | VARCHAR2 | N | NÚMERO INDICATIVO SUSPENSÃO |

---

## DBAMV.PRODUCAO_CONVENIO_CIHA
> Tabela da produc?o da produc?o CIHA-SUS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_GERACAO | NUMBER | N | Codigo da Gerac?o da CIHA |
| 2 | CD_PRODUCAO | NUMBER | N | Codigo da produc?o |
| 3 | TP_REGISTRO_CIHA | VARCHAR2 | N | tipo de registro da CIHA. 2-Internac?o, 4-Individualizado e 5-Consolidado |
| 4 | CD_MODALIDADE_CIHA | VARCHAR2 | N | Codigo da modalidade do atendimento na CIHA |
| 5 | DT_COMPETENCIA | DATE | N | Data da competencia |
| 6 | TP_REFERENCIA_COMPETENCIA | VARCHAR2 | N | Tipo de referencia para competencia "A-Atendimento ou F-Faturamento" |
| 7 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da empresa" |
| 8 | CD_PACIENTE | NUMBER | Y | Codigo do Paciente "Prontuario" |
| 9 | CD_PRONTUARIO_CIHA | VARCHAR2 | Y |  |
| 10 | NR_CNS | VARCHAR2 | Y | Cart?o Nacional de Saude |
| 11 | CD_ATENDIMENTO | NUMBER | Y | Codigo do Atendimento |
| 12 | CD_REG_AMB | NUMBER | Y |  |
| 13 | CD_LANCAMENTO | NUMBER | Y |  |
| 14 | CD_AVISO_CIRURGIA | NUMBER | Y |  |
| 15 | CD_CIRURGIA_AVISO | NUMBER | Y |  |
| 16 | SN_ATENDIMENTO_SEM_CONTA | VARCHAR2 | Y |  |
| 17 | SN_CIRURGIA_AMBULATORIAL | VARCHAR2 | Y |  |
| 18 | DT_ATENDIMENTO | DATE | Y | Data do Atendimento |
| 19 | DT_ALTA | DATE | Y | Data de Alta |
| 20 | CD_PRO_FAT | VARCHAR2 | Y | Codigo do procedimento Convenio |
| 21 | DS_PRO_FAT | VARCHAR2 | Y | Descric?o do procedimento Convenio |
| 22 | CD_GRU_PRO | NUMBER | Y | Codigo do grupo do procedimento |
| 23 | TP_GRU_PRO | VARCHAR2 | Y | Tipo do grupo do procedimento |
| 24 | CD_PROCEDIMENTO | VARCHAR2 | Y | Codigo do procedimento SUS |
| 25 | TP_INSTRUMENTO_REGISTRO | VARCHAR2 | Y | Tipo do instrumento de registro do procedimento SUS |
| 26 | CD_CID | VARCHAR2 | Y | Codigo do CID secundario |
| 27 | CD_CID_SECUNDARIO | VARCHAR2 | Y |  |
| 28 | CD_MOT_ALT | NUMBER | Y | Codigo do motivo de alta MV2000 |
| 29 | CD_ALTA_SUS | NUMBER | Y | Codigo do motivo de alta SUS |
| 30 | NR_DECLARACAO_OBITO | VARCHAR2 | Y | Numero da declarac?o de obito |
| 31 | TP_ATENDIMENTO | VARCHAR2 | N | Tipo do Atendimento |
| 32 | CD_CONVENIO | NUMBER | N | Codigo do Atendimento |
| 33 | CD_CON_PLA | NUMBER | Y | Codigo do plano do convenio |
| 34 | TP_CONVENIO | VARCHAR2 | Y | Tipo do Convenio |
| 35 | SN_FILANTROPIA | VARCHAR2 | N | Indica se o convenio e de filantropia |
| 36 | TP_FONTE_REMUNERACAO | VARCHAR2 | Y | Tipo da Fonte de remunerac?o do convenio |
| 37 | NR_REGISTRO_OPERADORA_ANS | VARCHAR2 | Y | Numero do registro da operadora na ANS |
| 38 | NR_CNPJ_OPERADORA | VARCHAR2 | Y | Numero do CNPJ do convenio |
| 39 | SN_CARTEIRA_PARTICULAR | VARCHAR2 | N | Indica se trabalha com carterira para particular |
| 40 | NR_CARTEIRA | VARCHAR2 | Y | Numero da carteira |
| 41 | CD_ORI_ATE | NUMBER | Y | Codigo da origem do atendimento |
| 42 | CD_UNID_INT | NUMBER | Y | Codigo da unidade de internac?o |
| 43 | SN_PACOTE_CIHA | VARCHAR2 | N | Indica se o procedimento e de pacote na CIHA |
| 44 | QT_LANCAMENTO | NUMBER | N | Quantidade de lancamento |
| 45 | NR_DIAS_INTERNACAO | NUMBER | N | Quantidade de dias de internac?o |
| 46 | QT_DIAS_UTI | NUMBER | N | Quantidade de dias de uti |
| 47 | NR_DN_1 | VARCHAR2 | N | Numero da declarac?o 1 |
| 48 | NR_DN_2 | VARCHAR2 | N | Numero da declarac?o 2 |
| 49 | NR_DN_3 | VARCHAR2 | N | Numero da declarac?o 3 |
| 50 | NR_DN_4 | VARCHAR2 | N | Numero da declarac?o 4 |
| 51 | NR_DN_5 | VARCHAR2 | N | Numero da declarac?o 5 |
| 52 | NR_GUIA_ENVIO_PRINCIPAL | VARCHAR2 | Y | Numero da guia TISS para CIHA. |

---

## DBAMV.PRODUCAO_SUS_CIHA
> Tabela da produc?o SUS para calculo da filantropia na CIHA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PRODUCAO | NUMBER | N | Codigo da produc?o da CIHA |
| 2 | TP_PRODUCAO | VARCHAR2 | N | Identifica o tipo da produc?o (SUS-I ou SUS-A) |
| 3 | DT_COMPETENCIA | DATE | N | Competencia da produc?o. Esta data pode vir do item ou fatura de acordo com a configurac?o TP_COM... |
| 4 | CD_ATENDIMENTO | NUMBER | Y | Codigo do atendimento |
| 5 | CD_PACIENTE | NUMBER | Y | Codigo do paciente |
| 6 | CD_REG_FAT | NUMBER | Y | Codigo da conta de internac?o |
| 7 | CD_APAC | NUMBER | Y | Codigo da APAC |
| 8 | CD_EVENTOS | NUMBER | Y | Codigo do evento ambulatorial |
| 9 | NR_GUIA | VARCHAR2 | Y | Numero da GUIA SUS (AIH, APAC ou BPA-I) |
| 10 | DT_INICIAL | DATE | Y | Data inicial da conta (internac?o ou ambulatorio) |
| 11 | DT_FINAL | DATE | Y | Data final da conta (internac?o ou ambulatorio) |
| 12 | CD_PROCEDIMENTO | VARCHAR2 | Y | Codigo do procedimento |
| 13 | TP_INSTRUMENTO_REGISTRO | VARCHAR2 | Y | Tipo do instrumento de registro do procedimento |
| 14 | QT_LANCAMENTO | NUMBER | N | Quantidade de lancamento ambulatorial |
| 15 | NR_DIAS_INTERNACAO | NUMBER | N | Quantidade de dias de internac?o |
| 16 | SN_CONTA_FECHADA | VARCHAR2 | N | Indica se a conta encontra-se aberta ou fechada |
| 17 | CD_GLOSA | NUMBER | Y | Indica o codigo da glosa de internac?o ou apac. Quando n?o preenchido indica que a conta n?o foi ... |
| 18 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da empresa |
| 19 | CD_FATURA | NUMBER | Y | Codigo da fatura (Internac?o ou Ambulatorial) |
| 20 | DT_COMPETENCIA_FATURA | DATE | Y | Competencia da fatura |
| 21 | CD_REMESSA | NUMBER | Y | Codigo da remessa |
| 22 | SN_REMESSA_FECHADA | VARCHAR2 | N | Indica se a remessa encontra-se aberta ou fechada |
| 23 | CD_ORI_ATE | NUMBER | Y | Origem do atendimento) |
| 24 | CD_CONVENIO | NUMBER | Y | Codigo do convenio |
| 25 | CD_SETOR_SOLICITANTE | NUMBER | Y | Codigo do setor solicitante |
| 26 | CD_SETOR_EXECUTANTE | NUMBER | Y | Codigo do setor executante |
| 27 | TP_SOBRA_PACOTE | VARCHAR2 | Y | Tipo de sobra ou pacote ambulatorial (0-Nenhum, 1-Sobra, 2-Pacote ou 3-Ambos) |
| 28 | VL_TOTAL | NUMBER | N | Valor da Conta |

---

## DBAMV.PROTOCOLO_REMESSA_AIH
> Protocolo das transferencias entre Lote e Remessa

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROTOCOLO | NUMBER | N | Protocolo de transferencia AIH |
| 2 | CD_REMESSA_ORIGEM | NUMBER | N | Codigo da Remessa de origem |
| 3 | CD_REMESSA_DESTINO | NUMBER | N | Codigo da Remessa de Destino |
| 4 | DS_OBSERVACAO | VARCHAR2 | Y | Observac?o do Protocolo |
| 5 | CD_SETOR_FAT_ORIGEM | NUMBER | N |  |
| 6 | TP_TRANSFERENCIA | VARCHAR2 | N | (ENV) Envio pro Faturamento Central,(DEV) Devoluc?o pro Pre Faturamento |
| 7 | DT_TRANSFERENCIA | DATE | N | Data da transferencia |
| 8 | CD_USUARIO | VARCHAR2 | N | Nome do usuario que transferiu |
| 9 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da empresa |

---

## DBAMV.PROTOCOLO_REMESSA_APAC
> Protocolo das transferencias entre Lote e Remessa

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PROTOCOLO | NUMBER | N | Protocolo de transferencia APAC |
| 2 | CD_REMESSA_ORIGEM | NUMBER | N | Codigo da Remessa de origem |
| 3 | CD_REMESSA_DESTINO | NUMBER | N | Codigo da Remessa de Destino |
| 4 | DS_OBSERVACAO | VARCHAR2 | Y | Observac?o do Protocolo |
| 5 | CD_SETOR_FAT_ORIGEM | NUMBER | N |  |
| 6 | TP_TRANSFERENCIA | VARCHAR2 | N | (ENV) Envio pro Faturamento Central,(DEV) Devoluc?o pro Pre Faturamento |
| 7 | DT_TRANSFERENCIA | DATE | N | Data da transferencia |
| 8 | CD_USUARIO | VARCHAR2 | N | Nome do usuario que transferiu |
| 9 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da empresa |

---

## DBAMV.PTU_A450_R459
> Tabela responsavel por armazenar os registros de transac?es unimed

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_PTU_A450_R459 | NUMBER | N | Chave Primaria |
| 2 | NR_SEQ | NUMBER | N | Numero Sequencial |
| 3 | TP_REG | VARCHAR2 | N | Tipo de registro para os arquivos de troca de informac?es batch. |
| 4 | QT_TOT_R452 | NUMBER | Y | Quantidade total de registros 452 |
| 5 | CD_PTU_A450_R451 | NUMBER | N | Chave da tabela PTU_A450_R451 |
| 6 | CD_PTU_REMESSA_RETORNO | NUMBER | N | Chave da tabela PTU_REMESSA_RETORNO |

---

## DBAMV.RAAS
> Tabela responsavel por armazenar as contas RAAS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_RAAS | NUMBER | N | Codigo da conta |
| 2 | CD_REMESSA | NUMBER | N | Codigo da remessa |
| 3 | CD_UPS | NUMBER | N | Codigo da Unidade Prestadora de Servico |
| 4 | CD_ATENDIMENTO | NUMBER | Y | Codigo do atendimento |
| 5 | DT_ADMISSAO | DATE | N | Data de admiss?o |
| 6 | CD_PACIENTE | NUMBER | N | Codigo do paciente |
| 7 | CD_ORIGEM_PACIENTE | NUMBER | N | 1-Urgencia, 2-Atenc?o Basica, 3-Internac?o, 4-Centro Oncologico ou 5-Outros. |
| 8 | NM_RESPONSAVEL | VARCHAR2 | Y | Nome do responsavel pelo cliente |
| 9 | CD_CID_PRINCIPAL | VARCHAR2 | N | Codigo do CID principal |
| 10 | CD_CID_SECUNDARIO_1 | VARCHAR2 | Y | Codigo do CID secundario 1 |
| 11 | CD_CID_SECUNDARIO_2 | VARCHAR2 | Y | Codigo do CID secundario 2 |
| 12 | CD_CID_SECUNDARIO_3 | VARCHAR2 | Y | Codigo do CID secundario 3 |
| 13 | CD_CID_CAUSAS_ASSOCIADAS | VARCHAR2 | Y | Codigo do CID da causa associada |
| 14 | SN_ESTRATEGIA_SAUDE_FAMILIA | VARCHAR2 | N | Define se a remessa sera cobrada junto a secretaria saude |
| 15 | NR_CNES_USF | VARCHAR2 | Y | Numero do CNES da Unidade de Saude da Familia |
| 16 | CD_DESTINO_PACIENTE | NUMBER | Y | 0-Permanencia, 1-Alta Clinica, 2-Ecaminhamento AD1, 3-Alta Admin., 4-Inter. Urgencia, 5-Inter. Ho... |
| 17 | DT_CONCLUSAO | DATE | Y | Data de conclus?o das ac?es |
| 18 | SN_IMPRESSA | VARCHAR2 | N | Se a conta ja foi impressa(S) ou n?o(N) |
| 19 | SN_FECHADA | VARCHAR2 | N | Situac?o da conta, S-Fechada ou N-Aberta |
| 20 | CD_RAAS_PAI | NUMBER | Y | Codigo da conta que deu origem |
| 21 | CD_RAAS_GLOSA | NUMBER | Y | Codigo da conta que glosou |
| 22 | NM_USUARIO | VARCHAR2 | N | Nome do usuario que criou a conta |
| 23 | NM_USUARIO_FECHOU | VARCHAR2 | Y | Nome do usuario que fechou a conta |

---

## DBAMV.REINF
> Tabela do SPED REINF

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MULTI_EMPRESA | NUMBER | N | Código da empresa |
| 2 | DT_COMPETENCIA | DATE | N | Data da Competência |
| 3 | NR_IDENT_AMBIENTE | NUMBER | N | Identificação do ambiente: 1-Produção, 2-Produção Restrita-Dados Reais, 3-Produção Restrita-Dados... |
| 4 | TP_STATUS_BLOCO_2000 | VARCHAR2 | N | STATUS DE FECHAMENTO E ABERTURA DO BLOCO 2000 |
| 5 | TP_STATUS_BLOCO_4000 | VARCHAR2 | N | STATUS DE FECHAMENTO E ABERTURA DO BLOCO 4000 |
| 6 | CD_LAYOUT | VARCHAR2 | N | VERSÃO LAYOUT REINF |

---

## DBAMV.REINF_BENEFICIARIO
> TABELA PRINCIPAL DOS EVENTOS R-4010 E R-4020

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REINF_BENEFICIARIO | NUMBER | N | CÓDIGO DO BENEFICIÁRIO |
| 2 | CD_REINF_EVENTOS | NUMBER | N | CÓDIGO DE EVENTO DO REINF |
| 3 | NR_CNPJ_CPF | VARCHAR2 | Y | CPF OU CNPJ DO BENEFICIÁRIO |
| 4 | NM_FORNECEDOR | VARCHAR2 | N | NOME DO FORNECEDOR |
| 5 | CD_PAIS_RESID | VARCHAR2 | Y | PAÍS DE RESIDÊNCIA DO BENEFICIÁRIO |
| 6 | TP_ISENTO | VARCHAR2 | N | IDENTIFICA BENEFICIÁRIO ISENTO/IMUNE |
| 7 | CD_FORNECEDOR | NUMBER | Y | CÓDIGO DE FORNECEDOR DO BENEFICIÁRIO |
| 8 | CD_MULTI_EMPRESA | NUMBER | Y | CÓDIGO DA EMPRESA |

---

## DBAMV.REINF_BEN_PAG
> TABELA DE PAGAMENTOS POR BENEFICIÁRIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REINF_BEN_PAG | NUMBER | N | CÓDIGO DO PAGAMENTO POR BENEFICIÁRIO |
| 2 | CD_REINF_EVENTOS | NUMBER | N | CÓDIGO DE EVENTO DO REINF |
| 3 | CD_REINF_BENEFICIARIO | NUMBER | N | CÓDIGO DO BENEFICIÁRIO NA COMPETÊNCIA |
| 4 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 5 | CD_NAT_REND | NUMBER | Y | CÓDIGO DE NATUREZA DE RENDIMENTO |
| 6 | DT_PAGAMENTO | DATE | N | DATA DO PAGAMENTO |
| 7 | DS_OBSERVACAO | VARCHAR2 | Y | OBSERVAÇÃO |
| 8 | VL_PAGO | NUMBER | N | VALOR PAGO |
| 9 | TP_ORIGEM_INFORMACAO | VARCHAR2 | N | ORIGEM DA INFORMAÇÃO: M- MANUAL, A- AUTOMÁTICO |
| 10 | CD_CON_PAG | NUMBER | Y | CÓDIGO DO CONTAS A PAGAR |
| 11 | CD_PAGCON_PAG | NUMBER | Y | CÓDIGO DO CONTAS A PAGAR |
| 12 | TP_SCP_FNI | VARCHAR2 | N | TIPO SCP |
| 13 | NR_CNPJ_SCP_FNI | VARCHAR2 | Y | NUMERO DE CNPJ |
| 14 | VL_PERC_SCP | NUMBER | Y | VALOR PERCENTUAL |
| 15 | VL_DEDUCAO | NUMBER | Y | VALOR DE DEDUÇÃO |
| 16 | SN_ENTIDADE_PREV | VARCHAR2 | N | POSSUI INFORMAÇÕES DA ENTIDADA DE PREVIDÊNCIA COMPLEMENTAR |
| 17 | NR_INSC_PREV_COMP | NUMBER | Y | NUMERO DE CNPJ DA ENTIDADE DE PREVIDÊNCIA COMPLEMENTAR |
| 18 | VL_PATROCINIO_FUNPRESP | NUMBER | Y | VALOR DE PATRONÍNIO FUNPRESP |
| 19 | TP_ISENCAO | VARCHAR2 | N | TIPO DE ISENÇÃO |
| 20 | VL_ISENTO | NUMBER | Y | VALOR ISENTO |
| 21 | DS_RENDIMENTO | VARCHAR2 | Y | DESCRIÇÃO RENDIMENTO |
| 22 | DT_LAUDO | DATE | Y | DATA LAUDO |
| 23 | TP_DEDUCAO | VARCHAR2 | N | TIPO DE DEDUÇÃO |
| 24 | NR_SEQ_ESCRI_PAG | NUMBER | Y | Sequencia de escrituração do pagamento |

---

## DBAMV.REINF_BEN_PAG_IMP
> TABELA DE PAGAMENTOS POR BENEFICIÁRIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REINF_BEN_PAG | NUMBER | N | CÓDIGO DO PAGAMENTO POR BENEFICIÁRIO |
| 2 | CD_IMPOSTO | VARCHAR2 | N | CÓDIGO IMPOSTO |
| 3 | VL_BASE_IMP | NUMBER | Y | VALOR BASE IMPOSTO |
| 4 | VL_IMP | NUMBER | Y | VALOR IMPOSTO |

---

## DBAMV.REINF_BEN_PAG_SEQ
> Tabela de sequencia de escrituração de pagamentos

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FORNECEDOR | NUMBER | Y | Codigo de forencedor do pagamento |
| 2 | CD_MULTI_EMPRESA | NUMBER | Y | Codigo da multi empresa origem do pagamento |
| 3 | CD_CNPJ_CPF_BENEF | VARCHAR2 | Y | Numero do CPF/CNPJ do beneficiario/fornecedor |
| 4 | CD_DOC | NUMBER | Y | Docuemento do pagamento |
| 5 | DT_BASE | DATE | Y |  |
| 6 | NR_SEQ_ESCRI_PAG | NUMBER | Y | Numero sequencial do pagamento |

---

## DBAMV.REINF_CONTRIBUINTE
> Tabela de CONTRIBUINTE REINF

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REINF_CONTRIBUINTE | NUMBER | N | Código sequencial contribuinte |
| 2 | CD_REINF_EVENTOS | NUMBER | N | Código do evento |
| 3 | CD_PROC_EMI | NUMBER | Y | Código processo |
| 4 | CD_INSC | VARCHAR2 | Y | Número de inscrição do estabelecimento |
| 5 | DT_INI_VAL_INF | DATE | Y | Data de início das informações do contribuinte |
| 6 | DT_FIM_VAL_INF | DATE | Y | Data de fim das informações do contribuinte |
| 7 | CD_CLASS_TRIB | VARCHAR2 | Y | Código da classificação tributária |
| 8 | CD_IND_ESCRITURACAO | NUMBER | Y | Código da escrituração |
| 9 | CD_IND_DESONERACAO | NUMBER | Y | Código da desoneração |
| 10 | CD_ACORDO_ISEN_MULTA | NUMBER | Y | Código indentificador para isentos de multa |
| 11 | CD_IND_SIT_PJ | NUMBER | Y | Código indicativo pessoa jurídica |
| 12 | DS_NM_CTT | VARCHAR2 | Y | Nome representante legal |
| 13 | CD_CPF_CTT | VARCHAR2 | Y | CPF representante legal |
| 14 | CD_FONE_FIXO | VARCHAR2 | Y | Telefone fixo representante legal |
| 15 | CD_FONE_CEL | VARCHAR2 | Y | Telefone celular representante legal |
| 16 | DS_EMAIL | VARCHAR2 | Y | E-mail representante legal |
| 17 | SN_IDE_EFR | VARCHAR2 | N | Identifica se é orgão público |
| 18 | DS_CNPJ_EFR | VARCHAR2 | Y | CNPJ caso seja orgão público |
| 19 | TP_STATUS_REGISTRO | VARCHAR2 | N | Identifica se é inclusão ou retificação |
| 20 | CD_IND_UNIAO | VARCHAR2 | Y | INDICATIVO DE ENTIDADE VINCULADA A UNIAO |
| 21 | DT_TRANSF_FINS_LUCR | DATE | Y | DATA DA TRANSFORMAÇÃO DE ENTIDADE BENEFICENTE DE ASSISTÊNCIA SOCIAL ISENTA DE CONTRIBUIÇÕES SOCIA... |

---

## DBAMV.REINF_DEPENDENTES
> TABELA DE DEPENDENTES EVENTO 4010

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REINF_DEPENDENTES | NUMBER | N | CÓDIGO DO DEPENDENTE |
| 2 | CD_REINF_BEN_PAG | NUMBER | N | CÓDIGO DE PAGAMENTO POR BENEFICIÁRIO |
| 3 | NR_CPF_DEPENDENTE | VARCHAR2 | N | CPD DO DEPENDENTE |
| 4 | CD_REL_DEPENDENCIA | VARCHAR2 | N | CODIGO DA RELAÇÃO DE DEPENDENCIA |
| 5 | DS_DEPENDENCIA | VARCHAR2 | Y | DESCRIÇÃO DA DEPENDENCIA |
| 6 | VL_DEPENDENTE | NUMBER | N | VALOR DA DEDUCAO RELATIVA AO DEPENDENTE |

---

## DBAMV.REINF_EVENTOS
> Tabela de eventos REINF

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REINF_EVENTOS | NUMBER | N |  |
| 2 | CD_MULTI_EMPRESA | NUMBER | N | Código da empresa referencia da tabela REINF |
| 3 | DT_COMPETENCIA | DATE | Y | Competência referencia da tabela REINF |
| 4 | CD_EVENTO | VARCHAR2 | Y | Código do evento |
| 5 | DS_EVENTO | VARCHAR2 | Y | Descrição do evento |
| 6 | SN_EDITADO | VARCHAR2 | N | S ou N editado |
| 7 | TP_STATUS | VARCHAR2 | N | status do registro P - pedente, V - validado, A - advertência, C - Critica, T - transmitido, F - ... |
| 8 | DT_ENVIO | DATE | Y | Data do envio |

---

## DBAMV.REINF_IDENT_ADVOGADOS
> TABELA DE IDENTIFICAÇÃO DE ADVOGADOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_IDENT_ADVOGADOS | NUMBER | N | CÓDIGO DE IDENTIFICAÇÃO ADVOGADO |
| 2 | CD_REINF_BEN_PAG | NUMBER | N | CÓDIGO DE PAGAMENTO POR BENEFICIÁRIO |
| 3 | CD_PROCESSO_JUDICIAL | VARCHAR2 | Y | CÓDIGO PROCESSO JUDICIAL |
| 4 | NR_CNPJ_CPF | VARCHAR2 | Y | CPF OU CNPJ ADVOGADO |
| 5 | VL_DESPESA | NUMBER | Y | VALOR DESPESA |

---

## DBAMV.REINF_INTEGRA
> tabela de mensagens de retorno do sped-reinf

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REGISTRO_PRINCIPAL | NUMBER | N | codigo do bloco de mensagem sped-reinf |
| 2 | LO_MENSAGEM | BLOB | N | Payload de envio ao sped-reinf |
| 3 | LO_RETORNO | BLOB | Y | Payload de retorno do sped-reinf |
| 4 | LO_CONSULTA | BLOB | Y | XML DE RETORNO DA CONSULTA DE LOTE ASSÍNCRONO |

---

## DBAMV.REINF_LOG_ERROS
> TABELA PARA LOG DE ERROS DO REINF

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REINF_TRANS_RETORNO | NUMBER | N | CÓDIGO DO RETORNO LIGADO AO ERRO |
| 2 | CD_REINF_LOG_ERRO | NUMBER | N | CÓDIGO DO EVENTO |
| 3 | CD_REINF_EVENTOS | NUMBER | N |  |
| 4 | CD_CAMPO_SPED | VARCHAR2 | Y | TAG DO REINF |
| 5 | TP_LOG_ERRO | VARCHAR2 | N | TIPO DO ERRO: R - RECEITA, S - SOUL |
| 6 | TP_RESPOSTA_RFB | VARCHAR2 | N | TIPO DE RESPOSTA: A - ADVERTÊNCIA, E - ERRO |
| 7 | CD_RESPOSTA_RFB | VARCHAR2 | Y | CÓDIGO DE ERRO BASEADO NA TABELA DO REINF |
| 8 | DS_RESPOSTA_RFB | VARCHAR2 | N | DESCRIÇÃO DO ERRO |

---

## DBAMV.REINF_PROCESSO_JUDICIAL
> TABELA PARA PROCESSOS JUDICIAIS UTILIZADOS NO REINF

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REINF_PROCESSO | NUMBER | N | CÓDIGO DO PROCESSO |
| 2 | CD_REINF_EVENTOS | NUMBER | N | CÓDIGO DO EVENTO |
| 3 | TP_PROCESSO | VARCHAR2 | N | TIPO DO PROCESSO JUDICIAL |
| 4 | DT_INI_VAL | DATE | Y | DATA DE INÍCIO DAS INFORMAÇÕES |
| 5 | DT_FIM_VAL | DATE | Y | DATA DE FIM DAS INFORMAÇÕES |
| 6 | CD_IND_AUTORIA | NUMBER | Y | CÓDIGO INDICATIVO DA AUTORIA |
| 7 | CD_IDENT_VARA | VARCHAR2 | Y | CÓDIGO IDENTIFICATIVO DA VARA CÍVIL |
| 8 | CD_CIDADE | NUMBER | Y | CÓDIGO DA CIDADE |
| 9 | TP_STATUS_REGISTRO | VARCHAR2 | Y | STATUS DO REGISTRO |
| 10 | CD_PROCESSO_JUDICIAL | VARCHAR2 | N | NÚMERO DO PROCESSO JUDICIAL |

---

## DBAMV.REINF_PROCESSO_JUDICIAL_BL_4
> TABELA DE PROCESSO JUDICIAL DOS EVENTOS 4010 E 4020

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REINF_BEN_PAG | NUMBER | N | CÓDIGO DE PAGAMENTO POR BENEFICIÁRIO |
| 2 | CD_PROCESSO_JUDICIAL | VARCHAR2 | N | CÓDIGO DE PROCESSO JUDICIAL |
| 3 | CD_PROCESSO | NUMBER | Y | CÓDIGO DO PROCESSO |
| 4 | TP_PROCESSO | VARCHAR2 | N | TIPO DO PROCESSO |
| 5 | CD_SUSPENSAO | VARCHAR2 | Y | CÓDIGO DE SUSPENSÃO |
| 6 | TP_ORIGEM_REC | VARCHAR2 | N | TIPO DE ORIGEM RECEBIMENTO |
| 7 | DS_DESCRICAO | VARCHAR2 | Y | DESCRIÇÃO |
| 8 | NR_CNPJ_CPF_ORI_REC | VARCHAR2 | Y | CPF OU CNPJ DE ORIGEM DO RECEBIMENTO |
| 9 | CD_IMPOSTO | VARCHAR2 | Y | CÓDIGO IMPOSTO |
| 10 | VL_BASE_SUSP | NUMBER | Y | VALOR BASE SUSPENSAO |
| 11 | VL_RET_N_EFETUADA | NUMBER | Y | VALOR RETENÇÃO NÃO EFETUADA |
| 12 | VL_DEP | NUMBER | Y | VALOR DEPOSITADO |
| 13 | VL_CUSTAS | NUMBER | Y | VALOR DE CUSTAS |
| 14 | VL_COMP_ANO | NUMBER | Y | VALOR DE COMPENSAÇÃO ANOS ATUAL |
| 15 | VL_COMP_ANT | NUMBER | Y | VALOR DE COMPENSAÇÃO ANOS ANTERIORES |

---

## DBAMV.REINF_PROCESSO_SUSPENSAO
> TABELA PARA PROCESSOS DE SUSPENSÃO DO REINF

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REINF_PROCESSO_SUSPENSAO | NUMBER | N | CÓDIGO DO PROCESSO DE SUSPENSÃO |
| 2 | CD_REINF_PROCESSO | NUMBER | N | CÓDIGO DO PROCESSO DO REINF |
| 3 | DT_DECISAO | DATE | N | DATA DO PROCESSO |
| 4 | SN_DEPOSITO | VARCHAR2 | N | DEPOSITA? S - SIM, N - NÃO |
| 5 | CD_SUSPENSAO | VARCHAR2 | Y | CÓDIGO DE SUSPENSÃO |
| 6 | CD_PROCESSO_JUDICIAL | VARCHAR2 | N | NÚMERO DO PROCESSO JUDICIAL |
| 7 | CD_IND_SUSPENSAO | VARCHAR2 | N | NÚMERO DE SUSPENSÃO |

---

## DBAMV.REINF_PROD_RURAL
> TABELA DE PRODUTORES RURAIS DO REINF

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REINF_PROD_RURAL | NUMBER | N | CÓDIGO DE PRODUTOR RURAL REINF |
| 2 | CD_REINF_EVENTOS | NUMBER | N | CÓDIGO DE EVENTOS DO REINF |
| 3 | CD_MULTI_EMPRESA_ADQUIR_PROD | NUMBER | N | CÓDIGO DA EMPRESA ADQUIRINTE DA PRODUÇÃO RURAL |
| 4 | CD_FORNECEDOR | NUMBER | N | CÓDIGO DO FORNECEDOR |
| 5 | TP_ORIGEM_INFORMACAO | VARCHAR2 | N | CÓDIGO DE PRODUTOR RURAL REINF |

---

## DBAMV.REINF_PROD_RURAL_AQUIS
> TABELA DE PRODUTORES RURAIS DO REINF AQUISIÇÃO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REINF_PROD_RURAL_AQUIS | NUMBER | N | CÓDIGO DE PRODUTOR RURAL REINF AQUISIÇÃO |
| 2 | CD_REINF_PROD_RURAL | NUMBER | N | CÓDIGO DE PRODUTOR RURAL REINF |
| 3 | CD_IND_AQUISICAO | VARCHAR2 | Y | CÓDIGO DE AQUISIÇÃO |
| 4 | VL_BRUTO | NUMBER | Y | VALOR BRUTO |
| 5 | VL_CONT_PREV_DESC | NUMBER | Y | VALOR DESCONTO |
| 6 | VL_CONT_DEST_RISC | NUMBER | Y | VALOR RISCO |
| 7 | VL_SENAR | NUMBER | Y | VALOR SENAR |

---

## DBAMV.REINF_PROD_RURAL_AQUIS_PRC_JUD
> TABELA DE PRODUTORES RURAIS DO REINF AQUISIÇÃO JUDICIAL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REINF_PROD_RURAL_AQUIS_JUD | NUMBER | N | CÓDIGO DE PRODUTOR RURAL REINF JUDICIAL |
| 2 | CD_REINF_PROD_RURAL_AQUIS | NUMBER | N | CÓDIGO DE PRODUTOR RURAL REINF AQUISIÇÃO |
| 3 | CD_PROCESSO_JUDICIAL | VARCHAR2 | N | CÓDIGO DO PROCESSO JUDICIAL |
| 4 | CD_SUSPENSAO | NUMBER | Y | CÓDIGO SUSPENSAO |
| 5 | VL_CONT_PREV_N_RET | NUMBER | Y | VALOR NÃO RETIDO |
| 6 | VL_GILRAT | NUMBER | Y | VALOR GILRAT |
| 7 | VL_SENAR | NUMBER | Y | VALOR SENAR |

---

## DBAMV.REINF_PROD_RURAL_TMP
> TABELA TEMPORÁRIA PARA CARREGAMENTO DO EVENTO R-2055

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REINF_PROD_RURAL | NUMBER | Y | CÓDIGO DE PRODUTOR RURAL REINF |
| 2 | CD_MULTI_EMPRESA_ADQUIR_PROD | NUMBER | Y | CÓDIGO DA EMPRESA ADQUIRINTE |
| 3 | CD_FORNECEDOR | NUMBER | Y | CÓDIGO DO FORNECEDOR |
| 4 | CD_PROCESSO_JUDICIAL | VARCHAR2 | Y | CÓDIGO DO PROCESSO JUDICIAL |
| 5 | CD_SUSPENSAO | NUMBER | Y | CÓDIGO DE SUSPENSAO |
| 6 | VL_CONT_PREV_N_RET | NUMBER | Y | VALOR NÃO RETIDO |
| 7 | VL_GILRAT | NUMBER | Y | VALOR GILRAT |
| 8 | VL_SENAR | NUMBER | Y | VALOR SENAR |

---

## DBAMV.REINF_REC_REP_ASS_DESPORTIVA
> TABELA DE REPASSES PARA ASSOCIAÇÕES DESPORTIVAS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REINF_REC_ASS_DESPORTIVA | NUMBER | N | CÓDIGO SEQUENCIAL REPASSE |
| 2 | CD_REINF_EVENTOS | NUMBER | N | CÓDIGO DO EVENTO |
| 3 | CD_MULTI_EMPRESA_EST_REP | NUMBER | N | CÓDIGO EMPRESA TOMADORA CONTRATANTE |
| 4 | CD_FORNECEDOR | NUMBER | N | CÓDIGO DO FORNECEDOR |
| 5 | VL_TOTAL_REPASSE | NUMBER | Y | VALOR TOTAL REPASSADO |
| 6 | VL_TOTAL_RETENCAO | NUMBER | Y | VALOR RETIDO |
| 7 | VL_TOTAL_NAO_RETIDO | NUMBER | Y | VALOR NÃO RETIDO |

---

## DBAMV.REINF_REC_REP_ASS_DES_PROCESSO
> TABELA DE PROCESSOS ADMINISTRATIVOS DE REPASSES PARA ASSOCIAÇÕES DESPORTIVAS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REINF_REC_ASS_DESPORTIVA | NUMBER | N | CÓDIGO DO REPASSE PARA ASSOCIAÇÃO DESPORTIVA |
| 2 | DT_DECISAO | DATE | N | DATA DE DECISÃO DO PROCESSO |
| 3 | VL_NAO_RETIDO | NUMBER | Y | VALOR NÃO RETIDO |
| 4 | CD_PROCESSO_JUDICIAL | VARCHAR2 | N | CÓDIGO DO PROCESSO JUDICIAL |
| 5 | CD_IND_SUSPENSAO | VARCHAR2 | N | IDENTIFICADOR DE SUSPENÇÃO de EXIBILIDADE |

---

## DBAMV.REINF_REC_REP_ASS_DES_TIPO
> TABELA DE TIPOS DE REPASSE PARA ASSOCIAÇÃO DESPORTIVA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REINF_REC_ASS_DESPORTIVA | NUMBER | N | CÓDIGO DO REPASSE PARA ASSOCIAÇÃO DESPORTIVA |
| 2 | TP_REPASSE | VARCHAR2 | N | TIPO DE REPASSE |
| 3 | DS_RECURSO | VARCHAR2 | Y | DESCRIÇÃO DO RECURSO |
| 4 | VL_REPASSE | NUMBER | Y | VALOR DO REPASSE |
| 5 | VL_RETENCAO | NUMBER | Y | VALOR DE RETENÇÃO |

---

## DBAMV.REINF_RELACIONAMENTOS
> Tabela de relacionamentos para inserção do XML

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REGISTRO | NUMBER | N | chave primária |
| 2 | NM_TAG | VARCHAR2 | Y | Nome da tag do XML |
| 3 | NM_TAG_PAI | VARCHAR2 | Y | Tag pai do XML |
| 4 | SN_CHAVE | VARCHAR2 | N | Se a tag é chave(pai) |
| 5 | CD_EVENTO | VARCHAR2 | N | Evento a qual faz parte o relacionamento |
| 6 | DS_ATRIBUTO | VARCHAR2 | Y | Descrição do atributo: A-atributo, E-elemento |
| 7 | DS_VERSAO | VARCHAR2 | Y | versão do layout |
| 8 | DS_NAMESPACE | VARCHAR2 | Y | descrição do namespace |
| 9 | DS_VALOR_ATRIBUTO | VARCHAR2 | Y | Valor da tag |
| 10 | DS_PREFIXO_NAMESPACE | VARCHAR2 | Y | Prefixo do namespace |

---

## DBAMV.REINF_RESID_EXTERIOR
> TABELA DE PAGAMENTOS POR BENEFICIÁRIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REINF_BENEFICIARIO | NUMBER | N | CÓDIGO DO BENEFICIÁRIO |
| 2 | DS_LOGRADOURO | VARCHAR2 | N | ENDEREÇO |
| 3 | CD_LOGRADOURO | VARCHAR2 | N | NÚMERO ENDEREÇO |
| 4 | DS_COMPLEMENTO | VARCHAR2 | Y | COMPLEMENTO ENDEREÇO |
| 5 | NM_BAIRRO | VARCHAR2 | N | BAIRRO |
| 6 | NM_CIDADE | VARCHAR2 | N | CIDADE |
| 7 | NM_ESTADO | VARCHAR2 | N | ESTADO |
| 8 | DS_POSTAL | VARCHAR2 | N | CEP |
| 9 | NR_TELEFONE | VARCHAR2 | Y | TELEFONE |
| 10 | TP_NIF | VARCHAR2 | N | TIPO NIF |
| 11 | CD_ID_NIF | VARCHAR2 | Y | CÓDIGO IDENTIFICADOR NIF |
| 12 | NR_FONTE_PAG | NUMBER | Y | FONTE PAGADORA |
| 13 | CD_TRIBUT | VARCHAR2 | Y | CÓDIGO TRIBUTAÇÃO |

---

## DBAMV.REINF_SERVICO_TOMADO
> TABELA DE SERVIÇOS TOMADOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REINF_SERVICO_TOMADO | NUMBER | N | CÓDIGO SEQUENCIAL DO SERVIÇO |
| 2 | CD_REINF_EVENTOS | NUMBER | N | CÓDIGO DO EVENTO |
| 3 | CD_MULTI_EMPRESA_EST_TOMADOR | NUMBER | N | CÓDIGO DA EMPRESA CONTRATANTE |
| 4 | CD_FORNECEDOR | NUMBER | N | CÓDIGO DO FORNECEDOR |
| 5 | CD_NUM_INSCR_ESTABELECIMENTO | VARCHAR2 | N | NÚMERO DE INSCRIÇÃO DO ESTABELECIMENTO CONTRATANTE |
| 6 | CD_TIP_INSCR_ESTABELECIMENTO | NUMBER | N | TIPO DE INSCRIÇÃO DO ESTABELECIMENTO CONTRATANTE |
| 7 | CD_IND_OBRA | NUMBER | N | CÓDIGO IDENTIFICADOR DE OBRA |
| 8 | TP_ORIGEM_INFORMACAO | VARCHAR2 | N | ORIGEM DA INFORMAÇÃO: M - MANUAL, A - AUTOMÁTICO (IMPORTADO) |
| 9 | NR_IND_CPRB | NUMBER | N | NÚMERO INDICATIVO DE CONTRIBUIÇÃO PREVIDENCIÁRIA SOBRE A RECEITA BRUTA |
| 10 | VL_TOTAL_BRUTO_NF | NUMBER | N | VALOR TOTAL BRUTO |
| 11 | VL_TOTAL_BASE_RETENCAO | NUMBER | N | VALOR TOTAL BASE RETENÇÃO |
| 12 | VL_TOTAL_RET_PRINCIPAL | NUMBER | N | VALOR TOTAL DE RETENÇÃO |
| 13 | VL_TOTAL_RET_ADICIONAL | NUMBER | Y | VALOR RETENÇÃO ADICIONAL |
| 14 | VL_TOTAL_NAO_RET_PRINCIPAL | NUMBER | Y | VALOR NÃO RETIDO |
| 15 | VL_TOTAL_NAO_RET_ADICIONAL | NUMBER | Y | VALOR NÃO RETIDO ADICIONAL |
| 16 | CD_CNPJ_PRESTADOR | VARCHAR2 | N | CNPJ DO PRESTADOR |

---

## DBAMV.REINF_SERVICO_TOMADO_PRE_NF
> TABELA PARA NOTAS DE SERVIÇOS TOMADOS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REINF_SERVICO_TOMADO | NUMBER | N | CÓDIGO DO SERVIÇO TOMADO |
| 2 | DT_EMISSAO | DATE | N | DATA DE EMISSÃO DA NOTA |
| 3 | VL_BRUTO | NUMBER | N | VALOR DA NOTA |
| 4 | DS_OBSERVACAO | VARCHAR2 | Y | OBSERVAÇÃO DA NOTA |
| 5 | CD_SERIE_DOCUMENTO | VARCHAR2 | N | NÚMERO DE SÉRIE DO DOCUMENTO |
| 6 | CD_DOCUMENTO | VARCHAR2 | N | NÚMERO DO DOCUMENTO |

---

## DBAMV.REINF_SERVICO_TOMADO_PRE_NF_IT
> TABELA PARA ITENS DE NOTA FISCAL VINCULADAS AO SERVIÇO TOMADO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REINF_SERVICO_TOMADO | NUMBER | N | CÓDIGO DO SERVIÇO TOMADO |
| 2 | CD_EFD_SERVICO | NUMBER | N | CÓDIGO EFD DO SERVIÇO |
| 3 | VL_BASE_RETENCAO | NUMBER | Y | VALOR BASE RETENÇÃO |
| 4 | VL_RETENCAO | NUMBER | Y | VALOR RETIDO |
| 5 | VL_RET_SUBCONTRATADO | NUMBER | Y | VALOR RETIDO SUBCONTRATADO |
| 6 | VL_NAO_RET_PRINCIPAL | NUMBER | Y | VALOR NÃO RETIDO |
| 7 | VL_SERVICOS_ESP15 | NUMBER | Y | VALOR SERVIÇOS ESP 15 |
| 8 | VL_SERVICOS_ESP20 | NUMBER | Y | VALOR SERVIÇOS ESP 20 |
| 9 | VL_SERVICOS_ESP25 | NUMBER | Y | VALOR SERVIÇOS ESP 25 |
| 10 | VL_ADICIONAL | NUMBER | Y | VALOR ADICIONAL |
| 11 | VL_NAO_RET_ADICIONAL | NUMBER | Y | VALOR NÃO RETIDO ADICIONAL |
| 12 | VL_ALIQUOTA | NUMBER | N | VALOR DA ALÍQUOTA |
| 13 | CD_SERIE_DOCUMENTO | VARCHAR2 | N | NÚMERO DE SÉRIE DO DOCUMENTO |
| 14 | CD_DOCUMENTO | VARCHAR2 | N | NÚMERO DO DOCUMENTO |

---

## DBAMV.REINF_SERVICO_TOMADO_PROCESSO
> TABELA PARA RELACIONAMENTO DOS CÓDIGOS DE PROCEDIMENTO COM A CODIFICAÇÃO CPT

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REINF_SERVICO_TOMADO | NUMBER | N | CÓDIGO DO SERVIÇO TOMADO |
| 2 | TP_IND_PROCESSO | VARCHAR2 | N | TIPO DO PROCESSO |
| 3 | DT_DECISAO | DATE | N | DATA DE DECISÃO |
| 4 | TP_PROCESSO | VARCHAR2 | N | TIPO DO PROCESSO ADMINISTRATIVO |
| 5 | CD_SUSPENSAO | VARCHAR2 | N | CODIGO DE SUSPENSÃO |
| 6 | VL_NAO_RETIDO | NUMBER | Y | VALOR NÃO RETIDO |
| 7 | CD_PROCESSO_JUDICIAL | VARCHAR2 | N | NÚMERO DO PROCESSO JUDICIAL |
| 8 | CD_IND_SUSPENSAO | VARCHAR2 | N | NÚMERO IDENTIFICADOR DE SUSPENSÃO |

---

## DBAMV.REINF_SERVICO_TOMADO_TMP
> Tabela utilizada para "guardar" o código CD_REINF_SERVICO_TOMADO, quando for reimportar o evento R-2010

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REINF_EVENTOS | NUMBER | N |  |
| 2 | CD_REINF_SERVICO_TOMADO | NUMBER | N |  |
| 3 | CD_MULTI_EMPRESA_EST_TOMADOR | NUMBER | N |  |
| 4 | CD_FORNECEDOR | NUMBER | N |  |
| 5 | CD_NUM_INSCR_ESTABELECIMENTO | VARCHAR2 | N | Dados temporários de número de inscrição do estabelecimento |

---

## DBAMV.REINF_TABELA_01
> TABELA 01 REINF

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_NAT_REND | VARCHAR2 | N | CÓDIGO DA NATUREZA DE RENDIMENTOS |
| 2 | DS_NAT_REND | VARCHAR2 | N | DESCRIÇÃO DA NATUREZA DE RENDIMENTOS |
| 3 | DS_FCI | VARCHAR2 | Y | INFORMA FCI |
| 4 | DS_13_SALARIO | VARCHAR2 | Y | INFORMA 13 SALARIO |
| 5 | DS_RRA | VARCHAR2 | Y | INFORMA RRA |
| 6 | DS_PAIS_EXT_PF | VARCHAR2 | Y | INFORMA PAIS EXTERIOR PF |
| 7 | DS_PAIS_EXT_PJ | VARCHAR2 | Y | INFORMA PAIS EXTERIOR PJ |
| 8 | CD_DECLARANTE | VARCHAR2 | Y | CODIGO DECLARANTE |
| 9 | CD_DEDUCAO | VARCHAR2 | Y | CÓDIGO DE DEDUÇÃO |
| 10 | CD_REND_ISENTO | VARCHAR2 | Y | CÓDIGO DO RENDIMENTO ISENTO |
| 11 | CD_TRIBUTO | VARCHAR2 | Y | CÓDIGO DE TRIBUTO |
| 12 | CD_RECEITA | VARCHAR2 | Y | CÓDIGO DE RECEITA |
| 13 | CD_RECEITA_EXT | VARCHAR2 | Y | CÓDIGO DE RECEITA EXTERIOR |

---

## DBAMV.REINF_TRANS_RETORNO
> TABELA PARA REGISTRO DO RETORNO DA RECEITA

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REINF_TRANS_RETORNO | NUMBER | N | CÓDIGO SEQUECIAL |
| 2 | CD_REINF_EVENTOS | NUMBER | N | CÓDIGO DO EVENTO |
| 3 | TP_STATUS | VARCHAR2 | N | STATUS DO REGISTRO |
| 4 | DS_ENVIO | BLOB | Y | DESCRIÇÃO DE ENVIO |
| 5 | DS_RETORNO | BLOB | Y | DESCRIÇÃO DO RETORNO |
| 6 | DH_ENVIO | DATE | Y | DATA DE HORA DO ENVIO |
| 7 | HR_RETORNO | DATE | Y | HORA DE RETORNO |
| 8 | CD_CHAVE | VARCHAR2 | Y | CHAVE DE ENVIO |
| 9 | DS_PROTOCOLO | VARCHAR2 | Y | PROTOCOLO DE RECEBIMENTO |
| 10 | CD_REINF_REGISTRO | NUMBER | Y | CÓDIGO QUE IDENTIFICA A PK DO REGISTRO DE ACORDO COM SEU EVENTO |
| 11 | DS_RECIBO | VARCHAR2 | Y | RECIBO DE TRANSMISSÃO |

---

## DBAMV.REINF_XML
> TABELA PARA MONTAGEM DO XML ANTES DO ENVIO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_REGISTRO | NUMBER | N | CÓDIGO SEQUENCIAL DO REGISTRO |
| 2 | CD_REINF_EVENTOS | NUMBER | Y | CÓDIGO DO EVENTO |
| 3 | CD_REGISTRO_PRINCIPAL | NUMBER | Y | CÓDIGO DO REGISTRO |
| 4 | DS_TAG | VARCHAR2 | Y | TAG REINF |
| 5 | CD_REGISTRO_PAI | NUMBER | Y | CÓDIGO PAI DO REGISTRO |
| 6 | VL_REGISTRO | VARCHAR2 | Y | VALOR DO REGISTRO |
| 7 | TP_STATUS | VARCHAR2 | Y | STATUS |
| 8 | DT_GERADO | DATE | Y | DATA DE GERAÇÃO |
| 9 | DT_PROCESSADO | DATE | Y | DATA DE PROCESSAMENTO |
| 10 | DS_ATRIBUTO | VARCHAR2 | Y | DESCRIÇÃO ATRIBUTO |
| 11 | VL_ATRIBUTO | VARCHAR2 | Y | VALOR ATRIBUTO |
| 12 | PREFIXO_NAMESPACE | VARCHAR2 | Y | PREIXO DO NAMESPACE |
| 13 | DS_NAMESPACE | VARCHAR2 | Y | DESCRIÇÃO DO NAMESPACE |

---

## DBAMV.SERVICO_CLASSIFICACAO_SUS
> Servico e classificacao sus

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SERVICO_SUS | VARCHAR2 | N | Codigo do servico sus |
| 2 | CD_CLASSIFICACAO_SUS | VARCHAR2 | N | Codigo da classificacao sus. |
| 3 | DS_CLASSIFICACAO_SUS | VARCHAR2 | N | Descricao da classificacao SUS |
| 4 | SN_ATIVO | VARCHAR2 | N | Identifica se o servico/classificacao esta ativo. |

---

## DBAMV.SERVICO_NTFS
> TABELA DE CADASTRO DE SERVIÇOS PARA GERAÇÃO DA NOTA FISCAL DE TOMADOR DE SERVIÇO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NR_SERVICO_NTFS | VARCHAR2 | N | NUMERO DO SERVICO DA NTFS |
| 2 | DS_SERVICO_NTFS | VARCHAR2 | N | DESCRIÇÃO DO SERVICO DA NTFS |

---

## DBAMV.SERVICO_SUS
> Servicos credenciados SUS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SERVICO_SUS | VARCHAR2 | N | Codigo do servico SUS |
| 2 | DS_SERVICO_SUS | VARCHAR2 | N | Descricao do servico SUS |
| 3 | SN_ATIVO | VARCHAR2 | N | Indicada se o servico encontra-se ativo |

---

## DBAMV.SIASUS_FINANC
> Tabela de Financiamentos SIA-SUS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FINANCIAMENTO | VARCHAR2 | N | Codigo Financiamento SIA-SUS |
| 2 | DS_FINANCIAMENTO | VARCHAR2 | N | descric?o Financiamento SIA-SUS |

---

## DBAMV.SPED_ECF_IDENT_SOCIOS_TITULAR
> SPED ECF - REGISTRO Y600: IDENTIFICAÇÃO DE SÓCIOS OU TITULAR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SOCIO_TITULAR | NUMBER | N | Chave primária |
| 2 | CD_MULTI_EMPRESA | NUMBER | N |  |
| 3 | DT_ALT_SOC | DATE | N | Data da Alteração no Quadro Societário. Pode ser uma data anterior ao ano da escrituração, inclus... |
| 4 | DT_FIM_SOC | DATE | Y | Data da Saída do Quadro Societário. Deve ser preenchida somente se a saída do quadro societário o... |
| 5 | CD_PAIS | NUMBER | N | País de Residência ou Domicílio da Pessoa Física ou Jurídica. Código do país, conforme tabela do ... |
| 6 | TP_IND_QUALIF_SOCIO | VARCHAR2 | N | Indicador de Qualificação do Sócio: PF - Pessoa Física PJ - Pessoa Jurídica FI ¿ Fundo de Investi... |
| 7 | NR_CPF_CNPJ | NUMBER | Y | CPF ou CNPJ do Sócio ou Titular. Obrigatório se Código do País for igual a "105" (Brasil) Caso co... |
| 8 | NM_NOM_EMP | VARCHAR2 | N | Nome/Nome empresarial do Sócio ou Titular. |
| 9 | TP_QUALIF | VARCHAR2 | N | Qualificação do Sócio ou Titular: Se PAIS = ¿105¿ (Brasil) |
| 10 | VL_PERC_CAP_TOT | NUMBER | N | Percentual Relativo à Participação da Pessoa Física ou Jurídica, Sócio ou Titular, no Capital Total. |
| 11 | VL_PERC_CAP_VOT | NUMBER | N | Percentual Relativo à Participação da Pessoa Física ou Jurídica, Sócio ou Titular, no Capital Vot... |
| 12 | NR_CPF_REP_LEG | NUMBER | Y | CPF do Representante Legal: No caso de residente ou domiciliado no exterior ou de pessoa física r... |
| 13 | TP_QUALIF_REP_LEG | VARCHAR2 | Y | Qualificação do Representante Legal. |
| 14 | VL_REM_TRAB | NUMBER | Y | Remuneração do Trabalho: Valor dos rendimentos pagos e escriturados, nos livros da escrituração c... |
| 15 | VL_LUC_DIV | NUMBER | Y | Lucros/Dividendos: Valor dos lucros e dividendos efetivamente pagos no ano-calendário a sócios ou... |
| 16 | VL_JUR_CAP | NUMBER | Y | Juros Sobre o Capital Próprio: Valor dos juros pagos ou creditados a titular, ou a sócios ou acio... |
| 17 | VL_DEM_REND | NUMBER | Y | Demais Rendimentos: Valor, antes da dedução do imposto de renda retido na fonte, dos demais rendi... |
| 18 | VL_IR_RET | NUMBER | Y | IR Retido na Fonte: Valor do imposto de renda retido na fonte por ocasião do pagamento de lucros ... |

---

## DBAMV.SPED_ECF_IRPJ_CSLL
> Tabela de SPED ECF IRPJ e CSLL

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SPED_ECF_IRPJ_CSLL | NUMBER | N | Chave primária |
| 2 | CD_MULTI_EMPRESA | NUMBER | N | Código da empresa |
| 3 | TP_REGISTRO | VARCHAR2 | N | Tipo de registo |
| 4 | CD_TAB_SPED | VARCHAR2 | N | Código na tabela da RFB |
| 5 | VL_VALOR | NUMBER | Y | Valor |

---

## DBAMV.SPED_ECF_LANCAMENTOS_DIVERSOS
> Tabela de lançamentos diversos do SPED ECF

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LANCAMENTO_DIVERSOS | NUMBER | N | Chave primária |
| 2 | CD_MULTI_EMPRESA | NUMBER | N | Código da empresa |
| 3 | TP_REGISTRO | VARCHAR2 | N | Tipo do registro |
| 4 | TP_TIP_ROY | VARCHAR2 | Y | Indicar se são roylaties recebidos ou pagos a benfeciários no Brasil e no exterior. |
| 5 | CD_PAIS | NUMBER | Y | País ou a dependência de país de residência ou de domicílio da pessoa física ou jurídica que efet... |
| 6 | VL_EXPL_DIR_SW | NUMBER | Y | Valor da Exploração Econômica dos Direitos Patrimoniais do Autor Relativos a Software |
| 7 | VL_EXPL_DIR_AUT | NUMBER | Y | Valor da Exploração Econômica dos Direitos Patrimoniais do Autor, Exceto Software |
| 8 | VL_EXPL_MARCA | NUMBER | Y | Valor da Exploração Econômica dos Direitos Patrimoniais de Marcas |
| 9 | VL_EXPL_PAT | NUMBER | Y | Valor da Exploração Econômica dos Direitos Patrimoniais de Patentes e de Desenho Industrial |
| 10 | VL_EXPL_KNOW | NUMBER | Y | Valor da Exploração de Know-How |
| 11 | VL_EXPL_FRANQ | NUMBER | Y | Valor da Exploração de Franquias |
| 12 | VL_EXPL_INT | NUMBER | Y | Valor da Exploração dos Direitos Relativos à Propriedade Intelectual Referente a Cultivares |
| 13 | VL_SERV_ASSIST | NUMBER | Y | Valor dos Serviços de Assistência Técnica, Científica, Administrativa e Assemelhados com Transfer... |
| 14 | VL_SERV_SEM_ASSIST | NUMBER | Y | Valor dos Serviços Técnicos e de Assistência sem Transferência de Tecnologia Prestados no Brasil |
| 15 | VL_SERV_SEM_ASSIST_EXT | NUMBER | Y | Valor dos Serviços Técnicos e de Assistência sem Transferência de Tecnologia Prestados no Exterior. |
| 16 | VL_JURO | NUMBER | Y | Valor dos Juros sobre o Capital Próprio. |
| 17 | VL_DEMAIS_JUROS | NUMBER | Y | Valor dos Demais Juros |
| 18 | VL_DIVID | NUMBER | Y | Valor dos Dividendos |
| 19 | VL_JURO_PF | NUMBER | Y | Valor dos Juros sobre o Capital Próprio Pagos a Pessoa Física |
| 20 | VL_JURO_PJ | NUMBER | Y | Valor dos Juros sobre o Capital Próprio Pagos a Pessoa Jurídica |
| 21 | VL_DIVID_PF | NUMBER | Y | Dividendos Pagos a Pessoa Física |
| 22 | VL_DIVID_PJ | NUMBER | Y | Dividendos Pagos a Pessoa Jurídica |
| 23 | TP_TIP_EXT | VARCHAR2 | Y | Tipo Rendimentos Recebidos ou Pagamentos |
| 24 | TP_FORMA | NUMBER | Y | Forma de Recebimento/Pagamento |
| 25 | TP_NAT_OPER | VARCHAR2 | Y | Natureza da Operação |
| 26 | VL_PERIODO | NUMBER | Y | Valor no período |
| 27 | NR_CNPJ | VARCHAR2 | Y | Código na tabela da RFB |
| 28 | VL_REC_ESTAB | NUMBER | Y | Descrição na tabela da RFB |
| 29 | CD_CNAE | VARCHAR2 | Y | Código na tabela da RFB |

---

## DBAMV.SPED_ECF_RENDIMENTOS_DIRI_CONS
> SPED ECF - REGISTRO Y611: RENDIMENTOS DE DIRIGENTES, CONSELHEIROS, SÓCIOS OU TITULAR

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SOCIO_TITULAR_RENDIMENTOS | NUMBER | N | Chave primária |
| 2 | CD_MULTI_EMPRESA | NUMBER | N | Código da empresa a qual pertence o registro. |
| 3 | CD_PAIS | NUMBER | Y | Código do País: País de residência ou domicílio da pessoa física ou jurídica beneficiária do rend... |
| 4 | TP_IND_PF_PJ | VARCHAR2 | Y | Indicador da Natureza do Dirigente, Sócio ou Titular, Se Pessoa Física ou Jurídica |
| 5 | NR_CPF_CNPJ | NUMBER | Y | CPF ou CNPJ do Dirigente, Sócio ou Titular. |
| 6 | NM_NOM_EMP | VARCHAR2 | N | Nome/Nome Empresarial da Pessoa Física ou Jurídica Beneficiária do Rendimento. |
| 7 | TP_QUALIF | VARCHAR2 | N | Qualificação da Pessoa Física ou Jurídica Beneficiária do Rendimento. |
| 8 | VL_REM_TRABALHO | NUMBER | Y | Remuneração do Trabalho |
| 9 | VL_LUC_DIV | NUMBER | Y | Lucros/Dividendos |
| 10 | VL_JUR_CAP | NUMBER | Y | Juros Sobre o Capital Próprio |
| 11 | VL_DEM_REND | NUMBER | Y | Demais Rendimentos |
| 12 | VL_IR_RET | NUMBER | Y | IR Retido na Fonte |

---

## DBAMV.SPED_FISCAL
> Tabela do Sped Fiscal.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MULTI_EMPRESA | NUMBER | N | Cdigo da Empresa |
| 2 | DT_COMPETENCIA | DATE | N | Data da Competncia |
| 3 | TP_FINALIDADE_ARQUIVO | VARCHAR2 | N | Tipo da finalidade do arquivo |

---

## DBAMV.SPED_FISCAL_DEDUCAO_ISS
> Tabela de Deduo do ISS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SPED_FISCAL_DEDUCAO_ISS | NUMBER | N | Cdigo sequencial da Deduo do ISS |
| 2 | CD_MULTI_EMPRESA | NUMBER | N | Cdigo da Empresa |
| 3 | DT_COMPETENCIA | DATE | N | Data da Competncia |
| 4 | NR_PROCESSO_JUDICIAL | VARCHAR2 | Y | Número do Processo Administrativo ou Judicial |
| 5 | CD_OBSERVACAO | NUMBER | N | Cdigo da Observao |
| 6 | VL_DEDUCAO | NUMBER | N |  |
| 7 | TP_OBRIGACAO | VARCHAR2 | N | Tipo da Obrigação |
| 8 | TP_DEDUCAO | VARCHAR2 | N | Tipo da Dedução |
| 9 | CD_PROCESSO_JUDICIAL | VARCHAR2 | Y | Nmero do Processo Administrativo ou Judicial |

---

## DBAMV.SPED_LOG_FORNECEDOR
> Tabela de Log do Fornecedor

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SPED_LOG_FORNECEDOR | NUMBER | N | Cdigo sequencial do Log do Fornecedor |
| 2 | CD_FORNECEDOR | NUMBER | N | Cdigo do Fornecedor |
| 3 | NR_CAMPO_ALTERADO | VARCHAR2 | N | Numero do Campo Alterado. Valores possveis: 03-Nome, 04-Pas, 05-CNPJ, 06-CPF, 08-Municpio, 09-SUF... |
| 4 | DS_CONTEUDO_ANTERIOR_CAMPO | VARCHAR2 | Y | Contedo anterior do campo |
| 5 | DT_ULTIMA_ALTERACAO | DATE | N | Data da ltima alterao |

---

## DBAMV.SUBTIPO_VINCULO_CNES
> Tabela de vinculo empregaticio do SCNES-SUS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_VINCULO_CNES | VARCHAR2 | N | Codigo do vinculo |
| 2 | CD_TIPO_VINCULO_CNES | VARCHAR2 | N | Codigo do tipo de vinculo |
| 3 | CD_SUBTIPO_VINCULO_CNES | VARCHAR2 | N | Codigo do subtipo do vinculo |
| 4 | DS_SUBTIPO_VINCULO_CNES | VARCHAR2 | Y | Descric?o do subtipo de vinculo |
| 5 | SN_ATIVO | VARCHAR2 | Y | Sinalisa se o item esta ativo. |
| 6 | TP_VINCULO_MV | VARCHAR2 | Y | Funciona como um depara do Vinculo CNES com o MV. |

---

## DBAMV.TETO_ORCAMENTARIO_SETOR
> Cadastro de tetos orcamentarios por setor do SIA-SUS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_FAT_SIA | NUMBER | N | Codigo da fatura |
| 2 | CD_SETOR | NUMBER | N | Codigo do Setor |
| 3 | CD_SSM | VARCHAR2 | N | Codigo do Procedimento SIA-SUS |
| 4 | QT_FISICO | NUMBER | Y | Quantidade teto fisico |
| 5 | VL_ORCAMENTO | NUMBER | Y | Valor orcamentario |

---

## DBAMV.TISS_CAB_PROTOCOLO
> Tabela de Cabecalho de Protocolos do TISS, para Controle de Solicitac?es de Status.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | NR_PROTOCOLO | NUMBER | N | Numero do Protocolo |
| 2 | NR_REGISTRO_OPERADORA_ANS | NUMBER | N | Registro da Operadora na ANS (destino) |
| 3 | NM_PRESTADOR | VARCHAR2 | Y | Nome do Prestador |
| 4 | NR_CNES | VARCHAR2 | Y | Codigo CNES do prestador |

---

## DBAMV.TISS_CNPJ
> Tabela para guardar o CNPJ e raz?o social do hospital por convenio e multi empresa

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TISS_CNPJ | NUMBER | N | Codigo do registro dea configurac?o e PK |
| 2 | CD_CONVENIO | NUMBER | N | Convenio em quest?o da configurac?o |
| 3 | CD_CNPJ | VARCHAR2 | Y | CNPJ que aparecera nas guias TISS para o convenio e empresa do registro |
| 4 | DS_RAZAO_SOCIAL | VARCHAR2 | Y | Raz?o social que aparecera nas guias TISS para o convenio e empresa do registro |
| 5 | CD_MULTI_EMPRESA | NUMBER | N | Codigo multi-empresa em quest?o da configurac?o |

---

## DBAMV.TISS_COMUNICACAO_BENEFICIARIO
> Tabela base para geracao de XML (padrao TISS) referente ao envio da Comunicacao de Evento de Beneficiario junto a Operadora

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Identificac?o da Transac?o |
| 2 | ID_PAI | NUMBER | Y | Identificac?o da Transac?o pai |
| 3 | NR_REGISTRO_OPERADORA_ANS | VARCHAR2 | Y | Nr.registro da operadora na ANS |
| 4 | CD_CNPJ_OPERADORA | VARCHAR2 | Y | CNPJ da operadora (nao havendo Registro ANS |
| 5 | NR_CARTEIRA | VARCHAR2 | N | Numero da carteira do beneficiario da Movimentacao |
| 6 | NM_PACIENTE | VARCHAR2 | N | Nome do Paciente/Beneficiario da Movimentacao |
| 7 | DS_PLANO | VARCHAR2 | N | Nome do plano do convenio do beneficiario da Movimentacao |
| 8 | DT_VALIDADE | VARCHAR2 | Y | Data da validade da carteira do beneficiario da Movimentacao |
| 9 | NR_CNS | VARCHAR2 | Y | Codigo do CNS do beneficiario da Movimentacao |
| 10 | LO_IDENTIFICADOR_BENEFICIARIO | BLOB | Y | Identificador do beneficiario (BLOB uso futuro) |
| 11 | DT_EVENTO | VARCHAR2 | N | Data do evento a comunicar na Operadora |
| 12 | TP_EVENTO | VARCHAR2 | N | Tipo do evento a comunicar na Operadora |
| 13 | TP_SAIDA | VARCHAR2 | Y | Tipo de Saida do Atendimento a comunicar na Operadora |
| 14 | TP_INTERNACAO | VARCHAR2 | Y | Tipo de Internacao do Atendimento a comunicar na Operadora |
| 15 | CD_PACIENTE | NUMBER | Y | Codigo do paciente da Movimentacao |
| 16 | CD_CONVENIO | NUMBER | N | Codigo do convenio do beneficiario da Movimentacao |
| 17 | CD_CON_PLA | NUMBER | N | Codigo do plano do convenio do beneficiario da Movimentacao |
| 18 | DH_TRANSACAO | DATE | N | Data/Hora real desta transacao |
| 19 | SN_ATENDIMENTO_RN | VARCHAR2 | N |  |
| 20 | TP_IDENT_BENEFICIARIO | VARCHAR2 | Y | Tipo de tecnologia usada na identificação do beneficiário (tipoIdent/TUSS-72) |
| 21 | NR_ID_BENEFICIARIO | VARCHAR2 | Y | Atesta a presença do beneficiário. Gravar de acordo com tipoIdent/TUSS-72 (identificadorBeneficia... |
| 22 | DS_TEMPLATE_IDENT_BENEFICIARIO | VARCHAR2 | Y | Minúcia do identificador biométrico (templateBiometrico) |

---

## DBAMV.TISS_CONFIG_ATEND

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_MULTI_EMPRESA | NUMBER | Y |  |
| 2 | CD_CONVENIO | NUMBER | Y |  |
| 3 | TP_ATENDIMENTO | VARCHAR2 | Y |  |
| 4 | CD_ORI_ATE | NUMBER | Y |  |
| 5 | CD_PRO_FAT | VARCHAR2 | Y |  |
| 6 | DS_CAMPO_TISS | VARCHAR2 | N |  |
| 7 | VL_CAMPO_TISS | VARCHAR2 | N |  |
| 8 | DT_VIGENCIA | DATE | N |  |

---

## DBAMV.TISS_CONF_SERVICO_CONV
> Tabela de configurac?o dos servicos do TISS por convenio

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONVENIO | NUMBER | N | Numero da vers?o do TISS |
| 2 | DS_CHAVE | VARCHAR2 | N | Chave do servico |
| 3 | DS_VALOR | VARCHAR2 | N | Valor da configurac?o |

---

## DBAMV.TISS_CONV_IMPREME_AUT_GUIA
> TABELA DE CADASTROS PARA TIPO DE IMPRESS?O AUTOMATICA DA GUIA TISS NO FATURAMENTO

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONVENIO | NUMBER | N | CODIGO DO CONVENIO |
| 2 | TP_ATENDIMENTO | VARCHAR2 | N | TIPO DO ATENDIMENTO |
| 3 | SN_IMPRIME_SP | VARCHAR2 | N | IMPRIME GUIA SP SADT AUTOMATICO |
| 4 | SN_IMPRIME_OD | VARCHAR2 | N | IMPRIME GUIA OUTRAS DESPESAS AUTOMATICO |
| 5 | SN_IMPRIME_CO | VARCHAR2 | N | IMPRIME GUIA CONSULTA AUTOMATICO |
| 6 | SN_IMPRIME_HI | VARCHAR2 | N | IMPRIME GUIA HONORARIO INDIVIDUAL AUTOMATICO |
| 7 | SN_IMPRIME_RI | VARCHAR2 | N | IMPRIME GUIA RESUMO DE INTERNACAO AUTOMATICO |

---

## DBAMV.TISS_CONV_IMPRESSAO_GUIA
> Tabela de cadastros para tipo de impress?o de mesmo numero de guia

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_CONVENIO | NUMBER | N | Codigo do Convenio |
| 2 | TP_ATENDIMENTO | VARCHAR2 | N | Tipo do Atendimento |
| 3 | TP_IMPRESSAO | VARCHAR2 | N | Tipo de impress?o: U - Unica, T - Todos, N - N?o imprimir |

---

## DBAMV.TISS_ENVIO_DOCUMENTOS
> Tabela de envio de documentos da TISS 4.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Identificação do anexo (PK) |
| 2 | ID_PAI | NUMBER | Y | Idenfiticação do código pai na TISS_MENSAGEM (FK) |
| 3 | CD_ATENDIMENTO | NUMBER | N |  |
| 4 | CD_CONVENIO | NUMBER | N |  |
| 5 | NR_DOC_ENVIO | VARCHAR2 | Y | Número que identifica o documento no prestador de serviços. |
| 6 | NR_DOC_RETORNO | VARCHAR2 | Y | Número que identifica o documento no prestador de serviços. |
| 7 | TP_GUIA | VARCHAR2 | N | Tipo da guia anexado: Solicitação, Faturamento ou Recusa Glosa. |
| 8 | NR_LOTE | VARCHAR2 | Y | Número que identifica no prestador de serviços o lote ao qual o documento será vinculado. Deve se... |
| 9 | NR_PROTOCOLO_LOTE | VARCHAR2 | Y | Número atribuído pela operadora ao lote de guias encaminhado pelo prestador, ao qual o documento ... |
| 10 | NR_GUIA | VARCHAR2 | Y | Número que identifica a guia no prestador de serviços à qual o documento será vinculado. Deve ser... |
| 11 | NR_GUIA_OPERADORA | VARCHAR2 | Y | Número que identifica a guia atribuído pela operadora à qual o documento será vinculado. Deve ser... |
| 12 | SQ_ITEM | NUMBER | Y | Sequencial de referência do procedimento ou item assistencial. |
| 13 | TP_DOCUMENTO | VARCHAR2 | Y | Tipo do documento anexado. |
| 14 | TP_EXT_DOCUMENTO | VARCHAR2 | Y | Extensão tipo do documento anexado. |
| 15 | NM_DOCUMENTO | VARCHAR2 | Y | Nome do documento anexado. |
| 16 | LO_DOCUMENTO | BLOB | Y | Documento codificado em padrão BASE64. |
| 17 | DS_OBSERVACAO | VARCHAR2 | Y | Campo utilizado para adicionar quaisquer observações sobre o atendimento ou justificativas que ju... |
| 18 | CD_USUARIO | VARCHAR2 | Y | Identificação do usuário |
| 19 | DT_ANEXO | DATE | Y | Data do anexo |
| 20 | DS_CAMINHO | VARCHAR2 | Y | Caminho onde será colado o arquivo no servidor do SIT-e |

---

## DBAMV.TISS_GUIA
> Estrutura das Guias do TISS (cabecalho).

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | SP RI HI - Sequence desta tabela |
| 2 | ID_PAI | NUMBER | Y | SP RI HI - Codigo do registro-pai |
| 3 | NM_XML | VARCHAR2 | Y | SP RI HI - Nome que identifica o modelo XML a ser gerado |
| 4 | NR_REGISTRO_OPERADORA_ANS | VARCHAR2 | Y | SP RI HI - Registro da Operadora na ANS (destino) |
| 5 | CD_PRESTADOR_NA_OPERADORA | VARCHAR2 | Y | SP RI HI - Codigo do hospital na Operadora (origem) |
| 6 | NR_GUIA | VARCHAR2 | Y | SP RI HI - Numero da Guia do Prestador (Hospital) |
| 7 | NR_GUIA_OPERADORA | VARCHAR2 | Y | SP RI HI - Numero da Guia da Operadora |
| 8 | NR_ID_BENEFICIARIO | VARCHAR2 | Y | Atesta a presença do beneficiário. Gravar de acordo com tipoIdent/TUSS-72 (identificadorBeneficia... |
| 9 | DT_EMISSAO | VARCHAR2 | Y | SP RI HI - Data de emiss?o da Guia |
| 10 | NR_GUIA_PRINCIPAL | VARCHAR2 | Y | SP RI HI - Nr da Guia Principal, obrigatoria para SADT internado |
| 11 | DT_EMISSAO_PRINCIPAL | VARCHAR2 | Y | HI - Data de emiss?o da Guia Principal |
| 12 | NR_CARTEIRA | VARCHAR2 | Y | SP RI HI - Beneficiario: Numero da Carteira |
| 13 | DT_VALIDADE | VARCHAR2 | Y | SP RI HI - Beneficiario: Validade da Carteira |
| 14 | NM_PACIENTE | VARCHAR2 | Y | SP RI HI - Beneficiario: Nome |
| 15 | DS_CON_PLA | VARCHAR2 | Y | SP RI HI - Beneficiario: Nome do plano |
| 16 | NM_TITULAR | VARCHAR2 | Y | SP RI HI - Beneficiario: Nome do responsavel ou titular pelo plano |
| 17 | NR_CNS | VARCHAR2 | Y | SP RI HI - Beneficiario: Numero do Cart?o Nacional de Saude |
| 18 | CD_CGC_CPF_SOL | VARCHAR2 | Y | SP - Solicitante: Cod.Operadora, CNPJ ou CPF |
| 19 | NM_PRESTADOR_SOL | VARCHAR2 | Y | SP - Solicitante: Nome do profissional |
| 20 | DS_CODIGO_CONSELHO_SOL | VARCHAR2 | Y | SP - Solicitante: Numero do Conselho Profissional |
| 21 | DS_CONSELHO_SOL | VARCHAR2 | Y | SP - Solicitante: Sigla do Conselho Profissional |
| 22 | UF_CONSELHO_SOL | VARCHAR2 | Y | SP - Solicitante: Unidade Federativa do Conselho Profissional |
| 23 | CD_CBOS_SOL | VARCHAR2 | Y | SP - Solicitante: Codigo da especialidade conforme tabela CBO-S |
| 24 | CD_CGC_SOL | VARCHAR2 | Y | SP - Solicitante: Numero do CGC (CNPJ) |
| 25 | CD_CPF_SOL | VARCHAR2 | Y | SP - Solicitante: Numero do CPF |
| 26 | CD_OPERADORA_SOL | VARCHAR2 | Y | SP - Solicitante: Codigo da Operadora |
| 27 | CD_TIPO_LOGRADOURO_SOL | VARCHAR2 | Y | SP - Solicitante: Tipo do Logradouro |
| 28 | DS_ENDERECO_SOL | VARCHAR2 | Y | SP - Solicitante: Logradouro (endereco) |
| 29 | NR_ENDERECO_SOL | VARCHAR2 | Y | SP - Solicitante: Numero do Endereco |
| 30 | CD_IBGE_SOL | VARCHAR2 | Y | SP - Solicitante: Codigo IBGE do Municipio |
| 31 | UF_SOL | VARCHAR2 | Y | SP - Solicitante: Sigla UF |
| 32 | NR_CEP_SOL | VARCHAR2 | Y | SP - Solicitante: CEP |
| 33 | CD_CNES_SOL | VARCHAR2 | Y | SP - Solicitante: Codigo CNES |
| 34 | DS_COMPLEMENTO_SOL | VARCHAR2 | Y | SP - Solicitante: Complemento do Endereco |
| 35 | CD_CGC_CPF_EXE | VARCHAR2 | Y | SP RI HI - Executante: CNPJ |
| 36 | NM_PRESTADOR_EXE | VARCHAR2 | Y | SP RI HI - Executante: Nome do profissional |
| 37 | CD_CNES_EXE | VARCHAR2 | Y | SP RI HI - Executante: CNES |
| 38 | CD_TIPO_LOGRADOURO_EXE | VARCHAR2 | Y | SP RI HI - Executante: Codigo do Tipo de logradouro |
| 39 | DS_ENDERECO_EXE | VARCHAR2 | Y | SP RI HI - Executante: Nome do logradouro |
| 40 | NR_ENDERECO_EXE | VARCHAR2 | Y | SP RI HI - Executante: Numero do endereco |
| 41 | NM_BAIRRO_EXE | VARCHAR2 | Y | SP RI HI - Executante: Complemento do endereco |
| 42 | CD_IBGE_EXE | VARCHAR2 | Y | SP RI HI - Executante: Codigo IBGE do municipio |
| 43 | UF_EXE | VARCHAR2 | Y | SP RI HI - Executante: UF do endereco do executante |
| 44 | NR_CEP_EXE | VARCHAR2 | Y | SP RI HI - Executante: CEP |
| 45 | CD_CGC_EXE | VARCHAR2 | Y | SP RI HI - Executante: Numero do CGC (CNPJ) |
| 46 | CD_CPF_EXE | VARCHAR2 | Y | SP RI HI - Executante: Numero do CPF |
| 47 | CD_OPERADORA_EXE | VARCHAR2 | Y | SP RI HI - Executante: Codigo da Operadora |
| 48 | DS_CONSELHO_EXE | VARCHAR2 | Y | SP RI HI - Executante: Sigla do Conselho Profissional |
| 49 | DS_CODIGO_CONSELHO_EXE | VARCHAR2 | Y | SP RI HI - Executante: Numero do Conselho Profissional |
| 50 | UF_CONSELHO_EXE | VARCHAR2 | Y | SP RI HI - Executante: UF do Conselho Profissional |
| 51 | DS_COMPLEMENTO_EXE | VARCHAR2 | Y | SP RI HI - Executante: Complemento do Endereco |
| 52 | NM_CIDADE_EXE | VARCHAR2 | Y | SP RI HI - Executante: Municipio |
| 53 | CD_CBOS_EXE | VARCHAR2 | Y | HI - Executante: Codigo do CBO-S |
| 54 | CD_ATI_MED_EXE | VARCHAR2 | Y | HI - Executante: Posic?o do profissional (grau de participac?o) |
| 55 | DS_HDA | VARCHAR2 | Y | SP - Indicac?o Clinica |
| 56 | CD_CARATER_SOLICITACAO | VARCHAR2 | Y | SP RI - Codigo do Carater da solicitac?o |
| 57 | DH_ATENDIMENTO | VARCHAR2 | Y | SP RI - Data de hora do Atendimento ou da Internac?o |
| 58 | TP_SAIDA | VARCHAR2 | Y | SP - Tipo de Saida |
| 59 | TP_ATENDIMENTO | VARCHAR2 | Y | SP - Tipo de atendimento |
| 60 | TP_FATURAMENTO | VARCHAR2 | Y | RI - Tipo do Faturamento (Parcial/Total) |
| 61 | TP_CID | VARCHAR2 | Y | SP RI - Tipo do diagnostico principal   (fixo - CID_10) |
| 62 | CD_CID | VARCHAR2 | Y | SP RI - CID do diagnostico principal |
| 63 | DS_CID | VARCHAR2 | Y | SP RI - Descric?o do diagnostico principal |
| 64 | DT_AUTORIZACAO | VARCHAR2 | Y | SP RI - Autorizac?o: Data de autorizac?o da Guia |
| 65 | CD_SENHA | VARCHAR2 | Y | SP RI - Autorizac?o: Senha de autorizac?o |
| 66 | DT_VALIDADE_AUTORIZADA | VARCHAR2 | Y | SP RI - Autorizac?o: Data de validade da Senha |
| 67 | NM_AUTORIZADOR_CONV | VARCHAR2 | Y | SP RI - Autorizac?o: Nome do funcionario que informou a Senha |
| 68 | VL_TOT_SERVICOS | VARCHAR2 | Y | SP RI - Total de servicos executados |
| 69 | VL_TOT_DIARIAS | VARCHAR2 | Y | SP RI - Total de diarias executadas |
| 70 | VL_TOT_TAXAS | VARCHAR2 | Y | SP RI - Total de taxas executadas |
| 71 | VL_TOT_MATERIAIS | VARCHAR2 | Y | SP RI - Total de materiais constantes na guia |
| 72 | VL_TOT_MEDICAMENTOS | VARCHAR2 | Y | SP RI - Total de medicamentos constantes na guia |
| 73 | VL_TOT_GASES | VARCHAR2 | Y | SP RI - Total de gases constantes na guia |
| 74 | VL_TOT_GERAL | VARCHAR2 | Y | SP RI - Total geral (soma dos totais anteriores) |
| 75 | CD_TIP_ACOM | VARCHAR2 | Y | RI HI - Tipo de acomodac?o |
| 76 | DH_ALTA | VARCHAR2 | Y | RI - Data e hora da saida da internac?o |
| 77 | CD_TIPO_INTERNACAO | VARCHAR2 | Y | RI - Tipo da internac?o |
| 78 | TP_DOENCA | VARCHAR2 | Y | Tipo da doenca |
| 79 | NR_TEMPO_DOENCA | VARCHAR2 | Y | Quantidade de tempo da doenca |
| 80 | TP_TEMPO_DOENCA | VARCHAR2 | Y | Unidade de tempo da doenca |
| 81 | DS_OBSERVACAO | VARCHAR2 | Y | Observac?es referentes a Guia de envio |
| 82 | NR_GUIA_SOL | VARCHAR2 | Y | Numero da Guia de Solicitac?o |
| 83 | TP_REGIME_INTERNACAO | VARCHAR2 | Y | RI - Tipo do Regime da Internac?o |
| 84 | SN_GESTACAO | VARCHAR2 | Y | RI - Internac?o obstetrica - em gestac?o |
| 85 | SN_ABORTO | VARCHAR2 | Y | RI - Internac?o obstetrica - aborto |
| 86 | SN_TRANSTORNO | VARCHAR2 | Y | RI - Internac?o obstetrica - transtorno materno rel.gravidez |
| 87 | SN_COMPLICACAO | VARCHAR2 | Y | RI - Internac?o obstetrica - complicac?o periodo puerperio |
| 88 | SN_ATEND_SL_PARTO | VARCHAR2 | Y | RI - Internac?o obstetrica - atendimento RN sala de parto |
| 89 | SN_COMPLICACAO_NEO | VARCHAR2 | Y | RI - Internac?o obstetrica - complicac?o neonatal |
| 90 | SN_BAIXO_PESO | VARCHAR2 | Y | RI - Internac?o obstetrica - baixo peso |
| 91 | SN_CESAREO | VARCHAR2 | Y | RI - Internac?o obstetrica - parto cesareo |
| 92 | SN_NORMAL | VARCHAR2 | Y | RI - Internac?o obstetrica - parto normal |
| 93 | CD_DECL_NASCIDOS_VIVOS | VARCHAR2 | Y | RI - Internac?o obstetrica - Declarac?es nascidos vivos |
| 94 | QT_NASCIDOS_VIVOS | VARCHAR2 | Y | RI - Internac?o obstetrica - quantidade de nascidos vivos |
| 95 | QT_NASCIDOS_PREMATUROS | VARCHAR2 | Y | RI - Internac?o obstetrica - quantidade de nascidos prematuros |
| 96 | QT_NASCIDOS_MORTOS | VARCHAR2 | Y | RI - Internac?o obstetrica - quantidade de nascidos mortos |
| 97 | TP_OBITO_MULHER | VARCHAR2 | Y | RI - Se obito em mulher, informar o tipo |
| 98 | QT_OBITO_PRECOCE | VARCHAR2 | Y | RI - Quantidade de obito precoce |
| 99 | QT_OBITO_TARDIO | VARCHAR2 | Y | RI - Quantidade de obito tardio |
| 100 | TP_ACIDENTE | VARCHAR2 | Y | RI - Indicador de acidente |
| 101 | CD_MOTIVO_ALTA | VARCHAR2 | Y | RI - Motivo Saida da Internac?o (motivo de alta) |
| 102 | CD_SUS | VARCHAR2 | Y | RI - Codigo procedimento SIH-SUS |
| 103 | NR_DIARIAS_UTI | VARCHAR2 | Y | RI - Numero de diarias de UTI |
| 104 | TP_CID_OBITO | VARCHAR2 | Y | RI - Tipo do diagnostico do obito   (fixo - CID_10) |
| 105 | CD_CID_OBITO | VARCHAR2 | Y | RI - CID do diagnostico  do obito |
| 106 | DS_CID_OBITO | VARCHAR2 | Y | RI - Descric?o do diagnostico  do obito |
| 107 | NR_DECLARACAO_OBITO | VARCHAR2 | Y | RI - Numero da declarac?o de obito |
| 108 | CD_TIPO_FATURAMENTO | VARCHAR2 | Y | RI - Tipo de faturamento (final ou parcial) |
| 109 | VL_TOTAL_GERAL_PROC | VARCHAR2 | Y | RI HI - Valor total geral dos Procedimentos/Exames |
| 110 | VL_TOTAL_GERAL_OPME | VARCHAR2 | Y | RI - Valor total geral dos procedimentos de OPMEs |
| 111 | VL_TOTAL_GERAL_OUTRAS | VARCHAR2 | Y | RI SP - Valor total geral das Outras Despesas |
| 112 | VL_TOTAL_GERAL_HONO | VARCHAR2 | Y | HI - Valor total geral dos Honorarios |
| 113 | NR_LOTE | VARCHAR2 | Y | Numero do Lote de envio ao Convenio. |
| 114 | SN_TRATOU_RETORNO | VARCHAR2 | Y | Indica que este retorno ja foi processado. |
| 115 | CD_SEQ_TRANSACAO | NUMBER | Y | SP RI HI - Numero de identificac?o da Mensagem enviada |
| 116 | CD_REMESSA | NUMBER | Y | Codigo da Remessa |
| 117 | CD_ATENDIMENTO | NUMBER | Y | Codigo do Atendimento |
| 118 | CD_REG_FAT | NUMBER | Y | Numero da Conta Hospitalar |
| 119 | CD_REG_AMB | NUMBER | Y | Numero da Conta Ambulatorial |
| 120 | CD_CONVENIO | NUMBER | Y | SP RI HI - Codigo do Convenio no cadastro da MV |
| 121 | CD_GUIA | NUMBER | Y | SP RI HI - Codigo da Guia no cadastro da MV |
| 122 | NM_PRESTADOR_EXE_COMPL | VARCHAR2 | Y | SP - Nome do Prestador Executante Complementar |
| 123 | CD_CGC_EXE_COMPL | VARCHAR2 | Y | SP - CGC do Prestador Executante Complementar |
| 124 | CD_CPF_EXE_COMPL | VARCHAR2 | Y | SP - CPF do Prestador Executante Complementar |
| 125 | CD_OPERADORA_EXE_COMPL | VARCHAR2 | Y | SP - Codigo da Operadora do Prestador Executante Complementar |
| 126 | NM_CIDADE_SOL | VARCHAR2 | Y | Solicitante: Municipio |
| 127 | CD_STATUS_CANCELAMENTO | VARCHAR2 | Y | Codigo do status do cancelamento do retorno da operadora |
| 128 | NM_PRESTADOR_CONTRATADO | VARCHAR2 | Y | Contratado Solicitante: Nome |
| 129 | CD_CGC_CONTRATADO | VARCHAR2 | Y | Contratado Solicitante: CGC |
| 130 | CD_CPF_CONTRATADO | VARCHAR2 | Y | Contratado Solicitante: CPF |
| 131 | CD_OPERADORA_CONTRATADO | VARCHAR2 | Y | Contratado Solicitante: Codigo na operadora |
| 132 | CD_REMESSA_GLOSA | NUMBER | Y | Remessa-Glosa ao qual pertence o lancamento (a reapresentar, Retorno-Tiss). |
| 133 | DS_CONSELHO_CONTRATADO | VARCHAR2 | Y | Sigla do Conselho Profissional da Idenficacao Profissional |
| 134 | DS_COD_CONSELHO_CONTRATADO | VARCHAR2 | Y | Numero do Conselho Profissional da Idenficacao Profissional |
| 135 | UF_CONSELHO_CONTRATADO | VARCHAR2 | Y | Unidade Federativa do Conselho Profissional da Idenficacao Profissional |
| 136 | CD_FONTE_PAGADORA | VARCHAR2 | Y | CNPJ da fonte pagadora(Convenio). |
| 137 | SN_ATENDIMENTO_RN | VARCHAR2 | N | Indica se o atendimento e de RN |
| 138 | DT_INICIO_FATURAMENTO | VARCHAR2 | Y | Data de inicio do faturamento. |
| 139 | HR_INICIO_FATURAMENTO | VARCHAR2 | Y | Hora de inicio do faturamento. |
| 140 | DT_FINAL_FATURAMENTO | VARCHAR2 | Y | Data final do faturamento. |
| 141 | HR_FINAL_FATURAMENTO | VARCHAR2 | Y | Hora final do faturamento. |
| 142 | VL_TOT_OPME | VARCHAR2 | Y | Valor total dos OPME. |
| 143 | TP_CONSULTA | VARCHAR2 | Y | Codigo do tipo de consulta realizada. |
| 144 | TP_TAB_FAT_CO | VARCHAR2 | Y | Tabela de Faturamento do item da guia de Consulta. |
| 145 | CD_PROCEDIMENTO_CO | VARCHAR2 | Y | Codigo do Procedimento do item da guia de Consulta. |
| 146 | VL_PROCEDIMENTO_CO | VARCHAR2 | Y | Valor do Procedimento do item da guia de Consulta. |
| 147 | DS_INCONSISTENCIAS | VARCHAR2 | Y | Descrição de alertas e inconsistências na guia. |
| 148 | CD_VERSAO_TISS_GERADA | VARCHAR2 | Y | Versão do tiss em que foi gerada a GUIA |
| 149 | CD_AUSENCIA_VALIDACAO | VARCHAR2 | Y | Justificativa do paciente pela ausência do código de validação (ausenciaCodValidacao/TUSS-74) |
| 150 | CD_VALIDACAO | VARCHAR2 | Y | Código de validação para atestar presença do paciente (codValidacao) |
| 151 | TP_ETAPA_AUTORIZACAO | VARCHAR2 | Y | Indica a etapa da solicitação de autorização (tipoEtapaAutorizacao/TUSS-73) |
| 152 | TP_IDENT_BENEFICIARIO | VARCHAR2 | Y | Tipo de tecnologia usada na identificação do beneficiário (tipoIdent/TUSS-72) |
| 153 | DS_TEMPLATE_IDENT_BENEFICIARIO | VARCHAR2 | Y | Minúcia do identificador biométrico (templateBiometrico) |
| 154 | SN_GUIA_ALTERADA | VARCHAR2 | N | Sinaliza se a Guia foi editada. |
| 155 | DS_HIST_REAPRESENTACAO | VARCHAR2 | Y | Quando uma guia é reapresentada em outro lote, guarda o lote de origem. |
| 156 | TP_COBERTURA_ESPECIAL | VARCHAR2 | Y | Código da Cobertura Especial conforme tabela de domínio nº 75. |
| 157 | TP_REGIME_ATENDIMENTO | VARCHAR2 | Y | Código da Cobertura Especial conforme tabela de domínio nº 76. |
| 158 | TP_SAUDE_OCUPACIONAL | VARCHAR2 | Y | Código da Cobertura Especial conforme tabela de domínio nº 77. |
| 159 | NM_SOCIAL_PACIENTE | VARCHAR2 | Y | Nome social do beneficiário conforme Decreto nº 8.727, de 28/04/2016. |

---

## DBAMV.TISS_GUIA_JUSTIFICA_GLOSA
> Tabela de glosas da guia TISS.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Sequence desta tabela |
| 2 | ID_PAI | NUMBER | N | Código do registro-pai |
| 3 | CD_MOTIVO_GLOSA | VARCHAR2 | Y | Motivo da possível Glosa |
| 4 | DS_JUSTIFICA_GUIA | VARCHAR2 | Y | Descrição da Justificativa da Guia |

---

## DBAMV.TISS_GUIA_REAPRESENTACAO
> Controla as reapresentações das guias TISS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Identificação da TISS_GUIA (FK) |
| 2 | ID_PAI | NUMBER | N | Identificação da TISS_LOTE (FK) |
| 3 | SN_REJEITADA | VARCHAR2 | N | Sinaliza se a guia foi devolvida |
| 4 | SN_REAPRESENTADA | VARCHAR2 | N | Sinaliza se a guia foi reapresentada |
| 5 | CD_GLOSA_TUSS | VARCHAR2 | Y | Código do motivo de glosa TUSS (tab38) de devolução do convênio |
| 6 | DT_DEVOLUCAO | DATE | Y | Data de devolução do convênio |

---

## DBAMV.TISS_ITEM_RECIBO_COMUNIC_BENFC
> Tabela base da importacao de XML (padrao TISS) referente ao detalhamento de Recibo da Comunicacao de Evento de Beneficiario vindo da Operadora

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Identificac?o da Transac?o |
| 2 | ID_PAI | NUMBER | Y | Identificac?o da Transac?o pai |
| 3 | NR_REGISTRO_OPERADORA_ANS | VARCHAR2 | Y | Nr.registroda operadora na ANS |
| 4 | CD_CNPJ_OPERADORA | VARCHAR2 | Y | CNPJ da operadora (nao havendo Registro ANS |
| 5 | NR_CARTEIRA | VARCHAR2 | Y | Numero da carteira do beneficiario da Movimentacao |
| 6 | NM_PACIENTE | VARCHAR2 | Y | Nome do Paciente/Beneficiario da Movimentacao |
| 7 | DS_PLANO | VARCHAR2 | Y | Nome do plano do convenio do beneficiario da Movimentacao |
| 8 | DT_VALIDADE | VARCHAR2 | Y | Data da validade da carteira do beneficiario da Movimentacao |
| 9 | NR_CNS | VARCHAR2 | Y | Codigo do CNS do beneficiario da Movimentacao |
| 10 | LO_IDENTIFICADOR_BENEFICIARIO | BLOB | Y | Identificador do beneficiario (BLOB uso futuro) |
| 11 | CD_STATUS_COMUNIC_BENEFICIARIO | VARCHAR2 | Y | Codigo do Status da comunicacao do Evento do Beneficiario |
| 12 | DT_EVENTO | VARCHAR2 | Y | Data do evento a comunicar na Operadora |
| 13 | TP_EVENTO | VARCHAR2 | Y | Tipo do evento a comunicar na Operadora |
| 14 | TP_SAIDA | VARCHAR2 | Y | Tipo de Saida do Atendimento a comunicar na Operadora |
| 15 | TP_INTERNACAO | VARCHAR2 | Y | Tipo de Internacao do Atendimento a comunicar na Operadora |
| 16 | ID_MENSAGEM_ORIGEM | NUMBER | Y | Referencia da mensagem de envio relacionada a este recibo de comunicado |
| 17 | CD_PACIENTE | NUMBER | Y | Codigo do paciente da Movimentacao |
| 18 | CD_CONVENIO | NUMBER | Y | Codigo do convenio do beneficiario da Movimentacao |
| 19 | CD_CON_PLA | NUMBER | Y | Codigo do plano do convenio do beneficiario da Movimentacao |
| 20 | DH_TRANSACAO | DATE | Y | Data/Hora real desta transacao |
| 21 | SN_ATENDIMENTO_RN | VARCHAR2 | N |  |
| 22 | CD_MOTIVO_GLOSA | VARCHAR2 | Y |  |
| 23 | DS_MOTIVO_GLOSA | VARCHAR2 | Y |  |
| 24 | NM_SOCIAL_PACIENTE | VARCHAR2 | Y | Nome social do beneficiário conforme Decreto nº 8.727, de 28/04/2016. |

---

## DBAMV.TISS_ITEM_SOLICITA_STATUS_AUT
> Tabela da estrutura do XML-tiss necessario para solicitar eletronicamente o status de uma guia pendente de autorizac?o no convenio

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Sequence desta tabela |
| 2 | ID_PAI | NUMBER | Y | Codigo do registro-pai |
| 3 | ID_TISS_GUIA_REQUISITADA | NUMBER | Y | ID da guia de autorizac?o referenciada nesta solicitac?o (ID na TISS_SOL_GUIA) |
| 4 | ID_TISS_RET_SOL_RESPOSTA | NUMBER | Y | ID da resposta desta solicitac?o (ID na TISS_RETORNO_SOLICITACAO) |
| 5 | NR_REGISTRO_OPERADORA_ANS | VARCHAR2 | Y | Registro da operadora na ANS |
| 6 | CD_FONTE_PAGADORA | VARCHAR2 | Y | CNPJ da operadora (operadoras n?o registradas na ANS) |
| 7 | DT_EMISSAO | VARCHAR2 | Y | Data da emiss?o da guia referenciada nesta solicitac?o |
| 8 | NR_GUIA_OPERADORA | VARCHAR2 | Y | Nr. guia operadora da guia referenciada nesta solicitac?o |
| 9 | NR_GUIA | VARCHAR2 | N | Nr. guia prestador da guia referenciada nesta solicitac?o |
| 10 | CD_CGC | VARCHAR2 | Y | CNPJ do contratado solicitante da guia referenciada nesta solicitac?o |
| 11 | CD_CPF | VARCHAR2 | Y | CPF do contratado solicitante da guia referenciada nesta solicitac?o |
| 12 | CD_OPERADORA | VARCHAR2 | Y | Nr. credenciamento do contratado solicitante da guia referenciada nesta solicitac?o |
| 13 | NM_PRESTADOR_CONTRATADO | VARCHAR2 | Y | Nome do contratado solicitante da guia referenciada nesta solicitac?o |
| 14 | CD_TIPO_LOGRADOURO | VARCHAR2 | Y | Tipo de logradouro do contratado solicitante da guia referenciada nesta solicitac?o |
| 15 | DS_ENDERECO | VARCHAR2 | Y | Endereco do contratado solicitante da guia referenciada nesta solicitac?o |
| 16 | NR_ENDERECO | VARCHAR2 | Y | Numero do endereco do contratado solicitante da guia referenciada nesta solicitac?o |
| 17 | NM_BAIRRO | VARCHAR2 | Y | Bairro do endereco do contratado solicitante da guia referenciada nesta solicitac?o |
| 18 | CD_IBGE | VARCHAR2 | Y | Codigo IBGE da cidade do contratado solicitante da guia referenciada nesta solicitac?o |
| 19 | NM_CIDADE | VARCHAR2 | Y | Nome da cidade do contratado solicitante da guia referenciada nesta solicitac?o |
| 20 | UF_SOLICITANTE | VARCHAR2 | Y | UF da cidade do contratado solicitante da guia referenciada nesta solicitac?o |
| 21 | NR_CEP | VARCHAR2 | Y | CEP do endereco do contratado solicitante da guia referenciada nesta solicitac?o |
| 22 | NR_CNES | VARCHAR2 | Y | Nr. do CNES do contratado solicitante |
| 23 | NR_CARTEIRA | VARCHAR2 | Y | Numero da Carteira de Beneficiario do Paciente na operadora |
| 24 | NM_PACIENTE | VARCHAR2 | Y | Nome do paciente |
| 25 | DS_CON_PLA | VARCHAR2 | Y | Nome do plano do convenio do paciente na operadora |
| 26 | DT_VALIDADE | VARCHAR2 | Y | Data de validade da carteira de beneficiario do paciente |
| 27 | NR_CNS | VARCHAR2 | Y | Numero da CNS do paciente |
| 28 | NR_ID_BENEFICIARIO | VARCHAR2 | Y | Identificac?o do paciente na operadora (biometria, cart?o magnetico, etc). |
| 29 | SN_ATENDIMENTO_RN | VARCHAR2 | N | atendimento RN |
| 30 | TP_IDENT_BENEFICIARIO | VARCHAR2 | Y | Tipo de tecnologia usada na identificação do beneficiário (tipoIdent/TUSS-72) |
| 31 | DS_TEMPLATE_IDENT_BENEFICIARIO | VARCHAR2 | Y | Minúcia do identificador biométrico (templateBiometrico) |

---

## DBAMV.TISS_ITGUIA
> Estrutura dis Itens das Guias do TISS (cabecalho). Tipos de Guia: - SP - Guia de SP/SADT. - RI - Guia de Resumo de Internac?o. - HI - Guia de Honorario Individual. Observac?es: - No COMMENT de cada coluna as abreviac?es acima indicam quais colunas ser?o utilizadas   para cada tipo de Guia.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | SP RI HI - Sequence desta tabela |
| 2 | ID_PAI | NUMBER | Y | SP RI HI - Codigo do registro-pai |
| 3 | HR_INICIO | VARCHAR2 | Y | RI HI - Hora inicial de realizac?o do procedimento |
| 4 | HR_FIM | VARCHAR2 | Y | RI HI - Hora final de realizac?o do procedimento |
| 5 | TP_TAB_FAT | VARCHAR2 | Y | SP RI HI - Sigla da tabela utilizada |
| 6 | CD_PROCEDIMENTO | VARCHAR2 | Y | SP RI HI - Codigo do procedimento solicitado |
| 7 | DS_PROCEDIMENTO | VARCHAR2 | Y | SP RI HI - Descric?o do procedimento solicitado (n?o obrigatorio) |
| 8 | QT_REALIZADA | VARCHAR2 | Y | SP RI HI - Quantidade realizada |
| 9 | CD_VIA_ACESSO | VARCHAR2 | Y | SP RI HI - Via de acesso do procedimento |
| 10 | TP_TECNICA_UTILIZADA | VARCHAR2 | Y | SP RI HI - Codigo da tecnica utilizada |
| 11 | VL_PERCENTUAL_MULTIPLA | VARCHAR2 | Y | SP RI HI - Percentual de reduc?o/acrescimo |
| 12 | VL_UNITARIO | VARCHAR2 | Y | RI HI - Valor unitario do item |
| 13 | VL_TOTAL | VARCHAR2 | Y | SP RI HI - Valor total do item |
| 14 | DT_REALIZADO | VARCHAR2 | Y | SP RI HI - Data em que o procedimento foi realizado |
| 15 | QT_AUTORIZADA | VARCHAR2 | Y | SP - Quantidade autorizada |
| 16 | CD_PRO_FAT | VARCHAR2 | Y | SP RI HI - Codigo do Procedimento na PRO_FAT |
| 17 | TP_PAGAMENTO | VARCHAR2 | Y | Forma de pagamento do item na conta |
| 18 | DS_JUSTIFICATIVA_REVISAO | VARCHAR2 | Y | Campo descritivo para informac?o da justificativa para Recurso/Reapresentac?o da Despesa |
| 19 | DT_FINAL | VARCHAR2 | Y | Data final |
| 20 | CD_MOTIVO_GLOSA | VARCHAR2 | Y | Codigo Motivo Glosa |
| 21 | CD_ATI_MED | VARCHAR2 | Y | Codigo ati Med |
| 22 | SQ_ITEM | NUMBER | Y | Sequencial do item na guia (sequencialItem) |
| 23 | NR_PAGINA | NUMBER | Y | Paginação da guia |
| 24 | NR_LINHA | NUMBER | Y | Paginação/sequencia da guia |
| 25 | CD_MVTO | NUMBER | Y | Código da movimentação |
| 26 | TP_MVTO | VARCHAR2 | Y | Indicador de onde surgiu a movimentação |
| 27 | CD_ITMVTO | NUMBER | Y | Código da movimentação |
| 28 | SN_PRINCIPAL | VARCHAR2 | Y | Coluna que indica se o procedimento é o principal ou não |

---

## DBAMV.TISS_ITGUIA_CID
> Estrutura dos CIDs secundarios das Guias do TISS (cabecalho). Tipos de Guia: - SP - Guia de SP/SADT. - RI - Guia de Resumo de Internac?o. - HI - Guia de Honorario Individual. Observac?es: - No COMMENT de cada coluna as abreviac?es acima indicam quais colunas ser?o utilizadas   para cada tipo de Guia.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | RI - Sequence desta tabela |
| 2 | ID_PAI | NUMBER | Y | RI - Codigo do registro-pai |
| 3 | TP_CID | VARCHAR2 | Y | RI - Tipo do diagnostico secundario (fixo - CID_10) |
| 4 | CD_CID | VARCHAR2 | Y | RI - CID do diagnostico secundario |
| 5 | DS_CID | VARCHAR2 | Y | RI - Descric?o do diagnostico secundario |

---

## DBAMV.TISS_ITGUIA_DECLARACAO
> Tabela filha da guia de Resumo de Internac?o, para as declarac?es de nascidos vivos do FSCC.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Sequence desta tabela |
| 2 | ID_PAI | NUMBER | Y | Codigo do registro-pai |
| 3 | CD_DECL_NASCIDOS_VIVOS | VARCHAR2 | Y | Numero da declarac?o de Nascido Vivo |
| 4 | CD_CID_OBITO | VARCHAR2 | Y | Codigo do diagnostico de obito do paciente. |
| 5 | CD_DECLARACAO_OBITO | VARCHAR2 | Y | Numero da declarac?o de obito. |
| 6 | CD_INDICADOR_DO_RN | VARCHAR2 | Y | Indica se a declarac?o de obito e do recem-nato durante a internac?o da m?e. |

---

## DBAMV.TISS_ITGUIA_EQU
> Estrutura da tabela Equipe medica das guias de Envio do TISS.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Identificac?o da Transac?o |
| 2 | ID_PAI | NUMBER | N | Identificac?o do Registro Pai |
| 3 | CD_CGC | VARCHAR2 | Y | CGC do prestador |
| 4 | CD_CPF | VARCHAR2 | Y | CPF do prestador |
| 5 | CD_OPERADORA | VARCHAR2 | Y | Codigo da Operadora do prestador |
| 6 | NM_PRESTADOR | VARCHAR2 | Y | Nome do prestador |
| 7 | CD_CBOS | VARCHAR2 | Y | Codigo CBO-S do prestador |
| 8 | DS_CONSELHO | VARCHAR2 | Y | Sigla do Conselho Profissional |
| 9 | DS_CODIGO_CONSELHO | VARCHAR2 | Y | Numero do Conselho Profissional |
| 10 | UF_CONSELHO | VARCHAR2 | Y | Unidade Federativa do Conselho Profissional |
| 11 | CD_CPF_2 | VARCHAR2 | Y | CPF do prestador (segundo campo necessario |
| 12 | CD_ATI_MED | VARCHAR2 | Y | Grau de Participac?o (atividade medica) |
| 13 | CD_PRESTADOR_CONVENIADO | NUMBER | Y | Codigo do prestador |
| 14 | NR_CGC_CPF | VARCHAR2 | Y | CGC/CPF do prestador |
| 15 | DS_CONSELHO_COD_PROF | VARCHAR2 | Y | Sigla do Conselho Profissional da Idenficacao Profissional |
| 16 | DS_COD_CONSELHO_COD_PROF | VARCHAR2 | Y | Numero do Conselho Profissional da Idenficacao Profissional |
| 17 | UF_CONSELHO_COD_PROF | VARCHAR2 | Y | Unidade Federativa do Conselho Profissional da Idenficacao Profissional |
| 18 | SQ_REF | NUMBER | Y | Referencia do sequencial do item na guia (sequencialItem) |

---

## DBAMV.TISS_ITGUIA_OBITO
> Estrutura dos CIDs de obito

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Sequence desta tabela |
| 2 | ID_PAI | NUMBER | Y | Codigo do registro-pai |
| 3 | TP_CID | VARCHAR2 | Y | Tipo do diagnostico de obito (fixo - CID_10) |
| 4 | CD_CID | VARCHAR2 | Y | CID do diagnostico de obito |
| 5 | DS_CID | VARCHAR2 | Y | Descric?o do diagnostico de obito |
| 6 | NR_DECLARACAO_OBITO | VARCHAR2 | Y | Numero da declarac?o de obito |

---

## DBAMV.TISS_ITGUIA_OP
> Estrutura dos Itens de OPME utilizados das Guias do TISS (cabecalho). Tipos de Guia: - SP - Guia de SP/SADT. - RI - Guia de Resumo de Internac?o. - HI - Guia de Honorario Individual. Observac?es: - No COMMENT de cada coluna as abreviac?es acima indicam quais colunas ser?o utilizadas   para cada tipo de Guia.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | RI - Sequence desta tabela |
| 2 | ID_PAI | NUMBER | Y | RI - Codigo do registro-pai |
| 3 | TP_TAB_FAT | VARCHAR2 | Y | RI - Sigla da tabela utilizada |
| 4 | CD_PROCEDIMENTO | VARCHAR2 | Y | RI - Codigo do procedimento solicitado |
| 5 | DS_PROCEDIMENTO | VARCHAR2 | Y | RI - Descric?o do procedimento solicitado (n?o obrigatorio) |
| 6 | QT_REALIZADA | VARCHAR2 | Y | RI - Quantidade realizada |
| 7 | CD_CODIGO_BARRA | VARCHAR2 | Y | RI - Codigo de barras |
| 8 | VL_UNITARIO | VARCHAR2 | Y | RI - Valor unitario do item |
| 9 | VL_TOTAL | VARCHAR2 | Y | RI - Valor total do item |
| 10 | CD_PRO_FAT | VARCHAR2 | Y | RI - Codigo do procedimento na PRO_FAT |
| 11 | DS_JUSTIFICATIVA_REVISAO | VARCHAR2 | Y | Campo descritivo para informac?o da justificativa para Recurso/Reapresentac?o da Despesa |

---

## DBAMV.TISS_ITGUIA_OP_SOL
> Estrutura dos Itens de OPME solicitados para a Guia de envio de SP/SADT.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Sequence desta tabela |
| 2 | ID_PAI | NUMBER | Y | Codigo do registro-pai |
| 3 | QT_SOLICITADA | VARCHAR2 | Y | Quantidade solicitada |
| 4 | NM_FABRICANTE_OP | VARCHAR2 | Y | Nome do Fabricante |
| 5 | VL_TOTAL | VARCHAR2 | Y | Valor do item |
| 6 | TP_TAB_FAT | VARCHAR2 | Y | Sigla da tabela utilizada |
| 7 | CD_PROCEDIMENTO | VARCHAR2 | Y | Codigo do procedimento de OPME solicitado |
| 8 | DS_PROCEDIMENTO | VARCHAR2 | Y | Descric?o do procedimento solicitado |
| 9 | CD_PRO_FAT | VARCHAR2 | Y | Codigo do procedimento na PRO_FAT |

---

## DBAMV.TISS_ITGUIA_OUT
> Estrutura dos Itens de Outras Despesas das Guias do TISS (cabecalho). Tipos de Guia: - SP - Guia de SP/SADT. - RI - Guia de Resumo de Internac?o.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Sequence desta tabela |
| 2 | ID_PAI | NUMBER | Y | Codigo do registro-pai |
| 3 | TP_TAB_FAT | VARCHAR2 | Y | Sigla da tabela utilizada |
| 4 | CD_PROCEDIMENTO | VARCHAR2 | Y | Codigo do procedimento realizado |
| 5 | DS_PROCEDIMENTO | VARCHAR2 | Y | Descric?o do procedimento realizado |
| 6 | TP_DESPESA | VARCHAR2 | Y | Tipo da Despesa |
| 7 | DT_REALIZADO | VARCHAR2 | Y | Data em que o procedimento foi realizado |
| 8 | HR_INICIO | VARCHAR2 | Y | Hora inicial de realizac?o do procedimento |
| 9 | HR_FIM | VARCHAR2 | Y | Hora final de realizac?o do procedimento |
| 10 | VL_PERCENTUAL_MULTIPLA | VARCHAR2 | Y | Percentual de reduc?o/acrescimo |
| 11 | QT_REALIZADA | VARCHAR2 | Y | Quantidade realizada |
| 12 | VL_UNITARIO | VARCHAR2 | Y | Valor unitario do item |
| 13 | VL_TOTAL | VARCHAR2 | Y | Valor total do item |
| 14 | QT_AUTORIZADA | VARCHAR2 | Y | Quantidade autorizada |
| 15 | CD_PRO_FAT | VARCHAR2 | Y | Codigo do Procedimento na PRO_FAT |
| 16 | DS_JUSTIFICATIVA_REVISAO | VARCHAR2 | Y | Campo descritivo para informac?o da justificativa para Recurso/Reapresentac?o da Despesa |
| 17 | CD_UNIDADE_MEDIDA | VARCHAR2 | Y | Unidade de Medida. |
| 18 | CD_REGISTRO_ANVISA | VARCHAR2 | Y | Registro ANVISA do material. |
| 19 | CD_CODIGO_FABRICANTE | VARCHAR2 | Y | Referencia do material no fabricante. |
| 20 | NR_AUTORIZACAO | VARCHAR2 | Y | N? autorizac?o de funcionamento da empresa. |
| 21 | SQ_ITEM | NUMBER | Y | Sequencial do item na guia (sequencialItem) |
| 22 | SQ_REF | NUMBER | Y | Item vinculado que originou a despesa (itemVinculado) |
| 23 | NR_PAGINA | NUMBER | Y | Paginação da guia |
| 24 | NR_LINHA | NUMBER | Y | Paginação/sequencia da guia |

---

## DBAMV.TISS_ITSOL_CANCELA_GUIA
> Tabela filha para solicitac?o de Cancelamento de Guias enviadas via XML do TISS.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Sequence desta tabela |
| 2 | ID_PAI | NUMBER | Y | Codigo do registro-pai |
| 3 | NR_REGISTRO_OPERADORA_ANS | VARCHAR2 | Y | Registro ANS |
| 4 | DT_EMISSAO | VARCHAR2 | Y | Data de Emiss?o da Guia |
| 5 | NR_GUIA | VARCHAR2 | Y | Numero da Guia no Hospital (prestador) |
| 6 | NR_GUIA_OPERADORA | VARCHAR2 | Y | Numero da Guia na Operadora (convenio) |
| 7 | CD_FONTE_PAGADORA | VARCHAR2 | Y | CNPJ da fonte pagadora(Convenio). |
| 8 | NR_PROTOCOLO_GUIA | VARCHAR2 | Y | Coluna necessária para novo fluxo de cancelamento da versão 4 do TISS |

---

## DBAMV.TISS_ITSOL_CID_GUIA
> Estrutura dos Disgnosticos Secundarios das Guias de Solicitac?o do TISS. Maximo de tres para cada guia de Solicitac?o de Internac?o.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Sequence dos itens da Guia (inicia em 01 para cada guia) |
| 2 | ID_PAI | NUMBER | N | Identificac?o do cabecalho da Guia (sequence da TISS_SOL_GUIA) |
| 3 | CD_CID | VARCHAR2 | Y | Solicitac?o: CID do diagnostico principal |
| 4 | TP_CID | VARCHAR2 | Y | Solicitac?o: Tipo do diagnostico principal |
| 5 | DS_CID | VARCHAR2 | Y | Solicitac?o: Descric?o do diagnostico principal |
| 6 | NM_XML | VARCHAR2 | Y | Nome que identifica o modelo XML a ser gerado |

---

## DBAMV.TISS_ITSOL_GUIA
> Estrutura dos Itens das Guias de Solicitac?o do TISS. Esta tabela serve tanto para itens da Guia de Solicitac?o de SP/SADT como para a Guia de Solicitac?o de Internac?o. A utilizac?o das colunas varia de acordo com cada Guia.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Sequence dos itens da Guia (inicia em 01 para cada guia) |
| 2 | ID_PAI | NUMBER | N | Identificac?o do cabecalho da Guia (sequence da TISS_SOL_GUIA) |
| 3 | TP_TAB_FAT | VARCHAR2 | Y | Sigla da tabela utilizada |
| 4 | CD_PROCEDIMENTO | VARCHAR2 | Y | Codigo do procedimento solicitado |
| 5 | DS_PROCEDIMENTO | VARCHAR2 | Y | Descric?o do procedimento solicitado (n?o obrigatorio) |
| 6 | QT_SOLICITADA | NUMBER | Y | Quantidade solicitada deste procedimento |
| 7 | QT_AUTORIZADA | NUMBER | Y | Quantidade autorizada pelo convenio |
| 8 | CD_PRO_FAT | VARCHAR2 | Y | Codigo do procedimento na PRO_FAT |
| 9 | SN_OPME | VARCHAR2 | N | Indica que o procedimento e de OPMEs |
| 10 | NM_FABRICANTE_OP | VARCHAR2 | Y | Nome do Fabricante da OPME solicitada (opcional) |
| 11 | VL_UNITARIO | NUMBER | Y | Valor unitario do Procedimento |
| 12 | NM_XML | VARCHAR2 | Y | Nome que identifica o modelo XML a ser gerado |
| 13 | DS_MOTIVO_NEGACAO | VARCHAR2 | Y | Motivos de Negac?o do Item da Guia |
| 14 | DS_OBSERVACAO | VARCHAR2 | Y | mOTIVO NEGACAO DA GLOSA |
| 15 | CD_ITORIGEM_SOL | NUMBER | Y | Codigo do Item do Movimento de Origem da do Item de Solicitacao |
| 16 | DT_PROVAVEL | VARCHAR2 | Y | Data provavel da admiss?o do paciente no hospital |
| 17 | QT_DOSES | VARCHAR2 | Y | Doses previstas do medicamento no tratamento quimioterapico. |
| 18 | TP_VIA_ADMINISTRACAO | VARCHAR2 | Y | Via de administrac?o do medicamento, conforme tabela de dominio n? 62. |
| 19 | NR_REGISTRO_ANVISA | VARCHAR2 | Y | Numero de registro do material na ANVISA |
| 20 | DS_CODIGO_REF_FABRICANTE | VARCHAR2 | Y | Codigo de referencia do material no fabricante |
| 21 | NR_AUTORIZACAO_FUNCIONAMENTO | VARCHAR2 | Y | Numero da autorizac?o de funcionamento da empresa da qual o material esta sendo comprado. |
| 22 | NR_FREQUENCIA | VARCHAR2 | Y | Quantidade de doses do medicamento a serem administradas no dia. |
| 23 | NR_ORDEM_OPCAO | VARCHAR2 | Y | Prioridade opcional da solicitac?o de OPME. |
| 24 | CD_UNIDADE_MEDIDA | VARCHAR2 | Y | Codigo da Unidade de Medida (tuss 60). |

---

## DBAMV.TISS_ITSOL_GUIA_TRAT_ANTERIOR
> Tabela de tratamento anteriores da solicitac?o de guias TISS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Identificador (sequencial). |
| 2 | ID_PAI | NUMBER | N | Identificador da tabela TISS_SOL_GUIA (PK). |
| 3 | TP_TRATAMENTO | VARCHAR2 | Y | Indica o tipo de tratamento, se Quimioterapia ou Radioterapia. |
| 4 | TP_HISTORICO | VARCHAR2 | Y | Tipo do Tratamento anterior (Cirurgia/Quimioterapia/Radioterapia). |
| 5 | DS_HISTORICO | VARCHAR2 | Y | Descric?o do tratamento anterior. |
| 6 | DT_HISTORICO | VARCHAR2 | Y | Data do tratamento anterior. |

---

## DBAMV.TISS_ITSOL_OP_GUIA
> Estrutura dos Itens de OPMEs das Guias de Solicitac?o do TISS. Esta tabela serve tanto para itens da Guia de Solicitac?o de SP/SADT como para a Guia de Solicitac?o de Internac?o.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Sequence dos itens da Guia (inicia em 01 para cada guia) |
| 2 | ID_PAI | NUMBER | N | Identificac?o do cabecalho da Guia (sequence da TISS_SOL_GUIA) |
| 3 | TP_TAB_FAT | VARCHAR2 | Y | Sigla da tabela utilizada |
| 4 | CD_PROCEDIMENTO | VARCHAR2 | Y | Codigo do procedimento solicitado |
| 5 | DS_PROCEDIMENTO | VARCHAR2 | Y | Descric?o do procedimento solicitado (n?o obrigatorio) |
| 6 | NM_FABRICANTE_OP | VARCHAR2 | Y | Nome do Fabricante da OPM solicitada (n?o obrigatorio) |
| 7 | QT_SOLICITADA | NUMBER | Y | Quantidade solicitada deste procedimento |
| 8 | QT_AUTORIZADA | NUMBER | Y | Quantidade autorizada pelo convenio |
| 9 | CD_PRO_FAT | VARCHAR2 | N | Codigo do procedimento na PRO_FAT |
| 10 | VL_UNITARIO | NUMBER | Y | Valor unitario do Procedimento |

---

## DBAMV.TISS_ITSOL_PROTOCOLO
> Tabela filha da Solicitac?o de Status de Protocolo.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Sequence desta tabela |
| 2 | ID_PAI | NUMBER | Y | Codigo do registro-pai |
| 3 | NR_PROTOCOLO | VARCHAR2 | Y | Numero do Protocolo do qual esta sendo solicitado o Status. |

---

## DBAMV.TISS_LOG
> Tabela para gravac?o do log das mensagens TISS.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_LOG_TISS | NUMBER | N | Codigo do log |
| 2 | DT_LOG | DATE | Y | Data e Hora do log |
| 3 | NM_USUARIO | VARCHAR2 | Y | Usuario do log |
| 4 | DS_XML_GERADO | BLOB | Y | Xml gerado pelo log |
| 5 | DS_SITUACAO | VARCHAR2 | Y | Situac?o do log |
| 6 | DS_ERRO | BLOB | Y | Descric?o do erro da Mensagem TISS |
| 7 | DS_STACK_TRACE | BLOB | Y | Pilha com o trace de erro da Mensagem TISS |
| 8 | NR_TENTATIVA_ENVIO | NUMBER | Y | Numero de tentativas de envio da Mensagem TISS |
| 9 | DT_ENVIO | DATE | Y | Data do envio da Mensagem TISS |
| 10 | RETORNO | BLOB | Y | Retorno da transmiss?o Mensagem TISS |
| 11 | ID_MENSAGEM | NUMBER | Y | Identificador da Mensagem TISS |

---

## DBAMV.TISS_LOTE
> Estrutura da tabela de Lote da Mensagem TISS.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Identificac?o da Transac?o |
| 2 | ID_PAI | NUMBER | N | Identificac?o do Registro Pai na tabela TISS_MENSAGEM |
| 3 | NR_LOTE | VARCHAR2 | Y | Numero do Lote |
| 4 | SN_LOTE_REAPRESENTADO | VARCHAR2 | N | Sinaliza se houve reapresentação de contas para outro lote. |
| 5 | TP_ENVIO | VARCHAR2 | N | Sinaliza se o lote é uma Normal/Reapresentação |

---

## DBAMV.TISS_LOTE_GUIA
> Tabela de Ligac?o entre o Lote e as Guias, para correta separac?o dos blocos   do XMl gerado por tipos de Guia.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Sequence desta tabela |
| 2 | ID_PAI | NUMBER | N | Codigo do registro-pai |
| 3 | NR_LOTE | VARCHAR2 | Y | Numero do lote |
| 4 | NR_REGISTRO_ANS | VARCHAR2 | Y | Numero Registro ANS |
| 5 | NR_GUIA_REC_GLOSA_PREST | VARCHAR2 | Y | Numero da guia recurso de glosa Prestador |
| 6 | NM_OPERADORA | VARCHAR2 | Y | Nome Operadora |
| 7 | TP_OBJETO_RECURSO | VARCHAR2 | Y | Obejeto do Recurso |
| 8 | NR_GUIA_REC_GLOSA_OPER | VARCHAR2 | Y | Numero da Guia de Recurso de Glosas Atribuido pela Operadora |
| 9 | CD_OPERADORA_EXE | VARCHAR2 | Y | Codigo Operadora exe |
| 10 | CD_CPF_EXE | VARCHAR2 | Y | Codigo cpf exe |
| 11 | CD_CGC_EXE | VARCHAR2 | Y | Codigo cgc exe |
| 12 | NM_PRESTADOR_EXE | VARCHAR2 | Y | Numero Prestador exe |
| 13 | DT_RECURSO | VARCHAR2 | Y | Data Recurso |
| 14 | VL_TOTAL_RECURSADO | VARCHAR2 | Y | Valor total Recursado |
| 15 | NR_PROTOCOLO | VARCHAR2 | Y | Numero do Protocolo |

---

## DBAMV.TISS_MENSAGEM
> Estrutura do Cabecalho da Mensagem TISS.  Codigos de Origem e Destino da Transac?o:   No envio..: Origem  = Codigo do Prestador na Operadora               Destino = Registro ANS da Operadora   No retorno: Origem  = Registro ANS da Operadora               Destino = Codigo do Prestador na Operadora

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Identificac?o da Transac?o |
| 2 | TP_TRANSACAO | VARCHAR2 | N | Tipo da Transac?o |
| 3 | DT_TRANSACAO | VARCHAR2 | N | Data de envio da Mensagem TISS (dd/mm/yyyy) |
| 4 | HR_TRANSACAO | VARCHAR2 | N | Hora de envio da Mensagem TISS (hh24:mm) |
| 5 | CD_SEQ_TRANSACAO | VARCHAR2 | Y | Numero unico de identificac?o da Mensagem enviada (sequence) |
| 6 | CD_ORIGEM | VARCHAR2 | Y | Codigo de Origem da Transac?o |
| 7 | CD_DESTINO | VARCHAR2 | Y | Registro de Destino da Transac?o |
| 8 | NR_REGISTRO_ANS_ORIGEM | VARCHAR2 | Y | Registro ANS de Destino da Transac?o |
| 9 | NR_REGISTRO_ANS_DESTINO | VARCHAR2 | Y | Registro ANS de Destino da Transac?o |
| 10 | CD_VERSAO | VARCHAR2 | Y | Vers?o do padr?o TISS utilizada |
| 11 | DT_GEROU_XML | DATE | Y | Data em que foi gerado o arquivo XML, para controle |
| 12 | DT_RETORNO | DATE | Y | Retorno: Data de retorno |
| 13 | NR_PROTOCOLO_RETORNO | VARCHAR2 | Y | Retorno: Numero do protocolo |
| 14 | CD_STATUS_PROTOCOLO | VARCHAR2 | Y | Retorno: Status do protocolo |
| 15 | DS_MSG_ERRO | VARCHAR2 | Y | Retorno: Mensagem de erro |
| 16 | NR_LOTE | VARCHAR2 | Y | Retorno: Numero do Lote. |
| 17 | NM_XML | VARCHAR2 | Y | Nome que identifica o modelo XML a ser gerado |
| 18 | NR_DOCUMENTO | VARCHAR2 | Y | Numero do Documento referente ao conteudo da coluna NM_XML. |
| 19 | CD_CONVENIO | NUMBER | Y | Codigo do Convenio |
| 20 | TP_MENSAGEM_TISS | VARCHAR2 | Y | Tipo da Mensagem TISS |
| 21 | CD_MOTIVO_GLOSA | VARCHAR2 | Y | Codigo da Glosa na falha do envio |
| 22 | DS_MOTIVO_GLOSA | VARCHAR2 | Y | Descric?o da Glosa na falha do envio |
| 23 | ID_MENSAGEM_ENVIO | NUMBER | Y | Identificador da Mensagem TISS de Envio |
| 24 | CD_CGC_ORIGEM | VARCHAR2 | Y | CGC do prestador de origem (hospital) |
| 25 | CD_CPF_ORIGEM | VARCHAR2 | Y | CPF do prestador de origem (hospital) |
| 26 | CD_CGC_DESTINO | VARCHAR2 | Y | CGC da operadora de destino (convenio) |
| 27 | CD_CPF_DESTINO | VARCHAR2 | Y | CPF da operadora de destino (convenio) |
| 28 | DS_MOTIVO_CANCELAMENTO | VARCHAR2 | Y | Motivo do Cancelamento |
| 29 | CD_USUARIO_CANCELOU | VARCHAR2 | Y | Usuario que cancelou |
| 30 | DT_CANCELAMENTO | DATE | Y | Data do cancelamento |
| 31 | DT_ENVIOU_XML | DATE | Y | Data em que o arquivo foi enviado com sucesso |
| 32 | CD_STATUS | VARCHAR2 | Y | Status: AP-aguardando processamento; PE-processado com erro; PS-processado com sucesso; ES-enviad... |
| 33 | ID_CANCELAMENTO | NUMBER | Y | ID da tiss_mensagem que esta sendo cancelada |
| 34 | DS_HASH | VARCHAR2 | Y | Hash da Mensagem TISS |
| 35 | ID_MENSAGEM_ORIGEM | NUMBER | Y | Identificador da Mensagem TISS de origem |
| 36 | SN_RETORNO | VARCHAR2 | Y | Flag que indica se a Mensagem TISS e uma mensagem de retorno |
| 37 | NM_APLICATIVO | VARCHAR2 | Y | Nome do Aplicativo que gerou o XML |
| 38 | DS_VERSAO_APLICATIVO | VARCHAR2 | Y | Vesao do Aplicativo que gerou o XML |
| 39 | NM_FABRICANTE_APLICATIVO | VARCHAR2 | Y | Fabricante do Aplicativo que gerou o XML |
| 40 | CD_OPERADORA_PRESTADOR_ORIGEM | VARCHAR2 | Y | Codigo do prestador na operadora (envio) |
| 41 | CD_OPERADORA_PRESTADOR_DESTINO | VARCHAR2 | Y | Codigo do prestador na operadora (retorno) |

---

## DBAMV.TISS_NR_GUIA
> Tabela do TISS - temporaria - que vai guardar os numeros gerados de guias de envio.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ATENDIMENTO | NUMBER | Y | Codigo do atendimento |
| 2 | CD_REG_FAT | NUMBER | Y | Numero da conta hospitalar |
| 3 | CD_REG_AMB | NUMBER | Y | Numero da conta ambulatorial |
| 4 | TP_GUIA | VARCHAR2 | Y | Tipo d aguia do TISS |
| 5 | CD_PRO_FAT | VARCHAR2 | Y | Codigo do procedimento |
| 6 | CD_PRESTADOR | NUMBER | Y | Codigo do prestador |
| 7 | NR_GUIA | VARCHAR2 | Y | Numero da guia do TISS |
| 8 | DT_LANCAMENTO | DATE | Y | Data de Lancamento do item na conta |
| 9 | CD_MULTI_EMPRESA | NUMBER | Y | Codigo da multi-empresa |
| 10 | NR_FOLHA | NUMBER | Y | Numero da folha na guia gerada |
| 11 | NR_LINHA | NUMBER | Y | Numero da linha de emiss?o do item |
| 12 | TP_PAGAMENTO | VARCHAR2 | Y | Tipo de pagamento do item na conta |
| 13 | VL_PERCENTUAL_MULTIPLA | NUMBER | Y | Valor do percentual do item da conta do faturamento |
| 14 | CD_CODIGO_CONTRATADO | VARCHAR2 | Y | Codigo do contratado solicitante |
| 15 | SN_HORARIO_ESPECIAL | VARCHAR2 | Y | Se o procedimento foi realizado em Horario Especial |
| 16 | CD_ATI_MED | VARCHAR2 | Y | Codigo da atividade medica - grau de participac?o do prestador |
| 17 | NR_GUIA_PRINCIPAL | VARCHAR2 | Y | Numero da Guia Principal |

---

## DBAMV.TISS_PROC_EQU
> Tabela necessaria na estrutura de Envio de Lote da Mensagem TISS.   Esta tabela faz a ligac?o entre a TISS_GUIA e as tabelas TISS_ITGUIA_EQU e TISS_ITGUIA.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Identificac?o da Transac?o |
| 2 | ID_PAI | NUMBER | N | Identificac?o do Registro Pai |

---

## DBAMV.TISS_PROTOCOLO
> Tabela de Protocolos do TISS, para Envio de Solicitac?o de Status.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Sequence desta tabela |
| 2 | ID_PAI | NUMBER | Y | Codigo do registro-pai |
| 3 | NM_XML | VARCHAR2 | N | Nome que identifica o modelo XML a ser gerado |
| 4 | NR_PROTOCOLO | NUMBER | Y | Numero do Protocolo |
| 5 | CD_PRESTADOR_NA_OPERADORA | VARCHAR2 | N | Codigo do hospital na Operadora (origem) |
| 6 | NR_REGISTRO_OPERADORA_ANS | NUMBER | N | Registro da Operadora na ANS (destino) |
| 7 | NR_CGC_CPF | VARCHAR2 | Y | CNPJ do Prestador |
| 8 | NM_PRESTADOR | VARCHAR2 | Y | nome do prestador |
| 9 | NR_CNES | VARCHAR2 | Y | Codigo CNES do prestador |
| 10 | DT_SOLICITACAO | VARCHAR2 | Y | Data da Solicitac?o do Status do Protocolo |
| 11 | CD_SEQ_TRANSACAO | NUMBER | Y | Numero de identificac?o da Mensagem enviada |
| 12 | SN_TRATOU_RETORNO | VARCHAR2 | N | Indica que este retorno ja foi processado. |

---

## DBAMV.TISS_RECIBO_COMUNICACAO_BENFC
> Tabela base da Importacao de XML (padrao TISS) referente ao recibo da Comunicacao de Evento de Beneficiario vindo da Operadora

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Identificac?o da Transac?o |
| 2 | ID_PAI | NUMBER | Y | Identificac?o da Transac?o pai |
| 3 | DS_OBSERVACAO | VARCHAR2 | Y | Descricao detalhada da mensagem de erro da Operadora |
| 4 | DH_TRANSACAO | DATE | N | Data/Hora real desta transacao |

---

## DBAMV.TISS_RETORNO_CANCELA_GUIA
> Tabela do retorno do cancelamento de guias.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Sequence desta tabela |
| 2 | ID_PAI | NUMBER | N | Codigo do registro-pai |
| 3 | NR_REGISTRO_OPERADORA_ANS | VARCHAR2 | Y | Numero do registro da operadora na ANS |
| 4 | NM_OPERADORA | VARCHAR2 | Y | Nome da operadora |
| 5 | CD_CGC | VARCHAR2 | Y | CNPJ da operadora |
| 6 | CD_OPER_NAO_REGULADA | VARCHAR2 | Y | CNPJ da operadora n?o regulada pela ANS. |
| 7 | NM_OPER_NAO_REGULADA | VARCHAR2 | Y | Nome da operadora n?o regulada pela ANS. |
| 8 | CD_CPF_CONTRATADO | VARCHAR2 | Y | Armazena o numero do protocolo de envio de lote |
| 9 | CD_PRESTADOR_CONTRATADO | VARCHAR2 | Y | Armazena o numero do protocolo de envio de lote |

---

## DBAMV.TISS_RETORNO_CANCELA_ITGUIA
> Tabela do retorno do cancelamento de guias.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Sequence desta tabela |
| 2 | ID_PAI | NUMBER | N | Codigo do registro-pai |
| 3 | NR_REGISTRO_OPERADORA_ANS | VARCHAR2 | Y | Numero do registro da operadora na ANS |
| 4 | DT_EMISSAO | VARCHAR2 | Y | Data de emiss?o da guia |
| 5 | NR_GUIA | VARCHAR2 | Y | Numero da guia do prestador |
| 6 | NR_GUIA_OPERADORA | VARCHAR2 | Y | Numero da guia da operadora |
| 7 | DS_STATUS_CANCELAMENTO | VARCHAR2 | Y | Descric?o do status do cancelamento |
| 8 | DS_OBSERVACAO | VARCHAR2 | Y | Descric?o da observac?o |
| 9 | CD_FONTE_PAGADORA | VARCHAR2 | Y | CNPJ da fonte pagadora(Convenio). |
| 10 | TP_GUIA | VARCHAR2 | Y | Armazena o tipo de guia |
| 11 | NR_LOTE | VARCHAR2 | Y | Numeração do Lote que foi cancelado pela operadora. |
| 12 | NR_PROTOCOLO | VARCHAR2 | Y | Numeração do Protocolo gerado pela operadora. |

---

## DBAMV.TISS_RETORNO_DEMON_CONTA
> Tabela principal de Retorno Demonstrativo Conta Medicas (Retorno TISS).

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Sequence desta tabela |
| 2 | ID_PAI | NUMBER | N | Codigo do registro-pai |
| 3 | NR_REGISTRO_ANS | VARCHAR2 | Y | Registro ANS da operadora (convenio) |
| 4 | DS_OPERADORA | VARCHAR2 | Y | Nome da Operadora (convenio) |
| 5 | CD_CGC_OPERADORA | VARCHAR2 | Y | CGC da Operadora (convenio) |
| 6 | NR_DEMONSTRATIVO | VARCHAR2 | Y | Numero do Demonstrativo |
| 7 | DT_EMISSAO | VARCHAR2 | Y | Data de Emissao do Demonstrativo |
| 8 | CD_CGC_PRESTADOR | VARCHAR2 | Y | CGC do Prestador |
| 9 | CD_CPF_PRESTADOR | VARCHAR2 | Y | CPF do Prestador |
| 10 | CD_OPERADORA_PRESTADOR | VARCHAR2 | Y | Codigo do Prestador na Operadora |
| 11 | NM_PRESTADOR | VARCHAR2 | Y | Nome do Prestador |
| 12 | CD_TIPO_LOGRADOURO | VARCHAR2 | Y | Endereco: Tipo do logradouro |
| 13 | DS_ENDERECO | VARCHAR2 | Y | Endereco: Logradouro |
| 14 | NR_ENDERECO | VARCHAR2 | Y | Endereco: Numero do logradouro |
| 15 | DS_COMPLEMENTO | VARCHAR2 | Y | Endereco: Complemento |
| 16 | CD_IBGE | VARCHAR2 | Y | Endereco: Codigo IBGE do Municipio |
| 17 | NM_CIDADE | VARCHAR2 | Y | Endereco: Nome do Municipio |
| 18 | CD_UF | VARCHAR2 | Y | Endereco: UF |
| 19 | NR_CEP | VARCHAR2 | Y | Endereco: CEP |
| 20 | CD_CNES | VARCHAR2 | Y | Codigo CNES do prestador |
| 21 | NR_FATURA | VARCHAR2 | Y | Numero da Fatura na Operadora |
| 22 | VL_PROCESSADO_FATURA | VARCHAR2 | Y | Valor Processado da Fatura na Operadora |
| 23 | VL_LIBERADO_FATURA | VARCHAR2 | Y | Valor Liberado da Fatura na Operadora sem impostos |
| 24 | VL_GLOSA_FATURA | VARCHAR2 | Y | Valor da possivel Glosa da Fatura na Operadora |
| 25 | VL_PROCESSADO | VARCHAR2 | Y | Valor Processado do Demonstrativo da Fatura na Operadora |
| 26 | VL_LIBERADO | VARCHAR2 | Y | Valor Liberado do Demonstrativo da Fatura na Operadora |
| 27 | VL_GLOSA | VARCHAR2 | Y | Valor da possivel Glosa do Demonstrativo da Fatura na Operadora |
| 28 | CD_CONVENIO | NUMBER | Y | Codigo do convenio no cadastro da MV |
| 29 | DT_PROCESSADO | DATE | Y | Data de Realizac?o do Processamento da Baixa |
| 30 | CD_USUARIO_PROCESSOU | VARCHAR2 | Y | Usuario que Realizou o Processamento da Baixa |
| 31 | CD_OPER_NAO_REGULADA | VARCHAR2 | Y | CNPJ da operadora n?o regulada pela ANS. |
| 32 | NM_OPER_NAO_REGULADA | VARCHAR2 | Y | Nome da operadora n?o regulada pela ANS. |
| 33 | VL_INFORMADO_FATURA | VARCHAR2 | Y | Valor informado na fatura |
| 34 | DS_OBSERVACAO | VARCHAR2 | Y | Campo utilizado para adicionar quaisquer observações sobre o demonstrativo de analise conta. |

---

## DBAMV.TISS_RETORNO_DEMON_CONTA_GUIA
> Tabela de Retorno Demonst. Ctas. Medicas Guia (Retorno TISS).

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Sequence desta tabela |
| 2 | ID_PAI | NUMBER | N | Codigo do registro-pai |
| 3 | NR_GUIA | VARCHAR2 | Y | Numero da guia do prestador (hospital) |
| 4 | NR_GUIA_OPERADORA | VARCHAR2 | Y | Numero da guia da operadora (convenio) |
| 5 | NR_CARTEIRA | VARCHAR2 | Y | Numero da Carteira do paciente |
| 6 | NM_PACIENTE | VARCHAR2 | Y | Nome do Paciente |
| 7 | DS_CON_PLA | VARCHAR2 | Y | Nome do Plano |
| 8 | DT_VALIDADE_CARTEIRA | VARCHAR2 | Y | Data de validade da Carteira |
| 9 | NR_CNS | VARCHAR2 | Y | Numero do CNS (cart?o nacional de saude) |
| 10 | NR_BENEFICIARIO | VARCHAR2 | Y | Identificac?o do Beneficiario |
| 11 | DT_REALIZACAO | VARCHAR2 | Y | Data de realizac?o |
| 12 | VL_PROCESSADO_GUIA | VARCHAR2 | Y | Valor Processado da Guia |
| 13 | VL_LIBERADO_GUIA | VARCHAR2 | Y | Valor Liberado da Guia sem impostos |
| 14 | VL_GLOSA_GUIA | VARCHAR2 | Y | Valor possivel Glosado da Guia |
| 15 | CD_REMESSA | NUMBER | Y | Codigo da remessa |
| 16 | CD_ATENDIMENTO | NUMBER | Y | Codigo do Atendimento |
| 17 | CD_REG_FAT | NUMBER | Y | Codigo da Conta Hospitalar |
| 18 | CD_REG_AMB | NUMBER | Y | Codigo da Conta Ambulatorial |
| 19 | CD_CONVENIO | NUMBER | Y | Codigo do Convenio no Cadastro da MV |
| 20 | CD_GUIA | NUMBER | Y | Codigo da Guia no Cadastro da MV |
| 21 | DS_OBSERVACAO_IMPORTACAO | VARCHAR2 | Y | Observac?es de ocorrencias na importac?o do XML |
| 22 | ID_GUIA_ENVIO | NUMBER | Y | ID da guia de envio relacionada a esta de retorno |
| 23 | NR_SENHA | VARCHAR2 | Y | nr_senha |
| 24 | DT_INICIO_FAT | VARCHAR2 | Y | dt_inicio_fat |
| 25 | HR_INICIO_FAT | VARCHAR2 | Y | hr_inicio_fat |
| 26 | DT_FIM_FAT | VARCHAR2 | Y | dt_fim_fat |
| 27 | HR_FIM_FAT | VARCHAR2 | Y | hr_fim_fat |
| 28 | VL_INFORMADO_GUIA | VARCHAR2 | Y | vl_informado_guia |
| 29 | CD_STATUS_GUIA | VARCHAR2 | Y | Codigo situac?o glosa |

---

## DBAMV.TISS_RETORNO_DEMON_CONTA_LOTE
> Tabela de Retorno Demonst. Ctas. Medicas Lote (Retorno TISS).

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Sequence desta tabela |
| 2 | ID_PAI | NUMBER | N | Codigo do registro-pai |
| 3 | NR_LOTE | VARCHAR2 | Y | Numero do Lote |
| 4 | DT_ENVIO_LOTE | VARCHAR2 | Y | Data de Envio do Lote |
| 5 | NR_PROTOCOLO | VARCHAR2 | Y | Numero do Protocolo de Recebimento |
| 6 | VL_PROTOCOLO | VARCHAR2 | Y | Valor do Protocolo de Recebimento |
| 7 | VL_GLOSA | VARCHAR2 | Y | Valor da possivel Glosa do Protocolo |
| 8 | ID_MENSAGEM_ENVIO | NUMBER | Y | Codigo ID da tiss_mensagem de envio de lote |
| 9 | DT_PROCESSADO | DATE | Y | Data de Realizac?o do Processamento da Baixa do Lote |
| 10 | CD_USUARIO_PROCESSOU | VARCHAR2 | Y | Usuario que Realizou o Processamento da Baixa do Lote |
| 11 | DS_OBSERVACAO_IMPORTACAO | VARCHAR2 | Y | Observac?es de ocorrencias na importac?o do XML |
| 12 | VL_INFORMADO_PROTOCOLO | VARCHAR2 | Y | vl_informado_protocolo |
| 13 | VL_PROCESSADO_PROTOCOLO | VARCHAR2 | Y | vl_processado_protocolo |
| 14 | CD_STATUS_PROTOCOLO | VARCHAR2 | Y | cd_status_protocolo |

---

## DBAMV.TISS_RETORNO_DEMON_CONTA_PRC_G
> Tabela de Retorno Demonst. Ctas. Medicas Proced. Glosas (Retorno TISS).

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Sequence desta tabela |
| 2 | ID_PAI | NUMBER | N | Codigo do registro-pai |
| 3 | CD_MOTIVO_GLOSA | VARCHAR2 | Y | Motivo da possivel Glosa |
| 4 | DS_MOTIVO_GLOSA | VARCHAR2 | Y | Descric?o da Glosa |
| 5 | VL_GLOSA | VARCHAR2 | Y | vl_glosa |
| 6 | CD_MOT_GLOSA | NUMBER | Y | Código de Motivo de Glosa MV |

---

## DBAMV.TISS_RETORNO_DEMON_CONTA_PROC
> Tabela de Retorno Demonst. Ctas. Medicas Procedimentos (Retorno TISS).

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Sequence desta tabela |
| 2 | ID_PAI | NUMBER | N | Codigo do registro-pai |
| 3 | TP_TAB_FAT | VARCHAR2 | Y | Tipo da Tabela do Procedimento |
| 4 | CD_PROCEDIMENTO | VARCHAR2 | Y | Codigo do Procedimento |
| 5 | DS_PROCEDIMENTO | VARCHAR2 | Y | Nome do Procedimento |
| 6 | QT_EXECUTADA | VARCHAR2 | Y | Quantidade executada |
| 7 | VL_PROCESSADO | VARCHAR2 | Y | Valor Processado do item |
| 8 | VL_LIBERADO | VARCHAR2 | Y | Valor Liberado do item |
| 9 | VL_GLOSADO | VARCHAR2 | Y | Valor possivel Glosado do item |
| 10 | CD_ATI_MED | VARCHAR2 | Y | Grau de Participac?o (atividade medica) |
| 11 | CD_PRO_FAT | VARCHAR2 | Y | Codigo do procedimento na PRO_FAT no Cadastro da MV |
| 12 | ID_IT_ENVIO | NUMBER | Y | Identificador que relaciona este lancamento ao item da Guias Tiss gerado para Envio. |
| 13 | VL_LIBERADO_CONC | VARCHAR2 | Y | Valor Liberado do item conciliado |
| 14 | VL_PROCESSADO_CONC | VARCHAR2 | Y | Valor Processado do item conciliado |
| 15 | VL_GLOSADO_CONC | VARCHAR2 | Y | Valor Glosado do item conciliado |
| 16 | DS_OBSERVACAO_IMPORTACAO | VARCHAR2 | Y | Observac?es de ocorrencias na importac?o do XML |
| 17 | DT_REALIZACAO | VARCHAR2 | Y | DT_REALIZACAO |
| 18 | VL_INFORMADO | VARCHAR2 | Y | VL_INFORMADO |
| 19 | SQ_ITEM | NUMBER | Y | Sequencial do item na guia (sequencialItem) |

---

## DBAMV.TISS_RETORNO_DEMON_CTA_GLOSA_G
> Tabela de Retorno Demonst. Ctas. Medicas Glosa Guias (Retorno TISS).

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Sequence desta tabela |
| 2 | ID_PAI | NUMBER | N | Codigo do registro-pai |
| 3 | CD_MOTIVO_GLOSA | VARCHAR2 | Y | Motivo da possivel Glosa |
| 4 | DS_MOTIVO_GLOSA | VARCHAR2 | Y | Descric?o da Glosa da Guia |

---

## DBAMV.TISS_RETORNO_DEMON_CTA_LOTE_G
> Tabela de Retorno Demonst. Ctas. Medicas Lote Glosa (Retorno TISS).

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Sequence desta tabela |
| 2 | ID_PAI | NUMBER | N | Codigo do registro-pai |
| 3 | CD_MOTIVO_GLOSA | VARCHAR2 | Y | Motivo da possivel Glosa do Protocolo |
| 4 | DS_MOTIVO_GLOSA | VARCHAR2 | Y | Descricao Detalhada da Glosa |

---

## DBAMV.TISS_RETORNO_DEMON_PAG
> Tabela principal de Retorno Demonstrativo Pagamento (Retorno TISS).

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Sequence desta tabela |
| 2 | ID_PAI | NUMBER | N | Codigo do registro-pai |
| 3 | NR_DEMONSTRATIVO | VARCHAR2 | Y | Numero do Demonstrativo |
| 4 | DT_EMISSAO | VARCHAR2 | Y | Data de Emissao do Demonstrativo |
| 5 | NR_REGISTRO_ANS | VARCHAR2 | Y | Registro ANS da operadora (convenio) |
| 6 | DS_OPERADORA | VARCHAR2 | Y | Nome da Operadora (convenio) |
| 7 | CD_CGC_OPERADORA | VARCHAR2 | Y | CGC da Operadora (convenio) |
| 8 | CD_CGC_PRESTADOR | VARCHAR2 | Y | CGC do Prestador |
| 9 | CD_CPF_PRESTADOR | VARCHAR2 | Y | CPF do Prestador |
| 10 | CD_OPERADORA_PRESTADOR | VARCHAR2 | Y | Codigo do Prestador na Operadora |
| 11 | NM_PRESTADOR | VARCHAR2 | Y | Nome do Prestador |
| 12 | CD_TIPO_LOGRADOURO | VARCHAR2 | Y | Endereco: Tipo do logradouro |
| 13 | DS_ENDERECO | VARCHAR2 | Y | Endereco: Logradouro |
| 14 | NR_ENDERECO | VARCHAR2 | Y | Endereco: Numero do logradouro |
| 15 | DS_COMPLEMENTO | VARCHAR2 | Y | Endereco: Complemento |
| 16 | CD_IBGE | VARCHAR2 | Y | Endereco: Codigo IBGE do Municipio |
| 17 | NM_CIDADE | VARCHAR2 | Y | Endereco: Nome do Municipio |
| 18 | CD_UF | VARCHAR2 | Y | Endereco: UF |
| 19 | NR_CEP | VARCHAR2 | Y | Endereco: CEP |
| 20 | CD_CNES | VARCHAR2 | Y | Codigo CNES |
| 21 | DT_PAGAMENTO | VARCHAR2 | Y | Data de Previsao de Pagamento |
| 22 | TP_PAGAMENTO | VARCHAR2 | Y | Forma de Pagamento (1-C/C) (2-Carteira) (3-Boleto Bancario) |
| 23 | CD_BANCO | VARCHAR2 | Y | Codigo do Banco |
| 24 | CD_AGENCIA | VARCHAR2 | Y | Codigo da Agencia Bancaria |
| 25 | NR_CONTA | VARCHAR2 | Y | Numero da Conta Corrente |
| 26 | VL_TOTAL | VARCHAR2 | Y | Valor Total Liberado - Valor Total Glosa sem considerar |
| 27 | VL_TOT_INFORMADO | VARCHAR2 | Y | Valor Total Informado |
| 28 | VL_TOT_PROCESSADO | VARCHAR2 | Y | Valor Total Processado |
| 29 | VL_TOT_LIBERADO | VARCHAR2 | Y | Valor Total Liberado |
| 30 | VL_TOT_GLOSA | VARCHAR2 | Y | Valor Total da possivel Glosa |
| 31 | VL_FINAL_LIBERADO | VARCHAR2 | Y | Valor Final do Demonstrativo. (Vl Total - Desc/Acres) |
| 32 | CD_CONVENIO | NUMBER | Y | Codigo do convenio no cadastro da MV |
| 33 | DT_PROCESSADO | DATE | Y | Data de Realizac?o do Processamento da Baixa |
| 34 | CD_USUARIO_PROCESSOU | VARCHAR2 | Y | Usuario que Realizou o Processamento da Baixa |
| 35 | NR_CONTA_CH | VARCHAR2 | Y | Numero da Conta Corrente/Cheque (se forma de pagamento C/C) |
| 36 | NR_CHEQUE | VARCHAR2 | Y | Numero do Cheque (se forma de pagamento C/C) |
| 37 | CD_OPER_NAO_REGULADA | VARCHAR2 | Y | CNPJ da operadora n?o regulada pela ANS. |
| 38 | NM_OPER_NAO_REGULADA | VARCHAR2 | Y | Nome da operadora n?o regulada pela ANS. |
| 39 | DS_OBSERVACAO | VARCHAR2 | Y | Campo observac?o |
| 40 | VL_GLOSA_BRUTO | VARCHAR2 | Y | VL_GLOSA_BRUTO |
| 41 | VL_INFORMADO_BRUTO | VARCHAR2 | Y | VL_INFORMADO_BRUTO |
| 42 | VL_LIBERADO_BRUTO | VARCHAR2 | Y | VL_LIBERADO_BRUTO |
| 43 | VL_LIBERADO_DEMONSTRATIVO | VARCHAR2 | Y | VL_LIBERADO_DEMONSTRATIVO |
| 44 | VL_PROCESSADO_BRUTO | VARCHAR2 | Y | VL_PROCESSADO_BRUTO |
| 45 | VL_TOT_CREDITO_DEMOSTRATIVO | VARCHAR2 | Y | VL_TOT_CREDITO_DEMOSTRATIVO |
| 46 | VL_TOT_DEBITO_DEMONSTRATIVO | VARCHAR2 | Y | VL_TOT_DEBITO_DEMONSTRATIVO |

---

## DBAMV.TISS_RETORNO_DEMON_PAG_DA
> Tabela de Retorno Demonstrativo Pagamento Desc/Acres (Retorno TISS).

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Sequence desta tabela |
| 2 | ID_PAI | NUMBER | N | Codigo do registro-pai |
| 3 | VL_DESC_ACRES | VARCHAR2 | Y | Valor dos possiveis descontos e acrescimo |
| 4 | DS_DESC_ACRES | VARCHAR2 | Y | Descricao dos possiveis descontos e acrescimo |
| 5 | CD_DESC_ACRES | NUMBER | Y | Codigo dos possiveis descontos e/ou acrescimos associado ao MV |
| 6 | TP_INDICADOR | VARCHAR2 | Y | tp_indicador |
| 7 | TP_DEBITO_CREDITO | VARCHAR2 | Y | tp_debito_credito |
| 8 | CD_DETALHAMENTO | NUMBER | Y | cd_detalhamento |

---

## DBAMV.TISS_RETORNO_DEMON_PAG_DT
> Tabela de demostrativo de retorno de pagamento por data

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | SP RI HI - Sequence desta tabela |
| 2 | ID_PAI | NUMBER | Y | SP RI HI - Codigo do registro-pai |
| 3 | DT_PAGAMENTO | VARCHAR2 | Y | Data do Pagamento |
| 4 | TP_FORMA_PAGAMENTO | VARCHAR2 | Y | Forma do pagamento |
| 5 | DS_BANCO | VARCHAR2 | Y | Descric?o do banco |
| 6 | DS_AGENCIA | VARCHAR2 | Y | Descric?o da Agencia |
| 7 | NR_CONTA_CHEQUE | VARCHAR2 | Y | Numero da Conta Corrente |
| 8 | VL_TOT_INF_POR_DATA | VARCHAR2 | Y | Valor total informado por data |
| 9 | VL_TOT_LIB_POR_DATA | VARCHAR2 | Y | Valor total liberado por data |
| 10 | VL_TOT_GLO_POR_DATA | VARCHAR2 | Y | Valor total de glosa por data |
| 11 | VL_TOT_DEB_POR_DATA | VARCHAR2 | Y | Valor total do debito por data |
| 12 | VL_TOT_CRE_POR_DATA | VARCHAR2 | Y | Valor total do credito por data |
| 13 | VL_LIQ_POR_DATA | VARCHAR2 | Y | Valor liquido por fata |
| 14 | VL_TOT_PROC_POR_DATA | VARCHAR2 | Y | Valor total processado por data |

---

## DBAMV.TISS_RETORNO_DEMON_PAG_DT_DA
> Tabela de retorno do demonstrativo de pagamento por data (DA)

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | SP RI HI - Sequence desta tabela |
| 2 | ID_PAI | NUMBER | Y | SP RI HI - Codigo do registro-pai |
| 3 | TP_INDICADOR | VARCHAR2 | Y | Tipo do indicador |
| 4 | TP_DEBITO_CREDITO | VARCHAR2 | Y | Tipo Debito ou Credito |
| 5 | DS_DB_CR | VARCHAR2 | Y | Descric?o do Debito ou Credito |
| 6 | VL_DB_CR | VARCHAR2 | Y | Valor do Debito ou Credito |
| 7 | CD_DESC_ACRES | VARCHAR2 | Y | Descric?o do Acrescimo |
| 8 | CD_DETALHAMENTO | NUMBER | Y | Codigo do detalhamento |

---

## DBAMV.TISS_RETORNO_DEMON_PAG_LOTE
> Tabela criada para guardar informações dos dados da tag guiasDoLote criada na versão TISS 4

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Sequence da tabela |
| 2 | ID_PAI | NUMBER | N | Id da tabela (tiss_retorno_demon_pag_resumo) que originou registro na tiss_retorno_demon_pag_lote |
| 3 | NR_GUIA_PRESTADOR | VARCHAR2 | Y | Número identificador da guia a que se refere o pagamento. |
| 4 | NR_GUIA_OPERADORA | VARCHAR2 | Y | Número atribuído pela operadora que identifica a guia a que se refere o pagamento |
| 5 | DS_SENHA | VARCHAR2 | Y | Senha de autorização emitida pela operadora |
| 6 | TP_PAGAMENTO | VARCHAR2 | Y | Código do tipo de pagamento, conforme tabela de domínio nº 78 |
| 7 | VL_PROCESSADO_GUIA | VARCHAR2 | Y | Valor da guia utilizado como base pela operadora para o processamento do pagamento a ser efetuado |
| 8 | VL_LIBERADO_GUIA | VARCHAR2 | Y | Valor da guia previsto para pagamento ao prestador. Corresponde ao valor informado menos o valor ... |
| 9 | VL_GLOSA_GUIA | VARCHAR2 | Y | Valor glosado da guia pela operadora, |

---

## DBAMV.TISS_RETORNO_DEMON_PAG_RESUMO
> Tabela de Resumo do Retorno Demonstrativo Pagamento (Retorno TISS).

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Sequence desta tabela |
| 2 | ID_PAI | NUMBER | N | Codigo do registro-pai |
| 3 | NR_FATURA | VARCHAR2 | Y | Numero da Fatura na Operadora |
| 4 | NR_LOTE | VARCHAR2 | Y | Numero do Lote |
| 5 | DT_ENVIO_LOTE | VARCHAR2 | Y | Data de Envio do Lote |
| 6 | NR_PROTOCOLO | VARCHAR2 | Y | Numero do Protocolo |
| 7 | VL_INFORMADO | VARCHAR2 | Y | Valor Informado |
| 8 | VL_PROCESSADO | VARCHAR2 | Y | Valor Processado |
| 9 | VL_LIBERADO | VARCHAR2 | Y | Valor Liberado |
| 10 | VL_GLOSA | VARCHAR2 | Y | Valor da possivel Glosa |
| 11 | ID_MENSAGEM_ENVIO | NUMBER | Y | Codigo ID da tiss_mensagem de envio de lote |
| 12 | DT_PROCESSADO | DATE | Y | Data de Realizac?o do Processamento da Baixa do Lote |
| 13 | CD_USUARIO_PROCESSOU | VARCHAR2 | Y | Usuario que Realizou o Processamento da Baixa do Lote |
| 14 | SN_PROCESSADO | VARCHAR2 | Y | Mostra o que foi processado para o TISS |

---

## DBAMV.TISS_RETORNO_DOCUMENTOS
> Tabela criada para guardar informações do retorno do envio de documentos.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Sequence da tabela |
| 2 | ID_PAI | NUMBER | N | Id da tabela (tiss_mensagem) que originou registro na TISS_RETORNO_DOCUMENTOS |
| 3 | NR_LOTE | VARCHAR2 | Y | Número que identifica no prestador de serviços o lote ao qual o documento será vinculado. |
| 4 | NR_PROTOCOLO | VARCHAR2 | Y | Número atribuído pela operadora ao lote de guias encaminhado pelo prestador, ao qual o documento ... |
| 5 | NR_GUIA | VARCHAR2 | Y | Número que identifica a guia no prestador de serviços à qual o documento será vinculado. |
| 6 | NR_GUIA_OPERADORA | VARCHAR2 | Y | Número que identifica a guia atribuído pela operadora à qual o documento será vinculado. |
| 7 | NR_DOCUMENTO | VARCHAR2 | Y | Número que identifica o documento no prestador de serviços. |
| 8 | NR_PROTOCOLO_DOC | VARCHAR2 | Y | Número atribuído pela operadora ao receber o documento encaminhado pelo prestador. |
| 9 | DS_OBSERVACAO | VARCHAR2 | Y | Campo utilizado para adicionar quaisquer observações sobre o atendimento ou justificativas que ju... |

---

## DBAMV.TISS_RETORNO_ELEG
> Tabela base de resposta de XML (padr?o TISS) referente ao retorno da solicitac?o de elegibilidade de Carteira/Beneficio junto a Operadora

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | ID_PAI | NUMBER | Y |  |
| 3 | ID_MENSAGEM_ENVIO | NUMBER | Y |  |
| 4 | DT_TRATOU_RETORNO | DATE | Y |  |
| 5 | NR_REGISTRO_OPERADORA_ANS | VARCHAR2 | N | Numero do registro da Operadora junto a ANS |
| 6 | DS_OPERADORA | VARCHAR2 | Y | Nome da operadora |
| 7 | CD_CNPJ_OPERADORA | VARCHAR2 | Y | CNPJ da operadora |
| 8 | NR_CARTEIRA | VARCHAR2 | N | Numero da carteira do beneficiario |
| 9 | NM_PACIENTE | VARCHAR2 | Y | Nome do Paciente/Beneficiario |
| 10 | DS_CON_PLA | VARCHAR2 | Y | Nome do plano do convenio do beneficiario |
| 11 | DT_VALIDADE | VARCHAR2 | Y | Data da validade da carteira do beneficiario |
| 12 | NR_CNS | VARCHAR2 | Y | Codigo do CNS do beneficiario |
| 13 | DS_IDENTIFICADOR_BENEFICIARIO | BLOB | Y | Identificador do beneficiario (BLOB uso futuro) |
| 14 | SN_RESPOSTA_ELEGIBILIDADE | VARCHAR2 | N | Resposta da elegibilidade (aprovac?o ou reprovac?o) |
| 15 | CD_MOTIVO_GLOSA | VARCHAR2 | Y | Codigo do Motivo da Glosa da Elegibilidade |
| 16 | DS_MOTIVO_GLOSA | VARCHAR2 | Y | Descric?o do Motivo da Glosa da Elegibilidade |
| 17 | CD_OPER_NAO_REGULADA | VARCHAR2 | Y | CNPJ da operadora n?o regulada pela ANS. |
| 18 | NM_OPER_NAO_REGULADA | VARCHAR2 | Y | Nome da operadora n?o regulada pela ANS. |
| 19 | CD_VALIDACAO_BIOMETRICA | VARCHAR2 | Y | cd_validacao_biometrica |
| 20 | CD_ATENDIMENTO | NUMBER | Y | cd_atendimento |
| 21 | NM_SOCIAL_PACIENTE | VARCHAR2 | Y | Nome social do beneficiário conforme Decreto nº 8.727, de 28/04/2016. |

---

## DBAMV.TISS_RETORNO_ELEG_G
> Tabela de Retorno Demonst. Ctas. Medicas Glosa Guias (Retorno TISS).

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Sequence desta tabela |
| 2 | ID_PAI | NUMBER | N | Codigo do registro-pai |
| 3 | CD_MOTIVO_GLOSA | VARCHAR2 | Y | Motivo da possivel Glosa |
| 4 | DS_MOTIVO_GLOSA | VARCHAR2 | Y | Descric?o da Glosa da Guia |

---

## DBAMV.TISS_RETORNO_GLOSA_GUIA
> Armazena os dados de glosa da guia TISS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | ID do registro |
| 2 | ID_PAI | NUMBER | N | ID Pai do registro |
| 3 | NR_GUIA_PRESTADOR | VARCHAR2 | Y | Guia do Prestador |
| 4 | NR_GUIA_OPERADORA | VARCHAR2 | Y | Guia da operadora |
| 5 | CD_SENHA | VARCHAR2 | Y | Senha |
| 6 | CD_MOTIVO_CLOSA | VARCHAR2 | Y | Motivo de Glosa |
| 7 | DS_JUSTIFICATIVA_PRESTADOR | VARCHAR2 | Y | Justificativa do prestador |
| 8 | SN_RECURSO_GUIA_ACATADO | VARCHAR2 | Y | Sim/N?o se o recurso foi atacado |

---

## DBAMV.TISS_RETORNO_GLOSA_ITEM
> Armazena os dados de glosa da guia TISS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | ID do registro |
| 2 | ID_PAI | NUMBER | N | ID Pai do registro |
| 3 | NR_GUIA_PRESTADOR | VARCHAR2 | Y | Guia do Prestador |
| 4 | NR_GUIA_OPERADORA | VARCHAR2 | Y | Guia da operadora |
| 5 | CD_SENHA | VARCHAR2 | Y | Senha |
| 6 | DT_REALIZACAO | VARCHAR2 | Y | Data de realizac?o |
| 7 | DT_FIM | VARCHAR2 | Y | Data final |
| 8 | CD_TAB_FAT | VARCHAR2 | Y | Codigo da tabela |
| 9 | CD_PROCEDIMENTO | VARCHAR2 | Y | Codigo do procedimento |
| 10 | DS_PROCEDIMENTO | VARCHAR2 | Y | Descric?o do procedimento |
| 11 | CD_MOTIVO_GLOSA | VARCHAR2 | Y | Motivo de Glosa |
| 12 | VL_RECURSADO | VARCHAR2 | Y | Valor recursado |
| 13 | DS_JUSTIFICATIVA_PRESTADOR | VARCHAR2 | Y | Justificativa do prestador |
| 14 | VL_ACATADADO | VARCHAR2 | Y | Valor atacado |
| 15 | DS_JUSTIFICATIVA_OPERADORA | VARCHAR2 | Y | Justificativa da operadora |

---

## DBAMV.TISS_RETORNO_GLOSA_RECIBO
> Armazena o recibo de recurso de glosa TISS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | ID do registro |
| 2 | ID_PAI | NUMBER | N | ID Pai do registro |
| 3 | NR_REGISTRO_ANS | VARCHAR2 | Y | Registro ANS |
| 4 | NR_GUIA_REC_GLO_PRESTADOR | VARCHAR2 | Y | Guia de Recurso de glosa do prestador |
| 5 | NR_GUIA_REC_GLO_OPERADORA | VARCHAR2 | Y | Guia de Recuso de glosa da operadora |
| 6 | NM_OPERADORA | VARCHAR2 | Y | Nome da operadora |
| 7 | TP_OBJETO_RECURSO | VARCHAR2 | Y | Tipo de Objeto de Recurso |
| 8 | CD_PRESTADOR_OPERADORA | VARCHAR2 | Y | Codido do prestador na operadora |
| 9 | NM_PRESTADOR_OPERADORA | VARCHAR2 | Y | Nome do prestador na operadora |
| 10 | NR_LOTE | VARCHAR2 | Y | Lote |
| 11 | NR_PROTOCOLO | VARCHAR2 | Y | Protocolo |
| 12 | NR_RECURSO_PROTOCOLO | VARCHAR2 | Y | Recuso do Protocolo |
| 13 | CD_GLOSA_PROTOCOLO | VARCHAR2 | Y | Codigo da glosa do protocolo |
| 14 | DS_JUSTIFICATIVA_PROTOCOLO | VARCHAR2 | Y | Justificativa do protocolo |
| 15 | SN_RECURSO_ACATADO | VARCHAR2 | Y | Sim/N?o se o recurso foi atacado |
| 16 | DT_RECURSO | VARCHAR2 | Y | Data do recurso |
| 17 | VL_TOTAL_RECURSADO | VARCHAR2 | Y | Total do valor recursado |
| 18 | VL_TOTAL_ACATADO | VARCHAR2 | Y | Total do valor atacado |

---

## DBAMV.TISS_RETORNO_PROTOCOLO
> Tabela principal do Protocolo de Recebimento (retorno TISS).

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Sequence desta tabela |
| 2 | ID_PAI | NUMBER | N | Codigo do registro-pai |
| 3 | NR_REGISTRO_ANS | VARCHAR2 | Y | Registro ANS da operadora (convenio) |
| 4 | DS_OPERADORA | VARCHAR2 | Y | Nome da Operadora (convenio) |
| 5 | CD_CGC_OPERADORA | VARCHAR2 | Y | CGC da Operadora (convenio) |
| 6 | CD_CGC_PRESTADOR | VARCHAR2 | Y | CGC do Prestador |
| 7 | CD_CPF_PRESTADOR | VARCHAR2 | Y | CPF do Prestador |
| 8 | CD_OPERADORA_PRESTADOR | VARCHAR2 | Y | Codigo do Prestador na Operadora |
| 9 | NM_PRESTADOR | VARCHAR2 | Y | Nome do Prestador |
| 10 | CD_TIPO_LOGRADOURO | VARCHAR2 | Y | Endereco: Tipo do logradouro |
| 11 | DS_ENDERECO | VARCHAR2 | Y | Endereco: Logradouro |
| 12 | NR_ENDERECO | VARCHAR2 | Y | Endereco: Numero do logradouro |
| 13 | DS_COMPLEMENTO | VARCHAR2 | Y | Endereco: Complemento |
| 14 | CD_IBGE | VARCHAR2 | Y | Endereco: Codigo IBGE do Municipio |
| 15 | NM_CIDADE | VARCHAR2 | Y | Endereco: Nome do Municipop |
| 16 | CD_UF | VARCHAR2 | Y | Endereco: UF |
| 17 | NR_CEP | VARCHAR2 | Y | Endereco: CEP |
| 18 | CD_CNES | VARCHAR2 | Y | Codigo CNES |
| 19 | DT_ENVIO_LOTE | VARCHAR2 | Y | Data de envio do Lote |
| 20 | NR_LOTE | VARCHAR2 | Y | Numero do Lote |
| 21 | VL_PROTOCOLO | VARCHAR2 | Y | Valor do Protocolo de Recebimento |
| 22 | CD_MOTIVO_GLOSA | VARCHAR2 | Y | Motivo da possivel Glosa |
| 23 | VL_GLOSA | VARCHAR2 | Y | Valor da possivel Glosa |
| 24 | NR_PROTOCOLO | VARCHAR2 | Y | Numero do Protocolo de Recebimento (retorno sem erros) |
| 25 | DS_MSG_ERRO | VARCHAR2 | Y | Mensagem de Erro (retorno com erros) |
| 26 | DT_TRATOU_RETORNO | DATE | Y | Data em que a informac?o do Retorno foi tratada no sistema |
| 27 | ID_MENSAGEM_ENVIO | NUMBER | Y | Codigo ID da tiss_mensagem de envio |
| 28 | CD_OPER_NAO_REGULADA | VARCHAR2 | Y | CNPJ da operadora n?o regulada pela ANS. |
| 29 | NM_OPER_NAO_REGULADA | VARCHAR2 | Y | Nome da operadora n?o regulada pela ANS. |
| 30 | NR_PROTOCOLO_DETALHE | VARCHAR2 | Y |  |
| 31 | QT_GUIA_RECURSO | VARCHAR2 | Y | Armazena a quantidade de guia |
| 32 | DS_OBSERVACAO | VARCHAR2 | Y | Armazena a observac?es de guia |
| 33 | VL_TOTAL_RECURSADO | VARCHAR2 | Y | Armazena a valor total recursado |
| 34 | NM_SOCIAL_PACIENTE | VARCHAR2 | Y | Nome social do beneficiário conforme Decreto nº 8.727, de 28/04/2016. |

---

## DBAMV.TISS_RETORNO_PROTOCOLO_GLOSA
> Tabela de glosas do Protocolo de Recebimento (retorno TISS).

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Sequence desta tabela |
| 2 | ID_PAI | NUMBER | N | Codigo do registro-pai |
| 3 | CD_MOTIVO_GLOSA | VARCHAR2 | Y | Codigo da Glosa |
| 4 | DS_MOTIVO_GLOSA | VARCHAR2 | Y | Descric?o da Glosa |
| 5 | VL_GLOSA | VARCHAR2 | Y | Valor da Glosa |

---

## DBAMV.TISS_RETORNO_PROTOCOLO_GUIA
> Tabela de Guias do Protocolo de Recebimento (retorno TISS).

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Sequence desta tabela |
| 2 | ID_PAI | NUMBER | N | Codigo do registro-pai |
| 3 | NR_GUIA | VARCHAR2 | Y | Numero da guia do prestador (hospital) |
| 4 | NR_GUIA_OPERADORA | VARCHAR2 | Y | Numero da guia da operadora (convenio) |
| 5 | NR_CARTEIRA | VARCHAR2 | Y | Numero da Carteira do paciente |
| 6 | NM_PACIENTE | VARCHAR2 | Y | Nome do Paciente |
| 7 | DS_CON_PLA | VARCHAR2 | Y | Nome do Plano |
| 8 | DT_VALIDADE_CARTEIRA | VARCHAR2 | Y | Data de validade da Carteira |
| 9 | NR_CNS | VARCHAR2 | Y | Numero do CNS (cart?o nacional de saude) |
| 10 | NR_BENEFICIARIO | VARCHAR2 | Y | Identificac?o do Beneficiario |
| 11 | DT_REALIZACAO | VARCHAR2 | Y | Data de realizac?o |
| 12 | VL_PROCESSADO_GUIA | VARCHAR2 | Y | Valor Processado da Guia |
| 13 | VL_LIBERADO_GUIA | VARCHAR2 | Y | Valor Liberado da Guia |
| 14 | VL_GLOSA_GUIA | VARCHAR2 | Y | Valor Glosado da Guia |
| 15 | CD_MOTIVO_GLOSA | VARCHAR2 | Y | Codigo da Glosa |
| 16 | DS_MOTIVO_GLOSA | VARCHAR2 | Y | Descric?o da Glosa |
| 17 | DS_ATENDIMENTO_RN | VARCHAR2 | Y | Identifica se o atendimento e de RN |
| 18 | DS_SENHA | VARCHAR2 | Y | Armazena a senha de guia |

---

## DBAMV.TISS_RETORNO_PROTOCOLO_PRC_GLS
> Tabela de glosa de procedimentos do Protocolo de Recebimento (retorno TISS).

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Sequence desta tabela |
| 2 | ID_PAI | NUMBER | N | Codigo do registro-pai |
| 3 | CD_MOTIVO_GLOSA | VARCHAR2 | Y | Codigo da Glosa |
| 4 | DS_MOTIVO_GLOSA | VARCHAR2 | Y | Descric?o da Glosa |
| 5 | VL_GLOSA | VARCHAR2 | Y | Valor da Glosa |

---

## DBAMV.TISS_RETORNO_PROTOCOLO_PROCED
> Tabela de Procedimentos do Protocolo de Recebimento (retorno TISS).

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Sequence desta tabela |
| 2 | ID_PAI | NUMBER | N | Codigo do registro-pai |
| 3 | TP_TAB_FAT | VARCHAR2 | Y | Tipo da Tabela do Procedimento |
| 4 | CD_PROCEDIMENTO | VARCHAR2 | Y | Codigo do Procedimento |
| 5 | DS_PROCEDIMENTO | VARCHAR2 | Y | Nome do Procedimento |
| 6 | QT_EXECUTADA | VARCHAR2 | Y | Quantidade executada |
| 7 | VL_PROCESSADO | VARCHAR2 | Y | Valor Processado do item |
| 8 | VL_LIBERADO | VARCHAR2 | Y | Valor Liberado do item |
| 9 | VL_GLOSADO | VARCHAR2 | Y | Valor Glosado do item |
| 10 | CD_ATI_MED | VARCHAR2 | Y | Grau de Participac?o (atividade medica) |
| 11 | TP_UNIDADE_MEDIDA | VARCHAR2 | Y | Unidade de Medida |
| 12 | DS_VIA_ACESSO | VARCHAR2 | Y | Via de Acesso |
| 13 | DS_TECNICA_UTILIZADA | VARCHAR2 | Y | Tecnica Utilizada |
| 14 | VL_UNITARIO | VARCHAR2 | Y | valor Unitario |
| 15 | VL_PERC_REDUC_ACRES | VARCHAR2 | Y | fator Reducao Acrescimo |
| 16 | VL_TOTAL | VARCHAR2 | Y | valor Total |
| 17 | CD_DESPESA | VARCHAR2 | Y | codigo Despesa |
| 18 | CD_MOTIVO_GLOSA | VARCHAR2 | Y | Armazena a senha de guia |
| 19 | DS_MOTIVO_GLOSA | VARCHAR2 | Y | Armazena a senha de guia |
| 20 | DT_EXECUCAO | VARCHAR2 | Y | Data de execuc?o |
| 21 | HR_INICIAL | VARCHAR2 | Y | Hora inicial |
| 22 | HR_FINAL | VARCHAR2 | Y | Hora Final |

---

## DBAMV.TISS_RETORNO_PROTO_GUIA_GLS
> Tabela de glosas do Protocolo de Recebimento (retorno TISS).

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Sequence desta tabela |
| 2 | ID_PAI | NUMBER | N | Codigo do registro-pai |
| 3 | CD_MOTIVO_GLOSA | VARCHAR2 | Y | Codigo da Glosa |
| 4 | DS_MOTIVO_GLOSA | VARCHAR2 | Y | Descric?o da Glosa |
| 5 | VL_GLOSA | VARCHAR2 | Y | Valor da Glosa |

---

## DBAMV.TISS_RETORNO_RECURSO
> Armazena o retorno do recurso de glosa TISS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | ID do registro |
| 2 | ID_PAI | NUMBER | N | ID Pai do registro |
| 3 | CD_CONVENIO | NUMBER | Y | Codigo do convenio |
| 4 | NR_PROTOCOLO_RECURSO_GLOSA | VARCHAR2 | Y | Protocolo do recurso de glosa |
| 5 | DT_ENVIO_RECURSO | VARCHAR2 | Y | Data do envio do recurso |
| 6 | DT_RECEBIMENTO_RECURSO | VARCHAR2 | Y | Data do recebimento do recurso |
| 7 | NR_LOTE | VARCHAR2 | Y | Lote |
| 8 | NR_REGISTRO_ANS | VARCHAR2 | Y | Registro ANS |
| 9 | CD_PRESTADOR_NA_OPERADORA | VARCHAR2 | Y | Codigo do prestador na operadora |
| 10 | NR_CPF_CONTRATADO | VARCHAR2 | Y | CPF do contratado |
| 11 | NR_CNPJ_CONTRATADO | VARCHAR2 | Y | CNPJ do contratado |
| 12 | NM_PRESTADOR_CONTRATADO | VARCHAR2 | Y | Nome do prestador contratado |
| 13 | NR_PROTOCOLO_ST_RECURSO | VARCHAR2 | Y | Protocolo do status do recurso |
| 14 | DT_SITUACAO | VARCHAR2 | Y | Data da solicitac?o do status |
| 15 | TP_SITUACAO_PROTOCOLO | VARCHAR2 | Y | Situac?o do protocolo |
| 16 | DS_MSG_ERRO | VARCHAR2 | Y | Mensagem de erro retornada pelo processo |

---

## DBAMV.TISS_RETORNO_SOLICITACAO
> Tabela principal da Autorizac?o de Procedimentos (retorno TISS).

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Sequence desta tabela |
| 2 | ID_PAI | NUMBER | N | Codigo do registro-pai |
| 3 | NR_REGISTRO_OPERADORA_ANS | VARCHAR2 | Y | Registro ANS da operadora (convenio) |
| 4 | DT_EMISSAO | VARCHAR2 | Y | Data de emiss?o |
| 5 | NR_GUIA | VARCHAR2 | Y | Numero da guia do prestador (hospital) |
| 6 | NR_GUIA_OPERADORA | VARCHAR2 | Y | Numero da guia da operadora (convenio) |
| 7 | NR_CARTEIRA | VARCHAR2 | Y | Numero da carteira do paciente |
| 8 | NM_PACIENTE | VARCHAR2 | Y | Nome do paciente |
| 9 | DS_CON_PLA | VARCHAR2 | Y | Plano do convenio do paciente |
| 10 | DT_VALIDADE_CARTEIRA | VARCHAR2 | Y | Data de validade da carteira |
| 11 | NR_CNS | VARCHAR2 | Y | Numero CNS do paciente (cart?o nacional de saude) |
| 12 | ID_BENEFICIARIO | VARCHAR2 | Y | Identificac?o do beneficiario |
| 13 | CD_CGC_AUTORIZADO | VARCHAR2 | Y | Prestador autorizado: CGC |
| 14 | CD_CPF_AUTORIZADO | VARCHAR2 | Y | Prestador autorizado: CPF |
| 15 | CD_OPERADORA_AUTORIZADO | VARCHAR2 | Y | Prestador autorizado: codigo na operadora |
| 16 | NM_PRESTADOR_AUTORIZADO | VARCHAR2 | Y | Prestador autorizado: nome do prestador |
| 17 | CD_TIPO_LOGRADOURO | VARCHAR2 | Y | Prestador autorizado: tipo do logradouro |
| 18 | DS_ENDERECO | VARCHAR2 | Y | Prestador autorizado: endereco |
| 19 | NR_ENDERECO | VARCHAR2 | Y | Prestador autorizado: numero do endereco |
| 20 | DS_COMPLEMENTO | VARCHAR2 | Y | Prestador autorizado: complemento do endereco |
| 21 | CD_IBGE | VARCHAR2 | Y | Prestador autorizado: codigo IBGE da cidade |
| 22 | NM_CIDADE | VARCHAR2 | Y | Prestador autorizado: nome da cidade |
| 23 | CD_UF | VARCHAR2 | Y | Prestador autorizado: UF do endereco |
| 24 | NR_CEP | VARCHAR2 | Y | Prestador autorizado: CEP do endereco |
| 25 | NR_CNES | VARCHAR2 | Y | Prestador autorizado: numero do CNES |
| 26 | DT_AUTORIZADO | VARCHAR2 | Y | Data da autorizac?o |
| 27 | CD_SENHA_AUTORIZADO | VARCHAR2 | Y | Senha de autorizac?o |
| 28 | DT_VALIDADE_SENHA | VARCHAR2 | Y | Validade da senha de autorizac?o |
| 29 | NR_DIAS_AUTORIZADO | VARCHAR2 | Y | Numero de dias autorizado |
| 30 | DT_PROVAVEL_ADMISSAO | VARCHAR2 | Y | Data da provavel admiss?o hospitalar |
| 31 | CD_TIP_ACOM | VARCHAR2 | Y | Tipo de acomodac?o autorizada |
| 32 | VL_TOTAL_ODONTO | VARCHAR2 | Y | Odontologia (n?o utilizado): valor total |
| 33 | VL_FRANQUIA_ODONTO | VARCHAR2 | Y | Odontologia (n?o utilizado): valor total franquia e co-participac?o |
| 34 | VL_QUANT_US_ODONTO | VARCHAR2 | Y | Odontologia (n?o utilizado): total quantidade US |
| 35 | DS_STATUS_SOLICITACAO | VARCHAR2 | Y | Status do retorno da solicitac?o |
| 36 | CD_TIP_ACOM_PRORROG | VARCHAR2 | Y | Prorrogac?o: tipo de acomodac?o |
| 37 | QT_DIARIA_PRORROG | VARCHAR2 | Y | Prorrogac?o: quantidade de diarias |
| 38 | CD_TIP_ACOM_AUTORIZADA_PRORRO | VARCHAR2 | Y | Prorrogac?o: tipo de acomodac?o autorizada |
| 39 | QT_DIARIA_AUTORIZADA_PRORROG | VARCHAR2 | Y | Prorrogac?o: quantidade autorizada |
| 40 | CD_MOTIVO_GLOSA_PRORROG | VARCHAR2 | Y | Prorrogac?o: motivo de glosa |
| 41 | DS_MOTIVO_GLOSA_PRORROG | VARCHAR2 | Y | Prorrogac?o: descric?o do motivo de glosa |
| 42 | CD_OPER_NAO_REGULADA | VARCHAR2 | Y | CNPJ da operadora n?o regulada pela ANS. |
| 43 | NM_OPER_NAO_REGULADA | VARCHAR2 | Y | Nome da operadora n?o regulada pela ANS. |
| 44 | SN_ATENDIMENTO_RN | VARCHAR2 | N | Armazena o tipo de guia |
| 45 | NM_SOCIAL_PACIENTE | VARCHAR2 | Y | Nome social do beneficiário conforme Decreto nº 8.727, de 28/04/2016. |
| 46 | CD_AUSENCIA_VALIDACAO | VARCHAR2 | Y | Justificativa de ausência do código de validação, conforme tabela de domínio nº74 |
| 47 | CD_VALIDACAO | VARCHAR2 | Y | Código usado para atestar a presença do beneficiário no local de prestação de serviço |
| 48 | TP_COBERTURA_ESPECIAL | VARCHAR2 | Y | Código da Cobertura Especial conforme tabela de domínio nº 75. |

---

## DBAMV.TISS_RETORNO_SOLICITACAO_PROCE
> Tabela de procedimentos da Autorizac?o de Procedimentos (retorno TISS).

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Sequence desta tabela |
| 2 | ID_PAI | NUMBER | N | Codigo do registro-pai |
| 3 | TP_TAB_FAT | VARCHAR2 | Y | Tipo da tabela do procedimento |
| 4 | CD_PROCEDIMENTO | VARCHAR2 | Y | Codigo do procedimento |
| 5 | DS_PROCEDIMENTO | VARCHAR2 | Y | Descric?o do procedimento |
| 6 | QT_SOLICITADA | VARCHAR2 | Y | Quantidade solicitada |
| 7 | QT_AUTORIZADA | VARCHAR2 | Y | Quantidade autorizada |
| 8 | DS_STATUS_SOLICITACAO | VARCHAR2 | Y | Status da solicitac?o |
| 9 | DS_OBSERVACAO | VARCHAR2 | Y | Observac?es gerais referentes ao procedimento |
| 10 | VL_SOLICITADO | VARCHAR2 | Y | Valor solicitado |
| 11 | VL_AUTORIZADO | VARCHAR2 | Y | Valor Autorizado |
| 12 | DS_OPCAO_FABRICANTE | VARCHAR2 | Y | opc?o do fabricante |
| 13 | DS_REGISTRO_ANVISA | VARCHAR2 | Y | Registro na ANVISA |
| 14 | CD_REFERENCIA_FABRICANTE | VARCHAR2 | Y | Codigo de referencia fabricante |
| 15 | DS_AUTORIZACAO_FUNCIONAMENTO | VARCHAR2 | Y | Autorizac?o de funcionamento |

---

## DBAMV.TISS_RETORNO_SOLICITACAO_PR_GL
> Tabela de glosas do item da Autorizac?o de Procedimentos (retorno TISS).

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Sequence desta tabela |
| 2 | ID_PAI | NUMBER | N | Codigo do registro-pai |
| 3 | CD_MOTIVO_GLOSA | VARCHAR2 | Y | Codigo da glosa |
| 4 | DS_MOTIVO_GLOSA | VARCHAR2 | Y | Descric?o da glosa |

---

## DBAMV.TISS_RETORNO_SOL_CABEC_GL
> Tabela de glosas do cabecalho da guia de solicitac?o.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Sequence desta tabela |
| 2 | ID_PAI | NUMBER | N | Codigo do registro-pai |
| 3 | CD_MOTIVO_GLOSA | VARCHAR2 | Y | Codigo da glosa |
| 4 | DS_MOTIVO_GLOSA | VARCHAR2 | Y | Descric?o da glosa |

---

## DBAMV.TISS_RETORNO_STATUS
> Tabela principal do Retorno de Status de Protocolo.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Identificador do registro |
| 2 | ID_PAI | NUMBER | Y | Identificador do registro pai |
| 3 | NR_REGISTRO_OPERADORA_ANS | VARCHAR2 | Y | Registro ANS da operadora (convenio) |
| 4 | NM_OPERADORA | VARCHAR2 | Y | Nome da operadora (convenio) |
| 5 | CD_CGC_OPERADORA | VARCHAR2 | Y | CGC da operadora (convenio) |
| 6 | CD_STATUS_PROTOCOLO | VARCHAR2 | Y | Codigo atual do status de protocolo |
| 7 | CD_CGC_PRESTADOR | VARCHAR2 | Y | CGC do prestador (hospital) |
| 8 | CD_CPF_PRESTADOR | VARCHAR2 | Y | CPF do prestador (hospital) |
| 9 | CD_CODIGO_PRESTADOR | VARCHAR2 | Y | Codigo do prestador na operadora (hospital) |
| 10 | NM_PRESTADOR_CONTRATADO | VARCHAR2 | Y | Nome do prestador contratado (hospital) |
| 11 | CD_TIPO_LOGRADOURO | VARCHAR2 | Y | Endereco: tipo de logradouro |
| 12 | DS_ENDERECO | VARCHAR2 | Y | Endereco: nome do logradouro |
| 13 | NR_ENDERECO | VARCHAR2 | Y | Endereco: numero do logradouro |
| 14 | DS_COMPLEMENTO | VARCHAR2 | Y | Endereco: complemento |
| 15 | CD_IBGE | VARCHAR2 | Y | Endereco: codigo IBGE do municipio |
| 16 | NM_CIDADE | VARCHAR2 | Y | Endereco: nome do municipio |
| 17 | CD_UF | VARCHAR2 | Y | Endereco: UF |
| 18 | NR_CEP | VARCHAR2 | Y | Endereco: CEP |
| 19 | NR_CNES | VARCHAR2 | Y | Numero CNES |
| 20 | NR_CNES_PRESTADOR | VARCHAR2 | Y | Numero CNES do prestador |
| 21 | DT_TRATOU_RETORNO | DATE | Y | Data em que o retorno foi tratado no sistema MV |
| 22 | ID_MENSAGEM_ENVIO | NUMBER | Y | Identificador da mensagem de envio |
| 23 | CD_OPER_NAO_REGULADA | VARCHAR2 | Y | CNPJ da operadora n?o regulada pela ANS. |
| 24 | NM_OPER_NAO_REGULADA | VARCHAR2 | Y | Nome da operadora n?o regulada pela ANS. |
| 25 | DS_MENSAGEM_ERRO | VARCHAR2 | Y | Descricao da Falha |
| 26 | CD_CPF_OPERADORA | VARCHAR2 | Y | Armazena o CPF |

---

## DBAMV.TISS_RETORNO_STATUS_GLOSA
> Tabela de Glosas do Item da Guia do Lote do Retorno de Status de Protocolo do TISS.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Identificador do registro |
| 2 | ID_PAI | NUMBER | Y | Identificador do registro pai |
| 3 | CD_MOTIVO_GLOSA | VARCHAR2 | Y | Codigo do motivo de glosa |
| 4 | DS_MOTIVO_GLOSA | VARCHAR2 | Y | Descric?o do motivo de glosa |
| 5 | VL_GLOSA | VARCHAR2 | Y | Valor da Glosa |
| 6 | VALORGLOSAPROCEDIMENTO | NUMBER | Y | valorglosaprocedimento |

---

## DBAMV.TISS_RETORNO_STATUS_GUIA
> Tabela de Guias do Lote do Retorno de Status de Protocolo do TISS.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Identificador do registro |
| 2 | ID_PAI | NUMBER | Y | Identificador do registro pai |
| 3 | NR_REGISTRO_OPERADORA_ANS | VARCHAR2 | Y | Registro ANS da operadora (convenio) |
| 4 | DT_EMISSAO_GUIA | VARCHAR2 | Y | Data de emiss?o da guia |
| 5 | NR_GUIA | VARCHAR2 | Y | Numero da guia no prestador (hospital) |
| 6 | NR_GUIA_OPERADORA | VARCHAR2 | Y | Numero da guia na operadora (convenio) |
| 7 | CD_FONTE_PAGADORA | VARCHAR2 | Y | CNPJ da fonte pagadora(Convenio). |
| 8 | NR_CARTEIRA | VARCHAR2 | Y | numero Carteira |
| 9 | SN_ATENDIMENTO_RN | VARCHAR2 | Y | atendimento RN |
| 10 | NM_BENEFICIARIO | VARCHAR2 | Y | nome Beneficiario |
| 11 | NR_CNS | VARCHAR2 | Y | numero CNS |
| 12 | ID_BENEFICIARIO | VARCHAR2 | Y | identificador Beneficiario |
| 13 | DS_MOTIVO_GLOSA | VARCHAR2 | Y | motivo Glosa |
| 14 | CD_GLOSA | VARCHAR2 | Y | codigo Glosa |
| 15 | DS_GLOSA | VARCHAR2 | Y | descricao Glosa |
| 16 | VL_INF_GUIA | VARCHAR2 | Y | valor Informado Guia |
| 17 | VL_PROCESSADO | VARCHAR2 | Y | valor Processado |
| 18 | VL_GLOSA | VARCHAR2 | Y | valor Glosa |
| 19 | VL_LIBERADO | VARCHAR2 | Y | valor Liberado |

---

## DBAMV.TISS_RETORNO_STATUS_GUIA_GLS
> Tabela de glosas do Protocolo de Recebimento (retorno TISS).

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Sequence desta tabela |
| 2 | ID_PAI | NUMBER | N | Codigo do registro-pai |
| 3 | CD_MOTIVO_GLOSA | VARCHAR2 | Y | Codigo da Glosa |
| 4 | DS_MOTIVO_GLOSA | VARCHAR2 | Y | Descric?o da Glosa |
| 5 | VL_GLOSA | VARCHAR2 | Y | Valor da Glosa |

---

## DBAMV.TISS_RETORNO_STATUS_LOTE
> Tabela de Lotes do Retorno de Status de Protocolo do TISS.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Identificador do registro |
| 2 | ID_PAI | NUMBER | Y | Identificador do registro pai |
| 3 | NR_PROTOCOLO | VARCHAR2 | Y | Numero do protocolo |
| 4 | NR_LOTE | VARCHAR2 | Y | Numero do lote |
| 5 | DT_ENVIO_LOTE | VARCHAR2 | Y | Data de envio do lote |
| 6 | NR_FATURA | VARCHAR2 | Y | Numero da fatura |
| 7 | VL_PROCESSADO | VARCHAR2 | Y | Valor processado |
| 8 | VL_LIBERADO | VARCHAR2 | Y | Valor liberado |
| 9 | VL_GLOSA | VARCHAR2 | Y | Valor de glosa |
| 10 | CD_STATUS_LOTE | VARCHAR2 | Y | Codigo de status do Lote |
| 11 | NR_REMESSA | NUMBER | Y | Numero da remessa (MV) |
| 12 | CD_STATUS_PROTOCOLO | VARCHAR2 | Y | Descricao da Falha |
| 13 | CD_MOTIVO_GLOSA | VARCHAR2 | Y | Codigo da glosa |
| 14 | DS_MOTIVO_GLOSA | VARCHAR2 | Y | Motivo da glosa |

---

## DBAMV.TISS_RETORNO_STATUS_LOTE_GLS
> Tabela de glosas do Protocolo de Recebimento (retorno TISS).

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Sequence desta tabela |
| 2 | ID_PAI | NUMBER | N | Codigo do registro-pai |
| 3 | CD_MOTIVO_GLOSA | VARCHAR2 | Y | Codigo da Glosa |
| 4 | DS_MOTIVO_GLOSA | VARCHAR2 | Y | Descric?o da Glosa |
| 5 | VL_GLOSA | VARCHAR2 | Y | Valor da Glosa |

---

## DBAMV.TISS_RETORNO_STATUS_PROCED
> Tabela de Itens da Guia do Lote do Retorno de Status de Protocolo do TISS.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Identificador do registro |
| 2 | ID_PAI | NUMBER | Y | Identificador do registro pai |
| 3 | TP_TAB_FAT | VARCHAR2 | Y | Tipo da tabela |
| 4 | CD_PROCEDIMENTO | VARCHAR2 | Y | Codigo do procedimento |
| 5 | DS_PROCEDIMENTO | VARCHAR2 | Y | Descric?o do procedimento |
| 6 | QT_SOLICITADA | VARCHAR2 | Y | Quantidade solicitada |
| 7 | QT_AUTORIZADA | VARCHAR2 | Y | Quantidade autorizada |
| 8 | CD_STATUS_SOLICITACAO | VARCHAR2 | Y | Status da solicitacao |
| 9 | DS_OBSERVACAO | VARCHAR2 | Y | Observacao |
| 10 | VL_GLOSA_PROCEDIMENTO | VARCHAR2 | Y | valor Glosa Procedimento |
| 11 | DT_EXECUCAO | VARCHAR2 | Y | data Execucao |
| 12 | HR_INICIAL | VARCHAR2 | Y | hora Inicial |
| 13 | HR_FINAL | VARCHAR2 | Y | hora Final |
| 14 | TP_UNIDADE_MEDIDA | VARCHAR2 | Y | unidade de Medida |
| 15 | QTD_EXECUTADA | VARCHAR2 | Y | quantidade Executada |
| 16 | DS_VIA_ACESSO | VARCHAR2 | Y | via Acesso |
| 17 | DS_TECNICA_UTILIZADA | VARCHAR2 | Y | tecnica Utilizada |
| 18 | VL_UNITARIO | VARCHAR2 | Y | valor Unitario |
| 19 | VL_TOTAL | VARCHAR2 | Y | valor Total |
| 20 | CD_DESPESA | VARCHAR2 | Y | codigo Despesa |
| 21 | VL_PERC_REDUC_ACRES | VARCHAR2 | Y | fator Reducao Acrescimo |

---

## DBAMV.TISS_RETORNO_STATUS_PROC_GLS
> Tabela de glosas do Protocolo de Recebimento (retorno TISS).

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Sequence desta tabela |
| 2 | ID_PAI | NUMBER | N | Codigo do registro-pai |
| 3 | CD_MOTIVO_GLOSA | VARCHAR2 | Y | Codigo da Glosa |
| 4 | DS_MOTIVO_GLOSA | VARCHAR2 | Y | Descric?o da Glosa |
| 5 | VL_GLOSA | VARCHAR2 | Y | Valor da Glosa |

---

## DBAMV.TISS_RET_SOL_PROCE_QUIMIO
> Tabela do retorno das drogas solicitadas de quimioterapia

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Sequence da tabela |
| 2 | ID_PAI | NUMBER | Y | Conexão com a tabela dbamv.tiss_ret_sol_quimio |
| 3 | DT_PROVAVEL | VARCHAR2 | Y | Data prevista para administração do medicamento solicitado para o tratamento quimioterápico |
| 4 | TP_TAB_FAT | VARCHAR2 | Y | Código da tabela utilizada para identificar os procedimentos ou itens assistenciais solicitados, ... |
| 5 | CD_PROCEDIMENTO | VARCHAR2 | Y | Código do medicamento solicitado pelo prestador, conforme tabela de domínio |
| 6 | DS_PROCEDIMENTO | VARCHAR2 | Y | Descrição do medicamento solicitado |
| 7 | QT_DOSES | VARCHAR2 | Y | Dosagem total do medicamento no ciclo atual |
| 8 | CD_UNIDADE_MEDIDA | VARCHAR2 | Y | Unidade de medida do medicamento conforme tabela de domínio nº 60 |
| 9 | TP_VIA_ADMINISTRACAO | VARCHAR2 | Y | Via de administração do medicamento, conforme tabela de domínio nº 62 |
| 10 | NR_FREQUENCIA | VARCHAR2 | Y | Número de vezes que o medicamento será administrado no ciclo atual |

---

## DBAMV.TISS_RET_SOL_QUIMIO
> Tabela do retorno das solicitações de quimioterapia

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Sequence da tabela |
| 2 | ID_PAI | NUMBER | Y | Conexão com a tabela dbamv.tiss_retorno_solicitacao |
| 3 | NR_GUIA | VARCHAR2 | Y | Número que identifica a guia no prestador de serviços |
| 4 | NR_GUIA_OPERADORA | VARCHAR2 | Y | Número que identifica a guia atribuído pela operadora |
| 5 | CD_AUSENCIA_VALIDACAO | VARCHAR2 | Y | Justificativa de ausência do código de validação, conforme tabela de domínio nº 74 |
| 6 | CD_VALIDACAO | VARCHAR2 | Y | Código usado para atestar a presença do beneficiário no local de prestação de serviço |
| 7 | DT_AUTORIZADO | VARCHAR2 | Y | Data em que a autorização para realização do atendimento/procedimento foi concedida pela operadora |
| 8 | CD_SENHA_AUTORIZADO | VARCHAR2 | Y | Senha de autorização fornecida pela operadora |
| 9 | DT_VALIDADE_SENHA | VARCHAR2 | Y | Data de validade da senha de autorização do procedimento |
| 10 | NR_CARTEIRA | VARCHAR2 | Y | Número da carteira do beneficiário na operadora |
| 11 | DS_STATUS_SOLICITACAO | VARCHAR2 | Y | Código do status da solicitação, conforme tabela de domínio nº 45 |
| 12 | NM_PACIENTE | VARCHAR2 | Y | Nome do beneficiário |
| 13 | NR_CNS | VARCHAR2 | Y | Número do Cartão Nacional de Saúde do beneficiário |
| 14 | NM_SOCIAL_PACIENTE | VARCHAR2 | Y | Nome social do beneficiário conforme Decreto nº 8.727, de 28/04/2016 |
| 15 | NR_PESO | VARCHAR2 | Y | Peso do beneficiário em quilos |
| 16 | NR_ALTURA | VARCHAR2 | Y | Altura do beneficiário em centímetros |
| 17 | NR_SUPERFICIE_CORPORAL | VARCHAR2 | Y | Superfície corporal do beneficiário em metros quadrados |
| 18 | NR_IDADE | VARCHAR2 | Y | Idade do beneficiário |
| 19 | TP_SEXO | VARCHAR2 | N | Sexo do beneficiário, conforme tabela de domínio nº 43 |
| 20 | NM_PROFISSIONAL | VARCHAR2 | Y | Nome do profissional que está solicitando o procedimento ou item assistencial |
| 21 | NR_TELEFONE_PROFISSIONAL | VARCHAR2 | Y | Número de telefone do profissional que está solicitando o procedimento ou item assistencial |
| 22 | DS_EMAIL_PROFISSIONAL | VARCHAR2 | Y | Endereço de e-mail do profissional que está solicitando o procedimento ou item assistencial |
| 23 | DT_DIAGNOSTICO | VARCHAR2 | Y | Data em que foi dado o diagnóstico da doença referente ao tratamento solicitado |
| 24 | CD_CID | VARCHAR2 | Y | Código do diagnóstico principal de acordo com a Classificação Internacional de Doenças e de Probl... |
| 25 | CD_ESTADIAMENTO | VARCHAR2 | Y | Estadiamento do tumor, conforme tabela de domínio nº 31 |
| 26 | CD_FINALIDADE | VARCHAR2 | Y | Código da finalidade do tratamento, conforme tabela de domínio nº 33 |
| 27 | CD_ECOG | VARCHAR2 | Y | Classificação internacional sobre capacidade funcional do paciente portador de doença oncológica,... |
| 28 | DS_DIAG_HISPATOLOGICO | VARCHAR2 | Y | Descrição do diagnóstico citopatológico e histopatológico |
| 29 | DS_INFO_RELEVANTES | VARCHAR2 | Y | Outras informações relevantes a serem fornecidas pelo profissional solicitante para esclareciment... |
| 30 | CD_TUMOR | VARCHAR2 | Y | Classificação do tumor conforme tabela de domínio nº 67 |
| 31 | CD_NODULO | VARCHAR2 | Y | Classificação do nódulo conforme tabela de domínio nº 66 |
| 32 | CD_METASTASE | VARCHAR2 | Y | Classificação da metástase conforme tabela de domínio nº 65 |
| 33 | CD_QUIMIOTERAPIA | VARCHAR2 | Y | Código do tipo de quimioterapia solicitada, conforme tabela de domínio nº 58 |
| 34 | DS_PLANO_TERAPEUTICO | VARCHAR2 | Y | Plano terapêutico proposto pelo profissional solicitante |
| 35 | DS_CIRURGIA | VARCHAR2 | Y | Descrição de procedimento cirúrgico, relativo à patologia atual, ao qual o beneficiário foi subme... |
| 36 | DT_CIRURGIA | VARCHAR2 | Y | Data em que o atendimento/procedimento foi realizado |
| 37 | DS_AREA_IRRADIADA | VARCHAR2 | Y | Identificação da área irradiada em tratamento radioterápico anterior |
| 38 | DT_IRRADIACAO | VARCHAR2 | Y | Data em que foi realizada a radioterapia anterior |
| 39 | NR_CICLOS | VARCHAR2 | Y | Número de ciclos previstos de tratamento |
| 40 | NR_CICLO_ATUAL | VARCHAR2 | Y | Número do ciclo atual do tratamento quimioterápico |
| 41 | NR_DIAS_CICLO_ATUAL | VARCHAR2 | Y | Quantidade de dias do ciclo atual do tratamento quimioterápico |
| 42 | NR_INTERVALO_CICLOS | VARCHAR2 | Y | Quantidade de dias entre os ciclos do tratamento quimioterápico |

---

## DBAMV.TISS_RET_SOL_QUIMIO_GL
> Tabela de retorno das glosas solicitadas de quimioterapia

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Sequence da tabela |
| 2 | ID_PAI | NUMBER | N | Conexão com a tabela dbamv.tiss_ret_sol_quimio |
| 3 | CD_MOTIVO_GLOSA | VARCHAR2 | Y | Código do motivo de negativa, conforme tabela de domínio nº 38 |
| 4 | DS_MOTIVO_GLOSA | VARCHAR2 | Y | Descrição do motivo de negativa, conforme tabela de domínio nº 38 |

---

## DBAMV.TISS_SOLICITA_STATUS_AUTORIZ
> Tabela da estrutura do XML-tiss necessario para solicitar eletronicamente o status de uma guia pendente de autorizac?o no convenio

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Sequence desta tabela |
| 2 | ID_PAI | NUMBER | Y | Codigo do registro-pai |
| 3 | DT_SOLICITACAO | VARCHAR2 | Y | Data/Hora da gerac?o desta Solicitac?o |

---

## DBAMV.TISS_SOL_CANCELA_GUIA
> Tabela para solicitac?o de Cancelamento de Guias enviadas via XML do TISS.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Sequence desta tabela |
| 2 | ID_PAI | NUMBER | Y | Codigo do registro-pai |
| 3 | CD_CGC | VARCHAR2 | Y | CGC do contratado |
| 4 | CD_CPF | VARCHAR2 | Y | CPF do contratado |
| 5 | CD_OPERADORA | VARCHAR2 | Y | Codigo da operadora do contratado |
| 6 | NM_CONTRATADO | VARCHAR2 | Y | Nome do contratado |
| 7 | CD_TIPO_LOGRADOURO | VARCHAR2 | Y | Endereco: tipo do logradouro |
| 8 | DS_ENDERECO | VARCHAR2 | Y | Endereco: Logradouro |
| 9 | NR_ENDERECO | VARCHAR2 | Y | Endereco: Numero do logradouro |
| 10 | DS_COMPLEMENTO | VARCHAR2 | Y | Endereco: complemento |
| 11 | CD_IBGE | VARCHAR2 | Y | Endereco: Codigo IBGE do municipio |
| 12 | NM_CIDADE | VARCHAR2 | Y | Endereco: Municipio (cidade) |
| 13 | CD_UF | VARCHAR2 | Y | Endereco: Unidade Federativa |
| 14 | NR_CEP | VARCHAR2 | Y | Endereco: CEP |
| 15 | NR_CNES | VARCHAR2 | Y | Numero do CNES |
| 16 | DS_OBSERVACAO | VARCHAR2 | Y | Observac?o |
| 17 | CD_ATENDIMENTO | NUMBER | Y | Codigo do atendimento |
| 18 | CD_REG_FAT | NUMBER | Y | Numero da conta hospitalar |
| 19 | CD_REG_AMB | NUMBER | Y | Numero da conta/lote ambulatorial |
| 20 | DT_GEROU_REGISTRO | DATE | Y | Data da gerac?o do cancelamento |
| 21 | DT_GEROU_XML | DATE | Y | Data da gerac?o do arquivo XML |
| 22 | CD_USUARIO | VARCHAR2 | Y | Usuario que gerou o cancelamento |
| 23 | DS_MOTIVO_CANCELAMENTO | VARCHAR2 | Y | Motivo do Cancelamento |
| 24 | CD_USUARIO_CANCELOU | VARCHAR2 | Y | Usuario que cancelou |
| 25 | DT_CANCELAMENTO | DATE | Y | Data do cancelamento |
| 26 | TP_GUIA | VARCHAR2 | Y | Tipo de Guia 1, 2 ou 3 (Solicitac?o,Faturamento, Re-apresentac?o). |
| 27 | NR_PROTOCOLO | VARCHAR2 | Y | Armazena o numero do protocolo de envio de lote |
| 28 | NR_LOTE | VARCHAR2 | Y | Numeração para realizar o cancelamento por lote. |

---

## DBAMV.TISS_SOL_DEMON
> Estrutura da tabela de Solicitac?o de Demonstrativo de Pagamento do padr?o TISS.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Sequence desta tabela |
| 2 | ID_PAI | NUMBER | Y | Codigo do registro-pai |
| 3 | NR_REGISTRO_OPERADORA_ANS | VARCHAR2 | Y | Registro ANS do convenio (operadora) |
| 4 | CD_CGC | VARCHAR2 | Y | CGC do prestador |
| 5 | CD_CPF | VARCHAR2 | Y | CPF do prestador |
| 6 | CD_OPERADORA | VARCHAR2 | Y | Codigo na operadora do prestador |
| 7 | NM_PRESTADOR | VARCHAR2 | Y | Nome do prestador |
| 8 | CD_TIPO_LOGRADOURO | VARCHAR2 | Y | Tipo do logradouro |
| 9 | DS_ENDERECO | VARCHAR2 | Y | Endereco do prestador |
| 10 | NR_ENDERECO | VARCHAR2 | Y | Numero do endereco do prestador |
| 11 | DS_COMPLEMENTO | VARCHAR2 | Y | Complemento do endereco do prestador |
| 12 | CD_IBGE | VARCHAR2 | Y | Codigo IBGE do prestador |
| 13 | NM_CIDADE | VARCHAR2 | Y | Municipio do prestador |
| 14 | CD_UF | VARCHAR2 | Y | UF do endereco do prestador |
| 15 | NR_CEP | VARCHAR2 | Y | CEP do endereco do prestador |
| 16 | CD_CNES | VARCHAR2 | Y | Codigo CNES |
| 17 | DT_SOLICITACAO | VARCHAR2 | Y | Data da solicitac?o |
| 18 | TP_DEMONSTRATIVO | VARCHAR2 | Y | Tipo do Demonstrativo solicitado |
| 19 | DT_INICIAL | VARCHAR2 | Y | Data inicial da solicitac?o |
| 20 | DT_FINAL | VARCHAR2 | Y | Data final da solicitac?o |
| 21 | NR_PROTOCOLO | VARCHAR2 | Y | Numero do protocolo |

---

## DBAMV.TISS_SOL_ELEG
> Tabela base para gerac?o de XML (padr?o TISS) referente a solicitac?o de elegibilidade de Carteira/Beneficio junto a Operadora

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N |  |
| 2 | ID_PAI | NUMBER | Y |  |
| 3 | CD_MULTI_EMPRESA | NUMBER | N | Empresa do Multi-Empresa que realizou a Solicitac?o |
| 4 | CD_PACIENTE | NUMBER | Y | Codigo do paciente da solicitac?o de Elegibilidade |
| 5 | CD_CONVENIO | NUMBER | N | Codigo do convenio do beneficiario da Elegibilidade |
| 6 | CD_CON_PLA | NUMBER | N | Codigo do plano do convenio do beneficiario da Elegibilidade |
| 7 | CD_CARTEIRA | NUMBER | Y | Codigo da carteira do beneficiario a realizar a Elegibilidade |
| 8 | DH_SOLICITADO | DATE | Y | Data/Hora da gerac?o da solicitac?o |
| 9 | NM_XML | VARCHAR2 | N | Nome do XML na mensagem |
| 10 | NR_REGISTRO_OPERADORA_ANS | VARCHAR2 | N | Nr.registroda operadora na ANS |
| 11 | DH_RETORNO | DATE | Y | Data/Hora da resposta desta solicitac?o |
| 12 | SN_APROVADO | VARCHAR2 | Y | Aprovac?o da Elegibilidade |
| 13 | DS_GLOSA | VARCHAR2 | Y | Descric?o da(s) Glosa(s) da Elegibilidade (Reprovac?o) |
| 14 | CD_CNPJ_CONTRATADO | VARCHAR2 | Y | CNPJ do contratado que solicita a Elegibilidade |
| 15 | CD_CPF_CONTRATADO | VARCHAR2 | Y | CPF do contratado que solicita a Elegibilidade |
| 16 | CD_CONTRATADO_NA_OPERADORA | VARCHAR2 | Y | Codigo na operadora do contratado que solicita Elegibilidade |
| 17 | NM_CONTRATADO | VARCHAR2 | Y | Nome do contratado que solicita Elegibilidade |
| 18 | DS_ENDERECO | VARCHAR2 | Y | Endereco do contratado que solicita Elegibilidade |
| 19 | NR_ENDERECO | NUMBER | Y | Numero do endereco do contratado que solicita Elegibilidade |
| 20 | NM_BAIRRO | VARCHAR2 | Y | Bairro (complemento) do contratado que solicita Elegibilidade |
| 21 | NM_CIDADE | VARCHAR2 | Y | Cidade do contratado que solicita Elegibilidade |
| 22 | UF | VARCHAR2 | Y | UF da cidade do contratado que solicita Elegibilidade |
| 23 | CD_IBGE | VARCHAR2 | Y | Codigo do IBGE da cidade do contratado que solicita Elegibilidade |
| 24 | NR_CEP | NUMBER | Y | CEP do endereco do contratado que solicita Elegibilidade |
| 25 | NR_CNES | VARCHAR2 | Y | Codigo CNES do contratado que solicita Elegibilidade |
| 26 | NR_CARTEIRA | VARCHAR2 | N | Numero da carteira do beneficiario a realizar a Elegibilidade |
| 27 | NM_PACIENTE | VARCHAR2 | N | Nome do Paciente/Beneficiario a realizar a Elegibilidade |
| 28 | DS_PLANO | VARCHAR2 | N | Nome do plano do convenio do beneficiario a realizar a Elegibilidade |
| 29 | DT_VALIDADE | VARCHAR2 | Y | Data da validade da carteira do beneficiario a realizar a Elegibilidade |
| 30 | NR_CNS | VARCHAR2 | Y | Codigo do CNS do beneficiario a realizar a Elegibilidade |
| 31 | DS_IDENTIFICADOR_BENEFICIARIO | BLOB | Y | Identificador do beneficiario (BLOB uso futuro) |
| 32 | CD_TIPO_LOGRADOURO | VARCHAR2 | Y | Numero do logradouro da solicitac?o de elegibilidade do paciente |
| 33 | CD_AUSENCIA_VALIDACAO | VARCHAR2 | Y | Justificativa do paciente pela ausência do código de validação (ausenciaCodValidacao/TUSS-74) |
| 34 | CD_VALIDACAO | VARCHAR2 | Y | Código de validação para atestar presença do paciente (codValidacao) |
| 35 | TP_IDENT_BENEFICIARIO | VARCHAR2 | Y | Tipo de tecnologia usada na identificação do beneficiário (tipoIdent/TUSS-72) |
| 36 | DS_TEMPLATE_IDENT_BENEFICIARIO | VARCHAR2 | Y | Minúcia do identificador biométrico (templateBiometrico) |
| 37 | NR_ID_BENEFICIARIO | VARCHAR2 | Y | Atesta a presença do beneficiário. Gravar de acordo com tipoIdent/TUSS-72 (identificadorBeneficia... |

---

## DBAMV.TISS_SOL_GUIA
> Estrutura das Guias de Solicitac?o do TISS (cabecalho). Tipos de Guia: - Guia de Solicitac?o de SP/SADT, para atendimentos ambulatoriais e solicitac?o em   separado de exames de internac?o. - Guia de Solicitac?o de Internac?o, para atendimentos hospitalares. Observac?es: - CID do diagnostico principal: obrigatorio se solicitac?o de pequena cirurgia, terapias,                                 ou procedimentos em serie.                                  - Indicac?o Clinica: obrigatorio se solicitac?o de pequena cirurgia e/ou terapia. - Carater da Solicitac?o: Obrigatorio apenas na Solicitac?o de Internac?o, definida como Carater da Internac?o.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Sequence desta tabela |
| 2 | ID_PAI | NUMBER | Y | Codigo do registro-pai |
| 3 | NM_XML | VARCHAR2 | N | Nome que identifica o modelo XML a ser gerado |
| 4 | NR_REGISTRO_OPERADORA_ANS | VARCHAR2 | Y | Registro da Operadora na ANS (destino) |
| 5 | CD_PRESTADOR_NA_OPERADORA | VARCHAR2 | Y | Codigo do hospital na Operadora (origem) |
| 6 | CD_CONVENIO | NUMBER | Y | Codigo do Convenio no cadastro da MV |
| 7 | CD_GUIA | NUMBER | Y | Codigo da Guia gerada na MV |
| 8 | NR_GUIA | VARCHAR2 | N | Numero da Guia |
| 9 | DT_EMISSAO | VARCHAR2 | N | Data de emiss?o da Guia |
| 10 | NR_GUIA_PRINCIPAL | VARCHAR2 | Y | Numero da Guia Principal, obrigatoria para SADT internado |
| 11 | NR_CARTEIRA | VARCHAR2 | N | Beneficiario: Numero da Carteira |
| 12 | NM_PACIENTE | VARCHAR2 | N | Beneficiario: Nome |
| 13 | DS_CON_PLA | VARCHAR2 | N | Beneficiario: Nome do plano |
| 14 | DT_VALIDADE | VARCHAR2 | Y | Beneficiario: Validade da Carteira |
| 15 | NM_TITULAR | VARCHAR2 | Y | Beneficiario: Nome do responsavel ou titular pelo plano |
| 16 | NR_CNS | VARCHAR2 | Y | Beneficiario: Numero do Cart?o Nacional de Saude |
| 17 | CD_CGC_CPF | VARCHAR2 | Y | Solicitante: Cod.Operadora, CNPJ ou CPF (EM DESUSO) |
| 18 | NM_PRESTADOR | VARCHAR2 | Y | Solicitante: Nome do profissional |
| 19 | DS_CONSELHO | VARCHAR2 | Y | Solicitante: Sigla do Conselho Profissional |
| 20 | DS_CODIGO_CONSELHO | VARCHAR2 | Y | Solicitante: Numero do Conselho Profissional |
| 21 | UF_CONSELHO | VARCHAR2 | Y | Solicitante: Unidade Federativa do Conselho Profissional |
| 22 | CD_CBOS | VARCHAR2 | Y | Solicitante: Codigo da especialidade conforme tabela CBO-S |
| 23 | CD_TIPO_LOGRADOURO | NUMBER | Y | Solicitante (internac?o): Codigo do Tipo de logradouro |
| 24 | DS_ENDERECO | VARCHAR2 | Y | Solicitante (internac?o): Nome do logradouro |
| 25 | NR_ENDERECO | NUMBER | Y | Solicitante (internac?o): Numero do endereco |
| 26 | NM_BAIRRO | VARCHAR2 | Y | Solicitante (internac?o): Complemento do endereco |
| 27 | NM_CIDADE | VARCHAR2 | Y | Solicitante (internac?o): Municipio e UF do solicitante |
| 28 | CD_IBGE | VARCHAR2 | Y | Solicitante (internac?o): Codigo IBGE do municipio |
| 29 | NR_CEP | NUMBER | Y | Solicitante (internac?o): CEP do endereco do solicitante |
| 30 | CD_CGC_CPF_SOLICITADO | VARCHAR2 | Y | Solicitado: Cod.Operadora, CNPJ ou CPF |
| 31 | NM_PRESTADOR_SOLICITADO | VARCHAR2 | Y | Solicitado: Nome do Profissional |
| 32 | CD_CARATER_SOLICITACAO | VARCHAR2 | Y | Solicitac?o: Codigo do Carater da solicitac?o |
| 33 | DH_SOLICITACAO | VARCHAR2 | Y | Solicitac?o: Data/Hora da Solicitac?o de SP-SADT |
| 34 | CD_CID | VARCHAR2 | Y | Solicitac?o: CID do diagnostico principal |
| 35 | TP_CID | VARCHAR2 | Y | Solicitac?o: Tipo do diagnostico principal |
| 36 | DS_CID | VARCHAR2 | Y | Solicitac?o: Descric?o do diagnostico principal |
| 37 | DS_HDA | VARCHAR2 | Y | Solicitac?o: Indicac?o Clinica |
| 38 | CD_TIPO_INTERNACAO | VARCHAR2 | Y | Solicitac?o Internac?o: Tipo de internac?o |
| 39 | TP_DOENCA | VARCHAR2 | Y | Solicitac?o Internac?o: Tipo de doenca |
| 40 | NR_TEMPO_DOENCA | NUMBER | Y | Solicitac?o Internac?o: Quantidade de tempo da doenca |
| 41 | TP_TEMPO_DOENCA | VARCHAR2 | Y | Solicitac?o Internac?o: Unidade de tempo da doenca |
| 42 | TP_ACIDENTE | VARCHAR2 | Y | Solicitac?o Internac?o: Tipo de Acidente |
| 43 | DT_AUTORIZACAO | VARCHAR2 | Y | Autorizac?o: Data de autorizac?o da Guia |
| 44 | CD_SENHA | VARCHAR2 | Y | Autorizac?o: Senha de autorizac?o |
| 45 | DT_VALIDADE_AUTORIZADA | VARCHAR2 | Y | Autorizac?o: Data de validade da Senha |
| 46 | NM_AUTORIZADOR_CONV | VARCHAR2 | Y | Autorizac?o: Nome do funcionario da operadora que informou a Senha |
| 47 | NR_DIAS_AUTORIZADOS | NUMBER | Y | Autorizac?o Internac?o: Numero de dias autorizados |
| 48 | CD_TIP_ACOM | VARCHAR2 | Y | Autorizac?o Internac?o: Tipo de acomodac?o autorizada |
| 49 | CD_CGC_CPF_AUTORIZADO | VARCHAR2 | Y | Autorizac?o Internac?o: Cod.Operadora, CNPJ ou CPF do prestador autorizado |
| 50 | NM_PRESTADOR_AUTORIZADO | VARCHAR2 | Y | Autorizac?o Internac?o: Nome do prestador autorizado |
| 51 | NR_CNES_AUTORIZADO | VARCHAR2 | Y | Autorizac?o Internac?o: Codigo CNES do prestador autorizado |
| 52 | CD_SEQ_TRANSACAO | NUMBER | Y | Numero de identificac?o da Mensagem enviada |
| 53 | SN_TRATOU_RETORNO | VARCHAR2 | N | Indica que este retorno ja foi processado. |
| 54 | NM_HOSPITAL | VARCHAR2 | Y | Nome do Hospital Externo |
| 55 | NR_CGC_HOSPITAL | VARCHAR2 | Y | CGC do hospital externo |
| 56 | NR_CNES | VARCHAR2 | Y | Numero CNES do hospital externo |
| 57 | TP_REGIME_INTERNACAO | VARCHAR2 | Y | Regime da Internac?o |
| 58 | QT_DIARIAS_SOLICITADA | VARCHAR2 | Y | Quantidade de Diarias solicitadas |
| 59 | CD_GUIA_PAI | NUMBER | Y | Codigo da guia pai relacionada |
| 60 | TP_GUIA | VARCHAR2 | Y | Numero do protocolo Detalhe - Mensagem detalhe protocolo |
| 61 | CD_PACIENTE | NUMBER | Y | Codigo do cadastro de Paciente |
| 62 | DH_SOLICITADO | DATE | Y | Data e Hora da solicitac?o |
| 63 | DH_RETORNO | DATE | Y | Data e Hora do Retorno recebido do convenio |
| 64 | TP_ATENDIMENTO_TISS | VARCHAR2 | Y | Tipo do Atendimento ref padr?o TISS |
| 65 | CD_PRESTADOR_SOL | NUMBER | Y | Codigo do prestador solicitante |
| 66 | CD_CON_PLA | NUMBER | Y | Codigo do Plano do convenio |
| 67 | TP_ATENDIMENTO | VARCHAR2 | Y | Tipo de Atendimento a que se refere a Solicitac?o |
| 68 | UF_SOLICITANTE | VARCHAR2 | Y | Solicitante: UF do Prestador |
| 69 | CD_CGC | VARCHAR2 | Y | Solicitante: CNPJ do Prestador |
| 70 | CD_CPF | VARCHAR2 | Y | Solicitante: CPF do Prestador |
| 71 | CD_OPERADORA | VARCHAR2 | Y | Solicitante: Codigo na Operadora do Prestador |
| 72 | DS_OBSERVACAO | VARCHAR2 | Y | Observac?es gerais |
| 73 | NR_DIAS_SOLICITADOS | NUMBER | Y | Numero de Dias Solicitados |
| 74 | CD_CGC_AUTORIZADO | VARCHAR2 | Y | Autorizac?o Internac?o: CGC do Prestador Autorizado |
| 75 | CD_CPF_AUTORIZADO | VARCHAR2 | Y | Autorizac?o Internac?o: CPF do Prestador Autorizado |
| 76 | CD_OPERADORA_AUTORIZADO | VARCHAR2 | Y | Autorizac?o Internac?o: Cod.Operadora do Prestador Autorizado |
| 77 | CD_TIPO_LOGR_AUTORIZADO | VARCHAR2 | Y | Autorizac?o Internac?o: Tipo do Logradouro do Prestador Autorizado |
| 78 | DS_ENDERECO_AUTORIZADO | VARCHAR2 | Y | Autorizac?o Internac?o: Logradouro do Prestador Autorizado |
| 79 | NM_BAIRRO_AUTORIZADO | VARCHAR2 | Y | Autorizac?o Internac?o: Complemento do Prestador Autorizado |
| 80 | NR_ENDERECO_AUTORIZADO | NUMBER | Y | Autorizac?o Internac?o: Nr.Endereco do Prestador Autorizado |
| 81 | CD_IBGE_AUTORIZADO | VARCHAR2 | Y | Autorizac?o Internac?o: Cod.IBGE do Prestador Autorizado |
| 82 | NM_CIDADE_AUTORIZADO | VARCHAR2 | Y | Autorizac?o Internac?o: Municipio do Prestador Autorizado |
| 83 | CD_UF_AUTORIZADO | VARCHAR2 | Y | Autorizac?o Internac?o: UF do Prestador Autorizado |
| 84 | NR_CEP_AUTORIZADO | NUMBER | Y | Autorizac?o Internac?o: CEP do Prestador Autorizado |
| 85 | DT_GEROU_XML | DATE | Y | Data em que foi gerado o arquivo XML, para controle |
| 86 | CD_ATENDIMENTO | NUMBER | Y | Codigo do Atendimento |
| 87 | CD_ESPECIALID | VARCHAR2 | Y | Codigo da especialidade |
| 88 | SN_CANCELADO | VARCHAR2 | N | Guia cancelada sim/n?o |
| 89 | NR_ID_BENEFICIARIO | VARCHAR2 | Y | Numero do Beneficiario |
| 90 | NR_GUIA_OPERADORA | VARCHAR2 | Y | Numero da guia da Operadora |
| 91 | CD_CPF_SOLICITADO | VARCHAR2 | Y | CPF do prestador solicitado |
| 92 | NM_PRESTADOR_CONTRATADO | VARCHAR2 | Y | Nome do prestador Contratado |
| 93 | DT_PROVAVEL_ADMISSAO | VARCHAR2 | Y | Data provavel admimiss?o do hospital |
| 94 | CD_STATUS_CANCELAMENTO | VARCHAR2 | Y | Codigo do status do cancelamento do retorno da operadora |
| 95 | CD_MULTI_EMPRESA | NUMBER | N | Codigo da multi-empresa |
| 96 | CD_CODIGO_CONTRATADO | VARCHAR2 | Y | Codigo do contratado solicitante |
| 97 | DS_MOTIVO_NEGACAO | VARCHAR2 | Y | Motivos de Negac?o de Guia |
| 98 | CD_FONTE_PAGADORA | VARCHAR2 | Y | CNPJ da fonte pagadora(Convenio). |
| 99 | TP_ORIGEM_SOL | VARCHAR2 | Y | Tipo da Origem da Solicitac?o |
| 100 | CD_ORIGEM_SOL | NUMBER | Y | Codigo do Movimento de Origem da Solicitacao |
| 101 | CD_ACOM_TISS | VARCHAR2 | Y | Indica o tipo da acomodação no TISS. |
| 102 | SN_ATENDIMENTO_RN | VARCHAR2 | N | Indica se o atendimento é de recém-nascido (tiss-3) |
| 103 | DT_SUGERIDA_INTERNACAO | VARCHAR2 | Y | Data sugerida para a Internação (tiss-3) |
| 104 | SN_PREVISAO_USO_OPME | VARCHAR2 | N | Indica se há previsão de uso de procedimentos de opme (tiss-3) |
| 105 | SN_PREVISAO_USO_QUIMIO | VARCHAR2 | N | Indica se há previsão de uso de procedimentos de quimioterapia (tiss-3) |
| 106 | QT_DIARIAS_AUTORIZADAS | VARCHAR2 | Y | Quantidade de Diarias autorizadas |
| 107 | CD_TIP_ACOM_AUTORIZADO | VARCHAR2 | Y | Autorização Internação: Tipo de acomodação autorizada |
| 108 | CD_DOCUMENTO_CLINICO | NUMBER | Y | O codigo do documento clinico, setado via trigger (fk) |
| 109 | NR_TELEFONE_PROFISSIONAL | VARCHAR2 | Y | Numero de telefone do profissional que esta solicitando o procedimento ou item assistencial. |
| 110 | DS_EMAIL_PROFISSIONAL | VARCHAR2 | Y | Endereco de e-mail do profissional que esta solicitando o procedimento ou item assistencial. |
| 111 | DS_ESPECIFICACAO_MATERIAL | VARCHAR2 | Y | Especificac?o ou esclarecimento adicional do profissional acerca do material solicitado. |
| 112 | NR_PESO | VARCHAR2 | Y | Peso do beneficiario em quilos |
| 113 | NR_ALTURA | VARCHAR2 | Y | Altura do beneficiario em centimetros. |
| 114 | NR_SUPERFICIE_CORPORAL | VARCHAR2 | Y | Superficie corporal do beneficiario em metros quadrados |
| 115 | NR_IDADE | VARCHAR2 | Y | Idade do beneficiario |
| 116 | TP_SEXO | VARCHAR2 | Y | Sexo do beneficiario, conforme tabela de dominio n? 43. |
| 117 | DT_DIAGNOSTICO | VARCHAR2 | Y | Data em que foi dado o diagnostico da doenca referente ao tratamento solicitado. |
| 118 | TP_ESTADIAMENTO | VARCHAR2 | Y | Estadiamento do tumor, conforme tabela de dominio n? 31. |
| 119 | TP_FINALIDADE | VARCHAR2 | Y | Codigo da finalidade do tratamento, conforme tabela de dominio n? 33. |
| 120 | TP_ECOG | VARCHAR2 | Y | Classificac?o internacional sobre capacidade funcional do paciente portador de doenca oncologica,... |
| 121 | DS_INFO_RELEVANTES | VARCHAR2 | Y | Outras informac?es relevantes a serem fornecidas pelo profissional solicitante para esclareciment... |
| 122 | TP_QUIMIOTERAPIA | VARCHAR2 | Y | Codigo do tipo de quimioterapia solicitada, conforme tabela de dominio n? 58. |
| 123 | DS_PLANO_TERAPEUTICO | VARCHAR2 | Y | Plano terapeutico proposto pelo profissional solicitante |
| 124 | NR_CICLOS | VARCHAR2 | Y | Numero de ciclos previstos de tratamento |
| 125 | NR_CICLO_ATUAL | VARCHAR2 | Y | Numero do ciclo atual do tratamento quimioterapico. |
| 126 | NR_INTERVALO_CICLOS | VARCHAR2 | Y | Quantidade de dias entre os ciclos de tratamento |
| 127 | TP_DIAGNOSTICO_IMAGEM | VARCHAR2 | Y | Tecnologia utilizada para diagnostico de imagem, conforme tabela de dominio n? 29. |
| 128 | NR_CAMPOS | VARCHAR2 | Y | Numero de campos de irradiac?o |
| 129 | NR_DOSE_CAMPO | VARCHAR2 | Y | Dose de radioterapico, expressa em Gy, por dia de tratamento. |
| 130 | NR_DOSE_TOTAL | VARCHAR2 | Y | Dose total, expressa em Gy, a ser utilizada considerando o numero de dias e dosagem diaria. |
| 131 | NR_DIAS | VARCHAR2 | Y | Numero de dias de tratamento previstos pelo profissional solicitante |
| 132 | DT_PREVISTA_INICIO | VARCHAR2 | Y | Data prevista para inicio da administrac?o da radioterapia. |
| 133 | CD_VERSAO_TISS_GERADA | VARCHAR2 | Y | Versão do tiss em que foi gerada a solicitação (tiss-3) |
| 134 | CD_TUMOR | VARCHAR2 | Y | Codigo do Tipo de Tumor (tuss 67). |
| 135 | CD_NODULO | VARCHAR2 | Y | Codigo do Tipo de Nodulo (tuss 66). |
| 136 | CD_METASTASE | VARCHAR2 | Y | Codigo do Tipo de Metastase (tuss 65). |
| 137 | NR_DIAS_CICLO_ATUAL | VARCHAR2 | Y | Numero de Dias do Ciclo atual do Tratamento. |
| 138 | DS_INCONSISTENCIAS | VARCHAR2 | Y | Descrição de alertas e inconsistências na guia. |
| 139 | TP_ETAPA_AUTORIZACAO | VARCHAR2 | Y | Indica a etapa da solicitação de autorização. (tipoEtapaAutorizacao/TUSS-73) |
| 140 | CD_AUSENCIA_VALIDACAO | VARCHAR2 | Y | Justificativa do paciente pela ausência do código de validação (ausenciaCodValidacao/TUSS-74) |
| 141 | CD_VALIDACAO | VARCHAR2 | Y | Código de validação para atestar presença do paciente (codValidacao) |
| 142 | TP_IDENT_BENEFICIARIO | VARCHAR2 | Y | Tipo de tecnologia usada na identificação do beneficiário (tipoIdent/TUSS-72) |
| 143 | DS_TEMPLATE_IDENT_BENEFICIARIO | VARCHAR2 | Y | Minúcia do identificador biométrico (templateBiometrico) |
| 144 | TP_COBERTURA_ESPECIAL | VARCHAR2 | Y | Código da Cobertura Especial conforme tabela de domínio nº 75. |
| 145 | TP_REGIME_ATENDIMENTO | VARCHAR2 | Y | Código da Cobertura Especial conforme tabela de domínio nº 76. |
| 146 | TP_SAUDE_OCUPACIONAL | VARCHAR2 | Y | Código da Cobertura Especial conforme tabela de domínio nº 77. |
| 147 | NM_SOCIAL_PACIENTE | VARCHAR2 | Y | Nome social do beneficiário conforme Decreto nº 8.727, de 28/04/2016. |

---

## DBAMV.TISS_SOL_PROTOCOLO
> Estrutura da tabela de Solicitac?o de Protocolo do padr?o TISS.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Sequence desta tabela |
| 2 | ID_PAI | NUMBER | Y | Codigo do registro-pai |
| 3 | NR_REGISTRO_OPERADORA_ANS | VARCHAR2 | Y | Registro ANS do convenio (operadora) |
| 4 | CD_CGC | VARCHAR2 | Y | CGC do prestador |
| 5 | CD_CPF | VARCHAR2 | Y | CPF do prestador |
| 6 | CD_OPERADORA | VARCHAR2 | Y | Codigo na operadora do prestador |
| 7 | NM_PRESTADOR | VARCHAR2 | Y | Nome do prestador |
| 8 | CD_TIPO_LOGRADOURO | VARCHAR2 | Y | Tipo do logradouro |
| 9 | DS_ENDERECO | VARCHAR2 | Y | Endereco do prestador |
| 10 | NR_ENDERECO | VARCHAR2 | Y | Numero do endereco do prestador |
| 11 | DS_COMPLEMENTO | VARCHAR2 | Y | Complemento do endereco do prestador |
| 12 | CD_IBGE | VARCHAR2 | Y | Codigo IBGE do prestador |
| 13 | NM_CIDADE | VARCHAR2 | Y | Municipio do prestador |
| 14 | CD_UF | VARCHAR2 | Y | UF do endereco do prestador |
| 15 | NR_CEP | VARCHAR2 | Y | CEP do endereco do prestador |
| 16 | CD_CNES | VARCHAR2 | Y | Codigo CNES |
| 17 | DT_SOLICITACAO | VARCHAR2 | Y | Data da solicitac?o |
| 18 | NR_PROTOCOLO | VARCHAR2 | Y | Numero do protocolo |

---

## DBAMV.TISS_STATUS_PROTOCOLO
> Tabela de Solicitac?es de Status de Protocolo do TISS. Esta Tabela e filha de duas tabelas :  - Relac?o pela coluna ID_PAI com a coluna ID da tabela TISS_PROTOCOLO.  - Relac?o pela coluna NR_PROTOCOLO com a coluna NR_PROTOCOLO da tabela TISS_CAB_PROTOCOLO.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | ID | NUMBER | N | Sequence desta tabela (por protocolo) |
| 2 | ID_PAI | NUMBER | N | Codigo do registro-pai |
| 3 | NR_PROTOCOLO | NUMBER | N | Numero do protocolo - ligado ao registro-pai |
| 4 | NR_LOTE | NUMBER | Y | Retorno: Numero do Lote |
| 5 | DT_LOTE | VARCHAR2 | Y | Retorno: Data do Lote |
| 6 | NR_FATURA | NUMBER | Y | Retorno: Numero da Fatura |
| 7 | VL_PROCESSADO | NUMBER | Y | Retorno: Valor processado |
| 8 | VL_LIBERADO | NUMBER | Y | Retorno: Valor Liberado |
| 9 | VL_GLOSA | NUMBER | Y | Retorno: Valor de glosa |
| 10 | DT_RETORNO | DATE | Y | Retorno: Data de Retorno do convenio com o Status da Solicitac?o. |
| 11 | CD_STATUS_LOTE | VARCHAR2 | Y | Retorno: Status (1-recebido; 2-Em analise; 3-Liberado p/pgto; 4-Encerrado sem pgto; 5-Analisado e... |
| 12 | DT_SOLICITACAO | DATE | N | Data da Solicitac?o (para uso da tela de Solicitac?o de Status de Protocolo). |
| 13 | CD_USUARIO_SOLICITOU | VARCHAR2 | N | Usuario que efetuou a solicitac?o de status. |

---

## DBAMV.TISS_VERSAO
> Tabela de Vers?es do TISS.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_VERSAO_TISS | VARCHAR2 | N | Codigo e vers?o do Tiss |
| 2 | NM_SERVIDOR_HOSPITAL_TISS | VARCHAR2 | N | Endereco/Servidor do Tiss no Hospital |
| 3 | DT_VIGOR | DATE | N | Data da entrada em vigor da vers?o |
| 4 | DS_OBSERVACOES | VARCHAR2 | Y | Descric?o das observac?es da vers?o |
| 5 | DS_ID_TP_PROTO | VARCHAR2 | Y | Descric?o da Identificac?o do tipo de Protocolo. |
| 6 | CD_PROTO | NUMBER | Y | Codigo Protocolo vinculado a vers?o. |

---

## DBAMV.TISS_VERSAO_CBOS
> Tabela de cadastros dos CBO-S por vers?o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_VERSAO_TISS | VARCHAR2 | N | Codigo da vers?o do TISS |
| 2 | CD_CBOS | VARCHAR2 | N | Codigo CBO-S |
| 3 | CD_ESPECIALID | NUMBER | N | Codigo da Especialidade |

---

## DBAMV.TISS_VERSAO_MOT_ALT
> Tabela de cadastros dos Motivos de Saida por vers?o

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_VERSAO_TISS | VARCHAR2 | N | Codigo da vers?o do TISS |
| 2 | CD_MOT_ALT | VARCHAR2 | N | Codigo do Motivo da Alta |
| 3 | CD_MOT_SAIDA | VARCHAR2 | N | Codigo do Motivo de Saida do TISS |

---

## DBAMV.TISS_VERSAO_SERVICO
> Tabela de cadastros dos servicos de cada vers?o do TISS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_VERSAO_TISS | VARCHAR2 | N | Numero da vers?o do TISS |
| 2 | DS_SERVICO | VARCHAR2 | N | Servico da vers?o |
| 3 | DS_CHAVE | VARCHAR2 | N | Chave criada para cada servico |

---

## DBAMV.TRANSFERENCIA_COTA
> Tabela de Transferencia de Cotas por Municipio.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TRANSFERENCIA_COTA | NUMBER | N | Codigo sequencial de Transferencia de Cota por Municipio. |
| 2 | CD_SER_DIS | NUMBER | N | Codigo do Servico. |
| 3 | CD_MUNICIPIO_ORIGEM | NUMBER | Y | Codigo do Municipio Origem. |
| 4 | CD_MUNICIPIO_DESTINO | NUMBER | N | Codigo do Municipio Destino. |
| 5 | QT_COTA_TRANSFERENCIA | NUMBER | N | Valor da cota a ser transferida. |
| 6 | DT_SOLIC_TRANSF | DATE | Y | Data da solicitac?o de transferencia da cota. |
| 7 | DT_APROVA_TRANSF | DATE | Y | Data da aprovac?o de transferencia da cota. |
| 8 | CD_USUARIO_SOLIC | VARCHAR2 | Y | Codigo do usuario que solicitou a transferencia. |
| 9 | CD_USUARIO_APROVA | VARCHAR2 | Y | Codigo do usuario que aprovou a transferencia. |
| 10 | DS_JUSTIFICATIVA | VARCHAR2 | Y | Justificativa da solicitac?o de cotas |

---

## DBAMV.TRANSFERE_CONTAS
> Tabela de log de Transferencia de Contas

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TRANSFERENCIA | NUMBER | N | Codigo Transferencia de Conta |
| 2 | CD_EVENTOS | NUMBER | N | Codigo do Evento SIA-SUS |
| 3 | CD_FAT_SIA_ANTERIOR | NUMBER | N | Codigo Fatura Anterior SIA-SUS |
| 4 | CD_FAT_SIA_NOVA | NUMBER | N | Codigo Fatura Nova SIA-SUS |
| 5 | DT_TRANSFERENCIA | DATE | N | Data da Transferencia de Fatura |
| 6 | NM_USUARIO | VARCHAR2 | Y | Nome Usuario da Transferencia |
| 7 | DS_OBSERVACAO | VARCHAR2 | Y | Descric?o de Observac?o da Transferencia |
| 8 | CD_REMESSA_ANTERIOR | NUMBER | Y | Remessa da fatura origem. |
| 9 | CD_REMESSA_NOVA | NUMBER | Y | Remessa da fatura destino. |

---

## DBAMV.TRANSFERE_EMPRESA_CONVENIO
> Tabela de regra de transferencia de conta por empresa

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_EMPRESA_ORIGEM | NUMBER | N | Codigo da Empresa de Origem do Atendimento |
| 2 | CD_EMPRESA_DESTINO | NUMBER | N | Codigo da Empresa de Destino do Atendimento |
| 3 | CD_CONVENIO | NUMBER | N | Codigo do Convenio com Contrato de Faturamento entre Empresas |

---

## DBAMV.TRANSFERE_EMPRESA_ORI_ATE
> Tabela de regra de transferencia de conta trazendo de-para por origem

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_ORI_ATE_ORIGEM | NUMBER | N | Codigo da Origem do atendimento de Origem |
| 2 | CD_ORI_ATE_DESTINO | NUMBER | N | Codigo da Origem do atendimento de Destino |

---

## DBAMV.TRANSFERE_EMPRESA_SETOR
> Tabela de regra de transferencia de conta trazendo de-para por setor

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_SETOR_ORIGEM | NUMBER | N | Codigo do Setor do atendimento de Origem |
| 2 | CD_SETOR_DESTINO | NUMBER | N | Codigo do Setor do atendimento de Destino |

---

## DBAMV.TRANSPORTADOR
> Tabela de Cadastro de transportadores de documentos do same

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_TRANSPORTADOR | NUMBER | N | Codigo do Transportador de documentos do same |
| 2 | DS_TRANSPORTADOR | VARCHAR2 | N | Nome do transportador de documentos do Same |

---

## DBAMV.VINCULO_CNES
> Tabela de vinculo empregaticio do SCNES-SUS

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_VINCULO_CNES | VARCHAR2 | N | Codigo do vinculo |
| 2 | DS_VINCULO_CNES | VARCHAR2 | Y | descric?o do tipo de vinculo |
| 3 | SN_ATIVO | VARCHAR2 | Y | Sinalisa se o item esta ativo. |

---

## DBAMV.XML_VERSAO
> Tabela de Vers?es da gerac?o de arquivos em XML. Inicialmente estas tabelas foram criadas para gerar os schemas do padr?o TISS para o FFCV. Tabelas filhas: XML_SCHEMA e XML_TAG.

| # | Coluna | Tipo | Nulo | Comentario |
|---|--------|------|------|------------|
| 1 | CD_VERSAO | VARCHAR2 | N | Codigo da Vers?o |
| 2 | DT_VERSAO | DATE | N | Data da Vers?o |
| 3 | DS_VERSAO | VARCHAR2 | Y | Descric?o da Vers?o |
