-- scott 계정!
-- 부서번호와 직군별 그룹화
SELECT DEPTNO, job
	 , count(*)
	 , max(sal)
	 , avg(sal)
	FROM EMP
	GROUP BY deptno, JOB
	ORDER BY deptno; 
	

-- ROLLUP 함수 적용한 그룹화
SELECT DEPTNO
	 , count(*)
	 , max(sal)
	 , avg(sal)
	FROM EMP
	GROUP BY ROLLUP(deptno)
	ORDER BY deptno;

SELECT DEPTNO, job
	 , count(*)
	 , max(sal)
	 , avg(sal)
	FROM EMP
	GROUP BY ROLLUP(deptno, job)
	ORDER BY deptno;

SELECT DEPTNO, job
	 , count(*)
	 , max(sal)
	 , avg(sal)
	FROM EMP
	GROUP BY CUBE(deptno, job)
	ORDER BY deptno;