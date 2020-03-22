SELECT TOP 1
    PC.Name
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
JOIN
    Purchasing.ProductVendor AS PPV
ON
    P.ProductID = PPV.ProductID
GROUP BY
    PC.Name
ORDER BY
    COUNT(*) DESC
