--This view link Sales_history table with Location_ table & look at total sales by location
create or alter view history_filter
as
select Location_.LocationID,SUM(Total_sale) as 'Total sales' from Location_
right join Sales_history on Sales_history.LocationID = Location_.LocationID
group by Location_.LocationID
go
--This view link view_Sales_info view with Location_ table & look at total sales by location
create or alter view sales_filter
as
select Location_.LocationID,SUM(Sale_quantity*Item_sold_price) as 'Total sales' from Location_
right join view_Sales_info on view_Sales_info.LocationID = Location_.LocationID
group by Location_.LocationID
go
--After these 2 views are created, I can link the 2 views together to look at over all sales by location
select history_filter.LocationID,history_filter.[Total sales]+sales_filter.[Total sales] as 'Total sales' from history_filter
full outer join sales_filter on history_filter.LocationID = sales_filter.LocationID
go
--This view links Sales_history table with Items table & look at sale quantities by item
create or alter view history_filter0
as
select Items.ItemID,SUM(Quantity) as 'n' from Items
right join Sales_history on Sales_history.ItemID = Items.ItemID
group by Items.ItemID
go
--This view links Sale_detail table with Items table & look at sale quantities by item
create or alter view sales_filter0
as
select Items.ItemID,SUM(Sale_quantity) as 'n' from Items
right join Sale_detail on Sale_detail.ItemID = Items.ItemID
group by Items.ItemID
go
--After these 2 views are created, I can link the 2 views together to look at over all total sales by item
select history_filter0.ItemID,history_filter0.n+sales_filter0.n as 'Total sale quantities' from history_filter0
full outer join sales_filter0 on history_filter0.ItemID = sales_filter0.ItemID
order by [Total sale quantities]
go
--This view links Sales_history table with Items table & look at total sales by item
create or alter view history_filter1
as
select Items.ItemID,SUM(Total_sale) as 'ts' from Items
right join Sales_history on Sales_history.ItemID = Items.ItemID
group by Items.ItemID
go
--This view links Sale_detail table with Items table & look at total sales by item
create or alter view sales_filter1
as
select Items.ItemID,SUM(Sale_quantity*Item_sold_price) as 'ts' from Items
right join Sale_detail on Sale_detail.ItemID = Items.ItemID
group by Items.ItemID
go
--After these 2 views are created, I can link the 2 views together to look at over all total sales by item
select history_filter1.ItemID,history_filter1.ts+sales_filter1.ts as 'Total sales' from history_filter1
full outer join sales_filter1 on history_filter1.ItemID = sales_filter1.ItemID
order by [Total sales] desc
go
select ItemID,LocationID,Item_price from Location_items order by ItemID,Location_itemsID 
go
--This view links Sales_history table with location table & look at sale quantities by location
create or alter view history_filter2
as
select Location_.LocationID,SUM(Quantity) as 'n' from Location_
right join Sales_history on Sales_history.LocationID = Location_.LocationID
group by Location_.LocationID
go
--This view links view_Sales_info table with location table & look at sale quantities by location
create or alter view sales_filter2
as
select Location_.LocationID,SUM(Sale_quantity) as 'n' from Location_
right join view_Sales_info on view_Sales_info.LocationID = Location_.LocationID
group by Location_.LocationID
go
--After these 2 views are created, I can link the 2 views together to look at over all total sales by location
select history_filter2.LocationID,history_filter2.n+sales_filter2.n as 'Total sale quantities' from history_filter2
full outer join sales_filter2 on history_filter2.LocationID = sales_filter2.LocationID
order by [Total sale quantities]
go
--This view links Sales_history table with location table & look at sale quantities and total sales by location
create or alter view history_filter3
as
select Location_.LocationID,ItemID,SUM(Quantity) as 'n',SUM(Total_sale) as 'ts'  from Location_
right join Sales_history on Sales_history.LocationID = Location_.LocationID
group by Location_.LocationID,ItemID
go
--This view links view_Sales_info view with location table & look at sale quantities and total sales by location
create or alter view sales_filter3
as
select Location_.LocationID,ItemID,SUM(Sale_quantity*Item_sold_price) as 'ts',SUM(Sale_quantity) as 'n'  from Location_
right join view_Sales_info on view_Sales_info.LocationID = Location_.LocationID
group by Location_.LocationID,ItemID
go
--After these 2 views are created, I can link the 2 views together to look at over all sale quantities and total sales by location
select history_filter3.LocationID,sales_filter3.ItemID,history_filter3.n+sales_filter3.n as 'Total sale quantities',history_filter3.ts+sales_filter3.ts as 'Total sales' from history_filter3
full outer join sales_filter3 on history_filter3.LocationID = sales_filter3.LocationID
go