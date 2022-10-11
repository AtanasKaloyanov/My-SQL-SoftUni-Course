 DROP FUNCTION `udf_users_photos_count`;

DELIMITER ###
CREATE FUNCTION `udf_users_photos_count` (`username` VARCHAR(30))
RETURNS INT
DETERMINISTIC

BEGIN 
DECLARE `count` INT;
SET `count` = (
SELECT COUNT(`P`.`id`) 
FROM `photos` AS `P`
JOIN `users_photos` AS `U_P`
ON `P`.`id` = `U_P`.`photo_id`
JOIN `users` AS `U`
ON `U_P`.`user_id` = `U`.`id`
WHERE `username` = `U`.`username`
); 

RETURN `count`;
END
###

DELIMITER ;

SELECT udf_users_photos_count('ssantryd') AS photosCount;