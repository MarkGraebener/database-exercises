USE employees;

-- A SELECT expression can be given an alias using AS alias_name. The alias is used as the expression's column name and can be used in GROUP BY, ORDER BY, or HAVING clauses
SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees
ORDER BY full_name
LIMIT 25;

-- We can still use the original column names alongside the aliases.
SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees
GROUP BY full_name, last_name
ORDER BY last_name
LIMIT 25;

-- Let's look at a query from the previous lesson:
SELECT hire_date, COUNT(*)
FROM employees
GROUP BY hire_date
ORDER BY COUNT(*) DESC
LIMIT 10;

-- Here we can use aliases to improve the readability of both the output, and the query itself:
SELECT hire_date, COUNT(*) as number_hired
FROM employees
GROUP BY hire_date
ORDER BY number_hired DESC
LIMIT 10;

-- alias the table name.
SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees AS emp
GROUP BY full_name, last_name
ORDER BY last_name
LIMIT 25;

-- do not put aliases in where clauses!!!!!!!!!!
SELECT birth_date, CONCAT(first_name, ' ', last_name) AS full_name, gender
FROM employees
WHERE hire_date='1985-01-01'
  AND full_name='Arie Staelin';-- wrong !!!!