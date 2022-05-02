use codeup_test_db;
create table if not exists  users
(
    id int unsigned not null auto_increment,
    username VARCHAR(100) not null ,
    email varchar(255) not null ,
    first_name varchar(255) not null ,
    last_name varchar(255) not null,
    middle_name varchar(255),
    primary key (id)
);

create table if not exists cats
(
    id int unsigned not null auto_increment primary key ,
    breed varchar(255) not null ,
    age int unsigned not null ,
    name varchar(255)
);

show  tables ;

describe  cats;

drop table if exists cats;

insert into users( username, email, first_name, last_name, middle_name)
values('mendozaR', 'ryanmendoza.00@gmail.com', 'Ryan', 'Mendoza', 'Alexis'),
       ('joejoe', 'joe@joe.com', 'joe', 'joe', null);

select id, username, email
from users;

select *
from users
where id >1;