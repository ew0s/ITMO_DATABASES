SELECT
    PSC.Name, MAX(StandardCost) AS 'MAX LIST PRICE'
FROM
    Production.Product AS P
JOIN
    Production.ProductSubcategory AS PSC
ON
    P.ProductSubcategoryID = PSC.ProductSubcategoryID
WHERE
    Color like 'Red'
GROUP BY
    PSC.Name
