
SELECT DISTINCT CONCAT(LEFT(`P`.`description`, 30), '...'), `P`.`date`
FROM `photos` AS `P`
WHERE DAY(`P`.`date`) = 10
ORDER BY `P`.`date` DESC;


-- SELECT * FROM `photos`;
-- SELECT * FROM `photos`