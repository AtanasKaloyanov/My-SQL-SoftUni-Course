-- employee_id       name
--    1               'Á'
--    2               'B'
--    3               'C'


--   project_id       name
--      1           'First'
--      2            'Two'
--      3           'Third'

-- Every employee has many projects
-- On every project are working many employees 

CREATE TABLE `employees` (
`employee_id` INT,
`employee_name` VARCHAR(50),
PRIMARY KEY (`employee_id`));

CREATE TABLE `projects` (
`project_id` INT,
`project_name` VARCHAR(50),
PRIMARY KEY (`project_id`));

CREATE TABLE `employees_projects` (
`employee_id` INT,
`project_id` INT(50),
PRIMARY KEY (`employee_id`, `project_id`),

CONSTRAINT `fkey_employees_project_employees` 
FOREIGN KEY (`employee_id`)
REFERENCES `employees` (`employee_id`),

CONSTRAINT `fkey_employees_projects_projects`
FOREIGN KEY (`project_id`)
REFERENCES `projects` (`project_id`));