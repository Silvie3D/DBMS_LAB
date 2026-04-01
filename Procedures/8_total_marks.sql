delimiter $$
create procedure total_marks( in rno int)
begin
select sum(marks) from marks where rollno = rno;
end$$
delimiter ;