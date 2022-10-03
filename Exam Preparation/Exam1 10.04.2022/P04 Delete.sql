-- Delete all countries that don’t have movies.
-- SELECT * FROM `movies`;
-- SELECT * FROM `countries`;
SET SQL_SAFE_UPDATES = 0;

DELETE `C`
FROM `countries` AS `C`
LEFT JOIN `movies` AS `M`
ON `C`.`id` = `M`.`country_id`
WHERE `M`.`id` IS NULL