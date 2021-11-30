use test;

SELECT * FROM Products ORDER BY Price ASC;

SELECT MIN(Price) AS SmallListPrice FROM Products ;
SELECT MAX(Price) Largest FROM Products ;

SELECT MIN(BirthDate) Old FROM Employees;
SELECT MAX(BirthDate) Lately FROM Employees;

-- 쿼리 안에 쿼리(nested query, subquery)
SELECT * FROM Employees
WHERE BirthDate = (SELECT MIN(BirthDate) Old FROM Employees);
-- 주의  : = 연산자 쓸때는 서브쿼리 결과는 단일결과가 나와야함.
-- => 여러 레코드가 나오면 안됨 

SELECT LastName, FirstName FROM Employees
WHERE BirthDate = (SELECT MAX(BirthDate) FROM Employees);

SELECT ProductName, Price FROM Products
WHERE Price= (SELECT MAX(Price) FROM Products);

SELECT ProductName, Price FROM Products
WHERE Price= (SELECT MIN(Price) FROM Products);







