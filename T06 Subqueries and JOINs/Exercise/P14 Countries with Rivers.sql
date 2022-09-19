/*
Write a query that selects:
•	country_name
•	river_name
Find the first 5 countries with or without rivers in Africa. Sort them by country_name in ascending order.
*/

-- SELECT * FROM `countries_rivers`;
-- SELECT * FROM `countries`;
-- SELECT * FROM `rivers`;

SELECT `C`.`country_name`, `R`.`river_name`
FROM `countries` AS `C`
LEFT JOIN `countries_rivers` AS `C_R`
ON `C`.`country_code` = `C_R`.`country_code`
LEFT JOIN `rivers` AS `R`
ON `C_R`.`river_id` = `R`.`id`
WHERE `C`.`continent_code` = 'AF'
ORDER BY `C`.`country_name`
LIMIT 5;




