SELECT activity_date as day, COUNT(DISTINCT user_id) as active_users
FROM Activity
WHERE DATEDIFF('2019-07-27', activity_date) BETWEEN 0 and 29
GROUP BY activity_date
HAVING COUNT(DISTINCT user_id) >= 1;