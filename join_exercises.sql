USE employees;

-- NOT FINISHED

SELECT departments.dept_name AS 'Department Name', CONCAT(employees.first_name, ' ',employees.last_name) AS 'Department Manager'
-- dept_name AS 'Department Name', dept_manager AS 'Department Manager'
FROM employees
JOIN dept_manager ON dept_manager.emp_no = employees.emp_no
JOIN departments ON departments.dept_no = dept_manager.dept_no
;