-- Write a query that returns the value of the lowest average salary of all departments.

SELECT AVG(`salary`) AS `avg`
FROM `employees`
 AS `average_salary`
GROUP BY `department_id`
ORDER BY `avg`
LIMIT 1;



