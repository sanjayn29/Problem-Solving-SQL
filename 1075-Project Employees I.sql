SELECT PRO.project_id, ROUND(SUM(EMP.experience_years)/COUNT(PRO.employee_id),2) AS average_years
FROM Project PRO LEFT JOIN Employee EMP
ON PRO.employee_id = EMP.employee_id GROUP BY PRO.project_id;