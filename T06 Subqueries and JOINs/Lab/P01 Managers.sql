-- the managers – id, full_name, deparment_id and department_name
SELECT `D`.`manager_id`, CONCAT(`first_name`, ' ', `last_name`) AS `Full Name`, `D`.`department_id`, `D`.`name` 
FROM `departments` AS `D`
JOIN `employees` AS `E`
ON `D`. `manager_id` = `E`.`employee_id`
ORDER BY `manager_id` LIMIT 5;