/*
Created: 13/11/2017
Modified: 13/11/2017
Model: PostgreSQL 9.5
Database: PostgreSQL 9.5
*/


-- Create tables section -------------------------------------------------

-- Table Pergunta

CREATE TABLE "Pergunta"(
 "pergID" Integer NOT NULL,
 "perg_titulo" Character varying(50) NOT NULL,
 "perg_corpo" Text,
 "rating" Bigint NOT NULL,
 "usuarioID" Integer
);

-- Create indexes for table Pergunta

CREATE INDEX "IX_Relationship2" ON "Pergunta" ("usuarioID");

-- Add keys for table Pergunta

ALTER TABLE "Pergunta" ADD CONSTRAINT "Key1" PRIMARY KEY ("pergID");

-- Table Usuario

CREATE TABLE "Usuario"(
 "usuarioID" Integer NOT NULL,
 "pontos" Bigint NOT NULL,
 "email" Character varying(30) NOT NULL
)
--TABLESPACE "Tablespace2"
;

-- Add keys for table Usuario

ALTER TABLE "Usuario" ADD CONSTRAINT "Key2" PRIMARY KEY ("usuarioID")
-- USING INDEX TABLESPACE "Tablespace2"
;

ALTER TABLE "Usuario" ADD CONSTRAINT "email" UNIQUE ("email")
-- USING INDEX TABLESPACE "Tablespace2"
;
-- Create foreign keys (relationships) section ------------------------------------------------- 

ALTER TABLE "Pergunta" ADD CONSTRAINT "Relationship2" FOREIGN KEY ("usuarioID") REFERENCES "Usuario" ("usuarioID") ON DELETE NO ACTION ON UPDATE NO ACTION
;