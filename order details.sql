-- 1. view all the order_details table
select * from order_details;

-- 2. what is the date range
select min(order_date) , max(order_date)
from order_details;

-- 3. How many orders were made within this date range
select count(distinct(order_id))
from order_details;

-- 4. how mnay items were ordered in this date range
select count(*)
from order_details;

-- 5. which order have the  most amount of items
select order_id , count(item_id) as num_items
from order_details
group by order_id
order by num_items desc;


-- 5. how many orders had more than 12 items
select count(*)
from
(select order_id , count(item_id) as num_items
from order_details
group by order_id
having num_items > 12) as num_orders


