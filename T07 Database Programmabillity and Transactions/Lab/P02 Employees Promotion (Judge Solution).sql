CREATE PROCEDURE `usp_raise_salaries`(`department_name` VARCHAR(100))

BEGIN
UPDATE `employees`
JOIN `departments` AS `D` USING(`department_id`)
SET `salary` = 1.05 * `salary`
WHERE `D`. `name` = `department_name`;
END