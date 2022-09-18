SELECT `E`.`employee_id`, `E`.`first_name`
FROM `employees` AS `E`
LEFT JOIN `employees_projects` AS `E_P`
ON `E`.`employee_id` = `E_P`.`employee_id`
WHERE `E_P`.`project_id` IS NULL
ORDER BY `employee_id` DESC
LIMIT 3







