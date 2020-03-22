SELECT
    PC.Name, COUNT(*) AS 'AMOUNT'
FROM
    Production.Product AS P
JOIN
    Production.ProductSubcategory AS PSC
ON
    P.ProductSubcategoryID = PSC.ProductSubcategoryID
JOIN
    Production.ProductCategory AS PC
ON
    PSC.ProductCategoryID = PC.ProductCategoryID
GROUP BY
    PC.Name