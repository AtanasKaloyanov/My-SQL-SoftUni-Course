SELECT REVERSE(`S`.`name`) AS `reversed_name`, CONCAT(UPPER(`T`.`name`), '-', `A`.`name`) AS `full_address`, COUNT(`E`.`id`) AS `count`
FROM `stores` AS `S`
JOIN `addresses` AS `A`
ON `S`.`address_id` = `A`.`id`
JOIN `towns` AS `T`
ON `A`.`town_id` = `T`.`id`
JOIN `employees` AS `E`
ON `E`.`store_id` = `S`.`id`
GROUP BY `S`.`name`
HAVING `count` >= 1
ORDER BY `full_address`


