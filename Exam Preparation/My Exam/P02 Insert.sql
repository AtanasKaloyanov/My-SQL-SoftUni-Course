INSERT INTO `products`(`name`, `type`, `price`)
SELECT 
CONCAT(`last_name`, ' ', 'specialty'),
'Cocktail',
CEIL(0.01 * `salary`)
FROM `waiters`
WHERE `waiters`.`id` > 6


-- SELECT * FROM `waiters`;