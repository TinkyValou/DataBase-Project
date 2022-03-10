

prompt *************************************************************
prompt ******************** DROP TABLE *****************************
prompt *************************************************************

DROP TABLE Restaurant CASCADE CONSTRAINTS;
DROP TABLE Client CASCADE CONSTRAINTS;
DROP TABLE Coursier CASCADE CONSTRAINTS;
DROP TABLE Course CASCADE CONSTRAINTS;
DROP TABLE Commande CASCADE CONSTRAINTS;
DROP TABLE Specialite CASCADE CONSTRAINTS;

prompt *************************************************************
prompt ******************** CREATE TABLE ***************************
prompt *************************************************************

CREATE TABLE Restaurant (
    adr_resto VARCHAR2(50),
    nom_resto VARCHAR2(30),
    tel_resto VARCHAR2(10),
    ouvert_dimanche NUMBER(1),
    -- Ajout des clés primaires
    CONSTRAINT pk_restaurant PRIMARY KEY(adr_resto),
    -- Ajout des clés étrangères
    -- Ajout des contraintes sur les attributs
);

CREATE TABLE Client (
    nom_client VARCHAR2(30),
    prenom_client VARCHAR2(10),
    tel_client VARCHAR2(10),
    adr_client VARCHAR2(50),
    -- Ajout des clés primaires
    CONSTRAINT pk_client PRIMARY KEY(nom_client, prenom_client),
    -- Ajout des clés étrangères
    -- Ajout des contraintes sur les attributs
);

CREATE TABLE Coursier (
    nom_coursier VARCHAR2(30),
    prenom_coursier VARCHAR2(10),
    mode_deplacement VARCHAR2(10),
    -- Ajout des clés primaires
    CONSTRAINT pk_coursier PRIMARY KEY(nom_coursier, prenom_coursier),
    -- Ajout des clés étrangères
    -- Ajout des contraintes sur les attributs
);

CREATE TABLE Course (
    nom_coursier VARCHAR2(30),
    prenom_coursier VARCHAR2(10),
    date_course DATE,
    nom_menu VARCHAR2(30),        
    note_coursier NUMBER(1),
    note_resto NUMBER(1),
    -- Ajout des clés primaires
    CONSTRAINT pk_course PRIMARY KEY(nom_coursier, prenom_coursier, date_course),
    -- Ajout des clés étrangères
    CONSTRAINT fk_course_coursier FOREIGN KEY(nom_coursier, prenom_coursier) REFERENCES Coursier(nom_coursier, prenom_coursier),
    -- Ajout des contraintes sur les attributs
);

CREATE TABLE Commande (
    adr_resto VARCHAR2(50),
    nom_client VARCHAR2(30),
    prenom_client VARCHAR2(10),
    nom_menu VARCHAR2(20),
    prix_menu NUMBER(2,2),
    nom_coursier VARCHAR2(30),
    prenom_coursier VARCHAR2(10),
    date_course DATE,
    -- Ajout des clés primaires
    CONSTRAINT pk_coursier PRIMARY KEY(adr_resto, nom_client, prenom_client, nom_coursier, prenom_coursier, date_course),
    -- Ajout des clés étrangères
    CONSTRAINT fk_commande_restaurant FOREIGN KEY(adr_resto) REFERENCES Restaurant(adr_resto),
    CONSTRAINT fk_commande_client FOREIGN KEY(nom_client, prenom_client) REFERENCES Client(nom_client, prenom_client),
    CONSTRAINT fk_commande_coursier FOREIGN KEY(nom_coursier, prenom_coursier) REFERENCES Coursier(nom_coursier, prenom_coursier),
    CONSTRAINT fk_commande_course FOREIGN KEY(date_course) REFERENCES Course(date_course),
    -- Ajout des contraintes sur les attributs
);

CREATE TABLE Specialite (
    type_cuisine VARCHAR2(15),
    nom_resto VARCHAR2(50),
    -- Ajout des clés primaires
    CONSTRAINT pk_specialite PRIMARY KEY(nom_resto),
    -- Ajout des clés étrangères
    CONSTRAINT fk_specialite_restaurant FOREIGN KEY(nom_resto) REFERENCES Restaurant(nom_resto), 
    -- Ajout des contraintes sur les attributs
);