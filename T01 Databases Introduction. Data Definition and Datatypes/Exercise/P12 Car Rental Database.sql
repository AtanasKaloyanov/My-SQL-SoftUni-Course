CREATE TABLE `categories` (
`id` INT NOT NULL AUTO_INCREMENT,
`category` VARCHAR(50) NOT NULL,
`daily_rate` DOUBLE(5,2),
`weekly_rate` DOUBLE(5,2),
`monthly_rate` DOUBLE(5,2),
`weekend_rate` DOUBLE(5,2),
PRIMARY KEY (`id`));

INSERT INTO `categories` (`id`, `category`, `daily_rate`, `weekly_rate`, `monthly_rate`, `weekend_rate`)
VALUES 
(1, 'first', 6.0, 6.0, 6.0, 6.0),
(2, 'second', 6.0, 6.0, 6.0, 6.0),
(3, 'third', 6.0, 6.0, 6.0, 6.0);

CREATE TABLE `cars` (
`id` INT NOT NULL AUTO_INCREMENT,
`plate_number` VARCHAR(15) UNIQUE,
`make` VARCHAR(30) UNIQUE NOT NULL,
`model` VARCHAR(15) NOT NULL,
`car_year` YEAR NOT NULL,
`category_id` INT NOT NULL,
`doors` VARCHAR(15),
`picture` BLOB,
`car_condition` TEXT,
PRIMARY KEY (`id`));

INSERT INTO `cars`(`id`, `plate_number`, `make`, `model`, `car_year`, `category_id`, `doors`, `car_condition`)
VALUES
(1, 'first', 'first', 'first', 2010, 1, 'first', 'first'),
(2, 'second', 'second', 'second', 2010, 2, 'second', 'second'),
(3, 'third', 'third', 'third', 2010, 3, 'third', 'third');

CREATE TABLE `employees` (
`id` INT NOT NULL AUTO_INCREMENT,
`first_name` VARCHAR(20) NOT NULL,
`last_name` VARCHAR(20) NOT NULL,
`title` VARCHAR(20) NOT NULL,
`notes` TEXT,
PRIMARY KEY (`id`));

INSERT INTO `employees` (`id`, `first_name`, `last_name`, `title`)
VALUES
(1, 'George', 'George', 'first'),
(2, 'Peter', 'Peter', 'second'),
(3, 'David', 'David', 'third');

CREATE TABLE `customers` (
`id` INT AUTO_INCREMENT NOT NULL,
`driver_licence` INT UNIQUE NOT NULL,
`full_name` VARCHAR(50) NOT NULL,
`address` VARCHAR(100) NOT NULL,
`city` VARCHAR(20) NOT NULL,
`zip_code` INT NOT NULL,
`notes` TEXT,
PRIMARY KEY (`id`));

INSERT INTO `customers` (`id`, `driver_licence`, `full_name`, `address`, `city`, `zip_code`)
VALUES
(1, 1, 'A_A_A', 'Home', 'Berlin', 1),
(2, 2, 'B_B_B', 'Home', 'Rome', 2),
(3, 3, 'C_C_C', 'Home', 'Paris', 3);

CREATE TABLE `rental_orders` (
`id` INT NOT NULL AUTO_INCREMENT,
`employee_id` INT,
`customer_id` INT,
`car_id` INT,
`car_condition` VARCHAR(20),
`tank_level` INT,
`kilometrage_start` INT,
`kilometrage_end` INT,
`total_kilometrage` INT,
`start_date` DATE,
`end_date` DATE,
`total_days` INT,
`rate_applied` DOUBLE,
`tax_rate` DOUBLE,
`order_status` VARCHAR(20),
`notes` TEXT,
PRIMARY KEY (`id`));

INSERT INTO `rental_orders` (`id`, `employee_id`, `customer_id`, `car_id`, `car_condition`, `tank_level`, `kilometrage_start`, `kilometrage_end`, 
`total_kilometrage`, `start_date`, `end_date`, `total_days`, `rate_applied`, `tax_rate`, `order_status`)
VALUES
(1, 1, 1, 1, NULL, 1, 1, 1, 2, '2011-10-10', '2011-11-10', 31, 6.0, 6.0, 'free'),
(2, 2, 2, 2, NULL, 2, 2, 2, 4, '2011-10-10', '2011-11-10', 31, 6.0, 6.0, 'free'),
(3, 3, 3, 3, NULL, 3, 3, 3, 6, '2011-10-10', '2011-11-10', 31, 6.0, 6.0, 'free');


