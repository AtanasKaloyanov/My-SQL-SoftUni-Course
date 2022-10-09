SELECT * FROM `drivers`;
-- SELECT * FROM `cars`;

SELECT `D`.`first_name`, `D`.`last_name`, `make`, `model`, `mileage`
FROM `drivers` AS `D`
JOIN `cars_drivers` AS `C_D`
ON `D`.`id` = `C_D`.`driver_id`
JOIN `cars` AS `C`
ON `C_D`.`car_id` = `C`.`id`
WHERE `mileage` IS NOT NULL
ORDER BY `mileage` DESC, `first_name`;