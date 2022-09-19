SELECT COUNT(`C`.`country_name`) AS `countries_without_mountains` FROM `countries` AS `C`
LEFT JOIN `mountains_countries` AS `M_C`
ON `C`.`country_code` = `M_C`.`country_code`
WHERE `M_C`.`mountain_id` IS NULL;
 
-- SELECT * FROM `countries`;
-- SELECT * FROM `mountains_countries`;