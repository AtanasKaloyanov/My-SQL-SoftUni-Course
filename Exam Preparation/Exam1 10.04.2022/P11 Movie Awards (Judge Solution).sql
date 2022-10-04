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