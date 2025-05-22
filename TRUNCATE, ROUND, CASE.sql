-- TRUNCATE: para determinar quantas casas decimais
SELECT TRUNCATE(AVG(nota),2) AS media, tipo  
FROM avaliacoes a
JOIN hospedagens h 
ON h.hospedagem_id = a.hospedagem_id 
GROUP BY tipo;

-- ROUND: umas das maneira de fazer um arredondamento pós a virgula
SELECT ROUND(AVG(nota),2) AS media, tipo  
FROM avaliacoes a
JOIN hospedagens h 
ON h.hospedagem_id = a.hospedagem_id 
GROUP BY tipo;

-- Iremos categorizar as notas usando CASE
SELECT hospedagem_id, nota,
CASE nota
	WHEN 5 THEN 'Execelente'
    WHEN 4 THEN 'Otimo'
    WHEN 3 THEN 'Muito Bom'
    WHEN 2 THEN 'Bom'
    ELSE 'Ruim'
END AS StatusAvalições
    FROM avaliacoes
    ORDER BY hospedagem_id;