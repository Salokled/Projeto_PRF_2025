--Módulo 3 - SQL com SQLite (Adaptado para SQLiteOnline)
-- Projeto: Data Analytics com Dados Abertos da PRF
-- Base: Acidentes 2025 agrupados por ocorrência
-- Nikolas Messias Martins

-- Verificaçõ da versão do SQLITE
SELECT sqlite_version(); 

-- Visualização (colunas e tipos) da tabela importada 'acidentes_prf_2025'
PRAGMA table_info(acidentes_prf_2025);

-- Total de ocorrências a partir dos registros da base
SELECT COUNT(*) AS total_ocorrencias FROM acidentes_prf_2025; 

-- Exclusão da view base para evitar conflito no banco
DROP VIEW IF EXISTS vw_acidentes_base; 

-- Criação da variável "acidente_fatal"
CREATE VIEW vw_acidentes_base 
AS SELECT *, CASE WHEN CAST(mortos AS INTEGER) >= 1 THEN 1 ELSE 0 END AS acidente_fatal 
FROM acidentes_prf_2025; 

-- Visualização de uma métrica geral: total de acidentes, total de acidentes fatais e 
-- porcentagem (%) de letalidade
SELECT COUNT(*) AS total_acidentes, SUM(acidente_fatal) AS acidentes_fatais, 
ROUND(100.0 * SUM(acidente_fatal) / COUNT(*), 2) AS perc_fatais FROM  vw_acidentes_base;

-- Indicadores por unidade da Federação. Agregação: acidentes, mortos e
--  % de fatais por Estado (UF), filtrando os com ao menos 100 casos
SELECT uf, 
        COUNT(*) AS total_acidentes, 
        SUM(acidente_fatal) AS acidentes_fatais, 
        SUM(CAST(mortos AS INTEGER)) AS total_mortos, 
        ROUND(100.0 * SUM(acidente_fatal) / COUNT(*), 2)AS perc_fatais 
FROM vw_acidentes_base GROUP BY uf HAVING COUNT(*) >= 100 ORDER BY perc_fatais DESC; 

-- Ranking por rodovia federal: 30 rodovias (BRs) mais letais
SELECT br, 
       COUNT(*) AS total_acidentes, 
       SUM(CAST(mortos AS INTEGER)) AS total_mortos, 
       SUM(acidente_fatal) AS acidentes_fatais, 
       ROUND(100.0 * SUM(acidente_fatal) / COUNT(*), 2) AS perc_fatais 
FROM vw_acidentes_base WHERE br IS NOT NULL GROUP BY br 
HAVING COUNT(*) >= 100 ORDER BY total_mortos DESC LIMIT 30; 

-- Geração de série temporal mensal para identificar tendências de longo prazo, 
-- sazonalidade e evolução da taxa de fatalidade dos acidentes.
SELECT 
CAST(strftime('%Y', data_inversa) AS INTEGER) AS ano, 
CAST(strftime('%m', data_inversa) AS INTEGER) AS mes, 
COUNT(*) AS total_acidentes, 
SUM(CAST(mortos AS INTEGER)) AS total_mortos, 
SUM(acidente_fatal) AS acidentes_fatais, 
ROUND(100.0 * SUM(acidente_fatal) / COUNT(*), 2) AS perc_fatais 
FROM vw_acidentes_base GROUP BY ano, mes ORDER BY ano, mes; 

-- ANÁLISES BIVARIADAS -- 

-- Por tipo de acidente (Tipo de Acidente e o % de ocorrências fatais)
SELECT tipo_acidente, 
    COUNT(*) AS total_acidentes, 
    SUM(acidente_fatal) AS acidentes_fatais, 
    ROUND(100.0 * SUM(acidente_fatal) / COUNT(*), 2) AS perc_fatais 
FROM vw_acidentes_base GROUP BY tipo_acidente HAVING COUNT(*) >= 100
ORDER BY perc_fatais DESC;

-- Por causa do acidente (Causa de acidente e o % de ocorrências fatais)
-- 30 Principais Causas de Acidentes ordenado por taxa de letalidade
Select causa_acidente,
       Count(*) AS total_acidentes,
       SUM(acidente_fatal) AS acidentes_fatais,
       ROUND(100.0 * SUM(acidente_fatal) / COUNT(*), 2) AS perc_fatais
FROM vw_acidentes_base GROUP BY causa_acidente HAVING COUNT(*) >=100
ORDER BY perc_fatais DESC LIMIT 30;

-- Por fase do dia (Pleno dia, plena noite, amanhecer e anoitecer)
SELECT fase_dia, 
       COUNT(*) AS total_acidentes, 
       SUM(acidente_fatal) AS acidentes_fatais, 
       ROUND(100.0 * SUM(acidente_fatal) / COUNT(*), 2) AS perc_fatais 
FROM vw_acidentes_base GROUP BY fase_dia HAVING COUNT(*) >= 100
ORDER BY perc_fatais DESC;

-- Por condição metereológica 
SELECT condicao_metereo, 
       COUNT(*) AS total_acidentes, 
       SUM(acidente_fatal) AS acidentes_fatais, 
       ROUND(100.0 * SUM(acidente_fatal) / COUNT(*), 2) AS perc_fatais 
