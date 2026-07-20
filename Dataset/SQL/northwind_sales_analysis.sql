SELECT * FROM northwind.northwind_order_details;

SELECT SUM(Unit_Price * Quantity) AS total_revenue
FROM northwind.northwind_order_details;

SELECT AVG(Unit_Price * Quantity) AS avg_order_value
FROM northwind.northwind_order_details;

SELECT 
    MAX(Unit_Price * Quantity) AS highest_sale,
    MIN(Unit_Price * Quantity) AS lowest_sale
FROM northwind.northwind_order_details;

select avg(unit_price)
from northwind.northwind_order_details;

select sum(unit_price)
from northwind.northwind_order_details;

select Min(unit_price)
from northwind.northwind_order_details;

select Max(unit_price)
from northwind.northwind_order_details;

select product_id, Avg(unit_price)
from northwind.northwind_order_details
Group by product_id;

select product_id, sum(unit_price * quantity) as revenue
from northwind.northwind_order_details
Group by Product_id
order by revenue
limit 5;

SELECT 
    o.customer_id,
    SUM(unit_price * quantity) AS total_revenue
FROM northwind.northwind_orders o
JOIN northwind.northwind_order_details od
   ON o.order_id = od.order_id
GROUP BY o.customer_id;

select 
o.customer_id,
 Sum(unit_price * quantity) as revenue
 from northwind.northwind_order_details od 
 join northwind.northwind_orders o
   on od.order_id = o.order_id
 Group by customer_id;
 
 select o.customer_id,
 Sum(unit_price * quantity) AS Total_revenue
 from northwind.northwind_order_details od 
 join northwind.northwind_orders o
     on od.order_id = o.order_id
     Group by Customer_id
     order by total_revenue;
     
     
 select o.customer_id,
 Sum(unit_price * quantity) AS Total_revenue
 from northwind.northwind_order_details od 
 join northwind.northwind_orders o
     on od.order_id = o.order_id
     Group by customer_id
     order by total_revenue desc
     limit 5;
     
select product_id, sum(unit_price * quantity) as revenue
from northwind.northwind_order_details
Group by product_id
order by revenue desc
limit 5;

select product_id,sum(quantity) as quantity
from northwind.northwind_order_details
Group by product_id
order by quantity desc
limit 5;

select product_id,sum(unit_price * quantity) AS total_revenue,sum(quantity) as quantity
from northwind.northwind_order_details
Group by product_id
order by Total_revenue desc
limit 10;

select product_id,sum(quantity) as quantity
from northwind.northwind_order_details
Group by product_id
order by quantity desc
limit 5;

