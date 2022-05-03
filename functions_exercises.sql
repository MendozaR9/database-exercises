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

select CONCAT(first_name,' ', last_name) as 'Full name'
from employees
where last_name like 'E%' and last_name like '%E'
order by emp_no  DESC ;


select *
from employees
where last_name like '%q%' and last_name not like '%qu%';

select *
from employees
where month(birth_date)= 12
and day(birth_date)=25;

select *
from employees
where month(birth_date)= 12
  and day(birth_date)=25
and year(hire_date) between 1990 and 1999
order by birth_date asc, hire_date desc ;

select emp_no, datediff(now(), hire_date) as 'day worked'
from employees
where  month(birth_date)= 12
  and day(birth_date)=25
order by birth_date asc, hire_date desc ;
