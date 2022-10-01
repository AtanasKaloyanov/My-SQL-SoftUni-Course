CREATE FUNCTION `ufn_calculate_future_value`(`sum` DECIMAL(19,4), `interest_rate` DECIMAL(19,4), `years` INT)
RETURNS DECIMAL(19,4)
DETERMINISTIC

BEGIN
DECLARE `final_sum` DECIMAL(19,4);
SET `final_sum` = `sum` * (POW((1 + `interest_rate`), `years`));
RETURN `final_sum`;
END;

CREATE PROCEDURE `usp_calculate_future_value_for_account`(`id_of_account` INT, `interest_rate` DECIMAL(19,4))

BEGIN 
SELECT `A`.`id`, `A_H`.`first_name`, `A_H`.`last_name`, `A`.`balance`, `ufn_calculate_future_value`(`A`.`balance`, `interest_rate`, 5) AS `balance_in_5_years`
FROM `accounts` AS `A`
JOIN `account_holders` AS `A_H`
ON `A`.`account_holder_id` = `A_H`.`id`
WHERE `A`.`id` = `id_of_account`;
END;