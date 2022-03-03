

prompt *************************************************************
prompt ******************** DROP TABLE *****************************
prompt *************************************************************

DROP TABLE Restaurant CASCADE CONSTRAINTS;
DROP TABLE Client CASCADE CONSTRAINTS;
DROP TABLE Coursier CASCADE CONSTRAINTS;
DROP TABLE Commande CASCADE CONSTRAINTS;

prompt *************************************************************
prompt ******************** CREATE TABLE *****************************
prompt *************************************************************

-- U_1 = {adr_resto, nom_resto, tel_resto, ouvert_dimanche}
CREATE TABLE Restaurant (
    adr_resto VARCHAR2(40),
    nom_resto VARCHAR2(30),
    tel_resto NUMBER(10),
    ouvert_dimanche BOOL,
--    type_cuisine VARCHAR2(20),
--    note_resto FLOAT,
    CONSTRAINT pk_restaurant PRIMARY KEY(adr_resto)
);

-- U_21 = {nom_client, prenom_client, tel_client, adr_client}
CREATE TABLE Client (
    nom_client VARCHAR2(30),
    prenom_client VARCHAR2(30),
    adr_client VARCHAR2(40),
    tel_client NUMBER(10),
    CONSTRAINT pk_client PRIMARY KEY(nom_client, prenom_client)
);

-- U_221 ={nom_coursier, prenom_coursier, date_course, nom_menu, note_coursier, note_resto}


-- U_2221 = {nom_coursier, prenom_coursier, mode_deplacement}
CREATE TABLE Coursier (
    nom_coursier  VARCHAR2(30),
    prenom_coursier VARCHAR2(30),
    mode_deplacement VARCHAR2(14),
    --note_coursier FLOAT,
    PRIMARY KEY pk_coursier PRIMARY KEY(nom_coursier, prenom_coursier)
);
--  U2222 = {type_cuisine, adr_resto, nom_client, prenom_client, nom_menu,
-- prix_menu, nom_coursier, prenom_coursier, date_course}
CREATE TABLE Commande (
    nom_menu VARCHAR2(30),
    prix_menu NUMBER(3,2),
    
    adr_resto VARCHAR2(40),
    nom_client VARCHAR2(30),
    prenom_client VARCHAR2(30),
    -- type_cusine, nom_menu, prix_menu, date_course
    nom_coursier VARCHAR2(30),
    prenom_coursier VARCHAR2(30),

    CONSTRAINT pk_commande PRIMARY KEY(nom_menu, adr_resto, nom_client, prenom_client, nom_coursier, prenom_coursier),
    CONSTRAINT fk_comm_resto FOREIGN KEY(adr_resto) REFERENCES Restaurant(adr_resto),
    CONSTRAINT fk_comm_client FOREIGN KEY(nom_client, prenom_client) REFERENCES Client(nom_client, prenom_client),
    CONSTRAINT fk_comm_coursier FOREIGN KEY(nom_coursier, prenom_coursier) REFERENCES Coursier(nom_coursier, prenom_coursier)
);

