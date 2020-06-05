SELECT
    P1.Name
FROM
    Production.Product AS P1
WHERE
    P1.ProductID IN (
        SELECT
            SOD1.ProductID
        FROM
            Sales.SalesOrderDetail AS SOD1
        JOIN
            Sales.SalesOrderHeader AS SOH1
        ON
            SOD1.SalesOrderID = SOH1.SalesOrderID
        WHERE
            SOH1.CustomerID IN (
                SELECT
                    SOH2.CustomerID
                FROM
                    Sales.SalesOrderDetail AS SOD2
                JOIN
                    Sales.SalesOrderHeader AS SOH2
                ON
                    SOD2.SalesOrderID = SOH2.SalesOrderID
                JOIN
                    Production.Product AS P2
                ON
                    P2.ProductID = SOD2.ProductID
                GROUP BY
                    SOH2.CustomerID
                HAVING
                    COUNT(DISTINCT P2.ProductSubcategoryID) = 1
            )
        GROUP BY
            SOD1.ProductID
        HAVING
            COUNT(DISTINCT SOH1.CustomerID) > 1
        )