USE EMPLOYEES;

SELECT emp_no, first_name, last_name
FROM EMPLOYEES
WHERE first_name IN ('IRENA', 'VIDYA', 'MAYA')
AND gender = 'M';

SELECT emp_no, first_name, last_name
FROM EMPLOYEES
WHERE last_name LIKE '%E'
   OR last_name LIKE 'E%';

SELECT emp_no, first_name, last_name
FROM EMPLOYEES
WHERE last_name LIKE '%E'
   AND last_name LIKE 'E%';

SELECT emp_no, first_name, last_name, hire_date
FROM EMPLOYEES
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
AND birth_date like '%-12-25';

SELECT emp_no, first_name, last_name
FROM EMPLOYEES
WHERE last_name LIKE '%q%'
   AND last_name NOT LIKE '%qu%';
