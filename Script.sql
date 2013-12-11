-- Database: "DBWebMovil"

-- DROP DATABASE "DBWebMovil";

CREATE DATABASE "DBWebMovil"
  WITH OWNER = postgres
       ENCODING = 'UTF8'
       TABLESPACE = pg_default
       LC_COLLATE = 'Spanish_Chile.1252'
       LC_CTYPE = 'Spanish_Chile.1252'
       CONNECTION LIMIT = -1;

-- Table: usuarios

-- DROP TABLE usuarios;

-- Dependiendo privilegios se ve lo que pude hacer cada usuario



CREATE TABLE usuarios

(
  
	id_user text NOT NULL,

  	pass text,
 
	privilegios numeric,

  	CONSTRAINT usuarios_pkey PRIMARY KEY (id_user)

)


WITH (
  
OIDS=FALSE

);


ALTER TABLE usuarios
  
	OWNER TO postgres;

-- Table: "Servicios_user"

-- DROP TABLE "Servicios_user";

-- tabla para requerir servicios, de la pagina.

CREATE TABLE "Servicios_user"
(
  rut "char"[] NOT NULL,
  tipo_user text,
  email text,
  requerimientos text,
  CONSTRAINT "Servicios_user_pkey" PRIMARY KEY (rut)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "Servicios_user"
  OWNER TO postgres;
  
  
  -- Table: publicaciones 
  -- DROP TABLE publicaciones; 
  CREATE TABLE publicaciones 
  ( 
     id_public numeric[] NOT NULL,
     tipo text[],
     fecha text[],
     CONSTRAINT publicaciones_pkey PRIMARY KEY (id_public)
  )
  WITH ( 
     OIDS=FALSE 
  ); 
  ALTER TABLE publicaciones 
  OWNER TO postgres;
