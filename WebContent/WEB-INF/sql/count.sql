use test;

-- mysql 함수
-- count : 개수
-- Customers 테이블의 row수를 보고 싶다

SELECT count(*) FROM Customers;
select * from  Customers;

-- count할 때 유의점 null이 없을때에는 같은 값이 나오지만, null이 있는 것들은 null을 제외하고 count한다.

SELECT count(CustomerID) From Customers;
SELECT count(ContactName) From Customers;
SELECT * From Customers where ContactName is null;

SELECT count(DISTINCT Country) From Customers ;

SELECT count(DISTINCT City), count(DISTINCT Country) FROM Suppliers;
SELECT count(DISTINCT Country) FROM Suppliers;
SELECT count(DISTINCT City) FROM Suppliers;

-- join과 조합해서 써보기
