---1 Create a table and name using your ID preceded by emp(as emp106588), which have 5 fields
--as eid, ename,salary,hire_date and address with appropriate data types and create primary key on eid.

create table emp1281521(
Employee_id number(5) not null,
Employee_name varchar2(30) not null,
salary number(8,2),
hire_date varchar2(30),
address varchar2(30),
CONSTRAINT sys_employee_id primary key(Employee_id)
);

--2: Add two new columns named 'department_id','department_name' using Alter table command.

alter table emp1281521
ADD (department_id number(5) not null, department_name varchar2(10));

--3: Insert values to the table.

insert into emp1281521
values(3, 'Shamima Nasrin', 25000, '01-JAN-2008', 'Dhanmondi, Dhaka', 50, 'W_DEV');

insert into emp1281521
values(4, 'Adiba Sultana', 20000, '01-FEB-2007', 'Mirpur, Dhaka', 80, 'S_REP');

commit;

--4 Create a view that contains ename,dep_name and salary in department 80.

Create view view_department_80
as
Select employee_name, department_name, salary
from emp1281521
where department_id=80;

--5: Create a sequence.

Create sequence emp1281521_employee_id
increment by 1
start with 5
Maxvalue 99999
nocache
nocycle;


--6: Give an appropriate example of insert data from subqueries.

insert into emp1281521(employee_id, Employee_name, salary, department_id, department_name)
select e.employee_id, e.first_name, e.salary, d.department_id, d.department_name
from employees e
join departments d on d.department_id = e.department_id
where d.department_id = 80;

select * from emp1281521;







