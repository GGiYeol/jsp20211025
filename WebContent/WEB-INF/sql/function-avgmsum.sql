use test;

SELECT AVG(Price) FROM Products;

SELECT SUM(Price) FROM Products;

SELECT * FROM Products ORDER BY ProductID desc;
INSERT INTO Products(ProductName, SupplierID, CategoryID, Unit, Price)
VALUES('myprod', 1,1,'1kg',0);
-- **null은 계산에서 제외됨** 평균이 올라가지 않음.

-- subQuery 사용해서 평균값 이상인 상품 목록 조회
SELECT * FROM Products
WHERE Price >= (SELECT AVG(Price) FROM Products)
ORDER BY Price;
-- subQuery 사용해서 평균값 이하인 상품 목록 조회
SELECT * FROM Products
WHERE Price <= (SELECT AVG(Price) FROM Products)
ORDER BY Price;

-- 1996-07-08에 주문한 상품의 총 수량

SELECT SUM(od.Quantity) FROM OrderDetails od
JOIN Orders o on o.OrderID = od.OrderID
WHERE o.OrderDate = '1996-07-08'; 

