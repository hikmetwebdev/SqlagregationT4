CREATE DATABASE DemoApp1;
USE DemoApp1;


DROP TABLE Users

CREATE TABLE Users (
    Id INT PRIMARY KEY IDENTITY,
    Name NVARCHAR (50) NOT NULL,
    Surname NVARCHAR(50)  NOT NULL,
    Email NVARCHAR(50) UNIQUE,
    RegistrationDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    ContactNumber VARCHAR(50) DEFAULT '+994000000000',
    Age int CONSTRAINT CHK_Age CHECK (Age > 18),
    Address NVARCHAR(50)
);

INSERT INTO Users (Name, Surname, Email, Age, Address) 
VALUES ('Dali', 'Yamtar', 'eli@gmail.com', 27, 'Ordubad street');

SELECT * FROM Users

CREATE TABLE Categories (
    Id INT PRIMARY KEY IDENTITY,
    CatName NVARCHAR NOT NULL,
    CreatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    IsActive BIT
);

INSERT INTO Categories (CatName, IsActive) 
VALUES ('Electronics', 1),
       ('Clothing', 1),
       ('Books', 0);




  SELECT Names, Surname, Email FROM Users;
  SELECT CatName, IsActive FROM Categories;
