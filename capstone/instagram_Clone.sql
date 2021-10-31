create database ig_clone;

use ig_clone;

create table users (
id int auto_increment primary key ,
    user_name varchar(255) unique not null,
    created_at timestamp default now()
);



create table photos (
    id integer auto_increment primary key,
    image_url varchar(255) not null,
    user_id integer not null,
    created_at timestamp default now(),
    foreign key (user_id) references users(id)
);




create table comments (
	id int auto_increment primary key,
	comment_text varchar(255) not null,
	user_id int not null,
	photo_id int not null,
	created_at timestamp  default now(),
	foreign key (user_id) references users(id),
	foreign key (photo_id) references photos(id)
);


-- Sets two fields as primary key
-- user_id and photo_id
-- NB : - Notice no id since we will not use it
create table likes (
	user_id int auto_increment not null,
	photo_id int not null,
	created_at timestamp default now(),
	foreign key (user_id) references users(id),
	foreign key (photo_id) references photos(id),
	primary key(user_id,photo_id)
);

-- Creates table for follows
-- Notice the logic of follow and followee 
-- implementation use primary key to ensure unique
-- NB : - Notice no need for id
create table follows (
	follower_id int not null,
	followee_id int not null,
	created_at timestamp default now(),
	foreign key (follower_id) references users(id),
	foreign key (followee_id) references users(id),
	primary key (followee_id,follower_id)
);

-- tags names
create table tag (
	id integer auto_increment primary key,
	tag_name varchar(255) unique not null,
	created_at timestamp default now()
);

-- photo tags
create table photo_tag (
	photo_id integer not null,
	tag_id integer not null,
	foreign key (photo_id) references photos(id),
	foreign key (tag_id) references tag(id),
	primary key (photo_id,tag_id)
);



