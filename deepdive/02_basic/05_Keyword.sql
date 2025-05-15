/*
DISTINCT
 - 중복값을 제거하는데 사용
 - null도 하나의 종류
*/

select*from usertbl;

select distinct addr
from usertbl;

/*Limit
  - Select 문의 겨과 집합에서 반환할 행의 수를 제한

Select
  컬럼명
from
  테이블명
Limit  [offset -- 시작할 행의 번호 ][rowcount -- 반환할 행의 개수]
Limit  rowcount;
  */

