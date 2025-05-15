-- 현재 서버에 존재하는 데이터 베이스 출력
show databases;

-- 현재 데이터베이스를 employees 로 설정하기
use employees;

-- employees 데이터베이스의 테이블 목록보기
show tables;

-- employees 테이블의 열 목록 출력하기
show columns from employees;

-- titles 테이블의 데이터 출력하기
select*from titles;

-- employees 테이블에서 first_name 컬럼만 출력하기
select first_name from employees;

-- first/last_name, gender 출력하기
select first_name, last_name, gender from employees;

-- first_name, gender, hire_date 출력하기
select first_name, gender,hire_date from employees;
