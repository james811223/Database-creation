/* 
Procedure for adding values into Items table
Inputs: @name for Item_name, @op for Original_price, @pl for Product_life
drop proc add_items
*/
create or alter proc add_items @name varchar(20), @op decimal(5,2), @pl varchar(15)
as
begin
insert into Items (Item_name,Original_price,Product_life)
values (@name,@op,@pl)
end
go
/* 
Procedure for adding values into Location_ table
Inputs: @ld for Location_description, @s1 for Street1, @s2 for Street2, @cty for City, @st for State,@zip for Zipcode, @ot for Open_time, @ct for Close_time, @d for Days_, @c for Comments
drop proc add_location
*/
create or alter proc add_location
@ld varchar(100),
@s1 varchar(20),
@s2 varchar(20)=NULL,
@cty varchar(10),
@st varchar(10),
@zip varchar(10),
@ot time,
@ct time,
@d varchar(7),
@c varchar(50)=null
as
begin
insert into Location_ (Location_description,Street1,Street2,City,State_,Zipcode,Open_time,Close_time,Days_,Comments)
values (@ld,@s1,@s2,@cty,@st,@zip,@ot,@ct,@d,@c)
end
go
/* 
Procedure for adding values into Location_items table
Inputs: @lid for LocationID, @iid for ItemID, @ip for Item_price
drop proc add_location_items
*/
create or alter proc add_location_items
@lid int,
@iid int,
@ip decimal(5,2)
as
begin
insert into Location_items(LocationID,ItemID,Item_price)
values (@lid,@iid,@ip)
end
go
/* 
Procedure for adding values into Sales_history table
Inputs: @sd for Sales_date, @pm for Payment_method, @n for Quantity, @iid for ItemID, @ts for Total_sale, @lid for LocationID
drop proc add_Sales_history
*/
create or alter proc add_Sales_history
@sd datetime,
@pm varchar(10),
@n int,
@iid int ,
@ts decimal(6,2),
@lid int
as
begin
insert into Sales_history(Sales_date,Payment_method,Quantity,ItemID,Total_sale,LocationID)
values (@sd,@pm,@n,@iid,@ts,@lid)
end   
go   
/* 
Procedure for adding values into Sales table
Inputs: @sd for Sales_date, @pt for Payment_type, @sl for Sale_location, @lid for LocationID
drop proc add_Sales
*/
create or alter proc add_Sales
@sd date=NULL,
@pt varchar(10),
@lid int
as
begin
if @sd is null
   set @sd=getdate()
insert into Sales(Sales_date,Payment_type,LocationID)
values (@sd,@pt,@lid)
end
go
/* 
Procedure for adding values into Sale_detail table
Inputs: @n for Sale_quantity, @d for Item_sold_date, @sid for SalesID, @p for Item_sold_price, @iid for ItemID
drop proc add_Sale_detail
*/
create or alter proc add_Sale_detail
@n int,
@sid int,
@p decimal(5,2),
@iid int
as
begin
insert into Sale_detail(Sale_quantity,SalesID,Item_sold_price,ItemID)
values (@n,@sid,@p,@iid)
end
go
--Procedure for moving more than 6 months old data from Sales and Sale_detail to Sales_history
--drop proc clean_sales_data
create or alter proc clean_sales_data
@sales_id int = null,
@sd datetime = null,
@pm varchar(10) = null,
@n int = null,
@iid int = null,
@ts decimal(6,2) = null,
@lid int = null,
@did int = null
as
begin
set @sales_id = (select top 1 SalesID from Sales where GETDATE() > DATEADD(month,6,Sales_date))
while exists (select * from Sales where GETDATE() > DATEADD(month,6,Sales_date))
 begin
  while exists (select * from Sale_detail where SalesID = @sales_id)
  begin
  set @did = (select top 1 Sale_detailID from Sale_detail where SalesID = @sales_id)
  set @sd = (select Sales_date from Sales where SalesID = @sales_id)
  set @pm = (select Payment_type from Sales where SalesID = @sales_id)
  set @n = (select top 1 Sale_quantity from Sale_detail where SalesID = @sales_id)
  set @iid = (select top 1 ItemID from Sale_detail where SalesID = @sales_id)
  set @ts = (select top 1 Item_sold_price from Sale_detail where SalesID = @sales_id) 
  set @lid = (select top 1 LocationID from Sales where SalesID = @sales_id) 
  insert into Sales_history(Sales_date,Payment_method,Quantity,ItemID,Total_sale,LocationID)
  values (@sd,@pm,@n,@iid,round(@ts*@n,2),@lid)
  delete from Sale_detail where (Sale_detailID = @did and 1 = 1)
  end
 delete from Sales where (SalesID = @sales_id and 1 = 1)
 set @sales_id = (select top 1 SalesID from Sales where GETDATE() > DATEADD(month,6,Sales_date))
 end
end
select top 5 * from Sales where GETDATE() > DATEADD(month,6,Sales_date)
go
exec clean_sales_data
select * from Sales where (GETDATE() < DATEadd(MONTH,6,Sales_date))
select * from Sales_history
go