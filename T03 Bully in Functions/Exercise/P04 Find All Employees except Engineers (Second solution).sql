SELECT `first_name`, `last_name`
FROM `employees`
WHERE `job_title` NOT REGEXP 'engineer';
