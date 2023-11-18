select * from pizza_sales
--Daily trend for total orders

select datename(dw,order_date) as order_day, count(distinct order_id) as Total_orders from pizza_sales
group by datename(dw,order_date)

-- Monthly trend for total orders

select datename(mm,order_date) as order_day, count(distinct order_id) as Total_orders from pizza_sales
group by datename(mm,order_date)
order by Total_orders desc

--% of sales by pizza category
select pizza_category, sum(total_price) as Total_Sales, sum(total_price)* 100 / (select sum(total_price) from pizza_sales) as percent_sale
from pizza_sales
where month (order_date) = 3
group by pizza_category

--% of sales by Pizza Size
select pizza_size, sum(total_price) as Total_Sales, cast(sum(total_price)* 100 / (select sum(total_price) from pizza_sales)as decimal(10,2))
as percent_sale
from pizza_sales
group by pizza_size

--Total Pizzas sold by Pizza category
select sum(quantity), pizza_category from pizza_sales group by pizza_category

select count(distinct pizza_name), quantity from pizza_sales group by quantity

--top bestsellers
select top 5 pizza_name, sum(total_price) as total_revenue from pizza_sales
group by pizza_name
order by sum(total_price) desc

--bottom bestsellers
select top 5 pizza_name, sum(total_price) as total_revenue from pizza_sales
group by pizza_name
order by sum(total_price)