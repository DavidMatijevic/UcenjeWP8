use master;
drop database if exists knjiznicavjezba;
go
create database knjiznicavjezba;
go

use knjiznicavjezba;

create table knjige(
sifra int primary key,
naslov varchar(50),
pisac varchar(50),
vlasnik int,
clan int,
datumpos datetime,
datumvrac datetime
);

create table clan(
sifra int primary key,
clbroj int references knjige(sifra)
);

create table vlasnik(
sifra int primary key,
knjiga int references knjige(sifra)
);

create table osobe(
sifra int,
ime varchar(50),
prezime varchar(50),
adresa varchar(50) not null,
email varchar(50) not null
);


