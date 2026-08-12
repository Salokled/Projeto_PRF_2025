# 🐍 Unidade 4 — Engenharia e Preparação de Dados com Python
### 🛤️ Trilha: Pipeline de Dados com Dados Abertos da PRF

![Status do Projeto](https://shields.io)
![Language](https://shields.io)
![Stack](https://shields.io)

Esta unidade é o núcleo técnico de engenharia, saneamento e transformação do ecossistema de dados do projeto. Utilizando **Python**, realizei o tratamento completo da base bruta de acidentes da **Polícia Rodoviária Federal (PRF) de 2025**, transformando dados desalinhados em ativos analíticos prontos para consumo por ferramentas de BI e algoritmos de Machine Learning.

O foco principal foi garantir a integridade dos dados, criar variáveis de negócio (*Feature Engineering*) e mitigar vieses técnicos antes das etapas de modelagem estatística.

---

## 🎯 Hard Skills & Atividades Desenvolvidas

O pipeline construído no ecossistema Python abrangeu as seguintes boas práticas de Data Science:

* **ETL (Extract, Transform, Load):** Importação automatizada, validação de integridade estrutural e auditoria inicial do dataset bruto.
* **Data Cleaning:** Padronização rigorosa de tipos de dados (`dtypes`), tratamento de strings, alinhamento de formatos e resolução de valores nulos/ausentes.
* **Feature Engineering (Engenharia de Recursos):** 
  * Extração e decomposição de variáveis temporais complexas (data, horário, sazonalidade).
  * Criação de indicadores compostos para mensurar a gravidade e o impacto dos sinistros.
* **Mapeamento de Variável-Alvo (Target Definition):** Estruturação metodológica do vetor que guiará os modelos preditivos.
* **Mitigação de Data Leakage:** Auditoria preventiva nas colunas para evitar o vazamento de dados futuros dentro do conjunto de treino, garantindo a validação estatística real do modelo.
* **Governança de Dados:** Geração de um dicionário descritivo e documentação detalhada de logs com todas as premissas de tratamento adotadas.

---

## 🎯 Definição da Variável-Alvo (Target)

Para dar suporte aos futuros modelos de classificação binária, estruturei a variável explicativa **`acidente_fatal`**:

\[\text{acidente\_fatal} = \begin{cases} 1, & \text{se número de mortos} \ge 1 \\ 0, & \text{se número de mortos} = 0 \end{cases}\]

> ⚠️ *Nota de Engenharia: Variáveis que indicavam o desfecho do acidente de forma óbvia ou redundante foram expurgadas da base modelável durante o processo de prevenção de Data Leakage, blindando o modelo contra superajustamento (overfitting).*

---

## 📁 Arquitetura do Repositório

Estrutura desenhada para garantir a reprodutibilidade, governança e organização do código-fonte:

```text
Projeto_PRF_2025/
│
├── dados_brutos/
│   └── acidentes2025.csv                  # Dataset original e imutável da PRF
│
├── dados_tratados/
│   ├── base_analitica_prf_2025.csv        # Consumo: BI, Dashboards e Analytics
│   ├── base_modelavel_prf_2025.csv        # Consumo: Modelos de Machine Learning
│   └── dicionario_variaveis_modulo4.csv   # Metadados e governança das colunas
│
├── logs/
│   └── decisoes_treatment_modulo4.md     # Registro histórico de decisões técnicas
│
├── notebooks/
│   ├── README.md                          # Instruções de execução dos scripts
│   └── modulo4_prf.ipynb                  # Pipeline documentado em Jupyter Notebook
│
└── .gitignore                             # Proteção para não vazar datasets pesados
```

---

## 💾 Divisão das Bases Geradas

Para otimizar o consumo das informações, os dados foram divididos em duas esteiras independentes:

### 1. Base Analítica (`base_analitica_prf_2025.csv`)
* **Foco:** Exploração Estatística, Storytelling e Visualização de Dados (Power BI/Tableau).
* **Características:** Mantém variáveis descritivas completas e dados derivados enriquecidos para facilitar a geração de insights de negócios.

### 2. Base Modelável (`base_modelavel_prf_2025.csv`)
* **Foco:** Modelagem Preditiva e Algoritmos de Machine Learning.
* **Características:** Apenas atributos numéricos/codificados, balanceados e estritamente validados contra *Data Leakage*.

---

## 🛠️ Stack Tecnológico Utilizado

* **Linguagem Principal:** `Python 3.x`
* **Manipulação & Vetorização:** `Pandas` e `NumPy`
* **Ambiente de Desenvolvimento:** `Jupyter Notebook` / `VS Code`
* **Controle de Versão:** `Git` e `GitHub`

---

## 🚀 Próximas Etapas

Com os dados higienizados e o ambiente de modelagem isolado, as próximas fases do projeto contemplam:
1. **EDA Avançada:** Análise exploratória aprofundada para descobrir correlações e padrões ocultos de risco viário.
2. **Dataviz:** Desenvolvimento do dashboard executivo interativo.
3. **Machine Learning:** Treinamento, teste e avaliação de algoritmos classificadores baseados na variável `acidente_fatal`.

---
🔬 *Projeto com fins acadêmicos e de portfólio profissional focado em Engenharia e Ciências de Dados.*
