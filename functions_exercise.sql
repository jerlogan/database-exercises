-- Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name DESC, first_name DESC;

-- Find all employees whose last name starts with 'E' — 7,330 rows.
SELECT *
FROM employees
WHERE last_name LIKE 'E%'
ORDER BY emp_no DESC;

-- Find all employees hired in the 90s — 135,214 rows.
SELECT *
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';
-- WHERE hire_date LIKE '199%';

-- Find all employees born on Christmas — 842 rows.
SELECT *
FROM employees
WHERE birth_date LIKE '%-12-25';

-- Find all employees with a 'q' in their last name — 1,873 rows.
SELECT *
FROM employees
WHERE last_name LIKE '%q%';

-- Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.
SELECT *
FROM employees
WHERE first_name = 'Irena'
 OR   first_name = 'Vidya'
 OR   first_name = 'Maya';
--  IN ('Irena', 'Vidya', 'Maya');

-- Add a condition to the previous query to find everybody with those names who is also male — 441 rows.
SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
 AND  gender = 'M';

-- Find all employees whose last name starts or ends with 'E' — 30,723 rows.
SELECT CONCAT (first_name, ' ', last_name) as full_name;
FROM employees
WHERE last_name LIKE 'E%'
OR   last_name LIKE '%e'
limit 50;


-- Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.
SELECT *
FROM employees
WHERE last_name LIKE 'E%e';
--  AND  last_name LIKE '%e';

-- Find all employees hired in the 90s and born on Christmas — 362 rows.
SELECT first_name, last_name, hire_date, birth_date
FROM employees
WHERE hire_date LIKE '199%'
 AND  birth_date LIKE '%-12-25'
ORDER BY birth_date, hire_date DESC; -- Will group all w/same last name
-- ORDER BY birth_date, last_name; -- Will group all w/same birthdate

-- Find all employees with a 'q' in their last name but not 'qu' — 547 rows.
SELECT *
FROM employees
WHERE last_name LIKE '%q%'
 AND  last_name NOT LIKE '%qu%';