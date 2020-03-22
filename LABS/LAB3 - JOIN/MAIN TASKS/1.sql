SELECT
    P.Name, PC.Name
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
WHERE
    ListPrice >= 100 AND Color LIKE 'Red'