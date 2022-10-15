/*
Create a user defined function with the name 
udf_top_paid_employee_by_store(store_name VARCHAR(50)) that receives 
a store name and returns the full name of top paid employee. 
Full info must be in format:
 	{first_name} {middle_name}. {last_name} works in store for 
    {years of experience} years
The years of experience is the difference when they were hired and 2020-10-18
*/

DROP FUNCTION `udf_top_paid_employee_by_store`;

DELIMITER ###

CREATE FUNCTION `udf_top_paid_employee_by_store` (`store_name` VARCHAR(50))
RETURNS VARCHAR(255)
DETERMINISTIC

BEGIN
DECLARE `first_Name` VARCHAR(255);
DECLARE `middle_Name` VARCHAR(255);
DECLARE `last_Name` VARCHAR(255);
DECLARE `years_of_experience` INT;

SET `first_name` = (SELECT `E`.`first_name`
FROM `employees` AS `E`
JOIN `stores` AS `S`
ON `E`.`store_id` = `S`.`id`
WHERE `S`.`name` = `store_name`
ORDER BY `E`.`salary` DESC
LIMIT 1
);

SET `middle_name` = (SELECT `E`.`middle_name`
FROM `employees` AS `E`
JOIN `stores` AS `S`
ON `E`.`store_id` = `S`.`id`
WHERE `S`.`name` = `store_name`
ORDER BY `E`.`salary` DESC
LIMIT 1
);

SET `last_name` = (SELECT `E`.`last_name`
FROM `employees` AS `E`
JOIN `stores` AS `S`
ON `E`.`store_id` = `S`.`id`
WHERE `S`.`name` = `store_name`
ORDER BY `E`.`salary` DESC
LIMIT 1
);

SET `years_of_experience` = (SELECT FLOOR(2020 - YEAR(`E`.`hire_date`))
FROM `employees` AS `E`
JOIN `stores` AS `S`
ON `E`.`store_id` = `S`.`id`
WHERE `S`.`name` = `store_name`
ORDER BY `E`.`salary` DESC
LIMIT 1
);

RETURN CONCAT_WS(' ', `first_name`, CONCAT(`middle_name`,'.'), `last_name`, 'works in store for', `years_of_experience`, 'years');

END
###

DELIMITER ;

-- SELECT udf_top_paid_employee_by_store('Stronghold') as 'full_info';
SELECT udf_top_paid_employee_by_store('Keylex') as 'full_info';
