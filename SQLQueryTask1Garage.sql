-- 1
CREATE DATABASE DemoApp;
GO

-- 2
CREATE TABLE Users (
    Id INT PRIMARY KEY,
    Name NVARCHAR(50),
    Surname NVARCHAR(50),
    Email NVARCHAR(100),
    ContactNumber NVARCHAR(20),
    Age INT,
    Address NVARCHAR(200)
);
GO

-- 3
INSERT INTO Users (Id, Name, Surname, Email, ContactNumber, Age, Address)
VALUES 
    (1, 'Veli', 'Yamtar', 'veli.yam@gmail.com', '123456789', 27, 'Hokmeli'),
    (2, 'Samid', 'Mamedov', 'samid.mamed@gmail.com', '987654321', 25, 'Baki'),
    (3, 'Allahverdi', 'Mmamedov', 'verdi.mamedov@example.com', '456789123', 31, 'Sovetski');
GO

-- 3 
CREATE TABLE Categories (
    Id INT PRIMARY KEY,
    Name NVARCHAR(50),
    Slug NVARCHAR(50),
    CreatedAt DATETIME,
    IsActive BIT
);
GO

-- 3
INSERT INTO Categories (Id, Name, Slug, CreatedAt, IsActive)
VALUES 
    (1, 'Texnologiya', 'technology', GETDATE(), 1),
    (2, 'Deb', 'fashion', GETDATE(), 1),
    (3, 'Idman', 'sports', GETDATE(), 0);
GO

-- 4
SELECT Name, Surname, Email FROM Users;
GO

-- 5 
SELECT Name, IsActive FROM Categories;
GO
