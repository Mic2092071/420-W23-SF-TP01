/* 
 Travail pratique 1
 Michael Perron
 --> Marc-Antoine St-Hilaire
 
 Date  2021-07-02                                           
*/

CREATE DATABASE IF NOT EXISTS PosteClientDFC;

USE PosteClientDFC;
-- -----------------------------------------------------
-- Étape 1 : Création des tables                      --
-- -----------------------------------------------------
SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS poste;
DROP TABLE IF EXISTS local;
DROP TABLE IF EXISTS peripherique;
DROP TABLE iF EXISTS fabricant;
CREATE TABLE poste
(
id_poste INTEGER UNIQUE AUTO_INCREMENT PRIMARY KEY,
desc_poste VARCHAR(45),
desc_processeur VARCHAR(45),
nb_ram_mo VARCHAR(45),
tail_disque_giga INTEGER,
id_fabricant INTEGER,
FOREIGN KEY (id_fabricant)
REFERENCES fabricant(id_fabricant)
ON UPDATE CASCADE ON DELETE RESTRICT,
id_local INTEGER,
FOREIGN KEY (id_local)
REFERENCES local(id_local)
ON UPDATE CASCADE ON DELETE RESTRICT
) engine=InnoDb;

CREATE TABLE local(
id_local INTEGER UNIQUE AUTO_INCREMENT PRIMARY KEY,
nom_local VARCHAR(45)
)
ENGINE=InnoDb;

CREATE TABLE peripherique(
id_peripherique INTEGER UNIQUE AUTO_INCREMENT PRIMARY KEY,
nom_peripherique VARCHAR(45) NOT NULL,
id_poste INTEGER,
FOREIGN KEY (id_poste)
REFERENCES poste(id_poste)
ON UPDATE CASCADE ON DELETE RESTRICT,
id_fabricant INTEGER,
FOREIGN KEY (id_fabricant)
REFERENCES fabricant(id_fabricant)
ON UPDATE CASCADE ON DELETE RESTRICT
) engine=InnoDb;
CREATE TABLE fabricant(
id_fabricant INTEGER UNIQUE AUTO_INCREMENT PRIMARY KEY,
nom_fabricant VARCHAR(45) NOT NULL
) engine=InnoDb;

