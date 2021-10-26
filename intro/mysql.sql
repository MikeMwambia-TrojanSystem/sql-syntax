--Start CLI
mysql-ctl cli;

--List available databases
show databases;

--General command to create DB
CREATE DATABASE database_name;

--Specific example
CREATE DATABASE testDB;

--Delete a database
DROP DATABASE <name>

--Example -- Drops DB
DROP DATABASE testDB;

--Selects which DB to use
SELECT DATABASE();

COLUMNS in SQL refers to the headers of that table;

ROWS are the actuall data in the table;

--Table Data Types : - 

--NUMERICAL : -     STRING TYPE : -       DATE TYPES :_
INT               CHAR                  DATE
SMALLINT          VARCHAR               DATETIME
TINYINT           BINARY                TIMESTAMP
MEDIUMINT         VARBINARY             TIME
BIGINT            BLOB                  YEAR
DECIMAL           TINYBLOB
NUMERICAL         MEDIUMBLOB
FLOAT             LONGBLOB
DOUBLE            TEXT
BIT               TINYTEXT
                  MEDIUMTEXT
                  LONGTEXT
                  ENUM  

WHEN YOU USE VARCHAR YOU HAVE TO SPECIFY A MAXIMUM LENGTH.

--Selects which database to use
USE DATABASE;

--Creates tables in this case called catalogQAData
--NB: varchar will always require a length limit
CREATE TABLE catalogQAData( itemName VARCHAR(150), assignee VARCHAR(50));

CREATE TABLE tablename
(
  column_name data_type,
  column_name data_type
);

CREATE TABLE cats
(
  name VARCHAR(100),
  age INT
);

--SHOW TABLE  NB:- TABLE NAMES ARE ALWAYS PLURAL
show tables;

--Show columns from <tablename>
SHOW COLUMNS FROM <tablename>

OR 

DESC <tablename>

--DELETE TABLE
DROP TABLE <tablename>

--NB : - IF YOU BUILD A TABLE YOU HAVE TO ATLEAST HAVE ONE COLUMNS

--INSERT STATEMENT FOR SINGLE VALUE
INSERT INTO <tableName> (<columnname>,<columnname>) VALUES 
(<data>,<data>);

--MUTIPLE INSERT
INSERT INTO <tableName> (<columnname>,<columnname>)  VALUES 
(<data>,<data>),
  (<data>,<data>),
    (<data>,<data>);
--NB:- order does matter data will still be 
--insterted but the query will take longer and be placed in wrong columns
--If an int and string passed it will take default zero


--You can do it a couple of ways:

--Escape the quotes with a backslash:
--"This text has \"quotes\" in it" or 'This text has \'quotes\' in it'

--Alternate single and double quotes: "This text has 'quotes' in it" or 'This text has "quotes" in it'



INSERT Challenge Solution Code

    CREATE TABLE people
      (
        first_name VARCHAR(20),
        last_name VARCHAR(20),
        age INT
      );

    INSERT INTO people(first_name, last_name, age)
    VALUES ('Tina', 'Belcher', 13);

    INSERT INTO people(age, last_name, first_name)
    VALUES (42, 'Belcher', 'Bob');

    INSERT INTO people(first_name, last_name, age)
    VALUES('Linda', 'Belcher', 45)
      ,('Phillip', 'Frond', 38)
      ,('Calvin', 'Fischoeder', 70);

DROP TABLE people; 

SELECT * FROM people; 

show tables; 

show warnings; -- this will show the warnings.

--NB; - If the column NULL is YES in SQL it means that,that row allows
to pass an empty value;


CREATE TABLE cats2
      (
        name VARCHAR(100) NOT NULL,
        age INT NOT NULL
      );

--HOW YOU DESCRIBE A TABLE WITH NOT NULL VALUES IN SQL
CREATE TABLE peopleName2 (
  name VARCHAR(100) NOT NULL DEFAULT 'NONAMEDEFAULT',
  age INT NOT NULL DEFAULT 99
)

--AUTO INCREMENT NOT_NULL AND DEFAULT
CREATE TABLE peopleName3 (
      personId INT NOT NULL AUTO_INCREMENT , 
      firstName VARCHAR(100) NOT NULL DEFAULT 'firstname',
      secondName VARCHAR(100) NULL DEFAULT 'secondName',
      PRIMARY_KEY (personId)
);

CREATE TABLE peopleName4 (
      personId INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
      firstName VARCHAR(100) NOT NULL DEFAULT 'firstname',
      secondName VARCHAR(100) NULL DEFAULT 'secondName'
);

CREATE TABLE employees (
  id INT AUTO_INCREMENT NOT NULL,
  first_name VARCHAR(100) NOT NULL,
  last_name VARCHAR(100) NOT NULL,
  middle_name VARCHAR(255),
  age INT NOT NULL,
  current_status VARCHAR(255) NOT NULL DEFAULT 'employed',
  PRIMARY KEY(id) 
);

