drop database exemple;
create database exemple;
use exemple;

create table Personne
	(
		idP int(2) not null,
		nomP varchar(25) not null,
		prenomP varchar(25) not null,
		sexe enum ('f','m'),
		primary key (idP)
	);
create table Marier
	(
		idP1 int(2) not null,
		idP2 int(2) not null,
		dateM date not null,
		dateD date,
		primary key (idP1, idP2),
		foreign key (idP1) references Personne (idP),
		foreign key (idP2) references Personne (idP)
	);
insert into Personne(idP, nomP, prenomP, sexe)
	values 	('1', 'Ouandjli', 'Massil', 'M'),
			('2', 'Dauvois', 'Jeremy', 'M'),
			('3', 'Messadi', 'Lucinda', 'F'),
			('4', 'Clarke', 'Emilia', 'F'),
			('5', 'Watson', 'Ema', 'F'),
			('6', 'Aniston', 'Jeniffer', 'F');
			
insert into Marier(idP1, idP2, dateM, dateD)
	values	('1','4','2009/03/09', null),
			('2', '5', '2012/05/12', '2017/10/10'),
			('3', '6', '2016/12/31', null);