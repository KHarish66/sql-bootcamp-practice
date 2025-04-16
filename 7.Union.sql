#Union
select first_name,last_name
from parks_and_recreation.employee_demographics
union
select first_name,last_name
from parks_and_recreation.employee_salary
;

select first_name,last_name,'Old' label
from parks_and_recreation.employee_demographics
where age > 60
union
select first_name,last_name,'Highly paid employees' label
from parks_and_recreation.employee_salary
where salary > 70000
order by first_name,last_name
;