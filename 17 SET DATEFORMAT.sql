USE ContosoRetailDW

-- MDY, DMY, YMD, YDM, MYD, DYM

SET DATEFORMAT YMD -- usado para identificar o jeito que está descrito a data

SELECT 
	s.DateKey
FROM FactOnlineSales s
WHERE s.DateKey BETWEEN '2007-12-01' AND '2007-12-31'