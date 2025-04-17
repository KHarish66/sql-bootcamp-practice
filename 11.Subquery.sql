#Sub Query
select *
from parks_and_recreation.employee_demographics
where employee_id in
				  (select employee_id 
                  from parks_and_recreation.employee_salary
                  where dept_id = 1)
;

select *
from parks_and_recreation.employee_salary;

select first_name,salary,
(select avg(salary) 
from parks_and_recreation.employee_salary) As Company_Average
from parks_and_recreation.employee_salary
group by first_name,salary
;

