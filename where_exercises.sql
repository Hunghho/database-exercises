USE employees;

show tables;

SELECT first_name FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT last_name FROM employees WHERE last_name LIKE 'e%';

SELECT last_name FROM employees WHERE last_name LIKE '%q%';

SELECT first_name FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
AND gender = 'M';

SELECT  last_name FROM employees
WHERE last_name LIKE 'E%' OR  last_name LIKE '%E';

SELECT last_name FROM employees
WHERE last_name LIKE 'E%E';

SELECT last_name FROM employees
WHERE last_name LIKE '%q%' AND NOT last_name LIKE '%qu%' ;