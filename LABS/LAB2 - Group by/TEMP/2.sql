SELECT
    Color
FROM
    Production.Product
WHERE
    COLOR IS NOT NULL
GROUP BY
    COLOR
HAVING
    COUNT(*) BETWEEN 2 AND 5