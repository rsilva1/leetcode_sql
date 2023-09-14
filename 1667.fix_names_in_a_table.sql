-- UPDATE Users
-- SET name = CONCAT(UPPER(SUBSTR(name, 0, 1)), LOWER(SUBSTR(name, 1)));

-- IN SQL INDEXES ARE NOT 0-based
SELECT user_id, CONCAT(UPPER(SUBSTR(name, 1, 1)), LOWER(SUBSTR(name, 2))) as name
FROM Users
ORDER BY user_id ASC;