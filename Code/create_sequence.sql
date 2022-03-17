prompt *************************************************************
prompt ******************* DELETE SEQUENCE *************************
prompt *************************************************************

DROP SEQUENCE number_of_commande;

prompt *************************************************************
prompt ******************* CREATE SEQUENCE *************************
prompt *************************************************************

CREATE SEQUENCE number_of_commande
START WITH 0
INCREMENT BY 1
NOMAXVALUE
MINVALUE 0
NOCYCLE
NOCACHE ;

-- Initialisation de la séquence
SELECT number_of_commande.nextval FROM dual;

-- Commande pour obtenir le nombre courrant de commande.
-- SELECT number_of_commande.currval FROM dual; 