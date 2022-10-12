-- DROP FUNCTION (`udf_stadium_players_count`)

DELIMITER ###
DROP FUNCTION `udf_stadium_players_count`;

CREATE FUNCTION `udf_stadium_players_count`(`stadium_name` VARCHAR(30))
RETURNS INT 
DETERMINISTIC

BEGIN 
DECLARE `var` INT;
SET `var` = (SELECT COUNT(`P`.`id`) 
FROM `players` AS `P`
JOIN `teams` AS `T`
ON `P`.`team_id` = `T`.`id`
JOIN `stadiums` AS `S`
ON `T`.`stadium_id` = `S`.`id`
WHERE `S`.`name` = `stadium_name`
);

RETURN `var`;

END
###

-- SELECT udf_stadium_players_count ('Jaxworks') as `count`; 
SELECT udf_stadium_players_count ('Linklinks') as `count`; 