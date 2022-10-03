SELECT `M`.`title`, 
CASE
  WHEN `M_A_I`.`rating` <= 4 THEN 'poor'
  WHEN `M_A_I`.`rating` <= 7 THEN 'good'
  ELSE 'excellent'
END AS `rating`,
IF (`M_A_I`.`has_subtitles`, 'english', '-') AS `subtitles`,
`M_A_I`.`budget`
FROM `movies` AS `M`
JOIN `movies_additional_info` AS `M_A_I`
ON `M`.`movie_info_id` = `M_A_I`.`id`
ORDER BY `budget` DESC;

 -- SELECT * FROM `movies_additional_info`;