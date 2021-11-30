USE test;

-- INSERT INTO 배우기

SELECT * FROM Customers ORDER BY CustomerID DESC;
SELECT * FROM Suppliers ORDER BY SupplierID DESC;

-- 레코드, 행 데이터 같은말임
INSERT INTO Customers VALUES(92, 'kim', 'Kim', 'gangnam', 'seoul', '88888', 'Korea');

INSERT INTO Customers (CustomerID, CustomerName) VALUES (93,'LEE');

INSERT INTO Customers(CustomerID, ContactName) VALUES (94, 'Choi');

-- 전체 컬럼에 넣는다고 해도, 들어가는 값에 컬럼명을 명시해 주는 것이 좋다.

INSERT INTO Customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (95, 'park', 'jisung', 'yeoksam', 'Soeul', '77777', 'korea');

-- 96, 97번째 record 추가해보기

INSERT INTO Customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (96, 'PARK', 'JOOYEONG', 'sujigoo', 'suji','787878', 'korea');

INSERT INTO Customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (97, 'PARK', 'GiYeol', 'sujigoo', 'suji','787878', 'korea');
 
 -- 두개의 row(record,data)를 CustomerID컬럼의 값을 직접 작성하지 않고 추가
 
 INSERT INTO Customers(CustomerName, ContactName, Address, City, PostalCode, Country)
 VALUES('ji', 'soo', 'jongro', 'seoul','77777' ,'korea');
 
 INSERT INTO Customers(CustomerName, ContactName, Address, City, PostalCode, Country)
 VALUES('Hong', 'seojin', 'jongro', 'seoul','78787' ,'korea');
 
UPDATE Suppliers SET Address='su' WHERE SupplierID=31;
UPDATE Suppliers SET Address='gyeonggi' WHERE SupplierID=30;
UPDATE Suppliers SET SupplierName='hat san' WHERE SupplierID=30;
UPDATE Suppliers 
SET Address='gyeonggi', ContactName='suji', Country='France'
WHERE SupplierID=30;

SELECT now();