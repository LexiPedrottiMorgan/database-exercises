USE EMPLOYEES;

-- SELECT emp_no, first_name, last_name
-- FROM EMPLOYEES
-- WHERE first_name IN ('IRENA', 'VIDYA', 'MAYA')
-- AND gender = 'M'
-- ORDER BY last_name ASC, first_name ASC;
--
-- SELECT emp_no, first_name, last_name
-- FROM EMPLOYEES
-- WHERE last_name LIKE '%E'
-- OR last_name LIKE 'E%'
-- ORDER BY emp_no DESC;

-- ADDED A CONCAT()
SELECT CONCAT(first_name, ' ',last_name) AS 'Full Name:'
FROM EMPLOYEES
WHERE last_name LIKE 'E%E'
ORDER BY emp_no DESC
LIMIT 10;
-- Above prints out a duplicate:
-- One has the header "full name" and limits 10, the other has no heading and displays every name starting and ending with E.


SELECT emp_no, CONCAT(first_name, ' ',last_name) AS full_name, hire_date,
DATEDIFF(curdate(), hire_date) as days_employed
FROM EMPLOYEES
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
AND birth_date like '%-12-25'
ORDER BY birth_date ASC, hire_date DESC;



-- SELECT emp_no, first_name, last_name
-- FROM EMPLOYEES
-- WHERE last_name LIKE '%q%'
--    AND last_name NOT LIKE '%qu%';

