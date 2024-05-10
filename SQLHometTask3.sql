Create database DrugstoreApp;

Use DrugstoreApp;


	Create TABLE Pharmacists(
	Id INT PRIMARY KEY IDENTITY,
	[Name] NVARCHAR (50) NOT NULL,
	SurName NVARCHAR (50) NOT NULL,
	Age int CHECK (Age>18),
	)
	INSERT INTO Pharmacists VALUES('Veli','Piriveli',27),('Samid','Mamedov',25)	

	Create TABLE Drugs(
	Id INT PRIMARY KEY IDENTITY,
	[Name] NVARCHAR(50) NOT NULL,
	Price decimal
	)
	INSERT INTO Drugs VALUES('Analgin dimidrol',12),('Qripxot',0.8)	

  Create TABLE Pharmacies(
	Id INT PRIMARY KEY IDENTITY,
	[Name] NVARCHAR (50) NOT NULL,
	Adress NVARCHAR (100) NOT NULL,
	ContactNumber int ,
	CreationDate datetime DEFAULT CURRENT_TIMESTAMP,
	PharmacistsId INT FOREIGN KEY REFERENCES Pharmacists(Id),
	DrugId INT FOREIGN KEY REFERENCES Drugs(Id)
	)
	INSERT INTO Pharmacies VALUES('Ceburaska','Nizami kucesi',122440101,'1999-12-05',1,1),('Aptek 007','Nesimi kucesi',122440101,'1999-12-05',2,2)	


	Create TABLE Owners(
	Id INT PRIMARY KEY IDENTITY,
	[Name] NVARCHAR (50) NOT NULL,
	SurName NVARCHAR (50) NOT NULL,
    PharmacistId INT FOREIGN KEY REFERENCES Pharmacies(Id)
	);

	INSERT INTO Owners VALUES ('Hikmet','Xidirzade',2),('Eli','Xudiyev',3)



	SELECT * FROM Pharmacists
	SELECT * FROM Drugs
	SELECT * FROM Pharmacies
	SELECT * FROM Owners
  

   Select  Owners.Name as 'Owner name', Pharmacies.Name as 'Pharmacies name', Pharmacies.Adress as 'Pharmacies adress' 
   from Owners  
   INNER JOIN Pharmacies on Owners.PharmacistId=Pharmacies.Id
