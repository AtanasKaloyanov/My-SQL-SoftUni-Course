INSERT INTO `products_stores` (`product_id`, `store_id`)
SELECT 
`id`,
1
FROM `products` AS `P`
LEFT JOIN `products_stores` AS `P_S`
ON `P`.`id` = `P_S`.`product_id`
WHERE `P_S`.`product_id` IS NULL;


-- SELECT * FROM `products_stores`
-- SELECT * FROM `products`;


