/*
Create a stored procedure udp_courses_by_address which accepts 
the following parameters:
•	address_name (with max length 100)

Extract data about the addresses with the given address_name. 
The needed data is the name of the address, 
full name of the client, level of bill 
(depends of course bill – Low – lower than 20(inclusive), 
Medium – lower than 30(inclusive), and High),
 make and condition of the car and the name of the category.
 Order addresses by make, then by client’s full name.

*/

DELIMITER ###
DROP PROCEDURE `udp_courses_by_address`;

CREATE PROCEDURE `udp_courses_by_address`(`address_name` VARCHAR(100))

BEGIN 
SELECT `A`.`name`, `CL`.`full_name`, 
CASE 
WHEN `C`.`bill` <= 20 THEN 'Low'
WHEN `C`.`bill` <= 30 THEN 'Medium'
ELSE 'High'
END AS `level_of_bill`,
`CA`.`make`, `CA`.`condition`, `CAT`.`name`

FROM `addresses` AS `A`
JOIN `courses` AS `C`
ON `A`.`id` = `C`.`from_address_id`
JOIN `clients` AS `CL`
ON `C`.`client_id` = `CL`.`id`
JOIN `cars` AS `CA`
ON `C`.`car_id` = `CA`.`id`
JOIN `categories` AS `CAT`
ON `CA`.`category_id` = `CAT`.`id`
WHERE `A`.`name` = `address_name`
ORDER BY `CA`.`make`, `CL`.`full_name`;
END
###

CALL udp_courses_by_address('700 Monterey Avenue');



