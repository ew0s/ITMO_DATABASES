SELECT
    COUNT(DISTINCT PPV.ProductID)
FROM
    Purchasing.ProductVendor AS PPV
JOIN
    Purchasing.Vendor AS PV
ON
    PPV.BusinessEntityID = pv.BusinessEntityID
WHERE
    CreditRating = 1