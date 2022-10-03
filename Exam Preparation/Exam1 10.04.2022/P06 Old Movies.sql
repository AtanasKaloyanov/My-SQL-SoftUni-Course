/*
Write a query that returns: title, runtime, budget and release_date from table movies_additional_info. 
Filter movies which have been released from 1996 to 1999 year (inclusive).
Order the results ascending by runtime then by id and show only the first 20 results.
*/

SELECT `M`.`id`,`M`.`title`, `MAI`.`runtime`, `MAI`.`budget`, `MAI`.`release_date`
FROM `movies` AS `M`
JOIN `movies_additional_info` AS `MAI`
ON `M`.`movie_info_id` = `MAI`.`id`
WHERE YEAR(`release_date`) BETWEEN 1996 AND 1999
ORDER BY `MAI`.`runtime`, `MAI`.`id`
LIMIT 20;

-- SELECT * FROM `movies_additional_info`;
-- SELECT * FROM `movies`