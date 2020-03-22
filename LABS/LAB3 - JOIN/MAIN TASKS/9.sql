SELECT TOP 1
    P.Name
FROM
    Sales.SalesOrderDetail AS SS
JOIN
    Production.Product AS P
ON
    P.ProductID = SS.ProductID
GROUP BY
    P.Name
ORDER BY
    COUNT(*) DESC