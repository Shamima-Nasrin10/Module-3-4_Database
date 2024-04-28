
--Question:1
select first_name,last_name, salary
from employees
where first_name like 'A%';

 
--Question:2
select first_name, salary, salary+(salary*(30/100)) "Salary with Bonus (30%)"
from employees;

 
--Question:3
select first_name||' '||last_name "Employee's Name", salary
from employees
where salary >2500;

  
--Question:4
Select first_name||' '||last_name "Employee's Name",salary, salary*12 "Annual Salary"
from employees
order by 3;
