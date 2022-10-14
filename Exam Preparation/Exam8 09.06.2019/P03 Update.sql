/*
Update all clients which have the same id as the employee 
they are appointed to. 
Set their employee_id with the employee with the
 lowest count of clients.
If there are 2 such employees with equal count of clients, 
take the one with the lowest id.
*/

/*
UPDATE `clients`
SET `` = ``
*/

UPDATE employees_clients
SET employee_id = (SELECT * 
                   FROM (SELECT employee_id 
			FROM employees_clients
                   	GROUP BY employee_id
                   	ORDER BY count(client_id), employee_id
                   	LIMIT 1) 
                   AS s)
WHERE client_id = employee_id;

-- SELECT * FROM `clients`
-- SELECT * FROM `clients`;