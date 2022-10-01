CREATE PROCEDURE `usp_withdraw_money`(`account_id` INT, `money_amount` DECIMAL(19,4))

BEGIN 

START TRANSACTION;
IF `money_amount` <= 0 OR `money_amount` > 
(SELECT `balance` 
FROM `accounts` AS `A`
WHERE `A`.`id` = `account_id`) 
THEN ROLLBACK;
ELSE 
UPDATE `accounts`
SET `balance` = `balance` - `money_amount`
WHERE `accounts`.`id` = `account_id`;
COMMIT;
END IF;

END