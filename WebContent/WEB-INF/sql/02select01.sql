-- A 테이블의 내용을 읽을 때
-- SELECT 와 FROM 조합으로 작성하면 됨
-- SELECT : 조회할 열(columns) 조회
-- FROM : Table 명 작성

SELECT * FROM Customers; -- customers 테이블 조회
SELECT * FROM Employees; -- employees 테이블 조회

SELECT LastName, FirstName FROM Employees;

-- Customers 테이블의 Customer name, country 컬럼만 조회할 쿼리 작성

SELECT CustomerName, Country FROM Customers;
-- 모든 컬럼 조회 * 

-- 테이블 컬럼 조회(둘다 같은 명령어)
-- DESC : 컬럼, 제약 사항 등 조회
DESCRIBE Customers;
DESC Customers;

-- Categories 테이블의 컬럼을 조회
DESC Categories;