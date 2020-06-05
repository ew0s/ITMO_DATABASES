SELECT TOP 1
    CustomerID
FROM
    Sales.SalesOrderDetail AS SOD1
JOIN
    Sales.SalesOrderHeader AS SOH1
ON
    SOD1.SalesOrderID = SOH1.SalesOrderID
WHERE
    UnitPrice = (
        SELECT
            MAX(UnitPrice)
        FROM
            Sales.SalesOrderDetail AS SOD
        )