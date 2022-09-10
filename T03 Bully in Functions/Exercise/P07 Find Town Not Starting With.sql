SELECT `town_id`, `name` FROM `towns`
WHERE LEFT(`name`, 1) NOT REGEXP 'R|B|D'
ORDER BY `name`;