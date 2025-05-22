USE Chinook;

-- ROW_NUMBER: Usado para fazer um rankingmento, de uma 'coluna' mencionada dentro do OVER()
SELECT 
	t.*
	,ROW_NUMBER() OVER(ORDER BY Milliseconds ASC) AS 'ROW_NUMBER' 
FROM Track t