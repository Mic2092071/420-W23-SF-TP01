/* 
 Travail pratique 1
 --> Nom de la première personne
 Nom de la deuxième personne
 
 Date  JJ-MM-AAAA                                             
*/

USE PosteClientDFC;
-- -----------------------------------------------------
-- Étape 4 : Mise à jour des données (Clause UPDATE)  --
-- -----------------------------------------------------

UPDATE local 
SET nb_bureau = '16', nb_prise_ethernet = '16', imprimante_id_peripherique = '674'
WHERE nom_local = 'P-210';


UPDATE local 
SET nb_bureau = '27', nb_prise_ethernet = '27', imprimante_id_peripherique = '676'
WHERE nom_local = 'P-308';

UPDATE local 
SET nb_bureau = '27', nb_prise_ethernet = '27', imprimante_id_peripherique = '677'
WHERE nom_local = 'P-309';

