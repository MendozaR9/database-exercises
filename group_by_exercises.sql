use  employees;
select DISTINCT title
from titles;

select last_name
from employees
where  last_name like 'e%' and last_name  like '%e'
group by last_name, first_name;

select count( last_name) as 'shared last name', last_name
from employees
where last_name like '%q%' and last_name not like '%qu%'
group by last_name;

select count(gender), gender
from employees
where first_name = 'Irena' or first_name = 'Vidya'
    or first_name = 'Maya'
group by gender;
