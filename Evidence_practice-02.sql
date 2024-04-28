--1: Create a table and name using your ID preceded by emp, which have 5 fields as eid,ename, salary, 
-----hire_date and address with appropriate data types and create primary key on eid.

Create table emp1281521_JEE(
eid number(5) not null,
ename varchar2(30) not null,
salary number (8,2),
hire_date date,
address varchar2(30),
CONSTRAINT sys_JEE_eid primary key(eid)
);

--2: Displays department numbers and average salaries for those departments with a 
---maximum salary that is greater than 12000.

select department_id, round(avg(salary))
from employees
group by department_id
having avg(salary)>12000;

--3: Displays the name whose name starts with 'S',

select first_name||' '||last_name "Employee Name"
from employees
where first_name like 'S%';

--4: Display the avg salary of employees of department sales.

select round(avg(salary)), department_name
from employees
natural join departments
where department_name='Sales'
group by department_name;

--5: Display the name of employees joinning in company in ascending order.

select first_name||' '||last_name "Employee Name", hire_date
from employees
order by 2;




