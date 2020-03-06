SELECT DISTINCT
    COLOR
FROM
    Production.Product
WHERE
    ListPrice BETWEEN 10 AND 50 AND COLOR IS NOT NULL