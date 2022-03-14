prompt *************************************************************
prompt ******************** DELETE TABLE ***************************
prompt *************************************************************

DELETE FROM Commande;
DELETE FROM Course;
DELETE FROM Coursier;
DELETE FROM Client;
DELETE FROM Restaurant;
DELETE FROM Specialite;

prompt *************************************************************
prompt ************ INSERT TUPLES INTO SPECIALITE ******************
prompt *************************************************************

INSERT INTO Specialite VALUES ('Pitaya', 'Thai');
INSERT INTO Specialite VALUES ('Coq Monsieur', 'Occidentale');
INSERT INTO Specialite VALUES ('Le Berlin', 'Occidentale');
INSERT INTO Specialite VALUES ('Curry House', 'Indien');
INSERT INTO Specialite VALUES ('Emporietto', 'Italien');

prompt *************************************************************
prompt ************ INSERT TUPLES INTO RESTAURANT ******************
prompt *************************************************************

INSERT INTO Restaurant VALUES ('23 Rue des Carmes', 'Pitaya', '0257544086', 1);
INSERT INTO Restaurant VALUES ('6 Rue Beauregard', 'Coq Monsieur', '0251894112', 1);
INSERT INTO Restaurant VALUES ('95 Boulevard Gabriel Lauriol', 'Le Berlin', '0228309520', 1);
INSERT INTO Restaurant VALUES ('11 Rue de la Juiverie', 'Curry House', '0240758420', 1);
INSERT INTO Restaurant VALUES ('3 Rue Leon Maître', 'Pitaya', '0257544604', 1);
INSERT INTO Restaurant VALUES ('27 Rue Adolphe Moitie', 'Emporietto', '0983590673', 1);

prompt *************************************************************
prompt ************** INSERT TUPLES INTO CLIENT ********************
prompt *************************************************************

INSERT INTO Client VALUES ('Goubon', 'Valentin', '0734567812', '5 Rue du Bon Secours');
INSERT INTO Client VALUES ('Johan', 'Quentin', '0795832201', '1 Rue de l''ile d''Yeu');
INSERT INTO Client VALUES ('Legrand', 'Julien', '0645839123', '2 Rue General Leclerc');
INSERT INTO Client VALUES ('Lambert', 'Laurine', '0712516790', '3 Quai de Versaille');
INSERT INTO Client VALUES ('Lambert', 'Geralt', '0712516793', '42 Boulevard Robert Shuman');

prompt *************************************************************
prompt ************* INSERT TUPLES INTO COURSIER *******************
prompt *************************************************************

INSERT INTO Coursier VALUES('Billaud', 'Mael', 'Velo');
INSERT INTO Coursier VALUES('Bureau', 'Arthur', 'Velo');
INSERT INTO Coursier VALUES('Legrand', 'Philippe', 'Velo');
INSERT INTO Coursier VALUES('de Vengerberg', 'Yennefer', 'Scooter');

prompt *************************************************************
prompt ************** INSERT TUPLES INTO COURSE ********************
prompt *************************************************************

