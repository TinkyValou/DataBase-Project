-- Cette fonction permet de renvoyer, dans le cas où l'utilisateur existe, son nombre de commandes
CREATE OR REPLACE FUNCTION nb_commandes(n_client VARCHAR2, p_client VARCHAR2 )
    RETURN NUMBER IS nb_p NUMBER;
BEGIN
    SELECT COUNT(*) INTO nb_p FROM Commande 
    WHERE (nom_client = n_client)AND(prenom_client = p_client);
    IF (nb_p IS NULL) THEN
        SELECT COUNT(*) INTO nb_p FROM Client 
        WHERE (nom_client = n_client)AND(prenom_client = p_client);
        IF (nb_p IS NULL) THEN
            raise_application_error(-20101,'This customer has incorrect name or is not exist !');
        END IF;
        --IF FALSE -> This customer exist but did not yet order anything 
    END IF;
END nb_commandes;
/

-- Cette procédure permet de calculer les revenus d'un restaurant à partir de son adresse en fonction des tuples enregistrés dans la table Commande.
SET SERVEROUTPUT ON
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
-- exec calc_revenu_restau(adr_resto choisi);