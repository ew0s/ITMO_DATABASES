SELECT
    PV.Name, COUNT(*) AS 'AMOUNT'
FROM
    Purchasing.ProductVendor AS PPV
JOIN
    Purchasing.Vendor AS PV
ON
    PPV.BusinessEntityID = PV.BusinessEntityID
GROUP BY
    PV.Name