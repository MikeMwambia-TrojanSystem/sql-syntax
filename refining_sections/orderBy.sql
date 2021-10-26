-- NB:- Comes after from <tablename> 

select author_lname from books order by author_lname;

--Order is ASC by default can be changed by DESC

select title from books order by title desc;

--By default it's ascending
select released_year as 'release year' from books order by released_year;

--You can order by any field in the table e.g released_year below
select title,released_year,pages from books order by released_year;

--You can order by any field even when not selected e.g released_year below
select title,pages from books order by released_year;

--You can order by the select param position

--below 2 means order by author_fname since it's the 2nd param of the select part
select title,author_fname,author_lname from books order by 2;

--To sort by title change to 1
select title,author_fname,author_lname from books order by 1;

--To sort by author_lname change to 3
select title,author_fname,author_lname from books order by 3;
select title,author_fname,author_lname from books order by 3 desc;

--Sort by two columns below means sort by author_lname first then author_fname
select author_fname,author_lname from books order by author_lname,author_fname;

