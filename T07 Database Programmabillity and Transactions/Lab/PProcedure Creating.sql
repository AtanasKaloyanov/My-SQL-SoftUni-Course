DROP PROCEDURE `usp_select_employees_by_seniority`;

DELIMITER $$
CREATE PROCEDURE usp_select_employees_by_seniority() 
BEGIN
  SELECT * 
  FROM `employees` AS `E` 
  WHERE `E`.`middle_name` = 'M';
END $$

DELIMITER ;

CALL usp_select_employees_by_seniority();

