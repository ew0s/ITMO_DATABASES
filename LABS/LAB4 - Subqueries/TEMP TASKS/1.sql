SELECT
    NAME
FROM
    Production.ProductSubcategory
WHERE
    ProductSubcategoryID
IN (SELECT TOP 1
        P.ProductSubcategoryID
    FROM
        Production.Product AS P
    WHERE
        P.ProductSubcategoryID IS NOT NULL
    GROUP BY
        P.ProductSubcategoryID
    ORDER BY
        COUNT(*) DESC)