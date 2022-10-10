SELECT `C`.`name`, COUNT(`G`.`id`) AS `count`, ROUND(AVG(`budget`), 2), MAX(`rating`) AS `max`
FROM `categories` AS `C`
JOIN `games_categories` AS `G_C`
ON `C`.`id` = `G_C`.`category_id`
JOIN `games` AS `G`
ON `G_C`.`game_id` = `G`.`id`
GROUP BY `C`.`id` 
HAVING `max` >= 9.5
ORDER BY `count` DESC, `C`.`name`;

-- SELECT * FROM `games`