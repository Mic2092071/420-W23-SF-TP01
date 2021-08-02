/* 
 Travail pratique 1
Marc-Antoine St-Hilaire
   --> Michael Perron
 
 Date  02-08-2021
*/
USE PosteClientDFC;
-- -----------------------------------------------------
-- Étape 3 : Ajout de tables et de colonnes           --
-- -----------------------------------------------------
SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS typeusager;
CREATE TABLE IF NOT EXISTS typeusager(
    id_typeUsager INT AUTO_INCREMENT PRIMARY KEY,
    nom_statut VARCHAR(45)
) ENGINE = INNODB;

INSERT INTO typeUsager (nom_statut)
VALUES ('Professeur'),
       ('Employé'),
       ('Étudiant');

ALTER TABLE usager
    ADD id_typeUsager INT NULL,
    ADD FOREIGN KEY (id_typeUsager)
        REFERENCES typeusager(id_typeUsager)
        ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE logiciel
MODIFY nom_logiciel VARCHAR(45) NOT NULL,
ADD CONSTRAINT nom_logiciel UNIQUE (nom_logiciel);

SET FOREIGN_KEY_CHECKS = 1;