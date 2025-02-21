select * from Students1
select * from Subjects
select * from Examinations

--how many exams on each subject each student has taken.
select a.student_name, a.subject_name, 
case when e.student_id is null or e.subject_name is null then 0 else count(*) end as ExamsTaken
from
	(
	select *
	from Students1 as st
	cross join Subjects as sb
	) as a
	left join Examinations as e on a.student_id = e.student_id
	where a.subject_name = e.subject_name or e.subject_name is null
	group by e.student_id, e.subject_name, a.subject_name, a.student_name


--
select * 
from
	(
	select *
	from Students1 as st
	cross join Subjects as sb
	) as a
	left join Examinations as e on a.student_id = e.student_id
	where a.subject_name = e.subject_name or e.subject_name is null
	
--
select a.student_id, a.student_name, a.subject_name, e.student_id, e.subject_name,
case 
	when a.student_id = e.student_id and a.subject_name <> e.subject_name 
	then null else e.student_id end as chk_student_id
from
	(
	select *
	from Students1 as st
	cross join Subjects as sb
	) as a
	left join Examinations as e on a.student_id = e.student_id


--

select a.student_name, count(a.subject_name) as n
from
	(
	select *
	from Students1 as st
	cross join Subjects as sb
	) as a
	left join Examinations as e on a.student_id = e.student_id
	where a.subject_name = e.subject_name or e.subject_name is null
	group by a.student_name
	having count(a.subject_name) < 3



--
select *
from Students1 as s
cross join Examinations as e
where s.student_id = e.student_id 


-- 
select distinct a.student_name, a.subject_name

from
	(
	select *
	from Students1 as st
	cross join Subjects as sb
	) as a
	left join Examinations as e on a.student_id = e.student_id
	
	group by e.student_id, e.subject_name, a.subject_name, a.student_name