SELECT TOP 1
    ProductCategoryID
FROM
    Production.ProductSubcategory
GROUP BY
    ProductCategoryID
ORDER BY
    COUNT(ProductSubcategoryID) DESC