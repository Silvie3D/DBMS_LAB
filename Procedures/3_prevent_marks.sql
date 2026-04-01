delimiter $$
create trigger check_marks_limit
before insert on marks
for each row
begin
if new.marks > 100 then
signal sqlstate '45000'
set message_text = 'Marks cannot be greater than 100';
end if;
end$$
delimiter ;