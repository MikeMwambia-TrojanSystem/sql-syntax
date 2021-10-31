    SELECT COUNT(*) FROM books;
     
    SELECT COUNT(author_fname) FROM books;
     
    SELECT COUNT(DISTINCT author_fname) FROM books;
     
    SELECT COUNT(DISTINCT author_lname) FROM books;
     
    SELECT COUNT(DISTINCT author_lname, author_fname) FROM books;
     
    SELECT title FROM books WHERE title LIKE '%the%';
     
    SELECT COUNT(*) FROM books WHERE title LIKE '%the%';

    -- Not Equal
    SELECT title FROM books WHERE released_year = 2017;
     
    SELECT title FROM books WHERE released_year != 2017;
     
    SELECT title, author_lname FROM books;
     
    SELECT title, author_lname FROM books WHERE author_lname = 'Harris';
     
    SELECT title, author_lname FROM books WHERE author_lname != 'Harris';