/*
For each country, find the elevation of the highest peak and the length of the longest river, 
sorted by the highest peak_elevation (from highest to lowest), 
then by the longest river_length (from longest to smallest), 
then by country_name (alphabetically). 
Display NULL when no data is available in some of the columns.
Limit only the first 5 rows.
*/

-- SELECT * FROM `countries`;
-- SELECT * FROM `peaks`;
-- SELECT * FROM `mountains_countries`;
-- SELECT * FROM `rivers`;
-- SELECT * FROM `countries_rivers`;

SELECT `C`.`country_name`, 
MAX(`elevation`) AS `highest_peak_elevation`,
MAX(`R`.`length`) AS `longest_river_length`
FROM `countries` AS `C`
LEFT JOIN `mountains_countries` AS `M_C`
ON `C`.`country_code` = `M_C`.`country_code`
LEFT JOIN `peaks` AS `P`
ON `M_C`.`mountain_id` = `P`.`mountain_id`
LEFT JOIN `countries_rivers` AS `C_R`
ON `C`.`country_code` = `C_R`.`country_code`
LEFT JOIN `rivers` AS `R`
ON `C_R`.`river_id` = `R`.`id`
GROUP BY `country_name`
ORDER BY `highest_peak_elevation` DESC, `longest_river_length` DESC, `country_name`
LIMIT 5;
