-- SQL unions

-- Find a list of employee and branch names
SELECT first_name 
FROM employee
UNION
SELECT branch_name
FROM branch;

-- Find a list of employee and cilent names
SELECT first_name 
FROM employee
UNION
SELECT client_name
FROM client;

-- Find a list of all clients & branch supplier's names
SELECT client_name, branch_id
FROM client
UNION 
SELECT supplier_name, branch_id
FROM branch_supplier;

-- SQL JOINS (INNER)

INSERT INTO branch VALUES(4,'Buffalo',NULL,NULL);

-- Find all branches and the names of their managers
SELECT 
	employee.emp_id, 
	employee.first_name, 
	branch.branch_name
FROM employee 
JOIN branch
	ON employee.emp_id = branch.mgr_id; 

-- Find all employees and the names of their branches
SELECT 
employee.first_name AS name,
employee.last_name AS surname,
branch.branch_name
FROM employee
JOIN branch
ON employee.branch_id = branch.branch_id;

-- Find all employees and the name of their clients
SELECT 
employee.first_name,
employee.last_name,
client.client_name,
works_with.total_sales
FROM employee
JOIN works_with
	ON employee.emp_id = works_with.emp_id
JOIN client
	ON works_with.client_id = client.client_id;

-- SQL JOINS (OUTER)
 
 -- Find all branches and the names of their managers
SELECT 
branch.branch_name,
employee.first_name,
employee.last_name
FROM branch
LEFT JOIN employee
	ON branch.mgr_id = employee.emp_id;

-- Find all branches and the names of their managers
SELECT 
branch.branch_name,
employee.first_name,
employee.last_name
FROM branch
RIGHT JOIN employee
	ON branch.mgr_id = employee.emp_id;








