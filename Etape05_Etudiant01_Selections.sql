/* 
 Travail pratique 1
 --> Marc-Antoine St-Hilaire
 Michael Perron
 
 Date : 02-08-2021                                             
*/

USE PosteClientDFC;
-- -----------------------------------------------------
-- Étape 5 : Requêtes de sélections                   --
-- -----------------------------------------------------

SELECT nom_local AS 'No. local', nb_bureau AS 'Nb. bureau', nb_prise_ethernet AS 'Nb. prise ethernet', imprimante_id_peripherique AS 'No. Imprimante', nom_peripherique AS 'Nom de L''imprimante'
FROM local
INNER JOIN peripherique 
ON id_peripherique = imprimante_id_peripherique;

SELECT nom_logiciel AS 'Logiciel', nb_licence AS 'Nb. d''installations sur poste'
FROM logiciel
WHERE nb_licence != 0
ORDER BY nb_licence DESC;