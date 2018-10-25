-- Function for looking up ItemID by inputing item name
-- drop function Look_ItemID
create or alter function Look_ItemID(@name varchar(20))
returns int as
begin
return (select ItemID from Items where Item_name = @name) 
end
go
select dbo.Look_ItemID('Jix') as ItemID
go
-- Function for looking up location business hours by inputing LocationID or location description. Input null for unknowns
--drop function Look_hours
create or alter function Look_hours(@id int,@ld varchar(100))
returns table as
return 
select Open_time,Close_time from Location_ where (LocationID = @id or Location_description = @ld)
go
select * from dbo.Look_hours(1,null)