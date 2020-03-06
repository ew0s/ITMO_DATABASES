SELECT
    ProductSubcategoryID, COUNT(*) AS 'COUNT'
FROM
    Production.Product
WHERE
    Color IS NOT NULL AND ProductSubcategoryID IS NOT NULL
GROUP BY
    ProductSubcategoryID
ORDER BY
    ProductSubcategoryID