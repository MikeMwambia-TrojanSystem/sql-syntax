-- != 
select title,released_year from books where released_year != 2017;

select title,author_lname from books where author_lname = 'Harris';

select title,author_lname from books where author_lname != 'Harris';

-- Not like
select title from books where title like '%W%';

select title from books where title not like '%W%';

-- > Greater than
select * from books where released_year > 2000;

-- >= Greater than or equal to
select title , stock_quantity from books where stock_quantity >= 100;

    SELECT title, released_year FROM books ORDER BY released_year;
     
    SELECT title, released_year FROM books 
    WHERE released_year > 2000 ORDER BY released_year;
     
    SELECT title, released_year FROM books 
    WHERE released_year >= 2000 ORDER BY released_year;
     
    SELECT title, stock_quantity FROM books;
     
    SELECT title, stock_quantity FROM books WHERE stock_quantity >= 100;
     
    SELECT 99 > 1;
     
    SELECT 99 > 567;
     
    100 > 5
    -- true
     
    -15 > 15
    -- false
     
    9 > -10
    -- true
     
    1 > 1
    -- false
     
    'a' > 'b'
    -- false
     
    'A' > 'a'
    -- false
     
    'A' >=  'a'
    -- true
     
    SELECT title, author_lname FROM books WHERE author_lname = 'Eggers';
     
    SELECT title, author_lname FROM books WHERE author_lname = 'eggers';
     
    SELECT title, author_lname FROM books WHERE author_lname = 'eGGers';

    -- less than <
    select * from books where released_year < 2000 order by released_year;

    -- less than or equal to <=
    select * from books where released_year <=2000 order by released_year;


    SELECT title, released_year FROM books;
     
    SELECT title, released_year FROM books
    WHERE released_year < 2000;
     
    SELECT title, released_year FROM books
    WHERE released_year <= 2000;
     
    SELECT 3 < -10;
    -- false
     
    SELECT -10 < -9;
    -- true
     
    SELECT 42 <= 42;
    -- true
     
    SELECT 'h' < 'p';
    -- true
     
    SELECT 'Q' <= 'q';
    -- true

    -- select title,author_lname from books where author_lname = 'Dave Eggers' && released_year > 2010;
     select title,author_lname from books where author_lname = 'Eggers';

     -- All  books after 2010
    select title,author_lname from books where author_lname = 'Eggers' AND released_year > 2010;

     -- Select 
     select 1<5 && 7 = 9;