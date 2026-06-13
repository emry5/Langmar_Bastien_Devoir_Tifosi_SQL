/* Requête 1 : Ingrédients de la Raclaccia */

SELECT i.nom_ingredient
FROM ingredient i
JOIN comprend c
    ON i.id_ingredient = c.id_ingredient
JOIN foccacia f
    ON c.id_foccacia = f.id_foccacia
WHERE f.nom_foccacia = 'Raclaccia';


/* Requête 2 : Nombre total d'ingrédients */

SELECT COUNT(*) AS nombre_ingredients
FROM ingredient;


/* Requête 3 : Ingrédients non utilisés dans aucune foccacia */

SELECT i.nom_ingredient
FROM ingredient i
LEFT JOIN comprend c
    ON i.id_ingredient = c.id_ingredient
WHERE c.id_ingredient IS NULL;


/* Requête 4 : Liste des foccacias par ordre alphabétique */

SELECT nom_foccacia
FROM foccacia
ORDER BY nom_foccacia ASC;


/* Requête 5 : Prix moyen des foccacias */

SELECT AVG(prix) AS prix_moyen
FROM foccacia;


/* Requête 6 : Nombre d'ingrédients par foccacia */

SELECT f.nom_foccacia,
       COUNT(c.id_ingredient) AS nombre_ingredients
FROM foccacia f
JOIN comprend c
    ON f.id_foccacia = c.id_foccacia
GROUP BY f.id_foccacia, f.nom_foccacia;


/* Requête 7 : Foccacia contenant le plus d'ingrédients */

SELECT f.nom_foccacia,
       COUNT(c.id_ingredient) AS nombre_ingredients
FROM foccacia f
JOIN comprend c
    ON f.id_foccacia = c.id_foccacia
GROUP BY f.id_foccacia, f.nom_foccacia
ORDER BY nombre_ingredients DESC
LIMIT 1;


/* Requête 8 : Foccacias contenant de l'ail */

SELECT DISTINCT f.nom_foccacia
FROM foccacia f
JOIN comprend c
    ON f.id_foccacia = c.id_foccacia
JOIN ingredient i
    ON c.id_ingredient = i.id_ingredient
WHERE i.nom_ingredient = 'Ail';


/* Requête 9 : Foccacias sans champignon */

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

SELECT b.nom_boisson,
       m.nom_marque
FROM boisson b
JOIN appartient a
    ON b.id_boisson = a.id_boisson
JOIN marque m
    ON a.id_marque = m.id_marque
ORDER BY b.nom_boisson;