CREATE TABLE CUSTOMERS (
	CustomerID INT PRIMARY KEY,
    FUllName VARCHAR (100),
    Email VARCHAR (100),
    Age INT

);
-- Thay đổi cách xử lí dữ liệu tên và email không cho để trống
ALTER TABLE Customers
MODIFY FullName VARCHAR(100) NOT NULL;
ALTER TABLE Customers
MODIFY Email VARCHAR(100) NOT NULL;
-- Ràng buộc mỗi email là duy nhất không được trùng lặp
ALTER TABLE Customers
ADD CONSTRAINT uq_email UNIQUE (Email);
-- Check tuổi không được là số âm
ALTER TABLE Customers
ADD CONSTRAINT check_age CHECK (Age >= 0);