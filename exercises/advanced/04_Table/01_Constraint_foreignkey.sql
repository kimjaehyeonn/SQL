use tabledb;

drop table if exists userTBL;

create table userTBL (
    userID char(8) not null primary key,
    name varchar(10) not null,
    birthyear int not null
);

drop table if exists buyTBL;

create table buyTBL(
    num int auto_increment primary key,
    userID char(8) not null,
    prodName char(6) not null
);

ALTER Table buyTBL add foreign key(userID) references userTBL(userID);

