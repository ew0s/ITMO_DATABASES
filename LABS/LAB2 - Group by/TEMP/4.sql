SELECT
    ProductID
FROM
    Sales.SalesOrderDetail
WHERE
    UnitPrice > 100
GROUP BY
    ProductID
HAVING
    COUNT(*) > 3