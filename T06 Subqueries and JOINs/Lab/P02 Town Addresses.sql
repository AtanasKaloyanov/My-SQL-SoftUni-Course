SELECT `T`.`town_id`, `T`.`name` AS `town_name`, `A`.`address_text`
FROM `towns` AS `T`
JOIN `addresses` AS `A`
ON `T`.`town_id` = `A`.`town_id`
WHERE `T`.`name` IN('San Francisco', 'Sofia', 'Carnation')
ORDER BY `town_id`; 


-- 9 - 2
-- 15 - 5
-- 32 - 1





