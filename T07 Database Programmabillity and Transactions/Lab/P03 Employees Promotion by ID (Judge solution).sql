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