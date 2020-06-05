SELECT
    P.Name
FROM
    Production.Product AS P
WHERE
    ProductID IN (
        SELECT
            SOD.ProductID
        FROM
            Sales.SalesOrderDetail AS SOD
        JOIN
            Sales.SalesOrderHeader AS SOH
        ON
            SOD.SalesOrderID = SOH.SalesOrderID
        GROUP BY
            SOD.ProductID
        HAVING
            COUNT(DISTINCT CustomerID) = 1
        )