SELECT TOP 3
    PSC.Name
FROM
    Production.Product AS P
JOIN
    Production.ProductSubcategory AS PSC
ON
    P.ProductSubcategoryID = PSC.ProductSubcategoryID
GROUP BY
    PSC.Name
ORDER BY
    COUNT(*)
