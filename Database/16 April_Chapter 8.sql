---chapter 7
---7
describe job_grades;

select e.last_name, e.salary, d.department_name, j.grade
from employees e
join departments d
on e.department_id=d.department_id
join job_grades j
on e.salary between j.lowest_sal and j.highest_sal
order by 4;

--8
select last_name, hire_date
from employees
where hire_date> (select hire_date
from employees
where last_name='Davies');

--9
select e.last_name, e.hire_date, m.last_name "Manager", m.hire_date
from employees e
join employees m
on e.manager_id=m.employee_id
where e.hire_date<m.hire_date;


-----Chapter 8----
--1
select last_name, hire_date
from employees
where department_id = (select department_id
from employees
where last_name= '&&Enter_name' and last_name <> '&Enter_name' );

--2
select employee_id, last_name, salary
from employees
where salary> (select avg(salary)
from employees)
order by 3;


---3
select employee_id, last_name
from employees
where department_id in (select department_id
from employees
where last_name like '%u%');

---4
select e.last_name, d.department_id, e.job_id
from employees e
join departments d
on e.department_id=d.department_id
where d.location_id=1700;

---5
select last_name, salary
from employees
where manager_id in (select employee_id from employees 
where last_name = 'King');

--6
select department_id, last_name, job_id
from employees
 where department_id in (select department_id
 from departments
 where department_name='Executive');

--7
select last_name
from employees
where salary > (select min(salary)
from employees
where department_id=60);


select last_name
from employees
 where salary> any (select salary
 from employees
  where department_id=60);

--8
select employee_id, last_name, salary
from employees
 where salary > (select avg(salary)
 from employees) 
 AND department_id in (select department_id
from employees
where last_name like '%u%');

insert into departments (department_id, department_name)
values (72,'PR');
insert into departments
values(73,'JEE', 206, 1700);
rollback;









select *
from job_grades;

select * 
from departments;

select *
from employees;


