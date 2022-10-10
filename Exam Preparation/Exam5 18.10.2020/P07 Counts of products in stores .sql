SELECT `S`.`name`, COUNT(`P`.`id`) AS `count`, ROUND(AVG(`price`), 2) AS `avg`
FROM `stores` AS `S`
LEFT JOIN `products_stores` AS `P_S`
ON `S`.`id` = `P_S`.`store_id`
LEFT JOIN `products` AS `P`
ON `P_S`.`product_id` = `P`.`id`
GROUP BY `S`.`name`
ORDER BY `count` DESC, `avg` DESC, `S`.`id`
;