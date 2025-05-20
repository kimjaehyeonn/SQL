use sqldb;

show table status;
show columns from sqldb.buytbl;

-- buytbl에 대한 sql문 (select 집계함수 from table group by column having condition)
select userID as `사용자 아이디`, sum(amount) as `총 구매 개수`
from buytbl
group by userID;

--  집계함수( 연산 가능 )
select userID as `사용자 아이디`, sum(price * amount) as `총 구매액`
from buytbl
group by userID;

-- avg()
select avg(amount)
from buytbl;

-- avg() + group by
select userID, avg(amount) as `평균 구매개수`
from buytbl
group by userID;

-- 가장 키큰 사람, 가장 키 작은 사람
show columns from usertbl;
select *
from usertbl;

select name, height
from usertbl
where height = (select max(height) from usertbl)
   or height = (select min(height) from usertbl);

-- 휴대폰 있는 사용자
select count(mobile1) as `휴대폰이 있는 사용자`
from usertbl;

-- 사용자별 총구매액
select *
from buytbl;

select userID as 사용자, sum(price * amount) as 총구매액
from buytbl
group by userID;

-- 1000원 이상만
select userID as 사용자, sum(price * amount) as 총구매액
from buytbl
group by userID
having sum(price*amount) >= 1000;

