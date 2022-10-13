/*
Create a stored procedure udp_reduce_price which accepts
 the following parameters:
•	category_name (VARCHAR(50))
Extracts data about the products from the given category 
and reduces the prices 
by 30% of all products which have reviews with rating 
less than 4 and are from the given category.
*/

DROP PROCEDURE `udp_reduce_price`;
DELIMITER ###

CREATE PROCEDURE `udp_reduce_price`(`category_name`VARCHAR(50))

BEGIN 
UPDATE `products` AS `P`
JOIN `categories` AS `C`
ON `P`.`category_id` = `C`.`id`
JOIN `reviews` AS `R`
ON `P`.`review_id` = `R`.`id`
SET `P`.`price` =  0.7 * `P`.`price`
WHERE `C`.`name` = `category_name`
AND `R`.`rating` < 4;
END
###

DELIMITER ;

CALL udp_reduce_price ('Phones and tablets');
