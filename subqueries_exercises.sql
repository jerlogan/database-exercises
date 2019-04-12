SELECT *
from employees
where hire_date IN (
  SELECT hire_date
  from employees
  where emp_no = '101010'
);

SELECT *
from titles
where emp_no IN (
  SELECT emp_no
  from employees
  where first_name = 'Aamod'
);


select *
from employees
where gender = 'F' and emp_no IN (
  select emp_no
  from dept_manager
  where to_date > curdate()
);

-- BONUS

select *
from employees
where gender = 'F' and emp_no IN (
  select emp_no
  from dept_manager
  where to_date > curdate()
);

select *
from dept_manager;


