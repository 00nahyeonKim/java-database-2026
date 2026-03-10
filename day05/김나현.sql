1. 
select e.EMP_NAME, d.DEPT_NAME
	from EMP e, DEPT d
	WHERE e.DEPT_ID = d.DEPT_ID

2.
SELECT emp_name, SALARY
	FROM emp
		wHERE dept_id = 10;

3.
SELECT dept_id, count(dept_id) AS emp_count
	FROM emp
	GROUP by(dept_id);

4.
SELECT emp_name, salary
	FROM EMP
	WHERE salary > (SELECT avg(salary) FROM emp);

5.
SELECT t.emp_name, p.proj_name
	FROM (SELECT e.emp_name, d.proj_id
			FROM emp e, emp_project d
			WHERE e.EMP_ID = d.EMP_ID) t, PROJECT p
	WHERE t.proj_id = p.proj_id;