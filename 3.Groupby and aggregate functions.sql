#Groupby #Using aggregate functions with groupby
select gender,avg(age)
from parks_and_recreation.employee_demographics
group by gender
;

select gender,avg(age),min(age),max(age),count(age)
from parks_and_recreation.employee_demographics
group by gender
;

#Orderby

select *
from parks_and_recreation.employee_demographics
order by first_name
;

select * 
from parks_and_recreation.employee_demographics
order by gender,age desc
;