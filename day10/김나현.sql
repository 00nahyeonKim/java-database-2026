SELECT * FROM bookstbl;
SELECT * FROM divtbl;
SELECT * FROM membertbl;
SELECT * FROM rentaltbl;


-- 1번
SELECT m.idx 대여번호, m.names 회원명, b.names 책제목, r.rentaldate 대여일
FROM MEMBERtbl m
JOIN rentaltbl r ON m.idx = r.memberidx
JOIN bookstbl b ON r.idx = b.idx
WHERE r.returndate IS NULL;

-- 2번
SELECT d.division 분류코드, d.names 분류명, COUNT(b.division) 도서수
FROM divtbl d
LEFT JOIN bookstbl b ON d.division = b.division
GROUP BY d.division, d.names;

-- 3번
SELECT b.idx 책번호, b.names 책제목, count(r.bookidx) 대여횟수
FROM bookstbl b, rentaltbl r
WHERE b.idx = r.bookidx
GROUP BY b.idx, b.names
ORDER BY count(r.bookidx) desc, b.idx ASC;

-- 4번
SELECT m.idx 회원번호, m.names 회원명, m.levels 등급, count(r.bookidx) 대여횟수
FROM membertbl m, rentaltbl r
WHERE m.idx = r.memberidx
GROUP BY m.idx, m.names, m.levels
having(count(r.bookidx) > 1)
ORDER BY m.idx;

-- 5번
SELECT r.idx 대여번호, m.names 회원명, b.names 책제목, r.rentaldate 대여일, r.returndate 반납일
FROM rentaltbl r join bookstbl b on r.bookidx = b.idx
JOIN MEMBERtbl m on r.memberidx = m.idx
WHERE r.rentaldate > r.returndate;