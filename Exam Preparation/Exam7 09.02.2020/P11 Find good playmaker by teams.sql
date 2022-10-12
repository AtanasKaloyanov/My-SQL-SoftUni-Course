DROP PROCEDURE `udp_find_playmaker`;

DELIMITER ###

CREATE PROCEDURE `udp_find_playmaker`(`min_dribble_points` INT, `team_name` VARCHAR(45))

BEGIN 

SELECT CONCAT(`P`.`first_name`, ' ', `P`.`last_name`), `P`.`age`, `P`.`salary`, `S_D`.`dribbling`, `S_D`.`speed`, `T`.`name`
FROM `players` AS `P`
JOIN `skills_data` AS `S_D`
ON `P`.`skills_data_id` = `S_D`.`id`
JOIN `teams` AS `T`
ON `P`.`team_id` = `T`.`id`
WHERE `S_D`.`dribbling` > `min_dribble_points`
AND `T`.`name` = `team_name`
AND `speed` > (SELECT AVG(`speed`) FROM `skills_data`)
ORDER BY `S_D`.`speed` DESC 
LIMIT 1;
END

###
DELIMITER ;

CALL udp_find_playmaker (20, 'Skyble');


-- SELECT * FROM `players`;