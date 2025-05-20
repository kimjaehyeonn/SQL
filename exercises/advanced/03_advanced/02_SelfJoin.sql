use sqldb;

-- selfjoin
show columns from emptbl;

select a.emp as 부하직원 , a.manager as 직속상관 , b.empTel as 직속상관연락처
from emptbl as a
         join emptbl as b on a.manager= b.emp
where a.emp = '우대리';
