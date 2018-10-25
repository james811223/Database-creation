-- Items table creation
if not exists (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'Items')
begin
select 'Items table being created...'
create table Items (
ItemID int identity primary key  not null,
Item_name varchar(20) unique not null,
Original_price decimal(5,2) not null,
Product_life varchar(15) not null
)
end
go
-- Location table creation
if not exists (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'Location_')
begin
select 'Location_ table being created...'
create table Location_(
LocationID int identity primary key,
Location_description varchar(100) not null,
Street1 varchar(20) not null,
Street2 varchar(20),
City varchar(10) not null,
State_ varchar(10) not null,
Zipcode varchar(10) not null,
Open_time time not null,
Close_time time not null,
Days_ varchar(7) not null,
Comments varchar(50)
)
end
go
-- Location_items table creation
if not exists (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'Location_items')
begin
select 'Location_items table being created...'
create table Location_items (
Location_itemsID int identity primary key,
LocationID int foreign key references Location_(LocationID) not null,
ItemID int foreign key references Items(ItemID) not null,
Item_price decimal(5,2) not null
)
end
go
-- Sales_history table creation
if not exists (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'Sales_history')
begin
select 'Sales_history table being created...'
create table Sales_history (
Sales_historyID int identity primary key,
Sales_date datetime not null,
Payment_method varchar(10) not null,
Quantity int not null,
ItemID int foreign key references Items(ItemID) not null,
Total_sale decimal(6,2) not null,
LocationID int foreign key references Location_(LocationID) not null
)
end
go
-- Sales table creation
if not exists (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'Sales')
begin
select 'Sales table being created...'
create table Sales (
SalesID int identity primary key,
Sales_date date default getdate(),
Payment_type varchar(10) not null,
LocationID int foreign key references Location_(LocationID) not null
)
end
go
-- Sale_detail table creation
if not exists (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'Sale_detail')
begin
select 'Sale_detail table being created...'
create table Sale_detail (
Sale_detailID int identity primary key,
Sale_quantity int not null,
--Item_sold_date date not null,
SalesID int foreign key references Sales(SalesID) not null,
Item_sold_price decimal(5,2) not null,
ItemID int foreign key references Items(ItemID) not null
)
end
go
