use master;
drop database if exists Restoran;
go
create database Restoran;
go

use Restoran;

Create table jelovnik(
sifra int primary key,
kategorija varchar(50),
jelo varchar(50),
pice varchar(50)
);

create table jelo(
sifra int primary key references jelovnik(sifra),
ime varchar(50),
cijena decimal(15)
);

create table meso(
sifra int primary key references jelo(sifra),
ime varchar(50),
cijena decimal(15)
);

create table pizza(
sifra int primary key references jelo(sifra),
ime varchar(50),
cijena decimal (15)
);

create table pice(
sifra int primary key references jelovnik(sifra),
ime varchar(50),
cijena decimal(15)
);

create table alkoholno(
sifra int primary key references pice(sifra),
ime varchar(50),
cijena decimal(15)
);

create table bezalkoholno(
sifra int primary key references pice(sifra),
ime varchar(50),
cijena decimal(15)
);


