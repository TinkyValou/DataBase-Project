-- Ce fichier SQL est chargé de créer la base de données
-- Pour une éxécution pas à pas, merci de suivre l'ordre ci-dessous


@create_tables
@alter_tables
@create_sequence
@index_tables
@create_triggers
@create_functions
@create_roles
@create_views

-- Lors des tests, on ne considèrent que des insertions ne fonctionnant pas, en effet, on considère que insert_tables effectue les tests pour les valeurs acceptables

@test_constraints
@test_triggers

-- Tests des procédures à faire à la main (pour une raison obscure, quand lancées à la suite dans un même script, le résultat ne s'affiche pas)
-- Il suffit de simplement copy/paste les commandes dans le fichier nommé ci-dessous

-- test_procedures