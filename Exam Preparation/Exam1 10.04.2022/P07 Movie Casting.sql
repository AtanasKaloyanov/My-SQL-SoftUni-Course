/*
Some actors are free and can apply the casting for a new movie. You must search for them and prepare their documents.
Write a query that returns:  full name, email, age and height for all actors that are not participating in a movie.
To find their email you must take their last name reversed followed by the number of characters of their last name and then the casting email “@cast.com”
Order by height in ascending order.
*/

SELECT CONCAT(`first_name`, ' ', `last_name`) AS `full_name`, CONCAT(REVERSE(`last_name`), LENGTH(`last_name`), '@cast.com') AS `email`, 2022 - YEAR(`birthdate`) AS `age`, `height`
FROM `actors` AS `A`
LEFT JOIN `movies_actors` AS `M_A`
ON `A`.`id` = `M_A`.`actor_id` 
WHERE `M_A`.`movie_id` IS NULL
ORDER BY `height`;


-- SELECT * FROM `movies_actors` ;
 