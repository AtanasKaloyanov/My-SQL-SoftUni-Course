SELECT `name`, `price`, `best_before`, CONCAT(LEFT(`description`, 10), '...'), `url` 
FROM `products` AS `P`
JOIN `pictures` AS `Pi`
ON `P`.`picture_id` = `Pi`.`id`
WHERE CHAR_LENGTH(`description`) > 100
AND YEAR(`added_on`) < 2019
AND `price` > 20
ORDER BY `price` DESC;


-- SELECT * FROM `products`;