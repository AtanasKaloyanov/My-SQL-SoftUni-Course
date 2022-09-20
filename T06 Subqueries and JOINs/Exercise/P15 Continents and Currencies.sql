SELECT `continent_code`, `currency_code`, COUNT(`currency_code`) AS `currency_usage`
FROM `countries` AS `C1`
GROUP BY `continent_code`, `currency_code`
HAVING `currency_usage` = (
SELECT COUNT(`currency_code`) AS `count`
FROM `countries` AS `C2`
WHERE `C1`.`continent_code` = `C2`.`continent_code`
GROUP BY `C2`.`currency_code`
ORDER BY `count` DESC
LIMIT 1
) AND `currency_usage` > 1
ORDER BY `continent_code`, `currency_code`;










