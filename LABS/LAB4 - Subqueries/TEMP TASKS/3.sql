SELECT
    P1.ProductID, (
        SELECT
            COUNT(DISTINCT SOH1.CustomerID)
        FROM
            Sales.SalesOrderDetail AS SOD1
        JOIN
            Sales.SalesOrderHeader AS SOH1
        ON
            SOD1.SalesOrderID = SOH1.SalesOrderID
        WHERE
            SOD1.ProductID = P1.ProductID
    ), (
        SELECT
            COUNT(DISTINCT SOH2.CustomerID)
        FROM
            Sales.SalesOrderDetail AS SOD2
        JOIN
            Sales.SalesOrderHeader AS SOH2
        ON
            SOD2.SalesOrderID = SOH2.SalesOrderID
        WHERE
            SOD2.ProductID != P1.ProductID
    )
FROM
    Production.Product AS P1