/* 
 Travail pratique 1
  --> Michael Perron
Marc-Antoine St-Hilaire
 
 Date  02-07-2021
*/
-- -----------------------------------------------------
-- Étape 1 : Création des tables                      --
-- -----------------------------------------------------
DROP DATABASE IF EXISTS PosteClientDFC;
CREATE DATABASE IF NOT EXISTS PosteClientDFC;

USE PosteClientDFC;

SET FOREIGN_KEY_CHECKS = 0;

CREATE TABLE logiciel(
    id_logiciel INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nom_logiciel VARCHAR(45) NOT NULL,
    nb_licence INT NULL,
    id_editeur INT NOT NULL,
    FOREIGN KEY (id_editeur)
        REFERENCES editeur(id_editeur)
        ON UPDATE CASCADE ON DELETE RESTRICT
) ENGINE = INNODB;

CREATE TABLE editeur(
    id_editeur INT UNIQUE NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nom_editeur VARCHAR(45) NOT NULL
) ENGINE = INNODB;

CREATE TABLE usager(
    id_usager INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nom_usager VARCHAR(45) NOT NULL,
    prenom_usager VARCHAR(45) NOT NULL,
    telephone_usager VARCHAR(15) NULL,
    local_id_local INT NULL
# Aurait besoin d'être executer en dernier dans le 2e script.
#     FOREIGN KEY(local_id_local)
#         REFERENCES local(id_local)
#         ON UPDATE CASCADE ON DELETE RESTRICT
) ENGINE = INNODB;

CREATE TABLE usager_has_poste(
    id_usager INT UNSIGNED,
    id_poste INT UNSIGNED,
    PRIMARY KEY (id_usager, id_poste),
    CONSTRAINT fk_usager_id_usager FOREIGN KEY (id_usager) REFERENCES usager(id_usager)
# Aurait besoin d'être executer en dernier dans le 2e script.
#     CONSTRAINT fk_poste_id_poste FOREIGN KEY (id_poste) REFERENCES poste(id_poste)
) ENGINE = INNODB;

CREATE TABLE poste_has_logiciel(
    id_poste INT UNSIGNED,
    id_logiciel INT UNSIGNED,
    PRIMARY KEY(id_poste, id_logiciel),
# Aurait besoin d'être executer en dernier dans le 2e script.
#     CONSTRAINT fk_poste_id_poste FOREIGN KEY (id_poste) REFERENCES poste(id_poste),
    CONSTRAINT fk_logiciel_id_logiciel FOREIGN KEY (id_logiciel) REFERENCES logiciel(id_logiciel)
) ENGINE = INNODB;

SET FOREIGN_KEY_CHECKS = 1;
