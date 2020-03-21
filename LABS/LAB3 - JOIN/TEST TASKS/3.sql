SELECT
    P.NAME, PC.NAME
FROM
    Production.Product as P
JOIN
    Production.ProductSubcategory AS PSC
ON
    P.ProductSubcategoryID = PSC.ProductSubcategoryID
JOIN
    Production.ProductCategory AS PC
ON
    PSC.ProductCategoryID = PC.ProductCategoryID
