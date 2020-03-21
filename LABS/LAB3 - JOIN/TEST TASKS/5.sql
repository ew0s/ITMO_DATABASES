SELECT
    P.NAME, P.ListPrice, PV.LastReceiptCost
FROM
    Production.Product AS P
JOIN
    Purchasing.ProductVendor AS PV
ON
    P.ProductID = PV.ProductID
WHERE P.ListPrice < PV.LastReceiptCost AND
      P.ListPrice != 0