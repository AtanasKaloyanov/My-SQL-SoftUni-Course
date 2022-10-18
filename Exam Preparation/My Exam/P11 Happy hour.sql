/*
Create a stored procedure udp_happy_hour which accepts 
the following parameters:
•	type (VARCHAR(50))
Extracts data about the products from the given type and 
reduces the prices by 20% of 
all products which have price higher or equal to 10.00 
and are from the given type.
*/

DROP PROCEDURE `udp_happy_hour`;

DELIMITER ###

CREATE PROCEDURE `udp_happy_hour` (`type` VARCHAR(50))

BEGIN 
UPDATE `products` AS `P`
SET `P`.`price` = 0.8 * `P`.`price`
WHERE `P`.`price` >= 10.00
AND `P`.`type` = `type`;
END
###

DELIMITER ;

CALL udp_happy_hour ('Cognac');
