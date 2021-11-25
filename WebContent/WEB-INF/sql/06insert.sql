USE test;

SELECT * FROM Customers ORDER BY CustomerID DESC;

INSERT INTO Customers VALUES (92, 'Kim', 'Kim', 'GangNam', 'Seoul', '88888', 'Korea');

INSERT INTO Customers (CustomerID, CustomerName) VALUES (93, 'Lee');

INSERT INTO Customers (CustomerID, ContactName) VALUES (94, 'Choi');

INSERT INTO Customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (95, 'Park', 'JiSung', 'Yeoksam', 'Seoul', '77777', 'Korea');

-- 96번째, 97번째 records 추가 sql 작성, 실행
INSERT INTO Customers (CustomerName) VALUES ('Cha');

INSERT INTO Customers (CustomerID, CustomerName) VALUES (97, 'Son');
INSERT INTO Customers (CustomerID, CustomerName) VALUES (97, 'Ji');

INSERT INTO Customers (CustomerName) VALUES ('jimin');
INSERT INTO Customers (CustomerName) VALUES ('bts');
INSERT INTO Customers (CustomerName) VALUES ('hot');

-- 두 개의 row(record, data)를 CustomerID 컬럼의 값을 직접 작성하지 않고 추가하는 sql 작성/실행
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('ses', 'sm', 'gangnam', 'Seoul', '33333', 'Korea');

INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('finkl', 'ds', 'samseong', 'Seoul', '22222', 'Korea');


-- 
SELECT * FROM Suppliers ORDER BY SupplierID DESC;
INSERT INTO Suppliers (SupplierName, ContactName, Address, City, PostalCode, Country, Phone)
VALUE (?, ?, ?, ?, ?, ?, ?);







