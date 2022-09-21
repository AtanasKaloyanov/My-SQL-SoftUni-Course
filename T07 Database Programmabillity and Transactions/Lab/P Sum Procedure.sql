DROP PROCEDURE `usp_sum_procedure`;

DELIMITER ###
CREATE PROCEDURE `usp_sum_procedure` (
`first_number` INT,
`second_number` INT, 
OUT `result` INT
)

BEGIN

SET `result` = `first_number` + `second_number`;

END
###
DELIMITER ;

CALL `usp_sum_procedure`(6,10,@answer);
SELECT @answer;