use employees;

drop view employees_info;
-- EMPLOYEES INFO 뷰 만들기
create view EMPLOYEES_INFO
AS
select a.emp_no,
       a.birth_date,
       a.first_name,
       a.last_name,
       a.gender,
       a.hire_date,
       b.title,
       b.from_date as t_from,
       b.to_date   as t_to,
       c.salary,
       c.from_date as s_from,
       c.to_date   as s_to
from employees as a
         join titles as b on a.emp_no = b.emp_no and b.to_date = '9999-01-01'
         join salaries as c on b.emp_no = c.emp_no;

select *
from EMPLOYEES_INFO;

-- 재직자의 현재 정보만 출력
select*
from EMPLOYEES_INFO
where s_to = '9999-01-01';


-- emp_dept_info 뷰 만들기
create view EMP_DEPT_INFO
AS
select a.emp_no, a.dept_no, b.dept_name, a.from_date, a.to_date
from dept_emp as a
         join departments as b on a.dept_no = b.dept_no
order by a.emp_no;

select *from emp_dept_info;

-- 현직 재직자의 부서정보를 출력
select*from emp_dept_info where to_date= '9999-01-01';