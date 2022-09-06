/*Write a query to retrieve information about employees, 
order by id
Who are in department 4 
Have salary higher or equal to 1000
*/

SELECT * FROM `employees`
WHERE `department_id` = 4 AND `salary` >= 1000;