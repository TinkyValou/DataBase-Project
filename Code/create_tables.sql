prompt *************************************************************
prompt ******************** DROP TABLE *****************************
prompt *************************************************************

DROP TABLE Specialite CASCADE CONSTRAINTS;
DROP TABLE Restaurant CASCADE CONSTRAINTS;
DROP TABLE Client CASCADE CONSTRAINTS;
DROP TABLE Coursier CASCADE CONSTRAINTS;
DROP TABLE Course CASCADE CONSTRAINTS;
DROP TABLE Commande CASCADE CONSTRAINTS;

prompt *************************************************************
prompt ******************** CREATE TABLE ***************************
prompt *************************************************************

CREATE TABLE Specialite (
    nom_resto VARCHAR2(50),
    type_cuisine VARCHAR2(15),
            -- Ajout des clés primaires
    CONSTRAINT pk_specialite PRIMARY KEY(nom_resto)
);

CREATE TABLE Restaurant (
    adr_resto VARCHAR2(50),
    nom_resto VARCHAR2(30),
    tel_resto VARCHAR2(10),
    ouvert_dimanche NUMBER(1),
            -- Ajout des clés primaires
    CONSTRAINT pk_restaurant PRIMARY KEY(adr_resto),
            -- Ajout des clés étrangères
    CONSTRAINT fk_restaurant_specialite FOREIGN KEY(nom_resto) REFERENCES Specialite(nom_resto)
);

CREATE TABLE Client (
    nom_client VARCHAR2(30),
    prenom_client VARCHAR2(10),
    tel_client VARCHAR2(10),
    adr_client VARCHAR2(50),
            -- Ajout des clés primaires
    CONSTRAINT pk_client PRIMARY KEY(nom_client, prenom_client)
);

CREATE TABLE Coursier (
    nom_coursier VARCHAR2(30),
    prenom_coursier VARCHAR2(10),
    mode_deplacement VARCHAR2(10),
            -- Ajout des clés primaires
    CONSTRAINT pk_coursier PRIMARY KEY(nom_coursier, prenom_coursier)
            -- Ajout des clés étrangères
);

CREATE TABLE Course (
    nom_coursier VARCHAR2(30),
    prenom_coursier VARCHAR2(10),
    date_course DATE,
    nom_menu VARCHAR2(30),
    note_coursier NUMBER(2,1),
    note_resto NUMBER(2,1),
            -- Ajout des clés primaires
    CONSTRAINT pk_course PRIMARY KEY(nom_coursier, prenom_coursier, date_course),
            -- Ajout des clés étrangères
    CONSTRAINT fk_course_coursier FOREIGN KEY(nom_coursier, prenom_coursier) REFERENCES Coursier(nom_coursier, prenom_coursier)
);

CREATE TABLE Commande (
    adr_resto VARCHAR2(50),
    nom_client VARCHAR2(30),
    prenom_client VARCHAR2(10),
    nom_coursier VARCHAR2(30),
    prenom_coursier VARCHAR2(10),
    date_course DATE,
    nom_menu VARCHAR2(20),
    prix_menu NUMBER(4,2),
            -- Ajout des clés primaires
    CONSTRAINT pk_commande PRIMARY KEY(adr_resto, nom_client, prenom_client, nom_coursier, prenom_coursier, date_course),
            -- Ajout des clés étrangères
    CONSTRAINT fk_commande_restaurant FOREIGN KEY(adr_resto) REFERENCES Restaurant(adr_resto),
    CONSTRAINT fk_commande_client FOREIGN KEY(nom_client, prenom_client) REFERENCES Client(nom_client, prenom_client),
    CONSTRAINT fk_commande_course FOREIGN KEY(nom_coursier, prenom_coursier,date_course) REFERENCES Course(nom_coursier, prenom_coursier, date_course)
);
