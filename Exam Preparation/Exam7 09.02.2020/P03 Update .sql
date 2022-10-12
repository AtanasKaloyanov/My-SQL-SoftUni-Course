UPDATE `coaches` AS `C`
LEFT JOIN `players_coaches` AS `P_C`
ON `C`.`id` = `P_C`.`coach_id`
SET `coach_level` = `coach_level` + 1
WHERE `player_id` IS NOT NULL
AND LEFT(`C`.`first_name`, 1) = 'A';


-- SELECT * FROM `coaches`;
-- SELECT * FROM `players_coaches`;
