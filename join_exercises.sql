USE employees;


-- query that shows each department along with the name of the current manager for that department
SELECT departments.dept_name AS 'Department Name', CONCAT(employees.first_name, ' ',employees.last_name) AS 'Department Manager'
FROM employees
JOIN dept_manager ON dept_manager.emp_no = employees.emp_no
JOIN departments ON departments.dept_no = dept_manager.dept_no
WHERE dept_manager.to_date = '9999-01-01'
;


-- Find the name of all departments currently managed by women
SELECT departments.dept_name AS 'Department Name', CONCAT(employees.first_name, ' ',employees.last_name) AS 'Department Manager'
FROM employees
JOIN dept_manager ON dept_manager.emp_no = employees.emp_no
JOIN departments ON departments.dept_no = dept_manager.dept_no
WHERE dept_manager.to_date = '9999-01-01' AND employees.gender = 'f'
;
