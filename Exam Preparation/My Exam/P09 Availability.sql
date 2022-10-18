
SELECT `T`.`id`, `T`.`capacity`, COUNT(`O_C`.`client_id`) AS `count`, 
CASE
WHEN `T`.`capacity` > COUNT(`O_C`.`client_id`) THEN 'Free seats'
WHEN `T`.`capacity` = COUNT(`O_C`.`client_id`) THEN 'Full'
WHEN `T`.`capacity` < COUNT(`O_C`.`client_id`) THEN 'Extra seats'
END
FROM `tables` AS `T`
JOIN `orders` AS `O`
ON `T`.`id` = `O`.`table_id`
JOIN `orders_clients` AS `O_C`
ON `O`.`id` = `O_C`.`order_id`
WHERE `T`.`floor` = 1
GROUP BY `T`.`id`
ORDER BY `T`.`id` DESC




-- SELECT * FROM `tables`