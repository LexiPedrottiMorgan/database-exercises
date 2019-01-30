USE EMPLOYEES;

SELECT DISTINCT title
FROM TITLES;


SELECT last_name
FROM EMPLOYEES
WHERE last_name LIKE 'E%E'
GROUP BY last_name;


SELECT CONCAT(first_name,' ', last_name) AS full_name
FROM EMPLOYEES
WHERE last_name LIKE 'E%E'
GROUP BY full_name;


SELECT last_name
FROM EMPLOYEES
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%'
GROUP BY last_name;


SELECT LAST_NAME, COUNT(*)
FROM EMPLOYEES
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%'
GROUP BY last_name
ORDER BY COUNT(*) DESC;


# counts total of the names for M and F:
SELECT gender, COUNT(*)
FROM EMPLOYEES
WHERE first_name IN ('IRENA', 'VIDYA', 'MAYA')
GROUP BY gender
ORDER BY COUNT(gender)DESC;


# counts total of the names that are M and F and displays count by name and gender:
SELECT first_name, gender, COUNT(*)
FROM EMPLOYEES
WHERE first_name IN ('IRENA', 'VIDYA', 'MAYA')
GROUP BY gender, first_name
ORDER BY COUNT(gender)DESC, COUNT(first_name)DESC;
