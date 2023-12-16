SELECT MAX(salary) AS second_highest_salary
FROM Employee e
WHERE NOT EXISTS (
  SELECT 1
  FROM Employee e2
  WHERE e2.salary > e.salary
);