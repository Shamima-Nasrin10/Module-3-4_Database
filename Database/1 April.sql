select e.employee_id, d.location_id
from employees e
join departments d
on (e.department_id=d.department_id);


select e.employee_id, e.last_name, e.department_id,
d.department_id, d.location_id
FROM employees e
JOIN departments d
ON e.department_id=d.department_id;


--Retrive first name, last name, salary whether the city is Oxford.

Select first_name, last_name, salary
from employees e
join departments d
on  e.department_id=d.department_id
join locations l
on d.location_id=l.location_id
where city='Oxford';


select  job_title, department_name, last_name
from employees e
join departments d
ON d.department_id=e.department_id
join jobs j
ON e.job_id=j.job_id
where to_char(e.hire_date,'YYYY') between 2000 and 2005;


select  job_title, department_name, last_name, start_date
from employees e
join departments d
ON d.department_id=e.department_id
join jobs j
ON e.job_id=j.job_id
join job_history h
ON e.employee_id=h.employee_id
where to_char(h.start_date,'YYYY') between 2000 and 2005;


select first_name, last_name, department_name, end_date, max_salary, city
from employees e
join departments d
ON e.department_id=d.department_id
JOIN job_history h
ON d.department_id=h.department_id
JOIN jobs j
ON h.job_id=j.job_id
JOIN locations l
ON d.location_id=l.location_id
where h.end_date >'31-DEC-2005'
order by 1,5;


select e.last_name, e.department_id, d.department_name
from employees e right outer join departments d
ON (e.department_id=d.department_id);


select last_name, department_name
from employees
CROSS JOIN departments;





