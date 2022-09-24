CREATE PROCEDURE `usp_get_holders_with_balance_higher_than`(`given_number` DOUBLE)

BEGIN
SELECT `first_name`, `last_name`
FROM `account_holders` AS `A_H`
JOIN `accounts` AS `A`
ON `A_H`.`id` = `A`.`account_holder_id`
GROUP BY `first_name`, `last_name`
HAVING SUM(`balance`) > `given_number`;
END