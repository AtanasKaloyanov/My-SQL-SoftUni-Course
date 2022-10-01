CREATE PROCEDURE `usp_transfer_money`(`from_account_id` INT, `to_account_id` INT, `amount` DECIMAL(19,4))

BEGIN
START TRANSACTION;
IF `from_account_id` <= 0 OR `from_account_id` > 18 OR `to_account_id` <= 0 OR `to_account_id` > 18 
OR `from_account_id` = `to_account_id` 
OR `amount` <= 0
OR `amount` > (SELECT `balance` FROM `accounts` WHERE `id` = `from_account_id`)

THEN ROLLBACK;
ELSE 
UPDATE `accounts`
SET `balance` = `balance` - `amount`
WHERE `id` = `from_account_id`;
UPDATE `accounts`
SET `balance` = `balance` + `amount`
WHERE `id` = `to_account_id`;
COMMIT;
END IF;

END