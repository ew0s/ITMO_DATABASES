SELECT
    PC.Name
    , COUNT(DISTINCT P.ProductSubcategoryID)
    , COUNT(ProductID)
FROM
    Production.Product AS P
JOIN
    Production.ProductSubcategory AS PSC
ON
    P.ProductSubcategoryID = PSC.ProductSubcategoryID
JOIN
    Production.ProductCategory AS PC
ON
    PC.ProductCategoryID = PSC.ProductCategoryID
GROUP BY
    PC.Name

