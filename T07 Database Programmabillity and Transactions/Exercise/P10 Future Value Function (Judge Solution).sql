CREATE FUNCTION `ufn_calculate_future_value`(`sum` DOUBLE(19, 4), `yearly_interest_rate` DOUBLE, `number_of_years` INT)
RETURNS DECIMAL(19, 4)
DETERMINISTIC

BEGIN 
DECLARE `final_sum` DOUBLE(19,4);
SET `final_sum` = `sum` * POW((1 + `yearly_interest_rate`), `number_of_years`);
RETURN `final_sum`;
END