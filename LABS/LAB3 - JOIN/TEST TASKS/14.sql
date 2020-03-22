SELECT
    NAME, SellStartDate, SellEndDate, DATEDIFF(D, SellStartDate, ISNULL(SellEndDate, GETDATE())) AS 'PERIOD'
FROM
    Production.Product
WHERE
    SellStartDate IS NOT NULL