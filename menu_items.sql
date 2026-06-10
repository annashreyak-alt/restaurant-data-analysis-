use restaurant_db;
-- 1. View the menu_items table.
select* 
from menu_items;

-- 2. find the  number of items
select count(*)
from menu_items;

-- 3. what are the least and most expensive items on the menu?
select *
from menu_items
order by price desc;

-- 4. how many italian dishes  in the menu?
select count(*)
from menu_items
where category = 'Italian';

-- 5. what are the least and most expensive italian dishes on the menu
select *
from menu_items
where category = 'Italian'
order by price;

select *
from menu_items
where category = 'Italian'
order by price desc;

-- how many dishes in each category
select category , count(menu_item_id) as num_dishes
from menu_items
group by category;

-- 8. avg dish price by each category
select category ,avg(price) as avg_dish_price
from menu_items
group by category


