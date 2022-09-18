SELECT `E`.`employee_id`, `E`.`first_name`,
CASE 
WHEN YEAR(`P`.`start_date`) < 2005 
THEN `P`.`name`
ELSE NULL
END AS `name`
FROM `employees` AS `E`
JOIN `employees_projects` AS `E_P`
ON `E`.`employee_id` = `E_P`.`employee_id`
JOIN `projects` AS `P`
ON `E_P`.`project_id` = `P`.`project_id` 
WHERE `E`.`employee_id` = 24
ORDER BY `P`.`name`
