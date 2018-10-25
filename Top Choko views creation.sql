-- View for Sales table + Sale_detail table
--drop view Sales_info
create or alter view view_Sales_info as
select Sales.SalesID,Sales_date,Payment_type,LocationID,Sale_detailID,Sale_quantity,Item_sold_price,ItemID from Sales
full outer join Sale_detail on Sales.SalesID = Sale_detail.SalesID
go
--select * from view_Sales_info
go
--Create a view for Location_items + Items 
--drop view view_items
create or alter view view_items
as
select Items.*,Location_items.Item_price,Location_items.Location_itemsID,Location_items.LocationID
from Location_items
full outer join Items on Location_items.ItemID = Items.ItemID
go
--select * from view_items order by Item_name
go
--Create a view for Location_items + Location_ tables 
--drop view view_Location_details
create or alter view view_Location_details
as
select Location_.*,Location_items.Item_price,Location_items.Location_itemsID,Location_items.ItemID
from Location_items
full outer join Location_ on Location_items.LocationID = Location_.LocationID
go
--select * from view_Location_details order by LocationID,ItemID
