#Window Functions and Group by
select gender,avg(age) As Avg_Age 
from parks_and_recreation.employee_demographics
group by gender
;

select gender,avg(salary)
from parks_and_recreation.employee_demographics
join parks_and_recreation.employee_salary
	on employee_demographics.employee_id = employee_salary.employee_id
group by employee_demographics.gender
;

#Window functions
select employee_demographics.first_name,employee_demographics.last_name,gender,avg(salary) over(partition by gender)
from parks_and_recreation.employee_demographics
join parks_and_recreation.employee_salary
	on employee_demographics.employee_id = employee_salary.employee_id
;

select  employee_demographics.first_name,employee_demographics.last_name,salary,
gender,row_number() over(partition by gender order by salary desc) as row_num,
rank() over(partition by gender order by salary desc) as rank_num
from parks_and_recreation.employee_demographics
join parks_and_recreation.employee_salary
	on employee_demographics.employee_id = employee_salary.employee_id
;
