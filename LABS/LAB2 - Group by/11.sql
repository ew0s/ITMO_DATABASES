SELECT DISTINCT 
    ProductID
FROM
    Sales.SalesOrderDetail
WHERE
    OrderQty = 1
GROUP BY
    ProductID, SalesOrderID
ORDER BY
    ProductID