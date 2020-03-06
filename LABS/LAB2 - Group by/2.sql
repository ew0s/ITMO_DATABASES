SELECT
    COLOR
FROM
    Production.Product
WHERE
    COLOR IS NOT NULL
GROUP BY
    COLOR
HAVING
    MIN(ListPrice) > 100
ORDER BY
    COLOR