create database lab1;
drop database lab1;
use lab1;


create table Butik(
tel double,
ButikNr int ,
namn char(30),
gata char(20),
stad char(30),
husNr int,
postNr double 
);
create table filmer(
FilmNr int ,
titel char(30),
längd int,
katagori char(30)
);
create table medlemmar(
medNr double ,
namn char(20),
Adress char(30),
start_datum date

);
create table anställd(
anställningnr double,
ButikNr int,
Lön double,
namn char(20),
ChefNr
 double
);

create table Participants(
Personummer double,
namn char(30)
);

create table participate(

Personummer double,
filmNr int not null,
roll char(2)

);

create table uthyrning(
medNr double not null,
ButikNr int not null, 
Återlämmning date,
Hyre_ut date
);
create table reserv(
medNr double not null,
ButikNr int not null, 
Reserv_datum date
);

create table erbjuder(
filmNr int,
ButikNr int,
hyllNr int,
hyrpris int,

statuss char(1),
antal int

);
show tables;
