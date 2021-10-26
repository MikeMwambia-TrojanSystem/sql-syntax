select * from books;

select count(*) as 'Number of bboks' from books;

select distinct author_fname from books;

select  count(author_fname) as 'All first names' from books;

-- Distinct is applied on column name
select count(distinct author_fname) as 'Unique first name' from books;

-- Return count for unique rows of data
select count(distinct author_fname,author_lname) as 'Unique Author Name' 
from books

-- How many books contain 'the'in title
select count(
    title
) as 'Books with \'the\' in them'
from books 
where title like '%the%';

-- GROUP BY
-- Groups data by the given column name
select title , author_lname, author_fname from books group by author_lname;

-- Groups by unique author-lname and author_fname
select author_lname, author_fname , count(*) 
from books 
group by author_lname,author_fname;

-- Groups by unique author-lname and author_fname
select concat ('In ',released_year,' ',count(*),' book(s) released') from books group by released_year;

-- Minimum & Maximum
select min(released_year) from books;

select min(pages) from books;

select max(released_year) from books;

select max(pages) from books;

-- POTENTIALLY SLOW FOR BIG DATA
-- Sub query

select title , pages 
from books 
where pages=(select Max(pages) from books);

-- Max
select title , pages 
from books 
where pages=(select Min(pages) from books);

-- SAME AS ABOVE
select title , pages from books order by  pages desc limit 1;

--With Group By
select author_fname,author_lname,Min(released_year) 
from books
group by author_lname,author_fname;

--NB UPPER , MAX , MIN and AVG functions in sql take a single parameter

select count(*) as 'Books in DB' from books;

select count(*) as 'Books release per year' from books group by released_year;

select sum(stock_quantity) as 'Number of books in stock' from books;

select author_lname, author_fname , avg(released_year) from books group by author_lname,author_fname;

select concat(author_fname,' ',author_lname) as 'full name' from books 
order by pages desc limit 1;

select released_year as 'year',count(released_year) as '# books',avg(pages) as 'avg pages'
from books group by released_year;


select author_lname,author_fname from books where pages=(select max(pages) from books);
