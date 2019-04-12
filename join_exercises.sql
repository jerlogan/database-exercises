select * from employees.departments;
select * from employees.dept_manager;

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees as e
JOIN dept_manager as dm
  ON dm.emp_no = e.emp_no
JOIN departments as d
  ON d.dept_no = dm.dept_no
  WHERE dm.to_date > curdate() and e.gender = 'F'
  ORDER BY d.dept_name;


 select t.title, count(t.title) from titles as t
 join dept_emp de on de.emp_no = t.emp_no
 where t.to_date > curdate() AND de.dept_no = 'd009' AND de.to_date > curdate()
 group by t.title
 order by t.title;

 SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager', s.salary as 'Salary'
FROM employees as e
JOIN dept_manager as dm
  ON dm.emp_no = e.emp_no
JOIN departments as d
  ON d.dept_no = dm.dept_no
JOIN salaries as s
  ON s.emp_no = e.emp_no
  WHERE dm.to_date > curdate() and s.to_date > curdate()
  ORDER BY s.salary desc;











