drop database if exists testdb;

create database testdb;

use testdb;

create table usertbl
(
    userID    CHAR(8)     NOT NULL PRIMARY KEY,
    name      VARCHAR(10) NOT NULL,
    birthYear INT         NOT NULL,
    addr      NCHAR(2)    NOT NULL
)

INSERT INTO usertbl VALUES
                        ('LSG', '이승기', 1987, '서울'),
                        ('KBS', '김범수', 1979, '경남'),
                        ('KKH', '김경호', 1971, '전남'),
                        ('JYP', '조용필', 1950, '경기'),
                        ('SNS', '성시경', 1979, '서울');

SHOW INDEX FROM usertbl;

ALTER table usertbl
drop primary key;

alter table usertbl
add constraint pk_name primary key (name);
select *from usertbl;