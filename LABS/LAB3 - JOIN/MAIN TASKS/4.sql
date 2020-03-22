SELECT DISTINCT
    PSC.Name, COUNT(*) AS 'AMOUNT'
FROM
    Production.Product AS P
JOIN
    Production.ProductSubcategory AS PSC
ON
    P.ProductSubcategoryID = PSC.ProductSubcategoryID
GROUP BY
    PSC.Name
