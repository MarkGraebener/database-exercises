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


--

USE employees;

-- 2
SELECT DISTINCT  title FROM titles;

-- 3
SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE ('E%') AND last_name LIKE ('E%') GROUP BY last_name;


-- 4
SELECT DISTINCT first_name, last_name
FROM employees
WHERE last_name LIKE ('E%') AND last_name LIKE ('%E') GROUP BY first_name, last_name;

-- 5

SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE ('E%') AND last_name NOT LIKE '%qu%';

-- 6

SELECT last_name, COUNT(last_name)
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%' GROUP BY last_name;


-- 7
SELECT gender, COUNT(gender)
FROM employees
WHERE first_name IN ('Irene', 'Vidya', 'Maya') GROUP BY gender;

