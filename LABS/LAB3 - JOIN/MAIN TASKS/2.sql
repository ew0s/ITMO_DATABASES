SELECT
    PSC1.Name
FROM
    Production.ProductSubcategory AS PSC1,
    Production.ProductSubcategory AS PSC2
WHERE
    PSC1.ProductSubcategoryID IS NOT NULL
    AND PSC1.ProductSubcategoryID != PSC2.ProductSubcategoryID
    AND PSC1.Name = PSC2.Name
