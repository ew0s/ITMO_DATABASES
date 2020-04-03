SELECT
    Name
FROM
    Production.ProductSubcategory AS PS
WHERE
    ProductSubcategoryID IN (
        SELECT
            PP.ProductSubcategoryID
        FROM
            Production.Product AS PP
        WHERE
            PP.ProductSubcategoryID IS NOT NULL
        GROUP BY
            PP.ProductSubcategoryID
        HAVING
            COUNT(*) = (
                SELECT TOP 1
                    COUNT(*)
                FROM
                    Production.Product AS PP2
                WHERE
                    PP2.ProductSubcategoryID IS NOT NULL
                GROUP BY
                    PP2.ProductSubcategoryID
                ORDER BY
                    1 DESC
                )
        )