-- tbl1
use sqldb;
create table tbl1
(
    a int primary key,
    b int,
    c int
);
/*
Table: 인덱스를 가진 테이블 이름 (tbl1)
Non_unique: 0이면 고유 인덱스 (중복 불가), 1이면 중복 허용 인덱스 ( 기본 인덱스 )
Key_name: 인덱스 이름 (PRIMARY는 기본키 인덱스)
Seq_in_index: 인덱스 내에서 컬럼의 순서 (복합키일 경우 순서를 나타냄)
Column_name: 인덱스가 걸린 컬럼 (a)
Index_type: 보통은 BTREE, 인덱스를 저장하는 자료구조

-- 참고
Comment	시스템용 자동 코멘트 (보통 비어 있음)
Index_comment	인덱스를 만들 때 사용자가 쓴 주석
Visible	인덱스를 옵티마이저에서 숨길 수 있는지 여부
Expression	표현식 기반 인덱스일 경우의 식
*/
-- tbl1이 가지고있는 인덱스 조회
SHOW INDEX FROM tbl1;
-- --> primary index 한 생김

-- tbl2
create table tbl2
(
    a int primary key, -- a 기본키 -> 자동으로 클러스터형(PK) 인덱스 생성 (중복불가, null 불가)
    b int unique,      -- b 유니크 키 -> UNIQUE 인덱스 생성 (중복불가, null 허용)
    c int unique,      -- c 유니크 키 -> UNIQUE 인덱스 생성 (중복불가, null 허용)
    d int
);

SHOW INDEX FROM tbl2;
-- --> primary , b(unique), c(unique) 3개 생김


-- tbl3

create table tbl3 (
                      a int unique , -- a 유니크 키 -> UNIQUE 인덱스 생성 (중복불가, null 허용)
                      b int unique , -- b 유니크 키 -> UNIQUE 인덱스 생성 (중복불가, null 허용)
                      c int unique , -- c 유니크 키 -> UNIQUE 인덱스 생성 (중복불가, null 허용)
                      d int
);
X FROM tbl3;
-- --> a(unique), b(unique), c(unique)  3개 생김

-- tbl4
create table tbl4 (
    -- mysql의 innoDB의 경우 테이블에 pk가 없을경우
    -- not null + unique 제약조건이 있는 첫번째 컬럼을 클러스트형 인덱스로 삼는다.
    -- not null + unique 제약조건의 컬럼이 없을경우 내부적으로 숨겨진 시스템 행 id를 사용한다.
                      a int unique not null ,
                      b int unique , -- b 유니크 키 -> UNIQUE 인덱스 생성 (중복불가, null 허용)
                      c int unique , -- c 유니크 키 -> UNIQUE 인덱스 생성 (중복불가, null 허용)
                      d int
);
SHOW INDEX FROM tbl4;
-- --> a(unique), b(unique), c(unique)  3개 생김


-- tbl5
create table tbl5

create table tbl5 (
                      a int unique not null ,
                      b int unique , -- b 유니크 키 -> UNIQUE 인덱스 생성 (중복불가, null 허용)
                      c int unique , -- c 유니크 키 -> UNIQUE 인덱스 생성 (중복불가, null 허용)
                      d int primary key -- > PRIMARY 클러스터형 인덱스 설정
);

SHOW INDEX FROM tbl5;
-- --> a(unique), b(unique), c(unique), primary(d) 4개 생김

