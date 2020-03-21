SELECT
    P.NAME, PSC.NAME
FROM
    Production.ProductSubcategory AS PSC
JOIN
    Production.Product AS P
ON
    P.ProductSubcategoryID = PSC.ProductSubcategoryID
WHERE
    ListPrice > 100