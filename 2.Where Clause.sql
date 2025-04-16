#Where clause
select * 
from parks_and_recreation.employee_salary
where first_name = 'Leslie'
;
#Comparison Operators
select * 
from parks_and_recreation.employee_salary
where salary <= 50000
;

select *
from parks_and_recreation.employee_demographics
where gender != 'Female'
;
#We can also filter by birthdates
select *
from parks_and_recreation.employee_demographics
where birth_date > '1985-01-01' #foramt is year month day
;
#Logical operators AND OR NOT
select *
from parks_and_recreation.employee_demographics
where birth_date > '1970-01-01'
and gender = 'Male'
;
select *
from parks_and_recreation.employee_demographics
where gender = 'Female'
or birth_date > '1985-01-01'
;

#Like statement
# special characters % and _
select *
from parks_and_recreation.employee_demographics
where first_name like 'a__'
;
#Working with birth_dates
select *
from parks_and_recreation.employee_demographics
where birth_date like '1987%'
;