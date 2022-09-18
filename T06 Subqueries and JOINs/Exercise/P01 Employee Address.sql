SELECT `employee_id`, `job_title`, `E`.`address_id`, `address_text` 
FROM `employees` AS `E`
JOIN `addresses` AS `A`
ON `E`.`address_id` = `A`.`address_id`
ORDER BY `address_id`
LIMIT 5;


