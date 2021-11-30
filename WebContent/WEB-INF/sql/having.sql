select Country, count(CustomerID) people FROM Customers
GROUP BY Country
HAVING people <= 10
-- ORDER BY count(CustomerID)
ORDER BY Country;

-- 연습 1 : 주문을 한 번만 한 사람들을 조회(CustomerName)
-- table : orders, customers

SELECT o.CustomerID, c.CustomerName, count(OrderID) su
FROM Customers c JOIN Orders o on c.CustomerID = o.CustomerID
GROUP BY o.CustomerID
HAVING su = 1;

