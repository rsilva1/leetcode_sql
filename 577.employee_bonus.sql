SELECT E.name, B.bonus
FROM Employee as E
LEFT JOIN Bonus as B ON E.empId = B.empId
WHERE COALESCE(B.bonus, 0) < 1000;