drop database if exists shopdb;
create database shopdb;
use shopdb;
create table memberTBL
(
    memberId      char(8) not null,
    memberName    char(5) not null,
    memberAddress char(20)
);

create table productTBL
(
    productName char(4) not null,
    cost        int     not null,
    makeDate    date,
    company     char(5),
    amount      int     not null
);

insert into memberTBL
values ('Dang',
        '당탕이', '경기 부천시 중동'),
       ('Jee', '지운이', '서울 은평구 증산동'),
       ('Han', '한주연', '인천 남구 주안동'),
       ('Sang', '상길이', '경기 성남시 분당구');

insert into productTBL values ('컴퓨터', 10,'2021-01-01','삼성',17),
                              ('세탁기', 20,'2022-09-01','LG',3),
                              ('냉장고',5,'2023-02-01','대우',22);
-- memberTBL 데이터 추가
insert into memberTBL value ('Kim','김','사랑시 고백구 행복동');

select *from memberTBL;

-- 앞에서 추가한 데이터 삭제
delete from memberTBL where memberId='Kim';

-- productTBL 데이터 출력
select *from productTBL;
-- memberTBL 데이터 출력(name, address)
select memberName, memberAddress from memberTBL;

-- memberTBL에서 '지운이'만 출력
select*from memberTBL where memberName='지운이';
