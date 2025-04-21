use pizza_sales;

-- view dataset
select * from pizza_sales;

-- Total Revenue
select Sum(total_price) AS Total_Revenue
from pizza_sales;

-- Average price order per order_id
select order_id, Avg(total_price) as Average_amount_spent 
from pizza_sales
group by order_id;

-- Total Pizza Sold
select SUM(quantity) AS Total_pizza_sold 
from pizza_sales;

-- Total Orders
select COUNT(distinct order_id) As Total_Orders
from pizza_sales;

-- Average pizzas per order
select sum(quantity) / count(distinct order_id) AS Average_pizza_order
from pizza_sales;

SELECT DISTINCT MONTHNAME(STR_TO_DATE(order_date, '%d-%m-%Y')) AS month_name,count(distinct order_id) as total_order
FROM pizza_sales
group by month_name
order by total_order DESC;

-- pizza size order
select pizza_size, count(distinct order_id) AS total_orders
from pizza_sales
group by pizza_size
order by total_orders DESC; 

-- order by date 
select day(str_to_date(order_date,'%d-%m-%y')) AS Day, count(distinct order_id) AS Total_Orders
from pizza_sales
group by Day;

-- order by pizza name
select pizza_name, count(distinct order_id) AS Total_Orders
from pizza_sales
group by pizza_name;






