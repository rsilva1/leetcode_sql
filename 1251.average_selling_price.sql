SELECT
  product_id,
  ROUND(SUM(total_price) / SUM(units), 2)
  as average_price
FROM
(
  SELECT
    P.product_id as product_id,
    US.units as units,
    US.units * P.price as total_price
  FROM UnitsSold as US
  LEFT JOIN Prices as P
    ON US.product_id = P.product_id
    AND US.purchase_date BETWEEN P.start_date AND P.end_date
) as UnitsSoldPrecified
GROUP BY product_id;
