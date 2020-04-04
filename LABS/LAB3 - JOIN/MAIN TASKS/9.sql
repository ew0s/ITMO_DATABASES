SELECT TOP 1
    P.Name
FROM
    Production.Product AS P
JOIN
    Purchasing.ProductVendor AS PV
ON
    P.ProductID = PV.ProductID
GROUP BY
    P.Name
ORDER BY
    COUNT(*) DESC