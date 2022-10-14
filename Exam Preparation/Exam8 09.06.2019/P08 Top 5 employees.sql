SELECT CONCAT(`E`.`first_name`, ' ', `E`.`last_name`), `E`.`started_on`, COUNT(`client_id`) AS `count`
FROM `employees` AS `E`
JOIN `employees_clients` AS `E_C`
ON `E`.`id` = `E_C`.`employee_id`
GROUP BY `E`.`id`
ORDER BY `count` DESC, `E_C`.`employee_id`
LIMIT 5;


