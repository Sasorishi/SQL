drop database gestvent;
create database gestvent;
use gestvent;

create table Representants
	(
		nr int(8) not null,
		nomr varchar(25) not null,
		ville varchar(25) not null,
		primary key (nr) 
	);

create table Produit
	(
		np int(8) not null,
		nomp varchar(25) not null,
		coul varchar(25) not null,
		pds int(8) not null,
		primary key (np)
	);

create table Clients
	(
		nc int(8) not null,
		nomc varchar(25) not null,
		ville varchar(25) not null,
		primary key (nc)
	);

create table Ventes
	(
		nr int(8) not null,
		np int(8) not null,
		nc int(8) not null,
		qt int(8) not null,
		primary key (nr, np, nc),
		foreign key (nr) references Representants (nr),
		foreign key (np) references Produit (np),
		foreign key (nc) references Clients (nc)
	);

insert into Representants (nr, nomr, ville)
	values 	(1, "Stephane", "Lyon"),
			(2, "Benjamin", "Paris"),
			(3, "Leonard", "Lyon"),
			(4, "Antoine", "Brest"),
			(5, "Bruno", "Bayonne");

insert into Produit (np, nomp, coul, pds)
	values	(1, "Aspirateur", "Rouge", 3546),
			(2, "Trottinette", "Bleu", 1423),
			(3, "Chaise", "Blanc", 3827),
			(4, "Tapis", "Rouge", 1423);

insert into Clients (nc, nomc, ville)
	values	(1, "Alice", "Lyon,"),
			(2, "Bruno", "Lyon"),
			(3, "Charles", "Compiegne"),
			(4, "Denis", "Montpellier"),
			(5, "Emilie", "Strasbourg");

insert into Ventes (nr, np, nc, qt)
	values	(1, 1, 1, 1),
			(1, 1, 2, 1),
			(2, 2, 3, 1),
			(4, 3, 3, 200),
			(3, 4 , 2, 190),
			(1, 3, 2, 300),
			(3, 1, 2, 120),
			(3, 1, 4, 120),
			(3, 4, 4, 2),
			(3, 1, 1, 3),
			(3, 4, 1, 5),
			(3, 1, 3, 1);

/* 
Select *from clients;
Select np, nomp from produit where coul = "Rouge" and pds > 2000;
Select nr, qt from ventes group by nr;
Select nc, qt from ventes group by nc;
