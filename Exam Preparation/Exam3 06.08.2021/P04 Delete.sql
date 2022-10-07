DELETE `G`
FROM `games` AS `G`
LEFT JOIN `games_categories` AS `G_C`
ON `G`.`id` = `G_C`.`game_id`
WHERE `release_date` IS NULL 
AND `category_id` IS NULL