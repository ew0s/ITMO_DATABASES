SELECT
    CreditRating, COUNT(ProductID) AS 'AMOUNT'
FROM
    Purchasing.ProductVendor AS PV
JOIN
    Purchasing.Vendor AS V
ON
    PV.BusinessEntityID = V.BusinessEntityID
GROUP BY
    CreditRating