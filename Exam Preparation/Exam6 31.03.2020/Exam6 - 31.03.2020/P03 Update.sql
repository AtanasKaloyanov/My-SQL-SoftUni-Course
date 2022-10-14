SET SQL_SAFE_UPDATES = 0;

UPDATE `addresses`
SET `country` = 'Blocked' 
WHERE  LEFT(`country`, 1) = 'B';

UPDATE `addresses`
SET `country` = 'Test'
WHERE LEFT(`country`, 1) = 'T';

UPDATE `addresses`
SET `country` = 'In Progress' 
WHERE LEFT(`country`, 1) = 'P';
   

-- SELECT * FROM `addresses`;