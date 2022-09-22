CREATE PROCEDURE `usp_get_employees_by_salary_level`(`given_level`VARCHAR(8))

BEGIN 
IF (`given_level` = 'Low') THEN 
SELECT `first_name`, `last_name` FROM `employees`
WHERE `salary` < 30000
ORDER BY `first_name` DESC, `last_name` DESC;
ELSEIF (`given_level` = 'Average') THEN 
SELECT `first_name`, `last_name` FROM `employees`
WHERE `salary` >= 30000 AND `salary` <= 50000
ORDER BY `first_name` DESC, `last_name` DESC;
ELSEIF (`given_level` = 'High') THEN
SELECT `first_name`, `last_name` FROM `employees`
WHERE `salary` > 50000
ORDER BY `first_name` DESC, `last_name` DESC;
END IF;
END