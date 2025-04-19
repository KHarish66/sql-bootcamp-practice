#Stored procedures
create procedure high_salary_employees()
select *
from parks_and_recreation.employee_salary
where salary >= 50000
;

call high_salary_employees();

#Best practise to use store procedures using DELLIMITER

DELIMITER $$
create procedure large_salary_employees4()
begin
	select *
	from parks_and_recreation.employee_salary
	where salary >= 50000;
	select *
	from parks_and_recreation.employee_salary
	where salary > 60000;
end $$
DELIMITER ;

call large_salary_employees4();