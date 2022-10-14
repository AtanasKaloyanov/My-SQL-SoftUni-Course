SELECT `P`.`id`, `P`.`date`, `P`.`description`, COUNT(`C`.`id`) AS `count`
FROM `photos` AS `P`
JOIN `comments` AS `C`
ON `P`.`id` = `C`.`photo_id`
GROUP BY `P`.`id`
ORDER BY `count` DESC, `P`.`id`
LIMIT 5;


-- SELECT * FROM `comments`; 