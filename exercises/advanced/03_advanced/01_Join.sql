use sqldb;
-- 3 테이블을 이용해서 학생을 기준으로 학생 이름/ 지역/가입한 동아리/동아리방을 출력하세요
select st.stdname, st.addr, stcb.clubName, cb.roomNo
from stdtbl as st
         join stdclubtbl as stcb on st.stdname = stcb.stdName
         join clubtbl as cb on stcb.clubname = cb.clubname
order by st.stdName;

-- 동아리를 기준으로 가입한 학생의 목록을 출력하세요
select   cb.roomNo, stcb.clubName, st.stdname, st.addr
from stdtbl as st
         join stdclubtbl as stcb on st.stdname = stcb.stdName
         join clubtbl as cb on stcb.clubname = cb.clubname
order by cb.clubName;