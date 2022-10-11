SELECT `P`.`id`, 
(
SELECT COUNT(`L`.`id`) 
FROM `likes` AS `L` 
WHERE `P`.`id` = `L`.`photo_id`) AS `likes_count`, 
(
SELECT COUNT(`C`.`id`)
FROM `comments` AS `C`
WHERE `P`.`id` = `C`.`photo_id`) AS `comments_count`
FROM `photos` AS `P`
ORDER BY `likes_count` DESC, `comments_count` DESC, `P`.`id`
 
