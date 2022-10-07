-- SELECT * FROM `games`;
SELECT * FROM `teams`;

INSERT INTO `games`  (`name`, `rating`, `budget`, `team_id`)
SELECT 
REVERSE(LOWER(RIGHT(`name`, CHAR_LENGTH(`name`) - 1))),
`id`,
`leader_id` * 1000,
`id`
FROM `teams`
WHERE `id` BETWEEN 1 AND 9;
