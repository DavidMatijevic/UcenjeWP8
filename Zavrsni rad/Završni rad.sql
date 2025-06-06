--USE MASTER
--GO
--DROP DATABASE IF EXISTS VideoIgre
--GO
--CREATE DATABASE VideoIgre
--GO

USE VideoIgre

-- Unos entiteta
CREATE TABLE Igra (
    Sifra INT PRIMARY KEY IDENTITY(1,1),
    Naziv NVARCHAR(100) NOT NULL,
    Godinaizdanja INT,
    Zanr VARCHAR(50),
    Opis VARCHAR(500)
);

CREATE TABLE Platforma (
    Sifra INT PRIMARY KEY IDENTITY(1,1) REFERENCES Igra(sifra),
    Naziv VARCHAR(50) NOT NULL,
    Proizvodjac VARCHAR(50)
);

CREATE TABLE Razvijac (
    Sifra INT PRIMARY KEY IDENTITY(1,1) REFERENCES Igra(sifra),
    Naziv VARCHAR(100) NOT NULL,
    Sjedište VARCHAR(100)
);

CREATE TABLE Izdavac (
    Sifra INT PRIMARY KEY IDENTITY(1,1) REFERENCES Igra(sifra),
    Naziv VARCHAR(100) NOT NULL,
    Sjedište VARCHAR(100)
);

CREATE TABLE Igrac (
    Sifra INT PRIMARY KEY IDENTITY(1,1),
    Korisnicko_ime NVARCHAR(50) UNIQUE NOT NULL,
    Email NVARCHAR(100) UNIQUE NOT NULL,
    Datum_registracije DATE DEFAULT GETDATE()
);


-- Unos igre
INSERT INTO Igra (Naziv,Godina_izdanja,Zanr,Opis)
VALUES
('Cyberpunk 2077', 2020, 'RPG', 'Futuristički RPG iz dystopijskog svijeta')
;

-- Unos platforme
INSERT INTO Platforma (Naziv,Proizvodjac)
VALUES
('PlayStation 5', 'Sony'),
('Xbox Series X','Microsoft'),
('PC','Razni');


