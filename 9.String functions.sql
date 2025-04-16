#Substrings 

select first_name,
left(first_name,4),
right(first_name,4),
substring(first_name,3,2),
birth_date,
substring(birth_date,6,2) As birth_month
from parks_and_recreation.employee_demographics;

#Replace
select first_name,replace(first_name,'a','z')
from parks_and_recreation.employee_demographics;

#Locate
select locate('x','Alexander');

select first_name,locate('An',first_name)
from parks_and_recreation.employee_demographics;

#Concat
select first_name,last_name,
concat(first_name,' ',last_name) as Full_name
from parks_and_recreation.employee_demographics;