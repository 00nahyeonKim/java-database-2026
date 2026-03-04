-- 문자열 함수
-- 대문자, 소문자, 첫글자만 대문자 변환 함수
SELECT c.CUST_NAME, lower(c.CUST_NAME) AS 고객명, INITCAP(lower(c.CUST_NAME)) AS 고객명, c.city, upper(c.CITY)
	FROM CUSTOMER c;

-- where절에도 사용가능
SELECT *
	FROM CUSTOMER c
	WHERE LOWER(c.CITY) = 'seoul';

-- 문자열 길이
SELECT city, length(city) AS "글자길이"
	FROM CUSTOMER c;

-- 문자열 추출
SELECT emp_name, substr(emp_name, 4, 1)
	FROM employee;

-- 문자열에서 찾기
SELECT INSTR('HELLO, ORACLE!', 'L') AS "첫번째 L위치"
	 , INSTR('HELLO, ORACLE!', 'L', 5) AS "5번째 이후 L위치"
	 , INSTR('HELLO, ORACLE!', 'L', 2, 2) AS "2번째 이후 두 번째 나타나는 L위치"
	FROM dual;

-- 문자열 교체
SELECT replace('Oh, Hello Oracle!', 'Hello', 'HEEL') AS "변경된 문자열"
	FROM dual;

SELECT LPAD('Matrix', 20, '#')
	FROM dual;

-- 두 문자열 합치기
SELECT concat('Hello ', 'World')
	FROM dual;

-- 공백 제거
SELECT TRIM('            Marvel Universe         ')
	 , LTRIM('            Marvel Universe         ')
	 , RTRIM('            Marvel Universe         ')
	 FROM dual;

SELECT 1 AS "같아요"
	FROM dual
	WHERE 'Hello World' = TRIM('         Hello World  ')
	
-- 숫자함수
SELECT round(1234.3456)
	 , TRUNC(1234.3456, 3)
	 , CEIL(3.14)
	 , FLOOR(3.14)
	 , MOD(10, 2)
	 FROM dual;