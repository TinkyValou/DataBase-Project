prompt **********************************
prompt ********** DELETE VIEW ********** 
prompt **********************************

DROP VIEW view_client_command;
DROP VIEW view_resto;

prompt **********************************
prompt ************** VIEW ************** 
prompt **********************************

-- On suppose que pour les vues, l'utilisateur ne connait que son identifiant

-- Cette vue permet, lorsque l'utilisateur rentre un nom et un prénom d'un client, de pouvoir retrouver les commandes de celui-ci
prompt Select the last name and the first name of the customer
CREATE VIEW view_client_command AS 
    SELECT *
    FROM Commande NATURAL JOIN Client 
    WHERE (nom_client = '&nom_client')AND(prenom_client = '&prenom_client')
WITH CHECK OPTION;


-- Cette vue permet de regarder les commandes restaurant de regarder ses commandes (sans l'adresse ni le prénom des clients, par mesure de sécurité et de respect de la vie privée), la fiche de ses clients
CREATE VIEW view_resto AS 
    SELECT nom_resto, nom_client, nom_coursier, prenom_coursier, date_course, nom_menu
    FROM Restaurant NATURAL JOIN Commande
WITH CHECK OPTION;