use sqldb;
show table status;
select *
from usertbl;

-- 사용자별 구매이력 출력
select *
from buytbl as b
         inner join usertbl as u
                    on b.userID = u.userID;

-- 그 중 userid 'jyp'
select *
from buytbl as b
         inner join usertbl as u
                    on b.userID = u.userID
where b.userID = 'jyp';

-- userid, name, prodname, addr, 연락처
select u.userID, u.name, b.prodName, u.addr, concat(u.mobile1, u.mobile2) as 연락처
from buytbl as b
         join usertbl as u on b.userID = u.userID
order by userID asc;


-- sqldb의 사용자 모두 조회하되 전화 없는 사람 제외
select *
from  usertbl as u
where u.mobile1 is not null or u.mobile2 is not null;

-- sqldb의 사용자 모두 조회하되 전화 없는 사람만 출력
select *
from  usertbl as u
where u.mobile1 is null or u.mobile2 is null;

