DELETE `C` 
FROM `clients` AS `C`
LEFT JOIN `courses` AS `Co`
ON `C`.`id` = `Co`.`client_id`
WHERE CHAR_LENGTH(`full_name`) > 3 
AND `bill` IS NULL



-- SELECT * FROM `clients`;
-- SELECT * FROM `courses`;
