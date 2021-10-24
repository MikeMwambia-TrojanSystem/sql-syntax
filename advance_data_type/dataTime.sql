-- Date stores date but no time
-- Time stores time but no date
-- Date Time stores values for date and time

create table people (
    name varchar(100),
    birthdate date,
    birthtime time,
    birthdt datetime
    );

insert into people (
    name,
    birthdate,
    birthtime,
    birthdtu
    ) values
    ('Padma','1983-11-11','10:10:35','1983-11-11 10:10:35');
    
insert into people (
    name,
    birthdate,
    birthtime,
    birthdt
    ) values
    ('Padma2','1985-11-11','10:11:35','1985-11-11 10:11:35');
    
insert into people (
    name,
    birthdate,
    birthtime,
    birthdt
    ) values
    ('Padma3','1990-11-11','11:11:35','1990-11-11 11:11:35');


    select * from people;
    
curdate() -- Gives the current date;
curtime() -- Gives the current time;
now() -- Gives the current datetime;


insert into people (
    name,
    birthdate,
    birthtime,
    birthdt
    ) values
    ('Padma4',curdate(),curtime(),now());

-- Date stores date but no time
-- Time stores time but no date
-- Date Time stores values for date and time




-- insert into people (name,birthdate,birthtime,birthdt) values ('Padma4',CURDATE(),CURTIME(),NOW());
    -- day() Extract day
    -- dayname() Extract name of day string
    -- dayofweek() Extract day of week number
    -- dayofyear() Extract day of year number
    select * from people;
    
    select name ,birthdate,day(birthdate) from people;
    
    select name ,birthdate,dayname(birthdate) from people;
    
    select name ,birthdate,dayofweek(birthdate) from people;
    
    select name ,birthdate,dayofyear(birthdate) from people;
    
    
    select date_format(birthdt,'was boarn on a %W') from people;
    
    -- from 04/22/2017 to April 22 2017
    -- date formatters
    
    select date_format(birthdt,'%M %D %Y') as 'Formatted time' 
    from people;
    
    
    -- time formatters
    
    select date_format(birthdt,'%M %D %Y at %h:%m') as 'Formatted time'
    from people;



    SELECT name, birthdate FROM people;
     
    SELECT name, DAY(birthdate) FROM people;
     
    SELECT name, birthdate, DAY(birthdate) FROM people;
     
    SELECT name, birthdate, DAYNAME(birthdate) FROM people;
     
    SELECT name, birthdate, DAYOFWEEK(birthdate) FROM people;
     
    SELECT name, birthdate, DAYOFYEAR(birthdate) FROM people;
     
    SELECT name, birthtime, DAYOFYEAR(birthtime) FROM people;
     
    SELECT name, birthdt, DAYOFYEAR(birthdt) FROM people;
     
    SELECT name, birthdt, MONTH(birthdt) FROM people;
     
    SELECT name, birthdt, MONTHNAME(birthdt) FROM people;
     
    SELECT name, birthtime, HOUR(birthtime) FROM people;
     
    SELECT name, birthtime, MINUTE(birthtime) FROM people;
     
    SELECT CONCAT(MONTHNAME(birthdate), ' ', DAY(birthdate), ' ', YEAR(birthdate)) FROM people;
     
    SELECT DATE_FORMAT(birthdt, 'Was born on a %W') FROM people;
     
    SELECT DATE_FORMAT(birthdt, '%m/%d/%Y') FROM people;
     
    SELECT DATE_FORMAT(birthdt, '%m/%d/%Y at %h:%i') FROM people;


    -- DATEDIFF() gives the difference in days;
select name,birthdate,datediff(now(),birthdate) from people;

-- dateadd() 
select birthdt,date_add(birthdt, interval 2 month) from people;

-- +/-
select birthdt,date_add(birthdt, interval 2 month) from people;

-- Same as above
select birthdt , birthdt + interval 1 MONTH  from people;

-- Subctration
select birthdt , birthdt - interval 5 MONTH  from people;

-- Mutiple
select birthdt , birthdt + interval 5 MONTH  + interval 10 hour from people;

-- Char used for characters with fixed length 
-- Decimal is better for representing monetary stuff in sql
curtime() -- Prints out the current time;
curdate() -- Prints out the current date not time;

select date_format(now(),'%W');

-- print out mm/dd/yyyy
select date_format(now(),'%M%/%W%/%Y');

-- print out mm/dd/yyyy
select date_format(now(),'%m%/%w%/%Y');

-- print out date April 22nd at 10:45
select date_format(now(),'%M %D at %h:%i');


What's a good use case for CHAR?
------
Used for text that we know has a fixed length, e.g., State abbreviations, 
abbreviated company names, sex M/F, etc.
 
CREATE TABLE inventory (
    item_name VARCHAR(100),
    price DECIMAL(8,2),
    quantity INT
);
 
What's the difference between DATETIME and TIMESTAMP?
------
They both store datetime information, but there's a difference in the range, 
TIMESTAMP has a smaller range. TIMESTAMP also takes up less space. 
TIMESTAMP is used for things like meta-data about when something is created
or updated.
 
SELECT CURTIME();
 
SELECT CURDATE()';
 
SELECT DAYOFWEEK(CURDATE());
SELECT DAYOFWEEK(NOW());
SELECT DATE_FORMAT(NOW(), '%w') + 1;
 
SELECT DAYNAME(NOW());
SELECT DATE_FORMAT(NOW(), '%W');
 
SELECT DATE_FORMAT(CURDATE(), '%m/%d/%Y');
 
SELECT DATE_FORMAT(NOW(), '%M %D at %h:%i');
 
CREATE TABLE tweets(
    content VARCHAR(140),
    username VARCHAR(20),
    created_at TIMESTAMP DEFAULT NOW()
);
 
INSERT INTO tweets (content, username) VALUES('this is my first tweet', 'coltscat');
SELECT * FROM tweets;
 
INSERT INTO tweets (content, username) VALUES('this is my second tweet', 'coltscat');
SELECT * FROM tweets;