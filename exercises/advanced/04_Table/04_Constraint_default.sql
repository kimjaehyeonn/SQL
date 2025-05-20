 use tabledb;

drop table if exists usertbl;

create table usertbl (
    userID char(8) not null primary key,
    name varchar(10) not null,
    birthyear int not null default -1,
    addr char(2) not null default '서울',
    mobile1 char(3),
    mobile2 char(8),
    height smallint default 170,
    mDate date
);

-- 기본값 추가 확인용 데이터 추가
insert into usertbl(userid,name ) values ('exericse', 'kim');

select *from usertbl;

-- mobile1 column 삭제
ALTER table usertbl drop column mobile1;

select*from usertbl;

-- name 컬럼 uName으로 변경
Alter table usertbl change column name uName varchar(10) not null;

select *from usertbl;

-- 기본키 제거
ALTER table usertbl drop primary key;
desc usertbl;

