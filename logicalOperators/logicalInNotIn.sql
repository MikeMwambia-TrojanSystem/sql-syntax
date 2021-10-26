    show databases();
    use book_shop;
     
    SELECT 
        title, 
        author_lname 
    FROM books
    WHERE author_lname='Carver' OR
          author_lname='Lahiri' OR
          author_lname='Smith';
     
    SELECT title, author_lname FROM books
    WHERE author_lname IN ('Carver', 'Lahiri', 'Smith');
     
    SELECT title, released_year FROM books
    WHERE released_year IN (2017, 1985);
     
    SELECT title, released_year FROM books
    WHERE released_year != 2000 AND
          released_year != 2002 AND
          released_year != 2004 AND
          released_year != 2006 AND
          released_year != 2008 AND
          released_year != 2010 AND
          released_year != 2012 AND
          released_year != 2014 AND
          released_year != 2016;
     
    SELECT title, released_year FROM books
    WHERE released_year NOT IN 
    (2000,2002,2004,2006,2008,2010,2012,2014,2016);
     
    SELECT title, released_year FROM books
    WHERE released_year >= 2000
    AND released_year NOT IN 
    (2000,2002,2004,2006,2008,2010,2012,2014,2016);
     
    SELECT title, released_year FROM books
    WHERE released_year >= 2000 AND
    released_year % 2 != 0;
     
    SELECT title, released_year FROM books
    WHERE released_year >= 2000 AND
    released_year % 2 != 0 ORDER BY released_year;


    select title,stock_quantity , case 
    when stock_quantity between 0 and 50 then 'Under 50 **'
    when stock_quantity between 51 and 100 then 'Under 100 **'
    when stock_quantity between 101 and 200 then 'Under 200 **' 
    else concat('Am top stock at',' ',stock_quantity) 
    end as STOCK 
    from books;

    select title , case 
    when stock_quantity <= 50 then '*'
    when stock_quantity <= 100 then '**'
    when stock_quantity <= 150 then '***'
    else concat('****',' ',stock_quantity)
    end as STOCK
    from books;


    -- case with mutiple conditions
     select title ,author_lname, case 
     when title like '%stories%' then 'Short stories' 
     when title = 'Just Kids' || title like '%A heartbreaking%' then 'Memoir'
     else 'Novel' end as TYPE from books;
    
    -- Case with group by 
    -- NB :- Notice the mutiple group param
     select title,author_lname,case 
     when count(*) > 1 then concat(count(*),' ','books')
     else 'book' end as 'COUNT'
     from books group by author_lname,author_fname;