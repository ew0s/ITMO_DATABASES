SELECT
    ProductSubcategoryID
FROM
    Production.Product
WHERE
    Color LIKE 'Red'
GROUP BY
    ProductSubcategoryID
HAVING
    COUNT(COLOR) > 2