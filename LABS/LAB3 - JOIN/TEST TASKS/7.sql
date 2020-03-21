SELECT
    PV.CreditRating, COUNT(DISTINCT PPV.ProductID) AS 'AMOUNT'
FROM
    Purchasing.ProductVendor AS PPV
JOIN
    Purchasing.Vendor AS PV
ON
    PV.BusinessEntityID = PPV.BusinessEntityID
GROUP BY
    PV.CreditRating