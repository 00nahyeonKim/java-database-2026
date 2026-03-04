-- 곱셈연산자
SELECT emp_name, salary, salary * 12 AS "ANNUAL", hire_date
	FROM employee
	WHERE (salary * 12) = 37248;