SELECT
    NAME, COLOR, SIZE
FROM
    Production.Product
WHERE
    COLOR LIKE 'Black' AND SIZE IS NOT NULL AND ListPrice < 100
ORDER BY
    ListPrice