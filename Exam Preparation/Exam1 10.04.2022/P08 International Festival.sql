/*
Extract from the database, the name the country and the number of movies created in this country. The number of movies must be higher or equal to 7.
Order the results descending by name.
*/

SELECT `C`.`name`,
(SELECT COUNT(`M`.`country_id`) 
FROM `movies` AS `M`
WHERE `C`.`id` = `M`.`country_id`
) AS `movies_count` 
FROM `countries` AS `C`
HAVING `movies_count` >= 7
ORDER BY `C`.`name` DESC;

-- SELECT * FROM `movies`;