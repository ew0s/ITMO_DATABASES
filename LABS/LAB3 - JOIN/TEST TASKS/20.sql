SELECT TOP 3 WITH TIES
    PV.BusinessEntityID
FROM
    Production.Product AS P
JOIN
    Purchasing.ProductVendor AS PV
ON
    P.ProductID = PV.ProductID
GROUP BY
    BusinessEntityID
ORDER BY
    COUNT(P.ProductID) DESC