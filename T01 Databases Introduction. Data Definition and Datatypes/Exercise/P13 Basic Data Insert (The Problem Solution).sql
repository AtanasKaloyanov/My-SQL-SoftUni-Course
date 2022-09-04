CREATE SCHEMA `soft_uni`;
USE `soft_uni`;

CREATE TABLE `towns` (
`id` INT AUTO_INCREMENT NOT NULL,
`name` VARCHAR(20) NOT NULL,
PRIMARY KEY (`id`));

CREATE TABLE `addresses` (
`id` INT AUTO_INCREMENT NOT NULL,
`address_text` TEXT,
`town_id` INT NOT NULL,
PRIMARY KEY (`id`),
 CONSTRAINT `fkey_addresses_towns`
FOREIGN KEY (`town_id`)
REFERENCES `towns` (`id`));

CREATE TABLE `departments` (
`id` INT AUTO_INCREMENT NOT NULL,
`name` VARCHAR(20) NOT NULL,
PRIMARY KEY (`id`));

CREATE TABLE `employees` (
`id` INT NOT NULL AUTO_INCREMENT,
`first_name` VARCHAR(20) NOT NULL,
`middle_name` VARCHAR(20) NOT NULL,
`last_name` VARCHAR(20) NOT NULL,
`job_title` VARCHAR(20) NOT NULL,
`department_id` INT NOT NULL,
`hire_date` DATE,
`salary` DOUBLE,
`address_id` INT,
PRIMARY KEY (`id`),

CONSTRAINT `fkey_employees_departments`
FOREIGN KEY (`department_id`)
REFERENCES `departments` (`id`),

CONSTRAINT `fkey_addressid_addresses_id`
FOREIGN KEY (`address_id`)
REFERENCES `addresses` (`id`));

INSERT INTO `towns` (`id`, `name`)
VALUES 
(1, 'Sofia'),
(2, 'Plovdiv'),
(3, 'Varna'),
(4, 'Burgas');

INSERT INTO `departments` (`id`,`name`)
VALUES
(1, 'Engineering'),
(2, 'Sales'),
(3, 'Marketing'),
(4, 'Software Development'),
(5, 'Quality Assurance');

INSERT INTO `employees` (`first_name`, `middle_name`, `last_name`, `job_title`, `department_id`, `hire_date`, `salary`)
VALUES
('Ivan', 'Ivanov', 'Ivanov', '.NET Developer', 4, '2013-02-01', 3500.00),
('Petar', 'Petrov', 'Petrov', 'Senior Engineer', 1, '2004-03-02', 4000),
('Maria', 'Petrova', 'Ivanova', 'Intern', 5, '2016-08-28', 525.25),
('Georgi', 'Terziev', 'Ivanov', 'CEO', 2, '2007-12-09', 3000.00),
('Peter', 'Pan', 'Pan', 'Intern', 3, '2016-08-28', 599.88);




