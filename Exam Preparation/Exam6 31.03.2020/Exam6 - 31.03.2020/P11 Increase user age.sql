SET SQL_SAFE_UPDATES = 0;

DROP PROCEDURE `udp_modify_user`;

DELIMITER ###
CREATE PROCEDURE `udp_modify_user`(`address` VARCHAR(30), `town`VARCHAR(30))

BEGIN 
UPDATE `users` AS `U`
JOIN `addresses` AS `A`
ON `U`.`id` = `A`.`user_id`
SET `U`.`age` = `U`.`age` + 10
WHERE `address` = `A`.`address` 
AND `town` = `A`.`town`;
END
###

DELIMITER ;

CALL udp_modify_user ('97 Valley Edge Parkway', 'Divinópolis');
SELECT u.username, u.email,u.gender,u.age,u.job_title FROM users AS u
WHERE u.username = 'eblagden21';


-- SELECT * FROM `users`;

