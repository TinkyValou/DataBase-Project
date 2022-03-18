SET SERVEROUTPUT ON

-- Cette procédure permet de connaitre le nombre de commandes qu'un client a passé

CREATE OR REPLACE PROCEDURE nb_commandes_p(n_client VARCHAR2, p_client VARCHAR2) IS
nb_comm NUMBER(3);
BEGIN
    SELECT COUNT(*) INTO nb_comm FROM Commande WHERE (nom_client = n_client) AND (prenom_client = p_client);
    dbms_output.put_line('This customer as ordered ' || nb_comm || ' times');
END;
/

-- Pour exécuter cette procédure
-- exec nb_commandes_p(nom_client, prenom_client);

-- Cette procédure permet de calculer les revenus d'un restaurant à partir de son adresse en fonction des tuples enregistrés dans la table Commande.

CREATE OR REPLACE PROCEDURE calc_revenu_restau (adr_restau IN Restaurant.adr_resto%type) IS
revenu_restau NUMBER(4,2) := 0;
BEGIN
DBMS_OUTPUT.ENABLE;
SELECT SUM(prix_menu) INTO revenu_restau
FROM Commande
WHERE Commande.adr_resto = adr_restau;
dbms_output.put_line('Le revenu est de ' || revenu_restau || ' euros.');

EXCEPTION WHEN NO_DATA_FOUND THEN
revenu_restau := 0;

END calc_revenu_restau;
/

-- Pour exécuter cette procédure
-- exec calc_revenu_restau(adr_resto);