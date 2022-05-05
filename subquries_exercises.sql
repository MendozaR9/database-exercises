use employees;
select concat(e.first_name, ' ', e.last_name)as 'Full name'
from employees as e
where e.hire_date in(
    select no.hire_date
    from employees as no
    where no.emp_no = 101010
    );

select t.title
from titles as t
where t.emp_no in(
    select e.emp_no
    from employees as e
    where e.first_name= 'Aamod'
    );

select e.first_name, e.last_name
from employees as e
where e.gender='f'
and e.emp_no in (
    select dm.emp_no
    from dept_manager as dm
    where dm.emp_no
    and dm.to_date >curdate()
    );