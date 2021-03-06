USE EMPLOYEES;

SELECT DISTINCT last_name FROM employees
ORDER BY last_name DESC
LIMIT 10;

SELECT emp_no, first_name, last_name, hire_date
FROM EMPLOYEES
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
AND birth_date like '%-12-25'
ORDER BY birth_date ASC, hire_date DESC
LIMIT 5 OFFSET 45;

