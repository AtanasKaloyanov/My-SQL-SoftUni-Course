SELECT `E`.`employee_id`, `E`.`first_name`, `P`.`name`
FROM `employees` AS `E`
JOIN `employees_projects` AS `P_E`
ON `E`.`employee_id` = `P_E`.`employee_id`
JOIN `projects` AS `P`
ON `P_E`.`project_id` = `P`.`project_id`
WHERE DATE(`P`.`start_date`) > '2002-08-13'
AND `P`.`end_date` IS NULL
ORDER BY `E`.`first_name`, `P`.`name`
LIMIT 5;



