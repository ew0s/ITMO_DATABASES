SELECT
    BusinessEntityID, COUNT(DISTINCT P.ProductSubcategoryID) AS 'AMOUNT'
FROM
    Production.Product AS P
JOIN
    Purchasing.ProductVendor AS PV
ON
    P.ProductID = PV.ProductID
WHERE
    P.ProductSubcategoryID IS NOT NULL
GROUP BY
    BusinessEntityID
