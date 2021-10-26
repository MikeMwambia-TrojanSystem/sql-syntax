select title from books limit 4;

-- get the most recent books 5 books released_year
select title,released_year from books order by released_year desc limit 5;

-- Same implementation as above uisng shorter syntax <startindex>,<endIndex>
-- NB:- In SQL the first row starts at 1 and go for <endIndex> number of rows 
-- e.g 1,5 means start at row 1 and go for 5 more rows
select title,released_year from books order by desc limit 0,5

-- To retrieve all rows from a certain point to the end you run
-- select * from books limit 95,18446744073709551615;

select title from books limit 5, 122444444555555555

