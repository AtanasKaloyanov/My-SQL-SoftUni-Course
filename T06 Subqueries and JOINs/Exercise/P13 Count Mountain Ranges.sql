/*
Write a query that selects:
•	country_code
•	mountain_range
Filter the count of the mountain ranges in the United States, Russia and Bulgaria. Sort result by mountain_range count in decreasing order.
*/

SELECT `M_C`.`country_code`, COUNT(`M`.`mountain_range`) AS `mountains_range`
FROM `mountains_countries` AS `M_C`
JOIN `mountains` AS `M`
ON `M_C`.`mountain_id` = `M`.`id`
WHERE `country_code` IN('BG', 'RU', 'US')
GROUP BY `country_code`
ORDER BY `mountains_range` DESC;
