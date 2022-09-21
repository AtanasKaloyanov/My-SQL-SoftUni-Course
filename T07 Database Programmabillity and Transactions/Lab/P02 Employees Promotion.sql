/*
Write a stored procedure usp_raise_salaries(department_name) 
to raise the salary of all employees in given department as parameter by 5%. 
Submit your queries using the "MySQL Run Skeleton, run queries and check DB" strategy. 
*/

SET SQL_SAFE_UPDATES = 0;
DROP PROCEDURE `usp_raise_salaries`;
DELIMITER ###

CREATE PROCEDURE `usp_raise_salaries`(`department_name` VARCHAR(100))

BEGIN
UPDATE `employees`
JOIN `departments` AS `D` USING(`department_id`)
SET `salary` = 1.05 * `salary`
WHERE `D`. `name` = `department_name`;
END
### 


DELIMITER ;
CALL `usp_raise_salaries`('Production');
SELECT `salary`, `name` FROM `employees`
JOIN `departments` USING(`department_id`)
ORDER BY `employee_id`






