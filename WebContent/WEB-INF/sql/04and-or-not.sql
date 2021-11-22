SELECT * FROM Customers WHERE CustomerID < 10;

SELECT * FROM Customers WHERE Country = 'Mexico';

-- AND : 두 조건 모두 만족
SELECT * FROM Customers WHERE CustomerID < 10 AND Country = 'Mexico';

-- Customers 테이블에서 Country 가 Germany 이고 City가 Berlin 인 행 조회
SELECT * FROM Customers WHERE Country = 'Germany' AND City = 'Berlin';

-- Customers 테이블에서 Country 가 Germany 이고 City가 Berlin 인 행의 CustomerName 조회
SELECT CustomerName FROM Customers WHERE Country = 'Germany' AND City = 'Berlin';

-- OR : 두 조건 중 하나만 만족
SELECT * FROM Customers WHERE City = 'Paris' OR Country = 'UK';


-- Customers 테이블에서 Country 가 Germany 이거나 Country 가 Spain 인 행 조회
SELECT * FROM Customers WHERE Country = 'Germany' OR Country = 'Spain';

-- NOT : 조건에 해당하지 않은 것
SELECT * FROM Customers WHERE NOT Country = 'UK';

-- Customers 테이블에서 Country 가 Germany 가 아닌 행 조회(NOT 키워드 사용)
SELECT * FROM Customers WHERE NOT Country = 'Germany';

-- 나라는 독일이고 도시는 베를린 또는 뮌헨
SELECT * FROM Customers
WHERE Country='Germany' AND (City='Berlin' OR City='München');

-- 나라는 독일이고 도시는 베를린이나 뮌헨이 아닌 행 조회
SELECT * FROM Customers
WHERE Country='Germany' AND NOT (City='Berlin' OR City='München');
SELECT * FROM Customers
WHERE Country='Germany' AND (City != 'Berlin' AND City != 'München');

-- 나라가 독일과 미국이 아닌 행 조회
SELECT * FROM Customers
WHERE NOT Country='Germany' AND NOT Country='USA';

-- 나라가 독일이거나 미국인 행 조회
SELECT * FROM Customers 
WHERE Country = 'Germany' OR Country = 'USA';

SELECT * FROM Customers
WHERE NOT Country!='Germany' OR NOT Country!='USA';










