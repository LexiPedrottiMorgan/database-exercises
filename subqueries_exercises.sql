USE employees;

-- TODO 1. Find all the employees with the same hire date as employee 101010 using a sub-query. 69 rows. (not-finished)
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date IN (
    SELECT hire_date
    FROM employees
    WHERE hire_date = 1990-10-22
);

-- finds the person with the employee number 101010
SELECT first_name, last_name, hire_date
FROM employees
WHERE emp_no = 101010;


-- TODO 2. Find all the titles held by all employees with the first name Aamod.
-- 314 total titles, 6 unique titles

SELECT first_name, last_name, title
FROM employees
WHERE emp_no IN
(SELECT emp_no
FROM titles
WHERE first_name = 'Aamod');


-- TODO 3. Find all the current department managers that are female.

