ALTER TABLE `countries`
DROP FOREIGN KEY `fk_countries_currencies`,
MODIFY COLUMN `currency_code` VARCHAR(10);

CREATE VIEW `v` AS
SELECT `country_name` AS `name`,
`country_code` AS `code`,
`currency_code` AS `currency`
FROM `countries`;


UPDATE `v`
SET `currency` = 'Euro'
WHERE `currency` IN ('EUR');

UPDATE `v`
SET `currency` = 'Not Euro'
WHERE `currency` NOT IN ('Euro');

SELECT * FROM `v`;