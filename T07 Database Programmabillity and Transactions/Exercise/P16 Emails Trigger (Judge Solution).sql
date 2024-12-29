CREATE TABLE `logs` (
`log_id` INT AUTO_INCREMENT,
`account_id` INT NOT NULL,
`old_sum` DECIMAL(19,4) NOT NULL,
`new_sum` DECIMAL(19,4) NOT NULL,
PRIMARY KEY(`log_id`)
);

CREATE TABLE `notification_emails` (
    `id` INT AUTO_INCREMENT,
    `recipient` INT NOT NULL,
    `subject` TEXT,
    `body` TEXT,
    PRIMARY KEY (`id`)
);

CREATE TRIGGER `change_of_balance`
AFTER UPDATE
ON `accounts`
FOR EACH ROW

BEGIN
INSERT INTO `logs`(`account_id`, `old_sum`, `new_sum`)
VALUES(OLD.`id`, OLD.`balance`, NEW.`balance`);
INSERT INTO `notification_emails` (`recipient`, `subject`, `body`)
VALUES(NEW.`id`, 
CONCAT_WS(' ', 'Balance change for account:', NEW.`id`), 
CONCAT_WS(' ','On', DATE_FORMAT(NOW(), '%b %d %Y'), 
              'at', DATE_FORMAT(NOW(), '%r'), 
              'your balance was chanched from', OLD.balance, 'to', NEW.balance));
END 