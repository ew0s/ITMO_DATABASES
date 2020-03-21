SELECT TOP 3 WITH TIES
    ProductSubcategoryID
FROM
    Production.Product
WHERE
    ProductSubcategoryID IS NOT NULL
GROUP BY
    ProductSubcategoryID
ORDER BY
    COUNT(*) DESC 