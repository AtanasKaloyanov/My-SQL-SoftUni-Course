CREATE SCHEMA `hotel`;
USE `hotel`;

CREATE TABLE `employees` (
`id` INT AUTO_INCREMENT,
`first_name` VARCHAR(20),
`last_name` VARCHAR(20),
`job_title` VARCHAR(20),
PRIMARY KEY (`id`));

INSERT INTO `employees` (`id`, `first_name`, `last_name`, `job_title`)
VALUES 
(1, 'John', 'Smith', 'Manager'),
(2, 'John', 'Johnson', 'Customer Service'),
(3, 'Smith', 'Johnson', 'Porter');

SELECT `id`, `first_name`, `last_name`, `job_title`
FROM `employees` 
ORDER BY `id` ASC
