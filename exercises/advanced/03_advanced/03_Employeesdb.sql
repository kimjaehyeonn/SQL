use employees;
show table status;
show columns from employees;

select *
from titles;

-- 현재 재직 중인 직원의 정보를 출력한다.
select a.emp_no, a.first_name, a.last_name, b.title
from employees as a
         join titles as b on a.emp_no = b.emp_no
where b.to_date = '9999-01-01';

-- 현재 재직 중인 직원 정보를 출력하세요
select a.emp_no,
       a.birth_date,
       a.first_name,
       a.last_name,
       a.gender,
       a.hire_date,
       b.title,
       c.salary
from employees as a
         join titles as b on a.emp_no = b.emp_no
         join salaries as c on a.emp_no = c.emp_no
where b.to_date = '9999-01-01'
  and c.to_date = '9999-01-01';
-- c.to_date도 조건 필요. 안그러면 과거 연봉도 함께 조회됨.


-- 현재 재직 중인 직원의 정보를 출력하세요.
select a.emp_no, a.first_name, a.last_name, c.dept_name
from employees as a
         join dept_emp as b on a.emp_no = b.emp_no
         join departments as c on b.dept_no = c.dept_no
where b.to_date = '9999-01-01'
order by a.emp_no;

-- 부서별 재직중인 직원의 수를 출력하세요
select a.dept_no, a.dept_name, count(b.emp_no)
from departments as a
         join dept_emp as b on a.dept_no = b.dept_no
where b.to_date = '9999-01-01'
group by a.dept_no
order by a.dept_no;


-- 직원번호가 10209인 직원의 부서 이동 히스토리를 출력하세요
select a.emp_no, a.first_name, a.last_name, b.dept_name, c.from_date, c.to_date
from employees as a
         join dept_emp as c on a.emp_no = c.emp_no
         join departments as b on c.dept_no = b.dept_no
where a.emp_no = 10209;