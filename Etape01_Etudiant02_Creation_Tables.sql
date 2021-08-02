/* 
 Travail pratique 1
Marc-Antoine St-Hilaire
   --> Michael Perron

 Date  02-08-2021
*/
-- -----------------------------------------------------
-- Étape 1 : Création des tables                      --
-- -----------------------------------------------------

USE PosteClientDFC;

CREATE TABLE editeur(
    id_editeur INT UNIQUE NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nom_editeur VARCHAR(45) NOT NULL
) ENGINE = INNODB;

CREATE TABLE logiciel(
    id_logiciel INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nom_logiciel VARCHAR(45) NOT NULL,
    nb_licence INT NULL,
    id_editeur INT NOT NULL,
    FOREIGN KEY (id_editeur)
        REFERENCES editeur(id_editeur)
        ON UPDATE CASCADE ON DELETE RESTRICT
) ENGINE = INNODB;



CREATE TABLE usager(
    id_usager INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nom_usager VARCHAR(45) NOT NULL,
    prenom_usager VARCHAR(45) NOT NULL,
    telephone_usager VARCHAR(15) NULL,
    local_id_local INT NULL,
    FOREIGN KEY(local_id_local)
        REFERENCES local(id_local)
        ON UPDATE CASCADE ON DELETE RESTRICT
) ENGINE = INNODB;

CREATE TABLE usager_has_poste(
    id_usager INT,
    id_poste INT,
    PRIMARY KEY (id_usager, id_poste),
    CONSTRAINT fk_usager_id_usager FOREIGN KEY (id_usager) REFERENCES usager(id_usager),
    CONSTRAINT fk_usager_id_poste FOREIGN KEY (id_poste) REFERENCES poste(id_poste)
) ENGINE = INNODB;

CREATE TABLE poste_has_logiciel(
    id_poste INT,
    id_logiciel INT,
    PRIMARY KEY(id_poste, id_logiciel),
    CONSTRAINT fk_poste_id_poste FOREIGN KEY (id_poste) REFERENCES poste(id_poste),
    CONSTRAINT fk_poste_id_logiciel FOREIGN KEY (id_logiciel) REFERENCES logiciel(id_logiciel)
) ENGINE = INNODB;

