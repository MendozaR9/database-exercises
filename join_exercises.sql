use employees;
select d.dept_name as 'Department name',
       concat(e.first_name, ' ', e.last_name) as 'Department Manager'
from employees as e
        join dept_manager as de on e.emp_no = de.emp_no
        join departments as d on d.dept_no = de.dept_no
where de.to_date > curdate()
order by dept_name asc;

select d.dept_name as 'Department name',
       concat(e.first_name, ' ', e.last_name) as 'Department Manager'
from employees as e
        join dept_manager as de on e.emp_no = de.emp_no
        join departments as d on d.dept_no = de.dept_no
where de.to_date > curdate() and e.gender = 'f'
order by dept_name asc;

select t.title , count(d.dept_name) as 'Total'
from titles as t
         join dept_emp as de on t.emp_no = de.emp_no
         join departments as d on d.dept_no = de.dept_no
where de.to_date > curdate() and d.dept_name like 'c%' and t.to_date > curdate()
group by title;

select d.dept_name as 'Department Name',
       concat(e.first_name, ' ', e.last_name) as 'Department Manger',
       s.salary as 'Salary'
from employees as e
        join dept_manager as dm on e.emp_no = dm.emp_no
        join departments as d on d.dept_no = dm.dept_no
        join salaries  as s on e.emp_no = s.emp_no
where dm.to_date > curdate() and s.to_date > curdate()
order by dept_name asc;