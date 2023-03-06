USE employees;

SELECT DISTINCT title FROM titles;

SELECT DISTINCT last_name FROM employees
WHERE last_name LIKE 'e%e'
GROUP BY last_name;

SELECT DISTINCT first_name, last_name FROM employees
WHERE last_name LIKE 'e%e';

SELECT DISTINCT last_name FROM employees
WHERE last_name LIKE '%q%'
AND NOT last_name LIKE '%qu%';

SELECT COUNT(last_name), last_name FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%'
GROUP BY last_name;

SELECT COUNT(*), gender FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;
