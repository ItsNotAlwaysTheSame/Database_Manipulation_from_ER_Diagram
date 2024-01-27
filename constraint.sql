/* PRIMARY KEY*/

ALTER TABLE Butik
ADD CONSTRAINT BUTIK_pk PRIMARY KEY (ButikNr); 
ALTER TABLE filmer
ADD CONSTRAINT filmer_pk PRIMARY KEY (FilmNr);

ALTER TABLE medlemmar
ADD CONSTRAINT medlemmar_pk PRIMARY KEY (medNr);

ALTER TABLE anställd
ADD CONSTRAINT anställd_pk PRIMARY KEY (anställningnr);

ALTER TABLE Participants
ADD CONSTRAINT Participants_pk PRIMARY KEY (Personummer) ;

ALTER TABLE participate
ADD CONSTRAINT participate_pk PRIMARY KEY (Personummer, filmNr, roll);


ALTER TABLE erbjuder
ADD CONSTRAINT Erbjuder_pk PRIMARY KEY (ButikNr, filmNr);

ALTER TABLE reserv
ADD CONSTRAINT Reserv_pk PRIMARY KEY (medNr, ButikNr);


ALTER TABLE uthyrning
ADD CONSTRAINT uthyrning_pk PRIMARY KEY (medNr, ButikNr);





/* FOREIGN KEY*/
ALTER TABLE anställd
 ADD CONSTRAINT `anställd_fk2` FOREIGN KEY  (`ChefNr`) REFERENCES anställd(anställningnr) ON DELETE SET NULL;
ALTER TABLE anställd
 ADD CONSTRAINT anställd_fk FOREIGN KEY  (ChefNr) REFERENCES anställd(anställningnr) ON UPDATE CASCADE;

 ALTER TABLE anställd
 ADD CONSTRAINT anställd_fk3 FOREIGN KEY (ButikNr) REFERENCES Butik(ButikNr) ON DELETE CASCADE;
ALTER TABLE anställd
 ADD CONSTRAINT anställd_fk4 FOREIGN KEY (ButikNr) REFERENCES Butik(ButikNr) ON UPDATE CASCADE;
 

ALTER TABLE participate
 ADD CONSTRAINT Participants_fk FOREIGN KEY (Personummer) REFERENCES Participants(Personummer) ON DELETE CASCADE;
ALTER TABLE participate
 ADD CONSTRAINT Participants_fk1 FOREIGN KEY (Personummer) REFERENCES Participants(Personummer) ON update CASCADE;
 ALTER TABLE participate
 ADD CONSTRAINT filmer_fk1 FOREIGN KEY (filmNr) REFERENCES filmer(filmNr) ON DELETE CASCADE;
ALTER TABLE participate
 ADD CONSTRAINT filmer_fk FOREIGN KEY (filmNr) REFERENCES filmer(filmNr) ON update CASCADE;

-- CONSTRAINT `FK_t2_1` FOREIGN KEY (`id`) REFERENCES `t1` (`id`) ON DELETE CASCADE
 ALTER TABLE `uthyrning`
 ADD CONSTRAINT `medlemmar_fk`  FOREIGN KEY (`medNr`) REFERENCES `medlemmar`(`medNr`) ON DELETE CASCADE;
ALTER TABLE `uthyrning`
 ADD CONSTRAINT `medlemmar_fk1` FOREIGN KEY (`medNr`) REFERENCES `medlemmar`(`medNr`) ON update CASCADE;
ALTER TABLE `uthyrning`
 ADD CONSTRAINT `Butik_fk1` FOREIGN KEY (`ButikNr`) REFERENCES `Butik`(`ButikNr`) ON DELETE CASCADE; 
ALTER TABLE `uthyrning`
 ADD CONSTRAINT `Butik_fk`  FOREIGN KEY (`ButikNr`) REFERENCES `Butik`(`ButikNr`) ON update CASCADE;
 
 ALTER TABLE reserv
 ADD CONSTRAINT medlemmar_fk2  FOREIGN KEY (medNr) REFERENCES medlemmar(medNr) ON DELETE CASCADE;
ALTER TABLE reserv
 ADD CONSTRAINT medlemmar_fk3 FOREIGN KEY (medNr) REFERENCES medlemmar(medNr) ON update CASCADE;
 ALTER TABLE reserv
 ADD CONSTRAINT Butik_fk5 FOREIGN KEY (ButikNr) REFERENCES Butik(ButikNr) ON DELETE CASCADE;
ALTER TABLE reserv
 ADD CONSTRAINT Butik_fk4  FOREIGN KEY (ButikNr) REFERENCES Butik(ButikNr) ON update CASCADE;


 ALTER TABLE erbjuder
 ADD CONSTRAINT filmer_fk2  FOREIGN KEY (filmNr) REFERENCES filmer(filmNr)ON DELETE CASCADE;
ALTER TABLE erbjuder
 ADD CONSTRAINT filmer_fk3  FOREIGN KEY (filmNr) REFERENCES filmer(filmNr)ON update CASCADE;
ALTER TABLE erbjuder
 ADD CONSTRAINT Butik_fk10 FOREIGN KEY (ButikNr) REFERENCES Butik(ButikNr) ON DELETE CASCADE;
ALTER TABLE erbjuder
 ADD CONSTRAINT Butik_fk11 FOREIGN KEY (ButikNr) REFERENCES Butik(ButikNr) ON update CASCADE;
