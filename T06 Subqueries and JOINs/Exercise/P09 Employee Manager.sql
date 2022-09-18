/*
Write a query that selects:
•	employee_id
•	first_name
•	manager_id
•	manager_name
Filter all employees with a manager who has id equal to 3 or 7. Return all rows sorted by employee first_name in ascending order.
*/

SELECT `E`.`employee_id`, `E`.`first_name`, `E`.`manager_id`, `E2`.`first_name`
FROM `employees` AS `E`
JOIN `employees` AS `E2`
ON `E`.`manager_id` = `E2`.`employee_id`
WHERE `E`.`manager_id` IN(3,7)
ORDER BY `E`.`first_name`


