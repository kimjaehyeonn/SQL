show databases;
use world;
show table status ;
show columns from world.city;

-- city 테이블에서 국가코드가 'KOR' 인 도시들의 인구수 총합을 구하시오
select sum(population) from city where CountryCode= 'kor';

-- city 테이블에서 국가코드가 'kor'인 도시들의 인구수 중 최소값을 구하시오
select min(population) as `최솟값` from city where CountryCode='kor';

-- city 테이블에서 국가코드가 'kor'인 도시들의 평균
select avg(population) from city where CountryCode= 'kor';

-- city 테이블에서 국가코드가 'kor'인 도시들의 인구수 중 최대ㅈ값을 구하시오
select max(population) as `최대값` from city where CountryCode='kor';

-- country 테이블 각 레코드의 name 칼럼의 글자수 표기 --> char_length()
select *
from country;

select char_length(Name)
from country;

-- country 테이블의 나라명을 앞 세글자만 대문자로 표시하시오
select concat(substring(upper(name),1,3),substring(name,4)) from country;
-- SELECT CONCAT(UPPER(LEFT(name, 3)), MID(name, 4)) FROM country;

-- country 테이블에서 기대수명을 소수점 첫째자리에서 반올림해서 표시하시오
select round(LifeExpectancy)
from country ;
