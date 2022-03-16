--Trigger exécutant la commande number_of_commande.nextval à chaque ajout d'une nouvelle commande.
-- Cela permet d'incrémenter notre séquence à chaque ajout d'une commande de manière automatique.

CREATE or REPLACE TRIGGER incr_nb_command_aft_insert_row
BEFORE INSERT ON COMMANDE
FOR EACH ROW
DECLARE
-- on créé une variable poubelle pour que le trigger se résolve.
poubelle NUMBER;
BEGIN
  SELECT number_of_commande.nextval INTO poubelle FROM dual;
END incr_nb_command_aft_insert_row;
/

-- On ne veut pas qu'un client et un livreur ait le même nom et prénom sur une même commande. Comme on identifie nos clients et lets livreurs par nom et prénom, cela impliquerait que le client se livre sa propre commande.
-- On va donc vérifier avant chaque commande si les deux sont bien différents. Si ce n'est pas le cas, on lève une exception et on envoie un message d'erreur.

CREATE OR REPLACE TRIGGER check_comm_bef_ins_row
BEFORE INSERT ON COMMANDE
FOR EACH ROW
DECLARE
client_is_coursier EXCEPTION;
BEGIN
	IF (:new.prenom_client = :new.prenom_coursier) AND (:new.nom_client = :new.nom_coursier)
	THEN RAISE client_is_coursier;
	END IF;
	
	EXCEPTION
	WHEN client_is_coursier THEN RAISE_APPLICATION_ERROR (-20010, 'Client et Coursier doivent etre differents.');
	WHEN OTHERS THEN
	NULL;
END check_comm_bef_ins_row;
/
