# 🗄️ Unidade 3 — SQL com SQLite (Consultas analíticas sobre acidentes fatais)
### 🛤️ Análise de Dados: Data Analytics com Dados Abertos da PRF
![SQLite](https://img.shields.io/badge/sqlite-%2307405e.svg?style=for-the-badge&logo=sqlite&logoColor=white)
![Microsoft Excel](https://img.shields.io/badge/Microsoft_Excel-217346?style=for-the-badge&logo=microsoft-excel&logoColor=white)

## 🎯 Objetivo

Utilizar SQL para consultar, filtrar, agregar e organizar os dados de acidentes da PRF de 2025, com foco na análise de acidentes fatais e na identificação de padrões nos registros.

A atividade visa extrair inteligência estruturada da base de dados, permitindo cruzar variáveis complexas e quantificar os principais fatores de risco viário por meio de queries otimizadas.

---

## 🛠️ Ferramenta

A atividade foi desenvolvida utilizando integralmente o **SQLite**.

> 💡 *Nota de Engenharia: A unidade apresenta o DuckDB como alternativa para execução das consultas, porém esta etapa foi realizada de ponta a ponta utilizando a engine do SQLite.*

---

## 📦 Entrega

A entrega deste módulo está consolidada e documentada através de:
* **Script Estruturado:** Arquivo `.sql` contendo todas as consultas realizadas, organizadas e devidamente comentadas.
* **Datasets de Saída:** Arquivos `.csv` contendo os resultados exportados de cada consulta para consumo posterior.

---

## 🧪 Consultas Realizadas

As queries foram desenhadas para explorar diferentes dimensões e responder a perguntas críticas sobre os acidentes registrados pela PRF:
* 📍 **Geográfica:** Análise detalhada de acidentes distribuídos por Unidade Federativa (UF).
* 🔍 **Causa Raiz:** Mapeamento e classificação das principais causas dos acidentes.
* 🚦 **Tipologia:** Agrupamento e contagem por tipos de acidentes registrados.
* 🕒 **Temporalidade:** Análise de ocorrências segmentadas por fase do dia (ex: noite, pleno dia, amanhecer).
* 🌧️ **Fatores Ambientais:** Cruzamento de dados segundo o clima e a condição meteorológica no momento do sinistro.

---

## 📁 Estrutura do Repositório

Para garantir a reprodutibilidade do projeto e boas práticas de arquitetura de pastas:

```text
03_sql_analise_prf/
├── README.md                              # Documentação do projeto (este arquivo)
├── sql/
│   └── consultas_prf_2025.sql             # Script com as queries SQL desenvolvidas
└── resultados/                            # Datasets exportados em formato plano
    ├── acidente_por_clima_condicao_metereologica.csv
    ├── acidentes_por_fase_dia.csv
    ├── acidentes_por_uf_br.csv
    ├── causa_acidente.csv
    └── tipo_acidente.csv
```

---
🔬 *Projeto com fins acadêmicos e de portfólio profissional para a Trilha de Análise de Dados / Data Analytics.*
