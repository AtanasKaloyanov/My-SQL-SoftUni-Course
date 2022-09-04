CREATE TABLE `users` (
`id` INT AUTO_INCREMENT NOT NULL,
`username` VARCHAR(30) NOT NULL,
`password` VARCHAR(26) NOT NULL,
`profile_picture` MEDIUMBLOB,
`last_login_time` TIMESTAMP,
`is_deleted` BOOLEAN,
PRIMARY KEY (`id`));

INSERT INTO `users` (`id`, `username`, `password`, `last_login_time`, `is_deleted`)
VALUES (1, 'Peter', 'guess', '2020-04-20 10:00', true);

INSERT INTO `users` (`id`, `username`, `password`, `last_login_time`, `is_deleted`)
VALUES (2, 'George', 'a', '2020-04-20 10:00', true);

INSERT INTO `users` (`id`, `username`, `password`, `last_login_time`, `is_deleted`)
VALUES (3, 'David', 'b', '2020-04-20 10:00', true);

INSERT INTO `users` (`id`, `username`, `password`, `last_login_time`, `is_deleted`)
VALUES (4, 'Maria', 'c', '2020-04-20 10:00', true);

INSERT INTO `users` (`id`, `username`, `password`, `last_login_time`, `is_deleted`)
VALUES (5, 'Sofia', 'd', '2020-04-20 10:00', true);