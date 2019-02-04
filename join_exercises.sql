USE employees;



SELECT departments.dept_name AS 'Department Name', CONCAT(employees.first_name, ' ',employees.last_name) AS 'Department Manager'
FROM employees
JOIN dept_manager ON dept_manager.emp_no = employees.emp_no
JOIN departments ON departments.dept_no = dept_manager.dept_no
WHERE dept_manager.to_date = '9999-01-01'
;