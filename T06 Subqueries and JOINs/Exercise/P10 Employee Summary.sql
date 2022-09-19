/*
Write a query that selects:
•	employee_id
•	employee_name
•	manager_name		
•	department_name
Show the first 5 employees (only for employees who have a manager) with their managers and the departments they are in (show the departments of the employees). Order by employee_id.
*/

SELECT `E1`.`employee_id`, 
CONCAT(`E1`.`first_name`, ' ', `E1`.`last_name`) AS `employee_name`, 
CONCAT(`E2`.`first_name`, ' ', `E2`.`last_name`) AS `manager_name`, 
`D`.`name` AS `department_name`
FROM `employees` AS `E1`
JOIN `employees` AS `E2`
ON `E1`.`manager_id` = `E2`.`employee_id`
JOIN `departments` AS `D`
ON `E1`.`department_id` = `D`.`department_id`
ORDER BY `E1`.`employee_id`
LIMIT 5 




