SELECT `driver_id`, `vehicle_type`, 
CONCAT(`first_name`, ' ', `last_name`) AS `name`
FROM `vehicles` AS `V`
JOIN `campers` AS `C`
ON `V` . `driver_id` = `C` . `id`
