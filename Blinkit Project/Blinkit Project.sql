use Blinkit

show tables

#Q.7).Write an SQL query to show count of Item_Fat_Content WHERE Item_Fat_Content is Low Fat.
select count(*) from blinkit_table where Item_Fat_Content ="Low Fat";

select count(*) from blinkit_table;


#11.Write an SQL query to show Item_Identifier , Item_Fat_Content ,Item_Type, Item_MRP whose Item_MRP is greater than 200.

select Item_Identifier ,Item_Fat_Content ,Item_Type, Item_MRP from blinkit_table where Item_MRP>200

#12.	Write an SQL query to show maximum Item_MRP WHERE Item_Fat_Content is Low Fat
select max(Item_MRP) from blinkit_table where Item_Fat_Content="Low Fat";
 
#13.	Write an SQL query to show minimum Item_MRP whose Item_Fat_Content is Low Fat
select max(Item_MRP) from blinkit_table where Item_Fat_Content="Low Fat";

#14.Write an SQL query to show ALL DATA WHERE item MRP is BETWEEN 50 to 100
select * from blinkit_table where Item_MRP between 50 and 100

#15.Write an SQL query to show ALL UNIQUE value of Item_Fat_Content
select distinct (Item_Fat_Content) from blinkit_table 

#16.Write an SQL query to show ALL UNIQUE value of  Item_Type 
select distinct item_type from blinkit_table

#17.Write an SQL query to show ALL DATA in descending ORDER by Item MRP
select * from blinkit_table order by Item_MRP desc

#20.Write an SQL query to show DATA of item_type dairy & Meat
select * from blinkit_table where item_type in ("Dairy","Meat");

#24).Write an SQL query to show count of number of items by Item_Type  and order it in descending order
select Item_Type, count(Item_type) from blinkit_table group by item_type order by count(Item_type) desc;

#26).Write an SQL query to show maximum MRP by Item_Type 
select max(Item_MRP),Item_Type from blinkit_table bt group by Item_Type order by Item_Type asc;

#30).Write an SQL query to show minimum MRP by Outlet_Establishment_Year and order it in descending order.
select min(Item_MRP),Outlet_Establishment_Year  from blinkit_table bt group by Outlet_Establishment_Year  order by Outlet_Establishment_Year desc;

#36).Write an SQL query to show maximum Item_Weight by Outlet_Establishment_Year 
select max(item_weight),Outlet_Establishment_Year from blinkit_table bt group by Outlet_Establishment_Year 

#40).Write an SQL query to show minimum Item_Outlet_Sales by Item_Type 
select min(Item_Outlet_Sales),Item_Type  from blinkit_table bt group by Item_Type order by Item_Type asc;

#46).Write an SQL query to show total Item_Outlet_Sales by Item_Type 
select round(sum(Item_Outlet_Sales)),Item_Type from blinkit_table bt group by Item_Type order by sum(Item_Outlet_Sales) desc limit 10;

#50).Write an SQL query to show total Item_Outlet_Sales by Item_Type but only WHERE Outlet_Location_Type is Tier 1 
select Item_Type , round(sum(Item_Outlet_Sales)) Item_sales_Outlet  from blinkit_table where Outlet_Location_Type ="Tier 1"
group by Item_Type 
order by sum(Item_Outlet_Sales) desc 

#51.Write an SQL query to show total Item_Outlet_Sales by Item_Type WHERE Item_Fat_Content is ONLY Low Fat & LF

select Item_Type ,round(sum(Item_Outlet_sales)) as Total_Outlet_Sales_of_Low_Fat_and_LF from blinkit_table
where Item_Fat_Content in ("Low Fat","LF")
group by Item_Type
order by Total_Outlet_Sales_of_Low_Fat_and_LF  desc
