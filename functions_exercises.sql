USE employees;

SELECT first_name, last_name FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name, first_name;

SELECT CONCAT(first_name, ' ', last_name), emp_no FROM employees
WHERE last_name LIKE 'e%'
ORDER BY emp_no DESC;

SELECT * FROM employees
WHERE month(birth_date) = 12
AND day(birth_date) = 25;

SELECT * FROM employees
WHERE year(hire_date) BETWEEN 1990 AND 1999
AND month(birth_date) = 12
And day(birth_date) = 25;

SELECT CONCAT(first_name, ' ', last_name, ' work at company ', datediff(curdate(), hire_date), ' days'), emp_no FROM employees
WHERE year(hire_date) BETWEEN 1990 AND 1999
  AND month(birth_date) = 12
  And day(birth_date) = 25
ORDER BY hire_date DESC;

