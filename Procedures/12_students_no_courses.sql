delimiter $$
create procedure students_no_courses()
begin
select s.rollno, s.name, sum(m.marks) as total_marks from student s
join marks m on s.rollno = m.rollno
group by s.rollno, s.name
order by total_marks desc limit 1;
end$$
delimiter ;