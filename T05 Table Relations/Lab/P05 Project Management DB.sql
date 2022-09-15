CREATE SCHEMA `project_manager_DB`;
USE `project_manager_DB`;

CREATE TABLE `employees` (
`id` INT(11),
`first_name` VARCHAR(30),
`last_name` VARCHAR(30),
`project_id` INT(11),
PRIMARY KEY(`id`));

CREATE TABLE `clients` (
`id` INT(11),
`client_name` VARCHAR(100),
PRIMARY KEY (`id`));

CREATE TABLE `projects` (
`id` INT(11),
`client_id` INT(11),
`project_lead_id` INT(11),
PRIMARY KEY (`id`),
CONSTRAINT `fkey_projects_employees`
FOREIGN KEY (`project_lead_id`)
REFERENCES `employees` (`id`),
CONSTRAINT `fkay_projects_clients`
FOREIGN KEY (`client_id`)
REFERENCES `clients` (`id`));

ALTER TABLE `employees`
ADD CONSTRAINT `fkey_employees_projects`
FOREIGN KEY (`project_id`)
REFERENCES `projects` (`id`);

