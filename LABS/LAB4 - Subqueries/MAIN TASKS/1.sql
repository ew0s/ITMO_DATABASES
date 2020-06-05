SELECT
    Name
FROM
    Production.Product as P1
WHERE
    ProductID = (
        SELECT TOP 1
            SOD.ProductID
        FROM
            Sales.SalesOrderDetail AS SOD
        GROUP BY
            SOD.ProductID
        ORDER BY
            COUNT(*) DESC
        )