/*
CREATE SCHEMA `dem`;
USE `dem`;
*/ 

CREATE TABLE `teachers` (
`teacher_id` INT AUTO_INCREMENT NOT NULL,
`name` VARCHAR(50),
`manager_id` INT,
PRIMARY KEY (`teacher_id`));

INSERT INTO `teachers` (`teacher_id`, `name`, `manager_id`)
VALUES 
(101, 'John', NULL), 
(102, 'Maya', 106), 
(103, 'Silvia', 106), 
(104, 'Ted', 105), 
(105, 'Mark', 101), 
(106, 'Greta', 101);

ALTER TABLE `teachers`
ADD CONSTRAINT `fkey_manager_id_teacher_id`
FOREIGN KEY (`manager_id`)
REFERENCES `teachers` (`teacher_id`);