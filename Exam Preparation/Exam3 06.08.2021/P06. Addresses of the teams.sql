SELECT `T`.`name` AS `team_name`, `A`.`name` AS `address_name`, CHAR_LENGTH(`A`.`name`) AS `count_of_characters` 
FROM `teams` AS `T`
LEFT JOIN `offices` AS `O`
ON `T`.`office_id` = `O`.`id`
JOIN `addresses` AS `A`
ON `O`.`address_id` = `A`.`id`
WHERE `website` IS NOT NULL
ORDER BY `team_name`, `address_name`;
