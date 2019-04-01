# This project is intended to create a small database for a hypothetical company to help keep track of the sales, store locations, and product details. It can also help answer some data questions by doing some queries.
## The Data Problem:
Design a sales database for Top Choko, a chocolate company with a multiple food trucks and two retail stores. Previously, Top Choko kept their data in multiple Excel workbooks. Recently, they decided to expand their product offerings at different price points, and they realized they needed a more robust database to track sales. 
*	Each Item can be sold several times with different price point.
*	Each sale Item information must be moved to sales archive table to keep track of history sales data.
*	In addition to Common Sales Items across all Locations, some Locations sell certain location-specific items.
*	Each Sale Location may sell Zero or many of an Item.
*	Item price might be different at various locations.
*	If an Item’s product life is finished, we should remove all related transaction from Sale Detail table but archive it in Sales History for future reporting.
*	Sales information have only 6-month lifetime in tentative Sales table, after that they must be moved to sales history table for further queries in future.
*	Item can be sold at least in one location

## Top Choko would like this database to be able to answer questions such as the following:
*	Which location has the highest/lowest sales?
*	Which item has the highest/lowest sale quantities?
*	Which item has the highest/lowest sales?
*	At what locations is each item is sold?
*	What are the items prices at different locations?
*	How many items have been sold at each location?
*	Which item has the highest or lowest price at a location?
*	What is the total order quantity and total price of an item sold at any location?
…

