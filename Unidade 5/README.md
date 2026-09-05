# 📊 Unidade 5 — KPIs e Storytelling de Dados

## 🚦 Análise de Acidentes Fatais — PRF 2025

Nesta unidade, os dados tratados nas etapas anteriores são explorados por meio de Análise Exploratória de Dados (EDA — Exploratory Data Analysis), frequências, rankings, séries temporais e Key Performance Indicators (KPIs).

O objetivo é transformar a base analítica de acidentes da Polícia Rodoviária Federal (PRF) referente a 2025 em informações capazes de revelar padrões, concentrações e comportamentos relevantes nos acidentes registrados.

Além da exploração dos dados, a unidade incorpora conceitos de Data Storytelling, utilizando visualizações para comunicar os principais achados de forma objetiva e facilitar a interpretação dos resultados.

---

## 🛠️ Stack Tecnológico

### 🐍 Linguagem

![Python](https://img.shields.io/badge/python-%233670A0.svg?style=for-the-badge&logo=python&logoColor=ffdd54)

### 📊 Análise de Dados

![Pandas](https://img.shields.io/badge/pandas-%23150458.svg?style=for-the-badge&logo=pandas&logoColor=white)

### 📈 Visualização

![Matplotlib](https://img.shields.io/badge/Matplotlib-%23ffffff.svg?style=for-the-badge&logo=Matplotlib&logoColor=black)

### 🧪 Ambiente de Análise

![Jupyter Notebook](https://img.shields.io/badge/jupyter-%23FA0F00.svg?style=for-the-badge&logo=jupyter&logoColor=white)

---

## 🎯 Objetivos da Unidade

A Unidade 5 tem como objetivos:

🔎 Realizar uma Análise Exploratória de Dados (EDA — Exploratory Data Analysis);
📊 Explorar frequências e distribuições das principais variáveis;
🏆 Construir rankings para destacar categorias e ocorrências relevantes;
📅 Identificar padrões ao longo do tempo por meio de séries temporais;
🚦 Analisar a ocorrência de acidentes fatais sob diferentes dimensões;
📌 Desenvolver 5 KPIs relacionados à variável acidente_fatal;
🧠 Transformar os resultados em uma narrativa orientada por dados;
📈 Utilizar visualizações para destacar padrões e relações relevantes.

Além do cálculo dos indicadores, a unidade utiliza **Data Storytelling** para apresentar os principais resultados de forma objetiva e visual.

---

🔍 Análise Exploratória de Dados — EDA
Exploratory Data Analysis

A Análise Exploratória de Dados (EDA — Exploratory Data Analysis) constitui a etapa de exploração e compreensão inicial da base analítica.

O objetivo é investigar a distribuição dos dados, identificar padrões, comparar categorias e levantar informações relevantes antes da construção dos indicadores.

A análise contempla:

Distribuição das principais variáveis;
Frequências absolutas e relativas;
Comparação entre categorias;
Identificação dos maiores e menores valores;
Rankings;
Análise temporal;
Observação de padrões e possíveis relações entre variáveis.

O EDA constitui o relatório analítico da unidade, reunindo os principais achados obtidos durante a exploração da base.

---

📊 Frequências e Rankings

As análises de frequência permitem identificar quais categorias apresentam maior concentração de ocorrências, enquanto os rankings ajudam a destacar os principais grupos ou localidades segundo diferentes métricas.

Entre as análises realizadas estão:

Frequência por tipo de acidente;
Frequência por tipo de pista;
Frequência por fase do dia;
Frequência por condição meteorológica;
Rankings de categorias e ocorrências;
Comparações entre diferentes grupos da base.

Essas análises contribuem para a identificação dos padrões utilizados posteriormente na construção dos KPIs.

---

📅 Série Temporal

A análise temporal permite observar como os acidentes se distribuem ao longo de 2025, possibilitando identificar variações, concentrações e comportamentos ao longo dos períodos analisados.

A série temporal complementa a análise categórica ao introduzir a dimensão do tempo na exploração dos dados.

---

## 📌 KPIs Desenvolvidos

### KPI 1 — Fatalidade por Tipo de Acidente

Analisa o percentual de acidentes fatais de acordo com o **tipo de acidente**, permitindo identificar quais categorias apresentam maior proporção de ocorrências fatais.

**Visualização:** gráfico de barras horizontais.

---

### KPI 2 — Fatalidade por Tipo de Pista

Analisa a relação entre o **tipo de pista** e a ocorrência de acidentes fatais, permitindo comparar a proporção de fatalidade entre diferentes configurações de pista.

**Visualização:** gráfico de barras verticais.

---

### KPI 3 — Fatalidade por Fase do Dia

Investiga a ocorrência de acidentes fatais de acordo com a **fase do dia**, buscando identificar períodos que apresentam maior proporção de acidentes fatais.

**Visualização:** gráfico de barras verticais.

---

### KPI 4 — Fatalidade por Condição Meteorológica

Analisa o percentual de acidentes fatais conforme a **condição meteorológica registrada no momento do acidente**.

**Visualização:** gráfico de barras horizontais.

---

### KPI 5 — Rodovias com Maior Número de Acidentes Fatais

Identifica as **5 combinações UF × BR com maior quantidade de acidentes fatais**, permitindo destacar rodovias que concentram maior número de ocorrências fatais.

**Visualização:** gráfico de barras horizontais.

---

## 📐 Metodologia

Os indicadores foram construídos utilizando a base analítica preparada na **Unidade 4**, mantendo a variável `acidente_fatal` como referência para a identificação das ocorrências fatais.

O processo envolveu:

1. 📥 Importação da base analítica;
2. 🔎 Inspeção das variáveis;
3. 🧮 Agrupamento dos dados por diferentes dimensões;
4. 📊 Cálculo dos indicadores;
5. 📈 Construção das visualizações;
6. 🧠 Interpretação dos resultados;
7. 📝 Desenvolvimento do storytelling dos KPIs.

---

## 📂 Arquivos

```text
Unidade 5/
│
├── README.md
│
├── kpis_prf_2025.ipynb
│
├── Complemento dos graficos Estatísticos. Base prf2025.xlsx
│
├── Frequências, Rankings e Série Temporal.docx
├── Frequências, Rankings e Série Temporal.pdf
│
├── Relatório_EDA_PRF_2025_Acidentes_FATAIS.pdf
│
└── KPIs-da-Base-Analitica-PRF.pdf
```

### 📓 Notebook

**`kpis_prf_2025.ipynb`**
Notebook utilizado no desenvolvimento das análises da Unidade 5, reunindo exploração dos dados, cálculos, agrupamentos e visualizações.

### 📊 Complemento estatístico

**`Complemento dos graficos Estatísticos. Base prf2025.xlsx`**
Planilha complementar utilizada no desenvolvimento e apoio às análises e aos gráficos estatísticos.

### 📈 Frequências, Rankings e Série Temporal

**`Frequências, Rankings e Série Temporal.docx`**
Documento com as análises de frequências, rankings e série temporal.

**`Frequências, Rankings e Série Temporal.pdf`**
Versão em PDF do material de frequências, rankings e série temporal.

### 🔎 Relatório EDA

**`Relatório_EDA_PRF_2025_Acidentes_FATAIS.pdf`**
Relatório de **Análise Exploratória de Dados (EDA — Exploratory Data Analysis)** aplicado à base de acidentes fatais da PRF em 2025.

### 📌 Relatório de KPIs

**`KPIs-da-Base-Analitica-PRF.pdf`**
Relatório de **Data Storytelling** com os 5 KPIs desenvolvidos para análise dos acidentes fatais.
