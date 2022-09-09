SELECT `first_name`
FROM `employees`
WHERE 
`department_id` IN (3,10) AND 
EXTRACT(year FROM `hire_date`) >= 1995 AND 
EXTRACT(year FROM `hire_date`) <= 2005
ORDER BY `employee_id`;
