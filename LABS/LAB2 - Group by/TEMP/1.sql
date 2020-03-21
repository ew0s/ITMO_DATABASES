SELECT
    ProductID
FROM
    Sales.SalesOrderDetail
GROUP BY
    ProductID
HAVING
    COUNT(DISTINCT SalesOrderDetailID) > 3