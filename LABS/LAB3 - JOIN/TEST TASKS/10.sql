SELECT
    CAST(COUNT(*) AS FLOAT) / COUNT(DISTINCT ProductSubcategoryID) AS 'AMOUNT'
FROM
    Production.ProductSubcategory
WHERE
    ProductSubcategoryID IS NOT NULL