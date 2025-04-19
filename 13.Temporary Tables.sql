#Temporary tables
use parks_and_recreation;
create temporary table temp_table
(first_name varchar(50),
 last_name varchar(50),
 favourite_movie varchar(100)
 );
 select *
 from parks_and_recreation.temp_table;
 
 insert into parks_and_recreation.temp_table
 values
 ('Harish','Hari','Lord of rings');
 
#Creating temporary tables from existing data
select *
from parks_and_recreation.employee_salary;

create temporary table salary_over_50k
select *
from parks_and_recreation.employee_salary
where salary >= 50000
;

select *
from parks_and_recreation.salary_over_50k;

create temporary table salary_over_80k
select *
from parks_and_recreation.employee_salary
where salary >= 80000
;

select *
from parks_and_recreation.salary_over_80k;