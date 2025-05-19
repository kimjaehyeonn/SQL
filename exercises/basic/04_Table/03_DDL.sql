use tabledb;

drop table if exists usertbl;
drop table if exists buytbl;

create table usertbl (
    userID char(8) not null ,
    name varchar(10) not null,
    birthyear int not null,

    -- constraint : 제약조건을 명시적으로 이름붙여 정의
    -- primary key 기본키제약조건이름 (기본키로지정할컬럼)
    constraint primary key PK_userTBL_userID(userID)
);

drop table if exists prodTbl;
create table prodTbl (
    prodCode char(3) not null,
    prodID char(4) not null,
    prodDate date not null,
    proCur char(10),

    constraint primary key PK_prodTbl_prodCode_prodId(prodCode, prodID)
)