
prompt *************** TEST DES CONTRAINTES ****************


prompt =======> CONTRAINTE SUR LE MODE DE DEPLACEMENT

INSERT INTO Coursier VALUES('Maxwell', 'William', 'Voiture');

prompt INSERTION IMPOSSIBLE CAR 'VOITURE' N''EST PAS UN MOYEN DE TRANSPORT VALIDE



prompt =======> CONTRAINTES SUR L''ADRESSE

INSERT INTO Restaurant VALUES ('23 Rue des C4rmes ', 'Pitaya', '0257544086', 1);

prompt INSERTION IMPOSSIBLE CAR L''ADRESSE N''EST PAS VALIDE (CONTIENT UN NOMBRE APRES)

INSERT INTO Restaurant VALUES ('Rue des Carmes ', 'Pitaya', '0257544086', 1);

prompt INSERTION IMPOSSIBLE CAR L''ADRESSE N''EST PAS VALIDE (NE COMMENCE PAS PAR UN NOMBRE)



prompt =======> CONTRAINTES SUR LE BOOLEEN

INSERT INTO Restaurant VALUES ('23 Rue des C4rmes ', 'Pitaya', '0257544086', 2);

prompt INSERTION IMPOSSIBLE CAR OUVERT_DIMANCHE EST DIFFERENT DE 0 OU DE 1



prompt =======> CONTRAINTES SUR LE NUMERO DE TELEPHONE

INSERT INTO Restaurant VALUES ('23 Rue des C4rmes ', 'Pitaya', '025754408', 2);

prompt INSERTION IMPOSSIBLE CAR TAILLE NUMERO DE TEL < 10

INSERT INTO Restaurant VALUES ('23 Rue des C4rmes ', 'Pitaya', '3257544086', 2);

prompt INSERTION IMPOSSIBLE CAR NUMERO DE TEL NE COMMENCE PAS PAR 0