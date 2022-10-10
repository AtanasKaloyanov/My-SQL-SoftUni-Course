SELECT `G`.`name`, 
CASE
WHEN `budget` < 50000 THEN 'Normal budget'
ELSE 'Insufficient budget'
END AS `budget_level`, 
`T`.`name`, `A`.`name`
FROM `games` AS `G`
LEFT JOIN `games_categories` AS `G_C`
ON `G`.`id` = `G_C`.`game_id`
JOIN `teams` AS `T`
ON `G`.`team_id` = `T`.`id`
JOIN `offices` AS `O`
ON `T`.`office_id` = `O`.`id`
JOIN `addresses` AS `A`
ON `O`.`address_id` = `A`.`id`
WHERE `release_date` IS NULL
AND `G_C`.`category_id` IS NULL
ORDER BY `G`.`name`;


-- SELECT * FROM `games_categories`;

--  SELECT * FROM `games`;