SELECT 
    `employee_id` AS `No.`, `last_name`, `name` AS `course_name`
FROM
    `employees` AS `E`
JOIN
    `departments` AS `D` 
ON `E`.`department_id` = `D`.`department_id`
ORDER BY `No.`;




