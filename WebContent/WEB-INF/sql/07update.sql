SELECT * FROM Customers ORDER BY CustomerID DESC;

UPDATE Customers
SET Address = 'yeoksam'
WHERE CustomerID = 105;

UPDATE Customers 
SET 
    Address = 'mancity',
    City = 'Suwon',
    PostalCode = '33333'
WHERE
    CustomerID = 105;
    
    
-- JDBC 용
UPDATE Customers
SET 
	CustomerName = ?,
    ContactName = ?,
    Address = ?,
    City = ?,
    PostalCode = ?,
    Country = ?
WHERE
    CustomerID = ?
;

-- Suppliers
SELECT * FROM Suppliers ORDER BY SupplierID DESC;






