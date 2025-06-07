USE MASTER
GO
DROP DATABASE IF EXISTS VideoIgreM
GO
CREATE DATABASE VideoIgreM
GO

USE VideoIgreM

-- Unos entiteta
CREATE TABLE Igre (
    Sifra INT PRIMARY KEY IDENTITY(1,1),
    Naziv NVARCHAR(100) NOT NULL,
    Godinaizdanja INT,
    Zanr VARCHAR(50),
    Opis VARCHAR(500)
);

CREATE TABLE Platforme (
    Sifra INT PRIMARY KEY IDENTITY(1,1),
	Sifra_igre INT not null FOREIGN KEY REFERENCES Igra(sifra),
    Naziv VARCHAR(50),
    Proizvodjac VARCHAR(50)
);

CREATE TABLE Razvijaci (
    Sifra INT PRIMARY KEY IDENTITY(1,1),
	Sifra_igre INT not null FOREIGN KEY REFERENCES Igra(sifra),
    Naziv VARCHAR(100),
    Sjedište VARCHAR(100)
);

CREATE TABLE Izdavaci (
    Sifra INT PRIMARY KEY IDENTITY(1,1),
	Sifra_igre INT not null FOREIGN KEY REFERENCES Igra(sifra),
    Naziv VARCHAR(100),
    Sjedište VARCHAR(100)
);

CREATE TABLE Igraci (
    Sifra INT PRIMARY KEY IDENTITY(1,1),
    Korisnicko_ime NVARCHAR(50) UNIQUE NOT NULL,
    Email NVARCHAR(100) UNIQUE NOT NULL,
    Datum_registracije DATE DEFAULT GETDATE()
);


-- Unos igre
INSERT INTO Igre (Naziv,Godinaizdanja,Zanr,Opis)
VALUES
('Cyberpunk 2077', 2020, 'RPG', 'Futuristički RPG iz dystopijskog svijeta')
;

-- Unos platforme
INSERT INTO Platforme (Sifra_igre,Naziv,Proizvodjac)
VALUES
(1,'PlayStation 5', 'Sony'),
(1,'Xbox Series X','Microsoft'),
(1,'PC','Razni');
-- Unos razvijaca
INSERT INTO Razvijaci (Sifra_igre,Naziv, Sjedište) 
VALUES 
(1,'CD Projekt Red', 'Poljska')
-- Unos izdavaca
INSERT INTO  Izdavaci (Sifra_igre,Naziv,Sjedište)
VALUES 
(1,'CD Projekt Red', 'Poljska')

