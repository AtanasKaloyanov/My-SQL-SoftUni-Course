/*
Create a user defined function with the name 
udf_customer_products_count(name VARCHAR(30)) 
that receives a customer’s first name and returns 
the total number of products he ordered;
*/
DROP FUNCTION `udf_customer_products_count`;

DELIMITER ###
CREATE FUNCTION `udf_customer_products_count`(`name` VARCHAR(30)) 
RETURNS INT
DETERMINISTIC

BEGIN
DECLARE `count` INT;
SET `count` = (SELECT COUNT(`P`.`id`)
FROM `products` AS `P`
JOIN `orders_products` AS `O_P`
ON `P`.`id` = `O_P`.`product_id`
JOIN `orders` AS `O`
ON `O_P`.`order_id` = `O`.`id`
JOIN `customers` AS `C`
ON `O`.`customer_id` = `C`.`id`
WHERE `C`.`first_name` = `name`
);
RETURN `count`;
END
###

SELECT c.first_name,c.last_name, udf_customer_products_count('Shirley') as `total_products` FROM customers c
WHERE c.first_name = 'Shirley';
