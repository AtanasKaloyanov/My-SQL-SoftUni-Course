SELECT `P`.`id`, `P`.`name`, COUNT(`order_id`) AS `count`
FROM `products` AS `P`
JOIN `orders_products` AS `O_P`
ON `P`.`id` = `O_P`.`product_id`
GROUP BY `P`.`name`
HAVING `count` >= 5
ORDER BY `count` DESC, `P`.`name`;