FROM vw_acidentes_base GROUP by condicao_metereo HAVING COUNT(*) >= 100
ORDER BY perc_fatais DESC; 

-- Por tipo de pista (Simple, dupla, múltipla)
SELECT tipo_pista, 
       COUNT(*) AS total_acidentes, 
       SUM(acidente_fatal) AS acidentes_fatais, 
       ROUND(100.0 * SUM(acidente_fatal) / COUNT(*), 2) AS perc_fatais 
 FROM vw_acidentes_base GROUP BY tipo_pista HAVING COUNT(*) >= 100
 ORDER BY perc_fatais DESC;
 
 -- Combinação tipo pista + fase do dia 
 SELECT tipo_pista, fase_dia, 
    COUNT(*) AS total_acidentes, 
    SUM(acidente_fatal) AS acidentes_fatais, 
    ROUND(100.0 * COUNT(*) / SUM(COUNT(*)) OVER (), 2) AS cobertura_perc, 
    ROUND(100.0 * SUM(acidente_fatal) / COUNT(*), 2) AS perc_fatais 
FROM vw_acidentes_base GROUP BY tipo_pista, fase_dia HAVING  COUNT(*) >= 100
ORDER BY  perc_fatais DESC;

-- Cálculo do Efeito Lift
-- O efeito Lift é uma métrica estatística que mede o quanto um evento se torna mais provável
--  de acontecer sob uma condição específica, em comparação com a média geral (global).
-- Nesse caso: confiança e lift por tipo de acidente 
-- ATENÇãO: O lift não prova relação causal
WITH taxa_global AS (SELECT 1.0 * SUM(acidente_fatal) / COUNT(*) AS taxa 
                     FROM vw_acidentes_base)
SELECT tipo_acidente, 
    COUNT(*) AS total_acidentes, 
    SUM(acidente_fatal) AS acidentes_fatais, 
    ROUND(100.0 * COUNT(*) / SUM(COUNT(*)) OVER (), 2) AS cobertura_perc, 
    ROUND(1.0 * SUM(acidente_fatal) / COUNT(*), 4) AS confianca, 
    ROUND((1.0 * SUM(acidente_fatal) / COUNT(*)) / taxa, 2) AS lift 
FROM vw_acidentes_base CROSS JOIN taxa_global 
GROUP BY tipo_acidente, taxa HAVING COUNT(*) >= 100 ORDER BY lift DESC;

-- Criação de view de indicadores mensais
CREATE VIEW vw_indicadores_mensais AS SELECT 
    CAST(strftime('%Y', data_inversa) AS INTEGER) AS ano, 
    CAST(strftime('%m', data_inversa) AS INTEGER) AS mes, 
    COUNT(*) AS total_acidentes, 
    SUM(CAST(mortos AS INTEGER)) AS total_mortos, 
    SUM(acidente_fatal) AS acidentes_fatais, 
    ROUND(100.0 * SUM(acidente_fatal) / COUNT(*), 2) AS perc_fatais 
FROM vw_acidentes_base 
GROUP BY ano, mes;
--- Visualização 
SELECT * FROM vw_indicadores_mensais;


-- Criação de view por UF e BR
CREATE VIEW vw_indicadores_uf_br  AS SELECT 
            uf,
            br,     
            COUNT(*) AS total_acidentes,     
            SUM(CAST(mortos AS INTEGER)) AS total_mortos,     
            SUM(acidente_fatal) AS acidentes_fatais,     
            ROUND(100.0 * SUM(acidente_fatal) / COUNT(*), 2) AS perc_fatais 
FROM vw_acidentes_base WHERE br IS NOT NULL GROUP BY uf, br; 
-- Visualização
SELECT * FROM vw_indicadores_uf_br;
-- Visualização ordenada por total de mortos 
SELECT * FROM vw_indicadores_uf_br ORDER BY total_mortos DESC; 

-- Criação da view base analítica  
CREATE VIEW vw_base_analitica AS 
SELECT     
    data_inversa,     
    dia_semana,     
    horario,     
    uf,     
    br,     
    municipio,     
    causa_acidente,     
    tipo_acidente,     
    classificacao_ac,     
    fase_dia,     
    condicao_metereo,     
    tipo_pista,     
    tracado_via,     
    uso_solo,     
    CAST(mortos AS INTEGER) AS mortos,     
    acidente_fatal 
FROM 
    vw_acidentes_base;

-- Criação da view base modelável preliminar 
DROP VIEW IF EXISTS vw_base_modelavel_preliminar;

CREATE VIEW vw_base_modelavel_preliminar AS 
SELECT     
    uf,     
    br, 
    municipio, 
    CAST(strftime('%m', data_inversa) AS INTEGER) AS mes, 
    dia_semana, 
    fase_dia, 
    causa_acidente, 
    tipo_acidente, 
    condicao_metereo, 
    tipo_pista, 
    tracado_via, 
    uso_solo, 
    acidente_fatal 
FROM 
    vw_acidentes_base;
    
-- Visualização
SELECT * FROM vw_base_modelavel_preliminar LIMIT 20;




