SET SQL_SAFE_UPDATES = 0;

DELETE `W` 
FROM `waiters` AS `W` 
LEFT JOIN `orders` AS `O`
ON `W`.`id` = `O`.`waiter_id`
WHERE `O`.`id` IS NULL

