#String Functions
select length('skyfall');

select first_name,length(first_name) As length_first_name
from parks_and_recreation.employee_demographics
order by length_first_name
;

select upper('sky');
select lower('SKY');

select first_name,upper(first_name),length(first_name)
from parks_and_recreation.employee_demographics
order by length(first_name)
;

#Trim
select Rtrim('        sky         ')