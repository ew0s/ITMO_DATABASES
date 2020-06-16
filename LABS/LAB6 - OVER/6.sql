/*....1....*/
SELECT
    SalesOrderID, P.ProductID, OrderQty * UnitPrice AS TOTAL,
       (OrderQty * UnitPrice) / SUM (OrderQty * UnitPrice) OVER (
           PARTITION BY SalesOrderID
           ) AS PART
FROM
    Sales.SalesOrderDetail AS SOD
JOIN
    Production.Product AS P
ON
    SOD.ProductID = P.ProductID
/*.........*/

/*....2....*/
SELECT
    P.ProductID, ProductSubcategoryID, UnitPrice, UnitPrice - MIN(UnitPrice) OVER (
        PARTITION BY ProductSubcategoryID
    )
FROM
    Sales.SalesOrderDetail AS SOD
JOIN
    Production.Product AS P
ON
    SOD.ProductID = P.ProductID
/*.........*/

/*....3....*/
SELECT
    CustomerID, SalesOrderID, ROW_NUMBER() OVER (PARTITION BY CustomerID ORDER BY OrderDate) AS "Row"
FROM
    Sales.SalesOrderHeader;
/*.........*/

/*....4.1....*/
WITH TMP (PRODUCT_ID, PRODUCT_SUB, AVG) AS (
    SELECT
        P.ProductID, ProductSubcategoryID, AVG (UnitPrice)
    FROM
        Sales.SalesOrderDetail AS SOD
    JOIN
        Production.Product AS P
    ON
        P.ProductID = SOD.ProductID
    GROUP BY
        P.ProductID, ProductSubcategoryID
)

SELECT
    ProductID
FROM
    TMP
JOIN
    Sales.SalesOrderDetail AS SOD
ON
    SOD.ProductID = TMP.PRODUCT_ID
WHERE
    SOD.UnitPrice > TMP.AVG
/*...........*/