SELECT
    PSC1.Name
FROM
    Production.ProductSubcategory AS PSC1
WHERE
    ProductSubcategoryID IN (
        SELECT
            P1.ProductSubcategoryID
        FROM
            Production.Product AS P1
        WHERE
            P1.ProductSubcategoryID IS NOT NULL
        GROUP BY
            P1.ProductSubcategoryID
        HAVING
            COUNT(*) = (
                SELECT TOP 1
                    COUNT(*)
                FROM
                    Production.Product AS P2
                WHERE
                    P2.ProductSubcategoryID IS NOT NULL
                GROUP BY
                    P2.ProductSubcategoryID
                ORDER BY
                    COUNT(*) DESC
                )
        )