--Same as above
CREATE TABLE employees (
  id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  middle_name VARCHAR(255),
  age INT NOT NULL,
  current_status VARCHAR(255) NOT NULL DEFAULT 'employed'
);

--PRIMARY KEYS must be set to AUTO_INCREMENT
CREATE TABLE shirts(
  shirt_id INT AUTO_INCREMENT NOT NULL,
  article VARCHAR(255) NOT NULL,
  color VARCHAR(255) NOT NULL,
  shirt_size VARCHAR(250) NOT NULL,
  last_worn VARCHAR(255) NOT NULL,
  PRIMARY KEY(shirt_id)
)

--Multi column insert
INSERT INTO shirts(article, color, shirt_size, last_worn) VALUES
('t-shirt', 'white', 'S', 10),
('t-shirt', 'green', 'S', 200),
('polo shirt', 'black', 'M', 10),
('tank top', 'blue', 'S', 50),
('t-shirt', 'pink', 'S', 0),
('polo shirt', 'red', 'M', 5),
('tank top', 'white', 'S', 200),
('tank top', 'blue', 'M', 15);

--A test insert
INSERT INTO employees(first_name,last_name,age) 
VALUES ('Dora','Smith',58);

--Official Select 
SELECT * FROM cats; --Selects everything from DB

--Select specific column
SELECT <columnname> from <tablename>;

SELECT name FROM cats; --Select name of cats

SELECT name,age FROM cats; -- Select columns name and age from DB

SELECT name,breed,age FROM cats;
--NB:-The order on which you ask for the columns matters.

-- Official Select
SELECT <columnname>,<columnname>,<columnname> FROM 
<tablename> WHERE <columnname>=<value>;

SELECT breed FROM cats WHERE age=4;
--NB:- the WHERE clause is case insensitive

--Combining column search and 
SELECT age,name FROM cats WHERE breed='tabby';

--Comparison of columns in  where
SELECT age,cat_id WHERE cat_id=age;

--Aliases used to configure the result
--In below the cat_d is displayed as id
SELECT <columnname> AS 'given Name' FROM <tablename>

SELECT cat_id AS id ,name FROM cats;

SELECT cat_id AS id, name FROM cats;
  
SELECT name AS 'cat name', breed AS 'kitty breed' FROM cats;
  
--Mutiple column filter
SELECT article, color, shirt_size, last_worn FROM shirts WHERE shirt_size='M';

DESC cats;

--Update
--Most common syntaxt UPDATE , SET , WHERE
UPDATE <tablename> SET <columnname> WHERE <condition>
UPDATE cats SET breed='Shorhair' WHERE breed='Tabby';
UPDATE shirts SET shirt_size='XS',color='Off white' WHERE color='white';

--Delete Statement
DELETE FROM <tablename> WHERE <condition>

--Deletes the cat whose name is 'egg';
DELETE FROM cats WHERE name='egg';

--Filter delete by column names;
DELETE FROM cats WHERE age=cat_id;
 
--Delete everything in a table;
DELETE FROM cats;

--String Functions;


--concat in mysql;
CONCAT (<columnname>,<columnname>) FROM <tablename>
--Used as in below return first name and last name 
--concated with space
SELECT CONCAT(author_fname,' ',author_lname) FROM books;

--Renaming the result as Full Name
SELECT CONCAT(author_fname,' ',author_lname) AS 'Full Name' 
FROM books;

--Can be combined
SELECT author_fname AS 'First',author_lname AS 'Last' , CONCAT (author_fname,' ',author_lname) AS 'Full Name' FROM books;

--Can be done with separator
SELECT CONCAT_WS('-',title,author_fname,author_lname) FROM books;

--SubString
SELECT SUBSTRING(<columnname>,<startIndex>,<endIndex>) FROM ,<tablename>;

SELECT SUBSTRING(title,1,10) AS 'Short title' FROM books;

SELECT SUBSTRING ('Hello world',7); --Moves from the 7th index to the end of the string

SELECT SUBSTRING ('Hello world',1,4); --Moves from index 1 to 4

--Substrng and Concat
SELECT CONCAT (SUBSTRING(title,1,10),'...') AS 'Short title' FROM books;

--Replace eg 
SELECT REPLACE ('Hello worl','l',7) AS 'Replaced';
--NB Replace is case sensitive;

-- Substring Concat Replace
SELECT CONCAT (SUBSTRING(REPLACE(title,'e','3'),1,10),'...') AS 'Edited' FROM books;

--Char Length returns the length of the characters at that point
SELECT CONCAT (author_lname, ' is ',char_length(author_lname,' characters long')) as 'Edited name' from books;

--Sets to upper and lover case
SELECT UPPER('Hello World');
  
SELECT LOWER('Hello World');
  
SELECT UPPER(title) FROM books;
  
SELECT CONCAT('MY FAVORITE BOOK IS ', UPPER(title)) FROM books;
  
SELECT CONCAT('MY FAVORITE BOOK IS ', LOWER(title)) FROM books;