
-- listar alla filmer som inte har filmnummer 123
select * from filmer where FilmNr != 123;  

-- list all movies which have a catagory's name starting with "h"
SELECT * FROM filmer
WHERE katagori LIKE 'h%';

-- List all members who started between 1969-03-29 AND 1980-07-31 (it includes even memebers who started the exact time ex. who started '1969-03-29' are also listed out)
SELECT * FROM medlemmar	
WHERE start_datum BETWEEN '1969-03-29' AND '1980-07-31';

-- Lista ut titel, antalsumma, minsta och högsta hyll nummer. Gruppera efter titel
select titel, min(hyllNr), max(hyllNr), sum(antal)
from filmer, erbjuder
where filmer.filmNr= erbjuder.filmNr
group by titel;


-- Lista ut alla för de avdelningar som har min lön större än 23000. Gruppera efter anställningssnamn
select  * 
from anställd
group by namn
having min(Lön)>2.3*power(10,4);

-- Lisa ut katagori på alla filmer ordnad efter katagori. 
select * from filmer
order by katagori;

delete from Participants where Personummer=6608183414;
select * from participate;
select * from Participants;

-- Update the member's name and address with the values given if the member's number =100100 
update medlemmar
set namn='NOOO', Adress='SOMEWHERE'
where medNr=100100;

select * from medlemmar;


update medlemmar
set namn='Liam', Adress='Gotherburg'
where medNr=100100;

select * from medlemmar;

-- delete set null (fk from another table)
-- Lista ut Personummer, roll  om participate som spelar i en film vilken är längre än 200 min

select Personummer, roll
from participate
where filmNr= any
(select filmNr
from filmer
where längd>200);
















select * from medlemmar natural join uthyrning;
select * from medlemmar join uthyrning ON medlemmar.medNr=uthyrning.medNr;

select medNr as Medlemm_Nummer from medlemmar;


select * from participate where exists (select roll from Participants where( participate.Personummer = Participants.Personummer and participate.filmNr =filmNr and participate.roll <>Participants.roll));

