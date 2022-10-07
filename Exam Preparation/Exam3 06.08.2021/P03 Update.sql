SELECT * FROM `employees`;

 -- SELECT * FROM `teams`;

/*
After a good work in recent months, 
management has decided to raise the salaries of all young team leaders.
Update all young employees (only team leaders) 
with age under 40(exclusive) and increase their salary with 1000. 
Skip the employees with salary over 5000(inclusive). 
Their salaries are already high.
*/
SET SQL_SAFE_UPDATES = 0;

UPDATE `employees` 
LEFT JOIN `teams`
ON `employees`.`id` = `teams`.`leader_id`
SET `salary` = `salary` + 1000
WHERE `leader_id` IS NOT NULL
AND `age` < 40 AND `salary` < 5000
