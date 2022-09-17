-- Write a query to count the number of employees who receive salary higher than the average. 
SELECT COUNT(`employee_id`) AS `Count` 
FROM `employees`
WHERE `salary` > (
SELECT AVG(`salary`) FROM `employees`
);