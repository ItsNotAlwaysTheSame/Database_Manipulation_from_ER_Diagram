
select * from anställd;
select * from medlemmar;
select * from filmer;
select * from Butik;
select * from filmer;
select * from participate;
select * from Participants;
select * from filmer;
select * from uthyrning;

select * from reserv;
select * from erbjuder;


delete from Butik where ButikNr >0;
select * from Butik;
delete from medlemmar where medNr >0;
delete from filmer where FilmNr >0;
delete from participants where Personummer;

select * from participants;



/* drop tables */
drop table Butik;
drop table anställd;
drop table uthyrning;
drop table reserv;
drop table medlemmar;
DROP TABLE filmer;
drop table participate; 
