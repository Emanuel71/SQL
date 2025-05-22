-- FUNÇÃO DE AGREGAÇÃO 

-- Iremos fazer uma consulta. Trazendo as medidas de cada tipo de imoves
SELECT AVG(nota) AS media, tipo  -- AVG: para fazer a media
FROM avaliacoes a
JOIN hospedagens h  -- 'h' e 'a' são os alias do join
ON h.hospedagem_id = a.hospedagem_id -- identificando a chaves primaria e estrangeira
GROUP BY tipo;

-- Iremos trazer a soma, maximo e minimo dos valores de cada hospedagens
SELECT tipo,
SUM(preco_total) AS ValorTotal, -- SUM: valor total da coluna
MAX(preco_total) AS ValorMáximo, -- MAX: Valor maximo da coluna
Min(preco_total) AS ValorMinimo --  MIN: Valor minimo da coluna
FROM alugueis a
JOIN hospedagens h
ON h.hospedagem_id = a.aluguel_id
GROUP BY tipo
ORDER BY tipo ASC; -- ASC: usado para deixar em ordem alfabética