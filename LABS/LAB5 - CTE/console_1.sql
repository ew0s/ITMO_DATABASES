/* 1 WITH CTE */
WITH
    TMP (SALES_ORDER_ID, COUNT_PRODUCTS) AS (
        SELECT
            SOD.SalesOrderID, COUNT(OrderQty)
        FROM
            Sales.SalesOrderDetail AS SOD
        GROUP BY
            SOD.SalesOrderID
    )

SELECT
    CustomerID, AVG (TMP.COUNT_PRODUCTS)
FROM
    Sales.SalesOrderHeader AS SOH
JOIN
    TMP
ON
    TMP.SALES_ORDER_ID = SOH.SalesOrderID
GROUP BY
    CustomerID
ORDER BY
    CustomerID

/* ....... */


/* 2 WITH CTE */
WITH
    ALL_PURSCHASING (CUSTOMER_ID, COUNT_PRODUCTS) AS (
        SELECT
            CustomerID, COUNT(OrderQty) AS COUNT_PRODUCTS
        FROM
            Sales.SalesOrderDetail AS SOD
        JOIN
            Sales.SalesOrderHeader AS SOH
        ON
            SOD.SalesOrderID = SOH.SalesOrderID
        GROUP BY
            CustomerID
    ),
    DISTINCT_PRODUCT (CUSTOMER_ID, PRODUCT_ID, COUNT_PRODUCTS) AS (
        SELECT
            CustomerID, ProductID, COUNT(OrderQty)
        FROM
            Sales.SalesOrderDetail AS SOD
        JOIN
            Sales.SalesOrderHeader AS SOH
        ON
            SOD.SalesOrderID = SOH.SalesOrderID
        GROUP BY
            CustomerID, ProductID
    )

SELECT
    DIST.CUSTOMER_ID, DIST.PRODUCT_ID, CAST(DIST.COUNT_PRODUCTS AS DECIMAL (5, 2)) / ALL_P.COUNT_PRODUCTS AS AMOUNT
FROM
    DISTINCT_PRODUCT AS DIST
JOIN
    ALL_PURSCHASING AS ALL_P
ON
    DIST.CUSTOMER_ID = ALL_P.CUSTOMER_ID
ORDER BY
    CUSTOMER_ID
/* ............ */


/* 3 WITH CTE */
WITH
    CUSTOMERS (PRODUCT_ID, COUNT_ALL, COUNT_FACTS) AS (
        SELECT
            ProductID, SUM (OrderQty), COUNT (CustomerID)
        FROM
            Sales.SalesOrderDetail AS SOD
        JOIN
            Sales.SalesOrderHeader AS SOH
        ON
            SOD.SalesOrderID = SOH.SalesOrderID
        GROUP BY
            ProductID
    )

SELECT
    P.Name, C.COUNT_ALL, C.COUNT_FACTS
FROM
    Production.Product AS P
JOIN
    CUSTOMERS AS C
ON
    C.PRODUCT_ID = P.ProductID
/* ......... */

/* 4 WITH CTE */
WITH
    MAX_AMOUNT (CUSTOMER_ID, AMOUNT) AS (
        SELECT
            CustomerID, MAX(UnitPrice) AS AMOUNT
        FROM
            Sales.SalesOrderHeader AS SOH
        JOIN
            Sales.SalesOrderDetail AS SOD
        ON
            SOH.SalesOrderID = SOD.SalesOrderID
        GROUP BY
            CustomerID
    ),
    MIN_AMOUNT (CUSTOMER_ID, AMOUNT) AS (
        SELECT
            CustomerID, MIN(UnitPrice) AS AMOUNT
        FROM
            Sales.SalesOrderHeader AS SOH2
        JOIN
            Sales.SalesOrderDetail AS SOD2
        ON
            SOH2.SalesOrderID = SOD2.SalesOrderID
        GROUP BY
            CustomerID
    )

SELECT
    MAX.CUSTOMER_ID, MAX.AMOUNT, MIN.AMOUNT
FROM
    MAX_AMOUNT AS MAX
JOIN
    MIN_AMOUNT AS MIN
ON
    MAX.CUSTOMER_ID = MIN.CUSTOMER_ID
/* ......... */









































