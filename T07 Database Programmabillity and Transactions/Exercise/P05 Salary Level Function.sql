DROP FUNCTION `ufn_get_salary_level`;

DELIMITER ###
CREATE FUNCTION `ufn_get_salary_level`(`given_salary` DECIMAL)
RETURNS VARCHAR(8)
DETERMINISTIC

BEGIN
DECLARE `salary_level` VARCHAR(8);
IF `given_salary` < 30000 THEN SET `salary_level` := 'Low';
ELSEIF `given_salary` <= 50000 THEN SET `salary_level` := 'Average';
ELSE SET `salary_level` := 'High';
END IF;
RETURN `salary_level`;
END
###

SELECT `ufn_get_salary_level`(29999);
SELECT `ufn_get_salary_level`(50000);
SELECT `ufn_get_salary_level`(50001);