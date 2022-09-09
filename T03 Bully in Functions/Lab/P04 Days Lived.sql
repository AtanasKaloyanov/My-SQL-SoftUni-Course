SELECT 
CONCAT_WS(' ', `first_name`, `last_name`) AS `Full Name`,
TIMESTAMPDIFF(day, `born`, `died`) AS `Days Lived`
FROM `authors`; 