SELECT Product.product_id, Product.product_name
FROM Product
INNER JOIN Sales ON Product.product_id = Sales.product_id
GROUP BY Product.product_id
HAVING
  QUARTER(MIN(sale_date)) = 1 AND YEAR(MIN(sale_date)) = 2019
  AND QUARTER(MAX(sale_date)) = 1 AND YEAR(MAX(sale_date)) = 2019;