/* Requête 1 : Ingrédients de la Raclaccia */
-- objectif affichier les ingrédients de la Raclaccia
-- résultat attendu : base tomate, raclette, cresson, ail, champignon, parmesan, poivre
-- résultat obtenu: le résultat attendu

SELECT i.nom_ingredient
FROM ingredient i
JOIN comprend c
    ON i.id_ingredient = c.id_ingredient
JOIN foccacia f
    ON c.id_foccacia = f.id_foccacia
WHERE f.nom_foccacia = 'Raclaccia';


/* Requête 2 : Nombre total d'ingrédients */
-- objectif: afficher le nombre total d'ingrédient
-- résultat attendu: 25
-- résultat obtenu: nombre_ingredient: 25

SELECT COUNT(*) AS nombre_ingredients
FROM ingredient;


/* Requête 3 : Ingrédients non utilisés dans aucune foccacia */
-- objectif: afficher les ingrédients non utilisés
-- résultat attendu: salami, tomates-cerises
-- résultat obtenu: nom_ingrédients: salami, tomates cerises


SELECT i.nom_ingredient
FROM ingredient i
LEFT JOIN comprend c
    ON i.id_ingredient = c.id_ingredient
WHERE c.id_ingredient IS NULL;


/* Requête 4 : Liste des foccacias par ordre alphabétique */
-- objectif: afficher les foccacias dans l'ordre alphabetique
-- résultat attendu: americaine, emmentalaccia, gorgonzollaccia, hawaienne, mozaccia, paysanne, raclaccia, tradizione
-- résultat obtenu: nom_foccacia1: americaine, emmentalaccia, gorgonzollaccia, hawaienne, mozaccia, paysanne, raclaccia, tradizione

SELECT nom_foccacia
FROM foccacia
ORDER BY nom_foccacia ASC;


/* Requête 5 : Prix moyen des foccacias */
--objectif: afficher le prix moyen des foccacias
--resultat attendu: 10.3€
-- resultat obtenu: 10.3€

SELECT AVG(prix) AS prix_moyen
FROM foccacia;


/* Requête 6 : Nombre d'ingrédients par foccacia */
-- objectif: afficher le nombre d'ingrédient par foccacia
-- résultat attendu: americaine: 8, emmentalaccia:7, Gorgonzollaccia: 8, Hawaienne:9, Mozaccia:10, Paysanne:12, Raclaccia:7, Tradizione: 9
-- résultat obtenu: resultat attendu

SELECT f.nom_foccacia,
       COUNT(c.id_ingredient) AS nombre_ingredients
FROM foccacia f
JOIN comprend c
    ON f.id_foccacia = c.id_foccacia
GROUP BY f.id_foccacia, f.nom_foccacia;


/* Requête 7 : Foccacia contenant le plus d'ingrédients */
-- objectif: afficher le foccacia avec le plus d'ingrédients
-- résultat attendu: paysanne
-- résultat obtenu: paysanne

SELECT f.nom_foccacia,
       COUNT(c.id_ingredient) AS nombre_ingredients
FROM foccacia f
JOIN comprend c
    ON f.id_foccacia = c.id_foccacia
GROUP BY f.id_foccacia, f.nom_foccacia
ORDER BY nombre_ingredients DESC
LIMIT 1;


/* Requête 8 : Foccacias contenant de l'ail */
-- objectif: afficher les foccacia contenant de l'ail
-- resultats attendus: Mozaccia, gorgonzollaccia, raclaccia, paysanne
-- resultats obtenus: résultat attendu

SELECT DISTINCT f.nom_foccacia
FROM foccacia f
JOIN comprend c
    ON f.id_foccacia = c.id_foccacia
JOIN ingredient i
    ON c.id_ingredient = i.id_ingredient
WHERE i.nom_ingredient = 'Ail';


/* Requête 9 : Foccacias sans champignon */
-- objectif: afficher les foccacias sans champignons
-- resultats attendus: hawaienne, americaine
-- resultats obtenus: resultats attendus

SELECT nom_foccacia
FROM foccacia
WHERE id_foccacia NOT IN (
    SELECT c.id_foccacia
    FROM comprend c
    JOIN ingredient i
        ON c.id_ingredient = i.id_ingredient
    WHERE i.nom_ingredient = 'Champignon'
);


/* Requête 10 : Liste des boissons avec leur marque */
-- objectif: afficher la liste des boissons avec leur marque
-- resultats attendus: Coca-cola zéro,Coca-cola; Coca-cola original,Coca-cola; Capri-sun, Coca-cola; Fanta citron, Coca-cola; Fanta orange, coca-cola; Lipton peach, pepsico, Lipton zéro citron, pepsico; Pepsi, Pepsico; Pepsi Max Zéro, Pepsico; Monster energy ultra gold, Monster; Monster energy ultra blue, Monster; Eau de source, Cristaline
-- resultats obtenus: resultats attendu

SELECT b.nom_boisson,
       m.nom_marque
FROM boisson b
JOIN appartient a
    ON b.id_boisson = a.id_boisson
JOIN marque m
    ON a.id_marque = m.id_marque
ORDER BY b.nom_boisson;