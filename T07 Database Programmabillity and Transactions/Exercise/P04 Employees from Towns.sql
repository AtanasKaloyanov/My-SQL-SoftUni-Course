/*
Write a stored procedure usp_get_employees_from_town that accepts town_name as parameter and return the employees' 
first and last name that live in the given town. 
The result should be sorted by first_name then by last_name alphabetically and id ascending
*/

DROP PROCEDURE `usp_get_employees_from_town`;

DELIMITER ###
CREATE PROCEDURE `usp_get_employees_from_town`(`town_name` VARCHAR(100))

BEGIN 
SELECT `first_name`, `last_name`
FROM `employees` AS `E`
JOIN `addresses` AS `A` 
ON `E`.`address_id` = `A`.`address_id`
JOIN `towns` AS `T` 
ON `A`.`town_id` = `T`.`town_id`
WHERE `T`.`name` = `town_name`
ORDER BY `first_name`, `last_name`, `employee_id`;
END
###

DELIMITER ;
CALL `usp_get_employees_from_town`('Sofia');

