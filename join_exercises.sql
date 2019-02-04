USE employees;

-- NOT FINISHED

SELECT d.dept_name AS 'Department Name', dm.dept_manager_ibfk_1 AS 'Department Manager'
FROM employees as e
JOIN dept_manager as dm
  ON dm.emp_no = e.emp_no
JOIN departments as d
  ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01';