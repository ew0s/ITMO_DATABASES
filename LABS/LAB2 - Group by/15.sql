SELECT
    Color
FROM
    Production.Product
WHERE
    Color IS NOT NULL
GROUP BY
    Color
ORDER BY
    COUNT(*) DESC