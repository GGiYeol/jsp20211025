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
-- seafood가 몇번 주문되었는지 조회

SELECT count(DISTINCT CustomerName)
FROM Customers c JOIN Orders o on c.CustomerID = o.CustomerID 
JOIN Shippers s on s.ShipperID = o.ShipperID
JOIN OrderDetails od on o.OrderID = od.OrderID
JOIN Products p on od.ProductID = p.ProductID
JOIN Categories ct on ct.CategoryID = p.CategoryID
where CategoryName = 'Seafood';

SELECT count(*) FROM OrderDetails od JOIN Products p on od.ProductID = p.ProductID
									 JOIN Categories ct on p.CategoryID = ct.CategoryID
                                     where ct.CategoryName ='Seafood';

SELECT c.CustomerID, c.CustomerName
FROM Customers c JOIN Orders o on c.CustomerID = o.CustomerID 
JOIN Shippers s on s.ShipperID = o.ShipperID
JOIN OrderDetails od on o.OrderID = od.OrderID
JOIN Products p on od.ProductID = p.ProductID
JOIN Categories ct on ct.CategoryID = p.CategoryID
where CategoryName = 'Seafood';                                     
SELECT * FROM Customers;

