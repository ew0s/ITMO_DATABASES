SELECT
    SalesOrderID
FROM
    Sales.SalesOrderDetail
GROUP BY
    SalesOrderID
HAVING
    COUNT(*) > 3
ORDER BY
    SalesOrderID