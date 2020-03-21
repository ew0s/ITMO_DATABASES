SELECT
    ProductID
FROM
    Sales.SalesOrderDetail
WHERE
    OrderQty < 3
GROUP BY
    ProductID
HAVING
    COUNT(DISTINCT SalesOrderDetailID) > 3