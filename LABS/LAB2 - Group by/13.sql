SELECT TOP 1
    SalesOrderID
FROM
    Sales.SalesOrderDetail
GROUP BY
    SalesOrderID, OrderQty * UnitPrice
ORDER BY
    (OrderQty * UnitPrice) DESC