/*
Your task is to create a stored procedure usp_get_holders_with_balance_higher_than 
that accepts a number as a parameter and returns all people who have more money in total of all their accounts than the supplied number. 
The result should be sorted by account_holders.id ascending. 
*/

DROP PROCEDURE `usp_get_holders_with_balance_higher_than`;

DELIMITER ###
CREATE PROCEDURE `usp_get_holders_with_balance_higher_than`(`given_number` DOUBLE)

BEGIN
SELECT `first_name`, `last_name`
FROM `account_holders` AS `A_H`
JOIN `accounts` AS `A`
ON `A_H`.`id` = `A`.`account_holder_id`
GROUP BY `first_name`, `last_name`
HAVING SUM(`balance`) > `given_number`;
END
###

CALL `usp_get_holders_with_balance_higher_than`(7000)


