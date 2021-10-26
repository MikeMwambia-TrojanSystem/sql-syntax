-- One to one relationship;
-- One to many relationship;
-- Many to many relationships;

-- One to many relationships;

create table customers (
id int auto_increment not null primary key,
first_name varchar(100) not null,
last_name varchar(100) not null ,
email varchar(100) not null
);

 -- Creating a foreign key
create table orders (
    id int auto_increment not null primary key,
    order_date date,
    amount decimal(8,2),
    customers_id int ,
    foreign key (customers_id) references customers(id)
);


    INSERT INTO customers (first_name, last_name, email) 
    VALUES ('Boy', 'George', 'george@gmail.com'),
           ('George', 'Michael', 'gm@gmail.com'),
           ('David', 'Bowie', 'david@gmail.com'),
           ('Blue', 'Steele', 'blue@gmail.com'),
           ('Bette', 'Davis', 'bette@aol.com');
           
    INSERT INTO orders (order_date, amount, customers_id)
    VALUES ('2016/02/10', 99.99, 1),
           ('2017/11/11', 35.50, 1),
           ('2014/12/12', 800.67, 2),
           ('2015/01/03', 12.50, 2),
           ('1999/04/11', 450.25, 5);