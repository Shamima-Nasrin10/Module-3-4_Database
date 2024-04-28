REM   Script: Chapter 3
REM   Restricting and sorting data

select last_name, salary 
from hr.employees 
where salary>12000 
order by 2 desc;

select last_name, department_id 
from hr.employees 
where employee_id=176;

select last_name, department_id 
from hr.employees 
where department_id=176;

select last_name, department_id, employee_id 
from hr.employees;

select last_name, department_id, employee_id 
from hr.employees 
    where employee_id=149;

select last_name, department_id 
from hr.employees 
where employee_id=149;

select last_name, salary 
from hr.employees 
where salary not between 5000 and 12000;

select last_name, job_id, hire_date 
from hr.employees 
where last_name in('Matos','Taylor');

select last_name, department_id 
from hr.employees 
where department_id in(20,50) 
order by 1;

select last_name, salary 
from hr.employees 
where salary between 5000 and 12000 
AND department_id in (20,50);

select last_name, hire_date 
from hr.employees 
where to_char(hire_date,'yyyy') in (2006);

select last_name, job_id 
from hr.employees 
where manager_id is null;

select last_name, salary, commission_pct 
from hr.employees 
where commission_pct is not null 
    order by 2 desc, 3 desc;

select last_name 
from hr.employees 
where last_name like '--a%';

select last_name 
from hr.employees 
where last_name like '__a%';

select last_name 
from hr.employees 
where last_name like '%a%' and last_name like '%e%';

select last_name, job_id, salary 
from hr.employees 
where job_id in('SA_REP','ST_CLERK') 
AND salary not in(2500,3500,7000);

select last_name "Employee", salary "Monthly Salary", commission_pct 
from hr.employees 
where commission_pct =20%;

select last_name "Employee", salary "Monthly Salary", commission_pct 
from hr.employees 
where commission_pct =0.2;

