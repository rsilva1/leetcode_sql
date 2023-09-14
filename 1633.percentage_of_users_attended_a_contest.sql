SELECT
  contest_id,
  ROUND(100.0 * COUNT(*) / (SELECT COUNT(*) as users_count FROM Users), 2) as percentage
FROM Register
GROUP BY contest_id
ORDER BY percentage DESC, contest_id ASC;