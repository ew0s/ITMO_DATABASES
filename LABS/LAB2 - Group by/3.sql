SELECT
    ProductSubcategoryID, COUNT(*) AS 'COUNT'
FROM
    Production.ProductSubcategory
WHERE
    ProductSubcategoryID IS NOT NULL
GROUP BY
    ProductSubcategoryID
ORDER BY
    ProductSubcategoryID