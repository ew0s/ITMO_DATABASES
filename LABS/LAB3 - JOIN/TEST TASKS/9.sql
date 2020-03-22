SELECT TOP 3
    PC.ProductCategoryID
FROM
    Production.Product AS P
JOIN
    Production.ProductSubcategory AS PS
ON
    P.ProductSubcategoryID = PS.ProductSubcategoryID
JOIN
    Production.ProductCategory AS PC
ON
    PS.ProductCategoryID = PC.ProductCategoryID
GROUP BY
    PC.ProductCategoryID
ORDER BY
    COUNT(ProductID) DESC
