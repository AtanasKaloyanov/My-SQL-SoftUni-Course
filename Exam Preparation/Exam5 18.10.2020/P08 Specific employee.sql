SELECT CONCAT(`first_name`, ' ', `last_name`) AS `Full_name`, `S`.`name`,`A`.`name`, `E`.`salary`
FROM `employees` AS `E`
JOIN `stores` AS `S`
ON `E`.`store_id` = `S`.`id`
JOIN `addresses` AS `A`
ON `S`.`address_id` = `A`.`id`
WHERE `E`.`salary` < 4000 
AND `A`.`name` REGEXP '5'
AND LENGTH(`S`.`name`) > 8
AND `E`.`last_name` LIKE REVERSE('n%');