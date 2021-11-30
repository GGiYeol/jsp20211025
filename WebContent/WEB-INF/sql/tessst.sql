USE test;
-- test를 사용하겠다는 쿼리
-- 연습삼아 다른 스키마를 사용하고 싶다면??
CREATE DATABASE mytest1;

SELECT CustomerName FROM Customers WHERE CustomerID = 1;
SELECT CustomerName FROM Customers ;

SELECT LastName, FirstName FROM Employees;

SELECT CustomerName, ContactName, Address FROM Customers WHERE CustomerID = 1;
SELECT * FROM Employees WHERE EmployeeID = 1;
SELECT * from Customers ;

SELECT * FROM Suppliers;
-- * 썼을때, id가 맨 처음온다는 버천이 없으므로, 아이템들을 다 잘 써줘야한다.

SELECT SupplierID, SupplierName, ContactName, Address, City,PostalCode,Country,Phone FROM Suppliers;
