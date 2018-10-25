-- Adding data to Location_ table
exec add_location 
@ld = 'wgt001',
@s1 = '13-44 26ave',
@cty = 'Wingston',
@st = 'NC',
@zip ='70984',
@ot = '8:00',
@ct = '22:00',
@d = '01356'
exec add_location @ld ='ls001',@s1 ='30-18 1ave',@s2 ='30-16 1ave',@cty ='Lawson',@st ='VH',@zip ='73340',@ot ='9:00',@ct ='23:30',@d ='0123456',@c ='Includewarehouse'
go
select * from Location_
go
-- Adding data to Items table
insert into Items (Item_name,Original_price,Product_life)
values ('Roon',1.79,'1y')
exec add_Items 'Bax', 2.00, '1y3m'
exec add_Items 'Zaan', 1.25, '1y8m'
exec add_Items 'Derex', 1.50, '1y'
exec add_Items 'Kbar', 2.15, '2y'
exec add_Items 'Jix', 2.75, '1y5m'
exec add_Items 'Wanp', 2.25, '1y'
exec add_Items 'Sopex', 1.00, '1y2m'
exec add_Items 'Foxy', 1.90, '1y9m'
exec add_Items 'Supex', 2.25, '1y6m'
exec add_Items 'Loonar', 1.46, '1y9m'
exec add_Items 'Rolx', 1.05, '1y5m'
exec add_Items 'Raxer', 1.34, '2y4m'
exec add_Items 'K1', 1.64, '1y9m'
exec add_Items 'Xanfer', 2.56, '2y'
exec add_Items 'ZKT' ,2.14 ,'2y3m'
exec add_Items 'QP' ,1.76, '1y1m'
exec add_Items 'X01' ,2.57, '2y9m'
exec add_Items 'TGF' ,1.74, '2y7m'
exec add_Items 'Xop' ,2.56 ,'1y11m'
go
select * from Items
go
-- Adding data to Location_items table
insert into Location_items(LocationID,ItemID,Item_price)
values (1,5,2.00)
exec add_location_items 2,2,1.90
exec add_location_items 1,10,2.25
exec add_location_items 2,3,1.15
exec add_location_items 1,7,2.25
exec add_location_items 1,1,1.79
exec add_location_items 2,1,1.50
exec add_location_items 1,4,1.25
exec add_location_items 2,4,1.35
exec add_location_items 1,6,2.70
exec add_location_items 2,6,2.50
exec add_location_items 1,8,1.00
exec add_location_items 2,8,1.00
exec add_location_items 1,9,1.75
exec add_location_items 2,9,1.80
exec add_location_items 2,11,1.42
exec add_location_items 2,12,0.87
exec add_location_items 1,13,1.08
exec add_location_items 2,13,1.34
exec add_location_items 1,14,1.4
exec add_location_items 2,15,2.05
exec add_location_items 1,16,1.89
exec add_location_items 1,17,1.76
exec add_location_items 2,17,1.76
exec add_location_items 1,18,2.22
exec add_location_items 1,19,1.59
exec add_location_items 2,19,1.59
exec add_location_items 1,20,2.56
exec add_location_items 2,20,2.44
go
select * from Location_items
go
-- Adding data to Sales table
insert into Sales(Sales_date,payment_type,LocationID ) values ('9/2/2000','Cash',1)
insert into Sales(payment_type,LocationID ) values ('Cash',2)  
exec add_Sales	'5/29/2013'	,'Debit', 1
exec add_Sales	'12/22/2005'	,'Debit'	,1
exec add_Sales	'7/8/2009'	,'Cash'	,2
exec add_Sales	'12/7/2012'	,'Debit'	,1
exec add_Sales	'4/8/2014'	,'Debit'	,1
exec add_Sales	'6/12/2006'	,'Debit'	,1
exec add_Sales	'10/17/2002'	,'Cash'	,1
exec add_Sales	'11/27/2011'	,'Debit'	,1
exec add_Sales	'8/27/2011'	,'Debit'	,2
exec add_Sales	'4/18/2016'	,'Credit'	,1
exec add_Sales	'11/25/2009'	,'Debit'	,1
exec add_Sales	'2/14/2002'	,'Cash'	,1
exec add_Sales	'9/17/2016'	,'Debit'	,1
exec add_Sales	'7/10/2004'	,'Cash'	,1
exec add_Sales	'4/9/2009'	,'Credit'	,2
exec add_Sales	'3/1/2017'	,'Credit'	,2
exec add_Sales	'10/9/2003'	,'Cash'	,2
exec add_Sales	'8/12/2001'	,'Debit'	,1
exec add_Sales	'4/15/2018'	,'Credit'	,1
exec add_Sales	'12/8/2007'	,'Cash'	,1
exec add_Sales	'2/21/2001'	,'Cash'	,1
exec add_Sales	'8/22/2017'	,'Cash'	,2
exec add_Sales	'5/28/2015'	,'Credit'	,2
exec add_Sales	'1/25/2010'	,'Cash'	,1
exec add_Sales	'7/4/2002'	,'Cash'	,2
exec add_Sales	'11/22/2011'	,'Credit'	,2
exec add_Sales	'3/25/2003'	,'Debit'	,1
exec add_Sales	'2/11/2007'	,'Cash'	,1
exec add_Sales	'10/15/2008'	,'Cash'	,2
exec add_Sales	'6/1/2010'	,'Debit'	,2
exec add_Sales	'7/22/2016'	,'Credit'	,2
exec add_Sales	'7/16/2000'	,'Debit'	,1
exec add_Sales	'8/16/2009'	,'Cash'	,2
exec add_Sales	'9/14/2010'	,'Cash'	,1
exec add_Sales	'3/4/2007'	,'Debit'	,1
exec add_Sales	'7/28/2007'	,'Debit'	,2
exec add_Sales	'7/9/2012'	,'Credit'	,1
exec add_Sales	'12/4/2014'	,'Debit'	,2
exec add_Sales	'6/17/2000'	,'Debit'	,2
exec add_Sales	'4/4/2012'	,'Debit'	,2
exec add_Sales	'6/8/2018'	,'Debit'	,2
exec add_Sales	'10/10/2000'	,'Debit'	,1
exec add_Sales	'5/18/2014'	,'Cash'	,2
exec add_Sales	'3/23/2016'	,'Debit'	,1
exec add_Sales	'2/27/2005'	,'Cash'	,1
exec add_Sales	'4/12/2017'	,'Cash'	,1
exec add_Sales	'4/16/2006'	,'Credit'	,2
exec add_Sales	'6/19/2011'	,'Debit'	,1
exec add_Sales	'2/1/2001'	,'Cash'	,2
exec add_Sales	'12/31/2004'	,'Debit'	,1
go
select * from Sales
go
-- Adding data to Sale_detail table
insert into Sale_detail(Sale_quantity,SalesID,Item_sold_price,ItemID) values (14,1,2.22,18)
insert into Sale_detail(Sale_quantity,SalesID,Item_sold_price,ItemID) values (14,2,1,8)
exec add_Sale_detail	2	,1	,1.43	,17
exec add_Sale_detail	1	,1	,1.18	,7
exec add_Sale_detail	1	,1	,2.25	,10
exec add_Sale_detail	2	,1	,1.08	,13
exec add_Sale_detail	2	,1	,1.75	,9
exec add_Sale_detail	2	,1	,0.77	,14
exec add_Sale_detail	3	,1	,1.32	,5
exec add_Sale_detail	1	,1	,1.46	,6
exec add_Sale_detail	2	,1	,1.47	,16
exec add_Sale_detail	2	,1	,1.59	,19
exec add_Sale_detail	5	,1	,1	,8
exec add_Sale_detail	1	,1	,1.14	,4
exec add_Sale_detail	4	,2	,1.9	,2
exec add_Sale_detail	5	,2	,1.42	,11
exec add_Sale_detail	3	,3	,0.94	,13
exec add_Sale_detail	2	,3	,1.25	,4
exec add_Sale_detail	5	,3	,2.22	,18
exec add_Sale_detail	1	,3	,1.16	,19
exec add_Sale_detail	1	,3	,0.57	,8
exec add_Sale_detail	1	,3	,1.96	,7
exec add_Sale_detail	2	,3	,1.4	,14
exec add_Sale_detail	1	,3	,1.75	,9
exec add_Sale_detail	1	,3	,1.06	,17
exec add_Sale_detail	1	,3	,2.56	,20
exec add_Sale_detail	1	,3	,1.79	,5
exec add_Sale_detail	19	,3	,1.79	,1
exec add_Sale_detail	11	,4	,1.75	,9
exec add_Sale_detail	1	,4	,2.22	,18
exec add_Sale_detail	1	,4	,1.08	,13
exec add_Sale_detail	4	,4	,2.56	,20
exec add_Sale_detail	1	,4	,0.81	,4
exec add_Sale_detail	1	,4	,0.68	,8
exec add_Sale_detail	5	,4	,0.93	,19
exec add_Sale_detail	11	,4	,2.25	,10
exec add_Sale_detail	5	,4	,1.76	,6
exec add_Sale_detail	4	,4	,2.17	,7
exec add_Sale_detail	1	,4	,0.97	,17
exec add_Sale_detail	5	,4	,1.14	,14
exec add_Sale_detail	1	,5	,2.44	,20
exec add_Sale_detail	4	,5	,1.34	,13
exec add_Sale_detail	1	,5	,1.15	,3
exec add_Sale_detail	3	,5	,1.25	,1
exec add_Sale_detail	1	,5	,1.42	,11
exec add_Sale_detail	1	,5	,0.51	,12
exec add_Sale_detail	1	,5	,1.44	,15
exec add_Sale_detail	2	,5	,2.26	,6
exec add_Sale_detail	3	,6	,1.27	,14
exec add_Sale_detail	4	,6	,2.25	,10
exec add_Sale_detail	4	,6	,2.39	,20
exec add_Sale_detail	4	,6	,1.18	,9
exec add_Sale_detail	3	,6	,2.22	,18
exec add_Sale_detail	4	,6	,1.72	,6
exec add_Sale_detail	4	,6	,1.33	,17
exec add_Sale_detail	5	,6	,1	,8
exec add_Sale_detail	1	,6	,1.59	,19
exec add_Sale_detail	1	,6	,1.03	,4
exec add_Sale_detail	1	,7	,1.87	,7
exec add_Sale_detail	2	,7	,1.01	,16
exec add_Sale_detail	3	,7	,2.22	,18
exec add_Sale_detail	5	,7	,1.79	,1
exec add_Sale_detail	4	,8	,1.08	,13
exec add_Sale_detail	4	,8	,2.04	,7
exec add_Sale_detail	1	,9	,1	,8
exec add_Sale_detail	3	,9	,2.16	,18
exec add_Sale_detail	5	,9	,1.76	,7
exec add_Sale_detail	3	,9	,0.85	,4
exec add_Sale_detail	2	,10	,0.85	,8
exec add_Sale_detail	1	,10	,1.79	,1
exec add_Sale_detail	4	,10	,1.59	,19
exec add_Sale_detail	1	,10	,2.25	,10
exec add_Sale_detail	3	,10	,0.93	,17
exec add_Sale_detail	1	,10	,1.42	,18
exec add_Sale_detail	4	,10	,2.56	,20
exec add_Sale_detail	2	,10	,1.61	,7
exec add_Sale_detail	2	,10	,2	,5
exec add_Sale_detail	1	,10	,2.57	,6
exec add_Sale_detail	4	,10	,1.65	,16
exec add_Sale_detail	4	,10	,1.75	,9
exec add_Sale_detail	2	,10	,1.08	,13
exec add_Sale_detail	2	,10	,0.97	,4
exec add_Sale_detail	1	,10	,0.83	,14
exec add_Sale_detail	1	,11	,1.15	,3
exec add_Sale_detail	1	,11	,2.5	,6
exec add_Sale_detail	5	,11	,1.59	,19
exec add_Sale_detail	2	,11	,1.2	,1
exec add_Sale_detail	4	,11	,1.34	,13
exec add_Sale_detail	2	,11	,1.76	,17
exec add_Sale_detail	2	,11	,1.04	,2
exec add_Sale_detail	1	,11	,2.44	,20
exec add_Sale_detail	5	,11	,1.2	,15
exec add_Sale_detail	1	,11	,1.26	,4
exec add_Sale_detail	1	,11	,1.36	,11
exec add_Sale_detail	4	,11	,0.74	,8
exec add_Sale_detail	1	,11	,1.1	,9
exec add_Sale_detail	1	,11	,0.77	,12
exec add_Sale_detail	1	,12	,1.08	,13
exec add_Sale_detail	1	,12	,2.18	,10
exec add_Sale_detail	1	,12	,2.25	,7
exec add_Sale_detail	3	,12	,2.7	,6
exec add_Sale_detail	2	,12	,1.28	,16
exec add_Sale_detail	5	,12	,0.94	,17
exec add_Sale_detail	3	,12	,1.4	,14
exec add_Sale_detail	1	,12	,2	,5
exec add_Sale_detail	1	,12	,1.05	,19
exec add_Sale_detail	4	,12	,2.53	,20
exec add_Sale_detail	1	,13	,1.76	,17
exec add_Sale_detail	4	,13	,1.08	,13
exec add_Sale_detail	1	,13	,1.59	,19
exec add_Sale_detail	3	,13	,1.72	,1
exec add_Sale_detail	5	,13	,1.4	,14
exec add_Sale_detail	6	,13	,2.56	,20
exec add_Sale_detail	1	,13	,1	,8
exec add_Sale_detail	6	,13	,1.04	,4
exec add_Sale_detail	1	,13	,1.47	,9
exec add_Sale_detail	4	,13	,2	,5
exec add_Sale_detail	4	,13	,2.22	,18
exec add_Sale_detail	1	,13	,2.25	,7
exec add_Sale_detail	1	,14	,1.57	,18
exec add_Sale_detail	1	,14	,1.74	,20
exec add_Sale_detail	5	,14	,2.7	,6
exec add_Sale_detail	1	,14	,2.25	,7
exec add_Sale_detail	1	,14	,1.59	,19
exec add_Sale_detail	1	,14	,0.77	,13
exec add_Sale_detail	2	,14	,1.75	,9
exec add_Sale_detail	1	,14	,1.89	,16
exec add_Sale_detail	5	,15	,1.73	,18
exec add_Sale_detail	1	,15	,1.89	,16
exec add_Sale_detail	1	,16	,0.67	,13
exec add_Sale_detail	5	,17	,1.9	,2
exec add_Sale_detail	5	,17	,0.69	,8
exec add_Sale_detail	1	,18	,2.05	,15
exec add_Sale_detail	3	,18	,1.76	,17
exec add_Sale_detail	5	,18	,0.74	,12
exec add_Sale_detail	5	,18	,1.08	,9
exec add_Sale_detail	1	,18	,1.24	,13
exec add_Sale_detail	5	,18	,1.42	,11
exec add_Sale_detail	4	,18	,1.35	,4
exec add_Sale_detail	1	,18	,2.5	,6
exec add_Sale_detail	5	,18	,1.5	,1
exec add_Sale_detail	4	,19	,0.85	,13
exec add_Sale_detail	4	,19	,1.14	,17
exec add_Sale_detail	2	,19	,2.43	,20
exec add_Sale_detail	2	,19	,1.33	,19
exec add_Sale_detail	2	,19	,1.37	,11
exec add_Sale_detail	5	,19	,1.81	,15
exec add_Sale_detail	2	,19	,1.63	,6
exec add_Sale_detail	1	,20	,1.79	,1
exec add_Sale_detail	5	,21	,1.89	,16
exec add_Sale_detail	19	,21	,2	,5
exec add_Sale_detail	2	,21	,2.15	,20
exec add_Sale_detail	19	,21	,1.27	,14
exec add_Sale_detail	19	,21	,1.56	,17
exec add_Sale_detail	19	,21	,1.08	,13
exec add_Sale_detail	4	,21	,1.79	,1
exec add_Sale_detail	3	,21	,0.82	,4
exec add_Sale_detail	19	,21	,2.7	,6
exec add_Sale_detail	4	,21	,1.59	,19
exec add_Sale_detail	3	,21	,0.57	,8
exec add_Sale_detail	4	,21	,2.22	,18
exec add_Sale_detail	19	,21	,2.25	,7
exec add_Sale_detail	2	,21	,1.85	,10
exec add_Sale_detail	1	,22	,1.05	,1
exec add_Sale_detail	1	,22	,1.11	,19
exec add_Sale_detail	2	,22	,1.6	,17
exec add_Sale_detail	11	,23	,1.89	,16
exec add_Sale_detail	1	,23	,1.65	,6
exec add_Sale_detail	3	,24	,1.8	,9
exec add_Sale_detail	1	,25	,2.05	,15
exec add_Sale_detail	7	,25	,2.44	,20
exec add_Sale_detail	4	,25	,1.34	,13
exec add_Sale_detail	4	,25	,1.06	,2
exec add_Sale_detail	1	,25	,1.17	,4
exec add_Sale_detail	1	,25	,1.41	,1
exec add_Sale_detail	1	,25	,1.8	,9
exec add_Sale_detail	7	,25	,0.96	,19
exec add_Sale_detail	2	,25	,1.68	,17
exec add_Sale_detail	1	,25	,1.54	,6
exec add_Sale_detail	1	,25	,0.76	,3
exec add_Sale_detail	2	,26	,1.03	,4
exec add_Sale_detail	1	,26	,2.25	,7
exec add_Sale_detail	1	,27	,1.59	,19
exec add_Sale_detail	2	,28	,1.15	,3
exec add_Sale_detail	1	,28	,1.56	,19
exec add_Sale_detail	5	,28	,2.5	,6
exec add_Sale_detail	1	,28	,1.8	,9
exec add_Sale_detail	1	,28	,0.78	,8
exec add_Sale_detail	1	,28	,0.86	,12
exec add_Sale_detail	3	,28	,1.2	,4
exec add_Sale_detail	1	,28	,0.91	,17
exec add_Sale_detail	16	,28	,1.19	,2
exec add_Sale_detail	1	,28	,1.17	,13
exec add_Sale_detail	4	,28	,1.42	,11
exec add_Sale_detail	16	,28	,1.13	,1
exec add_Sale_detail	1	,28	,2.44	,20
exec add_Sale_detail	4	,28	,2.05	,15
exec add_Sale_detail	1	,29	,2.22	,18
exec add_Sale_detail	5	,29	,1.06	,17
exec add_Sale_detail	4	,29	,2.56	,20
exec add_Sale_detail	1	,30	,1.76	,17
exec add_Sale_detail	1	,30	,2.56	,20
exec add_Sale_detail	4	,30	,1.4	,14
exec add_Sale_detail	5	,30	,2.25	,10
exec add_Sale_detail	4	,30	,1.75	,9
exec add_Sale_detail	4	,30	,1.89	,16
exec add_Sale_detail	3	,31	,1.38	,19
exec add_Sale_detail	2	,31	,1.34	,13
exec add_Sale_detail	3	,31	,2.05	,15
exec add_Sale_detail	3	,31	,1.42	,11
exec add_Sale_detail	3	,31	,2.5	,6
exec add_Sale_detail	2	,31	,0.74	,4
exec add_Sale_detail	5	,31	,1.76	,17
exec add_Sale_detail	5	,31	,1.33	,1
exec add_Sale_detail	1	,31	,1.16	,9
exec add_Sale_detail	2	,31	,0.7	,12
exec add_Sale_detail	14	,31	,0.69	,3
exec add_Sale_detail	3	,31	,1.9	,2
exec add_Sale_detail	1	,31	,2.28	,20
exec add_Sale_detail	1	,32	,1.34	,13
exec add_Sale_detail	18	,32	,1.5	,1
exec add_Sale_detail	4	,32	,1	,8
exec add_Sale_detail	3	,32	,0.55	,12
exec add_Sale_detail	4	,32	,2.5	,6
exec add_Sale_detail	4	,33	,0.91	,3
exec add_Sale_detail	3	,33	,1.48	,9
exec add_Sale_detail	2	,33	,2.05	,15
exec add_Sale_detail	1	,33	,1.33	,19
exec add_Sale_detail	1	,34	,1.8	,5
exec add_Sale_detail	1	,35	,1.9	,2
exec add_Sale_detail	10	,35	,2.05	,15
exec add_Sale_detail	1	,35	,1.29	,6
exec add_Sale_detail	4	,35	,1	,8
exec add_Sale_detail	1	,35	,1.8	,9
exec add_Sale_detail	4	,36	,1.42	,10
exec add_Sale_detail	1	,36	,0.9	,9
exec add_Sale_detail	3	,36	,1.79	,1
exec add_Sale_detail	5	,36	,1.58	,17
exec add_Sale_detail	6	,36	,0.98	,4
exec add_Sale_detail	1	,37	,1.75	,9
exec add_Sale_detail	1	,37	,2.7	,6
exec add_Sale_detail	5	,37	,1.95	,10
exec add_Sale_detail	1	,37	,1.19	,16
exec add_Sale_detail	4	,37	,1.76	,17
exec add_Sale_detail	4	,37	,1.25	,4
exec add_Sale_detail	2	,37	,2.22	,18
exec add_Sale_detail	1	,37	,1.4	,14
exec add_Sale_detail	1	,37	,1.79	,1
exec add_Sale_detail	3	,38	,1.11	,1
exec add_Sale_detail	1	,38	,1.3	,9
exec add_Sale_detail	2	,38	,1	,8
exec add_Sale_detail	5	,38	,1.76	,17
exec add_Sale_detail	11	,38	,0.87	,12
exec add_Sale_detail	11	,38	,1.34	,13
exec add_Sale_detail	4	,38	,2.05	,15
exec add_Sale_detail	4	,38	,1.83	,20
exec add_Sale_detail	3	,39	,1.97	,10
exec add_Sale_detail	2	,39	,0.64	,8
exec add_Sale_detail	1	,39	,1.75	,9
exec add_Sale_detail	10	,39	,1.5	,5
exec add_Sale_detail	2	,39	,1.77	,1
exec add_Sale_detail	4	,39	,1.99	,18
exec add_Sale_detail	1	,39	,1.76	,17
exec add_Sale_detail	4	,39	,1.08	,13
exec add_Sale_detail	10	,39	,1.75	,6
exec add_Sale_detail	1	,40	,1	,8
exec add_Sale_detail	4	,40	,1.15	,3
exec add_Sale_detail	3	,40	,1.25	,13
exec add_Sale_detail	3	,40	,0.84	,11
exec add_Sale_detail	1	,40	,1.05	,2
exec add_Sale_detail	1	,40	,2.44	,20
exec add_Sale_detail	3	,40	,1.87	,6
exec add_Sale_detail	4	,40	,1.6	,17
exec add_Sale_detail	4	,40	,2.05	,15
exec add_Sale_detail	1	,40	,1.8	,9
exec add_Sale_detail	3	,40	,1.59	,19
exec add_Sale_detail	4	,40	,0.8	,12
exec add_Sale_detail	2	,40	,1.5	,1
exec add_Sale_detail	1	,40	,1.03	,4
exec add_Sale_detail	1	,41	,0.95	,11
exec add_Sale_detail	1	,42	,1.76	,17
exec add_Sale_detail	1	,42	,0.73	,4
exec add_Sale_detail	4	,42	,1.42	,11
exec add_Sale_detail	1	,42	,1.34	,13
exec add_Sale_detail	5	,42	,0.85	,8
exec add_Sale_detail	1	,42	,1.75	,20
exec add_Sale_detail	1	,42	,1.59	,19
exec add_Sale_detail	1	,42	,1.71	,6
exec add_Sale_detail	4	,42	,2.05	,15
exec add_Sale_detail	1	,42	,0.65	,3
exec add_Sale_detail	4	,42	,1.62	,9
exec add_Sale_detail	5	,42	,0.74	,12
exec add_Sale_detail	3	,42	,1.14	,1
exec add_Sale_detail	1	,42	,1.9	,2
exec add_Sale_detail	1	,43	,1.29	,17
exec add_Sale_detail	2	,43	,1.08	,4
exec add_Sale_detail	4	,43	,1.8	,9
exec add_Sale_detail	1	,43	,0.83	,12
exec add_Sale_detail	1	,43	,1.45	,19
exec add_Sale_detail	1	,43	,2.33	,6
exec add_Sale_detail	13	,43	,1.44	,1
exec add_Sale_detail	3	,43	,1.31	,2
exec add_Sale_detail	13	,43	,1.42	,11
exec add_Sale_detail	1	,43	,1.29	,13
exec add_Sale_detail	1	,43	,1	,8
exec add_Sale_detail	3	,43	,1.36	,15
exec add_Sale_detail	1	,44	,1.27	,19
exec add_Sale_detail	1	,44	,1.01	,4
exec add_Sale_detail	3	,44	,2.25	,10
exec add_Sale_detail	3	,44	,1.74	,20
exec add_Sale_detail	3	,44	,1.65	,1
exec add_Sale_detail	3	,44	,1.89	,16
exec add_Sale_detail	1	,44	,2.13	,7
exec add_Sale_detail	2	,44	,1.24	,5
exec add_Sale_detail	1	,45	,1	,8
exec add_Sale_detail	1	,45	,1.5	,1
exec add_Sale_detail	1	,45	,2.5	,6
exec add_Sale_detail	1	,45	,1.35	,4
exec add_Sale_detail	3	,45	,1.75	,17
exec add_Sale_detail	1	,45	,1.42	,11
exec add_Sale_detail	1	,45	,1.5	,2
exec add_Sale_detail	12	,45	,2.14	,20
exec add_Sale_detail	1	,46	,1.62	,6
exec add_Sale_detail	1	,46	,1.56	,5
exec add_Sale_detail	1	,46	,1.34	,20
exec add_Sale_detail	2	,47	,2.25	,10
exec add_Sale_detail	3	,47	,0.86	,8
exec add_Sale_detail	4	,47	,1.59	,20
exec add_Sale_detail	2	,47	,2.21	,6
exec add_Sale_detail	1	,47	,1.25	,4
exec add_Sale_detail	4	,47	,0.92	,13
exec add_Sale_detail	2	,47	,1.02	,14
exec add_Sale_detail	1	,47	,2.22	,18
exec add_Sale_detail	6	,47	,2	,5
exec add_Sale_detail	4	,47	,1.04	,19
exec add_Sale_detail	3	,47	,1.17	,1
exec add_Sale_detail	2	,47	,1.7	,9
exec add_Sale_detail	3	,47	,1.89	,16
exec add_Sale_detail	1	,47	,1.76	,17
exec add_Sale_detail	6	,47	,2.2	,7
exec add_Sale_detail	1	,48	,1.75	,9
exec add_Sale_detail	1	,48	,2.22	,18
exec add_Sale_detail	1	,49	,1.14	,17
exec add_Sale_detail	1	,49	,0.87	,12
exec add_Sale_detail	5	,49	,1.35	,4
exec add_Sale_detail	4	,49	,1.26	,9
exec add_Sale_detail	2	,49	,2.44	,20
exec add_Sale_detail	5	,49	,0.75	,13
exec add_Sale_detail	1	,49	,1.9	,2
exec add_Sale_detail	2	,49	,1.59	,19
exec add_Sale_detail	1	,49	,1.15	,3
exec add_Sale_detail	2	,49	,1.3	,6
exec add_Sale_detail	1	,50	,1.87	,20
exec add_Sale_detail	5	,50	,1.24	,17
exec add_Sale_detail	1	,51	,1.59	,19
exec add_Sale_detail	4	,52	,1.29	,17
go
select * from Sale_detail  
go
-- Adding data to Sales_history table
insert into Sales_history(Sales_date,Payment_method,Quantity,ItemID,Total_sale,LocationID) values ('9/2/2000','Cash',5,5,10.88,2)
insert into Sales_history(Sales_date,Payment_method,Quantity,ItemID,Total_sale,LocationID) values ('9/10/2009','Credit',1,10,2.45,1)
exec add_Sales_history   '9/23/2013 21:56'	,'Cash'  	,10	,17	,12.82	,2
exec add_Sales_history   '7/30/2012 16:13'	,'Credit'	,18	,19	,23.47	,2
exec add_Sales_history   '2/26/2009 16:39'	,'Cash'  	,2	,4	,1.1	,2
exec add_Sales_history   '12/14/2013 14:44'	,'Cash'  	,12	,4	,15.75	,1
exec add_Sales_history   '7/9/2006 14:46'	,'Credit'	,18	,3	,10.07	,2
exec add_Sales_history   '2/4/2009 13:52'	,'Debit' 	,20	,4	,19.85	,1
exec add_Sales_history   '8/7/2001 18:54'	,'Debit' 	,18	,17	,29.56	,1
exec add_Sales_history   '3/29/2004 10:12'	,'Debit' 	,8	,17	,6.99	,1
exec add_Sales_history   '1/22/2000 10:48'	,'Cash'  	,4	,12	,8.25	,2
exec add_Sales_history   '9/23/2009 13:30'	,'Credit'	,6	,9	,4.63	,1
exec add_Sales_history   '6/24/2016 13:45'	,'Credit'	,12	,9	,11.3	,1
exec add_Sales_history   '11/10/2015 15:29'	,'Credit'	,15	,7	,14.59	,1
exec add_Sales_history   '3/8/2012 14:4'	,'Credit'	,19	,20	,20.19	,1
exec add_Sales_history   '2/23/2007 10:38'	,'Credit'	,6	,17	,4.13	,2
exec add_Sales_history   '6/10/2008 18:48'	,'Cash'  	,10	,6	,9.21	,2
exec add_Sales_history   '1/2/2009 12:33'	,'Credit'	,15	,15	,11.38	,2
exec add_Sales_history   '3/26/2018 22:20'	,'Credit'	,9	,5	,9.28	,1
exec add_Sales_history   '10/9/2007 21:16'	,'Debit' 	,20	,13	,20.36	,2
exec add_Sales_history   '4/30/2017 11:36'	,'Debit' 	,8	,13	,14.23	,2
exec add_Sales_history   '11/4/2003 11:39'	,'Cash'  	,3	,1	,3.44	,2
exec add_Sales_history   '5/25/2003 23:23'	,'Credit'	,1	,5	,1	,1
exec add_Sales_history   '6/17/2004 11:59'	,'Cash'  	,5	,11	,10.71	,2
exec add_Sales_history   '8/11/2004 11:33'	,'Credit'	,10	,13	,19.49	,2
exec add_Sales_history   '6/4/2004 16:9'	,'Credit'	,9	,13	,9.67	,1
exec add_Sales_history   '1/2/2000 12:35'	,'Debit' 	,6	,11	,9.77	,2
exec add_Sales_history   '12/11/2007 19:14'	,'Debit' 	,13	,9	,22.96	,1
exec add_Sales_history   '5/18/2002 20:14'	,'Credit'	,8	,4	,5.18	,2
exec add_Sales_history   '2/7/2015 11:2'	,'Cash'  	,4	,13	,3.35	,2
exec add_Sales_history   '10/31/2010 13:39'	,'Credit'	,13	,9	,14.21	,1
exec add_Sales_history   '1/13/2006 17:21'	,'Credit'	,16	,4	,21.11	,2
exec add_Sales_history   '4/10/2004 13:50'	,'Cash'  	,18	,20	,22.64	,1
exec add_Sales_history   '10/13/2003 12:40'	,'Debit' 	,20	,4	,21.3	,1
exec add_Sales_history   '4/9/2002 18:19'	,'Credit'	,10	,12	,21.62	,2
exec add_Sales_history   '1/4/2000 19:38'	,'Debit' 	,8	,4	,15.81	,1
exec add_Sales_history   '7/25/2000 17:53'	,'Credit'	,7	,3	,10.42	,2
exec add_Sales_history   '4/7/2006 16:11'	,'Credit'	,13	,16	,7.48	,1
exec add_Sales_history   '11/17/2017 17:11'	,'Cash'  	,17	,13	,16.29	,2
exec add_Sales_history   '8/29/2010 20:48'	,'Credit'	,4	,5	,3.44	,1
exec add_Sales_history   '3/26/2010 15:21'	,'Cash'  	,9	,8	,17.28	,1
exec add_Sales_history   '9/19/2015 18:12'	,'Debit' 	,15	,5	,12.03	,1
exec add_Sales_history   '2/15/2018 10:49'	,'Credit'	,18	,6	,15.37	,2
exec add_Sales_history   '5/12/2004 14:18'	,'Cash'  	,18	,20	,31.44	,2
exec add_Sales_history   '3/10/2008 10:3'	,'Cash'  	,17	,11	,17.18	,2
exec add_Sales_history   '9/6/2011 19:10'	,'Credit'	,15	,9	,16.48	,1
exec add_Sales_history   '10/17/2003 16:56'	,'Cash'  	,5	,13	,6.8	,1
exec add_Sales_history   '5/13/2003 9:17'	,'Cash'  	,14	,20	,12.24	,1
exec add_Sales_history   '9/26/2018 15:48'	,'Cash'  	,2	,11	,1.46	,2
exec add_Sales_history   '9/15/2000 23:44'	,'Credit'	,4	,18	,4.08	,1
exec add_Sales_history   '11/26/2000 16:51'	,'Credit'	,20	,13	,29.66	,2
exec add_Sales_history   '8/19/2009 18:52'	,'Debit' 	,2	,2	,3.05	,2
go
select * from Sales_history
go