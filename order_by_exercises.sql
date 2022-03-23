USE employees;

SELECT * FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name, last_name DESC;

SELECT last_name FROM employees
WHERE last_name LIKE 'E%';

SELECT last_name FROM employees
WHERE last_name LIKE '%q%';

-- Find all employees whose last name starts or ends with 'E' — 30,723 rows.

SELECT last_name FROM employees
WHERE last_name LIKE 'E%'
   OR last_name LIKE '%e';

-- Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E'
SELECT last_name FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%e';

-- Find all employees with a 'q' in their last name but not 'qu'
SELECT last_name FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%'; -- or do i use !=????
