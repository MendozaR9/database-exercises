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
