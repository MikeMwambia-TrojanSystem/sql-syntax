-- Indicate exactly one character
-- One underscore == One character
-- If you need to search out 4 characters
-- you do 4 underscore characters
select title,stock_quantity 
from books 
where stock_quantity 
like '____';

 -- Notes on Wildcards escape
 -- You use \(escape sign) to escape characters in search
 -- %\_% to escape underscore sign in data you are search
 -- %\%% to escape z% sign

 select title from books where title like '%\%%'; -- searches out a book with % sign on title