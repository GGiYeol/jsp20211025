SELECT * FROM Customers;

-- where  :  조건에 해당되는 행(row, record)만 필터ALTER

SELECT * FROM Customers WHERE Country = 'Brazil'; -- sql 에서 문자열은 작은 따옴표 사용.

-- Coustomers 테이블에서 Country가 France인 행만 조회

SELECT * FROM Customers WHERE Country = 'France';

SELECT * FROM Customers where Country = 'USA' ORDER BY CustomerName;