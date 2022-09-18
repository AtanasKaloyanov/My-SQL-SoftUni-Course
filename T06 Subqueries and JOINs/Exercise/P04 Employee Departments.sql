SELECT `E`.`employee_id`, `E`.`first_name`, `E`.`salary`, `D`.`name` AS `department_name` 
FROM `employees` AS `E`
JOIN `departments` AS `D`
ON `E`.`department_id` = `D`.`department_id`
WHERE `E`.`salary` > 15000
ORDER BY `E`.`department_id` DESC
LIMIT 5;

