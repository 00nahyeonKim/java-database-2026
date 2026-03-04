-- 현재 날짜
-- dual은 테이블이 아님
SELECT sysdate FROM dual;

-- 고객정보 조회
-- 셀렉션
SELECT * FROM EMPLOYEE;

-- 셀렉션
SELECT * FROM department;

-- 프로젝션
SELECT emp_name, SALARY FROM employee;

-- 두 테이블 조인
SELECT * FROM EMPLOYEE e
	INNER JOIN department d
		ON e.DEPT_ID = d.DEPT_ID;