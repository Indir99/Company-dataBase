-- sql functions on sql_company db

-- Finding the number of employee
SELECT COUNT(emp_id)
FROM employee;

-- Finding the average of all employee's salaries
SELECT AVG(salary)
FROM employee;

-- Finding the sum of all employee's salaries
SELECT SUM(salary)
FROM employee;

-- Finding how many males and females we have in company
SELECT COUNT(sex), sex
FROM employee
GROUP BY sex;

-- Find the total sales for each salesman
SELECT SUM(total_sales) AS employee_total_sale, emp_id
FROM works_with
GROUP BY emp_id;

-- Wildcards on sql_company db

-- Find any client's who are in LLC
SELECT * 
FROM client
WHERE client_name REGEXP('LLC'); 

SELECT * 
FROM client
WHERE client_name LIKE '%LLC';

-- Find any branch suppliers who are in the label business
SELECT * 
FROM branch_supplier
WHERE supplier_name REGEXP('label');

-- Find any employee borin in october
SELECT * 
FROM employee
WHERE birth_day REGEXP('-10-');

-- Find any employee borin in february
SELECT * 
FROM employee
WHERE birth_day REGEXP('-02-');

