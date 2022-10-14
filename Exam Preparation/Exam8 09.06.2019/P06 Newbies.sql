SELECT `id`, CONCAT(`first_name`, ' ', `last_name`), CONCAT('$',`salary`),`started_on`
FROM `employees`
WHERE `salary` >= 100000
AND YEAR(`started_on`) >= '2018'
ORDER BY `salary` DESC, `id`