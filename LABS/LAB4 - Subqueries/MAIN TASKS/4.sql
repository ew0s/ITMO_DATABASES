SELECT
    ProductID
FROM
    Production.Product AS P
WHERE
    ListPrice > (
        SELECT
            AVG(P2.ListPrice)
        FROM
            Production.Product AS P2
        JOIN
            Production.ProductSubcategory AS PSC2
        ON
            P2.ProductSubcategoryID = PSC2.ProductSubcategoryID
        )