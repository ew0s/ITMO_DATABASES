SELECT
    NAME
FROM
    Production.Product
WHERE
    NAME LIKE '[DM]%' AND LEN(NAME) > 3