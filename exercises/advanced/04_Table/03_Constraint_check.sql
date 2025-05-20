use tabledb;

drop table if exists usertbl;

create table userTBL (
    userID char(8) not null primary key,
    name varchar(10),
    birthYear int check (1900<= birthYear and 2023>= birthYear ),
    mobile char(3) not null
)