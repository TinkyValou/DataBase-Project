prompt *************************************************************
prompt **************** ALTER TABLE Restaurant *********************
prompt *************************************************************

ALTER TABLE Restaurant ADD CONSTRAINT tel_resto_number CHECK (tel_resto ~ (0\d{9}));          --do not works
ALTER TABLE Restaurant ADD CONSTRAINT ouvert_dimanche_bool CHECK (ouvert_dimanche IN (1,0));  --works

prompt *************************************************************
prompt ****************** ALTER TABLE Client ***********************
prompt *************************************************************

ALTER TABLE Client ADD CONSTRAINT tel_client_number CHECK (tel_client ~ (0\d{9}));             --do not works

prompt *************************************************************
prompt **************** ALTER TABLE Restaurant *********************
prompt *************************************************************

prompt *************************************************************
prompt **************** ALTER TABLE Restaurant *********************
prompt *************************************************************

prompt *************************************************************
prompt **************** ALTER TABLE Restaurant *********************
prompt *************************************************************

prompt *************************************************************
prompt **************** ALTER TABLE Restaurant *********************
prompt *************************************************************
