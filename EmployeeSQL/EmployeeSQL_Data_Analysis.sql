select e.employee_number, e.first_name, e.last_name, e.sex, s.salary
from employees e
left join salaries s 
on e.employee_number = s.employee_number;

select first_name, last_name, hire_date
from employees
where hire_date like '%1986';

select e.first_name, e.Last_name, e.employee_number, d.department_name, m.department_number
from department_manager m
full join departments d
on m.department_number = d.department_number 
left join employees e
on m.employee_number = e.employee_number;

select de.department_number, de.employee_number, e.last_name, e.first_name, d.department_name
from department_employees de
left join employees e
on e.employee_number = de.employee_number
full join departments d
on d.department_number = de.department_number;

select first_name, last_name, sex
from employees
where first_name like 'Hercules'
and last_name like 'B%';

select e.employee_number, e.last_name, e.first_name
from employees e
right join department_employees d
on e.employee_number = d.employee_number
where department_number like 'd007';

select e.employee_number, e.last_name, e.first_name, d.department_name
from department_employees de
left join employees e
on e.employee_number = de.employee_number
full join departments d
on d.department_number = de.department_number
where de.department_number = 'd007' 
or de.department_number = 'd005';

select count(last_name), last_name
from employees
group by last_name
order by count(last_name) desc;