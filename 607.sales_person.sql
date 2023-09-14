SELECT name
FROM SalesPerson
WHERE name NOT IN (
  SELECT DISTINCT SP.name
  FROM SalesPerson as SP
  LEFT JOIN Orders ON SP.sales_id = Orders.sales_id
  LEFT JOIN Company ON Orders.com_id = Company.com_id
  WHERE Company.name = 'RED'
);
