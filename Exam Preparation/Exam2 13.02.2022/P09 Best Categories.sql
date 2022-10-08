SELECT COUNT(`P`.`id`) AS `count`, `C`.`name`, SUM(`P`.`quantity_in_stock`) AS `total_quantity` FROM `products` AS `P`
 JOIN `categories` AS `C`
 ON   `P`.`category_id` = `C`.`id`
 GROUP BY `category_id`
 ORDER BY `count` DESC, `total_quantity`
 LIMIT 5;