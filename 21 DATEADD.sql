USE ContosoRetailDW

-- DATEADD (intervalo, quantidade, coluna c/ date) : Usado para adicionar dias, meses e até anos

SELECT 
	 GETDATE() AS 'Hoje'
	,DATEADD(DAY, 15, GETDATE()) AS 'Mais 15 dias'
	,DATEADD(DAY, -15, GETDATE())AS 'Menos 15 dias'
	,DATEADD(MONTH, -5, GETDATE()) AS 'Menos 5 meses'
	,DATEADD(YEAR, 3, GETDATE()) AS 'Mais 3 anos'