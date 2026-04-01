delimiter $$
create procedure student_course_marks()
begin
select s.name, c.course_name, m.marks from student s 
join marks m on s.rollno = m.rollno 
join course c on m.courseid = c.courseid;
end$$
delimiter ;