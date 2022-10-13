

/*
Create a user defined function with the name 
udf_game_info_by_name (game_name VARCHAR (20)) that receives 
a game's name and returns the basic information as a text 
sentence.
•	Example
o	The "game_name" is developed by a "team_name" in an office 
with an address "address_text"
*/
-- DROP FUNCTION `udf_name_info_by_name`
DELIMITER ###

CREATE FUNCTION `udf_game_info_by_name` (`game_name` VARCHAR(255))
RETURNS VARCHAR(255)
DETERMINISTIC

BEGIN
DECLARE `team_name` VARCHAR(255);
DECLARE `address_text` VARCHAR(255);

SET `team_name` = (SELECT `T`.`name`
FROM `teams` AS `T`
JOIN `games` AS `G`
ON `T`.`id` = `G`.`team_id`
WHERE `G`.`name` = `game_name`
);

SET `address_text` = (SELECT `A`.`name`
FROM `addresses` AS `A`
JOIN `offices` AS `O`
ON `A`.`id` = `O`.`address_id`
JOIN `teams` AS `T`
ON `O`.`id` = `T`.`office_id`
JOIN `games` AS `G`
ON `T`.`id` = `G`.`team_id`
WHERE `G`.`name` = `game_name` 
);

RETURN CONCAT_WS(' ', 'The', `game_name`, 'is developed by a', `team_name`, 'in an office with an address', `address_text`);
END
###

DELIMITER ;

SELECT udf_game_info_by_name('Bitwolf') AS info;


