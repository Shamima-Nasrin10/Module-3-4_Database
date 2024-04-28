select department_id, department_name,
location_id, city
from departments
natural join locations
where department_id in (20,50);


select last_name, (salary*12)*NVL(commission_pct,0)
from employees;

select count(department_id)
from employees
where last_name='Smith';


--Question-8
select count(distinct department_id)
from employees
where last_name='Smith';

select department_id, last_name
from employees
where last_name='Smith';



--Question:18
select to_char(sysdate,'YYYY')
from dual;

--Equi-join
select last_name, department_name, location_id
FROM employees,departments;



select location_id, department_id
from departments;

select last_name, hire_date, salary
from employees;

select first_name, salary, salary+300
from employees
where department_id>50
order by 3;

select last_name, (salary+100)*12 "Annual Salary"
from employees
where last_name like '_al%';

select last_name, job_id, salary, commission_pct
from employees
where last_name like '__a%';

select last_name, 12*salary*commission_pct
from employees
where last_name like '%a';

select last_name||' '||job_id "Employee Job ID"
from employees;

--Page: 2-21

select First_name||' is a '||job_id
"Employee Details"
from employees;

select last_name||q'[ Department's Manager ID: ]'||salary
from employees;

select distinct department_id
from employees;


--Page :3-6

select employee_id, last_name, job_id, department_id
from employees
where department_id=90;

select employee_id,last_name
from employees
where hire_date='17-OCT-03';

