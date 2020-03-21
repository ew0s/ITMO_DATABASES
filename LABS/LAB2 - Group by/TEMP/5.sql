SELECT
    Size
FROM
    Production.Product
WHERE
    COLOR LIKE 'Red' AND SIZE IS NOT NULL
GROUP BY
    SIZE
ORDER BY
    COUNT(*) DESC