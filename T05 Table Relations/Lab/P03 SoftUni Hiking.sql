SELECT 
`starting_point` AS `route_starting_point`,
`end_point` AS `route_end_route`, 
`leader_id`,
CONCAT(`first_name`, ' ', `last_name`) AS `leader_name`
FROM `routes` AS `R`
JOIN `campers` AS `C` ON `R` . `leader_id` = `C` . `id`;
