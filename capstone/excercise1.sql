-- Challenge 1
select 
date_format(min(created_at),'%M %D %Y')
as earliest_date 
from users;

-- Challenge 2
select 
email,
min(created_at)
as earliest_date 
from users
where created_at = (
select min(created_at) 
    from users
);

-- Challenge 3
SELECT 
MONTHNAME(created_at) as month,
COUNT(*) as count
FROM users
GROUP BY month
ORDER BY count DESC;

-- Challenge 4
select count(*) as 'Yahoo users' from users 
where email like '%@yahoo%';

-- Challenge 5
SELECT 
CASE
WHEN email LIKE '%@gmail.com' THEN 'gmail'
WHEN email LIKE '%@yahoo.com' THEN 'yahoo'
WHEN email LIKE '%@hotmail.com' THEN 'hotmail'
ELSE 'other'
END AS provider,
COUNT(*) AS total
FROM users
GROUP BY provider
ORDER BY total DESC;


DELETE FROM follows WHERE follower_id=2 AND followee_id = 1;
