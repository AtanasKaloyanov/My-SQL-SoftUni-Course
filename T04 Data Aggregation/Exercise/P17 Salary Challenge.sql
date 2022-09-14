SELECT `first_name`, `last_name`, `department_id` 
FROM `employees`AS `e`
WHERE `e`.`salary` > (SELECT AVG(`salary`)
FROM `employees`
WHERE `department_id` = `e`.`department_id`
GROUP BY `department_id`)
ORDER BY `department_id`, `employee_id`
LIMIT 10;




