select * from smjerovi

insert into smjerovi (naziv, cijena,datumpokretanja,aktivan)
values ('Web programiranje',1200.54,'2025-05-16 17:00:01',1);

insert into smjerovi (naziv) values
('Serviser'),('Web dizajn'),('Marketing');

select * from grupe

insert into grupe (naziv,smjer)
values ('WP8',1),('WP7',1),('S1',2)
