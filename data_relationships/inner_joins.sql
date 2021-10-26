-- Joins data from one table to another
-- Reference https://dataschool.com/how-to-teach-people-sql/inner-join-animated/
-- Use of foregin key 
-- IMPLICIT INNER JOIN
select first_name,last_name,order_date,amount 
from customers , orders 
where customers.id = orders.customers_id;

-- Can you mix rows ?
-- YES order_date && amount are from orders table
-- While first_name && last_name are from customers table

-- EXPLICIT INNER JOIN
select first_name,last_name,order_date,amount 
from customers 
join orders 
on customers.id = orders.customers_id;

-- Manipulating the returned data
select first_name,last_name,order_date,amount
from customers
join orders
on customers.id = orders.customers_id
order by amount;

-- Grouping by
select first_name,last_name,order_date,amount 
from customers
join orders 
on customers.id = orders.customers_id
group by orders.customers_id;

-- Total spent
select first_name,last_name,order_date,sum(amount) as total_spent
from customers
join orders 
on customers.id = orders.customers_id
group by orders.customers_id
order by total_spent desc;




























