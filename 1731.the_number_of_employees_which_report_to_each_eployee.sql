SELECT
  Manager.employee_id as employee_id,
  Manager.name as name,
  COUNT(Managed.employee_id) as reports_count,
  ROUND(AVG(Managed.age), 0) as average_age
FROM Employees as Manager
LEFT JOIN Employees as Managed
ON Manager.employee_id = Managed.reports_to
GROUP BY Manager.employee_id
HAVING reports_count >= 1
ORDER BY Manager.employee_id;