SELECT CHAR_LENGTH('Hello World');
 
SELECT author_lname AS 'Author name', CHAR_LENGTH(author_lname) AS 'length' FROM books;
 
SELECT CONCAT(author_lname, ' is ', CHAR_LENGTH(author_lname), ' characters long') FROM books;

--Resource: sql-format.com

select title as 'title',char_length(title) as 'character count' from books;