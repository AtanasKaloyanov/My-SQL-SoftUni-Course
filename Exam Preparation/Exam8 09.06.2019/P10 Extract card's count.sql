DROP FUNCTION `udf_client_cards_count`;

/*
Create a user defined function with the name 
udf_client_cards_count(name VARCHAR(30)) 
that receives a client's full name and returns the number 
of cards he has.
*/
DELIMITER ###

CREATE FUNCTION `udf_client_cards_count`(`name` VARCHAR(30)) 
RETURNS INT 
DETERMINISTIC

BEGIN 
DECLARE `count` INT;
SET `count` = (SELECT COUNT(`C`.`id`)
FROM `cards` AS `C`
JOIN `bank_accounts` AS `B_A`
ON `C`.`bank_account_id` = `B_A`.`id`
JOIN `clients` AS `CL`
ON `B_A`.`client_id` = `CL`.`id`
WHERE `CL`.`full_name` = `name`
);
RETURN `count`;
END

###

DELIMITER ;

SELECT c.full_name, udf_client_cards_count('Baxy David') as `cards` FROM clients c
WHERE c.full_name = 'Baxy David';
