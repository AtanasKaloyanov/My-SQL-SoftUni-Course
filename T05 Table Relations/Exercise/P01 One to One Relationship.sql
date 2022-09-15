-- CREATE SCHEMA `dem`;
-- USE `dem`;

CREATE TABLE `passports` (
`passport_id` INT AUTO_INCREMENT NOT NULL,
`passport_number` VARCHAR(50) UNIQUE,
PRIMARY KEY (`passport_id`));

CREATE TABLE `people` (
`person_id` INT AUTO_INCREMENT NOT NULL,
`first_name` VARCHAR(50),
`salary` DECIMAL(10,2),
`passport_id` INT UNIQUE,
PRIMARY KEY (`person_id`),
CONSTRAINT `fkey_people_passports`
FOREIGN KEY (`passport_id`)
REFERENCES `passports` (`passport_id`));

INSERT INTO `passports` (`passport_id`, `passport_number`)
VALUES 
(101, 'N34FG21B'),
(102, 'K65LO4R7'),
(103, 'ZE657QP2');

INSERT INTO `people` (`person_id`, `first_name`, `salary`, `passport_id`)
VALUES
(1, 'Roberto', 43300.00, 102),
(2, 'Tom', 56100.00, 103),
(3, 'Yana', 60200.00, 101);

-- SELECT * FROM `people`;