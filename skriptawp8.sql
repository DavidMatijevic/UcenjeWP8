
-- ovo je komentar i ovo se ne izvodi

use master;
go
drop database if exists edunovawp8;
go
create database edunovawp8;
go
use edunovawp8;
-- nazivi tablica u množini zbog C# EF
create table smjerovi(
sifra int not null primary key identity(1,1),
naziv varchar(50) not null,
cijena decimal(18,2) null, -- null se ne mora pisati
datumpokretanja datetime, -- i ovo je null iako ne piše
aktivan bit not null default 0 -- nisi aktivan
);


-- Grupe
create table grupe(
sifra int not null primary key identity(1,1),
naziv varchar(20) not null,
smjer int not null references smjerovi(sifra),
predavac varchar(50),
);
-- Polaznici
create table polaznici(
sifra int not null primary key identity(1,1),
ime varchar(50) not null,
prezime varchar(50)not null,
email varchar(100)
);

-- Clanovi
create table clanovi(
-- tablica nuzno nemora imati šifru
grupa int not null references grupe(sifra),
polaznik int not null references polaznici(sifra),
);