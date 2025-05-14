/*
DML (Data Manipulation Language)
-- 데이터 조작언어, 테이블에 값을 삽입, 수정, 삭제하는 SQL
*/

/*INSERT 문
  -- 새로운 행을 추가하는 구문
  -- NULL 허용 가능한 컬럼이나 auto increment 가 있는 컬럼 제외하고
  insert 하고 싶은 데이터 컬럼을 지정해서 INSERT 가능

  - PRIMARY KEY: 기본키, 유일성과 최소성을 만족 해당 행을 식별할 때 사용되는 값
  */

INSERT INTO employees VALUES (1, 20250514, '재현', '김', 'M', 20250514);

-- 컬럼을 명시하면 INSERT 시 데이터의 순서 변경이 가능
INSERT INTO employees(EMP_NO, BIRTH_DATE,  LAST_NAME,FIRST_NAME, GENDER, HIRE_DATE)
VALUES
    (2, 20250514, '볶이', '떡', 'M', 20250514);

-- 여러 컬럼을 한번에 insert
INSERT INTO employees(EMP_NO, BIRTH_DATE,  LAST_NAME,FIRST_NAME, GENDER, HIRE_DATE)
VALUES
    (3, 20250514, '대', '순', 'M', 20250514),
    (4, 20250514, '면', '라', 'M', 20250514);

-- update
-- 테이블에 기록된 컬럼의 값을 수정하는 구문

select * from employees where last_name = '면';
update employees  -- employees 테이블을 업데이트 할거다
set -- 이렇게 바꿀거다
    last_name = '볶이',
    first_name= '라면'
where -- 여기에 해당하는 얘만
    last_name = '면';

update employees set last_name = '두', first_name ='만' where first_name= '순';


-- Delete
-- 테이블의 행을 삭제하는 구문
delete from employees where first_name ='김';

-- replace
-- insert 할때 primary key 혹은 unique key가 충돌될 경우 해당 행에 덮어씌우기
replace INTO employees(EMP_NO, BIRTH_DATE,  LAST_NAME,FIRST_NAME, GENDER, HIRE_DATE)
VALUES
    (2, 20250514, '만두', '떡', 'M', 20250514);
