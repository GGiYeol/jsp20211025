use test;

SELECT Country, count(CustomerID) from Customers
GROUP BY Country
ORDER BY 1;

-- 나라별 supplier수 조회
SELECT Country, count(SupplierID) FROM Suppliers
GROUP BY Country
ORDER BY 1;


SELECT Country, count(CustomerID) FROM Customers 
GROUP BY Country 
ORDER BY count(CustomerID) DESC; 

SELECT count(CustomerID) FROM (SELECT Country, count(CustomerID)  FROM Customers 
GROUP BY Country 
ORDER BY count(CustomerID) DESC)
WHERE MAX(count(CustomerID));

-- 고객별 주문수 조회
-- customer, orders 
select * From Orders;
select * From OrderDetails;

SELECT CustomerID,count(OrderID) FROM Orders
GROUP BY CustomerID
ORDER BY count(CustomerID) desc;

-- 고객 이름도 같이 조회
SELECT o.CustomerID,c.CustomerName,Count(OrderID) 
FROM Orders o JOIN Customers c on o.CustomerID = c.CustomerID
GROUP BY o.CustomerID;

SELECT * FROM OrderDetails;

SELECT ProductID, OrderID, Quantity FROM OrderDetails
ORDER BY ProductID;
-- 고객별로 총 주문한 수량을 조회(id + 수량)

SELECT o.CustomerID, Count(od.Quantity)
FROM Orders o JOIN OrderDetails od on o.OrderID = od.OrderID
GROUP BY o.CustomerID
ORDER BY o.CustomerID;

SELECT o.CustomerID, o.OrderDate
FROM Orders o
GROUP BY o.CustomerID
ORDER BY o.CustomerID;

SELECT CustomerID, sum(Quantity)
from Orders o join OrderDetails od on o.OrderID = od.OrderID
GROUP BY o.CustomerID;

SELECT o.CustomerID, od.Quantity
FROM Orders o JOIN OrderDetails od on o.OrderID = od.OrderID;

SELECT CustomerID, OrderDate
From Orders
WHERE sum(OrderDate) >=2;



SELECT * FROM Customers WHERE CustomerID IN (4,5);

SELECT * FROM Customers WHERE CustomerID IN (
SELECT CustomerID
From Orders
GROUP BY CustomerID
HAVING count(OrderDate) >=2);


-- 주문을 한번만 또는 한번도 안한(0) 사람들 조회
SELECT c.CustomerName 
FROM Customers c LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE (o.OrderID IS NULL) OR (count(OrderDate) = 1) 
ORDER BY c.CustomerName;

SELECT c.CustomerID, c.CustomerName, count(o.OrderID) count
FROM Orders o RIGHT JOIN Customers c ON o.CustomerID = c.CustomerID
GROUP BY c.CustomerID
HAVING count(o.OrderID)<=1
ORDER BY count;

SELECT FirstName FROM Employees;

-- 연습 3번 : 주문을 한번 또는 0번 받은 직원들 조회
SELECT e.EmployeeID, e.FirstName, count(o.OrderID) count
FROM Orders o RIGHT JOIN Employees e ON o.EmployeeID = e.EmployeeID
GROUP BY e.EmployeeID
HAVING count(o.OrderID)<=1
ORDER BY count;

-- group by는 여러 컬럼으로 묶을 수 있다.
SELECT Country, City, count(CustomerID) FROM
Customers
GROUP BY Country, City;







