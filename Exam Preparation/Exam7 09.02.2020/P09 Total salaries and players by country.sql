SELECT `C`.`name`, COUNT(`P`.`id`) AS `count`, SUM(`P`.`salary`) AS `sum`
FROM `countries` AS `C`
LEFT JOIN `towns` AS `T`
ON `C`.`id` = `T`.`country_id`
LEFT JOIN `stadiums` AS `S`
ON `T`.`id` = `S`.`town_id`
LEFT JOIN `teams` AS `TE`
ON `S`.`id` = `TE`.`stadium_id`
LEFT JOIN `players` AS `P`
ON `TE`.`id` = `P`.`team_id` 
GROUP BY `C`.`name`
ORDER BY `count` DESC, `C`.`name`