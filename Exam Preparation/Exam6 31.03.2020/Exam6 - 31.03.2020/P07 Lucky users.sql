SELECT CONCAT(`U`.`id`, ' ', `U`.`username`), `U`.`email` 
FROM `users` AS `U` 
JOIN `users_photos` AS `U_P`
ON `U`.`id` = `U_P`.`photo_id`
WHERE `U`.`id` = `U_P`.`user_id`
ORDER BY `U`.`id`;