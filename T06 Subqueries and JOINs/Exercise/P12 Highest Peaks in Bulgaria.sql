/*
Write a query that selects:
•	country_code	
•	mountain_range
•	peak_name
•	elevation
Filter all peaks in Bulgaria with elevation over 2835. Return all rows sorted by elevation in descending order.
*/

SELECT `M_C`.`country_code`, `M`.`mountain_range`, `P`.`peak_name`, `P`.`elevation`
FROM `mountains_countries` AS `M_C`
JOIN `mountains` AS `M`
ON `M_C`.`mountain_id` = `M`.`id`
JOIN `peaks` AS `P`
ON `P`.`mountain_id` = `M`.`id`
WHERE `M_C`.`country_code` = 'BG'
AND `P`.`elevation` > 2835
ORDER BY `P`.`elevation` DESC;

-- SELECT * FROM `mountains_countries`;
-- SELECT * FROM `mountains`
-- SELECT * FROM `peaks`;



