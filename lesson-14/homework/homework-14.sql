--Homework for recursive cte. Find the hierarchial level of people

create table PostDef(postid int, definition varchar(25))
insert into PostDef values 
(0, 'Director'), 
(1, 'Deputy Director'), 
(2, 'Executive Director'), 
(3, 'Department head'), 
(4, 'Manager'), 
(5, 'Senior officer'), 
(6, 'Junior Officer'), 
(7, 'Intern')

create table Hierarchy(id int, name varchar(100), manager_id int, manager varchar(100))

insert into Hierarchy values 
(150, 'John Ryden', 111, 'Jack Tarkowski'),
(165, 'Sara Miller', 111, 'Jack Tarkowski'), 
(180, 'Rebecca Carson', 211, 'Thomas Kim'), 
(107, 'Sean Sullivan', 180, 'Rebecca Carson'), 
(142, 'Floyd Kan', 122, 'Alex Pereira'), 
(122, 'Alex Pereira', 107, 'Sean Sullivan'), 
(111, 'Jack Tarkowski', 107, 'Sean Sullivan'), 
(211, 'Thomas Kim', 191, 'Nicolas Jackson'), 
(177, 'Michael Rim', Null, Null), 
(191, 'Nicolas Jackson', 177, 'Michael Rim')

select * from PostDef
select * from Hierarchy

;

with t as(
select id, name, manager_id, manager, 0 as lvl from Hierarchy
where manager_id is null
union all
select h.id, h.name, h.manager_id, h.manager, lvl + 1 from Hierarchy as h 
join t on h.manager_id = t.id
)
select t.id, t.name, t.manager_id, t.manager, p.definition 
from t join PostDef as p on t.lvl = p.postid
