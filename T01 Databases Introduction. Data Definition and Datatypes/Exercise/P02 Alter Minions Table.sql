ALTER TABLE `minions`
ADD COLUMN `town_id` INT(11);

ALTER TABLE `minions`
ADD CONSTRAINT `fkey_townid_towns`
FOREIGN KEY (`town_id`)
REFERENCES `towns` (`id`);


