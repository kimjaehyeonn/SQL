use world;
show table status;

-- 국가코드 'kor'찾고 인구수  역순으로 표시
select *from city where CountryCode ='KOR' order by Population desc;

-- city 테이블 국가코드와 인구수 출력
select CountryCode, Population from city order by CountryCode asc, Population desc;

-- 국가코드가 'KOR' 인 도시 개수 구하기
select count(*) from city where CountryCode ='KOR';

-- 국가코드 'kor', 'chn', 'jpn'
select name from city where CountryCode in ('KOR','CHN','JPN');

-- 국가 코드가 'KOR' 이면서 인구수  100 만 이상인 도시
select name from city where CountryCode ='KOR' and Population>=1000000;

-- 국가 코드가 'KOR'인 도시 중 인구 수 상위 10개 도시
select name from city where CountryCode ='KOR' order by Population desc limit 10;;

-- 국가 코드가 'KOR' 이면서 인구수  100 만 ~500만  이하인 도시
select*from city where CountryCode ='KOR' and Population between 1000000 and 5000000;
