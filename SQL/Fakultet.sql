use master;
go
drop database if exists Fakultet;
go
create database Fakultet;
go

use Fakultet;


create table kolegij(
sifra int not null,
ime varchar(50),
datumpokretanja varchar(50),
PRIMARY KEY (sifra)
);

create table rok(
sifra int not null references kolegij(sifra),
datum varchar(50),
polaznici varchar(50),
PRIMARY KEY (sifra)
);


create table student(
sifra int not null references rok(sifra),
ime varchar(50),
prezime varchar(50) not null,
email varchar(50) not null
);