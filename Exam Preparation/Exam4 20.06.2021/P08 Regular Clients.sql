/*
Extract the regular clients, who have ridden in more than one car. 
The second letter of the customer's full name must be 'a'. 
Select the full name, the count of cars that he ridden and total sum of all courses.
Order clients by their full_name.
*/

SELECT `C`.`full_name`, COUNT(`Ca`.`id`) AS `count_of_cars`, SUM(`Co`.`bill`)
FROM `clients` AS `C`
JOIN `courses` AS `Co`
ON `C`.`id` = `Co`.`client_id`
JOIN `cars` AS `Ca`
ON `Co`.`car_id` = `Ca`.`id`
GROUP BY `C`.`id` 
HAVING `count_of_cars` > 1
AND `C`.`full_name` LIKE '_a%' 
ORDER BY `C`.`full_name`;


-- SELECT * FROM `courses`;





;


-- SELECT * FROM `clients`;