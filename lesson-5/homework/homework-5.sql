use W3Resource
go
--select * from employee.employees

--select * from Employee.employees order by salary desc

select * 
from Employee.employees
where salary in
(
	select res.salary
	from (
		select dep_id , max(salary) as salary 
		from Employee.employees as emp
		where dep_id in 
			(select distinct dep_id from Employee.employees)
			and salary in 
			(
			select max(salary)
			from Employee.employees as emps
			where dep_id = emp.dep_id and salary < (select max(salary) from Employee.employees where dep_id = emps.dep_id)
			)
		group by dep_id
		) as res
)
order by dep_id asc