/*Redaction du script SQL*/
drop database ecole; /*Supprime*/
create database ecole; /*Créer la database*/
use ecole; /*Charge la database*/
create table classe
	(	
		codeC char(6) not null,
		nomlongC varchar(20) not null,
		effectif int(2),
		primary key (codeC)	
	); 
create table eleve
	(
		numE int(3) not null,
		nomE varchar(25) not null,
		prenomE varchar(25) not null,
		datenaissance date,
		adresseE varchar (25) not null,
		telE int(10) not null,
		primary key (numE),
		foreign key(codeC) references classe (codeC)
	);
create table matiere
	(
		codeM char(25) not null,
		libelleM varchar(25) not null,
		primary key (codeM),
		foreign key (codeC) references classe (codeC),
	);
create table devoir
	(
		numD char(6) not null,
		dateD datetime,
		coefficientD float(4,2) not null
		primary key (numD),
		foreign key (codeM) references matiere (codeM),
		foreign key (codeC) references classe (codeC),
	);
create table evaluer
	(
		noteE int(2) not null,
		numE int(3) not null,
		numD char(6) not null,
		foreign key (numD) references devoir (numD),
		foreign key (numE) references eleve (numE)
	);
create table enseigner
	(
		nombreheurecours time,
		nombreheuretp time,
		codeC char(6) not null,
		codeM char(25) not null,
		foreign key (codeC) references classe (codeC),
		foreign key (codeM) references matiere (codeM),
	);
