-- 6. Find the five most popular hashtags

SELECT tags.tag_name, 
       Count(*) AS total 
FROM   photo_tags 
       JOIN tags 
         ON photo_tags.tag_id = tags.id 
GROUP  BY tags.id 
ORDER  BY total DESC 
LIMIT  5; 






-- 7. Finding the bots - the users who have liked every single photo


    SELECT username, 
           Count(*) AS num_likes 
    FROM   users 
           INNER JOIN likes 
                   ON users.id = likes.user_id 
    GROUP  BY likes.user_id 
    HAVING num_likes = (SELECT Count(*) 
                        FROM   photos); 
