SELECT
    ProductID, COUNT(*) AS 'COUNT'
FROM
    Sales.SalesOrderDetail
WHERE
    ProductID IS NOT NULL
GROUP BY
    ProductID
HAVING
    COUNT(*) > 5
ORDER BY
    ProductID
