SELECT `G`.`name`, `G`.`release_date`, CONCAT(LEFT(`description`, 10), '...'), 
CASE
WHEN MONTH(`release_date`) IN('01', '02', '03') THEN 'Q1'
WHEN MONTH(`release_date`) IN('04', '05', '06') THEN 'Q2'
WHEN MONTH(`release_date`) IN('07', '08', '09') THEN 'Q3'
WHEN MONTH(`release_date`) IN('10', '11', '12') THEN 'Q4'
END AS `quarter`,
`T`.`name`
FROM `games` AS `G`
JOIN `teams` AS `T`
ON `G`.`team_id` = `T`.`id`
WHERE YEAR(`release_date`) = 2022
AND MONTH(`G`.`release_date`) % 2 = 0
AND `G`.`name` LIKE REVERSE('2%')
ORDER BY `quarter`;