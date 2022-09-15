
SELECT `driver_id`, `vehicle_type`, 
(SELECT CONCAT(`first_name`, ' ', `last_name`)
FROM `campers` AS `C`
WHERE `C` . `id` = `V` . `driver_id`)
FROM `vehicles` AS `V` 














