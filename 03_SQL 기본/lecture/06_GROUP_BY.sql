/*
Group by
- 결과 집합을 특정 열의 값에 따라 그룹화 하는데 사용됨
*/
select*from salaries limit 1;

-- 직원별로 급여 횟수
select emp_no, count(*) as 횟수, avg(salary) as '급여 평균',sum(salary) from salaries group by emp_no;

/*Having
  - Group by 와 함께 사용됨
  - 그룹화된 결과에 조건을 적용할 때 사용*/
select emp_no, count(*) as 횟수, avg(salary) as '급여 평균',sum(salary)
from salaries
group by emp_no
having `급여 평균` >= 50000 and `급여 평균` <= 60000;
-- ' 로 쓰면 문자열과 비교 -> ` 백틱 사용

