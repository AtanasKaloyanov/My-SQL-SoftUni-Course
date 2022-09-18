SELECT `E`.`first_name`, `E`.`last_name`, `T`.`name`, `A`.`address_text`
FROM `employees` AS `E`
JOIN `addresses` AS `A`
ON `E`.`address_id` = `A`.`address_id`
JOIN `towns` AS `T`
ON `A`.`town_id` = `T`.`town_id`
ORDER BY `first_name`, `last_name`
LIMIT 5;




