SELECT `A`.`name`, 
CASE 
WHEN HOUR(`Co`.`start`) BETWEEN 6 AND 20 THEN 'Day'
ELSE 'Night'
END AS `day_time`,
`Co`.`bill`, `C`.`full_name`, `Ca`. `make`, `Ca`.`model`, `Cat`.`name`
FROM `addresses` AS `A`
JOIN `courses` AS `Co`
ON `A`.`id` = `Co`.`from_address_id`
JOIN `clients` AS `C`
ON `Co`.`client_id` = `C`.`id`
JOIN `cars` AS `Ca`
ON `Co`.`car_id` = `Ca`.`id`
JOIN `categories` AS `Cat`
ON `Ca`.`category_id` = `Cat`.`id`
ORDER BY `Co`.`id`;

/*
IF `given_salary` < 30000 THEN SET `salary_level` := 'Low';
ELSEIF `given_salary` <= 50000 THEN SET `salary_level` := 'Average';
ELSE SET `salary_level` := 'High';
*/