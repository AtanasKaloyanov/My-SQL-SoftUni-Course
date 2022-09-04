CREATE TABLE `directors` (
`id` INT NOT NULL AUTO_INCREMENT,
`director_name` VARCHAR(20) NOT NULL,
`notes` TEXT,
PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = Utf8;

INSERT INTO `directors` (`id`, `director_name`, `notes`)
VALUES
(1, 'David', 'CV'),
(2, 'Antoan', 'CV'),
(3, 'George', 'CV'),
(4, 'Peter', 'CV'),
(5, 'Maria', 'CV');

CREATE TABLE `genres` (
`id` INT NOT NULL AUTO_INCREMENT,
`genre_name` VARCHAR(50) NOT NULL,
`notes` TEXT,
PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

INSERT INTO `genres` (`id`, `genre_name`, `notes`)
VALUES 
(1, 'first_name', 'first_genre'),
(2, 'second_name', 'second_genre'),
(3, 'third_name', 'third_genre'),
(4, 'fourth_name', 'fourth_genre'),
(5, 'fifth_name', 'fifth_genre');

CREATE TABLE `categories` (
`id` INT NOT NULL,
`category_name` VARCHAR(50) NOT NULL,
`notes` TEXT,
PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = Utf8;

INSERT INTO `categories` (`id`, `category_name`, `notes`)
VALUES 
(1, 'fifth_name', 'fifth_film'),
(2, 'fifth_name', 'fifth_film'),
(3, 'fifth_name', 'fifth_film'),
(4, 'fifth_name', 'fifth_film'),
(5, 'fifth_name', 'fifth_film');

CREATE TABLE `movies` (
`id` INT NOT NULL,
`title` VARCHAR(50) NOT NULL,
`director_id` INT,
`copyright_year` YEAR,
`length` TIME,
`genre_id` INT,
`category_id` INT,
`rating` DOUBLE,
`notes` TEXT,
PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

INSERT INTO `movies` (`id`, `title`, `director_id`, `copyright_year`, `length`, `genre_id`, `category_id`, `rating`, `notes`)
VALUES
(1, 'first_title', 1, 1, '1:01:01', 1, 1, 6.0, 'first_note'),
(2, 'second_title', 2, 2, '1:01:01', 2, 2, 6.0, 'second_note'),
(3, 'third_title', 3, 3, '1:01:01', 3, 3, 6.0, 'third_note'),
(4, 'fourth_title', 4, 4, '1:01:01', 4, 4, 6.0, 'fourth_note'),
(5, 'fifth_title', 5, 5, '1:01:01', 5, 5, 6.0, 'fifth_note');




