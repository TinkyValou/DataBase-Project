prompt *************************************************************
prompt **************** ALTER TABLE Restaurant *********************
prompt *************************************************************

ALTER TABLE Restaurant ADD CONSTRAINT tel_resto_number CHECK (REGEXP_LIKE (tel_resto, '0\d{9}'));
ALTER TABLE Restaurant ADD CONSTRAINT adr_resto_adr CHECK (REGEXP_LIKE (adr_resto, '^\d{1,}\D*'));
ALTER TABLE Restaurant ADD CONSTRAINT ouvert_dimanche_bool CHECK (ouvert_dimanche IN (0,1));

prompt *************************************************************
prompt ****************** ALTER TABLE Client ***********************
prompt *************************************************************

ALTER TABLE Client ADD CONSTRAINT tel_client_number CHECK (REGEXP_LIKE (tel_client, '0\d{9}'));
ALTER TABLE Client ADD CONSTRAINT adr_client_adr CHECK (REGEXP_LIKE (adr_client, '^\d{1,}\D*'));

prompt *************************************************************
prompt **************** ALTER TABLE Commande ***********************
prompt *************************************************************

prompt *************************************************************
prompt ****************** ALTER TABLE Coursier *********************
prompt *************************************************************

ALTER TABLE Coursier ADD CONSTRAINT mode_dep_accepted CHECK (REGEXP_LIKE (mode_deplacement, '(Velo|Scooter)'));

prompt *************************************************************
prompt ******************* ALTER TABLE Course **********************
prompt *************************************************************

ALTER TABLE Course ADD CONSTRAINT note_resto_range CHECK ((note_resto <= 5) && (note_resto >= 0));
ALTER TABLE Course ADD CONSTRAINT note_coursier_range CHECK ((note_coursier <= 5) && (note_coursier >= 0));

prompt *************************************************************
prompt **************** ALTER TABLE Spécialité *********************
prompt *************************************************************
