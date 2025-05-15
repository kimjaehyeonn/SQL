-- select
-- 특정 테이블에서 원하는 데이터를 조회할 수 있다.
select -- 조회해줘
    * -- 모든 칼럼을
from -- buytbl 에서
    buytbl;

select userid,groupName from buytbl;

-- 기본적인 연산 가능
select (5+5);

-- 내장함수
select now(); -- 현재시간
-- 컬럼에 별칭 사용
select concat('he' ,'ll','o' ) as '인 사'; -- 문자열 합치기

select name, concat(mobile1, mobile2)as '전화번호' from usertbl ;
