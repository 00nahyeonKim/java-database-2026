-- orclstudy로 실행
CREATE TABLE sampletbl(
	st_idx NUMBER(4) PRIMARY KEY,
	content varchar2(200) NOT NULL,
	code	char(8) NOT NULL,
	reg_date DATE DEFAULT sysdate
);

SELECT * FROM sampletbl;

INSERT INTO sampletbl (st_idx, content, code)
VALUES (1, '컨텐츠에요', '00000001');