/*
Add stored procedures usp_withdraw_money(account_id, money_amount) that operate in transactions. 
Make sure to guarantee withdraw is done only when balance is enough and money_amount is valid positive number. 
Work with precision up to fourth sign after decimal point. 
The procedure should produce exact results working with the specified precision.
*/
SET SQL_SAFE_UPDATES = 0;

DROP PROCEDURE `usp_deposit_money`;
DELIMITER ###
CREATE PROCEDURE `usp_deposit_money`(`account_id` INT, `money_amount` DECIMAL(19,4))

BEGIN 

START TRANSACTION;

IF (`money_amount` <= 0) THEN ROLLBACK;
ELSE 
UPDATE `accounts`
SET `balance` = `balance` + `money_amount`
WHERE `accounts`.`id` = `account_id`;
COMMIT;
SELECT `id`, `account_holder_id`, `balance`
FROM `accounts`
WHERE `accounts`.`id` = `account_id`;

END IF;

END
###

CALL `usp_deposit_money`(1, 10);
