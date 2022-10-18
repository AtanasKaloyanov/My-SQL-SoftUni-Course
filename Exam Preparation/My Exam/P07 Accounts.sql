
SELECT CONCAT(`W`.`last_name`, `W`.`first_name`, CHAR_LENGTH(`first_name`), 'Restaurant'), 
REVERSE(SUBSTRING(`email`, 2, 12)) AS `pass`
 FROM `waiters` AS `W`
 WHERE `salary` IS NOT NULL
 ORDER BY `pass` DESC;
 
 
 