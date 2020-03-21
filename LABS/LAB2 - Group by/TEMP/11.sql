SELECT
    ProductSubcategoryID
FROM
    Production.Product
WHERE
    ProductSubcategoryID IS NOT NULL
GROUP BY
    ProductSubcategoryID
HAVING
    COUNT(ProductID) > 5