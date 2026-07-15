SELECT A.employee_id 
FROM Employees A LEFT JOIN Employees B
ON A.manager_id = B.employee_id
WHERE A.salary < 30000
AND A.manager_id IS NOT NULL
AND B.employee_id IS NULL
ORDER BY A.employee_id;