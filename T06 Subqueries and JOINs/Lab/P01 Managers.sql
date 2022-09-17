SELECT `E`.`employee_id`, CONCAT(`first_name`, ' ', `last_name`) AS `Full Name`, `D`.`department_id`, `D`.`name`
FROM `employees` AS `E` 
JOIN `departments` AS `D`
ON `D`.`manager_id` = `E`.`employee_id`
ORDER BY `employee_id`
LIMIT 5; 

