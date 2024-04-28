---Chapter 3: Page 3---

select last_name ,salary
from employees
where salary>12000;

select last_name, department_id
from employees
where employee_id=176;

select last_name, salary
from employees
 where salary not between 5000 and 12000;
 
 
 select last_name, department_id
 from employees
 where department_id in (20,50)
 order by 1;
 
 --6
 
 select last_name "Employee", salary "Monthly Salary"
 from employees
 where salary between 5000 and 12000
 AND department_id in(20,50);
 
---9

select last_name, salary, commission_pct
from employees
where commission_pct is not null
order by 2 desc,3 desc;

--10
select last_name, salary
from employees
where salary>&salary;

--15
select last_name, salary, commission_pct
from employees
where commission_pct=0.2;

--2
select last_name, department_id
from employees
where employee_id=176;

---Chapter 4
--2
select employee_id, last_name, salary, round(salary+(salary*(15.5/100))) "New Salary"
from employees;

--4
select employee_id, last_name, salary, round(salary+(salary*(15.5/100))) "New Salary",round(salary+(salary*(15.5/100)))-salary  "Increase"
from employees;


--5 (a)

select initcap(last_name) "Name",length(last_name) "Length"
from employees
 where last_name like 'A%' or
 last_name like 'J%'or
 last_name like 'M.%';
 
 --5(a)
 select last_name, length (last_name)
 from employees
 where substr(last_name,1,1) in ('A','J','M');
 
--7
select last_name, lpad(salary,15,'$' )SALARY
FROM EMPLOYEES;




---8

select last_name, rpad('',salary/1000,'*')"Employees and their salaries"
from employees
order by 2 desc;

select last_name||' '||'earns'||' '||to_char(salary,'fm$999999.00')||' '||'but wants'||' '||to_char(salary*3,'fm$999999.00') "Dream Salary"
from employees;


-----
select last_name,hire_date,to_char(next_day(Add_months(hire_date,6),'Monday'),'fmDay, "the" fmDdspth "of" fmMonth, fmYYYY') "Salary Review Date"
from employees;






