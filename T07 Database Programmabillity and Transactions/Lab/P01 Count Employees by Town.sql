/*
Write a function ufn_count_employees_by_town(town_name) that accepts town_name as parameter 
and returns the count of employees who live in that town. 
Submit your queries using the "MySQL Run Skeleton, run queries and check DB" strategy.
*/
DROP FUNCTION `ufn_count_employees_by_town`;

DELIMITER ###
CREATE FUNCTION `ufn_count_employees_by_town`(`town_name` VARCHAR(120))
RETURNS INT
DETERMINISTIC

BEGIN
RETURN (
SELECT COUNT(`employee_id`) 
FROM `employees` AS `E`
JOIN `addresses` AS `A` USING (`address_id`)
JOIN `towns` AS `T` USING (`town_id`)
WHERE `town_name` = T.`name`
);
END
###

SELECT `ufn_count_employees_by_town`('Sofia');


/*
TABLE `towns`:

town id    name
1         името на града

TABLE `addresses`:

address_id     address_text       town_id
  1            определн адрес        1
  
TABLE `employees`:

employee_id      address_id
  1                  1

  */




