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