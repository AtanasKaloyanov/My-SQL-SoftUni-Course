CREATE TABLE `genres` (
`id` INT AUTO_INCREMENT,
`name` VARCHAR(50) UNIQUE NOT NULL,
PRIMARY KEY(`id`)
);

CREATE TABLE `countries` (
`id` INT AUTO_INCREMENT,
`name` VARCHAR(30) NOT NULL UNIQUE,
`continent` VARCHAR(30) NOT NULL,
`currency` VARCHAR(5) NOT NULL,
PRIMARY KEY(`id`)
);

CREATE TABLE `movies_additional_info` (
`id` INT AUTO_INCREMENT,
`rating` DECIMAL(10,2) NOT NULL,
`runtime` INT NOT NULL,
`picture_url` VARCHAR(80) NOT NULL,
`budget` DECIMAL(10,2),
`release_date` DATE,
`has_subtitles` BOOLEAN,
`description` TEXT,
PRIMARY KEY(`id`)
);

CREATE TABLE `actors` (
`id` INT AUTO_INCREMENT,
`first_name` VARCHAR(50) NOT NULL,
`last_name` VARCHAR(50) NOT NULL,
`birthdate` DATE NOT NULL,
`height` INT,
`awards` INT,
`country_id` INT NOT NULL,
PRIMARY KEY(`id`),
CONSTRAINT `fkey_country_id_id`
FOREIGN KEY (`country_id`)
REFERENCES `countries`(`id`)
);

CREATE TABLE `movies` (
`id` INT AUTO_INCREMENT,
`title` VARCHAR(70) NOT NULL UNIQUE,
`country_id` INT NOT NULL,
`movie_info_id` INT NOT NULL UNIQUE,
PRIMARY KEY(`id`),
CONSTRAINT `fkey_movies_countries`
FOREIGN KEY (`country_id`)
REFERENCES `countries` (`id`),
CONSTRAINT `fkey_movies_movies_additional_info`
FOREIGN KEY (`movie_info_id`)
REFERENCES `movies_additional_info` (`id`)
);

CREATE TABLE `movies_actors` (
`movie_id` INT,
`actor_id` INT,
KEY(`movie_id`, `actor_id`),
CONSTRAINT `fkey_movies_id_id`
FOREIGN KEY (`movie_id`)
REFERENCES `movies` (`id`),
CONSTRAINT `fkey_actor_id_id`
FOREIGN KEY(`actor_id`)
REFERENCES `actors`(`id`)
);

CREATE TABLE `genres_movies` (
`genre_id` INT,
`movie_id` INT,
 KEY(`genre_id`, `movie_id`),
CONSTRAINT `fkey_genres_movies_genres`
FOREIGN KEY(`genre_id`)
REFERENCES `genres`(`id`) ,
CONSTRAINT `fkey_genres_movies_movies`
FOREIGN KEY (`movie_id`)
REFERENCES `movies` (`id`)
);