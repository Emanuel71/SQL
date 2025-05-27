USE ContosoRetailDW

-- DATEDIFF (intervalo, data_inicio, data_final)

-- Usado para descobrir os dias, mes e ano entre datas 
SELECT DATEDIFF(DAY,'2024-01-01', GETDATE()) AS DIAS
SELECT DATEDIFF(MONTH,'2024-01-01', GETDATE()) AS MES
SELECT DATEDIFF(YEAR,'2023-01-01', GETDATE()) AS ANO

-- Usado em um query
SELECT DISTINCT TOP 2000
	DateKey
	,GETDATE()
	,DATEDIFF(DAY, DateKey, GETDATE()) AS 'DIFERENÇA EM DIAS'
	,DATEDIFF(MONTH, DateKey, GETDATE()) AS 'DIFERENÇA EM MESES'
FROM FactOnlineSales
ORDER BY 3 DESC
