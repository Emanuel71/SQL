USE Chinook;

SELECT 
	TrackId
	,[Name]
	,AlbumId
	,Milliseconds
	,UnitPrice
	,ROW_NUMBER() OVER(ORDER BY UnitPrice ASC) AS 'ROW_NUMBER'
	,RANK() OVER (ORDER BY UnitPrice ASC) AS 'RANK' -- mesmo valor mantem na mesma posição, e a próx. colocação pula a sequencia
	,DENSE_RANK() OVER(ORDER BY UnitPrice ASC) 'DENSE_RANK' -- mesmo valor mantem na mesma posição, e a próx. colocação mentem a sequencia
FROM Track t
-- WHERE Composer IS NOT NULL -- remover os null
	 