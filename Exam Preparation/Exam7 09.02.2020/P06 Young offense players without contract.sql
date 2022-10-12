SELECT `P`.`id`, CONCAT(`first_name`, ' ', `last_name`) AS `full_name`, `age`, `position`, `hire_date` 
FROM `players` AS `P`
JOIN `skills_data` AS `S_D`
ON `P`.`skills_data_id` = `S_D`.`id`
WHERE `age` < 23
AND `position` = 'A'
AND `hire_date` IS NULL
AND `S_D`.`strength` > 50
ORDER BY `P`.`salary`, `P`.`age`; 
