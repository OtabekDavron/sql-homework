use W3Resource
go

--1
select * 
from Employee.employees

--2
select salary 
from Employee.employees

--3
select distinct job_name
from Employee.employees

--4
select emp_name, '$ ' + cast(cast(salary*1.15 as int) as varchar) as Salary
from Employee.employees

--5
select emp_name + ' ' + job_name as "Employee & Job" 
from Employee.employees

--6
select emp_name + ' (' + job_name + ')' as Employee
from Employee.employees

--7
select emp_id, emp_name, salary, 
		case when month(hire_date) = 1  then 'January ' + cast(day(hire_date) as varchar) + ', ' + cast(year(hire_date) as varchar)
			 when month(hire_date) = 2  then 'February ' + cast(day(hire_date) as varchar) + ', ' + cast(year(hire_date) as varchar)
			 when month(hire_date) = 3  then 'March ' + cast(day(hire_date) as varchar) + ', ' + cast(year(hire_date) as varchar)
			 when month(hire_date) = 4  then 'April ' + cast(day(hire_date) as varchar) + ', ' + cast(year(hire_date) as varchar)
			 when month(hire_date) = 5  then 'May ' + cast(day(hire_date) as varchar) + ', ' + cast(year(hire_date) as varchar)
			 when month(hire_date) = 6  then 'June ' + cast(day(hire_date) as varchar) + ', ' + cast(year(hire_date) as varchar)
			 when month(hire_date) = 7  then 'July ' + cast(day(hire_date) as varchar) + ', ' + cast(year(hire_date) as varchar)
			 when month(hire_date) = 8  then 'August ' + cast(day(hire_date) as varchar) + ', ' + cast(year(hire_date) as varchar)
			 when month(hire_date) = 9  then 'September ' + cast(day(hire_date) as varchar) + ', ' + cast(year(hire_date) as varchar)
			 when month(hire_date) = 10  then 'October ' + cast(day(hire_date) as varchar) + ', ' + cast(year(hire_date) as varchar)
			 when month(hire_date) = 11  then 'November ' + cast(day(hire_date) as varchar) + ', ' + cast(year(hire_date) as varchar)
			 when month(hire_date) = 12  then 'December ' + cast(day(hire_date) as varchar) + ', ' + cast(year(hire_date) as varchar)
	     end as "hire date"
from Employee.employees
			 
	    


