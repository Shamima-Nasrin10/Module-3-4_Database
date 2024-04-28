


create table sales_reps(
id number(4) not null,
name varchar2(30) not null,
salary number(8,2),
commission_pct number(2,2),
CONSTRAINT const_sales_reps_id primary key(id)
);


insert into sales_reps(
id,
name,
salary,
commission_pct
)
select employee_id, last_name, salary, commission_pct
from employees
where job_id like '%REP%';

commit;
select * from sales_reps;

select * from all_constraints;