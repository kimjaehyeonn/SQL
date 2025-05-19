drop database if exists tabledb;

create database tabledb;
use tabledb;


drop table if exists usetbl;
-- create usertbl(부모테이블)
create table usetbl
(
    -- 컬럼 타입 제약조건
    userId    char(8)     not null primary key,
    name      varchar(10) not null,
    birthyear int         not null,
    addr      char(2)     not null,
    mobile1   char(3),
    mobile2   char(8),
    hegiht    smallint,
    mDate     date
);

select *
from usetbl;
drop table if exists buytbl;

-- create buytbl(자식테이블)
create table buytbl
(
    -- 컬럼 타입 제약조건
    num       int auto_increment primary key,
    userId    char(8)  not null,
    prodName  char(6)  not null,
    groupName char(4),
    price     int      not null,
    amount    smallint not null,

    -- foreign key (자식테이블명 ) references [부모테이블명] (참조컬럼)
    foreign key (userId) references usetbl (userId)
);

