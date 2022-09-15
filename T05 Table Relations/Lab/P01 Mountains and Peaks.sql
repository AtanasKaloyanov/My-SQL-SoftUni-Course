CREATE TABLE `mountains` (
`id` INT AUTO_INCREMENT,
`name` VARCHAR(20),
PRIMARY KEY (`id`));

CREATE TABLE `peaks` (
`id` INT AUTO_INCREMENT,
`name` VARCHAR(20),
`mountain_id` INT,
PRIMARY KEY (`id`),
CONSTRAINT `fkey_mountain_id_mountains`
FOREIGN KEY (`mountain_id`)
REFERENCES `mountains` (`id`));