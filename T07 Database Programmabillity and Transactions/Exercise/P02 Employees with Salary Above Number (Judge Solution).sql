CREATE PROCEDURE `usp_get_employees_salary_above` (`given_number` DECIMAL(12, 4))

BEGIN 
SELECT `first_name`, `last_name`
FROM `employees` AS `E`
WHERE `E`.`salary` >= `given_number`
ORDER BY `first_name`, `last_name`, `employee_id`;
END