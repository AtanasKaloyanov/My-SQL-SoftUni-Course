CREATE TABLE `countries` (
`id` INT AUTO_INCREMENT PRIMARY KEY,
`name` VARCHAR(45) NOT NULL
);

CREATE TABLE `coaches` (
`id` INT AUTO_INCREMENT PRIMARY KEY,
`first_name` VARCHAR(10) NOT NULL,
`last_name` VARCHAR(20) NOT NULL,
`salary` DECIMAL(10,2) DEFAULT 0 NOT NULL,
`coach_level` INT DEFAULT 0 NOT NULL
);

CREATE TABLE `skills_data` (
`id` INT AUTO_INCREMENT PRIMARY KEY,
`dribbling` INT DEFAULT 0,
`pace` INT DEFAULT 0,
`passing` INT DEFAULT 0,
`shooting` INT DEFAULT 0,
`speed` INT DEFAULT 0,
`strength` INT DEFAULT 0
);

CREATE TABLE `towns` (
`id` INT AUTO_INCREMENT PRIMARY KEY,
`name` VARCHAR(45) NOT NULL,
`country_id` INT NOT NULL,
CONSTRAINT `fkey_2`
FOREIGN KEY (`country_id`)
REFERENCES `countries` (`id`)
);


CREATE TABLE `stadiums` (
`id` INT AUTO_INCREMENT PRIMARY KEY,
`name` VARCHAR(45) NOT NULL,
`capacity` INT NOT NULL,
`town_id` INT NOT NULL,
CONSTRAINT `fkey_3`
FOREIGN KEY (`town_id`)
REFERENCES `towns` (`id`)
);

CREATE TABLE `teams` (
`id` INT AUTO_INCREMENT PRIMARY KEY,
`name` VARCHAR(45) NOT NULL,
`established` DATE NOT NULL,
`fan_base` BIGINT NOT NULL DEFAULT 0,
`stadium_id` INT NOT NULL,
CONSTRAINT `fkey_4`
FOREIGN KEY (`stadium_id`)
REFERENCES `stadiums` (`id`)
);

CREATE TABLE `players` (
`id` INT AUTO_INCREMENT PRIMARY KEY,
`first_name` VARCHAR(10) NOT NULL,
`last_name` VARCHAR(20) NOT NULL,
`age` INT DEFAULT 0 NOT NULL,
`position` CHAR(1) NOT NULL,
`salary` DECIMAL(10,2) DEFAULT 0 NOT NULL,
`hire_date` DATETIME,
`skills_data_id` INT NOT NULL,
`team_id` INT ,
CONSTRAINT `fkey_1`
FOREIGN KEY (`team_id`)
REFERENCES `teams` (`id`)
);


CREATE TABLE `players_coaches` (
`player_id` INT,
`coach_id` INT,
KEY(`player_id`, `coach_id`),
CONSTRAINT `Fkey`
FOREIGN KEY (`player_id`)
REFERENCES `players` (`id`),
CONSTRAINT `FKey_10`
FOREIGN KEY (`coach_id`)
REFERENCES `coaches` (`id`)
);