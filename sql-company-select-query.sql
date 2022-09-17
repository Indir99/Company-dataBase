-- sql select examples for sql_company db

SELECT * FROM employee;

SELECT first_name, last_name, salary FROM employee;

SELECT 
	first_name, 
    last_name,
    salary 
FROM employee
ORDER BY first_name;

SELECT 
	first_name, 
    last_name,
    salary 
FROM employee
ORDER BY salary DESC;

SELECT 
	first_name, 
    last_name,
    birth_day
FROM employee
ORDER BY birth_day DESC;

SELECT * 
FROM employee 
WHERE salary > 100000;

SELECT * 
FROM employee 
WHERE salary < 100000 
ORDER BY salary DESC
LIMIT 3;

SELECT * 
FROM employee
WHERE birth_day < '1975-01-01' AND salary>70000;

SELECT *
FROM employee
WHERE branch_id = 1 OR salary>75000;

SELECT *
FROM employee
WHERE salary BETWEEN 75000 AND 300000;

SELECT 
	first_name,
    last_name,
    branch_id
FROM employee 
WHERE branch_id IN (2,3)
ORDER BY branch_id, first_name, last_name;

SELECT
	first_name,
    last_name
FROM employee 
-- WHERE first_name REGEXP('^A') -- First name starts with A
-- WHERE first_name REGEXP('A') -- First name has letter A
-- WHERE last_name REGEXP('n$'); -- Last name ends with n
WHERE first_name REGEXP('^A|a$');




