/*
Create another table – logs(log_id, account_id, old_sum, new_sum). 
Add a trigger to the accounts table that enters a new entry into the logs table every time the sum on an account changes.
*/
DROP TABLE `logs`;
DROP TRIGGER `change_of_balance`;

DELIMITER ### 

CREATE TABLE `logs` (
`log_id` INT AUTO_INCREMENT,
`account_id` INT NOT NULL,
`old_sum` DECIMAL(19,4) NOT NULL,
`new_sum` DECIMAL(19,4) NOT NULL,
PRIMARY KEY(`log_id`)
);

CREATE TRIGGER `change_of_balance`
AFTER UPDATE
ON `accounts`
FOR EACH ROW

BEGIN
INSERT INTO `logs`(`account_id`, `old_sum`, `new_sum`)
VALUES(OLD.`id`, OLD.`balance`, NEW.`balance`);
END
###

