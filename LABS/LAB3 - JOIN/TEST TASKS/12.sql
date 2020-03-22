SELECT
    PC.ProductCategoryID, COUNT(DISTINCT COLOR) AS 'AMOUNT'
FROM
    Production.Product AS P
JOIN
    Production.ProductSubcategory AS PSC
ON
    P.ProductSubcategoryID = PSC.ProductSubcategoryID
RIGHT JOIN
    Production.ProductCategory AS PC
ON
    PSC.ProductCategoryID = PC.ProductCategoryID
GROUP BY
    PC.ProductCategoryID
