use employees;
select DISTINCT title
from titles;

select distinct last_name
from employees
order by last_name desc
limit 10;

select emp_no
from salaries
order by  salary desc
limit 5 offset 50;