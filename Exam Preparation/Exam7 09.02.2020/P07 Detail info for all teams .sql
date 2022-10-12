SELECT `T`.`name`, `T`.`established`, `T`.`fan_base`, COUNT(`P`.`id`) AS `count`
FROM `teams` AS `T`
LEFT JOIN `players` AS `P`
ON `T`.`id` = `P`.`team_id`
GROUP BY `T`.`id`
ORDER BY `count` DESC, `T`.`fan_base` DESC;