use employees;
select *
from employees
where (first_name = 'Irena' or first_name = 'Vidya'
    or first_name = 'Maya')
  and gender = 'M'
order by last_name ASC, first_name ASC ;

select *
from employees
where last_name like 'k%';

select *
from  employees
where last_name like '%q%';

select *
from employees
where last_name like 'E%' or last_name like '%E'
order by emp_no  DESC ;

select *
from employees
where last_name like 'E%' and last_name like '%E'
order by emp_no  DESC ;


select *
from employees
where last_name like '%q%' and last_name not like '%qu%';