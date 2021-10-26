create table students (
id int auto_increment primary key,
first_name varchar(150)
);

-- Foreign keys
create table papers (
title varchar(150),
grade varchar(150),
student_id int,
foreign key(student_id)
references students(id)
on delete cascade
)

-- Problem 4
-- NB:- Alaways use a unique field to group
select first_name , avg(grade) as average from students 
left join papers
on students.id = papers.student_id 
group by students.id
order by average desc;

select first_name , title , grade from students 
inner join papers
on students.id = papers.student_id order by grade desc;



select first_name , title , grade from students 
left join papers
on students.id = papers.student_id;

-- use of ifnull 
select first_name , ifnull(title,'MISSING'), ifnull(grade,0) from students 
left join papers
on students.id = papers.student_id;



select first_name , grade from students 
left join papers
on students.id = papers.student_id group by first_name;


select * from students 
left join papers
on students.id = papers.student_id;


select first_name , ifnull(avg(grade),0) as average from students 
left join papers
on students.id = papers.student_id group by students.id order by average desc;


-- use of case
select first_name , 
ifnull(avg(grade),0) as average ,
case 
when avg(grade) is null then 'failing'
when avg(grade) >= 75 then 'passing'
else 'failling'
end as passing_status
from students 
left join papers
on students.id = papers.student_id group by students.id order by average desc;





