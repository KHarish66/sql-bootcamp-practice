#Triggers and Events

select *
from parks_and_recreation.employee_demographics;

select *
from parks_and_recreation.employee_salary;

Delimiter $$
create trigger insert_employee_details
	after insert on employee_salary
    for each row
begin
	insert into employee_demographics(employee_id,first_name,last_name)
    values(new.employee_id,new.first_name,new.last_name);
end $$
Delimiter ;

insert into employee_salary(employee_id,first_name,last_name,occupation,salary,dept_id)
values
(13,"Harish","Hari","Manager",90000,null);
