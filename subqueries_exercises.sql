

-- Subqueries, also called nested queries, refers to having more than one query expression in a query.

-- A nested query follows this syntax:
SELECT column_a, column_b, column_c
FROM table_a
WHERE column_a IN (
SELECT column_a
FROM table_b
WHERE column_b = true
);

-- From our employees database, we can use this example query to find all the department managers names and birth dates:
SELECT first_name, last_name, birth_date
FROM employees
WHERE emp_no IN (
SELECT emp_no
FROM dept_manager
)
LIMIT 10;

+------------+--------------+------------+
| first_name | last_name    | birth_date |
+------------+--------------+------------+
| Margareta  | Markovitch   | 1956-09-12 |
| Vishwani   | Minakawa     | 1963-06-21 |
| Ebru       | Alpin        | 1959-10-28 |
| Isamu      | Legleitner   | 1957-03-28 |
| Shirish    | Ossenbruggen | 1953-06-24 |
| Karsten    | Sigstam      | 1958-12-02 |
| Krassimir  | Wegerle      | 1956-06-08 |
| Rosine     | Cools        | 1961-09-07 |
| Shem       | Kieras       | 1953-10-04 |
| Oscar      | Ghazalie     | 1963-07-27 |
+------------+--------------+------------+


-- Subqueries can be also useful while you are building INSERT / UPDATE statements where you don't know exactly what ID needs to be inserted as a foreign key as the following example demonstrates:

INSERT INTO users (name, email, role_id)
VALUES('fer', 'fer@codeup.com',
       (SELECT id FROM roles WHERE name = 'commenter')
      );

--