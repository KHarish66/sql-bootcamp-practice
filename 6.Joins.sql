#Joins

#Inner Join
select *
from parks_and_recreation.employee_demographics;

select *
from parks_and_recreation.employee_salary;

#Inner Join 
select *
from parks_and_recreation.employee_demographics
join parks_and_recreation.employee_salary
	on employee_demographics.employee_id = employee_salary.employee_id
;

select employee_demographics.employee_id,employee_demographics.first_name,occupation
from parks_and_recreation.employee_demographics
join parks_and_recreation.employee_salary
	on employee_demographics.employee_id = employee_salary.employee_id
;
#Outer Joins
#Left Join 
select * 
from parks_and_recreation.employee_demographics
left join parks_and_recreation.employee_salary
	on employee_demographics.employee_id = employee_salary.employee_id
;
#Right Join
select *
from parks_and_recreation.employee_demographics
right join parks_and_recreation.employee_salary
	on employee_demographics.employee_id = employee_salary.employee_id
;

#Self join
select emp1.first_name,emp1.last_name,emp2.first_name As Santa_first_name,emp2.last_name As Santa_last_name
from parks_and_recreation.employee_salary As emp1
join parks_and_recreation.employee_salary As emp2
	on emp1.employee_id + 1 = emp2.employee_id 
;

#Joining Multiple tables
select *
from parks_and_recreation.parks_departments;

select *
from parks_and_recreation.employee_demographics
join parks_and_recreation.employee_salary
	on employee_demographics.employee_id = employee_salary.employee_id
join parks_and_recreation.parks_departments
	on employee_salary.dept_id = parks_departments.department_id
;