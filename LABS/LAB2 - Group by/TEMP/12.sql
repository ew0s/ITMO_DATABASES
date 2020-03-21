SELECT
    ProductSubcategoryID
FROM
    Production.Product
WHERE
    ProductSubcategoryID IS NOT NULL AND COLOR LIKE 'Red'
GROUP BY
    ProductSubcategoryID
HAVING
    COUNT(ProductID) > 5