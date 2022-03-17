-- create_roles pour pc FAC

prompt *************************************************************
prompt ********************** DROP ROLES ***************************
prompt *************************************************************

-- DROP ROLE DB_admin;
DROP ROLE R_CEO;
DROP ROLE R_Coursier;
DROP ROLE R_Restaurateur;
DROP ROLE R_Client;

prompt *************************************************************
prompt ********************* CREATE ROLES **************************
prompt *************************************************************

-- CREATE ROLE DB_admin IDENTIFIED BY DB_admin;
CREATE ROLE R_CEO;
CREATE ROLE R_Coursier;
CREATE ROLE R_Restaurateur;
CREATE ROLE R_Client;

prompt *************************************************************
prompt ****************** PRIVILEGE TO CLIENT **********************
prompt *************************************************************

GRANT SELECT ON Restaurant TO R_Client;
GRANT SELECT ON Specialite TO R_Client;
GRANT INSERT, UPDATE ON Client TO R_Client;
GRANT INSERT, UPDATE ON Commande TO R_Client;


prompt *************************************************************
prompt *************** PRIVILEGE TO RESTAURATEUR *******************
prompt *************************************************************

GRANT SELECT ON Commande TO R_Restaurateur;
GRANT INSERT, UPDATE ON Specialite TO R_Restaurateur;
GRANT INSERT, UPDATE ON Restaurant TO R_Restaurateur;

prompt *************************************************************
prompt ***************** PRIVILEGE TO COURSIER *********************
prompt *************************************************************

GRANT SELECT ON Client TO R_Coursier;
GRANT SELECT ON Commande TO R_Coursier;
GRANT INSERT, UPDATE ON Coursier TO R_Coursier;

prompt *************************************************************
prompt ******************* PRIVILEGE TO CEO ************************
prompt *************************************************************

GRANT SELECT, INSERT, UPDATE, DELETE ON Specialite TO R_CEO;
GRANT SELECT, INSERT, UPDATE, DELETE ON Restaurant TO R_CEO;
GRANT SELECT, INSERT, UPDATE, DELETE ON Client TO R_CEO;
GRANT SELECT, INSERT, UPDATE, DELETE ON Coursier TO R_CEO;
GRANT SELECT, INSERT, UPDATE, DELETE ON Course TO R_CEO;
GRANT SELECT, INSERT, UPDATE, DELETE ON Commande TO R_CEO;

-- prompt *************************************************************
-- prompt ***************** PRIVILEGE TO DB_admin *********************
-- prompt *************************************************************

-- GRANT ALL PRIVILEGES TO DB_admin;

prompt *************************************************************
prompt ********************* ROLE TO USERS *************************
prompt *************************************************************

GRANT R_Coursier TO L3_2;
GRANT R_Client TO L3_6;
-- GRANT R_DB_admin TO L3_7;
GRANT R_CEO TO L3_11;