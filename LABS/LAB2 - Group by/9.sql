SELECT
    ProductID
FROM
    Sales.SalesOrderDetail
GROUP BY
    ProductID
HAVING
    COUNT(*) IN (3, 5)
ORDER BY
    ProductID