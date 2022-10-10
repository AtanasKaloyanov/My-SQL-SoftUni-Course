UPDATE `employees` AS `E`
JOIN `stores` AS `S`
ON `E`.`store_id` = `S`.`id`
SET `manager_id` = 3,
`salary` = `salary` - 500
WHERE YEAR(`hire_date`) > 2003
AND `S`.`name` != 'Cardguard'
AND `S`.`name` != 'Veribet'


-- SELECT * FROM `stores`;
-- SELECT * FROM `employees`;