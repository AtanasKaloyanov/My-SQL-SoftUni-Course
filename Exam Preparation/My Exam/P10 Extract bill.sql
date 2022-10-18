DROP FUNCTION `udf_client_bill`;

DELIMITER ###

CREATE FUNCTION `udf_client_bill`(`full_name` VARCHAR(50))
RETURNS DECIMAL(19,2)
DETERMINISTIC

BEGIN
DECLARE `total` DECIMAL(19,2);
SET `total` = (SELECT SUM(ROUND(`P`.`price`, 2))
FROM `products` AS `P`
JOIN `orders_products` AS `O_P`
ON `P`.`id` = `O_P`.`product_id`
JOIN `orders` AS `O`
ON `O_P`.`order_id` = `O`.`id`
JOIN `orders_clients` AS `O_C`
ON `O`.`id` = `O_C`.`order_id`
JOIN `clients` AS `C`
ON `O_C`.`client_id` = `C`.`id` 
WHERE CONCAT(`C`.`first_name`, ' ', `C`.`last_name`) = `full_name`

);
RETURN `total`;
END
###

DELIMITER ;

SELECT c.first_name,c.last_name, udf_client_bill('Silvio Blyth') as 'bill' FROM clients c
WHERE c.first_name = 'Silvio' AND c.last_name= 'Blyth';


