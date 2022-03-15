CREATE SEQUENCE Commande.number_of_commande
START WITH 1
INCREMENT BY 1
NOMAXVALUES 
NOCYCLE
NOCACHE ;

-- Initialisation de la séquence
SELECT Commande.number_of_commande.nextval FROM dual;


-- Commande pour obtenir le nombre courrant de commande.
-- SELECT Commande.number_of_commande.currval FROM dual; 