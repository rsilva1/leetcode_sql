SELECT
  query_name,
  ROUND(AVG(quality), 2) as quality,
  ROUND(100.0 * AVG(is_poor), 2) as poor_query_percentage
FROM
  (
    SELECT
      query_name,
      (rating / position) as quality,
      CASE WHEN rating < 3 THEN 1 ELSE 0 END as is_poor
    FROM Queries
  ) as EnhancedQueries
GROUP BY query_name;
