USE employees;

SHOW tables;

SELECT * FROM departments;

SELECT * FROM dept_manager;

SELECT * FROM dept_emp;

SELECT * FROM employees;

SELECT departments.dept_name AS Department_Name, CONCAT(employees.first_name, ' ', employees.last_name)
AS Department_Manager
FROM departments
JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
JOIN employees ON dept_manager.emp_no = employees.emp_no
WHERE dept_manager.to_date > now()
ORDER BY departments.dept_name;

SELECT departments.dept_name AS Department_Name, CONCAT(employees.first_name, ' ', employees.last_name)
AS Department_Manager
FROM departments
JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
JOIN employees ON dept_manager.emp_no = employees.emp_no
WHERE dept_manager.to_date > now()
AND gender = 'F'
ORDER BY departments.dept_name;


SELECT * FROM titles;

SELECT titles.title AS title, COUNT(*) AS Total
FROM titles
JOIN dept_emp ON dept_emp.emp_no = titles.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Customer Service'
AND dept_emp.to_date > now()
AND titles.to_date > now()
GROUP BY titles.title;

SELECT departments.dept_name AS Department_Name, CONCAT(employees.first_name, ' ', employees.last_name)
AS Department_Manager, salaries.salary AS Salary
FROM departments
JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
JOIN employees ON dept_manager.emp_no = employees.emp_no
JOIN salaries ON employees.emp_no = salaries.emp_no
WHERE dept_manager.to_date > now()
AND salaries.to_date > now()
ORDER BY departments.dept_name;

SELECT CONCAT(employees.first_name, ' ', employees.last_name) AS Employee,
departments.dept_name AS Deparment,
CONCAT(manger.first_name, ' ', manger.last_name)
AS Department_Manager
FROM employees
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
JOIN employees AS manger ON dept_manager.emp_no = manger.emp_no
WHERE dept_emp.to_date > now()
AND dept_manager.to_date > now()
ORDER BY departments.dept_name;








