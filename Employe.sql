-- Create the database if it doesn't exist
CREATE DATABASE IF NOT EXISTS company_database;

-- Switch to the newly created database
USE company_database;

-- Create the Employees table
CREATE TABLE IF NOT EXISTS Employees (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Email_Address VARCHAR(255),
    Department VARCHAR(50),
    Date_of_Birth DATE,
    Salary DECIMAL(10, 2),
    Is_Active BOOLEAN
);


INSERT INTO Employees (Name, Email_Address, Department, Date_of_Birth, Salary, Is_Active)
VALUES
        ('Vedant Sonawane', 'vedant@gmail.com', 'HR', '01-06-2003', 50000.00, 1),
        ('Pratik Ugalmugale', 'pratik@gmail.com', 'IT', '20-12-2003', 60000.00, 1);
