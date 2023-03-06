USE employees;

SELECT first_name, last_name FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name, first_name;

SELECT emp_no, last_name FROM employees WHERE last_name LIKE 'e%'
ORDER BY emp_no DESC;

