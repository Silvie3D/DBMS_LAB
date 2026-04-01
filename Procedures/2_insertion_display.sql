delimiter $$
create procedure insert_student( in p_rollno int, in p_name varchar(50), in p_address varchar(100), in p_age int)
begin
insert into student(rollno, name, address, age) values(p_rollno, p_name, p_address, p_age);
select 'New student inserted' as message;
end$$
delimiter ;