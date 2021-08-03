/* 
 Travail pratique 1
Marc-Antoine St-Hilaire
   --> Michael Perron

 Date  02-08-2021
*/
USE PosteClientDFC;
-- -----------------------------------------------------
-- Étape 5 : Requêtes de sélections                   --
-- -----------------------------------------------------

SELECT nom_local AS 'No. local', nb_bureau AS 'Nb. bureau', nb_prise_ethernet AS 'Nb. prise ethernet', imprimante_id_peripherique AS 'No. Imprimante'
FROM local
WHERE NOT (nb_bureau IS NULL AND nb_prise_ethernet IS NULL AND nb_prise_ethernet IS NULL);

SELECT CONCAT(u.nom_usager, ',', u.prenom_usager) AS 'Nom d''usager', nom_local AS 'Local', desc_poste AS 'Description du poste'
FROM usager AS u
INNER JOIN local
    ON local_id_local = id_local
INNER JOIN poste
    ON id_poste = id_poste
ORDER BY `Nom d'usager`;

SET FOREIGN_KEY_CHECKS = 1;