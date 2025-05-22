USE ContosoRetailDW;

-- CTE : CRIAÇÃO DE TABELA VIRTUAL 
WITH ANALISE_PRODUTOS(ANO, MES, ID_PRODUTOS, NOME_PRODUTOS, QTDE)
AS 
(
	SELECT
		 DATEPART(YEAR,s.DateKey) AS ANO
		,DATEPART(MONTH, s.DateKey) AS MES
		,p.ProductKey AS ID_PRODUTOS
		,p.ProductName AS NOME_PRODUTOS
		,SUM(s.SalesQuantity) AS QTDE
	FROM FactSales s
	JOIN DimProduct p 
		ON p.ProductKey = s.ProductKey
	GROUP BY DATEPART(YEAR,s.DateKey),DATEPART(MONTH, s.DateKey),p.ProductName, p.ProductKey
)
-- Após fazer a TB Virtual, temos que fazer um SELECT dessa TB
SELECT 
  MAX(ID_PRODUTOS)
  ,MAX(QTDE)
FROM ANALISE_PRODUTOS -- Usamos esse select para fazer analise mais espefica, após a criação dela 