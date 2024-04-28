select first_name, department_id,department_name, manager_id 
from employees
NATURAL JOIN departments;


select department_id, department_name,
location_id, city
from departments
NATURAL JOIN locations
where department_id in(20,50);



select first_name, department_name, manager_id, job_id,job_title, state_province,country_name
from employees
NATURAL JOIN departments
natural join jobs
natural join locations
natural join countries;


select first_name, last_name, department_name, job_id, job_title, postal_code, country_id,country_name
from employees
natural join departments
natural join jobs
natural join locations
natural join countries;



select employee_id, first_name,
location_id, department_id
from employees
JOIN departments
using(department_id);


select l.city, d.department_name
from locations l 
JOIN DEPARTMENTS d
using(location_id)
where location_id=1400;

select first_name, d.department_name, d.manager_id
from employees e
JOIN departments d
using (department_id)
where department_id=50;


select r.region_name, c.country_name
FROM regions r
JOIN countries c
using(region_id)
where region_id=4;


select department_name, manager_id, l.postal_code, l.city
from departments d
JOIN locations l
using(location_id);


select *
from locations;

SELECT * 
FROM COUNTRIES;

select last_name, hire_date
from employees
where hire_date< '01-FEB-2008';

select sessiontimezone, current_timestamp 
FROM dual;

select last_name, round((sysdate-hire_date)/7) Weeks
from employees
where department_id=90;

select employee_id, hire_date, months_between (sysdate,hire_date) TENURE, add_months (hire_date,6) Review,
next_day (hire_date,'Friday'), last_day(hire_date)
from employees
where months_between(sysdate, hire_date)<50;



 



