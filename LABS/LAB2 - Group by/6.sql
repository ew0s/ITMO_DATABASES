SELECT
    CustomerID
FROM
    Sales.SalesOrderHeader
GROUP BY
    CustomerID, OrderDate
HAVING
    COUNT(SalesOrderID) > 1
ORDER BY
    CustomerID