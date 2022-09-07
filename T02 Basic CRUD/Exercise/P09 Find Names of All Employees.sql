SELECT CONCAT_WS(' ',`first_name`, `middle_name`, `last_name`)
FROM `employees`
WHERE `salary` IN (12500, 14000, 23600, 25000);
