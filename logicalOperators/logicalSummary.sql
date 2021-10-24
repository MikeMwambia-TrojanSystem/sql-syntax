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
  
  
  