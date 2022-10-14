/*
Extract from the database, all of the cards,
 and the clients that own them,
 so that they end up in the following format:
{card_number} : {full_name}
Order the results descending by card id.
*/


SELECT `C`.`id`, CONCAT(`C`.`card_number`, ' : ', `Cl`.`full_name`)
FROM `cards` AS `C`
JOIN `bank_accounts` AS `B_A`
ON `C`.`bank_account_id` = `B_A`.`id`
JOIN `clients` AS `Cl`
ON `B_A`.`client_id` = `Cl`.`id`
 ORDER BY `C`.`id` DESC



-- SELECT * FROM `cards`;







