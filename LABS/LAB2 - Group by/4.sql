SELECT
    ProductID, COUNT(*) AS 'COUNT'
FROM
    Sales.SalesOrderDetail
WHERE
    ProductID IS NOT NULL
GROUP BY
    ProductID
ORDER BY
    ProductID