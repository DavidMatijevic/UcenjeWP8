--create database trgovina;

--use trgovina;

--create table (
--sifra int,
--broj varchar(10),
--kupac varchar(100)
--);

--create table (
--sifra int,
--naziv varchar(50),
--cijena decimal(18,2)
--);


use master;
go
drop database if exists trgovina;
go
create database trgovina;
go
use trgovina;

create table racuni(
sifra int not null primary key identity(1,1),
broj varchar(50) not null,
kupac varchar(100),
);

create table proizvodi(
sifra int not null primary key identity(1,1),
naziv varchar(50),
cijena varchar(100)
);

create table stavke(
sifra int not null references racuni(sifra),
proizvod int not null references proizvodi(sifra),
cijena decimal(5,3) not null,
);

