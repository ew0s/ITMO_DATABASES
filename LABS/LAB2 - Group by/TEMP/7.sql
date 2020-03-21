SELECT TOP 1
    ProductID
FROM
    Sales.SalesOrderDetail
WHERE
    UnitPrice <= 100
GROUP BY
    ProductID
ORDER BY
    COUNT(*) DESC