SELECT UPPER(CONCAT(author_fname, ' ', author_lname)) AS "full name in caps" FROM books;
--UPPER only takes one argument and CONCAT takes two or more arguments, so they can't be switched in that way.

select
    reversed(
    "Why does my cat look at me with so much hate"
    )
     as "Reversed column";


select 
    replace(
        concat('I',' ','like',' ','cats'),
        ' ',
        '_'
    );

select 
    replace (title,' ','->') as 'Title'
    from books;

select 
    author_lname as 'forwards',
    reverse(author_lname) as 'backwards'
    from books;


SELECT 
    UPPER(
        CONCAT(
        author_fname,
        ' ',
        author_lname
    )) 
AS 'full name in caps' FROM books;

SELECT CONCAT
    (
    title,' was realised in ',
    released_year
    ) 
    AS 'blurb' FROM books;

