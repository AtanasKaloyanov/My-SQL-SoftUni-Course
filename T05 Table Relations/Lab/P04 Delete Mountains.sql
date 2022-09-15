CREATE TABLE `mountains` (
`id` INT AUTO_INCREMENT NOT NULL,
`name` VARCHAR(50) NOT NULL,
PRIMARY KEY (`id`));

CREATE TABLE `peaks` (
`id` INT AUTO_INCREMENT NOT NULL,
`name` VARCHAR(50) NOT NULL,
`mountain_id` INT,
PRIMARY KEY (`id`),
CONSTRAINT `f_key_peaks_mountain`
FOREIGN KEY (`mountain_id`)
REFERENCES `mountains` (`id`)
ON DELETE CASCADE);