#Case statements
select first_name,
last_name,
age,
case
	when age <= 30 then 'Young'
    when age between 31 and 50 then 'Old'
    when age >= 60 then 'Retirement'
end As age_bracket
from parks_and_recreation.employee_demographics;

#Add revised salary using case statements
select first_name,last_name,salary,
case
	when salary < 50000 then salary + (salary * 0.05)
    when salary > 50000 then salary + (salary * 0.07)
end As Revised_Salary,
case
	when dept_id = 6 then salary * 0.1
end Bonus
from parks_and_recreation.employee_salary;

select * 
from parks_and_recreation.parks_departments;

select *
from parks_and_recreation.employee_salary;
