/*
Write a stored procedure usp_raise_salary_by_id(id) that raises a given employee's salary (by id as parameter) by 5%.
Consider that you cannot promote an employee that doesn't exist – if that happens, no changes to the database should be made. 
Submit your queries using the "MySQL Run Skeleton, run queries and check DB" strategy. 
*/
DROP PROCEDURE `usp_raise_salary_by_id`;

DELIMITER ###
CREATE PROCEDURE `usp_raise_salary_by_id`(`id` INT) 
BEGIN
START TRANSACTION;
IF ( 
(SELECT COUNT(`employee_id`) FROM `employees` 
WHERE `employee_id` LIKE `id`) <> 1
) 
THEN ROLLBACK;
ELSE 
UPDATE `employees` AS `E`
SET `salary` = 1.05 * `salary`;

END IF;

END
###

DELIMITER ;

CALL `usp_raise_salary_by_id`(1);

SELECT `employee_id`, `salary` FROM `employees` AS `E`
WHERE `E`.`employee_id` = 1;