INSERT INTO Course VALUES('Billaud', 'Mael', TO_DATE('2021-DEC-30 22:30','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 'Yellow Curry', 5, 4);
INSERT INTO Course VALUES('Bureau', 'Arthur', TO_DATE('2021-DEC-30 19:45','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 'Croque de la semaine', 3, 4.7);
INSERT INTO Course VALUES('Legrand', 'Philippe', TO_DATE('2021-DEC-30 19:30','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 'Munich Machine', 2.9, 4.5);
INSERT INTO Course VALUES('de Vengerberg', 'Yennefer', TO_DATE('2021-DEC-30 22:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 'Poulet Tikka Massala', 4.7, 4.4);
INSERT INTO Course VALUES('Legrand', 'Philippe', TO_DATE('2021-DEC-30 20:30','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 'Chicken Thaï', 4.3, 4);
INSERT INTO Course VALUES('Billaud', 'Mael', TO_DATE('2021-DEC-30 21:30','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 'Risotto Tameggio', 5, 3.5);
INSERT INTO Course VALUES('de Vengerberg', 'Yennefer', TO_DATE('2021-DEC-30 20:30','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 'Georges', 3, 4.2);
INSERT INTO Course VALUES('Billaud', 'Mael', TO_DATE('2021-DEC-30 19:30','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 'Filet de Thon Germon', 5, 4.5);
INSERT INTO Course VALUES('Bureau', 'Arthur', TO_DATE('2021-DEC-30 20:45','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 'Mein Favorit', 3.7, 4.5);
INSERT INTO Course VALUES('de Vengerberg', 'Yennefer', TO_DATE('2021-DEC-30 21:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 'Yellow Curry', 4.2, 4.3);
INSERT INTO Course VALUES('de Vengerberg', 'Yennefer', TO_DATE('2021-DEC-30 19:15','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 'Poulet Tandoori', 2.7, 4);

prompt *************************************************************
prompt ************* INSERT TUPLES INTO COMMANDE *******************
prompt *************************************************************

INSERT INTO Commande VALUES('23 Rue des Carmes', 'Goubon', 'Valentin', 'Billaud', 'Mael', TO_DATE('2021-DEC-30 22:30','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 'Yellow Curry', 10);
INSERT INTO Commande VALUES('6 Rue Beauregard', 'Johan', 'Quentin', 'Bureau', 'Arthur', TO_DATE('2021-DEC-30 19:45','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 'Croque de la semaine', 7.9);
INSERT INTO Commande VALUES('95 Boulevard Gabriel Lauriol', 'Legrand', 'Julien', 'Legrand', 'Philippe', TO_DATE('2021-DEC-30 19:30','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 'Munich Machine', 13.5);
INSERT INTO Commande VALUES('11 Rue de la Juiverie', 'Lambert', 'Laurine', 'de Vengerberg', 'Yennefer', TO_DATE('2021-DEC-30 22:00','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 'Poulet Tikka Massala', 11.9);
INSERT INTO Commande VALUES('3 Rue Leon Maître', 'Lambert', 'Geralt', 'Legrand', 'Philippe', TO_DATE('2021-DEC-30 20:30','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 'Chicken Thaï', 10);
INSERT INTO Commande VALUES('27 Rue Adolphe Moitie', 'Goubon', 'Valentin', 'Billaud', 'Mael', TO_DATE('2021-DEC-30 21:30','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 'Risotto Tameggio', 16.5);
INSERT INTO Commande VALUES('6 Rue Beauregard', 'Lambert', 'Geralt', 'de Vengerberg', 'Yennefer', TO_DATE('2021-DEC-30 20:30','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 'Georges', 10.9);
INSERT INTO Commande VALUES('27 Rue Adolphe Moitie', 'Goubon', 'Valentin', 'Billaud', 'Mael', TO_DATE('2021-DEC-30 19:30','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 'Filet de Thon Germon', 18);
INSERT INTO Commande VALUES('95 Boulevard Gabriel Lauriol', 'Legrand', 'Julien', 'Bureau', 'Arthur', TO_DATE('2021-DEC-30 20:45','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 'Mein Favorit', 13.1);
INSERT INTO Commande VALUES('3 Rue Leon Maître', 'Goubon', 'Valentin', 'de Vengerberg', 'Yennefer', TO_DATE('2021-DEC-30 20:30','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 'Yellow Curry', 10);
INSERT INTO Commande VALUES('11 Rue de la Juiverie', 'Johan', 'Quentin', 'de Vengerberg', 'Yennefer', TO_DATE('2021-DEC-30 19:15','YYYY-MON-DD HH24:MI','NLS_DATE_LANGUAGE=AMERICAN'), 'Poulet Tandoori', 12);