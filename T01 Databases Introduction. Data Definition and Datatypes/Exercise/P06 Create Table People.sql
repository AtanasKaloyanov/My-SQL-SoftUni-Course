CREATE TABLE `people`(
`id` INT AUTO_INCREMENT,
`name` VARCHAR(200) NOT NULL,
`picture` MEDIUMBLOB,
`height` DOUBLE(10,2),
`weight` DOUBLE(10,2),
 `gender` CHAR(1) NOT NULL, 
`birthdate` DATE NOT NULL,
`biography` LONGTEXT,
PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


INSERT INTO `people` (`id`, `name`, `height`, `weight`, `gender`, `birthdate`, `biography`)
VALUES (1, 'Jordan', 1.80, 80, 'm', '1994-01-01', 'CV'); 

INSERT INTO `people` (`id`, `name`, `height`, `weight`, `gender`, `birthdate`, `biography`)
VALUES (2, 'Peter', 1.80, 80, 'm', '1994-01-01', 'CV');

INSERT INTO `people` (`id`, `name`, `height`, `weight`, `gender`, `birthdate`, `biography`)
VALUES (3, 'George', 1.80, 80, 'm', '1994-01-01', 'CV'); 

INSERT INTO `people` (`id`, `name`, `height`, `weight`, `gender`, `birthdate`, `biography`)
VALUES (4, 'David', 1.80, 80, 'm', '1994-01-01', 'CV'); 

INSERT INTO `people` (`id`, `name`, `height`, `weight`, `gender`, `birthdate`, `biography`)
VALUES (5, 'Richard', 1.80, 80, 'm', '1994-01-01', 'CV'); 


