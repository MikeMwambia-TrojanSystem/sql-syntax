-- All challenges are base on the data in ig_clone_data file

-- Find the 5 users who are oldest
select * from users 
order by created_at limit 5;

-- What day of the week do most users register on
select username,DAYNAME(created_at)
from users group by created_at; 
-- The above won't work coz created_at field is unique for all records;

-- Correct is
select username,
DAYNAME(created_at) as Day,
count(*) as Total
from users
group by Day
order by Total desc;

-- We want to target our inactive users with email campaign
-- Find the users who have never posted a photo
select username,image_url from users 
left join photos
on users.id = photos.user_id
where photos.id is null;
-- Notice we tooks the null fields from the photos table
-- that was joined with users.
-- NB:- In a join you can check the combined fields of both tables
-- e.g in above you check photos.id where it's null.

-- The most liked photo on instagram
select 
username,
photos.id,
photos.image_url,
count(*) as Total
from photos
inner join likes
on likes.photo_id = photos.id
inner join users
on photos.user_id = users.id
group by photos.id
order by total desc
limit 1;

-- The individual with most photo posts
select 
username, 
count(*) as Total
from users 
inner join photos
on photos.user_id = users.id
group by users.id
order by Total desc;

-- Calculate average number of photos per user
-- total number of photos / total number of users
select (select count(*) from photos) / (select count(*) from users) as 'Average posts';

-- 5 most common hash tags
-- tags table and photo_tags table
select 
tags.tag_name,
count(*) as Tag_count
from photo_tags
inner join tags
on tags.id = photo_tags.tag_id
group by photo_tags.tag_id
order by Tag_count desc 
limit 5;

-- Finding bot accounts
-- Accounts that have liked every photo

select 
username , 
user_id, 
count(*) as num_likes 
from users 
inner join likes
on users.id = likes.user_id
group by users.id
having num_likes = (select count(*) from photos);

