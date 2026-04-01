delimiter $$
create procedure course_count()
begin
select rollno, count(courseid) from marks
group by rollno;
end$$
delimiter ;