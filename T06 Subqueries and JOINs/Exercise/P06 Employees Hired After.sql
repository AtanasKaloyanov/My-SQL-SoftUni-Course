SELECT `E`.`first_name`, `E`.`last_name`, `E`.`hire_date` , `D`.`name` AS `dept_name`
FROM `employees` AS `E`
JOIN `departments` AS `D`
ON `E`.`department_id` = `D`.`department_id`
WHERE `name` IN('Sales', 'Finance') 
AND `hire_date` > '1999-01-01'
ORDER BY `hire_date`;
