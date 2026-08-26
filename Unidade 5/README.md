# 📊 Unidade 5 — KPIs e Storytelling de Dados

## 🚦 Análise de Acidentes Fatais — PRF 2025

Nesta unidade são desenvolvidos **Key Performance Indicators (KPIs)** a partir da base analítica de acidentes da **Polícia Rodoviária Federal (PRF)** referente ao ano de 2025.

O objetivo é transformar os dados tratados nas etapas anteriores em **indicadores capazes de evidenciar padrões relacionados à ocorrência de acidentes fatais**, utilizando visualizações para facilitar a interpretação dos resultados.

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

## 🎯 Objetivo

Construir e analisar **5 KPIs relacionados à variável `acidente_fatal`**, explorando diferentes dimensões da base de dados:

- 🚦 Tipo de acidente;
- 🛣️ Tipo de pista;
- 🌙 Fase do dia;
- 🌧️ Condição meteorológica;
- 🛤️ Rodovia e UF.

Além do cálculo dos indicadores, a unidade utiliza **Data Storytelling** para apresentar os principais resultados de forma objetiva e visual.

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
├── kpis_prf_2025.ipynb
└── KPIs-da-Base-Analitica-da-PRF.pdf
