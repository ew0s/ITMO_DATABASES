SELECT TOP 1
    ProductSubcategoryID
FROM
    Production.Product
GROUP BY
    ProductSubcategoryID
ORDER BY
    COUNT(DISTINCT COLOR) DESC