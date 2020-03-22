SELECT
    P.Name, COUNT(*) AS 'AMOUNT'
FROM
    Production.Product AS P
JOIN
    Purchasing.ProductVendor AS PV
ON
    P.ProductID = PV.ProductID
GROUP BY
    P.Name
HAVING
    COUNT(*) > 1
