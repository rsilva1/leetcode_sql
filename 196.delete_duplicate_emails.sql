-- Note that temp table isn't needed in PostgreSQL
-- MySQL has a constraint to not query the table whose records will be deleted (thus the temp table workaround via extra subquery)
DELETE FROM Person
WHERE id NOT IN (
  SELECT id
  FROM (
    SELECT MIN(id) as id
    FROM Person
    GROUP BY email
  ) AS temporarytable
);