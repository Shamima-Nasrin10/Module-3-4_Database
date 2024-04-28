select first_name, department_id, salary
from employees
where (salary, department_id) IN 
                    (select min(salary), department_id
                    from employees
                    GROUP BY department_id)
                    order by department_id;
                    
                    

select min(salary), department_id
                    from employees
                    GROUP BY department_id
                    order by department_id;
                    
                    
                    
select last_name from employees
where employee_id not in(
select manager_id
from employees
where manager_id is not null);



