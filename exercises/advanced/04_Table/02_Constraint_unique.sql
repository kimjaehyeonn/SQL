use tabledb;

drop table if exists buyTBL;
drop table if exists userTBL;

create table userTBL (
    userID char(8) not null primary key,
    name varchar(10) not null,
    birthyear int not null,
    email char(30),
    unique (email)           -- 테이블 수준 unique 제약조건
    -- email char(30) unique -- 컬럼 수준 unique 제약조건
    -- email char(30) null unique
)