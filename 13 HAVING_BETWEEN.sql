USE ContosoRetailDW;

SELECT 
	 s.ProductKey
	,SUM(s.SalesQuantity) 'QTD DE VENDAS'
FROM FactSales s
WHERE s.DateKey >= '2009-01-01'
GROUP BY s.ProductKey
-- HAVING SUM(s.SalesQuantity) > 2000
-- HAVING SUM(s.SalesQuantity) <= 2000
HAVING SUM(s.SalesQuantity) BETWEEN 2000 AND 2500
ORDER BY 'QTD DE VENDAS' 