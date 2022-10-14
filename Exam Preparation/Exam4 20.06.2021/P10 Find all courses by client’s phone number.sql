/*
Create a user defined function with the name 
udf_courses_by_client (phone_num VARCHAR (20)) 
that receives a client’s phone number and returns the number 
of courses that clients have in database.
*/

DROP FUNCTION `udf_courses_by_client`;

DELIMITER ###
CREATE FUNCTION `udf_courses_by_client` (`phone_num` VARCHAR(20))

RETURNS INT
DETERMINISTIC

BEGIN
DECLARE `count` INT;
SET `count` = (SELECT COUNT(`C`.`id`)
FROM `courses` AS `C`
JOIN `clients` AS `CL`
ON `C`.`client_id` = `CL`.`id`
WHERE `CL`.`phone_number` = `phone_num`
);

RETURN `count`;
END
###

SELECT udf_courses_by_client ('(803) 6386812') as `count`; 