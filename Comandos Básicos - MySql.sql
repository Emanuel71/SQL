--  Incluir vendedores
INSERT INTO tabela_de_vendedores (
MATRICULA,
NOME,
PERCENTUAL_COMISSÃO) VALUES(
'00236',
'Cláudia Morais',
0.08) -- incluir % 
-- Para fazer as inclusão de mais produtos é só ir substituindo os valores que estão de laranja


-- Alteração de Codigo dos Vendedores
UPDATE tabela_de_vendedores SET NOME = 'Emanuel Cesar Serra Lopes'
WHERE MATRICULA = '00233';

UPDATE tabela_de_vendedores SET PERCENTUAL_COMISSÃO = 0.11
WHERE MATRICULA = '00236';


-- Excluir vendedores

DELETE FROM tabela_de_vendedores WHERE MATRICULA = '00235';


-- Modificando a tabela 
-- Adicionei colunas novas
ALTER TABLE tabela_de_vendedores ADD COLUMN (DE_FÉRIAS VARCHAR (5));

-- Comando para fazer qualquer alteração na tabela 
UPDATE tabela_de_vendedores SET PERCENTUAL_COMISSÃO = 0.8
WHERE MATRICULA = '00236';

UPDATE tabela_de_vendedores SET PERCENTUAL_COMISSÃO = 0.8
WHERE MATRICULA = '00233';

INSERT INTO tabela_de_vendedores (
MATRICULA,
NOME,
PERCENTUAL_COMISSÃO,
DATA_ADMISSÃO,
DE_FÉRIAS) VALUES (
'00238',
'Péricles Alves',
0.11,
'2016-08-21',
'Não');

-- Selecionando apenas as colunas NOME e MATRICULA da tabela
SELECT NOME, MATRICULA FROM tabela_de_vendedores;

-- Verificando a penas o cadastro da Vendedora Claudia
SELECT * FROM tabela_de_vendedores WHERE NOME = 'Cláudia Morais';

-- Verificando os vendedores que tenhas porcentagem maiores que 10%. 
-- Usando os comandos: BETWEEN, AND usado para achar numeros flutantes. 
SELECT * FROM tabela_de_vendedores WHERE PERCENTUAL_COMISSÃO BETWEEN 0.09 AND 0.11;

-- Verificando as vendedores que foram adimitido a partir de 2016
SELECT * FROM tabela_de_vendedores WHERE YEAR (DATA_ADMISSÃO) >= 2016;

-- Verificando vendedores que estão de férias e que foram admitidos antes de 2016.
SELECT * FROM tabela_de_vendedores WHERE DE_FÉRIAS = 'Sim' AND YEAR (DATA_ADMISSÃO) < 2016;

