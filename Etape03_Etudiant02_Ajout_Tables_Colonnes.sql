/* 
 Travail pratique 1
 Nom de la première personne
 --> Nom de la deuxième personne
 
 Date  JJ-MM-AAAA                                             
*/

USE PosteClientDFC;
-- -----------------------------------------------------
-- Étape 3 : Ajout de tables et de colonnes           --
-- -----------------------------------------------------
SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS type_peripherique;
CREATE TABLE type_peripherique
(
id_type_peripherique INT UNIQUE AUTO_INCREMENT PRIMARY KEY,
nom_type_peripherique VARCHAR(25) NOT NULL
)engine=InnoDb;


INSERT INTO type_peripherique(nom_type_peripherique)
VALUES 
('Imprimantes'),
('Souris'),
('Clavier'),
('Écran');


ALTER TABLE local
  ADD nb_bureau INT,
  ADD nb_prise_ethernet INT,
  ADD imprimante_id_peripherique INT,
  ADD FOREIGN KEY (imprimante_id_peripherique) REFERENCES type_peripherique(id_type_peripherique)
  ON UPDATE CASCADE ON DELETE RESTRICT;



ALTER TABLE fabricant 
  MODIFY nom_fabricant VARCHAR(45) NOT NULL,
  ADD CONSTRAINT nom_fabricant UNIQUE (nom_fabricant);
 
  
ALTER TABLE local 
 MODIFY nom_local VARCHAR(45) NOT NULL,
 ADD CONSTRAINT nom_local UNIQUE (nom_local);

  
  
  