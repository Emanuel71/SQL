USE Chinook;

SELECT 
	TrackId
	,[Name]
	,Composer
	,Milliseconds
	,Bytes
	,UnitPrice
	,ROW_NUMBER() OVER(ORDER BY Milliseconds ASC) AS 'ROW_NUMBER' -- aqui rankeamos por tamanho da musica
	,ROW_NUMBER() OVER(PARTITION BY Composer ORDER BY Milliseconds ASC) AS 'ROW NUMBER_PARTITION BY' -- aqui fizemos a separação por compositor e rankeamos
FROM Track t
WHERE Composer IS NOT NULL -- remover os null
