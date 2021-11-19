-- Structured Qeury Language(SQL)
-- 구조화된 질의 언어
-- 한 줄 주석
-- sql 회사마다 문법이 다른데 크게 다르지 않음

-- 하나의 명령문은 세미콜론으로 끝남
-- 하나의 명령문을 실행하는 방법은
-- 커서를 명령문안(또는 맨 끝) 에 두고 ctrl + enter
-- 
USE test;

SELECT now();

-- sql은 대소문자 구분을 안함(단 벤더나 버전에 따라 다를 수 있음)
-- sql 작성 관습 : 키워드는 대문자로 작성
SELECT NOW();

SELECT * FROM Categories;
SELECT * FROM Customers;
SELECT * FROM Employees;
SELECT * FROM OrderDetails;
SELECT * FROM Orders;
SELECT * FROM Products;
SELECT * FROM Shippers;
SELECT * FROM Suppliers;

