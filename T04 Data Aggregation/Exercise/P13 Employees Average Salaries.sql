SET SQL_SAFE_UPDATES = 0;
/*
DROP TABLE `new table`;
*/

CREATE TABLE `new table` AS
SELECT 
CONCAT_WS(' ', `first_name`, `middle_name`, `last_name`) AS `employee`,
`department_id`,
`manager_id`,
`salary`
FROM `employees` 
WHERE `salary` > 30000;

DELETE 
FROM `new table`
WHERE `manager_id` = 42;

UPDATE `new table`
SET `salary` =  `salary` + 5000
WHERE `department_id` = 1;

SELECT `department_id`, AVG(`salary`) AS `avg_salary`
FROM `new table`
GROUP BY `department_id`
ORDER BY `department_id`





