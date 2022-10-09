
SELECT `C`.`id`, `C`.`make`, `C`.`mileage`, COUNT(`Co`.`id`) AS `count_of_courses`, ROUND(AVG(`bill`), 2) AS `avg_bill`
FROM `cars` AS `C`
LEFT JOIN `courses` AS `Co`
ON `C`.`id` = `Co`.`car_id`
GROUP BY `C`.`id`
HAVING `count_of_courses` != 2
ORDER BY `count_of_courses` DESC, `C`.`id`;


