select department_id,salary
from employees e
join departments d
on d.department_id=e.department_id
group by department_id;

select city
from locations
group by city;



select first_name, hire_date
from employees
where hire_date> 
(select hire_date
from employees
where first_name='David'
order by 1 desc
fetch first 1 row only);



select first_name, hire_date
from employees
where hire_date>= 
(select hire_date
from employees
where first_name='David'
order by 1 desc
fetch first 1 row only);

select first_name, hire_date
from employees
where hire_date> 
(select hire_date
from employees
where first_name='David'
offset 2 rows fetch next 1 row only);


SELECT FIRST_name, salary
from employees
where salary>(select salary
from employees
where first_name='Karen'
ORDER by 1 desc
fetch first 1 row only);

select first_name
from employees
where first_name='Karen';


select first_name, hire_date
from employees
where first_name='David';



select last_name
from employees
where last_name='Taylor';


select last_name, job_id, salary
from employees
where job_id=(
select job_id
from employees
where last_name='Taylor'
fetch first 1 row only)
AND salary> (
 select salary
 from employees
 where last_name='Taylor'
 fetch first 1 row only);



select department_id, min(salary), count(employee_id)
from employees
group by department_id
having min(salary) >
(select min(salary)
from employees
where department_id=80);

select *
from jobs
order by job_id;


--Evidence Practice
--One: Display details of jobs where the minimum salary is greater than 10000.

select *
from jobs 
where min_salary>10000;


--Two: Display first name and join date of the employees who is either IT programmer or sales Man.


select first_name, hire_date
from employees
where job_id IN('IT_PROG','SA_REP');

--Three: Display details of employee with ID 150 or 160.

select *
from employees
where employee_id in (150,160);

--Four: Display job title, the difference between minimum and maximum salaries for jobs with max salary in the range 10000 to 20000.

select job_title,max_salary-min_salary "Difference of salary"
from jobs
where max_salary between 10000 and 20000;











