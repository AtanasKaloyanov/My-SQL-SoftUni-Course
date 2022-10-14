/*
Create a stored procedure udp_clientinfo which accepts 
the following parameters:
•	full_name
And extracts data about the client with the given full name.
Aside from the full_name, the procedure should extract 
the client's age, bank account number and balance.
The account’s salary should have "$" prefix.
*/



DROP PROCEDURE `udp_clientinfo`;

DELIMITER ###
CREATE PROCEDURE `udp_clientinfo` (`full_name` VARCHAR(50))

BEGIN 
SELECT `C`.`full_name`, `C`.`age`, `B_A`.`account_number`, CONCAT('$', `B_A`.`balance`)
FROM `clients` AS `C`
JOIN `bank_accounts` AS `B_A`
ON `C`.`id` = `B_A`.`client_id`
WHERE `C`.`full_name` = `full_name`;

END
###

DELIMITER ;

CALL udp_clientinfo('Hunter Wesgate');


