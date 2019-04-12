use empoyees;

SELECT DISTINCT titles from employees.tables;

 SELECT first_name, last_name from employees.employees where last_name LIKE '%E%' GROUP BY last_name, first_name;

 SELECT last_name, COUNT(last_name) from employees.employees where last_name like '%q%' AND last_name not like '%qu%' group by last_name
 ORDER BY COUNT(last_name);

SELECT count(*), gender from employees.employees where first_name IN ('Irena', 'Vidya', 'Maya') group by gender;

