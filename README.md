# 🚦 Projeto PRF 2025 — Data Analytics

### 🛤️ Análise de Acidentes nas Rodovias Federais Brasileiras

Projeto de **Data Analytics** desenvolvido a partir de dados abertos e oficiais da **Polícia Rodoviária Federal (PRF)**, utilizando registros de acidentes de 2025 como estudo de caso.

O projeto acompanha um fluxo progressivo de análise de dados, desde a exploração inicial da base até **SQL, preparação de dados com Python, Business Intelligence e Machine Learning**.

---

## 🎯 Objetivo

Transformar dados brutos de acidentes de trânsito em informações estruturadas e analisáveis, buscando identificar **padrões, fatores associados e indicadores relacionados à ocorrência de acidentes fatais** nas rodovias federais brasileiras.

O projeto também busca desenvolver, na prática, competências fundamentais para atuação em **Data Analytics**:

- 📊 Exploração e entendimento de dados;
- 🧹 Limpeza e preparação de dados;
- 🗄️ Consultas analíticas com SQL;
- 📈 Análise e visualização de dados;
- 🧮 Estatística descritiva;
- ⚙️ Engenharia de atributos (*Feature Engineering*);
- 📝 Documentação e organização de pipelines;
- 🤖 Preparação para Machine Learning.

---

# 🧭 Explore o Projeto

O projeto está organizado em unidades que representam diferentes etapas de um fluxo de análise de dados.

### 📈 [Unidade 1 — Fundamentos de Data Analytics](./01_fundamentos_data_analytics/)

> 🔎 Exploração inicial da base, estatística descritiva e compreensão dos dados da PRF.

**Principais recursos:**
`Estatística Descritiva` · `Open Data` · `Exploração de Dados` · `Data Preparation`

👉 **[Explorar Unidade 1 →](./01_fundamentos_data_analytics/)**

---

### 📊 [Unidade 2 — Excel para Análise de Dados](./02_planilha_analise_exploratoria/)

> 📊 Construção das primeiras evidências analíticas utilizando filtros, tabelas dinâmicas e gráficos.

**Principais recursos:**
`Google Sheets` · `Excel` · `Tabelas Dinâmicas` · `Filtros` · `Data Visualization`

👉 **[Explorar Unidade 2 →](./02_planilha_analise_exploratoria/)**

---

### 🗄️ [Unidade 3 — SQL com SQLite](./03_sql_analise_prf/)

> 🔍 Consultas analíticas para investigar acidentes por diferentes dimensões e gerar resultados estruturados.

**Principais recursos:**
`SQL` · `SQLite` · `GROUP BY` · `Agregações` · `Filtros` · `CSV`

👉 **[Explorar Unidade 3 →](./03_sql_analise_prf/)**

---

### 🐍 [Unidade 4 — Engenharia e Preparação de Dados com Python](./04_engenharia_preparacao_python/)

> ⚙️ Tratamento, transformação e preparação dos dados para análises avançadas, BI e Machine Learning.

**Principais recursos:**
`Python` · `Pandas` · `NumPy` · `ETL` · `Data Cleaning` · `Feature Engineering`

👉 **[Explorar Unidade 4 →](./04_engenharia_preparacao_python/)**

---

## 🗂️ Base de Dados

Os dados utilizados são provenientes do **DATATRAN**, conjunto de dados abertos disponibilizado pela **Polícia Rodoviária Federal (PRF)**.

A base contém informações relacionadas a:

- 📍 Localização dos acidentes;
- 📅 Data e horário;
- 🛣️ Rodovia e quilômetro;
- 🌙 Fase do dia;
- 🌧️ Condições meteorológicas;
- ⚠️ Causa presumível;
- 🚦 Tipo de acidente;
- 🚗 Veículos envolvidos;
- 🩹 Pessoas feridas;
- ⚰️ Vítimas fatais.

📌 **Recorte analisado:** acidentes registrados em **2025**.

---

# 🛠️ Stack Tecnológico

### 💻 Linguagens

`Python` · `SQL`

### 📊 Análise de Dados

`Pandas` · `NumPy` · `SQLite` · `Excel` · `Google Sheets`

### 📈 Visualização e BI

`Excel` · `Google Sheets` · `Power BI` *(próxima etapa)*

### 🧪 Ambiente de Desenvolvimento

`Jupyter Notebook` · `VS Code`

### 🔧 Engenharia e Versionamento

`Git` · `GitHub`

---

# 🧠 Principais Competências

| Área | Competências |
|---|---|
| 📊 **Data Analytics** | Exploração, análise e interpretação de dados |
| 🧮 **Estatística** | Média, mediana, moda, quartis e análise descritiva |
| 🗄️ **SQL** | Consultas, filtros, agregações e análises multidimensionais |
| 🧹 **Data Cleaning** | Tratamento, padronização e validação dos dados |
| 🐍 **Python** | Pandas, NumPy e preparação de dados |
| ⚙️ **Feature Engineering** | Criação e transformação de variáveis analíticas |
| 📈 **Data Visualization** | Gráficos, tabelas dinâmicas e preparação para dashboards |
| 📝 **Data Governance** | Dicionário de variáveis e documentação das decisões |
| 🤖 **Machine Learning** | Preparação da base e definição da variável-alvo |

---

# 📁 Estrutura do Repositório

```text
Projeto_PRF_2025/
│
├── 01_fundamentos_data_analytics/
│   ├── README.md
│   └── dados/
│
├── 02_planilha_analise_exploratoria/
│   ├── README.md
│   └── planilha/
│
├── 03_sql_analise_prf/
│   ├── README.md
│   ├── sql/
│   └── resultados/
│
├── 04_engenharia_preparacao_python/
│   ├── README.md
│   ├── dados_brutos/
│   ├── dados_tratados/
│   ├── logs/
│   └── notebooks/
│
└── README.md
