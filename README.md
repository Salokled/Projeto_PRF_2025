# Projeto PRF 2025 — Módulo 4: Preparação dos Dados com Python

Projeto desenvolvido no **Módulo 4 — Preparação dos Dados com Python**, utilizando dados de acidentes da Polícia Rodoviária Federal (PRF) referentes ao ano de 2025.

## Objetivo

Realizar a preparação, organização e transformação da base de acidentes da PRF 2025, criando estruturas adequadas para as etapas posteriores de **análise exploratória, visualização no Power BI e modelagem preditiva**.

Entre as principais atividades realizadas estão:

* Importação e conferência da base;
* Padronização de tipos e valores;
* Tratamento de datas, horários e valores nulos;
* Criação de variáveis temporais e indicadores de gravidade;
* Criação e validação da variável-alvo;
* Preparação de uma base analítica;
* Preparação de uma base destinada à modelagem;
* Verificação de possíveis situações de data leakage;
* Exportação das bases tratadas;
* Documentação das decisões de tratamento.

## Variável-alvo

A variável `acidente_fatal` representa a ocorrência de acidente fatal:

* `1` quando `mortos >= 1`;
* `0` quando `mortos = 0`.

Essa variável será utilizada como referência para as análises e para a etapa posterior de modelagem.

## Estrutura do projeto

```text
Projeto_PRF_2025/
│
├── dados_brutos/
│   └── acidentes2025.csv
│
├── dados_tratados/
│   ├── base_analitica_prf_2025.csv
│   ├── base_modelavel_prf_2025.csv
│   └── dicionario_variaveis_modulo4.csv
│
├── logs/
│   └── decisoes_tratamento_modulo4.md
│
├── notebooks/
│   ├── README.md
│   └── modulo4_prf.ipynb
│
└── .gitignore
```

## Bases geradas

**Base analítica**

`dados_tratados/base_analitica_prf_2025.csv`

Contém a base tratada e as variáveis derivadas utilizadas para análise exploratória e construção de dashboards.

**Base modelável**

`dados_tratados/base_modelavel_prf_2025.csv`

Contém as variáveis selecionadas para a etapa de modelagem, mantendo a variável-alvo e evitando a utilização de informações que revelem diretamente o desfecho.

## Tecnologias utilizadas

* Python
* Jupyter Notebook
* Pandas
* NumPy
* Git e GitHub

## Status

Projeto em desenvolvimento. Este repositório corresponde à etapa de **preparação dos dados do Módulo 4** e será atualizado conforme o desenvolvimento das próximas etapas do projeto.
