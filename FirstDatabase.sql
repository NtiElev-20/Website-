CREATE DATABASE if not exists supercoolmaindatabase;

Use supercoolmaindatabase;

create table if not exists userdata (
	player_id int NOT NULL AUTO_INCREMENT,
    player_name varchar(100),
    player_rating int,
    primary key (player_id)
);
create table if not exists userdatarating (
	player_rating int,
    player_name varchar(100),
    primary key (player_rating)
);

insert into userdata(player_name,player_rating) values("Carl",200);
insert into userdata(player_name,player_rating) values("Arvid",400);
insert into userdata(player_name,player_rating) values("Max",500);

select * from userdata ORDER BY player_id;

insert into userdatarating(player_name, player_rating) SELECT player_name, player_rating FROM userdata;

select * from userdatarating;

TRUNCATE TABLE userdata;
TRUNCATE TABLE userdatarating;
