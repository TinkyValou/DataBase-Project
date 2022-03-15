prompt *************************************************************
prompt ********************** DROP ROLES ***************************
prompt *************************************************************

DROP ROLE C##DB_admin;
DROP ROLE C##CEO;
DROP ROLE C##Coursier;
DROP ROLE C#Restaurateur;
DROP ROLE C##Client;

prompt *************************************************************
prompt ********************* CREATE ROLES **************************
prompt *************************************************************

CREATE ROLE C##DB_admin IDENTIFIED BY DB_admin;
CREATE ROLE C##CEO IDENTIFIED BY CEO;
CREATE ROLE C##Coursier;
CREATE ROLE C#Restaurateur;
CREATE ROLE C##Client;

prompt *************************************************************
prompt ****************** PRIVILEGE TO CLIENT **********************
prompt *************************************************************

GRANT SELECT ON Restaurant TO C##Client;
GRANT SELECT ON Specialite TO C##Client;
GRANT INSERT, UPDATE ON Client TO C##Client;
GRANT INSERT, UPDATE ON Commande TO C##Client;


prompt *************************************************************
prompt **************** PRIVILEGE TO RESTAURANT ********************
prompt *************************************************************

GRANT INSERT, UPDATE ON Specialite TO C#Restaurateur;
GRANT INSERT, UPDATE ON Restaurant TO C#Restaurateur;
GRANT SELECT ON Commande TO C#Restaurateur;

prompt *************************************************************
prompt ***************** PRIVILEGE TO COURSIER *********************
prompt *************************************************************

GRANT SELECT ON Restaurant TO C##Coursier;
GRANT SELECT ON Course TO C##Coursier;
GRANT SELECT ON Commande TO C##Coursier;
GRANT INSERT, UPDATE ON Coursier TO C##Coursier;

prompt *************************************************************
prompt ******************* PRIVILEGE TO CEO ************************
prompt *************************************************************

GRANT SELECT, INSERT, UPDATE ON Specialite TO C##CEO;
GRANT SELECT, INSERT, UPDATE ON Restaurant TO C##CEO;
GRANT SELECT, INSERT, UPDATE ON Client TO C##CEO;
GRANT SELECT, INSERT, UPDATE ON Coursier TO C##CEO;
GRANT SELECT, INSERT, UPDATE ON Course TO C##CEO;
GRANT SELECT, INSERT, UPDATE ON Commande TO C##CEO;

prompt *************************************************************
prompt ***************** PRIVILEGE TO DB_admin *********************
prompt *************************************************************

GRANT ALL PRIVILEGES TO C##DB_admin;

prompt *************************************************************
prompt ********************** DROP USERS ***************************
prompt *************************************************************

DROP USER C##L3_2;
DROP USER C##L3_6;
DROP USER C##L3_7;
DROP USER C##L3_11;

prompt *************************************************************
prompt **************** CREATE USERS WITH ROLES ********************
prompt *************************************************************

CREATE USER C##L3_2;
GRANT C##Coursier TO C##L3_2;

CREATE USER C##L3_6;
GRANT C##CEO TO C##L3_2;

CREATE USER C##L3_7;
GRANT C##DB_admin TO C##L3_2;

CREATE USER C##L3_11;
GRANT C##Client TO C##L3_2;