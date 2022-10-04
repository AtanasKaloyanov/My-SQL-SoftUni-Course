/*
Create a stored procedure udp_award_movie which accepts the following parameters:
•	movie_title(VARCHAR(50))
Extracts data about the movie with the given title and find all actors that play in it and increase their awards with 1.
*/

 DROP PROCEDURE `udp_award_movie`;

DELIMITER ###
CREATE PROCEDURE `udp_award_movie`(`movie_title` VARCHAR(50))

BEGIN
UPDATE `actors` AS `A`
JOIN `movies_actors` AS `M_A`
ON `A`.`id` = `M_A`.`actor_id`
JOIN `movies` AS `M`
ON `M_A`.`movie_id` = `M`.`id`
SET `A`.`awards`= `A`.`awards` + 1
WHERE `M`.`title` = `movie_title`;

END
###

CALL `udp_award_movie`('Tea For Two');