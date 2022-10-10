DELETE `E` 
FROM `employees` AS `E`
WHERE `salary` >= 6000
AND `manager_id` IS NOT NULL;