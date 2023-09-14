SELECT name, SUM(amount) as balance
FROM Users as U
LEFT JOIN Transactions as T on U.account = T.account
GROUP BY U.name
HAVING balance > 10000;