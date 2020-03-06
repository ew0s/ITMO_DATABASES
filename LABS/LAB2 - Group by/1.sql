SELECT
    Color
FROM
    Production.Product
WHERE
    ListPrice > 30 AND COLOR IS NOT NULL
GROUP BY
    COLOR
ORDER BY
    COLOR