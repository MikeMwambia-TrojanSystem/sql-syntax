-- Joins data from one table to another
-- Reference https://dataschool.com/how-to-teach-people-sql/inner-join-animated/
-- Use of foregin key

-- INNER JOIN
select * from customers
inner join orders 
on customers.id = orders.customers_id;

-- selects all rows from both tables where customers.id = orders.customers_id


-- LEFT JOIN
select * from customers
left join orders 
on customers.id = orders.customers_id;

-- selects all rows from orders tables only where customers.id = orders.customers_id

 select first_name,
        last_name,
        ifnull(sum(amount),0) as spent
        from customers 
        left join orders 
        on customers.id = orders.customers_id
        group by customers.id
        order by spent;






























