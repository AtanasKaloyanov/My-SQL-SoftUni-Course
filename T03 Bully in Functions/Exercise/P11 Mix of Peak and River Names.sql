SELECT 
 `peak_name`, `river_name`,
 LOWER(concat(`peak_name`,  RIGHT (`river_name`, CHAR_LENGTH(`river_name`) - 1))) AS `mix`
 FROM 
 `peaks`, `rivers`
 WHERE RIGHT(`peak_name`, 1) = LEFT (`river_name`, 1)
 ORDER BY `mix`
