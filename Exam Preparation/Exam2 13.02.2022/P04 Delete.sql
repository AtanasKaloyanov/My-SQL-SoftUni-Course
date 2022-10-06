DELETE `C`
FROM `customers` AS `C`
LEFT JOIN `orders` AS `O`
ON `C`.`id` = `O`.`customer_id`
WHERE `O`.`customer_id` IS NULL;

