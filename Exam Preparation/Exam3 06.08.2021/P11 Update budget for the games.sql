/*
We will have to increase the support of the games that 
do not have any categories yet. We should find them and 
increase their budget, as well as push their release date
The procedure must increase the budget by 100,000 and 
add one year to their release_date to the games that do
 not have any categories and their rating is more than 
 (not equal) the given parameter min_game_rating and release 
 date is NOT NULL.
Create a stored procedure udp_update_budget which accepts 
the following parameters:
•	min_game_rating(floating point number) 
*/
DROP PROCEDURE `udp_update_budget`;
SET SQL_SAFE_UPDATES = 0;

DELIMITER ###
CREATE PROCEDURE `udp_update_budget` (`min_game_rating` FLOAT)

BEGIN 
UPDATE `games` AS `G`
LEFT JOIN `games_categories` AS `G_C`
ON `G`.`id` = `G_C`.`game_id`
SET `budget` = `budget` + 100000 ,
 `G`.`release_date` = ADDDATE(`G`.`release_date`, INTERVAL 1 YEAR)
WHERE `G_C`.`category_id` IS NULL 
AND `rating` > `min_game_rating`
AND `G`.`rating` IS NOT NULL;

END
###
CALL udp_update_budget (8);