-- Right join
-- Takes everything from orders

select * from customers
 right join orders
 on customers.id = orders.customers_id;

-- This takes everything from the table on the right in this case orders

-- Ref https://dataschool.com/how-to-teach-people-sql/left-right-join-animated/


 select 
 ifnull(first_name,'Missing') as first,ifnull(last_name,'User') as last,
order_date,
 amount,
 sum(amount)
 from customers 
 right join orders
 on customers.id = orders.customers_id
 group by first_name,last_name;
 
 -- Working with on delete cascade
 create table customers(
     id int auto_increment primary key,
     first_name varchar(100),
     last_name varchar(100),
     email varchar(100)
 );
 
 
 create table orders(
     id int auto_increment primary key,
     order_date date,
     amount decimal(8,2),
     customers_id int,
     foreign key(customers_id)
     references customers(id)
     on delete cascade
 )


