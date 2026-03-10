-- DML 계속
SELECT *
	FROM emp_temp;

-- INSERT
INSERT INTO emp_temp (empno, ename, job, mgr, hiredate, sal, comm, deptno)
VALUES (9999, '홍길동', 'PRESIDENT', NULL, '2001-01-01', 5000, 1000, 10);

-- 날짜 포맷이 다르면 날짜함수로 변경해주면 됨
INSERT INTO emp_temp (empno, ename, job, mgr, hiredate, sal, comm, deptno)
VALUES (9999, '홍길순', 'CFO', 9999, to_date('02/01/2001', 'mm/dd/yyyy'), 5000, 1000, 10);

INSERT INTO emp_temp (empno, ename, job, mgr, hiredate, sal, comm, deptno)
SELECT e.EMPNO, e.ENAME, e.JOB, e.MGR, e.HIREDATE, e.SAL, e.comm, e.DEPTNO
	FROM EMP e, SALGRADE s
	WHERE e.SAL BETWEEN s.LOSAL AND s.HISAL
	AND s.grade = 1;