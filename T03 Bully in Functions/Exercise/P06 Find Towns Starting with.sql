SELECT `town_id`, `name` FROM `towns`
WHERE 
left(`name`, 1) REGEXP 'M|K|B|E'
ORDER BY `name`;