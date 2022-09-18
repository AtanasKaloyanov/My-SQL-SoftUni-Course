SELECT `E`.`employee_id`, `E`.`first_name`, `E`.`last_name`, `D`.`name` AS `department_name`
 FROM `employees` AS `E`
 JOIN `departments` AS `D`
 ON `E`.`department_id` = `D`.`department_id`
 WHERE `D`.`name` = 'Sales'
 ORDER BY `E`.`employee_id` DESC;