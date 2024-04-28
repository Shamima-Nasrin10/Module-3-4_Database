---Display job id of jobs that were done by more than 3 employees for more than 100 days.

select distinct (job_id)
from employees
where current_date-hire_date>100
group by job_id
having count(employee_id)>3;

Create view view_emp_100_days
as
select distinct (job_id)
from employees
where current_date-hire_date>100
group by job_id
having count(employee_id)>3;

select * 
from view_emp_100_days;

---2:Display departments where any manager is managing more than 5 employees.

select distinct(department_id)
from employees
group by manager_id, department_id
having count(employee_id)>5;

create view view_dept_5_emp
as
select distinct(department_id)
from employees
group by manager_id, department_id
having count(employee_id)>5;

select * 
from view_dept_5_emp;

