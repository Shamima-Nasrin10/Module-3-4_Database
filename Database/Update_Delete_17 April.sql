desc employees;

select * from employees;
rollback;

update sales_reps set commission_pct=.25, salary=7500
where id=202;

update sales_reps 
set(salary)=(select salary
from sales_reps
where id=203)
where id=150;
rollback;

update employees
set(job_id, salary)=(select job_id, salary
from employees
where employee_id=205)
where employee_id=103;

rollback;

select * from employees;


update employees
set department_id=(select department_id
from employees
where employee_id=100
)
where job_id=(
select job_id
from employees
where employee_id=200
);
rollback;


delete from sales_reps
where id=150;

select * from sales_reps;
rollback;


