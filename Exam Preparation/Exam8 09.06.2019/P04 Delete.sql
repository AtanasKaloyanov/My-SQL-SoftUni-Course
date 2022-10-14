-- Delete all employees which do not have any clients

SET SQL_SAFE_UPDATES = 0;

DELETE `E`
FROM `employees` AS `E`
LEFT JOIN `employees_clients` AS `E_C`
ON `E`.`id` = `E_C`.`employee_id`
WHERE `E_C`.`client_id` IS NULL;


