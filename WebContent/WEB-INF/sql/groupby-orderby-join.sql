use test;


-- table : Product테이블과 OrderDetail

-- 상품별 판매 수량(quantity, productname)
SELECT p.ProductName, sum(od.Quantity) quantity 
FROM Products p LEFT JOIN OrderDetails od ON od.ProductID = p.ProductID
GROUP BY p.ProductName
ORDER BY quantity DESC;


-- 컬럼끼리 곱하기 가능
-- 상품별 매출액(수량 *  price)
SELECT p.ProductName, sum(od.Quantity) * p.Price price
FROM Products p LEFT JOIN OrderDetails od ON od.ProductID = p.ProductID
GROUP BY p.ProductName
ORDER BY price DESC;

-- 날짜별 매출액()
SELECT 	o.OrderDate, sum(od.Quantity * p.Price) price
FROM Products p JOIN OrderDetails od ON od.ProductID = p.ProductID
				JOIN Orders o ON o.OrderID = od.OrderID
GROUP BY o.OrderDate
ORDER BY o.OrderDate;



