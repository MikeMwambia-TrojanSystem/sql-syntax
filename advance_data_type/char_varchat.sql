    CREATE TABLE dogs (name CHAR(5), breed VARCHAR(10));
     
    INSERT INTO dogs (name, breed) VALUES ('bob', 'beagle');
     
    INSERT INTO dogs (name, breed) VALUES ('robby', 'corgi');
     
     -- Trucncated to fit 5 characters
    INSERT INTO dogs (name, breed) VALUES ('Princess Jane', 'Retriever');
     
    SELECT * FROM dogs;
     -- Truncated to fit 10 characters
    INSERT INTO dogs (name, breed) VALUES ('Princess Jane', 'Retrievesadfdsafdasfsafr');
     
    SELECT * FROM dogs;




    -- char has a fixed length
-- DECIMAL(5,2) means 5 as maximum number length with 2 after  the decimal
create table items (price DECIMAL(5,2));

insert into items (price) values (7);

-- Larger than the maximum number allowed
-- So it inserts 999.99
insert into items (price) values (7987654);

insert into items (price) values (34.888);

insert into items (price) values (298.999);

insert into items (price) values (1.89998);

select * from items;

-- Float and double takes big numbers and store them in a smaller space
-- Double precise to 15 digits , Float precise to 7 digits
create table thingies (price float);

insert into  thingies (price) values (88.45);

insert into  thingies (price) values (8877.45);

-- Precision issues since it's float
insert into  thingies (price) values (8877665544.45);

select * from thingies;
-- If you have to use float or double go for double as you'll have more precision
