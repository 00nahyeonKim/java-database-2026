-- 날짜 출력
SELECT sysdate AS now
	 , sysdate - 1 AS "내일-날짜"
	 , sysdate + 1 AS tomorrow
	FROM dual;

-- 달을 증가시키는 함수
SELECT sysdate AS "current"
	 , ADD_MONTHS(sysdate, 2) AS "3monthlater"
	FROM dual;

-- 입사 10주년이 되는 사원 조회
SELECT EMP_ID, EMP_NAME, HIRE_DATE
	 , ADD_MONTHS(HIRE_DATE, 120) AS "anniversal10Years"
	FROM employee
	
-- 두 날짜간의 개월 수 차이
-- 우리회사 가장 입사 오래된 직원과 가장 최근 입사한 직원사이 개월수
SELECT min(HIRE_DATE), max(HIRE_DATE)
	 , MONTHS_BETWEEN(MAX(HIRE_DATE), MIN(HIRE_DATE)) AS "OldestbetwNewest"
	FROM EMPLOYEE
	
-- 돌아오는 요일, 달의 마지막 날짜 구하기
SELECT sysdate
	 , NEXT_DAY(sysdate, '화요일')
	 , last_day(ADD_MONTHS(sysdate, -1))
	FROM dual;

/* 형변환 */
SELECT EMP_ID, EMP_NAME, EMP_ID + '500'
	FROM EMPLOYEE
	
-- TO_CHAR() 날짜, 숫자 데이터를 문자 데이터 변환
SELECT TO_CHAR(current_date, 'YYYY/MM/DD HH24:MI:SS') AS "현재일시"
	FROM dual;

SELECT 1300 + '1500'
	FROM DUAL;

