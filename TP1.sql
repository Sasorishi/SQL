drop database TP1;
create database TP1;
use TP1;

create table Station
	(
		nomStation varchar(20) not null,
		capacite int(3) not null,
		lieu varchar(20),
		region varchar(20),
		tarif int(4) default '0',
		primary key (nomStation)
	);
create table Activite
	(
		nomStation varchar(20) not null,
		libelle varchar(20) not null,
		prix int(3) default '0',
		primary key (nomStation, libelle),
		foreign key (nomStation) references Station (nomStation)
	);
create table Client
	(
		idClient int(2) not null,
		nomClient varchar(20) not null,
		prenomClient varchar(20) not null,
		ville varchar(20) not null,
		region enum ('Ocean Indien', 'Antilles', 'Europe', 'Ameriques', 'Extreme Orient'),
		solde int(5) default '0',
		primary key (idClient)
	);
create table Sejour
	(
		idClient int(2) not null,
		nomStation varchar(20) not null,
		datesejour date,
		nbplace int(2) not null,
		primary key (idClient, nomStation, datesejour),
		foreign key (idClient) references Client (idClient),
		foreign key	(nomStation) references Station (nomStation)
	);


Insert into Station(nomStation, capacite, lieu, region, tarif)
	values 	('Venusa', '350', 'Guadeloupe', 'Antilles', '1200'),
			('Farniente', '200', 'Seychelles', 'Ocean Indien', '1500'),
			('Santalba', '150', 'Martinique', 'Antilles', '2000'),
			('Passac', '400', 'Alpes', 'Europe', '1000');

Insert into Activite(nomStation, libelle, prix)
	values	('Venusa', 'Voile', '150'),
			('Venusa', 'Plongee', '120'),
			('Farniente', 'Plongee', '130'),
			('Passac', 'Ski', '200'),
			('Passac', 'Piscine', '20'),
			('Santalba', 'Kayac', '50');

Insert into Client(idClient, nomClient, prenomClient, ville, region, solde)
	values	('10', 'Fogg', 'Phileas', 'Londres', 'Europe', '12465'),
			('20', 'Pascal', 'Blaise', 'Paris', 'Europe','6532'),
			('30', 'Kerouac', 'Jack', 'New York', 'Ameriques','9281');

Insert into Sejour(idClient, nomStation, datesejour, nbplace)
	values	('10', 'Passac', '1998/07/01', '2'),
			('30', 'Santalba', '1996/08/14', '5'),
			('20', 'Santalba', '1998/08/03', '4'),
			('30', 'Passac', '1998/08/15', '3'),
			('30', 'Venusa', '1998/08/03', '3'),
			('20', 'Venusa', '1998/08/03', '6'),
			('30', 'Farniente', '1999/06/24', '5'),
			('10', 'Farniente', '1998/09/05', '3');