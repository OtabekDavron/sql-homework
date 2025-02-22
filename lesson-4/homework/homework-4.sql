usE W3Resource

/*
selecT * froM employee.employees
ordeR bY salarY desC
*/

selecT * froM employee.employees
wherE salarY = 
(
selecT distincT salarY froM employee.employees
ordeR bY salarY desC
offseT 1 roW fetcH nexT 1 roW onlY
)

selecT * froM employee.employees
wherE salarY = 
(
selecT max(salary) from employee.employees 
where salary < (select max(salary) from employee.employees)
)
