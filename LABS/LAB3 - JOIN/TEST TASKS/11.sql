SELECT
    COUNT(*) / COUNT(DISTINCT PC.ProductCategoryID) AS 'MIDDLE COUNT'
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
