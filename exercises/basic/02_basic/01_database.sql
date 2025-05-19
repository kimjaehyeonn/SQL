-- 현재 서버에 존재하는 데이터 베이스 확인
show databases;

-- 현재 데이터베이스를 employees 로 설정하기
use employees;

-- employees 데이터베이스의 테이블 목록 보기
show tables; -- table 명 목록만
show table status; -- + 상세

-- employees  테이블의 열 목록 출력하기
show columns from employees;

-- titles 테이블의 데이터 출력하기
select*from titles;

-- employees 테이블에서 first_name 컬럼만 출력하기
select first_name from employees;

-- employee 테이블에서 first_name, last_nam,e gender 컬럼 출력
select first_name,last_name, gender from employees;

-- alias
select first_name as 이름 , gender as 성별, hire_date as `회사 입사일` from employees;
