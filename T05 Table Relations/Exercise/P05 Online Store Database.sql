/*
CREATE SCHEMA `dem`;
USE `dem`;
*/
CREATE TABLE `cities` (
`city_id` INT(11) AUTO_INCREMENT,
`name` VARCHAR(50),
PRIMARY KEY (`city_id`)
);

CREATE TABLE `customers` (
`customer_id` INT(11) AUTO_INCREMENT,
`name` VARCHAR(50),
`birthday` DATE,
`city_id` INT(11),
PRIMARY KEY (`customer_id`),
CONSTRAINT `fkey_customers`
FOREIGN KEY (`city_id`)
REFERENCES `cities` (`city_id`)
);

CREATE TABLE `orders` (
`order_id` INT(11) AUTO_INCREMENT,
`customer_id` INT(11),
PRIMARY KEY (`order_id`),
CONSTRAINT `fkey_orders_customers`
FOREIGN KEY (`customer_id`)
REFERENCES `customers` (`customer_id`)
);

CREATE TABLE `item_types` (
`item_type_id` INT(11) AUTO_INCREMENT,
`name` VARCHAR(50),
PRIMARY KEY (`item_type_id`) 
);

CREATE TABLE `items` (
`item_id` INT(11),
`name` VARCHAR(50),
`item_type_id` INT(11),
PRIMARY KEY (`item_id`),
CONSTRAINT `fkey_items_item_types`
FOREIGN KEY (`item_type_id`)
REFERENCES `item_types` (`item_type_id`)
);

CREATE TABLE `order_items` (
`order_id` INT(11),
`item_id` INT(11),
PRIMARY KEY(`order_id`, `item_id`),
CONSTRAINT `fkey_order_items_orders`
FOREIGN KEY (`order_id`)
REFERENCES `orders` (`order_id`),
CONSTRAINT `fkey_order_items_items`
FOREIGN KEY (`item_id`)
REFERENCES `items` (`item_id`)
);

