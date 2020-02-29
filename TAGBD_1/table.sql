create database if not exists PS_GRIS_2020;

use PS_GRIS_2020;

create table [if not exists] people
(
	`id` int autoincrement primary key ,
	`name` varchar(200) not null ,
	`date` date ,
	`DRE` char(12) not null ,
	`course` char(50) not null ,
) engine=innodb;

create table [if not exists] students
(
	`id2` int autoincrement ,
	primary key (id2),
	foreign key (id),
		references people (id)
) engine=innodb;

create table [if not exists] speakers
(
	`speakers_id` int autoincrement ,
	primary key (speakers_id),
	foreign key (id),
		references people (id)
) engine=innodb;

create table [if not exists] tag
(
	`tag_id` int autoincrement ,
	primary key (tag_id),
	`description` text ,
	`task_delivery` date not null ,
	foreign key (speakers_id),
		references speakers (speakers_id)
) engine=innodb;
