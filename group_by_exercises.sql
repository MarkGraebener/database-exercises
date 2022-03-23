USE employees;



-- GROUP BY returns only the unique occurrences of the column specified.

SELECT DISTINCT first_name
FROM employees;
-- same as
SELECT first_name
FROM employees
GROUP BY first_name;

-- multiple columns
SELECT last_name, first_name
FROM employees
GROUP BY last_name, first_name;


-- This query will output each unique first name without an 'a', as well as the number of employees with that first name. Notice also that this query returns 500 results. While there are 118,195 employees with a first name that did not have the letter a, there are only 500 unique first names that do not have an 'a' in them.
SELECT first_name, COUNT(first_name)
FROM employees
WHERE first_name NOT LIKE '%a%'
GROUP BY first_name;

-- This will show us the 10 most common hire dates for employees.
SELECT hire_date, COUNT(*)
FROM employees
GROUP BY hire_date
ORDER BY COUNT(*) DESC
LIMIT 10;

