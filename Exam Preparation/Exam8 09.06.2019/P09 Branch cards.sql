SELECT `B`.`name`, COUNT(`CA`.`id`) AS `count`
FROM `branches` AS `B`
LEFT JOIN `employees` AS `E`
ON `B`.`id` = `E`.`branch_id`
LEFT JOIN `employees_clients` AS `E_C`
ON `E`.`id` = `E_C`.`employee_id`
LEFT JOIN `clients` AS `C`
ON `E_C`.`client_id` = `C`.`id`
LEFT JOIN `bank_accounts` AS `B_A`
ON `C`.`id` = `B_A`.`client_id`
LEFT JOIN `cards` AS `CA`
ON `B_A`.`id` = `CA`.`bank_account_id`
GROUP BY `B`.`id`
ORDER BY `count` DESC, `B`.`name`

;