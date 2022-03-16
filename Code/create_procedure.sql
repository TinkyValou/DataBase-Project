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
