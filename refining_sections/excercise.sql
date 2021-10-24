-- select title,stock_quantity from books where stock_quantity like '____';

-- select title from books;

-- select title from books where title like '%\%%';

-- select title from books where title like '%stories%';

select title , pages 
from books 
order by pages 
desc limit 1;

select concat(title , ' - ' ,released_year) as 'summary' 
from books 
order by released_year desc limit 3;

select title, author_lname 
from books 
where author_lname like '% %';

select title , released_year , stock_quantity 
from books 
order by stock_quantity limit 3;

select title,author_lname 
from books 
order by author_lname,title;

select 
upper(
    concat(
        'My favourite author is ',
        author_fname,
        ' ',
        author_lname,
        '!')
        ) as 'yell' 
        from books 
        order by author_lname;

