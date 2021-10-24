--NB : - comes right after select
select distinct author_lname from books;
--Gets only the unique author_lname;

select distinct released_year from books;

--In the event the second column has two same values
--but different values for first column here is the sol
--Combine then filter on distinct
select distinct concat(author_fname,' ',author_lname) from books;

--Same as above
select distinct author_fname,author_lname from books;

SELECT author_lname FROM books;
    
SELECT DISTINCT author_lname FROM books;
    
SELECT author_fname, author_lname FROM books;
    
SELECT DISTINCT CONCAT(author_fname,' ', author_lname) FROM books;
    
SELECT DISTINCT author_fname, author_lname FROM books;
--applies entire row

