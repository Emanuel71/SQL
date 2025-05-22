USE Chinook;

SELECT 
	TrackId
	,[Name]
	,AlbumId
	,Milliseconds
	,UnitPrice
	,ROW_NUMBER() OVER(ORDER BY UnitPrice ASC) AS 'ROW_NUMBER'
	,RANK() OVER (ORDER BY UnitPrice ASC) AS 'RANK' -- mesmo valor mantem na mesma posi��o, e a pr�x. coloca��o pula a sequencia
	,DENSE_RANK() OVER(ORDER BY UnitPrice ASC) 'DENSE_RANK' -- mesmo valor mantem na mesma posi��o, e a pr�x. coloca��o mentem a sequencia
FROM Track t
-- WHERE Composer IS NOT NULL -- remover os null
	 