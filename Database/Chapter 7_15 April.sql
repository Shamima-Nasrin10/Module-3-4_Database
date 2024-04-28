---Chapter 7
--1
select location_id, street_address,city, state_province, country_name
from locations
natural join countries;

--2
select last_name, department_id, department_name
from employees
natural join departments;

select e.last_name, d.department_id, d.department_name
from employees e
join departments d
on d.department_id=e.department_id;

---3
select e.last_name, e.job_id, e.department_id,d.department_name
from employees e
join departments d
on d.department_id=e.department_id
join locations l
on l.location_id=d.location_id
where l.city='Toronto';

---4
select *
from departments;

select e.last_name "Employee", e.employee_id "EMP#", m.last_name "Manager", m.employee_id "Mgr#"
from employees e
join employees m
on m.employee_id=e.manager_id;


---5
select e.last_name "Employee", e.employee_id "EMP#", m.last_name "Manager", m.employee_id "Mgr#"
from employees e
left join employees m
on m.employee_id=e.manager_id
order by 2; 


--6
select e.department_id, e.last_name "Employee", c.last_name "Colleague"
from employees e
join employees c
on e.department_id=c.department_id
where e.employee_id<>c.employee_id
order by 1;

---7
select e.last_name, e.job_id, d.department_name, e.salary, j.grade
from employees e
join departments d
on e.department_id=d.department_id
join job_grades j
on (e.salary between j.lowest_sal and j.highest_sal);




















CREATE TABLE job_grades (
grade 		CHAR(1),
lowest_sal 	NUMBER(8,2) NOT NULL,
highest_sal	NUMBER(8,2) NOT NULL
);

ALTER TABLE job_grades
ADD CONSTRAINT jobgrades_grade_pk PRIMARY KEY (grade);

INSERT INTO job_grades VALUES ('A', 1000, 2999);
INSERT INTO job_grades VALUES ('B', 3000, 5999);
INSERT INTO job_grades VALUES ('C', 6000, 9999);
INSERT INTO job_grades VALUES ('D', 10000, 14999);
INSERT INTO job_grades VALUES ('E', 15000, 24999);
INSERT INTO job_grades VALUES ('F', 25000, 40000);

COMMIT











