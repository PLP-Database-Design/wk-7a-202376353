-- Question 1
-- Create a new table to store the normalized data
CREATE TABLE ProductDetail(
    OrderID INT,
    CustomerName VARCHAR(255),
    Product VARCHAR(255)
);

-- Insert normalized data into the new table
INSERT INTO ProductDetail(OrderID, CustomerName, Product)
VALUES
(101, 'John Doe', 'Laptop'),
(101, 'John Doe', 'Mouse'),
(102, 'Jane Smith', 'Tablet'),
(102, 'Jane Smith', 'Keyboard'),
(102, 'Jane Smith', 'Mouse'),
(103, 'Emily Clark', 'Phone');



-- Question 2

-- Create a table for Orders (OrderID and CustomerName)
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(255)
);

-- Insert data into Orders_2NF
INSERT INTO Orders (OrderID, CustomerName)
VALUES
(101, 'John Doe'),
(102, 'Jane Smith'),
(103, 'Emily Clark');

-- Create a table for Product details (OrderID, Product, and Quantity)
CREATE TABLE ProductDetails (
    OrderID INT,
    Product VARCHAR(255),
    Quantity INT,
    PRIMARY KEY (OrderID, Product),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

-- Insert data into ProductDetails_2NF
INSERT INTO ProductDetails (OrderID, Product, Quantity)
VALUES
(101, 'Laptop', 2),
(101, 'Mouse', 1),
(102, 'Tablet', 3),
(102, 'Keyboard', 1),
(102, 'Mouse', 2),
(103, 'Phone', 1);







