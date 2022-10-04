/*
Create a user defined function with the name udf_actor_history_movies_count(full_name VARCHAR(50)) 
that receives an actor’s full name and returns the total number of history movies in which the actor has a role.
*/
DROP FUNCTION `udf_actor_history_movies_count`;

DELIMITER ###
CREATE FUNCTION `udf_actor_history_movies_count`(`full_name` VARCHAR(50)) 
RETURNS INT
DETERMINISTIC

BEGIN 

DECLARE `history_movies` INT;
SET `history_movies` = (SELECT 
COUNT(`M_A`.`movie_id`) 
FROM `movies_actors` AS `M_A` 
JOIN `actors` AS `A`
ON `M_A`.`actor_id` = `A`.`id`
JOIN `genres_movies` AS `G_M`
ON `M_A`.`movie_id` = `G_M`.`movie_id`
JOIN `genres` AS `G`
ON `G_M`.`genre_id` = `G`.`id`
WHERE CONCAT_WS(' ', `A`.`first_name`, `A`.`last_name`) = `full_name` 
AND `G`.`name` = 'History'
GROUP BY `M_A`.`actor_id`
);

RETURN `history_movies`;

END
###

-- SELECT  `udf_actor_history_movies_count`('Stephan Lundberg')
SELECT  `udf_actor_history_movies_count`('Jared Di Batista')

