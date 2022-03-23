


-- SELECT CONCAT('Hello ', 'Codeup', '!');

-- all first names with the letter combination 'sus':
-- SELECT first_name
-- FROM employees
-- WHERE first_name LIKE '%sus%';


-- NOT LIKE will return the results that do not match the pattern
-- This query selects all the first names without the letter 'a' in them
-- SELECT DISTINCT first_name
-- FROM employees
-- WHERE first_name NOT LIKE '%a%';

-- SELECT DAYOFMONTH('1990-05-03');
-- Will return 3

-- SELECT DAY('2017-03-25');
-- Will return 25

--  SELECT YEAR('1987-01-01');
-- Will return 1987

-- SELECT *
-- FROM employees
-- WHERE year(birth_date) BETWEEN 1950 AND 1959
--  AND month(birth_date) = 7
--  AND day(birth_date) = 4;

-- The NOW() function returns the current time in YYYY-MM-DD HH:MM:SS format
-- SELECT NOW();

-- The CURDATE() function returns just the current date with no time information in YYYY-MM-DD format
-- SELECT CURDATE();

-- The function CURTIME() returns the time formatted as HH:MM:SS
-- SELECT CURTIME();

-- SELECT CONCAT(
-- 'Teaching people to code for ',
--    UNIX_TIMESTAMP() - UNIX_TIMESTAMP('2014-02-04'),
--    ' seconds'
-- );

-- MySQL provides mathematical functions see Doc for functions