use test;

-- 3개 테이블 조인(orders, customers, employees)

SELECT c.CustomerName, o.OrderDate, o.EmployeeID, e.LastName , e.FirstName
FROM Customers c JOIN Orders o on c.CustomerID = o.CustomerID
JOIN Employees e on o.EmployeeID = e.EmployeeID
ORDER BY 1;

-- 조인 순서가 중요한가?
-- inner조인은 순서가 중요하지 않음. outer 조인은 순서가 중요함

-- 어떤 고객이 어떤 배송자(shipper)를 사용했는지 조회
-- 고객명, 주문날짜, 배송자명, 배송자 전화번호를 select
-- 사용할 테이블 : customers, orders, shippers

SELECT * FROM Customers;
SELECT * FROM Orders;
SELECT * FROM Shippers;

SELECT c.CustomerName, o.OrderDate, s.ShipperName, s.Phone
FROM Customers c JOIN Orders o on c.CustomerID = o.CustomerID 
JOIN Shippers s on s.ShipperID = o.ShipperID
ORDER BY Phone ;

-- 주문 상세 내용도 추가 조회
SELECT c.ContactName, o.OrderDate, od.ProductID, ct.CategoryName, p.ProductName, od.Quantity, s.ShipperName, s.Phone
FROM Customers c JOIN Orders o on c.CustomerID = o.CustomerID 
JOIN Shippers s on s.ShipperID = o.ShipperID
JOIN OrderDetails od on o.OrderID = od.OrderID
JOIN Products p on od.ProductID = p.ProductID
JOIN Categories ct on ct.CategoryID = p.CategoryID
ORDER BY ContactName ;









