SELECT TOP 1 WITH TIES 
    SalesOrderID, COUNT(*)
FROM
    Sales.SalesOrderDetail
GROUP BY
    SalesOrderID
ORDER BY
    COUNT(*) DESC