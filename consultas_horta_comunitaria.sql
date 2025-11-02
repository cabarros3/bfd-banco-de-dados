-- Liste todos os voluntários cadastrados e suas respectivas funções
SELECT voluntario_id, nome_voluntario, funcao
FROM voluntario;

-- Mostre as plantas cultivadas em cada canteiro, com o nome do canteiro e a data do plantio
SELECT c.nome_canteiro, co.data_cultivo, p.nome_planta
FROM cultivo co
JOIN canteiro c ON co.canteiro_id = c.canteiro_id
JOIN planta p ON co.planta_id = p.planta_id
ORDER BY co.data_cultivo;

-- Exiba os nomes dos voluntários e as plantas que eles cultivaram
SELECT v.nome_voluntario, p.nome_planta
FROM cultivo co
JOIN voluntario v ON co.voluntario_id = v.voluntario_id
JOIN planta p ON co.planta_id = p.planta_id;

-- Liste todas as colheitas realizadas, mostrando o canteiro e a quantidade colhida (em kg)
SELECT c.nome_canteiro, col.quantidade_colhida
FROM colheita col
JOIN cultivo co ON col.cultivo_id = co.cultivo_id
JOIN canteiro c ON co.canteiro_id = c.canteiro_id;

-- Mostre as instituições que receberam doações e as quantidades doadas
SELECT i.nome_instituicao, d.quantidade_doada
FROM doacao d
JOIN instituicao i ON d.instituicao_id = i.instituicao_id;

-- Liste o total de quilos doados por instituição (GROUP BY)
SELECT i.nome_instituicao, SUM(d.quantidade_doada) AS total_doado
FROM doacao d
JOIN instituicao i ON d.instituicao_id = i.instituicao_id
GROUP BY i.nome_instituicao;

-- Mostre os canteiros que ainda não tiveram colheitas (LEFT JOIN)
SELECT c.nome_canteiro
FROM canteiro c
LEFT JOIN cultivo co ON c.canteiro_id = co.canteiro_id
LEFT JOIN colheita co ON co.cultivo_id = co.cultivo_id
WHERE co.colheita_id IS NULL;

-- Exiba o voluntário que realizou o maior número de cultivos (COUNT e ORDER BY)
SELECT v.nome_voluntario, COUNT(co.cultivo_id) AS total_cultivos
FROM voluntario v
JOIN cultivo co ON v.voluntario_id = co.voluntario_id
GROUP BY v.nome_voluntario
ORDER BY total_cultivos DESC
LIMIT 1;

-- Mostre as plantas que ainda não foram colhidas (subconsulta ou LEFT JOIN)
SELECT p.nome_planta
FROM planta p
LEFT JOIN cultivo co ON p.planta_id = co.planta_id
LEFT JOIN colheita col ON co.cultivo_id = col.cultivo_id
WHERE col.colheita_id IS NULL;

-- Liste todas as doações realizadas em novembro de 2025, com o nome da instituição e a data da doação
SELECT i.nome_instituicao, d.quantidade_doada, co.data_colheita
FROM doacao d
JOIN instituicao i ON d.instituicao_id = i.instituicao_id
JOIN colheita co ON d.colheita_id = co.colheita_id
WHERE MONTH(co.data_colheita) = 11 AND YEAR(co.data_colheita) = 2025;