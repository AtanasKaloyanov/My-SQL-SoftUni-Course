DROP PROCEDURE `usp_get_towns_starting_with`;

DELIMITER ###
CREATE PROCEDURE `usp_get_towns_starting_with`(`given_string` VARCHAR(100))

BEGIN
SELECT `name` FROM `towns` AS `T`
WHERE LEFT(`T`.`name`, LENGTH(`given_string`)) = `given_string`
ORDER BY `T`.`name`;
END
###

DELIMITER ;

CALL `usp_get_towns_starting_with`('b');