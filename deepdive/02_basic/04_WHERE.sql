-- Where
-- 특정 조건에 맞는 레코드(데이터)만을 선택하는데 사용됨

-- = 같음 연산자를 사용한 where 절
select *
from employees
where gender = 'M'; -- 성별이 'M'인 얘들만
-- limit 5;


select first_name, last_name -- gender 를 담지 않아도 가능
from employees
where gender = 'M' -- 성별이 'M'인 얘들만
limit 5;


select first_name, last_name, gender
from employees
where gender <> 'M' -- 성별이 'M'인 아닌 얘들만
-- where gender != 'M' -- 성별이 'M'인 아닌 얘들만
limit 5;


-- and 연산자 A and B 둘다 참일 때 true
-- or 연산자: 둘중 하나라도 true 면  true
-- And가 Or 보다 우선순위가 높다 .
-- 1: true / 0: false
select emp_no, first_name, last_name, gender
from employees
where gender != 'M'
and emp_no <'10050';

select 1 or 0 and 0;   -- 1
select (1 or 0) and 0;  -- 0


-- between  경계값 포함
select *
from employees
where emp_no >= 10050 and
      emp_no <=10060;

select *
from employees
-- where emp_no between 10050  and 10060;
where emp_no not between 10004  and 49995; -- 부정표현(경계값 포함하인고 나머지);

/* Like 연산자
- 특정 패턴과 일치하는 행을 검색

   패턴
   - %: 0개 이상의 문자를 나타냄
   ex) '%a%' -> a가 포함된 모든 문자열
   - _ : 1개의 문자를 나타냄
   ex) 'a_k' 는 a로 시작하고 k로 끝나는 세글자 문자열을 의미
- */

select first_name from employees where first_name like 'Aa%';

select first_name from employees where first_name like 'Aa__d';

/* IN 연산자
   - 특정 열의 값이 지정된 목록 중 하나와 일치하는지 확인하는데 사용
   */
select *
from employees
where emp_no in (1, 2, 3, 4, 5);
