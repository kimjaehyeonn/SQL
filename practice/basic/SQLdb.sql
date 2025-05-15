use sqldb;

-- 김경호 출력하기
select*from usertbl where name = '김경호';

-- 생년 1970 이상, 키 182 이상 출력하기
select *from usertbl where birthYear >= 1970 and height >=182;

-- 키 180 ~ 183 범위 출력하기
select*from usertbl where height between 180 and 183;

-- 주소가 '전남' or '경남' or '경북' 출력하기
select *from usertbl where addr in ('전남','경남','경북');

-- '김'으로 시작하는 사람 출력하기
select *from usertbl where name like '김%';

-- 김경호 보다 키큰 사람들의 이름과 키 출력하기
select name, height from sqldb.usertbl where height > All
(select height from usertbl where name ='김경호');

-- usertbl을 mdate의 오름차순으로 정렬
select*from usertbl order by mDate;

-- usertbl을 mdate의 내림차순으로 정렬
select*from usertbl order by mDate desc ;

-- usetbl을 height의 내림차순으로 정렬하고,
-- 동률인 경우 name의 내림차순으로 정렬하여 출력
select*from usertbl order by height desc, name desc;

-- usertbl의 주소지를 중복없이 오름차순으로 정렬
select distinct addr from usertbl order by addr asc;
