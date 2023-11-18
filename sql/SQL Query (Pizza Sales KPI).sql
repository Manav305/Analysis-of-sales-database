select * from pizza_sales

--Total Revenue 
select sum(total_price) as revenue from pizza_sales

--Avg Order Value
select sum(total_price)/ count(distinct order_id) as 'Average_Order_Value' from pizza_sales

--Total Pizza Sold
select sum(quantity) as total_pizzas_sold from pizza_sales

--Total Orders
select count(distinct order_id) as Total_Orders from pizza_sales

--Average Pizzas Per Order
select cast(cast(sum(quantity)as decimal (10,2))/cast(count(distinct order_id)as decimal (10,2)) as decimal(10,2))as Avg_pizzas_per_order from pizza_sales