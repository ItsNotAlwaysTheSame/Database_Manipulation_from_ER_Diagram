insert into Butik(tel,ButikNr,namn, gata, stad, husNr, postNr)
values (0701801299,30,'Newbenefits','Björkvägen' ,'Gothenburg',4, 93882),
(0732000299,31,'Newbes','Järnvägsgatan' ,'Malmö',69, 91282),
(0712801119,32,'benefits','Ringvägen' ,'Stockholm',99, 30882),
(0701801299,33,'fits','Skolgatan' ,'Västerås',12, 937782),
(0700801765,34,'New','Skogsvägen' ,'Uppsala',4, 03882),
(0714801299,35,'Newfits','Nygatan' ,'Helsingborg',5, 43882),
(0711865499,36,'Newbets','Granvägen' ,'Örebro',4, 93822),
(0729801299,37,'Newbenefits','Idrottsvägen' ,'Norrköping',9, 93582),
(0729803339,38,'NOW','Storgatan' ,'Eskilstuna',7, 93544);

insert into filmer(FilmNr, titel, längd, katagori )
values (12377, 'Game of Thrones 1', 432, 'Adventure'),
(12520, 'Get Out', 104, 'Mystery'),
(12213, 'House of the Dragon', 450, 'Action'),
(12112, 'Ruva', 90, 'Horror'),
(12011, 'Dont worry darling', 120, 'Thriller'),
(10125, 'Smile', 180, 'Horror'),
(21007, 'Revior Paris', 170, 'Drama') ;

insert into medlemmar(medNr,namn ,Adress ,start_datum )
values (100100,'Liam','Gothenburg','1988-05-22'),
		(221999,'Noah','Gothenburg','1995-01-01'),
		(309123,'Emma','Stockholm','1981-06-19'),
		(515920,'Eva','västerås','1969-03-29'),
		(132580,'Lucas','uppsala','1968-01-19'),
		(174422,'Henry','Stockholm','1965-12-08'),
        (440422,'James','Linköping','1964-10-08'),
        (312022,'Mia','Stockholm','1970-12-14'),
        (304772,'William','Örebro','1999-05-20'),
        (291022,'Nas','Lund','1980-12-30');
        
insert into anställd(anställningnr,ButikNr ,Lön ,namn)
values(9601110, 30, 20000, 'Mio'),
(0712410, 31, 25000, 'Pia'),
(0714222, 32, 25000, 'Luna'),
(9010410, 33, 23000, 'Sophia'),
(3390110, 34, 25300, 'Evelyn'),
(0124410, 35, 22000, 'Harper'),
(2002410, 36, 24000, 'Gianna'),
(0711190, 37, 21000, 'Ella'),
(4100410, 38, 20000, 'Sofia');



insert into Participants (Personummer, namn)
values (6608183414, 'Harry'),
(6408233234,'Chris'),
(7404231134, 'Olivia'),
(9901213114,'Kiki'),
(8008131554, 'Nick'),
(8408116233, 'Gemma'),
(7705232234, 'Sydney'),
(8908263884, 'Kate');



insert into participate (Personummer, filmNr, roll)
values (6608183414,12377, 'D'),
(6608183414,12377, 'A'),
(6408233234,12520,'A'),
(7404231134, 12213,'D'),
(9901213114,12112,'A'),
(8008131554,12011, 'A'),
(8408116233,10125, 'D'),
(7705232234,21007 ,'A');




insert into uthyrning (medNr ,ButikNr, Återlämmning, Hyre_ut)
values (100100,30,'1988-05-22','1988-04-22' ),
		(221999,31,'1995-01-01', '1994-12-01'),
		(309123,32,'1981-06-19', '1981-05-19'),
		(515920,33,'1969-03-29','1969-02-20' ),
		(132580,34,'1968-01-19', '1967-12-19'),
		(174422,35,'1965-12-08', '1965-11-08'),
        (440422,36,'1964-10-08', '1964-09-08'),
        (312022,37,'1970-12-14', '1970-11-14'),
        (304772, 38,'1999-05-20', '1999-04-20');


insert into reserv(medNr ,ButikNr , Reserv_datum)
values (100100,30,'1988-04-22' ),
		(221999,31, '1994-12-11'),
		(309123,32,'1977-05-19'),
		(515920,33,'1969-06-29' ),
		(132580,34, '1967-10-22'),
		(174422,35, '1982-11-30'),
        (440422,36,'1999-10-08'),
        (312022,37,'1970-02-14'),
        (304772, 38,'1989-05-16');



insert into erbjuder(filmNr ,ButikNr ,hyllNr ,hyrpris,statuss ,antal)
values 
(12377, 35, 7, 20, 'T', 3),
(12377, 31, 2, 20, 'T', 3),
 (12377, 30, 1, 20, 'E', 3),
(12520, 31, 2, 30, 'T', 1),
(12520, 33, 5, 30, 'E', 1),
(12213, 32,3, 100, 'E', 2),
(12112,33,1, 150, 'T', 2),
(12011, 34, 10, 50, 'E', 12),
(12011, 38, 13, 50, 'E', 6),
(12011, 35, 10, 50, 'E', 3),
(10125,35, 7, 210, 'T', 30),
(21007,36, 21, 120, 'E', 15) ;