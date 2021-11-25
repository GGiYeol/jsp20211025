USE test;

SELECT * FROM Customers ORDER BY CustomerID DESC;

DELETE FROM Customers WHERE CustomerID = 105;
DELETE FROM Customers WHERE Address = 'gangnam'; 

DELETE FROM Customers; -- xxxx

SET SQL_SAFE_UPDATES = 0;
SET SQL_SAFE_UPDATES = 1;
