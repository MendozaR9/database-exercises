use  codeup_test_db;
create table if not exists albums
(
    id int unsigned not null auto_increment primary key,
    artist varchar(255) not null,
    name varchar(255) not null ,
    release_date int not null ,
    sales float not null ,
    genre varchar(255) not null
);
show create database  codeup_test_db;
describe albums;