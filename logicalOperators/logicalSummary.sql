 select title,author_lname,released_year from books where author_lname = 'Eggers';
 
 select title,author_lname,released_year from books where author_lname = 'Eggers' AND released_year > 2010;
 
 select title,author_lname,released_year from books where author_lname = 'Eggers' && released_year > 2010;
 
 
  select 1<5 && 7 = 9;
  
  -- && or AND means both sides have to be true
  
  select 1<5 && 7 = 9;
  -- false
  select -10 > -20 && 0 <= 0;
  -- false
  select -40 <= -0 && 10 > 40;
  -- false 
  select 54 <= 54 && 'a'='A';
  -- false 
  select title,author_lname,author_fname from books where author_lname='Eggers' and released_year > 2010 && title like '%novel%';
  
  -- NB : - && will be depreciated in future sql;
  
  select title,author_lname,author_fname from books where author_lname = 'Eggers' || released_year >2010;
  
  -- || means one side has to be true
  select (40 <= 100 || -2 >0);
  
  select (10 > 5 || 5 = 5);
  
  select('a' = 5 || 3000 > 2000);
  
  select title,author_lname,author_fname ,stock_quantity from books where author_lname = 'Eggers' || released_year >2010 OR stock_quantity > 100;

  -- Select books published between 2004 and 2015
  select title,author_fname,author_lname from books where released_year >= 2004 AND released_year <= 2015;

  -- Same as above but using between
  select title,author_fname,author_lname,released_year from books where released_year between 2004 and 2015;

  -- NOT BETWEEN oppositeof between
  select title,author_fname,author_lname,released_year from books where released_year not between 2004 and 2015;

    -- Use CAST when you want to convert data types;
    select name,birthdt from people where birthdt between 
    cast('1980-01-01' as datetime) and cast('2001-01-01' as datetime);


    -- IN and NOT IN
    select title,author_fname,author_lname from books where author_lname='Carver' OR author_lname='Lahiri' OR author_lname='Smith';
    
    select title,author_fname,author_lname from books where author_lname in ('Carver','Lahiri','Smith');
    
    select title,author_fname,author_lname,released_year from books where released_year in (1998,2017,2021);
    
    select title,author_fname,author_lname,released_year from books where released_year not in (2000,2002,2004,2006,2008,2010,2012,2014,2016);
    
    select title,released_year from books where released_year>= 2000 and released_year not in (2000,2002,2004,2006,2008,2010,2012,2014,2016) order by released_year;
    
    select title,released_year from books where released_year>= 2000 and released_year%2 !=0 order by released_year;

    



  
  
  