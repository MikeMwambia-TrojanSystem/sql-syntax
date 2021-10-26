-- Wild cats
-- Selects the title,author_lname and author_fname from books table
-- where author_fname has characters 'da'
select title,author_lname,author_fname 
from books 
where author_fname like '%da%';

-- Get the author_fname that start with exactly da
-- Remove first wildcard
select title , author_fname, author_lname 
from books 
where author_fname like 'da%';

select title,author_fname from books where author_fname like '%da%';

select title,author_fname from books where author_fname like 'da%';

select title from books where title like 'the';

select title from books where title like '%the';

select title from books where title like '%the%';


