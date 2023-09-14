SELECT
  employee_id,
  department_id
FROM Employee
WHERE primary_flag = 'Y'

UNION

SELECT
  employee_id,
  department_id
FROM Employee as E
WHERE employee_id NOT IN
  (SELECT employee_id FROM Employee WHERE primary_flag = 'Y')
-- "they need to decide which department is their primary department"
-- actually they don't: poorly written statement
GROUP BY employee_id
HAVING COUNT(department_id) = 1;