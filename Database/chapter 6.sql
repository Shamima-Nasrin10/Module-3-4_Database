select avg(salary), max(salary), min(salary), sum(salary)
from employees
where job_id like 'ST%';

select min(hire_date), max(hire_date)
from employees;

select count (*)
from employees
where department_id=50;

select min(last_name), max(last_name)
from employees;

select employee_id, to_char(hire_date, 'MM/YY') Month_Hired
from employees
where last_name='Higgins';

---Chapter 6---
--4
select max(salary) "Maximum", min(salary) "Minimum",
sum(salary) "Sum", round(avg(salary)) "Average"
from employees;

--5
select job_id, max(salary) "Maximum", min(salary) "Minimum",
sum(salary) "Sum", round(avg(salary)) "Average"
from employees
group by job_id;

--6
select job_id, count(*)
from employees
group by job_id;

--7
select count(distinct(manager_id)) "Number of Managers"
from employees;

--8
select max(salary)-min(salary) Difference
from employees;

--9
select manager_id, min(Salary)
from employees
where manager_id is not null
group by manager_id
having min(salary)>6000
order by 2 desc;

---10
select count(*)
from employees
group by to_char(hire_date,'YYYY');

select count(*) "Total",
sum(case when to_char(hire_date,'YYYY')='2005' then 1 else 0 end) "2005",
sum(case when to_char(hire_date,'YYYY')='2006' then 1 else 0 end) "2006",
sum(case when to_char(hire_date,'YYYY')='2007' then 1 else 0 end) "2007",
sum(case when to_char(hire_date,'YYYY')='2008' then 1 else 0 end) "2008"
from employees;

--11
select job_id "Job",








