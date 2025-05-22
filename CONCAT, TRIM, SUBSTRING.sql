-- FUNÇÃO DE STRING

-- Iremos fazer uma consulta de duas colunas diferente e fazendo ela se torno uma só
-- CONCAT: para ajuntar as string. TRIM: para tirar os espaço

SELECT CONCAT(TRIM(nome), '.  O email é: ',contato) AS Nome_Contato FROM clientes; 

-- Iremos incluir os pontos do CPF dos clientes.
SELECT 
	(nome) AS Nome,
	-- CONCAT(SUBSTRING(cpf, 1, 3),'.', SUBSTRING(cpf, 4, 3), '.', 
	-- SUBSTRING(cpf, 7, 3), '-', SUBSTRING(cpf, 10, 2)) AS CPF_Mascarado
FROM 
	clientes;

