/*
Write a stored procedure usp_get_employees_by_salary_level that receive as parameter level of salary (low, average or high) 
and print the names of all employees that have given level of salary. 
The result should be sorted by first_name then by last_name both in descending order
*/


DROP FUNCTION `ufn_get_salary_level`;
DROP PROCEDURE `usp_get_employees_by_salary_level`;

DELIMITER ##
CREATE FUNCTION `ufn_get_salary_level`(`salary` DECIMAL(14,4))
RETURNS VARCHAR(8)
DETERMINISTIC

BEGIN 
DECLARE `salary_level` VARCHAR(8);
IF (`salary` < 30000) THEN SET `salary_level` = 'Low';
ELSEIF (`salary` <= 50000) THEN SET `salary_level` = 'Average';
ELSE SET `salary_level` = 'High';
END IF;
RETURN `salary_level`;
END;


CREATE PROCEDURE `usp_get_employees_by_salary_level`(`salary_level` VARCHAR(8))

BEGIN
SELECT `first_name`, `last_name`
FROM `employees`
WHERE `ufn_get_salary_level`(`salary`) LIKE `salary_level`
ORDER BY `first_name` DESC, `last_name` DESC;
END
###

DELIMITER ;
-- CALL `usp_get_employees_by_salary_level`('Low');
-- CALL `usp_get_employees_by_salary_level`('Average');
CALL `usp_get_employees_by_salary_level`('High');

/*
DELIMITER %%
CREATE FUNCTION ufn_get_salary_level(salary DECIMAL(19, 4))
RETURNS VARCHAR(8)
DETERMINISTIC
BEGIN
	DECLARE salary_level VARCHAR(8);
    IF salary < 30000 THEN SET salary_level := 'Low';
    ELSEIF salary <= 50000 THEN SET salary_level := 'Average';
	ELSE SET salary_level := 'High';
    END IF;
    RETURN salary_level;
END;


CREATE PROCEDURE usp_get_employees_by_salary_level(salary_level VARCHAR(8)) 
BEGIN
	SELECT first_name, last_name
	FROM employees
    WHERE ufn_get_salary_level(salary) LIKE salary_level
    ORDER BY first_name DESC, last_name DESC;
END;

CALL `usp_get_employees_by_salary_level`('Low')
*/